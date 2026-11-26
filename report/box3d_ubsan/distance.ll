Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/distance?download=true
inline.NumInlined: 304
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@165 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1513, i32 25 } }
@166 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1514, i32 25 } }
@167 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1528, i32 46 }, ptr @0, i8 3, i8 3 }
@168 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1531, i32 46 }, ptr @0, i8 3, i8 3 }
@169 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1534, i32 25 } }
@170 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1535, i32 25 } }
@171 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1548, i32 46 }, ptr @0, i8 3, i8 3 }
@172 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1549, i32 43 } }
@173 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1559, i32 46 }, ptr @0, i8 3, i8 3 }
@174 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1560, i32 43 } }
@175 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1578, i32 54 }, ptr @162, i8 3, i8 3 }
@176 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1587, i32 63 }, ptr @0, i8 3, i8 3 }
@177 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1587, i32 50 } }
@178 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1588, i32 63 }, ptr @0, i8 3, i8 3 }
@179 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1588, i32 50 } }
@180 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1600, i32 63 }, ptr @0, i8 3, i8 3 }
@181 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1600, i32 50 } }
@182 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1601, i32 63 }, ptr @0, i8 3, i8 3 }
@183 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1601, i32 50 } }
@184 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1611, i32 63 }, ptr @0, i8 3, i8 3 }
@185 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1611, i32 50 } }
@186 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 1620, i32 63 }, ptr @0, i8 3, i8 3 }
@187 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 1620, i32 50 } }

; Function Attrs: nounwind uwtable
define hidden i32 @b3GetProxySupport(ptr noundef %0, <2 x float> %1, float %2) local_unnamed_addr #0 !func_sanitize !42 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !11
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !11  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !11
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !11
  %i.e = and i1 %i.a, %i.d, !nosanitize !11
  br i1 %i.e, label %bb.c, label %bb.b, !prof !12, !nosanitize !11

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1, i64 %i.b) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !18     ; 5 uses
  %i.i = icmp ne ptr %i.h, null, !nosanitize !11
  %i.j = ptrtoint ptr %i.h to i64, !nosanitize !11 ; 5 uses
  %i.k = and i64 %i.j, 3, !nosanitize !11
  %i.l = icmp eq i64 %i.k, 0, !nosanitize !11
  %i.m = and i1 %i.i, %i.l, !nosanitize !11
  br i1 %i.m, label %bb.e, label %bb.d, !prof !12, !nosanitize !11

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @3, i64 %i.j) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.e:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !19
  %i.n = icmp sgt i32 %i.g, 1
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %.sroa.017.0.copyload = load <2 x float>, ptr %i.h, align 4, !tbaa !19
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.h, %bb.e
  %.0.lcssa = phi i32 [ 0, %bb.e ], [ %.1, %bb.h ]
  ret i32 %.0.lcssa

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %.039 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.h ]
  %.02738 = phi float [ 0.000000e+00, %.lr.ph ], [ %.128, %bb.h ] ; 2 uses
  %i.o = mul nuw nsw i64 %indvars.iv, 12
  %i.p = add i64 %i.o, %i.j, !nosanitize !11      ; 2 uses
  %.not = icmp ult i64 %i.p, %i.j, !nosanitize !11
  br i1 %.not, label %bb.g, label %bb.h, !prof !20, !nosanitize !11

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @4, i64 %i.j, i64 %i.p) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.h:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4
  %i.r = fsub float %.sroa.28.0.copyload, %.sroa.4.0.copyload
  %i.s = fmul float %2, %i.r
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.q, align 4
  %i.t = fsub <2 x float> %.sroa.07.0.copyload, %.sroa.017.0.copyload
  %i.u = fmul <2 x float> %1, %i.t                ; 2 uses
  %shift = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.u, %shift
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.w = fadd float %i.s, %i.v                    ; 2 uses
  %i.x = fcmp ogt float %i.w, %.02738             ; 2 uses
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  %.1 = select i1 %i.x, i32 %i.y, i32 %.039       ; 2 uses
  %.128 = select i1 %i.x, float %i.w, float %.02738
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_type_mismatch_v1_abort(ptr, i64) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_pointer_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_add_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @b3GetPointSupport(ptr noundef %0, i32 noundef %1, <2 x float> %2, float %3) local_unnamed_addr #0 !func_sanitize !43 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !11
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !11  ; 5 uses
  %i.c = and i64 %i.b, 3, !nosanitize !11
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !11
  %i.e = and i1 %i.a, %i.d, !nosanitize !11
  br i1 %i.e, label %bb.c, label %bb.b, !prof !12, !nosanitize !11

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @6, i64 %i.b) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !19
  %i.f = icmp sgt i32 %1, 1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.sroa.017.0.copyload = load <2 x float>, ptr %0, align 4, !tbaa !19
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %.1, %bb.f ]
  ret i32 %.0.lcssa

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %.035 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ]
  %.02534 = phi float [ 0.000000e+00, %.lr.ph ], [ %.126, %bb.f ] ; 2 uses
  %i.g = mul nuw nsw i64 %indvars.iv, 12
  %i.h = add i64 %i.g, %i.b, !nosanitize !11      ; 2 uses
  %.not = icmp ult i64 %i.h, %i.b, !nosanitize !11
  br i1 %.not, label %bb.e, label %bb.f, !prof !20, !nosanitize !11

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @7, i64 %i.b, i64 %i.h) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.f:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4
  %i.j = fsub float %.sroa.28.0.copyload, %.sroa.4.0.copyload
  %i.k = fmul float %3, %i.j
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.i, align 4
  %i.l = fsub <2 x float> %.sroa.07.0.copyload, %.sroa.017.0.copyload
  %i.m = fmul <2 x float> %2, %i.l                ; 2 uses
  %shift = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.m, %shift
  %i.n = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.o = fadd float %i.k, %i.n                    ; 2 uses
  %i.p = fcmp ogt float %i.o, %.02534             ; 2 uses
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %.1 = select i1 %i.p, i32 %i.q, i32 %.035       ; 2 uses
  %.126 = select i1 %i.p, float %i.o, float %.02534
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !1
}

; Function Attrs: nounwind uwtable
define void @b3ShapeDistance(ptr dead_on_unwind noalias nofree writable sret(%struct.b3DistanceOutput) align 4 captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !func_sanitize !46 {
bb.a:
  %.sroa.0225.i = alloca { %struct.b3Vec3, %struct.b3Vec3 }, align 8 ; 13 uses
  %.sroa.24262.i = alloca { float, i32, i32 }, align 8 ; 13 uses
  %.sroa.0180.i = alloca { %struct.b3Vec3, %struct.b3Vec3 }, align 8 ; 13 uses
  %.sroa.24217.i = alloca { float, i32, i32 }, align 8 ; 13 uses
  %.sroa.0135.i = alloca { %struct.b3Vec3, %struct.b3Vec3 }, align 8 ; 13 uses
  %.sroa.24172.i = alloca { float, i32, i32 }, align 8 ; 13 uses
  %.sroa.093.i = alloca { %struct.b3Vec3, %struct.b3Vec3 }, align 8 ; 13 uses
  %.sroa.24.i = alloca { float, i32, i32 }, align 8 ; 13 uses
  %i.a = alloca [3 x float], align 8              ; 12 uses
  %i.b = alloca [3 x float], align 4              ; 17 uses
  %i.c = alloca [3 x float], align 4              ; 17 uses
  %i.d = alloca [3 x float], align 4              ; 17 uses
  %i.e = alloca [3 x float], align 4              ; 17 uses
  %i.f = alloca [3 x float], align 4              ; 17 uses
  %i.g = alloca [4 x float], align 16             ; 10 uses
  %i.h = alloca [4 x float], align 16             ; 10 uses
  %i.i = alloca [4 x float], align 16             ; 10 uses
  %i.j = alloca [4 x float], align 16             ; 10 uses
  %i.k = alloca [5 x float], align 16             ; 7 uses
  %.sroa.068.i = alloca { %struct.b3Vec3, %struct.b3Vec3 }, align 8 ; 7 uses
  %.sroa.1285.i = alloca { float, i32, i32 }, align 8 ; 7 uses
  %.sroa.047.i = alloca { %struct.b3Vec3, %struct.b3Vec3 }, align 8 ; 7 uses
  %.sroa.1264.i = alloca { float, i32, i32 }, align 8 ; 7 uses
  %.sroa.029.i = alloca { %struct.b3Vec3, %struct.b3Vec3 }, align 8 ; 7 uses
  %.sroa.12.i = alloca { float, i32, i32 }, align 8 ; 7 uses
  %i.l = alloca [3 x float], align 8              ; 10 uses
  %i.m = alloca [3 x float], align 8              ; 10 uses
  %i.n = alloca [3 x float], align 8              ; 10 uses
  %i.o = alloca [4 x float], align 16             ; 8 uses
  %5 = alloca %struct.b3Simplex, align 8          ; 115 uses
  %6 = alloca %struct.b3Simplex, align 4          ; 5 uses
  %7 = alloca %struct.b3Vec3, align 4             ; 4 uses
  %8 = alloca %struct.b3Vec3, align 4             ; 4 uses
  %9 = alloca %struct.b3Vec3, align 8             ; 6 uses
  %10 = alloca %struct.b3Vec3, align 8            ; 6 uses
  %i.p = icmp ne ptr %1, null, !nosanitize !11
  %i.q = ptrtoint ptr %1 to i64, !nosanitize !11  ; 2 uses
  %i.r = and i64 %i.q, 7, !nosanitize !11
  %i.s = icmp eq i64 %i.r, 0, !nosanitize !11
  %i.t = and i1 %i.p, %i.s, !nosanitize !11
  br i1 %i.t, label %bb.c, label %bb.b, !prof !12, !nosanitize !11

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @9, i64 %i.q) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0438.0.copyload = load <2 x float>, ptr %i.u, align 8, !tbaa !19 ; 6 uses
  %.sroa.6441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.6441.0.copyload = load float, ptr %.sroa.6441.0..sroa_idx, align 8, !tbaa !19 ; 6 uses
  %.sroa.9442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.9442.0.copyload = load <2 x float>, ptr %.sroa.9442.0..sroa_idx, align 4, !tbaa !19 ; 6 uses
  %.sroa.10443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.10443.0.copyload = load <2 x float>, ptr %.sroa.10443.0..sroa_idx, align 4, !tbaa !19 ; 6 uses
  %i.v = shufflevector <2 x float> %.sroa.9442.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.w = shufflevector <2 x float> %.sroa.10443.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.x = fmul <2 x float> %i.v, %i.w              ; 4 uses
  %i.y = shufflevector <2 x float> %.sroa.10443.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %.sroa.9442.0.copyload, %i.y ; 4 uses
  %shift = shufflevector <2 x float> %.sroa.9442.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %.sroa.9442.0.copyload, %shift ; 2 uses
  %foldExtExtBinop3854 = fmul <2 x float> %.sroa.10443.0.copyload, %.sroa.10443.0.copyload
  %i.aa = fmul <2 x float> %.sroa.9442.0.copyload, %.sroa.9442.0.copyload ; 2 uses
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %shift3856 = shufflevector <2 x float> %.sroa.10443.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3857 = fmul <2 x float> %.sroa.10443.0.copyload, %shift3856 ; 2 uses
  %i.ac = shufflevector <2 x float> %foldExtExtBinop3854, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fadd <2 x float> %i.ab, %i.ac
  %i.ae = fmul <2 x float> %i.ad, splat (float 2.000000e+00)
  %foldExtExtBinop3859 = fadd <2 x float> %foldExtExtBinop, %foldExtExtBinop3857
  %foldExtExtBinop3861 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop3857
  %i.af = shufflevector <2 x float> %foldExtExtBinop3861, <2 x float> %foldExtExtBinop3859, <2 x i32> <i32 0, i32 2>
  %i.ag = fmul <2 x float> %i.af, splat (float 2.000000e+00) ; 8 uses
  %i.ah = fsub <2 x float> splat (float 1.000000e+00), %i.ae ; 8 uses
  %foldExtExtBinop3863 = fadd <2 x float> %i.z, %i.x
  %i.ai = extractelement <2 x float> %foldExtExtBinop3863, i64 1
  %i.aj = fmul float %i.ai, 2.000000e+00          ; 7 uses
  %i.ak = fadd <2 x float> %i.z, %i.x
  %i.al = fsub <2 x float> %i.z, %i.x
  %i.am = shufflevector <2 x float> %i.ak, <2 x float> %i.al, <2 x i32> <i32 0, i32 3>
  %i.an = fmul <2 x float> %i.am, splat (float 2.000000e+00) ; 8 uses
  %foldExtExtBinop3866 = fadd <2 x float> %i.aa, %i.ab
  %i.ao = extractelement <2 x float> %foldExtExtBinop3866, i64 0
  %foldExtExtBinop3868 = fsub <2 x float> %i.z, %i.x
  %i.ap = extractelement <2 x float> %foldExtExtBinop3868, i64 0
  %i.aq = fmul float %i.ap, 2.000000e+00          ; 7 uses
  %i.ar = fmul float %i.ao, 2.000000e+00
  %i.as = fsub float 1.000000e+00, %i.ar          ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(196) %5, i8 0, i64 192, i1 false)
  %i.au = icmp ne ptr %2, null, !nosanitize !11
  %i.av = ptrtoint ptr %2 to i64, !nosanitize !11 ; 2 uses
  %i.aw = and i64 %i.av, 3, !nosanitize !11
  %i.ax = icmp eq i64 %i.aw, 0, !nosanitize !11
  %i.ay = and i1 %i.au, %i.ax, !nosanitize !11
  br i1 %i.ay, label %bb.e, label %bb.d, !prof !12, !nosanitize !11

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @11, i64 %i.av) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.e:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 30 uses
  %i.bb = load i16, ptr %i.az, align 4, !tbaa !49 ; 6 uses
  %i.bc = zext i16 %i.bb to i32
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !23
  %.not1897 = icmp eq i16 %i.bb, 0
  br i1 %.not1897, label %.thread2739, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 4 uses
  %i.be = ptrtoint ptr %i.bd to i64, !nosanitize !11 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.bg = ptrtoint ptr %i.bf to i64               ; 3 uses
  %i.bh = ptrtoint ptr %5 to i64                  ; 4 uses
  %i.bi = load i8, ptr %i.bd, align 2, !tbaa !50  ; 2 uses
  %i.bj = zext i8 %i.bi to i32
  %i.bk = load i8, ptr %i.bf, align 2, !tbaa !50  ; 2 uses
  %i.bl = zext i8 %i.bk to i32
  %i.bm = load ptr, ptr %1, align 8, !tbaa !18    ; 3 uses
  %i.bn = zext i8 %i.bi to i64                    ; 2 uses
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.bn ; 3 uses
  %i.bp = mul nuw nsw i64 %i.bn, 12
  %i.bq = ptrtoint ptr %i.bm to i64, !nosanitize !11 ; 3 uses
  %i.br = add i64 %i.bp, %i.bq, !nosanitize !11   ; 3 uses
  %i.bs = icmp ne ptr %i.bm, null, !nosanitize !11 ; 2 uses
  %i.bt = icmp eq i64 %i.br, 0
  %i.bu = xor i1 %i.bs, %i.bt
  %i.bv = icmp uge i64 %i.br, %i.bq, !nosanitize !11
  %i.bw = and i1 %i.bv, %i.bu, !nosanitize !11
  br i1 %i.bw, label %bb.f, label %.split1855.us, !prof !12, !nosanitize !11

bb.f:                                             ; preds = %.lr.ph
  %i.bx = ptrtoint ptr %i.bo to i64, !nosanitize !11 ; 2 uses
  %i.by = and i64 %i.bx, 3, !nosanitize !11
  %i.bz = icmp eq i64 %i.by, 0, !nosanitize !11
  %i.ca = and i1 %i.bs, %i.bz
  br i1 %i.ca, label %bb.g, label %.split1859.us, !prof !12, !nosanitize !11

bb.g:                                             ; preds = %bb.f
  %.sroa.0377.0.copyload.us = load <2 x float>, ptr %i.bo, align 4, !tbaa !19 ; 2 uses
  %.sroa.5379.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.5379.0.copyload.us = load float, ptr %.sroa.5379.0..sroa_idx.us, align 4, !tbaa !19 ; 2 uses
  %i.cb = load ptr, ptr %i.at, align 8, !tbaa !18 ; 3 uses
  %i.cc = zext i8 %i.bk to i64                    ; 2 uses
  %i.cd = mul nuw nsw i64 %i.cc, 12
  %i.ce = ptrtoint ptr %i.cb to i64, !nosanitize !11 ; 3 uses
  %i.cf = add i64 %i.cd, %i.ce, !nosanitize !11   ; 3 uses
  %i.cg = icmp ne ptr %i.cb, null, !nosanitize !11
  %i.ch = icmp eq i64 %i.cf, 0
  %i.ci = xor i1 %i.cg, %i.ch
  %i.cj = icmp uge i64 %i.cf, %i.ce, !nosanitize !11
  %i.ck = and i1 %i.cj, %i.ci, !nosanitize !11
  br i1 %i.ck, label %bb.h, label %.split1862.us, !prof !12, !nosanitize !11

bb.h:                                             ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %i.cb, i64 %i.cc ; 2 uses
  %.sroa.2372.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.2372.0.copyload.us = load float, ptr %.sroa.2372.0..sroa_idx.us, align 4 ; 2 uses
  %i.cm = fmul float %i.as, %.sroa.2372.0.copyload.us
  %.sroa.0371.0.copyload.us = load <2 x float>, ptr %i.cl, align 4 ; 4 uses
  %.sroa.0.0.vec.extract.i.us = extractelement <2 x float> %.sroa.0371.0.copyload.us, i64 0
  %i.cn = fmul float %i.aq, %.sroa.0.0.vec.extract.i.us
  %i.co = extractelement <2 x float> %.sroa.0371.0.copyload.us, i64 1
  %i.cp = fmul float %i.aj, %i.co
  %i.cq = fadd float %i.cn, %i.cp
  %i.cr = fadd float %i.cm, %i.cq
  %i.cs = fadd float %.sroa.6441.0.copyload, %i.cr ; 2 uses
  %i.ct = insertelement <2 x float> poison, float %.sroa.2372.0.copyload.us, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fmul <2 x float> %i.an, %i.cu
  %i.cw = shufflevector <2 x float> %.sroa.0371.0.copyload.us, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cx = fmul <2 x float> %i.ag, %i.cw
  %i.cy = fmul <2 x float> %i.ah, %.sroa.0371.0.copyload.us
  %i.cz = fadd <2 x float> %i.cx, %i.cy
  %i.da = fadd <2 x float> %i.cv, %i.cz
  %i.db = fadd <2 x float> %.sroa.0438.0.copyload, %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %i.bj, ptr %i.dc, align 8, !tbaa !51
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 %i.bl, ptr %i.dd, align 4, !tbaa !52
  store <2 x float> %.sroa.0377.0.copyload.us, ptr %5, align 8, !tbaa !19
  %.sroa.5379.0..sroa_idx380.us = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sroa.5379.0.copyload.us, ptr %.sroa.5379.0..sroa_idx380.us, align 8, !tbaa !19
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 12
  store <2 x float> %i.db, ptr %i.de, align 4, !tbaa !19
  %.sroa.5376.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %i.cs, ptr %.sroa.5376.0..sroa_idx.us, align 4, !tbaa !19
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dg = fsub <2 x float> %i.db, %.sroa.0377.0.copyload.us
  %i.dh = fsub float %i.cs, %.sroa.5379.0.copyload.us
  store <2 x float> %i.dg, ptr %i.df, align 8, !tbaa !19
  %.sroa.4358.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float %i.dh, ptr %.sroa.4358.0..sroa_idx.us, align 8, !tbaa !19
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 36
  store float 0.000000e+00, ptr %i.di, align 4, !tbaa !26
  %exitcond2630.not = icmp eq i16 %i.bb, 1
  br i1 %exitcond2630.not, label %._crit_edge, label %.lr.ph.split.us.1

.lr.ph.split.us.1:                                ; preds = %bb.h
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !50  ; 2 uses
  %i.dl = zext i8 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !50  ; 2 uses
  %i.do = zext i8 %i.dn to i32
  %i.dp = load ptr, ptr %1, align 8, !tbaa !18    ; 3 uses
  %i.dq = zext i8 %i.dk to i64                    ; 2 uses
  %i.dr = getelementptr inbounds nuw [12 x i8], ptr %i.dp, i64 %i.dq ; 3 uses
  %i.ds = mul nuw nsw i64 %i.dq, 12
  %i.dt = ptrtoint ptr %i.dp to i64, !nosanitize !11 ; 3 uses
end_hunk_0
begin_hunk_1_@b3ShapeDistance:bb.a
bb.bv:                                            ; preds = %b3BarycentricCoordsEdge.exit.i580
  %i.uk = ptrtoint ptr %i.b to i64, !nosanitize !11 ; 2 uses
  %i.ul = add i64 %i.uk, 4, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @69, i64 %i.uk, i64 %i.ul) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.bw:                                            ; preds = %b3BarycentricCoordsEdge.exit.i580
  %i.um = fneg float %i.uj
  store float %i.um, ptr %i.ma, align 4, !tbaa !19
  br i1 %.not36.i510.i, label %bb.bx, label %b3BarycentricCoordsEdge.exit511.i, !prof !20, !nosanitize !11

bb.bx:                                            ; preds = %bb.bw
  %i.un = ptrtoint ptr %i.b to i64, !nosanitize !11 ; 2 uses
  %i.uo = add i64 %i.un, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @70, i64 %i.un, i64 %i.uo) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit511.i:                ; preds = %bb.bw
  %i.up = fmul float %i.tx, %i.tx
  %i.uq = fmul <2 x float> %i.tw, %i.tw           ; 2 uses
  %shift3895 = shufflevector <2 x float> %i.uq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3896 = fadd <2 x float> %i.uq, %shift3895
  %i.ur = extractelement <2 x float> %foldExtExtBinop3896, i64 0
  %i.us = fadd float %i.up, %i.ur
  store float %i.us, ptr %i.mb, align 4, !tbaa !19
  %i.ut = fsub <2 x float> %.sroa.10.0.copyload.i, %.sroa.10226.0.copyload.i ; 7 uses
  %i.uu = fsub float %.sroa.17.0.copyload.i, %.sroa.17247.0.copyload.i ; 6 uses
  %i.uv = fmul float %.sroa.17.0.copyload.i, %i.uu
  %i.uw = shufflevector <2 x float> %.sroa.10226.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.ux = shufflevector <2 x float> %i.ut, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.uy = fmul <2 x float> %i.uw, %i.ux
  %i.uz = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10226.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.va = fmul <2 x float> %i.uz, %i.ut
  %i.vb = fadd <2 x float> %i.uy, %i.va           ; 2 uses
  %i.vc = extractelement <2 x float> %i.vb, i64 0
  %i.vd = fadd float %i.uv, %i.vc                 ; 2 uses
  store float %i.vd, ptr %i.c, align 4, !tbaa !19
  %i.ve = fmul float %.sroa.17247.0.copyload.i, %i.uu
  %i.vf = extractelement <2 x float> %i.vb, i64 1
  %i.vg = fadd float %i.ve, %i.vf                 ; 2 uses
  br i1 %.not.i516.i, label %bb.by, label %bb.bz, !prof !20, !nosanitize !11

bb.by:                                            ; preds = %b3BarycentricCoordsEdge.exit511.i
  %i.vh = ptrtoint ptr %i.c to i64, !nosanitize !11 ; 2 uses
  %i.vi = add i64 %i.vh, 4, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @69, i64 %i.vh, i64 %i.vi) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.bz:                                            ; preds = %b3BarycentricCoordsEdge.exit511.i
  %i.vj = fneg float %i.vg
  store float %i.vj, ptr %i.mc, align 4, !tbaa !19
  br i1 %.not36.i517.i, label %bb.ca, label %b3BarycentricCoordsEdge.exit518.i, !prof !20, !nosanitize !11

bb.ca:                                            ; preds = %bb.bz
  %i.vk = ptrtoint ptr %i.c to i64, !nosanitize !11 ; 2 uses
  %i.vl = add i64 %i.vk, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @70, i64 %i.vk, i64 %i.vl) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit518.i:                ; preds = %bb.bz
  %i.vm = fmul float %i.uu, %i.uu
  %i.vn = fmul <2 x float> %i.ut, %i.ut           ; 2 uses
  %shift3898 = shufflevector <2 x float> %i.vn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3899 = fadd <2 x float> %i.vn, %shift3898
  %i.vo = extractelement <2 x float> %foldExtExtBinop3899, i64 0
  %i.vp = fadd float %i.vm, %i.vo
  store float %i.vp, ptr %i.md, align 4, !tbaa !19
  %i.vq = fsub <2 x float> %.sroa.10136.0.copyload.i, %.sroa.10181.0.copyload.i ; 4 uses
  %i.vr = fsub float %.sroa.17157.0.copyload.i, %.sroa.17202.0.copyload.i ; 4 uses
  %i.vs = fmul float %.sroa.17157.0.copyload.i, %i.vr
  %i.vt = shufflevector <2 x float> %.sroa.10181.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.vu = shufflevector <2 x float> %i.vq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vv = fmul <2 x float> %i.vt, %i.vu
  %i.vw = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.vx = fmul <2 x float> %i.vw, %i.vq
  %i.vy = fadd <2 x float> %i.vv, %i.vx           ; 2 uses
  %i.vz = extractelement <2 x float> %i.vy, i64 0
  %i.wa = fadd float %i.vs, %i.vz                 ; 2 uses
  store float %i.wa, ptr %i.d, align 4, !tbaa !19
  %i.wb = fmul float %.sroa.17202.0.copyload.i, %i.vr
  %i.wc = extractelement <2 x float> %i.vy, i64 1
  %i.wd = fadd float %i.wb, %i.wc                 ; 2 uses
  br i1 %.not.i523.i, label %bb.cb, label %bb.cc, !prof !20, !nosanitize !11

bb.cb:                                            ; preds = %b3BarycentricCoordsEdge.exit518.i
  %i.we = ptrtoint ptr %i.d to i64, !nosanitize !11 ; 2 uses
  %i.wf = add i64 %i.we, 4, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @69, i64 %i.we, i64 %i.wf) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.cc:                                            ; preds = %b3BarycentricCoordsEdge.exit518.i
  %i.wg = fneg float %i.wd
  store float %i.wg, ptr %i.me, align 4, !tbaa !19
  br i1 %.not36.i524.i, label %bb.cd, label %b3BarycentricCoordsEdge.exit525.i, !prof !20, !nosanitize !11

bb.cd:                                            ; preds = %bb.cc
  %i.wh = ptrtoint ptr %i.d to i64, !nosanitize !11 ; 2 uses
  %i.wi = add i64 %i.wh, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @70, i64 %i.wh, i64 %i.wi) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit525.i:                ; preds = %bb.cc
  %i.wj = fmul float %i.vr, %i.vr
  %i.wk = fmul <2 x float> %i.vq, %i.vq           ; 2 uses
  %shift3901 = shufflevector <2 x float> %i.wk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3902 = fadd <2 x float> %i.wk, %shift3901
  %i.wl = extractelement <2 x float> %foldExtExtBinop3902, i64 0
  %i.wm = fadd float %i.wj, %i.wl
  store float %i.wm, ptr %i.mf, align 4, !tbaa !19
  %i.wn = fsub <2 x float> %.sroa.10.0.copyload.i, %.sroa.10136.0.copyload.i ; 4 uses
  %i.wo = fsub float %.sroa.17.0.copyload.i, %.sroa.17157.0.copyload.i ; 4 uses
  %i.wp = fmul float %.sroa.17.0.copyload.i, %i.wo
  %i.wq = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.wr = shufflevector <2 x float> %i.wn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ws = fmul <2 x float> %i.wq, %i.wr
  %i.wt = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.wu = fmul <2 x float> %i.wt, %i.wn
  %i.wv = fadd <2 x float> %i.ws, %i.wu           ; 2 uses
  %i.ww = extractelement <2 x float> %i.wv, i64 0
  %i.wx = fadd float %i.wp, %i.ww                 ; 2 uses
  store float %i.wx, ptr %i.e, align 4, !tbaa !19
  %i.wy = fmul float %.sroa.17157.0.copyload.i, %i.wo
  %i.wz = extractelement <2 x float> %i.wv, i64 1
  %i.xa = fadd float %i.wy, %i.wz                 ; 2 uses
  br i1 %.not.i530.i, label %bb.ce, label %bb.cf, !prof !20, !nosanitize !11

bb.ce:                                            ; preds = %b3BarycentricCoordsEdge.exit525.i
  %i.xb = ptrtoint ptr %i.e to i64, !nosanitize !11 ; 2 uses
  %i.xc = add i64 %i.xb, 4, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @69, i64 %i.xb, i64 %i.xc) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.cf:                                            ; preds = %b3BarycentricCoordsEdge.exit525.i
  %i.xd = fneg float %i.xa
  store float %i.xd, ptr %i.mg, align 4, !tbaa !19
  br i1 %.not36.i531.i, label %bb.cg, label %b3BarycentricCoordsEdge.exit532.i, !prof !20, !nosanitize !11

bb.cg:                                            ; preds = %bb.cf
  %i.xe = ptrtoint ptr %i.e to i64, !nosanitize !11 ; 2 uses
  %i.xf = add i64 %i.xe, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @70, i64 %i.xe, i64 %i.xf) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit532.i:                ; preds = %bb.cf
  %i.xg = fmul float %i.wo, %i.wo
  %i.xh = fmul <2 x float> %i.wn, %i.wn           ; 2 uses
  %shift3904 = shufflevector <2 x float> %i.xh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3905 = fadd <2 x float> %i.xh, %shift3904
  %i.xi = extractelement <2 x float> %foldExtExtBinop3905, i64 0
  %i.xj = fadd float %i.xg, %i.xi
  store float %i.xj, ptr %i.mh, align 4, !tbaa !19
  %i.xk = fsub <2 x float> %.sroa.10181.0.copyload.i, %.sroa.10.0.copyload.i ; 4 uses
  %i.xl = fsub float %.sroa.17202.0.copyload.i, %.sroa.17.0.copyload.i ; 4 uses
  %i.xm = fmul float %.sroa.17202.0.copyload.i, %i.xl
  %i.xn = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <2 x i32> <i32 3, i32 0>
  %i.xo = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xp = fmul <2 x float> %i.xn, %i.xo
  %i.xq = shufflevector <2 x float> %.sroa.10181.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.xr = fmul <2 x float> %i.xq, %i.xk
  %i.xs = fadd <2 x float> %i.xp, %i.xr           ; 2 uses
  %i.xt = extractelement <2 x float> %i.xs, i64 0
  %i.xu = fadd float %i.xm, %i.xt                 ; 2 uses
  store float %i.xu, ptr %i.f, align 4, !tbaa !19
  %i.xv = fmul float %.sroa.17.0.copyload.i, %i.xl
  %i.xw = extractelement <2 x float> %i.xs, i64 1
  %i.xx = fadd float %i.xv, %i.xw                 ; 2 uses
  br i1 %.not.i537.i, label %bb.ch, label %bb.ci, !prof !20, !nosanitize !11

bb.ch:                                            ; preds = %b3BarycentricCoordsEdge.exit532.i
  %i.xy = ptrtoint ptr %i.f to i64, !nosanitize !11 ; 2 uses
  %i.xz = add i64 %i.xy, 4, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @69, i64 %i.xy, i64 %i.xz) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ci:                                            ; preds = %b3BarycentricCoordsEdge.exit532.i
  %i.ya = fneg float %i.xx
  store float %i.ya, ptr %i.mi, align 4, !tbaa !19
  br i1 %.not36.i538.i, label %bb.cj, label %b3BarycentricCoordsEdge.exit539.i, !prof !20, !nosanitize !11

bb.cj:                                            ; preds = %bb.ci
  %i.yb = ptrtoint ptr %i.f to i64, !nosanitize !11 ; 2 uses
  %i.yc = add i64 %i.yb, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @70, i64 %i.yb, i64 %i.yc) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsEdge.exit539.i:                ; preds = %bb.ci
  %i.yd = fmul float %i.xl, %i.xl
  %i.ye = fmul <2 x float> %i.xk, %i.xk           ; 2 uses
  %shift3907 = shufflevector <2 x float> %i.ye, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3908 = fadd <2 x float> %i.ye, %shift3907
  %i.yf = extractelement <2 x float> %foldExtExtBinop3908, i64 0
  %i.yg = fadd float %i.yd, %i.yf
  store float %i.yg, ptr %i.mj, align 4, !tbaa !19
  %i.yh = fcmp ult float %i.to, 0.000000e+00
  br i1 %i.yh, label %bb.cr, label %bb.ck

bb.ck:                                            ; preds = %b3BarycentricCoordsEdge.exit539.i
  br i1 %.not453.i, label %bb.cl, label %bb.cm, !prof !20, !nosanitize !11

bb.cl:                                            ; preds = %bb.ck
  %11 = ptrtoint ptr %i.b to i64, !nosanitize !11 ; 2 uses
  %12 = add i64 %11, 4, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @78, i64 %11, i64 %12) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.cm:                                            ; preds = %bb.ck
  %i.yi = fcmp ult float %i.uj, 0.000000e+00
  br i1 %i.yi, label %bb.cr, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  br i1 %.not454.i, label %bb.co, label %bb.cp, !prof !20, !nosanitize !11

bb.co:                                            ; preds = %bb.cn
  %13 = ptrtoint ptr %i.c to i64, !nosanitize !11 ; 2 uses
  %14 = add i64 %13, 4, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @79, i64 %13, i64 %14) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.cp:                                            ; preds = %bb.cn
  %i.yj = fcmp ult float %i.vg, 0.000000e+00
  br i1 %i.yj, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  br label %b3SolveSimplex4.exit.thread

bb.cr:                                            ; preds = %bb.cp, %bb.cm, %b3BarycentricCoordsEdge.exit539.i
  %i.yk = fcmp ugt float %i.tl, 0.000000e+00
  %i.yl = fcmp ugt float %i.xu, 0.000000e+00
  %or.cond.i582 = select i1 %i.yk, i1 true, i1 %i.yl
  br i1 %or.cond.i582, label %bb.cw, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  br i1 %.not455.i, label %bb.ct, label %bb.cu, !prof !20, !nosanitize !11

bb.ct:                                            ; preds = %bb.cs
  %15 = ptrtoint ptr %i.d to i64, !nosanitize !11 ; 2 uses
  %16 = add i64 %15, 4, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @80, i64 %15, i64 %16) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.cu:                                            ; preds = %bb.cs
  %i.ym = fcmp ult float %i.wd, 0.000000e+00
  br i1 %i.ym, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ls, i64 24, i1 false)
  store <2 x float> %.sroa.10181.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17202.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, i64 12, i1 false)
  br label %b3SolveSimplex4.exit.thread

bb.cw:                                            ; preds = %bb.cu, %bb.cr
  %i.yn = fcmp ugt float %i.ug, 0.000000e+00
  %i.yo = fcmp ugt float %i.wa, 0.000000e+00
  %or.cond472.i = select i1 %i.yn, i1 true, i1 %i.yo
  br i1 %or.cond472.i, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  br i1 %.not456.i, label %bb.cy, label %bb.cz, !prof !20, !nosanitize !11

bb.cy:                                            ; preds = %bb.cx
  %17 = ptrtoint ptr %i.e to i64, !nosanitize !11 ; 2 uses
  %18 = add i64 %17, 4, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %17, i64 %18) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.cz:                                            ; preds = %bb.cx
  %i.yp = fcmp ult float %i.xa, 0.000000e+00
  br i1 %i.yp, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.lu, i64 24, i1 false)
  store <2 x float> %.sroa.10136.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17157.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, i64 12, i1 false)
  br label %b3SolveSimplex4.exit.thread

bb.db:                                            ; preds = %bb.cz, %bb.cw
  %i.yq = fcmp ugt float %i.vd, 0.000000e+00
  %i.yr = fcmp ugt float %i.wx, 0.000000e+00
  %or.cond474.i = select i1 %i.yq, i1 true, i1 %i.yr
  br i1 %or.cond474.i, label %bb.dg, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  br i1 %.not457.i, label %bb.dd, label %bb.de, !prof !20, !nosanitize !11

bb.dd:                                            ; preds = %bb.dc
  %19 = ptrtoint ptr %i.f to i64, !nosanitize !11 ; 2 uses
  %20 = add i64 %19, 4, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @82, i64 %19, i64 %20) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.de:                                            ; preds = %bb.dc
  %i.ys = fcmp ult float %i.xx, 0.000000e+00
  br i1 %i.ys, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  store i32 1, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.lw, i64 24, i1 false)
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24.0..sroa_idx.i, i64 12, i1 false)
  br label %b3SolveSimplex4.exit.thread

bb.dg:                                            ; preds = %bb.de, %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  call fastcc void @b3BarycentricCoordsTri(ptr noundef %i.g, <2 x float> %.sroa.10226.0.copyload.i, float %.sroa.17247.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, float %.sroa.17157.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, float %.sroa.17202.0.copyload.i)
  call fastcc void @b3BarycentricCoordsTri(ptr noundef %i.h, <2 x float> %.sroa.10226.0.copyload.i, float %.sroa.17247.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, float %.sroa.17202.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, float %.sroa.17.0.copyload.i)
  call fastcc void @b3BarycentricCoordsTri(ptr noundef %i.i, <2 x float> %.sroa.10226.0.copyload.i, float %.sroa.17247.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, float %.sroa.17.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, float %.sroa.17157.0.copyload.i)
  call fastcc void @b3BarycentricCoordsTri(ptr noundef %i.j, <2 x float> %.sroa.10181.0.copyload.i, float %.sroa.17202.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, float %.sroa.17157.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, float %.sroa.17.0.copyload.i)
  %i.yt = load float, ptr %i.mk, align 8, !tbaa !19 ; 3 uses
  %i.yu = fcmp ugt float %i.yt, 0.000000e+00
  br i1 %i.yu, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.yv = load float, ptr %i.ml, align 4, !tbaa !19
  %i.yw = fcmp ole float %i.yv, 0.000000e+00
  %i.yx = load <2 x float>, ptr %i.a, align 8     ; 3 uses
  %i.yy = extractelement <2 x float> %i.yx, i64 0
  %i.yz = fcmp ogt float %i.yy, 0.000000e+00
  %or.cond476.i = select i1 %i.yw, i1 %i.yz, i1 false
  %i.za = extractelement <2 x float> %i.yx, i64 1
  %i.zb = fcmp ogt float %i.za, 0.000000e+00
  %or.cond478.i = select i1 %or.cond476.i, i1 %i.zb, i1 false
  br i1 %or.cond478.i, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10226.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17247.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10181.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17202.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, i64 12, i1 false), !tbaa.struct !56
  %i.zc = load float, ptr %i.lz, align 8, !tbaa !19 ; 2 uses
  %i.zd = fcmp ugt float %i.zc, 0.000000e+00
  br i1 %i.zd, label %bb.dj, label %b3SolveSimplex4.exit.thread829

bb.dj:                                            ; preds = %bb.di
  %i.ze = insertelement <2 x float> poison, float %i.zc, i64 0
  %i.zf = shufflevector <2 x float> %i.ze, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zg = fdiv <2 x float> %i.yx, %i.zf           ; 2 uses
  %i.zh = extractelement <2 x float> %i.zg, i64 0
  store float %i.zh, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread826

bb.dk:                                            ; preds = %bb.dh, %bb.dg
  %i.zi = load float, ptr %i.mm, align 8, !tbaa !19 ; 3 uses
  %i.zj = fcmp ugt float %i.zi, 0.000000e+00
  br i1 %i.zj, label %bb.dr, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.zk = load float, ptr %i.mn, align 4, !tbaa !19
  %i.zl = fcmp ole float %i.zk, 0.000000e+00
  %i.zm = load float, ptr %i.b, align 4           ; 2 uses
  %i.zn = fcmp ogt float %i.zm, 0.000000e+00
  %or.cond480.i = select i1 %i.zl, i1 %i.zn, i1 false
  br i1 %or.cond480.i, label %bb.dm, label %bb.dr

bb.dm:                                            ; preds = %bb.dl
  br i1 %.not453.i, label %bb.dn, label %bb.do, !prof !20, !nosanitize !11

bb.dn:                                            ; preds = %bb.dm
  %21 = ptrtoint ptr %i.b to i64, !nosanitize !11 ; 2 uses
  %22 = add i64 %21, 4, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @83, i64 %21, i64 %22) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.do:                                            ; preds = %bb.dm
  %i.zo = load float, ptr %i.ma, align 4, !tbaa !19 ; 2 uses
  %i.zp = fcmp ogt float %i.zo, 0.000000e+00
  br i1 %i.zp, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %bb.do
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10226.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17247.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10136.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17157.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24172.i, i64 12, i1 false), !tbaa.struct !56
  %i.zq = load float, ptr %i.mb, align 4, !tbaa !19 ; 2 uses
  %i.zr = fcmp ugt float %i.zq, 0.000000e+00
  br i1 %i.zr, label %bb.dq, label %b3SolveSimplex4.exit.thread829

bb.dq:                                            ; preds = %bb.dp
  %i.zs = insertelement <2 x float> poison, float %i.zm, i64 0
  %i.zt = insertelement <2 x float> %i.zs, float %i.zo, i64 1
  %i.zu = insertelement <2 x float> poison, float %i.zq, i64 0
  %i.zv = shufflevector <2 x float> %i.zu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zw = fdiv <2 x float> %i.zt, %i.zv           ; 2 uses
  %i.zx = extractelement <2 x float> %i.zw, i64 0
  store float %i.zx, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread826

bb.dr:                                            ; preds = %bb.do, %bb.dl, %bb.dk
  %i.zy = load float, ptr %i.mo, align 8, !tbaa !19 ; 3 uses
  %i.zz = fcmp ugt float %i.zy, 0.000000e+00
  br i1 %i.zz, label %bb.dy, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aaa = load float, ptr %i.mp, align 4, !tbaa !19
  %i.aab = fcmp ole float %i.aaa, 0.000000e+00
  %i.aac = load float, ptr %i.c, align 4          ; 2 uses
  %i.aad = fcmp ogt float %i.aac, 0.000000e+00
  %or.cond482.i = select i1 %i.aab, i1 %i.aad, i1 false
  br i1 %or.cond482.i, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %bb.ds
  br i1 %.not454.i, label %bb.du, label %bb.dv, !prof !20, !nosanitize !11

bb.du:                                            ; preds = %bb.dt
  %23 = ptrtoint ptr %i.c to i64, !nosanitize !11 ; 2 uses
  %24 = add i64 %23, 4, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @84, i64 %23, i64 %24) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.dv:                                            ; preds = %bb.dt
  %i.aae = load float, ptr %i.mc, align 4, !tbaa !19 ; 2 uses
  %i.aaf = fcmp ogt float %i.aae, 0.000000e+00
  br i1 %i.aaf, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10226.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17247.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, i64 12, i1 false), !tbaa.struct !56
  %i.aag = load float, ptr %i.md, align 4, !tbaa !19 ; 2 uses
  %i.aah = fcmp ugt float %i.aag, 0.000000e+00
  br i1 %i.aah, label %bb.dx, label %b3SolveSimplex4.exit.thread829

bb.dx:                                            ; preds = %bb.dw
  %i.aai = insertelement <2 x float> poison, float %i.aac, i64 0
  %i.aaj = insertelement <2 x float> %i.aai, float %i.aae, i64 1
  %i.aak = insertelement <2 x float> poison, float %i.aag, i64 0
  %i.aal = shufflevector <2 x float> %i.aak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aam = fdiv <2 x float> %i.aaj, %i.aal        ; 2 uses
  %i.aan = extractelement <2 x float> %i.aam, i64 0
  store float %i.aan, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread826

bb.dy:                                            ; preds = %bb.dv, %bb.ds, %bb.dr
  %i.aao = load float, ptr %i.g, align 16, !tbaa !19 ; 3 uses
  %i.aap = fcmp ugt float %i.aao, 0.000000e+00
  br i1 %i.aap, label %bb.ef, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.aaq = load float, ptr %i.mq, align 8, !tbaa !19
  %i.aar = fcmp ole float %i.aaq, 0.000000e+00
  %i.aas = load float, ptr %i.d, align 4          ; 2 uses
  %i.aat = fcmp ogt float %i.aas, 0.000000e+00
  %or.cond484.i = select i1 %i.aar, i1 %i.aat, i1 false
  br i1 %or.cond484.i, label %bb.ea, label %bb.ef

bb.ea:                                            ; preds = %bb.dz
  br i1 %.not455.i, label %bb.eb, label %bb.ec, !prof !20, !nosanitize !11

bb.eb:                                            ; preds = %bb.ea
  %25 = ptrtoint ptr %i.d to i64, !nosanitize !11 ; 2 uses
  %26 = add i64 %25, 4, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @85, i64 %25, i64 %26) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ec:                                            ; preds = %bb.ea
  %i.aau = load float, ptr %i.me, align 4, !tbaa !19 ; 2 uses
  %i.aav = fcmp ogt float %i.aau, 0.000000e+00
  br i1 %i.aav, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10181.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17202.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10136.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17157.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24172.i, i64 12, i1 false), !tbaa.struct !56
  %i.aaw = load float, ptr %i.mf, align 4, !tbaa !19 ; 2 uses
  %i.aax = fcmp ugt float %i.aaw, 0.000000e+00
  br i1 %i.aax, label %bb.ee, label %b3SolveSimplex4.exit.thread829

bb.ee:                                            ; preds = %bb.ed
  %i.aay = insertelement <2 x float> poison, float %i.aas, i64 0
  %i.aaz = insertelement <2 x float> %i.aay, float %i.aau, i64 1
  %i.aba = insertelement <2 x float> poison, float %i.aaw, i64 0
  %i.abb = shufflevector <2 x float> %i.aba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abc = fdiv <2 x float> %i.aaz, %i.abb        ; 2 uses
  %i.abd = extractelement <2 x float> %i.abc, i64 0
  store float %i.abd, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread826

bb.ef:                                            ; preds = %bb.ec, %bb.dz, %bb.dy
  %i.abe = load float, ptr %i.i, align 16, !tbaa !19 ; 3 uses
  %i.abf = fcmp ole float %i.abe, 0.000000e+00
  %i.abg = load float, ptr %i.j, align 16         ; 3 uses
  %i.abh = fcmp ole float %i.abg, 0.000000e+00
  %or.cond486.not547.i = select i1 %i.abf, i1 %i.abh, i1 false
  %i.abi = load float, ptr %i.e, align 4          ; 2 uses
  %i.abj = fcmp ogt float %i.abi, 0.000000e+00
  %or.cond488.i = select i1 %or.cond486.not547.i, i1 %i.abj, i1 false
  br i1 %or.cond488.i, label %bb.eg, label %bb.el

bb.eg:                                            ; preds = %bb.ef
  br i1 %.not456.i, label %bb.eh, label %bb.ei, !prof !20, !nosanitize !11

bb.eh:                                            ; preds = %bb.eg
  %27 = ptrtoint ptr %i.e to i64, !nosanitize !11 ; 2 uses
  %28 = add i64 %27, 4, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @86, i64 %27, i64 %28) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ei:                                            ; preds = %bb.eg
  %i.abk = load float, ptr %i.mg, align 4, !tbaa !19 ; 2 uses
  %i.abl = fcmp ogt float %i.abk, 0.000000e+00
  br i1 %i.abl, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %bb.ei
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10136.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17157.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24172.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, i64 12, i1 false), !tbaa.struct !56
  %i.abm = load float, ptr %i.mh, align 4, !tbaa !19 ; 2 uses
  %i.abn = fcmp ugt float %i.abm, 0.000000e+00
  br i1 %i.abn, label %bb.ek, label %b3SolveSimplex4.exit.thread829

bb.ek:                                            ; preds = %bb.ej
  %i.abo = insertelement <2 x float> poison, float %i.abi, i64 0
  %i.abp = insertelement <2 x float> %i.abo, float %i.abk, i64 1
  %i.abq = insertelement <2 x float> poison, float %i.abm, i64 0
  %i.abr = shufflevector <2 x float> %i.abq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abs = fdiv <2 x float> %i.abp, %i.abr        ; 2 uses
  %i.abt = extractelement <2 x float> %i.abs, i64 0
  store float %i.abt, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread826

bb.el:                                            ; preds = %bb.ei, %bb.ef
  %i.abu = load float, ptr %i.h, align 16, !tbaa !19 ; 3 uses
  %i.abv = fcmp ugt float %i.abu, 0.000000e+00
  br i1 %i.abv, label %bb.es, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.abw = load float, ptr %i.mr, align 4, !tbaa !19
  %i.abx = fcmp ole float %i.abw, 0.000000e+00
  %i.aby = load float, ptr %i.f, align 4          ; 2 uses
  %i.abz = fcmp ogt float %i.aby, 0.000000e+00
  %or.cond490.i = select i1 %i.abx, i1 %i.abz, i1 false
  br i1 %or.cond490.i, label %bb.en, label %bb.es

bb.en:                                            ; preds = %bb.em
  br i1 %.not457.i, label %bb.eo, label %bb.ep, !prof !20, !nosanitize !11

bb.eo:                                            ; preds = %bb.en
  %29 = ptrtoint ptr %i.f to i64, !nosanitize !11 ; 2 uses
  %30 = add i64 %29, 4, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @87, i64 %29, i64 %30) #8, !nosanitize !11
  unreachable, !nosanitize !11

bb.ep:                                            ; preds = %bb.en
  %i.aca = load float, ptr %i.mi, align 4, !tbaa !19 ; 2 uses
  %i.acb = fcmp ogt float %i.aca, 0.000000e+00
  br i1 %i.acb, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  store i32 2, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10181.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17202.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, i64 12, i1 false), !tbaa.struct !56
  %i.acc = load float, ptr %i.mj, align 4, !tbaa !19 ; 2 uses
  %i.acd = fcmp ugt float %i.acc, 0.000000e+00
  br i1 %i.acd, label %bb.er, label %b3SolveSimplex4.exit.thread829

bb.er:                                            ; preds = %bb.eq
  %i.ace = insertelement <2 x float> poison, float %i.aby, i64 0
  %i.acf = insertelement <2 x float> %i.ace, float %i.aca, i64 1
  %i.acg = insertelement <2 x float> poison, float %i.acc, i64 0
  %i.ach = shufflevector <2 x float> %i.acg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aci = fdiv <2 x float> %i.acf, %i.ach        ; 2 uses
  %i.acj = extractelement <2 x float> %i.aci, i64 0
  store float %i.acj, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread826

bb.es:                                            ; preds = %bb.ep, %bb.em, %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  %i.ack = shufflevector <2 x float> %i.ut, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.acl = insertelement <2 x float> %i.ack, float %i.uu, i64 1
  %i.acm = fmul <2 x float> %i.tw, %i.acl
  %i.acn = shufflevector <2 x float> %i.tw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aco = insertelement <2 x float> %i.acn, float %i.tx, i64 1
  %i.acp = fmul <2 x float> %i.aco, %i.ut
  %i.acq = extractelement <2 x float> %i.ut, i64 0
  %i.acr = fmul float %i.tx, %i.acq
  %i.acs = extractelement <2 x float> %i.tw, i64 0
  %i.act = fmul float %i.acs, %i.uu
  %i.acu = fsub float %i.acr, %i.act
  %i.acv = extractelement <2 x float> %i.tb, i64 1
  %i.acw = fmul float %i.acv, %i.acu
  %i.acx = fsub <2 x float> %i.acm, %i.acp
  %i.acy = insertelement <2 x float> poison, float %i.tc, i64 0
  %i.acz = shufflevector <2 x float> %i.acy, <2 x float> %i.tb, <2 x i32> <i32 0, i32 2>
  %i.ada = fmul <2 x float> %i.acz, %i.acx        ; 2 uses
  %i.adb = extractelement <2 x float> %i.ada, i64 1
  %i.adc = fadd float %i.adb, %i.acw
  %i.add = extractelement <2 x float> %i.ada, i64 0
  %i.ade = fadd float %i.add, %i.adc              ; 2 uses
  %i.adf = fcmp olt float %i.ade, 0.000000e+00
  %i.adg = select i1 %i.adf, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %i.adh = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.adi = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.adj = fmul <4 x float> %i.adh, %i.adi
  %i.adk = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  %i.adl = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10136.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 3, i32 0>
  %i.adm = fmul <4 x float> %i.adk, %i.adl
  %i.adn = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, <4 x i32> <i32 1, i32 3, i32 1, i32 2>
  %i.ado = insertelement <4 x float> poison, float %.sroa.17.0.copyload.i, i64 0
  %i.adp = insertelement <4 x float> %i.ado, float %.sroa.17157.0.copyload.i, i64 1
  %i.adq = insertelement <4 x float> %i.adp, float %.sroa.17202.0.copyload.i, i64 2
  %i.adr = shufflevector <4 x float> %i.adq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.ads = fmul <4 x float> %i.adn, %i.adr
  %i.adt = insertelement <4 x float> poison, float %.sroa.17157.0.copyload.i, i64 0
  %i.adu = insertelement <4 x float> %i.adt, float %.sroa.17.0.copyload.i, i64 1
  %i.adv = shufflevector <4 x float> %i.adu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.adw = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <4 x i32> <i32 1, i32 poison, i32 3, i32 2>
  %i.adx = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ady = shufflevector <4 x float> %i.adw, <4 x float> %i.adx, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.adz = fmul <4 x float> %i.adv, %i.ady
  %i.aea = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10181.0.copyload.i, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %i.aeb = shufflevector <4 x float> %i.aea, <4 x float> %i.adx, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.aec = fmul <4 x float> %i.adv, %i.aeb
  %i.aed = shufflevector <2 x float> %.sroa.10136.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, <4 x i32> <i32 0, i32 2, i32 0, i32 3>
  %i.aee = fmul <4 x float> %i.aed, %i.adr
  %i.aef = fsub <4 x float> %i.ads, %i.adz
  %i.aeg = fsub <4 x float> %i.aec, %i.aee
  %i.aeh = fsub <4 x float> %i.adj, %i.adm
  %i.aei = shufflevector <2 x float> %.sroa.10181.0.copyload.i, <2 x float> %.sroa.10226.0.copyload.i, <4 x i32> <i32 0, i32 2, i32 2, i32 3>
  %i.aej = fmul <4 x float> %i.aei, %i.aef
  %i.aek = shufflevector <2 x float> %.sroa.10181.0.copyload.i, <2 x float> %.sroa.10226.0.copyload.i, <4 x i32> <i32 1, i32 3, i32 3, i32 2>
  %i.ael = fmul <4 x float> %i.aek, %i.aeg
  %i.aem = fadd <4 x float> %i.aej, %i.ael
  %i.aen = insertelement <4 x float> poison, float %.sroa.17202.0.copyload.i, i64 0
  %i.aeo = insertelement <4 x float> %i.aen, float %.sroa.17247.0.copyload.i, i64 1
  %i.aep = shufflevector <4 x float> %i.aeo, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.aeq = fmul <4 x float> %i.aep, %i.aeh
  %i.aer = fadd <4 x float> %i.aeq, %i.aem
  %i.aes = insertelement <4 x float> poison, float %i.adg, i64 0
  %i.aet = shufflevector <4 x float> %i.aes, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aeu = fmul <4 x float> %i.aer, %i.aet        ; 6 uses
  %i.aev = shufflevector <4 x float> %i.aeu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  store <4 x float> %i.aev, ptr %i.k, align 16, !tbaa !19
  br i1 %.not102.i.i, label %bb.et, label %b3BarycentricCoordsTet.exit.i, !prof !20, !nosanitize !11

bb.et:                                            ; preds = %bb.es
  %i.aew = ptrtoint ptr %i.k to i64, !nosanitize !11 ; 2 uses
  %i.aex = add i64 %i.aew, 16, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @89, i64 %i.aew, i64 %i.aex) #8, !nosanitize !11
  unreachable, !nosanitize !11

b3BarycentricCoordsTet.exit.i:                    ; preds = %bb.es
  %i.aey = fmul float %i.ade, %i.adg              ; 2 uses
  %i.aez = extractelement <4 x float> %i.aeu, i64 2
  %i.afa = fcmp olt float %i.aez, 0.000000e+00
  %i.afb = fcmp ogt float %i.aao, 0.000000e+00
  %or.cond492.i = and i1 %i.afa, %i.afb
  br i1 %or.cond492.i, label %bb.eu, label %bb.ex

bb.eu:                                            ; preds = %b3BarycentricCoordsTet.exit.i
  %i.afc = load float, ptr %i.ml, align 4, !tbaa !19 ; 2 uses
  %i.afd = fcmp ogt float %i.afc, 0.000000e+00
  %i.afe = fcmp ogt float %i.zi, 0.000000e+00
  %or.cond494.i = and i1 %i.afe, %i.afd
  br i1 %or.cond494.i, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  store i32 3, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10226.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17247.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10136.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17157.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24172.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lu, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10181.0.copyload.i, ptr %.sroa.10136.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17202.0.copyload.i, ptr %.sroa.17157.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, i64 12, i1 false), !tbaa.struct !56
  %i.aff = load float, ptr %i.mv, align 4, !tbaa !19 ; 4 uses
  %i.afg = fcmp ugt float %i.aff, 0.000000e+00
  br i1 %i.afg, label %bb.ew, label %b3SolveSimplex4.exit

bb.ew:                                            ; preds = %bb.ev
  %i.afh = fdiv float %i.aao, %i.aff              ; 2 uses
  store float %i.afh, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.afi = fdiv float %i.afc, %i.aff
  store float %i.afi, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  %i.afj = fdiv float %i.zi, %i.aff
  store float %i.afj, ptr %.sroa.24172.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread832

bb.ex:                                            ; preds = %bb.eu, %b3BarycentricCoordsTet.exit.i
  %i.afk = extractelement <4 x float> %i.aeu, i64 3
  %i.afl = fcmp olt float %i.afk, 0.000000e+00
  %i.afm = fcmp ogt float %i.abu, 0.000000e+00
  %or.cond496.i = and i1 %i.afl, %i.afm
  br i1 %or.cond496.i, label %bb.ey, label %bb.fb

bb.ey:                                            ; preds = %bb.ex
  %i.afn = load float, ptr %i.mp, align 4, !tbaa !19 ; 2 uses
  %i.afo = fcmp ogt float %i.afn, 0.000000e+00
  %i.afp = fcmp ogt float %i.yt, 0.000000e+00
  %or.cond498.i = and i1 %i.afp, %i.afo
  br i1 %or.cond498.i, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  store i32 3, ptr %i.ba, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0225.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10226.0.copyload.i, ptr %.sroa.10226.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17247.0.copyload.i, ptr %.sroa.17247.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24262.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24262.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0180.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10181.0.copyload.i, ptr %.sroa.10181.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17202.0.copyload.i, ptr %.sroa.17202.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24217.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24217.i, i64 12, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lu, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.093.i, i64 24, i1 false), !tbaa.struct !55
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10136.0..sroa_idx.i, align 8, !tbaa !19
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17157.0..sroa_idx.i, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24172.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24.i, i64 12, i1 false), !tbaa.struct !56
  %i.afq = load float, ptr %i.mu, align 4, !tbaa !19 ; 4 uses
  %i.afr = fcmp ugt float %i.afq, 0.000000e+00
  br i1 %i.afr, label %bb.fa, label %b3SolveSimplex4.exit

bb.fa:                                            ; preds = %bb.ez
  %i.afs = fdiv float %i.abu, %i.afq              ; 2 uses
  store float %i.afs, ptr %.sroa.24262.0..sroa_idx.i, align 4, !tbaa !26
  %i.aft = fdiv float %i.afn, %i.afq
  store float %i.aft, ptr %.sroa.24217.0..sroa_idx.i, align 4, !tbaa !26
  %i.afu = fdiv float %i.yt, %i.afq
  store float %i.afu, ptr %.sroa.24172.0..sroa_idx.i, align 4, !tbaa !26
  br label %b3SolveSimplex4.exit.thread832

bb.fb:                                            ; preds = %bb.ey, %bb.ex
  %i.afv = extractelement <4 x float> %i.aeu, i64 1
  %i.afw = fcmp olt float %i.afv, 0.000000e+00
  %i.afx = fcmp ogt float %i.abe, 0.000000e+00
  %or.cond500.i = and i1 %i.afw, %i.afx
  br i1 %or.cond500.i, label %bb.fc, label %bb.ff

bb.fc:                                            ; preds = %bb.fb
  %i.afy = load float, ptr %i.mn, align 4, !tbaa !19 ; 2 uses
  %i.afz = fcmp ogt float %i.afy, 0.000000e+00
  %i.aga = fcmp ogt float %i.zy, 0.000000e+00
end_hunk_1
begin_hunk_2_@b3TimeOfImpact:bb.a
  store i32 3, ptr %0, align 4, !tbaa !98
  %i.jh = load float, ptr %i.ai, align 4, !tbaa !95 ; 2 uses
  %i.ji = fmul float %i.fm, %i.jh
  %i.jj = load float, ptr %i.aj, align 4, !tbaa !95 ; 2 uses
  %i.jk = fmul float %i.fm, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.jm = fsub <2 x float> %i.ja, %i.jb
  %i.jn = fmul <2 x float> %.sroa.7.0.copyload, %.sroa.0205.0.copyload ; 2 uses
  %i.jo = extractelement <2 x float> %i.jn, i64 0
  %i.jp = fsub float %i.jo, %i.ix
  %i.jq = extractelement <2 x float> %i.jn, i64 1
  %i.jr = fadd float %i.jq, %i.jp                 ; 2 uses
  %i.js = insertelement <2 x float> %i.iy, float %.sroa.2206.0.copyload, i64 0
  %i.jt = fmul <2 x float> %i.cy, %i.js
  %i.ju = fadd <2 x float> %i.jt, %i.jm           ; 3 uses
  %i.jv = fmul <2 x float> %i.cs, %i.ju
  %i.jw = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jx = insertelement <2 x float> %i.jw, float %i.jr, i64 0
  %i.jy = fmul <2 x float> %i.cq, %i.jx
  %i.jz = fsub <2 x float> %i.jv, %i.jy
  %i.ka = fmul float %.sroa.09.0.vec.extract.i.i, %i.jr
  %foldExtExtBinop8953 = fmul <2 x float> %.sroa.5649.0.copyload, %i.ju
  %i.kb = extractelement <2 x float> %foldExtExtBinop8953, i64 1
  %i.kc = fsub float %i.ka, %i.kb
  %i.kd = fmul <2 x float> %i.jz, splat (float 2.000000e+00)
  %i.ke = fadd <2 x float> %.sroa.0205.0.copyload, %i.kd
  %i.kf = fmul float %i.kc, 2.000000e+00
  %i.kg = fadd float %.sroa.2206.0.copyload, %i.kf
  %i.kh = fadd <2 x float> %.sroa.0647.0.copyload, %i.ke
  %i.ki = fadd float %.sroa.4648.0.copyload, %i.kg
  %i.kj = fsub <2 x float> %i.jf, %i.jg
  %i.kk = fmul <2 x float> %.sroa.7.0.copyload, %.sroa.0195.0.copyload ; 2 uses
  %i.kl = extractelement <2 x float> %i.kk, i64 0
  %i.km = fsub float %i.kl, %i.jc
  %i.kn = extractelement <2 x float> %i.kk, i64 1
  %i.ko = fadd float %i.kn, %i.km                 ; 2 uses
  %i.kp = insertelement <2 x float> %i.jd, float %.sroa.2196.0.copyload, i64 0
  %i.kq = fmul <2 x float> %i.cy, %i.kp
  %i.kr = fadd <2 x float> %i.kq, %i.kj           ; 3 uses
  %i.ks = fmul <2 x float> %i.cs, %i.kr
  %i.kt = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ku = insertelement <2 x float> %i.kt, float %i.ko, i64 0
  %i.kv = fmul <2 x float> %i.cq, %i.ku
  %i.kw = fsub <2 x float> %i.ks, %i.kv
  %i.kx = fmul float %.sroa.09.0.vec.extract.i.i, %i.ko
  %foldExtExtBinop8955 = fmul <2 x float> %.sroa.5649.0.copyload, %i.kr
  %i.ky = extractelement <2 x float> %foldExtExtBinop8955, i64 1
  %i.kz = fsub float %i.kx, %i.ky
  %i.la = fmul <2 x float> %i.kw, splat (float 2.000000e+00)
  %i.lb = fadd <2 x float> %.sroa.0195.0.copyload, %i.la
  %i.lc = fmul float %i.kz, 2.000000e+00
  %i.ld = fadd float %.sroa.2196.0.copyload, %i.lc
  %i.le = fadd <2 x float> %.sroa.0647.0.copyload, %i.lb
  %i.lf = fadd float %.sroa.4648.0.copyload, %i.ld
  %i.lg = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = fmul <2 x float> %i.fk, %i.lh
  %i.lj = fadd <2 x float> %i.kh, %i.li
  %i.lk = fadd float %i.ki, %i.ji
  %i.ll = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.lm = shufflevector <2 x float> %i.ll, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ln = fmul <2 x float> %i.fk, %i.lm
  %i.lo = fsub <2 x float> %i.le, %i.ln
  %i.lp = fsub float %i.lf, %i.jk
  %i.lq = fmul float %i.lk, 5.000000e-01
  %i.lr = fmul <2 x float> %i.lj, splat (float 5.000000e-01)
  %i.ls = fmul <2 x float> %i.lo, splat (float 5.000000e-01)
  %i.lt = fadd <2 x float> %i.lr, %i.ls
  %i.lu = fmul float %i.lp, 5.000000e-01
  %i.lv = fadd float %i.lq, %i.lu
  %i.lw = fadd <2 x float> %.sroa.0298.0.copyload, %i.lt
  %i.lx = fadd float %.sroa.10.0.copyload, %i.lv
  store <2 x float> %i.lw, ptr %i.jl, align 4, !tbaa !19
  store float %i.lx, ptr %.sroa.4127.0..sroa_idx, align 4, !tbaa !19
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.fk, ptr %i.ly, align 4, !tbaa !19
  %.sroa.16.0..sroa_idx230 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.fm, ptr %.sroa.16.0..sroa_idx230, align 4, !tbaa !19
  store float %.0, ptr %i.c, align 4, !tbaa !91
  br label %.thread715

bb.l:                                             ; preds = %bb.j
  %i.lz = icmp eq i32 %i.fs, 25
  br i1 %i.lz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ma = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2206.0.copyload
  %i.mb = fmul <2 x float> %i.cs, %.sroa.0205.0.copyload
  %i.mc = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2196.0.copyload
  %i.md = fmul <2 x float> %i.cs, %.sroa.0195.0.copyload
  store i32 1, ptr %0, align 4, !tbaa !98
  store float %.0, ptr %i.c, align 4, !tbaa !91
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.mg = load float, ptr %i.me, align 4, !tbaa !99 ; 2 uses
  %i.mh = fmul float %i.fm, %i.mg
  %i.mi = load float, ptr %i.mf, align 4, !tbaa !100 ; 2 uses
  %i.mj = fmul float %i.fm, %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ml = shufflevector <2 x float> %.sroa.0205.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mm = insertelement <2 x float> %i.ml, float %.sroa.2206.0.copyload, i64 1
  %i.mn = fmul <2 x float> %.sroa.5649.0.copyload, %i.mm
  %i.mo = fsub <2 x float> %i.mn, %i.mb
  %i.mp = fmul <2 x float> %.sroa.7.0.copyload, %.sroa.0205.0.copyload ; 2 uses
  %i.mq = extractelement <2 x float> %i.mp, i64 0
  %i.mr = fsub float %i.mq, %i.ma
  %i.ms = extractelement <2 x float> %i.mp, i64 1
  %i.mt = fadd float %i.ms, %i.mr                 ; 2 uses
  %i.mu = shufflevector <2 x float> %.sroa.0205.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mv = insertelement <2 x float> %i.mu, float %.sroa.2206.0.copyload, i64 0
  %i.mw = fmul <2 x float> %i.cy, %i.mv
  %i.mx = fadd <2 x float> %i.mw, %i.mo           ; 3 uses
  %i.my = fmul <2 x float> %i.cs, %i.mx
  %i.mz = shufflevector <2 x float> %i.mx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.na = insertelement <2 x float> %i.mz, float %i.mt, i64 0
  %i.nb = fmul <2 x float> %i.cq, %i.na
  %i.nc = fsub <2 x float> %i.my, %i.nb
  %i.nd = fmul float %.sroa.09.0.vec.extract.i.i, %i.mt
  %foldExtExtBinop8963 = fmul <2 x float> %.sroa.5649.0.copyload, %i.mx
  %i.ne = extractelement <2 x float> %foldExtExtBinop8963, i64 1
  %i.nf = fsub float %i.nd, %i.ne
  %i.ng = fmul <2 x float> %i.nc, splat (float 2.000000e+00)
  %i.nh = fadd <2 x float> %.sroa.0205.0.copyload, %i.ng
  %i.ni = fmul float %i.nf, 2.000000e+00
  %i.nj = fadd float %.sroa.2206.0.copyload, %i.ni
  %i.nk = fadd <2 x float> %.sroa.0647.0.copyload, %i.nh
  %i.nl = fadd float %.sroa.4648.0.copyload, %i.nj
  %i.nm = shufflevector <2 x float> %.sroa.0195.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.nn = insertelement <2 x float> %i.nm, float %.sroa.2196.0.copyload, i64 1
  %i.no = fmul <2 x float> %.sroa.5649.0.copyload, %i.nn
  %i.np = fsub <2 x float> %i.no, %i.md
  %i.nq = fmul <2 x float> %.sroa.7.0.copyload, %.sroa.0195.0.copyload ; 2 uses
  %i.nr = extractelement <2 x float> %i.nq, i64 0
  %i.ns = fsub float %i.nr, %i.mc
  %i.nt = extractelement <2 x float> %i.nq, i64 1
  %i.nu = fadd float %i.nt, %i.ns                 ; 2 uses
  %i.nv = shufflevector <2 x float> %.sroa.0195.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nw = insertelement <2 x float> %i.nv, float %.sroa.2196.0.copyload, i64 0
  %i.nx = fmul <2 x float> %i.cy, %i.nw
  %i.ny = fadd <2 x float> %i.nx, %i.np           ; 3 uses
  %i.nz = fmul <2 x float> %i.cs, %i.ny
  %i.oa = shufflevector <2 x float> %i.ny, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ob = insertelement <2 x float> %i.oa, float %i.nu, i64 0
  %i.oc = fmul <2 x float> %i.cq, %i.ob
  %i.od = fsub <2 x float> %i.nz, %i.oc
  %i.oe = fmul float %.sroa.09.0.vec.extract.i.i, %i.nu
  %foldExtExtBinop8965 = fmul <2 x float> %.sroa.5649.0.copyload, %i.ny
  %i.of = extractelement <2 x float> %foldExtExtBinop8965, i64 1
  %i.og = fsub float %i.oe, %i.of
  %i.oh = fmul <2 x float> %i.od, splat (float 2.000000e+00)
  %i.oi = fadd <2 x float> %.sroa.0195.0.copyload, %i.oh
  %i.oj = fmul float %i.og, 2.000000e+00
  %i.ok = fadd float %.sroa.2196.0.copyload, %i.oj
  %i.ol = fadd <2 x float> %.sroa.0647.0.copyload, %i.oi
  %i.om = fadd float %.sroa.4648.0.copyload, %i.ok
  %i.on = fadd float %i.nl, %i.mh
  %i.oo = insertelement <2 x float> poison, float %i.mg, i64 0
  %i.op = shufflevector <2 x float> %i.oo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oq = fmul <2 x float> %i.fk, %i.op
  %i.or = fadd <2 x float> %i.nk, %i.oq
  %i.os = insertelement <2 x float> poison, float %i.mi, i64 0
  %i.ot = shufflevector <2 x float> %i.os, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ou = fmul <2 x float> %i.fk, %i.ot
  %i.ov = fsub <2 x float> %i.ol, %i.ou
  %i.ow = fsub float %i.om, %i.mj
  %i.ox = fmul float %i.on, 5.000000e-01
  %i.oy = fmul <2 x float> %i.or, splat (float 5.000000e-01)
  %i.oz = fmul <2 x float> %i.ov, splat (float 5.000000e-01)
  %i.pa = fadd <2 x float> %i.oy, %i.oz
  %i.pb = fmul float %i.ow, 5.000000e-01
  %i.pc = fadd float %i.ox, %i.pb
  %i.pd = fadd <2 x float> %.sroa.0298.0.copyload, %i.pa
  %i.pe = fadd float %.sroa.10.0.copyload, %i.pc
  store <2 x float> %i.pd, ptr %i.mk, align 4, !tbaa !19
  store float %i.pe, ptr %.sroa.487.0..sroa_idx, align 4, !tbaa !19
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.fk, ptr %i.pf, align 4, !tbaa !19
  %.sroa.16.0..sroa_idx232 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.fm, ptr %.sroa.16.0..sroa_idx232, align 4, !tbaa !19
  br label %.thread715

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  %i.pg = load i64, ptr %10, align 8              ; 3 uses
  %i.ph = load i64, ptr %i.ba, align 8            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  store ptr %8, ptr %15, align 8, !tbaa !39, !alias.scope !101
  store ptr %9, ptr %i.bc, align 8, !tbaa !40, !alias.scope !101
  %i.pi = lshr i64 %i.pg, 48
  %i.pj = trunc nuw nsw i64 %i.pi to i32
  %i.pk = lshr i64 %i.pg, 56
  %i.pl = trunc nuw nsw i64 %i.pk to i32
  %i.pm = trunc i64 %i.ph to i32                  ; 3 uses
  %i.pn = lshr i32 %i.pm, 16
  %i.po = lshr i32 %i.pm, 24
  %i.pp = lshr i64 %i.ph, 32
  %i.pq = trunc nuw i64 %i.pp to i32
  %i.pr = lshr i64 %i.pg, 32                      ; 2 uses
  %16 = trunc nuw i64 %i.pr to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.bb, ptr noundef nonnull align 4 dereferenceable(68) %6, i64 68, i1 false), !tbaa.struct !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i8 0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.bd, ptr noundef nonnull align 4 dereferenceable(68) %7, i64 68, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9, !noalias !101
  %i.ps = and i32 %i.pj, 255
  store i32 %i.ps, ptr %i.a, align 4, !tbaa !27, !noalias !101
  store i32 %i.pl, ptr %i.bf, align 4, !tbaa !27, !noalias !101
  %i.pt = and i32 %i.pm, 255
  store i32 %i.pt, ptr %i.bg, align 4, !tbaa !27, !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9, !noalias !101
  %i.pu = and i32 %i.pn, 255
  store i32 %i.pu, ptr %i.b, align 4, !tbaa !27, !noalias !101
  store i32 %i.po, ptr %i.bh, align 4, !tbaa !27, !noalias !101
  %i.pv = and i32 %i.pq, 255
  store i32 %i.pv, ptr %i.bi, align 4, !tbaa !27, !noalias !101
  %17 = and i32 %16, 65535                        ; 2 uses
  %18 = call fastcc i32 @b3UniqueCount(i32 noundef %17, ptr noundef %i.a), !noalias !101 ; 2 uses
  %.sroa.0664.4.extract.trunc = trunc i64 %i.pr to i16
  %i.pw = call fastcc i32 @b3UniqueCount(i32 noundef %17, ptr noundef %i.b), !noalias !101 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9, !noalias !101
  call void @b3GetSweepTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %4, ptr noundef nonnull %6, float noundef %.0), !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9, !noalias !101
  call void @b3GetSweepTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %5, ptr noundef nonnull %7, float noundef %.0), !noalias !101
  %.sroa.0592.0.copyload.i = load <2 x float>, ptr %i.bj, align 4, !tbaa !19, !noalias !101 ; 31 uses
  %.sroa.10599.0.copyload.i = load <2 x float>, ptr %.sroa.10599.0..sroa_idx.i, align 4, !tbaa !19, !noalias !101 ; 24 uses
  %.sroa.0578.0.copyload.i = load <2 x float>, ptr %i.bk, align 4, !tbaa !19, !noalias !101 ; 33 uses
  %.sroa.10585.0.copyload.i = load <2 x float>, ptr %.sroa.10585.0..sroa_idx.i, align 4, !tbaa !19, !noalias !101 ; 25 uses
  %.sroa.0572.0.copyload.i = load <2 x float>, ptr %5, align 8, !noalias !101 ; 2 uses
  %.sroa.2573.0.copyload.i = load float, ptr %.sroa.2573.0..sroa_idx.i, align 8, !noalias !101
  %.sroa.0570.0.copyload.i = load <2 x float>, ptr %4, align 8, !noalias !101 ; 2 uses
  %.sroa.2571.0.copyload.i = load float, ptr %.sroa.2571.0..sroa_idx.i, align 8, !noalias !101
  %foldExtExtBinop8967 = fsub <2 x float> %.sroa.0572.0.copyload.i, %.sroa.0570.0.copyload.i
  %i.px = extractelement <2 x float> %foldExtExtBinop8967, i64 1 ; 4 uses
  %i.py = shufflevector <2 x float> %.sroa.0572.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.pz = insertelement <2 x float> %i.py, float %.sroa.2573.0.copyload.i, i64 0
  %i.qa = shufflevector <2 x float> %.sroa.0570.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.qb = insertelement <2 x float> %i.qa, float %.sroa.2571.0.copyload.i, i64 0
  %i.qc = fsub <2 x float> %i.pz, %i.qb           ; 4 uses
  switch i16 %.sroa.0664.4.extract.trunc, label %b3MakeSeparationFunction.exit [
    i16 1, label %bb.o
    i16 2, label %bb.p
    i16 3, label %bb.aq
  ]

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.be, align 8, !tbaa !41, !alias.scope !101
  store <2 x float> %i.fk, ptr %i.bn, align 8, !tbaa !19, !alias.scope !101
  store float %i.fm, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !19, !alias.scope !101
  br label %b3MakeSeparationFunction.exit

bb.p:                                             ; preds = %bb.n
  %i.qd = icmp eq i32 %18, 2
  %i.qe = icmp eq i32 %i.pw, 2
  %or.cond.i = select i1 %i.qd, i1 %i.qe, i1 false
  br i1 %or.cond.i, label %bb.q, label %bb.ap

bb.q:                                             ; preds = %bb.p
  %i.qf = load ptr, ptr %8, align 8, !tbaa !18, !noalias !101 ; 4 uses
  %i.qg = load i32, ptr %i.a, align 4, !tbaa !27, !noalias !101 ; 2 uses
  %i.qh = sext i32 %i.qg to i64                   ; 2 uses
  %i.qi = getelementptr inbounds [12 x i8], ptr %i.qf, i64 %i.qh ; 3 uses
  %i.qj = mul nsw i64 %i.qh, 12
  %i.qk = ptrtoint ptr %i.qf to i64, !nosanitize !11 ; 6 uses
  %i.ql = add i64 %i.qj, %i.qk, !nosanitize !11   ; 3 uses
  %i.qm = icmp ne ptr %i.qf, null, !nosanitize !11 ; 2 uses
  %i.qn = icmp eq i64 %i.ql, 0
  %i.qo = xor i1 %i.qm, %i.qn
  %i.qp = icmp uge i64 %i.ql, %i.qk, !nosanitize !11
  %i.qq = icmp slt i32 %i.qg, 0
  %i.qr = xor i1 %i.qq, %i.qp
  %i.qs = and i1 %i.qo, %i.qr, !nosanitize !11
  br i1 %i.qs, label %bb.s, label %bb.r, !prof !12, !nosanitize !11

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @112, i64 %i.qk, i64 %i.ql) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.s:                                             ; preds = %bb.q
  %i.qt = ptrtoint ptr %i.qi to i64, !nosanitize !11 ; 2 uses
  %i.qu = and i64 %i.qt, 3, !nosanitize !11
  %i.qv = icmp eq i64 %i.qu, 0, !nosanitize !11
  %i.qw = and i1 %i.qm, %i.qv
  br i1 %i.qw, label %bb.u, label %bb.t, !prof !12, !nosanitize !11

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @113, i64 %i.qt) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.u:                                             ; preds = %bb.s
  %.sroa.0563.0.copyload.i = load <2 x float>, ptr %i.qi, align 4, !tbaa !19, !noalias !101 ; 5 uses
  %.sroa.5565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %.sroa.5565.0.copyload.i = load float, ptr %.sroa.5565.0..sroa_idx.i, align 4, !tbaa !19, !noalias !101 ; 3 uses
  br i1 %.not714.i, label %bb.v, label %bb.w, !prof !20, !nosanitize !11

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @114, i64 -4, i64 0) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.w:                                             ; preds = %bb.u
  %i.qx = load i32, ptr %i.bf, align 4, !tbaa !27, !noalias !101 ; 2 uses
  %i.qy = sext i32 %i.qx to i64                   ; 2 uses
  %i.qz = mul nsw i64 %i.qy, 12
  %i.ra = add i64 %i.qz, %i.qk, !nosanitize !11   ; 3 uses
  %i.rb = icmp ne i64 %i.ra, 0
  %i.rc = icmp uge i64 %i.ra, %i.qk, !nosanitize !11
  %i.rd = icmp slt i32 %i.qx, 0
  %i.re = xor i1 %i.rd, %i.rc
  %i.rf = and i1 %i.rb, %i.re, !nosanitize !11
  br i1 %i.rf, label %bb.y, label %bb.x, !prof !12, !nosanitize !11

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @115, i64 %i.qk, i64 %i.ra) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.y:                                             ; preds = %bb.w
  %i.rg = getelementptr inbounds [12 x i8], ptr %i.qf, i64 %i.qy ; 2 uses
  %.sroa.0557.0.copyload.i = load <2 x float>, ptr %i.rg, align 4, !noalias !101
  %.sroa.2558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %.sroa.2558.0.copyload.i = load float, ptr %.sroa.2558.0..sroa_idx.i, align 4, !noalias !101
  %i.rh = fsub <2 x float> %.sroa.0557.0.copyload.i, %.sroa.0563.0.copyload.i ; 3 uses
  %i.ri = fsub float %.sroa.2558.0.copyload.i, %.sroa.5565.0.copyload.i ; 3 uses
  %i.rj = fmul <2 x float> %i.rh, %i.rh           ; 2 uses
  %shift8969 = shufflevector <2 x float> %i.rj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop8970 = fadd <2 x float> %i.rj, %shift8969
  %i.rk = extractelement <2 x float> %foldExtExtBinop8970, i64 0
  %i.rl = fmul float %i.ri, %i.ri
  %i.rm = fadd float %i.rl, %i.rk                 ; 2 uses
  %i.rn = fcmp ogt float %i.rm, f0x057A0000
  br i1 %i.rn, label %bb.z, label %b3Normalize.exit779.i

bb.z:                                             ; preds = %bb.y
  %sqrt.i = call float @llvm.sqrt.f32(float %i.rm)
  %i.ro = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.rp = insertelement <2 x float> poison, float %i.ro, i64 0
  %i.rq = shufflevector <2 x float> %i.rp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rr = fmul <2 x float> %i.rh, %i.rq
  %i.rs = fmul float %i.ri, %i.ro
  br label %b3Normalize.exit779.i

b3Normalize.exit779.i:                            ; preds = %bb.z, %bb.y
  %.sroa.07.0.i773.i = phi <2 x float> [ %i.rr, %bb.z ], [ zeroinitializer, %bb.y ] ; 10 uses
  %.sroa.5.0.i774.i = phi float [ %i.rs, %bb.z ], [ 0.000000e+00, %bb.y ] ; 9 uses
  %.sroa.09.4.vec.extract13.i.i.i = extractelement <2 x float> %.sroa.0592.0.copyload.i, i64 1 ; 2 uses
  %i.rt = shufflevector <2 x float> %.sroa.07.0.i773.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.07.0.i773.i, i64 0
  %i.ru = fmul float %.sroa.09.4.vec.extract13.i.i.i, %.sroa.5.0.i774.i
  %foldExtExtBinop8972 = fmul <2 x float> %.sroa.10599.0.copyload.i, %.sroa.07.0.i773.i
  %i.rv = shufflevector <2 x float> %.sroa.10599.0.copyload.i, <2 x float> %.sroa.0592.0.copyload.i, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.rw = insertelement <2 x float> %i.rt, float %.sroa.5.0.i774.i, i64 1 ; 2 uses
  %i.rx = fmul <2 x float> %i.rv, %i.rw
  %i.ry = insertelement <2 x float> poison, float %i.ru, i64 0
  %i.rz = shufflevector <2 x float> %i.ry, <2 x float> %foldExtExtBinop8972, <2 x i32> <i32 0, i32 2>
  %i.sa = fsub <2 x float> %i.rz, %i.rx           ; 2 uses
  %i.sb = fmul <2 x float> %.sroa.0592.0.copyload.i, %i.rt ; 2 uses
  %shift8974 = shufflevector <2 x float> %i.sb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop8975 = fsub <2 x float> %i.sb, %shift8974
  %i.sc = shufflevector <2 x float> %.sroa.10599.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.sd = fmul <2 x float> %i.sc, %.sroa.07.0.i773.i
  %i.se = insertelement <2 x float> %i.rt, float %.sroa.5.0.i774.i, i64 0
  %i.sf = fmul <2 x float> %i.sc, %i.se
  %i.sg = fadd <2 x float> %i.sd, %i.sa           ; 2 uses
  %i.sh = shufflevector <2 x float> %i.sa, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.si = shufflevector <2 x float> %foldExtExtBinop8975, <2 x float> %i.sh, <2 x i32> <i32 0, i32 3>
  %i.sj = fadd <2 x float> %i.sf, %i.si           ; 2 uses
  %i.sk = extractelement <2 x float> %i.sj, i64 0
  %i.sl = fmul float %.sroa.09.4.vec.extract13.i.i.i, %i.sk
  %shift8977 = shufflevector <2 x float> %i.sg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop8978 = fmul <2 x float> %.sroa.10599.0.copyload.i, %shift8977
  %i.sm = extractelement <2 x float> %foldExtExtBinop8978, i64 0
  %i.sn = fsub float %i.sl, %i.sm
  %i.so = fmul <2 x float> %i.rv, %i.sg
  %i.sp = fmul <2 x float> %.sroa.0592.0.copyload.i, %i.sj
  %i.sq = fsub <2 x float> %i.so, %i.sp
  %i.sr = fmul float %i.sn, 2.000000e+00
  %i.ss = fadd float %.sroa.0.0.vec.extract.i.i.i, %i.sr ; 2 uses
  %i.st = fmul <2 x float> %i.sq, splat (float 2.000000e+00)
  %i.su = fadd <2 x float> %i.rw, %i.st           ; 3 uses
  %i.sv = load ptr, ptr %9, align 8, !tbaa !18, !noalias !101 ; 4 uses
  %i.sw = load i32, ptr %i.b, align 4, !tbaa !27, !noalias !101 ; 2 uses
  %i.sx = sext i32 %i.sw to i64                   ; 2 uses
  %i.sy = getelementptr inbounds [12 x i8], ptr %i.sv, i64 %i.sx ; 3 uses
  %i.sz = mul nsw i64 %i.sx, 12
  %i.ta = ptrtoint ptr %i.sv to i64, !nosanitize !11 ; 6 uses
  %i.tb = add i64 %i.sz, %i.ta, !nosanitize !11   ; 3 uses
  %i.tc = icmp ne ptr %i.sv, null, !nosanitize !11 ; 2 uses
  %i.td = icmp eq i64 %i.tb, 0
  %i.te = xor i1 %i.tc, %i.td
  %i.tf = icmp uge i64 %i.tb, %i.ta, !nosanitize !11
  %i.tg = icmp slt i32 %i.sw, 0
  %i.th = xor i1 %i.tg, %i.tf
  %i.ti = and i1 %i.te, %i.th, !nosanitize !11
  br i1 %i.ti, label %bb.ab, label %bb.aa, !prof !12, !nosanitize !11

bb.aa:                                            ; preds = %b3Normalize.exit779.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @116, i64 %i.ta, i64 %i.tb) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.ab:                                            ; preds = %b3Normalize.exit779.i
  %i.tj = ptrtoint ptr %i.sy to i64, !nosanitize !11 ; 2 uses
  %i.tk = and i64 %i.tj, 3, !nosanitize !11
  %i.tl = icmp eq i64 %i.tk, 0, !nosanitize !11
  %i.tm = and i1 %i.tc, %i.tl
  br i1 %i.tm, label %bb.ad, label %bb.ac, !prof !12, !nosanitize !11

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @117, i64 %i.tj) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.ad:                                            ; preds = %bb.ab
  %.sroa.0532.0.copyload.i = load <2 x float>, ptr %i.sy, align 4, !tbaa !19, !noalias !101 ; 5 uses
  %.sroa.5534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %.sroa.5534.0.copyload.i = load float, ptr %.sroa.5534.0..sroa_idx.i, align 4, !tbaa !19, !noalias !101 ; 3 uses
  br i1 %.not716.i, label %bb.ae, label %bb.af, !prof !20, !nosanitize !11

bb.ae:                                            ; preds = %bb.ad
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @118, i64 -4, i64 0) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.af:                                            ; preds = %bb.ad
  %i.tn = load i32, ptr %i.bh, align 4, !tbaa !27, !noalias !101 ; 2 uses
  %i.to = sext i32 %i.tn to i64                   ; 2 uses
  %i.tp = mul nsw i64 %i.to, 12
  %i.tq = add i64 %i.tp, %i.ta, !nosanitize !11   ; 3 uses
  %i.tr = icmp ne i64 %i.tq, 0
  %i.ts = icmp uge i64 %i.tq, %i.ta, !nosanitize !11
  %i.tt = icmp slt i32 %i.tn, 0
  %i.tu = xor i1 %i.tt, %i.ts
  %i.tv = and i1 %i.tr, %i.tu, !nosanitize !11
  br i1 %i.tv, label %bb.ah, label %bb.ag, !prof !12, !nosanitize !11

bb.ag:                                            ; preds = %bb.af
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @119, i64 %i.ta, i64 %i.tq) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.ah:                                            ; preds = %bb.af
  %i.tw = getelementptr inbounds [12 x i8], ptr %i.sv, i64 %i.to ; 2 uses
  %.sroa.0526.0.copyload.i = load <2 x float>, ptr %i.tw, align 4, !noalias !101
  %.sroa.2527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %.sroa.2527.0.copyload.i = load float, ptr %.sroa.2527.0..sroa_idx.i, align 4, !noalias !101
  %i.tx = fsub <2 x float> %.sroa.0526.0.copyload.i, %.sroa.0532.0.copyload.i ; 3 uses
  %i.ty = fsub float %.sroa.2527.0.copyload.i, %.sroa.5534.0.copyload.i ; 3 uses
  %i.tz = fmul <2 x float> %i.tx, %i.tx           ; 2 uses
  %shift8980 = shufflevector <2 x float> %i.tz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop8981 = fadd <2 x float> %i.tz, %shift8980
  %i.ua = extractelement <2 x float> %foldExtExtBinop8981, i64 0
  %i.ub = fmul float %i.ty, %i.ty
  %i.uc = fadd float %i.ub, %i.ua                 ; 2 uses
  %i.ud = fcmp ogt float %i.uc, f0x057A0000
  br i1 %i.ud, label %bb.ai, label %b3Normalize.exit771.i

bb.ai:                                            ; preds = %bb.ah
  %sqrt1312.i = call float @llvm.sqrt.f32(float %i.uc)
end_hunk_2
begin_hunk_3_@b3TimeOfImpact:bb.a
  %i.wj = fmul <2 x float> %i.us, %.sroa.0532.0.copyload.i
  %i.wk = fmul <2 x float> %i.us, %i.wf
  %i.wl = shufflevector <2 x float> %.sroa.0592.0.copyload.i, <2 x float> %.sroa.10599.0.copyload.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.wm = shufflevector <2 x float> %.sroa.0563.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.wn = insertelement <2 x float> %i.wm, float %.sroa.5565.0.copyload.i, i64 0 ; 3 uses
  %i.wo = fmul <2 x float> %i.wl, %i.wn
  %i.wp = insertelement <2 x float> %i.wm, float %.sroa.5565.0.copyload.i, i64 1 ; 2 uses
  %i.wq = fmul <2 x float> %i.rv, %i.wp
  %i.wr = fmul <2 x float> %i.rv, %.sroa.0563.0.copyload.i
  %i.ws = fmul <2 x float> %.sroa.0592.0.copyload.i, %i.wn
  %i.wt = fmul <2 x float> %i.sc, %.sroa.0563.0.copyload.i
  %i.wu = fmul <2 x float> %i.sc, %i.wp
  %i.wv = extractelement <2 x float> %i.vs, i64 1
  %i.ww = fsub <2 x float> %i.we, %i.wg
  %i.wx = fsub <2 x float> %i.wh, %i.wi
  %i.wy = fadd <2 x float> %i.wj, %i.ww           ; 2 uses
  %i.wz = fadd <2 x float> %i.wk, %i.wx           ; 2 uses
  %i.xa = fmul <2 x float> %.sroa.0578.0.copyload.i, %i.wz
  %i.xb = fmul <2 x float> %i.vd, %i.wy
  %i.xc = fsub <2 x float> %i.xa, %i.xb
  %i.xd = fmul <2 x float> %i.xc, splat (float 2.000000e+00)
  %i.xe = fadd <2 x float> %i.wd, %i.xd
  %i.xf = fsub <2 x float> %i.wo, %i.wq
  %i.xg = fsub <2 x float> %i.wr, %i.ws
  %i.xh = fadd <2 x float> %i.wt, %i.xf           ; 2 uses
  %i.xi = fadd <2 x float> %i.wu, %i.xg           ; 2 uses
  %i.xj = fmul <2 x float> %.sroa.0592.0.copyload.i, %i.xi
  %i.xk = fmul <2 x float> %i.wl, %i.xh
  %i.xl = fsub <2 x float> %i.xj, %i.xk
  %i.xm = shufflevector <2 x float> %.sroa.10585.0.copyload.i, <2 x float> %.sroa.10599.0.copyload.i, <2 x i32> <i32 0, i32 2>
  %i.xn = shufflevector <2 x float> %i.wy, <2 x float> %i.xh, <2 x i32> <i32 0, i32 2>
  %i.xo = fmul <2 x float> %i.xm, %i.xn
  %i.xp = shufflevector <2 x float> %.sroa.0578.0.copyload.i, <2 x float> %.sroa.0592.0.copyload.i, <2 x i32> <i32 0, i32 2>
  %i.xq = shufflevector <2 x float> %i.wz, <2 x float> %i.xi, <2 x i32> <i32 1, i32 3>
  %i.xr = fmul <2 x float> %i.xp, %i.xq
  %i.xs = fsub <2 x float> %i.xo, %i.xr
  %i.xt = fmul <2 x float> %i.xs, splat (float 2.000000e+00)
  %i.xu = shufflevector <2 x float> %.sroa.0532.0.copyload.i, <2 x float> %.sroa.0563.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.xv = fadd <2 x float> %i.xu, %i.xt           ; 2 uses
  %i.xw = fmul <2 x float> %i.xl, splat (float 2.000000e+00)
  %i.xx = fadd <2 x float> %i.wn, %i.xw
  %shift8995 = shufflevector <2 x float> %i.xv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop8996 = fsub <2 x float> %i.xv, %shift8995
  %i.xy = extractelement <2 x float> %foldExtExtBinop8996, i64 0
  %i.xz = fsub <2 x float> %i.xe, %i.xx
  %i.ya = fadd float %i.px, %i.xy
  %i.yb = fadd <2 x float> %i.qc, %i.xz
  %i.yc = fmul float %i.ya, %i.wv
  %i.yd = shufflevector <2 x float> %i.vs, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ye = insertelement <2 x float> %i.yd, float %i.vw, i64 0
  %i.yf = fmul <2 x float> %i.yb, %i.ye           ; 2 uses
  %i.yg = extractelement <2 x float> %i.yf, i64 1
  %i.yh = fadd float %i.yg, %i.yc
  %i.yi = extractelement <2 x float> %i.yf, i64 0
  %i.yj = fadd float %i.yi, %i.yh
  %i.yk = fcmp olt float %i.yj, 0.000000e+00
  br i1 %i.yk, label %bb.al, label %b3GetFinalSweepTransform.exit885.i

bb.al:                                            ; preds = %bb.ak
  %i.yl = fneg <2 x float> %i.vs
  %i.ym = fneg float %i.vw
  %i.yn = fneg <2 x float> %.sroa.07.0.i765.i
  %i.yo = fneg float %.sroa.5.0.i766.i
  br label %b3GetFinalSweepTransform.exit885.i

b3GetFinalSweepTransform.exit885.i:               ; preds = %bb.al, %bb.ak
  %.sroa.0498.0.i = phi <2 x float> [ %i.yl, %bb.al ], [ %i.vs, %bb.ak ] ; 5 uses
  %.sroa.9503.0.i = phi float [ %i.ym, %bb.al ], [ %i.vw, %bb.ak ] ; 4 uses
  %.sroa.10.0.i = phi float [ %i.yo, %bb.al ], [ %.sroa.5.0.i766.i, %bb.ak ] ; 4 uses
  %i.yp = phi <2 x float> [ %i.yn, %bb.al ], [ %.sroa.07.0.i765.i, %bb.ak ] ; 5 uses
  %.sroa.71262.12.copyload.i = load <2 x float>, ptr %.sroa.71250.12..sroa_idx.i, align 4, !tbaa !19, !noalias !101 ; 7 uses
  %.sroa.41260.12.copyload.i = load <2 x float>, ptr %i.bl, align 4, !tbaa !19, !noalias !101 ; 8 uses
  %.sroa.09.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.41260.12.copyload.i, i64 0
  %.sroa.41254.12.copyload.i = load <2 x float>, ptr %i.bm, align 4, !tbaa !19, !noalias !101 ; 6 uses
  %.sroa.71256.12.copyload.i = load <2 x float>, ptr %.sroa.7.12..sroa_idx.i, align 4, !tbaa !19, !noalias !101 ; 3 uses
  %foldExtExtBinop8998 = fmul <2 x float> %.sroa.07.0.i773.i, %.sroa.71262.12.copyload.i
  %i.yq = fmul float %.sroa.5.0.i774.i, %.sroa.09.0.vec.extract.i.i.i.i
  %i.yr = shufflevector <2 x float> %.sroa.41260.12.copyload.i, <2 x float> %.sroa.07.0.i773.i, <2 x i32> <i32 1, i32 3>
  %i.ys = shufflevector <2 x float> %.sroa.41260.12.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.yt = insertelement <2 x float> %i.ys, float %.sroa.5.0.i774.i, i64 0
  %i.yu = fmul <2 x float> %i.yr, %i.yt           ; 2 uses
  %i.yv = shufflevector <2 x float> %.sroa.41260.12.copyload.i, <2 x float> %.sroa.71262.12.copyload.i, <2 x i32> <i32 1, i32 2>
  %i.yw = fmul <2 x float> %.sroa.07.0.i773.i, %i.yv ; 2 uses
  %i.yx = shufflevector <2 x float> %i.yw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yy = fsub <2 x float> %i.yu, %i.yx
  %i.yz = shufflevector <2 x float> %i.yu, <2 x float> %foldExtExtBinop8998, <2 x i32> <i32 1, i32 2>
  %i.za = insertelement <2 x float> %i.yw, float %i.yq, i64 1
  %i.zb = fsub <2 x float> %i.yz, %i.za
  %i.zc = insertelement <2 x float> %.sroa.07.0.i773.i, float %.sroa.5.0.i774.i, i64 1
  %i.zd = shufflevector <2 x float> %.sroa.71262.12.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ze = fmul <2 x float> %i.zc, %i.zd
  %i.zf = shufflevector <2 x float> %.sroa.71262.12.copyload.i, <2 x float> %.sroa.07.0.i773.i, <2 x i32> <i32 1, i32 3>
  %i.zg = insertelement <2 x float> %.sroa.71262.12.copyload.i, float %.sroa.5.0.i774.i, i64 0
  %i.zh = fmul <2 x float> %i.zf, %i.zg
  %i.zi = fadd <2 x float> %i.ze, %i.yy           ; 2 uses
  %i.zj = fadd <2 x float> %i.zh, %i.zb           ; 2 uses
  %i.zk = shufflevector <2 x float> %.sroa.71262.12.copyload.i, <2 x float> %.sroa.41260.12.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.zl = fmul <2 x float> %i.zk, %i.zi
  %i.zm = shufflevector <2 x float> %.sroa.41260.12.copyload.i, <2 x float> %.sroa.71262.12.copyload.i, <2 x i32> <i32 0, i32 2>
  %i.zn = fmul <2 x float> %i.zm, %i.zj
  %i.zo = fsub <2 x float> %i.zl, %i.zn
  %i.zp = fmul <2 x float> %i.zo, splat (float 2.000000e+00)
  %i.zq = fadd <2 x float> %i.rt, %i.zp           ; 3 uses
  %i.zr = shufflevector <2 x float> %i.yp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.zs = insertelement <2 x float> %i.zr, float %.sroa.10.0.i, i64 1 ; 2 uses
  %i.zt = fmul <2 x float> %i.zs, %.sroa.41254.12.copyload.i
  %i.zu = shufflevector <2 x float> %.sroa.71256.12.copyload.i, <2 x float> %.sroa.41254.12.copyload.i, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.zv = fmul <2 x float> %i.yp, %i.zu
  %i.zw = shufflevector <2 x float> %.sroa.41254.12.copyload.i, <2 x float> %.sroa.71256.12.copyload.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.zx = fmul <2 x float> %i.yp, %i.zw
  %i.zy = insertelement <2 x float> %i.zr, float %.sroa.10.0.i, i64 0 ; 2 uses
  %i.zz = fmul <2 x float> %i.zy, %.sroa.41254.12.copyload.i
  %i.aaa = fsub <2 x float> %i.zt, %i.zx
  %i.aab = fsub <2 x float> %i.zv, %i.zz
  %i.aac = shufflevector <2 x float> %.sroa.71256.12.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aad = fmul <2 x float> %i.zy, %i.aac
  %i.aae = fmul <2 x float> %i.zs, %i.aac
  %i.aaf = fadd <2 x float> %i.aad, %i.aaa        ; 2 uses
  %i.aag = fadd <2 x float> %i.aae, %i.aab        ; 2 uses
  %i.aah = fmul <2 x float> %i.zw, %i.aaf
  %i.aai = fmul <2 x float> %i.zu, %i.aag
  %i.aaj = fsub <2 x float> %i.aah, %i.aai
  %i.aak = fmul <2 x float> %i.aaj, splat (float 2.000000e+00)
  %i.aal = fadd <2 x float> %i.yp, %i.aak         ; 3 uses
  %i.aam = shufflevector <2 x float> %.sroa.41254.12.copyload.i, <2 x float> %.sroa.41260.12.copyload.i, <2 x i32> <i32 0, i32 2>
  %i.aan = shufflevector <2 x float> %i.aag, <2 x float> %i.zj, <2 x i32> <i32 0, i32 3>
  %i.aao = fmul <2 x float> %i.aam, %i.aan
  %i.aap = shufflevector <2 x float> %.sroa.41254.12.copyload.i, <2 x float> %.sroa.41260.12.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.aaq = shufflevector <2 x float> %i.aaf, <2 x float> %i.zi, <2 x i32> <i32 1, i32 2>
  %i.aar = fmul <2 x float> %i.aap, %i.aaq
  %i.aas = fsub <2 x float> %i.aao, %i.aar
  %i.aat = fmul <2 x float> %i.aas, splat (float 2.000000e+00)
  %i.aau = insertelement <2 x float> poison, float %.sroa.10.0.i, i64 0
  %i.aav = insertelement <2 x float> %i.aau, float %.sroa.5.0.i774.i, i64 1
  %i.aaw = fadd <2 x float> %i.aav, %i.aat        ; 3 uses
  %i.aax = shufflevector <2 x float> %i.zq, <2 x float> %i.aal, <2 x i32> <i32 0, i32 3>
  %i.aay = fmul <2 x float> %i.aax, %i.aaw        ; 2 uses
  %shift9000 = shufflevector <2 x float> %i.aay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9001 = fsub <2 x float> %i.aay, %shift9000
  %shift9003 = shufflevector <2 x float> %i.aaw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9004 = fmul <2 x float> %shift9003, %i.aal
  %shift9006 = shufflevector <2 x float> %i.zq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9007 = fmul <2 x float> %shift9006, %i.aaw
  %foldExtExtBinop9009 = fsub <2 x float> %foldExtExtBinop9004, %foldExtExtBinop9007
  %i.aaz = fmul <2 x float> %i.zq, %i.aal         ; 2 uses
  %shift9011 = shufflevector <2 x float> %i.aaz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9012 = fsub <2 x float> %shift9011, %i.aaz
  %i.aba = extractelement <2 x float> %foldExtExtBinop9012, i64 0
  %foldExtExtBinop9014 = fmul <2 x float> %.sroa.0498.0.i, %foldExtExtBinop9001
  %shift9016 = shufflevector <2 x float> %.sroa.0498.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9017 = fmul <2 x float> %shift9016, %foldExtExtBinop9009
  %foldExtExtBinop9019 = fadd <2 x float> %foldExtExtBinop9014, %foldExtExtBinop9017
  %i.abb = extractelement <2 x float> %foldExtExtBinop9019, i64 0
  %i.abc = fmul float %.sroa.9503.0.i, %i.aba
  %i.abd = fadd float %i.abc, %i.abb
  %i.abe = fcmp olt float %i.abd, 0.000000e+00
  br i1 %i.abe, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %b3GetFinalSweepTransform.exit885.i
  store i32 1, ptr %i.be, align 8, !tbaa !41, !alias.scope !101
  %i.abf = fmul <2 x float> %.sroa.0498.0.i, %.sroa.0498.0.i ; 2 uses
  %shift9021 = shufflevector <2 x float> %i.abf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9022 = fadd <2 x float> %i.abf, %shift9021
  %i.abg = extractelement <2 x float> %foldExtExtBinop9022, i64 0
  %i.abh = fmul float %.sroa.9503.0.i, %.sroa.9503.0.i
  %i.abi = fadd float %i.abh, %i.abg              ; 2 uses
  %i.abj = fcmp ogt float %i.abi, f0x057A0000
  br i1 %i.abj, label %bb.an, label %b3Normalize.exit763.i

bb.an:                                            ; preds = %bb.am
  %sqrt1313.i = call float @llvm.sqrt.f32(float %i.abi)
  %i.abk = fdiv float 1.000000e+00, %sqrt1313.i   ; 2 uses
  %i.abl = insertelement <2 x float> poison, float %i.abk, i64 0
  %i.abm = shufflevector <2 x float> %i.abl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abn = fmul <2 x float> %.sroa.0498.0.i, %i.abm
  %i.abo = fmul float %.sroa.9503.0.i, %i.abk
  br label %b3Normalize.exit763.i

b3Normalize.exit763.i:                            ; preds = %bb.an, %bb.am
  %.sroa.07.0.i757.i = phi <2 x float> [ %i.abn, %bb.an ], [ zeroinitializer, %bb.am ]
  %.sroa.5.0.i758.i = phi float [ %i.abo, %bb.an ], [ 0.000000e+00, %bb.am ]
  store <2 x float> %.sroa.07.0.i757.i, ptr %i.bn, align 8, !tbaa !19, !alias.scope !101
  store float %.sroa.5.0.i758.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !19, !alias.scope !101
  br label %b3MakeSeparationFunction.exit

bb.ao:                                            ; preds = %b3GetFinalSweepTransform.exit885.i
  store i32 2, ptr %i.be, align 8, !tbaa !41, !alias.scope !101
  store <2 x float> %.sroa.07.0.i773.i, ptr %i.bn, align 8, !tbaa !19, !alias.scope !101
  store float %.sroa.5.0.i774.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !19, !alias.scope !101
  store <2 x float> %i.yp, ptr %i.bo, align 4, !tbaa !19, !alias.scope !101
  store float %.sroa.10.0.i, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !19, !alias.scope !101
  br label %b3MakeSeparationFunction.exit

bb.ap:                                            ; preds = %bb.p
  store i32 1, ptr %i.be, align 8, !tbaa !41, !alias.scope !101
  store <2 x float> %i.fk, ptr %i.bn, align 8, !tbaa !19, !alias.scope !101
  store float %i.fm, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !19, !alias.scope !101
  br label %b3MakeSeparationFunction.exit

bb.aq:                                            ; preds = %bb.n
  %i.abp = icmp eq i32 %18, 3
  br i1 %i.abp, label %bb.ar, label %bb.bn

bb.ar:                                            ; preds = %bb.aq
  %i.abq = load ptr, ptr %8, align 8, !tbaa !18, !noalias !101 ; 5 uses
  %i.abr = load i32, ptr %i.a, align 4, !tbaa !27, !noalias !101 ; 2 uses
  %i.abs = sext i32 %i.abr to i64                 ; 2 uses
  %i.abt = getelementptr inbounds [12 x i8], ptr %i.abq, i64 %i.abs ; 3 uses
  %i.abu = mul nsw i64 %i.abs, 12
  %i.abv = ptrtoint ptr %i.abq to i64, !nosanitize !11 ; 9 uses
  %i.abw = add i64 %i.abu, %i.abv, !nosanitize !11 ; 3 uses
  %i.abx = icmp ne ptr %i.abq, null, !nosanitize !11 ; 2 uses
  %i.aby = icmp eq i64 %i.abw, 0
  %i.abz = xor i1 %i.abx, %i.aby
  %i.aca = icmp uge i64 %i.abw, %i.abv, !nosanitize !11
  %i.acb = icmp slt i32 %i.abr, 0
  %i.acc = xor i1 %i.acb, %i.aca
  %i.acd = and i1 %i.abz, %i.acc, !nosanitize !11
  br i1 %i.acd, label %bb.at, label %bb.as, !prof !12, !nosanitize !11

bb.as:                                            ; preds = %bb.ar
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @120, i64 %i.abv, i64 %i.abw) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.at:                                            ; preds = %bb.ar
  %i.ace = ptrtoint ptr %i.abt to i64, !nosanitize !11 ; 2 uses
  %i.acf = and i64 %i.ace, 3, !nosanitize !11
  %i.acg = icmp eq i64 %i.acf, 0, !nosanitize !11
  %i.ach = and i1 %i.abx, %i.acg
  br i1 %i.ach, label %bb.av, label %bb.au, !prof !12, !nosanitize !11

bb.au:                                            ; preds = %bb.at
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @121, i64 %i.ace) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.av:                                            ; preds = %bb.at
  %.sroa.0412.0.copyload.i = load <2 x float>, ptr %i.abt, align 4, !tbaa !19, !noalias !101 ; 4 uses
  %.sroa.6415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abt, i64 8
  %.sroa.6415.0.copyload.i = load float, ptr %.sroa.6415.0..sroa_idx.i, align 4, !tbaa !19, !noalias !101 ; 2 uses
  br i1 %.not714.i, label %bb.aw, label %bb.ax, !prof !20, !nosanitize !11

bb.aw:                                            ; preds = %bb.av
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @122, i64 -4, i64 0) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.ax:                                            ; preds = %bb.av
  %i.aci = load i32, ptr %i.bf, align 4, !tbaa !27, !noalias !101 ; 2 uses
  %i.acj = sext i32 %i.aci to i64                 ; 2 uses
  %i.ack = getelementptr inbounds [12 x i8], ptr %i.abq, i64 %i.acj ; 3 uses
  %i.acl = mul nsw i64 %i.acj, 12
  %i.acm = add i64 %i.acl, %i.abv, !nosanitize !11 ; 3 uses
  %i.acn = icmp ne i64 %i.acm, 0
  %i.aco = icmp uge i64 %i.acm, %i.abv, !nosanitize !11
  %i.acp = icmp slt i32 %i.aci, 0
  %i.acq = xor i1 %i.acp, %i.aco
  %i.acr = and i1 %i.acn, %i.acq, !nosanitize !11
  br i1 %i.acr, label %bb.az, label %bb.ay, !prof !12, !nosanitize !11

bb.ay:                                            ; preds = %bb.ax
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @123, i64 %i.abv, i64 %i.acm) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.az:                                            ; preds = %bb.ax
  %i.acs = ptrtoint ptr %i.ack to i64, !nosanitize !11 ; 2 uses
  %i.act = and i64 %i.acs, 3, !nosanitize !11
  %i.acu = icmp eq i64 %i.act, 0, !nosanitize !11
  br i1 %i.acu, label %bb.bb, label %bb.ba, !prof !12, !nosanitize !11

bb.ba:                                            ; preds = %bb.az
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @124, i64 %i.acs) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.bb:                                            ; preds = %bb.az
  %.sroa.0409.0.copyload.i = load <2 x float>, ptr %i.ack, align 4, !tbaa !19, !noalias !101 ; 4 uses
  %.sroa.5411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  %.sroa.5411.0.copyload.i = load float, ptr %.sroa.5411.0..sroa_idx.i, align 4, !tbaa !19, !noalias !101 ; 2 uses
  br i1 %.not715.i, label %bb.bc, label %bb.bd, !prof !20, !nosanitize !11

bb.bc:                                            ; preds = %bb.bb
  %i.acv = ptrtoint ptr %i.a to i64, !nosanitize !11 ; 2 uses
  %i.acw = add i64 %i.acv, 8, !nosanitize !11
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @125, i64 %i.acv, i64 %i.acw) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.bd:                                            ; preds = %bb.bb
  %i.acx = load i32, ptr %i.bg, align 4, !tbaa !27, !noalias !101 ; 2 uses
  %i.acy = sext i32 %i.acx to i64                 ; 2 uses
  %i.acz = getelementptr inbounds [12 x i8], ptr %i.abq, i64 %i.acy ; 3 uses
  %i.ada = mul nsw i64 %i.acy, 12
  %i.adb = add i64 %i.ada, %i.abv, !nosanitize !11 ; 3 uses
  %i.adc = icmp ne i64 %i.adb, 0
  %i.add = icmp uge i64 %i.adb, %i.abv, !nosanitize !11
  %i.ade = icmp slt i32 %i.acx, 0
  %i.adf = xor i1 %i.ade, %i.add
  %i.adg = and i1 %i.adc, %i.adf, !nosanitize !11
  br i1 %i.adg, label %bb.bf, label %bb.be, !prof !12, !nosanitize !11

bb.be:                                            ; preds = %bb.bd
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @126, i64 %i.abv, i64 %i.adb) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.bf:                                            ; preds = %bb.bd
  %i.adh = ptrtoint ptr %i.acz to i64, !nosanitize !11 ; 2 uses
  %i.adi = and i64 %i.adh, 3, !nosanitize !11
  %i.adj = icmp eq i64 %i.adi, 0, !nosanitize !11
  br i1 %i.adj, label %bb.bh, label %bb.bg, !prof !12, !nosanitize !11

bb.bg:                                            ; preds = %bb.bf
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @127, i64 %i.adh) #8, !noalias !101, !nosanitize !11
  unreachable, !nosanitize !11

bb.bh:                                            ; preds = %bb.bf
  %.sroa.0406.0.copyload.i = load <2 x float>, ptr %i.acz, align 4, !tbaa !19, !noalias !101 ; 4 uses
  %.sroa.5408.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  %.sroa.5408.0.copyload.i = load float, ptr %.sroa.5408.0..sroa_idx.i, align 4, !tbaa !19, !noalias !101 ; 2 uses
  %i.adk = shufflevector <2 x float> %.sroa.0406.0.copyload.i, <2 x float> %.sroa.0409.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.adl = fsub <2 x float> %i.adk, %.sroa.0412.0.copyload.i ; 3 uses
  %i.adm = shufflevector <2 x float> %.sroa.0409.0.copyload.i, <2 x float> %.sroa.0406.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.adn = fsub <2 x float> %i.adm, %.sroa.0412.0.copyload.i ; 3 uses
  %i.ado = insertelement <2 x float> poison, float %.sroa.5411.0.copyload.i, i64 0
  %i.adp = insertelement <2 x float> %i.ado, float %.sroa.5408.0.copyload.i, i64 1
  %i.adq = insertelement <2 x float> poison, float %.sroa.6415.0.copyload.i, i64 0
  %i.adr = shufflevector <2 x float> %i.adq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ads = fsub <2 x float> %i.adp, %i.adr        ; 2 uses
  %i.adt = fmul <2 x float> %i.ads, %i.adl
  %i.adu = shufflevector <2 x float> %i.ads, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.adv = fmul <2 x float> %i.adn, %i.adu
  %i.adw = fsub <2 x float> %i.adt, %i.adv        ; 3 uses
  %shift9024 = shufflevector <2 x float> %i.adn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9025 = fmul <2 x float> %i.adn, %shift9024
  %shift9027 = shufflevector <2 x float> %i.adl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9028 = fmul <2 x float> %shift9027, %i.adl
  %foldExtExtBinop9030 = fsub <2 x float> %foldExtExtBinop9025, %foldExtExtBinop9028 ; 3 uses
  %i.adx = fmul <2 x float> %i.adw, %i.adw        ; 2 uses
  %shift9032 = shufflevector <2 x float> %i.adx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9033 = fadd <2 x float> %shift9032, %i.adx
  %foldExtExtBinop9035 = fmul <2 x float> %foldExtExtBinop9030, %foldExtExtBinop9030
  %foldExtExtBinop9037 = fadd <2 x float> %foldExtExtBinop9035, %foldExtExtBinop9033
  %i.ady = extractelement <2 x float> %foldExtExtBinop9037, i64 0 ; 2 uses
  %i.adz = fcmp ogt float %i.ady, f0x057A0000
  br i1 %i.adz, label %bb.bi, label %b3Normalize.exit755.i

bb.bi:                                            ; preds = %bb.bh
  %i.aea = extractelement <2 x float> %foldExtExtBinop9030, i64 0
  %sqrt1314.i = call float @llvm.sqrt.f32(float %i.ady)
  %i.aeb = fdiv float 1.000000e+00, %sqrt1314.i   ; 2 uses
  %i.aec = insertelement <2 x float> poison, float %i.aeb, i64 0
  %i.aed = shufflevector <2 x float> %i.adw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aee = shufflevector <2 x float> %i.aec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aef = fmul <2 x float> %i.aed, %i.aee
  %i.aeg = fmul float %i.aea, %i.aeb
  br label %b3Normalize.exit755.i

b3Normalize.exit755.i:                            ; preds = %bb.bi, %bb.bh
  %.sroa.07.0.i749.i = phi <2 x float> [ %i.aef, %bb.bi ], [ zeroinitializer, %bb.bh ] ; 6 uses
  %.sroa.5.0.i750.i = phi float [ %i.aeg, %bb.bi ], [ 0.000000e+00, %bb.bh ] ; 5 uses
  %.sroa.2.8.vec.extract65.i916.i = extractelement <2 x float> %.sroa.10599.0.copyload.i, i64 0
  %.sroa.09.4.vec.extract13.i.i917.i = extractelement <2 x float> %.sroa.0592.0.copyload.i, i64 1
  %i.aeh = fmul float %.sroa.09.4.vec.extract13.i.i917.i, %.sroa.5.0.i750.i
  %.sroa.0.4.vec.extract8.i.i918.i = extractelement <2 x float> %.sroa.07.0.i749.i, i64 1 ; 2 uses
  %i.aei = fmul float %.sroa.2.8.vec.extract65.i916.i, %.sroa.0.4.vec.extract8.i.i918.i
  %.sroa.2.12.vec.extract.i921.i = extractelement <2 x float> %.sroa.10599.0.copyload.i, i64 1
  %foldExtExtBinop9039 = fadd <2 x float> %.sroa.0412.0.copyload.i, %.sroa.0409.0.copyload.i
  %foldExtExtBinop9041 = fadd <2 x float> %.sroa.0412.0.copyload.i, %.sroa.0409.0.copyload.i
  %i.aej = fadd float %.sroa.6415.0.copyload.i, %.sroa.5411.0.copyload.i
  %i.aek = fsub float %i.aeh, %i.aei
  %i.ael = shufflevector <2 x float> %.sroa.10599.0.copyload.i, <2 x float> %.sroa.0592.0.copyload.i, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.aem = fmul <2 x float> %i.ael, %.sroa.07.0.i749.i
  %i.aen = shufflevector <2 x float> %.sroa.07.0.i749.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aeo = insertelement <2 x float> %i.aen, float %.sroa.5.0.i750.i, i64 0 ; 2 uses
  %i.aep = fmul <2 x float> %.sroa.0592.0.copyload.i, %i.aeo
  %i.aeq = fsub <2 x float> %i.aem, %i.aep        ; 2 uses
  %i.aer = shufflevector <2 x float> %.sroa.10599.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.aes = fmul <2 x float> %i.aer, %.sroa.07.0.i749.i ; 2 uses
  %i.aet = shufflevector <2 x float> %i.aeq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aeu = insertelement <2 x float> %i.aet, float %i.aek, i64 0
  %i.aev = fadd <2 x float> %i.aes, %i.aeu        ; 2 uses
  %i.aew = fmul float %.sroa.2.12.vec.extract.i921.i, %.sroa.5.0.i750.i
  %i.aex = shufflevector <2 x float> %i.aes, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aey = insertelement <2 x float> %i.aex, float %i.aew, i64 1
  %i.aez = fadd <2 x float> %i.aey, %i.aeq        ; 2 uses
  %foldExtExtBinop9043 = fmul <2 x float> %.sroa.10599.0.copyload.i, %i.aev
  %shift9045 = shufflevector <2 x float> %i.aez, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9046 = fmul <2 x float> %.sroa.0592.0.copyload.i, %shift9045
  %foldExtExtBinop9048 = fsub <2 x float> %foldExtExtBinop9043, %foldExtExtBinop9046
  %i.afa = extractelement <2 x float> %foldExtExtBinop9048, i64 0
  %i.afb = fmul <2 x float> %.sroa.0592.0.copyload.i, %i.aez
  %i.afc = shufflevector <2 x float> %.sroa.0592.0.copyload.i, <2 x float> %.sroa.10599.0.copyload.i, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.afd = fmul <2 x float> %i.afc, %i.aev
  %i.afe = fsub <2 x float> %i.afb, %i.afd
  %i.aff = fmul <2 x float> %i.afe, splat (float 2.000000e+00)
  %i.afg = fmul float %i.afa, 2.000000e+00
  %i.afh = fadd float %.sroa.0.4.vec.extract8.i.i918.i, %i.afg
  %i.afi = fadd <2 x float> %i.aeo, %i.aff
  %foldExtExtBinop9050 = fadd <2 x float> %foldExtExtBinop9041, %.sroa.0406.0.copyload.i
  %i.afj = insertelement <2 x float> poison, float %i.aej, i64 0
  %i.afk = shufflevector <2 x float> %i.afj, <2 x float> %foldExtExtBinop9039, <2 x i32> <i32 0, i32 2>
  %i.afl = shufflevector <2 x float> %.sroa.0406.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.afm = insertelement <2 x float> %i.afl, float %.sroa.5408.0.copyload.i, i64 0
  %i.afn = fadd <2 x float> %i.afk, %i.afm        ; 2 uses
  %i.afo = fmul <2 x float> %i.afn, splat (float f0x3EAAAAAB) ; 5 uses
end_hunk_3
