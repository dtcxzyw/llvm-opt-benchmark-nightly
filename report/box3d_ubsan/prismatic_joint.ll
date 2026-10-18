Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/prismatic_joint?download=true
inline.NumInlined: 265
inline.NumDeleted: 34
begin_hunk_0_@b3PrismaticJoint_SetMaxMotorForce:bb.a
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #7 ; 3 uses
  %i.d = icmp ne ptr %i.c, null, !nosanitize !10
  %i.e = ptrtoint ptr %i.c to i64, !nosanitize !10 ; 2 uses
  %i.f = and i64 %i.e, 7, !nosanitize !10
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !10
  %i.h = and i1 %i.d, %i.g, !nosanitize !10
  br i1 %i.h, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @35, i64 %i.e) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i64 %0, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.k, align 8, !tbaa !87
  call void @b3RecWrite_PrismaticJointSetMaxMotorForce(ptr noundef nonnull %i.j, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 4) #7 ; 3 uses
  %i.m = icmp ne ptr %i.l, null, !nosanitize !10
  %i.n = ptrtoint ptr %i.l to i64, !nosanitize !10 ; 2 uses
  %i.o = and i64 %i.n, 3, !nosanitize !10
  %i.p = icmp eq i64 %i.o, 0, !nosanitize !10
  %i.q = and i1 %i.m, %i.p, !nosanitize !10
  br i1 %i.q, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @36, i64 %i.n) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 228
  store float %1, ptr %i.r, align 4, !tbaa !75
  ret void
}

declare void @b3RecWrite_PrismaticJointSetMaxMotorForce(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b3PrismaticJoint_GetMaxMotorForce(i64 %0) local_unnamed_addr #0 !func_sanitize !77 {
bb.a:
  %i.a = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 4) #7 ; 3 uses
  %i.b = icmp ne ptr %i.a, null, !nosanitize !10
  %i.c = ptrtoint ptr %i.a to i64, !nosanitize !10 ; 2 uses
  %i.d = and i64 %i.c, 3, !nosanitize !10
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !10
  %i.f = and i1 %i.b, %i.e, !nosanitize !10
  br i1 %i.f, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @37, i64 %i.c) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.h = load float, ptr %i.g, align 4, !tbaa !75
  ret float %i.h
}

; Function Attrs: nounwind uwtable
define float @b3PrismaticJoint_GetMotorForce(i64 %0) local_unnamed_addr #0 !func_sanitize !77 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #7 ; 3 uses
  %i.d = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 4) #7 ; 3 uses
  %i.e = icmp ne ptr %i.c, null, !nosanitize !10
  %i.f = ptrtoint ptr %i.c to i64, !nosanitize !10 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !10
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !10
  %i.i = and i1 %i.e, %i.h, !nosanitize !10
  br i1 %i.i, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @38, i64 %i.f) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ne ptr %i.d, null, !nosanitize !10
  %i.k = ptrtoint ptr %i.d to i64, !nosanitize !10 ; 2 uses
  %i.l = and i64 %i.k, 3, !nosanitize !10
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !10
  %i.n = and i1 %i.j, %i.m, !nosanitize !10
  br i1 %i.n, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @39, i64 %i.k) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4744
  %i.p = load float, ptr %i.o, align 8, !tbaa !88
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.r = load float, ptr %i.q, align 4, !tbaa !75
  %i.s = fmul float %i.p, %i.r
  ret float %i.s
}

; Function Attrs: nounwind uwtable
define float @b3PrismaticJoint_GetSpeed(i64 %0) local_unnamed_addr #5 !func_sanitize !77 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #7 ; 7 uses
  %i.d = tail call ptr @b3GetJointSimCheckType(i64 %0, i32 noundef 4) #7 ; 10 uses
  %i.e = icmp ne ptr %i.c, null, !nosanitize !10
  %i.f = ptrtoint ptr %i.c to i64, !nosanitize !10 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !10
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !10
  %i.i = and i1 %i.e, %i.h, !nosanitize !10
  br i1 %i.i, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @40, i64 %i.f) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !89   ; 4 uses
  %i.l = icmp ne ptr %i.d, null, !nosanitize !10
  %i.m = ptrtoint ptr %i.d to i64, !nosanitize !10 ; 2 uses
  %i.n = and i64 %i.m, 3, !nosanitize !10
  %i.o = icmp eq i64 %i.n, 0, !nosanitize !10
  %i.p = and i1 %i.l, %i.o, !nosanitize !10
  br i1 %i.p, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @41, i64 %i.m) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !83   ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds [128 x i8], ptr %i.k, i64 %i.s ; 2 uses
  %i.u = shl nsw i64 %i.s, 7
  %i.v = ptrtoint ptr %i.k to i64, !nosanitize !10 ; 6 uses
  %i.w = add i64 %i.u, %i.v, !nosanitize !10      ; 3 uses
  %i.x = icmp ne ptr %i.k, null, !nosanitize !10  ; 2 uses
  %i.y = icmp eq i64 %i.w, 0
  %i.z = xor i1 %i.x, %i.y
  %i.aa = icmp uge i64 %i.w, %i.v, !nosanitize !10
  %i.ab = icmp slt i32 %i.r, 0
  %i.ac = xor i1 %i.ab, %i.aa
  %i.ad = and i1 %i.z, %i.ac, !nosanitize !10
  br i1 %i.ad, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @42, i64 %i.v, i64 %i.w) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84 ; 2 uses
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = shl nsw i64 %i.ag, 7
  %i.ai = add i64 %i.ah, %i.v, !nosanitize !10    ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = xor i1 %i.x, %i.aj
  %i.al = icmp uge i64 %i.ai, %i.v, !nosanitize !10
  %i.am = icmp slt i32 %i.af, 0
  %i.an = xor i1 %i.am, %i.al
  %i.ao = and i1 %i.ak, %i.an, !nosanitize !10
  br i1 %i.ao, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @43, i64 %i.v, i64 %i.ai) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds [128 x i8], ptr %i.k, i64 %i.ag ; 2 uses
  %i.aq = tail call ptr @b3GetBodySim(ptr noundef nonnull %i.c, ptr noundef %i.t) #7 ; 8 uses
  %i.ar = tail call ptr @b3GetBodySim(ptr noundef nonnull %i.c, ptr noundef %i.ap) #7 ; 8 uses
  %i.as = tail call ptr @b3GetBodyState(ptr noundef nonnull %i.c, ptr noundef %i.t) #7 ; 7 uses
  %i.at = tail call ptr @b3GetBodyState(ptr noundef nonnull %i.c, ptr noundef %i.ap) #7 ; 7 uses
  %i.au = icmp ne ptr %i.aq, null, !nosanitize !10
  %i.av = ptrtoint ptr %i.aq to i64, !nosanitize !10 ; 2 uses
  %i.aw = and i64 %i.av, 3, !nosanitize !10
  %i.ax = icmp eq i64 %i.aw, 0, !nosanitize !10
  %i.ay = and i1 %i.au, %i.ax, !nosanitize !10
  br i1 %i.ay, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @45, i64 %i.av) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %.sroa.0166.0.copyload = load <2 x float>, ptr %i.az, align 4, !tbaa !90 ; 3 uses
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %.sroa.5168.0.copyload = load <2 x float>, ptr %.sroa.5168.0..sroa_idx, align 4, !tbaa !90 ; 5 uses
  %i.ba = icmp ne ptr %i.ar, null, !nosanitize !10
  %i.bb = ptrtoint ptr %i.ar to i64, !nosanitize !10 ; 2 uses
  %i.bc = and i64 %i.bb, 3, !nosanitize !10
  %i.bd = icmp eq i64 %i.bc, 0, !nosanitize !10
  %i.be = and i1 %i.ba, %i.bd, !nosanitize !10
  br i1 %i.be, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @46, i64 %i.bb) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.sroa.0164.0.copyload = load <2 x float>, ptr %i.bf, align 4, !tbaa !90 ; 3 uses
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %.sroa.4165.0.copyload = load <2 x float>, ptr %.sroa.4165.0..sroa_idx, align 4, !tbaa !90 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.bi = load <2 x float>, ptr %i.bh, align 4    ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.bk = load <2 x float>, ptr %i.bj, align 4    ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 68
  %.sroa.0140.0.copyload = load <2 x float>, ptr %i.bg, align 4
  %.sroa.2141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.2141.0.copyload = load float, ptr %.sroa.2141.0..sroa_idx, align 4
  %.sroa.0138.0.copyload = load <2 x float>, ptr %i.bl, align 4
  %.sroa.2139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 76
  %.sroa.2139.0.copyload = load float, ptr %.sroa.2139.0..sroa_idx, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 68
  %.sroa.0121.0.copyload = load <2 x float>, ptr %i.bm, align 4
  %.sroa.2122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %.sroa.2122.0.copyload = load float, ptr %.sroa.2122.0..sroa_idx, align 4
  %.sroa.0119.0.copyload = load <2 x float>, ptr %i.bn, align 4
  %.sroa.2120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 76
  %.sroa.2120.0.copyload = load float, ptr %.sroa.2120.0..sroa_idx, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  %.sroa.0103.0.copyload = load <2 x float>, ptr %i.bo, align 4 ; 2 uses
  %.sroa.2104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %.sroa.2104.0.copyload = load float, ptr %.sroa.2104.0..sroa_idx, align 4
  %.sroa.0101.0.copyload = load <2 x float>, ptr %i.bp, align 4 ; 2 uses
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %.sroa.2102.0.copyload = load float, ptr %.sroa.2102.0..sroa_idx, align 4
  %.not = icmp eq ptr %i.as, null                 ; 2 uses
  br i1 %.not, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = ptrtoint ptr %i.as to i64, !nosanitize !10 ; 2 uses
  %i.br = and i64 %i.bq, 3, !nosanitize !10
  %i.bs = icmp eq i64 %i.br, 0, !nosanitize !10
  br i1 %i.bs, label %bb.p, label %bb.o, !prof !11, !nosanitize !10

bb.o:                                             ; preds = %bb.n
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @48, i64 %i.bq) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.p:                                             ; preds = %bb.n
  %.sroa.075.0.copyload = load <2 x float>, ptr %i.as, align 4, !tbaa !90
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.577.0.copyload = load float, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !90
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %.sroa.075.0 = phi <2 x float> [ %.sroa.075.0.copyload, %bb.p ], [ zeroinitializer, %bb.m ] ; 2 uses
  %.sroa.577.0 = phi float [ %.sroa.577.0.copyload, %bb.p ], [ 0.000000e+00, %bb.m ]
  %.not207 = icmp eq ptr %i.at, null              ; 2 uses
  br i1 %.not207, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = ptrtoint ptr %i.at to i64, !nosanitize !10 ; 2 uses
  %i.bu = and i64 %i.bt, 3, !nosanitize !10
  %i.bv = icmp eq i64 %i.bu, 0, !nosanitize !10
  br i1 %i.bv, label %bb.t, label %bb.s, !prof !11, !nosanitize !10

bb.s:                                             ; preds = %bb.r
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @49, i64 %i.bt) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.t:                                             ; preds = %bb.r
  %.sroa.071.0.copyload = load <2 x float>, ptr %i.at, align 4, !tbaa !90
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.573.0.copyload = load float, ptr %.sroa.573.0..sroa_idx, align 4, !tbaa !90
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t
  %.sroa.071.0 = phi <2 x float> [ %.sroa.071.0.copyload, %bb.t ], [ zeroinitializer, %bb.q ] ; 2 uses
  %.sroa.573.0 = phi float [ %.sroa.573.0.copyload, %bb.t ], [ 0.000000e+00, %bb.q ]
  br i1 %.not, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = ptrtoint ptr %i.as to i64, !nosanitize !10 ; 2 uses
  %i.bx = and i64 %i.bw, 3, !nosanitize !10
  %i.by = icmp eq i64 %i.bx, 0, !nosanitize !10
  br i1 %i.by, label %bb.x, label %bb.w, !prof !11, !nosanitize !10

bb.w:                                             ; preds = %bb.v
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @50, i64 %i.bw) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.x:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %.sroa.067.0.copyload = load <2 x float>, ptr %i.bz, align 4, !tbaa !90
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !90
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x
  %.sroa.067.0 = phi <2 x float> [ %.sroa.067.0.copyload, %bb.x ], [ zeroinitializer, %bb.u ] ; 5 uses
  %.sroa.6.0 = phi float [ %.sroa.6.0.copyload, %bb.x ], [ 0.000000e+00, %bb.u ] ; 4 uses
  br i1 %.not207, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = ptrtoint ptr %i.at to i64, !nosanitize !10 ; 2 uses
  %i.cb = and i64 %i.ca, 3, !nosanitize !10
  %i.cc = icmp eq i64 %i.cb, 0, !nosanitize !10
  br i1 %i.cc, label %bb.ab, label %bb.aa, !prof !11, !nosanitize !10

bb.aa:                                            ; preds = %bb.z
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @51, i64 %i.ca) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ab:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %.sroa.064.0.copyload = load <2 x float>, ptr %i.cd, align 4, !tbaa !90
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !90
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.ab
  %.sroa.064.0 = phi <2 x float> [ %.sroa.064.0.copyload, %bb.ab ], [ zeroinitializer, %bb.y ] ; 3 uses
  %.sroa.5.0 = phi float [ %.sroa.5.0.copyload, %bb.ab ], [ 0.000000e+00, %bb.y ] ; 2 uses
  %i.ce = shufflevector <2 x float> %.sroa.071.0, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %i.bi, i64 0
  %.sroa.09.4.vec.extract13.i = extractelement <2 x float> %.sroa.064.0, i64 1
  %.sroa.09.4.vec.extract13.i279 = extractelement <2 x float> %.sroa.067.0, i64 1
  %i.cf = shufflevector <2 x float> %.sroa.0121.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float 0.000000e+00, i64 3
  %i.ch = insertelement <4 x float> %i.cg, float %.sroa.2122.0.copyload, i64 2
  %i.ci = shufflevector <2 x float> %.sroa.0119.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cj = insertelement <4 x float> %i.ci, float 0.000000e+00, i64 3
  %i.ck = insertelement <4 x float> %i.cj, float %.sroa.2120.0.copyload, i64 2
  %i.cl = fsub <4 x float> %i.ch, %i.ck           ; 4 uses
  %i.cm = shufflevector <2 x float> %.sroa.0140.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.cn = insertelement <4 x float> %i.cm, float -1.000000e+00, i64 3
  %i.co = insertelement <4 x float> %i.cn, float %.sroa.2141.0.copyload, i64 1
  %i.cp = shufflevector <2 x float> %.sroa.0138.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.cq = insertelement <4 x float> %i.cp, float 0.000000e+00, i64 3
  %i.cr = insertelement <4 x float> %i.cq, float %.sroa.2139.0.copyload, i64 1
  %i.cs = fsub <4 x float> %i.co, %i.cr           ; 4 uses
  %i.ct = shufflevector <2 x float> %.sroa.0103.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cu = insertelement <2 x float> %i.ct, float %.sroa.2104.0.copyload, i64 1
  %i.cv = shufflevector <2 x float> %.sroa.0101.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cw = insertelement <2 x float> %i.cv, float %.sroa.2102.0.copyload, i64 1
  %i.cx = fsub <2 x float> %i.cu, %i.cw
  %i.cy = shufflevector <2 x float> %.sroa.5168.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.cz = insertelement <4 x float> %i.cy, float 1.000000e+00, i64 3
  %i.da = shufflevector <4 x float> %i.cs, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.db = fmul <4 x float> %i.cz, %i.da
  %i.dc = shufflevector <2 x float> %.sroa.0166.0.copyload, <2 x float> %.sroa.5168.0.copyload, <4 x i32> <i32 1, i32 2, i32 0, i32 poison> ; 3 uses
  %i.dd = insertelement <4 x float> %i.dc, float -0.000000e+00, i64 3
  %i.de = shufflevector <4 x float> %i.cs, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.df = fmul <4 x float> %i.dd, %i.de
  %i.dg = shufflevector <2 x float> %.sroa.5168.0.copyload, <2 x float> %.sroa.0166.0.copyload, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.dh = insertelement <4 x float> %i.dg, float 0.000000e+00, i64 3 ; 2 uses
  %i.di = insertelement <4 x float> %i.cs, float 1.000000e+00, i64 3
  %i.dj = fmul <4 x float> %i.dh, %i.di
  %i.dk = fsub <4 x float> %i.df, %i.dj
  %i.dl = fadd <4 x float> %i.db, %i.dk           ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.0103.0.copyload, %.sroa.0101.0.copyload
  %i.dm = insertelement <4 x float> %i.dg, float 1.000000e+00, i64 3
  %i.dn = fmul <4 x float> %i.dm, %i.dl
  %i.do = shufflevector <2 x float> %.sroa.0166.0.copyload, <2 x float> %.sroa.5168.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.dp = insertelement <4 x float> %i.do, float 0.000000e+00, i64 3
  %i.dq = shufflevector <4 x float> %i.dl, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.dr = fmul <4 x float> %i.dp, %i.dq
  %i.ds = fsub <4 x float> %i.dn, %i.dr
  %i.dt = fmul <4 x float> %i.ds, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.du = fadd <4 x float> %i.cs, %i.dt           ; 5 uses
  %i.dv = shufflevector <2 x float> %.sroa.4165.0.copyload, <2 x float> %i.bk, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.dw = fmul <4 x float> %i.dv, %i.cl           ; 2 uses
  %i.dx = shufflevector <2 x float> %.sroa.0164.0.copyload, <2 x float> %.sroa.4165.0.copyload, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.dy = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ea = shufflevector <4 x float> %i.cl, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.eb = fmul <4 x float> %i.dz, %i.ea           ; 2 uses
  %i.ec = shufflevector <2 x float> %.sroa.4165.0.copyload, <2 x float> %.sroa.0164.0.copyload, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.ee = shufflevector <4 x float> %i.cl, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.ef = fmul <4 x float> %i.ed, %i.ee
  %.sroa.2.8.vec.extract65.i = extractelement <2 x float> %i.bk, i64 0
  %1 = shufflevector <2 x float> %i.bk, <2 x float> %i.bi, <2 x i32> <i32 0, i32 3>
  %2 = fmul <2 x float> %1, <float 1.000000e+00, float 0.000000e+00>
  %3 = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %4 = shufflevector <4 x float> %i.eb, <4 x float> %3, <2 x i32> <i32 3, i32 4>
  %5 = fmul <2 x float> %4, <float 1.000000e+00, float 0.000000e+00>
  %6 = fsub <2 x float> %2, %5
  %7 = shufflevector <4 x float> %i.dw, <4 x float> %3, <2 x i32> <i32 3, i32 5>
  %8 = fadd <2 x float> %7, %6                    ; 3 uses
  %9 = fmul <2 x float> %i.bi, %8                 ; 2 uses
  %shift = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop324 = fsub <2 x float> %9, %shift
  %10 = shufflevector <2 x float> %foldExtExtBinop324, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %shift326 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop327 = fmul <2 x float> %i.bk, %shift326
  %11 = extractelement <2 x float> %foldExtExtBinop327, i64 0
  %12 = fsub <4 x float> %i.eb, %i.ef
  %13 = fadd <4 x float> %i.dw, %12               ; 3 uses
  %14 = extractelement <4 x float> %13, i64 3
  %15 = fmul float %.sroa.09.0.vec.extract.i.i, %14
  %16 = fsub float %11, %15
  %17 = fmul <4 x float> %i.ed, %13
  %18 = shufflevector <2 x float> %.sroa.0164.0.copyload, <2 x float> %.sroa.4165.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %19 = insertelement <4 x float> %18, float %.sroa.2.8.vec.extract65.i, i64 3
  %20 = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 poison>
  %21 = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %22 = shufflevector <4 x float> %20, <4 x float> %21, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %23 = fmul <4 x float> %19, %22
  %24 = fsub <4 x float> %17, %23                 ; 2 uses
  %25 = fmul <4 x float> %24, splat (float 2.000000e+00) ; 2 uses
  %26 = insertelement <4 x float> %10, float 1.000000e+00, i64 3
  %27 = shufflevector <4 x float> %26, <4 x float> %24, <4 x i32> <i32 0, i32 7, i32 poison, i32 3>
  %28 = insertelement <4 x float> %27, float %16, i64 2
  %29 = fmul <4 x float> %28, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00> ; 2 uses
  %30 = shufflevector <4 x float> %i.cl, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.eg = fadd <4 x float> %25, %30               ; 5 uses
  %i.eh = fsub <4 x float> %i.eg, %i.du
  %31 = extractelement <4 x float> %i.eg, i64 1
  %32 = fmul float %31, %.sroa.09.4.vec.extract13.i
  %33 = fadd <4 x float> %29, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 3 uses
  %34 = extractelement <4 x float> %i.eg, i64 0
  %35 = fmul float %34, %.sroa.5.0
  %36 = fsub float %32, %35
  %37 = shufflevector <4 x float> %25, <4 x float> %29, <4 x i32> <i32 3, i32 6, i32 4, i32 poison>
  %38 = insertelement <4 x float> %37, float %36, i64 3
  %39 = fadd <4 x float> %38, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>
  %40 = shufflevector <2 x float> %.sroa.5168.0.copyload, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %41 = fmul <4 x float> %40, %33
  %42 = insertelement <4 x float> %i.do, float -0.000000e+00, i64 3
  %43 = shufflevector <4 x float> %33, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %44 = fmul <4 x float> %42, %43
  %45 = insertelement <4 x float> %i.dc, float 0.000000e+00, i64 3
  %46 = shufflevector <4 x float> %33, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %47 = fmul <4 x float> %45, %46
  %48 = fsub <4 x float> %44, %47
  %49 = fadd <4 x float> %41, %48                 ; 2 uses
  %50 = shufflevector <4 x float> %49, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %51 = fmul <4 x float> %i.dh, %50
  %52 = shufflevector <4 x float> %i.dc, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %53 = fmul <4 x float> %52, %49
  %54 = fsub <4 x float> %53, %51
  %55 = fmul <4 x float> %54, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %56 = shufflevector <2 x float> %i.cx, <2 x float> %foldExtExtBinop, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %57 = shufflevector <4 x float> %56, <4 x float> %55, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %58 = fadd <4 x float> %i.eh, %57
  %i.ei = fadd <4 x float> %55, %39               ; 3 uses
  %i.ej = extractelement <4 x float> %i.du, i64 1
  %i.ek = fmul float %i.ej, %.sroa.09.4.vec.extract13.i279
  %i.el = extractelement <4 x float> %i.du, i64 0
  %i.em = fmul float %i.el, %.sroa.6.0
  %59 = fsub float %i.ek, %i.em
  %.sroa.07.0.vec.extract.i287 = extractelement <2 x float> %.sroa.075.0, i64 0
  %60 = fadd float %.sroa.07.0.vec.extract.i287, %59
  %61 = shufflevector <2 x float> %.sroa.067.0, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %62 = insertelement <4 x float> %61, float 1.000000e+00, i64 3
  %63 = insertelement <4 x float> %62, float %.sroa.6.0, i64 0
  %64 = fmul <4 x float> %i.ei, %63
  %65 = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 poison>
  %66 = insertelement <4 x float> %65, float %60, i64 3
  %67 = shufflevector <2 x float> %.sroa.067.0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %68 = insertelement <4 x float> %67, float 1.000000e+00, i64 3
  %69 = insertelement <4 x float> %68, float %.sroa.6.0, i64 2
  %70 = fmul <4 x float> %66, %69
  %71 = fsub <4 x float> %64, %70
  %72 = fmul <4 x float> %58, %71                 ; 4 uses
  %shift329 = shufflevector <4 x float> %72, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop330 = fadd <4 x float> %shift329, %72
  %shift332 = shufflevector <4 x float> %72, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop333 = fadd <4 x float> %shift332, %foldExtExtBinop330
  %73 = extractelement <4 x float> %foldExtExtBinop333, i64 0
  %74 = extractelement <4 x float> %72, i64 3
  %75 = shufflevector <4 x float> %i.eg, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %76 = shufflevector <2 x float> %.sroa.064.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %77 = insertelement <2 x float> %76, float %.sroa.5.0, i64 0
  %78 = fmul <2 x float> %75, %77
  %79 = shufflevector <4 x float> %i.eg, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %80 = fmul <2 x float> %79, %.sroa.064.0
  %81 = fsub <2 x float> %78, %80
  %82 = shufflevector <2 x float> %.sroa.071.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %83 = insertelement <2 x float> %82, float %.sroa.573.0, i64 1
  %84 = fadd <2 x float> %83, %81
  %85 = shufflevector <4 x float> %i.du, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %86 = shufflevector <2 x float> %.sroa.067.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %87 = insertelement <2 x float> %86, float %.sroa.6.0, i64 0
  %88 = fmul <2 x float> %85, %87
  %89 = shufflevector <4 x float> %i.du, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %90 = fmul <2 x float> %89, %.sroa.067.0
  %91 = fsub <2 x float> %88, %90
  %92 = shufflevector <2 x float> %.sroa.075.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %93 = insertelement <2 x float> %92, float %.sroa.577.0, i64 1
  %94 = fadd <2 x float> %93, %91
  %95 = fsub <2 x float> %84, %94
  %96 = shufflevector <4 x float> %i.ei, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.en = fmul <2 x float> %96, %95               ; 2 uses
  %i.eo = extractelement <2 x float> %i.en, i64 0
  %i.ep = fadd float %74, %i.eo
  %i.eq = extractelement <2 x float> %i.en, i64 1
  %i.er = fadd float %i.eq, %i.ep
  %i.es = fadd float %73, %i.er
  ret float %i.es
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_pointer_overflow_abort(ptr, i64, i64) local_unnamed_addr #3

declare ptr @b3GetBodySim(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @b3GetBodyState(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @b3GetPrismaticJointForce(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !func_sanitize !91 {
bb.a:
  %2 = alloca %struct.b3Transform, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @52, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !83
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef %0, i32 noundef %i.g) #7
  %i.h = icmp ne ptr %0, null, !nosanitize !10
  %i.i = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !10
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !10
  %i.l = and i1 %i.h, %i.k, !nosanitize !10
  br i1 %i.l, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @53, i64 %i.i) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.n = load float, ptr %i.m, align 4, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.p = load float, ptr %i.o, align 4, !tbaa !95
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.r = load float, ptr %i.q, align 4, !tbaa !96
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.t = load float, ptr %i.s, align 4, !tbaa !97
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.v = load <2 x float>, ptr %i.u, align 4, !tbaa !90 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.x = load float, ptr %i.w, align 8, !tbaa !88
  %i.y = fadd float %i.t, %i.r
  %i.z = fadd float %i.y, %i.p
  %i.aa = fadd float %i.z, %i.n
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ac = load <2 x float>, ptr %i.ab, align 4    ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ae = load <2 x float>, ptr %i.ad, align 4    ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ag = load <2 x float>, ptr %i.af, align 4    ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ai = load <2 x float>, ptr %i.ah, align 4    ; 4 uses
  %i.aj = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.al = fmul <2 x float> %i.v, %i.ak            ; 4 uses
  %i.am = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.an = insertelement <2 x float> %i.am, float %i.aa, i64 0
  %i.ao = fmul <2 x float> %i.an, %i.ak           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.al, %i.ae
  %i.ap = shufflevector <2 x float> %i.al, <2 x float> %i.ao, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.aq = fmul <2 x float> %i.ap, %i.ac           ; 2 uses
  %i.ar = shufflevector <2 x float> %i.ac, <2 x float> %i.ae, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.as = fmul <2 x float> %i.al, %i.ar
  %i.at = fmul <2 x float> %i.ao, %i.ac
  %i.au = fsub <2 x float> %i.aq, %i.as
  %i.av = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aw = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.av, <2 x i32> <i32 0, i32 3>
  %i.ax = fsub <2 x float> %i.aw, %i.at
  %i.ay = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.az = fmul <2 x float> %i.ao, %i.ay
  %i.ba = fmul <2 x float> %i.ap, %i.ay
  %i.bb = fadd <2 x float> %i.az, %i.au           ; 2 uses
  %i.bc = fadd <2 x float> %i.ba, %i.ax           ; 3 uses
  %i.bd = fmul <2 x float> %i.ar, %i.bb
  %i.be = shufflevector <2 x float> %i.ae, <2 x float> %i.ac, <2 x i32> <i32 0, i32 2>
  %i.bf = fmul <2 x float> %i.be, %i.bc
  %i.bg = fmul <2 x float> %i.ac, %i.bc
  %i.bh = shufflevector <2 x float> %i.bb, <2 x float> %i.bc, <2 x i32> <i32 1, i32 2>
  %i.bi = fmul <2 x float> %i.ar, %i.bh
  %i.bj = fsub <2 x float> %i.bd, %i.bf
  %i.bk = fsub <2 x float> %i.bg, %i.bi
  %i.bl = fmul <2 x float> %i.bj, splat (float 2.000000e+00)
  %i.bm = fmul <2 x float> %i.bk, splat (float 2.000000e+00)
  %i.bn = fadd <2 x float> %i.al, %i.bl           ; 4 uses
  %i.bo = fadd <2 x float> %i.ao, %i.bm           ; 4 uses
  %foldExtExtBinop49 = fmul <2 x float> %i.ai, %i.bn
  %i.bp = extractelement <2 x float> %i.bo, i64 0
  %foldExtExtBinop51 = fmul <2 x float> %i.ag, %i.bo
  %foldExtExtBinop53 = fsub <2 x float> %foldExtExtBinop49, %foldExtExtBinop51
  %i.bq = shufflevector <2 x float> %i.bn, <2 x float> %i.bo, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.br = fmul <2 x float> %i.ag, %i.bq
  %i.bs = shufflevector <2 x float> %i.ag, <2 x float> %i.ai, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bn
  %i.bu = fsub <2 x float> %i.br, %i.bt           ; 2 uses
  %i.bv = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bw = fmul <2 x float> %i.bv, %i.bo
  %i.bx = fmul <2 x float> %i.bv, %i.bq
  %i.by = fadd <2 x float> %i.bw, %i.bu           ; 2 uses
  %i.bz = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ca = shufflevector <2 x float> %foldExtExtBinop53, <2 x float> %i.bz, <2 x i32> <i32 0, i32 3>
  %i.cb = fadd <2 x float> %i.bx, %i.ca           ; 2 uses
  %i.cc = fmul <2 x float> %i.bs, %i.by
  %i.cd = shufflevector <2 x float> %i.ai, <2 x float> %i.ag, <2 x i32> <i32 0, i32 2>
  %i.ce = fmul <2 x float> %i.cd, %i.cb
  %i.cf = fsub <2 x float> %i.cc, %i.ce
  %i.cg = shufflevector <2 x float> %i.cb, <2 x float> %i.by, <2 x i32> <i32 0, i32 3>
  %i.ch = fmul <2 x float> %i.ag, %i.cg           ; 2 uses
  %shift = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop55 = fsub <2 x float> %i.ch, %shift
  %i.ci = extractelement <2 x float> %foldExtExtBinop55, i64 0
  %i.cj = fmul <2 x float> %i.cf, splat (float 2.000000e+00)
  %i.ck = fadd <2 x float> %i.bn, %i.cj
  %i.cl = fmul float %i.ci, 2.000000e+00
  %i.cm = fadd float %i.bp, %i.cl
  %.fca.0.insert.i62.i45 = insertvalue { <2 x float>, float } poison, <2 x float> %i.ck, 0
  %.fca.1.insert.i63.i46 = insertvalue { <2 x float>, float } %.fca.0.insert.i62.i45, float %i.cm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret { <2 x float>, float } %.fca.1.insert.i63.i46
}

; Function Attrs: nounwind uwtable
define hidden { <2 x float>, float } @b3GetPrismaticJointTorque(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !func_sanitize !91 {
bb.a:
  %2 = alloca %struct.b3Transform, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @54, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !83
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %2, ptr noundef %0, i32 noundef %i.g) #7
  %i.h = icmp ne ptr %0, null, !nosanitize !10
  %i.i = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !10
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !10
  %i.l = and i1 %i.h, %i.k, !nosanitize !10
  br i1 %i.l, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @55, i64 %i.i) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.n = load float, ptr %i.m, align 8, !tbaa !88
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.219.0.copyload = load float, ptr %.sroa.219.0..sroa_idx, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.018.0.copyload = load <2 x float>, ptr %i.o, align 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = load <2 x float>, ptr %i.p, align 4      ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = load <2 x float>, ptr %i.r, align 4      ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.u = load <2 x float>, ptr %i.t, align 4      ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.w = load <2 x float>, ptr %i.v, align 4      ; 4 uses
  %i.x = insertelement <2 x float> poison, float %i.n, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fmul <2 x float> %i.y, %.sroa.018.0.copyload ; 4 uses
  %i.aa = shufflevector <2 x float> %.sroa.018.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ab = insertelement <2 x float> %i.aa, float %.sroa.219.0.copyload, i64 0
  %i.ac = fmul <2 x float> %i.y, %i.ab            ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.z, %i.s
  %i.ad = shufflevector <2 x float> %i.z, <2 x float> %i.ac, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ae = fmul <2 x float> %i.q, %i.ad            ; 2 uses
  %i.af = shufflevector <2 x float> %i.q, <2 x float> %i.s, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ag = fmul <2 x float> %i.af, %i.z
  %i.ah = fmul <2 x float> %i.ac, %i.q
  %i.ai = fsub <2 x float> %i.ae, %i.ag
  %i.aj = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ak = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.aj, <2 x i32> <i32 0, i32 3>
  %i.al = fsub <2 x float> %i.ak, %i.ah
  %i.am = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.an = fmul <2 x float> %i.ac, %i.am
  %i.ao = fmul <2 x float> %i.ad, %i.am
  %i.ap = fadd <2 x float> %i.an, %i.ai           ; 2 uses
  %i.aq = fadd <2 x float> %i.ao, %i.al           ; 3 uses
end_hunk_0
