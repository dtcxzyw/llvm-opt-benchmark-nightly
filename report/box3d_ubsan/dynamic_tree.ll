Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/dynamic_tree?download=true
inline.NumInlined: 171
inline.NumDeleted: 36
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3DynamicTree_Query:bb.a
  %or.cond59.not75.us = select i1 %or.cond.not78.us, i1 %i.bk, i1 false
  %i.bl = fcmp ule float %.sroa.449.0.copyload.us, %i.t
  %or.cond62.not73.us = select i1 %or.cond59.not75.us, i1 %i.bl, i1 false
  %i.bm = fcmp uge float %.sroa.8.0.copyload.us, %i.v
  %or.cond65.not71.us = select i1 %or.cond62.not73.us, i1 %i.bm, i1 false
  %i.bn = fcmp ule float %.sroa.5.0.copyload.us, %i.x
  %or.cond68.us = select i1 %or.cond65.not71.us, i1 %i.bn, i1 false
  br i1 %or.cond68.us, label %b3IsLeaf.exit.us, label %b3AABB_Overlaps.exit.thread.us

b3IsLeaf.exit.us:                                 ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 46
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !40
  %i.bq = and i16 %i.bp, 4
  %.not79.us = icmp eq i16 %i.bq, 0
  br i1 %.not79.us, label %bb.q, label %bb.m

bb.m:                                             ; preds = %b3IsLeaf.exit.us
  %i.br = load i32, ptr %i.y, align 4, !nosanitize !9
  %i.bs = icmp eq i32 %i.br, -1056584962, !nosanitize !9
  br i1 %i.bs, label %bb.n, label %bb.o, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  %i.bt = load i32, ptr %i.z, align 8, !nosanitize !9
  %i.bu = icmp eq i32 %i.bt, -1371165798, !nosanitize !9
  br i1 %i.bu, label %bb.o, label %.split292.us, !prof !20, !nosanitize !9

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !24
  %i.bx = call zeroext i1 %4(i32 noundef %i.af, i64 noundef %i.bw, ptr noundef %5) #12
  %i.by = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.4.0254.us, i32 1), !nosanitize !9 ; 2 uses
  %i.bz = extractvalue { i32, i1 } %i.by, 1, !nosanitize !9
  br i1 %i.bz, label %.split297.us, label %bb.p, !prof !10, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  %i.ca = extractvalue { i32, i1 } %i.by, 0, !nosanitize !9 ; 2 uses
  br i1 %i.bx, label %b3AABB_Overlaps.exit.thread.us, label %.thread

bb.q:                                             ; preds = %b3IsLeaf.exit.us
  %.not45.us = icmp eq i32 %.028256.us, 1024
  br i1 %.not45.us, label %b3AABB_Overlaps.exit.thread.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !24
  store i32 %i.cc, ptr %i.ac, align 4, !tbaa !47
  %i.cd = zext nneg i32 %.028256.us to i64        ; 2 uses
  %i.ce = shl nuw nsw i64 %i.cd, 2
  %i.cf = add i64 %i.ce, %i.l, !nosanitize !9     ; 2 uses
  %.not46.us = icmp ult i64 %i.cf, %i.l, !nosanitize !9
  br i1 %.not46.us, label %.split308.us, label %bb.s, !prof !10, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cd
  %i.ch = add nuw nsw i32 %.028256.us, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aj, i64 36
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !24
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !47
  br label %b3AABB_Overlaps.exit.thread.us

b3AABB_Overlaps.exit.thread.us:                   ; preds = %bb.s, %bb.q, %bb.p, %bb.l, %.split.us, %bb.j, %bb.e
  %.sroa.4.1.us = phi i32 [ %.sroa.4.0254.us, %bb.e ], [ %.sroa.4.0254.us, %bb.j ], [ %i.ca, %bb.p ], [ %.sroa.4.0254.us, %bb.q ], [ %.sroa.4.0254.us, %bb.s ], [ %.sroa.4.0254.us, %bb.l ], [ %.sroa.4.0254.us, %.split.us ] ; 2 uses
  %.sroa.0.1.us = phi i32 [ %.sroa.0.0255.us, %bb.e ], [ %i.aw, %bb.j ], [ %i.aw, %bb.p ], [ %i.aw, %bb.q ], [ %i.aw, %bb.s ], [ %i.aw, %bb.l ], [ %i.aw, %.split.us ] ; 2 uses
  %.3.us = phi i32 [ %i.aa, %bb.e ], [ %i.aa, %bb.j ], [ %i.aa, %bb.p ], [ 1023, %bb.q ], [ %i.ch, %bb.s ], [ %i.aa, %bb.l ], [ %i.aa, %.split.us ] ; 2 uses
  %.not = icmp eq i32 %.3.us, 0
  br i1 %.not, label %.thread, label %.split257.us.preheader

.split261.us:                                     ; preds = %.split257.us.preheader
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @56, i64 %i.l, i64 %i.ae) #11, !nosanitize !9
  unreachable, !nosanitize !9

.split267.us:                                     ; preds = %bb.f
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @57, i64 %i.al, i64 %i.am) #11, !nosanitize !9
  unreachable, !nosanitize !9

.split271.us:                                     ; preds = %bb.g
  %i.ck = zext nneg i32 %.sroa.0.0255.us to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @58, i64 %i.ck, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

.split280.us:                                     ; preds = %bb.k
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @59, i64 %i.ax) #11, !nosanitize !9
  unreachable, !nosanitize !9

.split274.us:                                     ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @60, i64 %i.ax) #11, !nosanitize !9
  unreachable, !nosanitize !9

.split292.us:                                     ; preds = %bb.n
  %i.cl = ptrtoint ptr %4 to i64, !nosanitize !9
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @62, i64 %i.cl) #11, !nosanitize !9
  unreachable, !nosanitize !9

.split297.us:                                     ; preds = %bb.o
  %i.cm = zext nneg i32 %.sroa.4.0254.us to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @63, i64 %i.cm, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

.split308.us:                                     ; preds = %bb.r
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @64, i64 %i.l, i64 %i.cf) #11, !nosanitize !9
  unreachable, !nosanitize !9

.thread:                                          ; preds = %bb.p, %b3AABB_Overlaps.exit.thread.us
  %.us-phi299.ph = phi i32 [ %.sroa.4.1.us, %b3AABB_Overlaps.exit.thread.us ], [ %i.ca, %bb.p ]
  %.us-phi300.ph = phi i32 [ %.sroa.0.1.us, %b3AABB_Overlaps.exit.thread.us ], [ %i.aw, %bb.p ]
  %i.cn = zext i32 %.us-phi299.ph to i64
  %i.co = shl nuw i64 %i.cn, 32
  %i.cp = zext i32 %.us-phi300.ph to i64
  %i.cq = or disjoint i64 %i.co, %i.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %.thread
  %.sroa.0.0.insert.insert = phi i64 [ 0, %bb.c ], [ %i.cq, %.thread ]
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_out_of_bounds_abort(ptr, i64) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_function_type_mismatch_abort(ptr, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @b3DynamicTree_QueryClosest(ptr noundef %0, <2 x float> %1, float %2, i64 noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #6 !func_sanitize !77 {
bb.a:
  %8 = alloca [1024 x %struct.b3QueryClosestItem], align 16 ; 7 uses
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !20, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @65, i64 %i.b) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !22
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.au, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ne ptr %7, null, !nosanitize !9
  %i.j = ptrtoint ptr %7 to i64, !nosanitize !9   ; 2 uses
  %i.k = and i64 %i.j, 3, !nosanitize !9
  %i.l = icmp eq i64 %i.k, 0, !nosanitize !9
  %i.m = and i1 %i.i, %i.l, !nosanitize !9
  br i1 %i.m, label %bb.f, label %bb.e, !prof !20, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @67, i64 %i.j) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.n = load float, ptr %7, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !19   ; 3 uses
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = mul nsw i64 %i.s, 48
  %i.u = ptrtoint ptr %i.p to i64, !nosanitize !9 ; 3 uses
  %i.v = add i64 %i.t, %i.u, !nosanitize !9       ; 3 uses
  %i.w = icmp ne ptr %i.p, null                   ; 2 uses
  %i.x = icmp eq i64 %i.v, 0
  %i.y = xor i1 %i.w, %i.x
  %i.z = icmp uge i64 %i.v, %i.u, !nosanitize !9
  %i.aa = icmp slt i32 %i.r, 0
  %i.ab = xor i1 %i.aa, %i.z
  %i.ac = and i1 %i.y, %i.ab, !nosanitize !9
  br i1 %i.ac, label %bb.h, label %bb.g, !prof !20, !nosanitize !9

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @68, i64 %i.u, i64 %i.v) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds [48 x i8], ptr %i.p, i64 %i.s ; 5 uses
  %i.ae = ptrtoint ptr %i.ad to i64, !nosanitize !9 ; 2 uses
  %i.af = and i64 %i.ae, 7, !nosanitize !9
  %i.ag = icmp eq i64 %i.af, 0, !nosanitize !9
  %i.ah = and i1 %i.ag, %i.w
  br i1 %i.ah, label %b3DistanceToNodeSqr.exit95, label %bb.i, !prof !20, !nosanitize !9

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @220, i64 %i.ae) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3DistanceToNodeSqr.exit95:                       ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %.sroa.015.0.copyload.i85 = load <2 x float>, ptr %i.ad, align 8 ; 2 uses
  %.sroa.216.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.216.0.copyload.i87 = load float, ptr %.sroa.216.0..sroa_idx.i86, align 8 ; 2 uses
  %.sroa.013.0.copyload.i88 = load <2 x float>, ptr %i.ai, align 4 ; 2 uses
  %.sroa.214.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %.sroa.214.0.copyload.i90 = load float, ptr %.sroa.214.0..sroa_idx.i89, align 4 ; 2 uses
  %.sroa.09.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 4 uses
  %.sroa.09.4.vec.extract.i = extractelement <2 x float> %1, i64 1 ; 4 uses
  %i.aj = fcmp olt float %2, %.sroa.216.0.copyload.i87
  %i.ak = fcmp olt float %.sroa.214.0.copyload.i90, %2
  %i.al = select i1 %i.ak, float %.sroa.214.0.copyload.i90, float %2
  %i.am = select i1 %i.aj, float %.sroa.216.0.copyload.i87, float %i.al
  %9 = fsub float %2, %i.am                       ; 2 uses
  %10 = fcmp olt <2 x float> %1, %.sroa.015.0.copyload.i85
  %11 = fcmp olt <2 x float> %.sroa.013.0.copyload.i88, %1
  %12 = select <2 x i1> %11, <2 x float> %.sroa.013.0.copyload.i88, <2 x float> %1
  %13 = select <2 x i1> %10, <2 x float> %.sroa.015.0.copyload.i85, <2 x float> %12
  %14 = fsub <2 x float> %1, %13                  ; 2 uses
  %15 = fmul <2 x float> %14, %14                 ; 2 uses
  %shift = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %15, %shift
  %16 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.an = fmul float %9, %9
  %i.ao = fadd float %i.an, %16
  %i.ap = ptrtoint ptr %8 to i64, !nosanitize !9  ; 7 uses
  store i32 %i.r, ptr %8, align 16
  %.sroa_idx165 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.ao, ptr %.sroa_idx165, align 4
  %i.aq = getelementptr i8, ptr %5, i64 -8
  %i.ar = getelementptr i8, ptr %5, i64 -4
  %i.as = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.at = insertelement <2 x float> %i.as, float %2, i64 0 ; 4 uses
  %i.au = insertelement <2 x float> %i.as, float %2, i64 1 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.as, %b3DistanceToNodeSqr.exit95
  %.0447 = phi float [ %i.n, %b3DistanceToNodeSqr.exit95 ], [ %.2, %bb.as ] ; 7 uses
  %.049446 = phi i32 [ 1, %b3DistanceToNodeSqr.exit95 ], [ %.251, %bb.as ] ; 4 uses
  %.sroa.4.0445 = phi i32 [ 0, %b3DistanceToNodeSqr.exit95 ], [ %.sroa.4.1, %bb.as ] ; 5 uses
  %.sroa.0167.0444 = phi i32 [ 0, %b3DistanceToNodeSqr.exit95 ], [ %i.br, %bb.as ]
  %i.av = add nsw i32 %.049446, -1                ; 3 uses
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.aw ; 4 uses
  %i.ay = shl nuw nsw i64 %i.aw, 3
  %i.az = add i64 %i.ay, %i.ap, !nosanitize !9    ; 2 uses
  %.not = icmp ult i64 %i.az, %i.ap, !nosanitize !9
  br i1 %.not, label %bb.k, label %bb.l, !prof !10, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @69, i64 %i.ap, i64 %i.az) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.j
  %i.ba = load i32, ptr %i.ax, align 8            ; 3 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 3 uses
  %i.bb = load float, ptr %.sroa_idx, align 4
  %i.bc = load ptr, ptr %i.o, align 8, !tbaa !23  ; 5 uses
  %i.bd = sext i32 %i.ba to i64                   ; 2 uses
  %i.be = getelementptr inbounds [48 x i8], ptr %i.bc, i64 %i.bd ; 8 uses
  %i.bf = mul nsw i64 %i.bd, 48
  %i.bg = ptrtoint ptr %i.bc to i64, !nosanitize !9 ; 9 uses
  %i.bh = add i64 %i.bf, %i.bg, !nosanitize !9    ; 3 uses
  %i.bi = icmp ne ptr %i.bc, null, !nosanitize !9 ; 2 uses
  %i.bj = icmp eq i64 %i.bh, 0
  %i.bk = xor i1 %i.bi, %i.bj
  %i.bl = icmp uge i64 %i.bh, %i.bg, !nosanitize !9
  %i.bm = icmp slt i32 %i.ba, 0
  %i.bn = xor i1 %i.bm, %i.bl
  %i.bo = and i1 %i.bk, %i.bn, !nosanitize !9
  br i1 %i.bo, label %bb.n, label %bb.m, !prof !20, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @70, i64 %i.bg, i64 %i.bh) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.l
  %i.bp = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0167.0444, i32 1), !nosanitize !9 ; 2 uses
  %i.bq = extractvalue { i32, i1 } %i.bp, 1, !nosanitize !9
  br i1 %i.bq, label %bb.o, label %bb.p, !prof !10, !nosanitize !9

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @71, i64 2147483647, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.p:                                             ; preds = %bb.n
  %i.br = extractvalue { i32, i1 } %i.bp, 0, !nosanitize !9 ; 2 uses
  %i.bs = ptrtoint ptr %i.be to i64, !nosanitize !9 ; 3 uses
  %i.bt = and i64 %i.bs, 7, !nosanitize !9
  %i.bu = icmp eq i64 %i.bt, 0, !nosanitize !9
  %i.bv = and i1 %i.bi, %i.bu                     ; 2 uses
  br i1 %4, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  br i1 %i.bv, label %bb.s, label %bb.r, !prof !20, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @72, i64 %i.bs) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !38
  %i.by = and i64 %i.bx, %3
  %i.bz = icmp ne i64 %i.by, %3
  br label %bb.w

bb.t:                                             ; preds = %bb.p
  br i1 %i.bv, label %bb.v, label %bb.u, !prof !20, !nosanitize !9

bb.u:                                             ; preds = %bb.t
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @73, i64 %i.bs) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.v:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !38
  %i.cc = and i64 %i.cb, %3
  %i.cd = icmp eq i64 %i.cc, 0
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.not68 = phi i1 [ %i.bz, %bb.s ], [ %i.cd, %bb.v ]
  %i.ce = fcmp uge float %i.bb, %.0447
  %or.cond.not = select i1 %.not68, i1 true, i1 %i.ce
  br i1 %or.cond.not, label %bb.as, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = ptrtoint ptr %i.be to i64, !nosanitize !9 ; 2 uses
  %i.cg = and i64 %i.cf, 7, !nosanitize !9
  %i.ch = icmp eq i64 %i.cg, 0, !nosanitize !9
  br i1 %i.ch, label %b3IsLeaf.exit, label %bb.y, !prof !20, !nosanitize !9

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @219, i64 %i.cf) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3IsLeaf.exit:                                    ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %i.be, i64 46
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !40
  %i.ck = and i16 %i.cj, 4
  %.not170 = icmp eq i16 %i.ck, 0
  br i1 %.not170, label %bb.af, label %bb.z

bb.z:                                             ; preds = %b3IsLeaf.exit
  %i.cl = load i32, ptr %i.aq, align 4, !nosanitize !9
  %i.cm = icmp eq i32 %i.cl, -1056584962, !nosanitize !9
  br i1 %i.cm, label %bb.aa, label %bb.ac, !nosanitize !9

bb.aa:                                            ; preds = %bb.z
  %i.cn = load i32, ptr %i.ar, align 8, !nosanitize !9
  %i.co = icmp eq i32 %i.cn, 612949724, !nosanitize !9
  br i1 %i.co, label %bb.ac, label %bb.ab, !prof !20, !nosanitize !9

bb.ab:                                            ; preds = %bb.aa
  %i.cp = ptrtoint ptr %5 to i64, !nosanitize !9
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @75, i64 %i.cp) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ac:                                            ; preds = %bb.z, %bb.aa
  %i.cq = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !24
  %i.cs = call float %5(float noundef %.0447, i32 noundef %i.ba, i64 noundef %i.cr, ptr noundef %6) #12 ; 2 uses
  %i.ct = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.4.0445, i32 1), !nosanitize !9 ; 2 uses
  %i.cu = extractvalue { i32, i1 } %i.ct, 1, !nosanitize !9
  br i1 %i.cu, label %bb.ad, label %bb.ae, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  %i.cv = zext nneg i32 %.sroa.4.0445 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @76, i64 %i.cv, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  %i.cw = fcmp olt float %i.cs, %.0447
  %.1 = select i1 %i.cw, float %i.cs, float %.0447
  %i.cx = extractvalue { i32, i1 } %i.ct, 0, !nosanitize !9
  br label %bb.as

bb.af:                                            ; preds = %b3IsLeaf.exit
  %.not69 = icmp eq i32 %.049446, 1024
  br i1 %.not69, label %bb.as, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cy = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !24 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.be, i64 36
  %i.db = load i32, ptr %i.da, align 4, !tbaa !24 ; 4 uses
  %i.dc = sext i32 %i.cz to i64                   ; 2 uses
  %i.dd = mul nsw i64 %i.dc, 48
  %i.de = add i64 %i.dd, %i.bg, !nosanitize !9    ; 3 uses
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = icmp uge i64 %i.de, %i.bg, !nosanitize !9
  %i.dh = icmp slt i32 %i.cz, 0
  %i.di = xor i1 %i.dh, %i.dg
  %i.dj = and i1 %i.df, %i.di, !nosanitize !9
  br i1 %i.dj, label %bb.ai, label %bb.ah, !prof !20, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @77, i64 %i.bg, i64 %i.de) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %bb.ag
  %i.dk = getelementptr inbounds [48 x i8], ptr %i.bc, i64 %i.dc ; 5 uses
  %i.dl = ptrtoint ptr %i.dk to i64, !nosanitize !9 ; 2 uses
  %i.dm = and i64 %i.dl, 7, !nosanitize !9
  %i.dn = icmp eq i64 %i.dm, 0, !nosanitize !9
  br i1 %i.dn, label %b3DistanceToNodeSqr.exit84, label %bb.aj, !prof !20, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @220, i64 %i.dl) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3DistanceToNodeSqr.exit84:                       ; preds = %bb.ai
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %.sroa.015.0.copyload.i74 = load <2 x float>, ptr %i.dk, align 8 ; 2 uses
  %.sroa.216.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.sroa.216.0.copyload.i76 = load float, ptr %.sroa.216.0..sroa_idx.i75, align 8
  %.sroa.013.0.copyload.i77 = load <2 x float>, ptr %i.do, align 4 ; 2 uses
  %.sroa.214.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  %.sroa.214.0.copyload.i79 = load float, ptr %.sroa.214.0..sroa_idx.i78, align 4
  %.sroa.07.0.vec.extract.i105 = extractelement <2 x float> %.sroa.015.0.copyload.i74, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract.i106 = extractelement <2 x float> %.sroa.013.0.copyload.i77, i64 0 ; 2 uses
  %i.dp = fcmp olt float %.sroa.09.0.vec.extract.i, %.sroa.07.0.vec.extract.i105
  %i.dq = fcmp olt float %.sroa.0.0.vec.extract.i106, %.sroa.09.0.vec.extract.i
  %i.dr = select i1 %i.dq, float %.sroa.0.0.vec.extract.i106, float %.sroa.09.0.vec.extract.i
end_hunk_0
