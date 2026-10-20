Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/block_allocator?download=true
begin_hunk_0_@b3CreateBlockAllocator:bb.a
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %.lr.ph.split.split
  %i.am = ptrtoint ptr %i.ai to i64, !nosanitize !9 ; 2 uses
  %i.an = and i64 %i.am, 7, !nosanitize !9
  %i.ao = icmp eq i64 %i.an, 0, !nosanitize !9
  br i1 %i.ao, label %bb.n, label %.split27, !prof !20, !nosanitize !9

.split27:                                         ; preds = %bb.m, %.split27.us
  %.us-phi28 = phi i64 [ 0, %.split27.us ], [ %i.am, %bb.m ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @9, i64 %.us-phi28) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split.split, !llvm.loop !28

.loopexit:                                        ; preds = %bb.n, %bb.k, %bb.e
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_sub_overflow_abort(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #2

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_add_overflow_abort(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_type_mismatch_v1_abort(ptr, i64) local_unnamed_addr #1

declare ptr @b3GrowAlloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @b3Alloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #2

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_mul_overflow_abort(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_pointer_overflow_abort(ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @b3DestroyBlockAllocator(ptr noundef %0) local_unnamed_addr #0 !func_sanitize !30 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %.lr.ph, label %bb.e, !prof !31, !nosanitize !9

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.f, align 8, !tbaa !17
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph57, label %.split.us

.lr.ph57:                                         ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.l = shl nuw nsw i64 %indvars.iv, 3
  %i.m = ptrtoint ptr %i.j to i64, !nosanitize !9 ; 3 uses
  %i.n = add i64 %i.l, %i.m, !nosanitize !9       ; 3 uses
  %i.o = icmp ne ptr %i.j, null, !nosanitize !9   ; 2 uses
  %i.p = icmp eq i64 %i.n, 0
  %i.q = xor i1 %i.o, %i.p
  %i.r = icmp uge i64 %i.n, %i.m, !nosanitize !9
  %i.s = and i1 %i.r, %i.q, !nosanitize !9
  br i1 %i.s, label %bb.b, label %.split41.us, !prof !20, !nosanitize !9

bb.b:                                             ; preds = %.lr.ph57
  %i.t = ptrtoint ptr %i.k to i64, !nosanitize !9 ; 2 uses
  %i.u = and i64 %i.t, 7, !nosanitize !9
  %i.v = icmp eq i64 %i.u, 0, !nosanitize !9
  %i.w = and i1 %i.o, %i.v
  br i1 %i.w, label %bb.c, label %.split45.us, !prof !20, !nosanitize !9

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.g, align 8, !tbaa !15   ; 3 uses
  %i.y = add i32 %i.x, 8388608
  %i.z = icmp ult i32 %i.y, 16777216
  br i1 %i.z, label %bb.d, label %.split48.us, !prof !20, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.ab = shl nsw i32 %i.x, 8
  %i.ac = sext i32 %i.ab to i64
  tail call void @b3Free(ptr noundef %i.aa, i64 noundef %i.ac) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !17
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %.lr.ph57, label %.split.us

bb.e:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @11, i64 %i.b) #5, !nosanitize !9
  unreachable, !nosanitize !9

.split41.us:                                      ; preds = %.lr.ph57
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @12, i64 %i.m, i64 %i.n) #5, !nosanitize !9
  unreachable, !nosanitize !9

.split45.us:                                      ; preds = %bb.b
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @13, i64 %i.t) #5, !nosanitize !9
  unreachable, !nosanitize !9

.split48.us:                                      ; preds = %bb.c
  %i.ag = zext i32 %i.x to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @14, i64 256, i64 %i.ag) #5, !nosanitize !9
  unreachable, !nosanitize !9

.split.us:                                        ; preds = %bb.d, %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ai = load ptr, ptr %0, align 8, !tbaa !18
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !19
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 3
  tail call void @b3Free(ptr noundef %i.ai, i64 noundef %i.al) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

declare void @b3Free(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden ptr @b3AllocateElement(ptr noundef %0) local_unnamed_addr #0 !func_sanitize !33 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !20, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @15, i64 %i.b) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.h = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.g, i32 1), !nosanitize !9 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1, !nosanitize !9
  br i1 %i.i, label %bb.d, label %bb.e, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.g to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @16, i64 %i.j, i64 1) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.k = extractvalue { i32, i1 } %i.h, 0, !nosanitize !9
  store i32 %i.k, ptr %i.f, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 4 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = ptrtoint ptr %i.m to i64, !nosanitize !9 ; 2 uses
  %i.o = and i64 %i.n, 7, !nosanitize !9
  %i.p = icmp eq i64 %i.o, 0, !nosanitize !9
  br i1 %i.p, label %bb.h, label %bb.g, !prof !20, !nosanitize !9

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @17, i64 %i.n) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !27
  store ptr %i.q, ptr %i.l, align 8, !tbaa !26
  br label %bb.ab

bb.i:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16   ; 4 uses
  %i.t = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.s, i32 1), !nosanitize !9 ; 2 uses
  %i.u = extractvalue { i32, i1 } %i.t, 1, !nosanitize !9
  br i1 %i.u, label %bb.j, label %bb.k, !prof !10, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  %i.v = zext nneg i32 %i.s to i64, !nosanitize !9
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @18, i64 %i.v, i64 1) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %i.w = extractvalue { i32, i1 } %i.t, 0, !nosanitize !9
  store i32 %i.w, ptr %i.r, align 4, !tbaa !16
  %i.x = ashr i32 %i.s, 8                         ; 3 uses
  %i.y = add nsw i32 %i.x, 1                      ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !17  ; 2 uses
  %1 = icmp sgt i32 %i.y, %i.aa
  br i1 %1, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !19 ; 2 uses
  %2 = icmp slt i32 %i.ac, %i.y
  br i1 %2, label %bb.m, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  %i.ad = shl i32 %i.ac, 3
  %i.ae = shl nsw i32 %i.y, 3
  %i.af = load ptr, ptr %0, align 8, !tbaa !18
  %i.ag = tail call ptr @b3GrowAlloc(ptr noundef %i.af, i32 noundef %i.ad, i32 noundef %i.ae) #6
  store ptr %i.ag, ptr %0, align 8, !tbaa !18
  store i32 %i.y, ptr %i.ab, align 4, !tbaa !19
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.l
  store i32 %i.y, ptr %i.z, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %3 = sext i32 %i.aa to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %3, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 4 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !15 ; 3 uses
  %i.aj = add i32 %i.ai, 8388608
  %i.ak = icmp ult i32 %i.aj, 16777216
  br i1 %i.ak, label %bb.o, label %bb.n, !prof !20, !nosanitize !9

bb.n:                                             ; preds = %.lr.ph.split
  %i.al = zext i32 %i.ai to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @19, i64 256, i64 %i.al) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %.lr.ph.split
  %i.am = shl nsw i32 %i.ai, 8
  %i.an = sext i32 %i.am to i64
  %i.ao = tail call ptr @b3Alloc(i64 noundef %i.an) #6
  %i.ap = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %indvars.iv ; 2 uses
  %i.ar = shl nsw i64 %indvars.iv, 3
  %i.as = ptrtoint ptr %i.ap to i64, !nosanitize !9 ; 3 uses
  %i.at = add i64 %i.ar, %i.as, !nosanitize !9    ; 3 uses
  %i.au = icmp ne ptr %i.ap, null, !nosanitize !9 ; 2 uses
  %i.av = icmp eq i64 %i.at, 0
  %i.aw = xor i1 %i.au, %i.av
  %i.ax = icmp uge i64 %i.at, %i.as, !nosanitize !9
  %i.ay = icmp slt i64 %indvars.iv, 0
  %i.az = xor i1 %i.ay, %i.ax
  %i.ba = and i1 %i.aw, %i.az, !nosanitize !9
  br i1 %i.ba, label %bb.q, label %bb.p, !prof !20, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @20, i64 %i.as, i64 %i.at) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  %i.bb = ptrtoint ptr %i.aq to i64, !nosanitize !9 ; 2 uses
  %i.bc = and i64 %i.bb, 7, !nosanitize !9
  %i.bd = icmp eq i64 %i.bc, 0, !nosanitize !9
  %i.be = and i1 %i.au, %i.bd
  br i1 %i.be, label %bb.s, label %bb.r, !prof !20, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @21, i64 %i.bb) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !23
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond, label %.loopexit, label %.lr.ph.split, !llvm.loop !32

.loopexit:                                        ; preds = %bb.s, %bb.k
  %i.bf = and i32 %i.s, 255                       ; 2 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.bh = sext i32 %i.x to i64                    ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh ; 2 uses
  %i.bj = shl nsw i64 %i.bh, 3
  %i.bk = ptrtoint ptr %i.bg to i64, !nosanitize !9 ; 3 uses
  %i.bl = add i64 %i.bj, %i.bk, !nosanitize !9    ; 3 uses
  %i.bm = icmp ne ptr %i.bg, null, !nosanitize !9 ; 2 uses
  %i.bn = icmp eq i64 %i.bl, 0
  %i.bo = xor i1 %i.bm, %i.bn
  %i.bp = icmp uge i64 %i.bl, %i.bk, !nosanitize !9
  %i.bq = icmp slt i32 %i.x, 0
  %i.br = xor i1 %i.bq, %i.bp
  %i.bs = and i1 %i.bo, %i.br, !nosanitize !9
  br i1 %i.bs, label %bb.u, label %bb.t, !prof !20, !nosanitize !9

bb.t:                                             ; preds = %.loopexit
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @22, i64 %i.bk, i64 %i.bl) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.u:                                             ; preds = %.loopexit
  %i.bt = ptrtoint ptr %i.bi to i64, !nosanitize !9 ; 2 uses
  %i.bu = and i64 %i.bt, 7, !nosanitize !9
  %i.bv = icmp eq i64 %i.bu, 0, !nosanitize !9
  %i.bw = and i1 %i.bm, %i.bv
  br i1 %i.bw, label %bb.w, label %bb.v, !prof !20, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @23, i64 %i.bt) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %bb.u
  %i.bx = load ptr, ptr %i.bi, align 8, !tbaa !23 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !15 ; 2 uses
  %i.ca = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %i.bf, i32 %i.bz), !nosanitize !9 ; 2 uses
  %i.cb = extractvalue { i32, i1 } %i.ca, 1, !nosanitize !9
  br i1 %i.cb, label %bb.x, label %bb.y, !prof !10, !nosanitize !9

bb.x:                                             ; preds = %bb.w
  %i.cc = zext nneg i32 %i.bf to i64, !nosanitize !9
  %i.cd = zext i32 %i.bz to i64, !nosanitize !9
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @24, i64 %i.cc, i64 %i.cd) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.y:                                             ; preds = %bb.w
  %i.ce = extractvalue { i32, i1 } %i.ca, 0, !nosanitize !9 ; 2 uses
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  %i.cg = ptrtoint ptr %i.bx to i64, !nosanitize !9 ; 3 uses
  %i.ch = add i64 %i.cf, %i.cg, !nosanitize !9    ; 3 uses
  %i.ci = icmp ne ptr %i.bx, null, !nosanitize !9
  %i.cj = icmp eq i64 %i.ch, 0
  %i.ck = xor i1 %i.ci, %i.cj
  %i.cl = icmp uge i64 %i.ch, %i.cg, !nosanitize !9
  %i.cm = icmp slt i32 %i.ce, 0
  %i.cn = xor i1 %i.cm, %i.cl
  %i.co = and i1 %i.ck, %i.cn, !nosanitize !9
  br i1 %i.co, label %bb.aa, label %bb.z, !prof !20, !nosanitize !9

bb.z:                                             ; preds = %bb.y
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @25, i64 %i.cg, i64 %i.ch) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.aa:                                            ; preds = %bb.y
  %i.cp = getelementptr inbounds i8, ptr %i.bx, i64 %i.cf
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.h
  %.036 = phi ptr [ %i.m, %bb.h ], [ %i.cp, %bb.aa ]
  ret ptr %.036
}

; Function Attrs: nounwind uwtable
define hidden void @b3FreeElement(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !func_sanitize !34 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !20, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @26, i64 %i.b) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.h = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.g, i32 -1) ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1, !nosanitize !9
  br i1 %i.i, label %bb.d, label %bb.e, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.j = zext i32 %i.g to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @27, i64 %i.j, i64 1) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.k = extractvalue { i32, i1 } %i.h, 0, !nosanitize !9
  store i32 %i.k, ptr %i.f, align 8, !tbaa !25
  %i.l = icmp ne ptr %1, null, !nosanitize !9
  %i.m = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.n = and i64 %i.m, 7, !nosanitize !9
  %i.o = icmp eq i64 %i.n, 0, !nosanitize !9
  %i.p = and i1 %i.l, %i.o, !nosanitize !9
  br i1 %i.p, label %bb.g, label %bb.f, !prof !20, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @28, i64 %i.m) #5, !nosanitize !9
  unreachable, !nosanitize !9

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  store ptr %i.r, ptr %1, align 8, !tbaa !27
  store ptr %1, ptr %i.q, align 8, !tbaa !26
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind uwtable }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

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
!10 = !{!"branch_weights", i32 1, i32 1048575}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS7b3Block", !11, i64 0}
!13 = !{!"b3DynamicArray_b3Block", !12, i64 0, !6, i64 8, !6, i64 12}
!14 = !{!"b3BlockAllocator", !13, i64 0, !11, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!15 = !{!14, !6, i64 24}
!16 = !{!14, !6, i64 28}
!17 = !{!14, !6, i64 8}
!18 = !{!14, !12, i64 0}
!19 = !{!14, !6, i64 12}
!20 = !{!"branch_weights", i32 1048575, i32 1}
!21 = !{!"p1 omnipotent char", !11, i64 0}
!22 = !{!"b3Block", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!14, !6, i64 32}
!26 = !{!14, !11, i64 16}
!27 = !{!11, !11, i64 0}
!28 = distinct !{!28, !24}
!29 = !{i32 -1056584962, i32 -1195907103}
!30 = !{i32 -1056584962, i32 -884914999}
!31 = !{!"branch_weights", i32 127, i32 1}
!32 = distinct !{!32, !24}
!33 = !{i32 -1056584962, i32 2066812210}
!34 = !{i32 -1056584962, i32 732327394}
end_hunk_0
