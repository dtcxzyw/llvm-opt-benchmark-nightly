Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_scalepixels?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@distort_backtransform:bb.a
  %i.an = load float, ptr %i.am, align 4, !tbaa !50
  %i.ao = fmul reassoc nsz arcp contract afn float %i.an, %i.al
  store float %i.ao, ptr %i.am, align 4, !tbaa !50
  %i.ap = add nuw i64 %.011, 2                    ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.f
  br i1 %i.aq, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !65
}

; Function Attrs: nounwind uwtable
define void @distort_mask(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_interpolation_new(i32 noundef 3) #16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !66   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !67   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !66   ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !67   ; 3 uses
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
  %i.w = uitofp nneg i32 %i.v to float
  %i.x = fmul reassoc nnan nsz arcp contract afn float %i.m, %i.w
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.q ; 3 uses
  %i.z = mul nuw nsw i64 %indvars.iv50, %i.h
  %i.aa = getelementptr [4 x i8], ptr %3, i64 %i.z
  br label %bb.b

._crit_edge46:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i32, ptr %i.i, align 4, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ab = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.s, %.preheader ] ; 2 uses
  %i.ac = phi i32 [ %i.aq, %._crit_edge.loopexit ], [ %i.t, %.preheader ]
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.ad = sext i32 %i.ab to i64
  %i.ae = icmp slt i64 %indvars.iv.next51, %i.ad
  br i1 %i.ae, label %.preheader, label %._crit_edge46, !llvm.loop !68

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %i.ag = uitofp nneg i32 %i.af to float
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
  store float %i.ao, ptr %i.ap, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %i.f, align 4, !tbaa !66  ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %bb.b, label %._crit_edge.loopexit
}

declare ptr @dt_interpolation_new(i32 noundef) local_unnamed_addr #2

declare float @dt_interpolation_compute_sample(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_out(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 20)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !70
  %i.a = load i32, ptr %2, align 4, !tbaa !71
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to float ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !72
  %i.e = sitofp reassoc nsz arcp contract afn i32 %i.d to float ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !66
  %i.h = sitofp reassoc nsz arcp contract afn i32 %i.g to float ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !67
  %i.k = sitofp reassoc nsz arcp contract afn i32 %i.j to float ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 16
  %.val20 = load ptr, ptr %i.l, align 16, !tbaa !31
  %.val20.val = load float, ptr %.val20, align 4, !tbaa !73 ; 5 uses
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
  store i32 %i.v, ptr %2, align 4, !tbaa !71
  %i.w = fptosi float %.sroa.626.030 to i32       ; 2 uses
  store i32 %i.w, ptr %i.c, align 4, !tbaa !72
  %i.x = fptosi float %.sroa.0.0 to i32           ; 2 uses
  store i32 %i.x, ptr %i.f, align 4, !tbaa !66
  %i.y = fptosi float %.sroa.6.0 to i32           ; 2 uses
  store i32 %i.y, ptr %i.i, align 4, !tbaa !67
  %i.z = icmp slt i32 %i.v, 0
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_transform.exit21
  store i32 0, ptr %2, align 4, !tbaa !71
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_transform.exit21
  %i.aa = icmp slt i32 %i.w, 0
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.c, align 4, !tbaa !72
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = icmp slt i32 %i.x, 1
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.f, align 4, !tbaa !66
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = icmp slt i32 %i.y, 1
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.i, align 4, !tbaa !67
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !70
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.b, align 16, !tbaa !31 ; 2 uses
  %.val.val = load float, ptr %.val, align 4, !tbaa !73 ; 3 uses
  %i.c = fcmp reassoc nsz arcp contract afn olt float %.val.val, 1.000000e+00 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load float, ptr %i.f, align 4, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load <2 x i32>, ptr %i.a, align 4, !tbaa !11
  %i.j = sitofp <2 x i32> %i.i to <2 x float>     ; 2 uses
  %i.k = select nsz i1 %i.c, float 1.000000e+00, float %.val.val
  %i.l = select nsz i1 %i.c, float %.val.val, float 1.000000e+00
  %i.m = insertelement <2 x float> poison, float %i.l, i64 0
  %i.n = insertelement <2 x float> %i.m, float %i.k, i64 1 ; 2 uses
  %i.o = fdiv reassoc nsz arcp contract afn <2 x float> %i.j, %i.n
  %i.p = fmul reassoc nsz arcp contract afn <2 x float> %i.n, %i.j
  %i.q = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 0, i32 3>
  %i.r = fptosi <2 x float> %i.q to <2 x i32>     ; 2 uses
  store <2 x i32> %i.r, ptr %i.d, align 4, !tbaa !11
  %i.s = sitofp <2 x i32> %i.r to <2 x float>
  %i.t = load <2 x i32>, ptr %i.a, align 4, !tbaa !11
  %i.u = sitofp <2 x i32> %i.t to <2 x float>
  %i.v = fdiv reassoc nsz arcp contract afn <2 x float> %i.s, %i.u ; 4 uses
  %i.w = extractelement <2 x float> %i.v, i64 0   ; 2 uses
  %i.x = extractelement <2 x float> %i.v, i64 1   ; 2 uses
  store <2 x float> %i.v, ptr %i.e, align 4, !tbaa !50
  %i.y = fcmp reassoc nsz arcp contract afn ogt float %i.w, %i.x
  %. = select reassoc nsz arcp contract afn i1 %i.y, float %i.w, float %i.x
  %i.z = fmul reassoc nsz arcp contract afn float %., %i.g
  store float %i.z, ptr %i.h, align 4, !tbaa !74
  %i.aa = load <2 x i32>, ptr %2, align 4, !tbaa !11
  %i.ab = sitofp <2 x i32> %i.aa to <2 x float>
  %i.ac = fmul reassoc nsz arcp contract afn <2 x float> %i.v, %i.ab
  %i.ad = fptosi <2 x float> %i.ac to <2 x i32>
  store <2 x i32> %i.ad, ptr %3, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !66
  %i.e = mul nsw i32 %i.d, %i.b
  %i.f = tail call ptr @dt_interpolation_new(i32 noundef 2) #16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !67   ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %bb.a
  %i.l = load i32, ptr %i.g, align 4, !tbaa !66   ; 3 uses
  %i.m = load <2 x i32>, ptr %i.c, align 4, !tbaa !11
  %i.n = sitofp <2 x i32> %i.m to <2 x float>     ; 2 uses
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
  %i.ad = uitofp nneg i32 %i.ac to float
  %i.ae = fmul reassoc nnan nsz arcp contract afn float %i.r, %i.ad
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, %i.s
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.i, align 4, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph36.split
  %i.ag = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.v, %.lr.ph36.split ] ; 2 uses
  %i.ah = phi i32 [ %i.ar, %._crit_edge.loopexit ], [ %i.w, %.lr.ph36.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = sext i32 %i.ag to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %.lr.ph36.split, label %._crit_edge37, !llvm.loop !76

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i32 [ 0, %.lr.ph ], [ %i.ap, %bb.b ] ; 2 uses
  %.02830 = phi ptr [ %i.ab, %.lr.ph ], [ %i.aq, %bb.b ] ; 2 uses
  %i.ak = uitofp nneg i32 %.031 to float
  %i.al = fmul reassoc nnan nsz arcp contract afn float %i.t, %i.ak
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %i.u
  %i.an = load i32, ptr %i.c, align 4, !tbaa !66
  %i.ao = load i32, ptr %i.h, align 4, !tbaa !67
  tail call void @dt_interpolation_compute_pixel4c(ptr noundef %i.f, ptr noundef %2, ptr noundef %.02830, float noundef %i.am, float noundef %i.af, i32 noundef %i.an, i32 noundef %i.ao, i32 noundef %i.e) #16
  %i.ap = add nuw nsw i32 %.031, 1                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02830, i64 16
  %i.ar = load i32, ptr %i.g, align 4, !tbaa !66  ; 2 uses
  %i.as = icmp slt i32 %i.ap, %i.ar
  br i1 %i.as, label %bb.b, label %._crit_edge.loopexit
}

declare void @dt_interpolation_compute_pixel4c(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !31  ; 2 uses
  %i.c = load float, ptr %1, align 4, !tbaa !77   ; 4 uses
  store float %i.c, ptr %i.b, align 4, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <2 x float> splat (float 1.000000e+00), ptr %i.d, align 4, !tbaa !50
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
  store ptr %i.a, ptr %i.b, align 16, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !31
  tail call void @free(ptr noundef %i.b) #16
  store ptr null, ptr %i.a, align 16, !tbaa !31
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
  %i.a = load i32, ptr @introspection, align 8, !tbaa !80
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
end_hunk_0
