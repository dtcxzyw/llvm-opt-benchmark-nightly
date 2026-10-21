Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 115
begin_hunk_0_@stbi_load_gif_from_memory:bb.a
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
  %5 = sext i32 %i.o to i64
  %i.p = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %5) #53 ; 8 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %stbi__malloc_mad4.exit.thread.i, label %bb.g

stbi__malloc_mad4.exit.thread.i:                  ; preds = %stbi__malloc_mad4.exit.i, %stbi__mul2sizes_valid.exit18.i.i.i, %stbi__mul2sizes_valid.exit.thread24.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.a) #52
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %stbi__ldr_to_hdr.exit

bb.g:                                             ; preds = %stbi__malloc_mad4.exit.i
  %i.r = and i32 %i.e, 1
  %.not.i = icmp eq i32 %i.r, 0                   ; 2 uses
  %i.s = sext i1 %.not.i to i32
  %.0.i = add i32 %i.e, %i.s                      ; 5 uses
  %i.t = icmp sgt i32 %i.i, 0
  br i1 %i.t, label %.preheader48.lr.ph.i, label %.loopexit.i

.preheader48.lr.ph.i:                             ; preds = %bb.g
  %i.u = icmp sgt i32 %.0.i, 0
  %i.v = load float, ptr @stbi__l2h_gamma, align 4
  %i.w = fpext float %i.v to double               ; 3 uses
  %i.x = load float, ptr @stbi__l2h_scale, align 4
  %i.y = fpext float %i.x to double               ; 3 uses
  br i1 %i.u, label %.preheader48.preheader.i, label %._crit_edge51.split.i

.preheader48.preheader.i:                         ; preds = %.preheader48.lr.ph.i
  %6 = sext i32 %i.e to i64
  %wide.trip.count57.i = zext nneg i32 %i.i to i64
  %wide.trip.count.i = zext nneg i32 %.0.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.z = icmp eq i32 %.0.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod21 = trunc i32 %.0.i to i1
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %._crit_edge.i, %.preheader48.preheader.i
  %indvars.iv54.i = phi i64 [ 0, %.preheader48.preheader.i ], [ %indvars.iv.next55.i, %._crit_edge.i ] ; 2 uses
  %i.aa = mul nuw nsw i64 %indvars.iv54.i, %6     ; 3 uses
  br i1 %i.z, label %.epil.preheader, label %.preheader48.i.new

.preheader48.i.new:                               ; preds = %.preheader48.i, %.preheader48.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader48.i.new ], [ 0, %.preheader48.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader48.i.new ], [ 0, %.preheader48.i ]
  %i.ab = add nsw i64 %indvars.iv.i, %i.aa        ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.a, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = uitofp i8 %i.ad to float
  %i.af = fdiv float %i.ae, 2.550000e+02
  %i.ag = fpext float %i.af to double
  %i.ah = tail call double @pow(double noundef %i.ag, double noundef %i.w) #52
  %i.ai = fmul double %i.ah, %i.y
  %i.aj = fptrunc double %i.ai to float
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ab
  store float %i.aj, ptr %i.ak, align 4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.al = add nsw i64 %indvars.iv.next.i, %i.aa   ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.a, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = uitofp i8 %i.an to float
  %i.ap = fdiv float %i.ao, 2.550000e+02
  %i.aq = fpext float %i.ap to double
  %i.ar = tail call double @pow(double noundef %i.aq, double noundef %i.w) #52
  %i.as = fmul double %i.ar, %i.y
  %i.at = fptrunc double %i.as to float
  %i.au = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.al
  store float %i.at, ptr %i.au, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader48.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader48.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader48.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader48.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.av = add nsw i64 %indvars.iv.i.epil.init, %i.aa ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.a, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = uitofp i8 %i.ax to float
  %i.az = fdiv float %i.ay, 2.550000e+02
  %i.ba = fpext float %i.az to double
  %i.bb = tail call double @pow(double noundef %i.ba, double noundef %i.w) #52
  %i.bc = fmul double %i.bb, %i.y
  %i.bd = fptrunc double %i.bc to float
  %i.be = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.av
  store float %i.bd, ptr %i.be, align 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, %wide.trip.count57.i
  br i1 %exitcond58.not.i, label %._crit_edge51.split.i, label %.preheader48.i

._crit_edge51.split.i:                            ; preds = %._crit_edge.i, %.preheader48.lr.ph.i
  br i1 %.not.i, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge51.split.i
  %7 = sext i32 %i.e to i64                       ; 3 uses
  %i.bf = sext i32 %.0.i to i64                   ; 3 uses
  %wide.trip.count62.i = zext nneg i32 %i.i to i64 ; 2 uses
  %xtraiter22 = and i64 %wide.trip.count62.i, 1
  %i.bg = icmp eq i32 %i.i, 1
  br i1 %i.bg, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter25 = and i64 %wide.trip.count62.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next60.i.1, %.lr.ph.i ] ; 3 uses
  %niter26 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter26.next.1, %.lr.ph.i ]
  %i.bh = mul nuw nsw i64 %indvars.iv59.i, %7
  %i.bi = add nsw i64 %i.bh, %i.bf                ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = uitofp i8 %i.bk to float
  %i.bm = fdiv float %i.bl, 2.550000e+02
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bi
  store float %i.bm, ptr %i.bn, align 4
  %indvars.iv.next60.i = or disjoint i64 %indvars.iv59.i, 1
  %i.bo = mul nuw nsw i64 %indvars.iv.next60.i, %7
  %i.bp = add nsw i64 %i.bo, %i.bf                ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.a, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = uitofp i8 %i.br to float
  %i.bt = fdiv float %i.bs, 2.550000e+02
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bp
  store float %i.bt, ptr %i.bu, align 4
  %indvars.iv.next60.i.1 = add nuw nsw i64 %indvars.iv59.i, 2 ; 2 uses
  %niter26.next.1 = add i64 %niter26, 2           ; 2 uses
  %niter26.ncmp.1 = icmp eq i64 %niter26.next.1, %unroll_iter25
  br i1 %niter26.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !35

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod23.not = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next60.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod24 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.bv = mul nuw nsw i64 %indvars.iv59.i.epil.init, %7
  %i.bw = add nsw i64 %i.bv, %i.bf                ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.a, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = uitofp i8 %i.by to float
  %i.ca = fdiv float %i.bz, 2.550000e+02
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bw
  store float %i.ca, ptr %i.cb, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %._crit_edge51.split.i, %bb.g
  tail call void @free(ptr noundef nonnull %i.a) #52
  br label %stbi__ldr_to_hdr.exit

bb.h:                                             ; preds = %bb.a
  store ptr @.str.83, ptr @stbi__g_failure_reason, align 8
  br label %stbi__ldr_to_hdr.exit

stbi__ldr_to_hdr.exit:                            ; preds = %.loopexit.i, %stbi__malloc_mad4.exit.thread.i, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ null, %stbi__malloc_mad4.exit.thread.i ], [ %i.p, %.loopexit.i ]
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
  %i.k = call i32 %i.j(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, i32 noundef 128) #52, !inline_history !36 ; 2 uses
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
end_hunk_0
begin_hunk_1_@stbi__load_main:bb.a
  %i.aag = load <2 x ptr>, ptr %i.k, align 8
  store <2 x ptr> %i.aag, ptr %i.d, align 8
  br i1 %.not, label %bb.bv, label %bb.ha

bb.bv:                                            ; preds = %stbi__bmp_test.exit.thread50, %stbi__bmp_test.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #52
  %i.aah = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 2 uses
  store i32 255, ptr %i.aah, align 4
  %i.aai = call fastcc ptr @stbi__bmp_parse_header(ptr noundef nonnull %0, ptr noundef %7)
  %i.aaj = icmp eq ptr %i.aai, null
  br i1 %i.aaj, label %stbi__bmp_load.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 10 uses
  %i.aal = load i32, ptr %i.aak, align 4          ; 2 uses
  %i.aam = icmp sgt i32 %i.aal, 0
  %i.aan = tail call i32 @llvm.abs.i32(i32 %i.aal, i1 true) ; 2 uses
  store i32 %i.aan, ptr %i.aak, align 4
  %i.aao = icmp samesign ugt i32 %i.aan, 16777216
  br i1 %i.aao, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.by:                                            ; preds = %bb.bw
  %i.aap = load i32, ptr %0, align 8
  %i.aaq = icmp ugt i32 %i.aap, 16777216
  br i1 %i.aaq, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.ca:                                            ; preds = %bb.by
  %i.aar = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.aas = load i32, ptr %i.aar, align 4          ; 5 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aau = load i32, ptr %i.aat, align 4          ; 5 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.aaw = load i32, ptr %i.aav, align 4          ; 5 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aay = load i32, ptr %i.aax, align 4          ; 7 uses
  %i.aaz = load i32, ptr %i.aah, align 4          ; 6 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.abb = load i32, ptr %i.aba, align 4          ; 4 uses
  %i.abc = icmp eq i32 %i.abb, 12                 ; 3 uses
  %i.abd = load i32, ptr %7, align 4              ; 4 uses
  br i1 %i.abc, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.abe = icmp slt i32 %i.abd, 24
  br i1 %i.abe, label %bb.cc, label %.thread.i

bb.cc:                                            ; preds = %bb.cb
  %i.abf = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.abg = load i32, ptr %i.abf, align 4          ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.abi = load i32, ptr %i.abh, align 4
  %i.abj = add i32 %i.abg, -24
  %i.abk = sub i32 %i.abj, %i.abi
  %i.abl = sdiv i32 %i.abk, 3
  br label %bb.cf

bb.cd:                                            ; preds = %bb.ca
  %i.abm = icmp slt i32 %i.abd, 16
  br i1 %i.abm, label %bb.ce, label %.thread.i

bb.ce:                                            ; preds = %bb.cd
  %i.abn = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.abo = load i32, ptr %i.abn, align 4          ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.abq = load i32, ptr %i.abp, align 4
  %i.abr = add i32 %i.abb, %i.abq
  %i.abs = sub i32 %i.abo, %i.abr
  %i.abt = ashr i32 %i.abs, 2
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cc
  %i.abu = phi i32 [ %i.abg, %bb.cc ], [ %i.abo, %bb.ce ]
  %.0332.i = phi i32 [ %i.abl, %bb.cc ], [ %i.abt, %bb.ce ] ; 2 uses
  %i.abv = icmp eq i32 %.0332.i, 0
  br i1 %i.abv, label %.thread.i, label %.thread238.i

.thread238.i:                                     ; preds = %bb.cf
  %i.abw = icmp eq i32 %i.aay, -16777216
  br label %bb.cl

.thread.i:                                        ; preds = %bb.cf, %bb.cd, %bb.cb
  %i.abx = load i32, ptr %i.l, align 8
  %i.aby = load ptr, ptr %i.d, align 8
  %i.abz = load ptr, ptr %i.k, align 8
  %i.aca = ptrtoint ptr %i.aby to i64
  %i.acb = ptrtoint ptr %i.abz to i64
  %i.acc = sub i64 %i.aca, %i.acb
  %i.acd = trunc i64 %i.acc to i32
  %i.ace = add nsw i32 %i.abx, %i.acd             ; 3 uses
  %i.acf = add i32 %i.ace, -1025
  %or.cond378.i = icmp ult i32 %i.acf, -1024
  br i1 %or.cond378.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.thread.i
  store ptr @.str.110, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.ch:                                            ; preds = %.thread.i
  %i.acg = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ach = load i32, ptr %i.acg, align 4          ; 4 uses
  %i.aci = icmp slt i32 %i.ach, %i.ace
  br i1 %i.aci, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.acj = sub nsw i32 %i.ach, %i.ace             ; 2 uses
  %i.ack = icmp sgt i32 %i.acj, 1024
  br i1 %i.ack, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  store ptr @.str.111, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.ck:                                            ; preds = %bb.ci
  tail call fastcc void @stbi__skip(ptr noundef nonnull %0, i32 noundef %i.acj)
  %i.acl = icmp eq i32 %i.abd, 24
  %i.acm = icmp eq i32 %i.aay, -16777216          ; 2 uses
  %or.cond.i = select i1 %i.acl, i1 %i.acm, i1 false
  br i1 %or.cond.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.thread238.i
  %i.acn = phi i1 [ %i.abw, %.thread238.i ], [ %i.acm, %bb.ck ]
  %.03322242.i = phi i32 [ %.0332.i, %.thread238.i ], [ 0, %bb.ck ]
  %i.aco = phi i1 [ false, %.thread238.i ], [ true, %bb.ck ]
  %i.acp = phi i32 [ %i.abu, %.thread238.i ], [ %i.ach, %bb.ck ]
  %.not.i = icmp eq i32 %i.aay, 0
  %i.acq = select i1 %.not.i, i32 3, i32 4
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.acr = phi i1 [ %i.acn, %bb.cl ], [ true, %bb.ck ]
  %.03322241.i = phi i32 [ %.03322242.i, %bb.cl ], [ 0, %bb.ck ] ; 4 uses
  %i.acs = phi i1 [ %i.aco, %bb.cl ], [ true, %bb.ck ]
  %i.act = phi i32 [ %i.abd, %bb.cl ], [ 24, %bb.ck ] ; 6 uses
  %i.acu = phi i32 [ %i.acp, %bb.cl ], [ %i.ach, %bb.ck ] ; 3 uses
  %i.acv = phi i32 [ %i.acq, %bb.cl ], [ 3, %bb.ck ] ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.acv, ptr %i.acw, align 8
  %.not367.i = icmp eq i32 %4, 0
  %i.acx = icmp sgt i32 %4, 2
  %spec.select.i = select i1 %i.acx, i32 %4, i32 %i.acv ; 11 uses
  %i.acy = load i32, ptr %0, align 8              ; 5 uses
  %i.acz = load i32, ptr %i.aak, align 4          ; 5 uses
  %or.cond.not.i.i.i = icmp sgt i32 %i.acy, -1
  br i1 %or.cond.not.i.i.i, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.ada = icmp eq i32 %i.acy, 0                  ; 2 uses
  br i1 %i.ada, label %stbi__mul2sizes_valid.exit.thread15.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.cn
  %i.adb = udiv i32 2147483647, %i.acy
  %.not23.i.i = icmp samesign ugt i32 %spec.select.i, %i.adb
  br i1 %.not23.i.i, label %bb.cp, label %stbi__mul2sizes_valid.exit.thread15.i.i

stbi__mul2sizes_valid.exit.thread15.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.cn
  %i.adc = mul nuw nsw i32 %i.acy, %spec.select.i ; 4 uses
  %i.add = or i32 %i.acz, %i.adc
  %or.cond.not.i10.i.i = icmp sgt i32 %i.add, -1
  br i1 %or.cond.not.i10.i.i, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.ade = icmp eq i32 %i.acz, 0                  ; 2 uses
  br i1 %i.ade, label %stbi__mad3sizes_valid.exit.i, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.co
  %i.adf = udiv i32 2147483647, %i.acz
  %.not.i.i37 = icmp samesign ugt i32 %i.adc, %i.adf
  br i1 %.not.i.i37, label %bb.cp, label %stbi__mad3sizes_valid.exit.i

bb.cp:                                            ; preds = %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i, %stbi__mul2sizes_valid.exit.i.i, %bb.cm
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

stbi__mad3sizes_valid.exit.i:                     ; preds = %stbi__mul2sizes_valid.exit12.i.i, %bb.co
  br i1 %i.ada, label %stbi__mul2sizes_valid.exit.thread15.i.i.i, label %stbi__mul2sizes_valid.exit.i.i.i

stbi__mul2sizes_valid.exit.i.i.i:                 ; preds = %stbi__mad3sizes_valid.exit.i
  %i.adg = udiv i32 2147483647, %i.acy
  %.not23.i.i.i = icmp samesign ugt i32 %spec.select.i, %i.adg
  br i1 %.not23.i.i.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__mul2sizes_valid.exit.thread15.i.i.i

stbi__mul2sizes_valid.exit.thread15.i.i.i:        ; preds = %stbi__mul2sizes_valid.exit.i.i.i, %stbi__mad3sizes_valid.exit.i
  br i1 %i.ade, label %stbi__malloc_mad3.exit.i, label %stbi__mul2sizes_valid.exit12.i.i.i

stbi__mul2sizes_valid.exit12.i.i.i:               ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i.i
  %i.adh = udiv i32 2147483647, %i.acz
  %.not.i.i.i38 = icmp samesign ugt i32 %i.adc, %i.adh
  br i1 %.not.i.i.i38, label %stbi__malloc_mad3.exit.thread.i, label %stbi__malloc_mad3.exit.i

stbi__malloc_mad3.exit.i:                         ; preds = %stbi__mul2sizes_valid.exit12.i.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i.i
  %i.adi = mul nuw nsw i32 %i.adc, %i.acz
  %9 = sext i32 %i.adi to i64
  %i.adj = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %9) #53 ; 30 uses
  %.not369.i = icmp eq ptr %i.adj, null
  br i1 %.not369.i, label %stbi__malloc_mad3.exit.thread.i, label %bb.cq

stbi__malloc_mad3.exit.thread.i:                  ; preds = %stbi__malloc_mad3.exit.i, %stbi__mul2sizes_valid.exit12.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.cq:                                            ; preds = %stbi__malloc_mad3.exit.i
  %i.adk = icmp slt i32 %i.act, 16
  br i1 %i.adk, label %bb.cr, label %bb.ff

bb.cr:                                            ; preds = %bb.cq
  %i.adl = icmp sgt i32 %.03322241.i, 256
  %or.cond7.i = or i1 %i.acs, %i.adl
  br i1 %or.cond7.i, label %bb.cs, label %.preheader44.i

.preheader44.i:                                   ; preds = %bb.cr
  %i.adm = icmp sgt i32 %.03322241.i, 0
  br i1 %i.adm, label %.lr.ph66.i, label %._crit_edge.i40

.lr.ph66.i:                                       ; preds = %.preheader44.i
  %wide.trip.count.i = zext nneg i32 %.03322241.i to i64
  %.pre115.i = load ptr, ptr %i.d, align 8        ; 2 uses
  %.pre116.i = load ptr, ptr %i.e, align 8        ; 2 uses
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  tail call void @free(ptr noundef nonnull %i.adj) #52
  store ptr @.str.112, ptr @stbi__g_failure_reason, align 8
  br label %stbi__bmp_load.exit

bb.ct:                                            ; preds = %stbi__get8.exit402.i, %.lr.ph66.i
  %i.adn = phi ptr [ %.pre116.i, %.lr.ph66.i ], [ %i.ahg, %stbi__get8.exit402.i ] ; 2 uses
  %i.ado = phi ptr [ %.pre115.i, %.lr.ph66.i ], [ %i.ahh, %stbi__get8.exit402.i ]
  %i.adp = phi ptr [ %.pre116.i, %.lr.ph66.i ], [ %i.ahi, %stbi__get8.exit402.i ] ; 3 uses
  %i.adq = phi ptr [ %.pre115.i, %.lr.ph66.i ], [ %i.ahj, %stbi__get8.exit402.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph66.i ], [ %indvars.iv.next.i, %stbi__get8.exit402.i ] ; 2 uses
  %i.adr = icmp ult ptr %i.adq, %i.adp
  br i1 %i.adr, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adq, i64 1 ; 3 uses
  store ptr %i.ads, ptr %i.d, align 8
  %i.adt = load i8, ptr %i.adq, align 1
  br label %stbi__get8.exit.i

bb.cv:                                            ; preds = %bb.ct
  %i.adu = load i32, ptr %i.f, align 8
  %.not.i383.i = icmp eq i32 %i.adu, 0
  br i1 %.not.i383.i, label %stbi__get8.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.adv = load ptr, ptr %i.g, align 8
  %i.adw = load ptr, ptr %i.h, align 8
  %i.adx = load i32, ptr %i.j, align 4
  %i.ady = tail call i32 %i.adv(ptr noundef %i.adw, ptr noundef nonnull %i.i, i32 noundef %i.adx) #52, !inline_history !155 ; 2 uses
  %i.adz = load ptr, ptr %i.d, align 8
  %i.aea = load ptr, ptr %i.k, align 8
  %i.aeb = ptrtoint ptr %i.adz to i64
  %i.aec = ptrtoint ptr %i.aea to i64
  %i.aed = sub i64 %i.aeb, %i.aec
  %i.aee = trunc i64 %i.aed to i32
  %i.aef = load i32, ptr %i.l, align 8
  %i.aeg = add nsw i32 %i.aef, %i.aee
  store i32 %i.aeg, ptr %i.l, align 8
  %i.aeh = icmp eq i32 %i.ady, 0
  br i1 %i.aeh, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %i.f, align 8
  store i8 0, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i.i

bb.cy:                                            ; preds = %bb.cw
  %i.aei = sext i32 %i.ady to i64
  %i.aej = getelementptr inbounds i8, ptr %i.i, i64 %i.aei
  %.pre.i.i41 = load i8, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i.i

stbi__refill_buffer.exit.i.i:                     ; preds = %bb.cy, %bb.cx
  %i.aek = phi i8 [ 0, %bb.cx ], [ %.pre.i.i41, %bb.cy ]
  %.sink.i.i.i = phi ptr [ %i.m, %bb.cx ], [ %i.aej, %bb.cy ] ; 3 uses
  store ptr %.sink.i.i.i, ptr %i.e, align 8
  store ptr %i.m, ptr %i.d, align 8
  br label %stbi__get8.exit.i

stbi__get8.exit.i:                                ; preds = %stbi__refill_buffer.exit.i.i, %bb.cv, %bb.cu
  %i.ael = phi ptr [ %i.adn, %bb.cu ], [ %.sink.i.i.i, %stbi__refill_buffer.exit.i.i ], [ %i.adn, %bb.cv ] ; 2 uses
  %i.aem = phi ptr [ %i.ads, %bb.cu ], [ %i.m, %stbi__refill_buffer.exit.i.i ], [ %i.ado, %bb.cv ]
  %i.aen = phi ptr [ %i.adp, %bb.cu ], [ %.sink.i.i.i, %stbi__refill_buffer.exit.i.i ], [ %i.adp, %bb.cv ] ; 3 uses
  %i.aeo = phi ptr [ %i.ads, %bb.cu ], [ %i.m, %stbi__refill_buffer.exit.i.i ], [ %i.adq, %bb.cv ] ; 4 uses
  %.0.i384.i = phi i8 [ %i.adt, %bb.cu ], [ %i.aek, %stbi__refill_buffer.exit.i.i ], [ 0, %bb.cv ]
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 4 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 2
  store i8 %.0.i384.i, ptr %i.aeq, align 2
  %i.aer = icmp ult ptr %i.aeo, %i.aen
  br i1 %i.aer, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %stbi__get8.exit.i
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeo, i64 1 ; 3 uses
  store ptr %i.aes, ptr %i.d, align 8
  %i.aet = load i8, ptr %i.aeo, align 1
  br label %stbi__get8.exit390.i

bb.da:                                            ; preds = %stbi__get8.exit.i
  %i.aeu = load i32, ptr %i.f, align 8
  %.not.i385.i = icmp eq i32 %i.aeu, 0
  br i1 %.not.i385.i, label %stbi__get8.exit390.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.aev = load ptr, ptr %i.g, align 8
  %i.aew = load ptr, ptr %i.h, align 8
  %i.aex = load i32, ptr %i.j, align 4
  %i.aey = tail call i32 %i.aev(ptr noundef %i.aew, ptr noundef nonnull %i.i, i32 noundef %i.aex) #52, !inline_history !155 ; 2 uses
  %i.aez = load ptr, ptr %i.d, align 8
  %i.afa = load ptr, ptr %i.k, align 8
  %i.afb = ptrtoint ptr %i.aez to i64
  %i.afc = ptrtoint ptr %i.afa to i64
  %i.afd = sub i64 %i.afb, %i.afc
  %i.afe = trunc i64 %i.afd to i32
  %i.aff = load i32, ptr %i.l, align 8
  %i.afg = add nsw i32 %i.aff, %i.afe
  store i32 %i.afg, ptr %i.l, align 8
  %i.afh = icmp eq i32 %i.aey, 0
  br i1 %i.afh, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %i.f, align 8
  store i8 0, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i387.i

bb.dd:                                            ; preds = %bb.db
  %i.afi = sext i32 %i.aey to i64
  %i.afj = getelementptr inbounds i8, ptr %i.i, i64 %i.afi
  %.pre.i386.i = load i8, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i387.i

stbi__refill_buffer.exit.i387.i:                  ; preds = %bb.dd, %bb.dc
  %i.afk = phi i8 [ 0, %bb.dc ], [ %.pre.i386.i, %bb.dd ]
  %.sink.i.i388.i = phi ptr [ %i.m, %bb.dc ], [ %i.afj, %bb.dd ] ; 3 uses
  store ptr %.sink.i.i388.i, ptr %i.e, align 8
  store ptr %i.m, ptr %i.d, align 8
  br label %stbi__get8.exit390.i

stbi__get8.exit390.i:                             ; preds = %stbi__refill_buffer.exit.i387.i, %bb.da, %bb.cz
  %i.afl = phi ptr [ %i.ael, %bb.cz ], [ %.sink.i.i388.i, %stbi__refill_buffer.exit.i387.i ], [ %i.ael, %bb.da ] ; 2 uses
  %i.afm = phi ptr [ %i.aes, %bb.cz ], [ %i.m, %stbi__refill_buffer.exit.i387.i ], [ %i.aem, %bb.da ]
  %i.afn = phi ptr [ %i.aen, %bb.cz ], [ %.sink.i.i388.i, %stbi__refill_buffer.exit.i387.i ], [ %i.aen, %bb.da ] ; 3 uses
  %i.afo = phi ptr [ %i.aes, %bb.cz ], [ %i.m, %stbi__refill_buffer.exit.i387.i ], [ %i.aeo, %bb.da ] ; 4 uses
  %.0.i389.i = phi i8 [ %i.aet, %bb.cz ], [ %i.afk, %stbi__refill_buffer.exit.i387.i ], [ 0, %bb.da ]
  %i.afp = getelementptr inbounds nuw i8, ptr %i.aep, i64 1
  store i8 %.0.i389.i, ptr %i.afp, align 1
  %i.afq = icmp ult ptr %i.afo, %i.afn
  br i1 %i.afq, label %bb.de, label %bb.df

bb.de:                                            ; preds = %stbi__get8.exit390.i
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afo, i64 1 ; 3 uses
  store ptr %i.afr, ptr %i.d, align 8
  %i.afs = load i8, ptr %i.afo, align 1
  br label %stbi__get8.exit396.i

bb.df:                                            ; preds = %stbi__get8.exit390.i
  %i.aft = load i32, ptr %i.f, align 8
  %.not.i391.i = icmp eq i32 %i.aft, 0
  br i1 %.not.i391.i, label %stbi__get8.exit396.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.afu = load ptr, ptr %i.g, align 8
  %i.afv = load ptr, ptr %i.h, align 8
  %i.afw = load i32, ptr %i.j, align 4
  %i.afx = tail call i32 %i.afu(ptr noundef %i.afv, ptr noundef nonnull %i.i, i32 noundef %i.afw) #52, !inline_history !155 ; 2 uses
  %i.afy = load ptr, ptr %i.d, align 8
  %i.afz = load ptr, ptr %i.k, align 8
  %i.aga = ptrtoint ptr %i.afy to i64
  %i.agb = ptrtoint ptr %i.afz to i64
  %i.agc = sub i64 %i.aga, %i.agb
  %i.agd = trunc i64 %i.agc to i32
  %i.age = load i32, ptr %i.l, align 8
  %i.agf = add nsw i32 %i.age, %i.agd
  store i32 %i.agf, ptr %i.l, align 8
  %i.agg = icmp eq i32 %i.afx, 0
  br i1 %i.agg, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  store i32 0, ptr %i.f, align 8
  store i8 0, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i393.i

bb.di:                                            ; preds = %bb.dg
  %i.agh = sext i32 %i.afx to i64
  %i.agi = getelementptr inbounds i8, ptr %i.i, i64 %i.agh
  %.pre.i392.i = load i8, ptr %i.i, align 8
  br label %stbi__refill_buffer.exit.i393.i

stbi__refill_buffer.exit.i393.i:                  ; preds = %bb.di, %bb.dh
  %i.agj = phi i8 [ 0, %bb.dh ], [ %.pre.i392.i, %bb.di ]
  %.sink.i.i394.i = phi ptr [ %i.m, %bb.dh ], [ %i.agi, %bb.di ] ; 3 uses
  store ptr %.sink.i.i394.i, ptr %i.e, align 8
  store ptr %i.m, ptr %i.d, align 8
end_hunk_1
begin_hunk_2_@stbi__parse_png_file:bb.a
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
  %i.ri = tail call i32 %i.re(ptr noundef %i.rf, ptr noundef %i.rg, i32 noundef %i.rh) #52, !inline_history !169
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
  %i.sx = icmp ne i8 %.0236, 0                    ; 3 uses
  %or.cond10 = select i1 %or.cond7.not265, i1 true, i1 %i.sx
  %spec.select1504 = select i1 %or.cond10, i32 %i.st, i32 %i.ss ; 4 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 4 uses
  store i32 %spec.select1504, ptr %i.sy, align 4
  %i.sz = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ta = load i32, ptr %i.gm, align 8            ; 4 uses
  %i.tb = icmp eq i32 %i.ta, 16
  %i.tc = zext i1 %i.tb to i32
  %i.td = shl i32 %spec.select1504, %i.tc         ; 6 uses
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
  %i.tl = mul nuw nsw i32 %i.th, %i.tf            ; 3 uses
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
  %i.tp = mul nuw nsw i32 %i.tl, %i.td
  %4 = sext i32 %i.tp to i64
  %i.tq = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %4) #53 ; 4 uses
  %.not92.i = icmp eq ptr %i.tq, null
  br i1 %.not92.i, label %stbi__malloc_mad3.exit.thread.i, label %.preheader100.i

.preheader100.i:                                  ; preds = %stbi__malloc_mad3.exit.i
  %5 = sext i32 %i.td to i64                      ; 9 uses
  br label %bb.fl

stbi__malloc_mad3.exit.thread.i:                  ; preds = %stbi__malloc_mad3.exit.i, %stbi__mul2sizes_valid.exit12.i.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i, %bb.fi
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.fl:                                            ; preds = %bb.fn, %.preheader100.i
  %indvars.iv112.i = phi i64 [ 0, %.preheader100.i ], [ %indvars.iv.next113.i, %bb.fn ] ; 5 uses
  %.076106.i = phi ptr [ %i.sz, %.preheader100.i ], [ %.379.i, %bb.fn ] ; 3 uses
  %.085104.i = phi i32 [ %i.sp, %.preheader100.i ], [ %.388.i, %bb.fn ] ; 3 uses
  %i.tr = load ptr, ptr %0, align 8               ; 3 uses
  %i.ts = load i32, ptr %i.tr, align 8
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xorig, i64 %indvars.iv112.i
  %i.tu = load i32, ptr %i.tt, align 4            ; 2 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xspc, i64 %indvars.iv112.i
  %i.tw = load i32, ptr %i.tv, align 4            ; 4 uses
  %i.tx = xor i32 %i.tu, -1
  %i.ty = add i32 %i.ts, %i.tx
  %i.tz = add i32 %i.ty, %i.tw                    ; 2 uses
  %i.ua = udiv i32 %i.tz, %i.tw                   ; 6 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  %i.uc = load i32, ptr %i.ub, align 4
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yorig, i64 %indvars.iv112.i
  %i.ue = load i32, ptr %i.ud, align 4            ; 2 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yspc, i64 %indvars.iv112.i
  %i.ug = load i32, ptr %i.uf, align 4            ; 4 uses
  %i.uh = xor i32 %i.ue, -1
  %i.ui = add i32 %i.uc, %i.uh
  %i.uj = add i32 %i.ui, %i.ug                    ; 2 uses
  %i.uk = udiv i32 %i.uj, %i.ug                   ; 4 uses
  %i.ul = icmp ule i32 %i.tw, %i.tz
  %i.um = icmp ule i32 %i.ug, %i.uj
  %or.cond.i = select i1 %i.ul, i1 %i.um, i1 false
  br i1 %or.cond.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.un = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.uo = load i32, ptr %i.un, align 8
  %i.up = mul i32 %i.ua, %i.ta
  %i.uq = mul i32 %i.up, %i.uo
  %i.ur = add nsw i32 %i.uq, 7
  %i.us = ashr i32 %i.ur, 3
  %i.ut = add nsw i32 %i.us, 1
  %i.uu = mul nsw i32 %i.ut, %i.uk                ; 2 uses
  %i.uv = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef %.076106.i, i32 noundef %.085104.i, i32 noundef %spec.select1504, i32 noundef %i.ua, i32 noundef %i.uk, i32 noundef %i.ta, i32 noundef range(i32 0, 256) %.0210)
  %.not93.not.i = icmp eq i32 %i.uv, 0
  br i1 %.not93.not.i, label %.thread.i354, label %.preheader99.i

.preheader99.i:                                   ; preds = %bb.fm
  %i.uw = icmp sgt i32 %i.uk, 0
  %i.ux = icmp sgt i32 %i.ua, 0
  %or.cond107.i = and i1 %i.ux, %i.uw
  %.pre115.i = load ptr, ptr %i.g, align 8        ; 4 uses
  br i1 %or.cond107.i, label %.preheader.lr.ph.split.i, label %._crit_edge103.split.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader99.i
  %i.uy = load ptr, ptr %0, align 8
  %i.uz = sext i32 %i.tw to i64                   ; 3 uses
  %i.va = sext i32 %i.tu to i64                   ; 3 uses
  %i.vb = zext nneg i32 %i.ua to i64              ; 3 uses
  %i.vc = zext nneg i32 %i.uk to i64
  %.pre.pre.i = load i32, ptr %i.uy, align 8
  %factor.op.mul.i = mul i32 %.pre.pre.i, %i.td
  %xtraiter = and i64 %i.vb, 1
  %i.vd = icmp eq i32 %i.ua, 1
  %unroll_iter = and i64 %i.vb, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2145 = trunc i32 %i.ua to i1
  br label %.preheader.i

.thread.i354:                                     ; preds = %bb.fm
  call void @free(ptr noundef %i.tq) #52
  br label %.thread400

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %indvars.iv109.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next110.i, %._crit_edge.i ] ; 3 uses
  %i.ve = trunc i64 %indvars.iv109.i to i32
  %i.vf = mul i32 %i.ug, %i.ve
  %i.vg = add i32 %i.vf, %i.ue
  %.reass.i = mul i32 %factor.op.mul.i, %i.vg
  %i.vh = mul nuw nsw i64 %indvars.iv109.i, %i.vb ; 3 uses
  %i.vi = zext i32 %.reass.i to i64
  %i.vj = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.vi ; 3 uses
  br i1 %i.vd, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i352 = phi i64 [ %indvars.iv.next.i353.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.vk = mul nsw i64 %indvars.iv.i352, %i.uz
  %i.vl = add nsw i64 %i.vk, %i.va
  %i.vm = mul nsw i64 %i.vl, %5
  %i.vn = getelementptr inbounds i8, ptr %i.vj, i64 %i.vm
  %i.vo = add nuw nsw i64 %indvars.iv.i352, %i.vh
  %i.vp = mul nuw nsw i64 %i.vo, %5
  %i.vq = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.vp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vn, ptr align 1 %i.vq, i64 %5, i1 false)
  %indvars.iv.next.i353 = or disjoint i64 %indvars.iv.i352, 1 ; 2 uses
  %i.vr = mul nsw i64 %indvars.iv.next.i353, %i.uz
  %i.vs = add nsw i64 %i.vr, %i.va
  %i.vt = mul nsw i64 %i.vs, %5
  %i.vu = getelementptr inbounds i8, ptr %i.vj, i64 %i.vt
  %i.vv = add nuw nsw i64 %indvars.iv.next.i353, %i.vh
  %i.vw = mul nuw nsw i64 %i.vv, %5
  %i.vx = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.vw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vu, ptr align 1 %i.vx, i64 %5, i1 false)
  %indvars.iv.next.i353.1 = add nuw nsw i64 %indvars.iv.i352, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i352.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i353.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2145)
  %i.vy = mul nsw i64 %indvars.iv.i352.epil.init, %i.uz
  %i.vz = add nsw i64 %i.vy, %i.va
  %i.wa = mul nsw i64 %i.vz, %5
  %i.wb = getelementptr inbounds i8, ptr %i.vj, i64 %i.wa
  %i.wc = add nuw nsw i64 %indvars.iv.i352.epil.init, %i.vh
  %i.wd = mul nuw nsw i64 %i.wc, %5
  %i.we = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.wd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wb, ptr align 1 %i.we, i64 %5, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %i.wf = icmp samesign ult i64 %indvars.iv.next110.i, %i.vc
  br i1 %i.wf, label %.preheader.i, label %._crit_edge103.split.i

._crit_edge103.split.i:                           ; preds = %._crit_edge.i, %.preheader99.i
  call void @free(ptr noundef %.pre115.i) #52
  %i.wg = zext i32 %i.uu to i64
  %i.wh = getelementptr inbounds nuw i8, ptr %.076106.i, i64 %i.wg
  %i.wi = sub i32 %.085104.i, %i.uu
  br label %bb.fn

bb.fn:                                            ; preds = %._crit_edge103.split.i, %bb.fl
  %.388.i = phi i32 [ %.085104.i, %bb.fl ], [ %i.wi, %._crit_edge103.split.i ]
  %.379.i = phi ptr [ %.076106.i, %bb.fl ], [ %i.wh, %._crit_edge103.split.i ]
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond.not.i351 = icmp eq i64 %indvars.iv.next113.i, 7
  br i1 %exitcond.not.i351, label %stbi__create_png_image.exit.thread394, label %bb.fl

stbi__create_png_image.exit.thread394:            ; preds = %bb.fn
  store ptr %i.tq, ptr %i.g, align 8
  br label %bb.fo

stbi__create_png_image.exit:                      ; preds = %bb.fh
  %i.wj = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef readonly %i.sz, i32 noundef %i.sp, i32 noundef %spec.select1504, i32 noundef %i.tf, i32 noundef %i.th, i32 noundef %i.ta, i32 noundef range(i32 0, 256) %.0210)
  %.not269 = icmp eq i32 %i.wj, 0
  br i1 %.not269, label %.thread400, label %bb.fo

bb.fo:                                            ; preds = %stbi__create_png_image.exit.thread394, %stbi__create_png_image.exit
  br i1 %i.sx, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  %i.wk = load i32, ptr %i.gm, align 8
  %i.wl = icmp eq i32 %i.wk, 16
  %i.wm = load i32, ptr %i.sy, align 4            ; 2 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %.val300 = load ptr, ptr %i.g, align 8          ; 2 uses
  %.val.val = load i32, ptr %.val, align 8        ; 2 uses
  %i.wn = getelementptr i8, ptr %.val, i64 4
  %.val.val301 = load i32, ptr %i.wn, align 4     ; 2 uses
  br i1 %i.wl, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call fastcc void @stbi__compute_transparency16(i32 %.val.val, i32 %.val.val301, ptr %.val300, ptr noundef %i.c, i32 noundef %i.wm)
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  call fastcc void @stbi__compute_transparency(i32 %.val.val, i32 %.val.val301, ptr %.val300, ptr noundef %i.b, i32 noundef %i.wm)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fo
  %i.wo = load i32, ptr @stbi__de_iphone_flag_global, align 4
  %i.wp = icmp ne i32 %i.wo, 0
  %or.cond12 = select i1 %i.rw, i1 %i.wp, i1 false
  br i1 %or.cond12, label %bb.ft, label %bb.fv

bb.ft:                                            ; preds = %bb.fs
  %i.wq = load i32, ptr %i.sy, align 4
  %i.wr = icmp sgt i32 %i.wq, 2
  br i1 %i.wr, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %.val305 = load ptr, ptr %0, align 8
  %.val306 = load ptr, ptr %i.g, align 8
  call fastcc void @stbi__de_iphone(ptr %.val305, ptr %.val306)
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft, %bb.fs
  br i1 %i.sw, label %bb.fy, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ws = zext nneg i8 %.0239 to i32              ; 2 uses
  store i32 %i.ws, ptr %i.gl, align 8
  %i.wt = icmp samesign ugt i32 %2, 2
  %spec.select = select i1 %i.wt, i32 %2, i32 %i.ws ; 4 uses
  store i32 %spec.select, ptr %i.sy, align 4
  %i.wu = load ptr, ptr %0, align 8               ; 2 uses
  %i.wv = load i32, ptr %i.wu, align 8
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wu, i64 4
  %i.wx = load i32, ptr %i.ww, align 4
  %i.wy = mul i32 %i.wx, %i.wv                    ; 9 uses
  %i.wz = load ptr, ptr %i.g, align 8             ; 9 uses
  %or.cond.not.i.i.i.i355 = icmp sgt i32 %i.wy, -1
  br i1 %or.cond.not.i.i.i.i355, label %stbi__mul2sizes_valid.exit.i.i.i357, label %stbi__expand_png_palette.exit.thread

stbi__mul2sizes_valid.exit.i.i.i357:              ; preds = %bb.fw
  %i.xa = udiv i32 2147483647, %spec.select
  %.not10.i.i.i = icmp samesign ugt i32 %i.wy, %i.xa
  br i1 %.not10.i.i.i, label %stbi__expand_png_palette.exit.thread, label %stbi__malloc_mad2.exit.i

stbi__malloc_mad2.exit.i:                         ; preds = %stbi__mul2sizes_valid.exit.i.i.i357
  %i.xb = mul nuw nsw i32 %i.wy, %spec.select
  %i.xc = zext nneg i32 %i.xb to i64
  %i.xd = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.xc) #53 ; 6 uses
  %i.xe = icmp eq ptr %i.xd, null
  br i1 %i.xe, label %stbi__expand_png_palette.exit.thread, label %bb.fx

stbi__expand_png_palette.exit.thread:             ; preds = %bb.fw, %stbi__mul2sizes_valid.exit.i.i.i357, %stbi__malloc_mad2.exit.i
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.fx:                                            ; preds = %stbi__malloc_mad2.exit.i
  %i.xf = icmp eq i32 %spec.select, 3
  %.not56.i = icmp eq i32 %i.wy, 0                ; 2 uses
  br i1 %i.xf, label %.preheader.i361, label %.preheader49.i

.preheader49.i:                                   ; preds = %bb.fx
  br i1 %.not56.i, label %stbi__expand_png_palette.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader49.i
  %wide.trip.count.i = zext nneg i32 %i.wy to i64 ; 2 uses
  %xtraiter2146 = and i64 %wide.trip.count.i, 3   ; 3 uses
  %i.xg = icmp ult i32 %i.wy, 4
  br i1 %i.xg, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter2149 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.preheader.i361:                                  ; preds = %bb.fx
  br i1 %.not56.i, label %stbi__expand_png_palette.exit, label %.lr.ph55.preheader.i

.lr.ph55.preheader.i:                             ; preds = %.preheader.i361
  %wide.trip.count62.i = zext nneg i32 %i.wy to i64 ; 2 uses
  %xtraiter2151 = and i64 %wide.trip.count62.i, 1
  %i.xh = icmp eq i32 %i.wy, 1
  br i1 %i.xh, label %.lr.ph55.i.epil.preheader, label %.lr.ph55.preheader.i.new

.lr.ph55.preheader.i.new:                         ; preds = %.lr.ph55.preheader.i
  %unroll_iter2155 = and i64 %wide.trip.count62.i, 2147483646
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.lr.ph55.i, %.lr.ph55.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %indvars.iv.next60.i.1, %.lr.ph55.i ] ; 3 uses
  %.04553.i = phi ptr [ %i.xd, %.lr.ph55.preheader.i.new ], [ %i.yi, %.lr.ph55.i ] ; 7 uses
  %niter2156 = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %niter2156.next.1, %.lr.ph55.i ]
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wz, i64 %indvars.iv59.i
  %i.xj = load i8, ptr %i.xi, align 1
  %i.xk = zext i8 %i.xj to i64
  %i.xl = shl nuw nsw i64 %i.xk, 2
  %i.xm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xl ; 3 uses
  %i.xn = load i8, ptr %i.xm, align 4
  store i8 %i.xn, ptr %.04553.i, align 1
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 1
  %i.xp = load i8, ptr %i.xo, align 1
  %i.xq = getelementptr inbounds nuw i8, ptr %.04553.i, i64 1
  store i8 %i.xp, ptr %i.xq, align 1
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xm, i64 2
  %i.xs = load i8, ptr %i.xr, align 2
  %i.xt = getelementptr inbounds nuw i8, ptr %.04553.i, i64 2
  store i8 %i.xs, ptr %i.xt, align 1
  %i.xu = getelementptr inbounds nuw i8, ptr %.04553.i, i64 3
  %i.xv = getelementptr inbounds nuw i8, ptr %i.wz, i64 %indvars.iv59.i
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 1
  %i.xx = load i8, ptr %i.xw, align 1
  %i.xy = zext i8 %i.xx to i64
  %i.xz = shl nuw nsw i64 %i.xy, 2
  %i.ya = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xz ; 3 uses
  %i.yb = load i8, ptr %i.ya, align 4
  store i8 %i.yb, ptr %i.xu, align 1
  %i.yc = getelementptr inbounds nuw i8, ptr %i.ya, i64 1
  %i.yd = load i8, ptr %i.yc, align 1
  %i.ye = getelementptr inbounds nuw i8, ptr %.04553.i, i64 4
  store i8 %i.yd, ptr %i.ye, align 1
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ya, i64 2
  %i.yg = load i8, ptr %i.yf, align 2
  %i.yh = getelementptr inbounds nuw i8, ptr %.04553.i, i64 5
  store i8 %i.yg, ptr %i.yh, align 1
  %i.yi = getelementptr inbounds nuw i8, ptr %.04553.i, i64 6 ; 2 uses
  %indvars.iv.next60.i.1 = add nuw nsw i64 %indvars.iv59.i, 2 ; 2 uses
  %niter2156.next.1 = add i64 %niter2156, 2       ; 2 uses
  %niter2156.ncmp.1 = icmp eq i64 %niter2156.next.1, %unroll_iter2155
  br i1 %niter2156.ncmp.1, label %stbi__expand_png_palette.exit.loopexit.unr-lcssa, label %.lr.ph55.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i358 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i359.3, %.lr.ph.i ] ; 5 uses
  %.14651.i = phi ptr [ %i.xd, %.lr.ph.preheader.i.new ], [ %i.zn, %.lr.ph.i ] ; 5 uses
  %niter2150 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter2150.next.3, %.lr.ph.i ]
  %i.yj = getelementptr inbounds nuw i8, ptr %i.wz, i64 %indvars.iv.i358
  %i.yk = load i8, ptr %i.yj, align 1
  %i.yl = zext i8 %i.yk to i64
  %i.ym = shl nuw nsw i64 %i.yl, 2
  %i.yn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ym
  %i.yo = load <4 x i8>, ptr %i.yn, align 4
  store <4 x i8> %i.yo, ptr %.14651.i, align 1
  %i.yp = getelementptr inbounds nuw i8, ptr %.14651.i, i64 4
  %i.yq = getelementptr inbounds nuw i8, ptr %i.wz, i64 %indvars.iv.i358
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 1
  %i.ys = load i8, ptr %i.yr, align 1
  %i.yt = zext i8 %i.ys to i64
  %i.yu = shl nuw nsw i64 %i.yt, 2
  %i.yv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yu
  %i.yw = load <4 x i8>, ptr %i.yv, align 4
  store <4 x i8> %i.yw, ptr %i.yp, align 1
  %i.yx = getelementptr inbounds nuw i8, ptr %.14651.i, i64 8
  %i.yy = getelementptr inbounds nuw i8, ptr %i.wz, i64 %indvars.iv.i358
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 2
end_hunk_2
begin_hunk_3_@stbi__parse_png_file:bb.a
  %i.zo = getelementptr inbounds nuw i8, ptr %i.wz, i64 %indvars.iv59.i.epil.init
  %i.zp = load i8, ptr %i.zo, align 1
  %i.zq = zext i8 %i.zp to i64
  %i.zr = shl nuw nsw i64 %i.zq, 2
  %i.zs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zr ; 3 uses
  %i.zt = load i8, ptr %i.zs, align 4
  store i8 %i.zt, ptr %.04553.i.epil.init, align 1
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zs, i64 1
  %i.zv = load i8, ptr %i.zu, align 1
  %i.zw = getelementptr inbounds nuw i8, ptr %.04553.i.epil.init, i64 1
  store i8 %i.zv, ptr %i.zw, align 1
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zs, i64 2
  %i.zy = load i8, ptr %i.zx, align 2
  %i.zz = getelementptr inbounds nuw i8, ptr %.04553.i.epil.init, i64 2
  store i8 %i.zy, ptr %i.zz, align 1
  br label %stbi__expand_png_palette.exit

stbi__expand_png_palette.exit.loopexit1825.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod2147.not = icmp eq i64 %xtraiter2146, 0
  br i1 %lcmp.mod2147.not, label %stbi__expand_png_palette.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %stbi__expand_png_palette.exit.loopexit1825.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i358.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i359.3, %stbi__expand_png_palette.exit.loopexit1825.unr-lcssa ]
  %.14651.i.epil.init = phi ptr [ %i.xd, %.lr.ph.preheader.i ], [ %i.zn, %stbi__expand_png_palette.exit.loopexit1825.unr-lcssa ]
  %lcmp.mod2148 = icmp ne i64 %xtraiter2146, 0
  call void @llvm.assume(i1 %lcmp.mod2148)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i358.epil = phi i64 [ %indvars.iv.i358.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i359.epil, %.lr.ph.i.epil ] ; 2 uses
  %.14651.i.epil = phi ptr [ %.14651.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.aag, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.wz, i64 %indvars.iv.i358.epil
  %i.aab = load i8, ptr %i.aaa, align 1
  %i.aac = zext i8 %i.aab to i64
  %i.aad = shl nuw nsw i64 %i.aac, 2
  %i.aae = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aad
  %i.aaf = load <4 x i8>, ptr %i.aae, align 4
  store <4 x i8> %i.aaf, ptr %.14651.i.epil, align 1
  %i.aag = getelementptr inbounds nuw i8, ptr %.14651.i.epil, i64 4
  %indvars.iv.next.i359.epil = add nuw nsw i64 %indvars.iv.i358.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2146
  br i1 %epil.iter.cmp.not, label %stbi__expand_png_palette.exit, label %.lr.ph.i.epil, !llvm.loop !170

stbi__expand_png_palette.exit:                    ; preds = %stbi__expand_png_palette.exit.loopexit1825.unr-lcssa, %.lr.ph.i.epil, %.lr.ph55.i.epil.preheader, %stbi__expand_png_palette.exit.loopexit.unr-lcssa, %.preheader49.i, %.preheader.i361
  call void @free(ptr noundef %i.wz) #52
  store ptr %i.xd, ptr %i.g, align 8
  br label %bb.ga

bb.fy:                                            ; preds = %bb.fv
  br i1 %i.sx, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.aah = load i32, ptr %i.gl, align 8
  %i.aai = add nsw i32 %i.aah, 1
  store i32 %i.aai, ptr %i.gl, align 8
  br label %bb.ga

bb.ga:                                            ; preds = %stbi__expand_png_palette.exit, %bb.fy, %bb.fz
  %i.aaj = load ptr, ptr %i.e, align 8
  call void @free(ptr noundef %i.aaj) #52
  store ptr null, ptr %i.e, align 8
  %i.aak = call fastcc i32 @stbi__get16be(ptr noundef nonnull %i.d) ; 0 uses
  %i.aal = call fastcc i32 @stbi__get16be(ptr noundef nonnull %i.d) ; 0 uses
  br label %.thread400

bb.gb:                                            ; preds = %bb.aw
  %.not298 = icmp eq i32 %.0220, 0
  br i1 %.not298, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  store ptr @.str.96, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.gd:                                            ; preds = %bb.gb
  %i.aam = and i32 %i.gt, 8192
  %i.aan = icmp eq i32 %i.aam, 0
  br i1 %i.aan, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.aao = lshr i32 %i.gt, 8
  %i.aap = trunc nuw i32 %i.aao to i8
  store i8 %i.aap, ptr @stbi__parse_png_file.invalid_chunk, align 16
  %i.aaq = trunc i32 %i.gt to i8
  store i8 %i.aaq, ptr getelementptr inbounds nuw (i8, ptr @stbi__parse_png_file.invalid_chunk, i64 1), align 1
  %i.aar = lshr i32 %i.gv, 8
  %i.aas = trunc nuw i32 %i.aar to i8
  store i8 %i.aas, ptr getelementptr inbounds nuw (i8, ptr @stbi__parse_png_file.invalid_chunk, i64 2), align 2
  %i.aat = trunc i32 %i.gv to i8
  store i8 %i.aat, ptr getelementptr inbounds nuw (i8, ptr @stbi__parse_png_file.invalid_chunk, i64 3), align 1
  store ptr @stbi__parse_png_file.invalid_chunk, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.gf:                                            ; preds = %bb.gd
  %i.aau = icmp eq i32 %i.gs, 0
  br i1 %i.aau, label %.loopexit, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aav = icmp slt i32 %i.gq, 0
  br i1 %i.aav, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.aaw = load ptr, ptr %i.i, align 8
  store ptr %i.aaw, ptr %i.h, align 8
  br label %.loopexit

bb.gi:                                            ; preds = %bb.gg
  %i.aax = load ptr, ptr %i.k, align 8
  %.not.i362 = icmp eq ptr %i.aax, null
  br i1 %.not.i362, label %..thread_crit_edge.i364, label %bb.gj

..thread_crit_edge.i364:                          ; preds = %bb.gi
  %.pre.i366 = load ptr, ptr %i.h, align 8
  br label %.thread.i363

bb.gj:                                            ; preds = %bb.gi
  %i.aay = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.aaz = load ptr, ptr %i.h, align 8            ; 2 uses
  %i.aba = ptrtoint ptr %i.aay to i64
  %i.abb = ptrtoint ptr %i.aaz to i64
  %i.abc = sub i64 %i.aba, %i.abb
  %i.abd = trunc i64 %i.abc to i32                ; 2 uses
  %i.abe = icmp sgt i32 %i.gs, %i.abd
  br i1 %i.abe, label %bb.gk, label %.thread.i363

bb.gk:                                            ; preds = %bb.gj
  store ptr %i.aay, ptr %i.h, align 8
  %i.abf = load ptr, ptr %i.go, align 8
  %i.abg = load ptr, ptr %i.l, align 8
  %i.abh = sub nsw i32 %i.gs, %i.abd
  tail call void %i.abf(ptr noundef %i.abg, i32 noundef %i.abh) #52, !inline_history !23
  br label %.loopexit

.thread.i363:                                     ; preds = %bb.gj, %..thread_crit_edge.i364
  %i.abi = phi ptr [ %.pre.i366, %..thread_crit_edge.i364 ], [ %i.aaz, %bb.gj ]
  %i.abj = zext nneg i32 %i.gs to i64
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abi, i64 %i.abj
  store ptr %i.abk, ptr %i.h, align 8
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
  %i.abl = tail call fastcc i32 @stbi__get16be(ptr noundef %i.d) ; 0 uses
  %i.abm = tail call fastcc i32 @stbi__get16be(ptr noundef %i.d) ; 0 uses
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
  %i.e = mul nuw nsw i32 %3, %2                   ; 3 uses
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
  %i.i = mul nuw nsw i32 %i.e, %4
  %5 = sext i32 %i.i to i64
  %i.j = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %5) #53 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %stbi__malloc_mad3.exit.thread, label %.preheader197

.preheader197:                                    ; preds = %stbi__malloc_mad3.exit
  %i.l = icmp sgt i32 %4, 0
  br i1 %i.l, label %.lr.ph258, label %._crit_edge

.lr.ph258:                                        ; preds = %.preheader197
  %i.m = shl nsw i32 %1, 3
  %i.n = add nsw i32 %i.m, %2                     ; 2 uses
  %.11167198 = add i32 %3, -1                     ; 32 uses
  %i.o = icmp sgt i32 %.11167198, -1              ; 12 uses
  switch i32 %i.n, label %.critedge [
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
  %i.p = zext i32 %3 to i64                       ; 22 uses
  %min.iters.check504 = icmp ult i32 %3, 8
  %n.vec506 = and i64 %i.p, 4294967288            ; 5 uses
  %i.q = trunc nuw i64 %n.vec506 to i32
  %i.r = sub i32 %.11167198, %i.q
  %i.s = shl nuw nsw i64 %n.vec506, 1
  %i.t = shl nuw nsw i64 %n.vec506, 2
  %cmp.n521 = icmp eq i64 %n.vec506, %i.p
  %min.iters.check451 = icmp ult i32 %3, 9
  %min.iters.check453 = icmp ult i32 %3, 17
  %i.u = and i64 %i.p, 15                         ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  %i.w = select i1 %i.v, i64 16, i64 %i.u         ; 2 uses
  %n.vec455 = sub nsw i64 %i.p, %i.w              ; 5 uses
  %i.x = trunc i64 %n.vec455 to i32
  %i.y = sub i32 %.11167198, %i.x
  %i.z = shl nsw i64 %n.vec455, 2
  %min.epilog.iters.check484 = icmp samesign ult i64 %i.w, 9
  %i.aa = and i64 %i.p, 7                         ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = select i1 %i.ab, i64 8, i64 %i.aa
  %n.vec486 = sub nsw i64 %i.p, %i.ac             ; 4 uses
  %i.ad = trunc i64 %n.vec486 to i32
  %i.ae = sub i32 %.11167198, %i.ad
  %i.af = shl nsw i64 %n.vec486, 2
  %min.iters.check430 = icmp ult i32 %3, 8
  %n.vec432 = and i64 %i.p, 4294967288            ; 5 uses
  %i.ag = trunc nuw i64 %n.vec432 to i32
  %i.ah = sub i32 %.11167198, %i.ag
  %i.ai = shl nuw nsw i64 %n.vec432, 1
  %i.aj = mul nuw nsw i64 %n.vec432, 3
  %cmp.n447 = icmp eq i64 %n.vec432, %i.p
  %min.iters.check377 = icmp ult i32 %3, 8
  %min.iters.check379 = icmp ult i32 %3, 16
  %i.ak = and i64 %i.p, 8
  %n.vec381 = and i64 %i.p, 4294967280            ; 6 uses
  %i.al = trunc nuw i64 %n.vec381 to i32
  %i.am = sub i32 %.11167198, %i.al
  %i.an = mul nuw nsw i64 %n.vec381, 3
  %cmp.n403 = icmp eq i64 %n.vec381, %i.p
  %min.epilog.iters.check410.not.not = icmp eq i64 %i.ak, 0
  %n.vec412 = and i64 %i.p, 4294967288            ; 5 uses
  %i.ao = trunc nuw i64 %n.vec412 to i32
  %i.ap = sub i32 %.11167198, %i.ao
  %i.aq = mul nuw nsw i64 %n.vec412, 3
  %cmp.n426 = icmp eq i64 %n.vec412, %i.p
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %.6162.prol = add i32 %3, -2
  %i.ar = icmp eq i32 %.11167198, 0
  %xtraiter538 = and i32 %3, 1
  %lcmp.mod539.not = icmp eq i32 %xtraiter538, 0
  %.5161.prol = add i32 %3, -2
  %i.as = icmp eq i32 %.11167198, 0
  %xtraiter540 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod541.not = icmp eq i32 %xtraiter540, 0
  %i.at = icmp ult i32 %.11167198, 3
  %min.iters.check326 = icmp ult i32 %3, 9
  %min.iters.check328 = icmp ult i32 %3, 17
  %i.au = and i64 %i.p, 15                        ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = select i1 %i.av, i64 16, i64 %i.au      ; 2 uses
  %n.vec330 = sub nsw i64 %i.p, %i.aw             ; 5 uses
  %i.ax = trunc i64 %n.vec330 to i32
  %i.ay = sub i32 %.11167198, %i.ax
  %i.az = shl nsw i64 %n.vec330, 1
  %min.epilog.iters.check358 = icmp samesign ult i64 %i.aw, 9
  %i.ba = and i64 %i.p, 7                         ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  %i.bc = select i1 %i.bb, i64 8, i64 %i.ba
  %n.vec360 = sub nsw i64 %i.p, %i.bc             ; 4 uses
  %i.bd = trunc i64 %n.vec360 to i32
  %i.be = sub i32 %.11167198, %i.bd
  %i.bf = shl nsw i64 %n.vec360, 1
  %xtraiter542 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod543.not = icmp eq i32 %xtraiter542, 0
  %i.bg = icmp ult i32 %.11167198, 3
  %xtraiter545 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod546.not = icmp eq i32 %xtraiter545, 0
  %i.bh = icmp ult i32 %.11167198, 3
  %min.iters.check = icmp ult i32 %3, 4
  %min.iters.check308 = icmp ult i32 %3, 16
  %i.bi = and i64 %i.p, 12
  %n.vec = and i64 %i.p, 4294967280               ; 6 uses
  %i.bj = trunc nuw i64 %n.vec to i32
  %i.bk = sub i32 %.11167198, %i.bj
  %i.bl = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.p
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  %n.vec315 = and i64 %i.p, 4294967292            ; 5 uses
  %i.bm = trunc nuw i64 %n.vec315 to i32
  %i.bn = sub i32 %.11167198, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec315, 1
  %cmp.n322 = icmp eq i64 %n.vec315, %i.p
  %xtraiter548 = and i32 %3, 1
  %lcmp.mod549.not = icmp eq i32 %xtraiter548, 0
  %.11167.prol = add i32 %3, -2
  %i.bp = icmp eq i32 %.11167198, 0
  br label %bb.e

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i, %bb.b, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__malloc_mad3.exit
  tail call void @free(ptr noundef %0) #52
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph258.split, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph258.split ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  %i.br = mul i32 %3, %i.bq                       ; 2 uses
  %i.bs = mul i32 %i.br, %1
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %i.bt ; 126 uses
  %i.bv = mul i32 %i.br, %2
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bw ; 50 uses
  switch i32 %i.n, label %.preheader195 [
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
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader195
  br i1 %lcmp.mod549.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.by = load i8, ptr %i.bu, align 1
  store i8 %i.by, ptr %i.bx, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store i8 %i.ca, ptr %i.cb, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  store i8 %i.cd, ptr %i.ce, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 3
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.11167201.unr = phi i32 [ %.11167198, %.lr.ph.preheader ], [ %.11167.prol, %.lr.ph.prol ]
  %.11200.unr = phi ptr [ %i.bx, %.lr.ph.preheader ], [ %i.cg, %.lr.ph.prol ]
  %.11153199.unr = phi ptr [ %i.bu, %.lr.ph.preheader ], [ %i.cf, %.lr.ph.prol ]
  br i1 %i.bp, label %.loopexit, label %.lr.ph

.preheader193:                                    ; preds = %bb.e
  br i1 %i.o, label %.lr.ph206.preheader, label %.loopexit

.lr.ph206.preheader:                              ; preds = %.preheader193
  br i1 %min.iters.check504, label %.lr.ph206.preheader536, label %vector.ph505

vector.ph505:                                     ; preds = %.lr.ph206.preheader
  %i.ch = getelementptr i8, ptr %i.bx, i64 %i.s
  %i.ci = getelementptr i8, ptr %i.bu, i64 %i.t
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next519, %vector.body507 ] ; 3 uses
  %i.cj = shl i64 %index508, 1
  %next.gep509 = getelementptr i8, ptr %i.bx, i64 %i.cj
  %i.ck = shl i64 %index508, 2                    ; 8 uses
  %next.gep510 = getelementptr i8, ptr %i.bu, i64 %i.ck ; 4 uses
  %i.cl = getelementptr i8, ptr %i.bu, i64 %i.ck  ; 4 uses
  %next.gep511 = getelementptr i8, ptr %i.cl, i64 4
  %i.cm = getelementptr i8, ptr %i.bu, i64 %i.ck  ; 4 uses
  %next.gep512 = getelementptr i8, ptr %i.cm, i64 8
  %i.cn = getelementptr i8, ptr %i.bu, i64 %i.ck  ; 4 uses
  %next.gep513 = getelementptr i8, ptr %i.cn, i64 12
  %i.co = getelementptr i8, ptr %i.bu, i64 %i.ck  ; 4 uses
  %next.gep514 = getelementptr i8, ptr %i.co, i64 16
  %i.cp = getelementptr i8, ptr %i.bu, i64 %i.ck  ; 4 uses
  %next.gep515 = getelementptr i8, ptr %i.cp, i64 20
  %i.cq = getelementptr i8, ptr %i.bu, i64 %i.ck  ; 4 uses
  %next.gep516 = getelementptr i8, ptr %i.cq, i64 24
  %i.cr = getelementptr i8, ptr %i.bu, i64 %i.ck  ; 4 uses
  %next.gep517 = getelementptr i8, ptr %i.cr, i64 28
  %i.cs = load i8, ptr %next.gep510, align 1
  %i.ct = load i8, ptr %next.gep511, align 1
  %i.cu = load i8, ptr %next.gep512, align 1
  %i.cv = load i8, ptr %next.gep513, align 1
  %i.cw = load i8, ptr %next.gep514, align 1
  %i.cx = load i8, ptr %next.gep515, align 1
  %i.cy = load i8, ptr %next.gep516, align 1
  %i.cz = load i8, ptr %next.gep517, align 1
  %i.da = insertelement <8 x i8> poison, i8 %i.cs, i64 0
  %i.db = insertelement <8 x i8> %i.da, i8 %i.ct, i64 1
  %i.dc = insertelement <8 x i8> %i.db, i8 %i.cu, i64 2
  %i.dd = insertelement <8 x i8> %i.dc, i8 %i.cv, i64 3
  %i.de = insertelement <8 x i8> %i.dd, i8 %i.cw, i64 4
  %i.df = insertelement <8 x i8> %i.de, i8 %i.cx, i64 5
  %i.dg = insertelement <8 x i8> %i.df, i8 %i.cy, i64 6
  %i.dh = insertelement <8 x i8> %i.dg, i8 %i.cz, i64 7
  %i.di = zext <8 x i8> %i.dh to <8 x i16>
  %i.dj = getelementptr inbounds nuw i8, ptr %next.gep510, i64 1
  %i.dk = getelementptr i8, ptr %i.cl, i64 5
  %i.dl = getelementptr i8, ptr %i.cm, i64 9
  %i.dm = getelementptr i8, ptr %i.cn, i64 13
  %i.dn = getelementptr i8, ptr %i.co, i64 17
  %i.do = getelementptr i8, ptr %i.cp, i64 21
  %i.dp = getelementptr i8, ptr %i.cq, i64 25
  %i.dq = getelementptr i8, ptr %i.cr, i64 29
  %i.dr = load i8, ptr %i.dj, align 1
  %i.ds = load i8, ptr %i.dk, align 1
  %i.dt = load i8, ptr %i.dl, align 1
  %i.du = load i8, ptr %i.dm, align 1
  %i.dv = load i8, ptr %i.dn, align 1
  %i.dw = load i8, ptr %i.do, align 1
  %i.dx = load i8, ptr %i.dp, align 1
  %i.dy = load i8, ptr %i.dq, align 1
  %i.dz = insertelement <8 x i8> poison, i8 %i.dr, i64 0
  %i.ea = insertelement <8 x i8> %i.dz, i8 %i.ds, i64 1
  %i.eb = insertelement <8 x i8> %i.ea, i8 %i.dt, i64 2
  %i.ec = insertelement <8 x i8> %i.eb, i8 %i.du, i64 3
  %i.ed = insertelement <8 x i8> %i.ec, i8 %i.dv, i64 4
  %i.ee = insertelement <8 x i8> %i.ed, i8 %i.dw, i64 5
  %i.ef = insertelement <8 x i8> %i.ee, i8 %i.dx, i64 6
  %i.eg = insertelement <8 x i8> %i.ef, i8 %i.dy, i64 7
  %i.eh = zext <8 x i8> %i.eg to <8 x i16>
  %i.ei = getelementptr inbounds nuw i8, ptr %next.gep510, i64 2
  %i.ej = getelementptr i8, ptr %i.cl, i64 6
  %i.ek = getelementptr i8, ptr %i.cm, i64 10
  %i.el = getelementptr i8, ptr %i.cn, i64 14
  %i.em = getelementptr i8, ptr %i.co, i64 18
  %i.en = getelementptr i8, ptr %i.cp, i64 22
  %i.eo = getelementptr i8, ptr %i.cq, i64 26
  %i.ep = getelementptr i8, ptr %i.cr, i64 30
  %i.eq = load i8, ptr %i.ei, align 1
  %i.er = load i8, ptr %i.ej, align 1
  %i.es = load i8, ptr %i.ek, align 1
  %i.et = load i8, ptr %i.el, align 1
  %i.eu = load i8, ptr %i.em, align 1
  %i.ev = load i8, ptr %i.en, align 1
  %i.ew = load i8, ptr %i.eo, align 1
  %i.ex = load i8, ptr %i.ep, align 1
  %i.ey = insertelement <8 x i8> poison, i8 %i.eq, i64 0
  %i.ez = insertelement <8 x i8> %i.ey, i8 %i.er, i64 1
  %i.fa = insertelement <8 x i8> %i.ez, i8 %i.es, i64 2
  %i.fb = insertelement <8 x i8> %i.fa, i8 %i.et, i64 3
  %i.fc = insertelement <8 x i8> %i.fb, i8 %i.eu, i64 4
  %i.fd = insertelement <8 x i8> %i.fc, i8 %i.ev, i64 5
  %i.fe = insertelement <8 x i8> %i.fd, i8 %i.ew, i64 6
  %i.ff = insertelement <8 x i8> %i.fe, i8 %i.ex, i64 7
  %i.fg = zext <8 x i8> %i.ff to <8 x i16>
  %i.fh = mul nuw nsw <8 x i16> %i.di, splat (i16 77)
  %i.fi = mul nuw <8 x i16> %i.eh, splat (i16 150)
  %i.fj = add nuw <8 x i16> %i.fi, %i.fh
  %i.fk = mul nuw nsw <8 x i16> %i.fg, splat (i16 29)
  %i.fl = add nuw <8 x i16> %i.fj, %i.fk
  %i.fm = lshr <8 x i16> %i.fl, splat (i16 8)
  %i.fn = trunc nuw <8 x i16> %i.fm to <8 x i8>
  %i.fo = getelementptr inbounds nuw i8, ptr %next.gep510, i64 3
  %i.fp = getelementptr i8, ptr %i.cl, i64 7
  %i.fq = getelementptr i8, ptr %i.cm, i64 11
  %i.fr = getelementptr i8, ptr %i.cn, i64 15
  %i.fs = getelementptr i8, ptr %i.co, i64 19
  %i.ft = getelementptr i8, ptr %i.cp, i64 23
  %i.fu = getelementptr i8, ptr %i.cq, i64 27
  %i.fv = getelementptr i8, ptr %i.cr, i64 31
  %i.fw = load i8, ptr %i.fo, align 1
  %i.fx = load i8, ptr %i.fp, align 1
  %i.fy = load i8, ptr %i.fq, align 1
  %i.fz = load i8, ptr %i.fr, align 1
  %i.ga = load i8, ptr %i.fs, align 1
  %i.gb = load i8, ptr %i.ft, align 1
  %i.gc = load i8, ptr %i.fu, align 1
  %i.gd = load i8, ptr %i.fv, align 1
  %i.ge = insertelement <8 x i8> poison, i8 %i.fw, i64 0
  %i.gf = insertelement <8 x i8> %i.ge, i8 %i.fx, i64 1
  %i.gg = insertelement <8 x i8> %i.gf, i8 %i.fy, i64 2
  %i.gh = insertelement <8 x i8> %i.gg, i8 %i.fz, i64 3
  %i.gi = insertelement <8 x i8> %i.gh, i8 %i.ga, i64 4
  %i.gj = insertelement <8 x i8> %i.gi, i8 %i.gb, i64 5
  %i.gk = insertelement <8 x i8> %i.gj, i8 %i.gc, i64 6
  %i.gl = insertelement <8 x i8> %i.gk, i8 %i.gd, i64 7
  %interleaved.vec518 = shufflevector <8 x i8> %i.fn, <8 x i8> %i.gl, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec518, ptr %next.gep509, align 1
  %index.next519 = add nuw i64 %index508, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next519, %n.vec506
  br i1 %i.gm, label %middle.block520, label %vector.body507, !llvm.loop !171

middle.block520:                                  ; preds = %vector.body507
  br i1 %cmp.n521, label %.loopexit, label %.lr.ph206.preheader536

.lr.ph206.preheader536:                           ; preds = %.lr.ph206.preheader, %middle.block520
  %.10166205.ph = phi i32 [ %.11167198, %.lr.ph206.preheader ], [ %i.r, %middle.block520 ]
  %.10204.ph = phi ptr [ %i.bx, %.lr.ph206.preheader ], [ %i.ch, %middle.block520 ]
end_hunk_3
begin_hunk_4_@stbi__de_iphone:bb.a
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
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !200

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
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !201

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
  %i.m = mul nuw nsw i32 %5, %4                   ; 3 uses
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
  %i.r = mul nuw nsw i32 %i.h, %i.m
  %8 = sext i32 %i.r to i64
  %i.s = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %8) #53 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stbi__malloc_mad3.exit.thread, %stbi__malloc_mad3.exit
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.u = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.u, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %stbi__mad3sizes_valid.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.v, label %stbi__mul2sizes_valid.exit.thread15.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.f
  %i.w = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.w
  br i1 %.not23.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i

stbi__mul2sizes_valid.exit.thread15.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.f
  %i.x = mul i32 %i.g, %4                         ; 18 uses
  %i.y = or i32 %i.x, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.y, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %stbi__mad3sizes_valid.exit.thread

bb.g:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i
  %i.z = icmp eq i32 %6, 0
  br i1 %i.z, label %stbi__mad3sizes_valid.exit._crit_edge, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.g
  %i.aa = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.x, %i.aa
  %i.ab = mul i32 %i.x, %6                        ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 2147483640
  %or.cond = or i1 %.not.i, %i.ac
  br i1 %or.cond, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mad3sizes_valid.exit._crit_edge

stbi__mad3sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread15.i, %bb.e, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit12.i
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

stbi__mad3sizes_valid.exit._crit_edge:            ; preds = %bb.g, %stbi__mul2sizes_valid.exit12.i
  %.pre-phi = phi i32 [ %i.ab, %stbi__mul2sizes_valid.exit12.i ], [ 0, %bb.g ]
  %i.ad = add i32 %.pre-phi, 7
  %i.ae = lshr i32 %i.ad, 3                       ; 8 uses
  br i1 %i.k, label %stbi__mad2sizes_valid.exit, label %stbi__mul2sizes_valid.exit.i299

stbi__mul2sizes_valid.exit.i299:                  ; preds = %stbi__mad3sizes_valid.exit._crit_edge
  %i.af = udiv i32 2147483647, %5
  %.not10.i = icmp samesign ugt i32 %i.ae, %i.af
  br i1 %.not10.i, label %stbi__mad2sizes_valid.exit.thread, label %stbi__mad2sizes_valid.exit

stbi__mad2sizes_valid.exit:                       ; preds = %stbi__mad3sizes_valid.exit._crit_edge, %stbi__mul2sizes_valid.exit.i299
  %i.ag = mul nuw nsw i32 %i.ae, %5
  %i.ah = xor i32 %i.ae, 2147483647
  %.not330 = icmp sgt i32 %i.ag, %i.ah
  br i1 %.not330, label %stbi__mad2sizes_valid.exit.thread, label %bb.h

stbi__mad2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.i299, %stbi__mad2sizes_valid.exit
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.h:                                             ; preds = %stbi__mad2sizes_valid.exit
  %i.ai = add nuw nsw i32 %i.ae, 1
  %i.aj = mul i32 %i.ai, %5
  %i.ak = icmp ult i32 %2, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr @.str.107, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.al = shl nuw nsw i32 %i.ae, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.am) #53 ; 5 uses
  %.not283 = icmp eq ptr %i.an, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.ao = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.ao, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.ao, i32 %i.ae, i32 %4
  %i.ap = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.aq = sext i32 %spec.select to i64            ; 40 uses
  %i.ar = icmp slt i32 %spec.select, %i.ap        ; 4 uses
  %i.as = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.at = icmp sgt i32 %i.ap, 0
  %i.au = sext i32 %i.ap to i64                   ; 13 uses
  %i.av = icmp eq i32 %6, 8
  %i.aw = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.ax = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.x, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 4 uses
  %i.ay = icmp sgt i32 %4, 0                      ; 4 uses
  %i.az = zext i32 %.030.i305 to i64              ; 16 uses
  %i.ba = zext i32 %i.x to i64
  %i.bb = icmp eq i32 %7, 0
  %9 = sext i32 %6 to i64
  %i.bc = getelementptr inbounds i8, ptr @stbi__depth_scale_table, i64 %9
  %wide.trip.count460 = zext i32 %5 to i64
  %i.bd = zext nneg i32 %i.ae to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.ap to i64     ; 8 uses
  %i.be = sub nsw i64 %i.au, %i.aq                ; 28 uses
  %i.bf = add i32 %i.x, -1                        ; 3 uses
  %i.bg = add nuw nsw i64 %i.az, 1
  %min.iters.check699 = icmp ult i64 %i.be, 8
  %i.bh = add nsw i64 %i.aq, -1
  %diff.check697 = icmp ult i64 %i.bh, 31
  %or.cond733 = select i1 %min.iters.check699, i1 true, i1 %diff.check697
  %min.iters.check701 = icmp ult i64 %i.be, 32
  %i.bi = and i64 %i.be, 24
  %n.vec703 = and i64 %i.be, -32                  ; 4 uses
  %i.bj = add nsw i64 %n.vec703, %i.aq
  %cmp.n712 = icmp eq i64 %i.be, %n.vec703
  %min.epilog.iters.check718 = icmp eq i64 %i.bi, 0
  %n.vec720 = and i64 %i.be, -8                   ; 3 uses
  %i.bk = add nsw i64 %n.vec720, %i.aq
  %cmp.n727 = icmp eq i64 %i.be, %n.vec720
  %i.bl = add nsw i64 %i.au, -1
  %min.iters.check667 = icmp ult i32 %spec.select, 4
  %min.iters.check669 = icmp ult i32 %spec.select, 32
  %i.bm = and i64 %wide.trip.count424, 28
  %n.vec671 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n680 = icmp eq i64 %n.vec671, %wide.trip.count424
  %min.epilog.iters.check685 = icmp eq i64 %i.bm, 0
  %n.vec687 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec687, %wide.trip.count424
  %xtraiter747 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  %min.iters.check632 = icmp ult i64 %i.be, 4
  %i.bn = add nsw i64 %i.aq, -1
  %diff.check626 = icmp ult i64 %i.bn, 15
  %min.iters.check634 = icmp ult i64 %i.be, 16
  %i.bo = and i64 %i.be, 12
  %n.vec636 = and i64 %i.be, -16                  ; 4 uses
  %i.bp = add nsw i64 %n.vec636, %i.aq
  %cmp.n645 = icmp eq i64 %i.be, %n.vec636
  %min.epilog.iters.check651 = icmp eq i64 %i.bo, 0
  %n.vec653 = and i64 %i.be, -4                   ; 3 uses
  %i.bq = add nsw i64 %n.vec653, %i.aq
  %cmp.n662 = icmp eq i64 %i.be, %n.vec653
  %min.iters.check596 = icmp ult i32 %spec.select, 4
  %min.iters.check598 = icmp ult i32 %spec.select, 32
  %i.br = and i64 %wide.trip.count424, 28
  %n.vec600 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n609 = icmp eq i64 %n.vec600, %wide.trip.count424
  %min.epilog.iters.check614 = icmp eq i64 %i.br, 0
  %n.vec616 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count424
  %xtraiter749 = and i64 %wide.trip.count424, 1
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  %i.bs = add nsw i64 %wide.trip.count424, -1
  %min.iters.check563 = icmp ult i64 %i.be, 4
  %i.bt = add nsw i64 %i.aq, -1
  %diff.check561 = icmp ult i64 %i.bt, 15
  %min.iters.check565 = icmp ult i64 %i.be, 16
  %i.bu = and i64 %i.be, 12
  %n.vec567 = and i64 %i.be, -16                  ; 4 uses
  %i.bv = add nsw i64 %n.vec567, %i.aq
  %cmp.n575 = icmp eq i64 %i.be, %n.vec567
  %min.epilog.iters.check581 = icmp eq i64 %i.bu, 0
  %n.vec583 = and i64 %i.be, -4                   ; 3 uses
  %i.bw = add nsw i64 %n.vec583, %i.aq
  %cmp.n591 = icmp eq i64 %i.be, %n.vec583
  %i.bx = add nsw i64 %i.au, -1
  %min.iters.check530 = icmp ult i32 %i.ap, 4
  %min.iters.check532 = icmp ult i32 %i.ap, 32
  %i.by = and i64 %wide.trip.count444, 28
  %n.vec534 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n543 = icmp eq i64 %n.vec534, %wide.trip.count444
  %min.epilog.iters.check548 = icmp eq i64 %i.by, 0
  %n.vec550 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n557 = icmp eq i64 %n.vec550, %wide.trip.count444
  %xtraiter755 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  %min.iters.check506 = icmp ult i64 %i.be, 8
  %i.bz = add nsw i64 %i.aq, -1
  %diff.check = icmp ult i64 %i.bz, 31
  %or.cond732 = select i1 %min.iters.check506, i1 true, i1 %diff.check
  %min.iters.check507 = icmp ult i64 %i.be, 32
  %i.ca = and i64 %i.be, 24
  %n.vec509 = and i64 %i.be, -32                  ; 4 uses
  %i.cb = add nsw i64 %n.vec509, %i.aq
  %cmp.n518 = icmp eq i64 %i.be, %n.vec509
  %min.epilog.iters.check = icmp eq i64 %i.ca, 0
  %n.vec520 = and i64 %i.be, -8                   ; 3 uses
  %i.cc = add nsw i64 %n.vec520, %i.aq
  %cmp.n525 = icmp eq i64 %i.be, %n.vec520
  %i.cd = add nsw i64 %i.au, -1
  %xtraiter761 = and i32 %4, 1
  %i.ce = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod762.not = icmp eq i32 %xtraiter761, 0
  %lcmp.mod763 = trunc i32 %4 to i1
  %xtraiter764 = and i32 %i.x, 3                  ; 3 uses
  %i.cf = icmp ult i32 %i.x, 4
  %unroll_iter767 = and i32 %i.x, -4
  %lcmp.mod765.not = icmp eq i32 %xtraiter764, 0
  %lcmp.mod766 = icmp ne i32 %xtraiter764, 0
  %i.cg = and i64 %i.az, 1
  %lcmp.mod770.not.not = icmp eq i64 %i.cg, 0
  %i.ch = shl nuw nsw i64 %i.az, 2
  %i.ci = mul nuw nsw i64 %i.az, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.az, -1
  %i.cj = icmp eq i32 %.030.i305, 0
  %i.ck = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %i.ck, 2147483640              ; 3 uses
  %i.cl = sub nsw i64 %i.az, %n.vec
  %cmp.n = icmp eq i64 %n.vec, %i.ck
  %xtraiter772 = and i32 %i.x, 1
  %i.cm = icmp eq i32 %i.bf, 0
  %unroll_iter776 = and i32 %i.x, -2
  %lcmp.mod774.not = icmp eq i32 %xtraiter772, 0
  %lcmp.mod775 = trunc i32 %i.x to i1
  %xtraiter778 = and i32 %i.x, 1
  %i.cn = icmp eq i32 %i.bf, 0
  %unroll_iter782 = and i32 %i.x, -2
  %lcmp.mod780.not = icmp eq i32 %xtraiter778, 0
  %lcmp.mod781 = trunc i32 %i.x to i1
  %xtraiter784 = and i32 %i.x, 1
  %i.co = icmp eq i32 %i.bf, 0
  %unroll_iter788 = and i32 %i.x, -2
  %lcmp.mod786.not = icmp eq i32 %xtraiter784, 0
  %lcmp.mod787 = trunc i32 %i.x to i1
  %i.cp = and i64 %i.az, 1
  %lcmp.mod791.not.not = icmp eq i64 %i.cp, 0
  %i.cq = shl nuw nsw i64 %i.az, 2
  %i.cr = mul nuw nsw i64 %i.az, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.az, -1
  %i.cs = icmp eq i32 %.030.i305, 0
  %xtraiter793 = and i64 %i.bg, 3                 ; 2 uses
  %lcmp.mod794.not = icmp eq i64 %xtraiter793, 0
  %i.ct = icmp ult i32 %4, 4
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 4 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.qd, %.loopexit ] ; 2 uses
  %i.cu = trunc i64 %indvars.iv457 to i32         ; 2 uses
  %i.cv = trunc i64 %indvars.iv457 to i1
  %i.cw = select i1 %i.cv, i64 %i.bd, i64 0       ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.cw ; 75 uses
  %i.cy = and i32 %i.cu, 1
  %i.cz = xor i32 %i.cy, 1
  %i.da = mul nuw nsw i32 %i.cz, %i.ae
  %i.db = zext nneg i32 %i.da to i64              ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.db ; 30 uses
  %i.dd = load ptr, ptr %i.t, align 8
  %i.de = mul i32 %i.e, %i.cu
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.df ; 33 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.di = load i8, ptr %.0272398, align 1         ; 3 uses
  %i.dj = icmp ugt i8 %i.di, 4
  br i1 %i.dj, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dk = icmp eq i64 %indvars.iv457, 0
  br i1 %i.dk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dl = zext nneg i8 %i.di to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.dn, %bb.o ], [ %i.di, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

.preheader356:                                    ; preds = %bb.p
  br i1 %i.as, label %iter.check682, label %.preheader354

iter.check682:                                    ; preds = %.preheader356
  %i.do = sub nsw i64 %i.db, %i.cw
  %diff.check665 = icmp ugt i64 %i.do, -32
  %or.cond729 = select i1 %min.iters.check667, i1 true, i1 %diff.check665
  br i1 %or.cond729, label %.lr.ph360.preheader, label %vector.main.loop.iter.check668

vector.main.loop.iter.check668:                   ; preds = %iter.check682
  br i1 %min.iters.check669, label %vec.epilog.ph686, label %vector.body672

vector.body672:                                   ; preds = %vector.main.loop.iter.check668, %vector.body672
  %index673 = phi i64 [ %index.next678, %vector.body672 ], [ 0, %vector.main.loop.iter.check668 ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 %index673 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load674 = load <16 x i8>, ptr %i.dp, align 1
  %wide.load675 = load <16 x i8>, ptr %i.dq, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index673 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load676 = load <16 x i8>, ptr %i.dr, align 1
  %wide.load677 = load <16 x i8>, ptr %i.ds, align 1
  %i.dt = add <16 x i8> %wide.load676, %wide.load674
  %i.du = add <16 x i8> %wide.load677, %wide.load675
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 %index673 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <16 x i8> %i.dt, ptr %i.dv, align 1
  store <16 x i8> %i.du, ptr %i.dw, align 1
  %index.next678 = add nuw i64 %index673, 32      ; 2 uses
  %i.dx = icmp eq i64 %index.next678, %n.vec671
  br i1 %i.dx, label %middle.block679, label %vector.body672, !llvm.loop !202

middle.block679:                                  ; preds = %vector.body672
  br i1 %cmp.n680, label %.preheader354, label %vec.epilog.iter.check684

vec.epilog.iter.check684:                         ; preds = %middle.block679
  br i1 %min.epilog.iters.check685, label %.lr.ph360.preheader, label %vec.epilog.ph686, !prof !16

vec.epilog.ph686:                                 ; preds = %vector.main.loop.iter.check668, %vec.epilog.iter.check684
  %vec.epilog.resume.val681 = phi i64 [ %n.vec671, %vec.epilog.iter.check684 ], [ 0, %vector.main.loop.iter.check668 ]
  br label %vec.epilog.vector.body688

vec.epilog.vector.body688:                        ; preds = %vec.epilog.vector.body688, %vec.epilog.ph686
  %index689 = phi i64 [ %vec.epilog.resume.val681, %vec.epilog.ph686 ], [ %index.next692, %vec.epilog.vector.body688 ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dh, i64 %index689
  %wide.load690 = load <4 x i8>, ptr %i.dy, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index689
  %wide.load691 = load <4 x i8>, ptr %i.dz, align 1
  %i.ea = add <4 x i8> %wide.load691, %wide.load690
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cx, i64 %index689
  store <4 x i8> %i.ea, ptr %i.eb, align 1
  %index.next692 = add nuw i64 %index689, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next692, %n.vec687
  br i1 %i.ec, label %vec.epilog.middle.block693, label %vec.epilog.vector.body688, !llvm.loop !203

vec.epilog.middle.block693:                       ; preds = %vec.epilog.vector.body688
  br i1 %cmp.n694, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check682, %vec.epilog.iter.check684, %vec.epilog.middle.block693
  %indvars.iv421.ph = phi i64 [ 0, %iter.check682 ], [ %n.vec671, %vec.epilog.iter.check684 ], [ %n.vec687, %vec.epilog.middle.block693 ] ; 3 uses
  br i1 %lcmp.mod748.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv421.prol
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv421.prol
  %i.eg = load i8, ptr %i.ef, align 1
  %.narrow286.prol = add i8 %i.eg, %i.ee
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.eh, align 1
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter747
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !204

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.ei = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.ej = icmp ugt i64 %i.ei, -4
  br i1 %i.ej, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.p
  br i1 %i.as, label %iter.check611, label %.preheader351

iter.check611:                                    ; preds = %.preheader353
  %i.ek = sub nsw i64 %i.db, %i.cw
  %diff.check594 = icmp ugt i64 %i.ek, -32
  %or.cond730 = select i1 %min.iters.check596, i1 true, i1 %diff.check594
  br i1 %or.cond730, label %.lr.ph364.preheader, label %vector.main.loop.iter.check597

vector.main.loop.iter.check597:                   ; preds = %iter.check611
  br i1 %min.iters.check598, label %vec.epilog.ph615, label %vector.body601

vector.body601:                                   ; preds = %vector.main.loop.iter.check597, %vector.body601
  %index602 = phi i64 [ %index.next607, %vector.body601 ], [ 0, %vector.main.loop.iter.check597 ] ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dh, i64 %index602 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load603 = load <16 x i8>, ptr %i.el, align 1
  %wide.load604 = load <16 x i8>, ptr %i.em, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index602 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load605 = load <16 x i8>, ptr %i.en, align 1
  %wide.load606 = load <16 x i8>, ptr %i.eo, align 1
  %i.ep = lshr <16 x i8> %wide.load605, splat (i8 1)
  %i.eq = lshr <16 x i8> %wide.load606, splat (i8 1)
  %i.er = add <16 x i8> %i.ep, %wide.load603
  %i.es = add <16 x i8> %i.eq, %wide.load604
  %i.et = getelementptr inbounds nuw i8, ptr %i.cx, i64 %index602 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store <16 x i8> %i.er, ptr %i.et, align 1
  store <16 x i8> %i.es, ptr %i.eu, align 1
  %index.next607 = add nuw i64 %index602, 32      ; 2 uses
  %i.ev = icmp eq i64 %index.next607, %n.vec600
  br i1 %i.ev, label %middle.block608, label %vector.body601, !llvm.loop !205

middle.block608:                                  ; preds = %vector.body601
  br i1 %cmp.n609, label %.preheader351, label %vec.epilog.iter.check613

vec.epilog.iter.check613:                         ; preds = %middle.block608
  br i1 %min.epilog.iters.check614, label %.lr.ph364.preheader, label %vec.epilog.ph615, !prof !16

vec.epilog.ph615:                                 ; preds = %vector.main.loop.iter.check597, %vec.epilog.iter.check613
  %vec.epilog.resume.val610 = phi i64 [ %n.vec600, %vec.epilog.iter.check613 ], [ 0, %vector.main.loop.iter.check597 ]
  br label %vec.epilog.vector.body617

vec.epilog.vector.body617:                        ; preds = %vec.epilog.vector.body617, %vec.epilog.ph615
  %index618 = phi i64 [ %vec.epilog.resume.val610, %vec.epilog.ph615 ], [ %index.next621, %vec.epilog.vector.body617 ] ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dh, i64 %index618
  %wide.load619 = load <4 x i8>, ptr %i.ew, align 1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index618
  %wide.load620 = load <4 x i8>, ptr %i.ex, align 1
  %i.ey = lshr <4 x i8> %wide.load620, splat (i8 1)
  %i.ez = add <4 x i8> %i.ey, %wide.load619
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cx, i64 %index618
  store <4 x i8> %i.ez, ptr %i.fa, align 1
  %index.next621 = add nuw i64 %index618, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next621, %n.vec616
  br i1 %i.fb, label %vec.epilog.middle.block622, label %vec.epilog.vector.body617, !llvm.loop !206

vec.epilog.middle.block622:                       ; preds = %vec.epilog.vector.body617
  br i1 %cmp.n623, label %.preheader351, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %iter.check611, %vec.epilog.iter.check613, %vec.epilog.middle.block622
end_hunk_4
