inline.NumInlined: 85
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@vlv_dsi_pll_compute:bb.a
bb.k:                                             ; preds = %.preheader.i
  %i.ak = udiv i32 %i.af, %i.ab                   ; 2 uses
  %i.al = sub nsw i32 %i.m, %i.ak
  %i.am = tail call i32 @llvm.abs.i32(i32 %i.al, i1 true) ; 2 uses
  %i.an = icmp samesign ult i32 %i.am, %.2.i      ; 2 uses
  %.260.i.1 = select i1 %i.an, i32 %.05073.i, i32 %.260.i ; 2 uses
  %.257.i.1 = select i1 %i.an, i32 3, i32 %.257.i ; 2 uses
  %.2.i.1 = tail call i32 @llvm.umin.i32(i32 %i.am, i32 %.2.i) ; 3 uses
  %.not46 = icmp eq i32 %i.m, %i.ak
  br i1 %.not46, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = lshr i32 %i.af, %i.ac                   ; 2 uses
  %i.ap = sub nsw i32 %i.m, %i.ao
  %i.aq = tail call i32 @llvm.abs.i32(i32 %i.ap, i1 true) ; 2 uses
  %i.ar = icmp samesign ult i32 %i.aq, %.2.i.1    ; 2 uses
  %.260.i.2 = select i1 %i.ar, i32 %.05073.i, i32 %.260.i.1 ; 2 uses
  %.257.i.2 = select i1 %i.ar, i32 4, i32 %.257.i.1 ; 2 uses
  %.2.i.2 = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 %.2.i.1) ; 3 uses
  %.not47 = icmp eq i32 %i.m, %i.ao
  br i1 %.not47, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = udiv i32 %i.af, %i.ad                   ; 2 uses
  %i.at = sub nsw i32 %i.m, %i.as
  %i.au = tail call i32 @llvm.abs.i32(i32 %i.at, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %i.au, %.2.i.2    ; 2 uses
  %.260.i.3 = select i1 %i.av, i32 %.05073.i, i32 %.260.i.2 ; 2 uses
  %.257.i.3 = select i1 %i.av, i32 5, i32 %.257.i.2 ; 2 uses
  %.2.i.3 = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %.2.i.2) ; 3 uses
  %.not48 = icmp eq i32 %i.m, %i.as
  br i1 %.not48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = udiv i32 %i.af, %i.ae                   ; 2 uses
  %i.ax = sub nsw i32 %i.m, %i.aw
  %i.ay = tail call i32 @llvm.abs.i32(i32 %i.ax, i1 true) ; 2 uses
  %i.az = icmp samesign ult i32 %i.ay, %.2.i.3    ; 2 uses
  %.260.i.4 = select i1 %i.az, i32 %.05073.i, i32 %.260.i.3
  %.257.i.4 = select i1 %i.az, i32 6, i32 %.257.i.3
  %.2.i.4 = tail call i32 @llvm.umin.i32(i32 %i.ay, i32 %.2.i.3)
  %i.ba = icmp ne i32 %i.m, %i.aw
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %.preheader.i
  %.260.i.lcssa = phi i32 [ %.260.i, %.preheader.i ], [ %.260.i.1, %bb.k ], [ %.260.i.2, %bb.l ], [ %.260.i.3, %bb.m ], [ %.260.i.4, %bb.n ] ; 2 uses
  %.257.i.lcssa = phi i32 [ %.257.i, %.preheader.i ], [ %.257.i.1, %bb.k ], [ %.257.i.2, %bb.l ], [ %.257.i.3, %bb.m ], [ %.257.i.4, %bb.n ] ; 2 uses
  %.2.i.lcssa = phi i32 [ %.2.i, %.preheader.i ], [ %.2.i.1, %bb.k ], [ %.2.i.2, %bb.l ], [ %.2.i.3, %bb.m ], [ %.2.i.4, %bb.n ]
  %.lcssa = phi i1 [ false, %.preheader.i ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ %i.ba, %bb.n ]
  %i.bb = add nuw nsw i32 %.05073.i, 1
  %i.bc = icmp samesign ult i32 %.05073.i, %.64.i
  %i.bd = and i1 %i.bc, %.lcssa
  br i1 %i.bd, label %.preheader.i, label %._crit_edge.loopexit.i, !llvm.loop !10

._crit_edge.loopexit.i:                           ; preds = %bb.o
  %i.be = add i32 %.257.i.lcssa, 15
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.j
  %.058.lcssa.i = phi i32 [ %.65.i, %bb.j ], [ %.260.i.lcssa, %._crit_edge.loopexit.i ]
  %.055.lcssa.i = phi i32 [ 17, %bb.j ], [ %i.be, %._crit_edge.loopexit.i ]
  %i.bf = shl nuw i32 1, %.055.lcssa.i            ; 3 uses
  %i.bg = getelementptr i8, ptr %1, i64 1224      ; 3 uses
  store i32 %i.bf, ptr %i.bg, align 8
  %i.bh = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 1, 5) %.63.i, i32 -1) #6, !srcloc !12
  %i.bi = shl i32 %i.bh, 16
  %i.bj = add i32 %.058.lcssa.i, -62
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr [2 x i8], ptr @lfsr_converts, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = zext i16 %i.bm to i32
  %i.bo = or disjoint i32 %i.bi, %i.bn            ; 2 uses
  %i.bp = getelementptr i8, ptr %1, i64 1228
  store i32 %i.bo, ptr %i.bp, align 4
  %i.bq = getelementptr i8, ptr %0, i64 672       ; 2 uses
  %i.br = load i16, ptr %i.bq, align 8            ; 2 uses
  %i.bs = and i16 %i.br, 1
  %.not31 = icmp eq i16 %i.bs, 0
  br i1 %.not31, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.i, %bb.h
  %i.bt = phi ptr [ %i.q, %bb.i ], [ null, %bb.h ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bt, ptr noundef nonnull @.str.11) #7
  %i.bu = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i34 = icmp eq ptr %i.bu, null
  br i1 %.not.i34, label %__drm_to_dev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.p, %bb.q
  %i.bx = phi ptr [ %i.bw, %bb.q ], [ null, %bb.p ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bx, i32 noundef 2, ptr noundef nonnull @.str) #5
  br label %bb.v

bb.r:                                             ; preds = %._crit_edge.i
  %i.by = or i32 %i.bf, 256                       ; 2 uses
  store i32 %i.by, ptr %i.bg, align 8
  %.pre = load i16, ptr %i.bq, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i
  %i.bz = phi i32 [ %i.by, %bb.r ], [ %i.bf, %._crit_edge.i ]
  %i.ca = phi i16 [ %.pre, %bb.r ], [ %i.br, %._crit_edge.i ]
  %i.cb = shl i16 %i.ca, 5
  %i.cc = and i16 %i.cb, 128
  %i.cd = zext nneg i16 %i.cc to i32
  %spec.select = or i32 %i.bz, %i.cd
  %i.ce = or i32 %spec.select, -2147483648        ; 2 uses
  store i32 %i.ce, ptr %i.bg, align 8
  %i.cf = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i35 = icmp eq ptr %i.cf, null
  br i1 %.not.i35, label %__drm_to_dev.exit36, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  br label %__drm_to_dev.exit36

__drm_to_dev.exit36:                              ; preds = %bb.s, %bb.t
  %i.ci = phi ptr [ %i.ch, %bb.t ], [ null, %bb.s ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ci, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %i.bo, i32 noundef %i.ce) #5
  %i.cj = tail call fastcc i32 @vlv_dsi_pclk(ptr noundef %0, ptr noundef %1) #8, !srcloc !13 ; 3 uses
  %i.ck = getelementptr i8, ptr %1, i64 1320
  store i32 %i.cj, ptr %i.ck, align 8
  %i.cl = getelementptr i8, ptr %1, i64 644       ; 2 uses
  store i32 %i.cj, ptr %i.cl, align 4
  %i.cm = getelementptr i8, ptr %0, i64 705
  %i.cn = load i8, ptr %i.cm, align 1
  %.not33 = icmp eq i8 %i.cn, 0
  br i1 %.not33, label %bb.v, label %bb.u

bb.u:                                             ; preds = %__drm_to_dev.exit36
  %i.co = shl i32 %i.cj, 1
  store i32 %i.co, ptr %i.cl, align 4
  br label %bb.v

bb.v:                                             ; preds = %__drm_to_dev.exit36, %bb.u, %__drm_to_dev.exit
  %.0 = phi i32 [ -44, %__drm_to_dev.exit ], [ 0, %bb.u ], [ 0, %__drm_to_dev.exit36 ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__drm_to_display(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @vlv_dsi_pclk(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 692
  %i.e = load i32, ptr %i.d, align 4
  switch i32 %i.e, label %bb.g [
    i32 4, label %mipi_dsi_pixel_format_to_bpp.exit
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  br label %mipi_dsi_pixel_format_to_bpp.exit

bb.e:                                             ; preds = %bb.c
  br label %mipi_dsi_pixel_format_to_bpp.exit

bb.f:                                             ; preds = %bb.c
  br label %mipi_dsi_pixel_format_to_bpp.exit

bb.g:                                             ; preds = %bb.c
  br label %mipi_dsi_pixel_format_to_bpp.exit

mipi_dsi_pixel_format_to_bpp.exit:                ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i44 = phi i32 [ -22, %bb.g ], [ 16, %bb.f ], [ 24, %bb.d ], [ 18, %bb.e ], [ 30, %bb.c ] ; 2 uses
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 134217728
  %.not41 = icmp eq i64 %i.h, 0
  %i.i = select i1 %.not41, i32 25000, i32 100000
  %i.j = getelementptr i8, ptr %1, i64 1228
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = lshr i32 %i.k, 16
  %i.m = and i32 %i.l, 3
  %i.n = getelementptr i8, ptr %1, i64 1224
  %i.o = load i32, ptr %i.n, align 8
  %i.p = lshr i32 %i.o, 15
  %i.q = and i32 %i.p, 2044
  %i.r = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 2045) %i.q, i32 -1) #6, !srcloc !14 ; 2 uses
  %i.s = add i32 %i.r, 1
  %.not43 = icmp ult i32 %i.s, 2
  br i1 %.not43, label %bb.h, label %.preheader.preheader

.preheader.preheader:                             ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  %i.t = and i32 %i.k, 511
  switch i32 %i.t, label %bb.j [
    i32 426, label %.thread
    i32 469, label %.thread.fold.split
    i32 234, label %.thread.fold.split56
    i32 373, label %.thread.fold.split57
    i32 442, label %.thread.fold.split58
    i32 221, label %.thread.fold.split59
    i32 110, label %.thread.fold.split60
    i32 311, label %.thread.fold.split61
    i32 411, label %.thread.fold.split62
    i32 461, label %.thread.fold.split63
    i32 486, label %.thread.fold.split64
    i32 243, label %.thread.fold.split65
    i32 377, label %.thread.fold.split66
    i32 188, label %.thread.fold.split67
    i32 350, label %.thread.fold.split68
    i32 175, label %.thread.fold.split69
    i32 343, label %.thread.fold.split70
    i32 427, label %.thread.fold.split71
    i32 213, label %.thread.fold.split72
    i32 106, label %.thread.fold.split73
    i32 53, label %.thread.fold.split74
    i32 282, label %.thread.fold.split75
    i32 397, label %.thread.fold.split76
    i32 454, label %.thread.fold.split77
    i32 227, label %.thread.fold.split78
    i32 113, label %.thread.fold.split79
    i32 56, label %.thread.fold.split80
    i32 284, label %.thread.fold.split81
    i32 142, label %.thread.fold.split82
    i32 71, label %.thread.fold.split83
    i32 35, label %.thread.fold.split84
    i32 273, label %.thread.fold.split85
    i32 136, label %.thread.fold.split86
    i32 324, label %.thread.fold.split87
    i32 418, label %.thread.fold.split88
    i32 465, label %.thread.fold.split89
    i32 488, label %.thread.fold.split90
    i32 500, label %.thread.fold.split91
    i32 506, label %.thread.fold.split92
  ]

bb.h:                                             ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  %i.u = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ %i.w, %bb.i ], [ null, %bb.h ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.x, ptr noundef nonnull @.str.12) #7
  br label %bb.l

bb.j:                                             ; preds = %.preheader.preheader
  %i.y = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i45 = icmp eq ptr %i.y, null
  br i1 %.not.i45, label %__drm_to_dev.exit46, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  br label %__drm_to_dev.exit46

__drm_to_dev.exit46:                              ; preds = %bb.j, %bb.k
  %i.ab = phi ptr [ %i.aa, %bb.k ], [ null, %bb.j ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ab, ptr noundef nonnull @.str.13) #7
  br label %bb.l

.thread.fold.split:                               ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split56:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split57:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split58:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split59:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split60:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split61:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split62:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split63:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split64:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split65:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split66:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split67:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split68:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split69:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split70:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split71:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split72:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split73:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split74:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split75:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split76:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split77:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split78:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split79:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split80:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split81:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split82:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split83:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split84:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split85:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split86:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split87:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split88:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split89:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split90:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split91:                             ; preds = %.preheader.preheader
  br label %.thread

.thread.fold.split92:                             ; preds = %.preheader.preheader
  br label %.thread

.thread:                                          ; preds = %.preheader.preheader, %.thread.fold.split92, %.thread.fold.split91, %.thread.fold.split90, %.thread.fold.split89, %.thread.fold.split88, %.thread.fold.split87, %.thread.fold.split86, %.thread.fold.split85, %.thread.fold.split84, %.thread.fold.split83, %.thread.fold.split82, %.thread.fold.split81, %.thread.fold.split80, %.thread.fold.split79, %.thread.fold.split78, %.thread.fold.split77, %.thread.fold.split76, %.thread.fold.split75, %.thread.fold.split74, %.thread.fold.split73, %.thread.fold.split72, %.thread.fold.split71, %.thread.fold.split70, %.thread.fold.split69, %.thread.fold.split68, %.thread.fold.split67, %.thread.fold.split66, %.thread.fold.split65, %.thread.fold.split64, %.thread.fold.split63, %.thread.fold.split62, %.thread.fold.split61, %.thread.fold.split60, %.thread.fold.split59, %.thread.fold.split58, %.thread.fold.split57, %.thread.fold.split56, %.thread.fold.split
  %.03649.lcssa.wide = phi i32 [ 62, %.preheader.preheader ], [ 99, %.thread.fold.split91 ], [ 63, %.thread.fold.split ], [ 64, %.thread.fold.split56 ], [ 65, %.thread.fold.split57 ], [ 66, %.thread.fold.split58 ], [ 67, %.thread.fold.split59 ], [ 68, %.thread.fold.split60 ], [ 69, %.thread.fold.split61 ], [ 70, %.thread.fold.split62 ], [ 71, %.thread.fold.split63 ], [ 72, %.thread.fold.split64 ], [ 73, %.thread.fold.split65 ], [ 74, %.thread.fold.split66 ], [ 75, %.thread.fold.split67 ], [ 76, %.thread.fold.split68 ], [ 77, %.thread.fold.split69 ], [ 78, %.thread.fold.split70 ], [ 79, %.thread.fold.split71 ], [ 80, %.thread.fold.split72 ], [ 81, %.thread.fold.split73 ], [ 82, %.thread.fold.split74 ], [ 83, %.thread.fold.split75 ], [ 84, %.thread.fold.split76 ], [ 85, %.thread.fold.split77 ], [ 86, %.thread.fold.split78 ], [ 87, %.thread.fold.split79 ], [ 88, %.thread.fold.split80 ], [ 89, %.thread.fold.split81 ], [ 90, %.thread.fold.split82 ], [ 91, %.thread.fold.split83 ], [ 92, %.thread.fold.split84 ], [ 93, %.thread.fold.split85 ], [ 94, %.thread.fold.split86 ], [ 95, %.thread.fold.split87 ], [ 96, %.thread.fold.split88 ], [ 97, %.thread.fold.split89 ], [ 98, %.thread.fold.split90 ], [ 100, %.thread.fold.split92 ]
  %i.ac = mul nuw nsw i32 %.03649.lcssa.wide, %i.i
  %i.ad = shl i32 %i.r, %i.m
  %i.ae = udiv i32 %i.ac, %i.ad
  %i.af = getelementptr i8, ptr %0, i64 684
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = mul i32 %i.ag, %i.ae
  %i.ai = ashr exact i32 %.0.i44, 1
  %i.aj = add i32 %i.ah, %i.ai
  %i.ak = udiv i32 %i.aj, %.0.i44
  br label %bb.l

bb.l:                                             ; preds = %.thread, %__drm_to_dev.exit46, %__drm_to_dev.exit
  %.0 = phi i32 [ 0, %__drm_to_dev.exit46 ], [ %i.ak, %.thread ], [ 0, %__drm_to_dev.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @vlv_dsi_pll_enable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
  %i.g = phi ptr [ %i.f, %bb.d ], [ null, %bb.c ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.g, i32 noundef 2, ptr noundef nonnull @.str.2) #5
  tail call void @vlv_cck_get(ptr noundef %i.c) #5
  tail call void @vlv_cck_write(ptr noundef %i.c, i32 noundef 72, i32 noundef 0) #5
  %i.h = getelementptr i8, ptr %1, i64 1224       ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 1228
  %i.j = load i32, ptr %i.i, align 4
  tail call void @vlv_cck_write(ptr noundef %i.c, i32 noundef 76, i32 noundef %i.j) #5
  %i.k = load i32, ptr %i.h, align 8
  %i.l = and i32 %i.k, 2147483647
  tail call void @vlv_cck_write(ptr noundef %i.c, i32 noundef 72, i32 noundef %i.l) #5
  tail call void @usleep_range_state(i64 noundef 10, i64 noundef 50, i32 noundef 2) #5
  %i.m = load i32, ptr %i.h, align 8
  tail call void @vlv_cck_write(ptr noundef %i.c, i32 noundef 72, i32 noundef %i.m) #5
  %i.n = tail call i64 @ktime_get() #5
  %i.o = add i64 %i.n, 20000000                   ; 2 uses
  %i.p = tail call i32 @__SCT__might_resched() #5 ; 0 uses
  %i.q = tail call i64 @ktime_get() #5
  %i.r = icmp sgt i64 %i.q, %i.o
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !15
  %i.s = tail call i32 @vlv_cck_read(ptr noundef %i.c, i32 noundef 72) #5
  %.not3039 = trunc i32 %i.s to i1                ; 2 uses
  %brmerge40 = select i1 %.not3039, i1 true, i1 %i.r
  br i1 %brmerge40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %__drm_to_dev.exit, %.lr.ph
  tail call void @usleep_range_state(i64 noundef 126, i64 noundef 500, i32 noundef 2) #5
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !16
  %i.t = tail call i64 @ktime_get() #5
  %i.u = icmp sgt i64 %i.t, %i.o
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !15
  %i.v = tail call i32 @vlv_cck_read(ptr noundef %i.c, i32 noundef 72) #5
  %.not30 = trunc i32 %i.v to i1                  ; 2 uses
  %brmerge = select i1 %.not30, i1 true, i1 %i.u
  br i1 %brmerge, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %__drm_to_dev.exit
  %.not30.lcssa = phi i1 [ %.not3039, %__drm_to_dev.exit ], [ %.not30, %.lr.ph ]
  tail call void @vlv_cck_put(ptr noundef %i.c) #5
  %i.w = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not.i34 = icmp eq ptr %i.w, null              ; 2 uses
  br i1 %.not30.lcssa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  br i1 %.not.i34, label %__drm_to_dev.exit33, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  br label %__drm_to_dev.exit33

__drm_to_dev.exit33:                              ; preds = %bb.e, %bb.f
  %i.z = phi ptr [ %i.y, %bb.f ], [ null, %bb.e ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.z, ptr noundef nonnull @.str.3) #7
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  br i1 %.not.i34, label %__drm_to_dev.exit35, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  br label %__drm_to_dev.exit35

__drm_to_dev.exit35:                              ; preds = %bb.g, %bb.h
  %i.ac = phi ptr [ %i.ab, %bb.h ], [ null, %bb.g ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ac, i32 noundef 2, ptr noundef nonnull @.str.4) #5
  br label %bb.i

bb.i:                                             ; preds = %__drm_to_dev.exit35, %__drm_to_dev.exit33
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @vlv_cck_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @vlv_cck_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @vlv_cck_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @vlv_cck_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @vlv_dsi_pll_disable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
  %i.g = phi ptr [ %i.f, %bb.d ], [ null, %bb.c ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.g, i32 noundef 2, ptr noundef nonnull @.str.2) #5
  tail call void @vlv_cck_get(ptr noundef %i.c) #5
  %i.h = tail call i32 @vlv_cck_read(ptr noundef %i.c, i32 noundef 72) #5
  %i.i = and i32 %i.h, 1073741823
  %i.j = or disjoint i32 %i.i, 1073741824
  tail call void @vlv_cck_write(ptr noundef %i.c, i32 noundef 72, i32 noundef %i.j) #5
  tail call void @vlv_cck_put(ptr noundef %i.c) #5
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @bxt_dsi_pll_is_enabled(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 286848) #5
  %.val.i = load ptr, ptr %0, align 8
  %i.a = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 144
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 %i.c(ptr noundef %i.a, i32 286848, i1 noundef zeroext true) #5, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 286848) #5
  %i.e = icmp ugt i32 %i.d, -1073741825
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 1445888) #5
  %.val.i19 = load ptr, ptr %0, align 8
  %i.f = tail call ptr @to_intel_uncore(ptr noundef %.val.i19) #5 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 144
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 %i.h(ptr noundef %i.f, i32 1445888, i1 noundef zeroext true) #5, !inline_history !17 ; 3 uses
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 1445888) #5
  %i.j = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.j, align 8
  %i.k = and i64 %.val, 2147483648
  %.not22 = icmp eq i64 %i.k, 0
  %i.l = and i32 %i.i, 768
  %.not = icmp eq i32 %i.l, 0                     ; 2 uses
  br i1 %.not22, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %.sink.split, label %.sink.split.sink.split

bb.e:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@bxt_dsi_reset_clocks:bb.a
bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 16 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 2147483648
  %.not22 = icmp eq i64 %i.f, 0
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 286864) #5
  %.val.i = load ptr, ptr %i.c, align 8
  %i.g = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #5 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 144
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 %i.i(ptr noundef %i.g, i32 286864, i1 noundef zeroext true) #5, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 286864) #5
  %i.k = icmp eq i32 %1, 0
  %i.l = select i1 %i.k, i32 59047935, i32 -64636
  %i.m = and i32 %i.l, %i.j
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 286864) #5
  %.val.i23 = load ptr, ptr %i.c, align 8
  %i.n = tail call ptr @to_intel_uncore(ptr noundef %.val.i23) #5 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 176
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef %i.n, i32 286864, i32 noundef %i.m, i1 noundef zeroext true) #5, !inline_history !21
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 1441796) #5
  %.val.i24 = load ptr, ptr %i.c, align 8
  %i.q = tail call ptr @to_intel_uncore(ptr noundef %.val.i24) #5 ; 4 uses
  %i.r = getelementptr i8, ptr %i.q, i64 144
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i32 %i.s(ptr noundef %i.q, i32 range(i32 286848, 1441801) 1441796, i1 noundef zeroext true) #5, !inline_history !18
  %i.u = and i32 %i.t, -1024
  %i.v = getelementptr i8, ptr %i.q, i64 176
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef %i.q, i32 range(i32 286848, 1441801) 1441796, i32 noundef %i.u, i1 noundef zeroext true) #5, !inline_history !19
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 1441796) #5
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 1441800) #5
  %.val.i25 = load ptr, ptr %i.c, align 8
  %i.x = tail call ptr @to_intel_uncore(ptr noundef %.val.i25) #5 ; 4 uses
  %i.y = getelementptr i8, ptr %i.x, i64 144
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call i32 %i.z(ptr noundef %i.x, i32 range(i32 286848, 1441801) 1441800, i1 noundef zeroext true) #5, !inline_history !18
  %i.ab = and i32 %i.aa, -1024
  %i.ac = getelementptr i8, ptr %i.x, i64 176
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef %i.x, i32 range(i32 286848, 1441801) 1441800, i32 noundef %i.ab, i1 noundef zeroext true) #5, !inline_history !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i32 [ 1441800, %bb.e ], [ 286864, %bb.d ]
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %.sink) #5
  %i.ae = getelementptr i8, ptr %i.c, i64 808
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp eq i32 %1, 0
  %i.ah = select i1 %i.ag, i32 45148, i32 47196
  %i.ai = add i32 %i.af, %i.ah                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.ai) #5
  %.val.i26 = load ptr, ptr %i.c, align 8
  %i.aj = tail call ptr @to_intel_uncore(ptr noundef %.val.i26) #5 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 176
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef %i.aj, i32 %i.ai, i32 noundef 2, i1 noundef zeroext true) #5, !inline_history !21
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.ai) #5
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @assert_dsi_pll_enabled(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call fastcc void @assert_dsi_pll(ptr noundef %0, i1 noundef zeroext true) #8, !srcloc !28
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @assert_dsi_pll(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @vlv_cck_get(ptr noundef %0) #5
  %i.a = tail call i32 @vlv_cck_read(ptr noundef %0, i32 noundef 72) #5 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0                     ; 2 uses
  tail call void @vlv_cck_put(ptr noundef %0) #5
  %i.c = icmp sgt i32 %i.a, -1
  %.not25 = xor i1 %1, %i.c
  br i1 %.not25, label %bb.i, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 5187
  %i.e = load i8, ptr %i.d, align 1, !range !30, !noundef !31
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.g, null                ; 2 uses
  br i1 %i.f, label %bb.c, label %.critedge, !prof !32

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %i.i, %bb.d ], [ null, %bb.c ]
  %i.k = tail call ptr @dev_driver_string(ptr noundef %i.j) #5 ; 0 uses
  %i.l = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.14, ptr nonnull @.str.15, i32 612, i32 2321, i64 16) #9, !srcloc !33
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i29 = icmp eq ptr %i.m, null
  br i1 %.not.i29, label %__drm_to_dev.exit30, label %bb.e

bb.e:                                             ; preds = %__drm_to_dev.exit
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  br label %__drm_to_dev.exit30

__drm_to_dev.exit30:                              ; preds = %__drm_to_dev.exit, %bb.e
  %i.p = phi ptr [ %i.o, %bb.e ], [ null, %__drm_to_dev.exit ]
  %i.q = tail call ptr @dev_driver_string(ptr noundef %i.p) #5
  %i.r = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i31 = icmp eq ptr %i.r, null
  br i1 %.not.i31, label %__drm_to_dev.exit32, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit30
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  br label %__drm_to_dev.exit32

__drm_to_dev.exit32:                              ; preds = %__drm_to_dev.exit30, %bb.f
  %i.u = phi ptr [ %i.t, %bb.f ], [ null, %__drm_to_dev.exit30 ] ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 80
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i33 = icmp eq ptr %i.w, null
  br i1 %.not.i33, label %bb.g, label %dev_name.exit36

bb.g:                                             ; preds = %__drm_to_dev.exit32
  %.val.i35 = load ptr, ptr %i.u, align 8
  br label %dev_name.exit36

dev_name.exit36:                                  ; preds = %__drm_to_dev.exit32, %bb.g
  %.0.i34 = phi ptr [ %.val.i35, %bb.g ], [ %i.w, %__drm_to_dev.exit32 ]
  %i.x = select i1 %1, ptr @.str.17, ptr @.str.18
  %i.y = select i1 %i.b, ptr @.str.17, ptr @.str.18
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.l, ptr noundef %i.q, ptr noundef %.0.i34, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y) #5
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !34
  br label %bb.i

.critedge:                                        ; preds = %bb.b
  br i1 %.not.i, label %__drm_to_dev.exit38, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.z = getelementptr i8, ptr %i.g, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  br label %__drm_to_dev.exit38

__drm_to_dev.exit38:                              ; preds = %.critedge, %bb.h
  %i.ab = phi ptr [ %i.aa, %bb.h ], [ null, %.critedge ]
  %i.ac = select i1 %1, ptr @.str.17, ptr @.str.18
  %i.ad = select i1 %i.b, ptr @.str.17, ptr @.str.18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ab, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad) #7
  br label %bb.i

bb.i:                                             ; preds = %dev_name.exit36, %__drm_to_dev.exit38, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @assert_dsi_pll_disabled(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call fastcc void @assert_dsi_pll(ptr noundef %0, i1 noundef zeroext false) #8, !srcloc !35
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usleep_range_state(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_get(ptr noundef, i32) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_put(ptr noundef, i32) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @to_intel_uncore(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noredzone nounwind "no-builtin-wcslen" }
attributes #6 = { nounwind memory(none) }
attributes #7 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #8 = { noredzone "no-builtin-wcslen" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{i64 511081}
!13 = !{i64 5823}
!14 = !{i64 512723}
!15 = !{i64 2160714376}
!16 = !{i64 2338931}
!17 = distinct !{null, null}
!18 = distinct !{null, null, null}
!19 = distinct !{null, null, null}
!20 = !{i64 9558}
!21 = distinct !{null, null}
!22 = distinct !{null, null}
!23 = distinct !{null, null, null}
!24 = distinct !{null, null, null}
!25 = distinct !{!25, !11, !26}
!26 = !{!"llvm.loop.peeled.count", i32 1}
!27 = distinct !{null, null, null}
!28 = !{i64 17866}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = !{i64 2160779173, i64 2160779200, i64 2160779638, i64 2160779671, i64 2160779706, i64 2160779722, i64 2160780563, i64 2160780621, i64 2160780670, i64 2160780480, i64 2160779781, i64 2160779813}
!34 = !{i64 2160777194}
!35 = !{i64 17963}
end_hunk_1
