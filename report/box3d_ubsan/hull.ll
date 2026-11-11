Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/hull?download=true
inline.NumInlined: 420
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@b3ScaleBox:bb.a
  %foldExtExtBinop407 = fmul <2 x float> %.sroa.10.0, %i.ef
  %i.fn = shufflevector <2 x float> %.sroa.10.0, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fo = fmul <2 x float> %i.fn, %i.fj           ; 2 uses
  %i.fp = fsub <2 x float> %i.fl, %i.fo           ; 2 uses
  %i.fq = shufflevector <2 x float> %foldExtExtBinop407, <2 x float> %i.fo, <2 x i32> <i32 1, i32 2>
  %i.fr = fsub <2 x float> %i.fm, %i.fq           ; 2 uses
  %i.fs = fmul <2 x float> %i.dr, %i.fp
  %i.ft = fmul <2 x float> %i.dt, %i.fr
  %i.fu = fsub <2 x float> %i.fs, %i.ft
  %i.fv = fmul <2 x float> %i.fu, splat (float 2.000000e+00)
  %i.fw = fadd <2 x float> %i.ef, %i.fv           ; 4 uses
  %i.fx = shufflevector <2 x float> %i.ex, <2 x float> %i.fc, <2 x i32> <i32 1, i32 2>
  %i.fy = fmul <2 x float> %.sroa.0180.0, %i.fx
  %i.fz = fmul <2 x float> %i.dt, %i.ex
  %i.ga = fmul <2 x float> %i.dr, %i.ex
  %i.gb = fmul <2 x float> %.sroa.0180.0, %i.fc
  %i.gc = fsub <2 x float> %i.fy, %i.ga
  %i.gd = fsub <2 x float> %i.fz, %i.gb
  %foldExtExtBinop409 = fmul <2 x float> %.sroa.10.0, %i.ex
  %i.ge = fmul <2 x float> %i.fn, %i.fc           ; 2 uses
  %i.gf = fsub <2 x float> %i.gc, %i.ge           ; 2 uses
  %i.gg = shufflevector <2 x float> %foldExtExtBinop409, <2 x float> %i.ge, <2 x i32> <i32 1, i32 2>
  %i.gh = fsub <2 x float> %i.gd, %i.gg           ; 2 uses
  %i.gi = fmul <2 x float> %i.dr, %i.gf
  %i.gj = fmul <2 x float> %i.dt, %i.gh
  %i.gk = fsub <2 x float> %i.gi, %i.gj
  %i.gl = fmul <2 x float> %i.gk, splat (float 2.000000e+00)
  %i.gm = fadd <2 x float> %i.ex, %i.gl           ; 4 uses
  %i.gn = fcmp olt <2 x float> %i.fw, %i.gm
  %i.go = select <2 x i1> %i.gn, <2 x float> %i.fw, <2 x float> %i.gm
  %i.gp = fcmp ogt <2 x float> %i.fw, %i.gm
  %i.gq = select <2 x i1> %i.gp, <2 x float> %i.fw, <2 x float> %i.gm
  %i.gr = shufflevector <2 x float> %.sroa.0180.0, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = shufflevector <2 x float> %i.gh, <2 x float> %i.fr, <2 x i32> <i32 0, i32 2>
  %i.gt = fmul <2 x float> %i.gr, %i.gs
  %i.gu = shufflevector <2 x float> %.sroa.0180.0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gv = shufflevector <2 x float> %i.gf, <2 x float> %i.fp, <2 x i32> <i32 1, i32 3>
  %i.gw = fmul <2 x float> %i.gu, %i.gv
  %i.gx = fsub <2 x float> %i.gt, %i.gw
  %i.gy = fmul <2 x float> %i.gx, splat (float 2.000000e+00)
  %i.gz = insertelement <2 x float> %i.fc, float %i.eg, i64 1
  %i.ha = fadd <2 x float> %i.gz, %i.gy           ; 4 uses
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hc = fcmp ogt <2 x float> %i.ha, %i.hb
  %i.hd = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.he = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = select <2 x i1> %i.hc, <2 x float> %i.hd, <2 x float> %i.he ; 2 uses
  %i.hg = fsub <2 x float> %i.gq, %i.go
  %shift411 = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop412 = fsub <2 x float> %shift411, %i.hf
  %i.hh = extractelement <2 x float> %foldExtExtBinop412, i64 0
  %i.hi = fmul <2 x float> %i.hg, splat (float 5.000000e-01) ; 2 uses
  %i.hj = fmul float %i.hh, 5.000000e-01          ; 2 uses
  %i.hk = insertelement <2 x float> poison, float %4, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hm = fcmp ogt <2 x float> %i.hi, %i.hl
  %i.hn = select <2 x i1> %i.hm, <2 x float> %i.hi, <2 x float> %i.hl
  %i.ho = fcmp ogt float %i.hj, %4
  %i.hp = select i1 %i.ho, float %i.hj, float %4
  store <2 x float> %i.hn, ptr %0, align 4, !tbaa !28
  store float %i.hp, ptr %.sroa.5120.0..sroa_idx, align 4, !tbaa !28
  %.sroa.01.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %i.hq = fmul <2 x float> %2, %.sroa.01.0.copyload
  %i.hr = fmul float %3, %.sroa.22.0.copyload
  store <2 x float> %i.hq, ptr %1, align 4, !tbaa !28
  store float %i.hr, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !28
  store <2 x float> %.sroa.0180.0, ptr %i.f, align 4, !tbaa !28
  store <2 x float> %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !28
  ret void
}

declare { <2 x float>, <2 x float> } @b3MakeQuatFromMatrix(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3MakeScaledBoxHull(ptr dead_on_unwind noalias writable sret(%struct.b3BoxHull) align 8 initializes((0, 640)) %0, <2 x float> %1, float %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, <2 x float> %4, float %5) local_unnamed_addr #0 !func_sanitize !312 {
bb.a:
  %6 = alloca %struct.b3Vec3, align 8             ; 7 uses
  %7 = alloca %struct.b3Transform, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store <2 x float> %1, ptr %6, align 8, !tbaa !28
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float %2, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %7, ptr noundef nonnull align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !149
  %i.a = tail call float @b3GetLengthUnitsPerMeter() #14
  %i.b = fmul float %i.a, 5.000000e-03
  %i.c = fmul float %i.b, 4.000000e+00
  call void @b3ScaleBox(ptr noundef nonnull %6, ptr noundef nonnull %7, <2 x float> %4, float %5, float noundef %i.c)
  %i.d = load float, ptr %6, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !313
  %i.g = load float, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !86
  call void @b3MakeTransformedBoxHull(ptr dead_on_unwind writable sret(%struct.b3BoxHull) align 8 %0, float noundef %i.d, float noundef %i.f, float noundef %i.g, ptr noundef nonnull byval(%struct.b3Transform) align 8 %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #3

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_sub_overflow_abort(ptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @b3HullBuilder_NewVertex(ptr noundef nonnull %0, <2 x float> %1, float %2) unnamed_addr #0 !func_sanitize !314 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !12  ; 2 uses
  %i.b = and i64 %i.a, 7, !nosanitize !12
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !12
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @386, i64 %i.a) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !315  ; 4 uses
  %i.f = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.e, i32 1), !nosanitize !12 ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 1, !nosanitize !12
  br i1 %i.g, label %bb.d, label %bb.e, !prof !22, !nosanitize !12

bb.d:                                             ; preds = %bb.c
  %i.h = zext nneg i32 %i.e to i64, !nosanitize !12
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @387, i64 %i.h, i64 1) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46   ; 3 uses
  %i.k = extractvalue { i32, i1 } %i.f, 0, !nosanitize !12
  store i32 %i.k, ptr %i.d, align 4, !tbaa !315
  %i.l = sext i32 %i.e to i64                     ; 2 uses
  %i.m = getelementptr inbounds [48 x i8], ptr %i.j, i64 %i.l ; 9 uses
  %i.n = mul nsw i64 %i.l, 48
  %i.o = ptrtoint ptr %i.j to i64, !nosanitize !12 ; 3 uses
  %i.p = add i64 %i.n, %i.o, !nosanitize !12      ; 3 uses
  %i.q = icmp ne ptr %i.j, null, !nosanitize !12  ; 2 uses
  %i.r = icmp eq i64 %i.p, 0
  %i.s = xor i1 %i.q, %i.r
  %i.t = icmp uge i64 %i.p, %i.o, !nosanitize !12
  %i.u = icmp slt i32 %i.e, 0
  %i.v = xor i1 %i.u, %i.t
  %i.w = and i1 %i.s, %i.v, !nosanitize !12
  br i1 %i.w, label %bb.g, label %bb.f, !prof !13, !nosanitize !12

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @388, i64 %i.o, i64 %i.p) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.g:                                             ; preds = %bb.e
  %i.x = ptrtoint ptr %i.m to i64, !nosanitize !12 ; 2 uses
  %i.y = and i64 %i.x, 7, !nosanitize !12
  %i.z = icmp eq i64 %i.y, 0, !nosanitize !12
  %i.aa = and i1 %i.q, %i.z
  br i1 %i.aa, label %bb.i, label %bb.h, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @389, i64 %i.x) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr %i.m, align 8, !tbaa !316
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %i.ab, align 8, !tbaa !317
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr null, ptr %i.ac, align 8, !tbaa !89
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store <2 x float> %1, ptr %i.ad, align 8, !tbaa !28
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store float %2, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  store i32 -1, ptr %i.ae, align 4, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i8 0, ptr %i.af, align 8, !tbaa !102
  ret ptr %i.m
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @b3HullBuilder_NewFace(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !func_sanitize !318 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !12  ; 2 uses
  %i.b = and i64 %i.a, 7, !nosanitize !12
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !12
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @394, i64 %i.a) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100  ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.e to i64, !nosanitize !12 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !12
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !12
  br i1 %i.h, label %bb.f, label %bb.e, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @395, i64 %i.f) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101
  store ptr %i.j, ptr %i.d, align 8, !tbaa !100
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !319  ; 4 uses
  %i.o = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.n, i32 1), !nosanitize !12 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1, !nosanitize !12
  br i1 %i.p, label %bb.h, label %bb.i, !prof !22, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  %i.q = zext nneg i32 %i.n to i64, !nosanitize !12
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @396, i64 %i.q, i64 1) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.i:                                             ; preds = %bb.g
  %i.r = extractvalue { i32, i1 } %i.o, 0, !nosanitize !12
  store i32 %i.r, ptr %i.m, align 4, !tbaa !319
  %i.s = sext i32 %i.n to i64                     ; 2 uses
  %i.t = shl nsw i64 %i.s, 7
  %i.u = ptrtoint ptr %i.l to i64, !nosanitize !12 ; 3 uses
  %i.v = add i64 %i.t, %i.u, !nosanitize !12      ; 3 uses
  %i.w = icmp ne ptr %i.l, null, !nosanitize !12
  %i.x = icmp eq i64 %i.v, 0
  %i.y = xor i1 %i.w, %i.x
  %i.z = icmp uge i64 %i.v, %i.u, !nosanitize !12
  %i.aa = icmp slt i32 %i.n, 0
  %i.ab = xor i1 %i.aa, %i.z
  %i.ac = and i1 %i.y, %i.ab, !nosanitize !12
  br i1 %i.ac, label %bb.k, label %bb.j, !prof !13, !nosanitize !12

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @397, i64 %i.u, i64 %i.v) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds [128 x i8], ptr %i.l, i64 %i.s
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.0 = phi ptr [ %i.ad, %bb.k ], [ %i.e, %bb.f ] ; 21 uses
  %.pre-phi188 = ptrtoint ptr %.0 to i64          ; 2 uses
  %i.ae = icmp ne ptr %.0, null, !nosanitize !12
  %i.af = and i64 %.pre-phi188, 7, !nosanitize !12
  %i.ag = icmp eq i64 %i.af, 0, !nosanitize !12
  %i.ah = and i1 %i.ae, %i.ag, !nosanitize !12
  br i1 %i.ah, label %bb.n, label %bb.m, !prof !13, !nosanitize !12

bb.m:                                             ; preds = %bb.l
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @398, i64 %.pre-phi188) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.n:                                             ; preds = %bb.l
  store ptr null, ptr %.0, align 8, !tbaa !320
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !101
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 112
  store ptr null, ptr %i.aj, align 8, !tbaa !91
  %i.ak = getelementptr inbounds nuw i8, ptr %.0, i64 60
  store float 0.000000e+00, ptr %i.ak, align 4, !tbaa !90
  %i.al = getelementptr inbounds nuw i8, ptr %.0, i64 120
  store i32 -1, ptr %i.al, align 8, !tbaa !59
  %i.am = tail call fastcc ptr @b3HullBuilder_NewEdge(ptr noundef %0) ; 9 uses
  %i.an = tail call fastcc ptr @b3HullBuilder_NewEdge(ptr noundef %0) ; 8 uses
  %i.ao = tail call fastcc ptr @b3HullBuilder_NewEdge(ptr noundef %0) ; 8 uses
  %i.ap = ptrtoint ptr %1 to i64, !nosanitize !12 ; 2 uses
  %i.aq = and i64 %i.ap, 7, !nosanitize !12
  %i.ar = icmp eq i64 %i.aq, 0, !nosanitize !12
  br i1 %i.ar, label %bb.p, label %bb.o, !prof !13, !nosanitize !12

bb.o:                                             ; preds = %bb.n
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @399, i64 %i.ap) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.p:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.072.0.copyload = load <2 x float>, ptr %i.as, align 8, !tbaa !28 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !28 ; 2 uses
  %i.at = icmp ne ptr %2, null, !nosanitize !12
  %i.au = ptrtoint ptr %2 to i64, !nosanitize !12 ; 2 uses
  %i.av = and i64 %i.au, 7, !nosanitize !12
  %i.aw = icmp eq i64 %i.av, 0, !nosanitize !12
  %i.ax = and i1 %i.at, %i.aw, !nosanitize !12
  br i1 %i.ax, label %bb.r, label %bb.q, !prof !13, !nosanitize !12

bb.q:                                             ; preds = %bb.p
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @400, i64 %i.au) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.r:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.az = icmp ne ptr %3, null, !nosanitize !12
  %i.ba = ptrtoint ptr %3 to i64, !nosanitize !12 ; 2 uses
  %i.bb = and i64 %i.ba, 7, !nosanitize !12
  %i.bc = icmp eq i64 %i.bb, 0, !nosanitize !12
  %i.bd = and i1 %i.az, %i.bc, !nosanitize !12
  br i1 %i.bd, label %bb.t, label %bb.s, !prof !13, !nosanitize !12

bb.s:                                             ; preds = %bb.r
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @401, i64 %i.ba) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.t:                                             ; preds = %bb.r
  %.sroa.471.0.copyload = load float, ptr %.sroa.471.0..sroa_idx, align 8, !tbaa !28
  %.sroa.070.0.copyload = load <2 x float>, ptr %i.ay, align 8, !tbaa !28 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.sroa.068.0.copyload = load <2 x float>, ptr %i.be, align 8, !tbaa !28 ; 2 uses
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.sroa.469.0.copyload = load float, ptr %.sroa.469.0..sroa_idx, align 8, !tbaa !28
  %i.bf = shufflevector <2 x float> %.sroa.068.0.copyload, <2 x float> %.sroa.070.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.bg = fsub <2 x float> %i.bf, %.sroa.072.0.copyload ; 3 uses
  %i.bh = shufflevector <2 x float> %.sroa.070.0.copyload, <2 x float> %.sroa.068.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.bi = fsub <2 x float> %i.bh, %.sroa.072.0.copyload ; 3 uses
  %i.bj = insertelement <2 x float> poison, float %.sroa.471.0.copyload, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %.sroa.469.0.copyload, i64 1
  %i.bl = insertelement <2 x float> poison, float %.sroa.6.0.copyload, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fsub <2 x float> %i.bk, %i.bm           ; 2 uses
  %i.bo = fmul <2 x float> %i.bn, %i.bg
  %i.bp = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bq = fmul <2 x float> %i.bi, %i.bp
  %i.br = fsub <2 x float> %i.bo, %i.bq           ; 3 uses
  %shift = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.bi, %shift
  %shift195 = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop196 = fmul <2 x float> %shift195, %i.bg
  %foldExtExtBinop198 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop196 ; 3 uses
  %i.bs = fmul <2 x float> %i.br, %i.br           ; 2 uses
  %shift200 = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop201 = fadd <2 x float> %shift200, %i.bs
  %foldExtExtBinop203 = fmul <2 x float> %foldExtExtBinop198, %foldExtExtBinop198
  %foldExtExtBinop205 = fadd <2 x float> %foldExtExtBinop203, %foldExtExtBinop201
  %i.bt = extractelement <2 x float> %foldExtExtBinop205, i64 0 ; 2 uses
  %i.bu = fcmp ogt float %i.bt, f0x057A0000
  br i1 %i.bu, label %bb.u, label %b3GetLengthAndNormalize.exit

bb.u:                                             ; preds = %bb.t
  %i.bv = extractelement <2 x float> %foldExtExtBinop198, i64 0
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.bt) ; 2 uses
  %i.bw = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.bx = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.by = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bz = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x float> %i.by, %i.bz
  %i.cb = fmul float %i.bv, %i.bw
  %i.cc = fmul nnan float %sqrt.i, 5.000000e-01
  br label %b3GetLengthAndNormalize.exit

b3GetLengthAndNormalize.exit:                     ; preds = %bb.t, %bb.u
  %.0186 = phi float [ %i.cc, %bb.u ], [ 0.000000e+00, %bb.t ]
  %.sroa.010.0.i = phi <2 x float> [ %i.ca, %bb.u ], [ zeroinitializer, %bb.t ] ; 4 uses
  %.sroa.5.0.i = phi float [ %i.cb, %bb.u ], [ 0.000000e+00, %bb.t ] ; 3 uses
  %.sroa.7.8.vec.insert185 = insertelement <2 x float> poison, float %.sroa.5.0.i, i64 0
  %foldExtExtBinop207 = fmul <2 x float> %.sroa.072.0.copyload, %.sroa.010.0.i
  %foldExtExtBinop209 = fmul <2 x float> %.sroa.072.0.copyload, %.sroa.010.0.i
  %shift211 = shufflevector <2 x float> %foldExtExtBinop209, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop212 = fadd <2 x float> %foldExtExtBinop207, %shift211
  %i.cd = extractelement <2 x float> %foldExtExtBinop212, i64 0
  %i.ce = fmul float %.sroa.6.0.copyload, %.sroa.5.0.i
  %i.cf = fadd float %i.ce, %i.cd                 ; 2 uses
  %.sroa.7.12.vec.insert = insertelement <2 x float> %.sroa.7.8.vec.insert185, float %i.cf, i64 1
  %i.cg = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store ptr %i.am, ptr %i.cg, align 8, !tbaa !61
  %i.ch = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store i32 0, ptr %i.ch, align 8, !tbaa !96
  %i.ci = getelementptr inbounds nuw i8, ptr %.0, i64 28
  store float %.0186, ptr %i.ci, align 4, !tbaa !98
  %i.cj = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %.sroa.019.0.copyload = load <2 x float>, ptr %i.ay, align 8
  %.sroa.220.0.copyload = load float, ptr %.sroa.471.0..sroa_idx, align 8
  %.sroa.017.0.copyload = load <2 x float>, ptr %i.be, align 8
  %.sroa.218.0.copyload = load float, ptr %.sroa.469.0..sroa_idx, align 8
  %i.ck = fadd float %.sroa.220.0.copyload, %.sroa.218.0.copyload
  %.sroa.011.0.copyload = load <2 x float>, ptr %i.as, align 8
  %.sroa.212.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8
  %i.cl = fadd float %i.ck, %.sroa.212.0.copyload
  %i.cm = fadd <2 x float> %.sroa.019.0.copyload, %.sroa.017.0.copyload
  %i.cn = fadd <2 x float> %i.cm, %.sroa.011.0.copyload
  %i.co = fmul <2 x float> %i.cn, splat (float f0x3EAAAAAB)
  %i.cp = fmul float %i.cl, f0x3EAAAAAB
  store <2 x float> %i.co, ptr %i.cj, align 8, !tbaa !28
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 56
  store float %i.cp, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !28
  %i.cq = getelementptr inbounds nuw i8, ptr %.0, i64 32
  store <2 x float> %.sroa.010.0.i, ptr %i.cq, align 8, !tbaa !28
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 40
  store <2 x float> %.sroa.7.12.vec.insert, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !28
  %i.cr = getelementptr inbounds nuw i8, ptr %.0, i64 124
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %i.cs = fmul float %.sroa.5.0.i, %.sroa.2.0.copyload
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ct, align 4
  %i.cu = fmul <2 x float> %.sroa.010.0.i, %.sroa.0.0.copyload ; 2 uses
  %shift214 = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop215 = fadd <2 x float> %i.cu, %shift214
  %i.cv = extractelement <2 x float> %foldExtExtBinop215, i64 0
  %i.cw = fadd float %i.cs, %i.cv
  %i.cx = fcmp ogt float %i.cw, %i.cf
  %i.cy = zext i1 %i.cx to i8
  store i8 %i.cy, ptr %i.cr, align 4, !tbaa !97
  %i.cz = getelementptr inbounds nuw i8, ptr %.0, i64 64 ; 3 uses
  store ptr %i.cz, ptr %i.cz, align 8, !tbaa !32
  %i.da = getelementptr inbounds nuw i8, ptr %.0, i64 72
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !33
  %i.db = ptrtoint ptr %i.am to i64, !nosanitize !12 ; 2 uses
  %i.dc = and i64 %i.db, 7, !nosanitize !12
  %i.dd = icmp eq i64 %i.dc, 0, !nosanitize !12
  br i1 %i.dd, label %bb.w, label %bb.v, !prof !13, !nosanitize !12

bb.v:                                             ; preds = %b3GetLengthAndNormalize.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @402, i64 %i.db) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.w:                                             ; preds = %b3GetLengthAndNormalize.exit
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !150
  %i.de = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.de, align 8, !tbaa !66
  %i.df = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %1, ptr %i.df, align 8, !tbaa !79
  %i.dg = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %.0, ptr %i.dg, align 8, !tbaa !78
  %i.dh = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr null, ptr %i.dh, align 8, !tbaa !65
  %i.di = ptrtoint ptr %i.an to i64, !nosanitize !12 ; 2 uses
  %i.dj = and i64 %i.di, 7, !nosanitize !12
  %i.dk = icmp eq i64 %i.dj, 0, !nosanitize !12
  br i1 %i.dk, label %bb.y, label %bb.x, !prof !13, !nosanitize !12

bb.x:                                             ; preds = %bb.w
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @403, i64 %i.di) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.y:                                             ; preds = %bb.w
  store ptr %i.am, ptr %i.an, align 8, !tbaa !150
  %i.dl = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.dl, align 8, !tbaa !66
  %i.dm = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %2, ptr %i.dm, align 8, !tbaa !79
  %i.dn = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %.0, ptr %i.dn, align 8, !tbaa !78
  %i.do = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr null, ptr %i.do, align 8, !tbaa !65
  %i.dp = ptrtoint ptr %i.ao to i64, !nosanitize !12 ; 2 uses
  %i.dq = and i64 %i.dp, 7, !nosanitize !12
  %i.dr = icmp eq i64 %i.dq, 0, !nosanitize !12
  br i1 %i.dr, label %bb.aa, label %bb.z, !prof !13, !nosanitize !12

bb.z:                                             ; preds = %bb.y
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @404, i64 %i.dp) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.aa:                                            ; preds = %bb.y
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !150
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.am, ptr %i.ds, align 8, !tbaa !66
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %3, ptr %i.dt, align 8, !tbaa !79
  %i.du = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %.0, ptr %i.du, align 8, !tbaa !78
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr null, ptr %i.dv, align 8, !tbaa !65
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3LinkFaces(ptr noundef %0, i32 noundef range(i32 0, 3) %1, ptr noundef %2, i32 noundef range(i32 0, 3) %3) unnamed_addr #7 !func_sanitize !321 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !12
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12
  %i.e = and i1 %i.a, %i.d, !nosanitize !12
  br i1 %i.e, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @410, i64 %i.b) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0963 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 4 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.preheader14.preheader._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = icmp ne ptr %.0963, null, !nosanitize !12
  %i.h = ptrtoint ptr %.0963 to i64, !nosanitize !12 ; 2 uses
  %i.i = and i64 %i.h, 7, !nosanitize !12
  %i.j = icmp eq i64 %i.i, 0, !nosanitize !12
  %i.k = and i1 %i.g, %i.j, !nosanitize !12
  br i1 %i.k, label %.preheader14.preheader, label %bb.d, !prof !13, !nosanitize !12

bb.d:                                             ; preds = %.lr.ph.1, %.lr.ph
  %.lcssa73 = phi i64 [ %i.h, %.lr.ph ], [ %i.n, %.lr.ph.1 ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @411, i64 %.lcssa73) #13, !nosanitize !12
  unreachable, !nosanitize !12

.preheader14.preheader:                           ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.0963, i64 8
  %.09 = load ptr, ptr %i.l, align 8, !tbaa !64   ; 4 uses
  %.not76 = icmp eq i32 %1, 1
  br i1 %.not76, label %.preheader14.preheader._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.preheader14.preheader
  %i.m = icmp ne ptr %.09, null, !nosanitize !12
  %i.n = ptrtoint ptr %.09 to i64, !nosanitize !12 ; 2 uses
  %i.o = and i64 %i.n, 7, !nosanitize !12
  %i.p = icmp eq i64 %i.o, 0, !nosanitize !12
  %i.q = and i1 %i.m, %i.p, !nosanitize !12
  br i1 %i.q, label %.preheader14.preheader.1, label %bb.d, !prof !13, !nosanitize !12

.preheader14.preheader.1:                         ; preds = %.lr.ph.1
  %i.r = getelementptr inbounds nuw i8, ptr %.09, i64 8
  %.09.1 = load ptr, ptr %i.r, align 8, !tbaa !64
  br label %.preheader14.preheader._crit_edge

.preheader14.preheader._crit_edge:                ; preds = %.preheader14.preheader, %.preheader14.preheader.1, %bb.c
  %.09.lcssa = phi ptr [ %.0963, %bb.c ], [ %.09, %.preheader14.preheader ], [ %.09.1, %.preheader14.preheader.1 ] ; 4 uses
  %i.s = icmp ne ptr %2, null, !nosanitize !12
  %i.t = ptrtoint ptr %2 to i64, !nosanitize !12  ; 2 uses
  %i.u = and i64 %i.t, 7, !nosanitize !12
  %i.v = icmp eq i64 %i.u, 0, !nosanitize !12
  %i.w = and i1 %i.s, %i.v, !nosanitize !12
  br i1 %i.w, label %bb.f, label %bb.e, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %.preheader14.preheader._crit_edge
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @412, i64 %i.t) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.f:                                             ; preds = %.preheader14.preheader._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.065 = load ptr, ptr %i.x, align 8, !tbaa !64  ; 4 uses
  %.not69 = icmp eq i32 %3, 0
  br i1 %.not69, label %.preheader.preheader._crit_edge, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.f
  %i.y = icmp ne ptr %.065, null, !nosanitize !12
  %i.z = ptrtoint ptr %.065 to i64, !nosanitize !12 ; 2 uses
  %i.aa = and i64 %i.z, 7, !nosanitize !12
  %i.ab = icmp eq i64 %i.aa, 0, !nosanitize !12
  %i.ac = and i1 %i.y, %i.ab, !nosanitize !12
  br i1 %i.ac, label %.preheader.preheader, label %bb.g, !prof !13, !nosanitize !12

bb.g:                                             ; preds = %.lr.ph67.1, %.lr.ph67
  %.lcssa = phi i64 [ %i.z, %.lr.ph67 ], [ %i.af, %.lr.ph67.1 ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @413, i64 %.lcssa) #13, !nosanitize !12
  unreachable, !nosanitize !12

.preheader.preheader:                             ; preds = %.lr.ph67
  %i.ad = getelementptr inbounds nuw i8, ptr %.065, i64 8
  %.0 = load ptr, ptr %i.ad, align 8, !tbaa !64   ; 4 uses
  %.not77 = icmp eq i32 %3, 1
  br i1 %.not77, label %.preheader.preheader._crit_edge, label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.preheader.preheader
  %i.ae = icmp ne ptr %.0, null, !nosanitize !12
  %i.af = ptrtoint ptr %.0 to i64, !nosanitize !12 ; 2 uses
  %i.ag = and i64 %i.af, 7, !nosanitize !12
  %i.ah = icmp eq i64 %i.ag, 0, !nosanitize !12
  %i.ai = and i1 %i.ae, %i.ah, !nosanitize !12
  br i1 %i.ai, label %.preheader.preheader.1, label %bb.g, !prof !13, !nosanitize !12

.preheader.preheader.1:                           ; preds = %.lr.ph67.1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %.0.1 = load ptr, ptr %i.aj, align 8, !tbaa !64
  br label %.preheader.preheader._crit_edge

.preheader.preheader._crit_edge:                  ; preds = %.preheader.preheader, %.preheader.preheader.1, %bb.f
  %.0.lcssa = phi ptr [ %.065, %bb.f ], [ %.0, %.preheader.preheader ], [ %.0.1, %.preheader.preheader.1 ] ; 4 uses
  %i.ak = icmp ne ptr %.09.lcssa, null, !nosanitize !12
  %i.al = ptrtoint ptr %.09.lcssa to i64, !nosanitize !12 ; 2 uses
  %i.am = and i64 %i.al, 7, !nosanitize !12
  %i.an = icmp eq i64 %i.am, 0, !nosanitize !12
  %i.ao = and i1 %i.ak, %i.an, !nosanitize !12
  br i1 %i.ao, label %bb.i, label %bb.h, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %.preheader.preheader._crit_edge
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @414, i64 %i.al) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.i:                                             ; preds = %.preheader.preheader._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.lcssa, i64 32
  store ptr %.0.lcssa, ptr %i.ap, align 8, !tbaa !65
  %i.aq = icmp ne ptr %.0.lcssa, null, !nosanitize !12
  %i.ar = ptrtoint ptr %.0.lcssa to i64, !nosanitize !12 ; 2 uses
  %i.as = and i64 %i.ar, 7, !nosanitize !12
  %i.at = icmp eq i64 %i.as, 0, !nosanitize !12
  %i.au = and i1 %i.aq, %i.at, !nosanitize !12
  br i1 %i.au, label %bb.k, label %bb.j, !prof !13, !nosanitize !12

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @415, i64 %i.ar) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.k:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 32
  store ptr %.09.lcssa, ptr %i.av, align 8, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @b3HullBuilder_NewEdge(ptr noundef nonnull %0) unnamed_addr #7 !func_sanitize !322 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !12  ; 2 uses
  %i.b = and i64 %i.a, 7, !nosanitize !12
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !12
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @405, i64 %i.a) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99   ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %i.e to i64, !nosanitize !12 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !12
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !12
  br i1 %i.h, label %bb.f, label %bb.e, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @406, i64 %i.f) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66
  store ptr %i.j, ptr %i.d, align 8, !tbaa !99
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !323  ; 4 uses
  %i.o = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.n, i32 1), !nosanitize !12 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1, !nosanitize !12
  br i1 %i.p, label %bb.h, label %bb.i, !prof !22, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  %i.q = zext nneg i32 %i.n to i64, !nosanitize !12
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @407, i64 %i.q, i64 1) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.i:                                             ; preds = %bb.g
  %i.r = extractvalue { i32, i1 } %i.o, 0, !nosanitize !12
  store i32 %i.r, ptr %i.m, align 4, !tbaa !323
  %i.s = sext i32 %i.n to i64                     ; 2 uses
  %i.t = mul nsw i64 %i.s, 48
  %i.u = ptrtoint ptr %i.l to i64, !nosanitize !12 ; 3 uses
  %i.v = add i64 %i.t, %i.u, !nosanitize !12      ; 3 uses
  %i.w = icmp ne ptr %i.l, null, !nosanitize !12
  %i.x = icmp eq i64 %i.v, 0
  %i.y = xor i1 %i.w, %i.x
  %i.z = icmp uge i64 %i.v, %i.u, !nosanitize !12
  %i.aa = icmp slt i32 %i.n, 0
  %i.ab = xor i1 %i.aa, %i.z
  %i.ac = and i1 %i.y, %i.ab, !nosanitize !12
  br i1 %i.ac, label %bb.k, label %bb.j, !prof !13, !nosanitize !12

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @408, i64 %i.u, i64 %i.v) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds [48 x i8], ptr %i.l, i64 %i.s
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.0 = phi ptr [ %i.ad, %bb.k ], [ %i.e, %bb.f ] ; 4 uses
  %.pre-phi11 = ptrtoint ptr %.0 to i64           ; 2 uses
  %i.ae = icmp ne ptr %.0, null, !nosanitize !12
  %i.af = and i64 %.pre-phi11, 7, !nosanitize !12
  %i.ag = icmp eq i64 %i.af, 0, !nosanitize !12
  %i.ah = and i1 %i.ae, %i.ag, !nosanitize !12
  br i1 %i.ah, label %bb.n, label %bb.m, !prof !13, !nosanitize !12

bb.m:                                             ; preds = %bb.l
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @409, i64 %.pre-phi11) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.n:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 40
  store i32 -1, ptr %i.ai, align 8, !tbaa !63
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3HullBuilder_EnterHorizonFace(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #7 !func_sanitize !325 {
bb.a:
  %i.a = icmp ne ptr %1, null, !nosanitize !12
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !12  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12
  %i.e = and i1 %i.a, %i.d, !nosanitize !12
  br i1 %i.e, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @432, i64 %i.b) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.f, align 8, !tbaa !96
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !326  ; 8 uses
  %.not91.i = icmp eq ptr %i.i, %i.g
  br i1 %.not91.i, label %b3HullBuilder_DrainConflictList.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.k = and i64 %i.j, 7
  %i.l = icmp eq i64 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %i.l, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.i, !prof !13, !nosanitize !12

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.i, %b3QHList_PushBack.exit.us.us.i
  %.092.us.us.i = phi ptr [ %i.t, %b3QHList_PushBack.exit.us.us.i ], [ %i.i, %.lr.ph.i ] ; 9 uses
  %i.n = icmp ne ptr %.092.us.us.i, null, !nosanitize !12
  %i.o = ptrtoint ptr %.092.us.us.i to i64, !nosanitize !12 ; 2 uses
  %i.p = and i64 %i.o, 7, !nosanitize !12
  %i.q = icmp eq i64 %i.p, 0, !nosanitize !12
  %i.r = and i1 %i.n, %i.q, !nosanitize !12
  br i1 %i.r, label %bb.d, label %.split.us.i, !prof !13, !nosanitize !12

bb.d:                                             ; preds = %.lr.ph.split.us.split.us.i
  %i.s = getelementptr inbounds nuw i8, ptr %.092.us.us.i, i64 8 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.092.us.us.i, i64 16
  store ptr null, ptr %i.u, align 8, !tbaa !89
  %i.v = load ptr, ptr %.092.us.us.i, align 8, !tbaa !32 ; 4 uses
  %i.w = icmp ne ptr %i.v, null, !nosanitize !12
  %i.x = ptrtoint ptr %i.v to i64, !nosanitize !12 ; 2 uses
  %i.y = and i64 %i.x, 7, !nosanitize !12
  %i.z = icmp eq i64 %i.y, 0, !nosanitize !12
  %i.aa = and i1 %i.w, %i.z, !nosanitize !12
  br i1 %i.aa, label %bb.e, label %.split103.us.i, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.t, ptr %i.ab, align 8, !tbaa !33
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !33  ; 3 uses
  %i.ad = icmp ne ptr %i.ac, null, !nosanitize !12
  %i.ae = ptrtoint ptr %i.ac to i64, !nosanitize !12 ; 2 uses
  %i.af = and i64 %i.ae, 7, !nosanitize !12
  %i.ag = icmp eq i64 %i.af, 0, !nosanitize !12
  %i.ah = and i1 %i.ad, %i.ag, !nosanitize !12
  br i1 %i.ah, label %b3QHList_Remove.exit.us.us.i, label %.split109.us.i, !prof !13, !nosanitize !12

b3QHList_Remove.exit.us.us.i:                     ; preds = %bb.e
  store ptr %i.v, ptr %i.ac, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.092.us.us.i, i8 0, i64 16, i1 false)
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !32  ; 4 uses
  %i.aj = icmp ne ptr %i.ai, null, !nosanitize !12
  %i.ak = ptrtoint ptr %i.ai to i64, !nosanitize !12 ; 2 uses
  %i.al = and i64 %i.ak, 7, !nosanitize !12
  %i.am = icmp eq i64 %i.al, 0, !nosanitize !12
  %i.an = and i1 %i.aj, %i.am, !nosanitize !12
  br i1 %i.an, label %bb.f, label %.split115.us.i, !prof !13, !nosanitize !12

bb.f:                                             ; preds = %b3QHList_Remove.exit.us.us.i
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !32 ; 4 uses
  store ptr %i.ao, ptr %.092.us.us.i, align 8, !tbaa !32
  store ptr %i.ai, ptr %i.s, align 8, !tbaa !33
  %i.ap = icmp ne ptr %i.ao, null, !nosanitize !12
  %i.aq = ptrtoint ptr %i.ao to i64, !nosanitize !12 ; 2 uses
  %i.ar = and i64 %i.aq, 7, !nosanitize !12
  %i.as = icmp eq i64 %i.ar, 0, !nosanitize !12
  %i.at = and i1 %i.ap, %i.as, !nosanitize !12
  br i1 %i.at, label %bb.g, label %.split118.us.i, !prof !13, !nosanitize !12

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %.092.us.us.i, ptr %i.au, align 8, !tbaa !33
  %i.av = load ptr, ptr %i.s, align 8, !tbaa !33  ; 3 uses
  %i.aw = icmp ne ptr %i.av, null, !nosanitize !12
  %i.ax = ptrtoint ptr %i.av to i64, !nosanitize !12 ; 2 uses
  %i.ay = and i64 %i.ax, 7, !nosanitize !12
  %i.az = icmp eq i64 %i.ay, 0, !nosanitize !12
  %i.ba = and i1 %i.aw, %i.az, !nosanitize !12
  br i1 %i.ba, label %b3QHList_PushBack.exit.us.us.i, label %.split124.us.i, !prof !13, !nosanitize !12

b3QHList_PushBack.exit.us.us.i:                   ; preds = %bb.g
  store ptr %.092.us.us.i, ptr %i.av, align 8, !tbaa !32
  %.not.us.us.i = icmp eq ptr %i.t, %i.g
  br i1 %.not.us.us.i, label %b3HullBuilder_DrainConflictList.exit, label %.lr.ph.split.us.split.us.i, !llvm.loop !324

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bb = icmp ne ptr %i.i, null, !nosanitize !12
  %i.bc = ptrtoint ptr %i.i to i64, !nosanitize !12 ; 2 uses
  %i.bd = and i64 %i.bc, 7, !nosanitize !12
  %i.be = icmp eq i64 %i.bd, 0, !nosanitize !12
  %i.bf = and i1 %i.bb, %i.be, !nosanitize !12
  br i1 %i.bf, label %bb.h, label %.split.us.i, !prof !13, !nosanitize !12

.split.us.i:                                      ; preds = %.lr.ph.split.us.split.us.i, %.lr.ph.split.i
  %.us-phi.i = phi i64 [ %i.bc, %.lr.ph.split.i ], [ %i.o, %.lr.ph.split.us.split.us.i ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @435, i64 %.us-phi.i) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %i.bi, align 8, !tbaa !89
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !32  ; 4 uses
  %i.bk = icmp ne ptr %i.bj, null, !nosanitize !12
  %i.bl = ptrtoint ptr %i.bj to i64, !nosanitize !12 ; 2 uses
  %i.bm = and i64 %i.bl, 7, !nosanitize !12
  %i.bn = icmp eq i64 %i.bm, 0, !nosanitize !12
  %i.bo = and i1 %i.bk, %i.bn, !nosanitize !12
  br i1 %i.bo, label %bb.i, label %.split103.us.i, !prof !13, !nosanitize !12

.split103.us.i:                                   ; preds = %bb.d, %bb.h
  %.us-phi104.i = phi i64 [ %i.bl, %bb.h ], [ %i.x, %bb.d ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @418, i64 %.us-phi104.i) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bh, ptr %i.bp, align 8, !tbaa !33
  %i.bq = load ptr, ptr %i.bg, align 8, !tbaa !33 ; 3 uses
  %i.br = icmp ne ptr %i.bq, null, !nosanitize !12
  %i.bs = ptrtoint ptr %i.bq to i64, !nosanitize !12 ; 2 uses
  %i.bt = and i64 %i.bs, 7, !nosanitize !12
  %i.bu = icmp eq i64 %i.bt, 0, !nosanitize !12
  %i.bv = and i1 %i.br, %i.bu, !nosanitize !12
  br i1 %i.bv, label %b3QHList_Remove.exit.i, label %.split109.us.i, !prof !13, !nosanitize !12

.split109.us.i:                                   ; preds = %bb.e, %bb.i
  %.us-phi110.i = phi i64 [ %i.bs, %bb.i ], [ %i.ae, %bb.e ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @419, i64 %.us-phi110.i) #13, !nosanitize !12
  unreachable, !nosanitize !12

b3QHList_Remove.exit.i:                           ; preds = %bb.i
  store ptr %i.bj, ptr %i.bq, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @436, i64 %i.j) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split115.us.i:                                   ; preds = %b3QHList_Remove.exit.us.us.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @390, i64 %i.ak) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split118.us.i:                                   ; preds = %bb.f
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @392, i64 %i.aq) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split124.us.i:                                   ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @393, i64 %i.ax) #13, !nosanitize !12
  unreachable, !nosanitize !12

b3HullBuilder_DrainConflictList.exit:             ; preds = %b3QHList_PushBack.exit.us.us.i, %bb.c
  %i.bw = icmp ne ptr %3, null, !nosanitize !12
  %i.bx = ptrtoint ptr %3 to i64, !nosanitize !12 ; 2 uses
  %i.by = and i64 %i.bx, 7, !nosanitize !12
  %i.bz = icmp eq i64 %i.by, 0, !nosanitize !12
  %i.ca = and i1 %i.bw, %i.bz, !nosanitize !12
  br i1 %i.ca, label %bb.k, label %bb.j, !prof !13, !nosanitize !12

bb.j:                                             ; preds = %b3HullBuilder_DrainConflictList.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @433, i64 %i.bx) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.k:                                             ; preds = %b3HullBuilder_DrainConflictList.exit
  store ptr %1, ptr %3, align 8, !tbaa !327
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 0, ptr %i.cb, align 8, !tbaa !93
  %.not17 = icmp eq ptr %2, null
  br i1 %.not17, label %bb.o, label %bb.l
end_hunk_0
begin_hunk_1_@b3HullBuilder_ConnectFaces:bb.a
  br i1 %i.cm, label %bb.r, label %bb.q, !prof !13, !nosanitize !12

bb.q:                                             ; preds = %bb.p
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @475, i64 %i.ci) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.r:                                             ; preds = %bb.p
  store ptr %i.ah, ptr %i.ch, align 8, !tbaa !60
  %i.cn = load ptr, ptr %i.s, align 8, !tbaa !78  ; 4 uses
  %i.co = icmp ne ptr %i.cn, null, !nosanitize !12
  %i.cp = ptrtoint ptr %i.cn to i64, !nosanitize !12 ; 2 uses
  %i.cq = and i64 %i.cp, 7, !nosanitize !12
  %i.cr = icmp eq i64 %i.cq, 0, !nosanitize !12
  %i.cs = and i1 %i.co, %i.cr, !nosanitize !12
  br i1 %i.cs, label %bb.t, label %bb.s, !prof !13, !nosanitize !12

bb.s:                                             ; preds = %bb.r
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @476, i64 %i.cp) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.t:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store i32 1, ptr %i.ct, align 8, !tbaa !96
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr null, ptr %i.cu, align 8, !tbaa !61
  %i.cv = icmp ne ptr %.046494, null, !nosanitize !12
  %i.cw = ptrtoint ptr %.046494 to i64, !nosanitize !12 ; 2 uses
  %i.cx = and i64 %i.cw, 7, !nosanitize !12
  %i.cy = icmp eq i64 %i.cx, 0, !nosanitize !12
  %i.cz = and i1 %i.cv, %i.cy, !nosanitize !12
  br i1 %i.cz, label %.lr.ph497, label %bb.v, !prof !134, !nosanitize !12

.lr.ph497:                                        ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %.046494, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !66 ; 3 uses
  %.not.us512 = icmp eq ptr %.045.us1403, %i.db
  br i1 %.not.us512, label %.split501.us, label %.lr.ph514

.lr.ph514:                                        ; preds = %.lr.ph497, %bb.u
  %.0495.us513 = phi ptr [ %i.dj, %bb.u ], [ %.045.us1403, %.lr.ph497 ] ; 4 uses
  %i.dc = icmp ne ptr %.0495.us513, null, !nosanitize !12
  %i.dd = ptrtoint ptr %.0495.us513 to i64, !nosanitize !12 ; 2 uses
  %i.de = and i64 %i.dd, 7, !nosanitize !12
  %i.df = icmp eq i64 %i.de, 0, !nosanitize !12
  %i.dg = and i1 %i.dc, %i.df, !nosanitize !12
  br i1 %i.dg, label %bb.u, label %.split504.us, !prof !13, !nosanitize !12

bb.u:                                             ; preds = %.lr.ph514
  %i.dh = getelementptr inbounds nuw i8, ptr %.0495.us513, i64 24
  store ptr %i.g, ptr %i.dh, align 8, !tbaa !78
  %i.di = getelementptr inbounds nuw i8, ptr %.0495.us513, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !66 ; 2 uses
  %.not.us = icmp eq ptr %i.dj, %i.db
  br i1 %.not.us, label %.split501.us, label %.lr.ph514

bb.v:                                             ; preds = %bb.t
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @477, i64 %i.cw) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split504.us:                                     ; preds = %.lr.ph514
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @478, i64 %i.dd) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split501.us:                                     ; preds = %bb.u, %.lr.ph497
  %i.dk = getelementptr inbounds nuw i8, ptr %.048.us1402, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !66 ; 2 uses
  %.not16.i = icmp eq ptr %i.dl, %.047493
  br i1 %.not16.i, label %b3HullBuilder_DestroyEdges.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split501.us
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  br label %.lr.ph.split.us.split.us.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.i, %b3HullBuilder_RetireEdge.exit.us.us.i
  %.017.us.us.i = phi ptr [ %i.dt, %b3HullBuilder_RetireEdge.exit.us.us.i ], [ %i.dl, %.lr.ph.i ] ; 4 uses
  %i.dn = icmp ne ptr %.017.us.us.i, null, !nosanitize !12
  %i.do = ptrtoint ptr %.017.us.us.i to i64, !nosanitize !12 ; 2 uses
  %i.dp = and i64 %i.do, 7, !nosanitize !12
  %i.dq = icmp eq i64 %i.dp, 0, !nosanitize !12
  %i.dr = and i1 %i.dn, %i.dq, !nosanitize !12
  br i1 %i.dr, label %b3HullBuilder_RetireEdge.exit.us.us.i, label %.split.us.i, !prof !13, !nosanitize !12

b3HullBuilder_RetireEdge.exit.us.us.i:            ; preds = %.lr.ph.split.us.split.us.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.017.us.us.i, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !66 ; 2 uses
  %i.du = load ptr, ptr %i.dm, align 8, !tbaa !99
  store ptr %i.du, ptr %i.ds, align 8, !tbaa !66
  store ptr %.017.us.us.i, ptr %i.dm, align 8, !tbaa !99
  %.not.us.us.i = icmp eq ptr %i.dt, %.047493
  br i1 %.not.us.us.i, label %b3HullBuilder_DestroyEdges.exit.loopexit, label %.lr.ph.split.us.split.us.i, !llvm.loop !329

.split.us.i:                                      ; preds = %.lr.ph.split.us.split.us.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @479, i64 %i.do) #13, !nosanitize !12
  unreachable, !nosanitize !12

b3HullBuilder_DestroyEdges.exit.loopexit:         ; preds = %b3HullBuilder_RetireEdge.exit.us.us.i
  %.pre = load ptr, ptr %i.da, align 8, !tbaa !66
  br label %b3HullBuilder_DestroyEdges.exit

b3HullBuilder_DestroyEdges.exit:                  ; preds = %b3HullBuilder_DestroyEdges.exit.loopexit, %.split501.us
  %i.dv = phi ptr [ %.pre, %b3HullBuilder_DestroyEdges.exit.loopexit ], [ %i.db, %.split501.us ] ; 2 uses
  %.not16.i61 = icmp eq ptr %i.dv, %.045.us1403
  br i1 %.not16.i61, label %b3HullBuilder_DestroyEdges.exit77, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %b3HullBuilder_DestroyEdges.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  br label %.lr.ph.split.us.split.us.i73

.lr.ph.split.us.split.us.i73:                     ; preds = %.lr.ph.i62, %b3HullBuilder_RetireEdge.exit.us.us.i75
  %.017.us.us.i74 = phi ptr [ %i.ed, %b3HullBuilder_RetireEdge.exit.us.us.i75 ], [ %i.dv, %.lr.ph.i62 ] ; 4 uses
  %i.dx = icmp ne ptr %.017.us.us.i74, null, !nosanitize !12
  %i.dy = ptrtoint ptr %.017.us.us.i74 to i64, !nosanitize !12 ; 2 uses
  %i.dz = and i64 %i.dy, 7, !nosanitize !12
  %i.ea = icmp eq i64 %i.dz, 0, !nosanitize !12
  %i.eb = and i1 %i.dx, %i.ea, !nosanitize !12
  br i1 %i.eb, label %b3HullBuilder_RetireEdge.exit.us.us.i75, label %.split.us.i65, !prof !13, !nosanitize !12

b3HullBuilder_RetireEdge.exit.us.us.i75:          ; preds = %.lr.ph.split.us.split.us.i73
  %i.ec = getelementptr inbounds nuw i8, ptr %.017.us.us.i74, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !66 ; 2 uses
  %i.ee = load ptr, ptr %i.dw, align 8, !tbaa !99
  store ptr %i.ee, ptr %i.ec, align 8, !tbaa !66
  store ptr %.017.us.us.i74, ptr %i.dw, align 8, !tbaa !99
  %.not.us.us.i76 = icmp eq ptr %i.ed, %.045.us1403
  br i1 %.not.us.us.i76, label %b3HullBuilder_DestroyEdges.exit77, label %.lr.ph.split.us.split.us.i73, !llvm.loop !329

.split.us.i65:                                    ; preds = %.lr.ph.split.us.split.us.i73
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @479, i64 %i.dy) #13, !nosanitize !12
  unreachable, !nosanitize !12

b3HullBuilder_DestroyEdges.exit77:                ; preds = %b3HullBuilder_RetireEdge.exit.us.us.i75, %b3HullBuilder_DestroyEdges.exit
  tail call fastcc void @b3HullBuilder_ConnectEdges(ptr noundef %0, ptr noundef %.048.us1402, ptr noundef %.045.us1403)
  tail call fastcc void @b3HullBuilder_ConnectEdges(ptr noundef %0, ptr noundef %.046494, ptr noundef nonnull %.047493)
  tail call fastcc void @b3NewellPlane(ptr noundef nonnull %i.g)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 8, !tbaa !87 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %.018.i1405 = load ptr, ptr %i.ei, align 8, !tbaa !33 ; 2 uses
  %.not.i1406 = icmp eq ptr %.018.i1405, %i.eh
  br i1 %.not.i1406, label %._crit_edge1411, label %.lr.ph1410

.lr.ph1410:                                       ; preds = %b3HullBuilder_DestroyEdges.exit77, %bb.x
  %.018.i1409 = phi ptr [ %.018.i, %bb.x ], [ %.018.i1405, %b3HullBuilder_DestroyEdges.exit77 ] ; 6 uses
  %.0.i1408 = phi ptr [ %.1.i, %bb.x ], [ null, %b3HullBuilder_DestroyEdges.exit77 ]
  %.016.i1407 = phi float [ %.117.i, %bb.x ], [ %i.eg, %b3HullBuilder_DestroyEdges.exit77 ] ; 2 uses
  %i.el = icmp ne ptr %.018.i1409, null, !nosanitize !12
  %i.em = ptrtoint ptr %.018.i1409 to i64, !nosanitize !12 ; 2 uses
  %i.en = and i64 %i.em, 7, !nosanitize !12
  %i.eo = icmp eq i64 %i.en, 0, !nosanitize !12
  %i.ep = and i1 %i.el, %i.eo, !nosanitize !12
  br i1 %i.ep, label %bb.x, label %bb.w, !prof !13, !nosanitize !12

bb.w:                                             ; preds = %.lr.ph1410
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @510, i64 %i.em) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.x:                                             ; preds = %.lr.ph1410
  %i.eq = getelementptr inbounds nuw i8, ptr %.018.i1409, i64 24
  %i.er = load <2 x float>, ptr %i.ej, align 8
  %i.es = load <2 x float>, ptr %i.ek, align 8    ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.eq, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.018.i1409, i64 32
  %.sroa.2.0.copyload.i = load float, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.1.8.vec.extract.i.i = extractelement <2 x float> %i.es, i64 0
  %i.et = fmul <2 x float> %i.er, %.sroa.0.0.copyload.i ; 2 uses
  %shift = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.et, %shift
  %i.eu = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ev = fmul float %.sroa.1.8.vec.extract.i.i, %.sroa.2.0.copyload.i
  %i.ew = fadd float %i.ev, %i.eu
  %.sroa.1.12.vec.extract.i.i = extractelement <2 x float> %i.es, i64 1
  %i.ex = fsub float %i.ew, %.sroa.1.12.vec.extract.i.i ; 2 uses
  %i.ey = fcmp ogt float %i.ex, %.016.i1407       ; 2 uses
  %.117.i = select i1 %i.ey, float %i.ex, float %.016.i1407 ; 2 uses
  %.1.i = select i1 %i.ey, ptr %.018.i1409, ptr %.0.i1408 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.018.i1409, i64 8
  %.018.i = load ptr, ptr %i.ez, align 8, !tbaa !33 ; 2 uses
  %.not.i = icmp eq ptr %.018.i, %i.eh
  br i1 %.not.i, label %._crit_edge1411, label %.lr.ph1410

._crit_edge1411:                                  ; preds = %bb.x, %b3HullBuilder_DestroyEdges.exit77
  %.016.i.lcssa = phi float [ %i.eg, %b3HullBuilder_DestroyEdges.exit77 ], [ %.117.i, %bb.x ]
  %.0.i.lcssa = phi ptr [ null, %b3HullBuilder_DestroyEdges.exit77 ], [ %.1.i, %bb.x ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 2 uses
  store ptr %.0.i.lcssa, ptr %i.fa, align 8, !tbaa !91
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 60 ; 3 uses
  store float %.016.i.lcssa, ptr %i.fb, align 4, !tbaa !90
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fd = load i32, ptr %i.cf, align 4, !tbaa !151
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %.lr.ph517, label %b3HullBuilder_AbsorbFaces.exit

.lr.ph517:                                        ; preds = %._crit_edge1411, %.lr.ph754.split.split.us.i
  %indvars.iv.i516 = phi i64 [ %indvars.iv.next.i, %.lr.ph754.split.split.us.i ], [ 0, %._crit_edge1411 ] ; 4 uses
  %i.ff = load ptr, ptr %i.cg, align 8, !tbaa !51 ; 4 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv.i516 ; 2 uses
  %i.fh = shl nuw nsw i64 %indvars.iv.i516, 3     ; 2 uses
  %i.fi = ptrtoint ptr %i.ff to i64               ; 3 uses
  %i.fj = add i64 %i.fh, %i.fi, !nosanitize !12   ; 4 uses
  %i.fk = icmp ne ptr %i.ff, null, !nosanitize !12 ; 2 uses
  %i.fl = icmp eq i64 %i.fj, 0
  %i.fm = xor i1 %i.fk, %i.fl
  %i.fn = icmp uge i64 %i.fj, %i.fi, !nosanitize !12
  %i.fo = and i1 %i.fn, %i.fm, !nosanitize !12
  br i1 %i.fo, label %bb.y, label %.split758.us.i, !prof !13, !nosanitize !12

bb.y:                                             ; preds = %.lr.ph517
  %i.fp = ptrtoint ptr %i.fg to i64, !nosanitize !12 ; 2 uses
  %i.fq = and i64 %i.fp, 7, !nosanitize !12
  %i.fr = icmp eq i64 %i.fq, 0, !nosanitize !12
  %i.fs = and i1 %i.fk, %i.fr
  br i1 %i.fs, label %bb.z, label %.split762.us.i, !prof !13, !nosanitize !12

bb.z:                                             ; preds = %bb.y
  %i.ft = load ptr, ptr %i.fg, align 8, !tbaa !60 ; 4 uses
  %i.fu = icmp ne ptr %i.ft, null, !nosanitize !12
  %i.fv = ptrtoint ptr %i.ft to i64, !nosanitize !12 ; 2 uses
  %i.fw = and i64 %i.fv, 7, !nosanitize !12
  %i.fx = icmp eq i64 %i.fw, 0, !nosanitize !12
  %i.fy = and i1 %i.fu, %i.fx, !nosanitize !12
  br i1 %i.fy, label %bb.aa, label %.split765.us.i, !prof !13, !nosanitize !12

bb.aa:                                            ; preds = %bb.z
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 64 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ft, i64 72
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !33 ; 2 uses
  %.not532.us.i = icmp eq ptr %i.gb, %i.fz
  br i1 %.not532.us.i, label %._crit_edge.split.us.split.us.us.i, label %.lr.ph.split.us.split.us.us.i

.lr.ph.split.us.split.us.us.i:                    ; preds = %bb.aa, %bb.ak
  %.030533.us.us.us.i = phi ptr [ %i.gi, %bb.ak ], [ %i.gb, %bb.aa ] ; 16 uses
  %i.gc = icmp ne ptr %.030533.us.us.us.i, null, !nosanitize !12
  %i.gd = ptrtoint ptr %.030533.us.us.us.i to i64, !nosanitize !12 ; 2 uses
  %i.ge = and i64 %i.gd, 7, !nosanitize !12
  %i.gf = icmp eq i64 %i.ge, 0, !nosanitize !12
  %i.gg = and i1 %i.gc, %i.gf, !nosanitize !12
  br i1 %i.gg, label %bb.ab, label %.split.us.i80, !prof !13, !nosanitize !12

bb.ab:                                            ; preds = %.lr.ph.split.us.split.us.us.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.030533.us.us.us.i, i64 8 ; 6 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !33 ; 3 uses
  %i.gj = load ptr, ptr %.030533.us.us.us.i, align 8, !tbaa !32 ; 4 uses
  %i.gk = icmp ne ptr %i.gj, null, !nosanitize !12
  %i.gl = ptrtoint ptr %i.gj to i64, !nosanitize !12 ; 2 uses
  %i.gm = and i64 %i.gl, 7, !nosanitize !12
  %i.gn = icmp eq i64 %i.gm, 0, !nosanitize !12
  %i.go = and i1 %i.gk, %i.gn, !nosanitize !12
  br i1 %i.go, label %bb.ac, label %.split541.us.i, !prof !13, !nosanitize !12

bb.ac:                                            ; preds = %bb.ab
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store ptr %i.gi, ptr %i.gp, align 8, !tbaa !33
  %i.gq = load ptr, ptr %i.gh, align 8, !tbaa !33 ; 3 uses
  %i.gr = icmp ne ptr %i.gq, null, !nosanitize !12
  %i.gs = ptrtoint ptr %i.gq to i64, !nosanitize !12 ; 2 uses
  %i.gt = and i64 %i.gs, 7, !nosanitize !12
  %i.gu = icmp eq i64 %i.gt, 0, !nosanitize !12
  %i.gv = and i1 %i.gr, %i.gu, !nosanitize !12
  br i1 %i.gv, label %b3QHList_Remove.exit.us.us.us.i, label %.split547.us.i, !prof !13, !nosanitize !12

b3QHList_Remove.exit.us.us.us.i:                  ; preds = %bb.ac
  store ptr %i.gj, ptr %i.gq, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.030533.us.us.us.i, i8 0, i64 16, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %.030533.us.us.us.i, i64 24
  %i.gx = load <2 x float>, ptr %i.ej, align 8
  %i.gy = load <2 x float>, ptr %i.ek, align 8    ; 2 uses
  %.sroa.0.0.copyload.us.us.us.i = load <2 x float>, ptr %i.gw, align 8
  %.sroa.2.0..sroa_idx.us.us.us.i = getelementptr inbounds nuw i8, ptr %.030533.us.us.us.i, i64 32
  %.sroa.2.0.copyload.us.us.us.i = load float, ptr %.sroa.2.0..sroa_idx.us.us.us.i, align 8
  %.sroa.1.8.vec.extract.i.us.us.us.i = extractelement <2 x float> %i.gy, i64 0
  %i.gz = fmul <2 x float> %i.gx, %.sroa.0.0.copyload.us.us.us.i ; 2 uses
  %shift1415 = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1416 = fadd <2 x float> %i.gz, %shift1415
  %i.ha = extractelement <2 x float> %foldExtExtBinop1416, i64 0
  %i.hb = fmul float %.sroa.1.8.vec.extract.i.us.us.us.i, %.sroa.2.0.copyload.us.us.us.i
  %i.hc = fadd float %i.hb, %i.ha
  %.sroa.1.12.vec.extract.i.us.us.us.i = extractelement <2 x float> %i.gy, i64 1
  %i.hd = fsub float %i.hc, %.sroa.1.12.vec.extract.i.us.us.us.i ; 3 uses
  %i.he = load float, ptr %i.ef, align 8, !tbaa !87
  %i.hf = fcmp ogt float %i.hd, %i.he
  br i1 %i.hf, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %b3QHList_Remove.exit.us.us.us.i
  %i.hg = load ptr, ptr %i.fc, align 8, !tbaa !32 ; 4 uses
  %i.hh = icmp ne ptr %i.hg, null, !nosanitize !12
  %i.hi = ptrtoint ptr %i.hg to i64, !nosanitize !12 ; 2 uses
  %i.hj = and i64 %i.hi, 7, !nosanitize !12
  %i.hk = icmp eq i64 %i.hj, 0, !nosanitize !12
  %i.hl = and i1 %i.hh, %i.hk, !nosanitize !12
  br i1 %i.hl, label %bb.ae, label %.split556.us.i, !prof !13, !nosanitize !12

bb.ae:                                            ; preds = %bb.ad
  %i.hm = load ptr, ptr %i.hg, align 8, !tbaa !32 ; 4 uses
  store ptr %i.hm, ptr %.030533.us.us.us.i, align 8, !tbaa !32
  store ptr %i.hg, ptr %i.gh, align 8, !tbaa !33
  %i.hn = icmp ne ptr %i.hm, null, !nosanitize !12
  %i.ho = ptrtoint ptr %i.hm to i64, !nosanitize !12 ; 2 uses
  %i.hp = and i64 %i.ho, 7, !nosanitize !12
  %i.hq = icmp eq i64 %i.hp, 0, !nosanitize !12
  %i.hr = and i1 %i.hn, %i.hq, !nosanitize !12
  br i1 %i.hr, label %bb.af, label %.split559.us.i, !prof !13, !nosanitize !12

bb.af:                                            ; preds = %bb.ae
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store ptr %.030533.us.us.us.i, ptr %i.hs, align 8, !tbaa !33
  %i.ht = load ptr, ptr %i.gh, align 8, !tbaa !33 ; 3 uses
  %i.hu = icmp ne ptr %i.ht, null, !nosanitize !12
  %i.hv = ptrtoint ptr %i.ht to i64, !nosanitize !12 ; 2 uses
  %i.hw = and i64 %i.hv, 7, !nosanitize !12
  %i.hx = icmp eq i64 %i.hw, 0, !nosanitize !12
  %i.hy = and i1 %i.hu, %i.hx, !nosanitize !12
  br i1 %i.hy, label %b3QHList_PushBack.exit38.us.us.us.i, label %.split565.us.i, !prof !13, !nosanitize !12

b3QHList_PushBack.exit38.us.us.us.i:              ; preds = %bb.af
  store ptr %.030533.us.us.us.i, ptr %i.ht, align 8, !tbaa !32
  %i.hz = getelementptr inbounds nuw i8, ptr %.030533.us.us.us.i, i64 16
  store ptr null, ptr %i.hz, align 8, !tbaa !89
  br label %bb.ak

bb.ag:                                            ; preds = %b3QHList_Remove.exit.us.us.us.i
  %i.ia = load ptr, ptr %i.eh, align 8, !tbaa !32 ; 4 uses
  %i.ib = icmp ne ptr %i.ia, null, !nosanitize !12
  %i.ic = ptrtoint ptr %i.ia to i64, !nosanitize !12 ; 2 uses
  %i.id = and i64 %i.ic, 7, !nosanitize !12
  %i.ie = icmp eq i64 %i.id, 0, !nosanitize !12
  %i.if = and i1 %i.ib, %i.ie, !nosanitize !12
  br i1 %i.if, label %bb.ah, label %.split574.us.i, !prof !13, !nosanitize !12

bb.ah:                                            ; preds = %bb.ag
  %i.ig = load ptr, ptr %i.ia, align 8, !tbaa !32 ; 4 uses
  store ptr %i.ig, ptr %.030533.us.us.us.i, align 8, !tbaa !32
  store ptr %i.ia, ptr %i.gh, align 8, !tbaa !33
  %i.ih = icmp ne ptr %i.ig, null, !nosanitize !12
  %i.ii = ptrtoint ptr %i.ig to i64, !nosanitize !12 ; 2 uses
  %i.ij = and i64 %i.ii, 7, !nosanitize !12
  %i.ik = icmp eq i64 %i.ij, 0, !nosanitize !12
  %i.il = and i1 %i.ih, %i.ik, !nosanitize !12
  br i1 %i.il, label %bb.ai, label %.split577.us.i, !prof !13, !nosanitize !12

bb.ai:                                            ; preds = %bb.ah
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store ptr %.030533.us.us.us.i, ptr %i.im, align 8, !tbaa !33
  %i.in = load ptr, ptr %i.gh, align 8, !tbaa !33 ; 3 uses
  %i.io = icmp ne ptr %i.in, null, !nosanitize !12
  %i.ip = ptrtoint ptr %i.in to i64, !nosanitize !12 ; 2 uses
  %i.iq = and i64 %i.ip, 7, !nosanitize !12
  %i.ir = icmp eq i64 %i.iq, 0, !nosanitize !12
  %i.is = and i1 %i.io, %i.ir, !nosanitize !12
  br i1 %i.is, label %b3QHList_PushBack.exit.us.us.us.i, label %.split583.us.i, !prof !13, !nosanitize !12

b3QHList_PushBack.exit.us.us.us.i:                ; preds = %bb.ai
  store ptr %.030533.us.us.us.i, ptr %i.in, align 8, !tbaa !32
  %i.it = getelementptr inbounds nuw i8, ptr %.030533.us.us.us.i, i64 16
  store ptr %i.g, ptr %i.it, align 8, !tbaa !89
  %i.iu = load float, ptr %i.fb, align 4, !tbaa !90
  %i.iv = fcmp ogt float %i.hd, %i.iu
  br i1 %i.iv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %b3QHList_PushBack.exit.us.us.us.i
  store float %i.hd, ptr %i.fb, align 4, !tbaa !90
  store ptr %.030533.us.us.us.i, ptr %i.fa, align 8, !tbaa !91
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %b3QHList_PushBack.exit.us.us.us.i, %b3QHList_PushBack.exit38.us.us.us.i
  %.not.us.us.us.i = icmp eq ptr %i.gi, %i.fz
  br i1 %.not.us.us.us.i, label %._crit_edge.split.us.split.us.us.loopexit.i, label %.lr.ph.split.us.split.us.us.i, !llvm.loop !330

._crit_edge.split.us.split.us.us.loopexit.i:      ; preds = %bb.ak
  %.pre.i = load ptr, ptr %i.cg, align 8, !tbaa !51 ; 2 uses
  %.pre1146.i = ptrtoint ptr %.pre.i to i64
  %.pre1147.i = add i64 %i.fh, %.pre1146.i, !nosanitize !12
  br label %._crit_edge.split.us.split.us.us.i

._crit_edge.split.us.split.us.us.i:               ; preds = %._crit_edge.split.us.split.us.us.loopexit.i, %bb.aa
  %.pre-phi1148.i = phi i64 [ %.pre1147.i, %._crit_edge.split.us.split.us.us.loopexit.i ], [ %i.fj, %bb.aa ] ; 3 uses
  %2 = phi ptr [ %.pre.i, %._crit_edge.split.us.split.us.us.loopexit.i ], [ %i.ff, %bb.aa ] ; 3 uses
  %.pre-phi.i.pre-phi = ptrtoint ptr %2 to i64    ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i516 ; 2 uses
  %i.ix = icmp ne ptr %2, null, !nosanitize !12   ; 2 uses
  %i.iy = icmp eq i64 %.pre-phi1148.i, 0
  %i.iz = xor i1 %i.iy, %i.ix
  %i.ja = icmp uge i64 %.pre-phi1148.i, %.pre-phi.i.pre-phi, !nosanitize !12
  %i.jb = and i1 %i.iz, %i.ja, !nosanitize !12
  br i1 %i.jb, label %bb.al, label %.split800.us.i, !prof !13, !nosanitize !12

bb.al:                                            ; preds = %._crit_edge.split.us.split.us.us.i
  %i.jc = ptrtoint ptr %i.iw to i64, !nosanitize !12 ; 2 uses
  %i.jd = and i64 %i.jc, 7, !nosanitize !12
  %i.je = icmp eq i64 %i.jd, 0, !nosanitize !12
  %i.jf = and i1 %i.ix, %i.je
  br i1 %i.jf, label %.lr.ph754.split.split.us.i, label %.split804.us.i, !prof !13, !nosanitize !12

.lr.ph754.split.split.us.i:                       ; preds = %bb.al
  %i.jg = load ptr, ptr %i.iw, align 8, !tbaa !60
  tail call fastcc void @b3HullBuilder_RetireFace(ptr noundef nonnull %0, ptr noundef %i.jg)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i516, 1 ; 2 uses
  %i.jh = load i32, ptr %i.cf, align 4, !tbaa !151
  %i.ji = sext i32 %i.jh to i64
  %i.jj = icmp slt i64 %indvars.iv.next.i, %i.ji
  br i1 %i.jj, label %.lr.ph517, label %b3HullBuilder_AbsorbFaces.exit

.split758.us.i:                                   ; preds = %.lr.ph517
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @511, i64 %i.fi, i64 %i.fj) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split762.us.i:                                   ; preds = %bb.y
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @512, i64 %i.fp) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split765.us.i:                                   ; preds = %bb.z
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @513, i64 %i.fv) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split.us.i80:                                    ; preds = %.lr.ph.split.us.split.us.us.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @514, i64 %i.gd) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split541.us.i:                                   ; preds = %bb.ab
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @418, i64 %i.gl) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split547.us.i:                                   ; preds = %bb.ac
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @419, i64 %i.gs) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split574.us.i:                                   ; preds = %bb.ag
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @390, i64 %i.ic) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split577.us.i:                                   ; preds = %bb.ah
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @392, i64 %i.ii) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split583.us.i:                                   ; preds = %bb.ai
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @393, i64 %i.ip) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split556.us.i:                                   ; preds = %bb.ad
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @390, i64 %i.hi) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split559.us.i:                                   ; preds = %bb.ae
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @392, i64 %i.ho) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split565.us.i:                                   ; preds = %bb.af
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @393, i64 %i.hv) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split800.us.i:                                   ; preds = %._crit_edge.split.us.split.us.us.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @515, i64 %.pre-phi.i.pre-phi, i64 %.pre-phi1148.i) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split804.us.i:                                   ; preds = %bb.al
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @516, i64 %i.jc) #13, !nosanitize !12
  unreachable, !nosanitize !12

b3HullBuilder_AbsorbFaces.exit:                   ; preds = %.lr.ph754.split.split.us.i, %._crit_edge1411
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3HullBuilder_ConnectEdges(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 !func_sanitize !333 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64, !nosanitize !12  ; 2 uses
  %i.b = and i64 %i.a, 7, !nosanitize !12
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !12
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @481, i64 %i.a) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 9 uses
  %i.f = icmp ne ptr %i.e, null, !nosanitize !12
  %i.g = ptrtoint ptr %i.e to i64, !nosanitize !12 ; 2 uses
  %i.h = and i64 %i.g, 7, !nosanitize !12
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !12
  %i.j = and i1 %i.f, %i.i, !nosanitize !12
  br i1 %i.j, label %bb.e, label %bb.d, !prof !13, !nosanitize !12

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @482, i64 %i.g) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 6 uses
  %i.m = icmp ne ptr %2, null, !nosanitize !12
  %i.n = ptrtoint ptr %2 to i64, !nosanitize !12  ; 2 uses
  %i.o = and i64 %i.n, 7, !nosanitize !12
  %i.p = icmp eq i64 %i.o, 0, !nosanitize !12
  %i.q = and i1 %i.m, %i.p, !nosanitize !12
  br i1 %i.q, label %bb.g, label %bb.f, !prof !13, !nosanitize !12

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @483, i64 %i.n) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !65   ; 13 uses
  %i.t = icmp ne ptr %i.s, null, !nosanitize !12
  %i.u = ptrtoint ptr %i.s to i64, !nosanitize !12 ; 2 uses
  %i.v = and i64 %i.u, 7, !nosanitize !12
  %i.w = icmp eq i64 %i.v, 0, !nosanitize !12
  %i.x = and i1 %i.t, %i.w, !nosanitize !12
  br i1 %i.x, label %bb.i, label %bb.h, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @484, i64 %i.u) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !78   ; 2 uses
  %i.aa = icmp eq ptr %i.l, %i.z
  br i1 %i.aa, label %bb.j, label %bb.bl

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !78 ; 3 uses
  %i.ad = icmp ne ptr %i.ac, null, !nosanitize !12
  %i.ae = ptrtoint ptr %i.ac to i64, !nosanitize !12 ; 2 uses
  %i.af = and i64 %i.ae, 7, !nosanitize !12
  %i.ag = icmp eq i64 %i.af, 0, !nosanitize !12
  %i.ah = and i1 %i.ad, %i.ag, !nosanitize !12
  br i1 %i.ah, label %bb.l, label %bb.k, !prof !13, !nosanitize !12

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @485, i64 %i.ae) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.l:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !61
  %i.ak = icmp eq ptr %i.aj, %2
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %1, ptr %i.ai, align 8, !tbaa !61
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = icmp ne ptr %i.l, null, !nosanitize !12
  %i.am = ptrtoint ptr %i.l to i64, !nosanitize !12 ; 2 uses
  %i.an = and i64 %i.am, 7, !nosanitize !12
  %i.ao = icmp eq i64 %i.an, 0, !nosanitize !12
  %i.ap = and i1 %i.al, %i.ao, !nosanitize !12
  br i1 %i.ap, label %bb.p, label %bb.o, !prof !13, !nosanitize !12

bb.o:                                             ; preds = %bb.n
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @498, i64 %i.am) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.p:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !61 ; 3 uses
  br label %bb.v

bb.q:                                             ; preds = %bb.x
  %i.as = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bd, i32 1), !nosanitize !12 ; 2 uses
  %i.at = extractvalue { i32, i1 } %i.as, 0, !nosanitize !12 ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.as, 1, !nosanitize !12
  br i1 %i.au, label %bb.u, label %bb.r, !prof !131, !nosanitize !12

bb.r:                                             ; preds = %bb.q
  %i.av = icmp ne ptr %i.bk, null, !nosanitize !12
  %i.aw = ptrtoint ptr %i.bk to i64, !nosanitize !12 ; 2 uses
  %i.ax = and i64 %i.aw, 7, !nosanitize !12
  %i.ay = icmp eq i64 %i.ax, 0, !nosanitize !12
  %i.az = and i1 %i.av, %i.ay, !nosanitize !12
  br i1 %i.az, label %bb.s, label %bb.w, !prof !13, !nosanitize !12

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !66 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.bb, %i.ar
  br i1 %.not.i.1, label %b3VertexCountOfFace.exit, label %bb.t, !llvm.loop !332

bb.t:                                             ; preds = %bb.s
  %i.bc = add i32 %i.at, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @499, i64 2147483647, i64 1) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.v:                                             ; preds = %bb.t, %bb.p
  %i.bd = phi i32 [ 1, %bb.p ], [ %i.bc, %bb.t ]  ; 2 uses
  %.0.i159 = phi ptr [ %i.ar, %bb.p ], [ %i.bb, %bb.t ] ; 3 uses
  %i.be = icmp ne ptr %.0.i159, null, !nosanitize !12
  %i.bf = ptrtoint ptr %.0.i159 to i64, !nosanitize !12 ; 2 uses
  %i.bg = and i64 %i.bf, 7, !nosanitize !12
  %i.bh = icmp eq i64 %i.bg, 0, !nosanitize !12
  %i.bi = and i1 %i.be, %i.bh, !nosanitize !12
  br i1 %i.bi, label %bb.x, label %bb.w, !prof !13, !nosanitize !12

bb.w:                                             ; preds = %bb.r, %bb.v
  %.lcssa168 = phi i64 [ %i.bf, %bb.v ], [ %i.aw, %bb.r ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @500, i64 %.lcssa168) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.x:                                             ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i159, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !66 ; 4 uses
  %.not.i = icmp eq ptr %i.bk, %i.ar
  br i1 %.not.i, label %b3VertexCountOfFace.exit, label %bb.q, !llvm.loop !332

b3VertexCountOfFace.exit:                         ; preds = %bb.s, %bb.x
  %.lcssa172 = phi i32 [ %i.bd, %bb.x ], [ %i.at, %bb.s ]
  %i.bl = icmp eq i32 %.lcssa172, 3
  br i1 %i.bl, label %bb.y, label %bb.as

bb.y:                                             ; preds = %b3VertexCountOfFace.exit
  %i.bm = load ptr, ptr %i.s, align 8, !tbaa !150 ; 5 uses
  %i.bn = icmp ne ptr %i.bm, null, !nosanitize !12
  %i.bo = ptrtoint ptr %i.bm to i64, !nosanitize !12 ; 2 uses
  %i.bp = and i64 %i.bo, 7, !nosanitize !12
  %i.bq = icmp eq i64 %i.bp, 0, !nosanitize !12
  %i.br = and i1 %i.bn, %i.bq, !nosanitize !12
  br i1 %i.br, label %bb.aa, label %bb.z, !prof !13, !nosanitize !12

bb.z:                                             ; preds = %bb.y
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @486, i64 %i.bo) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.aa:                                            ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !65 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 1, ptr %i.bu, align 8, !tbaa !96
  %i.bv = ptrtoint ptr %0 to i64, !nosanitize !12 ; 2 uses
  %i.bw = and i64 %i.bv, 7, !nosanitize !12
  %i.bx = icmp eq i64 %i.bw, 0, !nosanitize !12
  br i1 %i.bx, label %bb.ac, label %bb.ab, !prof !13, !nosanitize !12

bb.ab:                                            ; preds = %bb.aa
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @487, i64 %i.bv) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ac:                                            ; preds = %bb.aa
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !151 ; 4 uses
  %i.ca = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bz, i32 1), !nosanitize !12 ; 2 uses
  %i.cb = extractvalue { i32, i1 } %i.ca, 1, !nosanitize !12
  br i1 %i.cb, label %bb.ad, label %bb.ae, !prof !22, !nosanitize !12

bb.ad:                                            ; preds = %bb.ac
end_hunk_1
