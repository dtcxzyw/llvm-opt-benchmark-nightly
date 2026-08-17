inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rlc_lte_stat_init:bb.a
bb.a:
  %i.a = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(15) @.str.2, i64 noundef 14) #7
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr i8, ptr %0, i64 14
  %.021 = select i1 %i.b, ptr %i.c, ptr null
  %i.d = tail call noalias dereferenceable_or_null(32) ptr @g_malloc0(i64 noundef 32) #8 ; 3 uses
  store ptr null, ptr %i.d, align 8
  %i.e = tail call ptr @register_tap_listener(ptr noundef nonnull @.str.3, ptr noundef %i.d, ptr noundef %.021, i32 noundef 0, ptr noundef nonnull @rlc_lte_stat_reset, ptr noundef nonnull @rlc_lte_stat_packet, ptr noundef nonnull @rlc_lte_stat_draw, ptr noundef nonnull @rlc_lte_stat_finish) ; 2 uses
  %.not = icmp eq ptr %i.e, null                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @g_string_free(ptr noundef nonnull %i.e, i32 noundef 1) ; 0 uses
  tail call void @g_free(ptr noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @register_tap_listener(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rlc_lte_stat_reset(ptr noundef initializes((8, 12)) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(16) %i.c, i8 noundef 0, i64 noundef 16, i1 noundef false) #9
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.010, align 8             ; 2 uses
  tail call void @g_free(ptr noundef nonnull %.010)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 2) i32 @rlc_lte_stat_packet(ptr nofree noundef captures(address_is_null) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 %4) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread92, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %3, i64 6
  %i.e = load i16, ptr %i.d, align 2
  switch i16 %i.e, label %bb.e [
    i16 2, label %bb.c
    i16 6, label %bb.c
    i16 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4
  %i.i = getelementptr i8, ptr %3, i64 10
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = add i32 %i.m, %i.k
  store i32 %i.n, ptr %i.l, align 8
  br label %.thread92

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4
  %i.r = getelementptr i8, ptr %3, i64 10
  %i.s = load i16, ptr %i.r, align 2
  %i.t = zext i16 %i.s to i32
  %i.u = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = add i32 %i.v, %i.t
  store i32 %i.w, ptr %i.u, align 8
  br label %.thread92

bb.e:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %0, align 8                ; 2 uses
  %.not74 = icmp eq ptr %i.x, null
  br i1 %.not74, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.y = load i8, ptr %3, align 8
  %i.z = getelementptr i8, ptr %3, i64 4          ; 2 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %.thread96, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call noalias dereferenceable_or_null(128) ptr @g_malloc(i64 noundef 128) #8 ; 10 uses
  %.not33.i = icmp eq ptr %i.aa, null
  br i1 %.not33.i, label %.thread96, label %bb.p

bb.h:                                             ; preds = %.preheader, %bb.j
  %.068100 = phi ptr [ %i.x, %.preheader ], [ %i.ai, %bb.j ] ; 4 uses
  %i.ab = getelementptr i8, ptr %.068100, i64 8
  %i.ac = load i8, ptr %i.ab, align 8
  %i.ad = icmp eq i8 %i.ac, %i.y
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %.068100, i64 10
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = load i16, ptr %i.z, align 4
  %i.ah = icmp eq i16 %i.af, %i.ag
  br i1 %i.ah, label %.thread88, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ai = load ptr, ptr %.068100, align 8         ; 2 uses
  %.not75 = icmp eq ptr %i.ai, null
  br i1 %.not75, label %bb.k, label %bb.h, !llvm.loop !9

bb.k:                                             ; preds = %bb.j
  %.not.i81 = icmp eq ptr %3, null
  br i1 %.not.i81, label %.thread92, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call noalias dereferenceable_or_null(128) ptr @g_malloc(i64 noundef 128) #8 ; 10 uses
  %.not33.i82 = icmp eq ptr %i.aj, null
  br i1 %.not33.i82, label %.thread92, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load i8, ptr %3, align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 8
  store i8 %i.ak, ptr %i.al, align 8
  %i.am = load i16, ptr %i.z, align 4
  %i.an = getelementptr i8, ptr %i.aj, i64 10
  store i16 %i.am, ptr %i.an, align 2
  %i.ao = getelementptr i8, ptr %i.aj, i64 16
  store i32 0, ptr %i.ao, align 8
  %i.ap = getelementptr i8, ptr %i.aj, i64 20
  store i32 0, ptr %i.ap, align 4
  %i.aq = getelementptr i8, ptr %i.aj, i64 80
  %i.ar = getelementptr i8, ptr %i.aj, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %i.ar, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(44) %i.aq, i8 0, i64 44, i1 false)
  %i.as = load ptr, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.0 = phi ptr [ %i.as, %bb.m ], [ %i.at, %bb.n ] ; 2 uses
  %i.at = load ptr, ptr %.0, align 8              ; 2 uses
  %.not77 = icmp eq ptr %i.at, null
  br i1 %.not77, label %bb.o, label %bb.n, !llvm.loop !10

bb.o:                                             ; preds = %bb.n
  store ptr %i.aj, ptr %.0, align 8
  store ptr null, ptr %i.aj, align 8
  br label %.thread88

.thread96:                                        ; preds = %bb.f, %bb.g
  store ptr null, ptr %0, align 8
  br label %.thread92

bb.p:                                             ; preds = %bb.g
  %i.au = load i8, ptr %3, align 8
  %i.av = getelementptr i8, ptr %i.aa, i64 8
  store i8 %i.au, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %3, i64 4
  %i.ax = load i16, ptr %i.aw, align 4
  %i.ay = getelementptr i8, ptr %i.aa, i64 10
  store i16 %i.ax, ptr %i.ay, align 2
  %i.az = getelementptr i8, ptr %i.aa, i64 16
  store i32 0, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %i.aa, i64 20
  store i32 0, ptr %i.ba, align 4
  %i.bb = getelementptr i8, ptr %i.aa, i64 80
  %i.bc = getelementptr i8, ptr %i.aa, i64 56
  store ptr null, ptr %i.aa, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %i.bc, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(44) %i.bb, i8 0, i64 44, i1 false)
  store ptr %i.aa, ptr %0, align 8
  br label %.thread88

.thread88:                                        ; preds = %bb.i, %bb.o, %bb.p
  %.191 = phi ptr [ %i.aa, %bb.p ], [ %i.aj, %bb.o ], [ %.068100, %bb.i ] ; 15 uses
  %i.bd = getelementptr i8, ptr %3, i64 4
  %i.be = load i16, ptr %i.bd, align 4
  %i.bf = getelementptr i8, ptr %.191, i64 10
  store i16 %i.be, ptr %i.bf, align 2
  %i.bg = getelementptr i8, ptr %3, i64 2         ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 2
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.thread88
  %i.bj = getelementptr i8, ptr %.191, i64 16     ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8            ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr i8, ptr %.191, i64 24
  %i.bn = getelementptr i8, ptr %3, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bm, ptr noundef align 8 dereferenceable(16) %i.bn, i64 16, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bo = getelementptr i8, ptr %.191, i64 40
  %i.bp = getelementptr i8, ptr %3, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bo, ptr noundef align 8 dereferenceable(16) %i.bp, i64 16, i1 false)
  %i.bq = add i32 %i.bk, 1
  store i32 %i.bq, ptr %i.bj, align 8
  %5 = getelementptr i8, ptr %3, i64 10
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %.191, i64 20        ; 2 uses
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  store i32 %10, ptr %8, align 4
  br label %bb.w

bb.t:                                             ; preds = %.thread88
  %i.br = getelementptr i8, ptr %.191, i64 68     ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4            ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr i8, ptr %.191, i64 80
  %i.bv = getelementptr i8, ptr %3, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bu, ptr noundef align 8 dereferenceable(16) %i.bv, i64 16, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bw = getelementptr i8, ptr %.191, i64 96
  %i.bx = getelementptr i8, ptr %3, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bw, ptr noundef align 8 dereferenceable(16) %i.bx, i64 16, i1 false)
  %i.by = add i32 %i.bs, 1
  store i32 %i.by, ptr %i.br, align 4
  %11 = getelementptr i8, ptr %3, i64 10
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %.191, i64 72       ; 2 uses
  %15 = load i32, ptr %14, align 8
  %16 = add i32 %15, %13
  store i32 %16, ptr %14, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.bz = load i8, ptr %i.bg, align 2
  %i.ca = icmp eq i8 %i.bz, 0
  %i.cb = getelementptr i8, ptr %3, i64 41
  %i.cc = load i8, ptr %i.cb, align 1
  %.not80 = icmp eq i8 %i.cc, 0                   ; 2 uses
  br i1 %i.ca, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  br i1 %.not80, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = getelementptr i8, ptr %.191, i64 56     ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cg = getelementptr i8, ptr %3, i64 48
  %i.ch = load i16, ptr %i.cg, align 8
  %i.ci = zext i16 %i.ch to i32
  %i.cj = getelementptr i8, ptr %.191, i64 60     ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = add i32 %i.ck, %i.ci
  store i32 %i.cl, ptr %i.cj, align 4
  %i.cm = getelementptr i8, ptr %3, i64 2100
  %i.cn = load i16, ptr %i.cm, align 4
  %i.co = zext i16 %i.cn to i32
  %i.cp = getelementptr i8, ptr %.191, i64 64     ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = add i32 %i.cq, %i.co
  store i32 %i.cr, ptr %i.cp, align 8
  br label %.thread92

bb.aa:                                            ; preds = %bb.w
  br i1 %.not80, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cs = getelementptr i8, ptr %.191, i64 112    ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cv = getelementptr i8, ptr %3, i64 48
  %i.cw = load i16, ptr %i.cv, align 8
  %i.cx = zext i16 %i.cw to i32
  %i.cy = getelementptr i8, ptr %.191, i64 116    ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = add i32 %i.cz, %i.cx
  store i32 %i.da, ptr %i.cy, align 4
  %i.db = getelementptr i8, ptr %3, i64 2100
  %i.dc = load i16, ptr %i.db, align 4
  %i.dd = zext i16 %i.dc to i32
  %i.de = getelementptr i8, ptr %.191, i64 120    ; 2 uses
  %i.df = load i32, ptr %i.de, align 8
  %i.dg = add i32 %i.df, %i.dd
  store i32 %i.dg, ptr %i.de, align 8
  br label %.thread92

.thread92:                                        ; preds = %bb.k, %bb.l, %.thread96, %bb.z, %bb.ac, %bb.a, %bb.d, %bb.c
  %.066 = phi i32 [ 0, %.thread96 ], [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.ac ], [ 1, %bb.z ], [ 0, %bb.l ], [ 0, %bb.k ]
  ret i32 %.066
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @rlc_lte_stat_draw(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.4) ; 0 uses
  %i.c = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.5) ; 0 uses
  %i.d = getelementptr i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %i.l = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k) ; 0 uses
  %.not45 = icmp eq ptr %i.a, null                ; 2 uses
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.047 = phi i16 [ %i.n, %.lr.ph ], [ 0, %bb.a ]
  %.03846 = phi ptr [ %i.m, %.lr.ph ], [ %i.a, %bb.a ]
  %i.m = load ptr, ptr %.03846, align 8           ; 2 uses
  %i.n = add i16 %.047, 1                         ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !11

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.o = zext i16 %i.n to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %._crit_edge.loopexit ]
  %i.p = getelementptr i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %.0.lcssa, i32 noundef %i.q) ; 0 uses
  %i.s = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.8) ; 0 uses
  %i.t = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14) ; 0 uses
  %i.u = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.15) ; 0 uses
  %i.v = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.16) ; 0 uses
  %i.w = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.17) ; 0 uses
  %i.x = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.18) ; 0 uses
  %i.y = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.19) ; 0 uses
  %i.z = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.20) ; 0 uses
  %i.aa = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.21) ; 0 uses
  %i.ab = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.22) ; 0 uses
  %i.ac = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.23) ; 0 uses
  %i.ad = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.24) ; 0 uses
  %i.ae = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.25) ; 0 uses
  %i.af = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.26) ; 0 uses
  %i.ag = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.27) ; 0 uses
  %i.ah = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.10) ; 0 uses
  br i1 %.not45, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %._crit_edge, %calculate_bw.exit44
  %.150 = phi ptr [ %i.dk, %calculate_bw.exit44 ], [ %i.a, %._crit_edge ] ; 21 uses
  %i.ai = getelementptr i8, ptr %.150, i64 8
  %i.aj = getelementptr i8, ptr %.150, i64 24     ; 2 uses
  %i.ak = getelementptr i8, ptr %.150, i64 40     ; 2 uses
  %i.al = getelementptr i8, ptr %.150, i64 20
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = load i128, ptr %i.aj, align 1
  %i.ao = load i128, ptr %i.ak, align 1
  %i.ap = icmp ne i128 %i.an, %i.ao
  %i.aq = zext i1 %i.ap to i32
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %calculate_bw.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph52
  %i.ar = load i64, ptr %i.ak, align 8
  %i.as = sitofp i64 %i.ar to float
  %i.at = load i64, ptr %i.aj, align 8
  %i.au = sitofp i64 %i.at to float
  %i.av = fsub float %i.as, %i.au
  %i.aw = getelementptr i8, ptr %.150, i64 48
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = sitofp i32 %i.ax to float
  %i.az = getelementptr i8, ptr %.150, i64 32
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = sitofp i32 %i.ba to float
  %i.bc = fsub float %i.ay, %i.bb
  %i.bd = fdiv float %i.bc, 1.000000e+06
  %i.be = tail call float @llvm.fmuladd.f32(float %i.av, float 1.000000e+03, float %i.bd) ; 2 uses
  %i.bf = fcmp olt float %i.be, 2.000000e+00
  %i.bg = shl i32 %i.am, 3
  %i.bh = uitofp i32 %i.bg to float
  %i.bi = fdiv float %i.bh, %i.be
  %i.bj = fdiv float %i.bi, 1.000000e+03
  %.0.i = select i1 %i.bf, float 0.000000e+00, float %i.bj
  %i.bk = fpext float %.0.i to double
  br label %calculate_bw.exit

calculate_bw.exit:                                ; preds = %.lr.ph52, %bb.b
  %.1.i = phi double [ %i.bk, %bb.b ], [ 0.000000e+00, %.lr.ph52 ]
  %i.bl = getelementptr i8, ptr %.150, i64 80     ; 2 uses
  %i.bm = getelementptr i8, ptr %.150, i64 96     ; 2 uses
  %i.bn = getelementptr i8, ptr %.150, i64 72
  %i.bo = load i32, ptr %i.bn, align 8            ; 2 uses
  %i.bp = load i128, ptr %i.bl, align 1
  %i.bq = load i128, ptr %i.bm, align 1
  %i.br = icmp ne i128 %i.bp, %i.bq
  %i.bs = zext i1 %i.br to i32
  %.not.i41 = icmp eq i32 %i.bs, 0
  br i1 %.not.i41, label %calculate_bw.exit44, label %bb.c

bb.c:                                             ; preds = %calculate_bw.exit
  %i.bt = load i64, ptr %i.bm, align 8
  %i.bu = sitofp i64 %i.bt to float
  %i.bv = load i64, ptr %i.bl, align 8
  %i.bw = sitofp i64 %i.bv to float
  %i.bx = fsub float %i.bu, %i.bw
  %i.by = getelementptr i8, ptr %.150, i64 104
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = sitofp i32 %i.bz to float
  %i.cb = getelementptr i8, ptr %.150, i64 88
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = sitofp i32 %i.cc to float
  %i.ce = fsub float %i.ca, %i.cd
  %i.cf = fdiv float %i.ce, 1.000000e+06
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.bx, float 1.000000e+03, float %i.cf) ; 2 uses
  %i.ch = fcmp olt float %i.cg, 2.000000e+00
  %i.ci = shl i32 %i.bo, 3
  %i.cj = uitofp i32 %i.ci to float
  %i.ck = fdiv float %i.cj, %i.cg
  %i.cl = fdiv float %i.ck, 1.000000e+03
  %.0.i42 = select i1 %i.ch, float 0.000000e+00, float %i.cl
  %i.cm = fpext float %.0.i42 to double
  br label %calculate_bw.exit44

calculate_bw.exit44:                              ; preds = %calculate_bw.exit, %bb.c
  %.1.i43 = phi double [ %i.cm, %bb.c ], [ 0.000000e+00, %calculate_bw.exit ]
  %i.cn = load i8, ptr %i.ai, align 8
  %i.co = icmp eq i8 %i.cn, 0
  %i.cp = select i1 %i.co, ptr @.str.12, ptr @.str.13
  %i.cq = getelementptr i8, ptr %.150, i64 10
end_hunk_0
