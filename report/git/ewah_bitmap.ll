Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/ewah_bitmap?download=true
inline.NumInlined: 79
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rlw_iterator = type { ptr, i64, i64, i64, %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"i >= self->bit_size\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ewah/ewah_bitmap.c\00", align 1
@__PRETTY_FUNCTION__.ewah_set = private unnamed_addr constant [44 x i8] c"void ewah_set(struct ewah_bitmap *, size_t)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"it->literals < it->lw\00", align 1
@__PRETTY_FUNCTION__.ewah_iterator_next = private unnamed_addr constant [58 x i8] c"int ewah_iterator_next(eword_t *, struct ewah_iterator *)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"it->pointer < it->buffer_size\00", align 1
@bitmap_pool_size = internal unnamed_addr global i64 0, align 8
@bitmap_pool = internal unnamed_addr global [16 x ptr] zeroinitializer, align 16
@__PRETTY_FUNCTION__.add_empty_word = private unnamed_addr constant [49 x i8] c"size_t add_empty_word(struct ewah_bitmap *, int)\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"rlw_get_running_len(self->rlw) == 0\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"rlw_get_run_bit(self->rlw) == 0\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"rlw_get_literal_words(self->rlw) == 0\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"size_t overflow: %lu * %lu\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i64 @ewah_add_empty_words(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = shl i64 %2, 6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = add i64 %i.d, %i.b
  store i64 %i.e, ptr %i.c, align 8, !tbaa !16
  %i.f = tail call fastcc i64 @add_empty_words(ptr noundef %0, i32 noundef %1, i64 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @add_empty_words(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %.val47 = load i64, ptr %i.b, align 8, !tbaa !18 ; 6 uses
  %i.c = trunc i64 %.val47 to i32
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, %1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %.val47, 1
  %i.f = and i64 %i.e, 4294967295
  %i.g = lshr i64 %.val47, 33
  %i.h = or i64 %i.f, %i.g
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %.thread75

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ne i32 %1, 0
  %i.j = and i64 %.val47, -2
  %masksel.i = zext i1 %.not.i to i64
  %storemerge.i = or disjoint i64 %i.j, %masksel.i ; 2 uses
  store i64 %storemerge.i, ptr %i.b, align 8, !tbaa !18
  br label %buffer_push_rlw.exit._crit_edge

bb.d:                                             ; preds = %bb.a
  %.not41 = icmp ult i64 %.val47, 8589934592
  br i1 %.not41, label %buffer_push_rlw.exit._crit_edge, label %.thread75

.thread75:                                        ; preds = %bb.b, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19   ; 2 uses
  %i.m = add i64 %i.l, 1                          ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %i.q = icmp ugt i64 %i.m, %i.p
  br i1 %i.q, label %bb.e, label %buffer_push_rlw.exit

bb.e:                                             ; preds = %.thread75
  %i.r = mul i64 %i.p, 3
  %i.s = add i64 %i.r, 48
  %i.t = lshr i64 %i.s, 1
  %..i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.m) ; 4 uses
  store i64 %..i.i.i, ptr %i.o, align 8, !tbaa !21
  %mul.ov.i.i.i.i = icmp ugt i64 %..i.i.i, 2305843009213693951
  br i1 %mul.ov.i.i.i.i, label %bb.f, label %st_mult.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.11, i64 noundef 8, i64 noundef %..i.i.i) #12
  unreachable

st_mult.exit.i.i.i:                               ; preds = %bb.e
  %i.u = shl nuw i64 %..i.i.i, 3
  %i.v = tail call ptr @xrealloc(ptr noundef %i.n, i64 noundef %i.u) #13 ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !20
  %.pre.i.i = load i64, ptr %i.k, align 8, !tbaa !19 ; 2 uses
  %.pre4.i.i = add i64 %.pre.i.i, 1
  br label %buffer_push_rlw.exit

buffer_push_rlw.exit:                             ; preds = %.thread75, %st_mult.exit.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.m, %.thread75 ], [ %.pre4.i.i, %st_mult.exit.i.i.i ]
  %i.w = phi i64 [ %i.l, %.thread75 ], [ %.pre.i.i, %st_mult.exit.i.i.i ]
  %i.x = phi ptr [ %i.n, %.thread75 ], [ %i.v, %st_mult.exit.i.i.i ] ; 2 uses
  store i64 %.pre-phi.i.i, ptr %i.k, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  store i64 0, ptr %i.y, align 8, !tbaa !18
  %i.z = load i64, ptr %i.k, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 5 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !17
  %.not43 = icmp eq i32 %1, 0
  %.val48.pre = load i64, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  br i1 %.not43, label %buffer_push_rlw.exit._crit_edge, label %bb.g

bb.g:                                             ; preds = %buffer_push_rlw.exit
  %storemerge.i53 = or i64 %.val48.pre, 1         ; 2 uses
  store i64 %storemerge.i53, ptr %i.ab, align 8, !tbaa !18
  br label %buffer_push_rlw.exit._crit_edge

buffer_push_rlw.exit._crit_edge:                  ; preds = %buffer_push_rlw.exit, %bb.d, %bb.g, %bb.c
  %.val48 = phi i64 [ %storemerge.i, %bb.c ], [ %.val47, %bb.d ], [ %storemerge.i53, %bb.g ], [ %.val48.pre, %buffer_push_rlw.exit ] ; 2 uses
  %i.ac = phi ptr [ %i.b, %bb.c ], [ %i.b, %bb.d ], [ %i.ab, %bb.g ], [ %i.ab, %buffer_push_rlw.exit ]
  %.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ 1, %bb.g ], [ 1, %buffer_push_rlw.exit ] ; 3 uses
  %i.ad = lshr i64 %.val48, 1
  %i.ae = and i64 %i.ad, 4294967295               ; 2 uses
  %i.af = xor i64 %i.ae, 4294967295
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 range(i64 -2147483648, 4294967296) %i.af) ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, %i.ae
  %i.ai = or i64 %.val48, 8589934590
  %i.aj = shl nuw nsw i64 %i.ah, 1
  %i.ak = or i64 %i.aj, -8589934591
  %i.al = and i64 %i.ak, %i.ai
  store i64 %i.al, ptr %i.ac, align 8, !tbaa !18
  %i.am = sub nuw i64 %2, %i.ag                   ; 4 uses
  %i.an = icmp ugt i64 %i.am, 4294967294
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %buffer_push_rlw.exit._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not46 = icmp eq i32 %1, 0
  %.pre90.a = load ptr, ptr %0, align 8, !tbaa !20 ; 2 uses
  br i1 %.not46, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %buffer_push_rlw.exit60.us
  %i.aq = phi ptr [ %i.ba, %buffer_push_rlw.exit60.us ], [ %.pre90.a, %.lr.ph ] ; 2 uses
  %.179.us = phi i64 [ %i.bg, %buffer_push_rlw.exit60.us ], [ %.0, %.lr.ph ]
  %.03778.us = phi i64 [ %i.bj, %buffer_push_rlw.exit60.us ], [ %i.am, %.lr.ph ]
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %i.as = add i64 %i.ar, 1                        ; 3 uses
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !21 ; 2 uses
  %i.au = icmp ugt i64 %i.as, %i.at
  br i1 %i.au, label %bb.h, label %buffer_push_rlw.exit60.us

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.av = mul i64 %i.at, 3
  %i.aw = add i64 %i.av, 48
  %i.ax = lshr i64 %i.aw, 1
  %..i.i.i55.us = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.as) ; 4 uses
  store i64 %..i.i.i55.us, ptr %i.ap, align 8, !tbaa !21
  %mul.ov.i.i.i.i56.us = icmp ugt i64 %..i.i.i55.us, 2305843009213693951
  br i1 %mul.ov.i.i.i.i56.us, label %.split.us, label %st_mult.exit.i.i.i57.us

st_mult.exit.i.i.i57.us:                          ; preds = %bb.h
  %i.ay = shl nuw i64 %..i.i.i55.us, 3
  %i.az = tail call ptr @xrealloc(ptr noundef %i.aq, i64 noundef %i.ay) #13 ; 2 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !20
  %.pre.i.i58.us = load i64, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %.pre4.i.i59.us = add i64 %.pre.i.i58.us, 1
  br label %buffer_push_rlw.exit60.us

buffer_push_rlw.exit60.us:                        ; preds = %st_mult.exit.i.i.i57.us, %.lr.ph.split.us
  %i.ba = phi ptr [ %i.aq, %.lr.ph.split.us ], [ %i.az, %st_mult.exit.i.i.i57.us ] ; 3 uses
  %.pre-phi.i.i54.us = phi i64 [ %i.as, %.lr.ph.split.us ], [ %.pre4.i.i59.us, %st_mult.exit.i.i.i57.us ]
  %i.bb = phi i64 [ %i.ar, %.lr.ph.split.us ], [ %.pre.i.i58.us, %st_mult.exit.i.i.i57.us ]
  store i64 %.pre-phi.i.i54.us, ptr %i.ao, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  store i64 0, ptr %i.bc, align 8, !tbaa !18
  %i.bd = load i64, ptr %i.ao, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8 ; 3 uses
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !17
  %i.bg = add nuw nsw i64 %.179.us, 1             ; 2 uses
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !18
  %i.bi = or i64 %i.bh, 8589934590
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !18
  %i.bj = add i64 %.03778.us, -4294967295         ; 3 uses
  %3 = icmp ugt i64 %i.bj, 4294967294
  br i1 %3, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !36

.lr.ph.split:                                     ; preds = %.lr.ph, %buffer_push_rlw.exit60
  %i.bk = phi ptr [ %i.bu, %buffer_push_rlw.exit60 ], [ %.pre90.a, %.lr.ph ] ; 2 uses
  %.179 = phi i64 [ %i.ca, %buffer_push_rlw.exit60 ], [ %.0, %.lr.ph ]
  %.03778 = phi i64 [ %i.cd, %buffer_push_rlw.exit60 ], [ %i.am, %.lr.ph ]
  %i.bl = load i64, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %i.bm = add i64 %i.bl, 1                        ; 3 uses
  %i.bn = load i64, ptr %i.ap, align 8, !tbaa !21 ; 2 uses
  %i.bo = icmp ugt i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.i, label %buffer_push_rlw.exit60

bb.i:                                             ; preds = %.lr.ph.split
  %i.bp = mul i64 %i.bn, 3
  %i.bq = add i64 %i.bp, 48
  %i.br = lshr i64 %i.bq, 1
  %..i.i.i55 = tail call i64 @llvm.umax.i64(i64 %i.br, i64 %i.bm) ; 4 uses
  store i64 %..i.i.i55, ptr %i.ap, align 8, !tbaa !21
  %mul.ov.i.i.i.i56 = icmp ugt i64 %..i.i.i55, 2305843009213693951
  br i1 %mul.ov.i.i.i.i56, label %.split.us, label %st_mult.exit.i.i.i57

.split.us:                                        ; preds = %bb.i, %bb.h
  %.us-phi = phi i64 [ %..i.i.i55.us, %bb.h ], [ %..i.i.i55, %bb.i ]
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.11, i64 noundef 8, i64 noundef %.us-phi) #12
  unreachable

st_mult.exit.i.i.i57:                             ; preds = %bb.i
  %i.bs = shl nuw i64 %..i.i.i55, 3
  %i.bt = tail call ptr @xrealloc(ptr noundef %i.bk, i64 noundef %i.bs) #13 ; 2 uses
  store ptr %i.bt, ptr %0, align 8, !tbaa !20
  %.pre.i.i58 = load i64, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %.pre4.i.i59 = add i64 %.pre.i.i58, 1
  br label %buffer_push_rlw.exit60

buffer_push_rlw.exit60:                           ; preds = %.lr.ph.split, %st_mult.exit.i.i.i57
  %i.bu = phi ptr [ %i.bk, %.lr.ph.split ], [ %i.bt, %st_mult.exit.i.i.i57 ] ; 3 uses
  %.pre-phi.i.i54 = phi i64 [ %i.bm, %.lr.ph.split ], [ %.pre4.i.i59, %st_mult.exit.i.i.i57 ]
  %i.bv = phi i64 [ %i.bl, %.lr.ph.split ], [ %.pre.i.i58, %st_mult.exit.i.i.i57 ]
  store i64 %.pre-phi.i.i54, ptr %i.ao, align 8, !tbaa !19
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bv
  store i64 0, ptr %i.bw, align 8, !tbaa !18
  %i.bx = load i64, ptr %i.ao, align 8, !tbaa !19
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -8 ; 3 uses
  store ptr %i.bz, ptr %i.a, align 8, !tbaa !17
  %i.ca = add nuw nsw i64 %.179, 1                ; 2 uses
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !18
  %i.cc = or i64 %i.cb, 8589934591
  store i64 %i.cc, ptr %i.bz, align 8, !tbaa !18
  %i.cd = add i64 %.03778, -4294967295            ; 3 uses
  %4 = icmp ugt i64 %i.cd, 4294967294
  br i1 %4, label %.lr.ph.split, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %buffer_push_rlw.exit60, %buffer_push_rlw.exit60.us, %buffer_push_rlw.exit._crit_edge
  %.037.lcssa = phi i64 [ %i.am, %buffer_push_rlw.exit._crit_edge ], [ %i.bj, %buffer_push_rlw.exit60.us ], [ %i.cd, %buffer_push_rlw.exit60 ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0, %buffer_push_rlw.exit._crit_edge ], [ %i.bg, %buffer_push_rlw.exit60.us ], [ %i.ca, %buffer_push_rlw.exit60 ] ; 2 uses
  %.not44 = icmp eq i64 %.037.lcssa, 0
  br i1 %.not44, label %bb.m, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !19 ; 2 uses
  %i.cg = add i64 %i.cf, 1                        ; 3 uses
  %i.ch = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !21 ; 2 uses
  %i.ck = icmp ugt i64 %i.cg, %i.cj
  br i1 %i.ck, label %bb.k, label %buffer_push_rlw.exit70

bb.k:                                             ; preds = %bb.j
  %i.cl = mul i64 %i.cj, 3
  %i.cm = add i64 %i.cl, 48
  %i.cn = lshr i64 %i.cm, 1
  %..i.i.i65 = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.cg) ; 4 uses
  store i64 %..i.i.i65, ptr %i.ci, align 8, !tbaa !21
  %mul.ov.i.i.i.i66 = icmp ugt i64 %..i.i.i65, 2305843009213693951
  br i1 %mul.ov.i.i.i.i66, label %bb.l, label %st_mult.exit.i.i.i67

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.11, i64 noundef 8, i64 noundef %..i.i.i65) #12
  unreachable

st_mult.exit.i.i.i67:                             ; preds = %bb.k
  %i.co = shl nuw i64 %..i.i.i65, 3
  %i.cp = tail call ptr @xrealloc(ptr noundef %i.ch, i64 noundef %i.co) #13 ; 2 uses
  store ptr %i.cp, ptr %0, align 8, !tbaa !20
  %.pre.i.i68 = load i64, ptr %i.ce, align 8, !tbaa !19 ; 2 uses
  %.pre4.i.i69 = add i64 %.pre.i.i68, 1
  br label %buffer_push_rlw.exit70

buffer_push_rlw.exit70:                           ; preds = %bb.j, %st_mult.exit.i.i.i67
  %.pre-phi.i.i64 = phi i64 [ %i.cg, %bb.j ], [ %.pre4.i.i69, %st_mult.exit.i.i.i67 ]
  %i.cq = phi i64 [ %i.cf, %bb.j ], [ %.pre.i.i68, %st_mult.exit.i.i.i67 ]
  %i.cr = phi ptr [ %i.ch, %bb.j ], [ %i.cp, %st_mult.exit.i.i.i67 ] ; 2 uses
  store i64 %.pre-phi.i.i64, ptr %i.ce, align 8, !tbaa !19
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq
  store i64 0, ptr %i.cs, align 8, !tbaa !18
  %i.ct = load i64, ptr %i.ce, align 8, !tbaa !19
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -8 ; 3 uses
  store ptr %i.cv, ptr %i.a, align 8, !tbaa !17
  %i.cw = add i64 %.1.lcssa, 1
  %.not45 = icmp ne i32 %1, 0
  %.pre91 = load i64, ptr %i.cv, align 8, !tbaa !18
  %storemerge.i73 = zext i1 %.not45 to i64
  %spec.select = or i64 %.pre91, %storemerge.i73
  %i.cx = or i64 %spec.select, 8589934590
  %i.cy = shl nuw nsw i64 %.037.lcssa, 1
  %i.cz = or disjoint i64 %i.cy, -8589934591
  %i.da = and i64 %i.cx, %i.cz
  store i64 %i.da, ptr %i.cv, align 8, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %buffer_push_rlw.exit70, %._crit_edge
  %.2 = phi i64 [ %i.cw, %buffer_push_rlw.exit70 ], [ %.1.lcssa, %._crit_edge ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define dso_local void @ewah_add_dirty_words(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not = icmp eq i32 %3, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !17
  %.pre36 = load ptr, ptr %0, align 8, !tbaa !20
  br label %bb.b

bb.b:                                             ; preds = %buffer_push_rlw.exit, %bb.a
  %i.e = phi ptr [ %.pre36, %bb.a ], [ %i.bt, %buffer_push_rlw.exit ] ; 3 uses
  %i.f = phi ptr [ %.pre, %bb.a ], [ %i.bx, %buffer_push_rlw.exit ] ; 3 uses
  %.032 = phi i64 [ %2, %bb.a ], [ %i.bg, %buffer_push_rlw.exit ] ; 2 uses
  %.031 = phi ptr [ %1, %bb.a ], [ %i.by, %buffer_push_rlw.exit ] ; 5 uses
  %.val = load i64, ptr %i.f, align 8, !tbaa !18  ; 2 uses
  %i.g = lshr i64 %.val, 33                       ; 2 uses
  %i.h = xor i64 %i.g, 2147483647
  %i.i = tail call noundef i64 @llvm.umin.i64(i64 %.032, i64 range(i64 -2147483648, 4294967296) %i.h) ; 12 uses
  %i.j = add nuw nsw i64 %i.i, %i.g
  %i.k = or i64 %.val, -8589934592
  %i.l = shl i64 %i.j, 33
  %i.m = or disjoint i64 %i.l, 8589934591
  %i.n = and i64 %i.m, %i.k
  store i64 %i.n, ptr %i.f, align 8, !tbaa !18
  %i.o = load i64, ptr %i.b, align 8, !tbaa !19
  %i.p = add i64 %i.i, %i.o                       ; 2 uses
  %i.q = load i64, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.r = icmp ugt i64 %i.p, %i.q
  br i1 %i.r, label %bb.c, label %buffer_grow.exit

bb.c:                                             ; preds = %bb.b
  %i.s = mul i64 %i.q, 3
  %i.t = add i64 %i.s, 48
  %i.u = lshr i64 %i.t, 1
  %..i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.p) ; 4 uses
  store i64 %..i, ptr %i.c, align 8, !tbaa !21
  %mul.ov.i.i = icmp ugt i64 %..i, 2305843009213693951
  br i1 %mul.ov.i.i, label %bb.d, label %st_mult.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.11, i64 noundef 8, i64 noundef %..i) #12
  unreachable

st_mult.exit.i:                                   ; preds = %bb.c
  %i.v = shl nuw i64 %..i, 3
  %i.w = tail call ptr @xrealloc(ptr noundef %i.e, i64 noundef %i.v) #13 ; 2 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !20
  br label %buffer_grow.exit

buffer_grow.exit:                                 ; preds = %bb.b, %st_mult.exit.i
  %i.x = phi ptr [ %i.w, %st_mult.exit.i ], [ %i.e, %bb.b ] ; 5 uses
  %i.y = ptrtoint ptr %i.f to i64
  %i.z = ptrtoint ptr %i.e to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ab
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !17
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %buffer_grow.exit
  %.not35 = icmp eq i64 %i.i, 0
  br i1 %.not35, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %i.i, 1
  %i.ad = icmp eq i64 %i.i, 1
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.i, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.034 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.031, i64 %.034
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !18
  %i.ag = xor i64 %i.af, -1
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ah
  store i64 %i.ag, ptr %i.aj, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.031, i64 %.034
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !18
  %i.an = xor i64 %i.am, -1
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.b, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ao
  store i64 %i.an, ptr %i.aq, align 8, !tbaa !18
  %i.ar = add nuw nsw i64 %.034, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !37

bb.e:                                             ; preds = %buffer_grow.exit
  %i.as = load i64, ptr %i.b, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.as
  %i.au = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.at, ptr align 8 %.031, i64 %i.au, i1 false)
  %i.av = load i64, ptr %i.b, align 8, !tbaa !19
  %i.aw = add i64 %i.av, %i.i
  store i64 %i.aw, ptr %i.b, align 8, !tbaa !19
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.034.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ar, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod42 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.031, i64 %.034.epil.init
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !18
  %i.az = xor i64 %i.ay, -1
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.b, align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ba
  store i64 %i.az, ptr %i.bc, align 8, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.e
  %i.bd = shl nuw nsw i64 %i.i, 6
  %i.be = load i64, ptr %i.d, align 8, !tbaa !16
  %i.bf = add i64 %i.be, %i.bd
  store i64 %i.bf, ptr %i.d, align 8, !tbaa !16
  %i.bg = sub nuw i64 %.032, %i.i                 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.bj = add i64 %i.bi, 1                        ; 3 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.bl = load i64, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %i.bm = icmp ugt i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.g, label %buffer_push_rlw.exit

bb.g:                                             ; preds = %bb.f
  %i.bn = mul i64 %i.bl, 3
  %i.bo = add i64 %i.bn, 48
  %i.bp = lshr i64 %i.bo, 1
  %..i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %i.bj) ; 4 uses
  store i64 %..i.i.i, ptr %i.c, align 8, !tbaa !21
  %mul.ov.i.i.i.i = icmp ugt i64 %..i.i.i, 2305843009213693951
  br i1 %mul.ov.i.i.i.i, label %bb.h, label %st_mult.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.11, i64 noundef 8, i64 noundef %..i.i.i) #12
  unreachable

st_mult.exit.i.i.i:                               ; preds = %bb.g
  %i.bq = shl nuw i64 %..i.i.i, 3
  %i.br = tail call ptr @xrealloc(ptr noundef %i.bk, i64 noundef %i.bq) #13 ; 2 uses
  store ptr %i.br, ptr %0, align 8, !tbaa !20
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  %.pre4.i.i = add i64 %.pre.i.i, 1
  br label %buffer_push_rlw.exit

buffer_push_rlw.exit:                             ; preds = %bb.f, %st_mult.exit.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.bj, %bb.f ], [ %.pre4.i.i, %st_mult.exit.i.i.i ]
  %i.bs = phi i64 [ %i.bi, %bb.f ], [ %.pre.i.i, %st_mult.exit.i.i.i ]
  %i.bt = phi ptr [ %i.bk, %bb.f ], [ %i.br, %st_mult.exit.i.i.i ] ; 3 uses
  store i64 %.pre-phi.i.i, ptr %i.b, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  store i64 0, ptr %i.bu, align 8, !tbaa !18
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !19
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -8 ; 2 uses
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !17
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.031, i64 %i.i
  br label %bb.b

bb.i:                                             ; preds = %.loopexit
  ret void
}

end_hunk_0
