Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/wrbmp?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@finish_output_bmp:bb.a
  %i.al = load i32, ptr %i.o, align 4, !tbaa !50
  %i.am = zext i32 %i.al to i64
  %i.an = tail call i64 @fwrite(ptr noundef %i.ak, i64 noundef 1, i64 noundef %i.am, ptr noundef %i.b) ; 0 uses
  %.not36 = icmp eq i32 %i.ai, 0
  br i1 %.not36, label %._crit_edge.thread45, label %.lr.ph.split, !llvm.loop !81

._crit_edge:                                      ; preds = %bb.e
  br i1 %.not37, label %._crit_edge.thread, label %._crit_edge.thread45

._crit_edge.thread45:                             ; preds = %.lr.ph.split, %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !85
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !85
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph.split.us, %._crit_edge, %._crit_edge.thread45, %bb.a
  %i.ar = tail call i32 @fflush(ptr noundef %i.b) ; 0 uses
  %i.as = tail call i32 @ferror(ptr noundef %i.b) #7
  %.not38 = icmp eq i32 %i.as, 0
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread
  %i.at = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i32 37, ptr %i.au, align 8, !tbaa !36
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !38
  tail call void %i.av(ptr noundef nonnull %0) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.thread
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_gray_rows(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !59
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !54
  %i.k = tail call ptr %i.f(ptr noundef %0, ptr noundef %i.h, i32 noundef %i.j, i32 noundef 1, i32 noundef 1) #7
  %i.l = load i32, ptr %i.i, align 4, !tbaa !54
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.i, align 4, !tbaa !54
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.021.in = phi ptr [ %i.k, %bb.b ], [ %i.n, %bb.c ]
  %.021 = load ptr, ptr %.021.in, align 8, !tbaa !63 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !49
  %i.t = zext i32 %i.s to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.021, ptr align 1 %i.q, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.v = load i32, ptr %i.u, align 8, !tbaa !51   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.x = load i32, ptr %i.r, align 8, !tbaa !49
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr i8, ptr %.021, i64 %i.y
  %i.aa = zext nneg i32 %i.v to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.z, i8 0, i64 %i.aa, i1 false), !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.d
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !59
  %.not23 = icmp eq i32 %i.ab, 0
  br i1 %.not23, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !50
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !61
  %i.aj = tail call i64 @fwrite(ptr noundef %i.ad, i64 noundef 1, i64 noundef %i.ag, ptr noundef %i.ai) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_pixel_rows(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !59
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !54
  %i.k = tail call ptr %i.f(ptr noundef %0, ptr noundef %i.h, i32 noundef %i.j, i32 noundef 1, i32 noundef 1) #7
  %i.l = load i32, ptr %i.i, align 4, !tbaa !54
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.i, align 4, !tbaa !54
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.078.in = phi ptr [ %i.k, %bb.b ], [ %i.n, %bb.c ]
  %.078 = load ptr, ptr %.078.in, align 8, !tbaa !63 ; 21 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !63   ; 24 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !47   ; 2 uses
  switch i32 %i.s, label %bb.h [
    i32 8, label %bb.e
    i32 16, label %bb.f
    i32 4, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.u = load i32, ptr %i.t, align 4, !tbaa !50
  %i.v = zext i32 %i.u to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078, ptr align 1 %i.q, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load i32, ptr %i.w, align 8, !tbaa !49
  %i.y = mul i32 %i.x, 3
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.078, i64 %i.z
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !49 ; 5 uses
  %.not8997 = icmp eq i32 %i.ac, 0
  br i1 %.not8997, label %.loopexit, label %.lr.ph101.preheader

.lr.ph101.preheader:                              ; preds = %bb.f
  %xtraiter = and i32 %i.ac, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph101.prol.loopexit, label %.lr.ph101.prol

.lr.ph101.prol:                                   ; preds = %.lr.ph101.preheader
  %i.ad = load i16, ptr %i.q, align 2, !tbaa !93
  %i.ae = trunc i16 %i.ad to i8
  %i.af = shl i8 %i.ae, 3
  store i8 %i.af, ptr %.078, align 1, !tbaa !37
  %i.ag = load i16, ptr %i.q, align 2, !tbaa !93
  %i.ah = lshr i16 %i.ag, 3
  %i.ai = trunc i16 %i.ah to i8
  %i.aj = and i8 %i.ai, -4
  %i.ak = getelementptr inbounds nuw i8, ptr %.078, i64 1
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !37
  %i.al = load i16, ptr %i.q, align 2, !tbaa !93
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
  %.lcssa139.unr = phi ptr [ poison, %.lr.ph101.preheader ], [ %i.aq, %.lr.ph101.prol ]
  %.179100.unr = phi ptr [ %.078, %.lr.ph101.preheader ], [ %i.aq, %.lr.ph101.prol ]
  %.08099.unr = phi ptr [ %i.q, %.lr.ph101.preheader ], [ %i.ar, %.lr.ph101.prol ]
  %.08298.unr = phi i32 [ %i.ac, %.lr.ph101.preheader ], [ %i.as, %.lr.ph101.prol ]
  %i.at = icmp eq i32 %i.ac, 1
  br i1 %i.at, label %.loopexit, label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101.prol.loopexit, %.lr.ph101
  %.179100 = phi ptr [ %i.bt, %.lr.ph101 ], [ %.179100.unr, %.lr.ph101.prol.loopexit ] ; 7 uses
  %.08099 = phi ptr [ %i.bu, %.lr.ph101 ], [ %.08099.unr, %.lr.ph101.prol.loopexit ] ; 5 uses
  %.08298 = phi i32 [ %i.bv, %.lr.ph101 ], [ %.08298.unr, %.lr.ph101.prol.loopexit ]
  %i.au = load i16, ptr %.08099, align 2, !tbaa !93
  %i.av = trunc i16 %i.au to i8
  %i.aw = shl i8 %i.av, 3
  store i8 %i.aw, ptr %.179100, align 1, !tbaa !37
  %i.ax = load i16, ptr %.08099, align 2, !tbaa !93
  %i.ay = lshr i16 %i.ax, 3
  %i.az = trunc i16 %i.ay to i8
  %i.ba = and i8 %i.az, -4
  %i.bb = getelementptr inbounds nuw i8, ptr %.179100, i64 1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !37
  %i.bc = load i16, ptr %.08099, align 2, !tbaa !93
  %i.bd = lshr i16 %i.bc, 8
  %i.be = trunc nuw i16 %i.bd to i8
  %i.bf = and i8 %i.be, -8
  %i.bg = getelementptr inbounds nuw i8, ptr %.179100, i64 2
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %.179100, i64 3
  %i.bi = getelementptr inbounds nuw i8, ptr %.08099, i64 2 ; 3 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !93
  %i.bk = trunc i16 %i.bj to i8
  %i.bl = shl i8 %i.bk, 3
  store i8 %i.bl, ptr %i.bh, align 1, !tbaa !37
  %i.bm = load i16, ptr %i.bi, align 2, !tbaa !93
  %i.bn = lshr i16 %i.bm, 3
  %i.bo = trunc i16 %i.bn to i8
  %i.bp = and i8 %i.bo, -4
  %i.bq = getelementptr inbounds nuw i8, ptr %.179100, i64 4
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !37
  %3 = load i16, ptr %i.bi, align 2, !tbaa !93
  %4 = lshr i16 %3, 8
  %5 = trunc nuw i16 %4 to i8
  %i.br = and i8 %5, -8
  %i.bs = getelementptr inbounds nuw i8, ptr %.179100, i64 5
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %.179100, i64 6 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.08099, i64 4
  %i.bv = add i32 %.08298, -2                     ; 2 uses
  %.not89.1 = icmp eq i32 %i.bv, 0
  br i1 %.not89.1, label %.loopexit, label %.lr.ph101, !llvm.loop !86

bb.g:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !49 ; 7 uses
  %.not8893 = icmp eq i32 %i.bx, 0
  br i1 %.not8893, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.bx, 8
  br i1 %min.iters.check, label %.lr.ph.preheader140, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.bz = add i32 %i.bx, -1
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = mul nuw nsw i64 %i.ca, 3
  %i.cc = getelementptr i8, ptr %.078, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 3
  %i.ce = shl nuw nsw i64 %i.ca, 2
  %i.cf = getelementptr i8, ptr %i.q, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %bound0 = icmp ult ptr %.078, %i.cg
  %bound1 = icmp ult ptr %i.q, %i.cd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader140, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.by, 4294967288              ; 5 uses
  %i.ch = shl nuw nsw i64 %n.vec, 2
  %i.ci = getelementptr i8, ptr %i.q, i64 %i.ch
  %i.cj = mul nuw nsw i64 %n.vec, 3
  %i.ck = getelementptr i8, ptr %.078, i64 %i.cj  ; 2 uses
  %i.cl = trunc nuw i64 %n.vec to i32
  %i.cm = sub i32 %i.bx, %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cn = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.cn ; 4 uses
  %i.co = getelementptr i8, ptr %i.q, i64 %i.cn   ; 4 uses
  %next.gep128 = getelementptr i8, ptr %i.co, i64 4
  %i.cp = getelementptr i8, ptr %i.q, i64 %i.cn   ; 4 uses
  %next.gep129 = getelementptr i8, ptr %i.cp, i64 8
  %i.cq = getelementptr i8, ptr %i.q, i64 %i.cn   ; 4 uses
  %next.gep130 = getelementptr i8, ptr %i.cq, i64 12
  %i.cr = getelementptr i8, ptr %i.q, i64 %i.cn   ; 4 uses
  %next.gep131 = getelementptr i8, ptr %i.cr, i64 16
  %i.cs = getelementptr i8, ptr %i.q, i64 %i.cn   ; 4 uses
  %next.gep132 = getelementptr i8, ptr %i.cs, i64 20
  %i.ct = getelementptr i8, ptr %i.q, i64 %i.cn   ; 4 uses
  %next.gep133 = getelementptr i8, ptr %i.ct, i64 24
  %i.cu = getelementptr i8, ptr %i.q, i64 %i.cn   ; 4 uses
  %next.gep134 = getelementptr i8, ptr %i.cu, i64 28
  %i.cv = mul i64 %index, 3
  %next.gep135 = getelementptr i8, ptr %.078, i64 %i.cv
  %i.cw = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.cx = getelementptr i8, ptr %i.co, i64 5
  %i.cy = getelementptr i8, ptr %i.cp, i64 9
  %i.cz = getelementptr i8, ptr %i.cq, i64 13
  %i.da = getelementptr i8, ptr %i.cr, i64 17
  %i.db = getelementptr i8, ptr %i.cs, i64 21
  %i.dc = getelementptr i8, ptr %i.ct, i64 25
  %i.dd = getelementptr i8, ptr %i.cu, i64 29
  %i.de = load i8, ptr %next.gep, align 1, !tbaa !37, !alias.scope !94
  %i.df = load i8, ptr %next.gep128, align 1, !tbaa !37, !alias.scope !94
  %i.dg = load i8, ptr %next.gep129, align 1, !tbaa !37, !alias.scope !94
  %i.dh = load i8, ptr %next.gep130, align 1, !tbaa !37, !alias.scope !94
  %i.di = load i8, ptr %next.gep131, align 1, !tbaa !37, !alias.scope !94
  %i.dj = load i8, ptr %next.gep132, align 1, !tbaa !37, !alias.scope !94
  %i.dk = load i8, ptr %next.gep133, align 1, !tbaa !37, !alias.scope !94
  %i.dl = load i8, ptr %next.gep134, align 1, !tbaa !37, !alias.scope !94
  %i.dm = insertelement <8 x i8> poison, i8 %i.de, i64 0
  %i.dn = insertelement <8 x i8> %i.dm, i8 %i.df, i64 1
  %i.do = insertelement <8 x i8> %i.dn, i8 %i.dg, i64 2
  %i.dp = insertelement <8 x i8> %i.do, i8 %i.dh, i64 3
  %i.dq = insertelement <8 x i8> %i.dp, i8 %i.di, i64 4
  %i.dr = insertelement <8 x i8> %i.dq, i8 %i.dj, i64 5
  %i.ds = insertelement <8 x i8> %i.dr, i8 %i.dk, i64 6
  %i.dt = insertelement <8 x i8> %i.ds, i8 %i.dl, i64 7
  %i.du = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.dv = getelementptr i8, ptr %i.co, i64 6
  %i.dw = getelementptr i8, ptr %i.cp, i64 10
  %i.dx = getelementptr i8, ptr %i.cq, i64 14
  %i.dy = getelementptr i8, ptr %i.cr, i64 18
  %i.dz = getelementptr i8, ptr %i.cs, i64 22
  %i.ea = getelementptr i8, ptr %i.ct, i64 26
  %i.eb = getelementptr i8, ptr %i.cu, i64 30
  %i.ec = load i8, ptr %i.cw, align 1, !tbaa !37, !alias.scope !94
  %i.ed = load i8, ptr %i.cx, align 1, !tbaa !37, !alias.scope !94
  %i.ee = load i8, ptr %i.cy, align 1, !tbaa !37, !alias.scope !94
  %i.ef = load i8, ptr %i.cz, align 1, !tbaa !37, !alias.scope !94
  %i.eg = load i8, ptr %i.da, align 1, !tbaa !37, !alias.scope !94
  %i.eh = load i8, ptr %i.db, align 1, !tbaa !37, !alias.scope !94
  %i.ei = load i8, ptr %i.dc, align 1, !tbaa !37, !alias.scope !94
  %i.ej = load i8, ptr %i.dd, align 1, !tbaa !37, !alias.scope !94
  %i.ek = insertelement <8 x i8> poison, i8 %i.ec, i64 0
  %i.el = insertelement <8 x i8> %i.ek, i8 %i.ed, i64 1
  %i.em = insertelement <8 x i8> %i.el, i8 %i.ee, i64 2
  %i.en = insertelement <8 x i8> %i.em, i8 %i.ef, i64 3
  %i.eo = insertelement <8 x i8> %i.en, i8 %i.eg, i64 4
  %i.ep = insertelement <8 x i8> %i.eo, i8 %i.eh, i64 5
  %i.eq = insertelement <8 x i8> %i.ep, i8 %i.ei, i64 6
  %i.er = insertelement <8 x i8> %i.eq, i8 %i.ej, i64 7
  %i.es = getelementptr inbounds nuw i8, ptr %next.gep, i64 3
  %i.et = getelementptr i8, ptr %i.co, i64 7
  %i.eu = getelementptr i8, ptr %i.cp, i64 11
  %i.ev = getelementptr i8, ptr %i.cq, i64 15
  %i.ew = getelementptr i8, ptr %i.cr, i64 19
  %i.ex = getelementptr i8, ptr %i.cs, i64 23
  %i.ey = getelementptr i8, ptr %i.ct, i64 27
  %i.ez = getelementptr i8, ptr %i.cu, i64 31
  %i.fa = load i8, ptr %i.du, align 1, !tbaa !37, !alias.scope !94
  %i.fb = load i8, ptr %i.dv, align 1, !tbaa !37, !alias.scope !94
  %i.fc = load i8, ptr %i.dw, align 1, !tbaa !37, !alias.scope !94
  %i.fd = load i8, ptr %i.dx, align 1, !tbaa !37, !alias.scope !94
  %i.fe = load i8, ptr %i.dy, align 1, !tbaa !37, !alias.scope !94
  %i.ff = load i8, ptr %i.dz, align 1, !tbaa !37, !alias.scope !94
  %i.fg = load i8, ptr %i.ea, align 1, !tbaa !37, !alias.scope !94
  %i.fh = load i8, ptr %i.eb, align 1, !tbaa !37, !alias.scope !94
  %i.fi = insertelement <8 x i8> poison, i8 %i.fa, i64 0
  %i.fj = insertelement <8 x i8> %i.fi, i8 %i.fb, i64 1
  %i.fk = insertelement <8 x i8> %i.fj, i8 %i.fc, i64 2
  %i.fl = insertelement <8 x i8> %i.fk, i8 %i.fd, i64 3
  %i.fm = insertelement <8 x i8> %i.fl, i8 %i.fe, i64 4
  %i.fn = insertelement <8 x i8> %i.fm, i8 %i.ff, i64 5
  %i.fo = insertelement <8 x i8> %i.fn, i8 %i.fg, i64 6
  %i.fp = insertelement <8 x i8> %i.fo, i8 %i.fh, i64 7
  %i.fq = load i8, ptr %i.es, align 1, !tbaa !37, !alias.scope !94
  %i.fr = load i8, ptr %i.et, align 1, !tbaa !37, !alias.scope !94
  %i.fs = load i8, ptr %i.eu, align 1, !tbaa !37, !alias.scope !94
  %i.ft = load i8, ptr %i.ev, align 1, !tbaa !37, !alias.scope !94
  %i.fu = load i8, ptr %i.ew, align 1, !tbaa !37, !alias.scope !94
  %i.fv = load i8, ptr %i.ex, align 1, !tbaa !37, !alias.scope !94
  %i.fw = load i8, ptr %i.ey, align 1, !tbaa !37, !alias.scope !94
  %i.fx = load i8, ptr %i.ez, align 1, !tbaa !37, !alias.scope !94
  %i.fy = insertelement <8 x i8> poison, i8 %i.fq, i64 0
  %i.fz = insertelement <8 x i8> %i.fy, i8 %i.fr, i64 1
  %i.ga = insertelement <8 x i8> %i.fz, i8 %i.fs, i64 2
  %i.gb = insertelement <8 x i8> %i.ga, i8 %i.ft, i64 3
  %i.gc = insertelement <8 x i8> %i.gb, i8 %i.fu, i64 4
  %i.gd = insertelement <8 x i8> %i.gc, i8 %i.fv, i64 5
  %i.ge = insertelement <8 x i8> %i.gd, i8 %i.fw, i64 6
  %i.gf = insertelement <8 x i8> %i.ge, i8 %i.fx, i64 7
  %i.gg = uitofp <8 x i8> %i.dt to <8 x double>
  %i.gh = uitofp <8 x i8> %i.gf to <8 x double>   ; 3 uses
  %i.gi = fmul nnan <8 x double> %i.gg, %i.gh
  %i.gj = fdiv <8 x double> %i.gi, splat (double 2.550000e+02)
  %i.gk = fadd <8 x double> %i.gj, splat (double 5.000000e-01)
  %i.gl = fptoui <8 x double> %i.gk to <8 x i8>
  %i.gm = uitofp <8 x i8> %i.er to <8 x double>
  %i.gn = fmul nnan <8 x double> %i.gm, %i.gh
  %i.go = uitofp <8 x i8> %i.fp to <8 x double>
  %i.gp = fmul nnan <8 x double> %i.go, %i.gh
  %i.gq = shufflevector <8 x double> %i.gp, <8 x double> %i.gn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gr = fdiv <16 x double> %i.gq, splat (double 2.550000e+02)
  %i.gs = fadd <16 x double> %i.gr, splat (double 5.000000e-01)
  %i.gt = fptoui <16 x double> %i.gs to <16 x i8>
  %i.gu = shufflevector <8 x i8> %i.gl, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i8> %i.gt, <16 x i8> %i.gu, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i8> %interleaved.vec, ptr %next.gep135, align 1, !tbaa !37, !alias.scope !95, !noalias !94
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gv = icmp eq i64 %index.next, %n.vec
  br i1 %i.gv, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.by
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader140

.lr.ph.preheader140:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.096.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.preheader ], [ %i.ci, %middle.block ]
  %.295.ph = phi ptr [ %.078, %vector.memcheck ], [ %.078, %.lr.ph.preheader ], [ %i.ck, %middle.block ]
  %.18394.ph = phi i32 [ %i.bx, %vector.memcheck ], [ %i.bx, %.lr.ph.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader140, %.lr.ph
  %.096 = phi ptr [ %i.gz, %.lr.ph ], [ %.096.ph, %.lr.ph.preheader140 ] ; 4 uses
  %.295 = phi ptr [ %i.hu, %.lr.ph ], [ %.295.ph, %.lr.ph.preheader140 ] ; 4 uses
  %.18394 = phi i32 [ %i.hv, %.lr.ph ], [ %.18394.ph, %.lr.ph.preheader140 ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.096, i64 1
  %i.gx = load i8, ptr %.096, align 1, !tbaa !37
  %i.gy = getelementptr inbounds nuw i8, ptr %.096, i64 3
  %i.gz = getelementptr inbounds nuw i8, ptr %.096, i64 4
  %i.ha = load i8, ptr %i.gy, align 1, !tbaa !37
  %i.hb = getelementptr inbounds nuw i8, ptr %.295, i64 2
  %i.hc = getelementptr inbounds nuw i8, ptr %.295, i64 1
  %i.hd = uitofp i8 %i.gx to double
  %i.he = uitofp i8 %i.ha to double               ; 2 uses
  %i.hf = fmul nnan double %i.hd, %i.he
  %i.hg = fdiv double %i.hf, 2.550000e+02
  %i.hh = fadd double %i.hg, 5.000000e-01
  %i.hi = fptoui double %i.hh to i8
  %i.hj = load <2 x i8>, ptr %i.gw, align 1, !tbaa !37
end_hunk_0
