Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 119
begin_hunk_0_@stbi_load_gif_from_memory:bb.a
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
define hidden noundef ptr @stbi_loadf_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
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
define internal fastcc noundef ptr @stbi__loadf_main(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) unnamed_addr #4 {
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
  %i.i = mul nsw i32 %i.c, %i.b                   ; 9 uses
  %i.j = or i32 %i.e, %i.i
  %or.cond.not.i16.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i16.i.i.i, label %bb.f, label %stbi__malloc_mad4.exit.thread.i

bb.f:                                             ; preds = %stbi__mul2sizes_valid.exit.thread24.i.i.i
  %i.k = icmp eq i32 %i.e, 0
  br i1 %i.k, label %stbi__malloc_mad4.exit.i, label %stbi__mul2sizes_valid.exit18.i.i.i

stbi__mul2sizes_valid.exit18.i.i.i:               ; preds = %bb.f
  %i.l = udiv i32 2147483647, %i.e
  %.not.i.i.i = icmp sle i32 %i.i, %i.l
  %i.m = mul nsw i32 %i.e, %i.i
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
  %i.ac = mul nsw i64 %indvars.iv54.i, %i.aa      ; 3 uses
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
  %i.bk = mul nsw i64 %indvars.iv59.i, %i.bh
  %i.bl = add nsw i64 %i.bk, %i.bi                ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.a, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = uitofp i8 %i.bn to float
  %i.bp = fdiv float %i.bo, 2.550000e+02
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bl
  store float %i.bp, ptr %i.bq, align 4
  %indvars.iv.next60.i = or disjoint i64 %indvars.iv59.i, 1
  %i.br = mul nsw i64 %indvars.iv.next60.i, %i.bh
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
  br i1 %niter26.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !18

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod23.not = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next60.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod24 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.by = mul nsw i64 %indvars.iv59.i.epil.init, %i.bh
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
define hidden noundef ptr @stbi_loadf_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
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
  %i.j = call i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128) #52, !inline_history !15 ; 2 uses
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
define hidden noundef ptr @stbi_loadf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #4 {
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
  %i.k = call i32 %i.j(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, i32 noundef 128) #52, !inline_history !19 ; 2 uses
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
  %i.z = call fastcc noundef ptr @stbi__loadf_main(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  %i.aa = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %stbi_loadf_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.z, %stbi_loadf_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @stbi_loadf_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #4 {
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
  %i.j = call i32 %i.i(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 128) #52, !inline_history !4 ; 2 uses
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
end_hunk_0
begin_hunk_1_@stbi_write_tga_core:bb.a
  %i.dr = add nsw i64 %i.dq, 1
  %i.ds = icmp ult i64 %i.dr, 65
  br i1 %i.ds, label %stbiw__write1.exit124.us, label %bb.t

bb.t:                                             ; preds = %._crit_edge.us
  %i.dt = load ptr, ptr %0, align 8
  %i.du = load ptr, ptr %i.z, align 8
  tail call void %i.dt(ptr noundef %i.du, ptr noundef nonnull %i.aa, i32 noundef %i.dp) #52, !inline_history !35
  br label %stbiw__write1.exit124.us

stbiw__write1.exit124.us:                         ; preds = %bb.t, %._crit_edge.us
  %i.dv = phi i32 [ 0, %bb.t ], [ %i.dp, %._crit_edge.us ] ; 2 uses
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.y, align 8
  %i.dx = sext i32 %i.dv to i64
  %i.dy = getelementptr inbounds i8, ptr %i.aa, i64 %i.dx
  store i8 %i.do, ptr %i.dy, align 1
  switch i32 %3, label %stbiw__write_pixel.exit141.us [
    i32 2, label %bb.w
    i32 1, label %bb.w
    i32 4, label %bb.u
    i32 3, label %bb.u
  ]

bb.u:                                             ; preds = %stbiw__write1.exit124.us, %stbiw__write1.exit124.us
  %i.dz = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = load i8, ptr %i.al, align 1
  %i.ee = load i32, ptr %i.y, align 8             ; 3 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = add nsw i64 %i.ef, 3
  %i.eh = icmp ult i64 %i.eg, 65
  br i1 %i.eh, label %stbiw__write3.exit36.i125.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ei = load ptr, ptr %0, align 8
  %i.ej = load ptr, ptr %i.z, align 8
  tail call void %i.ei(ptr noundef %i.ej, ptr noundef nonnull %i.aa, i32 noundef %i.ee) #52, !inline_history !36
  br label %stbiw__write3.exit36.i125.us

stbiw__write3.exit36.i125.us:                     ; preds = %bb.v, %bb.u
  %i.ek = phi i32 [ 0, %bb.v ], [ %i.ee, %bb.u ]  ; 2 uses
  %i.el = add nsw i32 %i.ek, 3
  store i32 %i.el, ptr %i.y, align 8
  %i.em = sext i32 %i.ek to i64
  %i.en = getelementptr inbounds i8, ptr %i.aa, i64 %i.em ; 3 uses
  store i8 %i.ea, ptr %i.en, align 1
  %i.eo = getelementptr i8, ptr %i.en, i64 1
  store i8 %i.ec, ptr %i.eo, align 1
  %i.ep = getelementptr i8, ptr %i.en, i64 2
  store i8 %i.ed, ptr %i.ep, align 1
  br label %bb.y

bb.w:                                             ; preds = %stbiw__write1.exit124.us, %stbiw__write1.exit124.us
  %i.eq = load i8, ptr %i.al, align 1
  %i.er = load i32, ptr %i.y, align 8             ; 3 uses
  %i.es = sext i32 %i.er to i64
  %i.et = add nsw i64 %i.es, 1
  %i.eu = icmp ult i64 %i.et, 65
  br i1 %i.eu, label %stbiw__write1.exit.i140.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = load ptr, ptr %0, align 8
  %i.ew = load ptr, ptr %i.z, align 8
  tail call void %i.ev(ptr noundef %i.ew, ptr noundef nonnull %i.aa, i32 noundef %i.er) #52, !inline_history !37
  br label %stbiw__write1.exit.i140.us

stbiw__write1.exit.i140.us:                       ; preds = %bb.x, %bb.w
  %i.ex = phi i32 [ 0, %bb.x ], [ %i.er, %bb.w ]  ; 2 uses
  %i.ey = add nsw i32 %i.ex, 1
  store i32 %i.ey, ptr %i.y, align 8
  %i.ez = sext i32 %i.ex to i64
  %i.fa = getelementptr inbounds i8, ptr %i.aa, i64 %i.ez
  store i8 %i.eq, ptr %i.fa, align 1
  br label %bb.y

bb.y:                                             ; preds = %stbiw__write1.exit.i140.us, %stbiw__write3.exit36.i125.us
  switch i32 %3, label %stbiw__write_pixel.exit141.us [
    i32 4, label %bb.z
    i32 2, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.fb = getelementptr i8, ptr %i.al, i64 %i.ab
  %i.fc = getelementptr i8, ptr %i.fb, i64 -1
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = load i32, ptr %i.y, align 8             ; 3 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = add nsw i64 %i.ff, 1
  %i.fh = icmp ult i64 %i.fg, 65
  br i1 %i.fh, label %stbiw__write1.exit37.i127.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fi = load ptr, ptr %0, align 8
  %i.fj = load ptr, ptr %i.z, align 8
  tail call void %i.fi(ptr noundef %i.fj, ptr noundef nonnull %i.aa, i32 noundef %i.fe) #52, !inline_history !37
  br label %stbiw__write1.exit37.i127.us

stbiw__write1.exit37.i127.us:                     ; preds = %bb.aa, %bb.z
  %i.fk = phi i32 [ 0, %bb.aa ], [ %i.fe, %bb.z ] ; 2 uses
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.y, align 8
  %i.fm = sext i32 %i.fk to i64
  %i.fn = getelementptr inbounds i8, ptr %i.aa, i64 %i.fm
  store i8 %i.fd, ptr %i.fn, align 1
  br label %stbiw__write_pixel.exit141.us

stbiw__write_pixel.exit141.us:                    ; preds = %stbiw__write_pixel.exit.us, %stbiw__write1.exit.us, %stbiw__write1.exit37.i127.us, %bb.y, %stbiw__write1.exit124.us
  %.3146.us = phi i32 [ %.2.lcssa.us, %stbiw__write1.exit124.us ], [ %.2.lcssa.us, %stbiw__write1.exit37.i127.us ], [ %.2.lcssa.us, %bb.y ], [ %.3.ph.us, %stbiw__write1.exit.us ], [ %.3.ph.us, %stbiw__write_pixel.exit.us ]
  %i.fo = add nsw i32 %.3146.us, %.0111159.us     ; 2 uses
  %i.fp = icmp slt i32 %i.fo, %1
  br i1 %i.fp, label %bb.e, label %._crit_edge163.us

._crit_edge163.us:                                ; preds = %stbiw__write_pixel.exit141.us
  %indvars.iv.next179 = add i64 %indvars.iv178, %i.ae ; 2 uses
  %i.fq = trunc i64 %indvars.iv.next179 to i32
  %.not117.us = icmp eq i32 %.0105, %i.fq
  br i1 %.not117.us, label %._crit_edge168, label %.lr.ph162.us

.lr.ph167.split:                                  ; preds = %.lr.ph167, %.lr.ph167.split
  %.1110165 = phi i32 [ %i.fr, %.lr.ph167.split ], [ %.0109, %.lr.ph167 ]
  %i.fr = add nsw i32 %.1110165, %.0104           ; 2 uses
  %.not117 = icmp eq i32 %i.fr, %.0105
  br i1 %.not117, label %._crit_edge168, label %.lr.ph167.split

._crit_edge168:                                   ; preds = %.lr.ph167.split, %._crit_edge163.us, %bb.d
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8            ; 2 uses
  %.not.i142 = icmp eq i32 %i.ft, 0
  br i1 %.not.i142, label %stbiw__write_flush.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge168
  %i.fu = load ptr, ptr %0, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %i.fu(ptr noundef %i.fw, ptr noundef nonnull %i.fx, i32 noundef %i.ft) #52, !inline_history !38
  store i32 0, ptr %i.fs, align 8
  br label %stbiw__write_flush.exit

stbiw__write_flush.exit:                          ; preds = %bb.ab, %._crit_edge168, %bb.a, %bb.c
  %.0 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.a ], [ 1, %._crit_edge168 ], [ 1, %bb.ab ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @stbi_write_tga(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 {
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
  %i.d = call fastcc i32 @stbi_write_tga_core(ptr noundef %5, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  %.val = load ptr, ptr %i.c, align 8
  %i.e = call i32 @fclose(ptr noundef %.val)      ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @stbi_write_hdr_to_func(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc i32 @stbi_write_hdr_core(ptr %0, ptr %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi_write_hdr_core(ptr nofree readonly captures(none) %.0.val, ptr %.8.val, i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca [4 x i8], align 4                 ; 10 uses
  %i.g = alloca [4 x i8], align 1                 ; 13 uses
  %i.h = alloca [128 x i8], align 16              ; 4 uses
  %i.i = alloca [66 x i8], align 16               ; 4 uses
  %i.j = icmp slt i32 %1, 1
  %i.k = icmp slt i32 %0, 1
  %or.cond = or i1 %i.k, %i.j
  %i.l = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.l
  br i1 %or.cond3, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = shl nsw i32 %0, 2
  %i.n = zext nneg i32 %i.m to i64
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #53 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(66) %i.i, ptr noundef nonnull align 16 dereferenceable(66) @__const.stbi_write_hdr_core.header, i64 66, i1 false)
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.i, i32 noundef 65) #52
  %i.p = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.142, i32 noundef %1, i32 noundef %0) #52
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.h, i32 noundef %i.p) #52
  %i.q = mul nsw i32 %2, %0                       ; 3 uses
  %i.r = lshr i32 %0, 8
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.u = trunc i32 %0 to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.w = add nsw i32 %0, -32768
  %or.cond.i = icmp ult i32 %i.w, -32760
  %.off.i = add i32 %2, -3
  %switch.i = icmp ult i32 %.off.i, 2             ; 2 uses
  %i.x = shl nuw nsw i32 %0, 1
  %i.y = mul nuw nsw i32 %0, 3
  %i.z = zext nneg i32 %0 to i64                  ; 8 uses
  %i.aa = zext nneg i32 %i.x to i64
  %i.ab = zext nneg i32 %i.y to i64
  %i.ac = sext i32 %2 to i64                      ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z ; 2 uses
  %invariant.gep200.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aa ; 2 uses
  %invariant.gep202.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ab ; 2 uses
  %i.ad = zext nneg i32 %2 to i64
  %invariant.op.i = add nsw i32 %0, -2            ; 2 uses
  %invariant.op212.i = add nsw i64 %i.z, -3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  br i1 %or.cond.i, label %.split.us, label %.preheader131.i

.split.us:                                        ; preds = %bb.b
  br i1 %switch.i, label %.preheader.i.us.us, label %.preheader.i.us

.preheader.i.us.us:                               ; preds = %.split.us, %stbiw__write_hdr_scanline.exit.loopexit.us.split.us.us
  %.06.us.us = phi i32 [ %i.bn, %stbiw__write_hdr_scanline.exit.loopexit.us.split.us.us ], [ 0, %.split.us ] ; 3 uses
  %i.ah = load i32, ptr @stbi__flip_vertically_on_write, align 4
  %.not.us.us = icmp eq i32 %i.ah, 0
  %i.ai = xor i32 %.06.us.us, -1
  %i.aj = add nsw i32 %1, %i.ai
  %i.ak = select i1 %.not.us.us, i32 %.06.us.us, i32 %i.aj
  %i.al = mul nsw i32 %i.q, %i.ak
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %3, i64 %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #52
  br label %bb.c

bb.c:                                             ; preds = %stbiw__linear_to_rgbe.exit.i.us.us.us, %.preheader.i.us.us
  %indvars.iv183.i.us.us.us = phi i64 [ 0, %.preheader.i.us.us ], [ %indvars.iv.next184.i.us.us.us, %stbiw__linear_to_rgbe.exit.i.us.us.us ] ; 2 uses
  %i.ao = mul nuw nsw i64 %indvars.iv183.i.us.us.us, %i.ac
  %i.ap = getelementptr [4 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load float, ptr %i.aq, align 4          ; 3 uses
  %i.as = getelementptr i8, ptr %i.ap, i64 4
  %i.at = load float, ptr %i.as, align 4          ; 3 uses
  %i.au = load float, ptr %i.ap, align 4          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #52
  %i.av = fcmp ogt float %i.at, %i.ar
  %..i.i.us.us.us = select i1 %i.av, float %i.at, float %i.ar ; 2 uses
  %i.aw = fcmp ogt float %i.au, %..i.i.us.us.us
  %i.ax = select i1 %i.aw, float %i.au, float %..i.i.us.us.us ; 3 uses
  %i.ay = fcmp olt float %i.ax, 1.000000e-32
  br i1 %i.ay, label %stbiw__linear_to_rgbe.exit.i.us.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = fpext float %i.ax to double
  %i.ba = call double @frexp(double noundef %i.az, ptr noundef nonnull %i.e) #52
  %i.bb = fptrunc double %i.ba to float
  %i.bc = fmul float %i.bb, 2.560000e+02
  %i.bd = fdiv float %i.bc, %i.ax                 ; 3 uses
  %i.be = fmul float %i.au, %i.bd
  %i.bf = fptoui float %i.be to i8
  %i.bg = fmul float %i.at, %i.bd
  %i.bh = fptoui float %i.bg to i8
  %i.bi = fmul float %i.ar, %i.bd
  %i.bj = fptoui float %i.bi to i8
  %i.bk = load i32, ptr %i.e, align 4
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = xor i8 %i.bl, -128
  br label %stbiw__linear_to_rgbe.exit.i.us.us.us

stbiw__linear_to_rgbe.exit.i.us.us.us:            ; preds = %bb.c, %bb.d
  %.sink = phi i8 [ %i.bh, %bb.d ], [ 0, %bb.c ]
  %.sink.i.us.us.us = phi i8 [ %i.bf, %bb.d ], [ 0, %bb.c ]
  %.sink32.i.i.us.us.us = phi i8 [ %i.bm, %bb.d ], [ 0, %bb.c ]
  %.sink.i.i.us.us.us = phi i8 [ %i.bj, %bb.d ], [ 0, %bb.c ]
  store i8 %.sink, ptr %i.ag, align 1
  store i8 %.sink.i.us.us.us, ptr %i.g, align 1
  store i8 %.sink32.i.i.us.us.us, ptr %i.ae, align 1
  store i8 %.sink.i.i.us.us.us, ptr %i.af, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #52
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.g, i32 noundef 4) #52, !inline_history !39
  %indvars.iv.next184.i.us.us.us = add nuw nsw i64 %indvars.iv183.i.us.us.us, 1 ; 2 uses
  %exitcond187.not.i.us.us.us = icmp eq i64 %indvars.iv.next184.i.us.us.us, %i.z
  br i1 %exitcond187.not.i.us.us.us, label %stbiw__write_hdr_scanline.exit.loopexit.us.split.us.us, label %bb.c

stbiw__write_hdr_scanline.exit.loopexit.us.split.us.us: ; preds = %stbiw__linear_to_rgbe.exit.i.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #52
  %i.bn = add nuw nsw i32 %.06.us.us, 1           ; 2 uses
  %exitcond17.not = icmp eq i32 %i.bn, %1
  br i1 %exitcond17.not, label %.split8.us, label %.preheader.i.us.us

.preheader.i.us:                                  ; preds = %.split.us, %stbiw__write_hdr_scanline.exit.loopexit.us.split
  %.06.us = phi i32 [ %i.cj, %stbiw__write_hdr_scanline.exit.loopexit.us.split ], [ 0, %.split.us ] ; 3 uses
  %i.bo = load i32, ptr @stbi__flip_vertically_on_write, align 4
  %.not.us = icmp eq i32 %i.bo, 0
  %i.bp = xor i32 %.06.us, -1
  %i.bq = add nsw i32 %1, %i.bp
  %i.br = select i1 %.not.us, i32 %.06.us, i32 %i.bq
  %i.bs = mul nsw i32 %i.q, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #52
  br label %bb.e

bb.e:                                             ; preds = %stbiw__linear_to_rgbe.exit.i.us, %.preheader.i.us
  %indvars.iv183.i.us = phi i64 [ 0, %.preheader.i.us ], [ %indvars.iv.next184.i.us, %stbiw__linear_to_rgbe.exit.i.us ] ; 2 uses
  %i.bv = mul nsw i64 %indvars.iv183.i.us, %i.ac
  %i.bw = getelementptr [4 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #52
  %i.by = fcmp olt float %i.bx, 1.000000e-32
  br i1 %i.by, label %stbiw__linear_to_rgbe.exit.i.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = fpext float %i.bx to double
  %i.ca = call double @frexp(double noundef %i.bz, ptr noundef nonnull %i.e) #52
  %i.cb = fptrunc double %i.ca to float
  %i.cc = fmul float %i.cb, 2.560000e+02
  %i.cd = fdiv float %i.cc, %i.bx
  %i.ce = fmul float %i.bx, %i.cd
  %i.cf = fptoui float %i.ce to i8
  %i.cg = load i32, ptr %i.e, align 4
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = xor i8 %i.ch, -128
  br label %stbiw__linear_to_rgbe.exit.i.us

stbiw__linear_to_rgbe.exit.i.us:                  ; preds = %bb.e, %bb.f
  %.sink18 = phi i8 [ %i.cf, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.sink32.i.i.us = phi i8 [ %i.ci, %bb.f ], [ 0, %bb.e ]
  store i8 %.sink18, ptr %i.ag, align 1
  store i8 %.sink18, ptr %i.g, align 1
  store i8 %.sink32.i.i.us, ptr %i.ae, align 1
  store i8 %.sink18, ptr %i.af, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #52
  call void %.0.val(ptr noundef %.8.val, ptr noundef nonnull %i.g, i32 noundef 4) #52, !inline_history !39
  %indvars.iv.next184.i.us = add nuw nsw i64 %indvars.iv183.i.us, 1 ; 2 uses
  %exitcond187.not.i.us = icmp eq i64 %indvars.iv.next184.i.us, %i.z
  br i1 %exitcond187.not.i.us, label %stbiw__write_hdr_scanline.exit.loopexit.us.split, label %bb.e

stbiw__write_hdr_scanline.exit.loopexit.us.split: ; preds = %stbiw__linear_to_rgbe.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #52
  %i.cj = add nuw nsw i32 %.06.us, 1              ; 2 uses
  %exitcond16.not = icmp eq i32 %i.cj, %1
  br i1 %exitcond16.not, label %.split8.us, label %.preheader.i.us

.preheader131.i:                                  ; preds = %bb.b, %stbiw__write_hdr_scanline.exit.loopexit1
  %.06 = phi i32 [ %i.fw, %stbiw__write_hdr_scanline.exit.loopexit1 ], [ 0, %bb.b ] ; 3 uses
  %i.ck = load i32, ptr @stbi__flip_vertically_on_write, align 4
  %.not = icmp eq i32 %i.ck, 0
  %i.cl = xor i32 %.06, -1
  %i.cm = add nsw i32 %1, %i.cl
  %i.cn = select i1 %.not, i32 %.06, i32 %i.cm
  %i.co = mul nsw i32 %i.q, %i.cn
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cp ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #52
  store i32 514, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #52
  store i8 %i.s, ptr %i.t, align 2
  store i8 %i.u, ptr %i.v, align 1
  br i1 %switch.i, label %.preheader131.split.us.i, label %.preheader131.split.i

.preheader131.split.us.i:                         ; preds = %.preheader131.i, %stbiw__linear_to_rgbe.exit119.us.i
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %stbiw__linear_to_rgbe.exit119.us.i ], [ 0, %.preheader131.i ] ; 6 uses
  %i.cr = mul nuw nsw i64 %indvars.iv163.i, %i.ad
  %i.cs = getelementptr [4 x i8], ptr %i.cq, i64 %i.cr ; 3 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  %i.cu = load float, ptr %i.ct, align 4          ; 3 uses
  %i.cv = getelementptr i8, ptr %i.cs, i64 4
  %i.cw = load float, ptr %i.cv, align 4          ; 3 uses
  %i.cx = load float, ptr %i.cs, align 4          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #52
  %i.cy = fcmp ogt float %i.cw, %i.cu
  %..i116.us.i = select i1 %i.cy, float %i.cw, float %i.cu ; 2 uses
  %i.cz = fcmp ogt float %i.cx, %..i116.us.i
  %i.da = select i1 %i.cz, float %i.cx, float %..i116.us.i ; 3 uses
  %i.db = fcmp olt float %i.da, 1.000000e-32
  br i1 %i.db, label %stbiw__linear_to_rgbe.exit119.us.i, label %bb.g

bb.g:                                             ; preds = %.preheader131.split.us.i
  %i.dc = fpext float %i.da to double
end_hunk_1
begin_hunk_2_@ImageKernelConvolution:bb.a
  %i.dg = load <2 x float>, ptr %i.df, align 4
  %i.dh = fadd <2 x float> %i.da, %i.dg
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv259 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dk = load <2 x float>, ptr %i.dj, align 4
  %i.dl = fadd <2 x float> %i.de, %i.dk           ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dn = load <2 x float>, ptr %i.dm, align 4
  %i.do = fadd <2 x float> %i.dh, %i.dn           ; 3 uses
  %indvars.iv.next260.3 = add nuw nsw i64 %indvars.iv259, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge235.loopexit.unr-lcssa, label %.lr.ph234

._crit_edge242:                                   ; preds = %.lr.ph241.preheader, %._crit_edge235
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count270
  br i1 %exitcond271.not, label %._crit_edge244, label %.preheader222

._crit_edge248:                                   ; preds = %.lr.ph247, %.preheader
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.dr) #52
  tail call void @free(ptr noundef %i.t) #52
  tail call void @free(ptr noundef %i.w) #52
  store ptr %i.n, ptr %0, align 8
  store i32 7, ptr %i.dp, align 4
  tail call void @ImageFormat(ptr noundef nonnull %0, i32 noundef %i.dq)
  br label %bb.n

.lr.ph247:                                        ; preds = %.preheader, %.lr.ph247
  %indvars.iv277 = phi i64 [ %indvars.iv.next278, %.lr.ph247 ], [ 0, %.preheader ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv277
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv277
  %i.du = load <4 x float>, ptr %i.ds, align 4
  %i.dv = fmul <4 x float> %i.du, splat (float 2.550000e+02)
  %i.dw = fptoui <4 x float> %i.dv to <4 x i8>
  store <4 x i8> %i.dw, ptr %i.dt, align 1
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %i.dx = load i32, ptr %i.c, align 8
  %i.dy = load i32, ptr %i.f, align 4
  %i.dz = mul nsw i32 %i.dy, %i.dx
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next278, %i.ea
  br i1 %i.eb, label %.lr.ph247, label %._crit_edge248

bb.n:                                             ; preds = %bb.e, %._crit_edge248, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #30

; Function Attrs: nounwind uwtable
define void @ImageDither(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.aa, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp sgt i32 %i.j, 13
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.66) #52
  br label %bb.aa

bb.f:                                             ; preds = %bb.d
  %i.l = add i32 %4, %3                           ; 3 uses
  %i.m = add i32 %i.l, %1
  %i.n = add i32 %i.m, %2                         ; 3 uses
  %i.o = icmp sgt i32 %i.n, 16
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.67, i32 noundef %i.n) #52
  br label %bb.aa

bb.h:                                             ; preds = %bb.f
  %i.p = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %0) ; 14 uses
  %i.q = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.q) #52
  %i.r = load i32, ptr %i.i, align 4
  switch i32 %i.r, label %bb.i [
    i32 4, label %bb.j
    i32 7, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.68) #52
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.i
  %i.s = icmp eq i32 %1, 5                        ; 2 uses
  %i.t = icmp eq i32 %2, 6
  %i.u = icmp eq i32 %3, 5                        ; 2 uses
  %i.v = icmp eq i32 %4, 0
  %i.w = and i1 %i.t, %i.v
  %i.x = and i1 %i.s, %i.w
  %or.cond5 = and i1 %i.u, %i.x
  br i1 %or.cond5, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 3, ptr %i.i, align 4
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i32 %2, 5
  %i.z = icmp eq i32 %4, 1
  %i.aa = and i1 %i.y, %i.z
  %i.ab = and i1 %i.s, %i.aa
  %or.cond11 = and i1 %i.u, %i.ab
  br i1 %or.cond11, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 5, ptr %i.i, align 4
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ac = icmp eq i32 %1, 4
  %i.ad = icmp eq i32 %2, 4
  %or.cond13 = and i1 %i.ac, %i.ad
  %i.ae = icmp eq i32 %3, 4
  %or.cond15 = and i1 %or.cond13, %i.ae
  %i.af = icmp eq i32 %4, 4
  %or.cond17 = and i1 %or.cond15, %i.af
  br i1 %or.cond17, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 6, ptr %i.i, align 4
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %i.i, align 4
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.69, i32 noundef %i.n, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #52
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p, %bb.o, %bb.k
  %i.ag = load i32, ptr %i.c, align 8
  %i.ah = load i32, ptr %i.f, align 4
  %i.ai = mul nsw i32 %i.ah, %i.ag
  %i.aj = sext i32 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 1
  %i.al = tail call noalias ptr @malloc(i64 noundef %i.ak) #53
  store ptr %i.al, ptr %0, align 8
  %i.am = load i32, ptr %i.f, align 4             ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.preheader.lr.ph, label %._crit_edge317

.preheader.lr.ph:                                 ; preds = %bb.q
  %i.ao = sub nsw i32 8, %1                       ; 2 uses
  %i.ap = sub nsw i32 8, %2                       ; 2 uses
  %i.aq = sub nsw i32 8, %3                       ; 2 uses
  %i.ar = sub nsw i32 8, %4
  %i.as = add i32 %i.l, %2
  %i.at = load i32, ptr %i.c, align 8             ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.preheader, label %._crit_edge317

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.av = phi i32 [ %i.az, %._crit_edge ], [ %i.am, %.preheader.lr.ph ]
  %i.aw = phi i32 [ %i.ba, %._crit_edge ], [ %i.at, %.preheader.lr.ph ] ; 3 uses
  %.0290316 = phi i32 [ %i.ay, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 9 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  %i.ay = add nuw nsw i32 %.0290316, 1            ; 11 uses
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

._crit_edge317:                                   ; preds = %._crit_edge, %.preheader.lr.ph, %bb.q
  tail call void @free(ptr noundef %i.p) #52
  br label %bb.aa

._crit_edge.loopexit:                             ; preds = %bb.z
  %.pre323 = load i32, ptr %i.f, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.loopexit
  %i.az = phi i32 [ %.pre323, %._crit_edge.loopexit ], [ %i.av, %.preheader ] ; 2 uses
  %i.ba = phi i32 [ %i.jk, %._crit_edge.loopexit ], [ %i.aw, %.preheader ]
  %i.bb = icmp slt i32 %i.ay, %i.az
  br i1 %i.bb, label %.preheader, label %._crit_edge317, !llvm.loop !111

.lr.ph:                                           ; preds = %.preheader, %bb.z
  %i.bc = phi i32 [ %i.jk, %bb.z ], [ %i.aw, %.preheader ]
  %.0315 = phi i32 [ %i.jj, %bb.z ], [ 0, %.preheader ] ; 18 uses
  %i.bd = mul nsw i32 %i.bc, %.0290316
  %i.be = add nsw i32 %i.bd, %.0315
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bf ; 5 uses
  %.sroa.0140.0.copyload142 = load i8, ptr %i.bg, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  %.sroa.6.0.copyload143 = load i8, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 2 ; 2 uses
  %.sroa.8.0.copyload145 = load i8, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.10147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 3 ; 2 uses
  %.sroa.10147.0.copyload148 = load i8, ptr %.sroa.10147.0..sroa_idx, align 1
  %i.bh = zext i8 %.sroa.0140.0.copyload142 to i32 ; 2 uses
  %i.bi = lshr i32 %i.bh, %i.ao                   ; 3 uses
  %i.bj = trunc nuw i32 %i.bi to i8
  %i.bk = zext i8 %.sroa.6.0.copyload143 to i32   ; 2 uses
  %i.bl = lshr i32 %i.bk, %i.ap                   ; 3 uses
  %i.bm = trunc nuw i32 %i.bl to i8
  %i.bn = zext i8 %.sroa.8.0.copyload145 to i32   ; 2 uses
  %i.bo = lshr i32 %i.bn, %i.aq                   ; 3 uses
  %i.bp = trunc nuw i32 %i.bo to i8
  %i.bq = zext i8 %.sroa.10147.0.copyload148 to i32
  %i.br = lshr i32 %i.bq, %i.ar                   ; 2 uses
  %i.bs = trunc nuw i32 %i.br to i8
  %i.bt = shl i32 %i.bi, %i.ao
  %i.bu = sub nsw i32 %i.bh, %i.bt                ; 4 uses
  %i.bv = shl i32 %i.bl, %i.ap
  %i.bw = sub nsw i32 %i.bk, %i.bv                ; 4 uses
  %i.bx = shl i32 %i.bo, %i.aq
  %i.by = sub nsw i32 %i.bn, %i.bx                ; 4 uses
  store i8 %i.bj, ptr %i.bg, align 1
  store i8 %i.bm, ptr %.sroa.6.0..sroa_idx, align 1
  store i8 %i.bp, ptr %.sroa.8.0..sroa_idx, align 1
  store i8 %i.bs, ptr %.sroa.10147.0..sroa_idx, align 1
  %i.bz = load i32, ptr %i.c, align 8             ; 2 uses
  %i.ca = add nsw i32 %i.bz, -1
  %i.cb = icmp slt i32 %.0315, %i.ca
  br i1 %i.cb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph
  %i.cc = mul nsw i32 %i.bz, %.0290316
  %i.cd = add nsw i32 %i.cc, %.0315
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr [4 x i8], ptr %i.p, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 4      ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i32
  %i.cj = sitofp i32 %i.bu to float
  %i.ck = fmul nnan float %i.cj, 7.000000e+00
  %i.cl = fmul nnan float %i.ck, 6.250000e-02
  %i.cm = fptosi float %i.cl to i32
  %i.cn = add nsw i32 %i.ci, %i.cm
  %spec.select311 = tail call i32 @llvm.smin.i32(i32 %i.cn, i32 255)
  %spec.select = trunc i32 %spec.select311 to i8
  store i8 %spec.select, ptr %i.cg, align 1
  %i.co = load i32, ptr %i.c, align 8
  %i.cp = mul nsw i32 %i.co, %.0290316
  %i.cq = add nsw i32 %i.cp, %.0315
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.p, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 5      ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = zext i8 %i.cu to i32
  %i.cw = sitofp i32 %i.bw to float
  %i.cx = fmul nnan float %i.cw, 7.000000e+00
  %i.cy = fmul nnan float %i.cx, 6.250000e-02
  %i.cz = fptosi float %i.cy to i32
  %i.da = add nsw i32 %i.cv, %i.cz
  %i.db = tail call i32 @llvm.smin.i32(i32 %i.da, i32 255)
  %i.dc = trunc i32 %i.db to i8
  store i8 %i.dc, ptr %i.ct, align 1
  %i.dd = load i32, ptr %i.c, align 8
  %i.de = mul nsw i32 %i.dd, %.0290316
  %i.df = add nsw i32 %i.de, %.0315
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.p, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 6      ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i32
  %i.dl = sitofp i32 %i.by to float
  %i.dm = fmul nnan float %i.dl, 7.000000e+00
  %i.dn = fmul nnan float %i.dm, 6.250000e-02
  %i.do = fptosi float %i.dn to i32
  %i.dp = add nsw i32 %i.dk, %i.do
  %i.dq = tail call i32 @llvm.smin.i32(i32 %i.dp, i32 255)
  %i.dr = trunc i32 %i.dq to i8
  store i8 %i.dr, ptr %i.di, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph
  %.not307 = icmp ne i32 %.0315, 0
  %.pre319 = load i32, ptr %i.f, align 4          ; 2 uses
  %i.ds = add nsw i32 %.pre319, -1
  %i.dt = icmp slt i32 %.0290316, %i.ds
  %or.cond = select i1 %.not307, i1 %i.dt, i1 false
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.du = load i32, ptr %i.c, align 8
  %i.dv = mul nsw i32 %i.du, %i.ay
  %i.dw = add nsw i32 %i.dv, %.0315
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr [4 x i8], ptr %i.p, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dy, i64 -4     ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i32
  %i.ec = sitofp i32 %i.bu to float
  %i.ed = fmul nnan float %i.ec, 3.000000e+00
  %i.ee = fmul nnan float %i.ed, 6.250000e-02
  %i.ef = fptosi float %i.ee to i32
  %i.eg = add nsw i32 %i.eb, %i.ef
  %spec.select308312 = tail call i32 @llvm.smin.i32(i32 %i.eg, i32 255)
  %spec.select308 = trunc i32 %spec.select308312 to i8
  store i8 %spec.select308, ptr %i.dz, align 1
  %i.eh = load i32, ptr %i.c, align 8
  %i.ei = mul nsw i32 %i.eh, %i.ay
  %i.ej = add nsw i32 %i.ei, %.0315
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr [4 x i8], ptr %i.p, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 -3     ; 2 uses
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i32
  %i.ep = sitofp i32 %i.bw to float
  %i.eq = fmul nnan float %i.ep, 3.000000e+00
  %i.er = fmul nnan float %i.eq, 6.250000e-02
  %i.es = fptosi float %i.er to i32
  %i.et = add nsw i32 %i.eo, %i.es
  %i.eu = tail call i32 @llvm.smin.i32(i32 %i.et, i32 255)
  %i.ev = trunc i32 %i.eu to i8
  store i8 %i.ev, ptr %i.em, align 1
  %i.ew = load i32, ptr %i.c, align 8
  %i.ex = mul nsw i32 %i.ew, %i.ay
  %i.ey = add nsw i32 %i.ex, %.0315
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr [4 x i8], ptr %i.p, i64 %i.ez
  %i.fb = getelementptr i8, ptr %i.fa, i64 -2     ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = zext i8 %i.fc to i32
  %i.fe = sitofp i32 %i.by to float
  %i.ff = fmul nnan float %i.fe, 3.000000e+00
  %i.fg = fmul nnan float %i.ff, 6.250000e-02
  %i.fh = fptosi float %i.fg to i32
  %i.fi = add nsw i32 %i.fd, %i.fh
  %i.fj = tail call i32 @llvm.smin.i32(i32 %i.fi, i32 255)
  %i.fk = trunc i32 %i.fj to i8
  store i8 %i.fk, ptr %i.fb, align 1
  %.pre = load i32, ptr %i.f, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fl = phi i32 [ %.pre, %bb.t ], [ %.pre319, %bb.s ]
  %i.fm = add nsw i32 %i.fl, -1
  %i.fn = icmp slt i32 %.0290316, %i.fm
  %.pre321 = load i32, ptr %i.c, align 8          ; 2 uses
  br i1 %i.fn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fo = mul nsw i32 %.pre321, %i.ay
  %i.fp = add nsw i32 %i.fo, %.0315
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.fq ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = zext i8 %i.fs to i32
  %i.fu = sitofp i32 %i.bu to float
  %i.fv = fmul nnan float %i.fu, 5.000000e+00
  %i.fw = fmul nnan float %i.fv, 6.250000e-02
  %i.fx = fptosi float %i.fw to i32
  %i.fy = add nsw i32 %i.ft, %i.fx
  %spec.select309313 = tail call i32 @llvm.smin.i32(i32 %i.fy, i32 255)
  %spec.select309 = trunc i32 %spec.select309313 to i8
  store i8 %spec.select309, ptr %i.fr, align 1
  %i.fz = load i32, ptr %i.c, align 8
  %i.ga = mul nsw i32 %i.fz, %i.ay
  %i.gb = add nsw i32 %i.ga, %.0315
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = zext i8 %i.gf to i32
  %i.gh = sitofp i32 %i.bw to float
  %i.gi = fmul nnan float %i.gh, 5.000000e+00
  %i.gj = fmul nnan float %i.gi, 6.250000e-02
  %i.gk = fptosi float %i.gj to i32
  %i.gl = add nsw i32 %i.gg, %i.gk
  %i.gm = tail call i32 @llvm.smin.i32(i32 %i.gl, i32 255)
  %i.gn = trunc i32 %i.gm to i8
  store i8 %i.gn, ptr %i.ge, align 1
  %i.go = load i32, ptr %i.c, align 8
  %i.gp = mul nsw i32 %i.go, %i.ay
  %i.gq = add nsw i32 %i.gp, %.0315
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 2 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = zext i8 %i.gu to i32
  %i.gw = sitofp i32 %i.by to float
  %i.gx = fmul nnan float %i.gw, 5.000000e+00
  %i.gy = fmul nnan float %i.gx, 6.250000e-02
  %i.gz = fptosi float %i.gy to i32
  %i.ha = add nsw i32 %i.gv, %i.gz
  %i.hb = tail call i32 @llvm.smin.i32(i32 %i.ha, i32 255)
  %i.hc = trunc i32 %i.hb to i8
  store i8 %i.hc, ptr %i.gt, align 1
  %.pre320 = load i32, ptr %i.c, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.hd = phi i32 [ %.pre320, %bb.v ], [ %.pre321, %bb.u ] ; 4 uses
  %i.he = add nsw i32 %i.hd, -1
  %i.hf = icmp slt i32 %.0315, %i.he
  br i1 %i.hf, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.hg = load i32, ptr %i.f, align 4
  %i.hh = add nsw i32 %i.hg, -1
  %i.hi = icmp slt i32 %.0290316, %i.hh
  br i1 %i.hi, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hj = mul nsw i32 %i.hd, %i.ay
  %i.hk = add nsw i32 %i.hj, %.0315
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr [4 x i8], ptr %i.p, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 4      ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1
  %i.hp = zext i8 %i.ho to i32
  %i.hq = sitofp i32 %i.bu to float
  %i.hr = fmul nnan float %i.hq, 6.250000e-02
  %i.hs = fptosi float %i.hr to i32
  %i.ht = add nsw i32 %i.hp, %i.hs
  %spec.select310314 = tail call i32 @llvm.smin.i32(i32 %i.ht, i32 255)
  %spec.select310 = trunc i32 %spec.select310314 to i8
  store i8 %spec.select310, ptr %i.hn, align 1
  %i.hu = load i32, ptr %i.c, align 8
  %i.hv = mul nsw i32 %i.hu, %i.ay
  %i.hw = add nsw i32 %i.hv, %.0315
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr [4 x i8], ptr %i.p, i64 %i.hx
  %i.hz = getelementptr i8, ptr %i.hy, i64 5      ; 2 uses
  %i.ia = load i8, ptr %i.hz, align 1
  %i.ib = zext i8 %i.ia to i32
  %i.ic = sitofp i32 %i.bw to float
  %i.id = fmul nnan float %i.ic, 6.250000e-02
  %i.ie = fptosi float %i.id to i32
  %i.if = add nsw i32 %i.ib, %i.ie
  %i.ig = tail call i32 @llvm.smin.i32(i32 %i.if, i32 255)
  %i.ih = trunc i32 %i.ig to i8
  store i8 %i.ih, ptr %i.hz, align 1
  %i.ii = load i32, ptr %i.c, align 8
  %i.ij = mul nsw i32 %i.ii, %i.ay
  %i.ik = add nsw i32 %i.ij, %.0315
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr [4 x i8], ptr %i.p, i64 %i.il
  %i.in = getelementptr i8, ptr %i.im, i64 6      ; 2 uses
  %i.io = load i8, ptr %i.in, align 1
  %i.ip = zext i8 %i.io to i32
  %i.iq = sitofp i32 %i.by to float
  %i.ir = fmul nnan float %i.iq, 6.250000e-02
  %i.is = fptosi float %i.ir to i32
  %i.it = add nsw i32 %i.ip, %i.is
  %i.iu = tail call i32 @llvm.smin.i32(i32 %i.it, i32 255)
  %i.iv = trunc i32 %i.iu to i8
  store i8 %i.iv, ptr %i.in, align 1
  %.pre322 = load i32, ptr %i.c, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.iw = phi i32 [ %.pre322, %bb.y ], [ %i.hd, %bb.x ], [ %i.hd, %bb.w ]
  %i.ix = shl i32 %i.bi, %i.as
  %i.iy = shl i32 %i.bl, %i.l
  %i.iz = or i32 %i.iy, %i.ix
  %i.ja = shl i32 %i.bo, %4
  %i.jb = or i32 %i.iz, %i.ja
  %i.jc = or i32 %i.jb, %i.br
  %i.jd = trunc i32 %i.jc to i16
  %i.je = load ptr, ptr %0, align 8
  %i.jf = mul nsw i32 %i.iw, %.0290316
  %i.jg = add nsw i32 %i.jf, %.0315
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [2 x i8], ptr %i.je, i64 %i.jh
  store i16 %i.jd, ptr %i.ji, align 2
  %i.jj = add nuw nsw i32 %.0315, 1               ; 2 uses
  %i.jk = load i32, ptr %i.c, align 8             ; 3 uses
  %i.jl = icmp slt i32 %i.jj, %i.jk
  br i1 %i.jl, label %.lr.ph, label %._crit_edge.loopexit

bb.aa:                                            ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge317, %bb.g, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageFlipVertical(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.50) #52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp sgt i32 %i.m, 13
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.51) #52
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %switch.tableidx = add i32 %i.m, -1             ; 2 uses
  %i.o = icmp ult i32 %switch.tableidx, 13
  br i1 %i.o, label %switch.lookup, label %GetPixelDataSize.exit

switch.lookup:                                    ; preds = %bb.h
  %i.p = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ImageFlipVertical, i64 %i.p
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.h, %switch.lookup
  %i.q = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.h ] ; 2 uses
  %i.r = load i32, ptr %i.c, align 8
  %i.s = load i32, ptr %i.f, align 4
  %i.t = mul i32 %i.r, %i.q
  %i.u = mul i32 %i.t, %i.s
  %i.v = sext i32 %i.u to i64
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #53 ; 4 uses
  %i.x = load i32, ptr %i.f, align 4              ; 4 uses
  %i.y = icmp sgt i32 %i.x, 0
  %.pre = load ptr, ptr %0, align 8               ; 4 uses
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %GetPixelDataSize.exit
  %i.z = load i32, ptr %i.c, align 8
  %i.aa = mul i32 %i.z, %i.q                      ; 4 uses
  %i.ab = sext i32 %i.aa to i64                   ; 5 uses
  %i.ac = zext nneg i32 %i.x to i64               ; 4 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ad = icmp eq i32 %i.x, 1
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ac, 2147483646
  br label %bb.i

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv31.epil.init = phi i64 [ %i.ac, %.lr.ph ], [ %indvars.iv.next32.1, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod37 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.epil.init
  %i.af = trunc i64 %indvars.iv31.epil.init to i32
  %i.ag = add i32 %i.af, -1
  %i.ah = mul i32 %i.aa, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %.pre, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.aj, i64 %i.ab, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %GetPixelDataSize.exit
  tail call void @free(ptr noundef %.pre) #52
  store ptr %i.w, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv31 = phi i64 [ %i.ac, %.lr.ph.new ], [ %indvars.iv.next32.1, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.ak = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv
  %i.al = trunc i64 %indvars.iv31 to i32
  %i.am = add i32 %i.al, -1
  %i.an = mul i32 %i.aa, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %.pre, i64 %i.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.ap, i64 %i.ab, i1 false)
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ab ; 2 uses
  %indvars.iv.next32.1 = add nsw i64 %indvars.iv31, -2 ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next
  %i.ar = trunc nuw nsw i64 %indvars.iv.next32.1 to i32
  %i.as = mul i32 %i.aa, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %.pre, i64 %i.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.au, i64 %i.ab, i1 false)
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %i.ab ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.i

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageFlipHorizontal(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
end_hunk_2
begin_hunk_3_@ImageColorReplace:bb.a

bb.l:                                             ; preds = %bb.k, %._crit_edge, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @LoadImagePalette(ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %0) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #53 ; 5 uses
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.preheader55, label %.preheader55.thread

.preheader55:                                     ; preds = %bb.b
  %i.f = zext nneg i32 %1 to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 0, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = mul nsw i32 %i.k, %i.i                   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph61.split.us.preheader, label %._crit_edge

.preheader55.thread:                              ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = mul nsw i32 %i.q, %i.o                   ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph61.split, label %._crit_edge

.lr.ph61.split.us.preheader:                      ; preds = %.preheader55
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph61.split.us

.lr.ph61.split.us:                                ; preds = %.lr.ph61.split.us.preheader, %.loopexit.us
  %.04360.us = phi i32 [ %i.al, %.loopexit.us ], [ 0, %.lr.ph61.split.us.preheader ] ; 4 uses
  %.04459.us = phi i32 [ %.246.us, %.loopexit.us ], [ 0, %.lr.ph61.split.us.preheader ] ; 4 uses
  %i.t = zext nneg i32 %.04360.us to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %.not53.us = icmp eq i8 %i.w, 0
  br i1 %.not53.us, label %.loopexit.us, label %.preheader.us

bb.c:                                             ; preds = %.preheader.us, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv ; 4 uses
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.an, %i.y
  br i1 %i.z, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.aa = load i8, ptr %i.ao, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp eq i8 %i.aa, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = load i8, ptr %i.ap, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = icmp eq i8 %i.w, %i.aj
  br i1 %i.ak, label %.loopexit.us, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..critedge_crit_edge.us, label %bb.c

bb.h:                                             ; preds = %..critedge_crit_edge.us
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.72, i32 noundef %1) #52
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %bb.f, %bb.h, %..critedge_crit_edge.us, %.lr.ph61.split.us
  %.246.us = phi i32 [ %.04459.us, %.lr.ph61.split.us ], [ %i.at, %..critedge_crit_edge.us ], [ %i.at, %bb.h ], [ %.04459.us, %bb.f ] ; 2 uses
  %.2.us = phi i32 [ %.04360.us, %.lr.ph61.split.us ], [ %.04360.us, %..critedge_crit_edge.us ], [ %i.l, %bb.h ], [ %.04360.us, %bb.f ]
  %i.al = add nuw nsw i32 %.2.us, 1               ; 2 uses
  %i.am = icmp slt i32 %i.al, %i.l
  br i1 %i.am, label %.lr.ph61.split.us, label %._crit_edge

.preheader.us:                                    ; preds = %.lr.ph61.split.us
  %i.an = load i8, ptr %i.u, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  br label %bb.c

..critedge_crit_edge.us:                          ; preds = %bb.g
  %i.aq = sext i32 %.04459.us to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aq
  %i.as = load i32, ptr %i.u, align 1
  store i32 %i.as, ptr %i.ar, align 1
  %i.at = add nsw i32 %.04459.us, 1               ; 3 uses
  %.not54.us = icmp slt i32 %i.at, %1
  br i1 %.not54.us, label %.loopexit.us, label %bb.h

._crit_edge:                                      ; preds = %bb.j, %.loopexit.us, %.preheader55.thread, %.preheader55
  %.044.lcssa = phi i32 [ 0, %.preheader55 ], [ 0, %.preheader55.thread ], [ %.246.us, %.loopexit.us ], [ %.246, %bb.j ]
  tail call void @free(ptr noundef nonnull %i.a) #52
  br label %bb.k

.lr.ph61.split:                                   ; preds = %.preheader55.thread, %bb.j
  %.04360 = phi i32 [ %i.bc, %bb.j ], [ 0, %.preheader55.thread ] ; 3 uses
  %.04459 = phi i32 [ %.246, %bb.j ], [ 0, %.preheader55.thread ] ; 3 uses
  %i.au = zext nneg i32 %.04360 to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %i.ax = load i8, ptr %i.aw, align 1
  %.not53 = icmp eq i8 %i.ax, 0
  br i1 %.not53, label %bb.j, label %.preheader

.preheader:                                       ; preds = %.lr.ph61.split
  %i.ay = sext i32 %.04459 to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ay
  %i.ba = load i32, ptr %i.av, align 1
  store i32 %i.ba, ptr %i.az, align 1
  %i.bb = add nsw i32 %.04459, 1                  ; 3 uses
  %.not54 = icmp slt i32 %i.bb, %1
  br i1 %.not54, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.72, i32 noundef %1) #52
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader, %.lr.ph61.split
  %.246 = phi i32 [ %.04459, %.lr.ph61.split ], [ %i.bb, %.preheader ], [ %i.bb, %bb.i ] ; 2 uses
  %.2 = phi i32 [ %.04360, %.lr.ph61.split ], [ %.04360, %.preheader ], [ %i.r, %bb.i ]
  %i.bc = add nuw nsw i32 %.2, 1                  ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.r
  br i1 %i.bd, label %.lr.ph61.split, label %._crit_edge

bb.k:                                             ; preds = %._crit_edge, %bb.a
  %.047 = phi ptr [ %i.d, %._crit_edge ], [ null, %bb.a ]
  %.3 = phi i32 [ %.044.lcssa, %._crit_edge ], [ 0, %bb.a ]
  store i32 %.3, ptr %2, align 4
  ret ptr %.047
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @UnloadImagePalette(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  tail call void @free(ptr noundef %0) #52
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @GetImageColor(ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 14 uses
  %i.d = icmp slt i32 %1, %i.c
  %i.e = icmp sgt i32 %2, -1
  %or.cond = and i1 %i.e, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp slt i32 %2, %i.g
  %or.cond89 = select i1 %or.cond, i1 %i.h, i1 false
  br i1 %or.cond89, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4
  switch i32 %i.j, label %bb.q [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 5, label %bb.f
    i32 3, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 4, label %bb.j
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 11, label %bb.n
    i32 12, label %bb.o
    i32 13, label %bb.p
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8
  %i.l = mul nsw i32 %i.c, %2
  %i.m = add nuw nsw i32 %i.l, %1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = insertelement <4 x i8> <i8 poison, i8 -1, i8 poison, i8 poison>, i8 %i.p, i64 0
  %i.r = shufflevector <4 x i8> %i.q, <4 x i8> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %0, align 8
  %i.t = mul nsw i32 %i.c, %2
  %i.u = add nuw nsw i32 %i.t, %1
  %i.v = shl nuw nsw i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  %i.y = load <2 x i8>, ptr %i.x, align 1
  %i.z = shufflevector <2 x i8> %i.y, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.s

bb.f:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = mul nsw i32 %i.c, %2
  %i.ac = add nuw nsw i32 %i.ab, %1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2            ; 4 uses
  %i.ag = lshr i16 %i.af, 8
  %i.ah = trunc nuw i16 %i.ag to i8
  %i.ai = lshr i16 %i.af, 3
  %i.aj = trunc i16 %i.ai to i8
  %.tr86 = trunc i16 %i.af to i8
  %i.ak = shl i8 %.tr86, 2
  %i.al = trunc i16 %i.af to i1
  %i.am = sext i1 %i.al to i8
  %i.an = insertelement <4 x i8> poison, i8 %i.ah, i64 0
  %i.ao = insertelement <4 x i8> %i.an, i8 %i.aj, i64 1
  %i.ap = insertelement <4 x i8> %i.ao, i8 %i.ak, i64 2
  %i.aq = insertelement <4 x i8> %i.ap, i8 %i.am, i64 3
  %i.ar = and <4 x i8> %i.aq, <i8 -8, i8 -8, i8 -8, i8 -1>
  br label %bb.s

bb.g:                                             ; preds = %bb.c
  %i.as = load ptr, ptr %0, align 8
  %i.at = mul nsw i32 %i.c, %2
  %i.au = add nuw nsw i32 %i.at, %1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2            ; 3 uses
  %i.ay = lshr i16 %i.ax, 3
  %i.az = lshr i16 %i.ax, 8
  %i.ba = trunc i16 %i.ay to i8
  %i.bb = trunc nuw i16 %i.az to i8
  %i.bc = insertelement <2 x i8> poison, i8 %i.bb, i64 0
  %i.bd = insertelement <2 x i8> %i.bc, i8 %i.ba, i64 1
  %i.be = and <2 x i8> %i.bd, <i8 -8, i8 -4>
  %.tr = trunc i16 %i.ax to i8
  %i.bf = shl i8 %.tr, 3
  %i.bg = shufflevector <2 x i8> %i.be, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bh = insertelement <4 x i8> %i.bg, i8 -1, i64 3
  %i.bi = insertelement <4 x i8> %i.bh, i8 %i.bf, i64 2
  br label %bb.s

bb.h:                                             ; preds = %bb.c
  %i.bj = load ptr, ptr %0, align 8
  %i.bk = mul nsw i32 %i.c, %2
  %i.bl = add nuw nsw i32 %i.bk, %1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2            ; 3 uses
  %i.bp = lshr i16 %i.bo, 8
  %i.bq = lshr i16 %i.bo, 12
  %i.br = trunc nuw i16 %i.bp to i8
  %i.bs = trunc nuw nsw i16 %i.bq to i8
  %i.bt = insertelement <2 x i8> poison, i8 %i.bs, i64 0
  %i.bu = insertelement <2 x i8> %i.bt, i8 %i.br, i64 1
  %i.bv = and <2 x i8> %i.bu, <i8 -1, i8 15>
  %i.bw = trunc i16 %i.bo to i8                   ; 2 uses
  %i.bx = lshr i8 %i.bw, 4
  %i.by = and i8 %i.bw, 15
  %i.bz = shufflevector <2 x i8> %i.bv, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ca = insertelement <4 x i8> %i.bz, i8 %i.bx, i64 2
  %i.cb = insertelement <4 x i8> %i.ca, i8 %i.by, i64 3
  %i.cc = mul nuw <4 x i8> %i.cb, splat (i8 17)
  br label %bb.s

bb.i:                                             ; preds = %bb.c
  %i.cd = load ptr, ptr %0, align 8
  %i.ce = mul nsw i32 %i.c, %2
  %i.cf = add nuw nsw i32 %i.ce, %1
  %i.cg = shl nsw i32 %i.cf, 2
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ch
  %i.cj = load <4 x i8>, ptr %i.ci, align 1
  br label %bb.s

bb.j:                                             ; preds = %bb.c
  %i.ck = load ptr, ptr %0, align 8
  %i.cl = mul nsw i32 %i.c, %2
  %i.cm = add nuw nsw i32 %i.cl, %1
  %i.cn = mul nsw i32 %i.cm, 3
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.co ; 2 uses
  %i.cq = load <2 x i8>, ptr %i.cp, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = shufflevector <2 x i8> %i.cq, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cu = insertelement <4 x i8> %i.ct, i8 -1, i64 3
  %i.cv = insertelement <4 x i8> %i.cu, i8 %i.cs, i64 2
  br label %bb.s

bb.k:                                             ; preds = %bb.c
  %i.cw = load ptr, ptr %0, align 8
  %i.cx = mul nsw i32 %i.c, %2
  %i.cy = add nuw nsw i32 %i.cx, %1
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4
  %i.dc = fmul float %i.db, 2.550000e+02
  %i.dd = fptoui float %i.dc to i8
  %i.de = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 -1>, i8 %i.dd, i64 0
  br label %bb.s

bb.l:                                             ; preds = %bb.c
  %i.df = load ptr, ptr %0, align 8
  %i.dg = mul nsw i32 %i.c, %2
  %i.dh = add nuw nsw i32 %i.dg, %1
  %i.di = mul nsw i32 %i.dh, 3
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dj ; 2 uses
  %i.dl = load <2 x float>, ptr %i.dk, align 4
  %i.dm = fmul <2 x float> %i.dl, splat (float 2.550000e+02)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = fmul float %i.do, 2.550000e+02
  %i.dq = fptoui float %i.dp to i8
  %i.dr = insertelement <4 x i8> <i8 poison, i8 poison, i8 poison, i8 -1>, i8 %i.dq, i64 2
  %i.ds = shufflevector <2 x float> %i.dm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dt = fptoui <4 x float> %i.ds to <4 x i8>
  %i.du = shufflevector <4 x i8> %i.dt, <4 x i8> %i.dr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.s

bb.m:                                             ; preds = %bb.c
  %i.dv = load ptr, ptr %0, align 8
  %i.dw = mul nsw i32 %i.c, %2
  %i.dx = add nuw nsw i32 %i.dw, %1
  %i.dy = shl nsw i32 %i.dx, 2
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.dz
  %i.eb = load <4 x float>, ptr %i.ea, align 4
  %i.ec = fmul <4 x float> %i.eb, splat (float 2.550000e+02)
  %i.ed = fptoui <4 x float> %i.ec to <4 x i8>
  br label %bb.s

bb.n:                                             ; preds = %bb.c
  %i.ee = load ptr, ptr %0, align 8
  %i.ef = mul nsw i32 %i.c, %2
  %i.eg = add nuw nsw i32 %i.ef, %1
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2            ; 2 uses
  %i.ek = zext i16 %i.ej to i32                   ; 2 uses
  %i.el = lshr i32 %i.ek, 10
  %i.em = and i32 %i.el, 31                       ; 2 uses
  %i.en = shl nuw nsw i32 %i.ek, 13               ; 2 uses
  %i.eo = and i32 %i.en, 8380416                  ; 3 uses
  %i.ep = uitofp nneg i32 %i.eo to float
  %i.eq = bitcast float %i.ep to i32              ; 2 uses
  %i.er = lshr i32 %i.eq, 23
  %.signext.i = sext i16 %i.ej to i32
  %i.es = and i32 %.signext.i, -2147483648
  %.not.i = icmp eq i32 %i.em, 0                  ; 2 uses
  %i.et = shl nuw nsw i32 %i.em, 23
  %i.eu = add nuw nsw i32 %i.et, 939524096
  %i.ev = or disjoint i32 %i.eu, %i.eo
  %i.ew = select i1 %.not.i, i32 0, i32 %i.ev
  %i.ex = or disjoint i32 %i.ew, %i.es
  %i.ey = icmp ne i32 %i.eo, 0
  %i.ez = and i1 %.not.i, %i.ey
  %i.fa = and i32 %i.eq, 2139095040
  %i.fb = add nsw i32 %i.fa, -310378496
  %i.fc = sub nsw i32 150, %i.er
  %i.fd = shl i32 %i.en, %i.fc
  %i.fe = and i32 %i.fd, 8380416
  %i.ff = or disjoint i32 %i.fe, %i.fb
  %i.fg = select i1 %i.ez, i32 %i.ff, i32 0
  %i.fh = or i32 %i.ex, %i.fg
  %i.fi = bitcast i32 %i.fh to float
  %i.fj = fmul float %i.fi, 2.550000e+02
  %i.fk = fptoui float %i.fj to i8
  %i.fl = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 -1>, i8 %i.fk, i64 0
  br label %bb.s

bb.o:                                             ; preds = %bb.c
  %i.fm = load ptr, ptr %0, align 8
  %i.fn = mul nsw i32 %i.c, %2
  %i.fo = add nuw nsw i32 %i.fn, %1
  %i.fp = mul nsw i32 %i.fo, 3
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr [2 x i8], ptr %i.fm, i64 %i.fq ; 2 uses
  %i.fs = load i16, ptr %i.fr, align 2            ; 2 uses
  %i.ft = zext i16 %i.fs to i32                   ; 2 uses
  %i.fu = lshr i32 %i.ft, 10
  %i.fv = and i32 %i.fu, 31                       ; 2 uses
  %i.fw = shl nuw nsw i32 %i.ft, 13               ; 2 uses
  %i.fx = and i32 %i.fw, 8380416                  ; 3 uses
  %i.fy = uitofp nneg i32 %i.fx to float
  %i.fz = bitcast float %i.fy to i32              ; 2 uses
  %i.ga = lshr i32 %i.fz, 23
  %.signext.i90 = sext i16 %i.fs to i32
  %i.gb = and i32 %.signext.i90, -2147483648
  %.not.i91 = icmp eq i32 %i.fv, 0                ; 2 uses
  %i.gc = shl nuw nsw i32 %i.fv, 23
  %i.gd = add nuw nsw i32 %i.gc, 939524096
  %i.ge = or disjoint i32 %i.gd, %i.fx
  %i.gf = select i1 %.not.i91, i32 0, i32 %i.ge
  %i.gg = or disjoint i32 %i.gf, %i.gb
  %i.gh = icmp ne i32 %i.fx, 0
  %i.gi = and i1 %.not.i91, %i.gh
  %i.gj = and i32 %i.fz, 2139095040
  %i.gk = add nsw i32 %i.gj, -310378496
  %i.gl = sub nsw i32 150, %i.ga
  %i.gm = shl i32 %i.fw, %i.gl
  %i.gn = and i32 %i.gm, 8380416
  %i.go = or disjoint i32 %i.gn, %i.gk
  %i.gp = select i1 %i.gi, i32 %i.go, i32 0
  %i.gq = or i32 %i.gg, %i.gp
  %i.gr = bitcast i32 %i.gq to float
  %i.gs = fmul float %i.gr, 2.550000e+02
  %i.gt = fptoui float %i.gs to i8
  %i.gu = getelementptr i8, ptr %i.fr, i64 2
  %i.gv = load <2 x i16>, ptr %i.gu, align 2      ; 2 uses
  %i.gw = zext <2 x i16> %i.gv to <2 x i32>       ; 2 uses
  %i.gx = lshr <2 x i32> %i.gw, splat (i32 10)
  %i.gy = and <2 x i32> %i.gx, splat (i32 31)     ; 2 uses
  %i.gz = shl nuw nsw <2 x i32> %i.gw, splat (i32 13) ; 3 uses
  %i.ha = and <2 x i32> %i.gz, splat (i32 8380416) ; 3 uses
  %i.hb = uitofp nneg <2 x i32> %i.ha to <2 x float>
  %i.hc = bitcast <2 x float> %i.hb to <2 x i32>  ; 2 uses
  %i.hd = lshr <2 x i32> %i.hc, splat (i32 23)
  %i.he = sext <2 x i16> %i.gv to <2 x i32>
  %i.hf = and <2 x i32> %i.he, splat (i32 -2147483648)
  %i.hg = icmp eq <2 x i32> %i.gy, zeroinitializer ; 2 uses
  %i.hh = shl nuw nsw <2 x i32> %i.gy, splat (i32 23)
  %i.hi = add nuw nsw <2 x i32> %i.hh, splat (i32 939524096)
  %i.hj = or disjoint <2 x i32> %i.hi, %i.ha
  %i.hk = select <2 x i1> %i.hg, <2 x i32> zeroinitializer, <2 x i32> %i.hj
  %i.hl = or disjoint <2 x i32> %i.hk, %i.hf
  %i.hm = icmp ne <2 x i32> %i.ha, zeroinitializer
  %i.hn = and <2 x i1> %i.hg, %i.hm
  %i.ho = and <2 x i32> %i.hc, splat (i32 2139095040)
  %i.hp = add nsw <2 x i32> %i.ho, splat (i32 -310378496)
  %i.hq = sub nsw <2 x i32> splat (i32 150), %i.hd ; 2 uses
  %i.hr = extractelement <2 x i32> %i.gz, i64 1
  %i.hs = extractelement <2 x i32> %i.hq, i64 1
  %i.ht = shl i32 %i.hr, %i.hs
  %i.hu = extractelement <2 x i32> %i.gz, i64 0
  %i.hv = extractelement <2 x i32> %i.hq, i64 0
  %i.hw = shl i32 %i.hu, %i.hv
  %i.hx = insertelement <2 x i32> poison, i32 %i.hw, i64 0
  %i.hy = insertelement <2 x i32> %i.hx, i32 %i.ht, i64 1
  %i.hz = and <2 x i32> %i.hy, splat (i32 8380416)
  %i.ia = or disjoint <2 x i32> %i.hz, %i.hp
  %i.ib = select <2 x i1> %i.hn, <2 x i32> %i.ia, <2 x i32> zeroinitializer
  %i.ic = or <2 x i32> %i.hl, %i.ib
  %i.id = bitcast <2 x i32> %i.ic to <2 x float>
  %i.ie = fmul <2 x float> %i.id, splat (float 2.550000e+02)
  %i.if = insertelement <4 x i8> <i8 poison, i8 poison, i8 poison, i8 -1>, i8 %i.gt, i64 0
  %i.ig = shufflevector <2 x float> %i.ie, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ih = fptoui <4 x float> %i.ig to <4 x i8>
  %i.ii = shufflevector <4 x i8> %i.if, <4 x i8> %i.ih, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %bb.s

bb.p:                                             ; preds = %bb.c
  %i.ij = load ptr, ptr %0, align 8
  %i.ik = mul nsw i32 %i.c, %2
  %i.il = add nuw nsw i32 %i.ik, %1
  %i.im = shl nsw i32 %i.il, 2
  %i.in = zext nneg i32 %i.im to i64
  %i.io = getelementptr [2 x i8], ptr %i.ij, i64 %i.in
  %i.ip = load <4 x i16>, ptr %i.io, align 2      ; 3 uses
  %i.iq = lshr <4 x i16> %i.ip, splat (i16 10)
  %i.ir = and <4 x i16> %i.iq, splat (i16 31)     ; 2 uses
  %i.is = zext <4 x i16> %i.ip to <4 x i32>
  %i.it = shl nuw nsw <4 x i32> %i.is, splat (i32 13) ; 2 uses
  %i.iu = and <4 x i32> %i.it, splat (i32 8380416) ; 3 uses
  %i.iv = uitofp nneg <4 x i32> %i.iu to <4 x float>
  %i.iw = bitcast <4 x float> %i.iv to <4 x i32>  ; 2 uses
  %i.ix = lshr <4 x i32> %i.iw, splat (i32 23)
  %i.iy = sext <4 x i16> %i.ip to <4 x i32>
  %i.iz = and <4 x i32> %i.iy, splat (i32 -2147483648)
  %i.ja = icmp eq <4 x i16> %i.ir, zeroinitializer ; 2 uses
  %i.jb = zext nneg <4 x i16> %i.ir to <4 x i32>
  %i.jc = shl nuw nsw <4 x i32> %i.jb, splat (i32 23)
  %i.jd = add nuw nsw <4 x i32> %i.jc, splat (i32 939524096)
  %i.je = or disjoint <4 x i32> %i.jd, %i.iu
  %i.jf = select <4 x i1> %i.ja, <4 x i32> zeroinitializer, <4 x i32> %i.je
  %i.jg = or disjoint <4 x i32> %i.jf, %i.iz
  %i.jh = icmp ne <4 x i32> %i.iu, zeroinitializer
  %i.ji = and <4 x i1> %i.ja, %i.jh
  %i.jj = and <4 x i32> %i.iw, splat (i32 2139095040)
  %i.jk = add nsw <4 x i32> %i.jj, splat (i32 -310378496)
  %i.jl = sub nsw <4 x i32> splat (i32 150), %i.ix
  %i.jm = shl <4 x i32> %i.it, %i.jl
  %i.jn = and <4 x i32> %i.jm, splat (i32 8380416)
  %i.jo = or disjoint <4 x i32> %i.jn, %i.jk
  %i.jp = select <4 x i1> %i.ji, <4 x i32> %i.jo, <4 x i32> zeroinitializer
  %i.jq = or <4 x i32> %i.jg, %i.jp
  %i.jr = bitcast <4 x i32> %i.jq to <4 x float>
  %i.js = fmul <4 x float> %i.jr, splat (float 2.550000e+02)
  %i.jt = fptoui <4 x float> %i.js to <4 x i8>
  br label %bb.s

bb.q:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.73) #52
  br label %bb.s

bb.r:                                             ; preds = %bb.b, %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.74, i32 noundef %1, i32 noundef %2) #52
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %i.ju = phi <4 x i8> [ zeroinitializer, %bb.q ], [ %i.r, %bb.d ], [ %i.z, %bb.e ], [ %i.ar, %bb.f ], [ %i.bi, %bb.g ], [ %i.cc, %bb.h ], [ %i.cj, %bb.i ], [ %i.cv, %bb.j ], [ %i.de, %bb.k ], [ %i.du, %bb.l ], [ %i.ed, %bb.m ], [ %i.fl, %bb.n ], [ %i.ii, %bb.o ], [ %i.jt, %bb.p ], [ zeroinitializer, %bb.r ]
  %i.jv = bitcast <4 x i8> %i.ju to i32
  ret i32 %i.jv
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageClearBackground(ptr nofree noundef readonly captures(none) %0, i32 %1) local_unnamed_addr #35 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ImageDrawPixel(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 %1)
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  switch i32 %i.k, label %bb.m [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.f
    i32 5, label %bb.f
    i32 6, label %bb.f
    i32 7, label %bb.g
    i32 4, label %.thread
    i32 8, label %bb.g
    i32 9, label %bb.h
    i32 10, label %bb.i
    i32 11, label %bb.f
    i32 12, label %bb.j
    i32 13, label %bb.k
    i32 24, label %bb.l
    i32 23, label %bb.e
    i32 20, label %bb.e
    i32 17, label %bb.e
    i32 16, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %bb.m

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %bb.m

bb.g:                                             ; preds = %bb.d, %bb.d
  br label %bb.m

bb.h:                                             ; preds = %bb.d
  br label %.thread

bb.i:                                             ; preds = %bb.d
  br label %.thread

bb.j:                                             ; preds = %bb.d
  br label %.thread

bb.k:                                             ; preds = %bb.d
  br label %.thread

bb.l:                                             ; preds = %bb.d
  br label %.thread

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.0.i = phi i32 [ 0, %bb.d ], [ 1, %bb.e ], [ 2, %bb.f ], [ 4, %bb.g ]
  %i.l = and i32 %i.k, -2
  %or.cond3.i = icmp eq i32 %i.l, 14
  br i1 %or.cond3.i, label %GetPixelDataSize.exit, label %.thread

.thread:                                          ; preds = %bb.d, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %i.m = phi i32 [ %.0.i, %bb.m ], [ 8, %bb.k ], [ 6, %bb.j ], [ 16, %bb.i ], [ 12, %bb.h ], [ 0, %bb.l ], [ 3, %bb.d ]
  %i.n = and i32 %i.k, -8
  %or.cond5.i = icmp eq i32 %i.n, 16
  %spec.select.i = select i1 %or.cond5.i, i32 16, i32 %i.m
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.m, %.thread
  %.016.i = phi i32 [ %spec.select.i, %.thread ], [ 8, %bb.m ] ; 2 uses
  %i.o = load i32, ptr %i.c, align 8
  %i.p = load i32, ptr %i.f, align 4
  %i.q = mul nsw i32 %i.p, %i.o                   ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %GetPixelDataSize.exit, %.lr.ph
  %.025 = phi i32 [ %i.z, %.lr.ph ], [ 1, %GetPixelDataSize.exit ] ; 4 uses
  %i.s = sub nsw i32 %i.q, %.025
  %i.t = tail call i32 @llvm.smin.i32(i32 %.025, i32 %i.s)
  %i.u = mul nsw i32 %.025, %.016.i
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.i, i64 %i.v
  %i.x = mul nsw i32 %i.t, %.016.i
  %i.y = sext i32 %i.x to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.i, i64 %i.y, i1 false)
  %i.z = shl nsw i32 %.025, 1                     ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.q
  br i1 %i.aa, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %GetPixelDataSize.exit, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawPixel(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 %3) local_unnamed_addr #22 {
bb.a:
  %.sroa.0172.0.extract.trunc = trunc i32 %3 to i8 ; 5 uses
  %i.a = trunc i32 %3 to i8
  %i.b = insertelement <2 x i8> poison, i8 %i.a, i64 0
  %i.c = trunc i32 %3 to i8
  %i.d = trunc i32 %3 to i8
  %.sroa.40.0.extract.shift = lshr i32 %3, 24     ; 2 uses
  %.sroa.27.0.extract.shift = lshr i32 %3, 16     ; 5 uses
  %.sroa.14.0.extract.shift = lshr i32 %3, 8      ; 2 uses
  %i.e = trunc i32 %.sroa.14.0.extract.shift to i8
  %i.f = insertelement <2 x i8> %i.b, i8 %i.e, i64 1
  %.sroa.14.0.extract.trunc = trunc i32 %.sroa.14.0.extract.shift to i8 ; 12 uses
  %i.g = trunc i32 %.sroa.27.0.extract.shift to i8
  %i.h = insertelement <2 x i8> poison, i8 %i.g, i64 0
  %i.i = insertelement <2 x i8> %i.h, i8 %i.c, i64 1
  %i.j = trunc i32 %.sroa.27.0.extract.shift to i8
  %i.k = insertelement <2 x i8> poison, i8 %i.j, i64 0
  %i.l = insertelement <2 x i8> %i.k, i8 %i.d, i64 1
  %i.m = trunc i32 %3 to i8
  %i.n = trunc i32 %.sroa.27.0.extract.shift to i8
  %i.o = insertelement <2 x i8> poison, i8 %i.n, i64 0
  %i.p = insertelement <2 x i8> %i.o, i8 %i.m, i64 1
  %i.q = trunc i32 %3 to i8
  %i.r = trunc i32 %.sroa.27.0.extract.shift to i8
  %i.s = insertelement <2 x i8> poison, i8 %i.r, i64 0
  %i.t = insertelement <2 x i8> %i.s, i8 %i.q, i64 1 ; 3 uses
  %.sroa.27.0.extract.trunc = trunc i32 %.sroa.27.0.extract.shift to i8 ; 9 uses
  %i.u = trunc i32 %3 to i8
  %i.v = insertelement <2 x i8> poison, i8 %i.u, i64 0
  %i.w = trunc nuw i32 %.sroa.40.0.extract.shift to i8
  %i.x = insertelement <2 x i8> %i.v, i8 %i.w, i64 1
  %.sroa.40.0.extract.trunc = trunc nuw i32 %.sroa.40.0.extract.shift to i8 ; 5 uses
  %i.y = load ptr, ptr %0, align 8                ; 14 uses
  %i.z = icmp eq ptr %i.y, null
  %i.aa = icmp slt i32 %1, 0
  %or.cond = or i1 %i.aa, %i.z
  br i1 %or.cond, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.ac = load i32, ptr %i.ab, align 8            ; 14 uses
  %i.ad = icmp sge i32 %1, %i.ac
  %i.ae = icmp slt i32 %2, 0
  %or.cond3 = or i1 %i.ae, %i.ad
  br i1 %or.cond3, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i32, ptr %i.af, align 4
  %.not = icmp slt i32 %2, %i.ag
  br i1 %.not, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ai = load i32, ptr %i.ah, align 4
  switch i32 %i.ai, label %bb.r [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 4, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
  ]

bb.e:                                             ; preds = %bb.d
  %i.aj = uitofp <2 x i8> %i.i to <2 x float>
  %i.ak = uitofp i8 %.sroa.14.0.extract.trunc to float
  %i.al = fdiv nnan float %i.ak, 2.550000e+02
  %i.am = fmul nnan float %i.al, 5.870000e-01
  %i.an = fdiv nnan <2 x float> %i.aj, splat (float 2.550000e+02)
  %i.ao = fmul nnan <2 x float> %i.an, <float 1.140000e-01, float 2.990000e-01> ; 2 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 1
  %i.aq = fadd float %i.ap, %i.am
  %i.ar = extractelement <2 x float> %i.ao, i64 0
  %i.as = fadd float %i.ar, %i.aq
  %i.at = fmul float %i.as, 2.550000e+02
  %i.au = fptoui float %i.at to i8
  %i.av = mul nsw i32 %i.ac, %2
  %i.aw = add nuw nsw i32 %i.av, %1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ax
  store i8 %i.au, ptr %i.ay, align 1
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.az = uitofp <2 x i8> %i.l to <2 x float>
  %i.ba = uitofp i8 %.sroa.14.0.extract.trunc to float
  %i.bb = fdiv nnan float %i.ba, 2.550000e+02
  %i.bc = fmul nnan float %i.bb, 5.870000e-01
  %i.bd = fdiv nnan <2 x float> %i.az, splat (float 2.550000e+02)
  %i.be = fmul nnan <2 x float> %i.bd, <float 1.140000e-01, float 2.990000e-01> ; 2 uses
  %i.bf = extractelement <2 x float> %i.be, i64 1
  %i.bg = fadd float %i.bf, %i.bc
  %i.bh = extractelement <2 x float> %i.be, i64 0
  %i.bi = fadd float %i.bh, %i.bg
  %i.bj = fmul float %i.bi, 2.550000e+02
  %i.bk = fptoui float %i.bj to i8
  %i.bl = mul nsw i32 %i.ac, %2
  %i.bm = add nuw nsw i32 %i.bl, %1
  %i.bn = shl nuw nsw i32 %i.bm, 1
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bo
  store i8 %i.bk, ptr %i.bp, align 1
  %i.bq = load ptr, ptr %0, align 8
  %i.br = load i32, ptr %i.ab, align 8
  %i.bs = mul nsw i32 %i.br, %2
  %i.bt = add nsw i32 %i.bs, %1
  %i.bu = shl nsw i32 %i.bt, 1
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 1
  store i8 %.sroa.40.0.extract.trunc, ptr %i.bx, align 1
  br label %bb.r

bb.g:                                             ; preds = %bb.d
  %i.by = uitofp <2 x i8> %i.f to <2 x float>
  %i.bz = uitofp i8 %.sroa.27.0.extract.trunc to float
  %i.ca = fdiv nnan float %i.bz, 2.550000e+02
  %i.cb = fmul nnan float %i.ca, 3.100000e+01
  %i.cc = tail call float @llvm.round.f32(float %i.cb)
  %i.cd = fptoui float %i.cc to i8
  %i.ce = fdiv nnan <2 x float> %i.by, splat (float 2.550000e+02)
  %i.cf = fmul nnan <2 x float> %i.ce, <float 3.100000e+01, float 6.300000e+01>
  %i.cg = tail call <2 x float> @llvm.round.v2f32(<2 x float> %i.cf)
  %i.ch = fptoui <2 x float> %i.cg to <2 x i8>
  %i.ci = zext <2 x i8> %i.ch to <2 x i16>
  %i.cj = shl <2 x i16> %i.ci, <i16 11, i16 5>    ; 2 uses
  %i.ck = zext i8 %i.cd to i16
  %i.cl = extractelement <2 x i16> %i.cj, i64 0
  %i.cm = or disjoint i16 %i.cl, %i.ck
  %i.cn = extractelement <2 x i16> %i.cj, i64 1
  %i.co = or i16 %i.cm, %i.cn
  %i.cp = mul nsw i32 %i.ac, %2
  %i.cq = add nuw nsw i32 %i.cp, %1
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.cr
  store i16 %i.co, ptr %i.cs, align 2
  br label %bb.r

bb.h:                                             ; preds = %bb.d
  %i.ct = uitofp <2 x i8> %i.x to <2 x float>
  %i.cu = insertelement <2 x i8> poison, i8 %.sroa.14.0.extract.trunc, i64 0
  %i.cv = insertelement <2 x i8> %i.cu, i8 %.sroa.27.0.extract.trunc, i64 1
  %i.cw = uitofp <2 x i8> %i.cv to <2 x float>
  %i.cx = fdiv <2 x float> %i.ct, splat (float 2.550000e+02) ; 2 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 0
  %i.cz = fmul nnan float %i.cy, 3.100000e+01
  %i.da = tail call float @llvm.round.f32(float %i.cz)
  %i.db = fptoui float %i.da to i8
  %i.dc = extractelement <2 x float> %i.cx, i64 1
  %i.dd = fcmp ogt float %i.dc, f0x3E48C8C9
  %i.de = zext i8 %i.db to i16
  %i.df = shl i16 %i.de, 11
  %i.dg = fdiv nnan <2 x float> %i.cw, splat (float 2.550000e+02)
  %i.dh = fmul nnan <2 x float> %i.dg, splat (float 3.100000e+01)
  %i.di = tail call <2 x float> @llvm.round.v2f32(<2 x float> %i.dh)
  %i.dj = fptoui <2 x float> %i.di to <2 x i8>
  %i.dk = zext <2 x i8> %i.dj to <2 x i16>
  %i.dl = shl nuw nsw <2 x i16> %i.dk, <i16 6, i16 1> ; 2 uses
  %i.dm = zext i1 %i.dd to i16
  %i.dn = or disjoint i16 %i.df, %i.dm
  %i.do = extractelement <2 x i16> %i.dl, i64 0
  %i.dp = or i16 %i.dn, %i.do
  %i.dq = extractelement <2 x i16> %i.dl, i64 1
  %i.dr = or i16 %i.dp, %i.dq
  %i.ds = mul nsw i32 %i.ac, %2
  %i.dt = add nuw nsw i32 %i.ds, %1
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.du
  store i16 %i.dr, ptr %i.dv, align 2
  br label %bb.r

bb.i:                                             ; preds = %bb.d
  %i.dw = insertelement <4 x i8> poison, i8 %.sroa.40.0.extract.trunc, i64 0
  %i.dx = insertelement <4 x i8> %i.dw, i8 %.sroa.27.0.extract.trunc, i64 1
  %i.dy = insertelement <4 x i8> %i.dx, i8 %.sroa.14.0.extract.trunc, i64 2
  %i.dz = shufflevector <2 x i8> %i.t, <2 x i8> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ea = shufflevector <4 x i8> %i.dy, <4 x i8> %i.dz, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.eb = uitofp <4 x i8> %i.ea to <4 x float>
  %i.ec = fdiv nnan <4 x float> %i.eb, splat (float 2.550000e+02)
  %i.ed = fmul nnan <4 x float> %i.ec, splat (float 1.500000e+01)
  %i.ee = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.ed)
  %i.ef = fptoui <4 x float> %i.ee to <4 x i8>
  %i.eg = zext <4 x i8> %i.ef to <4 x i16>
  %i.eh = shl <4 x i16> %i.eg, <i16 0, i16 4, i16 8, i16 12>
  %i.ei = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.eh)
  %i.ej = mul nsw i32 %i.ac, %2
  %i.ek = add nuw nsw i32 %i.ej, %1
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.el
  store i16 %i.ei, ptr %i.em, align 2
  br label %bb.r

bb.j:                                             ; preds = %bb.d
  %i.en = mul nsw i32 %i.ac, %2
  %i.eo = add nuw nsw i32 %i.en, %1
  %i.ep = mul nsw i32 %i.eo, 3
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.eq
  store i8 %.sroa.0172.0.extract.trunc, ptr %i.er, align 1
  %i.es = load ptr, ptr %0, align 8
  %i.et = load i32, ptr %i.ab, align 8
  %i.eu = mul nsw i32 %i.et, %2
  %i.ev = add nsw i32 %i.eu, %1
  %i.ew = mul nsw i32 %i.ev, 3
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr i8, ptr %i.es, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 1
  store i8 %.sroa.14.0.extract.trunc, ptr %i.ez, align 1
  %i.fa = load ptr, ptr %0, align 8
  %i.fb = load i32, ptr %i.ab, align 8
  %i.fc = mul nsw i32 %i.fb, %2
  %i.fd = add nsw i32 %i.fc, %1
  %i.fe = mul nsw i32 %i.fd, 3
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr i8, ptr %i.fa, i64 %i.ff
  %i.fh = getelementptr i8, ptr %i.fg, i64 2
  store i8 %.sroa.27.0.extract.trunc, ptr %i.fh, align 1
  br label %bb.r

bb.k:                                             ; preds = %bb.d
  %i.fi = mul nsw i32 %i.ac, %2
  %i.fj = add nuw nsw i32 %i.fi, %1
  %i.fk = shl nsw i32 %i.fj, 2
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.fl
  store i8 %.sroa.0172.0.extract.trunc, ptr %i.fm, align 1
  %i.fn = load ptr, ptr %0, align 8
  %i.fo = load i32, ptr %i.ab, align 8
  %i.fp = mul nsw i32 %i.fo, %2
  %i.fq = add nsw i32 %i.fp, %1
  %i.fr = shl nsw i32 %i.fq, 2
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr i8, ptr %i.fn, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 1
  store i8 %.sroa.14.0.extract.trunc, ptr %i.fu, align 1
  %i.fv = load ptr, ptr %0, align 8
  %i.fw = load i32, ptr %i.ab, align 8
  %i.fx = mul nsw i32 %i.fw, %2
  %i.fy = add nsw i32 %i.fx, %1
  %i.fz = shl nsw i32 %i.fy, 2
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr i8, ptr %i.fv, i64 %i.ga
  %i.gc = getelementptr i8, ptr %i.gb, i64 2
  store i8 %.sroa.27.0.extract.trunc, ptr %i.gc, align 1
  %i.gd = load ptr, ptr %0, align 8
  %i.ge = load i32, ptr %i.ab, align 8
  %i.gf = mul nsw i32 %i.ge, %2
  %i.gg = add nsw i32 %i.gf, %1
  %i.gh = shl nsw i32 %i.gg, 2
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr i8, ptr %i.gd, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 3
  store i8 %.sroa.40.0.extract.trunc, ptr %i.gk, align 1
  br label %bb.r

bb.l:                                             ; preds = %bb.d
  %i.gl = uitofp <2 x i8> %i.p to <2 x float>
  %i.gm = uitofp i8 %.sroa.14.0.extract.trunc to float
  %i.gn = fdiv nnan float %i.gm, 2.550000e+02
  %i.go = fmul nnan float %i.gn, 5.870000e-01
  %i.gp = fdiv nnan <2 x float> %i.gl, splat (float 2.550000e+02)
  %i.gq = fmul nnan <2 x float> %i.gp, <float 1.140000e-01, float 2.990000e-01> ; 2 uses
  %i.gr = extractelement <2 x float> %i.gq, i64 1
  %i.gs = fadd float %i.gr, %i.go
  %i.gt = extractelement <2 x float> %i.gq, i64 0
  %i.gu = fadd float %i.gt, %i.gs
  %i.gv = mul nsw i32 %i.ac, %2
  %i.gw = add nuw nsw i32 %i.gv, %1
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.gx
  store float %i.gu, ptr %i.gy, align 4
  br label %bb.r

bb.m:                                             ; preds = %bb.d
  %i.gz = uitofp i8 %.sroa.0172.0.extract.trunc to float
  %i.ha = fdiv float %i.gz, 2.550000e+02
  %i.hb = insertelement <2 x i8> poison, i8 %.sroa.14.0.extract.trunc, i64 0
  %i.hc = insertelement <2 x i8> %i.hb, i8 %.sroa.27.0.extract.trunc, i64 1
  %i.hd = uitofp <2 x i8> %i.hc to <2 x float>
  %i.he = fdiv <2 x float> %i.hd, splat (float 2.550000e+02) ; 2 uses
  %i.hf = mul nsw i32 %i.ac, %2
  %i.hg = add nuw nsw i32 %i.hf, %1
  %i.hh = mul nsw i32 %i.hg, 3
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.hi
  store float %i.ha, ptr %i.hj, align 4
  %i.hk = load ptr, ptr %0, align 8
  %i.hl = load i32, ptr %i.ab, align 8
  %i.hm = mul nsw i32 %i.hl, %2
  %i.hn = add nsw i32 %i.hm, %1
  %i.ho = mul nsw i32 %i.hn, 3
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr [4 x i8], ptr %i.hk, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hq, i64 4
  %i.hs = extractelement <2 x float> %i.he, i64 0
  store float %i.hs, ptr %i.hr, align 4
  %i.ht = load ptr, ptr %0, align 8
  %i.hu = load i32, ptr %i.ab, align 8
  %i.hv = mul nsw i32 %i.hu, %2
  %i.hw = add nsw i32 %i.hv, %1
  %i.hx = mul nsw i32 %i.hw, 3
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr [4 x i8], ptr %i.ht, i64 %i.hy
  %i.ia = getelementptr i8, ptr %i.hz, i64 8
  %i.ib = extractelement <2 x float> %i.he, i64 1
  store float %i.ib, ptr %i.ia, align 4
  br label %bb.r

bb.n:                                             ; preds = %bb.d
  %i.ic = shufflevector <2 x i8> %i.t, <2 x i8> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.id = insertelement <4 x i8> %i.ic, i8 %.sroa.14.0.extract.trunc, i64 1
  %i.ie = insertelement <4 x i8> %i.id, i8 %.sroa.27.0.extract.trunc, i64 2
  %i.if = insertelement <4 x i8> %i.ie, i8 %.sroa.40.0.extract.trunc, i64 3
  %i.ig = uitofp <4 x i8> %i.if to <4 x float>
  %i.ih = fdiv <4 x float> %i.ig, splat (float 2.550000e+02) ; 4 uses
  %i.ii = mul nsw i32 %i.ac, %2
  %i.ij = add nuw nsw i32 %i.ii, %1
  %i.ik = shl nsw i32 %i.ij, 2
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.il
  %i.in = extractelement <4 x float> %i.ih, i64 0
  store float %i.in, ptr %i.im, align 4
  %i.io = load ptr, ptr %0, align 8
  %i.ip = load i32, ptr %i.ab, align 8
  %i.iq = mul nsw i32 %i.ip, %2
  %i.ir = add nsw i32 %i.iq, %1
  %i.is = shl nsw i32 %i.ir, 2
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr [4 x i8], ptr %i.io, i64 %i.it
  %i.iv = getelementptr i8, ptr %i.iu, i64 4
  %i.iw = extractelement <4 x float> %i.ih, i64 1
  store float %i.iw, ptr %i.iv, align 4
  %i.ix = load ptr, ptr %0, align 8
  %i.iy = load i32, ptr %i.ab, align 8
  %i.iz = mul nsw i32 %i.iy, %2
  %i.ja = add nsw i32 %i.iz, %1
  %i.jb = shl nsw i32 %i.ja, 2
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr [4 x i8], ptr %i.ix, i64 %i.jc
  %i.je = getelementptr i8, ptr %i.jd, i64 8
  %i.jf = extractelement <4 x float> %i.ih, i64 2
  store float %i.jf, ptr %i.je, align 4
  %i.jg = load ptr, ptr %0, align 8
  %i.jh = load i32, ptr %i.ab, align 8
  %i.ji = mul nsw i32 %i.jh, %2
  %i.jj = add nsw i32 %i.ji, %1
  %i.jk = shl nsw i32 %i.jj, 2
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr [4 x i8], ptr %i.jg, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.jm, i64 12
  %i.jo = extractelement <4 x float> %i.ih, i64 3
  store float %i.jo, ptr %i.jn, align 4
  br label %bb.r

bb.o:                                             ; preds = %bb.d
  %i.jp = uitofp <2 x i8> %i.t to <2 x float>
  %i.jq = uitofp i8 %.sroa.14.0.extract.trunc to float
  %i.jr = fdiv nnan float %i.jq, 2.550000e+02
  %i.js = fmul nnan float %i.jr, 5.870000e-01
  %i.jt = fdiv nnan <2 x float> %i.jp, splat (float 2.550000e+02)
  %i.ju = fmul nnan <2 x float> %i.jt, <float 1.140000e-01, float 2.990000e-01> ; 2 uses
  %i.jv = extractelement <2 x float> %i.ju, i64 1
  %i.jw = fadd float %i.jv, %i.js
  %i.jx = extractelement <2 x float> %i.ju, i64 0
  %i.jy = fadd float %i.jx, %i.jw
  %i.jz = tail call fastcc zeroext i16 @FloatToHalf(float noundef %i.jy)
  %i.ka = mul nsw i32 %i.ac, %2
  %i.kb = add nuw nsw i32 %i.ka, %1
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.kc
  store i16 %i.jz, ptr %i.kd, align 2
  br label %bb.r

bb.p:                                             ; preds = %bb.d
  %i.ke = uitofp i8 %.sroa.0172.0.extract.trunc to float
  %i.kf = fdiv float %i.ke, 2.550000e+02
  %i.kg = insertelement <2 x i8> poison, i8 %.sroa.14.0.extract.trunc, i64 0
  %i.kh = insertelement <2 x i8> %i.kg, i8 %.sroa.27.0.extract.trunc, i64 1
  %i.ki = uitofp <2 x i8> %i.kh to <2 x float>
  %i.kj = fdiv <2 x float> %i.ki, splat (float 2.550000e+02) ; 2 uses
  %i.kk = tail call fastcc zeroext i16 @FloatToHalf(float noundef %i.kf)
  %i.kl = mul nsw i32 %i.ac, %2
  %i.km = add nuw nsw i32 %i.kl, %1
  %i.kn = mul nsw i32 %i.km, 3
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.ko
  store i16 %i.kk, ptr %i.kp, align 2
  %i.kq = extractelement <2 x float> %i.kj, i64 0
  %i.kr = tail call fastcc zeroext i16 @FloatToHalf(float noundef %i.kq)
  %i.ks = load ptr, ptr %0, align 8
  %i.kt = load i32, ptr %i.ab, align 8
  %i.ku = mul nsw i32 %i.kt, %2
  %i.kv = add nsw i32 %i.ku, %1
  %i.kw = mul nsw i32 %i.kv, 3
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr [2 x i8], ptr %i.ks, i64 %i.kx
  %i.kz = getelementptr i8, ptr %i.ky, i64 2
  store i16 %i.kr, ptr %i.kz, align 2
  %i.la = extractelement <2 x float> %i.kj, i64 1
  %i.lb = tail call fastcc zeroext i16 @FloatToHalf(float noundef %i.la)
  %i.lc = load ptr, ptr %0, align 8
  %i.ld = load i32, ptr %i.ab, align 8
  %i.le = mul nsw i32 %i.ld, %2
  %i.lf = add nsw i32 %i.le, %1
  %i.lg = mul nsw i32 %i.lf, 3
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr [2 x i8], ptr %i.lc, i64 %i.lh
  %i.lj = getelementptr i8, ptr %i.li, i64 4
  store i16 %i.lb, ptr %i.lj, align 2
  br label %bb.r

bb.q:                                             ; preds = %bb.d
  %i.lk = insertelement <4 x i8> poison, i8 %.sroa.0172.0.extract.trunc, i64 0
  %i.ll = insertelement <4 x i8> %i.lk, i8 %.sroa.14.0.extract.trunc, i64 1
  %i.lm = insertelement <4 x i8> %i.ll, i8 %.sroa.27.0.extract.trunc, i64 2
  %i.ln = insertelement <4 x i8> %i.lm, i8 %.sroa.40.0.extract.trunc, i64 3
  %i.lo = uitofp <4 x i8> %i.ln to <4 x float>
  %i.lp = fdiv <4 x float> %i.lo, splat (float 2.550000e+02) ; 4 uses
  %i.lq = extractelement <4 x float> %i.lp, i64 0
  %i.lr = tail call fastcc zeroext i16 @FloatToHalf(float noundef %i.lq)
  %i.ls = mul nsw i32 %i.ac, %2
  %i.lt = add nuw nsw i32 %i.ls, %1
  %i.lu = shl nsw i32 %i.lt, 2
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.lv
  store i16 %i.lr, ptr %i.lw, align 2
  %i.lx = extractelement <4 x float> %i.lp, i64 1
  %i.ly = tail call fastcc zeroext i16 @FloatToHalf(float noundef %i.lx)
  %i.lz = load ptr, ptr %0, align 8
  %i.ma = load i32, ptr %i.ab, align 8
  %i.mb = mul nsw i32 %i.ma, %2
  %i.mc = add nsw i32 %i.mb, %1
  %i.md = shl nsw i32 %i.mc, 2
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr [2 x i8], ptr %i.lz, i64 %i.me
  %i.mg = getelementptr i8, ptr %i.mf, i64 2
  store i16 %i.ly, ptr %i.mg, align 2
  %i.mh = extractelement <4 x float> %i.lp, i64 2
  %i.mi = tail call fastcc zeroext i16 @FloatToHalf(float noundef %i.mh)
  %i.mj = load ptr, ptr %0, align 8
  %i.mk = load i32, ptr %i.ab, align 8
  %i.ml = mul nsw i32 %i.mk, %2
  %i.mm = add nsw i32 %i.ml, %1
  %i.mn = shl nsw i32 %i.mm, 2
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr [2 x i8], ptr %i.mj, i64 %i.mo
  %i.mq = getelementptr i8, ptr %i.mp, i64 4
  store i16 %i.mi, ptr %i.mq, align 2
  %i.mr = extractelement <4 x float> %i.lp, i64 3
  %i.ms = tail call fastcc zeroext i16 @FloatToHalf(float noundef %i.mr)
  %i.mt = load ptr, ptr %0, align 8
  %i.mu = load i32, ptr %i.ab, align 8
  %i.mv = mul nsw i32 %i.mu, %2
  %i.mw = add nsw i32 %i.mv, %1
  %i.mx = shl nsw i32 %i.mw, 2
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr [2 x i8], ptr %i.mt, i64 %i.my
  %i.na = getelementptr i8, ptr %i.mz, i64 6
  store i16 %i.ms, ptr %i.na, align 2
  br label %bb.r

bb.r:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawPixelV(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, i32 %2) local_unnamed_addr #36 {
bb.a:
  %.sroa.01.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = fptosi float %.sroa.01.0.vec.extract to i32
  %.sroa.01.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.b = fptosi float %.sroa.01.4.vec.extract to i32
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.a, i32 noundef %i.b, i32 %2)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawLine(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 %5) local_unnamed_addr #37 {
bb.a:
  %i.a = sub nsw i32 %4, %2                       ; 4 uses
  %i.b = sub nsw i32 %3, %1                       ; 4 uses
  %i.c = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true)
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true)
  %i.e = icmp samesign ugt i32 %i.c, %i.d         ; 3 uses
  %spec.select = select i1 %i.e, i32 %i.a, i32 %i.b ; 3 uses
  %.inv = icmp sgt i32 %spec.select, -1
  %.041 = select i1 %.inv, i32 1, i32 -1          ; 2 uses
  %i.f = icmp eq i32 %spec.select, 0
  br i1 %i.f, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.a
  %.1 = tail call i32 @llvm.abs.i32(i32 %spec.select, i1 true)
  %spec.select46 = select i1 %i.e, i32 %i.b, i32 %i.a
  %i.g = shl i32 %spec.select46, 16
  %i.h = sdiv i32 %i.g, %.1                       ; 2 uses
  br i1 %i.e, label %.lr.ph55, label %.lr.ph

.lr.ph55:                                         ; preds = %.thread, %.lr.ph55
  %.03954 = phi i32 [ %i.m, %.lr.ph55 ], [ 0, %.thread ] ; 2 uses
  %.04053 = phi i32 [ %i.l, %.lr.ph55 ], [ 0, %.thread ] ; 2 uses
  %i.i = ashr i32 %.03954, 16
  %i.j = add nsw i32 %i.i, %1
  %i.k = add nsw i32 %.04053, %2
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.j, i32 noundef %i.k, i32 %5)
  %i.l = add nsw i32 %.04053, %.041               ; 2 uses
  %i.m = add nsw i32 %.03954, %i.h
  %.not45 = icmp eq i32 %i.l, %i.a
  br i1 %.not45, label %.loopexit, label %.lr.ph55

.lr.ph:                                           ; preds = %.thread, %.lr.ph
  %.051 = phi i32 [ %i.r, %.lr.ph ], [ 0, %.thread ] ; 2 uses
  %.03850 = phi i32 [ %i.q, %.lr.ph ], [ 0, %.thread ] ; 2 uses
  %i.n = add nsw i32 %.03850, %1
  %i.o = ashr i32 %.051, 16
  %i.p = add nsw i32 %i.o, %2
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.n, i32 noundef %i.p, i32 %5)
  %i.q = add nsw i32 %.03850, %.041               ; 2 uses
  %i.r = add nsw i32 %.051, %i.h
  %.not = icmp eq i32 %i.q, %i.b
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph55, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawLineV(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, i32 %3) local_unnamed_addr #38 {
bb.a:
  %i.a = shufflevector <2 x float> %2, <2 x float> %1, <2 x i32> <i32 0, i32 2>
  %i.b = fadd <2 x float> %i.a, splat (float 5.000000e-01)
  %i.c = fptosi <2 x float> %i.b to <2 x i32>     ; 2 uses
  %i.d = shufflevector <2 x float> %2, <2 x float> %1, <2 x i32> <i32 1, i32 3>
  %i.e = fadd <2 x float> %i.d, splat (float 5.000000e-01)
  %i.f = fptosi <2 x float> %i.e to <2 x i32>     ; 2 uses
  %i.g = extractelement <2 x i32> %i.f, i64 0
  %i.h = extractelement <2 x i32> %i.f, i64 1     ; 3 uses
  %i.i = sub nsw i32 %i.g, %i.h                   ; 4 uses
  %i.j = extractelement <2 x i32> %i.c, i64 0
  %i.k = extractelement <2 x i32> %i.c, i64 1     ; 3 uses
  %i.l = sub nsw i32 %i.j, %i.k                   ; 4 uses
  %i.m = tail call i32 @llvm.abs.i32(i32 %i.i, i1 true)
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.l, i1 true)
  %i.o = icmp samesign ugt i32 %i.m, %i.n         ; 3 uses
  %spec.select.i = select i1 %i.o, i32 %i.i, i32 %i.l ; 3 uses
  %.inv.i = icmp sgt i32 %spec.select.i, -1
  %.041.i = select i1 %.inv.i, i32 1, i32 -1      ; 2 uses
  %i.p = icmp eq i32 %spec.select.i, 0
  br i1 %i.p, label %ImageDrawLine.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.a
  %.1.i = tail call i32 @llvm.abs.i32(i32 %spec.select.i, i1 true)
  %spec.select46.i = select i1 %i.o, i32 %i.l, i32 %i.i
  %i.q = shl i32 %spec.select46.i, 16
  %i.r = sdiv i32 %i.q, %.1.i                     ; 2 uses
  br i1 %i.o, label %.lr.ph55.i, label %.lr.ph.i

.lr.ph55.i:                                       ; preds = %.thread.i, %.lr.ph55.i
  %.03954.i = phi i32 [ %i.w, %.lr.ph55.i ], [ 0, %.thread.i ] ; 2 uses
  %.04053.i = phi i32 [ %i.v, %.lr.ph55.i ], [ 0, %.thread.i ] ; 2 uses
  %i.s = ashr i32 %.03954.i, 16
  %i.t = add nsw i32 %i.s, %i.k
  %i.u = add nsw i32 %.04053.i, %i.h
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.t, i32 noundef %i.u, i32 %3)
  %i.v = add nsw i32 %.04053.i, %.041.i           ; 2 uses
  %i.w = add nsw i32 %.03954.i, %i.r
  %.not45.i = icmp eq i32 %i.v, %i.i
  br i1 %.not45.i, label %ImageDrawLine.exit, label %.lr.ph55.i

.lr.ph.i:                                         ; preds = %.thread.i, %.lr.ph.i
  %.051.i = phi i32 [ %i.ab, %.lr.ph.i ], [ 0, %.thread.i ] ; 2 uses
  %.03850.i = phi i32 [ %i.aa, %.lr.ph.i ], [ 0, %.thread.i ] ; 2 uses
  %i.x = add nsw i32 %.03850.i, %i.k
  %i.y = ashr i32 %.051.i, 16
  %i.z = add nsw i32 %i.y, %i.h
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.x, i32 noundef %i.z, i32 %3)
  %i.aa = add nsw i32 %.03850.i, %.041.i          ; 2 uses
  %i.ab = add nsw i32 %.051.i, %i.r
  %.not.i = icmp eq i32 %i.aa, %i.l
  br i1 %.not.i, label %ImageDrawLine.exit, label %.lr.ph.i

ImageDrawLine.exit:                               ; preds = %.lr.ph.i, %.lr.ph55.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawLineEx(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, i32 noundef %3, i32 %4) local_unnamed_addr #38 {
bb.a:
  %i.a = fadd <2 x float> %1, splat (float 5.000000e-01)
  %i.b = fptosi <2 x float> %i.a to <2 x i32>     ; 11 uses
  %i.c = fadd <2 x float> %2, splat (float 5.000000e-01)
  %i.d = fptosi <2 x float> %i.c to <2 x i32>     ; 5 uses
  %i.e = extractelement <2 x i32> %i.b, i64 0     ; 8 uses
  %i.f = icmp eq <2 x i32> %i.d, %i.b
  %.not = extractelement <2 x i1> %i.f, i64 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub <2 x i32> %i.d, %i.b                 ; 3 uses
  %i.h = extractelement <2 x i32> %i.g, i64 1     ; 8 uses
  %i.i = extractelement <2 x i32> %i.g, i64 0     ; 8 uses
  %i.j = sdiv i32 %i.h, %i.i
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %3, -1
  %i.m = sdiv i32 %3, 2                           ; 2 uses
  %.not61114 = icmp slt i32 %3, -1
  br i1 %.not61114, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.h, i1 true)
  %i.o = tail call i32 @llvm.abs.i32(i32 %i.i, i1 true)
  %i.p = icmp samesign ugt i32 %i.n, %i.o         ; 3 uses
  %spec.select.i = select i1 %i.p, i32 %i.h, i32 %i.i ; 3 uses
  %.inv.i = icmp sgt i32 %spec.select.i, -1
  %.041.i = select i1 %.inv.i, i32 1, i32 -1      ; 2 uses
  %i.q = icmp eq i32 %spec.select.i, 0
  br i1 %i.q, label %.preheader111, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
end_hunk_3
begin_hunk_4_@ImageDrawLineEx:bb.a
.lr.ph.i69:                                       ; preds = %.thread.i66, %.lr.ph.i69
  %.051.i70 = phi i32 [ %i.bf, %.lr.ph.i69 ], [ 0, %.thread.i66 ] ; 2 uses
  %.03850.i71 = phi i32 [ %i.be, %.lr.ph.i69 ], [ 0, %.thread.i66 ] ; 2 uses
  %i.bb = add nsw i32 %.03850.i71, %i.e
  %i.bc = ashr i32 %.051.i70, 16
  %i.bd = add nsw i32 %i.bc, %i.ba
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.bb, i32 noundef %i.bd, i32 %4)
  %i.be = add nsw i32 %.03850.i71, %.041.i65      ; 2 uses
  %i.bf = add nsw i32 %.051.i70, %i.aj
  %.not.i72 = icmp eq i32 %i.be, %i.i
  br i1 %.not.i72, label %ImageDrawLine.exit77.loopexit110, label %.lr.ph.i69

ImageDrawLine.exit77.loopexit110:                 ; preds = %.lr.ph.i69
  %i.bg = add nuw nsw i32 %.055119, 1
  %exitcond139.not = icmp eq i32 %.055119, %smax140
  br i1 %exitcond139.not, label %.loopexit, label %.thread.i66

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.bh = extractelement <2 x i32> %i.b, i64 1    ; 4 uses
  %i.bi = icmp eq <2 x i32> %i.d, %i.b
  %.not58 = extractelement <2 x i1> %i.bi, i64 1
  br i1 %.not58, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = add nsw i32 %3, -1
  %i.bk = sdiv i32 %3, 2                          ; 2 uses
  %.not59123 = icmp slt i32 %3, -1
  br i1 %.not59123, label %.loopexit, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.e
  %i.bl = sub nsw <2 x i32> %i.d, %i.b            ; 3 uses
  %i.bm = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.bl, i1 true) ; 2 uses
  %i.bn = extractelement <2 x i32> %i.bm, i64 0
  %i.bo = extractelement <2 x i32> %i.bm, i64 1
  %i.bp = icmp samesign ugt i32 %i.bo, %i.bn      ; 3 uses
  %i.bq = extractelement <2 x i32> %i.bl, i64 0   ; 3 uses
  %i.br = extractelement <2 x i32> %i.bl, i64 1   ; 3 uses
  %spec.select.i78 = select i1 %i.bp, i32 %i.br, i32 %i.bq ; 3 uses
  %.inv.i79 = icmp sgt i32 %spec.select.i78, -1
  %.041.i80 = select i1 %.inv.i79, i32 1, i32 -1  ; 2 uses
  %i.bs = icmp eq i32 %spec.select.i78, 0
  br i1 %i.bs, label %.preheader, label %.lr.ph125.split

.lr.ph125.split:                                  ; preds = %.lr.ph125
  %spec.select46.i83 = select i1 %i.bp, i32 %i.bq, i32 %i.br
  %i.bt = shl i32 %spec.select46.i83, 16
  %.1.i82 = tail call i32 @llvm.abs.i32(i32 %spec.select.i78, i1 true)
  %i.bu = sdiv i32 %i.bt, %.1.i82                 ; 2 uses
  br i1 %i.bp, label %.thread.i81.us, label %.thread.i81

.thread.i81.us:                                   ; preds = %.lr.ph125.split, %ImageDrawLine.exit92.loopexit.us
  %.054124.us = phi i32 [ %i.cb, %ImageDrawLine.exit92.loopexit.us ], [ 0, %.lr.ph125.split ] ; 3 uses
  %i.bv = add nsw i32 %.054124.us, %i.e
  br label %.lr.ph55.i88.us

.lr.ph55.i88.us:                                  ; preds = %.thread.i81.us, %.lr.ph55.i88.us
  %.03954.i89.us = phi i32 [ %i.ca, %.lr.ph55.i88.us ], [ 0, %.thread.i81.us ] ; 2 uses
  %.04053.i90.us = phi i32 [ %i.bz, %.lr.ph55.i88.us ], [ 0, %.thread.i81.us ] ; 2 uses
  %i.bw = ashr i32 %.03954.i89.us, 16
  %i.bx = add nsw i32 %i.bw, %i.bv
  %i.by = add nsw i32 %.04053.i90.us, %i.bh
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.bx, i32 noundef %i.by, i32 %4)
  %i.bz = add nsw i32 %.04053.i90.us, %.041.i80   ; 2 uses
  %i.ca = add nsw i32 %.03954.i89.us, %i.bu
  %.not45.i91.us = icmp eq i32 %i.bz, %i.br
  br i1 %.not45.i91.us, label %ImageDrawLine.exit92.loopexit.us, label %.lr.ph55.i88.us

ImageDrawLine.exit92.loopexit.us:                 ; preds = %.lr.ph55.i88.us
  %i.cb = add nuw nsw i32 %.054124.us, 1
  %exitcond143.not = icmp eq i32 %.054124.us, %i.bk
  br i1 %exitcond143.not, label %.preheader, label %.thread.i81.us

.preheader:                                       ; preds = %ImageDrawLine.exit92.loopexit109, %ImageDrawLine.exit92.loopexit.us, %.lr.ph125
  %i.cc = sdiv i32 %i.bj, 2
  %.not60128 = icmp slt i32 %3, 3
  br i1 %.not60128, label %.loopexit, label %.lr.ph130

.lr.ph130:                                        ; preds = %.preheader
  %i.cd = sub <2 x i32> %i.d, %i.b                ; 3 uses
  %i.ce = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.cd, i1 true) ; 2 uses
  %i.cf = extractelement <2 x i32> %i.ce, i64 0
  %i.cg = extractelement <2 x i32> %i.ce, i64 1
  %i.ch = icmp samesign ugt i32 %i.cg, %i.cf      ; 3 uses
  %i.ci = extractelement <2 x i32> %i.cd, i64 0   ; 3 uses
  %i.cj = extractelement <2 x i32> %i.cd, i64 1   ; 3 uses
  %spec.select.i93 = select i1 %i.ch, i32 %i.cj, i32 %i.ci ; 3 uses
  %.inv.i94 = icmp sgt i32 %spec.select.i93, -1
  %.041.i95 = select i1 %.inv.i94, i32 1, i32 -1  ; 2 uses
  %i.ck = icmp eq i32 %spec.select.i93, 0
  br i1 %i.ck, label %.loopexit, label %.lr.ph130.split

.lr.ph130.split:                                  ; preds = %.lr.ph130
  %spec.select46.i98 = select i1 %i.ch, i32 %i.ci, i32 %i.cj
  %i.cl = shl i32 %spec.select46.i98, 16
  %.1.i97 = tail call i32 @llvm.abs.i32(i32 %spec.select.i93, i1 true)
  %i.cm = sdiv i32 %i.cl, %.1.i97                 ; 2 uses
  %smax146 = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 1) ; 2 uses
  br i1 %i.ch, label %.thread.i96.us, label %.thread.i96

.thread.i96.us:                                   ; preds = %.lr.ph130.split, %ImageDrawLine.exit107.loopexit.us
  %.0129.us = phi i32 [ %i.ct, %ImageDrawLine.exit107.loopexit.us ], [ 1, %.lr.ph130.split ] ; 3 uses
  %i.cn = sub nsw i32 %i.e, %.0129.us
  br label %.lr.ph55.i103.us

.lr.ph55.i103.us:                                 ; preds = %.thread.i96.us, %.lr.ph55.i103.us
  %.03954.i104.us = phi i32 [ %i.cs, %.lr.ph55.i103.us ], [ 0, %.thread.i96.us ] ; 2 uses
  %.04053.i105.us = phi i32 [ %i.cr, %.lr.ph55.i103.us ], [ 0, %.thread.i96.us ] ; 2 uses
  %i.co = ashr i32 %.03954.i104.us, 16
  %i.cp = add nsw i32 %i.co, %i.cn
  %i.cq = add nsw i32 %.04053.i105.us, %i.bh
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.cp, i32 noundef %i.cq, i32 %4)
  %i.cr = add nsw i32 %.04053.i105.us, %.041.i95  ; 2 uses
  %i.cs = add nsw i32 %.03954.i104.us, %i.cm
  %.not45.i106.us = icmp eq i32 %i.cr, %i.cj
  br i1 %.not45.i106.us, label %ImageDrawLine.exit107.loopexit.us, label %.lr.ph55.i103.us

ImageDrawLine.exit107.loopexit.us:                ; preds = %.lr.ph55.i103.us
  %i.ct = add nuw nsw i32 %.0129.us, 1
  %exitcond147.not = icmp eq i32 %.0129.us, %smax146
  br i1 %exitcond147.not, label %.loopexit, label %.thread.i96.us

.thread.i81:                                      ; preds = %.lr.ph125.split, %ImageDrawLine.exit92.loopexit109
  %.054124 = phi i32 [ %i.da, %ImageDrawLine.exit92.loopexit109 ], [ 0, %.lr.ph125.split ] ; 3 uses
  %i.cu = add nsw i32 %.054124, %i.e
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %.thread.i81, %.lr.ph.i84
  %.051.i85 = phi i32 [ %i.cz, %.lr.ph.i84 ], [ 0, %.thread.i81 ] ; 2 uses
  %.03850.i86 = phi i32 [ %i.cy, %.lr.ph.i84 ], [ 0, %.thread.i81 ] ; 2 uses
  %i.cv = add nsw i32 %.03850.i86, %i.cu
  %i.cw = ashr i32 %.051.i85, 16
  %i.cx = add nsw i32 %i.cw, %i.bh
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.cv, i32 noundef %i.cx, i32 %4)
  %i.cy = add nsw i32 %.03850.i86, %.041.i80      ; 2 uses
  %i.cz = add nsw i32 %.051.i85, %i.bu
  %.not.i87 = icmp eq i32 %i.cy, %i.bq
  br i1 %.not.i87, label %ImageDrawLine.exit92.loopexit109, label %.lr.ph.i84

ImageDrawLine.exit92.loopexit109:                 ; preds = %.lr.ph.i84
  %i.da = add nuw nsw i32 %.054124, 1
  %exitcond142.not = icmp eq i32 %.054124, %i.bk
  br i1 %exitcond142.not, label %.preheader, label %.thread.i81

.thread.i96:                                      ; preds = %.lr.ph130.split, %ImageDrawLine.exit107.loopexit108
  %.0129 = phi i32 [ %i.dh, %ImageDrawLine.exit107.loopexit108 ], [ 1, %.lr.ph130.split ] ; 3 uses
  %i.db = sub nsw i32 %i.e, %.0129
  br label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %.thread.i96, %.lr.ph.i99
  %.051.i100 = phi i32 [ %i.dg, %.lr.ph.i99 ], [ 0, %.thread.i96 ] ; 2 uses
  %.03850.i101 = phi i32 [ %i.df, %.lr.ph.i99 ], [ 0, %.thread.i96 ] ; 2 uses
  %i.dc = add nsw i32 %.03850.i101, %i.db
  %i.dd = ashr i32 %.051.i100, 16
  %i.de = add nsw i32 %i.dd, %i.bh
  tail call void @ImageDrawPixel(ptr noundef readonly %0, i32 noundef %i.dc, i32 noundef %i.de, i32 %4)
  %i.df = add nsw i32 %.03850.i101, %.041.i95     ; 2 uses
  %i.dg = add nsw i32 %.051.i100, %i.cm
  %.not.i102 = icmp eq i32 %i.df, %i.ci
  br i1 %.not.i102, label %ImageDrawLine.exit107.loopexit108, label %.lr.ph.i99

ImageDrawLine.exit107.loopexit108:                ; preds = %.lr.ph.i99
  %i.dh = add nuw nsw i32 %.0129, 1
  %exitcond145.not = icmp eq i32 %.0129, %smax146
  br i1 %exitcond145.not, label %.loopexit, label %.thread.i96

.loopexit:                                        ; preds = %ImageDrawLine.exit77.loopexit110, %ImageDrawLine.exit77.loopexit.us, %ImageDrawLine.exit107.loopexit108, %ImageDrawLine.exit107.loopexit.us, %bb.e, %bb.c, %.preheader111, %.lr.ph120, %.preheader, %.lr.ph130, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawCircle(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4) local_unnamed_addr #39 {
bb.a:
  %.not53 = icmp slt i32 %3, 0
  br i1 %.not53, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = shl nuw nsw i32 %3, 1
  %i.b = sub nsw i32 3, %i.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.056 = phi i32 [ %.1, %bb.d ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %.03855 = phi i32 [ %.139, %bb.d ], [ %3, %.lr.ph.preheader ] ; 6 uses
  %.04054 = phi i32 [ %i.r, %bb.d ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.c = sub nsw i32 %1, %.04054
  %i.d = add nsw i32 %.03855, %2
  %i.e = shl nuw nsw i32 %.04054, 1
  %i.f = sitofp i32 %i.c to float
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.f, i64 0 ; 2 uses
  %i.g = sitofp i32 %i.d to float
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.g, i64 1
  %i.h = uitofp nneg i32 %i.e to float
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.h, i64 0 ; 2 uses
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %.sroa.3.12.vec.insert.i, i32 %4)
  %i.i = sub nsw i32 %2, %.03855
  %i.j = sitofp i32 %i.i to float
  %.sroa.0.4.vec.insert.i42 = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.j, i64 1
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %.sroa.0.4.vec.insert.i42, <2 x float> %.sroa.3.12.vec.insert.i, i32 %4)
  %i.k = sub nsw i32 %1, %.03855
  %i.l = add nsw i32 %.04054, %2
  %i.m = shl nsw i32 %.03855, 1
  %i.n = sitofp i32 %i.k to float
  %.sroa.0.0.vec.insert.i45 = insertelement <2 x float> poison, float %i.n, i64 0 ; 2 uses
  %i.o = sitofp i32 %i.l to float
  %.sroa.0.4.vec.insert.i46 = insertelement <2 x float> %.sroa.0.0.vec.insert.i45, float %i.o, i64 1
  %5 = sitofp i32 %i.m to float
  %.sroa.3.12.vec.insert.i48 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %5, i64 0 ; 2 uses
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %.sroa.0.4.vec.insert.i46, <2 x float> %.sroa.3.12.vec.insert.i48, i32 %4)
  %i.p = sub nsw i32 %2, %.04054
  %i.q = sitofp i32 %i.p to float
  %.sroa.0.4.vec.insert.i50 = insertelement <2 x float> %.sroa.0.0.vec.insert.i45, float %i.q, i64 1
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %.sroa.0.4.vec.insert.i50, <2 x float> %.sroa.3.12.vec.insert.i48, i32 %4)
  %i.r = add nuw nsw i32 %.04054, 1               ; 3 uses
  %i.s = icmp sgt i32 %.056, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.t = add nsw i32 %.03855, -1                  ; 2 uses
  %i.u = sub nsw i32 %i.r, %i.t
  %i.v = shl nsw i32 %i.u, 2
  %i.w = add nuw i32 %.056, 10
  %i.x = add i32 %i.w, %i.v
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.y = shl nsw i32 %i.r, 2
  %i.z = add nuw i32 %i.y, 6
  %i.aa = add i32 %i.z, %.056
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.139 = phi i32 [ %i.t, %bb.b ], [ %.03855, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %i.x, %bb.b ], [ %i.aa, %bb.c ]
  %.not.not = icmp sgt i32 %.139, %.04054
  br i1 %.not.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawRectangle(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 %5) local_unnamed_addr #39 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %2, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  %i.d = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %4, i64 1
  %i.f = sitofp <2 x i32> %i.e to <2 x float>
  tail call void @ImageDrawRectangleRec(ptr noundef %0, <2 x float> %i.c, <2 x float> %i.f, i32 %5)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawCircleV(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, i32 noundef %2, i32 %3) local_unnamed_addr #39 {
bb.a:
  %i.a = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.b = fptosi <4 x float> %i.a to <4 x i32>     ; 3 uses
  %.not53.i = icmp slt i32 %2, 0
  br i1 %.not53.i, label %ImageDrawCircle.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.c = shl nuw nsw i32 %2, 1
  %i.d = sub nsw i32 3, %i.c
  %i.e = insertelement <2 x i32> <i32 0, i32 poison>, i32 %2, i64 1
  %i.f = extractelement <4 x i32> %i.b, i64 1     ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.056.i = phi i32 [ %i.ac, %.lr.ph.i ], [ %i.d, %.lr.ph.preheader.i ] ; 2 uses
  %.03855.i = phi i32 [ %.139.i, %.lr.ph.i ], [ %2, %.lr.ph.preheader.i ] ; 3 uses
  %.04054.i = phi i32 [ %i.w, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 5 uses
  %i.g = phi <2 x i32> [ %i.ae, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader.i ]
  %i.h = shufflevector <2 x i32> %i.g, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.i = sub nsw <4 x i32> %i.b, %i.h
  %i.j = add nsw <4 x i32> %i.h, %i.b
  %i.k = shufflevector <4 x i32> %i.i, <4 x i32> %i.j, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.l = shl nuw nsw i32 %.04054.i, 1
  %i.m = uitofp nneg i32 %i.l to float
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.m, i64 0 ; 2 uses
  %i.n = add nsw i32 %.04054.i, %i.f
  %i.o = shl nsw i32 %.03855.i, 1
  %i.p = sitofp <4 x i32> %i.k to <4 x float>     ; 3 uses
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %i.q, <2 x float> %.sroa.3.12.vec.insert.i.i, i32 %3)
  %i.r = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %i.r, <2 x float> %.sroa.3.12.vec.insert.i.i, i32 %3)
  %i.s = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 3, i32 poison> ; 2 uses
  %i.t = sitofp i32 %i.n to float
  %.sroa.0.4.vec.insert.i46.i = insertelement <2 x float> %i.s, float %i.t, i64 1
  %4 = sitofp i32 %i.o to float
  %.sroa.3.12.vec.insert.i48.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %4, i64 0 ; 2 uses
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %.sroa.0.4.vec.insert.i46.i, <2 x float> %.sroa.3.12.vec.insert.i48.i, i32 %3)
  %i.u = sub nsw i32 %i.f, %.04054.i
  %i.v = sitofp i32 %i.u to float
  %.sroa.0.4.vec.insert.i50.i = insertelement <2 x float> %i.s, float %i.v, i64 1
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %.sroa.0.4.vec.insert.i50.i, <2 x float> %.sroa.3.12.vec.insert.i48.i, i32 %3)
  %i.w = add nuw nsw i32 %.04054.i, 1             ; 3 uses
  %i.x = icmp sgt i32 %.056.i, 0                  ; 3 uses
  %i.y = add nsw i32 %.03855.i, -1                ; 2 uses
  %i.z = select i1 %i.x, i32 %i.y, i32 0
  %.sink = sub nsw i32 %i.w, %i.z
  %.sink3 = select i1 %i.x, i32 10, i32 6
  %.139.i = select i1 %i.x, i32 %i.y, i32 %.03855.i ; 3 uses
  %i.aa = shl nsw i32 %.sink, 2
  %i.ab = add i32 %.056.i, %.sink3
  %i.ac = add i32 %i.ab, %i.aa
  %.not.not.i = icmp sgt i32 %.139.i, %.04054.i
  %i.ad = insertelement <2 x i32> poison, i32 %i.w, i64 0
  %i.ae = insertelement <2 x i32> %i.ad, i32 %.139.i, i64 1
  br i1 %.not.not.i, label %.lr.ph.i, label %ImageDrawCircle.exit

ImageDrawCircle.exit:                             ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawCircleLines(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4) local_unnamed_addr #37 {
bb.a:
  %.not61 = icmp slt i32 %3, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = shl nuw nsw i32 %3, 1
  %i.b = sub nsw i32 3, %i.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.064 = phi i32 [ %.1, %bb.d ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %.05863 = phi i32 [ %.159, %bb.d ], [ %3, %.lr.ph.preheader ] ; 6 uses
  %.06062 = phi i32 [ %i.k, %bb.d ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.c = add nsw i32 %.06062, %1                  ; 2 uses
  %i.d = add nsw i32 %.05863, %2                  ; 2 uses
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.c, i32 noundef %i.d, i32 %4)
  %i.e = sub nsw i32 %1, %.06062                  ; 2 uses
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.e, i32 noundef %i.d, i32 %4)
  %i.f = sub nsw i32 %2, %.05863                  ; 2 uses
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.c, i32 noundef %i.f, i32 %4)
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.e, i32 noundef %i.f, i32 %4)
  %i.g = add nsw i32 %.05863, %1                  ; 2 uses
  %i.h = add nsw i32 %.06062, %2                  ; 2 uses
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.g, i32 noundef %i.h, i32 %4)
  %i.i = sub nsw i32 %1, %.05863                  ; 2 uses
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.h, i32 %4)
  %i.j = sub nsw i32 %2, %.06062                  ; 2 uses
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.g, i32 noundef %i.j, i32 %4)
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.j, i32 %4)
  %i.k = add nuw nsw i32 %.06062, 1               ; 3 uses
  %i.l = icmp sgt i32 %.064, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.m = add nsw i32 %.05863, -1                  ; 2 uses
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = shl nsw i32 %i.n, 2
  %i.p = add nuw i32 %.064, 10
  %i.q = add i32 %i.p, %i.o
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.r = shl nsw i32 %i.k, 2
  %i.s = add nuw i32 %i.r, 6
  %i.t = add i32 %i.s, %.064
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.159 = phi i32 [ %i.m, %bb.b ], [ %.05863, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %i.q, %bb.b ], [ %i.t, %bb.c ]
  %.not.not = icmp sgt i32 %.159, %.06062
  br i1 %.not.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawCircleLinesV(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, i32 noundef %2, i32 %3) local_unnamed_addr #38 {
bb.a:
  %.sroa.01.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = fptosi float %.sroa.01.0.vec.extract to i32
  %.sroa.01.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.b = fptosi float %.sroa.01.4.vec.extract to i32
  tail call void @ImageDrawCircleLines(ptr noundef %0, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %2, i32 %3)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawRectangleRec(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, i32 %3) local_unnamed_addr #39 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.039.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.i = fcmp olt float %.sroa.039.0.vec.extract, 0.000000e+00 ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %1, %2
  %.sroa.039.0.vec.insert = insertelement <2 x float> %1, float 0.000000e+00, i64 0
  %.sroa.039.0 = select i1 %i.i, <2 x float> %.sroa.039.0.vec.insert, <2 x float> %1 ; 4 uses
  %sel = select i1 %i.i, <2 x float> %foldExtExtBinop, <2 x float> %2
  %.sroa.17.0 = shufflevector <2 x float> %sel, <2 x float> %2, <2 x i32> <i32 0, i32 3> ; 3 uses
  %.sroa.039.4.vec.extract = extractelement <2 x float> %.sroa.039.0, i64 1 ; 2 uses
  %i.j = fcmp olt float %.sroa.039.4.vec.extract, 0.000000e+00 ; 3 uses
  %foldExtExtBinop111 = fadd <2 x float> %.sroa.039.0, %.sroa.17.0
  %.sroa.17.12.vec.insert = shufflevector <2 x float> %.sroa.17.0, <2 x float> %foldExtExtBinop111, <2 x i32> <i32 0, i32 3>
  %.sroa.039.4.vec.insert = insertelement <2 x float> %.sroa.039.0, float 0.000000e+00, i64 1
  %.sroa.039.4.vec.extract57.pre-phi = select i1 %i.j, float 0.000000e+00, float %.sroa.039.4.vec.extract ; 5 uses
  %.sroa.039.1 = select i1 %i.j, <2 x float> %.sroa.039.4.vec.insert, <2 x float> %.sroa.039.0 ; 3 uses
  %.sroa.17.1 = select i1 %i.j, <2 x float> %.sroa.17.12.vec.insert, <2 x float> %.sroa.17.0 ; 3 uses
  %.sroa.17.8.vec.extract68 = extractelement <2 x float> %.sroa.17.1, i64 0
  %i.k = fcmp olt float %.sroa.17.8.vec.extract68, 0.000000e+00
  %.sroa.17.8.vec.insert70 = insertelement <2 x float> %.sroa.17.1, float 0.000000e+00, i64 0
  %.sroa.17.2 = select i1 %i.k, <2 x float> %.sroa.17.8.vec.insert70, <2 x float> %.sroa.17.1 ; 3 uses
  %.sroa.17.12.vec.extract87 = extractelement <2 x float> %.sroa.17.2, i64 1
  %i.l = fcmp olt float %.sroa.17.12.vec.extract87, 0.000000e+00
  %.sroa.17.12.vec.insert89 = insertelement <2 x float> %.sroa.17.2, float 0.000000e+00, i64 1
  %.sroa.17.3 = select i1 %i.l, <2 x float> %.sroa.17.12.vec.insert89, <2 x float> %.sroa.17.2 ; 3 uses
  %.sroa.039.0.vec.extract44 = extractelement <2 x float> %.sroa.039.1, i64 0 ; 3 uses
  %foldExtExtBinop113 = fadd <2 x float> %.sroa.039.1, %.sroa.17.3
  %i.m = extractelement <2 x float> %foldExtExtBinop113, i64 0
  %i.n = sitofp i32 %i.d to float                 ; 3 uses
  %i.o = fcmp ult float %i.m, %i.n
  %i.p = fsub float %i.n, %.sroa.039.0.vec.extract44
  %.sroa.17.8.vec.insert74 = insertelement <2 x float> %.sroa.17.3, float %i.p, i64 0
  %.sroa.17.4 = select i1 %i.o, <2 x float> %.sroa.17.3, <2 x float> %.sroa.17.8.vec.insert74 ; 3 uses
  %.sroa.17.12.vec.extract91 = extractelement <2 x float> %.sroa.17.4, i64 1
  %i.q = fadd float %.sroa.039.4.vec.extract57.pre-phi, %.sroa.17.12.vec.extract91
  %i.r = sitofp i32 %i.g to float                 ; 3 uses
  %i.s = fcmp ult float %i.q, %i.r
  %i.t = fsub float %i.r, %.sroa.039.4.vec.extract57.pre-phi
  %.sroa.17.12.vec.insert93 = insertelement <2 x float> %.sroa.17.4, float %i.t, i64 1
  %.sroa.17.5 = select i1 %i.s, <2 x float> %.sroa.17.4, <2 x float> %.sroa.17.12.vec.insert93 ; 3 uses
  %i.u = fcmp ult float %.sroa.039.0.vec.extract44, %i.n
  %i.v = fcmp ult float %.sroa.039.4.vec.extract57.pre-phi, %i.r
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %.sroa.17.8.vec.extract76 = extractelement <2 x float> %.sroa.17.5, i64 0
  %foldExtExtBinop115 = fadd <2 x float> %.sroa.039.1, %.sroa.17.5
  %i.w = extractelement <2 x float> %foldExtExtBinop115, i64 0
  %i.x = fcmp ugt float %i.w, 0.000000e+00
  br i1 %i.x, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.sroa.17.12.vec.extract95 = extractelement <2 x float> %.sroa.17.5, i64 1 ; 2 uses
  %i.y = fadd float %.sroa.039.4.vec.extract57.pre-phi, %.sroa.17.12.vec.extract95
  %i.z = fcmp ugt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.aa = fptosi float %.sroa.039.4.vec.extract57.pre-phi to i32 ; 2 uses
  %i.ab = fptosi float %.sroa.039.0.vec.extract44 to i32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = tail call i32 @GetPixelDataSize(i32 noundef 1, i32 noundef 1, i32 noundef %i.ad) ; 7 uses
  tail call void @ImageDrawPixel(ptr noundef nonnull %0, i32 noundef %i.ab, i32 noundef %i.aa, i32 %3)
  %i.af = load i32, ptr %i.c, align 8
  %i.ag = mul nsw i32 %i.af, %i.aa
  %i.ah = add nsw i32 %i.ag, %i.ab
  %i.ai = mul nsw i32 %i.ah, %i.ae
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak ; 8 uses
  %i.am = fptosi float %.sroa.17.8.vec.extract76 to i32 ; 4 uses
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %i.ao = fptosi float %.sroa.17.12.vec.extract95 to i32 ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %.lr.ph106, label %.loopexit

.lr.ph106:                                        ; preds = %._crit_edge
  %i.aq = mul nsw i32 %i.ae, %i.am
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %i.as = add nsw i32 %i.ao, -1                   ; 3 uses
  %xtraiter = and i32 %i.as, 1
  %i.at = icmp eq i32 %i.ao, 2
  br i1 %i.at, label %.epil.preheader, label %.lr.ph106.new

.lr.ph106.new:                                    ; preds = %.lr.ph106
  %unroll_iter = and i32 %i.as, -2
  br label %bb.h

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.098103 = phi i32 [ %i.ba, %.lr.ph ], [ 1, %bb.g ] ; 4 uses
  %i.au = sub nsw i32 %i.am, %.098103
  %.098. = tail call i32 @llvm.smin.i32(i32 %.098103, i32 %i.au)
  %i.av = mul nsw i32 %.098103, %i.ae
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.al, i64 %i.aw
  %i.ay = mul nsw i32 %.098., %i.ae
  %i.az = sext i32 %i.ay to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.al, i64 %i.az, i1 false)
  %i.ba = shl nsw i32 %.098103, 1                 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.am
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.h, %.lr.ph106.new
  %.0104 = phi i32 [ 1, %.lr.ph106.new ], [ %i.bn, %bb.h ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph106.new ], [ %niter.next.1, %bb.h ]
  %i.bc = load i32, ptr %i.c, align 8
  %i.bd = mul i32 %.0104, %i.ae
  %i.be = mul i32 %i.bd, %i.bc
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.al, i64 %i.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.al, i64 %i.ar, i1 false)
  %i.bh = add nuw nsw i32 %.0104, 1
  %i.bi = load i32, ptr %i.c, align 8
  %i.bj = mul i32 %i.bh, %i.ae
  %i.bk = mul i32 %i.bj, %i.bi
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %i.al, i64 %i.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.al, i64 %i.ar, i1 false)
  %i.bn = add nuw nsw i32 %.0104, 2               ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.h

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph106
  %.0104.epil.init = phi i32 [ 1, %.lr.ph106 ], [ %i.bn, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod117 = trunc i32 %i.as to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.bo = load i32, ptr %i.c, align 8
  %i.bp = mul i32 %.0104.epil.init, %i.ae
  %i.bq = mul i32 %i.bp, %i.bo
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.al, i64 %i.br
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.al, i64 %i.ar, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %._crit_edge, %bb.e, %bb.f, %bb.d, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawRectangleV(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, i32 %3) local_unnamed_addr #39 {
bb.a:
  %i.a = fptosi <2 x float> %1 to <2 x i32>
  %i.b = sitofp <2 x i32> %i.a to <2 x float>
  %i.c = fptosi <2 x float> %2 to <2 x i32>
  %i.d = sitofp <2 x i32> %i.c to <2 x float>
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %i.b, <2 x float> %i.d, i32 %3)
  ret void
end_hunk_4
begin_hunk_5_@stbi__load_main:bb.a
  %.not = icmp eq i32 %i.abl, 124
  %i.abr = load <2 x ptr>, ptr %i.k, align 8
  store <2 x ptr> %i.abr, ptr %i.d, align 8
  br i1 %.not, label %bb.bv, label %bb.ha

bb.bv:                                            ; preds = %stbi__bmp_test.exit.thread50, %stbi__bmp_test.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #52
  %i.abs = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 2 uses
  store i32 255, ptr %i.abs, align 4
  %i.abt = call fastcc ptr @stbi__bmp_parse_header(ptr noundef nonnull %0, ptr noundef %7)
  %i.abu = icmp eq ptr %i.abt, null
  br i1 %i.abu, label %stbi__bmp_load.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 10 uses
  %i.abw = load i32, ptr %i.abv, align 4          ; 2 uses
  %i.abx = icmp sgt i32 %i.abw, 0
  %i.aby = tail call i32 @llvm.abs.i32(i32 %i.abw, i1 true) ; 2 uses
  store i32 %i.aby, ptr %i.abv, align 4
  %i.abz = icmp samesign ugt i32 %i.aby, 16777216
  br i1 %i.abz, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.by:                                            ; preds = %bb.bw
  %i.aca = load i32, ptr %0, align 8
  %i.acb = icmp ugt i32 %i.aca, 16777216
  br i1 %i.acb, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.ca:                                            ; preds = %bb.by
  %i.acc = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.acd = load i32, ptr %i.acc, align 4          ; 5 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.acf = load i32, ptr %i.ace, align 4          ; 5 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ach = load i32, ptr %i.acg, align 4          ; 5 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.acj = load i32, ptr %i.aci, align 4          ; 7 uses
  %i.ack = load i32, ptr %i.abs, align 4          ; 6 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.acm = load i32, ptr %i.acl, align 4          ; 4 uses
  %i.acn = icmp eq i32 %i.acm, 12                 ; 3 uses
  %i.aco = load i32, ptr %7, align 4              ; 4 uses
  br i1 %i.acn, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.acp = icmp slt i32 %i.aco, 24
  br i1 %i.acp, label %bb.cc, label %.thread.i

bb.cc:                                            ; preds = %bb.cb
  %i.acq = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.acr = load i32, ptr %i.acq, align 4          ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.act = load i32, ptr %i.acs, align 4
  %i.acu = add i32 %i.acr, -24
  %i.acv = sub i32 %i.acu, %i.act
  %i.acw = sdiv i32 %i.acv, 3
  br label %bb.cf

bb.cd:                                            ; preds = %bb.ca
  %i.acx = icmp slt i32 %i.aco, 16
  br i1 %i.acx, label %bb.ce, label %.thread.i

bb.ce:                                            ; preds = %bb.cd
  %i.acy = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.acz = load i32, ptr %i.acy, align 4          ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.adb = load i32, ptr %i.ada, align 4
  %i.adc = add i32 %i.acm, %i.adb
  %i.add = sub i32 %i.acz, %i.adc
  %i.ade = ashr i32 %i.add, 2
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cc
  %i.adf = phi i32 [ %i.acr, %bb.cc ], [ %i.acz, %bb.ce ]
  %.0332.i = phi i32 [ %i.acw, %bb.cc ], [ %i.ade, %bb.ce ] ; 2 uses
  %i.adg = icmp eq i32 %.0332.i, 0
  br i1 %i.adg, label %.thread.i, label %.thread238.i

.thread238.i:                                     ; preds = %bb.cf
  %i.adh = icmp eq i32 %i.acj, -16777216
  br label %bb.cl

.thread.i:                                        ; preds = %bb.cf, %bb.cd, %bb.cb
  %i.adi = load i32, ptr %i.l, align 8
  %i.adj = load ptr, ptr %i.d, align 8
  %i.adk = load ptr, ptr %i.k, align 8
  %i.adl = ptrtoint ptr %i.adj to i64
  %i.adm = ptrtoint ptr %i.adk to i64
  %i.adn = sub i64 %i.adl, %i.adm
  %i.ado = trunc i64 %i.adn to i32
  %i.adp = add nsw i32 %i.adi, %i.ado             ; 3 uses
  %i.adq = add i32 %i.adp, -1025
  %or.cond378.i = icmp ult i32 %i.adq, -1024
  br i1 %or.cond378.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.thread.i
  store ptr @.str.110, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.ch:                                            ; preds = %.thread.i
  %i.adr = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ads = load i32, ptr %i.adr, align 4          ; 4 uses
  %i.adt = icmp slt i32 %i.ads, %i.adp
  br i1 %i.adt, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.adu = sub nsw i32 %i.ads, %i.adp             ; 2 uses
  %i.adv = icmp sgt i32 %i.adu, 1024
  br i1 %i.adv, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  store ptr @.str.111, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.ck:                                            ; preds = %bb.ci
  tail call fastcc void @stbi__skip(ptr noundef nonnull %0, i32 noundef %i.adu)
  %i.adw = icmp eq i32 %i.aco, 24
  %i.adx = icmp eq i32 %i.acj, -16777216          ; 2 uses
  %or.cond.i = select i1 %i.adw, i1 %i.adx, i1 false
  br i1 %or.cond.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.thread238.i
  %i.ady = phi i1 [ %i.adh, %.thread238.i ], [ %i.adx, %bb.ck ]
  %.03322242.i = phi i32 [ %.0332.i, %.thread238.i ], [ 0, %bb.ck ]
  %i.adz = phi i1 [ false, %.thread238.i ], [ true, %bb.ck ]
  %i.aea = phi i32 [ %i.adf, %.thread238.i ], [ %i.ads, %bb.ck ]
  %.not.i = icmp eq i32 %i.acj, 0
  %i.aeb = select i1 %.not.i, i32 3, i32 4
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.aec = phi i1 [ %i.ady, %bb.cl ], [ true, %bb.ck ]
  %.03322241.i = phi i32 [ %.03322242.i, %bb.cl ], [ 0, %bb.ck ] ; 4 uses
  %i.aed = phi i1 [ %i.adz, %bb.cl ], [ true, %bb.ck ]
  %i.aee = phi i32 [ %i.aco, %bb.cl ], [ 24, %bb.ck ] ; 6 uses
  %i.aef = phi i32 [ %i.aea, %bb.cl ], [ %i.ads, %bb.ck ] ; 3 uses
  %i.aeg = phi i32 [ %i.aeb, %bb.cl ], [ 3, %bb.ck ] ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.aeg, ptr %i.aeh, align 8
  %.not367.i = icmp eq i32 %4, 0
  %i.aei = icmp sgt i32 %4, 2
  %spec.select.i = select i1 %i.aei, i32 %4, i32 %i.aeg ; 11 uses
  %i.aej = load i32, ptr %0, align 8              ; 5 uses
  %i.aek = load i32, ptr %i.abv, align 4          ; 5 uses
  %or.cond.not.i.i.i = icmp sgt i32 %i.aej, -1
  br i1 %or.cond.not.i.i.i, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.ael = icmp eq i32 %i.aej, 0                  ; 2 uses
  br i1 %i.ael, label %stbi__mul2sizes_valid.exit.thread15.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.cn
  %i.aem = udiv i32 2147483647, %i.aej
  %.not23.i.i = icmp samesign ugt i32 %spec.select.i, %i.aem
  br i1 %.not23.i.i, label %bb.cp, label %stbi__mul2sizes_valid.exit.thread15.i.i

stbi__mul2sizes_valid.exit.thread15.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.cn
  %i.aen = mul nuw nsw i32 %i.aej, %spec.select.i ; 4 uses
  %i.aeo = or i32 %i.aek, %i.aen
  %or.cond.not.i10.i.i = icmp sgt i32 %i.aeo, -1
  br i1 %or.cond.not.i10.i.i, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.aep = icmp eq i32 %i.aek, 0                  ; 2 uses
  br i1 %i.aep, label %stbi__mad3sizes_valid.exit.i, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.co
  %i.aeq = udiv i32 2147483647, %i.aek
  %.not.i.i37 = icmp samesign ugt i32 %i.aen, %i.aeq
  br i1 %.not.i.i37, label %bb.cp, label %stbi__mad3sizes_valid.exit.i

bb.cp:                                            ; preds = %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i, %stbi__mul2sizes_valid.exit.i.i, %bb.cm
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

stbi__mad3sizes_valid.exit.i:                     ; preds = %stbi__mul2sizes_valid.exit12.i.i, %bb.co
  br i1 %i.ael, label %stbi__mul2sizes_valid.exit.thread15.i.i.i, label %stbi__mul2sizes_valid.exit.i.i.i

stbi__mul2sizes_valid.exit.i.i.i:                 ; preds = %stbi__mad3sizes_valid.exit.i
  %i.aer = udiv i32 2147483647, %i.aej
  %.not23.i.i.i = icmp samesign ugt i32 %spec.select.i, %i.aer
  br i1 %.not23.i.i.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__mul2sizes_valid.exit.thread15.i.i.i

stbi__mul2sizes_valid.exit.thread15.i.i.i:        ; preds = %stbi__mul2sizes_valid.exit.i.i.i, %stbi__mad3sizes_valid.exit.i
  br i1 %i.aep, label %stbi__malloc_mad3.exit.i, label %stbi__mul2sizes_valid.exit12.i.i.i

stbi__mul2sizes_valid.exit12.i.i.i:               ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i.i
  %i.aes = udiv i32 2147483647, %i.aek
  %.not.i.i.i38 = icmp samesign ugt i32 %i.aen, %i.aes
  br i1 %.not.i.i.i38, label %stbi__malloc_mad3.exit.thread.i, label %stbi__malloc_mad3.exit.i

stbi__malloc_mad3.exit.i:                         ; preds = %stbi__mul2sizes_valid.exit12.i.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i.i
  %i.aet = mul nsw i32 %i.aen, %i.aek
  %i.aeu = sext i32 %i.aet to i64
  %i.aev = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.aeu) #53 ; 30 uses
  %.not369.i = icmp eq ptr %i.aev, null
  br i1 %.not369.i, label %stbi__malloc_mad3.exit.thread.i, label %bb.cq

stbi__malloc_mad3.exit.thread.i:                  ; preds = %stbi__malloc_mad3.exit.i, %stbi__mul2sizes_valid.exit12.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.cq:                                            ; preds = %stbi__malloc_mad3.exit.i
  %i.aew = icmp slt i32 %i.aee, 16
  br i1 %i.aew, label %bb.cr, label %bb.ff

bb.cr:                                            ; preds = %bb.cq
  %i.aex = icmp sgt i32 %.03322241.i, 256
  %or.cond7.i = or i1 %i.aed, %i.aex
  br i1 %or.cond7.i, label %bb.cs, label %.preheader44.i

.preheader44.i:                                   ; preds = %bb.cr
  %i.aey = icmp sgt i32 %.03322241.i, 0
  br i1 %i.aey, label %.lr.ph66.i, label %._crit_edge.i40

.lr.ph66.i:                                       ; preds = %.preheader44.i
  %wide.trip.count.i = zext nneg i32 %.03322241.i to i64
  %.pre115.i = load ptr, ptr %i.d, align 8        ; 2 uses
  %.pre116.i = load ptr, ptr %i.e, align 8        ; 2 uses
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  tail call void @free(ptr noundef nonnull %i.aev) #52
  store ptr @.str.112, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.ct:                                            ; preds = %stbi__get8.exit402.i, %.lr.ph66.i
  %i.aez = phi ptr [ %.pre116.i, %.lr.ph66.i ], [ %i.ais, %stbi__get8.exit402.i ] ; 2 uses
  %i.afa = phi ptr [ %.pre115.i, %.lr.ph66.i ], [ %i.ait, %stbi__get8.exit402.i ]
  %i.afb = phi ptr [ %.pre116.i, %.lr.ph66.i ], [ %i.aiu, %stbi__get8.exit402.i ] ; 3 uses
  %i.afc = phi ptr [ %.pre115.i, %.lr.ph66.i ], [ %i.aiv, %stbi__get8.exit402.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph66.i ], [ %indvars.iv.next.i, %stbi__get8.exit402.i ] ; 2 uses
  %i.afd = icmp ult ptr %i.afc, %i.afb
  br i1 %i.afd, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afc, i64 1 ; 3 uses
  store ptr %i.afe, ptr %i.d, align 8
  %i.aff = load i8, ptr %i.afc, align 1
  br label %stbi__get8.exit.i

bb.cv:                                            ; preds = %bb.ct
  %i.afg = load i32, ptr %i.f, align 8
  %.not.i383.i = icmp eq i32 %i.afg, 0
  br i1 %.not.i383.i, label %stbi__get8.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.afh = load ptr, ptr %i.g, align 8
  %i.afi = load ptr, ptr %i.h, align 8
  %i.afj = load i32, ptr %i.j, align 4
  %i.afk = tail call i32 %i.afh(ptr noundef %i.afi, ptr noundef nonnull %i.i, i32 noundef %i.afj) #52, !inline_history !155 ; 2 uses
  %i.afl = load ptr, ptr %i.d, align 8
  %i.afm = load ptr, ptr %i.k, align 8
  %i.afn = ptrtoint ptr %i.afl to i64
  %i.afo = ptrtoint ptr %i.afm to i64
  %i.afp = sub i64 %i.afn, %i.afo
  %i.afq = trunc i64 %i.afp to i32
  %i.afr = load i32, ptr %i.l, align 8
  %i.afs = add nsw i32 %i.afr, %i.afq
  store i32 %i.afs, ptr %i.l, align 8
  %i.aft = icmp eq i32 %i.afk, 0
  br i1 %i.aft, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %i.f, align 8
  store i8 0, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i.i

bb.cy:                                            ; preds = %bb.cw
  %i.afu = sext i32 %i.afk to i64
  %i.afv = getelementptr inbounds i8, ptr %i.i, i64 %i.afu
  %.pre.i.i41 = load i8, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i.i

stbi__refill_buffer.exit.i.i:                     ; preds = %bb.cy, %bb.cx
  %i.afw = phi i8 [ 0, %bb.cx ], [ %.pre.i.i41, %bb.cy ]
  %.sink.i.i.i = phi ptr [ %i.m, %bb.cx ], [ %i.afv, %bb.cy ] ; 3 uses
  store ptr %.sink.i.i.i, ptr %i.e, align 8
  store ptr %i.m, ptr %i.d, align 8
  br label %stbi__get8.exit.i

stbi__get8.exit.i:                                ; preds = %stbi__refill_buffer.exit.i.i, %bb.cv, %bb.cu
  %i.afx = phi ptr [ %i.aez, %bb.cu ], [ %.sink.i.i.i, %stbi__refill_buffer.exit.i.i ], [ %i.aez, %bb.cv ] ; 2 uses
  %i.afy = phi ptr [ %i.afe, %bb.cu ], [ %i.m, %stbi__refill_buffer.exit.i.i ], [ %i.afa, %bb.cv ]
  %i.afz = phi ptr [ %i.afb, %bb.cu ], [ %.sink.i.i.i, %stbi__refill_buffer.exit.i.i ], [ %i.afb, %bb.cv ] ; 3 uses
  %i.aga = phi ptr [ %i.afe, %bb.cu ], [ %i.m, %stbi__refill_buffer.exit.i.i ], [ %i.afc, %bb.cv ] ; 4 uses
  %.0.i384.i = phi i8 [ %i.aff, %bb.cu ], [ %i.afw, %stbi__refill_buffer.exit.i.i ], [ 0, %bb.cv ]
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 4 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 2
  store i8 %.0.i384.i, ptr %i.agc, align 2
  %i.agd = icmp ult ptr %i.aga, %i.afz
  br i1 %i.agd, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %stbi__get8.exit.i
  %i.age = getelementptr inbounds nuw i8, ptr %i.aga, i64 1 ; 3 uses
  store ptr %i.age, ptr %i.d, align 8
  %i.agf = load i8, ptr %i.aga, align 1
  br label %stbi__get8.exit390.i

bb.da:                                            ; preds = %stbi__get8.exit.i
  %i.agg = load i32, ptr %i.f, align 8
  %.not.i385.i = icmp eq i32 %i.agg, 0
  br i1 %.not.i385.i, label %stbi__get8.exit390.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.agh = load ptr, ptr %i.g, align 8
  %i.agi = load ptr, ptr %i.h, align 8
  %i.agj = load i32, ptr %i.j, align 4
  %i.agk = tail call i32 %i.agh(ptr noundef %i.agi, ptr noundef nonnull %i.i, i32 noundef %i.agj) #52, !inline_history !155 ; 2 uses
  %i.agl = load ptr, ptr %i.d, align 8
  %i.agm = load ptr, ptr %i.k, align 8
  %i.agn = ptrtoint ptr %i.agl to i64
  %i.ago = ptrtoint ptr %i.agm to i64
  %i.agp = sub i64 %i.agn, %i.ago
  %i.agq = trunc i64 %i.agp to i32
  %i.agr = load i32, ptr %i.l, align 8
  %i.ags = add nsw i32 %i.agr, %i.agq
  store i32 %i.ags, ptr %i.l, align 8
  %i.agt = icmp eq i32 %i.agk, 0
  br i1 %i.agt, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %i.f, align 8
  store i8 0, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i387.i

bb.dd:                                            ; preds = %bb.db
  %i.agu = sext i32 %i.agk to i64
  %i.agv = getelementptr inbounds i8, ptr %i.i, i64 %i.agu
  %.pre.i386.i = load i8, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i387.i

stbi__refill_buffer.exit.i387.i:                  ; preds = %bb.dd, %bb.dc
  %i.agw = phi i8 [ 0, %bb.dc ], [ %.pre.i386.i, %bb.dd ]
  %.sink.i.i388.i = phi ptr [ %i.m, %bb.dc ], [ %i.agv, %bb.dd ] ; 3 uses
  store ptr %.sink.i.i388.i, ptr %i.e, align 8
  store ptr %i.m, ptr %i.d, align 8
  br label %stbi__get8.exit390.i

stbi__get8.exit390.i:                             ; preds = %stbi__refill_buffer.exit.i387.i, %bb.da, %bb.cz
  %i.agx = phi ptr [ %i.afx, %bb.cz ], [ %.sink.i.i388.i, %stbi__refill_buffer.exit.i387.i ], [ %i.afx, %bb.da ] ; 2 uses
  %i.agy = phi ptr [ %i.age, %bb.cz ], [ %i.m, %stbi__refill_buffer.exit.i387.i ], [ %i.afy, %bb.da ]
  %i.agz = phi ptr [ %i.afz, %bb.cz ], [ %.sink.i.i388.i, %stbi__refill_buffer.exit.i387.i ], [ %i.afz, %bb.da ] ; 3 uses
  %i.aha = phi ptr [ %i.age, %bb.cz ], [ %i.m, %stbi__refill_buffer.exit.i387.i ], [ %i.aga, %bb.da ] ; 4 uses
  %.0.i389.i = phi i8 [ %i.agf, %bb.cz ], [ %i.agw, %stbi__refill_buffer.exit.i387.i ], [ 0, %bb.da ]
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agb, i64 1
  store i8 %.0.i389.i, ptr %i.ahb, align 1
  %i.ahc = icmp ult ptr %i.aha, %i.agz
  br i1 %i.ahc, label %bb.de, label %bb.df

bb.de:                                            ; preds = %stbi__get8.exit390.i
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.aha, i64 1 ; 3 uses
  store ptr %i.ahd, ptr %i.d, align 8
  %i.ahe = load i8, ptr %i.aha, align 1
  br label %stbi__get8.exit396.i

bb.df:                                            ; preds = %stbi__get8.exit390.i
  %i.ahf = load i32, ptr %i.f, align 8
  %.not.i391.i = icmp eq i32 %i.ahf, 0
  br i1 %.not.i391.i, label %stbi__get8.exit396.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ahg = load ptr, ptr %i.g, align 8
  %i.ahh = load ptr, ptr %i.h, align 8
  %i.ahi = load i32, ptr %i.j, align 4
  %i.ahj = tail call i32 %i.ahg(ptr noundef %i.ahh, ptr noundef nonnull %i.i, i32 noundef %i.ahi) #52, !inline_history !155 ; 2 uses
  %i.ahk = load ptr, ptr %i.d, align 8
  %i.ahl = load ptr, ptr %i.k, align 8
  %i.ahm = ptrtoint ptr %i.ahk to i64
  %i.ahn = ptrtoint ptr %i.ahl to i64
  %i.aho = sub i64 %i.ahm, %i.ahn
  %i.ahp = trunc i64 %i.aho to i32
  %i.ahq = load i32, ptr %i.l, align 8
  %i.ahr = add nsw i32 %i.ahq, %i.ahp
  store i32 %i.ahr, ptr %i.l, align 8
  %i.ahs = icmp eq i32 %i.ahj, 0
  br i1 %i.ahs, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  store i32 0, ptr %i.f, align 8
  store i8 0, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i393.i

bb.di:                                            ; preds = %bb.dg
  %i.aht = sext i32 %i.ahj to i64
  %i.ahu = getelementptr inbounds i8, ptr %i.i, i64 %i.aht
  %.pre.i392.i = load i8, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i393.i

stbi__refill_buffer.exit.i393.i:                  ; preds = %bb.di, %bb.dh
  %i.ahv = phi i8 [ 0, %bb.dh ], [ %.pre.i392.i, %bb.di ]
  %.sink.i.i394.i = phi ptr [ %i.m, %bb.dh ], [ %i.ahu, %bb.di ] ; 3 uses
  store ptr %.sink.i.i394.i, ptr %i.e, align 8
end_hunk_5
begin_hunk_6_@stbi__parse_png_file:bb.a
  %.1230 = select i1 %i.qf, i32 %i.qg, i32 %.0229
  br label %bb.eu

bb.eu:                                            ; preds = %bb.eu, %bb.et
  %.2231 = phi i32 [ %.1230, %bb.et ], [ %i.qi, %bb.eu ] ; 4 uses
  %i.qh = icmp ugt i32 %i.qc, %.2231
  %i.qi = shl i32 %.2231, 1
  br i1 %i.qh, label %bb.eu, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.qj = load ptr, ptr %i.f, align 8
  %i.qk = zext i32 %.2231 to i64
  %i.ql = tail call ptr @realloc(ptr noundef %i.qj, i64 noundef %i.qk) #54 ; 3 uses
  %.not273 = icmp eq ptr %i.ql, null
  br i1 %.not273, label %.thread383, label %bb.ew

.thread383:                                       ; preds = %bb.ev
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.ew:                                            ; preds = %bb.ev
  store ptr %i.ql, ptr %i.f, align 8
  br label %bb.ex

bb.ex:                                            ; preds = %._crit_edge, %bb.ew
  %i.qm = phi ptr [ %i.ql, %bb.ew ], [ %.pre, %._crit_edge ]
  %.3232 = phi i32 [ %.2231, %bb.ew ], [ %.0229, %._crit_edge ] ; 2 uses
  %i.qn = zext i32 %.0233 to i64
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.qn ; 3 uses
  %i.qp = load ptr, ptr %i.k, align 8
  %.not.i341 = icmp eq ptr %i.qp, null
  br i1 %.not.i341, label %..thread_crit_edge.i343, label %bb.ey

..thread_crit_edge.i343:                          ; preds = %bb.ex
  %.pre.i345 = load ptr, ptr %i.h, align 8
  %.pre35.i = load ptr, ptr %i.i, align 8
  br label %.thread.i342

bb.ey:                                            ; preds = %bb.ex
  %i.qq = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.qr = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.qs = ptrtoint ptr %i.qq to i64
  %i.qt = ptrtoint ptr %i.qr to i64
  %i.qu = sub i64 %i.qs, %i.qt                    ; 2 uses
  %i.qv = trunc i64 %i.qu to i32                  ; 2 uses
  %i.qw = icmp sgt i32 %i.gs, %i.qv
  br i1 %i.qw, label %stbi__getn.exit, label %.thread.i342

.thread.i342:                                     ; preds = %bb.ey, %..thread_crit_edge.i343
  %i.qx = phi ptr [ %.pre35.i, %..thread_crit_edge.i343 ], [ %i.qq, %bb.ey ]
  %i.qy = phi ptr [ %.pre.i345, %..thread_crit_edge.i343 ], [ %i.qr, %bb.ey ] ; 2 uses
  %i.qz = zext nneg i32 %i.gs to i64              ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qz
  %.not32.i = icmp ugt ptr %i.ra, %i.qx
  br i1 %.not32.i, label %stbi__getn.exit.thread, label %stbi__getn.exit.thread387

stbi__getn.exit.thread387:                        ; preds = %.thread.i342
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qo, ptr align 1 %i.qy, i64 %i.qz, i1 false)
  %i.rb = load ptr, ptr %i.h, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.qz
  store ptr %i.rc, ptr %i.h, align 8
  br label %.loopexit

stbi__getn.exit:                                  ; preds = %bb.ey
  %sext.i = shl i64 %i.qu, 32
  %i.rd = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qo, ptr align 1 %i.qr, i64 %i.rd, i1 false)
  %i.re = load ptr, ptr %i.k, align 8
  %i.rf = load ptr, ptr %i.l, align 8
  %i.rg = getelementptr inbounds i8, ptr %i.qo, i64 %i.rd
  %i.rh = sub nsw i32 %i.gs, %i.qv                ; 2 uses
  %i.ri = tail call i32 %i.re(ptr noundef %i.rf, ptr noundef %i.rg, i32 noundef %i.rh) #52, !inline_history !171
  %.not = icmp eq i32 %i.ri, %i.rh
  %i.rj = load ptr, ptr %i.i, align 8
  store ptr %i.rj, ptr %i.h, align 8
  br i1 %.not, label %.loopexit, label %stbi__getn.exit.thread

stbi__getn.exit.thread:                           ; preds = %.thread.i342, %stbi__getn.exit
  store ptr @.str.105, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.ez:                                            ; preds = %bb.aw
  %.not259 = icmp eq i32 %.0220, 0
  br i1 %.not259, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  store ptr @.str.96, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.fb:                                            ; preds = %bb.ez
  %.not260 = icmp eq i32 %1, 0
  br i1 %.not260, label %bb.fc, label %.thread400

bb.fc:                                            ; preds = %bb.fb
  %i.rk = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.rl = icmp eq ptr %i.rk, null
  br i1 %i.rl, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store ptr @.str.106, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.fe:                                            ; preds = %bb.fc
  %i.rm = load i32, ptr %i.d, align 8
  %i.rn = load i32, ptr %i.gm, align 8
  %i.ro = mul i32 %i.rn, %i.rm
  %i.rp = add i32 %i.ro, 7
  %i.rq = lshr i32 %i.rp, 3
  %i.rr = load i32, ptr %i.gn, align 4            ; 2 uses
  %i.rs = load i32, ptr %i.gl, align 8
  %i.rt = mul i32 %i.rs, %i.rr
  %i.ru = mul i32 %i.rt, %i.rq
  %i.rv = add i32 %i.ru, %i.rr                    ; 2 uses
  %i.rw = icmp ne i32 %.0207, 0                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #52
  %i.rx = sext i32 %i.rv to i64
  %i.ry = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.rx) #53 ; 2 uses
  %i.rz = icmp eq ptr %i.ry, null
  br i1 %i.rz, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.sa = xor i1 %i.rw, true
  %i.sb = zext i1 %i.sa to i32
  store ptr %i.rk, ptr %3, align 8
  %i.sc = sext i32 %.0233 to i64
  %i.sd = getelementptr inbounds i8, ptr %i.rk, i64 %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.sd, ptr %i.se, align 8
  %i.sf = call fastcc i32 @stbi__do_zlib(ptr noundef %3, ptr noundef nonnull %i.ry, i32 noundef %i.rv, i32 noundef 1, i32 noundef %i.sb)
  %.not.i346 = icmp eq i32 %i.sf, 0
  br i1 %.not.i346, label %bb.fg, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit

bb.fg:                                            ; preds = %bb.ff
  %i.sg = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.sh = load ptr, ptr %i.sg, align 8
  call void @free(ptr noundef %i.sh) #52
  br label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread

stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread: ; preds = %bb.fg, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #52
  store ptr null, ptr %i.e, align 8
  br label %.thread400

stbi_zlib_decode_malloc_guesssize_headerflag.exit: ; preds = %bb.ff
  %i.si = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.sj = load ptr, ptr %i.si, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.sl = load ptr, ptr %i.sk, align 8            ; 3 uses
  %i.sm = ptrtoint ptr %i.sj to i64
  %i.sn = ptrtoint ptr %i.sl to i64
  %i.so = sub i64 %i.sm, %i.sn
  %i.sp = trunc i64 %i.so to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #52
  store ptr %i.sl, ptr %i.e, align 8
  %i.sq = icmp eq ptr %i.sl, null
  br i1 %i.sq, label %.thread400, label %bb.fh

bb.fh:                                            ; preds = %stbi_zlib_decode_malloc_guesssize_headerflag.exit
  %i.sr = load ptr, ptr %i.f, align 8
  call void @free(ptr noundef %i.sr) #52
  store ptr null, ptr %i.f, align 8
  %i.ss = load i32, ptr %i.gl, align 8            ; 2 uses
  %i.st = add nsw i32 %i.ss, 1                    ; 2 uses
  %i.su = icmp eq i32 %2, %i.st
  %i.sv = icmp ne i32 %2, 3
  %or.cond5.not263.not268 = and i1 %i.sv, %i.su
  %i.sw = icmp eq i8 %.0239, 0                    ; 2 uses
  %or.cond7.not265 = select i1 %or.cond5.not263.not268, i1 %i.sw, i1 false
  %i.sx = icmp ne i8 %.0236, 0
  %or.cond10 = select i1 %or.cond7.not265, i1 true, i1 %i.sx
  %spec.select1503 = select i1 %or.cond10, i32 %i.st, i32 %i.ss ; 4 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 4 uses
  store i32 %spec.select1503, ptr %i.sy, align 4
  %i.sz = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ta = load i32, ptr %i.gm, align 8            ; 4 uses
  %i.tb = icmp eq i32 %i.ta, 16
  %i.tc = zext i1 %i.tb to i32
  %i.td = shl i32 %spec.select1503, %i.tc         ; 6 uses
  %.not.i350 = icmp eq i32 %.0214, 0
  %i.te = load ptr, ptr %0, align 8               ; 2 uses
  %i.tf = load i32, ptr %i.te, align 8            ; 4 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 4
  %i.th = load i32, ptr %i.tg, align 4            ; 5 uses
  br i1 %.not.i350, label %stbi__create_png_image.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ti = or i32 %i.th, %i.tf
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.ti, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.fj, label %stbi__malloc_mad3.exit.thread.i

bb.fj:                                            ; preds = %bb.fi
  %i.tj = icmp eq i32 %i.th, 0
  br i1 %i.tj, label %stbi__mul2sizes_valid.exit.thread15.i.i.i, label %stbi__mul2sizes_valid.exit.i.i.i

stbi__mul2sizes_valid.exit.i.i.i:                 ; preds = %bb.fj
  %i.tk = udiv i32 2147483647, %i.th
  %.not23.i.i.i = icmp sgt i32 %i.tf, %i.tk
  br i1 %.not23.i.i.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__mul2sizes_valid.exit.thread15.i.i.i

stbi__mul2sizes_valid.exit.thread15.i.i.i:        ; preds = %stbi__mul2sizes_valid.exit.i.i.i, %bb.fj
  %i.tl = mul nsw i32 %i.th, %i.tf                ; 3 uses
  %i.tm = or i32 %i.tl, %i.td
  %or.cond.not.i10.i.i.i = icmp sgt i32 %i.tm, -1
  br i1 %or.cond.not.i10.i.i.i, label %bb.fk, label %stbi__malloc_mad3.exit.thread.i

bb.fk:                                            ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i.i
  %i.tn = icmp eq i32 %i.td, 0
  br i1 %i.tn, label %stbi__malloc_mad3.exit.i, label %stbi__mul2sizes_valid.exit12.i.i.i

stbi__mul2sizes_valid.exit12.i.i.i:               ; preds = %bb.fk
  %i.to = udiv i32 2147483647, %i.td
  %.not.i.i.i = icmp sgt i32 %i.tl, %i.to
  br i1 %.not.i.i.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__malloc_mad3.exit.i

stbi__malloc_mad3.exit.i:                         ; preds = %stbi__mul2sizes_valid.exit12.i.i.i, %bb.fk
  %i.tp = mul nsw i32 %i.tl, %i.td
  %i.tq = sext i32 %i.tp to i64
  %i.tr = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.tq) #53 ; 4 uses
  %.not92.i = icmp eq ptr %i.tr, null
  br i1 %.not92.i, label %stbi__malloc_mad3.exit.thread.i, label %.preheader100.i

.preheader100.i:                                  ; preds = %stbi__malloc_mad3.exit.i
  %i.ts = sext i32 %i.td to i64                   ; 9 uses
  br label %bb.fl

stbi__malloc_mad3.exit.thread.i:                  ; preds = %stbi__malloc_mad3.exit.i, %stbi__mul2sizes_valid.exit12.i.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i, %bb.fi
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.fl:                                            ; preds = %bb.fn, %.preheader100.i
  %indvars.iv112.i = phi i64 [ 0, %.preheader100.i ], [ %indvars.iv.next113.i, %bb.fn ] ; 5 uses
  %.076106.i = phi ptr [ %i.sz, %.preheader100.i ], [ %.379.i, %bb.fn ] ; 3 uses
  %.085104.i = phi i32 [ %i.sp, %.preheader100.i ], [ %.388.i, %bb.fn ] ; 3 uses
  %i.tt = load ptr, ptr %0, align 8               ; 3 uses
  %i.tu = load i32, ptr %i.tt, align 8
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xorig, i64 %indvars.iv112.i
  %i.tw = load i32, ptr %i.tv, align 4            ; 2 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xspc, i64 %indvars.iv112.i
  %i.ty = load i32, ptr %i.tx, align 4            ; 4 uses
  %i.tz = xor i32 %i.tw, -1
  %i.ua = add i32 %i.tu, %i.tz
  %i.ub = add i32 %i.ua, %i.ty                    ; 2 uses
  %i.uc = udiv i32 %i.ub, %i.ty                   ; 6 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tt, i64 4
  %i.ue = load i32, ptr %i.ud, align 4
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yorig, i64 %indvars.iv112.i
  %i.ug = load i32, ptr %i.uf, align 4            ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yspc, i64 %indvars.iv112.i
  %i.ui = load i32, ptr %i.uh, align 4            ; 4 uses
  %i.uj = xor i32 %i.ug, -1
  %i.uk = add i32 %i.ue, %i.uj
  %i.ul = add i32 %i.uk, %i.ui                    ; 2 uses
  %i.um = udiv i32 %i.ul, %i.ui                   ; 4 uses
  %i.un = icmp ule i32 %i.ty, %i.ub
  %i.uo = icmp ule i32 %i.ui, %i.ul
  %or.cond.i = select i1 %i.un, i1 %i.uo, i1 false
  br i1 %or.cond.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.up = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %i.uq = load i32, ptr %i.up, align 8
  %i.ur = mul i32 %i.uc, %i.ta
  %i.us = mul i32 %i.ur, %i.uq
  %i.ut = add nsw i32 %i.us, 7
  %i.uu = ashr i32 %i.ut, 3
  %i.uv = add nsw i32 %i.uu, 1
  %i.uw = mul nsw i32 %i.uv, %i.um                ; 2 uses
  %i.ux = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef %.076106.i, i32 noundef %.085104.i, i32 noundef %spec.select1503, i32 noundef %i.uc, i32 noundef %i.um, i32 noundef %i.ta, i32 noundef range(i32 0, 256) %.0210)
  %.not93.not.i = icmp eq i32 %i.ux, 0
  br i1 %.not93.not.i, label %.thread.i354, label %.preheader99.i

.preheader99.i:                                   ; preds = %bb.fm
  %i.uy = icmp sgt i32 %i.um, 0
  %i.uz = icmp sgt i32 %i.uc, 0
  %or.cond107.i = and i1 %i.uz, %i.uy
  %.pre115.i = load ptr, ptr %i.g, align 8        ; 4 uses
  br i1 %or.cond107.i, label %.preheader.lr.ph.split.i, label %._crit_edge103.split.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader99.i
  %i.va = load ptr, ptr %0, align 8
  %i.vb = sext i32 %i.ty to i64                   ; 3 uses
  %i.vc = sext i32 %i.tw to i64                   ; 3 uses
  %i.vd = zext nneg i32 %i.uc to i64              ; 3 uses
  %i.ve = zext nneg i32 %i.um to i64
  %.pre.pre.i = load i32, ptr %i.va, align 8
  %factor.op.mul.i = mul i32 %.pre.pre.i, %i.td
  %xtraiter = and i64 %i.vd, 1
  %i.vf = icmp ult i32 %i.uc, 2
  %unroll_iter = and i64 %i.vd, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2144 = trunc i32 %i.uc to i1
  br label %.preheader.i

.thread.i354:                                     ; preds = %bb.fm
  call void @free(ptr noundef %i.tr) #52
  br label %.thread400

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %indvars.iv109.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next110.i, %._crit_edge.i ] ; 3 uses
  %i.vg = trunc i64 %indvars.iv109.i to i32
  %i.vh = mul i32 %i.ui, %i.vg
  %i.vi = add i32 %i.vh, %i.ug
  %.reass.i = mul i32 %factor.op.mul.i, %i.vi
  %i.vj = mul nuw nsw i64 %indvars.iv109.i, %i.vd ; 3 uses
  %i.vk = zext i32 %.reass.i to i64
  %i.vl = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.vk ; 3 uses
  br i1 %i.vf, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i352 = phi i64 [ %indvars.iv.next.i353.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.vm = mul nsw i64 %indvars.iv.i352, %i.vb
  %i.vn = add nsw i64 %i.vm, %i.vc
  %i.vo = mul nsw i64 %i.vn, %i.ts
  %i.vp = getelementptr inbounds i8, ptr %i.vl, i64 %i.vo
  %i.vq = add nuw nsw i64 %indvars.iv.i352, %i.vj
  %i.vr = mul nsw i64 %i.vq, %i.ts
  %i.vs = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.vr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vp, ptr align 1 %i.vs, i64 %i.ts, i1 false)
  %indvars.iv.next.i353 = or disjoint i64 %indvars.iv.i352, 1 ; 2 uses
  %i.vt = mul nsw i64 %indvars.iv.next.i353, %i.vb
  %i.vu = add nsw i64 %i.vt, %i.vc
  %i.vv = mul nsw i64 %i.vu, %i.ts
  %i.vw = getelementptr inbounds i8, ptr %i.vl, i64 %i.vv
  %i.vx = add nuw nsw i64 %indvars.iv.next.i353, %i.vj
  %i.vy = mul nsw i64 %i.vx, %i.ts
  %i.vz = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.vy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vw, ptr align 1 %i.vz, i64 %i.ts, i1 false)
  %indvars.iv.next.i353.1 = add nuw nsw i64 %indvars.iv.i352, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i352.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i353.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2144)
  %i.wa = mul nsw i64 %indvars.iv.i352.epil.init, %i.vb
  %i.wb = add nsw i64 %i.wa, %i.vc
  %i.wc = mul nsw i64 %i.wb, %i.ts
  %i.wd = getelementptr inbounds i8, ptr %i.vl, i64 %i.wc
  %i.we = add nuw nsw i64 %indvars.iv.i352.epil.init, %i.vj
  %i.wf = mul nsw i64 %i.we, %i.ts
  %i.wg = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.wf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wd, ptr align 1 %i.wg, i64 %i.ts, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %i.wh = icmp samesign ult i64 %indvars.iv.next110.i, %i.ve
  br i1 %i.wh, label %.preheader.i, label %._crit_edge103.split.i

._crit_edge103.split.i:                           ; preds = %._crit_edge.i, %.preheader99.i
  call void @free(ptr noundef %.pre115.i) #52
  %i.wi = zext i32 %i.uw to i64
  %i.wj = getelementptr inbounds nuw i8, ptr %.076106.i, i64 %i.wi
  %i.wk = sub i32 %.085104.i, %i.uw
  br label %bb.fn

bb.fn:                                            ; preds = %._crit_edge103.split.i, %bb.fl
  %.388.i = phi i32 [ %.085104.i, %bb.fl ], [ %i.wk, %._crit_edge103.split.i ]
  %.379.i = phi ptr [ %.076106.i, %bb.fl ], [ %i.wj, %._crit_edge103.split.i ]
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond.not.i351 = icmp eq i64 %indvars.iv.next113.i, 7
  br i1 %exitcond.not.i351, label %stbi__create_png_image.exit.thread394, label %bb.fl

stbi__create_png_image.exit.thread394:            ; preds = %bb.fn
  store ptr %i.tr, ptr %i.g, align 8
  br label %bb.fo

stbi__create_png_image.exit:                      ; preds = %bb.fh
  %i.wl = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef readonly %i.sz, i32 noundef %i.sp, i32 noundef %spec.select1503, i32 noundef %i.tf, i32 noundef %i.th, i32 noundef %i.ta, i32 noundef range(i32 0, 256) %.0210)
  %.not269 = icmp eq i32 %i.wl, 0
  br i1 %.not269, label %.thread400, label %bb.fo

bb.fo:                                            ; preds = %stbi__create_png_image.exit.thread394, %stbi__create_png_image.exit
  %.not270 = icmp eq i8 %.0236, 0                 ; 2 uses
  br i1 %.not270, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.wm = load i32, ptr %i.gm, align 8
  %i.wn = icmp eq i32 %i.wm, 16
  %i.wo = load i32, ptr %i.sy, align 4            ; 2 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %.val300 = load ptr, ptr %i.g, align 8          ; 2 uses
  %.val.val = load i32, ptr %.val, align 8        ; 2 uses
  %i.wp = getelementptr i8, ptr %.val, i64 4
  %.val.val301 = load i32, ptr %i.wp, align 4     ; 2 uses
  br i1 %i.wn, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call fastcc void @stbi__compute_transparency16(i32 %.val.val, i32 %.val.val301, ptr %.val300, ptr noundef %i.c, i32 noundef %i.wo)
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  call fastcc void @stbi__compute_transparency(i32 %.val.val, i32 %.val.val301, ptr %.val300, ptr noundef %i.b, i32 noundef %i.wo)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fo
  %i.wq = load i32, ptr @stbi__de_iphone_flag_global, align 4
  %i.wr = icmp ne i32 %i.wq, 0
  %or.cond12 = select i1 %i.rw, i1 %i.wr, i1 false
  br i1 %or.cond12, label %bb.ft, label %bb.fv

bb.ft:                                            ; preds = %bb.fs
  %i.ws = load i32, ptr %i.sy, align 4
  %i.wt = icmp sgt i32 %i.ws, 2
  br i1 %i.wt, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %.val305 = load ptr, ptr %0, align 8
  %.val306 = load ptr, ptr %i.g, align 8
  call fastcc void @stbi__de_iphone(ptr %.val305, ptr %.val306)
  br label %bb.fv
end_hunk_6
begin_hunk_7_@stbi__parse_png_file:bb.a
  store <4 x i8> %i.zo, ptr %i.zh, align 1
  %i.zp = getelementptr inbounds nuw i8, ptr %.14651.i, i64 16 ; 2 uses
  %indvars.iv.next.i359.3 = add nuw nsw i64 %indvars.iv.i358, 4 ; 2 uses
  %niter2149.next.3 = add i64 %niter2149, 4       ; 2 uses
  %niter2149.ncmp.3 = icmp eq i64 %niter2149.next.3, %unroll_iter2148
  br i1 %niter2149.ncmp.3, label %stbi__expand_png_palette.exit.loopexit1824.unr-lcssa, label %.lr.ph.i

stbi__expand_png_palette.exit.loopexit.unr-lcssa: ; preds = %.lr.ph55.i
  %lcmp.mod2152.not = icmp eq i64 %xtraiter2150, 0
  br i1 %lcmp.mod2152.not, label %stbi__expand_png_palette.exit, label %.lr.ph55.i.epil.preheader

.lr.ph55.i.epil.preheader:                        ; preds = %stbi__expand_png_palette.exit.loopexit.unr-lcssa, %.lr.ph55.preheader.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.lr.ph55.preheader.i ], [ %indvars.iv.next60.i.1, %stbi__expand_png_palette.exit.loopexit.unr-lcssa ]
  %.04553.i.epil.init = phi ptr [ %i.xf, %.lr.ph55.preheader.i ], [ %i.yk, %stbi__expand_png_palette.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod2153 = trunc i32 %i.xa to i1
  call void @llvm.assume(i1 %lcmp.mod2153)
  %i.zq = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv59.i.epil.init
  %i.zr = load i8, ptr %i.zq, align 1
  %i.zs = zext i8 %i.zr to i64
  %i.zt = shl nuw nsw i64 %i.zs, 2
  %i.zu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zt ; 3 uses
  %i.zv = load i8, ptr %i.zu, align 4
  store i8 %i.zv, ptr %.04553.i.epil.init, align 1
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zu, i64 1
  %i.zx = load i8, ptr %i.zw, align 1
  %i.zy = getelementptr inbounds nuw i8, ptr %.04553.i.epil.init, i64 1
  store i8 %i.zx, ptr %i.zy, align 1
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zu, i64 2
  %i.aaa = load i8, ptr %i.zz, align 2
  %i.aab = getelementptr inbounds nuw i8, ptr %.04553.i.epil.init, i64 2
  store i8 %i.aaa, ptr %i.aab, align 1
  br label %stbi__expand_png_palette.exit

stbi__expand_png_palette.exit.loopexit1824.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod2146.not = icmp eq i64 %xtraiter2145, 0
  br i1 %lcmp.mod2146.not, label %stbi__expand_png_palette.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %stbi__expand_png_palette.exit.loopexit1824.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i358.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i359.3, %stbi__expand_png_palette.exit.loopexit1824.unr-lcssa ]
  %.14651.i.epil.init = phi ptr [ %i.xf, %.lr.ph.preheader.i ], [ %i.zp, %stbi__expand_png_palette.exit.loopexit1824.unr-lcssa ]
  %lcmp.mod2147 = icmp ne i64 %xtraiter2145, 0
  call void @llvm.assume(i1 %lcmp.mod2147)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i358.epil = phi i64 [ %indvars.iv.i358.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i359.epil, %.lr.ph.i.epil ] ; 2 uses
  %.14651.i.epil = phi ptr [ %.14651.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.aai, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.aac = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv.i358.epil
  %i.aad = load i8, ptr %i.aac, align 1
  %i.aae = zext i8 %i.aad to i64
  %i.aaf = shl nuw nsw i64 %i.aae, 2
  %i.aag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aaf
  %i.aah = load <4 x i8>, ptr %i.aag, align 4
  store <4 x i8> %i.aah, ptr %.14651.i.epil, align 1
  %i.aai = getelementptr inbounds nuw i8, ptr %.14651.i.epil, i64 4
  %indvars.iv.next.i359.epil = add nuw nsw i64 %indvars.iv.i358.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2145
  br i1 %epil.iter.cmp.not, label %stbi__expand_png_palette.exit, label %.lr.ph.i.epil, !llvm.loop !172

stbi__expand_png_palette.exit:                    ; preds = %stbi__expand_png_palette.exit.loopexit1824.unr-lcssa, %.lr.ph.i.epil, %.lr.ph55.i.epil.preheader, %stbi__expand_png_palette.exit.loopexit.unr-lcssa, %.preheader49.i, %.preheader.i361
  call void @free(ptr noundef %i.xb) #52
  store ptr %i.xf, ptr %i.g, align 8
  br label %bb.ga

bb.fy:                                            ; preds = %bb.fv
  br i1 %.not270, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.aaj = load i32, ptr %i.gl, align 8
  %i.aak = add nsw i32 %i.aaj, 1
  store i32 %i.aak, ptr %i.gl, align 8
  br label %bb.ga

bb.ga:                                            ; preds = %stbi__expand_png_palette.exit, %bb.fy, %bb.fz
  %i.aal = load ptr, ptr %i.e, align 8
  call void @free(ptr noundef %i.aal) #52
  store ptr null, ptr %i.e, align 8
  %i.aam = call fastcc i32 @stbi__get16be(ptr noundef nonnull %i.d) ; 0 uses
  %i.aan = call fastcc i32 @stbi__get16be(ptr noundef nonnull %i.d) ; 0 uses
  br label %.thread400

bb.gb:                                            ; preds = %bb.aw
  %.not298 = icmp eq i32 %.0220, 0
  br i1 %.not298, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  store ptr @.str.96, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.gd:                                            ; preds = %bb.gb
  %i.aao = and i32 %i.gt, 8192
  %i.aap = icmp eq i32 %i.aao, 0
  br i1 %i.aap, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.aaq = lshr i32 %i.gt, 8
  %i.aar = trunc nuw i32 %i.aaq to i8
  store i8 %i.aar, ptr @stbi__parse_png_file.invalid_chunk, align 16
  %i.aas = trunc i32 %i.gt to i8
  store i8 %i.aas, ptr getelementptr inbounds nuw (i8, ptr @stbi__parse_png_file.invalid_chunk, i64 1), align 1
  %i.aat = lshr i32 %i.gv, 8
  %i.aau = trunc nuw i32 %i.aat to i8
  store i8 %i.aau, ptr getelementptr inbounds nuw (i8, ptr @stbi__parse_png_file.invalid_chunk, i64 2), align 2
  %i.aav = trunc i32 %i.gv to i8
  store i8 %i.aav, ptr getelementptr inbounds nuw (i8, ptr @stbi__parse_png_file.invalid_chunk, i64 3), align 1
  store ptr @stbi__parse_png_file.invalid_chunk, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.gf:                                            ; preds = %bb.gd
  %i.aaw = icmp eq i32 %i.gs, 0
  br i1 %i.aaw, label %.loopexit, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aax = icmp slt i32 %i.gq, 0
  br i1 %i.aax, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.aay = load ptr, ptr %i.i, align 8
  store ptr %i.aay, ptr %i.h, align 8
  br label %.loopexit

bb.gi:                                            ; preds = %bb.gg
  %i.aaz = load ptr, ptr %i.k, align 8
  %.not.i362 = icmp eq ptr %i.aaz, null
  br i1 %.not.i362, label %..thread_crit_edge.i364, label %bb.gj

..thread_crit_edge.i364:                          ; preds = %bb.gi
  %.pre.i366 = load ptr, ptr %i.h, align 8
  br label %.thread.i363

bb.gj:                                            ; preds = %bb.gi
  %i.aba = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.abb = load ptr, ptr %i.h, align 8            ; 2 uses
  %i.abc = ptrtoint ptr %i.aba to i64
  %i.abd = ptrtoint ptr %i.abb to i64
  %i.abe = sub i64 %i.abc, %i.abd
  %i.abf = trunc i64 %i.abe to i32                ; 2 uses
  %i.abg = icmp sgt i32 %i.gs, %i.abf
  br i1 %i.abg, label %bb.gk, label %.thread.i363

bb.gk:                                            ; preds = %bb.gj
  store ptr %i.aba, ptr %i.h, align 8
  %i.abh = load ptr, ptr %i.go, align 8
  %i.abi = load ptr, ptr %i.l, align 8
  %i.abj = sub nsw i32 %i.gs, %i.abf
  tail call void %i.abh(ptr noundef %i.abi, i32 noundef %i.abj) #52, !inline_history !169
  br label %.loopexit

.thread.i363:                                     ; preds = %bb.gj, %..thread_crit_edge.i364
  %i.abk = phi ptr [ %.pre.i366, %..thread_crit_edge.i364 ], [ %i.abb, %bb.gj ]
  %i.abl = zext nneg i32 %i.gs to i64
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.abl
  store ptr %i.abm, ptr %i.h, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %stbi__get8.exit340, %.lr.ph747, %.lr.ph749, %stbi__get8.exit334, %.preheader417, %.preheader415, %.preheader413, %.preheader, %stbi__getn.exit, %bb.ax, %bb.az, %bb.bc, %.thread.i, %bb.cm, %bb.co, %stbi__getn.exit.thread387, %bb.gf, %bb.gh, %bb.gk, %.thread.i363
  %.3242 = phi i8 [ %.0239, %stbi__getn.exit.thread387 ], [ %.0239, %stbi__getn.exit ], [ %.0239, %.thread.i ], [ %.0239, %.thread.i363 ], [ 0, %.preheader413 ], [ 0, %.preheader415 ], [ %.0239, %.preheader ], [ %.0239, %bb.ax ], [ %.0239, %bb.az ], [ %.0239, %bb.bc ], [ %.1240, %bb.co ], [ 0, %bb.cm ], [ %.0239, %bb.gf ], [ %.0239, %bb.gh ], [ %.0239, %bb.gk ], [ 4, %.preheader417 ], [ 0, %.lr.ph747 ], [ %.0239, %stbi__get8.exit334 ], [ 0, %.lr.ph749 ], [ 4, %stbi__get8.exit340 ]
  %.1237 = phi i8 [ %.0236, %stbi__getn.exit.thread387 ], [ %.0236, %stbi__getn.exit ], [ %.0236, %.thread.i ], [ %.0236, %.thread.i363 ], [ 1, %.preheader413 ], [ 1, %.preheader415 ], [ %.0236, %.preheader ], [ %.0236, %bb.ax ], [ %.0236, %bb.az ], [ %.0236, %bb.bc ], [ %.0236, %bb.co ], [ %.0236, %bb.cm ], [ %.0236, %bb.gf ], [ %.0236, %bb.gh ], [ %.0236, %bb.gk ], [ %.0236, %.preheader417 ], [ 1, %.lr.ph747 ], [ %.0236, %stbi__get8.exit334 ], [ 1, %.lr.ph749 ], [ %.0236, %stbi__get8.exit340 ]
  %.1234 = phi i32 [ %i.qc, %stbi__getn.exit.thread387 ], [ %i.qc, %stbi__getn.exit ], [ %.0233, %.thread.i ], [ %.0233, %.thread.i363 ], [ %.0233, %.preheader413 ], [ %.0233, %.preheader415 ], [ %.0233, %.preheader ], [ %.0233, %bb.ax ], [ %.0233, %bb.az ], [ %.0233, %bb.bc ], [ %.0233, %bb.co ], [ %.0233, %bb.cm ], [ %.0233, %bb.gf ], [ %.0233, %bb.gh ], [ %.0233, %bb.gk ], [ %.0233, %.preheader417 ], [ %.0233, %.lr.ph747 ], [ %.0233, %stbi__get8.exit334 ], [ %.0233, %.lr.ph749 ], [ %.0233, %stbi__get8.exit340 ]
  %.4 = phi i32 [ %.3232, %stbi__getn.exit.thread387 ], [ %.3232, %stbi__getn.exit ], [ %.0229, %.thread.i ], [ %.0229, %.thread.i363 ], [ %.0229, %.preheader413 ], [ %.0229, %.preheader415 ], [ %.0229, %.preheader ], [ %.0229, %bb.ax ], [ %.0229, %bb.az ], [ %.0229, %bb.bc ], [ %.0229, %bb.co ], [ %.0229, %bb.cm ], [ %.0229, %bb.gf ], [ %.0229, %bb.gh ], [ %.0229, %bb.gk ], [ %.0229, %.preheader417 ], [ %.0229, %.lr.ph747 ], [ %.0229, %stbi__get8.exit334 ], [ %.0229, %.lr.ph749 ], [ %.0229, %stbi__get8.exit340 ]
  %.1225 = phi i32 [ %.0224, %stbi__getn.exit.thread387 ], [ %.0224, %stbi__getn.exit ], [ %.0224, %.thread.i ], [ %.0224, %.thread.i363 ], [ %.0224, %.preheader413 ], [ %.0224, %.preheader415 ], [ %.zext, %.preheader ], [ %.0224, %bb.ax ], [ %.0224, %bb.az ], [ %.0224, %bb.bc ], [ %.0224, %bb.co ], [ %.0224, %bb.cm ], [ %.0224, %bb.gf ], [ %.0224, %bb.gh ], [ %.0224, %bb.gk ], [ %.0224, %.preheader417 ], [ %.0224, %.lr.ph747 ], [ %.zext, %stbi__get8.exit334 ], [ %.0224, %.lr.ph749 ], [ %.0224, %stbi__get8.exit340 ]
  %.2222 = phi i32 [ 0, %stbi__getn.exit.thread387 ], [ 0, %stbi__getn.exit ], [ %.0220, %.thread.i ], [ 0, %.thread.i363 ], [ 0, %.preheader413 ], [ 0, %.preheader415 ], [ 0, %.preheader ], [ %.0220, %bb.ax ], [ %.0220, %bb.az ], [ %.0220, %bb.bc ], [ 0, %bb.co ], [ 0, %bb.cm ], [ 0, %bb.gf ], [ 0, %bb.gh ], [ 0, %bb.gk ], [ 0, %.preheader417 ], [ 0, %.lr.ph747 ], [ 0, %stbi__get8.exit334 ], [ 0, %.lr.ph749 ], [ 0, %stbi__get8.exit340 ]
  %.2216 = phi i32 [ %.0214, %stbi__getn.exit.thread387 ], [ %.0214, %stbi__getn.exit ], [ %.0214, %.thread.i ], [ %.0214, %.thread.i363 ], [ %.0214, %.preheader413 ], [ %.0214, %.preheader415 ], [ %.0214, %.preheader ], [ %.0214, %bb.ax ], [ %.0214, %bb.az ], [ %.0214, %bb.bc ], [ %i.kf, %bb.co ], [ %i.kf, %bb.cm ], [ %.0214, %bb.gf ], [ %.0214, %bb.gh ], [ %.0214, %bb.gk ], [ %.0214, %.preheader417 ], [ %.0214, %.lr.ph747 ], [ %.0214, %stbi__get8.exit334 ], [ %.0214, %.lr.ph749 ], [ %.0214, %stbi__get8.exit340 ]
  %.2212 = phi i32 [ %.0210, %stbi__getn.exit.thread387 ], [ %.0210, %stbi__getn.exit ], [ %.0210, %.thread.i ], [ %.0210, %.thread.i363 ], [ %.0210, %.preheader413 ], [ %.0210, %.preheader415 ], [ %.0210, %.preheader ], [ %.0210, %bb.ax ], [ %.0210, %bb.az ], [ %.0210, %bb.bc ], [ %i.kb, %bb.co ], [ %i.kb, %bb.cm ], [ %.0210, %bb.gf ], [ %.0210, %bb.gh ], [ %.0210, %bb.gk ], [ %.0210, %.preheader417 ], [ %.0210, %.lr.ph747 ], [ %.0210, %stbi__get8.exit334 ], [ %.0210, %.lr.ph749 ], [ %.0210, %stbi__get8.exit340 ]
  %.1208 = phi i32 [ %.0207, %stbi__getn.exit.thread387 ], [ %.0207, %stbi__getn.exit ], [ 1, %.thread.i ], [ %.0207, %.thread.i363 ], [ %.0207, %.preheader413 ], [ %.0207, %.preheader415 ], [ %.0207, %.preheader ], [ 1, %bb.ax ], [ 1, %bb.az ], [ 1, %bb.bc ], [ %.0207, %bb.co ], [ %.0207, %bb.cm ], [ %.0207, %bb.gf ], [ %.0207, %bb.gh ], [ %.0207, %bb.gk ], [ %.0207, %.preheader417 ], [ %.0207, %.lr.ph747 ], [ %.0207, %stbi__get8.exit334 ], [ %.0207, %.lr.ph749 ], [ %.0207, %stbi__get8.exit340 ]
  %i.abn = tail call fastcc i32 @stbi__get16be(ptr noundef %i.d) ; 0 uses
  %i.abo = tail call fastcc i32 @stbi__get16be(ptr noundef %i.d) ; 0 uses
  br label %bb.aw

.thread400:                                       ; preds = %bb.er, %.thread.i354, %stbi__malloc_mad3.exit.thread.i, %bb.cc, %bb.ck, %bb.cn, %bb.be, %bb.cp, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.by, %bb.br, %bb.bk, %bb.bi, %bb.bg, %bb.fa, %bb.fd, %bb.ga, %bb.fb, %stbi_zlib_decode_malloc_guesssize_headerflag.exit, %stbi__create_png_image.exit, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, %stbi__expand_png_palette.exit.thread, %bb.eo, %bb.el, %.thread383, %stbi__getn.exit.thread, %bb.en, %bb.eq, %bb.ej, %bb.ec, %bb.eg, %bb.ee, %bb.dv, %bb.dt, %bb.dr, %bb.do, %bb.dm, %bb.cv, %bb.ct, %bb.cr, %bb.ge, %bb.gc, %stbi__check_png_header.exit.thread, %stbi__check_png_header.exit
  %.7 = phi i32 [ 0, %stbi__check_png_header.exit.thread ], [ 1, %stbi__check_png_header.exit ], [ 0, %bb.cc ], [ 0, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread ], [ 0, %stbi__expand_png_palette.exit.thread ], [ 0, %stbi__create_png_image.exit ], [ 1, %bb.ga ], [ 1, %bb.fb ], [ 0, %bb.fd ], [ 0, %stbi_zlib_decode_malloc_guesssize_headerflag.exit ], [ 0, %bb.fa ], [ 1, %bb.eo ], [ 0, %bb.el ], [ 0, %.thread383 ], [ 0, %stbi__getn.exit.thread ], [ 1, %bb.en ], [ 0, %bb.eq ], [ 0, %.thread.i354 ], [ 0, %bb.ej ], [ 0, %bb.ec ], [ 1, %bb.eg ], [ 0, %bb.ee ], [ 0, %bb.dv ], [ 0, %bb.dt ], [ 1, %bb.dr ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.cv ], [ 0, %bb.ct ], [ 0, %bb.cr ], [ 0, %bb.gc ], [ 0, %bb.ge ], [ 0, %bb.bg ], [ 0, %bb.bi ], [ 0, %bb.bk ], [ 0, %bb.br ], [ 0, %bb.by ], [ 0, %bb.cb ], [ 0, %bb.cd ], [ 0, %bb.cf ], [ 0, %bb.ch ], [ 0, %bb.cp ], [ 0, %bb.be ], [ 0, %bb.cn ], [ 0, %bb.ck ], [ 0, %stbi__malloc_mad3.exit.thread.i ], [ 0, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  ret i32 %.7
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @stbi__convert_format(ptr noundef captures(ret: address, provenance) %0, i32 noundef %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i32 %2, %1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = or i32 %3, %2
  %or.cond.not.i.i.i = icmp sgt i32 %i.b, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %stbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %stbi__mul2sizes_valid.exit.thread15.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.c
  %i.d = udiv i32 2147483647, %3
  %.not23.i.i = icmp sgt i32 %2, %i.d
  br i1 %.not23.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i.i

stbi__mul2sizes_valid.exit.thread15.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.c
  %i.e = mul nsw i32 %3, %2                       ; 3 uses
  %i.f = or i32 %4, %i.e
  %or.cond.not.i10.i.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i10.i.i, label %bb.d, label %stbi__malloc_mad3.exit.thread

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.g = icmp eq i32 %4, 0
  br i1 %i.g, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.d
  %i.h = udiv i32 2147483647, %4
  %.not.i.i = icmp sgt i32 %i.e, %i.h
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %bb.d, %stbi__mul2sizes_valid.exit12.i.i
  %i.i = mul nsw i32 %i.e, %4
  %i.j = sext i32 %i.i to i64
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.j) #53 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %stbi__malloc_mad3.exit.thread, label %.preheader197

.preheader197:                                    ; preds = %stbi__malloc_mad3.exit
  %i.m = icmp sgt i32 %4, 0
  br i1 %i.m, label %.lr.ph258, label %._crit_edge

.lr.ph258:                                        ; preds = %.preheader197
  %i.n = shl nsw i32 %1, 3
  %i.o = add nsw i32 %i.n, %2                     ; 2 uses
  %.11167198 = add i32 %3, -1                     ; 32 uses
  %i.p = icmp sgt i32 %.11167198, -1              ; 12 uses
  switch i32 %i.o, label %.critedge [
    i32 10, label %.lr.ph258.split
    i32 11, label %.lr.ph258.split
    i32 12, label %.lr.ph258.split
    i32 17, label %.lr.ph258.split
    i32 19, label %.lr.ph258.split
    i32 20, label %.lr.ph258.split
    i32 28, label %.lr.ph258.split
    i32 25, label %.lr.ph258.split
    i32 26, label %.lr.ph258.split
    i32 33, label %.lr.ph258.split
    i32 34, label %.lr.ph258.split
    i32 35, label %.lr.ph258.split
  ]

.lr.ph258.split:                                  ; preds = %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.q = zext i32 %3 to i64                       ; 22 uses
  %min.iters.check504 = icmp ult i32 %3, 8
  %n.vec506 = and i64 %i.q, 4294967288            ; 5 uses
  %i.r = trunc nuw i64 %n.vec506 to i32
  %i.s = sub i32 %.11167198, %i.r
  %i.t = shl nuw nsw i64 %n.vec506, 1
  %i.u = shl nuw nsw i64 %n.vec506, 2
  %cmp.n521 = icmp eq i64 %n.vec506, %i.q
  %min.iters.check451 = icmp ult i32 %3, 9
  %min.iters.check453 = icmp ult i32 %3, 17
  %i.v = and i64 %i.q, 15                         ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 16, i64 %i.v         ; 2 uses
  %n.vec455 = sub nsw i64 %i.q, %i.x              ; 5 uses
  %i.y = trunc i64 %n.vec455 to i32
  %i.z = sub i32 %.11167198, %i.y
  %i.aa = shl nsw i64 %n.vec455, 2
  %min.epilog.iters.check484 = icmp samesign ult i64 %i.x, 9
  %i.ab = and i64 %i.q, 7                         ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 8, i64 %i.ab
  %n.vec486 = sub nsw i64 %i.q, %i.ad             ; 4 uses
  %i.ae = trunc i64 %n.vec486 to i32
  %i.af = sub i32 %.11167198, %i.ae
  %i.ag = shl nsw i64 %n.vec486, 2
  %min.iters.check430 = icmp ult i32 %3, 8
  %n.vec432 = and i64 %i.q, 4294967288            ; 5 uses
  %i.ah = trunc nuw i64 %n.vec432 to i32
  %i.ai = sub i32 %.11167198, %i.ah
  %i.aj = shl nuw nsw i64 %n.vec432, 1
  %i.ak = mul nuw nsw i64 %n.vec432, 3
  %cmp.n447 = icmp eq i64 %n.vec432, %i.q
  %min.iters.check377 = icmp ult i32 %3, 8
  %min.iters.check379 = icmp ult i32 %3, 16
  %i.al = and i64 %i.q, 8
  %n.vec381 = and i64 %i.q, 4294967280            ; 6 uses
  %i.am = trunc nuw i64 %n.vec381 to i32
  %i.an = sub i32 %.11167198, %i.am
  %i.ao = mul nuw nsw i64 %n.vec381, 3
  %cmp.n403 = icmp eq i64 %n.vec381, %i.q
  %min.epilog.iters.check410.not.not = icmp eq i64 %i.al, 0
  %n.vec412 = and i64 %i.q, 4294967288            ; 5 uses
  %i.ap = trunc nuw i64 %n.vec412 to i32
  %i.aq = sub i32 %.11167198, %i.ap
  %i.ar = mul nuw nsw i64 %n.vec412, 3
  %cmp.n426 = icmp eq i64 %n.vec412, %i.q
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %.6162.prol = add i32 %3, -2
  %i.as = icmp eq i32 %.11167198, 0
  %xtraiter538 = and i32 %3, 1
  %lcmp.mod539.not = icmp eq i32 %xtraiter538, 0
  %.5161.prol = add i32 %3, -2
  %i.at = icmp eq i32 %.11167198, 0
  %xtraiter540 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod541.not = icmp eq i32 %xtraiter540, 0
  %i.au = icmp ult i32 %.11167198, 3
  %min.iters.check326 = icmp ult i32 %3, 9
  %min.iters.check328 = icmp ult i32 %3, 17
  %i.av = and i64 %i.q, 15                        ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = select i1 %i.aw, i64 16, i64 %i.av      ; 2 uses
  %n.vec330 = sub nsw i64 %i.q, %i.ax             ; 5 uses
  %i.ay = trunc i64 %n.vec330 to i32
  %i.az = sub i32 %.11167198, %i.ay
  %i.ba = shl nsw i64 %n.vec330, 1
  %min.epilog.iters.check358 = icmp samesign ult i64 %i.ax, 9
  %i.bb = and i64 %i.q, 7                         ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = select i1 %i.bc, i64 8, i64 %i.bb
  %n.vec360 = sub nsw i64 %i.q, %i.bd             ; 4 uses
  %i.be = trunc i64 %n.vec360 to i32
  %i.bf = sub i32 %.11167198, %i.be
  %i.bg = shl nsw i64 %n.vec360, 1
  %xtraiter542 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod543.not = icmp eq i32 %xtraiter542, 0
  %i.bh = icmp ult i32 %.11167198, 3
  %xtraiter545 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod546.not = icmp eq i32 %xtraiter545, 0
  %i.bi = icmp ult i32 %.11167198, 3
  %min.iters.check = icmp ult i32 %3, 4
  %min.iters.check308 = icmp ult i32 %3, 16
  %i.bj = and i64 %i.q, 12
  %n.vec = and i64 %i.q, 4294967280               ; 6 uses
  %i.bk = trunc nuw i64 %n.vec to i32
  %i.bl = sub i32 %.11167198, %i.bk
  %i.bm = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.q
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  %n.vec315 = and i64 %i.q, 4294967292            ; 5 uses
  %i.bn = trunc nuw i64 %n.vec315 to i32
  %i.bo = sub i32 %.11167198, %i.bn
  %i.bp = shl nuw nsw i64 %n.vec315, 1
  %cmp.n322 = icmp eq i64 %n.vec315, %i.q
  %xtraiter548 = and i32 %3, 1
  %lcmp.mod549.not = icmp eq i32 %xtraiter548, 0
  %.11167.prol = add i32 %3, -2
  %i.bq = icmp eq i32 %.11167198, 0
  br label %bb.e

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i, %bb.b, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__malloc_mad3.exit
  tail call void @free(ptr noundef %0) #52
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph258.split, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph258.split ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.br = trunc nuw nsw i64 %indvars.iv to i32
  %i.bs = mul i32 %3, %i.br                       ; 2 uses
  %i.bt = mul i32 %i.bs, %1
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bu ; 126 uses
  %i.bw = mul i32 %i.bs, %2
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bx ; 50 uses
  switch i32 %i.o, label %.preheader195 [
    i32 10, label %.preheader
    i32 11, label %.preheader175
    i32 12, label %.preheader177
    i32 17, label %.preheader179
    i32 19, label %.preheader181
    i32 20, label %.preheader183
    i32 28, label %.preheader185
    i32 25, label %.preheader187
    i32 26, label %.preheader189
    i32 33, label %.preheader191
    i32 34, label %.preheader193
  ]

.preheader195:                                    ; preds = %bb.e
  br i1 %i.p, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader195
  br i1 %lcmp.mod549.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.bz = load i8, ptr %i.bv, align 1
  store i8 %i.bz, ptr %i.by, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %i.cb, ptr %i.cc, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.11167201.unr = phi i32 [ %.11167198, %.lr.ph.preheader ], [ %.11167.prol, %.lr.ph.prol ]
  %.11200.unr = phi ptr [ %i.by, %.lr.ph.preheader ], [ %i.ch, %.lr.ph.prol ]
  %.11153199.unr = phi ptr [ %i.bv, %.lr.ph.preheader ], [ %i.cg, %.lr.ph.prol ]
  br i1 %i.bq, label %.loopexit, label %.lr.ph

.preheader193:                                    ; preds = %bb.e
  br i1 %i.p, label %.lr.ph206.preheader, label %.loopexit

.lr.ph206.preheader:                              ; preds = %.preheader193
  br i1 %min.iters.check504, label %.lr.ph206.preheader536, label %vector.ph505

vector.ph505:                                     ; preds = %.lr.ph206.preheader
  %i.ci = getelementptr i8, ptr %i.by, i64 %i.t
  %i.cj = getelementptr i8, ptr %i.bv, i64 %i.u
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next519, %vector.body507 ] ; 3 uses
end_hunk_7
begin_hunk_8_@stbi__de_iphone:bb.a
  store i8 %i.o, ptr %i.l, align 1
  store i8 %i.m, ptr %i.n, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.04616, i64 6 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.04616, i64 8 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1
  store i8 %i.s, ptr %i.p, align 1
  store i8 %i.q, ptr %i.r, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.04616, i64 9 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.04616, i64 11 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1
  store i8 %i.w, ptr %i.t, align 1
  store i8 %i.u, ptr %i.v, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %.04616, i64 12 ; 2 uses
  %niter40.next.3 = add i32 %niter40, 4           ; 2 uses
  %niter40.ncmp.3 = icmp eq i32 %niter40.next.3, %unroll_iter39
  br i1 %niter40.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph18

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr @stbi__unpremultiply_on_load_global, align 4
  %.not = icmp eq i32 %i.y, 0
  %.not20 = icmp eq i32 %i.d, 0                   ; 2 uses
  br i1 %.not, label %.preheader7, label %.preheader9

.preheader9:                                      ; preds = %bb.b
  br i1 %.not20, label %.loopexit, label %.lr.ph

.preheader7:                                      ; preds = %bb.b
  br i1 %.not20, label %.loopexit, label %.lr.ph15.preheader

.lr.ph15.preheader:                               ; preds = %.preheader7
  %xtraiter = and i32 %i.d, 3                     ; 3 uses
  %i.z = icmp ult i32 %i.d, 4
  br i1 %i.z, label %.lr.ph15.epil.preheader, label %.lr.ph15.preheader.new

.lr.ph15.preheader.new:                           ; preds = %.lr.ph15.preheader
  %unroll_iter = and i32 %i.d, -4
  br label %.lr.ph15

.lr.ph:                                           ; preds = %.preheader9, %bb.e
  %.112 = phi i32 [ %i.bb, %bb.e ], [ 0, %.preheader9 ]
  %.14711 = phi ptr [ %i.ba, %bb.e ], [ %.24.val, %.preheader9 ] ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.14711, i64 3
  %i.ab = load i8, ptr %i.aa, align 1             ; 3 uses
  %i.ac = load i8, ptr %.14711, align 1           ; 2 uses
  %.not50 = icmp eq i8 %i.ab, 0
  br i1 %.not50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ad = lshr i8 %i.ab, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = mul nuw nsw i32 %i.ag, 255
  %i.ai = zext nneg i8 %i.ad to i32               ; 3 uses
  %i.aj = add nuw nsw i32 %i.ah, %i.ai
  %.lhs.trunc = trunc nuw i32 %i.aj to i16
  %.rhs.trunc = zext i8 %i.ab to i16              ; 3 uses
  %i.ak = udiv i16 %.lhs.trunc, %.rhs.trunc
  %i.al = trunc i16 %i.ak to i8
  store i8 %i.al, ptr %.14711, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.14711, i64 1 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = mul nuw nsw i32 %i.ao, 255
  %i.aq = add nuw nsw i32 %i.ap, %i.ai
  %.lhs.trunc1 = trunc nuw i32 %i.aq to i16
  %i.ar = udiv i16 %.lhs.trunc1, %.rhs.trunc
  %i.as = trunc i16 %i.ar to i8
  store i8 %i.as, ptr %i.am, align 1
  %i.at = zext i8 %i.ac to i32
  %i.au = mul nuw nsw i32 %i.at, 255
  %i.av = add nuw nsw i32 %i.au, %i.ai
  %.lhs.trunc4 = trunc nuw i32 %i.av to i16
  %i.aw = udiv i16 %.lhs.trunc4, %.rhs.trunc
  %i.ax = trunc i16 %i.aw to i8
  store i8 %i.ax, ptr %i.ae, align 1
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1
  store i8 %i.az, ptr %.14711, align 1
  store i8 %i.ac, ptr %i.ay, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.14711, i64 4
  %i.bb = add nuw i32 %.112, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bb, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.lr.ph15:                                         ; preds = %.lr.ph15, %.lr.ph15.preheader.new
  %.24813 = phi ptr [ %.24.val, %.lr.ph15.preheader.new ], [ %i.br, %.lr.ph15 ] ; 10 uses
  %niter = phi i32 [ 0, %.lr.ph15.preheader.new ], [ %niter.next.3, %.lr.ph15 ]
  %i.bc = load i8, ptr %.24813, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.24813, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1
  store i8 %i.be, ptr %.24813, align 1
  store i8 %i.bc, ptr %i.bd, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.24813, i64 4 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.24813, i64 6 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1
  store i8 %i.bi, ptr %i.bf, align 1
  store i8 %i.bg, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.24813, i64 8 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.24813, i64 10 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1
  store i8 %i.bm, ptr %i.bj, align 1
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.24813, i64 12 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.24813, i64 14 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1
  store i8 %i.bq, ptr %i.bn, align 1
  store i8 %i.bo, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.24813, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit32.unr-lcssa, label %.lr.ph15

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph18
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.lr.ph18.epil.preheader

.lr.ph18.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18.preheader
  %.04616.epil.init = phi ptr [ %.24.val, %.lr.ph18.preheader ], [ %i.x, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph18.epil

.lr.ph18.epil:                                    ; preds = %.lr.ph18.epil, %.lr.ph18.epil.preheader
  %.04616.epil = phi ptr [ %i.bv, %.lr.ph18.epil ], [ %.04616.epil.init, %.lr.ph18.epil.preheader ] ; 4 uses
  %epil.iter36 = phi i32 [ %epil.iter36.next, %.lr.ph18.epil ], [ 0, %.lr.ph18.epil.preheader ]
  %i.bs = load i8, ptr %.04616.epil, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 2 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1
  store i8 %i.bu, ptr %.04616.epil, align 1
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 3
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !202

.loopexit.loopexit32.unr-lcssa:                   ; preds = %.lr.ph15
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph15.epil.preheader

.lr.ph15.epil.preheader:                          ; preds = %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.preheader
  %.24813.epil.init = phi ptr [ %.24.val, %.lr.ph15.preheader ], [ %i.br, %.loopexit.loopexit32.unr-lcssa ]
  %lcmp.mod34 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph15.epil

.lr.ph15.epil:                                    ; preds = %.lr.ph15.epil, %.lr.ph15.epil.preheader
  %.24813.epil = phi ptr [ %i.bz, %.lr.ph15.epil ], [ %.24813.epil.init, %.lr.ph15.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.epil ], [ 0, %.lr.ph15.epil.preheader ]
  %i.bw = load i8, ptr %.24813.epil, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1
  store i8 %i.by, ptr %.24813.epil, align 1
  store i8 %i.bw, ptr %i.bx, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !203

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__create_png_image_raw(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 2 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = mul i32 %4, %3
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 6 uses
  %i.h = shl i32 %3, %i.d                         ; 4 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %stbi__malloc_mad3.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 3 uses
  br i1 %i.k, label %stbi__mul2sizes_valid.exit.thread15.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i.i

stbi__mul2sizes_valid.exit.thread15.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.b
  %i.m = mul nsw i32 %5, %4                       ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %stbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.i.i, %bb.a, %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %bb.d

stbi__malloc_mad3.exit:                           ; preds = %bb.c, %stbi__mul2sizes_valid.exit12.i.i
  %i.r = mul nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.s) #53 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stbi__malloc_mad3.exit.thread, %stbi__malloc_mad3.exit
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.v = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %stbi__mad3sizes_valid.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.w, label %stbi__mul2sizes_valid.exit.thread15.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.f
  %i.x = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.x
  br i1 %.not23.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i

stbi__mul2sizes_valid.exit.thread15.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.f
  %i.y = mul i32 %i.g, %4                         ; 18 uses
  %i.z = or i32 %i.y, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.z, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %stbi__mad3sizes_valid.exit.thread

bb.g:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i
  %i.aa = icmp eq i32 %6, 0
  br i1 %i.aa, label %stbi__mad3sizes_valid.exit._crit_edge, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.g
  %i.ab = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.y, %i.ab
  %i.ac = mul i32 %i.y, %6                        ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 2147483640
  %or.cond = or i1 %.not.i, %i.ad
  br i1 %or.cond, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mad3sizes_valid.exit._crit_edge

stbi__mad3sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread15.i, %bb.e, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit12.i
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

stbi__mad3sizes_valid.exit._crit_edge:            ; preds = %bb.g, %stbi__mul2sizes_valid.exit12.i
  %.pre-phi = phi i32 [ %i.ac, %stbi__mul2sizes_valid.exit12.i ], [ 0, %bb.g ]
  %i.ae = add i32 %.pre-phi, 7
  %i.af = lshr i32 %i.ae, 3                       ; 8 uses
  br i1 %i.k, label %stbi__mad2sizes_valid.exit, label %stbi__mul2sizes_valid.exit.i299

stbi__mul2sizes_valid.exit.i299:                  ; preds = %stbi__mad3sizes_valid.exit._crit_edge
  %i.ag = udiv i32 2147483647, %5
  %.not10.i = icmp samesign ugt i32 %i.af, %i.ag
  br i1 %.not10.i, label %stbi__mad2sizes_valid.exit.thread, label %stbi__mad2sizes_valid.exit

stbi__mad2sizes_valid.exit:                       ; preds = %stbi__mad3sizes_valid.exit._crit_edge, %stbi__mul2sizes_valid.exit.i299
  %i.ah = mul nuw nsw i32 %i.af, %5
  %i.ai = xor i32 %i.af, 2147483647
  %.not330 = icmp sgt i32 %i.ah, %i.ai
  br i1 %.not330, label %stbi__mad2sizes_valid.exit.thread, label %bb.h

stbi__mad2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.i299, %stbi__mad2sizes_valid.exit
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.h:                                             ; preds = %stbi__mad2sizes_valid.exit
  %i.aj = add nuw nsw i32 %i.af, 1
  %i.ak = mul i32 %i.aj, %5
  %i.al = icmp ult i32 %2, %i.ak
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr @.str.107, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.am = shl nuw nsw i32 %i.af, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.an) #53 ; 5 uses
  %.not283 = icmp eq ptr %i.ao, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.ap = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.ap, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.ap, i32 %i.af, i32 %4
  %i.aq = zext nneg i32 %i.af to i64
  %i.ar = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.as = sext i32 %spec.select to i64            ; 40 uses
  %i.at = icmp slt i32 %spec.select, %i.ar        ; 4 uses
  %i.au = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.av = icmp sgt i32 %i.ar, 0
  %i.aw = sext i32 %i.ar to i64                   ; 13 uses
  %i.ax = icmp eq i32 %6, 8
  %i.ay = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.az = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.y, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 7 uses
  %i.ba = icmp sgt i32 %.030.i305, -1             ; 4 uses
  %i.bb = zext i32 %.030.i305 to i64              ; 17 uses
  %i.bc = zext i32 %i.y to i64
  %i.bd = icmp eq i32 %7, 0
  %i.be = sext i32 %6 to i64
  %i.bf = getelementptr inbounds i8, ptr @stbi__depth_scale_table, i64 %i.be
  %wide.trip.count460 = zext i32 %5 to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.ar to i64     ; 8 uses
  %i.bg = sub nsw i64 %i.aw, %i.as                ; 28 uses
  %i.bh = add i32 %i.y, -1                        ; 3 uses
  %i.bi = add nuw nsw i64 %i.bb, 1
  %min.iters.check699 = icmp ult i64 %i.bg, 8
  %i.bj = add nsw i64 %i.as, -1
  %diff.check697 = icmp ult i64 %i.bj, 31
  %or.cond733 = select i1 %min.iters.check699, i1 true, i1 %diff.check697
  %min.iters.check701 = icmp ult i64 %i.bg, 32
  %i.bk = and i64 %i.bg, 24
  %n.vec703 = and i64 %i.bg, -32                  ; 4 uses
  %i.bl = add nsw i64 %n.vec703, %i.as
  %cmp.n712 = icmp eq i64 %i.bg, %n.vec703
  %min.epilog.iters.check718 = icmp eq i64 %i.bk, 0
  %n.vec720 = and i64 %i.bg, -8                   ; 3 uses
  %i.bm = add nsw i64 %n.vec720, %i.as
  %cmp.n727 = icmp eq i64 %i.bg, %n.vec720
  %i.bn = add nsw i64 %i.aw, -1
  %min.iters.check667 = icmp ult i32 %spec.select, 4
  %min.iters.check669 = icmp ult i32 %spec.select, 32
  %i.bo = and i64 %wide.trip.count424, 28
  %n.vec671 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n680 = icmp eq i64 %n.vec671, %wide.trip.count424
  %min.epilog.iters.check685 = icmp eq i64 %i.bo, 0
  %n.vec687 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec687, %wide.trip.count424
  %xtraiter747 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  %min.iters.check632 = icmp ult i64 %i.bg, 4
  %i.bp = add nsw i64 %i.as, -1
  %diff.check626 = icmp ult i64 %i.bp, 15
  %min.iters.check634 = icmp ult i64 %i.bg, 16
  %i.bq = and i64 %i.bg, 12
  %n.vec636 = and i64 %i.bg, -16                  ; 4 uses
  %i.br = add nsw i64 %n.vec636, %i.as
  %cmp.n645 = icmp eq i64 %i.bg, %n.vec636
  %min.epilog.iters.check651 = icmp eq i64 %i.bq, 0
  %n.vec653 = and i64 %i.bg, -4                   ; 3 uses
  %i.bs = add nsw i64 %n.vec653, %i.as
  %cmp.n662 = icmp eq i64 %i.bg, %n.vec653
  %min.iters.check596 = icmp ult i32 %spec.select, 4
  %min.iters.check598 = icmp ult i32 %spec.select, 32
  %i.bt = and i64 %wide.trip.count424, 28
  %n.vec600 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n609 = icmp eq i64 %n.vec600, %wide.trip.count424
  %min.epilog.iters.check614 = icmp eq i64 %i.bt, 0
  %n.vec616 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count424
  %xtraiter749 = and i64 %wide.trip.count424, 1
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  %i.bu = add nsw i64 %wide.trip.count424, -1
  %min.iters.check563 = icmp ult i64 %i.bg, 4
  %i.bv = add nsw i64 %i.as, -1
  %diff.check561 = icmp ult i64 %i.bv, 15
  %min.iters.check565 = icmp ult i64 %i.bg, 16
  %i.bw = and i64 %i.bg, 12
  %n.vec567 = and i64 %i.bg, -16                  ; 4 uses
  %i.bx = add nsw i64 %n.vec567, %i.as
  %cmp.n575 = icmp eq i64 %i.bg, %n.vec567
  %min.epilog.iters.check581 = icmp eq i64 %i.bw, 0
  %n.vec583 = and i64 %i.bg, -4                   ; 3 uses
  %i.by = add nsw i64 %n.vec583, %i.as
  %cmp.n591 = icmp eq i64 %i.bg, %n.vec583
  %i.bz = add nsw i64 %i.aw, -1
  %min.iters.check530 = icmp ult i32 %i.ar, 4
  %min.iters.check532 = icmp ult i32 %i.ar, 32
  %i.ca = and i64 %wide.trip.count444, 28
  %n.vec534 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n543 = icmp eq i64 %n.vec534, %wide.trip.count444
  %min.epilog.iters.check548 = icmp eq i64 %i.ca, 0
  %n.vec550 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n557 = icmp eq i64 %n.vec550, %wide.trip.count444
  %xtraiter755 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  %min.iters.check506 = icmp ult i64 %i.bg, 8
  %i.cb = add nsw i64 %i.as, -1
  %diff.check = icmp ult i64 %i.cb, 31
  %or.cond732 = select i1 %min.iters.check506, i1 true, i1 %diff.check
  %min.iters.check507 = icmp ult i64 %i.bg, 32
  %i.cc = and i64 %i.bg, 24
  %n.vec509 = and i64 %i.bg, -32                  ; 4 uses
  %i.cd = add nsw i64 %n.vec509, %i.as
  %cmp.n518 = icmp eq i64 %i.bg, %n.vec509
end_hunk_8
begin_hunk_9_@stbi__create_png_image_raw:bb.a
  %.4396 = phi i8 [ %i.rm, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ]
  %.2241395 = phi ptr [ %i.rl, %.lr.ph397.1 ], [ %i.di, %.lr.ph397.preheader ] ; 3 uses
  %.4246394 = phi ptr [ %.5247, %.lr.ph397.1 ], [ %i.cz, %.lr.ph397.preheader ] ; 3 uses
  %.2267393 = phi i32 [ %i.rn, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ] ; 2 uses
  %niter789 = phi i32 [ %niter789.next.1, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ]
  %i.re = and i32 %.2267393, 6
  %i.rf = icmp eq i32 %i.re, 0
  br i1 %i.rf, label %bb.x, label %.lr.ph397.1

bb.x:                                             ; preds = %.lr.ph397
  %i.rg = getelementptr inbounds nuw i8, ptr %.4246394, i64 1
  %i.rh = load i8, ptr %.4246394, align 1
  br label %.lr.ph397.1

.lr.ph397.1:                                      ; preds = %bb.x, %.lr.ph397
  %.5247 = phi ptr [ %i.rg, %bb.x ], [ %.4246394, %.lr.ph397 ] ; 2 uses
  %.5 = phi i8 [ %i.rh, %bb.x ], [ %.4396, %.lr.ph397 ] ; 3 uses
  %isneg = icmp slt i8 %.5, 0
  %i.ri = select i1 %isneg, i8 %i.qh, i8 0
  %i.rj = getelementptr inbounds nuw i8, ptr %.2241395, i64 1
  store i8 %i.ri, ptr %.2241395, align 1
  %.mask = and i8 %.5, 64
  %isneg.1.not = icmp eq i8 %.mask, 0
  %i.rk = select i1 %isneg.1.not, i8 0, i8 %i.qh
  %i.rl = getelementptr inbounds nuw i8, ptr %.2241395, i64 2 ; 2 uses
  store i8 %i.rk, ptr %i.rj, align 1
  %i.rm = shl i8 %.5, 2                           ; 2 uses
  %i.rn = add nuw i32 %.2267393, 2                ; 2 uses
  %niter789.next.1 = add i32 %niter789, 2         ; 2 uses
  %niter789.ncmp.1 = icmp eq i32 %niter789.next.1, %unroll_iter788
  br i1 %niter789.ncmp.1, label %.loopexit335.loopexit.unr-lcssa, label %.lr.ph397

.loopexit335.loopexit.unr-lcssa:                  ; preds = %.lr.ph397.1
  br i1 %lcmp.mod786.not, label %.loopexit335, label %.lr.ph397.epil.preheader

.lr.ph397.epil.preheader:                         ; preds = %.loopexit335.loopexit.unr-lcssa, %.lr.ph397.preheader
  %.4396.epil.init = phi i8 [ 0, %.lr.ph397.preheader ], [ %i.rm, %.loopexit335.loopexit.unr-lcssa ]
  %.2241395.epil.init = phi ptr [ %i.di, %.lr.ph397.preheader ], [ %i.rl, %.loopexit335.loopexit.unr-lcssa ]
  %.4246394.epil.init = phi ptr [ %i.cz, %.lr.ph397.preheader ], [ %.5247, %.loopexit335.loopexit.unr-lcssa ]
  %.2267393.epil.init = phi i32 [ 0, %.lr.ph397.preheader ], [ %i.rn, %.loopexit335.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod787)
  %i.ro = and i32 %.2267393.epil.init, 7
  %i.rp = icmp eq i32 %i.ro, 0
  br i1 %i.rp, label %bb.y, label %.loopexit335.loopexit.epilog-lcssa

bb.y:                                             ; preds = %.lr.ph397.epil.preheader
  %i.rq = load i8, ptr %.4246394.epil.init, align 1
  br label %.loopexit335.loopexit.epilog-lcssa

.loopexit335.loopexit.epilog-lcssa:               ; preds = %bb.y, %.lr.ph397.epil.preheader
  %.5.epil = phi i8 [ %i.rq, %bb.y ], [ %.4396.epil.init, %.lr.ph397.epil.preheader ]
  %isneg.epil = icmp slt i8 %.5.epil, 0
  %i.rr = select i1 %isneg.epil, i8 %i.qh, i8 0
  store i8 %i.rr, ptr %.2241395.epil.init, align 1
  br label %.loopexit335

.loopexit335.loopexit735.unr-lcssa:               ; preds = %.lr.ph392
  br i1 %lcmp.mod780.not, label %.loopexit335, label %.lr.ph392.epil.preheader

.lr.ph392.epil.preheader:                         ; preds = %.loopexit335.loopexit735.unr-lcssa, %.lr.ph392.preheader
  %.0239390.epil.init = phi ptr [ %i.di, %.lr.ph392.preheader ], [ %i.qp, %.loopexit335.loopexit735.unr-lcssa ]
  %.0242389.epil.init = phi ptr [ %i.cz, %.lr.ph392.preheader ], [ %i.qi, %.loopexit335.loopexit735.unr-lcssa ]
  %.0265388.epil.init = phi i32 [ 0, %.lr.ph392.preheader ], [ %i.qq, %.loopexit335.loopexit735.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod781)
  %i.rs = and i32 %.0265388.epil.init, 1
  %i.rt = icmp eq i32 %i.rs, 0
  br i1 %i.rt, label %bb.z, label %.loopexit335.loopexit735.epilog-lcssa

bb.z:                                             ; preds = %.lr.ph392.epil.preheader
  %i.ru = load i8, ptr %.0242389.epil.init, align 1
  %i.rv = lshr i8 %i.ru, 4
  %i.rw = mul i8 %i.rv, %i.qh
  br label %.loopexit335.loopexit735.epilog-lcssa

.loopexit335.loopexit735.epilog-lcssa:            ; preds = %bb.z, %.lr.ph392.epil.preheader
  %.1237.epil = phi i8 [ %i.rw, %bb.z ], [ 0, %.lr.ph392.epil.preheader ]
  store i8 %.1237.epil, ptr %.0239390.epil.init, align 1
  br label %.loopexit335

.loopexit335.loopexit736.unr-lcssa:               ; preds = %.lr.ph387.1
  br i1 %lcmp.mod774.not, label %.loopexit335, label %.lr.ph387.epil.preheader

.lr.ph387.epil.preheader:                         ; preds = %.loopexit335.loopexit736.unr-lcssa, %.lr.ph387.preheader
  %.2238386.epil.init = phi i8 [ 0, %.lr.ph387.preheader ], [ %i.rc, %.loopexit335.loopexit736.unr-lcssa ]
  %.1240385.epil.init = phi ptr [ %i.di, %.lr.ph387.preheader ], [ %i.rb, %.loopexit335.loopexit736.unr-lcssa ]
  %.2244384.epil.init = phi ptr [ %i.cz, %.lr.ph387.preheader ], [ %.3245, %.loopexit335.loopexit736.unr-lcssa ]
  %.1266383.epil.init = phi i32 [ 0, %.lr.ph387.preheader ], [ %i.rd, %.loopexit335.loopexit736.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod775)
  %i.rx = and i32 %.1266383.epil.init, 3
  %i.ry = icmp eq i32 %i.rx, 0
  br i1 %i.ry, label %bb.aa, label %.loopexit335.loopexit736.epilog-lcssa

bb.aa:                                            ; preds = %.lr.ph387.epil.preheader
  %i.rz = load i8, ptr %.2244384.epil.init, align 1
  br label %.loopexit335.loopexit736.epilog-lcssa

.loopexit335.loopexit736.epilog-lcssa:            ; preds = %bb.aa, %.lr.ph387.epil.preheader
  %.3.epil = phi i8 [ %i.rz, %bb.aa ], [ %.2238386.epil.init, %.lr.ph387.epil.preheader ]
  %i.sa = lshr i8 %.3.epil, 6
  %i.sb = mul i8 %i.sa, %i.qh
  store i8 %i.sb, ptr %.1240385.epil.init, align 1
  br label %.loopexit335

.loopexit335:                                     ; preds = %.loopexit335.loopexit736.epilog-lcssa, %.loopexit335.loopexit736.unr-lcssa, %.loopexit335.loopexit735.epilog-lcssa, %.loopexit335.loopexit735.unr-lcssa, %.loopexit335.loopexit.epilog-lcssa, %.loopexit335.loopexit.unr-lcssa, %.preheader338, %.preheader336, %.preheader
  br i1 %i.ay, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit335
  br i1 %i.az, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.ab
  br i1 %i.ba, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %.preheader26.i
  br i1 %lcmp.mod791.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.sc = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.cs ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 3
  store i8 -1, ptr %i.sd, align 1
  %i.se = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ct ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 2
  %i.sg = load i8, ptr %i.sf, align 1
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sc, i64 2
  store i8 %i.sg, ptr %i.sh, align 1
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 1
  %i.sj = load i8, ptr %i.si, align 1
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sc, i64 1
  store i8 %i.sj, ptr %i.sk, align 1
  %i.sl = load i8, ptr %i.se, align 1
  store i8 %i.sl, ptr %i.sc, align 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.bb, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  br i1 %i.cu, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.ab
  br i1 %i.ba, label %.lr.ph32.i.preheader, label %.loopexit

.lr.ph32.i.preheader:                             ; preds = %.preheader.i
  br i1 %lcmp.mod794.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol

.lr.ph32.i.prol:                                  ; preds = %.lr.ph32.i.preheader, %.lr.ph32.i.prol
  %indvars.iv35.i.prol = phi i64 [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ], [ %i.bb, %.lr.ph32.i.preheader ] ; 3 uses
  %prol.iter795 = phi i64 [ %prol.iter795.next, %.lr.ph32.i.prol ], [ 0, %.lr.ph32.i.preheader ]
  %i.sm = shl nuw nsw i64 %indvars.iv35.i.prol, 1
  %i.sn = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.sm ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 1
  store i8 -1, ptr %i.so, align 1
  %i.sp = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv35.i.prol
  %i.sq = load i8, ptr %i.sp, align 1
  store i8 %i.sq, ptr %i.sn, align 1
  %indvars.iv.next36.i.prol = add nsw i64 %indvars.iv35.i.prol, -1 ; 2 uses
  %prol.iter795.next = add i64 %prol.iter795, 1   ; 2 uses
  %prol.iter795.cmp.not = icmp eq i64 %prol.iter795.next, %xtraiter793
  br i1 %prol.iter795.cmp.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol, !llvm.loop !227

.lr.ph32.i.prol.loopexit:                         ; preds = %.lr.ph32.i.prol, %.lr.ph32.i.preheader
  %indvars.iv35.i.unr = phi i64 [ %i.bb, %.lr.ph32.i.preheader ], [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ]
  br i1 %i.cv, label %.loopexit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.prol.loopexit, %.lr.ph32.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.3, %.lr.ph32.i ], [ %indvars.iv35.i.unr, %.lr.ph32.i.prol.loopexit ] ; 6 uses
  %i.sr = shl nuw nsw i64 %indvars.iv35.i, 1
  %i.ss = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.sr ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 1
  store i8 -1, ptr %i.st, align 1
  %i.su = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv35.i
  %i.sv = load i8, ptr %i.su, align 1
  store i8 %i.sv, ptr %i.ss, align 1
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, -1 ; 2 uses
  %i.sw = shl nuw nsw i64 %indvars.iv.next36.i, 1
  %i.sx = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.sw ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 1
  store i8 -1, ptr %i.sy, align 1
  %i.sz = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next36.i
  %i.ta = load i8, ptr %i.sz, align 1
  store i8 %i.ta, ptr %i.sx, align 1
  %indvars.iv.next36.i.1 = add nsw i64 %indvars.iv35.i, -2 ; 2 uses
  %i.tb = shl nuw nsw i64 %indvars.iv.next36.i.1, 1
  %i.tc = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.tb ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 1
  store i8 -1, ptr %i.td, align 1
  %i.te = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next36.i.1
  %i.tf = load i8, ptr %i.te, align 1
  store i8 %i.tf, ptr %i.tc, align 1
  %indvars.iv.next36.i.2 = add nsw i64 %indvars.iv35.i, -3 ; 3 uses
  %i.tg = shl nuw nsw i64 %indvars.iv.next36.i.2, 1
  %i.th = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.tg ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 1
  store i8 -1, ptr %i.ti, align 1
  %i.tj = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next36.i.2
  %i.tk = load i8, ptr %i.tj, align 1
  store i8 %i.tk, ptr %i.th, align 1
  %indvars.iv.next36.i.3 = add nsw i64 %indvars.iv35.i, -4
  %.not39.i.3 = icmp eq i64 %indvars.iv.next36.i.2, 0
  br i1 %.not39.i.3, label %.loopexit, label %.lr.ph32.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.tl = shl nsw i64 %indvars.iv.i, 2
  %i.tm = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.tl ; 4 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 3
  store i8 -1, ptr %i.tn, align 1
  %i.to = mul nuw nsw i64 %indvars.iv.i, 3
  %i.tp = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.to ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 2
  %i.tr = load i8, ptr %i.tq, align 1
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tm, i64 2
  store i8 %i.tr, ptr %i.ts, align 1
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tp, i64 1
  %i.tu = load i8, ptr %i.tt, align 1
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tm, i64 1
  store i8 %i.tu, ptr %i.tv, align 1
  %i.tw = load i8, ptr %i.tp, align 1
  store i8 %i.tw, ptr %i.tm, align 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.tx = shl nsw i64 %indvars.iv.next.i, 2
  %i.ty = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.tx ; 4 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 3
  store i8 -1, ptr %i.tz, align 1
  %i.ua = mul nuw nsw i64 %indvars.iv.next.i, 3
  %i.ub = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ua ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 2
  %i.ud = load i8, ptr %i.uc, align 1
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ty, i64 2
  store i8 %i.ud, ptr %i.ue, align 1
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ub, i64 1
  %i.ug = load i8, ptr %i.uf, align 1
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ty, i64 1
  store i8 %i.ug, ptr %i.uh, align 1
  %i.ui = load i8, ptr %i.ub, align 1
  store i8 %i.ui, ptr %i.ty, align 1
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2
  %.not.i304.1 = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.i304.1, label %.loopexit, label %.lr.ph.i

bb.ac:                                            ; preds = %.loopexit348
  br i1 %i.ax, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.ay, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.di, ptr nonnull align 1 %i.cz, i64 %i.bc, i1 false)
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  br i1 %i.az, label %.preheader.i312, label %.preheader26.i306

.preheader26.i306:                                ; preds = %bb.af
  br i1 %i.ba, label %.lr.ph.i308.preheader, label %.loopexit

.lr.ph.i308.preheader:                            ; preds = %.preheader26.i306
  br i1 %lcmp.mod770.not.not, label %.lr.ph.i308.prol, label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol:                                 ; preds = %.lr.ph.i308.preheader
  %i.uj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.cj ; 4 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 3
  store i8 -1, ptr %i.uk, align 1
  %i.ul = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ck ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 2
  %i.un = load i8, ptr %i.um, align 1
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uj, i64 2
  store i8 %i.un, ptr %i.uo, align 1
  %i.up = getelementptr inbounds nuw i8, ptr %i.ul, i64 1
  %i.uq = load i8, ptr %i.up, align 1
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uj, i64 1
  store i8 %i.uq, ptr %i.ur, align 1
  %i.us = load i8, ptr %i.ul, align 1
  store i8 %i.us, ptr %i.uj, align 1
  br label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol.loopexit:                        ; preds = %.lr.ph.i308.prol, %.lr.ph.i308.preheader
  %indvars.iv.i309.unr = phi i64 [ %i.bb, %.lr.ph.i308.preheader ], [ %indvars.iv.next.i310.prol, %.lr.ph.i308.prol ]
  br i1 %i.cl, label %.loopexit, label %.lr.ph.i308

.preheader.i312:                                  ; preds = %bb.af
  br i1 %i.ba, label %.lr.ph32.i314.preheader, label %.loopexit

.lr.ph32.i314.preheader:                          ; preds = %.preheader.i312
  br i1 %min.iters.check, label %.lr.ph32.i314.preheader737, label %vector.body

vector.body:                                      ; preds = %.lr.ph32.i314.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph32.i314.preheader ] ; 2 uses
  %i.ut = sub i64 %i.bb, %index                   ; 2 uses
  %i.uu = shl nuw nsw i64 %i.ut, 1
  %i.uv = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.uu
  %i.uw = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ut
  %i.ux = getelementptr inbounds i8, ptr %i.uw, i64 -7
  %wide.load = load <8 x i8>, ptr %i.ux, align 1
  %i.uy = getelementptr inbounds i8, ptr %i.uv, i64 -14
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.uy, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.uz = icmp eq i64 %index.next, %n.vec
  br i1 %i.uz, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph32.i314.preheader737

.lr.ph32.i314.preheader737:                       ; preds = %.lr.ph32.i314.preheader, %middle.block
  %indvars.iv35.i315.ph = phi i64 [ %i.bb, %.lr.ph32.i314.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph32.i314

.lr.ph32.i314:                                    ; preds = %.lr.ph32.i314.preheader737, %.lr.ph32.i314
  %indvars.iv35.i315 = phi i64 [ %indvars.iv.next36.i316, %.lr.ph32.i314 ], [ %indvars.iv35.i315.ph, %.lr.ph32.i314.preheader737 ] ; 4 uses
  %i.va = shl nuw nsw i64 %indvars.iv35.i315, 1
  %i.vb = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.va ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 1
  store i8 -1, ptr %i.vc, align 1
  %i.vd = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv35.i315
  %i.ve = load i8, ptr %i.vd, align 1
  store i8 %i.ve, ptr %i.vb, align 1
  %indvars.iv.next36.i316 = add nsw i64 %indvars.iv35.i315, -1
  %.not39.i317 = icmp eq i64 %indvars.iv35.i315, 0
  br i1 %.not39.i317, label %.loopexit, label %.lr.ph32.i314, !llvm.loop !229

.lr.ph.i308:                                      ; preds = %.lr.ph.i308.prol.loopexit, %.lr.ph.i308
  %indvars.iv.i309 = phi i64 [ %indvars.iv.next.i310.1, %.lr.ph.i308 ], [ %indvars.iv.i309.unr, %.lr.ph.i308.prol.loopexit ] ; 4 uses
  %i.vf = shl nsw i64 %indvars.iv.i309, 2
  %i.vg = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.vf ; 4 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 3
  store i8 -1, ptr %i.vh, align 1
  %i.vi = mul nuw nsw i64 %indvars.iv.i309, 3
  %i.vj = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.vi ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 2
  %i.vl = load i8, ptr %i.vk, align 1
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vg, i64 2
  store i8 %i.vl, ptr %i.vm, align 1
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 1
  %i.vo = load i8, ptr %i.vn, align 1
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vg, i64 1
  store i8 %i.vo, ptr %i.vp, align 1
  %i.vq = load i8, ptr %i.vj, align 1
  store i8 %i.vq, ptr %i.vg, align 1
  %indvars.iv.next.i310 = add nsw i64 %indvars.iv.i309, -1 ; 3 uses
  %i.vr = shl nsw i64 %indvars.iv.next.i310, 2
  %i.vs = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.vr ; 4 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 3
  store i8 -1, ptr %i.vt, align 1
  %i.vu = mul nuw nsw i64 %indvars.iv.next.i310, 3
  %i.vv = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.vu ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 2
  %i.vx = load i8, ptr %i.vw, align 1
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vs, i64 2
  store i8 %i.vx, ptr %i.vy, align 1
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vv, i64 1
  %i.wa = load i8, ptr %i.vz, align 1
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vs, i64 1
  store i8 %i.wa, ptr %i.wb, align 1
  %i.wc = load i8, ptr %i.vv, align 1
  store i8 %i.wc, ptr %i.vs, align 1
  %indvars.iv.next.i310.1 = add nsw i64 %indvars.iv.i309, -2
  %.not.i311.1 = icmp eq i64 %indvars.iv.next.i310, 0
  br i1 %.not.i311.1, label %.loopexit, label %.lr.ph.i308

bb.ag:                                            ; preds = %bb.ac
  br i1 %i.a, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.ay, label %.preheader342, label %bb.ai

.preheader342:                                    ; preds = %bb.ah
  br i1 %.not404, label %.loopexit, label %.lr.ph382.preheader

.lr.ph382.preheader:                              ; preds = %.preheader342
  br i1 %i.ch, label %.lr.ph382.epil.preheader, label %.lr.ph382

.lr.ph382:                                        ; preds = %.lr.ph382.preheader, %.lr.ph382
  %.0381 = phi ptr [ %i.xl, %.lr.ph382 ], [ %i.di, %.lr.ph382.preheader ] ; 5 uses
  %.0249380 = phi ptr [ %i.xm, %.lr.ph382 ], [ %i.cz, %.lr.ph382.preheader ] ; 9 uses
  %niter768 = phi i32 [ %niter768.next.3, %.lr.ph382 ], [ 0, %.lr.ph382.preheader ]
  %i.wd = load i8, ptr %.0249380, align 1
  %i.we = zext i8 %i.wd to i16
  %i.wf = shl nuw i16 %i.we, 8
  %i.wg = getelementptr inbounds nuw i8, ptr %.0249380, i64 1
  %i.wh = load i8, ptr %i.wg, align 1
  %i.wi = zext i8 %i.wh to i16
  %i.wj = or disjoint i16 %i.wf, %i.wi
  store i16 %i.wj, ptr %.0381, align 2
  %i.wk = getelementptr inbounds nuw i8, ptr %.0381, i64 2
  %i.wl = getelementptr inbounds nuw i8, ptr %.0249380, i64 2
  %i.wm = load i8, ptr %i.wl, align 1
  %i.wn = zext i8 %i.wm to i16
  %i.wo = shl nuw i16 %i.wn, 8
  %i.wp = getelementptr inbounds nuw i8, ptr %.0249380, i64 3
  %i.wq = load i8, ptr %i.wp, align 1
  %i.wr = zext i8 %i.wq to i16
  %i.ws = or disjoint i16 %i.wo, %i.wr
  store i16 %i.ws, ptr %i.wk, align 2
  %i.wt = getelementptr inbounds nuw i8, ptr %.0381, i64 4
  %i.wu = getelementptr inbounds nuw i8, ptr %.0249380, i64 4
  %i.wv = load i8, ptr %i.wu, align 1
  %i.ww = zext i8 %i.wv to i16
  %i.wx = shl nuw i16 %i.ww, 8
  %i.wy = getelementptr inbounds nuw i8, ptr %.0249380, i64 5
  %i.wz = load i8, ptr %i.wy, align 1
  %i.xa = zext i8 %i.wz to i16
  %i.xb = or disjoint i16 %i.wx, %i.xa
  store i16 %i.xb, ptr %i.wt, align 2
  %i.xc = getelementptr inbounds nuw i8, ptr %.0381, i64 6
  %i.xd = getelementptr inbounds nuw i8, ptr %.0249380, i64 6
  %i.xe = load i8, ptr %i.xd, align 1
  %i.xf = zext i8 %i.xe to i16
  %i.xg = shl nuw i16 %i.xf, 8
  %i.xh = getelementptr inbounds nuw i8, ptr %.0249380, i64 7
  %i.xi = load i8, ptr %i.xh, align 1
  %i.xj = zext i8 %i.xi to i16
  %i.xk = or disjoint i16 %i.xg, %i.xj
  store i16 %i.xk, ptr %i.xc, align 2
  %i.xl = getelementptr inbounds nuw i8, ptr %.0381, i64 8 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.0249380, i64 8 ; 2 uses
  %niter768.next.3 = add i32 %niter768, 4         ; 2 uses
  %niter768.ncmp.3 = icmp eq i32 %niter768.next.3, %unroll_iter767
  br i1 %niter768.ncmp.3, label %.loopexit.loopexit740.unr-lcssa, label %.lr.ph382

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.az, label %.preheader344, label %.preheader346

.preheader346:                                    ; preds = %bb.ai
  br i1 %i.w, label %.loopexit, label %.lr.ph374

.preheader344:                                    ; preds = %bb.ai
  br i1 %i.w, label %.loopexit, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %.preheader344
  br i1 %i.cg, label %.lr.ph378.epil.preheader, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %.lr.ph378
  %.1377 = phi ptr [ %i.yf, %.lr.ph378 ], [ %i.di, %.lr.ph378.preheader ] ; 5 uses
  %.1250376 = phi ptr [ %i.yg, %.lr.ph378 ], [ %i.cz, %.lr.ph378.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph378 ], [ 0, %.lr.ph378.preheader ]
  %i.xn = load i8, ptr %.1250376, align 1
  %i.xo = zext i8 %i.xn to i16
  %i.xp = shl nuw i16 %i.xo, 8
  %i.xq = getelementptr inbounds nuw i8, ptr %.1250376, i64 1
  %i.xr = load i8, ptr %i.xq, align 1
  %i.xs = zext i8 %i.xr to i16
  %i.xt = or disjoint i16 %i.xp, %i.xs
  store i16 %i.xt, ptr %.1377, align 2
  %i.xu = getelementptr inbounds nuw i8, ptr %.1377, i64 2
  store i16 -1, ptr %i.xu, align 2
  %i.xv = getelementptr inbounds nuw i8, ptr %.1377, i64 4
  %i.xw = getelementptr inbounds nuw i8, ptr %.1250376, i64 2
  %i.xx = load i8, ptr %i.xw, align 1
  %i.xy = zext i8 %i.xx to i16
  %i.xz = shl nuw i16 %i.xy, 8
  %i.ya = getelementptr inbounds nuw i8, ptr %.1250376, i64 3
  %i.yb = load i8, ptr %i.ya, align 1
  %i.yc = zext i8 %i.yb to i16
  %i.yd = or disjoint i16 %i.xz, %i.yc
  store i16 %i.yd, ptr %i.xv, align 2
  %i.ye = getelementptr inbounds nuw i8, ptr %.1377, i64 6
  store i16 -1, ptr %i.ye, align 2
  %i.yf = getelementptr inbounds nuw i8, ptr %.1377, i64 8 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.1250376, i64 4 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit741.unr-lcssa, label %.lr.ph378

.lr.ph374:                                        ; preds = %.preheader346, %.lr.ph374
  %.2373 = phi ptr [ %i.zi, %.lr.ph374 ], [ %i.di, %.preheader346 ] ; 5 uses
  %.2251372 = phi ptr [ %i.zj, %.lr.ph374 ], [ %i.cz, %.preheader346 ] ; 7 uses
  %.5270371 = phi i32 [ %i.zh, %.lr.ph374 ], [ 0, %.preheader346 ]
  %i.yh = load i8, ptr %.2251372, align 1
  %i.yi = zext i8 %i.yh to i16
  %i.yj = shl nuw i16 %i.yi, 8
  %i.yk = getelementptr inbounds nuw i8, ptr %.2251372, i64 1
  %i.yl = load i8, ptr %i.yk, align 1
  %i.ym = zext i8 %i.yl to i16
  %i.yn = or disjoint i16 %i.yj, %i.ym
  store i16 %i.yn, ptr %.2373, align 2
  %i.yo = getelementptr inbounds nuw i8, ptr %.2251372, i64 2
  %i.yp = load i8, ptr %i.yo, align 1
  %i.yq = zext i8 %i.yp to i16
  %i.yr = shl nuw i16 %i.yq, 8
  %i.ys = getelementptr inbounds nuw i8, ptr %.2251372, i64 3
  %i.yt = load i8, ptr %i.ys, align 1
  %i.yu = zext i8 %i.yt to i16
  %i.yv = or disjoint i16 %i.yr, %i.yu
  %i.yw = getelementptr inbounds nuw i8, ptr %.2373, i64 2
  store i16 %i.yv, ptr %i.yw, align 2
  %i.yx = getelementptr inbounds nuw i8, ptr %.2251372, i64 4
  %i.yy = load i8, ptr %i.yx, align 1
  %i.yz = zext i8 %i.yy to i16
  %i.za = shl nuw i16 %i.yz, 8
  %i.zb = getelementptr inbounds nuw i8, ptr %.2251372, i64 5
  %i.zc = load i8, ptr %i.zb, align 1
  %i.zd = zext i8 %i.zc to i16
  %i.ze = or disjoint i16 %i.za, %i.zd
  %i.zf = getelementptr inbounds nuw i8, ptr %.2373, i64 4
  store i16 %i.ze, ptr %i.zf, align 2
  %i.zg = getelementptr inbounds nuw i8, ptr %.2373, i64 6
  store i16 -1, ptr %i.zg, align 2
  %i.zh = add nuw i32 %.5270371, 1                ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.2373, i64 8
  %i.zj = getelementptr inbounds nuw i8, ptr %.2251372, i64 6
  %exitcond451.not = icmp eq i32 %i.zh, %4
  br i1 %exitcond451.not, label %.loopexit, label %.lr.ph374

.loopexit.loopexit740.unr-lcssa:                  ; preds = %.lr.ph382
  br i1 %lcmp.mod765.not, label %.loopexit, label %.lr.ph382.epil.preheader

.lr.ph382.epil.preheader:                         ; preds = %.loopexit.loopexit740.unr-lcssa, %.lr.ph382.preheader
  %.0381.epil.init = phi ptr [ %i.di, %.lr.ph382.preheader ], [ %i.xl, %.loopexit.loopexit740.unr-lcssa ]
  %.0249380.epil.init = phi ptr [ %i.cz, %.lr.ph382.preheader ], [ %i.xm, %.loopexit.loopexit740.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod766)
  br label %.lr.ph382.epil

.lr.ph382.epil:                                   ; preds = %.lr.ph382.epil, %.lr.ph382.epil.preheader
  %.0381.epil = phi ptr [ %i.zr, %.lr.ph382.epil ], [ %.0381.epil.init, %.lr.ph382.epil.preheader ] ; 2 uses
  %.0249380.epil = phi ptr [ %i.zs, %.lr.ph382.epil ], [ %.0249380.epil.init, %.lr.ph382.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph382.epil ], [ 0, %.lr.ph382.epil.preheader ]
  %i.zk = load i8, ptr %.0249380.epil, align 1
  %i.zl = zext i8 %i.zk to i16
  %i.zm = shl nuw i16 %i.zl, 8
  %i.zn = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 1
  %i.zo = load i8, ptr %i.zn, align 1
  %i.zp = zext i8 %i.zo to i16
  %i.zq = or disjoint i16 %i.zm, %i.zp
  store i16 %i.zq, ptr %.0381.epil, align 2
  %i.zr = getelementptr inbounds nuw i8, ptr %.0381.epil, i64 2
  %i.zs = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter764
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph382.epil, !llvm.loop !230

.loopexit.loopexit741.unr-lcssa:                  ; preds = %.lr.ph378
  br i1 %lcmp.mod762.not, label %.loopexit, label %.lr.ph378.epil.preheader

.lr.ph378.epil.preheader:                         ; preds = %.loopexit.loopexit741.unr-lcssa, %.lr.ph378.preheader
  %.1377.epil.init = phi ptr [ %i.di, %.lr.ph378.preheader ], [ %i.yf, %.loopexit.loopexit741.unr-lcssa ] ; 2 uses
  %.1250376.epil.init = phi ptr [ %i.cz, %.lr.ph378.preheader ], [ %i.yg, %.loopexit.loopexit741.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod763)
  %i.zt = load i8, ptr %.1250376.epil.init, align 1
  %i.zu = zext i8 %i.zt to i16
  %i.zv = shl nuw i16 %i.zu, 8
end_hunk_9
begin_hunk_10_@stbir__calculate_filters:bb.a
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gy
  %i.ha = load ptr, ptr %i.m, align 8
  %i.hb = mul nsw i32 %i.gv, %i.gx
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.hc
  %i.he = xor i32 %.0139181, -1
  %i.hf = add nsw i32 %.0139181, -2
  %i.hg = sext i32 %i.gv to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph177, %stbir__insert_coeff.exit
  %.0134175 = phi ptr [ %.2144180, %.lr.ph177 ], [ %i.hh, %stbir__insert_coeff.exit ] ; 2 uses
  %.0135174 = phi ptr [ %i.hd, %.lr.ph177 ], [ %i.jv, %stbir__insert_coeff.exit ] ; 14 uses
  %.0136173 = phi i32 [ %i.gs, %.lr.ph177 ], [ %i.jw, %stbir__insert_coeff.exit ] ; 4 uses
  %.1172 = phi i32 [ %.0137182, %.lr.ph177 ], [ %.2, %stbir__insert_coeff.exit ] ; 8 uses
  %.0138171 = phi ptr [ %i.gz, %.lr.ph177 ], [ %i.ju, %stbir__insert_coeff.exit ] ; 8 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0134175, i64 4
  %i.hi = load float, ptr %.0134175, align 4      ; 5 uses
  %i.hj = tail call float @llvm.fabs.f32(float %i.hi)
  %or.cond = fcmp ult float %i.hj, f0x03800000
  br i1 %or.cond, label %stbir__insert_coeff.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hk = icmp sgt i32 %.0136173, %.1172
  br i1 %i.hk, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hl = load i32, ptr %.0138171, align 4        ; 8 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.0138171, i64 4 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4            ; 6 uses
  %i.ho = icmp sgt i32 %i.hl, %i.hn
  br i1 %i.ho, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hp = load ptr, ptr %0, align 8
  %i.hq = add nsw i32 %.1172, %i.cp
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr [8 x i8], ptr %i.hp, i64 %i.hr ; 2 uses
  %.0133167 = getelementptr i8, ptr %i.hs, i64 8  ; 2 uses
  %i.ht = icmp ult ptr %.0133167, %.0138171
  br i1 %i.ht, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ad, %.lr.ph
  %.0133169 = phi ptr [ %.0133, %.lr.ph ], [ %.0133167, %bb.ad ] ; 3 uses
  %.pn154168 = phi ptr [ %.0133169, %.lr.ph ], [ %i.hs, %bb.ad ]
  store i32 0, ptr %.0133169, align 4
  %i.hu = getelementptr i8, ptr %.pn154168, i64 12
  store i32 -1, ptr %i.hu, align 4
  %.0133 = getelementptr i8, ptr %.0133169, i64 8 ; 2 uses
  %i.hv = icmp ult ptr %.0133, %.0138171
  br i1 %i.hv, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.ad
  store i32 %.0139181, ptr %.0138171, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %.0138171, i64 4
  store i32 %.0139181, ptr %i.hw, align 4
  store float %i.hi, ptr %.0135174, align 4
  br label %stbir__insert_coeff.exit

bb.ae:                                            ; preds = %bb.ac
  %.not.i162 = icmp sgt i32 %.0139181, %i.hn
  br i1 %.not.i162, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hx = icmp slt i32 %.0139181, %i.hl
  br i1 %i.hx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hy = sub nuw nsw i32 %i.hn, %.0139181
  %.not60.not.i = icmp slt i32 %i.hy, %i.gv
  br i1 %.not60.not.i, label %.lr.ph.preheader.i, label %stbir__insert_coeff.exit

.lr.ph.preheader.i:                               ; preds = %bb.ag
  %i.hz = sub nuw nsw i32 %i.hl, %.0139181        ; 2 uses
  %i.ia = sub i32 %i.hn, %i.hl                    ; 2 uses
  %i.ib = zext i32 %i.ia to i64                   ; 4 uses
  %i.ic = sext i32 %i.hz to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.0135174, i64 %i.ic ; 6 uses
  %i.id = add nuw nsw i64 %i.ib, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ia, 7
  %i.ie = shl nsw i64 %i.ic, 2
  %diff.check = icmp ugt i64 %i.ie, -32
  %or.cond208 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond208, label %.lr.ph.i164.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.id, 8589934584              ; 3 uses
  %i.if = sub nsw i64 %i.ib, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ig = sub i64 %i.ib, %index                   ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %i.ig ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -12
  %i.ij = getelementptr inbounds i8, ptr %i.ih, i64 -28
  %wide.load = load <4 x float>, ptr %i.ii, align 4
  %wide.load207 = load <4 x float>, ptr %i.ij, align 4
  %i.ik = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ig ; 2 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 -12
  %i.im = getelementptr i8, ptr %i.ik, i64 -28
  store <4 x float> %wide.load, ptr %i.il, align 4
  store <4 x float> %wide.load207, ptr %i.im, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !586

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.id, %n.vec
  br i1 %cmp.n, label %.preheader.i.loopexit, label %.lr.ph.i164.preheader

.lr.ph.i164.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i165.ph = phi i64 [ %i.ib, %.lr.ph.preheader.i ], [ %i.if, %middle.block ] ; 4 uses
  %i.io = add nsw i64 %indvars.iv.i165.ph, 1
  %xtraiter = and i64 %i.io, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol

.lr.ph.i164.prol:                                 ; preds = %.lr.ph.i164.preheader, %.lr.ph.i164.prol
  %indvars.iv.i165.prol = phi i64 [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ], [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i164.prol ], [ 0, %.lr.ph.i164.preheader ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165.prol
  %i.iq = load float, ptr %i.ip, align 4
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165.prol
  store float %i.iq, ptr %gep.i.prol, align 4
  %indvars.iv.next.i166.prol = add nsw i64 %indvars.iv.i165.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol, !llvm.loop !587

.lr.ph.i164.prol.loopexit:                        ; preds = %.lr.ph.i164.prol, %.lr.ph.i164.preheader
  %indvars.iv.i165.unr = phi i64 [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ], [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ]
  %i.ir = icmp ult i64 %indvars.iv.i165.ph, 3
  br i1 %i.ir, label %.preheader.i.loopexit, label %.lr.ph.i164

.preheader.i.loopexit:                            ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164, %middle.block
  %i.is = icmp sgt i32 %i.hz, 1
  br i1 %i.is, label %.lr.ph63.preheader.i, label %._crit_edge.i163

.lr.ph63.preheader.i:                             ; preds = %.preheader.i.loopexit
  %scevgep.i = getelementptr i8, ptr %.0135174, i64 4
  %i.it = add i32 %i.hl, %i.he
  %i.iu = zext i32 %i.it to i64
  %i.iv = shl nuw nsw i64 %i.iu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.iv, i1 false)
  br label %._crit_edge.i163

.lr.ph.i164:                                      ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i166.3, %.lr.ph.i164 ], [ %indvars.iv.i165.unr, %.lr.ph.i164.prol.loopexit ] ; 6 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165
  %i.ix = load float, ptr %i.iw, align 4
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165
  store float %i.ix, ptr %gep.i, align 4
  %indvars.iv.next.i166 = add nsw i64 %indvars.iv.i165, -1 ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166
  %i.iz = load float, ptr %i.iy, align 4
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166
  store float %i.iz, ptr %gep.i.1, align 4
  %indvars.iv.next.i166.1 = add nsw i64 %indvars.iv.i165, -2 ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.1
  %i.jb = load float, ptr %i.ja, align 4
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.1
  store float %i.jb, ptr %gep.i.2, align 4
  %indvars.iv.next.i166.2 = add nsw i64 %indvars.iv.i165, -3 ; 3 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.2
  %i.jd = load float, ptr %i.jc, align 4
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.2
  store float %i.jd, ptr %gep.i.3, align 4
  %indvars.iv.next.i166.3 = add nsw i64 %indvars.iv.i165, -4
  %.not81.i.3 = icmp eq i64 %indvars.iv.next.i166.2, 0
  br i1 %.not81.i.3, label %.preheader.i.loopexit, label %.lr.ph.i164, !llvm.loop !588

._crit_edge.i163:                                 ; preds = %.lr.ph63.preheader.i, %.preheader.i.loopexit
  store float %i.hi, ptr %.0135174, align 4
  store i32 %.0139181, ptr %.0138171, align 4
  br label %stbir__insert_coeff.exit

bb.ah:                                            ; preds = %bb.af
  %i.je = sub nsw i32 %.0139181, %i.hl
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %i.jf ; 2 uses
  %i.jh = load float, ptr %i.jg, align 4
  %i.ji = fadd float %i.hi, %i.jh
  store float %i.ji, ptr %i.jg, align 4
  br label %stbir__insert_coeff.exit

bb.ai:                                            ; preds = %bb.ae
  %i.jj = sub nsw i32 %.0139181, %i.hl            ; 3 uses
  %.not59.not.i = icmp slt i32 %i.jj, %i.gv
  br i1 %.not59.not.i, label %bb.aj, label %stbir__insert_coeff.exit

bb.aj:                                            ; preds = %bb.ai
  %i.jk = sub nsw i32 %i.hn, %i.hl
  %.064.i = add nsw i32 %i.jk, 1                  ; 2 uses
  %i.jl = icmp slt i32 %.064.i, %i.jj
  br i1 %i.jl, label %.lr.ph67.preheader.i, label %._crit_edge68.i

.lr.ph67.preheader.i:                             ; preds = %bb.aj
  %i.jm = sext i32 %.064.i to i64
  %i.jn = shl nsw i64 %i.jm, 2
  %scevgep73.i = getelementptr i8, ptr %.0135174, i64 %i.jn
  %i.jo = sub i32 %i.hf, %i.hn
  %i.jp = zext i32 %i.jo to i64
  %i.jq = shl nuw nsw i64 %i.jp, 2
  %i.jr = add nuw nsw i64 %i.jq, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i, i8 0, i64 %i.jr, i1 false)
  br label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %.lr.ph67.preheader.i, %bb.aj
  %i.js = sext i32 %i.jj to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %.0135174, i64 %i.js
  store float %i.hi, ptr %i.jt, align 4
  store i32 %.0139181, ptr %i.hm, align 4
  br label %stbir__insert_coeff.exit

stbir__insert_coeff.exit:                         ; preds = %._crit_edge68.i, %bb.ai, %bb.ah, %._crit_edge.i163, %bb.ag, %._crit_edge, %bb.aa
  %.2 = phi i32 [ %.0136173, %._crit_edge ], [ %.1172, %bb.aa ], [ %.1172, %bb.ag ], [ %.1172, %._crit_edge.i163 ], [ %.1172, %bb.ah ], [ %.1172, %bb.ai ], [ %.1172, %._crit_edge68.i ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.0138171, i64 8
  %i.jv = getelementptr inbounds [4 x i8], ptr %.0135174, i64 %i.hg
  %i.jw = add i32 %.0136173, 1
  %exitcond.not = icmp eq i32 %.0136173, %i.gu
  br i1 %exitcond.not, label %._crit_edge178, label %bb.aa

._crit_edge178:                                   ; preds = %stbir__insert_coeff.exit, %bb.z
  %.1.lcssa = phi i32 [ %.0137182, %bb.z ], [ %.2, %stbir__insert_coeff.exit ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.2147179, i64 8
  %i.jy = getelementptr inbounds [4 x i8], ptr %.2144180, i64 %i.gr
  %i.jz = add nuw nsw i32 %.0139181, 1            ; 2 uses
  %exitcond192.not = icmp eq i32 %i.jz, %.1149
  br i1 %exitcond192.not, label %._crit_edge185, label %bb.z

._crit_edge185:                                   ; preds = %._crit_edge178, %bb.y
  %.0137.lcssa = phi i32 [ %i.gp, %bb.y ], [ %.1.lcssa, %._crit_edge178 ]
  %i.ka = load ptr, ptr %0, align 8               ; 2 uses
  %i.kb = add nsw i32 %.0137.lcssa, %i.cp
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr [8 x i8], ptr %i.ka, i64 %i.kc ; 2 uses
  %i.ke = load i32, ptr %i.j, align 8
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.ka, i64 %i.kf ; 2 uses
  %.0187 = getelementptr i8, ptr %i.kd, i64 8     ; 2 uses
  %i.kh = icmp ult ptr %.0187, %i.kg
  br i1 %i.kh, label %.lr.ph191, label %.loopexit

.lr.ph191:                                        ; preds = %._crit_edge185, %.lr.ph191
  %.0189 = phi ptr [ %.0, %.lr.ph191 ], [ %.0187, %._crit_edge185 ] ; 3 uses
  %.pn188 = phi ptr [ %.0189, %.lr.ph191 ], [ %i.kd, %._crit_edge185 ]
  store i32 0, ptr %.0189, align 4
  %i.ki = getelementptr i8, ptr %.pn188, i64 12
  store i32 -1, ptr %i.ki, align 4
  %.0 = getelementptr i8, ptr %.0189, i64 8       ; 2 uses
  %i.kj = icmp ult ptr %.0, %i.kg
  br i1 %i.kj, label %.lr.ph191, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph191, %._crit_edge185, %stbir__calculate_coefficients_for_gather_downsample.exit, %stbir__calculate_coefficients_for_gather_upsample.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stbir__cleanup_gathered_coefficients(i32 noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, i32 noundef %6) unnamed_addr #24 {
bb.a:
  %i.a = load i32, ptr %2, align 4                ; 7 uses
  %i.b = add nsw i32 %i.a, -1                     ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 4              ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.f = load i32, ptr %i.e, align 4              ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp ne i32 %i.h, 0
  %i.j = icmp slt i32 %i.d, %3
  %i.k = select i1 %i.i, i1 %i.j, i1 false        ; 2 uses
  %spec.select = select i1 %i.k, i32 %i.d, i32 %3 ; 2 uses
  %i.l = icmp sgt i32 %spec.select, 0
  br i1 %i.l, label %.lr.ph319, label %._crit_edge320

.lr.ph319:                                        ; preds = %bb.a
  %i.m = sext i32 %6 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph319, %.loopexit292
  %.0190317 = phi ptr [ %4, %.lr.ph319 ], [ %i.bh, %.loopexit292 ] ; 3 uses
  %.0192315 = phi ptr [ %5, %.lr.ph319 ], [ %i.bi, %.loopexit292 ] ; 9 uses
  %.0206314 = phi i32 [ 0, %.lr.ph319 ], [ %i.bj, %.loopexit292 ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0190317, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = load i32, ptr %.0190317, align 4         ; 3 uses
  %.not232307 = icmp slt i32 %i.o, %i.p
  br i1 %.not232307, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.q = add i32 %i.o, 1
  %i.r = sub i32 %i.q, %i.p                       ; 3 uses
  %wide.trip.count = zext i32 %i.r to i64         ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.s = add i32 %i.r, -1
  %i.t = icmp ult i32 %i.s, 3
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0187309 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv
  %i.v = load float, ptr %i.u, align 4
  %i.w = fpext float %i.v to double
  %i.x = fadd double %.0187309, %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fpext float %i.aa to double
  %i.ac = fadd double %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = fpext float %i.af to double
  %i.ah = fadd double %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = fpext float %i.ak to double
  %i.am = fadd double %i.ah, %i.al                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0187309.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.am, %._crit_edge.unr-lcssa ]
  %lcmp.mod632 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod632)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.0187309.epil = phi double [ %.0187309.epil.init, %.lr.ph.epil.preheader ], [ %i.aq, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv.epil
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = fpext float %i.ao to double
  %i.aq = fadd double %.0187309.epil, %i.ap       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !589

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa630 = phi double [ %i.am, %._crit_edge.unr-lcssa ], [ %i.aq, %.lr.ph.epil ] ; 3 uses
  %i.ar = tail call double @llvm.fabs.f64(double %.lcssa630)
  %or.cond = fcmp olt double %i.ar, f0x3870000000000000
  br i1 %or.cond, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  store i32 %i.p, ptr %i.n, align 4
  store float 0.000000e+00, ptr %.0192315, align 4
  br label %.loopexit292

bb.c:                                             ; preds = %._crit_edge
  %or.cond3 = fcmp ueq double %.lcssa630, 1.000000e+00
  br i1 %or.cond3, label %.loopexit292, label %.lr.ph313.preheader

.lr.ph313.preheader:                              ; preds = %bb.c
  %i.as = fdiv nnan double 1.000000e+00, %.lcssa630 ; 2 uses
  %min.iters.check = icmp ult i32 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph313.preheader629, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph313.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.as, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %index ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.at, align 4
  %wide.load530 = load <4 x float>, ptr %i.au, align 4
  %i.av = fpext <4 x float> %wide.load to <4 x double>
  %i.aw = fpext <4 x float> %wide.load530 to <4 x double>
  %i.ax = fmul <4 x double> %broadcast.splat, %i.av
  %i.ay = fmul <4 x double> %broadcast.splat, %i.aw
  %i.az = fptrunc <4 x double> %i.ax to <4 x float>
  %i.ba = fptrunc <4 x double> %i.ay to <4 x float>
  store <4 x float> %i.az, ptr %i.at, align 4
  store <4 x float> %i.ba, ptr %i.au, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !590

middle.block:                                     ; preds = %vector.body
end_hunk_10
begin_hunk_11_@stbir__cleanup_gathered_coefficients:bb.a

bb.n:                                             ; preds = %bb.i
  br i1 %or.cond5, label %bb.o, label %stbir__insert_coeff.exit274

bb.o:                                             ; preds = %bb.n
  %i.fb = getelementptr inbounds nuw i8, ptr %.1191353, i64 4 ; 12 uses
  %i.fc = load i32, ptr %i.fb, align 4            ; 2 uses
  %.not = icmp slt i32 %i.fc, %i.a
  %.pre392 = load i32, ptr %.1191353, align 4     ; 2 uses
  br i1 %.not, label %.loopexit291, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.b, ptr %i.fb, align 4
  %scevgep.i = getelementptr i8, ptr %.1193350, i64 4
  %i.fd = sext i32 %.pre392 to i64
  %i.fe = add i32 %i.fc, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %stbir__insert_coeff.exit
  %indvars.iv373 = phi i64 [ %i.eg, %bb.p ], [ %indvars.iv.next374, %stbir__insert_coeff.exit ] ; 4 uses
  %i.ff = trunc nsw i64 %indvars.iv373 to i32     ; 2 uses
  %i.fg = icmp slt i64 %indvars.iv373, 0          ; 2 uses
  br i1 %trunc, label %call.1, label %call.0

call.0:                                           ; preds = %bb.q
  %.0.i = select i1 %i.fg, i32 0, i32 %i.b
  br label %.tail

call.1:                                           ; preds = %bb.q
  br i1 %i.fg, label %.tail, label %bb.r

bb.r:                                             ; preds = %call.1
  %.not17.i = icmp sgt i32 %i.eh, %i.ff
  %i.fh = xor i32 %i.ff, -1
  %i.fi = add i32 %i.eh, %i.fh
  %.0.i447 = select i1 %.not17.i, i32 %i.fi, i32 0
  br label %.tail

.tail:                                            ; preds = %call.1, %bb.r, %call.0
  %i.fj = phi i32 [ %.0.i, %call.0 ], [ %.0.i447, %bb.r ], [ %i.b, %call.1 ] ; 13 uses
  %i.fk = sub nsw i64 %indvars.iv373, %i.fd
  %i.fl = getelementptr inbounds [4 x i8], ptr %.1193350, i64 %i.fk
  %i.fm = load float, ptr %i.fl, align 4          ; 4 uses
  %i.fn = load i32, ptr %i.fb, align 4            ; 6 uses
  %i.fo = load i32, ptr %.1191353, align 4        ; 9 uses
  %i.fp = icmp slt i32 %i.fn, %i.fo
  br i1 %i.fp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.tail
  store i32 %i.fj, ptr %i.fb, align 4
  store i32 %i.fj, ptr %.1191353, align 4
  store float %i.fm, ptr %.1193350, align 4
  br label %stbir__insert_coeff.exit

bb.t:                                             ; preds = %.tail
  %.not.i236 = icmp sgt i32 %i.fj, %i.fn
  br i1 %.not.i236, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fq = icmp slt i32 %i.fj, %i.fo
  br i1 %i.fq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fr = sub nsw i32 %i.fn, %i.fj
  %.not60.not.i = icmp slt i32 %i.fr, %6
  br i1 %.not60.not.i, label %.lr.ph.preheader.i, label %stbir__insert_coeff.exit

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.fs = sub nsw i32 %i.fo, %i.fj                ; 2 uses
  %i.ft = sub i32 %i.fn, %i.fo                    ; 2 uses
  %i.fu = zext i32 %i.ft to i64                   ; 5 uses
  %i.fv = sext i32 %i.fs to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %.1193350, i64 %i.fv ; 6 uses
  %i.fw = add nuw nsw i64 %i.fu, 1                ; 2 uses
  %min.iters.check610 = icmp ult i32 %i.ft, 7
  br i1 %min.iters.check610, label %.lr.ph.i.preheader, label %vector.memcheck607

vector.memcheck607:                               ; preds = %.lr.ph.preheader.i
  %i.fx = sext i32 %i.fj to i64
  %i.fy = sext i32 %i.fo to i64
  %i.fz = sub nsw i64 %i.fx, %i.fy
  %i.ga = shl nsw i64 %i.fz, 2
  %i.gb = add nsw i64 %i.ga, -1
  %diff.check608 = icmp ult i64 %i.gb, 31
  br i1 %diff.check608, label %.lr.ph.i.preheader, label %vector.ph611

vector.ph611:                                     ; preds = %vector.memcheck607
  %n.vec612 = and i64 %i.fw, 8589934584           ; 3 uses
  %i.gc = sub nsw i64 %i.fu, %n.vec612
  br label %vector.body613

vector.body613:                                   ; preds = %vector.body613, %vector.ph611
  %index614 = phi i64 [ 0, %vector.ph611 ], [ %index.next617, %vector.body613 ] ; 2 uses
  %i.gd = sub i64 %i.fu, %index614                ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %i.gd ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -12
  %i.gg = getelementptr inbounds i8, ptr %i.ge, i64 -28
  %wide.load615 = load <4 x float>, ptr %i.gf, align 4
  %wide.load616 = load <4 x float>, ptr %i.gg, align 4
  %i.gh = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.gd ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 -12
  %i.gj = getelementptr i8, ptr %i.gh, i64 -28
  store <4 x float> %wide.load615, ptr %i.gi, align 4
  store <4 x float> %wide.load616, ptr %i.gj, align 4
  %index.next617 = add nuw i64 %index614, 8       ; 2 uses
  %i.gk = icmp eq i64 %index.next617, %n.vec612
  br i1 %i.gk, label %middle.block618, label %vector.body613, !llvm.loop !599

middle.block618:                                  ; preds = %vector.body613
  %cmp.n619 = icmp eq i64 %i.fw, %n.vec612
  br i1 %cmp.n619, label %.preheader.i.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck607, %.lr.ph.preheader.i, %middle.block618
  %indvars.iv.i.ph = phi i64 [ %i.fu, %vector.memcheck607 ], [ %i.fu, %.lr.ph.preheader.i ], [ %i.gc, %middle.block618 ] ; 4 uses
  %i.gl = add nsw i64 %indvars.iv.i.ph, 1
  %xtraiter635 = and i64 %i.gl, 3                 ; 2 uses
  %lcmp.mod636.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod636.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.i.prol
  %i.gn = load float, ptr %i.gm, align 4
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  store float %i.gn, ptr %gep.i.prol, align 4
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter635
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !600

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.go = icmp ult i64 %indvars.iv.i.ph, 3
  br i1 %i.go, label %.preheader.i.loopexit, label %.lr.ph.i

.preheader.i.loopexit:                            ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block618
  %i.gp = icmp sgt i32 %i.fs, 1
  br i1 %i.gp, label %.lr.ph63.preheader.i, label %._crit_edge.i

.lr.ph63.preheader.i:                             ; preds = %.preheader.i.loopexit
  %i.gq = xor i32 %i.fj, -1
  %i.gr = add i32 %i.fo, %i.gq
  %i.gs = zext i32 %i.gr to i64
  %i.gt = shl nuw nsw i64 %i.gs, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.gt, i1 false)
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.i
  %i.gv = load float, ptr %i.gu, align 4
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store float %i.gv, ptr %gep.i, align 4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.next.i
  %i.gx = load float, ptr %i.gw, align 4
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  store float %i.gx, ptr %gep.i.1, align 4
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.next.i.1
  %i.gz = load float, ptr %i.gy, align 4
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  store float %i.gz, ptr %gep.i.2, align 4
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 3 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.next.i.2
  %i.hb = load float, ptr %i.ha, align 4
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  store float %i.hb, ptr %gep.i.3, align 4
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4
  %.not81.i.3 = icmp eq i64 %indvars.iv.next.i.2, 0
  br i1 %.not81.i.3, label %.preheader.i.loopexit, label %.lr.ph.i, !llvm.loop !601

._crit_edge.i:                                    ; preds = %.lr.ph63.preheader.i, %.preheader.i.loopexit
  store float %i.fm, ptr %.1193350, align 4
  store i32 %i.fj, ptr %.1191353, align 4
  br label %stbir__insert_coeff.exit

bb.w:                                             ; preds = %bb.u
  %i.hc = sub nsw i32 %i.fj, %i.fo
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %i.hd ; 2 uses
  %i.hf = load float, ptr %i.he, align 4
  %i.hg = fadd float %i.fm, %i.hf
  store float %i.hg, ptr %i.he, align 4
  br label %stbir__insert_coeff.exit

bb.x:                                             ; preds = %bb.t
  %i.hh = sub nsw i32 %i.fj, %i.fo                ; 3 uses
  %.not59.not.i = icmp slt i32 %i.hh, %6
  br i1 %.not59.not.i, label %bb.y, label %stbir__insert_coeff.exit

bb.y:                                             ; preds = %bb.x
  %i.hi = sub nsw i32 %i.fn, %i.fo
  %.064.i = add nsw i32 %i.hi, 1                  ; 2 uses
  %i.hj = icmp slt i32 %.064.i, %i.hh
  br i1 %i.hj, label %.lr.ph67.preheader.i, label %._crit_edge68.i

.lr.ph67.preheader.i:                             ; preds = %bb.y
  %i.hk = sext i32 %.064.i to i64
  %i.hl = shl nsw i64 %i.hk, 2
  %scevgep73.i = getelementptr i8, ptr %.1193350, i64 %i.hl
  %i.hm = add i32 %i.fj, -2
  %i.hn = sub i32 %i.hm, %i.fn
  %i.ho = zext i32 %i.hn to i64
  %i.hp = shl nuw nsw i64 %i.ho, 2
  %i.hq = add nuw nsw i64 %i.hp, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i, i8 0, i64 %i.hq, i1 false)
  br label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %.lr.ph67.preheader.i, %bb.y
  %i.hr = sext i32 %i.hh to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %.1193350, i64 %i.hr
  store float %i.fm, ptr %i.hs, align 4
  store i32 %i.fj, ptr %i.fb, align 4
  br label %stbir__insert_coeff.exit

stbir__insert_coeff.exit:                         ; preds = %bb.s, %bb.v, %._crit_edge.i, %bb.w, %bb.x, %._crit_edge68.i
  %indvars.iv.next374 = add nsw i64 %indvars.iv373, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next374 to i32
  %exitcond376.not = icmp eq i32 %i.fe, %lftr.wideiv
  br i1 %exitcond376.not, label %.loopexit291.loopexit, label %bb.q

.loopexit291.loopexit:                            ; preds = %stbir__insert_coeff.exit
  %.pre = load i32, ptr %.1191353, align 4
  br label %.loopexit291

.loopexit291:                                     ; preds = %.loopexit291.loopexit, %bb.o
  %i.ht = phi i32 [ %.pre, %.loopexit291.loopexit ], [ %.pre392, %bb.o ] ; 4 uses
  %i.hu = icmp slt i32 %i.ht, 0
  br i1 %i.hu, label %bb.z, label %stbir__insert_coeff.exit274

bb.z:                                             ; preds = %.loopexit291
  %narrow = xor i32 %i.ht, -1
  %i.hv = zext nneg i32 %narrow to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %i.hv ; 2 uses
  %.not427 = icmp eq i32 %i.ht, -1
  br i1 %.not427, label %._crit_edge329, label %.lr.ph328

.lr.ph328:                                        ; preds = %bb.z
  %scevgep.i242 = getelementptr i8, ptr %.1193350, i64 4
  br label %.tail276

.tail276:                                         ; preds = %.lr.ph328, %stbir__insert_coeff.exit255
  %i.hx = phi i32 [ %i.ht, %.lr.ph328 ], [ %i.ki, %stbir__insert_coeff.exit255 ] ; 9 uses
  %.0182326 = phi ptr [ %i.hw, %.lr.ph328 ], [ %i.ib, %stbir__insert_coeff.exit255 ] ; 2 uses
  %.1325 = phi i32 [ -1, %.lr.ph328 ], [ %i.kh, %stbir__insert_coeff.exit255 ] ; 3 uses
  %i.hy = icmp sgt i32 %.1325, %i.ei
  %i.hz = sub nsw i32 0, %.1325
  %spec.select464 = select i1 %i.hy, i32 %i.hz, i32 %i.b
  %i.ia = select i1 %trunc, i32 %spec.select464, i32 0 ; 13 uses
  %i.ib = getelementptr inbounds i8, ptr %.0182326, i64 -4 ; 2 uses
  %i.ic = load float, ptr %.0182326, align 4      ; 4 uses
  %i.id = load i32, ptr %i.fb, align 4            ; 6 uses
  %i.ie = icmp slt i32 %i.id, %i.hx
  br i1 %i.ie, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.tail276
  store i32 %i.ia, ptr %i.fb, align 4
  store i32 %i.ia, ptr %.1191353, align 4
  store float %i.ic, ptr %.1193350, align 4
  br label %stbir__insert_coeff.exit255

bb.ab:                                            ; preds = %.tail276
  %.not.i237 = icmp sgt i32 %i.ia, %i.id
  br i1 %.not.i237, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.if = icmp slt i32 %i.ia, %i.hx
  br i1 %i.if, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ig = sub nsw i32 %i.id, %i.ia
  %.not60.not.i238 = icmp slt i32 %i.ig, %6
  br i1 %.not60.not.i238, label %.lr.ph.preheader.i243, label %stbir__insert_coeff.exit255

.lr.ph.preheader.i243:                            ; preds = %bb.ad
  %i.ih = sub nsw i32 %i.hx, %i.ia                ; 2 uses
  %i.ii = sub i32 %i.id, %i.hx                    ; 2 uses
  %i.ij = zext i32 %i.ii to i64                   ; 5 uses
  %i.ik = sext i32 %i.ih to i64
  %invariant.gep.i244 = getelementptr [4 x i8], ptr %.1193350, i64 %i.ik ; 6 uses
  %i.il = add nuw nsw i64 %i.ij, 1                ; 2 uses
  %min.iters.check596 = icmp ult i32 %i.ii, 7
  br i1 %min.iters.check596, label %.lr.ph.i245.preheader, label %vector.memcheck593

vector.memcheck593:                               ; preds = %.lr.ph.preheader.i243
  %i.im = sext i32 %i.ia to i64
  %i.in = sext i32 %i.hx to i64
  %i.io = sub nsw i64 %i.im, %i.in
  %i.ip = shl nsw i64 %i.io, 2
  %i.iq = add nsw i64 %i.ip, -1
  %diff.check594 = icmp ult i64 %i.iq, 31
  br i1 %diff.check594, label %.lr.ph.i245.preheader, label %vector.ph597

vector.ph597:                                     ; preds = %vector.memcheck593
  %n.vec598 = and i64 %i.il, 8589934584           ; 3 uses
  %i.ir = sub nsw i64 %i.ij, %n.vec598
  br label %vector.body599

vector.body599:                                   ; preds = %vector.body599, %vector.ph597
  %index600 = phi i64 [ 0, %vector.ph597 ], [ %index.next603, %vector.body599 ] ; 2 uses
  %i.is = sub i64 %i.ij, %index600                ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %i.is ; 2 uses
  %i.iu = getelementptr inbounds i8, ptr %i.it, i64 -12
  %i.iv = getelementptr inbounds i8, ptr %i.it, i64 -28
  %wide.load601 = load <4 x float>, ptr %i.iu, align 4
  %wide.load602 = load <4 x float>, ptr %i.iv, align 4
  %i.iw = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %i.is ; 2 uses
  %i.ix = getelementptr i8, ptr %i.iw, i64 -12
  %i.iy = getelementptr i8, ptr %i.iw, i64 -28
  store <4 x float> %wide.load601, ptr %i.ix, align 4
  store <4 x float> %wide.load602, ptr %i.iy, align 4
  %index.next603 = add nuw i64 %index600, 8       ; 2 uses
  %i.iz = icmp eq i64 %index.next603, %n.vec598
  br i1 %i.iz, label %middle.block604, label %vector.body599, !llvm.loop !602

middle.block604:                                  ; preds = %vector.body599
  %cmp.n605 = icmp eq i64 %i.il, %n.vec598
  br i1 %cmp.n605, label %.preheader.i239.loopexit, label %.lr.ph.i245.preheader

.lr.ph.i245.preheader:                            ; preds = %vector.memcheck593, %.lr.ph.preheader.i243, %middle.block604
  %indvars.iv.i246.ph = phi i64 [ %i.ij, %vector.memcheck593 ], [ %i.ij, %.lr.ph.preheader.i243 ], [ %i.ir, %middle.block604 ] ; 4 uses
  %i.ja = add nsw i64 %indvars.iv.i246.ph, 1
  %xtraiter637 = and i64 %i.ja, 3                 ; 2 uses
  %lcmp.mod638.not = icmp eq i64 %xtraiter637, 0
  br i1 %lcmp.mod638.not, label %.lr.ph.i245.prol.loopexit, label %.lr.ph.i245.prol

.lr.ph.i245.prol:                                 ; preds = %.lr.ph.i245.preheader, %.lr.ph.i245.prol
  %indvars.iv.i246.prol = phi i64 [ %indvars.iv.next.i248.prol, %.lr.ph.i245.prol ], [ %indvars.iv.i246.ph, %.lr.ph.i245.preheader ] ; 3 uses
  %prol.iter639 = phi i64 [ %prol.iter639.next, %.lr.ph.i245.prol ], [ 0, %.lr.ph.i245.preheader ]
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.i246.prol
  %i.jc = load float, ptr %i.jb, align 4
  %gep.i247.prol = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.i246.prol
  store float %i.jc, ptr %gep.i247.prol, align 4
  %indvars.iv.next.i248.prol = add nsw i64 %indvars.iv.i246.prol, -1 ; 2 uses
  %prol.iter639.next = add i64 %prol.iter639, 1   ; 2 uses
  %prol.iter639.cmp.not = icmp eq i64 %prol.iter639.next, %xtraiter637
  br i1 %prol.iter639.cmp.not, label %.lr.ph.i245.prol.loopexit, label %.lr.ph.i245.prol, !llvm.loop !603

.lr.ph.i245.prol.loopexit:                        ; preds = %.lr.ph.i245.prol, %.lr.ph.i245.preheader
  %indvars.iv.i246.unr = phi i64 [ %indvars.iv.i246.ph, %.lr.ph.i245.preheader ], [ %indvars.iv.next.i248.prol, %.lr.ph.i245.prol ]
  %i.jd = icmp ult i64 %indvars.iv.i246.ph, 3
  br i1 %i.jd, label %.preheader.i239.loopexit, label %.lr.ph.i245

.preheader.i239.loopexit:                         ; preds = %.lr.ph.i245.prol.loopexit, %.lr.ph.i245, %middle.block604
  %i.je = icmp sgt i32 %i.ih, 1
  br i1 %i.je, label %.lr.ph63.preheader.i241, label %._crit_edge.i240

.lr.ph63.preheader.i241:                          ; preds = %.preheader.i239.loopexit
  %i.jf = xor i32 %i.ia, -1
  %i.jg = add i32 %i.hx, %i.jf
  %i.jh = zext i32 %i.jg to i64
  %i.ji = shl nuw nsw i64 %i.jh, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i242, i8 0, i64 %i.ji, i1 false)
  br label %._crit_edge.i240

.lr.ph.i245:                                      ; preds = %.lr.ph.i245.prol.loopexit, %.lr.ph.i245
  %indvars.iv.i246 = phi i64 [ %indvars.iv.next.i248.3, %.lr.ph.i245 ], [ %indvars.iv.i246.unr, %.lr.ph.i245.prol.loopexit ] ; 6 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.i246
  %i.jk = load float, ptr %i.jj, align 4
  %gep.i247 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.i246
  store float %i.jk, ptr %gep.i247, align 4
  %indvars.iv.next.i248 = add nsw i64 %indvars.iv.i246, -1 ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.next.i248
  %i.jm = load float, ptr %i.jl, align 4
  %gep.i247.1 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.next.i248
  store float %i.jm, ptr %gep.i247.1, align 4
  %indvars.iv.next.i248.1 = add nsw i64 %indvars.iv.i246, -2 ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.next.i248.1
  %i.jo = load float, ptr %i.jn, align 4
  %gep.i247.2 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.next.i248.1
  store float %i.jo, ptr %gep.i247.2, align 4
  %indvars.iv.next.i248.2 = add nsw i64 %indvars.iv.i246, -3 ; 3 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.next.i248.2
  %i.jq = load float, ptr %i.jp, align 4
  %gep.i247.3 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.next.i248.2
  store float %i.jq, ptr %gep.i247.3, align 4
  %indvars.iv.next.i248.3 = add nsw i64 %indvars.iv.i246, -4
  %.not81.i249.3 = icmp eq i64 %indvars.iv.next.i248.2, 0
  br i1 %.not81.i249.3, label %.preheader.i239.loopexit, label %.lr.ph.i245, !llvm.loop !604

._crit_edge.i240:                                 ; preds = %.lr.ph63.preheader.i241, %.preheader.i239.loopexit
  store float %i.ic, ptr %.1193350, align 4
  store i32 %i.ia, ptr %.1191353, align 4
  br label %stbir__insert_coeff.exit255

bb.ae:                                            ; preds = %bb.ac
  %i.jr = sub nsw i32 %i.ia, %i.hx
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %i.js ; 2 uses
  %i.ju = load float, ptr %i.jt, align 4
  %i.jv = fadd float %i.ic, %i.ju
  store float %i.jv, ptr %i.jt, align 4
  br label %stbir__insert_coeff.exit255

bb.af:                                            ; preds = %bb.ab
  %i.jw = sub nsw i32 %i.ia, %i.hx                ; 3 uses
  %.not59.not.i250 = icmp slt i32 %i.jw, %6
  br i1 %.not59.not.i250, label %bb.ag, label %stbir__insert_coeff.exit255

bb.ag:                                            ; preds = %bb.af
  %i.jx = sub nsw i32 %i.id, %i.hx
  %.064.i251 = add nsw i32 %i.jx, 1               ; 2 uses
  %i.jy = icmp slt i32 %.064.i251, %i.jw
  br i1 %i.jy, label %.lr.ph67.preheader.i253, label %._crit_edge68.i252

.lr.ph67.preheader.i253:                          ; preds = %bb.ag
  %i.jz = sext i32 %.064.i251 to i64
  %i.ka = shl nsw i64 %i.jz, 2
  %scevgep73.i254 = getelementptr i8, ptr %.1193350, i64 %i.ka
  %reass.sub475 = sub i32 %i.ia, %i.id
  %i.kb = add i32 %reass.sub475, -2
  %i.kc = zext i32 %i.kb to i64
  %i.kd = shl nuw nsw i64 %i.kc, 2
  %i.ke = add nuw nsw i64 %i.kd, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i254, i8 0, i64 %i.ke, i1 false)
  br label %._crit_edge68.i252

._crit_edge68.i252:                               ; preds = %.lr.ph67.preheader.i253, %bb.ag
  %i.kf = sext i32 %i.jw to i64
  %i.kg = getelementptr inbounds [4 x i8], ptr %.1193350, i64 %i.kf
  store float %i.ic, ptr %i.kg, align 4
  store i32 %i.ia, ptr %i.fb, align 4
  br label %stbir__insert_coeff.exit255

stbir__insert_coeff.exit255:                      ; preds = %bb.aa, %bb.ad, %._crit_edge.i240, %bb.ae, %bb.af, %._crit_edge68.i252
  %i.kh = add nsw i32 %.1325, -1                  ; 2 uses
  %i.ki = load i32, ptr %.1191353, align 4        ; 3 uses
  %i.kj = icmp sgt i32 %i.kh, %i.ki
  br i1 %i.kj, label %.tail276, label %._crit_edge329

._crit_edge329:                                   ; preds = %stbir__insert_coeff.exit255, %bb.z
  %.0182.lcssa = phi ptr [ %i.hw, %bb.z ], [ %i.ib, %stbir__insert_coeff.exit255 ]
  %.lcssa = phi i32 [ -1, %bb.z ], [ %i.ki, %stbir__insert_coeff.exit255 ] ; 9 uses
  %i.kk = load float, ptr %.0182.lcssa, align 4   ; 4 uses
  store i32 0, ptr %.1191353, align 4
  %i.kl = load i32, ptr %i.fb, align 4            ; 2 uses
  %.not226332 = icmp slt i32 %i.kl, 0
  br i1 %.not226332, label %._crit_edge336, label %.lr.ph335.preheader

.lr.ph335.preheader:                              ; preds = %._crit_edge329
  %i.km = sext i32 %.lcssa to i64
  br label %.lr.ph335

.lr.ph335:                                        ; preds = %.lr.ph335.preheader, %.lr.ph335
  %indvars.iv377 = phi i64 [ 0, %.lr.ph335.preheader ], [ %indvars.iv.next378, %.lr.ph335 ] ; 4 uses
  %i.kn = sub nsw i64 %indvars.iv377, %i.km
  %i.ko = getelementptr inbounds [4 x i8], ptr %.1193350, i64 %i.kn
  %i.kp = load float, ptr %i.ko, align 4
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv377
  store float %i.kp, ptr %i.kq, align 4
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1
  %i.kr = load i32, ptr %i.fb, align 4            ; 2 uses
  %i.ks = sext i32 %i.kr to i64
  %.not226.not = icmp slt i64 %indvars.iv377, %i.ks
  br i1 %.not226.not, label %.lr.ph335, label %._crit_edge336

._crit_edge336:                                   ; preds = %.lr.ph335, %._crit_edge329
  %i.kt = phi i32 [ %i.kl, %._crit_edge329 ], [ %i.kr, %.lr.ph335 ] ; 6 uses
  %i.ku = icmp slt i32 %.lcssa, 0                 ; 2 uses
  br i1 %trunc, label %call.1285, label %call.0284

call.0284:                                        ; preds = %._crit_edge336
  %spec.select.i456 = tail call i32 @llvm.smin.i32(i32 %.lcssa, i32 %i.b)
  %.0.i457 = select i1 %i.ku, i32 0, i32 %spec.select.i456
  br label %.tail282

call.1285:                                        ; preds = %._crit_edge336
  br i1 %i.ku, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %call.1285
  %i.kv = icmp sgt i32 %.lcssa, %i.ei
  %i.kw = sub nsw i32 0, %.lcssa
  %spec.select465 = select i1 %i.kv, i32 %i.kw, i32 %i.b
  br label %.tail282

bb.ai:                                            ; preds = %call.1285
  %.not.i458 = icmp slt i32 %.lcssa, %i.a
  br i1 %.not.i458, label %.tail282, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not17.i459 = icmp slt i32 %.lcssa, %i.eh
  %i.kx = xor i32 %.lcssa, -1
  %i.ky = add i32 %i.eh, %i.kx
  %.0.i460 = select i1 %.not17.i459, i32 %i.ky, i32 0
  br label %.tail282

.tail282:                                         ; preds = %bb.ah, %bb.aj, %bb.ai, %call.0284
  %i.kz = phi i32 [ %.0.i457, %call.0284 ], [ %spec.select465, %bb.ah ], [ %.lcssa, %bb.ai ], [ %.0.i460, %bb.aj ] ; 13 uses
  %i.la = load i32, ptr %.1191353, align 4        ; 9 uses
  %i.lb = icmp slt i32 %i.kt, %i.la
  br i1 %i.lb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.tail282
  store i32 %i.kz, ptr %i.fb, align 4
  store i32 %i.kz, ptr %.1191353, align 4
  store float %i.kk, ptr %.1193350, align 4
  br label %stbir__insert_coeff.exit274

bb.al:                                            ; preds = %.tail282
  %.not.i256 = icmp sgt i32 %i.kz, %i.kt
  br i1 %.not.i256, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lc = icmp slt i32 %i.kz, %i.la
  br i1 %i.lc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ld = sub nsw i32 %i.kt, %i.kz
  %.not60.not.i257 = icmp slt i32 %i.ld, %6
  br i1 %.not60.not.i257, label %.lr.ph.preheader.i262, label %stbir__insert_coeff.exit274

.lr.ph.preheader.i262:                            ; preds = %bb.an
  %i.le = sub nsw i32 %i.la, %i.kz                ; 2 uses
  %i.lf = sub i32 %i.kt, %i.la                    ; 2 uses
  %i.lg = zext i32 %i.lf to i64                   ; 5 uses
  %i.lh = sext i32 %i.le to i64
  %invariant.gep.i263 = getelementptr [4 x i8], ptr %.1193350, i64 %i.lh ; 6 uses
  %i.li = add nuw nsw i64 %i.lg, 1                ; 2 uses
  %min.iters.check582 = icmp ult i32 %i.lf, 7
  br i1 %min.iters.check582, label %.lr.ph.i264.preheader, label %vector.memcheck580

vector.memcheck580:                               ; preds = %.lr.ph.preheader.i262
  %i.lj = sext i32 %i.kz to i64
  %i.lk = sext i32 %i.la to i64
  %i.ll = sub nsw i64 %i.lj, %i.lk
  %i.lm = shl nsw i64 %i.ll, 2
  %i.ln = add nsw i64 %i.lm, -1
  %diff.check = icmp ult i64 %i.ln, 31
  br i1 %diff.check, label %.lr.ph.i264.preheader, label %vector.ph583

vector.ph583:                                     ; preds = %vector.memcheck580
  %n.vec584 = and i64 %i.li, 8589934584           ; 3 uses
  %i.lo = sub nsw i64 %i.lg, %n.vec584
  br label %vector.body585

vector.body585:                                   ; preds = %vector.body585, %vector.ph583
  %index586 = phi i64 [ 0, %vector.ph583 ], [ %index.next589, %vector.body585 ] ; 2 uses
  %i.lp = sub i64 %i.lg, %index586                ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %i.lp ; 2 uses
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 -12
  %i.ls = getelementptr inbounds i8, ptr %i.lq, i64 -28
  %wide.load587 = load <4 x float>, ptr %i.lr, align 4
  %wide.load588 = load <4 x float>, ptr %i.ls, align 4
  %i.lt = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %i.lp ; 2 uses
  %i.lu = getelementptr i8, ptr %i.lt, i64 -12
  %i.lv = getelementptr i8, ptr %i.lt, i64 -28
  store <4 x float> %wide.load587, ptr %i.lu, align 4
  store <4 x float> %wide.load588, ptr %i.lv, align 4
  %index.next589 = add nuw i64 %index586, 8       ; 2 uses
  %i.lw = icmp eq i64 %index.next589, %n.vec584
  br i1 %i.lw, label %middle.block590, label %vector.body585, !llvm.loop !605

middle.block590:                                  ; preds = %vector.body585
  %cmp.n591 = icmp eq i64 %i.li, %n.vec584
  br i1 %cmp.n591, label %.preheader.i258.loopexit, label %.lr.ph.i264.preheader

.lr.ph.i264.preheader:                            ; preds = %vector.memcheck580, %.lr.ph.preheader.i262, %middle.block590
  %indvars.iv.i265.ph = phi i64 [ %i.lg, %vector.memcheck580 ], [ %i.lg, %.lr.ph.preheader.i262 ], [ %i.lo, %middle.block590 ] ; 4 uses
  %i.lx = add nsw i64 %indvars.iv.i265.ph, 1
  %xtraiter640 = and i64 %i.lx, 3                 ; 2 uses
  %lcmp.mod641.not = icmp eq i64 %xtraiter640, 0
  br i1 %lcmp.mod641.not, label %.lr.ph.i264.prol.loopexit, label %.lr.ph.i264.prol

.lr.ph.i264.prol:                                 ; preds = %.lr.ph.i264.preheader, %.lr.ph.i264.prol
  %indvars.iv.i265.prol = phi i64 [ %indvars.iv.next.i267.prol, %.lr.ph.i264.prol ], [ %indvars.iv.i265.ph, %.lr.ph.i264.preheader ] ; 3 uses
  %prol.iter642 = phi i64 [ %prol.iter642.next, %.lr.ph.i264.prol ], [ 0, %.lr.ph.i264.preheader ]
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.i265.prol
  %i.lz = load float, ptr %i.ly, align 4
  %gep.i266.prol = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.i265.prol
  store float %i.lz, ptr %gep.i266.prol, align 4
  %indvars.iv.next.i267.prol = add nsw i64 %indvars.iv.i265.prol, -1 ; 2 uses
  %prol.iter642.next = add i64 %prol.iter642, 1   ; 2 uses
  %prol.iter642.cmp.not = icmp eq i64 %prol.iter642.next, %xtraiter640
  br i1 %prol.iter642.cmp.not, label %.lr.ph.i264.prol.loopexit, label %.lr.ph.i264.prol, !llvm.loop !606

.lr.ph.i264.prol.loopexit:                        ; preds = %.lr.ph.i264.prol, %.lr.ph.i264.preheader
  %indvars.iv.i265.unr = phi i64 [ %indvars.iv.i265.ph, %.lr.ph.i264.preheader ], [ %indvars.iv.next.i267.prol, %.lr.ph.i264.prol ]
  %i.ma = icmp ult i64 %indvars.iv.i265.ph, 3
  br i1 %i.ma, label %.preheader.i258.loopexit, label %.lr.ph.i264

.preheader.i258.loopexit:                         ; preds = %.lr.ph.i264.prol.loopexit, %.lr.ph.i264, %middle.block590
  %i.mb = icmp sgt i32 %i.le, 1
  br i1 %i.mb, label %.lr.ph63.preheader.i260, label %._crit_edge.i259

.lr.ph63.preheader.i260:                          ; preds = %.preheader.i258.loopexit
  %scevgep.i261 = getelementptr i8, ptr %.1193350, i64 4
  %i.mc = xor i32 %i.kz, -1
  %i.md = add i32 %i.la, %i.mc
  %i.me = zext i32 %i.md to i64
  %i.mf = shl nuw nsw i64 %i.me, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i261, i8 0, i64 %i.mf, i1 false)
  br label %._crit_edge.i259

.lr.ph.i264:                                      ; preds = %.lr.ph.i264.prol.loopexit, %.lr.ph.i264
  %indvars.iv.i265 = phi i64 [ %indvars.iv.next.i267.3, %.lr.ph.i264 ], [ %indvars.iv.i265.unr, %.lr.ph.i264.prol.loopexit ] ; 6 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.i265
  %i.mh = load float, ptr %i.mg, align 4
  %gep.i266 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.i265
  store float %i.mh, ptr %gep.i266, align 4
  %indvars.iv.next.i267 = add nsw i64 %indvars.iv.i265, -1 ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.next.i267
  %i.mj = load float, ptr %i.mi, align 4
  %gep.i266.1 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.next.i267
  store float %i.mj, ptr %gep.i266.1, align 4
  %indvars.iv.next.i267.1 = add nsw i64 %indvars.iv.i265, -2 ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.next.i267.1
  %i.ml = load float, ptr %i.mk, align 4
  %gep.i266.2 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.next.i267.1
  store float %i.ml, ptr %gep.i266.2, align 4
  %indvars.iv.next.i267.2 = add nsw i64 %indvars.iv.i265, -3 ; 3 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %indvars.iv.next.i267.2
  %i.mn = load float, ptr %i.mm, align 4
  %gep.i266.3 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.next.i267.2
  store float %i.mn, ptr %gep.i266.3, align 4
  %indvars.iv.next.i267.3 = add nsw i64 %indvars.iv.i265, -4
  %.not81.i268.3 = icmp eq i64 %indvars.iv.next.i267.2, 0
  br i1 %.not81.i268.3, label %.preheader.i258.loopexit, label %.lr.ph.i264, !llvm.loop !607

._crit_edge.i259:                                 ; preds = %.lr.ph63.preheader.i260, %.preheader.i258.loopexit
  store float %i.kk, ptr %.1193350, align 4
  store i32 %i.kz, ptr %.1191353, align 4
  br label %stbir__insert_coeff.exit274

bb.ao:                                            ; preds = %bb.am
  %i.mo = sub nsw i32 %i.kz, %i.la
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.1193350, i64 %i.mp ; 2 uses
  %i.mr = load float, ptr %i.mq, align 4
  %i.ms = fadd float %i.kk, %i.mr
  store float %i.ms, ptr %i.mq, align 4
  br label %stbir__insert_coeff.exit274

bb.ap:                                            ; preds = %bb.al
  %i.mt = sub nsw i32 %i.kz, %i.la                ; 3 uses
  %.not59.not.i269 = icmp slt i32 %i.mt, %6
  br i1 %.not59.not.i269, label %bb.aq, label %stbir__insert_coeff.exit274

bb.aq:                                            ; preds = %bb.ap
  %i.mu = sub nsw i32 %i.kt, %i.la
  %.064.i270 = add nsw i32 %i.mu, 1               ; 2 uses
  %i.mv = icmp slt i32 %.064.i270, %i.mt
  br i1 %i.mv, label %.lr.ph67.preheader.i272, label %._crit_edge68.i271

.lr.ph67.preheader.i272:                          ; preds = %bb.aq
  %i.mw = sext i32 %.064.i270 to i64
  %i.mx = shl nsw i64 %i.mw, 2
  %scevgep73.i273 = getelementptr i8, ptr %.1193350, i64 %i.mx
  %reass.sub476 = sub i32 %i.kz, %i.kt
  %i.my = add i32 %reass.sub476, -2
  %i.mz = zext i32 %i.my to i64
  %i.na = shl nuw nsw i64 %i.mz, 2
  %i.nb = add nuw nsw i64 %i.na, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i273, i8 0, i64 %i.nb, i1 false)
  br label %._crit_edge68.i271

._crit_edge68.i271:                               ; preds = %.lr.ph67.preheader.i272, %bb.aq
  %i.nc = sext i32 %i.mt to i64
  %i.nd = getelementptr inbounds [4 x i8], ptr %.1193350, i64 %i.nc
  store float %i.kk, ptr %i.nd, align 4
  store i32 %i.kz, ptr %i.fb, align 4
  br label %stbir__insert_coeff.exit274

stbir__insert_coeff.exit274:                      ; preds = %.preheader, %middle.block577, %._crit_edge68.i271, %bb.ap, %bb.ao, %._crit_edge.i259, %bb.an, %bb.ak, %bb.m, %bb.n, %.loopexit291, %bb.l
  %i.ne = load i32, ptr %.1191353, align 4        ; 5 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.1191353, i64 4 ; 3 uses
  %i.ng = load i32, ptr %i.nf, align 4            ; 2 uses
  %.not229 = icmp sgt i32 %i.ne, %i.ng
  br i1 %.not229, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %stbir__insert_coeff.exit274
  %reass.sub = sub i32 %i.ng, %i.ne
  %i.nh = add i32 %reass.sub, 1                   ; 2 uses
  %.not230338 = icmp eq i32 %i.nh, 0
  br i1 %.not230338, label %.critedge.thread, label %.lr.ph341.preheader

.lr.ph341.preheader:                              ; preds = %bb.ar
  %i.ni = sext i32 %i.nh to i64
  br label %.lr.ph341

.critedge.thread:                                 ; preds = %bb.as, %bb.ar
  %i.nj = add nsw i32 %i.ne, -1
  store i32 %i.nj, ptr %i.nf, align 4
  br label %bb.au

.lr.ph341:                                        ; preds = %.lr.ph341.preheader, %bb.as
  %indvars.iv385 = phi i64 [ %i.ni, %.lr.ph341.preheader ], [ %indvars.iv.next386, %bb.as ] ; 4 uses
  %i.nk = getelementptr [4 x i8], ptr %.1193350, i64 %indvars.iv385
  %i.nl = getelementptr i8, ptr %i.nk, i64 -4
  %i.nm = load float, ptr %i.nl, align 4
  %i.nn = fcmp oeq float %i.nm, 0.000000e+00
  br i1 %i.nn, label %bb.as, label %.critedge

bb.as:                                            ; preds = %.lr.ph341
  %indvars.iv.next386 = add nsw i64 %indvars.iv385, -1 ; 2 uses
  %.not230 = icmp eq i64 %indvars.iv.next386, 0
  br i1 %.not230, label %.critedge.thread, label %.lr.ph341

.critedge:                                        ; preds = %.lr.ph341
  %i.no = trunc nsw i64 %indvars.iv385 to i32     ; 4 uses
  %i.np = add i32 %i.ne, -1
  %i.nq = add i32 %i.np, %i.no                    ; 2 uses
  store i32 %i.nq, ptr %i.nf, align 4
  %.not231.not = icmp sgt i64 %indvars.iv385, 0
  br i1 %.not231.not, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.critedge
  %spec.select234 = tail call i32 @llvm.smin.i32(i32 %i.ne, i32 %.0201347)
  %.1198 = tail call i32 @llvm.smax.i32(i32 %i.nq, i32 %.0197348)
  %spec.select235 = tail call i32 @llvm.smax.i32(i32 %i.no, i32 %.0194349)
  br label %bb.au

bb.au:                                            ; preds = %.critedge.thread, %bb.at, %.critedge
  %.0296 = phi i32 [ %i.no, %.critedge ], [ %i.no, %bb.at ], [ 0, %.critedge.thread ] ; 3 uses
  %.2203 = phi i32 [ %.0201347, %.critedge ], [ %spec.select234, %bb.at ], [ %.0201347, %.critedge.thread ] ; 2 uses
  %.2199 = phi i32 [ %.0197348, %.critedge ], [ %.1198, %bb.at ], [ %.0197348, %.critedge.thread ] ; 2 uses
  %.1195 = phi i32 [ %.0194349, %.critedge ], [ %spec.select235, %bb.at ], [ %.0194349, %.critedge.thread ] ; 2 uses
  %i.nr = icmp slt i32 %.0296, %6
  br i1 %i.nr, label %.lr.ph345.preheader, label %.loopexit

.lr.ph345.preheader:                              ; preds = %bb.au
  %i.ns = sext i32 %.0296 to i64
  %i.nt = shl nsw i64 %i.ns, 2
  %scevgep = getelementptr i8, ptr %.1193350, i64 %i.nt
  %i.nu = xor i32 %.0296, -1
  %i.nv = add i32 %6, %i.nu
  %i.nw = zext i32 %i.nv to i64
  %i.nx = shl nuw nsw i64 %i.nw, 2
  %i.ny = add nuw nsw i64 %i.nx, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.ny, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph345.preheader, %bb.au, %stbir__insert_coeff.exit274
  %.3204 = phi i32 [ %.0201347, %stbir__insert_coeff.exit274 ], [ %.2203, %bb.au ], [ %.2203, %.lr.ph345.preheader ] ; 2 uses
  %.3200 = phi i32 [ %.0197348, %stbir__insert_coeff.exit274 ], [ %.2199, %bb.au ], [ %.2199, %.lr.ph345.preheader ] ; 2 uses
  %.2196 = phi i32 [ %.0194349, %stbir__insert_coeff.exit274 ], [ %.1195, %bb.au ], [ %.1195, %.lr.ph345.preheader ] ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.1191353, i64 8
  %i.oa = getelementptr [4 x i8], ptr %.1193350, i64 %i.ef
  %i.ob = add nuw nsw i32 %.2208346, 1            ; 2 uses
  %exitcond391.not = icmp eq i32 %i.ob, %3
  br i1 %exitcond391.not, label %._crit_edge355, label %bb.i

._crit_edge355:                                   ; preds = %.loopexit, %stbir_overlapping_memcpy.exit
  %.0201.lcssa = phi i32 [ 2147483647, %stbir_overlapping_memcpy.exit ], [ %.3204, %.loopexit ]
  %.0197.lcssa = phi i32 [ -2147483647, %stbir_overlapping_memcpy.exit ], [ %.3200, %.loopexit ]
  %.0194.lcssa = phi i32 [ -1, %stbir_overlapping_memcpy.exit ], [ %.2196, %.loopexit ]
  store i32 %.0201.lcssa, ptr %1, align 4
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.0197.lcssa, ptr %i.oc, align 4
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.0194.lcssa, ptr %i.od, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_1_channels_with_n_coeffs_mod0(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.039 = phi ptr [ %4, %bb.a ], [ %i.y, %bb.d ]  ; 3 uses
  %.038 = phi ptr [ %3, %bb.a ], [ %i.z, %bb.d ]  ; 3 uses
  %.037 = phi ptr [ %0, %bb.a ], [ %i.aa, %bb.d ] ; 2 uses
  %i.d = load i32, ptr %.038, align 4             ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.038, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sub nsw i32 %i.h, %i.d
  %i.j = ashr i32 %i.i, 2
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #52, !srcloc !608
  %i.k = load <4 x float>, ptr %.039, align 1
  %i.l = load <4 x float>, ptr %i.f, align 1
  %i.m = fmul <4 x float> %i.k, %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.036 = phi ptr [ %i.f, %bb.b ], [ %i.o, %bb.c ]
  %.035 = phi i32 [ %i.j, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %.034 = phi ptr [ %.039, %bb.b ], [ %i.n, %bb.c ]
  %.0 = phi <4 x float> [ %i.m, %bb.b ], [ %i.s, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %.034, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.036, i64 16 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.o) #52, !srcloc !609
  %i.p = load <4 x float>, ptr %i.n, align 1
  %i.q = load <4 x float>, ptr %i.o, align 1
  %i.r = fmul <4 x float> %i.p, %i.q
  %i.s = fadd <4 x float> %.0, %i.r               ; 3 uses
  %i.t = add nsw i32 %.035, -1
  %i.u = icmp sgt i32 %.035, 1
  br i1 %i.u, label %bb.c, label %bb.d, !llvm.loop !610

bb.d:                                             ; preds = %bb.c
  %i.v = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.w = fadd <4 x float> %i.s, %i.v              ; 2 uses
  %shift = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.w, %shift
  %i.x = extractelement <4 x float> %foldExtExtBinop, i64 0
  store float %i.x, ptr %.037, align 1
  %i.y = getelementptr inbounds [4 x i8], ptr %.039, i64 %i.c
  %i.z = getelementptr inbounds nuw i8, ptr %.038, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.037, i64 4 ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %i.b
  br i1 %i.ab, label %bb.b, label %bb.e, !llvm.loop !611

bb.e:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__horizontal_gather_1_channels_with_n_coeffs_mod1(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #24 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.044 = phi ptr [ %4, %bb.a ], [ %i.af, %bb.d ] ; 3 uses
  %.043 = phi ptr [ %0, %bb.a ], [ %i.ah, %bb.d ] ; 2 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.ag, %bb.d ]   ; 3 uses
  %i.d = load i32, ptr %.0, align 4               ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = xor i32 %i.d, -1
  %i.j = add i32 %i.h, %i.i
  %i.k = ashr i32 %i.j, 2
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #52, !srcloc !612
  %i.l = load <4 x float>, ptr %.044, align 1
  %i.m = load <4 x float>, ptr %i.f, align 1
  %i.n = fmul <4 x float> %i.l, %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.042 = phi ptr [ %i.f, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %.041 = phi i32 [ %i.k, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %.040 = phi ptr [ %.044, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.039 = phi <4 x float> [ %i.n, %bb.b ], [ %i.t, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %.040, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.042, i64 16 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.p) #52, !srcloc !613
  %i.q = load <4 x float>, ptr %i.o, align 1
end_hunk_11
