Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/contact_solver?download=true
inline.NumInlined: 529
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@b3StoreImpulses_Mesh:bb.a
  %i.ao = icmp eq i64 %i.an, 0, !nosanitize !10
  %i.ap = and i1 %i.af, %i.ao
  br i1 %i.ap, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @109, i64 %i.am) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 72 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 88 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !162 ; 4 uses
  %i.at = icmp ult i8 %i.as, 2
  br i1 %i.at, label %bb.q, label %bb.p, !prof !11, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  %i.au = zext i8 %i.as to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @110, i64 %i.au) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 4440
  %i.aw = load float, ptr %i.av, align 8, !tbaa !163
  %i.ax = fneg float %i.aw                        ; 5 uses
  %i.ay = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.az = and i32 %i.ay, 65535
  %i.ba = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.0.extract.trunc, i32 %i.az), !nosanitize !10 ; 2 uses
  %i.bb = extractvalue { i32, i1 } %i.ba, 0, !nosanitize !10 ; 4 uses
  %i.bc = extractvalue { i32, i1 } %i.ba, 1, !nosanitize !10
  br i1 %i.bc, label %bb.r, label %.preheader116, !prof !89, !nosanitize !10

.preheader116:                                    ; preds = %bb.q
  %i.bd = ptrtoint ptr %.076.fr to i64            ; 14 uses
  %.not1757 = icmp eq ptr %.076.fr, null
  br i1 %.not1757, label %.split1291.us, label %.preheader116.split.preheader, !prof !89

bb.r:                                             ; preds = %bb.q
  %i.be = and i64 %0, 4294967295
  %i.bf = and i64 %.sroa.2.0.extract.shift, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @111, i64 %i.be, i64 %i.bf) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader116.split:                              ; preds = %bb.t
  %indvars.iv.next3285 = add nuw nsw i64 %indvars.iv32844470, 1
  %i.bg = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bj, i32 1), !nosanitize !10 ; 2 uses
  %i.bh = extractvalue { i32, i1 } %i.bg, 0, !nosanitize !10
  %i.bi = extractvalue { i32, i1 } %i.bg, 1, !nosanitize !10
  br i1 %i.bi, label %.split.us, label %.preheader116.split.preheader, !prof !92, !llvm.loop !213, !nosanitize !10

.split.us:                                        ; preds = %.preheader116.split
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @112, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader116.split.preheader:                    ; preds = %.preheader116, %.preheader116.split
  %i.bj = phi i32 [ %i.bh, %.preheader116.split ], [ 1, %.preheader116 ] ; 4 uses
  %.0804471 = phi i32 [ %i.bj, %.preheader116.split ], [ 0, %.preheader116 ]
  %indvars.iv32844470 = phi i64 [ %indvars.iv.next3285, %.preheader116.split ], [ 0, %.preheader116 ] ; 2 uses
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %.076.fr, i64 %i.bk ; 2 uses
  %i.bm = shl nsw i64 %i.bk, 4
  %i.bn = add i64 %i.bm, %i.bd, !nosanitize !10   ; 3 uses
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = icmp uge i64 %i.bn, %i.bd, !nosanitize !10
  %i.bq = icmp slt i32 %i.bj, 0
  %i.br = xor i1 %i.bq, %i.bp
  %i.bs = and i1 %i.bo, %i.br, !nosanitize !10
  br i1 %i.bs, label %bb.s, label %.split1291.us, !prof !11, !nosanitize !10

.split1291.us:                                    ; preds = %.preheader116.split.preheader, %.preheader116
  %.us-phi1293 = phi i64 [ 16, %.preheader116 ], [ %i.bn, %.preheader116.split.preheader ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @113, i64 %i.bd, i64 %.us-phi1293) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %.preheader116.split.preheader
  %i.bt = ptrtoint ptr %i.bl to i64, !nosanitize !10 ; 2 uses
  %i.bu = and i64 %i.bt, 7, !nosanitize !10
  %i.bv = icmp eq i64 %i.bu, 0, !nosanitize !10
  br i1 %i.bv, label %bb.t, label %.split1295, !prof !11, !nosanitize !10

.split1295:                                       ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @114, i64 %i.bt) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  %i.bw = load i32, ptr %i.bl, align 8, !tbaa !96
  %.not109 = icmp sgt i32 %i.bw, %.sroa.0.0.extract.trunc
  br i1 %.not109, label %.preheader, label %.preheader116.split, !llvm.loop !213

.preheader:                                       ; preds = %bb.t
  %i.bx = icmp sgt i32 %i.bb, %.sroa.0.0.extract.trunc
  br i1 %i.bx, label %.lr.ph1576, label %._crit_edge1577

.lr.ph1576:                                       ; preds = %.preheader
  %i.by = ptrtoint ptr %.077.fr to i64            ; 4 uses
  %.not1758.a = icmp eq ptr %.077.fr, null
  br i1 %.not1758.a, label %.lr.ph1576.split.split.us, label %.lr.ph1576.split.us, !prof !89

.lr.ph1576.split.us:                              ; preds = %.lr.ph1576, %.loopexit.us
  %indvars.iv3289 = phi i64 [ %indvars.iv.next3290, %.loopexit.us ], [ %indvars.iv32844470, %.lr.ph1576 ] ; 5 uses
  %.0821574.us = phi i32 [ %.183.lcssa.us, %.loopexit.us ], [ %.sroa.0.0.extract.trunc, %.lr.ph1576 ] ; 3 uses
  %.0841573.us = phi i8 [ %.185.lcssa.us, %.loopexit.us ], [ %i.as, %.lr.ph1576 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %.076.fr, i64 %indvars.iv3289 ; 2 uses
  %i.ca = shl nuw nsw i64 %indvars.iv3289, 4
  %i.cb = add i64 %i.ca, %i.bd, !nosanitize !10   ; 2 uses
  %.not1762 = icmp ult i64 %i.cb, %i.bd, !nosanitize !10
  br i1 %.not1762, label %.split1588.us, label %bb.u, !prof !89, !nosanitize !10

bb.u:                                             ; preds = %.lr.ph1576.split.us
  %i.cc = ptrtoint ptr %i.bz to i64, !nosanitize !10 ; 2 uses
  %i.cd = and i64 %i.cc, 7, !nosanitize !10
  %i.ce = icmp eq i64 %i.cd, 0, !nosanitize !10
  br i1 %i.ce, label %bb.v, label %.split1591.us, !prof !11, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  %i.cf = load i32, ptr %i.bz, align 8, !tbaa !96 ; 2 uses
  %exitcond3291 = icmp eq i64 %indvars.iv3289, 2147483647
  br i1 %exitcond3291, label %.split1594.us, label %bb.w, !prof !89, !nosanitize !10

bb.w:                                             ; preds = %bb.v
  %i.cg = shl i64 %indvars.iv3289, 32
  %sext4246 = add i64 %i.cg, 4294967296           ; 2 uses
  %i.ch = ashr exact i64 %sext4246, 28
  %i.ci = getelementptr inbounds i8, ptr %.076.fr, i64 %i.ch ; 2 uses
  %i.cj = ashr exact i64 %sext4246, 28
  %i.ck = add i64 %i.cj, %i.bd, !nosanitize !10   ; 2 uses
  %.not4247 = icmp ult i64 %i.ck, %i.bd, !nosanitize !10
  br i1 %.not4247, label %.split1597.us, label %bb.x, !prof !89, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  %i.cl = ptrtoint ptr %i.ci to i64, !nosanitize !10 ; 2 uses
  %i.cm = and i64 %i.cl, 7, !nosanitize !10
  %i.cn = icmp eq i64 %i.cm, 0, !nosanitize !10
  br i1 %i.cn, label %bb.y, label %.split1600.us, !prof !11, !nosanitize !10

bb.y:                                             ; preds = %bb.x
  %i.co = load i32, ptr %i.ci, align 8, !tbaa !96
  %i.cp = tail call noundef i32 @llvm.smin.i32(i32 %i.co, i32 %i.bb) ; 3 uses
  %i.cq = icmp slt i32 %.0821574.us, %i.cp
  br i1 %i.cq, label %.lr.ph1348.us.preheader, label %.loopexit.us

.lr.ph1348.us.preheader:                          ; preds = %bb.y
  %i.cr = sext i32 %.0821574.us to i64
  %i.cs = sext i32 %i.cp to i64
  br label %.lr.ph1348.us

.lr.ph1348.us:                                    ; preds = %.lr.ph1348.us.preheader, %._crit_edge1343.us
  %indvars.iv3281 = phi i64 [ %i.cr, %.lr.ph1348.us.preheader ], [ %indvars.iv.next3282, %._crit_edge1343.us ] ; 6 uses
  %.1851345.us1581 = phi i8 [ %.0841573.us, %.lr.ph1348.us.preheader ], [ %.286.lcssa.us, %._crit_edge1343.us ] ; 2 uses
  %i.ct = getelementptr inbounds [168 x i8], ptr %.077.fr, i64 %indvars.iv3281 ; 4 uses
  %i.cu = mul nsw i64 %indvars.iv3281, 168
  %i.cv = add i64 %i.cu, %i.by, !nosanitize !10   ; 3 uses
  %i.cw = icmp ne i64 %i.cv, 0
  %i.cx = icmp uge i64 %i.cv, %i.by, !nosanitize !10
  %i.cy = icmp slt i64 %indvars.iv3281, 0
  %i.cz = xor i1 %i.cy, %i.cx
  %i.da = and i1 %i.cw, %i.cz, !nosanitize !10
  br i1 %i.da, label %bb.z, label %.split1352.us, !prof !11, !nosanitize !10

bb.z:                                             ; preds = %.lr.ph1348.us
  %i.db = trunc nsw i64 %indvars.iv3281 to i32
  %i.dc = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.db, i32 %i.cf), !nosanitize !10
  %i.dd = extractvalue { i32, i1 } %i.dc, 1, !nosanitize !10
  br i1 %i.dd, label %.split1356.us, label %bb.aa, !prof !89, !nosanitize !10

bb.aa:                                            ; preds = %bb.z
  %i.de = ptrtoint ptr %i.ct to i64, !nosanitize !10 ; 2 uses
  %i.df = and i64 %i.de, 7, !nosanitize !10
  %i.dg = icmp eq i64 %i.df, 0, !nosanitize !10
  br i1 %i.dg, label %bb.ab, label %.split1360, !prof !11, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !109 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 164
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !110 ; 2 uses
  %i.dl = icmp ne ptr %i.di, null, !nosanitize !10
  %i.dm = ptrtoint ptr %i.di to i64, !nosanitize !10 ; 2 uses
  %i.dn = and i64 %i.dm, 7, !nosanitize !10
  %i.do = icmp eq i64 %i.dn, 0, !nosanitize !10
  %i.dp = and i1 %i.dl, %i.do, !nosanitize !10
  br i1 %i.dp, label %bb.ac, label %.split1619.us, !prof !11, !nosanitize !10

bb.ac:                                            ; preds = %bb.ab
  %i.dq = icmp sgt i32 %i.dk, 0
  br i1 %i.dq, label %.lr.ph1342.us, label %._crit_edge1343.us

.lr.ph1342.us:                                    ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 68
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !115
  %.fr1763 = freeze i32 %i.ds
  %i.dt = and i32 %.fr1763, 1048576
  %.not110.us.not = icmp eq i32 %i.dt, 0
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 72
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 56 ; 5 uses
  %wide.trip.count3280 = zext nneg i32 %i.dk to i64
  br label %.lr.ph1342.split.us

.lr.ph1342.split.us:                              ; preds = %.lr.ph1342.us, %._crit_edge.us
  %indvars.iv = phi i64 [ 0, %.lr.ph1342.us ], [ %indvars.iv.next, %._crit_edge.us ] ; 5 uses
  %.0791339.us = phi i8 [ 0, %.lr.ph1342.us ], [ %.1.lcssa.us, %._crit_edge.us ] ; 8 uses
  %.2861338.us = phi i8 [ %.1851345.us1581, %.lr.ph1342.us ], [ %.3.lcssa.us, %._crit_edge.us ] ; 7 uses
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !119 ; 3 uses
  %i.dx = getelementptr inbounds nuw [268 x i8], ptr %i.dw, i64 %indvars.iv ; 33 uses
  %i.dy = mul nuw nsw i64 %indvars.iv, 268
  %i.dz = ptrtoint ptr %i.dw to i64, !nosanitize !10 ; 3 uses
  %i.ea = add i64 %i.dy, %i.dz, !nosanitize !10   ; 3 uses
  %i.eb = icmp ne ptr %i.dw, null, !nosanitize !10 ; 2 uses
  %i.ec = icmp eq i64 %i.ea, 0
  %i.ed = xor i1 %i.eb, %i.ec
  %i.ee = icmp uge i64 %i.ea, %i.dz, !nosanitize !10
  %i.ef = and i1 %i.ed, %i.ee, !nosanitize !10
  br i1 %i.ef, label %bb.ad, label %.split1628.us, !prof !11, !nosanitize !10

bb.ad:                                            ; preds = %.lr.ph1342.split.us
  %i.eg = load ptr, ptr %i.ct, align 8, !tbaa !118 ; 3 uses
  %i.eh = getelementptr inbounds nuw [308 x i8], ptr %i.eg, i64 %indvars.iv ; 41 uses
  %i.ei = mul nuw nsw i64 %indvars.iv, 308
  %i.ej = ptrtoint ptr %i.eg to i64, !nosanitize !10 ; 3 uses
  %i.ek = add i64 %i.ei, %i.ej, !nosanitize !10   ; 3 uses
  %i.el = icmp ne ptr %i.eg, null, !nosanitize !10 ; 2 uses
  %i.em = icmp eq i64 %i.ek, 0
  %i.en = xor i1 %i.el, %i.em
  %i.eo = icmp uge i64 %i.ek, %i.ej, !nosanitize !10
  %i.ep = and i1 %i.en, %i.eo, !nosanitize !10
  br i1 %i.ep, label %bb.ae, label %.split1632.us, !prof !11, !nosanitize !10

bb.ae:                                            ; preds = %bb.ad
  %i.eq = ptrtoint ptr %i.eh to i64, !nosanitize !10 ; 4 uses
  %i.er = and i64 %i.eq, 3, !nosanitize !10
  %i.es = icmp eq i64 %i.er, 0, !nosanitize !10
  %i.et = and i1 %i.el, %i.es
  br i1 %i.et, label %bb.af, label %.split1636.us, !prof !11, !nosanitize !10

bb.af:                                            ; preds = %bb.ae
  %i.eu = ptrtoint ptr %i.dx to i64, !nosanitize !10 ; 4 uses
  %i.ev = and i64 %i.eu, 3, !nosanitize !10
  %i.ew = icmp eq i64 %i.ev, 0, !nosanitize !10
  %i.ex = and i1 %i.eb, %i.ew
  br i1 %i.ex, label %bb.ag, label %.split1642.us, !prof !11, !nosanitize !10

bb.ag:                                            ; preds = %bb.af
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eh, i64 260
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !143
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dx, i64 236
  store float %i.ez, ptr %i.fa, align 4, !tbaa !142
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dx, i64 240
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eh, i64 280
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eh, i64 284
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eh, i64 208
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eh, i64 220
  %.sroa.014.0.copyload.us = load <2 x float>, ptr %i.fe, align 4
  %.sroa.215.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.eh, i64 216
  %.sroa.215.0.copyload.us = load float, ptr %.sroa.215.0..sroa_idx.us, align 4
  %.sroa.012.0.copyload.us = load <2 x float>, ptr %i.ff, align 4
  %.sroa.213.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.eh, i64 228
  %.sroa.213.0.copyload.us = load float, ptr %.sroa.213.0..sroa_idx.us, align 4
  %i.fg = load float, ptr %i.fd, align 4, !tbaa !140 ; 2 uses
  %i.fh = load float, ptr %i.fc, align 4, !tbaa !139 ; 2 uses
  %i.fi = fmul float %i.fh, %.sroa.215.0.copyload.us
  %i.fj = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x float> %i.fk, %.sroa.014.0.copyload.us
  %i.fm = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = fmul <2 x float> %i.fn, %.sroa.012.0.copyload.us
  %i.fp = fadd <2 x float> %i.fl, %i.fo
  %i.fq = fmul float %i.fg, %.sroa.213.0.copyload.us
  %i.fr = fadd float %i.fi, %i.fq
  store <2 x float> %i.fp, ptr %i.fb, align 4
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.dx, i64 248
  store float %i.fr, ptr %.sroa.4.0..sroa_idx.us, align 4, !tbaa !107
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dx, i64 252
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eh, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fs, ptr noundef nonnull align 4 dereferenceable(12) %i.ft, i64 12, i1 false), !tbaa.struct !128
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eh, i64 192
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !127 ; 11 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph.us, label %._crit_edge.us

.lr.ph.us:                                        ; preds = %bb.ag
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.fz = load float, ptr %i.fx, align 4, !tbaa !133
  store float %i.fz, ptr %i.fy, align 4, !tbaa !131
  %i.ga = getelementptr inbounds nuw i8, ptr %i.eh, i64 36 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eh, i64 28 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dx, i64 40 ; 2 uses
  br i1 %.not110.us.not, label %.lr.ph.split.us.us.preheader, label %.lr.ph.split.us1582.preheader

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dx, i64 36
  %i.ge = load float, ptr %i.ga, align 4, !tbaa !134
  store float %i.ge, ptr %i.gd, align 4, !tbaa !164
  %i.gf = load float, ptr %i.gb, align 4, !tbaa !137
  store float %i.gf, ptr %i.gc, align 4, !tbaa !165
  %exitcond3279.not = icmp eq i32 %i.fv, 1
  br i1 %exitcond3279.not, label %._crit_edge.us, label %.lr.ph.split.us.us.1

.lr.ph.split.us.us.1:                             ; preds = %.lr.ph.split.us.us.preheader
  %.not111.us.us.1 = icmp ugt ptr %i.eh, inttoptr (i64 -49 to ptr)
  br i1 %.not111.us.us.1, label %.split1305.us, label %bb.ah, !prof !89, !nosanitize !10

bb.ah:                                            ; preds = %.lr.ph.split.us.us.1
  %.not112.us.us.1 = icmp ugt ptr %i.dx, inttoptr (i64 -57 to ptr)
  br i1 %.not112.us.us.1, label %.split1309.us, label %bb.ai, !prof !89, !nosanitize !10

bb.ai:                                            ; preds = %bb.ah
  %i.gg = getelementptr inbounds nuw i8, ptr %i.eh, i64 80
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dx, i64 88
  %i.gi = load <2 x float>, ptr %i.gg, align 4, !tbaa !107
  store <2 x float> %i.gi, ptr %i.gh, align 4, !tbaa !107
  %i.gj = getelementptr inbounds nuw i8, ptr %i.eh, i64 76
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dx, i64 96
  %i.gl = load float, ptr %i.gj, align 4, !tbaa !137
  store float %i.gl, ptr %i.gk, align 4, !tbaa !165
  %exitcond3279.1.not = icmp eq i32 %i.fv, 2
  br i1 %exitcond3279.1.not, label %._crit_edge.us, label %.lr.ph.split.us.us.2

.lr.ph.split.us.us.2:                             ; preds = %bb.ai
  %.not111.us.us.2 = icmp ugt ptr %i.eh, inttoptr (i64 -97 to ptr)
  br i1 %.not111.us.us.2, label %.split1305.us, label %bb.aj, !prof !89, !nosanitize !10

bb.aj:                                            ; preds = %.lr.ph.split.us.us.2
  %.not112.us.us.2 = icmp ugt ptr %i.dx, inttoptr (i64 -113 to ptr)
  br i1 %.not112.us.us.2, label %.split1309.us, label %bb.ak, !prof !89, !nosanitize !10

bb.ak:                                            ; preds = %bb.aj
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eh, i64 128
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dx, i64 144
  %i.go = load <2 x float>, ptr %i.gm, align 4, !tbaa !107
  store <2 x float> %i.go, ptr %i.gn, align 4, !tbaa !107
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eh, i64 124
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dx, i64 152
  %i.gr = load float, ptr %i.gp, align 4, !tbaa !137
  store float %i.gr, ptr %i.gq, align 4, !tbaa !165
  %exitcond3279.2.not = icmp eq i32 %i.fv, 3
  br i1 %exitcond3279.2.not, label %._crit_edge.us, label %.lr.ph.split.us.us.3

.lr.ph.split.us.us.3:                             ; preds = %bb.ak
  %.not111.us.us.3 = icmp ugt ptr %i.eh, inttoptr (i64 -145 to ptr)
  br i1 %.not111.us.us.3, label %.split1305.us, label %bb.al, !prof !89, !nosanitize !10

bb.al:                                            ; preds = %.lr.ph.split.us.us.3
  %.not112.us.us.3 = icmp ugt ptr %i.dx, inttoptr (i64 -169 to ptr)
  br i1 %.not112.us.us.3, label %.split1309.us, label %bb.am, !prof !89, !nosanitize !10

bb.am:                                            ; preds = %bb.al
  %i.gs = getelementptr inbounds nuw i8, ptr %i.eh, i64 176
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dx, i64 200
  %i.gu = load <2 x float>, ptr %i.gs, align 4, !tbaa !107
  store <2 x float> %i.gu, ptr %i.gt, align 4, !tbaa !107
  %i.gv = getelementptr inbounds nuw i8, ptr %i.eh, i64 172
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dx, i64 208
  %i.gx = load float, ptr %i.gv, align 4, !tbaa !137
  store float %i.gx, ptr %i.gw, align 4, !tbaa !165
  %exitcond3279.3.not = icmp eq i32 %i.fv, 4
  br i1 %exitcond3279.3.not, label %._crit_edge.us, label %.lr.ph.split.us.us.4

.lr.ph.split.us.us.4:                             ; preds = %bb.am
  %.not111.us.us.4 = icmp ugt ptr %i.eh, inttoptr (i64 -193 to ptr)
  br i1 %.not111.us.us.4, label %.split1305.us, label %bb.an, !prof !89, !nosanitize !10

bb.an:                                            ; preds = %.lr.ph.split.us.us.4
  %.not112.us.us.4 = icmp ugt ptr %i.dx, inttoptr (i64 -225 to ptr)
  br i1 %.not112.us.us.4, label %.split1309.us, label %bb.ao, !prof !89, !nosanitize !10

bb.ao:                                            ; preds = %bb.an
  %i.gy = getelementptr inbounds nuw i8, ptr %i.eh, i64 224
  %i.gz = getelementptr inbounds nuw i8, ptr %i.dx, i64 256
  %i.ha = load <2 x float>, ptr %i.gy, align 4, !tbaa !107
  store <2 x float> %i.ha, ptr %i.gz, align 4, !tbaa !107
  %i.hb = getelementptr inbounds nuw i8, ptr %i.eh, i64 220
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dx, i64 264
  %i.hd = load float, ptr %i.hb, align 4, !tbaa !137
  store float %i.hd, ptr %i.hc, align 4, !tbaa !165
  %exitcond3279.4.not = icmp eq i32 %i.fv, 5
  br i1 %exitcond3279.4.not, label %._crit_edge.us, label %.split1302.us

.lr.ph.split.us1582.preheader:                    ; preds = %.lr.ph.us
  %i.he = load float, ptr %i.ga, align 4, !tbaa !134 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dx, i64 36
  store float %i.he, ptr %i.hf, align 4, !tbaa !164
  %i.hg = load float, ptr %i.gb, align 4, !tbaa !137 ; 2 uses
  store float %i.hg, ptr %i.gc, align 4, !tbaa !165
  %i.hh = icmp eq i8 %.0791339.us, 0
  %i.hi = fcmp olt float %i.hg, %i.ax
  %or.cond114.us = select i1 %i.hh, i1 %i.hi, i1 false
  %3 = fcmp ogt float %i.he, 0.000000e+00
  %or.cond115.us = select i1 %or.cond114.us, i1 %3, i1 false
  br i1 %or.cond115.us, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %.lr.ph.split.us1582.preheader
  %i.hj = load i32, ptr %i.dv, align 8, !tbaa !166 ; 2 uses
  %i.hk = lshr i32 %i.hj, 6
  %i.hl = load ptr, ptr %i.aq, align 8, !tbaa !167 ; 3 uses
  %i.hm = zext nneg i32 %i.hk to i64              ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.hm ; 3 uses
  %i.ho = shl nuw nsw i64 %i.hm, 3
  %i.hp = ptrtoint ptr %i.hl to i64, !nosanitize !10 ; 3 uses
  %i.hq = add i64 %i.ho, %i.hp, !nosanitize !10   ; 3 uses
  %i.hr = icmp ne ptr %i.hl, null, !nosanitize !10 ; 2 uses
  %i.hs = icmp eq i64 %i.hq, 0
  %i.ht = xor i1 %i.hr, %i.hs
  %i.hu = icmp uge i64 %i.hq, %i.hp, !nosanitize !10
  %i.hv = and i1 %i.hu, %i.ht, !nosanitize !10
  br i1 %i.hv, label %bb.aq, label %.split1710.us, !prof !11, !nosanitize !10

bb.aq:                                            ; preds = %bb.ap
  %i.hw = ptrtoint ptr %i.hn to i64, !nosanitize !10 ; 2 uses
  %i.hx = and i64 %i.hw, 7, !nosanitize !10
  %i.hy = icmp eq i64 %i.hx, 0, !nosanitize !10
  %i.hz = and i1 %i.hr, %i.hy
  br i1 %i.hz, label %b3SetBit.exit.us, label %.split1714.us, !prof !11, !nosanitize !10

b3SetBit.exit.us:                                 ; preds = %bb.aq
  %i.ia = and i32 %i.hj, 63
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = shl nuw i64 1, %i.ib
  %i.id = load i64, ptr %i.hn, align 8, !tbaa !168
  %i.ie = or i64 %i.id, %i.ic
  store i64 %i.ie, ptr %i.hn, align 8, !tbaa !168
  br label %bb.ar

bb.ar:                                            ; preds = %b3SetBit.exit.us, %.lr.ph.split.us1582.preheader
  %.4.us = phi i8 [ 1, %b3SetBit.exit.us ], [ %.2861338.us, %.lr.ph.split.us1582.preheader ] ; 2 uses
  %.2.us = phi i8 [ 1, %b3SetBit.exit.us ], [ %.0791339.us, %.lr.ph.split.us1582.preheader ] ; 3 uses
  %exitcond3276.not = icmp eq i32 %i.fv, 1
  br i1 %exitcond3276.not, label %._crit_edge.us, label %.lr.ph.split.us1582.1

.lr.ph.split.us1582.1:                            ; preds = %bb.ar
  %.not111.us1584.1 = icmp ugt ptr %i.eh, inttoptr (i64 -49 to ptr)
  br i1 %.not111.us1584.1, label %.split1305.us, label %bb.as, !prof !89, !nosanitize !10

bb.as:                                            ; preds = %.lr.ph.split.us1582.1
  %.not112.us1585.1 = icmp ugt ptr %i.dx, inttoptr (i64 -57 to ptr)
  br i1 %.not112.us1585.1, label %.split1309.us, label %bb.at, !prof !89, !nosanitize !10

bb.at:                                            ; preds = %bb.as
  %i.if = getelementptr inbounds nuw i8, ptr %i.eh, i64 80
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dx, i64 88
  %i.ih = getelementptr inbounds nuw i8, ptr %i.eh, i64 84
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !134
  %i.ij = load <2 x float>, ptr %i.if, align 4, !tbaa !107
  store <2 x float> %i.ij, ptr %i.ig, align 4, !tbaa !107
  %i.ik = getelementptr inbounds nuw i8, ptr %i.eh, i64 76
  %i.il = getelementptr inbounds nuw i8, ptr %i.dx, i64 96
  %i.im = load float, ptr %i.ik, align 4, !tbaa !137 ; 2 uses
  store float %i.im, ptr %i.il, align 4, !tbaa !165
  %i.in = icmp eq i8 %.2.us, 0
  %i.io = fcmp olt float %i.im, %i.ax
  %or.cond114.us.1 = select i1 %i.in, i1 %i.io, i1 false
  %4 = fcmp ogt float %i.ii, 0.000000e+00
  %or.cond115.us.1 = select i1 %or.cond114.us.1, i1 %4, i1 false
  br i1 %or.cond115.us.1, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ip = load i32, ptr %i.dv, align 8, !tbaa !166 ; 2 uses
  %i.iq = lshr i32 %i.ip, 6
  %i.ir = load ptr, ptr %i.aq, align 8, !tbaa !167 ; 3 uses
  %i.is = zext nneg i32 %i.iq to i64              ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.is ; 3 uses
  %i.iu = shl nuw nsw i64 %i.is, 3
  %i.iv = ptrtoint ptr %i.ir to i64, !nosanitize !10 ; 3 uses
  %i.iw = add i64 %i.iu, %i.iv, !nosanitize !10   ; 3 uses
  %i.ix = icmp ne ptr %i.ir, null, !nosanitize !10 ; 2 uses
  %i.iy = icmp eq i64 %i.iw, 0
  %i.iz = xor i1 %i.ix, %i.iy
  %i.ja = icmp uge i64 %i.iw, %i.iv, !nosanitize !10
  %i.jb = and i1 %i.ja, %i.iz, !nosanitize !10
  br i1 %i.jb, label %bb.av, label %.split1710.us, !prof !11, !nosanitize !10

bb.av:                                            ; preds = %bb.au
  %i.jc = ptrtoint ptr %i.it to i64, !nosanitize !10 ; 2 uses
  %i.jd = and i64 %i.jc, 7, !nosanitize !10
  %i.je = icmp eq i64 %i.jd, 0, !nosanitize !10
  %i.jf = and i1 %i.ix, %i.je
  br i1 %i.jf, label %b3SetBit.exit.us.1, label %.split1714.us, !prof !11, !nosanitize !10

b3SetBit.exit.us.1:                               ; preds = %bb.av
  %i.jg = and i32 %i.ip, 63
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = shl nuw i64 1, %i.jh
  %i.jj = load i64, ptr %i.it, align 8, !tbaa !168
  %i.jk = or i64 %i.jj, %i.ji
  store i64 %i.jk, ptr %i.it, align 8, !tbaa !168
  br label %bb.aw

bb.aw:                                            ; preds = %b3SetBit.exit.us.1, %bb.at
  %.4.us.1 = phi i8 [ 1, %b3SetBit.exit.us.1 ], [ %.4.us, %bb.at ] ; 2 uses
  %.2.us.1 = phi i8 [ 1, %b3SetBit.exit.us.1 ], [ %.2.us, %bb.at ] ; 3 uses
  %exitcond3276.1.not = icmp eq i32 %i.fv, 2
  br i1 %exitcond3276.1.not, label %._crit_edge.us, label %.lr.ph.split.us1582.2

.lr.ph.split.us1582.2:                            ; preds = %bb.aw
  %.not111.us1584.2 = icmp ugt ptr %i.eh, inttoptr (i64 -97 to ptr)
  br i1 %.not111.us1584.2, label %.split1305.us, label %bb.ax, !prof !89, !nosanitize !10

bb.ax:                                            ; preds = %.lr.ph.split.us1582.2
  %.not112.us1585.2 = icmp ugt ptr %i.dx, inttoptr (i64 -113 to ptr)
  br i1 %.not112.us1585.2, label %.split1309.us, label %bb.ay, !prof !89, !nosanitize !10

bb.ay:                                            ; preds = %bb.ax
  %i.jl = getelementptr inbounds nuw i8, ptr %i.eh, i64 128
  %i.jm = getelementptr inbounds nuw i8, ptr %i.dx, i64 144
  %i.jn = getelementptr inbounds nuw i8, ptr %i.eh, i64 132
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !134
  %i.jp = load <2 x float>, ptr %i.jl, align 4, !tbaa !107
  store <2 x float> %i.jp, ptr %i.jm, align 4, !tbaa !107
  %i.jq = getelementptr inbounds nuw i8, ptr %i.eh, i64 124
  %i.jr = getelementptr inbounds nuw i8, ptr %i.dx, i64 152
  %i.js = load float, ptr %i.jq, align 4, !tbaa !137 ; 2 uses
  store float %i.js, ptr %i.jr, align 4, !tbaa !165
  %i.jt = icmp eq i8 %.2.us.1, 0
  %i.ju = fcmp olt float %i.js, %i.ax
  %or.cond114.us.2 = select i1 %i.jt, i1 %i.ju, i1 false
  %5 = fcmp ogt float %i.jo, 0.000000e+00
  %or.cond115.us.2 = select i1 %or.cond114.us.2, i1 %5, i1 false
  br i1 %or.cond115.us.2, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.jv = load i32, ptr %i.dv, align 8, !tbaa !166 ; 2 uses
  %i.jw = lshr i32 %i.jv, 6
  %i.jx = load ptr, ptr %i.aq, align 8, !tbaa !167 ; 3 uses
  %i.jy = zext nneg i32 %i.jw to i64              ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.jy ; 3 uses
  %i.ka = shl nuw nsw i64 %i.jy, 3
  %i.kb = ptrtoint ptr %i.jx to i64, !nosanitize !10 ; 3 uses
  %i.kc = add i64 %i.ka, %i.kb, !nosanitize !10   ; 3 uses
  %i.kd = icmp ne ptr %i.jx, null, !nosanitize !10 ; 2 uses
  %i.ke = icmp eq i64 %i.kc, 0
  %i.kf = xor i1 %i.kd, %i.ke
  %i.kg = icmp uge i64 %i.kc, %i.kb, !nosanitize !10
  %i.kh = and i1 %i.kg, %i.kf, !nosanitize !10
  br i1 %i.kh, label %bb.ba, label %.split1710.us, !prof !11, !nosanitize !10

bb.ba:                                            ; preds = %bb.az
  %i.ki = ptrtoint ptr %i.jz to i64, !nosanitize !10 ; 2 uses
  %i.kj = and i64 %i.ki, 7, !nosanitize !10
  %i.kk = icmp eq i64 %i.kj, 0, !nosanitize !10
  %i.kl = and i1 %i.kd, %i.kk
  br i1 %i.kl, label %b3SetBit.exit.us.2, label %.split1714.us, !prof !11, !nosanitize !10

b3SetBit.exit.us.2:                               ; preds = %bb.ba
  %i.km = and i32 %i.jv, 63
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = shl nuw i64 1, %i.kn
  %i.kp = load i64, ptr %i.jz, align 8, !tbaa !168
  %i.kq = or i64 %i.kp, %i.ko
  store i64 %i.kq, ptr %i.jz, align 8, !tbaa !168
  br label %bb.bb

bb.bb:                                            ; preds = %b3SetBit.exit.us.2, %bb.ay
  %.4.us.2 = phi i8 [ 1, %b3SetBit.exit.us.2 ], [ %.4.us.1, %bb.ay ] ; 2 uses
  %.2.us.2 = phi i8 [ 1, %b3SetBit.exit.us.2 ], [ %.2.us.1, %bb.ay ] ; 3 uses
  %exitcond3276.2.not = icmp eq i32 %i.fv, 3
  br i1 %exitcond3276.2.not, label %._crit_edge.us, label %.lr.ph.split.us1582.3

.lr.ph.split.us1582.3:                            ; preds = %bb.bb
  %.not111.us1584.3 = icmp ugt ptr %i.eh, inttoptr (i64 -145 to ptr)
  br i1 %.not111.us1584.3, label %.split1305.us, label %bb.bc, !prof !89, !nosanitize !10

bb.bc:                                            ; preds = %.lr.ph.split.us1582.3
  %.not112.us1585.3 = icmp ugt ptr %i.dx, inttoptr (i64 -169 to ptr)
  br i1 %.not112.us1585.3, label %.split1309.us, label %bb.bd, !prof !89, !nosanitize !10

bb.bd:                                            ; preds = %bb.bc
  %i.kr = getelementptr inbounds nuw i8, ptr %i.eh, i64 176
  %i.ks = getelementptr inbounds nuw i8, ptr %i.dx, i64 200
  %i.kt = getelementptr inbounds nuw i8, ptr %i.eh, i64 180
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !134
  %i.kv = load <2 x float>, ptr %i.kr, align 4, !tbaa !107
  store <2 x float> %i.kv, ptr %i.ks, align 4, !tbaa !107
  %i.kw = getelementptr inbounds nuw i8, ptr %i.eh, i64 172
  %i.kx = getelementptr inbounds nuw i8, ptr %i.dx, i64 208
  %i.ky = load float, ptr %i.kw, align 4, !tbaa !137 ; 2 uses
  store float %i.ky, ptr %i.kx, align 4, !tbaa !165
  %i.kz = icmp eq i8 %.2.us.2, 0
  %i.la = fcmp olt float %i.ky, %i.ax
  %or.cond114.us.3 = select i1 %i.kz, i1 %i.la, i1 false
  %6 = fcmp ogt float %i.ku, 0.000000e+00
  %or.cond115.us.3 = select i1 %or.cond114.us.3, i1 %6, i1 false
  br i1 %or.cond115.us.3, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.lb = load i32, ptr %i.dv, align 8, !tbaa !166 ; 2 uses
  %i.lc = lshr i32 %i.lb, 6
  %i.ld = load ptr, ptr %i.aq, align 8, !tbaa !167 ; 3 uses
  %i.le = zext nneg i32 %i.lc to i64              ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.le ; 3 uses
  %i.lg = shl nuw nsw i64 %i.le, 3
  %i.lh = ptrtoint ptr %i.ld to i64, !nosanitize !10 ; 3 uses
  %i.li = add i64 %i.lg, %i.lh, !nosanitize !10   ; 3 uses
  %i.lj = icmp ne ptr %i.ld, null, !nosanitize !10 ; 2 uses
  %i.lk = icmp eq i64 %i.li, 0
  %i.ll = xor i1 %i.lj, %i.lk
  %i.lm = icmp uge i64 %i.li, %i.lh, !nosanitize !10
  %i.ln = and i1 %i.lm, %i.ll, !nosanitize !10
  br i1 %i.ln, label %bb.bf, label %.split1710.us, !prof !11, !nosanitize !10

bb.bf:                                            ; preds = %bb.be
  %i.lo = ptrtoint ptr %i.lf to i64, !nosanitize !10 ; 2 uses
  %i.lp = and i64 %i.lo, 7, !nosanitize !10
  %i.lq = icmp eq i64 %i.lp, 0, !nosanitize !10
  %i.lr = and i1 %i.lj, %i.lq
  br i1 %i.lr, label %b3SetBit.exit.us.3, label %.split1714.us, !prof !11, !nosanitize !10

b3SetBit.exit.us.3:                               ; preds = %bb.bf
  %i.ls = and i32 %i.lb, 63
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = shl nuw i64 1, %i.lt
  %i.lv = load i64, ptr %i.lf, align 8, !tbaa !168
  %i.lw = or i64 %i.lv, %i.lu
  store i64 %i.lw, ptr %i.lf, align 8, !tbaa !168
  br label %bb.bg

bb.bg:                                            ; preds = %b3SetBit.exit.us.3, %bb.bd
  %.4.us.3 = phi i8 [ 1, %b3SetBit.exit.us.3 ], [ %.4.us.2, %bb.bd ] ; 2 uses
  %.2.us.3 = phi i8 [ 1, %b3SetBit.exit.us.3 ], [ %.2.us.2, %bb.bd ] ; 3 uses
  %exitcond3276.3.not = icmp eq i32 %i.fv, 4
  br i1 %exitcond3276.3.not, label %._crit_edge.us, label %.lr.ph.split.us1582.4

.lr.ph.split.us1582.4:                            ; preds = %bb.bg
  %.not111.us1584.4 = icmp ugt ptr %i.eh, inttoptr (i64 -193 to ptr)
  br i1 %.not111.us1584.4, label %.split1305.us, label %bb.bh, !prof !89, !nosanitize !10

bb.bh:                                            ; preds = %.lr.ph.split.us1582.4
  %.not112.us1585.4 = icmp ugt ptr %i.dx, inttoptr (i64 -225 to ptr)
  br i1 %.not112.us1585.4, label %.split1309.us, label %bb.bi, !prof !89, !nosanitize !10

bb.bi:                                            ; preds = %bb.bh
  %i.lx = getelementptr inbounds nuw i8, ptr %i.eh, i64 224
  %i.ly = getelementptr inbounds nuw i8, ptr %i.dx, i64 256
  %i.lz = getelementptr inbounds nuw i8, ptr %i.eh, i64 228
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !134
  %i.mb = load <2 x float>, ptr %i.lx, align 4, !tbaa !107
  store <2 x float> %i.mb, ptr %i.ly, align 4, !tbaa !107
  %i.mc = getelementptr inbounds nuw i8, ptr %i.eh, i64 220
  %i.md = getelementptr inbounds nuw i8, ptr %i.dx, i64 264
  %i.me = load float, ptr %i.mc, align 4, !tbaa !137 ; 2 uses
  store float %i.me, ptr %i.md, align 4, !tbaa !165
  %i.mf = icmp eq i8 %.2.us.3, 0
  %i.mg = fcmp olt float %i.me, %i.ax
  %or.cond114.us.4 = select i1 %i.mf, i1 %i.mg, i1 false
  %7 = fcmp ogt float %i.ma, 0.000000e+00
  %or.cond115.us.4 = select i1 %or.cond114.us.4, i1 %7, i1 false
  br i1 %or.cond115.us.4, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.mh = load i32, ptr %i.dv, align 8, !tbaa !166 ; 2 uses
  %i.mi = lshr i32 %i.mh, 6
  %i.mj = load ptr, ptr %i.aq, align 8, !tbaa !167 ; 3 uses
  %i.mk = zext nneg i32 %i.mi to i64              ; 2 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.mk ; 3 uses
  %i.mm = shl nuw nsw i64 %i.mk, 3
  %i.mn = ptrtoint ptr %i.mj to i64, !nosanitize !10 ; 3 uses
  %i.mo = add i64 %i.mm, %i.mn, !nosanitize !10   ; 3 uses
  %i.mp = icmp ne ptr %i.mj, null, !nosanitize !10 ; 2 uses
  %i.mq = icmp eq i64 %i.mo, 0
  %i.mr = xor i1 %i.mp, %i.mq
  %i.ms = icmp uge i64 %i.mo, %i.mn, !nosanitize !10
  %i.mt = and i1 %i.ms, %i.mr, !nosanitize !10
  br i1 %i.mt, label %bb.bk, label %.split1710.us, !prof !11, !nosanitize !10

bb.bk:                                            ; preds = %bb.bj
  %i.mu = ptrtoint ptr %i.ml to i64, !nosanitize !10 ; 2 uses
  %i.mv = and i64 %i.mu, 7, !nosanitize !10
  %i.mw = icmp eq i64 %i.mv, 0, !nosanitize !10
  %i.mx = and i1 %i.mp, %i.mw
  br i1 %i.mx, label %b3SetBit.exit.us.4, label %.split1714.us, !prof !11, !nosanitize !10

b3SetBit.exit.us.4:                               ; preds = %bb.bk
  %i.my = and i32 %i.mh, 63
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = shl nuw i64 1, %i.mz
  %i.nb = load i64, ptr %i.ml, align 8, !tbaa !168
  %i.nc = or i64 %i.nb, %i.na
  store i64 %i.nc, ptr %i.ml, align 8, !tbaa !168
  br label %bb.bl

bb.bl:                                            ; preds = %b3SetBit.exit.us.4, %bb.bi
  %.4.us.4 = phi i8 [ 1, %b3SetBit.exit.us.4 ], [ %.4.us.3, %bb.bi ]
  %.2.us.4 = phi i8 [ 1, %b3SetBit.exit.us.4 ], [ %.2.us.3, %bb.bi ]
  %exitcond3276.4.not = icmp eq i32 %i.fv, 5
  br i1 %exitcond3276.4.not, label %._crit_edge.us, label %.split1302.us

._crit_edge.us:                                   ; preds = %bb.ag, %bb.ao, %bb.am, %bb.ak, %bb.ai, %.lr.ph.split.us.us.preheader, %bb.bl, %bb.bg, %bb.bb, %bb.aw, %bb.ar
  %.3.lcssa.us = phi i8 [ %.2861338.us, %bb.ag ], [ %.2861338.us, %.lr.ph.split.us.us.preheader ], [ %.2861338.us, %bb.ao ], [ %.2861338.us, %bb.am ], [ %.2861338.us, %bb.ak ], [ %.2861338.us, %bb.ai ], [ %.4.us, %bb.ar ], [ %.4.us.1, %bb.aw ], [ %.4.us.2, %bb.bb ], [ %.4.us.3, %bb.bg ], [ %.4.us.4, %bb.bl ] ; 2 uses
  %.1.lcssa.us = phi i8 [ %.0791339.us, %bb.ag ], [ %.0791339.us, %.lr.ph.split.us.us.preheader ], [ %.0791339.us, %bb.ao ], [ %.0791339.us, %bb.am ], [ %.0791339.us, %bb.ak ], [ %.0791339.us, %bb.ai ], [ %.2.us, %bb.ar ], [ %.2.us.1, %bb.aw ], [ %.2.us.2, %bb.bb ], [ %.2.us.3, %bb.bg ], [ %.2.us.4, %bb.bl ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count3280
  br i1 %exitcond.not, label %._crit_edge1343.us, label %.lr.ph1342.split.us, !llvm.loop !214

._crit_edge1343.us:                               ; preds = %._crit_edge.us, %bb.ac
  %.286.lcssa.us = phi i8 [ %.1851345.us1581, %bb.ac ], [ %.3.lcssa.us, %._crit_edge.us ] ; 2 uses
  %indvars.iv.next3282 = add nsw i64 %indvars.iv3281, 1 ; 2 uses
  %exitcond3283.not = icmp eq i64 %indvars.iv.next3282, %i.cs
  br i1 %exitcond3283.not, label %.loopexit.us, label %.lr.ph1348.us, !llvm.loop !215

.loopexit.us:                                     ; preds = %._crit_edge1343.us, %bb.y
  %.185.lcssa.us = phi i8 [ %.0841573.us, %bb.y ], [ %.286.lcssa.us, %._crit_edge1343.us ] ; 2 uses
  %.183.lcssa.us = phi i32 [ %.0821574.us, %bb.y ], [ %i.cp, %._crit_edge1343.us ] ; 2 uses
  %i.nd = icmp slt i32 %.183.lcssa.us, %i.bb
  %indvars.iv.next3290 = add nuw nsw i64 %indvars.iv3289, 1
  br i1 %i.nd, label %.lr.ph1576.split.us, label %._crit_edge1577, !llvm.loop !216

.lr.ph1576.split.split.us:                        ; preds = %.lr.ph1576
  %i.ne = sext i32 %.0804471 to i64               ; 2 uses
  %i.nf = shl nuw nsw i64 %i.ne, 4
  %i.ng = add i64 %i.nf, %i.bd, !nosanitize !10   ; 2 uses
  %.not1760 = icmp ult i64 %i.ng, %i.bd, !nosanitize !10
  br i1 %.not1760, label %.split1588.us, label %.lr.ph, !prof !169, !nosanitize !10

bb.bm:                                            ; preds = %.loopexit.us1740
  %.not1761 = icmp ult i64 %i.nr, %i.bd, !nosanitize !10
  br i1 %.not1761, label %.split1588.us, label %.lr.ph, !prof !217, !nosanitize !10

.lr.ph:                                           ; preds = %.lr.ph1576.split.split.us, %bb.bm
  %.pn = phi i64 [ %i.no, %bb.bm ], [ %i.ne, %.lr.ph1576.split.split.us ] ; 2 uses
  %i.nh = getelementptr inbounds [16 x i8], ptr %.076.fr, i64 %.pn ; 2 uses
  %i.ni = ptrtoint ptr %i.nh to i64, !nosanitize !10 ; 2 uses
  %i.nj = and i64 %i.ni, 7, !nosanitize !10
  %i.nk = icmp eq i64 %i.nj, 0, !nosanitize !10
  br i1 %i.nk, label %bb.bn, label %.split1591.us, !prof !11, !nosanitize !10

bb.bn:                                            ; preds = %.lr.ph
  %indvars = trunc nsw i64 %.pn to i32
  %i.nl = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %indvars, i32 1), !nosanitize !10 ; 2 uses
  %i.nm = extractvalue { i32, i1 } %i.nl, 1, !nosanitize !10
  br i1 %i.nm, label %.split1594.us, label %bb.bo, !prof !89, !nosanitize !10

bb.bo:                                            ; preds = %bb.bn
  %i.nn = extractvalue { i32, i1 } %i.nl, 0, !nosanitize !10 ; 2 uses
  %i.no = sext i32 %i.nn to i64                   ; 3 uses
  %i.np = getelementptr inbounds [16 x i8], ptr %.076.fr, i64 %i.no ; 2 uses
  %i.nq = shl nsw i64 %i.no, 4
  %i.nr = add i64 %i.nq, %i.bd, !nosanitize !10   ; 5 uses
  %i.ns = icmp ne i64 %i.nr, 0
  %i.nt = icmp uge i64 %i.nr, %i.bd, !nosanitize !10
  %i.nu = icmp slt i32 %i.nn, 0
  %i.nv = xor i1 %i.nu, %i.nt
  %i.nw = and i1 %i.ns, %i.nv, !nosanitize !10
  br i1 %i.nw, label %bb.bp, label %.split1597.us, !prof !11, !nosanitize !10

bb.bp:                                            ; preds = %bb.bo
  %i.nx = ptrtoint ptr %i.np to i64, !nosanitize !10 ; 2 uses
  %i.ny = and i64 %i.nx, 7, !nosanitize !10
  %i.nz = icmp eq i64 %i.ny, 0, !nosanitize !10
  br i1 %i.nz, label %.loopexit.us1740, label %.split1600.us, !prof !11, !nosanitize !10

.loopexit.us1740:                                 ; preds = %bb.bp
  %i.oa = load i32, ptr %i.np, align 8, !tbaa !96
  %i.ob = tail call noundef i32 @llvm.smin.i32(i32 %i.oa, i32 %i.bb)
  %i.oc = icmp sgt i32 %i.ob, %.sroa.0.0.extract.trunc
  br i1 %i.oc, label %.lr.ph1348, label %bb.bm

.split1588.us:                                    ; preds = %.lr.ph1576.split.us, %bb.bm, %.lr.ph1576.split.split.us
  %.us-phi1589 = phi i64 [ %i.ng, %.lr.ph1576.split.split.us ], [ %i.nr, %bb.bm ], [ %i.cb, %.lr.ph1576.split.us ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @115, i64 %i.bd, i64 %.us-phi1589) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1591.us:                                    ; preds = %bb.u, %.lr.ph
  %.us-phi1592 = phi i64 [ %i.ni, %.lr.ph ], [ %i.cc, %bb.u ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @116, i64 %.us-phi1592) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1594.us:                                    ; preds = %bb.v, %bb.bn
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @117, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1597.us:                                    ; preds = %bb.w, %bb.bo
  %.us-phi1598 = phi i64 [ %i.nr, %bb.bo ], [ %i.ck, %bb.w ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @118, i64 %i.bd, i64 %.us-phi1598) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1600.us:                                    ; preds = %bb.x, %bb.bp
  %.us-phi1601 = phi i64 [ %i.nx, %bb.bp ], [ %i.cl, %bb.x ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @119, i64 %.us-phi1601) #10, !nosanitize !10
  unreachable, !nosanitize !10

.lr.ph1348:                                       ; preds = %.loopexit.us1740
  %sext = shl i64 %0, 32                          ; 2 uses
  %i.od = ashr exact i64 %sext, 32
  %i.oe = mul nsw i64 %i.od, 168                  ; 2 uses
  %i.of = icmp eq i64 %sext, 0
  %i.og = icmp uge i64 %i.oe, %i.by, !nosanitize !10
  %i.oh = icmp slt i32 %.sroa.0.0.extract.trunc, 0
  %i.oi = xor i1 %i.oh, %i.og
  %i.oj = and i1 %i.of, %i.oi, !nosanitize !10
  br i1 %i.oj, label %bb.bq, label %.split1352.us, !prof !11, !nosanitize !10

bb.bq:                                            ; preds = %.lr.ph1348
  %i.ok = load i32, ptr %i.nh, align 8, !tbaa !96 ; 2 uses
  %i.ol = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %.sroa.0.0.extract.trunc, i32 %i.ok), !nosanitize !10
  %i.om = extractvalue { i32, i1 } %i.ol, 1, !nosanitize !10
  br i1 %i.om, label %.split1356.us, label %.split1360, !prof !89, !nosanitize !10

.split1352.us:                                    ; preds = %.lr.ph1348.us, %.lr.ph1348
  %.us-phi1354 = phi i64 [ %i.oe, %.lr.ph1348 ], [ %i.cv, %.lr.ph1348.us ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @120, i64 %i.by, i64 %.us-phi1354) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1356.us:                                    ; preds = %bb.z, %bb.bq
  %.us-phi1357 = phi i32 [ %i.ok, %bb.bq ], [ %i.cf, %bb.z ]
  %.us-phi1358 = phi i64 [ %0, %bb.bq ], [ %indvars.iv3281, %bb.z ]
  %i.on = and i64 %.us-phi1358, 4294967295
  %i.oo = zext i32 %.us-phi1357 to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @121, i64 %i.on, i64 %i.oo) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1360:                                       ; preds = %bb.aa, %bb.bq
  %.us-phi1361 = phi i64 [ 0, %bb.bq ], [ %i.de, %bb.aa ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @122, i64 %.us-phi1361) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1619.us:                                    ; preds = %bb.ab
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @123, i64 %i.dm) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1628.us:                                    ; preds = %.lr.ph1342.split.us
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @124, i64 %i.dz, i64 %i.ea) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1632.us:                                    ; preds = %bb.ad
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @125, i64 %i.ej, i64 %i.ek) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1636.us:                                    ; preds = %bb.ae
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @126, i64 %i.eq) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1642.us:                                    ; preds = %bb.af
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @127, i64 %i.eu) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1302.us:                                    ; preds = %bb.bl, %bb.ao
  tail call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @128, i64 5) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1305.us:                                    ; preds = %.lr.ph.split.us.us.4, %.lr.ph.split.us.us.3, %.lr.ph.split.us.us.2, %.lr.ph.split.us.us.1, %.lr.ph.split.us1582.4, %.lr.ph.split.us1582.3, %.lr.ph.split.us1582.2, %.lr.ph.split.us1582.1
  %.sink = phi i64 [ 144, %.lr.ph.split.us.us.3 ], [ 96, %.lr.ph.split.us.us.2 ], [ 48, %.lr.ph.split.us.us.1 ], [ 192, %.lr.ph.split.us1582.4 ], [ 144, %.lr.ph.split.us1582.3 ], [ 96, %.lr.ph.split.us1582.2 ], [ 48, %.lr.ph.split.us1582.1 ], [ 192, %.lr.ph.split.us.us.4 ]
  %i.op = add i64 %.sink, %i.eq, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @129, i64 %i.eq, i64 %i.op) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1309.us:                                    ; preds = %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.bh, %bb.bc, %bb.ax, %bb.as
  %.sink4245 = phi i64 [ 168, %bb.al ], [ 112, %bb.aj ], [ 56, %bb.ah ], [ 224, %bb.bh ], [ 168, %bb.bc ], [ 112, %bb.ax ], [ 56, %bb.as ], [ 224, %bb.an ]
  %i.oq = add i64 %.sink4245, %i.eu, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @130, i64 %i.eu, i64 %i.oq) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1710.us:                                    ; preds = %bb.bj, %bb.be, %bb.az, %bb.au, %bb.ap
  %.lcssa1807.ph.a = phi i64 [ %i.mn, %bb.bj ], [ %i.lh, %bb.be ], [ %i.kb, %bb.az ], [ %i.iv, %bb.au ], [ %i.hp, %bb.ap ]
  %.lcssa1805.ph = phi i64 [ %i.mo, %bb.bj ], [ %i.li, %bb.be ], [ %i.kc, %bb.az ], [ %i.iw, %bb.au ], [ %i.hq, %bb.ap ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @267, i64 %.lcssa1807.ph.a, i64 %.lcssa1805.ph) #10, !nosanitize !10
  unreachable, !nosanitize !10

.split1714.us:                                    ; preds = %bb.bk, %bb.bf, %bb.ba, %bb.av, %bb.aq
  %.lcssa1809.ph = phi i64 [ %i.mu, %bb.bk ], [ %i.lo, %bb.bf ], [ %i.ki, %bb.ba ], [ %i.jc, %bb.av ], [ %i.hw, %bb.aq ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @268, i64 %.lcssa1809.ph) #10, !nosanitize !10
  unreachable, !nosanitize !10

._crit_edge1577:                                  ; preds = %.loopexit.us, %.preheader
  %.084.lcssa = phi i8 [ %i.as, %.preheader ], [ %.185.lcssa.us, %.loopexit.us ]
  store i8 %.084.lcssa, ptr %i.ar, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @b3GetWideContactConstraintByteCount() local_unnamed_addr #6 !func_sanitize !218 {
bb.a:
  ret i32 1696
}

; Function Attrs: nounwind uwtable
define hidden void @b3PrepareContacts_Convex(i64 %0, ptr noundef %1) local_unnamed_addr #0 !func_sanitize !9 {
bb.a:
  %.sroa.014.i = alloca <2 x float>, align 8      ; 5 uses
  %.sroa.0.i = alloca <2 x float>, align 8        ; 5 uses
  %.sroa.01148.0.extract.trunc = trunc i64 %0 to i32 ; 4 uses
  %.sroa.21149.0.extract.shift = lshr i64 %0, 32  ; 2 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
end_hunk_0
