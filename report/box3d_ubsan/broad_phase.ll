Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/broad_phase?download=true
inline.NumInlined: 56
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b3BroadPhase_GetShapeIndex:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @48, i64 %i.b) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = and i32 %1, 3
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = mul nuw nsw i64 %i.g, 80
  %i.i = add i64 %i.h, %i.b, !nosanitize !9       ; 2 uses
  %.not = icmp ult i64 %i.i, %i.b, !nosanitize !9
  br i1 %.not, label %bb.d, label %bb.e, !prof !14, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @49, i64 %i.b, i64 %i.i) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.j = ashr i32 %1, 2                           ; 2 uses
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !104  ; 3 uses
  %i.n = sext i32 %i.j to i64                     ; 2 uses
  %i.o = getelementptr inbounds [48 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = mul nsw i64 %i.n, 48
  %i.q = ptrtoint ptr %i.m to i64, !nosanitize !9 ; 3 uses
  %i.r = add i64 %i.p, %i.q, !nosanitize !9       ; 3 uses
  %i.s = icmp ne ptr %i.m, null, !nosanitize !9   ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  %i.u = xor i1 %i.s, %i.t
  %i.v = icmp uge i64 %i.r, %i.q, !nosanitize !9
  %i.w = icmp slt i32 %i.j, 0
  %i.x = xor i1 %i.w, %i.v
  %i.y = and i1 %i.u, %i.x, !nosanitize !9
  br i1 %i.y, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @115, i64 %i.q, i64 %i.r) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.z = ptrtoint ptr %i.o to i64, !nosanitize !9 ; 2 uses
  %i.aa = and i64 %i.z, 7, !nosanitize !9
  %i.ab = icmp eq i64 %i.aa, 0, !nosanitize !9
  %i.ac = and i1 %i.s, %i.ab
  br i1 %i.ac, label %b3DynamicTree_GetUserData.exit, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @116, i64 %i.z) #9, !nosanitize !9
  unreachable, !nosanitize !9

b3DynamicTree_GetUserData.exit:                   ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !106
  %i.af = trunc i64 %i.ae to i32
  ret i32 %i.af
}

; Function Attrs: nounwind uwtable
define hidden void @b3ValidateBroadPhase(ptr noundef %0) local_unnamed_addr #0 !func_sanitize !109 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 6 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @50, i64 %i.b) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %.not = icmp ugt ptr %0, inttoptr (i64 -161 to ptr)
  br i1 %.not, label %bb.d, label %bb.e, !prof !14, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.f = add i64 %i.b, 160, !nosanitize !9
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @51, i64 %i.b, i64 %i.f) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @b3DynamicTree_Validate(ptr noundef nonnull %i.g) #10
  %.not5 = icmp ugt ptr %0, inttoptr (i64 -81 to ptr)
  br i1 %.not5, label %bb.f, label %bb.g, !prof !14, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  %i.h = add i64 %i.b, 80, !nosanitize !9
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @52, i64 %i.b, i64 %i.h) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @b3DynamicTree_Validate(ptr noundef nonnull %i.i) #10
  ret void
}

declare void @b3DynamicTree_Validate(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @b3ValidateNoEnlarged(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #7 !func_sanitize !109 {
bb.a:
  ret void
}

declare void @b3GrowBitSet(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @b3DynamicTree_Query(ptr noundef, ptr noundef byval(%struct.b3AABB) align 8, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @b3PairQueryCallback(i32 noundef %0, i64 noundef %1, ptr noundef %2) #8 !func_sanitize !150 {
bb.a:
  %3 = alloca %struct.b3Transform, align 8        ; 6 uses
  %4 = alloca %struct.b3AABB, align 8             ; 7 uses
  %i.a = icmp ne ptr %2, null, !nosanitize !9
  %i.b = ptrtoint ptr %2 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @81, i64 %i.b) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !99     ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !100  ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.j = trunc i64 %1 to i32                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !107
  %i.m = icmp eq i32 %i.l, %i.j
  br i1 %i.m, label %bb.bx, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ne ptr %i.f, null, !nosanitize !9
  %i.o = ptrtoint ptr %i.f to i64, !nosanitize !9 ; 3 uses
  %i.p = and i64 %i.o, 7, !nosanitize !9
  %i.q = icmp eq i64 %i.p, 0, !nosanitize !9
  %i.r = and i1 %i.n, %i.q, !nosanitize !9
  br i1 %i.r, label %bb.g, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @82, i64 %i.o) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 4080
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !92   ; 3 uses
  %sext = shl i64 %1, 32
  %i.u = ashr exact i64 %sext, 32                 ; 3 uses
  %i.v = getelementptr inbounds [232 x i8], ptr %i.t, i64 %i.u ; 4 uses
  %i.w = mul nsw i64 %i.u, 232
  %i.x = ptrtoint ptr %i.t to i64, !nosanitize !9 ; 3 uses
  %i.y = add i64 %i.w, %i.x, !nosanitize !9       ; 3 uses
  %i.z = icmp ne ptr %i.t, null, !nosanitize !9   ; 2 uses
  %i.aa = icmp eq i64 %i.y, 0
  %i.ab = xor i1 %i.z, %i.aa
  %i.ac = icmp uge i64 %i.y, %i.x, !nosanitize !9
  %i.ad = icmp slt i64 %i.u, 0
  %i.ae = xor i1 %i.ad, %i.ac
  %i.af = and i1 %i.ab, %i.ae, !nosanitize !9
  br i1 %i.af, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @83, i64 %i.x, i64 %i.y) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.ag = ptrtoint ptr %i.v to i64, !nosanitize !9 ; 2 uses
  %i.ah = and i64 %i.ag, 7, !nosanitize !9
  %i.ai = icmp eq i64 %i.ah, 0, !nosanitize !9
  %i.aj = and i1 %i.z, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.j, !prof !10, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @85, i64 %i.ag) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !155
  %.not = icmp eq i32 %i.al, 1
  br i1 %.not, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !156
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %3, ptr noundef nonnull %i.f, i32 noundef %i.an) #10
  %.sroa.4233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.5234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.6235.sroa.0.0.copyload = load <2 x float>, ptr %.sroa.6235.0..sroa_idx, align 4 ; 16 uses
  %.sroa.6235.sroa.4.0..sroa.6235.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.6235.sroa.4.0.copyload = load <2 x float>, ptr %.sroa.6235.sroa.4.0..sroa.6235.0..sroa_idx.sroa_idx, align 4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %.sroa.2.8.vec.extract65.i.i = extractelement <2 x float> %.sroa.6235.sroa.4.0.copyload, i64 0
  %.sroa.2.8.vec.extract65.i.i.a = extractelement <2 x float> %.sroa.6235.sroa.0.0.copyload, i64 0
  %.sroa.09.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.6235.sroa.4.0.copyload, i64 1
  %i.ao = fneg float %.sroa.2.8.vec.extract65.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0211.0.copyload = load <2 x float>, ptr %i.ap, align 8 ; 2 uses
  %.sroa.5213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.5213.0.copyload = load float, ptr %.sroa.5213.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.7214.0.copyload = load <2 x float>, ptr %.sroa.7214.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4 ; 2 uses
  %i.aq = load <2 x float>, ptr %3, align 8       ; 4 uses
  %.sroa.5234.0.copyload = load float, ptr %.sroa.5234.0..sroa_idx, align 8 ; 2 uses
  %i.ar = load <2 x float>, ptr %.sroa.4233.0..sroa_idx, align 4 ; 3 uses
  %i.as = fmul float %.sroa.5234.0.copyload, %.sroa.2.8.vec.extract65.i.i.a
  %i.at = shufflevector <2 x float> %.sroa.6235.sroa.0.0.copyload, <2 x float> %.sroa.6235.sroa.4.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.au = fmul <2 x float> %i.aq, %i.at
  %i.av = fmul <2 x float> %i.ar, %.sroa.6235.sroa.0.0.copyload
  %foldExtExtBinop = fmul <2 x float> %i.aq, %.sroa.6235.sroa.4.0.copyload
  %i.aw = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ax = fsub <2 x float> %i.au, %i.av           ; 2 uses
  %i.ay = fsub float %i.as, %i.aw
  %i.az = shufflevector <2 x float> %i.ar, <2 x float> %i.aq, <2 x i32> <i32 1, i32 2>
  %i.ba = shufflevector <2 x float> %.sroa.6235.sroa.4.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.bb = fmul <2 x float> %i.az, %i.ba
  %i.bc = fmul <2 x float> %i.ar, %i.ba
  %i.bd = fadd <2 x float> %i.ax, %i.bb           ; 2 uses
  %i.be = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bf = insertelement <2 x float> %i.be, float %i.ay, i64 0
  %i.bg = fadd <2 x float> %i.bc, %i.bf           ; 2 uses
  %i.bh = fmul <2 x float> %i.at, %i.bd
  %i.bi = shufflevector <2 x float> %.sroa.6235.sroa.4.0.copyload, <2 x float> %.sroa.6235.sroa.0.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bj = fmul <2 x float> %i.bi, %i.bg
  %i.bk = fsub <2 x float> %i.bh, %i.bj
  %foldExtExtBinop284 = fmul <2 x float> %.sroa.6235.sroa.0.0.copyload, %i.bg
  %foldExtExtBinop286 = fmul <2 x float> %.sroa.6235.sroa.0.0.copyload, %i.bd
  %shift = shufflevector <2 x float> %foldExtExtBinop286, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop288 = fsub <2 x float> %foldExtExtBinop284, %shift
  %i.bl = extractelement <2 x float> %foldExtExtBinop288, i64 0
  %i.bm = fmul <2 x float> %i.bk, splat (float 2.000000e+00)
  %i.bn = fsub <2 x float> %i.bm, %i.aq
  %i.bo = fmul float %i.bl, 2.000000e+00
  %i.bp = fsub float %i.bo, %.sroa.5234.0.copyload
  %i.bq = fneg <2 x float> %.sroa.6235.sroa.0.0.copyload
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bs = fadd <2 x float> %.sroa.0211.0.copyload, %.sroa.7214.0.copyload
  %i.bt = fadd float %.sroa.5213.0.copyload, %.sroa.9.0.copyload
  %i.bu = fmul <2 x float> %i.bs, splat (float 5.000000e-01) ; 5 uses
  %i.bv = fmul float %i.bt, 5.000000e-01          ; 4 uses
  %i.bw = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bx = insertelement <2 x float> %i.bw, float %i.bv, i64 0
  %i.by = fmul <2 x float> %.sroa.6235.sroa.0.0.copyload, %i.bx
  %i.bz = fmul <2 x float> %i.at, %i.bu
  %i.ca = fmul <2 x float> %i.bi, %i.bu
  %i.cb = insertelement <2 x float> %i.bw, float %i.bv, i64 1 ; 2 uses
  %i.cc = fmul <2 x float> %.sroa.6235.sroa.0.0.copyload, %i.cb
  %i.cd = fsub <2 x float> %i.by, %i.ca
  %i.ce = fsub <2 x float> %i.bz, %i.cc
  %i.cf = fmul <2 x float> %i.ba, %i.cb
  %i.cg = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.ci = fmul <2 x float> %i.ba, %i.ch
  %i.cj = fadd <2 x float> %i.cf, %i.cd           ; 2 uses
  %i.ck = fadd <2 x float> %i.ci, %i.ce           ; 2 uses
  %i.cl = fmul <2 x float> %i.bi, %i.cj
  %i.cm = fmul <2 x float> %i.at, %i.ck
  %i.cn = fsub <2 x float> %i.cl, %i.cm
  %foldExtExtBinop290 = fmul <2 x float> %.sroa.6235.sroa.0.0.copyload, %i.ck
  %foldExtExtBinop292 = fmul <2 x float> %.sroa.6235.sroa.0.0.copyload, %i.cj
  %shift294 = shufflevector <2 x float> %foldExtExtBinop290, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop295 = fsub <2 x float> %shift294, %foldExtExtBinop292
  %i.co = extractelement <2 x float> %foldExtExtBinop295, i64 0
  %i.cp = fmul <2 x float> %i.cn, splat (float 2.000000e+00)
  %i.cq = fadd <2 x float> %i.bu, %i.cp
  %i.cr = fmul float %i.co, 2.000000e+00
  %i.cs = fadd float %i.bv, %i.cr
  %i.ct = fadd <2 x float> %i.bn, %i.cq           ; 2 uses
  %i.cu = fadd float %i.bp, %i.cs                 ; 2 uses
  %i.cv = fmul <2 x float> %i.ba, %i.br           ; 4 uses
  %i.cw = shufflevector <2 x float> %.sroa.6235.sroa.4.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x float> %.sroa.6235.sroa.0.0.copyload, %i.cw ; 4 uses
  %i.cy = fmul <2 x float> %.sroa.6235.sroa.0.0.copyload, %.sroa.6235.sroa.0.0.copyload ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop297 = fsub <2 x float> %i.cx, %i.cv
  %i.da = extractelement <2 x float> %foldExtExtBinop297, i64 0
  %i.db = fmul float %i.da, 2.000000e+00          ; 3 uses
  %i.dc = fsub float %.sroa.9.0.copyload, %.sroa.5213.0.copyload
  %foldExtExtBinop299 = fmul <2 x float> %.sroa.6235.sroa.4.0.copyload, %.sroa.6235.sroa.4.0.copyload
  %5 = fmul float %.sroa.09.0.vec.extract.i.i.i, %i.ao ; 2 uses
  %shift301 = shufflevector <2 x float> %.sroa.6235.sroa.0.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop302 = fmul <2 x float> %.sroa.6235.sroa.0.0.copyload, %shift301
  %i.dd = extractelement <2 x float> %foldExtExtBinop302, i64 0 ; 2 uses
  %6 = fmul float %i.dc, 5.000000e-01             ; 2 uses
  %i.de = fadd float %i.dd, %5
  %i.df = fsub float %i.dd, %5
  %i.dg = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.de, i64 1
  %i.di = fmul <2 x float> %i.dh, splat (float 2.000000e+00) ; 3 uses
  %7 = shufflevector <2 x float> %foldExtExtBinop299, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fadd <2 x float> %i.cz, %7
  %i.dk = fmul <2 x float> %i.dj, splat (float 2.000000e+00)
  %i.dl = fsub <2 x float> splat (float 1.000000e+00), %i.dk ; 3 uses
  %foldExtExtBinop299.a = fadd <2 x float> %i.cx, %i.cv
  %i.dm = extractelement <2 x float> %foldExtExtBinop299.a, i64 1
  %i.dn = fmul float %i.dm, 2.000000e+00          ; 3 uses
  %i.do = fadd <2 x float> %i.cx, %i.cv
  %i.dp = fsub <2 x float> %i.cx, %i.cv
  %i.dq = shufflevector <2 x float> %i.do, <2 x float> %i.dp, <2 x i32> <i32 0, i32 3>
  %i.dr = fmul <2 x float> %i.dq, splat (float 2.000000e+00) ; 3 uses
  %i.ds = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cy)
  %i.dt = fmul float %i.ds, 2.000000e+00
  %i.du = fsub float 1.000000e+00, %i.dt          ; 3 uses
  %i.dv = fcmp olt float %i.db, 0.000000e+00
  %i.dw = fneg float %i.db
  %i.dx = select i1 %i.dv, float %i.dw, float %i.db
  %i.dy = fcmp olt <2 x float> %i.di, zeroinitializer
  %i.dz = fneg <2 x float> %i.di
  %i.ea = select <2 x i1> %i.dy, <2 x float> %i.dz, <2 x float> %i.di
  %i.eb = fcmp olt <2 x float> %i.dl, zeroinitializer
  %i.ec = fneg <2 x float> %i.dl
  %i.ed = select <2 x i1> %i.eb, <2 x float> %i.ec, <2 x float> %i.dl
  %i.ee = fcmp olt float %i.dn, 0.000000e+00
  %i.ef = fneg float %i.dn
  %i.eg = select i1 %i.ee, float %i.ef, float %i.dn
  %i.eh = fcmp olt <2 x float> %i.dr, zeroinitializer
  %i.ei = fneg <2 x float> %i.dr
  %i.ej = select <2 x i1> %i.eh, <2 x float> %i.ei, <2 x float> %i.dr
  %i.ek = fcmp olt float %i.du, 0.000000e+00
  %i.el = fneg float %i.du
  %i.em = select i1 %i.ek, float %i.el, float %i.du
  %i.en = fsub <2 x float> %.sroa.7214.0.copyload, %.sroa.0211.0.copyload
  %i.eo = fmul <2 x float> %i.en, splat (float 5.000000e-01) ; 4 uses
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eq = extractelement <2 x float> %i.eo, i64 0
  %i.er = fmul float %i.dx, %i.eq
  %i.es = extractelement <2 x float> %i.eo, i64 1
  %i.et = fmul float %i.eg, %i.es
  %i.eu = fadd float %i.er, %i.et
  %i.ev = fmul <2 x float> %i.ea, %i.ep
  %i.ew = fmul <2 x float> %i.eo, %i.ed
  %i.ex = fadd <2 x float> %i.ev, %i.ew
  %8 = insertelement <2 x float> poison, float %6, i64 0
  %i.ey = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.ej, %i.ey
  %i.fa = fadd <2 x float> %i.ez, %i.ex           ; 2 uses
  %i.fb = fmul float %i.em, %6
  %i.fc = fadd float %i.fb, %i.eu                 ; 2 uses
  %i.fd = fsub <2 x float> %i.ct, %i.fa
  %i.fe = fsub float %i.cu, %i.fc
  store <2 x float> %i.fd, ptr %4, align 8, !alias.scope !157
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.fe, ptr %.sroa.28.0..sroa_idx.i, align 8, !alias.scope !157
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fg = fadd <2 x float> %i.fa, %i.ct
  %i.fh = fadd float %i.fc, %i.cu
  store <2 x float> %i.fg, ptr %i.ff, align 4, !alias.scope !157
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.fh, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !157
  store i32 %i.j, ptr %i.g, align 8, !tbaa !100
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  store i32 %0, ptr %i.fi, align 4, !tbaa !158
  %i.fj = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !106 ; 3 uses
  %i.fl = icmp ne ptr %i.fk, null, !nosanitize !9
  %i.fm = ptrtoint ptr %i.fk to i64, !nosanitize !9 ; 2 uses
  %i.fn = and i64 %i.fm, 7, !nosanitize !9
  %i.fo = icmp eq i64 %i.fn, 0, !nosanitize !9
  %i.fp = and i1 %i.fl, %i.fo, !nosanitize !9
  br i1 %i.fp, label %bb.n, label %bb.m, !prof !10, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @87, i64 %i.fm) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.l
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fr = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.fq, ptr noundef nonnull byval(%struct.b3AABB) align 8 %4, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @b3PairQueryCallback, ptr noundef nonnull %2) #10 ; 0 uses
  store i32 -1, ptr %i.g, align 8, !tbaa !100
  store i32 -1, ptr %i.fi, align 4, !tbaa !158
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.bx

bb.o:                                             ; preds = %bb.c
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !158
  %i.fu = trunc i64 %1 to i32
  %.pre261 = ptrtoint ptr %i.f to i64, !nosanitize !9 ; 2 uses
  %.pre263 = and i64 %.pre261, 7, !nosanitize !9
  %i.fv = icmp eq i64 %.pre263, 0
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.o
  %.pre-phi264 = phi i1 [ true, %bb.k ], [ %i.fv, %bb.o ]
  %.pre-phi262 = phi i64 [ %i.o, %bb.k ], [ %.pre261, %bb.o ]
  %.0117 = phi i32 [ %i.j, %bb.k ], [ %i.h, %bb.o ] ; 8 uses
  %.0116 = phi i32 [ 0, %bb.k ], [ %i.fu, %bb.o ] ; 2 uses
  %.0110 = phi i32 [ %0, %bb.k ], [ %i.ft, %bb.o ] ; 7 uses
  %i.fw = icmp ne ptr %i.f, null, !nosanitize !9
  %i.fx = and i1 %i.fw, %.pre-phi264, !nosanitize !9
  br i1 %i.fx, label %bb.q, label %bb.p, !prof !10, !nosanitize !9

bb.p:                                             ; preds = %.critedge
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @88, i64 %.pre-phi262) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %.critedge
  %i.fy = icmp ult i32 %.0110, 536870912
  br i1 %i.fy, label %bb.s, label %bb.r, !prof !10, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  %i.fz = zext i32 %.0110 to i64, !nosanitize !9
  tail call void @__ubsan_handle_shift_out_of_bounds_abort(ptr nonnull @89, i64 %i.fz, i64 2) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !108 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !102 ; 2 uses
  %i.ge = and i32 %i.gd, 3
  %i.gf = icmp eq i32 %i.ge, 2
  br i1 %i.gf, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.gg = shl nuw nsw i32 %.0110, 2
  %i.gh = or disjoint i32 %i.gg, 2
  %i.gi = icmp eq i32 %i.gb, 2
  %i.gj = icmp slt i32 %i.gh, %i.gd
  %or.cond = select i1 %i.gi, i1 %i.gj, i1 false
  br i1 %or.cond, label %bb.u, label %b3GetBit.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.gk = getelementptr inbounds nuw i8, ptr %i.f, i64 1040 ; 2 uses
  %.not147 = icmp ugt ptr %i.gk, inttoptr (i64 -33 to ptr)
  br i1 %.not147, label %bb.v, label %bb.w, !prof !14, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  %i.gl = ptrtoint ptr %i.gk to i64, !nosanitize !9 ; 2 uses
  %i.gm = add i64 %i.gl, 32, !nosanitize !9
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @90, i64 %i.gl, i64 %i.gm) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %bb.u
  %i.gn = lshr i32 %.0110, 6                      ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.f, i64 1084
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !37
  %.not.i = icmp ult i32 %i.gn, %i.gp
  br i1 %.not.i, label %bb.x, label %b3GetBit.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.gq = getelementptr inbounds nuw i8, ptr %i.f, i64 1072
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !38 ; 3 uses
  %i.gs = zext nneg i32 %i.gn to i64              ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gs ; 2 uses
  %i.gu = shl nuw nsw i64 %i.gs, 3
  %i.gv = ptrtoint ptr %i.gr to i64, !nosanitize !9 ; 3 uses
  %i.gw = add i64 %i.gu, %i.gv, !nosanitize !9    ; 3 uses
  %i.gx = icmp ne ptr %i.gr, null, !nosanitize !9 ; 2 uses
  %i.gy = icmp eq i64 %i.gw, 0
  %i.gz = xor i1 %i.gx, %i.gy
  %i.ha = icmp uge i64 %i.gw, %i.gv, !nosanitize !9
  %i.hb = and i1 %i.ha, %i.gz, !nosanitize !9
  br i1 %i.hb, label %bb.z, label %bb.y, !prof !10, !nosanitize !9

bb.y:                                             ; preds = %bb.x
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @60, i64 %i.gv, i64 %i.gw) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.z:                                             ; preds = %bb.x
  %i.hc = ptrtoint ptr %i.gt to i64, !nosanitize !9 ; 2 uses
  %i.hd = and i64 %i.hc, 7, !nosanitize !9
  %i.he = icmp eq i64 %i.hd, 0, !nosanitize !9
  %i.hf = and i1 %i.gx, %i.he
  br i1 %i.hf, label %b3GetBit.exit, label %bb.aa, !prof !10, !nosanitize !9

bb.aa:                                            ; preds = %bb.z
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @62, i64 %i.hc) #9, !nosanitize !9
  unreachable, !nosanitize !9

b3GetBit.exit:                                    ; preds = %bb.z
  %i.hg = and i32 %.0110, 63
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = load i64, ptr %i.gt, align 8, !tbaa !29
  %i.hj = shl nuw i64 1, %i.hh
  %i.hk = and i64 %i.hi, %i.hj
  %.not260 = icmp eq i64 %i.hk, 0
  br i1 %.not260, label %b3GetBit.exit.thread, label %bb.bx

bb.ab:                                            ; preds = %bb.s
  %i.hl = zext i32 %i.gb to i64, !nosanitize !9   ; 3 uses
  %i.hm = icmp ult i32 %i.gb, 4
  br i1 %i.hm, label %bb.ad, label %bb.ac, !prof !10, !nosanitize !9

bb.ac:                                            ; preds = %bb.ab
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @91, i64 %i.hl) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ad:                                            ; preds = %bb.ab
  %i.hn = getelementptr inbounds nuw i8, ptr %i.f, i64 1040 ; 2 uses
  %i.ho = shl nuw nsw i64 %i.hl, 4
  %i.hp = ptrtoint ptr %i.hn to i64, !nosanitize !9 ; 3 uses
  %i.hq = add i64 %i.ho, %i.hp, !nosanitize !9    ; 2 uses
  %.not146 = icmp ult i64 %i.hq, %i.hp, !nosanitize !9
  br i1 %.not146, label %bb.ae, label %bb.af, !prof !14, !nosanitize !9

bb.ae:                                            ; preds = %bb.ad
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @92, i64 %i.hp, i64 %i.hq) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.af:                                            ; preds = %bb.ad
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %i.hl ; 2 uses
  %i.hs = lshr i32 %.0110, 6                      ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !37
  %.not.i201 = icmp ult i32 %i.hs, %i.hu
  br i1 %.not.i201, label %bb.ag, label %b3GetBit.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.hv = load ptr, ptr %i.hr, align 8, !tbaa !38 ; 3 uses
  %i.hw = zext nneg i32 %i.hs to i64              ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.hw ; 2 uses
  %i.hy = shl nuw nsw i64 %i.hw, 3
  %i.hz = ptrtoint ptr %i.hv to i64, !nosanitize !9 ; 3 uses
  %i.ia = add i64 %i.hy, %i.hz, !nosanitize !9    ; 3 uses
  %i.ib = icmp ne ptr %i.hv, null, !nosanitize !9 ; 2 uses
  %i.ic = icmp eq i64 %i.ia, 0
  %i.id = xor i1 %i.ib, %i.ic
  %i.ie = icmp uge i64 %i.ia, %i.hz, !nosanitize !9
  %i.if = and i1 %i.ie, %i.id, !nosanitize !9
  br i1 %i.if, label %bb.ai, label %bb.ah, !prof !10, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @60, i64 %i.hz, i64 %i.ia) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %bb.ag
  %i.ig = ptrtoint ptr %i.hx to i64, !nosanitize !9 ; 2 uses
  %i.ih = and i64 %i.ig, 7, !nosanitize !9
  %i.ii = icmp eq i64 %i.ih, 0, !nosanitize !9
  %i.ij = and i1 %i.ib, %i.ii
  br i1 %i.ij, label %b3GetBit.exit203, label %bb.aj, !prof !10, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @62, i64 %i.ig) #9, !nosanitize !9
  unreachable, !nosanitize !9

end_hunk_0
