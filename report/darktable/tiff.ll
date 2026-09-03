Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/tiff?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@write_image:bb.a
.lr.ph833:                                        ; preds = %bb.cv
  %xtraiter1163 = and i64 %i.qi, 1
  %i.vn = icmp eq i64 %i.qi, 1                    ; 0 uses
  %unroll_iter1167 = and i64 %i.qi, -2
  %lcmp.mod1165.not = icmp eq i64 %xtraiter1163, 0
  %lcmp.mod1166 = trunc i64 %i.qi to i1
  br label %bb.cx

bb.cw:                                            ; preds = %._crit_edge830
  %indvars.iv.next973 = add nuw i64 %indvars.iv972, 1 ; 2 uses
  %exitcond975.not = icmp eq i64 %indvars.iv.next973, %.0468
  br i1 %exitcond975.not, label %.thread644, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph833, %bb.cw
  %indvars.iv972 = phi i64 [ 0, %.lr.ph833 ], [ %indvars.iv.next973, %bb.cw ] ; 3 uses
  %i.vo = mul nsw i64 %indvars.iv972, %i.qi
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %.2526, i64 %i.vo ; 3 uses
  switch i64 %i.qi, label %.preheader [
    i64 0, label %._crit_edge830
    i64 1, label %.preheader.epil.preheader
  ]

.preheader:                                       ; preds = %bb.cx, %._crit_edge827.1
  %indvars.iv968 = phi i64 [ %indvars.iv.next969.1, %._crit_edge827.1 ], [ 0, %bb.cx ] ; 3 uses
  %.0453828 = phi ptr [ %i.wt, %._crit_edge827.1 ], [ %.2532, %bb.cx ] ; 2 uses
  %niter1168 = phi i64 [ %niter1168.next.1, %._crit_edge827.1 ], [ 0, %bb.cx ]
  %.0..0..0..0.243824 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %.not857 = icmp eq i16 %.0..0..0..0.243824, 0
  br i1 %.not857, label %._crit_edge827, label %.lr.ph826

.lr.ph826:                                        ; preds = %.preheader
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv968
  br label %bb.dg

._crit_edge830.loopexit.unr-lcssa:                ; preds = %._crit_edge827.1
  br i1 %lcmp.mod1165.not, label %._crit_edge830, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %bb.cx, %._crit_edge830.loopexit.unr-lcssa
  %indvars.iv968.epil.init = phi i64 [ 0, %bb.cx ], [ %indvars.iv.next969.1, %._crit_edge830.loopexit.unr-lcssa ]
  %.0453828.epil.init = phi ptr [ %.2532, %bb.cx ], [ %i.wt, %._crit_edge830.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1166)
  %.0..0..0..0.243824.epil = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %.not857.epil = icmp eq i16 %.0..0..0..0.243824.epil, 0
  br i1 %.not857.epil, label %._crit_edge827.epil, label %.lr.ph826.epil

.lr.ph826.epil:                                   ; preds = %.preheader.epil.preheader
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv968.epil.init
  br label %bb.cy

bb.cy:                                            ; preds = %bb.db, %.lr.ph826.epil
  %indvars.iv965.epil = phi i64 [ 0, %.lr.ph826.epil ], [ %indvars.iv.next966.epil, %bb.db ] ; 2 uses
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !106 ; 3 uses
  %i.vt = fcmp reassoc nsz arcp contract afn ult float %i.vs, 0.000000e+00
  br i1 %i.vt, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.vu = fcmp reassoc nsz arcp contract afn ugt float %i.vs, 1.000000e+00
  br i1 %i.vu, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.vv = fmul reassoc nnan nsz arcp contract afn float %i.vs, 2.550000e+02
  %i.vw = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.vv)
  %i.vx = fptoui float %i.vw to i8
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cy
  %i.vy = phi i8 [ -1, %bb.cz ], [ %i.vx, %bb.da ], [ 0, %bb.cy ]
  %i.vz = getelementptr inbounds nuw i8, ptr %.0453828.epil.init, i64 %indvars.iv965.epil
  store i8 %i.vy, ptr %i.vz, align 1, !tbaa !107
  %indvars.iv.next966.epil = add nuw nsw i64 %indvars.iv965.epil, 1 ; 2 uses
  %.0..0..0..0.243.epil = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.wa = zext i16 %.0..0..0..0.243.epil to i64
  %i.wb = icmp samesign ult i64 %indvars.iv.next966.epil, %i.wa
  br i1 %i.wb, label %bb.cy, label %._crit_edge827.epil

._crit_edge827.epil:                              ; preds = %bb.db, %.preheader.epil.preheader
  %.0..0..0..0.244.epil = load volatile i16, ptr %i.c, align 2, !tbaa !103 ; 0 uses
  br label %._crit_edge830

._crit_edge830:                                   ; preds = %._crit_edge827.epil, %._crit_edge830.loopexit.unr-lcssa, %bb.cx
  %i.wc = trunc nuw nsw i64 %indvars.iv972 to i32
  %i.wd = call i32 @TIFFWriteScanline(ptr noundef %i.pq, ptr noundef %.2532, i32 noundef %i.wc, i16 noundef zeroext 0) #15
  %.not608 = icmp eq i32 %i.wd, -1
  br i1 %.not608, label %.loopexit1004, label %bb.cw

._crit_edge827:                                   ; preds = %bb.dj, %.preheader
  %.0..0..0..0.244 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.we = zext i16 %.0..0..0..0.244 to i64
  %i.wf = getelementptr inbounds nuw i8, ptr %.0453828, i64 %i.we ; 2 uses
  %.0..0..0..0.243824.1 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %.not857.1 = icmp eq i16 %.0..0..0..0.243824.1, 0
  br i1 %.not857.1, label %._crit_edge827.1, label %.lr.ph826.1

.lr.ph826.1:                                      ; preds = %._crit_edge827
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv968
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 4
  br label %bb.dc

bb.dc:                                            ; preds = %bb.df, %.lr.ph826.1
  %indvars.iv965.1 = phi i64 [ 0, %.lr.ph826.1 ], [ %indvars.iv.next966.1, %bb.df ] ; 2 uses
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !106 ; 3 uses
  %i.wj = fcmp reassoc nsz arcp contract afn ult float %i.wi, 0.000000e+00
  br i1 %i.wj, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.wk = fcmp reassoc nsz arcp contract afn ugt float %i.wi, 1.000000e+00
  br i1 %i.wk, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.wl = fmul reassoc nnan nsz arcp contract afn float %i.wi, 2.550000e+02
  %i.wm = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.wl)
  %i.wn = fptoui float %i.wm to i8
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %i.wo = phi i8 [ -1, %bb.dd ], [ %i.wn, %bb.de ], [ 0, %bb.dc ]
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wf, i64 %indvars.iv965.1
  store i8 %i.wo, ptr %i.wp, align 1, !tbaa !107
  %indvars.iv.next966.1 = add nuw nsw i64 %indvars.iv965.1, 1 ; 2 uses
  %.0..0..0..0.243.1 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.wq = zext i16 %.0..0..0..0.243.1 to i64
  %i.wr = icmp samesign ult i64 %indvars.iv.next966.1, %i.wq
  br i1 %i.wr, label %bb.dc, label %._crit_edge827.1

._crit_edge827.1:                                 ; preds = %bb.df, %._crit_edge827
  %indvars.iv.next969.1 = add nuw i64 %indvars.iv968, 2 ; 2 uses
  %.0..0..0..0.244.1 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.ws = zext i16 %.0..0..0..0.244.1 to i64
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wf, i64 %i.ws ; 2 uses
  %niter1168.next.1 = add i64 %niter1168, 2       ; 2 uses
  %niter1168.ncmp.1 = icmp eq i64 %niter1168.next.1, %unroll_iter1167
  br i1 %niter1168.ncmp.1, label %._crit_edge830.loopexit.unr-lcssa, label %.preheader

bb.dg:                                            ; preds = %.lr.ph826, %bb.dj
  %indvars.iv965 = phi i64 [ 0, %.lr.ph826 ], [ %indvars.iv.next966, %bb.dj ] ; 2 uses
  %i.wu = load float, ptr %i.vq, align 4, !tbaa !106 ; 3 uses
  %i.wv = fcmp reassoc nsz arcp contract afn ult float %i.wu, 0.000000e+00
  br i1 %i.wv, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ww = fcmp reassoc nsz arcp contract afn ugt float %i.wu, 1.000000e+00
  br i1 %i.ww, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.wx = fmul reassoc nnan nsz arcp contract afn float %i.wu, 2.550000e+02
  %i.wy = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.wx)
  %i.wz = fptoui float %i.wy to i8
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dg, %bb.di, %bb.dh
  %i.xa = phi i8 [ -1, %bb.dh ], [ %i.wz, %bb.di ], [ 0, %bb.dg ]
  %i.xb = getelementptr inbounds nuw i8, ptr %.0453828, i64 %indvars.iv965
  store i8 %i.xa, ptr %i.xb, align 1, !tbaa !107
  %indvars.iv.next966 = add nuw nsw i64 %indvars.iv965, 1 ; 2 uses
  %.0..0..0..0.243 = load volatile i16, ptr %i.c, align 2, !tbaa !103
  %i.xc = zext i16 %.0..0..0..0.243 to i64
  %i.xd = icmp samesign ult i64 %indvars.iv.next966, %i.xc
  br i1 %i.xd, label %bb.dg, label %._crit_edge827

.thread644:                                       ; preds = %bb.co, %bb.ct, %bb.ci, %bb.cw, %.preheader717.a, %.preheader714, %.preheader711, %bb.cv
  %i.xe = add i16 %.11089, 1                      ; 3 uses
  %i.xf = zext i16 %i.xe to i32
  %i.xg = icmp samesign ugt i32 %.1503627630, %i.xf
  br i1 %i.xg, label %bb.dk, label %.loopexit

bb.dk:                                            ; preds = %.thread644
  %i.xh = call i32 @TIFFWriteDirectory(ptr noundef %i.pq) #15 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.thread644, %bb.dk
  %i.xi = call i32 @g_hash_table_iter_next(ptr noundef nonnull %12, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #15
  %.not598 = icmp eq i32 %i.xi, 0
  br i1 %.not598, label %._crit_edge1092, label %.lr.ph1091

._crit_edge1092:                                  ; preds = %.loopexit, %bb.bs
  %.1531.lcssa = phi ptr [ %.0530836, %bb.bs ], [ %.2532, %.loopexit ] ; 2 uses
  %.1525.lcssa = phi ptr [ %.0524837, %bb.bs ], [ %.2526, %.loopexit ] ; 2 uses
  %.1.lcssa = phi i16 [ %.0471839, %bb.bs ], [ %i.xe, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.xj = getelementptr inbounds nuw i8, ptr %.0470840, i64 8
  %.0470 = load ptr, ptr %i.xj, align 8, !tbaa !84 ; 2 uses
  %.not597 = icmp eq ptr %.0470, null
  br i1 %.not597, label %.thread693.sink.split, label %bb.bs

.loopexit1004:                                    ; preds = %._crit_edge799, %._crit_edge812, %._crit_edge821, %._crit_edge830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %.thread693.sink.split

.thread693.sink.split:                            ; preds = %._crit_edge1092, %bb.br, %.loopexit1004
  %.32703.ph = phi i32 [ 1, %.loopexit1004 ], [ 0, %bb.br ], [ 0, %._crit_edge1092 ]
  %.5529702.ph = phi ptr [ %.2526, %.loopexit1004 ], [ null, %bb.br ], [ %.1525.lcssa, %._crit_edge1092 ]
  %.5535701.ph = phi ptr [ %.2532, %.loopexit1004 ], [ %i.jd, %bb.br ], [ %.1531.lcssa, %._crit_edge1092 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %.thread693

.thread693:                                       ; preds = %._crit_edge765, %._crit_edge773, %._crit_edge781.a, %._crit_edge789, %.thread693.sink.split, %bb.bg
  %.32703 = phi i32 [ 1, %._crit_edge789 ], [ %.32703.ph, %.thread693.sink.split ], [ 1, %bb.bg ], [ 1, %._crit_edge781.a ], [ 1, %._crit_edge773 ], [ 1, %._crit_edge765 ]
  %.5529702 = phi ptr [ null, %._crit_edge789 ], [ %.5529702.ph, %.thread693.sink.split ], [ null, %bb.bg ], [ null, %._crit_edge781.a ], [ null, %._crit_edge773 ], [ null, %._crit_edge765 ]
  %.5535701 = phi ptr [ %i.jd, %._crit_edge789 ], [ %.5535701.ph, %.thread693.sink.split ], [ null, %bb.bg ], [ %i.jd, %._crit_edge781.a ], [ %i.jd, %._crit_edge773 ], [ %i.jd, %._crit_edge765 ]
  %.1537700 = phi ptr [ %i.aj, %._crit_edge789 ], [ %i.pq, %.thread693.sink.split ], [ %i.aj, %bb.bg ], [ %i.aj, %._crit_edge781.a ], [ %i.aj, %._crit_edge773 ], [ %i.aj, %._crit_edge765 ]
  call void @TIFFClose(ptr noundef nonnull %.1537700) #15
  br label %.thread681

.thread681:                                       ; preds = %.thread, %bb.bq, %bb.b, %bb.bp, %._crit_edge, %.thread693
  %.1490691 = phi ptr [ %.0489, %._crit_edge ], [ %.0489, %.thread693 ], [ %.0489, %.thread ], [ %.0489, %bb.bq ], [ null, %bb.b ], [ %.0489, %bb.bp ]
  %.32690 = phi i32 [ 1, %._crit_edge ], [ %.32703, %.thread693 ], [ 1, %.thread ], [ 1, %bb.bq ], [ 1, %bb.b ], [ %.12516, %bb.bp ]
  %.5529689 = phi ptr [ null, %._crit_edge ], [ %.5529702, %.thread693 ], [ null, %.thread ], [ null, %bb.bq ], [ null, %bb.b ], [ null, %bb.bp ]
  %.5535688 = phi ptr [ null, %._crit_edge ], [ %.5535701, %.thread693 ], [ null, %.thread ], [ %i.jd, %bb.bq ], [ null, %bb.b ], [ %i.jd, %bb.bp ]
  call void @free(ptr noundef %.1490691) #15
  call void @free(ptr noundef %.5535688) #15
  %i.xk = load i32, ptr %i.b, align 4, !tbaa !11
  %.not612 = icmp eq i32 %i.xk, 0
  br i1 %.not612, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %.thread681
  call void @free(ptr noundef %.5529689) #15
  br label %bb.dm

bb.dm:                                            ; preds = %.thread681, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.32690
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @dt_colorspaces_get_output_profile(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cmsSaveProfileToMem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare i32 @g_hash_table_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @TIFFOpen(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

declare i32 @TIFFDefaultStripSize(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @TIFFWriteScanline(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

declare void @TIFFClose(ptr noundef) local_unnamed_addr #3

declare i32 @dt_exif_write_blob(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @g_hash_table_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @g_hash_table_iter_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare ptr @dt_dev_get_raster_mask(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_hash_table_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #6

declare i32 @TIFFWriteDirectory(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @params_size(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret i64 168
}

; Function Attrs: nounwind uwtable
define noundef ptr @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #8 {
bb.a:
  switch i32 %3, label %bb.g [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(176) ptr @calloc(i64 noundef 1, i64 noundef 176) #17 ; 8 uses
  %i.b = load <4 x i32>, ptr %1, align 8, !tbaa !11
  store <4 x i32> %i.b, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = tail call i64 @g_strlcpy(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 128) #15 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i32 0, ptr %i.f, align 8, !tbaa !121
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !123
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store i32 %i.h, ptr %i.i, align 4, !tbaa !124
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i32 0, ptr %i.j, align 8, !tbaa !125
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.l = load i32, ptr %i.k, align 4, !tbaa !126  ; 2 uses
  %i.m = icmp eq i32 %i.l, 3
  %spec.select = select i1 %i.m, i32 2, i32 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i32 %spec.select, ptr %i.n, align 4, !tbaa !127
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 6, ptr %i.o, align 8, !tbaa !128
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noalias dereferenceable_or_null(176) ptr @calloc(i64 noundef 1, i64 noundef 176) #17 ; 7 uses
  %i.q = load <4 x i32>, ptr %1, align 8, !tbaa !11
  store <4 x i32> %i.q, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = tail call i64 @g_strlcpy(ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, i64 noundef 128) #15 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.w = load <2 x i32>, ptr %i.u, align 8, !tbaa !11
  store <2 x i32> %i.w, ptr %i.v, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  store i32 0, ptr %i.x, align 8, !tbaa !125
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.z = load i32, ptr %i.y, align 8, !tbaa !130  ; 2 uses
  %i.aa = icmp eq i32 %i.z, 3
  %spec.select89 = select i1 %i.aa, i32 2, i32 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 156
  store i32 %spec.select89, ptr %i.ab, align 4, !tbaa !127
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  store i32 6, ptr %i.ac, align 8, !tbaa !128
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.ad = tail call noalias dereferenceable_or_null(176) ptr @calloc(i64 noundef 1, i64 noundef 176) #17 ; 7 uses
  %i.ae = load <4 x i32>, ptr %1, align 8, !tbaa !11
  store <4 x i32> %i.ae, ptr %i.ad, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = tail call i64 @g_strlcpy(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, i64 noundef 128) #15 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.ak = load <2 x i32>, ptr %i.ai, align 8, !tbaa !11
  store <2 x i32> %i.ak, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  store i32 0, ptr %i.al, align 8, !tbaa !125
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.an = load i32, ptr %i.am, align 4, !tbaa !132 ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !133 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 3
  %spec.select90 = select i1 %i.aq, i32 2, i32 %i.ap
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %spec.select90.sink = phi i32 [ %spec.select90, %bb.e ], [ 0, %bb.d ]
  %.sink = phi i32 [ %i.an, %bb.e ], [ 6, %bb.d ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 156
  store i32 %spec.select90.sink, ptr %i.ar, align 4, !tbaa !127
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  store i32 %.sink, ptr %i.as, align 8, !tbaa !128
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.au = load i32, ptr %i.at, align 8, !tbaa !134
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.f
  %.sink99 = phi ptr [ %i.ad, %bb.f ], [ %i.p, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %.sink97 = phi i32 [ %i.au, %bb.f ], [ 0, %bb.c ], [ 0, %bb.b ]
  %.sink96 = phi i64 [ 168, %bb.f ], [ 160, %bb.c ], [ 152, %bb.b ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sink99, i64 164
  store i32 %.sink97, ptr %i.av, align 4, !tbaa !135
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %.sink96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !136
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink99, i64 168
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !137
  store i32 4, ptr %4, align 4, !tbaa !11
  store i64 168, ptr %5, align 8, !tbaa !138
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.sink99, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9
end_hunk_0
