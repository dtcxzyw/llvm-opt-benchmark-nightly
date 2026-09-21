Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_gblur?download=true
inline.NumInlined: 11
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0_@av_frame_is_writable
declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #1

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @av_frame_free(ptr noundef) local_unnamed_addr #1

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #5

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_horizontally(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !48   ; 3 uses
  %i.f = sext i32 %i.c to i64                     ; 2 uses
  %i.g = sext i32 %2 to i64
  %i.h = mul nsw i64 %i.f, %i.g
  %i.i = sext i32 %3 to i64                       ; 2 uses
  %i.j = sdiv i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.m = load float, ptr %i.l, align 8, !tbaa !91
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.q = load float, ptr %i.p, align 8, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50   ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = mul nsw i32 %i.e, %i.k
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !93
  %i.x = mul i32 %i.e, %i.k                       ; 2 uses
  %i.y = mul i32 %i.x, %i.w
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.z
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.x, %bb.b ]
  %.0 = phi ptr [ null, %._crit_edge ], [ %i.aa, %bb.b ]
  %i.ab = add nsw i32 %2, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.f, %i.ac
  %i.ae = sdiv i64 %i.ad, %i.i
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.ai = sext i32 %.pre-phi to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ai
  %i.ak = sub nsw i32 %i.af, %i.k
  tail call void %i.ah(ptr noundef %i.aj, i32 noundef %i.e, i32 noundef %i.ak, i32 noundef %i.o, float noundef %i.q, float noundef %i.m, ptr noundef %.0) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_vertically(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !48   ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = sext i32 %2 to i64
  %i.h = mul nsw i64 %i.f, %i.g
  %i.i = sext i32 %3 to i64                       ; 2 uses
  %i.j = sdiv i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = add nsw i32 %2, 1
  %i.m = sext i32 %i.l to i64
  %i.n = mul nsw i64 %i.f, %i.m
  %i.o = sdiv i64 %i.n, %i.i
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.r = load float, ptr %i.q, align 4, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.v = load float, ptr %i.u, align 4, !tbaa !95
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  tail call void %i.z(ptr noundef %i.x, i32 noundef %i.e, i32 noundef %i.c, i32 noundef %i.k, i32 noundef %i.p, i32 noundef %i.t, float noundef %i.v, float noundef %i.r) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_postscale(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41
  %notmask = shl nsw i32 -1, %i.f
  %i.g = xor i32 %notmask, -1
  %i.h = uitofp nsz nneg i32 %i.g to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi float [ 0.000000e+00, %bb.b ], [ f0xFF7FFFFF, %bb.a ]
  %i.j = phi nsz float [ %i.h, %bb.b ], [ f0x7F7FFFFF, %bb.a ]
  %i.k = load i32, ptr %1, align 4, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !48
  %i.n = add nsw i32 %i.m, 63
  %i.o = and i32 %i.n, -64                        ; 2 uses
  %i.p = sext i32 %i.k to i64                     ; 2 uses
  %i.q = sext i32 %2 to i64
  %i.r = mul nsw i64 %i.p, %i.q
  %i.s = sext i32 %3 to i64                       ; 2 uses
  %i.t = sdiv i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = add nsw i32 %2, 1
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.p, %i.w
  %i.y = sdiv i64 %i.x, %i.s
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !97
  %i.ae = fmul nsz float %i.ab, %i.ad
  %i.af = sub nsw i32 %i.z, %i.u
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40
  %i.ak = mul nsw i32 %i.o, %i.u
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  %i.an = mul nsw i32 %i.af, %i.o
  tail call void %i.ah(ptr noundef %i.am, i32 noundef %i.an, float noundef %i.ae, float noundef %i.i, float noundef %i.j) #8
  ret i32 0
}

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #1

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #1

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @horiz_slice_c(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5, ptr nofree readnone captures(none) %6) #6 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %i.c = add i32 %1, -1                           ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  br i1 %i.b, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.e = icmp sgt i32 %1, 1
  br i1 %i.e, label %.preheader.us.us.preheader, label %.preheader.preheader

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split
  %i.f = zext i32 %i.c to i64                     ; 4 uses
  %i.g = zext nneg i32 %1 to i64                  ; 3 uses
  %wide.trip.count85 = zext nneg i32 %2 to i64
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = shl nuw nsw i64 %i.g, 2
  %i.j = add nsw i64 %i.g, -1                     ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 %i.h
  %xtraiter99 = and i64 %i.j, 3                   ; 3 uses
  %i.l = add nsw i32 %1, -2
  %i.m = icmp ult i32 %i.l, 3
  %unroll_iter102 = and i64 %i.j, -4
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  %lcmp.mod101 = icmp ne i64 %xtraiter99, 0
  %xtraiter104 = and i64 %i.f, 3                  ; 2 uses
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  %7 = add nsw i32 %1, -2
  %8 = icmp ult i32 %7, 3
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge38.split.us.us.split.us.us
  %indvars.iv82 = phi i64 [ 0, %.preheader.us.us.preheader ], [ %indvars.iv.next83, %._crit_edge38.split.us.us.split.us.us ] ; 3 uses
  %i.n = mul i64 %i.i, %indvars.iv82
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.n
  %i.o = mul nuw nsw i64 %indvars.iv82, %i.g
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o ; 13 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.d ; 2 uses
  br label %.lr.ph.us.us.us.us

.lr.ph.us.us.us.us:                               ; preds = %._crit_edge35.us.us.us.us, %.preheader.us.us
  %.036.us.us.us.us = phi i32 [ 0, %.preheader.us.us ], [ %i.as, %._crit_edge35.us.us.us.us ]
  %i.r = load float, ptr %i.p, align 4, !tbaa !34
  %i.s = fmul nsz float %5, %i.r                  ; 3 uses
  store float %i.s, ptr %i.p, align 4, !tbaa !34
  br i1 %i.m, label %.epil.preheader98, label %.lr.ph.us.us.us.us.new

.lr.ph.us.us.us.us.new:                           ; preds = %.lr.ph.us.us.us.us, %.lr.ph.us.us.us.us.new
  %store_forwarded = phi float [ %i.ah, %.lr.ph.us.us.us.us.new ], [ %i.s, %.lr.ph.us.us.us.us ]
  %indvars.iv73 = phi i64 [ %indvars.iv.next74.3, %.lr.ph.us.us.us.us.new ], [ 1, %.lr.ph.us.us.us.us ] ; 5 uses
  %niter103 = phi i64 [ %niter103.next.3, %.lr.ph.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us ]
  %i.t = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv73 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !34
  %i.v = tail call nsz float @llvm.fmuladd.f32(float %4, float %store_forwarded, float %i.u) ; 2 uses
  store float %i.v, ptr %i.t, align 4, !tbaa !34
  %i.w = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv73
  %i.x = getelementptr i8, ptr %i.w, i64 4        ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !34
  %i.z = tail call nsz float @llvm.fmuladd.f32(float %4, float %i.v, float %i.y) ; 2 uses
  store float %i.z, ptr %i.x, align 4, !tbaa !34
  %i.aa = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv73
  %i.ab = getelementptr i8, ptr %i.aa, i64 8      ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !34
  %i.ad = tail call nsz float @llvm.fmuladd.f32(float %4, float %i.z, float %i.ac) ; 2 uses
  store float %i.ad, ptr %i.ab, align 4, !tbaa !34
  %i.ae = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv73
  %i.af = getelementptr i8, ptr %i.ae, i64 12     ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !34
  %i.ah = tail call nsz float @llvm.fmuladd.f32(float %4, float %i.ad, float %i.ag) ; 3 uses
  store float %i.ah, ptr %i.af, align 4, !tbaa !34
  %indvars.iv.next74.3 = add nuw nsw i64 %indvars.iv73, 4 ; 2 uses
  %niter103.next.3 = add nuw i64 %niter103, 4     ; 2 uses
  %niter103.ncmp.3 = icmp eq i64 %niter103.next.3, %unroll_iter102
  br i1 %niter103.ncmp.3, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.us.new, !llvm.loop !98

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph.us.us.us.us.new
  br i1 %lcmp.mod100.not, label %._crit_edge.us.us.us.us, label %.epil.preheader98

.epil.preheader98:                                ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph.us.us.us.us
  %store_forwarded.epil.init = phi float [ %i.s, %.lr.ph.us.us.us.us ], [ %i.ah, %._crit_edge.us.us.us.us.unr-lcssa ]
  %indvars.iv73.epil.init = phi i64 [ 1, %.lr.ph.us.us.us.us ], [ %indvars.iv.next74.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod101)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader98
  %store_forwarded.epil = phi float [ %store_forwarded.epil.init, %.epil.preheader98 ], [ %i.ak, %bb.b ]
  %indvars.iv73.epil = phi i64 [ %indvars.iv73.epil.init, %.epil.preheader98 ], [ %indvars.iv.next74.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader98 ], [ %epil.iter.next, %bb.b ]
  %i.ai = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv73.epil ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !34
  %i.ak = tail call nsz float @llvm.fmuladd.f32(float %4, float %store_forwarded.epil, float %i.aj) ; 2 uses
  store float %i.ak, ptr %i.ai, align 4, !tbaa !34
  %indvars.iv.next74.epil = add nuw nsw i64 %indvars.iv73.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter99
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us.us, label %bb.b, !llvm.loop !99

._crit_edge.us.us.us.us:                          ; preds = %bb.b, %._crit_edge.us.us.us.us.unr-lcssa
  %i.al = load float, ptr %i.q, align 4, !tbaa !34
  %i.am = fmul nsz float %5, %i.al
  store float %i.am, ptr %i.q, align 4, !tbaa !34
  %load_initial94 = load float, ptr %scevgep, align 4 ; 2 uses
  br i1 %lcmp.mod105.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %._crit_edge.us.us.us.us, %.prol.preheader
  %store_forwarded95.prol = phi float [ %12, %.prol.preheader ], [ %load_initial94, %._crit_edge.us.us.us.us ]
  %indvars.iv78.prol = phi i64 [ %indvars.iv.next79.prol, %.prol.preheader ], [ %i.f, %._crit_edge.us.us.us.us ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %._crit_edge.us.us.us.us ]
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv78.prol
  %10 = getelementptr i8, ptr %9, i64 -4          ; 2 uses
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = tail call nsz float @llvm.fmuladd.f32(float %4, float %store_forwarded95.prol, float %11) ; 3 uses
  store float %12, ptr %10, align 4, !tbaa !34
  %indvars.iv.next79.prol = add nsw i64 %indvars.iv78.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter104
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !100

.prol.loopexit:                                   ; preds = %.prol.preheader, %._crit_edge.us.us.us.us
  %store_forwarded95.unr = phi float [ %load_initial94, %._crit_edge.us.us.us.us ], [ %12, %.prol.preheader ]
  %indvars.iv78.unr = phi i64 [ %i.f, %._crit_edge.us.us.us.us ], [ %indvars.iv.next79.prol, %.prol.preheader ]
  br i1 %8, label %._crit_edge35.us.us.us.us, label %bb.c

bb.c:                                             ; preds = %.prol.loopexit, %bb.c
  %store_forwarded95 = phi float [ %i.aq, %bb.c ], [ %store_forwarded95.unr, %.prol.loopexit ]
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %bb.c ], [ %indvars.iv78.unr, %.prol.loopexit ] ; 6 uses
  %13 = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv78
  %14 = getelementptr i8, ptr %13, i64 -4         ; 2 uses
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = tail call nsz float @llvm.fmuladd.f32(float %4, float %store_forwarded95, float %15) ; 2 uses
  store float %16, ptr %14, align 4, !tbaa !34
  %17 = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv78
  %18 = getelementptr i8, ptr %17, i64 -8         ; 2 uses
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = tail call nsz float @llvm.fmuladd.f32(float %4, float %16, float %19) ; 2 uses
  store float %20, ptr %18, align 4, !tbaa !34
  %21 = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv78
  %22 = getelementptr i8, ptr %21, i64 -12        ; 2 uses
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = tail call nsz float @llvm.fmuladd.f32(float %4, float %20, float %23) ; 2 uses
  store float %24, ptr %22, align 4, !tbaa !34
  %i.an = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv78
  %i.ao = getelementptr i8, ptr %i.an, i64 -16    ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !34
  %i.aq = tail call nsz float @llvm.fmuladd.f32(float %4, float %24, float %i.ap) ; 2 uses
  store float %i.aq, ptr %i.ao, align 4, !tbaa !34
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, -4
  %i.ar = icmp sgt i64 %indvars.iv78, 4
  br i1 %i.ar, label %bb.c, label %._crit_edge35.us.us.us.us, !llvm.loop !101

._crit_edge35.us.us.us.us:                        ; preds = %bb.c, %.prol.loopexit
  %i.as = add nuw nsw i32 %.036.us.us.us.us, 1    ; 2 uses
  %exitcond81.not = icmp eq i32 %i.as, %3
  br i1 %exitcond81.not, label %._crit_edge38.split.us.us.split.us.us, label %.lr.ph.us.us.us.us, !llvm.loop !102

._crit_edge38.split.us.us.split.us.us:            ; preds = %._crit_edge35.us.us.us.us
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %._crit_edge.split, label %.preheader.us.us, !llvm.loop !103

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.at = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %xtraiter = and i32 %3, 1
  %i.au = icmp eq i32 %3, 1
  %unroll_iter = and i32 %3, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod97 = trunc i32 %3 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge38.split.split
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge38.split.split ] ; 2 uses
  %i.av = mul nsw i64 %indvars.iv, %i.at
  %i.aw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.av ; 7 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.d ; 6 uses
  br i1 %i.au, label %.epil.preheader, label %.preheader.new

._crit_edge.split:                                ; preds = %._crit_edge38.split.split, %._crit_edge38.split.us.us.split.us.us, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge38.split.split.unr-lcssa:              ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge38.split.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge38.split.split.unr-lcssa, %.preheader
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.ay = load float, ptr %i.aw, align 4, !tbaa !34
  %i.az = fmul nsz float %5, %i.ay
  store float %i.az, ptr %i.aw, align 4, !tbaa !34
  %i.ba = load float, ptr %i.ax, align 4, !tbaa !34
  %i.bb = fmul nsz float %5, %i.ba
  store float %i.bb, ptr %i.ax, align 4, !tbaa !34
  br label %._crit_edge38.split.split

._crit_edge38.split.split:                        ; preds = %._crit_edge38.split.split.unr-lcssa, %.epil.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond52.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond52.not, label %._crit_edge.split, label %.preheader, !llvm.loop !103

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %niter = phi i32 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bc = load float, ptr %i.aw, align 4, !tbaa !34
  %i.bd = fmul nsz float %5, %i.bc
  store float %i.bd, ptr %i.aw, align 4, !tbaa !34
  %i.be = load float, ptr %i.ax, align 4, !tbaa !34
  %i.bf = fmul nsz float %5, %i.be
  store float %i.bf, ptr %i.ax, align 4, !tbaa !34
  %i.bg = load float, ptr %i.aw, align 4, !tbaa !34
  %i.bh = fmul nsz float %5, %i.bg
  store float %i.bh, ptr %i.aw, align 4, !tbaa !34
  %i.bi = load float, ptr %i.ax, align 4, !tbaa !34
  %i.bj = fmul nsz float %5, %i.bi
  store float %i.bj, ptr %i.ax, align 4, !tbaa !34
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge38.split.split.unr-lcssa, label %.preheader.new, !llvm.loop !102
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @verti_slice_c(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7) #6 {
bb.a:
  %i.a = sub nsw i32 %4, %3
  %i.b = and i32 %i.a, -8
  %i.c = add nsw i32 %i.b, %3                     ; 2 uses
  tail call fastcc void @do_vertical_columns(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.c, i32 noundef %5, float noundef %6, float noundef %7, i32 noundef 8)
  tail call fastcc void @do_vertical_columns(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.c, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7, i32 noundef 1)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @postscale_c(ptr nofree noundef captures(none) %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4) #6 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert13 = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat14 = shufflevector <4 x float> %broadcast.splatinsert13, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert15 = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat16 = shufflevector <4 x float> %broadcast.splatinsert15, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.b, align 4, !tbaa !34
  %wide.load17 = load <4 x float>, ptr %i.c, align 4, !tbaa !34
  %i.d = fmul nsz <4 x float> %broadcast.splat, %wide.load ; 2 uses
  %i.e = fmul nsz <4 x float> %broadcast.splat, %wide.load17 ; 2 uses
  %i.f = fcmp nsz ogt <4 x float> %i.d, %broadcast.splat14
  %i.g = fcmp nsz ogt <4 x float> %i.e, %broadcast.splat14
  %i.h = select nsz <4 x i1> %i.f, <4 x float> %i.d, <4 x float> %broadcast.splat14 ; 2 uses
  %i.i = select nsz <4 x i1> %i.g, <4 x float> %i.e, <4 x float> %broadcast.splat14 ; 2 uses
  %i.j = fcmp nsz ogt <4 x float> %i.h, %broadcast.splat16
  %i.k = fcmp nsz ogt <4 x float> %i.i, %broadcast.splat16
  %i.l = select nsz <4 x i1> %i.j, <4 x float> %broadcast.splat16, <4 x float> %i.h
  %i.m = select nsz <4 x i1> %i.k, <4 x float> %broadcast.splat16, <4 x float> %i.i
  store <4 x float> %i.l, ptr %i.b, align 4, !tbaa !34
  store <4 x float> %i.m, ptr %i.c, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader18 ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !34
  %i.q = fmul nsz float %2, %i.p                  ; 2 uses
  %i.r = fcmp nsz ogt float %i.q, %3
  %i.s = select nsz i1 %i.r, float %i.q, float %3 ; 2 uses
  %i.t = fcmp nsz ogt float %i.s, %4
  %..i = select nsz i1 %i.t, float %4, float %i.s
  store float %..i, ptr %i.o, align 4, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !105
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @do_vertical_columns(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7, i32 noundef range(i32 1, 9) %8) unnamed_addr #6 {
bb.a:
  %i.a = mul nsw i32 %2, %1                       ; 3 uses
  %i.b = icmp slt i32 %3, %4
  br i1 %i.b, label %.preheader67.lr.ph, label %._crit_edge.split

.preheader67.lr.ph:                               ; preds = %bb.a
  %i.c = icmp sgt i32 %5, 0
  %i.d = sub nsw i32 %i.a, %1                     ; 7 uses
  %i.e = icmp sgt i32 %i.d, 0                     ; 2 uses
  br i1 %i.c, label %.preheader67.lr.ph.split, label %._crit_edge.split

.preheader67.lr.ph.split:                         ; preds = %.preheader67.lr.ph
  %i.f = icmp slt i32 %1, %i.a
  br i1 %i.f, label %.preheader67.lr.ph.split.split.us, label %.preheader67.lr.ph.split.split

.preheader67.lr.ph.split.split.us:                ; preds = %.preheader67.lr.ph.split
  %i.g = sext i32 %1 to i64                       ; 4 uses
  %i.h = sext i32 %i.a to i64                     ; 2 uses
  %i.i = sext i32 %3 to i64                       ; 2 uses
  %i.j = zext nneg i32 %8 to i64                  ; 2 uses
  %i.k = sext i32 %4 to i64                       ; 2 uses
  br i1 %i.e, label %.preheader67.us.us.preheader, label %.preheader67.us.preheader

.preheader67.us.preheader:                        ; preds = %.preheader67.lr.ph.split.split.us
  %i.l = sext i32 %i.d to i64
  %exitcond128.not = icmp eq i32 %8, 1
  %exitcond128.not.1 = icmp eq i32 %8, 2
  %exitcond128.not.2 = icmp eq i32 %8, 3
  %exitcond128.not.3 = icmp eq i32 %8, 4
  %exitcond128.not.4 = icmp eq i32 %8, 5
  %exitcond128.not.5 = icmp eq i32 %8, 6
  %exitcond128.not.6 = icmp eq i32 %8, 7
  %exitcond133.not = icmp eq i32 %8, 1
  %exitcond133.not.1 = icmp eq i32 %8, 2
  %exitcond133.not.2 = icmp eq i32 %8, 3
  %exitcond133.not.3 = icmp eq i32 %8, 4
  %exitcond133.not.4 = icmp eq i32 %8, 5
  %exitcond133.not.5 = icmp eq i32 %8, 6
  %exitcond133.not.6 = icmp eq i32 %8, 7
  %exitcond141.not = icmp eq i32 %8, 1
  %exitcond141.not.1 = icmp eq i32 %8, 2
  %exitcond141.not.2 = icmp eq i32 %8, 3
  %exitcond141.not.3 = icmp eq i32 %8, 4
  %exitcond141.not.4 = icmp eq i32 %8, 5
  %exitcond141.not.5 = icmp eq i32 %8, 6
  %exitcond141.not.6 = icmp eq i32 %8, 7
  br label %.preheader67.us

.preheader67.us.us.preheader:                     ; preds = %.preheader67.lr.ph.split.split.us
  %i.m = zext nneg i32 %i.d to i64
  %exitcond150.not = icmp eq i32 %8, 1
  %exitcond150.not.1 = icmp eq i32 %8, 2
  %exitcond150.not.2 = icmp eq i32 %8, 3
  %exitcond150.not.3 = icmp eq i32 %8, 4
  %exitcond150.not.4 = icmp eq i32 %8, 5
  %exitcond150.not.5 = icmp eq i32 %8, 6
  %exitcond150.not.6 = icmp eq i32 %8, 7
  %exitcond155.not = icmp eq i32 %8, 1
  %exitcond155.not.1 = icmp eq i32 %8, 2
  %exitcond155.not.2 = icmp eq i32 %8, 3
  %exitcond155.not.3 = icmp eq i32 %8, 4
  %exitcond155.not.4 = icmp eq i32 %8, 5
  %exitcond155.not.5 = icmp eq i32 %8, 6
  %exitcond155.not.6 = icmp eq i32 %8, 7
  %exitcond163.not = icmp eq i32 %8, 1
  %exitcond163.not.1 = icmp eq i32 %8, 2
  %exitcond163.not.2 = icmp eq i32 %8, 3
  %exitcond163.not.3 = icmp eq i32 %8, 4
  %exitcond163.not.4 = icmp eq i32 %8, 5
  %exitcond163.not.5 = icmp eq i32 %8, 6
  %exitcond163.not.6 = icmp eq i32 %8, 7
  %exitcond168.not = icmp eq i32 %8, 1
  %exitcond168.not.1 = icmp eq i32 %8, 2
  %exitcond168.not.2 = icmp eq i32 %8, 3
  %exitcond168.not.3 = icmp eq i32 %8, 4
  %exitcond168.not.4 = icmp eq i32 %8, 5
  %exitcond168.not.5 = icmp eq i32 %8, 6
  %exitcond168.not.6 = icmp eq i32 %8, 7
  br label %.preheader67.us.us

.preheader67.us.us:                               ; preds = %.preheader67.us.us.preheader, %._crit_edge76.split.us.us.split.us.us
  %indvars.iv170 = phi i64 [ %i.i, %.preheader67.us.us.preheader ], [ %indvars.iv.next171, %._crit_edge76.split.us.us.split.us.us ] ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv170 ; 14 uses
  %invariant.gep208 = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 20 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 28 ; 2 uses
  %gep209.1 = getelementptr inbounds nuw i8, ptr %invariant.gep208, i64 4 ; 2 uses
  %gep209.2 = getelementptr inbounds nuw i8, ptr %invariant.gep208, i64 8 ; 2 uses
  %gep209.3 = getelementptr inbounds nuw i8, ptr %invariant.gep208, i64 12 ; 2 uses
  %gep209.4 = getelementptr inbounds nuw i8, ptr %invariant.gep208, i64 16 ; 2 uses
  %gep209.5 = getelementptr inbounds nuw i8, ptr %invariant.gep208, i64 20 ; 2 uses
  %gep209.6 = getelementptr inbounds nuw i8, ptr %invariant.gep208, i64 24 ; 2 uses
  %gep209.7 = getelementptr inbounds nuw i8, ptr %invariant.gep208, i64 28 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge74.us.us.us.us, %.preheader67.us.us
  %.05975.us.us.us.us = phi i32 [ 0, %.preheader67.us.us ], [ %i.df, %._crit_edge74.us.us.us.us ]
  %i.v = load float, ptr %i.n, align 4, !tbaa !34
  %i.w = fmul nsz float %7, %i.v
  store float %i.w, ptr %i.n, align 4, !tbaa !34
  br i1 %exitcond150.not, label %.preheader64.us.us.us.us.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load float, ptr %i.o, align 4, !tbaa !34
  %i.y = fmul nsz float %7, %i.x
  store float %i.y, ptr %i.o, align 4, !tbaa !34
  br i1 %exitcond150.not.1, label %.preheader64.us.us.us.us.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load float, ptr %i.p, align 4, !tbaa !34
  %i.aa = fmul nsz float %7, %i.z
  store float %i.aa, ptr %i.p, align 4, !tbaa !34
  br i1 %exitcond150.not.2, label %.preheader64.us.us.us.us.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load float, ptr %i.q, align 4, !tbaa !34
  %i.ac = fmul nsz float %7, %i.ab
  store float %i.ac, ptr %i.q, align 4, !tbaa !34
  br i1 %exitcond150.not.3, label %.preheader64.us.us.us.us.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load float, ptr %i.r, align 4, !tbaa !34
  %i.ae = fmul nsz float %7, %i.ad
  store float %i.ae, ptr %i.r, align 4, !tbaa !34
  br i1 %exitcond150.not.4, label %.preheader64.us.us.us.us.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load float, ptr %i.s, align 4, !tbaa !34
  %i.ag = fmul nsz float %7, %i.af
  store float %i.ag, ptr %i.s, align 4, !tbaa !34
  br i1 %exitcond150.not.5, label %.preheader64.us.us.us.us.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load float, ptr %i.t, align 4, !tbaa !34
  %i.ai = fmul nsz float %7, %i.ah
  store float %i.ai, ptr %i.t, align 4, !tbaa !34
  br i1 %exitcond150.not.6, label %.preheader64.us.us.us.us.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load float, ptr %i.u, align 4, !tbaa !34
  %i.ak = fmul nsz float %7, %i.aj
  store float %i.ak, ptr %i.u, align 4, !tbaa !34
  br label %.preheader64.us.us.us.us.preheader

.preheader64.us.us.us.us.preheader:               ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  br label %.preheader64.us.us.us.us

.preheader64.us.us.us.us:                         ; preds = %.preheader64.us.us.us.us.preheader, %bb.q
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %bb.q ], [ %i.g, %.preheader64.us.us.us.us.preheader ] ; 3 uses
  %i.al = trunc nsw i64 %indvars.iv156 to i32
  %i.am = sub i32 %i.al, %1
  %i.an = sext i32 %i.am to i64
  %invariant.gep204 = getelementptr [4 x i8], ptr %i.n, i64 %i.an ; 8 uses
  %invariant.gep206 = getelementptr [4 x i8], ptr %i.n, i64 %indvars.iv156 ; 9 uses
  %i.ao = load float, ptr %invariant.gep204, align 4, !tbaa !34
  %i.ap = load float, ptr %invariant.gep206, align 4, !tbaa !34
  %i.aq = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.ao, float %i.ap)
  store float %i.aq, ptr %invariant.gep206, align 4, !tbaa !34
  br i1 %exitcond155.not, label %bb.q, label %bb.j

bb.j:                                             ; preds = %.preheader64.us.us.us.us
  %gep205.1 = getelementptr i8, ptr %invariant.gep204, i64 4
  %i.ar = load float, ptr %gep205.1, align 4, !tbaa !34
  %gep207.1 = getelementptr i8, ptr %invariant.gep206, i64 4 ; 2 uses
  %i.as = load float, ptr %gep207.1, align 4, !tbaa !34
  %i.at = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.ar, float %i.as)
  store float %i.at, ptr %gep207.1, align 4, !tbaa !34
  br i1 %exitcond155.not.1, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %gep205.2 = getelementptr i8, ptr %invariant.gep204, i64 8
  %i.au = load float, ptr %gep205.2, align 4, !tbaa !34
  %gep207.2 = getelementptr i8, ptr %invariant.gep206, i64 8 ; 2 uses
  %i.av = load float, ptr %gep207.2, align 4, !tbaa !34
  %i.aw = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.au, float %i.av)
  store float %i.aw, ptr %gep207.2, align 4, !tbaa !34
  br i1 %exitcond155.not.2, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %gep205.3 = getelementptr i8, ptr %invariant.gep204, i64 12
  %i.ax = load float, ptr %gep205.3, align 4, !tbaa !34
  %gep207.3 = getelementptr i8, ptr %invariant.gep206, i64 12 ; 2 uses
  %i.ay = load float, ptr %gep207.3, align 4, !tbaa !34
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.ax, float %i.ay)
  store float %i.az, ptr %gep207.3, align 4, !tbaa !34
  br i1 %exitcond155.not.3, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %gep205.4 = getelementptr i8, ptr %invariant.gep204, i64 16
  %i.ba = load float, ptr %gep205.4, align 4, !tbaa !34
  %gep207.4 = getelementptr i8, ptr %invariant.gep206, i64 16 ; 2 uses
  %i.bb = load float, ptr %gep207.4, align 4, !tbaa !34
  %i.bc = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.ba, float %i.bb)
  store float %i.bc, ptr %gep207.4, align 4, !tbaa !34
  br i1 %exitcond155.not.4, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %gep205.5 = getelementptr i8, ptr %invariant.gep204, i64 20
  %i.bd = load float, ptr %gep205.5, align 4, !tbaa !34
  %gep207.5 = getelementptr i8, ptr %invariant.gep206, i64 20 ; 2 uses
  %i.be = load float, ptr %gep207.5, align 4, !tbaa !34
  %i.bf = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.bd, float %i.be)
  store float %i.bf, ptr %gep207.5, align 4, !tbaa !34
  br i1 %exitcond155.not.5, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %gep205.6 = getelementptr i8, ptr %invariant.gep204, i64 24
  %i.bg = load float, ptr %gep205.6, align 4, !tbaa !34
  %gep207.6 = getelementptr i8, ptr %invariant.gep206, i64 24 ; 2 uses
  %i.bh = load float, ptr %gep207.6, align 4, !tbaa !34
  %i.bi = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.bg, float %i.bh)
  store float %i.bi, ptr %gep207.6, align 4, !tbaa !34
  br i1 %exitcond155.not.6, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %gep205.7 = getelementptr i8, ptr %invariant.gep204, i64 28
  %i.bj = load float, ptr %gep205.7, align 4, !tbaa !34
  %gep207.7 = getelementptr i8, ptr %invariant.gep206, i64 28 ; 2 uses
  %i.bk = load float, ptr %gep207.7, align 4, !tbaa !34
  %i.bl = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.bj, float %i.bk)
  store float %i.bl, ptr %gep207.7, align 4, !tbaa !34
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %.preheader64.us.us.us.us
  %indvars.iv.next157 = add nsw i64 %indvars.iv156, %i.g ; 2 uses
  %i.bm = icmp slt i64 %indvars.iv.next157, %i.h
  br i1 %i.bm, label %.preheader64.us.us.us.us, label %._crit_edge.us.us.us.us, !llvm.loop !106

._crit_edge.us.us.us.us:                          ; preds = %bb.q
  %i.bn = load float, ptr %invariant.gep208, align 4, !tbaa !34
  %i.bo = fmul nsz float %7, %i.bn
  store float %i.bo, ptr %invariant.gep208, align 4, !tbaa !34
  br i1 %exitcond163.not, label %.preheader.us.us.us.us.preheader, label %._crit_edge.us.us.us.us.1

._crit_edge.us.us.us.us.1:                        ; preds = %._crit_edge.us.us.us.us
  %i.bp = load float, ptr %gep209.1, align 4, !tbaa !34
  %i.bq = fmul nsz float %7, %i.bp
  store float %i.bq, ptr %gep209.1, align 4, !tbaa !34
  br i1 %exitcond163.not.1, label %.preheader.us.us.us.us.preheader, label %._crit_edge.us.us.us.us.2

._crit_edge.us.us.us.us.2:                        ; preds = %._crit_edge.us.us.us.us.1
  %i.br = load float, ptr %gep209.2, align 4, !tbaa !34
  %i.bs = fmul nsz float %7, %i.br
  store float %i.bs, ptr %gep209.2, align 4, !tbaa !34
  br i1 %exitcond163.not.2, label %.preheader.us.us.us.us.preheader, label %._crit_edge.us.us.us.us.3

._crit_edge.us.us.us.us.3:                        ; preds = %._crit_edge.us.us.us.us.2
  %i.bt = load float, ptr %gep209.3, align 4, !tbaa !34
  %i.bu = fmul nsz float %7, %i.bt
  store float %i.bu, ptr %gep209.3, align 4, !tbaa !34
  br i1 %exitcond163.not.3, label %.preheader.us.us.us.us.preheader, label %._crit_edge.us.us.us.us.4

._crit_edge.us.us.us.us.4:                        ; preds = %._crit_edge.us.us.us.us.3
  %i.bv = load float, ptr %gep209.4, align 4, !tbaa !34
  %i.bw = fmul nsz float %7, %i.bv
  store float %i.bw, ptr %gep209.4, align 4, !tbaa !34
  br i1 %exitcond163.not.4, label %.preheader.us.us.us.us.preheader, label %._crit_edge.us.us.us.us.5

._crit_edge.us.us.us.us.5:                        ; preds = %._crit_edge.us.us.us.us.4
  %i.bx = load float, ptr %gep209.5, align 4, !tbaa !34
  %i.by = fmul nsz float %7, %i.bx
  store float %i.by, ptr %gep209.5, align 4, !tbaa !34
  br i1 %exitcond163.not.5, label %.preheader.us.us.us.us.preheader, label %._crit_edge.us.us.us.us.6

._crit_edge.us.us.us.us.6:                        ; preds = %._crit_edge.us.us.us.us.5
  %i.bz = load float, ptr %gep209.6, align 4, !tbaa !34
  %i.ca = fmul nsz float %7, %i.bz
  store float %i.ca, ptr %gep209.6, align 4, !tbaa !34
  br i1 %exitcond163.not.6, label %.preheader.us.us.us.us.preheader, label %._crit_edge.us.us.us.us.7

._crit_edge.us.us.us.us.7:                        ; preds = %._crit_edge.us.us.us.us.6
  %i.cb = load float, ptr %gep209.7, align 4, !tbaa !34
  %i.cc = fmul nsz float %7, %i.cb
  store float %i.cc, ptr %gep209.7, align 4, !tbaa !34
  br label %.preheader.us.us.us.us.preheader

.preheader.us.us.us.us.preheader:                 ; preds = %._crit_edge.us.us.us.us.7, %._crit_edge.us.us.us.us.6, %._crit_edge.us.us.us.us.5, %._crit_edge.us.us.us.us.4, %._crit_edge.us.us.us.us.3, %._crit_edge.us.us.us.us.2, %._crit_edge.us.us.us.us.1, %._crit_edge.us.us.us.us
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %.preheader.us.us.us.us.preheader, %bb.y
  %.173.us.us.us.us = phi i32 [ %i.cd, %bb.y ], [ %i.d, %.preheader.us.us.us.us.preheader ] ; 2 uses
  %i.cd = sub i32 %.173.us.us.us.us, %1           ; 3 uses
  %i.ce = zext nneg i32 %.173.us.us.us.us to i64
  %i.cf = sext i32 %i.cd to i64
  %invariant.gep210 = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ce ; 8 uses
  %invariant.gep212 = getelementptr [4 x i8], ptr %i.n, i64 %i.cf ; 9 uses
  %i.cg = load float, ptr %invariant.gep210, align 4, !tbaa !34
  %i.ch = load float, ptr %invariant.gep212, align 4, !tbaa !34
  %i.ci = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.cg, float %i.ch)
  store float %i.ci, ptr %invariant.gep212, align 4, !tbaa !34
  br i1 %exitcond168.not, label %bb.y, label %bb.r

bb.r:                                             ; preds = %.preheader.us.us.us.us
  %gep211.1 = getelementptr inbounds nuw i8, ptr %invariant.gep210, i64 4
  %i.cj = load float, ptr %gep211.1, align 4, !tbaa !34
  %gep213.1 = getelementptr i8, ptr %invariant.gep212, i64 4 ; 2 uses
  %i.ck = load float, ptr %gep213.1, align 4, !tbaa !34
  %i.cl = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.cj, float %i.ck)
  store float %i.cl, ptr %gep213.1, align 4, !tbaa !34
  br i1 %exitcond168.not.1, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %gep211.2 = getelementptr inbounds nuw i8, ptr %invariant.gep210, i64 8
  %i.cm = load float, ptr %gep211.2, align 4, !tbaa !34
  %gep213.2 = getelementptr i8, ptr %invariant.gep212, i64 8 ; 2 uses
  %i.cn = load float, ptr %gep213.2, align 4, !tbaa !34
  %i.co = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.cm, float %i.cn)
  store float %i.co, ptr %gep213.2, align 4, !tbaa !34
  br i1 %exitcond168.not.2, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %gep211.3 = getelementptr inbounds nuw i8, ptr %invariant.gep210, i64 12
  %i.cp = load float, ptr %gep211.3, align 4, !tbaa !34
  %gep213.3 = getelementptr i8, ptr %invariant.gep212, i64 12 ; 2 uses
  %i.cq = load float, ptr %gep213.3, align 4, !tbaa !34
  %i.cr = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.cp, float %i.cq)
  store float %i.cr, ptr %gep213.3, align 4, !tbaa !34
  br i1 %exitcond168.not.3, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %gep211.4 = getelementptr inbounds nuw i8, ptr %invariant.gep210, i64 16
  %i.cs = load float, ptr %gep211.4, align 4, !tbaa !34
  %gep213.4 = getelementptr i8, ptr %invariant.gep212, i64 16 ; 2 uses
  %i.ct = load float, ptr %gep213.4, align 4, !tbaa !34
  %i.cu = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.cs, float %i.ct)
  store float %i.cu, ptr %gep213.4, align 4, !tbaa !34
  br i1 %exitcond168.not.4, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %gep211.5 = getelementptr inbounds nuw i8, ptr %invariant.gep210, i64 20
  %i.cv = load float, ptr %gep211.5, align 4, !tbaa !34
  %gep213.5 = getelementptr i8, ptr %invariant.gep212, i64 20 ; 2 uses
  %i.cw = load float, ptr %gep213.5, align 4, !tbaa !34
  %i.cx = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.cv, float %i.cw)
  store float %i.cx, ptr %gep213.5, align 4, !tbaa !34
  br i1 %exitcond168.not.5, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %gep211.6 = getelementptr inbounds nuw i8, ptr %invariant.gep210, i64 24
  %i.cy = load float, ptr %gep211.6, align 4, !tbaa !34
  %gep213.6 = getelementptr i8, ptr %invariant.gep212, i64 24 ; 2 uses
  %i.cz = load float, ptr %gep213.6, align 4, !tbaa !34
  %i.da = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.cy, float %i.cz)
  store float %i.da, ptr %gep213.6, align 4, !tbaa !34
  br i1 %exitcond168.not.6, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %gep211.7 = getelementptr inbounds nuw i8, ptr %invariant.gep210, i64 28
  %i.db = load float, ptr %gep211.7, align 4, !tbaa !34
  %gep213.7 = getelementptr i8, ptr %invariant.gep212, i64 28 ; 2 uses
  %i.dc = load float, ptr %gep213.7, align 4, !tbaa !34
  %i.dd = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.db, float %i.dc)
  store float %i.dd, ptr %gep213.7, align 4, !tbaa !34
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %.preheader.us.us.us.us
  %i.de = icmp sgt i32 %i.cd, 0
  br i1 %i.de, label %.preheader.us.us.us.us, label %._crit_edge74.us.us.us.us, !llvm.loop !107

._crit_edge74.us.us.us.us:                        ; preds = %bb.y
  %i.df = add nuw nsw i32 %.05975.us.us.us.us, 1  ; 2 uses
  %exitcond169.not = icmp eq i32 %i.df, %5
  br i1 %exitcond169.not, label %._crit_edge76.split.us.us.split.us.us, label %bb.b, !llvm.loop !108

._crit_edge76.split.us.us.split.us.us:            ; preds = %._crit_edge74.us.us.us.us
  %indvars.iv.next171 = add nsw i64 %indvars.iv170, %i.j ; 2 uses
  %i.dg = icmp slt i64 %indvars.iv.next171, %i.k
  br i1 %i.dg, label %.preheader67.us.us, label %._crit_edge.split, !llvm.loop !109

.preheader67.us:                                  ; preds = %.preheader67.us.preheader, %._crit_edge76.split.us.us.split
  %indvars.iv143 = phi i64 [ %i.i, %.preheader67.us.preheader ], [ %indvars.iv.next144, %._crit_edge76.split.us.us.split ] ; 2 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv143 ; 12 uses
  %invariant.gep202 = getelementptr [4 x i8], ptr %i.dh, i64 %i.l ; 9 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 12 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 20 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 28 ; 2 uses
  %gep203.1 = getelementptr i8, ptr %invariant.gep202, i64 4 ; 2 uses
  %gep203.2 = getelementptr i8, ptr %invariant.gep202, i64 8 ; 2 uses
  %gep203.3 = getelementptr i8, ptr %invariant.gep202, i64 12 ; 2 uses
  %gep203.4 = getelementptr i8, ptr %invariant.gep202, i64 16 ; 2 uses
  %gep203.5 = getelementptr i8, ptr %invariant.gep202, i64 20 ; 2 uses
  %gep203.6 = getelementptr i8, ptr %invariant.gep202, i64 24 ; 2 uses
  %gep203.7 = getelementptr i8, ptr %invariant.gep202, i64 28 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.preheader65.us.us, %.preheader67.us
  %.05975.us.us = phi i32 [ 0, %.preheader67.us ], [ %i.fx, %.preheader65.us.us ]
  %i.dp = load float, ptr %i.dh, align 4, !tbaa !34
  %i.dq = fmul nsz float %7, %i.dp
  store float %i.dq, ptr %i.dh, align 4, !tbaa !34
  br i1 %exitcond128.not, label %.preheader64.us.us.preheader, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dr = load float, ptr %i.di, align 4, !tbaa !34
  %i.ds = fmul nsz float %7, %i.dr
  store float %i.ds, ptr %i.di, align 4, !tbaa !34
  br i1 %exitcond128.not.1, label %.preheader64.us.us.preheader, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dt = load float, ptr %i.dj, align 4, !tbaa !34
  %i.du = fmul nsz float %7, %i.dt
  store float %i.du, ptr %i.dj, align 4, !tbaa !34
  br i1 %exitcond128.not.2, label %.preheader64.us.us.preheader, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dv = load float, ptr %i.dk, align 4, !tbaa !34
  %i.dw = fmul nsz float %7, %i.dv
  store float %i.dw, ptr %i.dk, align 4, !tbaa !34
  br i1 %exitcond128.not.3, label %.preheader64.us.us.preheader, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dx = load float, ptr %i.dl, align 4, !tbaa !34
  %i.dy = fmul nsz float %7, %i.dx
  store float %i.dy, ptr %i.dl, align 4, !tbaa !34
  br i1 %exitcond128.not.4, label %.preheader64.us.us.preheader, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dz = load float, ptr %i.dm, align 4, !tbaa !34
  %i.ea = fmul nsz float %7, %i.dz
  store float %i.ea, ptr %i.dm, align 4, !tbaa !34
  br i1 %exitcond128.not.5, label %.preheader64.us.us.preheader, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eb = load float, ptr %i.dn, align 4, !tbaa !34
  %i.ec = fmul nsz float %7, %i.eb
  store float %i.ec, ptr %i.dn, align 4, !tbaa !34
  br i1 %exitcond128.not.6, label %.preheader64.us.us.preheader, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ed = load float, ptr %i.do, align 4, !tbaa !34
  %i.ee = fmul nsz float %7, %i.ed
  store float %i.ee, ptr %i.do, align 4, !tbaa !34
  br label %.preheader64.us.us.preheader

.preheader64.us.us.preheader:                     ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  br label %.preheader64.us.us

.preheader64.us.us:                               ; preds = %.preheader64.us.us.preheader, %bb.ao
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %bb.ao ], [ %i.g, %.preheader64.us.us.preheader ] ; 3 uses
  %i.ef = trunc nsw i64 %indvars.iv134 to i32
  %i.eg = sub i32 %i.ef, %1
  %i.eh = sext i32 %i.eg to i64
  %invariant.gep198 = getelementptr [4 x i8], ptr %i.dh, i64 %i.eh ; 8 uses
  %invariant.gep200 = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv134 ; 9 uses
  %i.ei = load float, ptr %invariant.gep198, align 4, !tbaa !34
  %i.ej = load float, ptr %invariant.gep200, align 4, !tbaa !34
  %i.ek = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.ei, float %i.ej)
  store float %i.ek, ptr %invariant.gep200, align 4, !tbaa !34
  br i1 %exitcond133.not, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %.preheader64.us.us
  %gep199.1 = getelementptr i8, ptr %invariant.gep198, i64 4
  %i.el = load float, ptr %gep199.1, align 4, !tbaa !34
  %gep201.1 = getelementptr i8, ptr %invariant.gep200, i64 4 ; 2 uses
  %i.em = load float, ptr %gep201.1, align 4, !tbaa !34
  %i.en = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.el, float %i.em)
  store float %i.en, ptr %gep201.1, align 4, !tbaa !34
  br i1 %exitcond133.not.1, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %gep199.2 = getelementptr i8, ptr %invariant.gep198, i64 8
  %i.eo = load float, ptr %gep199.2, align 4, !tbaa !34
  %gep201.2 = getelementptr i8, ptr %invariant.gep200, i64 8 ; 2 uses
  %i.ep = load float, ptr %gep201.2, align 4, !tbaa !34
  %i.eq = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.eo, float %i.ep)
  store float %i.eq, ptr %gep201.2, align 4, !tbaa !34
  br i1 %exitcond133.not.2, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %gep199.3 = getelementptr i8, ptr %invariant.gep198, i64 12
  %i.er = load float, ptr %gep199.3, align 4, !tbaa !34
  %gep201.3 = getelementptr i8, ptr %invariant.gep200, i64 12 ; 2 uses
  %i.es = load float, ptr %gep201.3, align 4, !tbaa !34
  %i.et = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.er, float %i.es)
  store float %i.et, ptr %gep201.3, align 4, !tbaa !34
  br i1 %exitcond133.not.3, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %gep199.4 = getelementptr i8, ptr %invariant.gep198, i64 16
  %i.eu = load float, ptr %gep199.4, align 4, !tbaa !34
  %gep201.4 = getelementptr i8, ptr %invariant.gep200, i64 16 ; 2 uses
  %i.ev = load float, ptr %gep201.4, align 4, !tbaa !34
  %i.ew = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.eu, float %i.ev)
  store float %i.ew, ptr %gep201.4, align 4, !tbaa !34
  br i1 %exitcond133.not.4, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %gep199.5 = getelementptr i8, ptr %invariant.gep198, i64 20
  %i.ex = load float, ptr %gep199.5, align 4, !tbaa !34
  %gep201.5 = getelementptr i8, ptr %invariant.gep200, i64 20 ; 2 uses
  %i.ey = load float, ptr %gep201.5, align 4, !tbaa !34
  %i.ez = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.ex, float %i.ey)
  store float %i.ez, ptr %gep201.5, align 4, !tbaa !34
  br i1 %exitcond133.not.5, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %gep199.6 = getelementptr i8, ptr %invariant.gep198, i64 24
  %i.fa = load float, ptr %gep199.6, align 4, !tbaa !34
  %gep201.6 = getelementptr i8, ptr %invariant.gep200, i64 24 ; 2 uses
  %i.fb = load float, ptr %gep201.6, align 4, !tbaa !34
  %i.fc = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.fa, float %i.fb)
  store float %i.fc, ptr %gep201.6, align 4, !tbaa !34
  br i1 %exitcond133.not.6, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %gep199.7 = getelementptr i8, ptr %invariant.gep198, i64 28
  %i.fd = load float, ptr %gep199.7, align 4, !tbaa !34
  %gep201.7 = getelementptr i8, ptr %invariant.gep200, i64 28 ; 2 uses
  %i.fe = load float, ptr %gep201.7, align 4, !tbaa !34
  %i.ff = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.fd, float %i.fe)
  store float %i.ff, ptr %gep201.7, align 4, !tbaa !34
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %.preheader64.us.us
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, %i.g ; 2 uses
  %i.fg = icmp slt i64 %indvars.iv.next135, %i.h
  br i1 %i.fg, label %.preheader64.us.us, label %._crit_edge.us.us, !llvm.loop !106

._crit_edge.us.us:                                ; preds = %bb.ao
  %i.fh = load float, ptr %invariant.gep202, align 4, !tbaa !34
  %i.fi = fmul nsz float %7, %i.fh
  store float %i.fi, ptr %invariant.gep202, align 4, !tbaa !34
  br i1 %exitcond141.not, label %.preheader65.us.us, label %._crit_edge.us.us.1

._crit_edge.us.us.1:                              ; preds = %._crit_edge.us.us
  %i.fj = load float, ptr %gep203.1, align 4, !tbaa !34
  %i.fk = fmul nsz float %7, %i.fj
  store float %i.fk, ptr %gep203.1, align 4, !tbaa !34
  br i1 %exitcond141.not.1, label %.preheader65.us.us, label %._crit_edge.us.us.2

._crit_edge.us.us.2:                              ; preds = %._crit_edge.us.us.1
  %i.fl = load float, ptr %gep203.2, align 4, !tbaa !34
  %i.fm = fmul nsz float %7, %i.fl
  store float %i.fm, ptr %gep203.2, align 4, !tbaa !34
  br i1 %exitcond141.not.2, label %.preheader65.us.us, label %._crit_edge.us.us.3

._crit_edge.us.us.3:                              ; preds = %._crit_edge.us.us.2
  %i.fn = load float, ptr %gep203.3, align 4, !tbaa !34
  %i.fo = fmul nsz float %7, %i.fn
  store float %i.fo, ptr %gep203.3, align 4, !tbaa !34
  br i1 %exitcond141.not.3, label %.preheader65.us.us, label %._crit_edge.us.us.4

._crit_edge.us.us.4:                              ; preds = %._crit_edge.us.us.3
  %i.fp = load float, ptr %gep203.4, align 4, !tbaa !34
  %i.fq = fmul nsz float %7, %i.fp
  store float %i.fq, ptr %gep203.4, align 4, !tbaa !34
  br i1 %exitcond141.not.4, label %.preheader65.us.us, label %._crit_edge.us.us.5

._crit_edge.us.us.5:                              ; preds = %._crit_edge.us.us.4
  %i.fr = load float, ptr %gep203.5, align 4, !tbaa !34
  %i.fs = fmul nsz float %7, %i.fr
  store float %i.fs, ptr %gep203.5, align 4, !tbaa !34
  br i1 %exitcond141.not.5, label %.preheader65.us.us, label %._crit_edge.us.us.6

._crit_edge.us.us.6:                              ; preds = %._crit_edge.us.us.5
  %i.ft = load float, ptr %gep203.6, align 4, !tbaa !34
  %i.fu = fmul nsz float %7, %i.ft
  store float %i.fu, ptr %gep203.6, align 4, !tbaa !34
  br i1 %exitcond141.not.6, label %.preheader65.us.us, label %._crit_edge.us.us.7

._crit_edge.us.us.7:                              ; preds = %._crit_edge.us.us.6
  %i.fv = load float, ptr %gep203.7, align 4, !tbaa !34
  %i.fw = fmul nsz float %7, %i.fv
  store float %i.fw, ptr %gep203.7, align 4, !tbaa !34
  br label %.preheader65.us.us

.preheader65.us.us:                               ; preds = %._crit_edge.us.us.7, %._crit_edge.us.us.6, %._crit_edge.us.us.5, %._crit_edge.us.us.4, %._crit_edge.us.us.3, %._crit_edge.us.us.2, %._crit_edge.us.us.1, %._crit_edge.us.us
  %i.fx = add nuw nsw i32 %.05975.us.us, 1        ; 2 uses
  %exitcond142.not = icmp eq i32 %i.fx, %5
  br i1 %exitcond142.not, label %._crit_edge76.split.us.us.split, label %bb.z, !llvm.loop !108

._crit_edge76.split.us.us.split:                  ; preds = %.preheader65.us.us
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, %i.j ; 2 uses
  %i.fy = icmp slt i64 %indvars.iv.next144, %i.k
  br i1 %i.fy, label %.preheader67.us, label %._crit_edge.split, !llvm.loop !109

.preheader67.lr.ph.split.split:                   ; preds = %.preheader67.lr.ph.split
  %i.fz = sext i32 %3 to i64                      ; 2 uses
  %i.ga = zext nneg i32 %8 to i64                 ; 2 uses
  %i.gb = sext i32 %4 to i64                      ; 2 uses
  br i1 %i.e, label %.preheader67.us90.preheader, label %.preheader67.preheader

.preheader67.preheader:                           ; preds = %.preheader67.lr.ph.split.split
  %i.gc = sext i32 %i.d to i64
  %exitcond.not = icmp eq i32 %8, 1
  %exitcond.not.1 = icmp eq i32 %8, 2
  %exitcond.not.2 = icmp eq i32 %8, 3
  %exitcond.not.3 = icmp eq i32 %8, 4
  %exitcond.not.4 = icmp eq i32 %8, 5
  %exitcond.not.5 = icmp eq i32 %8, 6
  %exitcond.not.6 = icmp eq i32 %8, 7
  %exitcond100.not = icmp eq i32 %8, 1
  %exitcond100.not.1 = icmp eq i32 %8, 2
  %exitcond100.not.2 = icmp eq i32 %8, 3
  %exitcond100.not.3 = icmp eq i32 %8, 4
  %exitcond100.not.4 = icmp eq i32 %8, 5
  %exitcond100.not.5 = icmp eq i32 %8, 6
  %exitcond100.not.6 = icmp eq i32 %8, 7
  br label %.preheader67

.preheader67.us90.preheader:                      ; preds = %.preheader67.lr.ph.split.split
  %i.gd = zext nneg i32 %i.d to i64
  %exitcond109.not = icmp eq i32 %8, 1
  %exitcond109.not.1 = icmp eq i32 %8, 2
  %exitcond109.not.2 = icmp eq i32 %8, 3
  %exitcond109.not.3 = icmp eq i32 %8, 4
  %exitcond109.not.4 = icmp eq i32 %8, 5
  %exitcond109.not.5 = icmp eq i32 %8, 6
  %exitcond109.not.6 = icmp eq i32 %8, 7
  %exitcond114.not = icmp eq i32 %8, 1
  %exitcond114.not.1 = icmp eq i32 %8, 2
  %exitcond114.not.2 = icmp eq i32 %8, 3
  %exitcond114.not.3 = icmp eq i32 %8, 4
  %exitcond114.not.4 = icmp eq i32 %8, 5
  %exitcond114.not.5 = icmp eq i32 %8, 6
  %exitcond114.not.6 = icmp eq i32 %8, 7
  %exitcond119.not = icmp eq i32 %8, 1
  %exitcond119.not.1 = icmp eq i32 %8, 2
  %exitcond119.not.2 = icmp eq i32 %8, 3
  %exitcond119.not.3 = icmp eq i32 %8, 4
  %exitcond119.not.4 = icmp eq i32 %8, 5
  %exitcond119.not.5 = icmp eq i32 %8, 6
  %exitcond119.not.6 = icmp eq i32 %8, 7
  br label %.preheader67.us90

.preheader67.us90:                                ; preds = %.preheader67.us90.preheader, %._crit_edge76.split.split.us.us
  %indvars.iv121 = phi i64 [ %i.fz, %.preheader67.us90.preheader ], [ %indvars.iv.next122, %._crit_edge76.split.split.us.us ] ; 2 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv121 ; 12 uses
  %invariant.gep192 = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gd ; 9 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 12 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 20 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 24 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 28 ; 2 uses
  %gep193.1 = getelementptr inbounds nuw i8, ptr %invariant.gep192, i64 4 ; 2 uses
  %gep193.2 = getelementptr inbounds nuw i8, ptr %invariant.gep192, i64 8 ; 2 uses
  %gep193.3 = getelementptr inbounds nuw i8, ptr %invariant.gep192, i64 12 ; 2 uses
  %gep193.4 = getelementptr inbounds nuw i8, ptr %invariant.gep192, i64 16 ; 2 uses
  %gep193.5 = getelementptr inbounds nuw i8, ptr %invariant.gep192, i64 20 ; 2 uses
  %gep193.6 = getelementptr inbounds nuw i8, ptr %invariant.gep192, i64 24 ; 2 uses
  %gep193.7 = getelementptr inbounds nuw i8, ptr %invariant.gep192, i64 28 ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge74.us86.us, %.preheader67.us90
  %.05975.us77.us = phi i32 [ 0, %.preheader67.us90 ], [ %i.iu, %._crit_edge74.us86.us ]
  %i.gm = load float, ptr %i.ge, align 4, !tbaa !34
  %i.gn = fmul nsz float %7, %i.gm
  store float %i.gn, ptr %i.ge, align 4, !tbaa !34
  br i1 %exitcond109.not, label %.preheader66.us79.us, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.go = load float, ptr %i.gf, align 4, !tbaa !34
  %i.gp = fmul nsz float %7, %i.go
  store float %i.gp, ptr %i.gf, align 4, !tbaa !34
  br i1 %exitcond109.not.1, label %.preheader66.us79.us, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gq = load float, ptr %i.gg, align 4, !tbaa !34
  %i.gr = fmul nsz float %7, %i.gq
  store float %i.gr, ptr %i.gg, align 4, !tbaa !34
  br i1 %exitcond109.not.2, label %.preheader66.us79.us, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gs = load float, ptr %i.gh, align 4, !tbaa !34
  %i.gt = fmul nsz float %7, %i.gs
  store float %i.gt, ptr %i.gh, align 4, !tbaa !34
  br i1 %exitcond109.not.3, label %.preheader66.us79.us, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gu = load float, ptr %i.gi, align 4, !tbaa !34
  %i.gv = fmul nsz float %7, %i.gu
  store float %i.gv, ptr %i.gi, align 4, !tbaa !34
  br i1 %exitcond109.not.4, label %.preheader66.us79.us, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gw = load float, ptr %i.gj, align 4, !tbaa !34
  %i.gx = fmul nsz float %7, %i.gw
  store float %i.gx, ptr %i.gj, align 4, !tbaa !34
  br i1 %exitcond109.not.5, label %.preheader66.us79.us, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gy = load float, ptr %i.gk, align 4, !tbaa !34
  %i.gz = fmul nsz float %7, %i.gy
  store float %i.gz, ptr %i.gk, align 4, !tbaa !34
  br i1 %exitcond109.not.6, label %.preheader66.us79.us, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ha = load float, ptr %i.gl, align 4, !tbaa !34
  %i.hb = fmul nsz float %7, %i.ha
  store float %i.hb, ptr %i.gl, align 4, !tbaa !34
  br label %.preheader66.us79.us

.preheader66.us79.us:                             ; preds = %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw
  %i.hc = load float, ptr %invariant.gep192, align 4, !tbaa !34
  %i.hd = fmul nsz float %7, %i.hc
  store float %i.hd, ptr %invariant.gep192, align 4, !tbaa !34
  br i1 %exitcond114.not, label %.preheader.us83.us.preheader, label %.preheader66.us79.us.1

.preheader66.us79.us.1:                           ; preds = %.preheader66.us79.us
  %i.he = load float, ptr %gep193.1, align 4, !tbaa !34
  %i.hf = fmul nsz float %7, %i.he
  store float %i.hf, ptr %gep193.1, align 4, !tbaa !34
  br i1 %exitcond114.not.1, label %.preheader.us83.us.preheader, label %.preheader66.us79.us.2

.preheader66.us79.us.2:                           ; preds = %.preheader66.us79.us.1
  %i.hg = load float, ptr %gep193.2, align 4, !tbaa !34
  %i.hh = fmul nsz float %7, %i.hg
  store float %i.hh, ptr %gep193.2, align 4, !tbaa !34
  br i1 %exitcond114.not.2, label %.preheader.us83.us.preheader, label %.preheader66.us79.us.3

.preheader66.us79.us.3:                           ; preds = %.preheader66.us79.us.2
  %i.hi = load float, ptr %gep193.3, align 4, !tbaa !34
  %i.hj = fmul nsz float %7, %i.hi
  store float %i.hj, ptr %gep193.3, align 4, !tbaa !34
  br i1 %exitcond114.not.3, label %.preheader.us83.us.preheader, label %.preheader66.us79.us.4

.preheader66.us79.us.4:                           ; preds = %.preheader66.us79.us.3
  %i.hk = load float, ptr %gep193.4, align 4, !tbaa !34
  %i.hl = fmul nsz float %7, %i.hk
  store float %i.hl, ptr %gep193.4, align 4, !tbaa !34
  br i1 %exitcond114.not.4, label %.preheader.us83.us.preheader, label %.preheader66.us79.us.5

.preheader66.us79.us.5:                           ; preds = %.preheader66.us79.us.4
  %i.hm = load float, ptr %gep193.5, align 4, !tbaa !34
  %i.hn = fmul nsz float %7, %i.hm
  store float %i.hn, ptr %gep193.5, align 4, !tbaa !34
  br i1 %exitcond114.not.5, label %.preheader.us83.us.preheader, label %.preheader66.us79.us.6

.preheader66.us79.us.6:                           ; preds = %.preheader66.us79.us.5
  %i.ho = load float, ptr %gep193.6, align 4, !tbaa !34
  %i.hp = fmul nsz float %7, %i.ho
  store float %i.hp, ptr %gep193.6, align 4, !tbaa !34
  br i1 %exitcond114.not.6, label %.preheader.us83.us.preheader, label %.preheader66.us79.us.7

.preheader66.us79.us.7:                           ; preds = %.preheader66.us79.us.6
  %i.hq = load float, ptr %gep193.7, align 4, !tbaa !34
  %i.hr = fmul nsz float %7, %i.hq
  store float %i.hr, ptr %gep193.7, align 4, !tbaa !34
  br label %.preheader.us83.us.preheader

.preheader.us83.us.preheader:                     ; preds = %.preheader66.us79.us.7, %.preheader66.us79.us.6, %.preheader66.us79.us.5, %.preheader66.us79.us.4, %.preheader66.us79.us.3, %.preheader66.us79.us.2, %.preheader66.us79.us.1, %.preheader66.us79.us
  br label %.preheader.us83.us

.preheader.us83.us:                               ; preds = %.preheader.us83.us.preheader, %bb.be
  %.173.us84.us = phi i32 [ %i.hs, %bb.be ], [ %i.d, %.preheader.us83.us.preheader ] ; 2 uses
  %i.hs = sub i32 %.173.us84.us, %1               ; 3 uses
  %i.ht = zext nneg i32 %.173.us84.us to i64
  %i.hu = sext i32 %i.hs to i64
  %invariant.gep194 = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.ht ; 8 uses
  %invariant.gep196 = getelementptr [4 x i8], ptr %i.ge, i64 %i.hu ; 9 uses
  %i.hv = load float, ptr %invariant.gep194, align 4, !tbaa !34
  %i.hw = load float, ptr %invariant.gep196, align 4, !tbaa !34
  %i.hx = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.hv, float %i.hw)
  store float %i.hx, ptr %invariant.gep196, align 4, !tbaa !34
  br i1 %exitcond119.not, label %bb.be, label %bb.ax

bb.ax:                                            ; preds = %.preheader.us83.us
  %gep195.1 = getelementptr inbounds nuw i8, ptr %invariant.gep194, i64 4
  %i.hy = load float, ptr %gep195.1, align 4, !tbaa !34
  %gep197.1 = getelementptr i8, ptr %invariant.gep196, i64 4 ; 2 uses
  %i.hz = load float, ptr %gep197.1, align 4, !tbaa !34
  %i.ia = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.hy, float %i.hz)
  store float %i.ia, ptr %gep197.1, align 4, !tbaa !34
  br i1 %exitcond119.not.1, label %bb.be, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %gep195.2 = getelementptr inbounds nuw i8, ptr %invariant.gep194, i64 8
  %i.ib = load float, ptr %gep195.2, align 4, !tbaa !34
  %gep197.2 = getelementptr i8, ptr %invariant.gep196, i64 8 ; 2 uses
  %i.ic = load float, ptr %gep197.2, align 4, !tbaa !34
  %i.id = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.ib, float %i.ic)
  store float %i.id, ptr %gep197.2, align 4, !tbaa !34
  br i1 %exitcond119.not.2, label %bb.be, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %gep195.3 = getelementptr inbounds nuw i8, ptr %invariant.gep194, i64 12
  %i.ie = load float, ptr %gep195.3, align 4, !tbaa !34
  %gep197.3 = getelementptr i8, ptr %invariant.gep196, i64 12 ; 2 uses
  %i.if = load float, ptr %gep197.3, align 4, !tbaa !34
  %i.ig = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.ie, float %i.if)
  store float %i.ig, ptr %gep197.3, align 4, !tbaa !34
  br i1 %exitcond119.not.3, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %gep195.4 = getelementptr inbounds nuw i8, ptr %invariant.gep194, i64 16
  %i.ih = load float, ptr %gep195.4, align 4, !tbaa !34
  %gep197.4 = getelementptr i8, ptr %invariant.gep196, i64 16 ; 2 uses
  %i.ii = load float, ptr %gep197.4, align 4, !tbaa !34
  %i.ij = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.ih, float %i.ii)
  store float %i.ij, ptr %gep197.4, align 4, !tbaa !34
  br i1 %exitcond119.not.4, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %gep195.5 = getelementptr inbounds nuw i8, ptr %invariant.gep194, i64 20
  %i.ik = load float, ptr %gep195.5, align 4, !tbaa !34
  %gep197.5 = getelementptr i8, ptr %invariant.gep196, i64 20 ; 2 uses
  %i.il = load float, ptr %gep197.5, align 4, !tbaa !34
  %i.im = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.ik, float %i.il)
  store float %i.im, ptr %gep197.5, align 4, !tbaa !34
  br i1 %exitcond119.not.5, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %gep195.6 = getelementptr inbounds nuw i8, ptr %invariant.gep194, i64 24
  %i.in = load float, ptr %gep195.6, align 4, !tbaa !34
  %gep197.6 = getelementptr i8, ptr %invariant.gep196, i64 24 ; 2 uses
  %i.io = load float, ptr %gep197.6, align 4, !tbaa !34
  %i.ip = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.in, float %i.io)
  store float %i.ip, ptr %gep197.6, align 4, !tbaa !34
  br i1 %exitcond119.not.6, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %gep195.7 = getelementptr inbounds nuw i8, ptr %invariant.gep194, i64 28
  %i.iq = load float, ptr %gep195.7, align 4, !tbaa !34
  %gep197.7 = getelementptr i8, ptr %invariant.gep196, i64 28 ; 2 uses
  %i.ir = load float, ptr %gep197.7, align 4, !tbaa !34
  %i.is = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.iq, float %i.ir)
  store float %i.is, ptr %gep197.7, align 4, !tbaa !34
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %.preheader.us83.us
  %i.it = icmp sgt i32 %i.hs, 0
  br i1 %i.it, label %.preheader.us83.us, label %._crit_edge74.us86.us, !llvm.loop !107

._crit_edge74.us86.us:                            ; preds = %bb.be
  %i.iu = add nuw nsw i32 %.05975.us77.us, 1      ; 2 uses
  %exitcond120.not = icmp eq i32 %i.iu, %5
  br i1 %exitcond120.not, label %._crit_edge76.split.split.us.us, label %bb.ap, !llvm.loop !108

._crit_edge76.split.split.us.us:                  ; preds = %._crit_edge74.us86.us
  %indvars.iv.next122 = add nsw i64 %indvars.iv121, %i.ga ; 2 uses
  %i.iv = icmp slt i64 %indvars.iv.next122, %i.gb
  br i1 %i.iv, label %.preheader67.us90, label %._crit_edge.split, !llvm.loop !109

.preheader67:                                     ; preds = %.preheader67.preheader, %._crit_edge76.split.split
  %indvars.iv102 = phi i64 [ %i.fz, %.preheader67.preheader ], [ %indvars.iv.next103, %._crit_edge76.split.split ] ; 2 uses
  %i.iw = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv102 ; 10 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.iw, i64 %i.gc ; 9 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 4 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 12 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 16 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 20 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 24 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iw, i64 28 ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 4 ; 2 uses
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 8 ; 2 uses
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 12 ; 2 uses
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 16 ; 2 uses
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 20 ; 2 uses
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 24 ; 2 uses
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 28 ; 2 uses
  br label %bb.bf

._crit_edge.split:                                ; preds = %._crit_edge76.split.split, %._crit_edge76.split.split.us.us, %._crit_edge76.split.us.us.split, %._crit_edge76.split.us.us.split.us.us, %.preheader67.lr.ph, %bb.a
  ret void

._crit_edge76.split.split:                        ; preds = %.preheader65
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, %i.ga ; 2 uses
  %i.je = icmp slt i64 %indvars.iv.next103, %i.gb
  br i1 %i.je, label %.preheader67, label %._crit_edge.split, !llvm.loop !109

bb.bf:                                            ; preds = %.preheader67, %.preheader65
  %.05975 = phi i32 [ 0, %.preheader67 ], [ %i.jv, %.preheader65 ]
  %i.jf = load float, ptr %i.iw, align 4, !tbaa !34
  %i.jg = fmul nsz float %7, %i.jf
  store float %i.jg, ptr %i.iw, align 4, !tbaa !34
  br i1 %exitcond.not, label %.preheader66, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jh = load float, ptr %i.ix, align 4, !tbaa !34
  %i.ji = fmul nsz float %7, %i.jh
  store float %i.ji, ptr %i.ix, align 4, !tbaa !34
  br i1 %exitcond.not.1, label %.preheader66, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jj = load float, ptr %i.iy, align 4, !tbaa !34
  %i.jk = fmul nsz float %7, %i.jj
  store float %i.jk, ptr %i.iy, align 4, !tbaa !34
  br i1 %exitcond.not.2, label %.preheader66, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jl = load float, ptr %i.iz, align 4, !tbaa !34
  %i.jm = fmul nsz float %7, %i.jl
  store float %i.jm, ptr %i.iz, align 4, !tbaa !34
  br i1 %exitcond.not.3, label %.preheader66, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jn = load float, ptr %i.ja, align 4, !tbaa !34
  %i.jo = fmul nsz float %7, %i.jn
  store float %i.jo, ptr %i.ja, align 4, !tbaa !34
  br i1 %exitcond.not.4, label %.preheader66, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jp = load float, ptr %i.jb, align 4, !tbaa !34
  %i.jq = fmul nsz float %7, %i.jp
  store float %i.jq, ptr %i.jb, align 4, !tbaa !34
  br i1 %exitcond.not.5, label %.preheader66, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jr = load float, ptr %i.jc, align 4, !tbaa !34
  %i.js = fmul nsz float %7, %i.jr
  store float %i.js, ptr %i.jc, align 4, !tbaa !34
  br i1 %exitcond.not.6, label %.preheader66, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jt = load float, ptr %i.jd, align 4, !tbaa !34
  %i.ju = fmul nsz float %7, %i.jt
  store float %i.ju, ptr %i.jd, align 4, !tbaa !34
  br label %.preheader66

.preheader65:                                     ; preds = %.preheader66.7, %.preheader66.6, %.preheader66.5, %.preheader66.4, %.preheader66.3, %.preheader66.2, %.preheader66.1, %.preheader66
  %i.jv = add nuw nsw i32 %.05975, 1              ; 2 uses
  %exitcond101.not = icmp eq i32 %i.jv, %5
  br i1 %exitcond101.not, label %._crit_edge76.split.split, label %bb.bf, !llvm.loop !108

.preheader66:                                     ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm
  %i.jw = load float, ptr %invariant.gep, align 4, !tbaa !34
  %i.jx = fmul nsz float %7, %i.jw
  store float %i.jx, ptr %invariant.gep, align 4, !tbaa !34
  br i1 %exitcond100.not, label %.preheader65, label %.preheader66.1

.preheader66.1:                                   ; preds = %.preheader66
  %i.jy = load float, ptr %gep.1, align 4, !tbaa !34
  %i.jz = fmul nsz float %7, %i.jy
  store float %i.jz, ptr %gep.1, align 4, !tbaa !34
  br i1 %exitcond100.not.1, label %.preheader65, label %.preheader66.2

.preheader66.2:                                   ; preds = %.preheader66.1
  %i.ka = load float, ptr %gep.2, align 4, !tbaa !34
  %i.kb = fmul nsz float %7, %i.ka
  store float %i.kb, ptr %gep.2, align 4, !tbaa !34
  br i1 %exitcond100.not.2, label %.preheader65, label %.preheader66.3

.preheader66.3:                                   ; preds = %.preheader66.2
  %i.kc = load float, ptr %gep.3, align 4, !tbaa !34
  %i.kd = fmul nsz float %7, %i.kc
  store float %i.kd, ptr %gep.3, align 4, !tbaa !34
  br i1 %exitcond100.not.3, label %.preheader65, label %.preheader66.4

.preheader66.4:                                   ; preds = %.preheader66.3
  %i.ke = load float, ptr %gep.4, align 4, !tbaa !34
  %i.kf = fmul nsz float %7, %i.ke
  store float %i.kf, ptr %gep.4, align 4, !tbaa !34
  br i1 %exitcond100.not.4, label %.preheader65, label %.preheader66.5

.preheader66.5:                                   ; preds = %.preheader66.4
  %i.kg = load float, ptr %gep.5, align 4, !tbaa !34
  %i.kh = fmul nsz float %7, %i.kg
  store float %i.kh, ptr %gep.5, align 4, !tbaa !34
  br i1 %exitcond100.not.5, label %.preheader65, label %.preheader66.6

.preheader66.6:                                   ; preds = %.preheader66.5
  %i.ki = load float, ptr %gep.6, align 4, !tbaa !34
  %i.kj = fmul nsz float %7, %i.ki
  store float %i.kj, ptr %gep.6, align 4, !tbaa !34
  br i1 %exitcond100.not.6, label %.preheader65, label %.preheader66.7

.preheader66.7:                                   ; preds = %.preheader66.6
  %i.kk = load float, ptr %gep.7, align 4, !tbaa !34
  %i.kl = fmul nsz float %7, %i.kk
  store float %i.kl, ptr %gep.7, align 4, !tbaa !34
  br label %.preheader65
}

declare ptr @av_default_item_name(ptr noundef) #1

declare void @av_freep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!21 = !{!"AVRational", !6, i64 0, !6, i64 4}
!22 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!23 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!24 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!25 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!26 = !{!"AVFilterFormatsConfig", !24, i64 0, !24, i64 8, !25, i64 16, !24, i64 24, !24, i64 32, !24, i64 40}
!27 = !{!"AVFilterLink", !20, i64 0, !13, i64 8, !20, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !21, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !22, i64 72, !21, i64 96, !23, i64 104, !6, i64 112, !6, i64 116, !26, i64 120, !26, i64 168}
!28 = !{!27, !20, i64 16}
!29 = !{!"float", !5, i64 0}
!30 = !{!"p1 float", !9, i64 0}
!31 = !{!"GBlurContext", !10, i64 0, !29, i64 8, !29, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !5, i64 36, !5, i64 52, !30, i64 72, !30, i64 80, !29, i64 88, !29, i64 92, !29, i64 96, !29, i64 100, !29, i64 104, !29, i64 108, !6, i64 112, !9, i64 120, !9, i64 128, !9, i64 136}
!32 = !{!31, !29, i64 8}
!33 = !{!31, !6, i64 16}
!34 = !{!29, !29, i64 0}
!35 = !{!31, !29, i64 12}
!36 = !{!27, !6, i64 40}
!37 = !{!27, !6, i64 44}
!38 = !{!31, !6, i64 112}
!39 = !{!6, !6, i64 0}
!40 = !{!31, !30, i64 72}
!41 = !{!31, !6, i64 28}
!42 = !{!31, !6, i64 24}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!"ThreadData", !6, i64 0, !6, i64 4}
!48 = !{!47, !6, i64 4}
!49 = !{!47, !6, i64 0}
!50 = !{!31, !30, i64 80}
!51 = !{!31, !9, i64 120}
!52 = !{!31, !9, i64 128}
!53 = !{!31, !9, i64 136}
!54 = distinct !{!54, !"LVerDomain"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !43, !44, !45}
!58 = distinct !{!58, !46}
!59 = distinct !{!59, !43, !44}
!60 = distinct !{!60, !43}
!61 = distinct !{!61, !43, !44, !45}
!62 = distinct !{!62, !43, !45, !44}
!63 = distinct !{!63, !43}
!64 = distinct !{!64, !43}
!65 = distinct !{!65, !46}
!66 = distinct !{!66, !43}
!67 = distinct !{!67, !43}
!68 = distinct !{!68, !46}
!69 = distinct !{!69, !43}
!70 = distinct !{!70, !43}
!71 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!18, !15, i64 56}
!74 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!12, !12, i64 0}
!77 = !{!31, !6, i64 20}
!78 = !{!5, !5, i64 0}
!79 = !{!55}
!80 = !{!56}
!81 = !{!"short", !5, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!27, !6, i64 36}
!84 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!85 = !{!84, !6, i64 16}
!86 = !{!"long", !5, i64 0}
!87 = !{!"AVPixFmtDescriptor", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !86, i64 16, !5, i64 24, !12, i64 104}
!88 = !{!87, !86, i64 16}
!89 = !{!87, !5, i64 9}
!90 = !{!87, !5, i64 10}
!91 = !{!31, !29, i64 88}
!92 = !{!31, !29, i64 104}
!93 = !{!31, !6, i64 32}
!94 = !{!31, !29, i64 92}
!95 = !{!31, !29, i64 108}
!96 = !{!31, !29, i64 96}
!97 = !{!31, !29, i64 100}
!98 = distinct !{!98, !43}
!99 = distinct !{!99, !46}
!100 = distinct !{!100, !46}
!101 = distinct !{!101, !43}
!102 = distinct !{!102, !43}
!103 = distinct !{!103, !43}
!104 = distinct !{!104, !43, !44, !45}
!105 = distinct !{!105, !43, !45, !44}
!106 = distinct !{!106, !43}
!107 = distinct !{!107, !43}
!108 = distinct !{!108, !43}
!109 = distinct !{!109, !43}
end_hunk_0
