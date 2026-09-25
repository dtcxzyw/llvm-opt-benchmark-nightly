Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/hull?download=true
inline.NumInlined: 420
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@b3CreateHull:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 5 uses
  store ptr %i.ay, ptr %i.ay, align 8, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !33
  %i.ba = ptrtoint ptr %i.at to i64, !nosanitize !12 ; 21 uses
  %i.bb = icmp ne ptr %i.at, null, !nosanitize !12 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 248
  store ptr %i.at, ptr %i.bc, align 8, !tbaa !46
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 256
  store i32 %i.o, ptr %i.bd, align 8, !tbaa !168
  %i.be = add i64 %i.z, %i.ba, !nosanitize !12    ; 3 uses
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = icmp uge i64 %i.be, %i.ba, !nosanitize !12
  %i.bh = and i1 %i.bf, %i.bg
  %i.bi = and i1 %i.bh, %i.bb
  br i1 %i.bi, label %bb.h, label %bb.g, !prof !13, !nosanitize !12

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @341, i64 %i.ba, i64 %i.be) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.h:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.z
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 264
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 272
  store i32 %i.q, ptr %i.bl, align 8, !tbaa !169
  %i.bm = add i64 %i.ac, %i.ba, !nosanitize !12   ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %i.ba, !nosanitize !12
  %i.bo = and i1 %i.bn, %i.bb
  br i1 %i.bo, label %bb.j, label %bb.i, !prof !13, !nosanitize !12

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @342, i64 %i.ba, i64 %i.bm) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.j:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ac
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 288
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !48
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 296
  store i32 %i.t, ptr %i.br, align 8, !tbaa !170
  %i.bs = add i64 %i.af, %i.ba, !nosanitize !12   ; 2 uses
  %i.bt = icmp uge i64 %i.bs, %i.ba, !nosanitize !12
  %i.bu = and i1 %i.bt, %i.bb
  br i1 %i.bu, label %bb.l, label %bb.k, !prof !13, !nosanitize !12

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @344, i64 %i.ba, i64 %i.bs) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.l:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.af
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 312
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !49
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 320
  store i32 %i.v, ptr %i.bx, align 8, !tbaa !171
  %i.by = add i64 %i.ai, %i.ba, !nosanitize !12   ; 2 uses
  %i.bz = icmp uge i64 %i.by, %i.ba, !nosanitize !12
  %i.ca = and i1 %i.bz, %i.bb
  br i1 %i.ca, label %bb.n, label %bb.m, !prof !13, !nosanitize !12

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @345, i64 %i.ba, i64 %i.by) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.n:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ai
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 328
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !50
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 336
  store i32 %i.v, ptr %i.cd, align 8, !tbaa !172
  %i.ce = add i64 %i.aj, %i.ba, !nosanitize !12   ; 2 uses
  %i.cf = icmp uge i64 %i.ce, %i.ba, !nosanitize !12
  %i.cg = and i1 %i.cf, %i.bb
  br i1 %i.cg, label %bb.p, label %bb.o, !prof !13, !nosanitize !12

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @346, i64 %i.ba, i64 %i.ce) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.p:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aj
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 344
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !51
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 352
  store i32 %i.x, ptr %i.cj, align 8, !tbaa !173
  %i.ck = add i64 %i.am, %i.ba, !nosanitize !12   ; 2 uses
  %i.cl = icmp uge i64 %i.ck, %i.ba, !nosanitize !12
  %i.cm = and i1 %i.cl, %i.bb
  br i1 %i.cm, label %b3HullBuilder_Init.exit, label %bb.q, !prof !13, !nosanitize !12

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @347, i64 %i.ba, i64 %i.ck) #13, !nosanitize !12
  unreachable, !nosanitize !12

b3HullBuilder_Init.exit:                          ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.am
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 360
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !52
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 368
  store i32 %i.x, ptr %i.cp, align 8, !tbaa !174
  %i.cq = add i64 %i.ap, %i.ba, !nosanitize !12   ; 2 uses
  %i.cr = icmp uge i64 %i.cq, %i.ba, !nosanitize !12
  %i.cs = and i1 %i.cr, %i.bb
  br i1 %i.cs, label %bb.s, label %bb.r, !prof !13, !nosanitize !12

bb.r:                                             ; preds = %b3HullBuilder_Init.exit
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @26, i64 %i.ba, i64 %i.cq) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.s:                                             ; preds = %b3HullBuilder_Init.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ap
  %i.cu = call fastcc zeroext i1 @b3HullBuilder_Construct(ptr noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef %i.k, <2 x float> %.sroa.0190.0.copyload, float %.sroa.4.0.copyload, ptr noundef nonnull %i.ct)
  br i1 %i.cu, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @b3Free(ptr noundef nonnull %i.at, i64 noundef %i.as) #14
  br label %bb.fu

bb.u:                                             ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 372
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !53 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 128
  br i1 %i.cx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str, i32 noundef %i.cw, i32 noundef 128) #14
  call void @b3Free(ptr noundef nonnull %i.at, i64 noundef %i.as) #14
  br label %bb.fu

bb.w:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 380
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !54 ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 128
  br i1 %i.da, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.1, i32 noundef %i.cz, i32 noundef 128) #14
  call void @b3Free(ptr noundef nonnull %i.at, i64 noundef %i.as) #14
  br label %bb.fu

bb.y:                                             ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 376
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !55 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, 256
  br i1 %i.dd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.2, i32 noundef %i.dc, i32 noundef 256) #14
  call void @b3Free(ptr noundef nonnull %i.at, i64 noundef %i.as) #14
  br label %bb.fu

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.de = load ptr, ptr %i.ax, align 8, !tbaa !56 ; 2 uses
  %.not1333 = icmp eq ptr %i.de, %i.aw
  br i1 %.not1333, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.df = ptrtoint ptr %i.a to i64                ; 3 uses
  br label %bb.ab

._crit_edge.loopexit:                             ; preds = %bb.ah
  %i.dg = trunc i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.aa
  %.0207.lcssa = phi i32 [ 0, %bb.aa ], [ %i.dg, %._crit_edge.loopexit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.dh = load ptr, ptr %i.az, align 8, !tbaa !57 ; 2 uses
  %.not2651336 = icmp eq ptr %i.dh, %i.ay
  br i1 %.not2651336, label %._crit_edge1342, label %.lr.ph1341

.lr.ph1341:                                       ; preds = %._crit_edge
  %i.di = ptrtoint ptr %i.b to i64                ; 3 uses
  %i.dj = ptrtoint ptr %i.c to i64                ; 6 uses
  br label %bb.ai

bb.ab:                                            ; preds = %.lr.ph, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ah ] ; 5 uses
  %.02061335 = phi ptr [ %i.de, %.lr.ph ], [ %i.dv, %bb.ah ] ; 5 uses
  %i.dk = icmp ne ptr %.02061335, null, !nosanitize !12
  %i.dl = ptrtoint ptr %.02061335 to i64, !nosanitize !12 ; 2 uses
  %i.dm = and i64 %i.dl, 7, !nosanitize !12
  %i.dn = icmp eq i64 %i.dm, 0, !nosanitize !12
  %i.do = and i1 %i.dk, %i.dn, !nosanitize !12
  br i1 %i.do, label %bb.ad, label %bb.ac, !prof !13, !nosanitize !12

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @30, i64 %i.dl) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ad:                                            ; preds = %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %.02061335, i64 36
  %i.dq = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !58
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, 256
  br i1 %exitcond.not, label %bb.ae, label %bb.af, !prof !22, !nosanitize !12

bb.ae:                                            ; preds = %bb.ad
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @32, i64 256) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.af:                                            ; preds = %bb.ad
  %i.dr = shl nuw nsw i64 %indvars.iv, 3
  %i.ds = add i64 %i.dr, %i.df, !nosanitize !12   ; 2 uses
  %.not279 = icmp ult i64 %i.ds, %i.df, !nosanitize !12
  br i1 %.not279, label %bb.ag, label %bb.ah, !prof !22, !nosanitize !12

bb.ag:                                            ; preds = %bb.af
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @33, i64 %i.df, i64 %i.ds) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ah:                                            ; preds = %bb.af
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %.02061335, ptr %i.dt, align 8, !tbaa !175
  %i.du = getelementptr inbounds nuw i8, ptr %.02061335, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %i.dv, %i.aw
  br i1 %.not, label %._crit_edge.loopexit, label %bb.ab, !llvm.loop !158

bb.ai:                                            ; preds = %.lr.ph1341, %bb.bg
  %indvars.iv2515 = phi i64 [ 0, %.lr.ph1341 ], [ %indvars.iv.next2516, %bb.bg ] ; 5 uses
  %.02031339 = phi ptr [ %i.dh, %.lr.ph1341 ], [ %i.fr, %bb.bg ] ; 6 uses
  %.02041338 = phi i32 [ 0, %.lr.ph1341 ], [ %.2, %bb.bg ]
  %i.dw = icmp ne ptr %.02031339, null, !nosanitize !12
  %i.dx = ptrtoint ptr %.02031339 to i64, !nosanitize !12 ; 2 uses
  %i.dy = and i64 %i.dx, 7, !nosanitize !12
  %i.dz = icmp eq i64 %i.dy, 0, !nosanitize !12
  %i.ea = and i1 %i.dw, %i.dz, !nosanitize !12
  br i1 %i.ea, label %bb.ak, label %bb.aj, !prof !13, !nosanitize !12

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @35, i64 %i.dx) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ak:                                            ; preds = %bb.ai
  %i.eb = getelementptr inbounds nuw i8, ptr %.02031339, i64 120
  %i.ec = trunc nuw nsw i64 %indvars.iv2515 to i32
  store i32 %i.ec, ptr %i.eb, align 8, !tbaa !59
  %indvars.iv.next2516 = add nuw nsw i64 %indvars.iv2515, 1 ; 2 uses
  %exitcond2518.not = icmp eq i64 %indvars.iv2515, 256
  br i1 %exitcond2518.not, label %bb.al, label %bb.am, !prof !22, !nosanitize !12

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @37, i64 256) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.am:                                            ; preds = %bb.ak
  %i.ed = shl nuw nsw i64 %indvars.iv2515, 3
  %i.ee = add i64 %i.ed, %i.di, !nosanitize !12   ; 2 uses
  %.not275 = icmp ult i64 %i.ee, %i.di, !nosanitize !12
  br i1 %.not275, label %bb.an, label %bb.ao, !prof !22, !nosanitize !12

bb.an:                                            ; preds = %bb.am
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @38, i64 %i.di, i64 %i.ee) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ao:                                            ; preds = %bb.am
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv2515
  store ptr %.02031339, ptr %i.ef, align 8, !tbaa !60
  %i.eg = getelementptr inbounds nuw i8, ptr %.02031339, i64 16 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !61
  br label %bb.ap

bb.ap:                                            ; preds = %bb.bf, %bb.ao
  %.1 = phi i32 [ %.02041338, %bb.ao ], [ %.2, %bb.bf ] ; 6 uses
  %.0202 = phi ptr [ %i.eh, %bb.ao ], [ %i.fo, %bb.bf ] ; 6 uses
  %i.ei = icmp ne ptr %.0202, null, !nosanitize !12
  %i.ej = ptrtoint ptr %.0202 to i64, !nosanitize !12 ; 2 uses
  %i.ek = and i64 %i.ej, 7, !nosanitize !12
  %i.el = icmp eq i64 %i.ek, 0, !nosanitize !12
  %i.em = and i1 %i.ei, %i.el, !nosanitize !12
  br i1 %i.em, label %bb.ar, label %bb.aq, !prof !13, !nosanitize !12

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @41, i64 %i.ej) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ar:                                            ; preds = %bb.ap
  %i.en = getelementptr inbounds nuw i8, ptr %.0202, i64 40 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !63
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %bb.as, label %bb.bf

bb.as:                                            ; preds = %bb.ar
  store i32 %.1, ptr %i.en, align 8, !tbaa !63
  %i.eq = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.1, i32 1), !nosanitize !12 ; 2 uses
  %i.er = extractvalue { i32, i1 } %i.eq, 0, !nosanitize !12 ; 4 uses
  %i.es = extractvalue { i32, i1 } %i.eq, 1, !nosanitize !12
  br i1 %i.es, label %bb.at, label %bb.au, !prof !22, !nosanitize !12

bb.at:                                            ; preds = %bb.as
  %i.et = zext nneg i32 %.1 to i64, !nosanitize !12
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @42, i64 %i.et, i64 1) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.au:                                            ; preds = %bb.as
  %i.eu = sext i32 %.1 to i64, !nosanitize !12    ; 3 uses
  %i.ev = icmp ult i32 %.1, 256
  br i1 %i.ev, label %bb.aw, label %bb.av, !prof !13, !nosanitize !12

bb.av:                                            ; preds = %bb.au
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @44, i64 %i.eu) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.aw:                                            ; preds = %bb.au
  %i.ew = shl nuw nsw i64 %i.eu, 3
  %i.ex = add i64 %i.ew, %i.dj, !nosanitize !12   ; 2 uses
  %.not276 = icmp ult i64 %i.ex, %i.dj, !nosanitize !12
  br i1 %.not276, label %bb.ax, label %bb.ay, !prof !22, !nosanitize !12

bb.ax:                                            ; preds = %bb.aw
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @45, i64 %i.dj, i64 %i.ex) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ay:                                            ; preds = %bb.aw
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.eu
  store ptr %.0202, ptr %i.ey, align 8, !tbaa !64
  %i.ez = getelementptr inbounds nuw i8, ptr %.0202, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !65 ; 4 uses
  %i.fb = icmp ne ptr %i.fa, null, !nosanitize !12
  %i.fc = ptrtoint ptr %i.fa to i64, !nosanitize !12 ; 2 uses
  %i.fd = and i64 %i.fc, 7, !nosanitize !12
  %i.fe = icmp eq i64 %i.fd, 0, !nosanitize !12
  %i.ff = and i1 %i.fb, %i.fe, !nosanitize !12
  br i1 %i.ff, label %bb.ba, label %bb.az, !prof !13, !nosanitize !12

bb.az:                                            ; preds = %bb.ay
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @47, i64 %i.fc) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ba:                                            ; preds = %bb.ay
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  store i32 %i.er, ptr %i.fg, align 8, !tbaa !63
  %i.fh = add nuw nsw i32 %i.er, 1
  %i.fi = zext nneg i32 %i.er to i64              ; 3 uses
  %i.fj = icmp ult i32 %i.er, 256
  br i1 %i.fj, label %bb.bc, label %bb.bb, !prof !13, !nosanitize !12

bb.bb:                                            ; preds = %bb.ba
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @48, i64 %i.fi) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bc:                                            ; preds = %bb.ba
  %i.fk = shl nuw nsw i64 %i.fi, 3
  %i.fl = add i64 %i.fk, %i.dj, !nosanitize !12   ; 2 uses
  %.not277 = icmp ult i64 %i.fl, %i.dj, !nosanitize !12
  br i1 %.not277, label %bb.bd, label %bb.be, !prof !22, !nosanitize !12

bb.bd:                                            ; preds = %bb.bc
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @49, i64 %i.dj, i64 %i.fl) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.be:                                            ; preds = %bb.bc
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fi
  store ptr %i.fa, ptr %i.fm, align 8, !tbaa !64
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.ar
  %.2 = phi i32 [ %i.fh, %bb.be ], [ %.1, %bb.ar ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0202, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !66 ; 2 uses
  %i.fp = load ptr, ptr %i.eg, align 8, !tbaa !61
  %.not278 = icmp eq ptr %i.fo, %i.fp
  br i1 %.not278, label %bb.bg, label %bb.ap, !llvm.loop !159

bb.bg:                                            ; preds = %bb.bf
  %i.fq = getelementptr inbounds nuw i8, ptr %.02031339, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !33 ; 2 uses
  %.not265 = icmp eq ptr %i.fr, %i.ay
  br i1 %.not265, label %._crit_edge1342.loopexit, label %bb.ai, !llvm.loop !160

._crit_edge1342.loopexit:                         ; preds = %bb.bg
  %i.fs = trunc nuw nsw i64 %indvars.iv.next2516 to i32
  br label %._crit_edge1342

._crit_edge1342:                                  ; preds = %._crit_edge1342.loopexit, %._crit_edge
  %.0205.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.fs, %._crit_edge1342.loopexit ] ; 11 uses
  %.0204.lcssa = phi i32 [ 0, %._crit_edge ], [ %.2, %._crit_edge1342.loopexit ] ; 6 uses
  %i.ft = add i32 %.0207.lcssa, 3
  %i.fu = and i32 %i.ft, -4                       ; 4 uses
  %i.fv = add nuw nsw i32 %.0205.lcssa, 3
  %i.fw = and i32 %i.fv, -4                       ; 5 uses
  %narrow = add i32 %.0207.lcssa, 7
  %i.fx = and i32 %narrow, -8
  %narrow294 = add i32 %i.fx, 144                 ; 4 uses
  %i.fy = mul i32 %.0207.lcssa, 12
  %narrow295 = add i32 %i.fy, 4
  %i.fz = and i32 %narrow295, 2147483640
  %narrow296 = add i32 %narrow294, %i.fz          ; 3 uses
  %i.ga = add i32 %.0204.lcssa, 536870912
  %i.gb = icmp ult i32 %i.ga, 1073741824
  br i1 %i.gb, label %bb.bi, label %bb.bh, !prof !13, !nosanitize !12

bb.bh:                                            ; preds = %._crit_edge1342
  %i.gc = zext i32 %.0204.lcssa to i64, !nosanitize !12
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @50, i64 %i.gc, i64 4) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bi:                                            ; preds = %._crit_edge1342
  %i.gd = sext i32 %narrow296 to i64              ; 3 uses
  %i.ge = shl nsw i32 %.0204.lcssa, 2
  %i.gf = sext i32 %i.ge to i64
  %i.gg = add nsw i64 %i.gf, 4
  %i.gh = and i64 %i.gg, -8
  %i.gi = add nsw i64 %i.gh, %i.gd                ; 3 uses
  %i.gj = trunc i64 %i.gi to i32                  ; 2 uses
  %i.gk = icmp ult i32 %.0205.lcssa, 134217728
  br i1 %i.gk, label %bb.bk, label %bb.bj, !prof !13, !nosanitize !12

bb.bj:                                            ; preds = %bb.bi
  %i.gl = zext i32 %.0205.lcssa to i64, !nosanitize !12
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @51, i64 %i.gl, i64 16) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bk:                                            ; preds = %bb.bi
  %i.gm = shl nuw nsw i32 %.0205.lcssa, 4
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = add nsw i64 %i.gi, %i.gn
  %.fr1517 = freeze i64 %i.go                     ; 3 uses
  %i.gp = trunc i64 %.fr1517 to i32
  %narrow297 = add nuw nsw i32 %.0205.lcssa, 7
  %i.gq = and i32 %narrow297, 268435448
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = add nsw i64 %.fr1517, %i.gr             ; 3 uses
  %i.gt = trunc i64 %i.gs to i32                  ; 2 uses
  %i.gu = mul nsw i32 %i.fu, 3                    ; 2 uses
  %i.gv = add nsw i32 %i.gu, 536870912
  %i.gw = icmp ult i32 %i.gv, 1073741824
  br i1 %i.gw, label %bb.bm, label %bb.bl, !prof !13, !nosanitize !12

bb.bl:                                            ; preds = %bb.bk
  %i.gx = zext i32 %i.gu to i64, !nosanitize !12
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @52, i64 %i.gx, i64 4) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bm:                                            ; preds = %bb.bk
  %i.gy = mul nsw i32 %i.fu, 12
  %i.gz = sext i32 %i.gy to i64
  %i.ha = add nsw i64 %i.gs, %i.gz
  %.fr1524 = freeze i64 %i.ha                     ; 3 uses
  %i.hb = trunc i64 %.fr1524 to i32               ; 2 uses
  %i.hc = icmp ult i32 %i.fw, 178956971
  br i1 %i.hc, label %bb.bo, label %bb.bn, !prof !13, !nosanitize !12

bb.bn:                                            ; preds = %bb.bm
  %i.hd = mul nuw nsw i32 %i.fw, 3
  %i.he = zext nneg i32 %i.hd to i64, !nosanitize !12
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @53, i64 %i.he, i64 4) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bo:                                            ; preds = %bb.bm
  %i.hf = mul nuw nsw i32 %i.fw, 12
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = add i64 %.fr1524, %i.hg                 ; 3 uses
  %i.hi = call ptr @b3Alloc(i64 noundef %i.hh) #14
  %.fr = freeze ptr %i.hi                         ; 24 uses
  %.not266 = icmp eq ptr %.fr, null, !nosanitize !12
  br i1 %.not266, label %bb.bp, label %bb.bq, !prof !22, !nosanitize !12

bb.bp:                                            ; preds = %bb.bo
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @54) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.fr, i8 0, i64 %i.hh, i1 false)
  %i.hj = ptrtoint ptr %.fr to i64, !nosanitize !12 ; 18 uses
  %i.hk = and i64 %i.hj, 7, !nosanitize !12
  %i.hl = icmp eq i64 %i.hk, 0, !nosanitize !12
  br i1 %i.hl, label %bb.bs, label %bb.br, !prof !13, !nosanitize !12

bb.br:                                            ; preds = %bb.bq
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @56, i64 %i.hj) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bs:                                            ; preds = %bb.bq
  store i64 5353818467820062812, ptr %.fr, align 8, !tbaa !176
  %i.hm = getelementptr inbounds nuw i8, ptr %.fr, i64 104
  store i32 144, ptr %i.hm, align 8, !tbaa !67
  %i.hn = getelementptr inbounds nuw i8, ptr %.fr, i64 108 ; 2 uses
  store i32 %narrow294, ptr %i.hn, align 4, !tbaa !21
  %i.ho = getelementptr inbounds nuw i8, ptr %.fr, i64 116
  store i32 %narrow296, ptr %i.ho, align 4, !tbaa !68
  %i.hp = getelementptr inbounds nuw i8, ptr %.fr, i64 124
  store i32 %i.gj, ptr %i.hp, align 4, !tbaa !25
  %i.hq = getelementptr inbounds nuw i8, ptr %.fr, i64 128
  store i32 %i.gp, ptr %i.hq, align 8, !tbaa !69
  %i.hr = getelementptr inbounds nuw i8, ptr %.fr, i64 132
  store i32 %i.gt, ptr %i.hr, align 4, !tbaa !70
  %i.hs = getelementptr inbounds nuw i8, ptr %.fr, i64 136
  store i32 %i.hb, ptr %i.hs, align 8, !tbaa !71
  %i.ht = getelementptr inbounds nuw i8, ptr %.fr, i64 100 ; 2 uses
  store i32 %.0207.lcssa, ptr %i.ht, align 4, !tbaa !20
  %i.hu = getelementptr inbounds nuw i8, ptr %.fr, i64 112
  store i32 %.0204.lcssa, ptr %i.hu, align 8, !tbaa !177
  %i.hv = getelementptr inbounds nuw i8, ptr %.fr, i64 120
  store i32 %.0205.lcssa, ptr %i.hv, align 8, !tbaa !24
  %i.hw = getelementptr inbounds nuw i8, ptr %.fr, i64 140 ; 2 uses
  %i.hx = trunc i64 %i.hh to i32
  store i32 %i.hx, ptr %i.hw, align 4, !tbaa !72
  %i.hy = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hj, i64 144), !nosanitize !12 ; 2 uses
  %i.hz = extractvalue { i64, i1 } %i.hy, 1, !nosanitize !12
  br i1 %i.hz, label %bb.bt, label %bb.bu, !prof !22, !nosanitize !12

bb.bt:                                            ; preds = %bb.bs
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @548, i64 %i.hj, i64 144) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bu:                                            ; preds = %bb.bs
  %i.ia = extractvalue { i64, i1 } %i.hy, 0, !nosanitize !12 ; 9 uses
  %i.ib = inttoptr i64 %i.ia to ptr               ; 3 uses
  %i.ic = icmp eq i32 %narrow296, 0
  br i1 %i.ic, label %b3GetHullEdgesWrite.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.id = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hj, i64 %i.gd), !nosanitize !12 ; 2 uses
  %i.ie = extractvalue { i64, i1 } %i.id, 1, !nosanitize !12
  br i1 %i.ie, label %bb.bw, label %bb.bx, !prof !22, !nosanitize !12

bb.bw:                                            ; preds = %bb.bv
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @549, i64 %i.hj, i64 %i.gd) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bx:                                            ; preds = %bb.bv
  %i.if = extractvalue { i64, i1 } %i.id, 0, !nosanitize !12
  %i.ig = inttoptr i64 %i.if to ptr
  br label %b3GetHullEdgesWrite.exit

b3GetHullEdgesWrite.exit:                         ; preds = %bb.bu, %bb.bx
  %.0.i280 = phi ptr [ %i.ig, %bb.bx ], [ null, %bb.bu ] ; 3 uses
  %sext = shl i64 %.fr1517, 32
  %i.ih = ashr exact i64 %sext, 32                ; 2 uses
  %i.ii = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hj, i64 %i.ih), !nosanitize !12 ; 2 uses
  %i.ij = extractvalue { i64, i1 } %i.ii, 0, !nosanitize !12 ; 5 uses
  %i.ik = extractvalue { i64, i1 } %i.ii, 1, !nosanitize !12
  br i1 %i.ik, label %bb.by, label %bb.bz, !prof !22, !nosanitize !12

bb.by:                                            ; preds = %b3GetHullEdgesWrite.exit
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @58, i64 %i.hj, i64 %i.ih) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bz:                                            ; preds = %b3GetHullEdgesWrite.exit
  %i.il = inttoptr i64 %i.ij to ptr
  %i.im = icmp eq i32 %narrow294, 0
  br i1 %i.im, label %b3GetHullPointsWrite.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.in = sext i32 %narrow294 to i64              ; 2 uses
  %i.io = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hj, i64 %i.in), !nosanitize !12 ; 2 uses
  %i.ip = extractvalue { i64, i1 } %i.io, 1, !nosanitize !12
  br i1 %i.ip, label %bb.cb, label %bb.cc, !prof !22, !nosanitize !12

bb.cb:                                            ; preds = %bb.ca
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @550, i64 %i.hj, i64 %i.in) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cc:                                            ; preds = %bb.ca
  %i.iq = extractvalue { i64, i1 } %i.io, 0, !nosanitize !12
  %i.ir = inttoptr i64 %i.iq to ptr
  br label %b3GetHullPointsWrite.exit

b3GetHullPointsWrite.exit:                        ; preds = %bb.bz, %bb.cc
  %.0.i281 = phi ptr [ %i.ir, %bb.cc ], [ null, %bb.bz ] ; 3 uses
  %i.is = icmp eq i32 %i.gj, 0
  br i1 %i.is, label %b3GetHullPlanesWrite.exit, label %bb.cd

bb.cd:                                            ; preds = %b3GetHullPointsWrite.exit
  %sext298 = shl i64 %i.gi, 32
  %i.it = ashr exact i64 %sext298, 32             ; 2 uses
  %i.iu = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hj, i64 %i.it), !nosanitize !12 ; 2 uses
  %i.iv = extractvalue { i64, i1 } %i.iu, 1, !nosanitize !12
  br i1 %i.iv, label %bb.ce, label %bb.cf, !prof !22, !nosanitize !12

bb.ce:                                            ; preds = %bb.cd
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @551, i64 %i.hj, i64 %i.it) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cf:                                            ; preds = %bb.cd
  %i.iw = extractvalue { i64, i1 } %i.iu, 0, !nosanitize !12
  %i.ix = inttoptr i64 %i.iw to ptr
  br label %b3GetHullPlanesWrite.exit

b3GetHullPlanesWrite.exit:                        ; preds = %b3GetHullPointsWrite.exit, %bb.cf
  %.0.i282 = phi ptr [ %i.ix, %bb.cf ], [ null, %b3GetHullPointsWrite.exit ] ; 3 uses
  %i.iy = icmp eq i32 %i.gt, 0
  br i1 %i.iy, label %b3GetHullSoaVerticesWrite.exit, label %bb.cg

bb.cg:                                            ; preds = %b3GetHullPlanesWrite.exit
  %sext299 = shl i64 %i.gs, 32
  %i.iz = ashr exact i64 %sext299, 32             ; 2 uses
  %i.ja = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hj, i64 %i.iz), !nosanitize !12 ; 2 uses
  %i.jb = extractvalue { i64, i1 } %i.ja, 1, !nosanitize !12
  br i1 %i.jb, label %bb.ch, label %bb.ci, !prof !22, !nosanitize !12

bb.ch:                                            ; preds = %bb.cg
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @552, i64 %i.hj, i64 %i.iz) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ci:                                            ; preds = %bb.cg
  %i.jc = extractvalue { i64, i1 } %i.ja, 0, !nosanitize !12
  %i.jd = inttoptr i64 %i.jc to ptr
  br label %b3GetHullSoaVerticesWrite.exit

b3GetHullSoaVerticesWrite.exit:                   ; preds = %b3GetHullPlanesWrite.exit, %bb.ci
  %.0.i283 = phi ptr [ %i.jd, %bb.ci ], [ null, %b3GetHullPlanesWrite.exit ] ; 6 uses
  %i.je = icmp eq i32 %i.hb, 0
  br i1 %i.je, label %b3GetHullSoaNormalsWrite.exit, label %bb.cj

bb.cj:                                            ; preds = %b3GetHullSoaVerticesWrite.exit
  %sext300 = shl i64 %.fr1524, 32
  %i.jf = ashr exact i64 %sext300, 32             ; 2 uses
  %i.jg = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hj, i64 %i.jf), !nosanitize !12 ; 2 uses
  %i.jh = extractvalue { i64, i1 } %i.jg, 1, !nosanitize !12
  br i1 %i.jh, label %bb.ck, label %bb.cl, !prof !22, !nosanitize !12

bb.ck:                                            ; preds = %bb.cj
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @553, i64 %i.hj, i64 %i.jf) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cl:                                            ; preds = %bb.cj
  %i.ji = extractvalue { i64, i1 } %i.jg, 0, !nosanitize !12
  %i.jj = inttoptr i64 %i.ji to ptr
  br label %b3GetHullSoaNormalsWrite.exit

b3GetHullSoaNormalsWrite.exit:                    ; preds = %b3GetHullSoaVerticesWrite.exit, %bb.cl
  %.0.i284 = phi ptr [ %i.jj, %bb.cl ], [ null, %b3GetHullSoaVerticesWrite.exit ] ; 5 uses
  %i.jk = sext i32 %i.fu to i64                   ; 4 uses
  %i.jl = getelementptr inbounds [4 x i8], ptr %.0.i283, i64 %i.jk ; 5 uses
  %i.jm = shl nsw i64 %i.jk, 2                    ; 2 uses
  %i.jn = ptrtoint ptr %.0.i283 to i64, !nosanitize !12 ; 11 uses
  %i.jo = add i64 %i.jm, %i.jn, !nosanitize !12   ; 3 uses
  %i.jp = icmp ne ptr %.0.i283, null, !nosanitize !12 ; 5 uses
  %i.jq = icmp eq i64 %i.jo, 0
  %i.jr = xor i1 %i.jp, %i.jq
  %i.js = icmp uge i64 %i.jo, %i.jn, !nosanitize !12
  %i.jt = and i1 %i.jr, %i.js, !nosanitize !12
  br i1 %i.jt, label %bb.cn, label %bb.cm, !prof !13, !nosanitize !12

bb.cm:                                            ; preds = %b3GetHullSoaNormalsWrite.exit
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @59, i64 %i.jn, i64 %i.jo) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cn:                                            ; preds = %b3GetHullSoaNormalsWrite.exit
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %i.jk ; 5 uses
  %i.jv = ptrtoint ptr %i.jl to i64, !nosanitize !12 ; 9 uses
  %i.jw = add i64 %i.jm, %i.jv, !nosanitize !12   ; 3 uses
  %i.jx = icmp eq i64 %i.jw, 0
  %i.jy = xor i1 %i.jp, %i.jx
  %i.jz = icmp uge i64 %i.jw, %i.jv, !nosanitize !12
  %i.ka = and i1 %i.jy, %i.jz, !nosanitize !12
  br i1 %i.ka, label %.preheader306, label %bb.co, !prof !13, !nosanitize !12

.preheader306:                                    ; preds = %bb.cn
  %4 = icmp sgt i32 %.0207.lcssa, 0
  br i1 %4, label %.lr.ph1346, label %.preheader305

.lr.ph1346:                                       ; preds = %.preheader306
  %.not1488 = icmp eq i64 %i.ia, 0
  %i.kb = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.kc = ptrtoint ptr %.0.i281 to i64            ; 3 uses
  %i.kd = ptrtoint ptr %i.ju to i64               ; 3 uses
  br i1 %.not1488, label %.split1348.us, label %.lr.ph1346.split, !prof !22

.lr.ph1346.split:                                 ; preds = %.lr.ph1346
  %.not1493 = icmp eq ptr %.0.i281, null
  br i1 %.not1493, label %.lr.ph1346.split.split.us, label %.lr.ph1346.split.split.preheader, !prof !22

.lr.ph1346.split.split.preheader:                 ; preds = %.lr.ph1346.split
  %wide.trip.count = zext nneg i32 %.0207.lcssa to i64
  br label %.lr.ph1346.split.split

.lr.ph1346.split.split.us:                        ; preds = %.lr.ph1346.split
  store i8 0, ptr %i.ib, align 1, !tbaa !74
  %i.ke = load ptr, ptr %i.a, align 16, !tbaa !175 ; 2 uses
  %i.kf = icmp ne ptr %i.ke, null, !nosanitize !12
  %i.kg = ptrtoint ptr %i.ke to i64, !nosanitize !12 ; 2 uses
  %i.kh = and i64 %i.kg, 7, !nosanitize !12
  %i.ki = icmp eq i64 %i.kh, 0, !nosanitize !12
  %i.kj = and i1 %i.kf, %i.ki, !nosanitize !12
  br i1 %i.kj, label %.split1376, label %.split1366.us, !prof !13, !nosanitize !12

bb.co:                                            ; preds = %bb.cn
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @60, i64 %i.jv, i64 %i.jw) #13, !nosanitize !12
  unreachable, !nosanitize !12

.preheader305:                                    ; preds = %bb.dj, %.preheader306
  %5 = icmp slt i32 %.0207.lcssa, %i.fu
  br i1 %5, label %.lr.ph1380, label %.preheader304

.lr.ph1380:                                       ; preds = %.preheader305
  %i.kk = and i64 %i.jn, 3, !nosanitize !12
  %i.kl = icmp eq i64 %i.kk, 0, !nosanitize !12
  %i.km = and i1 %i.jp, %i.kl
  %i.kn = ptrtoint ptr %i.ju to i64               ; 3 uses
  br i1 %i.km, label %.lr.ph1380.split.split.us.split.us.preheader, label %bb.dl, !prof !13, !nosanitize !12

.lr.ph1380.split.split.us.split.us.preheader:     ; preds = %.lr.ph1380
  %6 = sext i32 %.0207.lcssa to i64
  br label %.lr.ph1380.split.split.us.split.us

.lr.ph1380.split.split.us.split.us:               ; preds = %.lr.ph1380.split.split.us.split.us.preheader, %bb.cr
  %indvars.iv2524 = phi i64 [ %6, %.lr.ph1380.split.split.us.split.us.preheader ], [ %indvars.iv.next2525, %bb.cr ] ; 5 uses
  %i.ko = shl nuw nsw i64 %indvars.iv2524, 2      ; 3 uses
  %i.kp = add i64 %i.ko, %i.jn, !nosanitize !12   ; 2 uses
  %.not1503 = icmp ult i64 %i.kp, %i.jn, !nosanitize !12
  br i1 %.not1503, label %.split1382.us, label %bb.cp, !prof !22, !nosanitize !12

bb.cp:                                            ; preds = %.lr.ph1380.split.split.us.split.us
  %i.kq = getelementptr inbounds [4 x i8], ptr %.0.i283, i64 %indvars.iv2524
  %i.kr = load float, ptr %.0.i283, align 4, !tbaa !28
  store float %i.kr, ptr %i.kq, align 4, !tbaa !28
  %i.ks = add i64 %i.ko, %i.jv, !nosanitize !12   ; 2 uses
  %.not1504 = icmp ult i64 %i.ks, %i.jv, !nosanitize !12
  br i1 %.not1504, label %.split1388.us, label %bb.cq, !prof !22, !nosanitize !12

bb.cq:                                            ; preds = %bb.cp
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %indvars.iv2524
  %i.ku = load float, ptr %i.jl, align 4, !tbaa !28
  store float %i.ku, ptr %i.kt, align 4, !tbaa !28
  %i.kv = add i64 %i.ko, %i.kn, !nosanitize !12   ; 2 uses
  %.not1505 = icmp ult i64 %i.kv, %i.kn, !nosanitize !12
  br i1 %.not1505, label %.split1397.us, label %bb.cr, !prof !22, !nosanitize !12

bb.cr:                                            ; preds = %bb.cq
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.ju, i64 %indvars.iv2524
  %i.kx = load float, ptr %i.ju, align 4, !tbaa !28
  store float %i.kx, ptr %i.kw, align 4, !tbaa !28
  %indvars.iv.next2525 = add nsw i64 %indvars.iv2524, 1 ; 2 uses
  %exitcond2528.not = icmp eq i64 %indvars.iv.next2525, %i.jk
  br i1 %exitcond2528.not, label %.preheader304, label %.lr.ph1380.split.split.us.split.us, !llvm.loop !161

.lr.ph1346.split.split:                           ; preds = %.lr.ph1346.split.split.preheader, %bb.dj
  %indvars.iv2519 = phi i64 [ 0, %.lr.ph1346.split.split.preheader ], [ %indvars.iv.next2520, %bb.dj ] ; 12 uses
  %i.ky = add i64 %i.ia, %indvars.iv2519, !nosanitize !12 ; 2 uses
  %.not1495 = icmp ult i64 %i.ky, %i.ia, !nosanitize !12
  br i1 %.not1495, label %.split.us, label %bb.cs, !prof !22, !nosanitize !12

.split.us:                                        ; preds = %.lr.ph1346.split.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @61, i64 %i.ia, i64 %i.ky) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1348.us:                                    ; preds = %.lr.ph1346
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @63, i64 0) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cs:                                            ; preds = %.lr.ph1346.split.split
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv2519
  store i8 0, ptr %i.kz, align 1, !tbaa !74
  %exitcond2522.not.a = icmp eq i64 %indvars.iv2519, 256
  br i1 %exitcond2522.not.a, label %.split1356.us, label %bb.ct, !prof !22, !nosanitize !12

.split1356.us:                                    ; preds = %bb.cs
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @64, i64 256) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ct:                                            ; preds = %bb.cs
  %i.la = shl nuw nsw i64 %indvars.iv2519, 3
  %i.lb = add i64 %i.la, %i.kb, !nosanitize !12   ; 2 uses
  %.not273 = icmp ult i64 %i.lb, %i.kb, !nosanitize !12
  br i1 %.not273, label %.split1359.us, label %bb.cu, !prof !22, !nosanitize !12

.split1359.us:                                    ; preds = %bb.ct
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @65, i64 %i.kb, i64 %i.lb) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cu:                                            ; preds = %bb.ct
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv2519
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !175 ; 4 uses
  %i.le = icmp ne ptr %i.ld, null, !nosanitize !12
  %i.lf = ptrtoint ptr %i.ld to i64, !nosanitize !12 ; 2 uses
  %i.lg = and i64 %i.lf, 7, !nosanitize !12
  %i.lh = icmp eq i64 %i.lg, 0, !nosanitize !12
  %i.li = and i1 %i.le, %i.lh, !nosanitize !12
  br i1 %i.li, label %bb.cv, label %.split1366.us, !prof !13, !nosanitize !12

.split1366.us:                                    ; preds = %bb.cu, %.lr.ph1346.split.split.us
  %.us-phi1367 = phi i64 [ %i.kg, %.lr.ph1346.split.split.us ], [ %i.lf, %bb.cu ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @67, i64 %.us-phi1367) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cv:                                            ; preds = %bb.cu
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lk = load <2 x float>, ptr %i.lj, align 8, !tbaa !28 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !28 ; 2 uses
  %i.ll = getelementptr inbounds nuw [12 x i8], ptr %.0.i281, i64 %indvars.iv2519 ; 3 uses
  %i.lm = mul nuw nsw i64 %indvars.iv2519, 12
  %i.ln = add i64 %i.lm, %i.kc, !nosanitize !12   ; 2 uses
  %.not1497 = icmp ult i64 %i.ln, %i.kc, !nosanitize !12
  br i1 %.not1497, label %.split1372.us, label %bb.cw, !prof !22, !nosanitize !12

.split1372.us:                                    ; preds = %bb.cv
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @68, i64 %i.kc, i64 %i.ln) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cw:                                            ; preds = %bb.cv
  %i.lo = ptrtoint ptr %i.ll to i64, !nosanitize !12 ; 2 uses
  %i.lp = and i64 %i.lo, 3, !nosanitize !12
  %i.lq = icmp eq i64 %i.lp, 0, !nosanitize !12
  br i1 %i.lq, label %bb.cx, label %.split1376, !prof !13, !nosanitize !12

.split1376:                                       ; preds = %bb.cw, %.lr.ph1346.split.split.us
  %.us-phi1377 = phi i64 [ 0, %.lr.ph1346.split.split.us ], [ %i.lo, %bb.cw ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @69, i64 %.us-phi1377) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cx:                                            ; preds = %bb.cw
  store <2 x float> %i.lk, ptr %i.ll, align 4, !tbaa !28
  %.sroa.6.0..sroa_idx292 = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  store float %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx292, align 4, !tbaa !28
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %.0.i283, i64 %indvars.iv2519 ; 2 uses
  %i.ls = shl nuw nsw i64 %indvars.iv2519, 2      ; 3 uses
  %i.lt = add i64 %i.ls, %i.jn, !nosanitize !12   ; 3 uses
  %i.lu = icmp eq i64 %i.lt, 0
  %i.lv = xor i1 %i.jp, %i.lu
  %i.lw = icmp uge i64 %i.lt, %i.jn, !nosanitize !12
  %i.lx = and i1 %i.lw, %i.lv, !nosanitize !12
  br i1 %i.lx, label %bb.cz, label %bb.cy, !prof !13, !nosanitize !12

bb.cy:                                            ; preds = %bb.cx
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @70, i64 %i.jn, i64 %i.lt) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cz:                                            ; preds = %bb.cx
  %i.ly = ptrtoint ptr %i.lr to i64, !nosanitize !12 ; 2 uses
  %i.lz = and i64 %i.ly, 3, !nosanitize !12
  %i.ma = icmp eq i64 %i.lz, 0, !nosanitize !12
  %i.mb = and i1 %i.jp, %i.ma
  br i1 %i.mb, label %bb.db, label %bb.da, !prof !13, !nosanitize !12

bb.da:                                            ; preds = %bb.cz
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @71, i64 %i.ly) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.db:                                            ; preds = %bb.cz
  %i.mc = extractelement <2 x float> %i.lk, i64 0
  store float %i.mc, ptr %i.lr, align 4, !tbaa !28
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv2519 ; 2 uses
  %i.me = add i64 %i.ls, %i.jv, !nosanitize !12   ; 2 uses
  %.not302 = icmp ult i64 %i.me, %i.jv, !nosanitize !12
  br i1 %.not302, label %bb.dc, label %bb.dd, !prof !22, !nosanitize !12

bb.dc:                                            ; preds = %bb.db
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @72, i64 %i.jv, i64 %i.me) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dd:                                            ; preds = %bb.db
  %i.mf = ptrtoint ptr %i.md to i64, !nosanitize !12 ; 2 uses
  %i.mg = and i64 %i.mf, 3, !nosanitize !12
  %i.mh = icmp eq i64 %i.mg, 0, !nosanitize !12
  br i1 %i.mh, label %bb.df, label %bb.de, !prof !13, !nosanitize !12

bb.de:                                            ; preds = %bb.dd
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @73, i64 %i.mf) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.df:                                            ; preds = %bb.dd
  %i.mi = extractelement <2 x float> %i.lk, i64 1
  store float %i.mi, ptr %i.md, align 4, !tbaa !28
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv2519 ; 2 uses
  %i.mk = add i64 %i.ls, %i.kd, !nosanitize !12   ; 2 uses
  %.not274 = icmp ult i64 %i.mk, %i.kd, !nosanitize !12
  br i1 %.not274, label %bb.dg, label %bb.dh, !prof !22, !nosanitize !12

bb.dg:                                            ; preds = %bb.df
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @74, i64 %i.kd, i64 %i.mk) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dh:                                            ; preds = %bb.df
  %i.ml = ptrtoint ptr %i.mj to i64, !nosanitize !12 ; 2 uses
  %i.mm = and i64 %i.ml, 3, !nosanitize !12
  %i.mn = icmp eq i64 %i.mm, 0, !nosanitize !12
  br i1 %i.mn, label %bb.dj, label %bb.di, !prof !13, !nosanitize !12

bb.di:                                            ; preds = %bb.dh
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @75, i64 %i.ml) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dj:                                            ; preds = %bb.dh
  store float %.sroa.6.0.copyload, ptr %i.mj, align 4, !tbaa !28
  %indvars.iv.next2520 = add nuw nsw i64 %indvars.iv2519, 1 ; 2 uses
  %exitcond2523.not = icmp eq i64 %indvars.iv.next2520, %wide.trip.count
  br i1 %exitcond2523.not, label %.preheader305, label %.lr.ph1346.split.split, !llvm.loop !162

.preheader304:                                    ; preds = %bb.cr, %.preheader305
  %i.mo = icmp sgt i32 %.0204.lcssa, 0
  br i1 %i.mo, label %.lr.ph1413, label %._crit_edge1414

.lr.ph1413:                                       ; preds = %.preheader304
  %i.mp = ptrtoint ptr %i.c to i64, !nosanitize !12 ; 3 uses
  %i.mq = ptrtoint ptr %.0.i280 to i64            ; 3 uses
  %.not1511.a = icmp eq ptr %.0.i280, null
  %i.mr = icmp ne i64 %i.ia, 0                    ; 2 uses
  br i1 %.not1511.a, label %.lr.ph1413.split.us, label %.lr.ph1413.split.preheader, !prof !22

.lr.ph1413.split.preheader:                       ; preds = %.lr.ph1413
  %wide.trip.count2533 = zext nneg i32 %.0204.lcssa to i64
  br label %.lr.ph1413.split

.lr.ph1413.split.us:                              ; preds = %.lr.ph1413
  %i.ms = load ptr, ptr %i.c, align 16, !tbaa !64 ; 3 uses
  %i.mt = icmp ne ptr %i.ms, null, !nosanitize !12
  %i.mu = ptrtoint ptr %i.ms to i64, !nosanitize !12 ; 2 uses
  %i.mv = and i64 %i.mu, 7, !nosanitize !12
  %i.mw = icmp eq i64 %i.mv, 0, !nosanitize !12
  %i.mx = and i1 %i.mt, %i.mw, !nosanitize !12
  br i1 %i.mx, label %bb.dk, label %.split1426.us, !prof !13, !nosanitize !12

bb.dk:                                            ; preds = %.lr.ph1413.split.us
  %i.my = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !66 ; 2 uses
  %i.na = icmp ne ptr %i.mz, null, !nosanitize !12
  %i.nb = ptrtoint ptr %i.mz to i64, !nosanitize !12 ; 2 uses
  %i.nc = and i64 %i.nb, 7, !nosanitize !12
  %i.nd = icmp eq i64 %i.nc, 0, !nosanitize !12
  %i.ne = and i1 %i.na, %i.nd, !nosanitize !12
  br i1 %i.ne, label %.split1442.us, label %.split1432.us, !prof !13, !nosanitize !12

bb.dl:                                            ; preds = %.lr.ph1380
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @76, i64 %i.jn) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1382.us:                                    ; preds = %.lr.ph1380.split.split.us.split.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @77, i64 %i.jn, i64 %i.kp) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1388.us:                                    ; preds = %bb.cp
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @78, i64 %i.jv, i64 %i.ks) #13, !nosanitize !12
  unreachable, !nosanitize !12

end_hunk_0
begin_hunk_1_@b3CreateHull:bb.a
  %i.np = shl nuw nsw i64 %indvars.iv2529, 3
  %i.nq = add i64 %i.np, %i.mp, !nosanitize !12   ; 2 uses
  %.not269 = icmp ult i64 %i.nq, %i.mp, !nosanitize !12
  br i1 %.not269, label %.split1419.us, label %bb.dn, !prof !22, !nosanitize !12

.split1419.us:                                    ; preds = %bb.dm
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.mp, i64 %i.nq) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dn:                                            ; preds = %bb.dm
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv2529
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !64 ; 6 uses
  %i.nt = icmp ne ptr %i.ns, null, !nosanitize !12
  %i.nu = ptrtoint ptr %i.ns to i64, !nosanitize !12 ; 2 uses
  %i.nv = and i64 %i.nu, 7, !nosanitize !12
  %i.nw = icmp eq i64 %i.nv, 0, !nosanitize !12
  %i.nx = and i1 %i.nt, %i.nw, !nosanitize !12
  br i1 %i.nx, label %bb.do, label %.split1426.us, !prof !13, !nosanitize !12

.split1426.us:                                    ; preds = %bb.dn, %.lr.ph1413.split.us
  %.us-phi1427 = phi i64 [ %i.mu, %.lr.ph1413.split.us ], [ %i.nu, %bb.dn ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @83, i64 %.us-phi1427) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.do:                                            ; preds = %bb.dn
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !66 ; 3 uses
  %i.oa = icmp ne ptr %i.nz, null, !nosanitize !12
  %i.ob = ptrtoint ptr %i.nz to i64, !nosanitize !12 ; 2 uses
  %i.oc = and i64 %i.ob, 7, !nosanitize !12
  %i.od = icmp eq i64 %i.oc, 0, !nosanitize !12
  %i.oe = and i1 %i.oa, %i.od, !nosanitize !12
  br i1 %i.oe, label %bb.dp, label %.split1432.us, !prof !13, !nosanitize !12

.split1432.us:                                    ; preds = %bb.do, %bb.dk
  %.us-phi1433 = phi i64 [ %i.nb, %bb.dk ], [ %i.ob, %bb.do ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @84, i64 %.us-phi1433) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dp:                                            ; preds = %bb.do
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %.0.i280, i64 %indvars.iv2529 ; 4 uses
  %i.og = shl nuw nsw i64 %indvars.iv2529, 2
  %i.oh = add i64 %i.og, %i.mq, !nosanitize !12   ; 2 uses
  %.not1512.a = icmp ult i64 %i.oh, %i.mq, !nosanitize !12
  br i1 %.not1512.a, label %.split1438.us, label %bb.dq, !prof !22, !nosanitize !12

.split1438.us:                                    ; preds = %bb.dp
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @85, i64 %i.mq, i64 %i.oh) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1442.us:                                    ; preds = %bb.dk
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @87, i64 0) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dq:                                            ; preds = %bb.dp
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nz, i64 40
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !63
  %i.ok = trunc i32 %i.oj to i8
  store i8 %i.ok, ptr %i.of, align 1, !tbaa !76
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ns, i64 32
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !65 ; 3 uses
  %i.on = icmp ne ptr %i.om, null, !nosanitize !12
  %i.oo = ptrtoint ptr %i.om to i64, !nosanitize !12 ; 2 uses
  %i.op = and i64 %i.oo, 7, !nosanitize !12
  %i.oq = icmp eq i64 %i.op, 0, !nosanitize !12
  %i.or = and i1 %i.on, %i.oq, !nosanitize !12
  br i1 %i.or, label %bb.ds, label %bb.dr, !prof !13, !nosanitize !12

bb.dr:                                            ; preds = %bb.dq
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @88, i64 %i.oo) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ds:                                            ; preds = %bb.dq
  %i.os = getelementptr inbounds nuw i8, ptr %i.om, i64 40
  %i.ot = getelementptr inbounds nuw i8, ptr %i.of, i64 1
  %i.ou = load i32, ptr %i.os, align 8, !tbaa !63
  %i.ov = trunc i32 %i.ou to i8
  store i8 %i.ov, ptr %i.ot, align 1, !tbaa !77
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !78 ; 3 uses
  %i.oy = icmp ne ptr %i.ox, null, !nosanitize !12
  %i.oz = ptrtoint ptr %i.ox to i64, !nosanitize !12 ; 2 uses
  %i.pa = and i64 %i.oz, 7, !nosanitize !12
  %i.pb = icmp eq i64 %i.pa, 0, !nosanitize !12
  %i.pc = and i1 %i.oy, %i.pb, !nosanitize !12
  br i1 %i.pc, label %bb.du, label %bb.dt, !prof !13, !nosanitize !12

bb.dt:                                            ; preds = %bb.ds
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @89, i64 %i.oz) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.du:                                            ; preds = %bb.ds
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ox, i64 120
  %i.pe = getelementptr inbounds nuw i8, ptr %i.of, i64 3
  %i.pf = load i32, ptr %i.pd, align 8, !tbaa !59
  %i.pg = trunc i32 %i.pf to i8
  store i8 %i.pg, ptr %i.pe, align 1, !tbaa !178
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !79 ; 3 uses
  %i.pj = icmp ne ptr %i.pi, null, !nosanitize !12
  %i.pk = ptrtoint ptr %i.pi to i64, !nosanitize !12 ; 2 uses
  %i.pl = and i64 %i.pk, 7, !nosanitize !12
  %i.pm = icmp eq i64 %i.pl, 0, !nosanitize !12
  %i.pn = and i1 %i.pj, %i.pm, !nosanitize !12
  br i1 %i.pn, label %bb.dw, label %bb.dv, !prof !13, !nosanitize !12

bb.dv:                                            ; preds = %bb.du
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @90, i64 %i.pk) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dw:                                            ; preds = %bb.du
  %i.po = getelementptr inbounds nuw i8, ptr %i.pi, i64 36
  %i.pp = getelementptr inbounds nuw i8, ptr %i.of, i64 2
  %i.pq = load i32, ptr %i.po, align 4, !tbaa !58 ; 3 uses
  %i.pr = trunc i32 %i.pq to i8
  store i8 %i.pr, ptr %i.pp, align 1, !tbaa !80
  %i.ps = trunc i64 %indvars.iv2529 to i8
  %i.pt = sext i32 %i.pq to i64                   ; 2 uses
  %i.pu = getelementptr inbounds i8, ptr %i.ib, i64 %i.pt ; 2 uses
  %i.pv = add i64 %i.ia, %i.pt, !nosanitize !12   ; 3 uses
  %i.pw = icmp eq i64 %i.pv, 0
  %i.px = xor i1 %i.mr, %i.pw
  %i.py = icmp uge i64 %i.pv, %i.ia, !nosanitize !12
  %i.pz = icmp slt i32 %i.pq, 0
  %i.qa = xor i1 %i.pz, %i.py
  %i.qb = and i1 %i.px, %i.qa, !nosanitize !12
  br i1 %i.qb, label %bb.dy, label %bb.dx, !prof !13, !nosanitize !12

bb.dx:                                            ; preds = %bb.dw
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @91, i64 %i.ia, i64 %i.pv) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dy:                                            ; preds = %bb.dw
  br i1 %i.mr, label %bb.ea, label %bb.dz, !prof !13, !nosanitize !12

bb.dz:                                            ; preds = %bb.dy
  %i.qc = ptrtoint ptr %i.pu to i64, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @92, i64 %i.qc) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ea:                                            ; preds = %bb.dy
  store i8 %i.ps, ptr %i.pu, align 1, !tbaa !74
  %indvars.iv.next2530 = add nuw nsw i64 %indvars.iv2529, 1 ; 2 uses
  %exitcond2534.not = icmp eq i64 %indvars.iv.next2530, %wide.trip.count2533
  br i1 %exitcond2534.not, label %._crit_edge1414, label %.lr.ph1413.split, !llvm.loop !163

bb.eb:                                            ; preds = %._crit_edge1414
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @93, i64 %i.ni, i64 %i.nj) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ec:                                            ; preds = %._crit_edge1414
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.nf ; 4 uses
  %i.qe = ptrtoint ptr %i.ng to i64, !nosanitize !12 ; 9 uses
  %i.qf = add i64 %i.nh, %i.qe, !nosanitize !12   ; 3 uses
  %i.qg = icmp eq i64 %i.qf, 0
  %i.qh = xor i1 %i.nk, %i.qg
  %i.qi = icmp uge i64 %i.qf, %i.qe, !nosanitize !12
  %i.qj = and i1 %i.qh, %i.qi, !nosanitize !12
  br i1 %i.qj, label %.preheader303, label %bb.ee, !prof !13, !nosanitize !12

.preheader303:                                    ; preds = %bb.ec
  %.not1513 = icmp eq i32 %.0205.lcssa, 0         ; 2 uses
  br i1 %.not1513, label %.preheader, label %.lr.ph1446

.lr.ph1446:                                       ; preds = %.preheader303
  %i.qk = ptrtoint ptr %i.b to i64, !nosanitize !12 ; 3 uses
  %.not1518.a = icmp eq i64 %i.ij, 0
  %i.ql = ptrtoint ptr %.0.i282 to i64            ; 3 uses
  %i.qm = icmp ne ptr %.0.i282, null              ; 2 uses
  %i.qn = ptrtoint ptr %i.qd to i64               ; 3 uses
  br i1 %.not1518.a, label %.lr.ph1446.split.us, label %.lr.ph1446.split.preheader, !prof !22

.lr.ph1446.split.preheader:                       ; preds = %.lr.ph1446
  %wide.trip.count2539 = zext nneg i32 %.0205.lcssa to i64
  br label %.lr.ph1446.split

.lr.ph1446.split.us:                              ; preds = %.lr.ph1446
  %i.qo = load ptr, ptr %i.b, align 16, !tbaa !60 ; 3 uses
  %i.qp = icmp ne ptr %i.qo, null, !nosanitize !12
  %i.qq = ptrtoint ptr %i.qo to i64, !nosanitize !12 ; 2 uses
  %i.qr = and i64 %i.qq, 7, !nosanitize !12
  %i.qs = icmp eq i64 %i.qr, 0, !nosanitize !12
  %i.qt = and i1 %i.qp, %i.qs, !nosanitize !12
  br i1 %i.qt, label %bb.ed, label %.split1458.us, !prof !13, !nosanitize !12

bb.ed:                                            ; preds = %.lr.ph1446.split.us
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !61 ; 2 uses
  %i.qw = icmp ne ptr %i.qv, null, !nosanitize !12
  %i.qx = ptrtoint ptr %i.qv to i64, !nosanitize !12 ; 2 uses
  %i.qy = and i64 %i.qx, 7, !nosanitize !12
  %i.qz = icmp eq i64 %i.qy, 0, !nosanitize !12
  %i.ra = and i1 %i.qw, %i.qz, !nosanitize !12
  br i1 %i.ra, label %.split1473.us, label %.split1464.us, !prof !13, !nosanitize !12

bb.ee:                                            ; preds = %bb.ec
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @94, i64 %i.qe, i64 %i.qf) #13, !nosanitize !12
  unreachable, !nosanitize !12

.preheader:                                       ; preds = %bb.ez, %.preheader303
  %7 = icmp slt i32 %.0205.lcssa, %i.fw
  br i1 %7, label %.lr.ph1477, label %._crit_edge1478

.lr.ph1477:                                       ; preds = %.preheader
  %i.rb = ptrtoint ptr %i.qd to i64               ; 3 uses
  br i1 %i.nk, label %.lr.ph1477.split.preheader, label %.lr.ph1477.split.us, !prof !13

.lr.ph1477.split.preheader:                       ; preds = %.lr.ph1477
  %i.rc = zext nneg i32 %.0205.lcssa to i64
  br label %.lr.ph1477.split

.lr.ph1477.split.us:                              ; preds = %.lr.ph1477
  %i.rd = shl nuw nsw i32 %.0205.lcssa, 2
  %i.re = zext nneg i32 %i.rd to i64
  br i1 %.not1513, label %.split1483, label %.split1480.us, !prof !13, !nosanitize !12

.lr.ph1446.split:                                 ; preds = %.lr.ph1446.split.preheader, %bb.ez
  %indvars.iv2535 = phi i64 [ 0, %.lr.ph1446.split.preheader ], [ %indvars.iv.next2536, %bb.ez ] ; 12 uses
  %exitcond2538.not = icmp eq i64 %indvars.iv2535, 256
  br i1 %exitcond2538.not, label %.split1448.us, label %bb.ef, !prof !22, !nosanitize !12

.split1448.us:                                    ; preds = %.lr.ph1446.split
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @95, i64 256) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ef:                                            ; preds = %.lr.ph1446.split
  %i.rf = shl nuw nsw i64 %indvars.iv2535, 3
  %i.rg = add i64 %i.rf, %i.qk, !nosanitize !12   ; 2 uses
  %.not267 = icmp ult i64 %i.rg, %i.qk, !nosanitize !12
  br i1 %.not267, label %.split1451.us, label %bb.eg, !prof !22, !nosanitize !12

.split1451.us:                                    ; preds = %bb.ef
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @96, i64 %i.qk, i64 %i.rg) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.eg:                                            ; preds = %bb.ef
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv2535
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !60 ; 6 uses
  %i.rj = icmp ne ptr %i.ri, null, !nosanitize !12
  %i.rk = ptrtoint ptr %i.ri to i64, !nosanitize !12 ; 2 uses
  %i.rl = and i64 %i.rk, 7, !nosanitize !12
  %i.rm = icmp eq i64 %i.rl, 0, !nosanitize !12
  %i.rn = and i1 %i.rj, %i.rm, !nosanitize !12
  br i1 %i.rn, label %bb.eh, label %.split1458.us, !prof !13, !nosanitize !12

.split1458.us:                                    ; preds = %bb.eg, %.lr.ph1446.split.us
  %.us-phi1459 = phi i64 [ %i.qq, %.lr.ph1446.split.us ], [ %i.rk, %bb.eg ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @98, i64 %.us-phi1459) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.eh:                                            ; preds = %bb.eg
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !61 ; 3 uses
  %i.rq = icmp ne ptr %i.rp, null, !nosanitize !12
  %i.rr = ptrtoint ptr %i.rp to i64, !nosanitize !12 ; 2 uses
  %i.rs = and i64 %i.rr, 7, !nosanitize !12
  %i.rt = icmp eq i64 %i.rs, 0, !nosanitize !12
  %i.ru = and i1 %i.rq, %i.rt, !nosanitize !12
  br i1 %i.ru, label %bb.ei, label %.split1464.us, !prof !13, !nosanitize !12

.split1464.us:                                    ; preds = %bb.eh, %bb.ed
  %.us-phi1465 = phi i64 [ %i.qx, %bb.ed ], [ %i.rr, %bb.eh ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @99, i64 %.us-phi1465) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ei:                                            ; preds = %bb.eh
  %i.rv = add i64 %i.ij, %indvars.iv2535, !nosanitize !12 ; 2 uses
  %.not1519 = icmp ult i64 %i.rv, %i.ij, !nosanitize !12
  br i1 %.not1519, label %.split1470.us, label %bb.ej, !prof !22, !nosanitize !12

.split1470.us:                                    ; preds = %bb.ei
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @100, i64 %i.ij, i64 %i.rv) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1473.us:                                    ; preds = %bb.ed
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @102, i64 0) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ej:                                            ; preds = %bb.ei
  %i.rw = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv2535
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rp, i64 40
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !63
  %i.rz = trunc i32 %i.ry to i8
  store i8 %i.rz, ptr %i.rw, align 1, !tbaa !82
  %i.sa = getelementptr inbounds nuw [16 x i8], ptr %.0.i282, i64 %indvars.iv2535 ; 2 uses
  %i.sb = shl nuw nsw i64 %indvars.iv2535, 4
  %i.sc = add i64 %i.sb, %i.ql, !nosanitize !12   ; 3 uses
  %i.sd = icmp eq i64 %i.sc, 0
  %i.se = xor i1 %i.qm, %i.sd
  %i.sf = icmp uge i64 %i.sc, %i.ql, !nosanitize !12
  %i.sg = and i1 %i.sf, %i.se, !nosanitize !12
  br i1 %i.sg, label %bb.el, label %bb.ek, !prof !13, !nosanitize !12

bb.ek:                                            ; preds = %bb.ej
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @103, i64 %i.ql, i64 %i.sc) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.el:                                            ; preds = %bb.ej
  %i.sh = ptrtoint ptr %i.sa to i64, !nosanitize !12 ; 2 uses
  %i.si = and i64 %i.sh, 3, !nosanitize !12
  %i.sj = icmp eq i64 %i.si, 0, !nosanitize !12
  %i.sk = and i1 %i.qm, %i.sj
  br i1 %i.sk, label %bb.en, label %bb.em, !prof !13, !nosanitize !12

bb.em:                                            ; preds = %bb.el
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @105, i64 %i.sh) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.en:                                            ; preds = %bb.el
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ri, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sa, ptr noundef nonnull align 8 dereferenceable(16) %i.sl, i64 16, i1 false), !tbaa.struct !83
  %.sroa.0.0.copyload = load float, ptr %i.sl, align 8, !tbaa !28
  %.sroa.4.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %i.ri, i64 36
  %.sroa.4.0.copyload286 = load float, ptr %.sroa.4.0..sroa_idx285, align 4, !tbaa !28
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ri, i64 40
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !28
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %.0.i284, i64 %indvars.iv2535 ; 2 uses
  %i.sn = shl nuw nsw i64 %indvars.iv2535, 2      ; 3 uses
  %i.so = add i64 %i.sn, %i.ni, !nosanitize !12   ; 3 uses
  %i.sp = icmp eq i64 %i.so, 0
  %i.sq = xor i1 %i.nk, %i.sp
  %i.sr = icmp uge i64 %i.so, %i.ni, !nosanitize !12
  %i.ss = and i1 %i.sr, %i.sq, !nosanitize !12
  br i1 %i.ss, label %bb.ep, label %bb.eo, !prof !13, !nosanitize !12

bb.eo:                                            ; preds = %bb.en
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @106, i64 %i.ni, i64 %i.so) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ep:                                            ; preds = %bb.en
  %i.st = ptrtoint ptr %i.sm to i64, !nosanitize !12 ; 2 uses
  %i.su = and i64 %i.st, 3, !nosanitize !12
  %i.sv = icmp eq i64 %i.su, 0, !nosanitize !12
  %i.sw = and i1 %i.nk, %i.sv
  br i1 %i.sw, label %bb.er, label %bb.eq, !prof !13, !nosanitize !12

bb.eq:                                            ; preds = %bb.ep
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @107, i64 %i.st) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.er:                                            ; preds = %bb.ep
  store float %.sroa.0.0.copyload, ptr %i.sm, align 4, !tbaa !28
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv2535 ; 2 uses
  %i.sy = add i64 %i.sn, %i.qe, !nosanitize !12   ; 2 uses
  %.not301 = icmp ult i64 %i.sy, %i.qe, !nosanitize !12
  br i1 %.not301, label %bb.es, label %bb.et, !prof !22, !nosanitize !12

bb.es:                                            ; preds = %bb.er
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @108, i64 %i.qe, i64 %i.sy) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.et:                                            ; preds = %bb.er
  %i.sz = ptrtoint ptr %i.sx to i64, !nosanitize !12 ; 2 uses
  %i.ta = and i64 %i.sz, 3, !nosanitize !12
  %i.tb = icmp eq i64 %i.ta, 0, !nosanitize !12
  br i1 %i.tb, label %bb.ev, label %bb.eu, !prof !13, !nosanitize !12

bb.eu:                                            ; preds = %bb.et
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @109, i64 %i.sz) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ev:                                            ; preds = %bb.et
  store float %.sroa.4.0.copyload286, ptr %i.sx, align 4, !tbaa !28
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %indvars.iv2535 ; 2 uses
  %i.td = add i64 %i.sn, %i.qn, !nosanitize !12   ; 2 uses
  %.not268 = icmp ult i64 %i.td, %i.qn, !nosanitize !12
  br i1 %.not268, label %bb.ew, label %bb.ex, !prof !22, !nosanitize !12

bb.ew:                                            ; preds = %bb.ev
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @110, i64 %i.qn, i64 %i.td) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ex:                                            ; preds = %bb.ev
  %i.te = ptrtoint ptr %i.tc to i64, !nosanitize !12 ; 2 uses
  %i.tf = and i64 %i.te, 3, !nosanitize !12
  %i.tg = icmp eq i64 %i.tf, 0, !nosanitize !12
  br i1 %i.tg, label %bb.ez, label %bb.ey, !prof !13, !nosanitize !12

bb.ey:                                            ; preds = %bb.ex
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @111, i64 %i.te) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ez:                                            ; preds = %bb.ex
  store float %.sroa.5.0.copyload, ptr %i.tc, align 4, !tbaa !28
  %indvars.iv.next2536 = add nuw nsw i64 %indvars.iv2535, 1 ; 2 uses
  %exitcond2540.not = icmp eq i64 %indvars.iv.next2536, %wide.trip.count2539
  br i1 %exitcond2540.not, label %.preheader, label %.lr.ph1446.split, !llvm.loop !164

.lr.ph1477.split:                                 ; preds = %.lr.ph1477.split.preheader, %bb.fj
  %indvars.iv2541 = phi i64 [ %i.rc, %.lr.ph1477.split.preheader ], [ %indvars.iv.next2542, %bb.fj ] ; 5 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.0.i284, i64 %indvars.iv2541 ; 2 uses
  %i.ti = shl nuw nsw i64 %indvars.iv2541, 2      ; 3 uses
  %i.tj = add i64 %i.ti, %i.ni, !nosanitize !12   ; 2 uses
  %.not1525.a = icmp ult i64 %i.tj, %i.ni, !nosanitize !12
  br i1 %.not1525.a, label %.split1480.us, label %bb.fa, !prof !22, !nosanitize !12

.split1480.us:                                    ; preds = %.lr.ph1477.split, %.lr.ph1477.split.us
  %.us-phi1481 = phi i64 [ %i.re, %.lr.ph1477.split.us ], [ %i.tj, %.lr.ph1477.split ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @112, i64 %i.ni, i64 %.us-phi1481) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.fa:                                            ; preds = %.lr.ph1477.split
end_hunk_1
