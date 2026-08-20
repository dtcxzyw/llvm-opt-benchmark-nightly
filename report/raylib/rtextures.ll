inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@stbi_load_gif_from_memory:bb.a
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
  %i.v = icmp sgt i32 %.0.i, 0
  %or.cond.i = and i1 %i.u, %i.v
  br i1 %or.cond.i, label %.preheader48.preheader.i, label %._crit_edge51.split.i

.preheader48.preheader.i:                         ; preds = %bb.g
  %i.w = sext i32 %i.e to i64
  %wide.trip.count58.i = zext nneg i32 %i.i to i64
  %wide.trip.count.i = zext nneg i32 %.0.i to i64
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %._crit_edge.i, %.preheader48.preheader.i
  %indvars.iv55.i = phi i64 [ 0, %.preheader48.preheader.i ], [ %indvars.iv.next56.i, %._crit_edge.i ] ; 2 uses
  %i.x = mul nsw i64 %indvars.iv55.i, %i.w
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader48.i
  %indvars.iv.i = phi i64 [ 0, %.preheader48.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %i.y = add nsw i64 %indvars.iv.i, %i.x          ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.a, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = uitofp i8 %i.aa to float
  %i.ac = fdiv float %i.ab, 2.550000e+02
  %i.ad = fpext float %i.ac to double
  %i.ae = load float, ptr @stbi__l2h_gamma, align 4
  %i.af = fpext float %i.ae to double
  %i.ag = tail call double @pow(double noundef %i.ad, double noundef %i.af) #52
  %i.ah = load float, ptr @stbi__l2h_scale, align 4
  %i.ai = fpext float %i.ah to double
  %i.aj = fmul double %i.ag, %i.ai
  %i.ak = fptrunc double %i.aj to float
  %i.al = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.y
  store float %i.ak, ptr %i.al, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.h

._crit_edge.i:                                    ; preds = %bb.h
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %._crit_edge51.split.i, label %.preheader48.i

._crit_edge51.split.i:                            ; preds = %._crit_edge.i, %bb.g
  %or.cond53.i = and i1 %i.u, %.not.i
  br i1 %or.cond53.i, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge51.split.i
  %i.am = sext i32 %i.e to i64                    ; 3 uses
  %i.an = sext i32 %.0.i to i64                   ; 3 uses
  %wide.trip.count63.i = zext nneg i32 %i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count63.i, 1
  %i.ao = icmp eq i32 %i.i, 1
  br i1 %i.ao, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count63.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next61.i.1, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ap = mul nsw i64 %indvars.iv60.i, %i.am
  %i.aq = add nsw i64 %i.ap, %i.an                ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.a, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = uitofp i8 %i.as to float
  %i.au = fdiv float %i.at, 2.550000e+02
  %i.av = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.aq
  store float %i.au, ptr %i.av, align 4
  %indvars.iv.next61.i = or disjoint i64 %indvars.iv60.i, 1
  %i.aw = mul nsw i64 %indvars.iv.next61.i, %i.am
  %i.ax = add nsw i64 %i.aw, %i.an                ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = uitofp i8 %i.az to float
  %i.bb = fdiv float %i.ba, 2.550000e+02
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ax
  store float %i.bb, ptr %i.bc, align 4
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !18

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv60.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next61.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.bd = mul nsw i64 %indvars.iv60.i.epil.init, %i.am
  %i.be = add nsw i64 %i.bd, %i.an                ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.a, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = uitofp i8 %i.bg to float
  %i.bi = fdiv float %i.bh, 2.550000e+02
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.be
  store float %i.bi, ptr %i.bj, align 4
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
end_hunk_0
begin_hunk_1_@stbi__do_zlib:bb.a
  br i1 %i.ag, label %.preheader172.i, label %stbi__zreceive.exit.i

.preheader172.i:                                  ; preds = %bb.g, %stbi__zget8.exit.i.i.i
  %i.ah = phi i32 [ %i.aq, %stbi__zget8.exit.i.i.i ], [ %i.af, %bb.g ] ; 6 uses
  %i.ai = phi i32 [ %i.ap, %stbi__zget8.exit.i.i.i ], [ %.promoted.i.i.i, %bb.g ] ; 3 uses
  %.highbits.i.i.i = lshr i32 %i.ai, %i.ah
  %.not.i.i.i = icmp eq i32 %.highbits.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader172.i
  %i.aj = load ptr, ptr %i.aa, align 8
  store ptr %i.aj, ptr %0, align 8
  br label %stbi__zreceive.exit.i

bb.i:                                             ; preds = %.preheader172.i
  %.val.i.i.i.i = load ptr, ptr %0, align 8       ; 3 uses
  %.val2.i.i.i.i = load ptr, ptr %i.aa, align 8
  %.not3.i.i.i.i = icmp ult ptr %.val.i.i.i.i, %.val2.i.i.i.i
  br i1 %.not3.i.i.i.i, label %bb.j, label %stbi__zget8.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 1
  store ptr %i.ak, ptr %0, align 8
  %i.al = load i8, ptr %.val.i.i.i.i, align 1
  %i.am = zext i8 %i.al to i32
  br label %stbi__zget8.exit.i.i.i

stbi__zget8.exit.i.i.i:                           ; preds = %bb.j, %bb.i
  %i.an = phi i32 [ %i.am, %bb.j ], [ 0, %bb.i ]
  %i.ao = shl i32 %i.an, %i.ah
  %i.ap = or i32 %i.ao, %i.ai                     ; 4 uses
  store i32 %i.ap, ptr %i.y, align 8
  %i.aq = add nsw i32 %i.ah, 8                    ; 2 uses
  store i32 %i.aq, ptr %i.x, align 8
  %i.ar = icmp slt i32 %i.ah, 17
  br i1 %i.ar, label %.preheader172.i, label %stbi__zreceive.exit.thread.i

stbi__zreceive.exit.thread.i:                     ; preds = %stbi__zget8.exit.i.i.i
  %i.as = lshr i32 %i.ap, 1
  %i.at = add nuw nsw i32 %i.ah, 7
  br label %stbi__zreceive.exit31.i

stbi__zreceive.exit.i:                            ; preds = %bb.h, %bb.g
  %i.au = phi i32 [ %i.af, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  %i.av = phi i32 [ %.promoted.i.i.i, %bb.g ], [ %i.ai, %bb.h ] ; 4 uses
  %i.aw = lshr i32 %i.av, 1                       ; 3 uses
  store i32 %i.aw, ptr %i.y, align 8
  %i.ax = add nsw i32 %i.au, -1                   ; 3 uses
  store i32 %i.ax, ptr %i.x, align 8
  %i.ay = icmp slt i32 %i.au, 3
  br i1 %i.ay, label %.preheader171.i, label %stbi__zreceive.exit31.i

.preheader171.i:                                  ; preds = %stbi__zreceive.exit.i, %stbi__zget8.exit.i.i30.i
  %i.az = phi i32 [ %i.bi, %stbi__zget8.exit.i.i30.i ], [ %i.ax, %stbi__zreceive.exit.i ] ; 5 uses
  %i.ba = phi i32 [ %i.bh, %stbi__zget8.exit.i.i30.i ], [ %i.aw, %stbi__zreceive.exit.i ] ; 3 uses
  %.highbits.i.i25.i = lshr i32 %i.ba, %i.az
  %.not.i.i26.i = icmp eq i32 %.highbits.i.i25.i, 0
  br i1 %.not.i.i26.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader171.i
  %i.bb = load ptr, ptr %i.aa, align 8
  store ptr %i.bb, ptr %0, align 8
  br label %stbi__zreceive.exit31.i

bb.l:                                             ; preds = %.preheader171.i
  %.val.i.i.i27.i = load ptr, ptr %0, align 8     ; 3 uses
  %.val2.i.i.i28.i = load ptr, ptr %i.aa, align 8
  %.not3.i.i.i29.i = icmp ult ptr %.val.i.i.i27.i, %.val2.i.i.i28.i
  br i1 %.not3.i.i.i29.i, label %bb.m, label %stbi__zget8.exit.i.i30.i

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i.i.i27.i, i64 1
  store ptr %i.bc, ptr %0, align 8
  %i.bd = load i8, ptr %.val.i.i.i27.i, align 1
  %i.be = zext i8 %i.bd to i32
  br label %stbi__zget8.exit.i.i30.i

stbi__zget8.exit.i.i30.i:                         ; preds = %bb.m, %bb.l
  %i.bf = phi i32 [ %i.be, %bb.m ], [ 0, %bb.l ]
  %i.bg = shl i32 %i.bf, %i.az
  %i.bh = or i32 %i.bg, %i.ba                     ; 3 uses
  store i32 %i.bh, ptr %i.y, align 8
  %i.bi = add nsw i32 %i.az, 8                    ; 3 uses
  store i32 %i.bi, ptr %i.x, align 8
  %i.bj = icmp slt i32 %i.az, 17
  br i1 %i.bj, label %.preheader171.i, label %stbi__zreceive.exit31.i

stbi__zreceive.exit31.i:                          ; preds = %stbi__zget8.exit.i.i30.i, %bb.k, %stbi__zreceive.exit.i, %stbi__zreceive.exit.thread.i
  %.in.i = phi i32 [ %i.av, %stbi__zreceive.exit.i ], [ %i.av, %bb.k ], [ %i.ap, %stbi__zreceive.exit.thread.i ], [ %i.av, %stbi__zget8.exit.i.i30.i ]
  %i.bk = phi i32 [ %i.ax, %stbi__zreceive.exit.i ], [ %i.az, %bb.k ], [ %i.at, %stbi__zreceive.exit.thread.i ], [ %i.bi, %stbi__zget8.exit.i.i30.i ] ; 3 uses
  %i.bl = phi i32 [ %i.aw, %stbi__zreceive.exit.i ], [ %i.ba, %bb.k ], [ %i.as, %stbi__zreceive.exit.thread.i ], [ %i.bh, %stbi__zget8.exit.i.i30.i ] ; 2 uses
  %i.bm = and i32 %.in.i, 1
  %i.bn = and i32 %i.bl, 3
  %i.bo = lshr i32 %i.bl, 2                       ; 6 uses
  store i32 %i.bo, ptr %i.y, align 8
  %i.bp = add nsw i32 %i.bk, -2                   ; 7 uses
  store i32 %i.bp, ptr %i.x, align 8
  switch i32 %i.bn, label %default.unreachable [
    i32 0, label %bb.n
    i32 3, label %stbi__parse_zlib.exit
    i32 1, label %bb.ae
    i32 2, label %bb.ag
  ]

bb.n:                                             ; preds = %stbi__zreceive.exit31.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #52
  %i.bq = and i32 %i.bp, 7                        ; 3 uses
  %.not.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = icmp slt i32 %i.bk, 2
  br i1 %i.br, label %.preheader.i, label %stbi__zreceive.exit.i.i

.preheader.i:                                     ; preds = %bb.o, %stbi__zget8.exit.i.i.i.i
  %i.bs = phi i32 [ %i.cb, %stbi__zget8.exit.i.i.i.i ], [ %i.bp, %bb.o ] ; 5 uses
  %i.bt = phi i32 [ %i.ca, %stbi__zget8.exit.i.i.i.i ], [ %i.bo, %bb.o ] ; 3 uses
  %.highbits.i.i.i.i = lshr i32 %i.bt, %i.bs
  %.not.i.i.i.i = icmp eq i32 %.highbits.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.bu = load ptr, ptr %i.aa, align 8
  store ptr %i.bu, ptr %0, align 8
  br label %stbi__zreceive.exit.i.i

bb.q:                                             ; preds = %.preheader.i
  %.val.i.i.i.i.i = load ptr, ptr %0, align 8     ; 3 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.aa, align 8
  %.not3.i.i.i.i.i = icmp ult ptr %.val.i.i.i.i.i, %.val2.i.i.i.i.i
  br i1 %.not3.i.i.i.i.i, label %bb.r, label %stbi__zget8.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 1
  store ptr %i.bv, ptr %0, align 8
  %i.bw = load i8, ptr %.val.i.i.i.i.i, align 1
  %i.bx = zext i8 %i.bw to i32
  br label %stbi__zget8.exit.i.i.i.i

stbi__zget8.exit.i.i.i.i:                         ; preds = %bb.r, %bb.q
  %i.by = phi i32 [ %i.bx, %bb.r ], [ 0, %bb.q ]
  %i.bz = shl i32 %i.by, %i.bs
  %i.ca = or i32 %i.bz, %i.bt                     ; 3 uses
  store i32 %i.ca, ptr %i.y, align 8
  %i.cb = add nsw i32 %i.bs, 8                    ; 3 uses
  store i32 %i.cb, ptr %i.x, align 8
  %i.cc = icmp slt i32 %i.bs, 17
  br i1 %i.cc, label %.preheader.i, label %stbi__zreceive.exit.i.i

stbi__zreceive.exit.i.i:                          ; preds = %stbi__zget8.exit.i.i.i.i, %bb.p, %bb.o
  %i.cd = phi i32 [ %i.bp, %bb.o ], [ %i.bs, %bb.p ], [ %i.cb, %stbi__zget8.exit.i.i.i.i ]
  %i.ce = phi i32 [ %i.bo, %bb.o ], [ %i.bt, %bb.p ], [ %i.ca, %stbi__zget8.exit.i.i.i.i ]
  %i.cf = lshr i32 %i.ce, %i.bq                   ; 2 uses
  store i32 %i.cf, ptr %i.y, align 8
  %i.cg = sub nsw i32 %i.cd, %i.bq                ; 2 uses
  store i32 %i.cg, ptr %i.x, align 8
  br label %bb.s

bb.s:                                             ; preds = %stbi__zreceive.exit.i.i, %bb.n
  %.promoted.i.i = phi i32 [ %i.cf, %stbi__zreceive.exit.i.i ], [ %i.bo, %bb.n ] ; 2 uses
  %.pr.i.i = phi i32 [ %i.cg, %stbi__zreceive.exit.i.i ], [ %i.bp, %bb.n ] ; 6 uses
  %i.ch = icmp sgt i32 %.pr.i.i, 0
  br i1 %i.ch, label %.lr.ph.i.i, label %.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.s
  %i.ci = add nsw i32 %.pr.i.i, -1                ; 3 uses
  %i.cj = lshr i32 %i.ci, 3
  %i.ck = add nuw nsw i32 %i.cj, 1
  %wide.trip.count.i = zext nneg i32 %i.ck to i64 ; 3 uses
  %xtraiter482 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.cl = icmp ult i32 %.pr.i.i, 25
  br i1 %i.cl, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i, 1073741820
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.t ] ; 5 uses
  %i.cm = phi i32 [ %.promoted.i.i, %.lr.ph.i.i.new ], [ 0, %bb.t ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.t ]
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  store i8 %i.cn, ptr %i.co, align 2
  %i.cp = lshr i32 %i.cm, 8
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store i8 %i.cq, ptr %i.cs, align 1
  %i.ct = lshr i32 %i.cm, 16
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i8 %i.cu, ptr %i.cw, align 2
  %i.cx = lshr i32 %i.cm, 24
  %i.cy = trunc nuw i32 %i.cx to i8
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 3
  store i8 %i.cy, ptr %i.da, align 1
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.t

.unr-lcssa:                                       ; preds = %bb.t
  %lcmp.mod483.not = icmp eq i64 %xtraiter482, 0
  br i1 %lcmp.mod483.not, label %bb.v, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.epil.init = phi i32 [ %.promoted.i.i, %.lr.ph.i.i ], [ 0, %.unr-lcssa ]
  %lcmp.mod486 = icmp ne i64 %xtraiter482, 0
  tail call void @llvm.assume(i1 %lcmp.mod486)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.u ] ; 3 uses
  %i.db = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.de, %bb.u ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.dc = trunc i32 %i.db to i8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.epil
  store i8 %i.dc, ptr %i.dd, align 1
  %i.de = lshr i32 %i.db, 8                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter482
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.u, !llvm.loop !20

.epilog-lcssa:                                    ; preds = %bb.u
  %i.df = icmp samesign ult i64 %indvars.iv.i.i.epil, 3
  br label %bb.v

bb.v:                                             ; preds = %.unr-lcssa, %.epilog-lcssa
  %indvars.iv.i.i.lcssa = phi i1 [ false, %.unr-lcssa ], [ %i.df, %.epilog-lcssa ]
  %.lcssa480 = phi i32 [ 0, %.unr-lcssa ], [ %i.de, %.epilog-lcssa ]
  %i.dg = add nsw i32 %.pr.i.i, -8
  %i.dh = and i32 %i.ci, -8
  %i.di = sub nsw i32 %i.dg, %i.dh
  %i.dj = and i32 %i.ci, -8
  %i.dk = sub nsw i32 %.pr.i.i, %i.dj
  store i32 %.lcssa480, ptr %i.y, align 8
  store i32 %i.di, ptr %i.x, align 8
  %.not90.i.i = icmp eq i32 %i.dk, 8
  br i1 %.not90.i.i, label %.preheader.i.i, label %stbi__parse_uncompressed_block.exit.thread.i

.thread.i.i:                                      ; preds = %bb.s
  %i.dl = icmp slt i32 %.pr.i.i, 0
  br i1 %i.dl, label %stbi__parse_uncompressed_block.exit.thread.i, label %.lr.ph49.i.i

.preheader.i.i:                                   ; preds = %bb.v
  br i1 %indvars.iv.i.i.lcssa, label %.lr.ph49.i.i, label %._crit_edge50.i.i

.lr.ph49.i.i:                                     ; preds = %.preheader.i.i, %.thread.i.i
  %.0.lcssa7981.i.i = phi i64 [ %wide.trip.count.i, %.preheader.i.i ], [ 0, %.thread.i.i ] ; 5 uses
  %.val2.i.i32.i = load ptr, ptr %i.aa, align 8   ; 3 uses
  %.promoted51.i.i = load ptr, ptr %0, align 8    ; 5 uses
  %xtraiter487 = and i64 %.0.lcssa7981.i.i, 1
  %lcmp.mod488.not = icmp eq i64 %xtraiter487, 0
  br i1 %lcmp.mod488.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph49.i.i
  %.not3.i.i33.i.prol = icmp ult ptr %.promoted51.i.i, %.val2.i.i32.i
  br i1 %.not3.i.i33.i.prol, label %bb.w, label %stbi__zget8.exit.i34.i.prol

bb.w:                                             ; preds = %.prol.preheader
  %i.dm = getelementptr inbounds nuw i8, ptr %.promoted51.i.i, i64 1 ; 2 uses
  store ptr %i.dm, ptr %0, align 8
  %i.dn = load i8, ptr %.promoted51.i.i, align 1
  br label %stbi__zget8.exit.i34.i.prol

stbi__zget8.exit.i34.i.prol:                      ; preds = %bb.w, %.prol.preheader
  %i.do = phi ptr [ %i.dm, %bb.w ], [ %.promoted51.i.i, %.prol.preheader ]
  %i.dp = phi i8 [ %i.dn, %bb.w ], [ 0, %.prol.preheader ]
  %indvars.iv.next63.i.i.prol = add nuw nsw i64 %.0.lcssa7981.i.i, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa7981.i.i
  store i8 %i.dp, ptr %i.dq, align 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %stbi__zget8.exit.i34.i.prol, %.lr.ph49.i.i
  %indvars.iv62.i.i.unr = phi i64 [ %.0.lcssa7981.i.i, %.lr.ph49.i.i ], [ %indvars.iv.next63.i.i.prol, %stbi__zget8.exit.i34.i.prol ]
  %.unr490 = phi ptr [ %.promoted51.i.i, %.lr.ph49.i.i ], [ %i.do, %stbi__zget8.exit.i34.i.prol ]
  %i.dr = icmp eq i64 %.0.lcssa7981.i.i, 3
  br i1 %i.dr, label %._crit_edge50.i.i, label %.lr.ph49.i.i.new

.lr.ph49.i.i.new:                                 ; preds = %.prol.loopexit, %stbi__zget8.exit.i34.i.1
  %indvars.iv62.i.i = phi i64 [ %indvars.iv.next63.i.i.1, %stbi__zget8.exit.i34.i.1 ], [ %indvars.iv62.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ds = phi ptr [ %i.ea, %stbi__zget8.exit.i34.i.1 ], [ %.unr490, %.prol.loopexit ] ; 4 uses
  %.not3.i.i33.i = icmp ult ptr %i.ds, %.val2.i.i32.i
  br i1 %.not3.i.i33.i, label %bb.x, label %stbi__zget8.exit.i34.i

bb.x:                                             ; preds = %.lr.ph49.i.i.new
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 2 uses
  store ptr %i.dt, ptr %0, align 8
  %i.du = load i8, ptr %i.ds, align 1
  br label %stbi__zget8.exit.i34.i

stbi__zget8.exit.i34.i:                           ; preds = %bb.x, %.lr.ph49.i.i.new
  %i.dv = phi ptr [ %i.dt, %bb.x ], [ %i.ds, %.lr.ph49.i.i.new ] ; 4 uses
  %i.dw = phi i8 [ %i.du, %bb.x ], [ 0, %.lr.ph49.i.i.new ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv62.i.i
  store i8 %i.dw, ptr %i.dx, align 1
  %.not3.i.i33.i.1 = icmp ult ptr %i.dv, %.val2.i.i32.i
  br i1 %.not3.i.i33.i.1, label %bb.y, label %stbi__zget8.exit.i34.i.1

bb.y:                                             ; preds = %stbi__zget8.exit.i34.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 2 uses
  store ptr %i.dy, ptr %0, align 8
  %i.dz = load i8, ptr %i.dv, align 1
  br label %stbi__zget8.exit.i34.i.1

stbi__zget8.exit.i34.i.1:                         ; preds = %bb.y, %stbi__zget8.exit.i34.i
  %i.ea = phi ptr [ %i.dy, %bb.y ], [ %i.dv, %stbi__zget8.exit.i34.i ]
  %i.eb = phi i8 [ %i.dz, %bb.y ], [ 0, %stbi__zget8.exit.i34.i ]
  %indvars.iv.next63.i.i.1 = add nuw nsw i64 %indvars.iv62.i.i, 2 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv62.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  store i8 %i.eb, ptr %i.ed, align 1
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next63.i.i.1, 4
  br i1 %exitcond.not.i.i.1, label %._crit_edge50.i.i, label %.lr.ph49.i.i.new

._crit_edge50.i.i:                                ; preds = %.prol.loopexit, %stbi__zget8.exit.i34.i.1, %.preheader.i.i
  %i.ee = load i16, ptr %i.c, align 2             ; 3 uses
  %i.ef = zext i16 %i.ee to i32                   ; 2 uses
  %i.eg = load i16, ptr %i.ad, align 2
  %i.eh = xor i16 %i.eg, %i.ee
  %.not33.i.i = icmp eq i16 %i.eh, -1
  br i1 %.not33.i.i, label %bb.z, label %stbi__parse_uncompressed_block.exit.thread.i

bb.z:                                             ; preds = %._crit_edge50.i.i
  %i.ei = load ptr, ptr %0, align 8               ; 2 uses
  %i.ej = zext i16 %i.ee to i64                   ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej
  %i.el = load ptr, ptr %i.aa, align 8
  %i.em = icmp ugt ptr %i.ek, %i.el
  br i1 %i.em, label %stbi__parse_uncompressed_block.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.en = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ej
  %i.eo = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ep = icmp ugt ptr %i.en, %i.eo
  br i1 %i.ep, label %bb.ab, label %stbi__parse_uncompressed_block.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.eq = load i32, ptr %i.i, align 8
  %.not.i.i35.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i35.i, label %stbi__parse_uncompressed_block.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.er = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.es = ptrtoint ptr %i.ae to i64
  %i.et = ptrtoint ptr %i.er to i64               ; 2 uses
  %i.eu = sub i64 %i.es, %i.et                    ; 2 uses
  %i.ev = trunc i64 %i.eu to i32                  ; 2 uses
  %i.ew = xor i32 %i.ev, -1
  %i.ex = icmp ugt i32 %i.ef, %i.ew
  br i1 %i.ex, label %stbi__parse_uncompressed_block.exit.thread.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ac
  %i.ey = ptrtoint ptr %i.eo to i64
  %i.ez = sub i64 %i.ey, %i.et
  %i.fa = trunc i64 %i.ez to i32                  ; 3 uses
  %i.fb = add i32 %i.ev, %i.ef                    ; 2 uses
  %i.fc = icmp ugt i32 %i.fb, %i.fa
  br i1 %i.fc, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.ad
  %.028.i.i.i = phi i32 [ %i.fe, %bb.ad ], [ %i.fa, %.preheader.i.i.i ] ; 2 uses
  %i.fd = icmp slt i32 %.028.i.i.i, 0
  br i1 %i.fd, label %stbi__parse_uncompressed_block.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i
  %i.fe = shl nuw i32 %.028.i.i.i, 1              ; 3 uses
  %i.ff = icmp ugt i32 %i.fb, %i.fe
  br i1 %i.ff, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ad, %.preheader.i.i.i
  %.0.lcssa.i.i.i = phi i32 [ %i.fa, %.preheader.i.i.i ], [ %i.fe, %bb.ad ]
  %i.fg = zext i32 %.0.lcssa.i.i.i to i64         ; 2 uses
  %i.fh = tail call ptr @realloc(ptr noundef %i.er, i64 noundef %i.fg) #54 ; 4 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %stbi__parse_uncompressed_block.exit.thread.i, label %stbi__zexpand.exit.i.i

stbi__zexpand.exit.i.i:                           ; preds = %._crit_edge.i.i.i
  store ptr %i.fh, ptr %i.d, align 8
  %i.fj = and i64 %i.eu, 4294967295
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fj ; 2 uses
  store ptr %i.fk, ptr %i.e, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fg
  store ptr %i.fl, ptr %i.h, align 8
  %.pre.i.i = load ptr, ptr %0, align 8
  br label %stbi__parse_uncompressed_block.exit.i

stbi__parse_uncompressed_block.exit.thread.i:     ; preds = %._crit_edge.i.i.i, %bb.ac, %bb.ab, %bb.z, %._crit_edge50.i.i, %.thread.i.i, %bb.v, %.lr.ph.i.i.i
  %.str.131.sink.i = phi ptr [ @.str.104, %.lr.ph.i.i.i ], [ @.str.131, %.thread.i.i ], [ @.str.104, %._crit_edge.i.i.i ], [ @.str.104, %bb.ac ], [ @.str.133, %bb.ab ], [ @.str.131, %._crit_edge50.i.i ], [ @.str.131, %bb.v ], [ @.str.132, %bb.z ]
  store ptr %.str.131.sink.i, ptr @stbi__g_failure_reason, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #52
  br label %stbi__parse_zlib.exit

stbi__parse_uncompressed_block.exit.i:            ; preds = %stbi__zexpand.exit.i.i, %bb.aa
  %i.fm = phi ptr [ %.pre.i.i, %stbi__zexpand.exit.i.i ], [ %i.ei, %bb.aa ]
  %i.fn = phi ptr [ %i.fk, %stbi__zexpand.exit.i.i ], [ %i.ae, %bb.aa ]
end_hunk_1
begin_hunk_2_@stbi_zlib_compress:bb.a
  %i.sf = getelementptr inbounds i8, ptr %.8, i64 -8 ; 2 uses
  %i.sg = load i32, ptr %i.sa, align 4
  %i.sh = add nsw i32 %i.sg, 1
  %i.si = load i32, ptr %i.sf, align 4            ; 2 uses
  %.not233 = icmp slt i32 %i.sh, %i.si
  br i1 %.not233, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.sj = shl nsw i32 %i.si, 1                    ; 2 uses
  %i.sk = sext i32 %i.sj to i64
  %i.sl = add nsw i64 %i.sk, 9
  %i.sm = tail call ptr @realloc(ptr noundef nonnull %i.sf, i64 noundef %i.sl) #54 ; 3 uses
  %.not18.i454 = icmp eq ptr %i.sm, null
  br i1 %.not18.i454, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.sn = or disjoint i32 %i.sj, 1
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  store i32 %i.sn, ptr %i.sm, align 4
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.ar, %bb.as
  %.9 = phi ptr [ %.8, %bb.aq ], [ %.8, %bb.ar ], [ %i.so, %bb.as ] ; 5 uses
  %i.sp = trunc i32 %spec.store.select1 to i8
  %i.sq = getelementptr inbounds i8, ptr %.9, i64 -4 ; 3 uses
  %i.sr = load i32, ptr %i.sq, align 4            ; 2 uses
  %i.ss = add nsw i32 %i.sr, 1
  store i32 %i.ss, ptr %i.sq, align 4
  %i.st = sext i32 %i.sr to i64
  %i.su = getelementptr inbounds i8, ptr %.9, i64 %i.st
  store i8 %i.sp, ptr %i.su, align 1
  %i.sv = getelementptr inbounds i8, ptr %.9, i64 -8 ; 2 uses
  %i.sw = load i32, ptr %i.sq, align 4
  %i.sx = add nsw i32 %i.sw, 1
  %i.sy = load i32, ptr %i.sv, align 4            ; 2 uses
  %.not234 = icmp slt i32 %i.sx, %i.sy
  br i1 %.not234, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.sz = shl nsw i32 %i.sy, 1                    ; 2 uses
  %i.ta = sext i32 %i.sz to i64
  %i.tb = add nsw i64 %i.ta, 9
  %i.tc = tail call ptr @realloc(ptr noundef nonnull %i.sv, i64 noundef %i.tb) #54 ; 3 uses
  %.not18.i460 = icmp eq ptr %i.tc, null
  br i1 %.not18.i460, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.td = or disjoint i32 %i.sz, 1
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  store i32 %i.td, ptr %i.tc, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.at, %bb.au, %bb.av
  %.10 = phi ptr [ %.9, %bb.at ], [ %.9, %bb.au ], [ %i.te, %bb.av ] ; 5 uses
  %i.tf = lshr i32 %spec.store.select1, 8
  %i.tg = trunc i32 %i.tf to i8
  %i.th = getelementptr inbounds i8, ptr %.10, i64 -4 ; 3 uses
  %i.ti = load i32, ptr %i.th, align 4            ; 2 uses
  %i.tj = add nsw i32 %i.ti, 1
  store i32 %i.tj, ptr %i.th, align 4
  %i.tk = sext i32 %i.ti to i64
  %i.tl = getelementptr inbounds i8, ptr %.10, i64 %i.tk
  store i8 %i.tg, ptr %i.tl, align 1
  %i.tm = getelementptr inbounds i8, ptr %.10, i64 -8 ; 2 uses
  %i.tn = load i32, ptr %i.th, align 4
  %i.to = add nsw i32 %i.tn, 1
  %i.tp = load i32, ptr %i.tm, align 4            ; 2 uses
  %.not235 = icmp slt i32 %i.to, %i.tp
  br i1 %.not235, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.tq = shl nsw i32 %i.tp, 1                    ; 2 uses
  %i.tr = sext i32 %i.tq to i64
  %i.ts = add nsw i64 %i.tr, 9
  %i.tt = tail call ptr @realloc(ptr noundef nonnull %i.tm, i64 noundef %i.ts) #54 ; 3 uses
  %.not18.i466 = icmp eq ptr %i.tt, null
  br i1 %.not18.i466, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.tu = or disjoint i32 %i.tq, 1
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  store i32 %i.tu, ptr %i.tt, align 4
  br label %bb.az

bb.az:                                            ; preds = %bb.aw, %bb.ax, %bb.ay
  %.11 = phi ptr [ %.10, %bb.aw ], [ %.10, %bb.ax ], [ %i.tv, %bb.ay ] ; 5 uses
  %i.tw = xor i32 %spec.store.select1, -1         ; 2 uses
  %i.tx = trunc i32 %i.tw to i8
  %i.ty = getelementptr inbounds i8, ptr %.11, i64 -4 ; 3 uses
  %i.tz = load i32, ptr %i.ty, align 4            ; 2 uses
  %i.ua = add nsw i32 %i.tz, 1
  store i32 %i.ua, ptr %i.ty, align 4
  %i.ub = sext i32 %i.tz to i64
  %i.uc = getelementptr inbounds i8, ptr %.11, i64 %i.ub
  store i8 %i.tx, ptr %i.uc, align 1
  %i.ud = getelementptr inbounds i8, ptr %.11, i64 -8 ; 2 uses
  %i.ue = load i32, ptr %i.ty, align 4
  %i.uf = add nsw i32 %i.ue, 1
  %i.ug = load i32, ptr %i.ud, align 4            ; 2 uses
  %.not236 = icmp slt i32 %i.uf, %i.ug
  br i1 %.not236, label %stbiw__sbgrowf.exit475, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.uh = shl nsw i32 %i.ug, 1                    ; 2 uses
  %i.ui = sext i32 %i.uh to i64
  %i.uj = add nsw i64 %i.ui, 9
  %i.uk = tail call ptr @realloc(ptr noundef nonnull %i.ud, i64 noundef %i.uj) #54 ; 3 uses
  %.not18.i472 = icmp eq ptr %i.uk, null
  br i1 %.not18.i472, label %stbiw__sbgrowf.exit475, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ul = or disjoint i32 %i.uh, 1
  %i.um = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  store i32 %i.ul, ptr %i.uk, align 4
  br label %stbiw__sbgrowf.exit475

stbiw__sbgrowf.exit475:                           ; preds = %bb.bb, %bb.ba, %bb.az
  %.12 = phi ptr [ %.11, %bb.az ], [ %.11, %bb.ba ], [ %i.um, %bb.bb ] ; 5 uses
  %i.un = lshr i32 %i.tw, 8
  %i.uo = trunc i32 %i.un to i8
  %i.up = getelementptr inbounds i8, ptr %.12, i64 -4 ; 5 uses
  %i.uq = load i32, ptr %i.up, align 4            ; 2 uses
  %i.ur = add nsw i32 %i.uq, 1
  store i32 %i.ur, ptr %i.up, align 4
  %i.us = sext i32 %i.uq to i64
  %i.ut = getelementptr inbounds i8, ptr %.12, i64 %i.us
  store i8 %i.uo, ptr %i.ut, align 1
  %i.uu = load i32, ptr %i.up, align 4
  %i.uv = sext i32 %i.uu to i64
  %i.uw = getelementptr inbounds i8, ptr %.12, i64 %i.uv
  %i.ux = sext i32 %.4190783 to i64
  %i.uy = getelementptr inbounds i8, ptr %0, i64 %i.ux
  %i.uz = sext i32 %spec.store.select1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uw, ptr align 1 %i.uy, i64 %i.uz, i1 false)
  %i.va = load i32, ptr %i.up, align 4
  %i.vb = add nsw i32 %i.va, %spec.store.select1  ; 3 uses
  store i32 %i.vb, ptr %i.up, align 4
  %i.vc = add nsw i32 %spec.store.select1, %.4190783 ; 2 uses
  %i.vd = icmp slt i32 %i.vc, %1
  br i1 %i.vd, label %.lr.ph785, label %.loopexit

.loopexit:                                        ; preds = %stbiw__sbgrowf.exit475, %bb.am
  %i.ve = phi i32 [ %i.rf, %bb.am ], [ %i.vb, %stbiw__sbgrowf.exit475 ] ; 2 uses
  %.13 = phi ptr [ %storemerge.lcssa, %bb.am ], [ %.12, %stbiw__sbgrowf.exit475 ] ; 2 uses
  %i.vf = icmp sgt i32 %1, 0
  br i1 %i.vf, label %.preheader.preheader, label %._crit_edge798

.preheader.preheader:                             ; preds = %.loopexit
  %i.vg = urem i32 %1, 5552
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge791
  %.0797 = phi i32 [ 5552, %._crit_edge791 ], [ %i.vg, %.preheader.preheader ] ; 4 uses
  %.0177796 = phi i32 [ %.1.lcssa, %._crit_edge791 ], [ 0, %.preheader.preheader ] ; 3 uses
  %.0178795 = phi i32 [ %.1179.lcssa, %._crit_edge791 ], [ 1, %.preheader.preheader ] ; 3 uses
  %.5191794 = phi i32 [ %i.wi, %._crit_edge791 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.not = icmp eq i32 %.0797, 0
  br i1 %.not, label %._crit_edge791, label %.lr.ph790.preheader

.lr.ph790.preheader:                              ; preds = %.preheader
  %i.vh = zext nneg i32 %.5191794 to i64
  %wide.trip.count865 = zext nneg i32 %.0797 to i64 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.vh ; 5 uses
  %xtraiter = and i64 %wide.trip.count865, 3      ; 3 uses
  %i.vi = icmp samesign ult i32 %.0797, 4
  br i1 %i.vi, label %.lr.ph790.epil.preheader, label %.lr.ph790.preheader.new

.lr.ph790.preheader.new:                          ; preds = %.lr.ph790.preheader
  %unroll_iter = and i64 %wide.trip.count865, 8188
  br label %.lr.ph790

.lr.ph790:                                        ; preds = %.lr.ph790, %.lr.ph790.preheader.new
  %indvars.iv862 = phi i64 [ 0, %.lr.ph790.preheader.new ], [ %indvars.iv.next863.3, %.lr.ph790 ] ; 5 uses
  %.1789 = phi i32 [ %.0177796, %.lr.ph790.preheader.new ], [ %i.wb, %.lr.ph790 ]
  %.1179788 = phi i32 [ %.0178795, %.lr.ph790.preheader.new ], [ %i.wa, %.lr.ph790 ]
  %niter = phi i64 [ 0, %.lr.ph790.preheader.new ], [ %niter.next.3, %.lr.ph790 ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv862
  %i.vj = load i8, ptr %gep, align 1
  %i.vk = zext i8 %i.vj to i32
  %i.vl = add i32 %.1179788, %i.vk                ; 2 uses
  %i.vm = add i32 %i.vl, %.1789
  %i.vn = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv862
  %gep.1 = getelementptr i8, ptr %i.vn, i64 1
  %i.vo = load i8, ptr %gep.1, align 1
  %i.vp = zext i8 %i.vo to i32
  %i.vq = add i32 %i.vl, %i.vp                    ; 2 uses
  %i.vr = add i32 %i.vq, %i.vm
  %i.vs = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv862
  %gep.2 = getelementptr i8, ptr %i.vs, i64 2
  %i.vt = load i8, ptr %gep.2, align 1
  %i.vu = zext i8 %i.vt to i32
  %i.vv = add i32 %i.vq, %i.vu                    ; 2 uses
  %i.vw = add i32 %i.vv, %i.vr
  %i.vx = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv862
  %gep.3 = getelementptr i8, ptr %i.vx, i64 3
  %i.vy = load i8, ptr %gep.3, align 1
  %i.vz = zext i8 %i.vy to i32
  %i.wa = add i32 %i.vv, %i.vz                    ; 4 uses
  %i.wb = add i32 %i.wa, %i.vw                    ; 3 uses
  %indvars.iv.next863.3 = add nuw nsw i64 %indvars.iv862, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
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
  br i1 %epil.iter.cmp.not, label %._crit_edge791.loopexit, label %.lr.ph790.epil, !llvm.loop !42

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
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.za, ptr nonnull align 1 %.17, i64 %i.zb, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.a, %stbiw__sbgrowf.exit499
  %.0198 = phi ptr [ %i.za, %stbiw__sbgrowf.exit499 ], [ null, %bb.a ]
  ret ptr %.0198
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @stbi_write_png_to_mem(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i32, ptr @stbi_write_force_png_filter, align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  %i.c = icmp eq i32 %1, 0
  %i.d = mul i32 %4, %2                           ; 10 uses
  %spec.select = select i1 %i.c, i32 %i.d, i32 %1 ; 13 uses
  %i.e = icmp sgt i32 %i.b, 4
end_hunk_2
begin_hunk_3_@stbi_write_png_to_mem:bb.a
  %i.dw = trunc i32 %2 to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 19
  store i8 %i.dw, ptr %i.dx, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.dz = lshr i32 %3, 24                         ; 2 uses
  %i.ea = trunc nuw i32 %i.dz to i8
  store i8 %i.ea, ptr %i.dy, align 1
  %i.eb = lshr i32 %3, 16                         ; 2 uses
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dl, i64 21
  store i8 %i.ec, ptr %i.ed, align 1
  %i.ee = lshr i32 %3, 8                          ; 2 uses
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dl, i64 22
  store i8 %i.ef, ptr %i.eg, align 1
  %i.eh = trunc i32 %3 to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dl, i64 23
  store i8 %i.eh, ptr %i.ei, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dl, i64 25
  store i8 8, ptr %i.ej, align 1
  %i.el = sext i32 %4 to i64
  %i.em = getelementptr inbounds [4 x i8], ptr @__const.stbi_write_png_to_mem.ctype, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4            ; 2 uses
  %i.eo = trunc i32 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dl, i64 26
  store i8 %i.eo, ptr %i.ek, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dl, i64 27
  store i8 0, ptr %i.ep, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  store i8 0, ptr %i.eq, align 1
  store i8 0, ptr %i.er, align 1
  %i.es = xor i32 %i.do, 245
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = xor i32 %i.ev, 5725777                  ; 2 uses
  %i.ex = lshr i32 %i.ew, 8
  %i.ey = xor i32 %i.ew, %i.dq
  %i.ez = and i32 %i.ey, 255
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = xor i32 %i.fc, %i.ex                    ; 2 uses
  %i.fe = lshr i32 %i.fd, 8
  %i.ff = xor i32 %i.fd, %i.dt
  %i.fg = and i32 %i.ff, 255
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = xor i32 %i.fj, %i.fe                    ; 2 uses
  %i.fl = lshr i32 %i.fk, 8
  %i.fm = xor i32 %i.fk, %2
  %i.fn = and i32 %i.fm, 255
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = xor i32 %i.fq, %i.fl                    ; 2 uses
  %i.fs = lshr i32 %i.fr, 8
  %i.ft = and i32 %i.fr, 255
  %i.fu = xor i32 %i.ft, %i.dz
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = xor i32 %i.fx, %i.fs                    ; 2 uses
  %i.fz = lshr i32 %i.fy, 8
  %i.ga = xor i32 %i.fy, %i.eb
  %i.gb = and i32 %i.ga, 255
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = xor i32 %i.ge, %i.fz                    ; 2 uses
  %i.gg = lshr i32 %i.gf, 8
  %i.gh = xor i32 %i.gf, %i.ee
  %i.gi = and i32 %i.gh, 255
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = xor i32 %i.gl, %i.gg                    ; 2 uses
  %i.gn = lshr i32 %i.gm, 8
  %i.go = xor i32 %i.gm, %3
  %i.gp = and i32 %i.go, 255
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4
  %i.gt = xor i32 %i.gs, %i.gn                    ; 2 uses
  %i.gu = lshr i32 %i.gt, 8
  %i.gv = and i32 %i.gt, 255
  %i.gw = xor i32 %i.gv, 8
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = xor i32 %i.gz, %i.gu                    ; 2 uses
  %i.hb = lshr i32 %i.ha, 8
  %i.hc = xor i32 %i.ha, %i.en
  %i.hd = and i32 %i.hc, 255
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = xor i32 %i.hg, %i.hb                    ; 2 uses
  %i.hi = lshr i32 %i.hh, 8
  %i.hj = and i32 %i.hh, 255
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4
  %i.hn = xor i32 %i.hm, %i.hi                    ; 2 uses
  %i.ho = lshr i32 %i.hn, 8
  %i.hp = and i32 %i.hn, 255
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = xor i32 %i.hs, %i.ho                    ; 2 uses
  %i.hu = lshr i32 %i.ht, 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  %i.hw = load i8, ptr %i.hv, align 1
  %i.hx = zext i8 %i.hw to i32
  %i.hy = and i32 %i.ht, 255
  %i.hz = xor i32 %i.hy, %i.hx
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = xor i32 %i.ic, %i.hu
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dl, i64 29
  %i.if = xor i32 %i.id, -1                       ; 4 uses
  %i.ig = lshr i32 %i.if, 24
  %i.ih = trunc nuw i32 %i.ig to i8
  store i8 %i.ih, ptr %i.ie, align 1
  %i.ii = lshr i32 %i.if, 16
  %i.ij = trunc i32 %i.ii to i8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.dl, i64 30
  store i8 %i.ij, ptr %i.ik, align 1
  %i.il = lshr i32 %i.if, 8
  %i.im = trunc i32 %i.il to i8
  %i.in = getelementptr inbounds nuw i8, ptr %i.dl, i64 31
  store i8 %i.im, ptr %i.in, align 1
  %i.io = trunc i32 %i.if to i8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store i8 %i.io, ptr %i.ip, align 1
  %i.iq = getelementptr inbounds nuw i8, ptr %i.dl, i64 33
  %i.ir = lshr i32 %i.di, 24
  %i.is = trunc nuw i32 %i.ir to i8
  store i8 %i.is, ptr %i.iq, align 1
  %i.it = lshr i32 %i.di, 16
  %i.iu = trunc i32 %i.it to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.dl, i64 34
  store i8 %i.iu, ptr %i.iv, align 1
  %i.iw = lshr i32 %i.di, 8
  %i.ix = trunc i32 %i.iw to i8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.dl, i64 35
  store i8 %i.ix, ptr %i.iy, align 1
  %i.iz = trunc i32 %i.di to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.dl, i64 36
  store i8 %i.iz, ptr %i.ja, align 1
  %i.jb = getelementptr inbounds nuw i8, ptr %i.dl, i64 37 ; 4 uses
  store <4 x i8> <i8 73, i8 68, i8 65, i8 84>, ptr %i.jb, align 1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.dl, i64 41 ; 2 uses
  %i.jd = sext i32 %i.di to i64                   ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.jc, ptr nonnull align 1 %i.dh, i64 %i.jd, i1 false)
  %i.je = getelementptr inbounds i8, ptr %i.jc, i64 %i.jd ; 6 uses
  tail call void @free(ptr noundef nonnull %i.dh) #52
  %i.jf = icmp sgt i32 %i.di, -4
  br i1 %i.jf, label %.lr.ph.preheader.i.i, label %stbiw__wpcrc.exit119

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i.i
  %i.jg = add nsw i32 %i.di, 4                    ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.jg to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.jh = icmp eq i32 %i.jg, 1
  br i1 %i.jh, label %.lr.ph.i.i114.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %.lr.ph.i.i114

.lr.ph.i.i114:                                    ; preds = %.lr.ph.i.i114, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i115 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i117.1, %.lr.ph.i.i114 ] ; 3 uses
  %.078.i.i116 = phi i32 [ -1, %.lr.ph.preheader.i.i.new ], [ %i.kc, %.lr.ph.i.i114 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i114 ]
  %i.ji = lshr i32 %.078.i.i116, 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jb, i64 %indvars.iv.i.i115
  %i.jk = load i8, ptr %i.jj, align 1
  %i.jl = zext i8 %i.jk to i32
  %i.jm = and i32 %.078.i.i116, 255
  %i.jn = xor i32 %i.jm, %i.jl
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4
  %i.jr = xor i32 %i.jq, %i.ji                    ; 2 uses
  %i.js = lshr i32 %i.jr, 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jb, i64 %indvars.iv.i.i115
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  %i.jv = load i8, ptr %i.ju, align 1
  %i.jw = zext i8 %i.jv to i32
  %i.jx = and i32 %i.jr, 255
  %i.jy = xor i32 %i.jx, %i.jw
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 4
  %i.kc = xor i32 %i.kb, %i.js                    ; 3 uses
  %indvars.iv.next.i.i117.1 = add nuw nsw i64 %indvars.iv.i.i115, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i114

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i114
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i114.epil.preheader

.lr.ph.i.i114.epil.preheader:                     ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i115.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i117.1, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i116.epil.init = phi i32 [ -1, %.lr.ph.preheader.i.i ], [ %i.kc, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod320 = trunc i32 %i.di to i1
  tail call void @llvm.assume(i1 %lcmp.mod320)
  %i.kd = lshr i32 %.078.i.i116.epil.init, 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jb, i64 %indvars.iv.i.i115.epil.init
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = zext i8 %i.kf to i32
  %i.kh = and i32 %.078.i.i116.epil.init, 255
  %i.ki = xor i32 %i.kh, %i.kg
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4
  %i.km = xor i32 %i.kl, %i.kd
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i114.epil.preheader
  %.lcssa = phi i32 [ %i.kc, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.km, %.lr.ph.i.i114.epil.preheader ]
  %i.kn = xor i32 %.lcssa, -1
  br label %stbiw__wpcrc.exit119

stbiw__wpcrc.exit119:                             ; preds = %.lr.ph.i.i, %._crit_edge.loopexit.i.i
  %.07.lcssa.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.kn, %._crit_edge.loopexit.i.i ] ; 4 uses
  %i.ko = lshr i32 %.07.lcssa.i.i, 24
  %i.kp = trunc nuw i32 %i.ko to i8
  store i8 %i.kp, ptr %i.je, align 1
  %i.kq = lshr i32 %.07.lcssa.i.i, 16
  %i.kr = trunc i32 %i.kq to i8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  store i8 %i.kr, ptr %i.ks, align 1
  %i.kt = lshr i32 %.07.lcssa.i.i, 8
  %i.ku = trunc i32 %i.kt to i8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  store i8 %i.ku, ptr %i.kv, align 1
  %i.kw = trunc i32 %.07.lcssa.i.i to i8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.je, i64 3
  store i8 %i.kw, ptr %i.kx, align 1
  %i.ky = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.kz = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i32 0, ptr %i.ky, align 1
  store <8 x i8> <i8 73, i8 69, i8 78, i8 68, i8 -82, i8 66, i8 96, i8 -126>, ptr %i.kz, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge, %bb.a, %stbiw__wpcrc.exit119, %bb.d
  %.099 = phi ptr [ %i.dl, %stbiw__wpcrc.exit119 ], [ null, %._crit_edge ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  ret ptr %.099
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @stbiw__encode_png_line(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #15 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.b = ptrtoaddr ptr %7 to i64                  ; 14 uses
  %.not = icmp eq i32 %4, 0
  %i.c = select i1 %.not, ptr @stbiw__encode_png_line.firstmap, ptr @stbiw__encode_png_line.mapping
  %i.d = sext i32 %6 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = load i32, ptr @stbi__flip_vertically_on_write, align 4
  %.not136 = icmp eq i32 %i.g, 0                  ; 2 uses
  %i.h = xor i32 %4, -1
  %i.i = add i32 %3, %i.h
  %i.j = select i1 %.not136, i32 %4, i32 %i.i
  %i.k = mul i32 %i.j, %1
  %i.l = sext i32 %i.k to i64                     ; 8 uses
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l ; 77 uses
  %i.n = sub nsw i32 0, %1
  %i.o = select i1 %.not136, i32 %1, i32 %i.n     ; 4 uses
  %i.p = icmp eq i32 %i.f, 0
  br i1 %i.p, label %bb.b, label %.preheader160

.preheader160:                                    ; preds = %bb.a
  %i.q = icmp sgt i32 %5, 0
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader160
  %i.r = sext i32 %i.o to i64                     ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.s = mul nsw i32 %5, %2
  %i.t = sext i32 %i.s to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %i.m, i64 %i.t, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 11 uses
  switch i32 %i.f, label %bb.i [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1
  br label %.sink.split

bb.d:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1
  %i.y = sub nsw i64 %indvars.iv, %i.r
  %i.z = getelementptr inbounds i8, ptr %i.m, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = sub i8 %i.x, %i.aa
  br label %.sink.split

bb.e:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = sub nsw i64 %indvars.iv, %i.r
  %i.af = getelementptr inbounds i8, ptr %i.m, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = lshr i8 %i.ag, 1
  %i.ai = sub i8 %i.ad, %i.ah
  br label %.sink.split

bb.f:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sub nsw i64 %indvars.iv, %i.r
  %i.am = getelementptr inbounds i8, ptr %i.m, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = sub i8 %i.ak, %i.an
  br label %.sink.split

bb.g:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1
  br label %.sink.split

bb.h:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi i8 [ %i.v, %bb.c ], [ %i.ab, %bb.d ], [ %i.ai, %bb.e ], [ %i.ao, %bb.f ], [ %i.aq, %bb.g ], [ %i.as, %bb.h ]
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  store i8 %.sink, ptr %i.at, align 1
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %.preheader160
  switch i32 %i.f, label %.loopexit [
    i32 1, label %.preheader
    i32 2, label %.preheader150
    i32 3, label %.preheader152
    i32 4, label %.preheader154
    i32 5, label %.preheader156
    i32 6, label %.preheader158
  ]

.preheader158:                                    ; preds = %._crit_edge
  %i.au = mul nsw i32 %5, %2                      ; 2 uses
  %i.av = icmp slt i32 %5, %i.au
  br i1 %i.av, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader158
  %i.aw = sext i32 %5 to i64                      ; 11 uses
  %wide.trip.count183 = sext i32 %i.au to i64     ; 4 uses
  %i.ax = sub nsw i64 %wide.trip.count183, %i.aw  ; 7 uses
  %min.iters.check = icmp ult i64 %i.ax, 8
  br i1 %min.iters.check, label %.lr.ph163.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ay = add i64 %i.b, %i.aw
  %i.az = add i64 %i.a, %i.l                      ; 2 uses
  %i.ba = sub i64 %i.az, %i.ay
  %diff.check = icmp ugt i64 %i.ba, -32
  %i.bb = sub i64 %i.az, %i.b
  %diff.check228 = icmp ugt i64 %i.bb, -32
  %conflict.rdx = or i1 %diff.check, %diff.check228
  br i1 %conflict.rdx, label %.lr.ph163.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check229 = icmp ult i64 %i.ax, 32
  br i1 %min.iters.check229, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %i.ax, 24
  %n.vec = and i64 %i.ax, -32                     ; 4 uses
  %i.bd = add nsw i64 %n.vec, %i.aw
end_hunk_3
begin_hunk_4_@stbir__perform_resize:bb.a
  %.not146.i = icmp sge i32 %i.le, %i.ja
  %i.lg = icmp slt i32 %i.le, %i.je
  %or.cond150.i = select i1 %.not146.i, i1 %i.lg, i1 false
  br i1 %or.cond150.i, label %bb.av, label %bb.bh

bb.av:                                            ; preds = %bb.au, %bb.at
  %.not147.i = icmp ne i32 %.0131161.i, 0
  %i.lh = icmp sgt i32 %.1163.i, %i.jg
  %or.cond151.i = select i1 %.not147.i, i1 %i.lh, i1 false
  br i1 %or.cond151.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 %.1163.i, ptr %i.jf, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.li = icmp slt i32 %i.lc, %i.ja
  %i.lj = sub nsw i32 %i.ja, %i.lc
  %.0127.i = call i32 @llvm.smax.i32(i32 %i.lc, i32 %i.ja) ; 3 uses
  %narrow.i = select i1 %i.li, i32 %i.lj, i32 0
  %.0.idx.i = zext i32 %narrow.i to i64
  %.0.i = getelementptr inbounds nuw [4 x i8], ptr %.0136160.i, i64 %.0.idx.i
  %.0126.i = call i32 @llvm.smin.i32(i32 %i.le, i32 %i.kp) ; 4 uses
  %i.lk = load i32, ptr %i.kh, align 8
  %i.ll = icmp slt i32 %i.lk, 0
  br i1 %i.ll, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.lm = sub nsw i32 %.0127.i, %i.ja
  store i32 %i.lm, ptr %i.kh, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ln = load ptr, ptr %i.f, align 8
  call fastcc void @stbir__decode_scanline(ptr noundef nonnull %0, i32 noundef %.1163.i, ptr noundef %i.ln)
  %i.lo = load i32, ptr %i.il, align 4
  %.not149.i = icmp eq i32 %i.lo, 0
  br i1 %.not149.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.lp = load ptr, ptr %i.kq, align 8
  %i.lq = load ptr, ptr %i.f, align 8
  call fastcc void @stbir__resample_horizontal_gather(ptr noundef nonnull %0, ptr noundef %i.lp, ptr noundef %i.lq)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.lr = load i32, ptr %i.kg, align 4            ; 2 uses
  %i.ls = load i32, ptr %i.kf, align 8
  %i.lt = add i32 %i.lr, 1
  %i.lu = sub i32 %i.lt, %i.ls
  %i.lv = load i32, ptr %i.ki, align 4
  %i.lw = icmp eq i32 %i.lu, %i.lv
  %i.lx = icmp sgt i32 %.0126.i, %i.lr
  %or.cond152.i = select i1 %i.lw, i1 %i.lx, i1 false
  br i1 %or.cond152.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void %.0135.i(ptr noundef nonnull %0, ptr noundef nonnull %i.f) #52, !callees !86, !inline_history !87
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %reass.sub35 = sub i32 %.0126.i, %.0127.i
  %i.ly = add i32 %reass.sub35, 1
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge.i.i, %bb.bd
  %.027.i.i = phi i32 [ 0, %bb.bd ], [ %i.nb, %._crit_edge.i.i ] ; 3 uses
  %.026.i.i = phi i32 [ %i.ly, %bb.bd ], [ %i.nc, %._crit_edge.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  %i.lz = call i32 @llvm.umin.i32(i32 %.026.i.i, i32 8) ; 3 uses
  %i.ma = icmp ne i32 %.026.i.i, 0
  call void @llvm.assume(i1 %i.ma)
  %.val.i.i14 = load i32, ptr %i.kr, align 8      ; 2 uses
  %.val31.i.i = load i32, ptr %i.ki, align 4      ; 2 uses
  %i.mb = load i32, ptr %i.kh, align 8
  %i.mc = load i32, ptr %i.kf, align 8
  %i.md = add i32 %.027.i.i, %.0127.i
  %invariant.op.i.i15 = add i32 %i.md, %i.mb
  %invariant.op36.i.i = sub i32 %invariant.op.i.i15, %i.mc ; 2 uses
  %.val6.i.i.i16 = load ptr, ptr %i.ks, align 8   ; 2 uses
  %wide.trip.count.i.i17 = zext nneg i32 %i.lz to i64
  %i.me = srem i32 %invariant.op36.i.i, %.val31.i.i
  %i.mf = mul nsw i32 %i.me, %.val.i.i14
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds i8, ptr %.val6.i.i.i16, i64 %i.mg ; 3 uses
  store ptr %i.mh, ptr %i.a, align 16
  %exitcond.peel.not.i.i = icmp eq i32 %.026.i.i, 1
  br i1 %exitcond.peel.not.i.i, label %.._crit_edge.i_crit_edge.i, label %.peel.next.i.i

.._crit_edge.i_crit_edge.i:                       ; preds = %bb.be
  %.pre.i = load float, ptr %i.mh, align 4
  br label %._crit_edge.i.i

.peel.next.i.i:                                   ; preds = %bb.be, %bb.bf
  %indvars.iv.i.i18 = phi i64 [ %indvars.iv.next.i.i19, %bb.bf ], [ 1, %bb.be ] ; 3 uses
  %i.mi = trunc nuw nsw i64 %indvars.iv.i.i18 to i32 ; 2 uses
  %.reass37.i.i = add i32 %invariant.op36.i.i, %i.mi
  %i.mj = srem i32 %.reass37.i.i, %.val31.i.i
  %i.mk = mul nsw i32 %i.mj, %.val.i.i14
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds i8, ptr %.val6.i.i.i16, i64 %i.ml ; 2 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i18
  store ptr %i.mm, ptr %i.mn, align 8
  %i.mo = load float, ptr %i.mm, align 4
  %i.mp = fcmp oeq float %i.mo, 3.000000e+38
  %i.mq = load float, ptr %i.mh, align 4          ; 3 uses
  %i.mr = fcmp une float %i.mq, 3.000000e+38
  %.not29.i.i = xor i1 %i.mp, %i.mr
  br i1 %.not29.i.i, label %bb.bf, label %._crit_edge.i.i

bb.bf:                                            ; preds = %.peel.next.i.i
  %indvars.iv.next.i.i19 = add nuw nsw i64 %indvars.iv.i.i18, 1 ; 2 uses
  %exitcond.not.i.i20 = icmp eq i64 %indvars.iv.next.i.i19, %wide.trip.count.i.i17
  br i1 %exitcond.not.i.i20, label %._crit_edge.i.i, label %.peel.next.i.i, !llvm.loop !88

._crit_edge.i.i:                                  ; preds = %bb.bf, %.peel.next.i.i, %.._crit_edge.i_crit_edge.i
  %i.ms = phi float [ %.pre.i, %.._crit_edge.i_crit_edge.i ], [ %i.mq, %.peel.next.i.i ], [ %i.mq, %bb.bf ]
  %.0.i.i = phi i32 [ %i.lz, %.._crit_edge.i_crit_edge.i ], [ %i.lz, %bb.bf ], [ %i.mi, %.peel.next.i.i ] ; 3 uses
  %i.mt = fcmp oeq float %i.ms, 3.000000e+38
  %i.mu = select i1 %i.mt, ptr @stbir__vertical_scatter_sets, ptr @stbir__vertical_scatter_blends
  %i.mv = sext i32 %.0.i.i to i64
  %i.mw = getelementptr [8 x i8], ptr %i.mu, i64 %i.mv
  %i.mx = getelementptr i8, ptr %i.mw, i64 -8
  %i.my = load ptr, ptr %i.mx, align 8
  %i.mz = sext i32 %.027.i.i to i64
  %i.na = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.mz
  call void %i.my(ptr noundef nonnull %i.a, ptr noundef %i.na, ptr noundef %.sink.i, ptr noundef %i.ke) #52, !inline_history !89
  %i.nb = add nsw i32 %.0.i.i, %.027.i.i
  %i.nc = sub nsw i32 %.026.i.i, %.0.i.i          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  %.not30.i.i = icmp eq i32 %i.nc, 0
  br i1 %.not30.i.i, label %stbir__resample_vertical_scatter.exit.i, label %bb.be

stbir__resample_vertical_scatter.exit.i:          ; preds = %._crit_edge.i.i
  %i.nd = load i32, ptr %i.kg, align 4
  %i.ne = icmp sgt i32 %.0126.i, %i.nd
  br i1 %i.ne, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %stbir__resample_vertical_scatter.exit.i
  store i32 %.0126.i, ptr %i.kg, align 4
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %stbir__resample_vertical_scatter.exit.i, %bb.au, %bb.as
  %.1132.i = phi i32 [ %.0131161.i, %bb.au ], [ %.0131161.i, %bb.as ], [ 0, %bb.bg ], [ 0, %stbir__resample_vertical_scatter.exit.i ]
  %.1130.i = phi i32 [ %.0129162.i, %bb.au ], [ %.0129162.i, %bb.as ], [ %.1163.i, %bb.bg ], [ %.1163.i, %stbir__resample_vertical_scatter.exit.i ] ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.0137159.i, i64 8
  %i.ng = load i32, ptr %i.jo, align 4
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [4 x i8], ptr %.0136160.i, i64 %i.nh
  %i.nj = add i32 %.1163.i, 1                     ; 2 uses
  %exitcond.not.i12 = icmp eq i32 %i.nj, %i.ji
  br i1 %exitcond.not.i12, label %.preheader.i, label %bb.as

.lr.ph165.i:                                      ; preds = %.preheader.i, %.lr.ph165.i
  call void %.0135.i(ptr noundef nonnull %0, ptr noundef nonnull %i.f) #52, !callees !86, !inline_history !87
  %i.nk = load i32, ptr %i.kf, align 8
  %i.nl = icmp slt i32 %i.nk, %i.je
  br i1 %i.nl, label %.lr.ph165.i, label %._crit_edge.i9

._crit_edge.i9:                                   ; preds = %.lr.ph165.i, %.preheader.i
  %i.nm = add nsw i32 %.0129.lcssa.i, 1           ; 6 uses
  %i.nn = icmp sgt i32 %2, 0
  br i1 %i.nn, label %.lr.ph168.preheader.i, label %stbir__vertical_gather_loop.exit

.lr.ph168.preheader.i:                            ; preds = %._crit_edge.i9
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.no = icmp eq i32 %2, 1
  br i1 %i.no, label %.lr.ph168.i.epil.preheader, label %.lr.ph168.preheader.i.new

.lr.ph168.preheader.i.new:                        ; preds = %.lr.ph168.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph168.i

.lr.ph168.i:                                      ; preds = %bb.bk, %.lr.ph168.preheader.i.new
  %indvars.iv.i10 = phi i64 [ 0, %.lr.ph168.preheader.i.new ], [ %indvars.iv.next.i11.1, %bb.bk ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph168.preheader.i.new ], [ %niter.next.1, %bb.bk ]
  %i.np = getelementptr inbounds nuw [120 x i8], ptr %i.f, i64 %indvars.iv.i10
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 32 ; 2 uses
  %i.nr = load i32, ptr %i.nq, align 8
  %i.ns = icmp sgt i32 %i.nr, %i.nm
  br i1 %i.ns, label %bb.bi, label %.lr.ph168.i.1

bb.bi:                                            ; preds = %.lr.ph168.i
  store i32 %i.nm, ptr %i.nq, align 8
  br label %.lr.ph168.i.1

.lr.ph168.i.1:                                    ; preds = %bb.bi, %.lr.ph168.i
  %i.nt = getelementptr inbounds nuw [120 x i8], ptr %i.f, i64 %indvars.iv.i10
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 152 ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 8
  %i.nw = icmp sgt i32 %i.nv, %i.nm
  br i1 %i.nw, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph168.i.1
  store i32 %i.nm, ptr %i.nu, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.lr.ph168.i.1
  %indvars.iv.next.i11.1 = add nuw nsw i64 %indvars.iv.i10, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbir__vertical_gather_loop.exit.loopexit.unr-lcssa, label %.lr.ph168.i

stbir__vertical_gather_loop.exit.loopexit.unr-lcssa: ; preds = %bb.bk
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbir__vertical_gather_loop.exit, label %.lr.ph168.i.epil.preheader

.lr.ph168.i.epil.preheader:                       ; preds = %stbir__vertical_gather_loop.exit.loopexit.unr-lcssa, %.lr.ph168.preheader.i
  %indvars.iv.i10.epil.init = phi i64 [ 0, %.lr.ph168.preheader.i ], [ %indvars.iv.next.i11.1, %stbir__vertical_gather_loop.exit.loopexit.unr-lcssa ]
  %lcmp.mod7 = trunc i32 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod7)
  %i.nx = getelementptr inbounds nuw [120 x i8], ptr %i.f, i64 %indvars.iv.i10.epil.init
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 32 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 8
  %i.oa = icmp sgt i32 %i.nz, %i.nm
  br i1 %i.oa, label %bb.bl, label %stbir__vertical_gather_loop.exit

bb.bl:                                            ; preds = %.lr.ph168.i.epil.preheader
  store i32 %i.nm, ptr %i.ny, align 8
  br label %stbir__vertical_gather_loop.exit

stbir__vertical_gather_loop.exit:                 ; preds = %stbir__resample_vertical_gather.exit.i, %stbir__vertical_gather_loop.exit.loopexit.unr-lcssa, %bb.bl, %.lr.ph168.i.epil.preheader, %._crit_edge.i9, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @stbir_resize_extended_split(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  switch i32 %1, label %bb.d [
    i32 -1, label %bb.c
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %2, %i.b
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = tail call i32 @stbir_resize_extended(ptr noundef %0)
  br label %bb.i

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load i32, ptr %i.h, align 8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp sge i32 %1, %i.k
  %i.m = icmp slt i32 %1, 0
  %or.cond = or i1 %i.m, %i.l
  br i1 %or.cond, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = add nsw i32 %2, %1
  %i.o = icmp sgt i32 %i.n, %i.k
  %i.p = icmp slt i32 %2, 1
  %or.cond3 = or i1 %i.p, %i.o
  br i1 %or.cond3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @stbir__perform_resize(ptr noundef nonnull %i.f, i32 noundef %1, i32 noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.e, %bb.h, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ 1, %bb.h ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @stbir_resize_uint8_linear(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc ptr @stbir_quick_resize_helper(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @stbir_quick_resize_helper(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) unnamed_addr #4 {
bb.a:
  %12 = alloca %struct.STBIR_RESIZE, align 8      ; 33 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #52
  %i.a = zext i32 %9 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @stbir__type_size, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = zext i8 %i.c to i32
  %i.e = mul nsw i32 %5, %i.d
  %i.f = zext i32 %8 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @stbir__pixel_layout_convert_public_to_internal, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @stbir__pixel_channels, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = mul nsw i32 %i.e, %i.l                   ; 3 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %7, 0
  %spec.select = select i1 %i.o, i32 %i.m, i32 %7 ; 3 uses
  %i.p = icmp slt i32 %spec.select, 0
  %.047 = tail call i32 @llvm.abs.i32(i32 %spec.select, i1 true) ; 2 uses
  %i.q = icmp slt i32 %.047, %i.m
  br i1 %i.q, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq ptr %4, null
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = zext nneg i32 %.047 to i64               ; 2 uses
  %i.t = icmp eq i32 %6, 0
  br i1 %i.t, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = sext i32 %6 to i64
  %i.v = mul nsw i64 %i.s, %i.u
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #53 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %6, -1
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.s, %i.z
  %.045.idx = select i1 %i.p, i64 %i.aa, i64 0
  %.045 = getelementptr inbounds nuw i8, ptr %i.w, i64 %.045.idx
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.2 = phi ptr [ %.045, %bb.f ], [ %4, %bb.c ]   ; 2 uses
  %.1 = phi ptr [ %i.w, %bb.f ], [ null, %bb.c ]  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 %2, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 104
  store i32 %3, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %.2, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 72
  store i32 %5, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 76
  store i32 %6, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 108
  store i32 %spec.select, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 116
  store i32 0, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr null, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 96
  store ptr null, ptr %i.al, align 8
  store ptr %12, ptr %12, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 124
  store i32 0, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 144
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i8 0, i64 40, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 80
  store i32 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 84
  store i32 0, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 88
  store i32 %5, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 92
  store i32 %6, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i32 %9, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 140
  store i32 %9, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 128
  store i32 %8, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 132
  store i32 %8, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 120
  store i32 1, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 152
  store i32 %10, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 156
  store i32 %10, ptr %i.bb, align 4
  store i32 %11, ptr %i.an, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 148
  store i32 %11, ptr %i.bc, align 4
  %i.bd = call i32 @stbir_resize_extended(ptr noundef nonnull %12)
end_hunk_4
begin_hunk_5_@GenImageGradientSquare:bb.a
vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !8

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert91 = insertelement <4 x float> poison, float %i.ab, i64 0
  %broadcast.splat92 = shufflevector <4 x float> %broadcast.splatinsert91, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bl = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert115 = insertelement <4 x i32> poison, i32 %i.bl, i64 0
  %broadcast.splat116 = shufflevector <4 x i32> %broadcast.splatinsert115, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat116, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next120, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind118 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next121, %vec.epilog.vector.body ] ; 2 uses
  %i.bm = uitofp nneg <4 x i32> %vec.ind118 to <4 x float>
  %i.bn = fsub <4 x float> %i.bm, %broadcast.splat94
  %i.bo = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bn)
  %i.bp = fdiv <4 x float> %i.bo, %broadcast.splat94
  %i.bq = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bp, <4 x float> %broadcast.splat92)
  %i.br = fsub <4 x float> %i.bq, %broadcast.splat96
  %i.bs = fdiv <4 x float> %i.br, %broadcast.splat98
  %i.bt = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bs, <4 x float> zeroinitializer)
  %i.bu = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.bt, <4 x float> splat (float 1.000000e+00)) ; 5 uses
  %i.bv = fmul nnan <4 x float> %i.bu, %broadcast.splat100
  %i.bw = fsub <4 x float> splat (float 1.000000e+00), %i.bu ; 4 uses
  %i.bx = fmul <4 x float> %i.bw, %broadcast.splat102
  %i.by = fadd <4 x float> %i.bv, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index117
  %i.ca = fmul nnan <4 x float> %i.bu, %broadcast.splat104
  %i.cb = fmul <4 x float> %i.bw, %broadcast.splat106
  %i.cc = fadd <4 x float> %i.ca, %i.cb
  %i.cd = fmul nnan <4 x float> %i.bu, %broadcast.splat108
  %i.ce = fmul <4 x float> %i.bw, %broadcast.splat110
  %i.cf = fadd <4 x float> %i.cd, %i.ce
  %i.cg = fmul nnan <4 x float> %i.bu, %broadcast.splat112
  %i.ch = fmul <4 x float> %i.bw, %broadcast.splat114
  %i.ci = fadd <4 x float> %i.cg, %i.ch
  %i.cj = shufflevector <4 x float> %i.by, <4 x float> %i.cc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ck = fptosi <8 x float> %i.cj to <8 x i32>
  %i.cl = trunc <8 x i32> %i.ck to <8 x i8>
  %i.cm = shufflevector <4 x float> %i.cf, <4 x float> %i.ci, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cn = fptosi <8 x float> %i.cm to <8 x i32>
  %i.co = trunc <8 x i32> %i.cn to <8 x i8>
  %interleaved.vec119 = shufflevector <8 x i8> %i.cl, <8 x i8> %i.co, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec119, ptr %i.bz, align 1
  %index.next120 = add nuw i64 %index117, 4       ; 2 uses
  %vec.ind.next121 = add <4 x i32> %vec.ind118, splat (i32 4)
  %i.cp = icmp eq i64 %index.next120, %n.vec90
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !99

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n122, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec90, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge59.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.ct, align 4
  ret void

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %._crit_edge59.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv to i32
  %i.cv = uitofp nneg i32 %i.cu to float
  %i.cw = fsub float %i.cv, %i.f
  %i.cx = tail call float @llvm.fabs.f32(float %i.cw)
  %i.cy = fdiv float %i.cx, %i.f
  %i.cz = tail call nsz float @llvm.maxnum.f32(float %i.cy, float %i.ab)
  %i.da = fsub float %i.cz, %3
  %i.db = fdiv float %i.da, %i.k
  %i.dc = tail call nsz float @llvm.maxnum.f32(float %i.db, float 0.000000e+00)
  %i.dd = tail call nsz float @llvm.minnum.f32(float %i.dc, float 1.000000e+00) ; 2 uses
  %i.de = fsub nnan float 1.000000e+00, %i.dd
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.df = insertelement <4 x float> poison, float %i.dd, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dh = fmul nnan <4 x float> %i.dg, %i.p
  %i.di = insertelement <4 x float> poison, float %i.de, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = fmul <4 x float> %i.dj, %i.u
  %i.dl = fadd <4 x float> %i.dh, %i.dk
  %i.dm = fptosi <4 x float> %i.dl to <4 x i32>
  %i.dn = trunc <4 x i32> %i.dm to <4 x i8>
  store <4 x i8> %i.dn, ptr %gep, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !100
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #17

; Function Attrs: nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @GenImageChecked(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 %6) local_unnamed_addr #29 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #53 ; 4 uses
  %i.e = icmp sgt i32 %2, 0
  %i.f = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge28.split

.preheader.preheader:                             ; preds = %bb.a
  %i.g = zext nneg i32 %1 to i64                  ; 3 uses
  %wide.trip.count33 = zext nneg i32 %2 to i64
  %xtraiter = and i64 %i.g, 1
  %i.h = icmp eq i32 %1, 1
  %unroll_iter = and i64 %i.g, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod38 = trunc i32 %1 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv30 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next31, %._crit_edge ] ; 3 uses
  %i.i = trunc nuw nsw i64 %indvars.iv30 to i32
  %i.j = sdiv i32 %i.i, %4                        ; 3 uses
  %i.k = mul nuw nsw i64 %indvars.iv30, %i.g      ; 3 uses
  br i1 %i.h, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %invariant.gep36.invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %invariant.gep36.invariant.gep.1 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  br label %bb.b

._crit_edge28.split:                              ; preds = %._crit_edge, %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.o, align 4
  ret void

._crit_edge.unr-lcssa:                            ; preds = %bb.b
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.p = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.q = sdiv i32 %i.p, %3
  %i.r = add nsw i32 %i.j, %i.q
  %i.s = and i32 %i.r, 1
  %i.t = icmp eq i32 %i.s, 0
  %invariant.gep36.invariant.gep.epil = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %..epil = select i1 %i.t, i32 %5, i32 %6
  %gep37.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep36.invariant.gep.epil, i64 %indvars.iv.epil.init
  store i32 %..epil, ptr %gep37.epil, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %._crit_edge28.split, label %.preheader

bb.b:                                             ; preds = %bb.b, %.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.new ], [ %niter.next.1, %bb.b ]
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = sdiv i32 %i.u, %3
  %i.w = add nsw i32 %i.j, %i.v
  %i.x = and i32 %i.w, 1
  %i.y = icmp eq i32 %i.x, 0
  %. = select i1 %i.y, i32 %5, i32 %6
  %gep37 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep36.invariant.gep, i64 %indvars.iv
  store i32 %., ptr %gep37, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.aa = sdiv i32 %i.z, %3
  %i.ab = add nsw i32 %i.j, %i.aa
  %i.ac = and i32 %i.ab, 1
  %i.ad = icmp eq i32 %i.ac, 0
  %..1 = select i1 %i.ad, i32 %5, i32 %6
  %gep37.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep36.invariant.gep.1, i64 %indvars.iv.next
  store i32 %..1, ptr %gep37.1, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.b
}

; Function Attrs: nounwind uwtable
define void @GenImageWhiteNoise(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = mul nsw i32 %2, %1                       ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #53 ; 2 uses
  %i.e = icmp sgt i32 %i.a, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = fmul float %3, 1.000000e+02
  %i.g = fptosi float %i.f to i32
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.k, align 4
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = tail call i32 @GetRandomValue(i32 noundef 0, i32 noundef 99) #52
  %i.m = icmp slt i32 %i.l, %i.g
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %. = select i1 %i.m, <4 x i8> splat (i8 -1), <4 x i8> <i8 0, i8 0, i8 0, i8 -1>
  store <4 x i8> %., ptr %i.n, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

declare i32 @GetRandomValue(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @GenImagePerlinNoise(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #29 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #53 ; 2 uses
  %i.e = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.f = insertelement <2 x i32> %i.e, i32 %2, i64 1
  %i.g = sitofp <2 x i32> %i.f to <2 x float>     ; 3 uses
  %i.h = extractelement <2 x float> %i.g, i64 0
  %i.i = extractelement <2 x float> %i.g, i64 1
  %i.j = fdiv float %i.h, %i.i                    ; 2 uses
  %i.k = icmp sgt i32 %2, 0
  br i1 %i.k, label %.preheader.lr.ph, label %._crit_edge49.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.l = icmp sgt i32 %1, 0
  %i.m = insertelement <2 x float> poison, float %5, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x float> %i.n, %i.g              ; 2 uses
  %i.p = icmp sgt i32 %1, %2                      ; 2 uses
  br i1 %i.l, label %.preheader.preheader, label %._crit_edge49.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.q = zext nneg i32 %1 to i64                  ; 2 uses
  %wide.trip.count54 = zext nneg i32 %2 to i64
  %i.r = extractelement <2 x float> %i.o, i64 1
  %i.s = extractelement <2 x float> %i.o, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv51 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next52, %._crit_edge ] ; 3 uses
  %i.t = trunc i64 %indvars.iv51 to i32
  %i.u = add i32 %4, %i.t
  %i.v = sitofp i32 %i.u to float
  %i.w = fmul float %i.r, %i.v                    ; 2 uses
  %i.x = fdiv float %i.w, %i.j
  %.042 = select i1 %i.p, float %i.w, float %i.x
  %i.y = mul nuw nsw i64 %indvars.iv51, %i.q
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.y
  %i.z = insertelement <2 x float> poison, float %.042, i64 0
  br label %bb.b

._crit_edge49.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.ad, align 4
  ret void

._crit_edge:                                      ; preds = %stb_perlin_fbm_noise3.exit
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %._crit_edge49.split, label %.preheader

bb.b:                                             ; preds = %.preheader, %stb_perlin_fbm_noise3.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %stb_perlin_fbm_noise3.exit ] ; 3 uses
  %i.ae = trunc i64 %indvars.iv to i32
  %i.af = add i32 %3, %i.ae
  %i.ag = sitofp i32 %i.af to float
  %i.ah = fmul float %i.s, %i.ag                  ; 2 uses
  %i.ai = fmul float %i.j, %i.ah
  %.040 = select i1 %i.p, float %i.ai, float %i.ah
  %i.aj = insertelement <2 x float> %i.z, float %.040, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.b
  %.022.i = phi float [ %i.im, %.lr.ph.i ], [ 0.000000e+00, %bb.b ]
  %.01819.i = phi i32 [ %i.io, %.lr.ph.i ], [ 0, %bb.b ] ; 3 uses
  %i.ak = phi <2 x float> [ %i.in, %.lr.ph.i ], [ splat (float 1.000000e+00), %bb.b ] ; 4 uses
  %i.al = extractelement <2 x float> %i.ak, i64 1 ; 3 uses
  %i.am = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.an = fmul <2 x float> %i.aj, %i.am           ; 4 uses
  %i.ao = fptosi <2 x float> %i.an to <2 x i32>   ; 3 uses
  %i.ap = sitofp <2 x i32> %i.ao to <2 x float>
  %i.aq = fcmp olt <2 x float> %i.an, %i.ap       ; 2 uses
  %i.ar = extractelement <2 x i1> %i.aq, i64 1
  %i.as = sext i1 %i.ar to i32
  %i.at = extractelement <2 x i32> %i.ao, i64 1
  %i.au = add nsw i32 %i.at, %i.as                ; 3 uses
  %i.av = extractelement <2 x i1> %i.aq, i64 0
  %i.aw = sext i1 %i.av to i32
  %i.ax = extractelement <2 x i32> %i.ao, i64 0
  %i.ay = add nsw i32 %i.ax, %i.aw                ; 3 uses
  %i.az = fptosi float %i.al to i32               ; 2 uses
  %i.ba = sitofp i32 %i.az to float
  %i.bb = fcmp olt float %i.al, %i.ba
  %i.bc = sext i1 %i.bb to i32
  %i.bd = add nsw i32 %i.bc, %i.az                ; 3 uses
  %i.be = and i32 %i.au, 255
  %i.bf = add nsw i32 %i.au, 1
  %i.bg = and i32 %i.bf, 255
  %i.bh = and i32 %i.ay, 255                      ; 2 uses
  %i.bi = add nsw i32 %i.ay, 1
  %i.bj = and i32 %i.bi, 255                      ; 2 uses
  %i.bk = and i32 %i.bd, 255                      ; 4 uses
  %i.bl = add nsw i32 %i.bd, 1
  %i.bm = and i32 %i.bl, 255                      ; 4 uses
  %i.bn = sitofp i32 %i.au to float
  %i.bo = sitofp i32 %i.ay to float
  %i.bp = extractelement <2 x float> %i.an, i64 0
  %i.bq = fsub float %i.bp, %i.bo                 ; 7 uses
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float 6.000000e+00, float -1.500000e+01)
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bq, float 1.000000e+01)
  %i.bt = fmul float %i.bq, %i.bs
  %i.bu = fmul float %i.bq, %i.bt
  %i.bv = fmul float %i.bq, %i.bu
  %i.bw = sitofp i32 %i.bd to float
  %i.bx = fsub float %i.al, %i.bw                 ; 7 uses
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float 6.000000e+00, float -1.500000e+01)
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.bx, float 1.000000e+01)
  %i.ca = fmul float %i.bx, %i.bz
  %i.cb = fmul float %i.bx, %i.ca
  %i.cc = fmul float %i.bx, %i.cb
  %i.cd = add nuw nsw i32 %i.be, %.01819.i
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i32                    ; 2 uses
  %i.ci = add nuw nsw i32 %i.bg, %.01819.i
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i32                    ; 2 uses
  %i.cn = add nuw nsw i32 %i.bh, %i.ch
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = zext i8 %i.cq to i32                    ; 2 uses
  %i.cs = add nuw nsw i32 %i.bj, %i.ch
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i32                    ; 2 uses
  %i.cx = add nuw nsw i32 %i.bh, %i.cm
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext i8 %i.da to i32                    ; 2 uses
  %i.dc = add nuw nsw i32 %i.bj, %i.cm
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i32                    ; 2 uses
  %i.dh = add nuw nsw i32 %i.bk, %i.cr
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1
end_hunk_5
begin_hunk_6_@ImageCopy:bb.a
  br i1 %.not, label %bb.c, label %bb.b

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %GetPixelDataSize.exit
  %.019 = phi i32 [ %i.bc, %GetPixelDataSize.exit ], [ 0, %.lr.ph.split.split.preheader ]
  %.01218 = phi i32 [ %i.az, %GetPixelDataSize.exit ], [ 0, %.lr.ph.split.split.preheader ]
  %i.as = phi <2 x i32> [ %i.bb, %GetPixelDataSize.exit ], [ %i.c, %.lr.ph.split.split.preheader ] ; 2 uses
  br i1 %i.z, label %switch.lookup61, label %GetPixelDataSize.exit

switch.lookup61:                                  ; preds = %.lr.ph.split.split
  %switch.load63 = load double, ptr %switch.gep62, align 8
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %switch.lookup61, %.lr.ph.split.split
  %.0.i = phi double [ 0.000000e+00, %.lr.ph.split.split ], [ %switch.load63, %switch.lookup61 ]
  %i.at = sitofp <2 x i32> %i.as to <2 x double>  ; 2 uses
  %i.au = extractelement <2 x double> %i.at, i64 0
  %i.av = fmul nnan double %.0.i, %i.au
  %i.aw = extractelement <2 x double> %i.at, i64 1
  %i.ax = fmul double %i.av, %i.aw
  %i.ay = fptosi double %i.ax to i32
  %i.az = add nsw i32 %.01218, %i.ay              ; 2 uses
  %i.ba = sdiv <2 x i32> %i.as, splat (i32 2)
  %i.bb = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ba, <2 x i32> splat (i32 1))
  %i.bc = add nuw nsw i32 %.019, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bc, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split

bb.b:                                             ; preds = %._crit_edge
  %i.bd = load ptr, ptr %1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr align 1 %i.bd, i64 %i.aq, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = extractelement <2 x i32> %i.c, i64 0
  store i32 %i.bf, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bh = extractelement <2 x i32> %i.c, i64 1
  store i32 %i.bh, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.e, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.bk, ptr %i.bl, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define void @ImageFromImage(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  switch i32 %i.b, label %bb.j [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 5, label %bb.c
    i32 6, label %bb.c
    i32 7, label %bb.d
    i32 4, label %.thread
    i32 8, label %bb.d
    i32 9, label %bb.e
    i32 10, label %bb.f
    i32 11, label %bb.c
    i32 12, label %bb.g
    i32 13, label %bb.h
    i32 24, label %bb.i
    i32 23, label %bb.b
    i32 20, label %bb.b
    i32 17, label %bb.b
    i32 16, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.j

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.j

bb.d:                                             ; preds = %bb.a, %bb.a
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  br label %.thread

bb.f:                                             ; preds = %bb.a
  br label %.thread

bb.g:                                             ; preds = %bb.a
  br label %.thread

bb.h:                                             ; preds = %bb.a
  br label %.thread

bb.i:                                             ; preds = %bb.a
  br label %.thread

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0.i = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 4, %bb.d ]
  %i.c = and i32 %i.b, -2
  %or.cond3.i = icmp eq i32 %i.c, 14
  br i1 %or.cond3.i, label %GetPixelDataSize.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %i.d = phi i32 [ %.0.i, %bb.j ], [ 8, %bb.h ], [ 6, %bb.g ], [ 16, %bb.f ], [ 12, %bb.e ], [ 0, %bb.i ], [ 3, %bb.a ]
  %i.e = and i32 %i.b, -8
  %or.cond5.i = icmp eq i32 %i.e, 16
  %spec.select.i = select i1 %or.cond5.i, i32 16, i32 %i.d
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.j, %.thread
  %.016.i = phi i32 [ %spec.select.i, %.thread ], [ 8, %bb.j ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = fptosi <2 x float> %3 to <2 x i32>       ; 3 uses
  store <2 x i32> %i.g, ptr %i.f, align 8
  %i.h = extractelement <2 x i32> %i.g, i64 0
  %i.i = mul i32 %.016.i, %i.h                    ; 5 uses
  %i.j = extractelement <2 x i32> %i.g, i64 1     ; 5 uses
  %i.k = mul i32 %i.i, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = tail call noalias ptr @calloc(i64 noundef %i.l, i64 noundef 1) #56 ; 4 uses
  store ptr %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.b, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.o, align 8
  %i.p = icmp sgt i32 %i.j, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %GetPixelDataSize.exit
  %i.q = load ptr, ptr %1, align 8                ; 3 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.r = fptosi float %.sroa.0.4.vec.extract to i32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %.sroa.0.0.vec.extract = extractelement <2 x float> %2, i64 0
  %i.u = fptosi float %.sroa.0.0.vec.extract to i32
  %i.v = sext i32 %i.i to i64                     ; 3 uses
  %i.w = sext i32 %i.r to i64                     ; 3 uses
  %i.x = sext i32 %i.t to i64                     ; 3 uses
  %i.y = sext i32 %i.u to i64                     ; 3 uses
  %i.z = zext nneg i32 %.016.i to i64             ; 3 uses
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.aa = icmp eq i32 %i.j, 1
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.k

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod22 = trunc i32 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.ab = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.ac = mul i32 %i.i, %i.ab
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.m, i64 %i.ad
  %i.af = add nsw i64 %indvars.iv.epil.init, %i.w
  %i.ag = mul nsw i64 %i.af, %i.x
  %i.ah = add nsw i64 %i.ag, %i.y
  %i.ai = mul nsw i64 %i.ah, %i.z
  %i.aj = getelementptr inbounds i8, ptr %i.q, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.aj, i64 %i.v, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %GetPixelDataSize.exit
  ret void

bb.k:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.k ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.k ]
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %i.al = mul i32 %i.i, %i.ak
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.m, i64 %i.am
  %i.ao = add nsw i64 %indvars.iv, %i.w
  %i.ap = mul nsw i64 %i.ao, %i.x
  %i.aq = add nsw i64 %i.ap, %i.y
  %i.ar = mul nsw i64 %i.aq, %i.z
  %i.as = getelementptr inbounds i8, ptr %i.q, i64 %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.as, i64 %i.v, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.at = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.au = mul i32 %i.i, %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.m, i64 %i.av
  %i.ax = add nsw i64 %indvars.iv.next, %i.w
  %i.ay = mul nsw i64 %i.ax, %i.x
  %i.az = add nsw i64 %i.ay, %i.y
  %i.ba = mul nsw i64 %i.az, %i.z
  %i.bb = getelementptr inbounds i8, ptr %i.q, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.bb, i64 %i.v, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.k
}

; Function Attrs: nounwind uwtable
define void @ImageCrop(ptr nofree noundef captures(none) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #34 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.i = fcmp olt float %.sroa.0.0.vec.extract, 0.000000e+00 ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %1, %2
  %.sroa.0.0.vec.insert = insertelement <2 x float> %1, float 0.000000e+00, i64 0
  %.sroa.0.0 = select i1 %i.i, <2 x float> %.sroa.0.0.vec.insert, <2 x float> %1 ; 4 uses
  %sel = select i1 %i.i, <2 x float> %foldExtExtBinop, <2 x float> %2
  %.sroa.16.0 = shufflevector <2 x float> %sel, <2 x float> %2, <2 x i32> <i32 0, i32 3> ; 3 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 1 ; 2 uses
  %i.j = fcmp olt float %.sroa.0.4.vec.extract, 0.000000e+00 ; 3 uses
  %foldExtExtBinop96 = fadd <2 x float> %.sroa.0.0, %.sroa.16.0
  %.sroa.16.12.vec.insert = shufflevector <2 x float> %.sroa.16.0, <2 x float> %foldExtExtBinop96, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0, float 0.000000e+00, i64 1
  %.sroa.0.4.vec.extract43.pre-phi = select i1 %i.j, float 0.000000e+00, float %.sroa.0.4.vec.extract ; 5 uses
  %.sroa.0.1 = select i1 %i.j, <2 x float> %.sroa.0.4.vec.insert, <2 x float> %.sroa.0.0 ; 2 uses
  %.sroa.16.1 = select i1 %i.j, <2 x float> %.sroa.16.12.vec.insert, <2 x float> %.sroa.16.0 ; 3 uses
  %.sroa.0.0.vec.extract32 = extractelement <2 x float> %.sroa.0.1, i64 0 ; 3 uses
  %foldExtExtBinop98 = fadd <2 x float> %.sroa.0.1, %.sroa.16.1
  %i.k = extractelement <2 x float> %foldExtExtBinop98, i64 0
  %i.l = sitofp i32 %i.d to float                 ; 3 uses
  %i.m = fcmp ogt float %i.k, %i.l
  %i.n = fsub float %i.l, %.sroa.0.0.vec.extract32
  %.sroa.16.8.vec.insert56 = insertelement <2 x float> %.sroa.16.1, float %i.n, i64 0
  %.sroa.16.2 = select i1 %i.m, <2 x float> %.sroa.16.8.vec.insert56, <2 x float> %.sroa.16.1 ; 3 uses
  %.sroa.16.12.vec.extract67 = extractelement <2 x float> %.sroa.16.2, i64 1
  %i.o = fadd float %.sroa.0.4.vec.extract43.pre-phi, %.sroa.16.12.vec.extract67
  %i.p = sitofp i32 %i.g to float                 ; 3 uses
  %i.q = fcmp ogt float %i.o, %i.p
  %i.r = fsub float %i.p, %.sroa.0.4.vec.extract43.pre-phi
  %.sroa.16.12.vec.insert69 = insertelement <2 x float> %.sroa.16.2, float %i.r, i64 1
  %.sroa.16.3 = select i1 %i.q, <2 x float> %.sroa.16.12.vec.insert69, <2 x float> %.sroa.16.2 ; 2 uses
  %i.s = fcmp ogt float %.sroa.0.0.vec.extract32, %i.l
  %i.t = fcmp ogt float %.sroa.0.4.vec.extract43.pre-phi, %i.p
  %or.cond = or i1 %i.s, %i.t
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.49) #52
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.50) #52
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = icmp sgt i32 %i.y, 13
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.51) #52
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %switch.tableidx = add i32 %i.y, -1             ; 2 uses
  %i.aa = icmp ult i32 %switch.tableidx, 13
  br i1 %i.aa, label %switch.lookup, label %GetPixelDataSize.exit

switch.lookup:                                    ; preds = %bb.j
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ImageFlipVertical, i64 %i.ab
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.j, %switch.lookup
  %i.ac = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.j ] ; 3 uses
  %.sroa.16.8.vec.extract58 = extractelement <2 x float> %.sroa.16.3, i64 0 ; 3 uses
  %.sroa.16.12.vec.extract71 = extractelement <2 x float> %.sroa.16.3, i64 1 ; 3 uses
  %i.ad = fmul float %.sroa.16.8.vec.extract58, %.sroa.16.12.vec.extract71
  %i.ae = fptosi float %i.ad to i32
  %i.af = mul nsw i32 %i.ac, %i.ae
  %i.ag = sext i32 %i.af to i64
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ag) #53 ; 4 uses
  %i.ai = fptosi float %.sroa.0.4.vec.extract43.pre-phi to i32 ; 2 uses
  %i.aj = fadd float %.sroa.0.4.vec.extract43.pre-phi, %.sroa.16.12.vec.extract71
  %i.ak = fptosi float %i.aj to i32               ; 2 uses
  %i.al = icmp slt i32 %i.ai, %i.ak
  %.pre = load ptr, ptr %0, align 8               ; 4 uses
  br i1 %i.al, label %.lr.ph, label %GetPixelDataSize.exit.._crit_edge_crit_edge

GetPixelDataSize.exit.._crit_edge_crit_edge:      ; preds = %GetPixelDataSize.exit
  %.pre90 = fptosi float %.sroa.16.8.vec.extract58 to i32
  br label %._crit_edge

.lr.ph:                                           ; preds = %GetPixelDataSize.exit
  %i.am = load i32, ptr %i.c, align 8
  %i.an = fptosi float %.sroa.0.0.vec.extract32 to i32
  %i.ao = fptosi float %.sroa.16.8.vec.extract58 to i32 ; 3 uses
  %i.ap = mul i32 %i.ac, %i.ao
  %i.aq = sext i32 %i.ap to i64                   ; 5 uses
  %i.ar = sext i32 %i.ai to i64                   ; 4 uses
  %i.as = sext i32 %i.am to i64                   ; 3 uses
  %i.at = sext i32 %i.an to i64                   ; 3 uses
  %i.au = zext nneg i32 %i.ac to i64              ; 3 uses
  %wide.trip.count = sext i32 %i.ak to i64        ; 2 uses
  %i.av = sub nsw i64 %wide.trip.count, %i.ar     ; 3 uses
  %xtraiter = and i64 %i.av, 1
  %i.aw = add nsw i64 %wide.trip.count, -1
  %i.ax = icmp eq i64 %i.aw, %i.ar
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.av, -2
  br label %bb.k

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv84.epil.init = phi i64 [ %i.ar, %.lr.ph ], [ %indvars.iv.next85.1, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod100 = trunc i64 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %i.ay = getelementptr inbounds i8, ptr %i.ah, i64 %indvars.iv.epil.init
  %i.az = mul nsw i64 %indvars.iv84.epil.init, %i.as
  %i.ba = add nsw i64 %i.az, %i.at
  %i.bb = mul nsw i64 %i.ba, %i.au
  %i.bc = getelementptr inbounds i8, ptr %.pre, i64 %i.bb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.bc, i64 %i.aq, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %GetPixelDataSize.exit.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre90, %GetPixelDataSize.exit.._crit_edge_crit_edge ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ], [ %i.ao, %.epil.preheader ]
  tail call void @free(ptr noundef %.pre) #52
  store ptr %i.ah, ptr %0, align 8
  store i32 %.pre-phi, ptr %i.c, align 8
  %i.bd = fptosi float %.sroa.16.12.vec.extract71 to i32
  store i32 %i.bd, ptr %i.f, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv84 = phi i64 [ %i.ar, %.lr.ph.new ], [ %indvars.iv.next85.1, %bb.k ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.k ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.k ]
  %i.be = getelementptr inbounds i8, ptr %i.ah, i64 %indvars.iv
  %i.bf = mul nsw i64 %indvars.iv84, %i.as
  %i.bg = add nsw i64 %i.bf, %i.at
  %i.bh = mul nsw i64 %i.bg, %i.au
  %i.bi = getelementptr inbounds i8, ptr %.pre, i64 %i.bh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.bi, i64 %i.aq, i1 false)
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.aq ; 2 uses
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1
  %i.bj = getelementptr inbounds i8, ptr %i.ah, i64 %indvars.iv.next
  %i.bk = mul nsw i64 %indvars.iv.next85, %i.as
  %i.bl = add nsw i64 %i.bk, %i.at
  %i.bm = mul nsw i64 %i.bl, %i.au
  %i.bn = getelementptr inbounds i8, ptr %.pre, i64 %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bn, i64 %i.aq, i1 false)
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %i.aq ; 2 uses
  %indvars.iv.next85.1 = add nsw i64 %indvars.iv84, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.k

bb.l:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge, %bb.i, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageFormat(ptr nofree noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 15 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 40 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.ak, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 40 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp ne i32 %1, 0
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.d, label %bb.ak

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  %.not = icmp eq i32 %i.k, %1
  br i1 %.not, label %bb.ak, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp slt i32 %i.k, 14
  %i.m = icmp slt i32 %1, 14
  %or.cond3 = and i1 %i.m, %i.l
  br i1 %or.cond3, label %.preheader.i, label %bb.aj

.preheader.i:                                     ; preds = %bb.e
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = mul nsw i32 %i.g, %i.d                   ; 3 uses
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 4
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #53 ; 27 uses
  %i.r = icmp sgt i32 %i.n, 0
  br i1 %i.r, label %.lr.ph.i, label %LoadImageDataNormalized.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.t, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.t ] ; 18 uses
  %.0159174.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.t ] ; 23 uses
  switch i32 %i.k, label %bb.t [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 5, label %bb.i
    i32 3, label %bb.j
    i32 6, label %bb.k
    i32 7, label %bb.l
    i32 4, label %bb.m
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 10, label %bb.p
    i32 11, label %bb.q
    i32 12, label %bb.r
    i32 13, label %bb.s
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i ; 3 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = uitofp i8 %i.t to float
  %i.v = fdiv float %i.u, 2.550000e+02
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 4 uses
  store float %i.v, ptr %i.w, align 4
  %i.x = load i8, ptr %i.s, align 1
  %i.y = uitofp i8 %i.x to float
  %i.z = fdiv float %i.y, 2.550000e+02
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store float %i.z, ptr %i.aa, align 4
  %i.ab = load i8, ptr %i.s, align 1
  %i.ac = uitofp i8 %i.ab to float
  %i.ad = fdiv float %i.ac, 2.550000e+02
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store float %i.ad, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store float 1.000000e+00, ptr %i.af, align 4
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.ag = sext i32 %.0159174.i to i64
  %i.ah = getelementptr inbounds i8, ptr %i.a, i64 %i.ag ; 4 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = uitofp i8 %i.ai to float
  %i.ak = fdiv float %i.aj, 2.550000e+02
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 4 uses
  store float %i.ak, ptr %i.al, align 4
  %i.am = load i8, ptr %i.ah, align 1
  %i.an = uitofp i8 %i.am to float
  %i.ao = fdiv float %i.an, 2.550000e+02
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store float %i.ao, ptr %i.ap, align 4
  %i.aq = load i8, ptr %i.ah, align 1
  %i.ar = uitofp i8 %i.aq to float
  %i.as = fdiv float %i.ar, 2.550000e+02
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store float %i.as, ptr %i.at, align 4
  %i.au = getelementptr i8, ptr %i.ah, i64 1
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = uitofp i8 %i.av to float
  %i.ax = fdiv float %i.aw, 2.550000e+02
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store float %i.ax, ptr %i.ay, align 4
  %i.az = add nsw i32 %.0159174.i, 2
  br label %bb.t

bb.i:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = zext i16 %i.bb to i32                   ; 4 uses
  %i.bd = lshr i32 %i.bc, 11
  %i.be = uitofp nneg i32 %i.bd to float
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.bg = lshr i32 %i.bc, 6
  %i.bh = and i32 %i.bg, 31
  %i.bi = uitofp nneg i32 %i.bh to float
  %i.bj = lshr i32 %i.bc, 1
  %i.bk = and i32 %i.bj, 31
  %i.bl = uitofp nneg i32 %i.bk to float
  %i.bm = and i32 %i.bc, 1
  %i.bn = icmp eq i32 %i.bm, 0
  %i.bo = select i1 %i.bn, float 0.000000e+00, float 1.000000e+00
  %i.bp = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bi, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.bl, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 3
  %i.bt = fmul <4 x float> %i.bs, <float f0x3D042108, float f0x3D042108, float f0x3D042108, float 1.000000e+00>
  store <4 x float> %i.bt, ptr %i.bf, align 4
  br label %bb.t

bb.j:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = zext i16 %i.bv to i32                   ; 3 uses
  %i.bx = lshr i32 %i.bw, 11
  %i.by = uitofp nneg i32 %i.bx to float
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.ca = lshr i32 %i.bw, 5
  %i.cb = and i32 %i.ca, 63
  %i.cc = uitofp nneg i32 %i.cb to float
  %i.cd = and i32 %i.bw, 31
  %i.ce = uitofp nneg i32 %i.cd to float
  %i.cf = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.by, i64 0
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 1
  %i.ch = insertelement <4 x float> %i.cg, float %i.ce, i64 2
  %i.ci = fmul nnan <4 x float> %i.ch, <float f0x3D042108, float f0x3C820821, float f0x3D042108, float 1.000000e+00>
  store <4 x float> %i.ci, ptr %i.bz, align 4
  br label %bb.t

bb.k:                                             ; preds = %bb.f
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.cm = zext i16 %i.ck to i32                   ; 4 uses
  %i.cn = lshr i32 %i.cm, 4
  %i.co = lshr i32 %i.cm, 8
  %i.cp = lshr i32 %i.cm, 12
  %i.cq = insertelement <4 x i32> poison, i32 %i.cp, i64 0
  %i.cr = insertelement <4 x i32> %i.cq, i32 %i.co, i64 1
  %i.cs = insertelement <4 x i32> %i.cr, i32 %i.cn, i64 2
  %i.ct = insertelement <4 x i32> %i.cs, i32 %i.cm, i64 3
  %i.cu = and <4 x i32> %i.ct, <i32 -1, i32 15, i32 15, i32 15>
  %i.cv = uitofp nneg <4 x i32> %i.cu to <4 x float>
  %i.cw = fmul nnan <4 x float> %i.cv, splat (float f0x3D888889)
  store <4 x float> %i.cw, ptr %i.cl, align 4
  br label %bb.t

bb.l:                                             ; preds = %bb.f
  %i.cx = sext i32 %.0159174.i to i64
  %i.cy = getelementptr inbounds i8, ptr %i.a, i64 %i.cx ; 4 uses
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = uitofp i8 %i.cz to float
  %i.db = fdiv float %i.da, 2.550000e+02
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 4 uses
  store float %i.db, ptr %i.dc, align 4
  %i.dd = getelementptr i8, ptr %i.cy, i64 1
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = uitofp i8 %i.de to float
  %i.dg = fdiv float %i.df, 2.550000e+02
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store float %i.dg, ptr %i.dh, align 4
  %i.di = getelementptr i8, ptr %i.cy, i64 2
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = uitofp i8 %i.dj to float
  %i.dl = fdiv float %i.dk, 2.550000e+02
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
end_hunk_6
begin_hunk_7_@ImageDraw:bb.a
  %spec.select.i283 = select i1 %or.cond5.i282, i32 16, i32 %i.fc
  br label %GetPixelDataSize.exit284

GetPixelDataSize.exit284:                         ; preds = %bb.ah, %bb.ai, %bb.aj
  %.016.i280 = phi i32 [ %i.fc, %bb.ah ], [ 8, %bb.ai ], [ %spec.select.i283, %bb.aj ]
  %i.fh = sext i32 %.016.i280 to i64
  %i.fi = getelementptr inbounds i8, ptr %i.ep, i64 %i.fh
  store ptr %i.fi, ptr %9, align 8
  %i.fj = sdiv <2 x i32> %i.er, splat (i32 2)
  store <2 x i32> %i.fj, ptr %i.eq, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 8
  %i.fm = add nsw i32 %i.fl, -1
  store i32 %i.fm, ptr %i.fk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.fn = load ptr, ptr %10, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.fp = load <2 x i32>, ptr %i.fo, align 8      ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.fr = load i32, ptr %i.fq, align 4            ; 3 uses
  %switch.tableidx362 = add i32 %i.fr, -1         ; 2 uses
  %i.fs = icmp ult i32 %switch.tableidx362, 24
  br i1 %i.fs, label %switch.lookup363, label %bb.ak

switch.lookup363:                                 ; preds = %GetPixelDataSize.exit284
  %i.ft = zext nneg i32 %switch.tableidx362 to i64
  %switch.gep364 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ImageDraw.30, i64 %i.ft
  %switch.load365 = load double, ptr %switch.gep364, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %switch.lookup363, %GetPixelDataSize.exit284
  %.0.i285 = phi double [ 0.000000e+00, %GetPixelDataSize.exit284 ], [ %switch.load365, %switch.lookup363 ]
  %i.fu = extractelement <2 x i32> %i.fp, i64 0   ; 2 uses
  %i.fv = sitofp i32 %i.fu to double
  %i.fw = fmul nnan double %.0.i285, %i.fv
  %i.fx = extractelement <2 x i32> %i.fp, i64 1   ; 2 uses
  %i.fy = sitofp i32 %i.fx to double
  %i.fz = fmul double %i.fw, %i.fy
  %i.ga = fptosi double %i.fz to i32              ; 2 uses
  %i.gb = icmp slt i32 %i.fu, 4
  %i.gc = icmp slt i32 %i.fx, 4
  %or.cond.i286 = and i1 %i.gb, %i.gc
  br i1 %or.cond.i286, label %bb.al, label %GetPixelDataSize.exit291

bb.al:                                            ; preds = %bb.ak
  %i.gd = and i32 %i.fr, -2
  %or.cond3.i288 = icmp eq i32 %i.gd, 14
  br i1 %or.cond3.i288, label %GetPixelDataSize.exit291, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ge = and i32 %i.fr, -8
  %or.cond5.i289 = icmp eq i32 %i.ge, 16
  %spec.select.i290 = select i1 %or.cond5.i289, i32 16, i32 %i.ga
  br label %GetPixelDataSize.exit291

GetPixelDataSize.exit291:                         ; preds = %bb.ak, %bb.al, %bb.am
  %.016.i287 = phi i32 [ %i.ga, %bb.ak ], [ 8, %bb.al ], [ %spec.select.i290, %bb.am ]
  %i.gf = sext i32 %.016.i287 to i64
  %i.gg = getelementptr inbounds i8, ptr %i.fn, i64 %i.gf
  store ptr %i.gg, ptr %10, align 8
  %i.gh = sdiv <2 x i32> %i.fp, splat (i32 2)
  store <2 x i32> %i.gh, ptr %i.fo, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 8
  %i.gk = add nsw i32 %i.gj, -1
  store i32 %i.gk, ptr %i.gi, align 8
  %i.gl = fmul <2 x float> %.sroa.21.8, splat (float 5.000000e-01)
  %i.gm = fmul <2 x float> %.sroa.0136.4, splat (float 5.000000e-01)
  %i.gn = fmul <2 x float> %5, splat (float 5.000000e-01)
  %i.go = fmul <2 x float> %.sroa.0107.1, splat (float 5.000000e-01)
  call void @ImageDraw(ptr noundef nonnull %9, ptr noundef nonnull byval(%struct.Image) align 8 %10, <2 x float> %i.gm, <2 x float> %i.gl, <2 x float> %i.go, <2 x float> %i.gn, i32 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #52
  br label %bb.an

bb.an:                                            ; preds = %GetPixelDataSize.exit291, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #52
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %bb.b, %bb.c, %bb.an, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageResizeNN(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %0) ; 4 uses
  %i.j = mul nsw i32 %2, %1
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #53 ; 2 uses
  %i.n = load i32, ptr %i.c, align 8              ; 2 uses
  %i.o = icmp sgt i32 %2, 0
  %i.p = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.o, %i.p
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge44.split

.preheader.preheader:                             ; preds = %bb.d
  %i.q = load i32, ptr %i.f, align 4
  %i.r = shl i32 %i.q, 16
  %i.s = sdiv i32 %i.r, %2
  %i.t = add nsw i32 %i.s, 1
  %i.u = shl i32 %i.n, 16
  %i.v = sdiv i32 %i.u, %1
  %i.w = add nsw i32 %i.v, 1                      ; 3 uses
  %i.x = zext nneg i32 %1 to i64                  ; 3 uses
  %wide.trip.count49 = zext nneg i32 %2 to i64
  %xtraiter = and i64 %i.x, 1
  %i.y = icmp eq i32 %1, 1
  %unroll_iter = and i64 %i.x, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod52 = trunc i32 %1 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv46 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next47, %._crit_edge ] ; 3 uses
  %i.z = trunc i64 %indvars.iv46 to i32
  %i.aa = mul i32 %i.t, %i.z
  %i.ab = ashr i32 %i.aa, 16
  %i.ac = mul nuw nsw i64 %indvars.iv46, %i.x
  %i.ad = mul nsw i32 %i.ab, %i.n                 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ac ; 3 uses
  br i1 %i.y, label %.epil.preheader, label %.preheader.new

._crit_edge44.split:                              ; preds = %._crit_edge, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.ag) #52
  store ptr %i.m, ptr %0, align 8
  store i32 %1, ptr %i.c, align 8
  store i32 %2, ptr %i.f, align 4
  store i32 7, ptr %i.ae, align 4
  tail call void @ImageFormat(ptr noundef nonnull %0, i32 noundef %i.af)
  tail call void @free(ptr noundef %i.i) #52
  br label %bb.e

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod52)
  %i.ah = trunc i64 %indvars.iv.epil.init to i32
  %i.ai = mul i32 %i.w, %i.ah
  %i.aj = ashr i32 %i.ai, 16
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.ak = add nsw i32 %i.aj, %i.ad
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.al
  %i.an = load i32, ptr %i.am, align 1
  store i32 %i.an, ptr %gep.epil, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %._crit_edge44.split, label %.preheader

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ao = trunc i64 %indvars.iv to i32
  %i.ap = mul i32 %i.w, %i.ao
  %i.aq = ashr i32 %i.ap, 16
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ar = add nsw i32 %i.aq, %i.ad
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.as
  %i.au = load i32, ptr %i.at, align 1
  store i32 %i.au, ptr %gep, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.av = trunc i64 %indvars.iv.next to i32
  %i.aw = mul i32 %i.w, %i.av
  %i.ax = ashr i32 %i.aw, 16
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ay = add nsw i32 %i.ax, %i.ad
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 1
  store i32 %i.bb, ptr %gep.1, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge44.split
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageResize(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4
  %switch.tableidx = add i32 %i.j, -1             ; 3 uses
  %i.k = icmp ult i32 %switch.tableidx, 7
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 75, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.k, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %bb.d
  %i.l = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ImageResize.31, i64 %i.l
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.m = mul nsw i32 %2, %1
  %i.n = mul nsw i32 %i.m, %switch.ext
  %i.o = sext i32 %i.n to i64
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #53 ; 2 uses
  %i.q = load i32, ptr %i.i, align 4
  %switch.tableidx67 = add i32 %i.q, -1           ; 3 uses
  %i.r = icmp ult i32 %switch.tableidx67, 7
  %switch.maskindex70 = trunc i32 %switch.tableidx67 to i8
  %switch.shifted71 = lshr i8 75, %switch.maskindex70
  %switch.lobit72 = trunc i8 %switch.shifted71 to i1
  %or.cond76 = select i1 %i.r, i1 %switch.lobit72, i1 false
  br i1 %or.cond76, label %switch.lookup69, label %bb.e

switch.lookup69:                                  ; preds = %switch.lookup
  %i.s = zext nneg i32 %switch.tableidx67 to i64
  %switch.gep73 = getelementptr inbounds nuw i8, ptr @switch.table.ImageResize.31, i64 %i.s
  %switch.load74 = load i8, ptr %switch.gep73, align 1
  %switch.ext75 = zext i8 %switch.load74 to i32
  %i.t = load i32, ptr %i.c, align 8
  %i.u = load i32, ptr %i.f, align 4
  %i.v = tail call fastcc ptr @stbir_quick_resize_helper(ptr noundef nonnull %i.a, i32 noundef %i.t, i32 noundef %i.u, i32 noundef 0, ptr noundef %i.p, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef %switch.ext75, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %switch.lookup69
  %i.w = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.w) #52
  store ptr %i.p, ptr %0, align 8
  store i32 %1, ptr %i.c, align 8
  store i32 %2, ptr %i.f, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %0) ; 2 uses
  %i.y = mul nsw i32 %2, %1
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 2
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #53 ; 2 uses
  %i.ac = load i32, ptr %i.c, align 8
  %i.ad = load i32, ptr %i.f, align 4
  %i.ae = tail call fastcc ptr @stbir_quick_resize_helper(ptr noundef %i.x, i32 noundef %i.ac, i32 noundef %i.ad, i32 noundef 0, ptr noundef %i.ab, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.af = load i32, ptr %i.i, align 4
  tail call void @free(ptr noundef %i.x) #52
  %i.ag = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.ag) #52
  store ptr %i.ab, ptr %0, align 8
  store i32 %1, ptr %i.c, align 8
  store i32 %2, ptr %i.f, align 4
  store i32 7, ptr %i.i, align 4
  tail call void @ImageFormat(ptr noundef nonnull %0, i32 noundef %i.af)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageFromChannel(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8                ; 14 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load <4 x i32>, ptr %i.c, align 8
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = load i32, ptr %i.c, align 8              ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.h
  %i.i = icmp eq i32 %i.f, 0
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond5, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %2, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.54) #52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.087 = phi i32 [ 0, %bb.c ], [ %2, %bb.b ]     ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4              ; 6 uses
  switch i32 %i.l, label %bb.g [
    i32 11, label %bb.e
    i32 8, label %bb.e
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %.not = icmp eq i32 %.087, 0
  br i1 %.not, label %.thread, label %.thread.sink.split

bb.f:                                             ; preds = %bb.d
  %i.m = icmp samesign ugt i32 %.087, 1
  br i1 %i.m, label %.thread.sink.split, label %.thread

bb.g:                                             ; preds = %bb.d
  %i.n = add i32 %i.l, -3
  %or.cond14 = icmp ult i32 %i.n, 2
  %i.o = icmp eq i32 %i.l, 9
  %or.cond17 = or i1 %i.o, %or.cond14
  %i.p = icmp eq i32 %i.l, 12
  %or.cond20 = or i1 %i.p, %or.cond17
  %i.q = icmp samesign ugt i32 %.087, 2
  %or.cond22 = select i1 %or.cond20, i1 %i.q, i1 false
  br i1 %or.cond22, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = icmp samesign ugt i32 %.087, 3
  br i1 %i.r, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.str.57.sink = phi ptr [ @.str.56, %bb.f ], [ @.str.55, %bb.e ], [ @.str.57, %bb.g ], [ @.str.58, %bb.h ]
  %.289.ph = phi i32 [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.g ], [ 3, %bb.h ]
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull %.str.57.sink) #52
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.f, %bb.e, %bb.h
  %.289 = phi i32 [ %.087, %bb.f ], [ %.087, %bb.h ], [ 0, %bb.e ], [ %.289.ph, %.thread.sink.split ] ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = shufflevector <4 x i32> %i.e, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.t, ptr %i.s, align 8
  %i.u = mul nsw i32 %i.f, %i.g                   ; 3 uses
  %i.v = sext i32 %i.u to i64
  %i.w = tail call noalias ptr @calloc(i64 noundef %i.v, i64 noundef 1) #56 ; 2 uses
  %i.x = icmp sgt i32 %i.l, 13
  br i1 %i.x, label %bb.i, label %.preheader

.preheader:                                       ; preds = %.thread
  %i.y = icmp sgt i32 %i.u, 0
  br i1 %i.y, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.z = zext nneg i32 %.289 to i64
  %wide.trip.count = zext nneg i32 %i.u to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.z
  br label %.lr.ph

bb.i:                                             ; preds = %.thread
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.59) #52
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ai
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ai ] ; 6 uses
  %.084100 = phi i32 [ 0, %.lr.ph.preheader ], [ %.185, %bb.ai ] ; 29 uses
  switch i32 %i.l, label %bb.ai [
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 5, label %bb.l
    i32 3, label %bb.q
    i32 6, label %bb.u
    i32 7, label %bb.aa
    i32 4, label %bb.ab
    i32 8, label %bb.ac
    i32 9, label %bb.ad
end_hunk_7
begin_hunk_8_@UnloadImageColors:bb.a
; Function Attrs: nounwind uwtable
define void @ImageResizeCanvas(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 %5) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.50) #52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp sgt i32 %i.m, 13
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.51) #52
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq i32 %1, %i.o
  %.pre = load i32, ptr %i.f, align 4             ; 3 uses
  %.not96 = icmp eq i32 %2, %.pre
  %or.cond = select i1 %.not, i1 %.not96, i1 false
  br i1 %or.cond, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = sitofp i32 %i.o to float                 ; 2 uses
  %i.q = sitofp i32 %.pre to float                ; 2 uses
  %i.r = sitofp i32 %3 to float                   ; 3 uses
  %i.s = sitofp i32 %4 to float                   ; 3 uses
  %i.t = icmp slt i32 %3, 0
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = sub nsw i32 0, %3
  %i.v = uitofp nneg i32 %i.u to float
  %i.w = fadd float %i.r, %i.p
  %i.x = fptosi float %i.v to i32
  %i.y = sext i32 %i.x to i64
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.z = add nsw i32 %i.o, %3
  %i.aa = icmp sgt i32 %i.z, %1
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = sub nsw i32 %1, %3
  %i.ac = sitofp i32 %i.ab to float
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.sroa.8.0 = phi float [ %i.w, %bb.j ], [ %i.ac, %bb.l ], [ %i.p, %bb.k ] ; 2 uses
  %.sroa.026.0 = phi i64 [ %i.y, %bb.j ], [ 0, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.j ], [ %i.r, %bb.l ], [ %i.r, %bb.k ]
  %i.ad = icmp slt i32 %4, 0
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ae = sub nsw i32 0, %4
  %i.af = uitofp nneg i32 %i.ae to float
  %i.ag = fadd float %i.s, %i.q
  %i.ah = fptosi float %i.af to i32
  %i.ai = sext i32 %i.ah to i64
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.aj = add nsw i32 %.pre, %4
  %i.ak = icmp sgt i32 %i.aj, %2
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = sub nsw i32 %2, %4
  %i.am = sitofp i32 %i.al to float
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.sroa.15.0 = phi float [ %i.ag, %bb.n ], [ %i.am, %bb.p ], [ %i.q, %bb.o ] ; 2 uses
  %.sroa.527.0 = phi i64 [ %i.ai, %bb.n ], [ 0, %bb.p ], [ 0, %bb.o ] ; 3 uses
  %.sroa.5.0 = phi float [ 0.000000e+00, %bb.n ], [ %i.s, %bb.p ], [ %i.s, %bb.o ]
  %i.an = sitofp i32 %1 to float                  ; 2 uses
  %i.ao = fcmp ogt float %.sroa.8.0, %i.an
  %.sroa.8.1 = select i1 %i.ao, float %i.an, float %.sroa.8.0
  %i.ap = sitofp i32 %2 to float                  ; 2 uses
  %i.aq = fcmp ogt float %.sroa.15.0, %i.ap
  %.sroa.15.1 = select i1 %i.aq, float %i.ap, float %.sroa.15.0
  %switch.tableidx = add i32 %i.m, -1             ; 2 uses
  %i.ar = icmp ult i32 %switch.tableidx, 13
  br i1 %i.ar, label %switch.lookup, label %GetPixelDataSize.exit

switch.lookup:                                    ; preds = %bb.q
  %i.as = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ImageFlipVertical, i64 %i.as
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.q, %switch.lookup
  %i.at = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.q ] ; 7 uses
  %i.au = mul nsw i32 %2, %1
  %i.av = mul nsw i32 %i.au, %i.at
  %i.aw = sext i32 %i.av to i64
  %i.ax = tail call noalias ptr @calloc(i64 noundef %i.aw, i64 noundef 1) #56 ; 21 uses
  %i.ay = load i32, ptr %i.l, align 4
  tail call void @SetPixelColor(ptr noundef %i.ax, i32 %5, i32 noundef %i.ay)
  %i.az = icmp sgt i32 %1, 1
  br i1 %i.az, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %GetPixelDataSize.exit
  %i.ba = zext nneg i32 %i.at to i64              ; 10 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.bb = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.bb, 3                    ; 3 uses
  %i.bc = add nsw i32 %1, -2
  %i.bd = icmp ult i32 %i.bc, 3
  br i1 %i.bd, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bb, -4
  br label %bb.s

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.r ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.be = mul nuw nsw i64 %indvars.iv.epil, %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.be
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.ax, i64 %i.ba, i1 false)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.r, !llvm.loop !106

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.r, %GetPixelDataSize.exit
  %i.bg = icmp sgt i32 %2, 1
  br i1 %i.bg, label %.lr.ph101, label %._crit_edge

.lr.ph101:                                        ; preds = %.preheader
  %i.bh = mul i32 %i.at, %1                       ; 4 uses
  %i.bi = sext i32 %i.bh to i64                   ; 3 uses
  %wide.trip.count111 = zext nneg i32 %2 to i64
  %i.bj = add nsw i64 %wide.trip.count111, -1     ; 3 uses
  %xtraiter133 = and i64 %i.bj, 1
  %i.bk = icmp eq i32 %2, 2
  br i1 %i.bk, label %.epil.preheader132, label %.lr.ph101.new

.lr.ph101.new:                                    ; preds = %.lr.ph101
  %unroll_iter137 = and i64 %i.bj, -2
  br label %bb.t

bb.s:                                             ; preds = %bb.s, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.s ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.s ]
  %i.bl = mul nuw nsw i64 %indvars.iv, %i.ba
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.ax, i64 %i.ba, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bn = mul nuw nsw i64 %indvars.iv.next, %i.ba
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.ax, i64 %i.ba, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %i.bp = mul nuw nsw i64 %indvars.iv.next.1, %i.ba
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.ax, i64 %i.ba, i1 false)
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %i.br = mul nuw nsw i64 %indvars.iv.next.2, %i.ba
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.br
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.ax, i64 %i.ba, i1 false)
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.s

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  %lcmp.mod135.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod135.not, label %._crit_edge, label %.epil.preheader132

.epil.preheader132:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph101
  %indvars.iv108.epil.init = phi i64 [ 1, %.lr.ph101 ], [ %indvars.iv.next109.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod136 = trunc i64 %i.bj to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.bt = trunc nuw nsw i64 %indvars.iv108.epil.init to i32
  %i.bu = mul i32 %i.bh, %i.bt
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %i.ax, i64 %i.bv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.ax, i64 %i.bi, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader132, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.bx = fptosi float %.sroa.15.1 to i32         ; 4 uses
  %i.by = icmp sgt i32 %i.bx, 0
  %.pre122 = load ptr, ptr %0, align 8            ; 4 uses
  br i1 %i.by, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %._crit_edge
  %i.bz = fptosi float %.sroa.5.0 to i32
  %i.ca = mul i32 %1, %i.bz
  %i.cb = fptosi float %.sroa.0.0 to i32
  %i.cc = add i32 %i.ca, %i.cb
  %i.cd = mul i32 %i.at, %i.cc
  %i.ce = load i32, ptr %i.c, align 8
  %i.cf = fptosi float %.sroa.8.1 to i32
  %i.cg = mul nsw i32 %i.at, %i.cf
  %i.ch = sext i32 %i.cg to i64                   ; 3 uses
  %i.ci = mul i32 %i.at, %1
  %i.cj = sext i32 %i.ce to i64                   ; 3 uses
  %i.ck = zext nneg i32 %i.at to i64              ; 3 uses
  %i.cl = sext i32 %i.cd to i64                   ; 2 uses
  %i.cm = sext i32 %i.ci to i64                   ; 2 uses
  %wide.trip.count120 = zext nneg i32 %i.bx to i64 ; 2 uses
  %xtraiter140 = and i64 %wide.trip.count120, 1
  %i.cn = icmp eq i32 %i.bx, 1
  br i1 %i.cn, label %.epil.preheader139, label %.lr.ph105.new

.lr.ph105.new:                                    ; preds = %.lr.ph105
  %unroll_iter144 = and i64 %wide.trip.count120, 2147483646
  br label %bb.u

bb.t:                                             ; preds = %bb.t, %.lr.ph101.new
  %indvars.iv108 = phi i64 [ 1, %.lr.ph101.new ], [ %indvars.iv.next109.1, %bb.t ] ; 3 uses
  %niter138 = phi i64 [ 0, %.lr.ph101.new ], [ %niter138.next.1, %bb.t ]
  %i.co = trunc nuw nsw i64 %indvars.iv108 to i32
  %i.cp = mul i32 %i.bh, %i.co
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %i.ax, i64 %i.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr align 1 %i.ax, i64 %i.bi, i1 false)
  %i.cs = trunc i64 %indvars.iv108 to i32
  %i.ct = add i32 %i.cs, 1
  %i.cu = mul i32 %i.bh, %i.ct
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %i.ax, i64 %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %i.ax, i64 %i.bi, i1 false)
  %indvars.iv.next109.1 = add nuw nsw i64 %indvars.iv108, 2 ; 2 uses
  %niter138.next.1 = add nuw i64 %niter138, 2     ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.t

._crit_edge106.loopexit.unr-lcssa:                ; preds = %bb.u
  %lcmp.mod142.not = icmp eq i64 %xtraiter140, 0
  br i1 %lcmp.mod142.not, label %._crit_edge106, label %.epil.preheader139

.epil.preheader139:                               ; preds = %._crit_edge106.loopexit.unr-lcssa, %.lr.ph105
  %indvars.iv115.epil.init = phi i64 [ %i.cl, %.lr.ph105 ], [ %indvars.iv.next116.1, %._crit_edge106.loopexit.unr-lcssa ]
  %indvars.iv113.epil.init = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next114.1, %._crit_edge106.loopexit.unr-lcssa ]
  %lcmp.mod143 = trunc i32 %i.bx to i1
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %i.cx = getelementptr inbounds i8, ptr %i.ax, i64 %indvars.iv115.epil.init
  %i.cy = add nsw i64 %indvars.iv113.epil.init, %.sroa.527.0
  %i.cz = mul nsw i64 %i.cy, %i.cj
  %i.da = add nsw i64 %i.cz, %.sroa.026.0
  %i.db = mul nsw i64 %i.da, %i.ck
  %i.dc = getelementptr inbounds i8, ptr %.pre122, i64 %i.db
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.dc, i64 %i.ch, i1 false)
  br label %._crit_edge106

._crit_edge106:                                   ; preds = %.epil.preheader139, %._crit_edge106.loopexit.unr-lcssa, %._crit_edge
  tail call void @free(ptr noundef %.pre122) #52
  store ptr %i.ax, ptr %0, align 8
  store i32 %1, ptr %i.c, align 8
  store i32 %2, ptr %i.f, align 4
  br label %bb.v

bb.u:                                             ; preds = %bb.u, %.lr.ph105.new
  %indvars.iv115 = phi i64 [ %i.cl, %.lr.ph105.new ], [ %indvars.iv.next116.1, %bb.u ] ; 2 uses
  %indvars.iv113 = phi i64 [ 0, %.lr.ph105.new ], [ %indvars.iv.next114.1, %bb.u ] ; 3 uses
  %niter145 = phi i64 [ 0, %.lr.ph105.new ], [ %niter145.next.1, %bb.u ]
  %i.dd = getelementptr inbounds i8, ptr %i.ax, i64 %indvars.iv115
  %i.de = add nsw i64 %indvars.iv113, %.sroa.527.0
  %i.df = mul nsw i64 %i.de, %i.cj
  %i.dg = add nsw i64 %i.df, %.sroa.026.0
  %i.dh = mul nsw i64 %i.dg, %i.ck
  %i.di = getelementptr inbounds i8, ptr %.pre122, i64 %i.dh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr align 1 %i.di, i64 %i.ch, i1 false)
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, %i.cm ; 2 uses
  %indvars.iv.next114 = or disjoint i64 %indvars.iv113, 1
  %i.dj = getelementptr inbounds i8, ptr %i.ax, i64 %indvars.iv.next116
  %i.dk = add nsw i64 %indvars.iv.next114, %.sroa.527.0
  %i.dl = mul nsw i64 %i.dk, %i.cj
  %i.dm = add nsw i64 %i.dl, %.sroa.026.0
  %i.dn = mul nsw i64 %i.dm, %i.ck
  %i.do = getelementptr inbounds i8, ptr %.pre122, i64 %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %i.do, i64 %i.ch, i1 false)
  %indvars.iv.next116.1 = add nsw i64 %indvars.iv.next116, %i.cm ; 2 uses
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %niter145.next.1 = add nuw i64 %niter145, 2     ; 2 uses
  %niter145.ncmp.1 = icmp eq i64 %niter145.next.1, %unroll_iter144
  br i1 %niter145.ncmp.1, label %._crit_edge106.loopexit.unr-lcssa, label %bb.u

bb.v:                                             ; preds = %bb.h, %._crit_edge106, %bb.a, %bb.b, %bb.c, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @SetPixelColor(ptr nofree noundef writeonly captures(none) %0, i32 %1, i32 noundef %2) local_unnamed_addr #19 {
bb.a:
  %.sroa.039.0.extract.trunc = trunc i32 %1 to i8 ; 3 uses
  %.sroa.846.0.extract.shift = lshr i32 %1, 8     ; 2 uses
  %.sroa.15.0.extract.shift = lshr i32 %1, 16     ; 2 uses
  %.sroa.22.0.extract.shift = lshr i32 %1, 24     ; 2 uses
  %i.a = trunc i32 %.sroa.846.0.extract.shift to i8 ; 2 uses
  %.sroa.846.0.extract.trunc = trunc i32 %.sroa.846.0.extract.shift to i8 ; 4 uses
  %.sroa.15.0.extract.trunc = trunc i32 %.sroa.15.0.extract.shift to i8 ; 5 uses
  %.sroa.22.0.extract.trunc = trunc nuw i32 %.sroa.22.0.extract.shift to i8 ; 2 uses
  switch i32 %2, label %bb.i [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 5, label %bb.e
    i32 6, label %bb.f
    i32 4, label %bb.g
    i32 7, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i32 %.sroa.15.0.extract.shift to i8
  %i.c = trunc i32 %1 to i8
  %i.d = insertelement <2 x i8> poison, i8 %i.b, i64 0
  %i.e = insertelement <2 x i8> %i.d, i8 %i.c, i64 1
  %i.f = uitofp <2 x i8> %i.e to <2 x float>
  %i.g = uitofp i8 %.sroa.846.0.extract.trunc to float
  %i.h = fdiv nnan float %i.g, 2.550000e+02
  %i.i = fmul nnan float %i.h, 5.870000e-01
  %i.j = fdiv nnan <2 x float> %i.f, splat (float 2.550000e+02)
  %i.k = fmul nnan <2 x float> %i.j, <float 1.140000e-01, float 2.990000e-01> ; 2 uses
  %i.l = extractelement <2 x float> %i.k, i64 1
  %i.m = fadd float %i.l, %i.i
  %i.n = extractelement <2 x float> %i.k, i64 0
  %i.o = fadd float %i.n, %i.m
  %i.p = fmul float %i.o, 2.550000e+02
  %i.q = fptoui float %i.p to i8
  store i8 %i.q, ptr %0, align 1
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.r = uitofp i8 %.sroa.039.0.extract.trunc to float
  %i.s = fdiv nnan float %i.r, 2.550000e+02
  %i.t = insertelement <2 x i8> poison, i8 %i.a, i64 0
  %i.u = insertelement <2 x i8> %i.t, i8 %.sroa.15.0.extract.trunc, i64 1
  %i.v = uitofp <2 x i8> %i.u to <2 x float>
  %i.w = fdiv nnan <2 x float> %i.v, splat (float 2.550000e+02) ; 2 uses
  %i.x = fmul nnan float %i.s, 2.990000e-01
  %i.y = extractelement <2 x float> %i.w, i64 0
  %i.z = fmul nnan float %i.y, 5.870000e-01
  %i.aa = fadd float %i.x, %i.z
  %i.ab = extractelement <2 x float> %i.w, i64 1
  %i.ac = fmul nnan float %i.ab, 1.140000e-01
  %i.ad = fadd float %i.ac, %i.aa
  %i.ae = fmul float %i.ad, 2.550000e+02
  %i.af = fptoui float %i.ae to i8
  store i8 %i.af, ptr %0, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.22.0.extract.trunc, ptr %i.ag, align 1
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.ah = trunc i32 %1 to i8
  %i.ai = insertelement <2 x i8> poison, i8 %i.ah, i64 0
  %i.aj = insertelement <2 x i8> %i.ai, i8 %i.a, i64 1
  %i.ak = uitofp <2 x i8> %i.aj to <2 x float>
  %i.al = uitofp i8 %.sroa.15.0.extract.trunc to float
  %i.am = fdiv nnan float %i.al, 2.550000e+02
  %i.an = fmul nnan float %i.am, 3.100000e+01
  %i.ao = tail call float @llvm.round.f32(float %i.an)
  %i.ap = fptoui float %i.ao to i8
  %i.aq = fdiv nnan <2 x float> %i.ak, splat (float 2.550000e+02)
  %i.ar = fmul nnan <2 x float> %i.aq, <float 3.100000e+01, float 6.300000e+01>
  %i.as = tail call <2 x float> @llvm.round.v2f32(<2 x float> %i.ar)
  %i.at = fptoui <2 x float> %i.as to <2 x i8>
  %i.au = zext <2 x i8> %i.at to <2 x i16>
  %i.av = shl <2 x i16> %i.au, <i16 11, i16 5>    ; 2 uses
  %i.aw = zext i8 %i.ap to i16
  %i.ax = extractelement <2 x i16> %i.av, i64 0
  %i.ay = or disjoint i16 %i.ax, %i.aw
  %i.az = extractelement <2 x i16> %i.av, i64 1
  %i.ba = or i16 %i.ay, %i.az
  store i16 %i.ba, ptr %0, align 2
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.bb = trunc i32 %1 to i8
  %i.bc = insertelement <2 x i8> poison, i8 %i.bb, i64 0
  %i.bd = trunc nuw i32 %.sroa.22.0.extract.shift to i8
  %i.be = insertelement <2 x i8> %i.bc, i8 %i.bd, i64 1
  %i.bf = uitofp <2 x i8> %i.be to <2 x float>
  %i.bg = insertelement <2 x i8> poison, i8 %.sroa.846.0.extract.trunc, i64 0
  %i.bh = insertelement <2 x i8> %i.bg, i8 %.sroa.15.0.extract.trunc, i64 1
  %i.bi = uitofp <2 x i8> %i.bh to <2 x float>
  %i.bj = fdiv <2 x float> %i.bf, splat (float 2.550000e+02) ; 2 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 0
  %i.bl = fmul nnan float %i.bk, 3.100000e+01
  %i.bm = tail call float @llvm.round.f32(float %i.bl)
  %i.bn = fptoui float %i.bm to i8
  %i.bo = extractelement <2 x float> %i.bj, i64 1
  %i.bp = fcmp ogt float %i.bo, f0x3E48C8C9
  %i.bq = zext i8 %i.bn to i16
  %i.br = shl i16 %i.bq, 11
  %i.bs = fdiv nnan <2 x float> %i.bi, splat (float 2.550000e+02)
  %i.bt = fmul nnan <2 x float> %i.bs, splat (float 3.100000e+01)
  %i.bu = tail call <2 x float> @llvm.round.v2f32(<2 x float> %i.bt)
  %i.bv = fptoui <2 x float> %i.bu to <2 x i8>
  %i.bw = zext <2 x i8> %i.bv to <2 x i16>
  %i.bx = shl nuw nsw <2 x i16> %i.bw, <i16 6, i16 1> ; 2 uses
  %i.by = zext i1 %i.bp to i16
  %i.bz = or disjoint i16 %i.br, %i.by
  %i.ca = extractelement <2 x i16> %i.bx, i64 0
  %i.cb = or i16 %i.bz, %i.ca
  %i.cc = extractelement <2 x i16> %i.bx, i64 1
  %i.cd = or i16 %i.cb, %i.cc
  store i16 %i.cd, ptr %0, align 2
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.ce = insertelement <4 x i8> poison, i8 %.sroa.22.0.extract.trunc, i64 0
  %i.cf = insertelement <4 x i8> %i.ce, i8 %.sroa.15.0.extract.trunc, i64 1
  %i.cg = insertelement <4 x i8> %i.cf, i8 %.sroa.846.0.extract.trunc, i64 2
  %i.ch = insertelement <4 x i8> %i.cg, i8 %.sroa.039.0.extract.trunc, i64 3
  %i.ci = uitofp <4 x i8> %i.ch to <4 x float>
  %i.cj = fdiv nnan <4 x float> %i.ci, splat (float 2.550000e+02)
  %i.ck = fmul nnan <4 x float> %i.cj, splat (float 1.500000e+01)
  %i.cl = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.ck)
  %i.cm = fptoui <4 x float> %i.cl to <4 x i8>
  %i.cn = zext <4 x i8> %i.cm to <4 x i16>
  %i.co = shl <4 x i16> %i.cn, <i16 0, i16 4, i16 8, i16 12>
  %i.cp = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.co)
  store i16 %i.cp, ptr %0, align 2
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  store i8 %.sroa.039.0.extract.trunc, ptr %0, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.846.0.extract.trunc, ptr %i.cq, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.15.0.extract.trunc, ptr %i.cr, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  store i32 %1, ptr %0, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageToPOT(ptr nofree noundef captures(none) %0, i32 %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sitofp i32 %i.d to float
  %i.j = tail call float @logf(float noundef %i.i) #52
  %i.k = fdiv float %i.j, f0x3F317218
  %i.l = tail call float @llvm.ceil.f32(float %i.k)
  %exp2f = tail call float @exp2f(float %i.l) #52
  %i.m = fptosi float %exp2f to i32               ; 2 uses
  %i.n = load i32, ptr %i.f, align 4
  %i.o = sitofp i32 %i.n to float
  %i.p = tail call float @logf(float noundef %i.o) #52
  %i.q = fdiv float %i.p, f0x3F317218
  %i.r = tail call float @llvm.ceil.f32(float %i.q)
  %exp2f11 = tail call float @exp2f(float %i.r) #52
  %i.s = fptosi float %exp2f11 to i32             ; 2 uses
  %i.t = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.t, %i.m
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.f, align 4
  %.not12 = icmp eq i32 %i.u, %i.s
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @ImageResizeCanvas(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef %i.s, i32 noundef 0, i32 noundef 0, i32 %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #17

; Function Attrs: nounwind uwtable
define void @ImageAlphaCrop(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #34 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %i.i = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %0) ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %GetImageAlphaBorder.exit, label %.preheader50.i

.preheader50.i:                                   ; preds = %bb.d
  %i.j = icmp sgt i32 %.sroa.4.0.copyload, 0
  br i1 %i.j, label %.preheader.lr.ph.i, label %._crit_edge64.thread.i

.preheader.lr.ph.i:                               ; preds = %.preheader50.i
  %i.k = icmp sgt i32 %.sroa.3.0.copyload, 0
  %i.l = fmul float %1, 2.550000e+02
  %i.m = fptoui float %i.l to i8                  ; 3 uses
  br i1 %i.k, label %.preheader.us.preheader.i, label %._crit_edge64.thread.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.n = zext nneg i32 %.sroa.3.0.copyload to i64 ; 3 uses
  %wide.trip.count77.i = zext nneg i32 %.sroa.4.0.copyload to i64
  %xtraiter = and i64 %i.n, 1
  %i.o = icmp eq i32 %.sroa.3.0.copyload, 1
  %unroll_iter = and i64 %i.n, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod14 = trunc i32 %.sroa.3.0.copyload to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %indvars.iv74.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next75.i, %._crit_edge.us.i ] ; 3 uses
  %.063.us.i = phi i32 [ 65536, %.preheader.us.preheader.i ], [ %.3.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %.03661.us.i = phi i32 [ 0, %.preheader.us.preheader.i ], [ %.238.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %.03960.us.i = phi i32 [ 65536, %.preheader.us.preheader.i ], [ %.342.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %.04359.us.i = phi i32 [ 0, %.preheader.us.preheader.i ], [ %.346.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %i.p = mul nuw nsw i64 %indvars.iv74.i, %i.n
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 3 uses
  %i.r = trunc nuw nsw i64 %indvars.iv74.i to i32 ; 6 uses
  br i1 %i.o, label %.epil.preheader, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.h ], [ 0, %.preheader.us.i ] ; 4 uses
  %.155.us.i = phi i32 [ %.3.us.i.1, %bb.h ], [ %.063.us.i, %.preheader.us.i ] ; 2 uses
  %.13753.us.i = phi i32 [ %.238.us.i.1, %bb.h ], [ %.03661.us.i, %.preheader.us.i ] ; 2 uses
  %.14052.us.i = phi i32 [ %.342.us.i.1, %bb.h ], [ %.03960.us.i, %.preheader.us.i ] ; 2 uses
  %.14451.us.i = phi i32 [ %.346.us.i.1, %bb.h ], [ %.04359.us.i, %.preheader.us.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.h ], [ 0, %.preheader.us.i ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp ugt i8 %i.u, %i.m
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader.us.i.new
  %i.w = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %spec.select.us.i = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %.155.us.i)
  %.245.us.i = tail call i32 @llvm.smax.i32(i32 %i.w, i32 %.14451.us.i)
  %.241.us.i = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %.14052.us.i)
  %spec.select49.us.i = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %.13753.us.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader.us.i.new
  %.346.us.i = phi i32 [ %.14451.us.i, %.preheader.us.i.new ], [ %.245.us.i, %bb.e ] ; 2 uses
  %.342.us.i = phi i32 [ %.14052.us.i, %.preheader.us.i.new ], [ %.241.us.i, %bb.e ] ; 2 uses
  %.238.us.i = phi i32 [ %.13753.us.i, %.preheader.us.i.new ], [ %spec.select49.us.i, %bb.e ] ; 2 uses
  %.3.us.i = phi i32 [ %.155.us.i, %.preheader.us.i.new ], [ %spec.select.us.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp ugt i8 %i.z, %i.m
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  %spec.select.us.i.1 = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 %.3.us.i)
  %.245.us.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 %.346.us.i)
  %.241.us.i.1 = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %.342.us.i)
  %spec.select49.us.i.1 = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %.238.us.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.346.us.i.1 = phi i32 [ %.346.us.i, %bb.f ], [ %.245.us.i.1, %bb.g ] ; 3 uses
  %.342.us.i.1 = phi i32 [ %.342.us.i, %bb.f ], [ %.241.us.i.1, %bb.g ] ; 3 uses
  %.238.us.i.1 = phi i32 [ %.238.us.i, %bb.f ], [ %spec.select49.us.i.1, %bb.g ] ; 3 uses
  %.3.us.i.1 = phi i32 [ %.3.us.i, %bb.f ], [ %spec.select.us.i.1, %bb.g ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.h
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.155.us.i.epil.init = phi i32 [ %.063.us.i, %.preheader.us.i ], [ %.3.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.13753.us.i.epil.init = phi i32 [ %.03661.us.i, %.preheader.us.i ], [ %.238.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.14052.us.i.epil.init = phi i32 [ %.03960.us.i, %.preheader.us.i ], [ %.342.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.14451.us.i.epil.init = phi i32 [ %.04359.us.i, %.preheader.us.i ], [ %.346.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.epil.init
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp ugt i8 %i.ae, %i.m
  br i1 %i.af, label %bb.i, label %._crit_edge.us.i

bb.i:                                             ; preds = %.epil.preheader
  %i.ag = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32 ; 2 uses
  %spec.select.us.i.epil = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %.155.us.i.epil.init)
  %.245.us.i.epil = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %.14451.us.i.epil.init)
  %.241.us.i.epil = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %.14052.us.i.epil.init)
  %spec.select49.us.i.epil = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %.13753.us.i.epil.init)
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %.epil.preheader, %bb.i, %._crit_edge.us.i.unr-lcssa
  %.346.us.i.lcssa = phi i32 [ %.346.us.i.1, %._crit_edge.us.i.unr-lcssa ], [ %.14451.us.i.epil.init, %.epil.preheader ], [ %.245.us.i.epil, %bb.i ] ; 3 uses
  %.342.us.i.lcssa = phi i32 [ %.342.us.i.1, %._crit_edge.us.i.unr-lcssa ], [ %.14052.us.i.epil.init, %.epil.preheader ], [ %.241.us.i.epil, %bb.i ] ; 3 uses
  %.238.us.i.lcssa = phi i32 [ %.238.us.i.1, %._crit_edge.us.i.unr-lcssa ], [ %.13753.us.i.epil.init, %.epil.preheader ], [ %spec.select49.us.i.epil, %bb.i ] ; 2 uses
  %.3.us.i.lcssa = phi i32 [ %.3.us.i.1, %._crit_edge.us.i.unr-lcssa ], [ %.155.us.i.epil.init, %.epil.preheader ], [ %spec.select.us.i.epil, %bb.i ] ; 4 uses
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next75.i, %wide.trip.count77.i
  br i1 %exitcond78.not.i, label %._crit_edge64.i, label %.preheader.us.i

._crit_edge64.i:                                  ; preds = %._crit_edge.us.i
  %i.ah = icmp ne i32 %.3.us.i.lcssa, 65536
  %i.ai = icmp ne i32 %.346.us.i.lcssa, 65536
  %or.cond.i = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond.i, label %bb.j, label %._crit_edge64.thread.i

bb.j:                                             ; preds = %._crit_edge64.i
  %reass.sub = sub i32 %.238.us.i.lcssa, %.342.us.i.lcssa
  %i.aj = add nuw nsw i32 %.346.us.i.lcssa, 1
  %i.ak = add i32 %reass.sub, 1
  %i.al = sub i32 %i.aj, %.3.us.i.lcssa
  %i.am = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %i.an = insertelement <4 x i32> %i.am, i32 %.342.us.i.lcssa, i64 1
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.al, i64 2
  %i.ap = insertelement <4 x i32> %i.ao, i32 %.3.us.i.lcssa, i64 3
  %i.aq = sitofp <4 x i32> %i.ap to <4 x float>   ; 2 uses
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <2 x i32> <i32 3, i32 1>
  %i.as = shufflevector <4 x float> %i.aq, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  br label %._crit_edge64.thread.i

._crit_edge64.thread.i:                           ; preds = %bb.j, %._crit_edge64.i, %.preheader.lr.ph.i, %.preheader50.i
  %.sroa.030.0.i = phi <2 x float> [ %i.ar, %bb.j ], [ zeroinitializer, %._crit_edge64.i ], [ zeroinitializer, %.preheader50.i ], [ zeroinitializer, %.preheader.lr.ph.i ]
  %.sroa.432.0.i = phi <2 x float> [ %i.as, %bb.j ], [ zeroinitializer, %._crit_edge64.i ], [ zeroinitializer, %.preheader50.i ], [ zeroinitializer, %.preheader.lr.ph.i ]
  tail call void @free(ptr noundef nonnull %i.i) #52
  br label %GetImageAlphaBorder.exit

GetImageAlphaBorder.exit:                         ; preds = %bb.d, %._crit_edge64.thread.i
  %.sroa.030.1.i = phi <2 x float> [ %.sroa.030.0.i, %._crit_edge64.thread.i ], [ zeroinitializer, %bb.d ]
  %.sroa.432.1.i = phi <2 x float> [ %.sroa.432.0.i, %._crit_edge64.thread.i ], [ zeroinitializer, %bb.d ] ; 2 uses
  %i.at = fptosi <2 x float> %.sroa.432.1.i to <2 x i32>
  %i.au = icmp eq <2 x i32> %i.at, zeroinitializer ; 2 uses
  %i.av = extractelement <2 x i1> %i.au, i64 0
  %i.aw = extractelement <2 x i1> %i.au, i64 1
  %or.cond = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %GetImageAlphaBorder.exit
  tail call void @ImageCrop(ptr noundef nonnull %0, <2 x float> %.sroa.030.1.i, <2 x float> %.sroa.432.1.i)
  br label %bb.l

bb.l:                                             ; preds = %GetImageAlphaBorder.exit, %bb.k, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @GetImageAlphaBorder(ptr nofree noundef readonly byval(%struct.Image) align 8 captures(none) %0, float noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %0) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %.preheader50

.preheader50:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge64.thread

.preheader.lr.ph:                                 ; preds = %.preheader50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  %i.h = fmul float %1, 2.550000e+02
  %i.i = fptoui float %i.h to i8                  ; 3 uses
  br i1 %i.g, label %.preheader.us.preheader, label %._crit_edge64.thread

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.j = zext nneg i32 %i.f to i64                ; 3 uses
  %wide.trip.count77 = zext nneg i32 %i.c to i64
  %xtraiter = and i64 %i.j, 1
  %i.k = icmp eq i32 %i.f, 1
  %unroll_iter = and i64 %i.j, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod90 = trunc i32 %i.f to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv74 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next75, %._crit_edge.us ] ; 3 uses
  %.063.us = phi i32 [ 65536, %.preheader.us.preheader ], [ %.3.us.lcssa, %._crit_edge.us ] ; 2 uses
  %.03661.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.238.us.lcssa, %._crit_edge.us ] ; 2 uses
  %.03960.us = phi i32 [ 65536, %.preheader.us.preheader ], [ %.342.us.lcssa, %._crit_edge.us ] ; 2 uses
  %.04359.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.346.us.lcssa, %._crit_edge.us ] ; 2 uses
  %i.l = mul nuw nsw i64 %indvars.iv74, %i.j
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.l ; 3 uses
  %i.n = trunc nuw nsw i64 %indvars.iv74 to i32   ; 6 uses
  br i1 %i.k, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ 0, %.preheader.us ] ; 4 uses
  %.155.us = phi i32 [ %.3.us.1, %bb.e ], [ %.063.us, %.preheader.us ] ; 2 uses
  %.13753.us = phi i32 [ %.238.us.1, %bb.e ], [ %.03661.us, %.preheader.us ] ; 2 uses
  %.14052.us = phi i32 [ %.342.us.1, %bb.e ], [ %.03960.us, %.preheader.us ] ; 2 uses
  %.14451.us = phi i32 [ %.346.us.1, %bb.e ], [ %.04359.us, %.preheader.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.preheader.us ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp ugt i8 %i.q, %i.i
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.us.new
  %i.s = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %spec.select.us = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %.155.us)
  %.245.us = tail call i32 @llvm.smax.i32(i32 %i.s, i32 %.14451.us)
  %.241.us = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.14052.us)
  %spec.select49.us = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %.13753.us)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.us.new
  %.346.us = phi i32 [ %.14451.us, %.preheader.us.new ], [ %.245.us, %bb.b ] ; 2 uses
  %.342.us = phi i32 [ %.14052.us, %.preheader.us.new ], [ %.241.us, %bb.b ] ; 2 uses
  %.238.us = phi i32 [ %.13753.us, %.preheader.us.new ], [ %spec.select49.us, %bb.b ] ; 2 uses
  %.3.us = phi i32 [ %.155.us, %.preheader.us.new ], [ %spec.select.us, %bb.b ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp ugt i8 %i.v, %i.i
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %spec.select.us.1 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.3.us)
  %.245.us.1 = tail call i32 @llvm.smax.i32(i32 %i.x, i32 %.346.us)
  %.241.us.1 = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.342.us)
  %spec.select49.us.1 = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %.238.us)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.346.us.1 = phi i32 [ %.346.us, %bb.c ], [ %.245.us.1, %bb.d ] ; 3 uses
  %.342.us.1 = phi i32 [ %.342.us, %bb.c ], [ %.241.us.1, %bb.d ] ; 3 uses
  %.238.us.1 = phi i32 [ %.238.us, %bb.c ], [ %spec.select49.us.1, %bb.d ] ; 3 uses
  %.3.us.1 = phi i32 [ %.3.us, %bb.c ], [ %spec.select.us.1, %bb.d ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new

._crit_edge.us.unr-lcssa:                         ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.155.us.epil.init = phi i32 [ %.063.us, %.preheader.us ], [ %.3.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.13753.us.epil.init = phi i32 [ %.03661.us, %.preheader.us ], [ %.238.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.14052.us.epil.init = phi i32 [ %.03960.us, %.preheader.us ], [ %.342.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.14451.us.epil.init = phi i32 [ %.04359.us, %.preheader.us ], [ %.346.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.epil.init
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp ugt i8 %i.aa, %i.i
  br i1 %i.ab, label %bb.f, label %._crit_edge.us

bb.f:                                             ; preds = %.epil.preheader
  %i.ac = trunc nuw nsw i64 %indvars.iv.epil.init to i32 ; 2 uses
  %spec.select.us.epil = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %.155.us.epil.init)
  %.245.us.epil = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 %.14451.us.epil.init)
  %.241.us.epil = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.14052.us.epil.init)
  %spec.select49.us.epil = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %.13753.us.epil.init)
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.epil.preheader, %bb.f, %._crit_edge.us.unr-lcssa
  %.346.us.lcssa = phi i32 [ %.346.us.1, %._crit_edge.us.unr-lcssa ], [ %.14451.us.epil.init, %.epil.preheader ], [ %.245.us.epil, %bb.f ] ; 3 uses
  %.342.us.lcssa = phi i32 [ %.342.us.1, %._crit_edge.us.unr-lcssa ], [ %.14052.us.epil.init, %.epil.preheader ], [ %.241.us.epil, %bb.f ] ; 3 uses
  %.238.us.lcssa = phi i32 [ %.238.us.1, %._crit_edge.us.unr-lcssa ], [ %.13753.us.epil.init, %.epil.preheader ], [ %spec.select49.us.epil, %bb.f ] ; 2 uses
  %.3.us.lcssa = phi i32 [ %.3.us.1, %._crit_edge.us.unr-lcssa ], [ %.155.us.epil.init, %.epil.preheader ], [ %spec.select.us.epil, %bb.f ] ; 4 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge64, label %.preheader.us

._crit_edge64:                                    ; preds = %._crit_edge.us
  %i.ad = icmp ne i32 %.3.us.lcssa, 65536
  %i.ae = icmp ne i32 %.346.us.lcssa, 65536
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.g, label %._crit_edge64.thread

bb.g:                                             ; preds = %._crit_edge64
  %reass.sub = sub i32 %.238.us.lcssa, %.342.us.lcssa
  %i.af = add nuw nsw i32 %.346.us.lcssa, 1
  %i.ag = add i32 %reass.sub, 1
  %i.ah = sub i32 %i.af, %.3.us.lcssa
  %i.ai = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.ah, i64 1
  %i.ak = insertelement <4 x i32> %i.aj, i32 %.342.us.lcssa, i64 2
  %i.al = insertelement <4 x i32> %i.ak, i32 %.3.us.lcssa, i64 3
  %i.am = sitofp <4 x i32> %i.al to <4 x float>   ; 2 uses
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %._crit_edge64.thread

._crit_edge64.thread:                             ; preds = %.preheader.lr.ph, %.preheader50, %bb.g, %._crit_edge64
  %.sroa.030.0 = phi <2 x float> [ %i.an, %bb.g ], [ zeroinitializer, %._crit_edge64 ], [ zeroinitializer, %.preheader50 ], [ zeroinitializer, %.preheader.lr.ph ]
  %.sroa.432.0 = phi <2 x float> [ %i.ao, %bb.g ], [ zeroinitializer, %._crit_edge64 ], [ zeroinitializer, %.preheader50 ], [ zeroinitializer, %.preheader.lr.ph ]
  tail call void @free(ptr noundef nonnull %i.a) #52
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge64.thread, %bb.a
  %.sroa.030.1 = phi <2 x float> [ %.sroa.030.0, %._crit_edge64.thread ], [ zeroinitializer, %bb.a ]
  %.sroa.432.1 = phi <2 x float> [ %.sroa.432.0, %._crit_edge64.thread ], [ zeroinitializer, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.030.1, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.432.1, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define void @ImageAlphaClear(ptr nofree noundef readonly captures(none) %0, i32 %1, float noundef %2) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %1 to i8   ; 6 uses
  %.sroa.7.0.extract.shift = lshr i32 %1, 8
  %.sroa.12.0.extract.shift = lshr i32 %1, 16
  %.sroa.17.0.extract.shift = lshr i32 %1, 24
  %.sroa.7.0.extract.trunc = trunc i32 %.sroa.7.0.extract.shift to i8 ; 5 uses
  %.sroa.12.0.extract.trunc = trunc i32 %.sroa.12.0.extract.shift to i8 ; 5 uses
  %.sroa.17.0.extract.trunc = trunc nuw i32 %.sroa.17.0.extract.shift to i8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 13 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.d

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
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  switch i32 %i.m, label %.loopexit [
    i32 2, label %bb.i
    i32 5, label %bb.l
    i32 6, label %bb.p
    i32 7, label %bb.t
    i32 10, label %.preheader
    i32 13, label %.preheader122
  ]

.preheader122:                                    ; preds = %bb.h
  %i.o = load i32, ptr %i.c, align 8
  %i.p = load i32, ptr %i.f, align 4
  %i.q = shl i32 %i.o, 2
  %i.r = mul i32 %i.q, %i.p
  %i.s = icmp sgt i32 %i.r, 3
  br i1 %i.s, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader122
  %i.t = insertelement <4 x i8> poison, i8 %.sroa.17.0.extract.trunc, i64 0
  %i.u = insertelement <4 x i8> %i.t, i8 %.sroa.12.0.extract.trunc, i64 1
  %i.v = insertelement <4 x i8> %i.u, i8 %.sroa.7.0.extract.trunc, i64 2
  %i.w = insertelement <4 x i8> %i.v, i8 %.sroa.0.0.extract.trunc, i64 3
  %i.x = uitofp <4 x i8> %i.w to <4 x float>
  %i.y = fdiv <4 x float> %i.x, splat (float 2.550000e+02)
  %i.z = bitcast <4 x float> %i.y to <4 x i32>
  %i.aa = add nuw <4 x i32> %i.z, splat (i32 4096) ; 3 uses
  %i.ab = lshr <4 x i32> %i.aa, splat (i32 23)    ; 2 uses
  %i.ac = and <4 x i32> %i.ab, splat (i32 255)    ; 4 uses
  %i.ad = add nsw <4 x i32> %i.ac, splat (i32 -102)
  %i.ae = icmp ult <4 x i32> %i.ad, splat (i32 11)
  %i.af = and <4 x i32> %i.aa, splat (i32 8388607) ; 2 uses
  %i.ag = lshr <4 x i32> %i.aa, splat (i32 16)
  %i.ah = and <4 x i32> %i.ag, splat (i32 32768)
  %i.ai = icmp samesign ugt <4 x i32> %i.ac, splat (i32 112)
  %i.aj = shl nuw nsw <4 x i32> %i.ab, splat (i32 10)
  %i.ak = and <4 x i32> %i.aj, splat (i32 31744)
  %i.al = lshr <4 x i32> %i.af, splat (i32 13)
  %i.am = or disjoint <4 x i32> %i.ak, %i.al
  %i.an = xor <4 x i32> %i.am, splat (i32 16384)
  %i.ao = select <4 x i1> %i.ai, <4 x i32> %i.an, <4 x i32> zeroinitializer
  %i.ap = add nuw nsw <4 x i32> %i.af, splat (i32 8384512)
  %i.aq = sub nsw <4 x i32> splat (i32 125), %i.ac
  %i.ar = lshr <4 x i32> %i.ap, %i.aq
  %i.as = add nuw nsw <4 x i32> %i.ar, splat (i32 1)
  %i.at = lshr <4 x i32> %i.as, splat (i32 1)
  %i.au = select <4 x i1> %i.ae, <4 x i32> %i.at, <4 x i32> zeroinitializer
  %i.av = icmp samesign ugt <4 x i32> %i.ac, splat (i32 143)
  %i.aw = select <4 x i1> %i.av, <4 x i32> splat (i32 32767), <4 x i32> zeroinitializer
  %i.ax = or disjoint <4 x i32> %i.aw, %i.ah
  %i.ay = or <4 x i32> %i.ax, %i.ao
  %i.az = or <4 x i32> %i.ay, %i.au
  %i.ba = trunc <4 x i32> %i.az to <4 x i16>      ; 4 uses
  %i.bb = extractelement <4 x i16> %i.ba, i64 0
  %i.bc = extractelement <4 x i16> %i.ba, i64 1
  %i.bd = extractelement <4 x i16> %i.ba, i64 2
  %i.be = extractelement <4 x i16> %i.ba, i64 3
  br label %bb.z

.preheader:                                       ; preds = %bb.h
  %i.bf = load i32, ptr %i.c, align 8             ; 2 uses
  %i.bg = load i32, ptr %i.f, align 4             ; 2 uses
  %i.bh = shl i32 %i.bf, 2
  %i.bi = mul i32 %i.bh, %i.bg
  %i.bj = icmp sgt i32 %i.bi, 3
  br i1 %i.bj, label %.lr.ph126, label %.loopexit

.lr.ph126:                                        ; preds = %.preheader
  %i.bk = insertelement <4 x i8> poison, i8 %.sroa.0.0.extract.trunc, i64 0
  %i.bl = insertelement <4 x i8> %i.bk, i8 %.sroa.7.0.extract.trunc, i64 1
  %i.bm = insertelement <4 x i8> %i.bl, i8 %.sroa.12.0.extract.trunc, i64 2
  %i.bn = insertelement <4 x i8> %i.bm, i8 %.sroa.17.0.extract.trunc, i64 3
  %i.bo = uitofp <4 x i8> %i.bn to <4 x float>
  %i.bp = fdiv <4 x float> %i.bo, splat (float 2.550000e+02) ; 4 uses
  %i.bq = extractelement <4 x float> %i.bp, i64 0
  %i.br = extractelement <4 x float> %i.bp, i64 1
  %i.bs = extractelement <4 x float> %i.bp, i64 2
  %i.bt = extractelement <4 x float> %i.bp, i64 3
  br label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.bu = fmul float %2, 2.550000e+02
  %i.bv = fptoui float %i.bu to i8
  %i.bw = load i32, ptr %i.c, align 8             ; 2 uses
end_hunk_8
begin_hunk_9_@ImageAlphaPremultiply:bb.a
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %0) ; 2 uses
  %i.j = load i32, ptr %i.c, align 8
  %i.k = load i32, ptr %i.f, align 4
  %i.l = mul nsw i32 %i.k, %i.j
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %i.n = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.n) #52
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  store ptr %i.i, ptr %0, align 8
  store i32 7, ptr %i.o, align 4
  tail call void @ImageFormat(ptr noundef nonnull %0, i32 noundef %i.p)
  br label %bb.h

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  switch i8 %i.s, label %bb.f [
    i8 0, label %bb.e
    i8 -1, label %bb.g
  ]

bb.e:                                             ; preds = %.lr.ph
  store i8 0, ptr %i.q, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i8 0, ptr %i.u, align 1
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.v = uitofp i8 %i.s to float
  %i.w = fdiv float %i.v, 2.550000e+02            ; 2 uses
  %i.x = load i8, ptr %i.q, align 1
  %i.y = uitofp i8 %i.x to float
  %i.z = fmul float %i.w, %i.y
  %i.aa = fptoui float %i.z to i8
  store i8 %i.aa, ptr %i.q, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.ad = load <2 x i8>, ptr %i.ab, align 1
  %i.ae = uitofp <2 x i8> %i.ad to <2 x float>
  %i.af = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x float> %i.ag, %i.ae           ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0
  %i.aj = fptoui float %i.ai to i8
  store i8 %i.aj, ptr %i.ab, align 1
  %i.ak = extractelement <2 x float> %i.ah, i64 1
  %i.al = fptoui float %i.ak to i8
  store i8 %i.al, ptr %i.ac, align 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load i32, ptr %i.c, align 8
  %i.an = load i32, ptr %i.f, align 4
  %i.ao = mul nsw i32 %i.an, %i.am
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageBlurGaussian(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ImageAlphaPremultiply(ptr noundef nonnull %0)
  %i.i = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %0) ; 8 uses
  %i.j = load i32, ptr %i.f, align 4
  %i.k = load i32, ptr %i.c, align 8
  %i.l = mul nsw i32 %i.k, %i.j
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 4
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #53 ; 11 uses
  %i.p = load i32, ptr %i.f, align 4
  %i.q = load i32, ptr %i.c, align 8
  %i.r = mul nsw i32 %i.q, %i.p
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 4
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #53 ; 5 uses
  %i.v = load i32, ptr %i.f, align 4              ; 5 uses
  %i.w = load i32, ptr %i.c, align 8              ; 5 uses
  %i.x = mul nsw i32 %i.w, %i.v                   ; 3 uses
  %i.y = icmp sgt i32 %i.x, 0                     ; 2 uses
  br i1 %i.y, label %.lr.ph.preheader, label %.preheader350

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.x to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.z = icmp ult i32 %i.x, 4
  br i1 %i.z, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.preheader350.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader350, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader350.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader350.loopexit.unr-lcssa ]
  %lcmp.mod472 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod472)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv.epil
  %i.ac = load <4 x i8>, ptr %i.aa, align 1
  %i.ad = uitofp <4 x i8> %i.ac to <4 x float>
  store <4 x float> %i.ad, ptr %i.ab, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader350, label %.lr.ph.epil, !llvm.loop !107

.preheader350:                                    ; preds = %.preheader350.loopexit.unr-lcssa, %.lr.ph.epil, %bb.d
  %i.ae = icmp sgt i32 %i.v, 0                    ; 2 uses
  %i.af = icmp sgt i32 %i.w, 0                    ; 2 uses
  %i.ag = icmp sgt i32 %1, 0                      ; 2 uses
  %i.ah = xor i32 %1, -1                          ; 2 uses
  %i.ai = sext i32 %1 to i64                      ; 2 uses
  %i.aj = sext i32 %i.w to i64                    ; 4 uses
  %i.ak = zext i32 %i.w to i64                    ; 7 uses
  %i.al = sext i32 %i.v to i64
  %wide.trip.count417 = zext nneg i32 %i.v to i64
  %wide.trip.count407 = zext i32 %1 to i64        ; 4 uses
  %invariant.op = sub nsw i64 %i.aj, %i.ai
  %wide.trip.count427 = zext nneg i32 %i.v to i64
  %xtraiter473 = and i64 %wide.trip.count407, 3   ; 3 uses
  %i.am = icmp ult i32 %1, 4
  %unroll_iter478 = and i64 %wide.trip.count407, 2147483644
  %lcmp.mod475.not = icmp eq i64 %xtraiter473, 0
  %lcmp.mod477 = icmp ne i64 %xtraiter473, 0
  %xtraiter480 = and i64 %wide.trip.count407, 3   ; 3 uses
  %i.an = icmp ult i32 %1, 4
  %unroll_iter487 = and i64 %wide.trip.count407, 2147483644
  %lcmp.mod484.not = icmp eq i64 %xtraiter480, 0
  %lcmp.mod486 = icmp ne i64 %xtraiter480, 0
  br label %.preheader349

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv
  %i.aq = load <4 x i8>, ptr %i.ao, align 1
  %i.ar = uitofp <4 x i8> %i.aq to <4 x float>
  store <4 x float> %i.ar, ptr %i.ap, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.au = load <4 x i8>, ptr %i.as, align 1
  %i.av = uitofp <4 x i8> %i.au to <4 x float>
  store <4 x float> %i.av, ptr %i.at, align 4
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv.next.1
  %i.ay = load <4 x i8>, ptr %i.aw, align 1
  %i.az = uitofp <4 x i8> %i.ay to <4 x float>
  store <4 x float> %i.az, ptr %i.ax, align 4
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv.next.2
  %i.bc = load <4 x i8>, ptr %i.ba, align 1
  %i.bd = uitofp <4 x i8> %i.bc to <4 x float>
  store <4 x float> %i.bd, ptr %i.bb, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader350.loopexit.unr-lcssa, label %.lr.ph

.preheader349:                                    ; preds = %.preheader350, %._crit_edge390
  %.0335391 = phi i32 [ 0, %.preheader350 ], [ %i.cu, %._crit_edge390 ]
  br i1 %i.ae, label %.preheader347.lr.ph, label %.preheader348

.preheader347.lr.ph:                              ; preds = %.preheader349
  br i1 %i.af, label %.preheader347.us, label %._crit_edge390

.preheader347.us:                                 ; preds = %.preheader347.lr.ph, %._crit_edge.us
  %indvars.iv414 = phi i64 [ %indvars.iv.next415, %._crit_edge.us ], [ 0, %.preheader347.lr.ph ] ; 2 uses
  %i.be = mul nuw nsw i64 %indvars.iv414, %i.aj   ; 3 uses
  br i1 %i.ag, label %.lr.ph359.us, label %.preheader346.us

.lr.ph359.us.new:                                 ; preds = %.lr.ph359.us, %.lr.ph359.us.new
  %indvars.iv404 = phi i64 [ %indvars.iv.next405.3, %.lr.ph359.us.new ], [ 0, %.lr.ph359.us ] ; 5 uses
  %i.bf = phi <4 x float> [ %i.bq, %.lr.ph359.us.new ], [ zeroinitializer, %.lr.ph359.us ]
  %niter479 = phi i64 [ %niter479.next.3, %.lr.ph359.us.new ], [ 0, %.lr.ph359.us ]
  %gep = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv404
  %i.bg = load <4 x float>, ptr %gep, align 4
  %i.bh = fadd <4 x float> %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv404
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bj = load <4 x float>, ptr %gep.1, align 4
  %i.bk = fadd <4 x float> %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv404
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bm = load <4 x float>, ptr %gep.2, align 4
  %i.bn = fadd <4 x float> %i.bk, %i.bm
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv404
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bp = load <4 x float>, ptr %gep.3, align 4
  %i.bq = fadd <4 x float> %i.bn, %i.bp           ; 3 uses
  %indvars.iv.next405.3 = add nuw nsw i64 %indvars.iv404, 4 ; 2 uses
  %niter479.next.3 = add nuw i64 %niter479, 4     ; 2 uses
  %niter479.ncmp.3 = icmp eq i64 %niter479.next.3, %unroll_iter478
  br i1 %niter479.ncmp.3, label %.preheader346.us.loopexit.unr-lcssa, label %.lr.ph359.us.new

bb.e:                                             ; preds = %.preheader346.us, %bb.i
  %indvars.iv409 = phi i64 [ 0, %.preheader346.us ], [ %indvars.iv.next410, %bb.i ] ; 4 uses
  %.0315368.us = phi i32 [ %1, %.preheader346.us ], [ %.2317.us, %bb.i ] ; 2 uses
  %i.br = phi <4 x float> [ %i.cq, %.preheader346.us ], [ %i.ci, %bb.i ] ; 2 uses
  %indvars411 = trunc i64 %indvars.iv409 to i32   ; 3 uses
  %i.bs = sub i32 %1, %indvars411
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bu = add i32 %i.cr, %indvars411
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.bv
  %i.bx = load <4 x float>, ptr %i.bw, align 4
  %i.by = fsub <4 x float> %i.br, %i.bx
  %i.bz = add nsw i32 %.0315368.us, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1316.us = phi i32 [ %i.bz, %bb.f ], [ %.0315368.us, %bb.e ] ; 2 uses
  %i.ca = phi <4 x float> [ %i.by, %bb.f ], [ %i.br, %bb.e ] ; 2 uses
  %i.cb = icmp slt i64 %indvars.iv409, %invariant.op
  br i1 %i.cb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cc = add i32 %i.cs, %indvars411
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.cd
  %i.cf = load <4 x float>, ptr %i.ce, align 4
  %i.cg = fadd <4 x float> %i.ca, %i.cf
  %i.ch = add nsw i32 %.1316.us, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2317.us = phi i32 [ %i.ch, %bb.h ], [ %.1316.us, %bb.g ] ; 2 uses
  %i.ci = phi <4 x float> [ %i.cg, %bb.h ], [ %i.ca, %bb.g ] ; 2 uses
  %i.cj = sitofp i32 %.2317.us to float
  %gep457 = getelementptr [16 x i8], ptr %invariant.gep456, i64 %indvars.iv409
  %i.ck = insertelement <4 x float> poison, float %i.cj, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cm = fdiv <4 x float> %i.ci, %i.cl
  store <4 x float> %i.cm, ptr %gep457, align 4
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %exitcond413.not = icmp eq i64 %indvars.iv.next410, %i.ak
  br i1 %exitcond413.not, label %._crit_edge.us, label %bb.e

.preheader346.us.loopexit.unr-lcssa:              ; preds = %.lr.ph359.us.new
  br i1 %lcmp.mod475.not, label %.preheader346.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader346.us.loopexit.unr-lcssa, %.lr.ph359.us
  %indvars.iv404.epil.init = phi i64 [ 0, %.lr.ph359.us ], [ %indvars.iv.next405.3, %.preheader346.us.loopexit.unr-lcssa ]
  %.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph359.us ], [ %i.bq, %.preheader346.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod477)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv404.epil = phi i64 [ %indvars.iv404.epil.init, %.epil.preheader ], [ %indvars.iv.next405.epil, %bb.j ] ; 2 uses
  %i.cn = phi <4 x float> [ %.epil.init, %.epil.preheader ], [ %i.cp, %bb.j ]
  %epil.iter474 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter474.next, %bb.j ]
  %gep.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv404.epil
  %i.co = load <4 x float>, ptr %gep.epil, align 4
  %i.cp = fadd <4 x float> %i.cn, %i.co           ; 2 uses
  %indvars.iv.next405.epil = add nuw nsw i64 %indvars.iv404.epil, 1
  %epil.iter474.next = add i64 %epil.iter474, 1   ; 2 uses
  %epil.iter474.cmp.not = icmp eq i64 %epil.iter474.next, %xtraiter473
  br i1 %epil.iter474.cmp.not, label %.preheader346.us, label %bb.j, !llvm.loop !108

.preheader346.us:                                 ; preds = %.preheader346.us.loopexit.unr-lcssa, %bb.j, %.preheader347.us
  %i.cq = phi <4 x float> [ zeroinitializer, %.preheader347.us ], [ %i.bq, %.preheader346.us.loopexit.unr-lcssa ], [ %i.cp, %bb.j ]
  %.pre-phi439 = trunc i64 %i.be to i32           ; 2 uses
  %i.cr = add i32 %.pre-phi439, %i.ah
  %i.cs = add i32 %1, %.pre-phi439
  %invariant.gep456 = getelementptr [16 x i8], ptr %i.u, i64 %i.be
  br label %bb.e

.lr.ph359.us:                                     ; preds = %.preheader347.us
  %i.ct = and i64 %i.be, 4294967295
  %invariant.gep = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.ct ; 5 uses
  br i1 %i.am, label %.epil.preheader, label %.lr.ph359.us.new

._crit_edge.us:                                   ; preds = %bb.i
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 2 uses
  %exitcond418.not = icmp eq i64 %indvars.iv.next415, %wide.trip.count417
  br i1 %exitcond418.not, label %.preheader348, label %.preheader347.us

.preheader:                                       ; preds = %._crit_edge390
  br i1 %i.y, label %.lr.ph393, label %._crit_edge394

.preheader348:                                    ; preds = %._crit_edge.us, %.preheader349
  br i1 %i.af, label %.preheader345, label %._crit_edge390

.preheader345:                                    ; preds = %.preheader348, %._crit_edge
  %indvars.iv429 = phi i64 [ %indvars.iv.next430, %._crit_edge ], [ 0, %.preheader348 ] ; 5 uses
  br i1 %i.ag, label %.lr.ph377.preheader, label %.preheader344

.lr.ph377.preheader:                              ; preds = %.preheader345
  %invariant.gep458 = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv429 ; 5 uses
  br i1 %i.an, label %.lr.ph377.epil.preheader, label %.lr.ph377

._crit_edge390:                                   ; preds = %._crit_edge, %.preheader347.lr.ph, %.preheader348
  %i.cu = add nuw nsw i32 %.0335391, 1            ; 2 uses
  %exitcond434.not = icmp eq i32 %i.cu, 4
  br i1 %exitcond434.not, label %.preheader, label %.preheader349

.preheader344.loopexit.unr-lcssa:                 ; preds = %.lr.ph377
  br i1 %lcmp.mod484.not, label %.preheader344, label %.lr.ph377.epil.preheader

.lr.ph377.epil.preheader:                         ; preds = %.preheader344.loopexit.unr-lcssa, %.lr.ph377.preheader
  %indvars.iv419.epil.init = phi i64 [ 0, %.lr.ph377.preheader ], [ %indvars.iv.next420.3, %.preheader344.loopexit.unr-lcssa ]
  %.epil.init483 = phi <4 x float> [ zeroinitializer, %.lr.ph377.preheader ], [ %i.dn, %.preheader344.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod486)
  br label %.lr.ph377.epil

.lr.ph377.epil:                                   ; preds = %.lr.ph377.epil, %.lr.ph377.epil.preheader
  %indvars.iv419.epil = phi i64 [ %indvars.iv419.epil.init, %.lr.ph377.epil.preheader ], [ %indvars.iv.next420.epil, %.lr.ph377.epil ] ; 2 uses
  %i.cv = phi <4 x float> [ %.epil.init483, %.lr.ph377.epil.preheader ], [ %i.cy, %.lr.ph377.epil ]
  %epil.iter481 = phi i64 [ 0, %.lr.ph377.epil.preheader ], [ %epil.iter481.next, %.lr.ph377.epil ]
  %i.cw = mul nuw nsw i64 %indvars.iv419.epil, %i.ak
  %gep459.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep458, i64 %i.cw
  %i.cx = load <4 x float>, ptr %gep459.epil, align 4
  %i.cy = fadd <4 x float> %i.cv, %i.cx           ; 2 uses
  %indvars.iv.next420.epil = add nuw nsw i64 %indvars.iv419.epil, 1
  %epil.iter481.next = add i64 %epil.iter481, 1   ; 2 uses
  %epil.iter481.cmp.not = icmp eq i64 %epil.iter481.next, %xtraiter480
  br i1 %epil.iter481.cmp.not, label %.preheader344, label %.lr.ph377.epil, !llvm.loop !109

.preheader344:                                    ; preds = %.preheader344.loopexit.unr-lcssa, %.lr.ph377.epil, %.preheader345
  %i.cz = phi <4 x float> [ zeroinitializer, %.preheader345 ], [ %i.dn, %.preheader344.loopexit.unr-lcssa ], [ %i.cy, %.lr.ph377.epil ]
  br i1 %i.ae, label %.lr.ph388.preheader, label %._crit_edge

.lr.ph388.preheader:                              ; preds = %.preheader344
  %i.da = trunc nuw nsw i64 %indvars.iv429 to i32
  %invariant.gep460 = getelementptr [16 x i8], ptr %i.u, i64 %indvars.iv429
  %invariant.gep462 = getelementptr [16 x i8], ptr %i.o, i64 %indvars.iv429
  br label %.lr.ph388

.lr.ph377:                                        ; preds = %.lr.ph377.preheader, %.lr.ph377
  %indvars.iv419 = phi i64 [ %indvars.iv.next420.3, %.lr.ph377 ], [ 0, %.lr.ph377.preheader ] ; 5 uses
  %i.db = phi <4 x float> [ %i.dn, %.lr.ph377 ], [ zeroinitializer, %.lr.ph377.preheader ]
  %niter488 = phi i64 [ %niter488.next.3, %.lr.ph377 ], [ 0, %.lr.ph377.preheader ]
  %i.dc = mul nuw nsw i64 %indvars.iv419, %i.ak
  %gep459 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep458, i64 %i.dc
  %i.dd = load <4 x float>, ptr %gep459, align 4
  %i.de = fadd <4 x float> %i.db, %i.dd
  %indvars.iv.next420 = or disjoint i64 %indvars.iv419, 1
  %i.df = mul nuw nsw i64 %indvars.iv.next420, %i.ak
  %gep459.1 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep458, i64 %i.df
  %i.dg = load <4 x float>, ptr %gep459.1, align 4
  %i.dh = fadd <4 x float> %i.de, %i.dg
  %indvars.iv.next420.1 = or disjoint i64 %indvars.iv419, 2
  %i.di = mul nuw nsw i64 %indvars.iv.next420.1, %i.ak
  %gep459.2 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep458, i64 %i.di
  %i.dj = load <4 x float>, ptr %gep459.2, align 4
  %i.dk = fadd <4 x float> %i.dh, %i.dj
  %indvars.iv.next420.2 = or disjoint i64 %indvars.iv419, 3
  %i.dl = mul nuw nsw i64 %indvars.iv.next420.2, %i.ak
  %gep459.3 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep458, i64 %i.dl
  %i.dm = load <4 x float>, ptr %gep459.3, align 4
  %i.dn = fadd <4 x float> %i.dk, %i.dm           ; 3 uses
  %indvars.iv.next420.3 = add nuw nsw i64 %indvars.iv419, 4 ; 2 uses
  %niter488.next.3 = add nuw i64 %niter488, 4     ; 2 uses
  %niter488.ncmp.3 = icmp eq i64 %niter488.next.3, %unroll_iter487
  br i1 %niter488.ncmp.3, label %.preheader344.loopexit.unr-lcssa, label %.lr.ph377

._crit_edge:                                      ; preds = %bb.n, %.preheader344
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1 ; 2 uses
  %exitcond433.not = icmp eq i64 %indvars.iv.next430, %i.ak
  br i1 %exitcond433.not, label %._crit_edge390, label %.preheader345

.lr.ph388:                                        ; preds = %.lr.ph388.preheader, %bb.n
  %indvars.iv424 = phi i64 [ 0, %.lr.ph388.preheader ], [ %indvars.iv.next425, %bb.n ] ; 4 uses
  %.0296386 = phi i32 [ %1, %.lr.ph388.preheader ], [ %.2, %bb.n ] ; 2 uses
  %i.do = phi <4 x float> [ %i.cz, %.lr.ph388.preheader ], [ %i.eg, %bb.n ] ; 2 uses
  %i.dp = trunc nuw nsw i64 %indvars.iv424 to i32
  %i.dq = add i32 %i.dp, %i.ah                    ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, -1
  br i1 %i.dr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph388
  %i.ds = mul nuw nsw i32 %i.dq, %i.w
  %i.dt = add nuw nsw i32 %i.ds, %i.da
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.du
  %i.dw = load <4 x float>, ptr %i.dv, align 4
  %i.dx = fsub <4 x float> %i.do, %i.dw
  %i.dy = add nsw i32 %.0296386, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph388
  %.1 = phi i32 [ %i.dy, %bb.k ], [ %.0296386, %.lr.ph388 ] ; 2 uses
  %i.dz = phi <4 x float> [ %i.dx, %bb.k ], [ %i.do, %.lr.ph388 ] ; 2 uses
  %i.ea = add nsw i64 %indvars.iv424, %i.ai       ; 2 uses
  %i.eb = icmp slt i64 %i.ea, %i.al
  br i1 %i.eb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ec = mul nsw i64 %i.ea, %i.aj
  %gep461 = getelementptr [16 x i8], ptr %invariant.gep460, i64 %i.ec
  %i.ed = load <4 x float>, ptr %gep461, align 4
  %i.ee = fadd <4 x float> %i.dz, %i.ed
  %i.ef = add nsw i32 %.1, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2 = phi i32 [ %i.ef, %bb.m ], [ %.1, %bb.l ]  ; 2 uses
  %i.eg = phi <4 x float> [ %i.ee, %bb.m ], [ %i.dz, %bb.l ] ; 2 uses
  %i.eh = sitofp i32 %.2 to float
  %i.ei = mul nuw nsw i64 %indvars.iv424, %i.aj
  %gep463 = getelementptr [16 x i8], ptr %invariant.gep462, i64 %i.ei
  %i.ej = insertelement <4 x float> poison, float %i.eh, i64 0
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> zeroinitializer
  %i.el = fdiv <4 x float> %i.eg, %i.ek
  %i.em = fptoui <4 x float> %i.el to <4 x i8>
  %i.en = uitofp <4 x i8> %i.em to <4 x float>
  store <4 x float> %i.en, ptr %gep463, align 4
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 1 ; 2 uses
  %exitcond428.not = icmp eq i64 %indvars.iv.next425, %wide.trip.count427
  br i1 %exitcond428.not, label %._crit_edge, label %.lr.ph388

._crit_edge394:                                   ; preds = %bb.r, %.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.eq) #52
  tail call void @free(ptr noundef %i.o) #52
  tail call void @free(ptr noundef %i.u) #52
  store ptr %i.i, ptr %0, align 8
  store i32 7, ptr %i.eo, align 4
  tail call void @ImageFormat(ptr noundef nonnull %0, i32 noundef %i.ep)
  br label %bb.s

.lr.ph393:                                        ; preds = %.preheader, %bb.r
  %indvars.iv435 = phi i64 [ %indvars.iv.next436, %bb.r ], [ 0, %.preheader ] ; 4 uses
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv435 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.et = load float, ptr %i.es, align 4          ; 4 uses
  %i.eu = fcmp oeq float %i.et, 0.000000e+00
  br i1 %i.eu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph393
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv435
  store i32 0, ptr %i.ev, align 1
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph393
  %i.ew = fcmp ugt float %i.et, 2.550000e+02
  br i1 %i.ew, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ex = fdiv float %i.et, 2.550000e+02          ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv435
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fa = load float, ptr %i.ez, align 4
  %i.fb = fdiv nsz float %i.fa, %i.ex
  %i.fc = tail call nsz float @llvm.minnum.f32(float %i.fb, float 2.550000e+02)
  %i.fd = load <2 x float>, ptr %i.er, align 4
  %i.fe = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.ff = insertelement <4 x float> poison, float %i.fc, i64 2
  %i.fg = insertelement <4 x float> %i.ff, float %i.et, i64 3
  %i.fh = shufflevector <2 x float> %i.fd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fi = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.fj = fdiv nsz <4 x float> %i.fh, %i.fi
  %i.fk = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.fj, <4 x float> <float 2.550000e+02, float 2.550000e+02, float undef, float undef>)
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> %i.fg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fm = fptoui <4 x float> %i.fl to <4 x i8>
  store <4 x i8> %i.fm, ptr %i.ey, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.p
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435, 1 ; 2 uses
  %i.fn = load i32, ptr %i.c, align 8
  %i.fo = load i32, ptr %i.f, align 4
  %i.fp = mul nsw i32 %i.fo, %i.fn
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp slt i64 %indvars.iv.next436, %i.fq
  br i1 %i.fr, label %.lr.ph393, label %._crit_edge394

bb.s:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge394
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageKernelConvolution(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp eq ptr %1, null
  %or.cond = or i1 %i.i, %i.h
  br i1 %or.cond, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sitofp i32 %2 to float
  %i.k = tail call float @sqrtf(float noundef %i.j) #52
  %i.l = fptosi float %i.k to i32                 ; 8 uses
  %i.m = mul nsw i32 %i.l, %i.l
  %.not = icmp eq i32 %i.m, %2
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.62) #52
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.n = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %0) ; 3 uses
  %i.o = load i32, ptr %i.f, align 4
  %i.p = load i32, ptr %i.c, align 8
  %i.q = mul nsw i32 %i.p, %i.o
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 4
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #53 ; 3 uses
  %i.u = sext i32 %2 to i64
  %i.v = shl nsw i64 %i.u, 4
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #53 ; 10 uses
  %i.x = icmp sgt i32 %2, 0                       ; 3 uses
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.y = zext nneg i32 %2 to i64
  %i.z = shl nuw nsw i64 %i.y, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %i.z, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.f
  %i.aa = and i32 %i.l, 1
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %.neg = ashr exact i32 %i.l, 1                  ; 2 uses
  %i.ac = sub nsw i32 0, %.neg
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.ad = sdiv i32 %i.l, -2
  %i.ae = sdiv i32 %i.l, 2
  %i.af = add nsw i32 %i.ae, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0199 = phi i32 [ %i.ac, %bb.g ], [ %i.ad, %bb.h ] ; 2 uses
  %.0198 = phi i32 [ %.neg, %bb.g ], [ %i.af, %bb.h ] ; 2 uses
  %i.ag = load i32, ptr %i.f, align 4             ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  %.pre = load i32, ptr %i.c, align 8             ; 6 uses
  br i1 %i.ah, label %.preheader222.lr.ph, label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %bb.i
  %.pre279 = mul nsw i32 %i.ag, %.pre
  br label %.preheader

.preheader222.lr.ph:                              ; preds = %bb.i
  %i.ai = icmp sgt i32 %.pre, 0
  %i.aj = icmp slt i32 %.0199, %.0198
  %i.ak = mul nsw i32 %.pre, %i.ag                ; 3 uses
  br i1 %i.ai, label %.preheader222.preheader, label %.preheader

.preheader222.preheader:                          ; preds = %.preheader222.lr.ph
  %i.al = sdiv i32 %i.l, 2
  %i.am = sext i32 %.0199 to i64                  ; 2 uses
  %i.an = sext i32 %i.al to i64                   ; 2 uses
  %i.ao = sext i32 %i.l to i64
  %i.ap = zext i32 %2 to i64                      ; 3 uses
  %i.aq = shl nuw nsw i64 %i.ap, 4
  %wide.trip.count274 = zext nneg i32 %i.ag to i64
  %wide.trip.count269 = zext nneg i32 %.pre to i64
  %wide.trip.count256 = sext i32 %.0198 to i64    ; 2 uses
  %xtraiter = and i64 %i.ap, 3                    ; 3 uses
  %i.ar = icmp ult i32 %2, 4
  %unroll_iter = and i64 %i.ap, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod296 = icmp ne i64 %xtraiter, 0
  br label %.preheader222

.preheader222:                                    ; preds = %.preheader222.preheader, %._crit_edge243
  %indvars.iv271 = phi i64 [ 0, %.preheader222.preheader ], [ %indvars.iv.next272, %._crit_edge243 ] ; 3 uses
  %i.as = trunc i64 %indvars.iv271 to i32
  %i.at = mul i32 %.pre, %i.as
  %i.au = zext i32 %i.at to i64
  %invariant.gep286 = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.au
  br label %.preheader221

.preheader:                                       ; preds = %._crit_edge243, %..preheader_crit_edge, %.preheader222.lr.ph
  %.pre-phi = phi i32 [ %.pre279, %..preheader_crit_edge ], [ %i.ak, %.preheader222.lr.ph ], [ %i.ak, %._crit_edge243 ]
  %i.av = icmp sgt i32 %.pre-phi, 0
  br i1 %i.av, label %.lr.ph246, label %._crit_edge247

.preheader221:                                    ; preds = %.preheader222, %._crit_edge241
  %indvars.iv266 = phi i64 [ 0, %.preheader222 ], [ %indvars.iv.next267, %._crit_edge241 ] ; 3 uses
  br i1 %i.aj, label %.preheader219.preheader, label %.preheader220

.preheader219.preheader:                          ; preds = %.preheader221
  %i.aw = trunc nuw nsw i64 %indvars.iv266 to i32
  br label %.preheader219

._crit_edge243:                                   ; preds = %._crit_edge241
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count274
  br i1 %exitcond275.not, label %.preheader, label %.preheader222

.preheader220:                                    ; preds = %._crit_edge226, %.preheader221
  br i1 %i.x, label %.lr.ph233.preheader, label %._crit_edge234

.lr.ph233.preheader:                              ; preds = %.preheader220
  br i1 %i.ar, label %.lr.ph233.epil.preheader, label %.lr.ph233

.preheader219:                                    ; preds = %.preheader219.preheader, %._crit_edge226
  %indvars.iv253 = phi i64 [ %i.am, %.preheader219.preheader ], [ %indvars.iv.next254, %._crit_edge226 ] ; 3 uses
  %i.ax = add nsw i64 %indvars.iv253, %i.an
  %i.ay = add nsw i64 %indvars.iv253, %indvars.iv271
  %i.az = trunc i64 %i.ay to i32
  %i.ba = mul i32 %.pre, %i.az
  %i.bb = add i32 %i.ba, %i.aw
  %i.bc = mul nsw i64 %i.ax, %i.ao                ; 2 uses
  %invariant.gep = getelementptr [16 x i8], ptr %i.w, i64 %i.bc
  br label %bb.j

._crit_edge226:                                   ; preds = %bb.m
  %indvars.iv.next254 = add nsw i64 %indvars.iv253, 1 ; 2 uses
  %exitcond257.not = icmp eq i64 %indvars.iv.next254, %wide.trip.count256
  br i1 %exitcond257.not, label %.preheader220, label %.preheader219

bb.j:                                             ; preds = %.preheader219, %bb.m
  %indvars.iv = phi i64 [ %i.am, %.preheader219 ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.bd = add nsw i64 %indvars.iv, %i.an          ; 2 uses
  %i.be = trunc nsw i64 %indvars.iv to i32
  %i.bf = add i32 %i.bb, %i.be                    ; 2 uses
  %.not218 = icmp ult i32 %i.bf, %i.ak
  br i1 %.not218, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %i.bd
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %gep, i8 0, i64 16, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.bg
  %i.bi = add nsw i64 %i.bd, %i.bc                ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.w, i64 %i.bi
  %i.bm = load <4 x i8>, ptr %i.bh, align 1
  %i.bn = uitofp <4 x i8> %i.bm to <4 x float>
  %i.bo = fdiv nnan <4 x float> %i.bn, splat (float 2.550000e+02)
  %i.bp = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.br = fmul <4 x float> %i.bq, %i.bo
  store <4 x float> %i.br, ptr %i.bl, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count256
  br i1 %exitcond.not, label %._crit_edge226, label %bb.j

._crit_edge234.loopexit.unr-lcssa:                ; preds = %.lr.ph233
  br i1 %lcmp.mod.not, label %._crit_edge234, label %.lr.ph233.epil.preheader

.lr.ph233.epil.preheader:                         ; preds = %._crit_edge234.loopexit.unr-lcssa, %.lr.ph233.preheader
  %indvars.iv258.epil.init = phi i64 [ 0, %.lr.ph233.preheader ], [ %indvars.iv.next259.3, %._crit_edge234.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph233.preheader ], [ %i.dl, %._crit_edge234.loopexit.unr-lcssa ]
  %.epil.init293 = phi <2 x float> [ zeroinitializer, %.lr.ph233.preheader ], [ %i.do, %._crit_edge234.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod296)
  br label %.lr.ph233.epil

.lr.ph233.epil:                                   ; preds = %.lr.ph233.epil, %.lr.ph233.epil.preheader
  %indvars.iv258.epil = phi i64 [ %indvars.iv.next259.epil, %.lr.ph233.epil ], [ %indvars.iv258.epil.init, %.lr.ph233.epil.preheader ] ; 2 uses
  %i.bs = phi <2 x float> [ %i.bw, %.lr.ph233.epil ], [ %.epil.init, %.lr.ph233.epil.preheader ]
  %i.bt = phi <2 x float> [ %i.bz, %.lr.ph233.epil ], [ %.epil.init293, %.lr.ph233.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph233.epil ], [ 0, %.lr.ph233.epil.preheader ]
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv258.epil ; 2 uses
  %i.bv = load <2 x float>, ptr %i.bu, align 4
  %i.bw = fadd <2 x float> %i.bs, %i.bv           ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.by = load <2 x float>, ptr %i.bx, align 4
  %i.bz = fadd <2 x float> %i.bt, %i.by           ; 2 uses
  %indvars.iv.next259.epil = add nuw nsw i64 %indvars.iv258.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge234, label %.lr.ph233.epil, !llvm.loop !110

._crit_edge234:                                   ; preds = %._crit_edge234.loopexit.unr-lcssa, %.lr.ph233.epil, %.preheader220
  %i.ca = phi <2 x float> [ zeroinitializer, %.preheader220 ], [ %i.dl, %._crit_edge234.loopexit.unr-lcssa ], [ %i.bw, %.lr.ph233.epil ] ; 2 uses
  %i.cb = phi <2 x float> [ zeroinitializer, %.preheader220 ], [ %i.do, %._crit_edge234.loopexit.unr-lcssa ], [ %i.bz, %.lr.ph233.epil ] ; 2 uses
  %i.cc = fcmp olt <2 x float> %i.ca, zeroinitializer
  %i.cd = extractelement <2 x float> %i.cb, i64 0 ; 2 uses
  %i.ce = fcmp olt float %i.cd, 0.000000e+00
  %.3 = select i1 %i.ce, float 0.000000e+00, float %i.cd ; 2 uses
  %i.cf = fcmp ogt float %.3, 1.000000e+00
  %.4 = select i1 %i.cf, float 1.000000e+00, float %.3
  %gep287 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep286, i64 %indvars.iv266 ; 3 uses
  %i.cg = select <2 x i1> %i.cc, <2 x float> zeroinitializer, <2 x float> %i.ca ; 2 uses
  %i.ch = fcmp ogt <2 x float> %i.cg, splat (float 1.000000e+00)
  %i.ci = select <2 x i1> %i.ch, <2 x float> splat (float 1.000000e+00), <2 x float> %i.cg
  store <2 x float> %i.ci, ptr %gep287, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %gep287, i64 8
  store float %.4, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %gep287, i64 12
  %i.cl = extractelement <2 x float> %i.cb, i64 1
  store float %i.cl, ptr %i.ck, align 4
  br i1 %i.x, label %.lr.ph240.preheader, label %._crit_edge241

.lr.ph240.preheader:                              ; preds = %._crit_edge234
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %i.aq, i1 false)
  br label %._crit_edge241

.lr.ph233:                                        ; preds = %.lr.ph233.preheader, %.lr.ph233
  %indvars.iv258 = phi i64 [ %indvars.iv.next259.3, %.lr.ph233 ], [ 0, %.lr.ph233.preheader ] ; 5 uses
  %i.cm = phi <2 x float> [ %i.dl, %.lr.ph233 ], [ zeroinitializer, %.lr.ph233.preheader ]
  %i.cn = phi <2 x float> [ %i.do, %.lr.ph233 ], [ zeroinitializer, %.lr.ph233.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph233 ], [ 0, %.lr.ph233.preheader ]
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv258 ; 2 uses
  %i.cp = load <2 x float>, ptr %i.co, align 4
  %i.cq = fadd <2 x float> %i.cm, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load <2 x float>, ptr %i.cr, align 4
  %i.ct = fadd <2 x float> %i.cn, %i.cs
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv258 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load <2 x float>, ptr %i.cv, align 4
  %i.cx = fadd <2 x float> %i.cq, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cz = load <2 x float>, ptr %i.cy, align 4
  %i.da = fadd <2 x float> %i.ct, %i.cz
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv258 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load <2 x float>, ptr %i.dc, align 4
  %i.de = fadd <2 x float> %i.cx, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dg = load <2 x float>, ptr %i.df, align 4
  %i.dh = fadd <2 x float> %i.da, %i.dg
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv258 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dk = load <2 x float>, ptr %i.dj, align 4
  %i.dl = fadd <2 x float> %i.de, %i.dk           ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dn = load <2 x float>, ptr %i.dm, align 4
  %i.do = fadd <2 x float> %i.dh, %i.dn           ; 3 uses
  %indvars.iv.next259.3 = add nuw nsw i64 %indvars.iv258, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge234.loopexit.unr-lcssa, label %.lr.ph233

._crit_edge241:                                   ; preds = %.lr.ph240.preheader, %._crit_edge234
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count269
  br i1 %exitcond270.not, label %._crit_edge243, label %.preheader221

._crit_edge247:                                   ; preds = %.lr.ph246, %.preheader
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

.lr.ph246:                                        ; preds = %.preheader, %.lr.ph246
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %.lr.ph246 ], [ 0, %.preheader ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv276
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv276
  %i.du = load <4 x float>, ptr %i.ds, align 4
  %i.dv = fmul <4 x float> %i.du, splat (float 2.550000e+02)
  %i.dw = fptoui <4 x float> %i.dv to <4 x i8>
  store <4 x i8> %i.dw, ptr %i.dt, align 1
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %i.dx = load i32, ptr %i.c, align 8
  %i.dy = load i32, ptr %i.f, align 4
  %i.dz = mul nsw i32 %i.dy, %i.dx
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next277, %i.ea
  br i1 %i.eb, label %.lr.ph246, label %._crit_edge247

bb.n:                                             ; preds = %bb.e, %._crit_edge247, %bb.a, %bb.b, %bb.c
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
end_hunk_9
begin_hunk_10_@ImageDither:bb.a
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
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.i

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageFlipHorizontal(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.q, label %bb.d

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
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  switch i32 %i.m, label %bb.p [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.j
    i32 5, label %bb.j
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 4, label %GetPixelDataSize.exit
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 11, label %bb.j
    i32 12, label %bb.n
    i32 13, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  br label %GetPixelDataSize.exit

bb.k:                                             ; preds = %bb.h, %bb.h
  br label %GetPixelDataSize.exit

bb.l:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.m:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.n:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.o:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.p:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.h, %bb.p, %bb.k, %bb.j, %bb.i
  %i.o = phi i1 [ false, %bb.h ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ true, %bb.p ]
  %min.iters.check = phi i1 [ true, %bb.h ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ true, %bb.i ], [ true, %bb.j ], [ false, %bb.k ], [ true, %bb.p ]
  %min.iters.check67 = phi i1 [ true, %bb.h ], [ true, %bb.o ], [ true, %bb.n ], [ false, %bb.m ], [ true, %bb.l ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.p ]
  %i.p = phi i32 [ 3, %bb.h ], [ 8, %bb.o ], [ 6, %bb.n ], [ 16, %bb.m ], [ 12, %bb.l ], [ 1, %bb.i ], [ 2, %bb.j ], [ 4, %bb.k ], [ 0, %bb.p ] ; 7 uses
  %i.q = load i32, ptr %i.c, align 8
  %i.r = load i32, ptr %i.f, align 4
  %i.s = mul i32 %i.q, %i.p
  %i.t = mul i32 %i.s, %i.r
  %i.u = sext i32 %i.t to i64
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #53 ; 3 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = load i32, ptr %i.f, align 4              ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.preheader39.lr.ph, label %GetPixelDataSize.exit.._crit_edge44.split_crit_edge

GetPixelDataSize.exit.._crit_edge44.split_crit_edge: ; preds = %GetPixelDataSize.exit
  %.pre = load ptr, ptr %0, align 8
  br label %._crit_edge44.split

.preheader39.lr.ph:                               ; preds = %GetPixelDataSize.exit
  %i.z = load i32, ptr %i.c, align 8              ; 6 uses
  %i.aa = icmp slt i32 %i.z, 1
  %brmerge = or i1 %i.aa, %i.o
  %.pre61 = load ptr, ptr %0, align 8             ; 4 uses
  %.pre6166 = ptrtoaddr ptr %.pre61 to i64
  br i1 %brmerge, label %._crit_edge44.split, label %.preheader39.lr.ph.split.split

.preheader39.lr.ph.split.split:                   ; preds = %.preheader39.lr.ph
  %i.ab = zext nneg i32 %i.p to i64
  %i.ac = zext nneg i32 %i.z to i64
  %wide.trip.count59 = zext nneg i32 %i.x to i64
  %wide.trip.count54 = zext nneg i32 %i.z to i64  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.p to i64    ; 10 uses
  %i.ad = mul nuw nsw i64 %wide.trip.count, %wide.trip.count54
  %i.ae = add nsw i32 %i.z, -1
  %i.af = mul i32 %i.p, %i.ae
  %i.ag = zext i32 %i.af to i64
  %i.ah = mul i32 %i.p, %i.z
  %i.ai = zext i32 %i.ah to i64
  %i.aj = sub nsw i32 0, %i.p
  %i.ak = zext i32 %i.aj to i64
  %n.vec = and i64 %wide.trip.count, 16           ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.al = and i64 %wide.trip.count, 12
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  %n.vec68 = and i64 %wide.trip.count, 28         ; 3 uses
  %cmp.n70 = icmp eq i64 %n.vec68, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader39

.preheader39:                                     ; preds = %.preheader39.lr.ph.split.split, %._crit_edge42
  %indvars.iv56 = phi i64 [ 0, %.preheader39.lr.ph.split.split ], [ %indvars.iv.next57, %._crit_edge42 ] ; 4 uses
  %i.am = mul i64 %i.ad, %indvars.iv56
  %i.an = add i64 %i.am, %i.w
  %i.ao = mul i64 %indvars.iv56, %i.ai
  %i.ap = add i64 %i.ao, %i.ag
  %i.aq = mul nuw nsw i64 %indvars.iv56, %i.ac    ; 2 uses
  %i.ar = trunc nsw i64 %i.aq to i32
  %invariant.op = add nuw i32 %i.z, %i.ar
  br label %iter.check

._crit_edge44.split:                              ; preds = %._crit_edge42, %GetPixelDataSize.exit.._crit_edge44.split_crit_edge, %.preheader39.lr.ph
  %i.as = phi ptr [ %.pre, %GetPixelDataSize.exit.._crit_edge44.split_crit_edge ], [ %.pre61, %.preheader39.lr.ph ], [ %.pre61, %._crit_edge42 ]
  tail call void @free(ptr noundef %i.as) #52
  store ptr %i.v, ptr %0, align 8
  br label %bb.q

iter.check:                                       ; preds = %.preheader39, %._crit_edge
  %indvars.iv51 = phi i64 [ 0, %.preheader39 ], [ %indvars.iv.next52, %._crit_edge ] ; 5 uses
  %i.at = trunc i64 %indvars.iv51 to i32
  %i.au = xor i32 %i.at, -1
  %.reass = add i32 %invariant.op, %i.au
  %i.av = mul nsw i32 %.reass, %i.p
  %i.aw = add nuw nsw i64 %i.aq, %indvars.iv51
  %i.ax = mul nuw nsw i64 %i.aw, %i.ab
  %i.ay = sext i32 %i.av to i64
  %invariant.gep = getelementptr i8, ptr %.pre61, i64 %i.ay ; 7 uses
  %invariant.gep64 = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ax ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.az = mul i64 %indvars.iv51, %wide.trip.count
  %i.ba = add i64 %i.an, %i.az
  %i.bb = mul i64 %indvars.iv51, %i.ak
  %i.bc = add i64 %i.ap, %i.bb
  %sext = shl i64 %i.bc, 32
  %i.bd = ashr exact i64 %sext, 32
  %i.be = add i64 %i.bd, %.pre6166
  %i.bf = sub i64 %i.be, %i.ba
  %diff.check = icmp ugt i64 %i.bf, -16
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check67, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %wide.load = load <16 x i8>, ptr %invariant.gep, align 1
  store <16 x i8> %wide.load, ptr %invariant.gep64, align 1
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !8

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.bg = getelementptr i8, ptr %invariant.gep, i64 %index
  %wide.load69 = load <4 x i8>, ptr %i.bg, align 1
end_hunk_10
begin_hunk_11_@ImageDrawCircleLines:bb.a
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
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
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
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawRectangleLines(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, i32 noundef %3, i32 %4) local_unnamed_addr #39 {
bb.a:
  %.sroa.016.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = fptosi float %.sroa.016.0.vec.extract to i32
  %i.b = sitofp i32 %i.a to float                 ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.b, i64 0 ; 2 uses
  %i.c = shufflevector <2 x float> %1, <2 x float> %2, <2 x i32> <i32 1, i32 2>
  %i.d = fptosi <2 x float> %i.c to <2 x i32>
  %i.e = sitofp <2 x i32> %i.d to <2 x float>     ; 2 uses
  %i.f = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.e, <2 x i32> <i32 0, i32 2>
  %.sroa.9.12.vec.extract = extractelement <2 x float> %2, i64 1
  %i.g = shl nsw i32 %3, 1
  %i.h = sitofp i32 %i.g to float
  %i.i = fsub float %.sroa.9.12.vec.extract, %i.h
  %i.j = fptosi float %i.i to i32
  %i.k = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.l = insertelement <2 x i32> %i.k, i32 %i.j, i64 1
  %i.m = sitofp <2 x i32> %i.l to <2 x float>     ; 5 uses
  %.sroa.3.12.vec.insert.i = shufflevector <2 x float> %i.e, <2 x float> %i.m, <2 x i32> <i32 1, i32 2> ; 2 uses
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %i.f, <2 x float> %.sroa.3.12.vec.insert.i, i32 %4)
  %shift = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %shift, %i.m
  %i.n = fadd <2 x float> %1, %2
  %i.o = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fsub <2 x float> %i.n, %i.o              ; 2 uses
  %i.q = shufflevector <2 x float> %i.p, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.r = fptosi <2 x float> %i.q to <2 x i32>
  %i.s = sitofp <2 x i32> %i.r to <2 x float>     ; 2 uses
  %i.t = insertelement <2 x float> %i.s, float %i.b, i64 0
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %i.t, <2 x float> %i.m, i32 %4)
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %i.s, <2 x float> %i.m, i32 %4)
  %i.u = extractelement <2 x float> %i.p, i64 1
  %i.v = fptosi float %i.u to i32
  %i.w = sitofp i32 %i.v to float
  %.sroa.0.4.vec.insert.i46 = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.w, i64 1
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %.sroa.0.4.vec.insert.i46, <2 x float> %.sroa.3.12.vec.insert.i, i32 %4)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawTriangle(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, i32 %4) local_unnamed_addr #38 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = fcmp ogt <2 x float> %1, %2
  %i.c = select <2 x i1> %i.b, <2 x float> %1, <2 x float> %2 ; 2 uses
  %i.d = fcmp ogt <2 x float> %i.c, %3
  %i.e = select <2 x i1> %i.d, <2 x float> %i.c, <2 x float> %3
  %i.f = fptosi <2 x float> %i.e to <2 x i32>
  %i.g = load <2 x i32>, ptr %i.a, align 8
  %i.h = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.g, <2 x i32> %i.f) ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %2, %3
  %foldExtExtBinop223 = fsub <2 x float> %3, %2
  %foldExtExtBinop225 = fsub <2 x float> %1, %3
  %i.i = shufflevector <2 x float> %foldExtExtBinop225, <2 x float> %foldExtExtBinop223, <2 x i32> <i32 1, i32 3>
  %i.j = fptosi <2 x float> %i.i to <2 x i32>     ; 2 uses
  %i.k = fcmp olt <2 x float> %1, %2
  %i.l = select <2 x i1> %i.k, <2 x float> %1, <2 x float> %2 ; 2 uses
  %i.m = fcmp olt <2 x float> %i.l, %3
  %i.n = select <2 x i1> %i.m, <2 x float> %i.l, <2 x float> %3
  %i.o = fptosi <2 x float> %i.n to <2 x i32>
  %i.p = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.o, <2 x i32> zeroinitializer) ; 4 uses
  %foldExtExtBinop227 = fsub <2 x float> %1, %2
  %i.q = fsub <2 x float> %3, %1                  ; 2 uses
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.s = shufflevector <2 x float> %i.q, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.t = fptosi <2 x float> %i.s to <2 x i32>     ; 2 uses
  %i.u = fsub <2 x float> %2, %1                  ; 2 uses
  %i.v = fmul <2 x float> %i.u, %i.r              ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 0
  %i.x = extractelement <2 x float> %i.v, i64 1
  %i.y = fcmp ogt float %i.w, %i.x                ; 3 uses
  %i.z = shufflevector <2 x float> %i.u, <2 x float> %foldExtExtBinop227, <2 x i32> <i32 1, i32 2>
  %i.aa = fptosi <2 x float> %i.z to <2 x i32>    ; 2 uses
  %i.ab = sub nsw <2 x i32> zeroinitializer, %i.j
  %i.ac = sub nsw <2 x i32> zeroinitializer, %i.t
  %i.ad = sub nsw <2 x i32> zeroinitializer, %i.aa
  %i.ae = select i1 %i.y, <2 x i32> %i.ac, <2 x i32> %i.t ; 2 uses
  %i.af = select i1 %i.y, <2 x i32> %i.ab, <2 x i32> %i.j ; 2 uses
  %i.ag = select i1 %i.y, <2 x i32> %i.ad, <2 x i32> %i.aa ; 3 uses
  %i.ah = icmp sgt <2 x i32> %i.p, %i.h           ; 2 uses
  %i.ai = extractelement <2 x i1> %i.ah, i64 0
  %i.aj = extractelement <2 x i1> %i.ah, i64 1
  %or.cond = select i1 %i.aj, i1 true, i1 %i.ai
  br i1 %or.cond, label %._crit_edge210.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.ak = uitofp nneg <2 x i32> %i.p to <2 x float> ; 3 uses
  %i.al = sitofp <2 x i32> %i.ag to <2 x float>
  %i.am = fsub <2 x float> %i.ak, %1
  %i.an = fmul <2 x float> %i.am, %i.al           ; 2 uses
  %shift = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop229 = fadd <2 x float> %i.an, %shift
  %i.ao = extractelement <2 x float> %foldExtExtBinop229, i64 0
  %i.ap = fptosi float %i.ao to i32
  %i.aq = sitofp <2 x i32> %i.af to <2 x float>
  %i.ar = sitofp <2 x i32> %i.ae to <2 x float>
  %i.as = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = shufflevector <2 x float> %3, <2 x float> %2, <2 x i32> <i32 0, i32 2>
  %i.au = fsub <2 x float> %i.as, %i.at
  %i.av = fmul <2 x float> %i.au, %i.aq
  %i.aw = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = shufflevector <2 x float> %3, <2 x float> %2, <2 x i32> <i32 1, i32 3>
  %i.ay = fsub <2 x float> %i.aw, %i.ax
  %i.az = fmul <2 x float> %i.ay, %i.ar
  %i.ba = fadd <2 x float> %i.av, %i.az
  %i.bb = fptosi <2 x float> %i.ba to <2 x i32>
  %i.bc = extractelement <2 x i32> %i.p, i64 1
  %i.bd = extractelement <2 x i32> %i.p, i64 0
  %i.be = extractelement <2 x i32> %i.ag, i64 1
  %i.bf = extractelement <2 x i32> %i.h, i64 1
  %i.bg = extractelement <2 x i32> %i.ag, i64 0
  %i.bh = extractelement <2 x i32> %i.h, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0183209 = phi i32 [ %i.bl, %._crit_edge ], [ %i.bc, %.preheader.preheader ] ; 3 uses
  %.0184208 = phi i32 [ %i.bk, %._crit_edge ], [ %i.ap, %.preheader.preheader ] ; 2 uses
  %i.bi = phi <2 x i32> [ %i.bj, %._crit_edge ], [ %i.bb, %.preheader.preheader ] ; 2 uses
  br label %bb.b

._crit_edge210.split:                             ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.d
  %i.bj = add nsw <2 x i32> %i.bi, %i.ae
  %i.bk = add nsw i32 %.0184208, %i.be
  %i.bl = add nuw i32 %.0183209, 1
  %exitcond211.not = icmp eq i32 %.0183209, %i.bf
  br i1 %exitcond211.not, label %._crit_edge210.split, label %.preheader

bb.b:                                             ; preds = %.preheader, %bb.d
  %.0204 = phi i32 [ %i.bd, %.preheader ], [ %i.bs, %bb.d ] ; 3 uses
  %.0180203 = phi i32 [ %.0184208, %.preheader ], [ %i.br, %bb.d ] ; 2 uses
  %i.bm = phi <2 x i32> [ %i.bi, %.preheader ], [ %i.bq, %bb.d ] ; 3 uses
  %shift231 = shufflevector <2 x i32> %i.bm, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop232 = or <2 x i32> %i.bm, %shift231
  %i.bn = extractelement <2 x i32> %foldExtExtBinop232, i64 0
  %i.bo = or i32 %i.bn, %.0180203
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %.0204, i32 noundef %.0183209, i32 %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bq = add nsw <2 x i32> %i.bm, %i.af
  %i.br = add nsw i32 %.0180203, %i.bg
  %i.bs = add nuw i32 %.0204, 1
  %exitcond.not = icmp eq i32 %.0204, %i.bh
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawTriangleEx(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #38 {
bb.a:
  %i.a = fcmp olt <2 x float> %1, %2
  %i.b = select <2 x i1> %i.a, <2 x float> %1, <2 x float> %2 ; 2 uses
  %i.c = fcmp olt <2 x float> %i.b, %3
  %i.d = select <2 x i1> %i.c, <2 x float> %i.b, <2 x float> %3
  %i.e = fptosi <2 x float> %i.d to <2 x i32>
  %i.f = fcmp ogt <2 x float> %1, %2
  %i.g = select <2 x i1> %i.f, <2 x float> %1, <2 x float> %2 ; 2 uses
  %i.h = fcmp ogt <2 x float> %i.g, %3
  %i.i = select <2 x i1> %i.h, <2 x float> %i.g, <2 x float> %3 ; 2 uses
end_hunk_11
begin_hunk_12_@stbi__parse_png_file:bb.a
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
  %i.vf = icmp eq i32 %i.uc, 1
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
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
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

bb.fv:                                            ; preds = %bb.fu, %bb.ft, %bb.fs
  br i1 %i.sw, label %bb.fy, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.wu = zext nneg i8 %.0239 to i32              ; 2 uses
  store i32 %i.wu, ptr %i.gl, align 8
  %i.wv = icmp samesign ugt i32 %2, 2
  %spec.select = select i1 %i.wv, i32 %2, i32 %i.wu ; 4 uses
  store i32 %spec.select, ptr %i.sy, align 4
  %i.ww = load ptr, ptr %0, align 8               ; 2 uses
  %i.wx = load i32, ptr %i.ww, align 8
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 4
  %i.wz = load i32, ptr %i.wy, align 4
  %i.xa = mul i32 %i.wz, %i.wx                    ; 9 uses
  %i.xb = load ptr, ptr %i.g, align 8             ; 9 uses
  %or.cond.not.i.i.i.i355 = icmp sgt i32 %i.xa, -1
  br i1 %or.cond.not.i.i.i.i355, label %stbi__mul2sizes_valid.exit.i.i.i357, label %stbi__expand_png_palette.exit.thread

stbi__mul2sizes_valid.exit.i.i.i357:              ; preds = %bb.fw
  %i.xc = udiv i32 2147483647, %spec.select
  %.not10.i.i.i = icmp samesign ugt i32 %i.xa, %i.xc
  br i1 %.not10.i.i.i, label %stbi__expand_png_palette.exit.thread, label %stbi__malloc_mad2.exit.i

stbi__malloc_mad2.exit.i:                         ; preds = %stbi__mul2sizes_valid.exit.i.i.i357
  %i.xd = mul nuw nsw i32 %i.xa, %spec.select
  %i.xe = zext nneg i32 %i.xd to i64
  %i.xf = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.xe) #53 ; 6 uses
  %i.xg = icmp eq ptr %i.xf, null
  br i1 %i.xg, label %stbi__expand_png_palette.exit.thread, label %bb.fx

stbi__expand_png_palette.exit.thread:             ; preds = %bb.fw, %stbi__mul2sizes_valid.exit.i.i.i357, %stbi__malloc_mad2.exit.i
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %.thread400

bb.fx:                                            ; preds = %stbi__malloc_mad2.exit.i
  %i.xh = icmp eq i32 %spec.select, 3
  %.not56.i = icmp eq i32 %i.xa, 0                ; 2 uses
  br i1 %i.xh, label %.preheader.i361, label %.preheader49.i

.preheader49.i:                                   ; preds = %bb.fx
  br i1 %.not56.i, label %stbi__expand_png_palette.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader49.i
  %wide.trip.count.i = zext nneg i32 %i.xa to i64 ; 2 uses
  %xtraiter2145 = and i64 %wide.trip.count.i, 3   ; 3 uses
  %i.xi = icmp ult i32 %i.xa, 4
  br i1 %i.xi, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter2148 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.preheader.i361:                                  ; preds = %bb.fx
  br i1 %.not56.i, label %stbi__expand_png_palette.exit, label %.lr.ph55.preheader.i

.lr.ph55.preheader.i:                             ; preds = %.preheader.i361
  %wide.trip.count62.i = zext nneg i32 %i.xa to i64 ; 2 uses
  %xtraiter2150 = and i64 %wide.trip.count62.i, 1
  %i.xj = icmp eq i32 %i.xa, 1
  br i1 %i.xj, label %.lr.ph55.i.epil.preheader, label %.lr.ph55.preheader.i.new

.lr.ph55.preheader.i.new:                         ; preds = %.lr.ph55.preheader.i
  %unroll_iter2154 = and i64 %wide.trip.count62.i, 2147483646
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.lr.ph55.i, %.lr.ph55.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %indvars.iv.next60.i.1, %.lr.ph55.i ] ; 3 uses
  %.04553.i = phi ptr [ %i.xf, %.lr.ph55.preheader.i.new ], [ %i.yk, %.lr.ph55.i ] ; 7 uses
  %niter2155 = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %niter2155.next.1, %.lr.ph55.i ]
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv59.i
  %i.xl = load i8, ptr %i.xk, align 1
  %i.xm = zext i8 %i.xl to i64
  %i.xn = shl nuw nsw i64 %i.xm, 2
  %i.xo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xn ; 3 uses
  %i.xp = load i8, ptr %i.xo, align 4
  store i8 %i.xp, ptr %.04553.i, align 1
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xo, i64 1
  %i.xr = load i8, ptr %i.xq, align 1
  %i.xs = getelementptr inbounds nuw i8, ptr %.04553.i, i64 1
  store i8 %i.xr, ptr %i.xs, align 1
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xo, i64 2
  %i.xu = load i8, ptr %i.xt, align 2
  %i.xv = getelementptr inbounds nuw i8, ptr %.04553.i, i64 2
  store i8 %i.xu, ptr %i.xv, align 1
  %i.xw = getelementptr inbounds nuw i8, ptr %.04553.i, i64 3
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv59.i
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 1
  %i.xz = load i8, ptr %i.xy, align 1
  %i.ya = zext i8 %i.xz to i64
  %i.yb = shl nuw nsw i64 %i.ya, 2
  %i.yc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yb ; 3 uses
  %i.yd = load i8, ptr %i.yc, align 4
  store i8 %i.yd, ptr %i.xw, align 1
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 1
  %i.yf = load i8, ptr %i.ye, align 1
  %i.yg = getelementptr inbounds nuw i8, ptr %.04553.i, i64 4
  store i8 %i.yf, ptr %i.yg, align 1
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yc, i64 2
  %i.yi = load i8, ptr %i.yh, align 2
  %i.yj = getelementptr inbounds nuw i8, ptr %.04553.i, i64 5
  store i8 %i.yi, ptr %i.yj, align 1
  %i.yk = getelementptr inbounds nuw i8, ptr %.04553.i, i64 6 ; 2 uses
  %indvars.iv.next60.i.1 = add nuw nsw i64 %indvars.iv59.i, 2 ; 2 uses
  %niter2155.next.1 = add nuw i64 %niter2155, 2   ; 2 uses
  %niter2155.ncmp.1 = icmp eq i64 %niter2155.next.1, %unroll_iter2154
  br i1 %niter2155.ncmp.1, label %stbi__expand_png_palette.exit.loopexit.unr-lcssa, label %.lr.ph55.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i358 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i359.3, %.lr.ph.i ] ; 5 uses
  %.14651.i = phi ptr [ %i.xf, %.lr.ph.preheader.i.new ], [ %i.zp, %.lr.ph.i ] ; 5 uses
  %niter2149 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter2149.next.3, %.lr.ph.i ]
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv.i358
  %i.ym = load i8, ptr %i.yl, align 1
  %i.yn = zext i8 %i.ym to i64
  %i.yo = shl nuw nsw i64 %i.yn, 2
  %i.yp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yo
  %i.yq = load <4 x i8>, ptr %i.yp, align 4
  store <4 x i8> %i.yq, ptr %.14651.i, align 1
  %i.yr = getelementptr inbounds nuw i8, ptr %.14651.i, i64 4
  %i.ys = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv.i358
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 1
  %i.yu = load i8, ptr %i.yt, align 1
  %i.yv = zext i8 %i.yu to i64
  %i.yw = shl nuw nsw i64 %i.yv, 2
  %i.yx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yw
  %i.yy = load <4 x i8>, ptr %i.yx, align 4
  store <4 x i8> %i.yy, ptr %i.yr, align 1
  %i.yz = getelementptr inbounds nuw i8, ptr %.14651.i, i64 8
  %i.za = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv.i358
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 2
  %i.zc = load i8, ptr %i.zb, align 1
  %i.zd = zext i8 %i.zc to i64
  %i.ze = shl nuw nsw i64 %i.zd, 2
  %i.zf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ze
  %i.zg = load <4 x i8>, ptr %i.zf, align 4
  store <4 x i8> %i.zg, ptr %i.yz, align 1
  %i.zh = getelementptr inbounds nuw i8, ptr %.14651.i, i64 12
  %i.zi = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv.i358
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 3
  %i.zk = load i8, ptr %i.zj, align 1
  %i.zl = zext i8 %i.zk to i64
  %i.zm = shl nuw nsw i64 %i.zl, 2
  %i.zn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zm
  %i.zo = load <4 x i8>, ptr %i.zn, align 4
  store <4 x i8> %i.zo, ptr %i.zh, align 1
  %i.zp = getelementptr inbounds nuw i8, ptr %.14651.i, i64 16 ; 2 uses
  %indvars.iv.next.i359.3 = add nuw nsw i64 %indvars.iv.i358, 4 ; 2 uses
  %niter2149.next.3 = add nuw i64 %niter2149, 4   ; 2 uses
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
end_hunk_12
begin_hunk_13_@stbi__compute_transparency16:bb.a
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 4, i64 %i.j
  %n.vec = sub nsw i64 %i.e, %i.l                 ; 3 uses
  %i.m = shl nsw i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %.24.val, i64 %i.m
  %i.o = trunc i64 %n.vec to i32
  %i.p = load i16, ptr %0, align 2, !alias.scope !193
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.p, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 2                        ; 4 uses
  %next.gep = getelementptr i8, ptr %.24.val, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %.24.val, i64 %i.q
  %i.s = getelementptr i8, ptr %.24.val, i64 %i.q
  %i.t = getelementptr i8, ptr %.24.val, i64 %i.q
  %wide.vec = load <8 x i16>, ptr %next.gep, align 2, !alias.scope !196, !noalias !193
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.u = icmp ne <4 x i16> %strided.vec, %broadcast.splat
  %i.v = sext <4 x i1> %i.u to <4 x i16>          ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.x = getelementptr i8, ptr %i.r, i64 6
  %i.y = getelementptr i8, ptr %i.s, i64 10
  %i.z = getelementptr i8, ptr %i.t, i64 14
  %i.aa = extractelement <4 x i16> %i.v, i64 0
  store i16 %i.aa, ptr %i.w, align 2, !alias.scope !196, !noalias !193
  %i.ab = extractelement <4 x i16> %i.v, i64 1
  store i16 %i.ab, ptr %i.x, align 2, !alias.scope !196, !noalias !193
  %i.ac = extractelement <4 x i16> %i.v, i64 2
  store i16 %i.ac, ptr %i.y, align 2, !alias.scope !196, !noalias !193
  %i.ad = extractelement <4 x i16> %i.v, i64 3
  store i16 %i.ad, ptr %i.z, align 2, !alias.scope !196, !noalias !193
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %.lr.ph7.preheader7, label %vector.body, !llvm.loop !198

.lr.ph7.preheader7:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph7.preheader
  %.06.ph = phi ptr [ %.24.val, %vector.memcheck ], [ %.24.val, %.lr.ph7.preheader ], [ %i.n, %vector.body ] ; 2 uses
  %.0225.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph7.preheader ], [ %i.o, %vector.body ] ; 4 uses
  %i.af = sub i32 %i.a, %.0225.ph
  %xtraiter = and i32 %i.af, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph7.prol.loopexit, label %.lr.ph7.prol

.lr.ph7.prol:                                     ; preds = %.lr.ph7.preheader7, %.lr.ph7.prol
  %.06.prol = phi ptr [ %i.al, %.lr.ph7.prol ], [ %.06.ph, %.lr.ph7.preheader7 ] ; 3 uses
  %.0225.prol = phi i32 [ %i.am, %.lr.ph7.prol ], [ %.0225.ph, %.lr.ph7.preheader7 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph7.prol ], [ 0, %.lr.ph7.preheader7 ]
  %i.ag = load i16, ptr %.06.prol, align 2
  %i.ah = load i16, ptr %0, align 2
  %i.ai = icmp ne i16 %i.ag, %i.ah
  %i.aj = sext i1 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.prol, i64 2
  store i16 %i.aj, ptr %i.ak, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %.06.prol, i64 4 ; 2 uses
  %i.am = add nuw i32 %.0225.prol, 1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph7.prol.loopexit, label %.lr.ph7.prol, !llvm.loop !199

.lr.ph7.prol.loopexit:                            ; preds = %.lr.ph7.prol, %.lr.ph7.preheader7
  %.06.unr = phi ptr [ %.06.ph, %.lr.ph7.preheader7 ], [ %i.al, %.lr.ph7.prol ]
  %.0225.unr = phi i32 [ %.0225.ph, %.lr.ph7.preheader7 ], [ %i.am, %.lr.ph7.prol ]
  %i.an = sub i32 %.0225.ph, %i.a
  %i.ao = icmp ugt i32 %i.an, -4
  br i1 %i.ao, label %.loopexit, label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.prol.loopexit, %.lr.ph7
  %.06 = phi ptr [ %i.bm, %.lr.ph7 ], [ %.06.unr, %.lr.ph7.prol.loopexit ] ; 9 uses
  %.0225 = phi i32 [ %i.bn, %.lr.ph7 ], [ %.0225.unr, %.lr.ph7.prol.loopexit ]
  %i.ap = load i16, ptr %.06, align 2
  %i.aq = load i16, ptr %0, align 2
  %i.ar = icmp ne i16 %i.ap, %i.aq
  %i.as = sext i1 %i.ar to i16
  %i.at = getelementptr inbounds nuw i8, ptr %.06, i64 2
  store i16 %i.as, ptr %i.at, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %.06, i64 4
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = load i16, ptr %0, align 2
  %i.ax = icmp ne i16 %i.av, %i.aw
  %i.ay = sext i1 %i.ax to i16
  %i.az = getelementptr inbounds nuw i8, ptr %.06, i64 6
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %.06, i64 8
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = load i16, ptr %0, align 2
  %i.bd = icmp ne i16 %i.bb, %i.bc
  %i.be = sext i1 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %.06, i64 10
  store i16 %i.be, ptr %i.bf, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %.06, i64 12
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = load i16, ptr %0, align 2
  %i.bj = icmp ne i16 %i.bh, %i.bi
  %i.bk = sext i1 %i.bj to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %.06, i64 14
  store i16 %i.bk, ptr %i.bl, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %.06, i64 16
  %i.bn = add nuw i32 %.0225, 4                   ; 2 uses
  %exitcond10.not.3 = icmp eq i32 %i.bn, %i.a
  br i1 %exitcond10.not.3, label %.loopexit, label %.lr.ph7, !llvm.loop !200

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.14 = phi ptr [ %.24.val, %.lr.ph ], [ %i.ca, %bb.f ] ; 5 uses
  %.1233 = phi i32 [ 0, %.lr.ph ], [ %i.cb, %bb.f ]
  %i.bo = load i16, ptr %.14, align 2
  %i.bp = load i16, ptr %0, align 2
  %i.bq = icmp eq i16 %i.bo, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %.14, i64 2
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = load i16, ptr %i.c, align 2
  %i.bu = icmp eq i16 %i.bs, %i.bt
  br i1 %i.bu, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %.14, i64 4
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = load i16, ptr %i.d, align 2
  %i.by = icmp eq i16 %i.bw, %i.bx
  br i1 %i.by, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %.14, i64 6
  store i16 0, ptr %i.bz, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ca = getelementptr inbounds nuw i8, ptr %.14, i64 8
  %i.cb = add nuw i32 %.1233, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.cb, %i.a
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.f, %.lr.ph7.prol.loopexit, %.lr.ph7, %.preheader1, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stbi__compute_transparency(i32 %.0.val.0.val, i32 %.0.val.4.val, ptr nofree captures(none) %.24.val, ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #43 {
bb.a:
  %i.a = mul i32 %.0.val.4.val, %.0.val.0.val     ; 5 uses
  %i.b = icmp eq i32 %1, 2
  %.not8 = icmp eq i32 %i.a, 0                    ; 2 uses
  br i1 %i.b, label %.preheader, label %.preheader1

.preheader1:                                      ; preds = %bb.a
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not8, label %.loopexit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %.preheader
  %xtraiter = and i32 %i.a, 3                     ; 3 uses
  %i.e = icmp ult i32 %i.a, 4
  br i1 %i.e, label %.lr.ph7.epil.preheader, label %.lr.ph7.preheader.new

.lr.ph7.preheader.new:                            ; preds = %.lr.ph7.preheader
  %unroll_iter = and i32 %i.a, -4
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7, %.lr.ph7.preheader.new
  %.06 = phi ptr [ %.24.val, %.lr.ph7.preheader.new ], [ %i.ac, %.lr.ph7 ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph7.preheader.new ], [ %niter.next.3, %.lr.ph7 ]
  %i.f = load i8, ptr %.06, align 1
  %i.g = load i8, ptr %0, align 1
  %i.h = icmp ne i8 %i.f, %i.g
  %i.i = sext i1 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.06, i64 1
  store i8 %i.i, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.06, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %i.m = load i8, ptr %0, align 1
  %i.n = icmp ne i8 %i.l, %i.m
  %i.o = sext i1 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.06, i64 3
  store i8 %i.o, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.06, i64 4
  %i.r = load i8, ptr %i.q, align 1
  %i.s = load i8, ptr %0, align 1
  %i.t = icmp ne i8 %i.r, %i.s
  %i.u = sext i1 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.06, i64 5
  store i8 %i.u, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.06, i64 6
  %i.x = load i8, ptr %i.w, align 1
  %i.y = load i8, ptr %0, align 1
  %i.z = icmp ne i8 %i.x, %i.y
  %i.aa = sext i1 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.06, i64 7
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.06, i64 8 ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph7

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.14 = phi ptr [ %.24.val, %.lr.ph ], [ %i.ap, %bb.f ] ; 5 uses
  %.1233 = phi i32 [ 0, %.lr.ph ], [ %i.aq, %bb.f ]
  %i.ad = load i8, ptr %.14, align 1
  %i.ae = load i8, ptr %0, align 1
  %i.af = icmp eq i8 %i.ad, %i.ae
  br i1 %i.af, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.14, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = load i8, ptr %i.c, align 1
  %i.aj = icmp eq i8 %i.ah, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.14, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = load i8, ptr %i.d, align 1
  %i.an = icmp eq i8 %i.al, %i.am
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %.14, i64 3
  store i8 0, ptr %i.ao, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %.14, i64 4
  %i.aq = add nuw i32 %.1233, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.aq, %i.a
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph7.epil.preheader

.lr.ph7.epil.preheader:                           ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph7.preheader
  %.06.epil.init = phi ptr [ %.24.val, %.lr.ph7.preheader ], [ %i.ac, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.lr.ph7.epil

.lr.ph7.epil:                                     ; preds = %.lr.ph7.epil, %.lr.ph7.epil.preheader
  %.06.epil = phi ptr [ %i.aw, %.lr.ph7.epil ], [ %.06.epil.init, %.lr.ph7.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph7.epil ], [ 0, %.lr.ph7.epil.preheader ]
  %i.ar = load i8, ptr %.06.epil, align 1
  %i.as = load i8, ptr %0, align 1
  %i.at = icmp ne i8 %i.ar, %i.as
  %i.au = sext i1 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %.06.epil, i64 1
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph7.epil, !llvm.loop !201

.loopexit:                                        ; preds = %bb.f, %.loopexit.loopexit.unr-lcssa, %.lr.ph7.epil, %.preheader1, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @stbi__de_iphone(ptr nofree readonly captures(none) %.0.val, ptr nofree captures(none) %.24.val) unnamed_addr #15 {
bb.a:
  %i.a = load i32, ptr %.0.val, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = mul i32 %i.c, %i.a                       ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not21 = icmp eq i32 %i.d, 0
  br i1 %.not21, label %.loopexit, label %.lr.ph18.preheader

.lr.ph18.preheader:                               ; preds = %.preheader
  %xtraiter35 = and i32 %i.d, 3                   ; 3 uses
  %i.h = icmp ult i32 %i.d, 4
  br i1 %i.h, label %.lr.ph18.epil.preheader, label %.lr.ph18.preheader.new

.lr.ph18.preheader.new:                           ; preds = %.lr.ph18.preheader
  %unroll_iter39 = and i32 %i.d, -4
  br label %.lr.ph18

.lr.ph18:                                         ; preds = %.lr.ph18, %.lr.ph18.preheader.new
  %.04616 = phi ptr [ %.24.val, %.lr.ph18.preheader.new ], [ %i.x, %.lr.ph18 ] ; 10 uses
  %niter40 = phi i32 [ 0, %.lr.ph18.preheader.new ], [ %niter40.next.3, %.lr.ph18 ]
  %i.i = load i8, ptr %.04616, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %.04616, i64 2 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1
  store i8 %i.k, ptr %.04616, align 1
  store i8 %i.i, ptr %i.j, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %.04616, i64 3 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.04616, i64 5 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1
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
  %niter40.next.3 = add nuw i32 %niter40, 4       ; 2 uses
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
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
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
  %i.af = lshr i32 %i.ae, 3                       ; 13 uses
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
end_hunk_13
begin_hunk_14_@stbi__create_png_image_raw:bb.a
  %i.ot = getelementptr inbounds nuw i8, ptr %i.du, i64 %indvars.iv.next422.2
  store i8 %.narrow286.3, ptr %i.ot, align 1
  %indvars.iv.next422.3 = add nuw nsw i64 %indvars.iv421, 4 ; 2 uses
  %exitcond425.not.3 = icmp eq i64 %indvars.iv.next422.3, %wide.trip.count424
  br i1 %exitcond425.not.3, label %.preheader354, label %.lr.ph360, !llvm.loop !222

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %.lr.ph362
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %.lr.ph362 ], [ %indvars.iv426.ph, %.lr.ph362.preheader ] ; 5 uses
  %i.ou = getelementptr inbounds i8, ptr %i.ee, i64 %indvars.iv426
  %i.ov = load i8, ptr %i.ou, align 1
  %i.ow = sub nsw i64 %indvars.iv426, %i.as       ; 2 uses
  %i.ox = getelementptr inbounds i8, ptr %i.du, i64 %i.ow
  %i.oy = load i8, ptr %i.ox, align 1
  %i.oz = zext i8 %i.oy to i32                    ; 3 uses
  %i.pa = getelementptr inbounds i8, ptr %i.dz, i64 %indvars.iv426
  %i.pb = load i8, ptr %i.pa, align 1
  %i.pc = zext i8 %i.pb to i32                    ; 3 uses
  %i.pd = getelementptr inbounds i8, ptr %i.dz, i64 %i.ow
  %i.pe = load i8, ptr %i.pd, align 1
  %i.pf = zext i8 %i.pe to i32                    ; 2 uses
  %i.pg = mul nuw nsw i32 %i.pf, 3
  %i.ph = add nuw nsw i32 %i.pc, %i.oz
  %i.pi = sub nsw i32 %i.pg, %i.ph                ; 2 uses
  %i.pj = tail call i32 @llvm.umin.i32(i32 range(i32 0, 256) %i.oz, i32 range(i32 0, 256) %i.pc) ; 2 uses
  %i.pk = tail call i32 @llvm.umax.i32(i32 range(i32 0, 256) %i.oz, i32 range(i32 0, 256) %i.pc) ; 2 uses
  %.not.i303 = icmp sgt i32 %i.pk, %i.pi
  %i.pl = select i1 %.not.i303, i32 %i.pf, i32 %i.pj
  %.not20.i = icmp sgt i32 %i.pi, %i.pj
  %i.pm = select i1 %.not20.i, i32 %i.pl, i32 %i.pk
  %.tr = trunc nuw i32 %i.pm to i8
  %.narrow284 = add i8 %i.ov, %.tr
  %i.pn = getelementptr inbounds i8, ptr %i.du, i64 %indvars.iv426
  store i8 %.narrow284, ptr %i.pn, align 1
  %indvars.iv.next427 = add nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %i.aw
  br i1 %exitcond430.not, label %.loopexit348, label %.lr.ph362, !llvm.loop !223

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull align 1 %i.ee, i64 %i.as, i1 false)
  br i1 %i.at, label %iter.check715, label %.loopexit348

iter.check715:                                    ; preds = %bb.s
  br i1 %or.cond736, label %.lr.ph.preheader, label %vector.main.loop.iter.check700

vector.main.loop.iter.check700:                   ; preds = %iter.check715
  br i1 %min.iters.check701, label %vec.epilog.ph719, label %vector.body704

vector.body704:                                   ; preds = %vector.main.loop.iter.check700, %vector.body704
  %index705 = phi i64 [ %index.next710, %vector.body704 ], [ 0, %vector.main.loop.iter.check700 ] ; 3 uses
  %i.po = add i64 %index705, %i.as                ; 2 uses
  %i.pp = getelementptr inbounds i8, ptr %i.ee, i64 %i.po ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %wide.load706 = load <16 x i8>, ptr %i.pp, align 1
  %wide.load707 = load <16 x i8>, ptr %i.pq, align 1
  %i.pr = getelementptr inbounds i8, ptr %i.du, i64 %index705 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %wide.load708 = load <16 x i8>, ptr %i.pr, align 1
  %wide.load709 = load <16 x i8>, ptr %i.ps, align 1
  %i.pt = lshr <16 x i8> %wide.load708, splat (i8 1)
  %i.pu = lshr <16 x i8> %wide.load709, splat (i8 1)
  %i.pv = add <16 x i8> %i.pt, %wide.load706
  %i.pw = add <16 x i8> %i.pu, %wide.load707
  %i.px = getelementptr inbounds i8, ptr %i.du, i64 %i.po ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  store <16 x i8> %i.pv, ptr %i.px, align 1
  store <16 x i8> %i.pw, ptr %i.py, align 1
  %index.next710 = add nuw i64 %index705, 32      ; 2 uses
  %i.pz = icmp eq i64 %index.next710, %n.vec703
  br i1 %i.pz, label %middle.block711, label %vector.body704, !llvm.loop !224

middle.block711:                                  ; preds = %vector.body704
  br i1 %cmp.n712, label %.loopexit348, label %vec.epilog.iter.check717

vec.epilog.iter.check717:                         ; preds = %middle.block711
  br i1 %min.epilog.iters.check718, label %.lr.ph.preheader, label %vec.epilog.ph719, !prof !54

vec.epilog.ph719:                                 ; preds = %vector.main.loop.iter.check700, %vec.epilog.iter.check717
  %vec.epilog.resume.val713 = phi i64 [ %n.vec703, %vec.epilog.iter.check717 ], [ 0, %vector.main.loop.iter.check700 ]
  br label %vec.epilog.vector.body721

vec.epilog.vector.body721:                        ; preds = %vec.epilog.vector.body721, %vec.epilog.ph719
  %index722 = phi i64 [ %vec.epilog.resume.val713, %vec.epilog.ph719 ], [ %index.next725, %vec.epilog.vector.body721 ] ; 3 uses
  %i.qa = add i64 %index722, %i.as                ; 2 uses
  %i.qb = getelementptr inbounds i8, ptr %i.ee, i64 %i.qa
  %wide.load723 = load <8 x i8>, ptr %i.qb, align 1
  %i.qc = getelementptr inbounds i8, ptr %i.du, i64 %index722
  %wide.load724 = load <8 x i8>, ptr %i.qc, align 1
  %i.qd = lshr <8 x i8> %wide.load724, splat (i8 1)
  %i.qe = add <8 x i8> %i.qd, %wide.load723
  %i.qf = getelementptr inbounds i8, ptr %i.du, i64 %i.qa
  store <8 x i8> %i.qe, ptr %i.qf, align 1
  %index.next725 = add nuw i64 %index722, 8       ; 2 uses
  %i.qg = icmp eq i64 %index.next725, %n.vec720
  br i1 %i.qg, label %vec.epilog.middle.block726, label %vec.epilog.vector.body721, !llvm.loop !225

vec.epilog.middle.block726:                       ; preds = %vec.epilog.vector.body721
  br i1 %cmp.n727, label %.loopexit348, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check715, %vec.epilog.iter.check717, %vec.epilog.middle.block726
  %indvars.iv.ph = phi i64 [ %i.as, %iter.check715 ], [ %i.bl, %vec.epilog.iter.check717 ], [ %i.bm, %vec.epilog.middle.block726 ] ; 7 uses
  %i.qh = sub nsw i64 %i.aw, %indvars.iv.ph
  %xtraiter = and i64 %i.qh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.qi = getelementptr inbounds i8, ptr %i.ee, i64 %indvars.iv.ph
  %i.qj = load i8, ptr %i.qi, align 1
  %i.qk = sub nsw i64 %indvars.iv.ph, %i.as
  %i.ql = getelementptr inbounds i8, ptr %i.du, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1
  %i.qn = lshr i8 %i.qm, 1
  %.narrow.prol = add i8 %i.qn, %i.qj
  %i.qo = getelementptr inbounds i8, ptr %i.du, i64 %indvars.iv.ph
  store i8 %.narrow.prol, ptr %i.qo, align 1
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.qp = icmp eq i64 %indvars.iv.ph, %i.bn
  br i1 %i.qp, label %.loopexit348, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.qq = getelementptr inbounds i8, ptr %i.ee, i64 %indvars.iv
  %i.qr = load i8, ptr %i.qq, align 1
  %i.qs = sub nsw i64 %indvars.iv, %i.as
  %i.qt = getelementptr inbounds i8, ptr %i.du, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1
  %i.qv = lshr i8 %i.qu, 1
  %.narrow = add i8 %i.qv, %i.qr
  %i.qw = getelementptr inbounds i8, ptr %i.du, i64 %indvars.iv
  store i8 %.narrow, ptr %i.qw, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.qx = getelementptr inbounds i8, ptr %i.ee, i64 %indvars.iv.next
  %i.qy = load i8, ptr %i.qx, align 1
  %i.qz = sub nsw i64 %indvars.iv.next, %i.as
  %i.ra = getelementptr inbounds i8, ptr %i.du, i64 %i.qz
  %i.rb = load i8, ptr %i.ra, align 1
  %i.rc = lshr i8 %i.rb, 1
  %.narrow.1 = add i8 %i.rc, %i.qy
  %i.rd = getelementptr inbounds i8, ptr %i.du, i64 %indvars.iv.next
  store i8 %.narrow.1, ptr %i.rd, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.aw
  br i1 %exitcond.not.1, label %.loopexit348, label %.lr.ph, !llvm.loop !226

.loopexit348:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph362, %.lr.ph366.prol.loopexit, %.lr.ph366, %.lr.ph368.prol.loopexit, %.lr.ph368, %.lr.ph370.prol.loopexit, %.lr.ph370, %middle.block711, %vec.epilog.middle.block726, %middle.block644, %vec.epilog.middle.block661, %middle.block574, %vec.epilog.middle.block590, %middle.block542, %vec.epilog.middle.block556, %middle.block517, %vec.epilog.middle.block, %bb.s, %.preheader354, %.preheader351, %.preheader349, %bb.r, %bb.q, %bb.p
  %i.re = getelementptr inbounds i8, ptr %i.ee, i64 %i.aw
  br i1 %i.ap, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %.loopexit348
  br i1 %i.bd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.rf = load i8, ptr %i.bf, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.rg = phi i8 [ %i.rf, %bb.u ], [ 1, %bb.t ]   ; 9 uses
  switch i32 %6, label %.preheader [
    i32 4, label %.preheader336
    i32 2, label %.preheader338
  ]

.preheader338:                                    ; preds = %bb.v
  br i1 %.not404, label %.loopexit335, label %.lr.ph387.preheader

.lr.ph387.preheader:                              ; preds = %.preheader338
  br i1 %i.co, label %.lr.ph387.epil.preheader, label %.lr.ph387

.preheader336:                                    ; preds = %bb.v
  br i1 %.not404, label %.loopexit335, label %.lr.ph392.preheader

.lr.ph392.preheader:                              ; preds = %.preheader336
  br i1 %i.cp, label %.lr.ph392.epil.preheader, label %.lr.ph392

.preheader:                                       ; preds = %bb.v
  br i1 %.not404, label %.loopexit335, label %.lr.ph397.preheader

.lr.ph397.preheader:                              ; preds = %.preheader
  br i1 %i.cq, label %.lr.ph397.epil.preheader, label %.lr.ph397

.lr.ph392:                                        ; preds = %.lr.ph392.preheader, %.lr.ph392
  %.0239390 = phi ptr [ %i.ro, %.lr.ph392 ], [ %i.ed, %.lr.ph392.preheader ] ; 3 uses
  %.0242389 = phi ptr [ %i.rh, %.lr.ph392 ], [ %i.du, %.lr.ph392.preheader ] ; 2 uses
  %.0265388 = phi i32 [ %i.rp, %.lr.ph392 ], [ 0, %.lr.ph392.preheader ]
  %niter786 = phi i32 [ %niter786.next.1, %.lr.ph392 ], [ 0, %.lr.ph392.preheader ]
  %i.rh = getelementptr inbounds nuw i8, ptr %.0242389, i64 1 ; 2 uses
  %i.ri = load i8, ptr %.0242389, align 1         ; 2 uses
  %i.rj = lshr i8 %i.ri, 4
  %i.rk = mul i8 %i.rj, %i.rg
  %i.rl = getelementptr inbounds nuw i8, ptr %.0239390, i64 1
  store i8 %i.rk, ptr %.0239390, align 1
  %i.rm = and i8 %i.ri, 15
  %i.rn = mul i8 %i.rm, %i.rg
  %i.ro = getelementptr inbounds nuw i8, ptr %.0239390, i64 2 ; 2 uses
  store i8 %i.rn, ptr %i.rl, align 1
  %i.rp = add nuw i32 %.0265388, 2                ; 2 uses
  %niter786.next.1 = add nuw i32 %niter786, 2     ; 2 uses
  %niter786.ncmp.1 = icmp eq i32 %niter786.next.1, %unroll_iter785
  br i1 %niter786.ncmp.1, label %.loopexit335.loopexit738.unr-lcssa, label %.lr.ph392

.lr.ph387:                                        ; preds = %.lr.ph387.preheader, %.lr.ph387.1
  %.2238386 = phi i8 [ %i.sb, %.lr.ph387.1 ], [ 0, %.lr.ph387.preheader ]
  %.1240385 = phi ptr [ %i.sa, %.lr.ph387.1 ], [ %i.ed, %.lr.ph387.preheader ] ; 3 uses
  %.2244384 = phi ptr [ %.3245, %.lr.ph387.1 ], [ %i.du, %.lr.ph387.preheader ] ; 3 uses
  %.1266383 = phi i32 [ %i.sc, %.lr.ph387.1 ], [ 0, %.lr.ph387.preheader ] ; 2 uses
  %niter780 = phi i32 [ %niter780.next.1, %.lr.ph387.1 ], [ 0, %.lr.ph387.preheader ]
  %i.rq = and i32 %.1266383, 2
  %i.rr = icmp eq i32 %i.rq, 0
  br i1 %i.rr, label %bb.w, label %.lr.ph387.1

bb.w:                                             ; preds = %.lr.ph387
  %i.rs = getelementptr inbounds nuw i8, ptr %.2244384, i64 1
  %i.rt = load i8, ptr %.2244384, align 1
  br label %.lr.ph387.1

.lr.ph387.1:                                      ; preds = %bb.w, %.lr.ph387
  %.3245 = phi ptr [ %i.rs, %bb.w ], [ %.2244384, %.lr.ph387 ] ; 2 uses
  %.3 = phi i8 [ %i.rt, %bb.w ], [ %.2238386, %.lr.ph387 ] ; 3 uses
  %i.ru = lshr i8 %.3, 6
  %i.rv = mul i8 %i.ru, %i.rg
  %i.rw = getelementptr inbounds nuw i8, ptr %.1240385, i64 1
  store i8 %i.rv, ptr %.1240385, align 1
  %i.rx = lshr i8 %.3, 4
  %i.ry = and i8 %i.rx, 3
  %i.rz = mul i8 %i.ry, %i.rg
  %i.sa = getelementptr inbounds nuw i8, ptr %.1240385, i64 2 ; 2 uses
  store i8 %i.rz, ptr %i.rw, align 1
  %i.sb = shl i8 %.3, 4                           ; 2 uses
  %i.sc = add nuw i32 %.1266383, 2                ; 2 uses
  %niter780.next.1 = add nuw i32 %niter780, 2     ; 2 uses
  %niter780.ncmp.1 = icmp eq i32 %niter780.next.1, %unroll_iter779
  br i1 %niter780.ncmp.1, label %.loopexit335.loopexit739.unr-lcssa, label %.lr.ph387

.lr.ph397:                                        ; preds = %.lr.ph397.preheader, %.lr.ph397.1
  %.4396 = phi i8 [ %i.sl, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ]
  %.2241395 = phi ptr [ %i.sk, %.lr.ph397.1 ], [ %i.ed, %.lr.ph397.preheader ] ; 3 uses
  %.4246394 = phi ptr [ %.5247, %.lr.ph397.1 ], [ %i.du, %.lr.ph397.preheader ] ; 3 uses
  %.2267393 = phi i32 [ %i.sm, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ] ; 2 uses
  %niter792 = phi i32 [ %niter792.next.1, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ]
  %i.sd = and i32 %.2267393, 6
  %i.se = icmp eq i32 %i.sd, 0
  br i1 %i.se, label %bb.x, label %.lr.ph397.1

bb.x:                                             ; preds = %.lr.ph397
  %i.sf = getelementptr inbounds nuw i8, ptr %.4246394, i64 1
  %i.sg = load i8, ptr %.4246394, align 1
  br label %.lr.ph397.1

.lr.ph397.1:                                      ; preds = %bb.x, %.lr.ph397
  %.5247 = phi ptr [ %i.sf, %bb.x ], [ %.4246394, %.lr.ph397 ] ; 2 uses
  %.5 = phi i8 [ %i.sg, %bb.x ], [ %.4396, %.lr.ph397 ] ; 3 uses
  %isneg = icmp slt i8 %.5, 0
  %i.sh = select i1 %isneg, i8 %i.rg, i8 0
  %i.si = getelementptr inbounds nuw i8, ptr %.2241395, i64 1
  store i8 %i.sh, ptr %.2241395, align 1
  %.mask = and i8 %.5, 64
  %isneg.1.not = icmp eq i8 %.mask, 0
  %i.sj = select i1 %isneg.1.not, i8 0, i8 %i.rg
  %i.sk = getelementptr inbounds nuw i8, ptr %.2241395, i64 2 ; 2 uses
  store i8 %i.sj, ptr %i.si, align 1
  %i.sl = shl i8 %.5, 2                           ; 2 uses
  %i.sm = add nuw i32 %.2267393, 2                ; 2 uses
  %niter792.next.1 = add nuw i32 %niter792, 2     ; 2 uses
  %niter792.ncmp.1 = icmp eq i32 %niter792.next.1, %unroll_iter791
  br i1 %niter792.ncmp.1, label %.loopexit335.loopexit.unr-lcssa, label %.lr.ph397

.loopexit335.loopexit.unr-lcssa:                  ; preds = %.lr.ph397.1
  br i1 %lcmp.mod789.not, label %.loopexit335, label %.lr.ph397.epil.preheader

.lr.ph397.epil.preheader:                         ; preds = %.loopexit335.loopexit.unr-lcssa, %.lr.ph397.preheader
  %.4396.epil.init = phi i8 [ 0, %.lr.ph397.preheader ], [ %i.sl, %.loopexit335.loopexit.unr-lcssa ]
  %.2241395.epil.init = phi ptr [ %i.ed, %.lr.ph397.preheader ], [ %i.sk, %.loopexit335.loopexit.unr-lcssa ]
  %.4246394.epil.init = phi ptr [ %i.du, %.lr.ph397.preheader ], [ %.5247, %.loopexit335.loopexit.unr-lcssa ]
  %.2267393.epil.init = phi i32 [ 0, %.lr.ph397.preheader ], [ %i.sm, %.loopexit335.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod790)
  %i.sn = and i32 %.2267393.epil.init, 7
  %i.so = icmp eq i32 %i.sn, 0
  br i1 %i.so, label %bb.y, label %.loopexit335.loopexit.epilog-lcssa

bb.y:                                             ; preds = %.lr.ph397.epil.preheader
  %i.sp = load i8, ptr %.4246394.epil.init, align 1
  br label %.loopexit335.loopexit.epilog-lcssa

.loopexit335.loopexit.epilog-lcssa:               ; preds = %bb.y, %.lr.ph397.epil.preheader
  %.5.epil = phi i8 [ %i.sp, %bb.y ], [ %.4396.epil.init, %.lr.ph397.epil.preheader ]
  %isneg.epil = icmp slt i8 %.5.epil, 0
  %i.sq = select i1 %isneg.epil, i8 %i.rg, i8 0
  store i8 %i.sq, ptr %.2241395.epil.init, align 1
  br label %.loopexit335

.loopexit335.loopexit738.unr-lcssa:               ; preds = %.lr.ph392
  br i1 %lcmp.mod783.not, label %.loopexit335, label %.lr.ph392.epil.preheader

.lr.ph392.epil.preheader:                         ; preds = %.loopexit335.loopexit738.unr-lcssa, %.lr.ph392.preheader
  %.0239390.epil.init = phi ptr [ %i.ed, %.lr.ph392.preheader ], [ %i.ro, %.loopexit335.loopexit738.unr-lcssa ]
  %.0242389.epil.init = phi ptr [ %i.du, %.lr.ph392.preheader ], [ %i.rh, %.loopexit335.loopexit738.unr-lcssa ]
  %.0265388.epil.init = phi i32 [ 0, %.lr.ph392.preheader ], [ %i.rp, %.loopexit335.loopexit738.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod784)
  %i.sr = and i32 %.0265388.epil.init, 1
  %i.ss = icmp eq i32 %i.sr, 0
  br i1 %i.ss, label %bb.z, label %.loopexit335.loopexit738.epilog-lcssa

bb.z:                                             ; preds = %.lr.ph392.epil.preheader
  %i.st = load i8, ptr %.0242389.epil.init, align 1
  %i.su = lshr i8 %i.st, 4
  %i.sv = mul i8 %i.su, %i.rg
  br label %.loopexit335.loopexit738.epilog-lcssa

.loopexit335.loopexit738.epilog-lcssa:            ; preds = %bb.z, %.lr.ph392.epil.preheader
  %.1237.epil = phi i8 [ %i.sv, %bb.z ], [ 0, %.lr.ph392.epil.preheader ]
  store i8 %.1237.epil, ptr %.0239390.epil.init, align 1
  br label %.loopexit335

.loopexit335.loopexit739.unr-lcssa:               ; preds = %.lr.ph387.1
  br i1 %lcmp.mod777.not, label %.loopexit335, label %.lr.ph387.epil.preheader

.lr.ph387.epil.preheader:                         ; preds = %.loopexit335.loopexit739.unr-lcssa, %.lr.ph387.preheader
  %.2238386.epil.init = phi i8 [ 0, %.lr.ph387.preheader ], [ %i.sb, %.loopexit335.loopexit739.unr-lcssa ]
  %.1240385.epil.init = phi ptr [ %i.ed, %.lr.ph387.preheader ], [ %i.sa, %.loopexit335.loopexit739.unr-lcssa ]
  %.2244384.epil.init = phi ptr [ %i.du, %.lr.ph387.preheader ], [ %.3245, %.loopexit335.loopexit739.unr-lcssa ]
  %.1266383.epil.init = phi i32 [ 0, %.lr.ph387.preheader ], [ %i.sc, %.loopexit335.loopexit739.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod778)
  %i.sw = and i32 %.1266383.epil.init, 3
  %i.sx = icmp eq i32 %i.sw, 0
  br i1 %i.sx, label %bb.aa, label %.loopexit335.loopexit739.epilog-lcssa

bb.aa:                                            ; preds = %.lr.ph387.epil.preheader
  %i.sy = load i8, ptr %.2244384.epil.init, align 1
  br label %.loopexit335.loopexit739.epilog-lcssa

.loopexit335.loopexit739.epilog-lcssa:            ; preds = %bb.aa, %.lr.ph387.epil.preheader
  %.3.epil = phi i8 [ %i.sy, %bb.aa ], [ %.2238386.epil.init, %.lr.ph387.epil.preheader ]
  %i.sz = lshr i8 %.3.epil, 6
  %i.ta = mul i8 %i.sz, %i.rg
  store i8 %i.ta, ptr %.1240385.epil.init, align 1
  br label %.loopexit335

.loopexit335:                                     ; preds = %.loopexit335.loopexit739.epilog-lcssa, %.loopexit335.loopexit739.unr-lcssa, %.loopexit335.loopexit738.epilog-lcssa, %.loopexit335.loopexit738.unr-lcssa, %.loopexit335.loopexit.epilog-lcssa, %.loopexit335.loopexit.unr-lcssa, %.preheader338, %.preheader336, %.preheader
  br i1 %i.ay, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit335
  br i1 %i.az, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.ab
  br i1 %i.ba, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %.preheader26.i
  br i1 %lcmp.mod794.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.cs ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 3
  store i8 -1, ptr %i.tc, align 1
  %i.td = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ct ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 2
  %i.tf = load i8, ptr %i.te, align 1
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tb, i64 2
  store i8 %i.tf, ptr %i.tg, align 1
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 1
  %i.ti = load i8, ptr %i.th, align 1
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tb, i64 1
  store i8 %i.ti, ptr %i.tj, align 1
  %i.tk = load i8, ptr %i.td, align 1
  store i8 %i.tk, ptr %i.tb, align 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.bb, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  br i1 %i.cu, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.ab
  br i1 %i.ba, label %.lr.ph32.i.preheader, label %.loopexit

.lr.ph32.i.preheader:                             ; preds = %.preheader.i
  br i1 %lcmp.mod797.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol

.lr.ph32.i.prol:                                  ; preds = %.lr.ph32.i.preheader, %.lr.ph32.i.prol
  %indvars.iv35.i.prol = phi i64 [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ], [ %i.bb, %.lr.ph32.i.preheader ] ; 3 uses
  %prol.iter798 = phi i64 [ %prol.iter798.next, %.lr.ph32.i.prol ], [ 0, %.lr.ph32.i.preheader ]
  %i.tl = shl nuw nsw i64 %indvars.iv35.i.prol, 1
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.tl ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 1
  store i8 -1, ptr %i.tn, align 1
  %i.to = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv35.i.prol
  %i.tp = load i8, ptr %i.to, align 1
  store i8 %i.tp, ptr %i.tm, align 1
  %indvars.iv.next36.i.prol = add nsw i64 %indvars.iv35.i.prol, -1 ; 2 uses
  %prol.iter798.next = add i64 %prol.iter798, 1   ; 2 uses
  %prol.iter798.cmp.not = icmp eq i64 %prol.iter798.next, %xtraiter796
  br i1 %prol.iter798.cmp.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol, !llvm.loop !227

.lr.ph32.i.prol.loopexit:                         ; preds = %.lr.ph32.i.prol, %.lr.ph32.i.preheader
  %indvars.iv35.i.unr = phi i64 [ %i.bb, %.lr.ph32.i.preheader ], [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ]
  br i1 %i.cv, label %.loopexit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.prol.loopexit, %.lr.ph32.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.3, %.lr.ph32.i ], [ %indvars.iv35.i.unr, %.lr.ph32.i.prol.loopexit ] ; 6 uses
  %i.tq = shl nuw nsw i64 %indvars.iv35.i, 1
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.tq ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 1
  store i8 -1, ptr %i.ts, align 1
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv35.i
  %i.tu = load i8, ptr %i.tt, align 1
  store i8 %i.tu, ptr %i.tr, align 1
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, -1 ; 2 uses
  %i.tv = shl nuw nsw i64 %indvars.iv.next36.i, 1
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.tv ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 1
  store i8 -1, ptr %i.tx, align 1
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.next36.i
  %i.tz = load i8, ptr %i.ty, align 1
  store i8 %i.tz, ptr %i.tw, align 1
  %indvars.iv.next36.i.1 = add nsw i64 %indvars.iv35.i, -2 ; 2 uses
  %i.ua = shl nuw nsw i64 %indvars.iv.next36.i.1, 1
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ua ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 1
  store i8 -1, ptr %i.uc, align 1
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.next36.i.1
  %i.ue = load i8, ptr %i.ud, align 1
  store i8 %i.ue, ptr %i.ub, align 1
  %indvars.iv.next36.i.2 = add nsw i64 %indvars.iv35.i, -3 ; 3 uses
  %i.uf = shl nuw nsw i64 %indvars.iv.next36.i.2, 1
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.uf ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 1
  store i8 -1, ptr %i.uh, align 1
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.next36.i.2
  %i.uj = load i8, ptr %i.ui, align 1
  store i8 %i.uj, ptr %i.ug, align 1
  %indvars.iv.next36.i.3 = add nsw i64 %indvars.iv35.i, -4
  %.not39.i.3 = icmp eq i64 %indvars.iv.next36.i.2, 0
  br i1 %.not39.i.3, label %.loopexit, label %.lr.ph32.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.uk = shl nsw i64 %indvars.iv.i, 2
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.uk ; 4 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 3
  store i8 -1, ptr %i.um, align 1
  %i.un = mul nuw nsw i64 %indvars.iv.i, 3
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.un ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 2
  %i.uq = load i8, ptr %i.up, align 1
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ul, i64 2
  store i8 %i.uq, ptr %i.ur, align 1
  %i.us = getelementptr inbounds nuw i8, ptr %i.uo, i64 1
  %i.ut = load i8, ptr %i.us, align 1
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ul, i64 1
  store i8 %i.ut, ptr %i.uu, align 1
  %i.uv = load i8, ptr %i.uo, align 1
  store i8 %i.uv, ptr %i.ul, align 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.uw = shl nsw i64 %indvars.iv.next.i, 2
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.uw ; 4 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 3
  store i8 -1, ptr %i.uy, align 1
  %i.uz = mul nuw nsw i64 %indvars.iv.next.i, 3
  %i.va = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.uz ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 2
  %i.vc = load i8, ptr %i.vb, align 1
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ux, i64 2
  store i8 %i.vc, ptr %i.vd, align 1
  %i.ve = getelementptr inbounds nuw i8, ptr %i.va, i64 1
  %i.vf = load i8, ptr %i.ve, align 1
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ux, i64 1
  store i8 %i.vf, ptr %i.vg, align 1
  %i.vh = load i8, ptr %i.va, align 1
  store i8 %i.vh, ptr %i.ux, align 1
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2
  %.not.i304.1 = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.i304.1, label %.loopexit, label %.lr.ph.i

bb.ac:                                            ; preds = %.loopexit348
  br i1 %i.ax, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.ay, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ed, ptr nonnull align 1 %i.du, i64 %i.bc, i1 false)
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  br i1 %i.az, label %.preheader.i312, label %.preheader26.i306

.preheader26.i306:                                ; preds = %bb.af
  br i1 %i.ba, label %.lr.ph.i308.preheader, label %.loopexit

.lr.ph.i308.preheader:                            ; preds = %.preheader26.i306
  br i1 %lcmp.mod773.not.not, label %.lr.ph.i308.prol, label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol:                                 ; preds = %.lr.ph.i308.preheader
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.cj ; 4 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 3
  store i8 -1, ptr %i.vj, align 1
  %i.vk = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ck ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 2
  %i.vm = load i8, ptr %i.vl, align 1
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vi, i64 2
  store i8 %i.vm, ptr %i.vn, align 1
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vk, i64 1
  %i.vp = load i8, ptr %i.vo, align 1
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vi, i64 1
  store i8 %i.vp, ptr %i.vq, align 1
  %i.vr = load i8, ptr %i.vk, align 1
  store i8 %i.vr, ptr %i.vi, align 1
  br label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol.loopexit:                        ; preds = %.lr.ph.i308.prol, %.lr.ph.i308.preheader
  %indvars.iv.i309.unr = phi i64 [ %i.bb, %.lr.ph.i308.preheader ], [ %indvars.iv.next.i310.prol, %.lr.ph.i308.prol ]
  br i1 %i.cl, label %.loopexit, label %.lr.ph.i308

.preheader.i312:                                  ; preds = %bb.af
  br i1 %i.ba, label %.lr.ph32.i314.preheader, label %.loopexit

.lr.ph32.i314.preheader:                          ; preds = %.preheader.i312
  br i1 %min.iters.check, label %.lr.ph32.i314.preheader740, label %vector.body

vector.body:                                      ; preds = %.lr.ph32.i314.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph32.i314.preheader ] ; 2 uses
  %i.vs = sub i64 %i.bb, %index                   ; 2 uses
  %i.vt = shl nuw nsw i64 %i.vs, 1
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.vt
  %i.vv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.vs
  %i.vw = getelementptr inbounds i8, ptr %i.vv, i64 -7
  %wide.load = load <8 x i8>, ptr %i.vw, align 1
  %i.vx = getelementptr inbounds i8, ptr %i.vu, i64 -14
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.vx, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vy = icmp eq i64 %index.next, %n.vec
  br i1 %i.vy, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph32.i314.preheader740

.lr.ph32.i314.preheader740:                       ; preds = %.lr.ph32.i314.preheader, %middle.block
  %indvars.iv35.i315.ph = phi i64 [ %i.bb, %.lr.ph32.i314.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph32.i314

.lr.ph32.i314:                                    ; preds = %.lr.ph32.i314.preheader740, %.lr.ph32.i314
  %indvars.iv35.i315 = phi i64 [ %indvars.iv.next36.i316, %.lr.ph32.i314 ], [ %indvars.iv35.i315.ph, %.lr.ph32.i314.preheader740 ] ; 4 uses
  %i.vz = shl nuw nsw i64 %indvars.iv35.i315, 1
  %i.wa = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.vz ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 1
  store i8 -1, ptr %i.wb, align 1
  %i.wc = getelementptr inbounds nuw i8, ptr %i.du, i64 %indvars.iv35.i315
  %i.wd = load i8, ptr %i.wc, align 1
  store i8 %i.wd, ptr %i.wa, align 1
  %indvars.iv.next36.i316 = add nsw i64 %indvars.iv35.i315, -1
  %.not39.i317 = icmp eq i64 %indvars.iv35.i315, 0
  br i1 %.not39.i317, label %.loopexit, label %.lr.ph32.i314, !llvm.loop !229

.lr.ph.i308:                                      ; preds = %.lr.ph.i308.prol.loopexit, %.lr.ph.i308
  %indvars.iv.i309 = phi i64 [ %indvars.iv.next.i310.1, %.lr.ph.i308 ], [ %indvars.iv.i309.unr, %.lr.ph.i308.prol.loopexit ] ; 4 uses
  %i.we = shl nsw i64 %indvars.iv.i309, 2
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.we ; 4 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 3
  store i8 -1, ptr %i.wg, align 1
  %i.wh = mul nuw nsw i64 %indvars.iv.i309, 3
  %i.wi = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.wh ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 2
  %i.wk = load i8, ptr %i.wj, align 1
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wf, i64 2
  store i8 %i.wk, ptr %i.wl, align 1
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wi, i64 1
  %i.wn = load i8, ptr %i.wm, align 1
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wf, i64 1
  store i8 %i.wn, ptr %i.wo, align 1
  %i.wp = load i8, ptr %i.wi, align 1
  store i8 %i.wp, ptr %i.wf, align 1
  %indvars.iv.next.i310 = add nsw i64 %indvars.iv.i309, -1 ; 3 uses
  %i.wq = shl nsw i64 %indvars.iv.next.i310, 2
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.wq ; 4 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 3
  store i8 -1, ptr %i.ws, align 1
  %i.wt = mul nuw nsw i64 %indvars.iv.next.i310, 3
  %i.wu = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.wt ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 2
  %i.ww = load i8, ptr %i.wv, align 1
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wr, i64 2
  store i8 %i.ww, ptr %i.wx, align 1
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wu, i64 1
  %i.wz = load i8, ptr %i.wy, align 1
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wr, i64 1
  store i8 %i.wz, ptr %i.xa, align 1
  %i.xb = load i8, ptr %i.wu, align 1
  store i8 %i.xb, ptr %i.wr, align 1
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
  %.0381 = phi ptr [ %i.yk, %.lr.ph382 ], [ %i.ed, %.lr.ph382.preheader ] ; 5 uses
  %.0249380 = phi ptr [ %i.yl, %.lr.ph382 ], [ %i.du, %.lr.ph382.preheader ] ; 9 uses
  %niter771 = phi i32 [ %niter771.next.3, %.lr.ph382 ], [ 0, %.lr.ph382.preheader ]
  %i.xc = load i8, ptr %.0249380, align 1
  %i.xd = zext i8 %i.xc to i16
  %i.xe = shl nuw i16 %i.xd, 8
  %i.xf = getelementptr inbounds nuw i8, ptr %.0249380, i64 1
  %i.xg = load i8, ptr %i.xf, align 1
  %i.xh = zext i8 %i.xg to i16
  %i.xi = or disjoint i16 %i.xe, %i.xh
  store i16 %i.xi, ptr %.0381, align 2
  %i.xj = getelementptr inbounds nuw i8, ptr %.0381, i64 2
  %i.xk = getelementptr inbounds nuw i8, ptr %.0249380, i64 2
  %i.xl = load i8, ptr %i.xk, align 1
  %i.xm = zext i8 %i.xl to i16
  %i.xn = shl nuw i16 %i.xm, 8
  %i.xo = getelementptr inbounds nuw i8, ptr %.0249380, i64 3
  %i.xp = load i8, ptr %i.xo, align 1
  %i.xq = zext i8 %i.xp to i16
  %i.xr = or disjoint i16 %i.xn, %i.xq
  store i16 %i.xr, ptr %i.xj, align 2
  %i.xs = getelementptr inbounds nuw i8, ptr %.0381, i64 4
  %i.xt = getelementptr inbounds nuw i8, ptr %.0249380, i64 4
  %i.xu = load i8, ptr %i.xt, align 1
  %i.xv = zext i8 %i.xu to i16
  %i.xw = shl nuw i16 %i.xv, 8
  %i.xx = getelementptr inbounds nuw i8, ptr %.0249380, i64 5
  %i.xy = load i8, ptr %i.xx, align 1
  %i.xz = zext i8 %i.xy to i16
  %i.ya = or disjoint i16 %i.xw, %i.xz
  store i16 %i.ya, ptr %i.xs, align 2
  %i.yb = getelementptr inbounds nuw i8, ptr %.0381, i64 6
  %i.yc = getelementptr inbounds nuw i8, ptr %.0249380, i64 6
  %i.yd = load i8, ptr %i.yc, align 1
  %i.ye = zext i8 %i.yd to i16
  %i.yf = shl nuw i16 %i.ye, 8
  %i.yg = getelementptr inbounds nuw i8, ptr %.0249380, i64 7
  %i.yh = load i8, ptr %i.yg, align 1
  %i.yi = zext i8 %i.yh to i16
  %i.yj = or disjoint i16 %i.yf, %i.yi
  store i16 %i.yj, ptr %i.yb, align 2
  %i.yk = getelementptr inbounds nuw i8, ptr %.0381, i64 8 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.0249380, i64 8 ; 2 uses
  %niter771.next.3 = add nuw i32 %niter771, 4     ; 2 uses
  %niter771.ncmp.3 = icmp eq i32 %niter771.next.3, %unroll_iter770
  br i1 %niter771.ncmp.3, label %.loopexit.loopexit743.unr-lcssa, label %.lr.ph382

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.az, label %.preheader344, label %.preheader346

.preheader346:                                    ; preds = %bb.ai
  br i1 %i.w, label %.loopexit, label %.lr.ph374

.preheader344:                                    ; preds = %bb.ai
  br i1 %i.w, label %.loopexit, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %.preheader344
  br i1 %i.cg, label %.lr.ph378.epil.preheader, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %.lr.ph378
  %.1377 = phi ptr [ %i.ze, %.lr.ph378 ], [ %i.ed, %.lr.ph378.preheader ] ; 5 uses
  %.1250376 = phi ptr [ %i.zf, %.lr.ph378 ], [ %i.du, %.lr.ph378.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph378 ], [ 0, %.lr.ph378.preheader ]
  %i.ym = load i8, ptr %.1250376, align 1
  %i.yn = zext i8 %i.ym to i16
  %i.yo = shl nuw i16 %i.yn, 8
  %i.yp = getelementptr inbounds nuw i8, ptr %.1250376, i64 1
  %i.yq = load i8, ptr %i.yp, align 1
  %i.yr = zext i8 %i.yq to i16
  %i.ys = or disjoint i16 %i.yo, %i.yr
  store i16 %i.ys, ptr %.1377, align 2
  %i.yt = getelementptr inbounds nuw i8, ptr %.1377, i64 2
  store i16 -1, ptr %i.yt, align 2
  %i.yu = getelementptr inbounds nuw i8, ptr %.1377, i64 4
  %i.yv = getelementptr inbounds nuw i8, ptr %.1250376, i64 2
  %i.yw = load i8, ptr %i.yv, align 1
  %i.yx = zext i8 %i.yw to i16
  %i.yy = shl nuw i16 %i.yx, 8
  %i.yz = getelementptr inbounds nuw i8, ptr %.1250376, i64 3
  %i.za = load i8, ptr %i.yz, align 1
  %i.zb = zext i8 %i.za to i16
  %i.zc = or disjoint i16 %i.yy, %i.zb
  store i16 %i.zc, ptr %i.yu, align 2
  %i.zd = getelementptr inbounds nuw i8, ptr %.1377, i64 6
  store i16 -1, ptr %i.zd, align 2
  %i.ze = getelementptr inbounds nuw i8, ptr %.1377, i64 8 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %.1250376, i64 4 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit744.unr-lcssa, label %.lr.ph378

.lr.ph374:                                        ; preds = %.preheader346, %.lr.ph374
  %.2373 = phi ptr [ %i.aah, %.lr.ph374 ], [ %i.ed, %.preheader346 ] ; 5 uses
  %.2251372 = phi ptr [ %i.aai, %.lr.ph374 ], [ %i.du, %.preheader346 ] ; 7 uses
  %.5270371 = phi i32 [ %i.aag, %.lr.ph374 ], [ 0, %.preheader346 ]
  %i.zg = load i8, ptr %.2251372, align 1
  %i.zh = zext i8 %i.zg to i16
  %i.zi = shl nuw i16 %i.zh, 8
  %i.zj = getelementptr inbounds nuw i8, ptr %.2251372, i64 1
  %i.zk = load i8, ptr %i.zj, align 1
  %i.zl = zext i8 %i.zk to i16
  %i.zm = or disjoint i16 %i.zi, %i.zl
  store i16 %i.zm, ptr %.2373, align 2
  %i.zn = getelementptr inbounds nuw i8, ptr %.2251372, i64 2
  %i.zo = load i8, ptr %i.zn, align 1
  %i.zp = zext i8 %i.zo to i16
  %i.zq = shl nuw i16 %i.zp, 8
  %i.zr = getelementptr inbounds nuw i8, ptr %.2251372, i64 3
  %i.zs = load i8, ptr %i.zr, align 1
  %i.zt = zext i8 %i.zs to i16
  %i.zu = or disjoint i16 %i.zq, %i.zt
  %i.zv = getelementptr inbounds nuw i8, ptr %.2373, i64 2
  store i16 %i.zu, ptr %i.zv, align 2
  %i.zw = getelementptr inbounds nuw i8, ptr %.2251372, i64 4
  %i.zx = load i8, ptr %i.zw, align 1
  %i.zy = zext i8 %i.zx to i16
  %i.zz = shl nuw i16 %i.zy, 8
  %i.aaa = getelementptr inbounds nuw i8, ptr %.2251372, i64 5
  %i.aab = load i8, ptr %i.aaa, align 1
  %i.aac = zext i8 %i.aab to i16
  %i.aad = or disjoint i16 %i.zz, %i.aac
  %i.aae = getelementptr inbounds nuw i8, ptr %.2373, i64 4
  store i16 %i.aad, ptr %i.aae, align 2
  %i.aaf = getelementptr inbounds nuw i8, ptr %.2373, i64 6
  store i16 -1, ptr %i.aaf, align 2
  %i.aag = add nuw i32 %.5270371, 1               ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %.2373, i64 8
  %i.aai = getelementptr inbounds nuw i8, ptr %.2251372, i64 6
  %exitcond451.not = icmp eq i32 %i.aag, %4
  br i1 %exitcond451.not, label %.loopexit, label %.lr.ph374

.loopexit.loopexit743.unr-lcssa:                  ; preds = %.lr.ph382
  br i1 %lcmp.mod768.not, label %.loopexit, label %.lr.ph382.epil.preheader

.lr.ph382.epil.preheader:                         ; preds = %.loopexit.loopexit743.unr-lcssa, %.lr.ph382.preheader
  %.0381.epil.init = phi ptr [ %i.ed, %.lr.ph382.preheader ], [ %i.yk, %.loopexit.loopexit743.unr-lcssa ]
  %.0249380.epil.init = phi ptr [ %i.du, %.lr.ph382.preheader ], [ %i.yl, %.loopexit.loopexit743.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod769)
  br label %.lr.ph382.epil

.lr.ph382.epil:                                   ; preds = %.lr.ph382.epil, %.lr.ph382.epil.preheader
  %.0381.epil = phi ptr [ %i.aaq, %.lr.ph382.epil ], [ %.0381.epil.init, %.lr.ph382.epil.preheader ] ; 2 uses
  %.0249380.epil = phi ptr [ %i.aar, %.lr.ph382.epil ], [ %.0249380.epil.init, %.lr.ph382.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph382.epil ], [ 0, %.lr.ph382.epil.preheader ]
  %i.aaj = load i8, ptr %.0249380.epil, align 1
  %i.aak = zext i8 %i.aaj to i16
  %i.aal = shl nuw i16 %i.aak, 8
  %i.aam = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 1
  %i.aan = load i8, ptr %i.aam, align 1
  %i.aao = zext i8 %i.aan to i16
  %i.aap = or disjoint i16 %i.aal, %i.aao
  store i16 %i.aap, ptr %.0381.epil, align 2
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0381.epil, i64 2
  %i.aar = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter767
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph382.epil, !llvm.loop !230

.loopexit.loopexit744.unr-lcssa:                  ; preds = %.lr.ph378
  br i1 %lcmp.mod765.not, label %.loopexit, label %.lr.ph378.epil.preheader

.lr.ph378.epil.preheader:                         ; preds = %.loopexit.loopexit744.unr-lcssa, %.lr.ph378.preheader
  %.1377.epil.init = phi ptr [ %i.ed, %.lr.ph378.preheader ], [ %i.ze, %.loopexit.loopexit744.unr-lcssa ] ; 2 uses
  %.1250376.epil.init = phi ptr [ %i.du, %.lr.ph378.preheader ], [ %i.zf, %.loopexit.loopexit744.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod766)
  %i.aas = load i8, ptr %.1250376.epil.init, align 1
  %i.aat = zext i8 %i.aas to i16
  %i.aau = shl nuw i16 %i.aat, 8
  %i.aav = getelementptr inbounds nuw i8, ptr %.1250376.epil.init, i64 1
  %i.aaw = load i8, ptr %i.aav, align 1
  %i.aax = zext i8 %i.aaw to i16
  %i.aay = or disjoint i16 %i.aau, %i.aax
  store i16 %i.aay, ptr %.1377.epil.init, align 2
  %i.aaz = getelementptr inbounds nuw i8, ptr %.1377.epil.init, i64 2
  store i16 -1, ptr %i.aaz, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph374, %.lr.ph378.epil.preheader, %.loopexit.loopexit744.unr-lcssa, %.loopexit.loopexit743.unr-lcssa, %.lr.ph382.epil, %.lr.ph.i308.prol.loopexit, %.lr.ph.i308, %.lr.ph32.i314, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph32.i.prol.loopexit, %.lr.ph32.i, %middle.block, %.preheader346, %.preheader344, %.preheader342, %.loopexit335, %bb.ag, %bb.ae, %.preheader26.i, %.preheader.i, %.preheader26.i306, %.preheader.i312
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count460
  br i1 %exitcond461.not, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %.loopexit, %bb.l
  tail call void @free(ptr noundef %i.ao) #52
  br label %bb.ak

bb.aj:                                            ; preds = %bb.m
  store ptr @.str.108, ptr @stbi__g_failure_reason, align 8
  tail call void @free(ptr noundef %i.ao) #52
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge, %bb.k, %bb.i, %stbi__mad2sizes_valid.exit.thread, %stbi__mad3sizes_valid.exit.thread, %bb.d
  %.0271 = phi i32 [ 0, %bb.i ], [ 0, %bb.d ], [ 0, %stbi__mad3sizes_valid.exit.thread ], [ 0, %bb.k ], [ 0, %stbi__mad2sizes_valid.exit.thread ], [ 0, %bb.aj ], [ 1, %._crit_edge ]
  ret i32 %.0271
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @stbi__get32le(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc i32 @stbi__get16le(ptr noundef %0)
  %i.b = tail call fastcc i32 @stbi__get16le(ptr noundef %0)
  %i.c = shl nuw i32 %i.b, 16
  %i.d = or disjoint i32 %i.c, %i.a
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 65536) i32 @stbi__get16le(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = load i8, ptr %i.b, align 1
  br label %stbi__get8.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %stbi__get8.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p) #52, !inline_history !170 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
end_hunk_14
begin_hunk_15_@stbi__bitcount:bb.a
  %i.d = add nuw i32 %i.c, %i.a                   ; 2 uses
  %i.e = and i32 %i.d, 858993459
  %i.f = lshr i32 %i.d, 2
  %i.g = and i32 %i.f, 858993459
  %i.h = add nuw nsw i32 %i.g, %i.e               ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = add nuw nsw i32 %i.i, %i.h
  %i.k = and i32 %i.j, 252645135                  ; 2 uses
  %i.l = lshr i32 %i.k, 8
  %i.m = add nuw nsw i32 %i.l, %i.k               ; 2 uses
  %i.n = lshr i32 %i.m, 16
  %i.o = add nuw nsw i32 %i.n, %i.m
  %i.p = and i32 %i.o, 63
  ret i32 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @stbi__bmp_set_mask_defaults(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 -2147483648, 3) %1) unnamed_addr #21 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  switch i32 %i.b, label %bb.e [
    i32 16, label %bb.c
    i32 32, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 31744, ptr %i.c, align 4
  store i32 992, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 31, ptr %i.e, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store <4 x i32> <i32 16711680, i32 65280, i32 255, i32 -16777216>, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.f, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @stbi__gif_load_next(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not179 = icmp eq ptr %i.b, null               ; 2 uses
  br i1 %.not179, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @stbi__gif_header(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  %.not166 = icmp eq i32 %i.c, 0
  br i1 %.not166, label %stbi__skip.exit221.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %1, align 8                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 4 uses
  %.not23.i = icmp ugt i32 %i.d, 536870911
  br i1 %.not23.i, label %stbi__skip.exit221.thread.sink.split, label %stbi__mul2sizes_valid.exit.thread15.i

stbi__mul2sizes_valid.exit.thread15.i:            ; preds = %bb.c
  %i.g = shl nuw nsw i32 %i.d, 2
  %or.cond.not.i10.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i10.i, label %bb.d, label %stbi__skip.exit221.thread.sink.split

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %stbi__mad3sizes_valid.exit, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.d
  %i.i = udiv i32 2147483647, %i.f
  %.not.i = icmp samesign ugt i32 %i.g, %i.i
  br i1 %.not.i, label %stbi__skip.exit221.thread.sink.split, label %stbi__mad3sizes_valid.exit

stbi__mad3sizes_valid.exit:                       ; preds = %stbi__mul2sizes_valid.exit12.i, %bb.d
  %i.j = mul nuw nsw i32 %i.f, %i.d               ; 2 uses
  %i.k = shl nsw i32 %i.j, 2
  %i.l = zext nneg i32 %i.k to i64                ; 4 uses
  %i.m = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.l) #53 ; 3 uses
  store ptr %i.m, ptr %i.a, align 8
  %i.n = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.l) #53 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.n, ptr %i.o, align 8
  %i.p = zext nneg i32 %i.j to i64                ; 2 uses
  %i.q = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.p) #53 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.q, ptr %i.r, align 8
  %.not168 = icmp eq ptr %i.m, null
  br i1 %.not168, label %stbi__skip.exit221.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %stbi__mad3sizes_valid.exit
  %.not169 = icmp eq ptr %i.n, null
  %.not170 = icmp eq ptr %i.q, null
  %or.cond180 = or i1 %.not169, %.not170
  br i1 %or.cond180, label %stbi__skip.exit221.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.p, i1 false)
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i32, ptr %i.s, align 8
  %i.u = lshr i32 %i.t, 2
  %i.v = and i32 %i.u, 7                          ; 2 uses
  %i.w = load i32, ptr %1, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = mul i32 %i.y, %i.w                       ; 8 uses
  %i.aa = icmp eq i32 %i.v, 3
  %i.ab = icmp eq ptr %3, null
  %or.cond = and i1 %i.ab, %i.aa
  %spec.store.select = select i1 %or.cond, i32 2, i32 %i.v
  switch i32 %spec.store.select, label %.loopexit [
    i32 3, label %.preheader252
    i32 2, label %.preheader253
  ]

.preheader253:                                    ; preds = %bb.g
  %i.ac = icmp sgt i32 %i.z, 0
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader253
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.z to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.af = icmp eq i32 %i.z, 1
  br i1 %i.af, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.m

.preheader252:                                    ; preds = %bb.g
  %i.ag = icmp sgt i32 %i.z, 0
  br i1 %i.ag, label %.lr.ph267, label %.loopexit

.lr.ph267:                                        ; preds = %.preheader252
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %wide.trip.count284 = zext nneg i32 %i.z to i64 ; 2 uses
  %xtraiter29 = and i64 %wide.trip.count284, 1
  %i.ai = icmp eq i32 %i.z, 1
  br i1 %i.ai, label %.epil.preheader28, label %.lr.ph267.new

.lr.ph267.new:                                    ; preds = %.lr.ph267
  %unroll_iter32 = and i64 %wide.trip.count284, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph267.new
  %indvars.iv281 = phi i64 [ 0, %.lr.ph267.new ], [ %indvars.iv.next282.1, %bb.l ] ; 4 uses
  %niter33 = phi i64 [ 0, %.lr.ph267.new ], [ %niter33.next.1, %bb.l ]
  %i.aj = load ptr, ptr %i.ah, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv281
  %i.al = load i8, ptr %i.ak, align 1
  %.not165 = icmp eq i8 %i.al, 0
  br i1 %.not165, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.a, align 8
  %i.an = shl nuw nsw i64 %indvars.iv281, 2       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 %i.an
  %i.aq = load i32, ptr %i.ap, align 1
  store i32 %i.aq, ptr %i.ao, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next282 = or disjoint i64 %indvars.iv281, 1 ; 2 uses
  %i.ar = load ptr, ptr %i.ah, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.next282
  %i.at = load i8, ptr %i.as, align 1
  %.not165.1 = icmp eq i8 %i.at, 0
  br i1 %.not165.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %i.a, align 8
  %i.av = shl nuw nsw i64 %indvars.iv.next282, 2  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %i.av
  %i.ay = load i32, ptr %i.ax, align 1
  store i32 %i.ay, ptr %i.aw, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next282.1 = add nuw nsw i64 %indvars.iv281, 2 ; 2 uses
  %niter33.next.1 = add nuw i64 %niter33, 2       ; 2 uses
  %niter33.ncmp.1 = icmp eq i64 %niter33.next.1, %unroll_iter32
  br i1 %niter33.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.h

bb.m:                                             ; preds = %bb.q, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.q ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.q ]
  %i.az = load ptr, ptr %i.ad, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv
  %i.bb = load i8, ptr %i.ba, align 1
  %.not = icmp eq i8 %i.bb, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %i.a, align 8
  %i.bd = shl nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  %i.bf = load ptr, ptr %i.ae, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  %i.bh = load i32, ptr %i.bg, align 1
  store i32 %i.bh, ptr %i.be, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load ptr, ptr %i.ad, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.next
  %i.bk = load i8, ptr %i.bj, align 1
  %.not.1 = icmp eq i8 %i.bk, 0
  br i1 %.not.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %i.a, align 8
  %i.bm = shl nuw nsw i64 %indvars.iv.next, 2     ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  %i.bo = load ptr, ptr %i.ae, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 1
  store i32 %i.bq, ptr %i.bn, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit26.unr-lcssa, label %bb.m

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.loopexit, label %.epil.preheader28

.epil.preheader28:                                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph267
  %indvars.iv281.epil.init = phi i64 [ 0, %.lr.ph267 ], [ %indvars.iv.next282.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod31 = trunc i32 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.br = load ptr, ptr %i.ah, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv281.epil.init
  %i.bt = load i8, ptr %i.bs, align 1
  %.not165.epil = icmp eq i8 %i.bt, 0
  br i1 %.not165.epil, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.epil.preheader28
  %i.bu = load ptr, ptr %i.a, align 8
  %i.bv = shl nuw nsw i64 %indvars.iv281.epil.init, 2 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 %i.bv
  %i.by = load i32, ptr %i.bx, align 1
  store i32 %i.by, ptr %i.bw, align 1
  br label %.loopexit

.loopexit.loopexit26.unr-lcssa:                   ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit26.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit26.unr-lcssa ] ; 2 uses
  %lcmp.mod27 = trunc i32 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.bz = load ptr, ptr %i.ad, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv.epil.init
  %i.cb = load i8, ptr %i.ca, align 1
  %.not.epil = icmp eq i8 %i.cb, 0
  br i1 %.not.epil, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.epil.preheader
  %i.cc = load ptr, ptr %i.a, align 8
  %i.cd = shl nuw nsw i64 %indvars.iv.epil.init, 2 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd
  %i.cf = load ptr, ptr %i.ae, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  %i.ch = load i32, ptr %i.cg, align 1
  store i32 %i.ch, ptr %i.ce, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit26.unr-lcssa, %bb.s, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.r, %.epil.preheader28, %.preheader253, %.preheader252, %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = load ptr, ptr %i.a, align 8
  %i.cl = load i32, ptr %1, align 8
  %i.cm = shl nsw i32 %i.cl, 2
  %i.cn = load i32, ptr %i.x, align 4
  %i.co = mul nsw i32 %i.cm, %i.cn
  %i.cp = sext i32 %i.co to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.ck, i64 %i.cp, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %bb.f
  %i.cq = phi ptr [ %.pre, %.loopexit ], [ %i.q, %bb.f ]
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cs = load i32, ptr %1, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = mul nsw i32 %i.cu, %i.cs
  %i.cw = sext i32 %i.cv to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cq, i8 0, i64 %i.cw, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 55 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 21 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 22 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 44 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 11 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 11 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 22 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 28 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 34920
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  br label %stbi__skip.exit221

stbi__skip.exit221:                               ; preds = %stbi__skip.exit221.backedge, %bb.t
  %i.dl = load ptr, ptr %i.cx, align 8            ; 3 uses
  %i.dm = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.dn = icmp ult ptr %i.dl, %i.dm
  br i1 %i.dn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %stbi__skip.exit221
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 1 ; 2 uses
  store ptr %i.do, ptr %i.cx, align 8
  %i.dp = load i8, ptr %i.dl, align 1
  br label %stbi__get8.exit

bb.v:                                             ; preds = %stbi__skip.exit221
  %i.dq = load i32, ptr %i.cz, align 8
  %.not.i181 = icmp eq i32 %i.dq, 0
  br i1 %.not.i181, label %stbi__skip.exit221.thread.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dr = load ptr, ptr %i.da, align 8
  %i.ds = load ptr, ptr %i.db, align 8
  %i.dt = load i32, ptr %i.dd, align 4
  %i.du = tail call i32 %i.dr(ptr noundef %i.ds, ptr noundef nonnull %i.dc, i32 noundef %i.dt) #52, !inline_history !170 ; 2 uses
  %i.dv = load ptr, ptr %i.cx, align 8
  %i.dw = load ptr, ptr %i.de, align 8
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = load i32, ptr %i.df, align 8
  %i.ec = add nsw i32 %i.eb, %i.ea
  store i32 %i.ec, ptr %i.df, align 8
  %i.ed = icmp eq i32 %i.du, 0
  br i1 %i.ed, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cz, align 8
  store i8 0, ptr %i.dc, align 8
  br label %stbi__refill_buffer.exit.i

bb.y:                                             ; preds = %bb.w
  %i.ee = sext i32 %i.du to i64
  %i.ef = getelementptr inbounds i8, ptr %i.dc, i64 %i.ee
  %.pre.i = load i8, ptr %i.dc, align 8
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.y, %bb.x
  %i.eg = phi i8 [ 0, %bb.x ], [ %.pre.i, %bb.y ]
  %.sink.i.i = phi ptr [ %i.dg, %bb.x ], [ %i.ef, %bb.y ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.cy, align 8
  store ptr %i.dg, ptr %i.cx, align 8
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.u, %stbi__refill_buffer.exit.i
  %i.eh = phi ptr [ %i.dm, %bb.u ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ] ; 2 uses
  %i.ei = phi ptr [ %i.do, %bb.u ], [ %i.dg, %stbi__refill_buffer.exit.i ] ; 3 uses
  %.0.i = phi i8 [ %i.dp, %bb.u ], [ %i.eg, %stbi__refill_buffer.exit.i ]
  switch i8 %.0.i, label %stbi__skip.exit221.thread.sink.split [
    i8 44, label %bb.z
    i8 33, label %bb.cr
    i8 59, label %stbi__skip.exit221.thread
  ]

bb.z:                                             ; preds = %stbi__get8.exit
  %i.ej = tail call fastcc i32 @stbi__get16le(ptr noundef %0) ; 2 uses
  %i.ek = tail call fastcc i32 @stbi__get16le(ptr noundef %0) ; 2 uses
  %i.el = tail call fastcc i32 @stbi__get16le(ptr noundef %0) ; 2 uses
  %i.em = tail call fastcc i32 @stbi__get16le(ptr noundef %0)
  %i.en = add nuw nsw i32 %i.el, %i.ej            ; 2 uses
  %i.eo = load i32, ptr %1, align 8               ; 2 uses
  %i.ep = icmp sgt i32 %i.en, %i.eo
  br i1 %i.ep, label %stbi__skip.exit221.thread.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eq = add nuw nsw i32 %i.em, %i.ek            ; 2 uses
  %i.er = load i32, ptr %i.ct, align 4
  %i.es = icmp sgt i32 %i.eq, %i.er
  br i1 %i.es, label %stbi__skip.exit221.thread.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.et = shl nsw i32 %i.eo, 2                    ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 34916 ; 2 uses
  store i32 %i.et, ptr %i.eu, align 4
  %i.ev = shl nuw nsw i32 %i.ej, 2                ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 34892
  store i32 %i.ev, ptr %i.ew, align 4
  %i.ex = mul nsw i32 %i.et, %i.ek                ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 34896
  store i32 %i.ex, ptr %i.ey, align 8
  %i.ez = shl nuw nsw i32 %i.en, 2
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 34900
  store i32 %i.ez, ptr %i.fa, align 4
  %i.fb = mul i32 %i.et, %i.eq                    ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 34904
  store i32 %i.fb, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 34908
  store i32 %i.ev, ptr %i.fd, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 34912
  %i.ff = icmp eq i32 %i.el, 0
  %spec.store.select248 = select i1 %i.ff, i32 %i.fb, i32 %i.ex
  store i32 %spec.store.select248, ptr %i.fe, align 8
  %i.fg = load ptr, ptr %i.cx, align 8            ; 3 uses
  %i.fh = load ptr, ptr %i.cy, align 8
  %i.fi = icmp ult ptr %i.fg, %i.fh
  br i1 %i.fi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  store ptr %i.fj, ptr %i.cx, align 8
  %i.fk = load i8, ptr %i.fg, align 1
  br label %stbi__get8.exit187

end_hunk_15
begin_hunk_16_@stbi__gif_load_next:bb.a
  store i32 0, ptr %i.fm, align 8
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.fn = load ptr, ptr %i.da, align 8
  %i.fo = load ptr, ptr %i.db, align 8
  %i.fp = load i32, ptr %i.dd, align 4
  %i.fq = tail call i32 %i.fn(ptr noundef %i.fo, ptr noundef nonnull %i.dc, i32 noundef %i.fp) #52, !inline_history !170 ; 2 uses
  %i.fr = load ptr, ptr %i.cx, align 8
  %i.fs = load ptr, ptr %i.de, align 8
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = load i32, ptr %i.df, align 8
  %i.fy = add nsw i32 %i.fx, %i.fw
  store i32 %i.fy, ptr %i.df, align 8
  %i.fz = icmp eq i32 %i.fq, 0
  br i1 %i.fz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.cz, align 8
  store i8 0, ptr %i.dc, align 8
  br label %stbi__refill_buffer.exit.i184

bb.ag:                                            ; preds = %bb.ae
  %i.ga = sext i32 %i.fq to i64
  %i.gb = getelementptr inbounds i8, ptr %i.dc, i64 %i.ga
  %.pre.i183 = load i8, ptr %i.dc, align 8
  br label %stbi__refill_buffer.exit.i184

stbi__refill_buffer.exit.i184:                    ; preds = %bb.ag, %bb.af
  %i.gc = phi i8 [ 0, %bb.af ], [ %.pre.i183, %bb.ag ]
  %.sink.i.i185 = phi ptr [ %i.dg, %bb.af ], [ %i.gb, %bb.ag ]
  store ptr %.sink.i.i185, ptr %i.cy, align 8
  store ptr %i.dg, ptr %i.cx, align 8
  br label %stbi__get8.exit187

stbi__get8.exit187:                               ; preds = %bb.ac, %stbi__refill_buffer.exit.i184
  %.0.i186 = phi i8 [ %i.fk, %bb.ac ], [ %i.gc, %stbi__refill_buffer.exit.i184 ]
  %i.gd = zext i8 %.0.i186 to i32                 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 34888
  store i32 %i.gd, ptr %i.ge, align 8
  %i.gf = and i32 %i.gd, 64
  %.not173 = icmp eq i32 %i.gf, 0                 ; 2 uses
  %.pre291 = load i32, ptr %i.eu, align 4         ; 2 uses
  %i.gg = shl nsw i32 %.pre291, 3
  %spec.select = select i1 %.not173, i32 %.pre291, i32 %i.gg
  %spec.select350 = select i1 %.not173, i32 0, i32 3
  br label %bb.ah

bb.ah:                                            ; preds = %stbi__get8.exit187, %stbi__get8.exit187.thread
  %.sink346 = phi i32 [ %spec.select, %stbi__get8.exit187 ], [ %i.et, %stbi__get8.exit187.thread ]
  %.sink = phi i32 [ %spec.select350, %stbi__get8.exit187 ], [ 0, %stbi__get8.exit187.thread ]
  %i.gh = phi i32 [ %i.gd, %stbi__get8.exit187 ], [ 0, %stbi__get8.exit187.thread ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 34884
  store i32 %.sink346, ptr %i.gi, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 34880
  store i32 %.sink, ptr %i.gj, align 8
  %.not174 = icmp samesign ult i32 %i.gh, 128
  br i1 %.not174, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 1076 ; 2 uses
  %i.gl = and i32 %i.gh, 7
  %i.gm = shl nuw nsw i32 2, %i.gl
  %i.gn = load i32, ptr %i.di, align 8
  %i.go = and i32 %i.gn, 1
  %.not176 = icmp eq i32 %i.go, 0
  br i1 %.not176, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gp = load i32, ptr %i.dk, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.gq = phi i32 [ %i.gp, %bb.aj ], [ -1, %bb.ai ]
  tail call fastcc void @stbi__gif_parse_colortable(ptr noundef %0, ptr noundef %i.gk, i32 noundef %i.gm, i32 noundef %i.gq)
  br label %bb.an

bb.al:                                            ; preds = %bb.ah
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gs = load i32, ptr %i.gr, align 8
  %i.gt = and i32 %i.gs, 128
  %.not175 = icmp eq i32 %i.gt, 0
  br i1 %.not175, label %stbi__skip.exit221.thread.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 52
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %.sink348 = phi ptr [ %i.gu, %bb.am ], [ %i.gk, %bb.ak ]
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 34872
  store ptr %.sink348, ptr %i.gv, align 8
  %i.gw = load ptr, ptr %i.cx, align 8            ; 3 uses
  %i.gx = load ptr, ptr %i.cy, align 8
  %i.gy = icmp ult ptr %i.gw, %i.gx
  br i1 %i.gy, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  store ptr %i.gz, ptr %i.cx, align 8
  %i.ha = load i8, ptr %i.gw, align 1
  br label %stbi__get8.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.hb = load i32, ptr %i.cz, align 8
  %.not.i.i = icmp eq i32 %i.hb, 0
  br i1 %.not.i.i, label %stbi__get8.exit.thread.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hc = load ptr, ptr %i.da, align 8
  %i.hd = load ptr, ptr %i.db, align 8
  %i.he = load i32, ptr %i.dd, align 4
  %i.hf = tail call i32 %i.hc(ptr noundef %i.hd, ptr noundef nonnull %i.dc, i32 noundef %i.he) #52, !inline_history !231 ; 2 uses
  %i.hg = load ptr, ptr %i.cx, align 8
  %i.hh = load ptr, ptr %i.de, align 8
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = load i32, ptr %i.df, align 8
  %i.hn = add nsw i32 %i.hm, %i.hl
  store i32 %i.hn, ptr %i.df, align 8
  %i.ho = icmp eq i32 %i.hf, 0
  br i1 %i.ho, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.cz, align 8
  store i8 0, ptr %i.dc, align 8
  br label %stbi__refill_buffer.exit.i.i

bb.as:                                            ; preds = %bb.aq
  %i.hp = sext i32 %i.hf to i64
  %i.hq = getelementptr inbounds i8, ptr %i.dc, i64 %i.hp
  %.pre.i.i = load i8, ptr %i.dc, align 8
  br label %stbi__refill_buffer.exit.i.i

stbi__refill_buffer.exit.i.i:                     ; preds = %bb.as, %bb.ar
  %i.hr = phi i8 [ 0, %bb.ar ], [ %.pre.i.i, %bb.as ]
  %.sink.i.i.i = phi ptr [ %i.dg, %bb.ar ], [ %i.hq, %bb.as ]
  store ptr %.sink.i.i.i, ptr %i.cy, align 8
  store ptr %i.dg, ptr %i.cx, align 8
  br label %stbi__get8.exit.i

stbi__get8.exit.i:                                ; preds = %stbi__refill_buffer.exit.i.i, %bb.ao
  %.0.i.i = phi i8 [ %i.ha, %bb.ao ], [ %i.hr, %stbi__refill_buffer.exit.i.i ] ; 2 uses
  %i.hs = icmp ugt i8 %.0.i.i, 12
  br i1 %i.hs, label %stbi__skip.exit221.thread, label %stbi__get8.exit.thread.i

stbi__get8.exit.thread.i:                         ; preds = %stbi__get8.exit.i, %bb.ap
  %.0.i146.i = phi i8 [ %.0.i.i, %stbi__get8.exit.i ], [ 0, %bb.ap ] ; 2 uses
  %i.ht = zext nneg i8 %.0.i146.i to i32          ; 3 uses
  %i.hu = shl nuw nsw i32 1, %i.ht                ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 2100 ; 11 uses
  %wide.trip.count.i = zext nneg i32 %i.hu to i64 ; 2 uses
  %xtraiter35 = and i64 %wide.trip.count.i, 3     ; 3 uses
  %i.hw = icmp samesign ult i8 %.0.i146.i, 2
  br i1 %i.hw, label %.epil.preheader34, label %stbi__get8.exit.thread.i.new

stbi__get8.exit.thread.i.new:                     ; preds = %stbi__get8.exit.thread.i
  %unroll_iter38 = and i64 %wide.trip.count.i, 65532
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %stbi__get8.exit.thread.i.new
  %indvars.iv.i = phi i64 [ 0, %stbi__get8.exit.thread.i.new ], [ %indvars.iv.next.i.3, %bb.at ] ; 6 uses
  %niter39 = phi i64 [ 0, %stbi__get8.exit.thread.i.new ], [ %niter39.next.3, %bb.at ]
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv.i ; 3 uses
  store i16 -1, ptr %i.hx, align 4
  %i.hy = trunc i64 %indvars.iv.i to i8           ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 2
  store i8 %i.hy, ptr %i.hz, align 2
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 3
  store i8 %i.hy, ptr %i.ia, align 1
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv.next.i ; 3 uses
  store i16 -1, ptr %i.ib, align 4
  %i.ic = trunc i64 %indvars.iv.next.i to i8      ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  store i8 %i.ic, ptr %i.id, align 2
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 3
  store i8 %i.ic, ptr %i.ie, align 1
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv.next.i.1 ; 3 uses
  store i16 -1, ptr %i.if, align 4
  %i.ig = trunc i64 %indvars.iv.next.i.1 to i8    ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 2
  store i8 %i.ig, ptr %i.ih, align 2
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 3
  store i8 %i.ig, ptr %i.ii, align 1
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv.next.i.2 ; 3 uses
  store i16 -1, ptr %i.ij, align 4
  %i.ik = trunc i64 %indvars.iv.next.i.2 to i8    ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 2
  store i8 %i.ik, ptr %i.il, align 2
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 3
  store i8 %i.ik, ptr %i.im, align 1
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter39.next.3 = add nuw i64 %niter39, 4       ; 2 uses
  %niter39.ncmp.3 = icmp eq i64 %niter39.next.3, %unroll_iter38
  br i1 %niter39.ncmp.3, label %.unr-lcssa, label %bb.at

.unr-lcssa:                                       ; preds = %bb.at
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %.epilog-lcssa, label %.epil.preheader34

.epil.preheader34:                                ; preds = %.unr-lcssa, %stbi__get8.exit.thread.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %stbi__get8.exit.thread.i ], [ %indvars.iv.next.i.3, %.unr-lcssa ]
  %lcmp.mod37 = icmp ne i64 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.epil.preheader34
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader34 ], [ %indvars.iv.next.i.epil, %bb.au ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader34 ], [ %epil.iter.next, %bb.au ]
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv.i.epil ; 3 uses
  store i16 -1, ptr %i.in, align 4
  %i.io = trunc i64 %indvars.iv.i.epil to i8      ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 2
  store i8 %i.io, ptr %i.ip, align 2
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 3
  store i8 %i.io, ptr %i.iq, align 1
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter35
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.au, !llvm.loop !232

.epilog-lcssa:                                    ; preds = %bb.au, %.unr-lcssa
  %i.ir = add nuw nsw i32 %i.ht, 1                ; 3 uses
  %i.is = shl nuw nsw i32 2, %i.ht
  %i.it = add nsw i32 %i.is, -1                   ; 3 uses
  %i.iu = add nuw nsw i32 %i.hu, 2                ; 3 uses
  %i.iv = add nuw nsw i32 %i.hu, 1                ; 2 uses
  br label %.outer

.outer:                                           ; preds = %stbi__get8.exit130.i, %.epilog-lcssa
  %.0101.i.ph = phi i32 [ %i.lb, %stbi__get8.exit130.i ], [ 0, %.epilog-lcssa ] ; 7 uses
  %.096.i.ph = phi i32 [ %.096.i.lcssa, %stbi__get8.exit130.i ], [ 1, %.epilog-lcssa ] ; 2 uses
  %.091.i.ph = phi i32 [ %.091.i.lcssa, %stbi__get8.exit130.i ], [ %i.ir, %.epilog-lcssa ] ; 6 uses
  %.086.i.ph = phi i32 [ %.086.i.lcssa, %stbi__get8.exit130.i ], [ %i.it, %.epilog-lcssa ] ; 4 uses
  %.082.i.ph = phi i32 [ %.082.i.lcssa, %stbi__get8.exit130.i ], [ %i.iu, %.epilog-lcssa ] ; 7 uses
  %.080.i.ph = phi i32 [ %.080.i.lcssa, %stbi__get8.exit130.i ], [ -1, %.epilog-lcssa ] ; 4 uses
  %.078.i.ph = phi i32 [ %i.ly, %stbi__get8.exit130.i ], [ 0, %.epilog-lcssa ] ; 3 uses
  %.077.i.ph = phi i32 [ %i.lz, %stbi__get8.exit130.i ], [ 0, %.epilog-lcssa ] ; 3 uses
  %i.iw = icmp slt i32 %.077.i.ph, %.091.i.ph
  br i1 %i.iw, label %.loopexit41, label %bb.av

bb.av:                                            ; preds = %.outer
  %i.ix = and i32 %.078.i.ph, %.086.i.ph          ; 7 uses
  %i.iy = ashr i32 %.078.i.ph, %.091.i.ph
  %i.iz = sub nsw i32 %.077.i.ph, %.091.i.ph
  %i.ja = icmp eq i32 %i.ix, %i.hu
  br i1 %i.ja, label %.outer.peel.newph, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jb = icmp eq i32 %i.ix, %i.iv
  br i1 %i.jb, label %.loopexit42, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not.i188.peel = icmp sgt i32 %i.ix, %.082.i.ph
  br i1 %.not.i188.peel, label %stbi__skip.exit221.thread.sink.split, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not117.i.peel = icmp eq i32 %.096.i.ph, 0
  br i1 %.not117.i.peel, label %bb.az, label %stbi__skip.exit221.thread.sink.split

bb.az:                                            ; preds = %bb.ay
  %i.jc = icmp sgt i32 %.080.i.ph, -1
  br i1 %i.jc, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jd = icmp eq i32 %i.ix, %.082.i.ph
  br i1 %i.jd, label %stbi__skip.exit221.thread.sink.split, label %bb.bd

bb.bb:                                            ; preds = %bb.az
  %i.je = icmp sgt i32 %.082.i.ph, 8191
  br i1 %i.je, label %stbi__skip.exit221.thread.sink.split, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jf = sext i32 %.082.i.ph to i64
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.jf ; 3 uses
  %i.jh = add nsw i32 %.082.i.ph, 1
  %i.ji = trunc i32 %.080.i.ph to i16
  store i16 %i.ji, ptr %i.jg, align 2
  %i.jj = zext nneg i32 %.080.i.ph to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 2
  %i.jm = load i8, ptr %i.jl, align 2
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  store i8 %i.jm, ptr %i.jn, align 2
  %i.jo = sext i32 %i.ix to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 2
  %i.jr = load i8, ptr %i.jq, align 2
  %i.js = getelementptr inbounds nuw i8, ptr %i.jg, i64 3
  store i8 %i.jr, ptr %i.js, align 1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %.183.i.peel = phi i32 [ %i.jh, %bb.bc ], [ %.082.i.ph, %bb.ba ] ; 3 uses
  %i.jt = trunc i32 %i.ix to i16
  tail call fastcc void @stbi__out_gif_code(ptr noundef nonnull %1, i16 noundef zeroext %i.jt)
  %i.ju = and i32 %.183.i.peel, %.086.i.ph
  %i.jv = icmp eq i32 %i.ju, 0
  %i.jw = icmp slt i32 %.183.i.peel, 4096
  %or.cond.i.peel = and i1 %i.jw, %i.jv           ; 2 uses
  %i.jx = add nsw i32 %.091.i.ph, 1               ; 2 uses
  %notmask.i.peel = shl nsw i32 -1, %i.jx
  %i.jy = xor i32 %notmask.i.peel, -1
  %.192.i.peel = select i1 %or.cond.i.peel, i32 %i.jx, i32 %.091.i.ph
  %.187.i.peel = select i1 %or.cond.i.peel, i32 %i.jy, i32 %.086.i.ph
  br label %.outer.peel.newph

.outer.peel.newph:                                ; preds = %bb.av, %bb.bd
  %.091.i.be.peel = phi i32 [ %.192.i.peel, %bb.bd ], [ %i.ir, %bb.av ]
  %.086.i.be.peel = phi i32 [ %.187.i.peel, %bb.bd ], [ %i.it, %bb.av ]
  %.082.i.be.peel = phi i32 [ %.183.i.peel, %bb.bd ], [ %i.iu, %bb.av ]
  %.080.i.be.peel = phi i32 [ %i.ix, %bb.bd ], [ -1, %bb.av ]
  br label %bb.be

bb.be:                                            ; preds = %.backedge, %.outer.peel.newph
  %.091.i = phi i32 [ %.091.i.be.peel, %.outer.peel.newph ], [ %.091.i.be, %.backedge ] ; 6 uses
  %.086.i = phi i32 [ %.086.i.be.peel, %.outer.peel.newph ], [ %.086.i.be, %.backedge ] ; 4 uses
  %.082.i = phi i32 [ %.082.i.be.peel, %.outer.peel.newph ], [ %.082.i.be, %.backedge ] ; 7 uses
  %.080.i = phi i32 [ %.080.i.be.peel, %.outer.peel.newph ], [ %.080.i.be, %.backedge ] ; 4 uses
  %.078.i = phi i32 [ %i.iy, %.outer.peel.newph ], [ %i.mb, %.backedge ] ; 3 uses
  %.077.i = phi i32 [ %i.iz, %.outer.peel.newph ], [ %i.mc, %.backedge ] ; 3 uses
  %i.jz = icmp slt i32 %.077.i, %.091.i
  br i1 %i.jz, label %.loopexit41, label %bb.br

.loopexit41:                                      ; preds = %bb.be, %.outer
  %.096.i.lcssa = phi i32 [ %.096.i.ph, %.outer ], [ 0, %bb.be ]
  %.091.i.lcssa = phi i32 [ %.091.i.ph, %.outer ], [ %.091.i, %bb.be ]
  %.086.i.lcssa = phi i32 [ %.086.i.ph, %.outer ], [ %.086.i, %bb.be ]
  %.082.i.lcssa = phi i32 [ %.082.i.ph, %.outer ], [ %.082.i, %bb.be ]
  %.080.i.lcssa = phi i32 [ %.080.i.ph, %.outer ], [ %.080.i, %bb.be ]
  %.078.i.lcssa = phi i32 [ %.078.i.ph, %.outer ], [ %.078.i, %bb.be ]
  %.077.i.lcssa = phi i32 [ %.077.i.ph, %.outer ], [ %.077.i, %bb.be ] ; 2 uses
  %i.ka = icmp eq i32 %.0101.i.ph, 0
  %.pre.i189 = load ptr, ptr %i.cx, align 8       ; 4 uses
  %.pre170.i = load ptr, ptr %i.cy, align 8       ; 3 uses
  br i1 %i.ka, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %.loopexit41
  %i.kb = icmp ult ptr %.pre.i189, %.pre170.i
  br i1 %i.kb, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.kc = getelementptr inbounds nuw i8, ptr %.pre.i189, i64 1 ; 2 uses
  store ptr %i.kc, ptr %i.cx, align 8
  %i.kd = load i8, ptr %.pre.i189, align 1
  br label %stbi__get8.exit124.i

bb.bh:                                            ; preds = %bb.bf
  %i.ke = load i32, ptr %i.cz, align 8
  %.not.i119.i = icmp eq i32 %i.ke, 0
  br i1 %.not.i119.i, label %stbi__process_gif_raster.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kf = load ptr, ptr %i.da, align 8
  %i.kg = load ptr, ptr %i.db, align 8
  %i.kh = load i32, ptr %i.dd, align 4
  %i.ki = tail call i32 %i.kf(ptr noundef %i.kg, ptr noundef nonnull %i.dc, i32 noundef %i.kh) #52, !inline_history !231 ; 2 uses
  %i.kj = load ptr, ptr %i.cx, align 8
  %i.kk = load ptr, ptr %i.de, align 8
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = sub i64 %i.kl, %i.km
  %i.ko = trunc i64 %i.kn to i32
  %i.kp = load i32, ptr %i.df, align 8
  %i.kq = add nsw i32 %i.kp, %i.ko
  store i32 %i.kq, ptr %i.df, align 8
  %i.kr = icmp eq i32 %i.ki, 0
  br i1 %i.kr, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %i.cz, align 8
  store i8 0, ptr %i.dc, align 8
  br label %stbi__refill_buffer.exit.i121.i

bb.bk:                                            ; preds = %bb.bi
  %i.ks = sext i32 %i.ki to i64
  %i.kt = getelementptr inbounds i8, ptr %i.dc, i64 %i.ks
  %.pre.i120.i = load i8, ptr %i.dc, align 8
  br label %stbi__refill_buffer.exit.i121.i

stbi__refill_buffer.exit.i121.i:                  ; preds = %bb.bk, %bb.bj
  %i.ku = phi i8 [ 0, %bb.bj ], [ %.pre.i120.i, %bb.bk ]
  %.sink.i.i122.i = phi ptr [ %i.dg, %bb.bj ], [ %i.kt, %bb.bk ] ; 2 uses
  store ptr %.sink.i.i122.i, ptr %i.cy, align 8
  store ptr %i.dg, ptr %i.cx, align 8
  br label %stbi__get8.exit124.i

stbi__get8.exit124.i:                             ; preds = %stbi__refill_buffer.exit.i121.i, %bb.bg
  %i.kv = phi ptr [ %.pre170.i, %bb.bg ], [ %.sink.i.i122.i, %stbi__refill_buffer.exit.i121.i ]
  %i.kw = phi ptr [ %i.kc, %bb.bg ], [ %i.dg, %stbi__refill_buffer.exit.i121.i ]
  %.0.i123.i = phi i8 [ %i.kd, %bb.bg ], [ %i.ku, %stbi__refill_buffer.exit.i121.i ] ; 2 uses
  %i.kx = zext i8 %.0.i123.i to i32
  %i.ky = icmp eq i8 %.0.i123.i, 0
end_hunk_16
begin_hunk_17_@stbi__gif_parse_colortable:bb.a
  %.sink.i.i24 = phi ptr [ %i.j, %bb.p ], [ %i.ca, %bb.q ]
  store ptr %.sink.i.i24, ptr %i.b, align 8
  store ptr %i.j, ptr %i.a, align 8
  br label %stbi__get8.exit26

stbi__get8.exit26:                                ; preds = %bb.m, %bb.n, %stbi__refill_buffer.exit.i23
  %.0.i25 = phi i8 [ %i.bk, %bb.m ], [ %i.cb, %stbi__refill_buffer.exit.i23 ], [ 0, %bb.n ]
  store i8 %.0.i25, ptr %i.ah, align 1
  %i.cc = icmp ne i64 %indvars.iv, %i.k
  %i.cd = sext i1 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  store i8 %i.cd, ptr %i.ce, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.r, label %bb.b

bb.r:                                             ; preds = %stbi__get8.exit26
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @stbi__out_gif_code(ptr nofree noundef nonnull captures(none) %0, i16 noundef zeroext %1) unnamed_addr #44 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2100
  %i.b = zext i16 %1 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load i16, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp sgt i16 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @stbi__out_gif_code(ptr noundef %0, i16 noundef zeroext %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 34912 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 34904 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %.not = icmp slt i32 %i.g, %i.i
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 34908 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add nsw i32 %i.k, %i.g                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = sdiv i32 %i.l, 4
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r
  store i8 1, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 34872
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp ugt i8 %i.ab, -128
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.l to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ag = load i8, ptr %i.af, align 1
  store i8 %i.ag, ptr %i.ae, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = load i8, ptr %i.z, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = load i8, ptr %i.aa, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  store i8 %i.am, ptr %i.an, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = load i32, ptr %i.j, align 4
  %i.ap = add nsw i32 %i.ao, 4                    ; 2 uses
  store i32 %i.ap, ptr %i.j, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 34900
  %i.ar = load i32, ptr %i.aq, align 4
  %.not42 = icmp slt i32 %i.ap, %i.ar
  br i1 %.not42, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 34892
  %i.at = load i32, ptr %i.as, align 4
  store i32 %i.at, ptr %i.j, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 34884 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = load i32, ptr %i.f, align 8
  %i.ax = add nsw i32 %i.aw, %i.av                ; 2 uses
  store i32 %i.ax, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 34880 ; 2 uses
  %i.az = load i32, ptr %i.h, align 8             ; 2 uses
  %.not4344 = icmp slt i32 %i.ax, %i.az
  br i1 %.not4344, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 34916
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 34896
  %.promoted46 = load i32, ptr %i.ay, align 8     ; 2 uses
  %i.bc = icmp sgt i32 %.promoted46, 0
  br i1 %i.bc, label %.lr.ph50.preheader, label %.critedge

.lr.ph50.preheader:                               ; preds = %.lr.ph
  %i.bd = load i32, ptr %i.ba, align 4
  %i.be = load i32, ptr %i.bb, align 8
  br label %.lr.ph50

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %.lr.ph50
  %i.bf = phi i32 [ %i.bj, %.lr.ph50 ], [ %.promoted46, %.lr.ph50.preheader ] ; 3 uses
  %i.bg = shl i32 %i.bd, %i.bf                    ; 2 uses
  %i.bh = ashr i32 %i.bg, 1
  %i.bi = add nsw i32 %i.be, %i.bh                ; 2 uses
  %i.bj = add nsw i32 %i.bf, -1                   ; 2 uses
  %.not43 = icmp sge i32 %i.bi, %i.az
  %i.bk = icmp sgt i32 %i.bf, 1
  %or.cond = and i1 %.not43, %i.bk
  br i1 %or.cond, label %.lr.ph50, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.lr.ph50
  store i32 %i.bg, ptr %i.au, align 4
  store i32 %i.bi, ptr %i.f, align 8
  store i32 %i.bj, ptr %i.ay, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph, %bb.g, %bb.f, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #30

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__zbuild_huffman(ptr nofree noundef nonnull captures(none) initializes((0, 1024)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #37 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [17 x i32], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %i.c = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod153 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod153)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !235

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %i.al = icmp sgt i32 %.pre, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp sgt i32 %i.an, 4
  %or.cond103 = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond103, label %.loopexit70.sink.split, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a
  %.old = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.old101 = load i32, ptr %.old, align 8
  %.old102 = icmp sgt i32 %.old101, 4
  br i1 %.old102, label %.loopexit70.sink.split, label %bb.b

bb.b:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aq = load <8 x i32>, ptr %i.ap, align 4
  %.fr = freeze <8 x i32> %i.aq
  %i.ar = icmp sgt <8 x i32> %.fr, <i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024> ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.at = load <4 x i32>, ptr %i.as, align 4
  %.fr152 = freeze <4 x i32> %i.at
  %i.au = icmp sgt <4 x i32> %.fr152, <i32 2048, i32 4096, i32 8192, i32 16384>
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp sgt i32 %i.aw, 32768
  %i.ay = shufflevector <8 x i1> %i.ar, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.ay, %i.au
  %i.az = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ba = shufflevector <8 x i1> %i.az, <8 x i1> %i.ar, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bb = bitcast <8 x i1> %i.ba to i8
  %i.bc = icmp ne i8 %i.bb, 0
  %op.rdx = select i1 %i.bc, i1 true, i1 %i.ax
  br i1 %op.rdx, label %.loopexit70.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %indvars.iv87 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next88, %bb.d ] ; 8 uses
  %.06275 = phi i32 [ 0, %.preheader ], [ %i.bu, %bb.d ] ; 3 uses
  %.06374 = phi i32 [ 0, %.preheader ], [ %i.bv, %bb.d ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv87
  store i32 %.06275, ptr %i.bg, align 4
  %i.bh = trunc i32 %.06275 to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv87
  store i16 %i.bh, ptr %i.bi, align 2
  %i.bj = trunc i32 %.06374 to i16
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv87
  store i16 %i.bj, ptr %i.bk, align 2
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv87
  %i.bm = load i32, ptr %i.bl, align 4            ; 3 uses
  %i.bn = add nsw i32 %i.bm, %.06275              ; 3 uses
  %.not68 = icmp ne i32 %i.bm, 0
  %i.bo = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.bp = shl nuw nsw i32 1, %i.bo
  %.not69.not = icmp sgt i32 %i.bn, %i.bp
  %or.cond = select i1 %.not68, i1 %.not69.not, i1 false
  br i1 %or.cond, label %.loopexit70.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = trunc i64 %indvars.iv87 to i32
  %i.br = sub i32 16, %i.bq
  %i.bs = shl i32 %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv87
  store i32 %i.bs, ptr %i.bt, align 4
  %i.bu = shl i32 %i.bn, 1
  %i.bv = add nsw i32 %i.bm, %.06374
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, 16
  br i1 %exitcond90.not, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 65536, ptr %i.bw, align 4
  br i1 %i.c, label %.lr.ph81, label %.loopexit70

.lr.ph81:                                         ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %wide.trip.count97 = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph81, %bb.i
  %indvars.iv94 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next95, %bb.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv94
  %i.ca = load i8, ptr %i.bz, align 1             ; 5 uses
  %i.cb = zext i8 %i.ca to i32                    ; 3 uses
  %.not = icmp eq i8 %i.ca, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = zext i8 %i.ca to i64                    ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4            ; 3 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cc
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = zext i16 %i.cg to i32
  %i.ci = sub i32 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.cc
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = zext i16 %i.ck to i32
  %i.cm = add nsw i32 %i.ci, %i.cl
  %i.cn = shl nuw nsw i32 %i.cb, 9
  %i.co = trunc nuw nsw i64 %indvars.iv94 to i32
  %i.cp = or i32 %i.cn, %i.co
  %i.cq = trunc i32 %i.cp to i16
  %i.cr = sext i32 %i.cm to i64                   ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.bx, i64 %i.cr
  store i8 %i.ca, ptr %i.cs, align 1
  %i.ct = trunc i64 %indvars.iv94 to i16
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.cr
  store i16 %i.ct, ptr %i.cu, align 2
  %i.cv = icmp ult i8 %i.ca, 10
  br i1 %i.cv, label %.lr.ph78, label %.loopexit

.lr.ph78:                                         ; preds = %bb.g
  %trunc.i.i = trunc i32 %i.ce to i16
  %rev.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i)
  %i.cw = zext i16 %rev.i.i to i32
  %i.cx = sub nuw nsw i32 16, %i.cb
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = shl nuw nsw i32 1, %i.cb
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = zext nneg i32 %i.cz to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph78, %bb.h
  %indvars.iv91 = phi i64 [ %i.da, %.lr.ph78 ], [ %indvars.iv.next92, %bb.h ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv91
  store i16 %i.cq, ptr %i.dc, align 2
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, %i.db ; 2 uses
  %i.dd = icmp samesign ult i64 %indvars.iv.next92, 512
  br i1 %i.dd, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.g
  %i.de = add nsw i32 %i.ce, 1
  store i32 %i.de, ptr %i.cd, align 4
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.f
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit70, label %bb.f

.loopexit70.sink.split:                           ; preds = %bb.c, %._crit_edge, %._crit_edge.thread, %bb.b
  %.str.135.sink = phi ptr [ @.str.134, %._crit_edge ], [ @.str.134, %bb.b ], [ @.str.134, %._crit_edge.thread ], [ @.str.135, %bb.c ]
  store ptr %.str.135.sink, ptr @stbi__g_failure_reason, align 8
  br label %.loopexit70

.loopexit70:                                      ; preds = %bb.i, %.loopexit70.sink.split, %bb.e
  %.065 = phi i32 [ 1, %bb.e ], [ 0, %.loopexit70.sink.split ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  ret i32 %.065
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 65536) i32 @stbi__zhuffman_decode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp slt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %stbi__fill_bits.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 2 uses
end_hunk_17
begin_hunk_18_@stbir__alloc_internal_mem_and_build_samplers:bb.a
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  %i.xn = load <4 x float>, ptr %i.xm, align 1
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xk, i64 32
  %i.xp = load <4 x float>, ptr %i.xo, align 1
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xk, i64 48
  %i.xr = load <4 x float>, ptr %i.xq, align 1
  store <4 x float> %i.xl, ptr %.4.i355, align 1
  %i.xs = getelementptr inbounds nuw i8, ptr %.4.i355, i64 16
  store <4 x float> %i.xn, ptr %i.xs, align 1
  %i.xt = getelementptr inbounds nuw i8, ptr %.4.i355, i64 32
  store <4 x float> %i.xp, ptr %i.xt, align 1
  %i.xu = getelementptr inbounds nuw i8, ptr %.4.i355, i64 48
  store <4 x float> %i.xr, ptr %i.xu, align 1
  %i.xv = getelementptr inbounds nuw i8, ptr %.4.i355, i64 64
  br label %bb.cc, !llvm.loop !82

stbir_simd_memcpy.exit:                           ; preds = %bb.cd
  br i1 %.not333, label %bb.cj, label %bb.cf

bb.cf:                                            ; preds = %stbir_simd_memcpy.exit
  %i.xw = getelementptr inbounds nuw i8, ptr %.1308, i64 304
  %i.xx = ptrtoint ptr %i.wp to i64               ; 2 uses
  %i.xy = sub i64 %i.wq, %i.xx                    ; 2 uses
  %i.xz = getelementptr inbounds i8, ptr %i.wp, i64 %i.xy ; 4 uses
  %i.ya = load <4 x float>, ptr %i.xz, align 1
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xz, i64 16
  %i.yc = load <4 x float>, ptr %i.yb, align 1
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xz, i64 32
  %i.ye = load <4 x float>, ptr %i.yd, align 1
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xz, i64 48
  %i.yg = load <4 x float>, ptr %i.yf, align 1
  store <4 x float> %i.ya, ptr %i.wp, align 8
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ex, i64 168
  store <4 x float> %i.yc, ptr %i.yh, align 8
  %i.yi = getelementptr inbounds nuw i8, ptr %i.ex, i64 184
  store <4 x float> %i.ye, ptr %i.yi, align 8
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ex, i64 200
  store <4 x float> %i.yg, ptr %i.yj, align 8
  %i.yk = and i64 %i.xx, -64
  %i.yl = add i64 %i.yk, 64
  %i.ym = inttoptr i64 %i.yl to ptr
  %i.yn = getelementptr inbounds nuw i8, ptr %.1308, i64 240 ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ci, %bb.cf
  %.3.i357 = phi ptr [ %i.ym, %bb.cf ], [ %i.zb, %bb.ci ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3.i357) #52, !srcloc !81
  %i.yo = icmp ugt ptr %.3.i357, %i.yn
  br i1 %i.yo, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.yp = icmp eq ptr %.3.i357, %i.xw
  br i1 %i.yp, label %stbir_simd_memcpy.exit360, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.4.i358 = phi ptr [ %.3.i357, %bb.cg ], [ %i.yn, %bb.ch ] ; 6 uses
  %i.yq = getelementptr inbounds i8, ptr %.4.i358, i64 %i.xy ; 4 uses
  %i.yr = load <4 x float>, ptr %i.yq, align 1
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 16
  %i.yt = load <4 x float>, ptr %i.ys, align 1
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yq, i64 32
  %i.yv = load <4 x float>, ptr %i.yu, align 1
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yq, i64 48
  %i.yx = load <4 x float>, ptr %i.yw, align 1
  store <4 x float> %i.yr, ptr %.4.i358, align 1
  %i.yy = getelementptr inbounds nuw i8, ptr %.4.i358, i64 16
  store <4 x float> %i.yt, ptr %i.yy, align 1
  %i.yz = getelementptr inbounds nuw i8, ptr %.4.i358, i64 32
  store <4 x float> %i.yv, ptr %i.yz, align 1
  %i.za = getelementptr inbounds nuw i8, ptr %.4.i358, i64 48
  store <4 x float> %i.yx, ptr %i.za, align 1
  %i.zb = getelementptr inbounds nuw i8, ptr %.4.i358, i64 64
  br label %bb.cg, !llvm.loop !82

bb.cj:                                            ; preds = %stbir_simd_memcpy.exit
  tail call fastcc void @stbir__calculate_filters(ptr noundef %1, ptr noundef %.3, ptr noundef %8)
  %i.zc = getelementptr inbounds nuw i8, ptr %.1308, i64 304
  %i.zd = ptrtoint ptr %1 to i64
  %i.ze = ptrtoint ptr %i.wp to i64               ; 2 uses
  %i.zf = sub i64 %i.zd, %i.ze                    ; 2 uses
  %i.zg = getelementptr inbounds i8, ptr %i.wp, i64 %i.zf ; 4 uses
  %i.zh = load <4 x float>, ptr %i.zg, align 1
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.zj = load <4 x float>, ptr %i.zi, align 1
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zg, i64 32
  %i.zl = load <4 x float>, ptr %i.zk, align 1
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zg, i64 48
  %i.zn = load <4 x float>, ptr %i.zm, align 1
  store <4 x float> %i.zh, ptr %i.wp, align 8
  %i.zo = getelementptr inbounds nuw i8, ptr %i.ex, i64 168
  store <4 x float> %i.zj, ptr %i.zo, align 8
  %i.zp = getelementptr inbounds nuw i8, ptr %i.ex, i64 184
  store <4 x float> %i.zl, ptr %i.zp, align 8
  %i.zq = getelementptr inbounds nuw i8, ptr %i.ex, i64 200
  store <4 x float> %i.zn, ptr %i.zq, align 8
  %i.zr = and i64 %i.ze, -64
  %i.zs = add i64 %i.zr, 64
  %i.zt = inttoptr i64 %i.zs to ptr
  %i.zu = getelementptr inbounds nuw i8, ptr %.1308, i64 240 ; 2 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cm, %bb.cj
  %.3.i361 = phi ptr [ %i.zt, %bb.cj ], [ %i.aai, %bb.cm ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3.i361) #52, !srcloc !81
  %i.zv = icmp ugt ptr %.3.i361, %i.zu
  br i1 %i.zv, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.zw = icmp eq ptr %.3.i361, %i.zc
  br i1 %i.zw, label %stbir_simd_memcpy.exit360, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.4.i362 = phi ptr [ %.3.i361, %bb.ck ], [ %i.zu, %bb.cl ] ; 6 uses
  %i.zx = getelementptr inbounds i8, ptr %.4.i362, i64 %i.zf ; 4 uses
  %i.zy = load <4 x float>, ptr %i.zx, align 1
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zx, i64 16
  %i.aaa = load <4 x float>, ptr %i.zz, align 1
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zx, i64 32
  %i.aac = load <4 x float>, ptr %i.aab, align 1
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zx, i64 48
  %i.aae = load <4 x float>, ptr %i.aad, align 1
  store <4 x float> %i.zy, ptr %.4.i362, align 1
  %i.aaf = getelementptr inbounds nuw i8, ptr %.4.i362, i64 16
  store <4 x float> %i.aaa, ptr %i.aaf, align 1
  %i.aag = getelementptr inbounds nuw i8, ptr %.4.i362, i64 32
  store <4 x float> %i.aac, ptr %i.aag, align 1
  %i.aah = getelementptr inbounds nuw i8, ptr %.4.i362, i64 48
  store <4 x float> %i.aae, ptr %i.aah, align 1
  %i.aai = getelementptr inbounds nuw i8, ptr %.4.i362, i64 64
  br label %bb.ck, !llvm.loop !82

stbir_simd_memcpy.exit360:                        ; preds = %bb.ch, %bb.cl
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.ex, i64 416
  %i.aak = load ptr, ptr %i.aaj, align 8          ; 4 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.ex, i64 468
  %i.aam = load i32, ptr %i.aal, align 4          ; 8 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.1308, i64 280 ; 2 uses
  %i.aao = load ptr, ptr %i.wp, align 8
  %i.aap = icmp sgt i32 %i.aam, 0
  br i1 %i.aap, label %.lr.ph76.i, label %.loopexit

.lr.ph76.i:                                       ; preds = %stbir_simd_memcpy.exit360
  %i.aaq = load i32, ptr %i.aan, align 8
  %i.aar = getelementptr inbounds nuw i8, ptr %i.ex, i64 184
  %i.aas = load i32, ptr %i.aar, align 8
  %i.aat = getelementptr inbounds nuw i8, ptr %i.ex, i64 252
  %i.aau = load i32, ptr %i.aat, align 4          ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.ex, i64 188
  %i.aaw = load i32, ptr %i.aav, align 4          ; 3 uses
  %.not78.i = icmp eq i32 %i.aaq, 0
  %i.aax = mul nsw i32 %i.aau, 3
  %i.aay = sub nsw i32 0, %i.aau                  ; 4 uses
  %i.aaz = add nsw i32 %i.aau, %i.aas             ; 4 uses
  %wide.trip.count86.i = zext nneg i32 %i.aam to i64 ; 3 uses
  br i1 %.not78.i, label %.lr.ph76.split.us.i.preheader, label %.lr.ph76.split.i

.lr.ph76.split.us.i.preheader:                    ; preds = %.lr.ph76.i
  %xtraiter202 = and i64 %wide.trip.count86.i, 1
  %i.aba = icmp eq i32 %i.aam, 1
  br i1 %i.aba, label %.lr.ph76.split.us.i.epil.preheader, label %.lr.ph76.split.us.i.preheader.new

.lr.ph76.split.us.i.preheader.new:                ; preds = %.lr.ph76.split.us.i.preheader
  %unroll_iter205 = and i64 %wide.trip.count86.i, 2147483646
  br label %.lr.ph76.split.us.i

.lr.ph76.split.us.i:                              ; preds = %.lr.ph76.split.us.i, %.lr.ph76.split.us.i.preheader.new
  %indvars.iv83.i = phi i64 [ 0, %.lr.ph76.split.us.i.preheader.new ], [ %indvars.iv.next84.i.1, %.lr.ph76.split.us.i ] ; 4 uses
  %.05674.us.i = phi i32 [ %i.aaw, %.lr.ph76.split.us.i.preheader.new ], [ %i.abs, %.lr.ph76.split.us.i ] ; 2 uses
  %.05773.us.i = phi i32 [ 0, %.lr.ph76.split.us.i.preheader.new ], [ %i.abq, %.lr.ph76.split.us.i ] ; 2 uses
  %niter206 = phi i64 [ 0, %.lr.ph76.split.us.i.preheader.new ], [ %niter206.next.1, %.lr.ph76.split.us.i ]
  %i.abb = getelementptr inbounds nuw [120 x i8], ptr %i.aak, i64 %indvars.iv83.i ; 4 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 20
  store i32 %.05773.us.i, ptr %i.abc, align 4
  %i.abd = trunc i64 %indvars.iv83.i to i32
  %i.abe = sub i32 %i.aam, %i.abd
  %i.abf = sdiv i32 %.05674.us.i, %i.abe          ; 2 uses
  %i.abg = add nsw i32 %i.abf, %.05773.us.i       ; 3 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abb, i64 24
  store i32 %i.abg, ptr %i.abh, align 8
  %i.abi = sub nsw i32 %.05674.us.i, %i.abf       ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abb, i64 28
  store i32 %i.aay, ptr %i.abj, align 4
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abb, i64 32
  store i32 %i.aaz, ptr %i.abk, align 8
  %indvars.iv.next84.i = or disjoint i64 %indvars.iv83.i, 1 ; 2 uses
  %i.abl = getelementptr inbounds nuw [120 x i8], ptr %i.aak, i64 %indvars.iv.next84.i ; 4 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 20
  store i32 %i.abg, ptr %i.abm, align 4
  %i.abn = trunc i64 %indvars.iv.next84.i to i32
  %i.abo = sub i32 %i.aam, %i.abn
  %i.abp = sdiv i32 %i.abi, %i.abo                ; 2 uses
  %i.abq = add nsw i32 %i.abp, %i.abg             ; 3 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abl, i64 24
  store i32 %i.abq, ptr %i.abr, align 8
  %i.abs = sub nsw i32 %i.abi, %i.abp             ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abl, i64 28
  store i32 %i.aay, ptr %i.abt, align 4
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abl, i64 32
  store i32 %i.aaz, ptr %i.abu, align 8
  %indvars.iv.next84.i.1 = add nuw nsw i64 %indvars.iv83.i, 2 ; 2 uses
  %niter206.next.1 = add nuw i64 %niter206, 2     ; 2 uses
  %niter206.ncmp.1 = icmp eq i64 %niter206.next.1, %unroll_iter205
  br i1 %niter206.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph76.split.us.i

.lr.ph76.split.i:                                 ; preds = %.lr.ph76.i, %bb.cp
  %indvars.iv.i365 = phi i64 [ %indvars.iv.next.i370, %bb.cp ], [ 0, %.lr.ph76.i ] ; 4 uses
  %.05674.i = phi i32 [ %i.acq, %bb.cp ], [ %i.aaw, %.lr.ph76.i ] ; 2 uses
  %.05773.i = phi i32 [ %i.aca, %bb.cp ], [ 0, %.lr.ph76.i ] ; 4 uses
  %i.abv = getelementptr inbounds nuw [120 x i8], ptr %i.aak, i64 %indvars.iv.i365 ; 5 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 20 ; 2 uses
  store i32 %.05773.i, ptr %i.abw, align 4
  %i.abx = trunc i64 %indvars.iv.i365 to i32
  %i.aby = sub i32 %i.aam, %i.abx
  %i.abz = sdiv i32 %.05674.i, %i.aby             ; 3 uses
  %i.aca = add nsw i32 %i.abz, %.05773.i          ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abv, i64 24
  store i32 %i.aca, ptr %i.acb, align 8
  %.not79.i = icmp eq i64 %indvars.iv.i365, 0
  br i1 %.not79.i, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph76.split.i
  %i.acc = sext i32 %.05773.i to i64
  %i.acd = getelementptr inbounds [8 x i8], ptr %i.aao, i64 %i.acc ; 2 uses
  %spec.select.i366 = tail call i32 @llvm.smin.i32(i32 %i.abz, i32 %i.aax) ; 2 uses
  %i.ace = load i32, ptr %i.acd, align 4          ; 2 uses
  %.not65.i = icmp slt i32 %spec.select.i366, 1
  br i1 %.not65.i, label %._crit_edge.i369, label %.lr.ph.i367

.lr.ph.i367:                                      ; preds = %bb.cn, %bb.co
  %i.acf = phi i32 [ %i.acl, %bb.co ], [ %i.ace, %bb.cn ] ; 2 uses
  %.069.i = phi ptr [ %i.acg, %bb.co ], [ %i.acd, %bb.cn ]
  %.05268.i = phi i32 [ %spec.select64.i, %bb.co ], [ 0, %bb.cn ] ; 2 uses
  %.05367.i = phi i32 [ %i.ack, %bb.co ], [ 1, %bb.cn ] ; 3 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 2 uses
  %i.ach = load i32, ptr %i.acg, align 4          ; 3 uses
  %i.aci = icmp sgt i32 %i.ach, %i.ace
  br i1 %i.aci, label %._crit_edge.i369, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i367
  %i.acj = icmp slt i32 %i.ach, %i.acf
  %spec.select64.i = select i1 %i.acj, i32 %.05367.i, i32 %.05268.i ; 2 uses
  %i.ack = add nuw i32 %.05367.i, 1
  %exitcond.not.i368 = icmp eq i32 %.05367.i, %spec.select.i366
  %i.acl = tail call i32 @llvm.smin.i32(i32 %i.ach, i32 %i.acf)
  br i1 %exitcond.not.i368, label %._crit_edge.i369, label %.lr.ph.i367

._crit_edge.i369:                                 ; preds = %bb.co, %.lr.ph.i367, %bb.cn
  %.052.lcssa.i = phi i32 [ 0, %bb.cn ], [ %spec.select64.i, %bb.co ], [ %.05268.i, %.lr.ph.i367 ] ; 2 uses
  %i.acm = getelementptr i8, ptr %i.abv, i64 -96  ; 2 uses
  %i.acn = load i32, ptr %i.acm, align 8
  %i.aco = add nsw i32 %i.acn, %.052.lcssa.i
  store i32 %i.aco, ptr %i.acm, align 8
  %i.acp = add nsw i32 %.052.lcssa.i, %.05773.i
  store i32 %i.acp, ptr %i.abw, align 4
  br label %bb.cp

bb.cp:                                            ; preds = %._crit_edge.i369, %.lr.ph76.split.i
  %i.acq = sub nsw i32 %.05674.i, %i.abz
  %i.acr = getelementptr inbounds nuw i8, ptr %i.abv, i64 28
  store i32 %i.aay, ptr %i.acr, align 4
  %i.acs = getelementptr inbounds nuw i8, ptr %i.abv, i64 32
  store i32 %i.aaz, ptr %i.acs, align 8
  %indvars.iv.next.i370 = add nuw nsw i64 %indvars.iv.i365, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next.i370, %wide.trip.count86.i
  br i1 %exitcond82.not.i, label %.loopexit, label %.lr.ph76.split.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph76.split.us.i
  %lcmp.mod203.not = icmp eq i64 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %.loopexit, label %.lr.ph76.split.us.i.epil.preheader

.lr.ph76.split.us.i.epil.preheader:               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph76.split.us.i.preheader
  %indvars.iv83.i.epil.init = phi i64 [ 0, %.lr.ph76.split.us.i.preheader ], [ %indvars.iv.next84.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.05674.us.i.epil.init = phi i32 [ %i.aaw, %.lr.ph76.split.us.i.preheader ], [ %i.abs, %.loopexit.loopexit.unr-lcssa ]
  %.05773.us.i.epil.init = phi i32 [ 0, %.lr.ph76.split.us.i.preheader ], [ %i.abq, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod204 = trunc i32 %i.aam to i1
  tail call void @llvm.assume(i1 %lcmp.mod204)
  %i.act = getelementptr inbounds nuw [120 x i8], ptr %i.aak, i64 %indvars.iv83.i.epil.init ; 4 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 20
  store i32 %.05773.us.i.epil.init, ptr %i.acu, align 4
  %i.acv = trunc i64 %indvars.iv83.i.epil.init to i32
  %i.acw = sub i32 %i.aam, %i.acv
  %i.acx = sdiv i32 %.05674.us.i.epil.init, %i.acw
  %i.acy = add nsw i32 %i.acx, %.05773.us.i.epil.init
  %i.acz = getelementptr inbounds nuw i8, ptr %i.act, i64 24
  store i32 %i.acy, ptr %i.acz, align 8
  %i.ada = getelementptr inbounds nuw i8, ptr %i.act, i64 28
  store i32 %i.aay, ptr %i.ada, align 4
  %i.adb = getelementptr inbounds nuw i8, ptr %i.act, i64 32
  store i32 %i.aaz, ptr %i.adb, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cp, %.lr.ph76.split.us.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %stbir_simd_memcpy.exit360
  %i.adc = getelementptr inbounds nuw i8, ptr %i.ex, i64 276
  %i.add = load i32, ptr %i.adc, align 4          ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.ex, i64 332
  %i.adf = load i32, ptr %i.aan, align 8
  %.not334 = icmp eq i32 %i.adf, 0
  %i.adg = tail call i32 @llvm.smin.i32(i32 %i.add, i32 %.0.lcssa.i)
  %spec.store.select = select i1 %.not334, i32 %i.adg, i32 %i.add
  store i32 %spec.store.select, ptr %i.ade, align 4
  br label %.thread15

.thread13:                                        ; preds = %bb.at
  %i.adh = add i64 %.3294.in, 15                  ; 2 uses
  %i.adi = tail call noalias ptr @malloc(i64 noundef %i.adh) #53 ; 2 uses
  %i.adj = icmp eq ptr %i.adi, null
  br i1 %i.adj, label %.thread15, label %bb.q

.thread15:                                        ; preds = %.thread13, %.loopexit, %bb.h
  %.2311 = phi ptr [ null, %bb.h ], [ %i.ex, %.loopexit ], [ null, %.thread13 ]
  ret ptr %.2311
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.cmp.ss(<4 x float>, <4 x float>, i8 immarg) #47

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal float @stbir__filter_trapezoid(float noundef %0, float noundef %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  %i.a = fmul float %1, 5.000000e-01              ; 2 uses
  %i.b = fadd float %i.a, 5.000000e-01            ; 2 uses
  %i.c = fcmp olt float %0, 0.000000e+00
  %i.d = fneg float %0
  %.013 = select i1 %i.c, float %i.d, float %0    ; 3 uses
  %i.e = fcmp ult float %.013, %i.b
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fsub float 5.000000e-01, %i.a
  %i.g = fcmp ugt float %.013, %i.f
  %i.h = fsub float %i.b, %.013
  %i.i = fdiv float %i.h, %1
  %.0 = select i1 %i.g, float %i.i, float 1.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi float [ %.0, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @stbir__filter_triangle(float noundef %0, float %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00
  %i.b = fneg float %0
  %.05 = select i1 %i.a, float %i.b, float %0     ; 2 uses
  %i.c = fcmp ugt float %.05, 1.000000e+00
  %i.d = fsub float 1.000000e+00, %.05
  %.0 = select i1 %i.c, float 0.000000e+00, float %i.d
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal float @stbir__filter_cubic(float noundef %0, float %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00
  %i.b = fneg float %0
  %.011 = select i1 %i.a, float %i.b, float %0    ; 8 uses
  %i.c = fcmp olt float %.011, 1.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fmul float %.011, %.011
  %i.e = fmul nnan float %.011, 3.000000e+00
  %i.f = fadd nnan float %i.e, -6.000000e+00
  %i.g = fmul float %i.d, %i.f
  %i.h = fadd float %i.g, 4.000000e+00
  %i.i = fdiv float %i.h, 6.000000e+00
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = fcmp olt float %.011, 2.000000e+00
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = fsub nnan float 6.000000e+00, %.011
  %i.l = fmul nnan float %.011, %i.k
  %i.m = fadd nnan float %i.l, -1.200000e+01
  %i.n = fmul nnan float %.011, %i.m
  %i.o = fadd float %i.n, 8.000000e+00
  %i.p = fdiv float %i.o, 6.000000e+00
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi float [ %i.i, %bb.b ], [ %i.p, %bb.d ], [ 0.000000e+00, %bb.c ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal float @stbir__filter_catmullrom(float noundef %0, float %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00
  %i.b = fneg float %0
  %.011 = select i1 %i.a, float %i.b, float %0    ; 8 uses
  %i.c = fcmp olt float %.011, 1.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fmul float %.011, %.011
  %i.e = fmul nnan float %.011, 1.500000e+00
  %i.f = fsub nnan float 2.500000e+00, %i.e
end_hunk_18
begin_hunk_19_@stbir__calculate_filters:bb.a
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
  %i.a = load i32, ptr %2, align 4                ; 8 uses
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
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0187309.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.am, %._crit_edge.unr-lcssa ]
  %lcmp.mod635 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod635)
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
  %.lcssa633 = phi double [ %i.am, %._crit_edge.unr-lcssa ], [ %i.aq, %.lr.ph.epil ] ; 3 uses
  %i.ar = tail call double @llvm.fabs.f64(double %.lcssa633)
  %or.cond = fcmp olt double %i.ar, f0x3870000000000000
  br i1 %or.cond, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  store i32 %i.p, ptr %i.n, align 4
  store float 0.000000e+00, ptr %.0192315, align 4
  br label %.loopexit292

bb.c:                                             ; preds = %._crit_edge
  %or.cond3 = fcmp ueq double %.lcssa633, 1.000000e+00
  br i1 %or.cond3, label %.loopexit292, label %.lr.ph313.preheader

.lr.ph313.preheader:                              ; preds = %bb.c
  %i.as = fdiv nnan double 1.000000e+00, %.lcssa633 ; 2 uses
  %min.iters.check = icmp ult i32 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph313.preheader632, label %vector.ph

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
  %wide.load533 = load <4 x float>, ptr %i.au, align 4
  %i.av = fpext <4 x float> %wide.load to <4 x double>
  %i.aw = fpext <4 x float> %wide.load533 to <4 x double>
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
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit292, label %.lr.ph313.preheader632

.lr.ph313.preheader632:                           ; preds = %.lr.ph313.preheader, %middle.block
  %indvars.iv366.ph = phi i64 [ 0, %.lr.ph313.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph313

.lr.ph313:                                        ; preds = %.lr.ph313.preheader632, %.lr.ph313
  %indvars.iv366 = phi i64 [ %indvars.iv.next367, %.lr.ph313 ], [ %indvars.iv366.ph, %.lr.ph313.preheader632 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.0192315, i64 %indvars.iv366 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4
  %i.be = fpext float %i.bd to double
  %i.bf = fmul double %i.as, %i.be
  %i.bg = fptrunc double %i.bf to float
  store float %i.bg, ptr %i.bc, align 4
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count
  br i1 %exitcond370.not, label %.loopexit292, label %.lr.ph313, !llvm.loop !591

.loopexit292:                                     ; preds = %.lr.ph313, %middle.block, %bb.c, %._crit_edge.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %.0190317, i64 8
  %i.bi = getelementptr inbounds [4 x i8], ptr %.0192315, i64 %i.m
  %i.bj = add nuw nsw i32 %.0206314, 1            ; 2 uses
  %exitcond371.not = icmp eq i32 %i.bj, %spec.select
  br i1 %exitcond371.not, label %._crit_edge320, label %bb.b

._crit_edge320:                                   ; preds = %.loopexit292, %bb.a
  br i1 %i.k, label %bb.d, label %stbir_overlapping_memcpy.exit

bb.d:                                             ; preds = %._crit_edge320
  %i.bk = sext i32 %i.d to i64                    ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %4, i64 %i.bk ; 7 uses
  %i.bm = xor i32 %i.d, -1
  %i.bn = add i32 %3, %i.bm                       ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check556 = icmp ult i32 %i.bn, 37
  br i1 %min.iters.check556, label %scalar.ph555.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.d
  %i.bq = shl nsw i64 %i.bk, 3                    ; 2 uses
  %i.br = xor i32 %i.d, -1
  %i.bs = add i32 %3, %i.br
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 3                ; 3 uses
  %i.bv = add nsw i64 %i.bq, %i.bu                ; 2 uses
  %i.bw = getelementptr i8, ptr %4, i64 %i.bv
  %scevgep534 = getelementptr i8, ptr %i.bw, i64 4 ; 3 uses
  %i.bx = getelementptr i8, ptr %4, i64 %i.bq
  %scevgep535 = getelementptr i8, ptr %i.bx, i64 4 ; 3 uses
  %i.by = getelementptr i8, ptr %4, i64 %i.bv
  %scevgep536 = getelementptr i8, ptr %i.by, i64 8 ; 3 uses
  %i.bz = getelementptr i8, ptr %4, i64 %i.bu
  %scevgep537 = getelementptr i8, ptr %i.bz, i64 4 ; 2 uses
  %scevgep538 = getelementptr i8, ptr %4, i64 4   ; 2 uses
  %i.ca = getelementptr i8, ptr %4, i64 %i.bu
  %scevgep539 = getelementptr i8, ptr %i.ca, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %i.bl, %scevgep536
  %bound1 = icmp ult ptr %scevgep535, %scevgep534
  %found.conflict = and i1 %bound0, %bound1
  %bound0540 = icmp ult ptr %i.bl, %scevgep537
  %bound1541 = icmp ult ptr %4, %scevgep534
  %found.conflict542 = and i1 %bound0540, %bound1541
  %conflict.rdx = or i1 %found.conflict, %found.conflict542
  %bound0543 = icmp ult ptr %i.bl, %scevgep539
  %bound1544 = icmp ult ptr %scevgep538, %scevgep534
  %found.conflict545 = and i1 %bound0543, %bound1544
  %conflict.rdx546 = or i1 %conflict.rdx, %found.conflict545
  %bound0547 = icmp ult ptr %scevgep535, %scevgep537
  %bound1548 = icmp ult ptr %4, %scevgep536
  %found.conflict549 = and i1 %bound0547, %bound1548
  %conflict.rdx550 = or i1 %conflict.rdx546, %found.conflict549
  %bound0551 = icmp ult ptr %scevgep535, %scevgep539
  %bound1552 = icmp ult ptr %scevgep538, %scevgep536
  %found.conflict553 = and i1 %bound0551, %bound1552
  %conflict.rdx554 = or i1 %conflict.rdx550, %found.conflict553
  br i1 %conflict.rdx554, label %scalar.ph555.preheader, label %vector.ph557

vector.ph557:                                     ; preds = %vector.memcheck
  %n.vec558 = and i64 %i.bp, 8589934590           ; 4 uses
  %i.cb = shl nuw nsw i64 %n.vec558, 3            ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bl, i64 %i.cb
  %i.cd = getelementptr i8, ptr %4, i64 %i.cb
  %i.ce = trunc i64 %n.vec558 to i32
  %i.cf = add i32 %i.d, %i.ce
  %broadcast.splatinsert559 = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.cg = shufflevector <2 x i32> %broadcast.splatinsert559, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body561

vector.body561:                                   ; preds = %vector.body561, %vector.ph557
  %index562 = phi i64 [ 0, %vector.ph557 ], [ %index.next565, %vector.body561 ] ; 2 uses
  %i.ch = shl i64 %index562, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bl, i64 %i.ch
  %next.gep563 = getelementptr i8, ptr %4, i64 %i.ch
  %wide.vec = load <4 x i32>, ptr %next.gep563, align 4
  %interleaved.vec = add nsw <4 x i32> %wide.vec, %i.cg
  store <4 x i32> %interleaved.vec, ptr %next.gep, align 4
  %index.next565 = add nuw i64 %index562, 2       ; 2 uses
  %i.ci = icmp eq i64 %index.next565, %n.vec558
  br i1 %i.ci, label %middle.block566, label %vector.body561, !llvm.loop !592

middle.block566:                                  ; preds = %vector.body561
  %cmp.n567 = icmp eq i64 %i.bp, %n.vec558
  br i1 %cmp.n567, label %.loopexit624, label %scalar.ph555.preheader

scalar.ph555.preheader:                           ; preds = %vector.memcheck, %bb.d, %middle.block566
  %.0185323.ph = phi ptr [ %i.bl, %vector.memcheck ], [ %i.bl, %bb.d ], [ %i.cc, %middle.block566 ] ; 4 uses
  %.0186322.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %bb.d ], [ %i.cd, %middle.block566 ] ; 4 uses
  %.1207321.ph = phi i32 [ %i.d, %vector.memcheck ], [ %i.d, %bb.d ], [ %i.cf, %middle.block566 ] ; 4 uses
  %i.cj = sub i32 %3, %.1207321.ph
  %.neg = add i32 %.1207321.ph, 1
  %xtraiter636 = and i32 %i.cj, 1
  %lcmp.mod637.not = icmp eq i32 %xtraiter636, 0
  br i1 %lcmp.mod637.not, label %scalar.ph555.prol.loopexit, label %scalar.ph555.prol

scalar.ph555.prol:                                ; preds = %scalar.ph555.preheader
  %i.ck = load i32, ptr %.0186322.ph, align 4
  %i.cl = add nsw i32 %i.ck, %i.f
  store i32 %i.cl, ptr %.0185323.ph, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.0186322.ph, i64 4
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = add nsw i32 %i.cn, %i.f
  %i.cp = getelementptr inbounds nuw i8, ptr %.0185323.ph, i64 4
  store i32 %i.co, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.0185323.ph, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.0186322.ph, i64 8
  %i.cs = add nsw i32 %.1207321.ph, 1
  br label %scalar.ph555.prol.loopexit
end_hunk_19
