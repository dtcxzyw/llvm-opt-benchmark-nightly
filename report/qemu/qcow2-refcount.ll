Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qcow2-refcount?download=true
inline.NumInlined: 161
inline.NumDeleted: 36
begin_hunk_0_@calculate_refcounts:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sext i32 %i.l to i64
  %i.n = tail call i32 @qcow2_inc_refcounts_imrt(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %5, i64 noundef 0, i64 noundef %i.m) ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.s = load i32, ptr %i.r, align 8
  %i.t = tail call i32 @check_refcounts_l1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %5, i64 noundef %i.q, i32 noundef %i.s, i32 noundef 2, i32 noundef %2, i1 noundef zeroext true) ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val105 = load ptr, ptr %i.b, align 8
  %i.v = getelementptr i8, ptr %0, i64 16832
  %.val106 = load ptr, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %.val105, i64 504
  %.val105.val = load ptr, ptr %i.w, align 8
  %.not107 = icmp eq ptr %.val105.val, %.val106
  br i1 %.not107, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %.not102 = icmp eq i32 %i.y, 0
  br i1 %.not102, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr @stderr, align 8
  %i.aa = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.z, i32 noundef 1, ptr noundef nonnull @.str.57, i32 noundef %i.y) #15 ; 0 uses
  %i.ab = load i32, ptr %1, align 8
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %1, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 284 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %.not109 = icmp eq i32 %i.ae, 0
  br i1 %.not109, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.o
  %.091108 = phi i64 [ 0, %.lr.ph ], [ %i.bf, %bb.o ] ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw [88 x i8], ptr %i.ag, i64 %.091108 ; 6 uses
  %i.ai = load i64, ptr %i.ah, align 8            ; 3 uses
  %.val = load i32, ptr %i.k, align 4
  %i.aj = add i32 %.val, -1
  %i.ak = sext i32 %i.aj to i64
  %i.al = and i64 %i.ai, %i.ak
  %.not104 = icmp eq i64 %i.al, 0
  br i1 %.not104, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr @stderr, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.am, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef %i.ao, ptr noundef %i.aq, i64 noundef %i.ai) #15 ; 0 uses
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.at = load i32, ptr %i.as, align 8            ; 3 uses
  %i.au = icmp ugt i32 %i.at, 4194304
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr @stderr, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.av, i32 noundef 1, ptr noundef nonnull @.str.59, ptr noundef %i.ax, ptr noundef %i.az, i32 noundef %i.at) #15 ; 0 uses
  br label %.sink.split

bb.n:                                             ; preds = %bb.l
  %i.bb = tail call i32 @check_refcounts_l1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %5, i64 noundef %i.ai, i32 noundef %i.at, i32 noundef 0, i32 noundef %2, i1 noundef zeroext false) ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %.loopexit, label %bb.o

.sink.split:                                      ; preds = %bb.k, %bb.m
  %i.bd = load i32, ptr %1, align 8
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %1, align 8
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.n
  %i.bf = add nuw nsw i64 %.091108, 1             ; 2 uses
  %i.bg = load i32, ptr %i.ad, align 4
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp samesign ult i64 %i.bf, %i.bh
  br i1 %i.bi, label %bb.j, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.o, %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call i32 @qcow2_inc_refcounts_imrt(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %5, i64 noundef %i.bk, i64 noundef %i.bn) ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = zext i32 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = tail call i32 @qcow2_inc_refcounts_imrt(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %5, i64 noundef %i.br, i64 noundef %i.bv) ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.bz = load i64, ptr %i.by, align 8            ; 2 uses
  %.not103 = icmp eq i64 %i.bz, 0
  br i1 %.not103, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = tail call i32 @qcow2_inc_refcounts_imrt(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %5, i64 noundef %i.cb, i64 noundef %i.bz) ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ce = tail call i32 @qcow2_check_bitmaps_refcounts(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %5) #15 ; 2 uses
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = tail call i32 @check_refblocks(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.c, %bb.s, %bb.r, %bb.p, %._crit_edge, %bb.e, %bb.d, %bb.t
  %.1 = phi i32 [ %i.f, %bb.c ], [ %i.n, %bb.d ], [ %i.t, %bb.e ], [ %i.ce, %bb.s ], [ %i.bo, %._crit_edge ], [ %i.bw, %bb.p ], [ %i.cc, %bb.r ], [ %i.cg, %bb.t ], [ %i.bb, %bb.n ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @compare_refcounts(ptr noundef %0, ptr nofree noundef captures(address) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4, ptr noundef %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 0, ptr %4, align 8
  %i.d = icmp sgt i64 %6, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !annotation !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.f = and i32 %2, 1
  %.not44 = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = and i32 %2, 2
  %.not45 = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %.04051 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %.thread ] ; 7 uses
  %i.l = call i32 @qcow2_get_refcount(ptr noundef %0, i64 noundef %.04051, ptr noundef nonnull %i.a) ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr @stderr, align 8
  %i.o = sub i32 0, %i.l
  %i.p = tail call ptr @strerror(i32 noundef %i.o) #15
  %i.q = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.n, i32 noundef 1, ptr noundef nonnull @.str.42, i64 noundef %.04051, ptr noundef %i.p) #15 ; 0 uses
  %i.r = load i32, ptr %i.k, align 8
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.k, align 8
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.e, align 8
  %i.u = tail call i64 %i.t(ptr noundef %5, i64 noundef %.04051) #15 ; 8 uses
  %i.v = load i64, ptr %i.a, align 8              ; 8 uses
  %i.w = icmp ne i64 %i.v, 0                      ; 2 uses
  %i.x = icmp ne i64 %i.u, 0
  %or.cond = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  store i64 %.04051, ptr %4, align 8
  %.not = icmp eq i64 %i.v, %i.u
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.w, label %bb.g, label %.thread50

.thread50:                                        ; preds = %bb.f
  store i8 1, ptr %3, align 1
  br label %select.unfold

bb.g:                                             ; preds = %bb.f
  %i.y = icmp ule i64 %i.v, %i.u
  %or.cond47 = or i1 %.not44, %i.y
  br i1 %or.cond47, label %bb.h, label %select.unfold

bb.h:                                             ; preds = %bb.g
  %i.z = icmp uge i64 %i.v, %i.u
  %or.cond48 = or i1 %.not45, %i.z
  %spec.select = select i1 %or.cond48, ptr null, ptr %i.i
  br label %select.unfold

select.unfold:                                    ; preds = %bb.h, %bb.g, %.thread50
  %.0 = phi ptr [ null, %.thread50 ], [ %spec.select, %bb.h ], [ %i.g, %bb.g ] ; 3 uses
  %i.aa = load ptr, ptr @stderr, align 8
  %.not46 = icmp eq ptr %.0, null                 ; 2 uses
  %i.ab = icmp ult i64 %i.v, %i.u                 ; 2 uses
  %i.ac = select i1 %i.ab, ptr @.str.71, ptr @.str.86
  %i.ad = select i1 %.not46, ptr %i.ac, ptr @.str.70
  %i.ae = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.aa, i32 noundef 1, ptr noundef nonnull @.str.85, ptr noundef nonnull %i.ad, i64 noundef %.04051, i64 noundef %i.v, i64 noundef %i.u) #15 ; 0 uses
  br i1 %.not46, label %bb.k, label %bb.i

bb.i:                                             ; preds = %select.unfold
  %i.af = load i32, ptr %i.c, align 8
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl i64 %.04051, %i.ag
  %i.ai = sub nsw i64 %i.v, %i.u
  %7 = tail call range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.ai, i1 true)
  %8 = icmp ugt i64 %i.v, %i.u
  %i.aj = tail call fastcc i32 @update_refcount(ptr noundef %0, i64 noundef %i.ah, i64 noundef 1, i64 noundef %7, i1 noundef zeroext %8, i32 noundef 1)
  %i.ak = icmp sgt i32 %i.aj, -1
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %.0, align 4
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %.0, align 4
  br label %.thread

bb.k:                                             ; preds = %bb.i, %select.unfold
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = load i32, ptr %1, align 8
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %1, align 8
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.ap = load i32, ptr %i.j, align 4
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.j, align 4
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.j, %bb.m, %bb.l, %bb.e, %bb.c
  %i.ar = add nuw nsw i64 %.04051, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !48

._crit_edge:                                      ; preds = %.thread, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @rebuild_refcount_structure(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr noundef %4) #0 {
bb.a:
  %5 = alloca %struct.QEMUIOVector, align 8       ; 7 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %6 = alloca %struct.anon.19, align 8            ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, i8 0, i64 12, i1 false), !annotation !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 @qcow2_cache_empty(ptr noundef %0, ptr noundef %i.f) #15 ; 0 uses
  %i.h = load i64, ptr %3, align 8
  %i.i = call i32 @rebuild_refcounts_write_refblocks(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %3, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %4) ; 3 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %.preheader107

.preheader107:                                    ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.d, i64 4        ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 2689, ptr noundef nonnull @__PRETTY_FUNCTION__.rebuild_refcount_structure) #13
  unreachable

bb.e:                                             ; preds = %.preheader107, %bb.m
  %i.o = load i32, ptr %i.a, align 4              ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3                  ; 5 uses
  %.val90 = load i32, ptr %i.d, align 8
  %.val91 = load i32, ptr %i.n, align 4
  %i.r = add i32 %.val91, -1
  %i.s = sext i32 %i.r to i64
  %i.t = add nsw i64 %i.q, %i.s
  %i.u = zext nneg i32 %.val90 to i64
  %i.v = lshr i64 %i.t, %i.u                      ; 4 uses
  %i.w = trunc i64 %i.v to i32                    ; 3 uses
  %.val92 = load ptr, ptr %i.c, align 8           ; 4 uses
  %i.x = load i64, ptr %3, align 8
  %i.y = icmp sgt i64 %i.x, 0
  %i.z = icmp sgt i32 %i.w, 0                     ; 2 uses
  %i.aa = and i1 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.val92, i64 352
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %.03.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.f ]
  %.0391.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ag, %bb.f ] ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %2, align 8
  %i.ae = tail call i64 %i.ac(ptr noundef %i.ad, i64 noundef %.0391.i) #15, !inline_history !4
  %.not.i.not = icmp eq i64 %i.ae, 0
  %i.af = add nsw i32 %.03.i, 1
  %.1.i = select i1 %.not.i.not, i32 %i.af, i32 0 ; 3 uses
  %i.ag = add nuw nsw i64 %.0391.i, 1             ; 4 uses
  %i.ah = load i64, ptr %3, align 8
  %i.ai = icmp slt i64 %i.ag, %i.ah
  %i.aj = icmp slt i32 %.1.i, %i.w                ; 2 uses
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %i.ak, label %bb.f, label %._crit_edge.loopexit.i, !llvm.loop !5

._crit_edge.loopexit.i:                           ; preds = %bb.f
  %i.al = sext i32 %.1.i to i64                   ; 2 uses
  br i1 %i.aj, label %bb.g, label %.thread179

.thread179:                                       ; preds = %._crit_edge.loopexit.i
  %sext182 = and i64 %i.v, 2147483647
  %i.am = sub i64 %i.ag, %i.al
  br label %.lr.ph8.i

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.z, label %bb.g, label %alloc_clusters_imrt.exit

bb.g:                                             ; preds = %._crit_edge.i, %._crit_edge.loopexit.i
  %.0.lcssa20.i = phi i64 [ %i.al, %._crit_edge.loopexit.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %.039.lcssa19.i = phi i64 [ %i.ag, %._crit_edge.loopexit.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %sext105 = shl i64 %i.v, 32
  %i.an = ashr exact i64 %sext105, 32             ; 2 uses
  %i.ao = sub nsw i64 %i.an, %.0.lcssa20.i
  %i.ap = add i64 %i.ao, %.039.lcssa19.i
  %i.aq = tail call fastcc i32 @realloc_refcount_array(ptr noundef readonly %.val92, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %i.ap) ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %.loopexit, label %.thread174

.thread174:                                       ; preds = %bb.g
  %i.as = sub i64 %.039.lcssa19.i, %.0.lcssa20.i
  br label %.lr.ph8.i

.lr.ph8.i:                                        ; preds = %.thread179, %.thread174
  %i.at = phi i64 [ %i.as, %.thread174 ], [ %i.am, %.thread179 ] ; 2 uses
  %.pre-phi13.i178 = phi i64 [ %i.an, %.thread174 ], [ %sext182, %.thread179 ]
  %i.au = getelementptr inbounds nuw i8, ptr %.val92, i64 360
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph8.i
  %.0386.i = phi i64 [ 0, %.lr.ph8.i ], [ %i.ay, %bb.h ] ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = load ptr, ptr %2, align 8
  %i.ax = add i64 %.0386.i, %i.at
  tail call void %i.av(ptr noundef %i.aw, i64 noundef %i.ax, i64 noundef 1) #15, !inline_history !4
  %i.ay = add nuw nsw i64 %.0386.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ay, %.pre-phi13.i178
  br i1 %exitcond.not.i, label %alloc_clusters_imrt.exit, label %bb.h, !llvm.loop !49

alloc_clusters_imrt.exit:                         ; preds = %bb.h, %._crit_edge.i
  %i.az = phi i64 [ 0, %._crit_edge.i ], [ %i.at, %bb.h ]
  %i.ba = load i32, ptr %.val92, align 8
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl i64 %i.az, %i.bb                    ; 9 uses
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %.loopexit.loopexit, label %bb.i

.loopexit.loopexit:                               ; preds = %alloc_clusters_imrt.exit
  %i.be = trunc i64 %i.bc to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.loopexit.loopexit
  %.040.i98 = phi i32 [ %i.be, %.loopexit.loopexit ], [ %i.aq, %bb.g ] ; 2 uses
  %i.bf = sub i32 0, %.040.i98
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef 2703, ptr noundef nonnull @__func__.rebuild_refcount_structure, i32 noundef %i.bf, ptr noundef nonnull @.str.88) #15
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 8
  br label %.thread

bb.i:                                             ; preds = %alloc_clusters_imrt.exit
  %.val = load i32, ptr %i.n, align 4             ; 2 uses
  %i.bj = add i32 %.val, -1
  %i.bk = sext i32 %i.bj to i64
  %i.bl = and i64 %i.bc, %i.bk
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 2713, ptr noundef nonnull @__PRETTY_FUNCTION__.rebuild_refcount_structure) #13
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bn = sext i32 %.val to i64
  %i.bo = sdiv i64 %i.bc, %i.bn                   ; 2 uses
  %i.bp = add i64 %i.bo, %i.v
  %i.bq = call i32 @rebuild_refcounts_write_refblocks(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %i.bo, i64 noundef %i.bp, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %4) ; 3 uses
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.l, label %bb.m

end_hunk_0
begin_hunk_1_@rebuild_refcounts_write_refblocks:bb.a
  %.not116 = icmp eq ptr %i.bi, null
  br i1 %.not116, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef 2564, ptr noundef nonnull @__func__.rebuild_refcounts_write_refblocks, ptr noundef nonnull @.str.95) #15
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.bj = lshr i64 %i.bg, 3
  %i.bk = trunc i64 %i.bj to i32                  ; 3 uses
  %i.bl = load i32, ptr %6, align 4               ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bm
  %i.bo = sub i32 %i.bk, %i.bl
  %i.bp = zext i32 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bn, i8 noundef 0, i64 noundef %i.bq, i1 noundef false) #15
  store ptr %i.bi, ptr %5, align 8
  store i32 %i.bk, ptr %6, align 4
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %.not115 = icmp eq ptr %.083166, null
  br i1 %.not115, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @__assert_fail(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.1, i32 noundef 2578, ptr noundef nonnull @__PRETTY_FUNCTION__.rebuild_refcounts_write_refblocks) #13
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.k
  %.184 = phi ptr [ %i.bi, %bb.j ], [ %.083166, %bb.k ] ; 2 uses
  %.179 = phi i32 [ %i.bk, %bb.j ], [ %.078167, %bb.k ]
  %.1 = phi i8 [ 1, %bb.j ], [ %.077168, %bb.k ]
  %i.br = getelementptr inbounds [8 x i8], ptr %.184, i64 %i.s
  store i64 %i.au, ptr %i.br, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d
  %.2120 = phi i64 [ %.5, %bb.m ], [ %.0163, %bb.d ]
  %.399 = phi i64 [ %spec.select, %bb.m ], [ %.096164, %bb.d ]
  %.088 = phi i64 [ %i.au, %bb.m ], [ %i.x, %bb.d ] ; 3 uses
  %.386 = phi ptr [ %.184, %bb.m ], [ %.083166, %bb.d ]
  %.381 = phi i32 [ %.179, %bb.m ], [ %.078167, %bb.d ]
  %.3 = phi i8 [ %.1, %bb.m ], [ %.077168, %bb.d ]
  %i.bs = load i32, ptr %i.h, align 4
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = call i32 @qcow2_check_metadata_overlap(ptr noundef %0, i32 noundef 0, i64 noundef %.088, i64 noundef %i.bt) ; 4 uses
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %.loopexit141, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i117 = icmp eq i32 %i.bu, 0
  br i1 %.not.i117, label %qcow2_pre_write_overlap_check.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = call range(i32 0, 31) i32 @llvm.cttz.i32(i32 range(i32 1, -2147483648) %i.bu, i1 true)
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr @metadata_ol_names, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8
  call void (ptr, i1, i64, i64, ptr, ...) @qcow2_signal_corruption(ptr noundef %0, i1 noundef zeroext true, i64 noundef %.088, i64 noundef %i.bt, ptr noundef nonnull @.str.33, ptr noundef %i.bz) #15
  br label %.loopexit141

.loopexit141:                                     ; preds = %bb.n, %bb.p
  %.0.i.ph = phi i32 [ -5, %bb.p ], [ %i.bu, %bb.n ] ; 2 uses
  %i.ca = sub i32 0, %.0.i.ph
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef 2588, ptr noundef nonnull @__func__.rebuild_refcounts_write_refblocks, i32 noundef %i.ca, ptr noundef nonnull @.str.97) #15
  br label %.thread

qcow2_pre_write_overlap_check.exit:               ; preds = %bb.o
  %i.cb = load ptr, ptr %1, align 8
  %i.cc = load i32, ptr %i.h, align 4
  %i.cd = sext i32 %i.cc to i64                   ; 3 uses
  %i.ce = mul i64 %i.s, %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 %i.ce
  %i.cg = load ptr, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store ptr %i.j, ptr %8, align 8
  store <4 x i32> <i32 1, i32 0, i32 -1, i32 0>, ptr %i.k, align 8
  store ptr %i.cf, ptr %i.j, align 8
  store i64 %i.cd, ptr %i.l, align 8
  call void @assert_bdrv_graph_readable() #15
  %i.ch = call i32 @bdrv_co_pwritev(ptr noundef %i.cg, i64 noundef %.088, i64 noundef %i.cd, ptr noundef nonnull %8, i32 noundef 0) #15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %bb.q, label %bb.r

bb.q:                                             ; preds = %qcow2_pre_write_overlap_check.exit
  %i.cj = sub i32 0, %i.ch
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef 2604, ptr noundef nonnull @__func__.rebuild_refcounts_write_refblocks, i32 noundef %i.cj, ptr noundef nonnull @.str.97) #15
  br label %.thread

bb.r:                                             ; preds = %qcow2_pre_write_overlap_check.exit
  %i.ck = load i32, ptr %i.m, align 4
  %i.cl = sext i32 %i.ck to i64
  %i.cm = add i64 %i.t, -1
  %i.cn = add i64 %i.cm, %i.cl
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.r
  %.3121 = phi i64 [ %.0163, %bb.b ], [ %.2120, %bb.r ]
  %.4100 = phi i64 [ %.096164, %bb.b ], [ %.399, %bb.r ] ; 2 uses
  %.190 = phi i64 [ %.089165, %bb.b ], [ %i.cn, %bb.r ]
  %.487 = phi ptr [ %.083166, %bb.b ], [ %.386, %bb.r ]
  %.482 = phi i32 [ %.078167, %bb.b ], [ %.381, %bb.r ]
  %.4 = phi i8 [ %.077168, %bb.b ], [ %.3, %bb.r ] ; 2 uses
  %i.co = add i64 %.190, 1                        ; 2 uses
  %i.cp = icmp slt i64 %i.co, %.4100
  br i1 %i.cp, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !81

._crit_edge.loopexit:                             ; preds = %bb.s
  %i.cq = zext nneg i8 %.4 to i32
  br label %.thread

.thread:                                          ; preds = %bb.a, %._crit_edge.loopexit, %bb.i, %.loopexit, %bb.q, %.loopexit141
  %.495 = phi i32 [ %.0.i.ph, %.loopexit141 ], [ %i.ch, %bb.q ], [ %.040.i127, %.loopexit ], [ -12, %bb.i ], [ 0, %bb.a ], [ %i.cq, %._crit_edge.loopexit ]
  ret i32 %.495
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal i32 @bdrv_co_pwrite(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #5 {
bb.a:
  %5 = alloca %struct.QEMUIOVector, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.a, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <4 x i32> <i32 1, i32 0, i32 -1, i32 0>, ptr %i.b, align 8
  store ptr %3, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %2, ptr %i.c, align 8
  call void @assert_bdrv_graph_readable() #15
  %i.d = call i32 @bdrv_co_pwritev(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %5, i32 noundef %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i32 %i.d
}

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @bdrv_co_pwritev(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #4

declare i32 @qcow2_write_l1_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

declare zeroext i1 @buffer_is_zero_ool(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -5, -511) i64 @get_refblock_offset(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.val = load i32, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val13 = load i32, ptr %i.c, align 8
  %i.d = add i32 %.val13, %.val
  %i.e = zext nneg i32 %i.d to i64
  %i.f = lshr i64 %1, %i.e                        ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp ugt i32 %i.i, %i.g
  br i1 %i.j, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = and i64 %i.f, 4294967295
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, -512                       ; 2 uses
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  tail call void (ptr, i1, i64, i64, ptr, ...) @qcow2_signal_corruption(ptr noundef nonnull %0, i1 noundef zeroext true, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.123, i64 noundef %1) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.011 = phi i64 [ -5, %.thread ], [ %i.p, %bb.b ]
  ret i64 %.011
}

declare ptr @qemu_coroutine_self() local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #11

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = distinct !{!2, !13}
!3 = distinct !{!3, !13}
!4 = distinct !{null}
!5 = distinct !{!5, !13}
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"auto-init"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{ptr @qcow2_free_clusters}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = !{i8 0, i8 2}
!20 = !{}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13, !15, !16}
!23 = distinct !{!23, !13, !16, !15}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13, !15, !16}
!27 = distinct !{!27, !13, !16, !15}
!28 = distinct !{!28, !13, !15, !16}
!29 = distinct !{!29, !13, !16, !15}
!30 = distinct !{null}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13, !15, !16}
!38 = distinct !{!38, !13, !16, !15}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13, !15, !16}
!43 = distinct !{!43, !13, !16, !15}
!44 = distinct !{!44, !13, !15, !16}
!45 = distinct !{!45, !13, !16, !15}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13, !15, !16}
!52 = distinct !{!52, !13, !16, !15}
!53 = distinct !{!53, !13, !15, !16}
!54 = distinct !{!54, !13, !16, !15}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = !{ptr @qcow2_get_refcount}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = !{ptr @alloc_refblock, ptr @flush_refblock}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13, !15, !16}
!77 = distinct !{!77, !13, !16, !15}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
end_hunk_1
