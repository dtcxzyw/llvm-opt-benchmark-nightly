Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/nghttp2_map?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"@%zu <EMPTY>\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"@%zu key=%d base=%zu distance=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"/opt-bench/work/nghttp2/nghttp2/lib/nghttp2_map.c\00", align 1
@__PRETTY_FUNCTION__.nghttp2_map_insert = private unnamed_addr constant [68 x i8] c"int nghttp2_map_insert(nghttp2_map *, nghttp2_map_key_type, void *)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"idx >= 0\00", align 1
@__PRETTY_FUNCTION__.map_resize = private unnamed_addr constant [38 x i8] c"int map_resize(nghttp2_map *, size_t)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @nghttp2_map_init(ptr nofree noundef writeonly captures(none) initializes((0, 56)) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !25
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @nghttp2_map_free(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @nghttp2_mem_free(ptr noundef %i.b, ptr noundef %i.c) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @nghttp2_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @nghttp2_map_each(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.015 = phi i64 [ 0, %bb.b ], [ %i.p, %bb.e ]   ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.015
  %i.j = load i8, ptr %i.i, align 1, !tbaa !20
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.015
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = tail call i32 %1(ptr noundef %i.n, ptr noundef %2) #12 ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = add i64 %.015, 1                         ; 2 uses
  %.0.highbits = lshr i64 %i.p, %i.e
  %i.q = icmp eq i64 %.0.highbits, 0
  br i1 %i.q, label %bb.c, label %.loopexit, !llvm.loop !26

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.a
  %.013 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ %i.o, %bb.d ]
  ret i32 %.013
}

; Function Attrs: nofree nounwind uwtable
define hidden void @nghttp2_map_print_distance(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.017 = phi i64 [ 0, %bb.b ], [ %i.z, %bb.f ]   ; 5 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.017
  %i.j = load i8, ptr %i.i, align 1, !tbaa !20    ; 2 uses
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !29
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str, i64 noundef %.017) #13 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.017
  %i.p = load i32, ptr %i.o, align 4, !tbaa !23   ; 2 uses
  %.val = load i64, ptr %i.g, align 8, !tbaa !24
  %.val16 = load i64, ptr %i.d, align 8, !tbaa !18
  %i.q = sext i32 %i.p to i64
  %i.r = add i64 %.val, %i.q
  %i.s = mul i64 %i.r, -7170105779041248983
  %i.t = sub i64 64, %.val16
  %i.u = lshr i64 %i.s, %i.t
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !29
  %i.w = zext i8 %i.j to i32
  %i.x = add nsw i32 %i.w, -1
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.1, i64 noundef %.017, i32 noundef %i.p, i64 noundef %i.u, i32 noundef %i.x) #13 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = add i64 %.017, 1                         ; 2 uses
  %.0.highbits = lshr i64 %i.z, %i.e
  %i.aa = icmp eq i64 %.0.highbits, 0
  br i1 %i.aa, label %bb.c, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden i32 @nghttp2_map_insert(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 244, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_map_insert) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 5 uses
  %i.c = shl nuw i64 1, %i.b                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17
  %i.f = add i64 %i.e, 1
  %i.g = lshr i64 %i.c, 3
  %i.h = sub nuw i64 %i.c, %i.g
  %.not29 = icmp ult i64 %i.f, %i.h
  br i1 %.not29, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not30 = icmp eq i64 %i.b, 0
  %i.i = add i64 %i.b, 1
  %spec.select = select i1 %.not30, i64 4, i64 %i.i
  %i.j = tail call fastcc i32 @map_resize(ptr noundef nonnull %0, i64 noundef %spec.select) ; 2 uses
  %.not31 = icmp eq i32 %i.j, 0
  br i1 %.not31, label %bb.e, label %map_insert.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.k, align 8, !tbaa !24
  %.val46.i = load i64, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  %i.l = sext i32 %1 to i64
  %i.m = add i64 %.val.i, %i.l
  %i.n = mul i64 %i.m, -7170105779041248983
  %i.o = sub i64 64, %.val46.i
  %i.p = lshr i64 %i.n, %i.o                      ; 3 uses
  %notmask.i = shl nsw i64 -1, %.val46.i
  %i.q = xor i64 %notmask.i, -1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20    ; 2 uses
  %i.v = icmp eq i8 %i.u, 0
  %.pre66 = load ptr, ptr %0, align 8, !tbaa !16  ; 2 uses
  br i1 %i.v, label %map_insert.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

._crit_edge.loopexit.i:                           ; preds = %bb.i
  %i.x = trunc i64 %i.ao to i8
  br label %map_insert.exit

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %3 = phi ptr [ %.pre66, %.lr.ph.i ], [ %4, %bb.i ] ; 2 uses
  %i.y = phi ptr [ %i.s, %.lr.ph.i ], [ %i.an, %bb.i ]
  %i.z = phi i8 [ %i.u, %.lr.ph.i ], [ %i.as, %bb.i ]
  %.03955.i = phi i32 [ %1, %.lr.ph.i ], [ %.1.i, %bb.i ] ; 3 uses
  %.04054.i = phi ptr [ %2, %.lr.ph.i ], [ %.141.i, %bb.i ] ; 2 uses
  %.04253.i = phi i64 [ 1, %.lr.ph.i ], [ %i.ao, %bb.i ] ; 3 uses
  %.04452.i = phi i64 [ %i.p, %.lr.ph.i ], [ %i.aq, %bb.i ] ; 4 uses
  %i.aa = zext i8 %i.z to i64
  %i.ab = icmp ugt i64 %.04253.i, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.04452.i ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !23 ; 2 uses
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %.03955.i, ptr %i.ac, align 4, !tbaa !23
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.04452.i ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !9
  store ptr %.04054.i, ptr %i.af, align 8, !tbaa !9
  %i.ah = trunc i64 %.04253.i to i8
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.04452.i ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !20
  %i.al = zext i8 %i.ak to i64
  store i8 %i.ah, ptr %i.aj, align 1, !tbaa !20
  %.pre.i = load ptr, ptr %i.r, align 8, !tbaa !19
  %.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.am = icmp eq i32 %i.ad, %.03955.i
  br i1 %i.am, label %map_insert.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %4 = phi ptr [ %.pre, %bb.g ], [ %3, %bb.h ]    ; 2 uses
  %i.an = phi ptr [ %.pre.i, %bb.g ], [ %i.y, %bb.h ] ; 2 uses
  %.143.i = phi i64 [ %i.al, %bb.g ], [ %.04253.i, %bb.h ]
  %.141.i = phi ptr [ %i.ag, %bb.g ], [ %.04054.i, %bb.h ] ; 2 uses
  %.1.i = phi i32 [ %i.ad, %bb.g ], [ %.03955.i, %bb.h ] ; 2 uses
  %i.ao = add nuw nsw i64 %.143.i, 1              ; 2 uses
  %i.ap = add i64 %.04452.i, 1
  %i.aq = and i64 %i.ap, %i.q                     ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !20  ; 2 uses
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %._crit_edge.loopexit.i, label %bb.f

map_insert.exit:                                  ; preds = %bb.e, %._crit_edge.loopexit.i
  %5 = phi ptr [ %.pre66, %bb.e ], [ %4, %._crit_edge.loopexit.i ]
  %.044.lcssa.i = phi i64 [ %i.p, %bb.e ], [ %i.aq, %._crit_edge.loopexit.i ]
  %.042.lcssa.i = phi i8 [ 1, %bb.e ], [ %i.x, %._crit_edge.loopexit.i ]
  %.040.lcssa.i = phi ptr [ %2, %bb.e ], [ %.141.i, %._crit_edge.loopexit.i ]
  %.039.lcssa.i = phi i32 [ %1, %bb.e ], [ %.1.i, %._crit_edge.loopexit.i ]
  %.044.lcssa.i.fr = freeze i64 %.044.lcssa.i     ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.044.lcssa.i.fr
  store i32 %.039.lcssa.i, ptr %i.au, align 4, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.044.lcssa.i.fr
  store ptr %.040.lcssa.i, ptr %i.ax, align 8, !tbaa !9
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.044.lcssa.i.fr
  store i8 %.042.lcssa.i, ptr %i.az, align 1, !tbaa !20
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !17
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.d, align 8, !tbaa !17
  %spec.select5758 = tail call i64 @llvm.smin.i64(i64 %.044.lcssa.i.fr, i64 0)
  %spec.select57 = trunc i64 %spec.select5758 to i32
  br label %map_insert.exit.thread

bb.j:                                             ; preds = %bb.c
  %i.bc = getelementptr i8, ptr %0, i64 32
  %.val.i33 = load i64, ptr %i.bc, align 8, !tbaa !24
  %i.bd = sext i32 %1 to i64
  %i.be = add i64 %.val.i33, %i.bd
  %i.bf = mul i64 %i.be, -7170105779041248983
  %i.bg = sub i64 64, %i.b
  %i.bh = lshr i64 %i.bf, %i.bg                   ; 3 uses
  %notmask.i35 = shl nsw i64 -1, %i.b
  %i.bi = xor i64 %notmask.i35, -1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !19 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bh
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !20  ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 0
  %.pre69 = load ptr, ptr %0, align 8, !tbaa !16  ; 2 uses
  br i1 %i.bn, label %map_insert.exit52, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.k

._crit_edge.loopexit.i44:                         ; preds = %bb.n
  %i.bp = trunc i64 %i.cg to i8
  br label %map_insert.exit52

bb.k:                                             ; preds = %bb.n, %.lr.ph.i36
  %6 = phi ptr [ %.pre69, %.lr.ph.i36 ], [ %7, %bb.n ] ; 2 uses
  %i.bq = phi ptr [ %i.bk, %.lr.ph.i36 ], [ %i.cf, %bb.n ]
  %i.br = phi i8 [ %i.bm, %.lr.ph.i36 ], [ %i.ck, %bb.n ]
  %.03955.i37 = phi i32 [ %1, %.lr.ph.i36 ], [ %.1.i43, %bb.n ] ; 3 uses
  %.04054.i38 = phi ptr [ %2, %.lr.ph.i36 ], [ %.141.i42, %bb.n ] ; 2 uses
  %.04253.i39 = phi i64 [ 1, %.lr.ph.i36 ], [ %i.cg, %bb.n ] ; 3 uses
  %.04452.i40 = phi i64 [ %i.bh, %.lr.ph.i36 ], [ %i.ci, %bb.n ] ; 4 uses
  %i.bs = zext i8 %i.br to i64
  %i.bt = icmp ugt i64 %.04253.i39, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.04452.i40 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !23 ; 2 uses
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %.03955.i37, ptr %i.bu, align 4, !tbaa !23
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !21
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.04452.i40 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !9
  store ptr %.04054.i38, ptr %i.bx, align 8, !tbaa !9
  %i.bz = trunc i64 %.04253.i39 to i8
  %i.ca = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.04452.i40 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !20
  %i.cd = zext i8 %i.cc to i64
  store i8 %i.bz, ptr %i.cb, align 1, !tbaa !20
  %.pre.i51 = load ptr, ptr %i.bj, align 8, !tbaa !19
  %.pre67 = load ptr, ptr %0, align 8, !tbaa !16
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ce = icmp eq i32 %i.bv, %.03955.i37
  br i1 %i.ce, label %map_insert.exit52.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %7 = phi ptr [ %.pre67, %bb.l ], [ %6, %bb.m ]  ; 2 uses
  %i.cf = phi ptr [ %.pre.i51, %bb.l ], [ %i.bq, %bb.m ] ; 2 uses
  %.143.i41 = phi i64 [ %i.cd, %bb.l ], [ %.04253.i39, %bb.m ]
  %.141.i42 = phi ptr [ %i.by, %bb.l ], [ %.04054.i38, %bb.m ] ; 2 uses
  %.1.i43 = phi i32 [ %i.bv, %bb.l ], [ %.03955.i37, %bb.m ] ; 2 uses
  %i.cg = add nuw nsw i64 %.143.i41, 1            ; 2 uses
  %i.ch = add i64 %.04452.i40, 1
  %i.ci = and i64 %i.ch, %i.bi                    ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !20  ; 2 uses
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %._crit_edge.loopexit.i44, label %bb.k

map_insert.exit52:                                ; preds = %bb.j, %._crit_edge.loopexit.i44
  %8 = phi ptr [ %.pre69, %bb.j ], [ %7, %._crit_edge.loopexit.i44 ]
  %.044.lcssa.i46 = phi i64 [ %i.bh, %bb.j ], [ %i.ci, %._crit_edge.loopexit.i44 ] ; 6 uses
  %.042.lcssa.i47 = phi i8 [ 1, %bb.j ], [ %i.bp, %._crit_edge.loopexit.i44 ]
  %.040.lcssa.i48 = phi ptr [ %2, %bb.j ], [ %.141.i42, %._crit_edge.loopexit.i44 ]
  %.039.lcssa.i49 = phi i32 [ %1, %bb.j ], [ %.1.i43, %._crit_edge.loopexit.i44 ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.044.lcssa.i46
  store i32 %.039.lcssa.i49, ptr %i.cm, align 4, !tbaa !23
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !21
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.044.lcssa.i46
  store ptr %.040.lcssa.i48, ptr %i.cp, align 8, !tbaa !9
  %i.cq = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.044.lcssa.i46
  store i8 %.042.lcssa.i47, ptr %i.cr, align 1, !tbaa !20
  %i.cs = load i64, ptr %i.d, align 8, !tbaa !17
  %i.ct = add i64 %i.cs, 1
  store i64 %i.ct, ptr %i.d, align 8, !tbaa !17
  %i.cu = icmp slt i64 %.044.lcssa.i46, 0
  br i1 %i.cu, label %map_insert.exit52.thread, label %bb.o

map_insert.exit52.thread:                         ; preds = %bb.m, %map_insert.exit52
  %.0.i5056 = phi i64 [ %.044.lcssa.i46, %map_insert.exit52 ], [ -501, %bb.m ]
  %i.cv = trunc i64 %.0.i5056 to i32
  br label %map_insert.exit.thread

bb.o:                                             ; preds = %map_insert.exit52
  %i.cw = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.044.lcssa.i46
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !20
  %i.cz = icmp ult i8 %i.cy, -127
  br i1 %i.cz, label %map_insert.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.da = load i64, ptr %i.a, align 8, !tbaa !18
  %i.db = add i64 %i.da, 1
  %i.dc = tail call fastcc i32 @map_resize(ptr noundef nonnull %0, i64 noundef %i.db)
  br label %map_insert.exit.thread

map_insert.exit.thread:                           ; preds = %bb.h, %map_insert.exit, %bb.o, %bb.d, %bb.p, %map_insert.exit52.thread
  %.0 = phi i32 [ %i.dc, %bb.p ], [ 0, %bb.o ], [ %i.j, %bb.d ], [ %i.cv, %map_insert.exit52.thread ], [ %spec.select57, %map_insert.exit ], [ -501, %bb.h ]
  ret i32 %.0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -901, 1) i32 @map_resize(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  %i.d = icmp ugt i64 %1, 63
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw i64 1, %1
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.g = tail call ptr @nghttp2_mem_calloc(ptr noundef %i.f, i64 noundef %i.e, i64 noundef 13) #12 ; 6 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = shl i64 4, %1
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i ; 5 uses
  %i.k = shl i64 8, %1
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = sub nuw nsw i64 64, %1
  %notmask.i = shl nsw i64 -1, %1
  %i.t = xor i64 %notmask.i, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.j
  %.050 = phi i64 [ 0, %bb.d ], [ %i.bj, %bb.j ]  ; 4 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.050
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %0, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.050
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !23  ; 3 uses
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.050
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !9  ; 2 uses
  %i.ae = sext i32 %i.aa to i64
  %i.af = add i64 %i.c, %i.ae
  %i.ag = mul i64 %i.af, -7170105779041248983
  %i.ah = lshr i64 %i.ag, %i.s                    ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ah ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !20  ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %map_insert.exit, label %.lr.ph.i

map_insert.exit.thread42:                         ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bd
  %i.am = trunc i64 %i.bb to i8
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bd
  store i32 %.1.i, ptr %i.an, align 4, !tbaa !23
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bd
  store ptr %.141.i, ptr %i.ao, align 8, !tbaa !9
  store i8 %i.am, ptr %i.al, align 1, !tbaa !20
  br label %bb.j

.lr.ph.i:                                         ; preds = %bb.f, %bb.i
  %i.ap = phi i8 [ %i.bf, %bb.i ], [ %i.aj, %bb.f ]
  %.03955.i = phi i32 [ %.1.i, %bb.i ], [ %i.aa, %bb.f ] ; 3 uses
  %.04054.i = phi ptr [ %.141.i, %bb.i ], [ %i.ad, %bb.f ] ; 2 uses
  %.04253.i = phi i64 [ %i.bb, %bb.i ], [ 1, %bb.f ] ; 3 uses
  %.04452.i = phi i64 [ %i.bd, %bb.i ], [ %i.ah, %bb.f ] ; 4 uses
  %i.aq = zext i8 %i.ap to i64
  %i.ar = icmp ugt i64 %.04253.i, %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.04452.i ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !23 ; 2 uses
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  store i32 %.03955.i, ptr %i.as, align 4, !tbaa !23
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.04452.i ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !9
  store ptr %.04054.i, ptr %i.au, align 8, !tbaa !9
  %i.aw = trunc i64 %.04253.i to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 %.04452.i ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !20
  %i.az = zext i8 %i.ay to i64
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !20
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = icmp eq i32 %i.at, %.03955.i
  br i1 %i.ba, label %map_insert.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.143.i = phi i64 [ %i.az, %bb.g ], [ %.04253.i, %bb.h ]
  %.141.i = phi ptr [ %i.av, %bb.g ], [ %.04054.i, %bb.h ] ; 2 uses
  %.1.i = phi i32 [ %i.at, %bb.g ], [ %.03955.i, %bb.h ] ; 2 uses
  %i.bb = add nuw nsw i64 %.143.i, 1              ; 2 uses
  %i.bc = add nuw i64 %.04452.i, 1
  %i.bd = and i64 %i.bc, %i.t                     ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !20  ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %map_insert.exit.thread42, label %.lr.ph.i

map_insert.exit:                                  ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ah
  store i32 %i.aa, ptr %i.bh, align 4, !tbaa !23
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ah
  store ptr %i.ad, ptr %i.bi, align 8, !tbaa !9
  store i8 1, ptr %i.ai, align 1, !tbaa !20
  br label %bb.j

map_insert.exit.thread:                           ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 222, ptr noundef nonnull @__PRETTY_FUNCTION__.map_resize) #14
  unreachable

bb.j:                                             ; preds = %map_insert.exit, %map_insert.exit.thread42, %bb.e
  %i.bj = add i64 %.050, 1                        ; 2 uses
  %.0.highbits = lshr i64 %i.bj, %i.p
  %i.bk = icmp eq i64 %.0.highbits, 0
  br i1 %i.bk, label %bb.e, label %.loopexit, !llvm.loop !30

.loopexit:                                        ; preds = %bb.j, %bb.c
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.bm = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @nghttp2_mem_free(ptr noundef %i.bl, ptr noundef %i.bm) #12
  store ptr %i.g, ptr %0, align 8, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.bn, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.bo, align 8, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %1, ptr %i.bp, align 8, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.a, %.loopexit
  %.030 = phi i32 [ 0, %.loopexit ], [ -901, %bb.a ], [ -901, %bb.b ]
  ret i32 %.030
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @nghttp2_map_find(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val = load i64, ptr %i.d, align 8, !tbaa !24
  %i.e = getelementptr i8, ptr %0, i64 48
  %.val17 = load i64, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  %i.f = sext i32 %1 to i64
end_hunk_0
