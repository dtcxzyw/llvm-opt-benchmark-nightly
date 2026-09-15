Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_resize2?download=true
inline.NumInlined: 166
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@stbir__encode_first_scanline_from_scatter:bb.a
  %i.aj = load i32, ptr %i.a, align 8, !tbaa !99
  %i.ak = add nsw i32 %i.aj, 1                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.am = load i32, ptr %i.al, align 4, !tbaa !101
  %i.an = icmp eq i32 %i.ak, %i.am
  %spec.store.select = select i1 %i.an, i32 0, i32 %i.ak
  store i32 %spec.store.select, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_resample_and_encode_first_scanline_from_scatter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.f = load i32, ptr %i.e, align 8, !tbaa !98
  %i.g = mul nsw i32 %i.f, %i.b
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108
  tail call void @stbir__resample_horizontal_gather(ptr noundef %0, ptr noundef %i.k, ptr noundef %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !112
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !100  ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.r = load i32, ptr %i.q, align 4, !tbaa !113
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.s, %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !108  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = load i32, ptr %i.w, align 4, !tbaa !92   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.z = load i32, ptr %i.y, align 8, !tbaa !79
  %i.aa = mul nsw i32 %i.z, %i.x                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !93 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.ac(ptr noundef %i.v, i32 noundef %i.aa) #24, !inline_history !114
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !94
  %.not22.i = icmp eq ptr %i.ae, null
  %spec.select.i = select i1 %.not22.i, ptr %i.u, ptr %i.v ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !95
  tail call void %i.ag(ptr noundef %spec.select.i, i32 noundef %i.aa, ptr noundef %i.v) #24, !inline_history !114
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !94 ; 2 uses
  %.not23.i = icmp eq ptr %i.ah, null
  br i1 %.not23.i, label %stbir__encode_scanline.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !87
  tail call void %i.ah(ptr noundef %spec.select.i, i32 noundef %i.x, i32 noundef %i.o, ptr noundef %i.aj) #24, !inline_history !114
  br label %stbir__encode_scanline.exit

stbir__encode_scanline.exit:                      ; preds = %bb.c, %bb.d
  store float 3.000000e+38, ptr %i.i, align 4, !tbaa !58
  %i.ak = load i32, ptr %i.n, align 8, !tbaa !100
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.n, align 8, !tbaa !100
  %i.am = load i32, ptr %i.a, align 8, !tbaa !99
  %i.an = add nsw i32 %i.am, 1                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !101
  %i.aq = icmp eq i32 %i.an, %i.ap
  %spec.store.select = select i1 %i.aq, i32 0, i32 %i.an
  store i32 %spec.store.select, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__resample_vertical_scatter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x ptr], align 16               ; 5 uses
  %reass.sub = sub i32 %3, %2
  %i.b = add i32 %reass.sub, 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 328
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.027 = phi i32 [ 0, %bb.a ], [ %i.al, %._crit_edge ] ; 3 uses
  %.026 = phi i32 [ %i.b, %bb.a ], [ %i.am, %._crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %spec.store.select = call i32 @llvm.smin.i32(i32 %.026, i32 8) ; 3 uses
  %i.h = icmp sgt i32 %.026, 0
  call void @llvm.assume(i1 %i.h)
  %i.i = load i32, ptr %i.c, align 8, !tbaa !99
  %i.j = load i32, ptr %i.d, align 8, !tbaa !100
  %i.k = add i32 %.027, %2
  %invariant.op = add i32 %i.k, %i.i
  %invariant.op35 = sub i32 %invariant.op, %i.j   ; 2 uses
  %i.l = load i32, ptr %i.e, align 4, !tbaa !101  ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !97   ; 2 uses
  %i.n = load i32, ptr %i.g, align 8, !tbaa !98   ; 2 uses
  %wide.trip.count = zext nneg i32 %spec.store.select to i64
  %i.o = srem i32 %invariant.op35, %i.l
  %i.p = mul nsw i32 %i.n, %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 %i.q ; 3 uses
  store ptr %i.r, ptr %i.a, align 16, !tbaa !91
  %exitcond.peel.not = icmp eq i32 %.026, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.b
  %i.s = load float, ptr %i.r, align 4, !tbaa !58
  %i.t = fcmp une float %i.s, 3.000000e+38
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.peel.next
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.u = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %.reass36 = add i32 %invariant.op35, %i.u
  %i.v = srem i32 %.reass36, %i.l
  %i.w = mul nsw i32 %i.n, %i.v
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.y, ptr %i.z, align 8, !tbaa !91
  %i.aa = load float, ptr %i.y, align 4, !tbaa !58
  %i.ab = fcmp oeq float %i.aa, 3.000000e+38
  %.not29 = xor i1 %i.ab, %i.t
  br i1 %.not29, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %spec.store.select, %bb.b ], [ %i.u, %bb.c ], [ %spec.store.select, %bb.d ] ; 3 uses
  %i.ac = load float, ptr %i.r, align 4, !tbaa !58
  %i.ad = fcmp oeq float %i.ac, 3.000000e+38
  %i.ae = select i1 %i.ad, ptr @stbir__vertical_scatter_sets, ptr @stbir__vertical_scatter_blends
  %i.af = sext i32 %.0 to i64
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !52
  %i.aj = sext i32 %.027 to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aj
  call void %i.ai(ptr noundef nonnull %i.a, ptr noundef %i.ak, ptr noundef %5, ptr noundef %6) #24
  %i.al = add nsw i32 %.0, %.027
  %i.am = sub nsw i32 %.026, %.0                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not30 = icmp eq i32 %i.am, 0
  br i1 %.not30, label %bb.e, label %bb.b, !llvm.loop !11

bb.e:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__vertical_scatter_loop(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x ptr], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 492 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !110
  %.not = icmp eq i32 %i.g, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.j = load i32, ptr %i.i, align 4, !tbaa !111
  %i.k = load i32, ptr %i.h, align 8, !tbaa !85
  %i.l = add i32 %i.j, 1
  %i.m = sub i32 %i.l, %i.k
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !92
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi i32 [ %i.m, %bb.b ], [ %i.o, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.r = load i32, ptr %i.q, align 4, !tbaa !80   ; 2 uses
  %i.s = mul nsw i32 %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !118  ; 8 uses
  %i.v = sext i32 %2 to i64
  %i.w = getelementptr [120 x i8], ptr %1, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -96
  %i.y = load i32, ptr %i.x, align 8, !tbaa !119  ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !122 ; 6 uses
  %i.ab = getelementptr i8, ptr %i.w, i64 -88
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !123 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !124
  %i.af = add nsw i32 %i.ae, %i.aa                ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !120
  %i.ak = mul nsw i32 %i.aj, %i.af
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.al
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !111
  %i.aq = load i32, ptr %i.an, align 8, !tbaa !85
  %i.ar = add i32 %i.ap, 1
  %i.as = sub i32 %i.ar, %i.aq
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !92
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink190 = phi i32 [ %i.av, %bb.f ], [ %i.as, %bb.e ]
  %.sink.in = phi ptr [ %i.at, %bb.f ], [ %1, %bb.e ]
  %.0135 = phi ptr [ @stbir__encode_first_scanline_from_scatter, %bb.f ], [ @stbir__horizontal_resample_and_encode_first_scanline_from_scatter, %bb.e ] ; 2 uses
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !91 ; 2 uses
  %.sink188.in = sext i32 %i.r to i64
  %.sink188 = shl nsw i64 %.sink188.in, 2
  %i.aw = sext i32 %.sink190 to i64
  %i.ax = mul i64 %.sink188, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 %i.u, ptr %i.az, align 8, !tbaa !100
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  store i32 -1, ptr %i.ba, align 4, !tbaa !115
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store i32 -1, ptr %i.bb, align 8, !tbaa !99
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !101 ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph, label %.preheader156

.lr.ph:                                           ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !97 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !98
  %i.bj = sext i32 %i.s to i64                    ; 5 uses
  %i.bk = sext i32 %i.bi to i64                   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.bd to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bl = icmp ult i32 %i.bd, 4
  br i1 %i.bl, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.i

.preheader156.loopexit.unr-lcssa:                 ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader156, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader156.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.preheader156.loopexit.unr-lcssa ]
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bm = mul nsw i64 %indvars.iv.epil, %i.bk
  %i.bn = getelementptr inbounds i8, ptr %i.bg, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bj
  store <2 x float> zeroinitializer, ptr %i.bo, align 4, !tbaa !58
  store float 3.000000e+38, ptr %i.bn, align 4, !tbaa !58
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader156, label %bb.h, !llvm.loop !1026

.preheader156:                                    ; preds = %.preheader156.loopexit.unr-lcssa, %bb.h, %bb.g
  %i.bp = icmp slt i32 %i.aa, %i.ac
  br i1 %i.bp, label %.lr.ph163, label %.preheader

.lr.ph163:                                        ; preds = %.preheader156
  %i.bq = add nsw i32 %i.y, -1
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 328
  br label %bb.j

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.i ]
  %i.bu = mul nsw i64 %indvars.iv, %i.bk
  %i.bv = getelementptr inbounds i8, ptr %i.bg, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bj
  store <2 x float> zeroinitializer, ptr %i.bw, align 4, !tbaa !58
  store float 3.000000e+38, ptr %i.bv, align 4, !tbaa !58
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.bx = mul nsw i64 %indvars.iv.next, %i.bk
  %i.by = getelementptr inbounds i8, ptr %i.bg, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.bj
  store <2 x float> zeroinitializer, ptr %i.bz, align 4, !tbaa !58
  store float 3.000000e+38, ptr %i.by, align 4, !tbaa !58
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.ca = mul nsw i64 %indvars.iv.next.1, %i.bk
  %i.cb = getelementptr inbounds i8, ptr %i.bg, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.bj
  store <2 x float> zeroinitializer, ptr %i.cc, align 4, !tbaa !58
  store float 3.000000e+38, ptr %i.cb, align 4, !tbaa !58
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.cd = mul nsw i64 %indvars.iv.next.2, %i.bk
  %i.ce = getelementptr inbounds i8, ptr %i.bg, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.bj
  store <2 x float> zeroinitializer, ptr %i.cf, align 4, !tbaa !58
  store float 3.000000e+38, ptr %i.ce, align 4, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader156.loopexit.unr-lcssa, label %bb.i, !llvm.loop !1027

.preheader.loopexit:                              ; preds = %bb.z
  %.pre176 = load i32, ptr %i.az, align 8, !tbaa !100
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader156
  %i.cg = phi i32 [ %i.u, %.preheader156 ], [ %.pre176, %.preheader.loopexit ]
  %.0129.lcssa = phi i32 [ %i.aa, %.preheader156 ], [ %.1130, %.preheader.loopexit ]
  %i.ch = icmp slt i32 %i.cg, %i.y
  br i1 %i.ch, label %.lr.ph164, label %._crit_edge

bb.j:                                             ; preds = %.lr.ph163, %bb.z
  %.1162 = phi i32 [ %i.aa, %.lr.ph163 ], [ %i.ep, %bb.z ] ; 6 uses
  %.0129161 = phi i32 [ %i.aa, %.lr.ph163 ], [ %.1130, %bb.z ] ; 2 uses
  %.0131160 = phi i32 [ 1, %.lr.ph163 ], [ %.1132, %bb.z ] ; 3 uses
  %.0136159 = phi ptr [ %i.am, %.lr.ph163 ], [ %i.eo, %bb.z ] ; 2 uses
  %.0137158 = phi ptr [ %i.ah, %.lr.ph163 ], [ %i.el, %bb.z ] ; 3 uses
  %i.ci = load i32, ptr %.0137158, align 4, !tbaa !47 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0137158, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !48 ; 4 uses
  %.not144 = icmp slt i32 %i.ck, %i.ci
  br i1 %.not144, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not145 = icmp sge i32 %i.ci, %i.u
  %i.cl = icmp slt i32 %i.ci, %i.y
  %or.cond = select i1 %.not145, i1 %i.cl, i1 false
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not146 = icmp sge i32 %i.ck, %i.u
  %i.cm = icmp slt i32 %i.ck, %i.y
  %or.cond150 = select i1 %.not146, i1 %i.cm, i1 false
  br i1 %or.cond150, label %bb.m, label %bb.z

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not147 = icmp ne i32 %.0131160, 0
  %i.cn = icmp sgt i32 %.1162, %i.aa
  %or.cond151 = select i1 %.not147, i1 %i.cn, i1 false
  br i1 %or.cond151, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %.1162, ptr %i.z, align 4, !tbaa !122
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %3 = icmp slt i32 %i.ci, %i.u
  %i.co = sub nsw i32 %i.u, %i.ci
  %.0127 = call i32 @llvm.smax.i32(i32 %i.ci, i32 %i.u) ; 3 uses
  %narrow = select i1 %3, i32 %i.co, i32 0
  %.0.idx = zext i32 %narrow to i64
  %.0 = getelementptr inbounds nuw [4 x i8], ptr %.0136159, i64 %.0.idx
  %.0126 = call i32 @llvm.smin.i32(i32 %i.ck, i32 %i.bq) ; 4 uses
  %i.cp = load i32, ptr %i.bb, align 8, !tbaa !99
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cr = sub nsw i32 %.0127, %i.u
  store i32 %i.cr, ptr %i.bb, align 8, !tbaa !99
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cs = load ptr, ptr %1, align 8, !tbaa !109
  call void @stbir__decode_scanline(ptr noundef nonnull %0, i32 noundef %.1162, ptr noundef %i.cs)
  %i.ct = load i32, ptr %i.f, align 4, !tbaa !110
  %.not149 = icmp eq i32 %i.ct, 0
  br i1 %.not149, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cu = load ptr, ptr %i.br, align 8, !tbaa !108
  %i.cv = load ptr, ptr %1, align 8, !tbaa !109
  call void @stbir__resample_horizontal_gather(ptr noundef nonnull %0, ptr noundef %i.cu, ptr noundef %i.cv)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cw = load i32, ptr %i.ba, align 4, !tbaa !115 ; 2 uses
  %i.cx = load i32, ptr %i.az, align 8, !tbaa !100
  %i.cy = add i32 %i.cw, 1
  %i.cz = sub i32 %i.cy, %i.cx
  %i.da = load i32, ptr %i.bc, align 4, !tbaa !101
  %i.db = icmp eq i32 %i.cz, %i.da
  %i.dc = icmp sgt i32 %.0126, %i.cw
  %or.cond152 = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %or.cond152, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void %.0135(ptr noundef nonnull %0, ptr noundef nonnull %1) #24, !callees !1031
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %reass.sub = sub i32 %.0126, %.0127
  %i.dd = add i32 %reass.sub, 1
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i, %bb.u
  %.027.i = phi i32 [ 0, %bb.u ], [ %i.eh, %._crit_edge.i ] ; 3 uses
  %.026.i = phi i32 [ %i.dd, %bb.u ], [ %i.ei, %._crit_edge.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.de = call i32 @llvm.umin.i32(i32 %.026.i, i32 8) ; 3 uses
  %i.df = icmp ne i32 %.026.i, 0
  call void @llvm.assume(i1 %i.df)
  %i.dg = load i32, ptr %i.bb, align 8, !tbaa !99
  %i.dh = load i32, ptr %i.az, align 8, !tbaa !100
  %i.di = add i32 %.027.i, %.0127
  %invariant.op.i = add i32 %i.di, %i.dg
  %invariant.op35.i = sub i32 %invariant.op.i, %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.bc, align 4, !tbaa !101 ; 2 uses
  %i.dk = load ptr, ptr %i.bs, align 8, !tbaa !97 ; 2 uses
  %i.dl = load i32, ptr %i.bt, align 8, !tbaa !98 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.de to i64
  %i.dm = srem i32 %invariant.op35.i, %i.dj
  %i.dn = mul nsw i32 %i.dm, %i.dl
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds i8, ptr %i.dk, i64 %i.do ; 2 uses
  store ptr %i.dp, ptr %i.a, align 16, !tbaa !91
  %exitcond.peel.not.i = icmp eq i32 %.026.i, 1
  %.pre = load float, ptr %i.dp, align 4, !tbaa !58 ; 2 uses
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.v
  %i.dq = fcmp une float %.pre, 3.000000e+38
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.peel.next.i
  %indvars.iv.i = phi i64 [ 1, %.peel.next.i ], [ %indvars.iv.next.i, %bb.x ] ; 3 uses
  %i.dr = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %.reass36.i = add i32 %invariant.op35.i, %i.dr
  %i.ds = srem i32 %.reass36.i, %i.dj
  %i.dt = mul nsw i32 %i.ds, %i.dl
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %i.dk, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !91
  %i.dx = load float, ptr %i.dv, align 4, !tbaa !58
  %i.dy = fcmp oeq float %i.dx, 3.000000e+38
  %.not29.i = xor i1 %i.dq, %i.dy
  br i1 %.not29.i, label %bb.x, label %._crit_edge.i

bb.x:                                             ; preds = %bb.w
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.w, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.x, %bb.w, %bb.v
  %.0.i = phi i32 [ %i.de, %bb.v ], [ %i.de, %bb.x ], [ %i.dr, %bb.w ] ; 3 uses
  %i.dz = fcmp oeq float %.pre, 3.000000e+38
  %i.ea = select i1 %i.dz, ptr @stbir__vertical_scatter_sets, ptr @stbir__vertical_scatter_blends
  %i.eb = sext i32 %.0.i to i64
  %i.ec = getelementptr [8 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 -8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !52
  %i.ef = sext i32 %.027.i to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.ef
  call void %i.ee(ptr noundef nonnull %i.a, ptr noundef %i.eg, ptr noundef %.sink, ptr noundef %i.ay) #24, !inline_history !1032
  %i.eh = add nsw i32 %.0.i, %.027.i
  %i.ei = sub nsw i32 %.026.i, %.0.i              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not30.i = icmp eq i32 %i.ei, 0
  br i1 %.not30.i, label %stbir__resample_vertical_scatter.exit, label %bb.v, !llvm.loop !11

stbir__resample_vertical_scatter.exit:            ; preds = %._crit_edge.i
  %i.ej = load i32, ptr %i.ba, align 4, !tbaa !115
  %i.ek = icmp sgt i32 %.0126, %i.ej
  br i1 %i.ek, label %bb.y, label %bb.z

bb.y:                                             ; preds = %stbir__resample_vertical_scatter.exit
  store i32 %.0126, ptr %i.ba, align 4, !tbaa !115
  br label %bb.z

bb.z:                                             ; preds = %stbir__resample_vertical_scatter.exit, %bb.y, %bb.l, %bb.j
  %.1132 = phi i32 [ %.0131160, %bb.l ], [ %.0131160, %bb.j ], [ 0, %bb.y ], [ 0, %stbir__resample_vertical_scatter.exit ]
  %.1130 = phi i32 [ %.0129161, %bb.l ], [ %.0129161, %bb.j ], [ %.1162, %bb.y ], [ %.1162, %stbir__resample_vertical_scatter.exit ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0137158, i64 8
  %i.em = load i32, ptr %i.ai, align 4, !tbaa !120
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %.0136159, i64 %i.en
  %i.ep = add i32 %.1162, 1                       ; 2 uses
  %exitcond170.not = icmp eq i32 %i.ep, %i.ac
  br i1 %exitcond170.not, label %.preheader.loopexit, label %bb.j, !llvm.loop !1028

.lr.ph164:                                        ; preds = %.preheader, %.lr.ph164
  call void %.0135(ptr noundef nonnull %0, ptr noundef nonnull %1) #24, !callees !1031
  %i.eq = load i32, ptr %i.az, align 8, !tbaa !100
  %i.er = icmp slt i32 %i.eq, %i.y
  br i1 %i.er, label %.lr.ph164, label %._crit_edge, !llvm.loop !1029

._crit_edge:                                      ; preds = %.lr.ph164, %.preheader
  %i.es = add nsw i32 %.0129.lcssa, 1             ; 6 uses
  %i.et = icmp sgt i32 %2, 0
  br i1 %i.et, label %.lr.ph167.preheader, label %._crit_edge168

.lr.ph167.preheader:                              ; preds = %._crit_edge
  %wide.trip.count174 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter192 = and i64 %wide.trip.count174, 1
  %i.eu = icmp eq i32 %2, 1
  br i1 %i.eu, label %.lr.ph167.epil.preheader, label %.lr.ph167.preheader.new

.lr.ph167.preheader.new:                          ; preds = %.lr.ph167.preheader
  %unroll_iter196 = and i64 %wide.trip.count174, 2147483646
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.ac, %.lr.ph167.preheader.new
  %indvars.iv171 = phi i64 [ 0, %.lr.ph167.preheader.new ], [ %indvars.iv.next172.1, %bb.ac ] ; 3 uses
  %niter197 = phi i64 [ 0, %.lr.ph167.preheader.new ], [ %niter197.next.1, %bb.ac ]
  %i.ev = getelementptr inbounds nuw [120 x i8], ptr %1, i64 %indvars.iv171
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !123
  %i.ey = icmp sgt i32 %i.ex, %i.es
  br i1 %i.ey, label %bb.aa, label %.lr.ph167.1

bb.aa:                                            ; preds = %.lr.ph167
  store i32 %i.es, ptr %i.ew, align 8, !tbaa !123
  br label %.lr.ph167.1

.lr.ph167.1:                                      ; preds = %.lr.ph167, %bb.aa
  %i.ez = getelementptr inbounds nuw [120 x i8], ptr %1, i64 %indvars.iv171
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 152 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !123
  %i.fc = icmp sgt i32 %i.fb, %i.es
  br i1 %i.fc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph167.1
  store i32 %i.es, ptr %i.fa, align 8, !tbaa !123
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph167.1
  %indvars.iv.next172.1 = add nuw nsw i64 %indvars.iv171, 2 ; 2 uses
  %niter197.next.1 = add i64 %niter197, 2         ; 2 uses
  %niter197.ncmp.1 = icmp eq i64 %niter197.next.1, %unroll_iter196
  br i1 %niter197.ncmp.1, label %._crit_edge168.loopexit.unr-lcssa, label %.lr.ph167, !llvm.loop !1030

._crit_edge168.loopexit.unr-lcssa:                ; preds = %bb.ac
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod194.not, label %._crit_edge168, label %.lr.ph167.epil.preheader

.lr.ph167.epil.preheader:                         ; preds = %._crit_edge168.loopexit.unr-lcssa, %.lr.ph167.preheader
  %indvars.iv171.epil.init = phi i64 [ 0, %.lr.ph167.preheader ], [ %indvars.iv.next172.1, %._crit_edge168.loopexit.unr-lcssa ]
  %lcmp.mod195 = trunc i32 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod195)
  %i.fd = getelementptr inbounds nuw [120 x i8], ptr %1, i64 %indvars.iv171.epil.init
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !123
  %i.fg = icmp sgt i32 %i.ff, %i.es
  br i1 %i.fg, label %bb.ad, label %._crit_edge168

bb.ad:                                            ; preds = %.lr.ph167.epil.preheader
  store i32 %i.es, ptr %i.fe, align 8, !tbaa !123
  br label %._crit_edge168

end_hunk_0
begin_hunk_1_@stbir__should_do_vertical_first:bb.a
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
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = sitofp i32 %4 to float                   ; 2 uses
  %i.o = sitofp i32 %1 to float                   ; 2 uses
  %i.p = load <2 x float>, ptr %i.l, align 4, !tbaa !58
  %i.q = fmul float %2, %i.n
  %i.r = insertelement <2 x float> poison, float %i.o, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.q, i64 1
  %i.t = fmul <2 x float> %i.p, %i.s
  %i.u = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.t) ; 2 uses
  %i.v = fmul float %5, %i.o
  %i.w = load <2 x float>, ptr %i.m, align 4, !tbaa !58
  %i.x = insertelement <2 x float> poison, float %i.n, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.v, i64 1
  %i.z = fmul <2 x float> %i.w, %i.y
  %i.aa = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.z) ; 2 uses
  %i.ab = fcmp ole float %i.aa, %i.u
  %i.ac = zext i1 %i.ab to i32                    ; 3 uses
  %.not48 = icmp eq ptr %8, null
  br i1 %.not48, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = fpext float %i.u to double
  %i.ae = fpext float %i.aa to double
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.ad, ptr %i.af, align 8, !tbaa !1036
  store double %i.ae, ptr %8, align 8, !tbaa !1037
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.0, ptr %i.ag, align 8, !tbaa !1038
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.ac, ptr %i.ah, align 4, !tbaa !1039
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 %7, ptr %i.ai, align 4, !tbaa !1040
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1041 ; 2 uses
  %.not49 = icmp eq i32 %i.ak, 0
  br i1 %.not49, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = icmp eq i32 %i.ak, 2
  %i.am = zext i1 %i.al to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.k, %bb.j
  %.042 = phi i32 [ %i.am, %bb.k ], [ %i.ac, %bb.j ], [ %i.ac, %bb.i ]
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
  br i1 %i.bq, label %bb.p, label %stbir__should_do_vertical_first.exit

bb.p:                                             ; preds = %bb.o
  %i.br = fcmp ugt float %i.bf, 3.000000e+00
  %..i = select i1 %i.br, i64 5, i64 3
  br label %stbir__should_do_vertical_first.exit

stbir__should_do_vertical_first.exit:             ; preds = %bb.j, %bb.l, %bb.n, %bb.o, %bb.p
  %.0.i = phi i64 [ %i.bl, %bb.j ], [ %i.bp, %bb.n ], [ 4, %bb.l ], [ %..i, %bb.p ], [ 2, %bb.o ]
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %.0.i ; 2 uses
  %i.bt = sitofp i32 %i.ax to float               ; 2 uses
  %i.bu = sitofp i32 %i.bd to float               ; 2 uses
  %i.bv = fmul float %i.az, %i.bu
  %i.bw = load <2 x float>, ptr %i.bs, align 16, !tbaa !58
  %i.bx = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.bv, i64 1
  %i.bz = fmul <2 x float> %i.bw, %i.by
  %i.ca = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bz)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cc = fmul float %i.bf, %i.bt
  %i.cd = load <2 x float>, ptr %i.cb, align 8, !tbaa !58
  %i.ce = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.cc, i64 1
  %i.cg = fmul <2 x float> %i.cd, %i.cf
  %i.ch = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cg)
  %i.ci = fcmp ole float %i.ch, %i.ca             ; 2 uses
  %i.cj = zext i1 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !48
  %i.cm = load i32, ptr %2, align 4, !tbaa !47
  %i.cn = add i32 %i.cl, 1
  %i.co = sub i32 %i.cn, %i.cm
  %i.cp = mul nsw i32 %i.co, %.0298
  %i.cq = sext i32 %i.cp to i64
  %i.cr = shl nsw i64 %i.cq, 2                    ; 2 uses
  %i.cs = add nsw i64 %i.cr, 12
  %i.ct = sext i32 %i.bb to i64
  %i.cu = shl nsw i64 %i.ar, 2
  %i.cv = mul i64 %i.cu, %i.ct                    ; 2 uses
  %i.cw = add i64 %i.cv, 12
  %i.cx = add nsw i64 %i.cr, 24                   ; 5 uses
  %i.cy = and i64 %i.cx, -16
  %.0301 = select i1 %i.ci, i64 %i.cy, i64 %i.cw  ; 3 uses
  %i.cz = and i64 %.0301, 4092
  %i.da = icmp eq i64 %i.cz, 0
  %i.db = or disjoint i64 %.0301, 192
  %.1302 = select i1 %i.da, i64 %i.db, i64 %.0301 ; 2 uses
  %i.dc = add nsw i32 %i.bd, 1
  %.not328 = icmp ne i32 %i.bh, 0
  %.not329 = icmp slt i32 %i.bd, %.0.lcssa.i
  %or.cond335 = select i1 %.not328, i1 true, i1 %.not329
  %.0300 = select i1 %or.cond335, i32 %i.dc, i32 %.0.lcssa.i ; 2 uses
  %i.dd = sext i32 %.0300 to i64
  %i.de = mul i64 %.1302, %i.dd                   ; 5 uses
  %i.df = add i64 %i.cv, 4                        ; 5 uses
  %i.dg = sext i32 %5 to i64                      ; 2 uses
  %.pn = mul nsw i64 %i.dg, 120                   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dk = trunc i64 %.1302 to i32
  %i.dl = add i32 %i.s, -5
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr @__const.stbir__alloc_internal_mem_and_build_samplers.simple_alpha_unweights, i64 %i.dm ; 2 uses
  %i.do = add i32 %i.p, -5
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @__const.stbir__alloc_internal_mem_and_build_samplers.simple_alpha_weights, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr @__const.stbir__alloc_internal_mem_and_build_samplers.fancy_alpha_weights, i64 %i.dp
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr @__const.stbir__alloc_internal_mem_and_build_samplers.fancy_alpha_unweights, i64 %i.dm
  %i.dt = icmp eq i32 %i.p, 2
  %i.du = icmp eq i32 %i.s, 3
  %or.cond19 = select i1 %i.dt, i1 %i.du, i1 false
  %i.dv = icmp eq i32 %i.p, 3
  %i.dw = icmp eq i32 %i.s, 2
  %or.cond21 = select i1 %i.dv, i1 %i.dw, i1 false
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.dz = add i64 %i.cs, %i.df
  %i.ea = add i64 %i.dz, %i.de
  %i.eb = mul i64 %i.ea, %i.dg
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 112
  %brmerge = select i1 %or.cond19, i1 true, i1 %or.cond21
  %i.eq = fcmp olt float %i.az, 1.000000e+00
  %wide.trip.count = zext nneg i32 %5 to i64
  %10 = icmp eq i32 %i.bh, 0
  %i.er = icmp ne i32 %i.bb, %i.b
  %i.es = fsub float %i.az, %i.bf
  %.0286 = tail call float @llvm.fabs.f32(float %i.es)
  %i.et = fcmp ole float %.0286, f0x03800000
  %xtraiter437 = and i32 %5, 1
  %i.eu = icmp eq i32 %5, 1
  %unroll_iter441 = and i32 %5, 2147483646
  %invariant.op = add i64 %i.df, 12
  %lcmp.mod438.not = icmp eq i32 %xtraiter437, 0
  %lcmp.mod440 = trunc i32 %5 to i1
  br label %bb.q

bb.q:                                             ; preds = %.thread359, %stbir__should_do_vertical_first.exit
  %.0305 = phi ptr [ null, %stbir__should_do_vertical_first.exit ], [ %i.ry, %.thread359 ] ; 3 uses
  %.0303 = phi i64 [ 0, %stbir__should_do_vertical_first.exit ], [ %i.rx, %.thread359 ]
  %i.ev = ptrtoint ptr %.0305 to i64              ; 2 uses
  %.not330 = icmp eq ptr %.0305, null             ; 5 uses
  %i.ew = add i64 %i.ev, 15
  %i.ex = and i64 %i.ew, -16                      ; 2 uses
  %i.ey = inttoptr i64 %i.ex to ptr               ; 38 uses
  %i.ez = add i64 %i.ev, 527
  %i.fa = and i64 %i.ez, -16                      ; 3 uses
  br i1 %.not330, label %.thread398, label %.thread

.thread:                                          ; preds = %bb.q
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 416
  store ptr %i.fb, ptr %i.fc, align 16, !tbaa !134
  %.not331347 = icmp eq i64 %i.ex, 0              ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 408
  store ptr %.0305, ptr %i.fd, align 8, !tbaa !132
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 504
  store i64 %.0303, ptr %i.fe, align 8, !tbaa !1043
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 496
  store i32 %i.w, ptr %i.ff, align 16, !tbaa !79
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 500
  store i32 %.0298, ptr %i.fg, align 4, !tbaa !80
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 484
  store i32 %6, ptr %i.fh, align 4, !tbaa !135
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 488
  store i32 %7, ptr %i.fi, align 8, !tbaa !136
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 464
  store i32 %.0300, ptr %i.fj, align 16, !tbaa !1044
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 332
  store i32 0, ptr %i.fk, align 4, !tbaa !101
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ey, i64 328
  store i32 %i.dk, ptr %i.fl, align 8, !tbaa !98
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ey, i64 468
  store i32 %5, ptr %i.fm, align 4, !tbaa !1045
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 492
  store i32 %i.cj, ptr %i.fn, align 4, !tbaa !110
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 472
  store i32 %i.p, ptr %i.fo, align 8, !tbaa !137
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ey, i64 476
  store i32 %i.s, ptr %i.fp, align 4, !tbaa !138
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ey, i64 432 ; 5 uses
  store ptr null, ptr %i.fq, align 16, !tbaa !89
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ey, i64 448 ; 5 uses
  store ptr null, ptr %i.fr, align 16, !tbaa !93
  br i1 %i.ak, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.thread
  %i.fs = load ptr, ptr %i.dr, align 8, !tbaa !52
  store ptr %i.fs, ptr %i.fq, align 16, !tbaa !89
  %i.ft = load ptr, ptr %i.ds, align 8, !tbaa !52
  store ptr %i.ft, ptr %i.fr, align 16, !tbaa !93
  br label %bb.y

bb.s:                                             ; preds = %.thread
  br i1 %i.al, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fu = load ptr, ptr %i.dq, align 8, !tbaa !52
  store ptr %i.fu, ptr %i.fq, align 16, !tbaa !89
  %i.fv = load ptr, ptr %i.dn, align 8, !tbaa !52
  store ptr %i.fv, ptr %i.fr, align 16, !tbaa !93
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  br i1 %i.am, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fw = load ptr, ptr %i.dq, align 8, !tbaa !52
  store ptr %i.fw, ptr %i.fq, align 16, !tbaa !89
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  br i1 %i.an, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fx = load ptr, ptr %i.dn, align 8, !tbaa !52
  store ptr %i.fx, ptr %i.fr, align 16, !tbaa !93
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.w, %bb.x, %bb.v, %bb.r
  br i1 %brmerge, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  br i1 %i.eq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr @stbir__simple_flip_3ch, ptr %i.fr, align 16, !tbaa !93
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  store ptr @stbir__simple_flip_3ch, ptr %i.fq, align 16, !tbaa !89
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.ab, %bb.aa
  %i.fy = add i64 %i.fa, %.pn                     ; 2 uses
  br i1 %i.c, label %.lr.ph.split, label %._crit_edge

.thread398:                                       ; preds = %bb.q
  %i.fz = add nsw i64 %i.fa, %.pn                 ; 3 uses
  br i1 %i.c, label %.thread351.us.preheader, label %._crit_edge

.thread351.us.preheader:                          ; preds = %.thread398
  br i1 %i.eu, label %.thread351.us.epil.preheader, label %.thread351.us

.thread351.us:                                    ; preds = %.thread351.us.preheader, %.thread351.us
  %.0291.in374.us = phi i64 [ %i.gl, %.thread351.us ], [ %i.fz, %.thread351.us.preheader ]
  %niter442 = phi i32 [ %niter442.next.1, %.thread351.us ], [ 0, %.thread351.us.preheader ]
  %i.ga = add i64 %.0291.in374.us, 15
  %i.gb = and i64 %i.ga, -16
  %i.gc = add i64 %i.cx, %i.gb
  %i.gd = or i64 %i.gc, 15
  %i.ge = add i64 %i.de, %i.gd
  %i.gf = and i64 %i.ge, -16
  %.reass = add i64 %i.gf, %invariant.op
  %i.gg = and i64 %.reass, -16
  %i.gh = add i64 %i.cx, %i.gg
  %i.gi = or i64 %i.gh, 15
  %i.gj = add i64 %i.de, %i.gi
  %i.gk = and i64 %i.gj, -16
  %i.gl = add i64 %i.gk, %i.df                    ; 3 uses
  %niter442.next.1 = add nuw nsw i32 %niter442, 2 ; 2 uses
  %niter442.ncmp.1 = icmp eq i32 %niter442.next.1, %unroll_iter441
  br i1 %niter442.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.thread351.us, !llvm.loop !1042

.lr.ph.split:                                     ; preds = %bb.ac
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ey, i64 416
  %i.gn = load ptr, ptr %i.gm, align 16, !tbaa !134
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.split, %bb.ad
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.ad ] ; 2 uses
  %.0291.in374 = phi i64 [ %i.fy, %.lr.ph.split ], [ %i.hb, %bb.ad ]
  %i.go = add i64 %.0291.in374, 15
  %i.gp = and i64 %i.go, -16                      ; 2 uses
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = getelementptr inbounds nuw [120 x i8], ptr %i.gn, i64 %indvars.iv ; 3 uses
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !109
  %i.gs = add i64 %i.cx, %i.gp                    ; 2 uses
  %i.gt = and i64 %i.gs, -16
  %i.gu = inttoptr i64 %i.gt to ptr
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !97
  %i.gw = or i64 %i.gs, 15
  %i.gx = add i64 %i.de, %i.gw
  %i.gy = and i64 %i.gx, -16                      ; 2 uses
  %i.gz = inttoptr i64 %i.gy to ptr
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gr, i64 48
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !108
  %i.hb = add i64 %i.gy, %i.df                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ad, !llvm.loop !1042

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.thread351.us
  br i1 %lcmp.mod438.not, label %._crit_edge, label %.thread351.us.epil.preheader

.thread351.us.epil.preheader:                     ; preds = %._crit_edge.loopexit.unr-lcssa, %.thread351.us.preheader
  %.0291.in374.us.epil.init = phi i64 [ %i.fz, %.thread351.us.preheader ], [ %i.gl, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod440)
  %i.hc = add i64 %.0291.in374.us.epil.init, 15
  %i.hd = and i64 %i.hc, -16
  %i.he = add i64 %i.cx, %i.hd
  %i.hf = or i64 %i.he, 15
  %i.hg = add i64 %i.de, %i.hf
  %i.hh = and i64 %i.hg, -16
  %i.hi = add i64 %i.hh, %i.df
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ad, %.thread351.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.thread398, %bb.ac
  %.not331349400 = phi i1 [ %.not331347, %bb.ac ], [ true, %.thread398 ], [ true, %.thread351.us.epil.preheader ], [ true, %._crit_edge.loopexit.unr-lcssa ], [ %.not331347, %bb.ad ] ; 2 uses
  %.0291.in.lcssa = phi i64 [ %i.fy, %bb.ac ], [ %i.fz, %.thread398 ], [ %i.hi, %.thread351.us.epil.preheader ], [ %i.gl, %._crit_edge.loopexit.unr-lcssa ], [ %i.hb, %bb.ad ] ; 4 uses
  br i1 %10, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %._crit_edge
  %i.hj = load i32, ptr %i.dx, align 4, !tbaa !129
  %i.hk = sext i32 %i.hj to i64                   ; 4 uses
  %i.hl = load i32, ptr %i.dy, align 8, !tbaa !130
  %i.hm = sext i32 %i.hl to i64                   ; 2 uses
  %i.hn = add nsw i64 %i.hm, %i.hk
  %.not332 = icmp ult i64 %i.eb, %i.hn
  br i1 %.not332, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not331349400, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ey, i64 416
  %i.hp = load ptr, ptr %i.ho, align 16, !tbaa !134
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !109 ; 2 uses
  store ptr %i.hq, ptr %i.ec, align 8, !tbaa !71
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 %i.hk
  store ptr %i.hr, ptr %i.ed, align 8, !tbaa !72
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ae
  %i.hs = add i64 %.0291.in.lcssa, 15             ; 3 uses
  br i1 %.not330, label %.thread352, label %bb.ai

.thread352:                                       ; preds = %bb.ah
  %i.ht = or i64 %i.hs, 15
  %i.hu = add i64 %i.ht, %i.hk
  %i.hv = and i64 %i.hu, -16
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hw = and i64 %i.hs, -16
  %i.hx = inttoptr i64 %i.hw to ptr
  store ptr %i.hx, ptr %i.ec, align 8, !tbaa !71
  %i.hy = or i64 %i.hs, 15
  %i.hz = add i64 %i.hy, %i.hk
  %i.ia = and i64 %i.hz, -16                      ; 2 uses
  %i.ib = inttoptr i64 %i.ia to ptr
  store ptr %i.ib, ptr %i.ed, align 8, !tbaa !72
  br label %bb.aj

bb.aj:                                            ; preds = %.thread352, %bb.ai
  %i.ic = phi i64 [ %i.hv, %.thread352 ], [ %i.ia, %bb.ai ]
  %i.id = add i64 %i.ic, %i.hm
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag, %bb.af, %._crit_edge
  %.2293 = phi i64 [ %.0291.in.lcssa, %._crit_edge ], [ %.0291.in.lcssa, %bb.ag ], [ %.0291.in.lcssa, %bb.af ], [ %i.id, %bb.aj ]
  %i.ie = add i64 %.2293, 15                      ; 3 uses
  br i1 %.not330, label %.thread353, label %bb.al

.thread353:                                       ; preds = %bb.ak
  %i.if = load i32, ptr %i.ee, align 4, !tbaa !127
  %i.ig = sext i32 %i.if to i64
  %i.ih = or i64 %i.ie, 15
  %i.ii = add i64 %i.ih, %i.ig
  %i.ij = and i64 %i.ii, -16
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ik = and i64 %i.ie, -16
  %i.il = inttoptr i64 %i.ik to ptr
  store ptr %i.il, ptr %0, align 8, !tbaa !45
  %i.im = load i32, ptr %i.ee, align 4, !tbaa !127
  %i.in = sext i32 %i.im to i64
  %i.io = or i64 %i.ie, 15
  %i.ip = add i64 %i.io, %i.in
  %i.iq = and i64 %i.ip, -16                      ; 2 uses
  %i.ir = inttoptr i64 %i.iq to ptr
  store ptr %i.ir, ptr %i.ef, align 8, !tbaa !67
  br label %bb.am

bb.am:                                            ; preds = %.thread353, %bb.al
  %i.is = phi i64 [ %i.ij, %.thread353 ], [ %i.iq, %bb.al ]
  %i.it = load i32, ptr %i.dh, align 8, !tbaa !128
  %i.iu = sext i32 %i.it to i64
  %i.iv = add i64 %i.is, %i.iu                    ; 2 uses
  %i.iw = load ptr, ptr %i.di, align 8, !tbaa !64
  %i.ix = load ptr, ptr %i.dj, align 8, !tbaa !64
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %bb.an, label %.thread354

bb.an:                                            ; preds = %bb.am
  %i.iz = load ptr, ptr %i.eg, align 8, !tbaa !40
  %i.ja = load ptr, ptr %i.eh, align 8, !tbaa !40
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %bb.ao, label %.thread354

bb.ao:                                            ; preds = %bb.an
  %i.jc = load i32, ptr %i.ei, align 8, !tbaa !44
  %i.jd = load i32, ptr %i.ej, align 8, !tbaa !44
  %i.je = icmp ne i32 %i.jc, %i.jd
  %brmerge416 = select i1 %i.je, i1 true, i1 %i.er
  br i1 %brmerge416, label %.thread354, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jf = load float, ptr %i.ek, align 8, !tbaa !131
  %i.jg = load float, ptr %i.el, align 8, !tbaa !131
  %i.jh = fsub float %i.jf, %i.jg
  %.0 = tail call float @llvm.fabs.f32(float %i.jh)
  %i.ji = fcmp ole float %.0, f0x03800000
  %or.cond23 = select i1 %i.et, i1 %i.ji, i1 false
  br i1 %or.cond23, label %bb.aq, label %.thread354

bb.aq:                                            ; preds = %bb.ap
  %i.jj = load i32, ptr %i.em, align 8, !tbaa !69
  %i.jk = icmp eq i32 %i.jj, %i.bh
  br i1 %i.jk, label %bb.at, label %.thread354

.thread354:                                       ; preds = %bb.ao, %bb.aq, %bb.ap, %bb.an, %bb.am
  %.2 = phi ptr [ null, %bb.am ], [ %0, %bb.aq ], [ null, %bb.ao ], [ null, %bb.an ], [ null, %bb.ap ]
  %i.jl = add i64 %i.iv, 15                       ; 3 uses
  br i1 %.not330, label %.thread358, label %bb.ar

.thread358:                                       ; preds = %.thread354
  %i.jm = load i32, ptr %i.en, align 4, !tbaa !127
  %i.jn = sext i32 %i.jm to i64
  %i.jo = or i64 %i.jl, 15
  %i.jp = add i64 %i.jo, %i.jn
  %i.jq = and i64 %i.jp, -16
  br label %bb.as

bb.ar:                                            ; preds = %.thread354
  %i.jr = and i64 %i.jl, -16
  %i.js = inttoptr i64 %i.jr to ptr
  store ptr %i.js, ptr %1, align 8, !tbaa !45
  %i.jt = load i32, ptr %i.en, align 4, !tbaa !127
  %i.ju = sext i32 %i.jt to i64
  %i.jv = or i64 %i.jl, 15
  %i.jw = add i64 %i.jv, %i.ju
  %i.jx = and i64 %i.jw, -16                      ; 2 uses
  %i.jy = inttoptr i64 %i.jx to ptr
  store ptr %i.jy, ptr %i.eo, align 8, !tbaa !67
  br label %bb.as

bb.as:                                            ; preds = %.thread358, %bb.ar
  %i.jz = phi i64 [ %i.jq, %.thread358 ], [ %i.jx, %bb.ar ]
  %i.ka = load i32, ptr %i.ep, align 8, !tbaa !128
  %i.kb = sext i32 %i.ka to i64
  %i.kc = add i64 %i.jz, %i.kb
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.as
  %.3294.in = phi i64 [ %i.kc, %bb.as ], [ %i.iv, %bb.aq ]
  %.not333 = phi i1 [ true, %bb.as ], [ false, %bb.aq ]
  %.3 = phi ptr [ %.2, %bb.as ], [ null, %bb.aq ]
  br i1 %.not331349400, label %.thread359, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.1308.le = select i1 %.not330, ptr null, ptr %i.ey ; 11 uses
  tail call void @stbir__calculate_filters(ptr noundef nonnull %0, ptr noundef null, ptr noundef %9)
  %i.kd = getelementptr inbounds [8 x i8], ptr @stbir__horizontal_gather_n_coeffs_funcs, i64 %i.ar
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !1047
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !70 ; 3 uses
  %i.kh = and i32 %i.kg, 3
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.ki
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !52
  %i.kl = getelementptr inbounds nuw i8, ptr %.1308.le, i64 440 ; 2 uses
  store ptr %i.kk, ptr %i.kl, align 8, !tbaa !104
  %i.km = icmp slt i32 %i.kg, 13
  br i1 %i.km, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.kn = getelementptr inbounds [8 x i8], ptr @stbir__horizontal_gather_channels_funcs, i64 %i.ar
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !1047
  %i.kp = sext i32 %i.kg to i64
  %i.kq = getelementptr [8 x i8], ptr %i.ko, i64 %i.kp
  %i.kr = getelementptr i8, ptr %i.kq, i64 -8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !52
  store ptr %i.ks, ptr %i.kl, align 8, !tbaa !104
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.kt = getelementptr inbounds nuw i8, ptr %.1308.le, i64 368 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ey, i64 372
  %i.kv = load <2 x i32>, ptr %2, align 4, !tbaa !32
  store <2 x i32> %i.kv, ptr %i.kt, align 8, !tbaa !32
  tail call void @stbir__get_extents(ptr noundef nonnull %0, ptr noundef nonnull %i.kt)
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !66
  %i.ky = load ptr, ptr %0, align 8, !tbaa !45
  %i.kz = load ptr, ptr %i.ef, align 8, !tbaa !67
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !68
  %i.lc = load i32, ptr %i.kf, align 4, !tbaa !70 ; 2 uses
  %i.ld = load i32, ptr %i.ku, align 4, !tbaa !111
  %i.le = tail call i32 @stbir__pack_coefficients(i32 noundef %i.kx, ptr noundef %i.ky, ptr noundef %i.kz, i32 noundef %i.lb, i32 noundef %i.lc, i32 poison, i32 noundef %i.ld) ; 0 uses
  store i32 %i.lc, ptr %i.la, align 4, !tbaa !68
  %i.lf = getelementptr inbounds nuw i8, ptr %.1308.le, i64 152 ; 8 uses
  %i.lg = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.lh = ptrtoint ptr %.1308.le to i64           ; 2 uses
  %i.li = sub i64 %i.lg, %i.lh                    ; 2 uses
  %i.lj = getelementptr inbounds i8, ptr %.1308.le, i64 %i.li ; 4 uses
  %i.lk = load <4 x float>, ptr %i.lj, align 1, !tbaa !24
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.lm = load <4 x float>, ptr %i.ll, align 1, !tbaa !24
end_hunk_1
