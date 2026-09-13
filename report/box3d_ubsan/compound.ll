Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/compound?download=true
inline.NumInlined: 170
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3GetCompoundChild:bb.a
  %i.an = extractvalue { i32, i1 } %i.am, 0, !nosanitize !9 ; 5 uses
  %i.ao = extractvalue { i32, i1 } %i.am, 1, !nosanitize !9
  br i1 %i.ao, label %bb.m, label %bb.n, !prof !20, !nosanitize !9

bb.m:                                             ; preds = %._crit_edge48
  %i.ap = zext i32 %i.u to i64, !nosanitize !9
  %i.aq = zext i32 %i.al to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @33, i64 %i.ap, i64 %i.aq) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %._crit_edge48
  %i.ar = icmp sgt i32 %i.an, -1
  br i1 %i.ar, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.at = load i32, ptr %i.as, align 8, !tbaa !53
  %i.au = icmp slt i32 %i.an, %i.at
  br i1 %i.au, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @b3GetCompoundMesh(ptr dead_on_unwind nonnull writable sret(%struct.b3CompoundMesh) align 8 %5, ptr noundef nonnull %1, i32 noundef %i.an)
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.aw = load ptr, ptr %5, align 8, !tbaa !42
  store ptr %i.aw, ptr %0, align 8, !tbaa !138
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ay, ptr noundef nonnull align 4 dereferenceable(12) %i.ax, i64 12, i1 false), !tbaa.struct !43
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bc, ptr noundef nonnull align 8 dereferenceable(28) %i.bb, i64 28, i1 false), !tbaa.struct !34
  %i.bd = ptrtoint ptr %i.av to i64, !nosanitize !9 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bf = load <2 x i32>, ptr %i.av, align 8, !tbaa !24
  store <2 x i32> %i.bf, ptr %i.be, align 4, !tbaa !24
  %.not = icmp eq ptr %i.av, inttoptr (i64 -8 to ptr)
  br i1 %.not, label %bb.q, label %bb.r, !prof !20, !nosanitize !9

bb.q:                                             ; preds = %bb.p
  %i.bg = add i64 %i.bd, 8, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @34, i64 %i.bd, i64 %i.bg) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bj = load i32, ptr %i.bh, align 8, !tbaa !24
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !24
  %.not35 = icmp ugt ptr %i.av, inttoptr (i64 -13 to ptr)
  br i1 %.not35, label %bb.s, label %bb.t, !prof !20, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  %i.bk = add i64 %i.bd, 12, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @35, i64 %i.bd, i64 %i.bk) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.t:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 60
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !24
  store i32 %i.bn, ptr %i.bm, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 4, ptr %i.bo, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.w

._crit_edge:                                      ; preds = %bb.o, %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !53 ; 2 uses
  %i.br = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.an, i32 %i.bq), !nosanitize !9 ; 2 uses
  %i.bs = extractvalue { i32, i1 } %i.br, 1, !nosanitize !9
  br i1 %i.bs, label %bb.u, label %bb.v, !prof !20, !nosanitize !9

bb.u:                                             ; preds = %._crit_edge
  %i.bt = zext i32 %i.an to i64, !nosanitize !9
  %i.bu = zext i32 %i.bq to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @36, i64 %i.bt, i64 %i.bu) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.v:                                             ; preds = %._crit_edge
  %i.bv = extractvalue { i32, i1 } %i.br, 0, !nosanitize !9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @b3GetCompoundSphere(ptr dead_on_unwind nonnull writable sret(%struct.b3CompoundSphere) align 4 %6, ptr noundef nonnull %1, i32 noundef %i.bv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !54
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bx, ptr noundef nonnull align 8 dereferenceable(28) @b3Transform_identity, i64 28, i1 false), !tbaa.struct !34
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !57
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !24
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %scevgep, i8 0, i64 12, i1 false), !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 5, ptr %i.cb, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.l, %bb.e
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #2

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_sub_overflow_abort(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @b3CreateCompound(ptr noundef %0) local_unnamed_addr #5 !func_sanitize !157 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %struct.b3DynamicTree, align 8      ; 12 uses
  %2 = alloca %struct.b3MaterialMap, align 8      ; 17 uses
  %3 = alloca %struct.b3MaterialMap_itr, align 8  ; 4 uses
  %4 = alloca %struct.b3AABB, align 8             ; 4 uses
  %5 = alloca %struct.b3HullMap, align 8          ; 6 uses
  %6 = alloca %struct.b3AABB, align 8             ; 4 uses
  %7 = alloca %struct.b3MaterialMap_itr, align 8  ; 4 uses
  %8 = alloca %struct.b3HullMap_itr, align 8      ; 4 uses
  %9 = alloca %struct.b3MeshMap, align 8          ; 9 uses
  %10 = alloca %struct.b3AABB, align 8            ; 4 uses
  %11 = alloca %struct.b3MaterialMap_itr, align 8 ; 12 uses
  %12 = alloca %struct.b3MeshMap_itr, align 8     ; 6 uses
  %13 = alloca %struct.b3MaterialMap_itr, align 8 ; 4 uses
  %14 = alloca %struct.b3AABB, align 8            ; 4 uses
  %i.c = icmp ne ptr %0, null, !nosanitize !9
  %i.d = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.e = and i64 %i.d, 7, !nosanitize !9
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !9
  %i.g = and i1 %i.c, %i.f, !nosanitize !9
  br i1 %i.g, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @38, i64 %i.d) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !163  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !164  ; 2 uses
  %i.l = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.i, i32 %i.k), !nosanitize !9 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 0, !nosanitize !9 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.l, 1, !nosanitize !9
  br i1 %i.n, label %bb.d, label %bb.e, !prof !20, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.o = zext i32 %i.i to i64, !nosanitize !9
  %i.p = zext i32 %i.k to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @39, i64 %i.o, i64 %i.p) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !165  ; 2 uses
  %i.s = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.m, i32 %i.r), !nosanitize !9 ; 2 uses
  %i.t = extractvalue { i32, i1 } %i.s, 0, !nosanitize !9 ; 4 uses
  %i.u = extractvalue { i32, i1 } %i.s, 1, !nosanitize !9
  br i1 %i.u, label %bb.f, label %bb.g, !prof !20, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  %i.v = zext i32 %i.m to i64, !nosanitize !9
  %i.w = zext i32 %i.r to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @40, i64 %i.v, i64 %i.w) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !166  ; 2 uses
  %i.z = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.t, i32 %i.y), !nosanitize !9 ; 2 uses
  %i.aa = extractvalue { i32, i1 } %i.z, 0, !nosanitize !9 ; 2 uses
  %i.ab = extractvalue { i32, i1 } %i.z, 1, !nosanitize !9
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !20, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  %i.ac = zext i32 %i.t to i64, !nosanitize !9
  %i.ad = zext i32 %i.y to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @41, i64 %i.ac, i64 %i.ad) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp sgt i32 %i.aa, 1048575
  br i1 %i.ae, label %bb.hs, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @b3DynamicTree_Create(ptr dead_on_unwind nonnull writable sret(%struct.b3DynamicTree) align 8 %1, i32 noundef %i.aa) #13
  %i.af = load i32, ptr %i.h, align 8, !tbaa !163 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 5                    ; 3 uses
  %i.ai = call ptr @b3AllocZeroed(i64 noundef %i.ah) #13
  %.fr = freeze ptr %i.ai                         ; 7 uses
  %i.aj = load i32, ptr %i.j, align 8, !tbaa !164 ; 7 uses
  %i.ak = sext i32 %i.aj to i64                   ; 3 uses
  %i.al = mul nsw i64 %i.ak, 36                   ; 4 uses
  %i.am = call ptr @b3AllocZeroed(i64 noundef %i.al) #13
  %.fr2345 = freeze ptr %i.am                     ; 11 uses
  %i.an = load i32, ptr %i.x, align 8, !tbaa !166 ; 6 uses
  %i.ao = sext i32 %i.an to i64                   ; 3 uses
  %i.ap = mul nsw i64 %i.ao, 60                   ; 4 uses
  %i.aq = call ptr @b3AllocZeroed(i64 noundef %i.ap) #13
  %.fr2351 = freeze ptr %i.aq                     ; 12 uses
  %i.ar = load i32, ptr %i.q, align 8, !tbaa !165 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.as, 20                   ; 3 uses
  %i.au = call ptr @b3AllocZeroed(i64 noundef %i.at) #13
  %.fr2336 = freeze ptr %i.au                     ; 7 uses
  %i.av = load i32, ptr %i.x, align 8, !tbaa !166 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.split, label %b3MaterialMap_init.exit

.lr.ph.split:                                     ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !167
  %.fr2330 = freeze ptr %i.ay                     ; 3 uses
  %i.az = ptrtoint ptr %.fr2330 to i64, !nosanitize !9 ; 3 uses
  %.not2331 = icmp eq ptr %.fr2330, null, !nosanitize !9
  br i1 %.not2331, label %.split1883, label %.lr.ph.split.split.preheader, !prof !20

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count = zext nneg i32 %i.av to i64
  br label %.lr.ph.split.split

bb.k:                                             ; preds = %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = extractvalue { i32, i1 } %i.cb, 0, !nosanitize !9 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %b3MaterialMap_init.exit, label %.lr.ph.split.split, !llvm.loop !139

b3MaterialMap_init.exit:                          ; preds = %bb.k, %bb.j
  %.0346.lcssa = phi i32 [ %i.t, %bb.j ], [ %i.ba, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store ptr @vt_empty_placeholder_metadatum, ptr %i.bd, align 8, !tbaa !61
  %i.be = sext i32 %.0346.lcssa to i64            ; 2 uses
  %i.bf = icmp eq i32 %.0346.lcssa, 0
  br i1 %i.bf, label %b3MaterialMap_reserve.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %b3MaterialMap_init.exit
  %i.bg = uitofp i64 %i.be to double
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i.i
  %.0.i.i = phi i64 [ %i.bk, %bb.l ], [ 8, %.preheader.i.i ] ; 4 uses
  %i.bh = uitofp i64 %.0.i.i to double
  %i.bi = fmul nnan double %i.bh, 9.000000e-01
  %i.bj = fcmp olt double %i.bi, %i.bg
  %i.bk = shl i64 %.0.i.i, 1
  br i1 %i.bj, label %bb.l, label %b3MaterialMap_bucket_count.exit.i, !llvm.loop !140

b3MaterialMap_bucket_count.exit.i:                ; preds = %bb.l
  %.not.i.not = icmp eq i64 %.0.i.i, 0
  br i1 %.not.i.not, label %b3MaterialMap_reserve.exit, label %bb.m

bb.m:                                             ; preds = %b3MaterialMap_bucket_count.exit.i
  %i.bl = call fastcc zeroext i1 @b3MaterialMap_rehash(ptr noundef nonnull %2, i64 noundef %.0.i.i) ; 0 uses
  br label %b3MaterialMap_reserve.exit

b3MaterialMap_reserve.exit:                       ; preds = %b3MaterialMap_init.exit, %b3MaterialMap_bucket_count.exit.i, %bb.m
  %i.bm = mul nsw i64 %i.be, 40                   ; 2 uses
  %i.bn = call ptr @b3AllocZeroed(i64 noundef %i.bm) #13 ; 16 uses
  %i.bo = load i32, ptr %i.h, align 8, !tbaa !163
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph1888, label %._crit_edge

.lr.ph1888:                                       ; preds = %b3MaterialMap_reserve.exit
  %i.bq = ptrtoint ptr %.fr to i64                ; 3 uses
  %.not2333 = icmp eq ptr %.fr, null
  %i.br = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.bs = icmp ne ptr %i.bn, null                 ; 2 uses
  br i1 %.not2333, label %.split1900, label %.lr.ph1888.split, !prof !20

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.03461879 = phi i32 [ %i.t, %.lr.ph.split.split.preheader ], [ %i.ba, %bb.k ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [64 x i8], ptr %.fr2330, i64 %indvars.iv ; 2 uses
  %i.bu = shl nuw nsw i64 %indvars.iv, 6
  %i.bv = add i64 %i.bu, %i.az, !nosanitize !9    ; 2 uses
  %.not2332 = icmp ult i64 %i.bv, %i.az, !nosanitize !9
  br i1 %.not2332, label %.split.us, label %bb.n, !prof !20, !nosanitize !9

.split.us:                                        ; preds = %.lr.ph.split.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @42, i64 %i.az, i64 %i.bv) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %.lr.ph.split.split
  %i.bw = ptrtoint ptr %i.bt to i64, !nosanitize !9 ; 2 uses
  %i.bx = and i64 %i.bw, 7, !nosanitize !9
  %i.by = icmp eq i64 %i.bx, 0, !nosanitize !9
  br i1 %i.by, label %bb.o, label %.split1883, !prof !10, !nosanitize !9

.split1883:                                       ; preds = %bb.n, %.lr.ph.split
  %.us-phi1884 = phi i64 [ 0, %.lr.ph.split ], [ %i.bw, %bb.n ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @44, i64 %.us-phi1884) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !169 ; 2 uses
  %i.cb = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.03461879, i32 %i.ca), !nosanitize !9 ; 2 uses
  %i.cc = extractvalue { i32, i1 } %i.cb, 1, !nosanitize !9
  br i1 %i.cc, label %bb.p, label %bb.k, !prof !20, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  %i.cd = zext i32 %.03461879 to i64, !nosanitize !9
  %i.ce = zext i32 %i.ca to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @45, i64 %i.cd, i64 %i.ce) #12, !nosanitize !9
  unreachable, !nosanitize !9

._crit_edge.loopexit:                             ; preds = %bb.ae
  %i.cf = trunc nuw nsw i64 %indvars.iv.next3698 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %b3MaterialMap_reserve.exit
  %.0347.lcssa = phi i32 [ 0, %b3MaterialMap_reserve.exit ], [ %i.cf, %._crit_edge.loopexit ] ; 5 uses
  %.0342.lcssa = phi i32 [ 0, %b3MaterialMap_reserve.exit ], [ %.1343, %._crit_edge.loopexit ] ; 2 uses
  %i.cg = shl nsw i64 %i.ak, 4                    ; 2 uses
  %i.ch = call ptr @b3AllocZeroed(i64 noundef %i.cg) #13
  %.fr2339 = freeze ptr %i.ch                     ; 13 uses
  %i.ci = icmp sgt i32 %i.aj, 0                   ; 2 uses
  br i1 %i.ci, label %.split1907.preheader, label %bb.bk

.lr.ph1888.split:                                 ; preds = %.lr.ph1888, %bb.ae
  %indvars.iv3697 = phi i64 [ %indvars.iv.next3698, %bb.ae ], [ 0, %.lr.ph1888 ] ; 6 uses
  %.03421886 = phi i32 [ %.1343, %bb.ae ], [ 0, %.lr.ph1888 ] ; 7 uses
  %i.cj = load ptr, ptr %0, align 8, !tbaa !170   ; 3 uses
  %i.ck = getelementptr inbounds nuw [72 x i8], ptr %i.cj, i64 %indvars.iv3697 ; 4 uses
  %i.cl = mul nuw nsw i64 %indvars.iv3697, 72
  %i.cm = ptrtoint ptr %i.cj to i64, !nosanitize !9 ; 3 uses
  %i.cn = add i64 %i.cl, %i.cm, !nosanitize !9    ; 3 uses
  %i.co = icmp ne ptr %i.cj, null, !nosanitize !9 ; 2 uses
  %i.cp = icmp eq i64 %i.cn, 0
  %i.cq = xor i1 %i.co, %i.cp
  %i.cr = icmp uge i64 %i.cn, %i.cm, !nosanitize !9
  %i.cs = and i1 %i.cr, %i.cq, !nosanitize !9
  br i1 %i.cs, label %bb.q, label %.split1892.us, !prof !10, !nosanitize !9

.split1892.us:                                    ; preds = %.lr.ph1888.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @46, i64 %i.cm, i64 %i.cn) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %.lr.ph1888.split
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %.fr, i64 %indvars.iv3697 ; 3 uses
  %i.cu = shl nuw nsw i64 %indvars.iv3697, 5
  %i.cv = add i64 %i.cu, %i.bq, !nosanitize !9    ; 2 uses
  %.not2334 = icmp ult i64 %i.cv, %i.bq, !nosanitize !9
  br i1 %.not2334, label %.split1896.us, label %bb.r, !prof !20, !nosanitize !9

.split1896.us:                                    ; preds = %bb.q
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @47, i64 %i.bq, i64 %i.cv) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  %i.cw = ptrtoint ptr %i.ct to i64, !nosanitize !9 ; 2 uses
  %i.cx = and i64 %i.cw, 3, !nosanitize !9
  %i.cy = icmp eq i64 %i.cx, 0, !nosanitize !9
  br i1 %i.cy, label %bb.s, label %.split1900, !prof !10, !nosanitize !9

.split1900:                                       ; preds = %bb.r, %.lr.ph1888
  %.us-phi1901 = phi i64 [ 0, %.lr.ph1888 ], [ %i.cw, %bb.r ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @49, i64 %.us-phi1901) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  %i.cz = ptrtoint ptr %i.ck to i64, !nosanitize !9 ; 2 uses
  %i.da = and i64 %i.cz, 7, !nosanitize !9
  %i.db = icmp eq i64 %i.da, 0, !nosanitize !9
  %i.dc = and i1 %i.co, %i.db
  br i1 %i.dc, label %bb.u, label %bb.t, !prof !10, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @51, i64 %i.cz) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ct, ptr noundef nonnull align 8 dereferenceable(28) %i.ck, i64 28, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 2 uses
  call fastcc void @b3MaterialMap_get_or_insert(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %2, ptr noundef nonnull %i.dd, i32 noundef %.03421886)
  %i.de = load ptr, ptr %3, align 8, !tbaa !64    ; 3 uses
  %i.df = icmp ne ptr %i.de, null, !nosanitize !9
  %i.dg = ptrtoint ptr %i.de to i64, !nosanitize !9 ; 2 uses
  %i.dh = and i64 %i.dg, 7, !nosanitize !9
  %i.di = icmp eq i64 %i.dh, 0, !nosanitize !9
  %i.dj = and i1 %i.df, %i.di, !nosanitize !9
  br i1 %i.dj, label %bb.w, label %bb.v, !prof !10, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @54, i64 %i.dg) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %bb.u
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ct, i64 28
  %i.dm = load i32, ptr %i.dk, align 8, !tbaa !66 ; 2 uses
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !48
  %i.dn = icmp eq i32 %i.dm, %.03421886
  br i1 %i.dn, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.do = sext i32 %.03421886 to i64              ; 2 uses
  %i.dp = getelementptr inbounds [40 x i8], ptr %i.bn, i64 %i.do ; 2 uses
  %i.dq = mul nsw i64 %i.do, 40
  %i.dr = add i64 %i.dq, %i.br, !nosanitize !9    ; 3 uses
  %i.ds = icmp eq i64 %i.dr, 0
  %i.dt = xor i1 %i.bs, %i.ds
  %i.du = icmp uge i64 %i.dr, %i.br, !nosanitize !9
  %i.dv = icmp slt i32 %.03421886, 0
  %i.dw = xor i1 %i.dv, %i.du
  %i.dx = and i1 %i.dt, %i.dw, !nosanitize !9
  br i1 %i.dx, label %bb.z, label %bb.y, !prof !10, !nosanitize !9

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @55, i64 %i.br, i64 %i.dr) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.z:                                             ; preds = %bb.x
  %i.dy = ptrtoint ptr %i.dp to i64, !nosanitize !9 ; 2 uses
  %i.dz = and i64 %i.dy, 7, !nosanitize !9
  %i.ea = icmp eq i64 %i.dz, 0, !nosanitize !9
  %i.eb = and i1 %i.bs, %i.ea
  br i1 %i.eb, label %bb.ab, label %bb.aa, !prof !10, !nosanitize !9

bb.aa:                                            ; preds = %bb.z
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @57, i64 %i.dy) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dp, ptr noundef nonnull align 8 dereferenceable(40) %i.dd, i64 40, i1 false), !tbaa.struct !171
  %i.ec = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.03421886, i32 1), !nosanitize !9 ; 2 uses
  %i.ed = extractvalue { i32, i1 } %i.ec, 1, !nosanitize !9
  br i1 %i.ed, label %bb.ac, label %bb.ad, !prof !20, !nosanitize !9

bb.ac:                                            ; preds = %bb.ab
  %i.ee = zext nneg i32 %.03421886 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @59, i64 %i.ee, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ad:                                            ; preds = %bb.ab
  %i.ef = extractvalue { i32, i1 } %i.ec, 0, !nosanitize !9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.w, %bb.ad
  %.1343 = phi i32 [ %i.ef, %bb.ad ], [ %.03421886, %bb.w ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @b3ComputeCapsuleAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %4, ptr noundef nonnull %i.ck, ptr noundef nonnull byval(%struct.b3Transform) align 8 @b3Transform_identity) #13
  %i.eg = call i32 @b3DynamicTree_CreateProxy(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.b3AABB) align 8 %4, i64 noundef -1, i64 noundef %indvars.iv3697) #13 ; 0 uses
  %indvars.iv.next3698 = add nuw nsw i64 %indvars.iv3697, 1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.eh = load i32, ptr %i.h, align 8, !tbaa !163
  %i.ei = sext i32 %i.eh to i64
  %i.ej = icmp slt i64 %indvars.iv.next3698, %i.ei
  br i1 %i.ej, label %.lr.ph1888.split, label %._crit_edge.loopexit, !llvm.loop !141

.split1907.preheader:                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @b3HullMap_init(ptr noundef nonnull %5) #13
  %i.ek = call zeroext i1 @b3HullMap_reserve(ptr noundef nonnull %5, i64 noundef %i.ak) #13 ; 0 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.em = ptrtoint ptr %.fr2345 to i64            ; 3 uses
  %i.en = icmp ne ptr %.fr2345, null              ; 2 uses
  %i.eo = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.ep = icmp ne ptr %i.bn, null                 ; 2 uses
  %i.eq = ptrtoint ptr %.fr2339 to i64            ; 3 uses
  %i.er = icmp ne ptr %.fr2339, null              ; 2 uses
  %i.es = zext nneg i32 %.0347.lcssa to i64
  %i.et = add nuw i32 %.0347.lcssa, %i.aj
  %i.eu = sub nuw nsw i32 2147483647, %.0347.lcssa
  %wide.trip.count3709 = zext nneg i32 %i.eu to i64
  %wide.trip.count3711 = zext nneg i32 %i.aj to i64
  br label %.split1907

bb.af:                                            ; preds = %bb.bj
  call void @b3HullMap_cleanup(ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.bk

.split1907:                                       ; preds = %.split1907.preheader, %bb.bj
  %indvars.iv3704 = phi i64 [ %i.es, %.split1907.preheader ], [ %indvars.iv.next3705, %bb.bj ] ; 3 uses
  %indvars.iv3702 = phi i64 [ 0, %.split1907.preheader ], [ %indvars.iv.next3703, %bb.bj ] ; 6 uses
  %.03381905 = phi i32 [ 0, %.split1907.preheader ], [ %.1339, %bb.bj ] ; 7 uses
  %.23441904 = phi i32 [ %.0342.lcssa, %.split1907.preheader ], [ %.3, %bb.bj ] ; 7 uses
  %i.ev = load ptr, ptr %i.el, align 8, !tbaa !172 ; 3 uses
  %i.ew = getelementptr inbounds nuw [80 x i8], ptr %i.ev, i64 %indvars.iv3702 ; 4 uses
  %i.ex = mul nuw nsw i64 %indvars.iv3702, 80
  %i.ey = ptrtoint ptr %i.ev to i64, !nosanitize !9 ; 3 uses
  %i.ez = add i64 %i.ex, %i.ey, !nosanitize !9    ; 3 uses
  %i.fa = icmp ne ptr %i.ev, null, !nosanitize !9 ; 2 uses
  %i.fb = icmp eq i64 %i.ez, 0
  %i.fc = xor i1 %i.fa, %i.fb
  %i.fd = icmp uge i64 %i.ez, %i.ey, !nosanitize !9
  %i.fe = and i1 %i.fd, %i.fc, !nosanitize !9
  br i1 %i.fe, label %bb.ah, label %bb.ag, !prof !10, !nosanitize !9

bb.ag:                                            ; preds = %.split1907
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @60, i64 %i.ey, i64 %i.ez) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ah:                                            ; preds = %.split1907
  %i.ff = ptrtoint ptr %i.ew to i64, !nosanitize !9 ; 2 uses
  %i.fg = and i64 %i.ff, 7, !nosanitize !9
  %i.fh = icmp eq i64 %i.fg, 0, !nosanitize !9
  %i.fi = and i1 %i.fa, %i.fh
  br i1 %i.fi, label %bb.aj, label %bb.ai, !prof !10, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @62, i64 %i.ff) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.aj:                                            ; preds = %bb.ah
  %i.fj = load ptr, ptr %i.ew, align 8, !tbaa !175 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  call void @b3ComputeHullAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %6, ptr noundef %i.fj, ptr noundef nonnull byval(%struct.b3Transform) align 8 %i.fk) #13
  %i.fl = call i32 @b3DynamicTree_CreateProxy(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.b3AABB) align 8 %6, i64 noundef -1, i64 noundef %indvars.iv3704) #13 ; 0 uses
  %indvars.iv.next3705 = add nuw nsw i64 %indvars.iv3704, 1
  %exitcond3710 = icmp eq i64 %indvars.iv3702, %wide.trip.count3709
  br i1 %exitcond3710, label %bb.ak, label %bb.al, !prof !20, !nosanitize !9

bb.ak:                                            ; preds = %bb.aj
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @63, i64 %indvars.iv3704, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ew, i64 40 ; 2 uses
  call fastcc void @b3MaterialMap_get_or_insert(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef %2, ptr noundef nonnull %i.fm, i32 noundef %.23441904)
  %i.fn = load ptr, ptr %7, align 8, !tbaa !64    ; 3 uses
  %i.fo = icmp ne ptr %i.fn, null, !nosanitize !9
  %i.fp = ptrtoint ptr %i.fn to i64, !nosanitize !9 ; 2 uses
  %i.fq = and i64 %i.fp, 7, !nosanitize !9
  %i.fr = icmp eq i64 %i.fq, 0, !nosanitize !9
  %i.fs = and i1 %i.fo, %i.fr, !nosanitize !9
  br i1 %i.fs, label %bb.an, label %bb.am, !prof !10, !nosanitize !9

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @64, i64 %i.fp) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.an:                                            ; preds = %bb.al
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !66 ; 2 uses
  %i.fv = getelementptr inbounds nuw [36 x i8], ptr %.fr2345, i64 %indvars.iv3702 ; 4 uses
  %i.fw = mul nuw nsw i64 %indvars.iv3702, 36
  %i.fx = add i64 %i.fw, %i.em, !nosanitize !9    ; 3 uses
  %i.fy = icmp eq i64 %i.fx, 0
  %i.fz = xor i1 %i.en, %i.fy
  %i.ga = icmp uge i64 %i.fx, %i.em, !nosanitize !9
  %i.gb = and i1 %i.ga, %i.fz, !nosanitize !9
  br i1 %i.gb, label %bb.ap, label %bb.ao, !prof !10, !nosanitize !9

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @65, i64 %i.em, i64 %i.fx) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ap:                                            ; preds = %bb.an
  %i.gc = ptrtoint ptr %i.fv to i64, !nosanitize !9 ; 2 uses
  %i.gd = and i64 %i.gc, 3, !nosanitize !9
  %i.ge = icmp eq i64 %i.gd, 0, !nosanitize !9
  %i.gf = and i1 %i.en, %i.ge
  br i1 %i.gf, label %bb.ar, label %bb.aq, !prof !10, !nosanitize !9

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @67, i64 %i.gc) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ar:                                            ; preds = %bb.ap
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  store i32 %i.fu, ptr %i.gg, align 4, !tbaa !35
  %i.gh = icmp eq i32 %i.fu, %.23441904
  br i1 %i.gh, label %bb.as, label %bb.az

bb.as:                                            ; preds = %bb.ar
  %i.gi = sext i32 %.23441904 to i64              ; 2 uses
  %i.gj = getelementptr inbounds [40 x i8], ptr %i.bn, i64 %i.gi ; 2 uses
  %i.gk = mul nsw i64 %i.gi, 40
  %i.gl = add i64 %i.gk, %i.eo, !nosanitize !9    ; 3 uses
  %i.gm = icmp eq i64 %i.gl, 0
  %i.gn = xor i1 %i.ep, %i.gm
  %i.go = icmp uge i64 %i.gl, %i.eo, !nosanitize !9
  %i.gp = icmp slt i32 %.23441904, 0
  %i.gq = xor i1 %i.gp, %i.go
  %i.gr = and i1 %i.gn, %i.gq, !nosanitize !9
  br i1 %i.gr, label %bb.au, label %bb.at, !prof !10, !nosanitize !9

bb.at:                                            ; preds = %bb.as
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @68, i64 %i.eo, i64 %i.gl) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.au:                                            ; preds = %bb.as
  %i.gs = ptrtoint ptr %i.gj to i64, !nosanitize !9 ; 2 uses
  %i.gt = and i64 %i.gs, 7, !nosanitize !9
  %i.gu = icmp eq i64 %i.gt, 0, !nosanitize !9
  %i.gv = and i1 %i.ep, %i.gu
  br i1 %i.gv, label %bb.aw, label %bb.av, !prof !10, !nosanitize !9

bb.av:                                            ; preds = %bb.au
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @69, i64 %i.gs) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.aw:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gj, ptr noundef nonnull align 8 dereferenceable(40) %i.fm, i64 40, i1 false), !tbaa.struct !171
  %i.gw = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.23441904, i32 1), !nosanitize !9 ; 2 uses
  %i.gx = extractvalue { i32, i1 } %i.gw, 1, !nosanitize !9
  br i1 %i.gx, label %bb.ax, label %bb.ay, !prof !20, !nosanitize !9

bb.ax:                                            ; preds = %bb.aw
  %i.gy = zext nneg i32 %.23441904 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @70, i64 %i.gy, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ay:                                            ; preds = %bb.aw
  %i.gz = extractvalue { i32, i1 } %i.gw, 0, !nosanitize !9
  br label %bb.az

bb.az:                                            ; preds = %bb.ar, %bb.ay
  %.3 = phi i32 [ %i.gz, %bb.ay ], [ %.23441904, %bb.ar ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.fv, ptr noundef nonnull align 8 dereferenceable(28) %i.fk, i64 28, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @b3HullMap_get_or_insert(ptr dead_on_unwind nonnull writable sret(%struct.b3HullMap_itr) align 8 %8, ptr noundef nonnull %5, ptr noundef %i.fj, i32 noundef %.03381905) #13
  %i.ha = load ptr, ptr %8, align 8, !tbaa !64    ; 3 uses
  %i.hb = icmp ne ptr %i.ha, null, !nosanitize !9
  %i.hc = ptrtoint ptr %i.ha to i64, !nosanitize !9 ; 2 uses
  %i.hd = and i64 %i.hc, 7, !nosanitize !9
  %i.he = icmp eq i64 %i.hd, 0, !nosanitize !9
  %i.hf = and i1 %i.hb, %i.he, !nosanitize !9
  br i1 %i.hf, label %bb.bb, label %bb.ba, !prof !10, !nosanitize !9

bb.ba:                                            ; preds = %bb.az
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @72, i64 %i.hc) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bb:                                            ; preds = %bb.az
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fv, i64 28
  %i.hi = load i32, ptr %i.hg, align 8, !tbaa !177 ; 2 uses
  store i32 %i.hi, ptr %i.hh, align 4, !tbaa !30
  %i.hj = icmp eq i32 %i.hi, %.03381905
  br i1 %i.hj, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.hk = sext i32 %.03381905 to i64              ; 2 uses
  %i.hl = getelementptr inbounds [16 x i8], ptr %.fr2339, i64 %i.hk ; 3 uses
  %i.hm = shl nsw i64 %i.hk, 4
  %i.hn = add i64 %i.hm, %i.eq, !nosanitize !9    ; 3 uses
  %i.ho = icmp eq i64 %i.hn, 0
  %i.hp = xor i1 %i.er, %i.ho
  %i.hq = icmp uge i64 %i.hn, %i.eq, !nosanitize !9
  %i.hr = icmp slt i32 %.03381905, 0
  %i.hs = xor i1 %i.hr, %i.hq
  %i.ht = and i1 %i.hp, %i.hs, !nosanitize !9
  br i1 %i.ht, label %bb.be, label %bb.bd, !prof !10, !nosanitize !9

bb.bd:                                            ; preds = %bb.bc
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @73, i64 %i.eq, i64 %i.hn) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.be:                                            ; preds = %bb.bc
  %i.hu = ptrtoint ptr %i.hl to i64, !nosanitize !9 ; 2 uses
  %i.hv = and i64 %i.hu, 7, !nosanitize !9
  %i.hw = icmp eq i64 %i.hv, 0, !nosanitize !9
  %i.hx = and i1 %i.er, %i.hw
  br i1 %i.hx, label %bb.bg, label %bb.bf, !prof !10, !nosanitize !9

bb.bf:                                            ; preds = %bb.be
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @75, i64 %i.hu) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bg:                                            ; preds = %bb.be
  store ptr %i.fj, ptr %i.hl, align 8, !tbaa !179
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store i32 -1, ptr %i.hy, align 8, !tbaa !180
  %i.hz = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.03381905, i32 1), !nosanitize !9 ; 2 uses
  %i.ia = extractvalue { i32, i1 } %i.hz, 1, !nosanitize !9
  br i1 %i.ia, label %bb.bh, label %bb.bi, !prof !20, !nosanitize !9

bb.bh:                                            ; preds = %bb.bg
  %i.ib = zext nneg i32 %.03381905 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @76, i64 %i.ib, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bi:                                            ; preds = %bb.bg
  %i.ic = extractvalue { i32, i1 } %i.hz, 0, !nosanitize !9
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bb
  %.1339 = phi i32 [ %i.ic, %bb.bi ], [ %.03381905, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %indvars.iv.next3703 = add nuw nsw i64 %indvars.iv3702, 1 ; 2 uses
  %exitcond3712.not = icmp eq i64 %indvars.iv.next3703, %wide.trip.count3711
  br i1 %exitcond3712.not, label %bb.af, label %.split1907, !llvm.loop !142

bb.bk:                                            ; preds = %bb.af, %._crit_edge
  %.2349 = phi i32 [ %i.et, %bb.af ], [ %.0347.lcssa, %._crit_edge ]
  %.4 = phi i32 [ %.3, %bb.af ], [ %.0342.lcssa, %._crit_edge ] ; 2 uses
  %.2340 = phi i32 [ %.1339, %bb.af ], [ 0, %._crit_edge ] ; 4 uses
  %i.id = shl nsw i64 %i.ao, 4                    ; 2 uses
  %i.ie = call ptr @b3AllocZeroed(i64 noundef %i.id) #13
  %.fr2342 = freeze ptr %i.ie                     ; 13 uses
  %i.if = icmp sgt i32 %i.an, 0                   ; 2 uses
  br i1 %i.if, label %.preheader.i.i436, label %bb.db

.preheader.i.i436:                                ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.ig = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ii = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store ptr @vt_empty_placeholder_metadatum, ptr %i.ii, align 8, !tbaa !61
  %i.ij = uitofp nneg i64 %i.ao to double
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.preheader.i.i436
  %.0.i.i437 = phi i64 [ %i.in, %bb.bl ], [ 8, %.preheader.i.i436 ] ; 4 uses
  %i.ik = uitofp i64 %.0.i.i437 to double
  %i.il = fmul nnan double %i.ik, 9.000000e-01
  %i.im = fcmp olt double %i.il, %i.ij
  %i.in = shl i64 %.0.i.i437, 1
  br i1 %i.im, label %bb.bl, label %b3MeshMap_bucket_count.exit.i, !llvm.loop !143

b3MeshMap_bucket_count.exit.i:                    ; preds = %bb.bl
  %.not.i439.not = icmp eq i64 %.0.i.i437, 0
  br i1 %.not.i439.not, label %.lr.ph2194, label %bb.bm

bb.bm:                                            ; preds = %b3MeshMap_bucket_count.exit.i
  %i.io = call fastcc zeroext i1 @b3MeshMap_rehash(ptr noundef nonnull %9, i64 noundef %.0.i.i437) ; 0 uses
  br label %.lr.ph2194

.lr.ph2194:                                       ; preds = %b3MeshMap_bucket_count.exit.i, %bb.bm
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.is = ptrtoint ptr %.fr2351 to i64            ; 6 uses
  %i.it = icmp ne ptr %.fr2351, null              ; 4 uses
  %i.iu = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.iv = icmp ne ptr %i.bn, null                 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.iy = ptrtoint ptr %.fr2342 to i64            ; 3 uses
  %i.iz = icmp ne ptr %.fr2342, null              ; 2 uses
  %i.ja = sext i32 %.2349 to i64
  %wide.trip.count3725 = zext nneg i32 %i.an to i64
  br label %.lr.ph2194.split

._crit_edge2195:                                  ; preds = %bb.da
  %i.jb = load i64, ptr %i.ig, align 8, !tbaa !68 ; 2 uses
  %.not.i441 = icmp eq i64 %i.jb, 0
  br i1 %.not.i441, label %b3MeshMap_cleanup.exit, label %b3MeshMap_init.exit.i

b3MeshMap_init.exit.i:                            ; preds = %._crit_edge2195
  %i.jc = load ptr, ptr %i.ih, align 8, !tbaa !69
  %i.jd = mul i64 %i.jb, 18
  %i.je = add i64 %i.jd, 26
  call void @b3Free(ptr noundef %i.jc, i64 noundef %i.je) #13
  br label %b3MeshMap_cleanup.exit

b3MeshMap_cleanup.exit:                           ; preds = %._crit_edge2195, %b3MeshMap_init.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.db

.lr.ph2194.split:                                 ; preds = %.lr.ph2194, %bb.da
  %indvars.iv3720 = phi i64 [ %i.ja, %.lr.ph2194 ], [ %indvars.iv.next3721, %bb.da ] ; 3 uses
  %indvars.iv3718 = phi i64 [ 0, %.lr.ph2194 ], [ %indvars.iv.next3719, %bb.da ] ; 9 uses
  %.03352192 = phi i32 [ 0, %.lr.ph2194 ], [ %.1336, %bb.da ] ; 7 uses
  %.52191 = phi i32 [ %.4, %.lr.ph2194 ], [ %.6.lcssa, %bb.da ] ; 4 uses
  %i.jf = load ptr, ptr %i.ip, align 8, !tbaa !167 ; 3 uses
  %i.jg = getelementptr inbounds nuw [64 x i8], ptr %i.jf, i64 %indvars.iv3718 ; 7 uses
  %i.jh = shl nuw nsw i64 %indvars.iv3718, 6      ; 3 uses
  %i.ji = ptrtoint ptr %i.jf to i64, !nosanitize !9 ; 3 uses
  %i.jj = add i64 %i.jh, %i.ji, !nosanitize !9    ; 3 uses
  %i.jk = icmp ne ptr %i.jf, null, !nosanitize !9 ; 2 uses
  %i.jl = icmp eq i64 %i.jj, 0
  %i.jm = xor i1 %i.jk, %i.jl
  %i.jn = icmp uge i64 %i.jj, %i.ji, !nosanitize !9
  %i.jo = and i1 %i.jm, %i.jn, !nosanitize !9
  br i1 %i.jo, label %bb.bo, label %bb.bn, !prof !10, !nosanitize !9

bb.bn:                                            ; preds = %.lr.ph2194.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @77, i64 %i.ji, i64 %i.jj) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bo:                                            ; preds = %.lr.ph2194.split
  %i.jp = ptrtoint ptr %i.jg to i64, !nosanitize !9 ; 2 uses
  %i.jq = and i64 %i.jp, 7, !nosanitize !9
  %i.jr = icmp eq i64 %i.jq, 0, !nosanitize !9
  %i.js = and i1 %i.jk, %i.jr
  br i1 %i.js, label %bb.bq, label %bb.bp, !prof !10, !nosanitize !9

bb.bp:                                            ; preds = %bb.bo
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @79, i64 %i.jp) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.bq:                                            ; preds = %bb.bo
  %i.jt = load ptr, ptr %i.jg, align 8, !tbaa !181 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jg, i64 36
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.jv, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 44
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  call void @b3ComputeMeshAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %10, ptr noundef %i.jt, ptr noundef nonnull byval(%struct.b3Transform) align 8 %i.ju, <2 x float> %.sroa.0.0.copyload, float %.sroa.2.0.copyload) #13
  %i.jw = call i32 @b3DynamicTree_CreateProxy(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.b3AABB) align 8 %10, i64 noundef -1, i64 noundef %indvars.iv3720) #13 ; 0 uses
  %indvars.iv.next3721 = add nsw i64 %indvars.iv3720, 1
  %i.jx = icmp eq i64 %indvars.iv3720, 2147483647
  br i1 %i.jx, label %bb.br, label %.split1908, !prof !20, !nosanitize !9

bb.br:                                            ; preds = %bb.bq
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @80, i64 2147483647, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1908:                                       ; preds = %bb.bq
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jg, i64 56
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !169 ; 2 uses
  %i.ka = call i32 @llvm.umin.i32(i32 %i.jz, i32 4)
  %i.kb = icmp sgt i32 %i.jz, 0
  br i1 %i.kb, label %.lr.ph1911, label %.split.us.i

.lr.ph1911:                                       ; preds = %.split1908
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jg, i64 48 ; 4 uses
  %i.kd = getelementptr [60 x i8], ptr %.fr2351, i64 %indvars.iv3718 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 44 ; 2 uses
  %i.kf = ptrtoint ptr %i.ke to i64               ; 3 uses
  %i.kg = mul nuw nsw i64 %indvars.iv3718, 60
  %i.kh = add i64 %i.kg, %i.is                    ; 3 uses
  %i.ki = icmp eq i64 %i.kh, 0
  %i.kj = xor i1 %i.it, %i.ki
  %i.kk = icmp uge i64 %i.kh, %i.is
  %i.kl = and i1 %i.kj, %i.kk
  %.fr1984 = freeze i1 %i.kl
  br i1 %.fr1984, label %.lr.ph1911.split.us.split.us, label %.split.us.i446.us, !prof !10, !nosanitize !9

.lr.ph1911.split.us.split.us:                     ; preds = %.lr.ph1911
  %i.km = ptrtoint ptr %i.kd to i64               ; 2 uses
  %i.kn = and i64 %i.km, 3
  %i.ko = icmp eq i64 %i.kn, 0
  %i.kp = and i1 %i.it, %i.ko
  br i1 %i.kp, label %.lr.ph1911.split.us.split.us.split.us.preheader, label %.split.us.i446.us.us, !prof !10, !nosanitize !9

.lr.ph1911.split.us.split.us.split.us.preheader:  ; preds = %.lr.ph1911.split.us.split.us
  %wide.trip.count3716 = zext nneg i32 %i.ka to i64
  br label %.lr.ph1911.split.us.split.us.split.us

.lr.ph1911.split.us.split.us.split.us:            ; preds = %.lr.ph1911.split.us.split.us.split.us.preheader, %bb.cb
  %indvars.iv3713 = phi i64 [ 0, %.lr.ph1911.split.us.split.us.split.us.preheader ], [ %indvars.iv.next3714, %bb.cb ] ; 6 uses
  %.61909.us.us.us = phi i32 [ %.52191, %.lr.ph1911.split.us.split.us.split.us.preheader ], [ %.7.us.us.us, %bb.cb ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.kq = load ptr, ptr %i.kc, align 8, !tbaa !182 ; 3 uses
  %i.kr = mul nuw nsw i64 %indvars.iv3713, 40     ; 2 uses
  %i.ks = ptrtoint ptr %i.kq to i64, !nosanitize !9 ; 3 uses
  %i.kt = add i64 %i.kr, %i.ks, !nosanitize !9    ; 3 uses
  %i.ku = icmp ne ptr %i.kq, null, !nosanitize !9
  %i.kv = icmp eq i64 %i.kt, 0
  %i.kw = xor i1 %i.ku, %i.kv
  %i.kx = icmp uge i64 %i.kt, %i.ks, !nosanitize !9
  %i.ky = and i1 %i.kw, %i.kx, !nosanitize !9
  br i1 %i.ky, label %.split.us.i446.us.us.us, label %.split1914.us, !prof !10, !nosanitize !9

.split.us.i446.us.us.us:                          ; preds = %.lr.ph1911.split.us.split.us.split.us
  %i.kz = getelementptr inbounds nuw [40 x i8], ptr %i.kq, i64 %indvars.iv3713
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.61909.us.us.us, ptr %i.a, align 4, !tbaa !24, !noalias !183
  br label %.split.us.split.us.i452.us.us.us

.split.us.split.us.i452.us.us.us:                 ; preds = %bb.bs, %.split.us.i446.us.us.us
  call fastcc void @b3MaterialMap_insert_raw(ptr dead_on_unwind noalias nonnull writable align 8 %11, ptr noundef nonnull %2, ptr noundef %i.kz, ptr noundef %i.a, i1 noundef zeroext false)
  %.val.us.us.i453.us.us.us = load ptr, ptr %i.iq, align 8, !tbaa !70, !alias.scope !183
  %.val5.us.us.i454.us.us.us = load ptr, ptr %i.ir, align 8, !tbaa !71, !alias.scope !183
  %i.la = icmp eq ptr %.val.us.us.i453.us.us.us, %.val5.us.us.i454.us.us.us
  br i1 %i.la, label %bb.bs, label %b3MaterialMap_get_or_insert.exit.us.us.us, !prof !72

bb.bs:                                            ; preds = %.split.us.split.us.i452.us.us.us
  %i.lb = load i64, ptr %i.bb, align 8, !tbaa !68, !noalias !183 ; 2 uses
  %.not.us.us.i455.us.us.us = icmp eq i64 %i.lb, 0
  %i.lc = shl i64 %i.lb, 1
  %i.ld = add i64 %i.lc, 2
  %i.le = select i1 %.not.us.us.i455.us.us.us, i64 8, i64 %i.ld
  %i.lf = call fastcc zeroext i1 @b3MaterialMap_rehash(ptr noundef nonnull %2, i64 noundef %i.le), !noalias !183
  br i1 %i.lf, label %.split.us.split.us.i452.us.us.us, label %b3MaterialMap_get_or_insert.exit.us.us.us, !prof !73

b3MaterialMap_get_or_insert.exit.us.us.us:        ; preds = %bb.bs, %.split.us.split.us.i452.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.lg = load ptr, ptr %11, align 8, !tbaa !64   ; 3 uses
  %i.lh = icmp ne ptr %i.lg, null, !nosanitize !9
  %i.li = ptrtoint ptr %i.lg to i64, !nosanitize !9 ; 2 uses
  %i.lj = and i64 %i.li, 7, !nosanitize !9
  %i.lk = icmp eq i64 %i.lj, 0, !nosanitize !9
  %i.ll = and i1 %i.lh, %i.lk, !nosanitize !9
  br i1 %i.ll, label %bb.bt, label %.split1918.us, !prof !10, !nosanitize !9

bb.bt:                                            ; preds = %b3MaterialMap_get_or_insert.exit.us.us.us
  %i.lm = shl nuw nsw i64 %indvars.iv3713, 2
  %i.ln = add i64 %i.lm, %i.kf, !nosanitize !9    ; 2 uses
  %.not2335 = icmp ult i64 %i.ln, %i.kf, !nosanitize !9
  br i1 %.not2335, label %.split1931.us, label %bb.bu, !prof !20, !nosanitize !9

bb.bu:                                            ; preds = %bb.bt
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv3713
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !66 ; 2 uses
  store i32 %i.lq, ptr %i.lo, align 4, !tbaa !24
  %i.lr = icmp eq i32 %i.lq, %.61909.us.us.us
  br i1 %i.lr, label %bb.bv, label %bb.cb

bb.bv:                                            ; preds = %bb.bu
  %i.ls = sext i32 %.61909.us.us.us to i64        ; 2 uses
  %i.lt = getelementptr inbounds [40 x i8], ptr %i.bn, i64 %i.ls ; 2 uses
  %i.lu = mul nsw i64 %i.ls, 40
  %i.lv = add i64 %i.lu, %i.iu, !nosanitize !9    ; 3 uses
  %i.lw = icmp eq i64 %i.lv, 0
  %i.lx = xor i1 %i.iv, %i.lw
  %i.ly = icmp uge i64 %i.lv, %i.iu, !nosanitize !9
  %i.lz = icmp slt i32 %.61909.us.us.us, 0
  %i.ma = xor i1 %i.lz, %i.ly
  %i.mb = and i1 %i.lx, %i.ma, !nosanitize !9
  br i1 %i.mb, label %bb.bw, label %.split1938.us, !prof !10, !nosanitize !9

bb.bw:                                            ; preds = %bb.bv
  %i.mc = ptrtoint ptr %i.lt to i64, !nosanitize !9 ; 2 uses
  %i.md = and i64 %i.mc, 7, !nosanitize !9
  %i.me = icmp eq i64 %i.md, 0, !nosanitize !9
  %i.mf = and i1 %i.iv, %i.me
  br i1 %i.mf, label %bb.bx, label %.split1942.us, !prof !10, !nosanitize !9

bb.bx:                                            ; preds = %bb.bw
  %i.mg = load ptr, ptr %i.kc, align 8, !tbaa !182 ; 3 uses
  %i.mh = getelementptr inbounds nuw [40 x i8], ptr %i.mg, i64 %indvars.iv3713 ; 2 uses
  %i.mi = ptrtoint ptr %i.mg to i64, !nosanitize !9 ; 3 uses
  %i.mj = add i64 %i.kr, %i.mi, !nosanitize !9    ; 3 uses
  %i.mk = icmp ne ptr %i.mg, null, !nosanitize !9 ; 2 uses
  %i.ml = icmp eq i64 %i.mj, 0
  %i.mm = xor i1 %i.mk, %i.ml
  %i.mn = icmp uge i64 %i.mj, %i.mi, !nosanitize !9
  %i.mo = and i1 %i.mm, %i.mn, !nosanitize !9
  br i1 %i.mo, label %bb.by, label %.split1945.us, !prof !10, !nosanitize !9

bb.by:                                            ; preds = %bb.bx
  %i.mp = ptrtoint ptr %i.mh to i64, !nosanitize !9 ; 2 uses
  %i.mq = and i64 %i.mp, 7, !nosanitize !9
  %i.mr = icmp eq i64 %i.mq, 0, !nosanitize !9
  %i.ms = and i1 %i.mk, %i.mr
  br i1 %i.ms, label %bb.bz, label %.split1949.us, !prof !10, !nosanitize !9

bb.bz:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.lt, ptr noundef nonnull align 8 dereferenceable(40) %i.mh, i64 40, i1 false), !tbaa.struct !171
  %i.mt = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.61909.us.us.us, i32 1), !nosanitize !9 ; 2 uses
  %i.mu = extractvalue { i32, i1 } %i.mt, 1, !nosanitize !9
  br i1 %i.mu, label %.split1952.us, label %bb.ca, !prof !20, !nosanitize !9

bb.ca:                                            ; preds = %bb.bz
  %i.mv = extractvalue { i32, i1 } %i.mt, 0, !nosanitize !9
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bu
  %.7.us.us.us = phi i32 [ %i.mv, %bb.ca ], [ %.61909.us.us.us, %bb.bu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %indvars.iv.next3714 = add nuw nsw i64 %indvars.iv3713, 1 ; 2 uses
  %exitcond3717.not = icmp eq i64 %indvars.iv.next3714, %wide.trip.count3716
  br i1 %exitcond3717.not, label %.split.us.i, label %.lr.ph1911.split.us.split.us.split.us, !llvm.loop !146

.split.us.i446.us.us:                             ; preds = %.lr.ph1911.split.us.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.mw = load ptr, ptr %i.kc, align 8, !tbaa !182
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.52191, ptr %i.a, align 4, !tbaa !24, !noalias !183
  br label %.split.us.split.us.i452.us.us

.split.us.split.us.i452.us.us:                    ; preds = %bb.cc, %.split.us.i446.us.us
  call fastcc void @b3MaterialMap_insert_raw(ptr dead_on_unwind noalias nonnull writable align 8 %11, ptr noundef nonnull %2, ptr noundef %i.mw, ptr noundef %i.a, i1 noundef zeroext false)
  %.val.us.us.i453.us.us = load ptr, ptr %i.iq, align 8, !tbaa !70, !alias.scope !183
  %.val5.us.us.i454.us.us = load ptr, ptr %i.ir, align 8, !tbaa !71, !alias.scope !183
  %i.mx = icmp eq ptr %.val.us.us.i453.us.us, %.val5.us.us.i454.us.us
  br i1 %i.mx, label %bb.cc, label %b3MaterialMap_get_or_insert.exit.us.us, !prof !72

bb.cc:                                            ; preds = %.split.us.split.us.i452.us.us
  %i.my = load i64, ptr %i.bb, align 8, !tbaa !68, !noalias !183 ; 2 uses
  %.not.us.us.i455.us.us = icmp eq i64 %i.my, 0
  %i.mz = shl i64 %i.my, 1
  %i.na = add i64 %i.mz, 2
  %i.nb = select i1 %.not.us.us.i455.us.us, i64 8, i64 %i.na
  %i.nc = call fastcc zeroext i1 @b3MaterialMap_rehash(ptr noundef nonnull %2, i64 noundef %i.nb), !noalias !183
  br i1 %i.nc, label %.split.us.split.us.i452.us.us, label %b3MaterialMap_get_or_insert.exit.us.us, !prof !73

b3MaterialMap_get_or_insert.exit.us.us:           ; preds = %bb.cc, %.split.us.split.us.i452.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.nd = load ptr, ptr %11, align 8, !tbaa !64   ; 2 uses
  %i.ne = icmp ne ptr %i.nd, null, !nosanitize !9
  %i.nf = ptrtoint ptr %i.nd to i64, !nosanitize !9 ; 2 uses
  %i.ng = and i64 %i.nf, 7, !nosanitize !9
  %i.nh = icmp eq i64 %i.ng, 0, !nosanitize !9
  %i.ni = and i1 %i.ne, %i.nh, !nosanitize !9
  br i1 %i.ni, label %.split1928.us.split.us, label %.split1918.us, !prof !10, !nosanitize !9

.split1928.us.split.us:                           ; preds = %b3MaterialMap_get_or_insert.exit.us.us
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @85, i64 %i.km) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split.us.i446.us:                                ; preds = %.lr.ph1911
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.nj = load ptr, ptr %i.kc, align 8, !tbaa !182
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@b3CreateCompound:bb.a
  %i.ny = shl i64 %i.nx, 1
  %i.nz = add i64 %i.ny, 2
  %i.oa = select i1 %.not.us.us.i, i64 8, i64 %i.nz
  %i.ob = call fastcc zeroext i1 @b3MeshMap_rehash(ptr noundef nonnull %9, i64 noundef %i.oa), !noalias !184
  br i1 %i.ob, label %.split.us.split.us.i, label %b3MeshMap_get_or_insert.exit, !prof !73

b3MeshMap_get_or_insert.exit:                     ; preds = %.split.us.split.us.i, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.oc = load ptr, ptr %12, align 8, !tbaa !64   ; 3 uses
  %i.od = icmp ne ptr %i.oc, null, !nosanitize !9
  %i.oe = ptrtoint ptr %i.oc to i64, !nosanitize !9 ; 2 uses
  %i.of = and i64 %i.oe, 7, !nosanitize !9
  %i.og = icmp eq i64 %i.of, 0, !nosanitize !9
  %i.oh = and i1 %i.od, %i.og, !nosanitize !9
  br i1 %i.oh, label %bb.cg, label %bb.cf, !prof !10, !nosanitize !9

.split1914.us:                                    ; preds = %.lr.ph1911.split.us.split.us.split.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.ks, i64 %i.kt) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1918.us:                                    ; preds = %b3MaterialMap_get_or_insert.exit.us.us.us, %b3MaterialMap_get_or_insert.exit.us.us, %b3MaterialMap_get_or_insert.exit.us
  %.us-phi1970 = phi i64 [ %i.nf, %b3MaterialMap_get_or_insert.exit.us.us ], [ %i.ns, %b3MaterialMap_get_or_insert.exit.us ], [ %i.li, %b3MaterialMap_get_or_insert.exit.us.us.us ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @82, i64 %.us-phi1970) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1931.us:                                    ; preds = %bb.bt
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @86, i64 %i.kf, i64 %i.ln) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1938.us:                                    ; preds = %bb.bv
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @87, i64 %i.iu, i64 %i.lv) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1942.us:                                    ; preds = %bb.bw
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @88, i64 %i.mc) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1945.us:                                    ; preds = %bb.bx
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @89, i64 %i.mi, i64 %i.mj) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1949.us:                                    ; preds = %bb.by
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @90, i64 %i.mp) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1952.us:                                    ; preds = %bb.bz
  %i.oi = zext nneg i32 %.61909.us.us.us to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @91, i64 %i.oi, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cf:                                            ; preds = %b3MeshMap_get_or_insert.exit
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @93, i64 %i.oe) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cg:                                            ; preds = %b3MeshMap_get_or_insert.exit
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !75 ; 2 uses
  %i.ol = getelementptr inbounds nuw [60 x i8], ptr %.fr2351, i64 %indvars.iv3718 ; 4 uses
  %i.om = mul nuw nsw i64 %indvars.iv3718, 60
  %i.on = add i64 %i.om, %i.is, !nosanitize !9    ; 3 uses
  %i.oo = icmp eq i64 %i.on, 0
  %i.op = xor i1 %i.it, %i.oo
  %i.oq = icmp uge i64 %i.on, %i.is, !nosanitize !9
  %i.or = and i1 %i.op, %i.oq, !nosanitize !9
  br i1 %i.or, label %bb.ci, label %bb.ch, !prof !10, !nosanitize !9

bb.ch:                                            ; preds = %bb.cg
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @94, i64 %i.is, i64 %i.on) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ci:                                            ; preds = %bb.cg
  %i.os = ptrtoint ptr %i.ol to i64, !nosanitize !9 ; 2 uses
  %i.ot = and i64 %i.os, 3, !nosanitize !9
  %i.ou = icmp eq i64 %i.ot, 0, !nosanitize !9
  %i.ov = and i1 %i.it, %i.ou
  br i1 %i.ov, label %bb.ck, label %bb.cj, !prof !10, !nosanitize !9

bb.cj:                                            ; preds = %bb.ci
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @95, i64 %i.os) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ck:                                            ; preds = %bb.ci
  %i.ow = load ptr, ptr %i.ip, align 8, !tbaa !167 ; 3 uses
  %i.ox = getelementptr inbounds nuw [64 x i8], ptr %i.ow, i64 %indvars.iv3718 ; 2 uses
  %i.oy = ptrtoint ptr %i.ow to i64, !nosanitize !9 ; 3 uses
  %i.oz = add i64 %i.jh, %i.oy, !nosanitize !9    ; 3 uses
  %i.pa = icmp ne ptr %i.ow, null, !nosanitize !9 ; 2 uses
  %i.pb = icmp eq i64 %i.oz, 0
  %i.pc = xor i1 %i.pa, %i.pb
  %i.pd = icmp uge i64 %i.oz, %i.oy, !nosanitize !9
  %i.pe = and i1 %i.pc, %i.pd, !nosanitize !9
  br i1 %i.pe, label %bb.cm, label %bb.cl, !prof !10, !nosanitize !9

bb.cl:                                            ; preds = %bb.ck
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @96, i64 %i.oy, i64 %i.oz) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cm:                                            ; preds = %bb.ck
  %i.pf = ptrtoint ptr %i.ox to i64, !nosanitize !9 ; 2 uses
  %i.pg = and i64 %i.pf, 7, !nosanitize !9
  %i.ph = icmp eq i64 %i.pg, 0, !nosanitize !9
  %i.pi = and i1 %i.pa, %i.ph
  br i1 %i.pi, label %bb.co, label %bb.cn, !prof !10, !nosanitize !9

bb.cn:                                            ; preds = %bb.cm
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @97, i64 %i.pf) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.co:                                            ; preds = %bb.cm
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ol, ptr noundef nonnull align 8 dereferenceable(28) %i.pj, i64 28, i1 false), !tbaa.struct !34
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ol, i64 28
  %i.pl = load ptr, ptr %i.ip, align 8, !tbaa !167 ; 3 uses
  %i.pm = getelementptr inbounds nuw [64 x i8], ptr %i.pl, i64 %indvars.iv3718 ; 2 uses
  %i.pn = ptrtoint ptr %i.pl to i64, !nosanitize !9 ; 3 uses
  %i.po = add i64 %i.jh, %i.pn, !nosanitize !9    ; 3 uses
  %i.pp = icmp ne ptr %i.pl, null, !nosanitize !9 ; 2 uses
  %i.pq = icmp eq i64 %i.po, 0
  %i.pr = xor i1 %i.pp, %i.pq
  %i.ps = icmp uge i64 %i.po, %i.pn, !nosanitize !9
  %i.pt = and i1 %i.pr, %i.ps, !nosanitize !9
  br i1 %i.pt, label %bb.cq, label %bb.cp, !prof !10, !nosanitize !9

bb.cp:                                            ; preds = %bb.co
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @98, i64 %i.pn, i64 %i.po) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cq:                                            ; preds = %bb.co
  %i.pu = ptrtoint ptr %i.pm to i64, !nosanitize !9 ; 2 uses
  %i.pv = and i64 %i.pu, 7, !nosanitize !9
  %i.pw = icmp eq i64 %i.pv, 0, !nosanitize !9
  %i.px = and i1 %i.pp, %i.pw
  br i1 %i.px, label %bb.cs, label %bb.cr, !prof !10, !nosanitize !9

bb.cr:                                            ; preds = %bb.cq
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @99, i64 %i.pu) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cs:                                            ; preds = %bb.cq
  %i.py = getelementptr inbounds nuw i8, ptr %i.pm, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pk, ptr noundef nonnull align 4 dereferenceable(12) %i.py, i64 12, i1 false), !tbaa.struct !43
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ol, i64 40
  store i32 %i.ok, ptr %i.pz, align 4, !tbaa !39
  %i.qa = icmp eq i32 %i.ok, %.03352192
  br i1 %i.qa, label %bb.ct, label %bb.da

bb.ct:                                            ; preds = %bb.cs
  %i.qb = sext i32 %.03352192 to i64              ; 2 uses
  %i.qc = getelementptr inbounds [16 x i8], ptr %.fr2342, i64 %i.qb ; 3 uses
  %i.qd = shl nsw i64 %i.qb, 4
  %i.qe = add i64 %i.qd, %i.iy, !nosanitize !9    ; 3 uses
  %i.qf = icmp eq i64 %i.qe, 0
  %i.qg = xor i1 %i.iz, %i.qf
  %i.qh = icmp uge i64 %i.qe, %i.iy, !nosanitize !9
  %i.qi = icmp slt i32 %.03352192, 0
  %i.qj = xor i1 %i.qi, %i.qh
  %i.qk = and i1 %i.qg, %i.qj, !nosanitize !9
  br i1 %i.qk, label %bb.cv, label %bb.cu, !prof !10, !nosanitize !9

bb.cu:                                            ; preds = %bb.ct
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @100, i64 %i.iy, i64 %i.qe) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cv:                                            ; preds = %bb.ct
  %i.ql = ptrtoint ptr %i.qc to i64, !nosanitize !9 ; 2 uses
  %i.qm = and i64 %i.ql, 7, !nosanitize !9
  %i.qn = icmp eq i64 %i.qm, 0, !nosanitize !9
  %i.qo = and i1 %i.iz, %i.qn
  br i1 %i.qo, label %bb.cx, label %bb.cw, !prof !10, !nosanitize !9

bb.cw:                                            ; preds = %bb.cv
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @102, i64 %i.ql) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cx:                                            ; preds = %bb.cv
  store ptr %i.jt, ptr %i.qc, align 8, !tbaa !186
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store i32 -1, ptr %i.qp, align 8, !tbaa !187
  %i.qq = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.03352192, i32 1), !nosanitize !9 ; 2 uses
  %i.qr = extractvalue { i32, i1 } %i.qq, 1, !nosanitize !9
  br i1 %i.qr, label %bb.cy, label %bb.cz, !prof !20, !nosanitize !9

bb.cy:                                            ; preds = %bb.cx
  %i.qs = zext nneg i32 %.03352192 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @103, i64 %i.qs, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.cz:                                            ; preds = %bb.cx
  %i.qt = extractvalue { i32, i1 } %i.qq, 0, !nosanitize !9
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cs
  %.1336 = phi i32 [ %i.qt, %bb.cz ], [ %.03352192, %bb.cs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %indvars.iv.next3719 = add i64 %indvars.iv3718, 1 ; 2 uses
  %exitcond3726.not = icmp eq i64 %indvars.iv.next3719, %wide.trip.count3725
  br i1 %exitcond3726.not, label %._crit_edge2195, label %.lr.ph2194.split, !llvm.loop !149

bb.db:                                            ; preds = %b3MeshMap_cleanup.exit, %bb.bk
  %.8 = phi i32 [ %.6.lcssa, %b3MeshMap_cleanup.exit ], [ %.4, %bb.bk ] ; 2 uses
  %.2 = phi i32 [ %.1336, %b3MeshMap_cleanup.exit ], [ 0, %bb.bk ] ; 4 uses
  %i.qu = load i32, ptr %i.q, align 8, !tbaa !165
  %i.qv = icmp sgt i32 %i.qu, 0
  br i1 %i.qv, label %.lr.ph2203, label %._crit_edge2204

.lr.ph2203:                                       ; preds = %bb.db
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qx = ptrtoint ptr %.fr2336 to i64            ; 3 uses
  %i.qy = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.qz = icmp ne ptr %i.bn, null                 ; 2 uses
  %.not2337 = icmp eq ptr %.fr2336, null
  br i1 %.not2337, label %.split2215, label %.lr.ph2203.split.split.preheader, !prof !20

.lr.ph2203.split.split.preheader:                 ; preds = %.lr.ph2203
  %smax3729 = call i32 @llvm.smax.i32(i32 %i.aj, i32 0)
  %15 = add i32 %.0347.lcssa, %smax3729
  %smax3730 = call i32 @llvm.smax.i32(i32 %i.an, i32 0)
  %16 = add i32 %15, %smax3730
  %17 = sext i32 %16 to i64
  br label %.lr.ph2203.split.split

._crit_edge2204:                                  ; preds = %bb.ds, %bb.db
  %.9.lcssa = phi i32 [ %.8, %bb.db ], [ %.10, %bb.ds ] ; 2 uses
  %i.ra = call i32 @b3DynamicTree_Rebuild(ptr noundef nonnull %1, i1 noundef zeroext true) #13 ; 0 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.rc = load i32, ptr %i.rb, align 8, !tbaa !188
  %i.rd = sext i32 %i.rc to i64
  %i.re = mul nsw i64 %i.rd, 48
  %i.rf = add nsw i64 %i.re, 144                  ; 2 uses
  %i.rg = trunc i64 %i.rf to i32
  %i.rh = sext i32 %.9.lcssa to i64
  %i.ri = mul nsw i64 %i.rh, 40                   ; 2 uses
  %i.rj = add nsw i64 %i.rf, %i.ri                ; 2 uses
  %i.rk = trunc i64 %i.rj to i32
  %i.rl = load i32, ptr %i.h, align 8, !tbaa !163
  %i.rm = sext i32 %i.rl to i64
  %i.rn = shl nsw i64 %i.rm, 5
  %i.ro = add nsw i64 %i.rj, %i.rn                ; 3 uses
  %i.rp = trunc i64 %i.ro to i32
  %i.rq = add nsw i64 %i.al, 4
  %i.rr = and i64 %i.rq, -8
  %i.rs = add nsw i64 %i.ro, %i.rr                ; 2 uses
  %i.rt = icmp sgt i32 %.2340, 0                  ; 2 uses
  br i1 %i.rt, label %.lr.ph2221, label %._crit_edge2222

.lr.ph2221:                                       ; preds = %._crit_edge2204
  %i.ru = ptrtoint ptr %.fr2339 to i64, !nosanitize !9 ; 3 uses
  %.not2340 = icmp eq ptr %.fr2339, null, !nosanitize !9
  br i1 %.not2340, label %.split2229, label %.lr.ph2221.split.preheader, !prof !20

.lr.ph2221.split.preheader:                       ; preds = %.lr.ph2221
  %wide.trip.count3739 = zext nneg i32 %.2340 to i64
  br label %.lr.ph2221.split

.lr.ph2203.split.split:                           ; preds = %.lr.ph2203.split.split.preheader, %bb.ds
  %indvars.iv3729 = phi i64 [ %17, %.lr.ph2203.split.split.preheader ], [ %indvars.iv.next3730, %bb.ds ] ; 3 uses
  %indvars.iv3727 = phi i64 [ 0, %.lr.ph2203.split.split.preheader ], [ %indvars.iv.next3728, %bb.ds ] ; 5 uses
  %.92200 = phi i32 [ %.8, %.lr.ph2203.split.split.preheader ], [ %.10, %bb.ds ] ; 7 uses
  %i.rv = load ptr, ptr %i.qw, align 8, !tbaa !189 ; 3 uses
  %i.rw = getelementptr inbounds nuw [56 x i8], ptr %i.rv, i64 %indvars.iv3727 ; 4 uses
  %i.rx = mul nuw nsw i64 %indvars.iv3727, 56
  %i.ry = ptrtoint ptr %i.rv to i64, !nosanitize !9 ; 3 uses
  %i.rz = add i64 %i.rx, %i.ry, !nosanitize !9    ; 3 uses
  %i.sa = icmp ne ptr %i.rv, null, !nosanitize !9 ; 2 uses
  %i.sb = icmp eq i64 %i.rz, 0
  %i.sc = xor i1 %i.sa, %i.sb
  %i.sd = icmp uge i64 %i.rz, %i.ry, !nosanitize !9
  %i.se = and i1 %i.sd, %i.sc, !nosanitize !9
  br i1 %i.se, label %bb.dc, label %.split2207.us, !prof !10, !nosanitize !9

.split2207.us:                                    ; preds = %.lr.ph2203.split.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @104, i64 %i.ry, i64 %i.rz) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dc:                                            ; preds = %.lr.ph2203.split.split
  %i.sf = getelementptr inbounds nuw [20 x i8], ptr %.fr2336, i64 %indvars.iv3727 ; 3 uses
  %i.sg = mul nuw nsw i64 %indvars.iv3727, 20
  %i.sh = add i64 %i.sg, %i.qx, !nosanitize !9    ; 2 uses
  %.not2338 = icmp ult i64 %i.sh, %i.qx, !nosanitize !9
  br i1 %.not2338, label %.split2211.us, label %bb.dd, !prof !20, !nosanitize !9

.split2211.us:                                    ; preds = %bb.dc
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @105, i64 %i.qx, i64 %i.sh) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dd:                                            ; preds = %bb.dc
  %i.si = ptrtoint ptr %i.sf to i64, !nosanitize !9 ; 2 uses
  %i.sj = and i64 %i.si, 3, !nosanitize !9
  %i.sk = icmp eq i64 %i.sj, 0, !nosanitize !9
  br i1 %i.sk, label %bb.de, label %.split2215, !prof !10, !nosanitize !9

.split2215:                                       ; preds = %bb.dd, %.lr.ph2203
  %.us-phi2216 = phi i64 [ 0, %.lr.ph2203 ], [ %i.si, %bb.dd ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @107, i64 %.us-phi2216) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.de:                                            ; preds = %bb.dd
  %i.sl = ptrtoint ptr %i.rw to i64, !nosanitize !9 ; 2 uses
  %i.sm = and i64 %i.sl, 7, !nosanitize !9
  %i.sn = icmp eq i64 %i.sm, 0, !nosanitize !9
  %i.so = and i1 %i.sa, %i.sn
  br i1 %i.so, label %bb.dg, label %bb.df, !prof !10, !nosanitize !9

bb.df:                                            ; preds = %bb.de
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @109, i64 %i.sl) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dg:                                            ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sf, ptr noundef nonnull align 8 dereferenceable(16) %i.rw, i64 16, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rw, i64 16 ; 2 uses
  call fastcc void @b3MaterialMap_get_or_insert(ptr dead_on_unwind noalias writable align 8 %13, ptr noundef %2, ptr noundef nonnull %i.sp, i32 noundef %.92200)
  %i.sq = load ptr, ptr %13, align 8, !tbaa !64   ; 3 uses
  %i.sr = icmp ne ptr %i.sq, null, !nosanitize !9
  %i.ss = ptrtoint ptr %i.sq to i64, !nosanitize !9 ; 2 uses
  %i.st = and i64 %i.ss, 7, !nosanitize !9
  %i.su = icmp eq i64 %i.st, 0, !nosanitize !9
  %i.sv = and i1 %i.sr, %i.su, !nosanitize !9
  br i1 %i.sv, label %bb.di, label %bb.dh, !prof !10, !nosanitize !9

bb.dh:                                            ; preds = %bb.dg
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @110, i64 %i.ss) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.di:                                            ; preds = %bb.dg
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  %i.sy = load i32, ptr %i.sw, align 8, !tbaa !66 ; 2 uses
  store i32 %i.sy, ptr %i.sx, align 4, !tbaa !57
  %i.sz = icmp eq i32 %i.sy, %.92200
  br i1 %i.sz, label %bb.dj, label %bb.dq

bb.dj:                                            ; preds = %bb.di
  %i.ta = sext i32 %.92200 to i64                 ; 2 uses
  %i.tb = getelementptr inbounds [40 x i8], ptr %i.bn, i64 %i.ta ; 2 uses
  %i.tc = mul nsw i64 %i.ta, 40
  %i.td = add i64 %i.tc, %i.qy, !nosanitize !9    ; 3 uses
  %i.te = icmp eq i64 %i.td, 0
  %i.tf = xor i1 %i.qz, %i.te
  %i.tg = icmp uge i64 %i.td, %i.qy, !nosanitize !9
  %i.th = icmp slt i32 %.92200, 0
  %i.ti = xor i1 %i.th, %i.tg
  %i.tj = and i1 %i.tf, %i.ti, !nosanitize !9
  br i1 %i.tj, label %bb.dl, label %bb.dk, !prof !10, !nosanitize !9

bb.dk:                                            ; preds = %bb.dj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @111, i64 %i.qy, i64 %i.td) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dl:                                            ; preds = %bb.dj
  %i.tk = ptrtoint ptr %i.tb to i64, !nosanitize !9 ; 2 uses
  %i.tl = and i64 %i.tk, 7, !nosanitize !9
  %i.tm = icmp eq i64 %i.tl, 0, !nosanitize !9
  %i.tn = and i1 %i.qz, %i.tm
  br i1 %i.tn, label %bb.dn, label %bb.dm, !prof !10, !nosanitize !9

bb.dm:                                            ; preds = %bb.dl
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @112, i64 %i.tk) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.tb, ptr noundef nonnull align 8 dereferenceable(40) %i.sp, i64 40, i1 false), !tbaa.struct !171
  %i.to = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.92200, i32 1), !nosanitize !9 ; 2 uses
  %i.tp = extractvalue { i32, i1 } %i.to, 1, !nosanitize !9
  br i1 %i.tp, label %bb.do, label %bb.dp, !prof !20, !nosanitize !9

bb.do:                                            ; preds = %bb.dn
  %i.tq = zext nneg i32 %.92200 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @113, i64 %i.tq, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dp:                                            ; preds = %bb.dn
  %i.tr = extractvalue { i32, i1 } %i.to, 0, !nosanitize !9
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.di
  %.10 = phi i32 [ %i.tr, %bb.dp ], [ %.92200, %bb.di ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  call void @b3ComputeSphereAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %14, ptr noundef nonnull %i.rw, ptr noundef nonnull byval(%struct.b3Transform) align 8 @b3Transform_identity) #13
  %i.ts = call i32 @b3DynamicTree_CreateProxy(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.b3AABB) align 8 %14, i64 noundef -1, i64 noundef %indvars.iv3729) #13 ; 0 uses
  %exitcond3735 = icmp eq i64 %indvars.iv3729, 2147483647
  br i1 %exitcond3735, label %bb.dr, label %bb.ds, !prof !20, !nosanitize !9

bb.dr:                                            ; preds = %bb.dq
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @114, i64 2147483647, i64 1) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ds:                                            ; preds = %bb.dq
  %indvars.iv.next3730 = add nsw i64 %indvars.iv3729, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  %indvars.iv.next3728 = add nuw nsw i64 %indvars.iv3727, 1 ; 2 uses
  %i.tt = load i32, ptr %i.q, align 8, !tbaa !165
  %i.tu = sext i32 %i.tt to i64
  %i.tv = icmp slt i64 %indvars.iv.next3728, %i.tu
  br i1 %i.tv, label %.lr.ph2203.split.split, label %._crit_edge2204, !llvm.loop !150

._crit_edge2222:                                  ; preds = %bb.dw, %._crit_edge2204
  %.0330.lcssa = phi i64 [ %i.rs, %._crit_edge2204 ], [ %i.uv, %bb.dw ] ; 3 uses
  %i.tw = trunc i64 %.0330.lcssa to i32
  %i.tx = add nsw i64 %i.ap, 4
  %i.ty = and i64 %i.tx, -8
  %i.tz = add i64 %.0330.lcssa, %i.ty             ; 2 uses
  %i.ua = icmp sgt i32 %.2, 0                     ; 2 uses
  br i1 %i.ua, label %.lr.ph2235, label %._crit_edge2236

.lr.ph2235:                                       ; preds = %._crit_edge2222
  %i.ub = ptrtoint ptr %.fr2342 to i64, !nosanitize !9 ; 3 uses
  %.not2343 = icmp eq ptr %.fr2342, null, !nosanitize !9
  br i1 %.not2343, label %.split2243, label %.lr.ph2235.split.preheader, !prof !20

.lr.ph2235.split.preheader:                       ; preds = %.lr.ph2235
  %wide.trip.count3744 = zext nneg i32 %.2 to i64
  br label %.lr.ph2235.split

.lr.ph2221.split:                                 ; preds = %.lr.ph2221.split.preheader, %bb.dw
  %indvars.iv3736 = phi i64 [ 0, %.lr.ph2221.split.preheader ], [ %indvars.iv.next3737, %bb.dw ] ; 3 uses
  %.03302218 = phi i64 [ %i.rs, %.lr.ph2221.split.preheader ], [ %i.uv, %bb.dw ] ; 2 uses
  %i.uc = trunc i64 %.03302218 to i32
  %i.ud = getelementptr inbounds nuw [16 x i8], ptr %.fr2339, i64 %indvars.iv3736 ; 3 uses
  %i.ue = shl nuw nsw i64 %indvars.iv3736, 4
  %i.uf = add i64 %i.ue, %i.ru, !nosanitize !9    ; 2 uses
  %.not2341 = icmp ult i64 %i.uf, %i.ru, !nosanitize !9
  br i1 %.not2341, label %.split2225.us, label %bb.dt, !prof !20, !nosanitize !9

.split2225.us:                                    ; preds = %.lr.ph2221.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @115, i64 %i.ru, i64 %i.uf) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dt:                                            ; preds = %.lr.ph2221.split
  %i.ug = ptrtoint ptr %i.ud to i64, !nosanitize !9 ; 2 uses
  %i.uh = and i64 %i.ug, 7, !nosanitize !9
  %i.ui = icmp eq i64 %i.uh, 0, !nosanitize !9
  br i1 %i.ui, label %bb.du, label %.split2229, !prof !10, !nosanitize !9

.split2229:                                       ; preds = %bb.dt, %.lr.ph2221
  %.us-phi2230 = phi i64 [ 0, %.lr.ph2221 ], [ %i.ug, %bb.dt ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @116, i64 %.us-phi2230) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.du:                                            ; preds = %bb.dt
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  store i32 %i.uc, ptr %i.uj, align 8, !tbaa !180
  %i.uk = load ptr, ptr %i.ud, align 8, !tbaa !179 ; 3 uses
  %i.ul = icmp ne ptr %i.uk, null, !nosanitize !9
  %i.um = ptrtoint ptr %i.uk to i64, !nosanitize !9 ; 2 uses
  %i.un = and i64 %i.um, 7, !nosanitize !9
  %i.uo = icmp eq i64 %i.un, 0, !nosanitize !9
  %i.up = and i1 %i.ul, %i.uo, !nosanitize !9
  br i1 %i.up, label %bb.dw, label %bb.dv, !prof !10, !nosanitize !9

bb.dv:                                            ; preds = %bb.du
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @118, i64 %i.um) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dw:                                            ; preds = %bb.du
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uk, i64 140
  %indvars.iv.next3737 = add nuw nsw i64 %indvars.iv3736, 1 ; 2 uses
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !192
  %i.us = sext i32 %i.ur to i64
  %i.ut = add nsw i64 %i.us, 7
  %i.uu = and i64 %i.ut, -8
  %i.uv = add i64 %i.uu, %.03302218               ; 2 uses
  %exitcond3740.not = icmp eq i64 %indvars.iv.next3737, %wide.trip.count3739
  br i1 %exitcond3740.not, label %._crit_edge2222, label %.lr.ph2221.split, !llvm.loop !151

._crit_edge2236:                                  ; preds = %bb.ea, %._crit_edge2222
  %.1.lcssa = phi i64 [ %i.tz, %._crit_edge2222 ], [ %i.vx, %bb.ea ] ; 2 uses
  %i.uw = trunc i64 %.1.lcssa to i32
  %i.ux = load i32, ptr %i.q, align 8, !tbaa !165
  %i.uy = sext i32 %i.ux to i64
  %i.uz = mul nsw i64 %i.uy, 20
  %i.va = add nsw i64 %i.uz, 4
  %i.vb = and i64 %i.va, -8
  %i.vc = add i64 %i.vb, %.1.lcssa                ; 3 uses
  %i.vd = call ptr @b3Alloc(i64 noundef %i.vc) #13 ; 24 uses
  %.not = icmp eq ptr %i.vd, null, !nosanitize !9
  br i1 %.not, label %bb.eb, label %bb.ec, !prof !20, !nosanitize !9

.lr.ph2235.split:                                 ; preds = %.lr.ph2235.split.preheader, %bb.ea
  %indvars.iv3741 = phi i64 [ 0, %.lr.ph2235.split.preheader ], [ %indvars.iv.next3742, %bb.ea ] ; 3 uses
  %.12232 = phi i64 [ %i.tz, %.lr.ph2235.split.preheader ], [ %i.vx, %bb.ea ] ; 2 uses
  %i.ve = trunc i64 %.12232 to i32
  %i.vf = getelementptr inbounds nuw [16 x i8], ptr %.fr2342, i64 %indvars.iv3741 ; 3 uses
  %i.vg = shl nuw nsw i64 %indvars.iv3741, 4
  %i.vh = add i64 %i.vg, %i.ub, !nosanitize !9    ; 2 uses
  %.not2344 = icmp ult i64 %i.vh, %i.ub, !nosanitize !9
  br i1 %.not2344, label %.split2239.us, label %bb.dx, !prof !20, !nosanitize !9

.split2239.us:                                    ; preds = %.lr.ph2235.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @119, i64 %i.ub, i64 %i.vh) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dx:                                            ; preds = %.lr.ph2235.split
  %i.vi = ptrtoint ptr %i.vf to i64, !nosanitize !9 ; 2 uses
  %i.vj = and i64 %i.vi, 7, !nosanitize !9
  %i.vk = icmp eq i64 %i.vj, 0, !nosanitize !9
  br i1 %i.vk, label %bb.dy, label %.split2243, !prof !10, !nosanitize !9

.split2243:                                       ; preds = %bb.dx, %.lr.ph2235
  %.us-phi2244 = phi i64 [ 0, %.lr.ph2235 ], [ %i.vi, %bb.dx ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @120, i64 %.us-phi2244) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.dy:                                            ; preds = %bb.dx
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  store i32 %i.ve, ptr %i.vl, align 8, !tbaa !187
  %i.vm = load ptr, ptr %i.vf, align 8, !tbaa !186 ; 3 uses
  %i.vn = icmp ne ptr %i.vm, null, !nosanitize !9
  %i.vo = ptrtoint ptr %i.vm to i64, !nosanitize !9 ; 2 uses
  %i.vp = and i64 %i.vo, 7, !nosanitize !9
  %i.vq = icmp eq i64 %i.vp, 0, !nosanitize !9
  %i.vr = and i1 %i.vn, %i.vq, !nosanitize !9
  br i1 %i.vr, label %bb.ea, label %bb.dz, !prof !10, !nosanitize !9

bb.dz:                                            ; preds = %bb.dy
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @122, i64 %i.vo) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ea:                                            ; preds = %bb.dy
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %indvars.iv.next3742 = add nuw nsw i64 %indvars.iv3741, 1 ; 2 uses
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !78
  %i.vu = sext i32 %i.vt to i64
  %i.vv = add nsw i64 %i.vu, 7
  %i.vw = and i64 %i.vv, -8
  %i.vx = add i64 %i.vw, %.12232                  ; 2 uses
  %exitcond3745.not = icmp eq i64 %indvars.iv.next3742, %wide.trip.count3744
  br i1 %exitcond3745.not, label %._crit_edge2236, label %.lr.ph2235.split, !llvm.loop !152

bb.eb:                                            ; preds = %._crit_edge2236
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @123) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ec:                                            ; preds = %._crit_edge2236
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.vd, i8 0, i64 %i.vc, i1 false)
  %i.vy = ptrtoint ptr %i.vd to i64, !nosanitize !9 ; 18 uses
  %i.vz = and i64 %i.vy, 7, !nosanitize !9
  %i.wa = icmp eq i64 %i.vz, 0, !nosanitize !9
  br i1 %i.wa, label %bb.ee, label %bb.ed, !prof !10, !nosanitize !9

bb.ed:                                            ; preds = %bb.ec
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @125, i64 %i.vy) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.ee:                                            ; preds = %bb.ec
  store i64 -4460975412889416758, ptr %i.vd, align 8, !tbaa !79
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.wc = trunc i64 %i.vc to i32
  store i32 %i.wc, ptr %i.wb, align 8, !tbaa !80
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vd, i64 12
  store i32 144, ptr %i.wd, align 4, !tbaa !81
  %i.we = getelementptr inbounds nuw i8, ptr %i.vd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.we, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vd, i64 48
  store i32 0, ptr %i.wf, align 8, !tbaa !193
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vd, i64 56
  store <4 x ptr> splat (ptr null), ptr %i.wg, align 8, !tbaa !82
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vd, i64 88
  store i32 0, ptr %i.wh, align 8, !tbaa !194
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vd, i64 24 ; 2 uses
  store ptr null, ptr %i.wi, align 8, !tbaa !83
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vd, i64 96 ; 2 uses
  store i32 %i.rg, ptr %i.wj, align 8, !tbaa !19
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vd, i64 100
  store i32 %.9.lcssa, ptr %i.wk, align 4, !tbaa !195
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vd, i64 104 ; 2 uses
  store i32 %i.rk, ptr %i.wl, align 8, !tbaa !21
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vd, i64 108
  store i32 %i.af, ptr %i.wm, align 4, !tbaa !45
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vd, i64 112
  store i32 %i.rp, ptr %i.wn, align 8, !tbaa !25
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vd, i64 116
  store i32 %i.aj, ptr %i.wo, align 4, !tbaa !49
  %i.wp = getelementptr inbounds nuw i8, ptr %i.vd, i64 124
  store i32 %i.tw, ptr %i.wp, align 4, !tbaa !37
  %i.wq = getelementptr inbounds nuw i8, ptr %i.vd, i64 128
  store i32 %i.an, ptr %i.wq, align 8, !tbaa !53
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vd, i64 136 ; 2 uses
  store i32 %i.uw, ptr %i.wr, align 8, !tbaa !44
  %i.ws = getelementptr inbounds nuw i8, ptr %i.vd, i64 140
  store i32 %i.ar, ptr %i.ws, align 4, !tbaa !196
  %i.wt = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.vy, i64 144), !nosanitize !9 ; 2 uses
  %i.wu = extractvalue { i64, i1 } %i.wt, 1, !nosanitize !9
  br i1 %i.wu, label %bb.ef, label %b3GetCompoundNodes.exit, !prof !20, !nosanitize !9
end_hunk_1
begin_hunk_2_@b3MeshMap_find_first_empty:bb.a
  %i.r = icmp sgt i64 %i.q, -1                    ; 2 uses
  %i.s = shl i64 %i.p, 1                          ; 3 uses
  br i1 %.not, label %.lr.ph.split.split.split.us.split.us, label %.lr.ph.split.split.split.us.split.split.us, !prof !20

.lr.ph.split.split.split.us.split.us:             ; preds = %.lr.ph.split.split.split.us
  %i.t = icmp eq i64 %i.s, 0
  %i.u = and i1 %i.r, %i.t, !nosanitize !9
  br i1 %i.u, label %.split49.us, label %.split.us, !prof !10, !nosanitize !9

.lr.ph.split.split.split.us.split.split.us:       ; preds = %.lr.ph.split.split.split.us
  %i.v = add i64 %i.s, %i.n, !nosanitize !9       ; 2 uses
  %i.w = icmp uge i64 %i.v, %i.n, !nosanitize !9
  %i.x = and i1 %i.r, %i.w, !nosanitize !9
  br i1 %i.x, label %.lr.ph65, label %.split.us, !prof !118, !nosanitize !9

bb.d:                                             ; preds = %bb.f
  %i.y = zext i16 %i.aq to i64
  %i.z = add i64 %.045.us.us5664, %i.y            ; 2 uses
  %i.aa = add i64 %i.z, %1
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !68
  %i.ac = and i64 %i.ab, %i.aa                    ; 4 uses
  store i64 %i.ac, ptr %2, align 8, !tbaa !67
  %i.ad = add i64 %i.ac, 4611686018427387904
  %i.ae = icmp sgt i64 %i.ad, -1
  %i.af = shl i64 %i.ac, 1
  %i.ag = add i64 %i.af, %i.n, !nosanitize !9     ; 2 uses
  %i.ah = icmp uge i64 %i.ag, %i.n, !nosanitize !9
  %i.ai = and i1 %i.ae, %i.ah, !nosanitize !9
  br i1 %i.ai, label %.lr.ph65, label %.split.us, !prof !127, !nosanitize !9

.lr.ph65:                                         ; preds = %.lr.ph.split.split.split.us.split.split.us, %bb.d
  %i.aj = phi i16 [ %i.aq, %bb.d ], [ 1, %.lr.ph.split.split.split.us.split.split.us ]
  %.pn = phi i64 [ %i.ac, %bb.d ], [ %i.p, %.lr.ph.split.split.split.us.split.split.us ]
  %.045.us.us5664 = phi i64 [ %i.z, %bb.d ], [ 1, %.lr.ph.split.split.split.us.split.split.us ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.fr67, i64 %.pn ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64, !nosanitize !9 ; 2 uses
  %i.am = and i64 %i.al, 1, !nosanitize !9
  %i.an = icmp eq i64 %i.am, 0, !nosanitize !9
  br i1 %i.an, label %bb.e, label %.split49.us, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %.lr.ph65
  %i.ao = load i16, ptr %i.ak, align 2, !tbaa !120
  %i.ap = icmp eq i16 %i.ao, 0                    ; 2 uses
  br i1 %i.ap, label %.split52.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i16 %i.aj, 1                        ; 4 uses
  store i16 %i.aq, ptr %3, align 2, !tbaa !120
  %i.ar = icmp eq i16 %i.aq, 2047
  br i1 %i.ar, label %.split52.us, label %bb.d, !prof !72

bb.g:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @363, i64 %i.d) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %.lr.ph
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @364, i64 %i.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split.us:                                        ; preds = %bb.d, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.split.us.split.split.us
  %.us-phi54 = phi i64 [ %i.s, %.lr.ph.split.split.split.us.split.us ], [ %i.v, %.lr.ph.split.split.split.us.split.split.us ], [ %i.ag, %bb.d ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @365, i64 %i.n, i64 %.us-phi54) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split49.us:                                      ; preds = %.lr.ph65, %.lr.ph.split.split.split.us.split.us
  %.us-phi55 = phi i64 [ 0, %.lr.ph.split.split.split.us.split.us ], [ %i.al, %.lr.ph65 ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @366, i64 %.us-phi55) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split52.us:                                      ; preds = %bb.f, %bb.e
  ret i1 %i.ap
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @b3MeshMap_find_insert_location_in_chain(ptr noundef nonnull %0, i64 noundef %1, i16 noundef zeroext %2) unnamed_addr #7 !func_sanitize !272 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.b = and i64 %i.a, 7, !nosanitize !9
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !9
  br i1 %i.c, label %.lr.ph, label %bb.d, !prof !118, !nosanitize !9

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  %.fr69 = freeze ptr %i.f                        ; 3 uses
  %i.g = ptrtoint ptr %.fr69 to i64, !nosanitize !9 ; 5 uses
  %.not70 = icmp eq ptr %.fr69, null, !nosanitize !9
  %i.h = add i64 %1, 4611686018427387904
  %i.i = icmp sgt i64 %i.h, -1                    ; 2 uses
  %i.j = shl i64 %1, 1                            ; 3 uses
  br i1 %.not70, label %.lr.ph.split.split.us, label %.lr.ph.split.split.split.us.split.us, !prof !20

.lr.ph.split.split.us:                            ; preds = %.lr.ph
  %i.k = icmp eq i64 %i.j, 0
  %i.l = and i1 %i.i, %i.k, !nosanitize !9
  br i1 %i.l, label %.split48, label %.split.us, !prof !10, !nosanitize !9

.lr.ph.split.split.split.us.split.us:             ; preds = %.lr.ph
  %i.m = add i64 %i.j, %i.g, !nosanitize !9       ; 2 uses
  %i.n = icmp uge i64 %i.m, %i.g, !nosanitize !9
  %i.o = and i1 %i.i, %i.n, !nosanitize !9
  br i1 %i.o, label %.lr.ph67, label %.split.us, !prof !118, !nosanitize !9

.lr.ph67:                                         ; preds = %.lr.ph.split.split.split.us.split.us, %bb.c
  %.01045.us50.us66 = phi i64 [ %i.ab, %bb.c ], [ %1, %.lr.ph.split.split.split.us.split.us ] ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %.fr69, i64 %.01045.us50.us66 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64, !nosanitize !9 ; 2 uses
  %i.r = and i64 %i.q, 1, !nosanitize !9
  %i.s = icmp eq i64 %i.r, 0, !nosanitize !9
  br i1 %i.s, label %bb.b, label %.split48, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %.lr.ph67
  %i.t = load i16, ptr %i.p, align 2, !tbaa !120
  %i.u = and i16 %i.t, 2047                       ; 2 uses
  %.not.us.us = icmp ugt i16 %i.u, %2
  br i1 %.not.us.us, label %.split58.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = zext nneg i16 %i.u to i64                ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul nuw nsw i64 %i.w, %i.v
  %i.y = lshr i64 %i.x, 1
  %i.z = add i64 %i.y, %1
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !68
  %i.ab = and i64 %i.aa, %i.z                     ; 3 uses
  %i.ac = add i64 %i.ab, 4611686018427387904
  %i.ad = icmp sgt i64 %i.ac, -1
  %i.ae = shl i64 %i.ab, 1
  %i.af = add i64 %i.ae, %i.g, !nosanitize !9     ; 2 uses
  %i.ag = icmp uge i64 %i.af, %i.g, !nosanitize !9
  %i.ah = and i1 %i.ad, %i.ag, !nosanitize !9
  br i1 %i.ah, label %.lr.ph67, label %.split.us, !prof !127, !nosanitize !9

bb.d:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @367, i64 %i.a) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split.us:                                        ; preds = %bb.c, %.lr.ph.split.split.split.us.split.us, %.lr.ph.split.split.us
  %.us-phi46 = phi i64 [ %i.j, %.lr.ph.split.split.us ], [ %i.m, %.lr.ph.split.split.split.us.split.us ], [ %i.af, %bb.c ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @368, i64 %i.g, i64 %.us-phi46) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split48:                                         ; preds = %.lr.ph67, %.lr.ph.split.split.us
  %.us-phi49 = phi i64 [ 0, %.lr.ph.split.split.us ], [ %i.q, %.lr.ph67 ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @369, i64 %.us-phi49) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split58.us:                                      ; preds = %bb.b
  ret i64 %.01045.us50.us66
}

declare zeroext i1 @b3OverlapCapsule(ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @b3OverlapHull(ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @b3OverlapMesh(ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @b3OverlapSphere(ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef) local_unnamed_addr #6

declare void @b3RayCastCapsule(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_out_of_bounds_abort(ptr, i64) local_unnamed_addr #1

declare void @b3RayCastHull(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @b3RayCastMesh(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @b3RayCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @b3ShapeCastCapsule(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @b3ShapeCastHull(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @b3ShapeCastMesh(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @b3ShapeCastSphere(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_function_type_mismatch_abort(ptr, i64) local_unnamed_addr #1

declare i32 @b3CollideMoverAndCapsule(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @b3CollideMoverAndHull(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @b3CollideMoverAndMesh(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @b3CollideMoverAndSphere(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind uwtable }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{}
!10 = !{!"branch_weights", i32 1048575, i32 1}
!11 = !{!"long", !5, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTS10b3TreeNode", !12, i64 0}
!14 = !{!"p1 int", !12, i64 0}
!15 = !{!"p1 _ZTS6b3AABB", !12, i64 0}
!16 = !{!"p1 _ZTS6b3Vec3", !12, i64 0}
!17 = !{!"b3DynamicTree", !11, i64 0, !13, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !14, i64 40, !15, i64 48, !16, i64 56, !14, i64 64, !6, i64 72}
!18 = !{!"b3CompoundData", !11, i64 0, !6, i64 8, !6, i64 12, !17, i64 16, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140}
!19 = !{!18, !6, i64 96}
!20 = !{!"branch_weights", i32 1, i32 1048575}
!21 = !{!18, !6, i64 104}
!22 = !{!"float", !5, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!6, !6, i64 0}
!25 = !{!18, !6, i64 112}
!26 = !{!"b3Vec3", !22, i64 0, !22, i64 4, !22, i64 8}
!27 = !{!"b3Quat", !26, i64 0, !22, i64 12}
!28 = !{!"b3Transform", !26, i64 0, !27, i64 12}
!29 = !{!"b3HullInstance", !28, i64 0, !6, i64 28, !6, i64 32}
!30 = !{!29, !6, i64 28}
!31 = !{!"p1 _ZTS10b3HullData", !12, i64 0}
!32 = !{!"b3CompoundHull", !31, i64 0, !28, i64 8, !6, i64 36}
!33 = !{!32, !31, i64 0}
!34 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23, i64 12, i64 4, !23, i64 16, i64 4, !23, i64 20, i64 4, !23, i64 24, i64 4, !23}
!35 = !{!29, !6, i64 32}
!36 = !{!32, !6, i64 36}
!37 = !{!18, !6, i64 124}
!38 = !{!"b3MeshInstance", !28, i64 0, !26, i64 28, !6, i64 40, !5, i64 44}
!39 = !{!38, !6, i64 40}
!40 = !{!"p1 _ZTS10b3MeshData", !12, i64 0}
!41 = !{!"b3CompoundMesh", !40, i64 0, !28, i64 8, !26, i64 36, !5, i64 48}
!42 = !{!41, !40, i64 0}
!43 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23}
!44 = !{!18, !6, i64 136}
!45 = !{!18, !6, i64 108}
!46 = !{!"b3Capsule", !26, i64 0, !26, i64 12, !22, i64 24}
!47 = !{!"b3CompoundCapsule", !46, i64 0, !6, i64 28}
!48 = !{!47, !6, i64 28}
!49 = !{!18, !6, i64 116}
!50 = !{!5, !5, i64 0}
!51 = !{!"b3ChildShape", !5, i64 0, !28, i64 32, !5, i64 60, !6, i64 76}
!52 = !{!51, !6, i64 76}
!53 = !{!18, !6, i64 128}
!54 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23, i64 12, i64 4, !23}
!55 = !{!"b3Sphere", !26, i64 0, !22, i64 12}
!56 = !{!"b3CompoundSphere", !55, i64 0, !6, i64 16}
!57 = !{!56, !6, i64 16}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"p1 short", !12, i64 0}
!60 = !{!"", !11, i64 0, !11, i64 8, !12, i64 16, !59, i64 24}
!61 = !{!60, !59, i64 24}
!62 = !{!"p1 _ZTS17b3SurfaceMaterial", !12, i64 0}
!63 = !{!"", !12, i64 0, !59, i64 8, !59, i64 16, !11, i64 24}
!64 = !{!63, !12, i64 0}
!65 = !{!"", !62, i64 0, !6, i64 8}
!66 = !{!65, !6, i64 8}
!67 = !{!11, !11, i64 0}
!68 = !{!60, !11, i64 8}
!69 = !{!60, !12, i64 16}
!70 = !{!63, !59, i64 8}
!71 = !{!63, !59, i64 16}
!72 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!73 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!74 = !{!"", !40, i64 0, !6, i64 8}
!75 = !{!74, !6, i64 8}
!76 = !{!"b3AABB", !26, i64 0, !26, i64 12}
!77 = !{!"b3MeshData", !11, i64 0, !11, i64 8, !6, i64 16, !76, i64 20, !22, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92}
!78 = !{!77, !6, i64 16}
!79 = !{!18, !11, i64 0}
!80 = !{!18, !6, i64 8}
!81 = !{!18, !6, i64 12}
!82 = !{!12, !12, i64 0}
!83 = !{!18, !13, i64 24}
!84 = !{!"p1 _ZTS14b3CompoundData", !12, i64 0}
!85 = !{!"b3ShapeProxy", !16, i64 0, !6, i64 8, !22, i64 12}
!86 = !{!"_Bool", !5, i64 0}
!87 = !{!"b3CompoundOverlapContext", !84, i64 0, !28, i64 8, !85, i64 40, !86, i64 56}
!88 = !{!87, !84, i64 0}
!89 = !{!16, !16, i64 0}
!90 = !{!87, !86, i64 56}
!91 = !{i32 -1056584962, i32 -1371165798}
!92 = !{!"p1 _ZTS12b3CastOutput", !12, i64 0}
!93 = !{!"p1 _ZTS16b3ShapeCastInput", !12, i64 0}
!94 = !{!"b3CompoundCastContext", !84, i64 0, !92, i64 8, !93, i64 16}
!95 = !{!94, !84, i64 0}
!96 = !{!94, !92, i64 8}
!97 = !{!94, !93, i64 16}
!98 = !{!86, !86, i64 0}
!99 = !{!"branch_weights", i32 2147481089, i32 2559}
!100 = !{!"b3ShapeCastInput", !85, i64 0, !26, i64 16, !22, i64 28, !86, i64 32}
!101 = !{!100, !6, i64 8}
!102 = !{!100, !16, i64 0}
!103 = !{!100, !22, i64 28}
!104 = !{!"b3BoxCastInput", !76, i64 0, !26, i64 24, !22, i64 36}
!105 = !{!104, !22, i64 36}
!106 = !{!"b3CompoundQueryContext", !84, i64 0, !12, i64 8, !12, i64 16}
!107 = !{!106, !84, i64 0}
!108 = !{!106, !12, i64 8}
!109 = !{!106, !12, i64 16}
!110 = !{!"p1 _ZTS13b3PlaneResult", !12, i64 0}
!111 = !{!"b3CompoundMoverContext", !84, i64 0, !110, i64 8, !6, i64 16, !6, i64 20, !46, i64 24}
!112 = !{!111, !84, i64 0}
!113 = !{!111, !110, i64 8}
!114 = !{!111, !6, i64 16}
!115 = !{!111, !6, i64 20}
!116 = !{!46, !22, i64 24}
!117 = !{!"branch_weights", i32 1, i32 127}
!118 = !{!"branch_weights", i32 127, i32 1}
!119 = !{!"short", !5, i64 0}
!120 = !{!119, !119, i64 0}
!121 = !{!65, !62, i64 0}
!122 = !{!60, !11, i64 0}
!123 = !{!"branch_weights", i32 127, i32 255873}
!124 = !{!59, !59, i64 0}
!125 = !{i64 0, i64 8, !67, i64 8, i64 8, !67, i64 16, i64 8, !82, i64 24, i64 8, !124}
!126 = !{!63, !11, i64 24}
!127 = !{!"branch_weights", i32 134217473, i32 127}
!128 = !{!74, !40, i64 0}
!129 = !{i32 -1056584962, i32 952683453}
!130 = !{i32 -1056584962, i32 -1651870206}
!131 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23, i64 12, i64 4, !23, i64 16, i64 4, !23, i64 20, i64 4, !23, i64 24, i64 4, !23, i64 28, i64 4, !24}
!132 = !{i32 -1056584962, i32 -1412001411}
!133 = !{i32 -1056584962, i32 -2104258301}
!134 = !{i32 -1056584962, i32 -1375278670}
!135 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23, i64 12, i64 4, !23, i64 16, i64 4, !24}
!136 = !{i32 -1056584962, i32 -1144334783}
!137 = !{!"b3Mesh", !40, i64 0, !26, i64 8}
!138 = !{!137, !40, i64 0}
!139 = distinct !{!139, !58}
!140 = distinct !{!140, !58}
!141 = distinct !{!141, !58}
!142 = distinct !{!142, !58}
!143 = distinct !{!143, !58}
!144 = distinct !{!144, !"b3MaterialMap_get_or_insert"}
!145 = distinct !{!145, !144, !"b3MaterialMap_get_or_insert: argument 0"}
!146 = distinct !{!146, !58}
!147 = distinct !{!147, !"b3MeshMap_get_or_insert"}
!148 = distinct !{!148, !147, !"b3MeshMap_get_or_insert: argument 0"}
!149 = distinct !{!149, !58}
!150 = distinct !{!150, !58}
!151 = distinct !{!151, !58}
!152 = distinct !{!152, !58}
!153 = distinct !{!153, !58}
!154 = distinct !{!154, !58}
!155 = distinct !{!155, !58}
!156 = distinct !{!156, !58}
!157 = !{i32 -1056584962, i32 -335145941}
!158 = !{!"p1 _ZTS20b3CompoundCapsuleDef", !12, i64 0}
!159 = !{!"p1 _ZTS17b3CompoundHullDef", !12, i64 0}
!160 = !{!"p1 _ZTS17b3CompoundMeshDef", !12, i64 0}
!161 = !{!"p1 _ZTS19b3CompoundSphereDef", !12, i64 0}
!162 = !{!"b3CompoundDef", !158, i64 0, !6, i64 8, !159, i64 16, !6, i64 24, !160, i64 32, !6, i64 40, !161, i64 48, !6, i64 56}
!163 = !{!162, !6, i64 8}
!164 = !{!162, !6, i64 24}
!165 = !{!162, !6, i64 56}
!166 = !{!162, !6, i64 40}
!167 = !{!162, !160, i64 32}
!168 = !{!"b3CompoundMeshDef", !40, i64 0, !28, i64 8, !26, i64 36, !62, i64 48, !6, i64 56}
!169 = !{!168, !6, i64 56}
!170 = !{!162, !158, i64 0}
!171 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23, i64 12, i64 4, !23, i64 16, i64 4, !23, i64 20, i64 4, !23, i64 24, i64 8, !67, i64 32, i64 4, !24, i64 36, i64 4, !24}
!172 = !{!162, !159, i64 16}
!173 = !{!"b3SurfaceMaterial", !22, i64 0, !22, i64 4, !22, i64 8, !26, i64 12, !11, i64 24, !6, i64 32, !6, i64 36}
!174 = !{!"b3CompoundHullDef", !31, i64 0, !28, i64 8, !173, i64 40}
!175 = !{!174, !31, i64 0}
end_hunk_2
