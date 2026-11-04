Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_liquify?download=true
inline.NumInlined: 223
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_build_global_distortion_map:bb.a
  call void @g_list_free_full(ptr noundef %i.o, ptr noundef nonnull @free) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lround.i64.f32(float) #6

declare ptr @cairo_region_create_rectangle(ptr noundef) local_unnamed_addr #3

declare i32 @cairo_region_union_rectangle(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cairo_region_intersect_rectangle(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cairo_region_get_extents(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cairo_region_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @distort_transform(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @_distort_xtransform(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_distort_xtransform(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #1 {
bb.a:
  %5 = alloca %struct._cairo_rectangle_int, align 16 ; 6 uses
  %6 = alloca %struct.dt_iop_roi_t, align 16      ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.c = load float, ptr %i.b, align 8, !tbaa !222 ; 5 uses
  %i.d = shl i64 %3, 1                            ; 3 uses
  %.not89 = icmp eq i64 %i.d, 0
  br i1 %.not89, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = add i64 %i.d, -2                         ; 2 uses
  %i.f = lshr exact i64 %i.e, 1
  %i.g = add nuw i64 %i.f, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 62
  br i1 %min.iters.check, label %.lr.ph.preheader188, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.g, -32                      ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ab, %vector.body ] ; 2 uses
  %vec.phi107 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ac, %vector.body ] ; 2 uses
  %vec.phi108 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ad, %vector.body ] ; 2 uses
  %vec.phi109 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ae, %vector.body ] ; 2 uses
  %vec.phi110 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.af, %vector.body ] ; 2 uses
  %vec.phi111 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.ag, %vector.body ] ; 2 uses
  %vec.phi112 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.ah, %vector.body ] ; 2 uses
  %vec.phi113 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.ai, %vector.body ] ; 2 uses
  %vec.phi114 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.ar, %vector.body ] ; 2 uses
  %vec.phi115 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.as, %vector.body ] ; 2 uses
  %vec.phi116 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.at, %vector.body ] ; 2 uses
  %vec.phi117 = phi <8 x float> [ splat (float f0x00800000), %vector.ph ], [ %i.au, %vector.body ] ; 2 uses
  %vec.phi118 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.an, %vector.body ] ; 2 uses
  %vec.phi119 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ao, %vector.body ] ; 2 uses
  %vec.phi120 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ap, %vector.body ] ; 2 uses
  %vec.phi121 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.aq, %vector.body ] ; 2 uses
  %i.h = shl nuw i64 %index, 1                    ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.h
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  %wide.vec = load <16 x float>, ptr %i.i, align 4, !tbaa !13 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec122 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec123 = load <16 x float>, ptr %i.k, align 4, !tbaa !13 ; 2 uses
  %strided.vec124 = shufflevector <16 x float> %wide.vec123, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec125 = shufflevector <16 x float> %wide.vec123, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec126 = load <16 x float>, ptr %i.m, align 4, !tbaa !13 ; 2 uses
  %strided.vec127 = shufflevector <16 x float> %wide.vec126, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec128 = shufflevector <16 x float> %wide.vec126, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec129 = load <16 x float>, ptr %i.o, align 4, !tbaa !13 ; 2 uses
  %strided.vec130 = shufflevector <16 x float> %wide.vec129, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec131 = shufflevector <16 x float> %wide.vec129, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.p = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat
  %i.q = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec124, %broadcast.splat
  %i.r = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec127, %broadcast.splat
  %i.s = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec130, %broadcast.splat
  %i.t = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec122, %broadcast.splat
  %i.u = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec125, %broadcast.splat
  %i.v = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec128, %broadcast.splat
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec131, %broadcast.splat
  %i.x = freeze <8 x float> %i.p                  ; 3 uses
  %i.y = freeze <8 x float> %i.q                  ; 3 uses
  %i.z = freeze <8 x float> %i.r                  ; 3 uses
  %i.aa = freeze <8 x float> %i.s                 ; 3 uses
  %i.ab = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi, <8 x float> %i.x) ; 2 uses
  %i.ac = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi107, <8 x float> %i.y) ; 2 uses
  %i.ad = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi108, <8 x float> %i.z) ; 2 uses
  %i.ae = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi109, <8 x float> %i.aa) ; 2 uses
  %i.af = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi110, <8 x float> %i.x) ; 2 uses
  %i.ag = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi111, <8 x float> %i.y) ; 2 uses
  %i.ah = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi112, <8 x float> %i.z) ; 2 uses
  %i.ai = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi113, <8 x float> %i.aa) ; 2 uses
  %i.aj = freeze <8 x float> %i.t                 ; 3 uses
  %i.ak = freeze <8 x float> %i.u                 ; 3 uses
  %i.al = freeze <8 x float> %i.v                 ; 3 uses
  %i.am = freeze <8 x float> %i.w                 ; 3 uses
  %i.an = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi118, <8 x float> %i.aj) ; 2 uses
  %i.ao = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi119, <8 x float> %i.ak) ; 2 uses
  %i.ap = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi120, <8 x float> %i.al) ; 2 uses
  %i.aq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi121, <8 x float> %i.am) ; 2 uses
  %i.ar = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi114, <8 x float> %i.aj) ; 2 uses
  %i.as = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi115, <8 x float> %i.ak) ; 2 uses
  %i.at = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi116, <8 x float> %i.al) ; 2 uses
  %i.au = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi117, <8 x float> %i.am) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.av = fcmp uno <8 x float> %i.x, %i.aj
  %i.aw = fcmp uno <8 x float> %i.y, %i.ak
  %i.ax = fcmp uno <8 x float> %i.z, %i.al
  %i.ay = fcmp uno <8 x float> %i.aa, %i.am
  %i.az = or <8 x i1> %i.av, %i.aw
  %i.ba = or <8 x i1> %i.az, %i.ax
  %i.bb = or <8 x i1> %i.ba, %i.ay
  %i.bc = bitcast <8 x i1> %i.bb to i8
  %i.bd = icmp ne i8 %i.bc, 0                     ; 19 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  %i.bf = or i1 %i.bd, %i.be
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !218

middle.block:                                     ; preds = %vector.body
  %i.bg = select i1 %i.bd, <8 x float> %vec.phi, <8 x float> %i.ab
  %i.bh = select i1 %i.bd, <8 x float> %vec.phi107, <8 x float> %i.ac
  %i.bi = select i1 %i.bd, <8 x float> %vec.phi108, <8 x float> %i.ad
  %i.bj = select i1 %i.bd, <8 x float> %vec.phi109, <8 x float> %i.ae
  %i.bk = select i1 %i.bd, <8 x float> %vec.phi110, <8 x float> %i.af
  %i.bl = select i1 %i.bd, <8 x float> %vec.phi111, <8 x float> %i.ag
  %i.bm = select i1 %i.bd, <8 x float> %vec.phi112, <8 x float> %i.ah
  %i.bn = select i1 %i.bd, <8 x float> %vec.phi113, <8 x float> %i.ai
  %i.bo = select i1 %i.bd, <8 x float> %vec.phi114, <8 x float> %i.ar
  %i.bp = select i1 %i.bd, <8 x float> %vec.phi115, <8 x float> %i.as
  %i.bq = select i1 %i.bd, <8 x float> %vec.phi116, <8 x float> %i.at
  %i.br = select i1 %i.bd, <8 x float> %vec.phi117, <8 x float> %i.au
  %i.bs = select i1 %i.bd, <8 x float> %vec.phi118, <8 x float> %i.an
  %i.bt = select i1 %i.bd, <8 x float> %vec.phi119, <8 x float> %i.ao
  %i.bu = select i1 %i.bd, <8 x float> %vec.phi120, <8 x float> %i.ap
  %i.bv = select i1 %i.bd, <8 x float> %vec.phi121, <8 x float> %i.aq
  %i.bw = select i1 %i.bd, i64 %index, i64 %n.vec
  %rdx.minmax = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bg, <8 x float> %i.bh)
  %rdx.minmax132 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax, <8 x float> %i.bi)
  %rdx.minmax133 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax132, <8 x float> %i.bj)
  %i.bx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax133)
  %i.by = shl i64 %i.bw, 1
  %rdx.minmax134 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bk, <8 x float> %i.bl)
  %rdx.minmax135 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax134, <8 x float> %i.bm)
  %rdx.minmax136 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax135, <8 x float> %i.bn)
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax136)
  %rdx.minmax137 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bo, <8 x float> %i.bp)
  %rdx.minmax138 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax137, <8 x float> %i.bq)
  %rdx.minmax139 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax138, <8 x float> %i.br)
  %i.ca = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax139)
  %rdx.minmax140 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.bs, <8 x float> %i.bt)
  %rdx.minmax141 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax140, <8 x float> %i.bu)
  %rdx.minmax142 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax141, <8 x float> %i.bv)
  %i.cb = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax142)
  %cmp.n = icmp ne i64 %i.g, %n.vec
  %.not181 = or i1 %cmp.n, %i.bd
  %i.cc = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %i.ca, i64 1 ; 2 uses
  %i.ce = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.cb, i64 1 ; 2 uses
  br i1 %.not181, label %.lr.ph.preheader188, label %._crit_edge

.lr.ph.preheader188:                              ; preds = %.lr.ph.preheader, %middle.block
  %.06379.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.by, %middle.block ]
  %.ph = phi <2 x float> [ splat (float f0x00800000), %.lr.ph.preheader ], [ %i.cd, %middle.block ]
  %.ph189 = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph.preheader ], [ %i.cf, %middle.block ]
  %i.cg = insertelement <2 x float> poison, float %i.c, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.ci = phi <2 x float> [ splat (float f0x00800000), %bb.a ], [ %i.cd, %middle.block ], [ %i.cx, %.lr.ph ]
  %i.cj = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.a ], [ %i.cf, %middle.block ], [ %i.cw, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cl = fsub reassoc nsz arcp contract afn <2 x float> %i.ci, %i.cj
  %i.cm = shufflevector <2 x float> %i.cj, <2 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cn = fpext reassoc nsz arcp contract afn <4 x float> %i.cm to <4 x double>
  %i.co = fadd reassoc nsz arcp contract afn <4 x double> %i.cn, <double -5.000000e-01, double -5.000000e-01, double 2.500000e+00, double 2.500000e+00>
  %i.cp = fptosi <4 x double> %i.co to <4 x i32>  ; 3 uses
  store <4 x i32> %i.cp, ptr %5, align 16, !tbaa !11
  %i.cq = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %7 = icmp sgt <2 x i32> %i.cq, zeroinitializer  ; 2 uses
  %8 = extractelement <2 x i1> %7, i64 0
  %9 = extractelement <2 x i1> %7, i64 1
  %or.cond = select i1 %8, i1 %9, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader188, %.lr.ph
  %.06379 = phi i64 [ %i.cy, %.lr.ph ], [ %.06379.ph, %.lr.ph.preheader188 ] ; 2 uses
  %i.cr = phi <2 x float> [ %i.cx, %.lr.ph ], [ %.ph, %.lr.ph.preheader188 ]
  %i.cs = phi <2 x float> [ %i.cw, %.lr.ph ], [ %.ph189, %.lr.ph.preheader188 ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.06379
  %i.cu = load <2 x float>, ptr %i.ct, align 4, !tbaa !13
  %i.cv = fmul reassoc nsz arcp contract afn <2 x float> %i.cu, %i.ch ; 2 uses
  %i.cw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cs, <2 x float> %i.cv) ; 2 uses
  %i.cx = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cr, <2 x float> %i.cv) ; 2 uses
  %i.cy = add nuw i64 %.06379, 2                  ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.d
  br i1 %i.cz, label %.lr.ph, label %._crit_edge, !llvm.loop !219

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store <4 x i32> %i.cp, ptr %6, align 16, !tbaa !11
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float 0.000000e+00, ptr %i.da, align 16, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr null, ptr %i.a, align 8, !tbaa !83
  %i.db = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.db, align 8, !tbaa !32
  %i.dc = getelementptr i8, ptr %1, i64 16
  %.val73 = load ptr, ptr %i.dc, align 16, !tbaa !33
  call fastcc void @_build_global_distortion_map(ptr noundef %0, ptr %.val, ptr %.val73, float noundef %i.c, ptr noundef nonnull %6, ptr noundef %5, i32 noundef %4, ptr noundef nonnull %i.a)
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !83  ; 4 uses
  %.not = icmp eq ptr %i.dd, null
  br i1 %.not, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.de = load <2 x i32>, ptr %i.ck, align 8, !tbaa !11 ; 4 uses
  %i.df = extractelement <2 x i32> %i.de, i64 0   ; 2 uses
  %i.dg = extractelement <2 x i32> %i.de, i64 1
  %i.dh = mul nsw i32 %i.dg, %i.df                ; 2 uses
  %i.di = load <2 x i32>, ptr %5, align 16, !tbaa !11 ; 5 uses
  %.not90 = icmp eq i64 %3, 0
  br i1 %.not90, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %bb.c
  %i.dj = add nsw <2 x i32> %i.di, %i.de          ; 2 uses
  %i.dk = extractelement <2 x i32> %i.dj, i64 0
  %i.dl = sitofp reassoc nsz arcp contract afn i32 %i.dk to float ; 2 uses
  %i.dm = sitofp reassoc nsz arcp contract afn <2 x i32> %i.di to <2 x float> ; 3 uses
  %i.dn = extractelement <2 x i32> %i.dj, i64 1
  %i.do = sitofp reassoc nsz arcp contract afn i32 %i.dn to float ; 2 uses
  %min.iters.check147 = icmp ult i64 %3, 8
  br i1 %min.iters.check147, label %scalar.ph146.preheader, label %vector.ph148

vector.ph148:                                     ; preds = %.lr.ph87
  %n.vec149 = and i64 %3, -8                      ; 3 uses
  %broadcast.splat151 = shufflevector <2 x float> %i.dm, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert152 = insertelement <8 x float> poison, float %i.dl, i64 0
  %broadcast.splat153 = shufflevector <8 x float> %broadcast.splatinsert152, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat155 = shufflevector <2 x float> %i.dm, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert156 = insertelement <8 x float> poison, float %i.do, i64 0
  %broadcast.splat157 = shufflevector <8 x float> %broadcast.splatinsert156, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert158 = insertelement <8 x float> poison, float %i.c, i64 0
  %broadcast.splat159 = shufflevector <8 x float> %broadcast.splatinsert158, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat161 = shufflevector <2 x i32> %i.di, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat163 = shufflevector <2 x i32> %i.di, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat165 = shufflevector <2 x i32> %i.de, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert166 = insertelement <8 x i32> poison, i32 %i.dh, i64 0
  %broadcast.splat167 = shufflevector <8 x i32> %broadcast.splatinsert166, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dp = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat159
  %i.dq = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat159
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph148
  %index169 = phi i64 [ 0, %vector.ph148 ], [ %index.next177, %vector.body168 ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph148 ], [ %vec.ind.next, %vector.body168 ] ; 2 uses
  %i.dr = shl <8 x i64> %vec.ind, splat (i64 3)
  %wide.gep = getelementptr inbounds nuw i8, ptr %2, <8 x i64> %i.dr ; 3 uses
  %i.ds = extractelement <8 x ptr> %wide.gep, i64 0
  %wide.gep170 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.vec171 = load <16 x float>, ptr %i.ds, align 4, !tbaa !13 ; 2 uses
  %strided.vec172 = shufflevector <16 x float> %wide.vec171, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec173 = shufflevector <16 x float> %wide.vec171, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.dt = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec172, %broadcast.splat159 ; 3 uses
  %i.du = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec173, %broadcast.splat159 ; 3 uses
  %i.dv = fpext reassoc nsz arcp contract afn <8 x float> %i.dt to <8 x double>
  %i.dw = fadd reassoc nsz arcp contract afn <8 x double> %i.dv, splat (double -5.000000e-01)
  %i.dx = fptosi <8 x double> %i.dw to <8 x i32>
  %i.dy = sub nsw <8 x i32> %i.dx, %broadcast.splat161
  %i.dz = fpext reassoc nsz arcp contract afn <8 x float> %i.du to <8 x double>
  %i.ea = fadd reassoc nsz arcp contract afn <8 x double> %i.dz, splat (double -5.000000e-01)
  %i.eb = fptosi <8 x double> %i.ea to <8 x i32>
  %i.ec = sub nsw <8 x i32> %i.eb, %broadcast.splat163
  %i.ed = mul nsw <8 x i32> %i.ec, %broadcast.splat165
  %i.ee = add nsw <8 x i32> %i.ed, %i.dy          ; 3 uses
  %i.ef = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.dt, %broadcast.splat151
  %i.eg = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.dt, %broadcast.splat153
  %.not187 = select <8 x i1> %i.ef, <8 x i1> %i.eg, <8 x i1> zeroinitializer
  %i.eh = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.du, %broadcast.splat155
  %.not184 = select <8 x i1> %.not187, <8 x i1> %i.eh, <8 x i1> zeroinitializer
  %i.ei = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.du, %broadcast.splat157
  %i.ej = icmp sgt <8 x i32> %i.ee, splat (i32 -1)
  %i.ek = icmp slt <8 x i32> %i.ee, %broadcast.splat167
  %i.el = select <8 x i1> %.not184, <8 x i1> %i.ei, <8 x i1> zeroinitializer
  %i.em = select <8 x i1> %i.el, <8 x i1> %i.ej, <8 x i1> zeroinitializer
  %i.en = select <8 x i1> %i.em, <8 x i1> %i.ek, <8 x i1> zeroinitializer ; 4 uses
  %i.eo = zext nneg <8 x i32> %i.ee to <8 x i64>
  %wide.gep174 = getelementptr inbounds nuw [8 x i8], ptr %i.dd, <8 x i64> %i.eo ; 2 uses
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep174, <8 x i1> %i.en, <8 x float> poison)
  %wide.gep175 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep174, i64 4
  %wide.masked.gather176 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep175, <8 x i1> %i.en, <8 x float> poison)
  %i.ep = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.dp
  %i.eq = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather176, %i.dq
  %i.er = fadd reassoc nsz arcp contract afn <8 x float> %i.ep, %strided.vec172
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.er, <8 x ptr> align 4 %wide.gep, <8 x i1> %i.en), !tbaa !13
  %i.es = fadd reassoc nsz arcp contract afn <8 x float> %i.eq, %strided.vec173
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.es, <8 x ptr> align 4 %wide.gep170, <8 x i1> %i.en), !tbaa !13
  %index.next177 = add nuw i64 %index169, 8       ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.et = icmp eq i64 %index.next177, %n.vec149
  br i1 %i.et, label %middle.block178, label %vector.body168, !llvm.loop !220

middle.block178:                                  ; preds = %vector.body168
  %cmp.n179 = icmp eq i64 %3, %n.vec149
  br i1 %cmp.n179, label %._crit_edge88, label %scalar.ph146.preheader

scalar.ph146.preheader:                           ; preds = %.lr.ph87, %middle.block178
  %.05985.ph = phi i64 [ 0, %.lr.ph87 ], [ %n.vec149, %middle.block178 ]
  %i.eu = insertelement <2 x float> poison, float %i.c, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ew = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ev
  br label %scalar.ph146

._crit_edge88:                                    ; preds = %bb.f, %middle.block178, %bb.c
  call void @free(ptr noundef %i.dd) #30
  br label %.sink.split

scalar.ph146:                                     ; preds = %scalar.ph146.preheader, %bb.f
  %.05985 = phi i64 [ %i.fw, %bb.f ], [ %.05985.ph, %scalar.ph146.preheader ] ; 2 uses
  %.idx = shl i64 %.05985, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.ey = load <2 x float>, ptr %i.ex, align 4, !tbaa !13 ; 2 uses
  %i.ez = fmul reassoc nsz arcp contract afn <2 x float> %i.ey, %i.ev ; 4 uses
  %i.fa = extractelement <2 x float> %i.ez, i64 0
  %i.fb = fpext reassoc nsz arcp contract afn <2 x float> %i.ez to <2 x double>
  %i.fc = fadd reassoc nsz arcp contract afn <2 x double> %i.fb, splat (double -5.000000e-01)
  %i.fd = fptosi <2 x double> %i.fc to <2 x i32>
  %i.fe = sub nsw <2 x i32> %i.fd, %i.di          ; 2 uses
  %i.ff = extractelement <2 x i32> %i.fe, i64 1
  %i.fg = mul nsw i32 %i.ff, %i.df
  %i.fh = extractelement <2 x i32> %i.fe, i64 0
  %i.fi = add nsw i32 %i.fg, %i.fh                ; 3 uses
  %i.fj = fcmp reassoc nsz arcp contract afn uge float %i.fa, %i.dl
  %i.fk = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.ez, %i.dm ; 2 uses
  %i.fl = extractelement <2 x i1> %i.fk, i64 0
  %or.cond69.not76 = select i1 %i.fl, i1 true, i1 %i.fj
  %i.fm = extractelement <2 x i1> %i.fk, i64 1
  %or.cond71 = select i1 %or.cond69.not76, i1 true, i1 %i.fm
  br i1 %or.cond71, label %bb.f, label %bb.d

bb.d:                                             ; preds = %scalar.ph146
  %i.fn = extractelement <2 x float> %i.ez, i64 1
  %i.fo = fcmp reassoc nsz arcp contract afn olt float %i.fn, %i.do
  %i.fp = icmp sgt i32 %i.fi, -1
  %or.cond4 = select i1 %i.fo, i1 %i.fp, i1 false
  %i.fq = icmp slt i32 %i.fi, %i.dh
  %or.cond72 = select i1 %or.cond4, i1 %i.fq, i1 false
  br i1 %or.cond72, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fr = zext nneg i32 %i.fi to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.fr
  %i.ft = load <2 x float>, ptr %i.fs, align 4
  %i.fu = fmul reassoc nsz arcp contract afn <2 x float> %i.ft, %i.ew
  %i.fv = fadd reassoc nsz arcp contract afn <2 x float> %i.fu, %i.ey
  store <2 x float> %i.fv, ptr %i.ex, align 4, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %scalar.ph146
  %i.fw = add nuw i64 %.05985, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fw, %3
  br i1 %exitcond.not, label %._crit_edge88, label %scalar.ph146, !llvm.loop !221

.sink.split:                                      ; preds = %bb.b, %._crit_edge88
  %.1.ph = phi i32 [ 1, %._crit_edge88 ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %._crit_edge
  %.1 = phi i32 [ 1, %._crit_edge ], [ %.1.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @distort_backtransform(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @_distort_xtransform(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define void @distort_mask(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
end_hunk_0
