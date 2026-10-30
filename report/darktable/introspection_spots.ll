Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_spots?download=true
inline.NumInlined: 34
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@default_colorspace:bb.a
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @legacy_params(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %calloc = tail call dereferenceable_or_null(512) ptr @calloc(i64 1, i64 512) ; 3 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !162
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %calloc, i64 256
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2056
  %.06577 = load ptr, ptr %i.i, align 8, !tbaa !30 ; 2 uses
  %.not78 = icmp eq ptr %.06577, null
  br i1 %.not78, label %._crit_edge84.thread, label %.lr.ph83

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.j = tail call ptr @dt_masks_create(i32 noundef 9) #16 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 164 ; 2 uses
  store i32 1, ptr %i.k, align 4, !tbaa !163
  %i.l = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 4 uses
  %i.m = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %indvars.iv ; 4 uses
  %i.n = load <2 x float>, ptr %i.m, align 4, !tbaa !34
  store <2 x float> %i.n, ptr %i.l, align 4, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load float, ptr %i.o, align 4, !tbaa !165
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store float %i.p, ptr %i.q, align 4, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store float 0.000000e+00, ptr %i.r, align 4, !tbaa !166
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.t = tail call ptr @g_list_append(ptr noundef %i.s, ptr noundef nonnull %i.l) #16
  store ptr %i.t, ptr %i.j, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !167
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store float %i.v, ptr %i.w, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !168
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store float %i.y, ptr %i.z, align 4, !tbaa !34
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ab = load i32, ptr %i.k, align 4, !tbaa !163
  %i.ac = tail call i32 @dt_masks_version() #16
  %i.ad = tail call i32 @dt_masks_legacy_params(ptr noundef %i.aa, ptr noundef nonnull %i.j, i32 noundef %i.ab, i32 noundef %i.ac) #16 ; 0 uses
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !28
  tail call void @dt_masks_gui_form_save_creation(ptr noundef %i.ae, ptr noundef %0, ptr noundef nonnull %i.j, ptr noundef null) #16
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !169
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %indvars.iv
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !38
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store i32 2, ptr %i.ai, align 4, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = load i32, ptr %1, align 4, !tbaa !162
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %bb.c, label %._crit_edge

._crit_edge84:                                    ; preds = %bb.e
  %i.am = icmp eq i32 %.1, 0
  %spec.select = select i1 %i.am, i32 %i.at, i32 %.1
  br label %._crit_edge84.thread

._crit_edge84.thread:                             ; preds = %._crit_edge84, %._crit_edge
  %i.an = phi i32 [ %spec.select, %._crit_edge84 ], [ 0, %._crit_edge ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 2152
  %.086 = load ptr, ptr %i.ao, align 8, !tbaa !30 ; 2 uses
  %.not7287 = icmp eq ptr %.086, null
  br i1 %.not7287, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %._crit_edge84.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  br label %bb.f

.lr.ph83:                                         ; preds = %._crit_edge, %bb.e
  %.06581 = phi ptr [ %.065, %bb.e ], [ %.06577, %._crit_edge ] ; 2 uses
  %.06680 = phi i32 [ %i.at, %bb.e ], [ 0, %._crit_edge ]
  %.06779 = phi i32 [ %.1, %bb.e ], [ 0, %._crit_edge ]
  %i.as = load ptr, ptr %.06581, align 8, !tbaa !41 ; 2 uses
  %i.at = add nuw nsw i32 %.06680, 1              ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.av = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.au, ptr noundef nonnull dereferenceable(6) @.str.6) #18
  %.not75 = icmp eq i32 %i.av, 0
  br i1 %.not75, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph83
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 200
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !171
  %i.ay = freeze i32 %i.ax
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph83
  %.1 = phi i32 [ %.06779, %.lr.ph83 ], [ %i.ay, %bb.d ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.06581, i64 8
  %.065 = load ptr, ptr %i.az, align 8, !tbaa !30 ; 2 uses
  %.not = icmp eq ptr %.065, null
  br i1 %.not, label %._crit_edge84, label %.lr.ph83

._crit_edge91:                                    ; preds = %.critedge, %._crit_edge84.thread
  store ptr %calloc, ptr %3, align 8, !tbaa !42
  store i32 512, ptr %4, align 4, !tbaa !38
  store i32 2, ptr %5, align 4, !tbaa !38
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph90, %.critedge
  %.088 = phi ptr [ %.086, %.lr.ph90 ], [ %.0, %.critedge ] ; 2 uses
  %i.ba = load ptr, ptr %.088, align 8, !tbaa !41 ; 4 uses
  %.not73 = icmp eq ptr %i.ba, null
  br i1 %.not73, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !43
  %i.bd = and i32 %i.bc, 4
  %.not74 = icmp eq i32 %i.bd, 0
  br i1 %.not74, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !169
  store i32 %i.bf, ptr %i.ar, align 4, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1552
  %i.bi = load i32, ptr %i.bh, align 16, !tbaa !172
  tail call void @dt_masks_write_masks_history_item(i32 noundef %i.bi, i32 noundef %i.an, ptr noundef nonnull %i.ba) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.088, i64 8
  %.0 = load ptr, ptr %i.bj, align 8, !tbaa !30   ; 2 uses
  %.not72 = icmp eq ptr %.0, null
  br i1 %.not72, label %._crit_edge91, label %bb.f

bb.j:                                             ; preds = %bb.a, %._crit_edge91
  %.068 = phi i32 [ 0, %._crit_edge91 ], [ 1, %bb.a ]
  ret i32 %.068
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare ptr @dt_masks_create(i32 noundef) local_unnamed_addr #3

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_masks_legacy_params(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dt_masks_version() local_unnamed_addr #3

declare void @dt_masks_gui_form_save_creation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare void @dt_masks_write_masks_history_item(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @modify_roi_in(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !173
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load <2 x i32>, ptr %i.i, align 4, !tbaa !38
  %i.k = load <2 x i32>, ptr %3, align 4, !tbaa !38 ; 5 uses
  %i.l = add nsw <2 x i32> %i.k, %i.j             ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2584
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !89
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = tail call ptr @dt_masks_get_from_id_ext(ptr noundef %i.r, i32 noundef %i.t) #16 ; 3 uses
  %.not = icmp eq ptr %i.u, null
  %4 = extractelement <2 x i32> %i.l, i64 0       ; 3 uses
  %5 = extractelement <2 x i32> %i.l, i64 1       ; 3 uses
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !43
  %i.x = and i32 %i.w, 4
  %.not100 = icmp eq i32 %i.x, 0
  br i1 %.not100, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.075110 = load ptr, ptr %i.u, align 8, !tbaa !30 ; 2 uses
  %.not101111 = icmp eq ptr %.075110, null
  br i1 %.not101111, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %.075116 = phi ptr [ %.075110, %.lr.ph ], [ %.075, %bb.j ] ; 2 uses
  %6 = phi <2 x i32> [ %i.k, %.lr.ph ], [ %24, %bb.j ] ; 5 uses
  %7 = phi <2 x i32> [ %i.l, %.lr.ph ], [ %25, %bb.j ] ; 5 uses
  %i.ac = load ptr, ptr %.075116, align 8, !tbaa !41
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !81
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2584
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !89
  %i.ag = load i32, ptr %i.ac, align 4, !tbaa !91
  %i.ah = call ptr @dt_masks_get_from_id_ext(ptr noundef %i.af, i32 noundef %i.ag) #16 ; 3 uses
  %.not102 = icmp eq ptr %i.ah, null
  br i1 %.not102, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.ai = call i32 @dt_masks_get_area(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %masks_form_is_in_roi.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load float, ptr %i.y, align 4, !tbaa !92 ; 4 uses
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !38
  %i.al = sitofp reassoc nsz arcp contract afn i32 %i.ak to float
  %i.am = fmul reassoc nsz arcp contract afn float %i.aj, %i.al
  %i.an = fptosi float %i.am to i32
  %i.ao = load i32, ptr %i.d, align 4, !tbaa !38
  %i.ap = sitofp reassoc nsz arcp contract afn i32 %i.ao to float
  %i.aq = fmul reassoc nsz arcp contract afn float %i.aj, %i.ap
  %i.ar = fptosi float %i.aq to i32
  %i.as = load i32, ptr %i.a, align 4, !tbaa !38
  %i.at = sitofp reassoc nsz arcp contract afn i32 %i.as to float
  %i.au = fmul reassoc nsz arcp contract afn float %i.aj, %i.at
  %i.av = fptosi float %i.au to i32               ; 2 uses
  %i.aw = load i32, ptr %i.b, align 4, !tbaa !38
  %i.ax = sitofp reassoc nsz arcp contract afn i32 %i.aw to float
  %i.ay = fmul reassoc nsz arcp contract afn float %i.aj, %i.ax
  %i.az = fptosi float %i.ay to i32               ; 2 uses
  %i.ba = load i32, ptr %i.z, align 4, !tbaa !93  ; 2 uses
  %i.bb = load i32, ptr %i.aa, align 4, !tbaa !94
  %i.bc = add nsw i32 %i.bb, %i.ba
  %.not15.i = icmp sgt i32 %i.bc, %i.az
  %i.bd = add nsw i32 %i.az, %i.ar
  %.not16.i = icmp sgt i32 %i.bd, %i.ba
  %or.cond.i = select i1 %.not15.i, i1 %.not16.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %masks_form_is_in_roi.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.be = load i32, ptr %2, align 4, !tbaa !95    ; 2 uses
  %i.bf = load i32, ptr %i.ab, align 4, !tbaa !96
  %i.bg = add nsw i32 %i.bf, %i.be
  %.not17.i = icmp sgt i32 %i.bg, %i.av
  br i1 %.not17.i, label %masks_form_is_in_roi.exit, label %masks_form_is_in_roi.exit.thread

masks_form_is_in_roi.exit.thread:                 ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.j

masks_form_is_in_roi.exit:                        ; preds = %bb.f
  %i.bh = add nsw i32 %i.av, %i.an
  %.not18.i.not = icmp sgt i32 %i.bh, %i.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br i1 %.not18.i.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %masks_form_is_in_roi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.bi = call i32 @dt_masks_get_source_area(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #16
  %.not104.not = icmp eq i32 %i.bi, 0
  br i1 %.not104.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = load float, ptr %i.y, align 4, !tbaa !92
  %i.bk = load i32, ptr %i.g, align 4, !tbaa !38
  %i.bl = load i32, ptr %i.h, align 4, !tbaa !38
  %i.bm = load i32, ptr %i.e, align 4, !tbaa !38
  %i.bn = load i32, ptr %i.f, align 4, !tbaa !38
  %8 = sitofp <2 x i32> %6 to <2 x float>
  %i.bo = insertelement <2 x i32> poison, i32 %i.bm, i64 0
  %i.bp = insertelement <2 x i32> %i.bo, i32 %i.bn, i64 1
  %i.bq = sitofp <2 x i32> %i.bp to <2 x float>
  %i.br = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bt = fmul reassoc nsz arcp contract afn <2 x float> %i.bs, %i.bq
  %i.bu = fptosi <2 x float> %i.bt to <2 x i32>   ; 2 uses
  %9 = sitofp <2 x i32> %i.bu to <2 x float>
  %10 = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %9, <2 x float> %8)
  %11 = fptosi <2 x float> %10 to <2 x i32>
  %12 = sitofp <2 x i32> %7 to <2 x float>
  %13 = insertelement <2 x i32> poison, i32 %i.bk, i64 0
  %14 = insertelement <2 x i32> %13, i32 %i.bl, i64 1
  %15 = sitofp <2 x i32> %14 to <2 x float>
  %16 = fmul reassoc nsz arcp contract afn <2 x float> %i.bs, %15
  %17 = fptosi <2 x float> %16 to <2 x i32>
  %18 = add nsw <2 x i32> %i.bu, %17
  %19 = sitofp <2 x i32> %18 to <2 x float>
  %20 = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %19, <2 x float> %12)
  %21 = fptosi <2 x float> %20 to <2 x i32>
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %22 = phi <2 x i32> [ %11, %bb.h ], [ %6, %bb.g ]
  %23 = phi <2 x i32> [ %21, %bb.h ], [ %7, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %bb.j

bb.j:                                             ; preds = %masks_form_is_in_roi.exit.thread, %bb.i, %bb.c, %masks_form_is_in_roi.exit
  %24 = phi <2 x i32> [ %6, %masks_form_is_in_roi.exit ], [ %6, %bb.c ], [ %22, %bb.i ], [ %6, %masks_form_is_in_roi.exit.thread ] ; 2 uses
  %25 = phi <2 x i32> [ %7, %masks_form_is_in_roi.exit ], [ %7, %bb.c ], [ %23, %bb.i ], [ %7, %masks_form_is_in_roi.exit.thread ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.075116, i64 8
  %.075 = load ptr, ptr %i.bv, align 8, !tbaa !30 ; 2 uses
  %.not101 = icmp eq ptr %.075, null
  br i1 %.not101, label %.loopexit.loopexit, label %bb.c

.loopexit.loopexit:                               ; preds = %bb.j
  %26 = extractelement <2 x i32> %25, i64 1
  %27 = extractelement <2 x i32> %25, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.b, %bb.a
  %.491 = phi i32 [ %4, %bb.a ], [ %4, %bb.b ], [ %4, %.preheader ], [ %27, %.loopexit.loopexit ]
  %.486 = phi i32 [ %5, %bb.a ], [ %5, %bb.b ], [ %5, %.preheader ], [ %26, %.loopexit.loopexit ]
  %28 = phi <2 x i32> [ %i.k, %bb.a ], [ %i.k, %bb.b ], [ %i.k, %.preheader ], [ %24, %.loopexit.loopexit ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !92
  %i.cb = extractelement <2 x i32> %28, i64 0     ; 2 uses
  %i.cc = sitofp reassoc nsz arcp contract afn i32 %i.cb to float
  %i.cd = call i32 @llvm.smax.i32(i32 %i.cb, i32 0)
  %i.ce = uitofp nsz nneg i32 %i.cd to float
  %i.cf = load <2 x i32>, ptr %i.by, align 8, !tbaa !38
  %i.cg = sitofp <2 x i32> %i.cf to <2 x float>
  %i.ch = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fmul reassoc nsz arcp contract afn <2 x float> %i.ci, %i.cg ; 3 uses
  %i.ck = extractelement <2 x float> %i.cj, i64 0
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, -1.000000e+00 ; 2 uses
  %i.cm = fcmp reassoc nsz arcp contract afn olt float %i.cl, %i.cc
  %i.cn = select reassoc nsz arcp contract afn i1 %i.cm, float %i.cl, float %i.ce
  %i.co = fptosi float %i.cn to i32               ; 3 uses
  store i32 %i.co, ptr %3, align 4, !tbaa !95
  %i.cp = sub nsw i32 %.491, %i.co
  %29 = shufflevector <2 x i32> %28, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.cq = insertelement <2 x i32> %29, i32 %i.cp, i64 1 ; 2 uses
  %i.cr = sitofp <2 x i32> %i.cq to <2 x float>
  %i.cs = sitofp reassoc nsz arcp contract afn i32 %i.co to float
  %i.ct = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.cs, i64 0
  %i.cu = fsub reassoc nsz arcp contract afn <2 x float> %i.cj, %i.ct
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cw = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.cv, %i.cr
  %i.cx = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cq, <2 x i32> <i32 0, i32 1>)
  %i.cy = uitofp nneg <2 x i32> %i.cx to <2 x float>
  %i.cz = select <2 x i1> %i.cw, <2 x float> %i.cv, <2 x float> %i.cy
  %i.da = fptosi <2 x float> %i.cz to <2 x i32>   ; 2 uses
  store <2 x i32> %i.da, ptr %i.bw, align 4, !tbaa !38
  %i.db = extractelement <2 x i32> %i.da, i64 0   ; 2 uses
  %i.dc = sub nsw i32 %.486, %i.db                ; 2 uses
  %i.dd = sitofp reassoc nsz arcp contract afn i32 %i.dc to float
  %i.de = sitofp reassoc nsz arcp contract afn i32 %i.db to float
  %i.df = extractelement <2 x float> %i.cj, i64 1
  %i.dg = fsub reassoc nsz arcp contract afn float %i.df, %i.de ; 2 uses
  %i.dh = fcmp reassoc nsz arcp contract afn olt float %i.dg, %i.dd
  %spec.select105109 = call i32 @llvm.smax.i32(i32 %i.dc, i32 1)
  %spec.select105 = uitofp nneg i32 %spec.select105109 to float
  %i.di = select reassoc nsz arcp contract afn i1 %i.dh, float %i.dg, float %spec.select105
  %i.dj = fptosi float %i.di to i32
  store i32 %i.dj, ptr %i.bx, align 4, !tbaa !94
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare ptr @dt_masks_get_from_id_ext(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dt_masks_get_source_area(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_process(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = alloca [4 x float], align 16             ; 6 uses
  %i.c = alloca [4 x float], align 16             ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca [4 x float], align 16             ; 9 uses
  %i.i = alloca ptr, align 8                      ; 7 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !97
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !80
  %i.r = sext i32 %6 to i64                       ; 9 uses
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef %i.r, ptr noundef %4, ptr noundef %5) #16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2584
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !89
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.x = load i32, ptr %i.w, align 4, !tbaa !45
  %i.y = tail call ptr @dt_masks_get_from_id_ext(ptr noundef %i.v, i32 noundef %i.x) #16 ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.loopexit310, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !43
  %i.ab = and i32 %i.aa, 4
  %.not246 = icmp eq i32 %i.ab, 0
  br i1 %.not246, label %.loopexit310, label %.preheader309

.preheader309:                                    ; preds = %bb.b
  %.0229331 = load ptr, ptr %i.y, align 8, !tbaa !30 ; 2 uses
  %.not339 = icmp eq ptr %.0229331, null
  br i1 %.not339, label %.loopexit310, label %.lr.ph335

.lr.ph335:                                        ; preds = %.preheader309
  %i.ac = getelementptr i8, ptr %4, i64 16        ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ak = getelementptr i8, ptr %0, i64 664       ; 4 uses
  %i.al = getelementptr i8, ptr %0, i64 480       ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ap = icmp sgt i32 %6, 0                      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %wide.trip.count = zext i32 %6 to i64           ; 16 uses
  %wide.trip.count356 = zext nneg i32 %6 to i64
  %i.at = shl nuw nsw i64 %wide.trip.count, 2     ; 4 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.at
  %i.au = shl nsw i64 %i.r, 2
  %scevgep398 = getelementptr i8, ptr %2, i64 %i.at
  %i.av = shl nsw i64 %i.r, 2
  %scevgep417 = getelementptr i8, ptr %3, i64 %i.at
  %i.aw = shl nsw i64 %i.r, 2
  %scevgep419 = getelementptr i8, ptr %2, i64 %i.at
  %i.ax = shl nsw i64 %i.r, 2
  %min.iters.check424 = icmp ult i32 %6, 4
  %min.iters.check426 = icmp ult i32 %6, 32
  %i.ay = and i64 %wide.trip.count, 28
  %n.vec428 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  %cmp.n443 = icmp eq i64 %n.vec428, %wide.trip.count
  %min.epilog.iters.check447 = icmp eq i64 %i.ay, 0
  %n.vec450 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n459 = icmp eq i64 %n.vec450, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %6, 4
  %min.iters.check400 = icmp ult i32 %6, 32
  %i.az = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  %n.vec408 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n415 = icmp eq i64 %n.vec408, %wide.trip.count
  %xtraiter496 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod497.not = icmp eq i64 %xtraiter496, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph335, %bb.ae
  %indvars.iv368 = phi i64 [ 0, %.lr.ph335 ], [ %indvars.iv.next369, %bb.ae ] ; 3 uses
  %.0229334 = phi ptr [ %.0229331, %.lr.ph335 ], [ %.0229, %bb.ae ] ; 2 uses
  %i.ba = load ptr, ptr %.0229334, align 8, !tbaa !41 ; 2 uses
  %i.bb = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2584
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !89
  %i.be = load i32, ptr %i.ba, align 4, !tbaa !91
  %i.bf = call ptr @dt_masks_get_from_id_ext(ptr noundef %i.bd, i32 noundef %i.be) #16 ; 14 uses
  %.not247 = icmp eq ptr %i.bf, null
  br i1 %.not247, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %i.bg = call i32 @dt_masks_get_area(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #16
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %masks_form_is_in_roi.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = load float, ptr %i.ac, align 4, !tbaa !92 ; 7 uses
  %i.bi = load i32, ptr %i.f, align 4, !tbaa !38
  %i.bj = sitofp reassoc nsz arcp contract afn i32 %i.bi to float
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bh, %i.bj
  %i.bl = fptosi float %i.bk to i32
  %i.bm = load i32, ptr %i.g, align 4, !tbaa !38
  %i.bn = sitofp reassoc nsz arcp contract afn i32 %i.bm to float
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bh, %i.bn
  %i.bp = fptosi float %i.bo to i32
  %i.bq = load i32, ptr %i.d, align 4, !tbaa !38
  %i.br = sitofp reassoc nsz arcp contract afn i32 %i.bq to float
  %i.bs = fmul reassoc nsz arcp contract afn float %i.bh, %i.br
  %i.bt = fptosi float %i.bs to i32               ; 2 uses
  %i.bu = load i32, ptr %i.e, align 4, !tbaa !38
  %i.bv = sitofp reassoc nsz arcp contract afn i32 %i.bu to float
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bh, %i.bv
  %i.bx = fptosi float %i.bw to i32               ; 2 uses
  %i.by = load i32, ptr %i.ad, align 4, !tbaa !93 ; 2 uses
  %i.bz = load i32, ptr %i.ae, align 4, !tbaa !94
  %i.ca = add nsw i32 %i.bz, %i.by
  %.not15.i = icmp sgt i32 %i.ca, %i.bx
  %i.cb = add nsw i32 %i.bx, %i.bp
  %.not16.i = icmp sgt i32 %i.cb, %i.by
  %or.cond.i = select i1 %.not15.i, i1 %.not16.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %masks_form_is_in_roi.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.cc = load i32, ptr %5, align 4, !tbaa !95    ; 2 uses
  %i.cd = load i32, ptr %i.af, align 4, !tbaa !96
  %i.ce = add nsw i32 %i.cd, %i.cc
  %.not17.i = icmp sgt i32 %i.ce, %i.bt
  br i1 %.not17.i, label %masks_form_is_in_roi.exit, label %masks_form_is_in_roi.exit.thread

masks_form_is_in_roi.exit.thread:                 ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.ae

masks_form_is_in_roi.exit:                        ; preds = %bb.f
  %i.cf = add nsw i32 %i.bt, %i.bl
  %.not18.i.not = icmp sgt i32 %i.cf, %i.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br i1 %.not18.i.not, label %bb.g, label %bb.ae

bb.g:                                             ; preds = %masks_form_is_in_roi.exit
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv368
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !38
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !43
  %i.cl = and i32 %i.ck, 1
  %.not249 = icmp eq i32 %i.cl, 0
  br i1 %.not249, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cm = load ptr, ptr %i.bf, align 8, !tbaa !37
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !41 ; 2 uses
end_hunk_0
begin_hunk_1_@_add_shape_callback:bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 184
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !152
  %i.en = icmp eq ptr %i.em, %2
  br i1 %i.en, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 176
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !158
  %.not25.i26 = icmp eq i32 %i.ep, 0
  br i1 %.not25.i26, label %_shape_is_being_added.exit32, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 192
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !159
  %i.es = icmp eq ptr %i.er, %2
  br i1 %i.es, label %bb.av, label %_shape_is_being_added.exit32

bb.av:                                            ; preds = %bb.au, %bb.as
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !43 ; 2 uses
  %i.ev = and i32 %i.eu, 4
  %.not26.i28 = icmp eq i32 %i.ev, 0
  br i1 %.not26.i28, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ew = load ptr, ptr %i.ei, align 8, !tbaa !37 ; 2 uses
  %.not27.i29 = icmp eq ptr %i.ew, null
  br i1 %.not27.i29, label %_shape_is_being_added.exit32, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !41 ; 2 uses
  %.not28.i30 = icmp eq ptr %i.ex, null
  br i1 %.not28.i30, label %_shape_is_being_added.exit32, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ey = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !137
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !91
  %i.fa = tail call ptr @dt_masks_get_from_id(ptr noundef %i.ey, i32 noundef %i.ez) #16 ; 2 uses
  %.not29.i31 = icmp eq ptr %i.fa, null
  br i1 %.not29.i31, label %_shape_is_being_added.exit32, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !43
  %i.fd = and i32 %i.fc, 2
  br label %_shape_is_being_added.exit32

bb.ba:                                            ; preds = %bb.av
  %i.fe = and i32 %i.eu, 2
  br label %_shape_is_being_added.exit32

_shape_is_being_added.exit32:                     ; preds = %_shape_is_being_added.exit22, %bb.aq, %bb.at, %bb.au, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba
  %.3.i27 = phi i32 [ 0, %_shape_is_being_added.exit22 ], [ %i.fe, %bb.ba ], [ 0, %bb.au ], [ 0, %bb.at ], [ 0, %bb.aq ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ %i.fd, %bb.az ], [ 0, %bb.ay ]
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ed, i32 noundef %.3.i27) #16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %_shape_is_being_added.exit32
  %.0 = phi i32 [ 1, %_shape_is_being_added.exit32 ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @dtgtk_cairo_paint_masks_path(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

declare void @dtgtk_cairo_paint_masks_ellipse(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

declare void @dtgtk_cairo_paint_masks_circle(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_masks_reset_form_gui() #16
  ret void
}

declare void @dt_masks_reset_form_gui() local_unnamed_addr #3

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
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !226
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !227
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !227
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !227
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !227
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !227
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !227
  store ptr @introspection_init.f4, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 424), align 8, !tbaa !227
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.20) #18
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.21) #18
  %.not10 = icmp eq i32 %i.b, 0
  br i1 %.not10, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.22) #18
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.23) #18
  %.not12 = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  %spec.select = select i1 %.not12, ptr %i.f, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a, %bb.d
  %.0 = phi ptr [ %0, %bb.b ], [ %spec.select, %bb.e ], [ %i.d, %bb.d ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.20) #16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.21) #16
  %.not5 = icmp eq i32 %i.b, 0
  br i1 %.not5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.22) #16
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.23) #16
  %.not7 = icmp eq i32 %i.d, 0
  %. = select i1 %.not7, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ %., %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_masks_get_area(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @dt_iop_request_focus(ptr noundef) local_unnamed_addr #3

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #3

declare i32 @gtk_toggle_button_get_active(ptr noundef) local_unnamed_addr #3

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS8_GModule", !11, i64 0}
!13 = !{!"p1 int", !11, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !14, i64 8, !8, i64 16, !8, i64 20}
!16 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!17 = !{!"dt_pthread_mutex_t", !7, i64 0}
!18 = !{!"p1 _ZTS25dt_develop_blend_params_t", !11, i64 0}
!19 = !{!"p1 _ZTS11_GHashTable", !11, i64 0}
!20 = !{!"", !19, i64 0, !19, i64 8}
!21 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!22 = !{!"", !21, i64 0, !8, i64 8}
!23 = !{!"", !20, i64 0, !22, i64 16}
!24 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!25 = !{!"p1 _ZTS7_GSList", !11, i64 0}
!26 = !{!"p1 _ZTS18dt_iop_module_so_t", !11, i64 0}
!27 = !{!"dt_iop_module_t", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !12, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !13, i64 608, !15, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !16, i64 664, !8, i64 672, !8, i64 676, !11, i64 680, !11, i64 688, !8, i64 696, !11, i64 704, !17, i64 712, !11, i64 752, !11, i64 760, !18, i64 768, !18, i64 776, !11, i64 784, !23, i64 792, !24, i64 824, !24, i64 832, !24, i64 840, !24, i64 848, !24, i64 856, !24, i64 864, !24, i64 872, !8, i64 880, !24, i64 888, !24, i64 896, !24, i64 904, !25, i64 912, !25, i64 920, !24, i64 928, !24, i64 936, !8, i64 944, !26, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !24, i64 1096, !11, i64 1104, !8, i64 1112}
!28 = !{!27, !16, i64 664}
!29 = !{!"p1 _ZTS6_GList", !11, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"p1 _ZTS20dt_masks_functions_t", !11, i64 0}
!32 = !{!"dt_masks_form_t", !29, i64 0, !8, i64 8, !31, i64 16, !7, i64 24, !7, i64 32, !8, i64 160, !8, i64 164}
!33 = !{!"float", !7, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"dt_masks_point_circle_t", !7, i64 0, !33, i64 8, !33, i64 12}
!36 = !{!35, !33, i64 8}
!37 = !{!32, !29, i64 0}
!38 = !{!8, !8, i64 0}
!39 = !{!27, !18, i64 768}
!40 = !{!"_GList", !11, i64 0, !29, i64 8, !29, i64 16}
!41 = !{!40, !11, i64 0}
!42 = !{!11, !11, i64 0}
!43 = !{!32, !8, i64 8}
!44 = !{!"dt_develop_blend_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !33, i64 12, !33, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !33, i64 32, !8, i64 36, !33, i64 40, !33, i64 44, !33, i64 48, !33, i64 52, !8, i64 56, !7, i64 60, !7, i64 68, !7, i64 324, !7, i64 388, !8, i64 408, !8, i64 412, !8, i64 416}
!45 = !{!44, !8, i64 24}
!46 = !{!"double", !7, i64 0}
!47 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!48 = !{!"short", !7, i64 0}
!49 = !{!"", !48, i64 0, !48, i64 2}
!50 = !{!"", !8, i64 0, !7, i64 16}
!51 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !49, i64 48, !50, i64 64, !7, i64 96, !8, i64 112}
!52 = !{!"p1 omnipotent char", !11, i64 0}
!53 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!54 = !{!"dt_image_geoloc_t", !46, i64 0, !46, i64 8, !46, i64 16}
!55 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!56 = !{!"p1 _ZTS16dt_cache_entry_t", !11, i64 0}
!57 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20, !33, i64 24, !33, i64 28, !33, i64 32, !33, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !14, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !33, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !14, i64 1448, !14, i64 1456, !14, i64 1464, !14, i64 1472, !8, i64 1480, !51, i64 1488, !7, i64 1616, !52, i64 1656, !8, i64 1664, !8, i64 1668, !53, i64 1672, !54, i64 1680, !55, i64 1704, !48, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !33, i64 1756, !33, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !29, i64 1856, !56, i64 1864, !8, i64 1872, !8, i64 1876}
!58 = !{!"p1 _ZTS15dt_masks_form_t", !11, i64 0}
!59 = !{!"p1 _ZTS19dt_masks_form_gui_t", !11, i64 0}
!60 = !{!"dt_dev_proxy_exposure_t", !21, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!61 = !{!"p1 _ZTS15dt_lib_module_t", !11, i64 0}
!62 = !{!"", !61, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64}
!63 = !{!"", !61, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!64 = !{!"", !60, i64 0, !21, i64 40, !62, i64 48, !63, i64 120}
!65 = !{!"dt_dev_chroma_t", !21, i64 0, !21, i64 8, !7, i64 16, !7, i64 32, !7, i64 64, !8, i64 96}
!66 = !{!"", !21, i64 0, !21, i64 8, !11, i64 16}
!67 = !{!"", !24, i64 0, !24, i64 8, !8, i64 16, !8, i64 20, !33, i64 24, !33, i64 28, !8, i64 32}
!68 = !{!"", !24, i64 0, !24, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !33, i64 28}
!69 = !{!"", !24, i64 0, !24, i64 8}
!70 = !{!"", !24, i64 0, !8, i64 8}
!71 = !{!"", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32}
!72 = !{!"dt_dev_viewport_t", !24, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !46, i64 32, !46, i64 40, !46, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !33, i64 68, !33, i64 72, !33, i64 76, !47, i64 80, !24, i64 88, !16, i64 96}
!73 = !{!"dt_develop_t", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !46, i64 24, !46, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !46, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !21, i64 88, !47, i64 96, !57, i64 112, !8, i64 2000, !8, i64 2004, !17, i64 2008, !8, i64 2048, !29, i64 2056, !8, i64 2064, !21, i64 2072, !8, i64 2080, !29, i64 2088, !29, i64 2096, !8, i64 2104, !29, i64 2112, !29, i64 2120, !13, i64 2128, !13, i64 2136, !8, i64 2144, !8, i64 2148, !29, i64 2152, !58, i64 2160, !59, i64 2168, !29, i64 2176, !8, i64 2184, !8, i64 2188, !8, i64 2192, !33, i64 2196, !33, i64 2200, !21, i64 2208, !8, i64 2216, !64, i64 2224, !65, i64 2384, !66, i64 2496, !67, i64 2520, !68, i64 2560, !69, i64 2592, !70, i64 2608, !71, i64 2624, !24, i64 2664, !24, i64 2672, !72, i64 2680, !72, i64 2784, !8, i64 2888, !8, i64 2892, !8, i64 2896, !8, i64 2900, !29, i64 2904, !8, i64 2912, !16, i64 2920}
!74 = !{!"p1 _ZTS18dt_histogram_roi_t", !11, i64 0}
!75 = !{!"dt_dev_histogram_collection_params_t", !74, i64 0, !8, i64 8}
!76 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !33, i64 16}
!77 = !{!"p1 float", !11, i64 0}
!78 = !{!"dt_dev_distorted_mask_cache_t", !77, i64 0, !76, i64 8, !14, i64 32, !14, i64 40}
!79 = !{!"dt_dev_pixelpipe_iop_t", !21, i64 0, !47, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !75, i64 40, !13, i64 56, !15, i64 64, !7, i64 88, !33, i64 104, !8, i64 108, !8, i64 112, !14, i64 120, !8, i64 128, !8, i64 132, !76, i64 136, !76, i64 156, !76, i64 176, !76, i64 196, !8, i64 216, !8, i64 220, !51, i64 224, !51, i64 352, !7, i64 480, !8, i64 516, !19, i64 520, !78, i64 528, !78, i64 576}
!80 = !{!79, !11, i64 24}
!81 = !{!79, !47, i64 8}
!82 = !{!"any p2 pointer", !11, i64 0}
!83 = !{!"p1 long", !11, i64 0}
!84 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !11, i64 0}
!85 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !14, i64 8, !14, i64 16, !82, i64 24, !83, i64 32, !84, i64 40, !83, i64 48, !13, i64 56, !13, i64 64, !14, i64 72, !8, i64 80, !14, i64 88, !14, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!86 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !11, i64 0}
!87 = !{!"dt_dev_detail_mask_t", !76, i64 0, !14, i64 24, !77, i64 32}
!88 = !{!"dt_dev_pixelpipe_t", !85, i64 0, !8, i64 120, !14, i64 128, !77, i64 136, !8, i64 144, !8, i64 148, !33, i64 152, !8, i64 156, !8, i64 160, !51, i64 176, !86, i64 304, !86, i64 312, !86, i64 320, !86, i64 328, !29, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !52, i64 360, !14, i64 368, !8, i64 376, !8, i64 380, !33, i64 384, !7, i64 388, !14, i64 416, !17, i64 424, !17, i64 464, !17, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !87, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !7, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !57, i64 656, !8, i64 2544, !52, i64 2552, !8, i64 2560, !29, i64 2568, !29, i64 2576, !29, i64 2584, !8, i64 2592, !77, i64 2600, !14, i64 2608, !7, i64 2616, !7, i64 2632}
!89 = !{!88, !29, i64 2584}
!90 = !{!"dt_masks_point_group_t", !8, i64 0, !8, i64 4, !8, i64 8, !33, i64 12}
!91 = !{!90, !8, i64 0}
!92 = !{!76, !33, i64 16}
!93 = !{!76, !8, i64 4}
!94 = !{!76, !8, i64 12}
!95 = !{!76, !8, i64 0}
!96 = !{!76, !8, i64 8}
!97 = !{!79, !11, i64 16}
!98 = !{!27, !11, i64 680}
!99 = !{!27, !11, i64 704}
!100 = !{!"dt_codepath_t", !8, i64 0}
!101 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!102 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!103 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!104 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!105 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!106 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!107 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!108 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!109 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!110 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!111 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!112 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!113 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!114 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!115 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!116 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!117 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!118 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!119 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!120 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!121 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!122 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!123 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!124 = !{!"_Bool", !7, i64 0}
!125 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!126 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!127 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!128 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!129 = !{!"", !123, i64 0, !17, i64 8, !7, i64 48, !124, i64 96, !124, i64 97, !125, i64 104, !126, i64 112, !127, i64 120, !128, i64 128, !128, i64 136, !128, i64 144}
!130 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!131 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!132 = !{!"dt_sys_resources_t", !14, i64 0, !14, i64 8, !13, i64 16, !13, i64 24, !8, i64 32}
!133 = !{!"dt_backthumb_t", !46, i64 0, !46, i64 8, !8, i64 16, !8, i64 20}
!134 = !{!"dt_gimp_t", !8, i64 0, !52, i64 8, !52, i64 16, !8, i64 24, !8, i64 28}
!135 = !{!"dt_splash_t", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !8, i64 32}
!136 = !{!"darktable_t", !100, i64 0, !8, i64 4, !8, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !101, i64 48, !102, i64 56, !16, i64 64, !103, i64 72, !104, i64 80, !105, i64 88, !106, i64 96, !107, i64 104, !108, i64 112, !109, i64 120, !110, i64 128, !111, i64 136, !112, i64 144, !113, i64 152, !114, i64 160, !115, i64 168, !116, i64 176, !117, i64 184, !118, i64 192, !119, i64 200, !120, i64 208, !121, i64 216, !122, i64 224, !7, i64 232, !17, i64 2792, !17, i64 2832, !17, i64 2872, !17, i64 2912, !17, i64 2952, !17, i64 2992, !52, i64 3032, !52, i64 3040, !52, i64 3048, !52, i64 3056, !52, i64 3064, !52, i64 3072, !52, i64 3080, !52, i64 3088, !52, i64 3096, !52, i64 3104, !52, i64 3112, !52, i64 3120, !52, i64 3128, !129, i64 3136, !29, i64 3288, !46, i64 3296, !29, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !130, i64 3520, !131, i64 3528, !132, i64 3536, !133, i64 3576, !134, i64 3600, !135, i64 3632, !8, i64 3672}
!137 = !{!136, !16, i64 64}
!138 = !{!27, !11, i64 784}
!139 = !{!"p1 _ZTS7_GtkBox", !11, i64 0}
!140 = !{!"p1 _ZTS28dt_iop_gui_blendif_channel_t", !11, i64 0}
!141 = !{!"p1 _ZTS12_GtkNotebook", !11, i64 0}
!142 = !{!"dt_iop_gui_blend_data_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !21, i64 32, !29, i64 40, !29, i64 48, !24, i64 56, !139, i64 64, !139, i64 72, !139, i64 80, !139, i64 88, !139, i64 96, !139, i64 104, !24, i64 112, !24, i64 120, !24, i64 128, !7, i64 136, !24, i64 280, !24, i64 288, !24, i64 296, !24, i64 304, !24, i64 312, !24, i64 320, !24, i64 328, !24, i64 336, !24, i64 344, !24, i64 352, !24, i64 360, !24, i64 368, !8, i64 376, !8, i64 380, !140, i64 384, !8, i64 392, !7, i64 396, !8, i64 460, !8, i64 464, !141, i64 472, !8, i64 480, !24, i64 488, !24, i64 496, !24, i64 504, !7, i64 512, !7, i64 552, !24, i64 576, !24, i64 584, !13, i64 592, !8, i64 600, !24, i64 608, !24, i64 616, !8, i64 624, !17, i64 632}
!143 = !{!142, !8, i64 600}
!144 = !{!"p1 _ZTS9_GtkLabel", !11, i64 0}
!145 = !{!"dt_iop_spots_gui_data_t", !144, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32}
!146 = !{!145, !24, i64 32}
!147 = !{!73, !21, i64 88}
!148 = !{!73, !59, i64 2168}
!149 = !{!"p1 _ZTS17dt_masks_dynbuf_t", !11, i64 0}
!150 = !{!"dt_masks_form_gui_t", !29, i64 0, !149, i64 8, !149, i64 16, !8, i64 24, !33, i64 28, !33, i64 32, !33, i64 36, !33, i64 40, !33, i64 44, !33, i64 48, !33, i64 52, !33, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !33, i64 152, !33, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !21, i64 184, !21, i64 192, !8, i64 200, !8, i64 204, !14, i64 208, !11, i64 216, !11, i64 224}
!151 = !{!150, !8, i64 172}
!152 = !{!150, !21, i64 184}
!153 = !{!145, !24, i64 8}
!154 = !{!145, !24, i64 16}
!155 = !{!145, !24, i64 24}
!156 = !{!145, !144, i64 0}
!157 = !{!73, !58, i64 2160}
!158 = !{!150, !8, i64 176}
!159 = !{!150, !21, i64 192}
!160 = !{!136, !107, i64 104}
!161 = !{!"dt_iop_spots_params_v1_t", !8, i64 0, !7, i64 4}
!162 = !{!161, !8, i64 0}
!163 = !{!32, !8, i64 164}
!164 = !{!"dt_iop_spots_v1_t", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16}
!165 = !{!164, !33, i64 16}
!166 = !{!35, !33, i64 12}
!167 = !{!164, !33, i64 8}
!168 = !{!164, !33, i64 12}
!169 = !{!32, !8, i64 160}
!170 = !{!"dt_dev_history_item_t", !21, i64 0, !8, i64 8, !11, i64 16, !18, i64 24, !7, i64 32, !8, i64 52, !8, i64 56, !7, i64 60, !8, i64 188, !29, i64 192, !8, i64 200, !8, i64 204}
end_hunk_1
