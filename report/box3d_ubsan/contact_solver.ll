Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/contact_solver?download=true
inline.NumInlined: 529
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@b3StoreImpulses_Mesh:bb.a
  %i.h = and i64 %0, 71776119061217280
  %i.i = icmp eq i64 %i.h, 1970324836974592
  br i1 %i.i, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.pre3305 = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 2 uses
  %.pre3307 = and i64 %.pre3305, 7, !nosanitize !10
  %i.l = icmp eq i64 %.pre3307, 0
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ne ptr %i.g, null, !nosanitize !10
  %i.n = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 3 uses
  %i.o = and i64 %i.n, 7, !nosanitize !10
  %i.p = icmp eq i64 %i.o, 0, !nosanitize !10
  %i.q = and i1 %i.m, %i.p, !nosanitize !10
  br i1 %i.q, label %bb.f, label %bb.e, !prof !11, !nosanitize !10

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @104, i64 %i.n) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 1144 ; 2 uses
  %.not = icmp ugt ptr %i.r, inttoptr (i64 -2577 to ptr)
  br i1 %.not, label %bb.g, label %bb.h, !prof !89, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  %i.s = ptrtoint ptr %i.r to i64, !nosanitize !10 ; 2 uses
  %i.t = add i64 %i.s, 2576, !nosanitize !10
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @105, i64 %i.s, i64 %i.t) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 3816
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.pre-phi3308 = phi i1 [ %i.l, %._crit_edge ], [ true, %bb.h ]
  %.pre-phi3306 = phi i64 [ %.pre3305, %._crit_edge ], [ %i.n, %bb.h ]
  %.077.in = phi ptr [ %i.j, %._crit_edge ], [ %i.v, %bb.h ]
  %.076.in = phi ptr [ %i.k, %._crit_edge ], [ %i.u, %bb.h ]
  %.076 = load ptr, ptr %.076.in, align 8, !tbaa !90
  %.076.fr = freeze ptr %.076                     ; 7 uses
  %.077 = load ptr, ptr %.077.in, align 8, !tbaa !91
  %.077.fr = freeze ptr %.077                     ; 3 uses
  %i.w = icmp ne ptr %i.g, null, !nosanitize !10
  %i.x = and i1 %i.w, %.pre-phi3308, !nosanitize !10
  br i1 %i.x, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @106, i64 %.pre-phi3306) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 4144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !156  ; 3 uses
  %i.aa = sext i32 %2 to i64                      ; 2 uses
  %i.ab = getelementptr inbounds [3848 x i8], ptr %i.z, i64 %i.aa ; 3 uses
  %i.ac = mul nsw i64 %i.aa, 3848
  %i.ad = ptrtoint ptr %i.z to i64, !nosanitize !10 ; 3 uses
  %i.ae = add i64 %i.ac, %i.ad, !nosanitize !10   ; 3 uses
  %i.af = icmp ne ptr %i.z, null, !nosanitize !10 ; 2 uses
  %i.ag = icmp eq i64 %i.ae, 0
  %i.ah = xor i1 %i.af, %i.ag
  %i.ai = icmp uge i64 %i.ae, %i.ad, !nosanitize !10
  %i.aj = icmp slt i32 %2, 0
  %i.ak = xor i1 %i.aj, %i.ai
  %i.al = and i1 %i.ah, %i.ak, !nosanitize !10
  br i1 %i.al, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @107, i64 %i.ad, i64 %i.ae) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k
  %i.am = ptrtoint ptr %i.ab to i64, !nosanitize !10 ; 2 uses
  %i.an = and i64 %i.am, 7, !nosanitize !10
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
  %i.bd = ptrtoint ptr %.076.fr to i64            ; 13 uses
  %.not1757 = icmp eq ptr %.076.fr, null
  br i1 %.not1757, label %.split1291.us, label %.preheader116.split.preheader, !prof !89

bb.r:                                             ; preds = %bb.q
  %i.be = and i64 %0, 4294967295
  %i.bf = and i64 %.sroa.2.0.extract.shift, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @111, i64 %i.be, i64 %i.bf) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader116.split:                              ; preds = %bb.t
  %indvars.iv.next3285 = add nuw nsw i64 %indvars.iv32844471, 1
  %i.bg = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bj, i32 1), !nosanitize !10 ; 2 uses
  %i.bh = extractvalue { i32, i1 } %i.bg, 0, !nosanitize !10
  %i.bi = extractvalue { i32, i1 } %i.bg, 1, !nosanitize !10
  br i1 %i.bi, label %.split.us, label %.preheader116.split.preheader, !prof !92, !llvm.loop !213, !nosanitize !10

.split.us:                                        ; preds = %.preheader116.split
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @112, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader116.split.preheader:                    ; preds = %.preheader116, %.preheader116.split
  %i.bj = phi i32 [ %i.bh, %.preheader116.split ], [ 1, %.preheader116 ] ; 4 uses
  %.0804472 = phi i32 [ %i.bj, %.preheader116.split ], [ 0, %.preheader116 ]
  %indvars.iv32844471 = phi i64 [ %indvars.iv.next3285, %.preheader116.split ], [ 0, %.preheader116 ] ; 2 uses
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
  %.not1758 = icmp eq ptr %.077.fr, null
  br i1 %.not1758, label %.lr.ph1576.split.split.us, label %.lr.ph1576.split.us, !prof !89

.lr.ph1576.split.us:                              ; preds = %.lr.ph1576, %.loopexit.us
  %indvars.iv3289 = phi i64 [ %indvars.iv.next3290, %.loopexit.us ], [ %indvars.iv32844471, %.lr.ph1576 ] ; 5 uses
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
  %3 = shl i64 %indvars.iv3289, 32
  %sext4247 = add i64 %3, 4294967296              ; 2 uses
  %4 = ashr exact i64 %sext4247, 28
  %5 = getelementptr inbounds i8, ptr %.076.fr, i64 %4 ; 2 uses
  %6 = ashr exact i64 %sext4247, 28
  %i.cg = add i64 %6, %i.bd, !nosanitize !10      ; 2 uses
  %.not4248 = icmp ult i64 %i.cg, %i.bd, !nosanitize !10
  br i1 %.not4248, label %.split1597.us, label %bb.x, !prof !89, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  %i.ch = ptrtoint ptr %5 to i64, !nosanitize !10 ; 2 uses
  %i.ci = and i64 %i.ch, 7, !nosanitize !10
  %i.cj = icmp eq i64 %i.ci, 0, !nosanitize !10
  br i1 %i.cj, label %bb.y, label %.split1600.us, !prof !11, !nosanitize !10

bb.y:                                             ; preds = %bb.x
  %i.ck = load i32, ptr %5, align 8, !tbaa !96
  %i.cl = tail call noundef i32 @llvm.smin.i32(i32 %i.ck, i32 %i.bb) ; 3 uses
  %i.cm = icmp slt i32 %.0821574.us, %i.cl
  br i1 %i.cm, label %.lr.ph1348.us.preheader, label %.loopexit.us

.lr.ph1348.us.preheader:                          ; preds = %bb.y
  %i.cn = sext i32 %.0821574.us to i64
  %i.co = sext i32 %i.cl to i64
  br label %.lr.ph1348.us

.lr.ph1348.us:                                    ; preds = %.lr.ph1348.us.preheader, %._crit_edge1343.us
  %indvars.iv3281 = phi i64 [ %i.cn, %.lr.ph1348.us.preheader ], [ %indvars.iv.next3282, %._crit_edge1343.us ] ; 6 uses
  %.1851345.us1581 = phi i8 [ %.0841573.us, %.lr.ph1348.us.preheader ], [ %.286.lcssa.us, %._crit_edge1343.us ] ; 2 uses
  %i.cp = getelementptr inbounds [168 x i8], ptr %.077.fr, i64 %indvars.iv3281 ; 4 uses
  %i.cq = mul nsw i64 %indvars.iv3281, 168
  %i.cr = add i64 %i.cq, %i.by, !nosanitize !10   ; 3 uses
  %i.cs = icmp ne i64 %i.cr, 0
  %i.ct = icmp uge i64 %i.cr, %i.by, !nosanitize !10
  %i.cu = icmp slt i64 %indvars.iv3281, 0
  %i.cv = xor i1 %i.cu, %i.ct
  %i.cw = and i1 %i.cs, %i.cv, !nosanitize !10
  br i1 %i.cw, label %bb.z, label %.split1352.us, !prof !11, !nosanitize !10

bb.z:                                             ; preds = %.lr.ph1348.us
  %i.cx = trunc nsw i64 %indvars.iv3281 to i32
  %i.cy = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.cx, i32 %i.cf), !nosanitize !10
  %i.cz = extractvalue { i32, i1 } %i.cy, 1, !nosanitize !10
  br i1 %i.cz, label %.split1356.us, label %bb.aa, !prof !89, !nosanitize !10

bb.aa:                                            ; preds = %bb.z
  %i.da = ptrtoint ptr %i.cp to i64, !nosanitize !10 ; 2 uses
  %i.db = and i64 %i.da, 7, !nosanitize !10
  %i.dc = icmp eq i64 %i.db, 0, !nosanitize !10
  br i1 %i.dc, label %bb.ab, label %.split1360, !prof !11, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !109 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 164
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !110 ; 2 uses
  %i.dh = icmp ne ptr %i.de, null, !nosanitize !10
  %i.di = ptrtoint ptr %i.de to i64, !nosanitize !10 ; 2 uses
  %i.dj = and i64 %i.di, 7, !nosanitize !10
  %i.dk = icmp eq i64 %i.dj, 0, !nosanitize !10
  %i.dl = and i1 %i.dh, %i.dk, !nosanitize !10
  br i1 %i.dl, label %bb.ac, label %.split1619.us, !prof !11, !nosanitize !10

bb.ac:                                            ; preds = %bb.ab
  %i.dm = icmp sgt i32 %i.dg, 0
  br i1 %i.dm, label %.lr.ph1342.us, label %._crit_edge1343.us

.lr.ph1342.us:                                    ; preds = %bb.ac
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 68
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !115
  %.fr1763 = freeze i32 %i.do
  %i.dp = and i32 %.fr1763, 1048576
  %.not110.us.not = icmp eq i32 %i.dp, 0
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 56 ; 5 uses
  %wide.trip.count3280 = zext nneg i32 %i.dg to i64
  br label %.lr.ph1342.split.us

.lr.ph1342.split.us:                              ; preds = %.lr.ph1342.us, %._crit_edge.us
  %indvars.iv = phi i64 [ 0, %.lr.ph1342.us ], [ %indvars.iv.next, %._crit_edge.us ] ; 5 uses
  %.0791339.us = phi i8 [ 0, %.lr.ph1342.us ], [ %.1.lcssa.us, %._crit_edge.us ] ; 8 uses
  %.2861338.us = phi i8 [ %.1851345.us1581, %.lr.ph1342.us ], [ %.3.lcssa.us, %._crit_edge.us ] ; 7 uses
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !119 ; 3 uses
  %i.dt = getelementptr inbounds nuw [268 x i8], ptr %i.ds, i64 %indvars.iv ; 33 uses
  %i.du = mul nuw nsw i64 %indvars.iv, 268
  %i.dv = ptrtoint ptr %i.ds to i64, !nosanitize !10 ; 3 uses
  %i.dw = add i64 %i.du, %i.dv, !nosanitize !10   ; 3 uses
  %i.dx = icmp ne ptr %i.ds, null, !nosanitize !10 ; 2 uses
  %i.dy = icmp eq i64 %i.dw, 0
  %i.dz = xor i1 %i.dx, %i.dy
  %i.ea = icmp uge i64 %i.dw, %i.dv, !nosanitize !10
  %i.eb = and i1 %i.dz, %i.ea, !nosanitize !10
  br i1 %i.eb, label %bb.ad, label %.split1628.us, !prof !11, !nosanitize !10

bb.ad:                                            ; preds = %.lr.ph1342.split.us
  %i.ec = load ptr, ptr %i.cp, align 8, !tbaa !118 ; 3 uses
  %i.ed = getelementptr inbounds nuw [308 x i8], ptr %i.ec, i64 %indvars.iv ; 41 uses
  %i.ee = mul nuw nsw i64 %indvars.iv, 308
  %i.ef = ptrtoint ptr %i.ec to i64, !nosanitize !10 ; 3 uses
  %i.eg = add i64 %i.ee, %i.ef, !nosanitize !10   ; 3 uses
  %i.eh = icmp ne ptr %i.ec, null, !nosanitize !10 ; 2 uses
  %i.ei = icmp eq i64 %i.eg, 0
  %i.ej = xor i1 %i.eh, %i.ei
  %i.ek = icmp uge i64 %i.eg, %i.ef, !nosanitize !10
  %i.el = and i1 %i.ej, %i.ek, !nosanitize !10
  br i1 %i.el, label %bb.ae, label %.split1632.us, !prof !11, !nosanitize !10

bb.ae:                                            ; preds = %bb.ad
  %i.em = ptrtoint ptr %i.ed to i64, !nosanitize !10 ; 4 uses
  %i.en = and i64 %i.em, 3, !nosanitize !10
  %i.eo = icmp eq i64 %i.en, 0, !nosanitize !10
  %i.ep = and i1 %i.eh, %i.eo
  br i1 %i.ep, label %bb.af, label %.split1636.us, !prof !11, !nosanitize !10

bb.af:                                            ; preds = %bb.ae
  %i.eq = ptrtoint ptr %i.dt to i64, !nosanitize !10 ; 4 uses
  %i.er = and i64 %i.eq, 3, !nosanitize !10
  %i.es = icmp eq i64 %i.er, 0, !nosanitize !10
  %i.et = and i1 %i.dx, %i.es
  br i1 %i.et, label %bb.ag, label %.split1642.us, !prof !11, !nosanitize !10

bb.ag:                                            ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ed, i64 260
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !143
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dt, i64 236
  store float %i.ev, ptr %i.ew, align 4, !tbaa !142
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dt, i64 240
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ed, i64 280
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ed, i64 284
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ed, i64 208
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ed, i64 220
  %.sroa.014.0.copyload.us = load <2 x float>, ptr %i.fa, align 4
  %.sroa.215.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ed, i64 216
  %.sroa.215.0.copyload.us = load float, ptr %.sroa.215.0..sroa_idx.us, align 4
  %.sroa.012.0.copyload.us = load <2 x float>, ptr %i.fb, align 4
  %.sroa.213.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ed, i64 228
  %.sroa.213.0.copyload.us = load float, ptr %.sroa.213.0..sroa_idx.us, align 4
  %i.fc = load float, ptr %i.ey, align 4, !tbaa !139 ; 2 uses
  %i.fd = load float, ptr %i.ez, align 4, !tbaa !140 ; 2 uses
  %i.fe = fmul float %i.fc, %.sroa.215.0.copyload.us
  %i.ff = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = fmul <2 x float> %i.fg, %.sroa.014.0.copyload.us
  %i.fi = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = fmul <2 x float> %i.fj, %.sroa.012.0.copyload.us
  %i.fl = fadd <2 x float> %i.fh, %i.fk
  %i.fm = fmul float %i.fd, %.sroa.213.0.copyload.us
  %i.fn = fadd float %i.fe, %i.fm
  store <2 x float> %i.fl, ptr %i.ex, align 4, !tbaa !107
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.dt, i64 248
  store float %i.fn, ptr %.sroa.4.0..sroa_idx.us, align 4, !tbaa !107
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dt, i64 252
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ed, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fo, ptr noundef nonnull align 4 dereferenceable(12) %i.fp, i64 12, i1 false), !tbaa.struct !128
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ed, i64 192
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !127 ; 11 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.lr.ph.us, label %._crit_edge.us

.lr.ph.us:                                        ; preds = %bb.ag
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.fv = load float, ptr %i.ft, align 4, !tbaa !133
  store float %i.fv, ptr %i.fu, align 4, !tbaa !131
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ed, i64 36 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ed, i64 28 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dt, i64 40 ; 2 uses
  br i1 %.not110.us.not, label %.lr.ph.split.us.us.preheader, label %.lr.ph.split.us1582.preheader

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dt, i64 36
  %i.ga = load float, ptr %i.fw, align 4, !tbaa !134
  store float %i.ga, ptr %i.fz, align 4, !tbaa !164
  %i.gb = load float, ptr %i.fx, align 4, !tbaa !137
  store float %i.gb, ptr %i.fy, align 4, !tbaa !165
  %exitcond3279.not = icmp eq i32 %i.fr, 1
  br i1 %exitcond3279.not, label %._crit_edge.us, label %.lr.ph.split.us.us.1

.lr.ph.split.us.us.1:                             ; preds = %.lr.ph.split.us.us.preheader
  %.not111.us.us.1 = icmp ugt ptr %i.ed, inttoptr (i64 -49 to ptr)
  br i1 %.not111.us.us.1, label %.split1305.us, label %bb.ah, !prof !89, !nosanitize !10

bb.ah:                                            ; preds = %.lr.ph.split.us.us.1
  %.not112.us.us.1 = icmp ugt ptr %i.dt, inttoptr (i64 -57 to ptr)
  br i1 %.not112.us.us.1, label %.split1309.us, label %bb.ai, !prof !89, !nosanitize !10

bb.ai:                                            ; preds = %bb.ah
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ed, i64 80
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.ge = load <2 x float>, ptr %i.gc, align 4, !tbaa !107
  store <2 x float> %i.ge, ptr %i.gd, align 4, !tbaa !107
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ed, i64 76
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  %i.gh = load float, ptr %i.gf, align 4, !tbaa !137
  store float %i.gh, ptr %i.gg, align 4, !tbaa !165
  %exitcond3279.1.not = icmp eq i32 %i.fr, 2
  br i1 %exitcond3279.1.not, label %._crit_edge.us, label %.lr.ph.split.us.us.2

.lr.ph.split.us.us.2:                             ; preds = %bb.ai
  %.not111.us.us.2 = icmp ugt ptr %i.ed, inttoptr (i64 -97 to ptr)
  br i1 %.not111.us.us.2, label %.split1305.us, label %bb.aj, !prof !89, !nosanitize !10

bb.aj:                                            ; preds = %.lr.ph.split.us.us.2
  %.not112.us.us.2 = icmp ugt ptr %i.dt, inttoptr (i64 -113 to ptr)
  br i1 %.not112.us.us.2, label %.split1309.us, label %bb.ak, !prof !89, !nosanitize !10

bb.ak:                                            ; preds = %bb.aj
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ed, i64 128
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dt, i64 144
  %i.gk = load <2 x float>, ptr %i.gi, align 4, !tbaa !107
  store <2 x float> %i.gk, ptr %i.gj, align 4, !tbaa !107
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ed, i64 124
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dt, i64 152
  %i.gn = load float, ptr %i.gl, align 4, !tbaa !137
  store float %i.gn, ptr %i.gm, align 4, !tbaa !165
  %exitcond3279.2.not = icmp eq i32 %i.fr, 3
end_hunk_0
begin_hunk_1_@b3ApplyRestitution_Convex:bb.a
}

; Function Attrs: nounwind uwtable
define hidden void @b3StoreImpulses_Convex(i64 %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 !func_sanitize !155 {
bb.a:
  %.sroa.0165.0.extract.trunc = trunc i64 %0 to i32 ; 4 uses
  %.sroa.2166.0.extract.shift = lshr i64 %0, 32   ; 2 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @221, i64 %i.b) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !170
  %.fr2439 = freeze ptr %i.i                      ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !171
  %.fr = freeze ptr %i.k                          ; 3 uses
  %i.l = icmp ne ptr %i.g, null, !nosanitize !10
  %i.m = ptrtoint ptr %i.g to i64, !nosanitize !10 ; 2 uses
  %i.n = and i64 %i.m, 7, !nosanitize !10
  %i.o = icmp eq i64 %i.n, 0, !nosanitize !10
  %i.p = and i1 %i.l, %i.o, !nosanitize !10
  br i1 %i.p, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @222, i64 %i.m) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 4144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !156  ; 3 uses
  %i.s = sext i32 %2 to i64                       ; 2 uses
  %i.t = getelementptr inbounds [3848 x i8], ptr %i.r, i64 %i.s ; 3 uses
  %i.u = mul nsw i64 %i.s, 3848
  %i.v = ptrtoint ptr %i.r to i64, !nosanitize !10 ; 3 uses
  %i.w = add i64 %i.u, %i.v, !nosanitize !10      ; 3 uses
  %i.x = icmp ne ptr %i.r, null, !nosanitize !10  ; 2 uses
  %i.y = icmp eq i64 %i.w, 0
  %i.z = xor i1 %i.x, %i.y
  %i.aa = icmp uge i64 %i.w, %i.v, !nosanitize !10
  %i.ab = icmp slt i32 %2, 0
  %i.ac = xor i1 %i.ab, %i.aa
  %i.ad = and i1 %i.z, %i.ac, !nosanitize !10
  br i1 %i.ad, label %bb.g, label %bb.f, !prof !11, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @223, i64 %i.v, i64 %i.w) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.g:                                             ; preds = %bb.e
  %i.ae = ptrtoint ptr %i.t to i64, !nosanitize !10 ; 2 uses
  %i.af = and i64 %i.ae, 7, !nosanitize !10
  %i.ag = icmp eq i64 %i.af, 0, !nosanitize !10
  %i.ah = and i1 %i.x, %i.ag
  br i1 %i.ah, label %bb.i, label %bb.h, !prof !11, !nosanitize !10

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @224, i64 %i.ae) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 88 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !162 ; 4 uses
  %i.al = icmp ult i8 %i.ak, 2
  br i1 %i.al, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  %i.am = zext i8 %i.ak to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @225, i64 %i.am) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 4440
  %i.ao = load float, ptr %i.an, align 8, !tbaa !163
  %i.ap = fneg float %i.ao                        ; 5 uses
  %i.aq = trunc nuw i64 %.sroa.2166.0.extract.shift to i32
  %i.ar = and i32 %i.aq, 65535
  %i.as = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0165.0.extract.trunc, i32 %i.ar), !nosanitize !10 ; 2 uses
  %i.at = extractvalue { i32, i1 } %i.as, 0, !nosanitize !10 ; 3 uses
  %i.au = extractvalue { i32, i1 } %i.as, 1, !nosanitize !10
  br i1 %i.au, label %bb.l, label %.preheader180, !prof !89, !nosanitize !10

.preheader180:                                    ; preds = %bb.k
  %i.av = ptrtoint ptr %.fr2439 to i64            ; 9 uses
  %.not2440 = icmp eq ptr %.fr2439, null
  br i1 %.not2440, label %.split2229.us, label %.preheader180.split.preheader, !prof !89

bb.l:                                             ; preds = %bb.k
  %i.aw = and i64 %0, 4294967295
  %i.ax = and i64 %.sroa.2166.0.extract.shift, 65535
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @226, i64 %i.aw, i64 %i.ax) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader180.split:                              ; preds = %bb.n
  %indvars.iv.next4447 = add nuw nsw i64 %indvars.iv44466814, 1
  %i.ay = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bb, i32 1), !nosanitize !10 ; 2 uses
  %i.az = extractvalue { i32, i1 } %i.ay, 0, !nosanitize !10
  %i.ba = extractvalue { i32, i1 } %i.ay, 1, !nosanitize !10
  br i1 %i.ba, label %.split.us, label %.preheader180.split.preheader, !prof !92, !llvm.loop !235, !nosanitize !10

.split.us:                                        ; preds = %.preheader180.split
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @227, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader180.split.preheader:                    ; preds = %.preheader180, %.preheader180.split
  %i.bb = phi i32 [ %i.az, %.preheader180.split ], [ 1, %.preheader180 ] ; 3 uses
  %indvars.iv44466814 = phi i64 [ %indvars.iv.next4447, %.preheader180.split ], [ 0, %.preheader180 ] ; 2 uses
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [16 x i8], ptr %.fr2439, i64 %i.bc ; 2 uses
  %i.be = shl nsw i64 %i.bc, 4
  %i.bf = add i64 %i.be, %i.av, !nosanitize !10   ; 3 uses
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = icmp uge i64 %i.bf, %i.av, !nosanitize !10
  %i.bi = icmp slt i32 %i.bb, 0
  %i.bj = xor i1 %i.bi, %i.bh
  %i.bk = and i1 %i.bg, %i.bj, !nosanitize !10
  br i1 %i.bk, label %bb.m, label %.split2229.us, !prof !11, !nosanitize !10

.split2229.us:                                    ; preds = %.preheader180.split.preheader, %.preheader180
  %.us-phi2231 = phi i64 [ 16, %.preheader180 ], [ %i.bf, %.preheader180.split.preheader ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @228, i64 %i.av, i64 %.us-phi2231) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %.preheader180.split.preheader
  %i.bl = ptrtoint ptr %i.bd to i64, !nosanitize !10 ; 2 uses
  %i.bm = and i64 %i.bl, 7, !nosanitize !10
  %i.bn = icmp eq i64 %i.bm, 0, !nosanitize !10
  br i1 %i.bn, label %bb.n, label %.split2233, !prof !11, !nosanitize !10

.split2233:                                       ; preds = %bb.m
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @229, i64 %i.bl) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  %i.bo = load i32, ptr %i.bd, align 8, !tbaa !173
  %.not156 = icmp sgt i32 %i.bo, %.sroa.0165.0.extract.trunc
  br i1 %.not156, label %.preheader179, label %.preheader180.split, !llvm.loop !235

.preheader179:                                    ; preds = %bb.n
  %i.bp = icmp sgt i32 %i.at, %.sroa.0165.0.extract.trunc
  br i1 %i.bp, label %.lr.ph2436, label %._crit_edge2437

.lr.ph2436:                                       ; preds = %.preheader179
  %i.bq = ptrtoint ptr %.fr to i64                ; 3 uses
  %.not2441 = icmp eq ptr %.fr, null
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 4000
  br label %bb.o

.loopexit178:                                     ; preds = %bb.bt, %bb.y
  %.1131.lcssa = phi i8 [ %.01302433, %bb.y ], [ %.2132.lcssa, %bb.bt ] ; 2 uses
  %.1129.lcssa = phi i32 [ %.01282434, %bb.y ], [ %i.cf, %bb.bt ] ; 2 uses
  %i.bs = icmp slt i32 %.1129.lcssa, %i.at
  %indvars.iv.next4452 = add nuw nsw i64 %indvars.iv4451, 1
  br i1 %i.bs, label %bb.o, label %._crit_edge2437, !llvm.loop !236

bb.o:                                             ; preds = %.lr.ph2436, %.loopexit178
  %indvars.iv4451 = phi i64 [ %indvars.iv44466814, %.lr.ph2436 ], [ %indvars.iv.next4452, %.loopexit178 ] ; 5 uses
  %.01282434 = phi i32 [ %.sroa.0165.0.extract.trunc, %.lr.ph2436 ], [ %.1129.lcssa, %.loopexit178 ] ; 5 uses
  %.01302433 = phi i8 [ %i.ak, %.lr.ph2436 ], [ %.1131.lcssa, %.loopexit178 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %.fr2439, i64 %indvars.iv4451 ; 4 uses
  %i.bu = shl nuw nsw i64 %indvars.iv4451, 4
  %i.bv = add i64 %i.bu, %i.av, !nosanitize !10   ; 2 uses
  %.not2442 = icmp ult i64 %i.bv, %i.av, !nosanitize !10
  br i1 %.not2442, label %bb.p, label %bb.q, !prof !89, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @230, i64 %i.av, i64 %i.bv) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o
  %i.bw = ptrtoint ptr %i.bt to i64, !nosanitize !10 ; 2 uses
  %i.bx = and i64 %i.bw, 7, !nosanitize !10
  %i.by = icmp eq i64 %i.bx, 0, !nosanitize !10
  br i1 %i.by, label %bb.s, label %bb.r, !prof !11, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @231, i64 %i.bw) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q
  %i.bz = load i32, ptr %i.bt, align 8, !tbaa !173 ; 2 uses
  %exitcond4453 = icmp eq i64 %indvars.iv4451, 2147483647
  br i1 %exitcond4453, label %bb.t, label %bb.u, !prof !89, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @232, i64 2147483647, i64 1) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.u:                                             ; preds = %bb.s
  %3 = shl i64 %indvars.iv4451, 32
  %sext = add i64 %3, 4294967296                  ; 2 uses
  %4 = ashr exact i64 %sext, 28
  %5 = getelementptr inbounds i8, ptr %.fr2439, i64 %4 ; 2 uses
  %6 = ashr exact i64 %sext, 28
  %i.ca = add i64 %6, %i.av, !nosanitize !10      ; 2 uses
  %.not6484 = icmp ult i64 %i.ca, %i.av, !nosanitize !10
  br i1 %.not6484, label %bb.v, label %bb.w, !prof !89, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @233, i64 %i.av, i64 %i.ca) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.w:                                             ; preds = %bb.u
  %i.cb = ptrtoint ptr %5 to i64, !nosanitize !10 ; 2 uses
  %i.cc = and i64 %i.cb, 7, !nosanitize !10
  %i.cd = icmp eq i64 %i.cc, 0, !nosanitize !10
  br i1 %i.cd, label %bb.y, label %bb.x, !prof !11, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @234, i64 %i.cb) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.y:                                             ; preds = %bb.w
  %i.ce = load i32, ptr %5, align 8, !tbaa !173
  %i.cf = tail call noundef i32 @llvm.smin.i32(i32 %i.ce, i32 %i.at) ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !174
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !175 ; 3 uses
  %i.ck = icmp slt i32 %.01282434, %i.cf
  br i1 %i.ck, label %.lr.ph2243, label %.loopexit178

.lr.ph2243:                                       ; preds = %bb.y
  %i.cl = ptrtoint ptr %i.cj to i64               ; 3 uses
  %i.cm = icmp ne ptr %i.cj, null                 ; 2 uses
  br i1 %.not2441, label %.lr.ph2243.split.us, label %.lr.ph2243.split.preheader, !prof !89

.lr.ph2243.split.preheader:                       ; preds = %.lr.ph2243
  %i.cn = sext i32 %i.ch to i64
  %i.co = sext i32 %.01282434 to i64
  br label %.lr.ph2243.split

.lr.ph2243.split.us:                              ; preds = %.lr.ph2243
  %i.cp = sext i32 %.01282434 to i64
  %i.cq = mul nsw i64 %i.cp, 1696
  %i.cr = icmp eq i32 %.01282434, 0
  br i1 %i.cr, label %.split2250, label %.split2246.us, !prof !11, !nosanitize !10

.lr.ph2243.split:                                 ; preds = %.lr.ph2243.split.preheader, %bb.bt
  %indvars.iv4444 = phi i64 [ %i.co, %.lr.ph2243.split.preheader ], [ %indvars.iv.next4445, %bb.bt ] ; 7 uses
  %.11312240 = phi i8 [ %.01302433, %.lr.ph2243.split.preheader ], [ %.2132.lcssa, %bb.bt ]
  %i.cs = getelementptr inbounds [1696 x i8], ptr %.fr, i64 %indvars.iv4444 ; 30 uses
  %i.ct = mul nsw i64 %indvars.iv4444, 1696
  %i.cu = add i64 %i.ct, %i.bq, !nosanitize !10   ; 3 uses
  %i.cv = icmp ne i64 %i.cu, 0
  %i.cw = icmp uge i64 %i.cu, %i.bq, !nosanitize !10
  %i.cx = icmp slt i64 %indvars.iv4444, 0
  %i.cy = xor i1 %i.cx, %i.cw
  %i.cz = and i1 %i.cv, %i.cy, !nosanitize !10
  br i1 %i.cz, label %bb.z, label %.split2246.us, !prof !11, !nosanitize !10

.split2246.us:                                    ; preds = %.lr.ph2243.split, %.lr.ph2243.split.us
  %.us-phi2248 = phi i64 [ %i.cq, %.lr.ph2243.split.us ], [ %i.cu, %.lr.ph2243.split ]
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @235, i64 %i.bq, i64 %.us-phi2248) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.z:                                             ; preds = %.lr.ph2243.split
  %i.da = ptrtoint ptr %i.cs to i64, !nosanitize !10 ; 2 uses
  %i.db = and i64 %i.da, 15, !nosanitize !10
  %i.dc = icmp eq i64 %i.db, 0, !nosanitize !10
  br i1 %i.dc, label %bb.aa, label %.split2250, !prof !11, !nosanitize !10

.split2250:                                       ; preds = %bb.z, %.lr.ph2243.split.us
  %.us-phi2251 = phi i64 [ 0, %.lr.ph2243.split.us ], [ %i.da, %bb.z ]
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @237, i64 %.us-phi2251) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.aa:                                            ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 592
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 608
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 320
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 336
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 352
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 368
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cs, i64 384
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cs, i64 400
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cs, i64 528
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cs, i64 720
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cs, i64 736
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 752
  %i.dp = trunc nsw i64 %indvars.iv4444 to i32    ; 2 uses
  %i.dq = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.dp, i32 %i.bz), !nosanitize !10 ; 2 uses
  %i.dr = extractvalue { i32, i1 } %i.dq, 1, !nosanitize !10
  br i1 %i.dr, label %bb.ab, label %.preheader177, !prof !89, !nosanitize !10

.preheader177:                                    ; preds = %bb.aa
  %i.ds = extractvalue { i32, i1 } %i.dq, 0, !nosanitize !10 ; 4 uses
  %i.dt = add i32 %i.ds, 536870912
  %i.du = icmp ult i32 %i.dt, 1073741824
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cs, i64 896 ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64               ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cs, i64 928 ; 7 uses
  %i.dy = icmp slt i32 %i.ds, 0
  br i1 %i.du, label %.preheader177.split.preheader, label %bb.ac, !prof !11, !nosanitize !10

.preheader177.split.preheader:                    ; preds = %.preheader177
  %i.dz = shl nsw i32 %i.ds, 2
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cs, i64 1056
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cs, i64 1104
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cs, i64 1040
  %.not176.1 = icmp ugt ptr %i.dx, inttoptr (i64 -193 to ptr)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cs, i64 1248
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cs, i64 1296
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cs, i64 1232
  %.not176.2 = icmp ugt ptr %i.dx, inttoptr (i64 -385 to ptr)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cs, i64 1440
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cs, i64 1488
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cs, i64 1424
  %.not176.3 = icmp ugt ptr %i.dx, inttoptr (i64 -577 to ptr)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cs, i64 1632
  %i.el = getelementptr inbounds nuw i8, ptr %i.cs, i64 1680
  %i.em = getelementptr inbounds nuw i8, ptr %i.cs, i64 1616
  %.not176.4 = icmp ugt ptr %i.dx, inttoptr (i64 -769 to ptr)
  %i.en = getelementptr inbounds nuw i8, ptr %i.cs, i64 1824
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cs, i64 1872
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cs, i64 1808
  br label %.preheader177.split

bb.ab:                                            ; preds = %bb.aa
  %i.eq = and i64 %indvars.iv4444, 4294967295
  %i.er = zext i32 %i.bz to i64, !nosanitize !10
  tail call void @__ubsan_handle_sub_overflow_abort(ptr nonnull @238, i64 %i.eq, i64 %i.er) #10, !nosanitize !10
  unreachable, !nosanitize !10

.preheader177.split:                              ; preds = %.preheader177.split.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader177.split.preheader ], [ %indvars.iv.next, %.loopexit ] ; 31 uses
  %.21322238 = phi i8 [ %.11312240, %.preheader177.split.preheader ], [ %.8.ph, %.loopexit ] ; 8 uses
  %i.es = add nuw nsw i64 %indvars.iv, %i.ea      ; 3 uses
  %.not157 = icmp slt i64 %i.es, %i.cn
  br i1 %.not157, label %bb.ad, label %bb.br

bb.ac:                                            ; preds = %.preheader177
  %i.et = zext i32 %i.ds to i64, !nosanitize !10
  tail call void @__ubsan_handle_mul_overflow_abort(ptr nonnull @239, i64 4, i64 %i.et) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ad:                                            ; preds = %.preheader177.split
  %i.eu = shl nuw nsw i64 %indvars.iv, 3
  %i.ev = add i64 %i.eu, %i.dw, !nosanitize !10   ; 2 uses
  %.not158 = icmp ult i64 %i.ev, %i.dw, !nosanitize !10
  br i1 %.not158, label %bb.ae, label %bb.af, !prof !89, !nosanitize !10

bb.ae:                                            ; preds = %bb.ad
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @240, i64 %i.dw, i64 %i.ev) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.af:                                            ; preds = %bb.ad
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !177 ; 41 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ez = ptrtoint ptr %i.ex to i64, !nosanitize !10 ; 6 uses
  %i.fa = and i64 %i.ez, 3, !nosanitize !10
  %i.fb = icmp eq i64 %i.fa, 0, !nosanitize !10
  br i1 %i.fb, label %bb.ai, label %bb.ah, !prof !11, !nosanitize !10

bb.ah:                                            ; preds = %bb.ag
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @241, i64 %i.ez) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ai:                                            ; preds = %bb.ag
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !107 ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !107 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 240
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv
  %i.fj = load float, ptr %i.fh, align 4, !tbaa !107
  %i.fk = fmul float %i.ff, %i.fj
  %i.fl = load float, ptr %i.fi, align 4, !tbaa !107
  %i.fm = fmul float %i.fd, %i.fl
  %i.fn = fadd float %i.fk, %i.fm
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv
  %i.fq = load float, ptr %i.fo, align 4, !tbaa !107
  %i.fr = fmul float %i.ff, %i.fq
  %i.fs = load float, ptr %i.fp, align 4, !tbaa !107
  %i.ft = fmul float %i.fd, %i.fs
  %i.fu = fadd float %i.fr, %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv
  %i.fx = load float, ptr %i.fv, align 4, !tbaa !107
  %i.fy = fmul float %i.ff, %i.fx
  %i.fz = load float, ptr %i.fw, align 4, !tbaa !107
  %i.ga = fmul float %i.fd, %i.fz
  %i.gb = fadd float %i.fy, %i.ga
  store float %i.fn, ptr %i.fg, align 4, !tbaa !107
  %.sroa.2163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 244
  store float %i.fu, ptr %.sroa.2163.0..sroa_idx, align 4, !tbaa !107
  %.sroa.3164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 248
  store float %i.gb, ptr %.sroa.3164.0..sroa_idx, align 4, !tbaa !107
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ex, i64 236
  %i.ge = load float, ptr %i.gc, align 4, !tbaa !107
  store float %i.ge, ptr %i.gd, align 4, !tbaa !142
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ex, i64 252
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !107
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv
  %i.gk = load float, ptr %i.gi, align 4, !tbaa !107
  %i.gl = load float, ptr %i.gj, align 4, !tbaa !107 ; 6 uses
  store float %i.gh, ptr %i.gf, align 4, !tbaa !107
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 256
  store float %i.gk, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !107
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 260
  store float %i.gl, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !107
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ex, i64 264
  %i.gn = load i32, ptr %i.gm, align 4            ; 11 uses
  %i.go = icmp sgt i32 %i.gn, 0                   ; 2 uses
end_hunk_1
