Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_alloc?download=true
inline.NumInlined: 60
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@zend_mm_realloc_slow:bb.a
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.p:                                             ; preds = %bb.n
  %.not21.i = icmp sgt i32 %i.aw, -1
  br i1 %.not21.i, label %bb.r, label %bb.q, !prof !40

bb.q:                                             ; preds = %bb.p
  %i.ay = and i32 %i.aw, 31                       ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !27
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 16, !tbaa !75
  %i.bf = sub i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.bd, align 16, !tbaa !75
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.az ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !23 ; 2 uses
  %i.bj = icmp ne i32 %i.ay, 0
  tail call void @llvm.assume(i1 %i.bj)
  store ptr %i.bi, ptr %1, align 8, !tbaa !25
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = tail call i64 @llvm.bswap.i64(i64 %i.bk)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load i64, ptr %i.bm, align 16, !tbaa !12
  %i.bo = xor i64 %i.bn, %i.bl
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !23
  store ptr %1, ptr %i.bh, align 8, !tbaa !23
  br label %zend_mm_free_heap.exit

bb.r:                                             ; preds = %bb.p
  %i.bs = and i64 %i.an, 4095
  %.not22.i = icmp eq i64 %i.bs, 0
  br i1 %.not22.i, label %bb.t, label %bb.s, !prof !28

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bt = and i32 %i.aw, 1023                     ; 2 uses
  %i.bu = shl nuw nsw i32 %i.bt, 12
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 16, !tbaa !75
  %i.by = sub i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bw, align 16, !tbaa !75
  tail call fastcc void @zend_mm_free_pages(ptr noundef nonnull %0, ptr noundef nonnull %i.ar, i32 noundef range(i32 0, 512) %i.at, i32 noundef range(i32 0, 1024) %i.bt)
  br label %zend_mm_free_heap.exit

zend_mm_free_heap.exit:                           ; preds = %bb.l, %bb.m, %bb.q, %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load i64, ptr %i.bz, align 16, !tbaa !75
  %. = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.ca)
  store i64 %., ptr %i.a, align 8, !tbaa !94
  ret ptr %.0.i
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i64 @zend_mm_get_huge_block_size(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.07 = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %.not8 = icmp eq ptr %.07, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.09 = phi ptr [ %.0, %bb.c ], [ %.07, %bb.a ]  ; 3 uses
  %i.b = load ptr, ptr %.09, align 8, !tbaa !80
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.09, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !81
  ret i64 %i.e

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.09, i64 16
  %.0 = load ptr, ptr %i.f, align 8, !tbaa !100   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !121

._crit_edge:                                      ; preds = %bb.c, %bb.a
  tail call fastcc void @zend_mm_panic(ptr noundef nonnull @.str) #39
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @zend_mm_safe_error(ptr nofree noundef writeonly captures(none) initializes((304, 308)) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #32 {
bb.a:
  %4 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  store i32 1, ptr %i.a, align 16, !tbaa !93
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  store ptr %4, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !127
  %i.c = call i32 @__sigsetjmp(ptr noundef nonnull %4, i32 noundef 0) #51
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef %1, i64 noundef %2, i64 noundef %3) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !127
  %i.f = icmp eq ptr %i.e, %4
  call void @llvm.assume(i1 %i.f)
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  store i32 0, ptr %i.a, align 16, !tbaa !93
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
  %i.c = load i32, ptr %i.b, align 4, !tbaa !27   ; 2 uses
  %i.d = tail call fastcc ptr @zend_mm_alloc_pages(ptr noundef %0, i32 noundef %i.c) ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = and i64 %i.f, -2097152
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = trunc i64 %i.f to i32
  %i.j = lshr i32 %i.i, 12
  %i.k = and i32 %i.j, 511                        ; 6 uses
  %i.l = or i32 %1, -2147483648
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 592 ; 6 uses
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  store i32 %i.l, ptr %i.o, align 4, !tbaa !27
  %i.p = shl nuw i64 1, %i.a
  %i.q = and i64 %i.p, 1072889856
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %umax = tail call i32 @llvm.umax.i32(i32 %i.c, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  %invariant.op = or i32 %1, -1073741824          ; 5 uses
  %i.r = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.r, 3                     ; 3 uses
  %i.s = shl nuw i64 1, %i.a
  %i.t = and i64 %i.s, 720306175
  %.not43 = icmp eq i64 %i.t, 0
  br i1 %.not43, label %.preheader.new, label %.epil.preheader

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter = and i64 %i.r, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.new
  %indvars.iv = phi i64 [ 1, %.preheader.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.new ], [ %niter.next.3, %bb.c ]
  %i.u = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.v = shl i32 %i.u, 16
  %.reass = or i32 %i.v, %invariant.op
  %i.w = add i32 %i.k, %i.u
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.x
  store i32 %.reass, ptr %i.y, align 4, !tbaa !27
  %i.z = trunc i64 %indvars.iv to i32
  %i.aa = add i32 %i.z, 1                         ; 2 uses
  %i.ab = shl i32 %i.aa, 16
  %.reass.1 = or i32 %i.ab, %invariant.op
  %i.ac = add i32 %i.k, %i.aa
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ad
  store i32 %.reass.1, ptr %i.ae, align 4, !tbaa !27
  %i.af = trunc i64 %indvars.iv to i32
  %i.ag = add i32 %i.af, 2                        ; 2 uses
  %i.ah = shl i32 %i.ag, 16
  %.reass.2 = or i32 %i.ah, %invariant.op
  %i.ai = add i32 %i.k, %i.ag
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aj
  store i32 %.reass.2, ptr %i.ak, align 4, !tbaa !27
  %i.al = trunc i64 %indvars.iv to i32
  %i.am = add i32 %i.al, 3                        ; 2 uses
  %i.an = shl i32 %i.am, 16
  %.reass.3 = or i32 %i.an, %invariant.op
  %i.ao = add i32 %i.k, %i.am
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ap
  store i32 %.reass.3, ptr %i.aq, align 4, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !156

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod42 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ar = trunc nuw i64 %indvars.iv.epil to i32   ; 2 uses
  %i.as = shl i32 %i.ar, 16
  %.reass.epil = or i32 %i.as, %invariant.op
  %i.at = add i32 %i.k, %i.ar
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.au
  store i32 %.reass.epil, ptr %i.av, align 4, !tbaa !27
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.d, !llvm.loop !158

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.d, %bb.b
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @bin_data_size, i64 %i.a
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !27 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @bin_elements, i64 %i.a
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !27
  %i.ba = add i32 %i.az, -1
  %i.bb = mul i32 %i.ba, %i.ax
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bc ; 2 uses
  %i.be = zext i32 %i.ax to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.a
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !23
  %i.bi = icmp ne i32 %1, 0
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load i64, ptr %i.bj, align 16, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.loopexit
  %.035 = phi ptr [ %i.bf, %.loopexit ], [ %i.bl, %bb.e ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.035, i64 %i.be ; 5 uses
  store ptr %i.bl, ptr %.035, align 8, !tbaa !25
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = tail call i64 @llvm.bswap.i64(i64 %i.bm)
  %i.bo = xor i64 %i.bn, %i.bk
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 -8
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !23
  %.not39 = icmp eq ptr %i.bl, %i.bd
  br i1 %.not39, label %bb.f, label %bb.e, !llvm.loop !160

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.bd, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @zend_mm_alloc_pages(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !43  ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.af, %bb.a
  %.0139 = phi ptr [ %i.b, %bb.a ], [ %i.ar, %bb.af ] ; 9 uses
  %.0135 = phi i32 [ 0, %bb.a ], [ %i.dj, %bb.af ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0139, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 5 uses
  %i.e = icmp ult i32 %i.d, %1
  br i1 %i.e, label %bb.n, label %bb.c, !prof !40

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.0139, i64 28 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !44   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0139, i64 528
  %i.i = getelementptr inbounds nuw i8, ptr %.0139, i64 536
  %i.j = load i64, ptr %i.h, align 8, !tbaa !45
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
  %i.p = load i64, ptr %.1129208, align 8, !tbaa !45 ; 2 uses
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !161

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
  store i32 %i.ad, ptr %i.f, align 4, !tbaa !44
  br label %.thread

bb.i:                                             ; preds = %bb.g
  store i32 %i.u, ptr %i.f, align 4, !tbaa !44
  %i.ae = icmp sgt i32 %.0133, 0
  br i1 %i.ae, label %.thread, label %bb.n

bb.j:                                             ; preds = %.lr.ph215
  %i.af = getelementptr inbounds nuw i8, ptr %.2130212, i64 8 ; 2 uses
  %i.ag = load i64, ptr %.2130212, align 8, !tbaa !45 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph215, label %._crit_edge216, !llvm.loop !162

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
end_hunk_0
