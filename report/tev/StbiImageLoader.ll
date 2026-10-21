Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/StbiImageLoader?download=true
inline.NumInlined: 6547
inline.NumDeleted: 2302
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 100
loop-unroll.NumUnrolled: 146
begin_hunk_0_@_ZL19stbi__load_gif_mainP13stbi__contextPPiS1_S1_S1_S1_i:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !101
  call void @free(ptr noundef %i.by) #53
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !102
  call void @free(ptr noundef %i.ca) #53
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !103
  call void @free(ptr noundef %i.cc) #53
  %i.cd = and i32 %6, -5
  %or.cond.not = icmp eq i32 %i.cd, 0
  br i1 %or.cond.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.ce = load i32, ptr %7, align 8, !tbaa !98
  %i.cf = mul nsw i32 %i.ce, %.075.lcssa
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !99
  %i.ci = call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef %.072.lcssa, i32 noundef 4, i32 noundef %6, i32 noundef %i.cf, i32 noundef %i.ch)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge
  %.4 = phi ptr [ %i.ci, %bb.x ], [ %.072.lcssa, %._crit_edge ]
  store i32 %.075.lcssa, ptr %4, align 4, !tbaa !72
  br label %.critedge

.critedge:                                        ; preds = %.thread, %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit, %bb.y, %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit109, %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit105
  %.6 = phi ptr [ %.4, %bb.y ], [ null, %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit105 ], [ null, %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit109 ], [ null, %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit ], [ null, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  br label %bb.aa

bb.z:                                             ; preds = %bb.a
  %i.cj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.48, ptr %i.cj, align 8, !tbaa !71
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge
  %.7 = phi ptr [ %.6, %.critedge ], [ null, %bb.z ]
  ret ptr %.7
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @stbi_loadf_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !82
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !85
  %i.j = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define internal fastcc noalias noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) unnamed_addr #9 {
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
  %i.d = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL33stbi__vertically_flip_on_load_set)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !72
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL35stbi__vertically_flip_on_load_local)
  %i.g = load i32, ptr %i.f, align 4
  %i.h = load i32, ptr @_ZL36stbi__vertically_flip_on_load_global, align 4
  %i.i = select i1 %.not.i, i32 %i.h, i32 %i.g
  %.not9.i = icmp eq i32 %i.i, 0
  br i1 %.not9.i, label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not10.i = icmp eq i32 %4, 0
  br i1 %.not10.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %3, align 4, !tbaa !72
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi i32 [ %i.j, %bb.e ], [ %4, %bb.d ]
  %i.l = load i32, ptr %1, align 4, !tbaa !72
  %i.m = load i32, ptr %2, align 4, !tbaa !72     ; 2 uses
  %i.n = shl i32 %i.k, 2
  %i.o = sext i32 %i.l to i64
  %i.p = sext i32 %i.n to i64
  %i.q = mul nsw i64 %i.p, %i.o                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = ashr i32 %i.m, 1                         ; 2 uses
  %i.s = icmp slt i32 %i.r, 1
  %.not32.i.i = icmp eq i64 %i.q, 0
  %or.cond.i.i = select i1 %i.s, i1 true, i1 %.not32.i.i
  br i1 %or.cond.i.i, label %_ZL19stbi__vertical_flipPviii.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %wide.trip.count.i.i = zext nneg i32 %i.r to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.t = mul i64 %indvars.iv.i.i, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.v = trunc i64 %indvars.iv.i.i to i32
  %i.w = xor i32 %i.v, -1
  %i.x = add i32 %i.m, %i.w
  %i.y = sext i32 %i.x to i64
  %i.z = mul i64 %i.q, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.z
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.02935.i.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.03034.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %i.ad, %bb.g ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.ac, %bb.g ] ; 3 uses
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.02935.i.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i, i64 %i.ab, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i, ptr align 1 %.03034.i.i, i64 %i.ab, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i, ptr nonnull align 16 %i.a, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.03133.i.i, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.03034.i.i, i64 %i.ab
  %i.ae = sub nuw i64 %.02935.i.i, %i.ab          ; 2 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.g, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZL19stbi__vertical_flipPviii.exit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZL19stbi__vertical_flipPviii.exit.i:             ; preds = %._crit_edge.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

bb.h:                                             ; preds = %bb.a
  %i.af = tail call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 9 uses
  %.not28 = icmp eq ptr %i.af, null
  br i1 %.not28, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %1, align 4, !tbaa !72    ; 3 uses
  %i.ah = load i32, ptr %2, align 4, !tbaa !72    ; 4 uses
  %.not29 = icmp eq i32 %4, 0
  br i1 %.not29, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = load i32, ptr %3, align 4, !tbaa !72
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aj = phi i32 [ %i.ai, %bb.j ], [ %4, %bb.i ] ; 8 uses
  %i.ak = or i32 %i.ah, %i.ag
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.ak, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.l, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.al = icmp eq i32 %i.ah, 0
  br i1 %i.al, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %bb.l
  %i.am = udiv i32 2147483647, %i.ah
  %.not37.i.i.i = icmp sgt i32 %i.ag, %i.am
  br i1 %.not37.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.l
  %i.an = mul nuw nsw i32 %i.ah, %i.ag            ; 8 uses
  %i.ao = or i32 %i.aj, %i.an
  %or.cond.not.i16.i.i.i = icmp sgt i32 %i.ao, -1
  br i1 %or.cond.not.i16.i.i.i, label %bb.m, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.m:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i
  %i.ap = icmp eq i32 %i.aj, 0
  br i1 %i.ap, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit18.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.i.i.i:        ; preds = %bb.m
  %i.aq = udiv i32 2147483647, %i.aj
  %.not.i.i.i = icmp sgt i32 %i.an, %i.aq
  br i1 %.not.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %bb.m
  %i.ar = mul nuw nsw i32 %i.aj, %i.an            ; 2 uses
  %.not38.i.i.i = icmp sgt i32 %i.ar, 536870911
  br i1 %.not38.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL17stbi__malloc_mad4iiiii.exit.i

_ZL17stbi__malloc_mad4iiiii.exit.i:               ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i
  %i.as = shl nuw nsw i32 %i.ar, 2
  %i.at = zext nneg i32 %i.as to i64
  %i.au = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.at) #54 ; 8 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %bb.n

_ZL17stbi__malloc_mad4iiiii.exit.thread.i:        ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.k
  tail call void @free(ptr noundef nonnull %i.af) #53
  %i.aw = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.aw, align 8, !tbaa !71
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

bb.n:                                             ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i
  %i.ax = and i32 %i.aj, 1
  %.not.i31 = icmp eq i32 %i.ax, 0                ; 2 uses
  %i.ay = sext i1 %.not.i31 to i32
  %.0.i = add nsw i32 %i.aj, %i.ay                ; 5 uses
  %i.az = icmp sgt i32 %i.an, 0
  br i1 %i.az, label %.preheader48.lr.ph.i, label %.loopexit.i

.preheader48.lr.ph.i:                             ; preds = %bb.n
  %i.ba = icmp sgt i32 %.0.i, 0
  %i.bb = load float, ptr @_ZL15stbi__l2h_gamma, align 4 ; 3 uses
  %i.bc = load float, ptr @_ZL15stbi__l2h_scale, align 4 ; 3 uses
  br i1 %i.ba, label %.preheader48.preheader.i, label %._crit_edge51.split.i

.preheader48.preheader.i:                         ; preds = %.preheader48.lr.ph.i
  %5 = zext nneg i32 %i.aj to i64
  %wide.trip.count58.i = zext nneg i32 %i.an to i64
  %wide.trip.count.i = zext nneg i32 %.0.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bd = icmp eq i32 %.0.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod42 = trunc i32 %.0.i to i1
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %._crit_edge.i, %.preheader48.preheader.i
  %indvars.iv55.i = phi i64 [ 0, %.preheader48.preheader.i ], [ %indvars.iv.next56.i, %._crit_edge.i ] ; 2 uses
  %i.be = mul nuw nsw i64 %indvars.iv55.i, %5     ; 3 uses
  br i1 %i.bd, label %.epil.preheader, label %.preheader48.i.new

.preheader48.i.new:                               ; preds = %.preheader48.i, %.preheader48.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader48.i.new ], [ 0, %.preheader48.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader48.i.new ], [ 0, %.preheader48.i ]
  %i.bf = add nuw nsw i64 %indvars.iv.i, %i.be    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !84
  %i.bi = uitofp i8 %i.bh to float
  %i.bj = fdiv float %i.bi, 2.550000e+02
  %i.bk = tail call noundef float @powf(float noundef %i.bj, float noundef %i.bb) #53
  %i.bl = fmul float %i.bc, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bf
  store float %i.bl, ptr %i.bm, align 4, !tbaa !68
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.bn = add nuw nsw i64 %indvars.iv.next.i, %i.be ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !84
  %i.bq = uitofp i8 %i.bp to float
  %i.br = fdiv float %i.bq, 2.550000e+02
  %i.bs = tail call noundef float @powf(float noundef %i.br, float noundef %i.bb) #53
  %i.bt = fmul float %i.bc, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bn
  store float %i.bt, ptr %i.bu, align 4, !tbaa !68
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader48.i.new, !llvm.loop !576

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader48.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader48.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader48.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.bv = add nuw nsw i64 %indvars.iv.i.epil.init, %i.be ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !84
  %i.by = uitofp i8 %i.bx to float
  %i.bz = fdiv float %i.by, 2.550000e+02
  %i.ca = tail call noundef float @powf(float noundef %i.bz, float noundef %i.bb) #53
  %i.cb = fmul float %i.bc, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bv
  store float %i.cb, ptr %i.cc, align 4, !tbaa !68
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %._crit_edge51.split.i, label %.preheader48.i, !llvm.loop !577

._crit_edge51.split.i:                            ; preds = %._crit_edge.i, %.preheader48.lr.ph.i
  br i1 %.not.i31, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge51.split.i
  %6 = zext nneg i32 %i.aj to i64                 ; 3 uses
  %i.cd = sext i32 %.0.i to i64                   ; 3 uses
  %wide.trip.count63.i = zext nneg i32 %i.an to i64 ; 2 uses
  %xtraiter43 = and i64 %wide.trip.count63.i, 1
  %i.ce = icmp eq i32 %i.an, 1
  br i1 %i.ce, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter46 = and i64 %wide.trip.count63.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next61.i.1, %.lr.ph.i ] ; 3 uses
  %niter47 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter47.next.1, %.lr.ph.i ]
  %i.cf = mul nuw nsw i64 %indvars.iv60.i, %6
  %i.cg = add nsw i64 %i.cf, %i.cd                ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.af, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !84
  %i.cj = uitofp i8 %i.ci to float
  %i.ck = fdiv float %i.cj, 2.550000e+02
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cg
  store float %i.ck, ptr %i.cl, align 4, !tbaa !68
  %indvars.iv.next61.i = or disjoint i64 %indvars.iv60.i, 1
  %i.cm = mul nuw nsw i64 %indvars.iv.next61.i, %6
  %i.cn = add nsw i64 %i.cm, %i.cd                ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.af, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !84
  %i.cq = uitofp i8 %i.cp to float
  %i.cr = fdiv float %i.cq, 2.550000e+02
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cn
  store float %i.cr, ptr %i.cs, align 4, !tbaa !68
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %niter47.next.1 = add i64 %niter47, 2           ; 2 uses
  %niter47.ncmp.1 = icmp eq i64 %niter47.next.1, %unroll_iter46
  br i1 %niter47.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !578

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv60.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next61.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod45 = trunc i32 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.ct = mul nuw nsw i64 %indvars.iv60.i.epil.init, %6
  %i.cu = add nsw i64 %i.ct, %i.cd                ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.af, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !84
  %i.cx = uitofp i8 %i.cw to float
  %i.cy = fdiv float %i.cx, 2.550000e+02
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cu
  store float %i.cy, ptr %i.cz, align 4, !tbaa !68
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %._crit_edge51.split.i, %bb.n
  tail call void @free(ptr noundef nonnull %i.af) #53
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

bb.o:                                             ; preds = %bb.h
  %i.da = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.da, align 8, !tbaa !71
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

_ZL23stbi__float_postprocessPfPiS0_S0_i.exit:     ; preds = %.loopexit.i, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, %bb.b, %bb.c, %_ZL19stbi__vertical_flipPviii.exit.i, %bb.o
  %.0 = phi ptr [ null, %bb.o ], [ null, %bb.b ], [ %i.c, %_ZL19stbi__vertical_flipPviii.exit.i ], [ %i.c, %bb.c ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i ], [ %i.au, %.loopexit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @stbi_loadf_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !74
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !82
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !3 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !80
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !80
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !79
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !84
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !86
  %i.y = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @stbi_loadf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #9 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.4, ptr %i.b, align 8, !tbaa !71
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !74
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.d, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.e, align 4, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.f, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !82
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.l = call noundef i32 %i.k(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef 128), !inline_history !579 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !82
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i32, ptr %i.g, align 8, !tbaa !80
  %i.t = add nsw i32 %i.s, %i.r
  store i32 %i.t, ptr %i.g, align 8, !tbaa !80
  %i.u = icmp eq i32 %i.l, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !79
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.h, align 8, !tbaa !84
  br label %stbi_loadf_from_file.exit

bb.e:                                             ; preds = %bb.c
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds i8, ptr %i.h, i64 %i.w
  br label %stbi_loadf_from_file.exit

stbi_loadf_from_file.exit:                        ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8, !tbaa !85
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.z, align 8, !tbaa !86
  %i.aa = call fastcc noalias noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  %i.ab = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %stbi_loadf_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.aa, %stbi_loadf_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @stbi_loadf_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #9 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
end_hunk_0
begin_hunk_1_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  %i.jo = load <2 x ptr>, ptr %i.k, align 8, !tbaa !71
  store <2 x ptr> %i.jo, ptr %i.d, align 8, !tbaa !71
  br i1 %.not, label %bb.bw, label %bb.hb

bb.bw:                                            ; preds = %_ZL14stbi__bmp_testP13stbi__context.exit.thread128, %_ZL14stbi__bmp_testP13stbi__context.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #53
  %i.jp = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  store i32 255, ptr %i.jp, align 4, !tbaa !121
  %i.jq = call fastcc noundef ptr @_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data(ptr noundef nonnull %0, ptr noundef %8)
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 10 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !116 ; 2 uses
  %i.ju = icmp sgt i32 %i.jt, 0
  %i.jv = tail call i32 @llvm.abs.i32(i32 %i.jt, i1 true) ; 2 uses
  store i32 %i.jv, ptr %i.js, align 4, !tbaa !116
  %i.jw = icmp samesign ugt i32 %i.jv, 16777216
  br i1 %i.jw, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store ptr @.str.14, ptr %i.hd, align 8, !tbaa !71
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.bz:                                            ; preds = %bb.bx
  %i.jx = load i32, ptr %0, align 8, !tbaa !115
  %i.jy = icmp ugt i32 %i.jx, 16777216
  br i1 %i.jy, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store ptr @.str.14, ptr %i.hd, align 8, !tbaa !71
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.cb:                                            ; preds = %bb.bz
  %i.jz = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !281 ; 5 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !282 ; 5 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !283 ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !284 ; 7 uses
  %i.kh = load i32, ptr %i.jp, align 4, !tbaa !121 ; 6 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !285 ; 4 uses
  %i.kk = icmp eq i32 %i.kj, 12                   ; 3 uses
  %i.kl = load i32, ptr %8, align 4, !tbaa !122   ; 4 uses
  br i1 %i.kk, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.km = icmp slt i32 %i.kl, 24
  br i1 %i.km, label %bb.cd, label %.thread.i

bb.cd:                                            ; preds = %bb.cc
  %i.kn = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !286 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !287
  %i.kr = add i32 %i.ko, -24
  %i.ks = sub i32 %i.kr, %i.kq
  %i.kt = sdiv i32 %i.ks, 3
  br label %bb.cg

bb.ce:                                            ; preds = %bb.cb
  %i.ku = icmp slt i32 %i.kl, 16
  br i1 %i.ku, label %bb.cf, label %.thread.i

bb.cf:                                            ; preds = %bb.ce
  %i.kv = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !286 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !287
  %i.kz = add i32 %i.kj, %i.ky
  %i.la = sub i32 %i.kw, %i.kz
  %i.lb = ashr i32 %i.la, 2
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cd
  %i.lc = phi i32 [ %i.ko, %bb.cd ], [ %i.kw, %bb.cf ]
  %.0332.i = phi i32 [ %i.kt, %bb.cd ], [ %i.lb, %bb.cf ] ; 2 uses
  %i.ld = icmp eq i32 %.0332.i, 0
  br i1 %i.ld, label %.thread.i, label %.thread238.i

.thread238.i:                                     ; preds = %bb.cg
  %i.le = icmp eq i32 %i.kg, -16777216
  br label %bb.cm

.thread.i:                                        ; preds = %bb.cg, %bb.ce, %bb.cc
  %i.lf = load i32, ptr %i.l, align 8, !tbaa !80
  %i.lg = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.lh = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = sub i64 %i.li, %i.lj
  %i.ll = trunc i64 %i.lk to i32
  %i.lm = add nsw i32 %i.lf, %i.ll                ; 3 uses
  %i.ln = add i32 %i.lm, -1025
  %or.cond378.i = icmp ult i32 %i.ln, -1024
  br i1 %or.cond378.i, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.thread.i
  store ptr @.str.35, ptr %i.hd, align 8, !tbaa !71
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.ci:                                            ; preds = %.thread.i
  %i.lo = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !286 ; 4 uses
  %i.lq = icmp slt i32 %i.lp, %i.lm
  br i1 %i.lq, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lr = sub nsw i32 %i.lp, %i.lm                ; 2 uses
  %i.ls = icmp sgt i32 %i.lr, 1024
  br i1 %i.ls, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  store ptr @.str.36, ptr %i.hd, align 8, !tbaa !71
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.cl:                                            ; preds = %bb.cj
  tail call fastcc void @_ZL10stbi__skipP13stbi__contexti(ptr noundef nonnull %0, i32 noundef %i.lr)
  %i.lt = icmp eq i32 %i.kl, 24
  %i.lu = icmp eq i32 %i.kg, -16777216            ; 2 uses
  %or.cond.i = select i1 %i.lt, i1 %i.lu, i1 false
  br i1 %or.cond.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.thread238.i
  %i.lv = phi i1 [ %i.le, %.thread238.i ], [ %i.lu, %bb.cl ]
  %.03322242.i = phi i32 [ %.0332.i, %.thread238.i ], [ 0, %bb.cl ]
  %i.lw = phi i1 [ false, %.thread238.i ], [ true, %bb.cl ]
  %i.lx = phi i32 [ %i.lc, %.thread238.i ], [ %i.lp, %bb.cl ]
  %.not.i = icmp eq i32 %i.kg, 0
  %i.ly = select i1 %.not.i, i32 3, i32 4
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.lz = phi i1 [ %i.lv, %bb.cm ], [ true, %bb.cl ]
  %.03322241.i = phi i32 [ %.03322242.i, %bb.cm ], [ 0, %bb.cl ] ; 4 uses
  %i.ma = phi i1 [ %i.lw, %bb.cm ], [ true, %bb.cl ]
  %i.mb = phi i32 [ %i.kl, %bb.cm ], [ 24, %bb.cl ] ; 6 uses
  %i.mc = phi i32 [ %i.lx, %bb.cm ], [ %i.lp, %bb.cl ] ; 3 uses
  %i.md = phi i32 [ %i.ly, %bb.cm ], [ 3, %bb.cl ] ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.md, ptr %i.me, align 8, !tbaa !117
  %.not367.i = icmp eq i32 %4, 0
  %i.mf = icmp sgt i32 %4, 2
  %spec.select.i = select i1 %i.mf, i32 %4, i32 %i.md ; 11 uses
  %i.mg = load i32, ptr %0, align 8, !tbaa !115   ; 5 uses
  %i.mh = load i32, ptr %i.js, align 4, !tbaa !116 ; 5 uses
  %or.cond.not.i.i.i = icmp sgt i32 %i.mg, -1
  br i1 %or.cond.not.i.i.i, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.mi = icmp eq i32 %i.mg, 0                    ; 2 uses
  br i1 %i.mi, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.co
  %i.mj = udiv i32 2147483647, %i.mg
  %.not23.i.i = icmp samesign ugt i32 %spec.select.i, %i.mj
  br i1 %.not23.i.i, label %bb.cq, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.co
  %i.mk = mul nuw nsw i32 %i.mg, %spec.select.i   ; 4 uses
  %i.ml = or i32 %i.mh, %i.mk
  %or.cond.not.i10.i.i = icmp sgt i32 %i.ml, -1
  br i1 %or.cond.not.i10.i.i, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.mm = icmp eq i32 %i.mh, 0                    ; 2 uses
  br i1 %i.mm, label %_ZL21stbi__mad3sizes_validiiii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.cp
  %i.mn = udiv i32 2147483647, %i.mh
  %.not.i.i94 = icmp samesign ugt i32 %i.mk, %i.mn
  br i1 %.not.i.i94, label %bb.cq, label %_ZL21stbi__mad3sizes_validiiii.exit.i

bb.cq:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.cn
  store ptr @.str.14, ptr %i.hd, align 8, !tbaa !71
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

_ZL21stbi__mad3sizes_validiiii.exit.i:            ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i, %bb.cp
  br i1 %i.mi, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %_ZL21stbi__mad3sizes_validiiii.exit.i
  %i.mo = udiv i32 2147483647, %i.mg
  %.not23.i.i.i = icmp samesign ugt i32 %spec.select.i, %i.mo
  br i1 %.not23.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %_ZL21stbi__mad3sizes_validiiii.exit.i
  br i1 %i.mm, label %_ZL17stbi__malloc_mad3iiii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i.i:        ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i
  %i.mp = udiv i32 2147483647, %i.mh
  %.not.i.i.i95 = icmp samesign ugt i32 %i.mk, %i.mp
  br i1 %.not.i.i.i95, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL17stbi__malloc_mad3iiii.exit.i

_ZL17stbi__malloc_mad3iiii.exit.i:                ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i
  %i.mq = mul nuw nsw i32 %i.mk, %i.mh
  %10 = zext nneg i32 %i.mq to i64
  %i.mr = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %10) #54 ; 30 uses
  %.not369.i = icmp eq ptr %i.mr, null
  br i1 %.not369.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %bb.cr

_ZL17stbi__malloc_mad3iiii.exit.thread.i:         ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i
  store ptr @.str.29, ptr %i.hd, align 8, !tbaa !71
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.cr:                                            ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i
  %i.ms = icmp slt i32 %i.mb, 16
  br i1 %i.ms, label %bb.cs, label %bb.fg

bb.cs:                                            ; preds = %bb.cr
  %i.mt = icmp sgt i32 %.03322241.i, 256
  %or.cond7.i = or i1 %i.ma, %i.mt
  br i1 %or.cond7.i, label %bb.ct, label %.preheader44.i

.preheader44.i:                                   ; preds = %bb.cs
  %i.mu = icmp sgt i32 %.03322241.i, 0
  br i1 %i.mu, label %.lr.ph66.i, label %._crit_edge.i97

.lr.ph66.i:                                       ; preds = %.preheader44.i
  %wide.trip.count.i = zext nneg i32 %.03322241.i to i64
  %.pre115.i = load ptr, ptr %i.d, align 8, !tbaa !82 ; 2 uses
  %.pre116.i = load ptr, ptr %i.e, align 8, !tbaa !85 ; 2 uses
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  tail call void @free(ptr noundef nonnull %i.mr) #53
  store ptr @.str.37, ptr %i.hd, align 8, !tbaa !71
  br label %_ZL14stbi__bmp_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.cu:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit402.i, %.lr.ph66.i
  %i.mv = phi ptr [ %.pre116.i, %.lr.ph66.i ], [ %i.qo, %_ZL10stbi__get8P13stbi__context.exit402.i ] ; 2 uses
  %i.mw = phi ptr [ %.pre115.i, %.lr.ph66.i ], [ %i.qp, %_ZL10stbi__get8P13stbi__context.exit402.i ]
  %i.mx = phi ptr [ %.pre116.i, %.lr.ph66.i ], [ %i.qq, %_ZL10stbi__get8P13stbi__context.exit402.i ] ; 3 uses
  %i.my = phi ptr [ %.pre115.i, %.lr.ph66.i ], [ %i.qr, %_ZL10stbi__get8P13stbi__context.exit402.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph66.i ], [ %indvars.iv.next.i, %_ZL10stbi__get8P13stbi__context.exit402.i ] ; 2 uses
  %i.mz = icmp ult ptr %i.my, %i.mx
  br i1 %i.mz, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 1 ; 3 uses
  store ptr %i.na, ptr %i.d, align 8, !tbaa !82
  %i.nb = load i8, ptr %i.my, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit.i

bb.cw:                                            ; preds = %bb.cu
  %i.nc = load i32, ptr %i.f, align 8, !tbaa !79
  %.not.i383.i = icmp eq i32 %i.nc, 0
  br i1 %.not.i383.i, label %_ZL10stbi__get8P13stbi__context.exit.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nd = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.ne = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.nf = load i32, ptr %i.j, align 4, !tbaa !78
  %i.ng = tail call noundef i32 %i.nd(ptr noundef %i.ne, ptr noundef nonnull %i.i, i32 noundef %i.nf), !inline_history !691 ; 2 uses
  %i.nh = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.ni = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.nj = ptrtoint ptr %i.nh to i64
  %i.nk = ptrtoint ptr %i.ni to i64
  %i.nl = sub i64 %i.nj, %i.nk
  %i.nm = trunc i64 %i.nl to i32
  %i.nn = load i32, ptr %i.l, align 8, !tbaa !80
  %i.no = add nsw i32 %i.nn, %i.nm
  store i32 %i.no, ptr %i.l, align 8, !tbaa !80
  %i.np = icmp eq i32 %i.ng, 0
  br i1 %i.np, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %i.f, align 8, !tbaa !79
  store i8 0, ptr %i.i, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.nq = sext i32 %i.ng to i64
  %i.nr = getelementptr inbounds i8, ptr %i.i, i64 %i.nq
  %.pre.i.i98 = load i8, ptr %i.i, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i: ; preds = %bb.cz, %bb.cy
  %i.ns = phi i8 [ 0, %bb.cy ], [ %.pre.i.i98, %bb.cz ]
  %.sink.i.i.i = phi ptr [ %i.m, %bb.cy ], [ %i.nr, %bb.cz ] ; 3 uses
  store ptr %.sink.i.i.i, ptr %i.e, align 8, !tbaa !85
  store ptr %i.m, ptr %i.d, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit.i

_ZL10stbi__get8P13stbi__context.exit.i:           ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i, %bb.cw, %bb.cv
  %i.nt = phi ptr [ %i.mv, %bb.cv ], [ %.sink.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.mv, %bb.cw ] ; 2 uses
  %i.nu = phi ptr [ %i.na, %bb.cv ], [ %i.m, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.mw, %bb.cw ]
  %i.nv = phi ptr [ %i.mx, %bb.cv ], [ %.sink.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.mx, %bb.cw ] ; 3 uses
  %i.nw = phi ptr [ %i.na, %bb.cv ], [ %i.m, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.my, %bb.cw ] ; 4 uses
  %.0.i384.i = phi i8 [ %i.nb, %bb.cv ], [ %i.ns, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ 0, %bb.cw ]
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 2
  store i8 %.0.i384.i, ptr %i.ny, align 2, !tbaa !84
  %i.nz = icmp ult ptr %i.nw, %i.nv
  br i1 %i.nz, label %bb.da, label %bb.db

bb.da:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 1 ; 3 uses
  store ptr %i.oa, ptr %i.d, align 8, !tbaa !82
  %i.ob = load i8, ptr %i.nw, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit390.i

bb.db:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %i.oc = load i32, ptr %i.f, align 8, !tbaa !79
  %.not.i385.i = icmp eq i32 %i.oc, 0
  br i1 %.not.i385.i, label %_ZL10stbi__get8P13stbi__context.exit390.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.od = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.oe = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.of = load i32, ptr %i.j, align 4, !tbaa !78
  %i.og = tail call noundef i32 %i.od(ptr noundef %i.oe, ptr noundef nonnull %i.i, i32 noundef %i.of), !inline_history !691 ; 2 uses
  %i.oh = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.oi = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = trunc i64 %i.ol to i32
  %i.on = load i32, ptr %i.l, align 8, !tbaa !80
  %i.oo = add nsw i32 %i.on, %i.om
  store i32 %i.oo, ptr %i.l, align 8, !tbaa !80
  %i.op = icmp eq i32 %i.og, 0
  br i1 %i.op, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store i32 0, ptr %i.f, align 8, !tbaa !79
  store i8 0, ptr %i.i, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i

bb.de:                                            ; preds = %bb.dc
  %i.oq = sext i32 %i.og to i64
  %i.or = getelementptr inbounds i8, ptr %i.i, i64 %i.oq
  %.pre.i386.i = load i8, ptr %i.i, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i: ; preds = %bb.de, %bb.dd
  %i.os = phi i8 [ 0, %bb.dd ], [ %.pre.i386.i, %bb.de ]
  %.sink.i.i388.i = phi ptr [ %i.m, %bb.dd ], [ %i.or, %bb.de ] ; 3 uses
  store ptr %.sink.i.i388.i, ptr %i.e, align 8, !tbaa !85
  store ptr %i.m, ptr %i.d, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit390.i

_ZL10stbi__get8P13stbi__context.exit390.i:        ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i, %bb.db, %bb.da
  %i.ot = phi ptr [ %i.nt, %bb.da ], [ %.sink.i.i388.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i ], [ %i.nt, %bb.db ] ; 2 uses
  %i.ou = phi ptr [ %i.oa, %bb.da ], [ %i.m, %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i ], [ %i.nu, %bb.db ]
  %i.ov = phi ptr [ %i.nv, %bb.da ], [ %.sink.i.i388.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i ], [ %i.nv, %bb.db ] ; 3 uses
  %i.ow = phi ptr [ %i.oa, %bb.da ], [ %i.m, %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i ], [ %i.nw, %bb.db ] ; 4 uses
  %.0.i389.i = phi i8 [ %i.ob, %bb.da ], [ %i.os, %_ZL19stbi__refill_bufferP13stbi__context.exit.i387.i ], [ 0, %bb.db ]
  %i.ox = getelementptr inbounds nuw i8, ptr %i.nx, i64 1
  store i8 %.0.i389.i, ptr %i.ox, align 1, !tbaa !84
  %i.oy = icmp ult ptr %i.ow, %i.ov
  br i1 %i.oy, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit390.i
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 1 ; 3 uses
  store ptr %i.oz, ptr %i.d, align 8, !tbaa !82
  %i.pa = load i8, ptr %i.ow, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit396.i

bb.dg:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit390.i
  %i.pb = load i32, ptr %i.f, align 8, !tbaa !79
  %.not.i391.i = icmp eq i32 %i.pb, 0
  br i1 %.not.i391.i, label %_ZL10stbi__get8P13stbi__context.exit396.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.pc = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.pd = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.pe = load i32, ptr %i.j, align 4, !tbaa !78
  %i.pf = tail call noundef i32 %i.pc(ptr noundef %i.pd, ptr noundef nonnull %i.i, i32 noundef %i.pe), !inline_history !691 ; 2 uses
  %i.pg = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.ph = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.pi = ptrtoint ptr %i.pg to i64
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = sub i64 %i.pi, %i.pj
  %i.pl = trunc i64 %i.pk to i32
  %i.pm = load i32, ptr %i.l, align 8, !tbaa !80
  %i.pn = add nsw i32 %i.pm, %i.pl
  store i32 %i.pn, ptr %i.l, align 8, !tbaa !80
  %i.po = icmp eq i32 %i.pf, 0
  br i1 %i.po, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %i.f, align 8, !tbaa !79
  store i8 0, ptr %i.i, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i393.i

bb.dj:                                            ; preds = %bb.dh
  %i.pp = sext i32 %i.pf to i64
  %i.pq = getelementptr inbounds i8, ptr %i.i, i64 %i.pp
  %.pre.i392.i = load i8, ptr %i.i, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i393.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i393.i: ; preds = %bb.dj, %bb.di
  %i.pr = phi i8 [ 0, %bb.di ], [ %.pre.i392.i, %bb.dj ]
  %.sink.i.i394.i = phi ptr [ %i.m, %bb.di ], [ %i.pq, %bb.dj ] ; 3 uses
  store ptr %.sink.i.i394.i, ptr %i.e, align 8, !tbaa !85
  store ptr %i.m, ptr %i.d, align 8, !tbaa !82
end_hunk_1
begin_hunk_2_@_ZL15stbi__jpeg_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a

bb.fy:                                            ; preds = %bb.fx
  call void @free(ptr noundef nonnull %i.alw) #53
  store ptr null, ptr %i.alv, align 8, !tbaa !319
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alr, i64 80
  store ptr null, ptr %i.alx, align 8, !tbaa !316
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alr, i64 72 ; 2 uses
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !320 ; 2 uses
  %.not29.i.i304.i = icmp eq ptr %i.alz, null
  br i1 %.not29.i.i304.i, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @free(ptr noundef nonnull %i.alz) #53
  store ptr null, ptr %i.aly, align 8, !tbaa !320
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %indvars.iv.next.i.i305.i = add nuw nsw i64 %indvars.iv.i.i301.i, 1 ; 2 uses
  %exitcond.not.i.i306.i = icmp eq i64 %indvars.iv.next.i.i305.i, %wide.trip.count.i.i300.i
  br i1 %exitcond.not.i.i306.i, label %_ZL15load_jpeg_imageP10stbi__jpegPiS1_S1_i.exit, label %bb.fv, !llvm.loop !15

bb.gc:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.ama = load i32, ptr %.pre.i, align 8, !tbaa !115 ; 6 uses
  %i.amb = add i32 %i.ama, 3
  %i.amc = zext i32 %i.amb to i64
  %i.amd = getelementptr inbounds nuw i8, ptr %calloc, i64 18056
  %i.ame = add i32 %i.ama, -1
  %wide.trip.count.i = zext nneg i32 %..i to i64  ; 2 uses
  br label %bb.gd

bb.gd:                                            ; preds = %.thread341.i, %bb.gc
  %indvars.iv.i = phi i64 [ 0, %bb.gc ], [ %indvars.iv.next.i, %.thread341.i ] ; 3 uses
  %i.amf = getelementptr inbounds nuw [48 x i8], ptr %5, i64 %indvars.iv.i ; 7 uses
  %i.amg = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.amc) #54 ; 2 uses
  %i.amh = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %indvars.iv.i ; 3 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 72
  store ptr %i.amg, ptr %i.ami, align 8, !tbaa !320
  %.not292.not.i = icmp eq ptr %i.amg, null
  br i1 %.not292.not.i, label %bb.ge, label %bb.gm

bb.ge:                                            ; preds = %bb.gd
  %i.amj = icmp sgt i32 %i.alb, 0
  br i1 %i.amj, label %.lr.ph.i.i308.i, label %.thread342.i

.thread342.i:                                     ; preds = %bb.ge
  %i.amk = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.amk, align 8, !tbaa !71
  br label %bb.ic

.lr.ph.i.i308.i:                                  ; preds = %bb.ge
  %wide.trip.count.i.i309.i = zext nneg i32 %i.alb to i64
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gl, %.lr.ph.i.i308.i
  %indvars.iv.i.i310.i = phi i64 [ 0, %.lr.ph.i.i308.i ], [ %indvars.iv.next.i.i314.i, %bb.gl ] ; 2 uses
  %i.aml = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %indvars.iv.i.i310.i ; 5 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 56
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !318 ; 2 uses
  %.not.i.i311.i = icmp eq ptr %i.amn, null
  br i1 %.not.i.i311.i, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @free(ptr noundef nonnull %i.amn) #53
  %i.amo = getelementptr inbounds nuw i8, ptr %i.aml, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.amo, i8 0, i64 16, i1 false)
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.amp = getelementptr inbounds nuw i8, ptr %i.aml, i64 64 ; 2 uses
  %i.amq = load ptr, ptr %i.amp, align 8, !tbaa !319 ; 2 uses
  %.not28.i.i312.i = icmp eq ptr %i.amq, null
  br i1 %.not28.i.i312.i, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  call void @free(ptr noundef nonnull %i.amq) #53
  store ptr null, ptr %i.amp, align 8, !tbaa !319
  %i.amr = getelementptr inbounds nuw i8, ptr %i.aml, i64 80
  store ptr null, ptr %i.amr, align 8, !tbaa !316
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %i.ams = getelementptr inbounds nuw i8, ptr %i.aml, i64 72 ; 2 uses
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !320 ; 2 uses
  %.not29.i.i313.i = icmp eq ptr %i.amt, null
  br i1 %.not29.i.i313.i, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @free(ptr noundef nonnull %i.amt) #53
  store ptr null, ptr %i.ams, align 8, !tbaa !320
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %indvars.iv.next.i.i314.i = add nuw nsw i64 %indvars.iv.i.i310.i, 1 ; 2 uses
  %exitcond.not.i.i315.i = icmp eq i64 %indvars.iv.next.i.i314.i, %wide.trip.count.i.i309.i
  br i1 %exitcond.not.i.i315.i, label %bb.gq, label %bb.gf, !llvm.loop !15

bb.gm:                                            ; preds = %bb.gd
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amh, i64 4
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amf, i64 24
  %i.amw = load <2 x i32>, ptr %i.amd, align 8, !tbaa !72
  %i.amx = load <2 x i32>, ptr %i.amu, align 4, !tbaa !72
  %i.amy = sdiv <2 x i32> %i.amw, %i.amx          ; 3 uses
  store <2 x i32> %i.amy, ptr %i.amv, align 8, !tbaa !72
  %i.amz = extractelement <2 x i32> %i.amy, i64 1 ; 4 uses
  %i.ana = ashr i32 %i.amz, 1
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amf, i64 36
  store i32 %i.ana, ptr %i.anb, align 4, !tbaa !806
  %i.anc = extractelement <2 x i32> %i.amy, i64 0 ; 3 uses
  %i.and = add i32 %i.ame, %i.anc
  %i.ane = udiv i32 %i.and, %i.anc
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amf, i64 32
  store i32 %i.ane, ptr %i.anf, align 16, !tbaa !807
  %i.ang = getelementptr inbounds nuw i8, ptr %i.amf, i64 40
  store i32 0, ptr %i.ang, align 8, !tbaa !808
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amh, i64 48
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !309 ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.amf, i64 16
  store ptr %i.ani, ptr %i.anj, align 16, !tbaa !809
  %i.ank = getelementptr inbounds nuw i8, ptr %i.amf, i64 8
  store ptr %i.ani, ptr %i.ank, align 8, !tbaa !810
  switch i32 %i.anc, label %.thread340.i [
    i32 1, label %bb.gn
    i32 2, label %bb.go
  ]

bb.gn:                                            ; preds = %bb.gm
  %switch.selectcmp.i = icmp eq i32 %i.amz, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @_ZL22stbi__resample_row_v_2PhS_S_ii, ptr @_ZL26stbi__resample_row_genericPhS_S_ii
  %switch.selectcmp743.i = icmp eq i32 %i.amz, 1
  %switch.select744.i = select i1 %switch.selectcmp743.i, ptr @_ZL14resample_row_1PhS_S_ii, ptr %switch.select.i
  br label %.thread341.i

bb.go:                                            ; preds = %bb.gm
  switch i32 %i.amz, label %.thread340.i [
    i32 1, label %.thread341.i
    i32 2, label %bb.gp
  ]

bb.gp:                                            ; preds = %bb.go
  %i.anl = load ptr, ptr %i.g, align 8, !tbaa !291
  br label %.thread341.i

.thread340.i:                                     ; preds = %bb.go, %bb.gm
  br label %.thread341.i

bb.gq:                                            ; preds = %bb.gl
  %i.anm = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.anm, align 8, !tbaa !71
  br label %bb.ic

.thread341.i:                                     ; preds = %.thread340.i, %bb.gp, %bb.go, %bb.gn
  %_ZL22stbi__resample_row_v_2PhS_S_ii.sink.i = phi ptr [ %switch.select744.i, %bb.gn ], [ %i.anl, %bb.gp ], [ @_ZL26stbi__resample_row_genericPhS_S_ii, %.thread340.i ], [ @_ZL22stbi__resample_row_h_2PhS_S_ii, %bb.go ]
  store ptr %_ZL22stbi__resample_row_v_2PhS_S_ii.sink.i, ptr %i.amf, align 16, !tbaa !811
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.gr, label %bb.gd, !llvm.loop !783

bb.gr:                                            ; preds = %.thread341.i
  %i.ann = getelementptr inbounds nuw i8, ptr %.pre.i, i64 4
  %i.ano = load i32, ptr %i.ann, align 4, !tbaa !116 ; 4 uses
  %i.anp = or i32 %i.ama, %i.ald
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.anp, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.gs, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i

bb.gs:                                            ; preds = %bb.gr
  %i.anq = icmp eq i32 %i.ama, 0
  br i1 %i.anq, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %bb.gs
  %i.anr = udiv i32 2147483647, %i.ama
  %.not23.i.i.i = icmp sgt i32 %i.ald, %i.anr
  br i1 %.not23.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.gs
  %i.ans = mul nuw nsw i32 %i.ama, %i.ald         ; 3 uses
  %i.ant = or i32 %i.ano, %i.ans
  %or.cond.not.i10.i.i.i = icmp sgt i32 %i.ant, -1
  br i1 %or.cond.not.i10.i.i.i, label %bb.gt, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i

bb.gt:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i
  %i.anu = icmp eq i32 %i.ano, 0                  ; 2 uses
  br i1 %i.anu, label %_ZL21stbi__mad3sizes_validiiii.exit.i.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i.i:        ; preds = %bb.gt
  %i.anv = udiv i32 2147483647, %i.ano
  %.not.i.i317.i = icmp sgt i32 %i.ans, %i.anv
  br i1 %.not.i.i317.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL21stbi__mad3sizes_validiiii.exit.i.i

_ZL21stbi__mad3sizes_validiiii.exit.i.i:          ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %bb.gt
  %i.anw = mul nuw nsw i32 %i.ano, %i.ans         ; 2 uses
  %.not9.i.i = icmp eq i32 %i.anw, 2147483647
  br i1 %.not9.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL17stbi__malloc_mad3iiii.exit.i

_ZL17stbi__malloc_mad3iiii.exit.i:                ; preds = %_ZL21stbi__mad3sizes_validiiii.exit.i.i
  %i.anx = add nuw nsw i32 %i.anw, 1
  %6 = zext nneg i32 %i.anx to i64
  %i.any = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %6) #54 ; 4 uses
  %.not286.i = icmp eq ptr %i.any, null
  br i1 %.not286.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %.preheader364.i

.preheader364.i:                                  ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i
  br i1 %i.anu, label %._crit_edge444.i, label %.lr.ph443.i

.lr.ph443.i:                                      ; preds = %.preheader364.i
  %i.anz = getelementptr inbounds nuw i8, ptr %calloc, i64 18508 ; 2 uses
  %i.aoa = icmp eq i32 %i.ald, 1                  ; 2 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.aoc = zext nneg i32 %i.ald to i64            ; 6 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 7 uses
  br label %.lr.ph.preheader.i

_ZL17stbi__malloc_mad3iiii.exit.thread.i:         ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i, %_ZL21stbi__mad3sizes_validiiii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.gr
  %i.aof = icmp sgt i32 %i.alb, 0
  br i1 %i.aof, label %.lr.ph.i.i318.i, label %_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit326.i

.lr.ph.i.i318.i:                                  ; preds = %_ZL17stbi__malloc_mad3iiii.exit.thread.i
  %wide.trip.count.i.i319.i = zext nneg i32 %i.alb to i64
  br label %bb.gu

bb.gu:                                            ; preds = %bb.ha, %.lr.ph.i.i318.i
  %indvars.iv.i.i320.i = phi i64 [ 0, %.lr.ph.i.i318.i ], [ %indvars.iv.next.i.i324.i, %bb.ha ] ; 2 uses
  %i.aog = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %indvars.iv.i.i320.i ; 5 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 56
  %i.aoi = load ptr, ptr %i.aoh, align 8, !tbaa !318 ; 2 uses
  %.not.i.i321.i = icmp eq ptr %i.aoi, null
  br i1 %.not.i.i321.i, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @free(ptr noundef nonnull %i.aoi) #53
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aog, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aoj, i8 0, i64 16, i1 false)
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aog, i64 64 ; 2 uses
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !319 ; 2 uses
  %.not28.i.i322.i = icmp eq ptr %i.aol, null
  br i1 %.not28.i.i322.i, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @free(ptr noundef nonnull %i.aol) #53
  store ptr null, ptr %i.aok, align 8, !tbaa !319
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aog, i64 80
  store ptr null, ptr %i.aom, align 8, !tbaa !316
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aog, i64 72 ; 2 uses
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !320 ; 2 uses
  %.not29.i.i323.i = icmp eq ptr %i.aoo, null
  br i1 %.not29.i.i323.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @free(ptr noundef nonnull %i.aoo) #53
  store ptr null, ptr %i.aon, align 8, !tbaa !320
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %indvars.iv.next.i.i324.i = add nuw nsw i64 %indvars.iv.i.i320.i, 1 ; 2 uses
  %exitcond.not.i.i325.i = icmp eq i64 %indvars.iv.next.i.i324.i, %wide.trip.count.i.i319.i
  br i1 %exitcond.not.i.i325.i, label %_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit326.i, label %bb.gu, !llvm.loop !15

_ZL18stbi__cleanup_jpegP10stbi__jpeg.exit326.i:   ; preds = %bb.ha, %_ZL17stbi__malloc_mad3iiii.exit.thread.i
  %i.aop = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.aop, align 8, !tbaa !71
  br label %bb.ic

.lr.ph.preheader.i:                               ; preds = %.loopexit.i, %.lr.ph443.i
  %i.aoq = phi ptr [ %.pre.i, %.lr.ph443.i ], [ %i.azu, %.loopexit.i ]
  %.0264442.i = phi i32 [ 0, %.lr.ph443.i ], [ %i.azv, %.loopexit.i ] ; 2 uses
  %i.aor = load i32, ptr %i.aoq, align 8, !tbaa !115
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.hd, %.lr.ph.preheader.i
  %indvars.iv510.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next511.i, %bb.hd ] ; 4 uses
  %i.aos = getelementptr inbounds nuw [48 x i8], ptr %5, i64 %indvars.iv510.i ; 8 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 36 ; 3 uses
  %i.aou = load i32, ptr %i.aot, align 4, !tbaa !806 ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aos, i64 28
  %i.aow = load i32, ptr %i.aov, align 4, !tbaa !812 ; 2 uses
  %i.aox = ashr i32 %i.aow, 1
  %.not289.i = icmp slt i32 %i.aou, %i.aox        ; 2 uses
  %i.aoy = load ptr, ptr %i.aos, align 16, !tbaa !811
  %i.aoz = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %indvars.iv510.i ; 3 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 72
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !320
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aos, i64 16 ; 4 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aos, i64 8 ; 3 uses
  %.in.i = select i1 %.not289.i, ptr %i.apd, ptr %i.apc
  %i.ape = load ptr, ptr %.in.i, align 8, !tbaa !71
  %.in290.i = select i1 %.not289.i, ptr %i.apc, ptr %i.apd
  %i.apf = load ptr, ptr %.in290.i, align 8, !tbaa !71
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aos, i64 32
  %i.aph = load i32, ptr %i.apg, align 16, !tbaa !807
  %i.api = getelementptr inbounds nuw i8, ptr %i.aos, i64 24
  %i.apj = load i32, ptr %i.api, align 8, !tbaa !813
  %i.apk = call noundef ptr %i.aoy(ptr noundef %i.apb, ptr noundef %i.ape, ptr noundef %i.apf, i32 noundef %i.aph, i32 noundef %i.apj), !inline_history !784
  %i.apl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv510.i
  store ptr %i.apk, ptr %i.apl, align 8, !tbaa !71
  %i.apm = add nsw i32 %i.aou, 1                  ; 2 uses
  store i32 %i.apm, ptr %i.aot, align 4, !tbaa !806
  %.not291.i = icmp slt i32 %i.apm, %i.aow
  br i1 %.not291.i, label %bb.hd, label %bb.hb

bb.hb:                                            ; preds = %.lr.ph.i
  store i32 0, ptr %i.aot, align 4, !tbaa !806
  %i.apn = load ptr, ptr %i.apc, align 16, !tbaa !809 ; 2 uses
  store ptr %i.apn, ptr %i.apd, align 8, !tbaa !810
  %i.apo = getelementptr inbounds nuw i8, ptr %i.aos, i64 40 ; 2 uses
  %i.app = load i32, ptr %i.apo, align 8, !tbaa !808
  %i.apq = add nsw i32 %i.app, 1                  ; 2 uses
  store i32 %i.apq, ptr %i.apo, align 8, !tbaa !808
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aoz, i64 32
  %i.aps = load i32, ptr %i.apr, align 8, !tbaa !307
  %i.apt = icmp slt i32 %i.apq, %i.aps
  br i1 %i.apt, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aoz, i64 36
  %i.apv = load i32, ptr %i.apu, align 4, !tbaa !310
  %i.apw = sext i32 %i.apv to i64
  %i.apx = getelementptr inbounds i8, ptr %i.apn, i64 %i.apw
  store ptr %i.apx, ptr %i.apc, align 16, !tbaa !809
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb, %.lr.ph.i
  %indvars.iv.next511.i = add nuw nsw i64 %indvars.iv510.i, 1 ; 2 uses
  %exitcond514.not.i = icmp eq i64 %indvars.iv.next511.i, %wide.trip.count.i
  br i1 %exitcond514.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !785

._crit_edge.i:                                    ; preds = %bb.hd
  %i.apy = mul i32 %.0264442.i, %i.ald
  %i.apz = mul i32 %i.apy, %i.aor
  %i.aqa = zext i32 %i.apz to i64
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.any, i64 %i.aqa ; 12 uses
  br i1 %i.alo, label %bb.he, label %bb.hl

bb.he:                                            ; preds = %._crit_edge.i
  %i.aqc = load ptr, ptr %i.c, align 16, !tbaa !71 ; 5 uses
  %i.aqd = load ptr, ptr %calloc, align 8, !tbaa !114 ; 15 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 8
  %i.aqf = load i32, ptr %i.aqe, align 8, !tbaa !117
  switch i32 %i.aqf, label %.preheader.i [
    i32 3, label %bb.hf
    i32 4, label %bb.hh
  ]

.preheader.i:                                     ; preds = %bb.he
  %i.aqg = load i32, ptr %i.aqd, align 8, !tbaa !115
  %.not454.i = icmp eq i32 %i.aqg, 0
  br i1 %.not454.i, label %.loopexit.i, label %.lr.ph441.i

bb.hf:                                            ; preds = %bb.he
  br i1 %i.aln, label %.preheader347.i, label %.loopexit.sink.split.i

.preheader347.i:                                  ; preds = %bb.hf
  %i.aqh = load i32, ptr %i.aqd, align 8, !tbaa !115
  %.not453.i = icmp eq i32 %i.aqh, 0
  br i1 %.not453.i, label %.loopexit.i, label %.lr.ph438.i

.lr.ph438.i:                                      ; preds = %.preheader347.i
  %i.aqi = load ptr, ptr %i.aod, align 8, !tbaa !71
  %i.aqj = load ptr, ptr %i.aoe, align 16, !tbaa !71
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hg, %.lr.ph438.i
  %indvars.iv539.i = phi i64 [ 0, %.lr.ph438.i ], [ %indvars.iv.next540.i, %bb.hg ] ; 4 uses
  %.0260437.i = phi ptr [ %i.aqb, %.lr.ph438.i ], [ %i.aqt, %bb.hg ] ; 5 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqc, i64 %indvars.iv539.i
  %i.aql = load i8, ptr %i.aqk, align 1, !tbaa !84
  store i8 %i.aql, ptr %.0260437.i, align 1, !tbaa !84
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqi, i64 %indvars.iv539.i
  %i.aqn = load i8, ptr %i.aqm, align 1, !tbaa !84
  %i.aqo = getelementptr inbounds nuw i8, ptr %.0260437.i, i64 1
  store i8 %i.aqn, ptr %i.aqo, align 1, !tbaa !84
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqj, i64 %indvars.iv539.i
  %i.aqq = load i8, ptr %i.aqp, align 1, !tbaa !84
  %i.aqr = getelementptr inbounds nuw i8, ptr %.0260437.i, i64 2
  store i8 %i.aqq, ptr %i.aqr, align 1, !tbaa !84
  %i.aqs = getelementptr inbounds nuw i8, ptr %.0260437.i, i64 3
  store i8 -1, ptr %i.aqs, align 1, !tbaa !84
  %i.aqt = getelementptr inbounds nuw i8, ptr %.0260437.i, i64 %i.aoc
  %indvars.iv.next540.i = add nuw nsw i64 %indvars.iv539.i, 1 ; 2 uses
  %i.aqu = load i32, ptr %i.aqd, align 8, !tbaa !115
  %i.aqv = zext i32 %i.aqu to i64
  %i.aqw = icmp samesign ult i64 %indvars.iv.next540.i, %i.aqv
  br i1 %i.aqw, label %bb.hg, label %.loopexit.i, !llvm.loop !786

bb.hh:                                            ; preds = %bb.he
  %i.aqx = load i32, ptr %i.anz, align 4, !tbaa !292
  switch i32 %i.aqx, label %.loopexit.sink.split.i [
    i32 0, label %.preheader349.i
    i32 2, label %bb.hj
  ]

end_hunk_2
begin_hunk_3_@_ZL14stbi__pnm_testP13stbi__context:bb.a
bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre.i = load i8, ptr %i.n, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.f, %bb.e
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8, !tbaa !85
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.b, %bb.c, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %i.ah = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.d, %bb.c ]
  %i.ai = phi ptr [ %i.f, %bb.b ], [ %i.ag, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.b, %bb.c ] ; 3 uses
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.af, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.c ]
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !82
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit14

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !79
  %.not.i9 = icmp eq i32 %i.an, 0
  br i1 %.not.i9, label %_ZL10stbi__get8P13stbi__context.exit14.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !77
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !78
  %i.av = tail call noundef i32 %i.ap(ptr noundef %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au), !inline_history !12 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !81
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !80
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !80
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.am, align 8, !tbaa !79
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i11

bb.k:                                             ; preds = %bb.i
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i10 = load i8, ptr %i.as, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i11

_ZL19stbi__refill_bufferP13stbi__context.exit.i11: ; preds = %bb.k, %bb.j
  %i.bk = phi i8 [ 0, %bb.j ], [ %.pre.i10, %bb.k ]
  %.sink.i.i12 = phi ptr [ %i.bh, %bb.j ], [ %i.bj, %bb.k ]
  store ptr %.sink.i.i12, ptr %i.c, align 8, !tbaa !85
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit14

_ZL10stbi__get8P13stbi__context.exit14:           ; preds = %bb.g, %_ZL19stbi__refill_bufferP13stbi__context.exit.i11
  %.0.i13 = phi i8 [ %i.al, %bb.g ], [ %i.bk, %_ZL19stbi__refill_bufferP13stbi__context.exit.i11 ]
  %.not = icmp ne i8 %.0.i, 80
  %i.bm = add i8 %.0.i13, -55
  %or.cond = icmp ult i8 %i.bm, -2
  %or.cond8 = or i1 %.not, %or.cond
  br i1 %or.cond8, label %_ZL10stbi__get8P13stbi__context.exit14.thread, label %bb.l

_ZL10stbi__get8P13stbi__context.exit14.thread:    ; preds = %bb.h, %_ZL10stbi__get8P13stbi__context.exit14
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bo = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !71
  store <2 x ptr> %i.bo, ptr %i.a, align 8, !tbaa !71
  br label %bb.l

bb.l:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit14, %_ZL10stbi__get8P13stbi__context.exit14.thread
  %.0 = phi i32 [ 0, %_ZL10stbi__get8P13stbi__context.exit14.thread ], [ 1, %_ZL10stbi__get8P13stbi__context.exit14 ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL14stbi__pnm_loadP13stbi__contextPiS1_S1_iP17stbi__result_info(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %5) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = tail call fastcc noundef i32 @_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_(ptr noundef %0, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  store i32 %i.c, ptr %5, align 4, !tbaa !88
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !116
  %i.f = icmp ugt i32 %i.e, 16777216
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.14, ptr %i.g, align 8, !tbaa !71
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.h = load i32, ptr %0, align 8, !tbaa !115    ; 2 uses
  %i.i = icmp ugt i32 %i.h, 16777216
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.14, ptr %i.j, align 8, !tbaa !71
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  store i32 %i.h, ptr %1, align 4, !tbaa !72
  %i.k = load i32, ptr %i.a, align 4, !tbaa !116  ; 2 uses
  store i32 %i.k, ptr %2, align 4, !tbaa !72
  %.not = icmp eq ptr %3, null
  %.pre = load i32, ptr %i.b, align 8, !tbaa !117 ; 5 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.pre, ptr %3, align 4, !tbaa !72
  %.pre70 = load i32, ptr %i.a, align 4, !tbaa !116
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = phi i32 [ %.pre70, %bb.g ], [ %i.k, %bb.f ] ; 5 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !115    ; 5 uses
  %i.n = load i32, ptr %5, align 4, !tbaa !88     ; 2 uses
  %i.o = sdiv i32 %i.n, 8                         ; 4 uses
  %i.p = or i32 %i.m, %.pre
  %or.cond.not.i.i = icmp sgt i32 %i.p, -1
  br i1 %or.cond.not.i.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.q = icmp eq i32 %i.m, 0                      ; 2 uses
  br i1 %i.q, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.i
  %i.r = udiv i32 2147483647, %i.m
  %.not37.i = icmp sgt i32 %.pre, %i.r
  br i1 %.not37.i, label %bb.l, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.i
  %i.s = mul i32 %i.m, %.pre                      ; 4 uses
  %i.t = or i32 %i.l, %i.s
  %or.cond.not.i16.i = icmp sgt i32 %i.t, -1
  br i1 %or.cond.not.i16.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i
  %i.u = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.u, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i, label %_ZL21stbi__mul2sizes_validii.exit18.i

_ZL21stbi__mul2sizes_validii.exit18.i:            ; preds = %bb.j
  %i.v = udiv i32 2147483647, %i.l
  %.not.i = icmp sgt i32 %i.s, %i.v
  br i1 %.not.i, label %bb.l, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i

_ZL21stbi__mul2sizes_validii.exit18.thread29.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i, %bb.j
  %i.w = mul i32 %i.s, %i.l                       ; 4 uses
  %i.x = or i32 %i.o, %i.w
  %or.cond.not.i19.i = icmp sgt i32 %i.x, -1
  br i1 %or.cond.not.i19.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i
  %.off = add i32 %i.n, 7
  %i.y = icmp ult i32 %.off, 15                   ; 2 uses
  br i1 %i.y, label %_ZL21stbi__mad4sizes_validiiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit21.i

_ZL21stbi__mul2sizes_validii.exit21.i:            ; preds = %bb.k
  %i.z = udiv i32 2147483647, %i.o
  %.not38.i = icmp sgt i32 %i.w, %i.z
  br i1 %.not38.i, label %bb.l, label %_ZL21stbi__mad4sizes_validiiiii.exit

bb.l:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit21.i, %_ZL21stbi__mul2sizes_validii.exit18.i, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit.thread24.i, %bb.h, %_ZL21stbi__mul2sizes_validii.exit18.thread29.i
  %i.aa = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.14, ptr %i.aa, align 8, !tbaa !71
  br label %bb.t

_ZL21stbi__mad4sizes_validiiiii.exit:             ; preds = %bb.k, %_ZL21stbi__mul2sizes_validii.exit21.i
  br i1 %i.q, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %_ZL21stbi__mad4sizes_validiiiii.exit
  %i.ab = udiv i32 2147483647, %i.m
  %.not37.i.i = icmp sgt i32 %.pre, %i.ab
  br i1 %.not37.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mad4sizes_validiiiii.exit
  br i1 %i.u, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i, label %_ZL21stbi__mul2sizes_validii.exit18.i.i

_ZL21stbi__mul2sizes_validii.exit18.i.i:          ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i
  %i.ac = udiv i32 2147483647, %i.l
  %.not.i.i = icmp sgt i32 %i.s, %i.ac
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i

_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i
  br i1 %i.y, label %_ZL17stbi__malloc_mad4iiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit21.i.i

_ZL21stbi__mul2sizes_validii.exit21.i.i:          ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i
  %i.ad = udiv i32 2147483647, %i.o
  %.not38.i.i = icmp sgt i32 %i.w, %i.ad
  br i1 %.not38.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %_ZL17stbi__malloc_mad4iiiii.exit

_ZL17stbi__malloc_mad4iiiii.exit:                 ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i, %_ZL21stbi__mul2sizes_validii.exit21.i.i
  %i.ae = mul i32 %i.o, %i.w                      ; 4 uses
  %6 = zext nneg i32 %i.ae to i64
  %i.af = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %6) #54 ; 9 uses
  %.not55 = icmp eq ptr %i.af, null
  br i1 %.not55, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %bb.m

_ZL17stbi__malloc_mad4iiiii.exit.thread:          ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i, %_ZL21stbi__mul2sizes_validii.exit21.i.i, %_ZL17stbi__malloc_mad4iiiii.exit
  %i.ag = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.ag, align 8, !tbaa !71
  br label %bb.t

bb.m:                                             ; preds = %_ZL17stbi__malloc_mad4iiiii.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !83 ; 2 uses
  %.not.i59 = icmp eq ptr %i.ai, null
  br i1 %.not.i59, label %..thread_crit_edge.i, label %bb.n

..thread_crit_edge.i:                             ; preds = %bb.m
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !82
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.pre35.i = load ptr, ptr %.phi.trans.insert34.i, align 8, !tbaa !85
  br label %.thread.i

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !85 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !82 ; 3 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = icmp sgt i32 %i.ae, %i.aq
  br i1 %i.ar, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.n, %..thread_crit_edge.i
  %i.as = phi ptr [ %.pre35.i, %..thread_crit_edge.i ], [ %i.ak, %bb.n ]
  %i.at = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %i.am, %bb.n ] ; 2 uses
  %7 = sext i32 %i.ae to i64                      ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %7 ; 2 uses
  %.not32.i = icmp ugt ptr %i.au, %i.as
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread65

_ZL10stbi__getnP13stbi__contextPhi.exit.thread65: ; preds = %.thread.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.at, i64 %7, i1 false)
  store ptr %i.au, ptr %i.av, align 8, !tbaa !82
  br label %bb.o

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %bb.n
  %sext.i = shl i64 %i.ap, 32
  %i.aw = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.am, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !77
  %i.az = getelementptr inbounds i8, ptr %i.af, i64 %i.aw
  %i.ba = sub nsw i32 %i.ae, %i.aq                ; 2 uses
  %i.bb = tail call noundef i32 %i.ai(ptr noundef %i.ay, ptr noundef nonnull %i.az, i32 noundef %i.ba), !inline_history !323
  %.not69 = icmp eq i32 %i.bb, %i.ba
  %i.bc = load ptr, ptr %i.aj, align 8, !tbaa !85
  store ptr %i.bc, ptr %i.al, align 8, !tbaa !82
  br i1 %.not69, label %bb.o, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread

_ZL10stbi__getnP13stbi__contextPhi.exit.thread:   ; preds = %.thread.i, %_ZL10stbi__getnP13stbi__contextPhi.exit
  tail call void @free(ptr noundef nonnull %i.af) #53
  %i.bd = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.94, ptr %i.bd, align 8, !tbaa !71
  br label %bb.t

bb.o:                                             ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.thread65, %_ZL10stbi__getnP13stbi__contextPhi.exit
  %.not57 = icmp eq i32 %4, 0
  br i1 %.not57, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load i32, ptr %i.b, align 8, !tbaa !117 ; 3 uses
  %.not58 = icmp eq i32 %4, %i.be
  br i1 %.not58, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = load i32, ptr %5, align 4, !tbaa !88
  %i.bg = icmp eq i32 %i.bf, 16
  %i.bh = load i32, ptr %0, align 8, !tbaa !115   ; 2 uses
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !116 ; 2 uses
  br i1 %i.bg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bj = tail call fastcc noundef ptr @_ZL22stbi__convert_format16Ptiijj(ptr noundef nonnull %i.af, i32 noundef %i.be, i32 noundef %4, i32 noundef %i.bh, i32 noundef %i.bi)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bk = tail call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef nonnull %i.af, i32 noundef %i.be, i32 noundef %4, i32 noundef %i.bh, i32 noundef %i.bi)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.o, %bb.p, %bb.a, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread, %_ZL17stbi__malloc_mad4iiiii.exit.thread, %bb.l, %bb.e, %bb.c
  %.048 = phi ptr [ null, %bb.l ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.a ], [ %i.af, %bb.o ], [ null, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread ], [ %i.af, %bb.p ], [ %i.bj, %bb.r ], [ %i.bk, %bb.s ]
  ret ptr %.048
}

; Function Attrs: mustprogress uwtable
define internal fastcc noalias noundef ptr @_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) unnamed_addr #9 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 17 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca [4 x i8], align 1                 ; 2 uses
  %i.d = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #53
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
  %.not140 = icmp eq i32 %i.u, 0
  br i1 %.not140, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.100, ptr %i.v, align 8, !tbaa !71
  br label %._crit_edge58.thread

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.w = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.x = load i8, ptr %i.a, align 16, !tbaa !84
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.012539 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.d ]
  %i.z = load i128, ptr %i.a, align 16
  %i.aa = xor i128 %i.z, 144150481438637697380701673535474650950
  %i.ab = getelementptr i8, ptr %i.a, i64 7
  %i.ac = load i128, ptr %i.ab, align 1
  %i.ad = xor i128 %i.ac, 526417854750532455411190335003243059
  %i.ae = or i128 %i.aa, %i.ad
  %i.af = icmp ne i128 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  %spec.select = select i1 %i.ah, i32 1, i32 %.012539 ; 2 uses
  %i.ai = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.aj = load i8, ptr %i.a, align 16, !tbaa !84
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %._crit_edge, label %.lr.ph, !llvm.loop !814

._crit_edge:                                      ; preds = %.lr.ph
  %i.al = icmp eq i32 %spec.select, 0
  br i1 %i.al, label %._crit_edge.thread, label %bb.e

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.102, ptr %i.am, align 8, !tbaa !71
  br label %._crit_edge58.thread

bb.e:                                             ; preds = %._crit_edge
  %i.an = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.ao = load i16, ptr %i.a, align 16
  %i.ap = xor i16 %i.ao, 22829
  %i.aq = getelementptr i8, ptr %i.a, i64 2
  %i.ar = load i8, ptr %i.aq, align 2
  %i.as = zext i8 %i.ar to i16
  %i.at = xor i16 %i.as, 32
  %i.au = or i16 %i.ap, %i.at
  %i.av = icmp ne i16 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %.not142 = icmp eq i32 %i.aw, 0
  br i1 %.not142, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.104, ptr %i.ax, align 8, !tbaa !71
  br label %._crit_edge58.thread

bb.g:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store ptr %i.ay, ptr %i.b, align 8, !tbaa !71
  %i.az = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.b, i32 noundef 10) #53 ; 2 uses
  %i.ba = trunc i64 %i.az to i32                  ; 6 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !71 ; 3 uses
  %i.bb = load i8, ptr %.promoted, align 1, !tbaa !84 ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 32
  br i1 %i.bc, label %.lr.ph41, label %sub_0

.lr.ph41:                                         ; preds = %bb.g, %.lr.ph41
  %i.bd = phi ptr [ %i.be, %.lr.ph41 ], [ %.promoted, %bb.g ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 4 uses
  store ptr %i.be, ptr %i.b, align 8, !tbaa !71
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !84  ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 32
  br i1 %i.bg, label %.lr.ph41, label %sub_0, !llvm.loop !815

sub_0:                                            ; preds = %.lr.ph41, %bb.g
  %i.bh = phi i8 [ %i.bb, %bb.g ], [ %i.bf, %.lr.ph41 ]
  %.lcssa38 = phi ptr [ %.promoted, %bb.g ], [ %i.be, %.lr.ph41 ] ; 3 uses
  %.not60 = icmp eq i8 %i.bh, 43
  br i1 %.not60, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.bi = getelementptr inbounds nuw i8, ptr %.lcssa38, i64 1
  %i.bj = load i8, ptr %i.bi, align 1
  %.not61 = icmp eq i8 %i.bj, 88
  br i1 %.not61, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa38, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp eq i8 %i.bl, 32
  br i1 %i.bm, label %bb.h, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.bn = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.104, ptr %i.bn, align 8, !tbaa !71
  br label %._crit_edge58.thread

bb.h:                                             ; preds = %.tail
  %i.bo = getelementptr inbounds nuw i8, ptr %.lcssa38, i64 3 ; 2 uses
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !71
  %i.bp = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bo, ptr noundef null, i32 noundef 10) #53 ; 4 uses
  %i.bq = trunc i64 %i.bp to i32                  ; 10 uses
  %i.br = icmp sgt i32 %i.ba, 16777216
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.14, ptr %i.bs, align 8, !tbaa !71
  br label %._crit_edge58.thread

bb.j:                                             ; preds = %bb.h
  %i.bt = icmp sgt i32 %i.bq, 16777216
  br i1 %i.bt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
end_hunk_3
begin_hunk_4_@_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
  %i.hc = add nuw nsw i32 %.144, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.hc, %i.ev
  br i1 %exitcond.not, label %.loopexit.loopexit63, label %.preheader13, !llvm.loop !819

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph47
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.lr.ph47.epil.preheader

.lr.ph47.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph47.preheader
  %indvars.iv92.epil.init = phi i64 [ %i.fu, %.lr.ph47.preheader ], [ %indvars.iv.next93.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod215 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod215)
  br label %.lr.ph47.epil

.lr.ph47.epil:                                    ; preds = %.lr.ph47.epil, %.lr.ph47.epil.preheader
  %indvars.iv92.epil = phi i64 [ %indvars.iv92.epil.init, %.lr.ph47.epil.preheader ], [ %indvars.iv.next93.epil, %.lr.ph47.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.lr.ph47.epil.preheader ], [ %epil.iter.next, %.lr.ph47.epil ]
  %indvars.iv.next93.epil = add nsw i64 %indvars.iv92.epil, 1 ; 2 uses
  %i.hd = shl nsw i64 %indvars.iv92.epil, 2
  %gep161.epil = getelementptr i8, ptr %invariant.gep160, i64 %i.hd
  store i8 %.0.i158, ptr %gep161.epil, align 1, !tbaa !84
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %.lr.ph47.epil, !llvm.loop !820

.loopexit.loopexit:                               ; preds = %.lr.ph47.epil, %.loopexit.loopexit.unr-lcssa
  %indvars.iv.next93.lcssa = phi i64 [ %indvars.iv.next93.3, %.loopexit.loopexit.unr-lcssa ], [ %indvars.iv.next93.epil, %.lr.ph47.epil ]
  %i.he = trunc nsw i64 %indvars.iv.next93.lcssa to i32
  br label %.loopexit

.loopexit.loopexit63:                             ; preds = %_ZL10stbi__get8P13stbi__context.exit165
  %i.hf = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit63, %.loopexit.loopexit, %.preheader
  %.5 = phi i32 [ %i.he, %.loopexit.loopexit ], [ %.212149, %.preheader ], [ %i.hf, %.loopexit.loopexit63 ] ; 2 uses
  %i.hg = sub nsw i32 %i.bq, %.5                  ; 2 uses
  %i.hh = icmp slt i32 %i.hg, 1
  br i1 %i.hh, label %..critedge_crit_edge, label %bb.ab, !llvm.loop !821

..critedge_crit_edge:                             ; preds = %.loopexit
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next97, 4
  br i1 %exitcond99.not, label %.lr.ph53, label %.preheader15, !llvm.loop !822

bb.au:                                            ; preds = %.lr.ph53, %_ZL17stbi__hdr_convertPfPhi.exit
  %indvars.iv100 = phi i64 [ 0, %.lr.ph53 ], [ %indvars.iv.next101, %_ZL17stbi__hdr_convertPfPhi.exit ] ; 3 uses
  %i.hi = add nuw nsw i64 %indvars.iv100, %i.dv
  %i.hj = mul nsw i64 %i.hi, %i.cp
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.hj ; 11 uses
  %i.hl = shl nuw nsw i64 %indvars.iv100, 2
  %i.hm = getelementptr inbounds nuw i8, ptr %.1124, i64 %i.hl ; 6 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 3
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !84  ; 2 uses
  %.not.i166 = icmp eq i8 %i.ho, 0
  br i1 %.not.i166, label %bb.bb, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hp = zext i8 %i.ho to i32
  %i.hq = add nsw i32 %i.hp, -136
  %i.hr = call noundef float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.hq) #53 ; 4 uses
  %i.hs = load i8, ptr %i.hm, align 1, !tbaa !84  ; 2 uses
  br i1 %i.co, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ht = zext i8 %i.hs to i32
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !84
  %i.hw = zext i8 %i.hv to i32
  %i.hx = add nuw nsw i32 %i.hw, %i.ht
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !84
  %i.ia = zext i8 %i.hz to i32
  %i.ib = add nuw nsw i32 %i.hx, %i.ia
  %i.ic = uitofp nneg i32 %i.ib to float
  %i.id = fmul float %i.hr, %i.ic
  %i.ie = fdiv float %i.id, 3.000000e+00
  store float %i.ie, ptr %i.hk, align 4, !tbaa !68
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.if = uitofp i8 %i.hs to float
  %i.ig = fmul float %i.hr, %i.if
  store float %i.ig, ptr %i.hk, align 4, !tbaa !68
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !84
  %i.ij = uitofp i8 %i.ii to float
  %i.ik = fmul float %i.hr, %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  store float %i.ik, ptr %i.il, align 4, !tbaa !68
  %i.im = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %i.in = load i8, ptr %i.im, align 1, !tbaa !84
  %i.io = uitofp i8 %i.in to float
  %i.ip = fmul float %i.hr, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store float %i.ip, ptr %i.iq, align 4, !tbaa !68
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  switch i32 %4, label %_ZL17stbi__hdr_convertPfPhi.exit [
    i32 2, label %bb.az
    i32 4, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  store float 1.000000e+00, ptr %i.ir, align 4, !tbaa !68
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.ba:                                            ; preds = %bb.ay
  %i.is = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  store float 1.000000e+00, ptr %i.is, align 4, !tbaa !68
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.bb:                                            ; preds = %bb.au
  switch i32 %spec.store.select, label %_ZL17stbi__hdr_convertPfPhi.exit [
    i32 4, label %bb.bc
    i32 3, label %bb.bd
    i32 2, label %bb.be
    i32 1, label %bb.bf
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.it = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  store float 1.000000e+00, ptr %i.it, align 4, !tbaa !68
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store float 0.000000e+00, ptr %i.iu, align 4, !tbaa !68
  store <2 x float> zeroinitializer, ptr %i.hk, align 4, !tbaa !68
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.be:                                            ; preds = %bb.bb
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  store float 1.000000e+00, ptr %i.iv, align 4, !tbaa !68
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bb
  store float 0.000000e+00, ptr %i.hk, align 4, !tbaa !68
  br label %_ZL17stbi__hdr_convertPfPhi.exit

_ZL17stbi__hdr_convertPfPhi.exit:                 ; preds = %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bd, %bb.bf
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count
  br i1 %exitcond103.not, label %._crit_edge54, label %bb.au, !llvm.loop !823

._crit_edge54:                                    ; preds = %_ZL17stbi__hdr_convertPfPhi.exit
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %._crit_edge58, label %bb.w, !llvm.loop !824

._crit_edge58:                                    ; preds = %._crit_edge54
  call void @free(ptr noundef nonnull %.1124) #53
  br label %._crit_edge58.thread

._crit_edge58.thread:                             ; preds = %.preheader17, %bb.an, %.thread, %bb.s, %._crit_edge58, %_ZL17stbi__malloc_mad2iii.exit.thread, %bb.z, %bb.q, %bb.o, %bb.k, %bb.i, %.tail.thread, %bb.f, %._crit_edge.thread, %bb.c
  %.3130 = phi ptr [ null, %bb.c ], [ null, %bb.f ], [ null, %.tail.thread ], [ null, %bb.i ], [ null, %bb.k ], [ null, %._crit_edge.thread ], [ null, %bb.z ], [ %i.by, %bb.s ], [ null, %_ZL17stbi__malloc_mad2iii.exit.thread ], [ null, %bb.q ], [ null, %bb.o ], [ null, %bb.an ], [ %i.by, %._crit_edge58 ], [ null, %.thread ], [ %i.by, %.preheader17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  ret ptr %.3130
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @_ZL16stbi__hdr_to_ldrPfiii(ptr noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = or i32 %2, %1
  %or.cond.not.i.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.c
  %i.c = udiv i32 2147483647, %2
  %.not23.i.i = icmp sgt i32 %1, %i.c
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.c
  %i.d = mul nuw nsw i32 %2, %1                   ; 7 uses
  %i.e = or i32 %3, %i.d
  %or.cond.not.i10.i.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10.i.i, label %bb.d, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.d:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.d
  %i.g = udiv i32 2147483647, %3
  %.not.i.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.d, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.h = mul nuw nsw i32 %i.d, %3
  %4 = zext nneg i32 %i.h to i64
  %i.i = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %4) #54 ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %bb.e

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL17stbi__malloc_mad3iiii.exit
  tail call void @free(ptr noundef nonnull %0) #53
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.k, align 8, !tbaa !71
  br label %bb.i

bb.e:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.l = and i32 %3, 1
  %sext = add nsw i32 %3, -1
  %.046 = add nsw i32 %sext, %i.l                 ; 3 uses
  %i.m = icmp sgt i32 %i.d, 0
  br i1 %i.m, label %.preheader.lr.ph, label %._crit_edge55

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.n = icmp sgt i32 %.046, 0
  %i.o = load float, ptr @_ZL17stbi__h2l_scale_i, align 4
  %i.p = load float, ptr @_ZL17stbi__h2l_gamma_i, align 4
  br i1 %i.n, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %5 = zext nneg i32 %3 to i64
  %wide.trip.count66 = zext nneg i32 %i.d to i64
  %wide.trip.count61 = zext nneg i32 %.046 to i64 ; 2 uses
  %i.q = icmp slt i32 %.046, %3
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.h
  %indvars.iv63 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next64, %bb.h ] ; 2 uses
  %i.r = mul nuw nsw i64 %indvars.iv63, %5        ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader.us, %bb.f
  %indvars.iv58 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next59, %bb.f ] ; 2 uses
  %i.s = add nuw nsw i64 %indvars.iv58, %i.r      ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s
  %i.u = load float, ptr %i.t, align 4, !tbaa !68
  %i.v = fmul float %i.u, %i.o
  %i.w = tail call noundef float @powf(float noundef %i.v, float noundef %i.p) #53
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.y = fcmp olt float %i.x, 0.000000e+00
  %spec.store.select.us = select i1 %i.y, float 0.000000e+00, float %i.x ; 2 uses
  %i.z = fcmp ogt float %spec.store.select.us, 2.550000e+02
  %spec.store.select2.us = select i1 %i.z, float 2.550000e+02, float %spec.store.select.us
  %i.aa = fptosi float %spec.store.select2.us to i32
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !84
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %._crit_edge.us, label %bb.f, !llvm.loop !825

bb.g:                                             ; preds = %._crit_edge.us
  %i.ad = add nuw nsw i64 %i.r, %wide.trip.count61 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !68
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.ah = fcmp olt float %i.ag, 0.000000e+00
  %spec.store.select1.us = select i1 %i.ah, float 0.000000e+00, float %i.ag ; 2 uses
  %i.ai = fcmp ogt float %spec.store.select1.us, 2.550000e+02
  %spec.store.select3.us = select i1 %i.ai, float 2.550000e+02, float %spec.store.select1.us
  %i.aj = fptosi float %spec.store.select3.us to i32
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ad
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !84
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.us
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge55, label %.preheader.us, !llvm.loop !826

._crit_edge.us:                                   ; preds = %bb.f
  br i1 %i.q, label %bb.g, label %bb.h

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.am = icmp sgt i32 %3, 0
  br i1 %i.am, label %.preheader.preheader, label %._crit_edge55

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.an = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %min.iters.check = icmp ugt i32 %i.d, 3
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.ph, label %.preheader.preheader75

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x float>, ptr %i.ao, align 4, !tbaa !68
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.aq = fcmp olt <4 x float> %i.ap, zeroinitializer
  %i.ar = select <4 x i1> %i.aq, <4 x float> zeroinitializer, <4 x float> %i.ap ; 2 uses
  %i.as = fcmp ogt <4 x float> %i.ar, splat (float 2.550000e+02)
  %i.at = select <4 x i1> %i.as, <4 x float> splat (float 2.550000e+02), <4 x float> %i.ar
  %i.au = fptosi <4 x float> %i.at to <4 x i32>
  %i.av = trunc <4 x i32> %i.au to <4 x i8>
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 %index
  store <4 x i8> %i.av, ptr %i.aw, align 1, !tbaa !84
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !827

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge55, label %.preheader.preheader75

.preheader.preheader75:                           ; preds = %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader75, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader75 ] ; 2 uses
  %i.ay = mul nuw nsw i64 %indvars.iv, %i.an      ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !68
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.bc = fcmp olt float %i.bb, 0.000000e+00
  %spec.store.select1 = select i1 %i.bc, float 0.000000e+00, float %i.bb ; 2 uses
  %i.bd = fcmp ogt float %spec.store.select1, 2.550000e+02
  %spec.store.select3 = select i1 %i.bd, float 2.550000e+02, float %spec.store.select1
  %i.be = fptosi float %spec.store.select3 to i32
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ay
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge55, label %.preheader, !llvm.loop !828

._crit_edge55:                                    ; preds = %.preheader, %bb.h, %middle.block, %.preheader.lr.ph.split, %bb.e
  tail call void @free(ptr noundef nonnull %0) #53
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge55, %_ZL17stbi__malloc_mad3iiii.exit.thread
  %.0 = phi ptr [ null, %_ZL17stbi__malloc_mad3iiii.exit.thread ], [ %i.i, %._crit_edge55 ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL14stbi__tga_testP13stbi__context(ptr noundef nonnull %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 21 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %_ZL10stbi__get8P13stbi__context.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !79
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZL10stbi__get8P13stbi__context.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.o = load i32, ptr %i.n, align 4, !tbaa !78
  %i.p = tail call noundef i32 %i.j(ptr noundef %i.l, ptr noundef nonnull %i.m, i32 noundef %i.o), !inline_history !12 ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !80
  %i.z = add nsw i32 %i.y, %i.w
  store i32 %i.z, ptr %i.x, align 8, !tbaa !80
  %i.aa = icmp eq i32 %i.p, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 8, !tbaa !79
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.m, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ac = sext i32 %i.p to i64
  %i.ad = getelementptr inbounds i8, ptr %i.m, i64 %i.ac
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.f, %bb.e
  %.sink.i.i = phi ptr [ %i.ab, %bb.e ], [ %i.ad, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8, !tbaa !85
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 57
  br label %_ZL10stbi__get8P13stbi__context.exit.sink.split

_ZL10stbi__get8P13stbi__context.exit.sink.split:  ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i, %bb.b
  %.sink = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ] ; 2 uses
  %.ph = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %_ZL10stbi__get8P13stbi__context.exit.sink.split, %bb.c
  %i.af = phi ptr [ %i.d, %bb.c ], [ %.ph, %_ZL10stbi__get8P13stbi__context.exit.sink.split ] ; 3 uses
  %i.ag = phi ptr [ %i.b, %bb.c ], [ %.sink, %_ZL10stbi__get8P13stbi__context.exit.sink.split ] ; 4 uses
  %i.ah = icmp ult ptr %i.ag, %i.af
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !82
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit65

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !79
  %.not.i60 = icmp eq i32 %i.al, 0
  br i1 %.not.i60, label %_ZL10stbi__get8P13stbi__context.exit65.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !83
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !77
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !78
  %i.at = tail call noundef i32 %i.an(ptr noundef %i.ap, ptr noundef nonnull %i.aq, i32 noundef %i.as), !inline_history !12 ; 2 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !81
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = trunc i64 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !80
  %i.bd = add nsw i32 %i.bc, %i.ba
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !80
  %i.be = icmp eq i32 %i.at, 0
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ak, align 8, !tbaa !79
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.aq, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i62

bb.k:                                             ; preds = %bb.i
  %i.bg = sext i32 %i.at to i64
  %i.bh = getelementptr inbounds i8, ptr %i.aq, i64 %i.bg
  %.pre.i61 = load i8, ptr %i.aq, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i62

_ZL19stbi__refill_bufferP13stbi__context.exit.i62: ; preds = %bb.k, %bb.j
  %i.bi = phi i8 [ 0, %bb.j ], [ %.pre.i61, %bb.k ]
end_hunk_4
begin_hunk_5_@_ZL20stbi__parse_png_fileP9stbi__pngii:bb.a
  br label %.thread399

bb.ew:                                            ; preds = %bb.ev
  store ptr %i.rm, ptr %i.f, align 8, !tbaa !280
  br label %bb.ex

bb.ex:                                            ; preds = %._crit_edge, %bb.ew
  %i.ro = phi ptr [ %i.rm, %bb.ew ], [ %.pre, %._crit_edge ]
  %.3229 = phi i32 [ %.2228, %bb.ew ], [ %.0226, %._crit_edge ] ; 2 uses
  %i.rp = zext i32 %.0230 to i64
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rp ; 3 uses
  %i.rr = load ptr, ptr %i.k, align 8, !tbaa !83
  %.not.i340 = icmp eq ptr %i.rr, null
  br i1 %.not.i340, label %..thread_crit_edge.i342, label %bb.ey

..thread_crit_edge.i342:                          ; preds = %bb.ex
  %.pre.i344 = load ptr, ptr %i.h, align 8, !tbaa !82
  %.pre35.i = load ptr, ptr %i.i, align 8, !tbaa !85
  br label %.thread.i341

bb.ey:                                            ; preds = %bb.ex
  %i.rs = load ptr, ptr %i.i, align 8, !tbaa !85  ; 2 uses
  %i.rt = load ptr, ptr %i.h, align 8, !tbaa !82  ; 3 uses
  %i.ru = ptrtoint ptr %i.rs to i64
  %i.rv = ptrtoint ptr %i.rt to i64
  %i.rw = sub i64 %i.ru, %i.rv                    ; 2 uses
  %i.rx = trunc i64 %i.rw to i32                  ; 2 uses
  %i.ry = icmp sgt i32 %i.gt, %i.rx
  br i1 %i.ry, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %.thread.i341

.thread.i341:                                     ; preds = %bb.ey, %..thread_crit_edge.i342
  %i.rz = phi ptr [ %.pre35.i, %..thread_crit_edge.i342 ], [ %i.rs, %bb.ey ]
  %i.sa = phi ptr [ %.pre.i344, %..thread_crit_edge.i342 ], [ %i.rt, %bb.ey ] ; 2 uses
  %i.sb = zext nneg i32 %i.gt to i64              ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.sb
  %.not32.i = icmp ugt ptr %i.sc, %i.rz
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386

_ZL10stbi__getnP13stbi__contextPhi.exit.thread386: ; preds = %.thread.i341
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rq, ptr align 1 %i.sa, i64 %i.sb, i1 false)
  %i.sd = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.sb
  store ptr %i.se, ptr %i.h, align 8, !tbaa !82
  br label %.loopexit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %bb.ey
  %sext.i = shl i64 %i.rw, 32
  %i.sf = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rq, ptr align 1 %i.rt, i64 %i.sf, i1 false)
  %i.sg = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.sh = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.si = getelementptr inbounds i8, ptr %i.rq, i64 %i.sf
  %i.sj = sub nsw i32 %i.gt, %i.rx                ; 2 uses
  %i.sk = tail call noundef i32 %i.sg(ptr noundef %i.sh, ptr noundef %i.si, i32 noundef %i.sj), !inline_history !323
  %.not = icmp eq i32 %i.sk, %i.sj
  %i.sl = load ptr, ptr %i.i, align 8, !tbaa !85
  store ptr %i.sl, ptr %i.h, align 8, !tbaa !82
  br i1 %.not, label %.loopexit, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread

_ZL10stbi__getnP13stbi__contextPhi.exit.thread:   ; preds = %.thread.i341, %_ZL10stbi__getnP13stbi__contextPhi.exit
  %i.sm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.30, ptr %i.sm, align 8, !tbaa !71
  br label %.thread399

bb.ez:                                            ; preds = %bb.aw
  %.not256 = icmp eq i32 %.0217, 0
  br i1 %.not256, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.sn = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.21, ptr %i.sn, align 8, !tbaa !71
  br label %.thread399

bb.fb:                                            ; preds = %bb.ez
  %.not257 = icmp eq i32 %1, 0
  br i1 %.not257, label %bb.fc, label %.thread399

bb.fc:                                            ; preds = %bb.fb
  %i.so = load ptr, ptr %i.f, align 8, !tbaa !280 ; 3 uses
  %i.sp = icmp eq ptr %i.so, null
  br i1 %i.sp, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.sq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.31, ptr %i.sq, align 8, !tbaa !71
  br label %.thread399

bb.fe:                                            ; preds = %bb.fc
  %i.sr = load i32, ptr %i.d, align 8, !tbaa !115
  %i.ss = load i32, ptr %i.gn, align 8, !tbaa !277
  %i.st = mul i32 %i.ss, %i.sr
  %i.su = add i32 %i.st, 7
  %i.sv = lshr i32 %i.su, 3
  %i.sw = load i32, ptr %i.go, align 4, !tbaa !116 ; 2 uses
  %i.sx = load i32, ptr %i.gm, align 8, !tbaa !117
  %i.sy = mul i32 %i.sx, %i.sw
  %i.sz = mul i32 %i.sy, %i.sv
  %i.ta = add i32 %i.sz, %i.sw                    ; 2 uses
  %.not258 = icmp eq i32 %.0204, 0                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  %i.tb = sext i32 %i.ta to i64
  %i.tc = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.tb) #54 ; 2 uses
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.te = zext i1 %.not258 to i32
  store ptr %i.so, ptr %3, align 8, !tbaa !107
  %i.tf = sext i32 %.0230 to i64
  %i.tg = getelementptr inbounds i8, ptr %i.so, i64 %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.tg, ptr %i.th, align 8, !tbaa !108
  %i.ti = call fastcc noundef i32 @_ZL13stbi__do_zlibP10stbi__zbufPciii(ptr noundef %3, ptr noundef nonnull %i.tc, i32 noundef %i.ta, i32 noundef 1, i32 noundef %i.te)
  %.not.i345 = icmp eq i32 %i.ti, 0
  br i1 %.not.i345, label %bb.fg, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit

bb.fg:                                            ; preds = %bb.ff
  %i.tj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !109
  call void @free(ptr noundef %i.tk) #53
  br label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread

stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread: ; preds = %bb.fg, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  store ptr null, ptr %i.e, align 8, !tbaa !279
  br label %.thread399

stbi_zlib_decode_malloc_guesssize_headerflag.exit: ; preds = %bb.ff
  %i.tl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !110
  %i.tn = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !109 ; 3 uses
  %i.tp = ptrtoint ptr %i.tm to i64
  %i.tq = ptrtoint ptr %i.to to i64
  %i.tr = sub i64 %i.tp, %i.tq
  %i.ts = trunc i64 %i.tr to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  store ptr %i.to, ptr %i.e, align 8, !tbaa !279
  %i.tt = icmp eq ptr %i.to, null
  br i1 %i.tt, label %.thread399, label %bb.fh

bb.fh:                                            ; preds = %stbi_zlib_decode_malloc_guesssize_headerflag.exit
  %i.tu = load ptr, ptr %i.f, align 8, !tbaa !280
  call void @free(ptr noundef %i.tu) #53
  store ptr null, ptr %i.f, align 8, !tbaa !280
  %i.tv = load i32, ptr %i.gm, align 8, !tbaa !117 ; 2 uses
  %i.tw = add nsw i32 %i.tv, 1                    ; 2 uses
  %i.tx = icmp eq i32 %2, %i.tw
  %i.ty = icmp ne i32 %2, 3
  %or.cond5.not261.not266 = and i1 %i.ty, %i.tx
  %i.tz = icmp eq i8 %.0236, 0                    ; 2 uses
  %or.cond7.not263 = select i1 %or.cond5.not261.not266, i1 %i.tz, i1 false
  %i.ua = icmp ne i8 %.0233, 0                    ; 3 uses
  %or.cond9 = select i1 %or.cond7.not263, i1 true, i1 %i.ua
  %spec.select1498 = select i1 %or.cond9, i32 %i.tw, i32 %i.tv ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 4 uses
  store i32 %spec.select1498, ptr %i.ub, align 4, !tbaa !278
  %i.uc = load ptr, ptr %i.e, align 8, !tbaa !279 ; 2 uses
  %i.ud = load i32, ptr %i.gn, align 8, !tbaa !277 ; 4 uses
  %i.ue = icmp eq i32 %i.ud, 16
  %i.uf = zext i1 %i.ue to i32
  %i.ug = shl i32 %spec.select1498, %i.uf         ; 6 uses
  %.not.i349 = icmp eq i32 %.0211, 0
  %i.uh = load ptr, ptr %0, align 8, !tbaa !119   ; 2 uses
  %i.ui = load i32, ptr %i.uh, align 8, !tbaa !115 ; 4 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !116 ; 5 uses
  br i1 %.not.i349, label %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ul = or i32 %i.uk, %i.ui
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.ul, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.fj, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i

bb.fj:                                            ; preds = %bb.fi
  %i.um = icmp eq i32 %i.uk, 0
  br i1 %i.um, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %bb.fj
  %i.un = udiv i32 2147483647, %i.uk
  %.not23.i.i.i = icmp sgt i32 %i.ui, %i.un
  br i1 %.not23.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.fj
  %i.uo = mul nuw nsw i32 %i.uk, %i.ui            ; 3 uses
  %i.up = or i32 %i.uo, %i.ug
  %or.cond.not.i10.i.i.i = icmp sgt i32 %i.up, -1
  br i1 %or.cond.not.i10.i.i.i, label %bb.fk, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i

bb.fk:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i
  %i.uq = icmp eq i32 %i.ug, 0
  br i1 %i.uq, label %_ZL17stbi__malloc_mad3iiii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i.i:        ; preds = %bb.fk
  %i.ur = udiv i32 2147483647, %i.ug
  %.not.i.i.i = icmp sgt i32 %i.uo, %i.ur
  br i1 %.not.i.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %_ZL17stbi__malloc_mad3iiii.exit.i

_ZL17stbi__malloc_mad3iiii.exit.i:                ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %bb.fk
  %i.us = mul nuw nsw i32 %i.uo, %i.ug
  %4 = zext nneg i32 %i.us to i64
  %i.ut = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %4) #54 ; 4 uses
  %.not92.i = icmp eq ptr %i.ut, null
  br i1 %.not92.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %.preheader100.i

.preheader100.i:                                  ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i
  %5 = zext nneg i32 %i.ug to i64                 ; 9 uses
  br label %bb.fl

_ZL17stbi__malloc_mad3iiii.exit.thread.i:         ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.fi
  %i.uu = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.uu, align 8, !tbaa !71
  br label %.thread399

bb.fl:                                            ; preds = %bb.fn, %.preheader100.i
  %indvars.iv112.i = phi i64 [ 0, %.preheader100.i ], [ %indvars.iv.next113.i, %bb.fn ] ; 5 uses
  %.076106.i = phi ptr [ %i.uc, %.preheader100.i ], [ %.379.i, %bb.fn ] ; 3 uses
  %.085104.i = phi i32 [ %i.ts, %.preheader100.i ], [ %.388.i, %bb.fn ] ; 3 uses
  %i.uv = load ptr, ptr %0, align 8, !tbaa !119   ; 3 uses
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !115
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xorig, i64 %indvars.iv112.i
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !72 ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xspc, i64 %indvars.iv112.i
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !72 ; 4 uses
  %i.vb = xor i32 %i.uy, -1
  %i.vc = add i32 %i.uw, %i.vb
  %i.vd = add i32 %i.vc, %i.va                    ; 2 uses
  %i.ve = udiv i32 %i.vd, %i.va                   ; 6 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !116
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yorig, i64 %indvars.iv112.i
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !72 ; 2 uses
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yspc, i64 %indvars.iv112.i
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !72 ; 4 uses
  %i.vl = xor i32 %i.vi, -1
  %i.vm = add i32 %i.vg, %i.vl
  %i.vn = add i32 %i.vm, %i.vk                    ; 2 uses
  %i.vo = udiv i32 %i.vn, %i.vk                   ; 4 uses
  %i.vp = icmp ule i32 %i.va, %i.vd
  %i.vq = icmp ule i32 %i.vk, %i.vn
  %or.cond.i = select i1 %i.vp, i1 %i.vq, i1 false
  br i1 %or.cond.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.vr = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  %i.vs = load i32, ptr %i.vr, align 8, !tbaa !117
  %i.vt = mul i32 %i.ve, %i.ud
  %i.vu = mul i32 %i.vt, %i.vs
  %i.vv = add nsw i32 %i.vu, 7
  %i.vw = ashr i32 %i.vv, 3
  %i.vx = add nsw i32 %i.vw, 1
  %i.vy = mul nsw i32 %i.vx, %i.vo                ; 2 uses
  %i.vz = call fastcc noundef i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr noundef nonnull %0, ptr noundef %.076106.i, i32 noundef %.085104.i, i32 noundef %spec.select1498, i32 noundef %i.ve, i32 noundef %i.vo, i32 noundef %i.ud, i32 noundef range(i32 0, 256) %.0207)
  %.not93.not.i = icmp eq i32 %i.vz, 0
  br i1 %.not93.not.i, label %.thread.i353, label %.preheader99.i

.preheader99.i:                                   ; preds = %bb.fm
  %i.wa = icmp sgt i32 %i.vo, 0
  %i.wb = icmp sgt i32 %i.ve, 0
  %or.cond107.i = and i1 %i.wb, %i.wa
  %.pre115.i = load ptr, ptr %i.g, align 8, !tbaa !276 ; 4 uses
  br i1 %or.cond107.i, label %.preheader.lr.ph.split.i, label %._crit_edge103.split.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader99.i
  %i.wc = load ptr, ptr %0, align 8, !tbaa !119
  %i.wd = sext i32 %i.va to i64                   ; 3 uses
  %i.we = sext i32 %i.uy to i64                   ; 3 uses
  %i.wf = zext nneg i32 %i.ve to i64              ; 3 uses
  %i.wg = zext nneg i32 %i.vo to i64
  %.pre.pre.i = load i32, ptr %i.wc, align 8, !tbaa !115
  %factor.op.mul.i = mul i32 %.pre.pre.i, %i.ug
  %xtraiter = and i64 %i.wf, 1
  %i.wh = icmp eq i32 %i.ve, 1
  %unroll_iter = and i64 %i.wf, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2139 = trunc i32 %i.ve to i1
  br label %.preheader.i

.thread.i353:                                     ; preds = %bb.fm
  call void @free(ptr noundef %i.ut) #53
  br label %.thread399

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %indvars.iv109.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next110.i, %._crit_edge.i ] ; 3 uses
  %i.wi = trunc i64 %indvars.iv109.i to i32
  %i.wj = mul i32 %i.vk, %i.wi
  %i.wk = add i32 %i.wj, %i.vi
  %.reass.i = mul i32 %factor.op.mul.i, %i.wk
  %i.wl = mul nuw nsw i64 %indvars.iv109.i, %i.wf ; 3 uses
  %i.wm = zext i32 %.reass.i to i64
  %i.wn = getelementptr inbounds nuw i8, ptr %i.ut, i64 %i.wm ; 3 uses
  br i1 %i.wh, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i351 = phi i64 [ %indvars.iv.next.i352.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.wo = mul nsw i64 %indvars.iv.i351, %i.wd
  %i.wp = add nsw i64 %i.wo, %i.we
  %i.wq = mul nsw i64 %i.wp, %5
  %i.wr = getelementptr inbounds i8, ptr %i.wn, i64 %i.wq
  %i.ws = add nuw nsw i64 %indvars.iv.i351, %i.wl
  %i.wt = mul nuw nsw i64 %i.ws, %5
  %i.wu = getelementptr inbounds nuw i8, ptr %.pre115.i, i64 %i.wt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wr, ptr align 1 %i.wu, i64 %5, i1 false)
  %indvars.iv.next.i352 = or disjoint i64 %indvars.iv.i351, 1 ; 2 uses
  %i.wv = mul nsw i64 %indvars.iv.next.i352, %i.wd
  %i.ww = add nsw i64 %i.wv, %i.we
  %i.wx = mul nsw i64 %i.ww, %5
  %i.wy = getelementptr inbounds i8, ptr %i.wn, i64 %i.wx
  %i.wz = add nuw nsw i64 %indvars.iv.next.i352, %i.wl
  %i.xa = mul nuw nsw i64 %i.wz, %5
  %i.xb = getelementptr inbounds nuw i8, ptr %.pre115.i, i64 %i.xa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wy, ptr align 1 %i.xb, i64 %5, i1 false)
  %indvars.iv.next.i352.1 = add nuw nsw i64 %indvars.iv.i351, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !852

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i351.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i352.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2139)
  %i.xc = mul nsw i64 %indvars.iv.i351.epil.init, %i.wd
  %i.xd = add nsw i64 %i.xc, %i.we
  %i.xe = mul nsw i64 %i.xd, %5
  %i.xf = getelementptr inbounds i8, ptr %i.wn, i64 %i.xe
  %i.xg = add nuw nsw i64 %indvars.iv.i351.epil.init, %i.wl
  %i.xh = mul nuw nsw i64 %i.xg, %5
  %i.xi = getelementptr inbounds nuw i8, ptr %.pre115.i, i64 %i.xh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xf, ptr align 1 %i.xi, i64 %5, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %i.xj = icmp samesign ult i64 %indvars.iv.next110.i, %i.wg
  br i1 %i.xj, label %.preheader.i, label %._crit_edge103.split.i, !llvm.loop !853

._crit_edge103.split.i:                           ; preds = %._crit_edge.i, %.preheader99.i
  call void @free(ptr noundef %.pre115.i) #53
  %i.xk = zext i32 %i.vy to i64
  %i.xl = getelementptr inbounds nuw i8, ptr %.076106.i, i64 %i.xk
  %i.xm = sub i32 %.085104.i, %i.vy
  br label %bb.fn

bb.fn:                                            ; preds = %._crit_edge103.split.i, %bb.fl
  %.388.i = phi i32 [ %.085104.i, %bb.fl ], [ %i.xm, %._crit_edge103.split.i ]
  %.379.i = phi ptr [ %.076106.i, %bb.fl ], [ %i.xl, %._crit_edge103.split.i ]
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond.not.i350 = icmp eq i64 %indvars.iv.next113.i, 7
  br i1 %exitcond.not.i350, label %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393, label %bb.fl, !llvm.loop !854

_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393: ; preds = %bb.fn
  store ptr %i.ut, ptr %i.g, align 8, !tbaa !276
  br label %bb.fo

_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit: ; preds = %bb.fh
  %i.xn = call fastcc noundef i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr noundef nonnull %0, ptr noundef readonly %i.uc, i32 noundef %i.ts, i32 noundef %spec.select1498, i32 noundef %i.ui, i32 noundef %i.uk, i32 noundef %i.ud, i32 noundef range(i32 0, 256) %.0207)
  %.not267 = icmp eq i32 %i.xn, 0
  br i1 %.not267, label %.thread399, label %bb.fo

bb.fo:                                            ; preds = %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit
  br i1 %i.ua, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  %i.xo = load i32, ptr %i.gn, align 8, !tbaa !277
  %i.xp = icmp eq i32 %i.xo, 16
  %i.xq = load i32, ptr %i.ub, align 4, !tbaa !278 ; 2 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !119   ; 2 uses
  %.val299 = load ptr, ptr %i.g, align 8, !tbaa !276 ; 2 uses
  %.val.val = load i32, ptr %.val, align 8, !tbaa !115 ; 2 uses
  %i.xr = getelementptr i8, ptr %.val, i64 4
  %.val.val300 = load i32, ptr %i.xr, align 4, !tbaa !116 ; 2 uses
  br i1 %i.xp, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call fastcc void @_ZL28stbi__compute_transparency16P9stbi__pngPti(i32 %.val.val, i32 %.val.val300, ptr %.val299, ptr noundef %i.c, i32 noundef %i.xq)
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  call fastcc void @_ZL26stbi__compute_transparencyP9stbi__pngPhi(i32 %.val.val, i32 %.val.val300, ptr %.val299, ptr noundef %i.b, i32 noundef %i.xq)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fo
  br i1 %.not258, label %bb.fw, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.xs = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL24stbi__de_iphone_flag_set)
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !72
  %.not268 = icmp eq i32 %i.xt, 0
  %i.xu = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL26stbi__de_iphone_flag_local)
  %i.xv = load i32, ptr %i.xu, align 4
  %i.xw = load i32, ptr @_ZL27stbi__de_iphone_flag_global, align 4
  %i.xx = select i1 %.not268, i32 %i.xw, i32 %i.xv
  %.not269 = icmp eq i32 %i.xx, 0
  br i1 %.not269, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.xy = load i32, ptr %i.ub, align 4, !tbaa !278
  %i.xz = icmp sgt i32 %i.xy, 2
  br i1 %i.xz, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %.val304 = load ptr, ptr %0, align 8, !tbaa !119
  %.val305 = load ptr, ptr %i.g, align 8, !tbaa !276
  call fastcc void @_ZL15stbi__de_iphoneP9stbi__png(ptr %.val304, ptr %.val305)
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu, %bb.ft, %bb.fs
  br i1 %i.tz, label %bb.fz, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ya = zext nneg i8 %.0236 to i32              ; 2 uses
  store i32 %i.ya, ptr %i.gm, align 8, !tbaa !117
  %i.yb = icmp samesign ugt i32 %2, 2
  %spec.select = select i1 %i.yb, i32 %2, i32 %i.ya ; 4 uses
  store i32 %spec.select, ptr %i.ub, align 4, !tbaa !278
  %i.yc = load ptr, ptr %0, align 8, !tbaa !119   ; 2 uses
  %i.yd = load i32, ptr %i.yc, align 8, !tbaa !115
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 4
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !116
  %i.yg = mul i32 %i.yf, %i.yd                    ; 9 uses
  %i.yh = load ptr, ptr %i.g, align 8, !tbaa !276 ; 9 uses
  %or.cond.not.i.i.i.i354 = icmp sgt i32 %i.yg, -1
  br i1 %or.cond.not.i.i.i.i354, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i356, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread

_ZL21stbi__mul2sizes_validii.exit.i.i.i356:       ; preds = %bb.fx
  %i.yi = udiv i32 2147483647, %spec.select
  %.not10.i.i.i = icmp samesign ugt i32 %i.yg, %i.yi
  br i1 %.not10.i.i.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, label %_ZL17stbi__malloc_mad2iii.exit.i

_ZL17stbi__malloc_mad2iii.exit.i:                 ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i356
  %i.yj = mul nuw nsw i32 %i.yg, %spec.select
  %i.yk = zext nneg i32 %i.yj to i64
  %i.yl = call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.yk) #54 ; 6 uses
  %i.ym = icmp eq ptr %i.yl, null
  br i1 %i.ym, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, label %bb.fy

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread: ; preds = %bb.fx, %_ZL21stbi__mul2sizes_validii.exit.i.i.i356, %_ZL17stbi__malloc_mad2iii.exit.i
  %i.yn = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.yn, align 8, !tbaa !71
  br label %.thread399

bb.fy:                                            ; preds = %_ZL17stbi__malloc_mad2iii.exit.i
  %i.yo = icmp eq i32 %spec.select, 3
  %.not56.i = icmp eq i32 %i.yg, 0                ; 2 uses
  br i1 %i.yo, label %.preheader.i360, label %.preheader49.i

.preheader49.i:                                   ; preds = %bb.fy
  br i1 %.not56.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader49.i
  %wide.trip.count.i = zext nneg i32 %i.yg to i64 ; 2 uses
  %xtraiter2140 = and i64 %wide.trip.count.i, 3   ; 3 uses
  %i.yp = icmp ult i32 %i.yg, 4
  br i1 %i.yp, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter2143 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.preheader.i360:                                  ; preds = %bb.fy
  br i1 %.not56.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph55.preheader.i

.lr.ph55.preheader.i:                             ; preds = %.preheader.i360
  %wide.trip.count62.i = zext nneg i32 %i.yg to i64 ; 2 uses
  %xtraiter2145 = and i64 %wide.trip.count62.i, 1
  %i.yq = icmp eq i32 %i.yg, 1
  br i1 %i.yq, label %.lr.ph55.i.epil.preheader, label %.lr.ph55.preheader.i.new

.lr.ph55.preheader.i.new:                         ; preds = %.lr.ph55.preheader.i
  %unroll_iter2149 = and i64 %wide.trip.count62.i, 2147483646
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.lr.ph55.i, %.lr.ph55.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %indvars.iv.next60.i.1, %.lr.ph55.i ] ; 3 uses
  %.04553.i = phi ptr [ %i.yl, %.lr.ph55.preheader.i.new ], [ %i.zr, %.lr.ph55.i ] ; 7 uses
  %niter2150 = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %niter2150.next.1, %.lr.ph55.i ]
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yh, i64 %indvars.iv59.i
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !84
  %i.yt = zext i8 %i.ys to i64
  %i.yu = shl nuw nsw i64 %i.yt, 2
  %i.yv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yu ; 3 uses
  %i.yw = load i8, ptr %i.yv, align 4, !tbaa !84
  store i8 %i.yw, ptr %.04553.i, align 1, !tbaa !84
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 1
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !84
  %i.yz = getelementptr inbounds nuw i8, ptr %.04553.i, i64 1
  store i8 %i.yy, ptr %i.yz, align 1, !tbaa !84
  %i.za = getelementptr inbounds nuw i8, ptr %i.yv, i64 2
  %i.zb = load i8, ptr %i.za, align 2, !tbaa !84
  %i.zc = getelementptr inbounds nuw i8, ptr %.04553.i, i64 2
  store i8 %i.zb, ptr %i.zc, align 1, !tbaa !84
  %i.zd = getelementptr inbounds nuw i8, ptr %.04553.i, i64 3
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yh, i64 %indvars.iv59.i
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 1
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !84
  %i.zh = zext i8 %i.zg to i64
  %i.zi = shl nuw nsw i64 %i.zh, 2
  %i.zj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zi ; 3 uses
  %i.zk = load i8, ptr %i.zj, align 4, !tbaa !84
  store i8 %i.zk, ptr %i.zd, align 1, !tbaa !84
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zj, i64 1
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !84
  %i.zn = getelementptr inbounds nuw i8, ptr %.04553.i, i64 4
  store i8 %i.zm, ptr %i.zn, align 1, !tbaa !84
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zj, i64 2
  %i.zp = load i8, ptr %i.zo, align 2, !tbaa !84
  %i.zq = getelementptr inbounds nuw i8, ptr %.04553.i, i64 5
  store i8 %i.zp, ptr %i.zq, align 1, !tbaa !84
  %i.zr = getelementptr inbounds nuw i8, ptr %.04553.i, i64 6 ; 2 uses
  %indvars.iv.next60.i.1 = add nuw nsw i64 %indvars.iv59.i, 2 ; 2 uses
  %niter2150.next.1 = add i64 %niter2150, 2       ; 2 uses
  %niter2150.ncmp.1 = icmp eq i64 %niter2150.next.1, %unroll_iter2149
  br i1 %niter2150.ncmp.1, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa, label %.lr.ph55.i, !llvm.loop !855

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i357 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i358.3, %.lr.ph.i ] ; 5 uses
  %.14651.i = phi ptr [ %i.yl, %.lr.ph.preheader.i.new ], [ %i.aaw, %.lr.ph.i ] ; 5 uses
  %niter2144 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter2144.next.3, %.lr.ph.i ]
  %i.zs = getelementptr inbounds nuw i8, ptr %i.yh, i64 %indvars.iv.i357
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !84
  %i.zu = zext i8 %i.zt to i64
  %i.zv = shl nuw nsw i64 %i.zu, 2
  %i.zw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zv
  %i.zx = load <4 x i8>, ptr %i.zw, align 4, !tbaa !84
  store <4 x i8> %i.zx, ptr %.14651.i, align 1, !tbaa !84
  %i.zy = getelementptr inbounds nuw i8, ptr %.14651.i, i64 4
  %i.zz = getelementptr inbounds nuw i8, ptr %i.yh, i64 %indvars.iv.i357
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 1
end_hunk_5
begin_hunk_6_@_ZL20stbi__parse_png_fileP9stbi__pngii:bb.a
  %i.aaz = zext i8 %i.aay to i64
  %i.aba = shl nuw nsw i64 %i.aaz, 2
  %i.abb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aba ; 3 uses
  %i.abc = load i8, ptr %i.abb, align 4, !tbaa !84
  store i8 %i.abc, ptr %.04553.i.epil.init, align 1, !tbaa !84
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abb, i64 1
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !84
  %i.abf = getelementptr inbounds nuw i8, ptr %.04553.i.epil.init, i64 1
  store i8 %i.abe, ptr %i.abf, align 1, !tbaa !84
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abb, i64 2
  %i.abh = load i8, ptr %i.abg, align 2, !tbaa !84
  %i.abi = getelementptr inbounds nuw i8, ptr %.04553.i.epil.init, i64 2
  store i8 %i.abh, ptr %i.abi, align 1, !tbaa !84
  br label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1819.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod2141.not = icmp eq i64 %xtraiter2140, 0
  br i1 %lcmp.mod2141.not, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1819.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i357.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i358.3, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1819.unr-lcssa ]
  %.14651.i.epil.init = phi ptr [ %i.yl, %.lr.ph.preheader.i ], [ %i.aaw, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1819.unr-lcssa ]
  %lcmp.mod2142 = icmp ne i64 %xtraiter2140, 0
  call void @llvm.assume(i1 %lcmp.mod2142)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i357.epil = phi i64 [ %indvars.iv.i357.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i358.epil, %.lr.ph.i.epil ] ; 2 uses
  %.14651.i.epil = phi ptr [ %.14651.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.abp, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.abj = getelementptr inbounds nuw i8, ptr %i.yh, i64 %indvars.iv.i357.epil
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !84
  %i.abl = zext i8 %i.abk to i64
  %i.abm = shl nuw nsw i64 %i.abl, 2
  %i.abn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.abm
  %i.abo = load <4 x i8>, ptr %i.abn, align 4, !tbaa !84
  store <4 x i8> %i.abo, ptr %.14651.i.epil, align 1, !tbaa !84
  %i.abp = getelementptr inbounds nuw i8, ptr %.14651.i.epil, i64 4
  %indvars.iv.next.i358.epil = add nuw nsw i64 %indvars.iv.i357.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2140
  br i1 %epil.iter.cmp.not, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.i.epil, !llvm.loop !857

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit: ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1819.unr-lcssa, %.lr.ph.i.epil, %.lr.ph55.i.epil.preheader, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa, %.preheader49.i, %.preheader.i360
  call void @free(ptr noundef %i.yh) #53
  store ptr %i.yl, ptr %i.g, align 8, !tbaa !276
  br label %bb.gb

bb.fz:                                            ; preds = %bb.fw
  br i1 %i.ua, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.abq = load i32, ptr %i.gm, align 8, !tbaa !117
  %i.abr = add nsw i32 %i.abq, 1
  store i32 %i.abr, ptr %i.gm, align 8, !tbaa !117
  br label %bb.gb

bb.gb:                                            ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, %bb.fz, %bb.ga
  %i.abs = load ptr, ptr %i.e, align 8, !tbaa !279
  call void @free(ptr noundef %i.abs) #53
  store ptr null, ptr %i.e, align 8, !tbaa !279
  %i.abt = call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef nonnull %i.d) ; 0 uses
  %i.abu = call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef nonnull %i.d) ; 0 uses
  br label %.thread399

bb.gc:                                            ; preds = %bb.aw
  %.not297 = icmp eq i32 %.0217, 0
  br i1 %.not297, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.abv = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.21, ptr %i.abv, align 8, !tbaa !71
  br label %.thread399

bb.ge:                                            ; preds = %bb.gc
  %i.abw = and i32 %i.gu, 8192
  %i.abx = icmp eq i32 %i.abw, 0
  br i1 %i.abx, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.aby = lshr i32 %i.gu, 8
  %i.abz = trunc nuw i32 %i.aby to i8
  store i8 %i.abz, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, align 16, !tbaa !84
  %i.aca = trunc i32 %i.gu to i8
  store i8 %i.aca, ptr getelementptr inbounds nuw (i8, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, i64 1), align 1, !tbaa !84
  %i.acb = lshr i32 %i.gw, 8
  %i.acc = trunc nuw i32 %i.acb to i8
  store i8 %i.acc, ptr getelementptr inbounds nuw (i8, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, i64 2), align 2, !tbaa !84
  %i.acd = trunc i32 %i.gw to i8
  store i8 %i.acd, ptr getelementptr inbounds nuw (i8, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, i64 3), align 1, !tbaa !84
  %i.ace = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, ptr %i.ace, align 8, !tbaa !71
  br label %.thread399

bb.gg:                                            ; preds = %bb.ge
  %i.acf = icmp eq i32 %i.gt, 0
  br i1 %i.acf, label %.loopexit, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.acg = icmp slt i32 %i.gr, 0
  br i1 %i.acg, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.ach = load ptr, ptr %i.i, align 8, !tbaa !85
  store ptr %i.ach, ptr %i.h, align 8, !tbaa !82
  br label %.loopexit

bb.gj:                                            ; preds = %bb.gh
  %i.aci = load ptr, ptr %i.k, align 8, !tbaa !83
  %.not.i361 = icmp eq ptr %i.aci, null
  br i1 %.not.i361, label %..thread_crit_edge.i363, label %bb.gk

..thread_crit_edge.i363:                          ; preds = %bb.gj
  %.pre.i365 = load ptr, ptr %i.h, align 8, !tbaa !82
  br label %.thread.i362

bb.gk:                                            ; preds = %bb.gj
  %i.acj = load ptr, ptr %i.i, align 8, !tbaa !85 ; 2 uses
  %i.ack = load ptr, ptr %i.h, align 8, !tbaa !82 ; 2 uses
  %i.acl = ptrtoint ptr %i.acj to i64
  %i.acm = ptrtoint ptr %i.ack to i64
  %i.acn = sub i64 %i.acl, %i.acm
  %i.aco = trunc i64 %i.acn to i32                ; 2 uses
  %i.acp = icmp sgt i32 %i.gt, %i.aco
  br i1 %i.acp, label %bb.gl, label %.thread.i362

bb.gl:                                            ; preds = %bb.gk
  store ptr %i.acj, ptr %i.h, align 8, !tbaa !82
  %i.acq = load ptr, ptr %i.gp, align 8, !tbaa !123
  %i.acr = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.acs = sub nsw i32 %i.gt, %i.aco
  tail call void %i.acq(ptr noundef %i.acr, i32 noundef %i.acs), !inline_history !324
  br label %.loopexit

.thread.i362:                                     ; preds = %bb.gk, %..thread_crit_edge.i363
  %i.act = phi ptr [ %.pre.i365, %..thread_crit_edge.i363 ], [ %i.ack, %bb.gk ]
  %i.acu = zext nneg i32 %i.gt to i64
  %i.acv = getelementptr inbounds nuw i8, ptr %i.act, i64 %i.acu
  store ptr %i.acv, ptr %i.h, align 8, !tbaa !82
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL10stbi__get8P13stbi__context.exit339, %.lr.ph740, %.lr.ph742, %_ZL10stbi__get8P13stbi__context.exit333, %.preheader416, %.preheader414, %.preheader412, %.preheader, %_ZL10stbi__getnP13stbi__contextPhi.exit, %bb.ax, %bb.az, %bb.bc, %.thread.i, %bb.cm, %bb.co, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386, %bb.gg, %bb.gi, %bb.gl, %.thread.i362
  %.3239 = phi i8 [ %.0236, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0236, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0236, %.thread.i ], [ %.0236, %.thread.i362 ], [ 0, %.preheader412 ], [ 0, %.preheader414 ], [ %.0236, %.preheader ], [ %.0236, %bb.ax ], [ %.0236, %bb.az ], [ %.0236, %bb.bc ], [ %.1237, %bb.co ], [ 0, %bb.cm ], [ %.0236, %bb.gg ], [ %.0236, %bb.gi ], [ %.0236, %bb.gl ], [ 4, %.preheader416 ], [ 0, %.lr.ph740 ], [ %.0236, %_ZL10stbi__get8P13stbi__context.exit333 ], [ 0, %.lr.ph742 ], [ 4, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.1234 = phi i8 [ %.0233, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0233, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0233, %.thread.i ], [ %.0233, %.thread.i362 ], [ 1, %.preheader412 ], [ 1, %.preheader414 ], [ %.0233, %.preheader ], [ %.0233, %bb.ax ], [ %.0233, %bb.az ], [ %.0233, %bb.bc ], [ %.0233, %bb.co ], [ %.0233, %bb.cm ], [ %.0233, %bb.gg ], [ %.0233, %bb.gi ], [ %.0233, %bb.gl ], [ %.0233, %.preheader416 ], [ 1, %.lr.ph740 ], [ %.0233, %_ZL10stbi__get8P13stbi__context.exit333 ], [ 1, %.lr.ph742 ], [ %.0233, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.1231 = phi i32 [ %i.rd, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %i.rd, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0230, %.thread.i ], [ %.0230, %.thread.i362 ], [ %.0230, %.preheader412 ], [ %.0230, %.preheader414 ], [ %.0230, %.preheader ], [ %.0230, %bb.ax ], [ %.0230, %bb.az ], [ %.0230, %bb.bc ], [ %.0230, %bb.co ], [ %.0230, %bb.cm ], [ %.0230, %bb.gg ], [ %.0230, %bb.gi ], [ %.0230, %bb.gl ], [ %.0230, %.preheader416 ], [ %.0230, %.lr.ph740 ], [ %.0230, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0230, %.lr.ph742 ], [ %.0230, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.4 = phi i32 [ %.3229, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.3229, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0226, %.thread.i ], [ %.0226, %.thread.i362 ], [ %.0226, %.preheader412 ], [ %.0226, %.preheader414 ], [ %.0226, %.preheader ], [ %.0226, %bb.ax ], [ %.0226, %bb.az ], [ %.0226, %bb.bc ], [ %.0226, %bb.co ], [ %.0226, %bb.cm ], [ %.0226, %bb.gg ], [ %.0226, %bb.gi ], [ %.0226, %bb.gl ], [ %.0226, %.preheader416 ], [ %.0226, %.lr.ph740 ], [ %.0226, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0226, %.lr.ph742 ], [ %.0226, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.1222 = phi i32 [ %.0221, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0221, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0221, %.thread.i ], [ %.0221, %.thread.i362 ], [ %.0221, %.preheader412 ], [ %.0221, %.preheader414 ], [ %.zext, %.preheader ], [ %.0221, %bb.ax ], [ %.0221, %bb.az ], [ %.0221, %bb.bc ], [ %.0221, %bb.co ], [ %.0221, %bb.cm ], [ %.0221, %bb.gg ], [ %.0221, %bb.gi ], [ %.0221, %bb.gl ], [ %.0221, %.preheader416 ], [ %.0221, %.lr.ph740 ], [ %.zext, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0221, %.lr.ph742 ], [ %.0221, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.2219 = phi i32 [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0217, %.thread.i ], [ 0, %.thread.i362 ], [ 0, %.preheader412 ], [ 0, %.preheader414 ], [ 0, %.preheader ], [ %.0217, %bb.ax ], [ %.0217, %bb.az ], [ %.0217, %bb.bc ], [ 0, %bb.co ], [ 0, %bb.cm ], [ 0, %bb.gg ], [ 0, %bb.gi ], [ 0, %bb.gl ], [ 0, %.preheader416 ], [ 0, %.lr.ph740 ], [ 0, %_ZL10stbi__get8P13stbi__context.exit333 ], [ 0, %.lr.ph742 ], [ 0, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.2213 = phi i32 [ %.0211, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0211, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0211, %.thread.i ], [ %.0211, %.thread.i362 ], [ %.0211, %.preheader412 ], [ %.0211, %.preheader414 ], [ %.0211, %.preheader ], [ %.0211, %bb.ax ], [ %.0211, %bb.az ], [ %.0211, %bb.bc ], [ %i.kq, %bb.co ], [ %i.kq, %bb.cm ], [ %.0211, %bb.gg ], [ %.0211, %bb.gi ], [ %.0211, %bb.gl ], [ %.0211, %.preheader416 ], [ %.0211, %.lr.ph740 ], [ %.0211, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0211, %.lr.ph742 ], [ %.0211, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.2209 = phi i32 [ %.0207, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0207, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0207, %.thread.i ], [ %.0207, %.thread.i362 ], [ %.0207, %.preheader412 ], [ %.0207, %.preheader414 ], [ %.0207, %.preheader ], [ %.0207, %bb.ax ], [ %.0207, %bb.az ], [ %.0207, %bb.bc ], [ %i.kk, %bb.co ], [ %i.kk, %bb.cm ], [ %.0207, %bb.gg ], [ %.0207, %bb.gi ], [ %.0207, %bb.gl ], [ %.0207, %.preheader416 ], [ %.0207, %.lr.ph740 ], [ %.0207, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0207, %.lr.ph742 ], [ %.0207, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.1205 = phi i32 [ %.0204, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0204, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ 1, %.thread.i ], [ %.0204, %.thread.i362 ], [ %.0204, %.preheader412 ], [ %.0204, %.preheader414 ], [ %.0204, %.preheader ], [ 1, %bb.ax ], [ 1, %bb.az ], [ 1, %bb.bc ], [ %.0204, %bb.co ], [ %.0204, %bb.cm ], [ %.0204, %bb.gg ], [ %.0204, %bb.gi ], [ %.0204, %bb.gl ], [ %.0204, %.preheader416 ], [ %.0204, %.lr.ph740 ], [ %.0204, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0204, %.lr.ph742 ], [ %.0204, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %i.acw = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 0 uses
  %i.acx = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 0 uses
  br label %bb.aw, !llvm.loop !858

.thread399:                                       ; preds = %bb.er, %.thread.i353, %_ZL17stbi__malloc_mad3iiii.exit.thread.i, %bb.cc, %bb.ck, %bb.cn, %bb.be, %bb.cp, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.by, %bb.br, %bb.bk, %bb.bi, %bb.bg, %bb.fa, %bb.fd, %bb.gb, %bb.fb, %stbi_zlib_decode_malloc_guesssize_headerflag.exit, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, %bb.eo, %bb.el, %.thread382, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread, %bb.en, %bb.eq, %bb.ej, %bb.ec, %bb.eg, %bb.ee, %bb.dv, %bb.dt, %bb.dr, %bb.do, %bb.dm, %bb.cv, %bb.ct, %bb.cr, %bb.gf, %bb.gd, %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, %_ZL22stbi__check_png_headerP13stbi__context.exit
  %.7 = phi i32 [ 0, %_ZL22stbi__check_png_headerP13stbi__context.exit.thread ], [ 1, %_ZL22stbi__check_png_headerP13stbi__context.exit ], [ 0, %bb.cc ], [ 0, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread ], [ 0, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread ], [ 0, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit ], [ 1, %bb.gb ], [ 1, %bb.fb ], [ 0, %bb.fd ], [ 0, %stbi_zlib_decode_malloc_guesssize_headerflag.exit ], [ 0, %bb.fa ], [ 1, %bb.eo ], [ 0, %bb.el ], [ 0, %.thread382 ], [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread ], [ 1, %bb.en ], [ 0, %bb.eq ], [ 0, %.thread.i353 ], [ 0, %bb.ej ], [ 0, %bb.ec ], [ 1, %bb.eg ], [ 0, %bb.ee ], [ 0, %bb.dv ], [ 0, %bb.dt ], [ 1, %bb.dr ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.cv ], [ 0, %bb.ct ], [ 0, %bb.cr ], [ 0, %bb.gd ], [ 0, %bb.gf ], [ 0, %bb.bg ], [ 0, %bb.bi ], [ 0, %bb.bk ], [ 0, %bb.br ], [ 0, %bb.by ], [ 0, %bb.cb ], [ 0, %bb.cd ], [ 0, %bb.cf ], [ 0, %bb.ch ], [ 0, %bb.cp ], [ 0, %bb.be ], [ 0, %bb.cn ], [ 0, %bb.ck ], [ 0, %_ZL17stbi__malloc_mad3iiii.exit.thread.i ], [ 0, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  ret i32 %.7
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef captures(ret: address, provenance) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i32 %2, %1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = or i32 %3, %2
  %or.cond.not.i.i.i = icmp sgt i32 %i.b, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.c
  %i.d = udiv i32 2147483647, %3
  %.not23.i.i = icmp sgt i32 %2, %i.d
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.c
  %i.e = mul nuw nsw i32 %3, %2                   ; 3 uses
  %i.f = or i32 %4, %i.e
  %or.cond.not.i10.i.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i10.i.i, label %bb.d, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.d:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.g = icmp eq i32 %4, 0
  br i1 %i.g, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.d
  %i.h = udiv i32 2147483647, %4
  %.not.i.i = icmp sgt i32 %i.e, %i.h
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.d, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.i = mul nuw nsw i32 %i.e, %4
  %5 = zext nneg i32 %i.i to i64
  %i.j = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %5) #54 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %.preheader197

.preheader197:                                    ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.l = icmp sgt i32 %4, 0
  br i1 %i.l, label %.lr.ph258, label %._crit_edge

.lr.ph258:                                        ; preds = %.preheader197
  %i.m = shl nsw i32 %1, 3
  %i.n = add nsw i32 %i.m, %2                     ; 2 uses
  %.11167198 = add nsw i32 %3, -1                 ; 31 uses
  %i.o = icmp sgt i32 %3, 0                       ; 12 uses
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
  %i.p = zext nneg i32 %3 to i64                  ; 22 uses
  %min.iters.check504 = icmp ult i32 %3, 8
  %n.vec506 = and i64 %i.p, 2147483640            ; 5 uses
  %i.q = trunc nuw nsw i64 %n.vec506 to i32
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
  %n.vec432 = and i64 %i.p, 2147483640            ; 5 uses
  %i.ag = trunc nuw nsw i64 %n.vec432 to i32
  %i.ah = sub i32 %.11167198, %i.ag
  %i.ai = shl nuw nsw i64 %n.vec432, 1
  %i.aj = mul nuw nsw i64 %n.vec432, 3
  %cmp.n447 = icmp eq i64 %n.vec432, %i.p
  %min.iters.check377 = icmp ult i32 %3, 8
  %min.iters.check379 = icmp ult i32 %3, 16
  %i.ak = and i64 %i.p, 8
  %n.vec381 = and i64 %i.p, 2147483632            ; 6 uses
  %i.al = trunc nuw nsw i64 %n.vec381 to i32
  %i.am = sub i32 %.11167198, %i.al
  %i.an = mul nuw nsw i64 %n.vec381, 3
  %cmp.n403 = icmp eq i64 %n.vec381, %i.p
  %min.epilog.iters.check410.not.not = icmp eq i64 %i.ak, 0
  %n.vec412 = and i64 %i.p, 2147483640            ; 5 uses
  %i.ao = trunc nuw nsw i64 %n.vec412 to i32
  %i.ap = sub i32 %.11167198, %i.ao
  %i.aq = mul nuw nsw i64 %n.vec412, 3
  %cmp.n426 = icmp eq i64 %n.vec412, %i.p
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %.6162.prol = add nsw i32 %3, -2
  %i.ar = icmp eq i32 %.11167198, 0
  %xtraiter538 = and i32 %3, 1
  %lcmp.mod539.not = icmp eq i32 %xtraiter538, 0
  %.5161.prol = add nsw i32 %3, -2
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
  %n.vec = and i64 %i.p, 2147483632               ; 6 uses
  %i.bj = trunc nuw nsw i64 %n.vec to i32
  %i.bk = sub i32 %.11167198, %i.bj
  %i.bl = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.p
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  %n.vec315 = and i64 %i.p, 2147483644            ; 5 uses
  %i.bm = trunc nuw nsw i64 %n.vec315 to i32
  %i.bn = sub i32 %.11167198, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec315, 1
  %cmp.n322 = icmp eq i64 %n.vec315, %i.p
  %xtraiter548 = and i32 %3, 1
  %lcmp.mod549.not = icmp eq i32 %xtraiter548, 0
  %.11167.prol = add nsw i32 %3, -2
  %i.bp = icmp eq i32 %.11167198, 0
  br label %bb.e

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL17stbi__malloc_mad3iiii.exit
  tail call void @free(ptr noundef %0) #53
  %i.bq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.bq, align 8, !tbaa !71
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
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bx ; 50 uses
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
  %i.bz = load i8, ptr %i.bv, align 1, !tbaa !84
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !84
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !84
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !84
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !84
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !84
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.11167201.unr = phi i32 [ %.11167198, %.lr.ph.preheader ], [ %.11167.prol, %.lr.ph.prol ]
  %.11200.unr = phi ptr [ %i.by, %.lr.ph.preheader ], [ %i.ch, %.lr.ph.prol ]
  %.11153199.unr = phi ptr [ %i.bv, %.lr.ph.preheader ], [ %i.cg, %.lr.ph.prol ]
  br i1 %i.bp, label %.loopexit, label %.lr.ph

.preheader193:                                    ; preds = %bb.e
  br i1 %i.o, label %.lr.ph206.preheader, label %.loopexit

.lr.ph206.preheader:                              ; preds = %.preheader193
  br i1 %min.iters.check504, label %.lr.ph206.preheader536, label %vector.ph505

vector.ph505:                                     ; preds = %.lr.ph206.preheader
  %i.ci = getelementptr i8, ptr %i.by, i64 %i.s
  %i.cj = getelementptr i8, ptr %i.bv, i64 %i.t
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next519, %vector.body507 ] ; 3 uses
  %i.ck = shl i64 %index508, 1
  %next.gep509 = getelementptr i8, ptr %i.by, i64 %i.ck
  %i.cl = shl i64 %index508, 2                    ; 8 uses
  %next.gep510 = getelementptr i8, ptr %i.bv, i64 %i.cl ; 4 uses
  %i.cm = getelementptr i8, ptr %i.bv, i64 %i.cl  ; 4 uses
  %next.gep511 = getelementptr i8, ptr %i.cm, i64 4
  %i.cn = getelementptr i8, ptr %i.bv, i64 %i.cl  ; 4 uses
  %next.gep512 = getelementptr i8, ptr %i.cn, i64 8
  %i.co = getelementptr i8, ptr %i.bv, i64 %i.cl  ; 4 uses
  %next.gep513 = getelementptr i8, ptr %i.co, i64 12
  %i.cp = getelementptr i8, ptr %i.bv, i64 %i.cl  ; 4 uses
  %next.gep514 = getelementptr i8, ptr %i.cp, i64 16
  %i.cq = getelementptr i8, ptr %i.bv, i64 %i.cl  ; 4 uses
  %next.gep515 = getelementptr i8, ptr %i.cq, i64 20
  %i.cr = getelementptr i8, ptr %i.bv, i64 %i.cl  ; 4 uses
  %next.gep516 = getelementptr i8, ptr %i.cr, i64 24
  %i.cs = getelementptr i8, ptr %i.bv, i64 %i.cl  ; 4 uses
  %next.gep517 = getelementptr i8, ptr %i.cs, i64 28
  %i.ct = load i8, ptr %next.gep510, align 1, !tbaa !84
  %i.cu = load i8, ptr %next.gep511, align 1, !tbaa !84
  %i.cv = load i8, ptr %next.gep512, align 1, !tbaa !84
  %i.cw = load i8, ptr %next.gep513, align 1, !tbaa !84
  %i.cx = load i8, ptr %next.gep514, align 1, !tbaa !84
  %i.cy = load i8, ptr %next.gep515, align 1, !tbaa !84
  %i.cz = load i8, ptr %next.gep516, align 1, !tbaa !84
  %i.da = load i8, ptr %next.gep517, align 1, !tbaa !84
  %i.db = insertelement <8 x i8> poison, i8 %i.ct, i64 0
  %i.dc = insertelement <8 x i8> %i.db, i8 %i.cu, i64 1
  %i.dd = insertelement <8 x i8> %i.dc, i8 %i.cv, i64 2
  %i.de = insertelement <8 x i8> %i.dd, i8 %i.cw, i64 3
  %i.df = insertelement <8 x i8> %i.de, i8 %i.cx, i64 4
  %i.dg = insertelement <8 x i8> %i.df, i8 %i.cy, i64 5
  %i.dh = insertelement <8 x i8> %i.dg, i8 %i.cz, i64 6
  %i.di = insertelement <8 x i8> %i.dh, i8 %i.da, i64 7
  %i.dj = zext <8 x i8> %i.di to <8 x i16>
  %i.dk = getelementptr inbounds nuw i8, ptr %next.gep510, i64 1
  %i.dl = getelementptr i8, ptr %i.cm, i64 5
  %i.dm = getelementptr i8, ptr %i.cn, i64 9
  %i.dn = getelementptr i8, ptr %i.co, i64 13
  %i.do = getelementptr i8, ptr %i.cp, i64 17
  %i.dp = getelementptr i8, ptr %i.cq, i64 21
  %i.dq = getelementptr i8, ptr %i.cr, i64 25
  %i.dr = getelementptr i8, ptr %i.cs, i64 29
  %i.ds = load i8, ptr %i.dk, align 1, !tbaa !84
  %i.dt = load i8, ptr %i.dl, align 1, !tbaa !84
  %i.du = load i8, ptr %i.dm, align 1, !tbaa !84
  %i.dv = load i8, ptr %i.dn, align 1, !tbaa !84
  %i.dw = load i8, ptr %i.do, align 1, !tbaa !84
  %i.dx = load i8, ptr %i.dp, align 1, !tbaa !84
  %i.dy = load i8, ptr %i.dq, align 1, !tbaa !84
  %i.dz = load i8, ptr %i.dr, align 1, !tbaa !84
  %i.ea = insertelement <8 x i8> poison, i8 %i.ds, i64 0
  %i.eb = insertelement <8 x i8> %i.ea, i8 %i.dt, i64 1
  %i.ec = insertelement <8 x i8> %i.eb, i8 %i.du, i64 2
  %i.ed = insertelement <8 x i8> %i.ec, i8 %i.dv, i64 3
  %i.ee = insertelement <8 x i8> %i.ed, i8 %i.dw, i64 4
  %i.ef = insertelement <8 x i8> %i.ee, i8 %i.dx, i64 5
  %i.eg = insertelement <8 x i8> %i.ef, i8 %i.dy, i64 6
  %i.eh = insertelement <8 x i8> %i.eg, i8 %i.dz, i64 7
  %i.ei = zext <8 x i8> %i.eh to <8 x i16>
  %i.ej = getelementptr inbounds nuw i8, ptr %next.gep510, i64 2
  %i.ek = getelementptr i8, ptr %i.cm, i64 6
  %i.el = getelementptr i8, ptr %i.cn, i64 10
  %i.em = getelementptr i8, ptr %i.co, i64 14
  %i.en = getelementptr i8, ptr %i.cp, i64 18
  %i.eo = getelementptr i8, ptr %i.cq, i64 22
  %i.ep = getelementptr i8, ptr %i.cr, i64 26
  %i.eq = getelementptr i8, ptr %i.cs, i64 30
  %i.er = load i8, ptr %i.ej, align 1, !tbaa !84
  %i.es = load i8, ptr %i.ek, align 1, !tbaa !84
  %i.et = load i8, ptr %i.el, align 1, !tbaa !84
  %i.eu = load i8, ptr %i.em, align 1, !tbaa !84
  %i.ev = load i8, ptr %i.en, align 1, !tbaa !84
  %i.ew = load i8, ptr %i.eo, align 1, !tbaa !84
  %i.ex = load i8, ptr %i.ep, align 1, !tbaa !84
  %i.ey = load i8, ptr %i.eq, align 1, !tbaa !84
  %i.ez = insertelement <8 x i8> poison, i8 %i.er, i64 0
  %i.fa = insertelement <8 x i8> %i.ez, i8 %i.es, i64 1
  %i.fb = insertelement <8 x i8> %i.fa, i8 %i.et, i64 2
  %i.fc = insertelement <8 x i8> %i.fb, i8 %i.eu, i64 3
  %i.fd = insertelement <8 x i8> %i.fc, i8 %i.ev, i64 4
  %i.fe = insertelement <8 x i8> %i.fd, i8 %i.ew, i64 5
  %i.ff = insertelement <8 x i8> %i.fe, i8 %i.ex, i64 6
  %i.fg = insertelement <8 x i8> %i.ff, i8 %i.ey, i64 7
  %i.fh = zext <8 x i8> %i.fg to <8 x i16>
  %i.fi = mul nuw nsw <8 x i16> %i.dj, splat (i16 77)
  %i.fj = mul nuw <8 x i16> %i.ei, splat (i16 150)
  %i.fk = add nuw <8 x i16> %i.fj, %i.fi
  %i.fl = mul nuw nsw <8 x i16> %i.fh, splat (i16 29)
  %i.fm = add nuw <8 x i16> %i.fk, %i.fl
  %i.fn = lshr <8 x i16> %i.fm, splat (i16 8)
  %i.fo = trunc nuw <8 x i16> %i.fn to <8 x i8>
  %i.fp = getelementptr inbounds nuw i8, ptr %next.gep510, i64 3
  %i.fq = getelementptr i8, ptr %i.cm, i64 7
  %i.fr = getelementptr i8, ptr %i.cn, i64 11
  %i.fs = getelementptr i8, ptr %i.co, i64 15
  %i.ft = getelementptr i8, ptr %i.cp, i64 19
  %i.fu = getelementptr i8, ptr %i.cq, i64 23
  %i.fv = getelementptr i8, ptr %i.cr, i64 27
  %i.fw = getelementptr i8, ptr %i.cs, i64 31
  %i.fx = load i8, ptr %i.fp, align 1, !tbaa !84
  %i.fy = load i8, ptr %i.fq, align 1, !tbaa !84
  %i.fz = load i8, ptr %i.fr, align 1, !tbaa !84
  %i.ga = load i8, ptr %i.fs, align 1, !tbaa !84
  %i.gb = load i8, ptr %i.ft, align 1, !tbaa !84
  %i.gc = load i8, ptr %i.fu, align 1, !tbaa !84
  %i.gd = load i8, ptr %i.fv, align 1, !tbaa !84
  %i.ge = load i8, ptr %i.fw, align 1, !tbaa !84
  %i.gf = insertelement <8 x i8> poison, i8 %i.fx, i64 0
  %i.gg = insertelement <8 x i8> %i.gf, i8 %i.fy, i64 1
  %i.gh = insertelement <8 x i8> %i.gg, i8 %i.fz, i64 2
  %i.gi = insertelement <8 x i8> %i.gh, i8 %i.ga, i64 3
  %i.gj = insertelement <8 x i8> %i.gi, i8 %i.gb, i64 4
  %i.gk = insertelement <8 x i8> %i.gj, i8 %i.gc, i64 5
  %i.gl = insertelement <8 x i8> %i.gk, i8 %i.gd, i64 6
  %i.gm = insertelement <8 x i8> %i.gl, i8 %i.ge, i64 7
  %interleaved.vec518 = shufflevector <8 x i8> %i.fo, <8 x i8> %i.gm, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec518, ptr %next.gep509, align 1, !tbaa !84
  %index.next519 = add nuw i64 %index508, 8       ; 2 uses
  %i.gn = icmp eq i64 %index.next519, %n.vec506
  br i1 %i.gn, label %middle.block520, label %vector.body507, !llvm.loop !859

middle.block520:                                  ; preds = %vector.body507
  br i1 %cmp.n521, label %.loopexit, label %.lr.ph206.preheader536

.lr.ph206.preheader536:                           ; preds = %.lr.ph206.preheader, %middle.block520
  %.10166205.ph = phi i32 [ %.11167198, %.lr.ph206.preheader ], [ %i.r, %middle.block520 ]
end_hunk_6
begin_hunk_7_@_ZL15stbi__de_iphoneP9stbi__png:bb.a
  %.not50 = icmp eq i32 %i.ad, 0
  %.not20 = icmp eq i32 %i.d, 0                   ; 2 uses
  br i1 %.not50, label %.preheader7, label %.preheader9

.preheader9:                                      ; preds = %bb.b
  br i1 %.not20, label %.loopexit, label %.lr.ph

.preheader7:                                      ; preds = %bb.b
  br i1 %.not20, label %.loopexit, label %.lr.ph15.preheader

.lr.ph15.preheader:                               ; preds = %.preheader7
  %xtraiter = and i32 %i.d, 3                     ; 3 uses
  %i.ae = icmp ult i32 %i.d, 4
  br i1 %i.ae, label %.lr.ph15.epil.preheader, label %.lr.ph15.preheader.new

.lr.ph15.preheader.new:                           ; preds = %.lr.ph15.preheader
  %unroll_iter = and i32 %i.d, -4
  br label %.lr.ph15

.lr.ph:                                           ; preds = %.preheader9, %bb.e
  %.112 = phi i32 [ %i.bg, %bb.e ], [ 0, %.preheader9 ]
  %.14711 = phi ptr [ %i.bf, %bb.e ], [ %.24.val, %.preheader9 ] ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.14711, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !84  ; 3 uses
  %i.ah = load i8, ptr %.14711, align 1, !tbaa !84 ; 2 uses
  %.not51 = icmp eq i8 %i.ag, 0
  br i1 %.not51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ai = lshr i8 %i.ag, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !84
  %i.al = zext i8 %i.ak to i32
  %i.am = mul nuw nsw i32 %i.al, 255
  %i.an = zext nneg i8 %i.ai to i32               ; 3 uses
  %i.ao = add nuw nsw i32 %i.am, %i.an
  %.lhs.trunc = trunc nuw i32 %i.ao to i16
  %.rhs.trunc = zext i8 %i.ag to i16              ; 3 uses
  %i.ap = udiv i16 %.lhs.trunc, %.rhs.trunc
  %i.aq = trunc i16 %i.ap to i8
  store i8 %i.aq, ptr %.14711, align 1, !tbaa !84
  %i.ar = getelementptr inbounds nuw i8, ptr %.14711, i64 1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !84
  %i.at = zext i8 %i.as to i32
  %i.au = mul nuw nsw i32 %i.at, 255
  %i.av = add nuw nsw i32 %i.au, %i.an
  %.lhs.trunc1 = trunc nuw i32 %i.av to i16
  %i.aw = udiv i16 %.lhs.trunc1, %.rhs.trunc
  %i.ax = trunc i16 %i.aw to i8
  store i8 %i.ax, ptr %i.ar, align 1, !tbaa !84
  %i.ay = zext i8 %i.ah to i32
  %i.az = mul nuw nsw i32 %i.ay, 255
  %i.ba = add nuw nsw i32 %i.az, %i.an
  %.lhs.trunc4 = trunc nuw i32 %i.ba to i16
  %i.bb = udiv i16 %.lhs.trunc4, %.rhs.trunc
  %i.bc = trunc i16 %i.bb to i8
  store i8 %i.bc, ptr %i.aj, align 1, !tbaa !84
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !84
  store i8 %i.be, ptr %.14711, align 1, !tbaa !84
  store i8 %i.ah, ptr %i.bd, align 1, !tbaa !84
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %.14711, i64 4
  %i.bg = add nuw i32 %.112, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bg, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !920

.lr.ph15:                                         ; preds = %.lr.ph15, %.lr.ph15.preheader.new
  %.24813 = phi ptr [ %.24.val, %.lr.ph15.preheader.new ], [ %i.bw, %.lr.ph15 ] ; 10 uses
  %niter = phi i32 [ 0, %.lr.ph15.preheader.new ], [ %niter.next.3, %.lr.ph15 ]
  %i.bh = load i8, ptr %.24813, align 1, !tbaa !84
  %i.bi = getelementptr inbounds nuw i8, ptr %.24813, i64 2 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !84
  store i8 %i.bj, ptr %.24813, align 1, !tbaa !84
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !84
  %i.bk = getelementptr inbounds nuw i8, ptr %.24813, i64 4 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !84
  %i.bm = getelementptr inbounds nuw i8, ptr %.24813, i64 6 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !84
  store i8 %i.bn, ptr %i.bk, align 1, !tbaa !84
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !84
  %i.bo = getelementptr inbounds nuw i8, ptr %.24813, i64 8 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !84
  %i.bq = getelementptr inbounds nuw i8, ptr %.24813, i64 10 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !84
  store i8 %i.br, ptr %i.bo, align 1, !tbaa !84
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !84
  %i.bs = getelementptr inbounds nuw i8, ptr %.24813, i64 12 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !84
  %i.bu = getelementptr inbounds nuw i8, ptr %.24813, i64 14 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !84
  store i8 %i.bv, ptr %i.bs, align 1, !tbaa !84
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !84
  %i.bw = getelementptr inbounds nuw i8, ptr %.24813, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit32.unr-lcssa, label %.lr.ph15, !llvm.loop !921

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph18
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.lr.ph18.epil.preheader

.lr.ph18.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18.preheader
  %.04616.epil.init = phi ptr [ %.24.val, %.lr.ph18.preheader ], [ %i.x, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph18.epil

.lr.ph18.epil:                                    ; preds = %.lr.ph18.epil, %.lr.ph18.epil.preheader
  %.04616.epil = phi ptr [ %i.ca, %.lr.ph18.epil ], [ %.04616.epil.init, %.lr.ph18.epil.preheader ] ; 4 uses
  %epil.iter36 = phi i32 [ %epil.iter36.next, %.lr.ph18.epil ], [ 0, %.lr.ph18.epil.preheader ]
  %i.bx = load i8, ptr %.04616.epil, align 1, !tbaa !84
  %i.by = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 2 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !84
  store i8 %i.bz, ptr %.04616.epil, align 1, !tbaa !84
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !84
  %i.ca = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 3
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !922

.loopexit.loopexit32.unr-lcssa:                   ; preds = %.lr.ph15
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph15.epil.preheader

.lr.ph15.epil.preheader:                          ; preds = %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.preheader
  %.24813.epil.init = phi ptr [ %.24.val, %.lr.ph15.preheader ], [ %i.bw, %.loopexit.loopexit32.unr-lcssa ]
  %lcmp.mod34 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph15.epil

.lr.ph15.epil:                                    ; preds = %.lr.ph15.epil, %.lr.ph15.epil.preheader
  %.24813.epil = phi ptr [ %i.ce, %.lr.ph15.epil ], [ %.24813.epil.init, %.lr.ph15.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.epil ], [ 0, %.lr.ph15.epil.preheader ]
  %i.cb = load i8, ptr %.24813.epil, align 1, !tbaa !84
  %i.cc = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !84
  store i8 %i.cd, ptr %.24813.epil, align 1, !tbaa !84
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !84
  %i.ce = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !923

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !119
  %i.c = mul i32 %4, %3
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !117  ; 6 uses
  %i.h = shl i32 %3, %i.d                         ; 4 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 3 uses
  br i1 %i.k, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.b
  %i.m = mul nuw nsw i32 %5, %4                   ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !276
  br label %bb.d

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.r = mul nuw nsw i32 %i.h, %i.m
  %8 = zext nneg i32 %i.r to i64
  %i.s = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %8) #54 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !276
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit.thread, %_ZL17stbi__malloc_mad3iiii.exit
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.u, align 8, !tbaa !71
  br label %bb.ak

bb.e:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.v = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.w, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.f
  %i.x = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.x
  br i1 %.not23.i, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.f
  %i.y = mul i32 %i.g, %4                         ; 18 uses
  %i.z = or i32 %i.y, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.z, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.g:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.aa = icmp eq i32 %6, 0
  br i1 %i.aa, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.g
  %i.ab = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.y, %i.ab
  %i.ac = mul i32 %i.y, %6                        ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 2147483640
  %or.cond = or i1 %.not.i, %i.ad
  br i1 %or.cond, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge

_ZL21stbi__mad3sizes_validiiii.exit.thread:       ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %bb.e, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i
  %i.ae = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.14, ptr %i.ae, align 8, !tbaa !71
  br label %bb.ak

_ZL21stbi__mad3sizes_validiiii.exit._crit_edge:   ; preds = %bb.g, %_ZL21stbi__mul2sizes_validii.exit12.i
  %.pre-phi = phi i32 [ %i.ac, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ 0, %bb.g ]
  %i.af = add i32 %.pre-phi, 7
  %i.ag = lshr i32 %i.af, 3                       ; 8 uses
  br i1 %i.k, label %_ZL21stbi__mad2sizes_validiii.exit, label %_ZL21stbi__mul2sizes_validii.exit.i299

_ZL21stbi__mul2sizes_validii.exit.i299:           ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge
  %i.ah = udiv i32 2147483647, %5
  %.not10.i = icmp samesign ugt i32 %i.ag, %i.ah
  br i1 %.not10.i, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %_ZL21stbi__mad2sizes_validiii.exit

_ZL21stbi__mad2sizes_validiii.exit:               ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, %_ZL21stbi__mul2sizes_validii.exit.i299
  %i.ai = mul nuw nsw i32 %i.ag, %5
  %i.aj = xor i32 %i.ag, 2147483647
  %.not330 = icmp sgt i32 %i.ai, %i.aj
  br i1 %.not330, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %bb.h

_ZL21stbi__mad2sizes_validiii.exit.thread:        ; preds = %_ZL21stbi__mul2sizes_validii.exit.i299, %_ZL21stbi__mad2sizes_validiii.exit
  %i.ak = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.14, ptr %i.ak, align 8, !tbaa !71
  br label %bb.ak

bb.h:                                             ; preds = %_ZL21stbi__mad2sizes_validiii.exit
  %i.al = add nuw nsw i32 %i.ag, 1
  %i.am = mul i32 %i.al, %5
  %i.an = icmp ult i32 %2, %i.am
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.32, ptr %i.ao, align 8, !tbaa !71
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.ap = shl nuw nsw i32 %i.ag, 1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.aq) #54 ; 5 uses
  %.not283 = icmp eq ptr %i.ar, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.as, align 8, !tbaa !71
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.at = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.at, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.at, i32 %i.ag, i32 %4
  %i.au = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.av = sext i32 %spec.select to i64            ; 40 uses
  %i.aw = icmp slt i32 %spec.select, %i.au        ; 4 uses
  %i.ax = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.ay = icmp sgt i32 %i.au, 0
  %i.az = sext i32 %i.au to i64                   ; 13 uses
  %i.ba = icmp eq i32 %6, 8
  %i.bb = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.bc = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.y, 0                  ; 4 uses
  %.030.i305 = add nsw i32 %4, -1                 ; 4 uses
  %i.bd = icmp sgt i32 %4, 0                      ; 4 uses
  %i.be = zext i32 %.030.i305 to i64              ; 16 uses
  %i.bf = zext nneg i32 %i.y to i64
  %i.bg = icmp eq i32 %7, 0
  %9 = zext nneg i32 %6 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @_ZL23stbi__depth_scale_table, i64 %9
  %wide.trip.count460 = zext nneg i32 %5 to i64
  %i.bi = zext nneg i32 %i.ag to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.au to i64     ; 8 uses
  %i.bj = sub nsw i64 %i.az, %i.av                ; 28 uses
  %i.bk = add nsw i32 %i.y, -1                    ; 3 uses
  %i.bl = add nuw nsw i64 %i.be, 1
  %min.iters.check699 = icmp ult i64 %i.bj, 8
  %i.bm = add nsw i64 %i.av, -1
  %diff.check697 = icmp ult i64 %i.bm, 31
  %or.cond733 = select i1 %min.iters.check699, i1 true, i1 %diff.check697
  %min.iters.check701 = icmp ult i64 %i.bj, 32
  %i.bn = and i64 %i.bj, 24
  %n.vec703 = and i64 %i.bj, -32                  ; 4 uses
  %i.bo = add nsw i64 %n.vec703, %i.av
  %cmp.n712 = icmp eq i64 %i.bj, %n.vec703
  %min.epilog.iters.check718 = icmp eq i64 %i.bn, 0
  %n.vec720 = and i64 %i.bj, -8                   ; 3 uses
  %i.bp = add nsw i64 %n.vec720, %i.av
  %cmp.n727 = icmp eq i64 %i.bj, %n.vec720
  %i.bq = add nsw i64 %i.az, -1
  %min.iters.check667 = icmp ult i32 %spec.select, 4
  %min.iters.check669 = icmp ult i32 %spec.select, 32
  %i.br = and i64 %wide.trip.count424, 28
  %n.vec671 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n680 = icmp eq i64 %n.vec671, %wide.trip.count424
  %min.epilog.iters.check685 = icmp eq i64 %i.br, 0
  %n.vec687 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec687, %wide.trip.count424
  %xtraiter747 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  %min.iters.check632 = icmp ult i64 %i.bj, 4
  %i.bs = add nsw i64 %i.av, -1
  %diff.check626 = icmp ult i64 %i.bs, 15
  %min.iters.check634 = icmp ult i64 %i.bj, 16
  %i.bt = and i64 %i.bj, 12
  %n.vec636 = and i64 %i.bj, -16                  ; 4 uses
  %i.bu = add nsw i64 %n.vec636, %i.av
  %cmp.n645 = icmp eq i64 %i.bj, %n.vec636
  %min.epilog.iters.check651 = icmp eq i64 %i.bt, 0
  %n.vec653 = and i64 %i.bj, -4                   ; 3 uses
  %i.bv = add nsw i64 %n.vec653, %i.av
  %cmp.n662 = icmp eq i64 %i.bj, %n.vec653
  %min.iters.check596 = icmp ult i32 %spec.select, 4
  %min.iters.check598 = icmp ult i32 %spec.select, 32
  %i.bw = and i64 %wide.trip.count424, 28
  %n.vec600 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n609 = icmp eq i64 %n.vec600, %wide.trip.count424
  %min.epilog.iters.check614 = icmp eq i64 %i.bw, 0
  %n.vec616 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count424
  %xtraiter749 = and i64 %wide.trip.count424, 1
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  %i.bx = add nsw i64 %wide.trip.count424, -1
  %min.iters.check563 = icmp ult i64 %i.bj, 4
  %i.by = add nsw i64 %i.av, -1
  %diff.check561 = icmp ult i64 %i.by, 15
  %min.iters.check565 = icmp ult i64 %i.bj, 16
  %i.bz = and i64 %i.bj, 12
  %n.vec567 = and i64 %i.bj, -16                  ; 4 uses
  %i.ca = add nsw i64 %n.vec567, %i.av
  %cmp.n575 = icmp eq i64 %i.bj, %n.vec567
  %min.epilog.iters.check581 = icmp eq i64 %i.bz, 0
  %n.vec583 = and i64 %i.bj, -4                   ; 3 uses
  %i.cb = add nsw i64 %n.vec583, %i.av
  %cmp.n591 = icmp eq i64 %i.bj, %n.vec583
  %i.cc = add nsw i64 %i.az, -1
  %min.iters.check530 = icmp ult i32 %i.au, 4
  %min.iters.check532 = icmp ult i32 %i.au, 32
  %i.cd = and i64 %wide.trip.count444, 28
  %n.vec534 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n543 = icmp eq i64 %n.vec534, %wide.trip.count444
  %min.epilog.iters.check548 = icmp eq i64 %i.cd, 0
  %n.vec550 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n557 = icmp eq i64 %n.vec550, %wide.trip.count444
  %xtraiter755 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  %min.iters.check506 = icmp ult i64 %i.bj, 8
  %i.ce = add nsw i64 %i.av, -1
  %diff.check = icmp ult i64 %i.ce, 31
  %or.cond732 = select i1 %min.iters.check506, i1 true, i1 %diff.check
  %min.iters.check507 = icmp ult i64 %i.bj, 32
  %i.cf = and i64 %i.bj, 24
  %n.vec509 = and i64 %i.bj, -32                  ; 4 uses
  %i.cg = add nsw i64 %n.vec509, %i.av
  %cmp.n518 = icmp eq i64 %i.bj, %n.vec509
  %min.epilog.iters.check = icmp eq i64 %i.cf, 0
  %n.vec520 = and i64 %i.bj, -8                   ; 3 uses
  %i.ch = add nsw i64 %n.vec520, %i.av
  %cmp.n525 = icmp eq i64 %i.bj, %n.vec520
  %i.ci = add nsw i64 %i.az, -1
  %xtraiter761 = and i32 %4, 1
  %i.cj = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, 2147483646
  %lcmp.mod762.not = icmp eq i32 %xtraiter761, 0
  %lcmp.mod763 = trunc i32 %4 to i1
  %xtraiter764 = and i32 %i.y, 3                  ; 3 uses
  %i.ck = icmp ult i32 %i.y, 4
  %unroll_iter767 = and i32 %i.y, 2147483644
  %lcmp.mod765.not = icmp eq i32 %xtraiter764, 0
  %lcmp.mod766 = icmp ne i32 %xtraiter764, 0
  %i.cl = and i64 %i.be, 1
  %lcmp.mod770.not.not = icmp eq i64 %i.cl, 0
  %i.cm = shl nuw nsw i64 %i.be, 2
  %i.cn = mul nuw nsw i64 %i.be, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.be, -1
  %i.co = icmp eq i32 %.030.i305, 0
  %i.cp = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %i.cp, 2147483640              ; 3 uses
  %i.cq = sub nsw i64 %i.be, %n.vec
  %cmp.n = icmp eq i64 %n.vec, %i.cp
  %xtraiter772 = and i32 %i.y, 1
  %i.cr = icmp eq i32 %i.bk, 0
  %unroll_iter776 = and i32 %i.y, 2147483646
  %lcmp.mod774.not = icmp eq i32 %xtraiter772, 0
  %lcmp.mod775 = trunc i32 %i.y to i1
  %xtraiter778 = and i32 %i.y, 1
  %i.cs = icmp eq i32 %i.bk, 0
  %unroll_iter782 = and i32 %i.y, 2147483646
  %lcmp.mod780.not = icmp eq i32 %xtraiter778, 0
  %lcmp.mod781 = trunc i32 %i.y to i1
  %xtraiter784 = and i32 %i.y, 1
  %i.ct = icmp eq i32 %i.bk, 0
  %unroll_iter788 = and i32 %i.y, 2147483646
  %lcmp.mod786.not = icmp eq i32 %xtraiter784, 0
  %lcmp.mod787 = trunc i32 %i.y to i1
  %i.cu = and i64 %i.be, 1
  %lcmp.mod791.not.not = icmp eq i64 %i.cu, 0
  %i.cv = shl nuw nsw i64 %i.be, 2
  %i.cw = mul nuw nsw i64 %i.be, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.be, -1
  %i.cx = icmp eq i32 %.030.i305, 0
  %xtraiter793 = and i64 %i.bl, 3                 ; 2 uses
  %lcmp.mod794.not = icmp eq i64 %xtraiter793, 0
  %i.cy = icmp ult i32 %4, 4
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 4 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.qi, %.loopexit ] ; 2 uses
  %i.cz = trunc i64 %indvars.iv457 to i32         ; 2 uses
  %i.da = trunc i64 %indvars.iv457 to i1
  %i.db = select i1 %i.da, i64 %i.bi, i64 0       ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.db ; 75 uses
  %i.dd = and i32 %i.cz, 1
  %i.de = xor i32 %i.dd, 1
  %i.df = mul nuw nsw i32 %i.de, %i.ag
  %i.dg = zext nneg i32 %i.df to i64              ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.dg ; 30 uses
  %i.di = load ptr, ptr %i.t, align 8, !tbaa !276
  %i.dj = mul i32 %i.e, %i.cz
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dk ; 33 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.dn = load i8, ptr %.0272398, align 1, !tbaa !84 ; 3 uses
  %i.do = icmp ugt i8 %i.dn, 4
  br i1 %i.do, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = icmp eq i64 %indvars.iv457, 0
  br i1 %i.dp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dq = zext nneg i8 %i.dn to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @_ZL16first_row_filter, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !84
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.ds, %bb.o ], [ %i.dn, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

.preheader356:                                    ; preds = %bb.p
  br i1 %i.ax, label %iter.check682, label %.preheader354

iter.check682:                                    ; preds = %.preheader356
  %i.dt = sub nsw i64 %i.dg, %i.db
  %diff.check665 = icmp ugt i64 %i.dt, -32
  %or.cond729 = select i1 %min.iters.check667, i1 true, i1 %diff.check665
  br i1 %or.cond729, label %.lr.ph360.preheader, label %vector.main.loop.iter.check668

vector.main.loop.iter.check668:                   ; preds = %iter.check682
  br i1 %min.iters.check669, label %vec.epilog.ph686, label %vector.body672

vector.body672:                                   ; preds = %vector.main.loop.iter.check668, %vector.body672
  %index673 = phi i64 [ %index.next678, %vector.body672 ], [ 0, %vector.main.loop.iter.check668 ] ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index673 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %wide.load674 = load <16 x i8>, ptr %i.du, align 1, !tbaa !84
  %wide.load675 = load <16 x i8>, ptr %i.dv, align 1, !tbaa !84
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 %index673 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load676 = load <16 x i8>, ptr %i.dw, align 1, !tbaa !84
  %wide.load677 = load <16 x i8>, ptr %i.dx, align 1, !tbaa !84
  %i.dy = add <16 x i8> %wide.load676, %wide.load674
  %i.dz = add <16 x i8> %wide.load677, %wide.load675
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index673 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store <16 x i8> %i.dy, ptr %i.ea, align 1, !tbaa !84
  store <16 x i8> %i.dz, ptr %i.eb, align 1, !tbaa !84
  %index.next678 = add nuw i64 %index673, 32      ; 2 uses
  %i.ec = icmp eq i64 %index.next678, %n.vec671
  br i1 %i.ec, label %middle.block679, label %vector.body672, !llvm.loop !924

middle.block679:                                  ; preds = %vector.body672
  br i1 %cmp.n680, label %.preheader354, label %vec.epilog.iter.check684

vec.epilog.iter.check684:                         ; preds = %middle.block679
  br i1 %min.epilog.iters.check685, label %.lr.ph360.preheader, label %vec.epilog.ph686, !prof !112

vec.epilog.ph686:                                 ; preds = %vector.main.loop.iter.check668, %vec.epilog.iter.check684
  %vec.epilog.resume.val681 = phi i64 [ %n.vec671, %vec.epilog.iter.check684 ], [ 0, %vector.main.loop.iter.check668 ]
  br label %vec.epilog.vector.body688

vec.epilog.vector.body688:                        ; preds = %vec.epilog.vector.body688, %vec.epilog.ph686
  %index689 = phi i64 [ %vec.epilog.resume.val681, %vec.epilog.ph686 ], [ %index.next692, %vec.epilog.vector.body688 ] ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index689
  %wide.load690 = load <4 x i8>, ptr %i.ed, align 1, !tbaa !84
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dh, i64 %index689
  %wide.load691 = load <4 x i8>, ptr %i.ee, align 1, !tbaa !84
  %i.ef = add <4 x i8> %wide.load691, %wide.load690
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index689
  store <4 x i8> %i.ef, ptr %i.eg, align 1, !tbaa !84
  %index.next692 = add nuw i64 %index689, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next692, %n.vec687
  br i1 %i.eh, label %vec.epilog.middle.block693, label %vec.epilog.vector.body688, !llvm.loop !925

vec.epilog.middle.block693:                       ; preds = %vec.epilog.vector.body688
  br i1 %cmp.n694, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check682, %vec.epilog.iter.check684, %vec.epilog.middle.block693
  %indvars.iv421.ph = phi i64 [ 0, %iter.check682 ], [ %n.vec671, %vec.epilog.iter.check684 ], [ %n.vec687, %vec.epilog.middle.block693 ] ; 3 uses
  br i1 %lcmp.mod748.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv421.prol
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !84
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv421.prol
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !84
  %.narrow286.prol = add i8 %i.el, %i.ej
  %i.em = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.em, align 1, !tbaa !84
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter747
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !926

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.en = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.eo = icmp ugt i64 %i.en, -4
  br i1 %i.eo, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.p
  br i1 %i.ax, label %iter.check611, label %.preheader351

iter.check611:                                    ; preds = %.preheader353
  %i.ep = sub nsw i64 %i.dg, %i.db
  %diff.check594 = icmp ugt i64 %i.ep, -32
  %or.cond730 = select i1 %min.iters.check596, i1 true, i1 %diff.check594
  br i1 %or.cond730, label %.lr.ph364.preheader, label %vector.main.loop.iter.check597

vector.main.loop.iter.check597:                   ; preds = %iter.check611
  br i1 %min.iters.check598, label %vec.epilog.ph615, label %vector.body601

vector.body601:                                   ; preds = %vector.main.loop.iter.check597, %vector.body601
  %index602 = phi i64 [ %index.next607, %vector.body601 ], [ 0, %vector.main.loop.iter.check597 ] ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index602 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load603 = load <16 x i8>, ptr %i.eq, align 1, !tbaa !84
  %wide.load604 = load <16 x i8>, ptr %i.er, align 1, !tbaa !84
  %i.es = getelementptr inbounds nuw i8, ptr %i.dh, i64 %index602 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load605 = load <16 x i8>, ptr %i.es, align 1, !tbaa !84
  %wide.load606 = load <16 x i8>, ptr %i.et, align 1, !tbaa !84
  %i.eu = lshr <16 x i8> %wide.load605, splat (i8 1)
  %i.ev = lshr <16 x i8> %wide.load606, splat (i8 1)
  %i.ew = add <16 x i8> %i.eu, %wide.load603
  %i.ex = add <16 x i8> %i.ev, %wide.load604
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index602 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <16 x i8> %i.ew, ptr %i.ey, align 1, !tbaa !84
  store <16 x i8> %i.ex, ptr %i.ez, align 1, !tbaa !84
  %index.next607 = add nuw i64 %index602, 32      ; 2 uses
  %i.fa = icmp eq i64 %index.next607, %n.vec600
  br i1 %i.fa, label %middle.block608, label %vector.body601, !llvm.loop !927

middle.block608:                                  ; preds = %vector.body601
  br i1 %cmp.n609, label %.preheader351, label %vec.epilog.iter.check613

vec.epilog.iter.check613:                         ; preds = %middle.block608
  br i1 %min.epilog.iters.check614, label %.lr.ph364.preheader, label %vec.epilog.ph615, !prof !112

vec.epilog.ph615:                                 ; preds = %vector.main.loop.iter.check597, %vec.epilog.iter.check613
  %vec.epilog.resume.val610 = phi i64 [ %n.vec600, %vec.epilog.iter.check613 ], [ 0, %vector.main.loop.iter.check597 ]
  br label %vec.epilog.vector.body617

vec.epilog.vector.body617:                        ; preds = %vec.epilog.vector.body617, %vec.epilog.ph615
  %index618 = phi i64 [ %vec.epilog.resume.val610, %vec.epilog.ph615 ], [ %index.next621, %vec.epilog.vector.body617 ] ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index618
  %wide.load619 = load <4 x i8>, ptr %i.fb, align 1, !tbaa !84
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dh, i64 %index618
  %wide.load620 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !84
  %i.fd = lshr <4 x i8> %wide.load620, splat (i8 1)
  %i.fe = add <4 x i8> %i.fd, %wide.load619
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index618
  store <4 x i8> %i.fe, ptr %i.ff, align 1, !tbaa !84
  %index.next621 = add nuw i64 %index618, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next621, %n.vec616
  br i1 %i.fg, label %vec.epilog.middle.block622, label %vec.epilog.vector.body617, !llvm.loop !928

vec.epilog.middle.block622:                       ; preds = %vec.epilog.vector.body617
  br i1 %cmp.n623, label %.preheader351, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %iter.check611, %vec.epilog.iter.check613, %vec.epilog.middle.block622
end_hunk_7
begin_hunk_8_@_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii:bb.a
  %i.xe = or disjoint i16 %i.xa, %i.xd
  store i16 %i.xe, ptr %i.ww, align 2, !tbaa !90
  %i.xf = getelementptr inbounds nuw i8, ptr %.0381, i64 6
  %i.xg = getelementptr inbounds nuw i8, ptr %.0249380, i64 6
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !84
  %i.xi = zext i8 %i.xh to i16
  %i.xj = shl nuw i16 %i.xi, 8
  %i.xk = getelementptr inbounds nuw i8, ptr %.0249380, i64 7
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !84
  %i.xm = zext i8 %i.xl to i16
  %i.xn = or disjoint i16 %i.xj, %i.xm
  store i16 %i.xn, ptr %i.xf, align 2, !tbaa !90
  %i.xo = getelementptr inbounds nuw i8, ptr %.0381, i64 8 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %.0249380, i64 8 ; 2 uses
  %niter768.next.3 = add i32 %niter768, 4         ; 2 uses
  %niter768.ncmp.3 = icmp eq i32 %niter768.next.3, %unroll_iter767
  br i1 %niter768.ncmp.3, label %.loopexit.loopexit740.unr-lcssa, label %.lr.ph382, !llvm.loop !955

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.bc, label %.preheader344, label %.preheader346

.preheader346:                                    ; preds = %bb.ai
  br i1 %i.w, label %.loopexit, label %.lr.ph374

.preheader344:                                    ; preds = %bb.ai
  br i1 %i.w, label %.loopexit, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %.preheader344
  br i1 %i.cj, label %.lr.ph378.epil.preheader, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %.lr.ph378
  %.1377 = phi ptr [ %i.yi, %.lr.ph378 ], [ %i.dl, %.lr.ph378.preheader ] ; 5 uses
  %.1250376 = phi ptr [ %i.yj, %.lr.ph378 ], [ %i.dc, %.lr.ph378.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph378 ], [ 0, %.lr.ph378.preheader ]
  %i.xq = load i8, ptr %.1250376, align 1, !tbaa !84
  %i.xr = zext i8 %i.xq to i16
  %i.xs = shl nuw i16 %i.xr, 8
  %i.xt = getelementptr inbounds nuw i8, ptr %.1250376, i64 1
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !84
  %i.xv = zext i8 %i.xu to i16
  %i.xw = or disjoint i16 %i.xs, %i.xv
  store i16 %i.xw, ptr %.1377, align 2, !tbaa !90
  %i.xx = getelementptr inbounds nuw i8, ptr %.1377, i64 2
  store i16 -1, ptr %i.xx, align 2, !tbaa !90
  %i.xy = getelementptr inbounds nuw i8, ptr %.1377, i64 4
  %i.xz = getelementptr inbounds nuw i8, ptr %.1250376, i64 2
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !84
  %i.yb = zext i8 %i.ya to i16
  %i.yc = shl nuw i16 %i.yb, 8
  %i.yd = getelementptr inbounds nuw i8, ptr %.1250376, i64 3
  %i.ye = load i8, ptr %i.yd, align 1, !tbaa !84
  %i.yf = zext i8 %i.ye to i16
  %i.yg = or disjoint i16 %i.yc, %i.yf
  store i16 %i.yg, ptr %i.xy, align 2, !tbaa !90
  %i.yh = getelementptr inbounds nuw i8, ptr %.1377, i64 6
  store i16 -1, ptr %i.yh, align 2, !tbaa !90
  %i.yi = getelementptr inbounds nuw i8, ptr %.1377, i64 8 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.1250376, i64 4 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit741.unr-lcssa, label %.lr.ph378, !llvm.loop !956

.lr.ph374:                                        ; preds = %.preheader346, %.lr.ph374
  %.2373 = phi ptr [ %i.zl, %.lr.ph374 ], [ %i.dl, %.preheader346 ] ; 5 uses
  %.2251372 = phi ptr [ %i.zm, %.lr.ph374 ], [ %i.dc, %.preheader346 ] ; 7 uses
  %.5270371 = phi i32 [ %i.zk, %.lr.ph374 ], [ 0, %.preheader346 ]
  %i.yk = load i8, ptr %.2251372, align 1, !tbaa !84
  %i.yl = zext i8 %i.yk to i16
  %i.ym = shl nuw i16 %i.yl, 8
  %i.yn = getelementptr inbounds nuw i8, ptr %.2251372, i64 1
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !84
  %i.yp = zext i8 %i.yo to i16
  %i.yq = or disjoint i16 %i.ym, %i.yp
  store i16 %i.yq, ptr %.2373, align 2, !tbaa !90
  %i.yr = getelementptr inbounds nuw i8, ptr %.2251372, i64 2
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !84
  %i.yt = zext i8 %i.ys to i16
  %i.yu = shl nuw i16 %i.yt, 8
  %i.yv = getelementptr inbounds nuw i8, ptr %.2251372, i64 3
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !84
  %i.yx = zext i8 %i.yw to i16
  %i.yy = or disjoint i16 %i.yu, %i.yx
  %i.yz = getelementptr inbounds nuw i8, ptr %.2373, i64 2
  store i16 %i.yy, ptr %i.yz, align 2, !tbaa !90
  %i.za = getelementptr inbounds nuw i8, ptr %.2251372, i64 4
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !84
  %i.zc = zext i8 %i.zb to i16
  %i.zd = shl nuw i16 %i.zc, 8
  %i.ze = getelementptr inbounds nuw i8, ptr %.2251372, i64 5
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !84
  %i.zg = zext i8 %i.zf to i16
  %i.zh = or disjoint i16 %i.zd, %i.zg
  %i.zi = getelementptr inbounds nuw i8, ptr %.2373, i64 4
  store i16 %i.zh, ptr %i.zi, align 2, !tbaa !90
  %i.zj = getelementptr inbounds nuw i8, ptr %.2373, i64 6
  store i16 -1, ptr %i.zj, align 2, !tbaa !90
  %i.zk = add nuw i32 %.5270371, 1                ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.2373, i64 8
  %i.zm = getelementptr inbounds nuw i8, ptr %.2251372, i64 6
  %exitcond451.not = icmp eq i32 %i.zk, %4
  br i1 %exitcond451.not, label %.loopexit, label %.lr.ph374, !llvm.loop !957

.loopexit.loopexit740.unr-lcssa:                  ; preds = %.lr.ph382
  br i1 %lcmp.mod765.not, label %.loopexit, label %.lr.ph382.epil.preheader

.lr.ph382.epil.preheader:                         ; preds = %.loopexit.loopexit740.unr-lcssa, %.lr.ph382.preheader
  %.0381.epil.init = phi ptr [ %i.dl, %.lr.ph382.preheader ], [ %i.xo, %.loopexit.loopexit740.unr-lcssa ]
  %.0249380.epil.init = phi ptr [ %i.dc, %.lr.ph382.preheader ], [ %i.xp, %.loopexit.loopexit740.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod766)
  br label %.lr.ph382.epil

.lr.ph382.epil:                                   ; preds = %.lr.ph382.epil, %.lr.ph382.epil.preheader
  %.0381.epil = phi ptr [ %i.zu, %.lr.ph382.epil ], [ %.0381.epil.init, %.lr.ph382.epil.preheader ] ; 2 uses
  %.0249380.epil = phi ptr [ %i.zv, %.lr.ph382.epil ], [ %.0249380.epil.init, %.lr.ph382.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph382.epil ], [ 0, %.lr.ph382.epil.preheader ]
  %i.zn = load i8, ptr %.0249380.epil, align 1, !tbaa !84
  %i.zo = zext i8 %i.zn to i16
  %i.zp = shl nuw i16 %i.zo, 8
  %i.zq = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 1
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !84
  %i.zs = zext i8 %i.zr to i16
  %i.zt = or disjoint i16 %i.zp, %i.zs
  store i16 %i.zt, ptr %.0381.epil, align 2, !tbaa !90
  %i.zu = getelementptr inbounds nuw i8, ptr %.0381.epil, i64 2
  %i.zv = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter764
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph382.epil, !llvm.loop !958

.loopexit.loopexit741.unr-lcssa:                  ; preds = %.lr.ph378
  br i1 %lcmp.mod762.not, label %.loopexit, label %.lr.ph378.epil.preheader

.lr.ph378.epil.preheader:                         ; preds = %.loopexit.loopexit741.unr-lcssa, %.lr.ph378.preheader
  %.1377.epil.init = phi ptr [ %i.dl, %.lr.ph378.preheader ], [ %i.yi, %.loopexit.loopexit741.unr-lcssa ] ; 2 uses
  %.1250376.epil.init = phi ptr [ %i.dc, %.lr.ph378.preheader ], [ %i.yj, %.loopexit.loopexit741.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod763)
  %i.zw = load i8, ptr %.1250376.epil.init, align 1, !tbaa !84
  %i.zx = zext i8 %i.zw to i16
  %i.zy = shl nuw i16 %i.zx, 8
  %i.zz = getelementptr inbounds nuw i8, ptr %.1250376.epil.init, i64 1
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !84
  %i.aab = zext i8 %i.aaa to i16
  %i.aac = or disjoint i16 %i.zy, %i.aab
  store i16 %i.aac, ptr %.1377.epil.init, align 2, !tbaa !90
  %i.aad = getelementptr inbounds nuw i8, ptr %.1377.epil.init, i64 2
  store i16 -1, ptr %i.aad, align 2, !tbaa !90
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph374, %.lr.ph378.epil.preheader, %.loopexit.loopexit741.unr-lcssa, %.loopexit.loopexit740.unr-lcssa, %.lr.ph382.epil, %.lr.ph.i308.prol.loopexit, %.lr.ph.i308, %.lr.ph32.i314, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph32.i.prol.loopexit, %.lr.ph32.i, %middle.block, %.preheader346, %.preheader344, %.preheader342, %.loopexit335, %bb.ag, %bb.ae, %.preheader26.i, %.preheader.i, %.preheader26.i306, %.preheader.i312
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count460
  br i1 %exitcond461.not, label %._crit_edge, label %bb.m, !llvm.loop !959

._crit_edge:                                      ; preds = %.loopexit, %bb.l
  tail call void @free(ptr noundef %i.ar) #53
  br label %bb.ak

bb.aj:                                            ; preds = %bb.m
  %i.aae = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.33, ptr %i.aae, align 8, !tbaa !71
  tail call void @free(ptr noundef %i.ar) #53
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge, %bb.k, %bb.i, %_ZL21stbi__mad2sizes_validiii.exit.thread, %_ZL21stbi__mad3sizes_validiiii.exit.thread, %bb.d
  %.0271 = phi i32 [ 0, %bb.i ], [ 0, %bb.d ], [ 0, %_ZL21stbi__mad3sizes_validiiii.exit.thread ], [ 0, %bb.k ], [ 0, %_ZL21stbi__mad2sizes_validiii.exit.thread ], [ 0, %bb.aj ], [ 1, %._crit_edge ]
  ret i32 %.0271
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal fastcc noalias noundef ptr @_ZL17stbi__malloc_mad3iiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 16) %3) unnamed_addr #27 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i, label %bb.b, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not23.i = icmp sgt i32 %0, %i.c
  br i1 %.not23.i, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.b
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i10.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10.i, label %bb.c, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %_ZL21stbi__mad3sizes_validiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mad3sizes_validiiii.exit

_ZL21stbi__mad3sizes_validiiii.exit:              ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i
  %i.h = mul nuw nsw i32 %i.d, %2                 ; 2 uses
  %i.i = xor i32 %3, 2147483647
  %.not9 = icmp sgt i32 %i.h, %i.i
  br i1 %.not9, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZL21stbi__mad3sizes_validiiii.exit
  %i.j = add nuw nsw i32 %i.h, %3
  %4 = zext nneg i32 %i.j to i64
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %4) #54
  br label %_ZL21stbi__mad3sizes_validiiii.exit.thread

_ZL21stbi__mad3sizes_validiiii.exit.thread:       ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %bb.a, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i, %_ZL21stbi__mad3sizes_validiiii.exit, %bb.d
  %.0 = phi ptr [ %i.k, %bb.d ], [ null, %_ZL21stbi__mad3sizes_validiiii.exit ], [ null, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ null, %_ZL21stbi__mul2sizes_validii.exit.i ], [ null, %bb.a ], [ null, %_ZL21stbi__mul2sizes_validii.exit.thread15.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL21stbi__mad3sizes_validiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 16) %3) unnamed_addr #28 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i, label %bb.b, label %_ZL21stbi__mul2sizes_validii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %_ZL21stbi__mul2sizes_validii.exit.thread15, label %_ZL21stbi__mul2sizes_validii.exit

_ZL21stbi__mul2sizes_validii.exit:                ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not23 = icmp sgt i32 %0, %i.c
  br i1 %.not23, label %_ZL21stbi__mul2sizes_validii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15

_ZL21stbi__mul2sizes_validii.exit.thread15:       ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i10 = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10, label %bb.c, label %_ZL21stbi__mul2sizes_validii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %_ZL21stbi__mul2sizes_validii.exit12.thread20, label %_ZL21stbi__mul2sizes_validii.exit12

_ZL21stbi__mul2sizes_validii.exit12:              ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not = icmp sgt i32 %i.d, %i.g
  br i1 %.not, label %_ZL21stbi__mul2sizes_validii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit12.thread20

_ZL21stbi__mul2sizes_validii.exit12.thread20:     ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12
  %i.h = mul nuw nsw i32 %i.d, %2
  %i.i = xor i32 %3, 2147483647
  %i.j = icmp sle i32 %i.h, %i.i
  %i.k = zext i1 %i.j to i32
  br label %_ZL21stbi__mul2sizes_validii.exit.thread

_ZL21stbi__mul2sizes_validii.exit.thread:         ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15, %bb.a, %_ZL21stbi__mul2sizes_validii.exit12.thread20, %_ZL21stbi__mul2sizes_validii.exit12, %_ZL21stbi__mul2sizes_validii.exit
  %i.l = phi i32 [ 0, %_ZL21stbi__mul2sizes_validii.exit12 ], [ 0, %_ZL21stbi__mul2sizes_validii.exit ], [ %i.k, %_ZL21stbi__mul2sizes_validii.exit12.thread20 ], [ 0, %bb.a ], [ 0, %_ZL21stbi__mul2sizes_validii.exit.thread15 ]
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal fastcc noalias noundef ptr @_ZL17stbi__malloc_mad2iii(i32 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 16) %2) unnamed_addr #27 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i, label %bb.b, label %_ZL21stbi__mad2sizes_validiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %_ZL21stbi__mad2sizes_validiii.exit, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not10.i = icmp sgt i32 %0, %i.c
  br i1 %.not10.i, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %_ZL21stbi__mad2sizes_validiii.exit

_ZL21stbi__mad2sizes_validiii.exit:               ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit.i
  %i.d = mul nuw nsw i32 %1, %0                   ; 2 uses
  %i.e = xor i32 %2, 2147483647
  %.not7 = icmp sgt i32 %i.d, %i.e
  br i1 %.not7, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZL21stbi__mad2sizes_validiii.exit
  %i.f = add nuw nsw i32 %i.d, %2
  %3 = zext nneg i32 %i.f to i64
  %i.g = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %3) #54
  br label %_ZL21stbi__mad2sizes_validiii.exit.thread

_ZL21stbi__mad2sizes_validiii.exit.thread:        ; preds = %bb.a, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mad2sizes_validiii.exit, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ null, %_ZL21stbi__mad2sizes_validiii.exit ], [ null, %_ZL21stbi__mul2sizes_validii.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef nonnull %0) unnamed_addr #9 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  %i.b = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  %i.c = shl nuw i32 %i.b, 16
  %i.d = or disjoint i32 %i.c, %i.a
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 65536) i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !82
  %i.g = load i8, ptr %i.b, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !79
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZL10stbi__get8P13stbi__context.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !78
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !12 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !80
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !80
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre.i = load i8, ptr %i.n, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.f, %bb.e
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8, !tbaa !85
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.b, %bb.c, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %i.ah = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.d, %bb.c ]
  %i.ai = phi ptr [ %i.f, %bb.b ], [ %i.ag, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.b, %bb.c ] ; 3 uses
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.af, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.c ]
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !82
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit7

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !79
  %.not.i2 = icmp eq i32 %i.an, 0
  br i1 %.not.i2, label %_ZL10stbi__get8P13stbi__context.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !77
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !78
  %i.av = tail call noundef i32 %i.ap(ptr noundef %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au), !inline_history !12 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !81
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !80
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !80
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.am, align 8, !tbaa !79
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4

bb.k:                                             ; preds = %bb.i
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i3 = load i8, ptr %i.as, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4

_ZL19stbi__refill_bufferP13stbi__context.exit.i4: ; preds = %bb.k, %bb.j
  %i.bk = phi i8 [ 0, %bb.j ], [ %.pre.i3, %bb.k ]
  %.sink.i.i5 = phi ptr [ %i.bh, %bb.j ], [ %i.bj, %bb.k ]
  store ptr %.sink.i.i5, ptr %i.c, align 8, !tbaa !85
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit7

_ZL10stbi__get8P13stbi__context.exit7:            ; preds = %bb.g, %bb.h, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4
  %.0.i6 = phi i8 [ %i.al, %bb.g ], [ %i.bk, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4 ], [ 0, %bb.h ]
  %i.bm = zext i8 %.0.i to i32
  %i.bn = zext i8 %.0.i6 to i32
  %i.bo = shl nuw nsw i32 %i.bn, 8
  %i.bp = or disjoint i32 %i.bo, %i.bm
  ret i32 %i.bp
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !82
  %i.g = load i8, ptr %i.b, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !79
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZL10stbi__get8P13stbi__context.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !78
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !12 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !80
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !80
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_8
begin_hunk_9_@_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_:bb.a
bb.m:                                             ; preds = %.cont46
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store ptr %i.bx, ptr %i.d, align 8, !tbaa !82
  %i.by = load i8, ptr %i.bq, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit45

bb.n:                                             ; preds = %.cont46
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !79
  %.not.i40 = icmp eq i32 %i.ca, 0
  br i1 %.not.i40, label %_ZL10stbi__get8P13stbi__context.exit45, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !83
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !77
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !78
  %i.ci = tail call noundef i32 %i.cc(ptr noundef %i.ce, ptr noundef nonnull %i.cf, i32 noundef %i.ch), !inline_history !12 ; 2 uses
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = trunc i64 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !80
  %i.cr = add nsw i32 %i.cq, %i.co
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !80
  %i.cs = icmp eq i32 %i.ci, 0
  br i1 %i.cs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bz, align 8, !tbaa !79
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.cf, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i42

bb.q:                                             ; preds = %bb.o
  %i.cu = sext i32 %i.ci to i64
  %i.cv = getelementptr inbounds i8, ptr %i.cf, i64 %i.cu
  %.pre.i41 = load i8, ptr %i.cf, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i42

_ZL19stbi__refill_bufferP13stbi__context.exit.i42: ; preds = %bb.q, %bb.p
  %i.cw = phi i8 [ 0, %bb.p ], [ %.pre.i41, %bb.q ]
  %.sink.i.i43 = phi ptr [ %i.ct, %bb.p ], [ %i.cv, %bb.q ]
  store ptr %.sink.i.i43, ptr %i.g, align 8, !tbaa !85
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.cx, ptr %i.d, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit45

_ZL10stbi__get8P13stbi__context.exit45:           ; preds = %bb.m, %bb.n, %_ZL19stbi__refill_bufferP13stbi__context.exit.i42
  %.0.i44 = phi i8 [ %i.by, %bb.m ], [ %i.cw, %_ZL19stbi__refill_bufferP13stbi__context.exit.i42 ], [ 0, %bb.n ]
  store i8 %.0.i44, ptr %i.a, align 1, !tbaa !84
  call fastcc void @_ZL25stbi__pnm_skip_whitespaceP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a)
  %i.cy = call fastcc noundef i32 @_ZL20stbi__pnm_getintegerP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 2 uses
  br i1 %.not, label %_ZL10stbi__get8P13stbi__context.exit45.cont, label %_ZL10stbi__get8P13stbi__context.exit45.else

_ZL10stbi__get8P13stbi__context.exit45.else:      ; preds = %_ZL10stbi__get8P13stbi__context.exit45
  store i32 %i.cy, ptr %1, align 4, !tbaa !72
  br label %_ZL10stbi__get8P13stbi__context.exit45.cont

_ZL10stbi__get8P13stbi__context.exit45.cont:      ; preds = %_ZL10stbi__get8P13stbi__context.exit45, %_ZL10stbi__get8P13stbi__context.exit45.else
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit45.cont
  %i.da = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.95, ptr %i.da, align 8, !tbaa !71
  br label %bb.x

bb.s:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit45.cont
  call fastcc void @_ZL25stbi__pnm_skip_whitespaceP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a)
  %i.db = call fastcc noundef i32 @_ZL20stbi__pnm_getintegerP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 2 uses
  br i1 %.not30, label %.cont, label %.else

.else:                                            ; preds = %bb.s
  store i32 %i.db, ptr %2, align 4, !tbaa !72
  br label %.cont

.cont:                                            ; preds = %bb.s, %.else
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.cont
  %i.dd = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.95, ptr %i.dd, align 8, !tbaa !71
  br label %bb.x

bb.u:                                             ; preds = %.cont
  call fastcc void @_ZL25stbi__pnm_skip_whitespaceP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a)
  %i.de = call fastcc noundef i32 @_ZL20stbi__pnm_getintegerP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 2 uses
  %i.df = icmp sgt i32 %i.de, 65535
  br i1 %i.df, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.96, ptr %i.dg, align 8, !tbaa !71
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.dh = icmp sgt i32 %i.de, 255
  %. = select i1 %i.dh, i32 16, i32 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t, %bb.r, %_ZL10stbi__get8P13stbi__context.exit39.thread
  %.0 = phi i32 [ 0, %_ZL10stbi__get8P13stbi__context.exit39.thread ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.v ], [ %., %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL21stbi__mad4sizes_validiiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 -268435456, 268435456) %3) unnamed_addr #28 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i, label %bb.b, label %_ZL21stbi__mul2sizes_validii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %_ZL21stbi__mul2sizes_validii.exit.thread24, label %_ZL21stbi__mul2sizes_validii.exit

_ZL21stbi__mul2sizes_validii.exit:                ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not37 = icmp sgt i32 %0, %i.c
  br i1 %.not37, label %_ZL21stbi__mul2sizes_validii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread24

_ZL21stbi__mul2sizes_validii.exit.thread24:       ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i16 = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i16, label %bb.c, label %_ZL21stbi__mul2sizes_validii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %_ZL21stbi__mul2sizes_validii.exit18.thread29, label %_ZL21stbi__mul2sizes_validii.exit18

_ZL21stbi__mul2sizes_validii.exit18:              ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not = icmp sgt i32 %i.d, %i.g
  br i1 %.not, label %_ZL21stbi__mul2sizes_validii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit18.thread29

_ZL21stbi__mul2sizes_validii.exit18.thread29:     ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit18
  %i.h = mul nuw nsw i32 %i.d, %2                 ; 2 uses
  %i.i = or i32 %3, %i.h
  %or.cond.not.i19 = icmp sgt i32 %i.i, -1
  br i1 %or.cond.not.i19, label %bb.d, label %_ZL21stbi__mul2sizes_validii.exit.thread

bb.d:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %_ZL21stbi__mul2sizes_validii.exit21.thread34, label %_ZL21stbi__mul2sizes_validii.exit21

_ZL21stbi__mul2sizes_validii.exit21:              ; preds = %bb.d
  %i.k = udiv i32 2147483647, %3
  %.not38 = icmp sgt i32 %i.h, %i.k
  br i1 %.not38, label %_ZL21stbi__mul2sizes_validii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit21.thread34

_ZL21stbi__mul2sizes_validii.exit21.thread34:     ; preds = %bb.d, %_ZL21stbi__mul2sizes_validii.exit21
  br label %_ZL21stbi__mul2sizes_validii.exit.thread

_ZL21stbi__mul2sizes_validii.exit.thread:         ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29, %_ZL21stbi__mul2sizes_validii.exit.thread24, %bb.a, %_ZL21stbi__mul2sizes_validii.exit21.thread34, %_ZL21stbi__mul2sizes_validii.exit21, %_ZL21stbi__mul2sizes_validii.exit18, %_ZL21stbi__mul2sizes_validii.exit
  %i.l = phi i32 [ 0, %_ZL21stbi__mul2sizes_validii.exit21 ], [ 0, %_ZL21stbi__mul2sizes_validii.exit18 ], [ 0, %_ZL21stbi__mul2sizes_validii.exit ], [ 1, %_ZL21stbi__mul2sizes_validii.exit21.thread34 ], [ 0, %_ZL21stbi__mul2sizes_validii.exit.thread24 ], [ 0, %bb.a ], [ 0, %_ZL21stbi__mul2sizes_validii.exit18.thread29 ]
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal fastcc noalias noundef ptr @_ZL17stbi__malloc_mad4iiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 -268435456, 268435456) %3) unnamed_addr #27 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i, label %bb.b, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not37.i = icmp sgt i32 %0, %i.c
  br i1 %.not37.i, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.b
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i16.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i16.i, label %bb.c, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i, label %_ZL21stbi__mul2sizes_validii.exit18.i

_ZL21stbi__mul2sizes_validii.exit18.i:            ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i

_ZL21stbi__mul2sizes_validii.exit18.thread29.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i, %bb.c
  %i.h = mul nuw nsw i32 %i.d, %2                 ; 3 uses
  %i.i = or i32 %3, %i.h
  %or.cond.not.i19.i = icmp sgt i32 %i.i, -1
  br i1 %or.cond.not.i19.i, label %bb.d, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

bb.d:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %_ZL21stbi__mad4sizes_validiiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit21.i

_ZL21stbi__mul2sizes_validii.exit21.i:            ; preds = %bb.d
  %i.k = udiv i32 2147483647, %3
  %.not38.i = icmp sgt i32 %i.h, %i.k
  br i1 %.not38.i, label %_ZL21stbi__mad4sizes_validiiiii.exit.thread, label %_ZL21stbi__mad4sizes_validiiiii.exit

_ZL21stbi__mad4sizes_validiiiii.exit:             ; preds = %_ZL21stbi__mul2sizes_validii.exit21.i, %bb.d
  %i.l = mul nuw nsw i32 %i.h, %3
  %4 = zext nneg i32 %i.l to i64
  %i.m = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %4) #54
  br label %_ZL21stbi__mad4sizes_validiiiii.exit.thread

_ZL21stbi__mad4sizes_validiiiii.exit.thread:      ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i, %bb.a, %_ZL21stbi__mul2sizes_validii.exit.thread24.i, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit18.i, %_ZL21stbi__mul2sizes_validii.exit21.i, %_ZL21stbi__mad4sizes_validiiiii.exit
  %.0 = phi ptr [ %i.m, %_ZL21stbi__mad4sizes_validiiiii.exit ], [ null, %_ZL21stbi__mul2sizes_validii.exit21.i ], [ null, %_ZL21stbi__mul2sizes_validii.exit18.i ], [ null, %_ZL21stbi__mul2sizes_validii.exit.i ], [ null, %_ZL21stbi__mul2sizes_validii.exit.thread24.i ], [ null, %bb.a ], [ null, %_ZL21stbi__mul2sizes_validii.exit18.thread29.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL25stbi__pnm_skip_whitespaceP13stbi__contextPc(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 4 uses
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.backedge, %bb.a
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !83
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZL12stbi__at_eofP13stbi__context.exit, label %bb.b

bb.b:                                             ; preds = %.critedge2
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !288
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.o = tail call noundef i32 %i.m(ptr noundef %i.n), !inline_history !13
  %.not6.i = icmp eq i32 %i.o, 0
  br i1 %.not6.i, label %_ZL12stbi__at_eofP13stbi__context.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.a, align 8, !tbaa !79
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.critedge, label %_ZL12stbi__at_eofP13stbi__context.exit

_ZL12stbi__at_eofP13stbi__context.exit:           ; preds = %.critedge2, %bb.c
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !85
  %.not51 = icmp ult ptr %i.r, %i.s
  br i1 %.not51, label %_ZL12stbi__at_eofP13stbi__context.exit.thread, label %.critedge

_ZL12stbi__at_eofP13stbi__context.exit.thread:    ; preds = %bb.b, %_ZL12stbi__at_eofP13stbi__context.exit
  %i.t = load i8, ptr %1, align 1, !tbaa !84
  switch i8 %i.t, label %.critedge [
    i8 32, label %_ZL17stbi__pnm_isspacec.exit.thread
    i8 12, label %_ZL17stbi__pnm_isspacec.exit.thread
    i8 11, label %_ZL17stbi__pnm_isspacec.exit.thread
    i8 10, label %_ZL17stbi__pnm_isspacec.exit.thread
    i8 9, label %_ZL17stbi__pnm_isspacec.exit.thread
    i8 13, label %_ZL17stbi__pnm_isspacec.exit.thread
  ]

_ZL17stbi__pnm_isspacec.exit.thread:              ; preds = %_ZL12stbi__at_eofP13stbi__context.exit.thread, %_ZL12stbi__at_eofP13stbi__context.exit.thread, %_ZL12stbi__at_eofP13stbi__context.exit.thread, %_ZL12stbi__at_eofP13stbi__context.exit.thread, %_ZL12stbi__at_eofP13stbi__context.exit.thread, %_ZL12stbi__at_eofP13stbi__context.exit.thread
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !82   ; 3 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.w = icmp ult ptr %i.u, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL17stbi__pnm_isspacec.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store ptr %i.x, ptr %i.e, align 8, !tbaa !82
  %i.y = load i8, ptr %i.u, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.e:                                             ; preds = %_ZL17stbi__pnm_isspacec.exit.thread
  %i.z = load i32, ptr %i.a, align 8, !tbaa !79
  %.not.i19 = icmp eq i32 %i.z, 0
  br i1 %.not.i19, label %_ZL10stbi__get8P13stbi__context.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.ac = load i32, ptr %i.h, align 4, !tbaa !78
  %i.ad = tail call noundef i32 %i.aa(ptr noundef %i.ab, ptr noundef nonnull %i.g, i32 noundef %i.ac), !inline_history !12 ; 2 uses
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = load i32, ptr %i.j, align 8, !tbaa !80
  %i.al = add nsw i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.j, align 8, !tbaa !80
  %i.am = icmp eq i32 %i.ad, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.a, align 8, !tbaa !79
  store i8 0, ptr %i.g, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.h:                                             ; preds = %bb.f
  %i.an = sext i32 %i.ad to i64
  %i.ao = getelementptr inbounds i8, ptr %i.g, i64 %i.an
  %.pre.i = load i8, ptr %i.g, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.h, %bb.g
  %i.ap = phi i8 [ 0, %bb.g ], [ %.pre.i, %bb.h ]
  %.sink.i.i = phi ptr [ %i.k, %bb.g ], [ %i.ao, %bb.h ]
  store ptr %.sink.i.i, ptr %i.f, align 8, !tbaa !85
  store ptr %i.k, ptr %i.e, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.d, %bb.e, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %.0.i20 = phi i8 [ %i.y, %bb.d ], [ %i.ap, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.e ]
  store i8 %.0.i20, ptr %1, align 1, !tbaa !84
  br label %.critedge2.backedge

.critedge2.backedge:                              ; preds = %_ZL12stbi__at_eofP13stbi__context.exit28, %_ZL12stbi__at_eofP13stbi__context.exit28.thread, %_ZL12stbi__at_eofP13stbi__context.exit28.thread, %bb.l, %_ZL10stbi__get8P13stbi__context.exit
  br label %.critedge2, !llvm.loop !1039

.critedge:                                        ; preds = %_ZL12stbi__at_eofP13stbi__context.exit.thread, %bb.c, %_ZL12stbi__at_eofP13stbi__context.exit
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !83
  %.not.i21 = icmp eq ptr %i.aq, null
  br i1 %.not.i21, label %_ZL12stbi__at_eofP13stbi__context.exit24, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !288
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.at = tail call noundef i32 %i.ar(ptr noundef %i.as), !inline_history !13
  %.not6.i22 = icmp eq i32 %i.at, 0
  br i1 %.not6.i22, label %_ZL12stbi__at_eofP13stbi__context.exit24.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load i32, ptr %i.a, align 8, !tbaa !79
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZL12stbi__at_eofP13stbi__context.exit24.thread43, label %_ZL12stbi__at_eofP13stbi__context.exit24

_ZL12stbi__at_eofP13stbi__context.exit24:         ; preds = %.critedge, %bb.j
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !85
  %.not52 = icmp ult ptr %i.aw, %i.ax
  br i1 %.not52, label %_ZL12stbi__at_eofP13stbi__context.exit24.thread, label %_ZL12stbi__at_eofP13stbi__context.exit24.thread43

_ZL12stbi__at_eofP13stbi__context.exit24.thread:  ; preds = %bb.i, %_ZL12stbi__at_eofP13stbi__context.exit24
  %i.ay = load i8, ptr %1, align 1, !tbaa !84
  %.not15 = icmp eq i8 %i.ay, 35
  br i1 %.not15, label %.preheader, label %_ZL12stbi__at_eofP13stbi__context.exit24.thread43

.preheader:                                       ; preds = %_ZL12stbi__at_eofP13stbi__context.exit24.thread, %_ZL10stbi__get8P13stbi__context.exit34
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !83
  %.not.i25 = icmp eq ptr %i.az, null
  br i1 %.not.i25, label %_ZL12stbi__at_eofP13stbi__context.exit28, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !288
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.bc = tail call noundef i32 %i.ba(ptr noundef %i.bb), !inline_history !13
  %.not6.i26 = icmp eq i32 %i.bc, 0
  br i1 %.not6.i26, label %_ZL12stbi__at_eofP13stbi__context.exit28.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = load i32, ptr %i.a, align 8, !tbaa !79
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.critedge2.backedge, label %_ZL12stbi__at_eofP13stbi__context.exit28, !llvm.loop !1040

_ZL12stbi__at_eofP13stbi__context.exit28:         ; preds = %.preheader, %bb.l
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !85
  %.not53 = icmp ult ptr %i.bf, %i.bg
  br i1 %.not53, label %_ZL12stbi__at_eofP13stbi__context.exit28.thread, label %.critedge2.backedge, !llvm.loop !1040

_ZL12stbi__at_eofP13stbi__context.exit28.thread:  ; preds = %bb.k, %_ZL12stbi__at_eofP13stbi__context.exit28
  %i.bh = load i8, ptr %1, align 1, !tbaa !84
  switch i8 %i.bh, label %bb.m [
    i8 10, label %.critedge2.backedge
    i8 13, label %.critedge2.backedge
  ], !llvm.loop !1040

bb.m:                                             ; preds = %_ZL12stbi__at_eofP13stbi__context.exit28.thread
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !82  ; 3 uses
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.bk = icmp ult ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store ptr %i.bl, ptr %i.e, align 8, !tbaa !82
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit34

bb.o:                                             ; preds = %bb.m
  %i.bn = load i32, ptr %i.a, align 8, !tbaa !79
  %.not.i29 = icmp eq i32 %i.bn, 0
  br i1 %.not.i29, label %_ZL10stbi__get8P13stbi__context.exit34, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.bq = load i32, ptr %i.h, align 4, !tbaa !78
  %i.br = tail call noundef i32 %i.bo(ptr noundef %i.bp, ptr noundef nonnull %i.g, i32 noundef %i.bq), !inline_history !12 ; 2 uses
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.bt = load ptr, ptr %i.i, align 8, !tbaa !81
end_hunk_9
