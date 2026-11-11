Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_alloc?download=true
inline.NumInlined: 60
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@zend_mm_realloc_slow:bb.a

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

zend_mm_get_next_free_slot.exit.i:                ; preds = %bb.f, %bb.e
  store ptr %i.z, ptr %i.x, align 8, !tbaa !29
  br label %zend_mm_alloc_heap.exit

bb.h:                                             ; preds = %zend_mm_small_size_to_bin.exit
  %i.aj = tail call fastcc ptr @zend_mm_alloc_small_slow(ptr noundef nonnull %0, i32 noundef %.0.i16)
  br label %zend_mm_alloc_heap.exit

bb.i:                                             ; preds = %bb.a
  %i.ak = icmp ult i64 %2, 2093057
  br i1 %i.ak, label %bb.j, label %bb.k, !prof !33

bb.j:                                             ; preds = %bb.i
  %i.al = tail call fastcc ptr @zend_mm_alloc_large(ptr noundef nonnull %0, i64 noundef %spec.store.select.i)
  br label %zend_mm_alloc_heap.exit

bb.k:                                             ; preds = %bb.i
  %i.am = tail call fastcc ptr @zend_mm_alloc_huge(ptr noundef nonnull %0, i64 noundef %spec.store.select.i)
  br label %zend_mm_alloc_heap.exit

zend_mm_alloc_heap.exit:                          ; preds = %bb.h, %zend_mm_get_next_free_slot.exit.i, %bb.j, %bb.k
  %.0.i = phi ptr [ %i.am, %bb.k ], [ %i.al, %bb.j ], [ %i.y, %zend_mm_get_next_free_slot.exit.i ], [ %i.aj, %bb.h ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i, ptr align 1 %1, i64 %3, i1 false)
  %i.an = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.ao = and i64 %i.an, 2097151                  ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %bb.n, !prof !43

bb.l:                                             ; preds = %zend_mm_alloc_heap.exit
  %.not23.i = icmp eq ptr %1, null
  br i1 %.not23.i, label %zend_mm_free_heap.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @zend_mm_free_huge(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %zend_mm_free_heap.exit

bb.n:                                             ; preds = %zend_mm_alloc_heap.exit
  %i.aq = and i64 %i.an, -2097152
  %i.ar = inttoptr i64 %i.aq to ptr               ; 3 uses
  %i.as = lshr i64 %i.ao, 12                      ; 2 uses
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 592
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.as
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !32 ; 3 uses
  %i.ax = load ptr, ptr %i.ar, align 2097152, !tbaa !41
  %.not.i = icmp eq ptr %i.ax, %0
  br i1 %.not.i, label %bb.p, label %bb.o, !prof !33

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.p:                                             ; preds = %bb.n
  %.not21.i = icmp sgt i32 %i.aw, -1
  br i1 %.not21.i, label %bb.r, label %bb.q, !prof !43

bb.q:                                             ; preds = %bb.p
  %i.ay = and i32 %i.aw, 31                       ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !32
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 16, !tbaa !70
  %i.bf = sub i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.bd, align 16, !tbaa !70
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.az ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !29 ; 2 uses
  %i.bj = icmp ne i32 %i.ay, 0
  tail call void @llvm.assume(i1 %i.bj)
  store ptr %i.bi, ptr %1, align 8, !tbaa !31
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = tail call i64 @llvm.bswap.i64(i64 %i.bk)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load i64, ptr %i.bm, align 16, !tbaa !26
  %i.bo = xor i64 %i.bn, %i.bl
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !29
  store ptr %1, ptr %i.bh, align 8, !tbaa !29
  br label %zend_mm_free_heap.exit

bb.r:                                             ; preds = %bb.p
  %i.bs = and i64 %i.an, 4095
  %.not22.i = icmp eq i64 %i.bs, 0
  br i1 %.not22.i, label %bb.t, label %bb.s, !prof !33

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bt = and i32 %i.aw, 1023                     ; 2 uses
  %i.bu = shl nuw nsw i32 %i.bt, 12
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 16, !tbaa !70
  %i.by = sub i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bw, align 16, !tbaa !70
  tail call fastcc void @zend_mm_free_pages(ptr noundef nonnull %0, ptr noundef nonnull %i.ar, i32 noundef range(i32 0, 512) %i.at, i32 noundef range(i32 0, 1024) %i.bt)
  br label %zend_mm_free_heap.exit

zend_mm_free_heap.exit:                           ; preds = %bb.l, %bb.m, %bb.q, %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load i64, ptr %i.bz, align 16, !tbaa !70
  %. = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.ca)
  store i64 %., ptr %i.a, align 8, !tbaa !83
  ret ptr %.0.i
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i64 @zend_mm_get_huge_block_size(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.07 = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %.not8 = icmp eq ptr %.07, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.09 = phi ptr [ %.0, %bb.c ], [ %.07, %bb.a ]  ; 3 uses
  %i.b = load ptr, ptr %.09, align 8, !tbaa !75
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.09, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !76
  ret i64 %i.e

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.09, i64 16
  %.0 = load ptr, ptr %i.f, align 8, !tbaa !86    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5

._crit_edge:                                      ; preds = %bb.c, %bb.a
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @zend_mm_safe_error(ptr nofree noundef writeonly captures(none) initializes((304, 308)) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #32 {
bb.a:
  %4 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  store i32 1, ptr %i.a, align 16, !tbaa !82
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  store ptr %4, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !155
  %i.c = call i32 @__sigsetjmp(ptr noundef nonnull %4, i32 noundef 0) #51
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef %1, i64 noundef %2, i64 noundef %3) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !155
  %i.f = icmp eq ptr %i.e, %4
  call void @llvm.assume(i1 %i.f)
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  store i32 0, ptr %i.a, align 16, !tbaa !82
  call void @_zend_bailout(ptr noundef nonnull @.str.6, i32 noundef 418) #41
  unreachable
}

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(ptr noundef, i32 noundef) local_unnamed_addr #33

; Function Attrs: noreturn
declare void @_zend_bailout(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare ptr @mremap(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #17

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @zend_mm_alloc_small_slow(ptr noundef %0, i32 noundef %1) unnamed_addr #30 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 6 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @bin_pages, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32   ; 2 uses
  %i.d = tail call fastcc ptr @zend_mm_alloc_pages(ptr noundef %0, i32 noundef %i.c) ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = and i64 %i.f, -2097152
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = trunc i64 %i.f to i32
  %i.j = lshr i32 %i.i, 12
  %i.k = and i32 %i.j, 511                        ; 4 uses
  %i.l = or i32 %1, -2147483648
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 592 ; 4 uses
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  store i32 %i.l, ptr %i.o, align 4, !tbaa !32
  %i.p = shl nuw i64 1, %i.a
  %i.q = and i64 %i.p, 1072889856
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %umax = tail call i32 @llvm.umax.i32(i32 %i.c, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  %i.r = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.r, 1
  %i.s = shl nuw i64 1, %i.a
  %i.t = and i64 %i.s, 13434879
  %.not43 = icmp eq i64 %i.t, 0
  br i1 %.not43, label %.preheader.new, label %bb.d

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter = and i64 %i.r, -2
  %invariant.op44 = or i32 %1, -1073741824
  %invariant.op = or i32 %1, -1073741824
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.new
  %indvars.iv = phi i64 [ 1, %.preheader.new ], [ %indvars.iv.next.3, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.new ], [ %niter.next.3, %bb.c ]
  %i.u = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.v = shl i32 %i.u, 16
  %.reass.2 = or i32 %i.v, %invariant.op44
  %i.w = add i32 %i.k, %i.u
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.x
  store i32 %.reass.2, ptr %i.y, align 4, !tbaa !32
  %i.z = trunc i64 %indvars.iv to i32
  %i.aa = add i32 %i.z, 1                         ; 2 uses
  %i.ab = shl i32 %i.aa, 16
  %.reass.3 = or i32 %i.ab, %invariant.op
  %i.ac = add i32 %i.k, %i.aa
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ad
  store i32 %.reass.3, ptr %i.ae, align 4, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !156

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader
  %indvars.iv.epil = phi i64 [ 1, %.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod42 = trunc i64 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.af = trunc nuw i64 %indvars.iv.epil to i32   ; 2 uses
  %i.ag = shl i32 %i.af, 16
  %invariant.op.epil = or i32 %1, %i.ag
  %.reass.epil = or i32 %invariant.op.epil, -1073741824
  %i.ah = add i32 %i.k, %i.af
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ai
  store i32 %.reass.epil, ptr %i.aj, align 4, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.loopexit.unr-lcssa, %bb.b
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.a
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @bin_elements, i64 %i.a
  %i.an = load i32, ptr %i.am, align 4, !tbaa !32
  %i.ao = add i32 %i.an, -1
  %i.ap = mul i32 %i.ao, %i.al
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aq ; 2 uses
  %i.as = zext i32 %i.al to i64                   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.a
  store ptr %i.at, ptr %i.av, align 8, !tbaa !29
  %i.aw = icmp ne i32 %1, 0
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = load i64, ptr %i.ax, align 16, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.loopexit
  %.035 = phi ptr [ %i.at, %.loopexit ], [ %i.az, %bb.e ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.035, i64 %i.as ; 5 uses
  store ptr %i.az, ptr %.035, align 8, !tbaa !31
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = tail call i64 @llvm.bswap.i64(i64 %i.ba)
  %i.bc = xor i64 %i.bb, %i.ay
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds i8, ptr %i.az, i64 -8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !29
  %.not39 = icmp eq ptr %i.az, %i.ar
  br i1 %.not39, label %bb.f, label %bb.e, !llvm.loop !157

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.ar, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @zend_mm_alloc_pages(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !44  ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.af, %bb.a
  %.0139 = phi ptr [ %i.b, %bb.a ], [ %i.ar, %bb.af ] ; 9 uses
  %.0135 = phi i32 [ 0, %bb.a ], [ %i.dj, %bb.af ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0139, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !47   ; 5 uses
  %i.e = icmp ult i32 %i.d, %1
  br i1 %i.e, label %bb.n, label %bb.c, !prof !43

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.0139, i64 28 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !45   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0139, i64 528
  %i.i = getelementptr inbounds nuw i8, ptr %.0139, i64 536
  %i.j = load i64, ptr %i.h, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.m, %bb.c
  %.0133 = phi i32 [ -1, %bb.c ], [ %.1134, %bb.m ] ; 6 uses
  %.0131 = phi i32 [ 512, %bb.c ], [ %.1132, %bb.m ] ; 4 uses
  %.0128 = phi ptr [ %i.i, %bb.c ], [ %.2130.lcssa, %bb.m ] ; 2 uses
  %.0125 = phi i64 [ %i.j, %bb.c ], [ %i.ap, %bb.m ] ; 2 uses
  %.0124 = phi i32 [ 0, %bb.c ], [ %.2.lcssa, %bb.m ] ; 2 uses
  %i.k = icmp eq i64 %.0125, -1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.1209 = phi i32 [ %i.l, %bb.f ], [ %.0124, %bb.d ]
  %.1129208 = phi ptr [ %i.o, %bb.f ], [ %.0128, %bb.d ] ; 2 uses
  %i.l = add i32 %.1209, 64                       ; 3 uses
  %i.m = icmp eq i32 %i.l, 512
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = icmp sgt i32 %.0133, 0
  br i1 %i.n, label %.thread, label %bb.n

bb.f:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.1129208, i64 8 ; 2 uses
  %i.p = load i64, ptr %.1129208, align 8, !tbaa !46 ; 2 uses
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !159

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.1129.lcssa = phi ptr [ %.0128, %bb.d ], [ %i.o, %bb.f ] ; 2 uses
  %.1126.lcssa = phi i64 [ %.0125, %bb.d ], [ %i.p, %bb.f ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0124, %bb.d ], [ %i.l, %bb.f ] ; 3 uses
  %i.r = xor i64 %.1126.lcssa, -1
  %i.s = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.r, i1 true)
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = add i32 %.1.lcssa, %i.t                  ; 8 uses
  %i.v = add nuw i64 %.1126.lcssa, 1
  %i.w = and i64 %i.v, %.1126.lcssa               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.lr.ph215, label %._crit_edge216

.lr.ph215:                                        ; preds = %._crit_edge, %bb.j
  %.2213 = phi i32 [ %i.y, %bb.j ], [ %.1.lcssa, %._crit_edge ]
  %.2130212 = phi ptr [ %i.af, %bb.j ], [ %.1129.lcssa, %._crit_edge ] ; 2 uses
  %i.y = add i32 %.2213, 64                       ; 4 uses
  %i.z = icmp uge i32 %i.y, %i.g
  %i.aa = icmp eq i32 %i.y, 512
  %or.cond = or i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.lr.ph215
  %i.ab = sub i32 512, %i.u                       ; 2 uses
  %.not154 = icmp uge i32 %i.ab, %1
  %i.ac = icmp ult i32 %i.ab, %.0131
  %or.cond162 = select i1 %.not154, i1 %i.ac, i1 false
  br i1 %or.cond162, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = add i32 %i.u, %1                        ; 2 uses
  store i32 %i.ad, ptr %i.f, align 4, !tbaa !45
  br label %.thread

bb.i:                                             ; preds = %bb.g
  store i32 %i.u, ptr %i.f, align 4, !tbaa !45
  %i.ae = icmp sgt i32 %.0133, 0
  br i1 %i.ae, label %.thread, label %bb.n

bb.j:                                             ; preds = %.lr.ph215
  %i.af = getelementptr inbounds nuw i8, ptr %.2130212, i64 8 ; 2 uses
  %i.ag = load i64, ptr %.2130212, align 8, !tbaa !46 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph215, label %._crit_edge216, !llvm.loop !160

._crit_edge216:                                   ; preds = %bb.j, %._crit_edge
  %.2130.lcssa = phi ptr [ %.1129.lcssa, %._crit_edge ], [ %i.af, %bb.j ]
  %.2127.lcssa = phi i64 [ %i.w, %._crit_edge ], [ %i.ag, %bb.j ] ; 3 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %._crit_edge ], [ %i.y, %bb.j ] ; 2 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.2127.lcssa, i1 true)
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = sub i32 %.2.lcssa, %i.u
  %i.al = add i32 %i.ak, %i.aj                    ; 4 uses
  %.not = icmp ult i32 %i.al, %1
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge216
  %i.am = icmp eq i32 %i.al, %1
  br i1 %i.am, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = icmp ult i32 %i.al, %.0131
  %spec.select = select i1 %i.an, i32 %i.u, i32 %.0133
  %spec.select164 = tail call i32 @llvm.umin.i32(i32 %i.al, i32 %.0131)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge216
  %.1134 = phi i32 [ %.0133, %._crit_edge216 ], [ %spec.select, %bb.l ]
  %.1132 = phi i32 [ %.0131, %._crit_edge216 ], [ %spec.select164, %bb.l ]
  %i.ao = add i64 %.2127.lcssa, -1
  %i.ap = or i64 %i.ao, %.2127.lcssa
  br label %bb.d

bb.n:                                             ; preds = %bb.e, %bb.i, %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %.0139, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !48 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.b
  br i1 %i.as, label %.preheader, label %bb.af

.preheader:                                       ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %.preheader, %bb.r
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !53 ; 3 uses
  %.not155 = icmp eq ptr %i.aw, null
  br i1 %.not155, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !51
  %i.az = add nsw i32 %i.ay, -1
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !51
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !48
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !53
  br label %bb.ac

bb.q:                                             ; preds = %bb.o
  %i.bc = load i64, ptr %i.au, align 8, !tbaa !81
  %i.bd = load i64, ptr %i.av, align 8, !tbaa !56
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp ult i64 %i.be, 2097152
  br i1 %i.bf, label %bb.r, label %.loopexit, !prof !43

bb.r:                                             ; preds = %bb.q
  %i.bg = tail call i64 @zend_mm_gc(ptr noundef nonnull %0)
  %.not156 = icmp eq i64 %i.bg, 0
  br i1 %.not156, label %bb.s, label %bb.o

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bi = load i32, ptr %i.bh, align 16, !tbaa !82
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.bk = load i64, ptr %i.au, align 8, !tbaa !81
  %i.bl = shl i32 %1, 12
  %i.bm = zext i32 %i.bl to i64
  tail call fastcc void @zend_mm_safe_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef %i.bk, i64 noundef %i.bm) #39
  unreachable

.loopexit:                                        ; preds = %bb.q, %bb.s
  %i.bn = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val166 = load ptr, ptr %i.bn, align 8, !tbaa !58 ; 3 uses
  %.not.i167 = icmp eq ptr %.val166, null
  br i1 %.not.i167, label %bb.v, label %bb.u, !prof !33

bb.u:                                             ; preds = %.loopexit
  %i.bo = load ptr, ptr %.val166, align 8, !tbaa !87
  %i.bp = tail call ptr %i.bo(ptr noundef nonnull %.val166, i64 noundef 2097152, i64 noundef 2097152) #38, !inline_history !4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2097151
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 2097151
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = icmp eq i64 %i.bs, %i.bt
  tail call void @llvm.assume(i1 %i.bu)
  br label %zend_mm_chunk_alloc.exit

bb.v:                                             ; preds = %.loopexit
  %i.bv = tail call fastcc ptr @zend_mm_chunk_alloc_int(i64 noundef 2097152)
  br label %zend_mm_chunk_alloc.exit

zend_mm_chunk_alloc.exit:                         ; preds = %bb.u, %bb.v
  %.0.i168 = phi ptr [ %i.bp, %bb.u ], [ %i.bv, %bb.v ] ; 2 uses
  %i.bw = icmp eq ptr %.0.i168, null
  br i1 %i.bw, label %bb.w, label %bb.ab, !prof !43

bb.w:                                             ; preds = %zend_mm_chunk_alloc.exit
  %i.bx = tail call i64 @zend_mm_gc(ptr noundef nonnull %0)
  %.not157 = icmp eq i64 %i.bx, 0
  br i1 %.not157, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val = load ptr, ptr %i.bn, align 8, !tbaa !58 ; 3 uses
  %.not.i169 = icmp eq ptr %.val, null
  br i1 %.not.i169, label %bb.z, label %bb.y, !prof !33

bb.y:                                             ; preds = %bb.x
  %i.by = load ptr, ptr %.val, align 8, !tbaa !87
  %i.bz = tail call ptr %i.by(ptr noundef nonnull %.val, i64 noundef 2097152, i64 noundef 2097152) #38, !inline_history !4 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2097151
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = and i64 %i.cb, 2097151
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = icmp eq i64 %i.cc, %i.cd
  tail call void @llvm.assume(i1 %i.ce)
  br label %zend_mm_chunk_alloc.exit171

bb.z:                                             ; preds = %bb.x
  %i.cf = tail call fastcc ptr @zend_mm_chunk_alloc_int(i64 noundef 2097152)
  br label %zend_mm_chunk_alloc.exit171

zend_mm_chunk_alloc.exit171:                      ; preds = %bb.y, %bb.z
  %.0.i170 = phi ptr [ %i.bz, %bb.y ], [ %i.cf, %bb.z ] ; 2 uses
  %.not158 = icmp eq ptr %.0.i170, null
  br i1 %.not158, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %zend_mm_chunk_alloc.exit171, %bb.w
  %i.cg = load i64, ptr %i.av, align 8, !tbaa !56
  %i.ch = shl i32 %1, 12
  %i.ci = zext i32 %i.ch to i64
  tail call fastcc void @zend_mm_safe_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i64 noundef %i.cg, i64 noundef %i.ci) #39
  unreachable

bb.ab:                                            ; preds = %zend_mm_chunk_alloc.exit, %zend_mm_chunk_alloc.exit171
  %.1140 = phi ptr [ %.0.i170, %zend_mm_chunk_alloc.exit171 ], [ %.0.i168, %zend_mm_chunk_alloc.exit ]
  %i.cj = load i64, ptr %i.av, align 8, !tbaa !56
  %i.ck = add i64 %i.cj, 2097152                  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 16, !tbaa !78
  %.165 = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 %i.ck)
  store i64 %i.ck, ptr %i.av, align 8, !tbaa !56
  store i64 %.165, ptr %i.cl, align 16, !tbaa !78
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.p
  %.2141 = phi ptr [ %i.aw, %bb.p ], [ %.1140, %bb.ab ] ; 11 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 16, !tbaa !50 ; 2 uses
  %i.cp = add nsw i32 %i.co, 1                    ; 2 uses
  store i32 %i.cp, ptr %i.cn, align 16, !tbaa !50
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !77
  %.not159 = icmp slt i32 %i.co, %i.cr
  br i1 %.not159, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !77
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store ptr %0, ptr %.2141, align 16, !tbaa !41
  %i.cs = load ptr, ptr %i.a, align 16, !tbaa !44 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.2141, i64 8 ; 2 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = load ptr, ptr %i.cu, align 16, !tbaa !49 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.2141, i64 16 ; 2 uses
  store ptr %i.cv, ptr %i.cw, align 16, !tbaa !49
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %.2141, ptr %i.cx, align 8, !tbaa !48
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %.2141, ptr %i.cz, align 16, !tbaa !49
  %i.da = getelementptr inbounds nuw i8, ptr %.2141, i64 24
  store i32 511, ptr %i.da, align 8, !tbaa !47
  %i.db = getelementptr inbounds nuw i8, ptr %.2141, i64 28
  store i32 1, ptr %i.db, align 4, !tbaa !45
  %i.dc = load ptr, ptr %i.cw, align 16, !tbaa !49
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load i32, ptr %i.dd, align 16, !tbaa !57
  %i.df = add i32 %i.de, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.2141, i64 32
  store i32 %i.df, ptr %i.dg, align 16, !tbaa !57
  %i.dh = getelementptr inbounds nuw i8, ptr %.2141, i64 528
  store i64 1, ptr %i.dh, align 16, !tbaa !46
  %i.di = getelementptr inbounds nuw i8, ptr %.2141, i64 592
  store i32 1073741825, ptr %i.di, align 16, !tbaa !32
  br label %.thread

end_hunk_0
begin_hunk_1_@zend_mm_free_pages:bb.a
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !61
  tail call void %i.dj(ptr noundef nonnull %.val, ptr noundef nonnull %1, i64 noundef 2097152) #38, !inline_history !62
  br label %zend_mm_free_pages_ex.exit

bb.u:                                             ; preds = %.thread16
  %i.dk = tail call i32 @munmap(ptr noundef nonnull %1, i64 noundef 2097152) #38
  %.not.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i, label %zend_mm_free_pages_ex.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dl = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.dm = tail call ptr @__errno_location() #42
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !32 ; 2 uses
  %i.do = tail call ptr @strerror(i32 noundef %i.dn) #38
  %i.dp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dl, ptr noundef nonnull @.str.4, i32 noundef %i.dn, ptr noundef %i.do) #40 ; 0 uses
  br label %zend_mm_free_pages_ex.exit

bb.w:                                             ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !48
  store ptr %i.dr, ptr %i.bk, align 8, !tbaa !48
  %i.ds = getelementptr i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.ds, align 8, !tbaa !58 ; 3 uses
  %.not.i6 = icmp eq ptr %.val4, null
  br i1 %.not.i6, label %bb.y, label %bb.x, !prof !33

bb.x:                                             ; preds = %bb.w
  %i.dt = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !61
  tail call void %i.du(ptr noundef nonnull %.val4, ptr noundef nonnull %i.da, i64 noundef 2097152) #38, !inline_history !62
  br label %zend_mm_chunk_free.exit8

bb.y:                                             ; preds = %bb.w
  %i.dv = tail call i32 @munmap(ptr noundef nonnull %i.da, i64 noundef 2097152) #38
  %.not.i.i7 = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i7, label %zend_mm_chunk_free.exit8, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dw = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.dx = tail call ptr @__errno_location() #42
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !32 ; 2 uses
  %i.dz = tail call ptr @strerror(i32 noundef %i.dy) #38
  %i.ea = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dw, ptr noundef nonnull @.str.4, i32 noundef %i.dy, ptr noundef %i.dz) #40 ; 0 uses
  br label %zend_mm_chunk_free.exit8

zend_mm_chunk_free.exit8:                         ; preds = %bb.x, %bb.y, %bb.z
  store ptr %1, ptr %i.db, align 8, !tbaa !53
  br label %zend_mm_free_pages_ex.exit

zend_mm_free_pages_ex.exit:                       ; preds = %zend_mm_chunk_free.exit8, %bb.o, %bb.t, %bb.u, %bb.v, %bb.g
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #34

declare ptr @zend_hash_index_add_new(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #35

; Function Attrs: nounwind uwtable
define internal void @tracked_free(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @alloc_globals.0, align 8, !tbaa !80 ; 3 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 408 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = tail call ptr @zend_hash_index_find(ptr noundef %i.e, i64 noundef %i.c) #38 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.g = load i64, ptr %i.f, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 16, !tbaa !70
  %i.j = sub i64 %i.i, %i.g                       ; 2 uses
  store i64 %i.j, ptr %i.h, align 16, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store i64 %i.j, ptr %i.k, align 8, !tbaa !56
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !64
  tail call void @zend_hash_del_bucket(ptr noundef %i.l, ptr noundef nonnull %i.f) #38
  tail call void @free(ptr noundef nonnull %0) #38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @tracked_realloc(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = load ptr, ptr @alloc_globals.0, align 8, !tbaa !80 ; 9 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = tail call ptr @zend_hash_index_find(ptr noundef %i.e, i64 noundef %i.c) #38 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.g = load i64, ptr %i.f, align 8, !tbaa !64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.022 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0 = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]     ; 3 uses
  %i.h = icmp ugt i64 %1, %.0
  br i1 %i.h, label %bb.d, label %tracked_check_limit.exit

bb.d:                                             ; preds = %bb.c
  %i.i = sub nuw i64 %1, %.0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.k = load i64, ptr %i.j, align 8, !tbaa !81   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 16, !tbaa !70
  %i.n = sub i64 %i.k, %i.m
  %i.o = icmp ugt i64 %i.i, %i.n
  br i1 %i.o, label %bb.e, label %tracked_check_limit.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.q = load i32, ptr %i.p, align 16, !tbaa !82
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.f, label %tracked_check_limit.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @zend_mm_safe_error(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5, i64 noundef %i.k, i64 noundef %i.i) #39
  unreachable

tracked_check_limit.exit:                         ; preds = %bb.e, %bb.d, %bb.c
  %.not25 = icmp eq ptr %.022, null
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %tracked_check_limit.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  tail call void @zend_hash_del_bucket(ptr noundef %i.s, ptr noundef nonnull %.022) #38
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %tracked_check_limit.exit
  %i.t = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #47 ; 4 uses
  %.not.i26 = icmp ne ptr %i.t, null
  %.not4.i = icmp eq i64 %1, 0
  %spec.select.i = or i1 %.not4.i, %.not.i26
  br i1 %spec.select.i, label %__zend_realloc.exit, label %bb.i, !prof !33

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @zend_out_of_memory() #39
  unreachable

__zend_realloc.exit:                              ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = and i64 %i.u, -8
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = icmp eq ptr %i.t, %i.x
  tail call void @llvm.assume(i1 %i.y)
  store i64 %1, ptr %2, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 4, ptr %i.z, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.ac = call ptr @zend_hash_index_add_new(ptr noundef %i.ab, i64 noundef %i.v, ptr noundef nonnull %2) #38 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  %i.ad = sub i64 %1, %.0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 16, !tbaa !70
  %i.ag = add i64 %i.af, %i.ad                    ; 2 uses
  store i64 %i.ag, ptr %i.ae, align 16, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !56
  ret ptr %i.t
}

declare void @_zend_hash_init(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

declare void @zend_hash_del_bucket(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define internal void @poison_free(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @alloc_globals.0, align 8, !tbaa !80 ; 13 uses
  %.not = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, %i.a
  %or.cond = select i1 %.not, i1 true, i1 %i.b, !prof !161
  br i1 %or.cond, label %zend_mm_free_heap.exit, label %bb.b, !prof !161

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 412
  %i.d = load i8, ptr %i.c, align 4, !tbaa !64
  %i.e = zext i8 %i.d to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 7 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.i = and i64 %i.h, 2097151                    ; 3 uses
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d, !prof !43

bb.c:                                             ; preds = %bb.b
  %i.k = tail call fastcc i64 @zend_mm_get_huge_block_size(ptr noundef nonnull readonly %i.a, ptr noundef nonnull %i.g)
  br label %zend_mm_size.exit

bb.d:                                             ; preds = %bb.b
  %i.l = and i64 %i.h, -2097152
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = lshr i64 %i.i, 12
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 592
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  %i.q = load i32, ptr %i.p, align 4, !tbaa !32   ; 3 uses
  %i.r = load ptr, ptr %i.m, align 2097152, !tbaa !41
  %.not.i14 = icmp eq ptr %i.r, %i.a
  br i1 %.not.i14, label %bb.f, label %bb.e, !prof !33

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not14.i = icmp sgt i32 %i.q, -1
  br i1 %.not14.i, label %bb.h, label %bb.g, !prof !43

bb.g:                                             ; preds = %bb.f
  %i.s = and i32 %i.q, 31
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !32
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.w = shl i32 %i.q, 12
  %i.x = and i32 %i.w, 4190208
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.in.i = phi i32 [ %i.v, %bb.g ], [ %i.x, %bb.h ]
  %.0.i = zext i32 %.0.in.i to i64
  br label %zend_mm_size.exit

zend_mm_size.exit:                                ; preds = %bb.c, %bb.i
  %.1.i = phi i64 [ %i.k, %bb.c ], [ %.0.i, %bb.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 410
  %i.z = load i8, ptr %i.y, align 2, !tbaa !64, !range !84, !noundef !85
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %zend_mm_size.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 411
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 %i.ac, i64 %.1.i, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %zend_mm_size.exit, %bb.j
  br i1 %i.j, label %bb.l, label %bb.m, !prof !43

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @zend_mm_free_huge(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g)
  br label %zend_mm_free_heap.exit

bb.m:                                             ; preds = %bb.k
  %i.ad = and i64 %i.h, -2097152
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.af = lshr i64 %i.i, 12                       ; 2 uses
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 592
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.af
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32 ; 3 uses
  %i.ak = load ptr, ptr %i.ae, align 2097152, !tbaa !41
  %.not.i = icmp eq ptr %i.ak, %i.a
  br i1 %.not.i, label %bb.o, label %bb.n, !prof !33

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.o:                                             ; preds = %bb.m
  %.not21.i = icmp sgt i32 %i.aj, -1
  br i1 %.not21.i, label %bb.q, label %bb.p, !prof !43

bb.p:                                             ; preds = %bb.o
  %i.al = and i32 %i.aj, 31                       ; 2 uses
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 16, !tbaa !70
  %i.as = sub i64 %i.ar, %i.ap
  store i64 %i.as, ptr %i.aq, align 16, !tbaa !70
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.am ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !29 ; 2 uses
  %i.aw = icmp ne i32 %i.al, 0
  tail call void @llvm.assume(i1 %i.aw)
  store ptr %i.av, ptr %i.g, align 8, !tbaa !31
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = tail call i64 @llvm.bswap.i64(i64 %i.ax)
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ba = load i64, ptr %i.az, align 16, !tbaa !26
  %i.bb = xor i64 %i.ba, %i.ay
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ap
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !29
  store ptr %i.g, ptr %i.au, align 8, !tbaa !29
  br label %zend_mm_free_heap.exit

bb.q:                                             ; preds = %bb.o
  %i.bf = and i64 %i.h, 4095
  %.not22.i = icmp eq i64 %i.bf, 0
  br i1 %.not22.i, label %bb.s, label %bb.r, !prof !33

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bg = and i32 %i.aj, 1023                     ; 2 uses
  %i.bh = shl nuw nsw i32 %i.bg, 12
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 16, !tbaa !70
  %i.bl = sub i64 %i.bk, %i.bi
  store i64 %i.bl, ptr %i.bj, align 16, !tbaa !70
  tail call fastcc void @zend_mm_free_pages(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ae, i32 noundef range(i32 0, 512) %i.ag, i32 noundef range(i32 0, 1024) %i.bg)
  br label %zend_mm_free_heap.exit

zend_mm_free_heap.exit:                           ; preds = %bb.a, %bb.s, %bb.p, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @poison_realloc(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @alloc_globals.0, align 8, !tbaa !80 ; 3 uses
  %i.b = tail call ptr @poison_malloc(i64 noundef %1) ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 412 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !64
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = and i64 %i.h, 2097151                    ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d, !prof !43

bb.c:                                             ; preds = %bb.b
  %i.k = tail call fastcc i64 @zend_mm_get_huge_block_size(ptr noundef nonnull readonly %i.a, ptr noundef nonnull %i.g)
  %.pre = load i8, ptr %i.c, align 4, !tbaa !64
  %.pre14 = zext i8 %.pre to i64
  br label %zend_mm_size.exit

bb.d:                                             ; preds = %bb.b
  %i.l = and i64 %i.h, -2097152
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = lshr i64 %i.i, 12
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 592
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  %i.q = load i32, ptr %i.p, align 4, !tbaa !32   ; 3 uses
  %i.r = load ptr, ptr %i.m, align 2097152, !tbaa !41
  %.not.i = icmp eq ptr %i.r, %i.a
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !33

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not14.i = icmp sgt i32 %i.q, -1
  br i1 %.not14.i, label %bb.h, label %bb.g, !prof !43

bb.g:                                             ; preds = %bb.f
  %i.s = and i32 %i.q, 31
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !32
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.w = shl i32 %i.q, 12
  %i.x = and i32 %i.w, 4190208
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.in.i = phi i32 [ %i.v, %bb.g ], [ %i.x, %bb.h ]
  %.0.i = zext i32 %.0.in.i to i64
  br label %zend_mm_size.exit

zend_mm_size.exit:                                ; preds = %bb.c, %bb.i
  %.pre-phi = phi i64 [ %.pre14, %bb.c ], [ %i.e, %bb.i ]
  %.1.i = phi i64 [ %i.k, %bb.c ], [ %.0.i, %bb.i ]
  %i.y = shl nuw nsw i64 %.pre-phi, 1
  %i.z = sub i64 %.1.i, %i.y
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.b, ptr nonnull align 1 %0, i64 %i.aa, i1 false)
  tail call void @poison_free(ptr noundef nonnull %0)
  br label %bb.j

bb.j:                                             ; preds = %zend_mm_size.exit, %bb.a
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal i64 @poison_gc() #0 {
bb.a:
  %i.a = load ptr, ptr @alloc_globals.0, align 8, !tbaa !80 ; 12 uses
  %i.b = load i32, ptr %i.a, align 16, !tbaa !37
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %zend_mm_get_custom_handlers_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !27
  br label %zend_mm_get_custom_handlers_ex.exit

zend_mm_get_custom_handlers_ex.exit:              ; preds = %bb.a, %bb.b
  %.012 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.011 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.010 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.k = phi <2 x ptr> [ %i.j, %bb.b ], [ splat (ptr null), %bb.a ]
  store i32 0, ptr %i.a, align 16, !tbaa !37
  %i.l = tail call i64 @zend_mm_gc(ptr noundef nonnull %i.a)
  %i.m = icmp ne ptr %.012, null
  %i.n = icmp ne ptr %.011, null
  %or.cond.i = or i1 %i.m, %i.n
  %i.o = icmp ne ptr %.010, null
  %or.cond3.i = or i1 %or.cond.i, %i.o
  br i1 %or.cond3.i, label %bb.c, label %zend_mm_set_custom_handlers_ex.exit

bb.c:                                             ; preds = %zend_mm_get_custom_handlers_ex.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store ptr %.012, ptr %i.p, align 16, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store ptr %.011, ptr %i.q, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store ptr %.010, ptr %i.r, align 16, !tbaa !88
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  store <2 x ptr> %i.k, ptr %i.s, align 8, !tbaa !27
  br label %zend_mm_set_custom_handlers_ex.exit

zend_mm_set_custom_handlers_ex.exit:              ; preds = %zend_mm_get_custom_handlers_ex.exit, %bb.c
  %.sink.i5 = phi i32 [ 1, %bb.c ], [ 0, %zend_mm_get_custom_handlers_ex.exit ]
  store i32 %.sink.i5, ptr %i.a, align 16, !tbaa !37
  ret i64 %i.l
}

; Function Attrs: nounwind uwtable
define internal void @poison_shutdown(i1 noundef zeroext %0, i1 noundef zeroext %1) #0 {
bb.a:
  %i.a = load ptr, ptr @alloc_globals.0, align 8, !tbaa !80 ; 15 uses
  %i.b = load i32, ptr %i.a, align 16, !tbaa !37
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %zend_mm_get_custom_handlers_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !27
  br label %zend_mm_get_custom_handlers_ex.exit

zend_mm_get_custom_handlers_ex.exit:              ; preds = %bb.a, %bb.b
  %.016 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.015 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.014 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.k = phi <2 x ptr> [ %i.j, %bb.b ], [ splat (ptr null), %bb.a ]
  store i32 0, ptr %i.a, align 16, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 413
  %i.m = load i8, ptr %i.l, align 1, !tbaa !64, !range !84, !noundef !85
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %zend_mm_check_freelists.exit

bb.c:                                             ; preds = %zend_mm_get_custom_handlers_ex.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29   ; 2 uses
  %.not8.i = icmp eq ptr %i.r, null
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %indvars.iv.i
  br label %zend_mm_get_next_free_slot.exit.i

zend_mm_get_next_free_slot.exit.i:                ; preds = %bb.e, %.lr.ph.i
  %.09.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.t, %bb.e ] ; 2 uses
  %i.t = load ptr, ptr %.09.i, align 8, !tbaa !31 ; 3 uses
  %cond.i = icmp eq ptr %i.t, null
  br i1 %cond.i, label %._crit_edge.i, label %bb.e, !prof !42

bb.e:                                             ; preds = %zend_mm_get_next_free_slot.exit.i
  %i.u = load i32, ptr %i.s, align 4, !tbaa !32
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.z = load i64, ptr %i.p, align 16, !tbaa !26
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = xor i64 %i.z, %i.aa
  %i.ac = tail call i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = inttoptr i64 %i.ac to ptr
  %.not7.i.i = icmp eq ptr %i.t, %i.ad
  br i1 %.not7.i.i, label %zend_mm_get_next_free_slot.exit.i, label %bb.f, !prof !33

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

._crit_edge.i:                                    ; preds = %zend_mm_get_next_free_slot.exit.i, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 30
  br i1 %exitcond.not.i, label %zend_mm_check_freelists.exit, label %bb.d, !llvm.loop !162

zend_mm_check_freelists.exit:                     ; preds = %._crit_edge.i, %zend_mm_get_custom_handlers_ex.exit
  tail call void @zend_mm_shutdown(ptr noundef nonnull %i.a, i1 noundef zeroext %0, i1 noundef zeroext %1)
  br i1 %0, label %bb.i, label %bb.g

bb.g:                                             ; preds = %zend_mm_check_freelists.exit
  %i.ae = icmp ne ptr %.016, null
  %i.af = icmp ne ptr %.015, null
  %or.cond.i = or i1 %i.ae, %i.af
  %i.ag = icmp ne ptr %.014, null
  %or.cond3.i = or i1 %or.cond.i, %i.ag
  br i1 %or.cond3.i, label %bb.h, label %zend_mm_set_custom_handlers_ex.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store ptr %.016, ptr %i.ah, align 16, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store ptr %.015, ptr %i.ai, align 8, !tbaa !69
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store ptr %.014, ptr %i.aj, align 16, !tbaa !88
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  store <2 x ptr> %i.k, ptr %i.ak, align 8, !tbaa !27
  br label %zend_mm_set_custom_handlers_ex.exit

zend_mm_set_custom_handlers_ex.exit:              ; preds = %bb.g, %bb.h
  %.sink.i9 = phi i32 [ 1, %bb.h ], [ 0, %bb.g ]
  store i32 %.sink.i9, ptr %i.a, align 16, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %zend_mm_set_custom_handlers_ex.exit, %zend_mm_check_freelists.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #27

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree nounwind }
attributes #37 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #38 = { nounwind }
attributes #39 = { noreturn }
attributes #40 = { cold nounwind }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { allocsize(1) }
attributes #45 = { nounwind memory(read) }
attributes #46 = { allocsize(0) }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { nounwind willreturn memory(read) }
attributes #49 = { cold }
attributes #50 = { cold noreturn nounwind }
attributes #51 = { nounwind returns_twice }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{null, null}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = distinct !{!3, !34}
!4 = distinct !{null}
!5 = distinct !{!5, !34}
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 _ZTS16_zend_mm_storage", !18, i64 0}
!20 = !{!"long", !14, i64 0}
!21 = !{!"p1 _ZTS18_zend_mm_huge_list", !18, i64 0}
!22 = !{!"p1 _ZTS14_zend_mm_chunk", !18, i64 0}
!23 = !{!"double", !14, i64 0}
!24 = !{!"", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32}
!25 = !{!"_zend_mm_heap", !15, i64 0, !19, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !14, i64 40, !20, i64 280, !20, i64 288, !20, i64 296, !15, i64 304, !21, i64 312, !22, i64 320, !22, i64 328, !15, i64 336, !15, i64 340, !15, i64 344, !23, i64 352, !15, i64 360, !15, i64 364, !24, i64 368, !14, i64 408, !14, i64 416}
!26 = !{!25, !20, i64 32}
!27 = !{!18, !18, i64 0}
!28 = !{!"p1 _ZTS18_zend_mm_free_slot", !18, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"_zend_mm_free_slot", !28, i64 0}
!31 = !{!30, !28, i64 0}
!32 = !{!15, !15, i64 0}
!33 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!25, !15, i64 0}
!38 = !{!25, !18, i64 392}
!39 = !{!"p1 _ZTS13_zend_mm_heap", !18, i64 0}
!40 = !{!"_zend_mm_chunk", !39, i64 0, !22, i64 8, !22, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !14, i64 36, !25, i64 64, !14, i64 528, !14, i64 592}
!41 = !{!40, !39, i64 0}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!44 = !{!25, !22, i64 320}
!45 = !{!40, !15, i64 28}
!46 = !{!20, !20, i64 0}
!47 = !{!40, !15, i64 24}
!48 = !{!40, !22, i64 8}
!49 = !{!40, !22, i64 16}
!50 = !{!25, !15, i64 336}
!51 = !{!25, !15, i64 344}
!52 = !{!25, !23, i64 352}
!53 = !{!25, !22, i64 328}
!54 = !{!25, !15, i64 360}
!55 = !{!25, !15, i64 364}
!56 = !{!25, !20, i64 280}
!57 = !{!40, !15, i64 32}
!58 = !{!25, !19, i64 8}
!59 = !{!"_zend_mm_handlers", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24}
!60 = !{!"_zend_mm_storage", !59, i64 0, !18, i64 32}
!61 = !{!60, !18, i64 8}
!62 = !{ptr @zend_mm_chunk_free}
!63 = !{!25, !18, i64 368}
!64 = !{!14, !14, i64 0}
!65 = !{!"_zend_refcounted_h", !15, i64 0, !14, i64 4}
!66 = !{!"_zend_array", !65, i64 0, !14, i64 8, !15, i64 12, !14, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !20, i64 40, !18, i64 48}
!67 = !{!"_zval_struct", !14, i64 0, !14, i64 8, !14, i64 12}
!68 = !{!"p1 _ZTS12_zend_string", !18, i64 0}
!69 = !{!25, !18, i64 376}
!70 = !{!25, !20, i64 16}
!71 = !{!25, !18, i64 400}
!72 = !{!25, !21, i64 312}
!73 = !{!"_zend_mm_huge_list", !18, i64 0, !20, i64 8, !21, i64 16}
!74 = !{!73, !21, i64 16}
!75 = !{!73, !18, i64 0}
!76 = !{!73, !20, i64 8}
!77 = !{!25, !15, i64 340}
!78 = !{!25, !20, i64 288}
!79 = !{!"_zend_alloc_globals", !39, i64 0}
!80 = !{!79, !39, i64 0}
!81 = !{!25, !20, i64 296}
!82 = !{!25, !15, i64 304}
!83 = !{!25, !20, i64 24}
!84 = !{i8 0, i8 2}
!85 = !{}
!86 = !{!21, !21, i64 0}
!87 = !{!60, !18, i64 0}
!88 = !{!25, !18, i64 384}
!89 = !{i64 2970692, i64 2970713, i64 2970732}
!90 = !{i64 2970369, i64 2970390}
!91 = !{!"p1 omnipotent char", !18, i64 0}
!92 = distinct !{!92, !34}
!93 = distinct !{!93, !34}
!94 = distinct !{!94, !34}
!95 = distinct !{!95, !34}
!96 = distinct !{!96, !34}
!97 = distinct !{!97, !34}
!98 = distinct !{!98, !34}
!99 = distinct !{!99, !34}
!100 = distinct !{!100, !34}
!101 = distinct !{!101, !34}
!102 = distinct !{null}
!103 = !{!66, !15, i64 24}
!104 = !{!"_Bucket", !67, i64 0, !20, i64 16, !68, i64 24}
!105 = !{!104, !20, i64 16}
!106 = !{!"branch_weights", !"expected", i32 1073742629, i32 1073741019}
!107 = distinct !{!107, !34}
!108 = distinct !{!108, !34}
!109 = distinct !{!109, !34}
!110 = distinct !{null}
!111 = distinct !{!111, !34}
!112 = distinct !{ptr @zend_mm_refresh_key_child, null, null}
!113 = distinct !{null}
!114 = distinct !{null, null, null, null}
!115 = distinct !{!115, !34}
!116 = distinct !{!116, !34}
!117 = !{!91, !91, i64 0}
!118 = distinct !{null, null, null}
!119 = !{!60, !18, i64 32}
!120 = !{!59, !18, i64 0}
!121 = !{!59, !18, i64 8}
!122 = distinct !{!122, !34}
!123 = distinct !{null}
!124 = distinct !{null}
!125 = !{!60, !18, i64 16}
!126 = !{!60, !18, i64 24}
!127 = !{!"any p2 pointer", !18, i64 0}
!128 = !{!"p2 _ZTS11_zend_array", !127, i64 0}
!129 = !{!"p1 _ZTS13__jmp_buf_tag", !18, i64 0}
!130 = !{!"_Bool", !14, i64 0}
!131 = !{!"p1 _ZTS11_zend_array", !18, i64 0}
!132 = !{!"p1 _ZTS12_zval_struct", !18, i64 0}
!133 = !{!"p1 _ZTS14_zend_vm_stack", !18, i64 0}
!134 = !{!"p1 _ZTS18_zend_execute_data", !18, i64 0}
!135 = !{!"p1 _ZTS17_zend_class_entry", !18, i64 0}
!136 = !{!"zend_atomic_bool_s", !14, i64 0}
!137 = !{!"_zend_stack", !15, i64 0, !15, i64 4, !15, i64 8, !18, i64 16}
!138 = !{!"p1 _ZTS15_zend_ini_entry", !18, i64 0}
!139 = !{!"p2 _ZTS12_zend_object", !127, i64 0}
!140 = !{!"_zend_objects_store", !139, i64 0, !15, i64 8, !15, i64 12, !15, i64 16}
!141 = !{!"_zend_lazy_objects_store", !66, i64 0}
!142 = !{!"p1 _ZTS12_zend_object", !18, i64 0}
!143 = !{!"p1 _ZTS8_zend_op", !18, i64 0}
!144 = !{!"p1 _ZTS18_zend_module_entry", !18, i64 0}
!145 = !{!"p1 _ZTS18_HashTableIterator", !18, i64 0}
!146 = !{!"_zend_op", !18, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !15, i64 20, !15, i64 24, !14, i64 28, !14, i64 29, !14, i64 30, !14, i64 31}
!147 = !{!"", !132, i64 0, !132, i64 8, !132, i64 16}
!148 = !{!"p1 _ZTS19_zend_fiber_context", !18, i64 0}
!149 = !{!"p1 _ZTS11_zend_fiber", !18, i64 0}
!150 = !{!"p2 _ZTS16_zend_error_info", !127, i64 0}
!151 = !{!"_zend_call_stack", !18, i64 0, !20, i64 8}
!152 = !{!"p1 _ZTS19_zend_strtod_bigint", !18, i64 0}
!153 = !{!"_zend_strtod_state", !14, i64 0, !152, i64 64, !91, i64 72}
!154 = !{!"_zend_executor_globals", !67, i64 0, !67, i64 16, !14, i64 32, !128, i64 288, !128, i64 296, !66, i64 304, !66, i64 360, !129, i64 416, !15, i64 424, !130, i64 428, !67, i64 432, !15, i64 448, !131, i64 456, !131, i64 464, !131, i64 472, !132, i64 480, !132, i64 488, !133, i64 496, !20, i64 504, !134, i64 512, !135, i64 520, !15, i64 528, !134, i64 536, !15, i64 544, !20, i64 552, !15, i64 560, !15, i64 564, !15, i64 568, !130, i64 572, !130, i64 573, !136, i64 574, !136, i64 575, !131, i64 576, !20, i64 584, !18, i64 592, !18, i64 600, !66, i64 608, !66, i64 664, !15, i64 720, !130, i64 724, !67, i64 728, !67, i64 744, !137, i64 760, !137, i64 784, !137, i64 808, !135, i64 832, !15, i64 840, !15, i64 844, !20, i64 848, !131, i64 856, !131, i64 864, !138, i64 872, !140, i64 880, !141, i64 904, !142, i64 960, !142, i64 968, !143, i64 976, !14, i64 984, !144, i64 1080, !130, i64 1088, !14, i64 1089, !20, i64 1096, !15, i64 1104, !15, i64 1108, !145, i64 1112, !14, i64 1120, !18, i64 1376, !14, i64 1384, !146, i64 1640, !66, i64 1672, !20, i64 1728, !147, i64 1736, !148, i64 1760, !148, i64 1768, !149, i64 1776, !20, i64 1784, !130, i64 1792, !15, i64 1796, !150, i64 1800, !68, i64 1808, !20, i64 1816, !151, i64 1824, !20, i64 1840, !20, i64 1848, !153, i64 1856, !14, i64 1936}
!155 = !{!154, !129, i64 416}
!156 = distinct !{!156, !34, !158}
!157 = distinct !{!157, !34}
!158 = !{!"llvm.loop.isvectorized", i32 1}
!159 = distinct !{!159, !34}
!160 = distinct !{!160, !34}
!161 = !{!"branch_weights", i32 4001, i32 4000000}
!162 = distinct !{!162, !34}
end_hunk_1
