Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/dynamic_tree?download=true
inline.NumInlined: 171
inline.NumDeleted: 36
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3FreeNode:bb.a
bb.i:                                             ; preds = %bb.g
  %i.ak = ptrtoint ptr %i.ab to i64, !nosanitize !9 ; 2 uses
  %i.al = and i64 %i.ak, 7, !nosanitize !9
  %i.am = icmp eq i64 %i.al, 0, !nosanitize !9
  %i.an = and i1 %i.ae, %i.am
  br i1 %i.an, label %bb.k, label %bb.j, !prof !20, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @216, i64 %i.ak) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 46
  store i16 0, ptr %i.ao, align 2, !tbaa !40
  store i32 %1, ptr %i.f, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !22 ; 2 uses
  %i.ar = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.aq, i32 -1) ; 2 uses
  %i.as = extractvalue { i32, i1 } %i.ar, 1, !nosanitize !9
  br i1 %i.as, label %bb.l, label %bb.m, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  %i.at = zext i32 %i.aq to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @217, i64 %i.at, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  %i.au = extractvalue { i32, i1 } %i.ar, 0, !nosanitize !9
  store i32 %i.au, ptr %i.ap, align 4, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @b3DynamicTree_GetProxyCount(ptr noundef %0) local_unnamed_addr #0 !func_sanitize !44 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !20, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @19, i64 %i.b) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define void @b3DynamicTree_MoveProxy(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly byval(%struct.b3AABB) align 8 captures(none) %2) local_unnamed_addr #0 !func_sanitize !45 {
bb.a:
  tail call fastcc void @b3RemoveLeaf(ptr noundef %0, i32 noundef %1)
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !20, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @20, i64 %i.b) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 3 uses
  %i.h = sext i32 %1 to i64                       ; 2 uses
  %i.i = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = mul nsw i64 %i.h, 48
  %i.k = ptrtoint ptr %i.g to i64, !nosanitize !9 ; 3 uses
  %i.l = add i64 %i.j, %i.k, !nosanitize !9       ; 3 uses
  %i.m = icmp ne ptr %i.g, null, !nosanitize !9   ; 2 uses
  %i.n = icmp eq i64 %i.l, 0
  %i.o = xor i1 %i.m, %i.n
  %i.p = icmp uge i64 %i.l, %i.k, !nosanitize !9
  %i.q = icmp slt i32 %1, 0
  %i.r = xor i1 %i.q, %i.p
  %i.s = and i1 %i.o, %i.r, !nosanitize !9
  br i1 %i.s, label %bb.e, label %bb.d, !prof !20, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @21, i64 %i.k, i64 %i.l) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.t = ptrtoint ptr %i.i to i64, !nosanitize !9 ; 2 uses
  %i.u = and i64 %i.t, 7, !nosanitize !9
  %i.v = icmp eq i64 %i.u, 0, !nosanitize !9
  %i.w = and i1 %i.m, %i.v
  br i1 %i.w, label %bb.g, label %bb.f, !prof !20, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @22, i64 %i.t) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !33
  tail call fastcc void @b3InsertLeaf(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3DynamicTree_EnlargeProxy(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly byval(%struct.b3AABB) align 8 captures(none) %2) local_unnamed_addr #0 !func_sanitize !45 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !20, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @23, i64 %i.b) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 5 uses
  %i.h = sext i32 %1 to i64                       ; 2 uses
  %i.i = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = mul nsw i64 %i.h, 48
  %i.k = ptrtoint ptr %i.g to i64, !nosanitize !9 ; 9 uses
  %i.l = add i64 %i.j, %i.k, !nosanitize !9       ; 3 uses
  %i.m = icmp ne ptr %i.g, null, !nosanitize !9   ; 2 uses
  %i.n = icmp eq i64 %i.l, 0
  %i.o = xor i1 %i.m, %i.n
  %i.p = icmp uge i64 %i.l, %i.k, !nosanitize !9
  %i.q = icmp slt i32 %1, 0
  %i.r = xor i1 %i.q, %i.p
  %i.s = and i1 %i.o, %i.r, !nosanitize !9
  br i1 %i.s, label %bb.e, label %bb.d, !prof !20, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @24, i64 %i.k, i64 %i.l) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.t = ptrtoint ptr %i.i to i64, !nosanitize !9 ; 2 uses
  %i.u = and i64 %i.t, 7, !nosanitize !9
  %i.v = icmp eq i64 %i.u, 0, !nosanitize !9
  %i.w = and i1 %i.m, %i.v
  br i1 %i.w, label %bb.g, label %bb.f, !prof !20, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @25, i64 %i.t) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !24
  %.sroa.0.0.copyload = load float, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %b3EnlargeAABB.exit, %bb.g
  %.018 = phi i32 [ %i.y, %bb.g ], [ %i.bg, %b3EnlargeAABB.exit ] ; 3 uses
  %.not = icmp eq i32 %.018, -1
  br i1 %.not, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = sext i32 %.018 to i64                    ; 2 uses
  %i.aa = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.z ; 10 uses
  %i.ab = mul nsw i64 %i.z, 48
  %i.ac = add i64 %i.ab, %i.k, !nosanitize !9     ; 3 uses
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = icmp uge i64 %i.ac, %i.k, !nosanitize !9
  %i.af = icmp slt i32 %.018, 0
  %i.ag = xor i1 %i.af, %i.ae
  %i.ah = and i1 %i.ad, %i.ag, !nosanitize !9
  br i1 %i.ah, label %bb.k, label %bb.j, !prof !20, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @26, i64 %i.k, i64 %i.ac) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.ai = ptrtoint ptr %i.aa to i64, !nosanitize !9 ; 2 uses
  %i.aj = and i64 %i.ai, 7, !nosanitize !9
  %i.ak = icmp eq i64 %i.aj, 0, !nosanitize !9
  br i1 %i.ak, label %bb.m, label %bb.l, !prof !20, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @27, i64 %i.ai) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  %i.al = load float, ptr %i.aa, align 8, !tbaa !64
  %i.am = fcmp olt float %.sroa.0.0.copyload, %i.al ; 2 uses
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store float %.sroa.0.0.copyload, ptr %i.aa, align 8, !tbaa !64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !65
  %i.ap = fcmp olt float %.sroa.4.0.copyload, %i.ao
  br i1 %i.ap, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store float %.sroa.4.0.copyload, ptr %i.an, align 4, !tbaa !65
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.i = phi i1 [ true, %bb.p ], [ %i.am, %bb.o ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !66
  %i.as = fcmp olt float %.sroa.5.0.copyload, %i.ar
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store float %.sroa.5.0.copyload, ptr %i.aq, align 8, !tbaa !66
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.i = phi i1 [ true, %bb.r ], [ %.1.i, %bb.q ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 12 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !67
  %i.av = fcmp olt float %i.au, %.sroa.6.0.copyload
  br i1 %i.av, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store float %.sroa.6.0.copyload, ptr %i.at, align 4, !tbaa !67
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.3.i = phi i1 [ true, %bb.t ], [ %.2.i, %bb.s ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !68
  %i.ay = fcmp olt float %i.ax, %.sroa.7.0.copyload
  br i1 %i.ay, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store float %.sroa.7.0.copyload, ptr %i.aw, align 8, !tbaa !68
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.4.i = phi i1 [ true, %bb.v ], [ %.3.i, %bb.u ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 20 ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !69
  %i.bb = fcmp olt float %i.ba, %.sroa.8.0.copyload
  br i1 %i.bb, label %bb.x, label %b3EnlargeAABB.exit

bb.x:                                             ; preds = %bb.w
  store float %.sroa.8.0.copyload, ptr %i.az, align 4, !tbaa !69
  br label %b3EnlargeAABB.exit

b3EnlargeAABB.exit:                               ; preds = %bb.x, %bb.w
  %.5.i = phi i1 [ true, %bb.x ], [ %.4.i, %bb.w ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 46 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !40
  %i.be = or i16 %i.bd, 2
  store i16 %i.be, ptr %i.bc, align 2, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !24 ; 3 uses
  br i1 %.5.i, label %bb.h, label %bb.y

bb.y:                                             ; preds = %b3EnlargeAABB.exit
  %.not2480 = icmp eq i32 %i.bg, -1
  br i1 %.not2480, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y, %bb.ad
  %.281 = phi i32 [ %i.by, %bb.ad ], [ %i.bg, %bb.y ] ; 2 uses
  %i.bh = sext i32 %.281 to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.bh ; 3 uses
  %i.bj = mul nsw i64 %i.bh, 48
  %i.bk = add i64 %i.bj, %i.k, !nosanitize !9     ; 3 uses
  %i.bl = icmp ne i64 %i.bk, 0
  %i.bm = icmp uge i64 %i.bk, %i.k, !nosanitize !9
  %i.bn = icmp slt i32 %.281, 0
  %i.bo = xor i1 %i.bn, %i.bm
  %i.bp = and i1 %i.bl, %i.bo, !nosanitize !9
  br i1 %i.bp, label %bb.aa, label %bb.z, !prof !20, !nosanitize !9

bb.z:                                             ; preds = %.lr.ph
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @28, i64 %i.k, i64 %i.bk) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.aa:                                            ; preds = %.lr.ph
  %i.bq = ptrtoint ptr %i.bi to i64, !nosanitize !9 ; 2 uses
  %i.br = and i64 %i.bq, 7, !nosanitize !9
  %i.bs = icmp eq i64 %i.br, 0, !nosanitize !9
  br i1 %i.bs, label %bb.ac, label %bb.ab, !prof !20, !nosanitize !9

bb.ab:                                            ; preds = %bb.aa
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @29, i64 %i.bq) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ac:                                            ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 46 ; 2 uses
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !40 ; 2 uses
  %i.bv = and i16 %i.bu, 2
  %.not25 = icmp eq i16 %i.bv, 0
  br i1 %.not25, label %bb.ad, label %._crit_edge

bb.ad:                                            ; preds = %bb.ac
  %i.bw = or disjoint i16 %i.bu, 2
  store i16 %i.bw, ptr %i.bt, align 2, !tbaa !40
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !24 ; 2 uses
  %.not24 = icmp eq i32 %i.by, -1
  br i1 %.not24, label %._crit_edge, label %.lr.ph, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.h, %bb.ad, %bb.ac, %bb.y
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3DynamicTree_SetCategoryBits(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 !func_sanitize !70 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !20, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @30, i64 %i.b) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23   ; 6 uses
  %i.h = sext i32 %1 to i64                       ; 2 uses
  %i.i = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = mul nsw i64 %i.h, 48
  %i.k = ptrtoint ptr %i.g to i64, !nosanitize !9 ; 12 uses
  %i.l = add i64 %i.j, %i.k, !nosanitize !9       ; 3 uses
  %i.m = icmp ne ptr %i.g, null, !nosanitize !9   ; 2 uses
  %i.n = icmp eq i64 %i.l, 0
  %i.o = xor i1 %i.m, %i.n
  %i.p = icmp uge i64 %i.l, %i.k, !nosanitize !9
  %i.q = icmp slt i32 %1, 0
  %i.r = xor i1 %i.q, %i.p
  %i.s = and i1 %i.o, %i.r, !nosanitize !9
  br i1 %i.s, label %bb.e, label %bb.d, !prof !20, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @31, i64 %i.k, i64 %i.l) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.t = ptrtoint ptr %i.i to i64, !nosanitize !9 ; 2 uses
  %i.u = and i64 %i.t, 7, !nosanitize !9
  %i.v = icmp eq i64 %i.u, 0, !nosanitize !9
  %i.w = and i1 %i.m, %i.v
  br i1 %i.w, label %bb.g, label %bb.f, !prof !20, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @32, i64 %i.t) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %2, ptr %i.x, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.0276 = load i32, ptr %i.y, align 8, !tbaa !24 ; 2 uses
  %.not277 = icmp eq i32 %.0276, -1
  br i1 %.not277, label %.preheader._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.preheader
  %.0278 = phi i32 [ %.0, %.preheader ], [ %.0276, %bb.g ] ; 2 uses
  %i.z = sext i32 %.0278 to i64                   ; 2 uses
  %i.aa = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.z ; 5 uses
  %i.ab = mul nsw i64 %i.z, 48
  %i.ac = add i64 %i.ab, %i.k, !nosanitize !9     ; 3 uses
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = icmp uge i64 %i.ac, %i.k, !nosanitize !9
  %i.af = icmp slt i32 %.0278, 0
  %i.ag = xor i1 %i.af, %i.ae
  %i.ah = and i1 %i.ad, %i.ag, !nosanitize !9
  br i1 %i.ah, label %bb.i, label %bb.h, !prof !20, !nosanitize !9

bb.h:                                             ; preds = %.lr.ph
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @33, i64 %i.k, i64 %i.ac) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %.lr.ph
  %i.ai = ptrtoint ptr %i.aa to i64, !nosanitize !9 ; 2 uses
  %i.aj = and i64 %i.ai, 7, !nosanitize !9
  %i.ak = icmp eq i64 %i.aj, 0, !nosanitize !9
  br i1 %i.ak, label %bb.k, label %bb.j, !prof !20, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @34, i64 %i.ai) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  %i.an = load i32, ptr %i.al, align 8, !tbaa !24 ; 2 uses
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !24 ; 2 uses
  %i.ap = sext i32 %i.an to i64                   ; 2 uses
  %i.aq = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.ap ; 2 uses
  %i.ar = mul nsw i64 %i.ap, 48
  %i.as = add i64 %i.ar, %i.k, !nosanitize !9     ; 3 uses
  %i.at = icmp ne i64 %i.as, 0
  %i.au = icmp uge i64 %i.as, %i.k, !nosanitize !9
  %i.av = icmp slt i32 %i.an, 0
  %i.aw = xor i1 %i.av, %i.au
  %i.ax = and i1 %i.at, %i.aw, !nosanitize !9
  br i1 %i.ax, label %bb.m, label %bb.l, !prof !20, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @35, i64 %i.k, i64 %i.as) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  %i.ay = ptrtoint ptr %i.aq to i64, !nosanitize !9 ; 2 uses
  %i.az = and i64 %i.ay, 7, !nosanitize !9
  %i.ba = icmp eq i64 %i.az, 0, !nosanitize !9
  br i1 %i.ba, label %bb.o, label %bb.n, !prof !20, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @36, i64 %i.ay) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !38
  %i.bd = sext i32 %i.ao to i64                   ; 2 uses
  %i.be = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.bd ; 2 uses
  %i.bf = mul nsw i64 %i.bd, 48
  %i.bg = add i64 %i.bf, %i.k, !nosanitize !9     ; 3 uses
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = icmp uge i64 %i.bg, %i.k, !nosanitize !9
  %i.bj = icmp slt i32 %i.ao, 0
  %i.bk = xor i1 %i.bj, %i.bi
  %i.bl = and i1 %i.bh, %i.bk, !nosanitize !9
  br i1 %i.bl, label %bb.q, label %bb.p, !prof !20, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @37, i64 %i.k, i64 %i.bg) #11, !nosanitize !9
end_hunk_0
