Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/wl_window?download=true
inline.NumInlined: 195
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_glfwGetScancodeNameWayland:bb.a
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.9) #19
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.n, align 4, !tbaa !171
  %i.q = call i32 @_glfwKeySym2Unicode(i32 noundef %i.p) #19 ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.10) #19
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.s = sext i16 %i.d to i64
  %i.t = getelementptr inbounds [5 x i8], ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 135378), i64 %i.s ; 3 uses
  %i.u = call i64 @_glfwEncodeUTF8(ptr noundef nonnull %i.t, i32 noundef %i.q) #19 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.11) #19
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !289
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k, %bb.g
  %.2 = phi ptr [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.k ], [ %i.t, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.m, %bb.e, %bb.b
  %.5 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.e ], [ %.2, %bb.m ]
  ret ptr %.5
}

declare i32 @_glfwKeySym2Unicode(i32 noundef) local_unnamed_addr #2

declare i64 @_glfwEncodeUTF8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -32768, 32768) i32 @_glfwGetKeyScancodeWayland(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134680), i64 %i.a
  %i.c = load i16, ptr %i.b, align 2, !tbaa !265
  %i.d = sext i16 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @_glfwCreateCursorWayland(ptr nofree noundef writeonly captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @createShmBuffer(ptr noundef %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.b, align 8, !tbaa !290
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load <2 x i32>, ptr %1, align 8, !tbaa !171
  store <2 x i32> %i.d, ptr %i.c, align 8, !tbaa !171
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %2, ptr %i.e, align 8, !tbaa !449
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %3, ptr %i.f, align 4, !tbaa !450
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @createShmBuffer(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !249
  %i.b = shl i32 %i.a, 2                          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !250
  %i.e = mul i32 %i.b, %i.d                       ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 3 uses
  %i.g = tail call i32 @memfd_create(ptr noundef nonnull @.str.71, i32 noundef 3) #19 ; 3 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.g, i32 noundef 1033, i32 noundef 3) #19 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = tail call ptr @getenv(ptr noundef nonnull @.str.72) #19 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @__errno_location() #20    ; 2 uses
  store i32 2, ptr %i.k, align 4, !tbaa !171
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #21
  %i.m = add i64 %i.l, 20
  %i.n = tail call ptr @_glfw_calloc(i64 noundef %i.m, i64 noundef 1) #19 ; 7 uses
  %i.o = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(1) %i.j) #19 ; 0 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.n)
  %endptr.i = getelementptr inbounds i8, ptr %i.n, i64 %strlen.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %endptr.i, ptr noundef nonnull align 16 dereferenceable(20) @createAnonymousFile.template, i64 20, i1 false)
  %i.p = tail call i32 @mkostemp(ptr noundef nonnull %i.n, i32 noundef 524288) #19 ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %createTmpfileCloexec.exit.i, label %createTmpfileCloexec.exit.thread.i

createTmpfileCloexec.exit.thread.i:               ; preds = %bb.e
  tail call void @_glfw_free(ptr noundef nonnull %i.n) #19
  %.pre = tail call ptr @__errno_location() #20
  br label %bb.h

createTmpfileCloexec.exit.i:                      ; preds = %bb.e
  %i.r = tail call i32 @unlink(ptr noundef nonnull %i.n) #19 ; 0 uses
  tail call void @_glfw_free(ptr noundef nonnull %i.n) #19
  br label %bb.f

bb.f:                                             ; preds = %createTmpfileCloexec.exit.i, %bb.b
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.p, %createTmpfileCloexec.exit.i ] ; 6 uses
  %i.s = tail call i32 @posix_fallocate(i32 noundef %.0.i, i64 noundef 0, i64 noundef range(i64 -2147483648, 2147483648) %i.f) #19 ; 2 uses
  %.not21.i = icmp eq i32 %i.s, 0
  br i1 %.not21.i, label %createAnonymousFile.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i32 @close(i32 noundef %.0.i) #19 ; 0 uses
  %i.u = tail call ptr @__errno_location() #20    ; 2 uses
  store i32 %i.s, ptr %i.u, align 4, !tbaa !171
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %createTmpfileCloexec.exit.thread.i, %bb.d
  %.pre-phi = phi ptr [ %i.u, %bb.g ], [ %.pre, %createTmpfileCloexec.exit.thread.i ], [ %i.k, %bb.d ]
  %i.v = load i32, ptr %.pre-phi, align 4, !tbaa !171
  %i.w = tail call ptr @strerror(i32 noundef %i.v) #19
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.69, i32 noundef %i.e, ptr noundef %i.w) #19
  br label %bb.k

createAnonymousFile.exit:                         ; preds = %bb.f
  %i.x = tail call ptr @mmap(ptr noundef null, i64 noundef %i.f, i32 noundef 3, i32 noundef 1, i32 noundef %.0.i, i64 noundef 0) #19 ; 3 uses
  %i.y = icmp eq ptr %i.x, inttoptr (i64 -1 to ptr)
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %createAnonymousFile.exit
  %i.z = tail call ptr @__errno_location() #20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !171
  %i.ab = tail call ptr @strerror(i32 noundef %i.aa) #19
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.70, ptr noundef %i.ab) #19
  %i.ac = tail call i32 @close(i32 noundef %.0.i) #19 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %createAnonymousFile.exit
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133920), align 8, !tbaa !454 ; 2 uses
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !162
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !120
  %i.ag = tail call i32 %i.af(ptr noundef %i.ad) #19, !inline_history !451
  %i.ah = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ae(ptr noundef %i.ad, i32 noundef 0, ptr noundef nonnull @_glfw_wl_shm_pool_interface, i32 noundef %i.ag, i32 noundef 0, ptr noundef null, i32 noundef range(i32 0, -2147483648) %.0.i, i32 noundef %i.e) #19, !inline_history !451 ; 4 uses
  %i.ai = tail call i32 @close(i32 noundef %.0.i) #19 ; 0 uses
  %i.aj = load i32, ptr %0, align 8, !tbaa !249   ; 2 uses
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !250 ; 2 uses
  %i.al = mul nsw i32 %i.ak, %i.aj
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !251
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.j
  %.lcssa50 = phi i32 [ %i.aj, %bb.j ], [ %i.br, %.lr.ph ]
  %.lcssa = phi i32 [ %i.ak, %bb.j ], [ %i.bs, %.lr.ph ]
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !162
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !120
  %i.ar = tail call i32 %i.aq(ptr noundef %i.ah) #19, !inline_history !452
  %i.as = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.ap(ptr noundef %i.ah, i32 noundef 0, ptr noundef nonnull @_glfw_wl_buffer_interface, i32 noundef %i.ar, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %.lcssa50, i32 noundef %.lcssa, i32 noundef %i.b, i32 noundef 0) #19, !inline_history !452
  %i.at = tail call i32 @munmap(ptr noundef %i.x, i64 noundef %i.f) #19 ; 0 uses
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !162
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !120
  %i.aw = tail call i32 %i.av(ptr noundef %i.ah) #19, !inline_history !453
  %i.ax = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.au(ptr noundef %i.ah, i32 noundef 1, ptr noundef null, i32 noundef %i.aw, i32 noundef 1) #19, !inline_history !453 ; 0 uses
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04053 = phi i32 [ %i.bp, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.04152 = phi ptr [ %i.bo, %.lr.ph ], [ %i.x, %.lr.ph.preheader ] ; 5 uses
  %.04251 = phi ptr [ %i.bq, %.lr.ph ], [ %i.ao, %.lr.ph.preheader ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.04251, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !289 ; 2 uses
  %1 = zext i8 %i.az to i16                       ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.04251, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !289
  %2 = zext i8 %i.bb to i16
  %.lhs.trunc = mul nuw i16 %2, %1
  %i.bc = udiv i16 %.lhs.trunc, 255
  %i.bd = trunc nuw i16 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %.04152, i64 1
  store i8 %i.bd, ptr %.04152, align 1, !tbaa !289
  %i.bf = getelementptr inbounds nuw i8, ptr %.04251, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !289
  %3 = zext i8 %i.bg to i16
  %.lhs.trunc46 = mul nuw i16 %3, %1
  %i.bh = udiv i16 %.lhs.trunc46, 255
  %i.bi = trunc nuw i16 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %.04152, i64 2
  store i8 %i.bi, ptr %i.be, align 1, !tbaa !289
  %i.bk = load i8, ptr %.04251, align 1, !tbaa !289
  %4 = zext i8 %i.bk to i16
  %.lhs.trunc48 = mul nuw i16 %4, %1
  %i.bl = udiv i16 %.lhs.trunc48, 255
  %i.bm = trunc nuw i16 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %.04152, i64 3
  store i8 %i.bm, ptr %i.bj, align 1, !tbaa !289
  %i.bo = getelementptr inbounds nuw i8, ptr %.04152, i64 4
  store i8 %i.az, ptr %i.bn, align 1, !tbaa !289
  %i.bp = add nuw nsw i32 %.04053, 1              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.04251, i64 4
  %i.br = load i32, ptr %0, align 8, !tbaa !249   ; 2 uses
  %i.bs = load i32, ptr %i.c, align 4, !tbaa !250 ; 2 uses
  %i.bt = mul nsw i32 %i.bs, %i.br
  %i.bu = icmp slt i32 %i.bp, %i.bt
  br i1 %i.bu, label %.lr.ph, label %._crit_edge

bb.k:                                             ; preds = %bb.i, %._crit_edge, %bb.h
  %.1 = phi ptr [ null, %bb.h ], [ null, %bb.i ], [ %i.as, %._crit_edge ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @_glfwCreateStandardCursorWayland(ptr nofree noundef captures(none) initializes((8, 16)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i32 %1, -221185          ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 10
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._glfwCreateStandardCursorWayland, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %switch.load, %switch.lookup ] ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137560), align 8, !tbaa !279
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134096), align 8, !tbaa !280
  %i.e = tail call ptr %i.c(ptr noundef %i.d, ptr noundef %.0) #19 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !272
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134104), align 8, !tbaa !281 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137560), align 8, !tbaa !279
  %i.i = tail call ptr %i.h(ptr noundef nonnull %i.g, ptr noundef %.0) #19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !455
  %.pr = load ptr, ptr %i.f, align 8, !tbaa !272
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ %.pr, %bb.c ], [ %i.e, %bb.b ]
  %.not17 = icmp eq ptr %i.k, null
  br i1 %.not17, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %switch.tableidx23 = add i32 %1, -221185        ; 3 uses
  %i.l = icmp ult i32 %switch.tableidx23, 9
  %switch.maskindex = trunc i32 %switch.tableidx23 to i16
  %switch.shifted = lshr i16 319, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.l, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup25, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65547, ptr noundef nonnull @.str.28) #19
  br label %bb.k

switch.lookup25:                                  ; preds = %bb.e
  %i.m = zext nneg i32 %switch.tableidx23 to i64
  %switch.gep26 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._glfwCreateStandardCursorWayland.19, i64 %i.m
  %switch.load27 = load ptr, ptr %switch.gep26, align 8 ; 3 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137560), align 8, !tbaa !279
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134096), align 8, !tbaa !280
  %i.p = tail call ptr %i.n(ptr noundef %i.o, ptr noundef nonnull %switch.load27) #19 ; 2 uses
  store ptr %i.p, ptr %i.f, align 8, !tbaa !272
  %.not18 = icmp eq ptr %i.p, null
  br i1 %.not18, label %bb.g, label %bb.h

bb.g:                                             ; preds = %switch.lookup25
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65547, ptr noundef nonnull @.str.29, ptr noundef nonnull %switch.load27) #19
  br label %bb.k

bb.h:                                             ; preds = %switch.lookup25
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134104), align 8, !tbaa !281 ; 2 uses
  %.not19 = icmp eq ptr %i.q, null
  br i1 %.not19, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !455
  %.not20 = icmp eq ptr %i.s, null
  br i1 %.not20, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137560), align 8, !tbaa !279
  %i.u = tail call ptr %i.t(ptr noundef nonnull %i.q, ptr noundef nonnull %switch.load27) #19
  store ptr %i.u, ptr %i.r, align 8, !tbaa !455
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.i, %bb.j, %bb.h, %bb.g, %bb.f
  %.014 = phi i32 [ 0, %bb.g ], [ 0, %bb.f ], [ 1, %bb.h ], [ 1, %bb.j ], [ 1, %bb.i ], [ 1, %bb.d ]
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define void @_glfwDestroyCursorWayland(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !272
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !290  ; 3 uses
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8, !tbaa !162
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8, !tbaa !120
  %i.g = tail call i32 %i.f(ptr noundef nonnull %i.d) #19, !inline_history !13
  %i.h = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.e(ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef null, i32 noundef %i.g, i32 noundef 1) #19, !inline_history !13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @setCursorImage(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.itimerspec, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !282    ; 3 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134112), align 8, !tbaa !291 ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !456
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !457
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.pre41 = load i32, ptr %.phi.trans.insert40, align 4, !tbaa !458
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.f = load i32, ptr %i.e, align 8, !tbaa !157
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !283  ; 2 uses
  %.not37 = icmp eq ptr %i.i, null                ; 2 uses
  %spec.select = select i1 %.not37, ptr %i.a, ptr %i.i
  %spec.select39 = select i1 %.not37, i32 1, i32 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.033 = phi ptr [ %i.a, %bb.c ], [ %spec.select, %bb.d ]
  %.0 = phi i32 [ 1, %bb.c ], [ %spec.select39, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %.033, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !292
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !459
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !294  ; 3 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137568), align 8, !tbaa !295
  %i.r = tail call ptr %i.q(ptr noundef %i.p) #19 ; 2 uses
  %.not38 = icmp eq ptr %i.r, null
  br i1 %.not38, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !460  ; 2 uses
  %i.u = udiv i32 %i.t, 1000
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.v, ptr %i.w, align 8, !tbaa !299
  %i.x = urem i32 %i.t, 1000
  %i.y = mul nuw nsw i32 %i.x, 1000000
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !300
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 134128), align 8, !tbaa !263
  %i.ac = call i32 @timerfd_settime(i32 noundef %i.ab, i32 noundef 0, ptr noundef nonnull %2, ptr noundef null) #19 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load <4 x i32>, ptr %i.p, align 4, !tbaa !171 ; 3 uses
  store <4 x i32> %i.ae, ptr %i.ad, align 8, !tbaa !171
  %i.af = extractelement <4 x i32> %i.ae, i64 2
  %i.ag = extractelement <4 x i32> %i.ae, i64 3
  br label %bb.g
end_hunk_0
