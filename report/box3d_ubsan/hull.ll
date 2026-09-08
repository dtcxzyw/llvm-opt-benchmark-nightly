Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/hull?download=true
inline.NumInlined: 420
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@b3CreateHull:bb.a
  %i.y = zext nneg i32 %i.o to i64                ; 2 uses
  %i.z = mul nuw nsw i64 %i.y, 48                 ; 2 uses
  %i.aa = zext nneg i32 %i.q to i64
  %i.ab = add nuw nsw i64 %i.aa, %i.y
  %i.ac = mul nuw nsw i64 %i.ab, 48               ; 3 uses
  %i.ad = zext nneg i32 %i.t to i64
  %i.ae = shl nuw nsw i64 %i.ad, 7
  %i.af = add nuw nsw i64 %i.ac, %i.ae            ; 3 uses
  %i.ag = zext nneg i32 %i.v to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  %i.ai = add nuw nsw i64 %i.af, %i.ah            ; 3 uses
  %i.aj = add nuw nsw i64 %i.ai, %i.ah            ; 3 uses
  %i.ak = zext nneg i32 %i.x to i64               ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.aj, %i.al            ; 3 uses
  %i.an = shl nuw nsw i64 %i.ak, 5
  %i.ao = add nuw nsw i64 %i.am, %i.an
  %i.ap = and i64 %i.ao, -8                       ; 3 uses
  %i.aq = zext nneg i32 %1 to i64
  %i.ar = mul nuw nsw i64 %i.aq, 12
  %i.as = add nuw nsw i64 %i.ap, %i.ar            ; 6 uses
  %i.at = tail call ptr @b3Alloc(i64 noundef %i.as) #14 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %3, i8 0, i64 384, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.au, ptr %i.au, align 8, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.au, ptr %i.av, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 5 uses
  store ptr %i.aw, ptr %i.aw, align 8, !tbaa !32
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
  store i32 %i.o, ptr %i.bd, align 8, !tbaa !170
  %i.be = add i64 %i.z, %i.ba, !nosanitize !12    ; 3 uses
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = icmp uge i64 %i.be, %i.ba, !nosanitize !12
  %i.bh = and i1 %i.bf, %i.bg
  %i.bi = and i1 %i.bh, %i.bb
  br i1 %i.bi, label %bb.h, label %bb.g, !prof !13, !nosanitize !12

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @340, i64 %i.ba, i64 %i.be) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.h:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.z
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 264
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 272
  store i32 %i.q, ptr %i.bl, align 8, !tbaa !171
  %i.bm = add i64 %i.ac, %i.ba, !nosanitize !12   ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %i.ba, !nosanitize !12
  %i.bo = and i1 %i.bn, %i.bb
  br i1 %i.bo, label %bb.j, label %bb.i, !prof !13, !nosanitize !12

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @341, i64 %i.ba, i64 %i.bm) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.j:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ac
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 288
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !48
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 296
  store i32 %i.t, ptr %i.br, align 8, !tbaa !172
  %i.bs = add i64 %i.af, %i.ba, !nosanitize !12   ; 2 uses
  %i.bt = icmp uge i64 %i.bs, %i.ba, !nosanitize !12
  %i.bu = and i1 %i.bt, %i.bb
  br i1 %i.bu, label %bb.l, label %bb.k, !prof !13, !nosanitize !12

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @343, i64 %i.ba, i64 %i.bs) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.l:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.af
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 312
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !49
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 320
  store i32 %i.v, ptr %i.bx, align 8, !tbaa !173
  %i.by = add i64 %i.ai, %i.ba, !nosanitize !12   ; 2 uses
  %i.bz = icmp uge i64 %i.by, %i.ba, !nosanitize !12
  %i.ca = and i1 %i.bz, %i.bb
  br i1 %i.ca, label %bb.n, label %bb.m, !prof !13, !nosanitize !12

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @344, i64 %i.ba, i64 %i.by) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.n:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ai
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 328
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !50
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 336
  store i32 %i.v, ptr %i.cd, align 8, !tbaa !174
  %i.ce = add i64 %i.aj, %i.ba, !nosanitize !12   ; 2 uses
  %i.cf = icmp uge i64 %i.ce, %i.ba, !nosanitize !12
  %i.cg = and i1 %i.cf, %i.bb
  br i1 %i.cg, label %bb.p, label %bb.o, !prof !13, !nosanitize !12

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @345, i64 %i.ba, i64 %i.ce) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.p:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aj
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 344
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !51
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 352
  store i32 %i.x, ptr %i.cj, align 8, !tbaa !175
  %i.ck = add i64 %i.am, %i.ba, !nosanitize !12   ; 2 uses
  %i.cl = icmp uge i64 %i.ck, %i.ba, !nosanitize !12
  %i.cm = and i1 %i.cl, %i.bb
  br i1 %i.cm, label %b3HullBuilder_Init.exit, label %bb.q, !prof !13, !nosanitize !12

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @346, i64 %i.ba, i64 %i.ck) #13, !nosanitize !12
  unreachable, !nosanitize !12

b3HullBuilder_Init.exit:                          ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.am
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 360
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !52
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 368
  store i32 %i.x, ptr %i.cp, align 8, !tbaa !176
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
  br label %bb.fs

bb.u:                                             ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 372
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !53 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 128
  br i1 %i.cx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str, i32 noundef %i.cw, i32 noundef 128) #14
  call void @b3Free(ptr noundef nonnull %i.at, i64 noundef %i.as) #14
  br label %bb.fs

bb.w:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 380
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !54 ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 128
  br i1 %i.da, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.1, i32 noundef %i.cz, i32 noundef 128) #14
  call void @b3Free(ptr noundef nonnull %i.at, i64 noundef %i.as) #14
  br label %bb.fs

bb.y:                                             ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 376
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !55 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, 256
  br i1 %i.dd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @b3Log(ptr noundef nonnull @.str.2, i32 noundef %i.dc, i32 noundef 256) #14
  call void @b3Free(ptr noundef nonnull %i.at, i64 noundef %i.as) #14
  br label %bb.fs

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
  store ptr %.02061335, ptr %i.dt, align 8, !tbaa !177
  %i.du = getelementptr inbounds nuw i8, ptr %.02061335, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %i.dv, %i.aw
  br i1 %.not, label %._crit_edge.loopexit, label %bb.ab, !llvm.loop !160

bb.ai:                                            ; preds = %.lr.ph1341, %bb.bg
  %indvars.iv2505 = phi i64 [ 0, %.lr.ph1341 ], [ %indvars.iv.next2506, %bb.bg ] ; 5 uses
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
  %i.ec = trunc nuw nsw i64 %indvars.iv2505 to i32
  store i32 %i.ec, ptr %i.eb, align 8, !tbaa !59
  %indvars.iv.next2506 = add nuw nsw i64 %indvars.iv2505, 1 ; 2 uses
  %exitcond2508.not = icmp eq i64 %indvars.iv2505, 256
  br i1 %exitcond2508.not, label %bb.al, label %bb.am, !prof !22, !nosanitize !12

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @37, i64 256) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.am:                                            ; preds = %bb.ak
  %i.ed = shl nuw nsw i64 %indvars.iv2505, 3
  %i.ee = add i64 %i.ed, %i.di, !nosanitize !12   ; 2 uses
  %.not275 = icmp ult i64 %i.ee, %i.di, !nosanitize !12
  br i1 %.not275, label %bb.an, label %bb.ao, !prof !22, !nosanitize !12

bb.an:                                            ; preds = %bb.am
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @38, i64 %i.di, i64 %i.ee) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ao:                                            ; preds = %bb.am
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv2505
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
  br i1 %.not278, label %bb.bg, label %bb.ap, !llvm.loop !161

bb.bg:                                            ; preds = %bb.bf
  %i.fq = getelementptr inbounds nuw i8, ptr %.02031339, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !33 ; 2 uses
  %.not265 = icmp eq ptr %i.fr, %i.ay
  br i1 %.not265, label %._crit_edge1342.loopexit, label %bb.ai, !llvm.loop !162

._crit_edge1342.loopexit:                         ; preds = %bb.bg
  %i.fs = trunc nuw nsw i64 %indvars.iv.next2506 to i32
  br label %._crit_edge1342

._crit_edge1342:                                  ; preds = %._crit_edge1342.loopexit, %._crit_edge
  %.0205.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.fs, %._crit_edge1342.loopexit ] ; 12 uses
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
  %i.gk = add nsw i32 %.0205.lcssa, 134217728
  %i.gl = icmp ult i32 %i.gk, 268435456
  br i1 %i.gl, label %bb.bk, label %bb.bj, !prof !13, !nosanitize !12

bb.bj:                                            ; preds = %bb.bi
  %i.gm = zext i32 %.0205.lcssa to i64, !nosanitize !12
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @51, i64 %i.gm, i64 16) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bk:                                            ; preds = %bb.bi
  %i.gn = shl nuw nsw i32 %.0205.lcssa, 4
  %4 = zext nneg i32 %i.gn to i64
  %i.go = add nsw i64 %i.gi, %4
  %.fr1510 = freeze i64 %i.go                     ; 3 uses
  %i.gp = trunc i64 %.fr1510 to i32
  %narrow297 = add nuw nsw i32 %.0205.lcssa, 7
  %i.gq = and i32 %narrow297, -8
  %i.gr = sext i32 %i.gq to i64
  %i.gs = add nsw i64 %.fr1510, %i.gr             ; 3 uses
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
  %.fr1517 = freeze i64 %i.ha                     ; 3 uses
  %i.hb = trunc i64 %.fr1517 to i32               ; 2 uses
  %i.hc = mul nsw i32 %i.fw, 3                    ; 2 uses
  %i.hd = add nsw i32 %i.hc, 536870912
  %i.he = icmp ult i32 %i.hd, 1073741824
  br i1 %i.he, label %bb.bo, label %bb.bn, !prof !13, !nosanitize !12

bb.bn:                                            ; preds = %bb.bm
  %i.hf = zext i32 %i.hc to i64, !nosanitize !12
  call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @53, i64 %i.hf, i64 4) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bo:                                            ; preds = %bb.bm
  %i.hg = mul nsw i32 %i.fw, 12
  %i.hh = sext i32 %i.hg to i64
  %i.hi = add i64 %.fr1517, %i.hh                 ; 3 uses
  %i.hj = call ptr @b3Alloc(i64 noundef %i.hi) #14
  %.fr = freeze ptr %i.hj                         ; 24 uses
  %.not266 = icmp eq ptr %.fr, null, !nosanitize !12
  br i1 %.not266, label %bb.bp, label %bb.bq, !prof !22, !nosanitize !12

bb.bp:                                            ; preds = %bb.bo
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @54) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.fr, i8 0, i64 %i.hi, i1 false)
  %i.hk = ptrtoint ptr %.fr to i64, !nosanitize !12 ; 16 uses
  store i64 5353818467820062812, ptr %.fr, align 8, !tbaa !178
  %i.hl = getelementptr inbounds nuw i8, ptr %.fr, i64 104
  store i32 144, ptr %i.hl, align 8, !tbaa !67
  %i.hm = getelementptr inbounds nuw i8, ptr %.fr, i64 108 ; 2 uses
  store i32 %narrow294, ptr %i.hm, align 4, !tbaa !21
  %i.hn = getelementptr inbounds nuw i8, ptr %.fr, i64 116
  store i32 %narrow296, ptr %i.hn, align 4, !tbaa !68
  %i.ho = getelementptr inbounds nuw i8, ptr %.fr, i64 124
  store i32 %i.gj, ptr %i.ho, align 4, !tbaa !25
  %i.hp = getelementptr inbounds nuw i8, ptr %.fr, i64 128
  store i32 %i.gp, ptr %i.hp, align 8, !tbaa !69
  %i.hq = getelementptr inbounds nuw i8, ptr %.fr, i64 132
  store i32 %i.gt, ptr %i.hq, align 4, !tbaa !70
  %i.hr = getelementptr inbounds nuw i8, ptr %.fr, i64 136
  store i32 %i.hb, ptr %i.hr, align 8, !tbaa !71
  %i.hs = getelementptr inbounds nuw i8, ptr %.fr, i64 100 ; 2 uses
  store i32 %.0207.lcssa, ptr %i.hs, align 4, !tbaa !20
  %i.ht = getelementptr inbounds nuw i8, ptr %.fr, i64 112
  store i32 %.0204.lcssa, ptr %i.ht, align 8, !tbaa !179
  %i.hu = getelementptr inbounds nuw i8, ptr %.fr, i64 120
  store i32 %.0205.lcssa, ptr %i.hu, align 8, !tbaa !24
  %i.hv = getelementptr inbounds nuw i8, ptr %.fr, i64 140 ; 2 uses
  %i.hw = trunc i64 %i.hi to i32
  store i32 %i.hw, ptr %i.hv, align 4, !tbaa !72
  %i.hx = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hk, i64 144), !nosanitize !12 ; 2 uses
  %i.hy = extractvalue { i64, i1 } %i.hx, 1, !nosanitize !12
  br i1 %i.hy, label %bb.br, label %bb.bs, !prof !22, !nosanitize !12

bb.br:                                            ; preds = %bb.bq
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @547, i64 %i.hk, i64 144) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bs:                                            ; preds = %bb.bq
  %i.hz = extractvalue { i64, i1 } %i.hx, 0, !nosanitize !12 ; 9 uses
  %i.ia = inttoptr i64 %i.hz to ptr               ; 3 uses
  %i.ib = icmp eq i32 %narrow296, 0
  br i1 %i.ib, label %b3GetHullEdgesWrite.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ic = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hk, i64 %i.gd), !nosanitize !12 ; 2 uses
  %i.id = extractvalue { i64, i1 } %i.ic, 1, !nosanitize !12
  br i1 %i.id, label %bb.bu, label %bb.bv, !prof !22, !nosanitize !12

bb.bu:                                            ; preds = %bb.bt
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @548, i64 %i.hk, i64 %i.gd) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bv:                                            ; preds = %bb.bt
  %i.ie = extractvalue { i64, i1 } %i.ic, 0, !nosanitize !12
  %i.if = inttoptr i64 %i.ie to ptr
  br label %b3GetHullEdgesWrite.exit

b3GetHullEdgesWrite.exit:                         ; preds = %bb.bs, %bb.bv
  %.0.i280 = phi ptr [ %i.if, %bb.bv ], [ null, %bb.bs ] ; 3 uses
  %sext = shl i64 %.fr1510, 32
  %i.ig = ashr exact i64 %sext, 32                ; 2 uses
  %i.ih = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hk, i64 %i.ig), !nosanitize !12 ; 2 uses
  %i.ii = extractvalue { i64, i1 } %i.ih, 0, !nosanitize !12 ; 5 uses
  %i.ij = extractvalue { i64, i1 } %i.ih, 1, !nosanitize !12
  br i1 %i.ij, label %bb.bw, label %bb.bx, !prof !22, !nosanitize !12

bb.bw:                                            ; preds = %b3GetHullEdgesWrite.exit
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @57, i64 %i.hk, i64 %i.ig) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.bx:                                            ; preds = %b3GetHullEdgesWrite.exit
  %i.ik = inttoptr i64 %i.ii to ptr
  %i.il = icmp eq i32 %narrow294, 0
  br i1 %i.il, label %b3GetHullPointsWrite.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.im = sext i32 %narrow294 to i64              ; 2 uses
  %i.in = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hk, i64 %i.im), !nosanitize !12 ; 2 uses
  %i.io = extractvalue { i64, i1 } %i.in, 1, !nosanitize !12
  br i1 %i.io, label %bb.bz, label %bb.ca, !prof !22, !nosanitize !12

bb.bz:                                            ; preds = %bb.by
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @549, i64 %i.hk, i64 %i.im) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ca:                                            ; preds = %bb.by
  %i.ip = extractvalue { i64, i1 } %i.in, 0, !nosanitize !12
  %i.iq = inttoptr i64 %i.ip to ptr
  br label %b3GetHullPointsWrite.exit

b3GetHullPointsWrite.exit:                        ; preds = %bb.bx, %bb.ca
  %.0.i281 = phi ptr [ %i.iq, %bb.ca ], [ null, %bb.bx ] ; 3 uses
  %i.ir = icmp eq i32 %i.gj, 0
  br i1 %i.ir, label %b3GetHullPlanesWrite.exit, label %bb.cb

bb.cb:                                            ; preds = %b3GetHullPointsWrite.exit
  %sext298 = shl i64 %i.gi, 32
  %i.is = ashr exact i64 %sext298, 32             ; 2 uses
  %i.it = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hk, i64 %i.is), !nosanitize !12 ; 2 uses
  %i.iu = extractvalue { i64, i1 } %i.it, 1, !nosanitize !12
  br i1 %i.iu, label %bb.cc, label %bb.cd, !prof !22, !nosanitize !12

bb.cc:                                            ; preds = %bb.cb
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @550, i64 %i.hk, i64 %i.is) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cd:                                            ; preds = %bb.cb
  %i.iv = extractvalue { i64, i1 } %i.it, 0, !nosanitize !12
  %i.iw = inttoptr i64 %i.iv to ptr
  br label %b3GetHullPlanesWrite.exit

b3GetHullPlanesWrite.exit:                        ; preds = %b3GetHullPointsWrite.exit, %bb.cd
  %.0.i282 = phi ptr [ %i.iw, %bb.cd ], [ null, %b3GetHullPointsWrite.exit ] ; 3 uses
  %i.ix = icmp eq i32 %i.gt, 0
  br i1 %i.ix, label %b3GetHullSoaVerticesWrite.exit, label %bb.ce

bb.ce:                                            ; preds = %b3GetHullPlanesWrite.exit
  %sext299 = shl i64 %i.gs, 32
  %i.iy = ashr exact i64 %sext299, 32             ; 2 uses
  %i.iz = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hk, i64 %i.iy), !nosanitize !12 ; 2 uses
  %i.ja = extractvalue { i64, i1 } %i.iz, 1, !nosanitize !12
  br i1 %i.ja, label %bb.cf, label %bb.cg, !prof !22, !nosanitize !12

bb.cf:                                            ; preds = %bb.ce
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @551, i64 %i.hk, i64 %i.iy) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cg:                                            ; preds = %bb.ce
  %i.jb = extractvalue { i64, i1 } %i.iz, 0, !nosanitize !12
  %i.jc = inttoptr i64 %i.jb to ptr
  br label %b3GetHullSoaVerticesWrite.exit

b3GetHullSoaVerticesWrite.exit:                   ; preds = %b3GetHullPlanesWrite.exit, %bb.cg
  %.0.i283 = phi ptr [ %i.jc, %bb.cg ], [ null, %b3GetHullPlanesWrite.exit ] ; 6 uses
  %i.jd = icmp eq i32 %i.hb, 0
  br i1 %i.jd, label %b3GetHullSoaNormalsWrite.exit, label %bb.ch

bb.ch:                                            ; preds = %b3GetHullSoaVerticesWrite.exit
  %sext300 = shl i64 %.fr1517, 32
  %i.je = ashr exact i64 %sext300, 32             ; 2 uses
  %i.jf = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hk, i64 %i.je), !nosanitize !12 ; 2 uses
  %i.jg = extractvalue { i64, i1 } %i.jf, 1, !nosanitize !12
  br i1 %i.jg, label %bb.ci, label %bb.cj, !prof !22, !nosanitize !12

bb.ci:                                            ; preds = %bb.ch
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @552, i64 %i.hk, i64 %i.je) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cj:                                            ; preds = %bb.ch
  %i.jh = extractvalue { i64, i1 } %i.jf, 0, !nosanitize !12
  %i.ji = inttoptr i64 %i.jh to ptr
  br label %b3GetHullSoaNormalsWrite.exit

b3GetHullSoaNormalsWrite.exit:                    ; preds = %b3GetHullSoaVerticesWrite.exit, %bb.cj
  %.0.i284 = phi ptr [ %i.ji, %bb.cj ], [ null, %b3GetHullSoaVerticesWrite.exit ] ; 5 uses
  %i.jj = sext i32 %i.fu to i64                   ; 4 uses
  %i.jk = getelementptr inbounds [4 x i8], ptr %.0.i283, i64 %i.jj ; 5 uses
  %i.jl = shl nsw i64 %i.jj, 2                    ; 2 uses
  %i.jm = ptrtoint ptr %.0.i283 to i64, !nosanitize !12 ; 11 uses
  %i.jn = add i64 %i.jl, %i.jm, !nosanitize !12   ; 3 uses
  %i.jo = icmp ne ptr %.0.i283, null, !nosanitize !12 ; 5 uses
  %i.jp = icmp eq i64 %i.jn, 0
  %i.jq = xor i1 %i.jo, %i.jp
  %5 = icmp uge i64 %i.jn, %i.jm, !nosanitize !12
  %i.jr = and i1 %i.jq, %5, !nosanitize !12
  br i1 %i.jr, label %bb.cl, label %bb.ck, !prof !13, !nosanitize !12

bb.ck:                                            ; preds = %b3GetHullSoaNormalsWrite.exit
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @58, i64 %i.jm, i64 %i.jn) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cl:                                            ; preds = %b3GetHullSoaNormalsWrite.exit
  %i.js = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %i.jj ; 5 uses
  %i.jt = ptrtoint ptr %i.jk to i64, !nosanitize !12 ; 9 uses
  %i.ju = add i64 %i.jl, %i.jt, !nosanitize !12   ; 3 uses
  %i.jv = icmp eq i64 %i.ju, 0
  %i.jw = xor i1 %i.jo, %i.jv
  %6 = icmp uge i64 %i.ju, %i.jt, !nosanitize !12
  %i.jx = and i1 %i.jw, %6, !nosanitize !12
  br i1 %i.jx, label %.preheader306, label %bb.cm, !prof !13, !nosanitize !12

.preheader306:                                    ; preds = %bb.cl
  %i.jy = icmp sgt i32 %.0207.lcssa, 0
  br i1 %i.jy, label %.lr.ph1346, label %.preheader305

.lr.ph1346:                                       ; preds = %.preheader306
  %.not1488 = icmp eq i64 %i.hz, 0
  %i.jz = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ka = ptrtoint ptr %.0.i281 to i64            ; 3 uses
  %i.kb = ptrtoint ptr %i.js to i64               ; 3 uses
  br i1 %.not1488, label %.split1348.us, label %.lr.ph1346.split, !prof !22

.lr.ph1346.split:                                 ; preds = %.lr.ph1346
  %.not1493 = icmp eq ptr %.0.i281, null
  br i1 %.not1493, label %.lr.ph1346.split.split.us, label %.lr.ph1346.split.split.preheader, !prof !22

.lr.ph1346.split.split.preheader:                 ; preds = %.lr.ph1346.split
  %wide.trip.count = zext nneg i32 %.0207.lcssa to i64
  br label %.lr.ph1346.split.split

.lr.ph1346.split.split.us:                        ; preds = %.lr.ph1346.split
  store i8 0, ptr %i.ia, align 1, !tbaa !74
  %i.kc = load ptr, ptr %i.a, align 16, !tbaa !177 ; 2 uses
  %i.kd = icmp ne ptr %i.kc, null, !nosanitize !12
  %i.ke = ptrtoint ptr %i.kc to i64, !nosanitize !12 ; 2 uses
  %i.kf = and i64 %i.ke, 7, !nosanitize !12
  %i.kg = icmp eq i64 %i.kf, 0, !nosanitize !12
  %i.kh = and i1 %i.kd, %i.kg, !nosanitize !12
  br i1 %i.kh, label %.split1376, label %.split1366.us, !prof !13, !nosanitize !12

bb.cm:                                            ; preds = %bb.cl
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @59, i64 %i.jt, i64 %i.ju) #13, !nosanitize !12
  unreachable, !nosanitize !12

.preheader305:                                    ; preds = %bb.dh, %.preheader306
  %i.ki = icmp slt i32 %.0207.lcssa, %i.fu
  br i1 %i.ki, label %.lr.ph1380, label %.preheader304

.lr.ph1380:                                       ; preds = %.preheader305
  %i.kj = and i64 %i.jm, 3, !nosanitize !12
  %i.kk = icmp eq i64 %i.kj, 0, !nosanitize !12
  %i.kl = and i1 %i.jo, %i.kk
  %i.km = ptrtoint ptr %i.js to i64               ; 3 uses
  br i1 %i.kl, label %.lr.ph1380.split.split.us.split.us.preheader, label %bb.dj, !prof !13, !nosanitize !12

.lr.ph1380.split.split.us.split.us.preheader:     ; preds = %.lr.ph1380
  %i.kn = sext i32 %.0207.lcssa to i64
  br label %.lr.ph1380.split.split.us.split.us

.lr.ph1380.split.split.us.split.us:               ; preds = %.lr.ph1380.split.split.us.split.us.preheader, %bb.cp
  %indvars.iv2514 = phi i64 [ %i.kn, %.lr.ph1380.split.split.us.split.us.preheader ], [ %indvars.iv.next2515, %bb.cp ] ; 5 uses
  %i.ko = shl nuw nsw i64 %indvars.iv2514, 2      ; 3 uses
  %i.kp = add i64 %i.ko, %i.jm, !nosanitize !12   ; 2 uses
  %i.kq = icmp ult i64 %i.kp, %i.jm, !nosanitize !12
  br i1 %i.kq, label %.split1382.us, label %bb.cn, !prof !22, !nosanitize !12

bb.cn:                                            ; preds = %.lr.ph1380.split.split.us.split.us
  %i.kr = getelementptr inbounds [4 x i8], ptr %.0.i283, i64 %indvars.iv2514
  %i.ks = load float, ptr %.0.i283, align 4, !tbaa !28
  store float %i.ks, ptr %i.kr, align 4, !tbaa !28
  %i.kt = add i64 %i.ko, %i.jt, !nosanitize !12   ; 2 uses
  %i.ku = icmp ult i64 %i.kt, %i.jt, !nosanitize !12
  br i1 %i.ku, label %.split1388.us, label %bb.co, !prof !22, !nosanitize !12

bb.co:                                            ; preds = %bb.cn
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %indvars.iv2514
  %i.kw = load float, ptr %i.jk, align 4, !tbaa !28
  store float %i.kw, ptr %i.kv, align 4, !tbaa !28
  %i.kx = add i64 %i.ko, %i.km, !nosanitize !12   ; 2 uses
  %i.ky = icmp ult i64 %i.kx, %i.km, !nosanitize !12
  br i1 %i.ky, label %.split1397.us, label %bb.cp, !prof !22, !nosanitize !12

bb.cp:                                            ; preds = %bb.co
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.js, i64 %indvars.iv2514
  %i.la = load float, ptr %i.js, align 4, !tbaa !28
  store float %i.la, ptr %i.kz, align 4, !tbaa !28
  %indvars.iv.next2515 = add nsw i64 %indvars.iv2514, 1 ; 2 uses
  %exitcond2518.not = icmp eq i64 %indvars.iv.next2515, %i.jj
  br i1 %exitcond2518.not, label %.preheader304, label %.lr.ph1380.split.split.us.split.us, !llvm.loop !163

.lr.ph1346.split.split:                           ; preds = %.lr.ph1346.split.split.preheader, %bb.dh
  %indvars.iv2509 = phi i64 [ 0, %.lr.ph1346.split.split.preheader ], [ %indvars.iv.next2510, %bb.dh ] ; 12 uses
  %i.lb = add i64 %i.hz, %indvars.iv2509, !nosanitize !12 ; 2 uses
  %.not1495 = icmp ult i64 %i.lb, %i.hz, !nosanitize !12
  br i1 %.not1495, label %.split.us, label %bb.cq, !prof !22, !nosanitize !12

.split.us:                                        ; preds = %.lr.ph1346.split.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @60, i64 %i.hz, i64 %i.lb) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1348.us:                                    ; preds = %.lr.ph1346
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @62, i64 0) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cq:                                            ; preds = %.lr.ph1346.split.split
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ia, i64 %indvars.iv2509
  store i8 0, ptr %i.lc, align 1, !tbaa !74
  %exitcond2512.not = icmp eq i64 %indvars.iv2509, 256
  br i1 %exitcond2512.not, label %.split1356.us, label %bb.cr, !prof !22, !nosanitize !12

.split1356.us:                                    ; preds = %bb.cq
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @63, i64 256) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cr:                                            ; preds = %bb.cq
  %i.ld = shl nuw nsw i64 %indvars.iv2509, 3
  %i.le = add i64 %i.ld, %i.jz, !nosanitize !12   ; 2 uses
  %.not273 = icmp ult i64 %i.le, %i.jz, !nosanitize !12
  br i1 %.not273, label %.split1359.us, label %bb.cs, !prof !22, !nosanitize !12

.split1359.us:                                    ; preds = %bb.cr
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @64, i64 %i.jz, i64 %i.le) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cs:                                            ; preds = %bb.cr
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv2509
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !177 ; 4 uses
  %i.lh = icmp ne ptr %i.lg, null, !nosanitize !12
  %i.li = ptrtoint ptr %i.lg to i64, !nosanitize !12 ; 2 uses
  %i.lj = and i64 %i.li, 7, !nosanitize !12
  %i.lk = icmp eq i64 %i.lj, 0, !nosanitize !12
  %i.ll = and i1 %i.lh, %i.lk, !nosanitize !12
  br i1 %i.ll, label %bb.ct, label %.split1366.us, !prof !13, !nosanitize !12

.split1366.us:                                    ; preds = %bb.cs, %.lr.ph1346.split.split.us
  %.us-phi1367 = phi i64 [ %i.ke, %.lr.ph1346.split.split.us ], [ %i.li, %bb.cs ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @66, i64 %.us-phi1367) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ct:                                            ; preds = %bb.cs
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.ln = load <2 x float>, ptr %i.lm, align 8, !tbaa !28 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !28 ; 2 uses
  %i.lo = getelementptr inbounds nuw [12 x i8], ptr %.0.i281, i64 %indvars.iv2509 ; 3 uses
  %i.lp = mul nuw nsw i64 %indvars.iv2509, 12
  %i.lq = add i64 %i.lp, %i.ka, !nosanitize !12   ; 2 uses
  %.not1497 = icmp ult i64 %i.lq, %i.ka, !nosanitize !12
  br i1 %.not1497, label %.split1372.us, label %bb.cu, !prof !22, !nosanitize !12

.split1372.us:                                    ; preds = %bb.ct
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @67, i64 %i.ka, i64 %i.lq) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cu:                                            ; preds = %bb.ct
  %i.lr = ptrtoint ptr %i.lo to i64, !nosanitize !12 ; 2 uses
  %i.ls = and i64 %i.lr, 3, !nosanitize !12
  %i.lt = icmp eq i64 %i.ls, 0, !nosanitize !12
  br i1 %i.lt, label %bb.cv, label %.split1376, !prof !13, !nosanitize !12

.split1376:                                       ; preds = %bb.cu, %.lr.ph1346.split.split.us
  %.us-phi1377 = phi i64 [ 0, %.lr.ph1346.split.split.us ], [ %i.lr, %bb.cu ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @68, i64 %.us-phi1377) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cv:                                            ; preds = %bb.cu
  store <2 x float> %i.ln, ptr %i.lo, align 4, !tbaa !28
  %.sroa.6.0..sroa_idx292 = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store float %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx292, align 4, !tbaa !28
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.0.i283, i64 %indvars.iv2509 ; 2 uses
  %i.lv = shl nuw nsw i64 %indvars.iv2509, 2      ; 3 uses
  %i.lw = add i64 %i.lv, %i.jm, !nosanitize !12   ; 3 uses
  %i.lx = icmp eq i64 %i.lw, 0
  %i.ly = xor i1 %i.jo, %i.lx
  %i.lz = icmp uge i64 %i.lw, %i.jm, !nosanitize !12
  %i.ma = and i1 %i.lz, %i.ly, !nosanitize !12
  br i1 %i.ma, label %bb.cx, label %bb.cw, !prof !13, !nosanitize !12

bb.cw:                                            ; preds = %bb.cv
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @69, i64 %i.jm, i64 %i.lw) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cx:                                            ; preds = %bb.cv
  %i.mb = ptrtoint ptr %i.lu to i64, !nosanitize !12 ; 2 uses
  %i.mc = and i64 %i.mb, 3, !nosanitize !12
  %i.md = icmp eq i64 %i.mc, 0, !nosanitize !12
  %i.me = and i1 %i.jo, %i.md
  br i1 %i.me, label %bb.cz, label %bb.cy, !prof !13, !nosanitize !12

bb.cy:                                            ; preds = %bb.cx
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @70, i64 %i.mb) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.cz:                                            ; preds = %bb.cx
  %i.mf = extractelement <2 x float> %i.ln, i64 0
  store float %i.mf, ptr %i.lu, align 4, !tbaa !28
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv2509 ; 2 uses
  %i.mh = add i64 %i.lv, %i.jt, !nosanitize !12   ; 2 uses
  %.not302 = icmp ult i64 %i.mh, %i.jt, !nosanitize !12
  br i1 %.not302, label %bb.da, label %bb.db, !prof !22, !nosanitize !12

bb.da:                                            ; preds = %bb.cz
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @71, i64 %i.jt, i64 %i.mh) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.db:                                            ; preds = %bb.cz
  %i.mi = ptrtoint ptr %i.mg to i64, !nosanitize !12 ; 2 uses
  %i.mj = and i64 %i.mi, 3, !nosanitize !12
  %i.mk = icmp eq i64 %i.mj, 0, !nosanitize !12
  br i1 %i.mk, label %bb.dd, label %bb.dc, !prof !13, !nosanitize !12

bb.dc:                                            ; preds = %bb.db
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @72, i64 %i.mi) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dd:                                            ; preds = %bb.db
  %i.ml = extractelement <2 x float> %i.ln, i64 1
  store float %i.ml, ptr %i.mg, align 4, !tbaa !28
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv2509 ; 2 uses
  %i.mn = add i64 %i.lv, %i.kb, !nosanitize !12   ; 2 uses
  %.not274 = icmp ult i64 %i.mn, %i.kb, !nosanitize !12
  br i1 %.not274, label %bb.de, label %bb.df, !prof !22, !nosanitize !12

bb.de:                                            ; preds = %bb.dd
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @73, i64 %i.kb, i64 %i.mn) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.df:                                            ; preds = %bb.dd
  %i.mo = ptrtoint ptr %i.mm to i64, !nosanitize !12 ; 2 uses
  %i.mp = and i64 %i.mo, 3, !nosanitize !12
  %i.mq = icmp eq i64 %i.mp, 0, !nosanitize !12
  br i1 %i.mq, label %bb.dh, label %bb.dg, !prof !13, !nosanitize !12

bb.dg:                                            ; preds = %bb.df
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @74, i64 %i.mo) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dh:                                            ; preds = %bb.df
  store float %.sroa.6.0.copyload, ptr %i.mm, align 4, !tbaa !28
  %indvars.iv.next2510 = add nuw nsw i64 %indvars.iv2509, 1 ; 2 uses
  %exitcond2513.not = icmp eq i64 %indvars.iv.next2510, %wide.trip.count
  br i1 %exitcond2513.not, label %.preheader305, label %.lr.ph1346.split.split, !llvm.loop !164

.preheader304:                                    ; preds = %bb.cp, %.preheader305
  %i.mr = icmp sgt i32 %.0204.lcssa, 0
  br i1 %i.mr, label %.lr.ph1413, label %._crit_edge1414

.lr.ph1413:                                       ; preds = %.preheader304
  %i.ms = ptrtoint ptr %i.c to i64, !nosanitize !12 ; 3 uses
  %i.mt = ptrtoint ptr %.0.i280 to i64            ; 3 uses
  %.not1505 = icmp eq ptr %.0.i280, null
  %i.mu = icmp ne i64 %i.hz, 0                    ; 2 uses
  br i1 %.not1505, label %.lr.ph1413.split.us, label %.lr.ph1413.split.preheader, !prof !22

.lr.ph1413.split.preheader:                       ; preds = %.lr.ph1413
  %wide.trip.count2523 = zext nneg i32 %.0204.lcssa to i64
  br label %.lr.ph1413.split

.lr.ph1413.split.us:                              ; preds = %.lr.ph1413
  %i.mv = load ptr, ptr %i.c, align 16, !tbaa !64 ; 3 uses
  %i.mw = icmp ne ptr %i.mv, null, !nosanitize !12
  %i.mx = ptrtoint ptr %i.mv to i64, !nosanitize !12 ; 2 uses
  %i.my = and i64 %i.mx, 7, !nosanitize !12
  %i.mz = icmp eq i64 %i.my, 0, !nosanitize !12
  %i.na = and i1 %i.mw, %i.mz, !nosanitize !12
  br i1 %i.na, label %bb.di, label %.split1426.us, !prof !13, !nosanitize !12

bb.di:                                            ; preds = %.lr.ph1413.split.us
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !66 ; 2 uses
  %i.nd = icmp ne ptr %i.nc, null, !nosanitize !12
  %i.ne = ptrtoint ptr %i.nc to i64, !nosanitize !12 ; 2 uses
  %i.nf = and i64 %i.ne, 7, !nosanitize !12
  %i.ng = icmp eq i64 %i.nf, 0, !nosanitize !12
  %i.nh = and i1 %i.nd, %i.ng, !nosanitize !12
  br i1 %i.nh, label %.split1442.us, label %.split1432.us, !prof !13, !nosanitize !12

bb.dj:                                            ; preds = %.lr.ph1380
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @75, i64 %i.jm) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1382.us:                                    ; preds = %.lr.ph1380.split.split.us.split.us
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @76, i64 %i.jm, i64 %i.kp) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1388.us:                                    ; preds = %bb.cn
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @77, i64 %i.jt, i64 %i.kt) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1397.us:                                    ; preds = %bb.co
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @78, i64 %i.km, i64 %i.kx) #13, !nosanitize !12
  unreachable, !nosanitize !12

._crit_edge1414:                                  ; preds = %bb.dy, %.preheader304
  %i.ni = sext i32 %i.fw to i64                   ; 3 uses
  %i.nj = getelementptr inbounds [4 x i8], ptr %.0.i284, i64 %i.ni ; 4 uses
  %i.nk = shl nsw i64 %i.ni, 2                    ; 2 uses
  %i.nl = ptrtoint ptr %.0.i284 to i64, !nosanitize !12 ; 9 uses
  %i.nm = add i64 %i.nk, %i.nl, !nosanitize !12   ; 3 uses
  %i.nn = icmp ne ptr %.0.i284, null, !nosanitize !12 ; 5 uses
  %i.no = icmp eq i64 %i.nm, 0
  %i.np = xor i1 %i.nn, %i.no
  %7 = icmp uge i64 %i.nm, %i.nl, !nosanitize !12
  %i.nq = and i1 %i.np, %7, !nosanitize !12
  br i1 %i.nq, label %bb.ea, label %bb.dz, !prof !13, !nosanitize !12

.lr.ph1413.split:                                 ; preds = %.lr.ph1413.split.preheader, %bb.dy
  %indvars.iv2519 = phi i64 [ 0, %.lr.ph1413.split.preheader ], [ %indvars.iv.next2520, %bb.dy ] ; 7 uses
  %exitcond2522.not = icmp eq i64 %indvars.iv2519, 256
  br i1 %exitcond2522.not, label %.split1416.us, label %bb.dk, !prof !22, !nosanitize !12

.split1416.us:                                    ; preds = %.lr.ph1413.split
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @79, i64 256) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dk:                                            ; preds = %.lr.ph1413.split
  %i.nr = shl nuw nsw i64 %indvars.iv2519, 3
  %i.ns = add i64 %i.nr, %i.ms, !nosanitize !12   ; 2 uses
  %.not269 = icmp ult i64 %i.ns, %i.ms, !nosanitize !12
  br i1 %.not269, label %.split1419.us, label %bb.dl, !prof !22, !nosanitize !12

.split1419.us:                                    ; preds = %bb.dk
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @80, i64 %i.ms, i64 %i.ns) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dl:                                            ; preds = %bb.dk
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv2519
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !64 ; 6 uses
  %i.nv = icmp ne ptr %i.nu, null, !nosanitize !12
  %i.nw = ptrtoint ptr %i.nu to i64, !nosanitize !12 ; 2 uses
  %i.nx = and i64 %i.nw, 7, !nosanitize !12
  %i.ny = icmp eq i64 %i.nx, 0, !nosanitize !12
  %i.nz = and i1 %i.nv, %i.ny, !nosanitize !12
  br i1 %i.nz, label %bb.dm, label %.split1426.us, !prof !13, !nosanitize !12

.split1426.us:                                    ; preds = %bb.dl, %.lr.ph1413.split.us
  %.us-phi1427 = phi i64 [ %i.mx, %.lr.ph1413.split.us ], [ %i.nw, %bb.dl ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @82, i64 %.us-phi1427) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dm:                                            ; preds = %bb.dl
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !66 ; 3 uses
  %i.oc = icmp ne ptr %i.ob, null, !nosanitize !12
  %i.od = ptrtoint ptr %i.ob to i64, !nosanitize !12 ; 2 uses
  %i.oe = and i64 %i.od, 7, !nosanitize !12
  %i.of = icmp eq i64 %i.oe, 0, !nosanitize !12
  %i.og = and i1 %i.oc, %i.of, !nosanitize !12
  br i1 %i.og, label %bb.dn, label %.split1432.us, !prof !13, !nosanitize !12

.split1432.us:                                    ; preds = %bb.dm, %bb.di
  %.us-phi1433 = phi i64 [ %i.ne, %bb.di ], [ %i.od, %bb.dm ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @83, i64 %.us-phi1433) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dn:                                            ; preds = %bb.dm
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.0.i280, i64 %indvars.iv2519 ; 4 uses
  %i.oi = shl nuw nsw i64 %indvars.iv2519, 2
  %i.oj = add i64 %i.oi, %i.mt, !nosanitize !12   ; 2 uses
  %.not1506 = icmp ult i64 %i.oj, %i.mt, !nosanitize !12
  br i1 %.not1506, label %.split1438.us, label %bb.do, !prof !22, !nosanitize !12

.split1438.us:                                    ; preds = %bb.dn
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @84, i64 %i.mt, i64 %i.oj) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1442.us:                                    ; preds = %bb.di
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @86, i64 0) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.do:                                            ; preds = %bb.dn
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ob, i64 40
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !63
  %i.om = trunc i32 %i.ol to i8
  store i8 %i.om, ptr %i.oh, align 1, !tbaa !76
  %i.on = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !65 ; 3 uses
  %i.op = icmp ne ptr %i.oo, null, !nosanitize !12
  %i.oq = ptrtoint ptr %i.oo to i64, !nosanitize !12 ; 2 uses
  %i.or = and i64 %i.oq, 7, !nosanitize !12
  %i.os = icmp eq i64 %i.or, 0, !nosanitize !12
  %i.ot = and i1 %i.op, %i.os, !nosanitize !12
  br i1 %i.ot, label %bb.dq, label %bb.dp, !prof !13, !nosanitize !12

bb.dp:                                            ; preds = %bb.do
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @87, i64 %i.oq) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dq:                                            ; preds = %bb.do
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oo, i64 40
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oh, i64 1
  %i.ow = load i32, ptr %i.ou, align 8, !tbaa !63
  %i.ox = trunc i32 %i.ow to i8
  store i8 %i.ox, ptr %i.ov, align 1, !tbaa !77
  %i.oy = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !78 ; 3 uses
  %i.pa = icmp ne ptr %i.oz, null, !nosanitize !12
  %i.pb = ptrtoint ptr %i.oz to i64, !nosanitize !12 ; 2 uses
  %i.pc = and i64 %i.pb, 7, !nosanitize !12
  %i.pd = icmp eq i64 %i.pc, 0, !nosanitize !12
  %i.pe = and i1 %i.pa, %i.pd, !nosanitize !12
  br i1 %i.pe, label %bb.ds, label %bb.dr, !prof !13, !nosanitize !12

bb.dr:                                            ; preds = %bb.dq
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @88, i64 %i.pb) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ds:                                            ; preds = %bb.dq
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oz, i64 120
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oh, i64 3
  %i.ph = load i32, ptr %i.pf, align 8, !tbaa !59
  %i.pi = trunc i32 %i.ph to i8
  store i8 %i.pi, ptr %i.pg, align 1, !tbaa !180
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !79 ; 3 uses
  %i.pl = icmp ne ptr %i.pk, null, !nosanitize !12
  %i.pm = ptrtoint ptr %i.pk to i64, !nosanitize !12 ; 2 uses
  %i.pn = and i64 %i.pm, 7, !nosanitize !12
  %i.po = icmp eq i64 %i.pn, 0, !nosanitize !12
  %i.pp = and i1 %i.pl, %i.po, !nosanitize !12
  br i1 %i.pp, label %bb.du, label %bb.dt, !prof !13, !nosanitize !12

bb.dt:                                            ; preds = %bb.ds
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @89, i64 %i.pm) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.du:                                            ; preds = %bb.ds
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pk, i64 36
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oh, i64 2
  %i.ps = load i32, ptr %i.pq, align 4, !tbaa !58 ; 3 uses
  %i.pt = trunc i32 %i.ps to i8
  store i8 %i.pt, ptr %i.pr, align 1, !tbaa !80
  %i.pu = trunc i64 %indvars.iv2519 to i8
  %i.pv = sext i32 %i.ps to i64                   ; 2 uses
  %i.pw = getelementptr inbounds i8, ptr %i.ia, i64 %i.pv ; 2 uses
  %i.px = add i64 %i.hz, %i.pv, !nosanitize !12   ; 3 uses
  %i.py = icmp eq i64 %i.px, 0
  %i.pz = xor i1 %i.mu, %i.py
  %i.qa = icmp uge i64 %i.px, %i.hz, !nosanitize !12
  %i.qb = icmp slt i32 %i.ps, 0
  %i.qc = xor i1 %i.qb, %i.qa
  %i.qd = and i1 %i.pz, %i.qc, !nosanitize !12
  br i1 %i.qd, label %bb.dw, label %bb.dv, !prof !13, !nosanitize !12

bb.dv:                                            ; preds = %bb.du
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @90, i64 %i.hz, i64 %i.px) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dw:                                            ; preds = %bb.du
  br i1 %i.mu, label %bb.dy, label %bb.dx, !prof !13, !nosanitize !12

bb.dx:                                            ; preds = %bb.dw
  %i.qe = ptrtoint ptr %i.pw to i64, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @91, i64 %i.qe) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.dy:                                            ; preds = %bb.dw
  store i8 %i.pu, ptr %i.pw, align 1, !tbaa !74
  %indvars.iv.next2520 = add nuw nsw i64 %indvars.iv2519, 1 ; 2 uses
  %exitcond2524.not = icmp eq i64 %indvars.iv.next2520, %wide.trip.count2523
  br i1 %exitcond2524.not, label %._crit_edge1414, label %.lr.ph1413.split, !llvm.loop !165

bb.dz:                                            ; preds = %._crit_edge1414
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @92, i64 %i.nl, i64 %i.nm) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ea:                                            ; preds = %._crit_edge1414
  %i.qf = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %i.ni ; 4 uses
  %i.qg = ptrtoint ptr %i.nj to i64, !nosanitize !12 ; 9 uses
  %i.qh = add i64 %i.nk, %i.qg, !nosanitize !12   ; 3 uses
  %i.qi = icmp eq i64 %i.qh, 0
  %i.qj = xor i1 %i.nn, %i.qi
  %8 = icmp uge i64 %i.qh, %i.qg, !nosanitize !12
  %i.qk = and i1 %i.qj, %8, !nosanitize !12
  br i1 %i.qk, label %.preheader303, label %bb.ec, !prof !13, !nosanitize !12

.preheader303:                                    ; preds = %bb.ea
  %i.ql = icmp sgt i32 %.0205.lcssa, 0
  br i1 %i.ql, label %.lr.ph1446, label %.preheader

.lr.ph1446:                                       ; preds = %.preheader303
  %i.qm = ptrtoint ptr %i.b to i64, !nosanitize !12 ; 3 uses
  %.not1511 = icmp eq i64 %i.ii, 0
  %i.qn = ptrtoint ptr %.0.i282 to i64            ; 3 uses
  %i.qo = icmp ne ptr %.0.i282, null              ; 2 uses
  %i.qp = ptrtoint ptr %i.qf to i64               ; 3 uses
  br i1 %.not1511, label %.lr.ph1446.split.us, label %.lr.ph1446.split.preheader, !prof !22

.lr.ph1446.split.preheader:                       ; preds = %.lr.ph1446
  %wide.trip.count2529 = zext nneg i32 %.0205.lcssa to i64
  br label %.lr.ph1446.split

.lr.ph1446.split.us:                              ; preds = %.lr.ph1446
  %i.qq = load ptr, ptr %i.b, align 16, !tbaa !60 ; 3 uses
  %i.qr = icmp ne ptr %i.qq, null, !nosanitize !12
  %i.qs = ptrtoint ptr %i.qq to i64, !nosanitize !12 ; 2 uses
  %i.qt = and i64 %i.qs, 7, !nosanitize !12
  %i.qu = icmp eq i64 %i.qt, 0, !nosanitize !12
  %i.qv = and i1 %i.qr, %i.qu, !nosanitize !12
  br i1 %i.qv, label %bb.eb, label %.split1458.us, !prof !13, !nosanitize !12

bb.eb:                                            ; preds = %.lr.ph1446.split.us
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !61 ; 2 uses
  %i.qy = icmp ne ptr %i.qx, null, !nosanitize !12
  %i.qz = ptrtoint ptr %i.qx to i64, !nosanitize !12 ; 2 uses
  %i.ra = and i64 %i.qz, 7, !nosanitize !12
  %i.rb = icmp eq i64 %i.ra, 0, !nosanitize !12
  %i.rc = and i1 %i.qy, %i.rb, !nosanitize !12
  br i1 %i.rc, label %.split1473.us, label %.split1464.us, !prof !13, !nosanitize !12

bb.ec:                                            ; preds = %bb.ea
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @93, i64 %i.qg, i64 %i.qh) #13, !nosanitize !12
  unreachable, !nosanitize !12

.preheader:                                       ; preds = %bb.ex, %.preheader303
  %i.rd = icmp slt i32 %.0205.lcssa, %i.fw
  br i1 %i.rd, label %.lr.ph1477, label %._crit_edge1478

.lr.ph1477:                                       ; preds = %.preheader
  %i.re = ptrtoint ptr %i.qf to i64               ; 3 uses
  br i1 %i.nn, label %.lr.ph1477.split.preheader, label %.lr.ph1477.split.us, !prof !13

.lr.ph1477.split.preheader:                       ; preds = %.lr.ph1477
  %i.rf = zext nneg i32 %.0205.lcssa to i64
  %wide.trip.count2534 = zext i32 %i.fw to i64
  br label %.lr.ph1477.split

.lr.ph1477.split.us:                              ; preds = %.lr.ph1477
  %i.rg = sext i32 %.0205.lcssa to i64
  %i.rh = shl nuw nsw i64 %i.rg, 2
  %i.ri = icmp eq i32 %.0205.lcssa, 0
  br i1 %i.ri, label %.split1483, label %.split1480.us, !prof !13, !nosanitize !12

.lr.ph1446.split:                                 ; preds = %.lr.ph1446.split.preheader, %bb.ex
  %indvars.iv2525 = phi i64 [ 0, %.lr.ph1446.split.preheader ], [ %indvars.iv.next2526, %bb.ex ] ; 12 uses
  %exitcond2528.not = icmp eq i64 %indvars.iv2525, 256
  br i1 %exitcond2528.not, label %.split1448.us, label %bb.ed, !prof !22, !nosanitize !12

.split1448.us:                                    ; preds = %.lr.ph1446.split
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @94, i64 256) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ed:                                            ; preds = %.lr.ph1446.split
  %i.rj = shl nuw nsw i64 %indvars.iv2525, 3
  %i.rk = add i64 %i.rj, %i.qm, !nosanitize !12   ; 2 uses
  %.not267 = icmp ult i64 %i.rk, %i.qm, !nosanitize !12
  br i1 %.not267, label %.split1451.us, label %bb.ee, !prof !22, !nosanitize !12

.split1451.us:                                    ; preds = %bb.ed
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @95, i64 %i.qm, i64 %i.rk) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ee:                                            ; preds = %bb.ed
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv2525
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !60 ; 6 uses
  %i.rn = icmp ne ptr %i.rm, null, !nosanitize !12
  %i.ro = ptrtoint ptr %i.rm to i64, !nosanitize !12 ; 2 uses
  %i.rp = and i64 %i.ro, 7, !nosanitize !12
  %i.rq = icmp eq i64 %i.rp, 0, !nosanitize !12
  %i.rr = and i1 %i.rn, %i.rq, !nosanitize !12
  br i1 %i.rr, label %bb.ef, label %.split1458.us, !prof !13, !nosanitize !12

.split1458.us:                                    ; preds = %bb.ee, %.lr.ph1446.split.us
  %.us-phi1459 = phi i64 [ %i.qs, %.lr.ph1446.split.us ], [ %i.ro, %bb.ee ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @97, i64 %.us-phi1459) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ef:                                            ; preds = %bb.ee
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !61 ; 3 uses
  %i.ru = icmp ne ptr %i.rt, null, !nosanitize !12
  %i.rv = ptrtoint ptr %i.rt to i64, !nosanitize !12 ; 2 uses
  %i.rw = and i64 %i.rv, 7, !nosanitize !12
  %i.rx = icmp eq i64 %i.rw, 0, !nosanitize !12
  %i.ry = and i1 %i.ru, %i.rx, !nosanitize !12
  br i1 %i.ry, label %bb.eg, label %.split1464.us, !prof !13, !nosanitize !12

.split1464.us:                                    ; preds = %bb.ef, %bb.eb
  %.us-phi1465 = phi i64 [ %i.qz, %bb.eb ], [ %i.rv, %bb.ef ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @98, i64 %.us-phi1465) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.eg:                                            ; preds = %bb.ef
  %i.rz = add i64 %i.ii, %indvars.iv2525, !nosanitize !12 ; 2 uses
  %.not1512 = icmp ult i64 %i.rz, %i.ii, !nosanitize !12
  br i1 %.not1512, label %.split1470.us, label %bb.eh, !prof !22, !nosanitize !12

.split1470.us:                                    ; preds = %bb.eg
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @99, i64 %i.ii, i64 %i.rz) #13, !nosanitize !12
  unreachable, !nosanitize !12

.split1473.us:                                    ; preds = %bb.eb
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @101, i64 0) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.eh:                                            ; preds = %bb.eg
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ik, i64 %indvars.iv2525
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rt, i64 40
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !63
  %i.sd = trunc i32 %i.sc to i8
  store i8 %i.sd, ptr %i.sa, align 1, !tbaa !82
  %i.se = getelementptr inbounds nuw [16 x i8], ptr %.0.i282, i64 %indvars.iv2525 ; 2 uses
  %i.sf = shl nuw nsw i64 %indvars.iv2525, 4
  %i.sg = add i64 %i.sf, %i.qn, !nosanitize !12   ; 3 uses
  %i.sh = icmp eq i64 %i.sg, 0
  %i.si = xor i1 %i.qo, %i.sh
  %i.sj = icmp uge i64 %i.sg, %i.qn, !nosanitize !12
  %i.sk = and i1 %i.sj, %i.si, !nosanitize !12
  br i1 %i.sk, label %bb.ej, label %bb.ei, !prof !13, !nosanitize !12

bb.ei:                                            ; preds = %bb.eh
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @102, i64 %i.qn, i64 %i.sg) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ej:                                            ; preds = %bb.eh
  %i.sl = ptrtoint ptr %i.se to i64, !nosanitize !12 ; 2 uses
  %i.sm = and i64 %i.sl, 3, !nosanitize !12
  %i.sn = icmp eq i64 %i.sm, 0, !nosanitize !12
  %i.so = and i1 %i.qo, %i.sn
  br i1 %i.so, label %bb.el, label %bb.ek, !prof !13, !nosanitize !12

bb.ek:                                            ; preds = %bb.ej
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @104, i64 %i.sl) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.el:                                            ; preds = %bb.ej
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rm, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.se, ptr noundef nonnull align 8 dereferenceable(16) %i.sp, i64 16, i1 false), !tbaa.struct !83
  %.sroa.0.0.copyload = load float, ptr %i.sp, align 8, !tbaa !28
  %.sroa.4.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %i.rm, i64 36
  %.sroa.4.0.copyload286 = load float, ptr %.sroa.4.0..sroa_idx285, align 4, !tbaa !28
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rm, i64 40
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !28
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %.0.i284, i64 %indvars.iv2525 ; 2 uses
  %i.sr = shl nuw nsw i64 %indvars.iv2525, 2      ; 3 uses
  %i.ss = add i64 %i.sr, %i.nl, !nosanitize !12   ; 3 uses
  %i.st = icmp eq i64 %i.ss, 0
  %i.su = xor i1 %i.nn, %i.st
  %i.sv = icmp uge i64 %i.ss, %i.nl, !nosanitize !12
  %i.sw = and i1 %i.sv, %i.su, !nosanitize !12
  br i1 %i.sw, label %bb.en, label %bb.em, !prof !13, !nosanitize !12

bb.em:                                            ; preds = %bb.el
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @105, i64 %i.nl, i64 %i.ss) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.en:                                            ; preds = %bb.el
  %i.sx = ptrtoint ptr %i.sq to i64, !nosanitize !12 ; 2 uses
  %i.sy = and i64 %i.sx, 3, !nosanitize !12
  %i.sz = icmp eq i64 %i.sy, 0, !nosanitize !12
  %i.ta = and i1 %i.nn, %i.sz
  br i1 %i.ta, label %bb.ep, label %bb.eo, !prof !13, !nosanitize !12

bb.eo:                                            ; preds = %bb.en
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @106, i64 %i.sx) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ep:                                            ; preds = %bb.en
  store float %.sroa.0.0.copyload, ptr %i.sq, align 4, !tbaa !28
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv2525 ; 2 uses
  %i.tc = add i64 %i.sr, %i.qg, !nosanitize !12   ; 2 uses
  %.not301 = icmp ult i64 %i.tc, %i.qg, !nosanitize !12
  br i1 %.not301, label %bb.eq, label %bb.er, !prof !22, !nosanitize !12

bb.eq:                                            ; preds = %bb.ep
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @107, i64 %i.qg, i64 %i.tc) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.er:                                            ; preds = %bb.ep
  %i.td = ptrtoint ptr %i.tb to i64, !nosanitize !12 ; 2 uses
  %i.te = and i64 %i.td, 3, !nosanitize !12
  %i.tf = icmp eq i64 %i.te, 0, !nosanitize !12
  br i1 %i.tf, label %bb.et, label %bb.es, !prof !13, !nosanitize !12

bb.es:                                            ; preds = %bb.er
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @108, i64 %i.td) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.et:                                            ; preds = %bb.er
  store float %.sroa.4.0.copyload286, ptr %i.tb, align 4, !tbaa !28
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %indvars.iv2525 ; 2 uses
  %i.th = add i64 %i.sr, %i.qp, !nosanitize !12   ; 2 uses
  %.not268 = icmp ult i64 %i.th, %i.qp, !nosanitize !12
  br i1 %.not268, label %bb.eu, label %bb.ev, !prof !22, !nosanitize !12

bb.eu:                                            ; preds = %bb.et
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @109, i64 %i.qp, i64 %i.th) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ev:                                            ; preds = %bb.et
  %i.ti = ptrtoint ptr %i.tg to i64, !nosanitize !12 ; 2 uses
  %i.tj = and i64 %i.ti, 3, !nosanitize !12
  %i.tk = icmp eq i64 %i.tj, 0, !nosanitize !12
  br i1 %i.tk, label %bb.ex, label %bb.ew, !prof !13, !nosanitize !12

bb.ew:                                            ; preds = %bb.ev
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @110, i64 %i.ti) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ex:                                            ; preds = %bb.ev
  store float %.sroa.5.0.copyload, ptr %i.tg, align 4, !tbaa !28
  %indvars.iv.next2526 = add nuw nsw i64 %indvars.iv2525, 1 ; 2 uses
  %exitcond2530.not = icmp eq i64 %indvars.iv.next2526, %wide.trip.count2529
  br i1 %exitcond2530.not, label %.preheader, label %.lr.ph1446.split, !llvm.loop !166

.lr.ph1477.split:                                 ; preds = %.lr.ph1477.split.preheader, %bb.fh
  %indvars.iv2531 = phi i64 [ %i.rf, %.lr.ph1477.split.preheader ], [ %indvars.iv.next2532, %bb.fh ] ; 5 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %.0.i284, i64 %indvars.iv2531 ; 2 uses
  %i.tm = shl nuw nsw i64 %indvars.iv2531, 2      ; 3 uses
  %i.tn = add i64 %i.tm, %i.nl, !nosanitize !12   ; 2 uses
  %.not2597 = icmp ult i64 %i.tn, %i.nl, !nosanitize !12
  br i1 %.not2597, label %.split1480.us, label %bb.ey, !prof !22, !nosanitize !12

.split1480.us:                                    ; preds = %.lr.ph1477.split, %.lr.ph1477.split.us
  %.us-phi1481 = phi i64 [ %i.rh, %.lr.ph1477.split.us ], [ %i.tn, %.lr.ph1477.split ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @111, i64 %i.nl, i64 %.us-phi1481) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ey:                                            ; preds = %.lr.ph1477.split
  %i.to = ptrtoint ptr %i.tl to i64, !nosanitize !12 ; 2 uses
  %i.tp = and i64 %i.to, 3, !nosanitize !12
  %i.tq = icmp eq i64 %i.tp, 0, !nosanitize !12
  br i1 %i.tq, label %bb.ez, label %.split1483, !prof !13, !nosanitize !12

.split1483:                                       ; preds = %bb.ey, %.lr.ph1477.split.us
  %.us-phi1484 = phi i64 [ 0, %.lr.ph1477.split.us ], [ %i.to, %bb.ey ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @112, i64 %.us-phi1484) #13, !nosanitize !12
  unreachable, !nosanitize !12

bb.ez:                                            ; preds = %bb.ey
end_hunk_0
