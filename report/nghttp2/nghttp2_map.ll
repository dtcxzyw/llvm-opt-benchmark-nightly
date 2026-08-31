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
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !10
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = load ptr, ptr %0, align 8, !tbaa !17
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.015 = phi i64 [ 0, %bb.b ], [ %i.p, %bb.e ]   ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.015
  %i.j = load i8, ptr %i.i, align 1, !tbaa !21
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.015
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.o = tail call i32 %1(ptr noundef %i.n, ptr noundef %2) #12 ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = add i64 %.015, 1                         ; 2 uses
  %.0.highbits = lshr i64 %i.p, %i.e
  %i.q = icmp eq i64 %.0.highbits, 0
  br i1 %i.q, label %bb.c, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.a
  %.013 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ %i.o, %bb.d ]
  ret i32 %.013
}

; Function Attrs: nofree nounwind uwtable
define hidden void @nghttp2_map_print_distance(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.017 = phi i64 [ 0, %bb.b ], [ %i.z, %bb.f ]   ; 5 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.017
  %i.j = load i8, ptr %i.i, align 1, !tbaa !21    ; 2 uses
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str, i64 noundef %.017) #13 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.017
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27   ; 2 uses
  %.val = load i64, ptr %i.g, align 8, !tbaa !28
  %.val16 = load i64, ptr %i.d, align 8, !tbaa !19
  %i.q = sext i32 %i.p to i64
  %i.r = add i64 %.val, %i.q
  %i.s = mul i64 %i.r, -7170105779041248983
  %i.t = sub i64 64, %.val16
  %i.u = lshr i64 %i.s, %i.t
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.w = zext i8 %i.j to i32
  %i.x = add nsw i32 %i.w, -1
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.1, i64 noundef %.017, i32 noundef %i.p, i64 noundef %i.u, i32 noundef %i.x) #13 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = add i64 %.017, 1                         ; 2 uses
  %.0.highbits = lshr i64 %i.z, %i.e
  %i.aa = icmp eq i64 %.0.highbits, 0
  br i1 %i.aa, label %bb.c, label %.loopexit, !llvm.loop !29

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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.c = shl nuw i64 1, %i.b                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
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
  %.val.i = load i64, ptr %i.k, align 8, !tbaa !28
  %.val46.i = load i64, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %i.l = sext i32 %1 to i64
  %i.m = add i64 %.val.i, %i.l
  %i.n = mul i64 %i.m, -7170105779041248983
  %i.o = sub i64 64, %.val46.i
  %i.p = lshr i64 %i.n, %i.o                      ; 3 uses
  %notmask.i = shl nsw i64 -1, %.val46.i
  %i.q = xor i64 %notmask.i, -1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  %i.u = load i8, ptr %i.t, align 1, !tbaa !21    ; 2 uses
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %map_insert.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

._crit_edge.loopexit.i:                           ; preds = %bb.i
  %i.x = trunc i64 %i.ap to i8
  br label %map_insert.exit

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %i.y = phi ptr [ %i.s, %.lr.ph.i ], [ %i.ao, %bb.i ]
  %i.z = phi i8 [ %i.u, %.lr.ph.i ], [ %i.at, %bb.i ]
  %.03955.i = phi i32 [ %1, %.lr.ph.i ], [ %.1.i, %bb.i ] ; 3 uses
  %.04054.i = phi ptr [ %2, %.lr.ph.i ], [ %.141.i, %bb.i ] ; 2 uses
  %.04253.i = phi i64 [ 1, %.lr.ph.i ], [ %i.ap, %bb.i ] ; 3 uses
  %.04452.i = phi i64 [ %i.p, %.lr.ph.i ], [ %i.ar, %bb.i ] ; 4 uses
  %i.aa = zext i8 %i.z to i64
  %i.ab = icmp ugt i64 %.04253.i, %i.aa
  %i.ac = load ptr, ptr %0, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.04452.i ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !27 ; 2 uses
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %.03955.i, ptr %i.ad, align 4, !tbaa !27
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.04452.i ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !8
  store ptr %.04054.i, ptr %i.ag, align 8, !tbaa !8
  %i.ai = trunc i64 %.04253.i to i8
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.04452.i ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !21
  %i.am = zext i8 %i.al to i64
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !21
  %.pre.i = load ptr, ptr %i.r, align 8, !tbaa !20
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.an = icmp eq i32 %i.ae, %.03955.i
  br i1 %i.an, label %map_insert.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = phi ptr [ %.pre.i, %bb.g ], [ %i.y, %bb.h ] ; 2 uses
  %.143.i = phi i64 [ %i.am, %bb.g ], [ %.04253.i, %bb.h ]
  %.141.i = phi ptr [ %i.ah, %bb.g ], [ %.04054.i, %bb.h ] ; 2 uses
  %.1.i = phi i32 [ %i.ae, %bb.g ], [ %.03955.i, %bb.h ] ; 2 uses
  %i.ap = add nuw nsw i64 %.143.i, 1              ; 2 uses
  %i.aq = add i64 %.04452.i, 1
  %i.ar = and i64 %i.aq, %i.q                     ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !21  ; 2 uses
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %._crit_edge.loopexit.i, label %bb.f

map_insert.exit:                                  ; preds = %bb.e, %._crit_edge.loopexit.i
  %.044.lcssa.i = phi i64 [ %i.p, %bb.e ], [ %i.ar, %._crit_edge.loopexit.i ]
  %.042.lcssa.i = phi i8 [ 1, %bb.e ], [ %i.x, %._crit_edge.loopexit.i ]
  %.040.lcssa.i = phi ptr [ %2, %bb.e ], [ %.141.i, %._crit_edge.loopexit.i ]
  %.039.lcssa.i = phi i32 [ %1, %bb.e ], [ %.1.i, %._crit_edge.loopexit.i ]
  %.044.lcssa.i.fr = freeze i64 %.044.lcssa.i     ; 4 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.044.lcssa.i.fr
  store i32 %.039.lcssa.i, ptr %i.aw, align 4, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.044.lcssa.i.fr
  store ptr %.040.lcssa.i, ptr %i.az, align 8, !tbaa !8
  %i.ba = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.044.lcssa.i.fr
  store i8 %.042.lcssa.i, ptr %i.bb, align 1, !tbaa !21
  %i.bc = load i64, ptr %i.d, align 8, !tbaa !18
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.d, align 8, !tbaa !18
  %spec.select5758 = tail call i64 @llvm.smin.i64(i64 %.044.lcssa.i.fr, i64 0)
  %spec.select57 = trunc i64 %spec.select5758 to i32
  br label %map_insert.exit.thread

bb.j:                                             ; preds = %bb.c
  %i.be = getelementptr i8, ptr %0, i64 32
  %.val.i33 = load i64, ptr %i.be, align 8, !tbaa !28
  %i.bf = sext i32 %1 to i64
  %i.bg = add i64 %.val.i33, %i.bf
  %i.bh = mul i64 %i.bg, -7170105779041248983
  %i.bi = sub i64 64, %i.b
  %i.bj = lshr i64 %i.bh, %i.bi                   ; 3 uses
  %notmask.i35 = shl nsw i64 -1, %i.b
  %i.bk = xor i64 %notmask.i35, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !20 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bj
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !21  ; 2 uses
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %map_insert.exit52, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.k

._crit_edge.loopexit.i44:                         ; preds = %bb.n
  %i.br = trunc i64 %i.cj to i8
  br label %map_insert.exit52

bb.k:                                             ; preds = %bb.n, %.lr.ph.i36
  %i.bs = phi ptr [ %i.bm, %.lr.ph.i36 ], [ %i.ci, %bb.n ]
  %i.bt = phi i8 [ %i.bo, %.lr.ph.i36 ], [ %i.cn, %bb.n ]
  %.03955.i37 = phi i32 [ %1, %.lr.ph.i36 ], [ %.1.i43, %bb.n ] ; 3 uses
  %.04054.i38 = phi ptr [ %2, %.lr.ph.i36 ], [ %.141.i42, %bb.n ] ; 2 uses
  %.04253.i39 = phi i64 [ 1, %.lr.ph.i36 ], [ %i.cj, %bb.n ] ; 3 uses
  %.04452.i40 = phi i64 [ %i.bj, %.lr.ph.i36 ], [ %i.cl, %bb.n ] ; 4 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = icmp ugt i64 %.04253.i39, %i.bu
  %i.bw = load ptr, ptr %0, align 8, !tbaa !17
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.04452.i40 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !27 ; 2 uses
  br i1 %i.bv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %.03955.i37, ptr %i.bx, align 4, !tbaa !27
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !22
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.04452.i40 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !8
  store ptr %.04054.i38, ptr %i.ca, align 8, !tbaa !8
  %i.cc = trunc i64 %.04253.i39 to i8
  %i.cd = load ptr, ptr %i.bl, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.04452.i40 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !21
  %i.cg = zext i8 %i.cf to i64
  store i8 %i.cc, ptr %i.ce, align 1, !tbaa !21
  %.pre.i51 = load ptr, ptr %i.bl, align 8, !tbaa !20
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ch = icmp eq i32 %i.by, %.03955.i37
  br i1 %i.ch, label %map_insert.exit52.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ci = phi ptr [ %.pre.i51, %bb.l ], [ %i.bs, %bb.m ] ; 2 uses
  %.143.i41 = phi i64 [ %i.cg, %bb.l ], [ %.04253.i39, %bb.m ]
  %.141.i42 = phi ptr [ %i.cb, %bb.l ], [ %.04054.i38, %bb.m ] ; 2 uses
  %.1.i43 = phi i32 [ %i.by, %bb.l ], [ %.03955.i37, %bb.m ] ; 2 uses
  %i.cj = add nuw nsw i64 %.143.i41, 1            ; 2 uses
  %i.ck = add i64 %.04452.i40, 1
  %i.cl = and i64 %i.ck, %i.bk                    ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !21  ; 2 uses
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %._crit_edge.loopexit.i44, label %bb.k

map_insert.exit52:                                ; preds = %bb.j, %._crit_edge.loopexit.i44
  %.044.lcssa.i46 = phi i64 [ %i.bj, %bb.j ], [ %i.cl, %._crit_edge.loopexit.i44 ] ; 6 uses
  %.042.lcssa.i47 = phi i8 [ 1, %bb.j ], [ %i.br, %._crit_edge.loopexit.i44 ]
  %.040.lcssa.i48 = phi ptr [ %2, %bb.j ], [ %.141.i42, %._crit_edge.loopexit.i44 ]
  %.039.lcssa.i49 = phi i32 [ %1, %bb.j ], [ %.1.i43, %._crit_edge.loopexit.i44 ]
  %i.cp = load ptr, ptr %0, align 8, !tbaa !17
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.044.lcssa.i46
  store i32 %.039.lcssa.i49, ptr %i.cq, align 4, !tbaa !27
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !22
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.044.lcssa.i46
  store ptr %.040.lcssa.i48, ptr %i.ct, align 8, !tbaa !8
  %i.cu = load ptr, ptr %i.bl, align 8, !tbaa !20
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.044.lcssa.i46
  store i8 %.042.lcssa.i47, ptr %i.cv, align 1, !tbaa !21
  %i.cw = load i64, ptr %i.d, align 8, !tbaa !18
  %i.cx = add i64 %i.cw, 1
  store i64 %i.cx, ptr %i.d, align 8, !tbaa !18
  %i.cy = icmp slt i64 %.044.lcssa.i46, 0
  br i1 %i.cy, label %map_insert.exit52.thread, label %bb.o

map_insert.exit52.thread:                         ; preds = %bb.m, %map_insert.exit52
  %.0.i5056 = phi i64 [ %.044.lcssa.i46, %map_insert.exit52 ], [ -501, %bb.m ]
  %i.cz = trunc i64 %.0.i5056 to i32
  br label %map_insert.exit.thread

bb.o:                                             ; preds = %map_insert.exit52
  %i.da = load ptr, ptr %i.bl, align 8, !tbaa !20
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.044.lcssa.i46
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !21
  %i.dd = icmp ult i8 %i.dc, -127
  br i1 %i.dd, label %map_insert.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.de = load i64, ptr %i.a, align 8, !tbaa !19
  %i.df = add i64 %i.de, 1
  %i.dg = tail call fastcc i32 @map_resize(ptr noundef nonnull %0, i64 noundef %i.df)
  br label %map_insert.exit.thread

map_insert.exit.thread:                           ; preds = %bb.h, %map_insert.exit, %bb.o, %bb.d, %bb.p, %map_insert.exit52.thread
  %.0 = phi i32 [ %i.dg, %bb.p ], [ 0, %bb.o ], [ %i.j, %bb.d ], [ %i.cz, %map_insert.exit52.thread ], [ %spec.select57, %map_insert.exit ], [ -501, %bb.h ]
  ret i32 %.0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -901, 1) i32 @map_resize(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28
  %i.d = icmp ugt i64 %1, 63
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = shl nuw i64 1, %1
  %3 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.e = tail call ptr @nghttp2_mem_calloc(ptr noundef %3, i64 noundef %2, i64 noundef 13) #12 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl i64 4, %1
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g ; 5 uses
  %i.i = shl i64 8, %1
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = sub nuw nsw i64 64, %1
  %notmask.i = shl nsw i64 -1, %1
  %i.r = xor i64 %notmask.i, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.j
  %.050 = phi i64 [ 0, %bb.d ], [ %i.bh, %bb.j ]  ; 4 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.050
  %i.u = load i8, ptr %i.t, align 1, !tbaa !21
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %0, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.050
  %i.y = load i32, ptr %i.x, align 4, !tbaa !27   ; 3 uses
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.050
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8  ; 2 uses
  %i.ac = sext i32 %i.y to i64
  %i.ad = add i64 %i.c, %i.ac
  %i.ae = mul i64 %i.ad, -7170105779041248983
  %i.af = lshr i64 %i.ae, %i.q                    ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !21  ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %map_insert.exit, label %.lr.ph.i

map_insert.exit.thread42:                         ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.ak = trunc i64 %i.az to i8
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bb
  store i32 %.1.i, ptr %i.al, align 4, !tbaa !27
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bb
  store ptr %.141.i, ptr %i.am, align 8, !tbaa !8
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !21
  br label %bb.j

.lr.ph.i:                                         ; preds = %bb.f, %bb.i
  %i.an = phi i8 [ %i.bd, %bb.i ], [ %i.ah, %bb.f ]
  %.03955.i = phi i32 [ %.1.i, %bb.i ], [ %i.y, %bb.f ] ; 3 uses
  %.04054.i = phi ptr [ %.141.i, %bb.i ], [ %i.ab, %bb.f ] ; 2 uses
  %.04253.i = phi i64 [ %i.az, %bb.i ], [ 1, %bb.f ] ; 3 uses
  %.04452.i = phi i64 [ %i.bb, %bb.i ], [ %i.af, %bb.f ] ; 4 uses
  %i.ao = zext i8 %i.an to i64
  %i.ap = icmp ugt i64 %.04253.i, %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.04452.i ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !27 ; 2 uses
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  store i32 %.03955.i, ptr %i.aq, align 4, !tbaa !27
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.04452.i ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !8
  store ptr %.04054.i, ptr %i.as, align 8, !tbaa !8
  %i.au = trunc i64 %.04253.i to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 %.04452.i ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !21
  %i.ax = zext i8 %i.aw to i64
  store i8 %i.au, ptr %i.av, align 1, !tbaa !21
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ay = icmp eq i32 %i.ar, %.03955.i
  br i1 %i.ay, label %map_insert.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.143.i = phi i64 [ %i.ax, %bb.g ], [ %.04253.i, %bb.h ]
  %.141.i = phi ptr [ %i.at, %bb.g ], [ %.04054.i, %bb.h ] ; 2 uses
  %.1.i = phi i32 [ %i.ar, %bb.g ], [ %.03955.i, %bb.h ] ; 2 uses
  %i.az = add nuw nsw i64 %.143.i, 1              ; 2 uses
  %i.ba = add nuw i64 %.04452.i, 1
  %i.bb = and i64 %i.ba, %i.r                     ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !21  ; 2 uses
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %map_insert.exit.thread42, label %.lr.ph.i

map_insert.exit:                                  ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.af
  store i32 %i.y, ptr %i.bf, align 4, !tbaa !27
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.af
  store ptr %i.ab, ptr %i.bg, align 8, !tbaa !8
  store i8 1, ptr %i.ag, align 1, !tbaa !21
  br label %bb.j

map_insert.exit.thread:                           ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 222, ptr noundef nonnull @__PRETTY_FUNCTION__.map_resize) #14
  unreachable

bb.j:                                             ; preds = %map_insert.exit, %map_insert.exit.thread42, %bb.e
  %i.bh = add i64 %.050, 1                        ; 2 uses
  %.0.highbits = lshr i64 %i.bh, %i.n
  %i.bi = icmp eq i64 %.0.highbits, 0
  br i1 %i.bi, label %bb.e, label %.loopexit, !llvm.loop !30

.loopexit:                                        ; preds = %bb.j, %bb.c
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bk = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @nghttp2_mem_free(ptr noundef %i.bj, ptr noundef %i.bk) #12
  store ptr %i.e, ptr %0, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.bl, align 8, !tbaa !22
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.bm, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %1, ptr %i.bn, align 8, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.a, %.loopexit
  %.030 = phi i32 [ 0, %.loopexit ], [ -901, %bb.a ], [ -901, %bb.b ]
  ret i32 %.030
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @nghttp2_map_find(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val = load i64, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr i8, ptr %0, i64 48
  %.val17 = load i64, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %i.f = sext i32 %1 to i64
  %i.g = add i64 %.val, %i.f
  %i.h = mul i64 %i.g, -7170105779041248983
  %i.i = sub i64 64, %.val17
  %i.j = lshr i64 %i.h, %i.i                      ; 2 uses
  %notmask = shl nsw i64 -1, %.val17
  %i.k = xor i64 %notmask, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.o = load i8, ptr %i.n, align 1, !tbaa !21
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.020 = phi i64 [ 1, %.lr.ph ], [ %i.y, %bb.e ] ; 2 uses
  %.01519 = phi i64 [ %i.j, %.lr.ph ], [ %i.aa, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.01519
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.01519
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.y = add nuw nsw i64 %.020, 1
  %i.z = add i64 %.01519, 1
  %i.aa = and i64 %i.z, %i.k                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21
  %i.ad = zext i8 %i.ac to i64
  %.not = icmp samesign ult i64 %.020, %i.ad
  br i1 %.not, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.a, %bb.d
  %.016 = phi ptr [ %i.x, %bb.d ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.e ]
  ret ptr %.016
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -501, 1) i32 @nghttp2_map_remove(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp eq i64 %i.b, 0
end_hunk_0
