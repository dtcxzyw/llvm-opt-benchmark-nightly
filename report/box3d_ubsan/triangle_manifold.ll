Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/triangle_manifold?download=true
inline.NumInlined: 151
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@b3CollideTriangleFace:bb.a
  br i1 %5, label %bb.au, label %bb.av

bb.au:                                            ; preds = %._crit_edge
  %i.gu = call float @b3GetLengthUnitsPerMeter() #9
  %i.gv = fmul float %i.gu, 5.000000e-03
  %i.gw = fmul float %i.gv, 4.000000e+00
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge, %bb.au
  %i.gx = phi float [ %i.gw, %bb.au ], [ 0.000000e+00, %._crit_edge ]
  %i.gy = fcmp ult float %.0103.lcssa, %i.gx
  br i1 %i.gy, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gz = ptrtoint ptr %4 to i64, !nosanitize !9  ; 2 uses
  %i.ha = and i64 %i.gz, 3, !nosanitize !9
  %i.hb = icmp eq i64 %i.ha, 0, !nosanitize !9
  br i1 %i.hb, label %bb.ay, label %bb.ax, !prof !10, !nosanitize !9

bb.ax:                                            ; preds = %bb.aw
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @122, i64 %i.gz) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ay:                                            ; preds = %bb.aw
  store i32 0, ptr %4, align 4
  %.sroa_idx1 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %.sroa_idx1, align 4
  br label %bb.be

bb.az:                                            ; preds = %bb.av
  %i.hc = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.hd = and i64 %i.hc, 7, !nosanitize !9
  %i.he = icmp eq i64 %i.hd, 0, !nosanitize !9
  br i1 %i.he, label %bb.bb, label %bb.ba, !prof !10, !nosanitize !9

bb.ba:                                            ; preds = %bb.az
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @123, i64 %i.hc) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bb:                                            ; preds = %bb.az
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0102.lcssa, ptr %i.hf, align 8, !tbaa !16
  store <2 x float> %.sroa.09.0.copyload, ptr %0, align 8, !tbaa !17
  %.sroa.8.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.8.8.vec.extract, ptr %.sroa.8.0..sroa_idx14, align 8, !tbaa !17
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.hg, align 8, !tbaa !19
  %i.hh = ptrtoint ptr %4 to i64, !nosanitize !9  ; 2 uses
  %i.hi = and i64 %i.hh, 3, !nosanitize !9
  %i.hj = icmp eq i64 %i.hi, 0, !nosanitize !9
  br i1 %i.hj, label %bb.bd, label %bb.bc, !prof !10, !nosanitize !9

bb.bc:                                            ; preds = %bb.bb
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @124, i64 %i.hh) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bd:                                            ; preds = %bb.bb
  store float %.0103.lcssa, ptr %4, align 4, !tbaa !47
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 2, ptr %i.hk, align 4, !tbaa !46
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.hm = trunc i32 %.16.val to i8
  store i8 %i.hm, ptr %i.hl, align 1, !tbaa !55
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ho = trunc i32 %.20.val to i8
  store i8 %i.ho, ptr %i.hn, align 2, !tbaa !56
  br label %bb.be

bb.be:                                            ; preds = %bb.ay, %bb.bd, %bb.ak
  %.1105 = phi float [ f0x7F7FFFFF, %bb.ak ], [ %.0103.lcssa, %bb.bd ], [ %.0103.lcssa, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret float %.1105
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_add_overflow_abort(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc float @b3CollideHullFace(ptr noundef nonnull %0, i32 noundef range(i32 4, -2147483648) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr nofree noundef readonly byval(%struct.b3SeparatingAxis) align 8 captures(none) %4, ptr noundef nonnull %5, i1 noundef zeroext %6) unnamed_addr #0 !func_sanitize !60 {
bb.a:
  %7 = alloca [64 x %struct.b3ClipVertex], align 16 ; 18 uses
  %8 = alloca [64 x %struct.b3ClipVertex], align 16 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.b = and i64 %i.a, 7, !nosanitize !9
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !9
  br i1 %i.c, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @127, i64 %i.a) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !16
  %i.e = ptrtoint ptr %3 to i64, !nosanitize !9   ; 10 uses
  %i.f = and i64 %i.e, 7, !nosanitize !9
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !9
  br i1 %i.g, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @125, i64 %i.e) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.i = load i32, ptr %i.h, align 8, !tbaa !61   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %b3GetHullFaces.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = sext i32 %i.i to i64                     ; 2 uses
  %i.l = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.e, i64 %i.k), !nosanitize !9 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1, !nosanitize !9
  br i1 %i.m, label %bb.g, label %bb.h, !prof !18, !nosanitize !9

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @126, i64 %i.e, i64 %i.k) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { i64, i1 } %i.l, 0, !nosanitize !9
  %i.o = inttoptr i64 %i.n to ptr
  br label %b3GetHullFaces.exit

b3GetHullFaces.exit:                              ; preds = %bb.e, %bb.h
  %.0.i = phi ptr [ %i.o, %bb.h ], [ null, %bb.e ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.q = load i32, ptr %i.p, align 4, !tbaa !52
  %.fr548 = freeze i32 %i.q                       ; 2 uses
  %i.r = icmp eq i32 %.fr548, 0
  br i1 %i.r, label %b3GetHullEdges.exit, label %bb.i

bb.i:                                             ; preds = %b3GetHullFaces.exit
  %i.s = sext i32 %.fr548 to i64                  ; 2 uses
  %i.t = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.e, i64 %i.s), !nosanitize !9 ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1, !nosanitize !9
  br i1 %i.u, label %bb.j, label %bb.k, !prof !18, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @99, i64 %i.e, i64 %i.s) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.v = extractvalue { i64, i1 } %i.t, 0, !nosanitize !9
  %i.w = inttoptr i64 %i.v to ptr
  br label %b3GetHullEdges.exit

b3GetHullEdges.exit:                              ; preds = %b3GetHullFaces.exit, %bb.k
  %.0.i193 = phi ptr [ %i.w, %bb.k ], [ null, %b3GetHullFaces.exit ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.y = load i32, ptr %i.x, align 4, !tbaa !53   ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %b3GetHullPlanes.exit, label %bb.l

bb.l:                                             ; preds = %b3GetHullEdges.exit
  %i.aa = sext i32 %i.y to i64                    ; 2 uses
  %i.ab = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.e, i64 %i.aa), !nosanitize !9 ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 1, !nosanitize !9
  br i1 %i.ac, label %bb.m, label %bb.n, !prof !18, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @101, i64 %i.e, i64 %i.aa) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.l
  %i.ad = extractvalue { i64, i1 } %i.ab, 0, !nosanitize !9
  %i.ae = inttoptr i64 %i.ad to ptr
  br label %b3GetHullPlanes.exit

b3GetHullPlanes.exit:                             ; preds = %b3GetHullEdges.exit, %bb.n
  %.0.i194 = phi ptr [ %i.ae, %bb.n ], [ null, %b3GetHullEdges.exit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !54
  %.fr551 = freeze i32 %i.ag                      ; 2 uses
  %i.ah = icmp eq i32 %.fr551, 0
  br i1 %i.ah, label %b3GetHullPoints.exit, label %bb.o

bb.o:                                             ; preds = %b3GetHullPlanes.exit
  %i.ai = sext i32 %.fr551 to i64                 ; 2 uses
  %i.aj = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.e, i64 %i.ai), !nosanitize !9 ; 2 uses
  %i.ak = extractvalue { i64, i1 } %i.aj, 1, !nosanitize !9
  br i1 %i.ak, label %bb.p, label %bb.q, !prof !18, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @102, i64 %i.e, i64 %i.ai) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  %i.al = extractvalue { i64, i1 } %i.aj, 0, !nosanitize !9
  %i.am = inttoptr i64 %i.al to ptr
  br label %b3GetHullPoints.exit

b3GetHullPoints.exit:                             ; preds = %b3GetHullPlanes.exit, %bb.q
  %.0.i195 = phi ptr [ %i.am, %bb.q ], [ null, %b3GetHullPlanes.exit ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !39 ; 2 uses
  %i.ap = sext i32 %i.ao to i64                   ; 4 uses
  %i.aq = getelementptr inbounds [16 x i8], ptr %.0.i194, i64 %i.ap ; 3 uses
  %i.ar = shl nsw i64 %i.ap, 4
  %i.as = ptrtoint ptr %.0.i194 to i64, !nosanitize !9 ; 3 uses
  %i.at = add i64 %i.ar, %i.as, !nosanitize !9    ; 3 uses
  %i.au = icmp ne ptr %.0.i194, null, !nosanitize !9 ; 2 uses
  %i.av = icmp eq i64 %i.at, 0
  %i.aw = xor i1 %i.au, %i.av
  %i.ax = icmp uge i64 %i.at, %i.as, !nosanitize !9
  %i.ay = icmp slt i32 %i.ao, 0                   ; 2 uses
  %i.az = xor i1 %i.ay, %i.ax
  %i.ba = and i1 %i.aw, %i.az, !nosanitize !9
  br i1 %i.ba, label %bb.s, label %bb.r, !prof !10, !nosanitize !9

bb.r:                                             ; preds = %b3GetHullPoints.exit
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @128, i64 %i.as, i64 %i.at) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %b3GetHullPoints.exit
  %i.bb = ptrtoint ptr %i.aq to i64, !nosanitize !9 ; 2 uses
  %i.bc = and i64 %i.bb, 3, !nosanitize !9
  %i.bd = icmp eq i64 %i.bc, 0, !nosanitize !9
  %i.be = and i1 %i.au, %i.bd
  br i1 %i.be, label %bb.u, label %bb.t, !prof !10, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @129, i64 %i.bb) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %bb.s
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.aq, align 4, !tbaa !17 ; 12 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.10.0.copyload = load <2 x float>, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !17 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.bf = ptrtoint ptr %2 to i64, !nosanitize !9  ; 2 uses
  %i.bg = and i64 %i.bf, 3, !nosanitize !9
  %i.bh = icmp eq i64 %i.bg, 0, !nosanitize !9
  br i1 %i.bh, label %bb.w, label %bb.v, !prof !10, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @130, i64 %i.bf) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %bb.u
  %.sroa.0106.0.copyload = load <2 x float>, ptr %2, align 4, !tbaa !17 ; 3 uses
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5108.0.copyload = load float, ptr %.sroa.5108.0..sroa_idx, align 4, !tbaa !17 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0101.0.copyload = load <2 x float>, ptr %i.bi, align 4, !tbaa !17 ; 3 uses
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.5103.0.copyload = load float, ptr %.sroa.5103.0..sroa_idx, align 4, !tbaa !17 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.096.0.copyload = load <2 x float>, ptr %i.bj, align 4, !tbaa !17 ; 3 uses
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.598.0.copyload = load float, ptr %.sroa.598.0..sroa_idx, align 4, !tbaa !17 ; 2 uses
  store <2 x float> %.sroa.0106.0.copyload, ptr %7, align 16, !tbaa !17
  %.sroa.5108.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %.sroa.5108.0.copyload, ptr %.sroa.5108.0..sroa_idx109, align 8, !tbaa !17
  %.sroa.1.8.vec.extract.i = extractelement <2 x float> %.sroa.10.0.copyload, i64 0 ; 5 uses
  %i.bk = shufflevector <2 x float> %.sroa.0111.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.03.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0111.0.copyload, i64 0
  %foldExtExtBinop = fmul <2 x float> %.sroa.0111.0.copyload, %.sroa.0106.0.copyload
  %i.bl = extractelement <2 x float> %.sroa.0111.0.copyload, i64 1
  %foldExtExtBinop980 = fmul <2 x float> %.sroa.0111.0.copyload, %.sroa.0106.0.copyload
  %shift = shufflevector <2 x float> %foldExtExtBinop980, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop982 = fadd <2 x float> %foldExtExtBinop, %shift
  %i.bm = extractelement <2 x float> %foldExtExtBinop982, i64 0
  %i.bn = fmul float %.sroa.1.8.vec.extract.i, %.sroa.5108.0.copyload
  %i.bo = fadd float %i.bn, %i.bm
  %.sroa.1.12.vec.extract.i = extractelement <2 x float> %.sroa.10.0.copyload, i64 1 ; 3 uses
  %i.bp = fsub float %i.bo, %.sroa.1.12.vec.extract.i
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float %i.bp, ptr %i.bq, align 4, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bs = tail call i32 @b3MakeFeaturePair(i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef 0) #9
  store i32 %i.bs, ptr %i.br, align 16, !tbaa !24
  %i.bt = ptrtoint ptr %7 to i64, !nosanitize !9  ; 4 uses
  %.not = icmp ugt ptr %7, inttoptr (i64 -21 to ptr)
  br i1 %.not, label %bb.x, label %bb.y, !prof !18, !nosanitize !9

bb.x:                                             ; preds = %bb.w
  %i.bu = add i64 %i.bt, 20, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @131, i64 %i.bt, i64 %i.bu) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.y:                                             ; preds = %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 20
  store <2 x float> %.sroa.0101.0.copyload, ptr %i.bv, align 4, !tbaa !17
  %.sroa.5103.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %7, i64 28
  store float %.sroa.5103.0.copyload, ptr %.sroa.5103.0..sroa_idx104, align 4, !tbaa !17
  %foldExtExtBinop984 = fmul <2 x float> %.sroa.0111.0.copyload, %.sroa.0101.0.copyload
  %foldExtExtBinop986 = fmul <2 x float> %.sroa.0111.0.copyload, %.sroa.0101.0.copyload
  %shift988 = shufflevector <2 x float> %foldExtExtBinop986, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop989 = fadd <2 x float> %foldExtExtBinop984, %shift988
  %i.bw = extractelement <2 x float> %foldExtExtBinop989, i64 0
  %i.bx = fmul float %.sroa.1.8.vec.extract.i, %.sroa.5103.0.copyload
  %i.by = fadd float %i.bx, %i.bw
  %i.bz = fsub float %i.by, %.sroa.1.12.vec.extract.i
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float %i.bz, ptr %i.ca, align 16, !tbaa !35
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.cc = call i32 @b3MakeFeaturePair(i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 1) #9
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !24
  %.not186 = icmp ugt ptr %7, inttoptr (i64 -41 to ptr)
  br i1 %.not186, label %bb.z, label %bb.aa, !prof !18, !nosanitize !9

bb.z:                                             ; preds = %bb.y
  %i.cd = add i64 %i.bt, 40, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @132, i64 %i.bt, i64 %i.cd) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.aa:                                            ; preds = %bb.y
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 40
  store <2 x float> %.sroa.096.0.copyload, ptr %i.ce, align 8, !tbaa !17
  %.sroa.598.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %7, i64 48
  store float %.sroa.598.0.copyload, ptr %.sroa.598.0..sroa_idx99, align 16, !tbaa !17
  %foldExtExtBinop991 = fmul <2 x float> %.sroa.0111.0.copyload, %.sroa.096.0.copyload
  %foldExtExtBinop993 = fmul <2 x float> %.sroa.0111.0.copyload, %.sroa.096.0.copyload
  %shift995 = shufflevector <2 x float> %foldExtExtBinop993, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop996 = fadd <2 x float> %foldExtExtBinop991, %shift995
  %i.cf = extractelement <2 x float> %foldExtExtBinop996, i64 0
  %i.cg = fmul float %.sroa.1.8.vec.extract.i, %.sroa.598.0.copyload
  %i.ch = fadd float %i.cg, %i.cf
  %i.ci = fsub float %i.ch, %.sroa.1.12.vec.extract.i
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 52
  store float %i.ci, ptr %i.cj, align 4, !tbaa !35
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.cl = call i32 @b3MakeFeaturePair(i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 2) #9
  store i32 %i.cl, ptr %i.ck, align 8, !tbaa !24
  %i.cm = getelementptr inbounds i8, ptr %.0.i, i64 %i.ap ; 3 uses
  %i.cn = ptrtoint ptr %.0.i to i64, !nosanitize !9 ; 3 uses
  %i.co = add i64 %i.ap, %i.cn, !nosanitize !9    ; 3 uses
  %i.cp = icmp ne ptr %.0.i, null, !nosanitize !9 ; 2 uses
  %i.cq = icmp eq i64 %i.co, 0
  %i.cr = xor i1 %i.cp, %i.cq
  %i.cs = icmp uge i64 %i.co, %i.cn, !nosanitize !9
  %i.ct = xor i1 %i.ay, %i.cs
  %i.cu = and i1 %i.cr, %i.ct, !nosanitize !9
  br i1 %i.cu, label %bb.ac, label %bb.ab, !prof !10, !nosanitize !9

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @133, i64 %i.cn, i64 %i.co) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ac:                                            ; preds = %bb.aa
  br i1 %i.cp, label %bb.ae, label %bb.ad, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  %i.cv = ptrtoint ptr %i.cm to i64, !nosanitize !9
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @134, i64 %i.cv) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  %i.cw = load i8, ptr %i.cm, align 1, !tbaa !63  ; 4 uses
  %i.cx = ptrtoint ptr %.0.i193 to i64, !nosanitize !9 ; 10 uses
  %.not549 = icmp eq ptr %.0.i193, null, !nosanitize !9
  %i.cy = ptrtoint ptr %.0.i195 to i64            ; 7 uses
  br i1 %.not549, label %.split.us, label %.split, !prof !18

.split.us:                                        ; preds = %bb.ae
  %i.cz = zext i8 %i.cw to i64
  %i.da = shl nuw nsw i64 %i.cz, 2
  %i.db = icmp eq i8 %i.cw, 0
  br i1 %i.db, label %.split454.us, label %.split451.us, !prof !10, !nosanitize !9

.split:                                           ; preds = %bb.ae
  %.not552 = icmp eq ptr %.0.i195, null
  br i1 %.not552, label %.split.split.us, label %.split.split, !prof !18

.split.split.us:                                  ; preds = %.split
  %i.dc = zext i8 %i.cw to i64                    ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.0.i193, i64 %i.dc ; 2 uses
  %i.de = shl nuw nsw i64 %i.dc, 2
  %i.df = add i64 %i.de, %i.cx, !nosanitize !9    ; 2 uses
  %.not553 = icmp ult i64 %i.df, %i.cx, !nosanitize !9
  br i1 %.not553, label %.split451.us, label %bb.af, !prof !18, !nosanitize !9

bb.af:                                            ; preds = %.split.split.us
  %i.dg = load i8, ptr %i.dd, align 1, !tbaa !64
  %i.dh = zext i8 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 2
  %i.dj = add i64 %i.di, %i.cx, !nosanitize !9    ; 2 uses
  %.not258.us = icmp ult i64 %i.dj, %i.cx, !nosanitize !9
  br i1 %.not258.us, label %.split468.us, label %bb.ag, !prof !18, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !58  ; 2 uses
  %i.dm = zext i8 %i.dl to i64
  %i.dn = mul nuw nsw i64 %i.dm, 12               ; 2 uses
  %i.do = icmp eq i8 %i.dl, 0
  %i.dp = icmp uge i64 %i.dn, %i.cy, !nosanitize !9
  %i.dq = and i1 %i.dp, %i.do, !nosanitize !9
  br i1 %i.dq, label %.split479, label %.split475.us, !prof !10, !nosanitize !9

.split.split:                                     ; preds = %.split, %bb.at
  %.0245 = phi ptr [ %.0243, %bb.at ], [ %8, %.split ] ; 4 uses
  %.0243 = phi ptr [ %.0245, %bb.at ], [ %7, %.split ] ; 2 uses
  %.0161.in = phi i8 [ %i.dv, %bb.at ], [ %i.cw, %.split ] ; 2 uses
end_hunk_0
begin_hunk_1_@b3CollideHullFace:bb.a
  %i.fi = extractelement <2 x float> %foldExtExtBinop1004, i64 0
  %i.fj = fsub float %i.fh, %i.fi                 ; 2 uses
  %.sroa.016.4.vec.insert.i = insertelement <2 x float> %.sroa.016.0.vec.insert.i, float %i.fj, i64 1
  %i.fk = fmul <2 x float> %i.bk, %.sroa.07.0.i   ; 2 uses
  %shift1006 = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1007 = fsub <2 x float> %i.fk, %shift1006 ; 2 uses
  %i.fl = extractelement <2 x float> %foldExtExtBinop1007, i64 0
  %i.fm = fmul float %.sroa.0.0.vec.extract.i, %i.fg
  %i.fn = fmul float %.sroa.0.4.vec.extract.i, %i.fj
  %i.fo = fadd float %i.fm, %i.fn
  %i.fp = fmul float %.sroa.5.0.copyload, %i.fl
  %i.fq = fadd float %i.fp, %i.fo
  %.sroa.211.12.vec.insert.i = insertelement <2 x float> %foldExtExtBinop1007, float %i.fq, i64 1
  %i.fr = call i32 @b3ClipPolygon(ptr noundef %.0245, ptr noundef %.0243, i32 noundef %.0160, <2 x float> %.sroa.016.4.vec.insert.i, <2 x float> %.sroa.211.12.vec.insert.i, i32 noundef %.0161, <2 x float> %.sroa.0111.0.copyload, <2 x float> %.sroa.10.0.copyload) #9 ; 3 uses
  %i.fs = icmp sgt i32 %i.fr, 2
  br i1 %i.fs, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %b3Normalize.exit
  %i.ft = ptrtoint ptr %5 to i64, !nosanitize !9  ; 2 uses
  %i.fu = and i64 %i.ft, 3, !nosanitize !9
  %i.fv = icmp eq i64 %i.fu, 0, !nosanitize !9
  br i1 %i.fv, label %bb.as, label %bb.ar, !prof !10, !nosanitize !9

bb.ar:                                            ; preds = %bb.aq
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @142, i64 %i.ft) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.as:                                            ; preds = %bb.aq
  store i32 0, ptr %5, align 4
  %.sroa_idx232 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %.sroa_idx232, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !37
  br label %bb.bi

bb.at:                                            ; preds = %b3Normalize.exit
  %i.fy = load i8, ptr %i.cm, align 1, !tbaa !63
  %.not189 = icmp eq i8 %i.dv, %i.fy
  br i1 %.not189, label %.lr.ph.split, label %.split.split, !llvm.loop !107

.lr.ph.split:                                     ; preds = %bb.at
  %i.fz = ptrtoint ptr %.0245 to i64, !nosanitize !9 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gb = call noundef i32 @llvm.smin.i32(i32 %i.fr, i32 range(i32 4, -2147483648) %1)
  %wide.trip.count731 = zext nneg i32 %i.gb to i64
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.az
  %indvars.iv728 = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next729, %bb.az ] ; 3 uses
  %.0156483.us495 = phi i32 [ 0, %.lr.ph.split ], [ %.1157.us, %bb.az ] ; 5 uses
  %.0158482.us496 = phi float [ f0x7F7FFFFF, %.lr.ph.split ], [ %i.gi, %bb.az ] ; 2 uses
  %i.gc = getelementptr inbounds nuw [20 x i8], ptr %.0245, i64 %indvars.iv728 ; 4 uses
  %i.gd = mul nuw nsw i64 %indvars.iv728, 20
  %i.ge = add i64 %i.gd, %i.fz, !nosanitize !9    ; 2 uses
  %.not558 = icmp ult i64 %i.ge, %i.fz, !nosanitize !9
  br i1 %.not558, label %.split487.us, label %bb.au, !prof !18, !nosanitize !9

bb.au:                                            ; preds = %.lr.ph.split.split.us
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 12 ; 2 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !35 ; 5 uses
  %i.gh = fcmp olt float %.0158482.us496, %i.gg
  %i.gi = select i1 %i.gh, float %.0158482.us496, float %i.gg ; 5 uses
  %i.gj = fcmp ule float %i.gg, 0.000000e+00
  %or.cond.not.us = select i1 %6, i1 true, i1 %i.gj
  br i1 %or.cond.not.us, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %.sroa.014.0.copyload.us = load <2 x float>, ptr %i.gc, align 4
  %.sroa.215.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.sroa.215.0.copyload.us = load float, ptr %.sroa.215.0..sroa_idx.us, align 4
  %i.gk = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = fmul <2 x float> %.sroa.0111.0.copyload, %i.gl
  %i.gn = fsub <2 x float> %.sroa.014.0.copyload.us, %i.gm
  %i.go = fmul float %.sroa.1.8.vec.extract.i, %i.gg
  %i.gp = fsub float %.sroa.215.0.copyload.us, %i.go
  %i.gq = load ptr, ptr %i.ga, align 8, !tbaa !20 ; 3 uses
  %i.gr = sext i32 %.0156483.us495 to i64         ; 2 uses
  %i.gs = getelementptr inbounds [24 x i8], ptr %i.gq, i64 %i.gr ; 5 uses
  %i.gt = mul nsw i64 %i.gr, 24
  %i.gu = ptrtoint ptr %i.gq to i64, !nosanitize !9 ; 3 uses
  %i.gv = add i64 %i.gt, %i.gu, !nosanitize !9    ; 3 uses
  %i.gw = icmp ne ptr %i.gq, null, !nosanitize !9 ; 2 uses
  %i.gx = icmp eq i64 %i.gv, 0
  %i.gy = xor i1 %i.gw, %i.gx
  %i.gz = icmp uge i64 %i.gv, %i.gu, !nosanitize !9
  %i.ha = icmp slt i32 %.0156483.us495, 0
  %i.hb = xor i1 %i.ha, %i.gz
  %i.hc = and i1 %i.gy, %i.hb, !nosanitize !9
  br i1 %i.hc, label %bb.aw, label %.split507.us, !prof !10, !nosanitize !9

bb.aw:                                            ; preds = %bb.av
  %i.hd = ptrtoint ptr %i.gs to i64, !nosanitize !9 ; 2 uses
  %i.he = and i64 %i.hd, 3, !nosanitize !9
  %i.hf = icmp eq i64 %i.he, 0, !nosanitize !9
  %i.hg = and i1 %i.gw, %i.hf
  br i1 %i.hg, label %bb.ax, label %.split511.us, !prof !10, !nosanitize !9

bb.ax:                                            ; preds = %bb.aw
  store <2 x float> %i.gn, ptr %i.gs, align 4, !tbaa !17
  %.sroa.417.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store float %i.gp, ptr %.sroa.417.0..sroa_idx.us, align 4, !tbaa !17
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %i.hi = load float, ptr %i.gf, align 4, !tbaa !35
  store float %i.hi, ptr %i.hh, align 4, !tbaa !23
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = call i32 @b3FlipPair(i32 %i.hl) #9
  store i32 %i.hm, ptr %i.hj, align 4, !tbaa !24
  %i.hn = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.0156483.us495, i32 1), !nosanitize !9 ; 2 uses
  %i.ho = extractvalue { i32, i1 } %i.hn, 1, !nosanitize !9
  br i1 %i.ho, label %.split520.us, label %bb.ay, !prof !18, !nosanitize !9

bb.ay:                                            ; preds = %bb.ax
  %i.hp = extractvalue { i32, i1 } %i.hn, 0, !nosanitize !9
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.au
  %.1157.us = phi i32 [ %i.hp, %bb.ay ], [ %.0156483.us495, %bb.au ] ; 2 uses
  %indvars.iv.next729 = add nuw nsw i64 %indvars.iv728, 1 ; 2 uses
  %exitcond732.not = icmp eq i64 %indvars.iv.next729, %wide.trip.count731
  br i1 %exitcond732.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !108

.split487.us:                                     ; preds = %.lr.ph.split.split.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @143, i64 %i.fz, i64 %i.ge) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split507.us:                                     ; preds = %bb.av
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @144, i64 %i.gu, i64 %i.gv) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split511.us:                                     ; preds = %bb.aw
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @145, i64 %i.hd) #8, !nosanitize !9
  unreachable, !nosanitize !9

.split520.us:                                     ; preds = %bb.ax
  %i.hq = zext nneg i32 %.0156483.us495 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @146, i64 %i.hq, i64 1) #8, !nosanitize !9
  unreachable, !nosanitize !9

._crit_edge:                                      ; preds = %bb.az
  br i1 %6, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %._crit_edge
  %i.hr = call float @b3GetLengthUnitsPerMeter() #9
  %i.hs = fmul float %i.hr, 5.000000e-03
  %i.ht = fmul float %i.hs, 4.000000e+00
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge, %bb.ba
  %i.hu = phi float [ %i.ht, %bb.ba ], [ 0.000000e+00, %._crit_edge ]
  %i.hv = fcmp ogt float %i.gi, %i.hu
  br i1 %i.hv, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.d, align 8, !tbaa !16
  %i.hw = ptrtoint ptr %5 to i64, !nosanitize !9  ; 2 uses
  %i.hx = and i64 %i.hw, 3, !nosanitize !9
  %i.hy = icmp eq i64 %i.hx, 0, !nosanitize !9
  br i1 %i.hy, label %bb.be, label %bb.bd, !prof !10, !nosanitize !9

bb.bd:                                            ; preds = %bb.bc
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @147, i64 %i.hw) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.be:                                            ; preds = %bb.bc
  store i32 0, ptr %5, align 4
  %.sroa_idx230 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %.sroa_idx230, align 4
  br label %bb.bi

bb.bf:                                            ; preds = %bb.bb
  store i32 %.1157.us, ptr %i.d, align 8, !tbaa !16
  %i.hz = fneg <2 x float> %.sroa.0111.0.copyload
  %i.ia = fneg float %.sroa.1.8.vec.extract.i
  store <2 x float> %i.hz, ptr %0, align 8, !tbaa !17
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ia, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !17
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 2, ptr %i.ib, align 8, !tbaa !19
  %i.ic = ptrtoint ptr %5 to i64, !nosanitize !9  ; 2 uses
  %i.id = and i64 %i.ic, 3, !nosanitize !9
  %i.ie = icmp eq i64 %i.id, 0, !nosanitize !9
  br i1 %i.ie, label %bb.bh, label %bb.bg, !prof !10, !nosanitize !9

bb.bg:                                            ; preds = %bb.bf
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @148, i64 %i.ic) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.bh:                                            ; preds = %bb.bf
  store float %i.gi, ptr %5, align 4, !tbaa !47
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 3, ptr %i.if, align 4, !tbaa !46
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !38
  %i.ij = trunc i32 %i.ii to i8
  store i8 %i.ij, ptr %i.ig, align 1, !tbaa !55
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 6
  %9 = load i32, ptr %i.an, align 4, !tbaa !39
  %i.il = trunc i32 %9 to i8
  store i8 %i.il, ptr %i.ik, align 2, !tbaa !56
  br label %bb.bi

bb.bi:                                            ; preds = %bb.as, %bb.be, %bb.bh
  %.3 = phi float [ %i.fx, %bb.as ], [ %i.gi, %bb.bh ], [ %i.gi, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret float %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3CollideTriangleAndHullEdges(ptr noundef nonnull %0, <2 x float> %1, float %2, <2 x float> %3, float %4, ptr noundef nonnull %5, ptr nofree noundef readonly byval(%struct.b3SeparatingAxis) align 8 captures(none) %6, ptr noundef nonnull %7) unnamed_addr #0 !func_sanitize !109 {
bb.a:
  %8 = alloca %struct.b3SegmentDistanceResult, align 8 ; 9 uses
  %i.a = alloca [3 x i32], align 4                ; 5 uses
  %i.b = ptrtoint ptr %5 to i64, !nosanitize !9   ; 6 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  br i1 %i.d, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @97, i64 %i.b) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 116
  %i.f = load i32, ptr %i.e, align 4, !tbaa !52   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %b3GetHullEdges.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sext i32 %i.f to i64                     ; 2 uses
  %i.i = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.h), !nosanitize !9 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1, !nosanitize !9
  br i1 %i.j, label %bb.e, label %bb.f, !prof !18, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @99, i64 %i.b, i64 %i.h) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.k = extractvalue { i64, i1 } %i.i, 0, !nosanitize !9
  %i.l = inttoptr i64 %i.k to ptr
  br label %b3GetHullEdges.exit

b3GetHullEdges.exit:                              ; preds = %bb.c, %bb.f
  %.0.i = phi ptr [ %i.l, %bb.f ], [ null, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 108
  %i.n = load i32, ptr %i.m, align 4, !tbaa !54   ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %b3GetHullPoints.exit, label %bb.g

bb.g:                                             ; preds = %b3GetHullEdges.exit
  %i.p = sext i32 %i.n to i64                     ; 2 uses
  %i.q = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.p), !nosanitize !9 ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1, !nosanitize !9
  br i1 %i.r, label %bb.h, label %bb.i, !prof !18, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @102, i64 %i.b, i64 %i.p) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.s = extractvalue { i64, i1 } %i.q, 0, !nosanitize !9
  %i.t = inttoptr i64 %i.s to ptr
  br label %b3GetHullPoints.exit

b3GetHullPoints.exit:                             ; preds = %b3GetHullEdges.exit, %bb.i
  %.0.i107 = phi ptr [ %i.t, %bb.i ], [ null, %b3GetHullEdges.exit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !39   ; 4 uses
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.w ; 3 uses
  %i.y = shl nsw i64 %i.w, 2
  %i.z = ptrtoint ptr %.0.i to i64, !nosanitize !9 ; 6 uses
  %i.aa = add i64 %i.y, %i.z, !nosanitize !9      ; 3 uses
  %i.ab = icmp ne ptr %.0.i, null, !nosanitize !9 ; 2 uses
  %i.ac = icmp eq i64 %i.aa, 0
  %i.ad = xor i1 %i.ab, %i.ac
  %i.ae = icmp uge i64 %i.aa, %i.z, !nosanitize !9
  %i.af = icmp slt i32 %i.v, 0
  %i.ag = xor i1 %i.af, %i.ae
  %i.ah = and i1 %i.ad, %i.ag, !nosanitize !9
  br i1 %i.ah, label %bb.k, label %bb.j, !prof !10, !nosanitize !9

bb.j:                                             ; preds = %b3GetHullPoints.exit
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @149, i64 %i.z, i64 %i.aa) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %b3GetHullPoints.exit
  br i1 %i.ab, label %bb.m, label %bb.l, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  %i.ai = ptrtoint ptr %i.x to i64, !nosanitize !9
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @150, i64 %i.ai) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !110
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %i.al
  %i.an = shl nuw nsw i64 %i.al, 2
  %i.ao = add i64 %i.an, %i.z, !nosanitize !9     ; 2 uses
  %.not133 = icmp ult i64 %i.ao, %i.z, !nosanitize !9
  br i1 %.not133, label %bb.n, label %bb.o, !prof !18, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @151, i64 %i.z, i64 %i.ao) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !58
  %i.ar = zext i8 %i.aq to i64                    ; 2 uses
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %.0.i107, i64 %i.ar ; 3 uses
  %i.at = mul nuw nsw i64 %i.ar, 12
  %i.au = ptrtoint ptr %.0.i107 to i64, !nosanitize !9 ; 6 uses
  %i.av = add i64 %i.at, %i.au, !nosanitize !9    ; 3 uses
  %i.aw = icmp ne ptr %.0.i107, null, !nosanitize !9 ; 2 uses
  %i.ax = icmp eq i64 %i.av, 0
  %i.ay = xor i1 %i.aw, %i.ax
  %i.az = icmp uge i64 %i.av, %i.au, !nosanitize !9
  %i.ba = and i1 %i.az, %i.ay, !nosanitize !9
  br i1 %i.ba, label %bb.q, label %bb.p, !prof !10, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @152, i64 %i.au, i64 %i.av) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  %i.bb = ptrtoint ptr %i.as to i64, !nosanitize !9 ; 2 uses
  %i.bc = and i64 %i.bb, 3, !nosanitize !9
  %i.bd = icmp eq i64 %i.bc, 0, !nosanitize !9
  %i.be = and i1 %i.aw, %i.bd
  br i1 %i.be, label %bb.s, label %bb.r, !prof !10, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @153, i64 %i.bb) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  %.sroa.053.0.copyload = load <2 x float>, ptr %i.as, align 4, !tbaa !17 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !17 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !58
  %i.bh = zext i8 %i.bg to i64                    ; 2 uses
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %.0.i107, i64 %i.bh ; 3 uses
  %i.bj = mul nuw nsw i64 %i.bh, 12
  %i.bk = add i64 %i.bj, %i.au, !nosanitize !9    ; 2 uses
  %.not134 = icmp ult i64 %i.bk, %i.au, !nosanitize !9
  br i1 %.not134, label %bb.t, label %bb.u, !prof !18, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @154, i64 %i.au, i64 %i.bk) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %bb.s
  %i.bl = ptrtoint ptr %i.bi to i64, !nosanitize !9 ; 2 uses
  %i.bm = and i64 %i.bl, 3, !nosanitize !9
  %i.bn = icmp eq i64 %i.bm, 0, !nosanitize !9
  br i1 %i.bn, label %bb.w, label %bb.v, !prof !10, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @155, i64 %i.bl) #8, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %bb.u
  %.sroa.051.0.copyload = load <2 x float>, ptr %i.bi, align 4, !tbaa !17
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.452.0.copyload = load float, ptr %.sroa.452.0..sroa_idx, align 4, !tbaa !17
  %i.bo = fsub <2 x float> %.sroa.051.0.copyload, %.sroa.053.0.copyload
  %i.bp = fsub float %.sroa.452.0.copyload, %.sroa.6.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @b3LineDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3SegmentDistanceResult) align 4 %8, <2 x float> %1, float %2, <2 x float> %3, float %4, <2 x float> %.sroa.053.0.copyload, float %.sroa.6.0.copyload, <2 x float> %i.bo, float %i.bp) #9
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.br = load float, ptr %i.bq, align 4, !tbaa !43 ; 2 uses
  %i.bs = fcmp olt float %i.br, 0.000000e+00
  %i.bt = fcmp ogt float %i.br, 1.000000e+00
  %or.cond = or i1 %i.bs, %i.bt
  br i1 %or.cond, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !44 ; 2 uses
  %i.bw = fcmp olt float %i.bv, 0.000000e+00
  %i.bx = fcmp ogt float %i.bv, 1.000000e+00
  %or.cond106 = or i1 %i.bw, %i.bx
  br i1 %or.cond106, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.by = ptrtoint ptr %7 to i64, !nosanitize !9  ; 2 uses
  %i.bz = and i64 %i.by, 3, !nosanitize !9
  %i.ca = icmp eq i64 %i.bz, 0, !nosanitize !9
  br i1 %i.ca, label %bb.aa, label %bb.z, !prof !10, !nosanitize !9

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @156, i64 %i.by) #8, !nosanitize !9
  unreachable, !nosanitize !9
end_hunk_1
