Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/mesh?download=true
inline.NumInlined: 435
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@b3WeldVertices:bb.a
b3VertexMap_init.exit.i:                          ; preds = %bb.d, %bb.c
  %i.s = phi ptr [ %i.r, %bb.d ], [ null, %bb.c ]
  store ptr %i.s, ptr %5, align 8, !tbaa !168
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  store i32 0, ptr %i.t, align 8, !tbaa !169
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 6 uses
  store i32 %i.f, ptr %i.u, align 4, !tbaa !170
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  store ptr @vt_empty_placeholder_metadatum, ptr %i.y, align 8, !tbaa !66
  %i.z = icmp eq i32 %i.f, 0
  br i1 %i.z, label %._crit_edge, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %b3VertexMap_init.exit.i
  %i.aa = sext i32 %i.f to i64
  %i.ab = uitofp i64 %i.aa to double
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.i.i.i
  %.0.i.i.i = phi i64 [ %i.af, %bb.e ], [ 8, %.preheader.i.i.i ] ; 4 uses
  %i.ac = uitofp i64 %.0.i.i.i to double
  %i.ad = fmul nnan double %i.ac, 9.000000e-01
  %i.ae = fcmp olt double %i.ad, %i.ab
  %i.af = shl i64 %.0.i.i.i, 1
  br i1 %i.ae, label %bb.e, label %b3VertexMap_bucket_count.exit.i.i, !llvm.loop !151

b3VertexMap_bucket_count.exit.i.i:                ; preds = %bb.e
  %.not.i.not.i = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i.not.i, label %b3CreateSpatialHash.exit, label %bb.f

bb.f:                                             ; preds = %b3VertexMap_bucket_count.exit.i.i
  %i.ag = call fastcc zeroext i1 @b3VertexMap_rehash(ptr noundef nonnull %i.v, i64 noundef %.0.i.i.i) ; 0 uses
  br label %b3CreateSpatialHash.exit

b3CreateSpatialHash.exit:                         ; preds = %b3VertexMap_bucket_count.exit.i.i, %bb.f
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %b3CreateSpatialHash.exit
  %i.ah = shl i32 %i.f, 2
  %i.ai = call ptr @b3GrowAlloc(ptr noundef null, i32 noundef 0, i32 noundef %i.ah) #13
  %i.aj = zext nneg i32 %i.f to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = freeze ptr %i.ai                        ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ao = ptrtoint ptr %i.al to i64               ; 9 uses
  %i.ap = icmp ne ptr %i.al, null                 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.cv
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cv ] ; 9 uses
  %.0371383 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.cv ] ; 6 uses
  %i.av = load i64, ptr %i.l, align 8, !tbaa !165 ; 7 uses
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !163 ; 3 uses
  %i.ax = mul i64 %i.av, %indvars.iv              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax ; 3 uses
  %i.az = ptrtoint ptr %i.aw to i64, !nosanitize !9 ; 3 uses
  %i.ba = add i64 %i.ax, %i.az, !nosanitize !9    ; 3 uses
  %i.bb = icmp ne ptr %i.aw, null, !nosanitize !9 ; 2 uses
  %i.bc = icmp eq i64 %i.ba, 0
  %i.bd = xor i1 %i.bb, %i.bc
  %i.be = icmp uge i64 %i.ba, %i.az, !nosanitize !9
  %i.bf = and i1 %i.be, %i.bd, !nosanitize !9
  br i1 %i.bf, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @448, i64 %i.az, i64 %i.ba) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.bg = ptrtoint ptr %i.ay to i64, !nosanitize !9 ; 2 uses
  %i.bh = and i64 %i.bg, 3, !nosanitize !9
  %i.bi = icmp eq i64 %i.bh, 0, !nosanitize !9
  %i.bj = and i1 %i.bb, %i.bi
  br i1 %i.bj, label %bb.k, label %bb.j, !prof !10, !nosanitize !9

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @449, i64 %i.bg) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %bb.i
  %.sroa.02.0.copyload.i.i = load <2 x float>, ptr %i.ay, align 4, !tbaa !22 ; 8 uses
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.23.0.copyload.i.i = load float, ptr %.sroa.23.0..sroa_idx.i.i, align 4, !tbaa !22 ; 4 uses
  %i.bk = load float, ptr %i.n, align 8, !tbaa !167 ; 3 uses
  %i.bl = load float, ptr %i.m, align 4, !tbaa !166 ; 9 uses
  %.sroa.0148.0.vec.extract.i = extractelement <2 x float> %.sroa.02.0.copyload.i.i, i64 0
  %i.bm = fdiv float %.sroa.0148.0.vec.extract.i, %i.bk
  %i.bn = call float @llvm.floor.f32(float %i.bm) ; 4 uses
  %i.bo = fcmp ogt float %i.bn, f0xCF000001, !nosanitize !9
  %i.bp = fcmp olt float %i.bn, f0x4F000000, !nosanitize !9
  %i.bq = and i1 %i.bo, %i.bp, !nosanitize !9
  br i1 %i.bq, label %bb.m, label %bb.l, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  %i.br = bitcast float %i.bn to i32, !nosanitize !9
  %i.bs = zext i32 %i.br to i64, !nosanitize !9
  call void @__ubsan_handle_float_cast_overflow_abort(ptr nonnull @417, i64 %i.bs) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  %i.bt = fptosi float %i.bn to i32               ; 4 uses
  %.sroa.0148.4.vec.extract152.i = extractelement <2 x float> %.sroa.02.0.copyload.i.i, i64 1
  %i.bu = fdiv float %.sroa.0148.4.vec.extract152.i, %i.bk
  %i.bv = call float @llvm.floor.f32(float %i.bu) ; 4 uses
  %i.bw = fcmp ogt float %i.bv, f0xCF000001, !nosanitize !9
  %i.bx = fcmp olt float %i.bv, f0x4F000000, !nosanitize !9
  %i.by = and i1 %i.bw, %i.bx, !nosanitize !9
  br i1 %i.by, label %bb.o, label %bb.n, !prof !10, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  %i.bz = bitcast float %i.bv to i32, !nosanitize !9
  %i.ca = zext i32 %i.bz to i64, !nosanitize !9
  call void @__ubsan_handle_float_cast_overflow_abort(ptr nonnull @418, i64 %i.ca) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.o:                                             ; preds = %bb.m
  %i.cb = fptosi float %i.bv to i32               ; 4 uses
  %i.cc = fdiv float %.sroa.23.0.copyload.i.i, %i.bk
  %i.cd = call float @llvm.floor.f32(float %i.cc) ; 4 uses
  %i.ce = fcmp ogt float %i.cd, f0xCF000001, !nosanitize !9
  %i.cf = fcmp olt float %i.cd, f0x4F000000, !nosanitize !9
  %i.cg = and i1 %i.ce, %i.cf, !nosanitize !9
  br i1 %i.cg, label %bb.q, label %bb.p, !prof !10, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  %i.ch = bitcast float %i.cd to i32, !nosanitize !9
  %i.ci = zext i32 %i.ch to i64, !nosanitize !9
  call void @__ubsan_handle_float_cast_overflow_abort(ptr nonnull @419, i64 %i.ci) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  %i.cj = fptosi float %i.cd to i32
  %.fr1433 = freeze i32 %i.cj                     ; 4 uses
  %i.ck = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.fr1433, i32 -1) ; 2 uses
  %i.cl = extractvalue { i32, i1 } %i.ck, 1
  %i.cm = extractvalue { i32, i1 } %i.ck, 0
  %i.cn = sext i32 %i.cm to i64
  %i.co = sext i32 %.fr1433 to i64                ; 2 uses
  %i.cp = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.fr1433, i32 1) ; 2 uses
  %i.cq = extractvalue { i32, i1 } %i.cp, 1
  %i.cr = extractvalue { i32, i1 } %i.cp, 0
  %i.cs = sext i32 %i.cr to i64
  br i1 %i.cl, label %.preheader168.i.us, label %.preheader168.i, !prof !17, !nosanitize !9

.preheader168.i.us:                               ; preds = %bb.q
  %i.ct = icmp eq i32 %i.bt, -2147483648
  br i1 %i.ct, label %.split1237.us, label %.preheader.i.us, !prof !17, !nosanitize !9

.preheader168.i:                                  ; preds = %bb.q, %.thread163.i
  %.0122262.i = phi i32 [ %i.kw, %.thread163.i ], [ -1, %bb.q ] ; 3 uses
  %i.cu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bt, i32 %.0122262.i), !nosanitize !9 ; 2 uses
  %i.cv = extractvalue { i32, i1 } %i.cu, 0, !nosanitize !9
  %i.cw = extractvalue { i32, i1 } %i.cu, 1, !nosanitize !9
  %i.cx = sext i32 %i.cv to i64
  %i.cy = add nsw i64 %i.cx, 2654435769           ; 3 uses
  %i.cz = shl nuw nsw i64 %i.cy, 6
  %i.da = lshr i64 %i.cy, 2
  %i.db = add nuw nsw i64 %i.cz, 2654435769
  %i.dc = add nuw nsw i64 %i.db, %i.da
  br i1 %i.cw, label %.split1237.us.loopexit, label %.preheader.i, !prof !17, !nosanitize !9

.preheader.i.us:                                  ; preds = %.preheader168.i.us
  %i.dd = icmp eq i32 %i.cb, -2147483648
  br i1 %i.dd, label %.split.us, label %.split1088.us, !prof !17, !nosanitize !9

.preheader.i:                                     ; preds = %.preheader168.i, %.loopexit.2.i
  %.0115261.i = phi i32 [ %i.kv, %.loopexit.2.i ], [ -1, %.preheader168.i ] ; 3 uses
  %i.de = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.cb, i32 %.0115261.i) ; 2 uses
  %i.df = extractvalue { i32, i1 } %i.de, 0
  %i.dg = extractvalue { i32, i1 } %i.de, 1
  %i.dh = sext i32 %i.df to i64
  %i.di = add nsw i64 %i.dc, %i.dh
  %i.dj = xor i64 %i.di, %i.cy                    ; 5 uses
  %i.dk = shl nuw nsw i64 %i.dj, 6
  %i.dl = lshr i64 %i.dj, 2
  %i.dm = add nuw nsw i64 %i.dk, 2654435769
  %i.dn = add nuw nsw i64 %i.dm, %i.dl            ; 3 uses
  br i1 %i.dg, label %.split.us.loopexit, label %.preheader.split.split.preheader.i, !prof !17, !nosanitize !9

.preheader.split.split.preheader.i:               ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.do = add nsw i64 %i.dn, %i.cn
  %i.dp = xor i64 %i.do, %i.dj
  call fastcc void @b3VertexMap_get(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %i.v, i64 noundef %i.dp)
  %.val139.i = load ptr, ptr %i.am, align 8, !tbaa !68
  %.val140.i = load ptr, ptr %i.an, align 8, !tbaa !69
  %i.dq = icmp eq ptr %.val139.i, %.val140.i
  br i1 %i.dq, label %.loopexit.i, label %bb.r

.split1237.us.loopexit:                           ; preds = %.preheader168.i
  %6 = zext i32 %i.bt to i64
  %i.dr = zext i32 %.0122262.i to i64
  br label %.split1237.us

.split1237.us:                                    ; preds = %.split1237.us.loopexit, %.preheader168.i.us
  %i.ds = phi i64 [ 2147483648, %.preheader168.i.us ], [ %6, %.split1237.us.loopexit ]
  %.us-phi1239 = phi i64 [ 4294967295, %.preheader168.i.us ], [ %i.dr, %.split1237.us.loopexit ]
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @420, i64 %i.ds, i64 %.us-phi1239) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split.us.loopexit:                               ; preds = %.preheader.i
  %7 = zext i32 %i.cb to i64
  %i.dt = zext i32 %.0115261.i to i64
  br label %.split.us

.split.us:                                        ; preds = %.split.us.loopexit, %.preheader.i.us
  %i.du = phi i64 [ 2147483648, %.preheader.i.us ], [ %7, %.split.us.loopexit ]
  %.us-phi1086 = phi i64 [ 4294967295, %.preheader.i.us ], [ %i.dt, %.split.us.loopexit ]
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @421, i64 %i.du, i64 %.us-phi1086) #12, !nosanitize !9
  unreachable, !nosanitize !9

.split1088.us:                                    ; preds = %.loopexit.1.i, %.preheader.i.us
  %.us-phi1090 = phi i64 [ 4294967295, %.preheader.i.us ], [ 1, %.loopexit.1.i ]
  %i.dv = zext i32 %.fr1433 to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @422, i64 %i.dv, i64 %.us-phi1090) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %.preheader.split.split.preheader.i
  %i.dw = load ptr, ptr %2, align 8, !tbaa !70    ; 3 uses
  %i.dx = icmp ne ptr %i.dw, null, !nosanitize !9
  %i.dy = ptrtoint ptr %i.dw to i64, !nosanitize !9 ; 2 uses
  %i.dz = and i64 %i.dy, 7, !nosanitize !9
  %i.ea = icmp eq i64 %i.dz, 0, !nosanitize !9
  %i.eb = and i1 %i.dx, %i.ea, !nosanitize !9
  br i1 %i.eb, label %bb.t, label %bb.s, !prof !10, !nosanitize !9

bb.s:                                             ; preds = %bb.an, %bb.ac, %bb.r
  %.lcssa290.i = phi i64 [ %i.dy, %bb.r ], [ %i.gk, %bb.ac ], [ %i.is, %bb.an ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @423, i64 %.lcssa290.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.t:                                             ; preds = %bb.r
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !72 ; 5 uses
  %.not236.i = icmp eq i32 %i.ed, -1
  br i1 %.not236.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t
  %i.ee = load ptr, ptr %5, align 8, !tbaa !168
  %.fr263.i = freeze ptr %i.ee                    ; 4 uses
  %i.ef = ptrtoint ptr %.fr263.i to i64, !nosanitize !9 ; 7 uses
  %.not264.i = icmp eq ptr %.fr263.i, null, !nosanitize !9
  br i1 %.not264.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i.preheader, !prof !17

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %i.eg = load ptr, ptr %i.j, align 8
  %.fr1434 = freeze ptr %i.eg                     ; 3 uses
  %i.eh = ptrtoint ptr %.fr1434 to i64            ; 4 uses
  %.not = icmp eq ptr %.fr1434, null
  br i1 %.not, label %.lr.ph.split.i.us, label %.lr.ph.split.i, !prof !17

.lr.ph.split.i.us:                                ; preds = %.lr.ph.split.i.preheader
  %i.ei = sext i32 %i.ed to i64                   ; 2 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %.fr263.i, i64 %i.ei ; 2 uses
  %i.ek = shl nsw i64 %i.ei, 3
  %i.el = add i64 %i.ek, %i.ef, !nosanitize !9    ; 3 uses
  %i.em = icmp ne i64 %i.el, 0
  %i.en = icmp uge i64 %i.el, %i.ef, !nosanitize !9
  %i.eo = icmp slt i32 %i.ed, 0
  %i.ep = xor i1 %i.eo, %i.en
  %i.eq = and i1 %i.em, %i.ep, !nosanitize !9
  br i1 %i.eq, label %bb.u, label %.split.us.i, !prof !10, !nosanitize !9

bb.u:                                             ; preds = %.lr.ph.split.i.us
  %i.er = ptrtoint ptr %i.ej to i64, !nosanitize !9 ; 2 uses
  %i.es = and i64 %i.er, 3, !nosanitize !9
  %i.et = icmp eq i64 %i.es, 0, !nosanitize !9
  br i1 %i.et, label %bb.v, label %.split240.i, !prof !10, !nosanitize !9

bb.v:                                             ; preds = %bb.u
  %i.eu = load i64, ptr %i.ej, align 4, !tbaa !23
  %sext.i.us = shl i64 %i.eu, 32
  %i.ev = ashr exact i64 %sext.i.us, 32
  %i.ew = mul i64 %i.ev, %i.av                    ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.loopexit353.i, label %.loopexit352.i, !prof !10, !nosanitize !9

.lr.ph.split.us.i:                                ; preds = %.lr.ph.2.i, %.lr.ph.1.i, %.lr.ph.i
  %.lcssa311.i = phi i64 [ %i.ef, %.lr.ph.i ], [ %i.gr, %.lr.ph.1.i ], [ %i.iz, %.lr.ph.2.i ]
  %.lcssa305.i = phi i32 [ %i.ed, %.lr.ph.i ], [ %i.gp, %.lr.ph.1.i ], [ %i.ix, %.lr.ph.2.i ] ; 2 uses
  %i.ey = sext i32 %.lcssa305.i to i64
  %i.ez = shl nsw i64 %i.ey, 3
  %i.fa = icmp eq i32 %.lcssa305.i, 0
  br i1 %i.fa, label %.split240.i, label %.split.us.i, !prof !10, !nosanitize !9

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %bb.ab
  %.0112237.i = phi i32 [ %.sroa.4.0.extract.trunc.i, %bb.ab ], [ %i.ed, %.lr.ph.split.i.preheader ] ; 2 uses
  %i.fb = sext i32 %.0112237.i to i64             ; 2 uses
  %i.fc = getelementptr inbounds [8 x i8], ptr %.fr263.i, i64 %i.fb ; 2 uses
  %i.fd = shl nsw i64 %i.fb, 3
  %i.fe = add i64 %i.fd, %i.ef, !nosanitize !9    ; 3 uses
  %i.ff = icmp ne i64 %i.fe, 0
  %i.fg = icmp uge i64 %i.fe, %i.ef, !nosanitize !9
  %i.fh = icmp slt i32 %.0112237.i, 0
  %i.fi = xor i1 %i.fh, %i.fg
  %i.fj = and i1 %i.ff, %i.fi, !nosanitize !9
  br i1 %i.fj, label %bb.w, label %.split.us.i, !prof !10, !nosanitize !9

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.1.i, %.lr.ph.split.2.i, %.lr.ph.split.2.i.us, %.lr.ph.split.1.i.us, %.lr.ph.split.i.us, %.lr.ph.split.us.i
  %i.fk = phi i64 [ %.lcssa311.i, %.lr.ph.split.us.i ], [ %i.iz, %.lr.ph.split.2.i.us ], [ %i.gr, %.lr.ph.split.1.i ], [ %i.gr, %.lr.ph.split.1.i.us ], [ %i.iz, %.lr.ph.split.2.i ], [ %i.ef, %.lr.ph.split.i.us ], [ %i.ef, %.lr.ph.split.i ]
  %.us-phi238.i = phi i64 [ %i.ez, %.lr.ph.split.us.i ], [ %i.jf, %.lr.ph.split.2.i.us ], [ %i.hn, %.lr.ph.split.1.i ], [ %i.gx, %.lr.ph.split.1.i.us ], [ %i.jv, %.lr.ph.split.2.i ], [ %i.el, %.lr.ph.split.i.us ], [ %i.fe, %.lr.ph.split.i ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @424, i64 %i.fk, i64 %.us-phi238.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.w:                                             ; preds = %.lr.ph.split.i
  %i.fl = ptrtoint ptr %i.fc to i64, !nosanitize !9 ; 2 uses
  %i.fm = and i64 %i.fl, 3, !nosanitize !9
  %i.fn = icmp eq i64 %i.fm, 0, !nosanitize !9
  br i1 %i.fn, label %bb.x, label %.split240.i, !prof !10, !nosanitize !9

.split240.i:                                      ; preds = %bb.w, %bb.ag, %bb.ar, %bb.ap, %bb.ae, %bb.u, %.lr.ph.split.us.i
  %.us-phi241.i = phi i64 [ 0, %.lr.ph.split.us.i ], [ %i.jl, %bb.ap ], [ %i.ht, %bb.ag ], [ %i.hd, %bb.ae ], [ %i.kb, %bb.ar ], [ %i.er, %bb.u ], [ %i.fl, %bb.w ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @426, i64 %.us-phi241.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.x:                                             ; preds = %bb.w
  %i.fo = load i64, ptr %i.fc, align 4, !tbaa !23 ; 3 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %i.fo, 32 ; 2 uses
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %sext.i = shl i64 %i.fo, 32
  %i.fp = ashr exact i64 %sext.i, 32
  %i.fq = mul i64 %i.fp, %i.av                    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.fr1434, i64 %i.fq ; 3 uses
  %i.fs = add i64 %i.fq, %i.eh, !nosanitize !9    ; 2 uses
  %.not1435 = icmp ult i64 %i.fs, %i.eh, !nosanitize !9
  br i1 %.not1435, label %.loopexit352.i, label %bb.y, !prof !17, !nosanitize !9

.loopexit352.i:                                   ; preds = %bb.x, %bb.ah, %bb.as, %bb.aq, %bb.af, %bb.v
  %.lcssa279.i = phi i64 [ %i.jb, %bb.aq ], [ %i.gt, %bb.ah ], [ %i.gt, %bb.af ], [ %i.jb, %bb.as ], [ %i.eh, %bb.v ], [ %i.eh, %bb.x ]
  %.lcssa275.i = phi i64 [ %i.jq, %bb.aq ], [ %i.ia, %bb.ah ], [ %i.hi, %bb.af ], [ %i.ki, %bb.as ], [ %i.ew, %bb.v ], [ %i.fs, %bb.x ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @448, i64 %.lcssa279.i, i64 %.lcssa275.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

bb.y:                                             ; preds = %bb.x
  %i.ft = ptrtoint ptr %i.fr to i64, !nosanitize !9 ; 2 uses
  %i.fu = and i64 %i.ft, 3, !nosanitize !9
  %i.fv = icmp eq i64 %i.fu, 0, !nosanitize !9
  br i1 %i.fv, label %b3GetStridedVertex.exit146.i, label %.loopexit353.i, !prof !10, !nosanitize !9

.loopexit353.i:                                   ; preds = %bb.y, %bb.ai, %bb.at, %bb.aq, %bb.af, %bb.v
  %.lcssa287.i = phi i64 [ 0, %bb.aq ], [ 0, %bb.v ], [ 0, %bb.af ], [ %i.kj, %bb.at ], [ %i.ib, %bb.ai ], [ %i.ft, %bb.y ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @449, i64 %.lcssa287.i) #12, !nosanitize !9
  unreachable, !nosanitize !9

b3GetStridedVertex.exit146.i:                     ; preds = %bb.y
  %.sroa.02.0.copyload.i141.i = load <2 x float>, ptr %i.fr, align 4, !tbaa !22 ; 2 uses
  %.sroa.23.0..sroa_idx.i142.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %.sroa.23.0.copyload.i143.i = load float, ptr %.sroa.23.0..sroa_idx.i142.i, align 4, !tbaa !22
  %foldExtExtBinop = fsub <2 x float> %.sroa.02.0.copyload.i.i, %.sroa.02.0.copyload.i141.i
  %i.fw = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fx = call float @llvm.fabs.f32(float %i.fw)
  %i.fy = fcmp ugt float %i.fx, %i.bl
  br i1 %i.fy, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %b3GetStridedVertex.exit146.i
  %foldExtExtBinop4021 = fsub <2 x float> %.sroa.02.0.copyload.i.i, %.sroa.02.0.copyload.i141.i
  %i.fz = extractelement <2 x float> %foldExtExtBinop4021, i64 1
  %i.ga = call float @llvm.fabs.f32(float %i.fz)
  %i.gb = fcmp ugt float %i.ga, %i.bl
  br i1 %i.gb, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gc = fsub float %.sroa.23.0.copyload.i.i, %.sroa.23.0.copyload.i143.i
  %i.gd = call float @llvm.fabs.f32(float %i.gc)
  %i.ge = fcmp ugt float %i.gd, %i.bl
  br i1 %i.ge, label %bb.ab, label %b3SpatialHash_FindDuplicate.exit

bb.ab:                                            ; preds = %bb.aa, %bb.z, %b3GetStridedVertex.exit146.i
  %.not.i = icmp eq i64 %.sroa.4.0.extract.shift.i, 4294967295
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.split.i, !llvm.loop !152

.loopexit.i:                                      ; preds = %bb.ab, %bb.t, %.preheader.split.split.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.gf = add nsw i64 %i.dn, %i.co
  %i.gg = xor i64 %i.gf, %i.dj
  call fastcc void @b3VertexMap_get(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %i.v, i64 noundef %i.gg)
  %.val139.1.i = load ptr, ptr %i.am, align 8, !tbaa !68
  %.val140.1.i = load ptr, ptr %i.an, align 8, !tbaa !69
  %i.gh = icmp eq ptr %.val139.1.i, %.val140.1.i
  br i1 %i.gh, label %.loopexit.1.i, label %bb.ac

bb.ac:                                            ; preds = %.loopexit.i
  %i.gi = load ptr, ptr %2, align 8, !tbaa !70    ; 3 uses
  %i.gj = icmp ne ptr %i.gi, null, !nosanitize !9
  %i.gk = ptrtoint ptr %i.gi to i64, !nosanitize !9 ; 2 uses
  %i.gl = and i64 %i.gk, 7, !nosanitize !9
  %i.gm = icmp eq i64 %i.gl, 0, !nosanitize !9
  %i.gn = and i1 %i.gj, %i.gm, !nosanitize !9
  br i1 %i.gn, label %bb.ad, label %bb.s, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !72 ; 5 uses
  %.not236.1.i = icmp eq i32 %i.gp, -1
  br i1 %.not236.1.i, label %.loopexit.1.i, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %bb.ad
  %i.gq = load ptr, ptr %5, align 8, !tbaa !168
  %.fr263.1.i = freeze ptr %i.gq                  ; 4 uses
  %i.gr = ptrtoint ptr %.fr263.1.i to i64, !nosanitize !9 ; 7 uses
  %.not264.1.i = icmp eq ptr %.fr263.1.i, null, !nosanitize !9
  br i1 %.not264.1.i, label %.lr.ph.split.us.i, label %.lr.ph.split.1.i.preheader, !prof !17

.lr.ph.split.1.i.preheader:                       ; preds = %.lr.ph.1.i
  %i.gs = load ptr, ptr %i.j, align 8
  %.fr = freeze ptr %i.gs                         ; 3 uses
  %i.gt = ptrtoint ptr %.fr to i64                ; 4 uses
  %.not1436 = icmp eq ptr %.fr, null
end_hunk_0
