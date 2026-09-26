Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@stbi_load_gif_from_memory:bb.a
  %i.bp = load ptr, ptr %i.bo, align 8
  call void @free(ptr noundef %i.bp) #52
  call void @free(ptr noundef nonnull %i.bb) #52
  %i.bq = load ptr, ptr %2, align 8               ; 2 uses
  %.not11.i101.i = icmp eq ptr %i.bq, null
  br i1 %.not11.i101.i, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %.loopexit148.i
  call void @free(ptr noundef nonnull %i.bq) #52
  br label %.thread.i

.thread.i:                                        ; preds = %bb.n, %.loopexit148.i
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %.critedge.i

bb.o:                                             ; preds = %bb.m
  store ptr %i.bl, ptr %2, align 8
  %i.br = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bs = mul nsw i32 %i.ax, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %i.bb, i64 %i.bt
  %i.bv = sext i32 %i.ax to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull align 1 %i.at, i64 %i.bv, i1 false)
  %i.bw = shl nsw i32 %i.aw, 3
  %i.bx = sext i32 %i.bw to i64
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.bb, i64 %i.by
  %i.ca = load i32, ptr %i.o, align 8
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i
  store i32 %i.ca, ptr %i.cb, align 4
  %i.cc = call fastcc ptr @stbi__gif_load_next(ptr noundef nonnull %9, ptr noundef %8, ptr noundef %6, ptr noundef nonnull %i.bz) ; 3 uses
  %i.cd = icmp eq ptr %i.cc, %9
  %.not9293.i = icmp eq ptr %i.cc, null
  %.not92.i = or i1 %i.cd, %.not9293.i
  br i1 %.not92.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !33

bb.p:                                             ; preds = %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void @free(ptr noundef %i.cf) #52
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  call void @free(ptr noundef %i.ch) #52
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void @free(ptr noundef %i.cj) #52
  br i1 %.not91.i, label %stbi__load_gif_main_outofmem.exit105.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = load ptr, ptr %2, align 8               ; 2 uses
  %.not11.i104.i = icmp eq ptr %i.ck, null
  br i1 %.not11.i104.i, label %stbi__load_gif_main_outofmem.exit105.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.ck) #52
  br label %stbi__load_gif_main_outofmem.exit105.i

stbi__load_gif_main_outofmem.exit105.i:           ; preds = %bb.r, %bb.q, %bb.p
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %.critedge.i

bb.s:                                             ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void @free(ptr noundef %i.cm) #52
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void @free(ptr noundef %i.co) #52
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void @free(ptr noundef %i.cq) #52
  call void @free(ptr noundef nonnull %i.u) #52
  %i.cr = load ptr, ptr %2, align 8               ; 2 uses
  %.not11.i108.i = icmp eq ptr %i.cr, null
  br i1 %.not11.i108.i, label %stbi__load_gif_main_outofmem.exit109.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.cr) #52
  br label %stbi__load_gif_main_outofmem.exit109.i

stbi__load_gif_main_outofmem.exit109.i:           ; preds = %bb.t, %bb.s
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %.critedge.i

._crit_edge.i:                                    ; preds = %bb.o, %bb.j, %bb.i, %bb.d
  %.075.lcssa.i = phi i32 [ 0, %bb.d ], [ 1, %bb.i ], [ %i.ae, %bb.j ], [ %i.ay, %bb.o ] ; 2 uses
  %.072.lcssa.i = phi ptr [ null, %bb.d ], [ %i.u, %bb.i ], [ %i.ah, %bb.j ], [ %i.bb, %bb.o ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void @free(ptr noundef %i.ct) #52
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  call void @free(ptr noundef %i.cv) #52
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  call void @free(ptr noundef %i.cx) #52
  %i.cy = and i32 %7, -5
  %or.cond.not.i = icmp eq i32 %i.cy, 0
  br i1 %or.cond.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i
  %i.cz = load i32, ptr %8, align 8
  %i.da = mul nsw i32 %i.cz, %.075.lcssa.i
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = call fastcc ptr @stbi__convert_format(ptr noundef %.072.lcssa.i, i32 noundef 4, i32 noundef %7, i32 noundef %i.da, i32 noundef %i.dc)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i
  %.4.i = phi ptr [ %i.dd, %bb.u ], [ %.072.lcssa.i, %._crit_edge.i ]
  store i32 %.075.lcssa.i, ptr %5, align 4
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.v, %stbi__load_gif_main_outofmem.exit109.i, %stbi__load_gif_main_outofmem.exit105.i, %.thread.i, %stbi__load_gif_main_outofmem.exit.i
  %.6.i = phi ptr [ %.4.i, %bb.v ], [ null, %stbi__load_gif_main_outofmem.exit105.i ], [ null, %stbi__load_gif_main_outofmem.exit109.i ], [ null, %stbi__load_gif_main_outofmem.exit.i ], [ null, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #52
  br label %stbi__load_gif_main.exit

bb.w:                                             ; preds = %bb.a
  store ptr @.str.123, ptr @stbi__g_failure_reason, align 8
  br label %stbi__load_gif_main.exit

stbi__load_gif_main.exit:                         ; preds = %.critedge.i, %bb.w
  %.7.i = phi ptr [ %.6.i, %.critedge.i ], [ null, %bb.w ] ; 2 uses
  %i.de = load i32, ptr @stbi__vertically_flip_on_load_global, align 4
  %.not = icmp eq i32 %i.de, 0
  br i1 %.not, label %stbi__vertical_flip_slices.exit, label %bb.x

bb.x:                                             ; preds = %stbi__load_gif_main.exit
  %i.df = load i32, ptr %4, align 4               ; 3 uses
  %i.dg = load i32, ptr %5, align 4               ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.i, label %stbi__vertical_flip_slices.exit

.lr.ph.i:                                         ; preds = %bb.x
  %i.di = load i32, ptr %6, align 4               ; 2 uses
  %i.dj = load i32, ptr %3, align 4               ; 2 uses
  %i.dk = mul i32 %i.di, %i.df
  %i.dl = mul i32 %i.dk, %i.dj
  %i.dm = sext i32 %i.dj to i64
  %i.dn = sext i32 %i.di to i64
  %i.do = mul nsw i64 %i.dm, %i.dn                ; 4 uses
  %i.dp = ashr i32 %i.df, 1                       ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 1
  %.not32.i.i = icmp eq i64 %i.do, 0
  %or.cond.i.i = select i1 %i.dq, i1 true, i1 %.not32.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.dp to i64
  %i.dr = sext i32 %i.dl to i64
  br i1 %or.cond.i.i, label %stbi__vertical_flip_slices.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i, %stbi__vertical_flip.exit.loopexit.i
  %.014.i = phi ptr [ %i.ee, %stbi__vertical_flip.exit.loopexit.i ], [ %.7.i, %.lr.ph.i ] ; 3 uses
  %.01213.i = phi i32 [ %i.ef, %stbi__vertical_flip.exit.loopexit.i ], [ 0, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ds = mul i64 %indvars.iv.i.i, %i.do
  %i.dt = getelementptr inbounds nuw i8, ptr %.014.i, i64 %i.ds
  %i.du = trunc i64 %indvars.iv.i.i to i32
  %i.dv = xor i32 %i.du, -1
  %i.dw = add i32 %i.df, %i.dv
  %i.dx = sext i32 %i.dw to i64
  %i.dy = mul i64 %i.do, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %.014.i, i64 %i.dy
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i
  %.02935.i.i = phi i64 [ %i.do, %.lr.ph.i.i ], [ %i.ed, %bb.y ] ; 2 uses
  %.03034.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.ec, %bb.y ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.dt, %.lr.ph.i.i ], [ %i.eb, %bb.y ] ; 3 uses
  %i.ea = call i64 @llvm.umin.i64(i64 %.02935.i.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i, i64 %i.ea, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i, ptr align 1 %.03034.i.i, i64 %i.ea, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i, ptr nonnull align 16 %i.a, i64 %i.ea, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %.03133.i.i, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %.03034.i.i, i64 %i.ea
  %i.ed = sub nuw i64 %.02935.i.i, %i.ea          ; 2 uses
  %.not.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.y

._crit_edge.i.i:                                  ; preds = %bb.y
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %stbi__vertical_flip.exit.loopexit.i, label %.lr.ph.i.i

stbi__vertical_flip.exit.loopexit.i:              ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ee = getelementptr inbounds i8, ptr %.014.i, i64 %i.dr
  %i.ef = add nuw nsw i32 %.01213.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ef, %i.dg
  br i1 %exitcond.not.i, label %stbi__vertical_flip_slices.exit, label %.lr.ph.preheader.i.i

stbi__vertical_flip_slices.exit:                  ; preds = %stbi__vertical_flip.exit.loopexit.i, %.lr.ph.i, %bb.x, %stbi__load_gif_main.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #52
  ret ptr %.7.i
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @stbi_loadf_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #52
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8
  %i.j = call fastcc ptr @stbi__loadf_main(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #52
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @stbi__loadf_main(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc ptr @stbi__load_and_postprocess_8bit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4                ; 3 uses
  %i.c = load i32, ptr %2, align 4                ; 4 uses
  %.not14 = icmp eq i32 %4, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %3, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.e = phi i32 [ %i.d, %bb.c ], [ %4, %bb.b ]   ; 9 uses
  %i.f = or i32 %i.c, %i.b
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.e, label %stbi__malloc_mad4.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq i32 %i.c, 0
  br i1 %i.g, label %stbi__mul2sizes_valid.exit.thread24.i.i.i, label %stbi__mul2sizes_valid.exit.i.i.i

stbi__mul2sizes_valid.exit.i.i.i:                 ; preds = %bb.e
  %i.h = udiv i32 2147483647, %i.c
  %.not34.i.i.i = icmp sgt i32 %i.b, %i.h
  br i1 %.not34.i.i.i, label %stbi__malloc_mad4.exit.thread.i, label %stbi__mul2sizes_valid.exit.thread24.i.i.i

stbi__mul2sizes_valid.exit.thread24.i.i.i:        ; preds = %stbi__mul2sizes_valid.exit.i.i.i, %bb.e
  %i.i = mul nuw nsw i32 %i.c, %i.b               ; 9 uses
  %i.j = or i32 %i.e, %i.i
  %or.cond.not.i16.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i16.i.i.i, label %bb.f, label %stbi__malloc_mad4.exit.thread.i

bb.f:                                             ; preds = %stbi__mul2sizes_valid.exit.thread24.i.i.i
  %i.k = icmp eq i32 %i.e, 0
  br i1 %i.k, label %stbi__malloc_mad4.exit.i, label %stbi__mul2sizes_valid.exit18.i.i.i

stbi__mul2sizes_valid.exit18.i.i.i:               ; preds = %bb.f
  %i.l = udiv i32 2147483647, %i.e
  %.not.i.i.i = icmp sle i32 %i.i, %i.l
  %i.m = mul nuw nsw i32 %i.e, %i.i
  %or.cond.not.i.i = icmp ult i32 %i.m, 536870912
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %or.cond.not.i.i, i1 false
  br i1 %or.cond.i.i, label %stbi__malloc_mad4.exit.i, label %stbi__malloc_mad4.exit.thread.i

stbi__malloc_mad4.exit.i:                         ; preds = %stbi__mul2sizes_valid.exit18.i.i.i, %bb.f
  %i.n = shl i32 %i.i, 2
  %i.o = mul i32 %i.n, %i.e
  %i.p = sext i32 %i.o to i64
  %i.q = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.p) #53 ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %stbi__malloc_mad4.exit.thread.i, label %bb.g

stbi__malloc_mad4.exit.thread.i:                  ; preds = %stbi__malloc_mad4.exit.i, %stbi__mul2sizes_valid.exit18.i.i.i, %stbi__mul2sizes_valid.exit.thread24.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.a) #52
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %stbi__ldr_to_hdr.exit

bb.g:                                             ; preds = %stbi__malloc_mad4.exit.i
  %i.s = and i32 %i.e, 1
  %.not.i = icmp eq i32 %i.s, 0                   ; 2 uses
  %i.t = sext i1 %.not.i to i32
  %.0.i = add i32 %i.e, %i.t                      ; 5 uses
  %i.u = icmp sgt i32 %i.i, 0
  br i1 %i.u, label %.preheader48.lr.ph.i, label %.loopexit.i

.preheader48.lr.ph.i:                             ; preds = %bb.g
  %i.v = icmp sgt i32 %.0.i, 0
  %i.w = load float, ptr @stbi__l2h_gamma, align 4
  %i.x = fpext float %i.w to double               ; 3 uses
  %i.y = load float, ptr @stbi__l2h_scale, align 4
  %i.z = fpext float %i.y to double               ; 3 uses
  br i1 %i.v, label %.preheader48.preheader.i, label %._crit_edge51.split.i

.preheader48.preheader.i:                         ; preds = %.preheader48.lr.ph.i
  %i.aa = sext i32 %i.e to i64
  %wide.trip.count57.i = zext nneg i32 %i.i to i64
  %wide.trip.count.i = zext nneg i32 %.0.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ab = icmp eq i32 %.0.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod21 = trunc i32 %.0.i to i1
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %._crit_edge.i, %.preheader48.preheader.i
  %indvars.iv54.i = phi i64 [ 0, %.preheader48.preheader.i ], [ %indvars.iv.next55.i, %._crit_edge.i ] ; 2 uses
  %i.ac = mul nuw nsw i64 %indvars.iv54.i, %i.aa  ; 3 uses
  br i1 %i.ab, label %.epil.preheader, label %.preheader48.i.new

.preheader48.i.new:                               ; preds = %.preheader48.i, %.preheader48.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader48.i.new ], [ 0, %.preheader48.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader48.i.new ], [ 0, %.preheader48.i ]
  %i.ad = add nsw i64 %indvars.iv.i, %i.ac        ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.a, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = uitofp i8 %i.af to float
  %i.ah = fdiv float %i.ag, 2.550000e+02
  %i.ai = fpext float %i.ah to double
  %i.aj = tail call double @pow(double noundef %i.ai, double noundef %i.x) #52
  %i.ak = fmul double %i.aj, %i.z
  %i.al = fptrunc double %i.ak to float
  %i.am = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ad
  store float %i.al, ptr %i.am, align 4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.an = add nsw i64 %indvars.iv.next.i, %i.ac   ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.a, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = uitofp i8 %i.ap to float
  %i.ar = fdiv float %i.aq, 2.550000e+02
  %i.as = fpext float %i.ar to double
  %i.at = tail call double @pow(double noundef %i.as, double noundef %i.x) #52
  %i.au = fmul double %i.at, %i.z
  %i.av = fptrunc double %i.au to float
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.an
  store float %i.av, ptr %i.aw, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader48.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader48.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader48.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader48.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.ax = add nsw i64 %indvars.iv.i.epil.init, %i.ac ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = uitofp i8 %i.az to float
  %i.bb = fdiv float %i.ba, 2.550000e+02
  %i.bc = fpext float %i.bb to double
  %i.bd = tail call double @pow(double noundef %i.bc, double noundef %i.x) #52
  %i.be = fmul double %i.bd, %i.z
  %i.bf = fptrunc double %i.be to float
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ax
  store float %i.bf, ptr %i.bg, align 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, %wide.trip.count57.i
  br i1 %exitcond58.not.i, label %._crit_edge51.split.i, label %.preheader48.i

._crit_edge51.split.i:                            ; preds = %._crit_edge.i, %.preheader48.lr.ph.i
  br i1 %.not.i, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge51.split.i
  %i.bh = sext i32 %i.e to i64                    ; 3 uses
  %i.bi = sext i32 %.0.i to i64                   ; 3 uses
  %wide.trip.count62.i = zext nneg i32 %i.i to i64 ; 2 uses
  %xtraiter22 = and i64 %wide.trip.count62.i, 1
  %i.bj = icmp eq i32 %i.i, 1
  br i1 %i.bj, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter25 = and i64 %wide.trip.count62.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next60.i.1, %.lr.ph.i ] ; 3 uses
  %niter26 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter26.next.1, %.lr.ph.i ]
  %i.bk = mul nuw nsw i64 %indvars.iv59.i, %i.bh
  %i.bl = add nsw i64 %i.bk, %i.bi                ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.a, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = uitofp i8 %i.bn to float
  %i.bp = fdiv float %i.bo, 2.550000e+02
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bl
  store float %i.bp, ptr %i.bq, align 4
  %indvars.iv.next60.i = or disjoint i64 %indvars.iv59.i, 1
  %i.br = mul nuw nsw i64 %indvars.iv.next60.i, %i.bh
  %i.bs = add nsw i64 %i.br, %i.bi                ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.a, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = uitofp i8 %i.bu to float
  %i.bw = fdiv float %i.bv, 2.550000e+02
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bs
  store float %i.bw, ptr %i.bx, align 4
  %indvars.iv.next60.i.1 = add nuw nsw i64 %indvars.iv59.i, 2 ; 2 uses
  %niter26.next.1 = add i64 %niter26, 2           ; 2 uses
  %niter26.ncmp.1 = icmp eq i64 %niter26.next.1, %unroll_iter25
  br i1 %niter26.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !34

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod23.not = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next60.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod24 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.by = mul nuw nsw i64 %indvars.iv59.i.epil.init, %i.bh
  %i.bz = add nsw i64 %i.by, %i.bi                ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.a, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = uitofp i8 %i.cb to float
  %i.cd = fdiv float %i.cc, 2.550000e+02
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bz
  store float %i.cd, ptr %i.ce, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %._crit_edge51.split.i, %bb.g
  tail call void @free(ptr noundef nonnull %i.a) #52
  br label %stbi__ldr_to_hdr.exit

bb.h:                                             ; preds = %bb.a
  store ptr @.str.83, ptr @stbi__g_failure_reason, align 8
  br label %stbi__ldr_to_hdr.exit

stbi__ldr_to_hdr.exit:                            ; preds = %.loopexit.i, %stbi__malloc_mad4.exit.thread.i, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ null, %stbi__malloc_mad4.exit.thread.i ], [ %i.q, %.loopexit.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @stbi_loadf_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #52
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = call i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128) #52, !inline_history !1 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8
  br label %stbi__start_callbacks.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %stbi__start_callbacks.exit

stbi__start_callbacks.exit:                       ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8
  %i.y = call fastcc ptr @stbi__loadf_main(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #52
  ret ptr %i.y
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @stbi_loadf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @.str.1, ptr @stbi__g_failure_reason, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #52
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @stbi__stdio_callbacks, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.g, ptr %i.i, align 8
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = call i32 %i.j(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, i32 noundef 128) #52, !inline_history !35 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8
  %i.m = load ptr, ptr %i.h, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = load i32, ptr %i.f, align 8
  %i.s = add nsw i32 %i.r, %i.q
  store i32 %i.s, ptr %i.f, align 8
  %i.t = icmp eq i32 %i.k, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.g, align 8
  br label %stbi_loadf_from_file.exit

bb.e:                                             ; preds = %bb.c
  %i.v = sext i32 %i.k to i64
  %i.w = getelementptr inbounds i8, ptr %i.g, i64 %i.v
  br label %stbi_loadf_from_file.exit

stbi_loadf_from_file.exit:                        ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  store ptr %i.g, ptr %i.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i.i, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8
  %i.z = call fastcc noalias noundef ptr @stbi__loadf_main(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  %i.aa = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %stbi_loadf_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.z, %stbi_loadf_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @stbi_loadf_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #52
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @stbi__stdio_callbacks, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = call i32 %i.i(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 128) #52, !inline_history !0 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.f, align 8
  br label %stbi__start_file.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %stbi__start_file.exit

stbi__start_file.exit:                            ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i, ptr %i.x, align 8
  %i.y = call fastcc ptr @stbi__loadf_main(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  ret ptr %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @stbi_is_hdr_from_memory(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define hidden noundef i32 @stbi_is_hdr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @stbi_is_hdr_from_file(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #7 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @stbi_is_hdr_from_callbacks(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @stbi_ldr_to_hdr_gamma(float noundef %0) local_unnamed_addr #3 {
bb.a:
  store float %0, ptr @stbi__l2h_gamma, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @stbi_ldr_to_hdr_scale(float noundef %0) local_unnamed_addr #3 {
bb.a:
  store float %0, ptr @stbi__l2h_scale, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @stbi_hdr_to_ldr_gamma(float noundef %0) local_unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @stbi_hdr_to_ldr_scale(float noundef %0) local_unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden ptr @stbi_zlib_decode_malloc_guesssize(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #9 {
bb.a:
  %4 = alloca %struct.stbi__zbuf, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #52
  %i.a = sext i32 %2 to i64
  %i.b = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.a) #53 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %4, align 8
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %i.g = call fastcc i32 @stbi__do_zlib(ptr noundef %4, ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef 1, i32 noundef 1)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not11 = icmp eq ptr %3, null
  br i1 %.not11, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  store i32 %i.o, ptr %3, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  call void @free(ptr noundef %i.q) #52
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %._crit_edge, %bb.a, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ null, %bb.a ], [ %.pre, %._crit_edge ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #52
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__do_zlib(ptr nofree noundef nonnull initializes((32, 60)) %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4) unnamed_addr #9 {
bb.a:
  %5 = alloca %struct.stbi__zhuffman, align 4     ; 5 uses
  %i.a = alloca [455 x i8], align 16              ; 8 uses
  %i.b = alloca [19 x i8], align 16               ; 6 uses
  %i.c = alloca [4 x i8], align 2                 ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i32 %3, ptr %i.i, align 8
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %stbi__parse_zlib_header.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %0, align 8         ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 8
  %.val2.i.i.i = load ptr, ptr %i.j, align 8      ; 3 uses
  %.not3.i.i.i = icmp ult ptr %.val.i.i.i, %.val2.i.i.i
  br i1 %.not3.i.i.i, label %bb.c, label %stbi__zget8.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 1 ; 2 uses
  store ptr %i.k, ptr %0, align 8
  %i.l = load i8, ptr %.val.i.i.i, align 1
  %i.m = zext i8 %i.l to i32
  br label %stbi__zget8.exit.i.i
end_hunk_0
begin_hunk_1_@rl_load_dds_from_memory:bb.a
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next168, %i.bk
  br i1 %exitcond.not, label %._crit_edge159, label %.lr.ph158, !llvm.loop !47

bb.w:                                             ; preds = %bb.k
  %i.bx = icmp eq i32 %i.z, 64
  %i.by = icmp eq i32 %i.w, 24
  %or.cond = and i1 %i.by, %i.bx
  br i1 %or.cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bz = mul nsw i32 %i.s, 3
  %i.ca = load i32, ptr %i.t, align 4
  %i.cb = icmp ugt i32 %i.ca, 1
  %i.cc = shl i32 %i.s, 2
  %spec.select = select i1 %i.cb, i32 %i.cc, i32 %i.bz
  %i.cd = sext i32 %spec.select to i64            ; 2 uses
  %i.ce = tail call noalias ptr @malloc(i64 noundef %i.cd) #53 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr nonnull align 4 %i.h, i64 %i.cd, i1 false)
  store i32 4, ptr %4, align 4
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.cf = icmp eq i32 %i.z, 65
  br i1 %i.cf, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.cg = icmp eq i32 %i.w, 32
  br i1 %i.cg, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.ch = shl nsw i32 %i.s, 2                     ; 3 uses
  %i.ci = load i32, ptr %i.t, align 4
  %i.cj = icmp ugt i32 %i.ci, 1
  br i1 %i.cj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ck = sdiv i32 %i.ch, 3
  %i.cl = add nsw i32 %i.ck, %i.ch
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0130 = phi i32 [ %i.cl, %bb.ab ], [ %i.ch, %bb.aa ] ; 3 uses
  %i.cm = sext i32 %.0130 to i64                  ; 3 uses
  %i.cn = tail call noalias ptr @malloc(i64 noundef %i.cm) #53 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr nonnull align 4 %i.h, i64 %i.cm, i1 false)
  %i.co = icmp sgt i32 %.0130, 0
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ac
  %i.cp = add nsw i64 %i.cm, -1
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %xtraiter = and i64 %i.cr, 3                    ; 3 uses
  %i.cs = icmp ult i32 %.0130, 13
  br i1 %i.cs, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.cr, 9223372036854775804
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod212 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod212)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv.epil ; 3 uses
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 2 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1
  store i8 %i.cw, ptr %i.ct, align 1
  store i8 %i.cu, ptr %i.cv, align 1
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !48

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.ac
  store i32 7, ptr %4, align 4
  br label %.thread

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 2 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1
  store i8 %i.da, ptr %i.cx, align 1
  store i8 %i.cy, ptr %i.cz, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 6 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1
  store i8 %i.df, ptr %i.dc, align 1
  store i8 %i.dd, ptr %i.de, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 10 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1
  store i8 %i.dk, ptr %i.dh, align 1
  store i8 %i.di, ptr %i.dj, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 12 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 14 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1
  store i8 %i.dp, ptr %i.dm, align 1
  store i8 %i.dn, ptr %i.do, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 16 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.ad:                                            ; preds = %bb.y
  %i.dq = and i32 %i.z, -2
  %switch = icmp eq i32 %i.dq, 4
  br i1 %switch, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4
  %.not152 = icmp eq i32 %i.ds, 0
  br i1 %.not152, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = load i32, ptr %i.t, align 4
  %i.du = icmp ugt i32 %i.dt, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dw = load i32, ptr %i.dv, align 4            ; 3 uses
  br i1 %i.du, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dx = udiv i32 %i.dw, 3
  %i.dy = add i32 %i.dx, %i.dw
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.0 = phi i32 [ %i.dy, %bb.ag ], [ %i.dw, %bb.af ]
  %i.dz = sext i32 %.0 to i64                     ; 2 uses
  %i.ea = tail call noalias ptr @malloc(i64 noundef %i.dz) #53 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ea, ptr nonnull align 4 %i.h, i64 %i.dz, i1 false)
  %i.eb = load i32, ptr %i.dr, align 4
  switch i32 %i.eb, label %.thread [
    i32 827611204, label %bb.ai
    i32 861165636, label %bb.al
    i32 894720068, label %bb.am
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ec = load i32, ptr %i.y, align 4
  %i.ed = icmp eq i32 %i.ec, 4
  br i1 %i.ed, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 14, ptr %4, align 4
  br label %.thread

bb.ak:                                            ; preds = %bb.ai
  store i32 15, ptr %4, align 4
  br label %.thread

bb.al:                                            ; preds = %bb.ah
  store i32 16, ptr %4, align 4
  br label %.thread

bb.am:                                            ; preds = %bb.ah
  store i32 17, ptr %4, align 4
  br label %.thread

.thread:                                          ; preds = %bb.z, %bb.ad, %bb.f, %bb.al, %bb.am, %bb.ak, %bb.aj, %bb.ah, %bb.p, %bb.l, %bb.x, %bb.ae, %._crit_edge, %bb.o, %._crit_edge163, %._crit_edge159, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.f ], [ %i.ag, %bb.o ], [ %i.ap, %._crit_edge163 ], [ %i.bj, %._crit_edge159 ], [ null, %bb.p ], [ null, %bb.l ], [ %i.ce, %bb.x ], [ %i.cn, %._crit_edge ], [ null, %bb.ad ], [ null, %bb.ae ], [ %i.ea, %bb.ah ], [ %i.ea, %bb.aj ], [ %i.ea, %bb.ak ], [ %i.ea, %bb.am ], [ %i.ea, %bb.al ], [ null, %bb.z ]
  ret ptr %.2
}

declare void @TraceLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @get_gl_texture_formats(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @qoi_encode(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #12 {
bb.a:
  %3 = alloca [64 x %union.qoi_rgba_t], align 16  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #52
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %1, null
  %or.cond3 = or i1 %i.c, %or.cond
  br i1 %or.cond3, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4                ; 3 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4               ; 2 uses
  %i.k = add i8 %i.j, -5
  %or.cond186 = icmp ult i8 %i.k, -2
  br i1 %or.cond186, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp ugt i8 %i.m, 1
  br i1 %i.n, label %bb.z, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = udiv i32 400000000, %i.d
  %.not = icmp ult i32 %i.g, %i.o
  br i1 %.not, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.p = mul i32 %i.g, %i.d
  %narrow = add nuw nsw i8 %i.j, 1
  %i.q = zext nneg i8 %narrow to i32
  %i.r = mul i32 %i.p, %i.q
  %i.s = add i32 %i.r, 22
  %i.t = sext i32 %i.s to i64
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #53 ; 21 uses
  %.not185 = icmp eq ptr %i.u, null
  br i1 %.not185, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  store <4 x i8> <i8 113, i8 111, i8 105, i8 102>, ptr %i.u, align 1
  %i.v = load i32, ptr %1, align 4                ; 5 uses
  %i.w = lshr i32 %i.v, 24
  %i.x = trunc nuw i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i8 %i.x, ptr %i.y, align 1
  %i.z = lshr i32 %i.v, 16
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = lshr i32 %i.v, 8
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = trunc i32 %i.v to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 7
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = load i32, ptr %i.f, align 4             ; 5 uses
  %i.ai = lshr i32 %i.ah, 24
  %i.aj = trunc nuw i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = lshr i32 %i.ah, 16
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = lshr i32 %i.ah, 8
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = trunc i32 %i.ah to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 11
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = load i8, ptr %i.i, align 4              ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i8 %i.at, ptr %i.au, align 1
  %i.av = load i8, ptr %i.l, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 13
  store i8 %i.av, ptr %i.aw, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false)
  %i.ax = mul i32 %i.ah, %i.v
  %i.ay = zext i8 %i.at to i32                    ; 2 uses
  %i.az = mul i32 %i.ax, %i.ay                    ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.h
  %i.bb = sub nsw i32 %i.az, %i.ay
  %i.bc = icmp eq i8 %i.at, 4
  %i.bd = zext i8 %i.at to i64
  %i.be = zext i32 %i.bb to i64
  %i.bf = zext nneg i32 %i.az to i64
  br label %bb.i

.preheader.loopexit:                              ; preds = %bb.y
  %i.bg = sext i32 %.2212 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.h
  %.0210.lcssa = phi i64 [ 14, %bb.h ], [ %i.bg, %.preheader.loopexit ] ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %.0210.lcssa
  store i64 72057594037927936, ptr %scevgep, align 1
  %i.bh = trunc nsw i64 %.0210.lcssa to i32
  %i.bi = add i32 %i.bh, 8
  store i32 %i.bi, ptr %2, align 4
  br label %bb.z

bb.i:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 3 uses
  %.sroa.0.0219 = phi i8 [ 0, %.lr.ph ], [ %i.bk, %bb.y ] ; 2 uses
  %.sroa.7.0218 = phi i8 [ 0, %.lr.ph ], [ %i.bm, %bb.y ] ; 2 uses
  %.sroa.9.0217 = phi i8 [ 0, %.lr.ph ], [ %i.bo, %bb.y ] ; 2 uses
  %.sroa.11.0216 = phi i8 [ -1, %.lr.ph ], [ %.sroa.26.1, %bb.y ] ; 3 uses
  %.0170214 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.y ] ; 5 uses
  %.0210213 = phi i32 [ 14, %.lr.ph ], [ %.2212, %bb.y ] ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 4 uses
  %i.bk = load i8, ptr %i.bj, align 1             ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bm = load i8, ptr %i.bl, align 1             ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bo = load i8, ptr %i.bn, align 1             ; 6 uses
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  %i.bq = load i8, ptr %i.bp, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.26.1 = phi i8 [ %i.bq, %bb.j ], [ %.sroa.11.0216, %bb.i ] ; 5 uses
  %.sroa.26.0.insert.ext = zext i8 %.sroa.26.1 to i32 ; 2 uses
  %.sroa.26.0.insert.shift = shl nuw i32 %.sroa.26.0.insert.ext, 24
  %.sroa.19.0.insert.ext = zext i8 %i.bo to i32   ; 2 uses
  %.sroa.19.0.insert.shift = shl nuw nsw i32 %.sroa.19.0.insert.ext, 16
  %.sroa.19.0.insert.insert = or disjoint i32 %.sroa.26.0.insert.shift, %.sroa.19.0.insert.shift
  %.sroa.12.0.insert.ext = zext i8 %i.bm to i32   ; 2 uses
  %.sroa.12.0.insert.shift = shl nuw nsw i32 %.sroa.12.0.insert.ext, 8
  %.sroa.12.0.insert.insert = or disjoint i32 %.sroa.19.0.insert.insert, %.sroa.12.0.insert.shift
  %.sroa.066.0.insert.ext = zext i8 %i.bk to i32  ; 2 uses
  %.sroa.066.0.insert.insert = or disjoint i32 %.sroa.12.0.insert.insert, %.sroa.066.0.insert.ext ; 2 uses
  %.sroa.11.0.insert.ext = zext i8 %.sroa.11.0216 to i32
  %.sroa.11.0.insert.shift = shl nuw i32 %.sroa.11.0.insert.ext, 24
  %.sroa.9.0.insert.ext = zext i8 %.sroa.9.0217 to i32
  %.sroa.9.0.insert.shift = shl nuw nsw i32 %.sroa.9.0.insert.ext, 16
  %.sroa.9.0.insert.insert = or disjoint i32 %.sroa.9.0.insert.shift, %.sroa.11.0.insert.shift
  %.sroa.7.0.insert.ext = zext i8 %.sroa.7.0218 to i32
  %.sroa.7.0.insert.shift = shl nuw nsw i32 %.sroa.7.0.insert.ext, 8
  %.sroa.7.0.insert.insert = or disjoint i32 %.sroa.9.0.insert.insert, %.sroa.7.0.insert.shift
  %.sroa.0.0.insert.ext = zext i8 %.sroa.0.0219 to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.insert, %.sroa.0.0.insert.ext
  %i.br = icmp eq i32 %.sroa.066.0.insert.insert, %.sroa.0.0.insert.insert
  br i1 %i.br, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bs = add nsw i32 %.0170214, 1                ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 62
  %i.bu = icmp eq i64 %indvars.iv, %i.be
  %or.cond187 = select i1 %i.bt, i1 true, i1 %i.bu
  br i1 %or.cond187, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.bv = trunc i32 %.0170214 to i8
  %i.bw = or i8 %i.bv, -64
  %i.bx = add nsw i32 %.0210213, 1
  %i.by = sext i32 %.0210213 to i64
  %i.bz = getelementptr inbounds i8, ptr %i.u, i64 %i.by
  store i8 %i.bw, ptr %i.bz, align 1
  br label %bb.y

bb.n:                                             ; preds = %bb.k
  %i.ca = icmp sgt i32 %.0170214, 0
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cb = trunc i32 %.0170214 to i8
  %i.cc = add i8 %i.cb, 63
  %i.cd = or i8 %i.cc, -64
  %i.ce = add nsw i32 %.0210213, 1
  %i.cf = sext i32 %.0210213 to i64
  %i.cg = getelementptr inbounds i8, ptr %i.u, i64 %i.cf
  store i8 %i.cd, ptr %i.cg, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1211 = phi i32 [ %i.ce, %bb.o ], [ %.0210213, %bb.n ] ; 10 uses
  %.1 = phi i32 [ 0, %bb.o ], [ %.0170214, %bb.n ] ; 5 uses
  %i.ch = mul nuw nsw i32 %.sroa.066.0.insert.ext, 3
  %i.ci = mul nuw nsw i32 %.sroa.12.0.insert.ext, 5
  %i.cj = add nuw nsw i32 %i.ci, %i.ch
  %i.ck = mul nuw nsw i32 %.sroa.19.0.insert.ext, 7
  %i.cl = add nuw nsw i32 %i.cj, %i.ck
  %i.cm = mul nuw nsw i32 %.sroa.26.0.insert.ext, 11
  %i.cn = add nuw nsw i32 %i.cl, %i.cm
  %i.co = and i32 %i.cn, 63                       ; 2 uses
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cp ; 5 uses
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp eq i32 %i.cr, %.sroa.066.0.insert.insert
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ct = trunc nuw nsw i32 %i.co to i8
  %i.cu = add nsw i32 %.1211, 1
  %i.cv = sext i32 %.1211 to i64
  %i.cw = getelementptr inbounds i8, ptr %i.u, i64 %i.cv
  store i8 %i.ct, ptr %i.cw, align 1
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  store i8 %i.bk, ptr %i.cq, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  store i8 %i.bm, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  store i8 %i.bo, ptr %.sroa.19.0..sroa_idx, align 2
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 3
  store i8 %.sroa.26.1, ptr %.sroa.26.0..sroa_idx, align 1
  %i.cx = icmp eq i8 %.sroa.26.1, %.sroa.11.0216
  br i1 %i.cx, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.cy = sub i8 %i.bk, %.sroa.0.0219             ; 3 uses
  %i.cz = sub i8 %i.bm, %.sroa.7.0218             ; 5 uses
  %i.da = sub i8 %i.bo, %.sroa.9.0217             ; 2 uses
  %i.db = add i8 %i.cy, 2
  %or.cond6 = icmp ult i8 %i.db, 4
  %i.dc = add i8 %i.cz, 2
  %i.dd = icmp ult i8 %i.dc, 4
  %or.cond12 = select i1 %or.cond6, i1 %i.dd, i1 false
  %i.de = add i8 %i.da, 2                         ; 2 uses
  %i.df = icmp ult i8 %i.de, 4
  %or.cond18 = select i1 %or.cond12, i1 %i.df, i1 false
  br i1 %or.cond18, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dg = shl nsw i8 %i.cy, 4
  %i.dh = add nsw i8 %i.dg, 32
  %i.di = shl nsw i8 %i.cz, 2
  %i.dj = add nsw i8 %i.di, 8
  %i.dk = or i8 %i.dh, %i.dj
  %i.dl = or disjoint i8 %i.dk, %i.de
  %i.dm = or i8 %i.dl, 64
  %i.dn = add nsw i32 %.1211, 1
  %i.do = sext i32 %.1211 to i64
  %i.dp = getelementptr inbounds i8, ptr %i.u, i64 %i.do
  store i8 %i.dm, ptr %i.dp, align 1
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.dq = sub i8 %i.da, %i.cz
  %i.dr = sub i8 %i.cy, %i.cz                     ; 2 uses
  %i.ds = add i8 %i.dr, 8
  %or.cond21 = icmp ult i8 %i.ds, 16
  %i.dt = add i8 %i.cz, 32                        ; 2 uses
  %i.du = icmp ult i8 %i.dt, 64
  %or.cond27 = select i1 %or.cond21, i1 %i.du, i1 false
  %i.dv = add i8 %i.dq, 8                         ; 2 uses
  %i.dw = icmp ult i8 %i.dv, 16
  %or.cond33 = select i1 %or.cond27, i1 %i.dw, i1 false
  br i1 %or.cond33, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dx = or disjoint i8 %i.dt, -128
  %i.dy = sext i32 %.1211 to i64
  %i.dz = getelementptr i8, ptr %i.u, i64 %i.dy   ; 2 uses
  store i8 %i.dx, ptr %i.dz, align 1
  %i.ea = shl nsw i8 %i.dr, 4
  %i.eb = or disjoint i8 %i.dv, %i.ea
  %i.ec = xor i8 %i.eb, -128
  %i.ed = add nsw i32 %.1211, 2
  %i.ee = getelementptr i8, ptr %i.dz, i64 1
  store i8 %i.ec, ptr %i.ee, align 1
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.ef = sext i32 %.1211 to i64
  %i.eg = getelementptr i8, ptr %i.u, i64 %i.ef   ; 4 uses
  store i8 -2, ptr %i.eg, align 1
  %i.eh = getelementptr i8, ptr %i.eg, i64 1
  store i8 %i.bk, ptr %i.eh, align 1
  %i.ei = getelementptr i8, ptr %i.eg, i64 2
  store i8 %i.bm, ptr %i.ei, align 1
  %i.ej = add nsw i32 %.1211, 4
  %i.ek = getelementptr i8, ptr %i.eg, i64 3
  store i8 %i.bo, ptr %i.ek, align 1
  br label %bb.y

bb.x:                                             ; preds = %bb.r
  %i.el = sext i32 %.1211 to i64
  %i.em = getelementptr i8, ptr %i.u, i64 %i.el   ; 5 uses
  store i8 -1, ptr %i.em, align 1
  %i.en = getelementptr i8, ptr %i.em, i64 1
  store i8 %i.bk, ptr %i.en, align 1
  %i.eo = getelementptr i8, ptr %i.em, i64 2
  store i8 %i.bm, ptr %i.eo, align 1
  %i.ep = getelementptr i8, ptr %i.em, i64 3
  store i8 %i.bo, ptr %i.ep, align 1
  %i.eq = add nsw i32 %.1211, 5
  %i.er = getelementptr i8, ptr %i.em, i64 4
  store i8 %.sroa.26.1, ptr %i.er, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %bb.x, %bb.v, %bb.w, %bb.t, %bb.l, %bb.m
  %.2212 = phi i32 [ %i.bx, %bb.m ], [ %.0210213, %bb.l ], [ %i.cu, %bb.q ], [ %i.dn, %bb.t ], [ %i.ed, %bb.v ], [ %i.ej, %bb.w ], [ %i.eq, %bb.x ] ; 2 uses
  %.2 = phi i32 [ 0, %bb.m ], [ %i.bs, %bb.l ], [ %.1, %bb.q ], [ %.1, %bb.t ], [ %.1, %bb.v ], [ %.1, %bb.w ], [ %.1, %bb.x ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.bd ; 2 uses
  %i.es = icmp samesign ult i64 %indvars.iv.next, %i.bf
  br i1 %i.es, label %bb.i, label %.preheader.loopexit

bb.z:                                             ; preds = %bb.g, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %.preheader
  %.0172 = phi ptr [ null, %bb.a ], [ %i.u, %.preheader ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #52
  ret ptr %.0172
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @qoi_decode(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #12 {
bb.a:
  %4 = alloca [64 x %union.qoi_rgba_t], align 16  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #52
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %3, 3
  %i.d = and i32 %3, -5
  %i.e = icmp ne i32 %i.d, 0
  %or.cond5 = and i1 %i.c, %i.e
  %i.f = icmp slt i32 %1, 22
  %or.cond7 = or i1 %i.f, %or.cond5
  br i1 %or.cond7, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %0, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw i32 %i.h, 24
  %i.s = shl nuw nsw i32 %i.k, 16
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = shl nuw nsw i32 %i.n, 8
  %i.v = or disjoint i32 %i.t, %i.u
  %i.w = or disjoint i32 %i.v, %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 1              ; 2 uses
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)  ; 3 uses
  store i32 %i.z, ptr %2, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 1            ; 2 uses
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.ac, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i8, ptr %i.ae, align 1             ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.af, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = icmp eq i32 %i.y, 0
  %i.al = icmp eq i32 %i.ab, 0
  %or.cond124 = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond124, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = zext nneg i8 %i.af to i32
  %i.an = add i8 %i.af, -5
  %or.cond116 = icmp ult i8 %i.an, -2
  br i1 %or.cond116, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp ugt i8 %i.ai, 1
  %i.ap = icmp ne i32 %i.w, 1903126886
  %or.cond9 = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond9, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = udiv i32 400000000, %i.z
  %.not = icmp ult i32 %i.ac, %i.aq
  br i1 %.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ar = icmp eq i32 %3, 0
  %spec.select = select i1 %i.ar, i32 %i.am, i32 %3 ; 3 uses
  %i.as = mul i32 %i.ac, %i.z
  %i.at = mul i32 %i.as, %spec.select             ; 3 uses
  %i.au = sext i32 %i.at to i64
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.au) #53 ; 4 uses
  %.not115 = icmp eq ptr %i.av, null
  br i1 %.not115, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false)
  %i.aw = add nsw i32 %1, -8
  %i.ax = icmp sgt i32 %i.at, 0
  br i1 %i.ax, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ay = icmp eq i32 %spec.select, 4
  %i.az = zext nneg i32 %spec.select to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %.0102131 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.w ] ; 2 uses
  %.sroa.0.0129 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0.2, %bb.w ] ; 5 uses
  %.sroa.13.0128 = phi i8 [ 0, %.lr.ph ], [ %.sroa.13.2, %bb.w ] ; 5 uses
  %.sroa.22.0127 = phi i8 [ 0, %.lr.ph ], [ %.sroa.22.2, %bb.w ] ; 5 uses
  %.sroa.31.0126 = phi i8 [ -1, %.lr.ph ], [ %.sroa.31.2, %bb.w ] ; 6 uses
  %.0121125 = phi i32 [ 14, %.lr.ph ], [ %.2123, %bb.w ] ; 8 uses
  %i.ba = icmp sgt i32 %.0102131, 0
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = add nsw i32 %.0102131, -1
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.bc = icmp slt i32 %.0121125, %i.aw
  br i1 %i.bc, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.bd = add nsw i32 %.0121125, 1                ; 6 uses
  %i.be = sext i32 %.0121125 to i64
  %i.bf = getelementptr i8, ptr %0, i64 %i.be     ; 6 uses
  %i.bg = load i8, ptr %i.bf, align 1             ; 6 uses
  %i.bh = zext i8 %i.bg to i32                    ; 3 uses
  switch i8 %i.bg, label %bb.o [
    i8 -2, label %bb.m
    i8 -1, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = getelementptr i8, ptr %i.bf, i64 2
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = add nsw i32 %.0121125, 4
  %i.bo = getelementptr i8, ptr %i.bf, i64 3
  %i.bp = load i8, ptr %i.bo, align 1
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.bq = sext i32 %i.bd to i64
  %i.br = getelementptr inbounds i8, ptr %0, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = getelementptr i8, ptr %i.bf, i64 2
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr i8, ptr %i.bf, i64 3
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = add nsw i32 %.0121125, 5
  %i.by = getelementptr i8, ptr %i.bf, i64 4
  %i.bz = load i8, ptr %i.by, align 1
  br label %bb.t

bb.o:                                             ; preds = %bb.l
  %i.ca = lshr i32 %i.bh, 6
  switch i32 %i.ca, label %default.unreachable [
    i32 0, label %bb.p
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  %i.cb = zext i8 %i.bg to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cb ; 4 uses
  %.sroa.0.0.copyload = load i8, ptr %i.cc, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %.sroa.13.0.copyload = load i8, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %.sroa.22.0.copyload = load i8, ptr %.sroa.22.0..sroa_idx, align 2
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 3
  %.sroa.31.0.copyload = load i8, ptr %.sroa.31.0..sroa_idx, align 1
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.cd = lshr i8 %i.bg, 4
  %i.ce = and i8 %i.cd, 3
  %i.cf = add i8 %.sroa.0.0129, -2
  %i.cg = add i8 %i.cf, %i.ce
  %i.ch = lshr i8 %i.bg, 2
  %i.ci = and i8 %i.ch, 3
  %i.cj = add i8 %.sroa.13.0128, -2
  %i.ck = add i8 %i.cj, %i.ci
  %i.cl = and i8 %i.bg, 3
  %i.cm = add i8 %.sroa.22.0127, -2
  %i.cn = add i8 %i.cm, %i.cl
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.co = add nsw i32 %.0121125, 2
  %i.cp = sext i32 %i.bd to i64
  %i.cq = getelementptr inbounds i8, ptr %0, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = and i32 %i.bh, 63                       ; 2 uses
  %i.cu = add nsw i32 %i.ct, -40                  ; 2 uses
  %i.cv = lshr i32 %i.cs, 4
  %i.cw = add nsw i32 %i.cv, %i.cu
  %i.cx = trunc nsw i32 %i.cw to i8
  %i.cy = add i8 %.sroa.0.0129, %i.cx
  %i.cz = trunc nuw nsw i32 %i.ct to i8
  %i.da = add i8 %.sroa.13.0128, -32
  %i.db = add i8 %i.da, %i.cz
  %i.dc = and i32 %i.cs, 15
  %i.dd = add nsw i32 %i.dc, %i.cu
  %i.de = trunc nsw i32 %i.dd to i8
  %i.df = add i8 %.sroa.22.0127, %i.de
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.dg = and i32 %i.bh, 63
  br label %bb.t

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.n, %bb.q, %bb.s, %bb.r, %bb.p, %bb.m
  %.1122 = phi i32 [ %i.bd, %bb.p ], [ %i.bd, %bb.q ], [ %i.co, %bb.r ], [ %i.bd, %bb.s ], [ %i.bn, %bb.m ], [ %i.bx, %bb.n ]
  %.sroa.31.1 = phi i8 [ %.sroa.31.0.copyload, %bb.p ], [ %.sroa.31.0126, %bb.q ], [ %.sroa.31.0126, %bb.r ], [ %.sroa.31.0126, %bb.s ], [ %.sroa.31.0126, %bb.m ], [ %i.bz, %bb.n ] ; 3 uses
  %.sroa.22.1 = phi i8 [ %.sroa.22.0.copyload, %bb.p ], [ %i.cn, %bb.q ], [ %i.df, %bb.r ], [ %.sroa.22.0127, %bb.s ], [ %i.bp, %bb.m ], [ %i.bw, %bb.n ] ; 3 uses
  %.sroa.13.1 = phi i8 [ %.sroa.13.0.copyload, %bb.p ], [ %i.ck, %bb.q ], [ %i.db, %bb.r ], [ %.sroa.13.0128, %bb.s ], [ %i.bm, %bb.m ], [ %i.bu, %bb.n ] ; 3 uses
  %.sroa.0.1 = phi i8 [ %.sroa.0.0.copyload, %bb.p ], [ %i.cg, %bb.q ], [ %i.cy, %bb.r ], [ %.sroa.0.0129, %bb.s ], [ %i.bk, %bb.m ], [ %i.bs, %bb.n ] ; 3 uses
  %.1 = phi i32 [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ %i.dg, %bb.s ], [ 0, %bb.m ], [ 0, %bb.n ]
  %i.dh = zext i8 %.sroa.0.1 to i64
  %i.di = mul nuw nsw i64 %i.dh, 3
  %i.dj = zext i8 %.sroa.13.1 to i64
  %i.dk = mul nuw nsw i64 %i.dj, 5
  %i.dl = zext i8 %.sroa.22.1 to i64
  %i.dm = mul nuw nsw i64 %i.dl, 7
  %i.dn = zext i8 %.sroa.31.1 to i64
  %i.do = mul nuw nsw i64 %i.dn, 11
  %i.dp = add nuw nsw i64 %i.dm, %i.do
  %i.dq = add nuw nsw i64 %i.dp, %i.dk
  %i.dr = add nuw nsw i64 %i.dq, %i.di
  %i.ds = and i64 %i.dr, 63
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ds ; 4 uses
  store i8 %.sroa.0.1, ptr %i.dt, align 4
  %.sroa.13.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  store i8 %.sroa.13.1, ptr %.sroa.13.0..sroa_idx41, align 1
  %.sroa.22.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  store i8 %.sroa.22.1, ptr %.sroa.22.0..sroa_idx46, align 2
  %.sroa.31.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.dt, i64 3
  store i8 %.sroa.31.1, ptr %.sroa.31.0..sroa_idx51, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.k, %bb.t, %bb.j
  %.2123 = phi i32 [ %.0121125, %bb.j ], [ %.1122, %bb.t ], [ %.0121125, %bb.k ]
  %.sroa.31.2 = phi i8 [ %.sroa.31.0126, %bb.j ], [ %.sroa.31.1, %bb.t ], [ %.sroa.31.0126, %bb.k ] ; 2 uses
  %.sroa.22.2 = phi i8 [ %.sroa.22.0127, %bb.j ], [ %.sroa.22.1, %bb.t ], [ %.sroa.22.0127, %bb.k ] ; 2 uses
  %.sroa.13.2 = phi i8 [ %.sroa.13.0128, %bb.j ], [ %.sroa.13.1, %bb.t ], [ %.sroa.13.0128, %bb.k ] ; 2 uses
  %.sroa.0.2 = phi i8 [ %.sroa.0.0129, %bb.j ], [ %.sroa.0.1, %bb.t ], [ %.sroa.0.0129, %bb.k ] ; 2 uses
  %.2 = phi i32 [ %i.bb, %bb.j ], [ %.1, %bb.t ], [ 0, %bb.k ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv ; 4 uses
  store i8 %.sroa.0.2, ptr %i.du, align 1
  %i.dv = getelementptr i8, ptr %i.du, i64 1
  store i8 %.sroa.13.2, ptr %i.dv, align 1
  %i.dw = getelementptr i8, ptr %i.du, i64 2
  store i8 %.sroa.22.2, ptr %i.dw, align 1
  br i1 %i.ay, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dx = getelementptr i8, ptr %i.du, i64 3
  store i8 %.sroa.31.2, ptr %i.dx, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.az ; 2 uses
  %i.dy = trunc nuw i64 %indvars.iv.next to i32
  %i.dz = icmp sgt i32 %i.at, %i.dy
  br i1 %i.dz, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %bb.w, %bb.h, %bb.g, %bb.c, %bb.d, %bb.e, %bb.f, %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.g ], [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ %i.av, %bb.h ], [ %i.av, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #52
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @qoi_write(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.5) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call ptr @qoi_encode(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a) ; 3 uses
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.a, align 4              ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = call i64 @fwrite(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef %i.f, ptr noundef nonnull %i.b) ; 0 uses
  %i.h = call i32 @fflush(ptr noundef nonnull %i.b) ; 0 uses
  %i.i = call i32 @ferror(ptr noundef nonnull %i.b) #52
  %i.j = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  call void @free(ptr noundef nonnull %i.c) #52
  %.not16 = icmp eq i32 %i.i, 0
  %i.k = select i1 %.not16, i32 %i.e, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.k, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @qoi_read(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.c = tail call i64 @ftell(ptr noundef nonnull %i.a) ; 2 uses
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 0)
  %.not26 = icmp eq i32 %i.f, 0
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.h = and i64 %i.c, 2147483647                 ; 2 uses
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #53 ; 4 uses
  %.not27 = icmp eq ptr %i.i, null
  br i1 %.not27, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.k = tail call i64 @fread(ptr noundef nonnull %i.i, i64 noundef 1, i64 noundef %i.h, ptr noundef nonnull %i.a)
  %i.l = trunc i64 %i.k to i32
  %i.m = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  %.not28 = icmp eq i32 %i.l, %i.d
  br i1 %.not28, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = tail call ptr @qoi_decode(ptr noundef nonnull %i.i, i32 noundef %i.d, ptr noundef %1, i32 noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.o = phi ptr [ %i.n, %bb.h ], [ null, %bb.g ]
  tail call void @free(ptr noundef nonnull %i.i) #52
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.f, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.o, %bb.i ], [ null, %bb.f ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @stbi_flip_vertically_on_write(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  store i32 %0, ptr @stbi__flip_vertically_on_write, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @stbi_write_bmp_to_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #52
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  store ptr %0, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = call fastcc i32 @stbi_write_bmp_core(ptr noundef %6, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #52
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi_write_bmp_core(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i32 %3, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = and i32 %1, 3                            ; 2 uses
  %i.b = mul nsw i32 %1, 3
  %i.c = add nsw i32 %i.b, %i.a
  %i.d = mul nsw i32 %i.c, %2
  %i.e = add nsw i32 %i.d, 54
  %i.f = tail call i32 (ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ...) @stbiw__outfile(ptr noundef %0, i32 poison, i32 poison, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef %4, i32 noundef 0, i32 noundef %i.a, ptr noundef nonnull @.str.139, i32 noundef 66, i32 noundef 77, i32 noundef %i.e, i32 noundef 0, i32 noundef 0, i32 noundef 54, i32 noundef 40, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 24, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = shl i32 %1, 2
  %i.h = mul i32 %i.g, %2
  %i.i = add nsw i32 %i.h, 122
  %i.j = tail call i32 (ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ...) @stbiw__outfile(ptr noundef %0, i32 poison, i32 poison, i32 noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef 1, ptr noundef %4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.140, i32 noundef 66, i32 noundef 77, i32 noundef %i.i, i32 noundef 0, i32 noundef 0, i32 noundef 122, i32 noundef 108, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 32, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16711680, i32 noundef 65280, i32 noundef 255, i32 noundef -16777216, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.j, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @stbi_write_bmp(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #52
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.5) ; 2 uses
  store ptr @stbi__stdio_write, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc i32 @stbi_write_bmp_core(ptr noundef %5, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %.val = load ptr, ptr %i.c, align 8
  %i.e = call i32 @fclose(ptr noundef %.val)      ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @stbi_write_tga_to_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #52
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  store ptr %0, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = call fastcc i32 @stbi_write_tga_core(ptr noundef %6, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #52
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi_write_tga_core(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %3, 2
  %i.b = icmp eq i32 %3, 4
  %i.c = or i1 %i.a, %i.b                         ; 4 uses
  %i.d = zext i1 %i.c to i32                      ; 3 uses
  %i.e = sext i1 %i.c to i32
  %i.f = add nsw i32 %3, %i.e                     ; 3 uses
  %i.g = icmp slt i32 %i.f, 2
  %i.h = select i1 %i.g, i32 3, i32 2             ; 2 uses
  %i.i = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.i, -1
  br i1 %or.cond.not, label %bb.b, label %stbiw__write_flush.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr @stbi_write_tga_with_rle, align 4
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.f, %i.d
  %i.l = shl nsw i32 %i.k, 3
  %i.m = select i1 %i.c, i32 8, i32 0
  %i.n = tail call i32 (ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ...) @stbiw__outfile(ptr noundef %0, i32 poison, i32 poison, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %4, i32 noundef %i.d, i32 noundef 0, ptr noundef nonnull @.str.141, i32 noundef 0, i32 noundef 0, i32 noundef %i.h, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %i.l, i32 noundef %i.m)
  br label %stbiw__write_flush.exit

bb.d:                                             ; preds = %bb.b
  %i.o = or disjoint i32 %i.h, 8
  %i.p = add nsw i32 %i.f, %i.d
  %i.q = shl nsw i32 %i.p, 3
  %i.r = select i1 %i.c, i32 8, i32 0
  tail call void (ptr, ptr, ...) @stbiw__writef(ptr noundef %0, ptr nonnull poison, i32 noundef 0, i32 noundef 0, i32 noundef %i.o, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef %2, i32 noundef %i.q, i32 noundef %i.r)
  %i.s = load i32, ptr @stbi__flip_vertically_on_write, align 4
  %.not116 = icmp eq i32 %i.s, 0                  ; 3 uses
  %i.t = add nsw i32 %2, -1
  %.0109 = select i1 %.not116, i32 %i.t, i32 0    ; 3 uses
  %.0105 = select i1 %.not116, i32 -1, i32 %2     ; 3 uses
  %.0104 = select i1 %.not116, i32 -1, i32 1      ; 2 uses
  %.not117164 = icmp eq i32 %.0109, %.0105
  br i1 %.not117164, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.d
  %i.u = mul i32 %3, %1
  %i.v = icmp sgt i32 %1, 0
  %i.w = add nsw i32 %1, -1
  %i.x = sext i32 %3 to i64                       ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 16 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.ab = zext nneg i32 %3 to i64                 ; 2 uses
  br i1 %i.v, label %.lr.ph162.us.preheader, label %.lr.ph167.split

.lr.ph162.us.preheader:                           ; preds = %.lr.ph167
  %i.ac = zext nneg i32 %1 to i64                 ; 2 uses
end_hunk_1
begin_hunk_2_@stbi_zlib_compress:bb.a
  %i.vw = add i32 %i.vv, %i.vr
  %i.vx = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv862
  %gep.3 = getelementptr i8, ptr %i.vx, i64 3
  %i.vy = load i8, ptr %gep.3, align 1
  %i.vz = zext i8 %i.vy to i32
  %i.wa = add i32 %i.vv, %i.vz                    ; 4 uses
  %i.wb = add i32 %i.wa, %i.vw                    ; 3 uses
  %indvars.iv.next863.3 = add nuw nsw i64 %indvars.iv862, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge791.loopexit.unr-lcssa, label %.lr.ph790

._crit_edge791.loopexit.unr-lcssa:                ; preds = %.lr.ph790
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge791.loopexit, label %.lr.ph790.epil.preheader

.lr.ph790.epil.preheader:                         ; preds = %._crit_edge791.loopexit.unr-lcssa, %.lr.ph790.preheader
  %indvars.iv862.epil.init = phi i64 [ 0, %.lr.ph790.preheader ], [ %indvars.iv.next863.3, %._crit_edge791.loopexit.unr-lcssa ]
  %.1789.epil.init = phi i32 [ %.0177796, %.lr.ph790.preheader ], [ %i.wb, %._crit_edge791.loopexit.unr-lcssa ]
  %.1179788.epil.init = phi i32 [ %.0178795, %.lr.ph790.preheader ], [ %i.wa, %._crit_edge791.loopexit.unr-lcssa ]
  %lcmp.mod1100 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1100)
  br label %.lr.ph790.epil

.lr.ph790.epil:                                   ; preds = %.lr.ph790.epil, %.lr.ph790.epil.preheader
  %indvars.iv862.epil = phi i64 [ %indvars.iv862.epil.init, %.lr.ph790.epil.preheader ], [ %indvars.iv.next863.epil, %.lr.ph790.epil ] ; 2 uses
  %.1789.epil = phi i32 [ %.1789.epil.init, %.lr.ph790.epil.preheader ], [ %i.wf, %.lr.ph790.epil ]
  %.1179788.epil = phi i32 [ %.1179788.epil.init, %.lr.ph790.epil.preheader ], [ %i.we, %.lr.ph790.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph790.epil.preheader ], [ %epil.iter.next, %.lr.ph790.epil ]
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv862.epil
  %i.wc = load i8, ptr %gep.epil, align 1
  %i.wd = zext i8 %i.wc to i32
  %i.we = add i32 %.1179788.epil, %i.wd           ; 3 uses
  %i.wf = add i32 %i.we, %.1789.epil              ; 2 uses
  %indvars.iv.next863.epil = add nuw nsw i64 %indvars.iv862.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge791.loopexit, label %.lr.ph790.epil, !llvm.loop !56

._crit_edge791.loopexit:                          ; preds = %.lr.ph790.epil, %._crit_edge791.loopexit.unr-lcssa
  %.lcssa1068 = phi i32 [ %i.wa, %._crit_edge791.loopexit.unr-lcssa ], [ %i.we, %.lr.ph790.epil ]
  %.lcssa = phi i32 [ %i.wb, %._crit_edge791.loopexit.unr-lcssa ], [ %i.wf, %.lr.ph790.epil ]
  %i.wg = urem i32 %.lcssa1068, 65521
  %i.wh = urem i32 %.lcssa, 65521
  br label %._crit_edge791

._crit_edge791:                                   ; preds = %._crit_edge791.loopexit, %.preheader
  %.1179.lcssa = phi i32 [ %.0178795, %.preheader ], [ %i.wg, %._crit_edge791.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0177796, %.preheader ], [ %i.wh, %._crit_edge791.loopexit ] ; 2 uses
  %i.wi = add nuw nsw i32 %.0797, %.5191794       ; 2 uses
  %i.wj = icmp slt i32 %i.wi, %1
  br i1 %i.wj, label %.preheader, label %._crit_edge798

._crit_edge798:                                   ; preds = %._crit_edge791, %bb.an, %.loopexit
  %.131007 = phi ptr [ %.13, %.loopexit ], [ %storemerge.lcssa, %bb.an ], [ %.13, %._crit_edge791 ] ; 4 uses
  %i.wk = phi i32 [ %i.ve, %.loopexit ], [ 2, %bb.an ], [ %i.ve, %._crit_edge791 ]
  %.0178.lcssa = phi i32 [ 1, %.loopexit ], [ 1, %bb.an ], [ %.1179.lcssa, %._crit_edge791 ] ; 2 uses
  %.0177.lcssa = phi i32 [ 0, %.loopexit ], [ 0, %bb.an ], [ %.1.lcssa, %._crit_edge791 ] ; 2 uses
  %i.wl = getelementptr inbounds i8, ptr %.131007, i64 -8
  %i.wm = add nsw i32 %i.wk, 1
  %i.wn = load i32, ptr %i.wl, align 4            ; 2 uses
  %.not228 = icmp slt i32 %i.wm, %i.wn
  br i1 %.not228, label %bb.bd, label %.thread704

.thread704:                                       ; preds = %._crit_edge798
  %i.wo = shl nsw i32 %i.wn, 1                    ; 2 uses
  %i.wp = getelementptr inbounds i8, ptr %.131007, i64 -8
  %i.wq = sext i32 %i.wo to i64
  %i.wr = add nsw i64 %i.wq, 9
  %i.ws = tail call ptr @realloc(ptr noundef nonnull %i.wp, i64 noundef %i.wr) #54 ; 3 uses
  %.not18.i478 = icmp eq ptr %i.ws, null
  br i1 %.not18.i478, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.thread704
  %i.wt = or disjoint i32 %i.wo, 1
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  store i32 %i.wt, ptr %i.ws, align 4
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge798, %.thread704, %bb.bc
  %.14 = phi ptr [ %.131007, %._crit_edge798 ], [ %.131007, %.thread704 ], [ %i.wu, %bb.bc ] ; 5 uses
  %i.wv = lshr i32 %.0177.lcssa, 8
  %i.ww = trunc nuw i32 %i.wv to i8
  %i.wx = getelementptr inbounds i8, ptr %.14, i64 -4 ; 3 uses
  %i.wy = load i32, ptr %i.wx, align 4            ; 2 uses
  %i.wz = add nsw i32 %i.wy, 1
  store i32 %i.wz, ptr %i.wx, align 4
  %i.xa = sext i32 %i.wy to i64
  %i.xb = getelementptr inbounds i8, ptr %.14, i64 %i.xa
  store i8 %i.ww, ptr %i.xb, align 1
  %i.xc = getelementptr inbounds i8, ptr %.14, i64 -8 ; 2 uses
  %i.xd = load i32, ptr %i.wx, align 4
  %i.xe = add nsw i32 %i.xd, 1
  %i.xf = load i32, ptr %i.xc, align 4            ; 2 uses
  %.not229 = icmp slt i32 %i.xe, %i.xf
  br i1 %.not229, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.xg = shl nsw i32 %i.xf, 1                    ; 2 uses
  %i.xh = sext i32 %i.xg to i64
  %i.xi = add nsw i64 %i.xh, 9
  %i.xj = tail call ptr @realloc(ptr noundef nonnull %i.xc, i64 noundef %i.xi) #54 ; 3 uses
  %.not18.i484 = icmp eq ptr %i.xj, null
  br i1 %.not18.i484, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.xk = or disjoint i32 %i.xg, 1
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store i32 %i.xk, ptr %i.xj, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bd, %bb.be, %bb.bf
  %.15 = phi ptr [ %.14, %bb.bd ], [ %.14, %bb.be ], [ %i.xl, %bb.bf ] ; 5 uses
  %i.xm = trunc i32 %.0177.lcssa to i8
  %i.xn = getelementptr inbounds i8, ptr %.15, i64 -4 ; 3 uses
  %i.xo = load i32, ptr %i.xn, align 4            ; 2 uses
  %i.xp = add nsw i32 %i.xo, 1
  store i32 %i.xp, ptr %i.xn, align 4
  %i.xq = sext i32 %i.xo to i64
  %i.xr = getelementptr inbounds i8, ptr %.15, i64 %i.xq
  store i8 %i.xm, ptr %i.xr, align 1
  %i.xs = getelementptr inbounds i8, ptr %.15, i64 -8 ; 2 uses
  %i.xt = load i32, ptr %i.xn, align 4
  %i.xu = add nsw i32 %i.xt, 1
  %i.xv = load i32, ptr %i.xs, align 4            ; 2 uses
  %.not230 = icmp slt i32 %i.xu, %i.xv
  br i1 %.not230, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.xw = shl nsw i32 %i.xv, 1                    ; 2 uses
  %i.xx = sext i32 %i.xw to i64
  %i.xy = add nsw i64 %i.xx, 9
  %i.xz = tail call ptr @realloc(ptr noundef nonnull %i.xs, i64 noundef %i.xy) #54 ; 3 uses
  %.not18.i490 = icmp eq ptr %i.xz, null
  br i1 %.not18.i490, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ya = or disjoint i32 %i.xw, 1
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  store i32 %i.ya, ptr %i.xz, align 4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bg, %bb.bh, %bb.bi
  %.16 = phi ptr [ %.15, %bb.bg ], [ %.15, %bb.bh ], [ %i.yb, %bb.bi ] ; 5 uses
  %i.yc = lshr i32 %.0178.lcssa, 8
  %i.yd = trunc nuw i32 %i.yc to i8
  %i.ye = getelementptr inbounds i8, ptr %.16, i64 -4 ; 3 uses
  %i.yf = load i32, ptr %i.ye, align 4            ; 2 uses
  %i.yg = add nsw i32 %i.yf, 1
  store i32 %i.yg, ptr %i.ye, align 4
  %i.yh = sext i32 %i.yf to i64
  %i.yi = getelementptr inbounds i8, ptr %.16, i64 %i.yh
  store i8 %i.yd, ptr %i.yi, align 1
  %i.yj = getelementptr inbounds i8, ptr %.16, i64 -8 ; 2 uses
  %i.yk = load i32, ptr %i.ye, align 4
  %i.yl = add nsw i32 %i.yk, 1
  %i.ym = load i32, ptr %i.yj, align 4            ; 2 uses
  %.not231 = icmp slt i32 %i.yl, %i.ym
  br i1 %.not231, label %stbiw__sbgrowf.exit499, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.yn = shl nsw i32 %i.ym, 1                    ; 2 uses
  %i.yo = sext i32 %i.yn to i64
  %i.yp = add nsw i64 %i.yo, 9
  %i.yq = tail call ptr @realloc(ptr noundef nonnull %i.yj, i64 noundef %i.yp) #54 ; 3 uses
  %.not18.i496 = icmp eq ptr %i.yq, null
  br i1 %.not18.i496, label %stbiw__sbgrowf.exit499, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.yr = or disjoint i32 %i.yn, 1
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  store i32 %i.yr, ptr %i.yq, align 4
  br label %stbiw__sbgrowf.exit499

stbiw__sbgrowf.exit499:                           ; preds = %bb.bl, %bb.bk, %bb.bj
  %.17 = phi ptr [ %.16, %bb.bj ], [ %.16, %bb.bk ], [ %i.ys, %bb.bl ] ; 4 uses
  %i.yt = trunc i32 %.0178.lcssa to i8
  %i.yu = getelementptr inbounds i8, ptr %.17, i64 -4 ; 3 uses
  %i.yv = load i32, ptr %i.yu, align 4            ; 2 uses
  %i.yw = add nsw i32 %i.yv, 1
  store i32 %i.yw, ptr %i.yu, align 4
  %i.yx = sext i32 %i.yv to i64
  %i.yy = getelementptr inbounds i8, ptr %.17, i64 %i.yx
  store i8 %i.yt, ptr %i.yy, align 1
  %i.yz = load i32, ptr %i.yu, align 4            ; 2 uses
  store i32 %i.yz, ptr %2, align 4
  %i.za = getelementptr inbounds i8, ptr %.17, i64 -8 ; 2 uses
  %i.zb = sext i32 %i.yz to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.za, ptr nonnull align 4 %.17, i64 %i.zb, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.a, %stbiw__sbgrowf.exit499
  %.0198 = phi ptr [ %i.za, %stbiw__sbgrowf.exit499 ], [ null, %bb.a ]
  ret ptr %.0198
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @stbi_write_png_to_mem(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i32, ptr @stbi_write_force_png_filter, align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  %i.c = icmp eq i32 %1, 0
  %i.d = mul i32 %4, %2                           ; 10 uses
  %spec.select = select i1 %i.c, i32 %i.d, i32 %1 ; 13 uses
  %i.e = icmp sgt i32 %i.b, 4
  %spec.store.select = select i1 %i.e, i32 -1, i32 %i.b ; 2 uses
  %i.f = add nsw i32 %i.d, 1                      ; 4 uses
  %i.g = mul nsw i32 %i.f, %3                     ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #53 ; 7 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sext i32 %i.d to i64                     ; 4 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #53 ; 28 uses
  %.not108 = icmp eq ptr %i.k, null
  br i1 %.not108, label %bb.d, label %.preheader179

.preheader179:                                    ; preds = %bb.b
  %i.l = icmp sgt i32 %3, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader179
  %i.m = icmp sgt i32 %spec.store.select, -1
  br i1 %i.m, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.n = trunc i32 %i.b to i8
  %i.o = sext i32 %i.f to i64
  %wide.trip.count214 = zext nneg i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.split.us
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %bb.c ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv211 to i32
  tail call fastcc void @stbiw__encode_png_line(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.p, i32 noundef %4, i32 noundef %spec.store.select, ptr noundef %i.k)
  %i.q = mul nsw i64 %indvars.iv211, %i.o
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 %i.q ; 2 uses
  store i8 %i.n, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.k, i64 %i.j, i1 false)
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %._crit_edge, label %bb.c

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.t = icmp sgt i32 %i.d, 0
  %wide.trip.count209 = zext nneg i32 %3 to i64   ; 2 uses
  br i1 %i.t, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.split
  %i.u = sext i32 %i.f to i64
  br label %bb.e

.preheader.us.preheader:                          ; preds = %.lr.ph.split
  %i.v = zext nneg i32 %i.f to i64
  %wide.trip.count203 = zext nneg i32 %i.d to i64 ; 15 uses
  %min.iters.check287 = icmp ult i32 %i.d, 8
  %n.vec289 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n299 = icmp eq i64 %n.vec289, %wide.trip.count203
  %min.iters.check271 = icmp ult i32 %i.d, 8
  %n.vec273 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n283 = icmp eq i64 %n.vec273, %wide.trip.count203
  %min.iters.check255 = icmp ult i32 %i.d, 8
  %n.vec257 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n267 = icmp eq i64 %n.vec257, %wide.trip.count203
  %min.iters.check239 = icmp ult i32 %i.d, 8
  %n.vec241 = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n251 = icmp eq i64 %n.vec241, %wide.trip.count203
  %min.iters.check = icmp ult i32 %i.d, 8
  %n.vec = and i64 %wide.trip.count203, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count203
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.loopexit
  %indvars.iv206 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next207, %.loopexit ] ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv206 to i32  ; 6 uses
  tail call fastcc void @stbiw__encode_png_line(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 0, ptr noundef %i.k)
  br i1 %min.iters.check287, label %scalar.ph286.preheader, label %vector.body290

vector.body290:                                   ; preds = %.preheader.us, %vector.body290
  %index291 = phi i64 [ %index.next296, %vector.body290 ], [ 0, %.preheader.us ] ; 2 uses
  %vec.phi292 = phi <4 x i32> [ %i.ad, %vector.body290 ], [ zeroinitializer, %.preheader.us ]
  %vec.phi293 = phi <4 x i32> [ %i.ae, %vector.body290 ], [ zeroinitializer, %.preheader.us ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 %index291 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %wide.load294 = load <4 x i8>, ptr %i.x, align 1
  %wide.load295 = load <4 x i8>, ptr %i.y, align 1
  %i.z = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load294, i1 false)
  %i.aa = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load295, i1 false)
  %i.ab = zext <4 x i8> %i.z to <4 x i32>
  %i.ac = zext <4 x i8> %i.aa to <4 x i32>
  %i.ad = add <4 x i32> %vec.phi292, %i.ab        ; 2 uses
  %i.ae = add <4 x i32> %vec.phi293, %i.ac        ; 2 uses
  %index.next296 = add nuw i64 %index291, 8       ; 2 uses
  %i.af = icmp eq i64 %index.next296, %n.vec289
  br i1 %i.af, label %middle.block297, label %vector.body290, !llvm.loop !57

middle.block297:                                  ; preds = %vector.body290
  %bin.rdx298 = add <4 x i32> %i.ae, %i.ad
  %i.ag = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx298) ; 2 uses
  br i1 %cmp.n299, label %._crit_edge.us.us, label %scalar.ph286.preheader

scalar.ph286.preheader:                           ; preds = %.preheader.us, %middle.block297
  %indvars.iv200.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec289, %middle.block297 ]
  %.092182.us.us.ph = phi i32 [ 0, %.preheader.us ], [ %i.ag, %middle.block297 ]
  br label %scalar.ph286

scalar.ph286:                                     ; preds = %scalar.ph286.preheader, %scalar.ph286
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %scalar.ph286 ], [ %indvars.iv200.ph, %scalar.ph286.preheader ] ; 2 uses
  %.092182.us.us = phi i32 [ %i.al, %scalar.ph286 ], [ %.092182.us.us.ph, %scalar.ph286.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = tail call i8 @llvm.abs.i8(i8 %i.ai, i1 false)
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nuw nsw i32 %.092182.us.us, %i.ak   ; 2 uses
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge.us.us, label %scalar.ph286, !llvm.loop !58

._crit_edge.us.us:                                ; preds = %scalar.ph286, %middle.block297
  %.lcssa231 = phi i32 [ %i.ag, %middle.block297 ], [ %i.al, %scalar.ph286 ] ; 2 uses
  tail call fastcc void @stbiw__encode_png_line(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 1, ptr noundef %i.k)
  br i1 %min.iters.check271, label %scalar.ph270.preheader, label %vector.body274

vector.body274:                                   ; preds = %._crit_edge.us.us, %vector.body274
  %index275 = phi i64 [ %index.next280, %vector.body274 ], [ 0, %._crit_edge.us.us ] ; 2 uses
  %vec.phi276 = phi <4 x i32> [ %i.as, %vector.body274 ], [ zeroinitializer, %._crit_edge.us.us ]
  %vec.phi277 = phi <4 x i32> [ %i.at, %vector.body274 ], [ zeroinitializer, %._crit_edge.us.us ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 %index275 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %wide.load278 = load <4 x i8>, ptr %i.am, align 1
  %wide.load279 = load <4 x i8>, ptr %i.an, align 1
  %i.ao = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load278, i1 false)
  %i.ap = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load279, i1 false)
  %i.aq = zext <4 x i8> %i.ao to <4 x i32>
  %i.ar = zext <4 x i8> %i.ap to <4 x i32>
  %i.as = add <4 x i32> %vec.phi276, %i.aq        ; 2 uses
  %i.at = add <4 x i32> %vec.phi277, %i.ar        ; 2 uses
  %index.next280 = add nuw i64 %index275, 8       ; 2 uses
  %i.au = icmp eq i64 %index.next280, %n.vec273
  br i1 %i.au, label %middle.block281, label %vector.body274, !llvm.loop !59

middle.block281:                                  ; preds = %vector.body274
  %bin.rdx282 = add <4 x i32> %i.at, %i.as
  %i.av = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx282) ; 2 uses
  br i1 %cmp.n283, label %._crit_edge.us.us.1, label %scalar.ph270.preheader

scalar.ph270.preheader:                           ; preds = %._crit_edge.us.us, %middle.block281
  %indvars.iv200.1.ph = phi i64 [ 0, %._crit_edge.us.us ], [ %n.vec273, %middle.block281 ]
  %.092182.us.us.1.ph = phi i32 [ 0, %._crit_edge.us.us ], [ %i.av, %middle.block281 ]
  br label %scalar.ph270

scalar.ph270:                                     ; preds = %scalar.ph270.preheader, %scalar.ph270
  %indvars.iv200.1 = phi i64 [ %indvars.iv.next201.1, %scalar.ph270 ], [ %indvars.iv200.1.ph, %scalar.ph270.preheader ] ; 2 uses
  %.092182.us.us.1 = phi i32 [ %i.ba, %scalar.ph270 ], [ %.092182.us.us.1.ph, %scalar.ph270.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv200.1
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = tail call i8 @llvm.abs.i8(i8 %i.ax, i1 false)
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %.092182.us.us.1, %i.az ; 2 uses
  %indvars.iv.next201.1 = add nuw nsw i64 %indvars.iv200.1, 1 ; 2 uses
  %exitcond204.1.not = icmp eq i64 %indvars.iv.next201.1, %wide.trip.count203
  br i1 %exitcond204.1.not, label %._crit_edge.us.us.1, label %scalar.ph270, !llvm.loop !60

._crit_edge.us.us.1:                              ; preds = %scalar.ph270, %middle.block281
  %.lcssa232 = phi i32 [ %i.av, %middle.block281 ], [ %i.ba, %scalar.ph270 ] ; 2 uses
  tail call fastcc void @stbiw__encode_png_line(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.w, i32 noundef %4, i32 noundef 2, ptr noundef %i.k)
  br i1 %min.iters.check255, label %scalar.ph254.preheader, label %vector.body258

vector.body258:                                   ; preds = %._crit_edge.us.us.1, %vector.body258
  %index259 = phi i64 [ %index.next264, %vector.body258 ], [ 0, %._crit_edge.us.us.1 ] ; 2 uses
  %vec.phi260 = phi <4 x i32> [ %i.bh, %vector.body258 ], [ zeroinitializer, %._crit_edge.us.us.1 ]
  %vec.phi261 = phi <4 x i32> [ %i.bi, %vector.body258 ], [ zeroinitializer, %._crit_edge.us.us.1 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 %index259 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %wide.load262 = load <4 x i8>, ptr %i.bb, align 1
  %wide.load263 = load <4 x i8>, ptr %i.bc, align 1
  %i.bd = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load262, i1 false)
  %i.be = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %wide.load263, i1 false)
  %i.bf = zext <4 x i8> %i.bd to <4 x i32>
  %i.bg = zext <4 x i8> %i.be to <4 x i32>
  %i.bh = add <4 x i32> %vec.phi260, %i.bf        ; 2 uses
  %i.bi = add <4 x i32> %vec.phi261, %i.bg        ; 2 uses
  %index.next264 = add nuw i64 %index259, 8       ; 2 uses
  %i.bj = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.bj, label %middle.block265, label %vector.body258, !llvm.loop !61

middle.block265:                                  ; preds = %vector.body258
  %bin.rdx266 = add <4 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx266) ; 2 uses
  br i1 %cmp.n267, label %._crit_edge.us.us.2, label %scalar.ph254.preheader

scalar.ph254.preheader:                           ; preds = %._crit_edge.us.us.1, %middle.block265
  %indvars.iv200.2.ph = phi i64 [ 0, %._crit_edge.us.us.1 ], [ %n.vec257, %middle.block265 ]
  %.092182.us.us.2.ph = phi i32 [ 0, %._crit_edge.us.us.1 ], [ %i.bk, %middle.block265 ]
end_hunk_2
begin_hunk_3_@LoadImageColors:bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  store i8 %i.do, ptr %i.dp, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 3
  store i8 -1, ptr %i.dq, align 1
  %i.dr = add nsw i32 %.0175195, 3
  br label %bb.u

bb.q:                                             ; preds = %bb.g
  %i.ds = sext i32 %.0175195 to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ds
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.dv = load <4 x float>, ptr %i.dt, align 4
  %i.dw = fmul <4 x float> %i.dv, splat (float 2.550000e+02)
  %i.dx = fptoui <4 x float> %i.dw to <4 x i8>
  store <4 x i8> %i.dx, ptr %i.du, align 1
  %i.dy = add nsw i32 %.0175195, 4
  br label %bb.u

bb.r:                                             ; preds = %bb.g
  %i.dz = sext i32 %.0175195 to i64
  %i.ea = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2            ; 2 uses
  %i.ec = zext i16 %i.eb to i32                   ; 2 uses
  %i.ed = lshr i32 %i.ec, 10
  %i.ee = and i32 %i.ed, 31                       ; 2 uses
  %i.ef = shl nuw nsw i32 %i.ec, 13               ; 2 uses
  %i.eg = and i32 %i.ef, 8380416                  ; 3 uses
  %i.eh = uitofp nneg i32 %i.eg to float
  %i.ei = bitcast float %i.eh to i32              ; 2 uses
  %i.ej = lshr i32 %i.ei, 23
  %.signext.i = sext i16 %i.eb to i32
  %i.ek = and i32 %.signext.i, -2147483648
  %.not.i = icmp eq i32 %i.ee, 0                  ; 2 uses
  %i.el = shl nuw nsw i32 %i.ee, 23
  %i.em = add nuw nsw i32 %i.el, 939524096
  %i.en = or disjoint i32 %i.em, %i.eg
  %i.eo = select i1 %.not.i, i32 0, i32 %i.en
  %i.ep = or disjoint i32 %i.eo, %i.ek
  %i.eq = icmp ne i32 %i.eg, 0
  %i.er = and i1 %.not.i, %i.eq
  %i.es = and i32 %i.ei, 2139095040
  %i.et = add nsw i32 %i.es, -310378496
  %i.eu = sub nsw i32 150, %i.ej
  %i.ev = shl i32 %i.ef, %i.eu
  %i.ew = and i32 %i.ev, 8380416
  %i.ex = or disjoint i32 %i.ew, %i.et
  %i.ey = select i1 %i.er, i32 %i.ex, i32 0
  %i.ez = or i32 %i.ep, %i.ey
  %i.fa = bitcast i32 %i.ez to float
  %i.fb = fmul float %i.fa, 2.550000e+02
  %i.fc = fptoui float %i.fb to i8
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.fc, ptr %i.fd, align 1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  store i8 0, ptr %i.fe, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  store i8 0, ptr %i.ff, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 3
  store i8 -1, ptr %i.fg, align 1
  %i.fh = add nsw i32 %.0175195, 1
  br label %bb.u

bb.s:                                             ; preds = %bb.g
  %i.fi = sext i32 %.0175195 to i64
  %i.fj = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.fi ; 2 uses
  %i.fk = load i16, ptr %i.fj, align 2            ; 2 uses
  %i.fl = zext i16 %i.fk to i32                   ; 2 uses
  %i.fm = lshr i32 %i.fl, 10
  %i.fn = and i32 %i.fm, 31                       ; 2 uses
  %i.fo = shl nuw nsw i32 %i.fl, 13               ; 2 uses
  %i.fp = and i32 %i.fo, 8380416                  ; 3 uses
  %i.fq = uitofp nneg i32 %i.fp to float
  %i.fr = bitcast float %i.fq to i32              ; 2 uses
  %i.fs = lshr i32 %i.fr, 23
  %.signext.i180 = sext i16 %i.fk to i32
  %i.ft = and i32 %.signext.i180, -2147483648
  %.not.i181 = icmp eq i32 %i.fn, 0               ; 2 uses
  %i.fu = shl nuw nsw i32 %i.fn, 23
  %i.fv = add nuw nsw i32 %i.fu, 939524096
  %i.fw = or disjoint i32 %i.fv, %i.fp
  %i.fx = select i1 %.not.i181, i32 0, i32 %i.fw
  %i.fy = or disjoint i32 %i.fx, %i.ft
  %i.fz = icmp ne i32 %i.fp, 0
  %i.ga = and i1 %.not.i181, %i.fz
  %i.gb = and i32 %i.fr, 2139095040
  %i.gc = add nsw i32 %i.gb, -310378496
  %i.gd = sub nsw i32 150, %i.fs
  %i.ge = shl i32 %i.fo, %i.gd
  %i.gf = and i32 %i.ge, 8380416
  %i.gg = or disjoint i32 %i.gf, %i.gc
  %i.gh = select i1 %i.ga, i32 %i.gg, i32 0
  %i.gi = or i32 %i.fy, %i.gh
  %i.gj = bitcast i32 %i.gi to float
  %i.gk = fmul float %i.gj, 2.550000e+02
  %i.gl = fptoui float %i.gk to i8
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store i8 %i.gl, ptr %i.gm, align 1
  %i.gn = getelementptr i8, ptr %i.fj, i64 2
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.gp = load <2 x i16>, ptr %i.gn, align 2      ; 3 uses
  %i.gq = zext <2 x i16> %i.gp to <2 x i32>
  %i.gr = shl nuw nsw <2 x i32> %i.gq, splat (i32 13) ; 3 uses
  %i.gs = and <2 x i32> %i.gr, splat (i32 8380416) ; 3 uses
  %i.gt = extractelement <2 x i32> %i.gr, i64 0
  %i.gu = lshr <2 x i16> %i.gp, splat (i16 10)
  %i.gv = and <2 x i16> %i.gu, splat (i16 31)     ; 2 uses
  %i.gw = uitofp nneg <2 x i32> %i.gs to <2 x float>
  %i.gx = bitcast <2 x float> %i.gw to <2 x i32>  ; 2 uses
  %i.gy = lshr <2 x i32> %i.gx, splat (i32 23)
  %i.gz = sext <2 x i16> %i.gp to <2 x i32>
  %i.ha = and <2 x i32> %i.gz, splat (i32 -2147483648)
  %i.hb = icmp eq <2 x i16> %i.gv, zeroinitializer ; 2 uses
  %i.hc = zext nneg <2 x i16> %i.gv to <2 x i32>
  %i.hd = shl nuw nsw <2 x i32> %i.hc, splat (i32 23)
  %i.he = add nuw nsw <2 x i32> %i.hd, splat (i32 939524096)
  %i.hf = or disjoint <2 x i32> %i.he, %i.gs
  %i.hg = select <2 x i1> %i.hb, <2 x i32> zeroinitializer, <2 x i32> %i.hf
  %i.hh = or disjoint <2 x i32> %i.hg, %i.ha
  %i.hi = icmp ne <2 x i32> %i.gs, zeroinitializer
  %i.hj = and <2 x i1> %i.hb, %i.hi
  %i.hk = and <2 x i32> %i.gx, splat (i32 2139095040)
  %i.hl = add nsw <2 x i32> %i.hk, splat (i32 -310378496)
  %i.hm = sub nsw <2 x i32> splat (i32 150), %i.gy ; 2 uses
  %i.hn = extractelement <2 x i32> %i.hm, i64 0
  %i.ho = shl i32 %i.gt, %i.hn
  %i.hp = extractelement <2 x i32> %i.gr, i64 1
  %i.hq = extractelement <2 x i32> %i.hm, i64 1
  %i.hr = shl i32 %i.hp, %i.hq
  %i.hs = insertelement <2 x i32> poison, i32 %i.ho, i64 0
  %i.ht = insertelement <2 x i32> %i.hs, i32 %i.hr, i64 1
  %i.hu = and <2 x i32> %i.ht, splat (i32 8380416)
  %i.hv = or disjoint <2 x i32> %i.hu, %i.hl
  %i.hw = select <2 x i1> %i.hj, <2 x i32> %i.hv, <2 x i32> zeroinitializer
  %i.hx = or <2 x i32> %i.hh, %i.hw
  %i.hy = bitcast <2 x i32> %i.hx to <2 x float>
  %i.hz = fmul <2 x float> %i.hy, splat (float 2.550000e+02) ; 2 uses
  %i.ia = extractelement <2 x float> %i.hz, i64 0
  %i.ib = fptoui float %i.ia to i8
  store i8 %i.ib, ptr %i.go, align 1
  %i.ic = extractelement <2 x float> %i.hz, i64 1
  %i.id = fptoui float %i.ic to i8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  store i8 %i.id, ptr %i.ie, align 1
  %i.if = getelementptr inbounds nuw i8, ptr %i.gm, i64 3
  store i8 -1, ptr %i.if, align 1
  %i.ig = add nsw i32 %.0175195, 3
  br label %bb.u

bb.t:                                             ; preds = %bb.g
  %i.ih = sext i32 %.0175195 to i64
  %i.ii = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.ih
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.ik = load <4 x i16>, ptr %i.ii, align 2      ; 2 uses
  %i.il = zext <4 x i16> %i.ik to <4 x i32>       ; 2 uses
  %i.im = lshr <4 x i32> %i.il, splat (i32 10)
  %i.in = and <4 x i32> %i.im, splat (i32 31)     ; 2 uses
  %i.io = shl nuw nsw <4 x i32> %i.il, splat (i32 13) ; 2 uses
  %i.ip = and <4 x i32> %i.io, splat (i32 8380416) ; 3 uses
  %i.iq = uitofp nneg <4 x i32> %i.ip to <4 x float>
  %i.ir = bitcast <4 x float> %i.iq to <4 x i32>  ; 2 uses
  %i.is = lshr <4 x i32> %i.ir, splat (i32 23)
  %i.it = sext <4 x i16> %i.ik to <4 x i32>
  %i.iu = and <4 x i32> %i.it, splat (i32 -2147483648)
  %i.iv = icmp eq <4 x i32> %i.in, zeroinitializer ; 2 uses
  %i.iw = shl nuw nsw <4 x i32> %i.in, splat (i32 23)
  %i.ix = add nuw nsw <4 x i32> %i.iw, splat (i32 939524096)
  %i.iy = or disjoint <4 x i32> %i.ix, %i.ip
  %i.iz = select <4 x i1> %i.iv, <4 x i32> zeroinitializer, <4 x i32> %i.iy
  %i.ja = or disjoint <4 x i32> %i.iz, %i.iu
  %i.jb = icmp ne <4 x i32> %i.ip, zeroinitializer
  %i.jc = and <4 x i1> %i.iv, %i.jb
  %i.jd = and <4 x i32> %i.ir, splat (i32 2139095040)
  %i.je = add nsw <4 x i32> %i.jd, splat (i32 -310378496)
  %i.jf = sub nsw <4 x i32> splat (i32 150), %i.is
  %i.jg = shl <4 x i32> %i.io, %i.jf
  %i.jh = and <4 x i32> %i.jg, splat (i32 8380416)
  %i.ji = or disjoint <4 x i32> %i.jh, %i.je
  %i.jj = select <4 x i1> %i.jc, <4 x i32> %i.ji, <4 x i32> zeroinitializer
  %i.jk = or <4 x i32> %i.ja, %i.jj
  %i.jl = bitcast <4 x i32> %i.jk to <4 x float>
  %i.jm = fmul <4 x float> %i.jl, splat (float 2.550000e+02)
  %i.jn = fptoui <4 x float> %i.jm to <4 x i8>
  store <4 x i8> %i.jn, ptr %i.ij, align 1
  %i.jo = add nsw i32 %.0175195, 4
  br label %bb.u

bb.u:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.g
  %.1 = phi i32 [ %.0175195, %bb.g ], [ %.0175195, %bb.h ], [ %i.ag, %bb.i ], [ %.0175195, %bb.j ], [ %.0175195, %bb.k ], [ %.0175195, %bb.l ], [ %i.ce, %bb.m ], [ %i.cq, %bb.n ], [ %i.da, %bb.o ], [ %i.dr, %bb.p ], [ %i.dy, %bb.q ], [ %i.fh, %bb.r ], [ %i.ig, %bb.s ], [ %i.jo, %bb.t ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %bb.u, %bb.f, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.j, %bb.c ], [ %i.j, %bb.f ], [ %i.j, %bb.u ]
  ret ptr %.0
}

declare zeroext i1 @SaveFileData(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @ExportImageToMemory(ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #9 {
bb.a:
  store i32 0, ptr %2, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.h
  br i1 %or.cond5, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4
  %switch.tableidx = add i32 %i.j, -1             ; 2 uses
  %i.k = icmp ult i32 %switch.tableidx, 4
  br i1 %i.k, label %switch.lookup, label %.fold.split

switch.lookup:                                    ; preds = %bb.b
  %i.l = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ExportImageToMemory, i64 %i.l
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.fold.split

.fold.split:                                      ; preds = %bb.b, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 4, %bb.b ] ; 2 uses
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.13) #55
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.fold.split
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.14) #55
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %.fold.split
  %i.q = mul nsw i32 %.0, %i.b
  %i.r = tail call ptr @stbi_write_png_to_mem(ptr noundef nonnull %i.g, i32 noundef %i.q, i32 noundef %i.b, i32 noundef %i.e, i32 noundef %.0, ptr noundef nonnull %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.014 = phi ptr [ null, %bb.a ], [ %i.r, %bb.d ], [ null, %bb.c ]
  ret ptr %.014
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @ExportImageAsCode(ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4              ; 4 uses
  %switch.tableidx = add i32 %i.g, -1             ; 2 uses
  %i.h = icmp ult i32 %switch.tableidx, 24
  br i1 %i.h, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.i = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ImageDraw.30, i64 %i.i
  %switch.load = load double, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0.i = phi double [ 0.000000e+00, %bb.a ], [ %switch.load, %switch.lookup ]
  %i.j = sitofp i32 %i.c to double
  %i.k = fmul nnan double %.0.i, %i.j
  %i.l = sitofp i32 %i.e to double
  %i.m = fmul double %i.k, %i.l
  %i.n = fptosi double %i.m to i32                ; 2 uses
  %i.o = icmp slt i32 %i.c, 4
  %i.p = icmp slt i32 %i.e, 4
  %or.cond.i = and i1 %i.o, %i.p
  br i1 %or.cond.i, label %bb.c, label %GetPixelDataSize.exit

bb.c:                                             ; preds = %bb.b
  %i.q = and i32 %i.g, -2
  %or.cond3.i = icmp eq i32 %i.q, 14
  br i1 %or.cond3.i, label %GetPixelDataSize.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = and i32 %i.g, -8
  %or.cond5.i = icmp eq i32 %i.r, 16
  %spec.select.i = select i1 %or.cond5.i, i32 16, i32 %i.n
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.b, %bb.c, %bb.d
  %.016.i = phi i32 [ %i.n, %bb.b ], [ 8, %bb.c ], [ %spec.select.i, %bb.d ] ; 4 uses
  %i.s = mul nsw i32 %.016.i, 6
  %i.t = add nsw i32 %i.s, 2000
  %i.u = sext i32 %i.t to i64
  %i.v = tail call noalias ptr @calloc(i64 noundef %i.u, i64 noundef 1) #56 ; 19 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.v, ptr noundef nonnull align 1 dereferenceable(90) @.str.32, i64 89, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.w, ptr noundef nonnull align 1 dereferenceable(90) @.str.33, i64 89, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.x, ptr noundef nonnull align 1 dereferenceable(90) @.str.34, i64 89, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 267
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.y, ptr noundef nonnull align 1 dereferenceable(90) @.str.33, i64 89, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 356
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.z, ptr noundef nonnull align 1 dereferenceable(90) @.str.35, i64 89, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 445
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.aa, ptr noundef nonnull align 1 dereferenceable(90) @.str.36, i64 89, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 534
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.ab, ptr noundef nonnull align 1 dereferenceable(90) @.str.33, i64 89, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 623
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.ac, ptr noundef nonnull align 1 dereferenceable(90) @.str.37, i64 89, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 712
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.ad, ptr noundef nonnull align 1 dereferenceable(90) @.str.33, i64 89, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 801
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(91) %i.ae, ptr noundef nonnull align 1 dereferenceable(91) @.str.38, i64 90, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = tail call ptr @GetFileNameWithoutExt(ptr noundef %1) #52
  %i.ah = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.ag, i64 noundef 255) #52 ; 0 uses
  %i.ai = load i8, ptr %i.a, align 16             ; 2 uses
  %.not76 = icmp eq i8 %i.ai, 0
  br i1 %.not76, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %GetPixelDataSize.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.aj, ptr noundef nonnull align 1 dereferenceable(27) @.str.39, i64 27, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 917
  %i.al = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(1) @.str.40, ptr noundef nonnull %i.a, i32 noundef %i.c) #52
  %i.am = add nsw i32 %i.al, 917                  ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.v, i64 %i.an
  %i.ap = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) @.str.41, ptr noundef nonnull %i.a, i32 noundef %i.e) #52
  %i.aq = add nsw i32 %i.am, %i.ap                ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.v, i64 %i.ar
  %i.at = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef nonnull %i.a, i32 noundef %i.g) #52
  %i.au = add nsw i32 %i.aq, %i.at                ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.v, i64 %i.av
  %i.ax = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.aw, ptr noundef nonnull dereferenceable(1) @.str.43, ptr noundef nonnull %i.a, i32 noundef %.016.i) #52
  %i.ay = add nsw i32 %i.au, %i.ax                ; 2 uses
  %i.az = add i32 %.016.i, -1                     ; 2 uses
  %i.ba = icmp sgt i32 %.016.i, 1
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.ba, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %i.az to i64
  br label %bb.g

.lr.ph:                                           ; preds = %GetPixelDataSize.exit, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %GetPixelDataSize.exit ] ; 2 uses
  %i.bb = phi i8 [ %i.bf, %bb.f ], [ %i.ai, %GetPixelDataSize.exit ] ; 2 uses
  %i.bc = add i8 %i.bb, -97
  %or.cond = icmp ult i8 %i.bc, 26
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %narrow = add nsw i8 %i.bb, -32
  store i8 %narrow, ptr %i.bd, align 1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  %i.bf = load i8, ptr %i.be, align 1             ; 2 uses
  %.not = icmp eq i8 %i.bf, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge82:                                    ; preds = %bb.g, %._crit_edge
  %.073.lcssa = phi i32 [ %i.ay, %._crit_edge ], [ %i.by, %bb.g ]
  %i.bg = sext i32 %.073.lcssa to i64
  %i.bh = getelementptr inbounds i8, ptr %i.v, i64 %i.bg
  %i.bi = sext i32 %i.az to i64
  %i.bj = getelementptr inbounds i8, ptr %.pre, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i32
  %i.bm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bh, ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %i.bl) #52 ; 0 uses
  %i.bn = call zeroext i1 @SaveFileText(ptr noundef %1, ptr noundef nonnull %i.v) #52 ; 2 uses
  call void @free(ptr noundef nonnull %i.v) #52
  br i1 %i.bn, label %bb.h, label %bb.i

bb.g:                                             ; preds = %.lr.ph81, %bb.g
  %indvars.iv84 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next85, %bb.g ] ; 3 uses
  %.07378 = phi i32 [ %i.ay, %.lr.ph81 ], [ %i.by, %bb.g ] ; 2 uses
  %i.bo = sext i32 %.07378 to i64
  %i.bp = getelementptr inbounds i8, ptr %i.v, i64 %i.bo
  %i.bq = trunc nuw nsw i64 %indvars.iv84 to i32
  %i.br = urem i32 %i.bq, 20
  %i.bs = icmp eq i32 %i.br, 0
  %i.bt = select i1 %i.bs, ptr @.str.44, ptr @.str.45
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv84
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i32
  %i.bx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bp, ptr noundef nonnull dereferenceable(1) %i.bt, i32 noundef %i.bw) #52
  %i.by = add nsw i32 %i.bx, %.07378              ; 2 uses
end_hunk_3
