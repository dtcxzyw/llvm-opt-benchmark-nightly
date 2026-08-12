inline.NumInlined: 824
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 80
loop-unroll.NumUnrolled: 110
begin_hunk_0_@stbi_load_gif_from_memory:bb.a
  %or.cond.i.i = select i1 %i.bz, i1 true, i1 %.not32.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.by to i64
  %i.ca = sext i32 %i.bu to i64
  br i1 %or.cond.i.i, label %_ZL26stbi__vertical_flip_slicesPviiii.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i, %_ZL19stbi__vertical_flipPviii.exit.loopexit.i
  %.014.i = phi ptr [ %i.cn, %_ZL19stbi__vertical_flipPviii.exit.loopexit.i ], [ %.0.i, %.lr.ph.i ] ; 3 uses
  %.01213.i = phi i32 [ %i.co, %_ZL19stbi__vertical_flipPviii.exit.loopexit.i ], [ 0, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.cb = mul i64 %indvars.iv.i.i, %i.bx
  %i.cc = getelementptr inbounds nuw i8, ptr %.014.i, i64 %i.cb
  %i.cd = trunc i64 %indvars.iv.i.i to i32
  %i.ce = xor i32 %i.cd, -1
  %i.cf = add i32 %i.bo, %i.ce
  %i.cg = sext i32 %i.cf to i64
  %i.ch = mul i64 %i.bx, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %.014.i, i64 %i.ch
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i
  %.02935.i.i = phi i64 [ %i.bx, %.lr.ph.i.i ], [ %i.cm, %bb.s ] ; 2 uses
  %.03034.i.i = phi ptr [ %i.ci, %.lr.ph.i.i ], [ %i.cl, %bb.s ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %i.ck, %bb.s ] ; 3 uses
  %i.cj = call i64 @llvm.umin.i64(i64 %.02935.i.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i, i64 %i.cj, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i, ptr align 1 %.03034.i.i, i64 %i.cj, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i, ptr nonnull align 16 %i.a, i64 %i.cj, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.03133.i.i, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.03034.i.i, i64 %i.cj
  %i.cm = sub i64 %.02935.i.i, %i.cj              ; 2 uses
  %.not.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.s, !llvm.loop !39

._crit_edge.i.i:                                  ; preds = %bb.s
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZL19stbi__vertical_flipPviii.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !40

_ZL19stbi__vertical_flipPviii.exit.loopexit.i:    ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cn = getelementptr inbounds i8, ptr %.014.i, i64 %i.ca
  %i.co = add nuw nsw i32 %.01213.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.co, %i.bp
  br i1 %exitcond.not.i, label %_ZL26stbi__vertical_flip_slicesPviiii.exit, label %.lr.ph.preheader.i.i, !llvm.loop !57

_ZL26stbi__vertical_flip_slicesPviiii.exit:       ; preds = %_ZL19stbi__vertical_flipPviii.exit.loopexit.i, %.lr.ph.i, %bb.r, %_ZL19stbi__load_gif_mainP13stbi__contextPPiS1_S1_S1_S1_i.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_loadf_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %0, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 184
  store ptr %0, ptr %i.d, align 8, !tbaa !24
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %i.f, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %i.f, ptr %i.h, align 8, !tbaa !25
  %i.i = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = tail call fastcc noundef i32 @_ZL14stbi__hdr_testP13stbi__context(ptr noundef %0)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef ptr @_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 5 uses
  %.not30 = icmp eq ptr %i.c, null
  br i1 %.not30, label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZL29stbi__vertically_flip_on_load, align 4, !tbaa !12
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not9.i = icmp eq i32 %4, 0
  br i1 %.not9.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = load i32, ptr %3, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = phi i32 [ %i.e, %bb.e ], [ %4, %bb.d ]
  %i.g = load i32, ptr %1, align 4, !tbaa !12
  %i.h = load i32, ptr %2, align 4, !tbaa !12     ; 2 uses
  %i.i = shl i32 %i.f, 2
  %i.j = sext i32 %i.g to i64
  %i.k = sext i32 %i.i to i64
  %i.l = mul nsw i64 %i.k, %i.j                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = ashr i32 %i.h, 1                         ; 2 uses
  %i.n = icmp slt i32 %i.m, 1
  %.not32.i.i = icmp eq i64 %i.l, 0
  %or.cond.i.i = select i1 %i.n, i1 true, i1 %.not32.i.i
  br i1 %or.cond.i.i, label %_ZL19stbi__vertical_flipPviii.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %wide.trip.count.i.i = zext nneg i32 %i.m to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.o = mul i64 %indvars.iv.i.i, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.o
  %i.q = trunc i64 %indvars.iv.i.i to i32
  %i.r = xor i32 %i.q, -1
  %i.s = add i32 %i.h, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = mul i64 %i.l, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.u
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.02935.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ %i.z, %bb.g ] ; 2 uses
  %.03034.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.y, %bb.g ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.x, %bb.g ] ; 3 uses
  %i.w = tail call i64 @llvm.umin.i64(i64 %.02935.i.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i, i64 %i.w, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i, ptr align 1 %.03034.i.i, i64 %i.w, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i, ptr nonnull align 16 %i.a, i64 %i.w, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.03133.i.i, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.03034.i.i, i64 %i.w
  %i.z = sub i64 %.02935.i.i, %i.w                ; 2 uses
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.g, !llvm.loop !39

._crit_edge.i.i:                                  ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZL19stbi__vertical_flipPviii.exit.i, label %.lr.ph.i.i, !llvm.loop !40

_ZL19stbi__vertical_flipPviii.exit.i:             ; preds = %._crit_edge.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

bb.h:                                             ; preds = %bb.a
  %i.aa = tail call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 9 uses
  %.not28 = icmp eq ptr %i.aa, null
  br i1 %.not28, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ac = load i32, ptr %2, align 4, !tbaa !12    ; 4 uses
  %.not29 = icmp eq i32 %4, 0
  br i1 %.not29, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = load i32, ptr %3, align 4, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ae = phi i32 [ %i.ad, %bb.j ], [ %4, %bb.i ] ; 9 uses
  %i.af = or i32 %i.ac, %i.ab
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.af, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.l, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp eq i32 %i.ac, 0
  br i1 %i.ag, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %bb.l
  %i.ah = udiv i32 2147483647, %i.ac
  %.not34.i.i.i = icmp sgt i32 %i.ab, %i.ah
  br i1 %.not34.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.l
  %i.ai = mul nsw i32 %i.ac, %i.ab                ; 9 uses
  %i.aj = or i32 %i.ae, %i.ai
  %or.cond.not.i16.i.i.i = icmp sgt i32 %i.aj, -1
  br i1 %or.cond.not.i16.i.i.i, label %bb.m, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.m:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i
  %i.ak = icmp eq i32 %i.ae, 0
  br i1 %i.ak, label %_ZL17stbi__malloc_mad4iiiii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit18.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.i.i.i:        ; preds = %bb.m
  %i.al = udiv i32 2147483647, %i.ae
  %.not.i.i.i = icmp sle i32 %i.ai, %i.al
  %i.am = mul nsw i32 %i.ae, %i.ai
  %or.cond.not.i.i = icmp ult i32 %i.am, 536870912
  %or.cond.i.i31 = select i1 %.not.i.i.i, i1 %or.cond.not.i.i, i1 false
  br i1 %or.cond.i.i31, label %_ZL17stbi__malloc_mad4iiiii.exit.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

_ZL17stbi__malloc_mad4iiiii.exit.i:               ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %bb.m
  %i.an = shl i32 %i.ai, 2
  %i.ao = mul i32 %i.an, %i.ae
  %i.ap = sext i32 %i.ao to i64
  %i.aq = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.ap) #34 ; 8 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %bb.n

_ZL17stbi__malloc_mad4iiiii.exit.thread.i:        ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.k
  tail call void @free(ptr noundef nonnull %i.aa) #33
  store ptr @.str.27, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

bb.n:                                             ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i
  %i.as = and i32 %i.ae, 1
  %.not.i32 = icmp eq i32 %i.as, 0                ; 2 uses
  %i.at = sext i1 %.not.i32 to i32
  %.040.i = add i32 %i.ae, %i.at                  ; 5 uses
  %i.au = icmp sgt i32 %i.ai, 0
  br i1 %i.au, label %.preheader48.lr.ph.i, label %.loopexit.i

.preheader48.lr.ph.i:                             ; preds = %bb.n
  %i.av = icmp sgt i32 %.040.i, 0
  %i.aw = load float, ptr @_ZL15stbi__l2h_gamma, align 4 ; 3 uses
  %i.ax = load float, ptr @_ZL15stbi__l2h_scale, align 4 ; 3 uses
  br i1 %i.av, label %.preheader48.preheader.i, label %._crit_edge51.split.i

.preheader48.preheader.i:                         ; preds = %.preheader48.lr.ph.i
  %i.ay = sext i32 %i.ae to i64
  %wide.trip.count57.i = zext nneg i32 %i.ai to i64
  %wide.trip.count.i = zext nneg i32 %.040.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.az = icmp eq i32 %.040.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod42 = trunc i32 %.040.i to i1
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %._crit_edge.i, %.preheader48.preheader.i
  %indvars.iv54.i = phi i64 [ 0, %.preheader48.preheader.i ], [ %indvars.iv.next55.i, %._crit_edge.i ] ; 2 uses
  %i.ba = mul nsw i64 %indvars.iv54.i, %i.ay      ; 3 uses
  br i1 %i.az, label %.epil.preheader, label %.preheader48.i.new

.preheader48.i.new:                               ; preds = %.preheader48.i, %.preheader48.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader48.i.new ], [ 0, %.preheader48.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader48.i.new ], [ 0, %.preheader48.i ]
  %i.bb = add nsw i64 %indvars.iv.i, %i.ba        ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.aa, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !23
  %i.be = uitofp i8 %i.bd to float
  %i.bf = fdiv float %i.be, 2.550000e+02
  %i.bg = tail call noundef float @powf(float noundef %i.bf, float noundef %i.aw) #33
  %i.bh = fmul float %i.ax, %i.bg
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bb
  store float %i.bh, ptr %i.bi, align 4, !tbaa !58
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.bj = add nsw i64 %indvars.iv.next.i, %i.ba   ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.aa, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !23
  %i.bm = uitofp i8 %i.bl to float
  %i.bn = fdiv float %i.bm, 2.550000e+02
  %i.bo = tail call noundef float @powf(float noundef %i.bn, float noundef %i.aw) #33
  %i.bp = fmul float %i.ax, %i.bo
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bj
  store float %i.bp, ptr %i.bq, align 4, !tbaa !58
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader48.i.new, !llvm.loop !60

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader48.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader48.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader48.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.br = add nsw i64 %indvars.iv.i.epil.init, %i.ba ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.aa, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !23
  %i.bu = uitofp i8 %i.bt to float
  %i.bv = fdiv float %i.bu, 2.550000e+02
  %i.bw = tail call noundef float @powf(float noundef %i.bv, float noundef %i.aw) #33
  %i.bx = fmul float %i.ax, %i.bw
  %i.by = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.br
  store float %i.bx, ptr %i.by, align 4, !tbaa !58
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, %wide.trip.count57.i
  br i1 %exitcond58.not.i, label %._crit_edge51.split.i, label %.preheader48.i, !llvm.loop !61

._crit_edge51.split.i:                            ; preds = %._crit_edge.i, %.preheader48.lr.ph.i
  br i1 %.not.i32, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge51.split.i
  %i.bz = sext i32 %i.ae to i64                   ; 3 uses
  %i.ca = sext i32 %.040.i to i64                 ; 3 uses
  %wide.trip.count62.i = zext nneg i32 %i.ai to i64 ; 2 uses
  %xtraiter43 = and i64 %wide.trip.count62.i, 1
  %i.cb = icmp eq i32 %i.ai, 1
  br i1 %i.cb, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter46 = and i64 %wide.trip.count62.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next60.i.1, %.lr.ph.i ] ; 3 uses
  %niter47 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter47.next.1, %.lr.ph.i ]
  %i.cc = mul nsw i64 %indvars.iv59.i, %i.bz
  %i.cd = add nsw i64 %i.cc, %i.ca                ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.aa, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !23
  %i.cg = uitofp i8 %i.cf to float
  %i.ch = fdiv float %i.cg, 2.550000e+02
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.cd
  store float %i.ch, ptr %i.ci, align 4, !tbaa !58
  %indvars.iv.next60.i = or disjoint i64 %indvars.iv59.i, 1
  %i.cj = mul nsw i64 %indvars.iv.next60.i, %i.bz
  %i.ck = add nsw i64 %i.cj, %i.ca                ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.aa, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !23
  %i.cn = uitofp i8 %i.cm to float
  %i.co = fdiv float %i.cn, 2.550000e+02
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ck
  store float %i.co, ptr %i.cp, align 4, !tbaa !58
  %indvars.iv.next60.i.1 = add nuw nsw i64 %indvars.iv59.i, 2 ; 2 uses
  %niter47.next.1 = add i64 %niter47, 2           ; 2 uses
  %niter47.ncmp.1 = icmp eq i64 %niter47.next.1, %unroll_iter46
  br i1 %niter47.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !62

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next60.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod45 = trunc i32 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.cq = mul nsw i64 %indvars.iv59.i.epil.init, %i.bz
  %i.cr = add nsw i64 %i.cq, %i.ca                ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.aa, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !23
  %i.cu = uitofp i8 %i.ct to float
  %i.cv = fdiv float %i.cu, 2.550000e+02
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.cr
  store float %i.cv, ptr %i.cw, align 4, !tbaa !58
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %._crit_edge51.split.i, %bb.n
  tail call void @free(ptr noundef nonnull %i.aa) #33
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

bb.o:                                             ; preds = %bb.h
  store ptr @.str.6, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

_ZL23stbi__float_postprocessPfPiS0_S0_i.exit:     ; preds = %.loopexit.i, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, %bb.b, %bb.c, %_ZL19stbi__vertical_flipPviii.exit.i, %bb.o
  %.0 = phi ptr [ null, %bb.o ], [ null, %bb.b ], [ %i.c, %_ZL19stbi__vertical_flipPviii.exit.i ], [ %i.c, %bb.c ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i ], [ %i.aq, %.loopexit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_loadf_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !13
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.e, ptr %i.f, align 8, !tbaa !20
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.h = call noundef i32 %i.g(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 128), !inline_history !45 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.e, align 8, !tbaa !23
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 %i.k
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.j, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 184
  store ptr %i.e, ptr %i.m, align 8, !tbaa !24
end_hunk_0
begin_hunk_1_@_ZL14stbi__pnm_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
  store ptr %i.ak, ptr %i.x, align 8, !tbaa !24
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

.thread.i:                                        ; preds = %bb.i, %..thread_crit_edge.i
  %i.al = phi ptr [ %.pre35.i, %..thread_crit_edge.i ], [ %i.w, %bb.i ]
  %i.am = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %i.y, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.r ; 2 uses
  %.not32.i = icmp ugt ptr %i.an, %i.al
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %bb.k

bb.k:                                             ; preds = %.thread.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.am, i64 %i.r, i1 false)
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !24
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %bb.j, %.thread.i, %bb.k
  %.not43 = icmp eq i32 %4, 0
  br i1 %.not43, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit
  %i.ap = load i32, ptr %i.b, align 8, !tbaa !98  ; 2 uses
  %.not44 = icmp eq i32 %4, %i.ap
  br i1 %.not44, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load i32, ptr %0, align 8, !tbaa !96
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !97
  %i.as = tail call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef nonnull %i.s, i32 noundef %i.ap, i32 noundef %4, i32 noundef %i.aq, i32 noundef %i.ar)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZL10stbi__getnP13stbi__contextPhi.exit, %bb.l, %bb.a, %_ZL17stbi__malloc_mad3iiii.exit.thread, %bb.g
  %.034 = phi ptr [ null, %bb.a ], [ %i.as, %bb.m ], [ null, %_ZL17stbi__malloc_mad3iiii.exit.thread ], [ null, %bb.g ], [ %i.s, %bb.l ], [ %i.s, %_ZL10stbi__getnP13stbi__contextPhi.exit ]
  ret ptr %.034
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 17 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 8 uses
  %i.d = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.e = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.f = load i64, ptr %i.a, align 16
  %i.g = xor i64 %i.f, 5638868765947084579
  %i.h = getelementptr i8, ptr %i.a, i64 3
  %i.i = load i64, ptr %i.h, align 1
  %i.j = xor i64 %i.i, 19495776774865985
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.a, align 16
  %i.o = xor i32 %i.n, 1196572451
  %i.p = getelementptr i8, ptr %i.a, i64 3
  %i.q = load i32, ptr %i.p, align 1
  %i.r = xor i32 %i.q, 4538951
  %i.s = or i32 %i.o, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not135 = icmp eq i32 %i.u, 0
  br i1 %.not135, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.87, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.v = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.w = load i8, ptr %i.a, align 16, !tbaa !23
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.011437 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.d ]
  %i.y = load i128, ptr %i.a, align 16
  %i.z = xor i128 %i.y, 144150481438637697380701673535474650950
  %i.aa = getelementptr i8, ptr %i.a, i64 7
  %i.ab = load i128, ptr %i.aa, align 1
  %i.ac = xor i128 %i.ab, 526417854750532455411190335003243059
  %i.ad = or i128 %i.z, %i.ac
  %i.ae = icmp ne i128 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  %spec.select = select i1 %i.ag, i32 1, i32 %.011437 ; 2 uses
  %i.ah = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.ai = load i8, ptr %i.a, align 16, !tbaa !23
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %._crit_edge, label %.lr.ph, !llvm.loop !374

._crit_edge:                                      ; preds = %.lr.ph
  %i.ak = icmp eq i32 %spec.select, 0
  br i1 %i.ak, label %._crit_edge.thread, label %bb.e

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  store ptr @.str.89, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.e:                                             ; preds = %._crit_edge
  %i.al = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.am = load i16, ptr %i.a, align 16
  %i.an = xor i16 %i.am, 22829
  %i.ao = getelementptr i8, ptr %i.a, i64 2
  %i.ap = load i8, ptr %i.ao, align 2
  %i.aq = zext i8 %i.ap to i16
  %i.ar = xor i16 %i.aq, 32
  %i.as = or i16 %i.an, %i.ar
  %i.at = icmp ne i16 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %.not137 = icmp eq i32 %i.au, 0
  br i1 %.not137, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr @.str.91, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store ptr %i.av, ptr %i.b, align 8, !tbaa !9
  %i.aw = call i64 @__isoc23_strtol(ptr noundef nonnull %i.av, ptr noundef nonnull %i.b, i32 noundef 10) #33 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32                  ; 8 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !9 ; 3 uses
  %i.ay = load i8, ptr %.promoted, align 1, !tbaa !23 ; 2 uses
  %i.az = icmp eq i8 %i.ay, 32
  br i1 %i.az, label %.lr.ph39, label %sub_0

.lr.ph39:                                         ; preds = %bb.g, %.lr.ph39
  %i.ba = phi ptr [ %i.bb, %.lr.ph39 ], [ %.promoted, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 4 uses
  store ptr %i.bb, ptr %i.b, align 8, !tbaa !9
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !23  ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 32
  br i1 %i.bd, label %.lr.ph39, label %sub_0, !llvm.loop !375

sub_0:                                            ; preds = %.lr.ph39, %bb.g
  %i.be = phi i8 [ %i.ay, %bb.g ], [ %i.bc, %.lr.ph39 ]
  %.lcssa = phi ptr [ %.promoted, %bb.g ], [ %i.bb, %.lr.ph39 ] ; 3 uses
  %.not60 = icmp eq i8 %i.be, 43
  br i1 %.not60, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.bf = getelementptr inbounds nuw i8, ptr %.lcssa, i64 1
  %i.bg = load i8, ptr %i.bf, align 1
  %.not61 = icmp eq i8 %i.bg, 88
  br i1 %.not61, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.bh = getelementptr inbounds nuw i8, ptr %.lcssa, i64 2
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = icmp eq i8 %i.bi, 32
  br i1 %i.bj, label %bb.h, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  store ptr @.str.91, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.h:                                             ; preds = %.tail
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa, i64 3 ; 2 uses
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !9
  %i.bl = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bk, ptr noundef null, i32 noundef 10) #33 ; 4 uses
  %i.bm = trunc i64 %i.bl to i32                  ; 11 uses
  store i32 %i.bm, ptr %1, align 4, !tbaa !12
  store i32 %i.ax, ptr %2, align 4, !tbaa !12
  %.not139 = icmp eq ptr %3, null
  br i1 %.not139, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 3, ptr %3, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bn = icmp eq i32 %4, 0
  %spec.store.select = select i1 %i.bn, i32 3, i32 %4 ; 12 uses
  %i.bo = or i32 %i.bm, %i.ax
  %or.cond.not.i.i = icmp sgt i32 %i.bo, -1
  br i1 %or.cond.not.i.i, label %bb.k, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bp = icmp eq i32 %i.ax, 0                    ; 2 uses
  br i1 %i.bp, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.k
  %i.bq = udiv i32 2147483647, %i.ax
  %.not34.i = icmp slt i32 %i.bq, %i.bm
  br i1 %.not34.i, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.k
  %i.br = mul nsw i32 %i.bm, %i.ax                ; 4 uses
  %i.bs = or i32 %i.br, %spec.store.select
  %or.cond.not.i16.i = icmp sgt i32 %i.bs, -1
  br i1 %or.cond.not.i16.i, label %bb.l, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

bb.l:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i
  %i.bt = udiv i32 2147483647, %spec.store.select
  %.not.i = icmp sle i32 %i.br, %i.bt
  %i.bu = mul nsw i32 %i.br, %spec.store.select
  %or.cond13.not = icmp ult i32 %i.bu, 536870912
  %or.cond181 = select i1 %.not.i, i1 %or.cond13.not, i1 false
  br i1 %or.cond181, label %bb.m, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

_ZL21stbi__mad4sizes_validiiiii.exit.thread:      ; preds = %bb.j, %_ZL21stbi__mul2sizes_validii.exit.thread24.i, %_ZL21stbi__mul2sizes_validii.exit.i, %bb.l
  store ptr @.str.26, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.bp, label %_ZL17stbi__malloc_mad4iiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.m
  %i.bv = udiv i32 2147483647, %i.ax
  %.not34.i.i = icmp slt i32 %i.bv, %i.bm
  br i1 %.not34.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %_ZL17stbi__malloc_mad4iiiii.exit

_ZL17stbi__malloc_mad4iiiii.exit:                 ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.m
  %i.bw = shl i32 %spec.store.select, 2
  %i.bx = mul i32 %i.bw, %i.br
  %i.by = sext i32 %i.bx to i64
  %i.bz = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.by) #34 ; 11 uses
  %.not141 = icmp eq ptr %i.bz, null
  br i1 %.not141, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %bb.n

_ZL17stbi__malloc_mad4iiiii.exit.thread:          ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL17stbi__malloc_mad4iiiii.exit
  store ptr @.str.27, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %._crit_edge58.thread

bb.n:                                             ; preds = %_ZL17stbi__malloc_mad4iiiii.exit
  %i.ca = add i32 %i.bm, -32768
  %or.cond = icmp ult i32 %i.ca, -32760
  br i1 %or.cond, label %bb.o, label %.preheader18

.preheader18:                                     ; preds = %bb.n
  %i.cb = icmp sgt i32 %i.ax, 0
  br i1 %i.cb, label %.lr.ph57, label %._crit_edge58.thread

.lr.ph57:                                         ; preds = %.preheader18
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 17 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 10 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 14 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 28 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 18 uses
  %i.ck = shl i64 %i.bl, 2
  %i.cl = and i64 %i.ck, 4294967292
  %i.cm = icmp slt i32 %spec.store.select, 3
  %i.cn = sext i32 %spec.store.select to i64
  %i.co = and i64 %i.bl, 4294967295
  %wide.trip.count106 = and i64 %i.aw, 2147483647
  %wide.trip.count = and i64 %i.bl, 2147483647
  br label %bb.ag

bb.o:                                             ; preds = %bb.n, %bb.af
  %.0119 = phi i32 [ %i.fd, %bb.af ], [ 0, %bb.n ] ; 2 uses
  %i.cp = icmp slt i32 %.0119, %i.ax
  br i1 %i.cp, label %bb.p, label %._crit_edge58.thread

bb.p:                                             ; preds = %bb.o, %_ZL17stbi__hdr_convertPfPhi.exit
  %.0123 = phi i32 [ %i.fc, %_ZL17stbi__hdr_convertPfPhi.exit ], [ 0, %bb.o ] ; 2 uses
  %.1120 = phi i32 [ %.2121, %_ZL17stbi__hdr_convertPfPhi.exit ], [ %.0119, %bb.o ] ; 2 uses
  %i.cq = icmp slt i32 %.0123, %i.bm
  br i1 %i.cq, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.p, %bb.aw
  %.1124 = phi i32 [ %.0123, %bb.p ], [ 1, %bb.aw ] ; 2 uses
  %.2121 = phi i32 [ %.1120, %bb.p ], [ 0, %bb.aw ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !21 ; 2 uses
  %.not.i147 = icmp eq ptr %i.cs, null
  br i1 %.not.i147, label %..thread_crit_edge.i, label %bb.r

..thread_crit_edge.i:                             ; preds = %bb.q
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre35.i = load ptr, ptr %.phi.trans.insert34.i, align 8, !tbaa !25
  br label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !25 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !24 ; 3 uses
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 2 uses
  %i.da = trunc i64 %i.cz to i32                  ; 2 uses
  %i.db = icmp slt i32 %i.da, 4
  br i1 %i.db, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %sext.i = shl i64 %i.cz, 32
  %i.dc = ashr exact i64 %sext.i, 32              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.c, ptr align 1 %i.cw, i64 %i.dc, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !15
  %i.df = getelementptr inbounds i8, ptr %i.c, i64 %i.dc
  %i.dg = sub nsw i32 4, %i.da
  %i.dh = call noundef i32 %i.cs(ptr noundef %i.de, ptr noundef nonnull %i.df, i32 noundef %i.dg), !inline_history !373 ; 0 uses
  %i.di = load ptr, ptr %i.ct, align 8, !tbaa !25
  store ptr %i.di, ptr %i.cv, align 8, !tbaa !24
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

.thread.i:                                        ; preds = %bb.r, %..thread_crit_edge.i
  %i.dj = phi ptr [ %.pre35.i, %..thread_crit_edge.i ], [ %i.cu, %bb.r ]
  %i.dk = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %i.cw, %bb.r ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4 ; 2 uses
  %.not32.i = icmp ugt ptr %i.dl, %i.dj
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %bb.t

bb.t:                                             ; preds = %.thread.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dn = load i32, ptr %i.dk, align 1
  store i32 %i.dn, ptr %i.c, align 4
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !24
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %bb.s, %.thread.i, %bb.t
  %i.do = mul i32 %spec.store.select, %i.bm
  %i.dp = mul i32 %i.do, %.2121
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.dq
  %i.ds = mul nsw i32 %.1124, %spec.store.select
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.dt ; 9 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !23  ; 2 uses
  %.not.i148 = icmp eq i8 %i.dw, 0
  br i1 %.not.i148, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit
  %i.dx = zext i8 %i.dw to i32
  %i.dy = add nsw i32 %i.dx, -136
  %i.dz = call noundef float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.dy) #33 ; 3 uses
  %i.ea = icmp slt i32 %spec.store.select, 3
  %i.eb = load i8, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  br i1 %i.ea, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ec = zext i8 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !23
  %i.ef = zext i8 %i.ee to i32
  %i.eg = add nuw nsw i32 %i.ef, %i.ec
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.ei = load i8, ptr %i.eh, align 2, !tbaa !23
  %i.ej = zext i8 %i.ei to i32
  %i.ek = add nuw nsw i32 %i.eg, %i.ej
  %i.el = uitofp nneg i32 %i.ek to float
  %i.em = fmul float %i.dz, %i.el
  %i.en = fdiv float %i.em, 3.000000e+00
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.eo = uitofp i8 %i.eb to float
  %i.ep = fmul float %i.dz, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.es = load <2 x i8>, ptr %i.eq, align 1, !tbaa !23
  %i.et = uitofp <2 x i8> %i.es to <2 x float>
  %i.eu = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x float> %i.ev, %i.et
  store <2 x float> %i.ew, ptr %i.er, align 4, !tbaa !58
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink = phi float [ %i.en, %bb.v ], [ %i.ep, %bb.w ]
  store float %.sink, ptr %i.du, align 4, !tbaa !58
  switch i32 %4, label %_ZL17stbi__hdr_convertPfPhi.exit [
    i32 2, label %bb.y
    i32 4, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.ex = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store float 1.000000e+00, ptr %i.ex, align 4, !tbaa !58
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.z:                                             ; preds = %bb.x
  %i.ey = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store float 1.000000e+00, ptr %i.ey, align 4, !tbaa !58
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.aa:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit
  switch i32 %spec.store.select, label %_ZL17stbi__hdr_convertPfPhi.exit [
    i32 4, label %bb.ab
    i32 3, label %bb.ac
    i32 2, label %bb.ad
    i32 1, label %bb.ae
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ez = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store float 1.000000e+00, ptr %i.ez, align 4, !tbaa !58
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fa = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store float 0.000000e+00, ptr %i.fa, align 4, !tbaa !58
end_hunk_1
