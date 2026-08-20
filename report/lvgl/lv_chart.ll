inline.NumInlined: 74
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lv_chart_set_point_count:bb.a
.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %1, i32 1) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = tail call ptr @lv_ll_get_tail(ptr noundef nonnull %i.d) #8 ; 2 uses
  %.not2528 = icmp eq ptr %i.e, null
  br i1 %.not2528, label %lv_chart_refresh.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %.029 = phi ptr [ %i.e, %.lr.ph ], [ %i.r, %bb.i ] ; 8 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, 15
  %i.i = icmp eq i8 %i.h, 5
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.029, i64 24
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 2
  %.not26 = icmp eq i8 %i.l, 0
  br i1 %.not26, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @new_points_alloc(ptr noundef %0, ptr noundef %.029, i32 noundef %spec.store.select, ptr noundef %.029)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.029, i64 24
  %i.n = load i8, ptr %i.m, align 8
  %i.o = and i8 %i.n, 4
  %.not27 = icmp eq i8 %i.o, 0
  br i1 %.not27, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.029, i64 8
  tail call fastcc void @new_points_alloc(ptr noundef %0, ptr noundef %.029, i32 noundef %spec.store.select, ptr noundef %i.p)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.029, i64 20
  store i32 0, ptr %i.q, align 4, !tbaa !70
  %i.r = tail call ptr @lv_ll_get_prev(ptr noundef nonnull %i.d, ptr noundef nonnull %.029) #8 ; 2 uses
  %.not25 = icmp eq ptr %i.r, null
  br i1 %.not25, label %lv_chart_refresh.exit, label %bb.d, !llvm.loop !71

lv_chart_refresh.exit:                            ; preds = %bb.i, %bb.c
  store i32 %spec.store.select, ptr %i.a, align 4, !tbaa !33
  %i.s = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %lv_chart_refresh.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @new_points_alloc(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !72     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.d = load i32, ptr %i.c, align 4, !tbaa !33   ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 7 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !70
  %.not = icmp eq i32 %i.f, 0
  %i.g = zext i32 %2 to i64                       ; 5 uses
  %i.h = shl nuw nsw i64 %i.g, 2                  ; 2 uses
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @lv_malloc(i64 noundef %i.h) #8 ; 10 uses
  %.not58 = icmp eq ptr %i.i, null
  br i1 %.not58, label %.preheader60, label %bb.d

.preheader60:                                     ; preds = %bb.c, %.preheader60
  br label %.preheader60

bb.d:                                             ; preds = %bb.c
  %.not59 = icmp ult i32 %2, %i.d
  br i1 %.not59, label %.preheader61, label %.preheader65

.preheader65:                                     ; preds = %bb.d
  %.not74 = icmp eq i32 %i.d, 0
  br i1 %.not74, label %.preheader63, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader65
  %i.j = load ptr, ptr %3, align 8, !tbaa !72     ; 3 uses
  %wide.trip.count = zext i32 %i.d to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.k = icmp eq i32 %i.d, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.e

.preheader61:                                     ; preds = %bb.d
  %.not75 = icmp eq i32 %2, 0
  br i1 %.not75, label %.loopexit62, label %.lr.ph70

.lr.ph70:                                         ; preds = %.preheader61
  %i.l = load ptr, ptr %3, align 8, !tbaa !72     ; 3 uses
  %xtraiter114 = and i64 %i.g, 1
  %i.m = icmp eq i32 %2, 1
  br i1 %i.m, label %.epil.preheader113, label %.lr.ph70.new

.lr.ph70.new:                                     ; preds = %.lr.ph70
  %unroll_iter117 = and i64 %i.g, 4294967294
  br label %bb.f

.preheader63.loopexit.unr-lcssa:                  ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader63, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader63.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader63.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod112 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.n = load i32, ptr %i.e, align 4, !tbaa !70
  %i.o = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.p = add i32 %i.n, %i.o
  %i.q = urem i32 %i.p, %i.d
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil.init
  store i32 %i.t, ptr %i.u, align 4, !tbaa !8
  br label %.preheader63

.preheader63:                                     ; preds = %.epil.preheader, %.preheader63.loopexit.unr-lcssa, %.preheader65
  %i.v = icmp ult i32 %i.d, %2
  br i1 %i.v, label %.lr.ph68.preheader, label %.loopexit62

.lr.ph68.preheader:                               ; preds = %.preheader63
  %i.w = zext i32 %i.d to i64                     ; 4 uses
  %i.x = sub nsw i64 %i.g, %i.w                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 8
  br i1 %min.iters.check, label %.lr.ph68.preheader110, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph68.preheader
  %n.vec = and i64 %i.x, -8                       ; 3 uses
  %i.y = add nsw i64 %n.vec, %i.w
  %invariant.gep = getelementptr [4 x i8], ptr %i.i, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %gep, align 4, !tbaa !8
  store <4 x i32> splat (i32 2147483647), ptr %i.z, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %.loopexit62, label %.lr.ph68.preheader110

.lr.ph68.preheader110:                            ; preds = %.lr.ph68.preheader, %middle.block
  %indvars.iv78.ph = phi i64 [ %i.w, %.lr.ph68.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph68

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !70
  %i.ac = trunc nuw i64 %indvars.iv to i32
  %i.ad = add i32 %i.ab, %i.ac
  %i.ae = urem i32 %i.ad, %i.d
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aj = load i32, ptr %i.e, align 4, !tbaa !70
  %i.ak = trunc nuw i64 %indvars.iv.next to i32
  %i.al = add i32 %i.aj, %i.ak
  %i.am = urem i32 %i.al, %i.d
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !8
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader63.loopexit.unr-lcssa, label %bb.e, !llvm.loop !76

.lr.ph68:                                         ; preds = %.lr.ph68.preheader110, %.lr.ph68
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.lr.ph68 ], [ %indvars.iv78.ph, %.lr.ph68.preheader110 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv78
  store i32 2147483647, ptr %i.ar, align 4, !tbaa !8
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %i.g
  br i1 %exitcond82.not, label %.loopexit62, label %.lr.ph68, !llvm.loop !77

bb.f:                                             ; preds = %bb.f, %.lr.ph70.new
  %indvars.iv83 = phi i64 [ 0, %.lr.ph70.new ], [ %indvars.iv.next84.1, %bb.f ] ; 4 uses
  %niter118 = phi i64 [ 0, %.lr.ph70.new ], [ %niter118.next.1, %bb.f ]
  %i.as = load i32, ptr %i.e, align 4, !tbaa !70
  %i.at = trunc nuw i64 %indvars.iv83 to i32
  %i.au = add i32 %i.as, %i.at
  %i.av = urem i32 %i.au, %i.d
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv83
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !8
  %indvars.iv.next84 = or disjoint i64 %indvars.iv83, 1 ; 2 uses
  %i.ba = load i32, ptr %i.e, align 4, !tbaa !70
  %i.bb = trunc nuw i64 %indvars.iv.next84 to i32
  %i.bc = add i32 %i.ba, %i.bb
  %i.bd = urem i32 %i.bc, %i.d
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !8
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next84
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !8
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %niter118.next.1 = add i64 %niter118, 2         ; 2 uses
  %niter118.ncmp.1 = icmp eq i64 %niter118.next.1, %unroll_iter117
  br i1 %niter118.ncmp.1, label %.loopexit62.loopexit.unr-lcssa, label %bb.f, !llvm.loop !78

.loopexit62.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %.loopexit62, label %.epil.preheader113

.epil.preheader113:                               ; preds = %.loopexit62.loopexit.unr-lcssa, %.lr.ph70
  %indvars.iv83.epil.init = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next84.1, %.loopexit62.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod116 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.bi = load i32, ptr %i.e, align 4, !tbaa !70
  %i.bj = trunc nuw i64 %indvars.iv83.epil.init to i32
  %i.bk = add i32 %i.bi, %i.bj
  %i.bl = urem i32 %i.bk, %i.d
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !8
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv83.epil.init
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !8
  br label %.loopexit62

.loopexit62:                                      ; preds = %.lr.ph68, %.epil.preheader113, %.loopexit62.loopexit.unr-lcssa, %middle.block, %.preheader63, %.preheader61
  %i.bq = load ptr, ptr %3, align 8, !tbaa !72
  tail call void @lv_free(ptr noundef %i.bq) #8
  store ptr %i.i, ptr %3, align 8, !tbaa !72
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  %i.br = tail call ptr @lv_realloc(ptr noundef nonnull %i.a, i64 noundef %i.h) #8 ; 4 uses
  store ptr %i.br, ptr %3, align 8, !tbaa !72
  %.not57 = icmp eq ptr %i.br, null
  br i1 %.not57, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.g, %.preheader
  br label %.preheader

bb.h:                                             ; preds = %bb.g
  %i.bs = icmp ugt i32 %2, %i.d
  %i.bt = add i32 %i.d, -1                        ; 2 uses
  %i.bu = icmp ult i32 %i.bt, %2
  %or.cond = and i1 %i.bs, %i.bu
  br i1 %or.cond, label %.lr.ph72.preheader, label %.loopexit

.lr.ph72.preheader:                               ; preds = %bb.h
  %i.bv = zext i32 %i.bt to i64                   ; 3 uses
  %i.bw = sub nuw i32 %2, %i.d                    ; 2 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check100 = icmp ult i32 %i.bw, 7
  br i1 %min.iters.check100, label %.lr.ph72.preheader109, label %vector.ph101

vector.ph101:                                     ; preds = %.lr.ph72.preheader
  %n.vec102 = and i64 %i.by, 8589934584           ; 3 uses
  %i.bz = add nuw nsw i64 %n.vec102, %i.bv
  %invariant.gep119 = getelementptr [4 x i8], ptr %i.br, i64 %i.bv
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next105, %vector.body103 ] ; 2 uses
  %gep120 = getelementptr [4 x i8], ptr %invariant.gep119, i64 %index104 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %gep120, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %gep120, align 4, !tbaa !8
  store <4 x i32> splat (i32 2147483647), ptr %i.ca, align 4, !tbaa !8
  %index.next105 = add nuw i64 %index104, 8       ; 2 uses
  %i.cb = icmp eq i64 %index.next105, %n.vec102
  br i1 %i.cb, label %middle.block106, label %vector.body103, !llvm.loop !79

middle.block106:                                  ; preds = %vector.body103
  %cmp.n107 = icmp eq i64 %i.by, %n.vec102
  br i1 %cmp.n107, label %.loopexit, label %.lr.ph72.preheader109

.lr.ph72.preheader109:                            ; preds = %.lr.ph72.preheader, %middle.block106
  %indvars.iv88.ph = phi i64 [ %i.bv, %.lr.ph72.preheader ], [ %i.bz, %middle.block106 ]
  br label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.preheader109, %.lr.ph72
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %.lr.ph72 ], [ %indvars.iv88.ph, %.lr.ph72.preheader109 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv88
  store i32 2147483647, ptr %i.cc, align 4, !tbaa !8
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next89 to i32
  %exitcond91.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond91.not, label %.loopexit, label %.lr.ph72, !llvm.loop !80

.loopexit:                                        ; preds = %.lr.ph72, %middle.block106, %.loopexit62, %bb.h, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_chart_set_axis_min_value(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.k [
    i32 0, label %bb.c
    i32 1, label %bb.e
    i32 2, label %bb.g
    i32 4, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, %2
  br i1 %i.c, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %2, ptr %i.a, align 8, !tbaa !8
  br label %lv_chart_refresh.exit

bb.e:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %i.f = icmp eq i32 %i.e, %2
  br i1 %i.f, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %2, ptr %i.d, align 4, !tbaa !8
  br label %lv_chart_refresh.exit

bb.g:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !8
  %i.i = icmp eq i32 %i.h, %2
  br i1 %i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %2, ptr %i.g, align 8, !tbaa !8
  br label %lv_chart_refresh.exit

bb.i:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8
  %i.l = icmp eq i32 %i.k, %2
  br i1 %i.l, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %2, ptr %i.j, align 4, !tbaa !8
  br label %lv_chart_refresh.exit

lv_chart_refresh.exit:                            ; preds = %bb.d, %bb.f, %bb.h, %bb.j
  %i.m = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.i, %bb.g, %bb.e, %bb.c, %lv_chart_refresh.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_chart_set_axis_max_value(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.k [
    i32 0, label %bb.c
    i32 1, label %bb.e
    i32 2, label %bb.g
    i32 4, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, %2
  br i1 %i.c, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %2, ptr %i.a, align 8, !tbaa !8
  br label %lv_chart_refresh.exit

bb.e:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %i.f = icmp eq i32 %i.e, %2
  br i1 %i.f, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %2, ptr %i.d, align 4, !tbaa !8
  br label %lv_chart_refresh.exit

bb.g:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !8
  %i.i = icmp eq i32 %i.h, %2
  br i1 %i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %2, ptr %i.g, align 8, !tbaa !8
  br label %lv_chart_refresh.exit
end_hunk_0
begin_hunk_1_@draw_series_line
define internal fastcc void @draw_series_line(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_draw_line_dsc_t, align 8 ; 14 uses
  %3 = alloca %struct.lv_draw_rect_dsc_t, align 8 ; 9 uses
  %4 = alloca %struct.lv_area_t, align 16         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33
  %i.c = icmp ult i32 %i.b, 2
  br i1 %i.c, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.e = tail call i32 @lv_ll_get_len(ptr noundef nonnull %i.d) #8 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.ag, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 56) #8
  %i.h = ptrtoint ptr %i.g to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.h to i32 ; 2 uses
  %i.i = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 26) #8
  %i.j = ptrtoint ptr %i.i to i64
  %.sroa.0.0.extract.trunc.i169 = trunc i64 %i.j to i32
  %i.k = add nsw i32 %.sroa.0.0.extract.trunc.i169, %.sroa.0.0.extract.trunc.i
  %i.l = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 24) #8
  %i.m = ptrtoint ptr %i.l to i64
  %.sroa.0.0.extract.trunc.i170 = trunc i64 %i.m to i32
  %i.n = add nsw i32 %.sroa.0.0.extract.trunc.i170, %.sroa.0.0.extract.trunc.i
  %i.o = tail call i32 @lv_obj_get_content_width(ptr noundef nonnull %0) #8 ; 4 uses
  %i.p = tail call i32 @lv_obj_get_content_height(ptr noundef nonnull %0) #8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !30
  %i.s = add nsw i32 %i.k, %i.r
  %i.t = tail call i32 @lv_obj_get_scroll_left(ptr noundef nonnull %0) #8
  %i.u = sub i32 %i.s, %i.t                       ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !43
  %i.x = add nsw i32 %i.n, %i.w
  %i.y = tail call i32 @lv_obj_get_scroll_top(ptr noundef nonnull %0) #8
  %i.z = sub i32 %i.x, %i.y                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @lv_draw_line_dsc_init(ptr noundef nonnull %2) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %1, ptr %i.aa, align 8, !tbaa !37
  call void @lv_obj_init_draw_line_dsc(ptr noundef nonnull %0, i32 noundef 327680, ptr noundef nonnull %2) #8
  %i.ab = add i32 %i.e, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !49
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !33
  %.not = icmp slt i32 %i.ad, %i.o                ; 3 uses
  %i.ae = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 1) #8 ; 2 uses
  %i.af = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 2) #8 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = insertelement <2 x ptr> poison, ptr %i.ae, i64 0
  %i.ai = insertelement <2 x ptr> %i.ah, ptr %i.af, i64 1
  %i.aj = ptrtoint <2 x ptr> %i.ai to <2 x i64>
  %i.ak = ptrtoint ptr %i.ae to i64
  %.sroa.0.0.extract.trunc.i172 = trunc i64 %i.ag to i32
  %i.al = trunc <2 x i64> %i.aj to <2 x i32>
  %.sroa.0.0.extract.trunc.i171 = trunc i64 %i.ak to i32
  %i.am = sdiv <2 x i32> %i.al, splat (i32 2)     ; 2 uses
  %i.an = shufflevector <2 x i32> %i.am, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !33  ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 2
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = add i32 %i.ao, -1
  %i.ar = udiv i32 %i.o, %i.aq
  %i.as = extractelement <2 x i32> %i.am, i64 0
  %i.at = add i32 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.av = load i32, ptr %i.au, align 8, !tbaa !94
  %i.aw = add i32 %i.at, %i.av
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0151 = phi i32 [ %i.aw, %bb.d ], [ 0, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @lv_draw_rect_dsc_init(ptr noundef nonnull %3) #8
  call void @lv_obj_init_draw_rect_dsc(ptr noundef nonnull %0, i32 noundef 131072, ptr noundef nonnull %3) #8
  %i.ax = load i32, ptr %i.ac, align 4, !tbaa !49
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !66
  %i.az = load i32, ptr %i.a, align 4, !tbaa !33
  %i.ba = zext i32 %i.az to i64
  br label %bb.g

.critedge:                                        ; preds = %bb.e
  %i.bb = shl nsw i32 %.0151, 1
  %i.bc = add nsw i32 %i.bb, %i.o
  %i.bd = mul nsw i32 %i.bc, 3
  %i.be = sext i32 %i.bd to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge
  %.sink217 = phi i64 [ %i.ba, %bb.f ], [ %i.be, %.critedge ]
  %i.bf = shl nsw i64 %.sink217, 3
  %i.bg = call ptr @lv_malloc(i64 noundef %i.bf) #8 ; 5 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.af, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !95
  %i.bj = call ptr @lv_ll_get_tail(ptr noundef nonnull %i.d) #8 ; 2 uses
  %.not163196 = icmp eq ptr %i.bj, null
  br i1 %.not163196, label %._crit_edge201, label %.lr.ph200

.lr.ph200:                                        ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bs = add i32 %.0151, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bu = xor i32 %.0151, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bx = add nsw i32 %i.z, %i.p
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 98
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ca = icmp sgt i32 %.sroa.0.0.extract.trunc.i171, 1
  %i.cb = icmp sgt i32 %.sroa.0.0.extract.trunc.i172, 1
  %or.cond = select i1 %i.ca, i1 %i.cb, i1 false
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph200, %bb.ae
  %.0152197 = phi ptr [ %i.bj, %.lr.ph200 ], [ %i.fm, %bb.ae ] ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0152197, i64 24 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 8
  %i.cf = and i8 %i.ce, 1
  %.not164 = icmp eq i8 %i.cf, 0
  br i1 %.not164, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = load i32, ptr %i.ac, align 4, !tbaa !49 ; 2 uses
  %.not168 = icmp eq i32 %i.cg, 0
  br i1 %.not168, label %bb.ae, label %.sink.split218

bb.k:                                             ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.0152197, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.bk, ptr noundef nonnull align 8 dereferenceable(3) %i.ch, i64 3, i1 false), !tbaa.struct !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.bl, ptr noundef nonnull align 8 dereferenceable(3) %i.ch, i64 3, i1 false), !tbaa.struct !57
  %i.ci = load i8, ptr %i.bm, align 8
  %i.cj = and i8 %i.ci, 48
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %.0152197, i64 20
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !70
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.cn = phi i32 [ %i.cm, %bb.l ], [ 0, %bb.k ]  ; 2 uses
  %i.co = load i32, ptr %i.bn, align 4, !tbaa !52
  %i.cp = load i32, ptr %i.v, align 4, !tbaa !43
  store i32 %i.u, ptr %i.bo, align 8, !tbaa !44
  store i32 %i.u, ptr %i.bp, align 8, !tbaa !46
  store i32 0, ptr %i.bq, align 8, !tbaa !96
  %i.cq = load i32, ptr %i.a, align 4, !tbaa !33  ; 2 uses
  %.not202 = icmp eq i32 %i.cq, 0
  br i1 %.not202, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %.0152197, i64 8 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.z
  %i.cs = phi i32 [ %i.cq, %.lr.ph ], [ %i.et, %bb.z ] ; 2 uses
  %.0138189 = phi i32 [ 0, %.lr.ph ], [ %i.es, %bb.z ] ; 4 uses
  %.0139188 = phi i32 [ -10000, %.lr.ph ], [ %.2.ph, %bb.z ] ; 6 uses
  %.0140187 = phi i32 [ %i.cp, %.lr.ph ], [ %.2142.ph, %bb.z ] ; 5 uses
  %.0143186 = phi i32 [ %i.co, %.lr.ph ], [ %.2145.ph, %bb.z ] ; 5 uses
  %.0148185 = phi i32 [ %i.cn, %.lr.ph ], [ %.1149.ph, %bb.z ] ; 2 uses
  %i.ct = mul i32 %.0138189, %i.o
  %i.cu = add i32 %i.cs, -1
  %i.cv = udiv i32 %i.ct, %i.cu
  %i.cw = add nsw i32 %i.cv, %i.u                 ; 8 uses
  %i.cx = load i32, ptr %i.br, align 8, !tbaa !97
  %i.cy = add i32 %i.bs, %i.cx
  %i.cz = icmp sgt i32 %i.cw, %i.cy
  br i1 %i.cz, label %._crit_edge.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = load i32, ptr %i.bt, align 8, !tbaa !103
  %i.db = add i32 %i.da, %i.bu
  %i.dc = icmp slt i32 %i.cw, %i.db
  br i1 %i.dc, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dd = add i32 %.0138189, %i.cn
  %i.de = urem i32 %i.dd, %i.cs                   ; 5 uses
  %i.df = load ptr, ptr %i.cr, align 8, !tbaa !21
  %i.dg = sext i32 %i.de to i64                   ; 2 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !8  ; 2 uses
  %i.dj = icmp eq i32 %i.di, 2147483647
  br i1 %i.dj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dk = load i8, ptr %i.cd, align 8
  %i.dl = lshr i8 %i.dk, 4
  %i.dm = and i8 %i.dl, 1
  %i.dn = zext nneg i8 %i.dm to i64               ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !8
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.dn
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !8
  %i.ds = call i32 @lv_map(i32 noundef %i.di, i32 noundef %i.dp, i32 noundef %i.dr, i32 noundef %i.bx, i32 noundef %i.z) #8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.0137 = phi i32 [ %i.ds, %bb.q ], [ 2147483647, %bb.p ] ; 5 uses
  br i1 %.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dt = load i32, ptr %i.bq, align 8, !tbaa !96 ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.du ; 2 uses
  store i32 %i.cw, ptr %i.dv, align 4, !tbaa !31
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i32 %.0137, ptr %i.dw, align 4, !tbaa !81
  %i.dx = add nsw i32 %i.dt, 1
  br label %.sink.split

bb.t:                                             ; preds = %bb.r
  %i.dy = load ptr, ptr %i.cr, align 8, !tbaa !21 ; 2 uses
  %i.dz = sext i32 %.0148185 to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !8
  %.not165 = icmp eq i32 %i.eb, 2147483647
  br i1 %.not165, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.dg
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !8
  %.not166 = icmp eq i32 %i.ed, 2147483647
  br i1 %.not166, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ee = call i32 @llvm.smax.i32(i32 %.0140187, i32 %.0137) ; 4 uses
  %i.ef = call i32 @llvm.smin.i32(i32 %.0143186, i32 %.0137) ; 3 uses
  %.not167 = icmp eq i32 %.0139188, %i.cw
  br i1 %.not167, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = load ptr, ptr %i.bi, align 8, !tbaa !95
  %i.eh = load i32, ptr %i.bq, align 8, !tbaa !96 ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.ei ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store i32 %i.ef, ptr %i.ek, align 4, !tbaa !81
  store i32 %i.cw, ptr %i.ej, align 4, !tbaa !31
  %i.el = getelementptr i8, ptr %i.ej, i64 12     ; 2 uses
  store i32 %i.ee, ptr %i.el, align 4, !tbaa !81
  %i.em = getelementptr i8, ptr %i.ej, i64 8
  store i32 %i.cw, ptr %i.em, align 4, !tbaa !31
  %i.en = getelementptr i8, ptr %i.ej, i64 20
  store i32 2147483647, ptr %i.en, align 4, !tbaa !81
  %i.eo = getelementptr i8, ptr %i.ej, i64 16
  store i32 %i.cw, ptr %i.eo, align 4, !tbaa !31
  %i.ep = icmp eq i32 %i.ef, %i.ee
  br i1 %i.ep, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eq = add nsw i32 %i.ee, 1
  store i32 %i.eq, ptr %i.el, align 4, !tbaa !81
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.er = add nsw i32 %i.eh, 3
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.y
  %.sink = phi i32 [ %i.er, %bb.y ], [ %i.dx, %bb.s ]
  %.2145.ph.ph = phi i32 [ %.0137, %bb.y ], [ %.0143186, %bb.s ]
  %.2142.ph.ph = phi i32 [ %.0137, %bb.y ], [ %.0140187, %bb.s ]
  %.2.ph.ph = phi i32 [ %i.cw, %bb.y ], [ %.0139188, %bb.s ]
  store i32 %.sink, ptr %i.bq, align 8, !tbaa !96
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.o, %bb.t, %bb.u, %bb.v
  %.1149.ph = phi i32 [ %i.de, %bb.t ], [ %i.de, %bb.v ], [ %.0148185, %bb.o ], [ %i.de, %bb.u ], [ %i.de, %.sink.split ]
  %.2145.ph = phi i32 [ %.0143186, %bb.t ], [ %i.ef, %bb.v ], [ %.0143186, %bb.o ], [ %.0143186, %bb.u ], [ %.2145.ph.ph, %.sink.split ]
  %.2142.ph = phi i32 [ %.0140187, %bb.t ], [ %i.ee, %bb.v ], [ %.0140187, %bb.o ], [ %.0140187, %bb.u ], [ %.2142.ph.ph, %.sink.split ]
  %.2.ph = phi i32 [ %.0139188, %bb.t ], [ %.0139188, %bb.v ], [ %.0139188, %bb.o ], [ %.0139188, %bb.u ], [ %.2.ph.ph, %.sink.split ]
  %i.es = add nuw i32 %.0138189, 1                ; 3 uses
  %i.et = load i32, ptr %i.a, align 4, !tbaa !33  ; 2 uses
  %i.eu = icmp ult i32 %i.es, %i.et
  br i1 %i.eu, label %bb.n, label %._crit_edge.loopexit, !llvm.loop !104

._crit_edge.loopexit:                             ; preds = %bb.n, %bb.z
  %.0138.lcssa.ph = phi i32 [ %i.es, %bb.z ], [ %.0138189, %bb.n ]
  %i.ev = add i32 %.0138.lcssa.ph, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %.0138.lcssa = phi i32 [ -1, %bb.m ], [ %i.ev, %._crit_edge.loopexit ]
  call void @lv_draw_line(ptr noundef %1, ptr noundef nonnull %2) #8
  %.pre204 = load i32, ptr %i.ac, align 4, !tbaa !49 ; 4 uses
  br i1 %.not, label %bb.aa, label %.sink.split218

bb.aa:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) %i.by, ptr noundef nonnull align 8 dereferenceable(3) %i.ch, i64 3, i1 false), !tbaa.struct !57
  store i32 %.pre204, ptr %i.bz, align 4, !tbaa !66
  br i1 %or.cond, label %bb.ab, label %.sink.split218

bb.ab:                                            ; preds = %bb.aa
  store i32 %.0138.lcssa, ptr %i.cc, align 8, !tbaa !65
  %i.ew = load i32, ptr %i.bq, align 8, !tbaa !96 ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph195.preheader, label %.sink.split218

.lr.ph195.preheader:                              ; preds = %bb.ab
  %i.ey = zext nneg i32 %i.ew to i64
  br label %.lr.ph195

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %bb.ad
  %indvars.iv = phi i64 [ %i.ey, %.lr.ph195.preheader ], [ %indvars.iv.next, %bb.ad ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !81
  %i.fc = icmp eq i32 %i.fb, 2147483647
  br i1 %i.fc, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph195
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.fd = load <2 x i32>, ptr %i.ez, align 4, !tbaa !8
  %i.fe = shufflevector <2 x i32> %i.fd, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ff = sub nsw <4 x i32> %i.fe, %i.an
  %i.fg = add nsw <4 x i32> %i.fe, %i.an
  %i.fh = shufflevector <4 x i32> %i.ff, <4 x i32> %i.fg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.fh, ptr %4, align 16, !tbaa !8
  call void @lv_draw_rect(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %i.fi = load i32, ptr %i.cc, align 8, !tbaa !65
  %i.fj = add i32 %i.fi, -1
  store i32 %i.fj, ptr %i.cc, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph195, %bb.ac
  %i.fk = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.fk, label %.lr.ph195, label %.loopexit.loopexit, !llvm.loop !105

.loopexit.loopexit:                               ; preds = %bb.ad
  %.pre = load i32, ptr %i.ac, align 4, !tbaa !49
  br label %.sink.split218

.sink.split218:                                   ; preds = %._crit_edge, %bb.aa, %bb.ab, %.loopexit.loopexit, %bb.j
  %.sink220 = phi i32 [ %i.cg, %bb.j ], [ %.pre, %.loopexit.loopexit ], [ %.pre204, %bb.ab ], [ %.pre204, %bb.aa ], [ %.pre204, %._crit_edge ]
  %i.fl = add i32 %.sink220, -1
  store i32 %i.fl, ptr %i.ac, align 4, !tbaa !49
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split218, %bb.j
  %i.fm = call ptr @lv_ll_get_prev(ptr noundef nonnull %i.d, ptr noundef nonnull %.0152197) #8 ; 2 uses
  %.not163 = icmp eq ptr %i.fm, null
  br i1 %.not163, label %._crit_edge201, label %bb.i, !llvm.loop !106

._crit_edge201:                                   ; preds = %bb.ae, %bb.h
  call void @lv_free(ptr noundef nonnull %i.bg) #8
  br label %bb.af

bb.af:                                            ; preds = %bb.g, %._crit_edge201
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_series_bar(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_area_t, align 4          ; 7 uses
  %3 = alloca %struct.lv_draw_rect_dsc_t, align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.a = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 26) #8
  %i.b = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 24) #8
  %i.c = tail call i32 @lv_obj_get_content_width(ptr noundef %0) #8 ; 2 uses
  %i.d = tail call i32 @lv_obj_get_content_height(ptr noundef %0) #8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.f = tail call i32 @lv_ll_get_len(ptr noundef nonnull %i.e) #8 ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.a to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.h to i32
end_hunk_1
begin_hunk_2_@draw_series_scatter:bb.a
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = or i8 %i.ao, 4
  store i8 %i.ap, ptr %i.an, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aq = icmp eq i32 %i.ak, 1
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 109 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = or i8 %i.as, 4
  store i8 %i.at, ptr %i.ar, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.av = call ptr @lv_ll_get_tail(ptr noundef nonnull %i.au) #8 ; 2 uses
  %.not129 = icmp eq ptr %i.av, null
  br i1 %.not129, label %._crit_edge133, label %.lr.ph132

.lr.ph132:                                        ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 98
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 76 ; 4 uses
  %i.bg = add i32 %i.t, %i.h                      ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bk = add i32 %.sroa.0.0.extract.trunc.i120, -2
  %i.bl = icmp ult i32 %i.bk, -3
  %i.bm = add i32 %.sroa.0.0.extract.trunc.i121, -2
  %i.bn = icmp ult i32 %i.bm, -3
  %or.cond = and i1 %i.bl, %i.bn
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph132, %bb.y
  %.0108130 = phi ptr [ %i.av, %.lr.ph132 ], [ %i.hh, %bb.y ] ; 8 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0108130, i64 24 ; 7 uses
  %i.bv = load i8, ptr %i.bu, align 8
  %i.bw = and i8 %i.bv, 1
  %.not111 = icmp eq i8 %i.bw, 0
  br i1 %.not111, label %bb.g, label %bb.y

bb.g:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %.0108130, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.aw, ptr noundef nonnull align 8 dereferenceable(3) %i.bx, i64 3, i1 false), !tbaa.struct !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) %i.ax, ptr noundef nonnull align 8 dereferenceable(3) %i.bx, i64 3, i1 false), !tbaa.struct !57
  %i.by = load i8, ptr %i.ay, align 8
  %i.bz = and i8 %i.by, 48
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %.0108130, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.cd = phi i32 [ %i.cc, %bb.h ], [ 0, %bb.g ]  ; 5 uses
  store i32 %i.n, ptr %i.az, align 8, !tbaa !44
  store i32 %i.n, ptr %i.ba, align 8, !tbaa !46
  %i.ce = getelementptr inbounds nuw i8, ptr %.0108130, i64 8 ; 7 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !21
  %i.cg = sext i32 %i.cd to i64                   ; 3 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !8
  %.not112 = icmp eq i32 %i.ci, 10
  br i1 %.not112, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = load ptr, ptr %.0108130, align 8, !tbaa !25
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.cg
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !8
  %i.cm = load i8, ptr %i.bu, align 8
  %i.cn = lshr i8 %i.cm, 3
  %i.co = and i8 %i.cn, 1
  %i.cp = zext nneg i8 %i.co to i64               ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !8
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.cp
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !8
  %i.cu = call i32 @lv_map(i32 noundef %i.cl, i32 noundef %i.cr, i32 noundef %i.ct, i32 noundef 0, i32 noundef %i.g) #8
  %i.cv = add nsw i32 %i.cu, %i.n
  store i32 %i.cv, ptr %i.ba, align 8, !tbaa !46
  %i.cw = load ptr, ptr %i.ce, align 8, !tbaa !21
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cg
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !8
  %i.cz = load i8, ptr %i.bu, align 8
  %i.da = lshr i8 %i.cz, 4
  %i.db = and i8 %i.da, 1
  %i.dc = zext nneg i8 %i.db to i64               ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !8
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.dc
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !8
  %i.dh = call i32 @lv_map(i32 noundef %i.cy, i32 noundef %i.de, i32 noundef %i.dg, i32 noundef 0, i32 noundef %i.h) #8
  %i.di = sub i32 %i.bg, %i.dh
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 -536870911, ptr %i.ba, align 8, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %storemerge = phi i32 [ %i.di, %bb.j ], [ -536870911, %bb.k ] ; 2 uses
  store i32 %storemerge, ptr %i.bf, align 4, !tbaa !48
  %i.dj = load i32, ptr %i.bh, align 4, !tbaa !33 ; 3 uses
  %.not134 = icmp eq i32 %i.dj, 0
  br i1 %.not134, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.dk = load i32, ptr %i.ba, align 8, !tbaa !46
  store i32 %i.dk, ptr %i.az, align 8, !tbaa !44
  store i32 %storemerge, ptr %i.bi, align 4, !tbaa !47
  %i.dl = urem i32 %i.cd, %i.dj                   ; 2 uses
  %i.dm = load ptr, ptr %i.ce, align 8, !tbaa !21
  %i.dn = sext i32 %i.dl to i64                   ; 3 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !8  ; 2 uses
  %.not113.peel = icmp eq i32 %i.dp, 2147483647
  br i1 %.not113.peel, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.lr.ph.preheader
  %i.dq = load i8, ptr %i.bu, align 8
  %i.dr = lshr i8 %i.dq, 4
  %i.ds = and i8 %i.dr, 1
  %i.dt = zext nneg i8 %i.ds to i64               ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !8
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.dt
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !8
  %i.dy = call i32 @lv_map(i32 noundef %i.dp, i32 noundef %i.dv, i32 noundef %i.dx, i32 noundef 0, i32 noundef %i.h) #8
  %i.dz = sub i32 %i.bg, %i.dy
  store i32 %i.dz, ptr %i.bf, align 4, !tbaa !48
  %i.ea = load ptr, ptr %.0108130, align 8, !tbaa !25
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.dn
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !8
  %i.ed = load i8, ptr %i.bu, align 8
  %i.ee = lshr i8 %i.ed, 3
  %i.ef = and i8 %i.ee, 1
  %i.eg = zext nneg i8 %i.ef to i64               ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !8
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.eg
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !8
  %i.el = call i32 @lv_map(i32 noundef %i.ec, i32 noundef %i.ei, i32 noundef %i.ek, i32 noundef 0, i32 noundef %i.g) #8
  %i.em = add nsw i32 %i.el, %i.n                 ; 3 uses
  store i32 %i.em, ptr %i.ba, align 8, !tbaa !46
  %i.en = load i32, ptr %i.bh, align 4, !tbaa !33 ; 2 uses
  %i.eo = icmp eq i32 %i.en, 1
  br i1 %i.eo, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ep = load ptr, ptr %i.ce, align 8, !tbaa !21
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.dn
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !8
  %.not117.peel = icmp eq i32 %i.er, 2147483647
  br i1 %.not117.peel, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.es = sub nsw i32 %i.em, %i.ag
  store i32 %i.es, ptr %5, align 16, !tbaa !90
  %i.et = add nsw i32 %i.em, %i.ag
  store i32 %i.et, ptr %i.bp, align 8, !tbaa !91
  %i.eu = load i32, ptr %i.bf, align 4, !tbaa !48 ; 2 uses
  %i.ev = sub nsw i32 %i.eu, %i.ah
  store i32 %i.ev, ptr %i.bq, align 4, !tbaa !88
  %i.ew = add nsw i32 %i.eu, %i.ah
  store i32 %i.ew, ptr %i.br, align 4, !tbaa !89
  store i32 0, ptr %i.bo, align 8, !tbaa !65
  call void @lv_draw_rect(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %.pre = load i32, ptr %i.bh, align 4, !tbaa !33
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %.lr.ph.preheader
  %i.ex = phi i32 [ %.pre, %bb.o ], [ %i.dj, %.lr.ph.preheader ], [ %i.en, %bb.m ] ; 2 uses
  %.2.peel = phi i32 [ %i.cd, %bb.o ], [ %i.dl, %.lr.ph.preheader ], [ %i.cd, %bb.m ]
  %i.ey = icmp ugt i32 %i.ex, 1
  br i1 %i.ey, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p, %bb.x
  %i.ez = phi i32 [ %i.ha, %bb.x ], [ %i.ex, %bb.p ] ; 2 uses
  %.0128 = phi i32 [ %i.fc, %bb.x ], [ %.2.peel, %bb.p ]
  %.0109125 = phi i32 [ %i.hb, %bb.x ], [ 1, %bb.p ] ; 5 uses
  %i.fa = load <2 x i32>, ptr %i.ba, align 8, !tbaa !8
  store <2 x i32> %i.fa, ptr %i.az, align 8, !tbaa !8
  %i.fb = add i32 %.0109125, %i.cd
  %i.fc = urem i32 %i.fb, %i.ez                   ; 2 uses
  %i.fd = load ptr, ptr %i.ce, align 8, !tbaa !21
  %i.fe = sext i32 %i.fc to i64                   ; 4 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !8  ; 2 uses
  %.not113 = icmp eq i32 %i.fg, 2147483647
  br i1 %.not113, label %bb.x, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.fh = load i8, ptr %i.bu, align 8
  %i.fi = lshr i8 %i.fh, 4
  %i.fj = and i8 %i.fi, 1
  %i.fk = zext nneg i8 %i.fj to i64               ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !8
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.fk
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !8
  %i.fp = call i32 @lv_map(i32 noundef %i.fg, i32 noundef %i.fm, i32 noundef %i.fo, i32 noundef 0, i32 noundef %i.h) #8
  %i.fq = sub i32 %i.bg, %i.fp
  store i32 %i.fq, ptr %i.bf, align 4, !tbaa !48
  %i.fr = load ptr, ptr %.0108130, align 8, !tbaa !25
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.fe
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !8
  %i.fu = load i8, ptr %i.bu, align 8
  %i.fv = lshr i8 %i.fu, 3
  %i.fw = and i8 %i.fv, 1
  %i.fx = zext nneg i8 %i.fw to i64               ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !8
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.fx
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !8
  %i.gc = call i32 @lv_map(i32 noundef %i.ft, i32 noundef %i.fz, i32 noundef %i.gb, i32 noundef 0, i32 noundef %i.g) #8
  %i.gd = add nsw i32 %i.gc, %i.n
  store i32 %i.gd, ptr %i.ba, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.ge = load <2 x i32>, ptr %i.az, align 8, !tbaa !8
  %i.gf = shufflevector <2 x i32> %i.ge, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.gg = sub nsw <4 x i32> %i.gf, %i.af
  %i.gh = add nsw <4 x i32> %i.gf, %i.af
  %i.gi = shufflevector <4 x i32> %i.gg, <4 x i32> %i.gh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.gi, ptr %4, align 16, !tbaa !8
  %i.gj = load ptr, ptr %i.ce, align 8, !tbaa !21 ; 2 uses
  %i.gk = sext i32 %.0128 to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !8
  %.not115 = icmp eq i32 %i.gm, 2147483647
  br i1 %.not115, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.fe
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !8
  %.not116 = icmp eq i32 %i.go, 2147483647
  br i1 %.not116, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %6 = add i32 %.0109125, -1                      ; 2 uses
  store i32 %6, ptr %i.bj, align 8, !tbaa !64
  call void @lv_draw_line(ptr noundef %1, ptr noundef nonnull %2) #8
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %6, ptr %i.bo, align 8, !tbaa !65
  call void @lv_draw_rect(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.r, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.gp = load i32, ptr %i.bh, align 4, !tbaa !33 ; 3 uses
  %i.gq = add i32 %i.gp, -1
  %i.gr = icmp eq i32 %.0109125, %i.gq
  br i1 %i.gr, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.gs = load ptr, ptr %i.ce, align 8, !tbaa !21
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.fe
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !8
  %.not117 = icmp eq i32 %i.gu, 2147483647
  br i1 %.not117, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.gv = load <2 x i32>, ptr %i.ba, align 8, !tbaa !8
  %i.gw = shufflevector <2 x i32> %i.gv, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.gx = sub nsw <4 x i32> %i.gw, %i.af
  %i.gy = add nsw <4 x i32> %i.gw, %i.af
  %i.gz = shufflevector <4 x i32> %i.gx, <4 x i32> %i.gy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.gz, ptr %5, align 16, !tbaa !8
  store i32 %.0109125, ptr %i.bo, align 8, !tbaa !65
  call void @lv_draw_rect(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %.pre137 = load i32, ptr %i.bh, align 4, !tbaa !33
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.u, %bb.w, %bb.v
  %i.ha = phi i32 [ %i.ez, %.lr.ph ], [ %i.gp, %bb.u ], [ %.pre137, %bb.w ], [ %i.gp, %bb.v ] ; 2 uses
  %i.hb = add nuw i32 %.0109125, 1                ; 2 uses
  %i.hc = icmp ult i32 %i.hb, %i.ha
  br i1 %i.hc, label %.lr.ph, label %._crit_edge, !llvm.loop !114

._crit_edge:                                      ; preds = %bb.x, %bb.n, %bb.p, %bb.l
  %i.hd = load i32, ptr %i.bs, align 4, !tbaa !49
  %i.he = add i32 %i.hd, 1
  store i32 %i.he, ptr %i.bs, align 4, !tbaa !49
  %i.hf = load i32, ptr %i.bt, align 4, !tbaa !66
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr %i.bt, align 4, !tbaa !66
  br label %bb.y

bb.y:                                             ; preds = %bb.f, %._crit_edge
  %i.hh = call ptr @lv_ll_get_prev(ptr noundef nonnull %i.au, ptr noundef nonnull %.0108130) #8 ; 2 uses
  %.not = icmp eq ptr %i.hh, null
  br i1 %.not, label %._crit_edge133, label %bb.f, !llvm.loop !116

._crit_edge133:                                   ; preds = %bb.y, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

declare void @lv_draw_line_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_init_draw_line_dsc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_line(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_rect_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_init_draw_rect_dsc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_rect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lv_obj_invalidate_area(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !20, i64 80}
!10 = !{!"_lv_chart_t", !11, i64 0, !19, i64 72, !19, i64 96, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 168}
!11 = !{!"_lv_obj_t", !12, i64 0, !14, i64 8, !15, i64 16, !16, i64 24, !13, i64 32, !17, i64 40, !5, i64 56, !18, i64 60, !18, i64 62, !18, i64 62, !18, i64 62, !18, i64 62, !18, i64 62, !18, i64 63, !18, i64 63, !18, i64 63, !18, i64 63, !18, i64 63, !18, i64 63, !18, i64 64}
!12 = !{!"p1 _ZTS15_lv_obj_class_t", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 _ZTS9_lv_obj_t", !13, i64 0}
!15 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !13, i64 0}
!16 = !{!"p1 _ZTS15_lv_obj_style_t", !13, i64 0}
!17 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!18 = !{!"short", !6, i64 0}
!19 = !{!"", !5, i64 0, !20, i64 8, !20, i64 16}
!20 = !{!"p1 omnipotent char", !13, i64 0}
!21 = !{!22, !23, i64 8}
!22 = !{!"_lv_chart_series_t", !23, i64 0, !23, i64 8, !24, i64 16, !5, i64 20, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 24}
!23 = !{!"p1 int", !13, i64 0}
!24 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2}
!25 = !{!22, !23, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!10, !20, i64 104}
!29 = distinct !{!29, !27}
!30 = !{!11, !5, i64 40}
!31 = !{!32, !5, i64 0}
!32 = !{!"", !5, i64 0, !5, i64 4}
!33 = !{!10, !5, i64 164}
!34 = distinct !{!34, !27}
!35 = !{!10, !5, i64 152}
!36 = !{i64 0, i64 4, !8, i64 4, i64 4, !8, i64 8, i64 4, !8, i64 12, i64 4, !8}
!37 = !{!38, !40, i64 24}
!38 = !{!"", !39, i64 0, !32, i64 64, !32, i64 72, !13, i64 80, !5, i64 88, !24, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !6, i64 108, !6, i64 109, !6, i64 109, !6, i64 109}
!39 = !{!"", !14, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !40, i64 24, !18, i64 32, !18, i64 34, !24, i64 36, !6, i64 39, !5, i64 40, !5, i64 42, !41, i64 48, !13, i64 56}
!40 = !{!"p1 _ZTS11_lv_layer_t", !13, i64 0}
!41 = !{!"long", !6, i64 0}
!42 = !{!10, !5, i64 156}
!43 = !{!11, !5, i64 44}
!44 = !{!38, !5, i64 64}
!45 = !{!11, !5, i64 48}
!46 = !{!38, !5, i64 72}
!47 = !{!38, !5, i64 68}
!48 = !{!38, !5, i64 76}
!49 = !{!38, !5, i64 12}
!50 = distinct !{!50, !27}
!51 = !{!10, !5, i64 160}
!52 = !{!11, !5, i64 52}
!53 = distinct !{!53, !27}
!54 = !{!55, !40, i64 24}
!55 = !{!"", !39, i64 0, !5, i64 64, !13, i64 72, !13, i64 80, !24, i64 88, !6, i64 91, !6, i64 92, !6, i64 93, !6, i64 94, !6, i64 95, !6, i64 96, !6, i64 97, !24, i64 98, !56, i64 104, !13, i64 160, !24, i64 168, !5, i64 172, !5, i64 176, !6, i64 176, !24, i64 177, !5, i64 180, !5, i64 184, !24, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204}
!56 = !{!"", !6, i64 0, !6, i64 10, !5, i64 11, !5, i64 11, !6, i64 12, !13, i64 48}
!57 = !{i64 0, i64 1, !58, i64 1, i64 1, !58, i64 2, i64 1, !58}
!58 = !{!6, !6, i64 0}
!59 = !{!60, !5, i64 8}
!60 = !{!"_lv_chart_cursor_t", !32, i64 0, !5, i64 8, !24, i64 12, !61, i64 16, !5, i64 24, !5, i64 28}
!61 = !{!"p1 _ZTS18_lv_chart_series_t", !13, i64 0}
!62 = !{!60, !61, i64 16}
!63 = !{!60, !5, i64 24}
!64 = !{!38, !5, i64 16}
!65 = !{!55, !5, i64 16}
!66 = !{!55, !5, i64 12}
!67 = distinct !{!67, !27}
!68 = distinct !{!68, !27}
!69 = distinct !{!69, !27}
!70 = !{!22, !5, i64 20}
!71 = distinct !{!71, !27}
!72 = !{!23, !23, i64 0}
!73 = distinct !{!73, !27, !74, !75}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = distinct !{!76, !27}
!77 = distinct !{!77, !27, !75, !74}
!78 = distinct !{!78, !27}
!79 = distinct !{!79, !27, !74, !75}
!80 = distinct !{!80, !27, !75, !74}
!81 = !{!32, !5, i64 4}
!82 = distinct !{!82, !27}
!83 = distinct !{!83, !27}
!84 = distinct !{!84, !27}
!85 = !{!60, !5, i64 0}
!86 = !{!60, !5, i64 4}
!87 = distinct !{!87, !27}
!88 = !{!17, !5, i64 4}
!89 = !{!17, !5, i64 12}
!90 = !{!17, !5, i64 0}
!91 = !{!17, !5, i64 8}
!92 = distinct !{!92, !27}
!93 = distinct !{!93, !27}
!94 = !{!38, !5, i64 96}
!95 = !{!38, !13, i64 80}
!96 = !{!38, !5, i64 88}
!97 = !{!98, !5, i64 80}
!98 = !{!"_lv_layer_t", !99, i64 0, !100, i64 8, !40, i64 16, !40, i64 24, !13, i64 32, !17, i64 40, !17, i64 56, !17, i64 72, !5, i64 88, !101, i64 92, !5, i64 96, !102, i64 100, !6, i64 101}
end_hunk_2
