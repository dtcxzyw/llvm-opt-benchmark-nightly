inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZL15stbi__de_iphoneP9stbi__png:bb.a
  %niter = phi i32 [ 0, %.lr.ph15.preheader.new ], [ %niter.next.3, %.lr.ph15 ]
  %i.bc = load i8, ptr %.24813, align 1, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %.24813, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !26
  store i8 %i.be, ptr %.24813, align 1, !tbaa !26
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %.24813, i64 4 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %.24813, i64 6 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !26
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !26
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %.24813, i64 8 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %.24813, i64 10 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !26
  store i8 %i.bm, ptr %i.bj, align 1, !tbaa !26
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %.24813, i64 12 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %.24813, i64 14 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !26
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !26
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !26
  %i.br = getelementptr inbounds nuw i8, ptr %.24813, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit32.unr-lcssa, label %.lr.ph15, !llvm.loop !283

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
  %i.bs = load i8, ptr %.04616.epil, align 1, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 2 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !26
  store i8 %i.bu, ptr %.04616.epil, align 1, !tbaa !26
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 3
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !284

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
  %i.bw = load i8, ptr %.24813.epil, align 1, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !26
  store i8 %i.by, ptr %.24813.epil, align 1, !tbaa !26
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !285

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !46
  %i.c = mul i32 %4, %3                           ; 4 uses
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d                       ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !53   ; 8 uses
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
  %i.m = mul nsw i32 %5, %4                       ; 3 uses
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
  store ptr null, ptr %i.q, align 8, !tbaa !48
  br label %.critedge.sink.split

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.r = mul nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.s) #36 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !48
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.critedge.sink.split, label %bb.d

bb.d:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.v = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %or.cond.not.i.i, label %bb.e, label %.critedge.sink.split

bb.e:                                             ; preds = %bb.d
  %i.w = icmp ne i32 %4, 0                        ; 2 uses
  br i1 %i.w, label %_ZL21stbi__mul2sizes_validii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.e
  %i.x = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.x
  br i1 %.not23.i, label %.critedge.sink.split, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.e
  %i.y = mul i32 %i.g, %4                         ; 14 uses
  %i.z = or i32 %i.y, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.z, -1
  br i1 %or.cond.not.i10.i, label %bb.f, label %.critedge.sink.split

bb.f:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.aa = icmp eq i32 %6, 0
  br i1 %i.aa, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.f
  %i.ab = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.y, %i.ab
  %i.ac = mul i32 %i.y, %6                        ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 2147483640
  %or.cond695 = or i1 %.not.i, %i.ad
  br i1 %or.cond695, label %.critedge.sink.split, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge

_ZL21stbi__mad3sizes_validiiii.exit._crit_edge:   ; preds = %bb.f, %_ZL21stbi__mul2sizes_validii.exit12.i
  %.pre-phi = phi i32 [ %i.ac, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ 0, %bb.f ]
  %i.ae = add nsw i32 %.pre-phi, 7
  %i.af = lshr i32 %i.ae, 3                       ; 5 uses
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = mul i32 %i.ag, %5
  %i.ai = icmp ult i32 %2, %i.ah
  br i1 %i.ai, label %.critedge.sink.split, label %.preheader738

.preheader738:                                    ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge
  %i.aj = icmp slt i32 %6, 8                      ; 2 uses
  br i1 %i.k, label %._crit_edge826.thread, label %.lr.ph825

.lr.ph825:                                        ; preds = %.preheader738
  %i.ak = icmp ugt i32 %i.af, %4
  %i.al = sub i32 %i.c, %i.af
  %i.am = zext i32 %i.al to i64
  %i.an = zext i32 %i.e to i64                    ; 7 uses
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = icmp eq i32 %6, 8
  %.not606 = icmp eq i32 %i.g, %3                 ; 3 uses
  %i.aq = sext i32 %i.h to i64                    ; 58 uses
  %i.ar = sext i32 %i.g to i64                    ; 2 uses
  %i.as = sext i32 %3 to i64
  %or.cond = select i1 %i.aj, i1 true, i1 %.not606
  %.6567743 = add i32 %4, -1                      ; 8 uses
  %.not608744 = icmp eq i32 %.6567743, 0          ; 7 uses
  %wide.trip.count966 = zext i32 %5 to i64
  %i.at = add i32 %4, -2                          ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = mul nsw i64 %i.aq, %i.au
  %i.aw = zext i32 %i.at to i64                   ; 3 uses
  %i.ax = mul nsw i64 %i.aq, %i.aw
  %i.ay = sub nsw i64 0, %i.aq
  %i.az = add nsw i64 %i.aw, -1
  %i.ba = mul i64 %i.az, %i.aq
  %i.bb = add i32 %4, -2                          ; 2 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = mul nsw i64 %i.aq, %i.bc                ; 2 uses
  %i.be = sub i64 %i.bd, %i.an
  %i.bf = zext i32 %i.bb to i64                   ; 3 uses
  %i.bg = mul nsw i64 %i.aq, %i.bf                ; 2 uses
  %i.bh = sub i64 %i.bg, %i.an
  %i.bi = sub nsw i64 0, %i.aq                    ; 3 uses
  %i.bj = add nsw i64 %i.bf, -1
  %i.bk = mul i64 %i.bj, %i.aq
  %i.bl = add i32 %4, -2
  %i.bm = zext i32 %i.bl to i64                   ; 3 uses
  %i.bn = mul nsw i64 %i.aq, %i.bm                ; 2 uses
  %i.bo = add nsw i64 %i.bm, -1
  %i.bp = mul i64 %i.bo, %i.aq                    ; 2 uses
  %i.bq = sub i64 %i.bn, %i.an
  %i.br = sub nsw i64 %i.bi, %i.an
  %i.bs = sub i64 %i.bp, %i.an
  %i.bt = add i32 %4, -2                          ; 2 uses
  %i.bu = zext i32 %i.bt to i64                   ; 3 uses
  %i.bv = mul nsw i64 %i.aq, %i.bu
  %i.bw = sub nsw i64 0, %i.aq                    ; 2 uses
  %i.bx = add nsw i64 %i.bu, -1
  %i.by = mul i64 %i.bx, %i.aq
  %i.bz = zext i32 %i.bt to i64                   ; 3 uses
  %i.ca = mul nsw i64 %i.aq, %i.bz
  %i.cb = add nsw i64 %i.bz, -1
  %i.cc = mul i64 %i.cb, %i.aq
  %stride.check1571 = icmp slt i32 %i.h, 0
  %stride.check1523 = icmp slt i32 %i.h, 0
  %stride.check1461 = icmp slt i32 %i.h, 0
  %stride.check1398 = icmp slt i32 %i.h, 0
  %stride.check1348 = icmp slt i32 %i.h, 0
  %stride.check1302 = icmp slt i32 %i.h, 0
  %stride.check = icmp slt i32 %i.h, 0
  %brmerge.not = and i1 %i.w, %i.a
  %xtraiter1643 = and i32 %4, 7                   ; 3 uses
  %i.cd = icmp ult i32 %4, 8
  %unroll_iter = and i32 %4, -8
  %lcmp.mod1644.not = icmp eq i32 %xtraiter1643, 0
  %lcmp.mod1645 = icmp ne i32 %xtraiter1643, 0
  %i.ce = add i32 %i.e, -1
  %diff.check1155 = icmp ult i32 %i.ce, 15
  %invariant.op = add i64 %i.an, -1
  %i.cf = add i32 %i.e, -1
  %diff.check1115 = icmp ult i32 %i.cf, 31
  %i.cg = add i32 %i.e, -1
  %diff.check1082 = icmp ult i32 %i.cg, 31
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph825, %.loopexit723
  %indvars.iv963 = phi i64 [ 0, %.lr.ph825 ], [ %indvars.iv.next964, %.loopexit723 ] ; 3 uses
  %.0542824 = phi i32 [ %4, %.lr.ph825 ], [ %.1543, %.loopexit723 ]
  %.0545823 = phi i32 [ %i.i, %.lr.ph825 ], [ %.1546, %.loopexit723 ]
  %.0573821 = phi ptr [ %1, %.lr.ph825 ], [ %.11584, %.loopexit723 ] ; 3 uses
  %i.ch = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.ci = trunc nuw i64 %indvars.iv963 to i32
  %i.cj = mul i32 %i.e, %i.ci
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0573821, i64 1 ; 9 uses
  %i.cn = load i8, ptr %.0573821, align 1, !tbaa !26 ; 3 uses
  %i.co = icmp ugt i8 %i.cn, 4
  br i1 %i.co, label %.critedge.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.aj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  br i1 %i.ak, label %.critedge.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.am
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.1546 = phi i32 [ 1, %bb.j ], [ %.0545823, %bb.h ] ; 39 uses
  %.1543 = phi i32 [ %i.af, %bb.j ], [ %.0542824, %bb.h ] ; 2 uses
  %.0531 = phi ptr [ %i.cp, %bb.j ], [ %i.cl, %bb.h ] ; 28 uses
  %.05311067 = ptrtoaddr ptr %.0531 to i64        ; 6 uses
  %i.cq = getelementptr i8, ptr %.0531, i64 %i.ao ; 4 uses
  %i.cr = icmp eq i64 %indvars.iv963, 0
  br i1 %i.cr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cs = zext nneg i8 %i.cn to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @_ZL16first_row_filter, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0522.in = phi i8 [ %i.cu, %bb.l ], [ %i.cn, %bb.k ] ; 3 uses
  %i.cv = icmp sgt i32 %.1546, 0                  ; 8 uses
  br i1 %i.cv, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.m
  %wide.trip.count = zext nneg i32 %.1546 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.u ] ; 12 uses
  switch i8 %.0522.in, label %bb.u [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 4, label %bb.r
    i8 5, label %bb.s
    i8 6, label %bb.t
  ]

bb.n:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !26
  br label %.sink.split

bb.o:                                             ; preds = %.lr.ph
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !26
  br label %.sink.split

bb.p:                                             ; preds = %.lr.ph
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv
  %i.db = load i8, ptr %i.da, align 1, !tbaa !26
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !26
  %.narrow642 = add i8 %i.dd, %i.db
  br label %.sink.split

bb.q:                                             ; preds = %.lr.ph
  %i.de = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !26
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !26
  %i.di = lshr i8 %i.dh, 1
  %.narrow640 = add i8 %i.di, %i.df
  br label %.sink.split

bb.r:                                             ; preds = %.lr.ph
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !26
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !26
  %.narrow638 = add i8 %i.dm, %i.dk
  br label %.sink.split

bb.s:                                             ; preds = %.lr.ph
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !26
  br label %.sink.split

bb.t:                                             ; preds = %.lr.ph
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !26
  br label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.sink = phi i8 [ %i.cx, %bb.n ], [ %i.cz, %bb.o ], [ %.narrow642, %bb.p ], [ %.narrow640, %bb.q ], [ %.narrow638, %bb.r ], [ %i.do, %bb.s ], [ %i.dq, %bb.t ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0531, i64 %indvars.iv
  store i8 %.sink, ptr %i.dr, align 1, !tbaa !26
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !286

._crit_edge:                                      ; preds = %bb.u, %bb.m
  br i1 %i.ap, label %bb.v, label %bb.y

bb.v:                                             ; preds = %._crit_edge
  br i1 %.not606, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ds = getelementptr inbounds i8, ptr %.0531, i64 %i.ar
  store i8 -1, ptr %i.ds, align 1, !tbaa !26
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dt = getelementptr inbounds i8, ptr %i.cm, i64 %i.ar
  br label %bb.ac

bb.y:                                             ; preds = %._crit_edge
  br i1 %i.a, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.pre981 = sext i32 %.1546 to i64               ; 2 uses
  br i1 %.not606, label %._crit_edge980, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = getelementptr inbounds i8, ptr %.0531, i64 %.pre981 ; 2 uses
  store i8 -1, ptr %i.du, align 1, !tbaa !26
  %i.dv = getelementptr i8, ptr %i.du, i64 1
  store i8 -1, ptr %i.dv, align 1, !tbaa !26
  br label %._crit_edge980

._crit_edge980:                                   ; preds = %bb.z, %bb.aa
  %i.dw = getelementptr inbounds i8, ptr %i.cm, i64 %.pre981
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.dx = getelementptr inbounds nuw i8, ptr %.0573821, i64 2
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge980, %bb.ab, %bb.x
  %.sink1032 = phi i64 [ %i.aq, %._crit_edge980 ], [ 1, %bb.ab ], [ %i.as, %bb.x ] ; 21 uses
  %.1574 = phi ptr [ %i.dw, %._crit_edge980 ], [ %i.dx, %bb.ab ], [ %i.dt, %bb.x ] ; 62 uses
  %.15741068 = ptrtoaddr ptr %.1574 to i64        ; 6 uses
  %i.dy = getelementptr i8, ptr %.0531, i64 %.sink1032 ; 77 uses
  %i.dz = getelementptr i8, ptr %i.cq, i64 %.sink1032 ; 24 uses
  br i1 %or.cond, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ea = add i32 %.1543, -1
  %i.eb = mul i32 %i.ea, %.1546                   ; 26 uses
  switch i8 %.0522.in, label %.loopexit712 [
    i8 0, label %bb.ae
    i8 1, label %.preheader711
    i8 2, label %.preheader713
    i8 3, label %.preheader715
    i8 4, label %.preheader717
    i8 5, label %.preheader719
    i8 6, label %.preheader721
  ]

.preheader721:                                    ; preds = %bb.ad
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %iter.check1242, label %.loopexit712
end_hunk_0
