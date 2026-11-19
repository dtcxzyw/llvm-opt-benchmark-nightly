Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/stb_image?download=true
inline.NumInlined: 822
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZL15stbi__de_iphoneP9stbi__png:bb.a
  %i.ax = trunc i16 %i.aw to i8
  store i8 %i.ax, ptr %i.ae, align 1, !tbaa !34
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !34
  store i8 %i.az, ptr %.14711, align 1, !tbaa !34
  store i8 %i.ac, ptr %i.ay, align 1, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.14711, i64 4
  %i.bb = add nuw i32 %.112, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bb, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !548

.lr.ph15:                                         ; preds = %.lr.ph15, %.lr.ph15.preheader.new
  %.24813 = phi ptr [ %.24.val, %.lr.ph15.preheader.new ], [ %i.br, %.lr.ph15 ] ; 10 uses
  %niter = phi i32 [ 0, %.lr.ph15.preheader.new ], [ %niter.next.3, %.lr.ph15 ]
  %i.bc = load i8, ptr %.24813, align 1, !tbaa !34
  %i.bd = getelementptr inbounds nuw i8, ptr %.24813, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !34
  store i8 %i.be, ptr %.24813, align 1, !tbaa !34
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %.24813, i64 4 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %.24813, i64 6 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !34
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !34
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %.24813, i64 8 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %.24813, i64 10 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !34
  store i8 %i.bm, ptr %i.bj, align 1, !tbaa !34
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !34
  %i.bn = getelementptr inbounds nuw i8, ptr %.24813, i64 12 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !34
  %i.bp = getelementptr inbounds nuw i8, ptr %.24813, i64 14 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !34
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !34
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !34
  %i.br = getelementptr inbounds nuw i8, ptr %.24813, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit32.unr-lcssa, label %.lr.ph15, !llvm.loop !549

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph18
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.lr.ph18.epil.preheader

.lr.ph18.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18.preheader
  %.04616.epil.init = phi ptr [ %.24.val, %.lr.ph18.preheader ], [ %i.x, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph18.epil

.lr.ph18.epil:                                    ; preds = %.lr.ph18.epil, %.lr.ph18.epil.preheader
  %.04616.epil = phi ptr [ %i.bv, %.lr.ph18.epil ], [ %.04616.epil.init, %.lr.ph18.epil.preheader ] ; 4 uses
  %epil.iter36 = phi i32 [ %epil.iter36.next, %.lr.ph18.epil ], [ 0, %.lr.ph18.epil.preheader ]
  %i.bs = load i8, ptr %.04616.epil, align 1, !tbaa !34
  %i.bt = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 2 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !34
  store i8 %i.bu, ptr %.04616.epil, align 1, !tbaa !34
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !34
  %i.bv = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 3
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !550

.loopexit.loopexit32.unr-lcssa:                   ; preds = %.lr.ph15
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph15.epil.preheader

.lr.ph15.epil.preheader:                          ; preds = %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.preheader
  %.24813.epil.init = phi ptr [ %.24.val, %.lr.ph15.preheader ], [ %i.br, %.loopexit.loopexit32.unr-lcssa ]
  %lcmp.mod34 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph15.epil

.lr.ph15.epil:                                    ; preds = %.lr.ph15.epil, %.lr.ph15.epil.preheader
  %.24813.epil = phi ptr [ %i.bz, %.lr.ph15.epil ], [ %.24813.epil.init, %.lr.ph15.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.epil ], [ 0, %.lr.ph15.epil.preheader ]
  %i.bw = load i8, ptr %.24813.epil, align 1, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !34
  store i8 %i.by, ptr %.24813.epil, align 1, !tbaa !34
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !34
  %i.bz = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !551

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #24 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !70
  %i.c = mul i32 %4, %3                           ; 4 uses
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !68   ; 8 uses
  %i.h = shl i32 %3, %i.d                         ; 12 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 2 uses
  br i1 %i.k, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.b
  %i.m = mul nuw nsw i32 %5, %4                   ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !111
  br label %.loopexit704.sink.split

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.r = mul nuw nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.s) #34 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !111
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.loopexit704.sink.split, label %bb.d

bb.d:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.v = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %or.cond.not.i.i, label %bb.e, label %.loopexit704.sink.split

bb.e:                                             ; preds = %bb.d
  %i.w = icmp ne i32 %4, 0                        ; 2 uses
  br i1 %i.w, label %_ZL21stbi__mul2sizes_validii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.e
  %i.x = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.x
  br i1 %.not23.i, label %.loopexit704.sink.split, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.e
  %i.y = mul i32 %i.g, %4                         ; 14 uses
  %i.z = or i32 %i.y, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.z, -1
  br i1 %or.cond.not.i10.i, label %bb.f, label %.loopexit704.sink.split

bb.f:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.aa = icmp eq i32 %6, 0
  br i1 %i.aa, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.f
  %i.ab = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.y, %i.ab
  %i.ac = mul i32 %i.y, %6                        ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 2147483640
  %or.cond696 = or i1 %.not.i, %i.ad
  br i1 %or.cond696, label %.loopexit704.sink.split, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge

_ZL21stbi__mad3sizes_validiiii.exit._crit_edge:   ; preds = %bb.f, %_ZL21stbi__mul2sizes_validii.exit12.i
  %.pre-phi = phi i32 [ %i.ac, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ 0, %bb.f ]
  %i.ae = add nsw i32 %.pre-phi, 7
  %i.af = lshr i32 %i.ae, 3                       ; 4 uses
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = mul i32 %i.ag, %5
  %i.ai = icmp ult i32 %2, %i.ah
  br i1 %i.ai, label %.loopexit704.sink.split, label %.preheader740

.preheader740:                                    ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge
  %i.aj = icmp slt i32 %6, 8                      ; 4 uses
  br i1 %i.k, label %._crit_edge828.thread, label %.lr.ph827

.lr.ph827:                                        ; preds = %.preheader740
  %i.ak = sub i32 %i.c, %i.af
  %narrow = select i1 %i.aj, i32 %i.ak, i32 0
  %.0529.idx = zext i32 %narrow to i64            ; 5 uses
  %i.al = zext i32 %i.e to i64                    ; 5 uses
  %i.am = sub nsw i64 0, %i.al
  %i.an = icmp eq i32 %6, 8
  %.not603 = icmp eq i32 %i.g, %3                 ; 3 uses
  %i.ao = sext i32 %i.h to i64                    ; 55 uses
  %i.ap = sext i32 %i.g to i64                    ; 2 uses
  %i.aq = sext i32 %3 to i64                      ; 2 uses
  %or.cond = select i1 %i.aj, i1 true, i1 %.not603
  %.6565745 = add i32 %4, -1                      ; 8 uses
  %.not605746 = icmp eq i32 %.6565745, 0          ; 7 uses
  %wide.trip.count968 = zext i32 %5 to i64
  %i.ar = sub nsw i64 %i.al, %.0529.idx           ; 4 uses
  %i.as = add i32 %4, -2                          ; 2 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = mul nsw i64 %i.ao, %i.at
  %i.av = sub nsw i64 0, %i.ao
  %i.aw = zext i32 %i.as to i64                   ; 2 uses
  %i.ax = mul nsw i64 %i.ao, %i.aw
  %i.ay = sub nsw i64 %.0529.idx, %i.al           ; 2 uses
  %i.az = add i32 %4, -2                          ; 2 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = mul nsw i64 %i.ao, %i.ba
  %i.bc = sub nsw i64 0, %i.ao                    ; 2 uses
  %8 = zext i32 %i.az to i64                      ; 2 uses
  %i.bd = mul nsw i64 %i.ao, %8
  %i.be = add nsw i64 %i.ao, %i.al
  %i.bf = sub nsw i64 %.0529.idx, %i.be
  %i.bg = sub nsw i64 %.0529.idx, %i.al
  %i.bh = add i32 %4, -2                          ; 3 uses
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = mul nsw i64 %i.ao, %i.bi
  %9 = sub nsw i64 0, %i.ao                       ; 2 uses
  %i.bk = zext i32 %i.bh to i64                   ; 2 uses
  %i.bl = mul nsw i64 %i.ao, %i.bk
  %10 = zext i32 %i.bh to i64                     ; 2 uses
  %i.bm = mul nsw i64 %i.ao, %10
  %brmerge.not = and i1 %i.w, %i.a
  %xtraiter1788 = and i32 %4, 7                   ; 3 uses
  %i.bn = icmp ult i32 %4, 8
  %unroll_iter = and i32 %4, -8
  %lcmp.mod1789.not = icmp eq i32 %xtraiter1788, 0
  %lcmp.mod1790 = icmp ne i32 %xtraiter1788, 0
  %invariant.op = add i64 %i.ar, -1
  %invariant.op1828 = add i64 %i.ar, -1
  %invariant.op1830 = add i64 %i.ar, -1
  %invariant.op1832 = add i64 %i.ar, -1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph827, %.loopexit725
  %indvars.iv965 = phi i64 [ 0, %.lr.ph827 ], [ %indvars.iv.next966, %.loopexit725 ] ; 3 uses
  %.0540826 = phi i32 [ %4, %.lr.ph827 ], [ %.1541, %.loopexit725 ]
  %.0543825 = phi i32 [ %i.i, %.lr.ph827 ], [ %.1544, %.loopexit725 ] ; 17 uses
  %.0571823 = phi ptr [ %1, %.lr.ph827 ], [ %.11582, %.loopexit725 ] ; 3 uses
  %i.bo = load ptr, ptr %i.u, align 8, !tbaa !111 ; 6 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64              ; 4 uses
  %i.bq = trunc i64 %indvars.iv965 to i32
  %i.br = mul i32 %i.e, %i.bq
  %i.bs = zext i32 %i.br to i64                   ; 10 uses
  %i.bt = getelementptr i8, ptr %i.bo, i64 %i.bs  ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0571823, i64 1 ; 9 uses
  %i.bv = load i8, ptr %.0571823, align 1, !tbaa !34 ; 3 uses
  %i.bw = icmp ult i8 %i.bv, 5
  br i1 %i.bw, label %bb.h, label %.loopexit704.sink.split

bb.h:                                             ; preds = %bb.g
  %.1544 = select i1 %i.aj, i32 1, i32 %.0543825  ; 30 uses
  %.1541 = select i1 %i.aj, i32 %i.af, i32 %.0540826 ; 2 uses
  %.0529 = getelementptr i8, ptr %i.bt, i64 %.0529.idx ; 3 uses
  %i.bx = getelementptr i8, ptr %.0529, i64 %i.am ; 4 uses
  %i.by = icmp eq i64 %indvars.iv965, 0
  br i1 %i.by, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bz = zext nneg i8 %i.bv to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZL16first_row_filter, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !34
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0520.in = phi i8 [ %i.cb, %bb.i ], [ %i.bv, %bb.h ] ; 3 uses
  %i.cc = icmp sgt i32 %.1544, 0                  ; 8 uses
  br i1 %i.cc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %.1544 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.r ] ; 12 uses
  switch i8 %.0520.in, label %bb.r [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
    i8 5, label %bb.p
    i8 6, label %bb.q
  ]

bb.k:                                             ; preds = %.lr.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !34
  br label %.sink.split

bb.l:                                             ; preds = %.lr.ph
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !34
  br label %.sink.split

bb.m:                                             ; preds = %.lr.ph
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !34
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !34
  %.narrow639 = add i8 %i.ck, %i.ci
  br label %.sink.split

bb.n:                                             ; preds = %.lr.ph
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !34
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !34
  %i.cp = lshr i8 %i.co, 1
  %.narrow637 = add i8 %i.cp, %i.cm
  br label %.sink.split

bb.o:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !34
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !34
  %.narrow635 = add i8 %i.ct, %i.cr
  br label %.sink.split

bb.p:                                             ; preds = %.lr.ph
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !34
  br label %.sink.split

bb.q:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !34
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.sink = phi i8 [ %i.ce, %bb.k ], [ %i.cg, %bb.l ], [ %.narrow639, %bb.m ], [ %.narrow637, %bb.n ], [ %.narrow635, %bb.o ], [ %i.cv, %bb.p ], [ %i.cx, %bb.q ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0529, i64 %indvars.iv
  store i8 %.sink, ptr %i.cy, align 1, !tbaa !34
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !552

._crit_edge:                                      ; preds = %bb.r, %bb.j
  br i1 %i.an, label %bb.s, label %bb.v

bb.s:                                             ; preds = %._crit_edge
  br i1 %.not603, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds i8, ptr %i.bt, i64 %i.ap
  store i8 -1, ptr %i.cz, align 1, !tbaa !34
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.da = getelementptr inbounds i8, ptr %i.bu, i64 %i.ap
  %i.db = getelementptr inbounds i8, ptr %i.bt, i64 %i.aq
  br label %bb.z

bb.v:                                             ; preds = %._crit_edge
  br i1 %i.a, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %.pre983 = sext i32 %.0543825 to i64            ; 2 uses
  br i1 %.not603, label %._crit_edge982, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = getelementptr inbounds i8, ptr %i.bt, i64 %.pre983 ; 2 uses
  store i8 -1, ptr %i.dc, align 1, !tbaa !34
  %i.dd = getelementptr i8, ptr %i.dc, i64 1
  store i8 -1, ptr %i.dd, align 1, !tbaa !34
  br label %._crit_edge982

._crit_edge982:                                   ; preds = %bb.w, %bb.x
  %i.de = getelementptr inbounds i8, ptr %i.bu, i64 %.pre983
  %i.df = getelementptr inbounds i8, ptr %i.bt, i64 %i.ao
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %.0571823, i64 2
  %i.dh = getelementptr inbounds nuw i8, ptr %.0529, i64 1
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge982, %bb.y, %bb.u
  %.sink1032 = phi i64 [ %i.ao, %._crit_edge982 ], [ 1, %bb.y ], [ %i.aq, %bb.u ] ; 9 uses
  %.1572 = phi ptr [ %i.de, %._crit_edge982 ], [ %i.dg, %bb.y ], [ %i.da, %bb.u ] ; 62 uses
  %.1530 = phi ptr [ %i.df, %._crit_edge982 ], [ %i.dh, %bb.y ], [ %i.db, %bb.u ] ; 96 uses
  %.15721070 = ptrtoaddr ptr %.1572 to i64        ; 6 uses
  %.15301071 = ptrtoaddr ptr %.1530 to i64        ; 10 uses
  %i.di = getelementptr i8, ptr %i.bx, i64 %.sink1032 ; 24 uses
  br i1 %or.cond, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dj = add i32 %.1541, -1
  %i.dk = mul i32 %i.dj, %.1544                   ; 26 uses
  switch i8 %.0520.in, label %.loopexit714 [
    i8 0, label %bb.ab
    i8 1, label %.preheader713
    i8 2, label %.preheader715
    i8 3, label %.preheader717
    i8 4, label %.preheader719
    i8 5, label %.preheader721
    i8 6, label %.preheader723
  ]

.preheader723:                                    ; preds = %bb.aa
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %iter.check1270, label %.loopexit714

iter.check1270:                                   ; preds = %.preheader723
  %i.dm = sext i32 %.1544 to i64                  ; 6 uses
  %wide.trip.count938 = zext nneg i32 %i.dk to i64 ; 8 uses
  %min.iters.check1252 = icmp ult i32 %i.dk, 4
  br i1 %min.iters.check1252, label %.lr.ph812.preheader, label %vector.memcheck1253

vector.memcheck1253:                              ; preds = %iter.check1270
  %i.dn = sub i64 %.15721070, %.15301071
  %diff.check1254 = icmp ugt i64 %i.dn, -32
  %i.do = add nsw i64 %i.dm, -1
  %diff.check1255 = icmp ult i64 %i.do, 31
  %conflict.rdx1256 = or i1 %diff.check1254, %diff.check1255
  br i1 %conflict.rdx1256, label %.lr.ph812.preheader, label %vector.main.loop.iter.check1257

vector.main.loop.iter.check1257:                  ; preds = %vector.memcheck1253
  %min.iters.check1258 = icmp ult i32 %i.dk, 32
  br i1 %min.iters.check1258, label %vec.epilog.ph1274, label %vector.ph1259

vector.ph1259:                                    ; preds = %vector.main.loop.iter.check1257
  %i.dp = and i64 %wide.trip.count938, 28
  %n.vec1260 = and i64 %wide.trip.count938, 2147483616 ; 4 uses
  br label %vector.body1261

vector.body1261:                                  ; preds = %vector.ph1259, %vector.body1261
  %index1262 = phi i64 [ 0, %vector.ph1259 ], [ %index.next1267, %vector.body1261 ] ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.1572, i64 %index1262 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load1263 = load <16 x i8>, ptr %i.dq, align 1, !tbaa !34
  %wide.load1264 = load <16 x i8>, ptr %i.dr, align 1, !tbaa !34
  %i.ds = sub nsw i64 %index1262, %i.dm
  %i.dt = getelementptr inbounds i8, ptr %.1530, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load1265 = load <16 x i8>, ptr %i.dt, align 1, !tbaa !34
  %wide.load1266 = load <16 x i8>, ptr %i.du, align 1, !tbaa !34
  %i.dv = add <16 x i8> %wide.load1265, %wide.load1263
  %i.dw = add <16 x i8> %wide.load1266, %wide.load1264
  %i.dx = getelementptr inbounds nuw i8, ptr %.1530, i64 %index1262 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <16 x i8> %i.dv, ptr %i.dx, align 1, !tbaa !34
  store <16 x i8> %i.dw, ptr %i.dy, align 1, !tbaa !34
  %index.next1267 = add nuw i64 %index1262, 32    ; 2 uses
  %i.dz = icmp eq i64 %index.next1267, %n.vec1260
  br i1 %i.dz, label %middle.block1268, label %vector.body1261, !llvm.loop !553

middle.block1268:                                 ; preds = %vector.body1261
  %cmp.n1269 = icmp eq i64 %n.vec1260, %wide.trip.count938
  br i1 %cmp.n1269, label %.loopexit714, label %vec.epilog.iter.check1271

vec.epilog.iter.check1271:                        ; preds = %middle.block1268
  %min.epilog.iters.check1273 = icmp eq i64 %i.dp, 0
  br i1 %min.epilog.iters.check1273, label %.lr.ph812.preheader, label %vec.epilog.ph1274, !prof !63

vec.epilog.ph1274:                                ; preds = %vector.main.loop.iter.check1257, %vec.epilog.iter.check1271
  %vec.epilog.resume.val1275 = phi i64 [ %n.vec1260, %vec.epilog.iter.check1271 ], [ 0, %vector.main.loop.iter.check1257 ]
  %n.vec1276 = and i64 %wide.trip.count938, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1277

vec.epilog.vector.body1277:                       ; preds = %vec.epilog.vector.body1277, %vec.epilog.ph1274
  %index1278 = phi i64 [ %vec.epilog.resume.val1275, %vec.epilog.ph1274 ], [ %index.next1281, %vec.epilog.vector.body1277 ] ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.1572, i64 %index1278
  %wide.load1279 = load <4 x i8>, ptr %i.ea, align 1, !tbaa !34
  %i.eb = sub nsw i64 %index1278, %i.dm
  %i.ec = getelementptr inbounds i8, ptr %.1530, i64 %i.eb
  %wide.load1280 = load <4 x i8>, ptr %i.ec, align 1, !tbaa !34
  %i.ed = add <4 x i8> %wide.load1280, %wide.load1279
  %i.ee = getelementptr inbounds nuw i8, ptr %.1530, i64 %index1278
  store <4 x i8> %i.ed, ptr %i.ee, align 1, !tbaa !34
  %index.next1281 = add nuw i64 %index1278, 4     ; 2 uses
  %i.ef = icmp eq i64 %index.next1281, %n.vec1276
  br i1 %i.ef, label %vec.epilog.middle.block1282, label %vec.epilog.vector.body1277, !llvm.loop !554

vec.epilog.middle.block1282:                      ; preds = %vec.epilog.vector.body1277
  %cmp.n1283 = icmp eq i64 %n.vec1276, %wide.trip.count938
  br i1 %cmp.n1283, label %.loopexit714, label %.lr.ph812.preheader

.lr.ph812.preheader:                              ; preds = %iter.check1270, %vector.memcheck1253, %vec.epilog.iter.check1271, %vec.epilog.middle.block1282
  %indvars.iv935.ph = phi i64 [ 0, %iter.check1270 ], [ 0, %vector.memcheck1253 ], [ %n.vec1260, %vec.epilog.iter.check1271 ], [ %n.vec1276, %vec.epilog.middle.block1282 ] ; 6 uses
  %xtraiter1791 = and i64 %wide.trip.count938, 1
  %lcmp.mod1792.not = icmp eq i64 %xtraiter1791, 0
  br i1 %lcmp.mod1792.not, label %.lr.ph812.prol.loopexit, label %.lr.ph812.prol

.lr.ph812.prol:                                   ; preds = %.lr.ph812.preheader
  %i.eg = getelementptr inbounds nuw i8, ptr %.1572, i64 %indvars.iv935.ph
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !34
  %i.ei = sub nsw i64 %indvars.iv935.ph, %i.dm
  %i.ej = getelementptr inbounds i8, ptr %.1530, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !34
  %.narrow623.prol = add i8 %i.ek, %i.eh
  %i.el = getelementptr inbounds nuw i8, ptr %.1530, i64 %indvars.iv935.ph
  store i8 %.narrow623.prol, ptr %i.el, align 1, !tbaa !34
  %indvars.iv.next936.prol = or disjoint i64 %indvars.iv935.ph, 1
  br label %.lr.ph812.prol.loopexit

.lr.ph812.prol.loopexit:                          ; preds = %.lr.ph812.prol, %.lr.ph812.preheader
  %indvars.iv935.unr = phi i64 [ %indvars.iv935.ph, %.lr.ph812.preheader ], [ %indvars.iv.next936.prol, %.lr.ph812.prol ]
  %i.em = add nsw i64 %wide.trip.count938, -1
  %i.en = icmp eq i64 %indvars.iv935.ph, %i.em
  br i1 %i.en, label %.loopexit714, label %.lr.ph812

.preheader721:                                    ; preds = %bb.aa
  %i.eo = icmp sgt i32 %i.dk, 0
  br i1 %i.eo, label %iter.check1233, label %.loopexit714

iter.check1233:                                   ; preds = %.preheader721
  %i.ep = sext i32 %.1544 to i64                  ; 6 uses
  %wide.trip.count943 = zext nneg i32 %i.dk to i64 ; 8 uses
  %min.iters.check1215 = icmp ult i32 %i.dk, 4
  br i1 %min.iters.check1215, label %.lr.ph814.preheader, label %vector.memcheck1216

vector.memcheck1216:                              ; preds = %iter.check1233
  %i.eq = sub i64 %.15721070, %.15301071
  %diff.check1217 = icmp ugt i64 %i.eq, -32
  %i.er = add nsw i64 %i.ep, -1
  %diff.check1218 = icmp ult i64 %i.er, 31
  %conflict.rdx1219 = or i1 %diff.check1217, %diff.check1218
  br i1 %conflict.rdx1219, label %.lr.ph814.preheader, label %vector.main.loop.iter.check1220

vector.main.loop.iter.check1220:                  ; preds = %vector.memcheck1216
  %min.iters.check1221 = icmp ult i32 %i.dk, 32
  br i1 %min.iters.check1221, label %vec.epilog.ph1237, label %vector.ph1222

vector.ph1222:                                    ; preds = %vector.main.loop.iter.check1220
  %i.es = and i64 %wide.trip.count943, 28
  %n.vec1223 = and i64 %wide.trip.count943, 2147483616 ; 4 uses
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.ph1222, %vector.body1224
  %index1225 = phi i64 [ 0, %vector.ph1222 ], [ %index.next1230, %vector.body1224 ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.1572, i64 %index1225 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load1226 = load <16 x i8>, ptr %i.et, align 1, !tbaa !34
  %wide.load1227 = load <16 x i8>, ptr %i.eu, align 1, !tbaa !34
  %i.ev = sub nsw i64 %index1225, %i.ep
  %i.ew = getelementptr inbounds i8, ptr %.1530, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load1228 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !34
  %wide.load1229 = load <16 x i8>, ptr %i.ex, align 1, !tbaa !34
  %i.ey = lshr <16 x i8> %wide.load1228, splat (i8 1)
  %i.ez = lshr <16 x i8> %wide.load1229, splat (i8 1)
  %i.fa = add <16 x i8> %i.ey, %wide.load1226
  %i.fb = add <16 x i8> %i.ez, %wide.load1227
  %i.fc = getelementptr inbounds nuw i8, ptr %.1530, i64 %index1225 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <16 x i8> %i.fa, ptr %i.fc, align 1, !tbaa !34
  store <16 x i8> %i.fb, ptr %i.fd, align 1, !tbaa !34
  %index.next1230 = add nuw i64 %index1225, 32    ; 2 uses
  %i.fe = icmp eq i64 %index.next1230, %n.vec1223
  br i1 %i.fe, label %middle.block1231, label %vector.body1224, !llvm.loop !555

middle.block1231:                                 ; preds = %vector.body1224
  %cmp.n1232 = icmp eq i64 %n.vec1223, %wide.trip.count943
  br i1 %cmp.n1232, label %.loopexit714, label %vec.epilog.iter.check1234

vec.epilog.iter.check1234:                        ; preds = %middle.block1231
  %min.epilog.iters.check1236 = icmp eq i64 %i.es, 0
  br i1 %min.epilog.iters.check1236, label %.lr.ph814.preheader, label %vec.epilog.ph1237, !prof !63

vec.epilog.ph1237:                                ; preds = %vector.main.loop.iter.check1220, %vec.epilog.iter.check1234
  %vec.epilog.resume.val1238 = phi i64 [ %n.vec1223, %vec.epilog.iter.check1234 ], [ 0, %vector.main.loop.iter.check1220 ]
  %n.vec1239 = and i64 %wide.trip.count943, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1240

vec.epilog.vector.body1240:                       ; preds = %vec.epilog.vector.body1240, %vec.epilog.ph1237
  %index1241 = phi i64 [ %vec.epilog.resume.val1238, %vec.epilog.ph1237 ], [ %index.next1244, %vec.epilog.vector.body1240 ] ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.1572, i64 %index1241
  %wide.load1242 = load <4 x i8>, ptr %i.ff, align 1, !tbaa !34
  %i.fg = sub nsw i64 %index1241, %i.ep
  %i.fh = getelementptr inbounds i8, ptr %.1530, i64 %i.fg
  %wide.load1243 = load <4 x i8>, ptr %i.fh, align 1, !tbaa !34
  %i.fi = lshr <4 x i8> %wide.load1243, splat (i8 1)
  %i.fj = add <4 x i8> %i.fi, %wide.load1242
  %i.fk = getelementptr inbounds nuw i8, ptr %.1530, i64 %index1241
  store <4 x i8> %i.fj, ptr %i.fk, align 1, !tbaa !34
  %index.next1244 = add nuw i64 %index1241, 4     ; 2 uses
  %i.fl = icmp eq i64 %index.next1244, %n.vec1239
  br i1 %i.fl, label %vec.epilog.middle.block1245, label %vec.epilog.vector.body1240, !llvm.loop !556

vec.epilog.middle.block1245:                      ; preds = %vec.epilog.vector.body1240
end_hunk_0
begin_hunk_1_@_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii:bb.a
  %indvars.iv960 = phi i64 [ %indvars.iv.next961.1, %.lr.ph822 ], [ %indvars.iv960.unr, %.lr.ph822.prol.loopexit ] ; 5 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.1572, i64 %indvars.iv960
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !34
  %i.mq = sub nsw i64 %indvars.iv960, %i.ll
  %i.mr = getelementptr inbounds i8, ptr %.1530, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !34
  %.narrow633 = add i8 %i.ms, %i.mp
  %i.mt = getelementptr inbounds nuw i8, ptr %.1530, i64 %indvars.iv960
  store i8 %.narrow633, ptr %i.mt, align 1, !tbaa !34
  %indvars.iv.next961 = add nuw nsw i64 %indvars.iv960, 1 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.1572, i64 %indvars.iv.next961
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !34
  %i.mw = sub nsw i64 %indvars.iv.next961, %i.ll
  %i.mx = getelementptr inbounds i8, ptr %.1530, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !34
  %.narrow633.1 = add i8 %i.my, %i.mv
  %i.mz = getelementptr inbounds nuw i8, ptr %.1530, i64 %indvars.iv.next961
  store i8 %.narrow633.1, ptr %i.mz, align 1, !tbaa !34
  %indvars.iv.next961.1 = add nuw nsw i64 %indvars.iv960, 2 ; 2 uses
  %exitcond964.not.1 = icmp eq i64 %indvars.iv.next961.1, %wide.trip.count963
  br i1 %exitcond964.not.1, label %.loopexit714, label %.lr.ph822, !llvm.loop !566

.lr.ph820:                                        ; preds = %.lr.ph820.prol.loopexit, %.lr.ph820
  %indvars.iv955 = phi i64 [ %indvars.iv.next956.3, %.lr.ph820 ], [ %indvars.iv955.unr, %.lr.ph820.prol.loopexit ] ; 7 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.1572, i64 %indvars.iv955
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !34
  %i.nc = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv955
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !34
  %.narrow631 = add i8 %i.nd, %i.nb
  %i.ne = getelementptr inbounds nuw i8, ptr %.1530, i64 %indvars.iv955
  store i8 %.narrow631, ptr %i.ne, align 1, !tbaa !34
  %indvars.iv.next956 = add nuw nsw i64 %indvars.iv955, 1 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.1572, i64 %indvars.iv.next956
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !34
  %i.nh = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next956
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !34
  %.narrow631.1 = add i8 %i.ni, %i.ng
  %i.nj = getelementptr inbounds nuw i8, ptr %.1530, i64 %indvars.iv.next956
  store i8 %.narrow631.1, ptr %i.nj, align 1, !tbaa !34
  %indvars.iv.next956.1 = add nuw nsw i64 %indvars.iv955, 2 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.1572, i64 %indvars.iv.next956.1
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !34
  %i.nm = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next956.1
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !34
  %.narrow631.2 = add i8 %i.nn, %i.nl
  %i.no = getelementptr inbounds nuw i8, ptr %.1530, i64 %indvars.iv.next956.1
  store i8 %.narrow631.2, ptr %i.no, align 1, !tbaa !34
  %indvars.iv.next956.2 = add nuw nsw i64 %indvars.iv955, 3 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.1572, i64 %indvars.iv.next956.2
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !34
  %i.nr = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next956.2
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !34
  %.narrow631.3 = add i8 %i.ns, %i.nq
  %i.nt = getelementptr inbounds nuw i8, ptr %.1530, i64 %indvars.iv.next956.2
  store i8 %.narrow631.3, ptr %i.nt, align 1, !tbaa !34
  %indvars.iv.next956.3 = add nuw nsw i64 %indvars.iv955, 4 ; 2 uses
  %exitcond959.not.3 = icmp eq i64 %indvars.iv.next956.3, %wide.trip.count958
  br i1 %exitcond959.not.3, label %.loopexit714, label %.lr.ph820, !llvm.loop !567

.lr.ph818:                                        ; preds = %.lr.ph818.prol.loopexit, %.lr.ph818
  %indvars.iv950 = phi i64 [ %indvars.iv.next951.1, %.lr.ph818 ], [ %indvars.iv950.unr, %.lr.ph818.prol.loopexit ] ; 6 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.1572, i64 %indvars.iv950
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !34
  %i.nw = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv950
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !34
  %i.ny = zext i8 %i.nx to i16
  %i.nz = sub nsw i64 %indvars.iv950, %i.ig
  %i.oa = getelementptr inbounds i8, ptr %.1530, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !34
  %i.oc = zext i8 %i.ob to i16
  %i.od = add nuw nsw i16 %i.oc, %i.ny
  %i.oe = lshr i16 %i.od, 1
  %.tr628 = trunc nuw i16 %i.oe to i8
  %.narrow629 = add i8 %i.nv, %.tr628
  %i.of = getelementptr inbounds nuw i8, ptr %.1530, i64 %indvars.iv950
  store i8 %.narrow629, ptr %i.of, align 1, !tbaa !34
  %indvars.iv.next951 = add nuw nsw i64 %indvars.iv950, 1 ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.1572, i64 %indvars.iv.next951
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !34
  %i.oi = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.next951
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !34
  %i.ok = zext i8 %i.oj to i16
  %i.ol = sub nsw i64 %indvars.iv.next951, %i.ig
  %i.om = getelementptr inbounds i8, ptr %.1530, i64 %i.ol
  %i.on = load i8, ptr %i.om, align 1, !tbaa !34
  %i.oo = zext i8 %i.on to i16
  %i.op = add nuw nsw i16 %i.oo, %i.ok
  %i.oq = lshr i16 %i.op, 1
  %.tr628.1 = trunc nuw i16 %i.oq to i8
  %.narrow629.1 = add i8 %i.oh, %.tr628.1
  %i.or = getelementptr inbounds nuw i8, ptr %.1530, i64 %indvars.iv.next951
  store i8 %.narrow629.1, ptr %i.or, align 1, !tbaa !34
  %indvars.iv.next951.1 = add nuw nsw i64 %indvars.iv950, 2 ; 2 uses
  %exitcond954.not.1 = icmp eq i64 %indvars.iv.next951.1, %wide.trip.count953
  br i1 %exitcond954.not.1, label %.loopexit714, label %.lr.ph818, !llvm.loop !568

.lr.ph816:                                        ; preds = %.lr.ph816.preheader, %.lr.ph816
  %indvars.iv945 = phi i64 [ %indvars.iv.next946, %.lr.ph816 ], [ %indvars.iv945.ph, %.lr.ph816.preheader ] ; 5 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.1572, i64 %indvars.iv945
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !34
  %i.ou = sub nsw i64 %indvars.iv945, %i.fw       ; 2 uses
  %i.ov = getelementptr inbounds i8, ptr %.1530, i64 %i.ou
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !34  ; 2 uses
  %i.ox = zext i8 %i.ow to i32                    ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv945
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !34  ; 2 uses
  %i.pa = zext i8 %i.oz to i32                    ; 2 uses
  %i.pb = getelementptr inbounds i8, ptr %i.di, i64 %i.ou
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !34  ; 2 uses
  %i.pd = zext i8 %i.pc to i32                    ; 2 uses
  %i.pe = add nuw nsw i32 %i.pa, %i.ox
  %i.pf = sub nsw i32 %i.pe, %i.pd                ; 3 uses
  %i.pg = sub nsw i32 %i.pf, %i.ox
  %i.ph = tail call i32 @llvm.abs.i32(i32 %i.pg, i1 true) ; 2 uses
  %i.pi = sub nsw i32 %i.pf, %i.pa
  %i.pj = tail call i32 @llvm.abs.i32(i32 %i.pi, i1 true) ; 2 uses
  %i.pk = sub nsw i32 %i.pf, %i.pd
  %i.pl = tail call i32 @llvm.abs.i32(i32 %i.pk, i1 true) ; 2 uses
  %.not.i642 = icmp samesign ugt i32 %i.ph, %i.pj
  %.not20.i643 = icmp samesign ugt i32 %i.ph, %i.pl
  %or.cond.i644 = select i1 %.not.i642, i1 true, i1 %.not20.i643
  %.not21.i = icmp samesign ugt i32 %i.pj, %i.pl
  %i.pm = select i1 %.not21.i, i8 %i.pc, i8 %i.oz
  %.tr626 = select i1 %or.cond.i644, i8 %i.pm, i8 %i.ow
  %.narrow627 = add i8 %.tr626, %i.ot
  %i.pn = getelementptr inbounds nuw i8, ptr %.1530, i64 %indvars.iv945
  store i8 %.narrow627, ptr %i.pn, align 1, !tbaa !34
  %indvars.iv.next946 = add nuw nsw i64 %indvars.iv945, 1 ; 2 uses
  %exitcond949.not = icmp eq i64 %indvars.iv.next946, %wide.trip.count948
  br i1 %exitcond949.not, label %.loopexit714, label %.lr.ph816, !llvm.loop !569

.lr.ph814:                                        ; preds = %.lr.ph814.prol.loopexit, %.lr.ph814
  %indvars.iv940 = phi i64 [ %indvars.iv.next941.1, %.lr.ph814 ], [ %indvars.iv940.unr, %.lr.ph814.prol.loopexit ] ; 5 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.1572, i64 %indvars.iv940
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !34
  %i.pq = sub nsw i64 %indvars.iv940, %i.ep
  %i.pr = getelementptr inbounds i8, ptr %.1530, i64 %i.pq
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !34
  %i.pt = lshr i8 %i.ps, 1
  %.narrow625 = add i8 %i.pt, %i.pp
  %i.pu = getelementptr inbounds nuw i8, ptr %.1530, i64 %indvars.iv940
  store i8 %.narrow625, ptr %i.pu, align 1, !tbaa !34
  %indvars.iv.next941 = add nuw nsw i64 %indvars.iv940, 1 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.1572, i64 %indvars.iv.next941
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !34
  %i.px = sub nsw i64 %indvars.iv.next941, %i.ep
  %i.py = getelementptr inbounds i8, ptr %.1530, i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !34
  %i.qa = lshr i8 %i.pz, 1
  %.narrow625.1 = add i8 %i.qa, %i.pw
  %i.qb = getelementptr inbounds nuw i8, ptr %.1530, i64 %indvars.iv.next941
  store i8 %.narrow625.1, ptr %i.qb, align 1, !tbaa !34
  %indvars.iv.next941.1 = add nuw nsw i64 %indvars.iv940, 2 ; 2 uses
  %exitcond944.not.1 = icmp eq i64 %indvars.iv.next941.1, %wide.trip.count943
  br i1 %exitcond944.not.1, label %.loopexit714, label %.lr.ph814, !llvm.loop !570

.lr.ph812:                                        ; preds = %.lr.ph812.prol.loopexit, %.lr.ph812
  %indvars.iv935 = phi i64 [ %indvars.iv.next936.1, %.lr.ph812 ], [ %indvars.iv935.unr, %.lr.ph812.prol.loopexit ] ; 5 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.1572, i64 %indvars.iv935
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !34
  %i.qe = sub nsw i64 %indvars.iv935, %i.dm
  %i.qf = getelementptr inbounds i8, ptr %.1530, i64 %i.qe
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !34
  %.narrow623 = add i8 %i.qg, %i.qd
  %i.qh = getelementptr inbounds nuw i8, ptr %.1530, i64 %indvars.iv935
  store i8 %.narrow623, ptr %i.qh, align 1, !tbaa !34
  %indvars.iv.next936 = add nuw nsw i64 %indvars.iv935, 1 ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.1572, i64 %indvars.iv.next936
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !34
  %i.qk = sub nsw i64 %indvars.iv.next936, %i.dm
  %i.ql = getelementptr inbounds i8, ptr %.1530, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !34
  %.narrow623.1 = add i8 %i.qm, %i.qj
  %i.qn = getelementptr inbounds nuw i8, ptr %.1530, i64 %indvars.iv.next936
  store i8 %.narrow623.1, ptr %i.qn, align 1, !tbaa !34
  %indvars.iv.next936.1 = add nuw nsw i64 %indvars.iv935, 2 ; 2 uses
  %exitcond939.not.1 = icmp eq i64 %indvars.iv.next936.1, %wide.trip.count938
  br i1 %exitcond939.not.1, label %.loopexit714, label %.lr.ph812, !llvm.loop !571

.loopexit714:                                     ; preds = %.lr.ph812.prol.loopexit, %.lr.ph812, %.lr.ph814.prol.loopexit, %.lr.ph814, %.lr.ph816, %.lr.ph818.prol.loopexit, %.lr.ph818, %.lr.ph820.prol.loopexit, %.lr.ph820, %.lr.ph822.prol.loopexit, %.lr.ph822, %middle.block1268, %vec.epilog.middle.block1282, %middle.block1231, %vec.epilog.middle.block1245, %middle.block1192, %vec.epilog.middle.block1208, %middle.block1146, %vec.epilog.middle.block1161, %middle.block1103, %vec.epilog.middle.block1117, %middle.block, %vec.epilog.middle.block, %.preheader723, %.preheader721, %.preheader719, %.preheader717, %.preheader715, %.preheader713, %bb.ab, %bb.aa
  %i.qo = sext i32 %i.dk to i64
  %i.qp = getelementptr inbounds i8, ptr %.1572, i64 %i.qo
  br label %.loopexit725

bb.ac:                                            ; preds = %bb.z
  switch i8 %.0520.in, label %.loopexit727 [
    i8 0, label %.preheader726
    i8 1, label %.preheader728
    i8 2, label %.preheader730
    i8 3, label %.preheader732
    i8 4, label %.preheader734
    i8 5, label %.preheader736
    i8 6, label %.preheader738
  ]

.preheader738:                                    ; preds = %bb.ac
  br i1 %.not605746, label %.loopexit727, label %.preheader712.lr.ph

.preheader712.lr.ph:                              ; preds = %.preheader738
  %i.qq = sext i32 %.0543825 to i64               ; 3 uses
  %wide.trip.count902 = zext i32 %.1544 to i64    ; 12 uses
  %scevgep1683 = getelementptr i8, ptr %.1530, i64 %9 ; 2 uses
  %scevgep1684 = getelementptr i8, ptr %scevgep1683, i64 %wide.trip.count902
  %scevgep1685 = getelementptr i8, ptr %.1530, i64 %wide.trip.count902
  %i.qr = mul nsw i64 %10, %i.qq
  %i.qs = getelementptr i8, ptr %.1572, i64 %i.qr
  %scevgep1686 = getelementptr i8, ptr %i.qs, i64 %wide.trip.count902
  %scevgep1687 = getelementptr i8, ptr %.1530, i64 %i.bm
  %scevgep1688 = getelementptr i8, ptr %scevgep1687, i64 %wide.trip.count902
  %min.iters.check1689 = icmp ult i32 %.1544, 4
  %bound01691 = icmp ult ptr %.1530, %scevgep1686
  %bound11692 = icmp ult ptr %.1572, %scevgep1688
  %found.conflict1693 = and i1 %bound01691, %bound11692
  %i.qt = or i32 %.0543825, %i.h
  %i.qu = icmp slt i32 %i.qt, 0
  %i.qv = or i1 %found.conflict1693, %i.qu
  %bound01696 = icmp ult ptr %.1530, %scevgep1684
  %bound11697 = icmp ult ptr %scevgep1683, %scevgep1685
  %found.conflict1698 = and i1 %bound01696, %bound11697
  %conflict.rdx1699 = or i1 %i.qv, %found.conflict1698
  %min.iters.check1701 = icmp ult i32 %.1544, 32
  %i.qw = and i64 %wide.trip.count902, 28
  %n.vec1703 = and i64 %wide.trip.count902, 2147483616 ; 4 uses
  %cmp.n1712 = icmp eq i64 %n.vec1703, %wide.trip.count902
  %min.epilog.iters.check1716 = icmp eq i64 %i.qw, 0
  %n.vec1719 = and i64 %wide.trip.count902, 2147483644 ; 3 uses
  %cmp.n1726 = icmp eq i64 %n.vec1719, %wide.trip.count902
  %xtraiter = and i64 %wide.trip.count902, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.qx = add nsw i64 %wide.trip.count902, -1
  br label %.preheader712

.preheader736:                                    ; preds = %bb.ac
  br i1 %.not605746, label %.loopexit727, label %.preheader711.lr.ph

.preheader711.lr.ph:                              ; preds = %.preheader736
  %i.qy = sext i32 %.0543825 to i64               ; 3 uses
  %wide.trip.count907 = zext i32 %.1544 to i64    ; 12 uses
  %scevgep1622 = getelementptr i8, ptr %.1530, i64 %9 ; 2 uses
  %scevgep1623 = getelementptr i8, ptr %scevgep1622, i64 %wide.trip.count907
  %scevgep1624 = getelementptr i8, ptr %.1530, i64 %wide.trip.count907
  %i.qz = mul nsw i64 %i.bk, %i.qy
  %i.ra = getelementptr i8, ptr %.1572, i64 %i.qz
  %scevgep1625 = getelementptr i8, ptr %i.ra, i64 %wide.trip.count907
  %scevgep1626 = getelementptr i8, ptr %.1530, i64 %i.bl
  %scevgep1627 = getelementptr i8, ptr %scevgep1626, i64 %wide.trip.count907
  %min.iters.check1628 = icmp ult i32 %.1544, 4
  %bound01630 = icmp ult ptr %.1530, %scevgep1625
  %bound11631 = icmp ult ptr %.1572, %scevgep1627
  %found.conflict1632 = and i1 %bound01630, %bound11631
  %i.rb = or i32 %.0543825, %i.h
  %i.rc = icmp slt i32 %i.rb, 0
  %i.rd = or i1 %found.conflict1632, %i.rc
  %bound01635 = icmp ult ptr %.1530, %scevgep1623
  %bound11636 = icmp ult ptr %scevgep1622, %scevgep1624
  %found.conflict1637 = and i1 %bound01635, %bound11636
  %conflict.rdx1638 = or i1 %i.rd, %found.conflict1637
  %min.iters.check1640 = icmp ult i32 %.1544, 32
  %i.re = and i64 %wide.trip.count907, 28
  %n.vec1642 = and i64 %wide.trip.count907, 2147483616 ; 4 uses
  %cmp.n1651 = icmp eq i64 %n.vec1642, %wide.trip.count907
  %min.epilog.iters.check1655 = icmp eq i64 %i.re, 0
  %n.vec1658 = and i64 %wide.trip.count907, 2147483644 ; 3 uses
  %cmp.n1665 = icmp eq i64 %n.vec1658, %wide.trip.count907
  %xtraiter1776 = and i64 %wide.trip.count907, 1
  %lcmp.mod1777.not = icmp eq i64 %xtraiter1776, 0
  %i.rf = add nsw i64 %wide.trip.count907, -1
  br label %.preheader711

.preheader734:                                    ; preds = %bb.ac
  br i1 %.not605746, label %.loopexit727, label %.preheader710.lr.ph

.preheader710.lr.ph:                              ; preds = %.preheader734
  %i.rg = sext i32 %.0543825 to i64               ; 3 uses
  %wide.trip.count912 = zext i32 %.1544 to i64    ; 11 uses
  %scevgep1545 = getelementptr i8, ptr %i.bo, i64 %i.bf ; 2 uses
  %i.rh = add nsw i64 %.sink1032, %wide.trip.count912
  %i.ri = add nsw i64 %i.rh, %i.bs                ; 2 uses
  %scevgep1547 = getelementptr i8, ptr %scevgep1545, i64 %i.ri
  %i.rj = getelementptr i8, ptr %scevgep1545, i64 %.sink1032
  %scevgep1548 = getelementptr i8, ptr %i.rj, i64 %i.bs
  %scevgep1549 = getelementptr i8, ptr %i.bo, i64 %i.bg
  %scevgep1550 = getelementptr i8, ptr %scevgep1549, i64 %i.ri
  %scevgep1551 = getelementptr i8, ptr %.1530, i64 %i.bc ; 2 uses
  %scevgep1552 = getelementptr i8, ptr %scevgep1551, i64 %wide.trip.count912
  %scevgep1553 = getelementptr i8, ptr %.1530, i64 %wide.trip.count912 ; 3 uses
  %i.rk = mul nsw i64 %i.bi, %i.rg
  %i.rl = getelementptr i8, ptr %.1572, i64 %i.rk
  %scevgep1554 = getelementptr i8, ptr %i.rl, i64 %wide.trip.count912
  %scevgep1555 = getelementptr i8, ptr %.1530, i64 %i.bj
  %scevgep1556 = getelementptr i8, ptr %scevgep1555, i64 %wide.trip.count912
  %min.iters.check1557 = icmp ult i32 %.1544, 4
  %bound01559 = icmp ult ptr %.1530, %scevgep1554
  %bound11560 = icmp ult ptr %.1572, %scevgep1556
  %found.conflict1561 = and i1 %bound01559, %bound11560
  %i.rm = or i32 %.0543825, %i.h
  %i.rn = icmp slt i32 %i.rm, 0
  %i.ro = or i1 %found.conflict1561, %i.rn
  %bound01564 = icmp ult ptr %.1530, %scevgep1552
  %bound11565 = icmp ult ptr %scevgep1551, %scevgep1553
  %found.conflict1566 = and i1 %bound01564, %bound11565
  %conflict.rdx1567 = or i1 %i.ro, %found.conflict1566
  %bound01568 = icmp ult ptr %.1530, %scevgep1550
  %bound11569 = icmp ult ptr %i.di, %scevgep1553
  %found.conflict1570 = and i1 %bound01568, %bound11569
  %conflict.rdx1571 = or i1 %conflict.rdx1567, %found.conflict1570
  %bound01572 = icmp ult ptr %.1530, %scevgep1547
  %bound11573 = icmp ult ptr %scevgep1548, %scevgep1553
  %found.conflict1574 = and i1 %bound01572, %bound11573
  %conflict.rdx1575 = or i1 %conflict.rdx1571, %found.conflict1574
  %min.iters.check1577 = icmp ult i32 %.1544, 16
  %i.rp = and i64 %wide.trip.count912, 12
  %n.vec1579 = and i64 %wide.trip.count912, 2147483632 ; 4 uses
  %cmp.n1588 = icmp eq i64 %n.vec1579, %wide.trip.count912
  %min.epilog.iters.check1592 = icmp eq i64 %i.rp, 0
  %n.vec1595 = and i64 %wide.trip.count912, 2147483644 ; 3 uses
  %cmp.n1604 = icmp eq i64 %n.vec1595, %wide.trip.count912
  br label %.preheader710

.preheader732:                                    ; preds = %bb.ac
  br i1 %.not605746, label %.loopexit727, label %.preheader709.lr.ph

.preheader709.lr.ph:                              ; preds = %.preheader732
  %i.rq = sext i32 %.0543825 to i64               ; 3 uses
  %wide.trip.count917 = zext i32 %.1544 to i64    ; 13 uses
  %scevgep1461 = getelementptr i8, ptr %.1530, i64 %i.bc ; 2 uses
  %scevgep1462 = getelementptr i8, ptr %scevgep1461, i64 %wide.trip.count917
  %scevgep1463 = getelementptr i8, ptr %i.bo, i64 %i.ay
  %scevgep1464 = getelementptr i8, ptr %scevgep1463, i64 %.sink1032
  %i.rr = getelementptr i8, ptr %scevgep1464, i64 %wide.trip.count917
  %i.rs = getelementptr i8, ptr %i.rr, i64 %i.bs
  %scevgep1465 = getelementptr i8, ptr %.1530, i64 %wide.trip.count917 ; 2 uses
  %i.rt = mul nsw i64 %8, %i.rq
  %i.ru = getelementptr i8, ptr %.1572, i64 %i.rt
  %scevgep1466 = getelementptr i8, ptr %i.ru, i64 %wide.trip.count917
  %scevgep1467 = getelementptr i8, ptr %.1530, i64 %i.bd
  %scevgep1468 = getelementptr i8, ptr %scevgep1467, i64 %wide.trip.count917
  %min.iters.check1469 = icmp ult i32 %.1544, 8
  %bound01471 = icmp ult ptr %.1530, %scevgep1466
  %bound11472 = icmp ult ptr %.1572, %scevgep1468
  %found.conflict1473 = and i1 %bound01471, %bound11472
  %i.rv = or i32 %.0543825, %i.h
  %i.rw = icmp slt i32 %i.rv, 0
  %i.rx = or i1 %found.conflict1473, %i.rw
  %bound01476 = icmp ult ptr %.1530, %i.rs
  %bound11477 = icmp ult ptr %i.di, %scevgep1465
  %found.conflict1478 = and i1 %bound01476, %bound11477
  %conflict.rdx1479 = or i1 %i.rx, %found.conflict1478
  %bound01480 = icmp ult ptr %.1530, %scevgep1462
  %bound11481 = icmp ult ptr %scevgep1461, %scevgep1465
  %found.conflict1482 = and i1 %bound01480, %bound11481
  %conflict.rdx1483 = or i1 %conflict.rdx1479, %found.conflict1482
  %min.iters.check1485 = icmp ult i32 %.1544, 32
  %i.ry = and i64 %wide.trip.count917, 24
  %n.vec1487 = and i64 %wide.trip.count917, 2147483616 ; 4 uses
  %cmp.n1498 = icmp eq i64 %n.vec1487, %wide.trip.count917
  %min.epilog.iters.check1502 = icmp eq i64 %i.ry, 0
  %n.vec1505 = and i64 %wide.trip.count917, 2147483640 ; 3 uses
  %cmp.n1513 = icmp eq i64 %n.vec1505, %wide.trip.count917
  %xtraiter1778 = and i64 %wide.trip.count917, 1
  %lcmp.mod1779.not = icmp eq i64 %xtraiter1778, 0
  %i.rz = add nsw i64 %wide.trip.count917, -1
  br label %.preheader709

.preheader730:                                    ; preds = %bb.ac
  br i1 %.not605746, label %.loopexit727, label %.preheader708.lr.ph

.preheader708.lr.ph:                              ; preds = %.preheader730
  %i.sa = sext i32 %.0543825 to i64               ; 3 uses
  %wide.trip.count922 = zext i32 %.1544 to i64    ; 12 uses
  %scevgep1396 = getelementptr i8, ptr %i.bo, i64 %i.ay
  %scevgep1395 = getelementptr i8, ptr %scevgep1396, i64 %.sink1032
  %i.sb = getelementptr i8, ptr %scevgep1395, i64 %wide.trip.count922
  %i.sc = getelementptr i8, ptr %i.sb, i64 %i.bs
  %scevgep1396.a = getelementptr i8, ptr %.1530, i64 %wide.trip.count922
  %i.sd = mul nsw i64 %i.ba, %i.sa
  %i.se = getelementptr i8, ptr %.1572, i64 %i.sd
  %scevgep1397 = getelementptr i8, ptr %i.se, i64 %wide.trip.count922
  %scevgep1398 = getelementptr i8, ptr %.1530, i64 %i.bb
  %scevgep1399 = getelementptr i8, ptr %scevgep1398, i64 %wide.trip.count922
  %min.iters.check1400 = icmp ult i32 %.1544, 4
  %bound01402 = icmp ult ptr %.1530, %scevgep1397
  %bound11403 = icmp ult ptr %.1572, %scevgep1399
  %found.conflict1404 = and i1 %bound01402, %bound11403
  %i.sf = or i32 %.0543825, %i.h
  %i.sg = icmp slt i32 %i.sf, 0
  %i.sh = or i1 %found.conflict1404, %i.sg
  %bound01407 = icmp ult ptr %.1530, %i.sc
  %bound11408 = icmp ult ptr %i.di, %scevgep1396.a
  %found.conflict1409 = and i1 %bound01407, %bound11408
  %conflict.rdx1410 = or i1 %i.sh, %found.conflict1409
  %min.iters.check1412 = icmp ult i32 %.1544, 32
  %i.si = and i64 %wide.trip.count922, 28
  %n.vec1414 = and i64 %wide.trip.count922, 2147483616 ; 4 uses
  %cmp.n1423 = icmp eq i64 %n.vec1414, %wide.trip.count922
  %min.epilog.iters.check1427 = icmp eq i64 %i.si, 0
  %n.vec1430 = and i64 %wide.trip.count922, 2147483644 ; 3 uses
  %cmp.n1437 = icmp eq i64 %n.vec1430, %wide.trip.count922
  %xtraiter1780 = and i64 %wide.trip.count922, 3  ; 2 uses
  %lcmp.mod1781.not = icmp eq i64 %xtraiter1780, 0
  br label %.preheader708

.preheader728:                                    ; preds = %bb.ac
  br i1 %.not605746, label %.loopexit727, label %.preheader707.lr.ph

.preheader707.lr.ph:                              ; preds = %.preheader728
  %i.sj = sext i32 %.0543825 to i64               ; 3 uses
  %wide.trip.count927 = zext i32 %.1544 to i64    ; 12 uses
  %scevgep1335 = getelementptr i8, ptr %.1530, i64 %i.av ; 2 uses
  %scevgep1336 = getelementptr i8, ptr %scevgep1335, i64 %wide.trip.count927
  %scevgep1337 = getelementptr i8, ptr %.1530, i64 %wide.trip.count927
  %i.sk = mul nsw i64 %i.aw, %i.sj
  %i.sl = getelementptr i8, ptr %.1572, i64 %i.sk
  %scevgep1338 = getelementptr i8, ptr %i.sl, i64 %wide.trip.count927
  %scevgep1339 = getelementptr i8, ptr %.1530, i64 %i.ax
  %scevgep1340 = getelementptr i8, ptr %scevgep1339, i64 %wide.trip.count927
  %min.iters.check1341 = icmp ult i32 %.1544, 4
  %bound01343 = icmp ult ptr %.1530, %scevgep1338
  %bound11344 = icmp ult ptr %.1572, %scevgep1340
  %found.conflict1345 = and i1 %bound01343, %bound11344
  %i.sm = or i32 %.0543825, %i.h
  %i.sn = icmp slt i32 %i.sm, 0
  %i.so = or i1 %found.conflict1345, %i.sn
  %bound01348 = icmp ult ptr %.1530, %scevgep1336
  %bound11349 = icmp ult ptr %scevgep1335, %scevgep1337
  %found.conflict1350 = and i1 %bound01348, %bound11349
  %conflict.rdx1351 = or i1 %i.so, %found.conflict1350
  %min.iters.check1353 = icmp ult i32 %.1544, 32
  %i.sp = and i64 %wide.trip.count927, 28
  %n.vec1355 = and i64 %wide.trip.count927, 2147483616 ; 4 uses
  %cmp.n1364 = icmp eq i64 %n.vec1355, %wide.trip.count927
  %min.epilog.iters.check1368 = icmp eq i64 %i.sp, 0
  %n.vec1371 = and i64 %wide.trip.count927, 2147483644 ; 3 uses
  %cmp.n1378 = icmp eq i64 %n.vec1371, %wide.trip.count927
  %xtraiter1782 = and i64 %wide.trip.count927, 1
  %lcmp.mod1783.not = icmp eq i64 %xtraiter1782, 0
  %i.sq = add nsw i64 %wide.trip.count927, -1
  br label %.preheader707

.preheader726:                                    ; preds = %bb.ac
  br i1 %.not605746, label %.loopexit727, label %.preheader706.lr.ph

.preheader706.lr.ph:                              ; preds = %.preheader726
  %i.sr = sext i32 %.0543825 to i64               ; 3 uses
  %wide.trip.count932 = zext i32 %.1544 to i64    ; 10 uses
  %i.ss = mul nsw i64 %i.at, %i.sr
  %i.st = getelementptr i8, ptr %.1572, i64 %i.ss
  %scevgep = getelementptr i8, ptr %i.st, i64 %wide.trip.count932
  %scevgep1289 = getelementptr i8, ptr %.1530, i64 %i.au
  %scevgep1290 = getelementptr i8, ptr %scevgep1289, i64 %wide.trip.count932
  %min.iters.check1291 = icmp ult i32 %.1544, 4
  %bound0 = icmp ult ptr %.1530, %scevgep
  %bound1 = icmp ult ptr %.1572, %scevgep1290
  %found.conflict = and i1 %bound0, %bound1
  %i.su = or i32 %.0543825, %i.h
  %i.sv = icmp slt i32 %i.su, 0
  %i.sw = or i1 %found.conflict, %i.sv
  %min.iters.check1295 = icmp ult i32 %.1544, 32
  %i.sx = and i64 %wide.trip.count932, 28
  %n.vec1297 = and i64 %wide.trip.count932, 2147483616 ; 4 uses
  %cmp.n1304 = icmp eq i64 %n.vec1297, %wide.trip.count932
  %min.epilog.iters.check1308 = icmp eq i64 %i.sx, 0
  %n.vec1311 = and i64 %wide.trip.count932, 2147483644 ; 3 uses
  %cmp.n1317 = icmp eq i64 %n.vec1311, %wide.trip.count932
  %xtraiter1785 = and i64 %wide.trip.count932, 3  ; 2 uses
  %lcmp.mod1786.not = icmp eq i64 %xtraiter1785, 0
  br label %.preheader706

.preheader706:                                    ; preds = %.preheader706.lr.ph, %._crit_edge800
  %.0559805 = phi i32 [ %.6565745, %.preheader706.lr.ph ], [ %.0559, %._crit_edge800 ]
  %.2531804 = phi ptr [ %.1530, %.preheader706.lr.ph ], [ %i.tz, %._crit_edge800 ] ; 9 uses
  %.2573803 = phi ptr [ %.1572, %.preheader706.lr.ph ], [ %i.ty, %._crit_edge800 ] ; 8 uses
  br i1 %i.cc, label %iter.check1305, label %._crit_edge800

iter.check1305:                                   ; preds = %.preheader706
  %brmerge = select i1 %min.iters.check1291, i1 true, i1 %i.sw
  br i1 %brmerge, label %.lr.ph799.preheader, label %vector.main.loop.iter.check1294

vector.main.loop.iter.check1294:                  ; preds = %iter.check1305
  br i1 %min.iters.check1295, label %vec.epilog.ph1309, label %vector.body1298

vector.body1298:                                  ; preds = %vector.main.loop.iter.check1294, %vector.body1298
  %index1299 = phi i64 [ %index.next1302, %vector.body1298 ], [ 0, %vector.main.loop.iter.check1294 ] ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.2573803, i64 %index1299 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %wide.load1300 = load <16 x i8>, ptr %i.sy, align 1, !tbaa !34, !alias.scope !644
  %wide.load1301 = load <16 x i8>, ptr %i.sz, align 1, !tbaa !34, !alias.scope !644
  %i.ta = getelementptr inbounds nuw i8, ptr %.2531804, i64 %index1299 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  store <16 x i8> %wide.load1300, ptr %i.ta, align 1, !tbaa !34, !alias.scope !645, !noalias !644
  store <16 x i8> %wide.load1301, ptr %i.tb, align 1, !tbaa !34, !alias.scope !645, !noalias !644
  %index.next1302 = add nuw i64 %index1299, 32    ; 2 uses
  %i.tc = icmp eq i64 %index.next1302, %n.vec1297
  br i1 %i.tc, label %middle.block1303, label %vector.body1298, !llvm.loop !575

middle.block1303:                                 ; preds = %vector.body1298
  br i1 %cmp.n1304, label %._crit_edge800, label %vec.epilog.iter.check1306

vec.epilog.iter.check1306:                        ; preds = %middle.block1303
  br i1 %min.epilog.iters.check1308, label %.lr.ph799.preheader, label %vec.epilog.ph1309, !prof !63

vec.epilog.ph1309:                                ; preds = %vector.main.loop.iter.check1294, %vec.epilog.iter.check1306
  %vec.epilog.resume.val1310 = phi i64 [ %n.vec1297, %vec.epilog.iter.check1306 ], [ 0, %vector.main.loop.iter.check1294 ]
  br label %vec.epilog.vector.body1312

vec.epilog.vector.body1312:                       ; preds = %vec.epilog.vector.body1312, %vec.epilog.ph1309
  %index1313 = phi i64 [ %vec.epilog.resume.val1310, %vec.epilog.ph1309 ], [ %index.next1315, %vec.epilog.vector.body1312 ] ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.2573803, i64 %index1313
  %wide.load1314 = load <4 x i8>, ptr %i.td, align 1, !tbaa !34, !alias.scope !644
  %i.te = getelementptr inbounds nuw i8, ptr %.2531804, i64 %index1313
  store <4 x i8> %wide.load1314, ptr %i.te, align 1, !tbaa !34, !alias.scope !645, !noalias !644
  %index.next1315 = add nuw i64 %index1313, 4     ; 2 uses
  %i.tf = icmp eq i64 %index.next1315, %n.vec1311
  br i1 %i.tf, label %vec.epilog.middle.block1316, label %vec.epilog.vector.body1312, !llvm.loop !576

vec.epilog.middle.block1316:                      ; preds = %vec.epilog.vector.body1312
  br i1 %cmp.n1317, label %._crit_edge800, label %.lr.ph799.preheader

.lr.ph799.preheader:                              ; preds = %iter.check1305, %vec.epilog.iter.check1306, %vec.epilog.middle.block1316
  %indvars.iv929.ph = phi i64 [ 0, %iter.check1305 ], [ %n.vec1311, %vec.epilog.middle.block1316 ], [ %n.vec1297, %vec.epilog.iter.check1306 ] ; 3 uses
  br i1 %lcmp.mod1786.not, label %.lr.ph799.prol.loopexit, label %.lr.ph799.prol

.lr.ph799.prol:                                   ; preds = %.lr.ph799.preheader, %.lr.ph799.prol
  %indvars.iv929.prol = phi i64 [ %indvars.iv.next930.prol, %.lr.ph799.prol ], [ %indvars.iv929.ph, %.lr.ph799.preheader ] ; 3 uses
  %prol.iter1787 = phi i64 [ %prol.iter1787.next, %.lr.ph799.prol ], [ 0, %.lr.ph799.preheader ]
  %i.tg = getelementptr inbounds nuw i8, ptr %.2573803, i64 %indvars.iv929.prol
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !34
  %i.ti = getelementptr inbounds nuw i8, ptr %.2531804, i64 %indvars.iv929.prol
  store i8 %i.th, ptr %i.ti, align 1, !tbaa !34
  %indvars.iv.next930.prol = add nuw nsw i64 %indvars.iv929.prol, 1 ; 2 uses
  %prol.iter1787.next = add i64 %prol.iter1787, 1 ; 2 uses
  %prol.iter1787.cmp.not = icmp eq i64 %prol.iter1787.next, %xtraiter1785
  br i1 %prol.iter1787.cmp.not, label %.lr.ph799.prol.loopexit, label %.lr.ph799.prol, !llvm.loop !577

.lr.ph799.prol.loopexit:                          ; preds = %.lr.ph799.prol, %.lr.ph799.preheader
  %indvars.iv929.unr = phi i64 [ %indvars.iv929.ph, %.lr.ph799.preheader ], [ %indvars.iv.next930.prol, %.lr.ph799.prol ]
  %i.tj = sub nsw i64 %indvars.iv929.ph, %wide.trip.count932
  %i.tk = icmp ugt i64 %i.tj, -4
  br i1 %i.tk, label %._crit_edge800, label %.lr.ph799

.lr.ph799:                                        ; preds = %.lr.ph799.prol.loopexit, %.lr.ph799
  %indvars.iv929 = phi i64 [ %indvars.iv.next930.3, %.lr.ph799 ], [ %indvars.iv929.unr, %.lr.ph799.prol.loopexit ] ; 6 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.2573803, i64 %indvars.iv929
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !34
  %i.tn = getelementptr inbounds nuw i8, ptr %.2531804, i64 %indvars.iv929
  store i8 %i.tm, ptr %i.tn, align 1, !tbaa !34
  %indvars.iv.next930 = add nuw nsw i64 %indvars.iv929, 1 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.2573803, i64 %indvars.iv.next930
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !34
  %i.tq = getelementptr inbounds nuw i8, ptr %.2531804, i64 %indvars.iv.next930
  store i8 %i.tp, ptr %i.tq, align 1, !tbaa !34
  %indvars.iv.next930.1 = add nuw nsw i64 %indvars.iv929, 2 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.2573803, i64 %indvars.iv.next930.1
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !34
  %i.tt = getelementptr inbounds nuw i8, ptr %.2531804, i64 %indvars.iv.next930.1
  store i8 %i.ts, ptr %i.tt, align 1, !tbaa !34
  %indvars.iv.next930.2 = add nuw nsw i64 %indvars.iv929, 3 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.2573803, i64 %indvars.iv.next930.2
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !34
  %i.tw = getelementptr inbounds nuw i8, ptr %.2531804, i64 %indvars.iv.next930.2
  store i8 %i.tv, ptr %i.tw, align 1, !tbaa !34
  %indvars.iv.next930.3 = add nuw nsw i64 %indvars.iv929, 4 ; 2 uses
  %exitcond933.not.3 = icmp eq i64 %indvars.iv.next930.3, %wide.trip.count932
  br i1 %exitcond933.not.3, label %._crit_edge800, label %.lr.ph799, !llvm.loop !578

._crit_edge800:                                   ; preds = %.lr.ph799.prol.loopexit, %.lr.ph799, %middle.block1303, %vec.epilog.middle.block1316, %.preheader706
  %i.tx = getelementptr inbounds i8, ptr %.2531804, i64 %i.sr
  store i8 -1, ptr %i.tx, align 1, !tbaa !34
  %i.ty = getelementptr inbounds i8, ptr %.2573803, i64 %i.sr ; 2 uses
  %i.tz = getelementptr inbounds i8, ptr %.2531804, i64 %i.ao
  %.0559 = add i32 %.0559805, -1                  ; 2 uses
  %.not621 = icmp eq i32 %.0559, 0
  br i1 %.not621, label %.loopexit727, label %.preheader706, !llvm.loop !579

.preheader707:                                    ; preds = %.preheader707.lr.ph, %._crit_edge791
  %.1560796 = phi i32 [ %.6565745, %.preheader707.lr.ph ], [ %.1560, %._crit_edge791 ]
  %.3532795 = phi ptr [ %.1530, %.preheader707.lr.ph ], [ %i.vl, %._crit_edge791 ] ; 12 uses
  %.3574794 = phi ptr [ %.1572, %.preheader707.lr.ph ], [ %i.vk, %._crit_edge791 ] ; 6 uses
  br i1 %i.cc, label %iter.check1365, label %._crit_edge791

iter.check1365:                                   ; preds = %.preheader707
  %brmerge1834 = select i1 %min.iters.check1341, i1 true, i1 %conflict.rdx1351
  br i1 %brmerge1834, label %.lr.ph790.preheader, label %vector.main.loop.iter.check1352

vector.main.loop.iter.check1352:                  ; preds = %iter.check1365
  br i1 %min.iters.check1353, label %vec.epilog.ph1369, label %vector.body1356

vector.body1356:                                  ; preds = %vector.main.loop.iter.check1352, %vector.body1356
  %index1357 = phi i64 [ %index.next1362, %vector.body1356 ], [ 0, %vector.main.loop.iter.check1352 ] ; 4 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.3574794, i64 %index1357 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  %wide.load1358 = load <16 x i8>, ptr %i.ua, align 1, !tbaa !34, !alias.scope !646
  %wide.load1359 = load <16 x i8>, ptr %i.ub, align 1, !tbaa !34, !alias.scope !646
  %i.uc = sub nsw i64 %index1357, %i.ao
  %i.ud = getelementptr inbounds i8, ptr %.3532795, i64 %i.uc ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %wide.load1360 = load <16 x i8>, ptr %i.ud, align 1, !tbaa !34, !alias.scope !647
  %wide.load1361 = load <16 x i8>, ptr %i.ue, align 1, !tbaa !34, !alias.scope !647
  %i.uf = add <16 x i8> %wide.load1360, %wide.load1358
  %i.ug = add <16 x i8> %wide.load1361, %wide.load1359
  %i.uh = getelementptr inbounds nuw i8, ptr %.3532795, i64 %index1357 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  store <16 x i8> %i.uf, ptr %i.uh, align 1, !tbaa !34, !alias.scope !648, !noalias !649
  store <16 x i8> %i.ug, ptr %i.ui, align 1, !tbaa !34, !alias.scope !648, !noalias !649
  %index.next1362 = add nuw i64 %index1357, 32    ; 2 uses
  %i.uj = icmp eq i64 %index.next1362, %n.vec1355
  br i1 %i.uj, label %middle.block1363, label %vector.body1356, !llvm.loop !584

middle.block1363:                                 ; preds = %vector.body1356
  br i1 %cmp.n1364, label %._crit_edge791, label %vec.epilog.iter.check1366

vec.epilog.iter.check1366:                        ; preds = %middle.block1363
  br i1 %min.epilog.iters.check1368, label %.lr.ph790.preheader, label %vec.epilog.ph1369, !prof !63

vec.epilog.ph1369:                                ; preds = %vector.main.loop.iter.check1352, %vec.epilog.iter.check1366
  %vec.epilog.resume.val1370 = phi i64 [ %n.vec1355, %vec.epilog.iter.check1366 ], [ 0, %vector.main.loop.iter.check1352 ]
  br label %vec.epilog.vector.body1372

vec.epilog.vector.body1372:                       ; preds = %vec.epilog.vector.body1372, %vec.epilog.ph1369
  %index1373 = phi i64 [ %vec.epilog.resume.val1370, %vec.epilog.ph1369 ], [ %index.next1376, %vec.epilog.vector.body1372 ] ; 4 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.3574794, i64 %index1373
  %wide.load1374 = load <4 x i8>, ptr %i.uk, align 1, !tbaa !34, !alias.scope !646
  %i.ul = sub nsw i64 %index1373, %i.ao
  %i.um = getelementptr inbounds i8, ptr %.3532795, i64 %i.ul
  %wide.load1375 = load <4 x i8>, ptr %i.um, align 1, !tbaa !34, !alias.scope !647
  %i.un = add <4 x i8> %wide.load1375, %wide.load1374
  %i.uo = getelementptr inbounds nuw i8, ptr %.3532795, i64 %index1373
  store <4 x i8> %i.un, ptr %i.uo, align 1, !tbaa !34, !alias.scope !648, !noalias !649
  %index.next1376 = add nuw i64 %index1373, 4     ; 2 uses
  %i.up = icmp eq i64 %index.next1376, %n.vec1371
  br i1 %i.up, label %vec.epilog.middle.block1377, label %vec.epilog.vector.body1372, !llvm.loop !585

vec.epilog.middle.block1377:                      ; preds = %vec.epilog.vector.body1372
  br i1 %cmp.n1378, label %._crit_edge791, label %.lr.ph790.preheader

.lr.ph790.preheader:                              ; preds = %iter.check1365, %vec.epilog.iter.check1366, %vec.epilog.middle.block1377
  %indvars.iv924.ph = phi i64 [ 0, %iter.check1365 ], [ %n.vec1371, %vec.epilog.middle.block1377 ], [ %n.vec1355, %vec.epilog.iter.check1366 ] ; 6 uses
  br i1 %lcmp.mod1783.not, label %.lr.ph790.prol.loopexit, label %.lr.ph790.prol

.lr.ph790.prol:                                   ; preds = %.lr.ph790.preheader
  %i.uq = getelementptr inbounds nuw i8, ptr %.3574794, i64 %indvars.iv924.ph
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !34
  %i.us = sub nsw i64 %indvars.iv924.ph, %i.ao
  %i.ut = getelementptr inbounds i8, ptr %.3532795, i64 %i.us
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !34
  %.narrow620.prol = add i8 %i.uu, %i.ur
  %i.uv = getelementptr inbounds nuw i8, ptr %.3532795, i64 %indvars.iv924.ph
  store i8 %.narrow620.prol, ptr %i.uv, align 1, !tbaa !34
  %indvars.iv.next925.prol = or disjoint i64 %indvars.iv924.ph, 1
end_hunk_1
