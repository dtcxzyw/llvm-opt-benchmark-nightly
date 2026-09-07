Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lundump?download=true
inline.NumInlined: 65
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@loadFunction:bb.a
.loadByte.exit33_crit_edge:                       ; preds = %bb.n
  %.pre138 = load i64, ptr %i.e, align 8, !tbaa !22
  %i.bs = trunc i32 %i.bq to i8
  br label %loadByte.exit33

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit33:                                  ; preds = %.loadByte.exit33_crit_edge, %.thread.i32
  %i.bt = phi i64 [ %i.bj, %.thread.i32 ], [ %.pre138, %.loadByte.exit33_crit_edge ]
  %i.bu = phi i8 [ %i.bp, %.thread.i32 ], [ %i.bs, %.loadByte.exit33_crit_edge ] ; 2 uses
  %i.bv = add i64 %i.bt, 1                        ; 2 uses
  store i64 %i.bv, ptr %i.e, align 8, !tbaa !22
  %i.bw = and i8 %i.bu, -5
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !60
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !21
  %.not = icmp eq i8 %i.bz, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %loadByte.exit33
  %i.ca = or i8 %i.bu, 4
  store i8 %i.ca, ptr %i.bx, align 1, !tbaa !60
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %loadByte.exit33
  %i.cb = load ptr, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !24 ; 2 uses
  %i.cd = add i64 %i.cc, -1
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !24
  %.not.i34 = icmp eq i64 %i.cc, 0
  br i1 %.not.i34, label %bb.r, label %.thread.i35

.thread.i35:                                      ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !25 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !25
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !9
  br label %loadByte.exit36

bb.r:                                             ; preds = %bb.q
  %i.ci = tail call i32 @luaZ_fill(ptr noundef nonnull %i.cb) #7 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, -1
  br i1 %i.cj, label %bb.s, label %.loadByte.exit36_crit_edge

.loadByte.exit36_crit_edge:                       ; preds = %bb.r
  %.pre139 = load i64, ptr %i.e, align 8, !tbaa !22
  %i.ck = trunc i32 %i.ci to i8
  br label %loadByte.exit36

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit36:                                  ; preds = %.loadByte.exit36_crit_edge, %.thread.i35
  %i.cl = phi i64 [ %i.bv, %.thread.i35 ], [ %.pre139, %.loadByte.exit36_crit_edge ]
  %i.cm = phi i8 [ %i.ch, %.thread.i35 ], [ %i.ck, %.loadByte.exit36_crit_edge ]
  %i.cn = add i64 %i.cl, 1                        ; 2 uses
  store i64 %i.cn, ptr %i.e, align 8, !tbaa !22
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.cm, ptr %i.co, align 4, !tbaa !61
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %loadByte.exit36
  %i.cp = phi i64 [ %i.cn, %loadByte.exit36 ], [ %i.dc, %bb.x ]
  %.0.i.i.i = phi i64 [ 0, %loadByte.exit36 ], [ %i.dh, %bb.x ] ; 2 uses
  %i.cq = load ptr, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !24 ; 2 uses
  %i.cs = add i64 %i.cr, -1
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !24
  %.not.i.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i.i.i, label %bb.u, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.t
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !25 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !25
  %i.cw = load i8, ptr %i.cu, align 1, !tbaa !9
  br label %loadByte.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.cx = tail call i32 @luaZ_fill(ptr noundef nonnull %i.cq) #7 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, -1
  br i1 %i.cy, label %bb.v, label %.loadByte.exit.i.i.i_crit_edge

.loadByte.exit.i.i.i_crit_edge:                   ; preds = %bb.u
  %.pre140 = load i64, ptr %i.e, align 8, !tbaa !22
  %i.cz = trunc i32 %i.cx to i8
  br label %loadByte.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i.i.i:                              ; preds = %.loadByte.exit.i.i.i_crit_edge, %.thread.i.i.i.i
  %i.da = phi i64 [ %i.cp, %.thread.i.i.i.i ], [ %.pre140, %.loadByte.exit.i.i.i_crit_edge ]
  %i.db = phi i8 [ %i.cw, %.thread.i.i.i.i ], [ %i.cz, %.loadByte.exit.i.i.i_crit_edge ] ; 2 uses
  %i.dc = add i64 %i.da, 1                        ; 3 uses
  store i64 %i.dc, ptr %i.e, align 8, !tbaa !22
  %i.dd = icmp ugt i64 %.0.i.i.i, 16777215
  br i1 %i.dd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %loadByte.exit.i.i.i
  tail call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #8
  unreachable

bb.x:                                             ; preds = %loadByte.exit.i.i.i
  %i.de = shl nuw nsw i64 %.0.i.i.i, 7
  %i.df = and i8 %i.db, 127
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = or disjoint i64 %i.de, %i.dg            ; 4 uses
  %.not.i.i.i37 = icmp sgt i8 %i.db, -1
  br i1 %.not.i.i.i37, label %loadInt.exit.i, label %bb.t

loadInt.exit.i:                                   ; preds = %bb.x
  %i.di = trunc nuw nsw i64 %i.dh to i32          ; 2 uses
  %i.dj = trunc i64 %i.dc to i32
  %i.dk = and i32 %i.dj, 3                        ; 2 uses
  %.not.i.i38 = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i38, label %loadAlign.exit.i, label %bb.y

bb.y:                                             ; preds = %loadInt.exit.i
  %i.dl = sub nuw nsw i32 4, %i.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.dm = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dn = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.do = call i64 @luaZ_read(ptr noundef %i.dn, ptr noundef nonnull %i.c, i64 noundef %i.dm) #7
  %.not.i.i15.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i15.i, label %loadBlock.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadBlock.exit.i.i:                               ; preds = %bb.y
  %i.dp = load i64, ptr %i.e, align 8, !tbaa !22
  %i.dq = add i64 %i.dp, %i.dm
  store i64 %i.dq, ptr %i.e, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %loadAlign.exit.i

loadAlign.exit.i:                                 ; preds = %loadBlock.exit.i.i, %loadInt.exit.i
  %i.dr = load i8, ptr %i.by, align 8, !tbaa !21
  %.not.i39 = icmp eq i8 %i.dr, 0
  br i1 %.not.i39, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %loadAlign.exit.i
  %i.ds = shl nuw nsw i64 %i.dh, 2                ; 2 uses
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.du = call ptr @luaZ_getaddr(ptr noundef %i.dt, i64 noundef %i.ds) #7 ; 2 uses
  %i.dv = load i64, ptr %i.e, align 8, !tbaa !22
  %i.dw = add i64 %i.dv, %i.ds                    ; 2 uses
  store i64 %i.dw, ptr %i.e, align 8, !tbaa !22
  %i.dx = icmp eq ptr %i.du, null
  br i1 %i.dx, label %bb.ab, label %getaddr_.exit.i

bb.ab:                                            ; preds = %bb.aa
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #8
  unreachable

getaddr_.exit.i:                                  ; preds = %bb.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.du, ptr %i.dy, align 8, !tbaa !62
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.di, ptr %i.dz, align 8, !tbaa !63
  br label %loadCode.exit.preheader

bb.ac:                                            ; preds = %loadAlign.exit.i
  %i.ea = load ptr, ptr %0, align 8, !tbaa !19
  %i.eb = shl nuw nsw i64 %i.dh, 2                ; 3 uses
  %i.ec = call ptr @luaM_malloc_(ptr noundef %i.ea, i64 noundef %i.eb, i32 noundef 0) #7 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !62
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.di, ptr %i.ee, align 8, !tbaa !63
  %i.ef = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.eg = call i64 @luaZ_read(ptr noundef %i.ef, ptr noundef %i.ec, i64 noundef %i.eb) #7
  %.not.i16.i = icmp eq i64 %i.eg, 0
  br i1 %.not.i16.i, label %loadBlock.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadBlock.exit.i:                                 ; preds = %bb.ac
  %i.eh = load i64, ptr %i.e, align 8, !tbaa !22
  %i.ei = add i64 %i.eh, %i.eb                    ; 2 uses
  store i64 %i.ei, ptr %i.e, align 8, !tbaa !22
  br label %loadCode.exit.preheader

loadCode.exit.preheader:                          ; preds = %getaddr_.exit.i, %loadBlock.exit.i
  %.ph235 = phi i64 [ %i.ei, %loadBlock.exit.i ], [ %i.dw, %getaddr_.exit.i ]
  br label %loadCode.exit

loadCode.exit:                                    ; preds = %loadCode.exit.preheader, %bb.ah
  %i.ej = phi i64 [ %i.ew, %bb.ah ], [ %.ph235, %loadCode.exit.preheader ]
  %.0.i.i.i40 = phi i64 [ %i.fb, %bb.ah ], [ 0, %loadCode.exit.preheader ] ; 3 uses
  %i.ek = load ptr, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !24 ; 2 uses
  %i.em = add i64 %i.el, -1
  store i64 %i.em, ptr %i.ek, align 8, !tbaa !24
  %.not.i.i.i.i41 = icmp eq i64 %i.el, 0
  br i1 %.not.i.i.i.i41, label %bb.ae, label %.thread.i.i.i.i42

.thread.i.i.i.i42:                                ; preds = %loadCode.exit
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !25 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  store ptr %i.ep, ptr %i.en, align 8, !tbaa !25
  %i.eq = load i8, ptr %i.eo, align 1, !tbaa !9
  br label %loadByte.exit.i.i.i43

bb.ae:                                            ; preds = %loadCode.exit
  %i.er = call i32 @luaZ_fill(ptr noundef nonnull %i.ek) #7 ; 2 uses
  %i.es = icmp eq i32 %i.er, -1
  br i1 %i.es, label %bb.af, label %.loadByte.exit.i.i.i43_crit_edge

.loadByte.exit.i.i.i43_crit_edge:                 ; preds = %bb.ae
  %.pre141 = load i64, ptr %i.e, align 8, !tbaa !22
  %i.et = trunc i32 %i.er to i8
  br label %loadByte.exit.i.i.i43

bb.af:                                            ; preds = %bb.ae
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i.i.i43:                            ; preds = %.loadByte.exit.i.i.i43_crit_edge, %.thread.i.i.i.i42
  %i.eu = phi i64 [ %i.ej, %.thread.i.i.i.i42 ], [ %.pre141, %.loadByte.exit.i.i.i43_crit_edge ]
  %i.ev = phi i8 [ %i.eq, %.thread.i.i.i.i42 ], [ %i.et, %.loadByte.exit.i.i.i43_crit_edge ] ; 3 uses
  %i.ew = add i64 %i.eu, 1                        ; 2 uses
  store i64 %i.ew, ptr %i.e, align 8, !tbaa !22
  %i.ex = icmp ugt i64 %.0.i.i.i40, 16777215
  br i1 %i.ex, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %loadByte.exit.i.i.i43
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #8
  unreachable

bb.ah:                                            ; preds = %loadByte.exit.i.i.i43
  %i.ey = shl nuw nsw i64 %.0.i.i.i40, 7
  %i.ez = and i8 %i.ev, 127
  %i.fa = zext nneg i8 %i.ez to i64               ; 2 uses
  %i.fb = or disjoint i64 %i.ey, %i.fa            ; 6 uses
  %.not.i.i.i44 = icmp sgt i8 %i.ev, -1
  br i1 %.not.i.i.i44, label %loadInt.exit.i45, label %loadCode.exit

loadInt.exit.i45:                                 ; preds = %bb.ah
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = load ptr, ptr %0, align 8, !tbaa !19
  %i.fe = shl nuw nsw i64 %i.fb, 4
  %i.ff = call ptr @luaM_malloc_(ptr noundef %i.fd, i64 noundef %i.fe, i32 noundef 0) #7 ; 10 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !64
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.fc, ptr %i.fh, align 4, !tbaa !65
  %.not.i46 = icmp eq i64 %i.fb, 0
  br i1 %.not.i46, label %loadConstants.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %loadInt.exit.i45
  %2 = shl nuw nsw i64 %.0.i.i.i40, 7
  %3 = add nsw i64 %2, -1
  %4 = zext nneg i8 %i.ev to i64
  %5 = add nsw i64 %3, %4
  %xtraiter = and i64 %i.fa, 7                    ; 4 uses
  %i.fi = icmp ult i64 %5, 7
  br i1 %i.fi, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = sub nsw i64 %i.fb, %xtraiter
  br label %.lr.ph.i

.lr.ph54.i.unr-lcssa:                             ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph54.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph54.i.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.7, %.lr.ph54.i.unr-lcssa ]
  %lcmp.mod250.a = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod250.a)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.i.epil
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i8 0, ptr %i.fk, align 8, !tbaa !44
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph54.i, label %.lr.ph.i.epil, !llvm.loop !53

.lr.ph54.i:                                       ; preds = %.lr.ph.i.epil, %.lr.ph54.i.unr-lcssa
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  br label %bb.ai

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.7, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i8 0, ptr %i.fn, align 8, !tbaa !44
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store i8 0, ptr %i.fp, align 8, !tbaa !44
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  store i8 0, ptr %i.fr, align 8, !tbaa !44
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 56
  store i8 0, ptr %i.ft, align 8, !tbaa !44
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 72
  store i8 0, ptr %i.fv, align 8, !tbaa !44
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 88
  store i8 0, ptr %i.fx, align 8, !tbaa !44
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 104
  store i8 0, ptr %i.fz, align 8, !tbaa !44
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %indvars.iv.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 120
  store i8 0, ptr %i.gb, align 8, !tbaa !44
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph54.i.unr-lcssa, label %.lr.ph.i

bb.ai:                                            ; preds = %bb.ay, %.lr.ph54.i
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph54.i ], [ %indvars.iv.next60.i, %bb.ay ] ; 2 uses
  %i.gc = load ptr, ptr %i.fg, align 8, !tbaa !64
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %indvars.iv59.i ; 9 uses
  %i.ge = load ptr, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !24 ; 2 uses
  %i.gg = add i64 %i.gf, -1
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !24
  %.not.i.i47 = icmp eq i64 %i.gf, 0
  br i1 %.not.i.i47, label %bb.aj, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ai
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !25 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  store ptr %i.gj, ptr %i.gh, align 8, !tbaa !25
  %i.gk = load i8, ptr %i.gi, align 1, !tbaa !9
  %i.gl = zext i8 %i.gk to i32
  br label %loadByte.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.gm = call i32 @luaZ_fill(ptr noundef nonnull %i.ge) #7 ; 2 uses
  %i.gn = icmp eq i32 %i.gm, -1
  br i1 %i.gn, label %bb.ak, label %loadByte.exit.i

bb.ak:                                            ; preds = %bb.aj
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i:                                  ; preds = %bb.aj, %.thread.i.i
  %i.go = phi i32 [ %i.gl, %.thread.i.i ], [ %i.gm, %bb.aj ]
  %i.gp = load i64, ptr %i.e, align 8, !tbaa !22
  %i.gq = add i64 %i.gp, 1                        ; 2 uses
  store i64 %i.gq, ptr %i.e, align 8, !tbaa !22
  %i.gr = trunc i32 %i.go to i8
  switch i8 %i.gr, label %bb.ax [
    i8 0, label %bb.al
    i8 1, label %bb.am
    i8 17, label %bb.an
    i8 19, label %bb.ao
    i8 3, label %.preheader.i
    i8 4, label %bb.au
    i8 20, label %bb.au
  ]

bb.al:                                            ; preds = %loadByte.exit.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i8 0, ptr %i.gs, align 8, !tbaa !44
  br label %bb.ay

bb.am:                                            ; preds = %loadByte.exit.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i8 1, ptr %i.gt, align 8, !tbaa !44
  br label %bb.ay

bb.an:                                            ; preds = %loadByte.exit.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i8 17, ptr %i.gu, align 8, !tbaa !44
  br label %bb.ay

bb.ao:                                            ; preds = %loadByte.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.gv = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.gw = call i64 @luaZ_read(ptr noundef %i.gv, ptr noundef nonnull %i.b, i64 noundef 8) #7
  %.not.i.i43.i = icmp eq i64 %i.gw, 0
  br i1 %.not.i.i43.i, label %loadNumber.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadNumber.exit.i:                                ; preds = %bb.ao
  %i.gx = load i64, ptr %i.e, align 8, !tbaa !22
  %i.gy = add i64 %i.gx, 8
  store i64 %i.gy, ptr %i.e, align 8, !tbaa !22
  %i.gz = load double, ptr %i.b, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  store double %i.gz, ptr %i.gd, align 8, !tbaa !9
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i8 19, ptr %i.ha, align 8, !tbaa !44
  br label %bb.ay

.preheader.i:                                     ; preds = %loadByte.exit.i, %bb.at
  %i.hb = phi i64 [ %i.ho, %bb.at ], [ %i.gq, %loadByte.exit.i ]
  %.0.i.i44.i = phi i64 [ %i.ht, %bb.at ], [ 0, %loadByte.exit.i ] ; 2 uses
  %i.hc = load ptr, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !24 ; 2 uses
  %i.he = add i64 %i.hd, -1
  store i64 %i.he, ptr %i.hc, align 8, !tbaa !24
  %.not.i.i.i45.i = icmp eq i64 %i.hd, 0
  br i1 %.not.i.i.i45.i, label %bb.aq, label %.thread.i.i.i46.i

.thread.i.i.i46.i:                                ; preds = %.preheader.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !25 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  store ptr %i.hh, ptr %i.hf, align 8, !tbaa !25
  %i.hi = load i8, ptr %i.hg, align 1, !tbaa !9
  br label %loadByte.exit.i.i47.i

bb.aq:                                            ; preds = %.preheader.i
  %i.hj = call i32 @luaZ_fill(ptr noundef nonnull %i.hc) #7 ; 2 uses
  %i.hk = icmp eq i32 %i.hj, -1
  br i1 %i.hk, label %bb.ar, label %.loadByte.exit.i.i47_crit_edge.i

.loadByte.exit.i.i47_crit_edge.i:                 ; preds = %bb.aq
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !22
  %i.hl = trunc i32 %i.hj to i8
  br label %loadByte.exit.i.i47.i

bb.ar:                                            ; preds = %bb.aq
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i.i47.i:                            ; preds = %.loadByte.exit.i.i47_crit_edge.i, %.thread.i.i.i46.i
  %i.hm = phi i64 [ %i.hb, %.thread.i.i.i46.i ], [ %.pre.i, %.loadByte.exit.i.i47_crit_edge.i ]
  %i.hn = phi i8 [ %i.hi, %.thread.i.i.i46.i ], [ %i.hl, %.loadByte.exit.i.i47_crit_edge.i ] ; 2 uses
  %i.ho = add i64 %i.hm, 1                        ; 2 uses
  store i64 %i.ho, ptr %i.e, align 8, !tbaa !22
  %i.hp = icmp ugt i64 %.0.i.i44.i, 144115188075855871
  br i1 %i.hp, label %bb.as, label %bb.at

bb.as:                                            ; preds = %loadByte.exit.i.i47.i
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #8
  unreachable

bb.at:                                            ; preds = %loadByte.exit.i.i47.i
  %i.hq = shl nuw i64 %.0.i.i44.i, 7
  %i.hr = and i8 %i.hn, 127
  %i.hs = zext nneg i8 %i.hr to i64               ; 2 uses
  %i.ht = or disjoint i64 %i.hq, %i.hs            ; 2 uses
  %.not.i.i48.i = icmp sgt i8 %i.hn, -1
  br i1 %.not.i.i48.i, label %loadInteger.exit.i, label %.preheader.i

loadInteger.exit.i:                               ; preds = %bb.at
  %i.hu = lshr i64 %i.ht, 1
  %i.hv = and i64 %i.hs, 1
  %sext.i.i = sub nsw i64 0, %i.hv
  %.0.i.i48 = xor i64 %i.hu, %sext.i.i
  store i64 %.0.i.i48, ptr %i.gd, align 8, !tbaa !9
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i8 3, ptr %i.hw, align 8, !tbaa !44
  br label %bb.ay

bb.au:                                            ; preds = %loadByte.exit.i, %loadByte.exit.i
  call fastcc void @loadString(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.fl)
  %i.hx = load ptr, ptr %i.fl, align 8, !tbaa !67 ; 3 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #8
  unreachable

bb.aw:                                            ; preds = %bb.au
  store ptr %i.hx, ptr %i.gd, align 8, !tbaa !9
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.ia = load i8, ptr %i.hz, align 8, !tbaa !46
  %i.ib = or i8 %i.ia, 64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i8 %i.ib, ptr %i.ic, align 8, !tbaa !44
  store ptr null, ptr %i.fl, align 8, !tbaa !67
  br label %bb.ay

bb.ax:                                            ; preds = %loadByte.exit.i
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #8
  unreachable

bb.ay:                                            ; preds = %bb.aw, %loadInteger.exit.i, %loadNumber.exit.i, %bb.an, %bb.am, %bb.al
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond64.not.i = icmp eq i64 %indvars.iv.next60.i, %i.fb
  br i1 %exitcond64.not.i, label %loadConstants.exit.preheader, label %bb.ai

loadConstants.exit.preheader:                     ; preds = %bb.ay, %loadInt.exit.i45
  br label %loadConstants.exit

loadConstants.exit:                               ; preds = %loadConstants.exit.preheader, %bb.bc
  %.0.i.i.i49 = phi i64 [ %i.iv, %bb.bc ], [ 0, %loadConstants.exit.preheader ] ; 3 uses
  %i.id = load ptr, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !24 ; 2 uses
  %i.if = add i64 %i.ie, -1
  store i64 %i.if, ptr %i.id, align 8, !tbaa !24
  %.not.i.i.i.i50 = icmp eq i64 %i.ie, 0
  br i1 %.not.i.i.i.i50, label %bb.az, label %.thread.i.i.i.i51

.thread.i.i.i.i51:                                ; preds = %loadConstants.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !25 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  store ptr %i.ii, ptr %i.ig, align 8, !tbaa !25
  %i.ij = load i8, ptr %i.ih, align 1, !tbaa !9
  %i.ik = zext i8 %i.ij to i32
  br label %loadByte.exit.i.i.i52

bb.az:                                            ; preds = %loadConstants.exit
  %i.il = call i32 @luaZ_fill(ptr noundef nonnull %i.id) #7 ; 2 uses
  %i.im = icmp eq i32 %i.il, -1
  br i1 %i.im, label %bb.ba, label %loadByte.exit.i.i.i52

bb.ba:                                            ; preds = %bb.az
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i.i.i52:                            ; preds = %bb.az, %.thread.i.i.i.i51
  %i.in = phi i32 [ %i.ik, %.thread.i.i.i.i51 ], [ %i.il, %bb.az ] ; 2 uses
  %i.io = load i64, ptr %i.e, align 8, !tbaa !22
  %i.ip = add i64 %i.io, 1
  store i64 %i.ip, ptr %i.e, align 8, !tbaa !22
  %i.iq = icmp ugt i64 %.0.i.i.i49, 16777215
  br i1 %i.iq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %loadByte.exit.i.i.i52
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #8
  unreachable

bb.bc:                                            ; preds = %loadByte.exit.i.i.i52
  %i.ir = trunc i32 %i.in to i8                   ; 2 uses
  %i.is = shl nuw nsw i64 %.0.i.i.i49, 7
  %i.it = and i8 %i.ir, 127
  %i.iu = zext nneg i8 %i.it to i64               ; 2 uses
  %i.iv = or disjoint i64 %i.is, %i.iu            ; 6 uses
  %.not.i.i.i53 = icmp sgt i8 %i.ir, -1
  br i1 %.not.i.i.i53, label %loadInt.exit.i54, label %loadConstants.exit

loadInt.exit.i54:                                 ; preds = %bb.bc
  %i.iw = trunc nuw nsw i64 %i.iv to i32
  %i.ix = load ptr, ptr %0, align 8, !tbaa !19
  %i.iy = shl nuw nsw i64 %i.iv, 4
  %i.iz = call ptr @luaM_malloc_(ptr noundef %i.ix, i64 noundef %i.iy, i32 noundef 0) #7 ; 7 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !68
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 %i.iw, ptr %i.jb, align 8, !tbaa !42
  %.not.i55 = icmp eq i64 %i.iv, 0
  br i1 %.not.i55, label %loadUpvalues.exit.preheader, label %.lr.ph.i56.preheader

.lr.ph.i56.preheader:                             ; preds = %loadInt.exit.i54
  %6 = shl nuw nsw i64 %.0.i.i.i49, 7
  %7 = add nsw i64 %6, -1
  %8 = and i32 %i.in, 127
  %9 = zext nneg i32 %8 to i64
  %10 = add nsw i64 %7, %9
  %xtraiter255 = and i64 %i.iu, 3                 ; 4 uses
  %i.jc = icmp ult i64 %10, 3
  br i1 %i.jc, label %.lr.ph.i56.epil.preheader, label %.lr.ph.i56.preheader.new

.lr.ph.i56.preheader.new:                         ; preds = %.lr.ph.i56.preheader
  %unroll_iter259 = sub nsw i64 %i.iv, %xtraiter255
  br label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %.lr.ph.i56, %.lr.ph.i56.preheader.new
  %indvars.iv.i57 = phi i64 [ 0, %.lr.ph.i56.preheader.new ], [ %indvars.iv.next.i58.3, %.lr.ph.i56 ] ; 5 uses
  %niter260 = phi i64 [ 0, %.lr.ph.i56.preheader.new ], [ %niter260.next.3, %.lr.ph.i56 ]
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %indvars.iv.i57
  store ptr null, ptr %i.jd, align 8, !tbaa !70
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %indvars.iv.i57
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store ptr null, ptr %i.jf, align 8, !tbaa !70
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %indvars.iv.i57
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  store ptr null, ptr %i.jh, align 8, !tbaa !70
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %indvars.iv.i57
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  store ptr null, ptr %i.jj, align 8, !tbaa !70
  %indvars.iv.next.i58.3 = add nuw nsw i64 %indvars.iv.i57, 4 ; 2 uses
  %niter260.next.3 = add i64 %niter260, 4         ; 2 uses
  %niter260.ncmp.3 = icmp eq i64 %niter260.next.3, %unroll_iter259
  br i1 %niter260.ncmp.3, label %.lr.ph31.i.preheader.unr-lcssa, label %.lr.ph.i56

.lr.ph31.i.preheader.unr-lcssa:                   ; preds = %.lr.ph.i56
  %lcmp.mod257.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod257.not, label %.lr.ph31.i.preheader, label %.lr.ph.i56.epil.preheader

.lr.ph.i56.epil.preheader:                        ; preds = %.lr.ph31.i.preheader.unr-lcssa, %.lr.ph.i56.preheader
  %indvars.iv.i57.epil.init = phi i64 [ 0, %.lr.ph.i56.preheader ], [ %indvars.iv.next.i58.3, %.lr.ph31.i.preheader.unr-lcssa ]
  %lcmp.mod258 = icmp ne i64 %xtraiter255, 0
  call void @llvm.assume(i1 %lcmp.mod258)
  br label %.lr.ph.i56.epil

.lr.ph.i56.epil:                                  ; preds = %.lr.ph.i56.epil, %.lr.ph.i56.epil.preheader
  %indvars.iv.i57.epil = phi i64 [ %indvars.iv.next.i58.epil, %.lr.ph.i56.epil ], [ %indvars.iv.i57.epil.init, %.lr.ph.i56.epil.preheader ] ; 2 uses
  %epil.iter256 = phi i64 [ %epil.iter256.next, %.lr.ph.i56.epil ], [ 0, %.lr.ph.i56.epil.preheader ]
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %indvars.iv.i57.epil
  store ptr null, ptr %i.jk, align 8, !tbaa !70
  %indvars.iv.next.i58.epil = add nuw nsw i64 %indvars.iv.i57.epil, 1
  %epil.iter256.next = add i64 %epil.iter256, 1   ; 2 uses
  %epil.iter256.cmp.not = icmp eq i64 %epil.iter256.next, %xtraiter255
  br i1 %epil.iter256.cmp.not, label %.lr.ph31.i.preheader, label %.lr.ph.i56.epil, !llvm.loop !54

.lr.ph31.i.preheader:                             ; preds = %.lr.ph.i56.epil, %.lr.ph31.i.preheader.unr-lcssa
  br label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %loadByte.exit28.i
  %i.jl = phi ptr [ %i.lc, %loadByte.exit28.i ], [ %i.iz, %.lr.ph31.i.preheader ]
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %loadByte.exit28.i ], [ 0, %.lr.ph31.i.preheader ] ; 4 uses
  %i.jm = load ptr, ptr %i.d, align 8, !tbaa !20  ; 5 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !24 ; 2 uses
  %i.jo = add i64 %i.jn, -1                       ; 2 uses
  store i64 %i.jo, ptr %i.jm, align 8, !tbaa !24
  %.not.i.i60 = icmp eq i64 %i.jn, 0
  br i1 %.not.i.i60, label %bb.bd, label %.thread.i.i61

.thread.i.i61:                                    ; preds = %.lr.ph31.i
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !25 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 1
  store ptr %i.jr, ptr %i.jp, align 8, !tbaa !25
  %i.js = load i8, ptr %i.jq, align 1, !tbaa !9
  br label %loadByte.exit.i62

bb.bd:                                            ; preds = %.lr.ph31.i
  %i.jt = call i32 @luaZ_fill(ptr noundef nonnull %i.jm) #7 ; 2 uses
  %i.ju = icmp eq i32 %i.jt, -1
  br i1 %i.ju, label %bb.be, label %.loadByte.exit_crit_edge.i

.loadByte.exit_crit_edge.i:                       ; preds = %bb.bd
  %.pre.i63 = load ptr, ptr %i.ja, align 8, !tbaa !68
  %.pre40.i = load ptr, ptr %i.d, align 8, !tbaa !20 ; 2 uses
  %.pre41.i = load i64, ptr %.pre40.i, align 8, !tbaa !24
  %i.jv = trunc i32 %i.jt to i8
  br label %loadByte.exit.i62

bb.be:                                            ; preds = %bb.bd
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i62:                                ; preds = %.loadByte.exit_crit_edge.i, %.thread.i.i61
  %i.jw = phi ptr [ %i.jl, %.thread.i.i61 ], [ %.pre.i63, %.loadByte.exit_crit_edge.i ] ; 2 uses
  %i.jx = phi i64 [ %i.jo, %.thread.i.i61 ], [ %.pre41.i, %.loadByte.exit_crit_edge.i ] ; 2 uses
  %i.jy = phi ptr [ %i.jm, %.thread.i.i61 ], [ %.pre40.i, %.loadByte.exit_crit_edge.i ] ; 4 uses
  %i.jz = phi i8 [ %i.js, %.thread.i.i61 ], [ %i.jv, %.loadByte.exit_crit_edge.i ]
  %i.ka = load i64, ptr %i.e, align 8, !tbaa !22
  %i.kb = add i64 %i.ka, 1                        ; 2 uses
  store i64 %i.kb, ptr %i.e, align 8, !tbaa !22
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.jw, i64 %indvars.iv34.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store i8 %i.jz, ptr %i.kd, align 8, !tbaa !71
  %i.ke = add i64 %i.jx, -1                       ; 2 uses
  store i64 %i.ke, ptr %i.jy, align 8, !tbaa !24
  %.not.i23.i = icmp eq i64 %i.jx, 0
  br i1 %.not.i23.i, label %bb.bf, label %.thread.i24.i

.thread.i24.i:                                    ; preds = %loadByte.exit.i62
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !25 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  store ptr %i.kh, ptr %i.kf, align 8, !tbaa !25
  %i.ki = load i8, ptr %i.kg, align 1, !tbaa !9
  br label %loadByte.exit25.i

bb.bf:                                            ; preds = %loadByte.exit.i62
  %i.kj = call i32 @luaZ_fill(ptr noundef nonnull %i.jy) #7 ; 2 uses
  %i.kk = icmp eq i32 %i.kj, -1
  br i1 %i.kk, label %bb.bg, label %.loadByte.exit25_crit_edge.i

.loadByte.exit25_crit_edge.i:                     ; preds = %bb.bf
  %.pre42.i = load i64, ptr %i.e, align 8, !tbaa !22
  %.pre43.i = load ptr, ptr %i.ja, align 8, !tbaa !68
  %.pre44.i = load ptr, ptr %i.d, align 8, !tbaa !20 ; 2 uses
  %.pre45.i = load i64, ptr %.pre44.i, align 8, !tbaa !24
  %i.kl = trunc i32 %i.kj to i8
  br label %loadByte.exit25.i

bb.bg:                                            ; preds = %bb.bf
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit25.i:                                ; preds = %.loadByte.exit25_crit_edge.i, %.thread.i24.i
  %i.km = phi ptr [ %i.jw, %.thread.i24.i ], [ %.pre43.i, %.loadByte.exit25_crit_edge.i ] ; 2 uses
  %i.kn = phi i64 [ %i.ke, %.thread.i24.i ], [ %.pre45.i, %.loadByte.exit25_crit_edge.i ] ; 2 uses
  %i.ko = phi ptr [ %i.jy, %.thread.i24.i ], [ %.pre44.i, %.loadByte.exit25_crit_edge.i ] ; 3 uses
  %i.kp = phi i64 [ %i.kb, %.thread.i24.i ], [ %.pre42.i, %.loadByte.exit25_crit_edge.i ]
  %i.kq = phi i8 [ %i.ki, %.thread.i24.i ], [ %i.kl, %.loadByte.exit25_crit_edge.i ]
  %i.kr = add i64 %i.kp, 1                        ; 2 uses
  store i64 %i.kr, ptr %i.e, align 8, !tbaa !22
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %i.km, i64 %indvars.iv34.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 9
  store i8 %i.kq, ptr %i.kt, align 1, !tbaa !72
  %i.ku = add i64 %i.kn, -1
  store i64 %i.ku, ptr %i.ko, align 8, !tbaa !24
  %.not.i26.i = icmp eq i64 %i.kn, 0
  br i1 %.not.i26.i, label %bb.bh, label %.thread.i27.i

.thread.i27.i:                                    ; preds = %loadByte.exit25.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ko, i64 8 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !25 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 1
  store ptr %i.kx, ptr %i.kv, align 8, !tbaa !25
  %i.ky = load i8, ptr %i.kw, align 1, !tbaa !9
  br label %loadByte.exit28.i

bb.bh:                                            ; preds = %loadByte.exit25.i
  %i.kz = call i32 @luaZ_fill(ptr noundef nonnull %i.ko) #7 ; 2 uses
  %i.la = icmp eq i32 %i.kz, -1
  br i1 %i.la, label %bb.bi, label %.loadByte.exit28_crit_edge.i

.loadByte.exit28_crit_edge.i:                     ; preds = %bb.bh
  %.pre46.i = load i64, ptr %i.e, align 8, !tbaa !22
  %.pre47.i = load ptr, ptr %i.ja, align 8, !tbaa !68
  %i.lb = trunc i32 %i.kz to i8
  br label %loadByte.exit28.i

bb.bi:                                            ; preds = %bb.bh
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit28.i:                                ; preds = %.loadByte.exit28_crit_edge.i, %.thread.i27.i
  %i.lc = phi ptr [ %i.km, %.thread.i27.i ], [ %.pre47.i, %.loadByte.exit28_crit_edge.i ] ; 2 uses
  %i.ld = phi i64 [ %i.kr, %.thread.i27.i ], [ %.pre46.i, %.loadByte.exit28_crit_edge.i ]
  %i.le = phi i8 [ %i.ky, %.thread.i27.i ], [ %i.lb, %.loadByte.exit28_crit_edge.i ]
  %i.lf = add i64 %i.ld, 1
  store i64 %i.lf, ptr %i.e, align 8, !tbaa !22
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.lc, i64 %indvars.iv34.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 10
  store i8 %i.le, ptr %i.lh, align 2, !tbaa !73
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next35.i, %i.iv
  br i1 %exitcond39.not.i, label %loadUpvalues.exit.preheader, label %.lr.ph31.i

loadUpvalues.exit.preheader:                      ; preds = %loadByte.exit28.i, %loadInt.exit.i54
  br label %loadUpvalues.exit

loadUpvalues.exit:                                ; preds = %loadUpvalues.exit.preheader, %bb.bm
  %.0.i.i83 = phi i64 [ %i.ma, %bb.bm ], [ 0, %loadUpvalues.exit.preheader ] ; 2 uses
  %i.li = load ptr, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !24 ; 2 uses
  %i.lk = add i64 %i.lj, -1
  store i64 %i.lk, ptr %i.li, align 8, !tbaa !24
  %.not.i.i.i84 = icmp eq i64 %i.lj, 0
  br i1 %.not.i.i.i84, label %bb.bj, label %.thread.i.i.i85

.thread.i.i.i85:                                  ; preds = %loadUpvalues.exit
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 8 ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !25 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  store ptr %i.ln, ptr %i.ll, align 8, !tbaa !25
  %i.lo = load i8, ptr %i.lm, align 1, !tbaa !9
  %i.lp = zext i8 %i.lo to i32
  br label %loadByte.exit.i.i86

bb.bj:                                            ; preds = %loadUpvalues.exit
  %i.lq = call i32 @luaZ_fill(ptr noundef nonnull %i.li) #7 ; 2 uses
  %i.lr = icmp eq i32 %i.lq, -1
  br i1 %i.lr, label %bb.bk, label %loadByte.exit.i.i86

bb.bk:                                            ; preds = %bb.bj
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable
end_hunk_0
begin_hunk_1_@loadFunction:bb.a

bb.bv:                                            ; preds = %loadByte.exit.i.i.i68
  %i.nj = trunc i32 %i.nf to i8                   ; 2 uses
  %i.nk = shl nuw nsw i64 %.0.i.i.i65, 7
  %i.nl = and i8 %i.nj, 127
  %i.nm = zext nneg i8 %i.nl to i64
  %i.nn = or disjoint i64 %i.nk, %i.nm            ; 7 uses
  %.not.i.i.i69 = icmp sgt i8 %i.nj, -1
  br i1 %.not.i.i.i69, label %loadInt.exit.i70, label %bb.br

loadInt.exit.i70:                                 ; preds = %bb.bv
  %i.no = trunc nuw nsw i64 %i.nn to i32          ; 2 uses
  %i.np = load i8, ptr %i.by, align 8, !tbaa !21
  %.not.i71 = icmp eq i8 %i.np, 0
  br i1 %.not.i71, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %loadInt.exit.i70
  %i.nq = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.nr = call ptr @luaZ_getaddr(ptr noundef %i.nq, i64 noundef %i.nn) #7 ; 2 uses
  %i.ns = load i64, ptr %i.e, align 8, !tbaa !22
  %i.nt = add i64 %i.ns, %i.nn                    ; 2 uses
  store i64 %i.nt, ptr %i.e, align 8, !tbaa !22
  %i.nu = icmp eq ptr %i.nr, null
  br i1 %i.nu, label %bb.bx, label %getaddr_.exit.i72

bb.bx:                                            ; preds = %bb.bw
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #8
  unreachable

getaddr_.exit.i72:                                ; preds = %bb.bw
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.nr, ptr %i.nv, align 8, !tbaa !77
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.no, ptr %i.nw, align 4, !tbaa !78
  br label %.preheader225

bb.by:                                            ; preds = %loadInt.exit.i70
  %i.nx = load ptr, ptr %0, align 8, !tbaa !19
  %i.ny = call ptr @luaM_malloc_(ptr noundef %i.nx, i64 noundef %i.nn, i32 noundef 0) #7 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.ny, ptr %i.nz, align 8, !tbaa !77
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.no, ptr %i.oa, align 4, !tbaa !78
  %i.ob = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.oc = call i64 @luaZ_read(ptr noundef %i.ob, ptr noundef %i.ny, i64 noundef %i.nn) #7
  %.not.i.i81 = icmp eq i64 %i.oc, 0
  br i1 %.not.i.i81, label %loadBlock.exit.i82, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadBlock.exit.i82:                               ; preds = %bb.by
  %i.od = load i64, ptr %i.e, align 8, !tbaa !22
  %i.oe = add i64 %i.od, %i.nn                    ; 2 uses
  store i64 %i.oe, ptr %i.e, align 8, !tbaa !22
  br label %.preheader225

.preheader225:                                    ; preds = %loadBlock.exit.i82, %getaddr_.exit.i72
  %.ph226 = phi i64 [ %i.nt, %getaddr_.exit.i72 ], [ %i.oe, %loadBlock.exit.i82 ]
  br label %bb.ca

bb.ca:                                            ; preds = %.preheader225, %bb.ce
  %i.of = phi i64 [ %i.os, %bb.ce ], [ %.ph226, %.preheader225 ]
  %.0.i.i71.i = phi i64 [ %i.ox, %bb.ce ], [ 0, %.preheader225 ] ; 2 uses
  %i.og = load ptr, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !24 ; 2 uses
  %i.oi = add i64 %i.oh, -1
  store i64 %i.oi, ptr %i.og, align 8, !tbaa !24
  %.not.i.i.i72.i = icmp eq i64 %i.oh, 0
  br i1 %.not.i.i.i72.i, label %bb.cb, label %.thread.i.i.i73.i

.thread.i.i.i73.i:                                ; preds = %bb.ca
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 8 ; 2 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !25 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 1
  store ptr %i.ol, ptr %i.oj, align 8, !tbaa !25
  %i.om = load i8, ptr %i.ok, align 1, !tbaa !9
  br label %loadByte.exit.i.i74.i

bb.cb:                                            ; preds = %bb.ca
  %i.on = call i32 @luaZ_fill(ptr noundef nonnull %i.og) #7 ; 2 uses
  %i.oo = icmp eq i32 %i.on, -1
  br i1 %i.oo, label %bb.cc, label %.loadByte.exit.i.i74_crit_edge.i

.loadByte.exit.i.i74_crit_edge.i:                 ; preds = %bb.cb
  %.pre.i80 = load i64, ptr %i.e, align 8, !tbaa !22
  %i.op = trunc i32 %i.on to i8
  br label %loadByte.exit.i.i74.i

bb.cc:                                            ; preds = %bb.cb
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i.i74.i:                            ; preds = %.loadByte.exit.i.i74_crit_edge.i, %.thread.i.i.i73.i
  %i.oq = phi i64 [ %i.of, %.thread.i.i.i73.i ], [ %.pre.i80, %.loadByte.exit.i.i74_crit_edge.i ]
  %i.or = phi i8 [ %i.om, %.thread.i.i.i73.i ], [ %i.op, %.loadByte.exit.i.i74_crit_edge.i ] ; 2 uses
  %i.os = add i64 %i.oq, 1                        ; 4 uses
  store i64 %i.os, ptr %i.e, align 8, !tbaa !22
  %i.ot = icmp ugt i64 %.0.i.i71.i, 16777215
  br i1 %i.ot, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %loadByte.exit.i.i74.i
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #8
  unreachable

bb.ce:                                            ; preds = %loadByte.exit.i.i74.i
  %i.ou = shl nuw nsw i64 %.0.i.i71.i, 7
  %i.ov = and i8 %i.or, 127
  %i.ow = zext nneg i8 %i.ov to i64
  %i.ox = or disjoint i64 %i.ou, %i.ow            ; 5 uses
  %.not.i.i75.i = icmp sgt i8 %i.or, -1
  br i1 %.not.i.i75.i, label %loadInt.exit76.i, label %bb.ca

loadInt.exit76.i:                                 ; preds = %bb.ce
  %i.oy = trunc nuw nsw i64 %i.ox to i32          ; 2 uses
  %.not106.i = icmp eq i64 %i.ox, 0
  br i1 %.not106.i, label %.preheader, label %bb.cf

bb.cf:                                            ; preds = %loadInt.exit76.i
  %i.oz = trunc i64 %i.os to i32
  %i.pa = and i32 %i.oz, 3                        ; 2 uses
  %.not.i77.i = icmp eq i32 %i.pa, 0
  br i1 %.not.i77.i, label %loadAlign.exit.i74, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pb = sub nuw nsw i32 4, %i.pa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.pc = zext nneg i32 %i.pb to i64              ; 2 uses
  %i.pd = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.pe = call i64 @luaZ_read(ptr noundef %i.pd, ptr noundef nonnull %i.a, i64 noundef %i.pc) #7
  %.not.i.i78.i = icmp eq i64 %i.pe, 0
  br i1 %.not.i.i78.i, label %loadBlock.exit.i.i73, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadBlock.exit.i.i73:                             ; preds = %bb.cg
  %i.pf = load i64, ptr %i.e, align 8, !tbaa !22
  %i.pg = add i64 %i.pf, %i.pc
  store i64 %i.pg, ptr %i.e, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %loadAlign.exit.i74

loadAlign.exit.i74:                               ; preds = %loadBlock.exit.i.i73, %bb.cf
  %i.ph = load i8, ptr %i.by, align 8, !tbaa !21
  %.not69.i = icmp eq i8 %i.ph, 0
  br i1 %.not69.i, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %loadAlign.exit.i74
  %i.pi = shl nuw nsw i64 %i.ox, 3                ; 2 uses
  %i.pj = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.pk = call ptr @luaZ_getaddr(ptr noundef %i.pj, i64 noundef %i.pi) #7 ; 2 uses
  %i.pl = load i64, ptr %i.e, align 8, !tbaa !22
  %i.pm = add i64 %i.pl, %i.pi                    ; 2 uses
  store i64 %i.pm, ptr %i.e, align 8, !tbaa !22
  %i.pn = icmp eq ptr %i.pk, null
  br i1 %i.pn, label %bb.cj, label %getaddr_.exit79.i

bb.cj:                                            ; preds = %bb.ci
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #8
  unreachable

getaddr_.exit79.i:                                ; preds = %bb.ci
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.pk, ptr %i.po, align 8, !tbaa !79
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.oy, ptr %i.pp, align 8, !tbaa !80
  br label %.preheader

bb.ck:                                            ; preds = %loadAlign.exit.i74
  %i.pq = load ptr, ptr %0, align 8, !tbaa !19
  %i.pr = shl nuw nsw i64 %i.ox, 3                ; 3 uses
  %i.ps = call ptr @luaM_malloc_(ptr noundef %i.pq, i64 noundef %i.pr, i32 noundef 0) #7 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.ps, ptr %i.pt, align 8, !tbaa !79
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.oy, ptr %i.pu, align 8, !tbaa !80
  %i.pv = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.pw = call i64 @luaZ_read(ptr noundef %i.pv, ptr noundef %i.ps, i64 noundef %i.pr) #7
  %.not.i80.i = icmp eq i64 %i.pw, 0
  br i1 %.not.i80.i, label %loadBlock.exit81.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadBlock.exit81.i:                               ; preds = %bb.ck
  %i.px = load i64, ptr %i.e, align 8, !tbaa !22
  %i.py = add i64 %i.px, %i.pr                    ; 2 uses
  store i64 %i.py, ptr %i.e, align 8, !tbaa !22
  br label %.preheader

.preheader:                                       ; preds = %loadBlock.exit81.i, %getaddr_.exit79.i, %loadInt.exit76.i
  %.ph = phi i64 [ %i.os, %loadInt.exit76.i ], [ %i.py, %loadBlock.exit81.i ], [ %i.pm, %getaddr_.exit79.i ]
  br label %bb.cm

bb.cm:                                            ; preds = %.preheader, %bb.cq
  %i.pz = phi i64 [ %i.qm, %bb.cq ], [ %.ph, %.preheader ]
  %.0.i.i82.i = phi i64 [ %i.qr, %bb.cq ], [ 0, %.preheader ] ; 3 uses
  %i.qa = load ptr, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !24 ; 2 uses
  %i.qc = add i64 %i.qb, -1
  store i64 %i.qc, ptr %i.qa, align 8, !tbaa !24
  %.not.i.i.i83.i = icmp eq i64 %i.qb, 0
  br i1 %.not.i.i.i83.i, label %bb.cn, label %.thread.i.i.i84.i

.thread.i.i.i84.i:                                ; preds = %bb.cm
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 8 ; 2 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !25 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 1
  store ptr %i.qf, ptr %i.qd, align 8, !tbaa !25
  %i.qg = load i8, ptr %i.qe, align 1, !tbaa !9
  br label %loadByte.exit.i.i85.i

bb.cn:                                            ; preds = %bb.cm
  %i.qh = call i32 @luaZ_fill(ptr noundef nonnull %i.qa) #7 ; 2 uses
  %i.qi = icmp eq i32 %i.qh, -1
  br i1 %i.qi, label %bb.co, label %.loadByte.exit.i.i85_crit_edge.i

.loadByte.exit.i.i85_crit_edge.i:                 ; preds = %bb.cn
  %.pre141.i = load i64, ptr %i.e, align 8, !tbaa !22
  %i.qj = trunc i32 %i.qh to i8
  br label %loadByte.exit.i.i85.i

bb.co:                                            ; preds = %bb.cn
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i.i85.i:                            ; preds = %.loadByte.exit.i.i85_crit_edge.i, %.thread.i.i.i84.i
  %i.qk = phi i64 [ %i.pz, %.thread.i.i.i84.i ], [ %.pre141.i, %.loadByte.exit.i.i85_crit_edge.i ]
  %i.ql = phi i8 [ %i.qg, %.thread.i.i.i84.i ], [ %i.qj, %.loadByte.exit.i.i85_crit_edge.i ] ; 3 uses
  %i.qm = add i64 %i.qk, 1                        ; 2 uses
  store i64 %i.qm, ptr %i.e, align 8, !tbaa !22
  %i.qn = icmp ugt i64 %.0.i.i82.i, 16777215
  br i1 %i.qn, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %loadByte.exit.i.i85.i
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #8
  unreachable

bb.cq:                                            ; preds = %loadByte.exit.i.i85.i
  %i.qo = shl nuw nsw i64 %.0.i.i82.i, 7
  %i.qp = and i8 %i.ql, 127
  %i.qq = zext nneg i8 %i.qp to i64               ; 2 uses
  %i.qr = or disjoint i64 %i.qo, %i.qq            ; 6 uses
  %.not.i.i86.i = icmp sgt i8 %i.ql, -1
  br i1 %.not.i.i86.i, label %loadInt.exit87.i, label %bb.cm

loadInt.exit87.i:                                 ; preds = %bb.cq
  %i.qs = trunc nuw nsw i64 %i.qr to i32
  %i.qt = load ptr, ptr %0, align 8, !tbaa !19
  %i.qu = shl nuw nsw i64 %i.qr, 4
  %i.qv = call ptr @luaM_malloc_(ptr noundef %i.qt, i64 noundef %i.qu, i32 noundef 0) #7 ; 7 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  store ptr %i.qv, ptr %i.qw, align 8, !tbaa !81
  %i.qx = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.qs, ptr %i.qx, align 4, !tbaa !82
  %.not120.i = icmp eq i64 %i.qr, 0
  br i1 %.not120.i, label %.preheader.i79.preheader, label %.lr.ph.i75.preheader

.lr.ph.i75.preheader:                             ; preds = %loadInt.exit87.i
  %11 = shl nuw nsw i64 %.0.i.i82.i, 7
  %12 = add nsw i64 %11, -1
  %13 = zext nneg i8 %i.ql to i64
  %14 = add nsw i64 %12, %13
  %xtraiter265 = and i64 %i.qq, 3                 ; 4 uses
  %i.qy = icmp ult i64 %14, 3
  br i1 %i.qy, label %.lr.ph.i75.epil.preheader, label %.lr.ph.i75.preheader.new

.lr.ph.i75.preheader.new:                         ; preds = %.lr.ph.i75.preheader
  %unroll_iter269 = sub nsw i64 %i.qr, %xtraiter265
  br label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %.lr.ph.i75, %.lr.ph.i75.preheader.new
  %indvars.iv.i76 = phi i64 [ 0, %.lr.ph.i75.preheader.new ], [ %indvars.iv.next.i77.3, %.lr.ph.i75 ] ; 5 uses
  %niter270 = phi i64 [ 0, %.lr.ph.i75.preheader.new ], [ %niter270.next.3, %.lr.ph.i75 ]
  %i.qz = getelementptr inbounds nuw [16 x i8], ptr %i.qv, i64 %indvars.iv.i76
  store ptr null, ptr %i.qz, align 8, !tbaa !84
  %i.ra = getelementptr inbounds nuw [16 x i8], ptr %i.qv, i64 %indvars.iv.i76
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  store ptr null, ptr %i.rb, align 8, !tbaa !84
  %i.rc = getelementptr inbounds nuw [16 x i8], ptr %i.qv, i64 %indvars.iv.i76
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 32
  store ptr null, ptr %i.rd, align 8, !tbaa !84
  %i.re = getelementptr inbounds nuw [16 x i8], ptr %i.qv, i64 %indvars.iv.i76
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 48
  store ptr null, ptr %i.rf, align 8, !tbaa !84
  %indvars.iv.next.i77.3 = add nuw nsw i64 %indvars.iv.i76, 4 ; 2 uses
  %niter270.next.3 = add i64 %niter270, 4         ; 2 uses
  %niter270.ncmp.3 = icmp eq i64 %niter270.next.3, %unroll_iter269
  br i1 %niter270.ncmp.3, label %.lr.ph117.i.preheader.unr-lcssa, label %.lr.ph.i75

.lr.ph117.i.preheader.unr-lcssa:                  ; preds = %.lr.ph.i75
  %lcmp.mod267.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod267.not, label %.lr.ph117.i.preheader, label %.lr.ph.i75.epil.preheader

.lr.ph.i75.epil.preheader:                        ; preds = %.lr.ph117.i.preheader.unr-lcssa, %.lr.ph.i75.preheader
  %indvars.iv.i76.epil.init = phi i64 [ 0, %.lr.ph.i75.preheader ], [ %indvars.iv.next.i77.3, %.lr.ph117.i.preheader.unr-lcssa ]
  %lcmp.mod268 = icmp ne i64 %xtraiter265, 0
  call void @llvm.assume(i1 %lcmp.mod268)
  br label %.lr.ph.i75.epil

.lr.ph.i75.epil:                                  ; preds = %.lr.ph.i75.epil, %.lr.ph.i75.epil.preheader
  %indvars.iv.i76.epil = phi i64 [ %indvars.iv.next.i77.epil, %.lr.ph.i75.epil ], [ %indvars.iv.i76.epil.init, %.lr.ph.i75.epil.preheader ] ; 2 uses
  %epil.iter266 = phi i64 [ %epil.iter266.next, %.lr.ph.i75.epil ], [ 0, %.lr.ph.i75.epil.preheader ]
  %i.rg = getelementptr inbounds nuw [16 x i8], ptr %i.qv, i64 %indvars.iv.i76.epil
  store ptr null, ptr %i.rg, align 8, !tbaa !84
  %indvars.iv.next.i77.epil = add nuw nsw i64 %indvars.iv.i76.epil, 1
  %epil.iter266.next = add i64 %epil.iter266, 1   ; 2 uses
  %epil.iter266.cmp.not = icmp eq i64 %epil.iter266.next, %xtraiter265
  br i1 %epil.iter266.cmp.not, label %.lr.ph117.i.preheader, label %.lr.ph.i75.epil, !llvm.loop !56

.lr.ph117.i.preheader:                            ; preds = %.lr.ph.i75.epil, %.lr.ph117.i.preheader.unr-lcssa
  br label %.lr.ph117.i

.lr.ph117.i:                                      ; preds = %.lr.ph117.i.preheader, %loadInt.exit99.i
  %i.rh = phi ptr [ %i.ta, %loadInt.exit99.i ], [ %i.qv, %.lr.ph117.i.preheader ]
  %indvars.iv130.i = phi i64 [ %indvars.iv.next131.i, %loadInt.exit99.i ], [ 0, %.lr.ph117.i.preheader ] ; 4 uses
  %i.ri = getelementptr inbounds nuw [16 x i8], ptr %i.rh, i64 %indvars.iv130.i
  call fastcc void @loadString(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.ri)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cv, %.lr.ph117.i
  %.0.i.i88.i = phi i64 [ 0, %.lr.ph117.i ], [ %i.sb, %bb.cv ] ; 2 uses
  %i.rj = load ptr, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !24 ; 2 uses
  %i.rl = add i64 %i.rk, -1
  store i64 %i.rl, ptr %i.rj, align 8, !tbaa !24
  %.not.i.i.i89.i = icmp eq i64 %i.rk, 0
  br i1 %.not.i.i.i89.i, label %bb.cs, label %.thread.i.i.i90.i

.thread.i.i.i90.i:                                ; preds = %bb.cr
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 8 ; 2 uses
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !25 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 1
  store ptr %i.ro, ptr %i.rm, align 8, !tbaa !25
  %i.rp = load i8, ptr %i.rn, align 1, !tbaa !9
  %i.rq = zext i8 %i.rp to i32
  br label %loadByte.exit.i.i91.i

bb.cs:                                            ; preds = %bb.cr
  %i.rr = call i32 @luaZ_fill(ptr noundef nonnull %i.rj) #7 ; 2 uses
  %i.rs = icmp eq i32 %i.rr, -1
  br i1 %i.rs, label %bb.ct, label %loadByte.exit.i.i91.i

bb.ct:                                            ; preds = %bb.cs
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i.i91.i:                            ; preds = %bb.cs, %.thread.i.i.i90.i
  %i.rt = phi i32 [ %i.rq, %.thread.i.i.i90.i ], [ %i.rr, %bb.cs ]
  %i.ru = load i64, ptr %i.e, align 8, !tbaa !22
  %i.rv = add i64 %i.ru, 1                        ; 2 uses
  store i64 %i.rv, ptr %i.e, align 8, !tbaa !22
  %i.rw = icmp ugt i64 %.0.i.i88.i, 16777215
  br i1 %i.rw, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %loadByte.exit.i.i91.i
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #8
  unreachable

bb.cv:                                            ; preds = %loadByte.exit.i.i91.i
  %i.rx = trunc i32 %i.rt to i8                   ; 2 uses
  %i.ry = shl nuw nsw i64 %.0.i.i88.i, 7
  %i.rz = and i8 %i.rx, 127
  %i.sa = zext nneg i8 %i.rz to i64
  %i.sb = or disjoint i64 %i.ry, %i.sa            ; 2 uses
  %.not.i.i92.i = icmp sgt i8 %i.rx, -1
  br i1 %.not.i.i92.i, label %loadInt.exit93.i, label %bb.cr

loadInt.exit93.i:                                 ; preds = %bb.cv
  %i.sc = trunc nuw nsw i64 %i.sb to i32
  %i.sd = load ptr, ptr %i.qw, align 8, !tbaa !81
  %i.se = getelementptr inbounds nuw [16 x i8], ptr %i.sd, i64 %indvars.iv130.i
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  store i32 %i.sc, ptr %i.sf, align 8, !tbaa !85
  br label %bb.cw

bb.cw:                                            ; preds = %bb.da, %loadInt.exit93.i
  %i.sg = phi i64 [ %i.rv, %loadInt.exit93.i ], [ %i.st, %bb.da ]
  %.0.i.i94.i = phi i64 [ 0, %loadInt.exit93.i ], [ %i.sy, %bb.da ] ; 2 uses
  %i.sh = load ptr, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !24 ; 2 uses
  %i.sj = add i64 %i.si, -1
  store i64 %i.sj, ptr %i.sh, align 8, !tbaa !24
  %.not.i.i.i95.i = icmp eq i64 %i.si, 0
  br i1 %.not.i.i.i95.i, label %bb.cx, label %.thread.i.i.i96.i

.thread.i.i.i96.i:                                ; preds = %bb.cw
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 8 ; 2 uses
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !25 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 1
  store ptr %i.sm, ptr %i.sk, align 8, !tbaa !25
  %i.sn = load i8, ptr %i.sl, align 1, !tbaa !9
  br label %loadByte.exit.i.i97.i

bb.cx:                                            ; preds = %bb.cw
  %i.so = call i32 @luaZ_fill(ptr noundef nonnull %i.sh) #7 ; 2 uses
  %i.sp = icmp eq i32 %i.so, -1
  br i1 %i.sp, label %bb.cy, label %.loadByte.exit.i.i97_crit_edge.i

.loadByte.exit.i.i97_crit_edge.i:                 ; preds = %bb.cx
  %.pre142.i = load i64, ptr %i.e, align 8, !tbaa !22
  %i.sq = trunc i32 %i.so to i8
  br label %loadByte.exit.i.i97.i

bb.cy:                                            ; preds = %bb.cx
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i.i97.i:                            ; preds = %.loadByte.exit.i.i97_crit_edge.i, %.thread.i.i.i96.i
  %i.sr = phi i64 [ %i.sg, %.thread.i.i.i96.i ], [ %.pre142.i, %.loadByte.exit.i.i97_crit_edge.i ]
  %i.ss = phi i8 [ %i.sn, %.thread.i.i.i96.i ], [ %i.sq, %.loadByte.exit.i.i97_crit_edge.i ] ; 2 uses
  %i.st = add i64 %i.sr, 1                        ; 2 uses
  store i64 %i.st, ptr %i.e, align 8, !tbaa !22
  %i.su = icmp ugt i64 %.0.i.i94.i, 16777215
  br i1 %i.su, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %loadByte.exit.i.i97.i
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #8
  unreachable

bb.da:                                            ; preds = %loadByte.exit.i.i97.i
  %i.sv = shl nuw nsw i64 %.0.i.i94.i, 7
  %i.sw = and i8 %i.ss, 127
  %i.sx = zext nneg i8 %i.sw to i64
  %i.sy = or disjoint i64 %i.sv, %i.sx            ; 2 uses
  %.not.i.i98.i = icmp sgt i8 %i.ss, -1
  br i1 %.not.i.i98.i, label %loadInt.exit99.i, label %bb.cw

loadInt.exit99.i:                                 ; preds = %bb.da
  %i.sz = trunc nuw nsw i64 %i.sy to i32
  %i.ta = load ptr, ptr %i.qw, align 8, !tbaa !81 ; 2 uses
  %i.tb = getelementptr inbounds nuw [16 x i8], ptr %i.ta, i64 %indvars.iv130.i
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 12
  store i32 %i.sz, ptr %i.tc, align 4, !tbaa !86
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %exitcond135.not.i = icmp eq i64 %indvars.iv.next131.i, %i.qr
  br i1 %exitcond135.not.i, label %.preheader.i79.preheader, label %.lr.ph117.i

.preheader.i79.preheader:                         ; preds = %loadInt.exit99.i, %loadInt.exit87.i
  br label %.preheader.i79

.preheader.i79:                                   ; preds = %.preheader.i79.preheader, %bb.de
  %.0.i.i100.i = phi i64 [ %i.tv, %bb.de ], [ 0, %.preheader.i79.preheader ] ; 2 uses
  %i.td = load ptr, ptr %i.d, align 8, !tbaa !20  ; 4 uses
  %i.te = load i64, ptr %i.td, align 8, !tbaa !24 ; 2 uses
  %i.tf = add i64 %i.te, -1
  store i64 %i.tf, ptr %i.td, align 8, !tbaa !24
  %.not.i.i.i101.i = icmp eq i64 %i.te, 0
  br i1 %.not.i.i.i101.i, label %bb.db, label %.thread.i.i.i102.i

.thread.i.i.i102.i:                               ; preds = %.preheader.i79
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 8 ; 2 uses
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !25 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 1
  store ptr %i.ti, ptr %i.tg, align 8, !tbaa !25
  %i.tj = load i8, ptr %i.th, align 1, !tbaa !9
  %i.tk = zext i8 %i.tj to i32
  br label %loadByte.exit.i.i103.i

bb.db:                                            ; preds = %.preheader.i79
  %i.tl = call i32 @luaZ_fill(ptr noundef nonnull %i.td) #7 ; 2 uses
  %i.tm = icmp eq i32 %i.tl, -1
  br i1 %i.tm, label %bb.dc, label %loadByte.exit.i.i103.i

bb.dc:                                            ; preds = %bb.db
  call fastcc void @error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #8
  unreachable

loadByte.exit.i.i103.i:                           ; preds = %bb.db, %.thread.i.i.i102.i
end_hunk_1
