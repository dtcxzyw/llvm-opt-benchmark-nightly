Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/debug?download=true
inline.NumInlined: 18
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@mbedtls_debug_print_buf:bb.a
  %i.z = add nsw i64 %i.s, %i.y                   ; 2 uses
  %i.aa = load i8, ptr %5, align 1, !tbaa !31     ; 2 uses
  %i.ab = add i8 %i.aa, -32
  %or.cond62.peel = icmp ult i8 %i.ab, 95
  %i.ac = select i1 %or.cond62.peel, i8 %i.aa, i8 46
  store i8 %i.ac, ptr %i.b, align 16, !tbaa !31
  %exitcond.peel = icmp eq i64 %i.p, 0
  br i1 %exitcond.peel, label %.lr.ph74.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %.069 = phi i64 [ %i.au, %bb.g ], [ %i.z, %bb.e ] ; 3 uses
  %.05268 = phi i64 [ %i.az, %bb.g ], [ 1, %bb.e ] ; 5 uses
  %i.ad = and i64 %.05268, 15                     ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.069
  %i.ag = sub i64 512, %.069
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b) #8 ; 0 uses
  %.val63 = load ptr, ptr %0, align 8, !tbaa !18  ; 2 uses
  %i.ai = getelementptr i8, ptr %.val63, i64 40
  %.val63.val = load ptr, ptr %i.ai, align 8, !tbaa !30
  %i.aj = getelementptr i8, ptr %.val63, i64 48
  %.val63.val66 = load ptr, ptr %i.aj, align 8, !tbaa !32
  call void %.val63.val(ptr noundef %.val63.val66, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.a) #8, !inline_history !0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.b, i8 0, i64 17, i1 false)
  %i.ak = trunc nuw nsw i64 %.05268 to i32
  %i.al = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 512, ptr noundef nonnull @.str.3, i32 noundef %i.ak) #8
  %i.am = sext i32 %i.al to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.2 = phi i64 [ %i.am, %bb.f ], [ %.069, %.lr.ph ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %.2
  %i.ao = sub i64 512, %.2
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 %.05268 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !31
  %i.ar = zext i8 %i.aq to i32
  %i.as = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.an, i64 noundef %i.ao, ptr noundef nonnull @.str.4, i32 noundef %i.ar) #8
  %i.at = sext i32 %i.as to i64
  %i.au = add i64 %.2, %i.at                      ; 3 uses
  %i.av = load i8, ptr %i.ap, align 1, !tbaa !31  ; 2 uses
  %i.aw = add i8 %i.av, -32
  %or.cond62 = icmp ult i8 %i.aw, 95
  %i.ax = select i1 %or.cond62, i8 %i.av, i8 46
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !31
  %i.az = add nuw nsw i64 %.05268, 1
  %exitcond = icmp eq i64 %.05268, %umin
  br i1 %exitcond, label %.preheader, label %.lr.ph, !llvm.loop !34

.preheader:                                       ; preds = %bb.g
  %i.ba = and i64 %i.q, 15
  %.not5971 = icmp eq i64 %i.ba, 0
  br i1 %.not5971, label %._crit_edge75, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %bb.e, %.preheader
  %.373.ph = phi i64 [ %i.z, %bb.e ], [ %i.au, %.preheader ]
  %.15372.ph = phi i64 [ 1, %bb.e ], [ %i.q, %.preheader ]
  br label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %.lr.ph74
  %.373 = phi i64 [ %i.bf, %.lr.ph74 ], [ %.373.ph, %.lr.ph74.preheader ] ; 3 uses
  %.15372 = phi i64 [ %i.bg, %.lr.ph74 ], [ %.15372.ph, %.lr.ph74.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.373
  %i.bc = sub i64 512, %.373
  %i.bd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bb, i64 noundef %i.bc, ptr noundef nonnull @.str.5) #8
  %i.be = sext i32 %i.bd to i64
  %i.bf = add i64 %.373, %i.be                    ; 2 uses
  %i.bg = add nuw nsw i64 %.15372, 1              ; 2 uses
  %i.bh = and i64 %i.bg, 15
  %exitcond80 = icmp eq i64 %i.bh, 0
  br i1 %exitcond80, label %._crit_edge75, label %.lr.ph74, !llvm.loop !35

._crit_edge75:                                    ; preds = %.lr.ph74, %.preheader
  %.3.lcssa = phi i64 [ %i.au, %.preheader ], [ %i.bf, %.lr.ph74 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %.3.lcssa
  %i.bj = sub i64 512, %.3.lcssa
  %i.bk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bi, i64 noundef %i.bj, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b) #8 ; 0 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.bl = getelementptr i8, ptr %.val, i64 40
  %.val.val = load ptr, ptr %i.bl, align 8, !tbaa !30
  %i.bm = getelementptr i8, ptr %.val, i64 48
  %.val.val67 = load ptr, ptr %i.bm, align 8, !tbaa !32
  call void %.val.val(ptr noundef %.val.val67, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.a) #8, !inline_history !0
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge75, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define void @mbedtls_debug_print_ecp(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp eq ptr %i.f, null
  %i.h = load i32, ptr @debug_threshold, align 4
  %i.i = icmp sgt i32 %1, %i.h
  %or.cond = select i1 %i.g, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 512, ptr noundef nonnull @.str.6, ptr noundef %4) #8 ; 0 uses
  call void @mbedtls_debug_print_mpi(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.a, ptr noundef %5)
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 512, ptr noundef nonnull @.str.7, ptr noundef %4) #8 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @mbedtls_debug_print_mpi(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @mbedtls_debug_print_mpi(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %._crit_edge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp eq ptr %i.f, null
  %i.h = icmp eq ptr %5, null
  %or.cond = or i1 %i.h, %i.g
  %i.i = load i32, ptr @debug_threshold, align 4
  %i.j = icmp sgt i32 %1, %i.i
  %or.cond48 = select i1 %or.cond, i1 true, i1 %i.j
  br i1 %or.cond48, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i64 @mbedtls_mpi_bitlen(ptr noundef nonnull %5) #8 ; 3 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 512, ptr noundef nonnull @.str.8, ptr noundef %4, i32 noundef %i.l) #8 ; 0 uses
  %.val50 = load ptr, ptr %0, align 8, !tbaa !18  ; 2 uses
  %i.n = getelementptr i8, ptr %.val50, i64 40
  %.val50.val = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.o = getelementptr i8, ptr %.val50, i64 48
  %.val50.val51 = load ptr, ptr %i.o, align 8, !tbaa !32
  call void %.val50.val(ptr noundef %.val50.val51, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.a) #8, !inline_history !0
  %i.p = icmp eq i64 %i.k, 0
  br i1 %i.p, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  store i8 32, ptr %i.a, align 16, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 48, ptr %i.q, align 1, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 48, ptr %i.r, align 2, !tbaa !31
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = add i64 %i.k, 34359738367                ; 2 uses
  %i.t = and i64 %i.s, 17179869184
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.v = lshr i64 %i.s, 3
  %i.w = and i64 %i.v, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.w, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %.03957 = phi i64 [ 0, %.lr.ph.preheader ], [ %.1, %bb.g ] ; 4 uses
  %i.x = lshr i64 %indvars.iv, 3
  %i.y = load ptr, ptr %5, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !39
  %i.ab = shl nuw nsw i64 %indvars.iv, 3
  %i.ac = and i64 %i.ab, 56
  %i.ad = lshr i64 %i.aa, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.03957
  %i.ag = sub i64 512, %.03957
  %i.ah = and i32 %i.ae, 255
  %i.ai = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.4, i32 noundef %i.ah) #8 ; 0 uses
  %i.aj = add i64 %.03957, 3                      ; 3 uses
  %i.ak = icmp ugt i64 %i.aj, 47
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  %i.am = sub i64 509, %.03957
  %i.an = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.al, i64 noundef %i.am, ptr noundef nonnull @.str.9) #8 ; 0 uses
  %.val49 = load ptr, ptr %0, align 8, !tbaa !18  ; 2 uses
  %i.ao = getelementptr i8, ptr %.val49, i64 40
  %.val49.val = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.ap = getelementptr i8, ptr %.val49, i64 48
  %.val49.val52 = load ptr, ptr %i.ap, align 8, !tbaa !32
  call void %.val49.val(ptr noundef %.val49.val52, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.a) #8, !inline_history !0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.1 = phi i64 [ 0, %bb.f ], [ %i.aj, %.lr.ph ]  ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aq = icmp sgt i64 %indvars.iv, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.g
  %.not = icmp eq i64 %.1, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.h

bb.h:                                             ; preds = %.thread, %._crit_edge
  %.256 = phi i64 [ 3, %.thread ], [ %.1, %._crit_edge ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %.256
  %i.as = sub nuw nsw i64 512, %.256
  %i.at = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ar, i64 noundef %i.as, ptr noundef nonnull @.str.9) #8 ; 0 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.au = getelementptr i8, ptr %.val, i64 40
  %.val.val = load ptr, ptr %i.au, align 8, !tbaa !30
  %i.av = getelementptr i8, ptr %.val, i64 48
  %.val.val53 = load ptr, ptr %i.av, align 8, !tbaa !32
  call void %.val.val(ptr noundef %.val.val53, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.a) #8, !inline_history !0
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge, %bb.h, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare i64 @mbedtls_mpi_bitlen(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @mbedtls_debug_print_crt(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 18 uses
  %6 = alloca [3 x %struct.mbedtls_pk_debug_item], align 16 ; 14 uses
  %i.b = alloca [16 x i8], align 16               ; 15 uses
  %i.c = alloca [512 x i8], align 16              ; 5 uses
  %i.d = alloca [512 x i8], align 16              ; 4 uses
  %i.e = alloca [1024 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = icmp eq ptr %i.j, null
  %i.l = icmp eq ptr %5, null
  %or.cond = or i1 %i.l, %i.k
  %i.m = load i32, ptr @debug_threshold, align 4
  %i.n = icmp sgt i32 %1, %i.m
  %or.cond28 = select i1 %or.cond, i1 true, i1 %i.n
  br i1 %or.cond28, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 15 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %debug_print_pk.exit
  %.033 = phi i32 [ 0, %.preheader ], [ %i.x, %debug_print_pk.exit ]
  %.02332 = phi ptr [ %5, %.preheader ], [ %i.cw, %debug_print_pk.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.x = add nuw nsw i32 %.033, 1                 ; 2 uses
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 512, ptr noundef nonnull @.str.10, ptr noundef %4, i32 noundef %i.x) #8 ; 0 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.z = getelementptr i8, ptr %.val, i64 40
  %.val.val = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.aa = getelementptr i8, ptr %.val, i64 48
  %.val.val29 = load ptr, ptr %i.aa, align 8, !tbaa !32
  call void %.val.val(ptr noundef %.val.val29, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.d) #8, !inline_history !0
  %i.ab = call i32 @mbedtls_x509_crt_info(ptr noundef nonnull %i.e, i64 noundef 1023, ptr noundef nonnull @.str.11, ptr noundef nonnull %.02332) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.015.i = phi ptr [ %i.e, %bb.d ], [ %i.al, %bb.g ] ; 4 uses
  %.0.i = phi ptr [ %i.e, %bb.d ], [ %.1.i, %bb.g ] ; 3 uses
  %i.ac = load i8, ptr %.015.i, align 1, !tbaa !31
  switch i8 %i.ac, label %bb.g [
    i8 0, label %debug_print_line_by_line.exit
    i8 10, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.ad = ptrtoint ptr %.015.i to i64
  %i.ae = ptrtoint ptr %.0.i to i64
  %i.af = add i64 %i.ad, 1
  %i.ag = sub i64 %i.af, %i.ae
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 511) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %.0.i, i64 %spec.store.select.i, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %spec.store.select.i
  store i8 0, ptr %i.ah, align 1, !tbaa !31
  %.val.i = load ptr, ptr %0, align 8, !tbaa !18  ; 2 uses
  %i.ai = getelementptr i8, ptr %.val.i, i64 40
  %.val.val.i = load ptr, ptr %i.ai, align 8, !tbaa !30
  %i.aj = getelementptr i8, ptr %.val.i, i64 48
  %.val.val17.i = load ptr, ptr %i.aj, align 8, !tbaa !32
  call void %.val.val.i(ptr noundef %.val.val17.i, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.c) #8, !inline_history !40
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi ptr [ %i.ak, %bb.f ], [ %.0.i, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  br label %bb.e, !llvm.loop !41

debug_print_line_by_line.exit:                    ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %i.am = getelementptr inbounds nuw i8, ptr %.02332, i64 360
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %6, i8 0, i64 72, i1 false)
  %i.an = call i32 @mbedtls_pk_debug(ptr noundef nonnull %i.am, ptr noundef nonnull %6) #8
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %.preheader.i, label %bb.h

.preheader.i:                                     ; preds = %debug_print_line_by_line.exit
  %i.ao = load i32, ptr %6, align 16, !tbaa !45
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %debug_print_pk.exit, label %bb.i

bb.h:                                             ; preds = %debug_print_line_by_line.exit
  %.val26.i = load ptr, ptr %0, align 8, !tbaa !18 ; 2 uses
  %i.aq = getelementptr i8, ptr %.val26.i, i64 40
  %.val26.val.i = load ptr, ptr %i.aq, align 8, !tbaa !30
  %i.ar = getelementptr i8, ptr %.val26.i, i64 48
  %.val26.val27.i = load ptr, ptr %i.ar, align 8, !tbaa !32
  call void %.val26.val.i(ptr noundef %.val26.val27.i, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str.13) #8, !inline_history !42
  br label %debug_print_pk.exit

bb.i:                                             ; preds = %.preheader.i
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.at = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 16, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, ptr noundef %i.as) #8 ; 0 uses
  store i8 0, ptr %i.o, align 1, !tbaa !31
  %i.au = load i32, ptr %6, align 16, !tbaa !45
  switch i32 %i.au, label %bb.n [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.q, align 16, !tbaa !47
  call void @mbedtls_debug_print_mpi(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.b, ptr noundef %i.av)
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %i.q, align 16, !tbaa !47 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ax = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %mbedtls_debug_print_ecp.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !30
  %i.bb = icmp eq ptr %i.ba, null
  %i.bc = load i32, ptr @debug_threshold, align 4
  %i.bd = icmp sgt i32 %1, %i.bc
  %or.cond.i.i = select i1 %i.bb, i1 true, i1 %i.bd
  br i1 %or.cond.i.i, label %mbedtls_debug_print_ecp.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 512, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.b) #8 ; 0 uses
  call void @mbedtls_debug_print_mpi(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.a, ptr noundef %i.aw)
  %i.bf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 512, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.b) #8 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  call void @mbedtls_debug_print_mpi(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bg)
  br label %mbedtls_debug_print_ecp.exit.i

mbedtls_debug_print_ecp.exit.i:                   ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %.val.i30 = load ptr, ptr %0, align 8, !tbaa !18 ; 2 uses
  %i.bh = getelementptr i8, ptr %.val.i30, i64 40
  %.val.val.i31 = load ptr, ptr %i.bh, align 8, !tbaa !30
  %i.bi = getelementptr i8, ptr %.val.i30, i64 48
end_hunk_0
