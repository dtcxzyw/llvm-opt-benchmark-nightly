Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_liquify?download=true
inline.NumInlined: 223
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@default_colorspace
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind uwtable
define void @modify_roi_in(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %5 = alloca %struct._cairo_rectangle_int, align 4 ; 7 uses
  %6 = alloca %struct._cairo_rectangle_int, align 16 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !195
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !15
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val22 = load ptr, ptr %i.d, align 16, !tbaa !33
  call fastcc void @_build_global_distortion_map(ptr noundef %0, ptr %.val, ptr %.val22, float noundef %i.b, ptr noundef nonnull %2, ptr noundef %4, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store i32 0, ptr %5, align 4, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = load i32, ptr %i.g, align 16, !tbaa !196
  %i.i = sitofp reassoc nsz arcp contract afn i32 %i.h to float
  %i.j = load float, ptr %i.a, align 4, !tbaa !15 ; 2 uses
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, %i.i
  %i.l = call i64 @llvm.lround.i64.f32(float %i.k)
  %i.m = trunc i64 %i.l to i32
  store i32 %i.m, ptr %i.f, align 4, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.p = load i32, ptr %i.o, align 4, !tbaa !197
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.r = fmul reassoc nsz arcp contract afn float %i.j, %i.q
  %i.s = call i64 @llvm.lround.i64.f32(float %i.r)
  %i.t = trunc i64 %i.s to i32
  store i32 %i.t, ptr %i.n, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.u = load <4 x i32>, ptr %3, align 4, !tbaa !11
  store <4 x i32> %i.u, ptr %6, align 16, !tbaa !11
  %i.v = call ptr @cairo_region_create_rectangle(ptr noundef nonnull %6) #30 ; 4 uses
  %i.w = call i32 @cairo_region_union_rectangle(ptr noundef %i.v, ptr noundef nonnull %4) #30 ; 0 uses
  %i.x = call i32 @cairo_region_intersect_rectangle(ptr noundef %i.v, ptr noundef nonnull %5) #30 ; 0 uses
  call void @cairo_region_get_extents(ptr noundef %i.v, ptr noundef nonnull %6) #30
  %i.y = load <4 x i32>, ptr %6, align 16, !tbaa !11
  store <4 x i32> %i.y, ptr %3, align 4, !tbaa !11
  call void @cairo_region_destroy(ptr noundef %i.v) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_build_global_distortion_map(ptr nofree noundef readonly captures(none) %0, ptr %.8.val, ptr nofree readonly captures(none) %.16.val, float noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #5 {
bb.a:
  %6 = alloca %struct._cairo_rectangle_int, align 16 ; 4 uses
  %7 = alloca %struct._cairo_rectangle_int, align 8 ; 7 uses
  %8 = alloca %struct.distort_params_t, align 8   ; 9 uses
  %9 = alloca %struct.dt_iop_liquify_params_t, align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7600) %9, ptr noundef nonnull align 1 dereferenceable(7600) %.16.val, i64 7600, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  store ptr %i.b, ptr %8, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.8.val, ptr %i.c, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 152
  %i.f = load float, ptr %i.e, align 8, !tbaa !69
  store float %i.f, ptr %i.d, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 20
  store float %1, ptr %i.g, align 4, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 4, ptr %i.h, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2008
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.j) #30 ; 0 uses
  call fastcc void @_distort_paths_locked(ptr noundef readonly %0, ptr noundef %8, ptr noundef nonnull %9)
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2008
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.m) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.o = call fastcc ptr @interpolate_paths(ptr noundef %9) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.p = load <4 x i32>, ptr %2, align 4, !tbaa !11
  store <4 x i32> %i.p, ptr %6, align 16, !tbaa !11
  %i.q = call ptr @cairo_region_create_rectangle(ptr noundef nonnull %6) #30 ; 2 uses
  %i.r = call ptr @cairo_region_create() #30      ; 3 uses
  %.not21.i = icmp eq ptr %i.o, null
  br i1 %.not21.i, label %_get_map_extent.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.023.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.ap, %bb.d ] ; 3 uses
  %.01922.i = phi ptr [ null, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %i.u = load ptr, ptr %.023.i, align 8, !tbaa !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load <2 x float>, ptr %i.u, align 4, !alias.scope !209, !noalias !208 ; 2 uses
  %i.x = load <2 x float>, ptr %i.v, align 4, !alias.scope !209, !noalias !208
  %i.y = fsub reassoc nsz arcp contract afn <2 x float> %i.x, %i.w
  %i.z = call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.y) #31
  %i.aa = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.z)
  %i.ab = fptosi float %i.aa to i32               ; 2 uses
  %i.ac = sub nsw i32 0, %i.ab
  %i.ad = sitofp reassoc nsz arcp contract afn i32 %i.ac to float
  %i.ae = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fadd reassoc nsz arcp contract afn <2 x float> %i.w, %i.af
  %i.ah = fptosi <2 x float> %i.ag to <2 x i32>
  store <2 x i32> %i.ah, ptr %7, align 8, !tbaa !11, !alias.scope !208, !noalias !209
  %i.ai = shl nsw i32 %i.ab, 1
  %i.aj = or disjoint i32 %i.ai, 1                ; 2 uses
  store i32 %i.aj, ptr %i.s, align 4, !tbaa !38, !alias.scope !208, !noalias !209
  store i32 %i.aj, ptr %i.t, align 8, !tbaa !37, !alias.scope !208, !noalias !209
  %i.ak = call i32 @cairo_region_contains_rectangle(ptr noundef %i.q, ptr noundef nonnull %7) #30
  %.not20.i = icmp eq i32 %i.ak, 1
  br i1 %.not20.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = call i32 @cairo_region_union_rectangle(ptr noundef %i.r, ptr noundef nonnull %7) #30 ; 0 uses
  %i.am = load ptr, ptr %.023.i, align 8, !tbaa !74
  %i.an = call ptr @g_slist_prepend(ptr noundef %.01922.i, ptr noundef %i.am) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi ptr [ %i.an, %bb.c ], [ %.01922.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.ao = getelementptr inbounds nuw i8, ptr %.023.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !75 ; 2 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %_get_map_extent.exit, label %bb.b

_get_map_extent.exit:                             ; preds = %bb.d, %bb.a
  %.019.lcssa.i = phi ptr [ null, %bb.a ], [ %.1.i, %bb.d ]
  call void @cairo_region_get_extents(ptr noundef %i.r, ptr noundef nonnull %3) #30
  call void @cairo_region_destroy(ptr noundef %i.r) #30
  call void @cairo_region_destroy(ptr noundef %i.q) #30
  %i.aq = call ptr @g_slist_reverse(ptr noundef %.019.lcssa.i) #30 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.ad, label %bb.e

bb.e:                                             ; preds = %_get_map_extent.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 6 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !38
  %i.av = mul nsw i32 %i.au, %i.as                ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %create_global_distortion_map.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = sext i32 %i.av to i64
  %i.ay = shl nsw i64 %i.ax, 3                    ; 4 uses
  %i.az = call ptr @dt_alloc_aligned(i64 noundef %i.ay) #30 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.az, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.az, i8 0, i64 %i.ay, i1 false)
  %.not86.i = icmp eq ptr %i.aq, null
  br i1 %.not86.i, label %._crit_edge.i, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.g

._crit_edge.i:                                    ; preds = %apply_round_stamp.exit.i, %bb.f
  %.not80.i = icmp eq i32 %4, 0
  br i1 %.not80.i, label %create_global_distortion_map.exit, label %bb.t

bb.g:                                             ; preds = %apply_round_stamp.exit.i, %.lr.ph.i13
  %.07487.i = phi ptr [ %i.aq, %.lr.ph.i13 ], [ %i.kj, %apply_round_stamp.exit.i ] ; 2 uses
  %i.bb = load ptr, ptr %.07487.i, align 8, !tbaa !211 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !77, !alias.scope !212, !noalias !213
  %i.bg = and i32 %i.bf, 2
  %.not.i.i = icmp eq i32 %i.bg, 0
  %.v.i.i = select i1 %.not.i.i, float 5.000000e-01, float 5.000000e-02
  %i.bh = load <2 x float>, ptr %i.bb, align 4, !alias.scope !212, !noalias !213 ; 4 uses
  %i.bi = load <2 x float>, ptr %i.bc, align 4, !alias.scope !212, !noalias !213
  %i.bj = fsub reassoc nsz arcp contract afn <2 x float> %i.bi, %i.bh
  %i.bk = call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.bj) #31
  %i.bl = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.bk)
  %i.bm = fptoui float %i.bl to i64               ; 9 uses
  %i.bn = load <2 x float>, ptr %i.bd, align 4, !alias.scope !212, !noalias !213
  %i.bo = fsub reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bh
  %i.bp = insertelement <2 x float> poison, float %.v.i.i, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul reassoc nsz arcp contract afn <2 x float> %i.bq, %i.bo ; 2 uses
  %i.bs = call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.br) #31 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !78, !alias.scope !212, !noalias !213
  %.fr145.i.i = freeze i32 %i.bu                  ; 2 uses
  %i.bv = icmp eq i32 %.fr145.i.i, 2
  %i.bw = fneg reassoc nsz arcp contract afn float %i.bs
  %i.bx = select reassoc nsz arcp contract afn i1 %i.bv, float %i.bw, float %i.bs
  %i.by = mul i64 %i.bm, 10                       ; 7 uses
  %i.bz = trunc i64 %i.by to i32                  ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !79, !alias.scope !212, !noalias !213 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !80, !alias.scope !212, !noalias !213
  %i.ce = add nsw i32 %i.bz, 2                    ; 2 uses
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  %i.cg = shl nsw i64 %i.cf, 3
  %i.ch = call ptr @dt_alloc_aligned(i64 noundef %i.cg) #30, !noalias !214 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ch, i64 64) ]
  %i.ci = shl nsw i64 %i.cf, 2
  %i.cj = call ptr @dt_alloc_aligned(i64 noundef %i.ci) #30, !noalias !214 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cj, i64 64) ]
  %i.ck = icmp ne ptr %i.ch, null
  %i.cl = icmp ne ptr %i.cj, null
  %or.cond.i.i.i = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %or.cond.i.i.i, label %bb.h, label %build_lookup_table.exit.thread.i.i

build_lookup_table.exit.thread.i.i:               ; preds = %bb.g
  call void @free(ptr noundef %i.ch) #30, !noalias !214
  call void @free(ptr noundef %i.cj) #30, !noalias !214
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.59) #30, !noalias !214
  br label %apply_round_stamp.exit.i

bb.h:                                             ; preds = %bb.g
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cd, 3.000000e+00 ; 2 uses
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cb, 3.000000e+00 ; 3 uses
  %i.co = fadd reassoc nsz arcp contract afn float %i.cn, 1.000000e+00
  %i.cp = fsub reassoc nsz arcp contract afn float %i.co, %i.cm ; 2 uses
  %i.cq = sitofp reassoc nsz arcp contract afn i32 %i.ce to float
  %i.cr = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.cq ; 6 uses
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.ch, align 64, !noalias !214
  %.05664.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 6 uses
  %i.cs = icmp sgt i32 %i.bz, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i, label %interpolate_cubic_bezier.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h
  %.neg60.i.i.i.i = fmul reassoc nsz arcp contract afn float %i.cb, -6.000000e+00
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cm, %.neg60.i.i.i.i ; 2 uses
  %i.cu = and i64 %i.by, 2147483646               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.cu, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %i.by, 2147483640              ; 5 uses
  %i.cv = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.cw = getelementptr i8, ptr %.05664.i.i.i.i, i64 %i.cv ; 2 uses
  %i.cx = trunc nuw nsw i64 %n.vec to i32
  %i.cy = or disjoint i32 %i.cx, 1
  %i.cz = uitofp nneg i64 %n.vec to float
  %i.da = fmul reassoc nsz arcp contract afn float %i.cr, %i.cz
  %i.db = fadd reassoc nsz arcp contract afn float %i.cr, %i.da
  %i.dc = getelementptr i8, ptr %i.ch, i64 %i.cv  ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ct, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert60 = insertelement <8 x float> poison, float %i.cp, i64 0
  %broadcast.splat61 = shufflevector <8 x float> %broadcast.splatinsert60, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert62 = insertelement <8 x float> poison, float %i.cn, i64 0
  %broadcast.splat63 = shufflevector <8 x float> %broadcast.splatinsert62, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert64 = insertelement <8 x float> poison, float %i.cr, i64 0
  %broadcast.splat65 = shufflevector <8 x float> %broadcast.splatinsert64, <8 x float> poison, <8 x i32> zeroinitializer
  %induction = fmul reassoc nnan nsz arcp contract afn <8 x float> %broadcast.splat65, <float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00>
  %i.dd = fmul reassoc nnan nsz arcp contract afn float %i.cr, 8.000000e+00
  %broadcast.splatinsert66 = insertelement <8 x float> poison, float %i.dd, i64 0
  %broadcast.splat67 = shufflevector <8 x float> %broadcast.splatinsert66, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x float> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 7 uses
  %i.de = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.05664.i.i.i.i, i64 %i.de
  %i.df = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind, %broadcast.splat61
  %i.dg = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind, splat (float 2.000000e+00)
  %i.dh = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.df
  %i.di = fadd reassoc nsz arcp contract afn <8 x float> %i.dg, splat (float -3.000000e+00)
  %i.dj = fmul reassoc nsz arcp contract afn <8 x float> %i.dh, %vec.ind
  %i.dk = fadd reassoc nsz arcp contract afn <8 x float> %i.dj, %broadcast.splat63
  %i.dl = fmul reassoc nsz arcp contract afn <8 x float> %i.dk, %vec.ind
  %i.dm = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind, %vec.ind
  %i.dn = fmul reassoc nsz arcp contract afn <8 x float> %i.dm, %i.di
  %i.do = fadd reassoc nsz arcp contract afn <8 x float> %i.dn, splat (float 1.000000e+00)
  %interleaved.vec = shufflevector <8 x float> %i.dl, <8 x float> %i.do, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 8, !noalias !214
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind, %broadcast.splat67
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br i1 %cmp.n, label %interpolate_cubic_bezier.exit.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.05668.i.i.i.i.ph = phi ptr [ %.05664.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.cw, %middle.block ]
  %.067.i.i.i.i.ph = phi i32 [ 1, %.lr.ph.i.i.i.i ], [ %i.cy, %middle.block ]
  %.05566.i.i.i.i.ph = phi float [ %i.cr, %.lr.ph.i.i.i.i ], [ %i.db, %middle.block ]
  %.pn65.i.i.i.i.ph = phi ptr [ %i.ch, %.lr.ph.i.i.i.i ], [ %i.dc, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.05668.i.i.i.i = phi ptr [ %.056.i.i.i.i, %scalar.ph ], [ %.05668.i.i.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  %.067.i.i.i.i = phi i32 [ %i.ec, %scalar.ph ], [ %.067.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.05566.i.i.i.i = phi float [ %i.eb, %scalar.ph ], [ %.05566.i.i.i.i.ph, %scalar.ph.preheader ] ; 7 uses
  %.pn65.i.i.i.i = phi ptr [ %.05668.i.i.i.i, %scalar.ph ], [ %.pn65.i.i.i.i.ph, %scalar.ph.preheader ]
  %i.dq = fmul reassoc nsz arcp contract afn float %.05566.i.i.i.i, %i.cp
  %i.dr = fmul reassoc nsz arcp contract afn float %.05566.i.i.i.i, 2.000000e+00
  %i.ds = fadd reassoc nsz arcp contract afn float %i.ct, %i.dq
  %i.dt = fadd reassoc nsz arcp contract afn float %i.dr, -3.000000e+00
  %i.du = fmul reassoc nsz arcp contract afn float %i.ds, %.05566.i.i.i.i
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, %i.cn
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dv, %.05566.i.i.i.i
  %i.dx = fmul reassoc nsz arcp contract afn float %.05566.i.i.i.i, %.05566.i.i.i.i
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, %i.dt
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, 1.000000e+00
  %i.ea = getelementptr inbounds nuw i8, ptr %.pn65.i.i.i.i, i64 12
  store float %i.dw, ptr %.05668.i.i.i.i, align 4, !noalias !214
  store float %i.dz, ptr %i.ea, align 4, !noalias !214
  %i.eb = fadd reassoc nsz arcp contract afn float %.05566.i.i.i.i, %i.cr
  %i.ec = add nuw nsw i32 %.067.i.i.i.i, 1
  %.056.i.i.i.i = getelementptr inbounds nuw i8, ptr %.05668.i.i.i.i, i64 8 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %.067.i.i.i.i, %i.bz
  br i1 %exitcond.not.i.i.i.i, label %interpolate_cubic_bezier.exit.i.i.i, label %scalar.ph, !llvm.loop !205

interpolate_cubic_bezier.exit.i.i.i:              ; preds = %scalar.ph, %middle.block, %bb.h
  %.pn.lcssa.i.i.i.i = phi ptr [ %i.ch, %bb.h ], [ %i.dc, %middle.block ], [ %.05668.i.i.i.i, %scalar.ph ]
  %.056.lcssa.i.i.i.i = phi ptr [ %.05664.i.i.i.i, %bb.h ], [ %i.cw, %middle.block ], [ %.056.i.i.i.i, %scalar.ph ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.pn.lcssa.i.i.i.i, i64 12
  store float 1.000000e+00, ptr %.056.lcssa.i.i.i.i, align 4, !noalias !214
  store float 0.000000e+00, ptr %i.ed, align 4, !noalias !214
  %sext.i.i = mul i64 %i.bm, 42949672960
  %.idx.i.i.i = ashr exact i64 %sext.i.i, 29
  %i.ee = getelementptr inbounds i8, ptr %.05664.i.i.i.i, i64 %.idx.i.i.i
  %i.ef = sitofp reassoc nsz arcp contract afn i32 %i.bz to float
  %i.eg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ef
  store float 1.000000e+00, ptr %i.cj, align 64, !tbaa !13, !noalias !214
  %.05256.i.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %i.eh = icmp sgt i32 %i.bz, 1
  br i1 %i.eh, label %.lr.ph.i.i.i, label %build_lookup_table.exit.thread124.i.i

build_lookup_table.exit.thread124.i.i:            ; preds = %interpolate_cubic_bezier.exit.i.i.i
  store float 0.000000e+00, ptr %.05256.i.i.i, align 4, !tbaa !13, !noalias !214
  br label %bb.k

.lr.ph.i.i.i:                                     ; preds = %interpolate_cubic_bezier.exit.i.i.i, %bb.j
  %.05260.i.i.i = phi ptr [ %.052.i.i.i, %bb.j ], [ %.05256.i.i.i, %interpolate_cubic_bezier.exit.i.i.i ] ; 2 uses
  %.04959.i.i.i = phi i32 [ %i.fa, %bb.j ], [ 1, %interpolate_cubic_bezier.exit.i.i.i ]
  %.05058.i.i.i = phi float [ %i.ei, %bb.j ], [ 0.000000e+00, %interpolate_cubic_bezier.exit.i.i.i ]
  %.05157.i.i.i = phi ptr [ %.1.i.i.i, %bb.j ], [ %.05664.i.i.i.i, %interpolate_cubic_bezier.exit.i.i.i ]
  %i.ei = fadd reassoc nsz arcp contract afn float %.05058.i.i.i, %i.eg ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %.1.i.i.i = phi ptr [ %.05157.i.i.i, %.lr.ph.i.i.i ], [ %i.en, %bb.i ] ; 7 uses
  %i.ej = load float, ptr %.1.i.i.i, align 4, !noalias !214 ; 2 uses
  %i.ek = fcmp reassoc nsz arcp contract afn olt float %i.ej, %i.ei
  %i.el = icmp ult ptr %.1.i.i.i, %i.ee           ; 2 uses
  %i.em = select i1 %i.ek, i1 %i.el, i1 false
  %i.en = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 8
  br i1 %i.em, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eo = getelementptr inbounds i8, ptr %.1.i.i.i, i64 -8
  %i.ep = load float, ptr %i.eo, align 4, !noalias !214 ; 2 uses
  %i.eq = fsub reassoc nsz arcp contract afn float %i.ej, %i.ep
  %i.er = fsub reassoc nsz arcp contract afn float %i.ei, %i.ep
  %i.es = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  %i.et = load float, ptr %i.es, align 4, !noalias !214 ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %.1.i.i.i, i64 -4
  %i.ev = load float, ptr %i.eu, align 4, !noalias !214
  %i.ew = fsub reassoc nsz arcp contract afn float %i.et, %i.ev
  %i.ex = fmul reassoc nsz arcp contract afn float %i.ew, %i.er
  %i.ey = fdiv reassoc nsz arcp contract afn float %i.ex, %i.eq
  %i.ez = fadd reassoc nsz arcp contract afn float %i.ey, %i.et
  store float %i.ez, ptr %.05260.i.i.i, align 4, !tbaa !13, !noalias !214
  %i.fa = add nuw nsw i32 %.04959.i.i.i, 1        ; 2 uses
  %.052.i.i.i = getelementptr inbounds nuw i8, ptr %.05260.i.i.i, i64 4 ; 2 uses
  %i.fb = icmp slt i32 %i.fa, %i.bz
  %i.fc = select i1 %i.fb, i1 %i.el, i1 false
  br i1 %i.fc, label %.lr.ph.i.i.i, label %build_lookup_table.exit.i.i

build_lookup_table.exit.i.i:                      ; preds = %bb.j
  store float 0.000000e+00, ptr %.052.i.i.i, align 4, !tbaa !13, !noalias !214
  br label %bb.k

bb.k:                                             ; preds = %build_lookup_table.exit.i.i, %build_lookup_table.exit.thread124.i.i
  call void @free(ptr noundef %i.ch) #30, !noalias !214
  %i.fd = load i32, ptr %i.ar, align 4, !tbaa !37, !alias.scope !213, !noalias !212
  %i.fe = sext i32 %i.fd to i64                   ; 3 uses
  %10 = extractelement <2 x float> %i.bh, i64 0
  %11 = call reassoc nsz arcp contract afn float @llvm.round.f32(float %10)
  %i.ff = fptoui float %11 to i64
  %i.fg = extractelement <2 x float> %i.bh, i64 1
  %12 = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.fg)
  %i.fh = fptoui float %12 to i64
  %i.fi = load i32, ptr %i.ba, align 4, !tbaa !36, !alias.scope !213, !noalias !212
  %i.fj = sext i32 %i.fi to i64
  %i.fk = sub i64 %i.fh, %i.fj
  %i.fl = mul i64 %i.fk, %i.fe
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.ff
  %i.fo = load i32, ptr %3, align 4, !tbaa !35, !alias.scope !213, !noalias !212
  %i.fp = sext i32 %i.fo to i64
  %i.fq = sub nsw i64 0, %i.fp
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.fq ; 4 uses
  %i.fs = icmp eq i32 %.fr145.i.i, 0
  %i.ft = fneg reassoc nsz arcp contract afn <2 x float> %i.br ; 2 uses
  br i1 %i.fs, label %.split140.us.us.i.i, label %.split140.preheader.i.i

.split140.preheader.i.i:                          ; preds = %bb.k
  %i.fu = uitofp reassoc nsz arcp contract afn i64 %i.bm to float
  %factor.op.fmul.i = fdiv reassoc nsz arcp contract afn float %i.bx, %i.fu ; 3 uses
  br label %.split140.i.i

.split140.us.us.i.i:                              ; preds = %bb.k, %.critedge.split.us.us.i.i
  %.0112141.us.i.i = phi i64 [ %i.hv, %.critedge.split.us.us.i.i ], [ 0, %bb.k ] ; 5 uses
  %i.fv = mul i64 %.0112141.us.i.i, %.0112141.us.i.i
  %i.fw = uitofp reassoc nsz arcp contract afn i64 %i.fv to float ; 2 uses
  %i.fx = mul i64 %.0112141.us.i.i, %i.fe         ; 2 uses
  %i.fy = sub i64 0, %i.fx
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.fy ; 4 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fx ; 2 uses
  %.not137.us.i.i = icmp eq i64 %.0112141.us.i.i, 0
  br i1 %.not137.us.i.i, label %.split140.us.us.split.us.i.i, label %.split140.us.us.split.i.i

.split140.us.us.split.us.i.i:                     ; preds = %.split140.us.us.i.i, %.thread.us.us.us.i.i
  %.0139.us.us.us.i.i = phi i64 [ %i.gu, %.thread.us.us.us.i.i ], [ 0, %.split140.us.us.i.i ] ; 5 uses
  %i.gb = uitofp reassoc nsz arcp contract afn i64 %.0139.us.us.us.i.i to float ; 2 uses
  %i.gc = fmul reassoc nnan nsz arcp contract afn float %i.gb, %i.gb
  %i.gd = fadd reassoc nnan nsz arcp contract afn float %i.gc, %i.fw
  %i.ge = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.gd)
  %i.gf = fmul reassoc nnan nsz arcp contract afn float %i.ge, 1.000000e+01
  %i.gg = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.gf)
  %i.gh = fptoui float %i.gg to i64               ; 2 uses
  %.not120.us.us.us.i.i = icmp ugt i64 %i.by, %i.gh
  br i1 %.not120.us.us.us.i.i, label %bb.l, label %.critedge.split.us.us.i.i

bb.l:                                             ; preds = %.split140.us.us.split.us.i.i
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.0139.us.us.us.i.i ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.gh
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !13, !noalias !214
  %i.gl = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = fmul reassoc nsz arcp contract afn <2 x float> %i.gm, %i.ft ; 2 uses
  %i.go = load <2 x float>, ptr %i.gi, align 8, !noalias !214
  %i.gp = fadd reassoc nsz arcp contract afn <2 x float> %i.go, %i.gn
  store <2 x float> %i.gp, ptr %i.gi, align 8, !noalias !214
  %.not135.us.us.us.i.i = icmp eq i64 %.0139.us.us.us.i.i, 0
  br i1 %.not135.us.us.us.i.i, label %.thread.us.us.us.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gq = sub i64 0, %.0139.us.us.us.i.i
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.gq ; 2 uses
  %i.gs = load <2 x float>, ptr %i.gr, align 8, !noalias !214
  %i.gt = fadd reassoc nsz arcp contract afn <2 x float> %i.gs, %i.gn
  store <2 x float> %i.gt, ptr %i.gr, align 8, !noalias !214
  br label %.thread.us.us.us.i.i

.thread.us.us.us.i.i:                             ; preds = %bb.m, %bb.l
  %i.gu = add i64 %.0139.us.us.us.i.i, 1          ; 2 uses
  %.not119.us.us.us.i.i = icmp ugt i64 %i.gu, %i.bm
  br i1 %.not119.us.us.us.i.i, label %.critedge.split.us.us.i.i, label %.split140.us.us.split.us.i.i

.split140.us.us.split.i.i:                        ; preds = %.split140.us.us.i.i, %bb.o
  %.0139.us.us.i.i = phi i64 [ %i.hu, %bb.o ], [ 0, %.split140.us.us.i.i ] ; 6 uses
  %i.gv = uitofp reassoc nsz arcp contract afn i64 %.0139.us.us.i.i to float ; 2 uses
  %i.gw = fmul reassoc nnan nsz arcp contract afn float %i.gv, %i.gv
  %i.gx = fadd reassoc nnan nsz arcp contract afn float %i.gw, %i.fw
  %i.gy = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.gx)
  %i.gz = fmul reassoc nnan nsz arcp contract afn float %i.gy, 1.000000e+01
  %i.ha = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.gz)
  %i.hb = fptoui float %i.ha to i64               ; 2 uses
  %.not120.us.us.i.i = icmp ugt i64 %i.by, %i.hb
  br i1 %.not120.us.us.i.i, label %bb.n, label %.critedge.split.us.us.i.i

bb.n:                                             ; preds = %.split140.us.us.split.i.i
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.0139.us.us.i.i ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.0139.us.us.i.i ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.hb
  %i.hf = load float, ptr %i.he, align 4, !tbaa !13, !noalias !214
  %i.hg = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = fmul reassoc nsz arcp contract afn <2 x float> %i.hh, %i.ft ; 4 uses
  %i.hj = load <2 x float>, ptr %i.hc, align 8, !noalias !214
  %i.hk = fadd reassoc nsz arcp contract afn <2 x float> %i.hj, %i.hi
  store <2 x float> %i.hk, ptr %i.hc, align 8, !noalias !214
  %.not135.us.us.i.i = icmp eq i64 %.0139.us.us.i.i, 0
  br i1 %.not135.us.us.i.i, label %bb.o, label %.split.us.us.i.i

.split.us.us.i.i:                                 ; preds = %bb.n
  %i.hl = sub i64 0, %.0139.us.us.i.i             ; 2 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.hl ; 2 uses
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.hl ; 2 uses
  %i.ho = load <2 x float>, ptr %i.hn, align 8, !noalias !214
  %i.hp = fadd reassoc nsz arcp contract afn <2 x float> %i.ho, %i.hi
  store <2 x float> %i.hp, ptr %i.hn, align 8, !noalias !214
  %i.hq = load <2 x float>, ptr %i.hm, align 8, !noalias !214
  %i.hr = fadd reassoc nsz arcp contract afn <2 x float> %i.hq, %i.hi
  store <2 x float> %i.hr, ptr %i.hm, align 8, !noalias !214
  br label %bb.o

bb.o:                                             ; preds = %.split.us.us.i.i, %bb.n
  %i.hs = load <2 x float>, ptr %i.hd, align 8, !noalias !214
  %i.ht = fadd reassoc nsz arcp contract afn <2 x float> %i.hs, %i.hi
  store <2 x float> %i.ht, ptr %i.hd, align 8, !noalias !214
  %i.hu = add i64 %.0139.us.us.i.i, 1             ; 2 uses
  %.not119.us.us.i.i = icmp ugt i64 %i.hu, %i.bm
  br i1 %.not119.us.us.i.i, label %.critedge.split.us.us.i.i, label %.split140.us.us.split.i.i

.critedge.split.us.us.i.i:                        ; preds = %bb.o, %.split140.us.us.split.i.i, %.thread.us.us.us.i.i, %.split140.us.us.split.us.i.i
  %i.hv = add i64 %.0112141.us.i.i, 1             ; 2 uses
  %.not118.us.i.i = icmp ugt i64 %i.hv, %i.bm
  br i1 %.not118.us.i.i, label %.split144.us.i.i, label %.split140.us.us.i.i

.split144.us.i.i:                                 ; preds = %.critedge.split.i.i, %.critedge.split.us.us.i.i
  call void @free(ptr noundef %i.cj) #30, !noalias !214
  br label %apply_round_stamp.exit.i

.split140.i.i:                                    ; preds = %.critedge.split.i.i, %.split140.preheader.i.i
  %.0112141.i.i = phi i64 [ %i.kh, %.critedge.split.i.i ], [ 0, %.split140.preheader.i.i ] ; 6 uses
  %i.hw = uitofp reassoc nsz arcp contract afn i64 %.0112141.i.i to float ; 4 uses
  %i.hx = mul i64 %.0112141.i.i, %.0112141.i.i
  %i.hy = uitofp reassoc nsz arcp contract afn i64 %i.hx to float ; 2 uses
  %i.hz = mul i64 %.0112141.i.i, %i.fe            ; 2 uses
  %i.ia = sub i64 0, %i.hz
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ia ; 4 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.hz ; 2 uses
  %i.id = fneg reassoc nsz arcp contract afn float %i.hw
  %.not134.i.i = icmp eq i64 %.0112141.i.i, 0
  br i1 %.not134.i.i, label %.split140.i.split.us.preheader.i, label %.split140.i.split.i.preheader

.split140.i.split.i.preheader:                    ; preds = %.split140.i.i
  %i.ie = insertelement <2 x float> poison, float %i.id, i64 1
  br label %.split140.i.split.i

.split140.i.split.us.preheader.i:                 ; preds = %.split140.i.i
  %invariant.op.i = fmul reassoc nsz arcp contract afn float %factor.op.fmul.i, %i.hw
  %i.if = insertelement <2 x float> poison, float %invariant.op.i, i64 1
  br label %.split140.i.split.us.i

.split140.i.split.us.i:                           ; preds = %.thread128.i.us.i, %.split140.i.split.us.preheader.i
  %.0139.i.us.i = phi i64 [ %i.jc, %.thread128.i.us.i ], [ 0, %.split140.i.split.us.preheader.i ] ; 5 uses
  %i.ig = uitofp reassoc nsz arcp contract afn i64 %.0139.i.us.i to float ; 3 uses
  %i.ih = fmul reassoc nnan nsz arcp contract afn float %i.ig, %i.ig
  %i.ii = fadd reassoc nnan nsz arcp contract afn float %i.ih, %i.hy
  %i.ij = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.ii)
  %i.ik = fmul reassoc nnan nsz arcp contract afn float %i.ij, 1.000000e+01
  %i.il = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.ik)
  %i.im = fptoui float %i.il to i64               ; 2 uses
  %.not120.i.us.i = icmp ugt i64 %i.by, %i.im
  br i1 %.not120.i.us.i, label %bb.p, label %.critedge.split.i.i

bb.p:                                             ; preds = %.split140.i.split.us.i
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %.0139.i.us.i ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.im
  %i.ip = load float, ptr %i.io, align 4, !tbaa !13, !noalias !214
  %.reass.us.i = fmul reassoc nsz arcp contract afn float %factor.op.fmul.i, %i.ig
  %i.iq = insertelement <2 x float> %i.if, float %.reass.us.i, i64 0
  %i.ir = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.is = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = fmul reassoc nsz arcp contract afn <2 x float> %i.iq, %i.is ; 3 uses
  %i.iu = load <2 x float>, ptr %i.in, align 8, !noalias !214 ; 2 uses
  %i.iv = fsub reassoc nsz arcp contract afn <2 x float> %i.iu, %i.it
  %i.iw = fadd reassoc nsz arcp contract afn <2 x float> %i.iu, %i.it
  %i.ix = shufflevector <2 x float> %i.iv, <2 x float> %i.iw, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ix, ptr %i.in, align 8, !noalias !214
  %.not132.i.us.i = icmp eq i64 %.0139.i.us.i, 0
  br i1 %.not132.i.us.i, label %.thread128.i.us.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.iy = sub i64 0, %.0139.i.us.i
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.iy ; 2 uses
  %i.ja = load <2 x float>, ptr %i.iz, align 8, !noalias !214
  %i.jb = fadd reassoc nsz arcp contract afn <2 x float> %i.ja, %i.it
  store <2 x float> %i.jb, ptr %i.iz, align 8, !noalias !214
  br label %.thread128.i.us.i

.thread128.i.us.i:                                ; preds = %bb.q, %bb.p
  %i.jc = add i64 %.0139.i.us.i, 1                ; 2 uses
  %.not119.i.us.i = icmp ugt i64 %i.jc, %i.bm
  br i1 %.not119.i.us.i, label %.critedge.split.i.i, label %.split140.i.split.us.i

.split140.i.split.i:                              ; preds = %.split140.i.split.i.preheader, %bb.s
  %.0139.i.i = phi i64 [ %i.kg, %bb.s ], [ 0, %.split140.i.split.i.preheader ] ; 6 uses
  %i.jd = uitofp reassoc nsz arcp contract afn i64 %.0139.i.i to float ; 3 uses
  %i.je = fmul reassoc nnan nsz arcp contract afn float %i.jd, %i.jd
  %i.jf = fadd reassoc nnan nsz arcp contract afn float %i.je, %i.hy
  %i.jg = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.jf)
  %i.jh = fmul reassoc nnan nsz arcp contract afn float %i.jg, 1.000000e+01
  %i.ji = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.jh)
  %i.jj = fptoui float %i.ji to i64               ; 2 uses
  %.not120.i.i = icmp ugt i64 %i.by, %i.jj
  br i1 %.not120.i.i, label %bb.r, label %.critedge.split.i.i

bb.r:                                             ; preds = %.split140.i.split.i
end_hunk_0
begin_hunk_1_@interpolate_paths:bb.a
  %or.cond3.i113 = select i1 %i.mt, i1 %i.mu, i1 false
  br i1 %or.cond3.i113, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %point_at_arc_length.exit
  %.sink86.i118 = phi float [ f0x40490FDB, %point_at_arc_length.exit ], [ f0xC0490FDB, %bb.p ]
  %.sink.i119 = phi float [ f0xC0490FDB, %point_at_arc_length.exit ], [ f0x40490FDB, %bb.p ]
  %.neg132 = fsub reassoc nsz arcp contract afn float %i.mp, %.sink86.i118 ; 2 uses
  %.neg133 = fsub reassoc nsz arcp contract afn float %.neg132, %i.mq
  %i.mv = fadd reassoc nsz arcp contract afn float %.neg133, %.sink.i119
  %.neg135 = fadd reassoc nsz arcp contract afn float %.neg132, f0x40490FDB
  %i.mw = fmul reassoc nsz arcp contract afn float %i.kn, %i.mv
  %i.mx = fsub reassoc nsz arcp contract afn float %.neg135, %i.mw
  br label %mix_warps.exit120

bb.r:                                             ; preds = %bb.p
  %i.my = fsub reassoc nsz arcp contract afn float %i.mq, %i.mp
  %i.mz = fmul reassoc nsz arcp contract afn float %i.my, %i.kn
  %i.na = fadd reassoc nsz arcp contract afn float %i.mz, %i.mp
  br label %mix_warps.exit120

mix_warps.exit120:                                ; preds = %bb.q, %bb.r
  %i.nb = phi reassoc nsz arcp contract afn float [ %i.mx, %bb.q ], [ %i.na, %bb.r ] ; 2 uses
  %i.nc = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.mo) #31
  %i.nd = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.mm) #31 ; 2 uses
  %i.ne = fsub reassoc nsz arcp contract afn float %i.nc, %i.nd
  %i.nf = fmul reassoc nsz arcp contract afn float %i.ne, %i.kn
  %i.ng = fadd reassoc nsz arcp contract afn float %i.nf, %i.nd
  %i.nh = fmul reassoc nsz arcp contract afn float %i.nb, 0.000000e+00
  %.sroa.04.0.vec.insert.i114 = insertelement <2 x float> poison, float %i.nh, i64 0
  %.sroa.04.4.vec.insert.i115 = insertelement <2 x float> %.sroa.04.0.vec.insert.i114, float %i.nb, i64 1
  %i.ni = tail call reassoc nsz arcp contract afn <2 x float> @cexpf(<2 x float> noundef %.sroa.04.4.vec.insert.i115) #31
  %i.nj = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.nk = insertelement <2 x float> poison, float %i.ng, i64 0
  %i.nl = shufflevector <2 x float> %i.nk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nm = fmul reassoc nsz arcp contract afn <2 x float> %i.nl, %i.ni
  %i.nn = fadd reassoc nsz arcp contract afn <2 x float> %i.nm, %i.li
  store <2 x float> %i.nn, ptr %i.nj, align 4
  store <2 x float> %i.li, ptr %i.km, align 4
  %i.no = getelementptr inbounds nuw i8, ptr %i.km, i64 36
  store i32 2, ptr %i.no, align 4, !tbaa !77
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.li, %i.li
  %.sroa.0.4.vec.insert = insertelement <2 x float> %foldExtExtBinop, float %i.ly, i64 0
  %i.np = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %.sroa.0.4.vec.insert) #31
  %i.nq = fmul reassoc nsz arcp contract afn float %i.np, 1.000000e-01
  %i.nr = fadd reassoc nsz arcp contract afn float %i.nq, %.092155 ; 2 uses
  %i.ns = tail call ptr @g_list_append(ptr noundef %.3157, ptr noundef nonnull %i.km) #30 ; 2 uses
  %i.nt = fcmp reassoc nsz arcp contract afn olt float %i.nr, %i.kb
  br i1 %i.nt, label %bb.m, label %get_arc_length.exit._crit_edge

get_arc_length.exit._crit_edge:                   ; preds = %mix_warps.exit120, %get_arc_length.exit.preheader
  %.3.lcssa = phi ptr [ %.0163, %get_arc_length.exit.preheader ], [ %i.ns, %mix_warps.exit120 ]
  tail call void @free(ptr noundef nonnull %i.cs) #30
  br label %.loopexit

.loopexit:                                        ; preds = %mix_warps.exit, %bb.g, %bb.d, %bb.e, %get_arc_length.exit._crit_edge, %bb.f
  %.6.ph = phi ptr [ %.0163, %bb.f ], [ %.3.lcssa, %get_arc_length.exit._crit_edge ], [ %.0163, %bb.d ], [ %i.j, %bb.e ], [ %.0163, %bb.g ], [ %i.cq, %mix_warps.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %bb.s, label %bb.b

bb.s:                                             ; preds = %bb.b, %.loopexit
  %.0.lcssa = phi ptr [ %.0163, %bb.b ], [ %.6.ph, %.loopexit ]
  ret ptr %.0.lcssa
}

declare void @g_slist_free(ptr noundef) local_unnamed_addr #3

declare void @g_list_free_full(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cairo_region_create() local_unnamed_addr #3

declare i32 @cairo_region_contains_rectangle(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_slist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_slist_reverse(ptr noundef) local_unnamed_addr #3

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

declare ptr @dt_interpolation_new(i32 noundef) local_unnamed_addr #3

declare float @dt_interpolation_compute_sample(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_interpolation_compute_pixel4c(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #25

declare ptr @gtk_label_get_text(ptr noundef) local_unnamed_addr #3

declare void @gtk_label_set_text(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #26

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @cairo_set_line_cap(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dt_iop_canvas_not_sensitive(ptr noundef) local_unnamed_addr #3

declare void @cairo_push_group(ptr noundef) local_unnamed_addr #3

declare void @cairo_new_path(ptr noundef) local_unnamed_addr #3

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_fill(ptr noundef) local_unnamed_addr #3

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #3

declare void @cairo_fill_preserve(ptr noundef) local_unnamed_addr #3

declare void @cairo_curve_to(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_stroke_preserve(ptr noundef) local_unnamed_addr #3

declare void @cairo_pop_group_to_source(ptr noundef) local_unnamed_addr #3

declare void @cairo_paint_with_alpha(ptr noundef, double noundef) local_unnamed_addr #3

declare void @cairo_save(ptr noundef) local_unnamed_addr #3

declare void @cairo_new_sub_path(ptr noundef) local_unnamed_addr #3

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_restore(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #3

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_rotate(ptr noundef, double noundef) local_unnamed_addr #3

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #3

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @dt_dev_get_preview_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_dev_distort_backtransform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare float @dt_dev_get_zoom_scale_full() local_unnamed_addr #3

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_control_queue_redraw_center() local_unnamed_addr #3

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #3

declare ptr @dt_ui_main_window(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @dt_conf_get_float(ptr noundef) local_unnamed_addr #3

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_iop_request_focus(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @cairo_set_dash(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmin.v8f32(<8 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v8f32(<8 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #29

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #30 = { nounwind }
attributes #31 = { nounwind willreturn memory(none) }
attributes #32 = { nounwind allocsize(0) }
attributes #33 = { nounwind willreturn memory(read) }
attributes #34 = { nounwind allocsize(0,1) }

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
!11 = !{!8, !8, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !12, i64 16}
!15 = !{!14, !12, i64 16}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!"p1 _ZTS15dt_iop_module_t", !16, i64 0}
!18 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !16, i64 0}
!19 = !{!"p1 _ZTS18dt_histogram_roi_t", !16, i64 0}
!20 = !{!"dt_dev_histogram_collection_params_t", !19, i64 0, !8, i64 8}
!21 = !{!"p1 int", !16, i64 0}
!22 = !{!"long", !7, i64 0}
!23 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !22, i64 8, !8, i64 16, !8, i64 20}
!24 = !{!"short", !7, i64 0}
!25 = !{!"", !24, i64 0, !24, i64 2}
!26 = !{!"", !8, i64 0, !7, i64 16}
!27 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !25, i64 48, !26, i64 64, !7, i64 96, !8, i64 112}
!28 = !{!"p1 _ZTS11_GHashTable", !16, i64 0}
!29 = !{!"p1 float", !16, i64 0}
!30 = !{!"dt_dev_distorted_mask_cache_t", !29, i64 0, !14, i64 8, !22, i64 32, !22, i64 40}
!31 = !{!"dt_dev_pixelpipe_iop_t", !17, i64 0, !18, i64 8, !16, i64 16, !16, i64 24, !8, i64 32, !8, i64 36, !20, i64 40, !21, i64 56, !23, i64 64, !7, i64 88, !12, i64 104, !8, i64 108, !8, i64 112, !22, i64 120, !8, i64 128, !8, i64 132, !14, i64 136, !14, i64 156, !14, i64 176, !14, i64 196, !8, i64 216, !8, i64 220, !27, i64 224, !27, i64 352, !7, i64 480, !8, i64 516, !28, i64 520, !30, i64 528, !30, i64 576}
!32 = !{!31, !18, i64 8}
!33 = !{!31, !16, i64 16}
!34 = !{!"_cairo_rectangle_int", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!35 = !{!34, !8, i64 0}
!36 = !{!34, !8, i64 4}
!37 = !{!34, !8, i64 8}
!38 = !{!34, !8, i64 12}
!39 = !{!"p1 _ZTS8_GModule", !16, i64 0}
!40 = !{!"p1 _ZTS12dt_develop_t", !16, i64 0}
!41 = !{!"dt_pthread_mutex_t", !7, i64 0}
!42 = !{!"p1 _ZTS25dt_develop_blend_params_t", !16, i64 0}
!43 = !{!"", !28, i64 0, !28, i64 8}
!44 = !{!"", !17, i64 0, !8, i64 8}
!45 = !{!"", !43, i64 0, !44, i64 16}
!46 = !{!"p1 _ZTS10_GtkWidget", !16, i64 0}
!47 = !{!"p1 _ZTS7_GSList", !16, i64 0}
!48 = !{!"p1 _ZTS18dt_iop_module_so_t", !16, i64 0}
!49 = !{!"dt_iop_module_t", !8, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !16, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !16, i64 328, !16, i64 336, !16, i64 344, !16, i64 352, !16, i64 360, !16, i64 368, !16, i64 376, !16, i64 384, !16, i64 392, !16, i64 400, !16, i64 408, !16, i64 416, !16, i64 424, !16, i64 432, !16, i64 440, !39, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !21, i64 608, !23, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !40, i64 664, !8, i64 672, !8, i64 676, !16, i64 680, !16, i64 688, !8, i64 696, !16, i64 704, !41, i64 712, !16, i64 752, !16, i64 760, !42, i64 768, !42, i64 776, !16, i64 784, !45, i64 792, !46, i64 824, !46, i64 832, !46, i64 840, !46, i64 848, !46, i64 856, !46, i64 864, !46, i64 872, !8, i64 880, !46, i64 888, !46, i64 896, !46, i64 904, !47, i64 912, !47, i64 920, !46, i64 928, !46, i64 936, !8, i64 944, !48, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !46, i64 1096, !16, i64 1104, !8, i64 1112}
!50 = !{!49, !40, i64 664}
!51 = !{!"", !40, i64 0, !18, i64 8, !12, i64 16, !12, i64 20, !8, i64 24}
!52 = !{!51, !40, i64 0}
!53 = !{!51, !18, i64 8}
!54 = !{!"any p2 pointer", !16, i64 0}
!55 = !{!"p1 long", !16, i64 0}
!56 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !16, i64 0}
!57 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !22, i64 8, !22, i64 16, !54, i64 24, !55, i64 32, !56, i64 40, !55, i64 48, !21, i64 56, !21, i64 64, !22, i64 72, !8, i64 80, !22, i64 88, !22, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!58 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !16, i64 0}
!59 = !{!"p1 _ZTS6_GList", !16, i64 0}
!60 = !{!"p1 omnipotent char", !16, i64 0}
!61 = !{!"dt_dev_detail_mask_t", !14, i64 0, !22, i64 24, !29, i64 32}
!62 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!63 = !{!"double", !7, i64 0}
!64 = !{!"dt_image_geoloc_t", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!66 = !{!"p1 _ZTS16dt_cache_entry_t", !16, i64 0}
!67 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !22, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !12, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !22, i64 1448, !22, i64 1456, !22, i64 1464, !22, i64 1472, !8, i64 1480, !27, i64 1488, !7, i64 1616, !60, i64 1656, !8, i64 1664, !8, i64 1668, !62, i64 1672, !64, i64 1680, !65, i64 1704, !24, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !12, i64 1756, !12, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !59, i64 1856, !66, i64 1864, !8, i64 1872, !8, i64 1876}
!68 = !{!"dt_dev_pixelpipe_t", !57, i64 0, !8, i64 120, !22, i64 128, !29, i64 136, !8, i64 144, !8, i64 148, !12, i64 152, !8, i64 156, !8, i64 160, !27, i64 176, !58, i64 304, !58, i64 312, !58, i64 320, !58, i64 328, !59, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !60, i64 360, !22, i64 368, !8, i64 376, !8, i64 380, !12, i64 384, !7, i64 388, !22, i64 416, !41, i64 424, !41, i64 464, !41, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !61, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !7, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !67, i64 656, !8, i64 2544, !60, i64 2552, !8, i64 2560, !59, i64 2568, !59, i64 2576, !59, i64 2584, !8, i64 2592, !29, i64 2600, !22, i64 2608, !7, i64 2616, !7, i64 2632}
!69 = !{!68, !12, i64 152}
!70 = !{!51, !12, i64 16}
!71 = !{!51, !12, i64 20}
!72 = !{!51, !8, i64 24}
!73 = !{!"_GList", !16, i64 0, !59, i64 8, !59, i64 16}
!74 = !{!73, !16, i64 0}
!75 = !{!73, !59, i64 8}
!76 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !8, i64 32, !8, i64 36}
!77 = !{!76, !8, i64 36}
!78 = !{!76, !8, i64 32}
!79 = !{!76, !12, i64 24}
!80 = !{!76, !12, i64 28}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = !{!16, !16, i64 0}
!84 = !{!31, !8, i64 132}
!85 = !{!"p1 _ZTS11dt_action_t", !16, i64 0}
!86 = !{!"dt_action_t", !8, i64 0, !60, i64 8, !60, i64 16, !16, i64 24, !85, i64 32, !85, i64 40}
!87 = !{!"dt_iop_module_so_t", !86, i64 0, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !16, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !16, i64 328, !16, i64 336, !16, i64 344, !16, i64 352, !16, i64 360, !16, i64 368, !16, i64 376, !16, i64 384, !16, i64 392, !16, i64 400, !16, i64 408, !16, i64 416, !16, i64 424, !16, i64 432, !16, i64 440, !16, i64 448, !16, i64 456, !16, i64 464, !16, i64 472, !16, i64 480, !39, i64 488, !7, i64 496, !16, i64 520, !8, i64 528, !16, i64 536, !8, i64 544, !8, i64 548}
!88 = !{!87, !16, i64 520}
!89 = !{!"dt_codepath_t", !8, i64 0}
!90 = !{!"p1 _ZTS11_JsonParser", !16, i64 0}
!91 = !{!"p1 _ZTS9dt_conf_t", !16, i64 0}
!92 = !{!"p1 _ZTS8dt_lib_t", !16, i64 0}
!93 = !{!"p1 _ZTS17dt_view_manager_t", !16, i64 0}
!94 = !{!"p1 _ZTS12dt_control_t", !16, i64 0}
!95 = !{!"p1 _ZTS19dt_control_signal_t", !16, i64 0}
!96 = !{!"p1 _ZTS12dt_gui_gtk_t", !16, i64 0}
!97 = !{!"p1 _ZTS17dt_mipmap_cache_t", !16, i64 0}
!98 = !{!"p1 _ZTS16dt_image_cache_t", !16, i64 0}
!99 = !{!"p1 _ZTS12dt_bauhaus_t", !16, i64 0}
!100 = !{!"p1 _ZTS13dt_database_t", !16, i64 0}
!101 = !{!"p1 _ZTS14dt_pwstorage_t", !16, i64 0}
!102 = !{!"p1 _ZTS11dt_camctl_t", !16, i64 0}
!103 = !{!"p1 _ZTS15dt_collection_t", !16, i64 0}
!104 = !{!"p1 _ZTS14dt_selection_t", !16, i64 0}
!105 = !{!"p1 _ZTS11dt_points_t", !16, i64 0}
!106 = !{!"p1 _ZTS12dt_imageio_t", !16, i64 0}
!107 = !{!"p1 _ZTS11dt_opencl_t", !16, i64 0}
!108 = !{!"p1 _ZTS9dt_dbus_t", !16, i64 0}
!109 = !{!"p1 _ZTS9dt_undo_t", !16, i64 0}
!110 = !{!"p1 _ZTS16dt_colorspaces_t", !16, i64 0}
!111 = !{!"p1 _ZTS9dt_l10n_t", !16, i64 0}
!112 = !{!"p1 _ZTS9lua_State", !16, i64 0}
!113 = !{!"_Bool", !7, i64 0}
!114 = !{!"p1 _ZTS10_GMainLoop", !16, i64 0}
!115 = !{!"p1 _ZTS13_GMainContext", !16, i64 0}
!116 = !{!"p1 _ZTS12_GThreadPool", !16, i64 0}
!117 = !{!"p1 _ZTS12_GAsyncQueue", !16, i64 0}
!118 = !{!"", !112, i64 0, !41, i64 8, !7, i64 48, !113, i64 96, !113, i64 97, !114, i64 104, !115, i64 112, !116, i64 120, !117, i64 128, !117, i64 136, !117, i64 144}
!119 = !{!"p1 _ZTS10_GTimeZone", !16, i64 0}
!120 = !{!"p1 _ZTS10_GDateTime", !16, i64 0}
!121 = !{!"dt_sys_resources_t", !22, i64 0, !22, i64 8, !21, i64 16, !21, i64 24, !8, i64 32}
!122 = !{!"dt_backthumb_t", !63, i64 0, !63, i64 8, !8, i64 16, !8, i64 20}
!123 = !{!"dt_gimp_t", !8, i64 0, !60, i64 8, !60, i64 16, !8, i64 24, !8, i64 28}
!124 = !{!"dt_splash_t", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !8, i64 32}
!125 = !{!"darktable_t", !89, i64 0, !8, i64 4, !8, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !90, i64 48, !91, i64 56, !40, i64 64, !92, i64 72, !93, i64 80, !94, i64 88, !95, i64 96, !96, i64 104, !97, i64 112, !98, i64 120, !99, i64 128, !100, i64 136, !101, i64 144, !102, i64 152, !103, i64 160, !104, i64 168, !105, i64 176, !106, i64 184, !107, i64 192, !108, i64 200, !109, i64 208, !110, i64 216, !111, i64 224, !7, i64 232, !41, i64 2792, !41, i64 2832, !41, i64 2872, !41, i64 2912, !41, i64 2952, !41, i64 2992, !60, i64 3032, !60, i64 3040, !60, i64 3048, !60, i64 3056, !60, i64 3064, !60, i64 3072, !60, i64 3080, !60, i64 3088, !60, i64 3096, !60, i64 3104, !60, i64 3112, !60, i64 3120, !60, i64 3128, !118, i64 3136, !59, i64 3288, !63, i64 3296, !59, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !119, i64 3520, !120, i64 3528, !121, i64 3536, !122, i64 3576, !123, i64 3600, !124, i64 3632, !8, i64 3672}
!126 = !{!125, !96, i64 104}
!127 = !{!"p1 _ZTS7dt_ui_t", !16, i64 0}
!128 = !{!"dt_gui_widgets_t", !46, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!129 = !{!"dt_gui_scrollbars_t", !46, i64 0, !46, i64 8, !8, i64 16}
!130 = !{!"p1 _ZTS14_cairo_surface", !16, i64 0}
!131 = !{!"dt_gui_gtk_t", !127, i64 0, !128, i64 8, !129, i64 56, !130, i64 80, !8, i64 88, !60, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !63, i64 1384, !63, i64 1392, !63, i64 1400, !63, i64 1408, !46, i64 1416, !63, i64 1424, !63, i64 1432, !63, i64 1440, !63, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!132 = !{!131, !63, i64 1432}
!133 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
end_hunk_1
