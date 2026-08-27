Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Assimp?download=true
inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 53
begin_hunk_0_@assimp_stbi_load_16_from_memory:bb.a

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @assimp_stbi_load_16_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
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
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !39 ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @assimp_stbi_load_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @assimp_stbi_load_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
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
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !39 ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @assimp_stbi_loadf_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) unnamed_addr #2 {
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
  %i.i = mul nsw i32 %i.c, %i.b                   ; 9 uses
  %i.j = or i32 %i.e, %i.i
  %or.cond.not.i16.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i16.i.i.i, label %bb.f, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.f:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i
  %i.k = icmp eq i32 %i.e, 0
  br i1 %i.k, label %_ZL17stbi__malloc_mad4iiiii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit18.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.i.i.i:        ; preds = %bb.f
  %i.l = udiv i32 2147483647, %i.e
  %.not.i.i.i = icmp sle i32 %i.i, %i.l
  %i.m = mul nsw i32 %i.e, %i.i
  %or.cond.not.i.i = icmp ult i32 %i.m, 536870912
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %or.cond.not.i.i, i1 false
  br i1 %or.cond.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

_ZL17stbi__malloc_mad4iiiii.exit.i:               ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %bb.f
  %i.n = shl i32 %i.i, 2
  %i.o = mul i32 %i.n, %i.e
  %i.p = sext i32 %i.o to i64
  %i.q = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.p) #50 ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %bb.g

_ZL17stbi__malloc_mad4iiiii.exit.thread.i:        ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.d
  tail call void @free(ptr noundef nonnull %i.a) #47
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.s, align 8
  br label %_ZL16stbi__ldr_to_hdrPhiii.exit

bb.g:                                             ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i
  %i.t = and i32 %i.e, 1
  %.not.i = icmp eq i32 %i.t, 0                   ; 2 uses
  %i.u = sext i1 %.not.i to i32
  %.0.i = add i32 %i.e, %i.u                      ; 5 uses
  %i.v = icmp sgt i32 %i.i, 0
  br i1 %i.v, label %.preheader48.lr.ph.i, label %.loopexit.i

.preheader48.lr.ph.i:                             ; preds = %bb.g
  %i.w = icmp sgt i32 %.0.i, 0
  %i.x = load float, ptr @_ZL15stbi__l2h_gamma, align 4 ; 3 uses
  %i.y = load float, ptr @_ZL15stbi__l2h_scale, align 4 ; 3 uses
  br i1 %i.w, label %.preheader48.preheader.i, label %._crit_edge51.split.i

.preheader48.preheader.i:                         ; preds = %.preheader48.lr.ph.i
  %i.z = sext i32 %i.e to i64
  %wide.trip.count57.i = zext nneg i32 %i.i to i64
  %wide.trip.count.i = zext nneg i32 %.0.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.aa = icmp eq i32 %.0.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod21 = trunc i32 %.0.i to i1
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %._crit_edge.i, %.preheader48.preheader.i
  %indvars.iv54.i = phi i64 [ 0, %.preheader48.preheader.i ], [ %indvars.iv.next55.i, %._crit_edge.i ] ; 2 uses
  %i.ab = mul nsw i64 %indvars.iv54.i, %i.z       ; 3 uses
  br i1 %i.aa, label %.epil.preheader, label %.preheader48.i.new

.preheader48.i.new:                               ; preds = %.preheader48.i, %.preheader48.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader48.i.new ], [ 0, %.preheader48.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader48.i.new ], [ 0, %.preheader48.i ]
  %i.ac = add nsw i64 %indvars.iv.i, %i.ab        ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = uitofp i8 %i.ae to float
  %i.ag = fdiv float %i.af, 2.550000e+02
  %i.ah = tail call noundef float @powf(float noundef %i.ag, float noundef %i.x) #47
  %i.ai = fmul float %i.y, %i.ah
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ac
  store float %i.ai, ptr %i.aj, align 4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ak = add nsw i64 %indvars.iv.next.i, %i.ab   ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.a, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  %i.an = uitofp i8 %i.am to float
  %i.ao = fdiv float %i.an, 2.550000e+02
  %i.ap = tail call noundef float @powf(float noundef %i.ao, float noundef %i.x) #47
  %i.aq = fmul float %i.y, %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ak
  store float %i.aq, ptr %i.ar, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader48.i.new, !llvm.loop !40

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader48.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader48.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader48.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.as = add nsw i64 %indvars.iv.i.epil.init, %i.ab ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.a, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %i.av = uitofp i8 %i.au to float
  %i.aw = fdiv float %i.av, 2.550000e+02
  %i.ax = tail call noundef float @powf(float noundef %i.aw, float noundef %i.x) #47
  %i.ay = fmul float %i.y, %i.ax
  %i.az = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.as
  store float %i.ay, ptr %i.az, align 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, %wide.trip.count57.i
  br i1 %exitcond58.not.i, label %._crit_edge51.split.i, label %.preheader48.i, !llvm.loop !41

._crit_edge51.split.i:                            ; preds = %._crit_edge.i, %.preheader48.lr.ph.i
  br i1 %.not.i, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge51.split.i
  %i.ba = sext i32 %i.e to i64                    ; 3 uses
  %i.bb = sext i32 %.0.i to i64                   ; 3 uses
  %wide.trip.count62.i = zext nneg i32 %i.i to i64 ; 2 uses
  %xtraiter22 = and i64 %wide.trip.count62.i, 1
  %i.bc = icmp eq i32 %i.i, 1
  br i1 %i.bc, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter25 = and i64 %wide.trip.count62.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next60.i.1, %.lr.ph.i ] ; 3 uses
  %niter26 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter26.next.1, %.lr.ph.i ]
  %i.bd = mul nsw i64 %indvars.iv59.i, %i.ba
  %i.be = add nsw i64 %i.bd, %i.bb                ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.a, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = uitofp i8 %i.bg to float
  %i.bi = fdiv float %i.bh, 2.550000e+02
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.be
  store float %i.bi, ptr %i.bj, align 4
  %indvars.iv.next60.i = or disjoint i64 %indvars.iv59.i, 1
  %i.bk = mul nsw i64 %indvars.iv.next60.i, %i.ba
  %i.bl = add nsw i64 %i.bk, %i.bb                ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.a, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = uitofp i8 %i.bn to float
  %i.bp = fdiv float %i.bo, 2.550000e+02
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bl
  store float %i.bp, ptr %i.bq, align 4
  %indvars.iv.next60.i.1 = add nuw nsw i64 %indvars.iv59.i, 2 ; 2 uses
  %niter26.next.1 = add i64 %niter26, 2           ; 2 uses
  %niter26.ncmp.1 = icmp eq i64 %niter26.next.1, %unroll_iter25
  br i1 %niter26.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !42

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod23.not = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv59.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next60.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod24 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.br = mul nsw i64 %indvars.iv59.i.epil.init, %i.ba
  %i.bs = add nsw i64 %i.br, %i.bb                ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.a, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = uitofp i8 %i.bu to float
  %i.bw = fdiv float %i.bv, 2.550000e+02
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bs
  store float %i.bw, ptr %i.bx, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %._crit_edge51.split.i, %bb.g
  tail call void @free(ptr noundef nonnull %i.a) #47
  br label %_ZL16stbi__ldr_to_hdrPhiii.exit

bb.h:                                             ; preds = %bb.a
  %i.by = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.5, ptr %i.by, align 8
  br label %_ZL16stbi__ldr_to_hdrPhiii.exit

_ZL16stbi__ldr_to_hdrPhiii.exit:                  ; preds = %.loopexit.i, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i ], [ %i.q, %.loopexit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @assimp_stbi_loadf_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
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
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !39 ; 2 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @assimp_stbi_loadf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
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
  %i.l = call noundef i32 %i.k(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef 128), !inline_history !43 ; 2 uses
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
  %i.aa = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %i.ab = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %assimp_stbi_loadf_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.aa, %assimp_stbi_loadf_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @assimp_stbi_loadf_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
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
  %i.j = call noundef i32 %i.i(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !26 ; 2 uses
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
  store ptr %i.l, ptr %i.c, align 8
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
  %i.eu = tail call noundef i32 %i.er(ptr noundef %i.es, ptr noundef nonnull %i.h, i32 noundef %i.et), !inline_history !81
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
  %i.fl = tail call noundef i32 %i.fi(ptr noundef %i.fj, ptr noundef nonnull %i.h, i32 noundef %i.fk), !inline_history !81 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
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
  %i.gj = load ptr, ptr %i.gi, align 8            ; 18 uses
  store ptr null, ptr %i.gi, align 8
  %.not48.i.i = icmp eq i32 %4, 0
  %.pre118.i.i = load ptr, ptr %6, align 8        ; 6 uses
  br i1 %.not48.i.i, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gk = getelementptr inbounds nuw i8, ptr %.pre118.i.i, i64 12 ; 3 uses
  %i.gl = load i32, ptr %i.gk, align 4            ; 11 uses
  %.not49.i.i = icmp eq i32 %4, %i.gl
  br i1 %.not49.i.i, label %bb.bj, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gm = load i32, ptr %.pre118.i.i, align 8     ; 50 uses
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
  %i.gv = mul nsw i32 %i.gr, %i.go
  %i.gw = sext i32 %i.gv to i64
  %i.gx = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.gw) #50 ; 10 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i, label %.preheader197.i.i.i

.preheader197.i.i.i:                              ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i.i.i
  %i.gz = icmp sgt i32 %i.go, 0
  br i1 %i.gz, label %.lr.ph258.i.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.i.i

.lr.ph258.i.i.i:                                  ; preds = %.preheader197.i.i.i
  %i.ha = shl nsw i32 %i.gl, 3
  %i.hb = or disjoint i32 %i.ha, %4               ; 2 uses
  %.11167198.i.i.i = add nsw i32 %i.gm, -1        ; 30 uses
  switch i32 %i.hb, label %_ZL20stbi__convert_formatPhiijj.exit.thread.sink.split.i.i [
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
  %i.hc = add nsw i32 %i.gm, -2                   ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hc, i32 -1) ; 2 uses
  %i.hd = sub i32 %i.hc, %smin                    ; 14 uses
  %i.he = zext i32 %i.hd to i64                   ; 8 uses
  %i.hf = add nuw nsw i64 %i.he, 1                ; 25 uses
  %scevgep81 = getelementptr i8, ptr %i.gx, i64 %i.hf
  %i.hg = mul i32 %i.gm, %4
  %i.hh = shl nuw nsw i64 %i.he, 1
  %i.hi = getelementptr i8, ptr %i.gj, i64 %i.hh
  %scevgep83 = getelementptr i8, ptr %i.hi, i64 1
  %i.hj = mul i32 %i.gl, %i.gm
  %scevgep142 = getelementptr i8, ptr %i.gx, i64 %i.hf
  %i.hk = mul i32 %i.gm, %4
  %i.hl = mul nuw nsw i64 %i.he, 3
  %i.hm = getelementptr i8, ptr %i.gj, i64 %i.hl
  %scevgep144 = getelementptr i8, ptr %i.hm, i64 3
  %i.hn = mul i32 %i.gl, %i.gm
  %i.ho = shl nuw nsw i64 %i.he, 1
  %i.hp = getelementptr i8, ptr %i.gx, i64 %i.ho
  %scevgep205 = getelementptr i8, ptr %i.hp, i64 2
  %i.hq = mul i32 %i.gm, %4
  %i.hr = mul nuw nsw i64 %i.he, 3
  %i.hs = getelementptr i8, ptr %i.gj, i64 %i.hr
  %scevgep207 = getelementptr i8, ptr %i.hs, i64 3
  %i.ht = mul i32 %i.gl, %i.gm
  %scevgep235 = getelementptr i8, ptr %i.gx, i64 %i.hf
  %i.hu = mul i32 %i.gm, %4
  %i.hv = shl nuw nsw i64 %i.he, 2
  %i.hw = getelementptr i8, ptr %i.gj, i64 %i.hv
  %scevgep237 = getelementptr i8, ptr %i.hw, i64 3
  %i.hx = mul i32 %i.gl, %i.gm
  %i.hy = shl nuw nsw i64 %i.he, 1
  %i.hz = getelementptr i8, ptr %i.gx, i64 %i.hy
  %scevgep296 = getelementptr i8, ptr %i.hz, i64 2
  %i.ia = mul i32 %i.gm, %4
  %i.ib = shl nuw nsw i64 %i.he, 2
  %i.ic = getelementptr i8, ptr %i.gj, i64 %i.ib
  %scevgep298 = getelementptr i8, ptr %i.ic, i64 4
  %i.id = mul i32 %i.gl, %i.gm
  %i.ie = xor i32 %smin, -1
  %i.if = add nuw i32 %i.gm, %i.ie                ; 6 uses
  %min.iters.check304 = icmp ult i32 %i.hd, 7
  %n.vec306 = and i64 %i.hf, 8589934584           ; 5 uses
  %i.ig = trunc i64 %n.vec306 to i32
  %i.ih = sub i32 %.11167198.i.i.i, %i.ig
  %i.ii = shl nuw nsw i64 %n.vec306, 1
  %i.ij = shl nuw nsw i64 %n.vec306, 2
  %cmp.n321 = icmp eq i64 %i.hf, %n.vec306
  %min.iters.check243 = icmp ult i32 %i.hd, 8
  %min.iters.check245 = icmp ult i32 %i.hd, 16
  %i.ik = and i64 %i.hf, 15                       ; 2 uses
  %i.il = icmp eq i64 %i.ik, 0
  %i.im = select i1 %i.il, i64 16, i64 %i.ik      ; 2 uses
  %n.vec247 = sub nsw i64 %i.hf, %i.im            ; 5 uses
  %i.in = trunc i64 %n.vec247 to i32
  %i.io = sub i32 %.11167198.i.i.i, %i.in
  %i.ip = shl nsw i64 %n.vec247, 2
  %min.epilog.iters.check276 = icmp samesign ult i64 %i.im, 9
  %i.iq = and i64 %i.hf, 7                        ; 2 uses
  %i.ir = icmp eq i64 %i.iq, 0
  %i.is = select i1 %i.ir, i64 8, i64 %i.iq
  %n.vec278 = sub nsw i64 %i.hf, %i.is            ; 4 uses
  %i.it = trunc i64 %n.vec278 to i32
  %i.iu = sub i32 %.11167198.i.i.i, %i.it
  %i.iv = shl nsw i64 %n.vec278, 2
  %min.iters.check213 = icmp ult i32 %i.hd, 7
  %n.vec215 = and i64 %i.hf, 8589934584           ; 5 uses
  %i.iw = trunc i64 %n.vec215 to i32
  %i.ix = sub i32 %.11167198.i.i.i, %i.iw
  %i.iy = shl nuw nsw i64 %n.vec215, 1
  %i.iz = mul nuw nsw i64 %n.vec215, 3
  %cmp.n230 = icmp eq i64 %i.hf, %n.vec215
  %min.iters.check150 = icmp ult i32 %i.hd, 7
  %min.iters.check152 = icmp ult i32 %i.hd, 15
  %i.ja = and i64 %i.hf, 8
  %n.vec154 = and i64 %i.hf, 8589934576           ; 6 uses
  %i.jb = trunc i64 %n.vec154 to i32
  %i.jc = sub i32 %.11167198.i.i.i, %i.jb
  %i.jd = mul nuw nsw i64 %n.vec154, 3
  %cmp.n176 = icmp eq i64 %i.hf, %n.vec154
  %min.epilog.iters.check184.not.not = icmp eq i64 %i.ja, 0
  %n.vec186 = and i64 %i.hf, 8589934584           ; 5 uses
  %i.je = trunc i64 %n.vec186 to i32
  %i.jf = sub i32 %.11167198.i.i.i, %i.je
  %i.jg = mul nuw nsw i64 %n.vec186, 3
  %cmp.n200 = icmp eq i64 %i.hf, %n.vec186
  %xtraiter376 = and i32 %i.if, 1
  %lcmp.mod377.not = icmp eq i32 %xtraiter376, 0
  %.6162.i.i.i.prol = add nsw i32 %i.gm, -2
  %i.jh = icmp slt i32 %i.gm, 2
  %xtraiter379 = and i32 %i.if, 1
  %lcmp.mod380.not = icmp eq i32 %xtraiter379, 0
  %.5161.i.i.i.prol = add nsw i32 %i.gm, -2
  %i.ji = icmp slt i32 %i.gm, 2
  %xtraiter382 = and i32 %i.if, 3                 ; 2 uses
  %lcmp.mod383.not = icmp eq i32 %xtraiter382, 0
  %i.jj = icmp ult i32 %i.hd, 3
  %min.iters.check89 = icmp ult i32 %i.hd, 8
  %min.iters.check91 = icmp ult i32 %i.hd, 16
  %i.jk = and i64 %i.hf, 15                       ; 2 uses
  %i.jl = icmp eq i64 %i.jk, 0
  %i.jm = select i1 %i.jl, i64 16, i64 %i.jk      ; 2 uses
  %n.vec93 = sub nsw i64 %i.hf, %i.jm             ; 5 uses
  %i.jn = trunc i64 %n.vec93 to i32
  %i.jo = sub i32 %.11167198.i.i.i, %i.jn
  %i.jp = shl nsw i64 %n.vec93, 1
  %min.epilog.iters.check122 = icmp samesign ult i64 %i.jm, 9
  %i.jq = and i64 %i.hf, 7                        ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 0
  %i.js = select i1 %i.jr, i64 8, i64 %i.jq
  %n.vec124 = sub nsw i64 %i.hf, %i.js            ; 4 uses
  %i.jt = trunc i64 %n.vec124 to i32
  %i.ju = sub i32 %.11167198.i.i.i, %i.jt
  %i.jv = shl nsw i64 %n.vec124, 1
  %xtraiter385 = and i32 %i.if, 3                 ; 2 uses
  %lcmp.mod386.not = icmp eq i32 %xtraiter385, 0
  %i.jw = icmp ult i32 %i.hd, 3
  %xtraiter388 = and i32 %i.if, 3                 ; 2 uses
  %lcmp.mod389.not = icmp eq i32 %xtraiter388, 0
  %i.jx = icmp ult i32 %i.hd, 3
  %min.iters.check50 = icmp ult i32 %i.hd, 3
  %min.iters.check51 = icmp ult i32 %i.hd, 15
  %i.jy = and i64 %i.hf, 12
  %n.vec53 = and i64 %i.hf, 8589934576            ; 6 uses
  %i.jz = trunc i64 %n.vec53 to i32
  %i.ka = sub i32 %.11167198.i.i.i, %i.jz
  %i.kb = shl nuw nsw i64 %n.vec53, 1
  %cmp.n65 = icmp eq i64 %i.hf, %n.vec53
  %min.epilog.iters.check = icmp eq i64 %i.jy, 0
  %n.vec69 = and i64 %i.hf, 8589934588            ; 5 uses
  %i.kc = trunc i64 %n.vec69 to i32
  %i.kd = sub i32 %.11167198.i.i.i, %i.kc
  %i.ke = shl nuw nsw i64 %n.vec69, 1
  %cmp.n76 = icmp eq i64 %i.hf, %n.vec69
  %xtraiter391 = and i32 %i.if, 1
  %lcmp.mod392.not = icmp eq i32 %xtraiter391, 0
  %.11167.i.i.i.prol = add nsw i32 %i.gm, -2
  %i.kf = icmp slt i32 %i.gm, 2
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.i.i.i, %.lr.ph258.split.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph258.split.i.i.i ], [ %indvars.iv.next.i.i.i, %.loopexit.i.i.i ] ; 12 uses
  %i.kg = trunc i64 %indvars.iv.i.i.i to i32
  %i.kh = mul i32 %i.ia, %i.kg
  %i.ki = zext i32 %i.kh to i64
  %scevgep297 = getelementptr i8, ptr %scevgep296, i64 %i.ki
  %i.kj = trunc i64 %indvars.iv.i.i.i to i32
  %i.kk = mul i32 %i.id, %i.kj
  %i.kl = zext i32 %i.kk to i64
  %scevgep299 = getelementptr i8, ptr %scevgep298, i64 %i.kl
  %i.km = trunc i64 %indvars.iv.i.i.i to i32
  %i.kn = mul i32 %i.hu, %i.km
  %i.ko = zext i32 %i.kn to i64
  %scevgep236 = getelementptr i8, ptr %scevgep235, i64 %i.ko
  %i.kp = trunc i64 %indvars.iv.i.i.i to i32
  %i.kq = mul i32 %i.hx, %i.kp
  %i.kr = zext i32 %i.kq to i64
  %scevgep238 = getelementptr i8, ptr %scevgep237, i64 %i.kr
  %i.ks = trunc i64 %indvars.iv.i.i.i to i32
  %i.kt = mul i32 %i.hq, %i.ks
  %i.ku = zext i32 %i.kt to i64
  %scevgep206 = getelementptr i8, ptr %scevgep205, i64 %i.ku
  %i.kv = trunc i64 %indvars.iv.i.i.i to i32
  %i.kw = mul i32 %i.ht, %i.kv
  %i.kx = zext i32 %i.kw to i64
  %scevgep208 = getelementptr i8, ptr %scevgep207, i64 %i.kx
  %i.ky = trunc i64 %indvars.iv.i.i.i to i32
  %i.kz = mul i32 %i.hk, %i.ky
  %i.la = zext i32 %i.kz to i64
  %scevgep143 = getelementptr i8, ptr %scevgep142, i64 %i.la
end_hunk_1
begin_hunk_2_@_ZL20stbi__parse_png_fileP9stbi__pngii:bb.a
bb.eu:                                            ; preds = %bb.eu, %bb.et
  %.2228 = phi i32 [ %.1227, %bb.et ], [ %i.rj, %bb.eu ] ; 4 uses
  %i.ri = icmp ugt i32 %i.rd, %.2228
  %i.rj = shl i32 %.2228, 1
  br i1 %i.ri, label %bb.eu, label %bb.ev, !llvm.loop !166

bb.ev:                                            ; preds = %bb.eu
  %i.rk = load ptr, ptr %i.f, align 8
  %i.rl = zext i32 %.2228 to i64
  %i.rm = tail call ptr @realloc(ptr noundef %i.rk, i64 noundef %i.rl) #51 ; 3 uses
  %.not272 = icmp eq ptr %i.rm, null
  br i1 %.not272, label %.thread382, label %bb.ew

.thread382:                                       ; preds = %bb.ev
  %i.rn = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.rn, align 8
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
  %i.sk = tail call noundef i32 %i.sg(ptr noundef %i.sh, ptr noundef %i.si, i32 noundef %i.sj), !inline_history !167
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.tb = sext i32 %i.ta to i64
  %i.tc = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.tb) #50 ; 2 uses
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
  call void @free(ptr noundef %i.tk) #47
  br label %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread

assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread: ; preds = %bb.fg, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  store ptr %i.to, ptr %i.e, align 8
  %i.tt = icmp eq ptr %i.to, null
  br i1 %i.tt, label %.thread399, label %bb.fh

bb.fh:                                            ; preds = %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit
  %i.tu = load ptr, ptr %i.f, align 8
  call void @free(ptr noundef %i.tu) #47
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
  %i.uo = mul nsw i32 %i.uk, %i.ui                ; 3 uses
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
  %i.us = mul nsw i32 %i.uo, %i.ug
  %i.ut = sext i32 %i.us to i64
  %i.uu = call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.ut) #50 ; 4 uses
  %.not92.i = icmp eq ptr %i.uu, null
  br i1 %.not92.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread.i, label %.preheader100.i

.preheader100.i:                                  ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i
  %i.uv = sext i32 %i.ug to i64                   ; 9 uses
  br label %bb.fl

_ZL17stbi__malloc_mad3iiii.exit.thread.i:         ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.fi
  %i.uw = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.uw, align 8
  br label %.thread399

bb.fl:                                            ; preds = %bb.fn, %.preheader100.i
  %indvars.iv112.i = phi i64 [ 0, %.preheader100.i ], [ %indvars.iv.next113.i, %bb.fn ] ; 5 uses
  %.076106.i = phi ptr [ %i.uc, %.preheader100.i ], [ %.379.i, %bb.fn ] ; 3 uses
  %.085104.i = phi i32 [ %i.ts, %.preheader100.i ], [ %.388.i, %bb.fn ] ; 3 uses
  %i.ux = load ptr, ptr %0, align 8               ; 3 uses
  %i.uy = load i32, ptr %i.ux, align 8
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xorig, i64 %indvars.iv112.i
  %i.va = load i32, ptr %i.uz, align 4            ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.xspc, i64 %indvars.iv112.i
  %i.vc = load i32, ptr %i.vb, align 4            ; 4 uses
  %i.vd = xor i32 %i.va, -1
  %i.ve = add i32 %i.uy, %i.vd
  %i.vf = add i32 %i.ve, %i.vc                    ; 2 uses
  %i.vg = udiv i32 %i.vf, %i.vc                   ; 6 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  %i.vi = load i32, ptr %i.vh, align 4
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yorig, i64 %indvars.iv112.i
  %i.vk = load i32, ptr %i.vj, align 4            ; 2 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr @__const._ZL22stbi__create_png_imageP9stbi__pngPhjiiii.yspc, i64 %indvars.iv112.i
  %i.vm = load i32, ptr %i.vl, align 4            ; 4 uses
  %i.vn = xor i32 %i.vk, -1
  %i.vo = add i32 %i.vi, %i.vn
  %i.vp = add i32 %i.vo, %i.vm                    ; 2 uses
  %i.vq = udiv i32 %i.vp, %i.vm                   ; 4 uses
  %i.vr = icmp ule i32 %i.vc, %i.vf
  %i.vs = icmp ule i32 %i.vm, %i.vp
  %or.cond.i = select i1 %i.vr, i1 %i.vs, i1 false
  br i1 %or.cond.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.vu = load i32, ptr %i.vt, align 8
  %i.vv = mul i32 %i.vg, %i.ud
  %i.vw = mul i32 %i.vv, %i.vu
  %i.vx = add nsw i32 %i.vw, 7
  %i.vy = ashr i32 %i.vx, 3
  %i.vz = add nsw i32 %i.vy, 1
  %i.wa = mul nsw i32 %i.vz, %i.vq                ; 2 uses
  %i.wb = call fastcc noundef i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr noundef nonnull %0, ptr noundef %.076106.i, i32 noundef %.085104.i, i32 noundef %spec.select1495, i32 noundef %i.vg, i32 noundef %i.vq, i32 noundef %i.ud, i32 noundef range(i32 0, 256) %.0207)
  %.not93.not.i = icmp eq i32 %i.wb, 0
  br i1 %.not93.not.i, label %.thread.i353, label %.preheader99.i

.preheader99.i:                                   ; preds = %bb.fm
  %i.wc = icmp sgt i32 %i.vq, 0
  %i.wd = icmp sgt i32 %i.vg, 0
  %or.cond107.i = and i1 %i.wd, %i.wc
  %.pre115.i = load ptr, ptr %i.g, align 8        ; 4 uses
  br i1 %or.cond107.i, label %.preheader.lr.ph.split.i, label %._crit_edge103.split.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader99.i
  %i.we = load ptr, ptr %0, align 8
  %i.wf = sext i32 %i.vc to i64                   ; 3 uses
  %i.wg = sext i32 %i.va to i64                   ; 3 uses
  %i.wh = zext nneg i32 %i.vg to i64              ; 3 uses
  %i.wi = zext nneg i32 %i.vq to i64
  %.pre.pre.i = load i32, ptr %i.we, align 8
  %factor.op.mul.i = mul i32 %.pre.pre.i, %i.ug
  %xtraiter = and i64 %i.wh, 1
  %i.wj = icmp ult i32 %i.vg, 2
  %unroll_iter = and i64 %i.wh, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2136 = trunc i32 %i.vg to i1
  br label %.preheader.i

.thread.i353:                                     ; preds = %bb.fm
  call void @free(ptr noundef %i.uu) #47
  br label %.thread399

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %indvars.iv109.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next110.i, %._crit_edge.i ] ; 3 uses
  %i.wk = trunc i64 %indvars.iv109.i to i32
  %i.wl = mul i32 %i.vm, %i.wk
  %i.wm = add i32 %i.wl, %i.vk
  %.reass.i = mul i32 %factor.op.mul.i, %i.wm
  %i.wn = mul nuw nsw i64 %indvars.iv109.i, %i.wh ; 3 uses
  %i.wo = zext i32 %.reass.i to i64
  %i.wp = getelementptr inbounds nuw i8, ptr %i.uu, i64 %i.wo ; 3 uses
  br i1 %i.wj, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i351 = phi i64 [ %indvars.iv.next.i352.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.wq = mul nsw i64 %indvars.iv.i351, %i.wf
  %i.wr = add nsw i64 %i.wq, %i.wg
  %i.ws = mul nsw i64 %i.wr, %i.uv
  %i.wt = getelementptr inbounds i8, ptr %i.wp, i64 %i.ws
  %i.wu = add nuw nsw i64 %indvars.iv.i351, %i.wn
  %i.wv = mul nsw i64 %i.wu, %i.uv
  %i.ww = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.wv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wt, ptr align 1 %i.ww, i64 %i.uv, i1 false)
  %indvars.iv.next.i352 = or disjoint i64 %indvars.iv.i351, 1 ; 2 uses
  %i.wx = mul nsw i64 %indvars.iv.next.i352, %i.wf
  %i.wy = add nsw i64 %i.wx, %i.wg
  %i.wz = mul nsw i64 %i.wy, %i.uv
  %i.xa = getelementptr inbounds i8, ptr %i.wp, i64 %i.wz
  %i.xb = add nuw nsw i64 %indvars.iv.next.i352, %i.wn
  %i.xc = mul nsw i64 %i.xb, %i.uv
  %i.xd = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.xc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xa, ptr align 1 %i.xd, i64 %i.uv, i1 false)
  %indvars.iv.next.i352.1 = add nuw nsw i64 %indvars.iv.i351, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !168

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i351.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i352.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2136)
  %i.xe = mul nsw i64 %indvars.iv.i351.epil.init, %i.wf
  %i.xf = add nsw i64 %i.xe, %i.wg
  %i.xg = mul nsw i64 %i.xf, %i.uv
  %i.xh = getelementptr inbounds i8, ptr %i.wp, i64 %i.xg
  %i.xi = add nuw nsw i64 %indvars.iv.i351.epil.init, %i.wn
  %i.xj = mul nsw i64 %i.xi, %i.uv
  %i.xk = getelementptr inbounds i8, ptr %.pre115.i, i64 %i.xj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xh, ptr align 1 %i.xk, i64 %i.uv, i1 false)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %i.xl = icmp samesign ult i64 %indvars.iv.next110.i, %i.wi
  br i1 %i.xl, label %.preheader.i, label %._crit_edge103.split.i, !llvm.loop !169

._crit_edge103.split.i:                           ; preds = %._crit_edge.i, %.preheader99.i
  call void @free(ptr noundef %.pre115.i) #47
  %i.xm = zext i32 %i.wa to i64
  %i.xn = getelementptr inbounds nuw i8, ptr %.076106.i, i64 %i.xm
  %i.xo = sub i32 %.085104.i, %i.wa
  br label %bb.fn

bb.fn:                                            ; preds = %._crit_edge103.split.i, %bb.fl
  %.388.i = phi i32 [ %.085104.i, %bb.fl ], [ %i.xo, %._crit_edge103.split.i ]
  %.379.i = phi ptr [ %.076106.i, %bb.fl ], [ %i.xn, %._crit_edge103.split.i ]
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond.not.i350 = icmp eq i64 %indvars.iv.next113.i, 7
  br i1 %exitcond.not.i350, label %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393, label %bb.fl, !llvm.loop !170

_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393: ; preds = %bb.fn
  store ptr %i.uu, ptr %i.g, align 8
  br label %bb.fo

_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit: ; preds = %bb.fh
  %i.xp = call fastcc noundef i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr noundef nonnull %0, ptr noundef readonly %i.uc, i32 noundef %i.ts, i32 noundef %spec.select1495, i32 noundef %i.ui, i32 noundef %i.uk, i32 noundef %i.ud, i32 noundef range(i32 0, 256) %.0207)
  %.not267 = icmp eq i32 %i.xp, 0
  br i1 %.not267, label %.thread399, label %bb.fo

bb.fo:                                            ; preds = %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit.thread393, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit
  br i1 %i.ua, label %bb.fp, label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  %i.xq = load i32, ptr %i.gn, align 8
  %i.xr = icmp eq i32 %i.xq, 16
  %i.xs = load i32, ptr %i.ub, align 4            ; 2 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %.val299 = load ptr, ptr %i.g, align 8          ; 2 uses
  %.val.val = load i32, ptr %.val, align 8        ; 2 uses
  %i.xt = getelementptr i8, ptr %.val, i64 4
  %.val.val300 = load i32, ptr %i.xt, align 4     ; 2 uses
  br i1 %i.xr, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call fastcc void @_ZL28stbi__compute_transparency16P9stbi__pngPti(i32 %.val.val, i32 %.val.val300, ptr %.val299, ptr noundef %i.c, i32 noundef %i.xs)
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  call fastcc void @_ZL26stbi__compute_transparencyP9stbi__pngPhi(i32 %.val.val, i32 %.val.val300, ptr %.val299, ptr noundef %i.b, i32 noundef %i.xs)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fo
  br i1 %.not258, label %bb.fw, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.xu = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL24stbi__de_iphone_flag_set)
  %i.xv = load i32, ptr %i.xu, align 4
  %.not268 = icmp eq i32 %i.xv, 0
  %i.xw = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL26stbi__de_iphone_flag_local)
  %i.xx = load i32, ptr %i.xw, align 4
  %i.xy = load i32, ptr @_ZL27stbi__de_iphone_flag_global, align 4
  %i.xz = select i1 %.not268, i32 %i.xy, i32 %i.xx
  %.not269 = icmp eq i32 %i.xz, 0
  br i1 %.not269, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ya = load i32, ptr %i.ub, align 4
end_hunk_2
begin_hunk_3_@_ZL15stbi__de_iphoneP9stbi__png:bb.a
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
  br i1 %niter40.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph18, !llvm.loop !187

bb.b:                                             ; preds = %bb.a
  %i.y = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL31stbi__unpremultiply_on_load_set)
  %i.z = load i32, ptr %i.y, align 4
  %.not = icmp eq i32 %i.z, 0
  %i.aa = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL33stbi__unpremultiply_on_load_local)
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = load i32, ptr @_ZL34stbi__unpremultiply_on_load_global, align 4
  %i.ad = select i1 %.not, i32 %i.ac, i32 %i.ab
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
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !188

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
  br i1 %niter.ncmp.3, label %.loopexit.loopexit32.unr-lcssa, label %.lr.ph15, !llvm.loop !189

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
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !190

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
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !191

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #30 {
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
  %i.m = mul nsw i32 %5, %4                       ; 3 uses
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
  %i.r = mul nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.s) #50 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit.thread, %_ZL17stbi__malloc_mad3iiii.exit
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.v, align 8
  br label %bb.ak

bb.e:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.w = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.w, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.x, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.f
  %i.y = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.y
  br i1 %.not23.i, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.f
  %i.z = mul i32 %i.g, %4                         ; 18 uses
  %i.aa = or i32 %i.z, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.aa, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.g:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.ab = icmp eq i32 %6, 0
  br i1 %i.ab, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.g
  %i.ac = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.z, %i.ac
  %i.ad = mul i32 %i.z, %6                        ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 2147483640
  %or.cond = or i1 %.not.i, %i.ae
  br i1 %or.cond, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge

_ZL21stbi__mad3sizes_validiiii.exit.thread:       ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %bb.e, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.af, align 8
  br label %bb.ak

_ZL21stbi__mad3sizes_validiiii.exit._crit_edge:   ; preds = %bb.g, %_ZL21stbi__mul2sizes_validii.exit12.i
  %.pre-phi = phi i32 [ %i.ad, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ 0, %bb.g ]
  %i.ag = add i32 %.pre-phi, 7
  %i.ah = lshr i32 %i.ag, 3                       ; 8 uses
  br i1 %i.k, label %_ZL21stbi__mad2sizes_validiii.exit, label %_ZL21stbi__mul2sizes_validii.exit.i299

_ZL21stbi__mul2sizes_validii.exit.i299:           ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge
  %i.ai = udiv i32 2147483647, %5
  %.not10.i = icmp samesign ugt i32 %i.ah, %i.ai
  br i1 %.not10.i, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %_ZL21stbi__mad2sizes_validiii.exit

_ZL21stbi__mad2sizes_validiii.exit:               ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, %_ZL21stbi__mul2sizes_validii.exit.i299
  %i.aj = mul nuw nsw i32 %i.ah, %5
  %i.ak = xor i32 %i.ah, 2147483647
  %.not330 = icmp sgt i32 %i.aj, %i.ak
  br i1 %.not330, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %bb.h

_ZL21stbi__mad2sizes_validiii.exit.thread:        ; preds = %_ZL21stbi__mul2sizes_validii.exit.i299, %_ZL21stbi__mad2sizes_validiii.exit
  %i.al = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.al, align 8
  br label %bb.ak

bb.h:                                             ; preds = %_ZL21stbi__mad2sizes_validiii.exit
  %i.am = add nuw nsw i32 %i.ah, 1
  %i.an = mul i32 %i.am, %5
  %i.ao = icmp ult i32 %2, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.ap, align 8
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.aq = shl nuw nsw i32 %i.ah, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.ar) #50 ; 5 uses
  %.not283 = icmp eq ptr %i.as, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.at, align 8
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.au = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.au, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.au, i32 %i.ah, i32 %4
  %i.av = zext nneg i32 %i.ah to i64
  %i.aw = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.ax = sext i32 %spec.select to i64            ; 40 uses
  %i.ay = icmp slt i32 %spec.select, %i.aw        ; 4 uses
  %i.az = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.ba = icmp sgt i32 %i.aw, 0
  %i.bb = sext i32 %i.aw to i64                   ; 13 uses
  %i.bc = icmp eq i32 %6, 8
  %i.bd = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.be = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.z, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 7 uses
  %i.bf = icmp sgt i32 %.030.i305, -1             ; 4 uses
  %i.bg = zext i32 %.030.i305 to i64              ; 17 uses
  %i.bh = zext i32 %i.z to i64
  %i.bi = icmp eq i32 %7, 0
  %i.bj = sext i32 %6 to i64
  %i.bk = getelementptr inbounds i8, ptr @_ZL23stbi__depth_scale_table, i64 %i.bj
  %wide.trip.count460 = zext i32 %5 to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.aw to i64     ; 8 uses
  %i.bl = sub nsw i64 %i.bb, %i.ax                ; 28 uses
  %i.bm = add i32 %i.z, -1                        ; 3 uses
  %i.bn = add nuw nsw i64 %i.bg, 1
  %min.iters.check699 = icmp ult i64 %i.bl, 8
  %i.bo = add nsw i64 %i.ax, -1
  %diff.check697 = icmp ult i64 %i.bo, 31
  %or.cond733 = select i1 %min.iters.check699, i1 true, i1 %diff.check697
  %min.iters.check701 = icmp ult i64 %i.bl, 32
  %i.bp = and i64 %i.bl, 24
  %n.vec703 = and i64 %i.bl, -32                  ; 4 uses
  %i.bq = add nsw i64 %n.vec703, %i.ax
  %cmp.n712 = icmp eq i64 %i.bl, %n.vec703
  %min.epilog.iters.check718 = icmp eq i64 %i.bp, 0
  %n.vec720 = and i64 %i.bl, -8                   ; 3 uses
  %i.br = add nsw i64 %n.vec720, %i.ax
  %cmp.n727 = icmp eq i64 %i.bl, %n.vec720
  %i.bs = add nsw i64 %i.bb, -1
  %min.iters.check667 = icmp ult i32 %spec.select, 4
  %min.iters.check669 = icmp ult i32 %spec.select, 32
  %i.bt = and i64 %wide.trip.count424, 28
  %n.vec671 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n680 = icmp eq i64 %n.vec671, %wide.trip.count424
  %min.epilog.iters.check685 = icmp eq i64 %i.bt, 0
  %n.vec687 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec687, %wide.trip.count424
  %xtraiter747 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  %min.iters.check632 = icmp ult i64 %i.bl, 4
  %i.bu = add nsw i64 %i.ax, -1
  %diff.check626 = icmp ult i64 %i.bu, 15
  %min.iters.check634 = icmp ult i64 %i.bl, 16
  %i.bv = and i64 %i.bl, 12
  %n.vec636 = and i64 %i.bl, -16                  ; 4 uses
  %i.bw = add nsw i64 %n.vec636, %i.ax
  %cmp.n645 = icmp eq i64 %i.bl, %n.vec636
  %min.epilog.iters.check651 = icmp eq i64 %i.bv, 0
  %n.vec653 = and i64 %i.bl, -4                   ; 3 uses
  %i.bx = add nsw i64 %n.vec653, %i.ax
  %cmp.n662 = icmp eq i64 %i.bl, %n.vec653
  %min.iters.check596 = icmp ult i32 %spec.select, 4
  %min.iters.check598 = icmp ult i32 %spec.select, 32
  %i.by = and i64 %wide.trip.count424, 28
  %n.vec600 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n609 = icmp eq i64 %n.vec600, %wide.trip.count424
  %min.epilog.iters.check614 = icmp eq i64 %i.by, 0
  %n.vec616 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count424
  %xtraiter749 = and i64 %wide.trip.count424, 1
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  %i.bz = add nsw i64 %wide.trip.count424, -1
  %min.iters.check563 = icmp ult i64 %i.bl, 4
  %i.ca = add nsw i64 %i.ax, -1
  %diff.check561 = icmp ult i64 %i.ca, 15
  %min.iters.check565 = icmp ult i64 %i.bl, 16
  %i.cb = and i64 %i.bl, 12
  %n.vec567 = and i64 %i.bl, -16                  ; 4 uses
  %i.cc = add nsw i64 %n.vec567, %i.ax
  %cmp.n575 = icmp eq i64 %i.bl, %n.vec567
  %min.epilog.iters.check581 = icmp eq i64 %i.cb, 0
  %n.vec583 = and i64 %i.bl, -4                   ; 3 uses
  %i.cd = add nsw i64 %n.vec583, %i.ax
  %cmp.n591 = icmp eq i64 %i.bl, %n.vec583
  %i.ce = add nsw i64 %i.bb, -1
  %min.iters.check530 = icmp ult i32 %i.aw, 4
  %min.iters.check532 = icmp ult i32 %i.aw, 32
  %i.cf = and i64 %wide.trip.count444, 28
  %n.vec534 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n543 = icmp eq i64 %n.vec534, %wide.trip.count444
  %min.epilog.iters.check548 = icmp eq i64 %i.cf, 0
  %n.vec550 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n557 = icmp eq i64 %n.vec550, %wide.trip.count444
  %xtraiter755 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  %min.iters.check506 = icmp ult i64 %i.bl, 8
  %i.cg = add nsw i64 %i.ax, -1
  %diff.check = icmp ult i64 %i.cg, 31
  %or.cond732 = select i1 %min.iters.check506, i1 true, i1 %diff.check
end_hunk_3
begin_hunk_4_@_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii:bb.a
  %.4396 = phi i8 [ %i.rr, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ]
  %.2241395 = phi ptr [ %i.rq, %.lr.ph397.1 ], [ %i.dn, %.lr.ph397.preheader ] ; 3 uses
  %.4246394 = phi ptr [ %.5247, %.lr.ph397.1 ], [ %i.de, %.lr.ph397.preheader ] ; 3 uses
  %.2267393 = phi i32 [ %i.rs, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ] ; 2 uses
  %niter789 = phi i32 [ %niter789.next.1, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ]
  %i.rj = and i32 %.2267393, 6
  %i.rk = icmp eq i32 %i.rj, 0
  br i1 %i.rk, label %bb.x, label %.lr.ph397.1

bb.x:                                             ; preds = %.lr.ph397
  %i.rl = getelementptr inbounds nuw i8, ptr %.4246394, i64 1
  %i.rm = load i8, ptr %.4246394, align 1
  br label %.lr.ph397.1

.lr.ph397.1:                                      ; preds = %bb.x, %.lr.ph397
  %.5247 = phi ptr [ %i.rl, %bb.x ], [ %.4246394, %.lr.ph397 ] ; 2 uses
  %.5 = phi i8 [ %i.rm, %bb.x ], [ %.4396, %.lr.ph397 ] ; 3 uses
  %isneg = icmp slt i8 %.5, 0
  %i.rn = select i1 %isneg, i8 %i.qm, i8 0
  %i.ro = getelementptr inbounds nuw i8, ptr %.2241395, i64 1
  store i8 %i.rn, ptr %.2241395, align 1
  %.mask = and i8 %.5, 64
  %isneg.1.not = icmp eq i8 %.mask, 0
  %i.rp = select i1 %isneg.1.not, i8 0, i8 %i.qm
  %i.rq = getelementptr inbounds nuw i8, ptr %.2241395, i64 2 ; 2 uses
  store i8 %i.rp, ptr %i.ro, align 1
  %i.rr = shl i8 %.5, 2                           ; 2 uses
  %i.rs = add nuw i32 %.2267393, 2                ; 2 uses
  %niter789.next.1 = add i32 %niter789, 2         ; 2 uses
  %niter789.ncmp.1 = icmp eq i32 %niter789.next.1, %unroll_iter788
  br i1 %niter789.ncmp.1, label %.loopexit335.loopexit.unr-lcssa, label %.lr.ph397, !llvm.loop !218

.loopexit335.loopexit.unr-lcssa:                  ; preds = %.lr.ph397.1
  br i1 %lcmp.mod786.not, label %.loopexit335, label %.lr.ph397.epil.preheader

.lr.ph397.epil.preheader:                         ; preds = %.loopexit335.loopexit.unr-lcssa, %.lr.ph397.preheader
  %.4396.epil.init = phi i8 [ 0, %.lr.ph397.preheader ], [ %i.rr, %.loopexit335.loopexit.unr-lcssa ]
  %.2241395.epil.init = phi ptr [ %i.dn, %.lr.ph397.preheader ], [ %i.rq, %.loopexit335.loopexit.unr-lcssa ]
  %.4246394.epil.init = phi ptr [ %i.de, %.lr.ph397.preheader ], [ %.5247, %.loopexit335.loopexit.unr-lcssa ]
  %.2267393.epil.init = phi i32 [ 0, %.lr.ph397.preheader ], [ %i.rs, %.loopexit335.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod787)
  %i.rt = and i32 %.2267393.epil.init, 7
  %i.ru = icmp eq i32 %i.rt, 0
  br i1 %i.ru, label %bb.y, label %.loopexit335.loopexit.epilog-lcssa

bb.y:                                             ; preds = %.lr.ph397.epil.preheader
  %i.rv = load i8, ptr %.4246394.epil.init, align 1
  br label %.loopexit335.loopexit.epilog-lcssa

.loopexit335.loopexit.epilog-lcssa:               ; preds = %bb.y, %.lr.ph397.epil.preheader
  %.5.epil = phi i8 [ %i.rv, %bb.y ], [ %.4396.epil.init, %.lr.ph397.epil.preheader ]
  %isneg.epil = icmp slt i8 %.5.epil, 0
  %i.rw = select i1 %isneg.epil, i8 %i.qm, i8 0
  store i8 %i.rw, ptr %.2241395.epil.init, align 1
  br label %.loopexit335

.loopexit335.loopexit735.unr-lcssa:               ; preds = %.lr.ph392
  br i1 %lcmp.mod780.not, label %.loopexit335, label %.lr.ph392.epil.preheader

.lr.ph392.epil.preheader:                         ; preds = %.loopexit335.loopexit735.unr-lcssa, %.lr.ph392.preheader
  %.0239390.epil.init = phi ptr [ %i.dn, %.lr.ph392.preheader ], [ %i.qu, %.loopexit335.loopexit735.unr-lcssa ]
  %.0242389.epil.init = phi ptr [ %i.de, %.lr.ph392.preheader ], [ %i.qn, %.loopexit335.loopexit735.unr-lcssa ]
  %.0265388.epil.init = phi i32 [ 0, %.lr.ph392.preheader ], [ %i.qv, %.loopexit335.loopexit735.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod781)
  %i.rx = and i32 %.0265388.epil.init, 1
  %i.ry = icmp eq i32 %i.rx, 0
  br i1 %i.ry, label %bb.z, label %.loopexit335.loopexit735.epilog-lcssa

bb.z:                                             ; preds = %.lr.ph392.epil.preheader
  %i.rz = load i8, ptr %.0242389.epil.init, align 1
  %i.sa = lshr i8 %i.rz, 4
  %i.sb = mul i8 %i.sa, %i.qm
  br label %.loopexit335.loopexit735.epilog-lcssa

.loopexit335.loopexit735.epilog-lcssa:            ; preds = %bb.z, %.lr.ph392.epil.preheader
  %.1237.epil = phi i8 [ %i.sb, %bb.z ], [ 0, %.lr.ph392.epil.preheader ]
  store i8 %.1237.epil, ptr %.0239390.epil.init, align 1
  br label %.loopexit335

.loopexit335.loopexit736.unr-lcssa:               ; preds = %.lr.ph387.1
  br i1 %lcmp.mod774.not, label %.loopexit335, label %.lr.ph387.epil.preheader

.lr.ph387.epil.preheader:                         ; preds = %.loopexit335.loopexit736.unr-lcssa, %.lr.ph387.preheader
  %.2238386.epil.init = phi i8 [ 0, %.lr.ph387.preheader ], [ %i.rh, %.loopexit335.loopexit736.unr-lcssa ]
  %.1240385.epil.init = phi ptr [ %i.dn, %.lr.ph387.preheader ], [ %i.rg, %.loopexit335.loopexit736.unr-lcssa ]
  %.2244384.epil.init = phi ptr [ %i.de, %.lr.ph387.preheader ], [ %.3245, %.loopexit335.loopexit736.unr-lcssa ]
  %.1266383.epil.init = phi i32 [ 0, %.lr.ph387.preheader ], [ %i.ri, %.loopexit335.loopexit736.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod775)
  %i.sc = and i32 %.1266383.epil.init, 3
  %i.sd = icmp eq i32 %i.sc, 0
  br i1 %i.sd, label %bb.aa, label %.loopexit335.loopexit736.epilog-lcssa

bb.aa:                                            ; preds = %.lr.ph387.epil.preheader
  %i.se = load i8, ptr %.2244384.epil.init, align 1
  br label %.loopexit335.loopexit736.epilog-lcssa

.loopexit335.loopexit736.epilog-lcssa:            ; preds = %bb.aa, %.lr.ph387.epil.preheader
  %.3.epil = phi i8 [ %i.se, %bb.aa ], [ %.2238386.epil.init, %.lr.ph387.epil.preheader ]
  %i.sf = lshr i8 %.3.epil, 6
  %i.sg = mul i8 %i.sf, %i.qm
  store i8 %i.sg, ptr %.1240385.epil.init, align 1
  br label %.loopexit335

.loopexit335:                                     ; preds = %.loopexit335.loopexit736.epilog-lcssa, %.loopexit335.loopexit736.unr-lcssa, %.loopexit335.loopexit735.epilog-lcssa, %.loopexit335.loopexit735.unr-lcssa, %.loopexit335.loopexit.epilog-lcssa, %.loopexit335.loopexit.unr-lcssa, %.preheader338, %.preheader336, %.preheader
  br i1 %i.bd, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit335
  br i1 %i.be, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.ab
  br i1 %i.bf, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %.preheader26.i
  br i1 %lcmp.mod791.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.sh = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.cx ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 3
  store i8 -1, ptr %i.si, align 1
  %i.sj = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.cy ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 2
  %i.sl = load i8, ptr %i.sk, align 1
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sh, i64 2
  store i8 %i.sl, ptr %i.sm, align 1
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 1
  %i.so = load i8, ptr %i.sn, align 1
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sh, i64 1
  store i8 %i.so, ptr %i.sp, align 1
  %i.sq = load i8, ptr %i.sj, align 1
  store i8 %i.sq, ptr %i.sh, align 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.bg, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  br i1 %i.cz, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.ab
  br i1 %i.bf, label %.lr.ph32.i.preheader, label %.loopexit

.lr.ph32.i.preheader:                             ; preds = %.preheader.i
  br i1 %lcmp.mod794.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol

.lr.ph32.i.prol:                                  ; preds = %.lr.ph32.i.preheader, %.lr.ph32.i.prol
  %indvars.iv35.i.prol = phi i64 [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ], [ %i.bg, %.lr.ph32.i.preheader ] ; 3 uses
  %prol.iter795 = phi i64 [ %prol.iter795.next, %.lr.ph32.i.prol ], [ 0, %.lr.ph32.i.preheader ]
  %i.sr = shl nuw nsw i64 %indvars.iv35.i.prol, 1
  %i.ss = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.sr ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 1
  store i8 -1, ptr %i.st, align 1
  %i.su = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv35.i.prol
  %i.sv = load i8, ptr %i.su, align 1
  store i8 %i.sv, ptr %i.ss, align 1
  %indvars.iv.next36.i.prol = add nsw i64 %indvars.iv35.i.prol, -1 ; 2 uses
  %prol.iter795.next = add i64 %prol.iter795, 1   ; 2 uses
  %prol.iter795.cmp.not = icmp eq i64 %prol.iter795.next, %xtraiter793
  br i1 %prol.iter795.cmp.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol, !llvm.loop !219

.lr.ph32.i.prol.loopexit:                         ; preds = %.lr.ph32.i.prol, %.lr.ph32.i.preheader
  %indvars.iv35.i.unr = phi i64 [ %i.bg, %.lr.ph32.i.preheader ], [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ]
  br i1 %i.da, label %.loopexit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.prol.loopexit, %.lr.ph32.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.3, %.lr.ph32.i ], [ %indvars.iv35.i.unr, %.lr.ph32.i.prol.loopexit ] ; 6 uses
  %i.sw = shl nuw nsw i64 %indvars.iv35.i, 1
  %i.sx = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.sw ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 1
  store i8 -1, ptr %i.sy, align 1
  %i.sz = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv35.i
  %i.ta = load i8, ptr %i.sz, align 1
  store i8 %i.ta, ptr %i.sx, align 1
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, -1 ; 2 uses
  %i.tb = shl nuw nsw i64 %indvars.iv.next36.i, 1
  %i.tc = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.tb ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 1
  store i8 -1, ptr %i.td, align 1
  %i.te = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv.next36.i
  %i.tf = load i8, ptr %i.te, align 1
  store i8 %i.tf, ptr %i.tc, align 1
  %indvars.iv.next36.i.1 = add nsw i64 %indvars.iv35.i, -2 ; 2 uses
  %i.tg = shl nuw nsw i64 %indvars.iv.next36.i.1, 1
  %i.th = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.tg ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 1
  store i8 -1, ptr %i.ti, align 1
  %i.tj = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv.next36.i.1
  %i.tk = load i8, ptr %i.tj, align 1
  store i8 %i.tk, ptr %i.th, align 1
  %indvars.iv.next36.i.2 = add nsw i64 %indvars.iv35.i, -3 ; 3 uses
  %i.tl = shl nuw nsw i64 %indvars.iv.next36.i.2, 1
  %i.tm = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.tl ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 1
  store i8 -1, ptr %i.tn, align 1
  %i.to = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv.next36.i.2
  %i.tp = load i8, ptr %i.to, align 1
  store i8 %i.tp, ptr %i.tm, align 1
  %indvars.iv.next36.i.3 = add nsw i64 %indvars.iv35.i, -4
  %.not39.i.3 = icmp eq i64 %indvars.iv.next36.i.2, 0
  br i1 %.not39.i.3, label %.loopexit, label %.lr.ph32.i, !llvm.loop !220

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.tq = shl nsw i64 %indvars.iv.i, 2
  %i.tr = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.tq ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 3
  store i8 -1, ptr %i.ts, align 1
  %i.tt = mul nuw nsw i64 %indvars.iv.i, 3
  %i.tu = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.tt ; 3 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 2
  %i.tw = load i8, ptr %i.tv, align 1
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tr, i64 2
  store i8 %i.tw, ptr %i.tx, align 1
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 1
  %i.tz = load i8, ptr %i.ty, align 1
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tr, i64 1
  store i8 %i.tz, ptr %i.ua, align 1
  %i.ub = load i8, ptr %i.tu, align 1
  store i8 %i.ub, ptr %i.tr, align 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.uc = shl nsw i64 %indvars.iv.next.i, 2
  %i.ud = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.uc ; 4 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 3
  store i8 -1, ptr %i.ue, align 1
  %i.uf = mul nuw nsw i64 %indvars.iv.next.i, 3
  %i.ug = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.uf ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 2
  %i.ui = load i8, ptr %i.uh, align 1
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ud, i64 2
  store i8 %i.ui, ptr %i.uj, align 1
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 1
  %i.ul = load i8, ptr %i.uk, align 1
  %i.um = getelementptr inbounds nuw i8, ptr %i.ud, i64 1
  store i8 %i.ul, ptr %i.um, align 1
  %i.un = load i8, ptr %i.ug, align 1
  store i8 %i.un, ptr %i.ud, align 1
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2
  %.not.i304.1 = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.i304.1, label %.loopexit, label %.lr.ph.i, !llvm.loop !221

bb.ac:                                            ; preds = %.loopexit348
  br i1 %i.bc, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.bd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dn, ptr nonnull align 1 %i.de, i64 %i.bh, i1 false)
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  br i1 %i.be, label %.preheader.i312, label %.preheader26.i306

.preheader26.i306:                                ; preds = %bb.af
  br i1 %i.bf, label %.lr.ph.i308.preheader, label %.loopexit

.lr.ph.i308.preheader:                            ; preds = %.preheader26.i306
  br i1 %lcmp.mod770.not.not, label %.lr.ph.i308.prol, label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol:                                 ; preds = %.lr.ph.i308.preheader
  %i.uo = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.co ; 4 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 3
  store i8 -1, ptr %i.up, align 1
  %i.uq = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cp ; 3 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 2
  %i.us = load i8, ptr %i.ur, align 1
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uo, i64 2
  store i8 %i.us, ptr %i.ut, align 1
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uq, i64 1
  %i.uv = load i8, ptr %i.uu, align 1
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uo, i64 1
  store i8 %i.uv, ptr %i.uw, align 1
  %i.ux = load i8, ptr %i.uq, align 1
  store i8 %i.ux, ptr %i.uo, align 1
  br label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol.loopexit:                        ; preds = %.lr.ph.i308.prol, %.lr.ph.i308.preheader
  %indvars.iv.i309.unr = phi i64 [ %i.bg, %.lr.ph.i308.preheader ], [ %indvars.iv.next.i310.prol, %.lr.ph.i308.prol ]
  br i1 %i.cq, label %.loopexit, label %.lr.ph.i308

.preheader.i312:                                  ; preds = %bb.af
  br i1 %i.bf, label %.lr.ph32.i314.preheader, label %.loopexit

.lr.ph32.i314.preheader:                          ; preds = %.preheader.i312
  br i1 %min.iters.check, label %.lr.ph32.i314.preheader737, label %vector.body

vector.body:                                      ; preds = %.lr.ph32.i314.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph32.i314.preheader ] ; 2 uses
  %i.uy = sub i64 %i.bg, %index                   ; 2 uses
  %i.uz = shl nuw nsw i64 %i.uy, 1
  %i.va = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.uz
  %i.vb = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.uy
  %i.vc = getelementptr inbounds i8, ptr %i.vb, i64 -7
  %wide.load = load <8 x i8>, ptr %i.vc, align 1
  %i.vd = getelementptr inbounds i8, ptr %i.va, i64 -14
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.vd, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ve = icmp eq i64 %index.next, %n.vec
  br i1 %i.ve, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph32.i314.preheader737

.lr.ph32.i314.preheader737:                       ; preds = %.lr.ph32.i314.preheader, %middle.block
  %indvars.iv35.i315.ph = phi i64 [ %i.bg, %.lr.ph32.i314.preheader ], [ %i.cs, %middle.block ]
  br label %.lr.ph32.i314

.lr.ph32.i314:                                    ; preds = %.lr.ph32.i314.preheader737, %.lr.ph32.i314
  %indvars.iv35.i315 = phi i64 [ %indvars.iv.next36.i316, %.lr.ph32.i314 ], [ %indvars.iv35.i315.ph, %.lr.ph32.i314.preheader737 ] ; 4 uses
  %i.vf = shl nuw nsw i64 %indvars.iv35.i315, 1
  %i.vg = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.vf ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 1
  store i8 -1, ptr %i.vh, align 1
  %i.vi = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv35.i315
  %i.vj = load i8, ptr %i.vi, align 1
  store i8 %i.vj, ptr %i.vg, align 1
  %indvars.iv.next36.i316 = add nsw i64 %indvars.iv35.i315, -1
  %.not39.i317 = icmp eq i64 %indvars.iv35.i315, 0
  br i1 %.not39.i317, label %.loopexit, label %.lr.ph32.i314, !llvm.loop !223

.lr.ph.i308:                                      ; preds = %.lr.ph.i308.prol.loopexit, %.lr.ph.i308
  %indvars.iv.i309 = phi i64 [ %indvars.iv.next.i310.1, %.lr.ph.i308 ], [ %indvars.iv.i309.unr, %.lr.ph.i308.prol.loopexit ] ; 4 uses
  %i.vk = shl nsw i64 %indvars.iv.i309, 2
  %i.vl = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.vk ; 4 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 3
  store i8 -1, ptr %i.vm, align 1
  %i.vn = mul nuw nsw i64 %indvars.iv.i309, 3
  %i.vo = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.vn ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 2
  %i.vq = load i8, ptr %i.vp, align 1
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vl, i64 2
  store i8 %i.vq, ptr %i.vr, align 1
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vo, i64 1
  %i.vt = load i8, ptr %i.vs, align 1
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vl, i64 1
  store i8 %i.vt, ptr %i.vu, align 1
  %i.vv = load i8, ptr %i.vo, align 1
  store i8 %i.vv, ptr %i.vl, align 1
  %indvars.iv.next.i310 = add nsw i64 %indvars.iv.i309, -1 ; 3 uses
  %i.vw = shl nsw i64 %indvars.iv.next.i310, 2
  %i.vx = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.vw ; 4 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 3
  store i8 -1, ptr %i.vy, align 1
  %i.vz = mul nuw nsw i64 %indvars.iv.next.i310, 3
  %i.wa = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.vz ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 2
  %i.wc = load i8, ptr %i.wb, align 1
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vx, i64 2
  store i8 %i.wc, ptr %i.wd, align 1
  %i.we = getelementptr inbounds nuw i8, ptr %i.wa, i64 1
  %i.wf = load i8, ptr %i.we, align 1
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vx, i64 1
  store i8 %i.wf, ptr %i.wg, align 1
  %i.wh = load i8, ptr %i.wa, align 1
  store i8 %i.wh, ptr %i.vx, align 1
  %indvars.iv.next.i310.1 = add nsw i64 %indvars.iv.i309, -2
  %.not.i311.1 = icmp eq i64 %indvars.iv.next.i310, 0
  br i1 %.not.i311.1, label %.loopexit, label %.lr.ph.i308, !llvm.loop !221

bb.ag:                                            ; preds = %bb.ac
  br i1 %i.a, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.bd, label %.preheader342, label %bb.ai

.preheader342:                                    ; preds = %bb.ah
  br i1 %.not404, label %.loopexit, label %.lr.ph382.preheader

.lr.ph382.preheader:                              ; preds = %.preheader342
  br i1 %i.cm, label %.lr.ph382.epil.preheader, label %.lr.ph382

.lr.ph382:                                        ; preds = %.lr.ph382.preheader, %.lr.ph382
  %.0381 = phi ptr [ %i.xq, %.lr.ph382 ], [ %i.dn, %.lr.ph382.preheader ] ; 5 uses
  %.0249380 = phi ptr [ %i.xr, %.lr.ph382 ], [ %i.de, %.lr.ph382.preheader ] ; 9 uses
  %niter768 = phi i32 [ %niter768.next.3, %.lr.ph382 ], [ 0, %.lr.ph382.preheader ]
  %i.wi = load i8, ptr %.0249380, align 1
  %i.wj = zext i8 %i.wi to i16
  %i.wk = shl nuw i16 %i.wj, 8
  %i.wl = getelementptr inbounds nuw i8, ptr %.0249380, i64 1
  %i.wm = load i8, ptr %i.wl, align 1
  %i.wn = zext i8 %i.wm to i16
  %i.wo = or disjoint i16 %i.wk, %i.wn
  store i16 %i.wo, ptr %.0381, align 2
  %i.wp = getelementptr inbounds nuw i8, ptr %.0381, i64 2
  %i.wq = getelementptr inbounds nuw i8, ptr %.0249380, i64 2
  %i.wr = load i8, ptr %i.wq, align 1
  %i.ws = zext i8 %i.wr to i16
  %i.wt = shl nuw i16 %i.ws, 8
  %i.wu = getelementptr inbounds nuw i8, ptr %.0249380, i64 3
  %i.wv = load i8, ptr %i.wu, align 1
  %i.ww = zext i8 %i.wv to i16
  %i.wx = or disjoint i16 %i.wt, %i.ww
  store i16 %i.wx, ptr %i.wp, align 2
  %i.wy = getelementptr inbounds nuw i8, ptr %.0381, i64 4
  %i.wz = getelementptr inbounds nuw i8, ptr %.0249380, i64 4
  %i.xa = load i8, ptr %i.wz, align 1
  %i.xb = zext i8 %i.xa to i16
  %i.xc = shl nuw i16 %i.xb, 8
  %i.xd = getelementptr inbounds nuw i8, ptr %.0249380, i64 5
  %i.xe = load i8, ptr %i.xd, align 1
  %i.xf = zext i8 %i.xe to i16
  %i.xg = or disjoint i16 %i.xc, %i.xf
  store i16 %i.xg, ptr %i.wy, align 2
  %i.xh = getelementptr inbounds nuw i8, ptr %.0381, i64 6
  %i.xi = getelementptr inbounds nuw i8, ptr %.0249380, i64 6
  %i.xj = load i8, ptr %i.xi, align 1
  %i.xk = zext i8 %i.xj to i16
  %i.xl = shl nuw i16 %i.xk, 8
  %i.xm = getelementptr inbounds nuw i8, ptr %.0249380, i64 7
  %i.xn = load i8, ptr %i.xm, align 1
  %i.xo = zext i8 %i.xn to i16
  %i.xp = or disjoint i16 %i.xl, %i.xo
  store i16 %i.xp, ptr %i.xh, align 2
  %i.xq = getelementptr inbounds nuw i8, ptr %.0381, i64 8 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.0249380, i64 8 ; 2 uses
  %niter768.next.3 = add i32 %niter768, 4         ; 2 uses
  %niter768.ncmp.3 = icmp eq i32 %niter768.next.3, %unroll_iter767
  br i1 %niter768.ncmp.3, label %.loopexit.loopexit740.unr-lcssa, label %.lr.ph382, !llvm.loop !224

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.be, label %.preheader344, label %.preheader346

.preheader346:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph374

.preheader344:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %.preheader344
  br i1 %i.cl, label %.lr.ph378.epil.preheader, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %.lr.ph378
  %.1377 = phi ptr [ %i.yk, %.lr.ph378 ], [ %i.dn, %.lr.ph378.preheader ] ; 5 uses
  %.1250376 = phi ptr [ %i.yl, %.lr.ph378 ], [ %i.de, %.lr.ph378.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph378 ], [ 0, %.lr.ph378.preheader ]
  %i.xs = load i8, ptr %.1250376, align 1
  %i.xt = zext i8 %i.xs to i16
  %i.xu = shl nuw i16 %i.xt, 8
  %i.xv = getelementptr inbounds nuw i8, ptr %.1250376, i64 1
  %i.xw = load i8, ptr %i.xv, align 1
  %i.xx = zext i8 %i.xw to i16
  %i.xy = or disjoint i16 %i.xu, %i.xx
  store i16 %i.xy, ptr %.1377, align 2
  %i.xz = getelementptr inbounds nuw i8, ptr %.1377, i64 2
  store i16 -1, ptr %i.xz, align 2
  %i.ya = getelementptr inbounds nuw i8, ptr %.1377, i64 4
  %i.yb = getelementptr inbounds nuw i8, ptr %.1250376, i64 2
  %i.yc = load i8, ptr %i.yb, align 1
  %i.yd = zext i8 %i.yc to i16
  %i.ye = shl nuw i16 %i.yd, 8
  %i.yf = getelementptr inbounds nuw i8, ptr %.1250376, i64 3
  %i.yg = load i8, ptr %i.yf, align 1
  %i.yh = zext i8 %i.yg to i16
  %i.yi = or disjoint i16 %i.ye, %i.yh
  store i16 %i.yi, ptr %i.ya, align 2
  %i.yj = getelementptr inbounds nuw i8, ptr %.1377, i64 6
  store i16 -1, ptr %i.yj, align 2
  %i.yk = getelementptr inbounds nuw i8, ptr %.1377, i64 8 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.1250376, i64 4 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit741.unr-lcssa, label %.lr.ph378, !llvm.loop !225

.lr.ph374:                                        ; preds = %.preheader346, %.lr.ph374
  %.2373 = phi ptr [ %i.zn, %.lr.ph374 ], [ %i.dn, %.preheader346 ] ; 5 uses
  %.2251372 = phi ptr [ %i.zo, %.lr.ph374 ], [ %i.de, %.preheader346 ] ; 7 uses
  %.5270371 = phi i32 [ %i.zm, %.lr.ph374 ], [ 0, %.preheader346 ]
  %i.ym = load i8, ptr %.2251372, align 1
  %i.yn = zext i8 %i.ym to i16
  %i.yo = shl nuw i16 %i.yn, 8
  %i.yp = getelementptr inbounds nuw i8, ptr %.2251372, i64 1
  %i.yq = load i8, ptr %i.yp, align 1
  %i.yr = zext i8 %i.yq to i16
  %i.ys = or disjoint i16 %i.yo, %i.yr
  store i16 %i.ys, ptr %.2373, align 2
  %i.yt = getelementptr inbounds nuw i8, ptr %.2251372, i64 2
  %i.yu = load i8, ptr %i.yt, align 1
  %i.yv = zext i8 %i.yu to i16
  %i.yw = shl nuw i16 %i.yv, 8
  %i.yx = getelementptr inbounds nuw i8, ptr %.2251372, i64 3
  %i.yy = load i8, ptr %i.yx, align 1
  %i.yz = zext i8 %i.yy to i16
  %i.za = or disjoint i16 %i.yw, %i.yz
  %i.zb = getelementptr inbounds nuw i8, ptr %.2373, i64 2
  store i16 %i.za, ptr %i.zb, align 2
  %i.zc = getelementptr inbounds nuw i8, ptr %.2251372, i64 4
  %i.zd = load i8, ptr %i.zc, align 1
  %i.ze = zext i8 %i.zd to i16
  %i.zf = shl nuw i16 %i.ze, 8
  %i.zg = getelementptr inbounds nuw i8, ptr %.2251372, i64 5
  %i.zh = load i8, ptr %i.zg, align 1
  %i.zi = zext i8 %i.zh to i16
  %i.zj = or disjoint i16 %i.zf, %i.zi
  %i.zk = getelementptr inbounds nuw i8, ptr %.2373, i64 4
  store i16 %i.zj, ptr %i.zk, align 2
  %i.zl = getelementptr inbounds nuw i8, ptr %.2373, i64 6
  store i16 -1, ptr %i.zl, align 2
  %i.zm = add nuw i32 %.5270371, 1                ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %.2373, i64 8
  %i.zo = getelementptr inbounds nuw i8, ptr %.2251372, i64 6
  %exitcond451.not = icmp eq i32 %i.zm, %4
  br i1 %exitcond451.not, label %.loopexit, label %.lr.ph374, !llvm.loop !226

.loopexit.loopexit740.unr-lcssa:                  ; preds = %.lr.ph382
  br i1 %lcmp.mod765.not, label %.loopexit, label %.lr.ph382.epil.preheader

.lr.ph382.epil.preheader:                         ; preds = %.loopexit.loopexit740.unr-lcssa, %.lr.ph382.preheader
  %.0381.epil.init = phi ptr [ %i.dn, %.lr.ph382.preheader ], [ %i.xq, %.loopexit.loopexit740.unr-lcssa ]
  %.0249380.epil.init = phi ptr [ %i.de, %.lr.ph382.preheader ], [ %i.xr, %.loopexit.loopexit740.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod766)
  br label %.lr.ph382.epil

.lr.ph382.epil:                                   ; preds = %.lr.ph382.epil, %.lr.ph382.epil.preheader
  %.0381.epil = phi ptr [ %i.zw, %.lr.ph382.epil ], [ %.0381.epil.init, %.lr.ph382.epil.preheader ] ; 2 uses
  %.0249380.epil = phi ptr [ %i.zx, %.lr.ph382.epil ], [ %.0249380.epil.init, %.lr.ph382.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph382.epil ], [ 0, %.lr.ph382.epil.preheader ]
  %i.zp = load i8, ptr %.0249380.epil, align 1
  %i.zq = zext i8 %i.zp to i16
  %i.zr = shl nuw i16 %i.zq, 8
  %i.zs = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 1
  %i.zt = load i8, ptr %i.zs, align 1
  %i.zu = zext i8 %i.zt to i16
  %i.zv = or disjoint i16 %i.zr, %i.zu
  store i16 %i.zv, ptr %.0381.epil, align 2
  %i.zw = getelementptr inbounds nuw i8, ptr %.0381.epil, i64 2
  %i.zx = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter764
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph382.epil, !llvm.loop !227

.loopexit.loopexit741.unr-lcssa:                  ; preds = %.lr.ph378
  br i1 %lcmp.mod762.not, label %.loopexit, label %.lr.ph378.epil.preheader

.lr.ph378.epil.preheader:                         ; preds = %.loopexit.loopexit741.unr-lcssa, %.lr.ph378.preheader
  %.1377.epil.init = phi ptr [ %i.dn, %.lr.ph378.preheader ], [ %i.yk, %.loopexit.loopexit741.unr-lcssa ] ; 2 uses
  %.1250376.epil.init = phi ptr [ %i.de, %.lr.ph378.preheader ], [ %i.yl, %.loopexit.loopexit741.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod763)
  %i.zy = load i8, ptr %.1250376.epil.init, align 1
  %i.zz = zext i8 %i.zy to i16
  %i.aaa = shl nuw i16 %i.zz, 8
end_hunk_4
