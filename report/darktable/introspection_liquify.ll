Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_liquify?download=true
inline.NumInlined: 223
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@modify_roi_in:bb.a
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
  %i.w = load <2 x float>, ptr %i.u, align 4, !alias.scope !209 ; 2 uses
  %i.x = load <2 x float>, ptr %i.v, align 4, !alias.scope !209
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
  store <2 x i32> %i.ah, ptr %7, align 8, !tbaa !11, !alias.scope !208
  %i.ai = shl nsw i32 %i.ab, 1
  %i.aj = or disjoint i32 %i.ai, 1                ; 2 uses
  store i32 %i.aj, ptr %i.s, align 4, !tbaa !38, !alias.scope !208
  store i32 %i.aj, ptr %i.t, align 8, !tbaa !37, !alias.scope !208
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
  %.07487.i = phi ptr [ %i.aq, %.lr.ph.i13 ], [ %i.km, %apply_round_stamp.exit.i ] ; 2 uses
  %i.bb = load ptr, ptr %.07487.i, align 8, !tbaa !211 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !77, !alias.scope !212
  %i.bg = and i32 %i.bf, 2
  %.not.i.i = icmp eq i32 %i.bg, 0
  %.v.i.i = select i1 %.not.i.i, float 5.000000e-01, float 5.000000e-02
  %i.bh = load <2 x float>, ptr %i.bb, align 4, !alias.scope !212 ; 4 uses
  %i.bi = load <2 x float>, ptr %i.bc, align 4, !alias.scope !212
  %i.bj = fsub reassoc nsz arcp contract afn <2 x float> %i.bi, %i.bh
  %i.bk = call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.bj) #31
  %i.bl = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.bk)
  %i.bm = fptoui float %i.bl to i64               ; 9 uses
  %i.bn = load <2 x float>, ptr %i.bd, align 4, !alias.scope !212
  %i.bo = fsub reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bh
  %i.bp = insertelement <2 x float> poison, float %.v.i.i, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul reassoc nsz arcp contract afn <2 x float> %i.bq, %i.bo ; 2 uses
  %i.bs = call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.br) #31 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !78, !alias.scope !212
  %.fr145.i.i = freeze i32 %i.bu                  ; 2 uses
  %i.bv = icmp eq i32 %.fr145.i.i, 2
  %i.bw = fneg reassoc nsz arcp contract afn float %i.bs
  %i.bx = select reassoc nsz arcp contract afn i1 %i.bv, float %i.bw, float %i.bs ; 2 uses
  %i.by = mul i64 %i.bm, 10                       ; 7 uses
  %i.bz = trunc i64 %i.by to i32                  ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !79, !alias.scope !212 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !80, !alias.scope !212
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
  %i.fd = load i32, ptr %i.ar, align 4, !tbaa !37, !alias.scope !213
  %i.fe = sext i32 %i.fd to i64                   ; 3 uses
  %i.ff = extractelement <2 x float> %i.bh, i64 0
  %i.fg = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.ff)
  %i.fh = fptoui float %i.fg to i64
  %i.fi = extractelement <2 x float> %i.bh, i64 1
  %i.fj = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.fi)
  %i.fk = fptoui float %i.fj to i64
  %i.fl = load i32, ptr %i.ba, align 4, !tbaa !36, !alias.scope !213
  %i.fm = sext i32 %i.fl to i64
  %i.fn = sub i64 %i.fk, %i.fm
  %i.fo = mul i64 %i.fn, %i.fe
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.fo
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fh
  %i.fr = load i32, ptr %3, align 4, !tbaa !35, !alias.scope !213
  %i.fs = sext i32 %i.fr to i64
  %i.ft = sub nsw i64 0, %i.fs
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.ft ; 4 uses
  %i.fv = icmp eq i32 %.fr145.i.i, 0
  %i.fw = fneg reassoc nsz arcp contract afn <2 x float> %i.br ; 2 uses
  br i1 %i.fv, label %.split140.us.us.i.i, label %.split140.preheader.i.i

.split140.preheader.i.i:                          ; preds = %bb.k
  %i.fx = uitofp reassoc nsz arcp contract afn i64 %i.bm to float ; 2 uses
  %invariant.op88.i = fdiv reassoc nsz arcp contract afn float %i.bx, %i.fx ; 2 uses
  %factor.op.fmul.i = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fx
  br label %.split140.i.i

.split140.us.us.i.i:                              ; preds = %bb.k, %.critedge.split.us.us.i.i
  %.0112141.us.i.i = phi i64 [ %i.hy, %.critedge.split.us.us.i.i ], [ 0, %bb.k ] ; 5 uses
  %i.fy = mul i64 %.0112141.us.i.i, %.0112141.us.i.i
  %i.fz = uitofp reassoc nsz arcp contract afn i64 %i.fy to float ; 2 uses
  %i.ga = mul i64 %.0112141.us.i.i, %i.fe         ; 2 uses
  %i.gb = sub i64 0, %i.ga
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.gb ; 4 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.ga ; 2 uses
  %.not137.us.i.i = icmp eq i64 %.0112141.us.i.i, 0
  br i1 %.not137.us.i.i, label %.split140.us.us.split.us.i.i, label %.split140.us.us.split.i.i

.split140.us.us.split.us.i.i:                     ; preds = %.split140.us.us.i.i, %.thread.us.us.us.i.i
  %.0139.us.us.us.i.i = phi i64 [ %i.gx, %.thread.us.us.us.i.i ], [ 0, %.split140.us.us.i.i ] ; 5 uses
  %i.ge = uitofp reassoc nsz arcp contract afn i64 %.0139.us.us.us.i.i to float ; 2 uses
  %i.gf = fmul reassoc nnan nsz arcp contract afn float %i.ge, %i.ge
  %i.gg = fadd reassoc nnan nsz arcp contract afn float %i.gf, %i.fz
  %i.gh = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.gg)
  %i.gi = fmul reassoc nnan nsz arcp contract afn float %i.gh, 1.000000e+01
  %i.gj = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.gi)
  %i.gk = fptoui float %i.gj to i64               ; 2 uses
  %.not120.us.us.us.i.i = icmp ugt i64 %i.by, %i.gk
  br i1 %.not120.us.us.us.i.i, label %bb.l, label %.critedge.split.us.us.i.i

bb.l:                                             ; preds = %.split140.us.us.split.us.i.i
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %.0139.us.us.us.i.i ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.gk
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !13, !noalias !214
  %i.go = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = fmul reassoc nsz arcp contract afn <2 x float> %i.gp, %i.fw ; 2 uses
  %i.gr = load <2 x float>, ptr %i.gl, align 8, !noalias !214
  %i.gs = fadd reassoc nsz arcp contract afn <2 x float> %i.gr, %i.gq
  store <2 x float> %i.gs, ptr %i.gl, align 8, !noalias !214
  %.not135.us.us.us.i.i = icmp eq i64 %.0139.us.us.us.i.i, 0
  br i1 %.not135.us.us.us.i.i, label %.thread.us.us.us.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gt = sub i64 0, %.0139.us.us.us.i.i
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.gt ; 2 uses
  %i.gv = load <2 x float>, ptr %i.gu, align 8, !noalias !214
  %i.gw = fadd reassoc nsz arcp contract afn <2 x float> %i.gv, %i.gq
  store <2 x float> %i.gw, ptr %i.gu, align 8, !noalias !214
  br label %.thread.us.us.us.i.i

.thread.us.us.us.i.i:                             ; preds = %bb.m, %bb.l
  %i.gx = add i64 %.0139.us.us.us.i.i, 1          ; 2 uses
  %.not119.us.us.us.i.i = icmp ugt i64 %i.gx, %i.bm
  br i1 %.not119.us.us.us.i.i, label %.critedge.split.us.us.i.i, label %.split140.us.us.split.us.i.i

.split140.us.us.split.i.i:                        ; preds = %.split140.us.us.i.i, %bb.o
  %.0139.us.us.i.i = phi i64 [ %i.hx, %bb.o ], [ 0, %.split140.us.us.i.i ] ; 6 uses
  %i.gy = uitofp reassoc nsz arcp contract afn i64 %.0139.us.us.i.i to float ; 2 uses
  %i.gz = fmul reassoc nnan nsz arcp contract afn float %i.gy, %i.gy
  %i.ha = fadd reassoc nnan nsz arcp contract afn float %i.gz, %i.fz
  %i.hb = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.ha)
  %i.hc = fmul reassoc nnan nsz arcp contract afn float %i.hb, 1.000000e+01
  %i.hd = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.hc)
  %i.he = fptoui float %i.hd to i64               ; 2 uses
  %.not120.us.us.i.i = icmp ugt i64 %i.by, %i.he
  br i1 %.not120.us.us.i.i, label %bb.n, label %.critedge.split.us.us.i.i

bb.n:                                             ; preds = %.split140.us.us.split.i.i
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %.0139.us.us.i.i ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.0139.us.us.i.i ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.he
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !13, !noalias !214
  %i.hj = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = fmul reassoc nsz arcp contract afn <2 x float> %i.hk, %i.fw ; 4 uses
  %i.hm = load <2 x float>, ptr %i.hf, align 8, !noalias !214
  %i.hn = fadd reassoc nsz arcp contract afn <2 x float> %i.hm, %i.hl
  store <2 x float> %i.hn, ptr %i.hf, align 8, !noalias !214
  %.not135.us.us.i.i = icmp eq i64 %.0139.us.us.i.i, 0
  br i1 %.not135.us.us.i.i, label %bb.o, label %.split.us.us.i.i

.split.us.us.i.i:                                 ; preds = %bb.n
  %i.ho = sub i64 0, %.0139.us.us.i.i             ; 2 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.ho ; 2 uses
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.ho ; 2 uses
  %i.hr = load <2 x float>, ptr %i.hq, align 8, !noalias !214
  %i.hs = fadd reassoc nsz arcp contract afn <2 x float> %i.hr, %i.hl
  store <2 x float> %i.hs, ptr %i.hq, align 8, !noalias !214
  %i.ht = load <2 x float>, ptr %i.hp, align 8, !noalias !214
  %i.hu = fadd reassoc nsz arcp contract afn <2 x float> %i.ht, %i.hl
  store <2 x float> %i.hu, ptr %i.hp, align 8, !noalias !214
  br label %bb.o

bb.o:                                             ; preds = %.split.us.us.i.i, %bb.n
  %i.hv = load <2 x float>, ptr %i.hg, align 8, !noalias !214
  %i.hw = fadd reassoc nsz arcp contract afn <2 x float> %i.hv, %i.hl
  store <2 x float> %i.hw, ptr %i.hg, align 8, !noalias !214
  %i.hx = add i64 %.0139.us.us.i.i, 1             ; 2 uses
  %.not119.us.us.i.i = icmp ugt i64 %i.hx, %i.bm
  br i1 %.not119.us.us.i.i, label %.critedge.split.us.us.i.i, label %.split140.us.us.split.i.i

.critedge.split.us.us.i.i:                        ; preds = %bb.o, %.split140.us.us.split.i.i, %.thread.us.us.us.i.i, %.split140.us.us.split.us.i.i
  %i.hy = add i64 %.0112141.us.i.i, 1             ; 2 uses
  %.not118.us.i.i = icmp ugt i64 %i.hy, %i.bm
  br i1 %.not118.us.i.i, label %.split144.us.i.i, label %.split140.us.us.i.i

.split144.us.i.i:                                 ; preds = %.critedge.split.i.i, %.critedge.split.us.us.i.i
  call void @free(ptr noundef %i.cj) #30, !noalias !214
  br label %apply_round_stamp.exit.i

.split140.i.i:                                    ; preds = %.critedge.split.i.i, %.split140.preheader.i.i
  %.0112141.i.i = phi i64 [ %i.kk, %.critedge.split.i.i ], [ 0, %.split140.preheader.i.i ] ; 6 uses
  %i.hz = uitofp reassoc nsz arcp contract afn i64 %.0112141.i.i to float ; 4 uses
  %i.ia = mul i64 %.0112141.i.i, %.0112141.i.i
  %i.ib = uitofp reassoc nsz arcp contract afn i64 %i.ia to float ; 2 uses
  %i.ic = mul i64 %.0112141.i.i, %i.fe            ; 2 uses
  %i.id = sub i64 0, %i.ic
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.id ; 4 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.ic ; 2 uses
  %i.ig = fneg reassoc nsz arcp contract afn float %i.hz
  %.not134.i.i = icmp eq i64 %.0112141.i.i, 0
  br i1 %.not134.i.i, label %.split140.i.split.us.preheader.i, label %.split140.i.split.i.preheader

.split140.i.split.i.preheader:                    ; preds = %.split140.i.i
  %i.ih = insertelement <2 x float> poison, float %i.ig, i64 1
  br label %.split140.i.split.i

.split140.i.split.us.preheader.i:                 ; preds = %.split140.i.i
  %invariant.op.i = fmul reassoc nsz arcp contract afn float %invariant.op88.i, %i.hz
  %i.ii = insertelement <2 x float> poison, float %invariant.op.i, i64 1
  br label %.split140.i.split.us.i

.split140.i.split.us.i:                           ; preds = %.thread128.i.us.i, %.split140.i.split.us.preheader.i
  %.0139.i.us.i = phi i64 [ %i.jf, %.thread128.i.us.i ], [ 0, %.split140.i.split.us.preheader.i ] ; 5 uses
  %i.ij = uitofp reassoc nsz arcp contract afn i64 %.0139.i.us.i to float ; 3 uses
  %i.ik = fmul reassoc nnan nsz arcp contract afn float %i.ij, %i.ij
  %i.il = fadd reassoc nnan nsz arcp contract afn float %i.ik, %i.ib
  %i.im = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.il)
  %i.in = fmul reassoc nnan nsz arcp contract afn float %i.im, 1.000000e+01
  %i.io = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.in)
  %i.ip = fptoui float %i.io to i64               ; 2 uses
  %.not120.i.us.i = icmp ugt i64 %i.by, %i.ip
  br i1 %.not120.i.us.i, label %bb.p, label %.critedge.split.i.i

bb.p:                                             ; preds = %.split140.i.split.us.i
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.0139.i.us.i ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ip
  %i.is = load float, ptr %i.ir, align 4, !tbaa !13, !noalias !214
  %.reass.us.i = fmul reassoc nsz arcp contract afn float %invariant.op88.i, %i.ij
  %i.it = insertelement <2 x float> %i.ii, float %.reass.us.i, i64 0
  %i.iu = insertelement <2 x float> poison, float %i.is, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = fmul reassoc nsz arcp contract afn <2 x float> %i.it, %i.iv ; 3 uses
  %i.ix = load <2 x float>, ptr %i.iq, align 8, !noalias !214 ; 2 uses
  %i.iy = fsub reassoc nsz arcp contract afn <2 x float> %i.ix, %i.iw
  %i.iz = fadd reassoc nsz arcp contract afn <2 x float> %i.ix, %i.iw
  %i.ja = shufflevector <2 x float> %i.iy, <2 x float> %i.iz, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ja, ptr %i.iq, align 8, !noalias !214
  %.not132.i.us.i = icmp eq i64 %.0139.i.us.i, 0
  br i1 %.not132.i.us.i, label %.thread128.i.us.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.jb = sub i64 0, %.0139.i.us.i
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.jb ; 2 uses
  %i.jd = load <2 x float>, ptr %i.jc, align 8, !noalias !214
  %i.je = fadd reassoc nsz arcp contract afn <2 x float> %i.jd, %i.iw
  store <2 x float> %i.je, ptr %i.jc, align 8, !noalias !214
  br label %.thread128.i.us.i

.thread128.i.us.i:                                ; preds = %bb.q, %bb.p
  %i.jf = add i64 %.0139.i.us.i, 1                ; 2 uses
  %.not119.i.us.i = icmp ugt i64 %i.jf, %i.bm
  br i1 %.not119.i.us.i, label %.critedge.split.i.i, label %.split140.i.split.us.i

.split140.i.split.i:                              ; preds = %.split140.i.split.i.preheader, %bb.s
  %.0139.i.i = phi i64 [ %i.kj, %bb.s ], [ 0, %.split140.i.split.i.preheader ] ; 6 uses
  %i.jg = uitofp reassoc nsz arcp contract afn i64 %.0139.i.i to float ; 3 uses
  %i.jh = fmul reassoc nnan nsz arcp contract afn float %i.jg, %i.jg
  %i.ji = fadd reassoc nnan nsz arcp contract afn float %i.jh, %i.ib
  %i.jj = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.ji)
  %i.jk = fmul reassoc nnan nsz arcp contract afn float %i.jj, 1.000000e+01
  %i.jl = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.jk)
  %i.jm = fptoui float %i.jl to i64               ; 2 uses
  %.not120.i.i = icmp ugt i64 %i.by, %i.jm
  br i1 %.not120.i.i, label %bb.r, label %.critedge.split.i.i

bb.r:                                             ; preds = %.split140.i.split.i
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.0139.i.i ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %.0139.i.i ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.jm
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !13, !noalias !214
  %10 = fmul reassoc nsz arcp contract afn float %i.bx, %i.jq
  %.reass.i = fmul reassoc nsz arcp contract afn float %10, %factor.op.fmul.i ; 3 uses
  %i.jr = insertelement <2 x float> poison, float %.reass.i, i64 0
  %i.js = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jt = insertelement <2 x float> %i.ih, float %i.jg, i64 0
  %i.ju = fmul reassoc nsz arcp contract afn <2 x float> %i.js, %i.jt ; 4 uses
  %i.jv = load <2 x float>, ptr %i.jn, align 8, !noalias !214
  %i.jw = fsub reassoc nsz arcp contract afn <2 x float> %i.jv, %i.ju
  store <2 x float> %i.jw, ptr %i.jn, align 8, !noalias !214
  %.not132.i.i = icmp eq i64 %.0139.i.i, 0
  br i1 %.not132.i.i, label %.thread128.i.i, label %.split130.i.i

.thread128.i.i:                                   ; preds = %bb.r
  %.pre.i.i = fmul reassoc nsz arcp contract afn float %.reass.i, %i.hz
  br label %bb.s

.split130.i.i:                                    ; preds = %bb.r
  %i.jx = sub i64 0, %.0139.i.i                   ; 2 uses
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.jx ; 2 uses
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.jx ; 2 uses
  %i.ka = fmul reassoc nsz arcp contract afn float %.reass.i, %i.hz ; 2 uses
  %i.kb = load <2 x float>, ptr %i.jz, align 8, !noalias !214
  %i.kc = insertelement <2 x float> %i.ju, float %i.ka, i64 1
  %i.kd = fadd reassoc nsz arcp contract afn <2 x float> %i.kb, %i.kc
  store <2 x float> %i.kd, ptr %i.jz, align 8, !noalias !214
  %i.ke = load <2 x float>, ptr %i.jy, align 8, !noalias !214
  %i.kf = fadd reassoc nsz arcp contract afn <2 x float> %i.ke, %i.ju
  store <2 x float> %i.kf, ptr %i.jy, align 8, !noalias !214
  br label %bb.s

bb.s:                                             ; preds = %.split130.i.i, %.thread128.i.i
  %.pre-phi.i.i = phi float [ %.pre.i.i, %.thread128.i.i ], [ %i.ka, %.split130.i.i ]
  %i.kg = load <2 x float>, ptr %i.jo, align 8, !noalias !214
  %i.kh = insertelement <2 x float> %i.ju, float %.pre-phi.i.i, i64 1
  %i.ki = fsub reassoc nsz arcp contract afn <2 x float> %i.kg, %i.kh
  store <2 x float> %i.ki, ptr %i.jo, align 8, !noalias !214
  %i.kj = add i64 %.0139.i.i, 1                   ; 2 uses
  %.not119.i.i = icmp ugt i64 %i.kj, %i.bm
  br i1 %.not119.i.i, label %.critedge.split.i.i, label %.split140.i.split.i

.critedge.split.i.i:                              ; preds = %bb.s, %.split140.i.split.i, %.thread128.i.us.i, %.split140.i.split.us.i
  %i.kk = add i64 %.0112141.i.i, 1                ; 2 uses
  %.not118.i.i = icmp ugt i64 %i.kk, %i.bm
  br i1 %.not118.i.i, label %.split144.us.i.i, label %.split140.i.i

apply_round_stamp.exit.i:                         ; preds = %.split144.us.i.i, %build_lookup_table.exit.thread.i.i
  %i.kl = getelementptr inbounds nuw i8, ptr %.07487.i, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !215 ; 2 uses
  %.not.i14 = icmp eq ptr %i.km, null
  br i1 %.not.i14, label %._crit_edge.i, label %bb.g

bb.t:                                             ; preds = %._crit_edge.i
  %i.kn = call ptr @dt_alloc_aligned(i64 noundef %i.ay) #30 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kn, i64 64) ]
  call void @llvm.memset.p0.i64(ptr align 64 %i.kn, i8 0, i64 %i.ay, i1 false)
  %i.ko = load i32, ptr %i.at, align 4, !tbaa !38 ; 2 uses
  %i.kp = icmp sgt i32 %i.ko, 0
  br i1 %i.kp, label %.lr.ph94.i, label %._crit_edge95.i

.lr.ph94.i:                                       ; preds = %bb.t
  %i.kq = load i32, ptr %i.ar, align 4, !tbaa !37 ; 3 uses
  %i.kr = icmp sgt i32 %i.kq, 0
  br i1 %i.kr, label %.lr.ph94.split.i, label %._crit_edge95.i

._crit_edge95.i:                                  ; preds = %._crit_edge91.i, %.lr.ph94.i, %bb.t
  call void @free(ptr noundef %i.az) #30
  %i.ks = load i32, ptr %i.at, align 4, !tbaa !38 ; 3 uses
  %i.kt = icmp sgt i32 %i.ks, 0
  br i1 %i.kt, label %.lr.ph107.preheader.i, label %create_global_distortion_map.exit

.lr.ph107.preheader.i:                            ; preds = %._crit_edge95.i
  %.pre119.i = load i32, ptr %i.ar, align 4, !tbaa !37 ; 2 uses
  br label %.lr.ph107.i

.lr.ph94.split.i:                                 ; preds = %.lr.ph94.i, %._crit_edge91.i
  %i.ku = phi i32 [ %i.lb, %._crit_edge91.i ], [ %i.ko, %.lr.ph94.i ]
  %i.kv = phi i32 [ %i.lc, %._crit_edge91.i ], [ %i.kq, %.lr.ph94.i ] ; 2 uses
  %i.kw = phi i32 [ %i.ld, %._crit_edge91.i ], [ %i.kq, %.lr.ph94.i ] ; 4 uses
  %.07292.i = phi i32 [ %i.le, %._crit_edge91.i ], [ 0, %.lr.ph94.i ] ; 3 uses
  %i.kx = mul nsw i32 %.07292.i, %i.kw
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ky
  %i.la = icmp sgt i32 %i.kw, 0
  br i1 %i.la, label %.lr.ph90.i, label %._crit_edge91.i

._crit_edge91.loopexit.i:                         ; preds = %bb.x
  %.pre118.i = load i32, ptr %i.at, align 4, !tbaa !38
  br label %._crit_edge91.i

._crit_edge91.i:                                  ; preds = %._crit_edge91.loopexit.i, %.lr.ph94.split.i
  %i.lb = phi i32 [ %.pre118.i, %._crit_edge91.loopexit.i ], [ %i.ku, %.lr.ph94.split.i ] ; 2 uses
  %i.lc = phi i32 [ %i.mb, %._crit_edge91.loopexit.i ], [ %i.kv, %.lr.ph94.split.i ]
  %i.ld = phi i32 [ %i.mb, %._crit_edge91.loopexit.i ], [ %i.kw, %.lr.ph94.split.i ]
  %i.le = add nuw nsw i32 %.07292.i, 1            ; 2 uses
  %i.lf = icmp slt i32 %i.le, %i.lb
  br i1 %i.lf, label %.lr.ph94.split.i, label %._crit_edge95.i, !llvm.loop !206

.lr.ph90.i:                                       ; preds = %.lr.ph94.split.i, %bb.x
  %i.lg = phi i32 [ %i.mb, %bb.x ], [ %i.kv, %.lr.ph94.split.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.x ], [ 0, %.lr.ph94.split.i ] ; 3 uses
  %i.lh = phi i32 [ %i.mb, %bb.x ], [ %i.kw, %.lr.ph94.split.i ] ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv.i
  %i.lj = load <2 x float>, ptr %i.li, align 8    ; 3 uses
  %i.lk = extractelement <2 x float> %i.lj, i64 0
  %i.ll = fptosi float %i.lk to i32
  %i.lm = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ln = add nsw i32 %i.ll, %i.lm                ; 3 uses
  %i.lo = extractelement <2 x float> %i.lj, i64 1
  %i.lp = fptosi float %i.lo to i32
  %i.lq = add nsw i32 %.07292.i, %i.lp            ; 3 uses
  %i.lr = icmp sgt i32 %i.ln, 0
  br i1 %i.lr, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.lr.ph90.i
  %i.ls = icmp slt i32 %i.ln, %i.lh
  %i.lt = icmp sgt i32 %i.lq, 0
  %or.cond.i = select i1 %i.ls, i1 %i.lt, i1 false
  br i1 %or.cond.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.lu = load i32, ptr %i.at, align 4, !tbaa !38
  %i.lv = icmp slt i32 %i.lq, %i.lu
  br i1 %i.lv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.lw = fneg reassoc nsz arcp contract afn <2 x float> %i.lj
  %i.lx = mul nuw nsw i32 %i.lq, %i.lh
  %i.ly = add nuw nsw i32 %i.lx, %i.ln
  %i.lz = zext nneg i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.lz
  store <2 x float> %i.lw, ptr %i.ma, align 8
  %.pre.i = load i32, ptr %i.ar, align 4, !tbaa !37
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %.lr.ph90.i
  %i.mb = phi i32 [ %.pre.i, %bb.w ], [ %i.lg, %bb.v ], [ %i.lg, %bb.u ], [ %i.lg, %.lr.ph90.i ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.mc = sext i32 %i.mb to i64
  %i.md = icmp slt i64 %indvars.iv.next.i, %i.mc
  br i1 %i.md, label %.lr.ph90.i, label %._crit_edge91.loopexit.i

.lr.ph107.i:                                      ; preds = %._crit_edge104.i, %.lr.ph107.preheader.i
  %.pre129130.i = phi i32 [ %.pre129131.i, %._crit_edge104.i ], [ %i.ks, %.lr.ph107.preheader.i ] ; 3 uses
  %i.me = phi i32 [ %i.mn, %._crit_edge104.i ], [ %i.ks, %.lr.ph107.preheader.i ]
  %i.mf = phi i32 [ %i.mo, %._crit_edge104.i ], [ %.pre119.i, %.lr.ph107.preheader.i ] ; 5 uses
  %i.mg = phi i32 [ %i.mp, %._crit_edge104.i ], [ %.pre119.i, %.lr.ph107.preheader.i ] ; 4 uses
  %.070105.i = phi i32 [ %i.mq, %._crit_edge104.i ], [ 0, %.lr.ph107.preheader.i ] ; 2 uses
  %i.mh = mul nsw i32 %.070105.i, %i.mg
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %i.mi ; 4 uses
  %.not8196.i = icmp slt i32 %i.mg, -1
  br i1 %.not8196.i, label %._crit_edge104.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph107.i
  %.not81.not.peel.i = icmp sgt i32 %i.mf, 1
  br i1 %.not81.not.peel.i, label %.lr.ph103.peel.next.i.preheader, label %._crit_edge104.i

.lr.ph103.peel.next.i.preheader:                  ; preds = %bb.y
  %i.mk = sext i32 %i.mg to i64
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.mj, i64 %i.mk
  %i.mm = load <2 x float>, ptr %i.ml, align 8
  br label %.lr.ph103.peel.next.i

._crit_edge104.loopexit.loopexit.i:               ; preds = %bb.ac
  %.pre129.pre.i = load i32, ptr %i.at, align 4, !tbaa !38 ; 2 uses
  br label %._crit_edge104.i

._crit_edge104.i:                                 ; preds = %._crit_edge104.loopexit.loopexit.i, %bb.y, %.lr.ph107.i
  %.pre129131.i = phi i32 [ %.pre129130.i, %.lr.ph107.i ], [ %.pre129.pre.i, %._crit_edge104.loopexit.loopexit.i ], [ %.pre129130.i, %bb.y ]
  %i.mn = phi i32 [ %i.me, %.lr.ph107.i ], [ %.pre129.pre.i, %._crit_edge104.loopexit.loopexit.i ], [ %.pre129130.i, %bb.y ] ; 2 uses
  %i.mo = phi i32 [ %i.mf, %.lr.ph107.i ], [ %i.nj, %._crit_edge104.loopexit.loopexit.i ], [ %i.mf, %bb.y ]
  %i.mp = phi i32 [ %i.mg, %.lr.ph107.i ], [ %i.nj, %._crit_edge104.loopexit.loopexit.i ], [ %i.mf, %bb.y ]
  %i.mq = add nuw nsw i32 %.070105.i, 1           ; 2 uses
  %i.mr = icmp slt i32 %i.mq, %i.mn
  br i1 %i.mr, label %.lr.ph107.i, label %create_global_distortion_map.exit

.lr.ph103.peel.next.i:                            ; preds = %.lr.ph103.peel.next.i.preheader, %bb.ac
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i, %bb.ac ], [ 1, %.lr.ph103.peel.next.i.preheader ] ; 4 uses
  %i.ms = phi i32 [ %i.nj, %bb.ac ], [ %i.mf, %.lr.ph103.peel.next.i.preheader ]
  %.pn.i = phi ptr [ %i.mu, %bb.ac ], [ %i.mj, %.lr.ph103.peel.next.i.preheader ]
  %i.mt = phi <2 x float> [ %i.ni, %bb.ac ], [ %i.mm, %.lr.ph103.peel.next.i.preheader ] ; 2 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %indvars.iv114.i ; 3 uses
  %i.mv = sext i32 %i.ms to i64
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.mj, i64 %i.mv
  %i.mx = sub nsw i64 0, %indvars.iv114.i
  %i.my = getelementptr inbounds [8 x i8], ptr %i.mw, i64 %i.mx ; 2 uses
  %i.mz = load <2 x float>, ptr %i.mu, align 8
  %i.na = fcmp une <2 x float> %i.mz, zeroinitializer
  %i.nb = bitcast <2 x i1> %i.na to i2
  %i.nc = icmp eq i2 %i.nb, 0
  br i1 %i.nc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph103.peel.next.i
  %i.nd = load <2 x float>, ptr %.pn.i, align 4
  store <2 x float> %i.nd, ptr %i.mu, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph103.peel.next.i
  %i.ne = load <2 x float>, ptr %i.my, align 8    ; 2 uses
  %i.nf = fcmp une <2 x float> %i.ne, zeroinitializer
  %i.ng = bitcast <2 x i1> %i.nf to i2
  %i.nh = icmp eq i2 %i.ng, 0
end_hunk_0
