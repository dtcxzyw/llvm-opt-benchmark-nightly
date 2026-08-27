Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_utils?download=true
inline.NumInlined: 12
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@lv_draw_sw_i1_to_argb8888:bb.a
  %.not41 = icmp slt i8 %i.av, 0
  %i.aw = select i1 %.not41, i32 %7, i32 %6
  %i.ax = getelementptr inbounds nuw i8, ptr %.02229, i64 4
  store i32 %i.aw, ptr %.02229, align 4, !tbaa !12
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !8
  %i.az = and i8 %i.ay, 64
  %.not.1 = icmp eq i8 %i.az, 0
  %i.ba = select i1 %.not.1, i32 %6, i32 %7
  %i.bb = getelementptr inbounds nuw i8, ptr %.02229, i64 8
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !12
  %i.bc = load i8, ptr %i.au, align 1, !tbaa !8
  %i.bd = and i8 %i.bc, 32
  %.not.2 = icmp eq i8 %i.bd, 0
  %i.be = select i1 %.not.2, i32 %6, i32 %7
  %i.bf = getelementptr inbounds nuw i8, ptr %.02229, i64 12
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !12
  %i.bg = load i8, ptr %i.au, align 1, !tbaa !8
  %i.bh = and i8 %i.bg, 16
  %.not.3 = icmp eq i8 %i.bh, 0
  %i.bi = select i1 %.not.3, i32 %6, i32 %7
  %i.bj = getelementptr inbounds nuw i8, ptr %.02229, i64 16
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !12
  %i.bk = load i8, ptr %i.au, align 1, !tbaa !8
  %i.bl = and i8 %i.bk, 8
  %.not.4 = icmp eq i8 %i.bl, 0
  %i.bm = select i1 %.not.4, i32 %6, i32 %7
  %i.bn = getelementptr inbounds nuw i8, ptr %.02229, i64 20
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !12
  %i.bo = load i8, ptr %i.au, align 1, !tbaa !8
  %i.bp = and i8 %i.bo, 4
  %.not.5 = icmp eq i8 %i.bp, 0
  %i.bq = select i1 %.not.5, i32 %6, i32 %7
  %i.br = getelementptr inbounds nuw i8, ptr %.02229, i64 24
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !12
  %i.bs = load i8, ptr %i.au, align 1, !tbaa !8
  %i.bt = and i8 %i.bs, 2
  %.not.6 = icmp eq i8 %i.bt, 0
  %i.bu = select i1 %.not.6, i32 %6, i32 %7
  %i.bv = getelementptr inbounds nuw i8, ptr %.02229, i64 28
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !12
  %i.bw = load i8, ptr %i.au, align 1, !tbaa !8
  %i.bx = and i8 %i.bw, 1
  %.not.7 = icmp eq i8 %i.bx, 0
  %i.by = select i1 %.not.7, i32 %6, i32 %7
  %i.bz = getelementptr inbounds nuw i8, ptr %.02229, i64 32
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !19

._crit_edge:                                      ; preds = %.preheader, %middle.block
  %i.ca = getelementptr inbounds nuw i8, ptr %.02531, i64 %i.b
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.02432, i64 %i.d
  %i.cc = add nuw i32 %.02333, 1                  ; 2 uses
  %exitcond38.not = icmp eq i32 %i.cc, %3
  br i1 %exitcond38.not, label %._crit_edge34.split, label %.preheader26, !llvm.loop !20
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @lv_draw_sw_rgb565_swap(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 2
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %0, align 2, !tbaa !21
  %rev = tail call i16 @llvm.bswap.i16(i16 %i.c)
  store i16 %rev, ptr %0, align 2, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = add i32 %1, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.052 = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ]  ; 3 uses
  %.0 = phi i32 [ %i.e, %bb.b ], [ %1, %bb.a ]    ; 4 uses
  %i.f = lshr i32 %.0, 1                          ; 2 uses
  %i.g = icmp ugt i32 %.0, 15
  br i1 %i.g, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.c
  %.050.lcssa = phi ptr [ %.052, %bb.c ], [ %i.am, %.lr.ph ] ; 3 uses
  %.049.lcssa = phi i32 [ %i.f, %bb.c ], [ %i.an, %.lr.ph ] ; 5 uses
  %.not5359 = icmp eq i32 %.049.lcssa, 0
  br i1 %.not5359, label %._crit_edge, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %.preheader
  %i.h = zext nneg i32 %.049.lcssa to i64         ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.049.lcssa, 8
  br i1 %min.iters.check, label %.lr.ph62.preheader69, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph62.preheader
  %n.vec = and i64 %i.h, 2147483640               ; 4 uses
  %i.i = trunc nuw nsw i64 %n.vec to i32
  %i.j = sub nsw i32 %.049.lcssa, %i.i
  %i.k = shl nuw nsw i64 %n.vec, 2
  %i.l = getelementptr i8, ptr %.050.lcssa, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.050.lcssa, i64 %i.m ; 3 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !12 ; 2 uses
  %wide.load67 = load <4 x i32>, ptr %i.n, align 4, !tbaa !12 ; 2 uses
  %i.o = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.p = lshr <4 x i32> %wide.load67, splat (i32 8)
  %i.q = and <4 x i32> %i.o, splat (i32 16711935)
  %i.r = and <4 x i32> %i.p, splat (i32 16711935)
  %i.s = shl <4 x i32> %wide.load, splat (i32 8)
  %i.t = shl <4 x i32> %wide.load67, splat (i32 8)
  %i.u = and <4 x i32> %i.s, splat (i32 -16711936)
  %i.v = and <4 x i32> %i.t, splat (i32 -16711936)
  %i.w = or disjoint <4 x i32> %i.q, %i.u
  %i.x = or disjoint <4 x i32> %i.r, %i.v
  store <4 x i32> %i.w, ptr %next.gep, align 4, !tbaa !12
  store <4 x i32> %i.x, ptr %i.n, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph62.preheader69

.lr.ph62.preheader69:                             ; preds = %.lr.ph62.preheader, %middle.block
  %.161.ph = phi i32 [ %.049.lcssa, %.lr.ph62.preheader ], [ %i.j, %middle.block ]
  %.15160.ph = phi ptr [ %.050.lcssa, %.lr.ph62.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph62

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.04957 = phi i32 [ %i.an, %.lr.ph ], [ %i.f, %bb.c ]
  %.05056 = phi ptr [ %i.am, %.lr.ph ], [ %.052, %bb.c ] ; 4 uses
  %i.z = load <4 x i32>, ptr %.05056, align 4, !tbaa !12 ; 2 uses
  %i.aa = lshr <4 x i32> %i.z, splat (i32 8)
  %i.ab = and <4 x i32> %i.aa, splat (i32 16711935)
  %i.ac = shl <4 x i32> %i.z, splat (i32 8)
  %i.ad = and <4 x i32> %i.ac, splat (i32 -16711936)
  %i.ae = or disjoint <4 x i32> %i.ab, %i.ad
  store <4 x i32> %i.ae, ptr %.05056, align 4, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %.05056, i64 16 ; 2 uses
  %i.ag = load <4 x i32>, ptr %i.af, align 4, !tbaa !12 ; 2 uses
  %i.ah = lshr <4 x i32> %i.ag, splat (i32 8)
  %i.ai = and <4 x i32> %i.ah, splat (i32 16711935)
  %i.aj = shl <4 x i32> %i.ag, splat (i32 8)
  %i.ak = and <4 x i32> %i.aj, splat (i32 -16711936)
  %i.al = or disjoint <4 x i32> %i.ai, %i.ak
  store <4 x i32> %i.al, ptr %i.af, align 4, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %.05056, i64 32 ; 2 uses
  %i.an = add nsw i32 %.04957, -8                 ; 3 uses
  %i.ao = icmp ugt i32 %i.an, 7
  br i1 %i.ao, label %.lr.ph, label %.preheader, !llvm.loop !24

.lr.ph62:                                         ; preds = %.lr.ph62.preheader69, %.lr.ph62
  %.161 = phi i32 [ %i.aw, %.lr.ph62 ], [ %.161.ph, %.lr.ph62.preheader69 ]
  %.15160 = phi ptr [ %i.av, %.lr.ph62 ], [ %.15160.ph, %.lr.ph62.preheader69 ] ; 3 uses
  %i.ap = load i32, ptr %.15160, align 4, !tbaa !12 ; 2 uses
  %i.aq = lshr i32 %i.ap, 8
  %i.ar = and i32 %i.aq, 16711935
  %i.as = shl i32 %i.ap, 8
  %i.at = and i32 %i.as, -16711936
  %i.au = or disjoint i32 %i.ar, %i.at
  store i32 %i.au, ptr %.15160, align 4, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %.15160, i64 4
  %i.aw = add nsw i32 %.161, -1                   ; 2 uses
  %.not53 = icmp eq i32 %i.aw, 0
  br i1 %.not53, label %._crit_edge, label %.lr.ph62, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph62, %middle.block, %.preheader
  %i.ax = and i32 %.0, 1
  %.not54 = icmp eq i32 %i.ax, 0
  br i1 %.not54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ay = add nsw i32 %.0, -1
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.052, i64 %i.az ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !21
  %rev55 = tail call i16 @llvm.bswap.i16(i16 %i.bb)
  store i16 %rev55, ptr %i.ba, align 2, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @lv_draw_sw_i1_invert(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 3
  %i.d = icmp ne i64 %i.c, 0
  %i.e = icmp ne i32 %1, 0
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.2, label %._crit_edge

.lr.ph.2:                                         ; preds = %.preheader, %.lr.ph.2
  %.02735 = phi ptr [ %i.i, %.lr.ph.2 ], [ %0, %.preheader ] ; 3 uses
  %.02934 = phi i32 [ %i.j, %.lr.ph.2 ], [ %1, %.preheader ]
  %i.g = load i8, ptr %.02735, align 1, !tbaa !8
  %i.h = xor i8 %i.g, -1
  store i8 %i.h, ptr %.02735, align 1, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %.02735, i64 1 ; 3 uses
  %i.j = add i32 %.02934, -1                      ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = and i64 %i.k, 3
  %i.m = icmp ne i64 %i.l, 0
  %i.n = icmp ne i32 %i.j, 0
  %2 = select i1 %i.m, i1 %i.n, i1 false
  br i1 %2, label %.lr.ph.2, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph.2, %.preheader
  %.029.lcssa = phi i32 [ %1, %.preheader ], [ %i.j, %.lr.ph.2 ] ; 5 uses
  %.027.lcssa = phi ptr [ %0, %.preheader ], [ %i.i, %.lr.ph.2 ] ; 4 uses
  %i.o = icmp ugt i32 %.029.lcssa, 3
  br i1 %i.o, label %.lr.ph39.preheader, label %bb.b

.lr.ph39.preheader:                               ; preds = %._crit_edge
  %i.p = lshr i32 %.029.lcssa, 2
  %wide.trip.count = zext nneg i32 %i.p to i64    ; 4 uses
  %min.iters.check = icmp ult i32 %.029.lcssa, 32
  br i1 %min.iters.check, label %.lr.ph39.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph39.preheader
  %n.vec = and i64 %wide.trip.count, 1073741816   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.027.lcssa, i64 %index ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !tbaa !12
  %wide.load56 = load <4 x i32>, ptr %i.r, align 4, !tbaa !12
  %i.s = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.t = xor <4 x i32> %wide.load56, splat (i32 -1)
  store <4 x i32> %i.s, ptr %i.q, align 4, !tbaa !12
  store <4 x i32> %i.t, ptr %i.r, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge40, label %.lr.ph39.preheader57

.lr.ph39.preheader57:                             ; preds = %.lr.ph39.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph39.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39.preheader57, %.lr.ph39
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph39 ], [ %indvars.iv.ph, %.lr.ph39.preheader57 ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.027.lcssa, i64 %indvars.iv ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !12
  %i.x = xor i32 %i.w, -1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge40, label %.lr.ph39, !llvm.loop !28

._crit_edge40:                                    ; preds = %.lr.ph39, %middle.block
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.027.lcssa, i64 %wide.trip.count
  %i.z = and i32 %.029.lcssa, 3
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge40, %._crit_edge
  %.130 = phi i32 [ %i.z, %._crit_edge40 ], [ %.029.lcssa, %._crit_edge ] ; 3 uses
  %.128 = phi ptr [ %i.y, %._crit_edge40 ], [ %.027.lcssa, %._crit_edge ] ; 4 uses
  %.not44 = icmp eq i32 %.130, 0
  br i1 %.not44, label %.loopexit, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.b
  %i.aa = load i8, ptr %.128, align 1, !tbaa !8
  %i.ab = xor i8 %i.aa, -1
  store i8 %i.ab, ptr %.128, align 1, !tbaa !8
  %exitcond51.not = icmp eq i32 %.130, 1
  br i1 %exitcond51.not, label %.loopexit, label %.lr.ph43.1

.lr.ph43.1:                                       ; preds = %.lr.ph43
  %i.ac = getelementptr inbounds nuw i8, ptr %.128, i64 1 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.ae = xor i8 %i.ad, -1
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !8
  %exitcond51.not.1 = icmp eq i32 %.130, 2
  br i1 %exitcond51.not.1, label %.loopexit, label %.lr.ph43.2

.lr.ph43.2:                                       ; preds = %.lr.ph43.1
  %i.af = getelementptr inbounds nuw i8, ptr %.128, i64 2 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ah = xor i8 %i.ag, -1
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph43, %.lr.ph43.1, %.lr.ph43.2, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_i1_convert_to_vtiled(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %4, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader50

.preheader50:                                     ; preds = %bb.a, %.preheader50
  br label %.preheader50

bb.b:                                             ; preds = %bb.a
  %i.c = or i32 %3, %2
  %i.d = and i32 %i.c, 7
  %or.cond46 = icmp eq i32 %i.d, 0
  br i1 %or.cond46, label %bb.c, label %.preheader49

.preheader49:                                     ; preds = %bb.b, %.preheader49
  br label %.preheader49

bb.c:                                             ; preds = %bb.b
  %i.e = lshr exact i32 %2, 3
  %i.f = mul i32 %i.e, %3
  %.not = icmp ult i32 %1, %i.f
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c, %.preheader
  br label %.preheader

bb.d:                                             ; preds = %bb.c
  %.not44 = icmp ult i32 %5, %1
  br i1 %.not44, label %.preheader47, label %bb.e

.preheader47:                                     ; preds = %bb.d, %.preheader47
  br label %.preheader47

bb.e:                                             ; preds = %bb.d
  %i.g = zext i32 %5 to i64
  tail call void @lv_memset(ptr noundef nonnull %4, i8 noundef zeroext 0, i64 noundef %i.g) #5
  %i.h = icmp ne i32 %3, 0
  %i.i = icmp ne i32 %2, 0
  %or.cond57 = and i1 %i.h, %i.i
  br i1 %or.cond57, label %.preheader48.lr.ph.split, label %._crit_edge54.split

.preheader48.lr.ph.split:                         ; preds = %bb.e
  br i1 %6, label %.preheader48.us, label %.preheader48

.preheader48.us:                                  ; preds = %.preheader48.lr.ph.split, %._crit_edge.split.us.us
  %.03752.us = phi i32 [ %i.af, %._crit_edge.split.us.us ], [ 0, %.preheader48.lr.ph.split ] ; 4 uses
  %i.j = mul i32 %.03752.us, %2
  %i.k = and i32 %.03752.us, 7
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader48.us
  %.051.us.us = phi i32 [ 0, %.preheader48.us ], [ %i.ae, %bb.f ] ; 4 uses
  %i.l = add i32 %.051.us.us, %i.j
  %i.m = mul i32 %.051.us.us, %3
  %i.n = add i32 %i.m, %.03752.us
  %i.o = lshr i32 %i.l, 3
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %i.s = zext i8 %i.r to i32
  %i.t = and i32 %.051.us.us, 7
  %i.u = xor i32 %i.t, 7
  %i.v = lshr i32 %i.s, %i.u
  %i.w = and i32 %i.v, 1
  %i.x = shl nuw nsw i32 %i.w, %i.k
  %i.y = lshr i32 %i.n, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %i.z ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = trunc nuw i32 %i.x to i8
  %i.ad = or i8 %i.ab, %i.ac
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !8
  %i.ae = add nuw i32 %.051.us.us, 1              ; 2 uses
  %exitcond60.not = icmp eq i32 %i.ae, %2
  br i1 %exitcond60.not, label %._crit_edge.split.us.us, label %bb.f, !llvm.loop !29

._crit_edge.split.us.us:                          ; preds = %bb.f
  %i.af = add nuw i32 %.03752.us, 1               ; 2 uses
  %exitcond61.not = icmp eq i32 %i.af, %3
  br i1 %exitcond61.not, label %._crit_edge54.split, label %.preheader48.us, !llvm.loop !30

.preheader48:                                     ; preds = %.preheader48.lr.ph.split, %._crit_edge.split
  %.03752 = phi i32 [ %i.aj, %._crit_edge.split ], [ 0, %.preheader48.lr.ph.split ] ; 4 uses
  %i.ag = mul i32 %.03752, %2
  %i.ah = and i32 %.03752, 7
  %i.ai = xor i32 %i.ah, 7
  br label %bb.g

._crit_edge54.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %bb.e
  ret void

._crit_edge.split:                                ; preds = %bb.g
  %i.aj = add nuw i32 %.03752, 1                  ; 2 uses
  %exitcond59.not = icmp eq i32 %i.aj, %3
  br i1 %exitcond59.not, label %._crit_edge54.split, label %.preheader48, !llvm.loop !30

bb.g:                                             ; preds = %.preheader48, %bb.g
  %.051 = phi i32 [ 0, %.preheader48 ], [ %i.bd, %bb.g ] ; 4 uses
  %i.ak = add i32 %.051, %i.ag
  %i.al = mul i32 %.051, %3
  %i.am = add i32 %i.al, %.03752
  %i.an = lshr i32 %i.ak, 3
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %i.ar = zext i8 %i.aq to i32
  %i.as = and i32 %.051, 7
  %i.at = xor i32 %i.as, 7
  %i.au = lshr i32 %i.ar, %i.at
  %i.av = and i32 %i.au, 1
  %i.aw = shl nuw nsw i32 %i.av, %i.ai
  %i.ax = lshr i32 %i.am, 3
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bb = trunc nuw i32 %i.aw to i8
  %i.bc = or i8 %i.ba, %i.bb
  store i8 %i.bc, ptr %i.az, align 1, !tbaa !8
  %i.bd = add nuw i32 %.051, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %2
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.g, !llvm.loop !29
}

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @lv_draw_sw_rotate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  switch i32 %6, label %rotate90_l8.exit [
    i32 1, label %bb.b
    i32 2, label %bb.g
    i32 3, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %7, label %rotate90_l8.exit [
    i32 6, label %bb.c
    i32 18, label %bb.d
    i32 15, label %bb.e
    i32 17, label %bb.f
    i32 16, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = icmp sgt i32 %2, 0
  %i.b = icmp sgt i32 %3, 0
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %rotate90_l8.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.c = sext i32 %4 to i64                       ; 5 uses
  %i.d = zext nneg i32 %2 to i64                  ; 4 uses
  %i.e = sext i32 %5 to i64                       ; 2 uses
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 10 uses
  %i.f = add nsw i64 %i.d, -1
  %i.g = mul nsw i64 %i.f, %i.e
  %scevgep531 = getelementptr i8, ptr %1, i64 %i.g
  %scevgep532 = getelementptr i8, ptr %1, i64 %wide.trip.count.i
  %i.h = getelementptr i8, ptr %0, i64 %wide.trip.count.i
  %i.i = getelementptr i8, ptr %i.h, i64 %i.d
  %scevgep533 = getelementptr i8, ptr %i.i, i64 -1
  %min.iters.check539 = icmp ugt i32 %3, 7
  %ident.check529.not = icmp eq i32 %4, 1
  %or.cond = and i1 %min.iters.check539, %ident.check529.not
  %bound0534 = icmp ult ptr %scevgep531, %scevgep533
  %bound1535 = icmp ult ptr %0, %scevgep532
  %found.conflict536 = and i1 %bound0534, %bound1535
  %stride.check537 = icmp sgt i32 %5, 0
  %i.j = or i1 %found.conflict536, %stride.check537
  %min.iters.check541 = icmp ult i32 %3, 32
  %i.k = and i64 %wide.trip.count.i, 24
  %n.vec543 = and i64 %wide.trip.count.i, 2147483616 ; 5 uses
  %cmp.n550 = icmp eq i64 %n.vec543, %wide.trip.count.i
  %min.epilog.iters.check556 = icmp eq i64 %i.k, 0
  %n.vec558 = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %cmp.n564 = icmp eq i64 %n.vec558, %wide.trip.count.i
  %xtraiter610 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod611.not = icmp eq i64 %xtraiter610, 0
  br label %iter.check553

iter.check553:                                    ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv25.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next26.i, %._crit_edge.i ] ; 7 uses
  %i.l = xor i64 %indvars.iv25.i, -1
  %i.m = add nsw i64 %i.l, %i.d
  %i.n = mul nsw i64 %i.m, %i.e
  %invariant.gep.i = getelementptr i8, ptr %1, i64 %i.n ; 7 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.j
  br i1 %brmerge, label %vec.epilog.scalar.ph554.preheader, label %vector.main.loop.iter.check540

vector.main.loop.iter.check540:                   ; preds = %iter.check553
  br i1 %min.iters.check541, label %vec.epilog.ph557, label %vector.ph542

vector.ph542:                                     ; preds = %vector.main.loop.iter.check540
  %i.o = add nuw i64 %indvars.iv25.i, %n.vec543
  %i.p = getelementptr i8, ptr %0, i64 %indvars.iv25.i
  br label %vector.body544

vector.body544:                                   ; preds = %vector.body544, %vector.ph542
  %index545 = phi i64 [ 0, %vector.ph542 ], [ %index.next548, %vector.body544 ] ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 %index545 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load546 = load <16 x i8>, ptr %i.q, align 1, !tbaa !8, !alias.scope !31
  %wide.load547 = load <16 x i8>, ptr %i.r, align 1, !tbaa !8, !alias.scope !31
  %i.s = getelementptr i8, ptr %invariant.gep.i, i64 %index545 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  store <16 x i8> %wide.load546, ptr %i.s, align 1, !tbaa !8, !alias.scope !34, !noalias !31
  store <16 x i8> %wide.load547, ptr %i.t, align 1, !tbaa !8, !alias.scope !34, !noalias !31
  %index.next548 = add nuw i64 %index545, 32      ; 2 uses
  %i.u = icmp eq i64 %index.next548, %n.vec543
  br i1 %i.u, label %middle.block549, label %vector.body544, !llvm.loop !36

middle.block549:                                  ; preds = %vector.body544
  br i1 %cmp.n550, label %._crit_edge.i, label %vec.epilog.iter.check555

vec.epilog.iter.check555:                         ; preds = %middle.block549
  br i1 %min.epilog.iters.check556, label %vec.epilog.scalar.ph554.preheader, label %vec.epilog.ph557, !prof !37

vec.epilog.ph557:                                 ; preds = %vector.main.loop.iter.check540, %vec.epilog.iter.check555
  %vec.epilog.resume.val551 = phi i64 [ %n.vec543, %vec.epilog.iter.check555 ], [ 0, %vector.main.loop.iter.check540 ]
  %i.v = add nuw i64 %indvars.iv25.i, %n.vec558
  %i.w = getelementptr i8, ptr %0, i64 %indvars.iv25.i
  br label %vec.epilog.vector.body559

vec.epilog.vector.body559:                        ; preds = %vec.epilog.vector.body559, %vec.epilog.ph557
  %index560 = phi i64 [ %vec.epilog.resume.val551, %vec.epilog.ph557 ], [ %index.next562, %vec.epilog.vector.body559 ] ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 %index560
  %wide.load561 = load <8 x i8>, ptr %i.x, align 1, !tbaa !8, !alias.scope !31
  %i.y = getelementptr i8, ptr %invariant.gep.i, i64 %index560
  store <8 x i8> %wide.load561, ptr %i.y, align 1, !tbaa !8, !alias.scope !34, !noalias !31
  %index.next562 = add nuw i64 %index560, 8       ; 2 uses
  %i.z = icmp eq i64 %index.next562, %n.vec558
  br i1 %i.z, label %vec.epilog.middle.block563, label %vec.epilog.vector.body559, !llvm.loop !38

vec.epilog.middle.block563:                       ; preds = %vec.epilog.vector.body559
  br i1 %cmp.n564, label %._crit_edge.i, label %vec.epilog.scalar.ph554.preheader

vec.epilog.scalar.ph554.preheader:                ; preds = %iter.check553, %vec.epilog.iter.check555, %vec.epilog.middle.block563
  %indvars.iv27.i.ph = phi i64 [ %indvars.iv25.i, %iter.check553 ], [ %i.v, %vec.epilog.middle.block563 ], [ %i.o, %vec.epilog.iter.check555 ] ; 2 uses
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check553 ], [ %n.vec558, %vec.epilog.middle.block563 ], [ %n.vec543, %vec.epilog.iter.check555 ] ; 3 uses
  br i1 %lcmp.mod611.not, label %vec.epilog.scalar.ph554.prol.loopexit, label %vec.epilog.scalar.ph554.prol

vec.epilog.scalar.ph554.prol:                     ; preds = %vec.epilog.scalar.ph554.preheader, %vec.epilog.scalar.ph554.prol
  %indvars.iv27.i.prol = phi i64 [ %indvars.iv.next28.i.prol, %vec.epilog.scalar.ph554.prol ], [ %indvars.iv27.i.ph, %vec.epilog.scalar.ph554.preheader ] ; 2 uses
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph554.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph554.preheader ] ; 2 uses
  %prol.iter612 = phi i64 [ %prol.iter612.next, %vec.epilog.scalar.ph554.prol ], [ 0, %vec.epilog.scalar.ph554.preheader ]
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %indvars.iv27.i.prol
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %gep.i.prol = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  store i8 %i.ab, ptr %gep.i.prol, align 1, !tbaa !8
  %indvars.iv.next28.i.prol = add nsw i64 %indvars.iv27.i.prol, %i.c ; 2 uses
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter612.next = add i64 %prol.iter612, 1   ; 2 uses
  %prol.iter612.cmp.not = icmp eq i64 %prol.iter612.next, %xtraiter610
  br i1 %prol.iter612.cmp.not, label %vec.epilog.scalar.ph554.prol.loopexit, label %vec.epilog.scalar.ph554.prol, !llvm.loop !39

vec.epilog.scalar.ph554.prol.loopexit:            ; preds = %vec.epilog.scalar.ph554.prol, %vec.epilog.scalar.ph554.preheader
  %indvars.iv27.i.unr = phi i64 [ %indvars.iv27.i.ph, %vec.epilog.scalar.ph554.preheader ], [ %indvars.iv.next28.i.prol, %vec.epilog.scalar.ph554.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph554.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph554.prol ]
  %i.ac = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge.i, label %vec.epilog.scalar.ph554

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph554.prol.loopexit, %vec.epilog.scalar.ph554, %vec.epilog.middle.block563, %middle.block549
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next26.i, %i.d
  br i1 %exitcond34.not.i, label %rotate90_l8.exit, label %iter.check553, !llvm.loop !41

vec.epilog.scalar.ph554:                          ; preds = %vec.epilog.scalar.ph554.prol.loopexit, %vec.epilog.scalar.ph554
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i.3, %vec.epilog.scalar.ph554 ], [ %indvars.iv27.i.unr, %vec.epilog.scalar.ph554.prol.loopexit ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph554 ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph554.prol.loopexit ] ; 5 uses
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %indvars.iv27.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  store i8 %i.af, ptr %gep.i, align 1, !tbaa !8
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, %i.c ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next28.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  %gep.i.1 = getelementptr i8, ptr %i.ai, i64 1
  store i8 %i.ah, ptr %gep.i.1, align 1, !tbaa !8
  %indvars.iv.next28.i.1 = add nsw i64 %indvars.iv.next28.i, %i.c ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next28.i.1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  %gep.i.2 = getelementptr i8, ptr %i.al, i64 2
  store i8 %i.ak, ptr %gep.i.2, align 1, !tbaa !8
  %indvars.iv.next28.i.2 = add nsw i64 %indvars.iv.next28.i.1, %i.c ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next28.i.2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8
  %i.ao = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  %gep.i.3 = getelementptr i8, ptr %i.ao, i64 3
  store i8 %i.an, ptr %gep.i.3, align 1, !tbaa !8
  %indvars.iv.next28.i.3 = add nsw i64 %indvars.iv.next28.i.2, %i.c
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph554, !llvm.loop !42

bb.d:                                             ; preds = %bb.b
  %i.ap = icmp sgt i32 %2, 0
  %i.aq = icmp sgt i32 %3, 0
  %or.cond.i77 = and i1 %i.ap, %i.aq
  br i1 %or.cond.i77, label %.lr.ph.preheader.i78, label %rotate90_l8.exit

.lr.ph.preheader.i78:                             ; preds = %bb.d
  %i.ar = ashr i32 %5, 1                          ; 2 uses
  %i.as = ashr i32 %4, 1                          ; 2 uses
  %i.at = sext i32 %i.as to i64                   ; 5 uses
  %i.au = zext nneg i32 %2 to i64                 ; 4 uses
  %i.av = sext i32 %i.ar to i64                   ; 2 uses
  %wide.trip.count.i79 = zext nneg i32 %3 to i64  ; 10 uses
  %i.aw = add nuw i64 %i.au, 9223372036854775807
  %i.ax = mul i64 %i.aw, %i.av
  %i.ay = shl i64 %i.ax, 1
  %scevgep492 = getelementptr i8, ptr %1, i64 %i.ay
  %i.az = shl nuw nsw i64 %wide.trip.count.i79, 1
  %scevgep493 = getelementptr i8, ptr %1, i64 %i.az
  %i.ba = add nuw nsw i64 %i.au, %wide.trip.count.i79
  %i.bb = shl nuw nsw i64 %i.ba, 1
  %i.bc = getelementptr i8, ptr %0, i64 %i.bb
  %scevgep494 = getelementptr i8, ptr %i.bc, i64 -2
  %min.iters.check500 = icmp ugt i32 %3, 3
  %ident.check490.not = icmp eq i32 %i.as, 1
  %or.cond567 = and i1 %min.iters.check500, %ident.check490.not
  %bound0495 = icmp ult ptr %scevgep492, %scevgep494
  %bound1496 = icmp ult ptr %0, %scevgep493
  %found.conflict497 = and i1 %bound0495, %bound1496
  %stride.check498 = icmp sgt i32 %i.ar, 0
  %i.bd = or i1 %found.conflict497, %stride.check498
  %min.iters.check502 = icmp ult i32 %3, 16
  %i.be = and i64 %wide.trip.count.i79, 12
  %n.vec504 = and i64 %wide.trip.count.i79, 2147483632 ; 5 uses
  %cmp.n511 = icmp eq i64 %n.vec504, %wide.trip.count.i79
  %min.epilog.iters.check517 = icmp eq i64 %i.be, 0
  %n.vec519 = and i64 %wide.trip.count.i79, 2147483644 ; 4 uses
  %cmp.n525 = icmp eq i64 %n.vec519, %wide.trip.count.i79
  %xtraiter607 = and i64 %wide.trip.count.i79, 3  ; 2 uses
  %lcmp.mod608.not = icmp eq i64 %xtraiter607, 0
  br label %iter.check514

iter.check514:                                    ; preds = %._crit_edge.i87, %.lr.ph.preheader.i78
  %indvars.iv27.i81 = phi i64 [ 0, %.lr.ph.preheader.i78 ], [ %indvars.iv.next28.i88, %._crit_edge.i87 ] ; 7 uses
  %i.bf = xor i64 %indvars.iv27.i81, -1
  %i.bg = add nsw i64 %i.bf, %i.au
  %i.bh = mul nsw i64 %i.bg, %i.av
  %invariant.gep.i82 = getelementptr [2 x i8], ptr %1, i64 %i.bh ; 7 uses
  %or.cond567.not = xor i1 %or.cond567, true
  %brmerge619 = select i1 %or.cond567.not, i1 true, i1 %i.bd
  br i1 %brmerge619, label %vec.epilog.scalar.ph515.preheader, label %vector.main.loop.iter.check501

vector.main.loop.iter.check501:                   ; preds = %iter.check514
  br i1 %min.iters.check502, label %vec.epilog.ph518, label %vector.ph503

vector.ph503:                                     ; preds = %vector.main.loop.iter.check501
  %i.bi = add nuw i64 %indvars.iv27.i81, %n.vec504
  %i.bj = getelementptr [2 x i8], ptr %0, i64 %indvars.iv27.i81
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph503
  %index506 = phi i64 [ 0, %vector.ph503 ], [ %index.next509, %vector.body505 ] ; 3 uses
  %i.bk = getelementptr [2 x i8], ptr %i.bj, i64 %index506 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load507 = load <8 x i16>, ptr %i.bk, align 2, !tbaa !21, !alias.scope !43
  %wide.load508 = load <8 x i16>, ptr %i.bl, align 2, !tbaa !21, !alias.scope !43
  %i.bm = getelementptr [2 x i8], ptr %invariant.gep.i82, i64 %index506 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  store <8 x i16> %wide.load507, ptr %i.bm, align 2, !tbaa !21, !alias.scope !46, !noalias !43
  store <8 x i16> %wide.load508, ptr %i.bn, align 2, !tbaa !21, !alias.scope !46, !noalias !43
  %index.next509 = add nuw i64 %index506, 16      ; 2 uses
  %i.bo = icmp eq i64 %index.next509, %n.vec504
  br i1 %i.bo, label %middle.block510, label %vector.body505, !llvm.loop !48

middle.block510:                                  ; preds = %vector.body505
  br i1 %cmp.n511, label %._crit_edge.i87, label %vec.epilog.iter.check516

vec.epilog.iter.check516:                         ; preds = %middle.block510
  br i1 %min.epilog.iters.check517, label %vec.epilog.scalar.ph515.preheader, label %vec.epilog.ph518, !prof !49

vec.epilog.ph518:                                 ; preds = %vector.main.loop.iter.check501, %vec.epilog.iter.check516
  %vec.epilog.resume.val512 = phi i64 [ %n.vec504, %vec.epilog.iter.check516 ], [ 0, %vector.main.loop.iter.check501 ]
  %i.bp = add nuw i64 %indvars.iv27.i81, %n.vec519
  %i.bq = getelementptr [2 x i8], ptr %0, i64 %indvars.iv27.i81
  br label %vec.epilog.vector.body520

vec.epilog.vector.body520:                        ; preds = %vec.epilog.vector.body520, %vec.epilog.ph518
  %index521 = phi i64 [ %vec.epilog.resume.val512, %vec.epilog.ph518 ], [ %index.next523, %vec.epilog.vector.body520 ] ; 3 uses
  %i.br = getelementptr [2 x i8], ptr %i.bq, i64 %index521
  %wide.load522 = load <4 x i16>, ptr %i.br, align 2, !tbaa !21, !alias.scope !43
  %i.bs = getelementptr [2 x i8], ptr %invariant.gep.i82, i64 %index521
  store <4 x i16> %wide.load522, ptr %i.bs, align 2, !tbaa !21, !alias.scope !46, !noalias !43
  %index.next523 = add nuw i64 %index521, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next523, %n.vec519
  br i1 %i.bt, label %vec.epilog.middle.block524, label %vec.epilog.vector.body520, !llvm.loop !50

vec.epilog.middle.block524:                       ; preds = %vec.epilog.vector.body520
  br i1 %cmp.n525, label %._crit_edge.i87, label %vec.epilog.scalar.ph515.preheader

vec.epilog.scalar.ph515.preheader:                ; preds = %iter.check514, %vec.epilog.iter.check516, %vec.epilog.middle.block524
  %indvars.iv29.i.ph = phi i64 [ %indvars.iv27.i81, %iter.check514 ], [ %i.bp, %vec.epilog.middle.block524 ], [ %i.bi, %vec.epilog.iter.check516 ] ; 2 uses
  %indvars.iv.i83.ph = phi i64 [ 0, %iter.check514 ], [ %n.vec519, %vec.epilog.middle.block524 ], [ %n.vec504, %vec.epilog.iter.check516 ] ; 3 uses
  br i1 %lcmp.mod608.not, label %vec.epilog.scalar.ph515.prol.loopexit, label %vec.epilog.scalar.ph515.prol

vec.epilog.scalar.ph515.prol:                     ; preds = %vec.epilog.scalar.ph515.preheader, %vec.epilog.scalar.ph515.prol
  %indvars.iv29.i.prol = phi i64 [ %indvars.iv.next30.i.prol, %vec.epilog.scalar.ph515.prol ], [ %indvars.iv29.i.ph, %vec.epilog.scalar.ph515.preheader ] ; 2 uses
  %indvars.iv.i83.prol = phi i64 [ %indvars.iv.next.i85.prol, %vec.epilog.scalar.ph515.prol ], [ %indvars.iv.i83.ph, %vec.epilog.scalar.ph515.preheader ] ; 2 uses
  %prol.iter609 = phi i64 [ %prol.iter609.next, %vec.epilog.scalar.ph515.prol ], [ 0, %vec.epilog.scalar.ph515.preheader ]
  %i.bu = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv29.i.prol
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !21
  %gep.i84.prol = getelementptr [2 x i8], ptr %invariant.gep.i82, i64 %indvars.iv.i83.prol
  store i16 %i.bv, ptr %gep.i84.prol, align 2, !tbaa !21
  %indvars.iv.next30.i.prol = add nsw i64 %indvars.iv29.i.prol, %i.at ; 2 uses
  %indvars.iv.next.i85.prol = add nuw nsw i64 %indvars.iv.i83.prol, 1 ; 2 uses
  %prol.iter609.next = add i64 %prol.iter609, 1   ; 2 uses
  %prol.iter609.cmp.not = icmp eq i64 %prol.iter609.next, %xtraiter607
  br i1 %prol.iter609.cmp.not, label %vec.epilog.scalar.ph515.prol.loopexit, label %vec.epilog.scalar.ph515.prol, !llvm.loop !51

vec.epilog.scalar.ph515.prol.loopexit:            ; preds = %vec.epilog.scalar.ph515.prol, %vec.epilog.scalar.ph515.preheader
  %indvars.iv29.i.unr = phi i64 [ %indvars.iv29.i.ph, %vec.epilog.scalar.ph515.preheader ], [ %indvars.iv.next30.i.prol, %vec.epilog.scalar.ph515.prol ]
  %indvars.iv.i83.unr = phi i64 [ %indvars.iv.i83.ph, %vec.epilog.scalar.ph515.preheader ], [ %indvars.iv.next.i85.prol, %vec.epilog.scalar.ph515.prol ]
  %i.bw = sub nsw i64 %indvars.iv.i83.ph, %wide.trip.count.i79
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %._crit_edge.i87, label %vec.epilog.scalar.ph515

._crit_edge.i87:                                  ; preds = %vec.epilog.scalar.ph515.prol.loopexit, %vec.epilog.scalar.ph515, %vec.epilog.middle.block524, %middle.block510
  %indvars.iv.next28.i88 = add nuw nsw i64 %indvars.iv27.i81, 1 ; 2 uses
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next28.i88, %i.au
  br i1 %exitcond36.not.i, label %rotate90_l8.exit, label %iter.check514, !llvm.loop !52

vec.epilog.scalar.ph515:                          ; preds = %vec.epilog.scalar.ph515.prol.loopexit, %vec.epilog.scalar.ph515
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i.3, %vec.epilog.scalar.ph515 ], [ %indvars.iv29.i.unr, %vec.epilog.scalar.ph515.prol.loopexit ] ; 2 uses
  %indvars.iv.i83 = phi i64 [ %indvars.iv.next.i85.3, %vec.epilog.scalar.ph515 ], [ %indvars.iv.i83.unr, %vec.epilog.scalar.ph515.prol.loopexit ] ; 5 uses
  %i.by = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv29.i
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !21
  %gep.i84 = getelementptr [2 x i8], ptr %invariant.gep.i82, i64 %indvars.iv.i83
  store i16 %i.bz, ptr %gep.i84, align 2, !tbaa !21
  %indvars.iv.next30.i = add nsw i64 %indvars.iv29.i, %i.at ; 2 uses
  %i.ca = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv.next30.i
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !21
  %i.cc = getelementptr [2 x i8], ptr %invariant.gep.i82, i64 %indvars.iv.i83
  %gep.i84.1 = getelementptr i8, ptr %i.cc, i64 2
  store i16 %i.cb, ptr %gep.i84.1, align 2, !tbaa !21
  %indvars.iv.next30.i.1 = add nsw i64 %indvars.iv.next30.i, %i.at ; 2 uses
  %i.cd = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv.next30.i.1
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !21
  %i.cf = getelementptr [2 x i8], ptr %invariant.gep.i82, i64 %indvars.iv.i83
  %gep.i84.2 = getelementptr i8, ptr %i.cf, i64 4
  store i16 %i.ce, ptr %gep.i84.2, align 2, !tbaa !21
  %indvars.iv.next30.i.2 = add nsw i64 %indvars.iv.next30.i.1, %i.at ; 2 uses
  %i.cg = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv.next30.i.2
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !21
  %i.ci = getelementptr [2 x i8], ptr %invariant.gep.i82, i64 %indvars.iv.i83
  %gep.i84.3 = getelementptr i8, ptr %i.ci, i64 6
  store i16 %i.ch, ptr %gep.i84.3, align 2, !tbaa !21
  %indvars.iv.next30.i.3 = add nsw i64 %indvars.iv.next30.i.2, %i.at
  %indvars.iv.next.i85.3 = add nuw nsw i64 %indvars.iv.i83, 4 ; 2 uses
  %exitcond.not.i86.3 = icmp eq i64 %indvars.iv.next.i85.3, %wide.trip.count.i79
  br i1 %exitcond.not.i86.3, label %._crit_edge.i87, label %vec.epilog.scalar.ph515, !llvm.loop !53

bb.e:                                             ; preds = %bb.b
  %i.cj = icmp sgt i32 %2, 0
  %i.ck = icmp sgt i32 %3, 0
  %or.cond.i89 = and i1 %i.cj, %i.ck
  br i1 %or.cond.i89, label %.preheader.preheader.i, label %rotate90_l8.exit

.preheader.preheader.i:                           ; preds = %bb.e
  %i.cl = sext i32 %4 to i64                      ; 3 uses
  %i.cm = zext nneg i32 %2 to i64                 ; 2 uses
  %i.cn = sext i32 %5 to i64
  %wide.trip.count.i91 = zext nneg i32 %3 to i64  ; 2 uses
  %xtraiter602 = and i64 %wide.trip.count.i91, 1
  %i.co = icmp eq i32 %3, 1
  %unroll_iter605 = and i64 %wide.trip.count.i91, 2147483646
  %lcmp.mod603.not = icmp eq i64 %xtraiter602, 0
  %lcmp.mod604 = trunc i32 %3 to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i97, %.preheader.preheader.i
  %indvars.iv30.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next31.i, %._crit_edge.i97 ] ; 3 uses
  %i.cp = mul nuw nsw i64 %indvars.iv30.i, 3
  %i.cq = xor i64 %indvars.iv30.i, -1
  %i.cr = add nsw i64 %i.cq, %i.cm
  %i.cs = mul nsw i64 %i.cr, %i.cn
  %invariant.gep.i92 = getelementptr i8, ptr %0, i64 %i.cp ; 3 uses
  %invariant.gep36.i = getelementptr i8, ptr %1, i64 %i.cs ; 3 uses
  br i1 %i.co, label %.epil.preheader601, label %.preheader.i.new

._crit_edge.i97.unr-lcssa:                        ; preds = %.preheader.i.new
  br i1 %lcmp.mod603.not, label %._crit_edge.i97, label %.epil.preheader601

.epil.preheader601:                               ; preds = %._crit_edge.i97.unr-lcssa, %.preheader.i
  %indvars.iv.i93.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i95.1, %._crit_edge.i97.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod604)
  %i.ct = mul nsw i64 %indvars.iv.i93.epil.init, %i.cl
  %i.cu = mul nuw nsw i64 %indvars.iv.i93.epil.init, 3
  %gep.i94.epil = getelementptr i8, ptr %invariant.gep.i92, i64 %i.ct ; 3 uses
  %i.cv = load i8, ptr %gep.i94.epil, align 1, !tbaa !8
  %gep37.i.epil = getelementptr i8, ptr %invariant.gep36.i, i64 %i.cu ; 3 uses
  store i8 %i.cv, ptr %gep37.i.epil, align 1, !tbaa !8
  %i.cw = getelementptr i8, ptr %gep.i94.epil, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !8
  %i.cy = getelementptr i8, ptr %gep37.i.epil, i64 1
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !8
  %i.cz = getelementptr i8, ptr %gep.i94.epil, i64 2
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !8
  %i.db = getelementptr i8, ptr %gep37.i.epil, i64 2
  store i8 %i.da, ptr %i.db, align 1, !tbaa !8
  br label %._crit_edge.i97

._crit_edge.i97:                                  ; preds = %._crit_edge.i97.unr-lcssa, %.epil.preheader601
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i98 = icmp eq i64 %indvars.iv.next31.i, %i.cm
  br i1 %exitcond34.not.i98, label %rotate90_l8.exit, label %.preheader.i, !llvm.loop !54

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv.i93 = phi i64 [ %indvars.iv.next.i95.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %niter606 = phi i64 [ %niter606.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.dc = mul nsw i64 %indvars.iv.i93, %i.cl
  %i.dd = mul nuw nsw i64 %indvars.iv.i93, 3
  %gep.i94 = getelementptr i8, ptr %invariant.gep.i92, i64 %i.dc ; 3 uses
  %i.de = load i8, ptr %gep.i94, align 1, !tbaa !8
  %gep37.i = getelementptr i8, ptr %invariant.gep36.i, i64 %i.dd ; 3 uses
  store i8 %i.de, ptr %gep37.i, align 1, !tbaa !8
  %i.df = getelementptr i8, ptr %gep.i94, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !8
  %i.dh = getelementptr i8, ptr %gep37.i, i64 1
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !8
  %i.di = getelementptr i8, ptr %gep.i94, i64 2
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !8
  %i.dk = getelementptr i8, ptr %gep37.i, i64 2
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !8
  %indvars.iv.next.i95 = or disjoint i64 %indvars.iv.i93, 1 ; 2 uses
  %i.dl = mul nsw i64 %indvars.iv.next.i95, %i.cl
  %i.dm = mul nuw nsw i64 %indvars.iv.next.i95, 3
  %gep.i94.1 = getelementptr i8, ptr %invariant.gep.i92, i64 %i.dl ; 3 uses
  %i.dn = load i8, ptr %gep.i94.1, align 1, !tbaa !8
  %gep37.i.1 = getelementptr i8, ptr %invariant.gep36.i, i64 %i.dm ; 3 uses
  store i8 %i.dn, ptr %gep37.i.1, align 1, !tbaa !8
  %i.do = getelementptr i8, ptr %gep.i94.1, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !8
  %i.dq = getelementptr i8, ptr %gep37.i.1, i64 1
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !8
  %i.dr = getelementptr i8, ptr %gep.i94.1, i64 2
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !8
  %i.dt = getelementptr i8, ptr %gep37.i.1, i64 2
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !8
  %indvars.iv.next.i95.1 = add nuw nsw i64 %indvars.iv.i93, 2 ; 2 uses
  %niter606.next.1 = add i64 %niter606, 2         ; 2 uses
  %niter606.ncmp.1 = icmp eq i64 %niter606.next.1, %unroll_iter605
  br i1 %niter606.ncmp.1, label %._crit_edge.i97.unr-lcssa, label %.preheader.i.new, !llvm.loop !55

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.du = icmp sgt i32 %2, 0
  %i.dv = icmp sgt i32 %3, 0
  %or.cond.i99 = and i1 %i.du, %i.dv
  br i1 %or.cond.i99, label %.lr.ph.preheader.i100, label %rotate90_l8.exit

.lr.ph.preheader.i100:                            ; preds = %bb.f
  %i.dw = ashr i32 %5, 2                          ; 2 uses
  %i.dx = ashr i32 %4, 2                          ; 2 uses
  %i.dy = sext i32 %i.dx to i64                   ; 5 uses
  %i.dz = zext nneg i32 %2 to i64                 ; 4 uses
  %i.ea = sext i32 %i.dw to i64                   ; 2 uses
  %wide.trip.count.i102 = zext nneg i32 %3 to i64 ; 7 uses
  %i.eb = add nuw nsw i64 %i.dz, 4611686018427387903
  %i.ec = mul i64 %i.eb, %i.ea
  %i.ed = shl i64 %i.ec, 2
  %scevgep469 = getelementptr i8, ptr %1, i64 %i.ed
  %i.ee = shl nuw nsw i64 %wide.trip.count.i102, 2
  %scevgep470 = getelementptr i8, ptr %1, i64 %i.ee
  %i.ef = add nuw nsw i64 %i.dz, %wide.trip.count.i102
  %i.eg = shl nuw nsw i64 %i.ef, 2
  %i.eh = getelementptr i8, ptr %0, i64 %i.eg
  %scevgep471 = getelementptr i8, ptr %i.eh, i64 -4
  %min.iters.check477 = icmp ugt i32 %3, 7
  %ident.check467.not = icmp eq i32 %i.dx, 1
  %or.cond568 = and i1 %min.iters.check477, %ident.check467.not
  %bound0472 = icmp ult ptr %scevgep469, %scevgep471
  %bound1473 = icmp ult ptr %0, %scevgep470
  %found.conflict474 = and i1 %bound0472, %bound1473
  %stride.check475 = icmp sgt i32 %i.dw, 0
  %i.ei = or i1 %found.conflict474, %stride.check475
  %n.vec479 = and i64 %wide.trip.count.i102, 2147483640 ; 4 uses
  %cmp.n486 = icmp eq i64 %n.vec479, %wide.trip.count.i102
  %xtraiter599 = and i64 %wide.trip.count.i102, 3 ; 2 uses
  %lcmp.mod600.not = icmp eq i64 %xtraiter599, 0
  br label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %._crit_edge.i112, %.lr.ph.preheader.i100
  %indvars.iv27.i104 = phi i64 [ 0, %.lr.ph.preheader.i100 ], [ %indvars.iv.next28.i113, %._crit_edge.i112 ] ; 5 uses
  %i.ej = xor i64 %indvars.iv27.i104, -1
  %i.ek = add nsw i64 %i.ej, %i.dz
  %i.el = mul nsw i64 %i.ek, %i.ea
  %invariant.gep.i105 = getelementptr [4 x i8], ptr %1, i64 %i.el ; 6 uses
  %or.cond568.not = xor i1 %or.cond568, true
  %brmerge620 = select i1 %or.cond568.not, i1 true, i1 %i.ei
  br i1 %brmerge620, label %scalar.ph476.preheader, label %vector.ph478

vector.ph478:                                     ; preds = %.lr.ph.i103
  %i.em = add nuw i64 %indvars.iv27.i104, %n.vec479
  %i.en = getelementptr [4 x i8], ptr %0, i64 %indvars.iv27.i104
  br label %vector.body480

vector.body480:                                   ; preds = %vector.body480, %vector.ph478
  %index481 = phi i64 [ 0, %vector.ph478 ], [ %index.next484, %vector.body480 ] ; 3 uses
  %i.eo = getelementptr [4 x i8], ptr %i.en, i64 %index481 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load482 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !12, !alias.scope !56
  %wide.load483 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !12, !alias.scope !56
  %i.eq = getelementptr [4 x i8], ptr %invariant.gep.i105, i64 %index481 ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  store <4 x i32> %wide.load482, ptr %i.eq, align 4, !tbaa !12, !alias.scope !59, !noalias !56
  store <4 x i32> %wide.load483, ptr %i.er, align 4, !tbaa !12, !alias.scope !59, !noalias !56
  %index.next484 = add nuw i64 %index481, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next484, %n.vec479
  br i1 %i.es, label %middle.block485, label %vector.body480, !llvm.loop !61

middle.block485:                                  ; preds = %vector.body480
  br i1 %cmp.n486, label %._crit_edge.i112, label %scalar.ph476.preheader

scalar.ph476.preheader:                           ; preds = %.lr.ph.i103, %middle.block485
  %indvars.iv29.i106.ph = phi i64 [ %i.em, %middle.block485 ], [ %indvars.iv27.i104, %.lr.ph.i103 ] ; 2 uses
  %indvars.iv.i107.ph = phi i64 [ %n.vec479, %middle.block485 ], [ 0, %.lr.ph.i103 ] ; 3 uses
  br i1 %lcmp.mod600.not, label %scalar.ph476.prol.loopexit, label %scalar.ph476.prol

scalar.ph476.prol:                                ; preds = %scalar.ph476.preheader, %scalar.ph476.prol
  %indvars.iv29.i106.prol = phi i64 [ %indvars.iv.next30.i109.prol, %scalar.ph476.prol ], [ %indvars.iv29.i106.ph, %scalar.ph476.preheader ] ; 2 uses
  %indvars.iv.i107.prol = phi i64 [ %indvars.iv.next.i110.prol, %scalar.ph476.prol ], [ %indvars.iv.i107.ph, %scalar.ph476.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph476.prol ], [ 0, %scalar.ph476.preheader ]
  %i.et = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv29.i106.prol
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !12
  %gep.i108.prol = getelementptr [4 x i8], ptr %invariant.gep.i105, i64 %indvars.iv.i107.prol
  store i32 %i.eu, ptr %gep.i108.prol, align 4, !tbaa !12
  %indvars.iv.next30.i109.prol = add nsw i64 %indvars.iv29.i106.prol, %i.dy ; 2 uses
  %indvars.iv.next.i110.prol = add nuw nsw i64 %indvars.iv.i107.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter599
  br i1 %prol.iter.cmp.not, label %scalar.ph476.prol.loopexit, label %scalar.ph476.prol, !llvm.loop !62

scalar.ph476.prol.loopexit:                       ; preds = %scalar.ph476.prol, %scalar.ph476.preheader
  %indvars.iv29.i106.unr = phi i64 [ %indvars.iv29.i106.ph, %scalar.ph476.preheader ], [ %indvars.iv.next30.i109.prol, %scalar.ph476.prol ]
  %indvars.iv.i107.unr = phi i64 [ %indvars.iv.i107.ph, %scalar.ph476.preheader ], [ %indvars.iv.next.i110.prol, %scalar.ph476.prol ]
  %i.ev = sub nsw i64 %indvars.iv.i107.ph, %wide.trip.count.i102
  %i.ew = icmp ugt i64 %i.ev, -4
  br i1 %i.ew, label %._crit_edge.i112, label %scalar.ph476

._crit_edge.i112:                                 ; preds = %scalar.ph476.prol.loopexit, %scalar.ph476, %middle.block485
  %indvars.iv.next28.i113 = add nuw nsw i64 %indvars.iv27.i104, 1 ; 2 uses
  %exitcond36.not.i114 = icmp eq i64 %indvars.iv.next28.i113, %i.dz
  br i1 %exitcond36.not.i114, label %rotate90_l8.exit, label %.lr.ph.i103, !llvm.loop !63

scalar.ph476:                                     ; preds = %scalar.ph476.prol.loopexit, %scalar.ph476
  %indvars.iv29.i106 = phi i64 [ %indvars.iv.next30.i109.3, %scalar.ph476 ], [ %indvars.iv29.i106.unr, %scalar.ph476.prol.loopexit ] ; 2 uses
  %indvars.iv.i107 = phi i64 [ %indvars.iv.next.i110.3, %scalar.ph476 ], [ %indvars.iv.i107.unr, %scalar.ph476.prol.loopexit ] ; 5 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv29.i106
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !12
  %gep.i108 = getelementptr [4 x i8], ptr %invariant.gep.i105, i64 %indvars.iv.i107
  store i32 %i.ey, ptr %gep.i108, align 4, !tbaa !12
  %indvars.iv.next30.i109 = add nsw i64 %indvars.iv29.i106, %i.dy ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next30.i109
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !12
  %i.fb = getelementptr [4 x i8], ptr %invariant.gep.i105, i64 %indvars.iv.i107
  %gep.i108.1 = getelementptr i8, ptr %i.fb, i64 4
  store i32 %i.fa, ptr %gep.i108.1, align 4, !tbaa !12
  %indvars.iv.next30.i109.1 = add nsw i64 %indvars.iv.next30.i109, %i.dy ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next30.i109.1
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !12
  %i.fe = getelementptr [4 x i8], ptr %invariant.gep.i105, i64 %indvars.iv.i107
  %gep.i108.2 = getelementptr i8, ptr %i.fe, i64 8
  store i32 %i.fd, ptr %gep.i108.2, align 4, !tbaa !12
  %indvars.iv.next30.i109.2 = add nsw i64 %indvars.iv.next30.i109.1, %i.dy ; 2 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next30.i109.2
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !12
  %i.fh = getelementptr [4 x i8], ptr %invariant.gep.i105, i64 %indvars.iv.i107
  %gep.i108.3 = getelementptr i8, ptr %i.fh, i64 12
  store i32 %i.fg, ptr %gep.i108.3, align 4, !tbaa !12
  %indvars.iv.next30.i109.3 = add nsw i64 %indvars.iv.next30.i109.2, %i.dy
  %indvars.iv.next.i110.3 = add nuw nsw i64 %indvars.iv.i107, 4 ; 2 uses
  %exitcond.not.i111.3 = icmp eq i64 %indvars.iv.next.i110.3, %wide.trip.count.i102
  br i1 %exitcond.not.i111.3, label %._crit_edge.i112, label %scalar.ph476, !llvm.loop !64

bb.g:                                             ; preds = %bb.a
  switch i32 %7, label %rotate90_l8.exit [
    i32 6, label %bb.h
    i32 18, label %bb.i
    i32 15, label %bb.j
    i32 17, label %bb.k
    i32 16, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.fi = icmp sgt i32 %3, 0
  %i.fj = icmp sgt i32 %2, 0
  %or.cond.i115 = and i1 %i.fj, %i.fi
  br i1 %or.cond.i115, label %.lr.ph.preheader.i116, label %rotate90_l8.exit

.lr.ph.preheader.i116:                            ; preds = %bb.h
  %i.fk = sext i32 %4 to i64                      ; 2 uses
  %wide.trip.count29.i = zext nneg i32 %3 to i64  ; 2 uses
  %wide.trip.count.i117 = zext nneg i32 %2 to i64 ; 11 uses
  %i.fl = add nsw i64 %wide.trip.count.i117, -1   ; 2 uses
  %i.fm = add nsw i32 %3, -1
  %i.fn = mul i32 %5, %i.fm
  %i.fo = add i32 %2, %i.fn
  %i.fp = add nsw i64 %wide.trip.count29.i, -1
  %i.fq = mul nsw i64 %i.fp, %i.fk
  %i.fr = getelementptr i8, ptr %0, i64 %i.fq
  %scevgep427 = getelementptr i8, ptr %i.fr, i64 %wide.trip.count.i117
  %i.fs = sub nsw i64 1, %wide.trip.count.i117
  %scevgep428 = getelementptr i8, ptr %1, i64 %i.fs
  %i.ft = add nsw i32 %3, -1
  %i.fu = mul i32 %5, %i.ft
  %i.fv = add i32 %2, %i.fu
  %scevgep430 = getelementptr i8, ptr %1, i64 1
  %min.iters.check437 = icmp ult i32 %2, 8
  %i.fw = trunc nsw i64 %i.fl to i32
  %i.fx = icmp ugt i64 %i.fl, 4294967295
  %stride.check435 = icmp slt i32 %4, 0
  %min.iters.check439 = icmp ult i32 %2, 32
  %i.fy = and i64 %wide.trip.count.i117, 24
  %n.vec441 = and i64 %wide.trip.count.i117, 2147483616 ; 4 uses
  %cmp.n450 = icmp eq i64 %n.vec441, %wide.trip.count.i117
  %min.epilog.iters.check455 = icmp eq i64 %i.fy, 0
  %n.vec457 = and i64 %wide.trip.count.i117, 2147483640 ; 3 uses
  %cmp.n464 = icmp eq i64 %n.vec457, %wide.trip.count.i117
  %xtraiter597 = and i64 %wide.trip.count.i117, 1
  %lcmp.mod598.not = icmp eq i64 %xtraiter597, 0
  %i.fz = add nsw i64 %wide.trip.count.i117, -1
  br label %iter.check452

iter.check452:                                    ; preds = %._crit_edge.i124, %.lr.ph.preheader.i116
  %indvars.iv26.i = phi i64 [ 0, %.lr.ph.preheader.i116 ], [ %indvars.iv.next27.i, %._crit_edge.i124 ] ; 5 uses
  %i.ga = trunc i64 %indvars.iv26.i to i32
  %i.gb = mul i32 %5, %i.ga
  %i.gc = xor i32 %i.gb, -1
  %i.gd = add i32 %i.fv, %i.gc
  %i.ge = sext i32 %i.gd to i64                   ; 2 uses
  %scevgep429 = getelementptr i8, ptr %scevgep428, i64 %i.ge
  %scevgep431 = getelementptr i8, ptr %scevgep430, i64 %i.ge
  %i.gf = mul nsw i64 %indvars.iv26.i, %i.fk
  %invariant.gep.i119 = getelementptr i8, ptr %0, i64 %i.gf ; 5 uses
  %i.gg = trunc i64 %indvars.iv26.i to i32
  %i.gh = xor i32 %i.gg, -1
  %i.gi = add i32 %3, %i.gh
  %i.gj = mul i32 %i.gi, %5
  %i.gk = add i32 %i.gj, %2                       ; 5 uses
  br i1 %min.iters.check437, label %vec.epilog.scalar.ph453.preheader, label %vector.scevcheck425

vector.scevcheck425:                              ; preds = %iter.check452
  %i.gl = trunc i64 %indvars.iv26.i to i32
  %i.gm = mul i32 %5, %i.gl
  %i.gn = xor i32 %i.gm, -1
  %i.go = add i32 %i.fo, %i.gn                    ; 2 uses
  %i.gp = sub i32 %i.go, %i.fw
  %i.gq = icmp sgt i32 %i.gp, %i.go
  %i.gr = or i1 %i.gq, %i.fx
  br i1 %i.gr, label %vec.epilog.scalar.ph453.preheader, label %vector.memcheck426

vector.memcheck426:                               ; preds = %vector.scevcheck425
  %bound0432 = icmp ult ptr %0, %scevgep431
  %bound1433 = icmp ult ptr %scevgep429, %scevgep427
  %found.conflict434 = and i1 %bound0432, %bound1433
  %i.gs = or i1 %found.conflict434, %stride.check435
  br i1 %i.gs, label %vec.epilog.scalar.ph453.preheader, label %vector.main.loop.iter.check438

vector.main.loop.iter.check438:                   ; preds = %vector.memcheck426
  br i1 %min.iters.check439, label %vec.epilog.ph456, label %vector.body442

vector.body442:                                   ; preds = %vector.main.loop.iter.check438, %vector.body442
  %index443 = phi i64 [ %index.next448, %vector.body442 ], [ 0, %vector.main.loop.iter.check438 ] ; 3 uses
  %i.gt = getelementptr i8, ptr %invariant.gep.i119, i64 %index443 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  %wide.load444 = load <16 x i8>, ptr %i.gt, align 1, !tbaa !8, !alias.scope !65, !noalias !68
  %wide.load445 = load <16 x i8>, ptr %i.gu, align 1, !tbaa !8, !alias.scope !65, !noalias !68
  %i.gv = trunc i64 %index443 to i32
  %i.gw = xor i32 %i.gv, -1
  %i.gx = add i32 %i.gk, %i.gw
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds i8, ptr %1, i64 %i.gy ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -15
  %i.hb = getelementptr inbounds i8, ptr %i.gz, i64 -31
  %reverse446 = shufflevector <16 x i8> %wide.load444, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse447 = shufflevector <16 x i8> %wide.load445, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse446, ptr %i.ha, align 1, !tbaa !8, !alias.scope !68
  store <16 x i8> %reverse447, ptr %i.hb, align 1, !tbaa !8, !alias.scope !68
  %index.next448 = add nuw i64 %index443, 32      ; 2 uses
  %i.hc = icmp eq i64 %index.next448, %n.vec441
  br i1 %i.hc, label %middle.block449, label %vector.body442, !llvm.loop !70

middle.block449:                                  ; preds = %vector.body442
  br i1 %cmp.n450, label %._crit_edge.i124, label %vec.epilog.iter.check454

vec.epilog.iter.check454:                         ; preds = %middle.block449
  br i1 %min.epilog.iters.check455, label %vec.epilog.scalar.ph453.preheader, label %vec.epilog.ph456, !prof !37

vec.epilog.ph456:                                 ; preds = %vector.main.loop.iter.check438, %vec.epilog.iter.check454
  %vec.epilog.resume.val451 = phi i64 [ %n.vec441, %vec.epilog.iter.check454 ], [ 0, %vector.main.loop.iter.check438 ]
  br label %vec.epilog.vector.body458

vec.epilog.vector.body458:                        ; preds = %vec.epilog.vector.body458, %vec.epilog.ph456
  %index459 = phi i64 [ %vec.epilog.resume.val451, %vec.epilog.ph456 ], [ %index.next462, %vec.epilog.vector.body458 ] ; 3 uses
  %i.hd = getelementptr i8, ptr %invariant.gep.i119, i64 %index459
  %wide.load460 = load <8 x i8>, ptr %i.hd, align 1, !tbaa !8, !alias.scope !65, !noalias !68
  %i.he = trunc i64 %index459 to i32
  %i.hf = xor i32 %i.he, -1
  %i.hg = add i32 %i.gk, %i.hf
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds i8, ptr %1, i64 %i.hh
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -7
  %reverse461 = shufflevector <8 x i8> %wide.load460, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse461, ptr %i.hj, align 1, !tbaa !8, !alias.scope !68
  %index.next462 = add nuw i64 %index459, 8       ; 2 uses
  %i.hk = icmp eq i64 %index.next462, %n.vec457
  br i1 %i.hk, label %vec.epilog.middle.block463, label %vec.epilog.vector.body458, !llvm.loop !71

vec.epilog.middle.block463:                       ; preds = %vec.epilog.vector.body458
  br i1 %cmp.n464, label %._crit_edge.i124, label %vec.epilog.scalar.ph453.preheader

vec.epilog.scalar.ph453.preheader:                ; preds = %vector.memcheck426, %vector.scevcheck425, %iter.check452, %vec.epilog.iter.check454, %vec.epilog.middle.block463
  %indvars.iv.i120.ph = phi i64 [ 0, %iter.check452 ], [ 0, %vector.scevcheck425 ], [ 0, %vector.memcheck426 ], [ %n.vec441, %vec.epilog.iter.check454 ], [ %n.vec457, %vec.epilog.middle.block463 ] ; 5 uses
  br i1 %lcmp.mod598.not, label %vec.epilog.scalar.ph453.prol.loopexit, label %vec.epilog.scalar.ph453.prol

vec.epilog.scalar.ph453.prol:                     ; preds = %vec.epilog.scalar.ph453.preheader
  %gep.i121.prol = getelementptr i8, ptr %invariant.gep.i119, i64 %indvars.iv.i120.ph
  %i.hl = load i8, ptr %gep.i121.prol, align 1, !tbaa !8
  %i.hm = trunc nuw nsw i64 %indvars.iv.i120.ph to i32
  %i.hn = xor i32 %i.hm, -1
  %i.ho = add i32 %i.gk, %i.hn
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds i8, ptr %1, i64 %i.hp
  store i8 %i.hl, ptr %i.hq, align 1, !tbaa !8
  %indvars.iv.next.i122.prol = or disjoint i64 %indvars.iv.i120.ph, 1
  br label %vec.epilog.scalar.ph453.prol.loopexit

vec.epilog.scalar.ph453.prol.loopexit:            ; preds = %vec.epilog.scalar.ph453.prol, %vec.epilog.scalar.ph453.preheader
  %indvars.iv.i120.unr = phi i64 [ %indvars.iv.i120.ph, %vec.epilog.scalar.ph453.preheader ], [ %indvars.iv.next.i122.prol, %vec.epilog.scalar.ph453.prol ]
  %i.hr = icmp eq i64 %indvars.iv.i120.ph, %i.fz
  br i1 %i.hr, label %._crit_edge.i124, label %vec.epilog.scalar.ph453

._crit_edge.i124:                                 ; preds = %vec.epilog.scalar.ph453.prol.loopexit, %vec.epilog.scalar.ph453, %vec.epilog.middle.block463, %middle.block449
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next27.i, %wide.trip.count29.i
  br i1 %exitcond30.not.i, label %rotate90_l8.exit, label %iter.check452, !llvm.loop !72

vec.epilog.scalar.ph453:                          ; preds = %vec.epilog.scalar.ph453.prol.loopexit, %vec.epilog.scalar.ph453
  %indvars.iv.i120 = phi i64 [ %indvars.iv.next.i122.1, %vec.epilog.scalar.ph453 ], [ %indvars.iv.i120.unr, %vec.epilog.scalar.ph453.prol.loopexit ] ; 4 uses
  %gep.i121 = getelementptr i8, ptr %invariant.gep.i119, i64 %indvars.iv.i120
  %i.hs = load i8, ptr %gep.i121, align 1, !tbaa !8
  %i.ht = trunc i64 %indvars.iv.i120 to i32
  %i.hu = xor i32 %i.ht, -1
  %i.hv = add i32 %i.gk, %i.hu
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds i8, ptr %1, i64 %i.hw
  store i8 %i.hs, ptr %i.hx, align 1, !tbaa !8
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i120, 1 ; 2 uses
  %gep.i121.1 = getelementptr i8, ptr %invariant.gep.i119, i64 %indvars.iv.next.i122
  %i.hy = load i8, ptr %gep.i121.1, align 1, !tbaa !8
  %i.hz = trunc i64 %indvars.iv.next.i122 to i32
  %i.ia = xor i32 %i.hz, -1
  %i.ib = add i32 %i.gk, %i.ia
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds i8, ptr %1, i64 %i.ic
  store i8 %i.hy, ptr %i.id, align 1, !tbaa !8
  %indvars.iv.next.i122.1 = add nuw nsw i64 %indvars.iv.i120, 2 ; 2 uses
  %exitcond.not.i123.1 = icmp eq i64 %indvars.iv.next.i122.1, %wide.trip.count.i117
  br i1 %exitcond.not.i123.1, label %._crit_edge.i124, label %vec.epilog.scalar.ph453, !llvm.loop !73

bb.i:                                             ; preds = %bb.g
  %i.ie = icmp sgt i32 %3, 0
  %i.if = icmp sgt i32 %2, 0
  %or.cond.i125 = and i1 %i.if, %i.ie
  br i1 %or.cond.i125, label %.lr.ph.preheader.i126, label %rotate90_l8.exit

.lr.ph.preheader.i126:                            ; preds = %bb.i
  %i.ig = ashr i32 %5, 1                          ; 5 uses
  %i.ih = ashr i32 %4, 1                          ; 2 uses
  %i.ii = sext i32 %i.ih to i64                   ; 2 uses
  %wide.trip.count31.i = zext nneg i32 %3 to i64  ; 2 uses
  %wide.trip.count.i127 = zext nneg i32 %2 to i64 ; 11 uses
  %i.ij = add nsw i64 %wide.trip.count.i127, -1   ; 2 uses
  %i.ik = add nsw i32 %3, -1
  %i.il = mul i32 %i.ig, %i.ik
  %i.im = add i32 %2, %i.il
  %i.in = add nuw i64 %wide.trip.count31.i, 9223372036854775807
  %i.io = mul i64 %i.in, %i.ii
  %i.ip = shl nuw nsw i64 %wide.trip.count.i127, 1
  %i.iq = add i64 %i.io, %wide.trip.count.i127
  %i.ir = shl i64 %i.iq, 1
  %scevgep386 = getelementptr i8, ptr %0, i64 %i.ir
  %i.is = sub nsw i64 2, %i.ip
  %scevgep387 = getelementptr i8, ptr %1, i64 %i.is
  %i.it = add nsw i32 %3, -1
  %i.iu = mul i32 %i.ig, %i.it
  %i.iv = add i32 %2, %i.iu
  %scevgep389 = getelementptr i8, ptr %1, i64 2
  %min.iters.check396 = icmp ult i32 %2, 4
  %i.iw = trunc nsw i64 %i.ij to i32
  %i.ix = icmp ugt i64 %i.ij, 4294967295
  %stride.check394 = icmp slt i32 %i.ih, 0
  %min.iters.check398 = icmp ult i32 %2, 16
  %i.iy = and i64 %wide.trip.count.i127, 12
  %n.vec400 = and i64 %wide.trip.count.i127, 2147483632 ; 4 uses
  %cmp.n409 = icmp eq i64 %n.vec400, %wide.trip.count.i127
  %min.epilog.iters.check414 = icmp eq i64 %i.iy, 0
  %n.vec416 = and i64 %wide.trip.count.i127, 2147483644 ; 3 uses
  %cmp.n423 = icmp eq i64 %n.vec416, %wide.trip.count.i127
  %xtraiter595 = and i64 %wide.trip.count.i127, 1
  %lcmp.mod596.not = icmp eq i64 %xtraiter595, 0
  %i.iz = add nsw i64 %wide.trip.count.i127, -1
  br label %iter.check411

iter.check411:                                    ; preds = %._crit_edge.i134, %.lr.ph.preheader.i126
  %indvars.iv28.i = phi i64 [ 0, %.lr.ph.preheader.i126 ], [ %indvars.iv.next29.i, %._crit_edge.i134 ] ; 5 uses
  %i.ja = trunc i64 %indvars.iv28.i to i32
  %i.jb = mul i32 %i.ig, %i.ja
  %i.jc = xor i32 %i.jb, -1
  %i.jd = add i32 %i.iv, %i.jc
  %i.je = sext i32 %i.jd to i64
  %i.jf = shl nsw i64 %i.je, 1                    ; 2 uses
  %scevgep388 = getelementptr i8, ptr %scevgep387, i64 %i.jf
  %scevgep390 = getelementptr i8, ptr %scevgep389, i64 %i.jf
  %i.jg = mul nsw i64 %indvars.iv28.i, %i.ii
  %invariant.gep.i129 = getelementptr [2 x i8], ptr %0, i64 %i.jg ; 5 uses
  %i.jh = trunc i64 %indvars.iv28.i to i32
  %i.ji = xor i32 %i.jh, -1
  %i.jj = add i32 %3, %i.ji
  %i.jk = mul i32 %i.jj, %i.ig
  %i.jl = add i32 %i.jk, %2                       ; 5 uses
  br i1 %min.iters.check396, label %vec.epilog.scalar.ph412.preheader, label %vector.scevcheck384

vector.scevcheck384:                              ; preds = %iter.check411
  %i.jm = trunc i64 %indvars.iv28.i to i32
  %i.jn = mul i32 %i.ig, %i.jm
  %i.jo = xor i32 %i.jn, -1
  %i.jp = add i32 %i.im, %i.jo                    ; 2 uses
  %i.jq = sub i32 %i.jp, %i.iw
  %i.jr = icmp sgt i32 %i.jq, %i.jp
  %i.js = or i1 %i.jr, %i.ix
  br i1 %i.js, label %vec.epilog.scalar.ph412.preheader, label %vector.memcheck385

vector.memcheck385:                               ; preds = %vector.scevcheck384
  %bound0391 = icmp ult ptr %0, %scevgep390
  %bound1392 = icmp ult ptr %scevgep388, %scevgep386
  %found.conflict393 = and i1 %bound0391, %bound1392
  %i.jt = or i1 %found.conflict393, %stride.check394
  br i1 %i.jt, label %vec.epilog.scalar.ph412.preheader, label %vector.main.loop.iter.check397

vector.main.loop.iter.check397:                   ; preds = %vector.memcheck385
  br i1 %min.iters.check398, label %vec.epilog.ph415, label %vector.body401

vector.body401:                                   ; preds = %vector.main.loop.iter.check397, %vector.body401
  %index402 = phi i64 [ %index.next407, %vector.body401 ], [ 0, %vector.main.loop.iter.check397 ] ; 3 uses
  %i.ju = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %index402 ; 2 uses
  %i.jv = getelementptr i8, ptr %i.ju, i64 16
  %wide.load403 = load <8 x i16>, ptr %i.ju, align 2, !tbaa !21, !alias.scope !74, !noalias !77
  %wide.load404 = load <8 x i16>, ptr %i.jv, align 2, !tbaa !21, !alias.scope !74, !noalias !77
  %i.jw = trunc i64 %index402 to i32
  %i.jx = xor i32 %i.jw, -1
  %i.jy = add i32 %i.jl, %i.jx
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [2 x i8], ptr %1, i64 %i.jz ; 2 uses
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 -14
  %i.kc = getelementptr inbounds i8, ptr %i.ka, i64 -30
  %reverse405 = shufflevector <8 x i16> %wide.load403, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse406 = shufflevector <8 x i16> %wide.load404, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse405, ptr %i.kb, align 2, !tbaa !21, !alias.scope !77
  store <8 x i16> %reverse406, ptr %i.kc, align 2, !tbaa !21, !alias.scope !77
  %index.next407 = add nuw i64 %index402, 16      ; 2 uses
  %i.kd = icmp eq i64 %index.next407, %n.vec400
  br i1 %i.kd, label %middle.block408, label %vector.body401, !llvm.loop !79

middle.block408:                                  ; preds = %vector.body401
  br i1 %cmp.n409, label %._crit_edge.i134, label %vec.epilog.iter.check413

vec.epilog.iter.check413:                         ; preds = %middle.block408
  br i1 %min.epilog.iters.check414, label %vec.epilog.scalar.ph412.preheader, label %vec.epilog.ph415, !prof !49

vec.epilog.ph415:                                 ; preds = %vector.main.loop.iter.check397, %vec.epilog.iter.check413
  %vec.epilog.resume.val410 = phi i64 [ %n.vec400, %vec.epilog.iter.check413 ], [ 0, %vector.main.loop.iter.check397 ]
  br label %vec.epilog.vector.body417

vec.epilog.vector.body417:                        ; preds = %vec.epilog.vector.body417, %vec.epilog.ph415
  %index418 = phi i64 [ %vec.epilog.resume.val410, %vec.epilog.ph415 ], [ %index.next421, %vec.epilog.vector.body417 ] ; 3 uses
  %i.ke = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %index418
  %wide.load419 = load <4 x i16>, ptr %i.ke, align 2, !tbaa !21, !alias.scope !74, !noalias !77
  %i.kf = trunc i64 %index418 to i32
  %i.kg = xor i32 %i.kf, -1
  %i.kh = add i32 %i.jl, %i.kg
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ki
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 -6
  %reverse420 = shufflevector <4 x i16> %wide.load419, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i16> %reverse420, ptr %i.kk, align 2, !tbaa !21, !alias.scope !77
  %index.next421 = add nuw i64 %index418, 4       ; 2 uses
  %i.kl = icmp eq i64 %index.next421, %n.vec416
  br i1 %i.kl, label %vec.epilog.middle.block422, label %vec.epilog.vector.body417, !llvm.loop !80

vec.epilog.middle.block422:                       ; preds = %vec.epilog.vector.body417
  br i1 %cmp.n423, label %._crit_edge.i134, label %vec.epilog.scalar.ph412.preheader

vec.epilog.scalar.ph412.preheader:                ; preds = %vector.memcheck385, %vector.scevcheck384, %iter.check411, %vec.epilog.iter.check413, %vec.epilog.middle.block422
  %indvars.iv.i130.ph = phi i64 [ 0, %iter.check411 ], [ 0, %vector.scevcheck384 ], [ 0, %vector.memcheck385 ], [ %n.vec400, %vec.epilog.iter.check413 ], [ %n.vec416, %vec.epilog.middle.block422 ] ; 5 uses
  br i1 %lcmp.mod596.not, label %vec.epilog.scalar.ph412.prol.loopexit, label %vec.epilog.scalar.ph412.prol

vec.epilog.scalar.ph412.prol:                     ; preds = %vec.epilog.scalar.ph412.preheader
  %gep.i131.prol = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %indvars.iv.i130.ph
  %i.km = load i16, ptr %gep.i131.prol, align 2, !tbaa !21
  %i.kn = trunc nuw nsw i64 %indvars.iv.i130.ph to i32
  %i.ko = xor i32 %i.kn, -1
  %i.kp = add i32 %i.jl, %i.ko
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [2 x i8], ptr %1, i64 %i.kq
  store i16 %i.km, ptr %i.kr, align 2, !tbaa !21
  %indvars.iv.next.i132.prol = or disjoint i64 %indvars.iv.i130.ph, 1
  br label %vec.epilog.scalar.ph412.prol.loopexit

vec.epilog.scalar.ph412.prol.loopexit:            ; preds = %vec.epilog.scalar.ph412.prol, %vec.epilog.scalar.ph412.preheader
  %indvars.iv.i130.unr = phi i64 [ %indvars.iv.i130.ph, %vec.epilog.scalar.ph412.preheader ], [ %indvars.iv.next.i132.prol, %vec.epilog.scalar.ph412.prol ]
  %i.ks = icmp eq i64 %indvars.iv.i130.ph, %i.iz
  br i1 %i.ks, label %._crit_edge.i134, label %vec.epilog.scalar.ph412

._crit_edge.i134:                                 ; preds = %vec.epilog.scalar.ph412.prol.loopexit, %vec.epilog.scalar.ph412, %vec.epilog.middle.block422, %middle.block408
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %rotate90_l8.exit, label %iter.check411, !llvm.loop !81

vec.epilog.scalar.ph412:                          ; preds = %vec.epilog.scalar.ph412.prol.loopexit, %vec.epilog.scalar.ph412
  %indvars.iv.i130 = phi i64 [ %indvars.iv.next.i132.1, %vec.epilog.scalar.ph412 ], [ %indvars.iv.i130.unr, %vec.epilog.scalar.ph412.prol.loopexit ] ; 4 uses
  %gep.i131 = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %indvars.iv.i130
  %i.kt = load i16, ptr %gep.i131, align 2, !tbaa !21
  %i.ku = trunc i64 %indvars.iv.i130 to i32
  %i.kv = xor i32 %i.ku, -1
  %i.kw = add i32 %i.jl, %i.kv
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [2 x i8], ptr %1, i64 %i.kx
  store i16 %i.kt, ptr %i.ky, align 2, !tbaa !21
  %indvars.iv.next.i132 = add nuw nsw i64 %indvars.iv.i130, 1 ; 2 uses
  %gep.i131.1 = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %indvars.iv.next.i132
  %i.kz = load i16, ptr %gep.i131.1, align 2, !tbaa !21
  %i.la = trunc i64 %indvars.iv.next.i132 to i32
  %i.lb = xor i32 %i.la, -1
  %i.lc = add i32 %i.jl, %i.lb
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ld
  store i16 %i.kz, ptr %i.le, align 2, !tbaa !21
  %indvars.iv.next.i132.1 = add nuw nsw i64 %indvars.iv.i130, 2 ; 2 uses
  %exitcond.not.i133.1 = icmp eq i64 %indvars.iv.next.i132.1, %wide.trip.count.i127
  br i1 %exitcond.not.i133.1, label %._crit_edge.i134, label %vec.epilog.scalar.ph412, !llvm.loop !82

bb.j:                                             ; preds = %bb.g
  %i.lf = icmp sgt i32 %3, 0
  %i.lg = icmp sgt i32 %2, 0
  %or.cond.i135 = and i1 %i.lg, %i.lf
  br i1 %or.cond.i135, label %.preheader.preheader.i136, label %rotate90_l8.exit

.preheader.preheader.i136:                        ; preds = %bb.j
  %i.lh = zext nneg i32 %2 to i64                 ; 5 uses
  %i.li = zext nneg i32 %3 to i64                 ; 2 uses
  %i.lj = sext i32 %5 to i64
  %i.lk = sext i32 %4 to i64
  %xtraiter590 = and i64 %i.lh, 1
  %i.ll = icmp eq i32 %2, 1
  %unroll_iter593 = and i64 %i.lh, 2147483646
  %lcmp.mod591.not = icmp eq i64 %xtraiter590, 0
  %lcmp.mod592 = trunc i32 %2 to i1
  br label %.preheader.i139

.preheader.i139:                                  ; preds = %._crit_edge.i145, %.preheader.preheader.i136
  %indvars.iv32.i = phi i64 [ 0, %.preheader.preheader.i136 ], [ %indvars.iv.next33.i, %._crit_edge.i145 ] ; 3 uses
  %i.lm = mul nsw i64 %indvars.iv32.i, %i.lk
  %i.ln = xor i64 %indvars.iv32.i, -1
  %i.lo = add nsw i64 %i.ln, %i.li
  %i.lp = mul nsw i64 %i.lo, %i.lj
  %invariant.gep.i140 = getelementptr i8, ptr %0, i64 %i.lm ; 3 uses
  %invariant.gep38.i = getelementptr i8, ptr %1, i64 %i.lp ; 3 uses
  br i1 %i.ll, label %.epil.preheader589, label %.preheader.i139.new

._crit_edge.i145.unr-lcssa:                       ; preds = %.preheader.i139.new
  br i1 %lcmp.mod591.not, label %._crit_edge.i145, label %.epil.preheader589

.epil.preheader589:                               ; preds = %._crit_edge.i145.unr-lcssa, %.preheader.i139
  %indvars.iv.i141.epil.init = phi i64 [ 0, %.preheader.i139 ], [ %indvars.iv.next.i143.1, %._crit_edge.i145.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod592)
  %i.lq = mul nuw nsw i64 %indvars.iv.i141.epil.init, 3
  %i.lr = xor i64 %indvars.iv.i141.epil.init, -1
  %i.ls = add nsw i64 %i.lr, %i.lh
  %i.lt = mul nsw i64 %i.ls, 3
  %gep.i142.epil = getelementptr i8, ptr %invariant.gep.i140, i64 %i.lq ; 3 uses
  %i.lu = load i8, ptr %gep.i142.epil, align 1, !tbaa !8
  %gep39.i.epil = getelementptr i8, ptr %invariant.gep38.i, i64 %i.lt ; 3 uses
  store i8 %i.lu, ptr %gep39.i.epil, align 1, !tbaa !8
  %i.lv = getelementptr i8, ptr %gep.i142.epil, i64 1
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !8
  %i.lx = getelementptr i8, ptr %gep39.i.epil, i64 1
  store i8 %i.lw, ptr %i.lx, align 1, !tbaa !8
  %i.ly = getelementptr i8, ptr %gep.i142.epil, i64 2
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !8
  %i.ma = getelementptr i8, ptr %gep39.i.epil, i64 2
  store i8 %i.lz, ptr %i.ma, align 1, !tbaa !8
  br label %._crit_edge.i145

._crit_edge.i145:                                 ; preds = %._crit_edge.i145.unr-lcssa, %.epil.preheader589
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i146 = icmp eq i64 %indvars.iv.next33.i, %i.li
  br i1 %exitcond36.not.i146, label %rotate90_l8.exit, label %.preheader.i139, !llvm.loop !83

.preheader.i139.new:                              ; preds = %.preheader.i139, %.preheader.i139.new
  %indvars.iv.i141 = phi i64 [ %indvars.iv.next.i143.1, %.preheader.i139.new ], [ 0, %.preheader.i139 ] ; 5 uses
  %niter594 = phi i64 [ %niter594.next.1, %.preheader.i139.new ], [ 0, %.preheader.i139 ]
  %i.mb = mul nuw nsw i64 %indvars.iv.i141, 3
  %i.mc = xor i64 %indvars.iv.i141, -1
  %i.md = add nsw i64 %i.mc, %i.lh
  %i.me = mul nsw i64 %i.md, 3
  %gep.i142 = getelementptr i8, ptr %invariant.gep.i140, i64 %i.mb ; 3 uses
  %i.mf = load i8, ptr %gep.i142, align 1, !tbaa !8
  %gep39.i = getelementptr i8, ptr %invariant.gep38.i, i64 %i.me ; 3 uses
  store i8 %i.mf, ptr %gep39.i, align 1, !tbaa !8
  %i.mg = getelementptr i8, ptr %gep.i142, i64 1
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !8
  %i.mi = getelementptr i8, ptr %gep39.i, i64 1
  store i8 %i.mh, ptr %i.mi, align 1, !tbaa !8
  %i.mj = getelementptr i8, ptr %gep.i142, i64 2
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !8
  %i.ml = getelementptr i8, ptr %gep39.i, i64 2
  store i8 %i.mk, ptr %i.ml, align 1, !tbaa !8
  %i.mm = mul nuw i64 %indvars.iv.i141, 3
  %i.mn = xor i64 %indvars.iv.i141, -2
  %i.mo = add nsw i64 %i.mn, %i.lh
  %i.mp = mul nsw i64 %i.mo, 3
  %i.mq = getelementptr i8, ptr %invariant.gep.i140, i64 %i.mm ; 3 uses
  %gep.i142.1 = getelementptr i8, ptr %i.mq, i64 3
  %i.mr = load i8, ptr %gep.i142.1, align 1, !tbaa !8
  %gep39.i.1 = getelementptr i8, ptr %invariant.gep38.i, i64 %i.mp ; 3 uses
  store i8 %i.mr, ptr %gep39.i.1, align 1, !tbaa !8
  %i.ms = getelementptr i8, ptr %i.mq, i64 4
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !8
  %i.mu = getelementptr i8, ptr %gep39.i.1, i64 1
  store i8 %i.mt, ptr %i.mu, align 1, !tbaa !8
  %i.mv = getelementptr i8, ptr %i.mq, i64 5
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !8
  %i.mx = getelementptr i8, ptr %gep39.i.1, i64 2
  store i8 %i.mw, ptr %i.mx, align 1, !tbaa !8
  %indvars.iv.next.i143.1 = add nuw nsw i64 %indvars.iv.i141, 2 ; 2 uses
  %niter594.next.1 = add i64 %niter594, 2         ; 2 uses
  %niter594.ncmp.1 = icmp eq i64 %niter594.next.1, %unroll_iter593
  br i1 %niter594.ncmp.1, label %._crit_edge.i145.unr-lcssa, label %.preheader.i139.new, !llvm.loop !84

bb.k:                                             ; preds = %bb.g, %bb.g
  %i.my = icmp sgt i32 %3, 0
  %i.mz = icmp sgt i32 %2, 0
  %or.cond.i147 = and i1 %i.mz, %i.my
  br i1 %or.cond.i147, label %.lr.ph.preheader.i148, label %rotate90_l8.exit

.lr.ph.preheader.i148:                            ; preds = %bb.k
  %i.na = ashr i32 %5, 2                          ; 5 uses
  %i.nb = ashr i32 %4, 2                          ; 2 uses
  %i.nc = sext i32 %i.nb to i64                   ; 2 uses
  %wide.trip.count31.i149 = zext nneg i32 %3 to i64 ; 2 uses
  %wide.trip.count.i150 = zext nneg i32 %2 to i64 ; 8 uses
  %i.nd = add nsw i64 %wide.trip.count.i150, -1   ; 2 uses
  %i.ne = add nsw i32 %3, -1
  %i.nf = mul i32 %i.na, %i.ne
  %i.ng = add i32 %2, %i.nf
  %i.nh = add nuw nsw i64 %wide.trip.count31.i149, 4611686018427387903
  %i.ni = mul i64 %i.nh, %i.nc
  %i.nj = shl nuw nsw i64 %wide.trip.count.i150, 2
  %i.nk = add i64 %i.ni, %wide.trip.count.i150
  %i.nl = shl i64 %i.nk, 2
  %scevgep362 = getelementptr i8, ptr %0, i64 %i.nl
  %i.nm = sub nsw i64 4, %i.nj
  %scevgep363 = getelementptr i8, ptr %1, i64 %i.nm
  %i.nn = add nsw i32 %3, -1
  %i.no = mul i32 %i.na, %i.nn
  %i.np = add i32 %2, %i.no
  %scevgep365 = getelementptr i8, ptr %1, i64 4
  %min.iters.check371 = icmp ult i32 %2, 12
  %i.nq = trunc nsw i64 %i.nd to i32
  %i.nr = icmp ugt i64 %i.nd, 4294967295
  %stride.check = icmp slt i32 %i.nb, 0
  %n.vec373 = and i64 %wide.trip.count.i150, 2147483640 ; 3 uses
  %cmp.n382 = icmp eq i64 %n.vec373, %wide.trip.count.i150
  %xtraiter587 = and i64 %wide.trip.count.i150, 1
  %lcmp.mod588.not = icmp eq i64 %xtraiter587, 0
  %i.ns = add nsw i64 %wide.trip.count.i150, -1
  br label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %._crit_edge.i158, %.lr.ph.preheader.i148
  %indvars.iv28.i152 = phi i64 [ 0, %.lr.ph.preheader.i148 ], [ %indvars.iv.next29.i159, %._crit_edge.i158 ] ; 5 uses
  %i.nt = trunc i64 %indvars.iv28.i152 to i32
  %i.nu = mul i32 %i.na, %i.nt
  %i.nv = xor i32 %i.nu, -1
  %i.nw = add i32 %i.np, %i.nv
  %i.nx = sext i32 %i.nw to i64
  %i.ny = shl nsw i64 %i.nx, 2                    ; 2 uses
  %scevgep364 = getelementptr i8, ptr %scevgep363, i64 %i.ny
  %scevgep366 = getelementptr i8, ptr %scevgep365, i64 %i.ny
  %i.nz = mul nsw i64 %indvars.iv28.i152, %i.nc
  %invariant.gep.i153 = getelementptr [4 x i8], ptr %0, i64 %i.nz ; 4 uses
  %i.oa = trunc i64 %indvars.iv28.i152 to i32
  %i.ob = xor i32 %i.oa, -1
  %i.oc = add i32 %3, %i.ob
  %i.od = mul i32 %i.oc, %i.na
  %i.oe = add i32 %i.od, %2                       ; 4 uses
  br i1 %min.iters.check371, label %scalar.ph370.preheader, label %vector.scevcheck360

vector.scevcheck360:                              ; preds = %.lr.ph.i151
  %i.of = trunc i64 %indvars.iv28.i152 to i32
  %i.og = mul i32 %i.na, %i.of
  %i.oh = xor i32 %i.og, -1
  %i.oi = add i32 %i.ng, %i.oh                    ; 2 uses
  %i.oj = sub i32 %i.oi, %i.nq
  %i.ok = icmp sgt i32 %i.oj, %i.oi
  %i.ol = or i1 %i.ok, %i.nr
  br i1 %i.ol, label %scalar.ph370.preheader, label %vector.memcheck361

vector.memcheck361:                               ; preds = %vector.scevcheck360
  %bound0367 = icmp ult ptr %0, %scevgep366
  %bound1368 = icmp ult ptr %scevgep364, %scevgep362
  %found.conflict369 = and i1 %bound0367, %bound1368
  %i.om = or i1 %found.conflict369, %stride.check
  br i1 %i.om, label %scalar.ph370.preheader, label %vector.body374

vector.body374:                                   ; preds = %vector.memcheck361, %vector.body374
  %index375 = phi i64 [ %index.next380, %vector.body374 ], [ 0, %vector.memcheck361 ] ; 3 uses
  %i.on = getelementptr [4 x i8], ptr %invariant.gep.i153, i64 %index375 ; 2 uses
  %i.oo = getelementptr i8, ptr %i.on, i64 16
  %wide.load376 = load <4 x i32>, ptr %i.on, align 4, !tbaa !12, !alias.scope !85, !noalias !88
  %wide.load377 = load <4 x i32>, ptr %i.oo, align 4, !tbaa !12, !alias.scope !85, !noalias !88
  %i.op = trunc i64 %index375 to i32
  %i.oq = xor i32 %i.op, -1
  %i.or = add i32 %i.oe, %i.oq
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr inbounds [4 x i8], ptr %1, i64 %i.os ; 2 uses
  %i.ou = getelementptr inbounds i8, ptr %i.ot, i64 -12
  %i.ov = getelementptr inbounds i8, ptr %i.ot, i64 -28
  %reverse378 = shufflevector <4 x i32> %wide.load376, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse379 = shufflevector <4 x i32> %wide.load377, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse378, ptr %i.ou, align 4, !tbaa !12, !alias.scope !88
  store <4 x i32> %reverse379, ptr %i.ov, align 4, !tbaa !12, !alias.scope !88
  %index.next380 = add nuw i64 %index375, 8       ; 2 uses
  %i.ow = icmp eq i64 %index.next380, %n.vec373
  br i1 %i.ow, label %middle.block381, label %vector.body374, !llvm.loop !90

middle.block381:                                  ; preds = %vector.body374
  br i1 %cmp.n382, label %._crit_edge.i158, label %scalar.ph370.preheader

scalar.ph370.preheader:                           ; preds = %vector.memcheck361, %vector.scevcheck360, %.lr.ph.i151, %middle.block381
  %indvars.iv.i154.ph = phi i64 [ 0, %vector.memcheck361 ], [ 0, %vector.scevcheck360 ], [ 0, %.lr.ph.i151 ], [ %n.vec373, %middle.block381 ] ; 5 uses
  br i1 %lcmp.mod588.not, label %scalar.ph370.prol.loopexit, label %scalar.ph370.prol

scalar.ph370.prol:                                ; preds = %scalar.ph370.preheader
  %gep.i155.prol = getelementptr [4 x i8], ptr %invariant.gep.i153, i64 %indvars.iv.i154.ph
  %i.ox = load i32, ptr %gep.i155.prol, align 4, !tbaa !12
  %i.oy = trunc nuw nsw i64 %indvars.iv.i154.ph to i32
  %i.oz = xor i32 %i.oy, -1
  %i.pa = add i32 %i.oe, %i.oz
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.pb
  store i32 %i.ox, ptr %i.pc, align 4, !tbaa !12
  %indvars.iv.next.i156.prol = or disjoint i64 %indvars.iv.i154.ph, 1
  br label %scalar.ph370.prol.loopexit

scalar.ph370.prol.loopexit:                       ; preds = %scalar.ph370.prol, %scalar.ph370.preheader
  %indvars.iv.i154.unr = phi i64 [ %indvars.iv.i154.ph, %scalar.ph370.preheader ], [ %indvars.iv.next.i156.prol, %scalar.ph370.prol ]
  %i.pd = icmp eq i64 %indvars.iv.i154.ph, %i.ns
  br i1 %i.pd, label %._crit_edge.i158, label %scalar.ph370

._crit_edge.i158:                                 ; preds = %scalar.ph370.prol.loopexit, %scalar.ph370, %middle.block381
  %indvars.iv.next29.i159 = add nuw nsw i64 %indvars.iv28.i152, 1 ; 2 uses
  %exitcond32.not.i160 = icmp eq i64 %indvars.iv.next29.i159, %wide.trip.count31.i149
  br i1 %exitcond32.not.i160, label %rotate90_l8.exit, label %.lr.ph.i151, !llvm.loop !91

scalar.ph370:                                     ; preds = %scalar.ph370.prol.loopexit, %scalar.ph370
  %indvars.iv.i154 = phi i64 [ %indvars.iv.next.i156.1, %scalar.ph370 ], [ %indvars.iv.i154.unr, %scalar.ph370.prol.loopexit ] ; 4 uses
  %gep.i155 = getelementptr [4 x i8], ptr %invariant.gep.i153, i64 %indvars.iv.i154
  %i.pe = load i32, ptr %gep.i155, align 4, !tbaa !12
  %i.pf = trunc i64 %indvars.iv.i154 to i32
  %i.pg = xor i32 %i.pf, -1
  %i.ph = add i32 %i.oe, %i.pg
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.pi
  store i32 %i.pe, ptr %i.pj, align 4, !tbaa !12
  %indvars.iv.next.i156 = add nuw nsw i64 %indvars.iv.i154, 1 ; 2 uses
  %gep.i155.1 = getelementptr [4 x i8], ptr %invariant.gep.i153, i64 %indvars.iv.next.i156
  %i.pk = load i32, ptr %gep.i155.1, align 4, !tbaa !12
  %i.pl = trunc i64 %indvars.iv.next.i156 to i32
  %i.pm = xor i32 %i.pl, -1
  %i.pn = add i32 %i.oe, %i.pm
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.po
  store i32 %i.pk, ptr %i.pp, align 4, !tbaa !12
  %indvars.iv.next.i156.1 = add nuw nsw i64 %indvars.iv.i154, 2 ; 2 uses
  %exitcond.not.i157.1 = icmp eq i64 %indvars.iv.next.i156.1, %wide.trip.count.i150
  br i1 %exitcond.not.i157.1, label %._crit_edge.i158, label %scalar.ph370, !llvm.loop !92

bb.l:                                             ; preds = %bb.a
  switch i32 %7, label %rotate90_l8.exit [
    i32 6, label %bb.m
    i32 18, label %bb.n
    i32 15, label %bb.o
    i32 17, label %bb.p
    i32 16, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.pq = icmp sgt i32 %2, 0
  %i.pr = icmp sgt i32 %3, 0
  %or.cond.i161 = and i1 %i.pq, %i.pr
  br i1 %or.cond.i161, label %.lr.ph.preheader.i162, label %rotate90_l8.exit

.lr.ph.preheader.i162:                            ; preds = %bb.m
  %i.ps = sext i32 %4 to i64                      ; 3 uses
  %wide.trip.count33.i163 = zext nneg i32 %2 to i64 ; 2 uses
  %wide.trip.count.i164 = zext nneg i32 %3 to i64 ; 11 uses
  %i.pt = add nsw i64 %wide.trip.count.i164, -1   ; 2 uses
  %i.pu = add nsw i32 %3, -1
  %i.pv = getelementptr i8, ptr %0, i64 %wide.trip.count.i164
  %i.pw = getelementptr i8, ptr %i.pv, i64 %wide.trip.count33.i163
  %scevgep320 = getelementptr i8, ptr %i.pw, i64 -1
  %i.px = sub nsw i64 1, %wide.trip.count.i164
  %scevgep321 = getelementptr i8, ptr %1, i64 %i.px
  %i.py = add nsw i32 %3, -1
  %scevgep323 = getelementptr i8, ptr %1, i64 1
  %min.iters.check329 = icmp ult i32 %3, 8
  %ident.check318 = icmp ne i32 %4, 1
  %i.pz = trunc nsw i64 %i.pt to i32
  %i.qa = icmp ugt i64 %i.pt, 4294967295
  %invariant.op617 = or i1 %i.qa, %ident.check318
  %min.iters.check331 = icmp ult i32 %3, 32
  %i.qb = and i64 %wide.trip.count.i164, 24
  %n.vec333 = and i64 %wide.trip.count.i164, 2147483616 ; 5 uses
  %cmp.n342 = icmp eq i64 %n.vec333, %wide.trip.count.i164
  %min.epilog.iters.check348 = icmp eq i64 %i.qb, 0
  %n.vec350 = and i64 %wide.trip.count.i164, 2147483640 ; 4 uses
  %cmp.n357 = icmp eq i64 %n.vec350, %wide.trip.count.i164
  %xtraiter585 = and i64 %wide.trip.count.i164, 1
  %lcmp.mod586.not = icmp eq i64 %xtraiter585, 0
  %i.qc = add nsw i64 %wide.trip.count.i164, -1
  br label %iter.check345

iter.check345:                                    ; preds = %._crit_edge.i172, %.lr.ph.preheader.i162
  %indvars.iv25.i166 = phi i64 [ 0, %.lr.ph.preheader.i162 ], [ %indvars.iv.next26.i173, %._crit_edge.i172 ] ; 11 uses
  %i.qd = trunc i64 %indvars.iv25.i166 to i32
  %i.qe = mul i32 %5, %i.qd
  %i.qf = add i32 %i.qe, %i.py
  %i.qg = sext i32 %i.qf to i64                   ; 2 uses
  %scevgep322 = getelementptr i8, ptr %scevgep321, i64 %i.qg
  %scevgep324 = getelementptr i8, ptr %scevgep323, i64 %i.qg
  %indvars32.i = trunc i64 %indvars.iv25.i166 to i32
  %i.qh = mul nsw i32 %5, %indvars32.i
  %i.qi = add i32 %i.qh, %3                       ; 5 uses
  br i1 %min.iters.check329, label %vec.epilog.scalar.ph346.preheader, label %vector.scevcheck317

vector.scevcheck317:                              ; preds = %iter.check345
  %i.qj = trunc i64 %indvars.iv25.i166 to i32
  %i.qk = mul i32 %5, %i.qj
  %i.ql = add i32 %i.qk, %i.pu                    ; 2 uses
  %i.qm = sub i32 %i.ql, %i.pz
  %i.qn = icmp sgt i32 %i.qm, %i.ql
  %.reass618 = or i1 %i.qn, %invariant.op617
  br i1 %.reass618, label %vec.epilog.scalar.ph346.preheader, label %vector.memcheck319

vector.memcheck319:                               ; preds = %vector.scevcheck317
  %bound0325 = icmp ult ptr %0, %scevgep324
  %bound1326 = icmp ult ptr %scevgep322, %scevgep320
  %found.conflict327 = and i1 %bound0325, %bound1326
  br i1 %found.conflict327, label %vec.epilog.scalar.ph346.preheader, label %vector.main.loop.iter.check330

vector.main.loop.iter.check330:                   ; preds = %vector.memcheck319
  br i1 %min.iters.check331, label %vec.epilog.ph349, label %vector.ph332

vector.ph332:                                     ; preds = %vector.main.loop.iter.check330
  %i.qo = add nuw i64 %indvars.iv25.i166, %n.vec333
  %i.qp = getelementptr i8, ptr %0, i64 %indvars.iv25.i166
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph332
  %index335 = phi i64 [ 0, %vector.ph332 ], [ %index.next340, %vector.body334 ] ; 3 uses
  %i.qq = getelementptr i8, ptr %i.qp, i64 %index335 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %wide.load336 = load <16 x i8>, ptr %i.qq, align 1, !tbaa !8, !alias.scope !93, !noalias !96
  %wide.load337 = load <16 x i8>, ptr %i.qr, align 1, !tbaa !8, !alias.scope !93, !noalias !96
  %i.qs = trunc i64 %index335 to i32
  %i.qt = xor i32 %i.qs, -1
  %i.qu = add i32 %i.qi, %i.qt
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr inbounds i8, ptr %1, i64 %i.qv ; 2 uses
  %i.qx = getelementptr inbounds i8, ptr %i.qw, i64 -15
  %i.qy = getelementptr inbounds i8, ptr %i.qw, i64 -31
  %reverse338 = shufflevector <16 x i8> %wide.load336, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse339 = shufflevector <16 x i8> %wide.load337, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse338, ptr %i.qx, align 1, !tbaa !8, !alias.scope !96
  store <16 x i8> %reverse339, ptr %i.qy, align 1, !tbaa !8, !alias.scope !96
  %index.next340 = add nuw i64 %index335, 32      ; 2 uses
  %i.qz = icmp eq i64 %index.next340, %n.vec333
  br i1 %i.qz, label %middle.block341, label %vector.body334, !llvm.loop !98

middle.block341:                                  ; preds = %vector.body334
  br i1 %cmp.n342, label %._crit_edge.i172, label %vec.epilog.iter.check347

vec.epilog.iter.check347:                         ; preds = %middle.block341
  br i1 %min.epilog.iters.check348, label %vec.epilog.scalar.ph346.preheader, label %vec.epilog.ph349, !prof !37

vec.epilog.ph349:                                 ; preds = %vector.main.loop.iter.check330, %vec.epilog.iter.check347
  %vec.epilog.resume.val343 = phi i64 [ %n.vec333, %vec.epilog.iter.check347 ], [ 0, %vector.main.loop.iter.check330 ]
  %i.ra = add nuw i64 %indvars.iv25.i166, %n.vec350
  %i.rb = getelementptr i8, ptr %0, i64 %indvars.iv25.i166
  br label %vec.epilog.vector.body351

vec.epilog.vector.body351:                        ; preds = %vec.epilog.vector.body351, %vec.epilog.ph349
  %index352 = phi i64 [ %vec.epilog.resume.val343, %vec.epilog.ph349 ], [ %index.next355, %vec.epilog.vector.body351 ] ; 3 uses
  %i.rc = getelementptr i8, ptr %i.rb, i64 %index352
  %wide.load353 = load <8 x i8>, ptr %i.rc, align 1, !tbaa !8, !alias.scope !93, !noalias !96
  %i.rd = trunc i64 %index352 to i32
  %i.re = xor i32 %i.rd, -1
  %i.rf = add i32 %i.qi, %i.re
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr inbounds i8, ptr %1, i64 %i.rg
  %i.ri = getelementptr inbounds i8, ptr %i.rh, i64 -7
  %reverse354 = shufflevector <8 x i8> %wide.load353, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse354, ptr %i.ri, align 1, !tbaa !8, !alias.scope !96
  %index.next355 = add nuw i64 %index352, 8       ; 2 uses
  %i.rj = icmp eq i64 %index.next355, %n.vec350
  br i1 %i.rj, label %vec.epilog.middle.block356, label %vec.epilog.vector.body351, !llvm.loop !99

vec.epilog.middle.block356:                       ; preds = %vec.epilog.vector.body351
  br i1 %cmp.n357, label %._crit_edge.i172, label %vec.epilog.scalar.ph346.preheader

vec.epilog.scalar.ph346.preheader:                ; preds = %vector.memcheck319, %vector.scevcheck317, %iter.check345, %vec.epilog.iter.check347, %vec.epilog.middle.block356
  %indvars.iv27.i167.ph = phi i64 [ %indvars.iv25.i166, %iter.check345 ], [ %indvars.iv25.i166, %vector.scevcheck317 ], [ %indvars.iv25.i166, %vector.memcheck319 ], [ %i.qo, %vec.epilog.iter.check347 ], [ %i.ra, %vec.epilog.middle.block356 ] ; 3 uses
  %indvars.iv.i168.ph = phi i64 [ 0, %iter.check345 ], [ 0, %vector.scevcheck317 ], [ 0, %vector.memcheck319 ], [ %n.vec333, %vec.epilog.iter.check347 ], [ %n.vec350, %vec.epilog.middle.block356 ] ; 4 uses
  br i1 %lcmp.mod586.not, label %vec.epilog.scalar.ph346.prol.loopexit, label %vec.epilog.scalar.ph346.prol

vec.epilog.scalar.ph346.prol:                     ; preds = %vec.epilog.scalar.ph346.preheader
  %i.rk = getelementptr inbounds i8, ptr %0, i64 %indvars.iv27.i167.ph
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !8
  %i.rm = trunc nuw nsw i64 %indvars.iv.i168.ph to i32
  %i.rn = xor i32 %i.rm, -1
  %i.ro = add i32 %i.qi, %i.rn
  %i.rp = sext i32 %i.ro to i64
  %i.rq = getelementptr inbounds i8, ptr %1, i64 %i.rp
  store i8 %i.rl, ptr %i.rq, align 1, !tbaa !8
  %indvars.iv.next28.i169.prol = add nsw i64 %indvars.iv27.i167.ph, %i.ps
  %indvars.iv.next.i170.prol = or disjoint i64 %indvars.iv.i168.ph, 1
  br label %vec.epilog.scalar.ph346.prol.loopexit

vec.epilog.scalar.ph346.prol.loopexit:            ; preds = %vec.epilog.scalar.ph346.prol, %vec.epilog.scalar.ph346.preheader
  %indvars.iv27.i167.unr = phi i64 [ %indvars.iv27.i167.ph, %vec.epilog.scalar.ph346.preheader ], [ %indvars.iv.next28.i169.prol, %vec.epilog.scalar.ph346.prol ]
  %indvars.iv.i168.unr = phi i64 [ %indvars.iv.i168.ph, %vec.epilog.scalar.ph346.preheader ], [ %indvars.iv.next.i170.prol, %vec.epilog.scalar.ph346.prol ]
  %i.rr = icmp eq i64 %indvars.iv.i168.ph, %i.qc
  br i1 %i.rr, label %._crit_edge.i172, label %vec.epilog.scalar.ph346

._crit_edge.i172:                                 ; preds = %vec.epilog.scalar.ph346.prol.loopexit, %vec.epilog.scalar.ph346, %vec.epilog.middle.block356, %middle.block341
  %indvars.iv.next26.i173 = add nuw nsw i64 %indvars.iv25.i166, 1 ; 2 uses
  %exitcond34.not.i174 = icmp eq i64 %indvars.iv.next26.i173, %wide.trip.count33.i163
  br i1 %exitcond34.not.i174, label %rotate90_l8.exit, label %iter.check345, !llvm.loop !100

vec.epilog.scalar.ph346:                          ; preds = %vec.epilog.scalar.ph346.prol.loopexit, %vec.epilog.scalar.ph346
  %indvars.iv27.i167 = phi i64 [ %indvars.iv.next28.i169.1, %vec.epilog.scalar.ph346 ], [ %indvars.iv27.i167.unr, %vec.epilog.scalar.ph346.prol.loopexit ] ; 2 uses
  %indvars.iv.i168 = phi i64 [ %indvars.iv.next.i170.1, %vec.epilog.scalar.ph346 ], [ %indvars.iv.i168.unr, %vec.epilog.scalar.ph346.prol.loopexit ] ; 3 uses
  %i.rs = getelementptr inbounds i8, ptr %0, i64 %indvars.iv27.i167
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !8
  %i.ru = trunc i64 %indvars.iv.i168 to i32
  %i.rv = xor i32 %i.ru, -1
  %i.rw = add i32 %i.qi, %i.rv
  %i.rx = sext i32 %i.rw to i64
  %i.ry = getelementptr inbounds i8, ptr %1, i64 %i.rx
  store i8 %i.rt, ptr %i.ry, align 1, !tbaa !8
  %indvars.iv.next28.i169 = add nsw i64 %indvars.iv27.i167, %i.ps ; 2 uses
  %i.rz = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next28.i169
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !8
  %i.sb = trunc i64 %indvars.iv.i168 to i32
  %reass.sub614 = sub i32 %i.qi, %i.sb
  %i.sc = add i32 %reass.sub614, -2
  %i.sd = sext i32 %i.sc to i64
  %i.se = getelementptr inbounds i8, ptr %1, i64 %i.sd
  store i8 %i.sa, ptr %i.se, align 1, !tbaa !8
  %indvars.iv.next28.i169.1 = add nsw i64 %indvars.iv.next28.i169, %i.ps
  %indvars.iv.next.i170.1 = add nuw nsw i64 %indvars.iv.i168, 2 ; 2 uses
  %exitcond.not.i171.1 = icmp eq i64 %indvars.iv.next.i170.1, %wide.trip.count.i164
  br i1 %exitcond.not.i171.1, label %._crit_edge.i172, label %vec.epilog.scalar.ph346, !llvm.loop !101

bb.n:                                             ; preds = %bb.l
  %i.sf = ashr i32 %5, 1                          ; 3 uses
  %i.sg = icmp sgt i32 %2, 0
  %i.sh = icmp sgt i32 %3, 0
  %or.cond.i175 = and i1 %i.sg, %i.sh
  br i1 %or.cond.i175, label %.lr.ph.preheader.i176, label %rotate90_l8.exit

.lr.ph.preheader.i176:                            ; preds = %bb.n
  %i.si = ashr i32 %4, 1                          ; 2 uses
  %i.sj = sext i32 %i.si to i64                   ; 3 uses
  %wide.trip.count35.i177 = zext nneg i32 %2 to i64 ; 2 uses
  %wide.trip.count.i178 = zext nneg i32 %3 to i64 ; 11 uses
  %i.sk = add nsw i64 %wide.trip.count.i178, -1   ; 2 uses
  %i.sl = add nsw i32 %3, -1
  %i.sm = shl nuw nsw i64 %wide.trip.count.i178, 1
  %i.sn = add nuw nsw i64 %wide.trip.count35.i177, %wide.trip.count.i178
  %i.so = shl nuw nsw i64 %i.sn, 1
  %i.sp = getelementptr i8, ptr %0, i64 %i.so
  %scevgep286 = getelementptr i8, ptr %i.sp, i64 -2
  %i.sq = sub nsw i64 2, %i.sm
  %scevgep287 = getelementptr i8, ptr %1, i64 %i.sq
  %i.sr = add nsw i32 %3, -1
  %scevgep289 = getelementptr i8, ptr %1, i64 2
  %min.iters.check295 = icmp ult i32 %3, 4
  %ident.check284 = icmp ne i32 %i.si, 1
  %i.ss = trunc nsw i64 %i.sk to i32
  %i.st = icmp ugt i64 %i.sk, 4294967295
  %invariant.op615 = or i1 %i.st, %ident.check284
  %min.iters.check296 = icmp ult i32 %3, 16
  %i.su = and i64 %wide.trip.count.i178, 12
  %n.vec298 = and i64 %wide.trip.count.i178, 2147483632 ; 5 uses
  %cmp.n307 = icmp eq i64 %n.vec298, %wide.trip.count.i178
  %min.epilog.iters.check = icmp eq i64 %i.su, 0
  %n.vec309 = and i64 %wide.trip.count.i178, 2147483644 ; 4 uses
  %cmp.n314 = icmp eq i64 %n.vec309, %wide.trip.count.i178
  %xtraiter583 = and i64 %wide.trip.count.i178, 1
  %lcmp.mod584.not = icmp eq i64 %xtraiter583, 0
  %i.sv = add nsw i64 %wide.trip.count.i178, -1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i186, %.lr.ph.preheader.i176
  %indvars.iv27.i180 = phi i64 [ 0, %.lr.ph.preheader.i176 ], [ %indvars.iv.next28.i187, %._crit_edge.i186 ] ; 11 uses
  %i.sw = trunc i64 %indvars.iv27.i180 to i32
  %i.sx = mul i32 %i.sf, %i.sw
  %i.sy = add i32 %i.sx, %i.sr
  %i.sz = sext i32 %i.sy to i64
  %i.ta = shl nsw i64 %i.sz, 1                    ; 2 uses
  %scevgep288 = getelementptr i8, ptr %scevgep287, i64 %i.ta
  %scevgep290 = getelementptr i8, ptr %scevgep289, i64 %i.ta
  %indvars34.i = trunc i64 %indvars.iv27.i180 to i32
  %i.tb = mul nsw i32 %i.sf, %indvars34.i
  %i.tc = add i32 %i.tb, %3                       ; 5 uses
  br i1 %min.iters.check295, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck283

vector.scevcheck283:                              ; preds = %iter.check
  %i.td = trunc i64 %indvars.iv27.i180 to i32
  %i.te = mul i32 %i.sf, %i.td
  %i.tf = add i32 %i.te, %i.sl                    ; 2 uses
  %i.tg = sub i32 %i.tf, %i.ss
  %i.th = icmp sgt i32 %i.tg, %i.tf
  %.reass616 = or i1 %i.th, %invariant.op615
  br i1 %.reass616, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck285

vector.memcheck285:                               ; preds = %vector.scevcheck283
  %bound0291 = icmp ult ptr %0, %scevgep290
  %bound1292 = icmp ult ptr %scevgep288, %scevgep286
  %found.conflict293 = and i1 %bound0291, %bound1292
  br i1 %found.conflict293, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck285
  br i1 %min.iters.check296, label %vec.epilog.ph, label %vector.ph297

vector.ph297:                                     ; preds = %vector.main.loop.iter.check
  %i.ti = add nuw i64 %indvars.iv27.i180, %n.vec298
  %i.tj = getelementptr [2 x i8], ptr %0, i64 %indvars.iv27.i180
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next305, %vector.body299 ] ; 3 uses
  %i.tk = getelementptr [2 x i8], ptr %i.tj, i64 %index300 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %wide.load301 = load <8 x i16>, ptr %i.tk, align 2, !tbaa !21, !alias.scope !102, !noalias !105
  %wide.load302 = load <8 x i16>, ptr %i.tl, align 2, !tbaa !21, !alias.scope !102, !noalias !105
  %i.tm = trunc i64 %index300 to i32
  %i.tn = xor i32 %i.tm, -1
  %i.to = add i32 %i.tc, %i.tn
  %i.tp = sext i32 %i.to to i64
  %i.tq = getelementptr inbounds [2 x i8], ptr %1, i64 %i.tp ; 2 uses
  %i.tr = getelementptr inbounds i8, ptr %i.tq, i64 -14
  %i.ts = getelementptr inbounds i8, ptr %i.tq, i64 -30
  %reverse303 = shufflevector <8 x i16> %wide.load301, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse304 = shufflevector <8 x i16> %wide.load302, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse303, ptr %i.tr, align 2, !tbaa !21, !alias.scope !105
  store <8 x i16> %reverse304, ptr %i.ts, align 2, !tbaa !21, !alias.scope !105
  %index.next305 = add nuw i64 %index300, 16      ; 2 uses
  %i.tt = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.tt, label %middle.block306, label %vector.body299, !llvm.loop !107

middle.block306:                                  ; preds = %vector.body299
  br i1 %cmp.n307, label %._crit_edge.i186, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block306
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec298, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.tu = add nuw i64 %indvars.iv27.i180, %n.vec309
  %i.tv = getelementptr [2 x i8], ptr %0, i64 %indvars.iv27.i180
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index310 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next313, %vec.epilog.vector.body ] ; 3 uses
  %i.tw = getelementptr [2 x i8], ptr %i.tv, i64 %index310
  %wide.load311 = load <4 x i16>, ptr %i.tw, align 2, !tbaa !21, !alias.scope !102, !noalias !105
  %i.tx = trunc i64 %index310 to i32
  %i.ty = xor i32 %i.tx, -1
  %i.tz = add i32 %i.tc, %i.ty
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ua
  %i.uc = getelementptr inbounds i8, ptr %i.ub, i64 -6
  %reverse312 = shufflevector <4 x i16> %wide.load311, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i16> %reverse312, ptr %i.uc, align 2, !tbaa !21, !alias.scope !105
  %index.next313 = add nuw i64 %index310, 4       ; 2 uses
  %i.ud = icmp eq i64 %index.next313, %n.vec309
  br i1 %i.ud, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n314, label %._crit_edge.i186, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck285, %vector.scevcheck283, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv29.i181.ph = phi i64 [ %indvars.iv27.i180, %iter.check ], [ %indvars.iv27.i180, %vector.scevcheck283 ], [ %indvars.iv27.i180, %vector.memcheck285 ], [ %i.ti, %vec.epilog.iter.check ], [ %i.tu, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv.i182.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck283 ], [ 0, %vector.memcheck285 ], [ %n.vec298, %vec.epilog.iter.check ], [ %n.vec309, %vec.epilog.middle.block ] ; 4 uses
  br i1 %lcmp.mod584.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ue = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv29.i181.ph
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !21
  %i.ug = trunc nuw nsw i64 %indvars.iv.i182.ph to i32
  %i.uh = xor i32 %i.ug, -1
  %i.ui = add i32 %i.tc, %i.uh
  %i.uj = sext i32 %i.ui to i64
  %i.uk = getelementptr inbounds [2 x i8], ptr %1, i64 %i.uj
  store i16 %i.uf, ptr %i.uk, align 2, !tbaa !21
  %indvars.iv.next30.i183.prol = add nsw i64 %indvars.iv29.i181.ph, %i.sj
  %indvars.iv.next.i184.prol = or disjoint i64 %indvars.iv.i182.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv29.i181.unr = phi i64 [ %indvars.iv29.i181.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next30.i183.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.i182.unr = phi i64 [ %indvars.iv.i182.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i184.prol, %vec.epilog.scalar.ph.prol ]
  %i.ul = icmp eq i64 %indvars.iv.i182.ph, %i.sv
  br i1 %i.ul, label %._crit_edge.i186, label %vec.epilog.scalar.ph

._crit_edge.i186:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block306
  %indvars.iv.next28.i187 = add nuw nsw i64 %indvars.iv27.i180, 1 ; 2 uses
  %exitcond36.not.i188 = icmp eq i64 %indvars.iv.next28.i187, %wide.trip.count35.i177
  br i1 %exitcond36.not.i188, label %rotate90_l8.exit, label %iter.check, !llvm.loop !109

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv29.i181 = phi i64 [ %indvars.iv.next30.i183.1, %vec.epilog.scalar.ph ], [ %indvars.iv29.i181.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv.i182 = phi i64 [ %indvars.iv.next.i184.1, %vec.epilog.scalar.ph ], [ %indvars.iv.i182.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.um = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv29.i181
  %i.un = load i16, ptr %i.um, align 2, !tbaa !21
  %i.uo = trunc i64 %indvars.iv.i182 to i32
  %i.up = xor i32 %i.uo, -1
  %i.uq = add i32 %i.tc, %i.up
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ur
  store i16 %i.un, ptr %i.us, align 2, !tbaa !21
  %indvars.iv.next30.i183 = add nsw i64 %indvars.iv29.i181, %i.sj ; 2 uses
  %i.ut = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv.next30.i183
  %i.uu = load i16, ptr %i.ut, align 2, !tbaa !21
  %i.uv = trunc i64 %indvars.iv.i182 to i32
  %reass.sub613 = sub i32 %i.tc, %i.uv
  %i.uw = add i32 %reass.sub613, -2
  %i.ux = sext i32 %i.uw to i64
  %i.uy = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ux
  store i16 %i.uu, ptr %i.uy, align 2, !tbaa !21
  %indvars.iv.next30.i183.1 = add nsw i64 %indvars.iv.next30.i183, %i.sj
  %indvars.iv.next.i184.1 = add nuw nsw i64 %indvars.iv.i182, 2 ; 2 uses
  %exitcond.not.i185.1 = icmp eq i64 %indvars.iv.next.i184.1, %wide.trip.count.i178
  br i1 %exitcond.not.i185.1, label %._crit_edge.i186, label %vec.epilog.scalar.ph, !llvm.loop !110

bb.o:                                             ; preds = %bb.l
  %i.uz = icmp sgt i32 %2, 0
  %i.va = icmp sgt i32 %3, 0
  %or.cond.i189 = and i1 %i.uz, %i.va
  br i1 %or.cond.i189, label %.preheader.preheader.i190, label %rotate90_l8.exit

.preheader.preheader.i190:                        ; preds = %bb.o
  %i.vb = zext nneg i32 %3 to i64                 ; 5 uses
  %i.vc = sext i32 %4 to i64                      ; 3 uses
  %i.vd = sext i32 %5 to i64
  %wide.trip.count33.i191 = zext nneg i32 %2 to i64
  %xtraiter580 = and i64 %i.vb, 1
  %i.ve = icmp eq i32 %3, 1
  %unroll_iter = and i64 %i.vb, 2147483646
  %lcmp.mod581.not = icmp eq i64 %xtraiter580, 0
  %lcmp.mod582 = trunc i32 %3 to i1
  br label %.preheader.i193

.preheader.i193:                                  ; preds = %._crit_edge.i202, %.preheader.preheader.i190
  %indvars.iv30.i194 = phi i64 [ 0, %.preheader.preheader.i190 ], [ %indvars.iv.next31.i203, %._crit_edge.i202 ] ; 3 uses
  %i.vf = mul nuw nsw i64 %indvars.iv30.i194, 3
  %i.vg = mul nsw i64 %indvars.iv30.i194, %i.vd
  %invariant.gep.i195 = getelementptr i8, ptr %0, i64 %i.vf ; 3 uses
  %invariant.gep36.i196 = getelementptr i8, ptr %1, i64 %i.vg ; 3 uses
  br i1 %i.ve, label %.epil.preheader, label %.preheader.i193.new

._crit_edge.i202.unr-lcssa:                       ; preds = %.preheader.i193.new
  br i1 %lcmp.mod581.not, label %._crit_edge.i202, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i202.unr-lcssa, %.preheader.i193
  %indvars.iv.i197.epil.init = phi i64 [ 0, %.preheader.i193 ], [ %indvars.iv.next.i200.1, %._crit_edge.i202.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod582)
  %i.vh = mul nsw i64 %indvars.iv.i197.epil.init, %i.vc
  %i.vi = xor i64 %indvars.iv.i197.epil.init, -1
  %i.vj = add nsw i64 %i.vi, %i.vb
  %i.vk = mul nsw i64 %i.vj, 3
  %gep.i198.epil = getelementptr i8, ptr %invariant.gep.i195, i64 %i.vh ; 3 uses
  %i.vl = load i8, ptr %gep.i198.epil, align 1, !tbaa !8
  %gep37.i199.epil = getelementptr i8, ptr %invariant.gep36.i196, i64 %i.vk ; 3 uses
  store i8 %i.vl, ptr %gep37.i199.epil, align 1, !tbaa !8
  %i.vm = getelementptr i8, ptr %gep.i198.epil, i64 1
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !8
  %i.vo = getelementptr i8, ptr %gep37.i199.epil, i64 1
  store i8 %i.vn, ptr %i.vo, align 1, !tbaa !8
  %i.vp = getelementptr i8, ptr %gep.i198.epil, i64 2
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !8
  %i.vr = getelementptr i8, ptr %gep37.i199.epil, i64 2
  store i8 %i.vq, ptr %i.vr, align 1, !tbaa !8
  br label %._crit_edge.i202

._crit_edge.i202:                                 ; preds = %._crit_edge.i202.unr-lcssa, %.epil.preheader
  %indvars.iv.next31.i203 = add nuw nsw i64 %indvars.iv30.i194, 1 ; 2 uses
  %exitcond34.not.i204 = icmp eq i64 %indvars.iv.next31.i203, %wide.trip.count33.i191
  br i1 %exitcond34.not.i204, label %rotate90_l8.exit, label %.preheader.i193, !llvm.loop !111

.preheader.i193.new:                              ; preds = %.preheader.i193, %.preheader.i193.new
  %indvars.iv.i197 = phi i64 [ %indvars.iv.next.i200.1, %.preheader.i193.new ], [ 0, %.preheader.i193 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i193.new ], [ 0, %.preheader.i193 ]
  %i.vs = mul nsw i64 %indvars.iv.i197, %i.vc
  %i.vt = xor i64 %indvars.iv.i197, -1
  %i.vu = add nsw i64 %i.vt, %i.vb
  %i.vv = mul nsw i64 %i.vu, 3
  %gep.i198 = getelementptr i8, ptr %invariant.gep.i195, i64 %i.vs ; 3 uses
  %i.vw = load i8, ptr %gep.i198, align 1, !tbaa !8
  %gep37.i199 = getelementptr i8, ptr %invariant.gep36.i196, i64 %i.vv ; 3 uses
  store i8 %i.vw, ptr %gep37.i199, align 1, !tbaa !8
  %i.vx = getelementptr i8, ptr %gep.i198, i64 1
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !8
  %i.vz = getelementptr i8, ptr %gep37.i199, i64 1
  store i8 %i.vy, ptr %i.vz, align 1, !tbaa !8
  %i.wa = getelementptr i8, ptr %gep.i198, i64 2
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !8
  %i.wc = getelementptr i8, ptr %gep37.i199, i64 2
  store i8 %i.wb, ptr %i.wc, align 1, !tbaa !8
  %indvars.iv.next.i200 = or disjoint i64 %indvars.iv.i197, 1
  %i.wd = mul nsw i64 %indvars.iv.next.i200, %i.vc
  %i.we = xor i64 %indvars.iv.i197, -2
  %i.wf = add nsw i64 %i.we, %i.vb
  %i.wg = mul nsw i64 %i.wf, 3
  %gep.i198.1 = getelementptr i8, ptr %invariant.gep.i195, i64 %i.wd ; 3 uses
  %i.wh = load i8, ptr %gep.i198.1, align 1, !tbaa !8
  %gep37.i199.1 = getelementptr i8, ptr %invariant.gep36.i196, i64 %i.wg ; 3 uses
  store i8 %i.wh, ptr %gep37.i199.1, align 1, !tbaa !8
  %i.wi = getelementptr i8, ptr %gep.i198.1, i64 1
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !8
  %i.wk = getelementptr i8, ptr %gep37.i199.1, i64 1
  store i8 %i.wj, ptr %i.wk, align 1, !tbaa !8
  %i.wl = getelementptr i8, ptr %gep.i198.1, i64 2
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !8
  %i.wn = getelementptr i8, ptr %gep37.i199.1, i64 2
  store i8 %i.wm, ptr %i.wn, align 1, !tbaa !8
  %indvars.iv.next.i200.1 = add nuw nsw i64 %indvars.iv.i197, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i202.unr-lcssa, label %.preheader.i193.new, !llvm.loop !112

bb.p:                                             ; preds = %bb.l, %bb.l
  %i.wo = ashr i32 %5, 2                          ; 3 uses
  %i.wp = icmp sgt i32 %2, 0
  %i.wq = icmp sgt i32 %3, 0
  %or.cond.i205 = and i1 %i.wp, %i.wq
  br i1 %or.cond.i205, label %.lr.ph.preheader.i206, label %rotate90_l8.exit

.lr.ph.preheader.i206:                            ; preds = %bb.p
  %i.wr = ashr i32 %4, 2                          ; 2 uses
  %i.ws = sext i32 %i.wr to i64                   ; 3 uses
  %wide.trip.count35.i207 = zext nneg i32 %2 to i64 ; 2 uses
  %wide.trip.count.i208 = zext nneg i32 %3 to i64 ; 8 uses
  %i.wt = add nsw i64 %wide.trip.count.i208, -1   ; 2 uses
  %i.wu = add nsw i32 %3, -1
  %i.wv = shl nuw nsw i64 %wide.trip.count.i208, 2
  %i.ww = add nuw nsw i64 %wide.trip.count35.i207, %wide.trip.count.i208
  %i.wx = shl nuw nsw i64 %i.ww, 2
  %i.wy = getelementptr i8, ptr %0, i64 %i.wx
  %scevgep = getelementptr i8, ptr %i.wy, i64 -4
  %i.wz = sub nsw i64 4, %i.wv
  %scevgep276 = getelementptr i8, ptr %1, i64 %i.wz
  %i.xa = add nsw i32 %3, -1
  %scevgep278 = getelementptr i8, ptr %1, i64 4
  %min.iters.check = icmp ult i32 %3, 12
  %ident.check = icmp ne i32 %i.wr, 1
  %i.xb = trunc nsw i64 %i.wt to i32
  %i.xc = icmp ugt i64 %i.wt, 4294967295
  %invariant.op = or i1 %i.xc, %ident.check
  %n.vec = and i64 %wide.trip.count.i208, 2147483640 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i208
  %xtraiter = and i64 %wide.trip.count.i208, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.xd = add nsw i64 %wide.trip.count.i208, -1
  br label %.lr.ph.i209

.lr.ph.i209:                                      ; preds = %._crit_edge.i217, %.lr.ph.preheader.i206
  %indvars.iv27.i210 = phi i64 [ 0, %.lr.ph.preheader.i206 ], [ %indvars.iv.next28.i218, %._crit_edge.i217 ] ; 9 uses
  %i.xe = trunc i64 %indvars.iv27.i210 to i32
  %i.xf = mul i32 %i.wo, %i.xe
  %i.xg = add i32 %i.xf, %i.xa
  %i.xh = sext i32 %i.xg to i64
  %i.xi = shl nsw i64 %i.xh, 2                    ; 2 uses
  %scevgep277 = getelementptr i8, ptr %scevgep276, i64 %i.xi
  %scevgep279 = getelementptr i8, ptr %scevgep278, i64 %i.xi
  %indvars34.i211 = trunc i64 %indvars.iv27.i210 to i32
  %i.xj = mul nsw i32 %i.wo, %indvars34.i211
  %i.xk = add i32 %i.xj, %3                       ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i209
  %i.xl = trunc i64 %indvars.iv27.i210 to i32
  %i.xm = mul i32 %i.wo, %i.xl
  %i.xn = add i32 %i.xm, %i.wu                    ; 2 uses
  %i.xo = sub i32 %i.xn, %i.xb
  %i.xp = icmp sgt i32 %i.xo, %i.xn
  %.reass = or i1 %i.xp, %invariant.op
  br i1 %.reass, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %0, %scevgep279
  %bound1 = icmp ult ptr %scevgep277, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.xq = add nuw i64 %indvars.iv27.i210, %n.vec
  %i.xr = getelementptr [4 x i8], ptr %0, i64 %indvars.iv27.i210
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.xs = getelementptr [4 x i8], ptr %i.xr, i64 %index ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %wide.load = load <4 x i32>, ptr %i.xs, align 4, !tbaa !12, !alias.scope !113, !noalias !116
  %wide.load280 = load <4 x i32>, ptr %i.xt, align 4, !tbaa !12, !alias.scope !113, !noalias !116
  %i.xu = trunc i64 %index to i32
  %i.xv = xor i32 %i.xu, -1
  %i.xw = add i32 %i.xk, %i.xv
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.xx ; 2 uses
  %i.xz = getelementptr inbounds i8, ptr %i.xy, i64 -12
  %i.ya = getelementptr inbounds i8, ptr %i.xy, i64 -28
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse281 = shufflevector <4 x i32> %wide.load280, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.xz, align 4, !tbaa !12, !alias.scope !116
  store <4 x i32> %reverse281, ptr %i.ya, align 4, !tbaa !12, !alias.scope !116
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.yb = icmp eq i64 %index.next, %n.vec
  br i1 %i.yb, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i217, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i209, %middle.block
  %indvars.iv29.i212.ph = phi i64 [ %indvars.iv27.i210, %vector.memcheck ], [ %indvars.iv27.i210, %vector.scevcheck ], [ %indvars.iv27.i210, %.lr.ph.i209 ], [ %i.xq, %middle.block ] ; 3 uses
  %indvars.iv.i213.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i209 ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.yc = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv29.i212.ph
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !12
  %i.ye = trunc nuw nsw i64 %indvars.iv.i213.ph to i32
  %i.yf = xor i32 %i.ye, -1
  %i.yg = add i32 %i.xk, %i.yf
  %i.yh = sext i32 %i.yg to i64
  %i.yi = getelementptr inbounds [4 x i8], ptr %1, i64 %i.yh
  store i32 %i.yd, ptr %i.yi, align 4, !tbaa !12
  %indvars.iv.next30.i214.prol = add nsw i64 %indvars.iv29.i212.ph, %i.ws
  %indvars.iv.next.i215.prol = or disjoint i64 %indvars.iv.i213.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv29.i212.unr = phi i64 [ %indvars.iv29.i212.ph, %scalar.ph.preheader ], [ %indvars.iv.next30.i214.prol, %scalar.ph.prol ]
  %indvars.iv.i213.unr = phi i64 [ %indvars.iv.i213.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i215.prol, %scalar.ph.prol ]
  %i.yj = icmp eq i64 %indvars.iv.i213.ph, %i.xd
  br i1 %i.yj, label %._crit_edge.i217, label %scalar.ph

._crit_edge.i217:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next28.i218 = add nuw nsw i64 %indvars.iv27.i210, 1 ; 2 uses
  %exitcond36.not.i219 = icmp eq i64 %indvars.iv.next28.i218, %wide.trip.count35.i207
  br i1 %exitcond36.not.i219, label %rotate90_l8.exit, label %.lr.ph.i209, !llvm.loop !119

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv29.i212 = phi i64 [ %indvars.iv.next30.i214.1, %scalar.ph ], [ %indvars.iv29.i212.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv.i213 = phi i64 [ %indvars.iv.next.i215.1, %scalar.ph ], [ %indvars.iv.i213.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.yk = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv29.i212
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !12
  %i.ym = trunc i64 %indvars.iv.i213 to i32
  %i.yn = xor i32 %i.ym, -1
  %i.yo = add i32 %i.xk, %i.yn
  %i.yp = sext i32 %i.yo to i64
  %i.yq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.yp
  store i32 %i.yl, ptr %i.yq, align 4, !tbaa !12
  %indvars.iv.next30.i214 = add nsw i64 %indvars.iv29.i212, %i.ws ; 2 uses
  %i.yr = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next30.i214
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !12
  %i.yt = trunc i64 %indvars.iv.i213 to i32
  %reass.sub = sub i32 %i.xk, %i.yt
  %i.yu = add i32 %reass.sub, -2
  %i.yv = sext i32 %i.yu to i64
  %i.yw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.yv
  store i32 %i.ys, ptr %i.yw, align 4, !tbaa !12
  %indvars.iv.next30.i214.1 = add nsw i64 %indvars.iv.next30.i214, %i.ws
  %indvars.iv.next.i215.1 = add nuw nsw i64 %indvars.iv.i213, 2 ; 2 uses
  %exitcond.not.i216.1 = icmp eq i64 %indvars.iv.next.i215.1, %wide.trip.count.i208
  br i1 %exitcond.not.i216.1, label %._crit_edge.i217, label %scalar.ph, !llvm.loop !120

rotate90_l8.exit:                                 ; preds = %._crit_edge.i217, %._crit_edge.i202, %._crit_edge.i186, %._crit_edge.i172, %._crit_edge.i158, %._crit_edge.i145, %._crit_edge.i134, %._crit_edge.i124, %._crit_edge.i112, %._crit_edge.i97, %._crit_edge.i87, %._crit_edge.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.l, %bb.g, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10}
!10 = distinct !{!10, !11}
!11 = distinct !{!11, !"LVerDomain"}
!12 = !{!5, !5, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !16, !17, !18}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !16, !17}
!20 = distinct !{!20, !16}
!21 = !{!22, !22, i64 0}
!22 = !{!"short", !6, i64 0}
!23 = distinct !{!23, !16, !17, !18}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16, !18, !17}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16, !17, !18}
!28 = distinct !{!28, !16, !18, !17}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = !{!32}
!32 = distinct !{!32, !33}
!33 = distinct !{!33, !"LVerDomain"}
!34 = !{!35}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !16, !17, !18}
!37 = !{!"branch_weights", i32 8, i32 24}
!38 = distinct !{!38, !16, !17, !18}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16, !17}
!43 = !{!44}
!44 = distinct !{!44, !45}
!45 = distinct !{!45, !"LVerDomain"}
!46 = !{!47}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !16, !17, !18}
!49 = !{!"branch_weights", i32 4, i32 12}
!50 = distinct !{!50, !16, !17, !18}
!51 = distinct !{!51, !40}
!52 = distinct !{!52, !16}
!53 = distinct !{!53, !16, !17}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !16}
!56 = !{!57}
!57 = distinct !{!57, !58}
!58 = distinct !{!58, !"LVerDomain"}
!59 = !{!60}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !16, !17, !18}
!62 = distinct !{!62, !40}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !16, !17}
!65 = !{!66}
!66 = distinct !{!66, !67}
!67 = distinct !{!67, !"LVerDomain"}
!68 = !{!69}
!69 = distinct !{!69, !67}
!70 = distinct !{!70, !16, !17, !18}
!71 = distinct !{!71, !16, !17, !18}
!72 = distinct !{!72, !16}
!73 = distinct !{!73, !16, !17}
!74 = !{!75}
!75 = distinct !{!75, !76}
!76 = distinct !{!76, !"LVerDomain"}
!77 = !{!78}
!78 = distinct !{!78, !76}
!79 = distinct !{!79, !16, !17, !18}
!80 = distinct !{!80, !16, !17, !18}
!81 = distinct !{!81, !16}
!82 = distinct !{!82, !16, !17}
!83 = distinct !{!83, !16}
!84 = distinct !{!84, !16}
!85 = !{!86}
!86 = distinct !{!86, !87}
!87 = distinct !{!87, !"LVerDomain"}
!88 = !{!89}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !16, !17, !18}
!91 = distinct !{!91, !16}
!92 = distinct !{!92, !16, !17}
!93 = !{!94}
!94 = distinct !{!94, !95}
!95 = distinct !{!95, !"LVerDomain"}
!96 = !{!97}
!97 = distinct !{!97, !95}
!98 = distinct !{!98, !16, !17, !18}
!99 = distinct !{!99, !16, !17, !18}
!100 = distinct !{!100, !16}
!101 = distinct !{!101, !16, !17}
!102 = !{!103}
!103 = distinct !{!103, !104}
!104 = distinct !{!104, !"LVerDomain"}
!105 = !{!106}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !16, !17, !18}
!108 = distinct !{!108, !16, !17, !18}
!109 = distinct !{!109, !16}
!110 = distinct !{!110, !16, !17}
!111 = distinct !{!111, !16}
!112 = distinct !{!112, !16}
!113 = !{!114}
!114 = distinct !{!114, !115}
!115 = distinct !{!115, !"LVerDomain"}
!116 = !{!117}
!117 = distinct !{!117, !115}
!118 = distinct !{!118, !16, !17, !18}
!119 = distinct !{!119, !16}
!120 = distinct !{!120, !16, !17}
end_hunk_0
