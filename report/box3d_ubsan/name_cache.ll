Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/name_cache?download=true
inline.NumInlined: 35
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b3FindName:bb.a
  %i.ae = and i1 %i.aa, %i.ad, !nosanitize !10
  br i1 %i.ae, label %bb.h, label %bb.g, !prof !14, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @25, i64 %i.w, i64 %i.x) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f
  %i.af = ptrtoint ptr %i.u to i64, !nosanitize !10 ; 2 uses
  %i.ag = and i64 %i.af, 7, !nosanitize !10
  %i.ah = icmp eq i64 %i.ag, 0, !nosanitize !10
  %i.ai = and i1 %i.y, %i.ah
  br i1 %i.ai, label %bb.j, label %bb.i, !prof !14, !nosanitize !10

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @27, i64 %i.af) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.j
  %.0 = phi ptr [ %i.ak, %bb.j ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @b3LoadName(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !func_sanitize !65 {
bb.a:
  %4 = alloca %struct.b3NameMap_itr, align 8      ; 5 uses
  %5 = alloca %struct.b3NameMap_itr, align 8      ; 3 uses
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !12
  %i.c = icmp eq i8 %i.b, 0
  %i.d = icmp eq i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 1), !nosanitize !10 ; 2 uses
  %i.f = extractvalue { i32, i1 } %i.e, 1, !nosanitize !10
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  %i.g = zext nneg i32 %3 to i64, !nosanitize !10
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @28, i64 %i.g, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.h = extractvalue { i32, i1 } %i.e, 0, !nosanitize !10
  %i.i = sext i32 %i.h to i64
  tail call void @b3Free(ptr noundef nonnull %2, i64 noundef %i.i) #11
  br label %bb.y

bb.f:                                             ; preds = %bb.b
  %i.j = icmp ne ptr %0, null, !nosanitize !10
  %i.k = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.l = and i64 %i.k, 7, !nosanitize !10
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !10
  %i.n = and i1 %i.j, %i.m, !nosanitize !10
  br i1 %i.n, label %bb.h, label %bb.g, !prof !14, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @29, i64 %i.k) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call fastcc void @b3NameMap_get(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %i.p, i32 noundef %1)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val37 = load ptr, ptr %i.r, align 8, !tbaa !35
  %i.s = icmp eq ptr %.val, %.val37
  br i1 %i.s, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 1), !nosanitize !10 ; 2 uses
  %i.u = extractvalue { i32, i1 } %i.t, 1, !nosanitize !10
  br i1 %i.u, label %bb.j, label %bb.k, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  %i.v = zext nneg i32 %3 to i64, !nosanitize !10
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @30, i64 %i.v, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.w = extractvalue { i32, i1 } %i.t, 0, !nosanitize !10
  %i.x = sext i32 %i.w to i64
  tail call void @b3Free(ptr noundef nonnull %2, i64 noundef %i.x) #11
  br label %bb.x

bb.l:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !27   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32 ; 6 uses
  %.not36 = icmp slt i32 %i.z, %i.ab
  br i1 %.not36, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = shl i32 %i.ab, 4
  %i.ad = icmp eq i32 %i.ab, 0
  br i1 %i.ad, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = shl nsw i32 %i.ab, 1
  %i.af = add i32 %i.ab, 1073741824
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.p, label %bb.o, !prof !14, !nosanitize !10

bb.o:                                             ; preds = %bb.n
  %i.ah = zext i32 %i.ab to i64, !nosanitize !10
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @31, i64 2, i64 %i.ah) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ai = phi i32 [ 8, %bb.m ], [ %i.ae, %bb.n ]  ; 2 uses
  %i.aj = shl i32 %i.ai, 4
  %i.ak = load ptr, ptr %0, align 8, !tbaa !28
  %i.al = tail call ptr @b3GrowAlloc(ptr noundef %i.ak, i32 noundef %i.ac, i32 noundef %i.aj) #11
  store ptr %i.al, ptr %0, align 8, !tbaa !28
  store i32 %i.ai, ptr %i.aa, align 4, !tbaa !32
  %.pre = load i32, ptr %i.y, align 8, !tbaa !27
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.p
  %i.am = phi i32 [ %i.z, %bb.l ], [ %.pre, %bb.p ] ; 4 uses
  %i.an = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.am, i32 1), !nosanitize !10 ; 2 uses
  %i.ao = extractvalue { i32, i1 } %i.an, 1, !nosanitize !10
  br i1 %i.ao, label %bb.r, label %bb.s, !prof !11, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  %i.ap = zext nneg i32 %i.am to i64, !nosanitize !10
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @32, i64 %i.ap, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q
  %i.aq = load ptr, ptr %0, align 8, !tbaa !28    ; 3 uses
  %i.ar = extractvalue { i32, i1 } %i.an, 0, !nosanitize !10
  store i32 %i.ar, ptr %i.y, align 8, !tbaa !27
  %i.as = sext i32 %i.am to i64                   ; 2 uses
  %i.at = getelementptr inbounds [16 x i8], ptr %i.aq, i64 %i.as ; 4 uses
  %i.au = shl nsw i64 %i.as, 4
  %i.av = ptrtoint ptr %i.aq to i64, !nosanitize !10 ; 3 uses
  %i.aw = add i64 %i.au, %i.av, !nosanitize !10   ; 3 uses
  %i.ax = icmp ne ptr %i.aq, null, !nosanitize !10 ; 2 uses
  %i.ay = icmp eq i64 %i.aw, 0
  %i.az = xor i1 %i.ax, %i.ay
  %i.ba = icmp uge i64 %i.aw, %i.av, !nosanitize !10
  %i.bb = icmp slt i32 %i.am, 0
  %i.bc = xor i1 %i.bb, %i.ba
  %i.bd = and i1 %i.az, %i.bc, !nosanitize !10
  br i1 %i.bd, label %bb.u, label %bb.t, !prof !14, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @33, i64 %i.av, i64 %i.aw) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.u:                                             ; preds = %bb.s
  %i.be = ptrtoint ptr %i.at to i64, !nosanitize !10 ; 2 uses
  %i.bf = and i64 %i.be, 7, !nosanitize !10
  %i.bg = icmp eq i64 %i.bf, 0, !nosanitize !10
  %i.bh = and i1 %i.ax, %i.bg
  br i1 %i.bh, label %bb.w, label %bb.v, !prof !14, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @34, i64 %i.be) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.w:                                             ; preds = %bb.u
  store i32 %1, ptr %i.at, align 8, !tbaa !39
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %3, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !39
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call fastcc void @b3NameMap_insert(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %i.p, i32 noundef %1, i32 noundef %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %bb.x, %bb.e
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @b3NameMap_insert_raw(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #7 !func_sanitize !70 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i16, align 2                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %i.e = zext i32 %2 to i64                       ; 2 uses
  %i.f = lshr i64 %i.e, 23
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, 2388976653695081527        ; 3 uses
  %i.i = lshr i64 %i.h, 48
  %i.j = trunc nuw i64 %i.i to i16                ; 2 uses
  %i.k = and i16 %i.j, -4096                      ; 2 uses
  %i.l = icmp ne ptr %1, null, !nosanitize !10
  %i.m = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.n = and i64 %i.m, 7, !nosanitize !10
  %i.o = icmp eq i64 %i.n, 0, !nosanitize !10
  %i.p = and i1 %i.l, %i.o, !nosanitize !10
  br i1 %i.p, label %bb.c, label %bb.b, !prof !14, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @54, i64 %i.m) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.q = lshr i64 %i.h, 47
  %i.r = xor i64 %i.q, %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !20   ; 11 uses
  %i.u = and i64 %i.t, %i.r                       ; 20 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %.fr83.i = freeze ptr %i.w                      ; 7 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.fr83.i, i64 %i.u ; 3 uses
  %i.y = add i64 %i.u, 4611686018427387904
  %i.z = icmp sgt i64 %i.y, -1
  %i.aa = shl i64 %i.u, 1                         ; 3 uses
  %i.ab = ptrtoint ptr %.fr83.i to i64, !nosanitize !10 ; 15 uses
  %i.ac = add i64 %i.aa, %i.ab, !nosanitize !10   ; 4 uses
  %i.ad = icmp ne ptr %.fr83.i, null, !nosanitize !10 ; 2 uses
  %i.ae = icmp eq i64 %i.ac, 0                    ; 3 uses
  %i.af = xor i1 %i.ad, %i.ae
  %i.ag = icmp uge i64 %i.ac, %i.ab, !nosanitize !10
  %i.ah = and i1 %i.z, %i.ag, !nosanitize !10
  %i.ai = and i1 %i.af, %i.ah, !nosanitize !10
  br i1 %i.ai, label %bb.e, label %bb.d, !prof !14, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @55, i64 %i.ab, i64 %i.ac) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.aj = ptrtoint ptr %i.x to i64, !nosanitize !10 ; 2 uses
  %i.ak = and i64 %i.aj, 1, !nosanitize !10
  %i.al = icmp eq i64 %i.ak, 0, !nosanitize !10
  %i.am = and i1 %i.ad, %i.al
  br i1 %i.am, label %bb.g, label %bb.f, !prof !14, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @56, i64 %i.aj) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.an = load i16, ptr %i.x, align 2, !tbaa !42  ; 3 uses
  %i.ao = and i16 %i.an, 2048
  %.not = icmp eq i16 %i.ao, 0
  br i1 %.not, label %b3NameMap_bucket_count.exit, label %bb.bg

b3NameMap_bucket_count.exit:                      ; preds = %bb.g
  %i.ap = load i64, ptr %1, align 8, !tbaa !19
  %i.aq = add i64 %i.ap, 1
  %i.ar = uitofp i64 %i.aq to double
  %i.as = icmp ne i64 %i.t, 0
  %i.at = zext i1 %i.as to i64
  %i.au = add i64 %i.t, %i.at
  %i.av = uitofp i64 %i.au to double
  %i.aw = fmul nnan double %i.av, 9.000000e-01
  %i.ax = fcmp olt double %i.aw, %i.ar
  br i1 %i.ax, label %bb.an, label %bb.h, !prof !47

bb.h:                                             ; preds = %b3NameMap_bucket_count.exit
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !11, !nosanitize !10

bb.i:                                             ; preds = %bb.h
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @57, i64 %i.ab, i64 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.j:                                             ; preds = %bb.h
  %.not107 = icmp eq i16 %i.an, 0
  br i1 %.not107, label %._crit_edge262, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.u ; 2 uses
  %i.bb = add nsw i64 %i.u, 1152921504606846976
  %i.bc = icmp ult i64 %i.bb, 2305843009213693952
  %i.bd = shl i64 %i.u, 3                         ; 2 uses
  %i.be = ptrtoint ptr %i.az to i64, !nosanitize !10 ; 3 uses
  %i.bf = add i64 %i.bd, %i.be, !nosanitize !10   ; 3 uses
  %i.bg = icmp ne ptr %i.az, null, !nosanitize !10 ; 2 uses
  %i.bh = icmp eq i64 %i.bf, 0
  %i.bi = xor i1 %i.bg, %i.bh
  %i.bj = icmp uge i64 %i.bf, %i.be, !nosanitize !10
  %i.bk = and i1 %i.bc, %i.bj, !nosanitize !10
  %i.bl = and i1 %i.bi, %i.bk, !nosanitize !10
  br i1 %i.bl, label %bb.m, label %bb.l, !prof !14, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @90, i64 %i.be, i64 %i.bf) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.bm = ptrtoint ptr %i.ba to i64, !nosanitize !10 ; 2 uses
  %i.bn = and i64 %i.bm, 3, !nosanitize !10
  %i.bo = icmp eq i64 %i.bn, 0, !nosanitize !10
  %i.bp = and i1 %i.bg, %i.bo
  br i1 %i.bp, label %.split.i, label %bb.n, !prof !14, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @91, i64 %i.bm) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split.i:                                         ; preds = %bb.m
  %i.bq = load i32, ptr %i.ba, align 4, !tbaa !43
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 23
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = mul i64 %i.bt, 2388976653695081527      ; 2 uses
  %i.bv = lshr i64 %i.bu, 47
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = and i64 %i.bw, %i.t                     ; 4 uses
  br label %.split.split.i

.split.split.i:                                   ; preds = %.split.i, %bb.p
  %.034.i = phi i64 [ %i.cp, %bb.p ], [ %i.bx, %.split.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.fr83.i, i64 %.034.i ; 3 uses
  %i.bz = add i64 %.034.i, 4611686018427387904
  %i.ca = icmp sgt i64 %i.bz, -1
  %i.cb = shl i64 %.034.i, 1
  %i.cc = add i64 %i.cb, %i.ab, !nosanitize !10   ; 2 uses
  %i.cd = icmp uge i64 %i.cc, %i.ab, !nosanitize !10
  %i.ce = and i1 %i.ca, %i.cd, !nosanitize !10
  br i1 %i.ce, label %bb.o, label %.split78.us.i, !prof !14, !nosanitize !10

.split78.us.i:                                    ; preds = %.split.split.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @92, i64 %i.ab, i64 %i.cc) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %.split.split.i
  %i.cf = ptrtoint ptr %i.by to i64, !nosanitize !10 ; 2 uses
  %i.cg = and i64 %i.cf, 1, !nosanitize !10
  %i.ch = icmp eq i64 %i.cg, 0, !nosanitize !10
  br i1 %i.ch, label %bb.p, label %.split81.i, !prof !14, !nosanitize !10

.split81.i:                                       ; preds = %bb.o
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @93, i64 %i.cf) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  %i.ci = load i16, ptr %i.by, align 2, !tbaa !42 ; 2 uses
  %i.cj = and i16 %i.ci, 2047
  %i.ck = zext nneg i16 %i.cj to i64              ; 2 uses
  %i.cl = add nuw nsw i64 %i.ck, 1
  %i.cm = mul nuw nsw i64 %i.cl, %i.ck
  %i.cn = lshr i64 %i.cm, 1
  %i.co = add i64 %i.cn, %i.bx
  %i.cp = and i64 %i.co, %i.t                     ; 2 uses
  %i.cq = icmp eq i64 %i.cp, %i.u
  br i1 %i.cq, label %bb.q, label %.split.split.i

bb.q:                                             ; preds = %bb.p
  %i.cr = and i16 %i.ci, -2048
  %i.cs = and i16 %i.an, 2047
  %i.ct = or disjoint i16 %i.cs, %i.cr
  store i16 %i.ct, ptr %i.by, align 2, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.cu = call fastcc zeroext i1 @b3NameMap_find_first_empty(ptr noundef nonnull %1, i64 noundef %i.bx, ptr noundef %i.a, ptr noundef %i.b)
  br i1 %i.cu, label %bb.r, label %b3NameMap_evict.exit, !prof !44

bb.r:                                             ; preds = %bb.q
  %i.cv = load i16, ptr %i.b, align 2, !tbaa !42
  %i.cw = call fastcc i64 @b3NameMap_find_insert_location_in_chain(ptr noundef nonnull %1, i64 noundef %i.bx, i16 noundef zeroext %i.cv) ; 2 uses
  %i.cx = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 4 uses
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !48  ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cy ; 2 uses
  %i.da = add i64 %i.cy, 1152921504606846976
  %i.db = icmp ult i64 %i.da, 2305843009213693952
  %i.dc = shl i64 %i.cy, 3
  %i.dd = ptrtoint ptr %i.cx to i64, !nosanitize !10 ; 6 uses
  %i.de = add i64 %i.dc, %i.dd, !nosanitize !10   ; 3 uses
  %i.df = icmp ne ptr %i.cx, null, !nosanitize !10 ; 2 uses
  %i.dg = icmp eq i64 %i.de, 0
  %i.dh = xor i1 %i.df, %i.dg
  %i.di = icmp uge i64 %i.de, %i.dd, !nosanitize !10
  %i.dj = and i1 %i.db, %i.di, !nosanitize !10
  %i.dk = and i1 %i.dh, %i.dj, !nosanitize !10
  br i1 %i.dk, label %bb.t, label %bb.s, !prof !14, !nosanitize !10

bb.s:                                             ; preds = %bb.r
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @94, i64 %i.dd, i64 %i.de) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.t:                                             ; preds = %bb.r
  %i.dl = ptrtoint ptr %i.cz to i64, !nosanitize !10 ; 2 uses
  %i.dm = and i64 %i.dl, 3, !nosanitize !10
  %i.dn = icmp eq i64 %i.dm, 0, !nosanitize !10
  %i.do = and i1 %i.df, %i.dn
  br i1 %i.do, label %bb.v, label %bb.u, !prof !14, !nosanitize !10

bb.u:                                             ; preds = %bb.t
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @95, i64 %i.dl) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.v:                                             ; preds = %bb.t
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.u ; 2 uses
  %i.dq = add i64 %i.bd, %i.dd, !nosanitize !10   ; 2 uses
  %.not57.i = icmp ult i64 %i.dq, %i.dd, !nosanitize !10
  br i1 %.not57.i, label %bb.w, label %bb.x, !prof !11, !nosanitize !10

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @96, i64 %i.dd, i64 %i.dq) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.x:                                             ; preds = %bb.v
  %i.dr = ptrtoint ptr %i.dp to i64, !nosanitize !10 ; 2 uses
  %i.ds = and i64 %i.dr, 3, !nosanitize !10
  %i.dt = icmp eq i64 %i.ds, 0, !nosanitize !10
  br i1 %i.dt, label %bb.z, label %bb.y, !prof !14, !nosanitize !10

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @97, i64 %i.dr) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.z:                                             ; preds = %bb.x
  %i.du = load i64, ptr %i.dp, align 4
  store i64 %i.du, ptr %i.cz, align 4
  %i.dv = load ptr, ptr %i.v, align 8, !tbaa !22  ; 6 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.u ; 2 uses
  %i.dx = ptrtoint ptr %i.dv to i64, !nosanitize !10 ; 10 uses
  %i.dy = add i64 %i.aa, %i.dx, !nosanitize !10   ; 3 uses
  %i.dz = icmp ne ptr %i.dv, null, !nosanitize !10 ; 2 uses
  %i.ea = icmp eq i64 %i.dy, 0
  %i.eb = xor i1 %i.dz, %i.ea
  %i.ec = icmp uge i64 %i.dy, %i.dx, !nosanitize !10
  %i.ed = and i1 %i.ec, %i.eb, !nosanitize !10
  br i1 %i.ed, label %bb.ab, label %bb.aa, !prof !14, !nosanitize !10

bb.aa:                                            ; preds = %bb.z
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @98, i64 %i.dx, i64 %i.dy) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ab:                                            ; preds = %bb.z
  %i.ee = ptrtoint ptr %i.dw to i64, !nosanitize !10 ; 2 uses
  %i.ef = and i64 %i.ee, 1, !nosanitize !10
  %i.eg = icmp eq i64 %i.ef, 0, !nosanitize !10
  %i.eh = and i1 %i.dz, %i.eg
  br i1 %i.eh, label %bb.ad, label %bb.ac, !prof !14, !nosanitize !10

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @99, i64 %i.ee) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ad:                                            ; preds = %bb.ab
  %i.ei = load i16, ptr %i.dw, align 2, !tbaa !42
  %i.ej = and i16 %i.ei, -4096
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.cw ; 4 uses
  %i.el = shl nsw i64 %i.cw, 1
  %i.em = add i64 %i.el, %i.dx, !nosanitize !10   ; 3 uses
  %.not58.i = icmp ult i64 %i.em, %i.dx, !nosanitize !10
  br i1 %.not58.i, label %bb.ae, label %bb.af, !prof !11, !nosanitize !10

bb.ae:                                            ; preds = %bb.ad
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @100, i64 %i.dx, i64 %i.em) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.af:                                            ; preds = %bb.ad
  %i.en = ptrtoint ptr %i.ek to i64, !nosanitize !10 ; 2 uses
  %i.eo = and i64 %i.en, 1, !nosanitize !10
  %i.ep = icmp eq i64 %i.eo, 0, !nosanitize !10
  br i1 %i.ep, label %bb.ah, label %bb.ag, !prof !14, !nosanitize !10

bb.ag:                                            ; preds = %bb.af
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @101, i64 %i.en) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ah:                                            ; preds = %bb.af
  %i.eq = load i16, ptr %i.ek, align 2, !tbaa !42
  %i.er = and i16 %i.eq, 2047
  %i.es = or disjoint i16 %i.er, %i.ej
  %6 = load i64, ptr %i.a, align 8, !tbaa !48     ; 3 uses
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %6 ; 2 uses
  %7 = add i64 %6, 4611686018427387904
  %8 = icmp sgt i64 %7, -1
  %i.eu = shl i64 %6, 1
  %i.ev = add i64 %i.eu, %i.dx, !nosanitize !10   ; 2 uses
  %9 = icmp uge i64 %i.ev, %i.dx, !nosanitize !10
  %10 = and i1 %8, %9, !nosanitize !10
  br i1 %10, label %bb.aj, label %bb.ai, !prof !14, !nosanitize !10

bb.ai:                                            ; preds = %bb.ah
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @102, i64 %i.dx, i64 %i.ev) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.aj:                                            ; preds = %bb.ah
  %i.ew = ptrtoint ptr %i.et to i64, !nosanitize !10 ; 2 uses
  %i.ex = and i64 %i.ew, 1, !nosanitize !10
  %i.ey = icmp eq i64 %i.ex, 0, !nosanitize !10
  br i1 %i.ey, label %bb.al, label %bb.ak, !prof !14, !nosanitize !10

bb.ak:                                            ; preds = %bb.aj
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @103, i64 %i.ew) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.al:                                            ; preds = %bb.aj
  store i16 %i.es, ptr %i.et, align 2, !tbaa !42
  %.not59.i.a = icmp eq i64 %i.em, 0
  br i1 %.not59.i.a, label %bb.am, label %b3NameMap_evict.exit.thread, !prof !11, !nosanitize !10

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @104, i64 %i.dx, i64 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

b3NameMap_evict.exit.thread:                      ; preds = %bb.al
  %i.ez = load i16, ptr %i.ek, align 2, !tbaa !42
  %i.fa = and i16 %i.ez, -2048
  %i.fb = load i16, ptr %i.b, align 2, !tbaa !42
  %i.fc = or i16 %i.fa, %i.fb
  store i16 %i.fc, ptr %i.ek, align 2, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %._crit_edge262

b3NameMap_evict.exit:                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.an

bb.an:                                            ; preds = %b3NameMap_evict.exit, %b3NameMap_bucket_count.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !alias.scope !71
  br label %bb.db

._crit_edge262:                                   ; preds = %b3NameMap_evict.exit.thread, %bb.j
  %i.fd = phi ptr [ %i.dv, %b3NameMap_evict.exit.thread ], [ %.fr83.i, %bb.j ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !21 ; 3 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.u ; 4 uses
  %i.fh = add i64 %i.u, 1152921504606846976
  %i.fi = icmp ult i64 %i.fh, 2305843009213693952
  %i.fj = shl i64 %i.u, 3
  %i.fk = ptrtoint ptr %i.ff to i64, !nosanitize !10 ; 4 uses
  %i.fl = add i64 %i.fj, %i.fk, !nosanitize !10   ; 3 uses
  %i.fm = icmp ne ptr %i.ff, null, !nosanitize !10 ; 2 uses
  %i.fn = icmp eq i64 %i.fl, 0                    ; 2 uses
  %i.fo = xor i1 %i.fm, %i.fn
  %i.fp = icmp uge i64 %i.fl, %i.fk, !nosanitize !10
  %i.fq = and i1 %i.fi, %i.fp, !nosanitize !10
  %i.fr = and i1 %i.fo, %i.fq, !nosanitize !10
  br i1 %i.fr, label %bb.ap, label %bb.ao, !prof !14, !nosanitize !10

bb.ao:                                            ; preds = %._crit_edge262
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @58, i64 %i.fk, i64 %i.fl) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ap:                                            ; preds = %._crit_edge262
  %i.fs = ptrtoint ptr %i.fg to i64, !nosanitize !10 ; 2 uses
  %i.ft = and i64 %i.fs, 3, !nosanitize !10
  %i.fu = icmp eq i64 %i.ft, 0, !nosanitize !10
  %i.fv = and i1 %i.fm, %i.fu
  br i1 %i.fv, label %bb.ar, label %bb.aq, !prof !14, !nosanitize !10

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @59, i64 %i.fs) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ar:                                            ; preds = %bb.ap
  store i32 %2, ptr %i.fg, align 4, !tbaa !43
  %i.fw = ptrtoint ptr %3 to i64, !nosanitize !10 ; 2 uses
  %i.fx = and i64 %i.fw, 3, !nosanitize !10
  %i.fy = icmp eq i64 %i.fx, 0, !nosanitize !10
  br i1 %i.fy, label %bb.at, label %bb.as, !prof !14, !nosanitize !10

bb.as:                                            ; preds = %bb.ar
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @60, i64 %i.fw) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.at:                                            ; preds = %bb.ar
  br i1 %i.fn, label %bb.au, label %bb.av, !prof !11, !nosanitize !10

bb.au:                                            ; preds = %bb.at
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @61, i64 %i.fk, i64 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.av:                                            ; preds = %bb.at
  %i.fz = load i32, ptr %3, align 4, !tbaa !39
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !38
  %i.gb = or i16 %i.j, 4095
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %i.u ; 3 uses
  %i.gd = ptrtoint ptr %i.fd to i64, !nosanitize !10 ; 7 uses
  %i.ge = add i64 %i.aa, %i.gd, !nosanitize !10   ; 3 uses
  %.not292.a = icmp eq i64 %i.ge, 0
  %.not291 = icmp ult i64 %i.ge, %i.gd, !nosanitize !10
  br i1 %.not291, label %bb.aw, label %bb.ax, !prof !11, !nosanitize !10

bb.aw:                                            ; preds = %bb.av
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @62, i64 %i.gd, i64 %i.ge) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ax:                                            ; preds = %bb.av
  %i.gf = ptrtoint ptr %i.gc to i64, !nosanitize !10 ; 2 uses
  %i.gg = and i64 %i.gf, 1, !nosanitize !10
  %i.gh = icmp eq i64 %i.gg, 0, !nosanitize !10
  br i1 %i.gh, label %bb.az, label %bb.ay, !prof !14, !nosanitize !10

bb.ay:                                            ; preds = %bb.ax
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @63, i64 %i.gf) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.az:                                            ; preds = %bb.ax
  store i16 %i.gb, ptr %i.gc, align 2, !tbaa !42
  %i.gi = load i64, ptr %1, align 8, !tbaa !19
  %i.gj = add i64 %i.gi, 1
  store i64 %i.gj, ptr %1, align 8, !tbaa !19
  store ptr %i.fg, ptr %0, align 8, !tbaa !36
  br i1 %.not292.a, label %bb.ba, label %bb.bb, !prof !11, !nosanitize !10

bb.ba:                                            ; preds = %bb.az
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @64, i64 %i.gd, i64 0) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.bb:                                            ; preds = %bb.az
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gc, ptr %i.gk, align 8, !tbaa !34
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gm = load i64, ptr %i.s, align 8, !tbaa !20  ; 3 uses
  %i.gn = add i64 %i.gm, 4611686018427387904
  %i.go = icmp sgt i64 %i.gn, -1
  %i.gp = shl i64 %i.gm, 1
  %i.gq = add i64 %i.gp, %i.gd, !nosanitize !10   ; 2 uses
  %i.gr = icmp uge i64 %i.gq, %i.gd, !nosanitize !10
  %i.gs = and i1 %i.go, %i.gr, !nosanitize !10
  br i1 %i.gs, label %bb.bd, label %bb.bc, !prof !14, !nosanitize !10

bb.bc:                                            ; preds = %bb.bb
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @65, i64 %i.gd, i64 %i.gq) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.bd:                                            ; preds = %bb.bb
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %i.gm ; 3 uses
  %i.gu = ptrtoint ptr %i.gt to i64, !nosanitize !10 ; 2 uses
  %i.gv = add i64 %i.gu, 2, !nosanitize !10       ; 2 uses
  %i.gw = icmp ne i64 %i.gv, 0
  %i.gx = icmp ult ptr %i.gt, inttoptr (i64 -2 to ptr)
  %i.gy = and i1 %i.gx, %i.gw, !nosanitize !10
  br i1 %i.gy, label %bb.bf, label %bb.be, !prof !14, !nosanitize !10

bb.be:                                            ; preds = %bb.bd
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @66, i64 %i.gu, i64 %i.gv) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.bf:                                            ; preds = %bb.bd
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 2
  store ptr %i.gz, ptr %i.gl, align 8, !tbaa !35
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.u, ptr %i.ha, align 8, !tbaa !46
  br label %bb.db

bb.bg:                                            ; preds = %bb.g
  br i1 %4, label %b3NameMap_bucket_count.exit110, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bg
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.bn
  %.not113175.us = phi i1 [ %.not113.us, %bb.bn ], [ %i.ae, %.lr.ph ] ; 2 uses
  %i.hc = phi i64 [ %i.ip, %bb.bn ], [ %i.ac, %.lr.ph ] ; 2 uses
  %i.hd = phi ptr [ %i.il, %bb.bn ], [ %i.x, %.lr.ph ] ; 3 uses
  %.0174.us = phi i64 [ %i.ik, %bb.bn ], [ %i.u, %.lr.ph ] ; 3 uses
  %i.he = ptrtoint ptr %i.hd to i64, !nosanitize !10 ; 2 uses
  %i.hf = and i64 %i.he, 1, !nosanitize !10
  %i.hg = icmp eq i64 %i.hf, 0, !nosanitize !10
  br i1 %i.hg, label %bb.bh, label %.split.us, !prof !14, !nosanitize !10

bb.bh:                                            ; preds = %.lr.ph.split.us
  %i.hh = load i16, ptr %i.hd, align 2, !tbaa !42 ; 2 uses
  %i.hi = and i16 %i.hh, -4096
  %i.hj = icmp eq i16 %i.hi, %i.k
  br i1 %i.hj, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.hk = load ptr, ptr %i.hb, align 8, !tbaa !21 ; 3 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %.0174.us ; 4 uses
  %i.hm = add nsw i64 %.0174.us, 1152921504606846976
  %i.hn = icmp ult i64 %i.hm, 2305843009213693952
  %i.ho = shl i64 %.0174.us, 3
  %i.hp = ptrtoint ptr %i.hk to i64, !nosanitize !10 ; 5 uses
  %i.hq = add i64 %i.ho, %i.hp, !nosanitize !10   ; 3 uses
end_hunk_0
