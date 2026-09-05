Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/broad_phase?download=true
begin_hunk_0_@b3BroadPhase_MoveProxy:bb.a
  %i.i = add i64 %i.h, %i.b, !nosanitize !9       ; 2 uses
  %.not = icmp ult i64 %i.i, %i.b, !nosanitize !9
  br i1 %.not, label %bb.d, label %bb.e, !prof !14, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @22, i64 %i.b, i64 %i.i) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.g
  %i.k = ashr i32 %1, 2
  tail call void @b3DynamicTree_MoveProxy(ptr noundef nonnull %i.j, i32 noundef %i.k, ptr noundef nonnull byval(%struct.b3AABB) align 8 %2) #10
  tail call fastcc void @b3BufferMove(ptr noundef %0, i32 noundef %1)
  ret void
}

declare void @b3DynamicTree_MoveProxy(ptr noundef, i32 noundef, ptr noundef byval(%struct.b3AABB) align 8) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @b3BroadPhase_EnlargeProxy(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly byval(%struct.b3AABB) align 8 captures(none) %2) local_unnamed_addr #0 !func_sanitize !40 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 5 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @23, i64 %i.b) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = and i32 %1, 3
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = mul nuw nsw i64 %i.g, 80
  %i.i = add i64 %i.h, %i.b, !nosanitize !9       ; 2 uses
  %.not = icmp ult i64 %i.i, %i.b, !nosanitize !9
  br i1 %.not, label %bb.d, label %bb.e, !prof !14, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @24, i64 %i.b, i64 %i.i) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.g
  %i.k = ashr i32 %1, 2
  tail call void @b3DynamicTree_EnlargeProxy(ptr noundef nonnull %i.j, i32 noundef %i.k, ptr noundef nonnull byval(%struct.b3AABB) align 8 %2) #10
  tail call fastcc void @b3BufferMove(ptr noundef %0, i32 noundef %1)
  ret void
}

declare void @b3DynamicTree_EnlargeProxy(ptr noundef, i32 noundef, ptr noundef byval(%struct.b3AABB) align 8) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @b3UpdateBroadPhasePairs(ptr noundef %0) local_unnamed_addr #0 !func_sanitize !127 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @26, i64 %i.b) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !34   ; 9 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.aj, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = shl i32 %i.i, 3
  %i.l = tail call ptr @b3StackAlloc(ptr noundef nonnull %0, i32 noundef %i.k, ptr noundef nonnull @.str) #10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 4 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !25
  %i.n = add i32 %i.i, 134217728
  %i.o = icmp ult i32 %i.n, 268435456
  br i1 %i.o, label %b3AtomicStoreInt.exit, label %bb.e, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  %i.p = zext i32 %i.i to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @27, i64 16, i64 %i.p) #9, !nosanitize !9
  unreachable, !nosanitize !9

b3AtomicStoreInt.exit:                            ; preds = %bb.d
  %i.q = shl nsw i32 %i.i, 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 %i.q, ptr %i.r, align 8, !tbaa !27
  %i.s = shl i32 %i.i, 9
  %i.t = tail call ptr @b3StackAlloc(ptr noundef nonnull %0, i32 noundef %i.s, ptr noundef nonnull @.str.2) #10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 3 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1124
  store atomic i32 0, ptr %i.v seq_cst, align 4
  tail call void @b3ParallelFor(ptr noundef nonnull %0, ptr noundef nonnull @b3FindPairsTask, i32 noundef %i.i, i32 noundef 64, ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4756 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !128
  %i.y = icmp slt i32 %i.x, 256
  br i1 %i.y, label %bb.f, label %bb.n

bb.f:                                             ; preds = %b3AtomicStoreInt.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4688
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !129 ; 4 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = load i32, ptr %i.ab, align 4, !nosanitize !9
  %i.ad = icmp eq i32 %i.ac, -1056584962, !nosanitize !9
  br i1 %i.ad, label %bb.g, label %bb.i, !nosanitize !9

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %i.aa, i64 -4
  %i.af = load i32, ptr %i.ae, align 8, !nosanitize !9
  %i.ag = icmp eq i32 %i.af, -1348708513, !nosanitize !9
  br i1 %i.ag, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  %i.ah = ptrtoint ptr %i.aa to i64, !nosanitize !9
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @29, i64 %i.ah) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4704
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !130
  %i.ak = tail call ptr %i.aa(ptr noundef nonnull @b3UpdateTreesTask, ptr noundef nonnull %0, ptr noundef %i.aj, ptr noundef nonnull @.str.4) #10 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4712
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !131
  %i.am = load i32, ptr %i.w, align 4, !tbaa !128 ; 2 uses
  %i.an = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.am, i32 1), !nosanitize !9 ; 2 uses
  %i.ao = extractvalue { i32, i1 } %i.an, 1, !nosanitize !9
  br i1 %i.ao, label %bb.j, label %bb.k, !prof !14, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  %i.ap = zext nneg i32 %i.am to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @30, i64 %i.ap, i64 1) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.aq = extractvalue { i32, i1 } %i.an, 0, !nosanitize !9
  store i32 %i.aq, ptr %i.w, align 4, !tbaa !128
  %i.ar = icmp ne ptr %i.ak, null                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4752 ; 2 uses
  %i.at = zext i1 %i.ar to i32
  %i.au = load i32, ptr %i.as, align 8, !tbaa !132 ; 2 uses
  %i.av = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.au, i32 %i.at), !nosanitize !9 ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.av, 1, !nosanitize !9
  br i1 %i.aw, label %bb.l, label %bb.m, !prof !14, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  %i.ax = zext i32 %i.au to i64, !nosanitize !9
  %i.ay = zext i1 %i.ar to i64
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @31, i64 %i.ax, i64 %i.ay) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  %i.az = extractvalue { i32, i1 } %i.av, 0, !nosanitize !9
  store i32 %i.az, ptr %i.as, align 8, !tbaa !132
  br label %bb.r

bb.n:                                             ; preds = %b3AtomicStoreInt.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4712
  store ptr null, ptr %i.ba, align 8, !tbaa !131
  %i.bb = ptrtoint ptr %i.f to i64, !nosanitize !9 ; 4 uses
  %.not.i = icmp ugt ptr %i.f, inttoptr (i64 -161 to ptr)
  br i1 %.not.i, label %bb.o, label %bb.p, !prof !14, !nosanitize !9

bb.o:                                             ; preds = %bb.n
  %i.bc = add i64 %i.bb, 160, !nosanitize !9
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @108, i64 %i.bb, i64 %i.bc) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.p:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.be = tail call i32 @b3DynamicTree_Rebuild(ptr noundef nonnull %i.bd, i1 noundef zeroext false) #10 ; 0 uses
  %.not6.i = icmp ugt ptr %i.f, inttoptr (i64 -81 to ptr)
  br i1 %.not6.i, label %bb.q, label %b3UpdateTreesTask.exit, !prof !14, !nosanitize !9

bb.q:                                             ; preds = %bb.p
  %i.bf = add i64 %i.bb, 80, !nosanitize !9
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @109, i64 %i.bb, i64 %i.bf) #9, !nosanitize !9
  unreachable, !nosanitize !9

b3UpdateTreesTask.exit:                           ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.bh = tail call i32 @b3DynamicTree_Rebuild(ptr noundef nonnull %i.bg, i1 noundef zeroext false) #10 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %b3UpdateTreesTask.exit, %bb.m
  %i.bi = icmp sgt i32 %i.i, 0
  br i1 %i.bi, label %.lr.ph264, label %.preheader

.lr.ph264:                                        ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4080
  %wide.trip.count452 = zext nneg i32 %i.i to i64
  br label %.lr.ph264.split.us

.lr.ph264.split.us:                               ; preds = %.lr.ph264, %._crit_edge.split.us.us
  %indvars.iv449 = phi i64 [ 0, %.lr.ph264 ], [ %indvars.iv.next450, %._crit_edge.split.us.us ] ; 3 uses
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !25  ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv449 ; 2 uses
  %i.bm = shl nuw nsw i64 %indvars.iv449, 3
  %i.bn = ptrtoint ptr %i.bk to i64, !nosanitize !9 ; 3 uses
  %i.bo = add i64 %i.bm, %i.bn, !nosanitize !9    ; 3 uses
  %i.bp = icmp ne ptr %i.bk, null, !nosanitize !9 ; 2 uses
  %i.bq = icmp eq i64 %i.bo, 0
  %i.br = xor i1 %i.bp, %i.bq
  %i.bs = icmp uge i64 %i.bo, %i.bn, !nosanitize !9
  %i.bt = and i1 %i.br, %i.bs, !nosanitize !9
  br i1 %i.bt, label %bb.s, label %.split266.us, !prof !10, !nosanitize !9

bb.s:                                             ; preds = %.lr.ph264.split.us
  %i.bu = ptrtoint ptr %i.bl to i64, !nosanitize !9 ; 2 uses
  %i.bv = and i64 %i.bu, 7, !nosanitize !9
  %i.bw = icmp eq i64 %i.bv, 0, !nosanitize !9
  %i.bx = and i1 %i.bp, %i.bw
  br i1 %i.bx, label %bb.t, label %.split270.us, !prof !10, !nosanitize !9

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !88 ; 2 uses
  %.not76215.us = icmp eq ptr %i.by, null
  br i1 %.not76215.us, label %._crit_edge.split.us.us, label %.lr.ph.us

._crit_edge.split.us.us:                          ; preds = %bb.z, %bb.t
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, 1 ; 2 uses
  %exitcond453.not = icmp eq i64 %indvars.iv.next450, %wide.trip.count452
  br i1 %exitcond453.not, label %.preheader, label %.lr.ph264.split.us, !llvm.loop !124

.lr.ph.us:                                        ; preds = %bb.t, %bb.z
  %.065216.us.us = phi ptr [ %i.dj, %bb.z ], [ %i.by, %bb.t ] ; 7 uses
  %i.bz = ptrtoint ptr %.065216.us.us to i64, !nosanitize !9 ; 2 uses
  %i.ca = and i64 %i.bz, 7, !nosanitize !9
  %i.cb = icmp eq i64 %i.ca, 0, !nosanitize !9
  br i1 %i.cb, label %bb.u, label %.split.us, !prof !10, !nosanitize !9

bb.u:                                             ; preds = %.lr.ph.us
  %i.cc = load i32, ptr %.065216.us.us, align 8, !tbaa !90 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.065216.us.us, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !91
  %i.cf = load ptr, ptr %i.bj, align 8, !tbaa !92 ; 4 uses
  %i.cg = sext i32 %i.cc to i64                   ; 2 uses
  %i.ch = getelementptr inbounds [232 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = mul nsw i64 %i.cg, 232
  %i.cj = ptrtoint ptr %i.cf to i64, !nosanitize !9 ; 6 uses
  %i.ck = add i64 %i.ci, %i.cj, !nosanitize !9    ; 3 uses
  %i.cl = icmp ne ptr %i.cf, null, !nosanitize !9 ; 2 uses
  %i.cm = icmp eq i64 %i.ck, 0
  %i.cn = xor i1 %i.cl, %i.cm
  %i.co = icmp uge i64 %i.ck, %i.cj, !nosanitize !9
  %i.cp = icmp slt i32 %i.cc, 0
  %i.cq = xor i1 %i.cp, %i.co
  %i.cr = and i1 %i.cn, %i.cq, !nosanitize !9
  br i1 %i.cr, label %bb.v, label %.split224.us, !prof !10, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %.065216.us.us, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !93 ; 2 uses
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %i.cv = mul nsw i64 %i.cu, 232
  %i.cw = add i64 %i.cv, %i.cj, !nosanitize !9    ; 3 uses
  %i.cx = icmp eq i64 %i.cw, 0
  %i.cy = xor i1 %i.cl, %i.cx
  %i.cz = icmp uge i64 %i.cw, %i.cj, !nosanitize !9
  %i.da = icmp slt i32 %i.ct, 0
  %i.db = xor i1 %i.da, %i.cz
  %i.dc = and i1 %i.cy, %i.db, !nosanitize !9
  br i1 %i.dc, label %bb.w, label %.split228.us, !prof !10, !nosanitize !9

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds [232 x i8], ptr %i.cf, i64 %i.cu
  tail call void @b3CreateContact(ptr noundef nonnull %0, ptr noundef %i.ch, ptr noundef %i.dd, i32 noundef %i.ce) #10
  %i.de = getelementptr inbounds nuw i8, ptr %.065216.us.us, i64 24
  %i.df = load i8, ptr %i.de, align 8, !tbaa !94  ; 3 uses
  %i.dg = icmp ult i8 %i.df, 2
  br i1 %i.dg, label %bb.x, label %.split235.us, !prof !10, !nosanitize !9

bb.x:                                             ; preds = %bb.w
  %i.dh = trunc nuw i8 %i.df to i1
  %i.di = getelementptr inbounds nuw i8, ptr %.065216.us.us, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !95 ; 2 uses
  br i1 %i.dh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @b3Free(ptr noundef nonnull %.065216.us.us, i64 noundef 32) #10
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.not76.us.us.a = icmp eq ptr %i.dj, null
  br i1 %.not76.us.us.a, label %._crit_edge.split.us.us, label %.lr.ph.us, !llvm.loop !125

.preheader:                                       ; preds = %._crit_edge.split.us.us, %bb.r
  %i.dk = load i32, ptr %i.h, align 8, !tbaa !34  ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph294, label %._crit_edge

.lr.ph294:                                        ; preds = %.preheader
  %i.dm = load ptr, ptr %i.g, align 8, !tbaa !24
  %.fr306 = freeze ptr %i.dm                      ; 3 uses
  %i.dn = ptrtoint ptr %.fr306 to i64, !nosanitize !9 ; 3 uses
  %.not307 = icmp eq ptr %.fr306, null, !nosanitize !9
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.dp = ptrtoint ptr %i.do to i64               ; 3 uses
  br i1 %.not307, label %.split300, label %.lr.ph294.split.preheader, !prof !14

.lr.ph294.split.preheader:                        ; preds = %.lr.ph294
  %wide.trip.count457 = zext nneg i32 %i.dk to i64
  br label %.lr.ph294.split

.split266.us:                                     ; preds = %.lr.ph264.split.us
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @32, i64 %i.bn, i64 %i.bo) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split270.us:                                     ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @34, i64 %i.bu) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split.us:                                        ; preds = %.lr.ph.us
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @36, i64 %i.bz) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split224.us:                                     ; preds = %bb.u
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @37, i64 %i.cj, i64 %i.ck) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split228.us:                                     ; preds = %bb.v
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @38, i64 %i.cj, i64 %i.cw) #9, !nosanitize !9
  unreachable, !nosanitize !9

.split235.us:                                     ; preds = %bb.w
  %i.dq = zext i8 %i.df to i64, !nosanitize !9
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @39, i64 %i.dq) #9, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph294.split:                                  ; preds = %.lr.ph294.split.preheader, %b3ClearBit.exit
  %indvars.iv454 = phi i64 [ 0, %.lr.ph294.split.preheader ], [ %indvars.iv.next455, %b3ClearBit.exit ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.fr306, i64 %indvars.iv454 ; 2 uses
  %i.ds = shl nuw nsw i64 %indvars.iv454, 2
  %i.dt = add i64 %i.ds, %i.dn, !nosanitize !9    ; 2 uses
  %.not308 = icmp ult i64 %i.dt, %i.dn, !nosanitize !9
  br i1 %.not308, label %.split296.us, label %bb.aa, !prof !14, !nosanitize !9

.split296.us:                                     ; preds = %.lr.ph294.split
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @40, i64 %i.dn, i64 %i.dt) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.aa:                                            ; preds = %.lr.ph294.split
  %i.du = ptrtoint ptr %i.dr to i64, !nosanitize !9 ; 2 uses
  %i.dv = and i64 %i.du, 3, !nosanitize !9
  %i.dw = icmp eq i64 %i.dv, 0, !nosanitize !9
  br i1 %i.dw, label %bb.ab, label %.split300, !prof !10, !nosanitize !9

.split300:                                        ; preds = %bb.aa, %.lr.ph294
  %.us-phi301 = phi i64 [ 0, %.lr.ph294 ], [ %i.du, %bb.aa ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @41, i64 %.us-phi301) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ab:                                            ; preds = %bb.aa
  %i.dx = load i32, ptr %i.dr, align 4, !tbaa !31 ; 2 uses
  %i.dy = and i32 %i.dx, 3
  %i.dz = zext nneg i32 %i.dy to i64, !nosanitize !9 ; 2 uses
  %i.ea = shl nuw nsw i64 %i.dz, 4
  %i.eb = add i64 %i.ea, %i.dp, !nosanitize !9    ; 2 uses
  %.not = icmp ult i64 %i.eb, %i.dp, !nosanitize !9
  br i1 %.not, label %bb.ac, label %bb.ad, !prof !14, !nosanitize !9

bb.ac:                                            ; preds = %bb.ab
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @43, i64 %i.dp, i64 %i.eb) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ad:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dz ; 2 uses
  %i.ed = ashr i32 %i.dx, 2                       ; 2 uses
  %i.ee = lshr i32 %i.ed, 6                       ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !37
  %.not.i78 = icmp ult i32 %i.ee, %i.eg
  br i1 %.not.i78, label %bb.ae, label %b3ClearBit.exit

bb.ae:                                            ; preds = %bb.ad
  %i.eh = and i32 %i.ed, 63
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = shl nuw i64 1, %i.ei
  %i.ek = xor i64 %i.ej, -1
  %i.el = load ptr, ptr %i.ec, align 8, !tbaa !38 ; 3 uses
  %i.em = zext nneg i32 %i.ee to i64              ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.em ; 3 uses
  %i.eo = shl nuw nsw i64 %i.em, 3
  %i.ep = ptrtoint ptr %i.el to i64, !nosanitize !9 ; 3 uses
  %i.eq = add i64 %i.eo, %i.ep, !nosanitize !9    ; 3 uses
  %i.er = icmp ne ptr %i.el, null, !nosanitize !9 ; 2 uses
  %i.es = icmp eq i64 %i.eq, 0
  %i.et = xor i1 %i.er, %i.es
  %i.eu = icmp uge i64 %i.eq, %i.ep, !nosanitize !9
  %i.ev = and i1 %i.eu, %i.et, !nosanitize !9
  br i1 %i.ev, label %bb.ag, label %bb.af, !prof !10, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @110, i64 %i.ep, i64 %i.eq) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ag:                                            ; preds = %bb.ae
  %i.ew = ptrtoint ptr %i.en to i64, !nosanitize !9 ; 2 uses
  %i.ex = and i64 %i.ew, 7, !nosanitize !9
  %i.ey = icmp eq i64 %i.ex, 0, !nosanitize !9
  %i.ez = and i1 %i.er, %i.ey
  br i1 %i.ez, label %bb.ai, label %bb.ah, !prof !10, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @111, i64 %i.ew) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %bb.ag
  %i.fa = load i64, ptr %i.en, align 8, !tbaa !29
  %i.fb = and i64 %i.fa, %i.ek
  store i64 %i.fb, ptr %i.en, align 8, !tbaa !29
  br label %b3ClearBit.exit

b3ClearBit.exit:                                  ; preds = %bb.ai, %bb.ad
  %indvars.iv.next455 = add nuw nsw i64 %indvars.iv454, 1 ; 2 uses
  %exitcond458.not = icmp eq i64 %indvars.iv.next455, %wide.trip.count457
  br i1 %exitcond458.not, label %._crit_edge, label %.lr.ph294.split, !llvm.loop !126

._crit_edge:                                      ; preds = %b3ClearBit.exit, %.preheader
  store i32 0, ptr %i.h, align 8, !tbaa !34
  %i.fc = load ptr, ptr %i.u, align 8, !tbaa !26
  tail call void @b3StackFree(ptr noundef nonnull %0, ptr noundef %i.fc) #10
  store ptr null, ptr %i.u, align 8, !tbaa !26
  %i.fd = load ptr, ptr %i.m, align 8, !tbaa !25
  tail call void @b3StackFree(ptr noundef nonnull %0, ptr noundef %i.fd) #10
  store ptr null, ptr %i.m, align 8, !tbaa !25
  tail call void @b3ValidateSolverSets(ptr noundef nonnull %0) #10
  br label %bb.aj

bb.aj:                                            ; preds = %bb.c, %._crit_edge
  ret void
}

declare ptr @b3StackAlloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @b3ParallelFor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @b3FindPairsTask(i32 noundef %0, i32 noundef %1, i32 %2, ptr noundef %3) #0 !func_sanitize !136 {
bb.a:
  %4 = alloca %struct.b3QueryPairContext, align 8 ; 13 uses
  %5 = alloca %struct.b3AABB, align 8             ; 7 uses
  %i.a = icmp ne ptr %3, null, !nosanitize !9
  %i.b = ptrtoint ptr %3 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @72, i64 %i.b) #9, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 800 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i8 0, i64 56, i1 false)
  store ptr %3, ptr %4, align 8, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 -1, ptr %i.h, align 8, !tbaa !100
  %i.i = icmp slt i32 %0, %1
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.j = ptrtoint ptr %i.f to i64, !nosanitize !9 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1104
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 1088
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %.not34 = icmp ugt ptr %i.f, inttoptr (i64 -81 to ptr)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 880
  %.not35 = icmp ugt ptr %i.f, inttoptr (i64 -161 to ptr)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 960
  %i.t = sext i32 %0 to i64
  %wide.trip.count = sext i32 %1 to i64
  br label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 6 uses
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !25   ; 3 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv ; 3 uses
  %i.w = shl nsw i64 %indvars.iv, 3
  %i.x = ptrtoint ptr %i.u to i64, !nosanitize !9 ; 3 uses
end_hunk_0
