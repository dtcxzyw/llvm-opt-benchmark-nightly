Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/image?download=true
inline.NumInlined: 6802
inline.NumDeleted: 1350
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 117
begin_hunk_0_@_ZNK4pbrt5Image6BilerpENS_6Point2IfEERKNS_16ImageChannelDescENS_10WrapMode2DE:bb.a

.noexc16:                                         ; preds = %.noexc15
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.235.0.insert.shift.i, %.sroa.036.0.insert.ext.i
  %i.ap = invoke noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %1, i64 %.sroa.0.0.insert.insert.i, i32 noundef %i.ab, i64 %4)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %.noexc16
  %i.aq = sitofp <2 x i32> %i.ah to <2 x float>
  %i.ar = fsub <2 x float> %i.af, %i.aq           ; 4 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
  %i.at = fsub <2 x float> splat (float 1.000000e+00), %i.ar ; 3 uses
  %i.au = extractelement <2 x float> %i.at, i64 0
  %i.av = extractelement <2 x float> %i.at, i64 1 ; 2 uses
  %i.aw = fmul float %i.au, %i.av
  %i.ax = fmul float %i.ak, %i.aw
  %i.ay = fmul float %i.as, %i.av
  %i.az = fmul float %i.ay, %i.am
  %i.ba = fadd float %i.ax, %i.az
  %i.bb = shufflevector <2 x float> %i.ar, <2 x float> %i.at, <2 x i32> <i32 1, i32 2>
  %i.bc = fmul <2 x float> %i.ar, %i.bb
  %i.bd = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.ao, i64 1
  %i.bf = fmul <2 x float> %i.bc, %i.be           ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 1
  %i.bh = fadd float %i.ba, %i.bg
  %i.bi = extractelement <2 x float> %i.bf, i64 0
  %i.bj = fadd float %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  store float %i.bj, ptr %i.bk, align 4, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !101
  %i.bm = icmp ugt i64 %i.bl, %indvars.iv.next
  br i1 %i.bm, label %bb.d, label %._crit_edge, !llvm.loop !561

._crit_edge:                                      ; preds = %bb.e, %_ZN4pbrt18ImageChannelValuesC2Emf.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt5Image11SetChannelsENS_6Point2IiEERKNS_18ImageChannelValuesE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !162  ; 3 uses
  store i64 %i.d, ptr %i.a, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %i.g = trunc i64 %i.f to i32
  store i32 %i.g, ptr %i.b, align 4, !tbaa !38
  %sext = shl i64 %i.f, 32
  %i.h = ashr exact i64 %sext, 32
  %.not = icmp ugt i64 %i.d, %i.h
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt8LogFatalIJRA14_KcRA12_S1_S3_RmS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 785, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(14) @.str.24, ptr noundef nonnull align 1 dereferenceable(12) @.str.25, ptr noundef nonnull align 1 dereferenceable(14) @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.25, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not1012 = icmp eq i64 %i.d, 0
  br i1 %.not1012, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !160  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  %i.l = select i1 %.not.i, ptr %i.j, ptr %i.k
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.014 = phi i32 [ %i.o, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0913 = phi ptr [ %i.n, %.lr.ph ], [ %i.l, %.lr.ph.preheader ] ; 2 uses
  %i.m = load float, ptr %.0913, align 4, !tbaa !79
  tail call void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %1, i32 noundef %.014, float noundef %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.0913, i64 4 ; 2 uses
  %i.o = add nuw nsw i32 %.014, 1
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !160  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  %i.q = select i1 %.not.i.i, ptr %i.j, ptr %i.p
  %i.r = load i64, ptr %i.c, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  %.not10 = icmp eq ptr %i.n, %i.s
  br i1 %.not10, label %._crit_edge, label %.lr.ph, !llvm.loop !18
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt5Image11SetChannelsENS_6Point2IiEEN4pstd4spanIKfEE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %3, ptr %i.a, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %i.e = trunc i64 %i.d to i32
  store i32 %i.e, ptr %i.b, align 4, !tbaa !38
  %sext = shl i64 %i.d, 32
  %i.f = ashr exact i64 %sext, 32
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt8LogFatalIJRA14_KcRA12_S1_S3_RmS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 792, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(14) @.str.24, ptr noundef nonnull align 1 dereferenceable(12) @.str.25, ptr noundef nonnull align 1 dereferenceable(14) @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.25, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %.not7 = icmp eq i64 %3, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.06 = phi i64 [ %i.j, %.lr.ph ], [ 0, %bb.c ]  ; 3 uses
  %i.g = trunc i64 %.06 to i32
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.06
  %i.i = load float, ptr %i.h, align 4, !tbaa !79
  tail call void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %1, i32 noundef %i.g, float noundef %i.i)
  %i.j = add nuw i64 %.06, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !562
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt5Image5FlipYEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge34

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i32, ptr %i.a, align 4, !tbaa !74   ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.preheader, label %._crit_edge34

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge32
  %i.k = phi i32 [ %i.p, %._crit_edge32 ], [ %i.c, %.preheader.lr.ph ]
  %i.l = phi i32 [ %i.q, %._crit_edge32 ], [ %i.i, %.preheader.lr.ph ] ; 2 uses
  %i.m = phi i32 [ %i.r, %._crit_edge32 ], [ %i.i, %.preheader.lr.ph ] ; 3 uses
  %.02333 = phi i32 [ %i.s, %._crit_edge32 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph31, label %._crit_edge32

.lr.ph31:                                         ; preds = %.preheader
  %i.o = xor i32 %.02333, -1
  %.pre = load i64, ptr %i.e, align 8, !tbaa !75  ; 2 uses
  br label %bb.b

._crit_edge34:                                    ; preds = %._crit_edge32, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge32.loopexit:                           ; preds = %._crit_edge
  %.pre39.a = load i32, ptr %i.b, align 8, !tbaa !73
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.loopexit, %.preheader
  %i.p = phi i32 [ %.pre39.a, %._crit_edge32.loopexit ], [ %i.k, %.preheader ] ; 2 uses
  %i.q = phi i32 [ %i.al, %._crit_edge32.loopexit ], [ %i.l, %.preheader ]
  %i.r = phi i32 [ %i.al, %._crit_edge32.loopexit ], [ %i.m, %.preheader ]
  %i.s = add nuw nsw i32 %.02333, 1               ; 2 uses
  %i.t = sdiv i32 %i.p, 2
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %.preheader, label %._crit_edge34, !llvm.loop !563

bb.b:                                             ; preds = %.lr.ph31, %._crit_edge
  %i.v = phi i32 [ %i.l, %.lr.ph31 ], [ %i.al, %._crit_edge ]
  %i.w = phi i64 [ %.pre, %.lr.ph31 ], [ %i.am, %._crit_edge ] ; 2 uses
  %i.x = phi i64 [ %.pre, %.lr.ph31 ], [ %i.an, %._crit_edge ] ; 2 uses
  %i.y = phi i32 [ %i.m, %.lr.ph31 ], [ %i.al, %._crit_edge ] ; 2 uses
  %.02230 = phi i32 [ 0, %.lr.ph31 ], [ %i.ao, %._crit_edge ] ; 3 uses
  %i.z = trunc i64 %i.x to i32                    ; 3 uses
  %i.aa = mul nuw nsw i32 %i.y, %.02333
  %i.ab = add nsw i32 %i.aa, %.02230
  %i.ac = mul nsw i32 %i.ab, %i.z
  %i.ad = sext i32 %i.ac to i64                   ; 3 uses
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !73
  %i.af = add i32 %i.ae, %i.o
  %i.ag = mul nsw i32 %i.af, %i.y
  %i.ah = add nsw i32 %i.ag, %.02230
  %i.ai = mul nsw i32 %i.ah, %i.z
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = icmp sgt i32 %i.z, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre38.a = load i32, ptr %i.a, align 4, !tbaa !74
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.al = phi i32 [ %.pre38.a, %._crit_edge.loopexit ], [ %i.v, %bb.b ] ; 5 uses
  %i.am = phi i64 [ %i.bl, %._crit_edge.loopexit ], [ %i.w, %bb.b ]
  %i.an = phi i64 [ %i.bl, %._crit_edge.loopexit ], [ %i.x, %bb.b ]
  %i.ao = add nuw nsw i32 %.02230, 1              ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %i.al
  br i1 %i.ap, label %bb.b, label %._crit_edge32.loopexit, !llvm.loop !564

.lr.ph:                                           ; preds = %bb.b, %bb.g
  %i.aq = phi i64 [ %i.bl, %bb.g ], [ %i.w, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.b ] ; 7 uses
  %1 = load i32, ptr %0, align 8, !tbaa !72
  switch i32 %1, label %bb.f [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !76  ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.ad
  %i.at = getelementptr i8, ptr %i.as, i64 %indvars.iv ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 %i.aj
  %i.av = getelementptr i8, ptr %i.au, i64 %indvars.iv ; 2 uses
  %i.aw = load i8, ptr %i.at, align 1, !tbaa !37
  %i.ax = load i8, ptr %i.av, align 1, !tbaa !37
  store i8 %i.ax, ptr %i.at, align 1, !tbaa !37
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !37
  %.pre37.a = load i64, ptr %i.e, align 8, !tbaa !75
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !80  ; 2 uses
  %i.az = getelementptr [2 x i8], ptr %i.ay, i64 %i.ad
  %i.ba = getelementptr [2 x i8], ptr %i.az, i64 %indvars.iv ; 2 uses
  %i.bb = getelementptr [2 x i8], ptr %i.ay, i64 %i.aj
  %i.bc = getelementptr [2 x i8], ptr %i.bb, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.ba, align 2, !tbaa !154
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !154
  store i16 %i.bd, ptr %i.ba, align 2, !tbaa !154
  store i16 %.sroa.0.0.copyload.i, ptr %i.bc, align 2, !tbaa !154
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !84  ; 2 uses
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.ad
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %i.be, i64 %i.aj
  %i.bi = getelementptr [4 x i8], ptr %i.bh, i64 %indvars.iv ; 2 uses
  %i.bj = load float, ptr %i.bg, align 4, !tbaa !79
  %i.bk = load float, ptr %i.bi, align 4, !tbaa !79
  store float %i.bk, ptr %i.bg, align 4, !tbaa !79
  store float %i.bj, ptr %i.bi, align 4, !tbaa !79
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 809, ptr noundef nonnull @.str.39) #34
  unreachable

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d
  %i.bl = phi i64 [ %.pre37.a, %bb.c ], [ %i.aq, %bb.e ], [ %i.aq, %bb.d ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %sext = shl i64 %i.bl, 32
  %i.bm = ashr exact i64 %sext, 32
  %i.bn = icmp slt i64 %indvars.iv.next, %i.bm
  br i1 %i.bn, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !565
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt5Image20JointBilateralFilterERKNS_16ImageChannelDescEiPKfS3_RKNS_18ImageChannelValuesE(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Image") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::vector.36", align 8    ; 10 uses
  %8 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %9 = alloca %"class.std::vector", align 8       ; 12 uses
  %10 = alloca %"class.std::vector", align 8      ; 13 uses
  %11 = alloca %"class.std::function", align 8    ; 9 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !101  ; 2 uses
  store i64 %i.e, ptr %i.b, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !162  ; 2 uses
  store i64 %i.g, ptr %i.c, align 8, !tbaa !47
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt8LogFatalIJRA17_KcRA18_S1_S3_RmS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 819, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(17) @.str.40, ptr noundef nonnull align 1 dereferenceable(18) @.str.41, ptr noundef nonnull align 1 dereferenceable(17) @.str.40, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(18) @.str.41, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload = load i64, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @_ZNK4pbrt5Image12ChannelNamesB5cxx11ERKNS_16ImageChannelDescE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.36") align 8 %7, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.j = load ptr, ptr %7, align 8, !tbaa !95     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !96
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 5
  store i64 0, ptr %8, align 8, !tbaa !77
  %i.q = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32
  %i.r = ptrtoint ptr %i.q to i64
  invoke void @_ZN4pbrt5ImageC2ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef 2, i64 %.sroa.0.0.copyload, ptr %i.j, i64 %i.p, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %8, i64 %i.r)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %7, align 8, !tbaa !95     ; 3 uses
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !96   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.s, %bb.d ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !37
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !95
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.d
  %i.aa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.s, %bb.d ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !97
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.not59 = icmp slt i32 %3, 0
  br i1 %.not59, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit38, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !73
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.ao = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #36
          to label %bb.y unwind label %bb.f       ; 9 uses

bb.f:                                             ; preds = %._crit_edge
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.aj

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit38
  %i.ar = phi ptr [ null, %.lr.ph ], [ %i.co, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit38 ] ; 5 uses
  %i.as = phi ptr [ null, %.lr.ph ], [ %i.cp, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit38 ] ; 3 uses
  %i.at = phi ptr [ null, %.lr.ph ], [ %i.cq, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit38 ] ; 3 uses
  %.060 = phi i32 [ 0, %.lr.ph ], [ %i.el, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit38 ] ; 3 uses
  %i.au = uitofp nneg i32 %.060 to float          ; 2 uses
  %i.av = load float, ptr %4, align 4, !tbaa !79  ; 4 uses
  %i.aw = fmul float %i.av, f0x40C90FDB
  %i.ax = fmul float %i.av, %i.aw
  %i.ay = call noundef float @sqrtf(float noundef %i.ax) #32
  %i.az = fneg float %i.au
  %i.ba = fmul nnan float %i.au, %i.az            ; 2 uses
  %i.bb = fmul float %i.av, 2.000000e+00
  %i.bc = fmul float %i.av, %i.bb
  %i.bd = fdiv float %i.ba, %i.bc
  %i.be = fmul float %i.bd, f0x3FB8AA3B           ; 2 uses
  %i.bf = call noundef float @llvm.floor.f32(float %i.be) ; 2 uses
  %i.bg = fsub float %i.be, %i.bf                 ; 3 uses
  %i.bh = fptosi float %i.bf to i32
  %i.bi = call noundef float @llvm.fma.f32(float %i.bg, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bj = call noundef float @llvm.fma.f32(float %i.bg, float %i.bi, float f0x3F321004)
  %i.bk = call noundef float @llvm.fma.f32(float %i.bg, float %i.bj, float 1.000000e+00)
  %i.bl = bitcast float %i.bk to i32              ; 2 uses
  %i.bm = lshr i32 %i.bl, 23
  %i.bn = add i32 %i.bh, -127
  %i.bo = add i32 %i.bn, %i.bm                    ; 3 uses
  %i.bp = icmp slt i32 %i.bo, -126
  br i1 %i.bp, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = icmp sgt i32 %i.bo, 127
  br i1 %i.bq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = and i32 %i.bl, -2139095041
  %i.bs = shl nsw i32 %i.bo, 23
  %i.bt = add nsw i32 %i.bs, 1065353216
  %i.bu = or i32 %i.bt, %i.br
  %i.bv = bitcast i32 %i.bu to float
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0.i.i = phi float [ %i.bv, %bb.j ], [ 0.000000e+00, %bb.h ], [ +inf, %bb.i ]
  %i.bw = fdiv float 1.000000e+00, %i.ay
  %i.bx = fmul float %i.bw, %.0.i.i               ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.at, %i.as
  br i1 %.not.i.i25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store float %i.bx, ptr %i.at, align 4, !tbaa !79
  %i.by = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  store ptr %i.by, ptr %i.ag, align 8, !tbaa !89
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.m:                                             ; preds = %bb.k
  %i.bz = ptrtoint ptr %i.as to i64
  %i.ca = ptrtoint ptr %i.ar to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 6 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775804
  br i1 %i.cc, label %bb.n, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.117) #34
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  unreachable
end_hunk_0
