inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@_ZL15stbi__de_iphoneP9stbi__png:bb.a
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph15.epil.preheader

.lr.ph15.epil.preheader:                          ; preds = %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.preheader
  %.24813.epil.init = phi ptr [ %.24.val, %.lr.ph15.preheader ], [ %i.bw, %.loopexit.loopexit32.unr-lcssa ]
  %lcmp.mod34 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph15.epil

.lr.ph15.epil:                                    ; preds = %.lr.ph15.epil, %.lr.ph15.epil.preheader
  %.24813.epil = phi ptr [ %i.ce, %.lr.ph15.epil ], [ %.24813.epil.init, %.lr.ph15.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.epil ], [ 0, %.lr.ph15.epil.preheader ]
  %i.cb = load i8, ptr %.24813.epil, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1
  store i8 %i.cd, ptr %.24813.epil, align 1
  store i8 %i.cb, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !191

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #30 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 2 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = mul i32 %4, %3
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 6 uses
  %i.h = shl i32 %3, %i.d                         ; 4 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 3 uses
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

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.a, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %bb.d

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.r = mul nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.s) #50 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit.thread, %_ZL17stbi__malloc_mad3iiii.exit
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.v, align 8
  br label %bb.al

bb.e:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.w = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.w, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.x, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.f
  %i.y = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.y
  br i1 %.not23.i, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.f
  %i.z = mul i32 %i.g, %4                         ; 18 uses
  %i.aa = or i32 %i.z, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.aa, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.g:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.ab = icmp eq i32 %6, 0
  br i1 %i.ab, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.g
  %i.ac = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.z, %i.ac
  %i.ad = mul i32 %i.z, %6                        ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 2147483640
  %or.cond = or i1 %.not.i, %i.ae
  br i1 %or.cond, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge

_ZL21stbi__mad3sizes_validiiii.exit.thread:       ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %bb.e, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.af, align 8
  br label %bb.al

_ZL21stbi__mad3sizes_validiiii.exit._crit_edge:   ; preds = %bb.g, %_ZL21stbi__mul2sizes_validii.exit12.i
  %.pre-phi = phi i32 [ %i.ad, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ 0, %bb.g ]
  %i.ag = add i32 %.pre-phi, 7
  %i.ah = lshr i32 %i.ag, 3                       ; 13 uses
  %or.cond.not.i.i298 = icmp sgt i32 %5, -1
  br i1 %or.cond.not.i.i298, label %bb.h, label %_ZL21stbi__mad2sizes_validiii.exit.thread

bb.h:                                             ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge
  br i1 %i.k, label %_ZL21stbi__mad2sizes_validiii.exit, label %_ZL21stbi__mul2sizes_validii.exit.i299

_ZL21stbi__mul2sizes_validii.exit.i299:           ; preds = %bb.h
  %i.ai = udiv i32 2147483647, %5
  %.not10.i = icmp samesign ugt i32 %i.ah, %i.ai
  br i1 %.not10.i, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %_ZL21stbi__mad2sizes_validiii.exit

_ZL21stbi__mad2sizes_validiii.exit:               ; preds = %bb.h, %_ZL21stbi__mul2sizes_validii.exit.i299
  %i.aj = mul nuw nsw i32 %i.ah, %5
  %i.ak = xor i32 %i.ah, 2147483647
  %.not330 = icmp samesign ugt i32 %i.aj, %i.ak
  br i1 %.not330, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %bb.i

_ZL21stbi__mad2sizes_validiii.exit.thread:        ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, %_ZL21stbi__mul2sizes_validii.exit.i299, %_ZL21stbi__mad2sizes_validiii.exit
  %i.al = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.al, align 8
  br label %bb.al

bb.i:                                             ; preds = %_ZL21stbi__mad2sizes_validiii.exit
  %i.am = add nuw nsw i32 %i.ah, 1
  %i.an = mul i32 %i.am, %5
  %i.ao = icmp ult i32 %2, %i.an
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.ap, align 8
  br label %bb.al

bb.k:                                             ; preds = %bb.i
  %i.aq = shl nuw nsw i32 %i.ah, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.ar) #50 ; 5 uses
  %.not283 = icmp eq ptr %i.as, null
  br i1 %.not283, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.at, align 8
  br label %bb.al

bb.m:                                             ; preds = %bb.k
  %i.au = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.m
  %spec.select = select i1 %i.au, i32 1, i32 %i.i ; 14 uses
  %spec.select297 = select i1 %i.au, i32 %i.ah, i32 %4
  %i.av = zext nneg i32 %i.ah to i64
  %i.aw = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.ax = sext i32 %spec.select to i64            ; 36 uses
  %i.ay = icmp slt i32 %spec.select, %i.aw        ; 4 uses
  %i.az = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.ba = icmp sgt i32 %i.aw, 0
  %i.bb = sext i32 %i.aw to i64                   ; 13 uses
  %i.bc = icmp eq i32 %6, 8
  %i.bd = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.be = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.z, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 7 uses
  %i.bf = icmp sgt i32 %.030.i305, -1             ; 4 uses
  %i.bg = zext i32 %.030.i305 to i64              ; 17 uses
  %i.bh = zext i32 %i.z to i64
  %i.bi = icmp eq i32 %7, 0
  %i.bj = sext i32 %6 to i64
  %i.bk = getelementptr inbounds i8, ptr @_ZL23stbi__depth_scale_table, i64 %i.bj
  %wide.trip.count460 = zext nneg i32 %5 to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.aw to i64     ; 8 uses
  %8 = add nuw nsw i64 %i.bg, 1                   ; 2 uses
  %i.bl = zext i32 %i.z to i64                    ; 2 uses
  %i.bm = sub nsw i64 %i.bb, %i.ax                ; 28 uses
  %i.bn = add nuw nsw i64 %i.bg, 1
  %i.bo = add i32 %i.z, -1                        ; 3 uses
  %min.iters.check732 = icmp ult i64 %i.bm, 8
  %diff.check730 = icmp ult i32 %spec.select, 32
  %or.cond768 = select i1 %min.iters.check732, i1 true, i1 %diff.check730
  %min.iters.check734 = icmp ult i64 %i.bm, 32
  %n.mod.vf736 = and i64 %i.bm, 24
  %n.vec737 = and i64 %i.bm, -32                  ; 4 uses
  %i.bp = add nsw i64 %n.vec737, %i.ax
  %cmp.n746 = icmp eq i64 %i.bm, %n.vec737
  %min.epilog.iters.check752 = icmp eq i64 %n.mod.vf736, 0
  %n.vec755 = and i64 %i.bm, -8                   ; 3 uses
  %i.bq = add nsw i64 %n.vec755, %i.ax
  %cmp.n762 = icmp eq i64 %i.bm, %n.vec755
  %i.br = add nsw i64 %i.bb, -1
  %min.iters.check698 = icmp ult i32 %spec.select, 4
  %min.iters.check700 = icmp ult i32 %spec.select, 32
  %n.mod.vf702 = and i64 %wide.trip.count424, 28
  %n.vec703 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n712 = icmp eq i64 %n.vec703, %wide.trip.count424
  %min.epilog.iters.check717 = icmp eq i64 %n.mod.vf702, 0
  %n.vec720 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n727 = icmp eq i64 %n.vec720, %wide.trip.count424
  %xtraiter783 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod784.not = icmp eq i64 %xtraiter783, 0
  %min.iters.check661 = icmp ult i64 %i.bm, 4
  %diff.check655 = icmp ult i32 %spec.select, 16
  %min.iters.check663 = icmp ult i64 %i.bm, 16
  %n.mod.vf665 = and i64 %i.bm, 12
  %n.vec666 = and i64 %i.bm, -16                  ; 4 uses
  %i.bs = add nsw i64 %n.vec666, %i.ax
  %cmp.n675 = icmp eq i64 %i.bm, %n.vec666
  %min.epilog.iters.check681 = icmp eq i64 %n.mod.vf665, 0
  %n.vec684 = and i64 %i.bm, -4                   ; 3 uses
  %i.bt = add nsw i64 %n.vec684, %i.ax
  %cmp.n693 = icmp eq i64 %i.bm, %n.vec684
  %min.iters.check623 = icmp ult i32 %spec.select, 4
  %min.iters.check625 = icmp ult i32 %spec.select, 32
  %n.mod.vf627 = and i64 %wide.trip.count424, 28
  %n.vec628 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n637 = icmp eq i64 %n.vec628, %wide.trip.count424
  %min.epilog.iters.check642 = icmp eq i64 %n.mod.vf627, 0
  %n.vec645 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n652 = icmp eq i64 %n.vec645, %wide.trip.count424
  %xtraiter785 = and i64 %wide.trip.count424, 1
  %lcmp.mod786.not = icmp eq i64 %xtraiter785, 0
  %i.bu = add nsw i64 %wide.trip.count424, -1
  %min.iters.check588 = icmp ult i64 %i.bm, 4
  %diff.check586 = icmp ult i32 %spec.select, 16
  %min.iters.check590 = icmp ult i64 %i.bm, 16
  %n.mod.vf592 = and i64 %i.bm, 12
  %n.vec593 = and i64 %i.bm, -16                  ; 4 uses
  %i.bv = add nsw i64 %n.vec593, %i.ax
  %cmp.n601 = icmp eq i64 %i.bm, %n.vec593
  %min.epilog.iters.check607 = icmp eq i64 %n.mod.vf592, 0
  %n.vec610 = and i64 %i.bm, -4                   ; 3 uses
  %i.bw = add nsw i64 %n.vec610, %i.ax
  %cmp.n618 = icmp eq i64 %i.bm, %n.vec610
  %i.bx = add nsw i64 %i.bb, -1
  %min.iters.check553 = icmp ult i32 %i.aw, 4
  %min.iters.check555 = icmp ult i32 %i.aw, 32
  %n.mod.vf557 = and i64 %wide.trip.count444, 28
  %n.vec558 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n567 = icmp eq i64 %n.vec558, %wide.trip.count444
  %min.epilog.iters.check572 = icmp eq i64 %n.mod.vf557, 0
  %n.vec575 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n582 = icmp eq i64 %n.vec575, %wide.trip.count444
  %xtraiter791 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod792.not = icmp eq i64 %xtraiter791, 0
  %min.iters.check527 = icmp ult i64 %i.bm, 8
  %diff.check = icmp ult i32 %spec.select, 32
  %or.cond767 = select i1 %min.iters.check527, i1 true, i1 %diff.check
  %min.iters.check528 = icmp ult i64 %i.bm, 32
  %n.mod.vf530 = and i64 %i.bm, 24
  %n.vec531 = and i64 %i.bm, -32                  ; 4 uses
  %i.by = add nsw i64 %n.vec531, %i.ax
  %cmp.n540 = icmp eq i64 %i.bm, %n.vec531
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf530, 0
  %n.vec543 = and i64 %i.bm, -8                   ; 3 uses
  %i.bz = add nsw i64 %n.vec543, %i.ax
  %cmp.n548 = icmp eq i64 %i.bm, %n.vec543
  %i.ca = add nsw i64 %i.bb, -1
  %xtraiter797 = and i32 %4, 1
  %i.cb = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod798.not = icmp eq i32 %xtraiter797, 0
  %lcmp.mod799 = trunc i32 %4 to i1
  %min.iters.check506 = icmp ult i32 %i.z, 8
  %n.vec509 = and i64 %i.bl, 4294967288           ; 4 uses
  %i.cc = shl nuw nsw i64 %n.vec509, 1            ; 2 uses
  %i.cd = trunc nuw i64 %n.vec509 to i32
  %cmp.n522 = icmp eq i64 %n.vec509, %i.bl
  %i.ce = and i64 %i.bg, 1
  %lcmp.mod801.not.not = icmp eq i64 %i.ce, 0
  %i.cf = shl nuw nsw i64 %i.bg, 2
  %i.cg = mul nuw nsw i64 %i.bg, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bg, -1
  %i.ch = icmp eq i32 %.030.i305, 0
  %min.iters.check = icmp ult i32 %.030.i305, 7
  %n.vec = and i64 %8, 4294967288                 ; 3 uses
  %i.ci = sub nsw i64 %i.bg, %n.vec
  %cmp.n = icmp eq i64 %8, %n.vec
  %xtraiter803 = and i32 %i.z, 1
  %i.cj = icmp eq i32 %i.bo, 0
  %unroll_iter806 = and i32 %i.z, -2
  %lcmp.mod804.not = icmp eq i32 %xtraiter803, 0
  %lcmp.mod805 = trunc i32 %i.z to i1
  %xtraiter808 = and i32 %i.z, 1
  %i.ck = icmp eq i32 %i.bo, 0
  %unroll_iter811 = and i32 %i.z, -2
  %lcmp.mod809.not = icmp eq i32 %xtraiter808, 0
  %lcmp.mod810 = trunc i32 %i.z to i1
  %xtraiter813 = and i32 %i.z, 1
  %i.cl = icmp eq i32 %i.bo, 0
  %unroll_iter816 = and i32 %i.z, -2
  %lcmp.mod814.not = icmp eq i32 %xtraiter813, 0
  %lcmp.mod815 = trunc i32 %i.z to i1
  %i.cm = and i64 %i.bg, 1
  %lcmp.mod819.not.not = icmp eq i64 %i.cm, 0
  %i.cn = shl nuw nsw i64 %i.bg, 2
  %i.co = mul nuw nsw i64 %i.bg, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bg, -1
  %i.cp = icmp eq i32 %.030.i305, 0
  %xtraiter821 = and i64 %i.bn, 3                 ; 2 uses
  %lcmp.mod822.not = icmp eq i64 %xtraiter821, 0
  %i.cq = icmp ult i32 %.030.i305, 3
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 9 uses
  %.0237399 = phi ptr [ %1, %.lr.ph400 ], [ %i.qz, %.loopexit ] ; 2 uses
  %i.cr = trunc i64 %indvars.iv457 to i32
  %i.cs = and i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 1
  %i.cu = mul nuw nsw i32 %i.ah, %i.ct
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = trunc i64 %indvars.iv457 to i32
  %i.cx = and i32 %i.cw, 1
  %i.cy = xor i32 %i.cx, 1
  %i.cz = mul nuw nsw i32 %i.ah, %i.cy
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = trunc i64 %indvars.iv457 to i32
  %i.dc = and i32 %i.db, 1
  %i.dd = xor i32 %i.dc, 1
  %i.de = mul nuw nsw i32 %i.ah, %i.dd
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = trunc i64 %indvars.iv457 to i32
  %i.dh = and i32 %i.dg, 1
  %i.di = xor i32 %i.dh, 1
  %i.dj = mul nuw nsw i32 %i.ah, %i.di
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = trunc i64 %indvars.iv457 to i32
  %i.dm = and i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 1
  %i.do = mul nuw nsw i32 %i.ah, %i.dn
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = trunc nuw i64 %indvars.iv457 to i32     ; 2 uses
  %i.dr = trunc i64 %indvars.iv457 to i1
  %i.ds = select i1 %i.dr, i64 %i.av, i64 0       ; 7 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ds ; 83 uses
  %i.du = and i32 %i.dq, 1
  %i.dv = xor i32 %i.du, 1
  %i.dw = mul nuw nsw i32 %i.dv, %i.ah
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dx ; 30 uses
  %i.dz = load ptr, ptr %i.u, align 8
  %i.ea = mul i32 %i.e, %i.dq
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.eb ; 34 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0237399, i64 1 ; 41 uses
  %i.ee = load i8, ptr %.0237399, align 1         ; 3 uses
  %i.ef = icmp ugt i8 %i.ee, 4
  br i1 %i.ef, label %bb.ak, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eg = icmp eq i64 %indvars.iv457, 0
  br i1 %i.eg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eh = zext nneg i8 %i.ee to i64
  %i.ei = getelementptr inbounds nuw i8, ptr @_ZL16first_row_filter, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0257.in = phi i8 [ %i.ej, %bb.p ], [ %i.ee, %bb.o ]
  switch i8 %.0257.in, label %.loopexit348 [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.t
  ]

.preheader356:                                    ; preds = %bb.q
  br i1 %i.az, label %iter.check714, label %.preheader354

iter.check714:                                    ; preds = %.preheader356
  %i.ek = sub nsw i64 %i.ds, %i.cv
  %diff.check696 = icmp ult i64 %i.ek, 32
  %or.cond764 = select i1 %min.iters.check698, i1 true, i1 %diff.check696
  br i1 %or.cond764, label %.lr.ph360.preheader, label %vector.main.loop.iter.check699

vector.main.loop.iter.check699:                   ; preds = %iter.check714
  br i1 %min.iters.check700, label %vec.epilog.ph718, label %vector.body704

vector.body704:                                   ; preds = %vector.main.loop.iter.check699, %vector.body704
  %index705 = phi i64 [ %index.next710, %vector.body704 ], [ 0, %vector.main.loop.iter.check699 ] ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 %index705 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load706 = load <16 x i8>, ptr %i.el, align 1
  %wide.load707 = load <16 x i8>, ptr %i.em, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.dy, i64 %index705 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load708 = load <16 x i8>, ptr %i.en, align 1
  %wide.load709 = load <16 x i8>, ptr %i.eo, align 1
  %i.ep = add <16 x i8> %wide.load708, %wide.load706
  %i.eq = add <16 x i8> %wide.load709, %wide.load707
  %i.er = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index705 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <16 x i8> %i.ep, ptr %i.er, align 1
  store <16 x i8> %i.eq, ptr %i.es, align 1
  %index.next710 = add nuw i64 %index705, 32      ; 2 uses
  %i.et = icmp eq i64 %index.next710, %n.vec703
  br i1 %i.et, label %middle.block711, label %vector.body704, !llvm.loop !192

middle.block711:                                  ; preds = %vector.body704
  br i1 %cmp.n712, label %.preheader354, label %vec.epilog.iter.check716

vec.epilog.iter.check716:                         ; preds = %middle.block711
  br i1 %min.epilog.iters.check717, label %.lr.ph360.preheader, label %vec.epilog.ph718, !prof !54

vec.epilog.ph718:                                 ; preds = %vector.main.loop.iter.check699, %vec.epilog.iter.check716
  %vec.epilog.resume.val713 = phi i64 [ %n.vec703, %vec.epilog.iter.check716 ], [ 0, %vector.main.loop.iter.check699 ]
  br label %vec.epilog.vector.body721

vec.epilog.vector.body721:                        ; preds = %vec.epilog.vector.body721, %vec.epilog.ph718
  %index722 = phi i64 [ %vec.epilog.resume.val713, %vec.epilog.ph718 ], [ %index.next725, %vec.epilog.vector.body721 ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ed, i64 %index722
  %wide.load723 = load <4 x i8>, ptr %i.eu, align 1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dy, i64 %index722
  %wide.load724 = load <4 x i8>, ptr %i.ev, align 1
  %i.ew = add <4 x i8> %wide.load724, %wide.load723
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index722
  store <4 x i8> %i.ew, ptr %i.ex, align 1
  %index.next725 = add nuw i64 %index722, 4       ; 2 uses
  %i.ey = icmp eq i64 %index.next725, %n.vec720
  br i1 %i.ey, label %vec.epilog.middle.block726, label %vec.epilog.vector.body721, !llvm.loop !193

vec.epilog.middle.block726:                       ; preds = %vec.epilog.vector.body721
  br i1 %cmp.n727, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check714, %vec.epilog.iter.check716, %vec.epilog.middle.block726
  %indvars.iv421.ph = phi i64 [ 0, %iter.check714 ], [ %n.vec703, %vec.epilog.iter.check716 ], [ %n.vec720, %vec.epilog.middle.block726 ] ; 3 uses
  br i1 %lcmp.mod784.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv421.prol
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv421.prol
  %i.fc = load i8, ptr %i.fb, align 1
  %.narrow286.prol = add i8 %i.fc, %i.fa
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.fd, align 1
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter783
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !194

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.fe = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.ff = icmp ugt i64 %i.fe, -4
  br i1 %i.ff, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.q
  br i1 %i.az, label %iter.check639, label %.preheader351

iter.check639:                                    ; preds = %.preheader353
  %i.fg = sub nsw i64 %i.ds, %i.df
  %diff.check621 = icmp ult i64 %i.fg, 32
  %or.cond765 = select i1 %min.iters.check623, i1 true, i1 %diff.check621
  br i1 %or.cond765, label %.lr.ph364.preheader, label %vector.main.loop.iter.check624

vector.main.loop.iter.check624:                   ; preds = %iter.check639
  br i1 %min.iters.check625, label %vec.epilog.ph643, label %vector.body629

vector.body629:                                   ; preds = %vector.main.loop.iter.check624, %vector.body629
  %index630 = phi i64 [ %index.next635, %vector.body629 ], [ 0, %vector.main.loop.iter.check624 ] ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ed, i64 %index630 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %wide.load631 = load <16 x i8>, ptr %i.fh, align 1
  %wide.load632 = load <16 x i8>, ptr %i.fi, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dy, i64 %index630 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
end_hunk_0
