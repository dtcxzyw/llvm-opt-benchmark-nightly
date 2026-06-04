begin_hunk_0_@finish_output_bmp:bb.a
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50
  %.not35 = icmp eq i32 %i.h, 0
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @write_os2_header(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @write_bmp_header(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !60   ; 3 uses
  %.not3640 = icmp eq i32 %i.j, 0
  %.not37 = icmp eq ptr %i.d, null                ; 2 uses
  br i1 %.not3640, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  br i1 %.not37, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.041.us = phi i32 [ %i.t, %.lr.ph.split.us ], [ %i.j, %.lr.ph ]
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.t = add i32 %.041.us, -1                     ; 3 uses
  %i.u = tail call ptr %i.r(ptr noundef nonnull %0, ptr noundef %i.s, i32 noundef %i.t, i32 noundef 1, i32 noundef 0) #6
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !74
  %i.w = load i32, ptr %i.o, align 4, !tbaa !56
  %i.x = zext i32 %i.w to i64
  %i.y = tail call i64 @fwrite(ptr noundef %i.v, i64 noundef 1, i64 noundef %i.x, ptr noundef %i.b) ; 0 uses
  %.not36.us = icmp eq i32 %i.t, 0
  br i1 %.not36.us, label %._crit_edge.thread, label %.lr.ph.split.us, !llvm.loop !75

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.041 = phi i32 [ %i.ai, %.lr.ph.split ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.z = load i32, ptr %i.i, align 4, !tbaa !60   ; 2 uses
  %i.aa = sub i32 %i.z, %.041
  %i.ab = zext i32 %i.aa to i64
  store i64 %i.ab, ptr %i.k, align 8, !tbaa !77
  %i.ac = zext i32 %i.z to i64
  store i64 %i.ac, ptr %i.l, align 8, !tbaa !78
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !79
  tail call void %i.ad(ptr noundef nonnull %0) #6
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !73
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.ai = add i32 %.041, -1                       ; 3 uses
  %i.aj = tail call ptr %i.ag(ptr noundef nonnull %0, ptr noundef %i.ah, i32 noundef %i.ai, i32 noundef 1, i32 noundef 0) #6
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !74
  %i.al = load i32, ptr %i.o, align 4, !tbaa !56
  %i.am = zext i32 %i.al to i64
  %i.an = tail call i64 @fwrite(ptr noundef %i.ak, i64 noundef 1, i64 noundef %i.am, ptr noundef %i.b) ; 0 uses
  %.not36 = icmp eq i32 %i.ai, 0
  br i1 %.not36, label %._crit_edge.thread45, label %.lr.ph.split, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.e
  br i1 %.not37, label %._crit_edge.thread, label %._crit_edge.thread45

._crit_edge.thread45:                             ; preds = %.lr.ph.split, %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !80
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !80
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph.split.us, %._crit_edge, %._crit_edge.thread45, %bb.a
  %i.ar = tail call i32 @fflush(ptr noundef %i.b) ; 0 uses
  %i.as = tail call i32 @ferror(ptr noundef %i.b) #6
  %.not38 = icmp eq i32 %i.as, 0
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread
  %i.at = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i32 38, ptr %i.au, align 8, !tbaa !34
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !38
  tail call void %i.av(ptr noundef nonnull %0) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.thread
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_gray_rows(ptr noundef %0, ptr noundef captures(none) %1, i32 %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !62
  %i.k = tail call ptr %i.f(ptr noundef %0, ptr noundef %i.h, i32 noundef %i.j, i32 noundef 1, i32 noundef 1) #6
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.i, align 4, !tbaa !62
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.021.in = phi ptr [ %i.k, %bb.b ], [ %i.n, %bb.c ]
  %.021 = load ptr, ptr %.021.in, align 8, !tbaa !74 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !74
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !54
  %i.t = zext i32 %i.s to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.021, ptr align 1 %i.q, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !58   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.x = load i32, ptr %i.r, align 8, !tbaa !54
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr i8, ptr %.021, i64 %i.y
  %i.aa = zext nneg i32 %i.v to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.z, i8 0, i64 %i.aa, i1 false), !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.d
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !68
  %.not23 = icmp eq i32 %i.ab, 0
  br i1 %.not23, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !56
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !72
  %i.aj = tail call i64 @fwrite(ptr noundef %i.ad, i64 noundef 1, i64 noundef %i.ag, ptr noundef %i.ai) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_pixel_rows(ptr noundef %0, ptr noundef captures(none) %1, i32 %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !62
  %i.k = tail call ptr %i.f(ptr noundef %0, ptr noundef %i.h, i32 noundef %i.j, i32 noundef 1, i32 noundef 1) #6
  %i.l = load i32, ptr %i.i, align 4, !tbaa !62
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.i, align 4, !tbaa !62
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.078.in = phi ptr [ %i.k, %bb.b ], [ %i.n, %bb.c ]
  %.078 = load ptr, ptr %.078.in, align 8, !tbaa !74 ; 21 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !74   ; 24 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !51   ; 2 uses
  switch i32 %i.s, label %bb.h [
    i32 8, label %bb.e
    i32 16, label %bb.f
    i32 4, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.u = load i32, ptr %i.t, align 4, !tbaa !56
  %i.v = zext i32 %i.u to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078, ptr align 1 %i.q, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load i32, ptr %i.w, align 8, !tbaa !54
  %i.y = mul i32 %i.x, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.078, i64 %i.z
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !54 ; 5 uses
  %.not8997 = icmp eq i32 %i.ac, 0
  br i1 %.not8997, label %.loopexit, label %.lr.ph101.preheader

.lr.ph101.preheader:                              ; preds = %bb.f
  %xtraiter = and i32 %i.ac, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph101.prol.loopexit, label %.lr.ph101.prol

.lr.ph101.prol:                                   ; preds = %.lr.ph101.preheader
  %i.ad = load i16, ptr %i.q, align 2, !tbaa !81
  %i.ae = trunc i16 %i.ad to i8
  %i.af = shl i8 %i.ae, 3
  store i8 %i.af, ptr %.078, align 1, !tbaa !37
  %i.ag = load i16, ptr %i.q, align 2, !tbaa !81
  %i.ah = lshr i16 %i.ag, 3
  %i.ai = trunc i16 %i.ah to i8
  %i.aj = and i8 %i.ai, -4
  %i.ak = getelementptr inbounds nuw i8, ptr %.078, i64 1
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !37
  %i.al = load i16, ptr %i.q, align 2, !tbaa !81
  %i.am = lshr i16 %i.al, 8
  %i.an = trunc nuw i16 %i.am to i8
  %i.ao = and i8 %i.an, -8
  %i.ap = getelementptr inbounds nuw i8, ptr %.078, i64 2
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %.078, i64 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.as = add nsw i32 %i.ac, -1
  br label %.lr.ph101.prol.loopexit

.lr.ph101.prol.loopexit:                          ; preds = %.lr.ph101.prol, %.lr.ph101.preheader
  %.lcssa133.unr = phi ptr [ poison, %.lr.ph101.preheader ], [ %i.aq, %.lr.ph101.prol ]
  %.179100.unr = phi ptr [ %.078, %.lr.ph101.preheader ], [ %i.aq, %.lr.ph101.prol ]
  %.08099.unr = phi i32 [ %i.ac, %.lr.ph101.preheader ], [ %i.as, %.lr.ph101.prol ]
  %.08498.unr = phi ptr [ %i.q, %.lr.ph101.preheader ], [ %i.ar, %.lr.ph101.prol ]
  %i.at = icmp eq i32 %i.ac, 1
  br i1 %i.at, label %.loopexit, label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101.prol.loopexit, %.lr.ph101
  %.179100 = phi ptr [ %i.bw, %.lr.ph101 ], [ %.179100.unr, %.lr.ph101.prol.loopexit ] ; 7 uses
  %.08099 = phi i32 [ %i.by, %.lr.ph101 ], [ %.08099.unr, %.lr.ph101.prol.loopexit ]
  %.08498 = phi ptr [ %i.bx, %.lr.ph101 ], [ %.08498.unr, %.lr.ph101.prol.loopexit ] ; 5 uses
  %i.au = load i16, ptr %.08498, align 2, !tbaa !81
  %i.av = trunc i16 %i.au to i8
  %i.aw = shl i8 %i.av, 3
  store i8 %i.aw, ptr %.179100, align 1, !tbaa !37
  %i.ax = load i16, ptr %.08498, align 2, !tbaa !81
  %i.ay = lshr i16 %i.ax, 3
  %i.az = trunc i16 %i.ay to i8
  %i.ba = and i8 %i.az, -4
  %i.bb = getelementptr inbounds nuw i8, ptr %.179100, i64 1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !37
  %i.bc = load i16, ptr %.08498, align 2, !tbaa !81
  %i.bd = lshr i16 %i.bc, 8
  %i.be = trunc nuw i16 %i.bd to i8
  %i.bf = and i8 %i.be, -8
  %i.bg = getelementptr inbounds nuw i8, ptr %.179100, i64 2
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %.179100, i64 3
  %i.bi = getelementptr inbounds nuw i8, ptr %.08498, i64 2 ; 3 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !81
  %i.bk = trunc i16 %i.bj to i8
  %i.bl = shl i8 %i.bk, 3
  store i8 %i.bl, ptr %i.bh, align 1, !tbaa !37
  %i.bm = load i16, ptr %i.bi, align 2, !tbaa !81
  %i.bn = lshr i16 %i.bm, 3
  %i.bo = trunc i16 %i.bn to i8
  %i.bp = and i8 %i.bo, -4
  %i.bq = getelementptr inbounds nuw i8, ptr %.179100, i64 4
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !37
  %i.br = load i16, ptr %i.bi, align 2, !tbaa !81
  %i.bs = lshr i16 %i.br, 8
  %i.bt = trunc nuw i16 %i.bs to i8
  %i.bu = and i8 %i.bt, -8
  %i.bv = getelementptr inbounds nuw i8, ptr %.179100, i64 5
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %.179100, i64 6 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.08498, i64 4
  %i.by = add i32 %.08099, -2                     ; 2 uses
  %.not89.1 = icmp eq i32 %i.by, 0
  br i1 %.not89.1, label %.loopexit, label %.lr.ph101, !llvm.loop !82

bb.g:                                             ; preds = %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !54 ; 7 uses
  %.not8893 = icmp eq i32 %i.ca, 0
  br i1 %.not8893, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.ca, 8
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.cc = add i32 %i.ca, -1
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = mul nuw nsw i64 %i.cd, 3
  %i.cf = getelementptr i8, ptr %.078, i64 %i.ce
  %scevgep = getelementptr i8, ptr %i.cf, i64 3
  %i.cg = shl nuw nsw i64 %i.cd, 2
  %i.ch = getelementptr i8, ptr %i.q, i64 %i.cg
  %scevgep127 = getelementptr i8, ptr %i.ch, i64 4
  %bound0 = icmp ult ptr %.078, %scevgep127
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cb, 4294967288              ; 5 uses
  %i.ci = shl nuw nsw i64 %n.vec, 2
  %i.cj = getelementptr i8, ptr %i.q, i64 %i.ci
  %i.ck = mul nuw nsw i64 %n.vec, 3
  %i.cl = getelementptr i8, ptr %.078, i64 %i.ck  ; 2 uses
  %i.cm = trunc nuw i64 %n.vec to i32
  %i.cn = sub i32 %i.ca, %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.co = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.co ; 4 uses
  %3 = getelementptr i8, ptr %i.q, i64 %i.co      ; 4 uses
  %next.gep128 = getelementptr i8, ptr %3, i64 4
  %4 = getelementptr i8, ptr %i.q, i64 %i.co      ; 4 uses
  %next.gep129 = getelementptr i8, ptr %4, i64 8
  %5 = getelementptr i8, ptr %i.q, i64 %i.co      ; 4 uses
  %next.gep130 = getelementptr i8, ptr %5, i64 12
  %6 = getelementptr i8, ptr %i.q, i64 %i.co      ; 4 uses
  %next.gep131 = getelementptr i8, ptr %6, i64 16
  %7 = getelementptr i8, ptr %i.q, i64 %i.co      ; 4 uses
  %next.gep132 = getelementptr i8, ptr %7, i64 20
  %8 = getelementptr i8, ptr %i.q, i64 %i.co      ; 4 uses
  %next.gep.a = getelementptr i8, ptr %8, i64 24
  %i.cp = getelementptr i8, ptr %i.q, i64 %i.co   ; 4 uses
  %next.gep128.a = getelementptr i8, ptr %i.cp, i64 28
  %i.cq = mul i64 %index, 3
  %next.gep135 = getelementptr i8, ptr %.078, i64 %i.cq
  %9 = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %10 = getelementptr i8, ptr %3, i64 5
  %11 = getelementptr i8, ptr %4, i64 9
  %12 = getelementptr i8, ptr %5, i64 13
  %13 = getelementptr i8, ptr %6, i64 17
  %next.gep129.a = getelementptr i8, ptr %7, i64 21
  %i.cr = getelementptr i8, ptr %8, i64 25
  %i.cs = getelementptr i8, ptr %i.cp, i64 29
  %14 = load i8, ptr %next.gep, align 1, !tbaa !37, !alias.scope !83
  %15 = load i8, ptr %next.gep128, align 1, !tbaa !37, !alias.scope !83
  %16 = load i8, ptr %next.gep129, align 1, !tbaa !37, !alias.scope !83
  %17 = load i8, ptr %next.gep130, align 1, !tbaa !37, !alias.scope !83
  %18 = load i8, ptr %next.gep131, align 1, !tbaa !37, !alias.scope !83
  %19 = load i8, ptr %next.gep132, align 1, !tbaa !37, !alias.scope !83
  %i.ct = load i8, ptr %next.gep.a, align 1, !tbaa !37, !alias.scope !83
  %i.cu = load i8, ptr %next.gep128.a, align 1, !tbaa !37, !alias.scope !83
  %20 = insertelement <8 x i8> poison, i8 %14, i64 0
  %21 = insertelement <8 x i8> %20, i8 %15, i64 1
  %22 = insertelement <8 x i8> %21, i8 %16, i64 2
  %23 = insertelement <8 x i8> %22, i8 %17, i64 3
  %24 = insertelement <8 x i8> %23, i8 %18, i64 4
  %25 = insertelement <8 x i8> %24, i8 %19, i64 5
  %26 = insertelement <8 x i8> %25, i8 %i.ct, i64 6
  %27 = insertelement <8 x i8> %26, i8 %i.cu, i64 7
  %28 = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %29 = getelementptr i8, ptr %3, i64 6
  %30 = getelementptr i8, ptr %4, i64 10
  %31 = getelementptr i8, ptr %5, i64 14
  %32 = getelementptr i8, ptr %6, i64 18
  %33 = getelementptr i8, ptr %7, i64 22
  %i.cv = getelementptr i8, ptr %8, i64 26
  %i.cw = getelementptr i8, ptr %i.cp, i64 30
  %34 = load i8, ptr %9, align 1, !tbaa !37, !alias.scope !83
  %35 = load i8, ptr %10, align 1, !tbaa !37, !alias.scope !83
  %36 = load i8, ptr %11, align 1, !tbaa !37, !alias.scope !83
  %37 = load i8, ptr %12, align 1, !tbaa !37, !alias.scope !83
  %38 = load i8, ptr %13, align 1, !tbaa !37, !alias.scope !83
  %39 = load i8, ptr %next.gep129.a, align 1, !tbaa !37, !alias.scope !83
  %i.cx = load i8, ptr %i.cr, align 1, !tbaa !37, !alias.scope !83
  %i.cy = load i8, ptr %i.cs, align 1, !tbaa !37, !alias.scope !83
  %40 = insertelement <8 x i8> poison, i8 %34, i64 0
  %41 = insertelement <8 x i8> %40, i8 %35, i64 1
  %42 = insertelement <8 x i8> %41, i8 %36, i64 2
  %43 = insertelement <8 x i8> %42, i8 %37, i64 3
  %44 = insertelement <8 x i8> %43, i8 %38, i64 4
  %45 = insertelement <8 x i8> %44, i8 %39, i64 5
  %46 = insertelement <8 x i8> %45, i8 %i.cx, i64 6
  %47 = insertelement <8 x i8> %46, i8 %i.cy, i64 7
  %48 = getelementptr inbounds nuw i8, ptr %next.gep, i64 3
  %49 = getelementptr i8, ptr %3, i64 7
  %50 = getelementptr i8, ptr %4, i64 11
  %51 = getelementptr i8, ptr %5, i64 15
  %52 = getelementptr i8, ptr %6, i64 19
  %53 = getelementptr i8, ptr %7, i64 23
  %i.cz = getelementptr i8, ptr %8, i64 27
  %i.da = getelementptr i8, ptr %i.cp, i64 31
  %54 = load i8, ptr %28, align 1, !tbaa !37, !alias.scope !83
  %55 = load i8, ptr %29, align 1, !tbaa !37, !alias.scope !83
  %56 = load i8, ptr %30, align 1, !tbaa !37, !alias.scope !83
  %57 = load i8, ptr %31, align 1, !tbaa !37, !alias.scope !83
  %58 = load i8, ptr %32, align 1, !tbaa !37, !alias.scope !83
  %59 = load i8, ptr %33, align 1, !tbaa !37, !alias.scope !83
  %60 = load i8, ptr %i.cv, align 1, !tbaa !37, !alias.scope !83
  %61 = load i8, ptr %i.cw, align 1, !tbaa !37, !alias.scope !83
  %62 = insertelement <8 x i8> poison, i8 %54, i64 0
  %63 = insertelement <8 x i8> %62, i8 %55, i64 1
  %64 = insertelement <8 x i8> %63, i8 %56, i64 2
  %65 = insertelement <8 x i8> %64, i8 %57, i64 3
  %66 = insertelement <8 x i8> %65, i8 %58, i64 4
  %67 = insertelement <8 x i8> %66, i8 %59, i64 5
  %68 = insertelement <8 x i8> %67, i8 %60, i64 6
  %69 = insertelement <8 x i8> %68, i8 %61, i64 7
  %70 = load i8, ptr %48, align 1, !tbaa !37, !alias.scope !83
  %71 = load i8, ptr %49, align 1, !tbaa !37, !alias.scope !83
  %i.db = load i8, ptr %50, align 1, !tbaa !37, !alias.scope !83
  %i.dc = load i8, ptr %51, align 1, !tbaa !37, !alias.scope !83
  %72 = load i8, ptr %52, align 1, !tbaa !37, !alias.scope !83
  %73 = load i8, ptr %53, align 1, !tbaa !37, !alias.scope !83
  %i.dd = load i8, ptr %i.cz, align 1, !tbaa !37, !alias.scope !83
  %i.de = load i8, ptr %i.da, align 1, !tbaa !37, !alias.scope !83
  %74 = insertelement <8 x i8> poison, i8 %70, i64 0
  %75 = insertelement <8 x i8> %74, i8 %71, i64 1
  %76 = insertelement <8 x i8> %75, i8 %i.db, i64 2
  %77 = insertelement <8 x i8> %76, i8 %i.dc, i64 3
  %78 = insertelement <8 x i8> %77, i8 %72, i64 4
  %79 = insertelement <8 x i8> %78, i8 %73, i64 5
  %80 = insertelement <8 x i8> %79, i8 %i.dd, i64 6
  %81 = insertelement <8 x i8> %80, i8 %i.de, i64 7
  %82 = uitofp <8 x i8> %27 to <8 x double>
  %83 = uitofp <8 x i8> %81 to <8 x double>       ; 3 uses
  %84 = fmul nnan <8 x double> %82, %83
  %85 = fdiv <8 x double> %84, splat (double 2.550000e+02)
  %86 = fadd <8 x double> %85, splat (double 5.000000e-01)
  %87 = fptoui <8 x double> %86 to <8 x i8>
  %88 = uitofp <8 x i8> %47 to <8 x double>
  %89 = fmul nnan <8 x double> %88, %83
  %90 = uitofp <8 x i8> %69 to <8 x double>
  %91 = fmul nnan <8 x double> %90, %83
  %92 = shufflevector <8 x double> %91, <8 x double> %89, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %93 = fdiv <16 x double> %92, splat (double 2.550000e+02)
  %94 = fadd <16 x double> %93, splat (double 5.000000e-01)
  %95 = fptoui <16 x double> %94 to <16 x i8>
  %96 = shufflevector <8 x i8> %87, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i8> %95, <16 x i8> %96, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i8> %interleaved.vec, ptr %next.gep135, align 1, !tbaa !37, !alias.scope !86, !noalias !83
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cb
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.096.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.preheader ], [ %i.cj, %middle.block ]
  %.295.ph = phi ptr [ %.078, %vector.memcheck ], [ %.078, %.lr.ph.preheader ], [ %i.cl, %middle.block ]
  %.18194.ph = phi i32 [ %i.ca, %vector.memcheck ], [ %i.ca, %.lr.ph.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.096 = phi ptr [ %i.dm, %.lr.ph ], [ %.096.ph, %.lr.ph.preheader134 ] ; 5 uses
  %.295 = phi ptr [ %i.eg, %.lr.ph ], [ %.295.ph, %.lr.ph.preheader134 ] ; 4 uses
  %.18194 = phi i32 [ %i.eh, %.lr.ph ], [ %.18194.ph, %.lr.ph.preheader134 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.096, i64 1
  %i.dh = load i8, ptr %.096, align 1, !tbaa !37
  %i.di = getelementptr inbounds nuw i8, ptr %.096, i64 2
  %i.dj = load i8, ptr %i.dg, align 1, !tbaa !37
  %i.dk = getelementptr inbounds nuw i8, ptr %.096, i64 3
  %i.dl = load i8, ptr %i.di, align 1, !tbaa !37
  %i.dm = getelementptr inbounds nuw i8, ptr %.096, i64 4
  %i.dn = load i8, ptr %i.dk, align 1, !tbaa !37
  %i.do = getelementptr inbounds nuw i8, ptr %.295, i64 2
  %i.dp = getelementptr inbounds nuw i8, ptr %.295, i64 1
  %i.dq = uitofp i8 %i.dh to double
  %i.dr = uitofp i8 %i.dn to double               ; 3 uses
  %i.ds = fmul nnan double %i.dq, %i.dr
  %i.dt = fdiv double %i.ds, 2.550000e+02
  %i.du = fadd double %i.dt, 5.000000e-01
  %i.dv = fptoui double %i.du to i8
  store i8 %i.dv, ptr %i.do, align 1, !tbaa !37
  %i.dw = uitofp i8 %i.dj to double
  %i.dx = fmul nnan double %i.dw, %i.dr
  %i.dy = fdiv double %i.dx, 2.550000e+02
  %i.dz = fadd double %i.dy, 5.000000e-01
  %i.ea = fptoui double %i.dz to i8
  store i8 %i.ea, ptr %i.dp, align 1, !tbaa !37
  %i.eb = uitofp i8 %i.dl to double
  %i.ec = fmul nnan double %i.eb, %i.dr
  %i.ed = fdiv double %i.ec, 2.550000e+02
  %i.ee = fadd double %i.ed, 5.000000e-01
  %i.ef = fptoui double %i.ee to i8
  store i8 %i.ef, ptr %.295, align 1, !tbaa !37
  %i.eg = getelementptr inbounds nuw i8, ptr %.295, i64 3 ; 2 uses
  %i.eh = add i32 %.18194, -1                     ; 2 uses
  %.not88 = icmp eq i32 %i.eh, 0
  br i1 %.not88, label %.loopexit, label %.lr.ph, !llvm.loop !91

bb.h:                                             ; preds = %bb.d
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !54 ; 5 uses
  %.not87103 = icmp eq i32 %i.ej, 0
  br i1 %.not87103, label %.loopexit, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.h
  %i.ek = zext i32 %i.s to i64                    ; 4 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr @rgb_pixelsize, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !4
  %i.en = getelementptr inbounds nuw [4 x i8], ptr @rgb_blue, i64 %i.ek
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !4
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @rgb_green, i64 %i.ek
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !4
  %i.er = getelementptr inbounds nuw [4 x i8], ptr @rgb_red, i64 %i.ek
  %i.es = load i32, ptr %i.er, align 4, !tbaa !4
  %i.et = sext i32 %i.eo to i64                   ; 3 uses
  %i.eu = sext i32 %i.eq to i64                   ; 3 uses
  %i.ev = sext i32 %i.es to i64                   ; 3 uses
  %i.ew = sext i32 %i.em to i64                   ; 3 uses
  %xtraiter137 = and i32 %i.ej, 1
  %lcmp.mod138.not = icmp eq i32 %xtraiter137, 0
  br i1 %lcmp.mod138.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph107
  %i.ex = getelementptr inbounds i8, ptr %i.q, i64 %i.et
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !37
  store i8 %i.ey, ptr %.078, align 1, !tbaa !37
  %i.ez = getelementptr inbounds i8, ptr %i.q, i64 %i.eu
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !37
  %i.fb = getelementptr inbounds nuw i8, ptr %.078, i64 1
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !37
  %i.fc = getelementptr inbounds i8, ptr %i.q, i64 %i.ev
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !37
  %i.fe = getelementptr inbounds nuw i8, ptr %.078, i64 2
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !37
  %i.ff = getelementptr inbounds nuw i8, ptr %.078, i64 3 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.q, i64 %i.ew
  %i.fh = add nsw i32 %i.ej, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph107
  %.lcssa.unr = phi ptr [ poison, %.lr.ph107 ], [ %i.ff, %.prol.loopexit.unr-lcssa ]
  %.1106.unr = phi ptr [ %i.q, %.lr.ph107 ], [ %i.fg, %.prol.loopexit.unr-lcssa ]
  %.3105.unr = phi ptr [ %.078, %.lr.ph107 ], [ %i.ff, %.prol.loopexit.unr-lcssa ]
  %.282104.unr = phi i32 [ %i.ej, %.lr.ph107 ], [ %i.fh, %.prol.loopexit.unr-lcssa ]
  %i.fi = icmp eq i32 %i.ej, 1
  br i1 %i.fi, label %.loopexit, label %.lr.ph107.new

.lr.ph107.new:                                    ; preds = %.prol.loopexit, %.lr.ph107.new
  %.1106 = phi ptr [ %i.gc, %.lr.ph107.new ], [ %.1106.unr, %.prol.loopexit ] ; 4 uses
  %.3105 = phi ptr [ %i.gb, %.lr.ph107.new ], [ %.3105.unr, %.prol.loopexit ] ; 7 uses
  %.282104 = phi i32 [ %i.gd, %.lr.ph107.new ], [ %.282104.unr, %.prol.loopexit ]
  %i.fj = getelementptr inbounds i8, ptr %.1106, i64 %i.et
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !37
  store i8 %i.fk, ptr %.3105, align 1, !tbaa !37
  %i.fl = getelementptr inbounds i8, ptr %.1106, i64 %i.eu
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !37
  %i.fn = getelementptr inbounds nuw i8, ptr %.3105, i64 1
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !37
  %i.fo = getelementptr inbounds i8, ptr %.1106, i64 %i.ev
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !37
  %i.fq = getelementptr inbounds nuw i8, ptr %.3105, i64 2
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !37
  %i.fr = getelementptr inbounds nuw i8, ptr %.3105, i64 3
  %i.fs = getelementptr inbounds i8, ptr %.1106, i64 %i.ew ; 4 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %i.et
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !37
  store i8 %i.fu, ptr %i.fr, align 1, !tbaa !37
  %i.fv = getelementptr inbounds i8, ptr %i.fs, i64 %i.eu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !37
  %i.fx = getelementptr inbounds nuw i8, ptr %.3105, i64 4
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !37
  %i.fy = getelementptr inbounds i8, ptr %i.fs, i64 %i.ev
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !37
  %i.ga = getelementptr inbounds nuw i8, ptr %.3105, i64 5
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !37
  %i.gb = getelementptr inbounds nuw i8, ptr %.3105, i64 6 ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %i.fs, i64 %i.ew
  %i.gd = add i32 %.282104, -2                    ; 2 uses
  %.not87.1 = icmp eq i32 %i.gd, 0
  br i1 %.not87.1, label %.loopexit, label %.lr.ph107.new, !llvm.loop !92

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph101.prol.loopexit, %.lr.ph101, %.prol.loopexit, %.lr.ph107.new, %middle.block, %bb.g, %bb.f, %bb.h, %bb.e
  %.4 = phi ptr [ %i.aa, %bb.e ], [ %i.bw, %.lr.ph101 ], [ %i.gb, %.lr.ph107.new ], [ %.078, %bb.h ], [ %.078, %bb.f ], [ %.078, %bb.g ], [ %i.cl, %middle.block ], [ %.lcssa.unr, %.prol.loopexit ], [ %.lcssa133.unr, %.lr.ph101.prol.loopexit ], [ %i.eg, %.lr.ph ]
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !58 ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, 0
  br i1 %i.gg, label %.lr.ph111.preheader, label %._crit_edge

.lr.ph111.preheader:                              ; preds = %.loopexit
  %i.gh = zext nneg i32 %i.gf to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.4, i8 0, i64 %i.gh, i1 false), !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph111.preheader, %.loopexit
  %i.gi = load i32, ptr %i.a, align 8, !tbaa !68
  %.not90 = icmp eq i32 %i.gi, 0
  br i1 %.not90, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !67
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !56
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !72
  %i.gq = tail call i64 @fwrite(ptr noundef %i.gk, i64 noundef 1, i64 noundef %i.gn, ptr noundef %i.gp) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  ret void
}

declare void @jpeg_calc_output_dimensions(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @write_os2_header(ptr noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [14 x i8], align 1                ; 11 uses
  %i.b = alloca [12 x i8], align 1                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51   ; 3 uses
  %i.e = icmp eq i32 %i.d, 2
  %i.f = add i32 %i.d, -6
  %or.cond = icmp ult i32 %i.f, 10
  %or.cond42 = or i1 %i.e, %or.cond
  br i1 %or.cond42, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !53
  %.not = icmp ne i32 %i.h, 0                     ; 3 uses
  %. = select i1 %.not, i8 8, i8 24
  %.41 = select i1 %.not, i32 256, i32 0
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  switch i32 %i.d, label %bb.d [
    i32 16, label %bb.e
    i32 4, label %bb.e
  ]

end_hunk_0
