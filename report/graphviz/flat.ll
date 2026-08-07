inline.NumInlined: 11
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@flat_edges:bb.a
  %i.kk = trunc nuw i8 %.6 to i1
  br i1 %i.kk, label %bb.ac, label %._crit_edge190.thread

bb.ac:                                            ; preds = %._crit_edge190
  tail call void @checkLabelOrder(ptr noundef %0) #12
  tail call void @rec_reset_vlists(ptr noundef %0) #12
  br label %._crit_edge190.thread

._crit_edge190.thread:                            ; preds = %.loopexit149, %bb.ac, %._crit_edge190
  %.092.lcssa222 = phi i32 [ 0, %._crit_edge190 ], [ 1, %bb.ac ], [ 0, %.loopexit149 ]
  ret i32 %.092.lcssa222
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @rec_save_vlists(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @flat_node(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %0, align 8
  %i.h = and i32 %i.g, 3
  %i.i = icmp eq i32 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.k = select i1 %i.i, ptr %0, ptr %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.n = tail call ptr @dot_root(ptr noundef %i.m) #12 ; 2 uses
  %i.o = load i32, ptr %0, align 8
  %i.p = and i32 %i.o, 3                          ; 2 uses
  %i.q = icmp eq i32 %i.p, 3                      ; 2 uses
  %i.r = select i1 %i.q, ptr %0, ptr %i.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 360
  %i.x = load i32, ptr %i.w, align 8, !tbaa !50   ; 2 uses
  %i.y = getelementptr i8, ptr %i.n, i64 16       ; 4 uses
  %.val = load ptr, ptr %i.y, align 8, !tbaa !8   ; 2 uses
  %i.z = getelementptr i8, ptr %.val, i64 264
  %.val.val = load ptr, ptr %i.z, align 8, !tbaa !38 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.aa = select i1 %i.q, i64 56, i64 120
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 360
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !50
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [88 x i8], ptr %.val.val, i64 %i.ah ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -88
  %i.ak = getelementptr i8, ptr %i.ai, i64 -80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51 ; 2 uses
  %i.am = load i32, ptr %i.aj, align 8, !tbaa !87 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 -1, ptr %i.an, align 8, !tbaa !79
  store i32 -1, ptr %i.a, align 16, !tbaa !79
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !79
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 %i.am, ptr %i.ap, align 4, !tbaa !79
  %i.aq = icmp eq i32 %i.p, 2
  %i.ar = select i1 %i.aq, i64 56, i64 -8
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !33
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %.val30.i = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.av = getelementptr i8, ptr %i.ae, i64 364
  %.val.val.i = load i32, ptr %i.av, align 4, !tbaa !37 ; 2 uses
  %i.aw = getelementptr i8, ptr %.val30.i, i64 364
  %.val30.val.i = load i32, ptr %i.aw, align 4, !tbaa !37 ; 2 uses
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %.val.val.i, i32 %.val30.val.i) ; 2 uses
  %spec.select14.i.i = tail call i32 @llvm.smin.i32(i32 %.val.val.i, i32 %.val30.val.i) ; 2 uses
  %.not.not.i80 = icmp sgt i32 %i.am, 0
  br i1 %.not.not.i80, label %.lr.ph.preheader, label %flat_limits.exit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ax = zext nneg i32 %i.am to i64
  br label %.lr.ph

bb.c:                                             ; preds = %bb.e
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i81, 1 ; 2 uses
  %.not.not.i = icmp slt i64 %indvars.iv.next5.i, %indvars.iv.next.i82
  br i1 %.not.not.i, label %.lr.ph, label %flat_limits.exit, !llvm.loop !98

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv.next.i82.in = phi i64 [ %indvars.iv.next.i82, %bb.c ], [ %i.ax, %.lr.ph.preheader ]
  %indvars.iv4.i81 = phi i64 [ %indvars.iv.next5.i, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %indvars.iv.next.i82 = add nsw i64 %indvars.iv.next.i82.in, -1 ; 4 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv4.i81
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !14
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %.val32.i = load ptr, ptr %i.ba, align 8, !tbaa !8
  call fastcc void @setbounds(ptr %.val32.i, ptr noundef %i.a, i32 noundef %spec.select14.i.i, i32 noundef %spec.select.i.i)
  %i.bb = and i64 %indvars.iv.next.i82, 4294967295
  %.not.i = icmp eq i64 %indvars.iv4.i81, %i.bb
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv.next.i82
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !14
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %.val31.i = load ptr, ptr %i.be, align 8, !tbaa !8
  call fastcc void @setbounds(ptr %.val31.i, ptr noundef %i.a, i32 noundef %spec.select14.i.i, i32 noundef %spec.select.i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.bf = load i32, ptr %i.ap, align 4, !tbaa !79 ; 3 uses
  %i.bg = load i32, ptr %i.a, align 16, !tbaa !79 ; 3 uses
  %i.bh = sub nsw i32 %i.bf, %i.bg
  %i.bi = icmp slt i32 %i.bh, 2
  br i1 %i.bi, label %.flat_limits.exit_crit_edge84, label %bb.c, !llvm.loop !98

.flat_limits.exit_crit_edge84:                    ; preds = %bb.e
  br label %flat_limits.exit, !llvm.loop !98

flat_limits.exit:                                 ; preds = %bb.c, %.flat_limits.exit_crit_edge84, %bb.b
  %i.bj = phi i32 [ %i.bf, %.flat_limits.exit_crit_edge84 ], [ %i.am, %bb.b ], [ %i.bf, %bb.c ] ; 2 uses
  %i.bk = phi i32 [ %i.bg, %.flat_limits.exit_crit_edge84 ], [ -1, %bb.b ], [ %i.bg, %bb.c ] ; 2 uses
  %.not29.i = icmp sgt i32 %i.bk, %i.bj
  %i.bl = add nsw i32 %i.bk, %i.bj
  %i.bm = load i32, ptr %i.an, align 8
  %i.bn = load i32, ptr %i.ao, align 4
  %i.bo = add nsw i32 %i.bn, %i.bm
  %.025.in.in.i = select i1 %.not29.i, i32 %i.bo, i32 %i.bl
  %.025.in.i = add nsw i32 %.025.in.in.i, 1
  %.025.i = sdiv i32 %.025.in.i, 2                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bp = add nsw i32 %i.x, -1                    ; 2 uses
  %i.bq = sext i32 %i.bp to i64                   ; 4 uses
  %i.br = getelementptr inbounds [88 x i8], ptr %.val.val, i64 %i.bq ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !51
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq ptr %i.bu, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %flat_limits.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load double, ptr %i.bx, align 8, !tbaa !99
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !100
  %i.cb = fsub double %i.by, %i.ca
  br label %bb.h

bb.g:                                             ; preds = %flat_limits.exit
  %i.cc = sext i32 %i.x to i64
  %i.cd = getelementptr inbounds [88 x i8], ptr %.val.val, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !51
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !14
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !99
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !101
  %i.cn = fadd double %i.ck, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.val, i64 356
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !102
  %i.cq = sitofp i32 %i.cp to double
  %i.cr = fadd double %i.cn, %i.cq
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi double [ %i.cb, %bb.f ], [ %i.cr, %bb.g ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !88 ; 2 uses
  %i.cu = load i32, ptr %i.br, align 8, !tbaa !87 ; 3 uses
  %i.cv = add nsw i32 %i.cu, 2                    ; 2 uses
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %mul.ov.i.i = icmp slt i32 %i.cu, -2
  br i1 %mul.ov.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !76
  %i.cy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cx, ptr noundef nonnull @.str, i64 noundef range(i64 -2147483646, 2147483648) %i.cw, i64 noundef 8) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #14
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.cz = add nsw i32 %i.cu, 1
  %i.da = sext i32 %i.cz to i64
  %i.db = shl nsw i64 %i.da, 3                    ; 3 uses
  %i.dc = shl nuw nsw i64 %i.cw, 3                ; 4 uses
  %i.dd = icmp eq i32 %i.cv, 0
  br i1 %i.dd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef %i.ct) #12
  br label %gv_recalloc.exit.i

bb.l:                                             ; preds = %bb.j
  %i.de = tail call ptr @realloc(ptr noundef %i.ct, i64 noundef range(i64 0, 188978560937) %i.dc) #15 ; 4 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.m, label %1

bb.m:                                             ; preds = %bb.l
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !76
  %i.dh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dg, ptr noundef nonnull @.str.1, i64 noundef range(i64 0, 188978560937) %i.dc) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #14
  unreachable

1:                                                ; preds = %bb.l
  %2 = icmp ugt i64 %i.dc, %i.db
  br i1 %2, label %bb.n, label %gv_recalloc.exit.i

bb.n:                                             ; preds = %1
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.db
  %i.dj = sub nuw nsw i64 %i.dc, %i.db
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.di, i8 0, i64 %i.dj, i1 false)
  br label %gv_recalloc.exit.i

gv_recalloc.exit.i:                               ; preds = %bb.n, %1, %bb.k
  %.0.i.i.i = phi ptr [ null, %bb.k ], [ %i.de, %bb.n ], [ %i.de, %1 ] ; 7 uses
  %i.dk = load ptr, ptr %i.y, align 8, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 264
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !38
  %i.dn = getelementptr inbounds [88 x i8], ptr %i.dm, i64 %i.bq ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store ptr %.0.i.i.i, ptr %i.do, align 8, !tbaa !88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %.0.i.i.i, ptr %i.dp, align 8, !tbaa !51
  %i.dq = load i32, ptr %i.dn, align 8, !tbaa !87 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, %.025.i
  br i1 %i.dr, label %.lr.ph.preheader.i, label %gv_recalloc.exit.._crit_edge_crit_edge.i

gv_recalloc.exit.._crit_edge_crit_edge.i:         ; preds = %gv_recalloc.exit.i
  %.pre.i = sext i32 %.025.i to i64
  br label %make_vn_slot.exit

.lr.ph.preheader.i:                               ; preds = %gv_recalloc.exit.i
  %i.ds = sext i32 %i.dq to i64                   ; 5 uses
  %i.dt = sext i32 %.025.i to i64                 ; 5 uses
  %i.du = sub nsw i64 %i.ds, %i.dt
  %xtraiter = and i64 %i.du, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.dv = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.ds ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 -8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !14 ; 2 uses
  store ptr %i.dx, ptr %i.dv, align 8, !tbaa !14
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 364 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !37
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !37
  %indvars.iv.next.i78.prol = add nsw i64 %i.ds, -1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i77.unr = phi i64 [ %i.ds, %.lr.ph.preheader.i ], [ %indvars.iv.next.i78.prol, %.lr.ph.i.prol ]
  %i.ed = add nsw i64 %i.ds, -1
  %i.ee = icmp eq i64 %i.ed, %i.dt
  br i1 %i.ee, label %make_vn_slot.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i77 = phi i64 [ %indvars.iv.next.i78.1, %.lr.ph.i ], [ %indvars.iv.i77.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ef = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i77 ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 -8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !14 ; 2 uses
  store ptr %i.eh, ptr %i.ef, align 8, !tbaa !14
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 364 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !37
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !37
  %i.en = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i77 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 -8
  %i.ep = getelementptr i8, ptr %i.en, i64 -16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !14 ; 2 uses
  store ptr %i.eq, ptr %i.eo, align 8, !tbaa !14
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 364 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !37
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !37
  %indvars.iv.next.i78.1 = add nsw i64 %indvars.iv.i77, -2 ; 2 uses
  %i.ew = icmp sgt i64 %indvars.iv.next.i78.1, %i.dt
  br i1 %i.ew, label %.lr.ph.i, label %make_vn_slot.exit, !llvm.loop !103

make_vn_slot.exit:                                ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %gv_recalloc.exit.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %gv_recalloc.exit.._crit_edge_crit_edge.i ], [ %i.dt, %.lr.ph.i ], [ %i.dt, %.lr.ph.i.prol.loopexit ]
  %i.ex = tail call ptr @virtual_node(ptr noundef nonnull %i.n) #12 ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %.pre-phi.i ; 2 uses
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !14
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !8  ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 364
  store i32 %.025.i, ptr %i.fb, align 4, !tbaa !37
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 360
  store i32 %i.bp, ptr %i.fc, align 8, !tbaa !50
  %i.fd = load ptr, ptr %i.y, align 8, !tbaa !8   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 264
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !38
  %i.fg = getelementptr inbounds [88 x i8], ptr %i.ff, i64 %i.bq ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !87
  %i.fi = add nsw i32 %i.fh, 1                    ; 2 uses
  store i32 %i.fi, ptr %i.fg, align 8, !tbaa !87
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.fj
  store ptr null, ptr %i.fk, align 8, !tbaa !14
  %i.fl = load ptr, ptr %i.ey, align 8, !tbaa !14 ; 3 uses
  %i.fm = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 120
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !74 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %.sroa.02.0.copyload = load double, ptr %i.fp, align 8, !tbaa !81 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !81 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fd, i64 132
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !92
  %i.fs = and i32 %i.fr, 1
  %.not76 = icmp eq i32 %i.fs, 0                  ; 2 uses
  %.sroa.6.0 = select i1 %.not76, double %.sroa.6.0.copyload, double %.sroa.02.0.copyload ; 2 uses
  %.sroa.02.0 = select i1 %.not76, double %.sroa.02.0.copyload, double %.sroa.6.0.copyload
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 3 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !8  ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 96
  store double %.sroa.6.0, ptr %i.fv, align 8, !tbaa !104
  %i.fw = fmul double %.sroa.6.0, 5.000000e-01    ; 5 uses
  %i.fx = fmul double %.sroa.02.0, 5.000000e-01   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 112
  store double %i.fx, ptr %i.fy, align 8, !tbaa !105
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 104
  store double %i.fx, ptr %i.fz, align 8, !tbaa !106
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 136
  store ptr %i.fo, ptr %i.ga, align 8, !tbaa !57
  %i.gb = fadd double %.0, %i.fw
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  store double %i.gb, ptr %i.gc, align 8, !tbaa !99
  %i.gd = load i32, ptr %0, align 8
  %i.ge = and i32 %i.gd, 3
  %i.gf = icmp eq i32 %i.ge, 3
  %i.gg = select i1 %i.gf, ptr %0, ptr %i.j
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 56
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !33
  %i.gj = tail call ptr @virtual_edge(ptr noundef %i.fl, ptr noundef %i.gi, ptr noundef nonnull %0) #12
  %i.gk = load ptr, ptr %i.ft, align 8, !tbaa !8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 104
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !106
  %i.gn = fneg double %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !8  ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  store double %i.gn, ptr %i.gq, align 8, !tbaa !107
  %i.gr = load i32, ptr %0, align 8
  %i.gs = and i32 %i.gr, 3
  %i.gt = icmp eq i32 %i.gs, 3
  %i.gu = select i1 %i.gt, ptr %0, ptr %i.j
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 56
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !33
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 112
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !105
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gp, i64 72
  store double %i.ha, ptr %i.hb, align 8, !tbaa !108
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gp, i64 152
  store i8 4, ptr %i.hc, align 8, !tbaa !109
  %i.hd = load i32, ptr %0, align 8
  %i.he = and i32 %i.hd, 3
  %i.hf = icmp eq i32 %i.he, 2
  %i.hg = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  %i.hh = select i1 %i.hf, ptr %0, ptr %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 56
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !33
  %i.hk = tail call ptr @virtual_edge(ptr noundef %i.fl, ptr noundef %i.hj, ptr noundef nonnull %0) #12
  %i.hl = load ptr, ptr %i.ft, align 8, !tbaa !8  ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 112
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !105
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !8  ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  store double %i.hn, ptr %i.hq, align 8, !tbaa !107
  %i.hr = load i32, ptr %0, align 8
  %i.hs = and i32 %i.hr, 3
  %i.ht = icmp eq i32 %i.hs, 2
  %i.hu = select i1 %i.ht, ptr %0, ptr %i.hg
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 56
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !33
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 104
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !106
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hp, i64 72
  store double %i.ia, ptr %i.ib, align 8, !tbaa !108
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hp, i64 152
  store i8 4, ptr %i.ic, align 8, !tbaa !109
  %i.id = load ptr, ptr %i.y, align 8, !tbaa !8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 264
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !38
  %i.ig = getelementptr inbounds [88 x i8], ptr %i.if, i64 %i.bq ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 32 ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !100
  %i.ij = fcmp olt double %i.ii, %i.fw
  br i1 %i.ij, label %bb.o, label %bb.p

bb.o:                                             ; preds = %make_vn_slot.exit
  store double %i.fw, ptr %i.ih, align 8, !tbaa !100
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %make_vn_slot.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 40 ; 2 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !101
  %i.im = fcmp olt double %i.il, %i.fw
  br i1 %i.im, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double %i.fw, ptr %i.ik, align 8, !tbaa !101
end_hunk_0
