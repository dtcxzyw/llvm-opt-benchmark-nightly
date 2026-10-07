Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@stbi__loadf_main:bb.a
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
  br i1 %niter26.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !35

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
end_hunk_0
begin_hunk_1_@stbiw__jpg_processDU:.lver.check
  call void %.val.i198(ptr noundef %.val19.i199, ptr noundef nonnull %i.e, i32 noundef 1) #52, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.i193
  %i.yd = shl i32 %.0181.i195, 8                  ; 2 uses
  %i.ye = add nsw i32 %.02.i194, -8               ; 2 uses
  %i.yf = icmp samesign ugt i32 %.02.i194, 15
  br i1 %i.yf, label %.lr.ph.i193, label %stbiw__jpg_writeBits.exit200

stbiw__jpg_writeBits.exit200:                     ; preds = %bb.cf, %bb.cd
  %.018.lcssa.i191 = phi i32 [ %i.xx, %bb.cd ], [ %i.yd, %bb.cf ]
  %.0.lcssa.i192 = phi i32 [ %i.xt, %bb.cd ], [ %i.ye, %bb.cf ] ; 2 uses
  store i32 %.018.lcssa.i191, ptr %1, align 4
  store i32 %.0.lcssa.i192, ptr %2, align 4
  %i.yg = load i32, ptr %1, align 4
  %i.yh = add nsw i32 %.0.lcssa.i192, %i.xj       ; 4 uses
  %i.yi = and i32 %i.xk, 65535
  %i.yj = and i32 %i.yi, %i.xl
  %i.yk = sub nsw i32 24, %i.yh
  %i.yl = shl i32 %i.yj, %i.yk
  %i.ym = or i32 %i.yl, %i.yg                     ; 2 uses
  %i.yn = icmp sgt i32 %i.yh, 7
  br i1 %i.yn, label %.lr.ph.i203, label %stbiw__jpg_writeBits.exit210

.lr.ph.i203:                                      ; preds = %stbiw__jpg_writeBits.exit200, %bb.ch
  %.02.i204 = phi i32 [ %i.yt, %bb.ch ], [ %i.yh, %stbiw__jpg_writeBits.exit200 ] ; 2 uses
  %.0181.i205 = phi i32 [ %i.ys, %bb.ch ], [ %i.ym, %stbiw__jpg_writeBits.exit200 ] ; 3 uses
  %i.yo = lshr i32 %.0181.i205, 16
  %i.yp = trunc i32 %i.yo to i8
  %.val20.i206 = load ptr, ptr %0, align 8
  %.val21.i207 = load ptr, ptr %i.vm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.yp, ptr %i.d, align 1
  call void %.val20.i206(ptr noundef %.val21.i207, ptr noundef nonnull %i.d, i32 noundef 1) #52, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.yq = and i32 %.0181.i205, 16711680
  %i.yr = icmp eq i32 %i.yq, 16711680
  br i1 %i.yr, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.lr.ph.i203
  %.val.i208 = load ptr, ptr %0, align 8
  %.val19.i209 = load ptr, ptr %i.vm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1
  call void %.val.i208(ptr noundef %.val19.i209, ptr noundef nonnull %i.c, i32 noundef 1) #52, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.lr.ph.i203
  %i.ys = shl i32 %.0181.i205, 8                  ; 2 uses
  %i.yt = add nsw i32 %.02.i204, -8               ; 2 uses
  %i.yu = icmp samesign ugt i32 %.02.i204, 15
  br i1 %i.yu, label %.lr.ph.i203, label %stbiw__jpg_writeBits.exit210

stbiw__jpg_writeBits.exit210:                     ; preds = %bb.ch, %stbiw__jpg_writeBits.exit200
  %.018.lcssa.i201 = phi i32 [ %i.ym, %stbiw__jpg_writeBits.exit200 ], [ %i.ys, %bb.ch ]
  %.0.lcssa.i202 = phi i32 [ %i.yh, %stbiw__jpg_writeBits.exit200 ], [ %i.yt, %bb.ch ] ; 3 uses
  store i32 %.018.lcssa.i201, ptr %1, align 4
  store i32 %.0.lcssa.i202, ptr %2, align 4
  %i.yv = add nsw i32 %i.wl, 1
  %.not.not = icmp sgt i32 %.0123.lcssa.ph, %i.wl
  br i1 %.not.not, label %.preheader, label %._crit_edge263

._crit_edge263:                                   ; preds = %stbiw__jpg_writeBits.exit210
  br i1 %.not, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %._crit_edge263
  %i.yw = load i32, ptr %1, align 4
  %i.yx = zext i16 %i.t to i32
  %i.yy = add nsw i32 %.0.lcssa.i202, %i.yx       ; 4 uses
  %i.yz = zext i16 %i.r to i32
  %i.za = sub nsw i32 24, %i.yy
  %i.zb = shl i32 %i.yz, %i.za
  %i.zc = or i32 %i.zb, %i.yw                     ; 2 uses
  %i.zd = icmp sgt i32 %i.yy, 7
  br i1 %i.zd, label %.lr.ph.i213, label %.sink.split

.lr.ph.i213:                                      ; preds = %bb.ci
  %i.ze = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cl, %.lr.ph.i213
  %.02.i214 = phi i32 [ %i.yy, %.lr.ph.i213 ], [ %i.zk, %bb.cl ] ; 2 uses
  %.0181.i215 = phi i32 [ %i.zc, %.lr.ph.i213 ], [ %i.zj, %bb.cl ] ; 3 uses
  %i.zf = lshr i32 %.0181.i215, 16
  %i.zg = trunc i32 %i.zf to i8
  %.val20.i216 = load ptr, ptr %0, align 8
  %.val21.i217 = load ptr, ptr %i.ze, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.zg, ptr %i.b, align 1
  call void %.val20.i216(ptr noundef %.val21.i217, ptr noundef nonnull %i.b, i32 noundef 1) #52, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.zh = and i32 %.0181.i215, 16711680
  %i.zi = icmp eq i32 %i.zh, 16711680
  br i1 %i.zi, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %.val.i218 = load ptr, ptr %0, align 8
  %.val19.i219 = load ptr, ptr %i.ze, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1
  call void %.val.i218(ptr noundef %.val19.i219, ptr noundef nonnull %i.a, i32 noundef 1) #52, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.zj = shl i32 %.0181.i215, 8                  ; 2 uses
  %i.zk = add nsw i32 %.02.i214, -8               ; 2 uses
  %i.zl = icmp sgt i32 %.02.i214, 15
  br i1 %i.zl, label %bb.cj, label %.sink.split

.sink.split:                                      ; preds = %bb.cl, %bb.by, %bb.ci, %.critedge
  %.018.lcssa.i211.sink = phi i32 [ %i.wb, %bb.by ], [ %i.vu, %.critedge ], [ %i.zc, %bb.ci ], [ %i.zj, %bb.cl ]
  %.0.lcssa.i212.sink = phi i32 [ %i.wc, %bb.by ], [ %i.vq, %.critedge ], [ %i.yy, %bb.ci ], [ %i.zk, %bb.cl ]
  store i32 %.018.lcssa.i211.sink, ptr %1, align 4
  store i32 %.0.lcssa.i212.sink, ptr %2, align 4
  br label %bb.cm

bb.cm:                                            ; preds = %.sink.split, %._crit_edge263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #52
  ret i32 %i.fv
}

; Function Attrs: nounwind uwtable
define internal ptr @stbir__decode_uint8_srgb(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 4 uses
  %.not29 = icmp slt i32 %1, 4
  br i1 %.not29, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.02528 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.pn.lcssa = phi ptr [ %0, %bb.a ], [ %.02532, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.z, %.lr.ph ]
  %i.c = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.c, label %.lr.ph36, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02532 = phi ptr [ %.025, %.lr.ph ], [ %.02528, %.lr.ph.preheader ] ; 3 uses
  %.031 = phi ptr [ %i.z, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn30 = phi ptr [ %.02532, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %i.d = load i8, ptr %.031, align 1
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.e
  %i.g = load float, ptr %i.f, align 4
  store float %i.g, ptr %.pn30, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %.031, i64 1
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.j
  %i.l = load float, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %.pn30, i64 4
  store float %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %.031, i64 2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.p
  %i.r = load float, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.pn30, i64 8
  store float %i.r, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %.031, i64 3
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.v
  %i.x = load float, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.pn30, i64 12
  store float %i.x, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %.025 = getelementptr inbounds nuw i8, ptr %.02532, i64 16 ; 2 uses
  %.not = icmp ugt ptr %.025, %i.b
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph36:                                         ; preds = %.preheader, %.lr.ph36
  %.135 = phi ptr [ %i.af, %.lr.ph36 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.12634 = phi ptr [ %i.ae, %.lr.ph36 ], [ %.pn.lcssa, %.preheader ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.12634) #52, !srcloc !248
  %i.aa = load i8, ptr %.135, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @stbir__srgb_uchar_to_linear_float, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4
  store float %i.ad, ptr %.12634, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.12634, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.135, i64 1
  %i.ag = icmp ult ptr %i.ae, %i.b
  br i1 %i.ag, label %.lr.ph36, label %._crit_edge, !llvm.loop !247

._crit_edge:                                      ; preds = %.lr.ph36, %.preheader
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @stbir__decode_float_linear(ptr noundef %0, i32 noundef %1, ptr noundef %2) #24 {
bb.a:
  %.not = icmp eq ptr %0, %2
  %.pre = sext i32 %1 to i64                      ; 5 uses
  br i1 %.not, label %stbir_simd_memcpy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl nsw i64 %.pre, 2                     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 5 uses
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d                       ; 5 uses
  %i.f = icmp ult i64 %i.a, 64
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i64 %i.a, 16
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %stbir_simd_memcpy.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.0.i = phi ptr [ %i.j, %.preheader.i ], [ %0, %bb.d ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0.i) #52, !srcloc !18
  %i.h = getelementptr inbounds i8, ptr %.0.i, i64 %i.e
  %i.i = load i8, ptr %i.h, align 1
  store i8 %i.i, ptr %.0.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %i.k = icmp ult ptr %i.j, %i.b
  br i1 %i.k, label %.preheader.i, label %stbir_simd_memcpy.exit, !llvm.loop !3

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.m = load <4 x float>, ptr %i.l, align 1
  store <4 x float> %i.m, ptr %0, align 1
  %i.n = and i64 %i.d, -16
  %i.o = add i64 %i.n, 16
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.1.i = phi ptr [ %i.p, %bb.e ], [ %i.v, %bb.h ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.1.i) #52, !srcloc !20
  %i.r = icmp ugt ptr %.1.i, %i.q
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = icmp eq ptr %.1.i, %i.b
  br i1 %i.s, label %stbir_simd_memcpy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2.i = phi ptr [ %.1.i, %bb.f ], [ %i.q, %bb.g ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %.2.i, i64 %i.e
  %i.u = load <4 x float>, ptr %i.t, align 1
  store <4 x float> %i.u, ptr %.2.i, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  br label %bb.f, !llvm.loop !4

bb.i:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds i8, ptr %0, i64 %i.e ; 4 uses
  %i.x = load <4 x float>, ptr %i.w, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load <4 x float>, ptr %i.y, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ab = load <4 x float>, ptr %i.aa, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ad = load <4 x float>, ptr %i.ac, align 1
  store <4 x float> %i.x, ptr %0, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %i.z, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %i.ab, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %i.ad, ptr %i.ag, align 1
  %i.ah = and i64 %i.d, -64
  %i.ai = add i64 %i.ah, 64
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds i8, ptr %i.b, i64 -64 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.3.i = phi ptr [ %i.aj, %bb.i ], [ %i.ay, %bb.l ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3.i) #52, !srcloc !21
  %i.al = icmp ugt ptr %.3.i, %i.ak
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = icmp eq ptr %.3.i, %i.b
  br i1 %i.am, label %stbir_simd_memcpy.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.4.i = phi ptr [ %.3.i, %bb.j ], [ %i.ak, %bb.k ] ; 6 uses
  %i.an = getelementptr inbounds i8, ptr %.4.i, i64 %i.e ; 4 uses
  %i.ao = load <4 x float>, ptr %i.an, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aq = load <4 x float>, ptr %i.ap, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.as = load <4 x float>, ptr %i.ar, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.au = load <4 x float>, ptr %i.at, align 1
  store <4 x float> %i.ao, ptr %.4.i, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.4.i, i64 16
  store <4 x float> %i.aq, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.4.i, i64 32
  store <4 x float> %i.as, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.4.i, i64 48
  store <4 x float> %i.au, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.4.i, i64 64
  br label %bb.j, !llvm.loop !5

stbir_simd_memcpy.exit:                           ; preds = %bb.k, %bb.g, %.preheader.i, %bb.a, %bb.d
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %.pre, %bb.a ], [ %.pre, %.preheader.i ], [ 0, %bb.d ], [ %.pre, %bb.k ]
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %.pre-phi
  ret ptr %i.az
}

; Function Attrs: nounwind uwtable
define internal ptr @stbir__decode_half_float_linear(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #24 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 6 uses
  %i.c = icmp sgt i32 %1, 7
  br i1 %i.c, label %bb.b, label %.preheader62

.preheader62:                                     ; preds = %bb.a
  %.not64 = icmp slt i32 %1, 4
  br i1 %.not64, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader62
  %.14463 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.043 = phi ptr [ %0, %bb.b ], [ %.043.be, %.backedge.backedge ] ; 4 uses
  %.0 = phi ptr [ %2, %bb.b ], [ %.0.be, %.backedge.backedge ] ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.043) #52, !srcloc !252
  %.0.val60 = load <8 x i16>, ptr %.0, align 1    ; 2 uses
  %i.g = shufflevector <8 x i16> %.0.val60, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.h = bitcast <8 x i16> %i.g to <4 x i32>
  %i.i = bitcast <8 x i16> %i.g to <4 x i32>
  %i.j = and <4 x i32> %i.i, splat (i32 32767)    ; 3 uses
  %i.k = icmp samesign ugt <4 x i32> %i.j, splat (i32 31743)
  %i.l = icmp samesign ugt <4 x i32> %i.j, splat (i32 1023)
  %i.m = shl nuw nsw <4 x i32> %i.j, splat (i32 13) ; 2 uses
  %i.n = add nuw nsw <4 x i32> %i.m, splat (i32 939524096)
  %i.o = add nuw nsw <4 x i32> %i.m, splat (i32 947912704)
  %i.p = select <4 x i1> %i.k, <4 x i32> splat (i32 939524096), <4 x i32> zeroinitializer
  %i.q = add nuw nsw <4 x i32> %i.n, %i.p
  %i.r = bitcast <4 x i32> %i.o to <4 x float>
  %i.s = fadd <4 x float> %i.r, splat (float f0xB8800000)
  %i.t = bitcast <4 x float> %i.s to <4 x i32>
  %i.u = select <4 x i1> %i.l, <4 x i32> %i.q, <4 x i32> %i.t
  %i.v = shl nuw <4 x i32> %i.h, splat (i32 16)
  %i.w = and <4 x i32> %i.v, splat (i32 -2147483648)
  %i.x = or <4 x i32> %i.u, %i.w
  store <4 x i32> %i.x, ptr %.043, align 1
  %i.y = shufflevector <8 x i16> %.0.val60, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.z = bitcast <8 x i16> %i.y to <4 x i32>
  %i.aa = bitcast <8 x i16> %i.y to <4 x i32>
  %i.ab = and <4 x i32> %i.aa, splat (i32 32767)  ; 3 uses
  %i.ac = icmp samesign ugt <4 x i32> %i.ab, splat (i32 31743)
  %i.ad = icmp samesign ugt <4 x i32> %i.ab, splat (i32 1023)
  %i.ae = shl nuw nsw <4 x i32> %i.ab, splat (i32 13) ; 2 uses
  %i.af = add nuw nsw <4 x i32> %i.ae, splat (i32 939524096)
  %i.ag = add nuw nsw <4 x i32> %i.ae, splat (i32 947912704)
  %i.ah = select <4 x i1> %i.ac, <4 x i32> splat (i32 939524096), <4 x i32> zeroinitializer
  %i.ai = add nuw nsw <4 x i32> %i.af, %i.ah
  %i.aj = bitcast <4 x i32> %i.ag to <4 x float>
  %i.ak = fadd <4 x float> %i.aj, splat (float f0xB8800000)
  %i.al = bitcast <4 x float> %i.ak to <4 x i32>
  %i.am = select <4 x i1> %i.ad, <4 x i32> %i.ai, <4 x i32> %i.al
  %i.an = shl nuw <4 x i32> %i.z, splat (i32 16)
  %i.ao = and <4 x i32> %i.an, splat (i32 -2147483648)
  %i.ap = or <4 x i32> %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.043, i64 16
  store <4 x i32> %i.ap, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.043, i64 32 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %.not51 = icmp ugt ptr %i.ar, %i.f
  br i1 %.not51, label %bb.c, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.backedge, %bb.c
  %.043.be = phi ptr [ %i.ar, %.backedge ], [ %i.f, %bb.c ]
  %.0.be = phi ptr [ %i.as, %.backedge ], [ %i.e, %bb.c ]
  br label %.backedge, !llvm.loop !249

bb.c:                                             ; preds = %.backedge
  %i.at = icmp eq ptr %i.ar, %i.b
  br i1 %i.at, label %.loopexit, label %.backedge.backedge

.preheader:                                       ; preds = %.lr.ph.rtcont, %.preheader62
  %.pn.lcssa = phi ptr [ %0, %.preheader62 ], [ %.14467, %.lr.ph.rtcont ] ; 2 uses
  %.1.lcssa = phi ptr [ %2, %.preheader62 ], [ %.rtmerge, %.lr.ph.rtcont ]
  %i.au = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.au, label %.lr.ph71, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.rtcont
  %.14467 = phi ptr [ %.144.rtmerge, %.lr.ph.rtcont ], [ %.14463, %.lr.ph.preheader ] ; 5 uses
  %.166 = phi ptr [ %.rtmerge, %.lr.ph.rtcont ], [ %2, %.lr.ph.preheader ] ; 7 uses
  %.pn65 = phi ptr [ %.14467, %.lr.ph.rtcont ], [ %0, %.lr.ph.preheader ] ; 6 uses
  %.16679 = ptrtoaddr ptr %.166 to i64            ; 2 uses
  %i.av = add i64 %.16679, 8
  %.pn6580 = ptrtoaddr ptr %.pn65 to i64          ; 2 uses
  %i.aw = add i64 %.pn6580, 16
  %rt.bound0 = icmp ugt i64 %i.av, %.pn6580
  %rt.bound1 = icmp ugt i64 %i.aw, %.16679
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.lr.ph.rtscalar, label %.lr.ph.rtvec, !prof !24

.lr.ph71:                                         ; preds = %.preheader, %.lr.ph71
  %.270 = phi ptr [ %i.bj, %.lr.ph71 ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.24569 = phi ptr [ %i.bi, %.lr.ph71 ], [ %.pn.lcssa, %.preheader ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.24569) #52, !srcloc !253
  %i.ax = load i16, ptr %.270, align 2            ; 2 uses
  %i.ay = zext i16 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 13
  %i.ba = and i32 %i.az, 268427264
  %i.bb = bitcast i32 %i.ba to float
  %i.bc = fmul nnan float %i.bb, f0x77800000      ; 2 uses
  %i.bd = bitcast float %i.bc to i32              ; 2 uses
  %i.be = fcmp ult float %i.bc, 6.553600e+04
  %i.bf = or i32 %i.bd, 2139095040
  %spec.select.i58 = select i1 %i.be, i32 %i.bd, i32 %i.bf
  %.signext.i59 = sext i16 %i.ax to i32
  %i.bg = and i32 %.signext.i59, -2147483648
  %i.bh = or i32 %spec.select.i58, %i.bg
  store i32 %i.bh, ptr %.24569, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.24569, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.270, i64 2
  %i.bk = icmp ult ptr %i.bi, %i.b
  br i1 %i.bk, label %.lr.ph71, label %.loopexit, !llvm.loop !250

.loopexit:                                        ; preds = %.lr.ph71, %bb.c, %.preheader
  ret ptr %i.b

.lr.ph.rtvec:                                     ; preds = %.lr.ph
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.14467) #52, !srcloc !254
  %i.bl = load <4 x i16>, ptr %.166, align 2      ; 2 uses
  %i.bm = zext <4 x i16> %i.bl to <4 x i32>
  %i.bn = shl nuw nsw <4 x i32> %i.bm, splat (i32 13)
  %i.bo = and <4 x i32> %i.bn, splat (i32 268427264)
  %i.bp = bitcast <4 x i32> %i.bo to <4 x float>
  %i.bq = fmul nnan <4 x float> %i.bp, splat (float f0x77800000) ; 2 uses
  %i.br = bitcast <4 x float> %i.bq to <4 x i32>  ; 2 uses
  %i.bs = fcmp ult <4 x float> %i.bq, splat (float 6.553600e+04)
  %i.bt = or <4 x i32> %i.br, splat (i32 2139095040)
  %i.bu = select <4 x i1> %i.bs, <4 x i32> %i.br, <4 x i32> %i.bt
  %i.bv = sext <4 x i16> %i.bl to <4 x i32>
  %i.bw = and <4 x i32> %i.bv, splat (i32 -2147483648)
  %i.bx = or <4 x i32> %i.bu, %i.bw
  store <4 x i32> %i.bx, ptr %.pn65, align 4
  br label %.lr.ph.rtcont

.lr.ph.rtscalar:                                  ; preds = %.lr.ph
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.14467) #52, !srcloc !254
  %i.by = load i16, ptr %.166, align 2            ; 2 uses
  %i.bz = zext i16 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 13
  %i.cb = and i32 %i.ca, 268427264
  %i.cc = bitcast i32 %i.cb to float
  %i.cd = fmul nnan float %i.cc, f0x77800000      ; 2 uses
  %i.ce = bitcast float %i.cd to i32              ; 2 uses
  %i.cf = fcmp ult float %i.cd, 6.553600e+04
  %i.cg = or i32 %i.ce, 2139095040
  %spec.select.i.scalar = select i1 %i.cf, i32 %i.ce, i32 %i.cg
  %.signext.i.scalar = sext i16 %i.by to i32
  %i.ch = and i32 %.signext.i.scalar, -2147483648
  %i.ci = or i32 %spec.select.i.scalar, %i.ch
  store i32 %i.ci, ptr %.pn65, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.166, i64 2
  %i.ck = load i16, ptr %i.cj, align 2            ; 2 uses
  %i.cl = zext i16 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 13
  %i.cn = and i32 %i.cm, 268427264
  %i.co = bitcast i32 %i.cn to float
  %i.cp = fmul nnan float %i.co, f0x77800000      ; 2 uses
  %i.cq = bitcast float %i.cp to i32              ; 2 uses
  %i.cr = fcmp ult float %i.cp, 6.553600e+04
  %i.cs = or i32 %i.cq, 2139095040
  %spec.select.i52.scalar = select i1 %i.cr, i32 %i.cq, i32 %i.cs
  %.signext.i53.scalar = sext i16 %i.ck to i32
  %i.ct = and i32 %.signext.i53.scalar, -2147483648
  %i.cu = or i32 %spec.select.i52.scalar, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn65, i64 4
  store i32 %i.cu, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %.166, i64 4
  %i.cx = load i16, ptr %i.cw, align 2            ; 2 uses
  %i.cy = zext i16 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 13
  %i.da = and i32 %i.cz, 268427264
  %i.db = bitcast i32 %i.da to float
  %i.dc = fmul nnan float %i.db, f0x77800000      ; 2 uses
  %i.dd = bitcast float %i.dc to i32              ; 2 uses
  %i.de = fcmp ult float %i.dc, 6.553600e+04
  %i.df = or i32 %i.dd, 2139095040
  %spec.select.i54.scalar = select i1 %i.de, i32 %i.dd, i32 %i.df
  %.signext.i55.scalar = sext i16 %i.cx to i32
  %i.dg = and i32 %.signext.i55.scalar, -2147483648
  %i.dh = or i32 %spec.select.i54.scalar, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.pn65, i64 8
  store i32 %i.dh, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.166, i64 6
  %i.dk = load i16, ptr %i.dj, align 2            ; 2 uses
  %i.dl = zext i16 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 13
end_hunk_1
