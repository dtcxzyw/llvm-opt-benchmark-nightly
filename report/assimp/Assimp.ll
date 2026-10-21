Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Assimp?download=true
inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 52
begin_hunk_0_@assimp_stbi_load_16_from_callbacks:bb.a
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
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !5 ; 2 uses
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
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8
  %i.y = call fastcc noundef ptr @_ZL32stbi__load_and_postprocess_16bitP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @assimp_stbi_load_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
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
  %i.j = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @assimp_stbi_load_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
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
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !5 ; 2 uses
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
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8
  %i.y = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef ptr @assimp_stbi_loadf_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
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
  %i.j = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define internal fastcc noalias noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 9 uses
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
  br i1 %or.cond.not.i.i.i.i, label %bb.e, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq i32 %i.c, 0
  br i1 %i.g, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %bb.e
  %i.h = udiv i32 2147483647, %i.c
  %.not34.i.i.i = icmp sgt i32 %i.b, %i.h
  br i1 %.not34.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.e
  %i.i = mul nuw nsw i32 %i.c, %i.b               ; 9 uses
  %i.j = or i32 %i.e, %i.i
  %or.cond.not.i16.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i16.i.i.i, label %bb.f, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.f:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i
  %i.k = icmp eq i32 %i.e, 0
  br i1 %i.k, label %_ZL17stbi__malloc_mad4iiiii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit18.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.i.i.i:        ; preds = %bb.f
  %i.l = udiv i32 2147483647, %i.e
  %.not.i.i.i = icmp sgt i32 %i.i, %i.l
  %i.m = mul nuw nsw i32 %i.e, %i.i
  %5 = icmp sgt i32 %i.m, 536870911
  %or.cond.i.i = select i1 %.not.i.i.i, i1 true, i1 %5
  br i1 %or.cond.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL17stbi__malloc_mad4iiiii.exit.i

_ZL17stbi__malloc_mad4iiiii.exit.i:               ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %bb.f
  %i.n = shl i32 %i.i, 2
  %i.o = mul i32 %i.n, %i.e
  %6 = zext nneg i32 %i.o to i64
  %i.p = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %6) #51 ; 8 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %bb.g

_ZL17stbi__malloc_mad4iiiii.exit.thread.i:        ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.a) #48
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.r, align 8
  br label %_ZL16stbi__ldr_to_hdrPhiii.exit

bb.g:                                             ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i
  %i.s = and i32 %i.e, 1
  %.not.i = icmp eq i32 %i.s, 0                   ; 2 uses
  %i.t = sext i1 %.not.i to i32
  %.0.i = add nsw i32 %i.e, %i.t                  ; 5 uses
  %i.u = icmp sgt i32 %i.i, 0
  br i1 %i.u, label %.preheader48.lr.ph.i, label %.loopexit.i

.preheader48.lr.ph.i:                             ; preds = %bb.g
  %i.v = icmp sgt i32 %.0.i, 0
  %i.w = load float, ptr @_ZL15stbi__l2h_gamma, align 4 ; 3 uses
  %i.x = load float, ptr @_ZL15stbi__l2h_scale, align 4 ; 3 uses
  br i1 %i.v, label %.preheader48.preheader.i, label %._crit_edge51.split.i

.preheader48.preheader.i:                         ; preds = %.preheader48.lr.ph.i
  %7 = zext nneg i32 %i.e to i64
  %wide.trip.count57.i = zext nneg i32 %i.i to i64
  %wide.trip.count.i = zext nneg i32 %.0.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.y = icmp eq i32 %.0.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod21 = trunc i32 %.0.i to i1
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %._crit_edge.i, %.preheader48.preheader.i
  %indvars.iv54.i = phi i64 [ 0, %.preheader48.preheader.i ], [ %indvars.iv.next55.i, %._crit_edge.i ] ; 2 uses
  %i.z = mul nuw nsw i64 %indvars.iv54.i, %7      ; 3 uses
  br i1 %i.y, label %.epil.preheader, label %.preheader48.i.new

.preheader48.i.new:                               ; preds = %.preheader48.i, %.preheader48.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader48.i.new ], [ 0, %.preheader48.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader48.i.new ], [ 0, %.preheader48.i ]
  %i.aa = add nuw nsw i64 %indvars.iv.i, %i.z     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = uitofp i8 %i.ac to float
  %i.ae = fdiv float %i.ad, 2.550000e+02
  %i.af = tail call noundef float @powf(float noundef %i.ae, float noundef %i.w) #48
  %i.ag = fmul float %i.x, %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.aa
  store float %i.ag, ptr %i.ah, align 4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ai = add nuw nsw i64 %indvars.iv.next.i, %i.z ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = uitofp i8 %i.ak to float
  %i.am = fdiv float %i.al, 2.550000e+02
  %i.an = tail call noundef float @powf(float noundef %i.am, float noundef %i.w) #48
  %i.ao = fmul float %i.x, %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ai
  store float %i.ao, ptr %i.ap, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader48.i.new, !llvm.loop !48

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader48.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader48.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader48.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.aq = add nuw nsw i64 %indvars.iv.i.epil.init, %i.z ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = uitofp i8 %i.as to float
  %i.au = fdiv float %i.at, 2.550000e+02
  %i.av = tail call noundef float @powf(float noundef %i.au, float noundef %i.w) #48
  %i.aw = fmul float %i.x, %i.av
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.aq
  store float %i.aw, ptr %i.ax, align 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, %wide.trip.count57.i
  br i1 %exitcond58.not.i, label %._crit_edge51.split.i, label %.preheader48.i, !llvm.loop !49

._crit_edge51.split.i:                            ; preds = %._crit_edge.i, %.preheader48.lr.ph.i
  br i1 %.not.i, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge51.split.i
  %8 = zext nneg i32 %i.e to i64                  ; 3 uses
  %i.ay = sext i32 %.0.i to i64                   ; 3 uses
  %wide.trip.count62.i = zext nneg i32 %i.i to i64 ; 2 uses
  %xtraiter22 = and i64 %wide.trip.count62.i, 1
  %i.az = icmp eq i32 %i.i, 1
  br i1 %i.az, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter25 = and i64 %wide.trip.count62.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next60.i.1, %.lr.ph.i ] ; 3 uses
  %niter26 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter26.next.1, %.lr.ph.i ]
  %i.ba = mul nuw nsw i64 %indvars.iv59.i, %8
  %i.bb = add nsw i64 %i.ba, %i.ay                ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.a, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = uitofp i8 %i.bd to float
  %i.bf = fdiv float %i.be, 2.550000e+02
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bb
  store float %i.bf, ptr %i.bg, align 4
  %indvars.iv.next60.i = or disjoint i64 %indvars.iv59.i, 1
  %i.bh = mul nuw nsw i64 %indvars.iv.next60.i, %8
  %i.bi = add nsw i64 %i.bh, %i.ay                ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = uitofp i8 %i.bk to float
  %i.bm = fdiv float %i.bl, 2.550000e+02
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bi
  store float %i.bm, ptr %i.bn, align 4
  %indvars.iv.next60.i.1 = add nuw nsw i64 %indvars.iv59.i, 2 ; 2 uses
  %niter26.next.1 = add i64 %niter26, 2           ; 2 uses
  %niter26.ncmp.1 = icmp eq i64 %niter26.next.1, %unroll_iter25
  br i1 %niter26.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !50

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod23.not = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next60.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod24 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.bo = mul nuw nsw i64 %indvars.iv59.i.epil.init, %8
  %i.bp = add nsw i64 %i.bo, %i.ay                ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.a, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = uitofp i8 %i.br to float
  %i.bt = fdiv float %i.bs, 2.550000e+02
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bp
  store float %i.bt, ptr %i.bu, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %._crit_edge51.split.i, %bb.g
  tail call void @free(ptr noundef nonnull %i.a) #48
  br label %_ZL16stbi__ldr_to_hdrPhiii.exit

bb.h:                                             ; preds = %bb.a
  %i.bv = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.5, ptr %i.bv, align 8
  br label %_ZL16stbi__ldr_to_hdrPhiii.exit

_ZL16stbi__ldr_to_hdrPhiii.exit:                  ; preds = %.loopexit.i, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i ], [ %i.p, %.loopexit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef ptr @assimp_stbi_loadf_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
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
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !5 ; 2 uses
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
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8
  %i.y = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #48
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef ptr @assimp_stbi_loadf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.3) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.4, ptr %i.b, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.h, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = call noundef i32 %i.k(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef 128), !inline_history !51 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i32, ptr %i.g, align 8
  %i.t = add nsw i32 %i.s, %i.r
  store i32 %i.t, ptr %i.g, align 8
  %i.u = icmp eq i32 %i.l, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.h, align 8
  br label %assimp_stbi_loadf_from_file.exit

bb.e:                                             ; preds = %bb.c
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds i8, ptr %i.h, i64 %i.w
  br label %assimp_stbi_loadf_from_file.exit

assimp_stbi_loadf_from_file.exit:                 ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  store ptr %i.h, ptr %i.j, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.z, align 8
  %i.aa = call fastcc noalias noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #48
  %i.ab = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %assimp_stbi_loadf_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.aa, %assimp_stbi_loadf_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef ptr @assimp_stbi_loadf_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #48
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false)
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
  %i.j = call noundef i32 %i.i(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !2 ; 2 uses
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
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8
end_hunk_0
begin_hunk_1_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  br label %_ZL10stbi__get8P13stbi__context.exit.i.6.i

bb.ak:                                            ; preds = %bb.af
  %i.el = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 2 uses
  store ptr %i.el, ptr %i.c, align 8
  %i.em = load i8, ptr %i.ds, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.6.i

_ZL10stbi__get8P13stbi__context.exit.i.6.i:       ; preds = %bb.ak, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6.i
  %i.en = phi ptr [ %i.dr, %bb.ak ], [ %.sink.i.i.i.6.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6.i ]
  %i.eo = phi ptr [ %i.el, %bb.ak ], [ %i.l, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6.i ] ; 3 uses
  %.0.i.i.6.i = phi i8 [ %i.em, %bb.ak ], [ %i.ek, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6.i ]
  %.not.i.6.i = icmp eq i8 %.0.i.i.6.i, 26
  br i1 %.not.i.6.i, label %bb.al, label %bb.bm

bb.al:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.6.i
  %i.ep = icmp ult ptr %i.eo, %i.en
  br i1 %i.ep, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eq = load i32, ptr %i.e, align 8
  %.not.i.i.7.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i.7.i, label %bb.bm, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.er = load ptr, ptr %i.f, align 8
  %i.es = load ptr, ptr %i.g, align 8
  %i.et = load i32, ptr %i.i, align 4
  %i.eu = tail call noundef i32 %i.er(ptr noundef %i.es, ptr noundef nonnull %i.h, i32 noundef %i.et), !inline_history !82
  %i.ev = load ptr, ptr %i.c, align 8
  %i.ew = load ptr, ptr %i.j, align 8
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = load i32, ptr %i.k, align 8
  %i.fc = add nsw i32 %i.fb, %i.fa
  store i32 %i.fc, ptr %i.k, align 8
  %i.fd = icmp eq i32 %i.eu, 0
  br i1 %i.fd, label %_ZL10stbi__get8P13stbi__context.exit.i.7.i.thread, label %_ZL10stbi__get8P13stbi__context.exit.i.7.i

_ZL10stbi__get8P13stbi__context.exit.i.7.i.thread: ; preds = %bb.an
  store i32 0, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 8
  br label %bb.bm

bb.ao:                                            ; preds = %bb.al
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  store ptr %i.fe, ptr %i.c, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.7.i

_ZL10stbi__get8P13stbi__context.exit.i.7.i:       ; preds = %bb.an, %bb.ao
  %.0.i.i.7.i.in = phi ptr [ %i.eo, %bb.ao ], [ %i.h, %bb.an ]
  %.0.i.i.7.i = load i8, ptr %.0.i.i.7.i.in, align 1
  %.not.i.7.i = icmp eq i8 %.0.i.i.7.i, 10
  br i1 %.not.i.7.i, label %bb.au, label %bb.bm

bb.ap:                                            ; preds = %bb.a
  %i.ff = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 1 ; 2 uses
  store ptr %i.ff, ptr %i.c, align 8
  %i.fg = load i8, ptr %.pre.i.i, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.i

bb.aq:                                            ; preds = %bb.a
  %i.fh = load i32, ptr %i.e, align 8
  %.not.i.i.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i.i, label %bb.bm, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fi = load ptr, ptr %i.f, align 8
  %i.fj = load ptr, ptr %i.g, align 8
  %i.fk = load i32, ptr %i.i, align 4
  %i.fl = tail call noundef i32 %i.fi(ptr noundef %i.fj, ptr noundef nonnull %i.h, i32 noundef %i.fk), !inline_history !82 ; 2 uses
  %i.fm = load ptr, ptr %i.c, align 8
  %i.fn = load ptr, ptr %i.j, align 8
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = load i32, ptr %i.k, align 8
  %i.ft = add nsw i32 %i.fs, %i.fr
  store i32 %i.ft, ptr %i.k, align 8
  %i.fu = icmp eq i32 %i.fl, 0
  br i1 %i.fu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.fv = sext i32 %i.fl to i64
  %i.fw = getelementptr inbounds i8, ptr %i.h, i64 %i.fv
  %.pre.i.i.i = load i8, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i: ; preds = %bb.at, %bb.as
  %i.fx = phi i8 [ 0, %bb.as ], [ %.pre.i.i.i, %bb.at ]
  %.sink.i.i.i.i = phi ptr [ %i.l, %bb.as ], [ %i.fw, %bb.at ] ; 2 uses
  store ptr %.sink.i.i.i.i, ptr %i.d, align 8
  store ptr %i.l, ptr %i.c, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.i

_ZL10stbi__get8P13stbi__context.exit.i.i:         ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i, %bb.ap
  %i.fy = phi ptr [ %.pre7.i.i, %bb.ap ], [ %.sink.i.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i ] ; 2 uses
  %i.fz = phi ptr [ %i.ff, %bb.ap ], [ %i.l, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i ] ; 3 uses
  %.0.i.i.i = phi i8 [ %i.fg, %bb.ap ], [ %i.fx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i ]
  %.not.i.i = icmp eq i8 %.0.i.i.i, -119
  br i1 %.not.i.i, label %bb.b, label %bb.bm

bb.au:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.7.i
  %i.ga = load <2 x ptr>, ptr %i.j, align 8
  store <2 x ptr> %i.ga, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #48
  store ptr %0, ptr %6, align 8
  %or.cond.i.i = icmp ugt i32 %4, 4
  br i1 %or.cond.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gb = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.7, ptr %i.gb, align 8
  br label %_ZL14stbi__png_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.aw:                                            ; preds = %bb.au
  %i.gc = call fastcc noundef i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr noundef nonnull %6, i32 noundef 0, i32 noundef %4)
  %.not.i.i11 = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i11, label %._crit_edge.i, label %bb.ax

._crit_edge.i:                                    ; preds = %bb.aw
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.bl

bb.ax:                                            ; preds = %bb.aw
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ge = load i32, ptr %i.gd, align 8            ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 9                   ; 2 uses
  br i1 %i.gf, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gg = icmp eq i32 %i.ge, 16
  br i1 %i.gg, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gh = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.gh, align 8
  br label %_ZL14stbi__png_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %storemerge.i.i = phi i32 [ 8, %bb.ax ], [ 16, %bb.ay ]
  store i32 %storemerge.i.i, ptr %5, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8            ; 12 uses
  store ptr null, ptr %i.gi, align 8
  %.not48.i.i = icmp eq i32 %4, 0
  %.pre118.i.i = load ptr, ptr %6, align 8        ; 6 uses
  br i1 %.not48.i.i, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gk = getelementptr inbounds nuw i8, ptr %.pre118.i.i, i64 12 ; 3 uses
  %i.gl = load i32, ptr %i.gk, align 4            ; 5 uses
  %.not49.i.i = icmp eq i32 %4, %i.gl
  br i1 %.not49.i.i, label %bb.bj, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gm = load i32, ptr %.pre118.i.i, align 8     ; 35 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.pre118.i.i, i64 4
  %i.go = load i32, ptr %i.gn, align 4            ; 9 uses
  br i1 %i.gf, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %or.cond.not.i.i.i.i.i.i = icmp sgt i32 %i.gm, -1
  br i1 %or.cond.not.i.i.i.i.i.i, label %bb.be, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i

bb.be:                                            ; preds = %bb.bd
  %i.gp = icmp eq i32 %i.gm, 0                    ; 13 uses
  br i1 %i.gp, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i.i.i:      ; preds = %bb.be
  %i.gq = udiv i32 2147483647, %i.gm
  %.not23.i.i.i.i.i = icmp samesign ugt i32 %4, %i.gq
  br i1 %.not23.i.i.i.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i.i, %bb.be
  %i.gr = mul nuw nsw i32 %i.gm, %4               ; 3 uses
  %i.gs = or i32 %i.go, %i.gr
  %or.cond.not.i10.i.i.i.i.i = icmp sgt i32 %i.gs, -1
  br i1 %or.cond.not.i10.i.i.i.i.i, label %bb.bf, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i

bb.bf:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i
  %i.gt = icmp eq i32 %i.go, 0
  br i1 %i.gt, label %_ZL17stbi__malloc_mad3iiii.exit.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i.i:    ; preds = %bb.bf
  %i.gu = udiv i32 2147483647, %i.go
  %.not.i.i.i.i.i = icmp samesign ugt i32 %i.gr, %i.gu
  br i1 %.not.i.i.i.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.i.i.i

_ZL17stbi__malloc_mad3iiii.exit.i.i.i:            ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i.i, %bb.bf
  %i.gv = mul nuw nsw i32 %i.gr, %i.go
  %7 = zext nneg i32 %i.gv to i64
  %i.gw = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %7) #51 ; 5 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i, label %.preheader197.i.i.i

.preheader197.i.i.i:                              ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i.i.i
  %i.gy = icmp sgt i32 %i.go, 0
  br i1 %i.gy, label %.lr.ph258.i.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.i.i

.lr.ph258.i.i.i:                                  ; preds = %.preheader197.i.i.i
  %i.gz = shl nsw i32 %i.gl, 3
  %i.ha = or disjoint i32 %i.gz, %4               ; 2 uses
  %.11167198.i.i.i = add nsw i32 %i.gm, -1        ; 25 uses
  switch i32 %i.ha, label %_ZL20stbi__convert_formatPhiijj.exit.thread.sink.split.i.i [
    i32 10, label %.lr.ph258.split.i.i.i
    i32 11, label %.lr.ph258.split.i.i.i
    i32 12, label %.lr.ph258.split.i.i.i
    i32 17, label %.lr.ph258.split.i.i.i
    i32 19, label %.lr.ph258.split.i.i.i
    i32 20, label %.lr.ph258.split.i.i.i
    i32 28, label %.lr.ph258.split.i.i.i
    i32 25, label %.lr.ph258.split.i.i.i
    i32 26, label %.lr.ph258.split.i.i.i
    i32 33, label %.lr.ph258.split.i.i.i
    i32 34, label %.lr.ph258.split.i.i.i
    i32 35, label %.lr.ph258.split.i.i.i
  ]

.lr.ph258.split.i.i.i:                            ; preds = %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.go to i64
  %i.hb = add nsw i32 %i.gm, -2                   ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hb, i32 -1) ; 2 uses
  %i.hc = sub i32 %i.hb, %smin                    ; 14 uses
  %i.hd = zext i32 %i.hc to i64
  %i.he = add nuw nsw i64 %i.hd, 1                ; 22 uses
  %i.hf = xor i32 %smin, -1
  %i.hg = add nuw i32 %i.gm, %i.hf                ; 6 uses
  %min.iters.check261 = icmp ult i32 %i.hc, 7
  %n.vec263 = and i64 %i.he, 8589934584           ; 5 uses
  %i.hh = trunc i64 %n.vec263 to i32
  %i.hi = sub i32 %.11167198.i.i.i, %i.hh
  %i.hj = shl nuw nsw i64 %n.vec263, 1
  %i.hk = shl nuw nsw i64 %n.vec263, 2
  %cmp.n278 = icmp eq i64 %i.he, %n.vec263
  %min.iters.check208 = icmp ult i32 %i.hc, 8
  %min.iters.check210 = icmp ult i32 %i.hc, 16
  %i.hl = and i64 %i.he, 15                       ; 2 uses
  %i.hm = icmp eq i64 %i.hl, 0
  %i.hn = select i1 %i.hm, i64 16, i64 %i.hl      ; 2 uses
  %n.vec212 = sub nsw i64 %i.he, %i.hn            ; 5 uses
  %i.ho = trunc i64 %n.vec212 to i32
  %i.hp = sub i32 %.11167198.i.i.i, %i.ho
  %i.hq = shl nsw i64 %n.vec212, 2
  %min.epilog.iters.check241 = icmp samesign ult i64 %i.hn, 9
  %i.hr = and i64 %i.he, 7                        ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 0
  %i.ht = select i1 %i.hs, i64 8, i64 %i.hr
  %n.vec243 = sub nsw i64 %i.he, %i.ht            ; 4 uses
  %i.hu = trunc i64 %n.vec243 to i32
  %i.hv = sub i32 %.11167198.i.i.i, %i.hu
  %i.hw = shl nsw i64 %n.vec243, 2
  %min.iters.check186 = icmp ult i32 %i.hc, 7
  %n.vec188 = and i64 %i.he, 8589934584           ; 5 uses
  %i.hx = trunc i64 %n.vec188 to i32
  %i.hy = sub i32 %.11167198.i.i.i, %i.hx
  %i.hz = shl nuw nsw i64 %n.vec188, 1
  %i.ia = mul nuw nsw i64 %n.vec188, 3
  %cmp.n203 = icmp eq i64 %i.he, %n.vec188
  %min.iters.check131 = icmp ult i32 %i.hc, 7
  %min.iters.check133 = icmp ult i32 %i.hc, 15
  %i.ib = and i64 %i.he, 8
  %n.vec135 = and i64 %i.he, 8589934576           ; 6 uses
  %i.ic = trunc i64 %n.vec135 to i32
  %i.id = sub i32 %.11167198.i.i.i, %i.ic
  %i.ie = mul nuw nsw i64 %n.vec135, 3
  %cmp.n157 = icmp eq i64 %i.he, %n.vec135
  %min.epilog.iters.check165.not.not = icmp eq i64 %i.ib, 0
  %n.vec167 = and i64 %i.he, 8589934584           ; 5 uses
  %i.if = trunc i64 %n.vec167 to i32
  %i.ig = sub i32 %.11167198.i.i.i, %i.if
  %i.ih = mul nuw nsw i64 %n.vec167, 3
  %cmp.n181 = icmp eq i64 %i.he, %n.vec167
  %xtraiter332 = and i32 %i.hg, 1
  %lcmp.mod333.not = icmp eq i32 %xtraiter332, 0
  %.6162.i.i.i.prol = add nsw i32 %i.gm, -2
  %i.ii = icmp slt i32 %i.gm, 2
  %xtraiter335 = and i32 %i.hg, 1
  %lcmp.mod336.not = icmp eq i32 %xtraiter335, 0
  %.5161.i.i.i.prol = add nsw i32 %i.gm, -2
  %i.ij = icmp slt i32 %i.gm, 2
  %xtraiter338 = and i32 %i.hg, 3                 ; 2 uses
  %lcmp.mod339.not = icmp eq i32 %xtraiter338, 0
  %i.ik = icmp ult i32 %i.hc, 3
  %min.iters.check78 = icmp ult i32 %i.hc, 8
  %min.iters.check80 = icmp ult i32 %i.hc, 16
  %i.il = and i64 %i.he, 15                       ; 2 uses
  %i.im = icmp eq i64 %i.il, 0
  %i.in = select i1 %i.im, i64 16, i64 %i.il      ; 2 uses
  %n.vec82 = sub nsw i64 %i.he, %i.in             ; 5 uses
  %i.io = trunc i64 %n.vec82 to i32
  %i.ip = sub i32 %.11167198.i.i.i, %i.io
  %i.iq = shl nsw i64 %n.vec82, 1
  %min.epilog.iters.check111 = icmp samesign ult i64 %i.in, 9
  %i.ir = and i64 %i.he, 7                        ; 2 uses
  %i.is = icmp eq i64 %i.ir, 0
  %i.it = select i1 %i.is, i64 8, i64 %i.ir
  %n.vec113 = sub nsw i64 %i.he, %i.it            ; 4 uses
  %i.iu = trunc i64 %n.vec113 to i32
  %i.iv = sub i32 %.11167198.i.i.i, %i.iu
  %i.iw = shl nsw i64 %n.vec113, 1
  %xtraiter341 = and i32 %i.hg, 3                 ; 2 uses
  %lcmp.mod342.not = icmp eq i32 %xtraiter341, 0
  %i.ix = icmp ult i32 %i.hc, 3
  %xtraiter344 = and i32 %i.hg, 3                 ; 2 uses
  %lcmp.mod345.not = icmp eq i32 %xtraiter344, 0
  %i.iy = icmp ult i32 %i.hc, 3
  %min.iters.check47 = icmp ult i32 %i.hc, 3
  %min.iters.check48 = icmp ult i32 %i.hc, 15
  %i.iz = and i64 %i.he, 12
  %n.vec50 = and i64 %i.he, 8589934576            ; 6 uses
  %i.ja = trunc i64 %n.vec50 to i32
  %i.jb = sub i32 %.11167198.i.i.i, %i.ja
  %i.jc = shl nuw nsw i64 %n.vec50, 1
  %cmp.n62 = icmp eq i64 %i.he, %n.vec50
  %min.epilog.iters.check = icmp eq i64 %i.iz, 0
  %n.vec66 = and i64 %i.he, 8589934588            ; 5 uses
  %i.jd = trunc i64 %n.vec66 to i32
  %i.je = sub i32 %.11167198.i.i.i, %i.jd
  %i.jf = shl nuw nsw i64 %n.vec66, 1
  %cmp.n73 = icmp eq i64 %i.he, %n.vec66
  %xtraiter347 = and i32 %i.hg, 1
  %lcmp.mod348.not = icmp eq i32 %xtraiter347, 0
  %.11167.i.i.i.prol = add nsw i32 %i.gm, -2
  %i.jg = icmp slt i32 %i.gm, 2
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.i.i.i, %.lr.ph258.split.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph258.split.i.i.i ], [ %indvars.iv.next.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %i.jh = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.ji = mul i32 %i.gm, %i.jh                    ; 2 uses
  %i.jj = mul i32 %i.ji, %i.gl
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.jk ; 126 uses
  %i.jm = mul i32 %i.ji, %4
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.jn ; 50 uses
  switch i32 %i.ha, label %.preheader195.i.i.i [
    i32 10, label %.preheader.i.i.i
    i32 11, label %.preheader175.i.i.i
    i32 12, label %.preheader177.i.i.i
    i32 17, label %.preheader179.i.i.i
    i32 19, label %.preheader181.i.i.i
    i32 20, label %.preheader183.i.i.i
    i32 28, label %.preheader185.i.i.i
    i32 25, label %.preheader187.i.i.i
    i32 26, label %.preheader189.i.i.i
    i32 33, label %.preheader191.i.i.i
    i32 34, label %.preheader193.i.i.i
  ]

.preheader195.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader195.i.i.i
  br i1 %lcmp.mod348.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.jp = load i8, ptr %i.jl, align 1
  store i8 %i.jp, ptr %i.jo, align 1
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 1
  %i.jr = load i8, ptr %i.jq, align 1
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 1
  store i8 %i.jr, ptr %i.js, align 1
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jo, i64 2
  store i8 %i.ju, ptr %i.jv, align 1
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jo, i64 3
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.11167201.i.i.i.unr = phi i32 [ %.11167198.i.i.i, %.lr.ph.i.i.i.preheader ], [ %.11167.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.11200.i.i.i.unr = phi ptr [ %i.jo, %.lr.ph.i.i.i.preheader ], [ %i.jx, %.lr.ph.i.i.i.prol ]
  %.11153199.i.i.i.unr = phi ptr [ %i.jl, %.lr.ph.i.i.i.preheader ], [ %i.jw, %.lr.ph.i.i.i.prol ]
  br i1 %i.jg, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.preheader193.i.i.i:                              ; preds = %bb.bg
  br i1 %i.gp, label %.loopexit.i.i.i, label %.lr.ph206.i.i.i.preheader

.lr.ph206.i.i.i.preheader:                        ; preds = %.preheader193.i.i.i
  br i1 %min.iters.check261, label %.lr.ph206.i.i.i.preheader293, label %vector.ph262

vector.ph262:                                     ; preds = %.lr.ph206.i.i.i.preheader
  %i.jy = getelementptr i8, ptr %i.jo, i64 %i.hj
  %i.jz = getelementptr i8, ptr %i.jl, i64 %i.hk
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph262
  %index265 = phi i64 [ 0, %vector.ph262 ], [ %index.next276, %vector.body264 ] ; 3 uses
  %i.ka = shl i64 %index265, 1
end_hunk_1
begin_hunk_2_@_ZL20stbi__parse_png_fileP9stbi__pngii:bb.a
  br label %.thread399

bb.ew:                                            ; preds = %bb.ev
  store ptr %i.rm, ptr %i.f, align 8
  br label %bb.ex

bb.ex:                                            ; preds = %._crit_edge, %bb.ew
  %i.ro = phi ptr [ %i.rm, %bb.ew ], [ %.pre, %._crit_edge ]
  %.3229 = phi i32 [ %.2228, %bb.ew ], [ %.0226, %._crit_edge ] ; 2 uses
  %i.rp = zext i32 %.0230 to i64
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rp ; 3 uses
  %i.rr = load ptr, ptr %i.k, align 8
  %.not.i340 = icmp eq ptr %i.rr, null
  br i1 %.not.i340, label %..thread_crit_edge.i342, label %bb.ey

..thread_crit_edge.i342:                          ; preds = %bb.ex
  %.pre.i344 = load ptr, ptr %i.h, align 8
  %.pre35.i = load ptr, ptr %i.i, align 8
  br label %.thread.i341

bb.ey:                                            ; preds = %bb.ex
  %i.rs = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.rt = load ptr, ptr %i.h, align 8             ; 3 uses
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
  %i.sd = load ptr, ptr %i.h, align 8
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.sb
  store ptr %i.se, ptr %i.h, align 8
  br label %.loopexit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %bb.ey
  %sext.i = shl i64 %i.rw, 32
  %i.sf = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rq, ptr align 1 %i.rt, i64 %i.sf, i1 false)
  %i.sg = load ptr, ptr %i.k, align 8
  %i.sh = load ptr, ptr %i.l, align 8
  %i.si = getelementptr inbounds i8, ptr %i.rq, i64 %i.sf
  %i.sj = sub nsw i32 %i.gt, %i.rx                ; 2 uses
  %i.sk = tail call noundef i32 %i.sg(ptr noundef %i.sh, ptr noundef %i.si, i32 noundef %i.sj), !inline_history !139
  %.not = icmp eq i32 %i.sk, %i.sj
  %i.sl = load ptr, ptr %i.i, align 8
  store ptr %i.sl, ptr %i.h, align 8
  br i1 %.not, label %.loopexit, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread

_ZL10stbi__getnP13stbi__contextPhi.exit.thread:   ; preds = %.thread.i341, %_ZL10stbi__getnP13stbi__contextPhi.exit
  %i.sm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.27, ptr %i.sm, align 8
  br label %.thread399

bb.ez:                                            ; preds = %bb.aw
  %.not256 = icmp eq i32 %.0217, 0
  br i1 %.not256, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.sn = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.18, ptr %i.sn, align 8
  br label %.thread399

bb.fb:                                            ; preds = %bb.ez
  %.not257 = icmp eq i32 %1, 0
  br i1 %.not257, label %bb.fc, label %.thread399

bb.fc:                                            ; preds = %bb.fb
  %i.so = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.sp = icmp eq ptr %i.so, null
  br i1 %i.sp, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.sq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.sq, align 8
  br label %.thread399

bb.fe:                                            ; preds = %bb.fc
  %i.sr = load i32, ptr %i.d, align 8
  %i.ss = load i32, ptr %i.gn, align 8
  %i.st = mul i32 %i.ss, %i.sr
  %i.su = add i32 %i.st, 7
  %i.sv = lshr i32 %i.su, 3
  %i.sw = load i32, ptr %i.go, align 4            ; 2 uses
  %i.sx = load i32, ptr %i.gm, align 8
  %i.sy = mul i32 %i.sx, %i.sw
  %i.sz = mul i32 %i.sy, %i.sv
  %i.ta = add i32 %i.sz, %i.sw                    ; 2 uses
  %.not258 = icmp eq i32 %.0204, 0                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #48
  %i.tb = sext i32 %i.ta to i64
  %i.tc = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.tb) #51 ; 2 uses
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.te = zext i1 %.not258 to i32
  store ptr %i.so, ptr %3, align 8
  %i.tf = sext i32 %.0230 to i64
  %i.tg = getelementptr inbounds i8, ptr %i.so, i64 %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.tg, ptr %i.th, align 8
  %i.ti = call fastcc noundef i32 @_ZL13stbi__do_zlibP10stbi__zbufPciii(ptr noundef %3, ptr noundef nonnull %i.tc, i32 noundef %i.ta, i32 noundef 1, i32 noundef %i.te)
  %.not.i345 = icmp eq i32 %i.ti, 0
  br i1 %.not.i345, label %bb.fg, label %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit

bb.fg:                                            ; preds = %bb.ff
  %i.tj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.tk = load ptr, ptr %i.tj, align 8
  call void @free(ptr noundef %i.tk) #48
  br label %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread

assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread: ; preds = %bb.fg, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  store ptr null, ptr %i.e, align 8
  br label %.thread399

assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit: ; preds = %bb.ff
  %i.tl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.tm = load ptr, ptr %i.tl, align 8
  %i.tn = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.to = load ptr, ptr %i.tn, align 8            ; 3 uses
  %i.tp = ptrtoint ptr %i.tm to i64
  %i.tq = ptrtoint ptr %i.to to i64
  %i.tr = sub i64 %i.tp, %i.tq
  %i.ts = trunc i64 %i.tr to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #48
  store ptr %i.to, ptr %i.e, align 8
  %i.tt = icmp eq ptr %i.to, null
  br i1 %i.tt, label %.thread399, label %bb.fh

bb.fh:                                            ; preds = %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit
  %i.tu = load ptr, ptr %i.f, align 8
  call void @free(ptr noundef %i.tu) #48
  store ptr null, ptr %i.f, align 8
  %i.tv = load i32, ptr %i.gm, align 8            ; 2 uses
  %i.tw = add nsw i32 %i.tv, 1                    ; 2 uses
  %i.tx = icmp eq i32 %2, %i.tw
  %i.ty = icmp ne i32 %2, 3
  %or.cond5.not261.not266 = and i1 %i.ty, %i.tx
  %i.tz = icmp eq i8 %.0236, 0                    ; 2 uses
  %or.cond7.not263 = select i1 %or.cond5.not261.not266, i1 %i.tz, i1 false
  %i.ua = icmp ne i8 %.0233, 0                    ; 3 uses
  %or.cond9 = select i1 %or.cond7.not263, i1 true, i1 %i.ua
  %spec.select1495 = select i1 %or.cond9, i32 %i.tw, i32 %i.tv ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 4 uses
  store i32 %spec.select1495, ptr %i.ub, align 4
  %i.uc = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ud = load i32, ptr %i.gn, align 8            ; 4 uses
  %i.ue = icmp eq i32 %i.ud, 16
  %i.uf = zext i1 %i.ue to i32
  %i.ug = shl i32 %spec.select1495, %i.uf         ; 6 uses
  %.not.i349 = icmp eq i32 %.0211, 0
  %i.uh = load ptr, ptr %0, align 8               ; 2 uses
  %i.ui = load i32, ptr %i.uh, align 8            ; 4 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.uk = load i32, ptr %i.uj, align 4            ; 5 uses
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
  %i.ut = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %4) #51 ; 4 uses
  %.not92.i = icmp eq ptr %i.ut, null
  br i1 %.not92.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %.preheader100.i

.preheader100.i:                                  ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i
  %5 = zext nneg i32 %i.ug to i64                 ; 9 uses
  br label %bb.fl

_ZL17stbi__malloc_mad3iiii.exit.thread.i:         ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.fi
  %i.uu = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.uu, align 8
  br label %.thread399

bb.fl:                                            ; preds = %bb.fn, %.preheader100.i
  %indvars.iv112.i = phi i64 [ 0, %.preheader100.i ], [ %indvars.iv.next113.i, %bb.fn ] ; 5 uses
  %.076106.i = phi ptr [ %i.uc, %.preheader100.i ], [ %.379.i, %bb.fn ] ; 3 uses
  %.085104.i = phi i32 [ %i.ts, %.preheader100.i ], [ %.388.i, %bb.fn ] ; 3 uses
  %i.uv = load ptr, ptr %0, align 8               ; 3 uses
  %i.uw = load i32, ptr %i.uv, align 8
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xorig, i64 %indvars.iv112.i
  %i.uy = load i32, ptr %i.ux, align 4            ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xspc, i64 %indvars.iv112.i
  %i.va = load i32, ptr %i.uz, align 4            ; 4 uses
  %i.vb = xor i32 %i.uy, -1
  %i.vc = add i32 %i.uw, %i.vb
  %i.vd = add i32 %i.vc, %i.va                    ; 2 uses
  %i.ve = udiv i32 %i.vd, %i.va                   ; 6 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.vg = load i32, ptr %i.vf, align 4
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yorig, i64 %indvars.iv112.i
  %i.vi = load i32, ptr %i.vh, align 4            ; 2 uses
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yspc, i64 %indvars.iv112.i
  %i.vk = load i32, ptr %i.vj, align 4            ; 4 uses
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
  %i.vs = load i32, ptr %i.vr, align 8
  %i.vt = mul i32 %i.ve, %i.ud
  %i.vu = mul i32 %i.vt, %i.vs
  %i.vv = add nsw i32 %i.vu, 7
  %i.vw = ashr i32 %i.vv, 3
  %i.vx = add nsw i32 %i.vw, 1
  %i.vy = mul nsw i32 %i.vx, %i.vo                ; 2 uses
  %i.vz = call fastcc noundef i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr noundef nonnull %0, ptr noundef %.076106.i, i32 noundef %.085104.i, i32 noundef %spec.select1495, i32 noundef %i.ve, i32 noundef %i.vo, i32 noundef %i.ud, i32 noundef range(i32 0, 256) %.0207)
  %.not93.not.i = icmp eq i32 %i.vz, 0
  br i1 %.not93.not.i, label %.thread.i353, label %.preheader99.i

.preheader99.i:                                   ; preds = %bb.fm
  %i.wa = icmp sgt i32 %i.vo, 0
  %i.wb = icmp sgt i32 %i.ve, 0
  %or.cond107.i = and i1 %i.wb, %i.wa
  %.pre115.i = load ptr, ptr %i.g, align 8        ; 4 uses
  br i1 %or.cond107.i, label %.preheader.lr.ph.split.i, label %._crit_edge103.split.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader99.i
  %i.wc = load ptr, ptr %0, align 8
  %i.wd = sext i32 %i.va to i64                   ; 3 uses
  %i.we = sext i32 %i.uy to i64                   ; 3 uses
  %i.wf = zext nneg i32 %i.ve to i64              ; 3 uses
  %i.wg = zext nneg i32 %i.vo to i64
  %.pre.pre.i = load i32, ptr %i.wc, align 8
  %factor.op.mul.i = mul i32 %.pre.pre.i, %i.ug
  %xtraiter = and i64 %i.wf, 1
  %i.wh = icmp eq i32 %i.ve, 1
  %unroll_iter = and i64 %i.wf, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2136 = trunc i32 %i.ve to i1
  br label %.preheader.i

.thread.i353:                                     ; preds = %bb.fm
  call void @free(ptr noundef %i.ut) #48
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
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !140

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i351.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i352.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2136)
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
  br i1 %i.xj, label %.preheader.i, label %._crit_edge103.split.i, !llvm.loop !141

._crit_edge103.split.i:                           ; preds = %._crit_edge.i, %.preheader99.i
  call void @free(ptr noundef %.pre115.i) #48
  %i.xk = zext i32 %i.vy to i64
  %i.xl = getelementptr inbounds nuw i8, ptr %.076106.i, i64 %i.xk
  %i.xm = sub i32 %.085104.i, %i.vy
  br label %bb.fn

bb.fn:                                            ; preds = %._crit_edge103.split.i, %bb.fl
  %.388.i = phi i32 [ %.085104.i, %bb.fl ], [ %i.xm, %._crit_edge103.split.i ]
  %.379.i = phi ptr [ %.076106.i, %bb.fl ], [ %i.xl, %._crit_edge103.split.i ]
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond.not.i350 = icmp eq i64 %indvars.iv.next113.i, 7
  br i1 %exitcond.not.i350, label %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393, label %bb.fl, !llvm.loop !142

_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393: ; preds = %bb.fn
  store ptr %i.ut, ptr %i.g, align 8
  br label %bb.fo

_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit: ; preds = %bb.fh
  %i.xn = call fastcc noundef i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr noundef nonnull %0, ptr noundef readonly %i.uc, i32 noundef %i.ts, i32 noundef %spec.select1495, i32 noundef %i.ui, i32 noundef %i.uk, i32 noundef %i.ud, i32 noundef range(i32 0, 256) %.0207)
  %.not267 = icmp eq i32 %i.xn, 0
  br i1 %.not267, label %.thread399, label %bb.fo

bb.fo:                                            ; preds = %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit
  br i1 %i.ua, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  %i.xo = load i32, ptr %i.gn, align 8
  %i.xp = icmp eq i32 %i.xo, 16
  %i.xq = load i32, ptr %i.ub, align 4            ; 2 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %.val299 = load ptr, ptr %i.g, align 8          ; 2 uses
  %.val.val = load i32, ptr %.val, align 8        ; 2 uses
  %i.xr = getelementptr i8, ptr %.val, i64 4
  %.val.val300 = load i32, ptr %i.xr, align 4     ; 2 uses
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
  %i.xt = load i32, ptr %i.xs, align 4
  %.not268 = icmp eq i32 %i.xt, 0
  %i.xu = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL26stbi__de_iphone_flag_local)
  %i.xv = load i32, ptr %i.xu, align 4
  %i.xw = load i32, ptr @_ZL27stbi__de_iphone_flag_global, align 4
  %i.xx = select i1 %.not268, i32 %i.xw, i32 %i.xv
  %.not269 = icmp eq i32 %i.xx, 0
  br i1 %.not269, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.xy = load i32, ptr %i.ub, align 4
  %i.xz = icmp sgt i32 %i.xy, 2
  br i1 %i.xz, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %.val304 = load ptr, ptr %0, align 8
  %.val305 = load ptr, ptr %i.g, align 8
  call fastcc void @_ZL15stbi__de_iphoneP9stbi__png(ptr %.val304, ptr %.val305)
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu, %bb.ft, %bb.fs
  br i1 %i.tz, label %bb.fz, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ya = zext nneg i8 %.0236 to i32              ; 2 uses
  store i32 %i.ya, ptr %i.gm, align 8
  %i.yb = icmp samesign ugt i32 %2, 2
  %spec.select = select i1 %i.yb, i32 %2, i32 %i.ya ; 4 uses
  store i32 %spec.select, ptr %i.ub, align 4
  %i.yc = load ptr, ptr %0, align 8               ; 2 uses
  %i.yd = load i32, ptr %i.yc, align 8
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 4
  %i.yf = load i32, ptr %i.ye, align 4
  %i.yg = mul i32 %i.yf, %i.yd                    ; 9 uses
  %i.yh = load ptr, ptr %i.g, align 8             ; 9 uses
  %or.cond.not.i.i.i.i354 = icmp sgt i32 %i.yg, -1
  br i1 %or.cond.not.i.i.i.i354, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i356, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread

_ZL21stbi__mul2sizes_validii.exit.i.i.i356:       ; preds = %bb.fx
  %i.yi = udiv i32 2147483647, %spec.select
  %.not10.i.i.i = icmp samesign ugt i32 %i.yg, %i.yi
  br i1 %.not10.i.i.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, label %_ZL17stbi__malloc_mad2iii.exit.i

_ZL17stbi__malloc_mad2iii.exit.i:                 ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i356
  %i.yj = mul nuw nsw i32 %i.yg, %spec.select
  %i.yk = zext nneg i32 %i.yj to i64
  %i.yl = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.yk) #51 ; 6 uses
  %i.ym = icmp eq ptr %i.yl, null
  br i1 %i.ym, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, label %bb.fy

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread: ; preds = %bb.fx, %_ZL21stbi__mul2sizes_validii.exit.i.i.i356, %_ZL17stbi__malloc_mad2iii.exit.i
  %i.yn = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.yn, align 8
  br label %.thread399

bb.fy:                                            ; preds = %_ZL17stbi__malloc_mad2iii.exit.i
  %i.yo = icmp eq i32 %spec.select, 3
  %.not56.i = icmp eq i32 %i.yg, 0                ; 2 uses
  br i1 %i.yo, label %.preheader.i360, label %.preheader49.i

.preheader49.i:                                   ; preds = %bb.fy
  br i1 %.not56.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader49.i
  %wide.trip.count.i = zext nneg i32 %i.yg to i64 ; 2 uses
  %xtraiter2137 = and i64 %wide.trip.count.i, 3   ; 3 uses
  %i.yp = icmp ult i32 %i.yg, 4
  br i1 %i.yp, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter2140 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.preheader.i360:                                  ; preds = %bb.fy
  br i1 %.not56.i, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph55.preheader.i

.lr.ph55.preheader.i:                             ; preds = %.preheader.i360
  %wide.trip.count62.i = zext nneg i32 %i.yg to i64 ; 2 uses
  %xtraiter2142 = and i64 %wide.trip.count62.i, 1
  %i.yq = icmp eq i32 %i.yg, 1
  br i1 %i.yq, label %.lr.ph55.i.epil.preheader, label %.lr.ph55.preheader.i.new

.lr.ph55.preheader.i.new:                         ; preds = %.lr.ph55.preheader.i
  %unroll_iter2146 = and i64 %wide.trip.count62.i, 2147483646
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.lr.ph55.i, %.lr.ph55.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %indvars.iv.next60.i.1, %.lr.ph55.i ] ; 3 uses
  %.04553.i = phi ptr [ %i.yl, %.lr.ph55.preheader.i.new ], [ %i.zr, %.lr.ph55.i ] ; 7 uses
  %niter2147 = phi i64 [ 0, %.lr.ph55.preheader.i.new ], [ %niter2147.next.1, %.lr.ph55.i ]
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yh, i64 %indvars.iv59.i
  %i.ys = load i8, ptr %i.yr, align 1
  %i.yt = zext i8 %i.ys to i64
  %i.yu = shl nuw nsw i64 %i.yt, 2
  %i.yv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yu ; 3 uses
  %i.yw = load i8, ptr %i.yv, align 4
  store i8 %i.yw, ptr %.04553.i, align 1
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 1
  %i.yy = load i8, ptr %i.yx, align 1
  %i.yz = getelementptr inbounds nuw i8, ptr %.04553.i, i64 1
  store i8 %i.yy, ptr %i.yz, align 1
  %i.za = getelementptr inbounds nuw i8, ptr %i.yv, i64 2
  %i.zb = load i8, ptr %i.za, align 2
  %i.zc = getelementptr inbounds nuw i8, ptr %.04553.i, i64 2
  store i8 %i.zb, ptr %i.zc, align 1
  %i.zd = getelementptr inbounds nuw i8, ptr %.04553.i, i64 3
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yh, i64 %indvars.iv59.i
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 1
  %i.zg = load i8, ptr %i.zf, align 1
  %i.zh = zext i8 %i.zg to i64
  %i.zi = shl nuw nsw i64 %i.zh, 2
  %i.zj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zi ; 3 uses
  %i.zk = load i8, ptr %i.zj, align 4
  store i8 %i.zk, ptr %i.zd, align 1
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zj, i64 1
  %i.zm = load i8, ptr %i.zl, align 1
  %i.zn = getelementptr inbounds nuw i8, ptr %.04553.i, i64 4
  store i8 %i.zm, ptr %i.zn, align 1
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zj, i64 2
  %i.zp = load i8, ptr %i.zo, align 2
  %i.zq = getelementptr inbounds nuw i8, ptr %.04553.i, i64 5
  store i8 %i.zp, ptr %i.zq, align 1
  %i.zr = getelementptr inbounds nuw i8, ptr %.04553.i, i64 6 ; 2 uses
  %indvars.iv.next60.i.1 = add nuw nsw i64 %indvars.iv59.i, 2 ; 2 uses
  %niter2147.next.1 = add i64 %niter2147, 2       ; 2 uses
  %niter2147.ncmp.1 = icmp eq i64 %niter2147.next.1, %unroll_iter2146
  br i1 %niter2147.ncmp.1, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa, label %.lr.ph55.i, !llvm.loop !143

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i357 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i358.3, %.lr.ph.i ] ; 5 uses
  %.14651.i = phi ptr [ %i.yl, %.lr.ph.preheader.i.new ], [ %i.aaw, %.lr.ph.i ] ; 5 uses
  %niter2141 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter2141.next.3, %.lr.ph.i ]
  %i.zs = getelementptr inbounds nuw i8, ptr %i.yh, i64 %indvars.iv.i357
  %i.zt = load i8, ptr %i.zs, align 1
  %i.zu = zext i8 %i.zt to i64
  %i.zv = shl nuw nsw i64 %i.zu, 2
  %i.zw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.zv
  %i.zx = load <4 x i8>, ptr %i.zw, align 4
  store <4 x i8> %i.zx, ptr %.14651.i, align 1
  %i.zy = getelementptr inbounds nuw i8, ptr %.14651.i, i64 4
  %i.zz = getelementptr inbounds nuw i8, ptr %i.yh, i64 %indvars.iv.i357
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 1
end_hunk_2
begin_hunk_3_@_ZL15stbi__de_iphoneP9stbi__png:bb.a
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
  %i.ag = load i8, ptr %i.af, align 1             ; 3 uses
  %i.ah = load i8, ptr %.14711, align 1           ; 2 uses
  %.not51 = icmp eq i8 %i.ag, 0
  br i1 %.not51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ai = lshr i8 %i.ag, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = mul nuw nsw i32 %i.al, 255
  %i.an = zext nneg i8 %i.ai to i32               ; 3 uses
  %i.ao = add nuw nsw i32 %i.am, %i.an
  %.lhs.trunc = trunc nuw i32 %i.ao to i16
  %.rhs.trunc = zext i8 %i.ag to i16              ; 3 uses
  %i.ap = udiv i16 %.lhs.trunc, %.rhs.trunc
  %i.aq = trunc i16 %i.ap to i8
  store i8 %i.aq, ptr %.14711, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.14711, i64 1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i32
  %i.au = mul nuw nsw i32 %i.at, 255
  %i.av = add nuw nsw i32 %i.au, %i.an
  %.lhs.trunc1 = trunc nuw i32 %i.av to i16
  %i.aw = udiv i16 %.lhs.trunc1, %.rhs.trunc
  %i.ax = trunc i16 %i.aw to i8
  store i8 %i.ax, ptr %i.ar, align 1
  %i.ay = zext i8 %i.ah to i32
  %i.az = mul nuw nsw i32 %i.ay, 255
  %i.ba = add nuw nsw i32 %i.az, %i.an
  %.lhs.trunc4 = trunc nuw i32 %i.ba to i16
  %i.bb = udiv i16 %.lhs.trunc4, %.rhs.trunc
  %i.bc = trunc i16 %i.bb to i8
  store i8 %i.bc, ptr %i.aj, align 1
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1
  store i8 %i.be, ptr %.14711, align 1
  store i8 %i.ah, ptr %i.bd, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %.14711, i64 4
  %i.bg = add nuw i32 %.112, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bg, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !160

.lr.ph15:                                         ; preds = %.lr.ph15, %.lr.ph15.preheader.new
  %.24813 = phi ptr [ %.24.val, %.lr.ph15.preheader.new ], [ %i.bw, %.lr.ph15 ] ; 10 uses
  %niter = phi i32 [ 0, %.lr.ph15.preheader.new ], [ %niter.next.3, %.lr.ph15 ]
  %i.bh = load i8, ptr %.24813, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.24813, i64 2 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1
  store i8 %i.bj, ptr %.24813, align 1
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.24813, i64 4 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.24813, i64 6 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1
  store i8 %i.bn, ptr %i.bk, align 1
  store i8 %i.bl, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.24813, i64 8 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.24813, i64 10 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1
  store i8 %i.br, ptr %i.bo, align 1
  store i8 %i.bp, ptr %i.bq, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.24813, i64 12 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.24813, i64 14 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1
  store i8 %i.bv, ptr %i.bs, align 1
  store i8 %i.bt, ptr %i.bu, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.24813, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit32.unr-lcssa, label %.lr.ph15, !llvm.loop !161

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
  %i.bx = load i8, ptr %.04616.epil, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 2 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1
  store i8 %i.bz, ptr %.04616.epil, align 1
  store i8 %i.bx, ptr %i.by, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 3
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !162

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
  %i.cb = load i8, ptr %.24813.epil, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1
  store i8 %i.cd, ptr %.24813.epil, align 1
  store i8 %i.cb, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !163

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #31 {
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

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.a, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %bb.d

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.r = mul nuw nsw i32 %i.h, %i.m
  %8 = zext nneg i32 %i.r to i64
  %i.s = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %8) #51 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit.thread, %_ZL17stbi__malloc_mad3iiii.exit
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.u, align 8
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
  store ptr @.str.11, ptr %i.ae, align 8
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
  store ptr @.str.11, ptr %i.ak, align 8
  br label %bb.ak

bb.h:                                             ; preds = %_ZL21stbi__mad2sizes_validiii.exit
  %i.al = add nuw nsw i32 %i.ag, 1
  %i.am = mul i32 %i.al, %5
  %i.an = icmp ult i32 %2, %i.am
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.ao, align 8
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.ap = shl nuw nsw i32 %i.ag, 1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.aq) #51 ; 5 uses
  %.not283 = icmp eq ptr %i.ar, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.as, align 8
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
  %i.di = load ptr, ptr %i.t, align 8
  %i.dj = mul i32 %i.e, %i.cz
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dk ; 33 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.dn = load i8, ptr %.0272398, align 1         ; 3 uses
  %i.do = icmp ugt i8 %i.dn, 4
  br i1 %i.do, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = icmp eq i64 %indvars.iv457, 0
  br i1 %i.dp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dq = zext nneg i8 %i.dn to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @_ZL16first_row_filter, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1
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
  %wide.load674 = load <16 x i8>, ptr %i.du, align 1
  %wide.load675 = load <16 x i8>, ptr %i.dv, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 %index673 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load676 = load <16 x i8>, ptr %i.dw, align 1
  %wide.load677 = load <16 x i8>, ptr %i.dx, align 1
  %i.dy = add <16 x i8> %wide.load676, %wide.load674
  %i.dz = add <16 x i8> %wide.load677, %wide.load675
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index673 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store <16 x i8> %i.dy, ptr %i.ea, align 1
  store <16 x i8> %i.dz, ptr %i.eb, align 1
  %index.next678 = add nuw i64 %index673, 32      ; 2 uses
  %i.ec = icmp eq i64 %index.next678, %n.vec671
  br i1 %i.ec, label %middle.block679, label %vector.body672, !llvm.loop !164

middle.block679:                                  ; preds = %vector.body672
  br i1 %cmp.n680, label %.preheader354, label %vec.epilog.iter.check684

vec.epilog.iter.check684:                         ; preds = %middle.block679
  br i1 %min.epilog.iters.check685, label %.lr.ph360.preheader, label %vec.epilog.ph686, !prof !18

vec.epilog.ph686:                                 ; preds = %vector.main.loop.iter.check668, %vec.epilog.iter.check684
  %vec.epilog.resume.val681 = phi i64 [ %n.vec671, %vec.epilog.iter.check684 ], [ 0, %vector.main.loop.iter.check668 ]
  br label %vec.epilog.vector.body688

vec.epilog.vector.body688:                        ; preds = %vec.epilog.vector.body688, %vec.epilog.ph686
  %index689 = phi i64 [ %vec.epilog.resume.val681, %vec.epilog.ph686 ], [ %index.next692, %vec.epilog.vector.body688 ] ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index689
  %wide.load690 = load <4 x i8>, ptr %i.ed, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dh, i64 %index689
  %wide.load691 = load <4 x i8>, ptr %i.ee, align 1
  %i.ef = add <4 x i8> %wide.load691, %wide.load690
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index689
  store <4 x i8> %i.ef, ptr %i.eg, align 1
  %index.next692 = add nuw i64 %index689, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next692, %n.vec687
  br i1 %i.eh, label %vec.epilog.middle.block693, label %vec.epilog.vector.body688, !llvm.loop !165

vec.epilog.middle.block693:                       ; preds = %vec.epilog.vector.body688
  br i1 %cmp.n694, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check682, %vec.epilog.iter.check684, %vec.epilog.middle.block693
  %indvars.iv421.ph = phi i64 [ 0, %iter.check682 ], [ %n.vec671, %vec.epilog.iter.check684 ], [ %n.vec687, %vec.epilog.middle.block693 ] ; 3 uses
  br i1 %lcmp.mod748.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv421.prol
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv421.prol
  %i.el = load i8, ptr %i.ek, align 1
  %.narrow286.prol = add i8 %i.el, %i.ej
  %i.em = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.em, align 1
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter747
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !166

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
  %wide.load603 = load <16 x i8>, ptr %i.eq, align 1
  %wide.load604 = load <16 x i8>, ptr %i.er, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.dh, i64 %index602 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load605 = load <16 x i8>, ptr %i.es, align 1
  %wide.load606 = load <16 x i8>, ptr %i.et, align 1
  %i.eu = lshr <16 x i8> %wide.load605, splat (i8 1)
  %i.ev = lshr <16 x i8> %wide.load606, splat (i8 1)
  %i.ew = add <16 x i8> %i.eu, %wide.load603
  %i.ex = add <16 x i8> %i.ev, %wide.load604
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index602 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <16 x i8> %i.ew, ptr %i.ey, align 1
  store <16 x i8> %i.ex, ptr %i.ez, align 1
  %index.next607 = add nuw i64 %index602, 32      ; 2 uses
  %i.fa = icmp eq i64 %index.next607, %n.vec600
  br i1 %i.fa, label %middle.block608, label %vector.body601, !llvm.loop !167

middle.block608:                                  ; preds = %vector.body601
  br i1 %cmp.n609, label %.preheader351, label %vec.epilog.iter.check613

vec.epilog.iter.check613:                         ; preds = %middle.block608
  br i1 %min.epilog.iters.check614, label %.lr.ph364.preheader, label %vec.epilog.ph615, !prof !18

vec.epilog.ph615:                                 ; preds = %vector.main.loop.iter.check597, %vec.epilog.iter.check613
  %vec.epilog.resume.val610 = phi i64 [ %n.vec600, %vec.epilog.iter.check613 ], [ 0, %vector.main.loop.iter.check597 ]
  br label %vec.epilog.vector.body617

vec.epilog.vector.body617:                        ; preds = %vec.epilog.vector.body617, %vec.epilog.ph615
  %index618 = phi i64 [ %vec.epilog.resume.val610, %vec.epilog.ph615 ], [ %index.next621, %vec.epilog.vector.body617 ] ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index618
  %wide.load619 = load <4 x i8>, ptr %i.fb, align 1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dh, i64 %index618
  %wide.load620 = load <4 x i8>, ptr %i.fc, align 1
  %i.fd = lshr <4 x i8> %wide.load620, splat (i8 1)
  %i.fe = add <4 x i8> %i.fd, %wide.load619
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index618
  store <4 x i8> %i.fe, ptr %i.ff, align 1
  %index.next621 = add nuw i64 %index618, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next621, %n.vec616
  br i1 %i.fg, label %vec.epilog.middle.block622, label %vec.epilog.vector.body617, !llvm.loop !168

vec.epilog.middle.block622:                       ; preds = %vec.epilog.vector.body617
  br i1 %cmp.n623, label %.preheader351, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %iter.check611, %vec.epilog.iter.check613, %vec.epilog.middle.block622
end_hunk_3
