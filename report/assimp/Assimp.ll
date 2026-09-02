Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Assimp?download=true
inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZL15stbi__de_iphoneP9stbi__png:bb.a
  br label %.lr.ph18.epil

.lr.ph18.epil:                                    ; preds = %.lr.ph18.epil, %.lr.ph18.epil.preheader
  %.04616.epil = phi ptr [ %i.ca, %.lr.ph18.epil ], [ %.04616.epil.init, %.lr.ph18.epil.preheader ] ; 4 uses
  %epil.iter36 = phi i32 [ %epil.iter36.next, %.lr.ph18.epil ], [ 0, %.lr.ph18.epil.preheader ]
  %i.bx = load i8, ptr %.04616.epil, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 2 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1
  store i8 %i.bz, ptr %.04616.epil, align 1
  store i8 %i.bx, ptr %i.by, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 3
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !190

.loopexit.loopexit32.unr-lcssa:                   ; preds = %.lr.ph15
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

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.a, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %bb.d

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.r = mul nuw nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.s) #50 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit.thread, %_ZL17stbi__malloc_mad3iiii.exit
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.v, align 8
  br label %bb.ak

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
  br label %bb.ak

_ZL21stbi__mad3sizes_validiiii.exit._crit_edge:   ; preds = %bb.g, %_ZL21stbi__mul2sizes_validii.exit12.i
  %.pre-phi = phi i32 [ %i.ad, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ 0, %bb.g ]
  %i.ag = add i32 %.pre-phi, 7
  %i.ah = lshr i32 %i.ag, 3                       ; 8 uses
  br i1 %i.k, label %_ZL21stbi__mad2sizes_validiii.exit, label %_ZL21stbi__mul2sizes_validii.exit.i299

_ZL21stbi__mul2sizes_validii.exit.i299:           ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge
  %i.ai = udiv i32 2147483647, %5
  %.not10.i = icmp samesign ugt i32 %i.ah, %i.ai
  br i1 %.not10.i, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %_ZL21stbi__mad2sizes_validiii.exit

_ZL21stbi__mad2sizes_validiii.exit:               ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, %_ZL21stbi__mul2sizes_validii.exit.i299
  %i.aj = mul nuw nsw i32 %i.ah, %5
  %i.ak = xor i32 %i.ah, 2147483647
  %.not330 = icmp sgt i32 %i.aj, %i.ak
  br i1 %.not330, label %_ZL21stbi__mad2sizes_validiii.exit.thread, label %bb.h

_ZL21stbi__mad2sizes_validiii.exit.thread:        ; preds = %_ZL21stbi__mul2sizes_validii.exit.i299, %_ZL21stbi__mad2sizes_validiii.exit
  %i.al = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.al, align 8
  br label %bb.ak

bb.h:                                             ; preds = %_ZL21stbi__mad2sizes_validiii.exit
  %i.am = add nuw nsw i32 %i.ah, 1
  %i.an = mul i32 %i.am, %5
  %i.ao = icmp ult i32 %2, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.ap, align 8
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.aq = shl nuw nsw i32 %i.ah, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.ar) #50 ; 5 uses
  %.not283 = icmp eq ptr %i.as, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.at, align 8
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.au = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.au, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.au, i32 %i.ah, i32 %4
  %i.av = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.aw = sext i32 %spec.select to i64            ; 40 uses
  %i.ax = icmp slt i32 %spec.select, %i.av        ; 4 uses
  %i.ay = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.az = icmp sgt i32 %i.av, 0
  %i.ba = sext i32 %i.av to i64                   ; 13 uses
  %i.bb = icmp eq i32 %6, 8
  %i.bc = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.bd = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.z, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 7 uses
  %i.be = icmp sgt i32 %.030.i305, -1             ; 4 uses
  %i.bf = zext i32 %.030.i305 to i64              ; 17 uses
  %i.bg = zext i32 %i.z to i64
  %i.bh = icmp eq i32 %7, 0
  %i.bi = sext i32 %6 to i64
  %i.bj = getelementptr inbounds i8, ptr @_ZL23stbi__depth_scale_table, i64 %i.bi
  %wide.trip.count460 = zext i32 %5 to i64
  %i.bk = zext nneg i32 %i.ah to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.av to i64     ; 8 uses
  %i.bl = sub nsw i64 %i.ba, %i.aw                ; 28 uses
  %i.bm = add i32 %i.z, -1                        ; 3 uses
  %i.bn = add nuw nsw i64 %i.bf, 1
  %min.iters.check699 = icmp ult i64 %i.bl, 8
  %i.bo = add nsw i64 %i.aw, -1
  %diff.check697 = icmp ult i64 %i.bo, 31
  %or.cond733 = select i1 %min.iters.check699, i1 true, i1 %diff.check697
  %min.iters.check701 = icmp ult i64 %i.bl, 32
  %i.bp = and i64 %i.bl, 24
  %n.vec703 = and i64 %i.bl, -32                  ; 4 uses
  %i.bq = add nsw i64 %n.vec703, %i.aw
  %cmp.n712 = icmp eq i64 %i.bl, %n.vec703
  %min.epilog.iters.check718 = icmp eq i64 %i.bp, 0
  %n.vec720 = and i64 %i.bl, -8                   ; 3 uses
  %i.br = add nsw i64 %n.vec720, %i.aw
  %cmp.n727 = icmp eq i64 %i.bl, %n.vec720
  %i.bs = add nsw i64 %i.ba, -1
  %min.iters.check667 = icmp ult i32 %spec.select, 4
  %min.iters.check669 = icmp ult i32 %spec.select, 32
  %i.bt = and i64 %wide.trip.count424, 28
  %n.vec671 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n680 = icmp eq i64 %n.vec671, %wide.trip.count424
  %min.epilog.iters.check685 = icmp eq i64 %i.bt, 0
  %n.vec687 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec687, %wide.trip.count424
  %xtraiter747 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  %min.iters.check632 = icmp ult i64 %i.bl, 4
  %i.bu = add nsw i64 %i.aw, -1
  %diff.check626 = icmp ult i64 %i.bu, 15
  %min.iters.check634 = icmp ult i64 %i.bl, 16
  %i.bv = and i64 %i.bl, 12
  %n.vec636 = and i64 %i.bl, -16                  ; 4 uses
  %i.bw = add nsw i64 %n.vec636, %i.aw
  %cmp.n645 = icmp eq i64 %i.bl, %n.vec636
  %min.epilog.iters.check651 = icmp eq i64 %i.bv, 0
  %n.vec653 = and i64 %i.bl, -4                   ; 3 uses
  %i.bx = add nsw i64 %n.vec653, %i.aw
  %cmp.n662 = icmp eq i64 %i.bl, %n.vec653
  %min.iters.check596 = icmp ult i32 %spec.select, 4
  %min.iters.check598 = icmp ult i32 %spec.select, 32
  %i.by = and i64 %wide.trip.count424, 28
  %n.vec600 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n609 = icmp eq i64 %n.vec600, %wide.trip.count424
  %min.epilog.iters.check614 = icmp eq i64 %i.by, 0
  %n.vec616 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count424
  %xtraiter749 = and i64 %wide.trip.count424, 1
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  %i.bz = add nsw i64 %wide.trip.count424, -1
  %min.iters.check563 = icmp ult i64 %i.bl, 4
  %i.ca = add nsw i64 %i.aw, -1
  %diff.check561 = icmp ult i64 %i.ca, 15
  %min.iters.check565 = icmp ult i64 %i.bl, 16
  %i.cb = and i64 %i.bl, 12
  %n.vec567 = and i64 %i.bl, -16                  ; 4 uses
  %i.cc = add nsw i64 %n.vec567, %i.aw
  %cmp.n575 = icmp eq i64 %i.bl, %n.vec567
  %min.epilog.iters.check581 = icmp eq i64 %i.cb, 0
  %n.vec583 = and i64 %i.bl, -4                   ; 3 uses
  %i.cd = add nsw i64 %n.vec583, %i.aw
  %cmp.n591 = icmp eq i64 %i.bl, %n.vec583
  %i.ce = add nsw i64 %i.ba, -1
  %min.iters.check530 = icmp ult i32 %i.av, 4
  %min.iters.check532 = icmp ult i32 %i.av, 32
  %i.cf = and i64 %wide.trip.count444, 28
  %n.vec534 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n543 = icmp eq i64 %n.vec534, %wide.trip.count444
  %min.epilog.iters.check548 = icmp eq i64 %i.cf, 0
  %n.vec550 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n557 = icmp eq i64 %n.vec550, %wide.trip.count444
  %xtraiter755 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  %min.iters.check506 = icmp ult i64 %i.bl, 8
  %i.cg = add nsw i64 %i.aw, -1
  %diff.check = icmp ult i64 %i.cg, 31
  %or.cond732 = select i1 %min.iters.check506, i1 true, i1 %diff.check
  %min.iters.check507 = icmp ult i64 %i.bl, 32
  %i.ch = and i64 %i.bl, 24
  %n.vec509 = and i64 %i.bl, -32                  ; 4 uses
  %i.ci = add nsw i64 %n.vec509, %i.aw
  %cmp.n518 = icmp eq i64 %i.bl, %n.vec509
  %min.epilog.iters.check = icmp eq i64 %i.ch, 0
  %n.vec520 = and i64 %i.bl, -8                   ; 3 uses
  %i.cj = add nsw i64 %n.vec520, %i.aw
  %cmp.n525 = icmp eq i64 %i.bl, %n.vec520
  %i.ck = add nsw i64 %i.ba, -1
  %xtraiter761 = and i32 %4, 1
  %i.cl = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod762.not = icmp eq i32 %xtraiter761, 0
  %lcmp.mod763 = trunc i32 %4 to i1
  %xtraiter764 = and i32 %i.z, 3                  ; 3 uses
  %i.cm = icmp ult i32 %i.z, 4
  %unroll_iter767 = and i32 %i.z, -4
  %lcmp.mod765.not = icmp eq i32 %xtraiter764, 0
  %lcmp.mod766 = icmp ne i32 %xtraiter764, 0
  %i.cn = and i64 %i.bf, 1
  %lcmp.mod770.not.not = icmp eq i64 %i.cn, 0
  %i.co = shl nuw nsw i64 %i.bf, 2
  %i.cp = mul nuw nsw i64 %i.bf, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bf, -1
  %i.cq = icmp eq i32 %.030.i305, 0
  %8 = add nuw nsw i64 %i.bf, 1                   ; 2 uses
  %min.iters.check = icmp ult i32 %.030.i305, 7
  %n.vec = and i64 %8, 4294967288                 ; 3 uses
  %i.cr = sub nsw i64 %i.bf, %n.vec
  %cmp.n = icmp eq i64 %8, %n.vec
  %xtraiter772 = and i32 %i.z, 1
  %i.cs = icmp eq i32 %i.bm, 0
  %unroll_iter776 = and i32 %i.z, -2
  %lcmp.mod774.not = icmp eq i32 %xtraiter772, 0
  %lcmp.mod775 = trunc i32 %i.z to i1
  %xtraiter778 = and i32 %i.z, 1
  %i.ct = icmp eq i32 %i.bm, 0
  %unroll_iter782 = and i32 %i.z, -2
  %lcmp.mod780.not = icmp eq i32 %xtraiter778, 0
  %lcmp.mod781 = trunc i32 %i.z to i1
  %xtraiter784 = and i32 %i.z, 1
  %i.cu = icmp eq i32 %i.bm, 0
  %unroll_iter788 = and i32 %i.z, -2
  %lcmp.mod786.not = icmp eq i32 %xtraiter784, 0
  %lcmp.mod787 = trunc i32 %i.z to i1
  %i.cv = and i64 %i.bf, 1
  %lcmp.mod791.not.not = icmp eq i64 %i.cv, 0
  %i.cw = shl nuw nsw i64 %i.bf, 2
  %i.cx = mul nuw nsw i64 %i.bf, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bf, -1
  %i.cy = icmp eq i32 %.030.i305, 0
  %xtraiter793 = and i64 %i.bn, 3                 ; 2 uses
  %lcmp.mod794.not = icmp eq i64 %xtraiter793, 0
  %i.cz = icmp ult i32 %.030.i305, 3
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 4 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.qj, %.loopexit ] ; 2 uses
  %i.da = trunc i64 %indvars.iv457 to i32         ; 2 uses
  %i.db = trunc i64 %indvars.iv457 to i1
  %i.dc = select i1 %i.db, i64 %i.bk, i64 0       ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dc ; 75 uses
  %i.de = and i32 %i.da, 1
  %i.df = xor i32 %i.de, 1
  %i.dg = mul nuw nsw i32 %i.df, %i.ah
  %i.dh = zext nneg i32 %i.dg to i64              ; 7 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dh ; 30 uses
  %i.dj = load ptr, ptr %i.u, align 8
  %i.dk = mul i32 %i.e, %i.da
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dl ; 33 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.do = load i8, ptr %.0272398, align 1         ; 3 uses
  %i.dp = icmp ugt i8 %i.do, 4
  br i1 %i.dp, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = icmp eq i64 %indvars.iv457, 0
  br i1 %i.dq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dr = zext nneg i8 %i.do to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @_ZL16first_row_filter, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.dt, %bb.o ], [ %i.do, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

.preheader356:                                    ; preds = %bb.p
  br i1 %i.ay, label %iter.check682, label %.preheader354

iter.check682:                                    ; preds = %.preheader356
  %i.du = sub nsw i64 %i.dh, %i.dc
  %diff.check665 = icmp ugt i64 %i.du, -32
  %or.cond729 = select i1 %min.iters.check667, i1 true, i1 %diff.check665
  br i1 %or.cond729, label %.lr.ph360.preheader, label %vector.main.loop.iter.check668

vector.main.loop.iter.check668:                   ; preds = %iter.check682
  br i1 %min.iters.check669, label %vec.epilog.ph686, label %vector.body672

vector.body672:                                   ; preds = %vector.main.loop.iter.check668, %vector.body672
  %index673 = phi i64 [ %index.next678, %vector.body672 ], [ 0, %vector.main.loop.iter.check668 ] ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index673 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load674 = load <16 x i8>, ptr %i.dv, align 1
  %wide.load675 = load <16 x i8>, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 %index673 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load676 = load <16 x i8>, ptr %i.dx, align 1
  %wide.load677 = load <16 x i8>, ptr %i.dy, align 1
  %i.dz = add <16 x i8> %wide.load676, %wide.load674
  %i.ea = add <16 x i8> %wide.load677, %wide.load675
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dd, i64 %index673 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <16 x i8> %i.dz, ptr %i.eb, align 1
  store <16 x i8> %i.ea, ptr %i.ec, align 1
  %index.next678 = add nuw i64 %index673, 32      ; 2 uses
  %i.ed = icmp eq i64 %index.next678, %n.vec671
  br i1 %i.ed, label %middle.block679, label %vector.body672, !llvm.loop !192

middle.block679:                                  ; preds = %vector.body672
  br i1 %cmp.n680, label %.preheader354, label %vec.epilog.iter.check684

vec.epilog.iter.check684:                         ; preds = %middle.block679
  br i1 %min.epilog.iters.check685, label %.lr.ph360.preheader, label %vec.epilog.ph686, !prof !18

vec.epilog.ph686:                                 ; preds = %vector.main.loop.iter.check668, %vec.epilog.iter.check684
  %vec.epilog.resume.val681 = phi i64 [ %n.vec671, %vec.epilog.iter.check684 ], [ 0, %vector.main.loop.iter.check668 ]
  br label %vec.epilog.vector.body688

vec.epilog.vector.body688:                        ; preds = %vec.epilog.vector.body688, %vec.epilog.ph686
  %index689 = phi i64 [ %vec.epilog.resume.val681, %vec.epilog.ph686 ], [ %index.next692, %vec.epilog.vector.body688 ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index689
  %wide.load690 = load <4 x i8>, ptr %i.ee, align 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.di, i64 %index689
  %wide.load691 = load <4 x i8>, ptr %i.ef, align 1
  %i.eg = add <4 x i8> %wide.load691, %wide.load690
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %index689
  store <4 x i8> %i.eg, ptr %i.eh, align 1
  %index.next692 = add nuw i64 %index689, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next692, %n.vec687
  br i1 %i.ei, label %vec.epilog.middle.block693, label %vec.epilog.vector.body688, !llvm.loop !193

vec.epilog.middle.block693:                       ; preds = %vec.epilog.vector.body688
  br i1 %cmp.n694, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check682, %vec.epilog.iter.check684, %vec.epilog.middle.block693
  %indvars.iv421.ph = phi i64 [ 0, %iter.check682 ], [ %n.vec671, %vec.epilog.iter.check684 ], [ %n.vec687, %vec.epilog.middle.block693 ] ; 3 uses
  br i1 %lcmp.mod748.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv421.prol
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv421.prol
  %i.em = load i8, ptr %i.el, align 1
  %.narrow286.prol = add i8 %i.em, %i.ek
  %i.en = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.en, align 1
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter747
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !194

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.eo = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.ep = icmp ugt i64 %i.eo, -4
  br i1 %i.ep, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.p
  br i1 %i.ay, label %iter.check611, label %.preheader351

iter.check611:                                    ; preds = %.preheader353
  %i.eq = sub nsw i64 %i.dh, %i.dc
  %diff.check594 = icmp ugt i64 %i.eq, -32
  %or.cond730 = select i1 %min.iters.check596, i1 true, i1 %diff.check594
  br i1 %or.cond730, label %.lr.ph364.preheader, label %vector.main.loop.iter.check597

vector.main.loop.iter.check597:                   ; preds = %iter.check611
  br i1 %min.iters.check598, label %vec.epilog.ph615, label %vector.body601

vector.body601:                                   ; preds = %vector.main.loop.iter.check597, %vector.body601
  %index602 = phi i64 [ %index.next607, %vector.body601 ], [ 0, %vector.main.loop.iter.check597 ] ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index602 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load603 = load <16 x i8>, ptr %i.er, align 1
  %wide.load604 = load <16 x i8>, ptr %i.es, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.di, i64 %index602 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load605 = load <16 x i8>, ptr %i.et, align 1
  %wide.load606 = load <16 x i8>, ptr %i.eu, align 1
  %i.ev = lshr <16 x i8> %wide.load605, splat (i8 1)
  %i.ew = lshr <16 x i8> %wide.load606, splat (i8 1)
  %i.ex = add <16 x i8> %i.ev, %wide.load603
  %i.ey = add <16 x i8> %i.ew, %wide.load604
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dd, i64 %index602 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <16 x i8> %i.ex, ptr %i.ez, align 1
  store <16 x i8> %i.ey, ptr %i.fa, align 1
  %index.next607 = add nuw i64 %index602, 32      ; 2 uses
  %i.fb = icmp eq i64 %index.next607, %n.vec600
  br i1 %i.fb, label %middle.block608, label %vector.body601, !llvm.loop !195

middle.block608:                                  ; preds = %vector.body601
  br i1 %cmp.n609, label %.preheader351, label %vec.epilog.iter.check613

vec.epilog.iter.check613:                         ; preds = %middle.block608
  br i1 %min.epilog.iters.check614, label %.lr.ph364.preheader, label %vec.epilog.ph615, !prof !18

vec.epilog.ph615:                                 ; preds = %vector.main.loop.iter.check597, %vec.epilog.iter.check613
  %vec.epilog.resume.val610 = phi i64 [ %n.vec600, %vec.epilog.iter.check613 ], [ 0, %vector.main.loop.iter.check597 ]
  br label %vec.epilog.vector.body617

vec.epilog.vector.body617:                        ; preds = %vec.epilog.vector.body617, %vec.epilog.ph615
  %index618 = phi i64 [ %vec.epilog.resume.val610, %vec.epilog.ph615 ], [ %index.next621, %vec.epilog.vector.body617 ] ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index618
  %wide.load619 = load <4 x i8>, ptr %i.fc, align 1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.di, i64 %index618
  %wide.load620 = load <4 x i8>, ptr %i.fd, align 1
  %i.fe = lshr <4 x i8> %wide.load620, splat (i8 1)
  %i.ff = add <4 x i8> %i.fe, %wide.load619
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %index618
  store <4 x i8> %i.ff, ptr %i.fg, align 1
  %index.next621 = add nuw i64 %index618, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next621, %n.vec616
  br i1 %i.fh, label %vec.epilog.middle.block622, label %vec.epilog.vector.body617, !llvm.loop !196

vec.epilog.middle.block622:                       ; preds = %vec.epilog.vector.body617
  br i1 %cmp.n623, label %.preheader351, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %iter.check611, %vec.epilog.iter.check613, %vec.epilog.middle.block622
  %indvars.iv431.ph = phi i64 [ 0, %iter.check611 ], [ %n.vec600, %vec.epilog.iter.check613 ], [ %n.vec616, %vec.epilog.middle.block622 ] ; 6 uses
  br i1 %lcmp.mod750.not, label %.lr.ph364.prol.loopexit, label %.lr.ph364.prol

.lr.ph364.prol:                                   ; preds = %.lr.ph364.preheader
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv431.ph
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv431.ph
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = lshr i8 %i.fl, 1
  %.narrow290.prol = add i8 %i.fm, %i.fj
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv431.ph
end_hunk_0
