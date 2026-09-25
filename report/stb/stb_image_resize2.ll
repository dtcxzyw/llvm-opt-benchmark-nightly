Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_resize2?download=true
inline.NumInlined: 166
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@stbir__get_split_info:bb.a
  %.not79 = icmp eq i64 %indvars.iv, 0
  br i1 %.not79, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph76.split
  %i.ah = sext i32 %.05773 to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ah ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.b) ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !47 ; 2 uses
  %.not65 = icmp slt i32 %spec.select, 1
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ak = phi i32 [ %i.aq, %bb.c ], [ %i.aj, %bb.b ] ; 2 uses
  %.069 = phi ptr [ %i.al, %bb.c ], [ %i.ai, %bb.b ]
  %.05268 = phi i32 [ %spec.select64, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.05367 = phi i32 [ %i.ap, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.069, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !47 ; 3 uses
  %i.an = icmp sgt i32 %i.am, %i.aj
  br i1 %i.an, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ao = icmp slt i32 %i.am, %i.ak
  %spec.select64 = select i1 %i.ao, i32 %.05367, i32 %.05268 ; 2 uses
  %i.ap = add nuw i32 %.05367, 1
  %exitcond.not = icmp eq i32 %.05367, %spec.select
  %i.aq = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %i.ak)
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.052.lcssa = phi i32 [ 0, %bb.b ], [ %.05268, %.lr.ph ], [ %spec.select64, %bb.c ] ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aa, i64 -96    ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !119
  %i.at = add nsw i32 %i.as, %.052.lcssa
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !119
  %i.au = add nsw i32 %.052.lcssa, %.05773
  store i32 %i.au, ptr %i.ab, align 4, !tbaa !118
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %.lr.ph76.split
  %i.av = sub nsw i32 %.05674, %i.ae
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  store i32 %i.c, ptr %i.aw, align 4, !tbaa !122
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i32 %i.d, ptr %i.ax, align 8, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond82.not, label %._crit_edge77, label %.lr.ph76.split, !llvm.loop !12

._crit_edge77.loopexit.unr-lcssa:                 ; preds = %.lr.ph76.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge77, label %.lr.ph76.split.us.epil.preheader

.lr.ph76.split.us.epil.preheader:                 ; preds = %._crit_edge77.loopexit.unr-lcssa, %.lr.ph76.split.us.preheader
  %indvars.iv83.epil.init = phi i64 [ 0, %.lr.ph76.split.us.preheader ], [ %indvars.iv.next84.1, %._crit_edge77.loopexit.unr-lcssa ] ; 2 uses
  %.05674.us.epil.init = phi i32 [ %2, %.lr.ph76.split.us.preheader ], [ %i.x, %._crit_edge77.loopexit.unr-lcssa ]
  %.05773.us.epil.init = phi i32 [ 0, %.lr.ph76.split.us.preheader ], [ %i.v, %._crit_edge77.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod93 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %i.ay = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %indvars.iv83.epil.init ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  store i32 %.05773.us.epil.init, ptr %i.az, align 4, !tbaa !118
  %i.ba = trunc i64 %indvars.iv83.epil.init to i32
  %i.bb = sub i32 %1, %i.ba
  %i.bc = sdiv i32 %.05674.us.epil.init, %i.bb
  %i.bd = add nsw i32 %i.bc, %.05773.us.epil.init
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !119
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  store i32 %i.c, ptr %i.bf, align 4, !tbaa !122
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i32 %i.d, ptr %i.bg, align 8, !tbaa !123
  br label %._crit_edge77

._crit_edge77:                                    ; preds = %bb.d, %.lr.ph76.split.us.epil.preheader, %._crit_edge77.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @stbir__free_internal_mem(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !132
  tail call void @free(ptr noundef nonnull %i.b) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 0, -2147483648) i32 @stbir__get_max_split(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %0, 1
  %i.b = icmp eq i32 %0, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %0, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.018 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %spec.select.1, %.lr.ph ]
  %.01217 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.i, %.lr.ph ] ; 3 uses
  %.01316 = phi i32 [ %1, %.lr.ph.preheader.new ], [ %i.h, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = sub nuw nsw i32 %0, %.01217
  %i.d = sdiv i32 %.01316, %i.c                   ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %.018)
  %i.e = sub nsw i32 %.01316, %i.d                ; 2 uses
  %.neg = xor i32 %.01217, -1
  %i.f = add nsw i32 %0, %.neg
  %i.g = sdiv i32 %i.e, %i.f                      ; 2 uses
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %spec.select) ; 3 uses
  %i.h = sub nsw i32 %i.e, %i.g                   ; 2 uses
  %i.i = add nuw nsw i32 %.01217, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !14

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.018.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01217.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.i, %._crit_edge.loopexit.unr-lcssa ]
  %.01316.epil.init = phi i32 [ %1, %.lr.ph.preheader ], [ %i.h, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod20 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.j = sub nuw nsw i32 %0, %.01217.epil.init
  %i.k = sdiv i32 %.01316.epil.init, %i.j
  %spec.select.epil = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %.018.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil.preheader ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @stbir__should_do_vertical_first(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef captures(address_is_null) %8) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp slt i32 %6, 5
  %i.b = icmp slt i32 %3, 5
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %6, %3
  %i.d = select i1 %i.c, i32 6, i32 7
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.not = icmp ne i32 %7, 0                       ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp samesign ult i32 %6, 17
  %i.f = icmp samesign ult i32 %3, 17
  %or.cond3 = or i1 %i.f, %i.e
  br i1 %or.cond3, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = fcmp ugt float %5, 1.000000e+00
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = zext i1 %.not to i32
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.i = fcmp ugt float %5, 2.000000e+00
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = fcmp ugt float %5, 3.000000e+00
  %. = select i1 %i.j, i32 5, i32 3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.f, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.h, %bb.f ], [ 4, %bb.d ], [ %., %bb.h ], [ 2, %bb.g ] ; 2 uses
  %i.k = zext nneg i32 %.0 to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.k ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.m = sitofp i32 %4 to float                   ; 2 uses
  %10 = sitofp i32 %1 to float                    ; 2 uses
  %i.n = load <2 x float>, ptr %i.l, align 4, !tbaa !58
  %11 = fmul float %2, %i.m
  %i.o = insertelement <2 x float> poison, float %10, i64 0
  %i.p = insertelement <2 x float> %i.o, float %11, i64 1
  %i.q = fmul <2 x float> %i.n, %i.p
  %i.r = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.q) ; 2 uses
  %i.s = fmul float %5, %10
  %i.t = load <2 x float>, ptr %9, align 4, !tbaa !58
  %i.u = insertelement <2 x float> poison, float %i.m, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.s, i64 1
  %i.w = fmul <2 x float> %i.t, %i.v
  %i.x = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.w) ; 2 uses
  %i.y = fcmp ole float %i.x, %i.r
  %i.z = zext i1 %i.y to i32                      ; 3 uses
  %.not48 = icmp eq ptr %8, null
  br i1 %.not48, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = fpext float %i.r to double
  %i.ab = fpext float %i.x to double
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.aa, ptr %i.ac, align 8, !tbaa !1036
  store double %i.ab, ptr %8, align 8, !tbaa !1037
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.0, ptr %i.ad, align 8, !tbaa !1038
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.z, ptr %i.ae, align 4, !tbaa !1039
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 %7, ptr %i.af, align 4, !tbaa !1040
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1041 ; 2 uses
  %.not49 = icmp eq i32 %i.ah, 0
  br i1 %.not49, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp eq i32 %i.ah, 2
  %i.aj = zext i1 %i.ai to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.k, %bb.j
  %.042 = phi i32 [ %i.aj, %bb.k ], [ %i.z, %bb.j ], [ %i.z, %bb.i ]
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define ptr @stbir__alloc_internal_mem_and_build_samplers(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41   ; 6 uses
  %i.c = icmp sgt i32 %5, 0                       ; 3 uses
  br i1 %i.c, label %.lr.ph.i.preheader, label %stbir__get_max_split.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i32 %5, 1
  %i.d = icmp eq i32 %5, 1
  br i1 %i.d, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %5, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.018.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %spec.select.i.1, %.lr.ph.i ]
  %.01217.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.k, %.lr.ph.i ] ; 3 uses
  %.01316.i = phi i32 [ %i.b, %.lr.ph.i.preheader.new ], [ %i.j, %.lr.ph.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.e = sub nuw nsw i32 %5, %.01217.i
  %i.f = sdiv i32 %.01316.i, %i.e                 ; 2 uses
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 %.018.i)
  %i.g = sub nsw i32 %.01316.i, %i.f              ; 2 uses
  %.neg = xor i32 %.01217.i, -1
  %i.h = add nsw i32 %5, %.neg
  %i.i = sdiv i32 %i.g, %i.h                      ; 2 uses
  %spec.select.i.1 = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %spec.select.i) ; 3 uses
  %i.j = sub nsw i32 %i.g, %i.i                   ; 2 uses
  %i.k = add nuw nsw i32 %.01217.i, 2             ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbir__get_max_split.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !14

stbir__get_max_split.exit.loopexit.unr-lcssa:     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbir__get_max_split.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %stbir__get_max_split.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.018.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %spec.select.i.1, %stbir__get_max_split.exit.loopexit.unr-lcssa ]
  %.01217.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.k, %stbir__get_max_split.exit.loopexit.unr-lcssa ]
  %.01316.i.epil.init = phi i32 [ %i.b, %.lr.ph.i.preheader ], [ %i.j, %stbir__get_max_split.exit.loopexit.unr-lcssa ]
  %lcmp.mod436 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod436)
  %i.l = sub nuw nsw i32 %5, %.01217.i.epil.init
  %i.m = sdiv i32 %.01316.i.epil.init, %i.l
  %spec.select.i.epil = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %.018.i.epil.init)
  br label %stbir__get_max_split.exit

stbir__get_max_split.exit:                        ; preds = %.lr.ph.i.epil.preheader, %stbir__get_max_split.exit.loopexit.unr-lcssa, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %spec.select.i.1, %stbir__get_max_split.exit.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.lr.ph.i.epil.preheader ] ; 3 uses
  %i.n = zext i32 %3 to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @stbir__pixel_layout_convert_public_to_internal, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32   ; 7 uses
  %i.q = zext i32 %4 to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @stbir__pixel_layout_convert_public_to_internal, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !32   ; 7 uses
  %i.t = zext i32 %i.p to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr @stbir__pixel_channels, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !24    ; 2 uses
  %i.w = zext i8 %i.v to i32                      ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !125
  %.not = icmp eq i32 %i.y, 6
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %stbir__get_max_split.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !125
  %.not324 = icmp eq i32 %i.aa, 6
  br i1 %.not324, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %stbir__get_max_split.exit
  %i.ab = add i32 %i.p, -5
  %or.cond = icmp ult i32 %i.ab, 6                ; 2 uses
  %i.ac = add i32 %i.s, -5
  %i.ad = icmp ult i32 %i.ac, 6                   ; 2 uses
  %or.cond5 = select i1 %or.cond, i1 %i.ad, i1 false
  br i1 %or.cond5, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not325 = icmp eq i32 %8, 0
  br i1 %.not325, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr [4 x i8], ptr @__const.stbir__alloc_internal_mem_and_build_samplers.fancy_alpha_effective_cnts, i64 %i.t
  %i.af = getelementptr i8, ptr %i.ae, i64 -20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !32
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.ah = add i32 %i.p, -11
  %or.cond7 = icmp ult i32 %i.ah, 6
  %or.cond11 = select i1 %or.cond7, i1 %i.ad, i1 false
  br i1 %or.cond11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = add i32 %i.s, -11
  %i.aj = icmp ult i32 %i.ai, 6
  %or.cond17 = select i1 %or.cond, i1 %i.aj, i1 false
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.e, %bb.b
  %i.ak = phi i1 [ false, %bb.b ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.g ]
  %i.al = phi i1 [ false, %bb.b ], [ false, %bb.e ], [ true, %bb.d ], [ false, %bb.f ], [ false, %bb.g ]
  %i.am = phi i1 [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.f ], [ %or.cond17, %bb.g ]
  %i.an = phi i1 [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.d ], [ true, %bb.f ], [ false, %bb.g ]
  %.0298 = phi i32 [ %i.w, %bb.b ], [ %i.ag, %bb.e ], [ %i.w, %bb.d ], [ %i.w, %bb.f ], [ %i.w, %bb.g ] ; 3 uses
  %i.ao = zext i32 %i.s to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @stbir__pixel_channels, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !24
  %.not326 = icmp eq i8 %i.v, %i.aq
  br i1 %.not326, label %bb.i, label %.thread361

bb.i:                                             ; preds = %bb.h
  %i.ar = sext i32 %.0298 to i64                  ; 4 uses
  %i.as = getelementptr inbounds i8, ptr @__const.stbir__alloc_internal_mem_and_build_samplers.stbir_channel_count_index, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !24
  %i.au = sext i8 %i.at to i64
  %i.av = getelementptr inbounds [128 x i8], ptr @stbir__compute_weights, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !126
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load float, ptr %i.ay, align 8, !tbaa !39 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !41 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !126 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = load float, ptr %i.be, align 8, !tbaa !39 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !69 ; 4 uses
  %i.bi = icmp slt i32 %i.b, 5
  %i.bj = icmp slt i32 %i.bb, 5
  %or.cond.i = or i1 %i.bi, %i.bj
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bk = icmp slt i32 %i.b, %i.bb
  %i.bl = select i1 %i.bk, i64 6, i64 7
  br label %stbir__should_do_vertical_first.exit

bb.k:                                             ; preds = %bb.i
  %.not.i = icmp ne i32 %i.bh, 0                  ; 2 uses
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = icmp samesign ult i32 %i.b, 17
  %i.bn = icmp samesign ult i32 %i.bb, 17
  %or.cond3.i = or i1 %i.bm, %i.bn
  br i1 %or.cond3.i, label %stbir__should_do_vertical_first.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bo = fcmp ugt float %i.bf, 1.000000e+00
  br i1 %i.bo, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = zext i1 %.not.i to i64
  br label %stbir__should_do_vertical_first.exit

bb.o:                                             ; preds = %bb.m
  %i.bq = fcmp ugt float %i.bf, 2.000000e+00
end_hunk_0
