Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@stbi_load_gif_from_memory:bb.a
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i
  store i32 %i.ca, ptr %i.cb, align 4
  %i.cc = call fastcc ptr @stbi__gif_load_next(ptr noundef nonnull %9, ptr noundef %8, ptr noundef %6, ptr noundef nonnull %i.bz) ; 3 uses
  %i.cd = icmp eq ptr %i.cc, %9
  %.not9293.i = icmp eq ptr %i.cc, null
  %.not92.i = or i1 %i.cd, %.not9293.i
  br i1 %.not92.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !16

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
  %i.ed = sub i64 %.02935.i.i, %i.ea              ; 2 uses
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
  %i.a = tail call fastcc ptr @stbi__load_and_postprocess_8bit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

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
  %i.q = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.p) #53 ; 6 uses
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
  %.0.i = add i32 %i.e, %i.t                      ; 3 uses
  %i.u = icmp sgt i32 %i.i, 0                     ; 2 uses
  %5 = icmp sgt i32 %.0.i, 0
  %or.cond.i = and i1 %i.u, %5
  br i1 %or.cond.i, label %.preheader48.preheader.i, label %._crit_edge51.split.i

.preheader48.preheader.i:                         ; preds = %bb.g
  %i.v = sext i32 %i.e to i64
  %wide.trip.count58.i = zext nneg i32 %i.i to i64
  %wide.trip.count.i = zext nneg i32 %.0.i to i64
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %._crit_edge.i, %.preheader48.preheader.i
  %indvars.iv55.i = phi i64 [ 0, %.preheader48.preheader.i ], [ %indvars.iv.next56.i, %._crit_edge.i ] ; 2 uses
  %i.w = mul nsw i64 %indvars.iv55.i, %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader48.i
  %indvars.iv.i.a = phi i64 [ 0, %.preheader48.i ], [ %indvars.iv.next.i.a, %bb.h ] ; 2 uses
  %i.x = add nsw i64 %indvars.iv.i.a, %i.w        ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = uitofp i8 %i.z to float
  %i.ab = fdiv float %i.aa, 2.550000e+02
  %i.ac = fpext float %i.ab to double
  %6 = load float, ptr @stbi__l2h_gamma, align 4
  %7 = fpext float %6 to double
  %8 = tail call double @pow(double noundef %i.ac, double noundef %7) #52
  %9 = load float, ptr @stbi__l2h_scale, align 4
  %i.ad = fpext float %9 to double
  %i.ae = fmul double %8, %i.ad
  %i.af = fptrunc double %i.ae to float
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.x
  store float %i.af, ptr %i.ag, align 4
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.a, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.h

._crit_edge.i:                                    ; preds = %bb.h
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %._crit_edge51.split.i, label %.preheader48.i

._crit_edge51.split.i:                            ; preds = %._crit_edge.i, %bb.g
  %or.cond53.i = and i1 %i.u, %.not.i
  br i1 %or.cond53.i, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge51.split.i
  %i.ah = sext i32 %i.e to i64                    ; 3 uses
  %i.ai = sext i32 %.0.i to i64                   ; 3 uses
  %wide.trip.count63.i = zext nneg i32 %i.i to i64 ; 2 uses
  %xtraiter.a = and i64 %wide.trip.count63.i, 1
  %i.aj = icmp eq i32 %i.i, 1
  br i1 %i.aj, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter.a = and i64 %wide.trip.count63.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next61.i.1, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ak = mul nsw i64 %indvars.iv60.i, %i.ah
  %i.al = add nsw i64 %i.ak, %i.ai                ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.a, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = uitofp i8 %i.an to float
  %i.ap = fdiv float %i.ao, 2.550000e+02
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.al
  store float %i.ap, ptr %i.aq, align 4
  %indvars.iv.next61.i = or disjoint i64 %indvars.iv60.i, 1
  %i.ar = mul nsw i64 %indvars.iv.next61.i, %i.ah
  %i.as = add nsw i64 %i.ar, %i.ai                ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.a, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %i.av = uitofp i8 %i.au to float
  %i.aw = fdiv float %i.av, 2.550000e+02
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.as
  store float %i.aw, ptr %i.ax, align 4
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter.a
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !18

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv60.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next61.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod21.a = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod21.a)
  %i.ay = mul nsw i64 %indvars.iv60.i.epil.init, %i.ah
  %i.az = add nsw i64 %i.ay, %i.ai                ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.a, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = uitofp i8 %i.bb to float
  %i.bd = fdiv float %i.bc, 2.550000e+02
  %i.be = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.az
  store float %i.bd, ptr %i.be, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %._crit_edge51.split.i
  tail call void @free(ptr noundef nonnull %i.a) #52
  br label %stbi__ldr_to_hdr.exit

bb.i:                                             ; preds = %bb.a
  store ptr @.str.83, ptr @stbi__g_failure_reason, align 8
  br label %stbi__ldr_to_hdr.exit

stbi__ldr_to_hdr.exit:                            ; preds = %.loopexit.i, %stbi__malloc_mad4.exit.thread.i, %bb.i
  %.0 = phi ptr [ null, %bb.i ], [ null, %stbi__malloc_mad4.exit.thread.i ], [ %i.q, %.loopexit.i ]
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
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i, ptr %i.x, align 8
  %i.y = call fastcc ptr @stbi__loadf_main(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #52
  ret ptr %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @stbi_is_hdr_from_memory(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
end_hunk_0
