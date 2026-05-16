begin_hunk_0_@finish_output_bmp:bb.a
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
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !74   ; 18 uses
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
  %3 = load i16, ptr %i.q, align 2, !tbaa !81
  %4 = lshr i16 %3, 8
  %5 = trunc nuw i16 %4 to i8
  %i.al = and i8 %5, -8
  %i.am = getelementptr inbounds nuw i8, ptr %.078, i64 2
  store i8 %i.al, ptr %i.am, align 1, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %.078, i64 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.ap = add nsw i32 %i.ac, -1
  br label %.lr.ph101.prol.loopexit

.lr.ph101.prol.loopexit:                          ; preds = %.lr.ph101.prol, %.lr.ph101.preheader
  %.lcssa133.unr = phi ptr [ poison, %.lr.ph101.preheader ], [ %i.an, %.lr.ph101.prol ]
  %.179100.unr = phi ptr [ %.078, %.lr.ph101.preheader ], [ %i.an, %.lr.ph101.prol ]
  %.08099.unr = phi i32 [ %i.ac, %.lr.ph101.preheader ], [ %i.ap, %.lr.ph101.prol ]
  %.08498.unr = phi ptr [ %i.q, %.lr.ph101.preheader ], [ %i.ao, %.lr.ph101.prol ]
  %i.aq = icmp eq i32 %i.ac, 1
  br i1 %i.aq, label %.loopexit, label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101.prol.loopexit, %.lr.ph101
  %.179100 = phi ptr [ %i.bn, %.lr.ph101 ], [ %.179100.unr, %.lr.ph101.prol.loopexit ] ; 7 uses
  %.08099 = phi i32 [ %i.bp, %.lr.ph101 ], [ %.08099.unr, %.lr.ph101.prol.loopexit ]
  %.08498 = phi ptr [ %i.bo, %.lr.ph101 ], [ %.08498.unr, %.lr.ph101.prol.loopexit ] ; 5 uses
  %i.ar = load i16, ptr %.08498, align 2, !tbaa !81
  %i.as = trunc i16 %i.ar to i8
  %i.at = shl i8 %i.as, 3
  store i8 %i.at, ptr %.179100, align 1, !tbaa !37
  %i.au = load i16, ptr %.08498, align 2, !tbaa !81
  %i.av = lshr i16 %i.au, 3
  %i.aw = trunc i16 %i.av to i8
  %i.ax = and i8 %i.aw, -4
  %i.ay = getelementptr inbounds nuw i8, ptr %.179100, i64 1
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !37
  %6 = load i16, ptr %.08498, align 2, !tbaa !81
  %7 = lshr i16 %6, 8
  %8 = trunc nuw i16 %7 to i8
  %i.az = and i8 %8, -8
  %i.ba = getelementptr inbounds nuw i8, ptr %.179100, i64 2
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %.179100, i64 3
  %i.bc = getelementptr inbounds nuw i8, ptr %.08498, i64 2 ; 3 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !81
  %i.be = trunc i16 %i.bd to i8
  %i.bf = shl i8 %i.be, 3
  store i8 %i.bf, ptr %i.bb, align 1, !tbaa !37
  %i.bg = load i16, ptr %i.bc, align 2, !tbaa !81
  %i.bh = lshr i16 %i.bg, 3
  %i.bi = trunc i16 %i.bh to i8
  %i.bj = and i8 %i.bi, -4
  %i.bk = getelementptr inbounds nuw i8, ptr %.179100, i64 4
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !37
  %9 = load i16, ptr %i.bc, align 2, !tbaa !81
  %10 = lshr i16 %9, 8
  %11 = trunc nuw i16 %10 to i8
  %i.bl = and i8 %11, -8
  %i.bm = getelementptr inbounds nuw i8, ptr %.179100, i64 5
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !37
  %i.bn = getelementptr inbounds nuw i8, ptr %.179100, i64 6 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08498, i64 4
  %i.bp = add i32 %.08099, -2                     ; 2 uses
  %.not89.1 = icmp eq i32 %i.bp, 0
  br i1 %.not89.1, label %.loopexit, label %.lr.ph101, !llvm.loop !82

bb.g:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !54 ; 7 uses
  %.not8893 = icmp eq i32 %i.br, 0
  br i1 %.not8893, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %min.iters.check = icmp eq i32 %i.br, 1
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.bt = add i32 %i.br, -1
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = mul nuw nsw i64 %i.bu, 3
  %i.bw = getelementptr i8, ptr %.078, i64 %i.bv
  %scevgep = getelementptr i8, ptr %i.bw, i64 3
  %i.bx = shl nuw nsw i64 %i.bu, 2
  %i.by = getelementptr i8, ptr %i.q, i64 %i.bx
  %scevgep127 = getelementptr i8, ptr %i.by, i64 4
  %bound0 = icmp ult ptr %.078, %scevgep127
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bs, 4294967294              ; 5 uses
  %i.bz = shl nuw nsw i64 %n.vec, 2
  %i.ca = getelementptr i8, ptr %i.q, i64 %i.bz
  %i.cb = mul nuw nsw i64 %n.vec, 3
  %i.cc = getelementptr i8, ptr %.078, i64 %i.cb  ; 2 uses
  %i.cd = trunc nuw i64 %n.vec to i32
  %i.ce = sub i32 %i.br, %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cf = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.cf ; 4 uses
  %i.cg = getelementptr i8, ptr %i.q, i64 %i.cf   ; 4 uses
  %next.gep128 = getelementptr i8, ptr %i.cg, i64 4
  %i.ch = mul i64 %index, 3
  %next.gep129 = getelementptr i8, ptr %.078, i64 %i.ch
  %i.ci = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.cj = getelementptr i8, ptr %i.cg, i64 5
  %i.ck = load i8, ptr %next.gep, align 1, !tbaa !37, !alias.scope !83
  %i.cl = load i8, ptr %next.gep128, align 1, !tbaa !37, !alias.scope !83
  %i.cm = insertelement <2 x i8> poison, i8 %i.ck, i64 0
  %i.cn = insertelement <2 x i8> %i.cm, i8 %i.cl, i64 1
  %i.co = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.cp = getelementptr i8, ptr %i.cg, i64 6
  %i.cq = load i8, ptr %i.ci, align 1, !tbaa !37, !alias.scope !83
  %i.cr = load i8, ptr %i.cj, align 1, !tbaa !37, !alias.scope !83
  %i.cs = insertelement <2 x i8> poison, i8 %i.cq, i64 0
  %i.ct = insertelement <2 x i8> %i.cs, i8 %i.cr, i64 1
  %i.cu = getelementptr inbounds nuw i8, ptr %next.gep, i64 3
  %i.cv = getelementptr i8, ptr %i.cg, i64 7
  %i.cw = load i8, ptr %i.co, align 1, !tbaa !37, !alias.scope !83
  %i.cx = load i8, ptr %i.cp, align 1, !tbaa !37, !alias.scope !83
  %i.cy = insertelement <2 x i8> poison, i8 %i.cw, i64 0
  %i.cz = insertelement <2 x i8> %i.cy, i8 %i.cx, i64 1
  %i.da = load i8, ptr %i.cu, align 1, !tbaa !37, !alias.scope !83
  %i.db = load i8, ptr %i.cv, align 1, !tbaa !37, !alias.scope !83
  %i.dc = insertelement <2 x i8> poison, i8 %i.da, i64 0
  %i.dd = insertelement <2 x i8> %i.dc, i8 %i.db, i64 1
  %i.de = uitofp <2 x i8> %i.cn to <2 x double>
  %i.df = uitofp <2 x i8> %i.dd to <2 x double>   ; 3 uses
  %i.dg = fmul nnan <2 x double> %i.de, %i.df
  %i.dh = fdiv <2 x double> %i.dg, splat (double 2.550000e+02)
  %i.di = fadd <2 x double> %i.dh, splat (double 5.000000e-01)
  %i.dj = fptoui <2 x double> %i.di to <2 x i8>
  %i.dk = uitofp <2 x i8> %i.ct to <2 x double>
  %i.dl = fmul nnan <2 x double> %i.dk, %i.df
  %i.dm = uitofp <2 x i8> %i.cz to <2 x double>
  %i.dn = fmul nnan <2 x double> %i.dm, %i.df
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> %i.dl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dp = fdiv <4 x double> %i.do, splat (double 2.550000e+02)
  %i.dq = fadd <4 x double> %i.dp, splat (double 5.000000e-01)
  %i.dr = fptoui <4 x double> %i.dq to <4 x i8>
  %i.ds = shufflevector <2 x i8> %i.dj, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x i8> %i.dr, <4 x i8> %i.ds, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x i8> %interleaved.vec, ptr %next.gep129, align 1, !tbaa !37, !alias.scope !86, !noalias !83
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bs
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.096.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.preheader ], [ %i.ca, %middle.block ]
  %.295.ph = phi ptr [ %.078, %vector.memcheck ], [ %.078, %.lr.ph.preheader ], [ %i.cc, %middle.block ]
  %.18194.ph = phi i32 [ %i.br, %vector.memcheck ], [ %i.br, %.lr.ph.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.096 = phi ptr [ %i.ea, %.lr.ph ], [ %.096.ph, %.lr.ph.preheader134 ] ; 5 uses
  %.295 = phi ptr [ %i.eu, %.lr.ph ], [ %.295.ph, %.lr.ph.preheader134 ] ; 4 uses
  %.18194 = phi i32 [ %i.ev, %.lr.ph ], [ %.18194.ph, %.lr.ph.preheader134 ]
  %i.du = getelementptr inbounds nuw i8, ptr %.096, i64 1
  %i.dv = load i8, ptr %.096, align 1, !tbaa !37
  %i.dw = getelementptr inbounds nuw i8, ptr %.096, i64 2
  %i.dx = load i8, ptr %i.du, align 1, !tbaa !37
  %i.dy = getelementptr inbounds nuw i8, ptr %.096, i64 3
  %i.dz = load i8, ptr %i.dw, align 1, !tbaa !37
  %i.ea = getelementptr inbounds nuw i8, ptr %.096, i64 4
  %i.eb = load i8, ptr %i.dy, align 1, !tbaa !37
  %i.ec = getelementptr inbounds nuw i8, ptr %.295, i64 2
  %i.ed = getelementptr inbounds nuw i8, ptr %.295, i64 1
  %i.ee = uitofp i8 %i.dv to double
  %i.ef = uitofp i8 %i.eb to double               ; 3 uses
  %i.eg = fmul nnan double %i.ee, %i.ef
  %i.eh = fdiv double %i.eg, 2.550000e+02
  %i.ei = fadd double %i.eh, 5.000000e-01
  %i.ej = fptoui double %i.ei to i8
  store i8 %i.ej, ptr %i.ec, align 1, !tbaa !37
  %i.ek = uitofp i8 %i.dx to double
  %i.el = fmul nnan double %i.ek, %i.ef
  %i.em = fdiv double %i.el, 2.550000e+02
  %i.en = fadd double %i.em, 5.000000e-01
  %i.eo = fptoui double %i.en to i8
  store i8 %i.eo, ptr %i.ed, align 1, !tbaa !37
  %i.ep = uitofp i8 %i.dz to double
  %i.eq = fmul nnan double %i.ep, %i.ef
  %i.er = fdiv double %i.eq, 2.550000e+02
  %i.es = fadd double %i.er, 5.000000e-01
  %i.et = fptoui double %i.es to i8
  store i8 %i.et, ptr %.295, align 1, !tbaa !37
  %i.eu = getelementptr inbounds nuw i8, ptr %.295, i64 3 ; 2 uses
  %i.ev = add i32 %.18194, -1                     ; 2 uses
  %.not88 = icmp eq i32 %i.ev, 0
  br i1 %.not88, label %.loopexit, label %.lr.ph, !llvm.loop !91

bb.h:                                             ; preds = %bb.d
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !54 ; 5 uses
  %.not87103 = icmp eq i32 %i.ex, 0
  br i1 %.not87103, label %.loopexit, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.h
  %i.ey = zext i32 %i.s to i64                    ; 4 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr @rgb_pixelsize, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !4
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr @rgb_blue, i64 %i.ey
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !4
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr @rgb_green, i64 %i.ey
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !4
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr @rgb_red, i64 %i.ey
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !4
  %i.fh = sext i32 %i.fc to i64                   ; 3 uses
  %i.fi = sext i32 %i.fe to i64                   ; 3 uses
  %i.fj = sext i32 %i.fg to i64                   ; 3 uses
  %i.fk = sext i32 %i.fa to i64                   ; 3 uses
  %xtraiter137 = and i32 %i.ex, 1
  %lcmp.mod138.not = icmp eq i32 %xtraiter137, 0
  br i1 %lcmp.mod138.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph107
  %i.fl = getelementptr inbounds i8, ptr %i.q, i64 %i.fh
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !37
  store i8 %i.fm, ptr %.078, align 1, !tbaa !37
  %i.fn = getelementptr inbounds i8, ptr %i.q, i64 %i.fi
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !37
  %i.fp = getelementptr inbounds nuw i8, ptr %.078, i64 1
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !37
  %i.fq = getelementptr inbounds i8, ptr %i.q, i64 %i.fj
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !37
  %i.fs = getelementptr inbounds nuw i8, ptr %.078, i64 2
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !37
  %i.ft = getelementptr inbounds nuw i8, ptr %.078, i64 3 ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %i.q, i64 %i.fk
  %i.fv = add nsw i32 %i.ex, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph107
  %.lcssa.unr = phi ptr [ poison, %.lr.ph107 ], [ %i.ft, %.prol.loopexit.unr-lcssa ]
  %.1106.unr = phi ptr [ %i.q, %.lr.ph107 ], [ %i.fu, %.prol.loopexit.unr-lcssa ]
  %.3105.unr = phi ptr [ %.078, %.lr.ph107 ], [ %i.ft, %.prol.loopexit.unr-lcssa ]
  %.282104.unr = phi i32 [ %i.ex, %.lr.ph107 ], [ %i.fv, %.prol.loopexit.unr-lcssa ]
  %i.fw = icmp eq i32 %i.ex, 1
  br i1 %i.fw, label %.loopexit, label %.lr.ph107.new

.lr.ph107.new:                                    ; preds = %.prol.loopexit, %.lr.ph107.new
  %.1106 = phi ptr [ %i.gq, %.lr.ph107.new ], [ %.1106.unr, %.prol.loopexit ] ; 4 uses
  %.3105 = phi ptr [ %i.gp, %.lr.ph107.new ], [ %.3105.unr, %.prol.loopexit ] ; 7 uses
  %.282104 = phi i32 [ %i.gr, %.lr.ph107.new ], [ %.282104.unr, %.prol.loopexit ]
  %i.fx = getelementptr inbounds i8, ptr %.1106, i64 %i.fh
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !37
  store i8 %i.fy, ptr %.3105, align 1, !tbaa !37
  %i.fz = getelementptr inbounds i8, ptr %.1106, i64 %i.fi
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !37
  %i.gb = getelementptr inbounds nuw i8, ptr %.3105, i64 1
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !37
  %i.gc = getelementptr inbounds i8, ptr %.1106, i64 %i.fj
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !37
  %i.ge = getelementptr inbounds nuw i8, ptr %.3105, i64 2
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !37
  %i.gf = getelementptr inbounds nuw i8, ptr %.3105, i64 3
  %i.gg = getelementptr inbounds i8, ptr %.1106, i64 %i.fk ; 4 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.fh
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !37
  store i8 %i.gi, ptr %i.gf, align 1, !tbaa !37
  %i.gj = getelementptr inbounds i8, ptr %i.gg, i64 %i.fi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !37
  %i.gl = getelementptr inbounds nuw i8, ptr %.3105, i64 4
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !37
  %i.gm = getelementptr inbounds i8, ptr %i.gg, i64 %i.fj
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !37
  %i.go = getelementptr inbounds nuw i8, ptr %.3105, i64 5
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !37
  %i.gp = getelementptr inbounds nuw i8, ptr %.3105, i64 6 ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %i.gg, i64 %i.fk
  %i.gr = add i32 %.282104, -2                    ; 2 uses
  %.not87.1 = icmp eq i32 %i.gr, 0
  br i1 %.not87.1, label %.loopexit, label %.lr.ph107.new, !llvm.loop !92

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph101.prol.loopexit, %.lr.ph101, %.prol.loopexit, %.lr.ph107.new, %middle.block, %bb.g, %bb.f, %bb.h, %bb.e
  %.4 = phi ptr [ %i.aa, %bb.e ], [ %i.bn, %.lr.ph101 ], [ %i.gp, %.lr.ph107.new ], [ %.078, %bb.h ], [ %.078, %bb.f ], [ %.078, %bb.g ], [ %i.cc, %middle.block ], [ %.lcssa.unr, %.prol.loopexit ], [ %.lcssa133.unr, %.lr.ph101.prol.loopexit ], [ %i.eu, %.lr.ph ]
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !58 ; 2 uses
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph111.preheader, label %._crit_edge

.lr.ph111.preheader:                              ; preds = %.loopexit
  %i.gv = zext nneg i32 %i.gt to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.4, i8 0, i64 %i.gv, i1 false), !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph111.preheader, %.loopexit
  %i.gw = load i32, ptr %i.a, align 8, !tbaa !68
  %.not90 = icmp eq i32 %i.gw, 0
  br i1 %.not90, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !67
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !56
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !72
  %i.he = tail call i64 @fwrite(ptr noundef %i.gy, i64 noundef 1, i64 noundef %i.hb, ptr noundef %i.hd) ; 0 uses
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

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.b, %bb.d
  %.035 = phi i8 [ %., %bb.b ], [ 8, %bb.d ], [ 24, %bb.c ], [ 24, %bb.c ]
  %i.i = phi i1 [ %.not, %bb.b ], [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.c ]
  %.0 = phi i32 [ %.41, %bb.b ], [ 256, %bb.d ], [ 0, %bb.c ], [ 0, %bb.c ] ; 2 uses
  %i.j = mul nuw nsw i32 %.0, 3                   ; 2 uses
  %i.k = or disjoint i32 %i.j, 26
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.m = load i32, ptr %i.l, align 4, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.o = load i32, ptr %i.n, align 4, !tbaa !60   ; 2 uses
  %i.p = mul i32 %i.o, %i.m
  %i.q = add i32 %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i32 0, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 0, ptr %i.s, align 1
  store i8 66, ptr %i.a, align 1, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 77, ptr %i.t, align 1, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i32 %i.q, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 26, ptr %i.v, align 1, !tbaa !37
  %i.w = lshr exact i32 %i.j, 8
  %i.x = trunc nuw nsw i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 %i.x, ptr %i.y, align 1, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 0, ptr %i.z, align 1, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 0, ptr %i.aa, align 1, !tbaa !37
  store i8 12, ptr %i.b, align 1, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.ab, align 1, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.af = trunc i32 %i.ad to i16
  store i16 %i.af, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.ah = trunc i32 %i.o to i16
  store i16 %i.ah, ptr %i.ag, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 1, ptr %i.ai, align 1, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 0, ptr %i.aj, align 1, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 %.035, ptr %i.ak, align 1, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 0, ptr %i.al, align 1, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !72
  %i.ao = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 14, ptr noundef %i.an)
  %.not38 = icmp eq i64 %i.ao, 14
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i32 38, ptr %i.aq, align 8, !tbaa !34
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !38
  tail call void %i.ar(ptr noundef nonnull %0) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !72
  %i.at = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 12, ptr noundef %i.as)
  %.not39 = icmp eq i64 %i.at, 12
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store i32 38, ptr %i.av, align 8, !tbaa !34
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !38
  tail call void %i.aw(ptr noundef nonnull %0) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val = load ptr, ptr %i.am, align 8, !tbaa !72
  tail call fastcc void @write_colormap(ptr noundef nonnull %0, ptr %.val, i32 noundef %.0, i32 noundef 3)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @write_bmp_header(ptr noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [14 x i8], align 1                ; 11 uses
  %i.b = alloca [40 x i8], align 16               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51   ; 3 uses
  %i.e = icmp eq i32 %i.d, 2
  %i.f = add i32 %i.d, -6
  %or.cond = icmp ult i32 %i.f, 10
  %or.cond57 = or i1 %i.e, %or.cond
  br i1 %or.cond57, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !53
  %.not = icmp ne i32 %i.h, 0                     ; 3 uses
  %. = select i1 %.not, i8 8, i8 24
  %.56 = select i1 %.not, i32 256, i32 0
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  switch i32 %i.d, label %bb.d [
    i32 16, label %bb.e
    i32 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.b, %bb.d
  %.050 = phi i8 [ %., %bb.b ], [ 8, %bb.d ], [ 24, %bb.c ], [ 24, %bb.c ]
  %i.i = phi i1 [ %.not, %bb.b ], [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.c ]
  %.0 = phi i32 [ %.56, %bb.b ], [ 256, %bb.d ], [ 0, %bb.c ], [ 0, %bb.c ] ; 4 uses
  %i.j = shl nuw nsw i32 %.0, 2
  %i.k = or disjoint i32 %i.j, 54
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.m = load i32, ptr %i.l, align 4, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i32 0, ptr %i.o, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  store i8 66, ptr %i.a, align 1, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 77, ptr %i.p, align 1, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 54, ptr %i.r, align 1, !tbaa !37
  %i.s = lshr exact i32 %.0, 6
  %i.t = trunc nuw nsw i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 %i.t, ptr %i.u, align 1, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 0, ptr %i.v, align 1, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 0, ptr %i.w, align 1, !tbaa !37
  store i8 40, ptr %i.b, align 16, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %2 = load i32, ptr %i.n, align 4, !tbaa !60
  %3 = load <2 x i32>, ptr %i.x, align 8, !tbaa !4
  %4 = mul i32 %2, %i.m
  %5 = add i32 %4, %i.k
  store i32 %5, ptr %i.q, align 1
  store <2 x i32> %3, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 1, ptr %i.z, align 4, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 %.050, ptr %i.aa, align 2, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 382
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !93
  %i.ad = icmp eq i8 %i.ac, 2
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !94 ; 3 uses
  %i.ag = trunc i16 %i.af to i8
  %i.ah = mul i8 %i.ag, 100
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 %i.ah, ptr %i.ai, align 8, !tbaa !37
  %i.aj = mul i16 %i.af, 100
  %i.ak = lshr i16 %i.aj, 8
  %i.al = trunc nuw i16 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  store i8 %i.al, ptr %i.am, align 1, !tbaa !37
  %i.an = zext i16 %i.af to i32
  %i.ao = mul nuw nsw i32 %i.an, 100
  %i.ap = lshr i32 %i.ao, 16
  %i.aq = trunc nuw nsw i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i8 %i.aq, ptr %i.ar, align 2, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 386
  %i.at = load i16, ptr %i.as, align 2, !tbaa !95 ; 3 uses
  %i.au = trunc i16 %i.at to i8
  %i.av = mul i8 %i.au, 100
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i8 %i.av, ptr %i.aw, align 4, !tbaa !37
  %i.ax = mul i16 %i.at, 100
  %i.ay = lshr i16 %i.ax, 8
  %i.az = trunc nuw i16 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !37
  %i.bb = zext i16 %i.at to i32
  %i.bc = mul nuw nsw i32 %i.bb, 100
  %i.bd = lshr i32 %i.bc, 16
  %i.be = trunc nuw nsw i32 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i8 %i.be, ptr %i.bf, align 2, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %i.bg, align 16, !tbaa !37
  %i.bh = lshr exact i32 %.0, 8
  %i.bi = trunc nuw nsw i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !72
  %i.bm = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 14, ptr noundef %i.bl)
  %.not53 = icmp eq i64 %i.bm, 14
  br i1 %.not53, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store i32 38, ptr %i.bo, align 8, !tbaa !34
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !38
  tail call void %i.bp(ptr noundef nonnull %0) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !72
  %i.br = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 40, ptr noundef %i.bq)
  %.not54 = icmp eq i64 %i.br, 40
  br i1 %.not54, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store i32 38, ptr %i.bt, align 8, !tbaa !34
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !38
  tail call void %i.bu(ptr noundef nonnull %0) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.val = load ptr, ptr %i.bk, align 8, !tbaa !72
  tail call fastcc void @write_colormap(ptr noundef nonnull %0, ptr %.val, i32 noundef %.0, i32 noundef 4)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @write_colormap(ptr noundef %0, ptr captures(none) %.32.val, i32 noundef range(i32 1, 257) %1, i32 noundef range(i32 3, 5) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97   ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.e = icmp eq i32 %2, 4
  br i1 %i.e, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %.preheader.split.us
  %.210.us = phi i32 [ %i.j, %.preheader.split.us ], [ 0, %.preheader ] ; 4 uses
  %i.f = tail call i32 @putc(i32 noundef %.210.us, ptr noundef %.32.val) ; 0 uses
  %i.g = tail call i32 @putc(i32 noundef %.210.us, ptr noundef %.32.val) ; 0 uses
  %i.h = tail call i32 @putc(i32 noundef %.210.us, ptr noundef %.32.val) ; 0 uses
  %i.i = tail call i32 @putc(i32 noundef 0, ptr noundef %.32.val) ; 0 uses
  %i.j = add nuw nsw i32 %.210.us, 1              ; 2 uses
  %exitcond42.not = icmp eq i32 %i.j, 256
  br i1 %exitcond42.not, label %.loopexit, label %.preheader.split.us, !llvm.loop !98

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load i32, ptr %i.k, align 8, !tbaa !99
  %i.m = icmp eq i32 %i.l, 3
  %i.n = icmp sgt i32 %i.d, 0                     ; 2 uses
  br i1 %i.m, label %.preheader1, label %.preheader3

.preheader3:                                      ; preds = %bb.b
  br i1 %i.n, label %.lr.ph, label %.lr.ph13

.lr.ph:                                           ; preds = %.preheader3
  %i.o = icmp eq i32 %2, 4
  %wide.trip.count29 = zext nneg i32 %i.d to i64  ; 2 uses
  br i1 %i.o, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 4 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv26
  %i.r = load i8, ptr %i.q, align 1, !tbaa !37
  %i.s = zext i8 %i.r to i32
  %i.t = tail call i32 @putc(i32 noundef %i.s, ptr noundef %.32.val) ; 0 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv26
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37
  %i.x = zext i8 %i.w to i32
  %i.y = tail call i32 @putc(i32 noundef %i.x, ptr noundef %.32.val) ; 0 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv26
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !37
  %i.ac = zext i8 %i.ab to i32
  %i.ad = tail call i32 @putc(i32 noundef %i.ac, ptr noundef %.32.val) ; 0 uses
  %i.ae = tail call i32 @putc(i32 noundef 0, ptr noundef %.32.val) ; 0 uses
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1 ; 2 uses
  %exitcond30.not = icmp eq i64 %indvars.iv.next27, %wide.trip.count29
  br i1 %exitcond30.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !100

.preheader1:                                      ; preds = %bb.b
  br i1 %i.n, label %.lr.ph7, label %.lr.ph13

.lr.ph7:                                          ; preds = %.preheader1
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ah = icmp eq i32 %2, 4
  %wide.trip.count39 = zext nneg i32 %i.d to i64  ; 2 uses
  br i1 %i.ah, label %.lr.ph7.split.us, label %.lr.ph7.split

.lr.ph7.split.us:                                 ; preds = %.lr.ph7, %.lr.ph7.split.us
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %.lr.ph7.split.us ], [ 0, %.lr.ph7 ] ; 4 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !74
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv36
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37
  %i.al = zext i8 %i.ak to i32
  %i.am = tail call i32 @putc(i32 noundef %i.al, ptr noundef %.32.val) ; 0 uses
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !74
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv36
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37
  %i.aq = zext i8 %i.ap to i32
  %i.ar = tail call i32 @putc(i32 noundef %i.aq, ptr noundef %.32.val) ; 0 uses
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv36
  %i.au = load i8, ptr %i.at, align 1, !tbaa !37
  %i.av = zext i8 %i.au to i32
  %i.aw = tail call i32 @putc(i32 noundef %i.av, ptr noundef %.32.val) ; 0 uses
  %i.ax = tail call i32 @putc(i32 noundef 0, ptr noundef %.32.val) ; 0 uses
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %.loopexit, label %.lr.ph7.split.us, !llvm.loop !101

.lr.ph7.split:                                    ; preds = %.lr.ph7, %.lr.ph7.split
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %.lr.ph7.split ], [ 0, %.lr.ph7 ] ; 4 uses
  %i.ay = load ptr, ptr %i.af, align 8, !tbaa !74
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv31
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !37
  %i.bb = zext i8 %i.ba to i32
  %i.bc = tail call i32 @putc(i32 noundef %i.bb, ptr noundef %.32.val) ; 0 uses
  %i.bd = load ptr, ptr %i.ag, align 8, !tbaa !74
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv31
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !37
  %i.bg = zext i8 %i.bf to i32
  %i.bh = tail call i32 @putc(i32 noundef %i.bg, ptr noundef %.32.val) ; 0 uses
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv31
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !37
  %i.bl = zext i8 %i.bk to i32
  %i.bm = tail call i32 @putc(i32 noundef %i.bl, ptr noundef %.32.val) ; 0 uses
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count39
  br i1 %exitcond35.not, label %.loopexit, label %.lr.ph7.split, !llvm.loop !101

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 4 uses
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !37
  %i.bq = zext i8 %i.bp to i32
  %i.br = tail call i32 @putc(i32 noundef %i.bq, ptr noundef %.32.val) ; 0 uses
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !37
  %i.bv = zext i8 %i.bu to i32
  %i.bw = tail call i32 @putc(i32 noundef %i.bv, ptr noundef %.32.val) ; 0 uses
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !37
  %i.ca = zext i8 %i.bz to i32
  %i.cb = tail call i32 @putc(i32 noundef %i.ca, ptr noundef %.32.val) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count29
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !100

.preheader.split:                                 ; preds = %.preheader, %.preheader.split
  %.210 = phi i32 [ %i.cf, %.preheader.split ], [ 0, %.preheader ] ; 4 uses
  %i.cc = tail call i32 @putc(i32 noundef %.210, ptr noundef %.32.val) ; 0 uses
  %i.cd = tail call i32 @putc(i32 noundef %.210, ptr noundef %.32.val) ; 0 uses
  %i.ce = tail call i32 @putc(i32 noundef %.210, ptr noundef %.32.val) ; 0 uses
  %i.cf = add nuw nsw i32 %.210, 1                ; 2 uses
  %exitcond41.not = icmp eq i32 %i.cf, 256
  br i1 %exitcond41.not, label %.loopexit, label %.preheader.split, !llvm.loop !98
end_hunk_0
