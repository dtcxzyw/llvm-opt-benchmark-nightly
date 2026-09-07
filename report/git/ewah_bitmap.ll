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
  %.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ 1, %bb.g ], [ 1, %buffer_push_rlw.exit ] ; 4 uses
  %i.ad = lshr i64 %.val48, 1
  %i.ae = and i64 %i.ad, 4294967295               ; 2 uses
  %i.af = xor i64 %i.ae, 4294967295
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 range(i64 -2147483648, 4294967296) %i.af) ; 3 uses
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
  %i.aq = add i64 %2, -4294967295
  %3 = sub i64 %i.aq, %i.ag
  %i.ar = udiv i64 %3, 4294967295
  %i.as = add nuw nsw i64 %.0, %i.ar              ; 3 uses
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %.pre90 = load ptr, ptr %0, align 8, !tbaa !20  ; 2 uses
  br i1 %.not46, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %buffer_push_rlw.exit60.us
  %i.au = phi ptr [ %i.be, %buffer_push_rlw.exit60.us ], [ %.pre90, %.lr.ph ] ; 2 uses
  %.179.us = phi i64 [ %i.bk, %buffer_push_rlw.exit60.us ], [ %.0, %.lr.ph ] ; 2 uses
  %.03778.us = phi i64 [ %i.bn, %buffer_push_rlw.exit60.us ], [ %i.am, %.lr.ph ]
  %i.av = load i64, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %i.aw = add i64 %i.av, 1                        ; 3 uses
  %i.ax = load i64, ptr %i.ap, align 8, !tbaa !21 ; 2 uses
  %i.ay = icmp ugt i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.h, label %buffer_push_rlw.exit60.us

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.az = mul i64 %i.ax, 3
  %i.ba = add i64 %i.az, 48
  %i.bb = lshr i64 %i.ba, 1
  %..i.i.i55.us = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.aw) ; 4 uses
  store i64 %..i.i.i55.us, ptr %i.ap, align 8, !tbaa !21
  %mul.ov.i.i.i.i56.us = icmp ugt i64 %..i.i.i55.us, 2305843009213693951
  br i1 %mul.ov.i.i.i.i56.us, label %.split.us, label %st_mult.exit.i.i.i57.us

st_mult.exit.i.i.i57.us:                          ; preds = %bb.h
  %i.bc = shl nuw i64 %..i.i.i55.us, 3
  %i.bd = tail call ptr @xrealloc(ptr noundef %i.au, i64 noundef %i.bc) #13 ; 2 uses
  store ptr %i.bd, ptr %0, align 8, !tbaa !20
  %.pre.i.i58.us = load i64, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %.pre4.i.i59.us = add i64 %.pre.i.i58.us, 1
  br label %buffer_push_rlw.exit60.us

buffer_push_rlw.exit60.us:                        ; preds = %st_mult.exit.i.i.i57.us, %.lr.ph.split.us
  %i.be = phi ptr [ %i.au, %.lr.ph.split.us ], [ %i.bd, %st_mult.exit.i.i.i57.us ] ; 3 uses
  %.pre-phi.i.i54.us = phi i64 [ %i.aw, %.lr.ph.split.us ], [ %.pre4.i.i59.us, %st_mult.exit.i.i.i57.us ]
  %i.bf = phi i64 [ %i.av, %.lr.ph.split.us ], [ %.pre.i.i58.us, %st_mult.exit.i.i.i57.us ]
  store i64 %.pre-phi.i.i54.us, ptr %i.ao, align 8, !tbaa !19
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  store i64 0, ptr %i.bg, align 8, !tbaa !18
  %i.bh = load i64, ptr %i.ao, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 3 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !17
  %i.bk = add nuw nsw i64 %.179.us, 1
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !18
  %i.bm = or i64 %i.bl, 8589934590
  store i64 %i.bm, ptr %i.bj, align 8, !tbaa !18
  %i.bn = add i64 %.03778.us, -4294967295         ; 2 uses
  %exitcond88.not = icmp eq i64 %.179.us, %i.as
  br i1 %exitcond88.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !36

.lr.ph.split:                                     ; preds = %.lr.ph, %buffer_push_rlw.exit60
  %i.bo = phi ptr [ %i.by, %buffer_push_rlw.exit60 ], [ %.pre90, %.lr.ph ] ; 2 uses
  %.179 = phi i64 [ %i.ce, %buffer_push_rlw.exit60 ], [ %.0, %.lr.ph ] ; 2 uses
  %.03778 = phi i64 [ %i.ch, %buffer_push_rlw.exit60 ], [ %i.am, %.lr.ph ]
  %i.bp = load i64, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %i.bq = add i64 %i.bp, 1                        ; 3 uses
  %i.br = load i64, ptr %i.ap, align 8, !tbaa !21 ; 2 uses
  %i.bs = icmp ugt i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.i, label %buffer_push_rlw.exit60

bb.i:                                             ; preds = %.lr.ph.split
  %i.bt = mul i64 %i.br, 3
  %i.bu = add i64 %i.bt, 48
  %i.bv = lshr i64 %i.bu, 1
  %..i.i.i55 = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 %i.bq) ; 4 uses
  store i64 %..i.i.i55, ptr %i.ap, align 8, !tbaa !21
  %mul.ov.i.i.i.i56 = icmp ugt i64 %..i.i.i55, 2305843009213693951
  br i1 %mul.ov.i.i.i.i56, label %.split.us, label %st_mult.exit.i.i.i57

.split.us:                                        ; preds = %bb.i, %bb.h
  %.us-phi = phi i64 [ %..i.i.i55.us, %bb.h ], [ %..i.i.i55, %bb.i ]
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.11, i64 noundef 8, i64 noundef %.us-phi) #12
  unreachable

st_mult.exit.i.i.i57:                             ; preds = %bb.i
  %i.bw = shl nuw i64 %..i.i.i55, 3
  %i.bx = tail call ptr @xrealloc(ptr noundef %i.bo, i64 noundef %i.bw) #13 ; 2 uses
  store ptr %i.bx, ptr %0, align 8, !tbaa !20
  %.pre.i.i58 = load i64, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %.pre4.i.i59 = add i64 %.pre.i.i58, 1
  br label %buffer_push_rlw.exit60

buffer_push_rlw.exit60:                           ; preds = %.lr.ph.split, %st_mult.exit.i.i.i57
  %i.by = phi ptr [ %i.bo, %.lr.ph.split ], [ %i.bx, %st_mult.exit.i.i.i57 ] ; 3 uses
  %.pre-phi.i.i54 = phi i64 [ %i.bq, %.lr.ph.split ], [ %.pre4.i.i59, %st_mult.exit.i.i.i57 ]
  %i.bz = phi i64 [ %i.bp, %.lr.ph.split ], [ %.pre.i.i58, %st_mult.exit.i.i.i57 ]
  store i64 %.pre-phi.i.i54, ptr %i.ao, align 8, !tbaa !19
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz
  store i64 0, ptr %i.ca, align 8, !tbaa !18
  %i.cb = load i64, ptr %i.ao, align 8, !tbaa !19
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 3 uses
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !17
  %i.ce = add nuw nsw i64 %.179, 1
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !18
  %i.cg = or i64 %i.cf, 8589934591
  store i64 %i.cg, ptr %i.cd, align 8, !tbaa !18
  %i.ch = add i64 %.03778, -4294967295            ; 2 uses
  %exitcond.not = icmp eq i64 %.179, %i.as
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !36

._crit_edge:                                      ; preds = %buffer_push_rlw.exit60, %buffer_push_rlw.exit60.us, %buffer_push_rlw.exit._crit_edge
  %.037.lcssa = phi i64 [ %i.am, %buffer_push_rlw.exit._crit_edge ], [ %i.bn, %buffer_push_rlw.exit60.us ], [ %i.ch, %buffer_push_rlw.exit60 ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0, %buffer_push_rlw.exit._crit_edge ], [ %i.at, %buffer_push_rlw.exit60.us ], [ %i.at, %buffer_push_rlw.exit60 ] ; 2 uses
  %.not44 = icmp eq i64 %.037.lcssa, 0
  br i1 %.not44, label %bb.m, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !19 ; 2 uses
  %i.ck = add i64 %i.cj, 1                        ; 3 uses
  %i.cl = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !21 ; 2 uses
  %i.co = icmp ugt i64 %i.ck, %i.cn
  br i1 %i.co, label %bb.k, label %buffer_push_rlw.exit70

bb.k:                                             ; preds = %bb.j
  %i.cp = mul i64 %i.cn, 3
  %i.cq = add i64 %i.cp, 48
  %i.cr = lshr i64 %i.cq, 1
  %..i.i.i65 = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.ck) ; 4 uses
  store i64 %..i.i.i65, ptr %i.cm, align 8, !tbaa !21
  %mul.ov.i.i.i.i66 = icmp ugt i64 %..i.i.i65, 2305843009213693951
  br i1 %mul.ov.i.i.i.i66, label %bb.l, label %st_mult.exit.i.i.i67

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.11, i64 noundef 8, i64 noundef %..i.i.i65) #12
  unreachable

st_mult.exit.i.i.i67:                             ; preds = %bb.k
  %i.cs = shl nuw i64 %..i.i.i65, 3
  %i.ct = tail call ptr @xrealloc(ptr noundef %i.cl, i64 noundef %i.cs) #13 ; 2 uses
  store ptr %i.ct, ptr %0, align 8, !tbaa !20
  %.pre.i.i68 = load i64, ptr %i.ci, align 8, !tbaa !19 ; 2 uses
  %.pre4.i.i69 = add i64 %.pre.i.i68, 1
  br label %buffer_push_rlw.exit70

buffer_push_rlw.exit70:                           ; preds = %bb.j, %st_mult.exit.i.i.i67
  %.pre-phi.i.i64 = phi i64 [ %i.ck, %bb.j ], [ %.pre4.i.i69, %st_mult.exit.i.i.i67 ]
  %i.cu = phi i64 [ %i.cj, %bb.j ], [ %.pre.i.i68, %st_mult.exit.i.i.i67 ]
  %i.cv = phi ptr [ %i.cl, %bb.j ], [ %i.ct, %st_mult.exit.i.i.i67 ] ; 2 uses
  store i64 %.pre-phi.i.i64, ptr %i.ci, align 8, !tbaa !19
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cu
  store i64 0, ptr %i.cw, align 8, !tbaa !18
  %i.cx = load i64, ptr %i.ci, align 8, !tbaa !19
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cx
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 3 uses
  store ptr %i.cz, ptr %i.a, align 8, !tbaa !17
  %i.da = add nuw nsw i64 %.1.lcssa, 1
  %.not45 = icmp ne i32 %1, 0
  %.pre91 = load i64, ptr %i.cz, align 8, !tbaa !18
  %storemerge.i73 = zext i1 %.not45 to i64
  %spec.select = or i64 %.pre91, %storemerge.i73
  %i.db = or i64 %spec.select, 8589934590
  %i.dc = shl nuw nsw i64 %.037.lcssa, 1
  %i.dd = or disjoint i64 %i.dc, -8589934591
  %i.de = and i64 %i.db, %i.dd
  store i64 %i.de, ptr %i.cz, align 8, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %buffer_push_rlw.exit70, %._crit_edge
  %.2 = phi i64 [ %i.da, %buffer_push_rlw.exit70 ], [ %.1.lcssa, %._crit_edge ]
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

end_hunk_0
