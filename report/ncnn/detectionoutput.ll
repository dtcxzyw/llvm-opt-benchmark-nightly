Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/detectionoutput?download=true
inline.NumInlined: 644
inline.NumDeleted: 312
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4ncnn15DetectionOutput7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn15DetectionOutputC2Ev(ptr noundef nonnull align 8 dereferenceable(244) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn15DetectionOutputE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.b, align 1, !tbaa !100
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef nofpclass(nan inf) float @_ZNK4ncnn9ParamDict3getEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15DetectionOutput7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 2 uses
  %.not63 = icmp sgt i32 %i.k, %i.j
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load i8, ptr %3, align 1, !tbaa !36, !range !44, !noundef !45
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 228
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  %i.t = load ptr, ptr %4, align 8, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %i.r, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %5, align 4, !tbaa !40
  %i.v = sext i32 %i.u to i64
  %i.w = mul nsw i64 %indvars.iv, %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink68 = phi i64 [ %i.w, %bb.d ], [ %indvars.iv, %bb.c ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sink68
  %i.y = load float, ptr %i.x, align 4, !tbaa !35
  %i.z = fpext fast float %i.y to double
  %i.aa = load float, ptr %i.n, align 8, !tbaa !34
  %i.ab = fpext fast float %i.aa to double
  %i.ac = fsub fast double 1.000000e+00, %i.ab
  %i.ad = fcmp fast ugt double %i.ac, %i.z
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %7, align 8, !tbaa !43
  %i.af = shl nsw i64 %indvars.iv, 2              ; 3 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = load ptr, ptr %8, align 8, !tbaa !43
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.af
  %i.aj = load ptr, ptr %9, align 8, !tbaa !43    ; 2 uses
  %.not62 = icmp eq ptr %i.aj, null
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.af
  %i.al = select i1 %.not62, ptr %i.o, ptr %i.ak  ; 2 uses
  %i.am = load ptr, ptr %10, align 8, !tbaa !41
  %i.an = load i32, ptr %i.p, align 4, !tbaa !39
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %indvars.iv, %i.ao
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !46
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.av = load <4 x float>, ptr %i.ai, align 4, !tbaa !35 ; 3 uses
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ax = fadd fast <4 x float> %i.av, %i.aw
  %i.ay = fsub fast <4 x float> %i.av, %i.aw      ; 2 uses
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ba = load <2 x float>, ptr %i.al, align 4, !tbaa !35
  %i.bb = load <2 x float>, ptr %i.ag, align 4, !tbaa !35
  %i.bc = shufflevector <4 x float> %i.ay, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bd = fmul fast <2 x float> %i.ba, %i.bc
  %i.be = fmul fast <2 x float> %i.bd, %i.bb
  %i.bf = load <2 x float>, ptr %i.at, align 4, !tbaa !35
  %i.bg = load <2 x float>, ptr %i.au, align 4, !tbaa !35
  %i.bh = fmul fast <2 x float> %i.bg, %i.bf
  %i.bi = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bh)
  %i.bj = fmul fast <4 x float> %i.az, splat (float 5.000000e-01) ; 2 uses
  %i.bk = shufflevector <2 x float> %i.be, <2 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.bl = fadd fast <4 x float> %i.bj, %i.bk      ; 2 uses
  %i.bm = fmul fast <4 x float> %i.bj, %i.bk      ; 2 uses
  %i.bn = shufflevector <4 x float> %i.bl, <4 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.bo = shufflevector <4 x float> %i.bm, <4 x float> %i.bl, <4 x i32> <i32 2, i32 3, i32 4, i32 5> ; 2 uses
  %i.bp = fsub fast <4 x float> %i.bn, %i.bo
  %i.bq = fadd fast <4 x float> %i.bn, %i.bo
  %i.br = shufflevector <4 x float> %i.bp, <4 x float> %i.bq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.br, ptr %i.as, align 4, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.g, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #6 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !76 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15DetectionOutput7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.std::vector.18", align 8   ; 16 uses
  %11 = alloca %"class.std::vector.23", align 8   ; 10 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.aw

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -2                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !40
  %i.h = load i32, ptr %0, align 4, !tbaa !40     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !40
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !40   ; 2 uses
  %.not121 = icmp sgt i32 %i.k, %i.j
  br i1 %.not121, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 216 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 212
  %i.u = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph124, %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EED2Ev.exit
  %indvars.iv139 = phi i64 [ %i.u, %.lr.ph124 ], [ %indvars.iv.next140, %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EED2Ev.exit ] ; 2 uses
  %indvars.iv.next140 = add nsw i64 %indvars.iv139, 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.v = load i32, ptr %3, align 4, !tbaa !40     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader, label %_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.x = trunc nsw i64 %indvars.iv.next140 to i32
  %i.y = trunc nsw i64 %indvars.iv.next140 to i32
  %i.z = trunc nsw i64 %indvars.iv.next140 to i32
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %.pre = load ptr, ptr %10, align 8, !tbaa !62   ; 2 uses
  %.pre142 = load ptr, ptr %i.o, align 8, !tbaa !62 ; 2 uses
  %12 = ptrtoint ptr %i.ct to i64                 ; 2 uses
  store ptr %i.cv, ptr %11, align 8
  %i.aa = icmp eq ptr %.pre, %.pre142
  %i.ab = icmp eq ptr %i.cv, %i.cu
  %or.cond = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond, label %_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ac = ptrtoint ptr %i.cu to i64
  %i.ad = ptrtoint ptr %i.cv to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = trunc i64 %i.af to i32
  %i.ah = add i32 %i.ag, -1
  call fastcc void @_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEEii(ptr noundef nonnull readonly align 8 dereferenceable(24) %10, ptr noundef nonnull readonly align 8 dereferenceable(24) %11, i32 noundef 0, i32 noundef %i.ah)
  %.pre143 = load ptr, ptr %i.o, align 8, !tbaa !64
  %.pre144 = load ptr, ptr %10, align 8, !tbaa !65
  br label %_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %13 = phi ptr [ null, %.lr.ph.preheader ], [ %i.ct, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 4 uses
  %14 = phi ptr [ null, %.lr.ph.preheader ], [ %i.cu, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 3 uses
  %15 = phi i32 [ %i.v, %.lr.ph.preheader ], [ %i.cw, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ]
  %i.ai = phi ptr [ null, %.lr.ph.preheader ], [ %i.cv, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 6 uses
  %i.aj = load i8, ptr %4, align 1, !tbaa !36, !range !44, !noundef !45
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.am = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.an = mul nsw i32 %15, %i.x
  %i.ao = add nsw i32 %i.an, %i.al
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ap
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.ar = load i32, ptr %2, align 4, !tbaa !40
  %i.as = mul nsw i32 %i.ar, %i.al
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv.next140
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %i.at
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.in = phi ptr [ %i.aq, %bb.e ], [ %i.av, %bb.f ]
  %i.aw = load float, ptr %.in, align 4, !tbaa !35 ; 3 uses
  %i.ax = load float, ptr %i.l, align 8, !tbaa !34
  %i.ay = fcmp fast ogt float %i.aw, %i.ax
  br i1 %i.ay, label %bb.h, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %7, align 8, !tbaa !41
  %i.ba = load i32, ptr %i.m, align 4, !tbaa !39
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul nsw i64 %indvars.iv, %i.bb
  %i.bd = load i64, ptr %i.n, align 8, !tbaa !46
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.be
  %i.bg = load <4 x float>, ptr %i.bf, align 4, !tbaa !35 ; 2 uses
  %i.bh = load ptr, ptr %i.o, align 8, !tbaa !64  ; 5 uses
  %i.bi = load ptr, ptr %i.p, align 8, !tbaa !72
  %.not.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store <4 x float> %i.bg, ptr %i.bh, align 4, !tbaa !35
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i32 %i.y, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !40
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  store ptr %i.bj, ptr %i.o, align 8, !tbaa !64
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %10, align 8, !tbaa !65   ; 4 uses
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 5 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %.invoke, label %_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.i, %bb.w, %bb.n, %bb.j, %bb.at, %bb.ap
  %16 = phi ptr [ @.str.2, %bb.at ], [ @.str.2, %bb.n ], [ @.str.2, %bb.ap ], [ @.str.2, %bb.j ], [ @.str.3, %_ZNSt6vectorImSaImEE5clearEv.exit.i ], [ @.str, %bb.w ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %16) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bp = sdiv exact i64 %i.bn, 20                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 461168601842738790)
  %i.bt = select i1 %i.br, i64 461168601842738790, i64 %i.bs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bu = mul nuw nsw i64 %i.bt, 20
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #20
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.bn ; 3 uses
  store <4 x float> %i.bg, ptr %i.bw, align 4, !tbaa !35
  %.sroa.8.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i32 %i.z, ptr %.sroa.8.0..sroa_idx94, align 4, !tbaa !40
  %i.bx = icmp sgt i64 %i.bn, 0
  br i1 %i.bx, label %bb.k, label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.k:                                             ; preds = %.noexc40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bv, ptr align 4 %i.bk, i64 %i.bn, i1 false)
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.k, %.noexc40
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  %.not.i17.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.bz = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.cb) #19
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.bv, ptr %10, align 8, !tbaa !65
  store ptr %i.by, ptr %i.o, align 8, !tbaa !64
  %i.cc = getelementptr inbounds nuw [20 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cc, ptr %i.p, align 8, !tbaa !72
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.i
  %.not.i41 = icmp eq ptr %14, %13
  br i1 %.not.i41, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit
  store float %i.aw, ptr %14, align 4, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  store ptr %i.cd, ptr %i.q, align 8, !tbaa !66
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.n:                                             ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit
  %i.ce = ptrtoint ptr %13 to i64
  %i.cf = ptrtoint ptr %i.ai to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 6 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775804
  br i1 %i.ch, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.ci = ashr exact i64 %i.cg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i42 = call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i42, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = call i64 @llvm.umin.i64(i64 %i.cj, i64 2305843009213693951)
  %i.cm = select i1 %i.ck, i64 2305843009213693951, i64 %i.cl ; 3 uses
  %.not.i.i.i43 = icmp ne i64 %i.cm, 0
  call void @llvm.assume(i1 %.not.i.i.i43)
  %i.cn = shl nuw nsw i64 %i.cm, 2
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #20
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc46:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %i.cg ; 2 uses
  store float %i.aw, ptr %i.cp, align 4, !tbaa !35
  %i.cq = icmp sgt i64 %i.cg, 0
  br i1 %i.cq, label %bb.o, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %.noexc46
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.co, ptr align 4 %i.ai, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %.noexc46
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  %.not.i17.i.i44 = icmp eq ptr %i.ai, null
  br i1 %.not.i17.i.i44, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.cg) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.cr, ptr %i.q, align 8, !tbaa !66
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cm ; 2 uses
  store ptr %i.cs, ptr %i.r, align 8, !tbaa !58
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %bb.m, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.g
  %i.ct = phi ptr [ %13, %bb.m ], [ %i.cs, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %13, %bb.g ] ; 2 uses
  %i.cu = phi ptr [ %i.cd, %bb.m ], [ %i.cr, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %14, %bb.g ] ; 5 uses
  %i.cv = phi ptr [ %i.ai, %bb.m ], [ %i.co, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.ai, %bb.g ] ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cw = load i32, ptr %3, align 4, !tbaa !40    ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp slt i64 %indvars.iv.next, %i.cx
  br i1 %i.cy, label %.lr.ph, label %._crit_edge, !llvm.loop !101

_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit: ; preds = %bb.c, %bb.d, %._crit_edge
  %i.cz = phi ptr [ %i.cv, %bb.d ], [ null, %bb.c ], [ %i.cv, %._crit_edge ] ; 5 uses
  %i.da = phi ptr [ %i.cu, %bb.d ], [ null, %bb.c ], [ %i.cu, %._crit_edge ] ; 4 uses
  %17 = phi i64 [ %12, %bb.d ], [ 0, %bb.c ], [ %12, %._crit_edge ] ; 2 uses
  %i.db = phi ptr [ %.pre144, %bb.d ], [ null, %bb.c ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.dc = phi ptr [ %.pre143, %bb.d ], [ null, %bb.c ], [ %.pre142, %._crit_edge ] ; 2 uses
  %i.dd = load i32, ptr %i.s, align 8, !tbaa !32  ; 2 uses
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = sdiv exact i64 %i.dg, 20                ; 4 uses
  %i.di = trunc i64 %i.dh to i32
  %i.dj = icmp slt i32 %i.dd, %i.di
  br i1 %i.dj, label %bb.q, label %_ZNSt6vectorImSaImEE5clearEv.exit.i

bb.q:                                             ; preds = %_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit
  %i.dk = sext i32 %i.dd to i64                   ; 7 uses
  %i.dl = icmp ult i64 %i.dh, %i.dk
  br i1 %i.dl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dm = sub nuw nsw i64 %i.dk, %i.dh
  invoke void @_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.dm)
          to label %._ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit_crit_edge: ; preds = %bb.r
  %.pre145 = load i32, ptr %i.s, align 8, !tbaa !32
  %.pre146 = sext i32 %.pre145 to i64
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit

bb.s:                                             ; preds = %bb.q
  %i.dn = icmp ugt i64 %i.dh, %i.dk
  br i1 %i.dn, label %bb.t, label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit

bb.t:                                             ; preds = %bb.s
  %i.do = getelementptr inbounds nuw [20 x i8], ptr %i.db, i64 %i.dk ; 2 uses
  %.not.i.i = icmp eq ptr %i.dc, %i.do
  br i1 %.not.i.i, label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN4ncnn8BBoxRectES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4ncnn8BBoxRectES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.t
  store ptr %i.do, ptr %i.o, align 8, !tbaa !64
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit: ; preds = %._ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPN4ncnn8BBoxRectES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.t, %bb.s
  %.pre-phi = phi i64 [ %.pre146, %._ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit_crit_edge ], [ %i.dk, %_ZSt8_DestroyIPN4ncnn8BBoxRectES1_EvT_S3_RSaIT0_E.exit.i.i ], [ %i.dk, %bb.t ], [ %i.dk, %bb.s ] ; 4 uses
  %i.dp = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dq = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.dr = sub i64 %i.dp, %i.dq                    ; 4 uses
  %i.ds = ashr exact i64 %i.dr, 2                 ; 7 uses
  %i.dt = icmp ult i64 %i.ds, %.pre-phi
  br i1 %i.dt, label %bb.u, label %bb.z

bb.u:                                             ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit
  %i.du = sub nuw nsw i64 %.pre-phi, %i.ds        ; 6 uses
  %i.dv = sub i64 %17, %i.dp
  %i.dw = ashr exact i64 %i.dv, 2                 ; 2 uses
  %i.dx = icmp ult i64 %i.ds, 2305843009213693952
  call void @llvm.assume(i1 %i.dx)
  %i.dy = xor i64 %i.ds, 2305843009213693951      ; 2 uses
  %i.dz = icmp ule i64 %i.dw, %i.dy
  call void @llvm.assume(i1 %i.dz)
  %.not28.i = icmp ult i64 %i.dw, %i.du
  br i1 %.not28.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store float 0.000000e+00, ptr %i.da, align 4, !tbaa !35
  %i.ea = getelementptr i8, ptr %i.da, i64 4      ; 3 uses
  %i.eb = add nsw i64 %i.du, -1                   ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.v
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.eb, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ea, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !35
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.v
  %.0.i.i.i.i = phi ptr [ %i.ed, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.ea, %bb.v ]
  store ptr %.0.i.i.i.i, ptr %i.q, align 8, !tbaa !66
  br label %_ZNSt6vectorImSaImEE5clearEv.exit.i

bb.w:                                             ; preds = %bb.u
  %i.ee = icmp ult i64 %i.dy, %i.du
  br i1 %i.ee, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.w
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ds, i64 %i.du)
  %i.ef = add nuw nsw i64 %.sroa.speculated.i.i, %i.ds
  %i.eg = call i64 @llvm.umin.i64(i64 %i.ef, i64 2305843009213693951) ; 2 uses
  %i.eh = shl nuw nsw i64 %i.eg, 2
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #20
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.dr ; 3 uses
  store float 0.000000e+00, ptr %i.ej, align 4, !tbaa !35
  %i.ek = add nsw i64 %i.du, -1                   ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc79
  %i.em = getelementptr i8, ptr %i.ej, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ek, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.em, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !35
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc79
  %i.en = icmp sgt i64 %i.dr, 0
  br i1 %i.en, label %bb.x, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

bb.x:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ei, ptr align 4 %i.cz, i64 %i.dr, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i: ; preds = %bb.x, %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %i.cz, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  %i.eo = sub i64 %17, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.eo) #19
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i: ; preds = %bb.y, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  store ptr %i.ei, ptr %11, align 8, !tbaa !60
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.du
  store ptr %i.ep, ptr %i.q, align 8, !tbaa !66
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.eg
  store ptr %i.eq, ptr %i.r, align 8, !tbaa !58
  br label %_ZNSt6vectorImSaImEE5clearEv.exit.i

bb.z:                                             ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE6resizeEm.exit
  %i.er = icmp ugt i64 %i.ds, %.pre-phi
  br i1 %i.er, label %bb.aa, label %_ZNSt6vectorImSaImEE5clearEv.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.pre-phi ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.da, %i.es
  br i1 %.not.i.i48, label %_ZNSt6vectorImSaImEE5clearEv.exit.i, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.aa
  store ptr %i.es, ptr %i.q, align 8, !tbaa !66
  br label %_ZNSt6vectorImSaImEE5clearEv.exit.i

_ZNSt6vectorImSaImEE5clearEv.exit.i:              ; preds = %_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEE.exit, %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36.i, %bb.z, %bb.aa, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.et = load float, ptr %i.t, align 4, !tbaa !31
  %i.eu = load ptr, ptr %i.o, align 8, !tbaa !64  ; 2 uses
  %i.ev = load ptr, ptr %10, align 8, !tbaa !65   ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 2 uses
  %i.ez = sdiv exact i64 %i.ey, 20                ; 11 uses
  %i.fa = icmp ugt i64 %i.ez, 2305843009213693951
  br i1 %i.fa, label %.invoke, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.i
  %.not.i.i.i.i.i = icmp eq ptr %i.eu, %i.ev
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %.noexc44.i

.noexc44.i:                                       ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.fb = shl nuw nsw i64 %i.ez, 2                ; 3 uses
  %i.fc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fb) #20
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

.noexc53:                                         ; preds = %.noexc44.i
  store float 0.000000e+00, ptr %i.fc, align 4, !tbaa !35
  %i.fd = add nsw i64 %i.ez, -1                   ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %.lr.ph.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc53
  %i.ff = getelementptr i8, ptr %i.fc, i64 4
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ff, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !35
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc53
  %i.fg = load ptr, ptr %10, align 8, !tbaa !65   ; 9 uses
  %min.iters.check = icmp ult i64 %i.ez, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.fh = shl nuw nsw i64 %i.ez, 2
  %scevgep = getelementptr i8, ptr %i.fc, i64 %i.fh
  %scevgep249 = getelementptr i8, ptr %i.fg, i64 -4
  %scevgep250 = getelementptr i8, ptr %scevgep249, i64 %i.ey
  %bound0 = icmp ult ptr %i.fc, %scevgep250
  %bound1 = icmp ult ptr %i.fg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fi = and i64 %i.ez, 3                        ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 0
  %i.fk = select i1 %i.fj, i64 4, i64 %i.fi
  %n.vec = sub nsw i64 %i.ez, %i.fk               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.fl = getelementptr inbounds nuw [20 x i8], ptr %i.fg, i64 %index ; 4 uses
  %i.fm = getelementptr inbounds nuw [20 x i8], ptr %i.fg, i64 %index ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 20
  %i.fo = getelementptr inbounds nuw [20 x i8], ptr %i.fg, i64 %index ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fq = getelementptr inbounds nuw [20 x i8], ptr %i.fg, i64 %index ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 60
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 28
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 68
  %i.fw = load float, ptr %i.fs, align 4, !tbaa !70, !alias.scope !110
  %i.fx = load float, ptr %i.ft, align 4, !tbaa !70, !alias.scope !110
  %i.fy = load float, ptr %i.fu, align 4, !tbaa !70, !alias.scope !110
  %i.fz = load float, ptr %i.fv, align 4, !tbaa !70, !alias.scope !110
  %i.ga = insertelement <4 x float> poison, float %i.fw, i64 0
  %i.gb = insertelement <4 x float> %i.ga, float %i.fx, i64 1
  %i.gc = insertelement <4 x float> %i.gb, float %i.fy, i64 2
  %i.gd = insertelement <4 x float> %i.gc, float %i.fz, i64 3
  %i.ge = load float, ptr %i.fl, align 4, !tbaa !68, !alias.scope !110
  %i.gf = load float, ptr %i.fn, align 4, !tbaa !68, !alias.scope !110
  %i.gg = load float, ptr %i.fp, align 4, !tbaa !68, !alias.scope !110
  %i.gh = load float, ptr %i.fr, align 4, !tbaa !68, !alias.scope !110
  %i.gi = insertelement <4 x float> poison, float %i.ge, i64 0
  %i.gj = insertelement <4 x float> %i.gi, float %i.gf, i64 1
  %i.gk = insertelement <4 x float> %i.gj, float %i.gg, i64 2
  %i.gl = insertelement <4 x float> %i.gk, float %i.gh, i64 3
  %i.gm = fsub fast <4 x float> %i.gd, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  %i.go = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fo, i64 52
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fq, i64 72
  %i.gr = load float, ptr %i.gn, align 4, !tbaa !71, !alias.scope !110
  %i.gs = load float, ptr %i.go, align 4, !tbaa !71, !alias.scope !110
  %i.gt = load float, ptr %i.gp, align 4, !tbaa !71, !alias.scope !110
  %i.gu = load float, ptr %i.gq, align 4, !tbaa !71, !alias.scope !110
  %i.gv = insertelement <4 x float> poison, float %i.gr, i64 0
  %i.gw = insertelement <4 x float> %i.gv, float %i.gs, i64 1
  %i.gx = insertelement <4 x float> %i.gw, float %i.gt, i64 2
  %i.gy = insertelement <4 x float> %i.gx, float %i.gu, i64 3
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fo, i64 44
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %i.hd = load float, ptr %i.gz, align 4, !tbaa !69, !alias.scope !110
  %i.he = load float, ptr %i.ha, align 4, !tbaa !69, !alias.scope !110
  %i.hf = load float, ptr %i.hb, align 4, !tbaa !69, !alias.scope !110
  %i.hg = load float, ptr %i.hc, align 4, !tbaa !69, !alias.scope !110
  %i.hh = insertelement <4 x float> poison, float %i.hd, i64 0
  %i.hi = insertelement <4 x float> %i.hh, float %i.he, i64 1
  %i.hj = insertelement <4 x float> %i.hi, float %i.hf, i64 2
  %i.hk = insertelement <4 x float> %i.hj, float %i.hg, i64 3
  %i.hl = fsub fast <4 x float> %i.gy, %i.hk
  %i.hm = fmul fast <4 x float> %i.hl, %i.gm
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %index
  store <4 x float> %i.hm, ptr %i.hn, align 4, !tbaa !35, !alias.scope !111, !noalias !110
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ho = icmp eq i64 %index.next, %n.vec
  br i1 %i.ho, label %scalar.ph.preheader, label %vector.body, !llvm.loop !105

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.i
  %.03963.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %vector.body ] ; 6 uses
  %i.hp = sub nsw i64 %i.ez, %.03963.i.ph
  %.neg = add nsw i64 %.03963.i.ph, 1
  %xtraiter = and i64 %i.hp, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.hq = getelementptr inbounds nuw [20 x i8], ptr %i.fg, i64 %.03963.i.ph ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load <2 x float>, ptr %i.hr, align 4, !tbaa !35
  %i.ht = load <2 x float>, ptr %i.hq, align 4, !tbaa !35
  %i.hu = fsub fast <2 x float> %i.hs, %i.ht
  %i.hv = call fast float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.hu)
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.03963.i.ph
  store float %i.hv, ptr %i.hw, align 4, !tbaa !35
  %i.hx = add nuw nsw i64 %.03963.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.03963.i.unr = phi i64 [ %.03963.i.ph, %scalar.ph.preheader ], [ %i.hx, %scalar.ph.prol ]
  %i.hy = icmp eq i64 %i.ez, %.neg
  br i1 %i.hy, label %.lr.ph73.i.preheader, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.03963.i = phi i64 [ %i.io, %scalar.ph ], [ %.03963.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.hz = getelementptr inbounds nuw [20 x i8], ptr %i.fg, i64 %.03963.i ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load <2 x float>, ptr %i.ia, align 4, !tbaa !35
  %i.ic = load <2 x float>, ptr %i.hz, align 4, !tbaa !35
  %i.id = fsub fast <2 x float> %i.ib, %i.ic
  %i.ie = call fast float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.id)
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.03963.i
  store float %i.ie, ptr %i.if, align 4, !tbaa !35
  %i.ig = add nuw nsw i64 %.03963.i, 1            ; 2 uses
  %i.ih = getelementptr inbounds nuw [20 x i8], ptr %i.fg, i64 %i.ig ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load <2 x float>, ptr %i.ii, align 4, !tbaa !35
  %i.ik = load <2 x float>, ptr %i.ih, align 4, !tbaa !35
  %i.il = fsub fast <2 x float> %i.ij, %i.ik
  %i.im = call fast float @llvm.vector.reduce.fmul.v2f32(float 1.000000e+00, <2 x float> %i.il)
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.ig
  store float %i.im, ptr %i.in, align 4, !tbaa !35
  %i.io = add nuw nsw i64 %.03963.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.io, %i.ez
  br i1 %exitcond.not.i.1, label %.lr.ph73.i.preheader, label %scalar.ph, !llvm.loop !106

.lr.ph73.i.preheader:                             ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  br label %.lr.ph73.i

.lr.ph73.i:                                       ; preds = %.lr.ph73.i.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph73.i.preheader ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.2, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph73.i.preheader ]
  %.sroa.15.0 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph73.i.preheader ] ; 4 uses
  %i.ip = phi ptr [ %i.ky, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph73.i.preheader ] ; 7 uses
  %i.iq = phi ptr [ %i.kz, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ null, %.lr.ph73.i.preheader ] ; 5 uses
  %storemerge72.i = phi i64 [ %i.la, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ], [ 0, %.lr.ph73.i.preheader ] ; 5 uses
  %i.ir = load ptr, ptr %10, align 8, !tbaa !65   ; 2 uses
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ip to i64               ; 2 uses
  %i.iu = sub i64 %i.is, %i.it                    ; 5 uses
  %i.iv = ashr exact i64 %i.iu, 3                 ; 5 uses
  %i.iw = trunc i64 %i.iv to i32
  %i.ix = icmp sgt i32 %i.iw, 0
  br i1 %i.ix, label %.lr.ph66.i, label %._crit_edge.thread.i

.lr.ph66.i:                                       ; preds = %.lr.ph73.i
  %i.iy = getelementptr inbounds nuw [20 x i8], ptr %i.ir, i64 %storemerge72.i ; 4 uses
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !68 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %storemerge72.i
  %i.je = load float, ptr %i.jd, align 4, !tbaa !35
  %wide.trip.count.i = and i64 %i.iv, 2147483647
  br label %bb.ab

._crit_edge.i:                                    ; preds = %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i
  %i.jf = icmp eq i32 %spec.select.i, 0
  br i1 %i.jf, label %_ZNSt6vectorImSaImEE9push_backERKm.exit.i, label %._crit_edge.thread.i

bb.ab:                                            ; preds = %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i, %.lr.ph66.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph66.i ], [ %indvars.iv.next.i, %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i ] ; 2 uses
  %.03464.i = phi i32 [ 1, %.lr.ph66.i ], [ %spec.select.i, %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i ]
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv.i
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !114 ; 2 uses
  %i.ji = getelementptr inbounds nuw [20 x i8], ptr %i.ir, i64 %i.jh ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !70 ; 2 uses
  %i.jl = fcmp fast ogt float %i.iz, %i.jk
  br i1 %i.jl, label %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jm = load float, ptr %i.ja, align 4, !tbaa !70 ; 2 uses
  %i.jn = load float, ptr %i.ji, align 4, !tbaa !68 ; 2 uses
  %i.jo = fcmp fast olt float %i.jm, %i.jn
  br i1 %i.jo, label %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jp = load float, ptr %i.jb, align 4, !tbaa !69 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !71 ; 2 uses
  %i.js = fcmp fast ogt float %i.jp, %i.jr
  br i1 %i.js, label %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jt = load float, ptr %i.jc, align 4, !tbaa !71 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !69 ; 2 uses
  %i.jw = fcmp fast olt float %i.jt, %i.jv
  br i1 %i.jw, label %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jx = call nnan ninf nsz float @llvm.minnum.f32(float %i.jk, float %i.jm)
  %i.jy = call nnan ninf nsz float @llvm.maxnum.f32(float %i.iz, float %i.jn)
  %i.jz = fsub fast float %i.jx, %i.jy
  %i.ka = call nnan ninf nsz float @llvm.minnum.f32(float %i.jr, float %i.jt)
  %i.kb = call nnan ninf nsz float @llvm.maxnum.f32(float %i.jp, float %i.jv)
  %i.kc = fsub fast float %i.ka, %i.kb
  %i.kd = fmul fast float %i.kc, %i.jz
  br label %_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i

_ZN4ncnnL17intersection_areaERKNS_8BBoxRectES2_.exit.i: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.0.i.i = phi nsz float [ %i.kd, %bb.af ], [ 0.000000e+00, %bb.ae ], [ 0.000000e+00, %bb.ad ], [ 0.000000e+00, %bb.ac ], [ 0.000000e+00, %bb.ab ] ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.jh
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !35
  %i.kg = fsub fast float %i.je, %.0.i.i
  %i.kh = fadd fast float %i.kg, %i.kf
  %i.ki = fdiv fast float %.0.i.i, %i.kh
  %i.kj = fcmp fast ogt float %i.ki, %i.et
  %spec.select.i = select i1 %i.kj, i32 0, i32 %.03464.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond79.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond79.not.i, label %._crit_edge.i, label %bb.ab, !llvm.loop !107

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %.lr.ph73.i
  %.not.i.i51 = icmp eq ptr %i.iq, %.sroa.15.0
  br i1 %.not.i.i51, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.thread.i
  store i64 %storemerge72.i, ptr %i.iq, align 8, !tbaa !114
  %i.kk = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit.i

bb.ah:                                            ; preds = %._crit_edge.thread.i
  %i.kl = icmp eq i64 %i.iu, 9223372036854775800
  br i1 %i.kl, label %bb.ai, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
          to label %.noexc46.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.noexc46.i:                                       ; preds = %bb.ai
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ah
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.iv, i64 1)
  %i.km = add nsw i64 %.sroa.speculated.i.i.i.i, %i.iv ; 2 uses
  %i.kn = icmp ult i64 %i.km, %i.iv
  %i.ko = call i64 @llvm.umin.i64(i64 %i.km, i64 1152921504606846975)
  %i.kp = select i1 %i.kn, i64 1152921504606846975, i64 %i.ko ; 3 uses
  %.not.i.i.i45.i = icmp ne i64 %i.kp, 0
  call void @llvm.assume(i1 %.not.i.i.i45.i)
  %i.kq = shl nuw nsw i64 %i.kp, 3
  %i.kr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kq) #20
          to label %.noexc47.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc47.i:                                       ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 %i.iu ; 2 uses
  store i64 %storemerge72.i, ptr %i.ks, align 8, !tbaa !114
  %i.kt = icmp sgt i64 %i.iu, 0
  br i1 %i.kt, label %bb.aj, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.aj:                                            ; preds = %.noexc47.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kr, ptr align 8 %i.ip, i64 %i.iu, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.aj, %.noexc47.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.kv = ptrtoint ptr %.sroa.15.0 to i64
  %i.kw = sub i64 %i.kv, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %i.ip, i64 noundef %i.kw) #19
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.kp
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i, %bb.ai
  %lpad.loopexit.split-lp253 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fb) #19
  br label %.body

_ZNSt6vectorImSaImEE9push_backERKm.exit.i:        ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.ag, %._crit_edge.i
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %._crit_edge.i ], [ %i.kr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0.0, %bb.ag ] ; 6 uses
  %.sroa.9.2 = phi ptr [ %.sroa.9.1, %._crit_edge.i ], [ %i.ku, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.kk, %bb.ag ] ; 3 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.0, %._crit_edge.i ], [ %i.kx, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.15.0, %bb.ag ] ; 2 uses
  %i.ky = phi ptr [ %i.ip, %._crit_edge.i ], [ %i.kr, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ip, %bb.ag ]
  %i.kz = phi ptr [ %i.iq, %._crit_edge.i ], [ %i.ku, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.kk, %bb.ag ]
  %i.la = add nuw nsw i64 %storemerge72.i, 1      ; 2 uses
  %exitcond81.not.i = icmp eq i64 %i.la, %i.ez
  br i1 %exitcond81.not.i, label %_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_8BBoxRectESaIS1_EERS0_ImSaImEEf.exit, label %.lr.ph73.i, !llvm.loop !108

_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_8BBoxRectESaIS1_EERS0_ImSaImEEf.exit: ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fb) #19
  %i.lb = ptrtoint ptr %.sroa.15.1 to i64
  %i.lc = ptrtoint ptr %.sroa.0.1 to i64          ; 2 uses
  %.not126 = icmp eq ptr %.sroa.9.2, %.sroa.0.1
  br i1 %.not126, label %._crit_edge119, label %.lr.ph118

.lr.ph118:                                        ; preds = %_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_8BBoxRectESaIS1_EERS0_ImSaImEEf.exit
  %i.ld = ptrtoint ptr %.sroa.9.2 to i64
  %i.le = sub i64 %i.ld, %i.lc
  %i.lf = ashr exact i64 %i.le, 3
  %18 = load ptr, ptr %11, align 8
  br label %bb.an

._crit_edge119:                                   ; preds = %_ZN4ncnnL17nms_sorted_bboxesERKSt6vectorINS_8BBoxRectESaIS1_EERS0_ImSaImEEf.exit
  %.not.i.i.i54 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i54, label %_ZNSt6vectorImSaImEED2Ev.exit, label %._crit_edge119.thread

._crit_edge119.thread:                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit76, %._crit_edge119
  %i.lg = sub i64 %i.lb, %i.lc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.lg) #19
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i, %._crit_edge119, %._crit_edge119.thread
  %19 = load ptr, ptr %11, align 8, !tbaa !60     ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %19, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %20 = load ptr, ptr %i.r, align 8, !tbaa !58
  %i.lh = ptrtoint ptr %20 to i64
  %i.li = ptrtoint ptr %19 to i64
  %i.lj = sub i64 %i.lh, %i.li
  call void @_ZdlPvm(ptr noundef nonnull %19, i64 noundef %i.lj) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  %i.lk = load ptr, ptr %10, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i56 = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i56, label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ll = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.lk to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %i.lk, i64 noundef %i.lo) #19
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EED2Ev.exit

_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EED2Ev.exit:   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  %i.lp = load i32, ptr %i.b, align 4, !tbaa !40
  %i.lq = sext i32 %i.lp to i64
  %.not.not = icmp slt i64 %indvars.iv139, %i.lq
  br i1 %.not.not, label %bb.c, label %._crit_edge125

bb.an:                                            ; preds = %.lr.ph118, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit76
  %.0117 = phi i64 [ 0, %.lr.ph118 ], [ %i.nz, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit76 ] ; 2 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1, i64 %.0117
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !114 ; 2 uses
  %i.lt = load ptr, ptr %8, align 8, !tbaa !49
  %i.lu = getelementptr inbounds nuw [24 x i8], ptr %i.lt, i64 %indvars.iv.next140 ; 4 uses
  %i.lv = load ptr, ptr %10, align 8, !tbaa !65
  %i.lw = getelementptr inbounds nuw [20 x i8], ptr %i.lv, i64 %i.ls ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 8 ; 4 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !64 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 3 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !72
  %.not.i57 = icmp eq ptr %i.ly, %i.ma
  br i1 %.not.i57, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ly, ptr noundef nonnull align 4 dereferenceable(20) %i.lw, i64 20, i1 false), !tbaa.struct !77
  %i.mb = load ptr, ptr %i.lx, align 8, !tbaa !64
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 20
  store ptr %i.mc, ptr %i.lx, align 8, !tbaa !64
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit66

bb.ap:                                            ; preds = %bb.an
  %i.md = load ptr, ptr %i.lu, align 8, !tbaa !65 ; 4 uses
  %i.me = ptrtoint ptr %i.ly to i64
  %i.mf = ptrtoint ptr %i.md to i64               ; 2 uses
  %i.mg = sub i64 %i.me, %i.mf                    ; 5 uses
  %i.mh = icmp eq i64 %i.mg, 9223372036854775800
  br i1 %i.mh, label %.invoke, label %_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i.i58

_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i.i58: ; preds = %bb.ap
  %i.mi = sdiv exact i64 %i.mg, 20                ; 3 uses
  %.sroa.speculated.i.i.i59 = call i64 @llvm.umax.i64(i64 %i.mi, i64 1)
  %i.mj = add nsw i64 %.sroa.speculated.i.i.i59, %i.mi ; 2 uses
  %i.mk = icmp ult i64 %i.mj, %i.mi
  %i.ml = call i64 @llvm.umin.i64(i64 %i.mj, i64 461168601842738790)
  %i.mm = select i1 %i.mk, i64 461168601842738790, i64 %i.ml ; 3 uses
  %.not.i.i.i60 = icmp ne i64 %i.mm, 0
  call void @llvm.assume(i1 %.not.i.i.i60)
  %i.mn = mul nuw nsw i64 %i.mm, 20
  %i.mo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mn) #20
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i.i58
  %i.mp = getelementptr inbounds i8, ptr %i.mo, i64 %i.mg ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.mp, ptr noundef nonnull align 4 dereferenceable(20) %i.lw, i64 20, i1 false), !tbaa.struct !77
  %i.mq = icmp sgt i64 %i.mg, 0
  br i1 %i.mq, label %bb.aq, label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i61

bb.aq:                                            ; preds = %.noexc65
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mo, ptr align 4 %i.md, i64 %i.mg, i1 false)
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i61

_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i61: ; preds = %bb.aq, %.noexc65
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 20
  %.not.i17.i.i62 = icmp eq ptr %i.md, null
  br i1 %.not.i17.i.i62, label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i63, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i61
  %i.ms = load ptr, ptr %i.lz, align 8, !tbaa !72
  %i.mt = ptrtoint ptr %i.ms to i64
  %i.mu = sub i64 %i.mt, %i.mf
  call void @_ZdlPvm(ptr noundef nonnull %i.md, i64 noundef %i.mu) #19
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i63

_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i63: ; preds = %bb.ar, %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i61
  store ptr %i.mo, ptr %i.lu, align 8, !tbaa !65
  store ptr %i.mr, ptr %i.lx, align 8, !tbaa !64
  %i.mv = getelementptr inbounds nuw [20 x i8], ptr %i.mo, i64 %i.mm
  store ptr %i.mv, ptr %i.lz, align 8, !tbaa !72
  br label %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit66

_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit66: ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i63, %bb.ao
  %i.mw = load ptr, ptr %9, align 8, !tbaa !55
  %i.mx = getelementptr inbounds nuw [24 x i8], ptr %i.mw, i64 %indvars.iv.next140 ; 4 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %i.ls ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 8 ; 3 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !66 ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 16 ; 3 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !58
  %.not.i67 = icmp eq ptr %i.na, %i.nc
  br i1 %.not.i67, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit66
  %i.nd = load float, ptr %i.my, align 4, !tbaa !35
  store float %i.nd, ptr %i.na, align 4, !tbaa !35
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  store ptr %i.ne, ptr %i.mz, align 8, !tbaa !66
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit76

bb.at:                                            ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EE9push_backERKS1_.exit66
  %i.nf = load ptr, ptr %i.mx, align 8, !tbaa !60 ; 4 uses
  %i.ng = ptrtoint ptr %i.na to i64
  %i.nh = ptrtoint ptr %i.nf to i64               ; 2 uses
  %i.ni = sub i64 %i.ng, %i.nh                    ; 5 uses
  %i.nj = icmp eq i64 %i.ni, 9223372036854775804
  br i1 %i.nj, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i68

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i68: ; preds = %bb.at
  %i.nk = ashr exact i64 %i.ni, 2                 ; 3 uses
  %.sroa.speculated.i.i.i69 = call i64 @llvm.umax.i64(i64 %i.nk, i64 1)
  %i.nl = add nsw i64 %.sroa.speculated.i.i.i69, %i.nk ; 2 uses
  %i.nm = icmp ult i64 %i.nl, %i.nk
  %i.nn = call i64 @llvm.umin.i64(i64 %i.nl, i64 2305843009213693951)
  %i.no = select i1 %i.nm, i64 2305843009213693951, i64 %i.nn ; 3 uses
  %.not.i.i.i70 = icmp ne i64 %i.no, 0
  call void @llvm.assume(i1 %.not.i.i.i70)
  %i.np = shl nuw nsw i64 %i.no, 2
  %i.nq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.np) #20
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc75:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i68
  %i.nr = getelementptr inbounds i8, ptr %i.nq, i64 %i.ni ; 2 uses
  %i.ns = load float, ptr %i.my, align 4, !tbaa !35
  store float %i.ns, ptr %i.nr, align 4, !tbaa !35
  %i.nt = icmp sgt i64 %i.ni, 0
  br i1 %i.nt, label %bb.au, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i71

bb.au:                                            ; preds = %.noexc75
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nq, ptr align 4 %i.nf, i64 %i.ni, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i71

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i71: ; preds = %bb.au, %.noexc75
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  %.not.i17.i.i72 = icmp eq ptr %i.nf, null
  br i1 %.not.i17.i.i72, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i73, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i71
  %i.nv = load ptr, ptr %i.nb, align 8, !tbaa !58
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = sub i64 %i.nw, %i.nh
  call void @_ZdlPvm(ptr noundef nonnull %i.nf, i64 noundef %i.nx) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i73

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i73: ; preds = %bb.av, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i71
  store ptr %i.nq, ptr %i.mx, align 8, !tbaa !60
  store ptr %i.nu, ptr %i.mz, align 8, !tbaa !66
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.no
  store ptr %i.ny, ptr %i.nb, align 8, !tbaa !58
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit76

_ZNSt6vectorIfSaIfEE9push_backERKf.exit76:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i73, %bb.as
  %i.nz = add nuw i64 %.0117, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.nz, %i.lf
  br i1 %exitcond.not, label %._crit_edge119.thread, label %bb.an, !llvm.loop !109

._crit_edge125:                                   ; preds = %_ZNSt6vectorIN4ncnn8BBoxRectESaIS1_EED2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge125, %bb.a
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i68, %_ZNKSt6vectorIN4ncnn8BBoxRectESaIS1_EE12_M_check_lenEmPKc.exit.i.i58, %bb.r, %.noexc44.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit.split-lp253, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.oa = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.oa) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #19
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #19
  br label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN4ncnn8BBoxRectESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN4ncnn8BBoxRectESaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN4ncnn8BBoxRectESaIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN4ncnn8BBoxRectESaIS2_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #19
  br label %_ZSt8_DestroyISt6vectorIN4ncnn8BBoxRectESaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN4ncnn8BBoxRectESaIS2_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN4ncnn8BBoxRectESaIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN4ncnn8BBoxRectESaIS2_EESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #19
  br label %_ZNSt12_Vector_baseISt6vectorIN4ncnn8BBoxRectESaIS2_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN4ncnn8BBoxRectESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN4ncnn8BBoxRectESaIS2_EES4_EvT_S6_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL21qsort_descent_inplaceINS_8BBoxRectEEEvRSt6vectorIT_SaIS3_EERS2_IfSaIfEEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #14 {
bb.a:
  %4 = alloca %"struct.ncnn::BBoxRect", align 4   ; 4 uses
  %.pre59 = load ptr, ptr %1, align 8, !tbaa !60  ; 2 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.h, %bb.a
  %i.a = phi ptr [ %.pre59, %bb.a ], [ %i.ag, %bb.h ] ; 2 uses
  %i.b = phi ptr [ %.pre59, %bb.a ], [ %i.ah, %bb.h ] ; 2 uses
  %.tr45 = phi i32 [ %2, %bb.a ], [ %.038.lcssa, %bb.h ] ; 6 uses
  %i.c = add nsw i32 %.tr45, %3
  %i.d = sdiv i32 %i.c, 2
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e
  %i.g = load float, ptr %i.f, align 4, !tbaa !35 ; 2 uses
  %.not50 = icmp sgt i32 %.tr45, %3
  br i1 %.not50, label %._crit_edge, label %.preheader47

.preheader47:                                     ; preds = %tailrecurse, %bb.f
  %i.h = phi ptr [ %i.ac, %bb.f ], [ %i.a, %tailrecurse ] ; 3 uses
  %.052 = phi i32 [ %.2, %bb.f ], [ %3, %tailrecurse ]
  %.03851 = phi i32 [ %.240, %bb.f ], [ %.tr45, %tailrecurse ]
  %i.i = sext i32 %.03851 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader47
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.i, %.preheader47 ] ; 6 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.k = load float, ptr %i.j, align 4, !tbaa !35
  %i.l = fcmp fast ogt float %i.k, %i.g
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.l, label %bb.b, label %.preheader, !llvm.loop !115

.preheader:                                       ; preds = %bb.b
  %i.m = sext i32 %.052 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %bb.c ], [ %i.m, %.preheader ] ; 6 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv56
  %i.o = load float, ptr %i.n, align 4, !tbaa !35
  %i.p = fcmp fast olt float %i.o, %i.g
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, -1
  br i1 %i.p, label %bb.c, label %bb.d, !llvm.loop !116

bb.d:                                             ; preds = %bb.c
  %i.q = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.r = trunc nsw i64 %indvars.iv56 to i32       ; 2 uses
  %.not43 = icmp sgt i64 %indvars.iv, %indvars.iv56
  br i1 %.not43, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %0, align 8, !tbaa !65     ; 2 uses
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %i.s, i64 %indvars.iv ; 2 uses
  %i.u = getelementptr inbounds nuw [20 x i8], ptr %i.s, i64 %indvars.iv56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.t, i64 20, i1 false), !tbaa.struct !77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.t, ptr noundef nonnull align 4 dereferenceable(20) %i.u, i64 20, i1 false), !tbaa.struct !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.u, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !77
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.v = load ptr, ptr %1, align 8, !tbaa !60     ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv56 ; 2 uses
  %i.y = load float, ptr %i.w, align 4, !tbaa !35
  %i.z = load float, ptr %i.x, align 4, !tbaa !35
  store float %i.z, ptr %i.w, align 4, !tbaa !35
  store float %i.y, ptr %i.x, align 4, !tbaa !35
  %i.aa = add nsw i32 %i.q, 1
end_hunk_0
