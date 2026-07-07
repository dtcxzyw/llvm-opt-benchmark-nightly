loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@put_rgb:bb.a
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !37
  %i.af = getelementptr inbounds i8, ptr %i.g, i64 %i.v
  %i.ag = add nsw i32 %i.c, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.028.unr = phi ptr [ %i.d, %.lr.ph ], [ %i.ae, %.prol.loopexit.unr-lcssa ]
  %.02327.unr = phi ptr [ %i.g, %.lr.ph ], [ %i.af, %.prol.loopexit.unr-lcssa ]
  %.02426.unr = phi i32 [ %i.c, %.lr.ph ], [ %i.ag, %.prol.loopexit.unr-lcssa ]
  %i.ah = icmp eq i32 %i.c, 1
  br i1 %i.ah, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.028 = phi ptr [ %i.ba, %.lr.ph.new ], [ %.028.unr, %.prol.loopexit ] ; 7 uses
  %.02327 = phi ptr [ %i.bb, %.lr.ph.new ], [ %.02327.unr, %.prol.loopexit ] ; 4 uses
  %.02426 = phi i32 [ %i.bc, %.lr.ph.new ], [ %.02426.unr, %.prol.loopexit ]
  %i.ai = getelementptr inbounds i8, ptr %.02327, i64 %i.s
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %.028, i64 1
  store i8 %i.aj, ptr %.028, align 1, !tbaa !37
  %i.al = getelementptr inbounds i8, ptr %.02327, i64 %i.t
  %i.am = load i8, ptr %i.al, align 1, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %.028, i64 2
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !37
  %i.ao = getelementptr inbounds i8, ptr %.02327, i64 %i.u
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %.028, i64 3
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !37
  %i.ar = getelementptr inbounds i8, ptr %.02327, i64 %i.v ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.s
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %.028, i64 4
  store i8 %i.at, ptr %i.aq, align 1, !tbaa !37
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.t
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %.028, i64 5
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !37
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %i.u
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %.028, i64 6
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !37
  %i.bb = getelementptr inbounds i8, ptr %i.ar, i64 %i.v
  %i.bc = add i32 %.02426, -2                     ; 2 uses
  %.not.1 = icmp eq i32 %i.bc, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !66

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.a
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !49
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !60
  %i.bi = tail call i64 @fwrite(ptr noundef %i.bd, i64 noundef 1, i64 noundef %i.bf, ptr noundef %i.bh) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @put_cmyk(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !54   ; 7 uses
  %.not24 = icmp eq i32 %i.c, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !50   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65   ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.i = zext i32 %i.c to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.c, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.j = add i32 %i.c, -1
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = mul nuw nsw i64 %i.k, 3
  %i.m = getelementptr i8, ptr %i.d, i64 %i.l
  %scevgep = getelementptr i8, ptr %i.m, i64 3    ; 2 uses
  %i.n = shl nuw nsw i64 %i.k, 2
  %i.o = getelementptr i8, ptr %i.g, i64 %i.n
  %scevgep28 = getelementptr i8, ptr %i.o, i64 4
  %scevgep29 = getelementptr i8, ptr %0, i64 300
  %bound0 = icmp ult ptr %i.d, %scevgep28
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound030 = icmp ult ptr %i.d, %scevgep29
  %bound131 = icmp ult ptr %i.h, %scevgep
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx = or i1 %found.conflict, %found.conflict32
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967292               ; 5 uses
  %i.p = mul nuw nsw i64 %n.vec, 3
  %i.q = getelementptr i8, ptr %i.d, i64 %i.p
  %i.r = shl nuw nsw i64 %n.vec, 2
  %i.s = getelementptr i8, ptr %i.g, i64 %i.r
  %i.t = trunc nuw i64 %n.vec to i32
  %i.u = sub i32 %i.c, %i.t
  %i.v = load i32, ptr %i.h, align 8, !tbaa !8, !alias.scope !68
  %i.w = shl nsw i32 -1, %i.v
  %.scalar = xor i32 %i.w, -1
  %i.x = insertelement <4 x i32> poison, i32 %.scalar, i64 0
  %i.y = shufflevector <4 x i32> %i.x, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.z = uitofp nneg <4 x i32> %i.y to <4 x double> ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aa = mul i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.aa
  %i.ab = shl i64 %index, 2                       ; 4 uses
  %next.gep33 = getelementptr i8, ptr %i.g, i64 %i.ab ; 4 uses
  %i.ac = getelementptr i8, ptr %i.g, i64 %i.ab   ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.ac, i64 4
  %i.ad = getelementptr i8, ptr %i.g, i64 %i.ab   ; 4 uses
  %next.gep35 = getelementptr i8, ptr %i.ad, i64 8
  %i.ae = getelementptr i8, ptr %i.g, i64 %i.ab   ; 4 uses
  %next.gep36 = getelementptr i8, ptr %i.ae, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep33, i64 1
  %i.ag = getelementptr i8, ptr %i.ac, i64 5
  %i.ah = getelementptr i8, ptr %i.ad, i64 9
  %i.ai = getelementptr i8, ptr %i.ae, i64 13
  %i.aj = load i8, ptr %next.gep33, align 1, !tbaa !37, !alias.scope !71
  %i.ak = load i8, ptr %next.gep34, align 1, !tbaa !37, !alias.scope !71
  %i.al = load i8, ptr %next.gep35, align 1, !tbaa !37, !alias.scope !71
  %i.am = load i8, ptr %next.gep36, align 1, !tbaa !37, !alias.scope !71
  %i.an = insertelement <4 x i8> poison, i8 %i.aj, i64 0
  %i.ao = insertelement <4 x i8> %i.an, i8 %i.ak, i64 1
  %i.ap = insertelement <4 x i8> %i.ao, i8 %i.al, i64 2
  %i.aq = insertelement <4 x i8> %i.ap, i8 %i.am, i64 3
  %i.ar = getelementptr inbounds nuw i8, ptr %next.gep33, i64 2
  %i.as = getelementptr i8, ptr %i.ac, i64 6
  %i.at = getelementptr i8, ptr %i.ad, i64 10
  %i.au = getelementptr i8, ptr %i.ae, i64 14
  %i.av = load i8, ptr %i.af, align 1, !tbaa !37, !alias.scope !71
  %i.aw = load i8, ptr %i.ag, align 1, !tbaa !37, !alias.scope !71
  %i.ax = load i8, ptr %i.ah, align 1, !tbaa !37, !alias.scope !71
  %i.ay = load i8, ptr %i.ai, align 1, !tbaa !37, !alias.scope !71
  %i.az = insertelement <4 x i8> poison, i8 %i.av, i64 0
  %i.ba = insertelement <4 x i8> %i.az, i8 %i.aw, i64 1
  %i.bb = insertelement <4 x i8> %i.ba, i8 %i.ax, i64 2
  %i.bc = insertelement <4 x i8> %i.bb, i8 %i.ay, i64 3
  %i.bd = getelementptr inbounds nuw i8, ptr %next.gep33, i64 3
  %i.be = getelementptr i8, ptr %i.ac, i64 7
  %i.bf = getelementptr i8, ptr %i.ad, i64 11
  %i.bg = getelementptr i8, ptr %i.ae, i64 15
  %i.bh = load i8, ptr %i.ar, align 1, !tbaa !37, !alias.scope !71
  %i.bi = load i8, ptr %i.as, align 1, !tbaa !37, !alias.scope !71
  %i.bj = load i8, ptr %i.at, align 1, !tbaa !37, !alias.scope !71
  %i.bk = load i8, ptr %i.au, align 1, !tbaa !37, !alias.scope !71
  %i.bl = insertelement <4 x i8> poison, i8 %i.bh, i64 0
  %i.bm = insertelement <4 x i8> %i.bl, i8 %i.bi, i64 1
  %i.bn = insertelement <4 x i8> %i.bm, i8 %i.bj, i64 2
  %i.bo = insertelement <4 x i8> %i.bn, i8 %i.bk, i64 3
  %i.bp = load i8, ptr %i.bd, align 1, !tbaa !37, !alias.scope !71
  %i.bq = load i8, ptr %i.be, align 1, !tbaa !37, !alias.scope !71
  %i.br = load i8, ptr %i.bf, align 1, !tbaa !37, !alias.scope !71
  %i.bs = load i8, ptr %i.bg, align 1, !tbaa !37, !alias.scope !71
  %i.bt = insertelement <4 x i8> poison, i8 %i.bp, i64 0
  %i.bu = insertelement <4 x i8> %i.bt, i8 %i.bq, i64 1
  %i.bv = insertelement <4 x i8> %i.bu, i8 %i.br, i64 2
  %i.bw = insertelement <4 x i8> %i.bv, i8 %i.bs, i64 3
  %i.bx = uitofp <4 x i8> %i.aq to <4 x double>
  %i.by = uitofp <4 x i8> %i.bw to <4 x double>   ; 3 uses
  %i.bz = fmul nnan <4 x double> %i.bx, %i.by
  %i.ca = fdiv <4 x double> %i.bz, %i.z
  %i.cb = uitofp <4 x i8> %i.bc to <4 x double>
  %i.cc = fmul nnan <4 x double> %i.cb, %i.by
  %i.cd = fdiv <4 x double> %i.cc, %i.z
  %i.ce = uitofp <4 x i8> %i.bo to <4 x double>
  %i.cf = fmul nnan <4 x double> %i.ce, %i.by
  %i.cg = fdiv <4 x double> %i.cf, %i.z
  %i.ch = fadd <4 x double> %i.cg, splat (double 5.000000e-01)
  %i.ci = fptoui <4 x double> %i.ch to <4 x i8>
  %i.cj = shufflevector <4 x double> %i.ca, <4 x double> %i.cd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ck = fadd <8 x double> %i.cj, splat (double 5.000000e-01)
  %i.cl = fptoui <8 x double> %i.ck to <8 x i8>
  %i.cm = shufflevector <4 x i8> %i.ci, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x i8> %i.cl, <8 x i8> %i.cm, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !37, !alias.scope !73, !noalias !75
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.027.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph ], [ %i.q, %middle.block ]
  %.02026.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph ], [ %i.s, %middle.block ]
  %.02125.ph = phi i32 [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph ], [ %i.u, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.027 = phi ptr [ %i.dg, %scalar.ph ], [ %.027.ph, %scalar.ph.preheader ] ; 4 uses
  %.02026 = phi ptr [ %i.cr, %scalar.ph ], [ %.02026.ph, %scalar.ph.preheader ] ; 5 uses
  %.02125 = phi i32 [ %i.dh, %scalar.ph ], [ %.02125.ph, %scalar.ph.preheader ]
  %3 = getelementptr inbounds nuw i8, ptr %.02026, i64 1
  %4 = load i8, ptr %.02026, align 1, !tbaa !37
  %i.co = getelementptr inbounds nuw i8, ptr %.02026, i64 2
  %i.cp = load i8, ptr %3, align 1, !tbaa !37
  %i.cq = getelementptr inbounds nuw i8, ptr %.02026, i64 3
  %5 = load i8, ptr %i.co, align 1, !tbaa !37
  %i.cr = getelementptr inbounds nuw i8, ptr %.02026, i64 4
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !37
  %i.ct = load i32, ptr %i.h, align 8, !tbaa !8
  %notmask = shl nsw i32 -1, %i.ct
  %i.cu = xor i32 %notmask, -1
  %i.cv = uitofp i8 %4 to double
  %i.cw = uitofp i8 %i.cs to double               ; 3 uses
  %i.cx = fmul nnan double %i.cv, %i.cw
  %i.cy = uitofp nneg i32 %i.cu to double         ; 3 uses
  %i.cz = fdiv double %i.cx, %i.cy
  %i.da = fadd double %i.cz, 5.000000e-01
  %i.db = fptoui double %i.da to i8
  %6 = uitofp i8 %i.cp to double
  %7 = fmul nnan double %6, %i.cw
  %8 = fdiv double %7, %i.cy
  %9 = fadd double %8, 5.000000e-01
  %10 = fptoui double %9 to i8
  %11 = uitofp i8 %5 to double
  %12 = fmul nnan double %11, %i.cw
  %13 = fdiv double %12, %i.cy
  %i.dc = fadd double %13, 5.000000e-01
  %i.dd = fptoui double %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %.027, i64 1
  store i8 %i.db, ptr %.027, align 1, !tbaa !37
  %i.df = getelementptr inbounds nuw i8, ptr %.027, i64 2
  store i8 %10, ptr %i.de, align 1, !tbaa !37
  %i.dg = getelementptr inbounds nuw i8, ptr %.027, i64 3
  store i8 %i.dd, ptr %i.df, align 1, !tbaa !37
  %i.dh = add i32 %.02125, -1                     ; 2 uses
  %.not = icmp eq i32 %i.dh, 0
  br i1 %.not, label %._crit_edge, label %scalar.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !49
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !60
  %i.dn = tail call i64 @fwrite(ptr noundef %i.di, i64 noundef 1, i64 noundef %i.dk, ptr noundef %i.dm) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @copy_pixel_rows(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = load i32, ptr %i.f, align 8, !tbaa !64
  %i.h = zext i32 %i.g to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr align 1 %i.c, i64 %i.h, i1 false)
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load i64, ptr %i.j, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = tail call i64 @fwrite(ptr noundef %i.i, i64 noundef 1, i64 noundef %i.k, ptr noundef %i.m) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @put_demapped_gray(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load i32, ptr %i.f, align 8, !tbaa !54   ; 5 uses
  %.not14 = icmp eq i32 %i.g, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65   ; 2 uses
  %xtraiter = and i32 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.017.prol = phi i32 [ %i.q, %.lr.ph.prol ], [ %i.g, %.lr.ph.preheader ]
  %.01216.prol = phi ptr [ %i.p, %.lr.ph.prol ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.01315.prol = phi ptr [ %i.k, %.lr.ph.prol ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.01315.prol, i64 1 ; 2 uses
  %i.l = load i8, ptr %.01315.prol, align 1, !tbaa !37
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %.01216.prol, i64 1 ; 2 uses
  store i8 %i.o, ptr %.01216.prol, align 1, !tbaa !37
  %i.q = add i32 %.017.prol, -1                   ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !81

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.017.unr = phi i32 [ %i.g, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.01216.unr = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %.01315.unr = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.r = icmp ult i32 %i.g, 4
  br i1 %i.r, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.017 = phi i32 [ %i.aq, %.lr.ph ], [ %.017.unr, %.lr.ph.prol.loopexit ]
  %.01216 = phi ptr [ %i.ap, %.lr.ph ], [ %.01216.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.01315 = phi ptr [ %i.ak, %.lr.ph ], [ %.01315.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01315, i64 1
  %i.t = load i8, ptr %.01315, align 1, !tbaa !37
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %.01216, i64 1
  store i8 %i.w, ptr %.01216, align 1, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %.01315, i64 2
  %i.z = load i8, ptr %i.s, align 1, !tbaa !37
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %.01216, i64 2
  store i8 %i.ac, ptr %i.x, align 1, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %.01315, i64 3
  %i.af = load i8, ptr %i.y, align 1, !tbaa !37
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %.01216, i64 3
  store i8 %i.ai, ptr %i.ad, align 1, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %.01315, i64 4
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !37
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %.01216, i64 4
  store i8 %i.ao, ptr %i.aj, align 1, !tbaa !37
  %i.aq = add i32 %.017, -4                       ; 2 uses
  %.not.3 = icmp eq i32 %i.aq, 0
  br i1 %.not.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !83

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !50
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ar = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.e, %bb.a ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.at = load i64, ptr %i.as, align 8, !tbaa !49
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !60
  %i.aw = tail call i64 @fwrite(ptr noundef %i.ar, i64 noundef 1, i64 noundef %i.at, ptr noundef %i.av) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @put_demapped_rgb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i32, ptr %i.j, align 8, !tbaa !54   ; 5 uses
  %.not23 = icmp eq i32 %i.k, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65   ; 3 uses
  %xtraiter = and i32 %i.k, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.n, align 1, !tbaa !37
  %i.q = zext i8 %i.p to i64                      ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.s, ptr %i.i, align 1, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.q
  %i.v = load i8, ptr %i.u, align 1, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.v, ptr %i.t, align 1, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.q
  %i.y = load i8, ptr %i.x, align 1, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.y, ptr %i.w, align 1, !tbaa !37
  %i.aa = add nsw i32 %i.k, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.026.unr = phi i32 [ %i.k, %.lr.ph.preheader ], [ %i.aa, %.lr.ph.prol ]
  %.02125.unr = phi ptr [ %i.i, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %.02224.unr = phi ptr [ %i.n, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %i.ab = icmp eq i32 %i.k, 1
  br i1 %i.ab, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.026 = phi i32 [ %i.ba, %.lr.ph ], [ %.026.unr, %.lr.ph.prol.loopexit ]
  %.02125 = phi ptr [ %i.az, %.lr.ph ], [ %.02125.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %.02224 = phi ptr [ %i.ao, %.lr.ph ], [ %.02224.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02224, i64 1
  %i.ad = load i8, ptr %.02224, align 1, !tbaa !37
  %i.ae = zext i8 %i.ad to i64                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %.02125, i64 1
  store i8 %i.ag, ptr %.02125, align 1, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ae
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %.02125, i64 2
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ae
  %i.am = load i8, ptr %i.al, align 1, !tbaa !37
end_hunk_0
