Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/mesh?download=true
inline.NumInlined: 435
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@b3GetHeight:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @322, i64 %i.b) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %b3GetRoot.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.g to i64                     ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.b, i64 %i.i), !nosanitize !9 ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1, !nosanitize !9
  br i1 %i.k, label %bb.e, label %b3GetRoot.exit, !prof !17, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @324, i64 %i.b, i64 %i.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

b3GetRoot.exit:                                   ; preds = %bb.d
  %i.l = extractvalue { i64, i1 } %i.j, 0, !nosanitize !9 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %b3GetRoot.exit.thread, label %bb.f

bb.f:                                             ; preds = %b3GetRoot.exit
  %i.n = inttoptr i64 %i.l to ptr
  %i.o = tail call fastcc i32 @b3GetNodeHeight(ptr noundef %i.n)
  br label %b3GetRoot.exit.thread

b3GetRoot.exit.thread:                            ; preds = %bb.c, %b3GetRoot.exit, %bb.f
  %.0 = phi i32 [ %i.o, %bb.f ], [ 0, %b3GetRoot.exit ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 -2147483646, -2147483648) i32 @b3GetNodeHeight(ptr noundef nonnull %0) unnamed_addr #0 !func_sanitize !116 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !9   ; 7 uses
  %i.b = and i64 %i.a, 3, !nosanitize !9
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !9
  br i1 %i.c, label %b3IsLeaf.exit, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @706, i64 %i.a) #12, !nosanitize !9
  unreachable, !nosanitize !9

b3IsLeaf.exit:                                    ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 3
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %bb.i, label %bb.c

bb.c:                                             ; preds = %b3IsLeaf.exit
  %i.h = add i64 %i.a, 32, !nosanitize !9         ; 2 uses
  %i.i = icmp ne i64 %i.h, 0, !nosanitize !9
  %i.j = icmp ult ptr %0, inttoptr (i64 -32 to ptr)
  %i.k = and i1 %i.j, %i.i, !nosanitize !9
  br i1 %i.k, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @708, i64 %i.a, i64 %i.h) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = tail call fastcc i32 @b3GetNodeHeight(ptr noundef %i.l)
  %i.n = load i32, ptr %i.d, align 4
  %i.o = lshr i32 %i.n, 2
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 5
  %i.r = add i64 %i.q, %i.a, !nosanitize !9       ; 2 uses
  %.not.i = icmp ult i64 %i.r, %i.a, !nosanitize !9
  br i1 %.not.i, label %bb.f, label %b3GetRightChild.exit, !prof !17, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @707, i64 %i.a, i64 %i.r) #12, !nosanitize !9
  unreachable, !nosanitize !9

b3GetRightChild.exit:                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.p
  %i.t = tail call fastcc i32 @b3GetNodeHeight(ptr noundef %i.s)
  %i.u = tail call noundef i32 @llvm.smax.i32(i32 %i.m, i32 %i.t) ; 2 uses
  %i.v = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.u, i32 1), !nosanitize !9 ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 1, !nosanitize !9
  br i1 %i.w, label %bb.g, label %bb.h, !prof !17, !nosanitize !9

bb.g:                                             ; preds = %b3GetRightChild.exit
  %i.x = zext nneg i32 %i.u to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @325, i64 1, i64 %i.x) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %b3GetRightChild.exit
  %i.y = extractvalue { i32, i1 } %i.v, 0, !nosanitize !9
  br label %bb.i

bb.i:                                             ; preds = %b3IsLeaf.exit, %bb.h
  %.0 = phi i32 [ %i.y, %bb.h ], [ 0, %b3IsLeaf.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @b3IsValidMesh(ptr noundef %0) local_unnamed_addr #0 !func_sanitize !117 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  br i1 %i.d, label %bb.d, label %bb.c, !prof !10, !nosanitize !9

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1, i64 %i.b) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.d:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !tbaa !18
  %.not = icmp eq i64 %i.e, -6148651537399239945
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %i.h = icmp sgt i32 %i.g, 95
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %.0 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ %i.h, %bb.e ]
  ret i1 %.0
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_type_mismatch_v1_abort(ptr, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @b3CreateGridMesh(i32 noundef %0, i32 noundef %1, float noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 !func_sanitize !122 {
bb.a:
  %5 = alloca %struct.b3MeshDef, align 8          ; 11 uses
  %i.a = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 1), !nosanitize !9 ; 2 uses
  %i.b = extractvalue { i32, i1 } %i.a, 0, !nosanitize !9 ; 2 uses
  %i.c = extractvalue { i32, i1 } %i.a, 1, !nosanitize !9
  br i1 %i.c, label %bb.b, label %bb.c, !prof !17, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %0 to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @4, i64 %i.d, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.e = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %1, i32 1), !nosanitize !9 ; 2 uses
  %i.f = extractvalue { i32, i1 } %i.e, 0, !nosanitize !9 ; 7 uses
  %i.g = extractvalue { i32, i1 } %i.e, 1, !nosanitize !9
  br i1 %i.g, label %bb.d, label %bb.e, !prof !17, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.h = zext nneg i32 %1 to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @5, i64 %i.h, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.i = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.b, i32 %i.f), !nosanitize !9 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 0, !nosanitize !9 ; 4 uses
  %i.k = extractvalue { i32, i1 } %i.i, 1, !nosanitize !9
  br i1 %i.k, label %bb.f, label %bb.g, !prof !17, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  %i.l = zext i32 %i.b to i64, !nosanitize !9
  %i.m = zext i32 %i.f to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @6, i64 %i.l, i64 %i.m) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.n = icmp sgt i32 %i.j, 0
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = mul i32 %i.j, 12
  %i.p = tail call ptr @b3GrowAlloc(ptr noundef null, i32 noundef 0, i32 noundef %i.o) #13
  %i.q = zext nneg i32 %i.j to i64
  %i.r = mul nuw nsw i64 %i.q, 12
  %i.s = freeze ptr %i.p
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.11125.0 = phi i64 [ %i.r, %bb.h ], [ 0, %bb.g ]
  %.sroa.0122.0 = phi ptr [ %i.s, %bb.h ], [ null, %bb.g ] ; 5 uses
  %i.t = sitofp i32 %0 to float
  %i.u = fmul float %2, %i.t
  %i.v = fmul float %i.u, -5.000000e-01
  %.not634 = icmp slt i32 %0, 0
  br i1 %.not634, label %._crit_edge640, label %.lr.ph639

.lr.ph639:                                        ; preds = %bb.i
  %i.w = sitofp i32 %1 to float
  %i.x = fmul float %2, %i.w
  %i.y = fmul float %i.x, -5.000000e-01
  %.not107609 = icmp slt i32 %1, 0
  %i.z = ptrtoint ptr %.sroa.0122.0 to i64        ; 3 uses
  br i1 %.not107609, label %.lr.ph639.split.us.preheader, label %.lr.ph639.split

.lr.ph639.split.us:                               ; preds = %.lr.ph639.split.us.preheader
  %i.aa = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ad, i32 1), !nosanitize !9 ; 2 uses
  %i.ab = extractvalue { i32, i1 } %i.aa, 1, !nosanitize !9
  br i1 %i.ab, label %.split.us.a, label %.lr.ph639.split.us.preheader, !prof !20, !llvm.loop !118, !nosanitize !9

.lr.ph639.split.us.preheader:                     ; preds = %.lr.ph639, %.lr.ph639.split.us
  %i.ac = phi { i32, i1 } [ %i.aa, %.lr.ph639.split.us ], [ { i32 1, i1 false }, %.lr.ph639 ]
  %i.ad = extractvalue { i32, i1 } %i.ac, 0, !nosanitize !9 ; 2 uses
  %.not.us = icmp sgt i32 %i.ad, %0
  br i1 %.not.us, label %._crit_edge640, label %.lr.ph639.split.us, !llvm.loop !118

.lr.ph639.split:                                  ; preds = %.lr.ph639
  %.not.a = icmp eq ptr %.sroa.0122.0, null
  br i1 %.not.a, label %.split615, label %.lr.ph.us, !prof !17

._crit_edge640:                                   ; preds = %.split615.a, %.lr.ph639.split.us.preheader, %bb.i
  %6 = shl nsw i32 %0, 1                          ; 2 uses
  %7 = add i32 %0, 1073741824
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %bb.p, label %bb.o, !prof !10, !nosanitize !9

.lr.ph.us:                                        ; preds = %.lr.ph639.split, %.split615.a
  %.082637.us644 = phi i32 [ %11, %.split615.a ], [ 0, %.lr.ph639.split ]
  %.083636.us645 = phi float [ %12, %.split615.a ], [ %i.v, %.lr.ph639.split ] ; 2 uses
  %.084635.us646 = phi i32 [ %indvars.le, %.split615.a ], [ 0, %.lr.ph639.split ] ; 2 uses
  %i.ae = sext i32 %.084635.us646 to i64
  %i.af = add i32 %.084635.us646, 2147483647
  %wide.trip.count = sext i32 %i.af to i64
  br label %bb.j

._crit_edge:                                      ; preds = %._crit_edge640.a
  %9 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.082637.us644, i32 1), !nosanitize !9 ; 2 uses
  %10 = extractvalue { i32, i1 } %9, 1, !nosanitize !9
  br i1 %10, label %.split.us.a, label %.split615.a, !prof !17, !nosanitize !9

bb.j:                                             ; preds = %.lr.ph.us, %._crit_edge640.a
  %indvars.iv = phi i64 [ %i.ae, %.lr.ph.us ], [ %indvars.iv.next, %._crit_edge640.a ] ; 6 uses
  %.080612.us648 = phi i32 [ 0, %.lr.ph.us ], [ %i.as, %._crit_edge640.a ]
  %.081611.us649 = phi float [ %i.y, %.lr.ph.us ], [ %i.ar, %._crit_edge640.a ] ; 2 uses
  %i.ag = getelementptr inbounds [12 x i8], ptr %.sroa.0122.0, i64 %indvars.iv ; 4 uses
  %i.ah = mul nsw i64 %indvars.iv, 12
  %i.ai = add i64 %i.ah, %i.z, !nosanitize !9     ; 3 uses
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = icmp uge i64 %i.ai, %i.z, !nosanitize !9
  %i.al = icmp slt i64 %indvars.iv, 0
  %i.am = xor i1 %i.al, %i.ak
  %i.an = and i1 %i.aj, %i.am, !nosanitize !9
  br i1 %i.an, label %bb.k, label %.split.us, !prof !10, !nosanitize !9

.split.us:                                        ; preds = %bb.j
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @8, i64 %i.z, i64 %i.ai) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  %i.ao = ptrtoint ptr %i.ag to i64, !nosanitize !9 ; 2 uses
  %i.ap = and i64 %i.ao, 3, !nosanitize !9
  %i.aq = icmp eq i64 %i.ap, 0, !nosanitize !9
  br i1 %i.aq, label %bb.l, label %.split615, !prof !10, !nosanitize !9

.split615:                                        ; preds = %bb.k, %.lr.ph639.split
  %.us-phi616 = phi i64 [ 0, %.lr.ph639.split ], [ %i.ao, %bb.k ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @10, i64 %.us-phi616) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  store float %.083636.us645, ptr %i.ag, align 4, !tbaa !22
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store float 0.000000e+00, ptr %.sroa.2.0..sroa_idx.us, align 4, !tbaa !22
  %.sroa.3.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store float %.081611.us649, ptr %.sroa.3.0..sroa_idx.us, align 4, !tbaa !22
  %i.ar = fadd float %2, %.081611.us649
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv, 2147483647
  br i1 %exitcond, label %bb.m, label %._crit_edge.us, !prof !17, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @12, i64 2147483647, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

._crit_edge.us:                                   ; preds = %bb.l
  %exitcond1422 = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond1422, label %bb.n, label %._crit_edge640.a, !prof !17, !nosanitize !9

bb.n:                                             ; preds = %._crit_edge.us
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @13, i64 2147483647, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

._crit_edge640.a:                                 ; preds = %._crit_edge.us
  %i.as = add i32 %.080612.us648, 1               ; 2 uses
  %i.at = icmp sgt i32 %i.as, %1
  br i1 %i.at, label %._crit_edge, label %bb.j, !llvm.loop !119

.split.us.a:                                      ; preds = %._crit_edge, %.lr.ph639.split.us
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @14, i64 2147483647, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split615.a:                                      ; preds = %._crit_edge
  %indvars.le = trunc i64 %indvars.iv.next to i32
  %11 = extractvalue { i32, i1 } %9, 0, !nosanitize !9 ; 2 uses
  %12 = fadd float %2, %.083636.us645
  %.not = icmp sgt i32 %11, %0
  br i1 %.not, label %._crit_edge640, label %.lr.ph.us, !llvm.loop !118

bb.o:                                             ; preds = %._crit_edge640
  %i.au = zext i32 %0 to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @15, i64 2, i64 %i.au) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.p:                                             ; preds = %._crit_edge640
  %i.av = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %6, i32 %1), !nosanitize !9 ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.av, 0, !nosanitize !9 ; 5 uses
  %i.ax = extractvalue { i32, i1 } %i.av, 1, !nosanitize !9
  br i1 %i.ax, label %bb.q, label %bb.r, !prof !17, !nosanitize !9

bb.q:                                             ; preds = %bb.p
  %i.ay = zext i32 %6 to i64, !nosanitize !9
  %i.az = zext i32 %1 to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @16, i64 %i.ay, i64 %i.az) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %bb.p
  %i.ba = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.aw, i32 3), !nosanitize !9 ; 2 uses
  %i.bb = extractvalue { i32, i1 } %i.ba, 0, !nosanitize !9 ; 4 uses
  %i.bc = extractvalue { i32, i1 } %i.ba, 1, !nosanitize !9
  br i1 %i.bc, label %bb.s, label %bb.t, !prof !17, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  %i.bd = zext i32 %i.aw to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @17, i64 3, i64 %i.bd) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.t:                                             ; preds = %bb.r
  %i.be = icmp sgt i32 %i.bb, 0
  br i1 %i.be, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bf = shl i32 %i.bb, 2
  %i.bg = tail call ptr @b3GrowAlloc(ptr noundef null, i32 noundef 0, i32 noundef %i.bf) #13
  %i.bh = zext nneg i32 %i.bb to i64
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = freeze ptr %i.bg
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.0112.0 = phi ptr [ %i.bj, %bb.u ], [ null, %bb.t ] ; 10 uses
  %.sroa.16.0 = phi i64 [ %i.bi, %bb.u ], [ 0, %bb.t ]
  %i.bk = icmp sgt i32 %i.aw, 0
  br i1 %i.bk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bl = tail call ptr @b3GrowAlloc(ptr noundef null, i32 noundef 0, i32 noundef %i.aw) #13
  %i.bm = zext nneg i32 %i.aw to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.sroa.0.0 = phi ptr [ %i.bl, %bb.w ], [ null, %bb.v ] ; 6 uses
  %.sroa.11.0 = phi i64 [ %i.bm, %bb.w ], [ 0, %bb.v ]
  %i.bn = icmp sgt i32 %0, 0
  br i1 %i.bn, label %.preheader.lr.ph, label %._crit_edge817

.preheader.lr.ph:                                 ; preds = %bb.x
  %i.bo = icmp sgt i32 %1, 0
  %i.bp = ptrtoint ptr %.sroa.0112.0 to i64       ; 18 uses
  %i.bq = icmp sgt i32 %3, 0
  %i.br = ptrtoint ptr %.sroa.0.0 to i64          ; 6 uses
  %i.bs = icmp ne ptr %.sroa.0.0, null            ; 2 uses
  br i1 %i.bo, label %.preheader.lr.ph.split.us, label %._crit_edge817

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %.not962 = icmp eq ptr %.sroa.0112.0, null
  br i1 %.not962, label %.lr.ph669.split.split.us, label %.preheader.us.us.preheader, !prof !17

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.us
  %i.bt = mul i32 %1, 6
  %i.bu = xor i32 %1, -1                          ; 2 uses
  %i.bv = sub nsw i32 2147483646, %1
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.us822.us
  %indvars.iv1459 = phi i32 [ 2147483647, %.preheader.us.us.preheader ], [ %indvars.iv.next1460, %._crit_edge.us822.us ] ; 2 uses
  %indvars.iv1456 = phi i32 [ %i.bv, %.preheader.us.us.preheader ], [ %indvars.iv.next1457, %._crit_edge.us822.us ] ; 2 uses
  %indvars.iv1453 = phi i32 [ 2147483647, %.preheader.us.us.preheader ], [ %indvars.iv.next1454, %._crit_edge.us822.us ] ; 2 uses
  %.078816.us.us = phi i32 [ 0, %.preheader.us.us.preheader ], [ %i.go, %._crit_edge.us822.us ] ; 3 uses
  %.079815.us.us = phi i32 [ 0, %.preheader.us.us.preheader ], [ %i.cc, %._crit_edge.us822.us ] ; 2 uses
  %.2814.us.us = phi i32 [ 0, %.preheader.us.us.preheader ], [ %i.cb, %._crit_edge.us822.us ] ; 2 uses
  %i.bw = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.f, i32 %.078816.us.us), !nosanitize !9 ; 2 uses
  %i.bx = extractvalue { i32, i1 } %i.bw, 0, !nosanitize !9 ; 2 uses
  %i.by = extractvalue { i32, i1 } %i.bw, 1, !nosanitize !9
  br i1 %i.by, label %.split825.us, label %.lr.ph669.split.us.us.preheader, !prof !17, !nosanitize !9

.lr.ph669.split.us.us.preheader:                  ; preds = %.preheader.us.us
  %i.bz = sext i32 %.079815.us.us to i64
  %i.ca = sext i32 %.2814.us.us to i64
  %i.cb = add i32 %i.bt, %.2814.us.us
  %i.cc = add i32 %1, %.079815.us.us
  br label %.lr.ph669.split.us.us

.lr.ph669.split.us.us:                            ; preds = %.lr.ph669.split.us.us.preheader, %bb.az
  %indvars.iv1447 = phi i64 [ %i.ca, %.lr.ph669.split.us.us.preheader ], [ %indvars.iv.next1448, %bb.az ] ; 13 uses
  %indvars.iv1445 = phi i64 [ %i.bz, %.lr.ph669.split.us.us.preheader ], [ %indvars.iv.next1446, %bb.az ] ; 6 uses
  %.0668.us819.us = phi i32 [ 0, %.lr.ph669.split.us.us.preheader ], [ %i.gn, %bb.az ] ; 6 uses
  %indvars1450 = trunc i64 %indvars.iv1445 to i32 ; 2 uses
  %i.cd = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.0668.us819.us, i32 %i.bx), !nosanitize !9 ; 2 uses
  %i.ce = extractvalue { i32, i1 } %i.cd, 0, !nosanitize !9 ; 3 uses
  %i.cf = extractvalue { i32, i1 } %i.cd, 1, !nosanitize !9
  br i1 %i.cf, label %.split672.us, label %bb.y, !prof !17, !nosanitize !9

bb.y:                                             ; preds = %.lr.ph669.split.us.us
  %i.cg = add i32 %i.ce, 1                        ; 3 uses
  %exitcond1455 = icmp eq i32 %.0668.us819.us, %indvars.iv1453
  br i1 %exitcond1455, label %.split676.us, label %bb.z, !prof !17, !nosanitize !9

bb.z:                                             ; preds = %bb.y
  %i.ch = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.cg, i32 %i.f), !nosanitize !9 ; 2 uses
  %i.ci = extractvalue { i32, i1 } %i.ch, 0, !nosanitize !9 ; 3 uses
  %i.cj = extractvalue { i32, i1 } %i.ch, 1, !nosanitize !9
  br i1 %i.cj, label %.split679.us.loopexit, label %bb.aa, !prof !17, !nosanitize !9

bb.aa:                                            ; preds = %bb.z
  %i.ck = add i32 %i.ci, -1
  %exitcond1458 = icmp eq i32 %.0668.us819.us, %indvars.iv1456
  br i1 %exitcond1458, label %.split682.us, label %bb.ab, !prof !17, !nosanitize !9

bb.ab:                                            ; preds = %bb.aa
  %i.cl = getelementptr inbounds [4 x i8], ptr %.sroa.0112.0, i64 %indvars.iv1447 ; 2 uses
  %i.cm = shl nsw i64 %indvars.iv1447, 2
  %i.cn = add i64 %i.cm, %i.bp, !nosanitize !9    ; 3 uses
  %i.co = icmp ne i64 %i.cn, 0
  %i.cp = icmp uge i64 %i.cn, %i.bp, !nosanitize !9
  %i.cq = icmp slt i64 %indvars.iv1447, 0
  %i.cr = xor i1 %i.cq, %i.cp
  %i.cs = and i1 %i.co, %i.cr, !nosanitize !9
  br i1 %i.cs, label %bb.ac, label %.split685.us, !prof !10, !nosanitize !9

bb.ac:                                            ; preds = %bb.ab
  %i.ct = ptrtoint ptr %i.cl to i64, !nosanitize !9 ; 2 uses
  %i.cu = and i64 %i.ct, 3, !nosanitize !9
  %i.cv = icmp eq i64 %i.cu, 0, !nosanitize !9
  br i1 %i.cv, label %bb.ad, label %.split689, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.ce, ptr %i.cl, align 4, !tbaa !23
  %i.cw = trunc nsw i64 %indvars.iv1447 to i32    ; 4 uses
  %i.cx = shl i64 %indvars.iv1447, 32
  %sext = ashr exact i64 %i.cx, 32
  %i.cy = or i64 %sext, 1                         ; 2 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %.sroa.0112.0, i64 %i.cy ; 2 uses
  %i.da = shl nsw i64 %i.cy, 2
  %i.db = add i64 %i.da, %i.bp, !nosanitize !9    ; 3 uses
  %i.dc = icmp ne i64 %i.db, 0
  %i.dd = icmp uge i64 %i.db, %i.bp, !nosanitize !9
  %i.de = icmp slt i64 %indvars.iv1447, 0
  %i.df = xor i1 %i.de, %i.dd
  %i.dg = and i1 %i.dc, %i.df, !nosanitize !9
  br i1 %i.dg, label %bb.ae, label %.split851.us, !prof !10, !nosanitize !9

bb.ae:                                            ; preds = %bb.ad
  %i.dh = ptrtoint ptr %i.cz to i64, !nosanitize !9 ; 2 uses
  %i.di = and i64 %i.dh, 3, !nosanitize !9
  %i.dj = icmp eq i64 %i.di, 0, !nosanitize !9
  br i1 %i.dj, label %bb.af, label %.split855.us, !prof !10, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  store i32 %i.cg, ptr %i.cz, align 4, !tbaa !23
  %i.dk = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.cw, i32 2), !nosanitize !9 ; 2 uses
  %i.dl = extractvalue { i32, i1 } %i.dk, 1, !nosanitize !9
  br i1 %i.dl, label %.split858.us, label %bb.ag, !prof !17, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  %i.dm = extractvalue { i32, i1 } %i.dk, 0, !nosanitize !9 ; 2 uses
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %.sroa.0112.0, i64 %i.dn ; 2 uses
  %i.dp = shl nsw i64 %i.dn, 2
  %i.dq = add i64 %i.dp, %i.bp, !nosanitize !9    ; 3 uses
  %i.dr = icmp ne i64 %i.dq, 0
  %i.ds = icmp uge i64 %i.dq, %i.bp, !nosanitize !9
  %i.dt = icmp slt i32 %i.dm, 0
  %i.du = xor i1 %i.dt, %i.ds
  %i.dv = and i1 %i.dr, %i.du, !nosanitize !9
  br i1 %i.dv, label %bb.ah, label %.split861.us, !prof !10, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  %i.dw = ptrtoint ptr %i.do to i64, !nosanitize !9 ; 2 uses
  %i.dx = and i64 %i.dw, 3, !nosanitize !9
  %i.dy = icmp eq i64 %i.dx, 0, !nosanitize !9
  br i1 %i.dy, label %bb.ai, label %.split865.us, !prof !10, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.ci, ptr %i.do, align 4, !tbaa !23
  %i.dz = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.cw, i32 3), !nosanitize !9 ; 2 uses
  %i.ea = extractvalue { i32, i1 } %i.dz, 1, !nosanitize !9
  br i1 %i.ea, label %.split868.us, label %bb.aj, !prof !17, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  %i.eb = extractvalue { i32, i1 } %i.dz, 0, !nosanitize !9 ; 2 uses
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %.sroa.0112.0, i64 %i.ec ; 2 uses
  %i.ee = shl nsw i64 %i.ec, 2
  %i.ef = add i64 %i.ee, %i.bp, !nosanitize !9    ; 3 uses
  %i.eg = icmp ne i64 %i.ef, 0
  %i.eh = icmp uge i64 %i.ef, %i.bp, !nosanitize !9
  %i.ei = icmp slt i32 %i.eb, 0
  %i.ej = xor i1 %i.ei, %i.eh
  %i.ek = and i1 %i.eg, %i.ej, !nosanitize !9
  br i1 %i.ek, label %bb.ak, label %.split871.us, !prof !10, !nosanitize !9

bb.ak:                                            ; preds = %bb.aj
  %i.el = ptrtoint ptr %i.ed to i64, !nosanitize !9 ; 2 uses
  %i.em = and i64 %i.el, 3, !nosanitize !9
  %i.en = icmp eq i64 %i.em, 0, !nosanitize !9
  br i1 %i.en, label %bb.al, label %.split875.us, !prof !10, !nosanitize !9

bb.al:                                            ; preds = %bb.ak
  store i32 %i.ci, ptr %i.ed, align 4, !tbaa !23
  %i.eo = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.cw, i32 4), !nosanitize !9 ; 2 uses
  %i.ep = extractvalue { i32, i1 } %i.eo, 1, !nosanitize !9
end_hunk_0
