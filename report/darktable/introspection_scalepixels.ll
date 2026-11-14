Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_scalepixels?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@distort_transform:bb.a
scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.ai, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aa = load float, ptr %i.i, align 4, !tbaa !45
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.011 ; 3 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !47
  %i.ad = fdiv reassoc nsz arcp contract afn float %i.ac, %i.aa
  store float %i.ad, ptr %i.ab, align 4, !tbaa !47
  %i.ae = load float, ptr %i.j, align 4, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !47
  %i.ah = fdiv reassoc nsz arcp contract afn float %i.ag, %i.ae
  store float %i.ah, ptr %i.af, align 4, !tbaa !47
  %i.ai = add nuw i64 %.011, 2                    ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.f
  br i1 %i.aj, label %scalar.ph, label %._crit_edge, !llvm.loop !59
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define noundef i32 @distort_backtransform(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.dt_iop_roi_t, align 4       ; 4 uses
  %5 = alloca %struct.dt_iop_roi_t, align 4       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load <2 x i32>, ptr %i.a, align 8, !tbaa !12
  store <2 x i32> %i.c, ptr %i.b, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  call void %i.e(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #16, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.f = shl i64 %3, 1                            ; 3 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !43  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = add i64 %i.f, -2                         ; 3 uses
  %i.l = lshr exact i64 %i.k, 1
  %i.m = add nuw i64 %i.l, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.k, 6
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.n = shl i64 %3, 3
  %i.o = getelementptr i8, ptr %2, i64 %i.n
  %i.p = getelementptr i8, ptr %i.h, i64 12
  %bound0 = icmp ult ptr %2, %i.p
  %bound1 = icmp ult ptr %i.i, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %i.k, 30
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.m, 12
  %n.vec = and i64 %i.m, -16                      ; 4 uses
  %i.r = shl i64 %n.vec, 1
  %i.s = load float, ptr %i.i, align 4, !tbaa !45, !alias.scope !68
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.s, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.t = load float, ptr %i.j, align 4, !tbaa !46, !alias.scope !68
  %broadcast.splatinsert18 = insertelement <8 x float> poison, float %i.t, i64 0
  %broadcast.splat19 = shufflevector <8 x float> %broadcast.splatinsert18, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl nuw i64 %index, 1                    ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.v, align 4, !tbaa !47, !alias.scope !69, !noalias !68 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec14 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec15 = load <16 x float>, ptr %i.x, align 4, !tbaa !47, !alias.scope !69, !noalias !68 ; 2 uses
  %strided.vec16 = shufflevector <16 x float> %wide.vec15, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec17 = shufflevector <16 x float> %wide.vec15, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.y = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.z = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec16, %broadcast.splat
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec14, %broadcast.splat19
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec17, %broadcast.splat19
  %interleaved.vec = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.v, align 4, !tbaa !47, !alias.scope !69, !noalias !68
  %interleaved.vec20 = shufflevector <8 x float> %i.z, <8 x float> %i.ab, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec20, ptr %i.x, align 4, !tbaa !47, !alias.scope !69, !noalias !68
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.m, -4                     ; 3 uses
  %i.ad = shl i64 %n.vec21, 1
  %i.ae = load float, ptr %i.i, align 4, !tbaa !45, !alias.scope !68
  %broadcast.splatinsert26 = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.af = load float, ptr %i.j, align 4, !tbaa !46, !alias.scope !68
  %broadcast.splatinsert28 = insertelement <4 x float> poison, float %i.af, i64 0
  %i.ag = shufflevector <4 x float> %broadcast.splatinsert26, <4 x float> %broadcast.splatinsert28, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next31, %vec.epilog.vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index22, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec23 = load <8 x float>, ptr %i.ah, align 4, !tbaa !47, !alias.scope !69, !noalias !68
  %interleaved.vec30 = fmul reassoc nsz arcp contract afn <8 x float> %wide.vec23, %i.ag
  store <8 x float> %interleaved.vec30, ptr %i.ah, align 4, !tbaa !47, !alias.scope !69, !noalias !68
  %index.next31 = add nuw i64 %index22, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next31, %n.vec21
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n32 = icmp eq i64 %i.m, %n.vec21
  br i1 %cmp.n32, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret i32 1

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.011 = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.011.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.aj = load float, ptr %i.i, align 4, !tbaa !45
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.011 ; 3 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !47
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %i.aj
  store float %i.am, ptr %i.ak, align 4, !tbaa !47
  %i.an = load float, ptr %i.j, align 4, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !47
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, %i.an
  store float %i.aq, ptr %i.ao, align 4, !tbaa !47
  %i.ar = add nuw i64 %.011, 2                    ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.f
  br i1 %i.as, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !67
}

; Function Attrs: nounwind uwtable
define void @distort_mask(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_interpolation_new(i32 noundef 3) #16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !50   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !51   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50   ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !51   ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph, label %._crit_edge46

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.l = sitofp reassoc nsz arcp contract afn i32 %i.c to float
  %i.m = sitofp reassoc nsz arcp contract afn i32 %i.e to float
  %i.n = icmp sgt i32 %i.g, 0
  br i1 %i.n, label %.preheader.preheader, label %._crit_edge46

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.g to float
  %i.p = uitofp nneg i32 %i.j to float
  %i.q = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.p
  %i.r = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.o
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.s = phi i32 [ %i.j, %.preheader.preheader ], [ %i.ab, %._crit_edge ]
  %i.t = phi i32 [ %i.g, %.preheader.preheader ], [ %i.ac, %._crit_edge ] ; 2 uses
  %indvars.iv50 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next51, %._crit_edge ] ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.v = trunc nuw nsw i64 %indvars.iv50 to i32
  %i.w = uitofp nsz nneg i32 %i.v to float
  %i.x = fmul reassoc nnan nsz arcp contract afn float %i.m, %i.w
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.q ; 3 uses
  %i.z = mul nuw nsw i64 %indvars.iv50, %i.h
  %i.aa = getelementptr [4 x i8], ptr %3, i64 %i.z
  br label %bb.b

._crit_edge46:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i32, ptr %i.i, align 4, !tbaa !51
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ab = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.s, %.preheader ] ; 2 uses
  %i.ac = phi i32 [ %i.aq, %._crit_edge.loopexit ], [ %i.t, %.preheader ]
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.ad = sext i32 %i.ab to i64
  %i.ae = icmp slt i64 %indvars.iv.next51, %i.ad
  br i1 %i.ae, label %.preheader, label %._crit_edge46, !llvm.loop !71

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %i.ag = uitofp nsz nneg i32 %i.af to float
  %i.ah = fmul reassoc nnan nsz arcp contract afn float %i.l, %i.ag
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %i.r ; 3 uses
  %i.aj = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.a, ptr noundef %2, float noundef %i.ai, float noundef %i.y, i32 noundef %i.c, i32 noundef %i.e, i32 noundef 1, i32 noundef %i.c) #16
  %i.ak = fcmp reassoc nsz arcp contract afn ult float %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.a, ptr noundef %2, float noundef %i.ai, float noundef %i.y, i32 noundef %i.c, i32 noundef %i.e, i32 noundef 1, i32 noundef %i.c) #16
  %i.am = fcmp reassoc nsz arcp contract afn ugt float %i.al, 1.000000e+00
  br i1 %i.am, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.a, ptr noundef %2, float noundef %i.ai, float noundef %i.y, i32 noundef %i.c, i32 noundef %i.e, i32 noundef 1, i32 noundef %i.c) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %i.ao = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.c ], [ %i.an, %bb.d ], [ 0.000000e+00, %bb.b ]
  %i.ap = getelementptr [4 x i8], ptr %i.aa, i64 %indvars.iv
  store float %i.ao, ptr %i.ap, align 4, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %i.f, align 4, !tbaa !50  ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %bb.b, label %._crit_edge.loopexit
}

declare ptr @dt_interpolation_new(i32 noundef) local_unnamed_addr #2

declare float @dt_interpolation_compute_sample(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_out(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 20)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !53
  %i.a = load i32, ptr %2, align 4, !tbaa !72
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to float ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !73
  %i.e = sitofp reassoc nsz arcp contract afn i32 %i.d to float ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50
  %i.h = sitofp reassoc nsz arcp contract afn i32 %i.g to float ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !51
  %i.k = sitofp reassoc nsz arcp contract afn i32 %i.j to float ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 16
  %.val20 = load ptr, ptr %i.l, align 16, !tbaa !43
  %.val20.val = load float, ptr %.val20, align 4, !tbaa !54 ; 5 uses
  %i.m = fcmp reassoc nsz arcp contract afn olt float %.val20.val, 1.000000e+00
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = fdiv reassoc nsz arcp contract afn float %i.e, %.val20.val
  %i.o = fdiv reassoc nsz arcp contract afn float %i.k, %.val20.val
  %i.p = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.n)
  %i.q = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.o)
  br label %_transform.exit21

bb.c:                                             ; preds = %bb.a
  %i.r = fmul reassoc nsz arcp contract afn float %.val20.val, %i.b
  %i.s = fmul reassoc nsz arcp contract afn float %.val20.val, %i.h
  %i.t = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.r)
  %i.u = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.s)
  br label %_transform.exit21

_transform.exit21:                                ; preds = %bb.b, %bb.c
  %.sroa.024.032 = phi float [ %i.b, %bb.b ], [ %i.t, %bb.c ]
  %.sroa.626.030 = phi float [ %i.p, %bb.b ], [ %i.e, %bb.c ]
  %.sroa.6.0 = phi float [ %i.q, %bb.b ], [ %i.k, %bb.c ]
  %.sroa.0.0 = phi float [ %i.h, %bb.b ], [ %i.u, %bb.c ]
  %i.v = fptosi float %.sroa.024.032 to i32       ; 2 uses
  store i32 %i.v, ptr %2, align 4, !tbaa !72
  %i.w = fptosi float %.sroa.626.030 to i32       ; 2 uses
  store i32 %i.w, ptr %i.c, align 4, !tbaa !73
  %i.x = fptosi float %.sroa.0.0 to i32           ; 2 uses
  store i32 %i.x, ptr %i.f, align 4, !tbaa !50
  %i.y = fptosi float %.sroa.6.0 to i32           ; 2 uses
  store i32 %i.y, ptr %i.i, align 4, !tbaa !51
  %i.z = icmp slt i32 %i.v, 0
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_transform.exit21
  store i32 0, ptr %2, align 4, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_transform.exit21
  %i.aa = icmp slt i32 %i.w, 0
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.c, align 4, !tbaa !73
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = icmp slt i32 %i.x, 1
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.f, align 4, !tbaa !50
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = icmp slt i32 %i.y, 1
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.i, align 4, !tbaa !51
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %3) local_unnamed_addr #7 {
_transform.exit:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !53
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.b, align 16, !tbaa !43 ; 2 uses
  %.val.val = load float, ptr %.val, align 4, !tbaa !54 ; 3 uses
  %i.c = fcmp reassoc nsz arcp contract afn olt float %.val.val, 1.000000e+00 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load float, ptr %i.f, align 4, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %4 = load <2 x i32>, ptr %i.a, align 4, !tbaa !12
  %5 = sitofp reassoc nsz arcp contract afn <2 x i32> %4 to <2 x float> ; 2 uses
  %i.i = select nsz i1 %i.c, float %.val.val, float 1.000000e+00
  %i.j = select nsz i1 %i.c, float 1.000000e+00, float %.val.val
  %i.k = insertelement <2 x float> poison, float %i.i, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.j, i64 1 ; 2 uses
  %6 = fdiv reassoc nsz arcp contract afn <2 x float> %5, %i.l
  %7 = fmul reassoc nsz arcp contract afn <2 x float> %i.l, %5
  %8 = shufflevector <2 x float> %6, <2 x float> %7, <2 x i32> <i32 0, i32 3>
  %i.m = fptosi <2 x float> %8 to <2 x i32>       ; 2 uses
  store <2 x i32> %i.m, ptr %i.d, align 4, !tbaa !12
  %i.n = sitofp reassoc nsz arcp contract afn <2 x i32> %i.m to <2 x float>
  %i.o = load <2 x i32>, ptr %i.a, align 4, !tbaa !12
  %i.p = sitofp reassoc nsz arcp contract afn <2 x i32> %i.o to <2 x float>
  %i.q = fdiv reassoc nsz arcp contract afn <2 x float> %i.n, %i.p ; 4 uses
  %i.r = extractelement <2 x float> %i.q, i64 0   ; 2 uses
  %i.s = extractelement <2 x float> %i.q, i64 1   ; 2 uses
  store <2 x float> %i.q, ptr %i.e, align 4, !tbaa !47
  %i.t = fcmp reassoc nsz arcp contract afn ogt float %i.r, %i.s
  %. = select reassoc nsz arcp contract afn i1 %i.t, float %i.r, float %i.s
  %i.u = fmul reassoc nsz arcp contract afn float %., %i.g
  store float %i.u, ptr %i.h, align 4, !tbaa !74
  %i.v = load <2 x i32>, ptr %2, align 4, !tbaa !12
  %i.w = sitofp reassoc nsz arcp contract afn <2 x i32> %i.v to <2 x float>
  %i.x = fmul reassoc nsz arcp contract afn <2 x float> %i.q, %i.w
  %i.y = fptosi <2 x float> %i.x to <2 x i32>
  store <2 x i32> %i.y, ptr %3, align 4, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = tail call ptr @dt_interpolation_new(i32 noundef 2) #16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !51   ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %bb.a
  %i.l = load i32, ptr %i.g, align 4, !tbaa !50   ; 3 uses
  %i.m = load <2 x i32>, ptr %i.c, align 4, !tbaa !12
  %i.n = sitofp reassoc nsz arcp contract afn <2 x i32> %i.m to <2 x float> ; 2 uses
  %i.o = icmp sgt i32 %i.l, 0
  br i1 %i.o, label %.lr.ph36.split.preheader, label %._crit_edge37

.lr.ph36.split.preheader:                         ; preds = %.lr.ph36
  %i.p = sitofp reassoc nsz arcp contract afn i32 %i.l to float
  %i.q = uitofp nneg i32 %i.j to float
  %i.r = extractelement <2 x float> %i.n, i64 1
  %i.s = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.q
  %i.t = extractelement <2 x float> %i.n, i64 0
  %i.u = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.p
  br label %.lr.ph36.split

._crit_edge37:                                    ; preds = %._crit_edge, %.lr.ph36, %bb.a
  ret void

.lr.ph36.split:                                   ; preds = %.lr.ph36.split.preheader, %._crit_edge
  %i.v = phi i32 [ %i.j, %.lr.ph36.split.preheader ], [ %i.ag, %._crit_edge ]
  %i.w = phi i32 [ %i.l, %.lr.ph36.split.preheader ], [ %i.ah, %._crit_edge ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph36.split.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph36.split
  %i.y = shl nuw nsw i64 %indvars.iv, 2
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aa
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  %i.ad = uitofp nsz nneg i32 %i.ac to float
  %i.ae = fmul reassoc nnan nsz arcp contract afn float %i.r, %i.ad
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, %i.s
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.i, align 4, !tbaa !51
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph36.split
  %i.ag = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.v, %.lr.ph36.split ] ; 2 uses
  %i.ah = phi i32 [ %i.ar, %._crit_edge.loopexit ], [ %i.w, %.lr.ph36.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = sext i32 %i.ag to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %.lr.ph36.split, label %._crit_edge37, !llvm.loop !75

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i32 [ 0, %.lr.ph ], [ %i.ap, %bb.b ] ; 2 uses
  %.02830 = phi ptr [ %i.ab, %.lr.ph ], [ %i.aq, %bb.b ] ; 2 uses
  %i.ak = uitofp nsz nneg i32 %.031 to float
  %i.al = fmul reassoc nnan nsz arcp contract afn float %i.t, %i.ak
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %i.u
  %i.an = load i32, ptr %i.c, align 4, !tbaa !50
  %i.ao = load i32, ptr %i.h, align 4, !tbaa !51
  tail call void @dt_interpolation_compute_pixel4c(ptr noundef %i.f, ptr noundef %2, ptr noundef %.02830, float noundef %i.am, float noundef %i.af, i32 noundef %i.an, i32 noundef %i.ao, i32 noundef %i.e) #16
  %i.ap = add nuw nsw i32 %.031, 1                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02830, i64 16
  %i.ar = load i32, ptr %i.g, align 4, !tbaa !50  ; 2 uses
  %i.as = icmp slt i32 %i.ap, %i.ar
  br i1 %i.as, label %bb.b, label %._crit_edge.loopexit
}

declare void @dt_interpolation_compute_pixel4c(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !43  ; 2 uses
  %i.c = load float, ptr %1, align 4, !tbaa !78   ; 4 uses
  store float %i.c, ptr %i.b, align 4, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <2 x float> splat (float 1.000000e+00), ptr %i.d, align 4, !tbaa !47
  %i.e = fcmp ord float %i.c, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp reassoc nsz arcp contract afn ole float %i.c, 0.000000e+00
  %i.g = fcmp reassoc nsz arcp contract afn oeq float %i.c, 1.000000e+00
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.h, align 16, !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(12) ptr @calloc(i64 noundef 1, i64 noundef 12) #17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !43
  tail call void @free(ptr noundef %i.b) #16
  store ptr null, ptr %i.a, align 16, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.5) #16
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #16
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.a, ptr noundef %i.b) #16
  ret void
}

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !83
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !84
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !84
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !84
  store ptr @introspection_init.f1, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 160), align 16, !tbaa !84
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.5) #18
  %.not = icmp eq i32 %i.a, 0
  %. = select i1 %.not, ptr %0, ptr null
  ret ptr %.
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.5) #16
  %.not = icmp eq i32 %i.a, 0
  %introspection_linear. = select i1 %.not, ptr @introspection_linear, ptr null
  ret ptr %introspection_linear.
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0,1) }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS8_GModule", !13, i64 0}
!15 = !{!"p1 int", !13, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!"dt_dev_histogram_stats_t", !9, i64 0, !16, i64 8, !9, i64 16, !9, i64 20}
!18 = !{!"p1 _ZTS12dt_develop_t", !13, i64 0}
!19 = !{!"dt_pthread_mutex_t", !8, i64 0}
!20 = !{!"p1 _ZTS25dt_develop_blend_params_t", !13, i64 0}
!21 = !{!"p1 _ZTS11_GHashTable", !13, i64 0}
!22 = !{!"", !21, i64 0, !21, i64 8}
!23 = !{!"p1 _ZTS15dt_iop_module_t", !13, i64 0}
!24 = !{!"", !23, i64 0, !9, i64 8}
!25 = !{!"", !22, i64 0, !24, i64 16}
!26 = !{!"p1 _ZTS10_GtkWidget", !13, i64 0}
!27 = !{!"p1 _ZTS7_GSList", !13, i64 0}
!28 = !{!"p1 _ZTS18dt_iop_module_so_t", !13, i64 0}
!29 = !{!"dt_iop_module_t", !9, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !14, i64 448, !8, i64 456, !9, i64 476, !9, i64 480, !9, i64 484, !9, i64 488, !9, i64 492, !9, i64 496, !9, i64 500, !9, i64 504, !8, i64 512, !8, i64 528, !8, i64 544, !8, i64 560, !8, i64 576, !8, i64 592, !15, i64 608, !17, i64 616, !8, i64 640, !9, i64 656, !9, i64 660, !18, i64 664, !9, i64 672, !9, i64 676, !13, i64 680, !13, i64 688, !9, i64 696, !13, i64 704, !19, i64 712, !13, i64 752, !13, i64 760, !20, i64 768, !20, i64 776, !13, i64 784, !25, i64 792, !26, i64 824, !26, i64 832, !26, i64 840, !26, i64 848, !26, i64 856, !26, i64 864, !26, i64 872, !9, i64 880, !26, i64 888, !26, i64 896, !26, i64 904, !27, i64 912, !27, i64 920, !26, i64 928, !26, i64 936, !9, i64 944, !28, i64 952, !9, i64 960, !8, i64 964, !9, i64 1092, !26, i64 1096, !13, i64 1104, !9, i64 1112}
!30 = !{!29, !13, i64 328}
!31 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !13, i64 0}
!32 = !{!"p1 _ZTS18dt_histogram_roi_t", !13, i64 0}
!33 = !{!"dt_dev_histogram_collection_params_t", !32, i64 0, !9, i64 8}
!34 = !{!"float", !8, i64 0}
!35 = !{!"dt_iop_roi_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !34, i64 16}
!36 = !{!"short", !8, i64 0}
!37 = !{!"", !36, i64 0, !36, i64 2}
!38 = !{!"", !9, i64 0, !8, i64 16}
!39 = !{!"dt_iop_buffer_dsc_t", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 12, !37, i64 48, !38, i64 64, !8, i64 96, !9, i64 112}
!40 = !{!"p1 float", !13, i64 0}
!41 = !{!"dt_dev_distorted_mask_cache_t", !40, i64 0, !35, i64 8, !16, i64 32, !16, i64 40}
end_hunk_0
