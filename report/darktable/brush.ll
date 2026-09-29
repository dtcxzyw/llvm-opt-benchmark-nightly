Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/brush?download=true
inline.NumInlined: 210
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_brush_get_pts_border:bb.a
  %i.zi = load i64, ptr %12, align 8, !tbaa !132
  %i.zj = add nsw i64 %i.zi, -1290608000
  %i.zk = sitofp reassoc nsz arcp contract afn i64 %i.zj to double
  %i.zl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.zm = load i64, ptr %i.zl, align 8, !tbaa !133
  %i.zn = sitofp reassoc nsz arcp contract afn i64 %i.zm to double
  %i.zo = fmul reassoc nnan nsz arcp contract afn double %i.zn, f0x3EB0C6F7A0B5ED8D
  %i.zp = fadd reassoc nsz arcp contract afn double %i.zo, %i.zk
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.zq = fsub reassoc nsz arcp contract afn double %i.zp, %.1701
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.zg, double noundef %i.zq) #18
  br label %dt_masks_dynbuf_free.exit598

bb.dr:                                            ; preds = %.thread, %bb.dm, %bb.do
  %i.zr = load ptr, ptr %5, align 8, !tbaa !134
  call void @free(ptr noundef %i.zr) #18
  store ptr null, ptr %5, align 8, !tbaa !134
  store i32 0, ptr %6, align 4, !tbaa !106
  br i1 %.not, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.zs = load ptr, ptr %7, align 8, !tbaa !134
  call void @free(ptr noundef %i.zs) #18
  store ptr null, ptr %7, align 8, !tbaa !134
  store i32 0, ptr %8, align 4, !tbaa !106
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  br i1 %.not490, label %dt_masks_dynbuf_free.exit598, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.zt = load ptr, ptr %9, align 8, !tbaa !134
  call void @free(ptr noundef %i.zt) #18
  store ptr null, ptr %9, align 8, !tbaa !134
  store i32 0, ptr %10, align 4, !tbaa !106
  br label %dt_masks_dynbuf_free.exit598

dt_masks_dynbuf_free.exit598:                     ; preds = %bb.o, %dt_masks_dynbuf_free.exit596, %bb.dl, %bb.dk, %bb.dq, %bb.dp, %bb.du, %bb.dt, %.critedge520, %dt_masks_dynbuf_free.exit
  %.1 = phi i32 [ 0, %.critedge520 ], [ 0, %dt_masks_dynbuf_free.exit ], [ 0, %bb.dt ], [ 1, %bb.dk ], [ 1, %bb.dp ], [ 1, %bb.dl ], [ 1, %bb.dq ], [ 0, %bb.du ], [ 0, %dt_masks_dynbuf_free.exit596 ], [ 0, %bb.o ]
  ret i32 %.1
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef ptr @dt_masks_dynbuf_init(i64 noundef range(i64 200000, 1000001) %0, ptr noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(152) ptr @calloc(i64 noundef 1, i64 noundef 152) #22 ; 13 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = tail call i64 @g_strlcpy(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef 128) #18 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 0, ptr %i.d, align 8, !tbaa !101
  %i.e = shl nuw nsw i64 %0, 2
  %i.f = tail call ptr @dt_alloc_aligned(i64 noundef %i.e) #18 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.f, i64 64) ]
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_dt_masks_dynbuf_growto.exit.thread, label %bb.c

_dt_masks_dynbuf_growto.exit.thread:              ; preds = %bb.b
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.18, ptr noundef nonnull %i.b, i64 noundef %0) #18
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %.not19.i = icmp eq ptr %i.g, null
  br i1 %.not19.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !159
  %i.j = shl i64 %i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.f, ptr nonnull align 4 %i.g, i64 %i.j, i1 false)
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.l = and i32 %i.k, 4096
  %.not20.i = icmp eq i32 %i.l, 0
  br i1 %.not20.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.h, align 8, !tbaa !159
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !100
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.19, ptr noundef nonnull %i.b, i64 noundef %i.m, ptr noundef nonnull %i.f, ptr noundef %i.n) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !100
  tail call void @free(ptr noundef %i.o) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %0, ptr %i.p, align 8, !tbaa !159
  store ptr %i.f, ptr %i.a, align 8, !tbaa !100
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.r = and i32 %i.q, 4096
  %.not13 = icmp eq i32 %i.r, 0
  br i1 %.not13, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.b, i64 noundef %0, ptr noundef nonnull %i.f) #18
  br label %bb.i

bb.i:                                             ; preds = %_dt_masks_dynbuf_growto.exit.thread, %bb.h
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.s = icmp eq ptr %.pr, null
  br i1 %i.s, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.a) #18
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.i, %bb.j, %bb.a
  %.0 = phi ptr [ null, %bb.j ], [ %i.a, %bb.i ], [ null, %bb.a ], [ %i.a, %bb.g ]
  ret ptr %.0
}

declare i32 @g_list_length(ptr noundef) local_unnamed_addr #4

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @dt_masks_dynbuf_add_2(ptr noundef %0, float noundef %1, float noundef %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.c = add i64 %i.b, 2                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load i64, ptr %i.d, align 8, !tbaa !159  ; 3 uses
  %.not = icmp ult i64 %i.c, %i.e
  br i1 %.not, label %bb.d, label %bb.b, !prof !160

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl i64 %i.e, 1
  %i.h = add i64 %i.g, 2
  %i.i = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %0, i64 noundef %i.h)
  %.not11 = icmp eq i32 %i.i, 0
  br i1 %.not11, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.a, align 8, !tbaa !101 ; 2 uses
  %.pre12 = add i64 %.pre, 2
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi = phi i64 [ %.pre12, %._crit_edge ], [ %i.c, %bb.a ]
  %i.j = phi i64 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !100    ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.j
  store float %1, ptr %i.l, align 4, !tbaa !102
  store i64 %.pre-phi, ptr %i.a, align 8, !tbaa !101
  %i.m = getelementptr [4 x i8], ptr %i.k, i64 %i.j
  %i.n = getelementptr i8, ptr %i.m, i64 4
  store float %2, ptr %i.n, align 4, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_brush_points_recurs_border_gaps(ptr nofree noundef nonnull readonly captures(none) %0, float %.0.val, float %.4.val, float %.0.val1, float %.4.val3, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef range(i32 -1, 2) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 8 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !102 ; 2 uses
  %i.c = fsub reassoc nsz arcp contract afn float %.4.val, %i.b ; 2 uses
  %i.d = load float, ptr %0, align 4, !tbaa !102  ; 2 uses
  %i.e = fsub reassoc nsz arcp contract afn float %.0.val, %i.d ; 2 uses
  %i.f = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.c, float %i.e) ; 5 uses
  %i.g = fsub reassoc nsz arcp contract afn float %.4.val3, %i.b ; 2 uses
  %i.h = fsub reassoc nsz arcp contract afn float %.0.val1, %i.d ; 2 uses
  %i.i = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.g, float %i.h) ; 4 uses
  %i.j = fcmp reassoc nsz arcp contract afn oeq float %i.f, %i.i
  br i1 %i.j, label %dt_masks_dynbuf_reserve_n.exit97.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fcmp reassoc nsz arcp contract afn olt float %i.i, %i.f
  %i.l = icmp ne i32 %3, 0                        ; 2 uses
  %or.cond = and i1 %i.l, %i.k
  %i.m = fadd reassoc nsz arcp contract afn float %i.i, f0x40C90FDB
  %spec.select = select nsz i1 %or.cond, float %i.m, float %i.i ; 5 uses
  %i.n = fcmp reassoc nsz arcp contract afn ule float %spec.select, %i.f
  %or.cond3 = or i1 %i.l, %i.n
  %i.o = fadd reassoc nsz arcp contract afn float %i.f, f0x40C90FDB
  %.082 = select nsz i1 %or.cond3, float %i.f, float %i.o ; 5 uses
  %i.p = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.c, float noundef %i.e) #20 ; 3 uses
  %i.q = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.g, float noundef %i.h) #20 ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %spec.select, %.082
  %i.s = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.p, float %i.q)
  %i.t = fsub reassoc nsz arcp contract afn float %.082, %spec.select
  %i.u = fsub reassoc nsz arcp contract afn float %spec.select, %.082
  %.sink = select i1 %i.r, float %i.u, float %i.t
  %i.v = fmul reassoc nsz arcp contract afn float %i.s, %.sink
  %.080 = fptosi float %i.v to i32                ; 7 uses
  %i.w = icmp slt i32 %.080, 2
  br i1 %i.w, label %dt_masks_dynbuf_reserve_n.exit97.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = insertelement <2 x float> poison, float %i.q, i64 0
  %i.y = insertelement <2 x float> %i.x, float %spec.select, i64 1
  %i.z = insertelement <2 x float> poison, float %i.p, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %.082, i64 1 ; 4 uses
  %i.ab = fsub reassoc nsz arcp contract afn <2 x float> %i.y, %i.aa
  %i.ac = uitofp nneg i32 %.080 to float
  %i.ad = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fdiv reassoc nsz arcp contract afn <2 x float> %i.ab, %i.ae ; 7 uses
  %i.ag = shl nuw i32 %.080, 1
  %i.ah = add i32 %i.ag, -2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !101 ; 2 uses
  %i.ak = zext nneg i32 %i.ah to i64              ; 4 uses
  %i.al = add i64 %i.aj, %i.ak                    ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.an = load i64, ptr %i.am, align 8, !tbaa !159 ; 3 uses
  %.not.i = icmp ult i64 %i.al, %i.an
  br i1 %.not.i, label %bb.f, label %bb.d, !prof !160

bb.d:                                             ; preds = %bb.c
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %dt_masks_dynbuf_reserve_n.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.018.i = phi i64 [ %i.ap, %.preheader.i ], [ %i.an, %bb.d ] ; 3 uses
  %.not19.i = icmp ult i64 %i.al, %.018.i
  %i.ap = shl i64 %.018.i, 1
  br i1 %.not19.i, label %bb.e, label %.preheader.i

bb.e:                                             ; preds = %.preheader.i
  %i.aq = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %1, i64 noundef %.018.i)
  %.not20.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not20.not.i, label %dt_masks_dynbuf_reserve_n.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load i64, ptr %i.ai, align 8, !tbaa !101 ; 2 uses
  %.pre21.i = add i64 %.pre.i, %i.ak
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %bb.c
  %.pre-phi.i = phi i64 [ %.pre21.i, %._crit_edge.i ], [ %i.al, %bb.c ]
  %i.ar = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.aj, %bb.c ]
  %i.as = load ptr, ptr %1, align 8, !tbaa !100
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ar
  store i64 %.pre-phi.i, ptr %i.ai, align 8, !tbaa !101
  br label %dt_masks_dynbuf_reserve_n.exit

dt_masks_dynbuf_reserve_n.exit:                   ; preds = %bb.d, %bb.e, %bb.f
  %.1.i = phi ptr [ null, %bb.e ], [ %i.at, %bb.f ], [ null, %bb.d ] ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !101 ; 2 uses
  %i.aw = add i64 %i.av, %i.ak                    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !159 ; 3 uses
  %.not.i87 = icmp ult i64 %i.aw, %i.ay
  br i1 %.not.i87, label %dt_masks_dynbuf_reserve_n.exit97, label %bb.g, !prof !160

bb.g:                                             ; preds = %dt_masks_dynbuf_reserve_n.exit
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %dt_masks_dynbuf_reserve_n.exit97.thread, label %.preheader.i88

.preheader.i88:                                   ; preds = %bb.g, %.preheader.i88
  %.018.i89 = phi i64 [ %i.ba, %.preheader.i88 ], [ %i.ay, %bb.g ] ; 3 uses
  %.not19.i90 = icmp ult i64 %i.aw, %.018.i89
  %i.ba = shl i64 %.018.i89, 1
  br i1 %.not19.i90, label %bb.h, label %.preheader.i88

bb.h:                                             ; preds = %.preheader.i88
  %i.bb = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %2, i64 noundef %.018.i89)
  %.not20.not.i91 = icmp eq i32 %i.bb, 0
  br i1 %.not20.not.i91, label %dt_masks_dynbuf_reserve_n.exit97.thread, label %._crit_edge.i92

._crit_edge.i92:                                  ; preds = %bb.h
  %.pre.i93 = load i64, ptr %i.au, align 8, !tbaa !101 ; 2 uses
  %.pre21.i94 = add i64 %.pre.i93, %i.ak
  br label %dt_masks_dynbuf_reserve_n.exit97

dt_masks_dynbuf_reserve_n.exit97:                 ; preds = %dt_masks_dynbuf_reserve_n.exit, %._crit_edge.i92
  %.pre-phi.i95 = phi i64 [ %.pre21.i94, %._crit_edge.i92 ], [ %i.aw, %dt_masks_dynbuf_reserve_n.exit ]
  %i.bc = phi i64 [ %.pre.i93, %._crit_edge.i92 ], [ %i.av, %dt_masks_dynbuf_reserve_n.exit ] ; 2 uses
  %i.bd = load ptr, ptr %2, align 8, !tbaa !100   ; 3 uses
  store i64 %.pre-phi.i95, ptr %i.au, align 8, !tbaa !101
  %i.be = icmp ne ptr %.1.i, null
  %i.bf = icmp ne ptr %i.bd, null
  %or.cond5 = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond5, label %.lr.ph.preheader, label %dt_masks_dynbuf_reserve_n.exit97.thread

.lr.ph.preheader:                                 ; preds = %dt_masks_dynbuf_reserve_n.exit97
  %i.bg = getelementptr [4 x i8], ptr %i.bd, i64 %i.bc ; 6 uses
  %i.bh = add nsw i32 %.080, -2                   ; 2 uses
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bh, 7
  br i1 %min.iters.check, label %.lr.ph.preheader55, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.bk = shl nuw nsw i64 %i.bi, 3                ; 2 uses
  %i.bl = getelementptr i8, ptr %.1.i, i64 %i.bk
  %scevgep = getelementptr i8, ptr %i.bl, i64 8   ; 2 uses
  %i.bm = shl i64 %i.bc, 2
  %i.bn = getelementptr i8, ptr %i.bd, i64 %i.bk
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.bm
  %scevgep19 = getelementptr i8, ptr %i.bo, i64 8 ; 2 uses
  %scevgep20 = getelementptr i8, ptr %0, i64 8    ; 2 uses
  %bound0 = icmp ult ptr %.1.i, %scevgep19
  %bound1 = icmp ult ptr %i.bg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound021 = icmp ult ptr %.1.i, %scevgep20
  %bound122 = icmp ult ptr %0, %scevgep
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx = or i1 %found.conflict, %found.conflict23
  %bound024 = icmp ult ptr %i.bg, %scevgep20
  %bound125 = icmp ult ptr %0, %scevgep19
  %found.conflict26 = and i1 %bound024, %bound125
  %conflict.rdx27 = or i1 %conflict.rdx, %found.conflict26
  br i1 %conflict.rdx27, label %.lr.ph.preheader55, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 8589934584              ; 5 uses
  %i.bp = trunc i64 %n.vec to i32
  %i.bq = or disjoint i32 %i.bp, 1
  %i.br = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bg, i64 %i.br
  %i.bt = getelementptr i8, ptr %.1.i, i64 %i.br
  %i.bu = uitofp nneg i64 %n.vec to float
  %i.bv = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul reassoc nsz arcp contract afn <2 x float> %i.af, %i.bw
  %i.by = fadd reassoc nsz arcp contract afn <2 x float> %i.aa, %i.bx
  %i.bz = load float, ptr %0, align 4, !tbaa !102, !alias.scope !241
  %broadcast.splatinsert41.a = insertelement <8 x float> poison, float %i.bz, i64 0 ; 2 uses
  %i.ca = load float, ptr %i.a, align 4, !tbaa !102, !alias.scope !241
  %broadcast.splatinsert43 = insertelement <8 x float> poison, float %i.ca, i64 0 ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %i.af, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat29 = shufflevector <2 x float> %i.af, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert30 = insertelement <8 x float> poison, float %.082, i64 0
  %broadcast.splat31 = shufflevector <8 x float> %broadcast.splatinsert30, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cb = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00>
  %induction = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat31, %i.cb
  %broadcast.splatinsert34 = insertelement <8 x float> poison, float %i.p, i64 0
  %broadcast.splat35 = shufflevector <8 x float> %broadcast.splatinsert34, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cc = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat29, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00>
  %induction36 = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat35, %i.cc
  %i.cd = fmul reassoc nsz arcp contract afn <2 x float> %i.af, splat (float 8.000000e+00) ; 2 uses
  %broadcast.splat33 = shufflevector <2 x float> %i.cd, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat38 = shufflevector <2 x float> %i.cd, <2 x float> poison, <8 x i32> zeroinitializer
  %interleaved.vec = shufflevector <8 x float> %broadcast.splatinsert41.a, <8 x float> %broadcast.splatinsert43, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %i.ce = shufflevector <8 x float> %broadcast.splatinsert41.a, <8 x float> %broadcast.splatinsert43, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x float> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind39 = phi <8 x float> [ %induction36, %vector.ph ], [ %vec.ind.next50, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.cf
  %next.gep40 = getelementptr i8, ptr %.1.i, i64 %i.cf
  %i.cg = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind, %broadcast.splat
  %i.ch = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.cg) ; 2 uses
  %i.ci = extractvalue { <8 x float>, <8 x float> } %i.ch, 0
  %i.cj = extractvalue { <8 x float>, <8 x float> } %i.ch, 1
  %i.ck = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind39, %broadcast.splat29 ; 2 uses
  store <16 x float> %interleaved.vec, ptr %next.gep40, align 4, !tbaa !102, !alias.scope !242, !noalias !243
  %i.cl = fmul reassoc nsz arcp contract afn <8 x float> %i.cj, %i.ck
  %i.cm = fmul reassoc nsz arcp contract afn <8 x float> %i.ci, %i.ck
  %i.cn = shufflevector <8 x float> %i.cl, <8 x float> %i.cm, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec49 = fadd reassoc nsz arcp contract afn <16 x float> %i.ce, %i.cn
  store <16 x float> %interleaved.vec49, ptr %next.gep, align 4, !tbaa !102, !alias.scope !244, !noalias !241
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind, %broadcast.splat33
  %vec.ind.next50 = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind39, %broadcast.splat38
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %dt_masks_dynbuf_reserve_n.exit97.thread, label %.lr.ph.preheader55

.lr.ph.preheader55:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.011.ph = phi i32 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.bq, %middle.block ] ; 3 uses
  %.07610.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.preheader ], [ %i.bs, %middle.block ] ; 4 uses
  %.0779.ph = phi ptr [ %.1.i, %vector.memcheck ], [ %.1.i, %.lr.ph.preheader ], [ %i.bt, %middle.block ] ; 4 uses
  %.ph = phi <2 x float> [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.preheader ], [ %i.by, %middle.block ] ; 2 uses
  %i.cp = and i32 %.080, 1
  %lcmp.mod.not.not = icmp eq i32 %i.cp, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader55
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %.ph, %i.af ; 3 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 1
  %sincos.prol = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.cr) ; 2 uses
  %sin.prol = extractvalue { float, float } %sincos.prol, 0
  %cos.prol = extractvalue { float, float } %sincos.prol, 1
  %i.cs = load float, ptr %0, align 4, !tbaa !102
  %i.ct = getelementptr inbounds nuw i8, ptr %.0779.ph, i64 4
  store float %i.cs, ptr %.0779.ph, align 4, !tbaa !102
  %i.cu = load float, ptr %i.a, align 4, !tbaa !102
  %i.cv = getelementptr inbounds nuw i8, ptr %.0779.ph, i64 8
  store float %i.cu, ptr %i.ct, align 4, !tbaa !102
  %i.cw = load float, ptr %0, align 4, !tbaa !102
  %i.cx = extractelement <2 x float> %i.cq, i64 0 ; 2 uses
  %i.cy = fmul reassoc nsz arcp contract afn float %cos.prol, %i.cx
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cw, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %.07610.ph, i64 4
  store float %i.cz, ptr %.07610.ph, align 4, !tbaa !102
  %i.db = load float, ptr %i.a, align 4, !tbaa !102
  %i.dc = fmul reassoc nsz arcp contract afn float %sin.prol, %i.cx
  %i.dd = fadd reassoc nsz arcp contract afn float %i.db, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %.07610.ph, i64 8
  store float %i.dd, ptr %i.da, align 4, !tbaa !102
  %i.df = add nuw nsw i32 %.011.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader55
  %.011.unr = phi i32 [ %.011.ph, %.lr.ph.preheader55 ], [ %i.df, %.lr.ph.prol ]
  %.07610.unr = phi ptr [ %.07610.ph, %.lr.ph.preheader55 ], [ %i.de, %.lr.ph.prol ]
  %.0779.unr = phi ptr [ %.0779.ph, %.lr.ph.preheader55 ], [ %i.cv, %.lr.ph.prol ]
  %.unr = phi <2 x float> [ %.ph, %.lr.ph.preheader55 ], [ %i.cq, %.lr.ph.prol ]
  %i.dg = add nsw i32 %.080, -1
  %i.dh = icmp eq i32 %.011.ph, %i.dg
  br i1 %i.dh, label %dt_masks_dynbuf_reserve_n.exit97.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.011 = phi i32 [ %i.en, %.lr.ph ], [ %.011.unr, %.lr.ph.prol.loopexit ]
  %.07610 = phi ptr [ %i.em, %.lr.ph ], [ %.07610.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0779 = phi ptr [ %i.ed, %.lr.ph ], [ %.0779.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.di = phi <2 x float> [ %i.dy, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.dj = fadd reassoc nsz arcp contract afn <2 x float> %i.di, %i.af ; 3 uses
  %i.dk = extractelement <2 x float> %i.dj, i64 1
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.dk) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.dl = load float, ptr %0, align 4, !tbaa !102
  %i.dm = getelementptr inbounds nuw i8, ptr %.0779, i64 4
  store float %i.dl, ptr %.0779, align 4, !tbaa !102
  %i.dn = load float, ptr %i.a, align 4, !tbaa !102
  %i.do = getelementptr inbounds nuw i8, ptr %.0779, i64 8
  store float %i.dn, ptr %i.dm, align 4, !tbaa !102
  %i.dp = load float, ptr %0, align 4, !tbaa !102
  %i.dq = extractelement <2 x float> %i.dj, i64 0 ; 2 uses
  %i.dr = fmul reassoc nsz arcp contract afn float %cos, %i.dq
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dp, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %.07610, i64 4
  store float %i.ds, ptr %.07610, align 4, !tbaa !102
  %i.du = load float, ptr %i.a, align 4, !tbaa !102
  %i.dv = fmul reassoc nsz arcp contract afn float %sin, %i.dq
  %i.dw = fadd reassoc nsz arcp contract afn float %i.du, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %.07610, i64 8
  store float %i.dw, ptr %i.dt, align 4, !tbaa !102
  %i.dy = fadd reassoc nsz arcp contract afn <2 x float> %i.dj, %i.af ; 3 uses
  %i.dz = extractelement <2 x float> %i.dy, i64 1
  %sincos.1 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.dz) ; 2 uses
  %sin.1 = extractvalue { float, float } %sincos.1, 0
  %cos.1 = extractvalue { float, float } %sincos.1, 1
  %i.ea = load float, ptr %0, align 4, !tbaa !102
  %i.eb = getelementptr inbounds nuw i8, ptr %.0779, i64 12
  store float %i.ea, ptr %i.do, align 4, !tbaa !102
  %i.ec = load float, ptr %i.a, align 4, !tbaa !102
  %i.ed = getelementptr inbounds nuw i8, ptr %.0779, i64 16
  store float %i.ec, ptr %i.eb, align 4, !tbaa !102
  %i.ee = load float, ptr %0, align 4, !tbaa !102
  %i.ef = extractelement <2 x float> %i.dy, i64 0 ; 2 uses
  %i.eg = fmul reassoc nsz arcp contract afn float %cos.1, %i.ef
  %i.eh = fadd reassoc nsz arcp contract afn float %i.ee, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %.07610, i64 12
  store float %i.eh, ptr %i.dx, align 4, !tbaa !102
  %i.ej = load float, ptr %i.a, align 4, !tbaa !102
  %i.ek = fmul reassoc nsz arcp contract afn float %sin.1, %i.ef
  %i.el = fadd reassoc nsz arcp contract afn float %i.ej, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %.07610, i64 16
  store float %i.el, ptr %i.ei, align 4, !tbaa !102
  %i.en = add nuw nsw i32 %.011, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.en, %.080
  br i1 %exitcond.not.1, label %dt_masks_dynbuf_reserve_n.exit97.thread, label %.lr.ph, !llvm.loop !240

dt_masks_dynbuf_reserve_n.exit97.thread:          ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.g, %bb.h, %bb.b, %dt_masks_dynbuf_reserve_n.exit97, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_brush_points_recurs(ptr noundef nonnull %0, ptr noundef nonnull %1, double noundef %2, double noundef %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef nonnull captures(none) %7, ptr nofree noundef nonnull writeonly captures(none) %8, ptr nofree noundef nonnull writeonly captures(none) %9, ptr nofree noundef nonnull writeonly captures(none) %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef %13) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 4 uses
  %i.b = alloca [2 x float], align 8              ; 4 uses
  %i.c = alloca [2 x float], align 4              ; 4 uses
  %i.d = alloca [2 x float], align 4              ; 4 uses
  %i.e = alloca [2 x float], align 4              ; 3 uses
  %.not = icmp eq ptr %12, null                   ; 2 uses
  %.not140 = icmp eq ptr %13, null
  %i.f = load float, ptr %4, align 4, !tbaa !102
  %i.g = fcmp reassoc nsz arcp contract afn oeq float %i.f, f0xFF7FFFFF
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load float, ptr %0, align 4, !tbaa !102  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !102 ; 2 uses
end_hunk_0
begin_hunk_1_@_brush_points_recurs:bb.a
  %i.fd = fsub reassoc nsz arcp contract afn float %i.dg, %i.de
  %i.fe = fpext reassoc nsz arcp contract afn float %i.fd to double
  %i.ff = fmul reassoc nsz arcp contract afn double %3, 2.000000e+00
  %i.fg = fsub reassoc nsz arcp contract afn double 3.000000e+00, %i.ff
  %i.fh = fmul reassoc nsz arcp contract afn double %i.fc, %i.fg
  %i.fi = fmul reassoc nsz arcp contract afn double %i.fh, %i.fe
  %i.fj = fpext reassoc nsz arcp contract afn float %i.de to double
  %i.fk = fadd reassoc nsz arcp contract afn double %i.fi, %i.fj
  %i.fl = fptrunc reassoc nsz arcp contract afn double %i.fk to float
  %i.fm = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.es, float noundef %i.ez) #20
  %i.fn = fdiv reassoc nsz arcp contract afn float %i.fl, %i.fm ; 2 uses
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, %i.ez
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fo, %i.dy
  store float %i.fp, ptr %7, align 4, !tbaa !102
  %i.fq = load float, ptr %i.dh, align 4, !tbaa !102
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fn, %i.es
  %i.fs = fsub reassoc nsz arcp contract afn float %i.fq, %i.fr
  br label %_brush_border_get_XY.exit152

_brush_border_get_XY.exit152:                     ; preds = %bb.g, %bb.h
  %storemerge.i151 = phi float [ %i.fs, %bb.h ], [ f0xFF7FFFFF, %bb.g ]
  store float %storemerge.i151, ptr %i.di, align 4, !tbaa !102
  %.pre.pre = load float, ptr %5, align 4, !tbaa !102
  br label %bb.i

bb.i:                                             ; preds = %_brush_border_get_XY.exit152, %bb.e
  %.pre = phi float [ %.pre.pre, %_brush_border_get_XY.exit152 ], [ %i.cm, %bb.e ] ; 5 uses
  %i.ft = fsub reassoc nsz arcp contract afn double %3, %2
  %i.fu = fcmp reassoc nsz arcp contract afn olt double %i.ft, f0x3F1A36E2E0000000
  br i1 %i.fu, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fv = load float, ptr %4, align 4, !tbaa !102
  %i.fw = fptosi float %i.fv to i32
  %i.fx = fptosi float %.pre to i32
  %or.cond = icmp eq i32 %i.fw, %i.fx
  br i1 %or.cond, label %bb.k, label %bb.ap

bb.k:                                             ; preds = %bb.j
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !102
  %i.ga = fptosi float %i.fz to i32
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !102
  %i.gd = fptosi float %i.gc to i32
  %or.cond141 = icmp eq i32 %i.ga, %i.gd
  br i1 %or.cond141, label %bb.l, label %bb.ap

bb.l:                                             ; preds = %bb.k
  br i1 %.not, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ge = load float, ptr %6, align 4, !tbaa !102
  %i.gf = fptosi float %i.ge to i32
  %i.gg = load float, ptr %7, align 4, !tbaa !102
  %i.gh = fptosi float %i.gg to i32
  %or.cond142 = icmp eq i32 %i.gf, %i.gh
  br i1 %or.cond142, label %bb.n, label %bb.ap

bb.n:                                             ; preds = %bb.m
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !102
  %i.gk = fptosi float %i.gj to i32
  %i.gl = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !102
  %i.gn = fptosi float %i.gm to i32
  %or.cond143 = icmp eq i32 %i.gk, %i.gn
  br i1 %or.cond143, label %bb.o, label %bb.ap

bb.o:                                             ; preds = %bb.n, %bb.i
  store float %.pre, ptr %8, align 4, !tbaa !102
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 9 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !102 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.gp, ptr %i.gq, align 4, !tbaa !102
  %i.gr = getelementptr inbounds nuw i8, ptr %11, i64 136 ; 6 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !101 ; 2 uses
  %i.gt = add i64 %i.gs, 2                        ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 144 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !159 ; 3 uses
  %.not.i = icmp ult i64 %i.gt, %i.gv
  br i1 %.not.i, label %bb.r, label %bb.p, !prof !160

bb.p:                                             ; preds = %bb.o
  %i.gw = icmp eq i64 %i.gv, 0
  br i1 %i.gw, label %dt_masks_dynbuf_add_2.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gx = shl i64 %i.gv, 1
  %i.gy = add i64 %i.gx, 2
  %i.gz = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %11, i64 noundef %i.gy)
  %.not11.i = icmp eq i32 %i.gz, 0
  br i1 %.not11.i, label %dt_masks_dynbuf_add_2.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.q
  %.pre.i = load i64, ptr %i.gr, align 8, !tbaa !101 ; 2 uses
  %.pre12.i = add i64 %.pre.i, 2
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i, %bb.o
  %.pre-phi.i = phi i64 [ %.pre12.i, %._crit_edge.i ], [ %i.gt, %bb.o ]
  %i.ha = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.gs, %bb.o ]
  %i.hb = load ptr, ptr %11, align 8, !tbaa !100
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.ha ; 2 uses
  store float %.pre, ptr %i.hc, align 4, !tbaa !102
  store i64 %.pre-phi.i, ptr %i.gr, align 8, !tbaa !101
  %i.hd = getelementptr i8, ptr %i.hc, i64 4
  store float %i.gp, ptr %i.hd, align 4, !tbaa !102
  br label %dt_masks_dynbuf_add_2.exit

dt_masks_dynbuf_add_2.exit:                       ; preds = %bb.p, %bb.q, %bb.r
  br i1 %.not, label %dt_masks_dynbuf_add_2.exit160, label %bb.s

bb.s:                                             ; preds = %dt_masks_dynbuf_add_2.exit
  %i.he = load float, ptr %7, align 4, !tbaa !102 ; 4 uses
  %i.hf = fcmp reassoc nsz arcp contract afn oeq float %i.he, f0xFF7FFFFF
  %i.hg = load float, ptr %6, align 4, !tbaa !102 ; 4 uses
  br i1 %i.hf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store float %i.hg, ptr %7, align 4, !tbaa !102
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !102
  %i.hj = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.hi, ptr %i.hj, align 4, !tbaa !102
  %.pre183 = load float, ptr %6, align 4, !tbaa !102
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.hk = fcmp reassoc nsz arcp contract afn oeq float %i.hg, f0xFF7FFFFF
  br i1 %i.hk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store float %i.he, ptr %6, align 4, !tbaa !102
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !102
  %i.hn = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.hm, ptr %i.hn, align 4, !tbaa !102
  %.pre182 = load float, ptr %7, align 4, !tbaa !102
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %i.ho = phi float [ %i.hg, %bb.u ], [ %i.he, %bb.v ], [ %.pre183, %bb.t ] ; 2 uses
  %i.hp = phi float [ %i.he, %bb.u ], [ %.pre182, %bb.v ], [ %i.hg, %bb.t ] ; 2 uses
  %i.hq = fptosi float %i.hp to i32
  %i.hr = fptosi float %i.ho to i32
  %i.hs = add i32 %i.hq, -3
  %i.ht = sub i32 %i.hs, %i.hr
  %i.hu = icmp ult i32 %i.ht, -5
  br i1 %i.hu, label %._crit_edge, label %bb.x

._crit_edge:                                      ; preds = %bb.w
  %.phi.trans.insert = getelementptr i8, ptr %6, i64 4
  %.val147.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !102
  %.phi.trans.insert185 = getelementptr i8, ptr %7, i64 4
  %.val149.pre = load float, ptr %.phi.trans.insert185, align 4, !tbaa !102
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hv = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !102 ; 2 uses
  %i.hx = fptosi float %i.hw to i32
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !102 ; 2 uses
  %i.ia = fptosi float %i.hz to i32
  %i.ib = add i32 %i.hx, -3
  %i.ic = sub i32 %i.ib, %i.ia
  %i.id = icmp ult i32 %i.ic, -5
  br i1 %i.id, label %bb.y, label %_brush_points_recurs_border_small_gaps.exit

bb.y:                                             ; preds = %._crit_edge, %bb.x
  %.val149 = phi float [ %.val149.pre, %._crit_edge ], [ %i.hw, %bb.x ]
  %.val147 = phi float [ %.val147.pre, %._crit_edge ], [ %i.hz, %bb.x ]
  %i.ie = load float, ptr %i.go, align 4, !tbaa !102 ; 2 uses
  %i.if = fsub reassoc nsz arcp contract afn float %.val147, %i.ie ; 2 uses
  %i.ig = load float, ptr %5, align 4, !tbaa !102 ; 2 uses
  %i.ih = fsub reassoc nsz arcp contract afn float %i.ho, %i.ig ; 2 uses
  %i.ii = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.if, float %i.ih)
  %i.ij = fadd reassoc nsz arcp contract afn float %i.ii, f0x40C90FDB
  %i.ik = frem reassoc nsz arcp contract afn float %i.ij, f0x40C90FDB ; 6 uses
  %i.il = fsub reassoc nsz arcp contract afn float %.val149, %i.ie ; 2 uses
  %i.im = fsub reassoc nsz arcp contract afn float %i.hp, %i.ig ; 2 uses
  %i.in = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.il, float %i.im)
  %i.io = fadd reassoc nsz arcp contract afn float %i.in, f0x40C90FDB
  %i.ip = frem reassoc nsz arcp contract afn float %i.io, f0x40C90FDB ; 2 uses
  %i.iq = fcmp reassoc nsz arcp contract afn oeq float %i.ik, %i.ip
  br i1 %i.iq, label %_brush_points_recurs_border_small_gaps.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ir = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.if, float noundef %i.ih) #20 ; 6 uses
  %i.is = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.il, float noundef %i.im) #20 ; 2 uses
  %i.it = fsub reassoc nsz arcp contract afn float %i.ip, %i.ik ; 4 uses
  %i.iu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.it)
  %i.iv = fcmp reassoc nsz arcp contract afn ogt float %i.iu, f0x40490FDB
  %i.iw = tail call reassoc nsz arcp contract afn float @llvm.copysign.f32(float f0x40C90FDB, float %i.it)
  %i.ix = fsub reassoc nsz arcp contract afn float %i.it, %i.iw
  %.065.i = select nsz i1 %i.iv, float %i.ix, float %i.it ; 2 uses
  %i.iy = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.065.i)
  %i.iz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ir, float %i.is)
  %i.ja = fmul reassoc nsz arcp contract afn float %i.iz, %i.iy
  %i.jb = fptosi float %i.ja to i32               ; 7 uses
  %i.jc = icmp slt i32 %i.jb, 2
  br i1 %i.jc, label %_brush_points_recurs_border_small_gaps.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jd = uitofp nneg i32 %i.jb to float          ; 2 uses
  %i.je = fdiv reassoc nsz arcp contract afn float %.065.i, %i.jd ; 7 uses
  %i.jf = fsub reassoc nsz arcp contract afn float %i.is, %i.ir
  %i.jg = fdiv reassoc nsz arcp contract afn float %i.jf, %i.jd ; 6 uses
  %i.jh = shl nuw i32 %i.jb, 1
  %i.ji = add i32 %i.jh, -2
  %i.jj = load i64, ptr %i.gr, align 8, !tbaa !101 ; 2 uses
  %i.jk = zext nneg i32 %i.ji to i64              ; 4 uses
  %i.jl = add i64 %i.jj, %i.jk                    ; 3 uses
  %i.jm = load i64, ptr %i.gu, align 8, !tbaa !159 ; 3 uses
  %.not.i.i = icmp ult i64 %i.jl, %i.jm
  br i1 %.not.i.i, label %bb.ad, label %bb.ab, !prof !160

bb.ab:                                            ; preds = %bb.aa
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %dt_masks_dynbuf_reserve_n.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ab, %.preheader.i.i
  %.018.i.i = phi i64 [ %i.jo, %.preheader.i.i ], [ %i.jm, %bb.ab ] ; 3 uses
  %.not19.i.i = icmp ult i64 %i.jl, %.018.i.i
  %i.jo = shl i64 %.018.i.i, 1
  br i1 %.not19.i.i, label %bb.ac, label %.preheader.i.i

bb.ac:                                            ; preds = %.preheader.i.i
  %i.jp = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %11, i64 noundef %.018.i.i)
  %.not20.not.i.i = icmp eq i32 %i.jp, 0
  br i1 %.not20.not.i.i, label %dt_masks_dynbuf_reserve_n.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ac
  %.pre.i.i = load i64, ptr %i.gr, align 8, !tbaa !101 ; 2 uses
  %.pre21.i.i = add i64 %.pre.i.i, %i.jk
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i, %bb.aa
  %.pre-phi.i.i = phi i64 [ %.pre21.i.i, %._crit_edge.i.i ], [ %i.jl, %bb.aa ]
  %i.jq = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.jj, %bb.aa ]
  %i.jr = load ptr, ptr %11, align 8, !tbaa !100
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jq
  store i64 %.pre-phi.i.i, ptr %i.gr, align 8, !tbaa !101
  br label %dt_masks_dynbuf_reserve_n.exit.i

dt_masks_dynbuf_reserve_n.exit.i:                 ; preds = %bb.ad, %bb.ac, %bb.ab
  %.1.i.i = phi ptr [ null, %bb.ac ], [ %i.js, %bb.ad ], [ null, %bb.ab ] ; 8 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %12, i64 136 ; 3 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !101 ; 2 uses
  %i.jv = add i64 %i.ju, %i.jk                    ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %12, i64 144
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !159 ; 3 uses
  %.not.i72.i = icmp ult i64 %i.jv, %i.jx
  br i1 %.not.i72.i, label %dt_masks_dynbuf_reserve_n.exit82.i, label %bb.ae, !prof !160

bb.ae:                                            ; preds = %dt_masks_dynbuf_reserve_n.exit.i
  %i.jy = icmp eq i64 %i.jx, 0
  br i1 %i.jy, label %_brush_points_recurs_border_small_gaps.exit, label %.preheader.i73.i

.preheader.i73.i:                                 ; preds = %bb.ae, %.preheader.i73.i
  %.018.i74.i = phi i64 [ %i.jz, %.preheader.i73.i ], [ %i.jx, %bb.ae ] ; 3 uses
  %.not19.i75.i = icmp ult i64 %i.jv, %.018.i74.i
  %i.jz = shl i64 %.018.i74.i, 1
  br i1 %.not19.i75.i, label %bb.af, label %.preheader.i73.i

bb.af:                                            ; preds = %.preheader.i73.i
  %i.ka = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %12, i64 noundef %.018.i74.i)
  %.not20.not.i76.i = icmp eq i32 %i.ka, 0
  br i1 %.not20.not.i76.i, label %_brush_points_recurs_border_small_gaps.exit, label %._crit_edge.i77.i

._crit_edge.i77.i:                                ; preds = %bb.af
  %.pre.i78.i = load i64, ptr %i.jt, align 8, !tbaa !101 ; 2 uses
  %.pre21.i79.i = add i64 %.pre.i78.i, %i.jk
  br label %dt_masks_dynbuf_reserve_n.exit82.i

dt_masks_dynbuf_reserve_n.exit82.i:               ; preds = %._crit_edge.i77.i, %dt_masks_dynbuf_reserve_n.exit.i
  %.pre-phi.i80.i = phi i64 [ %.pre21.i79.i, %._crit_edge.i77.i ], [ %i.jv, %dt_masks_dynbuf_reserve_n.exit.i ]
  %i.kb = phi i64 [ %.pre.i78.i, %._crit_edge.i77.i ], [ %i.ju, %dt_masks_dynbuf_reserve_n.exit.i ] ; 2 uses
  %i.kc = load ptr, ptr %12, align 8, !tbaa !100  ; 3 uses
  store i64 %.pre-phi.i80.i, ptr %i.jt, align 8, !tbaa !101
  %i.kd = icmp ne ptr %.1.i.i, null
  %i.ke = icmp ne ptr %i.kc, null
  %or.cond.i153 = select i1 %i.kd, i1 %i.ke, i1 false
  br i1 %or.cond.i153, label %.lr.ph.preheader.i, label %_brush_points_recurs_border_small_gaps.exit

.lr.ph.preheader.i:                               ; preds = %dt_masks_dynbuf_reserve_n.exit82.i
  %i.kf = getelementptr [4 x i8], ptr %i.kc, i64 %i.kb ; 6 uses
  %i.kg = add nsw i32 %i.jb, -2                   ; 2 uses
  %i.kh = zext i32 %i.kg to i64                   ; 2 uses
  %i.ki = add nuw nsw i64 %i.kh, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.kg, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.kj = shl nuw nsw i64 %i.kh, 3                ; 2 uses
  %i.kk = getelementptr i8, ptr %.1.i.i, i64 %i.kj
  %scevgep = getelementptr i8, ptr %i.kk, i64 8   ; 2 uses
  %i.kl = shl i64 %i.kb, 2
  %i.km = getelementptr i8, ptr %i.kc, i64 %i.kj
  %i.kn = getelementptr i8, ptr %i.km, i64 %i.kl
  %scevgep213 = getelementptr i8, ptr %i.kn, i64 8 ; 2 uses
  %scevgep214 = getelementptr i8, ptr %5, i64 8   ; 2 uses
  %bound0 = icmp ult ptr %.1.i.i, %scevgep213
  %bound1 = icmp ult ptr %i.kf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0215 = icmp ult ptr %.1.i.i, %scevgep214
  %bound1216 = icmp ult ptr %5, %scevgep
  %found.conflict217 = and i1 %bound0215, %bound1216
  %conflict.rdx = or i1 %found.conflict, %found.conflict217
  %bound0218 = icmp ult ptr %i.kf, %scevgep214
  %bound1219 = icmp ult ptr %5, %scevgep213
  %found.conflict220 = and i1 %bound0218, %bound1219
  %conflict.rdx221 = or i1 %conflict.rdx, %found.conflict220
  br i1 %conflict.rdx221, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ki, 8589934584              ; 5 uses
  %i.ko = trunc i64 %n.vec to i32
  %i.kp = or disjoint i32 %i.ko, 1
  %i.kq = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.kr = getelementptr i8, ptr %i.kf, i64 %i.kq
  %i.ks = getelementptr i8, ptr %.1.i.i, i64 %i.kq
  %i.kt = uitofp nneg i64 %n.vec to float         ; 2 uses
  %i.ku = fmul reassoc nsz arcp contract afn float %i.je, %i.kt
  %i.kv = fadd reassoc nsz arcp contract afn float %i.ik, %i.ku
  %i.kw = fmul reassoc nsz arcp contract afn float %i.jg, %i.kt
  %i.kx = fadd reassoc nsz arcp contract afn float %i.ir, %i.kw
  %i.ky = load float, ptr %5, align 4, !tbaa !102, !alias.scope !251 ; 2 uses
  %broadcast.splatinsert235.a = insertelement <8 x float> poison, float %i.ky, i64 0
  %i.kz = load float, ptr %i.go, align 4, !tbaa !102, !alias.scope !251 ; 2 uses
  %broadcast.splatinsert237 = insertelement <8 x float> poison, float %i.kz, i64 0
  %broadcast.splatinsert239 = insertelement <8 x float> poison, float %i.ky, i64 0
  %broadcast.splatinsert241 = insertelement <8 x float> poison, float %i.kz, i64 0
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.je, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert222 = insertelement <8 x float> poison, float %i.jg, i64 0
  %broadcast.splat223 = shufflevector <8 x float> %broadcast.splatinsert222, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert224 = insertelement <8 x float> poison, float %i.ik, i64 0
  %broadcast.splat225 = shufflevector <8 x float> %broadcast.splatinsert224, <8 x float> poison, <8 x i32> zeroinitializer
  %i.la = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00>
  %induction = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat225, %i.la
  %i.lb = fmul reassoc nsz arcp contract afn float %i.je, 8.000000e+00
  %broadcast.splatinsert226 = insertelement <8 x float> poison, float %i.lb, i64 0
  %broadcast.splat227 = shufflevector <8 x float> %broadcast.splatinsert226, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert228 = insertelement <8 x float> poison, float %i.ir, i64 0
  %broadcast.splat229 = shufflevector <8 x float> %broadcast.splatinsert228, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lc = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat223, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00>
  %induction230 = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat229, %i.lc
  %i.ld = fmul reassoc nsz arcp contract afn float %i.jg, 8.000000e+00
  %broadcast.splatinsert231 = insertelement <8 x float> poison, float %i.ld, i64 0
  %broadcast.splat232 = shufflevector <8 x float> %broadcast.splatinsert231, <8 x float> poison, <8 x i32> zeroinitializer
  %interleaved.vec = shufflevector <8 x float> %broadcast.splatinsert235.a, <8 x float> %broadcast.splatinsert237, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %i.le = shufflevector <8 x float> %broadcast.splatinsert239, <8 x float> %broadcast.splatinsert241, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x float> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind233 = phi <8 x float> [ %induction230, %vector.ph ], [ %vec.ind.next244, %vector.body ] ; 2 uses
  %i.lf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.kf, i64 %i.lf
  %next.gep234 = getelementptr i8, ptr %.1.i.i, i64 %i.lf
  %i.lg = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind, %broadcast.splat
  %i.lh = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.lg) ; 2 uses
  %i.li = extractvalue { <8 x float>, <8 x float> } %i.lh, 0
  %i.lj = extractvalue { <8 x float>, <8 x float> } %i.lh, 1
  %i.lk = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind233, %broadcast.splat223 ; 2 uses
  store <16 x float> %interleaved.vec, ptr %next.gep234, align 4, !tbaa !102, !alias.scope !252, !noalias !253
  %i.ll = fmul reassoc nsz arcp contract afn <8 x float> %i.lj, %i.lk
  %i.lm = fmul reassoc nsz arcp contract afn <8 x float> %i.li, %i.lk
  %i.ln = shufflevector <8 x float> %i.ll, <8 x float> %i.lm, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec243 = fadd reassoc nsz arcp contract afn <16 x float> %i.le, %i.ln
  store <16 x float> %interleaved.vec243, ptr %next.gep, align 4, !tbaa !102, !alias.scope !254, !noalias !251
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind, %broadcast.splat227
  %vec.ind.next244 = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind233, %broadcast.splat232
  %i.lo = icmp eq i64 %index.next, %n.vec
  br i1 %i.lo, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ki, %n.vec
  br i1 %cmp.n, label %_brush_points_recurs_border_small_gaps.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.011.i.ph = phi i32 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader.i ], [ %i.kp, %middle.block ] ; 3 uses
  %.06110.i.ph = phi ptr [ %i.kf, %vector.memcheck ], [ %i.kf, %.lr.ph.preheader.i ], [ %i.kr, %middle.block ] ; 4 uses
  %.0629.i.ph = phi ptr [ %.1.i.i, %vector.memcheck ], [ %.1.i.i, %.lr.ph.preheader.i ], [ %i.ks, %middle.block ] ; 4 uses
  %.pn718.i.ph = phi float [ %i.ik, %vector.memcheck ], [ %i.ik, %.lr.ph.preheader.i ], [ %i.kv, %middle.block ] ; 2 uses
  %.pn7.i.ph = phi float [ %i.ir, %vector.memcheck ], [ %i.ir, %.lr.ph.preheader.i ], [ %i.kx, %middle.block ] ; 2 uses
  %i.lp = and i32 %i.jb, 1
  %lcmp.mod.not.not = icmp eq i32 %i.lp, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.063.i.prol = fadd reassoc nsz arcp contract afn float %.pn718.i.ph, %i.je ; 2 uses
  %sincos.i.prol = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %.063.i.prol) ; 2 uses
  %sin.i.prol = extractvalue { float, float } %sincos.i.prol, 0
  %cos.i.prol = extractvalue { float, float } %sincos.i.prol, 1
  %.064.i.prol = fadd reassoc nsz arcp contract afn float %.pn7.i.ph, %i.jg ; 3 uses
  %i.lq = load float, ptr %5, align 4, !tbaa !102
  %i.lr = getelementptr inbounds nuw i8, ptr %.0629.i.ph, i64 4
  store float %i.lq, ptr %.0629.i.ph, align 4, !tbaa !102
  %i.ls = load float, ptr %i.go, align 4, !tbaa !102
  %i.lt = getelementptr inbounds nuw i8, ptr %.0629.i.ph, i64 8
  store float %i.ls, ptr %i.lr, align 4, !tbaa !102
  %i.lu = load float, ptr %5, align 4, !tbaa !102
  %i.lv = fmul reassoc nsz arcp contract afn float %cos.i.prol, %.064.i.prol
  %i.lw = fadd reassoc nsz arcp contract afn float %i.lu, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %.06110.i.ph, i64 4
  store float %i.lw, ptr %.06110.i.ph, align 4, !tbaa !102
  %i.ly = load float, ptr %i.go, align 4, !tbaa !102
  %i.lz = fmul reassoc nsz arcp contract afn float %sin.i.prol, %.064.i.prol
  %i.ma = fadd reassoc nsz arcp contract afn float %i.ly, %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %.06110.i.ph, i64 8
  store float %i.ma, ptr %i.lx, align 4, !tbaa !102
  %i.mc = add nuw nsw i32 %.011.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.011.i.unr = phi i32 [ %.011.i.ph, %.lr.ph.i.preheader ], [ %i.mc, %.lr.ph.i.prol ]
  %.06110.i.unr = phi ptr [ %.06110.i.ph, %.lr.ph.i.preheader ], [ %i.mb, %.lr.ph.i.prol ]
  %.0629.i.unr = phi ptr [ %.0629.i.ph, %.lr.ph.i.preheader ], [ %i.lt, %.lr.ph.i.prol ]
  %.pn718.i.unr = phi float [ %.pn718.i.ph, %.lr.ph.i.preheader ], [ %.063.i.prol, %.lr.ph.i.prol ]
  %.pn7.i.unr = phi float [ %.pn7.i.ph, %.lr.ph.i.preheader ], [ %.064.i.prol, %.lr.ph.i.prol ]
  %i.md = add nsw i32 %i.jb, -1
  %i.me = icmp eq i32 %.011.i.ph, %i.md
  br i1 %i.me, label %_brush_points_recurs_border_small_gaps.exit, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.prol.loopexit
  %invariant.op = fadd reassoc nsz arcp contract afn float %i.je, %i.je
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.011.i = phi i32 [ %.011.i.unr, %.lr.ph.i.preheader.new ], [ %i.nd, %.lr.ph.i ]
  %.06110.i = phi ptr [ %.06110.i.unr, %.lr.ph.i.preheader.new ], [ %i.nc, %.lr.ph.i ] ; 5 uses
  %.0629.i = phi ptr [ %.0629.i.unr, %.lr.ph.i.preheader.new ], [ %i.mu, %.lr.ph.i ] ; 5 uses
  %.pn718.i = phi float [ %.pn718.i.unr, %.lr.ph.i.preheader.new ], [ %.063.i.1.reass, %.lr.ph.i ] ; 2 uses
  %.pn7.i = phi float [ %.pn7.i.unr, %.lr.ph.i.preheader.new ], [ %.064.i.1, %.lr.ph.i ]
  %.063.i = fadd reassoc nsz arcp contract afn float %.pn718.i, %i.je
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %.063.i) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %.064.i = fadd reassoc nsz arcp contract afn float %.pn7.i, %i.jg ; 3 uses
  %i.mf = load float, ptr %5, align 4, !tbaa !102
  %i.mg = getelementptr inbounds nuw i8, ptr %.0629.i, i64 4
  store float %i.mf, ptr %.0629.i, align 4, !tbaa !102
  %i.mh = load float, ptr %i.go, align 4, !tbaa !102
  %i.mi = getelementptr inbounds nuw i8, ptr %.0629.i, i64 8
  store float %i.mh, ptr %i.mg, align 4, !tbaa !102
  %i.mj = load float, ptr %5, align 4, !tbaa !102
  %i.mk = fmul reassoc nsz arcp contract afn float %cos.i, %.064.i
  %i.ml = fadd reassoc nsz arcp contract afn float %i.mj, %i.mk
  %i.mm = getelementptr inbounds nuw i8, ptr %.06110.i, i64 4
  store float %i.ml, ptr %.06110.i, align 4, !tbaa !102
  %i.mn = load float, ptr %i.go, align 4, !tbaa !102
  %i.mo = fmul reassoc nsz arcp contract afn float %sin.i, %.064.i
  %i.mp = fadd reassoc nsz arcp contract afn float %i.mn, %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %.06110.i, i64 8
  store float %i.mp, ptr %i.mm, align 4, !tbaa !102
  %.063.i.1.reass = fadd reassoc nsz arcp contract afn float %.pn718.i, %invariant.op ; 2 uses
  %sincos.i.1 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %.063.i.1.reass) ; 2 uses
  %sin.i.1 = extractvalue { float, float } %sincos.i.1, 0
  %cos.i.1 = extractvalue { float, float } %sincos.i.1, 1
  %.064.i.1 = fadd reassoc nsz arcp contract afn float %.064.i, %i.jg ; 3 uses
  %i.mr = load float, ptr %5, align 4, !tbaa !102
  %i.ms = getelementptr inbounds nuw i8, ptr %.0629.i, i64 12
  store float %i.mr, ptr %i.mi, align 4, !tbaa !102
  %i.mt = load float, ptr %i.go, align 4, !tbaa !102
  %i.mu = getelementptr inbounds nuw i8, ptr %.0629.i, i64 16
  store float %i.mt, ptr %i.ms, align 4, !tbaa !102
  %i.mv = load float, ptr %5, align 4, !tbaa !102
  %i.mw = fmul reassoc nsz arcp contract afn float %cos.i.1, %.064.i.1
  %i.mx = fadd reassoc nsz arcp contract afn float %i.mv, %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %.06110.i, i64 12
  store float %i.mx, ptr %i.mq, align 4, !tbaa !102
  %i.mz = load float, ptr %i.go, align 4, !tbaa !102
  %i.na = fmul reassoc nsz arcp contract afn float %sin.i.1, %.064.i.1
  %i.nb = fadd reassoc nsz arcp contract afn float %i.mz, %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %.06110.i, i64 16
  store float %i.nb, ptr %i.my, align 4, !tbaa !102
  %i.nd = add nuw nsw i32 %.011.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.nd, %i.jb
  br i1 %exitcond.not.i.1, label %_brush_points_recurs_border_small_gaps.exit, label %.lr.ph.i, !llvm.loop !250

_brush_points_recurs_border_small_gaps.exit:      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %dt_masks_dynbuf_reserve_n.exit82.i, %bb.af, %bb.ae, %bb.z, %bb.y, %bb.x
  %i.ne = load float, ptr %7, align 4, !tbaa !102 ; 2 uses
  store float %i.ne, ptr %9, align 4, !tbaa !102
  %i.nf = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !102 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.ng, ptr %i.nh, align 4, !tbaa !102
  %i.ni = getelementptr inbounds nuw i8, ptr %12, i64 136 ; 3 uses
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !101 ; 2 uses
  %i.nk = add i64 %i.nj, 2                        ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %12, i64 144
end_hunk_1
