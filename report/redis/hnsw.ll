Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/hnsw?download=true
inline.NumInlined: 98
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@hnsw_init_tmp_node:bb.a
  %i.eb = lshr i32 %i.ea, 3
  %i.ec = and i32 %i.eb, 536870904
  %i.ed = zext nneg i32 %i.ec to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bu, i8 0, i64 %i.ed, i1 false)
  %.not.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i, label %quantize_to_q8.exit, label %.lr.ph.preheader.i47

.lr.ph.preheader.i47:                             ; preds = %bb.n
  %wide.trip.count.i48 = zext i32 %i.dz to i64    ; 2 uses
  %xtraiter82 = and i64 %wide.trip.count.i48, 1
  %i.ee = icmp eq i32 %i.dz, 1
  br i1 %i.ee, label %.lr.ph.i49.epil.preheader, label %.lr.ph.preheader.i47.new

.lr.ph.preheader.i47.new:                         ; preds = %.lr.ph.preheader.i47
  %unroll_iter = and i64 %wide.trip.count.i48, 4294967294
  br label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.q, %.lr.ph.preheader.i47.new
  %indvars.iv.i50 = phi i64 [ 0, %.lr.ph.preheader.i47.new ], [ %indvars.iv.next.i51.1, %bb.q ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i47.new ], [ %niter.next.1, %bb.q ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i50
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !27
  %i.eh = fcmp ogt float %i.eg, 0.000000e+00
  br i1 %i.eh, label %bb.o, label %.lr.ph.i49.1

bb.o:                                             ; preds = %.lr.ph.i49
  %i.ei = and i64 %indvars.iv.i50, 62
  %i.ej = lshr i64 %indvars.iv.i50, 6
  %i.ek = shl nuw nsw i64 1, %i.ei
  %i.el = and i64 %i.ej, 67108863
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.el ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !13
  %i.eo = or i64 %i.en, %i.ek
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !13
  br label %.lr.ph.i49.1

.lr.ph.i49.1:                                     ; preds = %bb.o, %.lr.ph.i49
  %indvars.iv.next.i51 = or disjoint i64 %indvars.iv.i50, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.next.i51
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !27
  %i.er = fcmp ogt float %i.eq, 0.000000e+00
  br i1 %i.er, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i49.1
  %i.es = and i64 %indvars.iv.next.i51, 63
  %i.et = lshr i64 %indvars.iv.i50, 6
  %i.eu = shl nuw i64 1, %i.es
  %i.ev = and i64 %i.et, 67108863
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.ev ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !13
  %i.ey = or i64 %i.ex, %i.eu
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i49.1
  %indvars.iv.next.i51.1 = add nuw nsw i64 %indvars.iv.i50, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %quantize_to_q8.exit.loopexit.unr-lcssa, label %.lr.ph.i49, !llvm.loop !82

quantize_to_q8.exit.loopexit.unr-lcssa:           ; preds = %bb.q
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %quantize_to_q8.exit, label %.lr.ph.i49.epil.preheader

.lr.ph.i49.epil.preheader:                        ; preds = %quantize_to_q8.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i47
  %indvars.iv.i50.epil.init = phi i64 [ 0, %.lr.ph.preheader.i47 ], [ %indvars.iv.next.i51.1, %quantize_to_q8.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod84 = trunc i32 %i.dz to i1
  tail call void @llvm.assume(i1 %lcmp.mod84)
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i50.epil.init
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !27
  %i.fb = fcmp ogt float %i.fa, 0.000000e+00
  br i1 %i.fb, label %bb.r, label %quantize_to_q8.exit

bb.r:                                             ; preds = %.lr.ph.i49.epil.preheader
  %i.fc = and i64 %indvars.iv.i50.epil.init, 63
  %i.fd = lshr i64 %indvars.iv.i50.epil.init, 6
  %i.fe = shl nuw i64 1, %i.fc
  %i.ff = and i64 %i.fd, 67108863
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.ff ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !13
  %i.fi = or i64 %i.fh, %i.fe
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !13
  br label %quantize_to_q8.exit

quantize_to_q8.exit:                              ; preds = %quantize_to_q8.exit.loopexit.unr-lcssa, %bb.r, %.lr.ph.i49.epil.preheader, %bb.n, %._crit_edge42.i, %._crit_edge.thread.i, %bb.l
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %.not38 = icmp eq ptr %i.fj, %3
  br i1 %.not38, label %bb.t, label %bb.s

bb.s:                                             ; preds = %quantize_to_q8.exit
  %i.fk = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.fk(ptr noundef %i.fj) #34
  br label %bb.t

bb.t:                                             ; preds = %quantize_to_q8.exit, %bb.s
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !15
  br label %.thread

.thread:                                          ; preds = %hnsw_normalize_vector.exit, %bb.t, %bb.k, %bb.j, %bb.b
  %.1 = phi i32 [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.b ], [ 1, %bb.t ], [ 1, %hnsw_normalize_vector.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local void @hnsw_free_tmp_node(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.b, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.c(ptr noundef %i.b) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hnsw_search_with_filter(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr noundef %8, i32 noundef %9) local_unnamed_addr #3 {
bb.a:
  %10 = alloca %struct.hnswNode, align 8          ; 7 uses
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.not71 = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %3, null
  %or.cond3.not68 = or i1 %or.cond.not71, %i.c
  %i.d = icmp eq i32 %2, 0
  %or.cond5 = or i1 %i.d, %or.cond3.not68
  br i1 %or.cond5, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !90
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.f = call i32 @hnsw_init_tmp_node(ptr noundef nonnull %0, ptr noundef nonnull %10, i32 noundef %6, ptr noundef nonnull %1)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %hnsw_free_tmp_node.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !90     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !91   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %.057.lcssa = phi ptr [ %i.h, %bb.d ], [ %.2, %bb.g ]
  %i.l = call ptr @search_layer_with_filter(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef %.057.lcssa, i32 noundef %2, i32 noundef 0, i32 noundef %5, ptr noundef %7, ptr noundef %8, i32 noundef %9) ; 4 uses
  %.not72 = icmp eq ptr %i.l, null
  br i1 %.not72, label %bb.h, label %bb.i

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %.05682 = phi i32 [ %i.v, %bb.g ], [ %i.j, %bb.d ] ; 3 uses
  %.05781 = phi ptr [ %.2, %bb.g ], [ %i.h, %bb.d ] ; 3 uses
  %i.m = call ptr @search_layer_with_filter(ptr noundef nonnull %0, ptr noundef nonnull readonly %10, ptr noundef %.05781, i32 noundef 1, i32 noundef %.05682, i32 noundef %5, ptr noundef null, ptr noundef null, i32 noundef 0) ; 4 uses
  %.not74 = icmp eq ptr %i.m, null
  br i1 %.not74, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !19   ; 2 uses
  %.not75 = icmp eq i32 %i.o, 0
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !17  ; 2 uses
  br i1 %.not75, label %pq_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add i32 %i.o, -1
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  br label %pq_free.exit

pq_free.exit:                                     ; preds = %bb.f, %bb.e
  %.1 = phi ptr [ %i.s, %bb.f ], [ %.05781, %bb.e ]
  %i.t = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.t(ptr noundef %.pre) #34, !inline_history !143
  %i.u = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.u(ptr noundef nonnull %i.m) #34, !inline_history !143
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %pq_free.exit
  %.2 = phi ptr [ %.1, %pq_free.exit ], [ %.05781, %.lr.ph ] ; 2 uses
  %i.v = add nsw i32 %.05682, -1
  %i.w = icmp sgt i32 %.05682, 1
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !155

bb.h:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15   ; 2 uses
  %.not.i76 = icmp eq ptr %i.y, %1
  br i1 %.not.i76, label %hnsw_free_tmp_node.exit, label %hnsw_free_tmp_node.exit.sink.split

bb.i:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !19  ; 9 uses
  %. = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.aa) ; 7 uses
  %.not86 = icmp eq i32 %., 0
  %.pre94 = load ptr, ptr %i.l, align 8, !tbaa !17 ; 9 uses
  br i1 %.not86, label %pq_free.exit78, label %.lr.ph85

.lr.ph85:                                         ; preds = %bb.i
  %.not73 = icmp eq ptr %4, null
  %wide.trip.count92 = zext i32 %. to i64         ; 4 uses
  br i1 %.not73, label %.lr.ph85.split.us.preheader, label %.lr.ph85.split.preheader

.lr.ph85.split.preheader:                         ; preds = %.lr.ph85
  %xtraiter = and i64 %wide.trip.count92, 1
  %i.ab = icmp eq i32 %., 1
  br i1 %i.ab, label %.lr.ph85.split.epil.preheader, label %.lr.ph85.split.preheader.new

.lr.ph85.split.preheader.new:                     ; preds = %.lr.ph85.split.preheader
  %unroll_iter = and i64 %wide.trip.count92, 4294967294
  br label %.lr.ph85.split

.lr.ph85.split.us.preheader:                      ; preds = %.lr.ph85
  %xtraiter110 = and i64 %wide.trip.count92, 3    ; 3 uses
  %i.ac = icmp ult i32 %., 4
  br i1 %i.ac, label %.lr.ph85.split.us.epil.preheader, label %.lr.ph85.split.us.preheader.new

.lr.ph85.split.us.preheader.new:                  ; preds = %.lr.ph85.split.us.preheader
  %unroll_iter113 = and i64 %wide.trip.count92, 4294967292
  br label %.lr.ph85.split.us

.lr.ph85.split.us:                                ; preds = %.lr.ph85.split.us, %.lr.ph85.split.us.preheader.new
  %indvars.iv89 = phi i64 [ 0, %.lr.ph85.split.us.preheader.new ], [ %indvars.iv.next90.3, %.lr.ph85.split.us ] ; 5 uses
  %niter114 = phi i64 [ 0, %.lr.ph85.split.us.preheader.new ], [ %niter114.next.3, %.lr.ph85.split.us ]
  %indvars.iv.next90 = or disjoint i64 %indvars.iv89, 1 ; 2 uses
  %11 = trunc nuw i64 %indvars.iv.next90 to i32
  %12 = sub i32 %i.aa, %11
  %13 = zext i32 %12 to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %13
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv89
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !26
  %indvars.iv.next90.1 = or disjoint i64 %indvars.iv89, 2 ; 2 uses
  %14 = trunc nuw i64 %indvars.iv.next90.1 to i32
  %15 = sub i32 %i.aa, %14
  %16 = zext i32 %15 to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next90
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !26
  %indvars.iv.next90.2 = or disjoint i64 %indvars.iv89, 3 ; 2 uses
  %17 = trunc nuw i64 %indvars.iv.next90.2 to i32
  %18 = sub i32 %i.aa, %17
  %19 = zext i32 %18 to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %19
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next90.1
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !26
  %indvars.iv.next90.3 = add nuw nsw i64 %indvars.iv89, 4 ; 3 uses
  %20 = trunc nuw i64 %indvars.iv.next90.3 to i32
  %21 = sub i32 %i.aa, %20
  %22 = zext i32 %21 to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %22
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next90.2
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !26
  %niter114.next.3 = add i64 %niter114, 4         ; 2 uses
  %niter114.ncmp.3 = icmp eq i64 %niter114.next.3, %unroll_iter113
  br i1 %niter114.ncmp.3, label %pq_free.exit78.loopexit.unr-lcssa, label %.lr.ph85.split.us, !llvm.loop !156

pq_free.exit78.loopexit.unr-lcssa:                ; preds = %.lr.ph85.split.us
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %pq_free.exit78, label %.lr.ph85.split.us.epil.preheader

.lr.ph85.split.us.epil.preheader:                 ; preds = %pq_free.exit78.loopexit.unr-lcssa, %.lr.ph85.split.us.preheader
  %indvars.iv89.epil.init = phi i64 [ 0, %.lr.ph85.split.us.preheader ], [ %indvars.iv.next90.3, %pq_free.exit78.loopexit.unr-lcssa ]
  %lcmp.mod112 = icmp ne i64 %xtraiter110, 0
  tail call void @llvm.assume(i1 %lcmp.mod112)
  br label %.lr.ph85.split.us.epil

.lr.ph85.split.us.epil:                           ; preds = %.lr.ph85.split.us.epil, %.lr.ph85.split.us.epil.preheader
  %indvars.iv89.epil = phi i64 [ %indvars.iv.next90.epil, %.lr.ph85.split.us.epil ], [ %indvars.iv89.epil.init, %.lr.ph85.split.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph85.split.us.epil ], [ 0, %.lr.ph85.split.us.epil.preheader ]
  %indvars.iv.next90.epil = add nuw nsw i64 %indvars.iv89.epil, 1 ; 2 uses
  %23 = trunc nuw i64 %indvars.iv.next90.epil to i32
  %24 = sub i32 %i.aa, %23
  %25 = zext i32 %24 to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %25
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv89.epil
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !26
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter110
  br i1 %epil.iter.cmp.not, label %pq_free.exit78, label %.lr.ph85.split.us.epil, !llvm.loop !157

pq_free.exit78.loopexit108.unr-lcssa:             ; preds = %.lr.ph85.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pq_free.exit78, label %.lr.ph85.split.epil.preheader

.lr.ph85.split.epil.preheader:                    ; preds = %pq_free.exit78.loopexit108.unr-lcssa, %.lr.ph85.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph85.split.preheader ], [ %indvars.iv.next.1, %pq_free.exit78.loopexit108.unr-lcssa ] ; 3 uses
  %lcmp.mod109 = trunc i32 %. to i1
  tail call void @llvm.assume(i1 %lcmp.mod109)
  %26 = trunc i64 %indvars.iv.epil.init to i32
  %.neg = xor i32 %26, -1
  %27 = add i32 %i.aa, %.neg
  %28 = zext i32 %27 to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %28 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil.init
  store ptr %i.at, ptr %i.au, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load float, ptr %i.av, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.epil.init
  store float %i.aw, ptr %i.ax, align 4, !tbaa !27
  br label %pq_free.exit78

pq_free.exit78:                                   ; preds = %.lr.ph85.split.epil.preheader, %pq_free.exit78.loopexit108.unr-lcssa, %pq_free.exit78.loopexit.unr-lcssa, %.lr.ph85.split.us.epil, %bb.i
  %i.ay = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.ay(ptr noundef %.pre94) #34, !inline_history !143
  %i.az = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.az(ptr noundef nonnull %i.l) #34, !inline_history !143
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !15 ; 2 uses
  %.not.i79 = icmp eq ptr %i.bb, %1
  br i1 %.not.i79, label %hnsw_free_tmp_node.exit, label %hnsw_free_tmp_node.exit.sink.split

.lr.ph85.split:                                   ; preds = %.lr.ph85.split, %.lr.ph85.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph85.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph85.split ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph85.split.preheader.new ], [ %niter.next.1, %.lr.ph85.split ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %29 = trunc nuw i64 %indvars.iv.next to i32
  %30 = sub i32 %i.aa, %29
  %31 = zext i32 %30 to i64
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %31 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !30
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store float %i.bg, ptr %i.bh, align 4, !tbaa !27
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %32 = trunc nuw i64 %indvars.iv.next.1 to i32
  %33 = sub i32 %i.aa, %32
  %34 = zext i32 %33 to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %34 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !30
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  store float %i.bm, ptr %i.bn, align 4, !tbaa !27
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %pq_free.exit78.loopexit108.unr-lcssa, label %.lr.ph85.split, !llvm.loop !156

hnsw_free_tmp_node.exit.sink.split:               ; preds = %pq_free.exit78, %bb.h
  %.sink = phi ptr [ %i.y, %bb.h ], [ %i.bb, %pq_free.exit78 ]
  %.159.ph = phi i32 [ -1, %bb.h ], [ %., %pq_free.exit78 ]
  %i.bo = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.bo(ptr noundef %.sink) #34
  br label %hnsw_free_tmp_node.exit

hnsw_free_tmp_node.exit:                          ; preds = %hnsw_free_tmp_node.exit.sink.split, %pq_free.exit78, %bb.h, %bb.c
  %.159 = phi i32 [ -1, %bb.c ], [ %., %pq_free.exit78 ], [ -1, %bb.h ], [ %.159.ph, %hnsw_free_tmp_node.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %hnsw_free_tmp_node.exit
  %.260 = phi i32 [ -1, %bb.a ], [ %.159, %hnsw_free_tmp_node.exit ], [ 0, %bb.b ]
  ret i32 %.260
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hnsw_search(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @hnsw_search_with_filter(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef null, ptr noundef null, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @hnsw_update_worst_neighbor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.b ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !132  ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %hnsw_distance.exit, %bb.a
  %.019.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.120, %hnsw_distance.exit ]
  %.018.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %hnsw_distance.exit ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store float %.019.lcssa, ptr %i.j, align 8, !tbaa !133
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %.018.lcssa, ptr %i.k, align 4, !tbaa !134
  ret void

bb.b:                                             ; preds = %.lr.ph, %hnsw_distance.exit
  %i.l = phi i32 [ %i.e, %.lr.ph ], [ %i.ai, %hnsw_distance.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %hnsw_distance.exit ] ; 3 uses
  %.01826 = phi i32 [ 0, %.lr.ph ], [ %.1, %hnsw_distance.exit ]
  %.01925 = phi float [ 0.000000e+00, %.lr.ph ], [ %.120, %hnsw_distance.exit ] ; 2 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26   ; 4 uses
  %i.p = load i32, ptr %i.f, align 8, !tbaa !70
  switch i32 %i.p, label %bb.f [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.t = load i32, ptr %i.h, align 8, !tbaa !73
  %i.u = tail call float @vectors_distance_float(ptr noundef %i.q, ptr noundef %i.s, i32 noundef %i.t)
  br label %hnsw_distance.exit

bb.d:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.y = load i32, ptr %i.h, align 8, !tbaa !73
  %i.z = load float, ptr %i.i, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !27
  %i.ac = tail call float @vectors_distance_q8(ptr noundef %i.v, ptr noundef %i.x, i32 noundef %i.y, float noundef %i.z, float noundef %i.ab)
  br label %hnsw_distance.exit

bb.e:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15
  %i.ag = load i32, ptr %i.h, align 8, !tbaa !73
  %i.ah = tail call float @vectors_distance_bin(ptr noundef %i.ad, ptr noundef %i.af, i32 noundef %i.ag)
  %.pre = load i32, ptr %i.d, align 8, !tbaa !132
  br label %hnsw_distance.exit

bb.f:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit:                               ; preds = %bb.c, %bb.d, %bb.e
  %i.ai = phi i32 [ %i.l, %bb.c ], [ %i.l, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %.0.i = phi float [ %i.u, %bb.c ], [ %i.ac, %bb.d ], [ %i.ah, %bb.e ] ; 2 uses
  %i.aj = fcmp ogt float %.0.i, %.01925           ; 2 uses
  %.120 = select i1 %i.aj, float %.0.i, float %.01925 ; 2 uses
  %i.ak = trunc nuw i64 %indvars.iv to i32
  %.1 = select i1 %i.aj, i32 %i.ak, i32 %.01826   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = zext i32 %i.ai to i64
  %i.am = icmp samesign ult i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %bb.b, label %._crit_edge, !llvm.loop !158
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @hnsw_update_worst_neighbor_on_add(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.b ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !132
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load float, ptr %i.g, align 8, !tbaa !133
  %i.i = fcmp ogt float %4, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store float %4, ptr %i.j, align 8, !tbaa !133
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %3, ptr %i.k, align 4, !tbaa !134
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @hnsw_update_worst_neighbor_on_remove(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.b ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !132
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store float 0.000000e+00, ptr %i.g, align 8, !tbaa !133
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 0, ptr %i.h, align 4, !tbaa !134
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !134  ; 3 uses
  %i.k = icmp eq i32 %3, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @hnsw_update_worst_neighbor(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ult i32 %3, %i.j
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = add i32 %i.j, -1
  store i32 %i.m, ptr %i.i, align 4, !tbaa !134
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @select_neighbors(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not299 = icmp eq i32 %i.b, 0
  br i1 %.not299, label %hnsw_update_worst_neighbor_on_add.exit251.thread263, label %.lr.ph297

.lr.ph297:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.d = zext i32 %3 to i64                       ; 8 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.d ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.not239 = icmp eq i32 %5, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.k = icmp eq i32 %3, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph297, %hnsw_update_worst_neighbor_on_add.exit251.thread
  %i.n = phi i32 [ %i.b, %.lr.ph297 ], [ %i.ht, %hnsw_update_worst_neighbor_on_add.exit251.thread ]
  %.0295 = phi i32 [ 0, %.lr.ph297 ], [ %i.p, %hnsw_update_worst_neighbor_on_add.exit251.thread ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !17
  %i.p = add nuw i32 %.0295, 1                    ; 3 uses
  %i.q = sub i32 %i.n, %i.p
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30   ; 13 uses
  %i.u = icmp eq ptr %i.t, %2
  br i1 %i.u, label %hnsw_update_worst_neighbor_on_add.exit251.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load float, ptr %i.v, align 8, !tbaa !21 ; 10 uses
  %i.x = load i32, ptr %i.f, align 8, !tbaa !132  ; 4 uses
  %i.y = load i32, ptr %i.g, align 4, !tbaa !128
  %.not = icmp ult i32 %i.x, %i.y
  %.not238 = icmp ult i32 %i.x, %4
  %or.cond = and i1 %.not238, %.not
  br i1 %or.cond, label %bb.d, label %hnsw_update_worst_neighbor_on_add.exit251.thread263

bb.d:                                             ; preds = %bb.c
  %.not265281.not = icmp eq i32 %i.x, 0           ; 2 uses
  br i1 %.not239, label %.critedge.preheader, label %.preheader268

.preheader268:                                    ; preds = %bb.d
  br i1 %.not265281.not, label %.thread258, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader268
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !135
  %wide.trip.count = zext i32 %i.x to i64
  br label %bb.f

.critedge.preheader:                              ; preds = %bb.d
  br i1 %.not265281.not, label %.critedge267.loopexit, label %.lr.ph283

.lr.ph283:                                        ; preds = %.critedge.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  br label %bb.g

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread258, label %bb.f, !llvm.loop !159

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.ae = icmp eq ptr %i.ad, %i.t
  br i1 %i.ae, label %hnsw_update_worst_neighbor_on_add.exit251.thread, label %bb.e

.critedge:                                        ; preds = %hnsw_distance.exit
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %i.af = load i32, ptr %i.f, align 8, !tbaa !132
  %i.ag = zext i32 %i.af to i64
  %.not265 = icmp samesign ult i64 %indvars.iv.next309, %i.ag
  br i1 %.not265, label %bb.g, label %.critedge267.loopexit, !llvm.loop !160

bb.g:                                             ; preds = %.lr.ph283, %.critedge
  %indvars.iv308 = phi i64 [ 0, %.lr.ph283 ], [ %indvars.iv.next309, %.critedge ] ; 2 uses
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !135
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv308
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26 ; 4 uses
  %i.ak = load i32, ptr %i.i, align 8, !tbaa !70
  switch i32 %i.ak, label %bb.k [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !15
  %i.ao = load i32, ptr %i.j, align 8, !tbaa !73
  %i.ap = tail call float @vectors_distance_float(ptr noundef %i.al, ptr noundef %i.an, i32 noundef %i.ao)
  br label %hnsw_distance.exit

bb.i:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !15
  %i.at = load i32, ptr %i.j, align 8, !tbaa !73
  %i.au = load float, ptr %i.ab, align 8, !tbaa !27
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.aw = load float, ptr %i.av, align 8, !tbaa !27
  %i.ax = tail call float @vectors_distance_q8(ptr noundef %i.aq, ptr noundef %i.as, i32 noundef %i.at, float noundef %i.au, float noundef %i.aw)
  br label %hnsw_distance.exit

bb.j:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !15
  %i.bb = load i32, ptr %i.j, align 8, !tbaa !73
  %i.bc = tail call float @vectors_distance_bin(ptr noundef %i.ay, ptr noundef %i.ba, i32 noundef %i.bb)
  br label %hnsw_distance.exit

bb.k:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit:                               ; preds = %bb.h, %bb.i, %bb.j
  %.0.i = phi float [ %i.ap, %bb.h ], [ %i.ax, %bb.i ], [ %i.bc, %bb.j ]
  %i.bd = fcmp uge float %.0.i, %i.w
  br i1 %i.bd, label %.critedge, label %hnsw_update_worst_neighbor_on_add.exit251.thread

.critedge267.loopexit:                            ; preds = %.critedge, %.critedge.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 312
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.d ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !132 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !128
  %i.bk = icmp ult i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.l, label %bb.p

.thread258:                                       ; preds = %bb.e, %.preheader268
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 312
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.d ; 15 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 5 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !132 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 12 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !128
  %i.br = icmp ult i32 %i.bo, %i.bq
  br i1 %i.br, label %bb.l, label %.thread259

bb.l:                                             ; preds = %.thread258, %.critedge267.loopexit
  %i.bs = phi i32 [ %i.bo, %.thread258 ], [ %i.bh, %.critedge267.loopexit ] ; 4 uses
  %i.bt = phi ptr [ %i.bn, %.thread258 ], [ %i.bg, %.critedge267.loopexit ]
  %i.bu = phi ptr [ %i.bm, %.thread258 ], [ %i.bf, %.critedge267.loopexit ] ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !135
  %i.bw = zext i32 %i.bs to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw
  store ptr %2, ptr %i.bx, align 8, !tbaa !26
  %i.by = add nuw i32 %i.bs, 1
  store i32 %i.by, ptr %i.bt, align 8, !tbaa !132
  %i.bz = icmp eq i32 %i.bs, 0
  br i1 %i.bz, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !133
  %i.cc = fcmp ogt float %i.w, %i.cb
  br i1 %i.cc, label %bb.n, label %hnsw_update_worst_neighbor_on_add.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store float %i.w, ptr %i.cd, align 8, !tbaa !133
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  store i32 %i.bs, ptr %i.ce, align 4, !tbaa !134
  br label %hnsw_update_worst_neighbor_on_add.exit

hnsw_update_worst_neighbor_on_add.exit:           ; preds = %bb.m, %bb.n
  %i.cf = load i32, ptr %i.f, align 8, !tbaa !132 ; 5 uses
  %i.cg = load ptr, ptr %i.e, align 8, !tbaa !135
  %i.ch = zext i32 %i.cf to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch
  store ptr %i.t, ptr %i.ci, align 8, !tbaa !26
  %i.cj = add i32 %i.cf, 1
  store i32 %i.cj, ptr %i.f, align 8, !tbaa !132
  %i.ck = icmp eq i32 %i.cf, 0
  br i1 %i.ck, label %hnsw_update_worst_neighbor_on_add.exit251.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %hnsw_update_worst_neighbor_on_add.exit
  %i.cl = load float, ptr %i.l, align 8, !tbaa !133
  %i.cm = fcmp ogt float %i.w, %i.cl
  br i1 %i.cm, label %hnsw_update_worst_neighbor_on_add.exit251.thread.sink.split, label %hnsw_update_worst_neighbor_on_add.exit251.thread

bb.p:                                             ; preds = %.critedge267.loopexit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.co = load float, ptr %i.cn, align 8, !tbaa !133
  %i.cp = fcmp ult float %i.w, %i.co
  br i1 %i.cp, label %.thread260, label %hnsw_update_worst_neighbor_on_add.exit251.thread

.thread260:                                       ; preds = %bb.p
  %i.cq = load ptr, ptr %i.bf, align 8, !tbaa !135
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bf, i64 20 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !134
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !26 ; 2 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.d
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 320
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !132
  %i.cz = load i32, ptr %i.h, align 8, !tbaa !89
  %i.da = lshr i32 %i.cz, 1
  %.not243 = icmp ugt i32 %i.cy, %i.da
  br i1 %.not243, label %bb.ae, label %hnsw_update_worst_neighbor_on_add.exit251.thread

.thread259:                                       ; preds = %.thread258
  %i.db = load ptr, ptr %i.bm, align 8, !tbaa !135
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bm, i64 20 ; 7 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !134
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !26 ; 5 uses
  switch i32 %5, label %bb.ae [
    i32 2, label %bb.r
    i32 1, label %bb.q
  ]

bb.q:                                             ; preds = %.thread259
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.d
end_hunk_0
begin_hunk_1_@hnsw_ground_truth_with_filter:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.d = tail call ptr %i.c(i64 noundef 16) #34, !inline_history !142 ; 12 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.f = zext i32 %2 to i64
  %i.g = shl nuw nsw i64 %i.f, 4
  %i.h = tail call ptr %i.e(i64 noundef %i.g) #34, !inline_history !142 ; 3 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !17
  %.not10.i = icmp eq ptr %i.h, null
  br i1 %.not10.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.i(ptr noundef nonnull %i.d) #34, !inline_history !142
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 2 uses
  %.not.i52 = icmp eq ptr %i.k, %1
  br i1 %.not.i52, label %hnsw_free_tmp_node.exit, label %hnsw_free_tmp_node.exit.sink.split

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store i32 0, ptr %i.l, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  store i32 %2, ptr %i.m, align 4, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.04163 = load ptr, ptr %i.n, align 8, !tbaa !26 ; 2 uses
  %.not4864 = icmp eq ptr %.04163, null
  br i1 %.not4864, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.not50 = icmp eq ptr %7, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.backedge
  %.04165 = phi ptr [ %.04163, %.lr.ph ], [ %.041, %.backedge ] ; 8 uses
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.04165, i64 288
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = tail call i32 %7(ptr noundef %i.t, ptr noundef %8) #34
  %.not51 = icmp eq i32 %i.u, 0
  br i1 %.not51, label %.backedge, label %bb.i

.backedge:                                        ; preds = %.critedge2.i, %bb.o, %.critedge.i, %bb.h
  %.041.in.be = getelementptr inbounds nuw i8, ptr %.04165, i64 304
  %.041 = load ptr, ptr %.041.in.be, align 8, !tbaa !26 ; 2 uses
  %.not48 = icmp eq ptr %.041, null
  br i1 %.not48, label %._crit_edge.loopexit, label %bb.g, !llvm.loop !256

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = load i32, ptr %i.o, align 8, !tbaa !70
  switch i32 %i.v, label %bb.m [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %.04165, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = load i32, ptr %i.q, align 8, !tbaa !73
  %i.aa = tail call float @vectors_distance_float(ptr noundef %i.w, ptr noundef %i.y, i32 noundef %i.z)
  br label %hnsw_distance.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %.04165, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15
  %i.ae = load i32, ptr %i.q, align 8, !tbaa !73
  %i.af = load float, ptr %i.r, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %.04165, i64 24
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !27
  %i.ai = tail call float @vectors_distance_q8(ptr noundef %i.ab, ptr noundef %i.ad, i32 noundef %i.ae, float noundef %i.af, float noundef %i.ah)
  br label %hnsw_distance.exit

bb.l:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %.04165, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.am = load i32, ptr %i.q, align 8, !tbaa !73
  %i.an = tail call float @vectors_distance_bin(ptr noundef %i.aj, ptr noundef %i.al, i32 noundef %i.am)
  br label %hnsw_distance.exit

bb.m:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit:                               ; preds = %bb.j, %bb.k, %bb.l
  %.0.i53 = phi float [ %i.aa, %bb.j ], [ %i.ai, %bb.k ], [ %i.an, %bb.l ] ; 5 uses
  %i.ao = load i32, ptr %i.l, align 8, !tbaa !19  ; 3 uses
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !20  ; 2 uses
  %i.aq = icmp ult i32 %i.ao, %i.ap
  br i1 %i.aq, label %.preheader.i, label %bb.o

.preheader.i:                                     ; preds = %hnsw_distance.exit
  %.not45.i = icmp eq i32 %i.ao, 0
  br i1 %.not45.i, label %.critedge.i, label %.lr.ph47.preheader.i

.lr.ph47.preheader.i:                             ; preds = %.preheader.i
  %i.ar = zext i32 %i.ao to i64
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.n, %.lr.ph47.preheader.i
  %indvars.iv53.i = phi i64 [ %i.ar, %.lr.ph47.preheader.i ], [ %indvars.iv.next54.i, %bb.n ] ; 3 uses
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, -1 ; 2 uses
  %i.at = and i64 %indvars.iv.next54.i, 4294967295 ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load float, ptr %i.av, align 8, !tbaa !21
  %i.ax = fcmp olt float %i.aw, %.0.i53
  br i1 %i.ax, label %bb.n, label %.critedge.loopexit.i

bb.n:                                             ; preds = %.lr.ph47.i
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv53.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !25
  %.not.i54 = icmp eq i64 %i.at, 0
  br i1 %.not.i54, label %.critedge.loopexit.i, label %.lr.ph47.i, !llvm.loop !28

.critedge.loopexit.i:                             ; preds = %bb.n, %.lr.ph47.i
  %.038.lcssa.ph.i = phi i64 [ %indvars.iv53.i, %.lr.ph47.i ], [ 0, %bb.n ]
  %.pre57.i = load i32, ptr %i.l, align 8, !tbaa !19
  %i.az = add i32 %.pre57.i, 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.ba = phi i32 [ 1, %.preheader.i ], [ %i.az, %.critedge.loopexit.i ]
  %.038.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %.038.lcssa.ph.i, %.critedge.loopexit.i ]
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.038.lcssa.i ; 2 uses
  store ptr %.04165, ptr %i.bc, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store float %.0.i53, ptr %i.bd, align 8, !tbaa !21
  store i32 %i.ba, ptr %i.l, align 8, !tbaa !19
  br label %.backedge

bb.o:                                             ; preds = %hnsw_distance.exit
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !21
  %i.bh = fcmp ult float %.0.i53, %i.bg
  br i1 %i.bh, label %.preheader41.i, label %.backedge

.preheader41.i:                                   ; preds = %bb.o
  %.not51.i = icmp eq i32 %i.ap, 1
  br i1 %.not51.i, label %.critedge2.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader41.i, %bb.p
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.p ], [ 0, %.preheader41.i ] ; 3 uses
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !17  ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %indvars.iv.next.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !21
  %i.bm = fcmp ogt float %i.bl, %.0.i53
  br i1 %i.bm, label %bb.p, label %.critedge2.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !25
  %i.bo = load i32, ptr %i.m, align 4, !tbaa !20
  %i.bp = add i32 %i.bo, -1
  %i.bq = zext i32 %i.bp to i64
  %i.br = icmp samesign ult i64 %indvars.iv.next.i, %i.bq
  br i1 %i.br, label %.lr.ph.i, label %..critedge2.loopexit_crit_edge.i, !llvm.loop !31

..critedge2.loopexit_crit_edge.i:                 ; preds = %bb.p
  %.pre.pre.i = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %.critedge2.i, !llvm.loop !31

.critedge2.i:                                     ; preds = %.lr.ph.i, %..critedge2.loopexit_crit_edge.i, %.preheader41.i
  %i.bs = phi ptr [ %i.be, %.preheader41.i ], [ %.pre.pre.i, %..critedge2.loopexit_crit_edge.i ], [ %i.bi, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ 0, %.preheader41.i ], [ %indvars.iv.next.i, %..critedge2.loopexit_crit_edge.i ], [ %indvars.iv.i, %.lr.ph.i ]
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %.0.lcssa.i ; 2 uses
  store ptr %.04165, ptr %i.bt, align 8, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store float %.0.i53, ptr %i.bu, align 8, !tbaa !21
  br label %.backedge

._crit_edge.loopexit:                             ; preds = %.backedge
  %.pre = load i32, ptr %i.l, align 8, !tbaa !19
  %.pre79.pre = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %.pre79 = phi ptr [ %.pre79.pre, %._crit_edge.loopexit ], [ %i.h, %bb.f ] ; 9 uses
  %i.bv = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.f ] ; 9 uses
  %. = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.bv) ; 7 uses
  %.not = icmp eq i32 %., 0
  br i1 %.not, label %pq_free.exit, label %.lr.ph68

.lr.ph68:                                         ; preds = %._crit_edge
  %.not49 = icmp eq ptr %4, null
  %wide.trip.count77 = zext i32 %. to i64         ; 4 uses
  br i1 %.not49, label %.lr.ph68.split.us.preheader, label %.lr.ph68.split.preheader

.lr.ph68.split.preheader:                         ; preds = %.lr.ph68
  %xtraiter = and i64 %wide.trip.count77, 1
  %i.bw = icmp eq i32 %., 1
  br i1 %i.bw, label %.lr.ph68.split.epil.preheader, label %.lr.ph68.split.preheader.new

.lr.ph68.split.preheader.new:                     ; preds = %.lr.ph68.split.preheader
  %unroll_iter = and i64 %wide.trip.count77, 4294967294
  br label %.lr.ph68.split

.lr.ph68.split.us.preheader:                      ; preds = %.lr.ph68
  %xtraiter102 = and i64 %wide.trip.count77, 3    ; 3 uses
  %i.bx = icmp ult i32 %., 4
  br i1 %i.bx, label %.lr.ph68.split.us.epil.preheader, label %.lr.ph68.split.us.preheader.new

.lr.ph68.split.us.preheader.new:                  ; preds = %.lr.ph68.split.us.preheader
  %unroll_iter105 = and i64 %wide.trip.count77, 4294967292
  br label %.lr.ph68.split.us

.lr.ph68.split.us:                                ; preds = %.lr.ph68.split.us, %.lr.ph68.split.us.preheader.new
  %indvars.iv74 = phi i64 [ 0, %.lr.ph68.split.us.preheader.new ], [ %indvars.iv.next75.3, %.lr.ph68.split.us ] ; 5 uses
  %niter106 = phi i64 [ 0, %.lr.ph68.split.us.preheader.new ], [ %niter106.next.3, %.lr.ph68.split.us ]
  %indvars.iv.next75 = or disjoint i64 %indvars.iv74, 1 ; 2 uses
  %10 = trunc nuw i64 %indvars.iv.next75 to i32
  %11 = sub i32 %i.bv, %10
  %12 = zext i32 %11 to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %12
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !30
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv74
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !26
  %indvars.iv.next75.1 = or disjoint i64 %indvars.iv74, 2 ; 2 uses
  %13 = trunc nuw i64 %indvars.iv.next75.1 to i32
  %14 = sub i32 %i.bv, %13
  %15 = zext i32 %14 to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %15
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !30
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next75
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !26
  %indvars.iv.next75.2 = or disjoint i64 %indvars.iv74, 3 ; 2 uses
  %16 = trunc nuw i64 %indvars.iv.next75.2 to i32
  %17 = sub i32 %i.bv, %16
  %18 = zext i32 %17 to i64
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %18
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !30
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next75.1
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !26
  %indvars.iv.next75.3 = add nuw nsw i64 %indvars.iv74, 4 ; 3 uses
  %19 = trunc nuw i64 %indvars.iv.next75.3 to i32
  %20 = sub i32 %i.bv, %19
  %21 = zext i32 %20 to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %21
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !30
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next75.2
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !26
  %niter106.next.3 = add i64 %niter106, 4         ; 2 uses
  %niter106.ncmp.3 = icmp eq i64 %niter106.next.3, %unroll_iter105
  br i1 %niter106.ncmp.3, label %pq_free.exit.loopexit.unr-lcssa, label %.lr.ph68.split.us, !llvm.loop !257

pq_free.exit.loopexit.unr-lcssa:                  ; preds = %.lr.ph68.split.us
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %pq_free.exit, label %.lr.ph68.split.us.epil.preheader

.lr.ph68.split.us.epil.preheader:                 ; preds = %pq_free.exit.loopexit.unr-lcssa, %.lr.ph68.split.us.preheader
  %indvars.iv74.epil.init = phi i64 [ 0, %.lr.ph68.split.us.preheader ], [ %indvars.iv.next75.3, %pq_free.exit.loopexit.unr-lcssa ]
  %lcmp.mod104 = icmp ne i64 %xtraiter102, 0
  tail call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph68.split.us.epil

.lr.ph68.split.us.epil:                           ; preds = %.lr.ph68.split.us.epil, %.lr.ph68.split.us.epil.preheader
  %indvars.iv74.epil = phi i64 [ %indvars.iv.next75.epil, %.lr.ph68.split.us.epil ], [ %indvars.iv74.epil.init, %.lr.ph68.split.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph68.split.us.epil ], [ 0, %.lr.ph68.split.us.epil.preheader ]
  %indvars.iv.next75.epil = add nuw nsw i64 %indvars.iv74.epil, 1 ; 2 uses
  %22 = trunc nuw i64 %indvars.iv.next75.epil to i32
  %23 = sub i32 %i.bv, %22
  %24 = zext i32 %23 to i64
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !30
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv74.epil
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !26
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter102
  br i1 %epil.iter.cmp.not, label %pq_free.exit, label %.lr.ph68.split.us.epil, !llvm.loop !258

pq_free.exit.loopexit97.unr-lcssa:                ; preds = %.lr.ph68.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pq_free.exit, label %.lr.ph68.split.epil.preheader

.lr.ph68.split.epil.preheader:                    ; preds = %pq_free.exit.loopexit97.unr-lcssa, %.lr.ph68.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph68.split.preheader ], [ %indvars.iv.next.1, %pq_free.exit.loopexit97.unr-lcssa ] ; 3 uses
  %lcmp.mod101 = trunc i32 %. to i1
  tail call void @llvm.assume(i1 %lcmp.mod101)
  %25 = trunc i64 %indvars.iv.epil.init to i32
  %.neg = xor i32 %25, -1
  %26 = add i32 %i.bv, %.neg
  %27 = zext i32 %26 to i64
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %27 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !30
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil.init
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !26
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !21
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.epil.init
  store float %i.cr, ptr %i.cs, align 4, !tbaa !27
  br label %pq_free.exit

pq_free.exit:                                     ; preds = %.lr.ph68.split.epil.preheader, %pq_free.exit.loopexit97.unr-lcssa, %pq_free.exit.loopexit.unr-lcssa, %.lr.ph68.split.us.epil, %._crit_edge
  %i.ct = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.ct(ptr noundef %.pre79) #34, !inline_history !143
  %i.cu = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.cu(ptr noundef nonnull %i.d) #34, !inline_history !143
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !15 ; 2 uses
  %.not.i56 = icmp eq ptr %i.cw, %1
  br i1 %.not.i56, label %hnsw_free_tmp_node.exit, label %hnsw_free_tmp_node.exit.sink.split

.lr.ph68.split:                                   ; preds = %.lr.ph68.split, %.lr.ph68.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph68.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph68.split ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph68.split.preheader.new ], [ %niter.next.1, %.lr.ph68.split ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %28 = trunc nuw i64 %indvars.iv.next to i32
  %29 = sub i32 %i.bv, %28
  %30 = zext i32 %29 to i64
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %30 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !30
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !26
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.db = load float, ptr %i.da, align 8, !tbaa !21
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store float %i.db, ptr %i.dc, align 4, !tbaa !27
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %31 = trunc nuw i64 %indvars.iv.next.1 to i32
  %32 = sub i32 %i.bv, %31
  %33 = zext i32 %32 to i64
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %33 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !30
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store ptr %i.de, ptr %i.df, align 8, !tbaa !26
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !21
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  store float %i.dh, ptr %i.di, align 4, !tbaa !27
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %pq_free.exit.loopexit97.unr-lcssa, label %.lr.ph68.split, !llvm.loop !257

hnsw_free_tmp_node.exit.sink.split:               ; preds = %pq_free.exit, %bb.e
  %.sink = phi ptr [ %i.k, %bb.e ], [ %i.cw, %pq_free.exit ]
  %.1.ph = phi i32 [ -1, %bb.e ], [ %., %pq_free.exit ]
  %i.dj = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.dj(ptr noundef %.sink) #34
  br label %hnsw_free_tmp_node.exit

hnsw_free_tmp_node.exit:                          ; preds = %hnsw_free_tmp_node.exit.sink.split, %pq_free.exit, %bb.e, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %., %pq_free.exit ], [ -1, %bb.e ], [ %.1.ph, %hnsw_free_tmp_node.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) #26

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) #27

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse3.hadd.ps(<4 x float>, <4 x float>) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16>, <32 x i16>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32>, <4 x i32>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #8

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc i32 @hnsw_popcount64(i64 noundef %0) unnamed_addr #30 {
bb.a:
  %i.a = and i64 %0, 6148914691236517205
  %i.b = lshr i64 %0, 1
  %i.c = and i64 %i.b, 6148914691236517205
  %i.d = add nuw i64 %i.c, %i.a                   ; 2 uses
  %i.e = and i64 %i.d, 3689348814741910323
  %i.f = lshr i64 %i.d, 2
  %i.g = and i64 %i.f, 3689348814741910323
  %i.h = add nuw nsw i64 %i.g, %i.e               ; 2 uses
  %i.i = and i64 %i.h, 506381209866536711
  %i.j = lshr i64 %i.h, 4
  %i.k = and i64 %i.j, 506381209866536711
  %i.l = add nuw nsw i64 %i.k, %i.i               ; 2 uses
  %i.m = and i64 %i.l, 4222189076152335
  %i.n = lshr i64 %i.l, 8
  %i.o = and i64 %i.n, 4222189076152335
  %i.p = add nuw nsw i64 %i.o, %i.m               ; 2 uses
  %i.q = and i64 %i.p, 133143986207
  %i.r = lshr i64 %i.p, 16
  %i.s = and i64 %i.r, 133143986207
  %i.t = add nuw nsw i64 %i.s, %i.q               ; 2 uses
  %i.u = lshr i64 %i.t, 32
  %i.v = add nuw nsw i64 %i.u, %i.t
  %i.w = trunc i64 %i.v to i32
  ret i32 %i.w
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #32

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+avx512vpopcntdq,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #30 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { nofree nounwind }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { nounwind }
attributes #35 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
end_hunk_1
