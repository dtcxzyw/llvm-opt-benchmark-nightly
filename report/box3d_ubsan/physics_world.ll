Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/physics_world?download=true
inline.NumInlined: 282
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@b3TreeOverlapCallback:bb.a
  %i.aq = icmp eq i64 %i.ao, 0
  %i.ar = xor i1 %i.ap, %i.aq
  %i.as = icmp uge i64 %i.ao, %i.an, !nosanitize !10
  %i.at = icmp slt i32 %i.ak, 0
  %i.au = xor i1 %i.at, %i.as
  %i.av = and i1 %i.ar, %i.au, !nosanitize !10
  br i1 %i.av, label %bb.l, label %bb.k, !prof !11, !nosanitize !10

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @647, i64 %i.an, i64 %i.ao) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.l:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds [128 x i8], ptr %i.ai, i64 %i.al
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @b3GetBodyTransformQuick(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %4, ptr noundef nonnull %i.f, ptr noundef %i.aw) #16
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.02.0.copyload = load <2 x float>, ptr %i.ax, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ay, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  %i.az = fsub float %.sroa.5.0.copyload, %.sroa.2.0.copyload
  %i.ba = load <2 x float>, ptr %4, align 8
  %i.bb = fsub <2 x float> %i.ba, %.sroa.02.0.copyload
  store <2 x float> %i.bb, ptr %3, align 8, !tbaa !144, !alias.scope !618
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.az, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !144, !alias.scope !618
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bd = call zeroext i1 @b3OverlapShape(ptr noundef nonnull %i.o, ptr noundef nonnull byval(%struct.b3Transform) align 8 %3, ptr noundef nonnull %i.bc) #16
  br i1 %i.bd, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.be = load i32, ptr %i.o, align 8, !tbaa !196 ; 2 uses
  %i.bf = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.be, i32 1), !nosanitize !10 ; 2 uses
  %i.bg = extractvalue { i32, i1 } %i.bf, 0, !nosanitize !10
  %i.bh = extractvalue { i32, i1 } %i.bf, 1, !nosanitize !10
  br i1 %i.bh, label %bb.n, label %bb.o, !prof !78, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  %i.bi = zext nneg i32 %i.be to i64, !nosanitize !10
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @648, i64 %i.bi, i64 1) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 4760
  %i.bk = load i16, ptr %i.bj, align 8, !tbaa !86
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 196
  %i.bm = load i16, ptr %i.bl, align 4, !tbaa !259
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !329 ; 4 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 -8
  %i.bq = load i32, ptr %i.bp, align 4, !nosanitize !10
  %i.br = icmp eq i32 %i.bq, -1056584962, !nosanitize !10
  br i1 %i.br, label %bb.p, label %bb.r, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr i8, ptr %i.bo, i64 -4
  %i.bt = load i32, ptr %i.bs, align 8, !nosanitize !10
  %i.bu = icmp eq i32 %i.bt, -626543306, !nosanitize !10
  br i1 %i.bu, label %bb.r, label %bb.q, !prof !11, !nosanitize !10

bb.q:                                             ; preds = %bb.p
  %i.bv = ptrtoint ptr %i.bo to i64, !nosanitize !10
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @649, i64 %i.bv) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !332
  %.sroa.5.0.insert.ext = zext i16 %i.bm to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 48
  %.sroa.4.0.insert.ext = zext i16 %i.bk to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.bg to i64
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.5.0.insert.shift
  %i.by = call zeroext i1 %i.bo(i64 %.sroa.0.0.insert.insert, ptr noundef %i.bx) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.l, %bb.r
  %.0 = phi i1 [ %i.by, %bb.r ], [ true, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %b3ShouldQueryCollide.exit.thread

b3ShouldQueryCollide.exit.thread:                 ; preds = %bb.i, %b3ShouldQueryCollide.exit, %bb.s
  %.1 = phi i1 [ %.0, %bb.s ], [ true, %b3ShouldQueryCollide.exit ], [ true, %bb.i ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define void @b3World_CollideMover(i32 %0, <2 x float> %1, float %2, ptr noundef %3, ptr nofree noundef readonly byval(%struct.b3QueryFilter) align 8 captures(none) %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #10 !func_sanitize !621 {
bb.a:
  %7 = alloca %struct.b3RecQueryWriter, align 8   ; 12 uses
  %8 = alloca %struct.b3Capsule, align 8          ; 4 uses
  %9 = alloca %struct.b3AABB, align 16            ; 8 uses
  %10 = alloca %struct.WorldMoverContext, align 8 ; 12 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = add nsw i64 %i.b, -1                     ; 4 uses
  %i.d = icmp ult i64 %i.c, 129
  br i1 %i.d, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @14, i64 %i.c) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %i.c ; 6 uses
  %i.f = mul nuw nsw i64 %i.c, 4768
  %i.g = add i64 %i.f, ptrtoint (ptr @b3_worlds to i64), !nosanitize !10 ; 2 uses
  %.not.i = icmp ult i64 %i.g, ptrtoint (ptr @b3_worlds to i64), !nosanitize !10
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !78, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @15, i64 ptrtoint (ptr @b3_worlds to i64), i64 %i.g) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4763
  %i.i = load i8, ptr %i.h, align 1, !tbaa !81    ; 3 uses
  %i.j = icmp ult i8 %i.i, 2
  br i1 %i.j, label %b3GetUnlockedWorldFromId.exit, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.k = zext i8 %i.i to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @17, i64 %i.k) #15, !nosanitize !10
  unreachable, !nosanitize !10

b3GetUnlockedWorldFromId.exit:                    ; preds = %bb.e
  %i.l = trunc nuw i8 %i.i to i1
  br i1 %i.l, label %bb.o, label %bb.g

bb.g:                                             ; preds = %b3GetUnlockedWorldFromId.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4736 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !220
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !310
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !311
  call void @b3RecQueryBegin(ptr noundef nonnull %7, ptr noundef %6, i64 noundef %i.q, ptr noundef %i.r) #16
  store ptr %5, ptr %7, align 8, !tbaa !88
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  call void @b3RecW_WORLDID(ptr noundef nonnull %i.s, i32 %0) #16
  call void @b3RecW_POSITION(ptr noundef nonnull %i.s, <2 x float> %1, float %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !295
  call void @b3RecW_CAPSULE(ptr noundef nonnull %i.s, ptr noundef nonnull byval(%struct.b3Capsule) align 8 %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @b3RecW_QUERYFILTER(ptr noundef nonnull %i.s, ptr noundef nonnull byval(%struct.b3QueryFilter) align 8 %4) #16
  %i.t = call i32 @b3RecReserveU32(ptr noundef nonnull %i.s) #16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 %i.t, ptr %i.u, align 8, !tbaa !314
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.072 = phi ptr [ %7, %bb.h ], [ %6, %bb.g ]
  %.0 = phi ptr [ @b3RecPlaneTrampoline, %bb.h ], [ %5, %bb.g ]
  %i.v = icmp ne ptr %3, null, !nosanitize !10
  %i.w = ptrtoint ptr %3 to i64, !nosanitize !10  ; 2 uses
  %i.x = and i64 %i.w, 3, !nosanitize !10
  %i.y = icmp eq i64 %i.x, 0, !nosanitize !10
  %i.z = and i1 %i.v, %i.y, !nosanitize !10
  br i1 %i.z, label %.split.1, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @394, i64 %i.w) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split.1:                                         ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !334 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.035.0.copyload = load <2 x float>, ptr %3, align 4 ; 4 uses
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.236.0.copyload = load float, ptr %.sroa.236.0..sroa_idx, align 4 ; 4 uses
  %.sroa.033.0.copyload = load <2 x float>, ptr %i.ac, align 4 ; 4 uses
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.234.0.copyload = load float, ptr %.sroa.234.0..sroa_idx, align 4 ; 4 uses
  %.sroa.07.0.vec.extract.i = extractelement <2 x float> %.sroa.035.0.copyload, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.033.0.copyload, i64 0 ; 2 uses
  %.sroa.07.4.vec.extract.i = extractelement <2 x float> %.sroa.035.0.copyload, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.033.0.copyload, i64 1 ; 2 uses
  %i.ad = fcmp ogt float %.sroa.07.4.vec.extract.i, %.sroa.0.4.vec.extract.i
  %i.ae = select i1 %i.ad, float %.sroa.07.4.vec.extract.i, float %.sroa.0.4.vec.extract.i
  %i.af = fcmp ogt float %.sroa.236.0.copyload, %.sroa.234.0.copyload
  %i.ag = select i1 %i.af, float %.sroa.236.0.copyload, float %.sroa.234.0.copyload
  %i.ah = fadd float %i.ab, %i.ae
  %i.ai = fadd float %i.ab, %i.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %.sroa.0.4.vec.extract4.i = extractelement <2 x float> %1, i64 1
  %11 = fcmp ogt float %.sroa.07.0.vec.extract.i, %.sroa.0.0.vec.extract.i
  %12 = fcmp olt float %.sroa.236.0.copyload, %.sroa.234.0.copyload
  %13 = select i1 %11, float %.sroa.07.0.vec.extract.i, float %.sroa.0.0.vec.extract.i
  %i.aj = select i1 %12, float %.sroa.236.0.copyload, float %.sroa.234.0.copyload
  %14 = fcmp olt <2 x float> %.sroa.035.0.copyload, %.sroa.033.0.copyload
  %15 = select <2 x i1> %14, <2 x float> %.sroa.035.0.copyload, <2 x float> %.sroa.033.0.copyload
  %i.ak = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.al = insertelement <4 x float> %i.ak, float %i.aj, i64 2
  %i.am = insertelement <4 x float> %i.al, float %13, i64 3 ; 2 uses
  %i.an = insertelement <4 x float> poison, float %i.ab, i64 0
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ap = fsub <4 x float> %i.am, %i.ao
  %i.aq = fadd <4 x float> %i.am, %i.ao
  %i.ar = shufflevector <4 x float> %i.ap, <4 x float> %i.aq, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.as = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.at = insertelement <4 x float> %i.as, float %2, i64 2
  %i.au = fadd <4 x float> %i.at, %i.ar
  store <4 x float> %i.au, ptr %9, align 16, !tbaa !144, !alias.scope !622
  %i.av = fadd float %.sroa.0.4.vec.extract4.i, %i.ah
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16
  store float %i.av, ptr %i.aw, align 16, !tbaa !325, !alias.scope !622
  %i.ax = fadd float %2, %i.ai
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 20
  store float %i.ax, ptr %i.ay, align 4, !tbaa !326, !alias.scope !622
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr %i.e, ptr %10, align 8, !tbaa !336
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.0, ptr %i.az, align 8, !tbaa !337
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !318
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bb, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !295
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 76
  store <2 x float> %1, ptr %i.bc, align 4
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 84
  store float %2, ptr %.sroa.468.0..sroa_idx, align 4, !tbaa !144
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr %.072, ptr %i.bd, align 8, !tbaa !338
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 800 ; 4 uses
  %i.bf = ptrtoint ptr %i.be to i64, !nosanitize !10 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load i64, ptr %i.bg, align 8            ; 3 uses
  %i.bi = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.be, ptr noundef nonnull byval(%struct.b3AABB) align 8 %9, i64 noundef %i.bh, i1 noundef zeroext false, ptr noundef nonnull @TreeCollideCallback, ptr noundef nonnull %10) #16 ; 0 uses
  %i.bj = add i64 %i.bf, 80, !nosanitize !10
  %.not77.1 = icmp ugt ptr %i.be, inttoptr (i64 -81 to ptr)
  br i1 %.not77.1, label %bb.k, label %.split.2, !prof !78, !nosanitize !10

bb.k:                                             ; preds = %.split.2, %.split.1
  %.lcssa = phi i64 [ %i.bm, %.split.2 ], [ %i.bj, %.split.1 ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @395, i64 %i.bf, i64 %.lcssa) #15, !nosanitize !10
  unreachable, !nosanitize !10

.split.2:                                         ; preds = %.split.1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 880
  %i.bl = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.bk, ptr noundef nonnull byval(%struct.b3AABB) align 8 %9, i64 noundef %i.bh, i1 noundef zeroext false, ptr noundef nonnull @TreeCollideCallback, ptr noundef nonnull %10) #16 ; 0 uses
  %i.bm = add i64 %i.bf, 160, !nosanitize !10
  %.not77.2 = icmp ugt ptr %i.be, inttoptr (i64 -161 to ptr)
  br i1 %.not77.2, label %bb.k, label %bb.l, !prof !78, !nosanitize !10

bb.l:                                             ; preds = %.split.2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %i.bo = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.bn, ptr noundef nonnull byval(%struct.b3AABB) align 8 %9, i64 noundef %i.bh, i1 noundef zeroext false, ptr noundef nonnull @TreeCollideCallback, ptr noundef nonnull %10) #16 ; 0 uses
  %i.bp = load ptr, ptr %i.m, align 16, !tbaa !220
  %.not76 = icmp eq ptr %i.bp, null
  br i1 %.not76, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !314
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !320
  call void @b3RecPatchU32(ptr noundef nonnull %i.bq, i32 noundef %i.bt, i32 noundef %i.bu) #16
  %i.bv = load ptr, ptr %i.m, align 16, !tbaa !220
  call void @b3RecQueryCommit(ptr noundef %i.bv, i8 noundef zeroext -18, ptr noundef nonnull %7) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.o

bb.o:                                             ; preds = %b3GetUnlockedWorldFromId.exit, %bb.n
  ret void
}

declare void @b3RecW_CAPSULE(ptr noundef, ptr noundef byval(%struct.b3Capsule) align 8) local_unnamed_addr #3

declare zeroext i1 @b3RecPlaneTrampoline(i64, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @TreeCollideCallback(i32 %0, i64 noundef %1, ptr noundef %2) #10 !func_sanitize !289 {
bb.a:
  %3 = alloca %struct.b3Transform, align 8        ; 6 uses
  %4 = alloca %struct.b3Transform, align 8        ; 6 uses
  %5 = alloca [64 x %struct.b3PlaneResult], align 16 ; 4 uses
  %i.a = icmp ne ptr %2, null, !nosanitize !10
  %i.b = ptrtoint ptr %2 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @651, i64 %i.b) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !336    ; 6 uses
  %i.g = icmp ne ptr %i.f, null, !nosanitize !10
  %i.h = ptrtoint ptr %i.f to i64, !nosanitize !10 ; 2 uses
  %i.i = and i64 %i.h, 7, !nosanitize !10
  %i.j = icmp eq i64 %i.i, 0, !nosanitize !10
  %i.k = and i1 %i.g, %i.j, !nosanitize !10
  br i1 %i.k, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @652, i64 %i.h) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4080
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !113  ; 3 uses
  %sext = shl i64 %1, 32
  %i.n = ashr exact i64 %sext, 32                 ; 3 uses
  %i.o = getelementptr inbounds [232 x i8], ptr %i.m, i64 %i.n ; 7 uses
  %i.p = mul nsw i64 %i.n, 232
  %i.q = ptrtoint ptr %i.m to i64, !nosanitize !10 ; 3 uses
  %i.r = add i64 %i.p, %i.q, !nosanitize !10      ; 3 uses
  %i.s = icmp ne ptr %i.m, null, !nosanitize !10  ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  %i.u = xor i1 %i.s, %i.t
  %i.v = icmp uge i64 %i.r, %i.q, !nosanitize !10
  %i.w = icmp slt i64 %i.n, 0
  %i.x = xor i1 %i.w, %i.v
  %i.y = and i1 %i.u, %i.x, !nosanitize !10
  br i1 %i.y, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @653, i64 %i.q, i64 %i.r) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.z = ptrtoint ptr %i.o to i64, !nosanitize !10 ; 2 uses
  %i.aa = and i64 %i.z, 7, !nosanitize !10
  %i.ab = icmp eq i64 %i.aa, 0, !nosanitize !10
  %i.ac = and i1 %i.s, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @654, i64 %i.z) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %.sroa.031.0.copyload = load i64, ptr %i.ad, align 8, !tbaa !256
  %.sroa.4.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.4.0.copyload29 = load i64, ptr %.sroa.4.0..sroa_idx28, align 8, !tbaa !256
  %i.ae = and i64 %.sroa.4.0.copyload29, %.sroa.031.0.copyload
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %b3ShouldQueryCollide.exit.thread, label %b3ShouldQueryCollide.exit

b3ShouldQueryCollide.exit:                        ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %.sroa.432.0.copyload = load i64, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !256
  %.sroa.0.0.copyload27 = load i64, ptr %i.af, align 8, !tbaa !256
  %i.ag = and i64 %.sroa.0.0.copyload27, %.sroa.432.0.copyload
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %b3ShouldQueryCollide.exit.thread, label %bb.j

bb.j:                                             ; preds = %b3ShouldQueryCollide.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 3880
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !93 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !290 ; 2 uses
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = shl nsw i64 %i.al, 7
  %i.an = ptrtoint ptr %i.ai to i64, !nosanitize !10 ; 3 uses
  %i.ao = add i64 %i.am, %i.an, !nosanitize !10   ; 3 uses
  %i.ap = icmp ne ptr %i.ai, null, !nosanitize !10
  %i.aq = icmp eq i64 %i.ao, 0
  %i.ar = xor i1 %i.ap, %i.aq
  %i.as = icmp uge i64 %i.ao, %i.an, !nosanitize !10
  %i.at = icmp slt i32 %i.ak, 0
  %i.au = xor i1 %i.at, %i.as
  %i.av = and i1 %i.ar, %i.au, !nosanitize !10
  br i1 %i.av, label %bb.l, label %bb.k, !prof !11, !nosanitize !10

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @655, i64 %i.an, i64 %i.ao) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.l:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds [128 x i8], ptr %i.ai, i64 %i.al
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @b3GetBodyTransformQuick(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %3, ptr noundef nonnull %i.f, ptr noundef %i.aw) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 76
  %.sroa.02.0.copyload = load <2 x float>, ptr %i.ax, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ay, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  %i.az = fsub float %.sroa.5.0.copyload, %.sroa.2.0.copyload
end_hunk_0
begin_hunk_1_@b3ShapeCastCallback:bb.a
  %i.dt = getelementptr i8, ptr %i.dp, i64 -4
  %i.du = load i32, ptr %i.dt, align 8, !nosanitize !10
  %i.dv = icmp eq i32 %i.du, -1962067908, !nosanitize !10
  br i1 %i.dv, label %bb.ac, label %bb.ab, !prof !11, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  %i.dw = ptrtoint ptr %i.dp to i64, !nosanitize !10
  call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @692, i64 %i.dw) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dz = load float, ptr %i.dy, align 8, !tbaa !353
  %.sroa.29.0.copyload = load float, ptr %.sroa.220.0..sroa_idx, align 4
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  %.sroa.27.0.copyload = load float, ptr %.sroa.27.0..sroa_idx, align 4
  %i.ea = fadd float %.sroa.29.0.copyload, %.sroa.27.0.copyload
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.bo, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.06.0.copyload = load <2 x float>, ptr %i.eb, align 4
  %i.ec = fadd <2 x float> %.sroa.08.0.copyload, %.sroa.06.0.copyload
  %i.ed = load ptr, ptr %i.dx, align 8, !tbaa !360
  %.sroa.5.0.insert.ext = zext i16 %i.cf to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 48
  %.sroa.4.0.insert.ext = zext i16 %i.cd to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.018.0.insert.ext = zext i32 %i.bz to i64
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.018.0.insert.ext
  %.sroa.018.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.0.0.copyload = load <2 x float>, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ee = call float %i.dp(i64 %.sroa.018.0.insert.insert, <2 x float> %i.ec, float %i.ea, <2 x float> %.sroa.0.0.copyload, float %.sroa.2.0.copyload, float noundef %i.dz, i64 noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.dn, ptr noundef %i.ed) #16 ; 5 uses
  %i.ef = fcmp oge float %i.ee, 0.000000e+00
  %i.eg = fcmp ole float %i.ee, 1.000000e+00
  %or.cond = and i1 %i.ef, %i.eg
  br i1 %or.cond, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 48
  store float %i.ee, ptr %i.eh, align 8, !tbaa !359
  br label %bb.af

bb.ae:                                            ; preds = %bb.r
  %i.ei = load float, ptr %i.av, align 4, !tbaa !362
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %.0 = phi float [ %i.ei, %bb.ae ], [ %i.ee, %bb.ad ], [ %i.ee, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.k
  %.1 = phi float [ %i.ao, %bb.k ], [ %.0, %bb.af ]
  ret float %.1
}

; Function Attrs: nounwind uwtable
define float @b3World_CastMover(i32 %0, <2 x float> %1, float %2, ptr noundef %3, <2 x float> %4, float %5, ptr nofree noundef readonly byval(%struct.b3QueryFilter) align 8 captures(none) %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #10 !func_sanitize !653 {
bb.a:
  %9 = alloca %struct.b3RecQueryWriter, align 8   ; 12 uses
  %10 = alloca %struct.b3Capsule, align 8         ; 4 uses
  %11 = alloca %struct.WorldMoverCastContext, align 8 ; 20 uses
  %12 = alloca %struct.b3BoxCastInput, align 16   ; 11 uses
  %i.a = and i32 %0, 65535
  %i.b = zext nneg i32 %i.a to i64
  %i.c = add nsw i64 %i.b, -1                     ; 4 uses
  %i.d = icmp ult i64 %i.c, 129
  br i1 %i.d, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @14, i64 %i.c) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %i.c ; 6 uses
  %i.f = mul nuw nsw i64 %i.c, 4768
  %i.g = add i64 %i.f, ptrtoint (ptr @b3_worlds to i64), !nosanitize !10 ; 2 uses
  %.not.i = icmp ult i64 %i.g, ptrtoint (ptr @b3_worlds to i64), !nosanitize !10
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !78, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @15, i64 ptrtoint (ptr @b3_worlds to i64), i64 %i.g) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4763
  %i.i = load i8, ptr %i.h, align 1, !tbaa !81    ; 3 uses
  %i.j = icmp ult i8 %i.i, 2
  br i1 %i.j, label %b3GetUnlockedWorldFromId.exit, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.k = zext i8 %i.i to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @17, i64 %i.k) #15, !nosanitize !10
  unreachable, !nosanitize !10

b3GetUnlockedWorldFromId.exit:                    ; preds = %bb.e
  %i.l = trunc nuw i8 %i.i to i1
  br i1 %i.l, label %bb.r, label %bb.g

bb.g:                                             ; preds = %b3GetUnlockedWorldFromId.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4736 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !220
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !310
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !311
  call void @b3RecQueryBegin(ptr noundef nonnull %9, ptr noundef %8, i64 noundef %i.q, ptr noundef %i.r) #16
  store ptr %7, ptr %9, align 8, !tbaa !88
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  call void @b3RecW_WORLDID(ptr noundef nonnull %i.s, i32 %0) #16
  call void @b3RecW_POSITION(ptr noundef nonnull %i.s, <2 x float> %1, float %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !295
  call void @b3RecW_CAPSULE(ptr noundef nonnull %i.s, ptr noundef nonnull byval(%struct.b3Capsule) align 8 %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @b3RecW_VEC3(ptr noundef nonnull %i.s, <2 x float> %4, float %5) #16
  call void @b3RecW_QUERYFILTER(ptr noundef nonnull %i.s, ptr noundef nonnull byval(%struct.b3QueryFilter) align 8 %6) #16
  %i.t = call i32 @b3RecReserveU32(ptr noundef nonnull %i.s) #16
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 %i.t, ptr %i.u, align 8, !tbaa !314
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.040 = phi ptr [ %9, %bb.h ], [ %8, %bb.g ]
  %.039 = phi ptr [ @b3RecOverlapTrampoline, %bb.h ], [ %7, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store ptr %i.e, ptr %11, align 8, !tbaa !368
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.039, ptr %i.v, align 8, !tbaa !369
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !318
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 6 uses
  store float 1.000000e+00, ptr %i.x, align 8, !tbaa !370
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 52
  store <2 x float> %1, ptr %i.y, align 4
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 60
  store float %2, ptr %.sroa.434.0..sroa_idx, align 4, !tbaa !144
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 96
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 104
  store ptr %.040, ptr %i.aa, align 8, !tbaa !371
  %i.ab = icmp ne ptr %3, null, !nosanitize !10
  %i.ac = ptrtoint ptr %3 to i64, !nosanitize !10 ; 2 uses
  %i.ad = and i64 %i.ac, 3, !nosanitize !10
  %i.ae = icmp eq i64 %i.ad, 0, !nosanitize !10
  %i.af = and i1 %i.ab, %i.ae, !nosanitize !10
  br i1 %i.af, label %b3MakeAABB.exit, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @406, i64 %i.ac) #15, !nosanitize !10
  unreachable, !nosanitize !10

b3MakeAABB.exit:                                  ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !334 ; 5 uses
  store ptr %3, ptr %i.ag, align 8, !tbaa !330
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 72
  store i32 2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !84
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 76
  store float %i.ai, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !144
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 80
  store <2 x float> %4, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 88
  store float %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !144
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 92
  store float 1.000000e+00, ptr %i.ak, align 4, !tbaa !654
  %i.al = fcmp ogt float %i.ai, 0.000000e+00
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.an = zext i1 %i.al to i8
  store i8 %i.an, ptr %i.am, align 8, !tbaa !655
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.4.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx68, align 4, !tbaa !144 ; 4 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %3, align 4 ; 4 uses
  %.sroa.5.12.copyload = load <2 x float>, ptr %i.ao, align 4 ; 4 uses
  %.sroa.7.12..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.7.12.copyload = load float, ptr %.sroa.7.12..sroa_idx, align 4, !tbaa !144 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %.sroa.07.0.vec.extract.i57.i = extractelement <2 x float> %.sroa.0.0.copyload, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5.12.copyload, i64 0 ; 2 uses
  %.sroa.07.4.vec.extract.i58.i = extractelement <2 x float> %.sroa.0.0.copyload, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %.sroa.5.12.copyload, i64 1 ; 2 uses
  %i.ap = fcmp ogt float %.sroa.07.4.vec.extract.i58.i, %.sroa.0.4.vec.extract.i.i
  %i.aq = select i1 %i.ap, float %.sroa.07.4.vec.extract.i58.i, float %.sroa.0.4.vec.extract.i.i
  %i.ar = fcmp ogt float %.sroa.4.0.copyload, %.sroa.7.12.copyload
  %i.as = select i1 %i.ar, float %.sroa.4.0.copyload, float %.sroa.7.12.copyload
  %i.at = fadd float %i.ai, %i.aq
  %i.au = fadd float %i.ai, %i.as
  %.sroa.0.4.vec.extract4.i = extractelement <2 x float> %1, i64 1
  %13 = fcmp ogt float %.sroa.07.0.vec.extract.i57.i, %.sroa.0.0.vec.extract.i.i
  %14 = fcmp olt float %.sroa.4.0.copyload, %.sroa.7.12.copyload
  %15 = select i1 %13, float %.sroa.07.0.vec.extract.i57.i, float %.sroa.0.0.vec.extract.i.i
  %i.av = select i1 %14, float %.sroa.4.0.copyload, float %.sroa.7.12.copyload
  %16 = fcmp olt <2 x float> %.sroa.0.0.copyload, %.sroa.5.12.copyload
  %17 = select <2 x i1> %16, <2 x float> %.sroa.0.0.copyload, <2 x float> %.sroa.5.12.copyload
  %i.aw = shufflevector <2 x float> %17, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ax = insertelement <4 x float> %i.aw, float %i.av, i64 2
  %i.ay = insertelement <4 x float> %i.ax, float %15, i64 3 ; 2 uses
  %i.az = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bb = fsub <4 x float> %i.ay, %i.ba
  %i.bc = fadd <4 x float> %i.ay, %i.ba
  %i.bd = shufflevector <4 x float> %i.bb, <4 x float> %i.bc, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.be = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.bf = insertelement <4 x float> %i.be, float %2, i64 2
  %i.bg = fadd <4 x float> %i.bf, %i.bd
  store <4 x float> %i.bg, ptr %12, align 16, !tbaa !144, !alias.scope !656
  %i.bh = fadd float %.sroa.0.4.vec.extract4.i, %i.at
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 16
  store float %i.bh, ptr %i.bi, align 16, !tbaa !325, !alias.scope !656
  %i.bj = fadd float %2, %i.au
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 20
  store float %i.bj, ptr %i.bk, align 4, !tbaa !326, !alias.scope !656
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 24
  store <2 x float> %4, ptr %i.bl, align 8
  %.sroa.4.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %12, i64 32
  store float %5, ptr %.sroa.4.0..sroa_idx28, align 16, !tbaa !144
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 36 ; 4 uses
  store float 1.000000e+00, ptr %i.bm, align 4, !tbaa !362
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 800 ; 4 uses
  %i.bo = ptrtoint ptr %i.bn to i64, !nosanitize !10 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bq = load i64, ptr %i.bp, align 8            ; 3 uses
  %i.br = call i64 @b3DynamicTree_BoxCast(ptr noundef nonnull %i.bn, ptr noundef nonnull %12, i64 noundef %i.bq, i1 noundef zeroext false, ptr noundef nonnull @MoverCastCallback, ptr noundef nonnull %11) #16 ; 0 uses
  %i.bs = load float, ptr %i.x, align 8, !tbaa !370 ; 3 uses
  %i.bt = fcmp oeq float %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.o, label %b3MakeAABB.exit.split.1

bb.k:                                             ; preds = %b3MakeAABB.exit.split.2, %b3MakeAABB.exit.split.1
  %.lcssa = phi i64 [ %i.bz, %b3MakeAABB.exit.split.2 ], [ %i.bu, %b3MakeAABB.exit.split.1 ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @407, i64 %i.bo, i64 %.lcssa) #15, !nosanitize !10
  unreachable, !nosanitize !10

b3MakeAABB.exit.split.1:                          ; preds = %b3MakeAABB.exit
  store float %i.bs, ptr %i.bm, align 4, !tbaa !362
  %i.bu = add i64 %i.bo, 80, !nosanitize !10
  %.not46.1 = icmp ugt ptr %i.bn, inttoptr (i64 -81 to ptr)
  br i1 %.not46.1, label %bb.k, label %bb.l, !prof !78, !nosanitize !10

bb.l:                                             ; preds = %b3MakeAABB.exit.split.1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 880
  %i.bw = call i64 @b3DynamicTree_BoxCast(ptr noundef nonnull %i.bv, ptr noundef nonnull %12, i64 noundef %i.bq, i1 noundef zeroext false, ptr noundef nonnull @MoverCastCallback, ptr noundef nonnull %11) #16 ; 0 uses
  %i.bx = load float, ptr %i.x, align 8, !tbaa !370 ; 3 uses
  %i.by = fcmp oeq float %i.bx, 0.000000e+00
  br i1 %i.by, label %bb.o, label %b3MakeAABB.exit.split.2

b3MakeAABB.exit.split.2:                          ; preds = %bb.l
  store float %i.bx, ptr %i.bm, align 4, !tbaa !362
  %i.bz = add i64 %i.bo, 160, !nosanitize !10
  %.not46.2 = icmp ugt ptr %i.bn, inttoptr (i64 -161 to ptr)
  br i1 %.not46.2, label %bb.k, label %bb.m, !prof !78, !nosanitize !10

bb.m:                                             ; preds = %b3MakeAABB.exit.split.2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %i.cb = call i64 @b3DynamicTree_BoxCast(ptr noundef nonnull %i.ca, ptr noundef nonnull %12, i64 noundef %i.bq, i1 noundef zeroext false, ptr noundef nonnull @MoverCastCallback, ptr noundef nonnull %11) #16 ; 0 uses
  %i.cc = load float, ptr %i.x, align 8, !tbaa !370 ; 4 uses
  %i.cd = fcmp oeq float %i.cc, 0.000000e+00
  br i1 %i.cd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store float %i.cc, ptr %i.bm, align 4, !tbaa !362
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %b3MakeAABB.exit
  %i.ce = phi float [ %i.cc, %bb.n ], [ %i.cc, %bb.m ], [ %i.bx, %bb.l ], [ %i.bs, %b3MakeAABB.exit ]
  %i.cf = load ptr, ptr %i.m, align 16, !tbaa !220
  %.not47 = icmp eq ptr %i.cf, null
  br i1 %.not47, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !314
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !320
  call void @b3RecPatchU32(ptr noundef nonnull %i.cg, i32 noundef %i.cj, i32 noundef %i.ck) #16
  %i.cl = load float, ptr %i.x, align 8, !tbaa !370
  call void @b3RecW_F32(ptr noundef nonnull %i.cg, float noundef %i.cl) #16
  %i.cm = load ptr, ptr %i.m, align 16, !tbaa !220
  call void @b3RecQueryCommit(ptr noundef %i.cm, i8 noundef zeroext -19, ptr noundef nonnull %9) #16
  %.pre = load float, ptr %i.x, align 8, !tbaa !370
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.cn = phi float [ %i.ce, %bb.o ], [ %.pre, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.r

bb.r:                                             ; preds = %b3GetUnlockedWorldFromId.exit, %bb.q
  %.0 = phi float [ %i.cn, %bb.q ], [ 1.000000e+00, %b3GetUnlockedWorldFromId.exit ]
  ret float %.0
}

; Function Attrs: nounwind uwtable
define internal float @MoverCastCallback(ptr noundef %0, i32 %1, i64 noundef %2, ptr noundef %3) #10 !func_sanitize !363 {
bb.a:
  %4 = alloca %struct.b3ShapeCastInput, align 8   ; 5 uses
  %5 = alloca %struct.b3Transform, align 8        ; 6 uses
  %6 = alloca %struct.b3Transform, align 8        ; 4 uses
  %7 = alloca %struct.b3CastOutput, align 4       ; 4 uses
  %i.a = trunc i64 %2 to i32
  %i.b = icmp ne ptr %3, null, !nosanitize !10
  %i.c = ptrtoint ptr %3 to i64, !nosanitize !10  ; 2 uses
  %i.d = and i64 %i.c, 7, !nosanitize !10
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !10
  %i.f = and i1 %i.b, %i.e, !nosanitize !10
  br i1 %i.f, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @694, i64 %i.c) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %3, align 8, !tbaa !368    ; 6 uses
  %i.h = icmp ne ptr %i.g, null, !nosanitize !10
  %i.i = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 2 uses
  %i.j = and i64 %i.i, 7, !nosanitize !10
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !10
  %i.l = and i1 %i.h, %i.k, !nosanitize !10
  br i1 %i.l, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @695, i64 %i.i) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4080
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !113  ; 3 uses
  %sext = shl i64 %2, 32
  %i.o = ashr exact i64 %sext, 32                 ; 3 uses
  %i.p = getelementptr inbounds [232 x i8], ptr %i.n, i64 %i.o ; 6 uses
  %i.q = mul nsw i64 %i.o, 232
  %i.r = ptrtoint ptr %i.n to i64, !nosanitize !10 ; 3 uses
  %i.s = add i64 %i.q, %i.r, !nosanitize !10      ; 3 uses
  %i.t = icmp ne ptr %i.n, null, !nosanitize !10  ; 2 uses
  %i.u = icmp eq i64 %i.s, 0
  %i.v = xor i1 %i.t, %i.u
  %i.w = icmp uge i64 %i.s, %i.r, !nosanitize !10
  %i.x = icmp slt i64 %i.o, 0
  %i.y = xor i1 %i.x, %i.w
  %i.z = and i1 %i.v, %i.y, !nosanitize !10
  br i1 %i.z, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @696, i64 %i.r, i64 %i.s) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.aa = ptrtoint ptr %i.p to i64, !nosanitize !10 ; 2 uses
  %i.ab = and i64 %i.aa, 7, !nosanitize !10
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !10
  %i.ad = and i1 %i.t, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @697, i64 %i.aa) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %.sroa.042.0.copyload = load i64, ptr %i.ae, align 8, !tbaa !256
  %.sroa.4.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.4.0.copyload40 = load i64, ptr %.sroa.4.0..sroa_idx39, align 8, !tbaa !256
  %i.af = and i64 %.sroa.4.0.copyload40, %.sroa.042.0.copyload
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %b3ShouldQueryCollide.exit.thread, label %b3ShouldQueryCollide.exit

b3ShouldQueryCollide.exit:                        ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %.sroa.443.0.copyload = load i64, ptr %.sroa.443.0..sroa_idx, align 8, !tbaa !256
  %.sroa.0.0.copyload38 = load i64, ptr %i.ag, align 8, !tbaa !256
  %i.ah = and i64 %.sroa.0.0.copyload38, %.sroa.443.0.copyload
  %.not37 = icmp eq i64 %i.ah, 0
  br i1 %.not37, label %b3ShouldQueryCollide.exit.thread, label %bb.j

b3ShouldQueryCollide.exit.thread:                 ; preds = %b3ShouldQueryCollide.exit, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !370
  br label %bb.y

bb.j:                                             ; preds = %b3ShouldQueryCollide.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !369 ; 5 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.a, i32 1), !nosanitize !10 ; 2 uses
  %i.an = extractvalue { i32, i1 } %i.am, 0, !nosanitize !10
  %i.ao = extractvalue { i32, i1 } %i.am, 1, !nosanitize !10
  br i1 %i.ao, label %bb.l, label %bb.m, !prof !78, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  %i.ap = and i64 %2, 4294967295
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @698, i64 %i.ap, i64 1) #15, !nosanitize !10
end_hunk_1
begin_hunk_2_@b3World_Explode:bb.a
bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [4768 x i8], ptr @b3_worlds, i64 %i.m ; 5 uses
  %i.p = mul nuw nsw i64 %i.m, 4768
  %i.q = add i64 %i.p, ptrtoint (ptr @b3_worlds to i64), !nosanitize !10 ; 2 uses
  %.not.i = icmp ult i64 %i.q, ptrtoint (ptr @b3_worlds to i64), !nosanitize !10
  br i1 %.not.i, label %bb.f, label %bb.g, !prof !78, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @15, i64 ptrtoint (ptr @b3_worlds to i64), i64 %i.q) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4763 ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !81    ; 3 uses
  %i.t = icmp ult i8 %i.s, 2
  br i1 %i.t, label %b3GetUnlockedWorldFromId.exit, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  %i.u = zext i8 %i.s to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @17, i64 %i.u) #15, !nosanitize !10
  unreachable, !nosanitize !10

b3GetUnlockedWorldFromId.exit:                    ; preds = %bb.g
  %i.v = trunc nuw i8 %i.s to i1
  br i1 %i.v, label %bb.n, label %bb.i

bb.i:                                             ; preds = %b3GetUnlockedWorldFromId.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 4736
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !220 ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 %0, ptr %2, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !674
  call void @b3RecWrite_WorldExplode(ptr noundef nonnull %i.x, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i8 1, ptr %i.r, align 1, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %i.o, ptr %3, align 8, !tbaa !373
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.019.0.copyload, ptr %i.aa, align 8
  %.sroa.5.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x float> %i.i, ptr %.sroa.5.0..sroa_idx21, align 8, !tbaa !144
  %i.ab = extractelement <4 x float> %i.i, i64 2
  %i.ac = fadd float %i.j, %i.ab                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ad = shufflevector <2 x float> %.sroa.019.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> %i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 0> ; 2 uses
  %i.af = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ah = fsub <4 x float> %i.ae, %i.ag
  %i.ai = fadd <4 x float> %i.ae, %i.ag
  %i.aj = shufflevector <4 x float> %i.ah, <4 x float> %i.ai, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.aj, ptr %4, align 16, !tbaa !144, !alias.scope !675
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.al = shufflevector <4 x float> %i.ad, <4 x float> %i.i, <2 x i32> <i32 1, i32 4>
  %i.am = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fadd <2 x float> %i.al, %i.an
  store <2 x float> %i.ao, ptr %i.ak, align 16, !tbaa !144, !alias.scope !675
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 800 ; 2 uses
  %.not34 = icmp ugt ptr %i.ap, inttoptr (i64 -161 to ptr)
  br i1 %.not34, label %bb.l, label %bb.m, !prof !78, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  %i.aq = ptrtoint ptr %i.ap to i64, !nosanitize !10 ; 2 uses
  %i.ar = add i64 %i.aq, 160, !nosanitize !10
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @410, i64 %i.aq, i64 %i.ar) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 960
  %i.at = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.as, ptr noundef nonnull byval(%struct.b3AABB) align 8 %4, i64 noundef %i.f, i1 noundef zeroext false, ptr noundef nonnull @ExplosionCallback, ptr noundef nonnull %3) #16 ; 0 uses
  store i8 0, ptr %i.r, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.n

bb.n:                                             ; preds = %b3GetUnlockedWorldFromId.exit, %bb.m
  ret void
}

declare void @b3RecWrite_WorldExplode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @ExplosionCallback(i32 %0, i64 noundef %1, ptr noundef %2) #10 !func_sanitize !289 {
bb.a:
  %3 = alloca %struct.b3Transform, align 8        ; 7 uses
  %4 = alloca %struct.b3Vec3, align 8             ; 6 uses
  %5 = alloca %struct.b3DistanceInput, align 8    ; 10 uses
  %6 = alloca %struct.b3SimplexCache, align 4     ; 4 uses
  %7 = alloca %struct.b3DistanceOutput, align 8   ; 6 uses
  %i.a = icmp ne ptr %2, null, !nosanitize !10
  %i.b = ptrtoint ptr %2 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @703, i64 %i.b) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !373    ; 7 uses
  %i.g = icmp ne ptr %i.f, null, !nosanitize !10
  %i.h = ptrtoint ptr %i.f to i64, !nosanitize !10 ; 2 uses
  %i.i = and i64 %i.h, 7, !nosanitize !10
  %i.j = icmp eq i64 %i.i, 0, !nosanitize !10
  %i.k = and i1 %i.g, %i.j, !nosanitize !10
  br i1 %i.k, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @704, i64 %i.h) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4080
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !113  ; 3 uses
  %sext = shl i64 %1, 32
  %i.n = ashr exact i64 %sext, 32                 ; 3 uses
  %i.o = getelementptr inbounds [232 x i8], ptr %i.m, i64 %i.n ; 6 uses
  %i.p = mul nsw i64 %i.n, 232
  %i.q = ptrtoint ptr %i.m to i64, !nosanitize !10 ; 3 uses
  %i.r = add i64 %i.p, %i.q, !nosanitize !10      ; 3 uses
  %i.s = icmp ne ptr %i.m, null, !nosanitize !10  ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  %i.u = xor i1 %i.s, %i.t
  %i.v = icmp uge i64 %i.r, %i.q, !nosanitize !10
  %i.w = icmp slt i64 %i.n, 0
  %i.x = xor i1 %i.w, %i.v
  %i.y = and i1 %i.u, %i.x, !nosanitize !10
  br i1 %i.y, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @705, i64 %i.q, i64 %i.r) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.z = ptrtoint ptr %i.o to i64, !nosanitize !10 ; 2 uses
  %i.aa = and i64 %i.z, 7, !nosanitize !10
  %i.ab = icmp eq i64 %i.aa, 0, !nosanitize !10
  %i.ac = and i1 %i.s, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @706, i64 %i.z) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !676
  %i.af = fcmp oeq float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.ak, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 3880
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !93 ; 3 uses
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !290 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds [128 x i8], ptr %i.ai, i64 %i.ak ; 5 uses
  %i.am = shl nsw i64 %i.ak, 7
  %i.an = ptrtoint ptr %i.ai to i64, !nosanitize !10 ; 3 uses
  %i.ao = add i64 %i.am, %i.an, !nosanitize !10   ; 3 uses
  %i.ap = icmp ne ptr %i.ai, null, !nosanitize !10 ; 2 uses
  %i.aq = icmp eq i64 %i.ao, 0
  %i.ar = xor i1 %i.ap, %i.aq
  %i.as = icmp uge i64 %i.ao, %i.an, !nosanitize !10
  %i.at = icmp slt i32 %i.aj, 0
  %i.au = xor i1 %i.at, %i.as
  %i.av = and i1 %i.ar, %i.au, !nosanitize !10
  br i1 %i.av, label %bb.l, label %bb.k, !prof !11, !nosanitize !10

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @707, i64 %i.an, i64 %i.ao) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @b3GetBodyTransformQuick(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %3, ptr noundef nonnull %i.f, ptr noundef %i.al) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0126.0.copyload = load <2 x float>, ptr %i.aw, align 8
  %.sroa.2127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2127.0.copyload = load float, ptr %.sroa.2127.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.az = load <2 x float>, ptr %i.ay, align 4    ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.bb = load <2 x float>, ptr %i.ba, align 4    ; 3 uses
  %i.bc = load <2 x float>, ptr %3, align 8, !tbaa !144
  %8 = load float, ptr %i.ax, align 8, !tbaa !278
  %9 = fsub <2 x float> %.sroa.0126.0.copyload, %i.bc ; 4 uses
  %i.bd = fsub float %.sroa.2127.0.copyload, %8   ; 3 uses
  %i.be = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bf = insertelement <2 x float> %i.be, float %i.bd, i64 1 ; 2 uses
  %i.bg = fmul <2 x float> %i.bf, %i.az
  %i.bh = shufflevector <2 x float> %i.bb, <2 x float> %i.az, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bi = fmul <2 x float> %9, %i.bh
  %i.bj = shufflevector <2 x float> %i.az, <2 x float> %i.bb, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bk = fmul <2 x float> %9, %i.bj
  %i.bl = insertelement <2 x float> %i.be, float %i.bd, i64 0 ; 2 uses
  %i.bm = fmul <2 x float> %i.bl, %i.az
  %i.bn = fsub <2 x float> %i.bg, %i.bk
  %i.bo = fsub <2 x float> %i.bi, %i.bm
  %i.bp = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bq = fmul <2 x float> %i.bl, %i.bp
  %i.br = fmul <2 x float> %i.bf, %i.bp
  %i.bs = fsub <2 x float> %i.bn, %i.bq           ; 2 uses
  %i.bt = fsub <2 x float> %i.bo, %i.br           ; 2 uses
  %i.bu = fmul <2 x float> %i.bj, %i.bs
  %i.bv = fmul <2 x float> %i.bh, %i.bt
  %i.bw = fsub <2 x float> %i.bu, %i.bv
  %i.bx = shufflevector <2 x float> %i.bt, <2 x float> %i.bs, <2 x i32> <i32 0, i32 3>
  %i.by = fmul <2 x float> %i.az, %i.bx           ; 2 uses
  %shift = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.by, %shift
  %i.bz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ca = fmul <2 x float> %i.bw, splat (float 2.000000e+00)
  %i.cb = fadd <2 x float> %9, %i.ca
  %i.cc = fmul float %i.bz, 2.000000e+00
  %i.cd = fadd float %i.bd, %i.cc
  store <2 x float> %i.cb, ptr %4, align 8
  %.sroa.2125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float %i.cd, ptr %.sroa.2125.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.ce = call { ptr, i64 } @b3MakeShapeProxy(ptr noundef nonnull %i.o) #16 ; 2 uses
  %i.cf = extractvalue { ptr, i64 } %i.ce, 0
  %i.cg = extractvalue { ptr, i64 } %i.ce, 1
  store ptr %i.cf, ptr %5, align 8, !tbaa !330
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cg, ptr %.sroa.4121.0..sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %4, ptr %i.ch, align 8, !tbaa !330
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !84
  %.sroa.3219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float 0.000000e+00, ptr %.sroa.3219.0..sroa_idx, align 4, !tbaa !144
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ci, ptr noundef nonnull align 4 dereferenceable(28) @b3Transform_identity, i64 28, i1 false), !tbaa.struct !295
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 60
  store i8 1, ptr %i.cj, align 4, !tbaa !678
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %7, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #16
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !679 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !680 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 3 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !682
  %i.cq = fadd float %i.cl, %i.cn                 ; 2 uses
  %i.cr = fcmp ogt float %i.cp, %i.cq
  br i1 %i.cr, label %bb.aj, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = call zeroext i1 @b3WakeBody(ptr noundef nonnull %i.f, ptr noundef %i.al) #16 ; 0 uses
  %i.ct = ptrtoint ptr %i.al to i64, !nosanitize !10 ; 2 uses
  %i.cu = and i64 %i.ct, 7, !nosanitize !10
  %i.cv = icmp eq i64 %i.cu, 0, !nosanitize !10
  %i.cw = and i1 %i.ap, %i.cv
  br i1 %i.cw, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @708, i64 %i.ct) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !280
  %.not = icmp eq i32 %i.cy, 2
  br i1 %.not, label %bb.p, label %bb.aj

bb.p:                                             ; preds = %bb.o
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !144
  %.sroa.0111.0.copyload = load <2 x float>, ptr %7, align 8
  %i.cz = load float, ptr %i.co, align 4, !tbaa !682
  %i.da = fcmp oeq float %i.cz, 0.000000e+00
  br i1 %i.da, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.db = call { <2 x float>, float } @b3GetShapeCentroid(ptr noundef nonnull %i.o) #16 ; 2 uses
  %.fca.0.extract105 = extractvalue { <2 x float>, float } %i.db, 0
  %.fca.1.extract106 = extractvalue { <2 x float>, float } %i.db, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0111.0 = phi <2 x float> [ %.fca.0.extract105, %bb.q ], [ %.sroa.0111.0.copyload, %bb.p ] ; 2 uses
  %.sroa.6.0 = phi float [ %.fca.1.extract106, %bb.q ], [ %.sroa.6.0.copyload, %bb.p ] ; 2 uses
  %.sroa.097.0.copyload = load <2 x float>, ptr %4, align 8
  %.sroa.298.0.copyload = load float, ptr %.sroa.2125.0..sroa_idx, align 8
  %i.dc = fsub <2 x float> %.sroa.0111.0, %.sroa.097.0.copyload ; 3 uses
  %i.dd = fsub float %.sroa.6.0, %.sroa.298.0.copyload ; 3 uses
  %i.de = fmul <2 x float> %i.dc, %i.dc           ; 2 uses
  %shift233 = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop234 = fadd <2 x float> %i.de, %shift233
  %i.df = extractelement <2 x float> %foldExtExtBinop234, i64 0
  %i.dg = fmul float %i.dd, %i.dd
  %i.dh = fadd float %i.dg, %i.df                 ; 2 uses
  %i.di = fcmp ogt float %i.dh, f0x2BC80000
  br i1 %i.di, label %b3Normalize.exit, label %bb.s

b3Normalize.exit:                                 ; preds = %bb.r
  %sqrt = call float @llvm.sqrt.f32(float %i.dh)
  %i.dj = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.dk = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x float> %i.dc, %i.dl
  %i.dn = fmul float %i.dd, %i.dj
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %b3Normalize.exit
  %.sroa.0101.0 = phi <2 x float> [ %i.dm, %b3Normalize.exit ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.r ] ; 5 uses
  %.sroa.9.0 = phi float [ %i.dn, %b3Normalize.exit ], [ 0.000000e+00, %bb.r ] ; 5 uses
  %i.do = call float @b3GetShapeProjectedArea(ptr noundef nonnull %i.o, <2 x float> %.sroa.0101.0, float %.sroa.9.0) #16
  %i.dp = load float, ptr %i.co, align 4, !tbaa !682 ; 2 uses
  %i.dq = fcmp ogt float %i.dp, %i.cl
  %i.dr = fcmp ogt float %i.cn, 0.000000e+00
  %or.cond = and i1 %i.dr, %i.dq
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ds = fsub float %i.cq, %i.dp
  %i.dt = fdiv float %i.ds, %i.cn                 ; 3 uses
  %i.du = fcmp olt float %i.dt, 0.000000e+00
  %i.dv = fcmp ogt float %i.dt, 1.000000e+00
  %i.dw = select i1 %i.dv, float 1.000000e+00, float %i.dt
  %i.dx = select i1 %i.du, float 0.000000e+00, float %i.dw
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0152 = phi float [ %i.dx, %bb.t ], [ 1.000000e+00, %bb.s ]
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !683
  %i.ea = fmul float %i.do, %i.dz
  %i.eb = fmul float %.0152, %i.ea
  %i.ec = load float, ptr %i.ad, align 8, !tbaa !676
  %i.ed = fmul float %i.ec, %i.eb                 ; 2 uses
  %i.ee = load <2 x float>, ptr %i.ay, align 4    ; 6 uses
  %i.ef = load <2 x float>, ptr %i.ba, align 4    ; 4 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %i.ee, i64 0
  %foldExtExtBinop236 = fmul <2 x float> %.sroa.0101.0, %i.ef
  %i.eg = extractelement <2 x float> %foldExtExtBinop236, i64 0
  %i.eh = fmul float %.sroa.9.0, %.sroa.09.0.vec.extract.i.i
  %i.ei = shufflevector <2 x float> %.sroa.0101.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ej = insertelement <2 x float> %i.ei, float %.sroa.9.0, i64 1 ; 2 uses
  %i.ek = fmul <2 x float> %i.ej, %i.ee
  %i.el = shufflevector <2 x float> %i.ee, <2 x float> %i.ef, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.em = fmul <2 x float> %.sroa.0101.0, %i.el
  %i.en = fsub <2 x float> %i.ek, %i.em           ; 2 uses
  %10 = fsub float %i.eg, %i.eh
  %i.eo = insertelement <2 x float> %i.ei, float %.sroa.9.0, i64 0
  %i.ep = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.eq = fmul <2 x float> %i.eo, %i.ep
  %i.er = fmul <2 x float> %i.ej, %i.ep
  %i.es = fadd <2 x float> %i.eq, %i.en           ; 2 uses
  %i.et = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eu = insertelement <2 x float> %i.et, float %10, i64 0
  %i.ev = fadd <2 x float> %i.er, %i.eu           ; 2 uses
  %i.ew = fmul <2 x float> %i.el, %i.es
  %i.ex = shufflevector <2 x float> %i.ef, <2 x float> %i.ee, <2 x i32> <i32 0, i32 2>
  %i.ey = fmul <2 x float> %i.ex, %i.ev
  %i.ez = fsub <2 x float> %i.ew, %i.ey
  %foldExtExtBinop238 = fmul <2 x float> %i.ee, %i.ev
  %foldExtExtBinop240 = fmul <2 x float> %i.ee, %i.es
  %shift242 = shufflevector <2 x float> %foldExtExtBinop240, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop243 = fsub <2 x float> %foldExtExtBinop238, %shift242
  %i.fa = extractelement <2 x float> %foldExtExtBinop243, i64 0
  %i.fb = fmul <2 x float> %i.ez, splat (float 2.000000e+00)
  %i.fc = fadd <2 x float> %.sroa.0101.0, %i.fb
  %i.fd = fmul float %i.fa, 2.000000e+00
  %i.fe = fadd float %.sroa.9.0, %i.fd
  %i.ff = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = fmul <2 x float> %i.fg, %i.fc           ; 3 uses
  %i.fi = fmul float %i.ed, %i.fe                 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !374 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 3920
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !95 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 176 ; 2 uses
  %i.fo = ptrtoint ptr %i.fm to i64, !nosanitize !10 ; 2 uses
  %i.fp = add i64 %i.fo, 176, !nosanitize !10     ; 2 uses
  %i.fq = icmp ne ptr %i.fm, null, !nosanitize !10
  %i.fr = icmp ne i64 %i.fp, 0
  %i.fs = and i1 %i.fq, %i.fr
  %i.ft = icmp ult ptr %i.fm, inttoptr (i64 -176 to ptr)
  %i.fu = and i1 %i.ft, %i.fs, !nosanitize !10
  br i1 %i.fu, label %bb.w, label %bb.v, !prof !11, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @709, i64 %i.fo, i64 %i.fp) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.w:                                             ; preds = %bb.u
  %i.fv = ptrtoint ptr %i.fn to i64, !nosanitize !10 ; 2 uses
  %i.fw = and i64 %i.fv, 7, !nosanitize !10
  %i.fx = icmp eq i64 %i.fw, 0, !nosanitize !10
  br i1 %i.fx, label %bb.y, label %bb.x, !prof !11, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @710, i64 %i.fv) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.y:                                             ; preds = %bb.w
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fm, i64 192 ; 2 uses
  %i.fz = ptrtoint ptr %i.fy to i64, !nosanitize !10 ; 2 uses
  %i.ga = and i64 %i.fz, 7, !nosanitize !10
  %i.gb = icmp eq i64 %i.ga, 0, !nosanitize !10
  br i1 %i.gb, label %bb.aa, label %bb.z, !prof !11, !nosanitize !10

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @711, i64 %i.fz) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.aa:                                            ; preds = %bb.y
  %i.gc = load ptr, ptr %i.fy, align 8, !tbaa !109 ; 3 uses
  %i.gd = sext i32 %i.fk to i64                   ; 4 uses
  %i.ge = getelementptr inbounds [56 x i8], ptr %i.gc, i64 %i.gd ; 6 uses
  %i.gf = mul nsw i64 %i.gd, 56
  %i.gg = ptrtoint ptr %i.gc to i64, !nosanitize !10 ; 3 uses
  %i.gh = add i64 %i.gf, %i.gg, !nosanitize !10   ; 3 uses
  %i.gi = icmp ne ptr %i.gc, null, !nosanitize !10 ; 2 uses
  %i.gj = icmp eq i64 %i.gh, 0
  %i.gk = xor i1 %i.gi, %i.gj
  %i.gl = icmp uge i64 %i.gh, %i.gg, !nosanitize !10
  %i.gm = icmp slt i32 %i.fk, 0                   ; 2 uses
  %i.gn = xor i1 %i.gm, %i.gl
  %i.go = and i1 %i.gk, %i.gn, !nosanitize !10
  br i1 %i.go, label %bb.ac, label %bb.ab, !prof !11, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @712, i64 %i.gg, i64 %i.gh) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ac:                                            ; preds = %bb.aa
  %i.gp = load ptr, ptr %i.fn, align 8, !tbaa !107 ; 3 uses
  %i.gq = getelementptr inbounds [216 x i8], ptr %i.gp, i64 %i.gd ; 13 uses
  %i.gr = mul nsw i64 %i.gd, 216
  %i.gs = ptrtoint ptr %i.gp to i64, !nosanitize !10 ; 3 uses
  %i.gt = add i64 %i.gr, %i.gs, !nosanitize !10   ; 3 uses
  %i.gu = icmp ne ptr %i.gp, null, !nosanitize !10 ; 2 uses
  %i.gv = icmp eq i64 %i.gt, 0
  %i.gw = xor i1 %i.gu, %i.gv
  %i.gx = icmp uge i64 %i.gt, %i.gs, !nosanitize !10
  %i.gy = xor i1 %i.gm, %i.gx
  %i.gz = and i1 %i.gw, %i.gy, !nosanitize !10
  br i1 %i.gz, label %bb.ae, label %bb.ad, !prof !11, !nosanitize !10

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @713, i64 %i.gs, i64 %i.gt) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ae:                                            ; preds = %bb.ac
  %i.ha = ptrtoint ptr %i.ge to i64, !nosanitize !10 ; 2 uses
  %i.hb = and i64 %i.ha, 3, !nosanitize !10
  %i.hc = icmp eq i64 %i.hb, 0, !nosanitize !10
  %i.hd = and i1 %i.gi, %i.hc
  br i1 %i.hd, label %bb.ag, label %bb.af, !prof !11, !nosanitize !10

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @715, i64 %i.ha) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ag:                                            ; preds = %bb.ae
  %i.he = ptrtoint ptr %i.gq to i64, !nosanitize !10 ; 2 uses
  %i.hf = and i64 %i.he, 3, !nosanitize !10
  %i.hg = icmp eq i64 %i.hf, 0, !nosanitize !10
  %i.hh = and i1 %i.gu, %i.hg
  br i1 %i.hh, label %bb.ai, label %bb.ah, !prof !11, !nosanitize !10

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @716, i64 %i.he) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ai:                                            ; preds = %bb.ag
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gq, i64 104
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !684 ; 2 uses
  %.sroa.049.0.copyload = load <2 x float>, ptr %i.ge, align 4
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  %.sroa.250.0.copyload = load float, ptr %.sroa.250.0..sroa_idx, align 4
  %i.hk = insertelement <2 x float> poison, float %i.hj, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = fmul <2 x float> %i.fh, %i.hl
  %i.hn = fadd <2 x float> %i.hm, %.sroa.049.0.copyload
  %i.ho = fmul float %i.fi, %i.hj
  %i.hp = fadd float %i.ho, %.sroa.250.0.copyload
  store <2 x float> %i.hn, ptr %i.ge, align 4
  store float %i.hp, ptr %.sroa.250.0..sroa_idx, align 4, !tbaa !144
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ge, i64 12 ; 2 uses
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 76
  %.sroa.236.0.copyload = load float, ptr %.sroa.236.0..sroa_idx, align 4
  %i.hr = load <2 x float>, ptr %i.ay, align 4    ; 3 uses
  %i.hs = load <2 x float>, ptr %i.ba, align 4    ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gq, i64 68
  %.sroa.035.0.copyload = load <2 x float>, ptr %i.ht, align 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gq, i64 144
  %.sroa.0.0.copyload = load float, ptr %i.hu, align 4, !tbaa !144
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 148
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !144
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 152
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !144
  %.sroa.6.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %i.gq, i64 156
  %.sroa.6.0.copyload215 = load float, ptr %.sroa.6.0..sroa_idx214, align 4, !tbaa !144
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 160
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !144
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 164
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !144
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 168
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !144
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 172
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !144
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 176
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !144
  %.sroa.04.0.copyload = load <2 x float>, ptr %i.hq, align 4 ; 2 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 20 ; 2 uses
  %.sroa.25.0.copyload = load float, ptr %.sroa.25.0..sroa_idx, align 4
  %i.hv = shufflevector <2 x float> %.sroa.0111.0, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.hw = insertelement <4 x float> %i.hv, float 1.000000e+00, i64 3
  %i.hx = insertelement <4 x float> %i.hw, float %.sroa.6.0, i64 1
  %i.hy = shufflevector <2 x float> %.sroa.035.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.hz = insertelement <4 x float> %i.hy, float 0.000000e+00, i64 3
  %i.ia = insertelement <4 x float> %i.hz, float %.sroa.236.0.copyload, i64 1
  %i.ib = fsub <4 x float> %i.hx, %i.ia           ; 4 uses
  %i.ic = shufflevector <2 x float> %i.hs, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.id = insertelement <4 x float> %i.ic, float 1.000000e+00, i64 3
  %i.ie = shufflevector <4 x float> %i.ib, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.if = fmul <4 x float> %i.id, %i.ie
  %i.ig = shufflevector <2 x float> %i.hr, <2 x float> %i.hs, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.ih = insertelement <4 x float> %i.ig, float -0.000000e+00, i64 3
  %i.ii = shufflevector <4 x float> %i.ib, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.ij = fmul <4 x float> %i.ih, %i.ii
  %i.ik = shufflevector <2 x float> %i.hs, <2 x float> %i.hr, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.il = insertelement <4 x float> %i.ik, float 0.000000e+00, i64 3
  %i.im = fmul <4 x float> %i.il, %i.ib
  %i.in = fsub <4 x float> %i.ij, %i.im
  %i.io = fadd <4 x float> %i.if, %i.in           ; 2 uses
  %i.ip = insertelement <4 x float> %i.ik, float 1.000000e+00, i64 3
  %i.iq = fmul <4 x float> %i.ip, %i.io
  %i.ir = shufflevector <2 x float> %i.hr, <2 x float> %i.hs, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.is = insertelement <4 x float> %i.ir, float 0.000000e+00, i64 3
  %i.it = shufflevector <4 x float> %i.io, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.iu = fmul <4 x float> %i.is, %i.it
  %i.iv = fsub <4 x float> %i.iq, %i.iu
  %i.iw = fmul <4 x float> %i.iv, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.ix = fadd <4 x float> %i.ib, %i.iw           ; 2 uses
  %i.iy = shufflevector <2 x float> %i.fh, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.iz = insertelement <4 x float> %i.iy, float 1.000000e+00, i64 3
  %i.ja = insertelement <4 x float> %i.iz, float %i.fi, i64 0
  %i.jb = fmul <4 x float> %i.ja, %i.ix
  %i.jc = shufflevector <2 x float> %i.fh, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.jd = insertelement <4 x float> %i.jc, float 0.000000e+00, i64 3
  %i.je = insertelement <4 x float> %i.jd, float %i.fi, i64 1
  %i.jf = shufflevector <4 x float> %i.ix, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.jg = fmul <4 x float> %i.je, %i.jf
  %i.jh = fsub <4 x float> %i.jb, %i.jg           ; 4 uses
  %i.ji = extractelement <4 x float> %i.jh, i64 0 ; 2 uses
  %i.jj = fmul float %.sroa.5.0.copyload, %i.ji
end_hunk_2
begin_hunk_3_@b3CollideTask:bb.a
  %i.ld = ptrtoint ptr %i.ks to i64, !nosanitize !10 ; 2 uses
  %i.le = and i64 %i.ld, 7, !nosanitize !10
  %i.lf = icmp eq i64 %i.le, 0, !nosanitize !10
  %i.lg = and i1 %i.kw, %i.lf
  br i1 %i.lg, label %bb.bp, label %bb.bo, !prof !11, !nosanitize !10

bb.bo:                                            ; preds = %bb.bn
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @550, i64 %i.ld) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bp:                                            ; preds = %bb.bn
  %i.lh = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  %i.li = load ptr, ptr %i.ks, align 8, !tbaa !107 ; 3 uses
  %i.lj = load i32, ptr %i.lh, align 4, !tbaa !374 ; 3 uses
  %i.lk = sext i32 %i.lj to i64                   ; 2 uses
  %i.ll = getelementptr inbounds [216 x i8], ptr %i.li, i64 %i.lk
  %i.lm = mul nsw i64 %i.lk, 216
  %i.ln = ptrtoint ptr %i.li to i64, !nosanitize !10 ; 3 uses
  %i.lo = add i64 %i.lm, %i.ln, !nosanitize !10   ; 3 uses
  %i.lp = icmp ne ptr %i.li, null, !nosanitize !10
  %i.lq = icmp eq i64 %i.lo, 0
  %i.lr = xor i1 %i.lp, %i.lq
  %i.ls = icmp uge i64 %i.lo, %i.ln, !nosanitize !10
  %i.lt = icmp slt i32 %i.lj, 0
  %i.lu = xor i1 %i.lt, %i.ls
  %i.lv = and i1 %i.lr, %i.lu, !nosanitize !10
  br i1 %i.lv, label %bb.br, label %bb.bq, !prof !11, !nosanitize !10

bb.bq:                                            ; preds = %bb.bp
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @551, i64 %i.ln, i64 %i.lo) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.br:                                            ; preds = %bb.bp
  %i.lw = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !280 ; 2 uses
  %i.ly = sext i32 %i.lx to i64                   ; 2 uses
  %i.lz = getelementptr inbounds [88 x i8], ptr %i.ko, i64 %i.ly ; 2 uses
  %i.ma = mul nsw i64 %i.ly, 88
  %i.mb = add i64 %i.ma, %i.ku, !nosanitize !10   ; 3 uses
  %i.mc = icmp ne i64 %i.mb, 0
  %i.md = icmp uge i64 %i.mb, %i.ku, !nosanitize !10
  %i.me = icmp slt i32 %i.lx, 0
  %i.mf = xor i1 %i.me, %i.md
  %i.mg = and i1 %i.mc, %i.mf, !nosanitize !10
  br i1 %i.mg, label %bb.bt, label %bb.bs, !prof !11, !nosanitize !10

bb.bs:                                            ; preds = %bb.br
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @552, i64 %i.ku, i64 %i.mb) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bt:                                            ; preds = %bb.br
  %i.mh = ptrtoint ptr %i.lz to i64, !nosanitize !10 ; 2 uses
  %i.mi = and i64 %i.mh, 7, !nosanitize !10
  %i.mj = icmp eq i64 %i.mi, 0, !nosanitize !10
  br i1 %i.mj, label %bb.bv, label %bb.bu, !prof !11, !nosanitize !10

bb.bu:                                            ; preds = %bb.bt
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @553, i64 %i.mh) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bv:                                            ; preds = %bb.bt
  %i.mk = load ptr, ptr %i.lz, align 8, !tbaa !107 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !374 ; 3 uses
  %i.mn = sext i32 %i.mm to i64                   ; 2 uses
  %i.mo = mul nsw i64 %i.mn, 216
  %i.mp = ptrtoint ptr %i.mk to i64, !nosanitize !10 ; 3 uses
  %i.mq = add i64 %i.mo, %i.mp, !nosanitize !10   ; 3 uses
  %i.mr = icmp ne ptr %i.mk, null, !nosanitize !10
  %i.ms = icmp eq i64 %i.mq, 0
  %i.mt = xor i1 %i.mr, %i.ms
  %i.mu = icmp uge i64 %i.mq, %i.mp, !nosanitize !10
  %i.mv = icmp slt i32 %i.mm, 0
  %i.mw = xor i1 %i.mv, %i.mu
  %i.mx = and i1 %i.mt, %i.mw, !nosanitize !10
  br i1 %i.mx, label %bb.bx, label %bb.bw, !prof !11, !nosanitize !10

bb.bw:                                            ; preds = %bb.bv
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @554, i64 %i.mp, i64 %i.mq) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.bx:                                            ; preds = %bb.bv
  %i.my = getelementptr inbounds [216 x i8], ptr %i.mk, i64 %i.mn
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bk
  %i.mz = phi i32 [ %i.kb, %bb.bk ], [ %i.mm, %bb.bx ]
  %i.na = phi i32 [ %i.jm, %bb.bk ], [ %i.lj, %bb.bx ]
  %.0290 = phi ptr [ %i.kn, %bb.bk ], [ %i.my, %bb.bx ] ; 10 uses
  %.0289 = phi ptr [ %i.jo, %bb.bk ], [ %i.ll, %bb.bx ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.nb = icmp ne ptr %.0289, null, !nosanitize !10
  %i.nc = ptrtoint ptr %.0289 to i64, !nosanitize !10 ; 2 uses
  %i.nd = and i64 %i.nc, 3, !nosanitize !10
  %i.ne = icmp eq i64 %i.nd, 0, !nosanitize !10
  %i.nf = and i1 %i.nb, %i.ne, !nosanitize !10
  br i1 %i.nf, label %bb.ca, label %bb.bz, !prof !11, !nosanitize !10

bb.bz:                                            ; preds = %bb.by
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @555, i64 %i.nc) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.ca:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %.0289, i64 28, i1 false), !tbaa.struct !295
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.ng = icmp ne ptr %.0290, null, !nosanitize !10
  %i.nh = ptrtoint ptr %.0290 to i64, !nosanitize !10 ; 2 uses
  %i.ni = and i64 %i.nh, 3, !nosanitize !10
  %i.nj = icmp eq i64 %i.ni, 0, !nosanitize !10
  %i.nk = and i1 %i.ng, %i.nj, !nosanitize !10
  br i1 %i.nk, label %bb.cc, label %bb.cb, !prof !11, !nosanitize !10

bb.cb:                                            ; preds = %bb.ca
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @556, i64 %i.nh) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %.0290, i64 28, i1 false), !tbaa.struct !295
  %i.nl = getelementptr inbounds nuw i8, ptr %.0289, i64 212
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !293
  %i.nn = and i32 %i.nm, 64
  %.not = icmp eq i32 %i.nn, 0
  br i1 %.not, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.no = getelementptr inbounds nuw i8, ptr %.0290, i64 212
  %i.np = load i32, ptr %i.no, align 4, !tbaa !293
  %i.nq = and i32 %i.np, 64
  %i.nr = icmp ne i32 %i.nq, 0
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %i.ns = phi i1 [ true, %bb.cc ], [ %i.nr, %bb.cd ] ; 2 uses
  %spec.select = select i1 %i.ja, i32 -1, i32 %i.na
  %i.nt = getelementptr inbounds nuw i8, ptr %i.er, i64 60
  store i32 %spec.select, ptr %i.nt, align 4, !tbaa !265
  %i.nu = select i1 %i.jg, i32 -1, i32 %i.mz
  %i.nv = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  store i32 %i.nu, ptr %i.nv, align 8, !tbaa !266
  %i.nw = select i1 %.not337, i1 %i.bd, i1 false
  %i.nx = select i1 %i.nw, float %i.bc, float %i.az ; 3 uses
  br i1 %i.ns, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ny = and i32 %i.ji, 4194304
  %i.nz = icmp eq i32 %i.ny, 0
  %or.cond = select i1 %i.nz, i1 %.old2, i1 false
  br i1 %or.cond, label %bb.ch, label %.thread558

bb.cg:                                            ; preds = %bb.ce
  br i1 %.old2, label %bb.ch, label %.thread558

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %i.oa = and i32 %i.ji, 8388624
  %or.cond341.not = icmp eq i32 %i.oa, 8388624
  br i1 %or.cond341.not, label %bb.ci, label %.thread558

bb.ci:                                            ; preds = %bb.ch
  %i.ob = getelementptr inbounds nuw i8, ptr %i.er, i64 84
  %i.oc = load <2 x float>, ptr %i.bv, align 4    ; 14 uses
  %i.od = load <2 x float>, ptr %i.bw, align 4    ; 10 uses
  %i.oe = load <2 x float>, ptr %i.ob, align 4    ; 6 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.er, i64 92
  %i.og = load <2 x float>, ptr %i.of, align 4    ; 6 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %i.oc, i64 0
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.oe, i64 0
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %i.oc, i64 1 ; 3 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.oe, i64 1 ; 2 uses
  %.sroa.32.8.vec.extract.i = extractelement <2 x float> %i.od, i64 0 ; 2 uses
  %.sroa.3.8.vec.extract.i = extractelement <2 x float> %i.og, i64 0
  %i.oh = shufflevector <2 x float> %i.oc, <2 x float> %i.od, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.oi = shufflevector <2 x float> %i.oe, <2 x float> %i.og, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.oj = fmul <4 x float> %i.oh, %i.oi           ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.er, i64 100
  %i.ol = load <2 x float>, ptr %i.bx, align 4    ; 11 uses
  %i.om = load <2 x float>, ptr %i.by, align 4    ; 9 uses
  %i.on = load <2 x float>, ptr %i.ok, align 4    ; 6 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.er, i64 108
  %i.op = load <2 x float>, ptr %i.oo, align 4    ; 6 uses
  %.sroa.01.0.vec.extract.i353 = extractelement <2 x float> %i.ol, i64 0
  %.sroa.0.0.vec.extract.i354 = extractelement <2 x float> %i.on, i64 0
  %.sroa.01.4.vec.extract.i355 = extractelement <2 x float> %i.ol, i64 1 ; 3 uses
  %.sroa.0.4.vec.extract.i356 = extractelement <2 x float> %i.on, i64 1 ; 2 uses
  %.sroa.32.8.vec.extract.i357 = extractelement <2 x float> %i.om, i64 0 ; 2 uses
  %.sroa.3.8.vec.extract.i358 = extractelement <2 x float> %i.op, i64 0
  %i.oq = shufflevector <2 x float> %i.ol, <2 x float> %i.om, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.or = shufflevector <2 x float> %i.on, <2 x float> %i.op, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.os = fmul <4 x float> %i.oq, %i.or           ; 4 uses
  %i.ot = shufflevector <4 x float> %i.oj, <4 x float> %i.os, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.ou = shufflevector <4 x float> %i.oj, <4 x float> %i.os, <2 x i32> <i32 1, i32 5>
  %i.ov = fadd <2 x float> %i.ot, %i.ou
  %i.ow = shufflevector <4 x float> %i.oj, <4 x float> %i.os, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.ox = fadd <2 x float> %i.ov, %i.ow
  %i.oy = shufflevector <4 x float> %i.oj, <4 x float> %i.os, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.oz = fadd <2 x float> %i.oy, %i.ox           ; 2 uses
  %i.pa = fmul <2 x float> %i.oz, %i.oz           ; 2 uses
  %i.pb = extractelement <2 x float> %i.pa, i64 0 ; 2 uses
  %i.pc = extractelement <2 x float> %i.pa, i64 1 ; 2 uses
  %i.pd = fcmp olt float %i.pb, %i.pc
  %i.pe = select i1 %i.pd, float %i.pb, float %i.pc
  %6 = shufflevector <2 x float> %i.om, <2 x float> %i.ol, <2 x i32> <i32 0, i32 2>
  %7 = fmul <2 x float> %i.oc, %6                 ; 2 uses
  %i.pf = fmul float %.sroa.32.8.vec.extract.i, %.sroa.01.4.vec.extract.i355
  %i.pg = shufflevector <2 x float> %i.od, <2 x float> %i.oc, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ph = fmul <2 x float> %i.pg, %i.ol           ; 2 uses
  %8 = fmul float %.sroa.01.4.vec.extract.i, %.sroa.32.8.vec.extract.i357
  %i.pi = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.pj = insertelement <2 x float> %i.pi, float %i.pf, i64 0
  %i.pk = shufflevector <2 x float> %i.ph, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.pl = insertelement <2 x float> %i.pk, float %8, i64 0
  %i.pm = fsub <2 x float> %i.pj, %i.pl
  %i.pn = fsub <2 x float> %7, %i.ph
  %i.po = shufflevector <2 x float> %i.od, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.pp = fmul <2 x float> %i.po, %i.ol
  %i.pq = shufflevector <2 x float> %i.ol, <2 x float> %i.om, <2 x i32> <i32 1, i32 2>
  %i.pr = fmul <2 x float> %i.po, %i.pq
  %i.ps = fadd <2 x float> %i.pp, %i.pm
  %i.pt = fadd <2 x float> %i.pr, %i.pn
  %i.pu = shufflevector <2 x float> %i.om, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.pv = fmul <2 x float> %i.oc, %i.pu
  %i.pw = shufflevector <2 x float> %i.oc, <2 x float> %i.od, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.px = fmul <2 x float> %i.pw, %i.pu
  %i.py = fsub <2 x float> %i.ps, %i.pv           ; 3 uses
  %i.pz = fsub <2 x float> %i.pt, %i.px           ; 3 uses
  %i.qa = shufflevector <2 x float> %i.od, <2 x float> %i.oc, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.qb = shufflevector <2 x float> %i.om, <2 x float> %i.ol, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.qc = fmul <4 x float> %i.qa, %i.qb           ; 4 uses
  %shift = shufflevector <4 x float> %i.qc, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.qc, %shift
  %shift10004 = shufflevector <4 x float> %i.qc, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop10005 = fadd <4 x float> %shift10004, %foldExtExtBinop
  %shift10007 = shufflevector <4 x float> %foldExtExtBinop10005, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop10008 = fadd <4 x float> %i.qc, %shift10007 ; 2 uses
  %i.qd = extractelement <4 x float> %foldExtExtBinop10008, i64 0
  %i.qe = load <2 x float>, ptr %5, align 8       ; 2 uses
  %i.qf = load <2 x float>, ptr %.sroa.4536.0..sroa_idx, align 4 ; 2 uses
  %i.qg = load <2 x float>, ptr %4, align 8       ; 2 uses
  %i.qh = load <2 x float>, ptr %.sroa.4529.0..sroa_idx, align 4 ; 2 uses
  %i.qi = shufflevector <2 x float> %i.qf, <2 x float> %i.qe, <2 x i32> <i32 1, i32 2>
  %i.qj = shufflevector <2 x float> %i.qh, <2 x float> %i.qg, <2 x i32> <i32 1, i32 2>
  %i.qk = fsub <2 x float> %i.qi, %i.qj           ; 4 uses
  %i.ql = fsub <2 x float> %i.qe, %i.qg           ; 4 uses
  %i.qm = fsub <2 x float> %i.qf, %i.qh
  %i.qn = fmul <2 x float> %i.pw, %i.qk
  %i.qo = shufflevector <2 x float> %i.ql, <2 x float> %i.qk, <2 x i32> <i32 1, i32 2>
  %i.qp = fmul <2 x float> %i.pg, %i.qo
  %i.qq = fmul <2 x float> %i.pg, %i.ql
  %i.qr = fmul <2 x float> %i.oc, %i.qk
  %i.qs = fsub <2 x float> %i.qn, %i.qp
  %i.qt = fsub <2 x float> %i.qq, %i.qr
  %i.qu = fmul <2 x float> %i.po, %i.ql
  %i.qv = fmul <2 x float> %i.po, %i.qm
  %i.qw = fsub <2 x float> %i.qs, %i.qu           ; 2 uses
  %i.qx = fsub <2 x float> %i.qt, %i.qv           ; 2 uses
  %foldExtExtBinop10010 = fmul <2 x float> %i.od, %i.qw
  %shift10012 = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop10013 = fmul <2 x float> %i.oc, %shift10012
  %foldExtExtBinop10015 = fsub <2 x float> %foldExtExtBinop10010, %foldExtExtBinop10013
  %i.qy = extractelement <2 x float> %foldExtExtBinop10015, i64 0
  %i.qz = fmul <2 x float> %i.oc, %i.qx
  %i.ra = fmul <2 x float> %i.pw, %i.qw
  %i.rb = fsub <2 x float> %i.qz, %i.ra
  %i.rc = fmul <2 x float> %i.rb, splat (float 2.000000e+00)
  %i.rd = fmul float %i.qy, 2.000000e+00
  %i.re = extractelement <2 x float> %i.ql, i64 1
  %i.rf = fadd float %i.re, %i.rd
  %i.rg = fadd <2 x float> %i.qk, %i.rc
  %i.rh = getelementptr inbounds nuw i8, ptr %i.er, i64 116
  %.sroa.0145.0.copyload = load <2 x float>, ptr %i.rh, align 4 ; 2 uses
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 124
  %.sroa.4146.0.copyload = load float, ptr %.sroa.4146.0..sroa_idx, align 4, !tbaa !144
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 128
  %.sroa.5147.0.copyload = load <2 x float>, ptr %.sroa.5147.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 136
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  br i1 %i.ja, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ri = getelementptr inbounds nuw i8, ptr %.0289, i64 184
  %.sroa.0141.0.copyload142 = load <2 x float>, ptr %i.ri, align 4
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0289, i64 192
  %.sroa.5143.0.copyload144 = load float, ptr %.sroa.5143.0..sroa_idx, align 4, !tbaa !144
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.sroa.0141.0 = phi <2 x float> [ %.sroa.0141.0.copyload142, %bb.cj ], [ zeroinitializer, %bb.ci ] ; 3 uses
  %.sroa.5143.0 = phi float [ %.sroa.5143.0.copyload144, %bb.cj ], [ 0.000000e+00, %bb.ci ] ; 2 uses
  br i1 %i.jg, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.rj = getelementptr inbounds nuw i8, ptr %.0290, i64 184
  %.sroa.0138.0.copyload139 = load <2 x float>, ptr %i.rj, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0290, i64 192
  %.sroa.5.0.copyload140 = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !144
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %.sroa.0138.0 = phi <2 x float> [ %.sroa.0138.0.copyload139, %bb.cl ], [ zeroinitializer, %bb.ck ] ; 3 uses
  %.sroa.5.0 = phi float [ %.sroa.5.0.copyload140, %bb.cl ], [ 0.000000e+00, %bb.ck ] ; 2 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.0145.0.copyload, i64 1
  %i.rk = fsub float %.sroa.03.4.vec.extract.i, %i.rf ; 2 uses
  %i.rl = fmul float %i.rk, %i.rk
  %i.rm = shufflevector <2 x float> %.sroa.0145.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.rn = insertelement <2 x float> %i.rm, float %.sroa.4146.0.copyload, i64 0
  %i.ro = fsub <2 x float> %i.rn, %i.rg           ; 2 uses
  %i.rp = fmul <2 x float> %i.ro, %i.ro           ; 2 uses
  %i.rq = extractelement <2 x float> %i.rp, i64 1
  %i.rr = fadd float %i.rq, %i.rl
  %i.rs = extractelement <2 x float> %i.rp, i64 0
  %i.rt = fadd float %i.rs, %i.rr                 ; 2 uses
  %i.ru = fcmp ogt float %i.pe, f0x3F7E0E2E
  %i.rv = fmul float %i.nx, %i.nx
  %i.rw = fcmp olt float %i.rt, %i.rv
  %or.cond343 = select i1 %i.ru, i1 %i.rw, i1 false
  br i1 %or.cond343, label %bb.cn, label %.thread558

bb.cn:                                            ; preds = %bb.cm
  %sqrt = tail call float @llvm.sqrt.f32(float %i.rt)
  %i.rx = fsub float %i.nx, %sqrt                 ; 2 uses
  %i.ry = shufflevector <2 x float> %.sroa.5147.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rz = fcmp ogt float %.sroa.5143.0, %.sroa.5.0
  %i.sa = fcmp ogt <2 x float> %.sroa.0141.0, %.sroa.0138.0 ; 2 uses
  %i.sb = shufflevector <2 x i1> %i.sa, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %i.sc = insertelement <2 x i1> %i.sb, i1 %i.rz, i64 1
  %i.sd = shufflevector <2 x float> %.sroa.0141.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.se = insertelement <2 x float> %i.sd, float %.sroa.5143.0, i64 1
  %i.sf = shufflevector <2 x float> %.sroa.0138.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.sg = insertelement <2 x float> %i.sf, float %.sroa.5.0, i64 1
  %i.sh = select <2 x i1> %i.sc, <2 x float> %i.se, <2 x float> %i.sg ; 2 uses
  %i.si = select <2 x i1> %i.sa, <2 x float> %.sroa.0141.0, <2 x float> %.sroa.0138.0 ; 2 uses
  %i.sj = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.5147.0.copyload, <2 x i32> <i32 0, i32 2>
  %9 = fmul <2 x float> %i.pz, %i.sj
  %i.sk = fmul <2 x float> %i.py, %i.ry           ; 2 uses
  %i.sl = shufflevector <2 x float> %i.pz, <2 x float> %i.py, <2 x i32> <i32 1, i32 2>
  %i.sm = shufflevector <2 x float> %.sroa.5147.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.sn = fmul <2 x float> %i.sl, %i.sm
  %i.so = fsub <2 x float> %9, %i.sn
  %shift10017 = shufflevector <2 x float> %i.sk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop10018 = fsub <2 x float> %i.sk, %shift10017
  %i.sp = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.sq = fmul <2 x float> %i.py, %i.sp
  %i.sr = fadd <2 x float> %i.sq, %i.so
  %i.ss = shufflevector <4 x float> %foldExtExtBinop10008, <4 x float> poison, <2 x i32> zeroinitializer
  %i.st = fmul <2 x float> %i.ss, %.sroa.5147.0.copyload
  %i.su = insertelement <2 x float> %i.pz, float %i.qd, i64 0
  %i.sv = fmul <2 x float> %i.su, %.sroa.6.0.copyload ; 2 uses
  %shift10020 = shufflevector <2 x float> %i.sv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop10021 = fadd <2 x float> %foldExtExtBinop10018, %shift10020
  %10 = fsub <2 x float> %i.sr, %i.st             ; 3 uses
  %foldExtExtBinop10023 = fsub <2 x float> %foldExtExtBinop10021, %i.sv
  %i.sw = extractelement <2 x float> %foldExtExtBinop10023, i64 0 ; 3 uses
  %i.sx = fcmp olt <2 x float> %10, zeroinitializer
  %i.sy = fneg <2 x float> %10
  %11 = fcmp olt float %i.sw, 0.000000e+00
  %12 = fneg float %i.sw
  %13 = select <2 x i1> %i.sx, <2 x float> %i.sy, <2 x float> %10 ; 3 uses
  %i.sz = select i1 %11, float %12, float %i.sw   ; 2 uses
  %i.ta = extractelement <2 x float> %i.si, i64 0
  %i.tb = fmul float %i.sz, %i.ta
  %shift10025 = shufflevector <2 x float> %i.sh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop10026 = fmul <2 x float> %13, %shift10025
  %i.tc = extractelement <2 x float> %foldExtExtBinop10026, i64 0
  %i.td = fadd float %i.tb, %i.tc                 ; 2 uses
  %i.te = fmul <2 x float> %13, %i.sh
  %i.tf = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.tg = insertelement <2 x float> %i.tf, float %i.sz, i64 1
  %i.th = fmul <2 x float> %i.tg, %i.si
  %i.ti = fadd <2 x float> %i.te, %i.th           ; 2 uses
  %i.tj = fmul float %i.td, %i.td
  %i.tk = fmul <2 x float> %i.ti, %i.ti           ; 2 uses
  %i.tl = extractelement <2 x float> %i.tk, i64 1
  %i.tm = fadd float %i.tl, %i.tj
  %i.tn = extractelement <2 x float> %i.tk, i64 0
  %i.to = fadd float %i.tn, %i.tm
  %i.tp = fmul float %i.to, 4.000000e+00
  %i.tq = fmul float %i.rx, %i.rx
  %i.tr = fcmp uge float %i.tp, %i.tq
  br i1 %i.tr, label %.thread558, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ts = shufflevector <2 x float> %i.oe, <2 x float> %i.on, <2 x i32> <i32 1, i32 3>
  %i.tt = fneg <2 x float> %i.ts
  %i.tu = fmul float %.sroa.32.8.vec.extract.i, %.sroa.0.4.vec.extract.i
  %i.tv = fmul float %.sroa.01.4.vec.extract.i, %.sroa.3.8.vec.extract.i
  %foldExtExtBinop10028 = fmul <2 x float> %i.oc, %i.og
  %foldExtExtBinop10030 = fmul <2 x float> %i.od, %i.oe
  %i.tw = fmul float %.sroa.01.4.vec.extract.i, %.sroa.0.0.vec.extract.i
  %i.tx = fmul float %.sroa.01.0.vec.extract.i, %.sroa.0.4.vec.extract.i
  %i.ty = fmul <2 x float> %i.po, %i.oe
  %i.tz = shufflevector <2 x float> %i.og, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ua = fmul <2 x float> %i.oc, %i.tz
  %shift10035 = shufflevector <2 x float> %i.og, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop10036 = fmul <2 x float> %i.od, %shift10035
  %i.ub = shufflevector <2 x float> %foldExtExtBinop10036, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.uc = fmul float %.sroa.32.8.vec.extract.i357, %.sroa.0.4.vec.extract.i356
  %i.ud = fmul float %.sroa.01.4.vec.extract.i355, %.sroa.3.8.vec.extract.i358
  %foldExtExtBinop10038 = fmul <2 x float> %i.ol, %i.op
  %foldExtExtBinop10040 = fmul <2 x float> %i.om, %i.on
  %i.ue = fmul float %.sroa.01.4.vec.extract.i355, %.sroa.0.0.vec.extract.i354
  %i.uf = fmul float %.sroa.01.0.vec.extract.i353, %.sroa.0.4.vec.extract.i356
  %i.ug = fmul <2 x float> %i.pu, %i.on
  %i.uh = shufflevector <2 x float> %i.op, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ui = fmul <2 x float> %i.ol, %i.uh
  %shift10045 = shufflevector <2 x float> %i.op, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop10046 = fmul <2 x float> %i.om, %shift10045
  %i.uj = shufflevector <2 x float> %foldExtExtBinop10046, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.uk = insertelement <2 x float> poison, float %i.tu, i64 0
  %i.ul = shufflevector <2 x float> %i.uk, <2 x float> %foldExtExtBinop10028, <2 x i32> <i32 0, i32 2>
  %i.um = insertelement <2 x float> poison, float %i.tv, i64 0
  %i.un = shufflevector <2 x float> %i.um, <2 x float> %foldExtExtBinop10030, <2 x i32> <i32 0, i32 2>
  %i.uo = fsub <2 x float> %i.ul, %i.un
  %i.up = fsub <2 x float> %i.uo, %i.ty
  %i.uq = insertelement <2 x float> poison, float %i.uc, i64 0
  %i.ur = shufflevector <2 x float> %i.uq, <2 x float> %foldExtExtBinop10038, <2 x i32> <i32 0, i32 2>
  %i.us = insertelement <2 x float> poison, float %i.ud, i64 0
  %i.ut = shufflevector <2 x float> %i.us, <2 x float> %foldExtExtBinop10040, <2 x i32> <i32 0, i32 2>
  %i.uu = fsub <2 x float> %i.ur, %i.ut
  %14 = fadd <2 x float> %i.ua, %i.up             ; 7 uses
  %i.uv = fsub <2 x float> %i.uu, %i.ug
  %i.uw = fadd <2 x float> %i.ui, %i.uv           ; 7 uses
  %15 = fmul <2 x float> %14, %14
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %shift10048 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop10049.a = fmul <2 x float> %14, %shift10048
  %17 = extractelement <2 x float> %foldExtExtBinop10049.a, i64 0 ; 2 uses
  %i.ux = extractelement <2 x float> %i.uw, i64 0
  %shift10051 = shufflevector <2 x float> %i.uw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop10052 = fmul <2 x float> %i.uw, %shift10051
  %i.uy = extractelement <2 x float> %foldExtExtBinop10052, i64 0 ; 2 uses
  %i.uz = fmul <2 x float> %i.uw, %i.uw
  %i.va = shufflevector <2 x float> %i.uz, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %18 = insertelement <2 x float> poison, float %i.tw, i64 0
  %19 = insertelement <2 x float> %18, float %i.ue, i64 1
  %20 = insertelement <2 x float> poison, float %i.tx, i64 0
  %21 = insertelement <2 x float> %20, float %i.uf, i64 1
  %22 = fsub <2 x float> %19, %21
  %23 = shufflevector <2 x float> %16, <2 x float> %i.va, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %24 = shufflevector <4 x float> %i.ub, <4 x float> %23, <4 x i32> <i32 0, i32 poison, i32 6, i32 7>
  %25 = shufflevector <4 x float> %24, <4 x float> %i.uj, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %26 = shufflevector <2 x float> %16, <2 x float> %i.va, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %27 = shufflevector <2 x float> %22, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %28 = shufflevector <2 x float> %i.od, <2 x float> %i.om, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %29 = shufflevector <2 x float> %i.og, <2 x float> %i.op, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %30 = fmul <4 x float> %28, %29
  %31 = fsub <4 x float> %27, %30
  %32 = shufflevector <4 x float> %31, <4 x float> %26, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.vb = fadd <4 x float> %25, %32               ; 6 uses
  %i.vc = shufflevector <4 x float> %i.vb, <4 x float> poison, <2 x i32> zeroinitializer
  %i.vd = fmul <2 x float> %i.vc, %14             ; 4 uses
  %33 = extractelement <4 x float> %i.vb, i64 0
  %i.ve = extractelement <4 x float> %i.vb, i64 1
  %34 = shufflevector <4 x float> %i.vb, <4 x float> <float poison, float poison, float 2.000000e+00, float 2.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.vf = fmul <4 x float> %i.vb, %34             ; 4 uses
  %i.vg = shufflevector <4 x float> %i.vf, <4 x float> poison, <2 x i32> zeroinitializer
  %i.vh = fadd <2 x float> %i.vg, %16
  %i.vi = fmul <2 x float> %i.vh, splat (float 2.000000e+00)
  %i.vj = fsub <2 x float> splat (float 1.000000e+00), %i.vi ; 5 uses
  %i.vk = extractelement <4 x float> %i.vf, i64 2
  %i.vl = fsub float 1.000000e+00, %i.vk          ; 5 uses
  %35 = shufflevector <4 x float> %i.vb, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.vm = fmul <2 x float> %35, %i.uw             ; 4 uses
  %36 = shufflevector <4 x float> %i.vf, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.vn = fadd <2 x float> %36, %i.va
  %i.vo = fmul <2 x float> %i.vn, splat (float 2.000000e+00)
  %i.vp = shufflevector <2 x float> %i.oc, <2 x float> %i.ol, <2 x i32> <i32 1, i32 3>
  %i.vq = fmul <2 x float> %i.vp, %i.tt
  %i.vr = fsub <2 x float> %i.vq, %i.ot
  %i.vs = fsub <2 x float> %i.vr, %i.ow
  %i.vt = fsub <2 x float> %i.oy, %i.vs           ; 4 uses
  %i.vu = extractelement <2 x float> %i.vt, i64 0
  %foldExtExtBinop10054 = fmul <2 x float> %i.vt, %14 ; 2 uses
  %i.vv = shufflevector <2 x float> %14, <2 x float> %i.uw, <2 x i32> <i32 1, i32 3>
  %i.vw = fmul <2 x float> %i.vt, %i.vv           ; 3 uses
  %i.vx = shufflevector <2 x float> %i.vw, <2 x float> %foldExtExtBinop10054, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.vy = extractelement <2 x float> %i.vt, i64 1 ; 2 uses
  %i.vz = fmul float %i.vy, %i.ux                 ; 2 uses
  %i.wa = shufflevector <2 x float> %i.vw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wb = insertelement <2 x float> %i.wa, float %i.vz, i64 1 ; 2 uses
  %37 = fmul float %33, %i.vu                     ; 2 uses
  %i.wc = fmul float %i.ve, %i.vy                 ; 2 uses
  %i.wd = fadd float %37, %17
  %38 = fsub float %17, %37
  %i.we = shufflevector <2 x float> %i.vd, <2 x float> %i.vm, <2 x i32> <i32 0, i32 2>
  %i.wf = fsub <2 x float> %i.we, %i.vw           ; 2 uses
  %i.wg = extractelement <2 x float> %i.wf, i64 0
  %i.wh = fmul float %i.wg, 2.000000e+00          ; 5 uses
  %i.wi = insertelement <2 x float> poison, float %38, i64 0
  %i.wj = insertelement <2 x float> %i.wi, float %i.wd, i64 1
  %i.wk = fmul <2 x float> %i.wj, splat (float 2.000000e+00) ; 5 uses
  %shift10056 = shufflevector <2 x float> %i.vd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop10057 = fadd <2 x float> %shift10056, %foldExtExtBinop10054
  %i.wl = extractelement <2 x float> %foldExtExtBinop10057, i64 0
  %i.wm = fmul float %i.wl, 2.000000e+00          ; 5 uses
  %i.wn = fadd <2 x float> %i.vd, %i.vx
  %i.wo = fsub <2 x float> %i.vd, %i.vx
  %i.wp = shufflevector <2 x float> %i.wn, <2 x float> %i.wo, <2 x i32> <i32 0, i32 3>
  %i.wq = fmul <2 x float> %i.wp, splat (float 2.000000e+00) ; 5 uses
  %39 = fadd float %i.wc, %i.uy
  %40 = fsub float %i.uy, %i.wc
  %i.wr = extractelement <2 x float> %i.wf, i64 1
  %i.ws = fmul float %i.wr, 2.000000e+00          ; 5 uses
  %i.wt = insertelement <2 x float> poison, float %40, i64 0
  %i.wu = insertelement <2 x float> %i.wt, float %39, i64 1
  %i.wv = fmul <2 x float> %i.wu, splat (float 2.000000e+00) ; 5 uses
  %i.ww = fsub <2 x float> splat (float 1.000000e+00), %i.vo ; 5 uses
  %i.wx = extractelement <2 x float> %i.vm, i64 1
  %i.wy = fadd float %i.wx, %i.vz
  %i.wz = fmul float %i.wy, 2.000000e+00          ; 5 uses
  %i.xa = fadd <2 x float> %i.vm, %i.wb
  %i.xb = fsub <2 x float> %i.vm, %i.wb
  %i.xc = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <2 x i32> <i32 0, i32 3>
  %i.xd = fmul <2 x float> %i.xc, splat (float 2.000000e+00) ; 5 uses
  %i.xe = extractelement <4 x float> %i.vf, i64 3
  %i.xf = fsub float 1.000000e+00, %i.xe          ; 5 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.0290, i64 28
  %i.xh = getelementptr inbounds nuw i8, ptr %.0289, i64 28
  %.sroa.084.0.copyload = load <2 x float>, ptr %i.xg, align 4 ; 2 uses
  %.sroa.285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0290, i64 36
  %.sroa.285.0.copyload = load float, ptr %.sroa.285.0..sroa_idx, align 4
  %.sroa.082.0.copyload = load <2 x float>, ptr %i.xh, align 4 ; 2 uses
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0289, i64 36
  %.sroa.283.0.copyload = load float, ptr %.sroa.283.0..sroa_idx, align 4
  %foldExtExtBinop10059 = fsub <2 x float> %.sroa.084.0.copyload, %.sroa.082.0.copyload ; 5 uses
  %foldExtExtBinop10061 = fsub <2 x float> %.sroa.084.0.copyload, %.sroa.082.0.copyload ; 5 uses
  %i.xi = fsub float %.sroa.285.0.copyload, %.sroa.283.0.copyload ; 5 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.er, i64 80
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !281 ; 3 uses
  %i.xl = icmp sgt i32 %i.xk, 0                   ; 2 uses
  br i1 %i.xl, label %.lr.ph3687.split, label %._crit_edge3688

.lr.ph3687.split:                                 ; preds = %bb.co
  %i.xm = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !282
  %.fr3794 = freeze ptr %i.xn                     ; 3 uses
  %i.xo = ptrtoint ptr %.fr3794 to i64, !nosanitize !10 ; 3 uses
  %.not3795 = icmp eq ptr %.fr3794, null, !nosanitize !10
  br i1 %.not3795, label %.split3691, label %.lr.ph3687.split.split.preheader, !prof !78

.lr.ph3687.split.split.preheader:                 ; preds = %.lr.ph3687.split
  %wide.trip.count6587 = zext nneg i32 %i.xk to i64
  br label %.lr.ph3687.split.split

._crit_edge3688:                                  ; preds = %._crit_edge, %bb.co
  br i1 %i.br, label %bb.dc, label %bb.db, !prof !11, !nosanitize !10

.lr.ph3687.split.split:                           ; preds = %.lr.ph3687.split.split.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph3687.split.split.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.xp = getelementptr inbounds nuw [268 x i8], ptr %.fr3794, i64 %indvars.iv ; 41 uses
  %i.xq = mul nuw nsw i64 %indvars.iv, 268
  %i.xr = add i64 %i.xq, %i.xo, !nosanitize !10   ; 2 uses
  %.not3796 = icmp ult i64 %i.xr, %i.xo, !nosanitize !10
  br i1 %.not3796, label %.split.us, label %bb.cp, !prof !78, !nosanitize !10

.split.us:                                        ; preds = %.lr.ph3687.split.split
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @557, i64 %i.xo, i64 %i.xr) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.cp:                                            ; preds = %.lr.ph3687.split.split
  %i.xs = ptrtoint ptr %i.xp to i64, !nosanitize !10 ; 4 uses
  %i.xt = and i64 %i.xs, 3, !nosanitize !10
  %i.xu = icmp eq i64 %i.xt, 0, !nosanitize !10
  br i1 %i.xu, label %bb.cq, label %.split3691, !prof !11, !nosanitize !10

.split3691:                                       ; preds = %.lr.ph3687.split, %bb.cp
  %.us-phi3692 = phi i64 [ %i.xs, %bb.cp ], [ 0, %.lr.ph3687.split ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @559, i64 %.us-phi3692) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.cq:                                            ; preds = %bb.cp
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xp, i64 224
  %.sroa.068.0.copyload = load <2 x float>, ptr %i.xv, align 4 ; 14 uses
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xp, i64 232
  %.sroa.469.0.copyload = load float, ptr %.sroa.469.0..sroa_idx, align 4, !tbaa !144 ; 7 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xp, i64 264
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !284 ; 6 uses
  %i.xy = icmp sgt i32 %i.xx, 0
  br i1 %i.xy, label %bb.cs, label %._crit_edge

bb.cr:                                            ; preds = %bb.da
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @561, i64 5) #15, !nosanitize !10
  unreachable, !nosanitize !10

split:                                            ; preds = %bb.ct, %bb.cv, %bb.cx, %bb.cz
  %.sink = phi i64 [ 112, %bb.cv ], [ 168, %bb.cx ], [ 224, %bb.cz ], [ 56, %bb.ct ]
  %i.xz = add i64 %.sink, %i.xs, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @562, i64 %i.xs, i64 %i.xz) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.cs:                                            ; preds = %bb.cq
  %i.ya = shufflevector <2 x float> %.sroa.068.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i468 = extractelement <2 x float> %.sroa.068.0.copyload, i64 0
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xp, i64 28
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xp, i64 24
  %i.yd = load float, ptr %i.yb, align 4, !tbaa !689
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xp, i64 12
  %.sroa.047.0.copyload = load <2 x float>, ptr %i.ye, align 4 ; 4 uses
  %i.yf = shufflevector <2 x float> %.sroa.047.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i445 = extractelement <2 x float> %.sroa.047.0.copyload, i64 0
  %i.yg = fmul float %i.ws, %.sroa.0.0.vec.extract.i445
  %i.yh = extractelement <2 x float> %.sroa.047.0.copyload, i64 1
  %i.yi = fmul float %i.wz, %i.yh
  %i.yj = fadd float %i.yg, %i.yi
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xp, i64 20
  %.sroa.248.0.copyload = load float, ptr %.sroa.248.0..sroa_idx, align 4 ; 2 uses
  %i.yk = fmul float %i.xf, %.sroa.248.0.copyload
  %i.yl = fadd float %i.yk, %i.yj
  %.sroa.055.0.copyload = load <2 x float>, ptr %i.xp, align 4 ; 4 uses
  %i.ym = shufflevector <2 x float> %.sroa.055.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i439 = extractelement <2 x float> %.sroa.055.0.copyload, i64 0
  %i.yn = fmul float %i.wh, %.sroa.0.0.vec.extract.i439
  %i.yo = extractelement <2 x float> %.sroa.055.0.copyload, i64 1
  %i.yp = fmul float %i.wm, %i.yo
  %i.yq = fadd float %i.yn, %i.yp
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %.sroa.256.0.copyload = load float, ptr %.sroa.256.0..sroa_idx, align 4 ; 2 uses
  %i.yr = fmul float %i.vl, %.sroa.256.0.copyload
  %i.ys = fadd float %i.yr, %i.yq
  %i.yt = fsub float %i.yl, %i.ys
  %i.yu = fadd float %i.xi, %i.yt
  %i.yv = fmul float %.sroa.469.0.copyload, %i.yu
  %i.yw = fmul <2 x float> %i.wv, %i.yf
  %i.yx = fmul <2 x float> %i.ww, %.sroa.047.0.copyload
  %i.yy = fadd <2 x float> %i.yw, %i.yx
  %i.yz = insertelement <2 x float> poison, float %.sroa.248.0.copyload, i64 0
  %i.za = shufflevector <2 x float> %i.yz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zb = fmul <2 x float> %i.xd, %i.za
  %i.zc = fadd <2 x float> %i.zb, %i.yy
  %i.zd = fmul <2 x float> %i.wk, %i.ym
  %i.ze = fmul <2 x float> %i.vj, %.sroa.055.0.copyload
  %i.zf = fadd <2 x float> %i.zd, %i.ze
  %i.zg = insertelement <2 x float> poison, float %.sroa.256.0.copyload, i64 0
  %i.zh = shufflevector <2 x float> %i.zg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zi = fmul <2 x float> %i.wq, %i.zh
  %i.zj = fadd <2 x float> %i.zi, %i.zf
  %i.zk = fsub <2 x float> %i.zc, %i.zj           ; 2 uses
  %foldExtExtBinop10063 = fadd <2 x float> %foldExtExtBinop10059, %i.zk
  %foldExtExtBinop10065 = fmul <2 x float> %.sroa.068.0.copyload, %foldExtExtBinop10063
  %foldExtExtBinop10067 = fadd <2 x float> %foldExtExtBinop10061, %i.zk
  %i.zl = extractelement <2 x float> %.sroa.068.0.copyload, i64 1
  %foldExtExtBinop10069 = fmul <2 x float> %.sroa.068.0.copyload, %foldExtExtBinop10067
  %shift10071 = shufflevector <2 x float> %foldExtExtBinop10069, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop10072 = fadd <2 x float> %foldExtExtBinop10065, %shift10071
  %i.zm = extractelement <2 x float> %foldExtExtBinop10072, i64 0
  %i.zn = fadd float %i.yv, %i.zm
  %i.zo = fadd float %i.yd, %i.zn
  store float %i.zo, ptr %i.yc, align 4, !tbaa !286
  %i.zp = getelementptr inbounds nuw i8, ptr %i.xp, i64 52
  store i8 1, ptr %i.zp, align 4, !tbaa !287
  %exitcond6585.not = icmp eq i32 %i.xx, 1
  br i1 %exitcond6585.not, label %._crit_edge, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.not339.1 = icmp ugt ptr %i.xp, inttoptr (i64 -57 to ptr)
  br i1 %.not339.1, label %split, label %bb.cu, !prof !78, !nosanitize !10

bb.cu:                                            ; preds = %bb.ct
  %i.zq = getelementptr inbounds nuw i8, ptr %i.xp, i64 56
  %i.zr = getelementptr inbounds nuw i8, ptr %i.xp, i64 84
  %i.zs = getelementptr inbounds nuw i8, ptr %i.xp, i64 80
  %i.zt = load float, ptr %i.zr, align 4, !tbaa !689
  %i.zu = getelementptr inbounds nuw i8, ptr %i.xp, i64 68
  %.sroa.047.0.copyload.1 = load <2 x float>, ptr %i.zu, align 4 ; 4 uses
  %i.zv = shufflevector <2 x float> %.sroa.047.0.copyload.1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i445.1 = extractelement <2 x float> %.sroa.047.0.copyload.1, i64 0
  %i.zw = fmul float %i.ws, %.sroa.0.0.vec.extract.i445.1
  %i.zx = extractelement <2 x float> %.sroa.047.0.copyload.1, i64 1
  %i.zy = fmul float %i.wz, %i.zx
  %i.zz = fadd float %i.zw, %i.zy
  %.sroa.248.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.xp, i64 76
  %.sroa.248.0.copyload.1 = load float, ptr %.sroa.248.0..sroa_idx.1, align 4 ; 2 uses
  %i.aaa = fmul float %i.xf, %.sroa.248.0.copyload.1
  %i.aab = fadd float %i.aaa, %i.zz
  %.sroa.055.0.copyload.1 = load <2 x float>, ptr %i.zq, align 4 ; 4 uses
  %i.aac = shufflevector <2 x float> %.sroa.055.0.copyload.1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i439.1 = extractelement <2 x float> %.sroa.055.0.copyload.1, i64 0
  %i.aad = fmul float %i.wh, %.sroa.0.0.vec.extract.i439.1
  %i.aae = extractelement <2 x float> %.sroa.055.0.copyload.1, i64 1
  %i.aaf = fmul float %i.wm, %i.aae
  %i.aag = fadd float %i.aad, %i.aaf
  %.sroa.256.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.xp, i64 64
  %.sroa.256.0.copyload.1 = load float, ptr %.sroa.256.0..sroa_idx.1, align 4 ; 2 uses
  %i.aah = fmul float %i.vl, %.sroa.256.0.copyload.1
  %i.aai = fadd float %i.aah, %i.aag
  %i.aaj = fsub float %i.aab, %i.aai
  %i.aak = fadd float %i.xi, %i.aaj
  %i.aal = fmul float %.sroa.469.0.copyload, %i.aak
  %i.aam = fmul <2 x float> %i.wv, %i.zv
  %i.aan = fmul <2 x float> %i.ww, %.sroa.047.0.copyload.1
  %i.aao = fadd <2 x float> %i.aam, %i.aan
  %i.aap = insertelement <2 x float> poison, float %.sroa.248.0.copyload.1, i64 0
  %i.aaq = shufflevector <2 x float> %i.aap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aar = fmul <2 x float> %i.xd, %i.aaq
  %i.aas = fadd <2 x float> %i.aar, %i.aao
  %i.aat = fmul <2 x float> %i.wk, %i.aac
  %i.aau = fmul <2 x float> %i.vj, %.sroa.055.0.copyload.1
  %i.aav = fadd <2 x float> %i.aat, %i.aau
  %i.aaw = insertelement <2 x float> poison, float %.sroa.256.0.copyload.1, i64 0
  %i.aax = shufflevector <2 x float> %i.aaw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aay = fmul <2 x float> %i.wq, %i.aax
  %i.aaz = fadd <2 x float> %i.aay, %i.aav
  %i.aba = fsub <2 x float> %i.aas, %i.aaz        ; 2 uses
  %foldExtExtBinop10074 = fadd <2 x float> %foldExtExtBinop10059, %i.aba
  %foldExtExtBinop10076 = fmul <2 x float> %.sroa.068.0.copyload, %foldExtExtBinop10074
end_hunk_3
begin_hunk_4_@b3CollideTask:bb.a
  %i.acs = fadd float %i.abi, %i.acr
  store float %i.acs, ptr %i.abh, align 4, !tbaa !286
  %i.act = getelementptr inbounds nuw i8, ptr %i.xp, i64 164
  store i8 1, ptr %i.act, align 4, !tbaa !287
  %exitcond6585.2.not = icmp eq i32 %i.xx, 3
  br i1 %exitcond6585.2.not, label %._crit_edge, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %.not339.3 = icmp ugt ptr %i.xp, inttoptr (i64 -169 to ptr)
  br i1 %.not339.3, label %split, label %bb.cy, !prof !78, !nosanitize !10

bb.cy:                                            ; preds = %bb.cx
  %i.acu = getelementptr inbounds nuw i8, ptr %i.xp, i64 168
  %i.acv = getelementptr inbounds nuw i8, ptr %i.xp, i64 196
  %i.acw = getelementptr inbounds nuw i8, ptr %i.xp, i64 192
  %i.acx = load float, ptr %i.acv, align 4, !tbaa !689
  %i.acy = getelementptr inbounds nuw i8, ptr %i.xp, i64 180
  %.sroa.047.0.copyload.3 = load <2 x float>, ptr %i.acy, align 4 ; 4 uses
  %i.acz = shufflevector <2 x float> %.sroa.047.0.copyload.3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i445.3 = extractelement <2 x float> %.sroa.047.0.copyload.3, i64 0
  %i.ada = fmul float %i.ws, %.sroa.0.0.vec.extract.i445.3
  %i.adb = extractelement <2 x float> %.sroa.047.0.copyload.3, i64 1
  %i.adc = fmul float %i.wz, %i.adb
  %i.add = fadd float %i.ada, %i.adc
  %.sroa.248.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.xp, i64 188
  %.sroa.248.0.copyload.3 = load float, ptr %.sroa.248.0..sroa_idx.3, align 4 ; 2 uses
  %i.ade = fmul float %i.xf, %.sroa.248.0.copyload.3
  %i.adf = fadd float %i.ade, %i.add
  %.sroa.055.0.copyload.3 = load <2 x float>, ptr %i.acu, align 4 ; 4 uses
  %i.adg = shufflevector <2 x float> %.sroa.055.0.copyload.3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i439.3 = extractelement <2 x float> %.sroa.055.0.copyload.3, i64 0
  %i.adh = fmul float %i.wh, %.sroa.0.0.vec.extract.i439.3
  %i.adi = extractelement <2 x float> %.sroa.055.0.copyload.3, i64 1
  %i.adj = fmul float %i.wm, %i.adi
  %i.adk = fadd float %i.adh, %i.adj
  %.sroa.256.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.xp, i64 176
  %.sroa.256.0.copyload.3 = load float, ptr %.sroa.256.0..sroa_idx.3, align 4 ; 2 uses
  %i.adl = fmul float %i.vl, %.sroa.256.0.copyload.3
  %i.adm = fadd float %i.adl, %i.adk
  %i.adn = fsub float %i.adf, %i.adm
  %i.ado = fadd float %i.xi, %i.adn
  %i.adp = fmul float %.sroa.469.0.copyload, %i.ado
  %i.adq = fmul <2 x float> %i.wv, %i.acz
  %i.adr = fmul <2 x float> %i.ww, %.sroa.047.0.copyload.3
  %i.ads = fadd <2 x float> %i.adq, %i.adr
  %i.adt = insertelement <2 x float> poison, float %.sroa.248.0.copyload.3, i64 0
  %i.adu = shufflevector <2 x float> %i.adt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adv = fmul <2 x float> %i.xd, %i.adu
  %i.adw = fadd <2 x float> %i.adv, %i.ads
  %i.adx = fmul <2 x float> %i.wk, %i.adg
  %i.ady = fmul <2 x float> %i.vj, %.sroa.055.0.copyload.3
  %i.adz = fadd <2 x float> %i.adx, %i.ady
  %i.aea = insertelement <2 x float> poison, float %.sroa.256.0.copyload.3, i64 0
  %i.aeb = shufflevector <2 x float> %i.aea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aec = fmul <2 x float> %i.wq, %i.aeb
  %i.aed = fadd <2 x float> %i.aec, %i.adz
  %i.aee = fsub <2 x float> %i.adw, %i.aed        ; 2 uses
  %foldExtExtBinop10096 = fadd <2 x float> %foldExtExtBinop10059, %i.aee
  %foldExtExtBinop10098 = fmul <2 x float> %.sroa.068.0.copyload, %foldExtExtBinop10096
  %foldExtExtBinop10100 = fadd <2 x float> %foldExtExtBinop10061, %i.aee
  %foldExtExtBinop10102 = fmul <2 x float> %.sroa.068.0.copyload, %foldExtExtBinop10100
  %shift10104 = shufflevector <2 x float> %foldExtExtBinop10102, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop10105 = fadd <2 x float> %foldExtExtBinop10098, %shift10104
  %i.aef = extractelement <2 x float> %foldExtExtBinop10105, i64 0
  %i.aeg = fadd float %i.adp, %i.aef
  %i.aeh = fadd float %i.acx, %i.aeg
  store float %i.aeh, ptr %i.acw, align 4, !tbaa !286
  %i.aei = getelementptr inbounds nuw i8, ptr %i.xp, i64 220
  store i8 1, ptr %i.aei, align 4, !tbaa !287
  %exitcond6585.3.not = icmp eq i32 %i.xx, 4
  br i1 %exitcond6585.3.not, label %._crit_edge, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %.not339.4 = icmp ugt ptr %i.xp, inttoptr (i64 -225 to ptr)
  br i1 %.not339.4, label %split, label %bb.da, !prof !78, !nosanitize !10

bb.da:                                            ; preds = %bb.cz
  %i.aej = getelementptr inbounds nuw i8, ptr %i.xp, i64 252
  %i.aek = getelementptr inbounds nuw i8, ptr %i.xp, i64 248
  %i.ael = load float, ptr %i.aej, align 4, !tbaa !689
  %i.aem = getelementptr inbounds nuw i8, ptr %i.xp, i64 236
  %.sroa.047.0.copyload.4 = load <2 x float>, ptr %i.aem, align 4 ; 4 uses
  %i.aen = shufflevector <2 x float> %.sroa.047.0.copyload.4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i445.4 = extractelement <2 x float> %.sroa.047.0.copyload.4, i64 0
  %i.aeo = fmul float %i.ws, %.sroa.0.0.vec.extract.i445.4
  %i.aep = extractelement <2 x float> %.sroa.047.0.copyload.4, i64 1
  %i.aeq = fmul float %i.wz, %i.aep
  %i.aer = fadd float %i.aeo, %i.aeq
  %.sroa.248.0..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %i.xp, i64 244
  %.sroa.248.0.copyload.4 = load float, ptr %.sroa.248.0..sroa_idx.4, align 4 ; 2 uses
  %i.aes = fmul float %i.xf, %.sroa.248.0.copyload.4
  %i.aet = fadd float %i.aes, %i.aer
  %i.aeu = fmul float %i.wh, %.sroa.0.0.vec.extract.i468
  %i.aev = fmul float %i.wm, %i.zl
  %i.aew = fadd float %i.aeu, %i.aev
  %i.aex = fmul float %i.vl, %.sroa.469.0.copyload
  %i.aey = fadd float %i.aex, %i.aew
  %i.aez = fsub float %i.aet, %i.aey
  %i.afa = fadd float %i.xi, %i.aez
  %i.afb = fmul float %.sroa.469.0.copyload, %i.afa
  %i.afc = fmul <2 x float> %i.vj, %.sroa.068.0.copyload
  %i.afd = fmul <2 x float> %i.wk, %i.ya
  %i.afe = insertelement <2 x float> poison, float %.sroa.469.0.copyload, i64 0
  %i.aff = shufflevector <2 x float> %i.afe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afg = fmul <2 x float> %i.wq, %i.aff
  %i.afh = fmul <2 x float> %i.wv, %i.aen
  %i.afi = fmul <2 x float> %i.ww, %.sroa.047.0.copyload.4
  %i.afj = fadd <2 x float> %i.afh, %i.afi
  %i.afk = insertelement <2 x float> poison, float %.sroa.248.0.copyload.4, i64 0
  %i.afl = shufflevector <2 x float> %i.afk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afm = fmul <2 x float> %i.xd, %i.afl
  %i.afn = fadd <2 x float> %i.afm, %i.afj
  %i.afo = fadd <2 x float> %i.afd, %i.afc
  %i.afp = fadd <2 x float> %i.afg, %i.afo
  %i.afq = fsub <2 x float> %i.afn, %i.afp        ; 2 uses
  %foldExtExtBinop10107 = fadd <2 x float> %foldExtExtBinop10059, %i.afq
  %foldExtExtBinop10109 = fmul <2 x float> %.sroa.068.0.copyload, %foldExtExtBinop10107
  %foldExtExtBinop10111 = fadd <2 x float> %foldExtExtBinop10061, %i.afq
  %foldExtExtBinop10113 = fmul <2 x float> %.sroa.068.0.copyload, %foldExtExtBinop10111
  %shift10115 = shufflevector <2 x float> %foldExtExtBinop10113, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop10116 = fadd <2 x float> %foldExtExtBinop10109, %shift10115
  %i.afr = extractelement <2 x float> %foldExtExtBinop10116, i64 0
  %i.afs = fadd float %i.afb, %i.afr
  %i.aft = fadd float %i.ael, %i.afs
  store float %i.aft, ptr %i.aek, align 4, !tbaa !286
  %i.afu = getelementptr inbounds nuw i8, ptr %i.xp, i64 276
  store i8 1, ptr %i.afu, align 4, !tbaa !287
  %exitcond6585.4.not = icmp eq i32 %i.xx, 5
  br i1 %exitcond6585.4.not, label %._crit_edge, label %bb.cr

._crit_edge:                                      ; preds = %bb.cq, %bb.da, %bb.cy, %bb.cw, %bb.cu, %bb.cs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count6587
  br i1 %exitcond.not, label %._crit_edge3688, label %.lr.ph3687.split.split, !llvm.loop !685

bb.db:                                            ; preds = %._crit_edge3688
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @563, i64 %i.bo) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.dc:                                            ; preds = %._crit_edge3688
  %i.afv = load i32, ptr %i.bz, align 4, !tbaa !253 ; 2 uses
  %i.afw = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.afv, i32 1), !nosanitize !10 ; 2 uses
  %i.afx = extractvalue { i32, i1 } %i.afw, 1, !nosanitize !10
  br i1 %i.afx, label %bb.dd, label %bb.de, !prof !78, !nosanitize !10

bb.dd:                                            ; preds = %bb.dc
  %i.afy = zext nneg i32 %i.afv to i64, !nosanitize !10
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @564, i64 %i.afy, i64 1) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.de:                                            ; preds = %bb.dc
  %i.afz = extractvalue { i32, i1 } %i.afw, 0, !nosanitize !10
  store i32 %i.afz, ptr %i.bz, align 4, !tbaa !253
  br i1 %i.xl, label %bb.df, label %.loopexit

bb.df:                                            ; preds = %bb.de
  %i.aga = tail call i32 @llvm.umin.i32(i32 %i.xk, i32 7)
  %i.agb = add nsw i32 %i.aga, -1
  %i.agc = zext nneg i32 %i.agb to i64            ; 2 uses
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.agc ; 2 uses
  %i.age = shl nuw nsw i64 %i.agc, 2
  %i.agf = add i64 %i.age, %i.cb, !nosanitize !10 ; 2 uses
  %.not334 = icmp ult i64 %i.agf, %i.cb, !nosanitize !10
  br i1 %.not334, label %bb.dg, label %bb.dh, !prof !78, !nosanitize !10

bb.dg:                                            ; preds = %bb.df
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @565, i64 %i.cb, i64 %i.agf) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.dh:                                            ; preds = %bb.df
  %i.agg = load i32, ptr %i.agd, align 4, !tbaa !84 ; 2 uses
  %i.agh = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.agg, i32 1), !nosanitize !10 ; 2 uses
  %i.agi = extractvalue { i32, i1 } %i.agh, 1, !nosanitize !10
  br i1 %i.agi, label %bb.di, label %bb.dj, !prof !78, !nosanitize !10

bb.di:                                            ; preds = %bb.dh
  %i.agj = zext nneg i32 %i.agg to i64, !nosanitize !10
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @566, i64 %i.agj, i64 1) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.dj:                                            ; preds = %bb.dh
  %i.agk = extractvalue { i32, i1 } %i.agh, 0, !nosanitize !10
  store i32 %i.agk, ptr %i.agd, align 4, !tbaa !84
  br label %.loopexit

.thread558:                                       ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.cm, %bb.cn
  %i.agl = getelementptr inbounds nuw i8, ptr %i.er, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.agl, ptr noundef nonnull align 4 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !276
  %i.agm = getelementptr inbounds nuw i8, ptr %i.er, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.agm, ptr noundef nonnull align 4 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !276
  %i.agn = getelementptr inbounds nuw i8, ptr %i.er, i64 116
  %.sroa.6527.0.copyload = load <2 x float>, ptr %i.bx, align 4 ; 4 uses
  %.sroa.7.0.copyload = load <2 x float>, ptr %i.by, align 4 ; 4 uses
  %.sroa.6520.0.copyload = load <2 x float>, ptr %i.bv, align 4 ; 10 uses
  %.sroa.8522.0.copyload = load <2 x float>, ptr %i.bw, align 4 ; 6 uses
  %i.ago = shufflevector <2 x float> %.sroa.8522.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.agp = shufflevector <2 x float> %.sroa.6520.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.agq = fmul <2 x float> %.sroa.6527.0.copyload, %i.agp ; 2 uses
  %shift10118 = shufflevector <2 x float> %i.agq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop10119 = fsub <2 x float> %i.agq, %shift10118
  %41 = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> %.sroa.6527.0.copyload, <4 x i32> <i32 0, i32 3, i32 2, i32 0>
  %42 = shufflevector <2 x float> %.sroa.6520.0.copyload, <2 x float> %.sroa.8522.0.copyload, <4 x i32> <i32 0, i32 2, i32 2, i32 1>
  %i.agr = fmul <4 x float> %41, %42              ; 2 uses
  %43 = shufflevector <4 x float> %i.agr, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %44 = shufflevector <4 x float> %i.agr, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.ags = fsub <2 x float> %43, %44
  %i.agt = shufflevector <2 x float> %.sroa.8522.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.agu = fmul <2 x float> %.sroa.6527.0.copyload, %i.agt
  %i.agv = fadd <2 x float> %i.agu, %i.ags
  %i.agw = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.agx = fmul <2 x float> %i.agw, %.sroa.6520.0.copyload
  %i.agy = fsub <2 x float> %i.agv, %i.agx
  %i.agz = fmul <2 x float> %.sroa.7.0.copyload, %i.ago ; 2 uses
  %foldExtExtBinop10121 = fadd <2 x float> %foldExtExtBinop10119, %i.agz
  %i.aha = shufflevector <2 x float> %i.agz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.231.8.vec.insert.i481 = fsub <2 x float> %foldExtExtBinop10121, %i.aha
  %i.ahb = shufflevector <2 x float> %.sroa.6527.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ahc = shufflevector <2 x float> %.sroa.6520.0.copyload, <2 x float> %.sroa.8522.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ahd = fmul <4 x float> %i.ahb, %i.ahc        ; 4 uses
  %shift10126 = shufflevector <4 x float> %i.ahd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop10127 = fadd <4 x float> %i.ahd, %shift10126
  %shift10129 = shufflevector <4 x float> %i.ahd, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop10130 = fadd <4 x float> %shift10129, %foldExtExtBinop10127
  %shift10132 = shufflevector <4 x float> %i.ahd, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop10133 = fadd <4 x float> %shift10132, %foldExtExtBinop10130
  %i.ahe = shufflevector <4 x float> %foldExtExtBinop10133, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.231.12.vec.insert.i482 = shufflevector <2 x float> %.sroa.231.8.vec.insert.i481, <2 x float> %i.ahe, <2 x i32> <i32 0, i32 2>
  %i.ahf = load <2 x float>, ptr %5, align 8
  %i.ahg = load <2 x float>, ptr %.sroa.4536.0..sroa_idx, align 4
  %i.ahh = load <2 x float>, ptr %4, align 8
  %i.ahi = load <2 x float>, ptr %.sroa.4529.0..sroa_idx, align 4
  %i.ahj = fsub <2 x float> %i.ahf, %i.ahh        ; 4 uses
  %i.ahk = fsub <2 x float> %i.ahg, %i.ahi        ; 4 uses
  %i.ahl = fmul <2 x float> %i.ahk, %.sroa.6520.0.copyload
  %i.ahm = shufflevector <2 x float> %.sroa.8522.0.copyload, <2 x float> %.sroa.6520.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ahn = fmul <2 x float> %i.ahj, %i.ahm
  %i.aho = shufflevector <2 x float> %.sroa.6520.0.copyload, <2 x float> %.sroa.8522.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ahp = fmul <2 x float> %i.ahj, %i.aho
  %i.ahq = shufflevector <2 x float> %i.ahk, <2 x float> %i.ahj, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ahr = fmul <2 x float> %i.ahq, %.sroa.6520.0.copyload
  %i.ahs = fsub <2 x float> %i.ahl, %i.ahp
  %i.aht = fsub <2 x float> %i.ahn, %i.ahr
  %i.ahu = fmul <2 x float> %i.ahq, %i.agt
  %i.ahv = fmul <2 x float> %i.ahk, %i.agt
  %i.ahw = fsub <2 x float> %i.ahs, %i.ahu        ; 2 uses
  %i.ahx = fsub <2 x float> %i.aht, %i.ahv        ; 2 uses
  %i.ahy = fmul <2 x float> %i.aho, %i.ahw
  %i.ahz = fmul <2 x float> %i.ahm, %i.ahx
  %i.aia = fsub <2 x float> %i.ahy, %i.ahz
  %foldExtExtBinop10135 = fmul <2 x float> %.sroa.6520.0.copyload, %i.ahx
  %foldExtExtBinop10137 = fmul <2 x float> %.sroa.6520.0.copyload, %i.ahw
  %shift10139 = shufflevector <2 x float> %foldExtExtBinop10137, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop10140 = fsub <2 x float> %foldExtExtBinop10135, %shift10139
  %i.aib = extractelement <2 x float> %foldExtExtBinop10140, i64 0
  %i.aic = fmul <2 x float> %i.aia, splat (float 2.000000e+00)
  %i.aid = fadd <2 x float> %i.ahj, %i.aic
  %i.aie = fmul float %i.aib, 2.000000e+00
  %i.aif = extractelement <2 x float> %i.ahk, i64 1
  %i.aig = fadd float %i.aif, %i.aie
  store <2 x float> %i.aid, ptr %i.agn, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 124
  store float %i.aig, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !144
  %.sroa.5.0..sroa_idx498 = getelementptr inbounds nuw i8, ptr %i.er, i64 128
  store <2 x float> %i.agy, ptr %.sroa.5.0..sroa_idx498, align 8
  %.sroa.6.0..sroa_idx499 = getelementptr inbounds nuw i8, ptr %i.er, i64 136
  store <2 x float> %.sroa.231.12.vec.insert.i482, ptr %.sroa.6.0..sroa_idx499, align 8
  %i.aih = load i32, ptr %i.jh, align 4, !tbaa !203
  %i.aii = or i32 %i.aih, 8388608
  store i32 %i.aii, ptr %i.jh, align 4, !tbaa !203
  br i1 %i.br, label %bb.dl, label %bb.dk, !prof !11, !nosanitize !10

bb.dk:                                            ; preds = %.thread558
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @567, i64 %i.bo) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.dl:                                            ; preds = %.thread558
  %i.aij = getelementptr inbounds nuw i8, ptr %.0290, i64 68
  %i.aik = getelementptr inbounds nuw i8, ptr %.0289, i64 68
  %.sroa.015.0.copyload = load <2 x float>, ptr %i.aik, align 4
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0289, i64 76
  %.sroa.216.0.copyload = load float, ptr %.sroa.216.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.aij, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0290, i64 76
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %i.ail = tail call zeroext i1 @b3UpdateContact(ptr noundef nonnull %i.g, i32 noundef %2, ptr noundef nonnull %i.er, ptr noundef nonnull %i.fh, <2 x float> %.sroa.015.0.copyload, float %.sroa.216.0.copyload, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull %i.ft, <2 x float> %.sroa.0.0.copyload, float %.sroa.2.0.copyload, ptr noundef nonnull byval(%struct.b3Transform) align 8 %5, i1 noundef zeroext %i.ns, ptr noundef nonnull byval(%struct.b3Arena) align 8 %i.q) #16 ; 3 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.er, i64 80 ; 3 uses
  %i.ain = load i32, ptr %i.aim, align 8, !tbaa !281 ; 2 uses
  %i.aio = icmp sgt i32 %i.ain, 0
  br i1 %i.aio, label %bb.dm, label %bb.dr

bb.dm:                                            ; preds = %bb.dl
  %i.aip = tail call i32 @llvm.umin.i32(i32 %i.ain, i32 7)
  %i.aiq = add nsw i32 %i.aip, -1
  %i.air = zext nneg i32 %i.aiq to i64            ; 2 uses
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.air ; 2 uses
  %i.ait = shl nuw nsw i64 %i.air, 2
  %i.aiu = add i64 %i.ait, %i.cb, !nosanitize !10 ; 2 uses
  %.not335 = icmp ult i64 %i.aiu, %i.cb, !nosanitize !10
  br i1 %.not335, label %bb.dn, label %bb.do, !prof !78, !nosanitize !10

bb.dn:                                            ; preds = %bb.dm
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @568, i64 %i.cb, i64 %i.aiu) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.do:                                            ; preds = %bb.dm
  %i.aiv = load i32, ptr %i.ais, align 4, !tbaa !84 ; 2 uses
  %i.aiw = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.aiv, i32 1), !nosanitize !10 ; 2 uses
  %i.aix = extractvalue { i32, i1 } %i.aiw, 1, !nosanitize !10
  br i1 %i.aix, label %bb.dp, label %bb.dq, !prof !78, !nosanitize !10

bb.dp:                                            ; preds = %bb.do
  %i.aiy = zext nneg i32 %i.aiv to i64, !nosanitize !10
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @569, i64 %i.aiy, i64 1) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.dq:                                            ; preds = %bb.do
  %i.aiz = extractvalue { i32, i1 } %i.aiw, 0, !nosanitize !10
  store i32 %i.aiz, ptr %i.ais, align 4, !tbaa !84
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dl, %bb.dq
  %.not344 = xor i1 %i.ail, true
  %brmerge = or i1 %.not337, %.not344
  br i1 %brmerge, label %bb.ea, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aja = load i32, ptr %i.jh, align 4, !tbaa !203
  %i.ajb = and i32 %i.aja, 4194304
  %.not336 = icmp eq i32 %i.ajb, 0
  br i1 %.not336, label %.thread561, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !262 ; 2 uses
  %i.aje = sext i32 %i.ajd to i64                 ; 2 uses
  %i.ajf = mul nsw i64 %i.aje, 112
  %i.ajg = add i64 %i.ajf, %i.cc, !nosanitize !10 ; 3 uses
  %i.ajh = icmp ne i64 %i.ajg, 0, !nosanitize !10
  %i.aji = icmp uge i64 %i.ajg, %i.cc, !nosanitize !10
  %i.ajj = icmp slt i32 %i.ajd, 0
  %i.ajk = xor i1 %i.ajj, %i.aji
  %i.ajl = and i1 %i.ajh, %i.ajk, !nosanitize !10
  br i1 %i.ajl, label %bb.dv, label %bb.du, !prof !11, !nosanitize !10

bb.du:                                            ; preds = %bb.dt
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @570, i64 %i.cc, i64 %i.ajg) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.dv:                                            ; preds = %bb.dt
  %i.ajm = getelementptr inbounds [112 x i8], ptr %i.m, i64 %i.aje
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 48
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ajp = load ptr, ptr %i.ajn, align 8, !tbaa !250 ; 3 uses
  %i.ajq = load i32, ptr %i.ajo, align 8, !tbaa !261 ; 2 uses
  %i.ajr = sext i32 %i.ajq to i64                 ; 2 uses
  %i.ajs = getelementptr inbounds [12 x i8], ptr %i.ajp, i64 %i.ajr ; 2 uses
  %i.ajt = mul nsw i64 %i.ajr, 12
  %i.aju = ptrtoint ptr %i.ajp to i64, !nosanitize !10 ; 3 uses
  %i.ajv = add i64 %i.ajt, %i.aju, !nosanitize !10 ; 3 uses
  %i.ajw = icmp ne ptr %i.ajp, null, !nosanitize !10 ; 2 uses
  %i.ajx = icmp eq i64 %i.ajv, 0
  %i.ajy = xor i1 %i.ajw, %i.ajx
  %i.ajz = icmp uge i64 %i.ajv, %i.aju, !nosanitize !10
  %i.aka = icmp slt i32 %i.ajq, 0
  %i.akb = xor i1 %i.aka, %i.ajz
  %i.akc = and i1 %i.ajy, %i.akb, !nosanitize !10
  br i1 %i.akc, label %bb.dx, label %bb.dw, !prof !11, !nosanitize !10

bb.dw:                                            ; preds = %bb.dv
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @571, i64 %i.aju, i64 %i.ajv) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.dx:                                            ; preds = %bb.dv
  %i.akd = ptrtoint ptr %i.ajs to i64, !nosanitize !10 ; 2 uses
  %i.ake = and i64 %i.akd, 3, !nosanitize !10
  %i.akf = icmp eq i64 %i.ake, 0, !nosanitize !10
  %i.akg = and i1 %i.ajw, %i.akf
  br i1 %i.akg, label %bb.dz, label %bb.dy, !prof !11, !nosanitize !10

bb.dy:                                            ; preds = %bb.dx
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @573, i64 %i.akd) #15, !nosanitize !10
  unreachable, !nosanitize !10

bb.dz:                                            ; preds = %bb.dx
  %i.akh = load i32, ptr %i.aim, align 8, !tbaa !281
  %i.aki = trunc i32 %i.akh to i16
  %i.akj = getelementptr inbounds nuw i8, ptr %i.ajs, i64 8
  store i16 %i.aki, ptr %i.akj, align 4, !tbaa !690
  br label %.thread561

bb.ea:                                            ; preds = %bb.dr
  %or.cond345 = and i1 %.not337, %i.ail
  br i1 %or.cond345, label %bb.eb, label %.thread561

bb.eb:                                            ; preds = %bb.ea
  %i.akk = load i32, ptr %i.jh, align 4, !tbaa !203
  %i.akl = or i32 %i.akk, 262144
  store i32 %i.akl, ptr %i.jh, align 4, !tbaa !203
  %i.akm = lshr i32 %i.ep, 6
  %i.akn = load ptr, ptr %i.bs, align 8, !tbaa !255 ; 3 uses
  %i.ako = zext nneg i32 %i.akm to i64            ; 2 uses
  %i.akp = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %i.ako ; 3 uses
  %i.akq = shl nuw nsw i64 %i.ako, 3
  %i.akr = ptrtoint ptr %i.akn to i64, !nosanitize !10 ; 3 uses
  %i.aks = add i64 %i.akq, %i.akr, !nosanitize !10 ; 3 uses
  %i.akt = icmp ne ptr %i.akn, null, !nosanitize !10 ; 2 uses
end_hunk_4
