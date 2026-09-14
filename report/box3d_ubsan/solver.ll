Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/solver?download=true
inline.NumInlined: 196
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@b3ExecuteBlock:bb.a
.preheader31.split.i.preheader:                   ; preds = %.preheader31.i, %.preheader31.split.i
  %indvars.iv.next.i617 = phi i64 [ %indvars.iv.next.i, %.preheader31.split.i ], [ 1, %.preheader31.i ] ; 5 uses
  %indvars.iv.i616 = phi i64 [ %indvars.iv.next.i617, %.preheader31.split.i ], [ 0, %.preheader31.i ]
  %sext = shl i64 %indvars.iv.next.i617, 32       ; 2 uses
  %i.s = ashr exact i64 %sext, 28
  %i.t = getelementptr inbounds i8, ptr %.fr98.i, i64 %i.s ; 2 uses
  %i.u = ashr exact i64 %sext, 28
  %i.v = add i64 %i.u, %i.p, !nosanitize !9       ; 3 uses
  %i.w = icmp ne i64 %i.v, 0
  %i.x = icmp uge i64 %i.v, %i.p, !nosanitize !9
  %i.y = and i64 %indvars.iv.next.i617, 2147483648
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = xor i1 %i.z, %i.x
  %i.ab = and i1 %i.w, %i.aa, !nosanitize !9
  br i1 %i.ab, label %bb.h, label %.split88.us.i, !prof !10, !nosanitize !9

.split88.us.i:                                    ; preds = %.preheader31.split.i.preheader, %.preheader31.i
  %.us-phi90.i = phi i64 [ 16, %.preheader31.i ], [ %i.v, %.preheader31.split.i.preheader ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @279, i64 %i.p, i64 %.us-phi90.i) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %.preheader31.split.i.preheader
  %i.ac = ptrtoint ptr %i.t to i64, !nosanitize !9 ; 2 uses
  %i.ad = and i64 %i.ac, 7, !nosanitize !9
  %i.ae = icmp eq i64 %i.ad, 0, !nosanitize !9
  br i1 %i.ae, label %bb.i, label %.split92.i, !prof !10, !nosanitize !9

.split92.i:                                       ; preds = %bb.h
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @280, i64 %i.ac) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %i.t, align 8, !tbaa !105
  %.not.i = icmp sgt i32 %i.af, %.sroa.0.0.extract.trunc.i
  br i1 %.not.i, label %.preheader.i, label %.preheader31.split.i, !llvm.loop !367

.preheader.i:                                     ; preds = %bb.i
  %i.ag = icmp sgt i32 %i.n, %.sroa.0.0.extract.trunc.i
  br i1 %i.ag, label %.lr.ph97.i, label %b3PrepareJointsTask.exit

.loopexit.i:                                      ; preds = %bb.x, %bb.s
  %.123.lcssa.i = phi i32 [ %.02295.i, %bb.s ], [ %i.bc, %bb.x ] ; 2 uses
  %i.ah = icmp slt i32 %.123.lcssa.i, %i.n
  br i1 %i.ah, label %.lr.ph97.i, label %b3PrepareJointsTask.exit, !llvm.loop !368

.lr.ph97.i:                                       ; preds = %.preheader.i, %.loopexit.i
  %indvars.iv165.i = phi i64 [ %indvars.iv.next166.i, %.loopexit.i ], [ %indvars.iv.i616, %.preheader.i ] ; 4 uses
  %.02295.i = phi i32 [ %.123.lcssa.i, %.loopexit.i ], [ %.sroa.0.0.extract.trunc.i, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.fr98.i, i64 %indvars.iv165.i ; 3 uses
  %i.aj = shl nuw nsw i64 %indvars.iv165.i, 4
  %i.ak = add i64 %i.aj, %i.p, !nosanitize !9     ; 2 uses
  %.not100.i = icmp ult i64 %i.ak, %i.p, !nosanitize !9
  br i1 %.not100.i, label %bb.j, label %bb.k, !prof !97, !nosanitize !9

bb.j:                                             ; preds = %.lr.ph97.i
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @281, i64 %i.p, i64 %i.ak) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %.lr.ph97.i
  %i.al = ptrtoint ptr %i.ai to i64, !nosanitize !9 ; 2 uses
  %i.am = and i64 %i.al, 7, !nosanitize !9
  %i.an = icmp eq i64 %i.am, 0, !nosanitize !9
  br i1 %i.an, label %bb.m, label %bb.l, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @282, i64 %i.al) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !105 ; 2 uses
  %indvars.iv.next166.i = add nuw nsw i64 %indvars.iv165.i, 1 ; 3 uses
  %exitcond168.i = icmp eq i64 %indvars.iv165.i, 2147483647
  br i1 %exitcond168.i, label %bb.n, label %bb.o, !prof !97, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @283, i64 2147483647, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.m
  %sext.i = shl nuw i64 %indvars.iv.next166.i, 32
  %i.ap = ashr exact i64 %sext.i, 28              ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.fr98.i, i64 %i.ap ; 2 uses
  %i.ar = add i64 %i.ap, %i.p, !nosanitize !9     ; 3 uses
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = icmp uge i64 %i.ar, %i.p, !nosanitize !9
  %i.au = and i64 %indvars.iv.next166.i, 2147483648
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = xor i1 %i.av, %i.at
  %i.ax = and i1 %i.as, %i.aw, !nosanitize !9
  br i1 %i.ax, label %bb.q, label %bb.p, !prof !10, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @284, i64 %i.p, i64 %i.ar) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  %i.ay = ptrtoint ptr %i.aq to i64, !nosanitize !9 ; 2 uses
  %i.az = and i64 %i.ay, 7, !nosanitize !9
  %i.ba = icmp eq i64 %i.az, 0, !nosanitize !9
  br i1 %i.ba, label %bb.s, label %bb.r, !prof !10, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @285, i64 %i.ay) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  %i.bb = load i32, ptr %i.aq, align 8, !tbaa !105
  %i.bc = tail call noundef i32 @llvm.smin.i32(i32 %i.bb, i32 %i.n) ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !107 ; 3 uses
  %i.bf = icmp slt i32 %.02295.i, %i.bc
  br i1 %i.bf, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.bg = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bh = icmp ne ptr %i.be, null
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph.i
  %.12394.i = phi i32 [ %.02295.i, %.lr.ph.i ], [ %i.bx, %bb.x ] ; 3 uses
  %i.bi = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %.12394.i, i32 %i.ao), !nosanitize !9 ; 2 uses
  %i.bj = extractvalue { i32, i1 } %i.bi, 1, !nosanitize !9
  br i1 %i.bj, label %bb.u, label %bb.v, !prof !97, !nosanitize !9

bb.u:                                             ; preds = %bb.t
  %i.bk = zext i32 %.12394.i to i64, !nosanitize !9
  %i.bl = zext i32 %i.ao to i64, !nosanitize !9
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @286, i64 %i.bk, i64 %i.bl) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.v:                                             ; preds = %bb.t
  %i.bm = extractvalue { i32, i1 } %i.bi, 0, !nosanitize !9 ; 2 uses
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = mul nsw i64 %i.bn, 444
  %i.bp = add i64 %i.bo, %i.bg, !nosanitize !9    ; 3 uses
  %i.bq = icmp eq i64 %i.bp, 0
  %i.br = xor i1 %i.bh, %i.bq
  %i.bs = icmp uge i64 %i.bp, %i.bg, !nosanitize !9
  %i.bt = icmp slt i32 %i.bm, 0
  %i.bu = xor i1 %i.bt, %i.bs
  %i.bv = and i1 %i.br, %i.bu, !nosanitize !9
  br i1 %i.bv, label %bb.x, label %bb.w, !prof !10, !nosanitize !9

bb.w:                                             ; preds = %bb.v
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @287, i64 %i.bg, i64 %i.bp) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.x:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds [444 x i8], ptr %i.be, i64 %i.bn
  tail call void @b3PrepareJoint(ptr noundef %i.bw, ptr noundef nonnull %1) #12
  %i.bx = add nsw i32 %.12394.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bx, %i.bc
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.t, !llvm.loop !369

bb.y:                                             ; preds = %bb.c
  tail call void @b3PrepareContacts_Convex(i64 %2, ptr noundef nonnull %1) #12
  br label %b3PrepareJointsTask.exit

bb.z:                                             ; preds = %bb.c
  tail call void @b3PrepareContacts_Mesh(i64 %2, ptr noundef nonnull %1) #12
  br label %b3PrepareJointsTask.exit

bb.aa:                                            ; preds = %bb.c
  %.sroa.0359.0.extract.trunc.i = trunc i64 %2 to i32 ; 6 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %2, 32    ; 2 uses
  %i.by = ptrtoint ptr %1 to i64, !nosanitize !9  ; 2 uses
  %i.bz = and i64 %i.by, 7, !nosanitize !9
  %i.ca = icmp eq i64 %i.bz, 0, !nosanitize !9
  br i1 %i.ca, label %bb.ac, label %bb.ab, !prof !10, !nosanitize !9

bb.ab:                                            ; preds = %bb.aa
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @288, i64 %i.by) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ac:                                            ; preds = %bb.aa
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !96
  %.fr519.i = freeze ptr %i.cc                    ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !95
  %.fr.i = freeze ptr %i.ce                       ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !160 ; 4 uses
  %i.ch = icmp ne ptr %i.cg, null, !nosanitize !9
  %i.ci = ptrtoint ptr %i.cg to i64, !nosanitize !9 ; 2 uses
  %i.cj = and i64 %i.ci, 7, !nosanitize !9
  %i.ck = icmp eq i64 %i.cj, 0, !nosanitize !9
  %i.cl = and i1 %i.ch, %i.ck, !nosanitize !9
  br i1 %i.cl, label %bb.ae, label %bb.ad, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @289, i64 %i.ci) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 4428
  %.sroa.0230.0.copyload.i = load <2 x float>, ptr %i.cm, align 4
  %.sroa.4231.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 4436
  %.sroa.4231.0.copyload.i = load float, ptr %.sroa.4231.0..sroa_idx.i, align 4, !tbaa !148
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = load float, ptr %i.cn, align 8, !tbaa !371 ; 8 uses
  %i.cp = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.cq = and i32 %i.cp, 65535
  %i.cr = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0359.0.extract.trunc.i, i32 %i.cq), !nosanitize !9 ; 2 uses
  %i.cs = extractvalue { i32, i1 } %i.cr, 1, !nosanitize !9
  br i1 %i.cs, label %._crit_edge.i, label %.lr.ph.i38, !prof !173, !nosanitize !9

.lr.ph.i38:                                       ; preds = %bb.ae
  %i.ct = extractvalue { i32, i1 } %i.cr, 0, !nosanitize !9 ; 3 uses
  %i.cu = ptrtoint ptr %.fr.i to i64              ; 6 uses
  %i.cv = icmp ne ptr %.fr.i, null                ; 2 uses
  %i.cw = ptrtoint ptr %.fr519.i to i64           ; 5 uses
  %.not.i39 = icmp eq ptr %.fr519.i, null
  br i1 %.not.i39, label %.lr.ph.split.us.i, label %.lr.ph.split.i, !prof !97

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i38
  %i.cx = icmp sgt i32 %i.ct, %.sroa.0359.0.extract.trunc.i
  br i1 %i.cx, label %bb.af, label %b3PrepareJointsTask.exit

bb.af:                                            ; preds = %.lr.ph.split.us.i
  %sext.i44 = shl i64 %2, 32                      ; 2 uses
  %i.cy = ashr exact i64 %sext.i44, 32            ; 2 uses
  %i.cz = mul nsw i64 %i.cy, 216
  %i.da = add i64 %i.cz, %i.cu, !nosanitize !9    ; 3 uses
  %i.db = icmp eq i64 %i.da, 0
  %i.dc = xor i1 %i.cv, %i.db
  %i.dd = icmp uge i64 %i.da, %i.cu, !nosanitize !9
  %i.de = icmp slt i32 %.sroa.0359.0.extract.trunc.i, 0 ; 2 uses
  %i.df = xor i1 %i.de, %i.dd
  %i.dg = and i1 %i.dc, %i.df, !nosanitize !9
  br i1 %i.dg, label %bb.ag, label %.split492.us.i, !prof !10, !nosanitize !9

bb.ag:                                            ; preds = %bb.af
  %i.dh = mul nsw i64 %i.cy, 56                   ; 2 uses
  %i.di = icmp eq i64 %sext.i44, 0
  %i.dj = icmp uge i64 %i.dh, %i.cw, !nosanitize !9
  %i.dk = xor i1 %i.de, %i.dj
  %i.dl = and i1 %i.di, %i.dk, !nosanitize !9
  br i1 %i.dl, label %.split499.i, label %.split495.us.i, !prof !10, !nosanitize !9

.lr.ph.split.i:                                   ; preds = %.lr.ph.i38
  br i1 %i.cv, label %.lr.ph.split.split.preheader.i, label %.lr.ph.split.split.us.i, !prof !10

.lr.ph.split.split.preheader.i:                   ; preds = %.lr.ph.split.i
  %sext605.i = shl i64 %2, 32
  %i.dm = ashr exact i64 %sext605.i, 32           ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.ct, i32 %.sroa.0359.0.extract.trunc.i)
  %wide.trip.count.i = sext i32 %smax.i to i64    ; 2 uses
  %exitcond.not.i42215 = icmp eq i64 %i.dm, %wide.trip.count.i
  br i1 %exitcond.not.i42215, label %b3PrepareJointsTask.exit, label %.lr.ph217.preheader

.lr.ph217.preheader:                              ; preds = %.lr.ph.split.split.preheader.i
  %i.dn = insertelement <2 x float> poison, float %i.co, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.dp = insertelement <4 x float> poison, float %i.co, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = insertelement <4 x float> poison, float %i.co, i64 3
  br label %.lr.ph217

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.ds = icmp sgt i32 %i.ct, %.sroa.0359.0.extract.trunc.i
  br i1 %i.ds, label %bb.ah, label %b3PrepareJointsTask.exit

bb.ah:                                            ; preds = %.lr.ph.split.split.us.i
  %sext520.i = shl i64 %2, 32                     ; 2 uses
  %i.dt = ashr exact i64 %sext520.i, 32           ; 2 uses
  %i.du = mul nsw i64 %i.dt, 216                  ; 2 uses
  %i.dv = icmp eq i64 %sext520.i, 0
  %i.dw = icmp uge i64 %i.du, %i.cu, !nosanitize !9
  %i.dx = icmp slt i32 %.sroa.0359.0.extract.trunc.i, 0 ; 2 uses
  %i.dy = xor i1 %i.dx, %i.dw
  %i.dz = and i1 %i.dv, %i.dy, !nosanitize !9
  br i1 %i.dz, label %bb.ai, label %.split492.us.i, !prof !10, !nosanitize !9

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.dx, label %.split495.us.i, label %bb.aj, !prof !97, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw [56 x i8], ptr %.fr519.i, i64 %i.dt
  %i.eb = ptrtoint ptr %i.ea to i64, !nosanitize !9 ; 2 uses
  %i.ec = and i64 %i.eb, 3, !nosanitize !9
  %i.ed = icmp eq i64 %i.ec, 0, !nosanitize !9
  br i1 %i.ed, label %.split516.i, label %.split499.i, !prof !10, !nosanitize !9

._crit_edge.i:                                    ; preds = %bb.ae
  %i.ee = and i64 %2, 4294967295
  %i.ef = and i64 %.sroa.3.0.extract.shift.i, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @290, i64 %i.ee, i64 %i.ef) #11, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph.split.split.i:                             ; preds = %b3Solve3.exit.i
  %indvars.iv.next.i43 = add nsw i64 %indvars.iv.i41216, 1 ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %indvars.iv.next.i43, %wide.trip.count.i
  br i1 %exitcond.not.i42, label %b3PrepareJointsTask.exit, label %.lr.ph217

.lr.ph217:                                        ; preds = %.lr.ph217.preheader, %.lr.ph.split.split.i
  %indvars.iv.i41216 = phi i64 [ %indvars.iv.next.i43, %.lr.ph.split.split.i ], [ %i.dm, %.lr.ph217.preheader ] ; 7 uses
  %i.eg = getelementptr inbounds [216 x i8], ptr %.fr.i, i64 %indvars.iv.i41216 ; 20 uses
  %i.eh = mul nsw i64 %indvars.iv.i41216, 216
  %i.ei = add i64 %i.eh, %i.cu, !nosanitize !9    ; 3 uses
  %i.ej = icmp ne i64 %i.ei, 0
  %i.ek = icmp uge i64 %i.ei, %i.cu, !nosanitize !9
  %i.el = icmp slt i64 %indvars.iv.i41216, 0      ; 2 uses
  %i.em = xor i1 %i.el, %i.ek
  %i.en = and i1 %i.ej, %i.em, !nosanitize !9
  br i1 %i.en, label %bb.ak, label %.split492.us.i, !prof !10, !nosanitize !9

.split492.us.i:                                   ; preds = %.lr.ph217, %bb.ah, %bb.af
  %.us-phi493.i = phi i64 [ %i.da, %bb.af ], [ %i.du, %bb.ah ], [ %i.ei, %.lr.ph217 ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @291, i64 %i.cu, i64 %.us-phi493.i) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ak:                                            ; preds = %.lr.ph217
  %i.eo = getelementptr inbounds [56 x i8], ptr %.fr519.i, i64 %indvars.iv.i41216 ; 8 uses
  %i.ep = mul nsw i64 %indvars.iv.i41216, 56
  %i.eq = add i64 %i.ep, %i.cw, !nosanitize !9    ; 3 uses
  %i.er = icmp ne i64 %i.eq, 0
  %i.es = icmp uge i64 %i.eq, %i.cw, !nosanitize !9
  %i.et = xor i1 %i.el, %i.es
  %i.eu = and i1 %i.er, %i.et, !nosanitize !9
  br i1 %i.eu, label %bb.al, label %.split495.us.i, !prof !10, !nosanitize !9

.split495.us.i:                                   ; preds = %bb.ak, %bb.ai, %bb.ag
  %.us-phi497.i = phi i64 [ %i.dh, %bb.ag ], [ %i.cw, %bb.ai ], [ %i.eq, %bb.ak ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @292, i64 %i.cw, i64 %.us-phi497.i) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.al:                                            ; preds = %bb.ak
  %i.ev = ptrtoint ptr %i.eo to i64, !nosanitize !9 ; 2 uses
  %i.ew = and i64 %i.ev, 3, !nosanitize !9
  %i.ex = icmp eq i64 %i.ew, 0, !nosanitize !9
  br i1 %i.ex, label %bb.am, label %.split499.i, !prof !10, !nosanitize !9

.split499.i:                                      ; preds = %bb.al, %bb.aj, %bb.ag
  %.us-phi500.i = phi i64 [ 0, %bb.ag ], [ %i.eb, %bb.aj ], [ %i.ev, %bb.al ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @294, i64 %.us-phi500.i) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.am:                                            ; preds = %bb.al
  %.sroa.0190.0.copyload.i = load <2 x float>, ptr %i.eo, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !148
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 12 ; 2 uses
  %.sroa.0185.0.copyload.i = load <2 x float>, ptr %i.ey, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 20 ; 2 uses
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !148
  %i.ez = ptrtoint ptr %i.eg to i64, !nosanitize !9 ; 2 uses
  %i.fa = and i64 %i.ez, 3, !nosanitize !9
  %i.fb = icmp eq i64 %i.fa, 0, !nosanitize !9
  br i1 %i.fb, label %bb.an, label %.split516.i, !prof !10, !nosanitize !9

.split516.i:                                      ; preds = %bb.am, %bb.aj
  %.us-phi517.i = phi i64 [ 0, %bb.aj ], [ %i.ez, %bb.am ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @295, i64 %.us-phi517.i) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.an:                                            ; preds = %bb.am
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eg, i64 196
  %i.fd = load <2 x float>, ptr %i.fc, align 4, !tbaa !148
  %i.fe = fmul <2 x float> %i.do, %i.fd
  %i.ff = fadd <2 x float> %i.fe, splat (float 1.000000e+00)
  %i.fg = fdiv <2 x float> splat (float 1.000000e+00), %i.ff ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eg, i64 104
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !372 ; 2 uses
  %i.fj = fcmp ogt float %i.fi, 0.000000e+00
  br i1 %i.fj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eg, i64 204
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !373
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fm = phi float [ %i.fl, %bb.ao ], [ 0.000000e+00, %bb.an ]
  %4 = insertelement <2 x float> poison, float %i.fm, i64 0
  %5 = insertelement <2 x float> %4, float %i.fi, i64 1
  %6 = fmul <2 x float> %i.do, %5                 ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.eg, i64 80
  %.sroa.0178.0.copyload.i = load <2 x float>, ptr %7, align 4
  %.sroa.2179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 88
  %.sroa.2179.0.copyload.i = load float, ptr %.sroa.2179.0..sroa_idx.i, align 4
  %8 = extractelement <2 x float> %6, i64 1
  %i.fn = fmul float %8, %.sroa.2179.0.copyload.i
  %9 = extractelement <2 x float> %6, i64 0
  %10 = fmul float %.sroa.4231.0.copyload.i, %9
  %11 = fadd float %10, %i.fn
  %12 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %13 = fmul <2 x float> %12, %.sroa.0178.0.copyload.i
  %i.fo = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fmul <2 x float> %.sroa.0230.0.copyload.i, %i.fo
  %i.fq = fadd <2 x float> %i.fp, %13
  %i.fr = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = fmul <2 x float> %.sroa.0190.0.copyload.i, %i.fr
  %i.ft = fadd <2 x float> %i.fs, %i.fq
  %i.fu = extractelement <2 x float> %i.fg, i64 0
  %i.fv = fmul float %.sroa.6.0.copyload.i, %i.fu
  %i.fw = fadd float %i.fv, %11
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eg, i64 144
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eg, i64 92
  %.sroa.7354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 160
  %.sroa.9356.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 168
  %.sroa.10357.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 172
  %.sroa.0156.0.copyload.i = load <2 x float>, ptr %i.fy, align 4 ; 2 uses
  %.sroa.2157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 100
  %.sroa.2157.0.copyload.i = load float, ptr %.sroa.2157.0..sroa_idx.i, align 4
  %i.fz = shufflevector <2 x float> %.sroa.0156.0.copyload.i, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.ga = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %.sroa.4135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  %.sroa.4135.0.copyload.i = load <2 x float>, ptr %.sroa.4135.0..sroa_idx.i, align 4 ; 6 uses
  %.sroa.0134.0.copyload.i = load <2 x float>, ptr %i.ga, align 4 ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.gc = load <2 x float>, ptr %i.gb, align 4    ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eo, i64 44
  %i.ge = load <2 x float>, ptr %i.gd, align 4    ; 6 uses
  %i.gf = load <4 x float>, ptr %i.fx, align 4, !tbaa !148 ; 2 uses
  %i.gg = load <2 x float>, ptr %.sroa.7354.0..sroa_idx.i, align 4, !tbaa !148
  %i.gh = load <2 x float>, ptr %.sroa.10357.0..sroa_idx.i, align 4, !tbaa !148
  %.sroa.9356.0.copyload.i = load float, ptr %.sroa.9356.0..sroa_idx.i, align 4, !tbaa !148
  %i.gi = shufflevector <2 x float> %i.gg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gj = shufflevector <4 x float> %i.gf, <4 x float> %i.gi, <4 x i32> <i32 1, i32 5, i32 0, i32 3>
  %i.gk = shufflevector <2 x float> %.sroa.0156.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gl = fmul <4 x float> %i.gj, %i.gk
  %i.gm = shufflevector <4 x float> %i.gi, <4 x float> %i.gf, <4 x i32> <i32 0, i32 6, i32 7, i32 4>
  %i.gn = fmul <4 x float> %i.gm, %i.fz
  %i.go = fadd <4 x float> %i.gn, %i.gl
  %i.gp = insertelement <4 x float> poison, float %.sroa.9356.0.copyload.i, i64 0
  %i.gq = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> %i.gp, <4 x i32> <i32 0, i32 1, i32 4, i32 4>
  %i.gs = insertelement <4 x float> poison, float %.sroa.2157.0.copyload.i, i64 0
  %i.gt = shufflevector <4 x float> %i.gs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gu = fmul <4 x float> %i.gr, %i.gt
  %i.gv = fadd <4 x float> %i.gu, %i.go
  %i.gw = fmul <4 x float> %i.dq, %i.gv
  %i.gx = shufflevector <2 x float> %.sroa.0185.0.copyload.i, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 0>
  %i.gy = insertelement <4 x float> %i.gx, float %.sroa.8.0.copyload.i, i64 1
  %i.gz = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ha = fmul <4 x float> %i.gy, %i.gz
  %i.hb = fadd <4 x float> %i.ha, %i.gw           ; 4 uses
  %i.hc = shufflevector <2 x float> %.sroa.0134.0.copyload.i, <2 x float> %.sroa.4135.0.copyload.i, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.hd = shufflevector <2 x float> %i.gc, <2 x float> %i.ge, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.he = fmul <4 x float> %i.hc, %i.hd
  %i.hf = shufflevector <2 x float> %.sroa.0134.0.copyload.i, <2 x float> %.sroa.4135.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.hg = shufflevector <2 x float> %i.gc, <2 x float> %i.ge, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.hh = fmul <4 x float> %i.hf, %i.hg
  %i.hi = fsub <4 x float> %i.he, %i.hh
  %i.hj = shufflevector <2 x float> %.sroa.4135.0.copyload.i, <2 x float> %.sroa.0134.0.copyload.i, <4 x i32> <i32 0, i32 2, i32 3, i32 3>
  %i.hk = shufflevector <2 x float> %i.ge, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hl = fmul <4 x float> %i.hj, %i.hk
  %i.hm = fadd <4 x float> %i.hi, %i.hl
  %i.hn = shufflevector <2 x float> %.sroa.4135.0.copyload.i, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ho = shufflevector <2 x float> %i.ge, <2 x float> %i.gc, <4 x i32> <i32 0, i32 2, i32 3, i32 3>
  %i.hp = fmul <4 x float> %i.hn, %i.ho
  %i.hq = fadd <4 x float> %i.hp, %i.hm           ; 10 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.4135.0.copyload.i, %i.ge
  %foldExtExtBinop619 = fmul <2 x float> %.sroa.0134.0.copyload.i, %i.gc
  %foldExtExtBinop621 = fmul <2 x float> %.sroa.0134.0.copyload.i, %i.gc
  %shift = shufflevector <2 x float> %foldExtExtBinop621, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop623 = fadd <2 x float> %foldExtExtBinop619, %shift
  %foldExtExtBinop625 = fmul <2 x float> %.sroa.4135.0.copyload.i, %i.ge
  %foldExtExtBinop627 = fadd <2 x float> %foldExtExtBinop625, %foldExtExtBinop623
  %shift629 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop630 = fsub <2 x float> %shift629, %foldExtExtBinop627 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.eg, i64 108
  %.sroa.0387.0.copyload.i = load <2 x float>, ptr %i.hr, align 4 ; 4 uses
  %.sroa.4388.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 116
  %.sroa.4388.0.copyload.i = load float, ptr %.sroa.4388.0..sroa_idx.i, align 4, !tbaa !148 ; 2 uses
  %.sroa.5389.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 120
  %.sroa.5389.0.copyload.i = load <2 x float>, ptr %.sroa.5389.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.6390.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 128
  %.sroa.6390.0.copyload.i = load float, ptr %.sroa.6390.0..sroa_idx.i, align 4, !tbaa !148 ; 2 uses
  %.sroa.7391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 132
  %.sroa.7391.0.copyload.i = load <2 x float>, ptr %.sroa.7391.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.8392.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 140
  %.sroa.8392.0.copyload.i = load float, ptr %.sroa.8392.0..sroa_idx.i, align 4, !tbaa !148 ; 3 uses
  %i.hs = shufflevector <2 x float> %.sroa.7391.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.7391.0.copyload.i, i64 0 ; 2 uses
  %.sroa.09.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.5389.0.copyload.i, i64 0
  %i.ht = fmul float %.sroa.6390.0.copyload.i, %.sroa.0.0.vec.extract.i.i.i.i
  %i.hu = extractelement <2 x float> %.sroa.5389.0.copyload.i, i64 1
  %i.hv = fmul float %i.hu, %.sroa.8392.0.copyload.i
  %i.hw = fmul float %.sroa.09.0.vec.extract.i.i.i.i, %.sroa.8392.0.copyload.i
  %i.hx = extractelement <2 x float> %.sroa.7391.0.copyload.i, i64 1
  %i.hy = fmul float %.sroa.6390.0.copyload.i, %i.hx
  %i.hz = fsub float %i.ht, %i.hw                 ; 2 uses
  %i.ia = fsub float %i.hv, %i.hy                 ; 2 uses
  %i.ib = fmul <2 x float> %.sroa.5389.0.copyload.i, %i.hs ; 4 uses
  %shift632 = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop633 = fsub <2 x float> %i.ib, %shift632
  %i.ic = extractelement <2 x float> %foldExtExtBinop633, i64 0
  %.sroa.03.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0387.0.copyload.i, i64 0 ; 2 uses
  %i.id = fmul float %.sroa.03.0.vec.extract.i.i.i.i, %i.ia
  %i.ie = extractelement <2 x float> %.sroa.0387.0.copyload.i, i64 1
  %i.if = fmul float %i.ie, %i.hz
  %i.ig = fadd float %i.id, %i.if
  %i.ih = fmul float %.sroa.4388.0.copyload.i, %i.ic
  %i.ii = fadd float %i.ih, %i.ig                 ; 2 uses
  %i.ij = tail call float @llvm.fabs.f32(float %i.ii)
  %i.ik = fcmp ogt float %i.ij, f0x057A0000
  br i1 %i.ik, label %bb.aq, label %b3InvertMatrix.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.il = shufflevector <2 x float> %.sroa.0387.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.im = shufflevector <2 x float> %.sroa.5389.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.in = fdiv float 1.000000e+00, %i.ii
  %i.io = insertelement <2 x float> poison, float %i.in, i64 0
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.iq = insertelement <2 x float> poison, float %i.hz, i64 0
  %i.ir = insertelement <2 x float> %i.iq, float %i.ia, i64 1
  %i.is = fmul <2 x float> %i.ir, %i.ip
  %i.it = fmul float %.sroa.03.0.vec.extract.i.i.i.i, %.sroa.8392.0.copyload.i
  %i.iu = fmul float %.sroa.4388.0.copyload.i, %.sroa.0.0.vec.extract.i.i.i.i
  %i.iv = fmul <2 x float> %i.il, %.sroa.7391.0.copyload.i ; 2 uses
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> %i.ib, <2 x i32> <i32 0, i32 2>
  %i.ix = shufflevector <2 x float> %i.iv, <2 x float> %i.ib, <2 x i32> <i32 1, i32 3>
  %i.iy = fsub <2 x float> %i.iw, %i.ix
  %i.iz = fmul <2 x float> %i.iy, %i.ip           ; 2 uses
  %i.ja = fmul <2 x float> %.sroa.0387.0.copyload.i, %i.im ; 2 uses
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jc = insertelement <2 x float> %i.ja, float %i.it, i64 1
  %i.jd = insertelement <2 x float> %i.jb, float %i.iu, i64 1
  %i.je = fsub <2 x float> %i.jc, %i.jd
  %i.jf = fmul <2 x float> %i.je, %i.ip           ; 3 uses
  %i.jg = extractelement <2 x float> %i.jf, i64 0
  %i.jh = shufflevector <2 x float> %i.iz, <2 x float> %i.jf, <2 x i32> <i32 1, i32 2>
  br label %b3InvertMatrix.exit.i

b3InvertMatrix.exit.i:                            ; preds = %bb.aq, %bb.ap
  %.sroa.16.0.i = phi float [ %i.jg, %bb.aq ], [ 0.000000e+00, %bb.ap ] ; 2 uses
  %i.ji = phi <2 x float> [ %i.is, %bb.aq ], [ zeroinitializer, %bb.ap ] ; 6 uses
  %i.jj = phi <2 x float> [ %i.iz, %bb.aq ], [ zeroinitializer, %bb.ap ] ; 7 uses
  %i.jk = phi <2 x float> [ %i.jh, %bb.aq ], [ zeroinitializer, %bb.ap ] ; 2 uses
  %i.jl = phi <2 x float> [ %i.jf, %bb.aq ], [ zeroinitializer, %bb.ap ] ; 3 uses
  %i.jm = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.jn = shufflevector <4 x float> %i.hq, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.jo = fmul <4 x float> %i.jm, %i.jn
  %i.jp = fmul <4 x float> %i.hb, %i.hq
  %i.jq = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.jr = shufflevector <2 x float> %foldExtExtBinop630, <2 x float> poison, <4 x i32> zeroinitializer
  %i.js = fmul <4 x float> %i.jq, %i.jr
  %i.jt = fsub <4 x float> %i.jo, %i.jp
  %i.ju = fsub <4 x float> %i.jt, %i.js           ; 2 uses
  %i.jv = fmul <4 x float> %i.hq, %i.ju
  %i.jw = shufflevector <4 x float> %i.hq, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.jx = shufflevector <4 x float> %i.ju, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.jy = fmul <4 x float> %i.jw, %i.jx
  %i.jz = fsub <4 x float> %i.jv, %i.jy
  %i.ka = fmul <4 x float> %i.jz, splat (float 2.000000e+00)
  %i.kb = fadd <4 x float> %i.hb, %i.ka           ; 12 uses
  %i.kc = extractelement <4 x float> %i.kb, i64 2 ; 4 uses
  %i.kd = extractelement <4 x float> %i.kb, i64 0 ; 6 uses
  %i.ke = extractelement <4 x float> %i.kb, i64 1 ; 3 uses
  %i.kf = extractelement <2 x float> %i.ji, i64 0 ; 3 uses
  %i.kg = fmul float %i.ke, %i.kf                 ; 2 uses
  %i.kh = extractelement <2 x float> %i.ji, i64 1 ; 4 uses
  %i.ki = fmul float %i.kd, %i.kh
  %i.kj = extractelement <2 x float> %i.jl, i64 1 ; 3 uses
  %i.kk = shufflevector <4 x float> %i.kb, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.kl = shufflevector <2 x float> %i.ji, <2 x float> %i.jj, <2 x i32> <i32 0, i32 3>
  %i.km = fmul <2 x float> %i.kk, %i.kl           ; 3 uses
  %i.kn = fmul float %i.kd, %i.kj
  %i.ko = fmul float %i.kc, %i.kh
  %i.kp = extractelement <2 x float> %i.jj, i64 0 ; 3 uses
  %i.kq = fmul float %i.kd, %i.kp                 ; 2 uses
  %i.kr = fmul float %i.kc, %i.kf                 ; 2 uses
  %i.ks = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.kt = insertelement <2 x float> %i.ks, float %i.kq, i64 1
  %i.ku = fadd <2 x float> %i.kt, %i.km
  %i.kv = fadd float %i.kr, %i.kn
  %i.kw = shufflevector <4 x float> %i.kb, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kx = fmul <2 x float> %i.kw, %i.jk           ; 2 uses
  %i.ky = fmul float %i.ke, %i.kp                 ; 2 uses
  %i.kz = fadd <2 x float> %i.kx, %i.ku           ; 6 uses
  %i.la = fadd float %i.kv, %i.ky                 ; 4 uses
  %i.lb = extractelement <2 x float> %i.jj, i64 1 ; 2 uses
  %i.lc = fmul float %i.kd, %i.lb                 ; 2 uses
  %i.ld = fsub float %i.kr, %i.ki
  %i.le = fsub float %i.lc, %i.kg
  %i.lf = fadd float %i.ld, %i.la
  %i.lg = fmul float %i.co, %i.le
  %i.lh = fmul float %i.kc, %i.kp                 ; 2 uses
  %i.li = fsub float %i.lh, %i.lc
  %i.lj = fmul float %i.co, %i.lf
  %i.lk = fadd float %i.kh, %i.lg                 ; 5 uses
  %i.ll = extractelement <2 x float> %i.kz, i64 1
  %i.lm = fsub float %i.kg, %i.lh
  %i.ln = fmul float %i.co, %i.lm
  %i.lo = fadd float %i.kj, %i.ln                 ; 4 uses
  %i.lp = fmul float %i.ke, %i.kh
  %i.lq = extractelement <2 x float> %i.km, i64 1
  %i.lr = fsub float %i.lp, %i.lq
  %i.ls = fsub float %i.lr, %i.ll
  %i.lt = fmul float %i.co, %i.ls
  %i.lu = fmul float %i.kd, %.sroa.16.0.i
  %i.lv = fmul float %i.kc, %i.kj
  %i.lw = insertelement <2 x float> poison, float %i.lv, i64 0
  %i.lx = insertelement <2 x float> %i.lw, float %i.lu, i64 1
  %i.ly = insertelement <2 x float> %i.km, float %i.ky, i64 1
end_hunk_0
