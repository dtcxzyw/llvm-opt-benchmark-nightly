Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86?download=true
inline.NumInlined: 404
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib:bb.a
  %lcmp.mod1364.not.not = icmp eq i32 %i.y, 0
  %lcmp.mod1367 = trunc i32 %i.u to i1
  br label %.preheader211

.preheader211:                                    ; preds = %.preheader211.lr.ph, %bb.b
  %indvars.iv749 = phi i64 [ 0, %.preheader211.lr.ph ], [ %indvars.iv.next750, %bb.b ] ; 2 uses
  %.0655360 = phi ptr [ %.0.val, %.preheader211.lr.ph ], [ %.5.lcssa, %bb.b ]
  %i.z = mul nsw i64 %indvars.iv749, %i.s
  br label %bb.c

.preheader203.loopexit.a:                         ; preds = %bb.b
  %i.aa = trunc nuw nsw i64 %indvars.iv.next750 to i32
  br label %.preheader203.a

.preheader203.a:                                  ; preds = %.preheader203.loopexit.a, %bb.a
  %.0658.lcssa = phi i32 [ 0, %bb.a ], [ %i.aa, %.preheader203.loopexit.a ] ; 3 uses
  %.0655.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.5.lcssa, %.preheader203.loopexit.a ] ; 2 uses
  %i.ab = or disjoint i32 %.0658.lcssa, 1
  %i.ac = icmp slt i32 %i.ab, %3
  br i1 %i.ac, label %.preheader202.lr.ph, label %.preheader194.a

.preheader202.lr.ph:                              ; preds = %.preheader203.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = icmp sgt i32 %4, 7
  %i.ai = icmp eq i32 %5, 0                       ; 4 uses
  %i.aj = icmp sgt i32 %6, 1                      ; 4 uses
  %i.ak = add i32 %6, -2                          ; 6 uses
  %i.al = and i32 %i.ak, -2
  %i.am = add i32 %i.al, 2                        ; 4 uses
  %i.an = and i32 %4, -8
  %i.ao = lshr i32 %i.ak, 1
  %i.ap = zext nneg i32 %i.ao to i64              ; 5 uses
  %i.aq = shl nuw nsw i64 %i.ap, 4
  %i.ar = shl nuw nsw i64 %i.ap, 3
  %i.as = shl nuw nsw i64 %i.ap, 2
  %i.at = zext nneg i32 %.0658.lcssa to i64
  %i.au = sext i32 %3 to i64
  %i.av = sext i32 %6 to i64
  %wide.trip.count763 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %i.au, -1
  %i.aw = lshr i32 %i.ak, 1                       ; 2 uses
  %i.ax = add nuw i32 %i.aw, 1                    ; 2 uses
  %i.ay = icmp eq i32 %i.aw, 0
  %unroll_iter1376 = and i32 %i.ax, -2
  %i.az = and i32 %i.ak, 2
  %lcmp.mod1371.not.not = icmp eq i32 %i.az, 0
  %lcmp.mod1375 = trunc i32 %i.ax to i1
  %i.ba = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check1103 = icmp ult i32 %i.ak, 6
  %n.vec1105 = and i64 %i.ba, 4294967292          ; 4 uses
  %i.bb = trunc nuw i64 %n.vec1105 to i32
  %i.bc = shl i32 %i.bb, 1
  %i.bd = shl nuw nsw i64 %n.vec1105, 3           ; 2 uses
  %cmp.n1122 = icmp eq i64 %i.ba, %n.vec1105
  %i.be = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check1039 = icmp ult i32 %i.ak, 14
  %n.vec1041 = and i64 %i.be, 4294967288          ; 5 uses
  %i.bf = trunc nuw i64 %n.vec1041 to i32
  %i.bg = shl i32 %i.bf, 1
  %i.bh = shl nuw nsw i64 %n.vec1041, 3
  %i.bi = shl nuw nsw i64 %n.vec1041, 2
  %cmp.n1068 = icmp eq i64 %i.be, %n.vec1041
  br label %.preheader202

bb.b:                                             ; preds = %._crit_edge355
  %indvars.iv.next750 = add nuw nsw i64 %indvars.iv749, 4 ; 3 uses
  %i.bj = or disjoint i64 %indvars.iv.next750, 3
  %i.bk = icmp samesign ult i64 %i.bj, %i.r
  br i1 %i.bk, label %.preheader211, label %.preheader203.loopexit.a, !llvm.loop !1303

bb.c:                                             ; preds = %.preheader211, %._crit_edge355
  %indvars.iv = phi i64 [ 0, %.preheader211 ], [ %indvars.iv.next, %._crit_edge355 ] ; 3 uses
  %.1656358 = phi ptr [ %.0655360, %.preheader211 ], [ %.5.lcssa, %._crit_edge355 ] ; 2 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !34
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !86
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %indvars.iv, %i.bn
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !76
  %i.bq = mul i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bq
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.br, i64 %i.z ; 10 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !34
  %i.bu = load i32, ptr %i.d, align 4, !tbaa !86
  %i.bv = sext i32 %i.bu to i64
  %i.bw = mul nsw i64 %indvars.iv, %i.bv
  %i.bx = load i64, ptr %i.e, align 8, !tbaa !76
  %i.by = mul i64 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  br i1 %i.f, label %.lr.ph265, label %.preheader210

.preheader210:                                    ; preds = %bb.g, %bb.c
  %.0674.lcssa = phi i32 [ 0, %bb.c ], [ %i.l, %bb.g ] ; 3 uses
  %.0662.lcssa = phi ptr [ %i.bz, %bb.c ], [ %.2664.lcssa, %bb.g ] ; 2 uses
  %.2657.lcssa = phi ptr [ %.1656358, %bb.c ], [ %i.iz, %bb.g ] ; 2 uses
  %i.ca = or disjoint i32 %.0674.lcssa, 3
  %i.cb = icmp slt i32 %i.ca, %4
  br i1 %i.cb, label %.lr.ph302, label %.preheader209

.lr.ph265:                                        ; preds = %bb.c, %bb.g
  %.2657263 = phi ptr [ %i.iz, %bb.g ], [ %.1656358, %bb.c ] ; 17 uses
  %.0662262 = phi ptr [ %.2664.lcssa, %bb.g ], [ %i.bz, %bb.c ] ; 2 uses
  %.0674261 = phi i32 [ %i.ja, %bb.g ], [ 0, %bb.c ]
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph265
  %i.cc = load <2 x i64>, ptr %.2657263, align 16, !tbaa !108
  %i.cd = getelementptr inbounds nuw i8, ptr %.2657263, i64 16
  %i.ce = load <2 x i64>, ptr %i.cd, align 16, !tbaa !108
  %i.cf = getelementptr inbounds nuw i8, ptr %.2657263, i64 32
  %i.cg = load <2 x i64>, ptr %i.cf, align 16, !tbaa !108
  %i.ch = getelementptr inbounds nuw i8, ptr %.2657263, i64 48
  %i.ci = load <2 x i64>, ptr %i.ch, align 16, !tbaa !108
  %i.cj = getelementptr inbounds nuw i8, ptr %.2657263, i64 64
  %i.ck = load <2 x i64>, ptr %i.cj, align 16, !tbaa !108
  %i.cl = getelementptr inbounds nuw i8, ptr %.2657263, i64 80
  %i.cm = load <2 x i64>, ptr %i.cl, align 16, !tbaa !108
  %i.cn = getelementptr inbounds nuw i8, ptr %.2657263, i64 96
  %i.co = load <2 x i64>, ptr %i.cn, align 16, !tbaa !108
  %i.cp = getelementptr inbounds nuw i8, ptr %.2657263, i64 112
  %i.cq = load <2 x i64>, ptr %i.cp, align 16, !tbaa !108
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph265, %bb.d
  %.0166 = phi <2 x i64> [ %i.co, %bb.d ], [ zeroinitializer, %.lr.ph265 ] ; 2 uses
  %.0162 = phi <2 x i64> [ %i.cm, %bb.d ], [ zeroinitializer, %.lr.ph265 ] ; 2 uses
  %.0151 = phi <2 x i64> [ %i.ck, %bb.d ], [ zeroinitializer, %.lr.ph265 ] ; 2 uses
  %.0147 = phi <2 x i64> [ %i.ci, %bb.d ], [ zeroinitializer, %.lr.ph265 ] ; 2 uses
  %.0143 = phi <2 x i64> [ %i.cg, %bb.d ], [ zeroinitializer, %.lr.ph265 ] ; 2 uses
  %.0137 = phi <2 x i64> [ %i.ce, %bb.d ], [ zeroinitializer, %.lr.ph265 ] ; 2 uses
  %.0133 = phi <2 x i64> [ %i.cc, %bb.d ], [ zeroinitializer, %.lr.ph265 ] ; 2 uses
  %storemerge806 = phi <2 x i64> [ %i.cq, %bb.d ], [ zeroinitializer, %.lr.ph265 ] ; 2 uses
  br i1 %i.h, label %.lr.ph.preheader, label %.preheader207.a

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.cr = bitcast <2 x i64> %.0133 to <4 x i32>
  %i.cs = bitcast <2 x i64> %.0137 to <4 x i32>
  %i.ct = bitcast <2 x i64> %.0143 to <4 x i32>
  %i.cu = bitcast <2 x i64> %.0147 to <4 x i32>
  %i.cv = bitcast <2 x i64> %.0151 to <4 x i32>
  %i.cw = bitcast <2 x i64> %.0162 to <4 x i32>
  %i.cx = bitcast <2 x i64> %.0166 to <4 x i32>
  %i.cy = bitcast <2 x i64> %storemerge806 to <4 x i32>
  br label %.lr.ph

.preheader207.loopexit:                           ; preds = %.lr.ph
  %i.cz = bitcast <4 x i32> %i.et to <2 x i64>
  %i.da = bitcast <4 x i32> %i.er to <2 x i64>
  %i.db = bitcast <4 x i32> %i.ep to <2 x i64>
  %i.dc = bitcast <4 x i32> %i.en to <2 x i64>
  %i.dd = bitcast <4 x i32> %i.ek to <2 x i64>
  %i.de = bitcast <4 x i32> %i.eh to <2 x i64>
  %i.df = bitcast <4 x i32> %i.ee to <2 x i64>
  %i.dg = bitcast <4 x i32> %i.eb to <2 x i64>
  br label %.preheader207.a

.preheader207.a:                                  ; preds = %.preheader207.loopexit, %bb.e
  %.0170.lcssa = phi <2 x i64> [ %storemerge806, %bb.e ], [ %i.cz, %.preheader207.loopexit ] ; 2 uses
  %.1167.lcssa = phi <2 x i64> [ %.0166, %bb.e ], [ %i.da, %.preheader207.loopexit ] ; 2 uses
  %.1163.lcssa = phi <2 x i64> [ %.0162, %bb.e ], [ %i.db, %.preheader207.loopexit ] ; 2 uses
  %.1152.lcssa = phi <2 x i64> [ %.0151, %bb.e ], [ %i.dc, %.preheader207.loopexit ] ; 2 uses
  %.1148.lcssa = phi <2 x i64> [ %.0147, %bb.e ], [ %i.dd, %.preheader207.loopexit ] ; 2 uses
  %.1144.lcssa = phi <2 x i64> [ %.0143, %bb.e ], [ %i.de, %.preheader207.loopexit ] ; 2 uses
  %.1138.lcssa = phi <2 x i64> [ %.0137, %bb.e ], [ %i.df, %.preheader207.loopexit ] ; 2 uses
  %.1134.lcssa = phi <2 x i64> [ %.0133, %bb.e ], [ %i.dg, %.preheader207.loopexit ] ; 2 uses
  %.0687.lcssa = phi i32 [ 0, %bb.e ], [ %i.k, %.preheader207.loopexit ] ; 2 uses
  %.0678.lcssa = phi ptr [ %i.bs, %bb.e ], [ %i.eu, %.preheader207.loopexit ]
  %.1663.lcssa = phi ptr [ %.0662262, %bb.e ], [ %i.ev, %.preheader207.loopexit ] ; 2 uses
  %i.dh = icmp slt i32 %.0687.lcssa, %6
  br i1 %i.dh, label %.lr.ph251.preheader, label %._crit_edge

.lr.ph251.preheader:                              ; preds = %.preheader207.a
  %i.di = bitcast <2 x i64> %.1134.lcssa to <4 x i32>
  %i.dj = bitcast <2 x i64> %.1138.lcssa to <4 x i32>
  %i.dk = bitcast <2 x i64> %.1144.lcssa to <4 x i32>
  %i.dl = bitcast <2 x i64> %.1148.lcssa to <4 x i32>
  %i.dm = bitcast <2 x i64> %.1152.lcssa to <4 x i32>
  %i.dn = bitcast <2 x i64> %.1163.lcssa to <4 x i32>
  %i.do = bitcast <2 x i64> %.1167.lcssa to <4 x i32>
  %i.dp = bitcast <2 x i64> %.0170.lcssa to <4 x i32>
  br label %.lr.ph251

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1663229 = phi ptr [ %i.ev, %.lr.ph ], [ %.0662262, %.lr.ph.preheader ] ; 3 uses
  %.0678228 = phi ptr [ %i.eu, %.lr.ph ], [ %i.bs, %.lr.ph.preheader ] ; 2 uses
  %.0687227 = phi i32 [ %i.ew, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.1134226 = phi <4 x i32> [ %i.eb, %.lr.ph ], [ %i.cr, %.lr.ph.preheader ]
  %.1138225 = phi <4 x i32> [ %i.ee, %.lr.ph ], [ %i.cs, %.lr.ph.preheader ]
  %.1144224 = phi <4 x i32> [ %i.eh, %.lr.ph ], [ %i.ct, %.lr.ph.preheader ]
  %.1148223 = phi <4 x i32> [ %i.ek, %.lr.ph ], [ %i.cu, %.lr.ph.preheader ]
  %.1152222 = phi <4 x i32> [ %i.en, %.lr.ph ], [ %i.cv, %.lr.ph.preheader ]
  %.1163221 = phi <4 x i32> [ %i.ep, %.lr.ph ], [ %i.cw, %.lr.ph.preheader ]
  %.1167220 = phi <4 x i32> [ %i.er, %.lr.ph ], [ %i.cx, %.lr.ph.preheader ]
  %.0170219 = phi <4 x i32> [ %i.et, %.lr.ph ], [ %i.cy, %.lr.ph.preheader ]
  %i.dq = load <2 x i64>, ptr %.0678228, align 1, !tbaa !108 ; 2 uses
  %i.dr = load <2 x i64>, ptr %.1663229, align 1, !tbaa !108 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1663229, i64 16
  %i.dt = load <2 x i64>, ptr %i.ds, align 1, !tbaa !108 ; 2 uses
  %8 = shufflevector <2 x i64> %i.dq, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.du = bitcast <2 x i64> %i.dr to <4 x i32>
  %i.dv = shufflevector <4 x i32> %i.du, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.dw = bitcast <2 x i64> %i.dt to <4 x i32>
  %i.dx = shufflevector <4 x i32> %i.dw, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.dy = bitcast <2 x i64> %i.dq to <8 x i16>    ; 4 uses
  %i.dz = bitcast <2 x i64> %i.dr to <8 x i16>    ; 2 uses
  %i.ea = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dy, <8 x i16> %i.dz)
  %i.eb = add <4 x i32> %i.ea, %.1134226          ; 2 uses
  %i.ec = bitcast <2 x i64> %i.dt to <8 x i16>    ; 2 uses
  %i.ed = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dy, <8 x i16> %i.ec)
  %i.ee = add <4 x i32> %i.ed, %.1138225          ; 2 uses
  %i.ef = bitcast <4 x i32> %i.dv to <8 x i16>    ; 2 uses
  %i.eg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dy, <8 x i16> %i.ef)
  %i.eh = add <4 x i32> %i.eg, %.1144224          ; 2 uses
  %i.ei = bitcast <4 x i32> %i.dx to <8 x i16>    ; 2 uses
  %i.ej = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dy, <8 x i16> %i.ei)
  %i.ek = add <4 x i32> %i.ej, %.1148223          ; 2 uses
  %i.el = bitcast <2 x i64> %8 to <8 x i16>       ; 4 uses
  %i.em = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.el, <8 x i16> %i.dz)
  %i.en = add <4 x i32> %i.em, %.1152222          ; 2 uses
  %i.eo = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.el, <8 x i16> %i.ec)
  %i.ep = add <4 x i32> %i.eo, %.1163221          ; 2 uses
  %i.eq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.el, <8 x i16> %i.ef)
  %i.er = add <4 x i32> %i.eq, %.1167220          ; 2 uses
  %i.es = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.el, <8 x i16> %i.ei)
  %i.et = add <4 x i32> %i.es, %.0170219          ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0678228, i64 16 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.1663229, i64 32 ; 2 uses
  %i.ew = add nuw nsw i32 %.0687227, 2            ; 2 uses
  %i.ex = or disjoint i32 %i.ew, 1
  %i.ey = icmp slt i32 %i.ex, %6
  br i1 %i.ey, label %.lr.ph, label %.preheader207.loopexit, !llvm.loop !1304

.lr.ph251:                                        ; preds = %.lr.ph251.preheader, %.lr.ph251
  %.2664250 = phi ptr [ %i.gq, %.lr.ph251 ], [ %.1663.lcssa, %.lr.ph251.preheader ] ; 2 uses
  %.1679249 = phi ptr [ %i.gp, %.lr.ph251 ], [ %.0678.lcssa, %.lr.ph251.preheader ] ; 2 uses
  %.1688248 = phi i32 [ %i.gr, %.lr.ph251 ], [ %.0687.lcssa, %.lr.ph251.preheader ]
  %.2135247 = phi <4 x i32> [ %i.ga, %.lr.ph251 ], [ %i.di, %.lr.ph251.preheader ]
  %.2139246 = phi <4 x i32> [ %i.gc, %.lr.ph251 ], [ %i.dj, %.lr.ph251.preheader ]
  %.2145245 = phi <4 x i32> [ %i.ge, %.lr.ph251 ], [ %i.dk, %.lr.ph251.preheader ]
  %.2149244 = phi <4 x i32> [ %i.gg, %.lr.ph251 ], [ %i.dl, %.lr.ph251.preheader ]
  %.2153243 = phi <4 x i32> [ %i.gi, %.lr.ph251 ], [ %i.dm, %.lr.ph251.preheader ]
  %.2164242 = phi <4 x i32> [ %i.gk, %.lr.ph251 ], [ %i.dn, %.lr.ph251.preheader ]
  %.2168241 = phi <4 x i32> [ %i.gm, %.lr.ph251 ], [ %i.do, %.lr.ph251.preheader ]
  %.1171240 = phi <4 x i32> [ %i.go, %.lr.ph251 ], [ %i.dp, %.lr.ph251.preheader ]
  %i.ez = load double, ptr %.1679249, align 1, !tbaa !108
  %i.fa = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fb = bitcast <2 x double> %i.fa to <2 x i64>
  %i.fc = shufflevector <2 x i64> %i.fb, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fd = load <8 x i16>, ptr %.2664250, align 1, !tbaa !108 ; 5 uses
  %i.fe = bitcast <2 x i64> %i.fc to <4 x i32>
  %i.ff = shufflevector <4 x i32> %i.fe, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.fg = shufflevector <8 x i16> %i.fd, <8 x i16> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 4 uses
  %i.fh = bitcast <2 x i64> %i.fc to <8 x i16>    ; 4 uses
  %i.fi = mul <8 x i16> %i.fd, %i.fh              ; 2 uses
  %i.fj = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.fh, <8 x i16> %i.fd) ; 2 uses
  %i.fk = mul <8 x i16> %i.fg, %i.fh              ; 2 uses
  %i.fl = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.fh, <8 x i16> %i.fg) ; 2 uses
  %i.fm = bitcast <4 x i32> %i.ff to <8 x i16>    ; 4 uses
  %i.fn = mul <8 x i16> %i.fd, %i.fm              ; 2 uses
  %i.fo = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.fm, <8 x i16> %i.fd) ; 2 uses
  %i.fp = mul <8 x i16> %i.fg, %i.fm              ; 2 uses
  %i.fq = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.fm, <8 x i16> %i.fg) ; 2 uses
  %i.fr = shufflevector <8 x i16> %i.fi, <8 x i16> %i.fj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fs = shufflevector <8 x i16> %i.fi, <8 x i16> %i.fj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ft = shufflevector <8 x i16> %i.fk, <8 x i16> %i.fl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fu = shufflevector <8 x i16> %i.fk, <8 x i16> %i.fl, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fv = shufflevector <8 x i16> %i.fn, <8 x i16> %i.fo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fw = shufflevector <8 x i16> %i.fn, <8 x i16> %i.fo, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fx = shufflevector <8 x i16> %i.fp, <8 x i16> %i.fq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fy = shufflevector <8 x i16> %i.fp, <8 x i16> %i.fq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fz = bitcast <8 x i16> %i.fr to <4 x i32>
  %i.ga = add <4 x i32> %.2135247, %i.fz          ; 2 uses
  %i.gb = bitcast <8 x i16> %i.fs to <4 x i32>
  %i.gc = add <4 x i32> %.2139246, %i.gb          ; 2 uses
  %i.gd = bitcast <8 x i16> %i.ft to <4 x i32>
  %i.ge = add <4 x i32> %.2145245, %i.gd          ; 2 uses
  %i.gf = bitcast <8 x i16> %i.fu to <4 x i32>
  %i.gg = add <4 x i32> %.2149244, %i.gf          ; 2 uses
  %i.gh = bitcast <8 x i16> %i.fv to <4 x i32>
  %i.gi = add <4 x i32> %.2153243, %i.gh          ; 2 uses
  %i.gj = bitcast <8 x i16> %i.fw to <4 x i32>
  %i.gk = add <4 x i32> %.2164242, %i.gj          ; 2 uses
  %i.gl = bitcast <8 x i16> %i.fx to <4 x i32>
  %i.gm = add <4 x i32> %.2168241, %i.gl          ; 2 uses
  %i.gn = bitcast <8 x i16> %i.fy to <4 x i32>
  %i.go = add <4 x i32> %.1171240, %i.gn          ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.1679249, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %.2664250, i64 16 ; 2 uses
  %i.gr = add nuw nsw i32 %.1688248, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.gr, %6
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph251, !llvm.loop !1305

._crit_edge.loopexit:                             ; preds = %.lr.ph251
  %i.gs = bitcast <4 x i32> %i.go to <2 x i64>
  %i.gt = bitcast <4 x i32> %i.gm to <2 x i64>
  %i.gu = bitcast <4 x i32> %i.gk to <2 x i64>
  %i.gv = bitcast <4 x i32> %i.gi to <2 x i64>
  %i.gw = bitcast <4 x i32> %i.gg to <2 x i64>
  %i.gx = bitcast <4 x i32> %i.ge to <2 x i64>
  %i.gy = bitcast <4 x i32> %i.gc to <2 x i64>
  %i.gz = bitcast <4 x i32> %i.ga to <2 x i64>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader207.a
  %.1171.lcssa = phi <2 x i64> [ %.0170.lcssa, %.preheader207.a ], [ %i.gs, %._crit_edge.loopexit ] ; 2 uses
  %.2168.lcssa = phi <2 x i64> [ %.1167.lcssa, %.preheader207.a ], [ %i.gt, %._crit_edge.loopexit ] ; 2 uses
  %.2164.lcssa = phi <2 x i64> [ %.1163.lcssa, %.preheader207.a ], [ %i.gu, %._crit_edge.loopexit ] ; 2 uses
  %.2153.lcssa = phi <2 x i64> [ %.1152.lcssa, %.preheader207.a ], [ %i.gv, %._crit_edge.loopexit ] ; 2 uses
  %.2149.lcssa = phi <2 x i64> [ %.1148.lcssa, %.preheader207.a ], [ %i.gw, %._crit_edge.loopexit ] ; 2 uses
  %.2145.lcssa = phi <2 x i64> [ %.1144.lcssa, %.preheader207.a ], [ %i.gx, %._crit_edge.loopexit ] ; 2 uses
  %.2139.lcssa = phi <2 x i64> [ %.1138.lcssa, %.preheader207.a ], [ %i.gy, %._crit_edge.loopexit ] ; 2 uses
  %.2135.lcssa = phi <2 x i64> [ %.1134.lcssa, %.preheader207.a ], [ %i.gz, %._crit_edge.loopexit ] ; 2 uses
  %.2664.lcssa = phi ptr [ %.1663.lcssa, %.preheader207.a ], [ %i.gq, %._crit_edge.loopexit ] ; 2 uses
  br i1 %7, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ha = bitcast <2 x i64> %.2145.lcssa to <4 x i32> ; 2 uses
  %i.hb = bitcast <2 x i64> %.2149.lcssa to <4 x i32> ; 2 uses
  %i.hc = bitcast <2 x i64> %.2168.lcssa to <4 x i32> ; 2 uses
  %i.hd = bitcast <2 x i64> %.1171.lcssa to <4 x i32> ; 2 uses
  %i.he = bitcast <2 x i64> %.2135.lcssa to <4 x i32> ; 2 uses
  %i.hf = shufflevector <4 x i32> %i.he, <4 x i32> %i.hc, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.hg = bitcast <4 x i32> %i.hf to <2 x i64>    ; 2 uses
  %i.hh = shufflevector <4 x i32> %i.he, <4 x i32> %i.hc, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.hi = bitcast <4 x i32> %i.hh to <2 x i64>    ; 2 uses
  %i.hj = bitcast <2 x i64> %.2139.lcssa to <4 x i32> ; 2 uses
  %i.hk = shufflevector <4 x i32> %i.hj, <4 x i32> %i.hd, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.hl = bitcast <4 x i32> %i.hk to <2 x i64>    ; 2 uses
  %i.hm = shufflevector <4 x i32> %i.hj, <4 x i32> %i.hd, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.hn = bitcast <4 x i32> %i.hm to <2 x i64>    ; 2 uses
  %i.ho = bitcast <2 x i64> %.2153.lcssa to <4 x i32> ; 2 uses
  %i.hp = shufflevector <4 x i32> %i.ho, <4 x i32> %i.ha, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.hq = bitcast <4 x i32> %i.hp to <2 x i64>    ; 2 uses
  %i.hr = shufflevector <4 x i32> %i.ho, <4 x i32> %i.ha, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.hs = bitcast <4 x i32> %i.hr to <2 x i64>    ; 2 uses
  %i.ht = bitcast <2 x i64> %.2164.lcssa to <4 x i32> ; 2 uses
  %i.hu = shufflevector <4 x i32> %i.ht, <4 x i32> %i.hb, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.hv = bitcast <4 x i32> %i.hu to <2 x i64>    ; 2 uses
  %i.hw = shufflevector <4 x i32> %i.ht, <4 x i32> %i.hb, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.hx = bitcast <4 x i32> %i.hw to <2 x i64>    ; 2 uses
  %i.hy = shufflevector <2 x i64> %i.hg, <2 x i64> %i.hq, <2 x i32> <i32 0, i32 2>
  %i.hz = shufflevector <2 x i64> %i.hg, <2 x i64> %i.hq, <2 x i32> <i32 1, i32 3>
  %i.ia = shufflevector <2 x i64> %i.hs, <2 x i64> %i.hi, <2 x i32> <i32 0, i32 2>
  %i.ib = shufflevector <2 x i64> %i.hs, <2 x i64> %i.hi, <2 x i32> <i32 1, i32 3>
  %i.ic = shufflevector <2 x i64> %i.hl, <2 x i64> %i.hv, <2 x i32> <i32 0, i32 2>
  %i.id = shufflevector <2 x i64> %i.hl, <2 x i64> %i.hv, <2 x i32> <i32 1, i32 3>
  %i.ie = shufflevector <2 x i64> %i.hx, <2 x i64> %i.hn, <2 x i32> <i32 0, i32 2>
  %i.if = shufflevector <2 x i64> %i.hx, <2 x i64> %i.hn, <2 x i32> <i32 1, i32 3>
  %i.ig = bitcast <2 x i64> %i.hz to <4 x i32>
  %i.ih = shufflevector <4 x i32> %i.ig, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ii = bitcast <4 x i32> %i.ih to <2 x i64>
  %i.ij = bitcast <2 x i64> %i.ib to <4 x i32>
  %i.ik = shufflevector <4 x i32> %i.ij, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.il = bitcast <4 x i32> %i.ik to <2 x i64>
  %i.im = bitcast <2 x i64> %i.id to <4 x i32>
  %i.in = shufflevector <4 x i32> %i.im, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.io = bitcast <4 x i32> %i.in to <2 x i64>
  %i.ip = bitcast <2 x i64> %i.if to <4 x i32>
  %i.iq = shufflevector <4 x i32> %i.ip, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ir = bitcast <4 x i32> %i.iq to <2 x i64>
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.2172 = phi <2 x i64> [ %i.ir, %bb.f ], [ %.1171.lcssa, %._crit_edge ]
  %.3169 = phi <2 x i64> [ %i.ie, %bb.f ], [ %.2168.lcssa, %._crit_edge ]
  %.3165 = phi <2 x i64> [ %i.io, %bb.f ], [ %.2164.lcssa, %._crit_edge ]
  %.3154 = phi <2 x i64> [ %i.ic, %bb.f ], [ %.2153.lcssa, %._crit_edge ]
  %.3150 = phi <2 x i64> [ %i.il, %bb.f ], [ %.2149.lcssa, %._crit_edge ]
  %.3146 = phi <2 x i64> [ %i.ia, %bb.f ], [ %.2145.lcssa, %._crit_edge ]
  %.3140 = phi <2 x i64> [ %i.ii, %bb.f ], [ %.2139.lcssa, %._crit_edge ]
  %.3136 = phi <2 x i64> [ %i.hy, %bb.f ], [ %.2135.lcssa, %._crit_edge ]
  store <2 x i64> %.3136, ptr %.2657263, align 16, !tbaa !108
  %i.is = getelementptr inbounds nuw i8, ptr %.2657263, i64 16
  store <2 x i64> %.3140, ptr %i.is, align 16, !tbaa !108
  %i.it = getelementptr inbounds nuw i8, ptr %.2657263, i64 32
  store <2 x i64> %.3146, ptr %i.it, align 16, !tbaa !108
  %i.iu = getelementptr inbounds nuw i8, ptr %.2657263, i64 48
  store <2 x i64> %.3150, ptr %i.iu, align 16, !tbaa !108
  %i.iv = getelementptr inbounds nuw i8, ptr %.2657263, i64 64
  store <2 x i64> %.3154, ptr %i.iv, align 16, !tbaa !108
  %i.iw = getelementptr inbounds nuw i8, ptr %.2657263, i64 80
  store <2 x i64> %.3165, ptr %i.iw, align 16, !tbaa !108
  %i.ix = getelementptr inbounds nuw i8, ptr %.2657263, i64 96
  store <2 x i64> %.3169, ptr %i.ix, align 16, !tbaa !108
  %i.iy = getelementptr inbounds nuw i8, ptr %.2657263, i64 112
  store <2 x i64> %.2172, ptr %i.iy, align 16, !tbaa !108
  %i.iz = getelementptr inbounds nuw i8, ptr %.2657263, i64 128 ; 2 uses
  %i.ja = add nuw nsw i32 %.0674261, 8            ; 2 uses
  %i.jb = or disjoint i32 %i.ja, 7
  %i.jc = icmp slt i32 %i.jb, %4
  br i1 %i.jc, label %.lr.ph265, label %.preheader210, !llvm.loop !1306

.preheader209:                                    ; preds = %bb.k, %.preheader210
  %.1675.lcssa = phi i32 [ %.0674.lcssa, %.preheader210 ], [ %i.ne, %bb.k ] ; 3 uses
  %.3665.lcssa = phi ptr [ %.0662.lcssa, %.preheader210 ], [ %.5667.lcssa, %bb.k ] ; 2 uses
  %.3.lcssa = phi ptr [ %.2657.lcssa, %.preheader210 ], [ %i.nd, %bb.k ] ; 2 uses
  %i.jd = or disjoint i32 %.1675.lcssa, 1
  %i.je = icmp slt i32 %i.jd, %4
  br i1 %i.je, label %.lr.ph331, label %.preheader208

.lr.ph302:                                        ; preds = %.preheader210, %bb.k
  %.3301 = phi ptr [ %i.nd, %bb.k ], [ %.2657.lcssa, %.preheader210 ] ; 9 uses
  %.3665300 = phi ptr [ %.5667.lcssa, %bb.k ], [ %.0662.lcssa, %.preheader210 ] ; 3 uses
  %.1675299 = phi i32 [ %i.ne, %bb.k ], [ %.0674.lcssa, %.preheader210 ]
  br i1 %i.g, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph302
  %i.jf = load <2 x i64>, ptr %.3301, align 16, !tbaa !108
  %i.jg = getelementptr inbounds nuw i8, ptr %.3301, i64 16
  %i.jh = load <2 x i64>, ptr %i.jg, align 16, !tbaa !108
  %i.ji = getelementptr inbounds nuw i8, ptr %.3301, i64 32
  %i.jj = load <2 x i64>, ptr %i.ji, align 16, !tbaa !108
  %i.jk = getelementptr inbounds nuw i8, ptr %.3301, i64 48
  %i.jl = load <2 x i64>, ptr %i.jk, align 16, !tbaa !108
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph302, %bb.h
  %.0184 = phi <2 x i64> [ %i.jh, %bb.h ], [ zeroinitializer, %.lr.ph302 ] ; 2 uses
  %.0180 = phi <2 x i64> [ %i.jj, %bb.h ], [ zeroinitializer, %.lr.ph302 ] ; 2 uses
  %.0173 = phi <2 x i64> [ %i.jf, %bb.h ], [ zeroinitializer, %.lr.ph302 ] ; 2 uses
  %storemerge803 = phi <2 x i64> [ %i.jl, %bb.h ], [ zeroinitializer, %.lr.ph302 ] ; 2 uses
  br i1 %i.h, label %.lr.ph277.preheader, label %.preheader206.a

.lr.ph277.preheader:                              ; preds = %bb.i
  %i.jm = bitcast <2 x i64> %.0173 to <4 x i32>
  %i.jn = bitcast <2 x i64> %.0184 to <4 x i32>
  %i.jo = bitcast <2 x i64> %.0180 to <4 x i32>
  %i.jp = bitcast <2 x i64> %storemerge803 to <4 x i32>
  br label %.lr.ph277

.preheader206.loopexit:                           ; preds = %.lr.ph277
  %i.jq = bitcast <4 x i32> %i.ko to <2 x i64>
  %i.jr = bitcast <4 x i32> %i.km to <2 x i64>
  %i.js = bitcast <4 x i32> %i.kj to <2 x i64>
  %i.jt = bitcast <4 x i32> %i.kg to <2 x i64>
  %i.ju = getelementptr i8, ptr %.3665300, i64 %i.o
  %scevgep = getelementptr i8, ptr %i.ju, i64 16
  br label %.preheader206.a

.preheader206.a:                                  ; preds = %.preheader206.loopexit, %bb.i
  %.1185.lcssa = phi <2 x i64> [ %.0184, %bb.i ], [ %i.js, %.preheader206.loopexit ] ; 2 uses
  %.1181.lcssa = phi <2 x i64> [ %.0180, %bb.i ], [ %i.jr, %.preheader206.loopexit ] ; 2 uses
  %.0177.lcssa = phi <2 x i64> [ %storemerge803, %bb.i ], [ %i.jq, %.preheader206.loopexit ] ; 2 uses
  %.1174.lcssa = phi <2 x i64> [ %.0173, %bb.i ], [ %i.jt, %.preheader206.loopexit ] ; 2 uses
  %.0691.lcssa = phi i32 [ 0, %bb.i ], [ %i.k, %.preheader206.loopexit ] ; 2 uses
  %.0689.lcssa = phi ptr [ %i.bs, %bb.i ], [ %i.kp, %.preheader206.loopexit ]
  %.4666.lcssa = phi ptr [ %.3665300, %bb.i ], [ %scevgep, %.preheader206.loopexit ] ; 2 uses
  %i.jv = icmp slt i32 %.0691.lcssa, %6
  br i1 %i.jv, label %.lr.ph292.preheader, label %._crit_edge293

.lr.ph292.preheader:                              ; preds = %.preheader206.a
  %i.jw = bitcast <2 x i64> %.1174.lcssa to <4 x i32>
  %i.jx = bitcast <2 x i64> %.1185.lcssa to <4 x i32>
  %i.jy = bitcast <2 x i64> %.1181.lcssa to <4 x i32>
  %i.jz = bitcast <2 x i64> %.0177.lcssa to <4 x i32>
  br label %.lr.ph292

.lr.ph277:                                        ; preds = %.lr.ph277.preheader, %.lr.ph277
  %.4666275 = phi ptr [ %i.kq, %.lr.ph277 ], [ %.3665300, %.lr.ph277.preheader ] ; 2 uses
  %.0689274 = phi ptr [ %i.kp, %.lr.ph277 ], [ %i.bs, %.lr.ph277.preheader ] ; 2 uses
  %.0691273 = phi i32 [ %i.kr, %.lr.ph277 ], [ 0, %.lr.ph277.preheader ]
  %.1174272 = phi <4 x i32> [ %i.kg, %.lr.ph277 ], [ %i.jm, %.lr.ph277.preheader ]
  %.0177271 = phi <4 x i32> [ %i.ko, %.lr.ph277 ], [ %i.jp, %.lr.ph277.preheader ]
  %.1181270 = phi <4 x i32> [ %i.km, %.lr.ph277 ], [ %i.jo, %.lr.ph277.preheader ]
  %.1185269 = phi <4 x i32> [ %i.kj, %.lr.ph277 ], [ %i.jn, %.lr.ph277.preheader ]
  %i.ka = load <2 x i64>, ptr %.0689274, align 1, !tbaa !108 ; 2 uses
  %i.kb = load <2 x i64>, ptr %.4666275, align 1, !tbaa !108 ; 2 uses
  %9 = shufflevector <2 x i64> %i.ka, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %.cast805 = bitcast <2 x i64> %i.kb to <4 x i32>
  %i.kc = shufflevector <4 x i32> %.cast805, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.kd = bitcast <2 x i64> %i.ka to <8 x i16>    ; 2 uses
  %i.ke = bitcast <2 x i64> %i.kb to <8 x i16>    ; 2 uses
  %i.kf = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.kd, <8 x i16> %i.ke)
  %i.kg = add <4 x i32> %i.kf, %.1174272          ; 2 uses
  %i.kh = bitcast <4 x i32> %i.kc to <8 x i16>    ; 2 uses
  %i.ki = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.kd, <8 x i16> %i.kh)
  %i.kj = add <4 x i32> %i.ki, %.1185269          ; 2 uses
  %i.kk = bitcast <2 x i64> %9 to <8 x i16>       ; 2 uses
  %i.kl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.kk, <8 x i16> %i.ke)
  %i.km = add <4 x i32> %i.kl, %.1181270          ; 2 uses
  %i.kn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.kk, <8 x i16> %i.kh)
  %i.ko = add <4 x i32> %i.kn, %.0177271          ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0689274, i64 16 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.4666275, i64 16
  %i.kr = add nuw nsw i32 %.0691273, 2            ; 2 uses
  %i.ks = or disjoint i32 %i.kr, 1
  %i.kt = icmp slt i32 %i.ks, %6
  br i1 %i.kt, label %.lr.ph277, label %.preheader206.loopexit, !llvm.loop !1307

.lr.ph292:                                        ; preds = %.lr.ph292.preheader, %.lr.ph292
  %.5667291 = phi ptr [ %i.lz, %.lr.ph292 ], [ %.4666.lcssa, %.lr.ph292.preheader ] ; 2 uses
  %.1690290 = phi ptr [ %i.ly, %.lr.ph292 ], [ %.0689.lcssa, %.lr.ph292.preheader ] ; 2 uses
  %.1692289 = phi i32 [ %i.ma, %.lr.ph292 ], [ %.0691.lcssa, %.lr.ph292.preheader ]
  %.2175288 = phi <4 x i32> [ %i.lr, %.lr.ph292 ], [ %i.jw, %.lr.ph292.preheader ]
  %.1178287 = phi <4 x i32> [ %i.lx, %.lr.ph292 ], [ %i.jz, %.lr.ph292.preheader ]
  %.2182286 = phi <4 x i32> [ %i.lv, %.lr.ph292 ], [ %i.jy, %.lr.ph292.preheader ]
  %.2186285 = phi <4 x i32> [ %i.lt, %.lr.ph292 ], [ %i.jx, %.lr.ph292.preheader ]
  %i.ku = load double, ptr %.1690290, align 1, !tbaa !108
  %i.kv = insertelement <2 x double> poison, double %i.ku, i64 0
  %i.kw = bitcast <2 x double> %i.kv to <2 x i64>
  %i.kx = shufflevector <2 x i64> %i.kw, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ky = load double, ptr %.5667291, align 1, !tbaa !108
  %i.kz = insertelement <2 x double> poison, double %i.ky, i64 0
  %i.la = bitcast <2 x double> %i.kz to <2 x i64>
  %i.lb = shufflevector <2 x i64> %i.la, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.lc = bitcast <2 x i64> %i.kx to <4 x i32>
  %i.ld = shufflevector <4 x i32> %i.lc, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.le = bitcast <2 x i64> %i.lb to <8 x i16>
  %i.lf = shufflevector <8 x i16> %i.le, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 6, i32 7, i32 4> ; 4 uses
  %i.lg = bitcast <2 x i64> %i.kx to <8 x i16>    ; 2 uses
  %i.lh = mul <8 x i16> %i.lf, %i.lg              ; 2 uses
  %i.li = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.lg, <8 x i16> %i.lf) ; 2 uses
  %i.lj = bitcast <4 x i32> %i.ld to <8 x i16>    ; 2 uses
  %i.lk = mul <8 x i16> %i.lf, %i.lj              ; 2 uses
  %i.ll = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.lj, <8 x i16> %i.lf) ; 2 uses
  %i.lm = shufflevector <8 x i16> %i.lh, <8 x i16> %i.li, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ln = shufflevector <8 x i16> %i.lh, <8 x i16> %i.li, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lo = shufflevector <8 x i16> %i.lk, <8 x i16> %i.ll, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lp = shufflevector <8 x i16> %i.lk, <8 x i16> %i.ll, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lq = bitcast <8 x i16> %i.lm to <4 x i32>
  %i.lr = add <4 x i32> %.2175288, %i.lq          ; 2 uses
  %i.ls = bitcast <8 x i16> %i.ln to <4 x i32>
  %i.lt = add <4 x i32> %.2186285, %i.ls          ; 2 uses
  %i.lu = bitcast <8 x i16> %i.lo to <4 x i32>
  %i.lv = add <4 x i32> %.2182286, %i.lu          ; 2 uses
  %i.lw = bitcast <8 x i16> %i.lp to <4 x i32>
  %i.lx = add <4 x i32> %.1178287, %i.lw          ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.1690290, i64 8
  %i.lz = getelementptr inbounds nuw i8, ptr %.5667291, i64 8 ; 2 uses
  %i.ma = add nuw nsw i32 %.1692289, 1            ; 2 uses
  %exitcond741.not.a = icmp eq i32 %i.ma, %6
  br i1 %exitcond741.not.a, label %._crit_edge293.loopexit, label %.lr.ph292, !llvm.loop !1308

._crit_edge293.loopexit:                          ; preds = %.lr.ph292
  %i.mb = bitcast <4 x i32> %i.lx to <2 x i64>
  %i.mc = bitcast <4 x i32> %i.lv to <2 x i64>
  %i.md = bitcast <4 x i32> %i.lt to <2 x i64>
  %i.me = bitcast <4 x i32> %i.lr to <2 x i64>
  br label %._crit_edge293

._crit_edge293:                                   ; preds = %._crit_edge293.loopexit, %.preheader206.a
  %.2186.lcssa = phi <2 x i64> [ %.1185.lcssa, %.preheader206.a ], [ %i.md, %._crit_edge293.loopexit ] ; 2 uses
  %.2182.lcssa = phi <2 x i64> [ %.1181.lcssa, %.preheader206.a ], [ %i.mc, %._crit_edge293.loopexit ] ; 2 uses
  %.1178.lcssa = phi <2 x i64> [ %.0177.lcssa, %.preheader206.a ], [ %i.mb, %._crit_edge293.loopexit ] ; 2 uses
  %.2175.lcssa = phi <2 x i64> [ %.1174.lcssa, %.preheader206.a ], [ %i.me, %._crit_edge293.loopexit ] ; 2 uses
  %.5667.lcssa = phi ptr [ %.4666.lcssa, %.preheader206.a ], [ %i.lz, %._crit_edge293.loopexit ] ; 2 uses
  br i1 %7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge293
  %i.mf = bitcast <2 x i64> %.2186.lcssa to <4 x i32> ; 2 uses
  %i.mg = bitcast <2 x i64> %.1178.lcssa to <4 x i32> ; 2 uses
  %i.mh = bitcast <2 x i64> %.2175.lcssa to <4 x i32> ; 2 uses
  %i.mi = shufflevector <4 x i32> %i.mh, <4 x i32> %i.mg, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.mj = bitcast <4 x i32> %i.mi to <2 x i64>    ; 2 uses
  %i.mk = shufflevector <4 x i32> %i.mh, <4 x i32> %i.mg, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.ml = bitcast <4 x i32> %i.mk to <2 x i64>    ; 2 uses
  %i.mm = bitcast <2 x i64> %.2182.lcssa to <4 x i32> ; 2 uses
  %i.mn = shufflevector <4 x i32> %i.mm, <4 x i32> %i.mf, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.mo = bitcast <4 x i32> %i.mn to <2 x i64>    ; 2 uses
  %i.mp = shufflevector <4 x i32> %i.mm, <4 x i32> %i.mf, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.mq = bitcast <4 x i32> %i.mp to <2 x i64>    ; 2 uses
  %i.mr = shufflevector <2 x i64> %i.mj, <2 x i64> %i.mo, <2 x i32> <i32 0, i32 2>
  %i.ms = shufflevector <2 x i64> %i.mj, <2 x i64> %i.mo, <2 x i32> <i32 1, i32 3>
  %i.mt = shufflevector <2 x i64> %i.mq, <2 x i64> %i.ml, <2 x i32> <i32 0, i32 2>
  %i.mu = shufflevector <2 x i64> %i.mq, <2 x i64> %i.ml, <2 x i32> <i32 1, i32 3>
  %i.mv = bitcast <2 x i64> %i.ms to <4 x i32>
  %i.mw = shufflevector <4 x i32> %i.mv, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.mx = bitcast <4 x i32> %i.mw to <2 x i64>
  %.cast804 = bitcast <2 x i64> %i.mu to <4 x i32>
  %i.my = shufflevector <4 x i32> %.cast804, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.mz = bitcast <4 x i32> %i.my to <2 x i64>
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge293
  %.3187 = phi <2 x i64> [ %i.mx, %bb.j ], [ %.2186.lcssa, %._crit_edge293 ]
  %.3183 = phi <2 x i64> [ %i.mt, %bb.j ], [ %.2182.lcssa, %._crit_edge293 ]
  %.2179 = phi <2 x i64> [ %i.mz, %bb.j ], [ %.1178.lcssa, %._crit_edge293 ]
  %.3176 = phi <2 x i64> [ %i.mr, %bb.j ], [ %.2175.lcssa, %._crit_edge293 ]
  store <2 x i64> %.3176, ptr %.3301, align 16, !tbaa !108
  %i.na = getelementptr inbounds nuw i8, ptr %.3301, i64 16
  store <2 x i64> %.3187, ptr %i.na, align 16, !tbaa !108
  %i.nb = getelementptr inbounds nuw i8, ptr %.3301, i64 32
  store <2 x i64> %.3183, ptr %i.nb, align 16, !tbaa !108
  %i.nc = getelementptr inbounds nuw i8, ptr %.3301, i64 48
  store <2 x i64> %.2179, ptr %i.nc, align 16, !tbaa !108
  %i.nd = getelementptr inbounds nuw i8, ptr %.3301, i64 64 ; 2 uses
  %i.ne = add nuw nsw i32 %.1675299, 4            ; 3 uses
  %i.nf = or disjoint i32 %i.ne, 3
  %i.ng = icmp slt i32 %i.nf, %4
  br i1 %i.ng, label %.lr.ph302, label %.preheader209, !llvm.loop !1309

.preheader208:                                    ; preds = %._crit_edge324, %.preheader209
  %.2676.lcssa = phi i32 [ %.1675.lcssa, %.preheader209 ], [ %i.qn, %._crit_edge324 ] ; 2 uses
  %.6668.lcssa = phi ptr [ %.3665.lcssa, %.preheader209 ], [ %.8670.lcssa, %._crit_edge324 ]
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader209 ], [ %i.qm, %._crit_edge324 ] ; 2 uses
  %i.nh = icmp slt i32 %.2676.lcssa, %4
  br i1 %i.nh, label %.lr.ph354, label %._crit_edge355

.lr.ph331:                                        ; preds = %.preheader209, %._crit_edge324
  %.4330 = phi ptr [ %i.qm, %._crit_edge324 ], [ %.3.lcssa, %.preheader209 ] ; 5 uses
  %.6668329 = phi ptr [ %.8670.lcssa, %._crit_edge324 ], [ %.3665.lcssa, %.preheader209 ] ; 4 uses
  %.2676328 = phi i32 [ %i.qn, %._crit_edge324 ], [ %.1675.lcssa, %.preheader209 ]
  br i1 %i.g, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph331
  %i.ni = load <2 x i64>, ptr %.4330, align 16, !tbaa !108
  %i.nj = getelementptr inbounds nuw i8, ptr %.4330, i64 16
  %i.nk = load <2 x i64>, ptr %i.nj, align 16, !tbaa !108
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph331, %bb.l
  %.0158 = phi <2 x i64> [ %i.ni, %bb.l ], [ zeroinitializer, %.lr.ph331 ] ; 2 uses
  %storemerge802 = phi <2 x i64> [ %i.nk, %bb.l ], [ zeroinitializer, %.lr.ph331 ] ; 2 uses
  br i1 %i.h, label %.lr.ph312.preheader, label %.preheader205

.lr.ph312.preheader:                              ; preds = %bb.m
  %i.nl = bitcast <2 x i64> %.0158 to <4 x i32>   ; 2 uses
  %i.nm = bitcast <2 x i64> %storemerge802 to <4 x i32> ; 2 uses
  br i1 %i.v, label %.lr.ph312.epil.preheader, label %.lr.ph312

.preheader205.loopexit.unr-lcssa:                 ; preds = %.lr.ph312
  br i1 %lcmp.mod.not.not, label %.lr.ph312.epil.preheader, label %.preheader205.loopexit

.lr.ph312.epil.preheader:                         ; preds = %.preheader205.loopexit.unr-lcssa, %.lr.ph312.preheader
  %.7669310.epil.init = phi ptr [ %.6668329, %.lr.ph312.preheader ], [ %i.ph, %.preheader205.loopexit.unr-lcssa ]
  %.0693309.epil.init = phi ptr [ %i.bs, %.lr.ph312.preheader ], [ %i.pg, %.preheader205.loopexit.unr-lcssa ] ; 2 uses
  %.0155307.epil.init = phi <4 x i32> [ %i.nm, %.lr.ph312.preheader ], [ %i.pf, %.preheader205.loopexit.unr-lcssa ]
  %.1159306.epil.init = phi <4 x i32> [ %i.nl, %.lr.ph312.preheader ], [ %i.pc, %.preheader205.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1362)
  %i.nn = load <8 x i16>, ptr %.0693309.epil.init, align 1, !tbaa !108 ; 2 uses
  %i.no = load double, ptr %.7669310.epil.init, align 1, !tbaa !108
  %i.np = insertelement <2 x double> poison, double %i.no, i64 0
  %i.nq = bitcast <2 x double> %i.np to <2 x i64>
  %i.nr = shufflevector <2 x i64> %i.nq, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %.cast.epil = bitcast <2 x i64> %i.nr to <4 x i32>
  %i.ns = shufflevector <4 x i32> %.cast.epil, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.nt = bitcast <2 x i64> %i.nr to <8 x i16>
  %i.nu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.nn, <8 x i16> %i.nt)
  %i.nv = add <4 x i32> %i.nu, %.1159306.epil.init
  %i.nw = bitcast <4 x i32> %i.ns to <8 x i16>
  %i.nx = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.nn, <8 x i16> %i.nw)
  %i.ny = add <4 x i32> %i.nx, %.0155307.epil.init
  %i.nz = getelementptr inbounds nuw i8, ptr %.0693309.epil.init, i64 16
  br label %.preheader205.loopexit

.preheader205.loopexit:                           ; preds = %.preheader205.loopexit.unr-lcssa, %.lr.ph312.epil.preheader
  %.lcssa1348 = phi <4 x i32> [ %i.pc, %.preheader205.loopexit.unr-lcssa ], [ %i.nv, %.lr.ph312.epil.preheader ]
  %.lcssa1347 = phi <4 x i32> [ %i.pf, %.preheader205.loopexit.unr-lcssa ], [ %i.ny, %.lr.ph312.epil.preheader ]
  %.lcssa1346 = phi ptr [ %i.pg, %.preheader205.loopexit.unr-lcssa ], [ %i.nz, %.lr.ph312.epil.preheader ]
  %i.oa = bitcast <4 x i32> %.lcssa1347 to <2 x i64>
  %i.ob = bitcast <4 x i32> %.lcssa1348 to <2 x i64>
  %i.oc = getelementptr i8, ptr %.6668329, i64 %i.p
  %scevgep742.a = getelementptr i8, ptr %i.oc, i64 8
  br label %.preheader205

.preheader205:                                    ; preds = %.preheader205.loopexit, %bb.m
  %.1159.lcssa = phi <2 x i64> [ %.0158, %bb.m ], [ %i.ob, %.preheader205.loopexit ] ; 2 uses
  %.0155.lcssa = phi <2 x i64> [ %storemerge802, %bb.m ], [ %i.oa, %.preheader205.loopexit ] ; 2 uses
  %.0695.lcssa = phi i32 [ 0, %bb.m ], [ %i.k, %.preheader205.loopexit ] ; 2 uses
  %.0693.lcssa = phi ptr [ %i.bs, %bb.m ], [ %.lcssa1346, %.preheader205.loopexit ]
  %.7669.lcssa = phi ptr [ %.6668329, %bb.m ], [ %scevgep742.a, %.preheader205.loopexit ] ; 2 uses
  %i.od = icmp slt i32 %.0695.lcssa, %6
  br i1 %i.od, label %.lr.ph323.preheader, label %._crit_edge324

.lr.ph323.preheader:                              ; preds = %.preheader205
  %i.oe = bitcast <2 x i64> %.1159.lcssa to <4 x i32>
  %i.of = bitcast <2 x i64> %.0155.lcssa to <4 x i32>
  br label %.lr.ph323

.lr.ph312:                                        ; preds = %.lr.ph312.preheader, %.lr.ph312
  %.7669310 = phi ptr [ %i.ph, %.lr.ph312 ], [ %.6668329, %.lr.ph312.preheader ] ; 3 uses
  %.0693309 = phi ptr [ %i.pg, %.lr.ph312 ], [ %i.bs, %.lr.ph312.preheader ] ; 3 uses
  %.0155307 = phi <4 x i32> [ %i.pf, %.lr.ph312 ], [ %i.nm, %.lr.ph312.preheader ]
  %.1159306 = phi <4 x i32> [ %i.pc, %.lr.ph312 ], [ %i.nl, %.lr.ph312.preheader ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph312 ], [ 0, %.lr.ph312.preheader ]
  %i.og = load <8 x i16>, ptr %.0693309, align 1, !tbaa !108 ; 2 uses
  %i.oh = load double, ptr %.7669310, align 1, !tbaa !108
  %i.oi = insertelement <2 x double> poison, double %i.oh, i64 0
end_hunk_0
begin_hunk_1_@_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_:bb.a
  %i.dmf = select <4 x i1> %i.dme, <4 x float> %i.dma, <4 x float> zeroinitializer
  %i.dmg = fadd fast <4 x float> %i.dma, splat (float -1.000000e+00)
  %i.dmh = select fast <4 x i1> %i.dme, <4 x float> %i.dmc, <4 x float> %i.dmd
  %i.dmi = fadd fast <4 x float> %i.dmg, %i.dmf   ; 12 uses
  %i.dmj = fmul fast <4 x float> %i.dmi, %i.dmi
  %i.dmk = fmul fast <4 x float> %i.dmi, splat (float f0x3D9021BB)
  %i.dml = fadd fast <4 x float> %i.dmk, splat (float f0xBDEBD1B8)
  %i.dmm = fmul fast <4 x float> %i.dml, %i.dmi
  %i.dmn = fadd fast <4 x float> %i.dmm, splat (float f0x3DEF251A)
  %i.dmo = fmul fast <4 x float> %i.dmn, %i.dmi
  %i.dmp = fadd fast <4 x float> %i.dmo, splat (float f0xBDFE5D4F)
  %i.dmq = fmul fast <4 x float> %i.dmp, %i.dmi
  %i.dmr = fadd fast <4 x float> %i.dmq, splat (float f0x3E11E9BF)
  %i.dms = fmul fast <4 x float> %i.dmr, %i.dmi
  %i.dmt = fadd fast <4 x float> %i.dms, splat (float f0xBE2AAE50)
  %i.dmu = fmul fast <4 x float> %i.dmt, %i.dmi
  %i.dmv = fadd fast <4 x float> %i.dmu, splat (float f0x3E4CCEAC)
  %i.dmw = fmul fast <4 x float> %i.dmv, %i.dmi
  %i.dmx = fadd fast <4 x float> %i.dmw, splat (float f0xBE7FFFFC)
  %i.dmy = fmul fast <4 x float> %i.dmx, %i.dmi
  %i.dmz = fadd fast <4 x float> %i.dmy, splat (float f0x3EAAAAAA)
  %i.dna = fmul fast <4 x float> %i.dmz, %i.dmi
  %reass.mul2500 = fmul fast <4 x float> %i.dmh, splat (float f0x3F317218)
  %reass.add2504 = fadd fast <4 x float> %i.dna, splat (float -5.000000e-01)
  %reass.mul2505 = fmul fast <4 x float> %i.dmj, %reass.add2504
  %i.dnb = fadd fast <4 x float> %reass.mul2500, %i.dmi
  %i.dnc = fadd fast <4 x float> %i.dnb, %reass.mul2505
  %.neg2481 = fmul fast <4 x float> %i.dnc, splat (float -2.000000e+00)
  %i.dnd = select fast <4 x i1> %i.dlu, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg2481
  %i.dne = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dnd, <4 x float> splat (float f0x42B0C0A5))
  %i.dnf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dne, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dng = fmul fast <4 x float> %i.dnf, splat (float f0x3FB8AA3B)
  %i.dnh = fadd fast <4 x float> %i.dng, splat (float 5.000000e-01) ; 2 uses
  %i.dni = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dnh)
  %i.dnj = sitofp fast <4 x i32> %i.dni to <4 x float> ; 2 uses
  %i.dnk = fcmp fast olt <4 x float> %i.dnh, %i.dnj
  %i.dnl = select <4 x i1> %i.dnk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dnm = fsub fast <4 x float> %i.dnj, %i.dnl   ; 2 uses
  %i.dnn = fmul fast <4 x float> %i.dnm, splat (float f0x3F317218)
  %i.dno = fsub fast <4 x float> %i.dnf, %i.dnn   ; 8 uses
  %i.dnp = fmul fast <4 x float> %i.dno, %i.dno
  %i.dnq = fmul fast <4 x float> %i.dno, splat (float f0x39506967)
  %i.dnr = fadd fast <4 x float> %i.dnq, splat (float f0x3AB743CE)
  %i.dns = fmul fast <4 x float> %i.dnr, %i.dno
  %i.dnt = fadd fast <4 x float> %i.dns, splat (float f0x3C088908)
  %i.dnu = fmul fast <4 x float> %i.dnt, %i.dno
  %i.dnv = fadd fast <4 x float> %i.dnu, splat (float f0x3D2AA9C1)
  %i.dnw = fmul fast <4 x float> %i.dnv, %i.dno
  %i.dnx = fadd fast <4 x float> %i.dnw, splat (float f0x3E2AAAAA)
  %i.dny = fmul fast <4 x float> %i.dnx, %i.dno
  %i.dnz = fadd fast <4 x float> %i.dny, splat (float 5.000000e-01)
  %i.doa = fmul fast <4 x float> %i.dnp, %i.dnz
  %i.dob = fadd fast <4 x float> %i.dno, splat (float 1.000000e+00)
  %i.doc = fadd fast <4 x float> %i.dob, %i.doa
  %i.dod = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dnm)
  %i.doe = shl <4 x i32> %i.dod, splat (i32 23)
  %i.dof = add <4 x i32> %i.doe, splat (i32 1065353216)
  %i.dog = bitcast <4 x i32> %i.dof to <4 x float>
  %i.doh = fmul fast <4 x float> %i.doc, %i.dog
  %i.doi = fadd fast <4 x float> %i.doh, splat (float 1.000000e+00)
  %i.doj = fdiv fast <4 x float> splat (float 2.000000e+00), %i.doi
  %i.dok = fadd fast <4 x float> %i.doj, splat (float -1.000000e+00)
  %i.dol = fmul fast <4 x float> %i.dok, %.21907
  %i.dom = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.11904, <4 x float> splat (float f0x42B0C0A5))
  %i.don = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dom, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.doo = fmul fast <4 x float> %i.don, splat (float f0x3FB8AA3B)
  %i.dop = fadd fast <4 x float> %i.doo, splat (float 5.000000e-01) ; 2 uses
  %i.doq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dop)
  %i.dor = sitofp fast <4 x i32> %i.doq to <4 x float> ; 2 uses
  %i.dos = fcmp fast olt <4 x float> %i.dop, %i.dor
  %i.dot = select <4 x i1> %i.dos, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dou = fsub fast <4 x float> %i.dor, %i.dot   ; 2 uses
  %i.dov = fmul fast <4 x float> %i.dou, splat (float f0x3F317218)
  %i.dow = fsub fast <4 x float> %i.don, %i.dov   ; 8 uses
  %i.dox = fmul fast <4 x float> %i.dow, %i.dow
  %i.doy = fmul fast <4 x float> %i.dow, splat (float f0x39506967)
  %i.doz = fadd fast <4 x float> %i.doy, splat (float f0x3AB743CE)
  %i.dpa = fmul fast <4 x float> %i.doz, %i.dow
  %i.dpb = fadd fast <4 x float> %i.dpa, splat (float f0x3C088908)
  %i.dpc = fmul fast <4 x float> %i.dpb, %i.dow
  %i.dpd = fadd fast <4 x float> %i.dpc, splat (float f0x3D2AA9C1)
  %i.dpe = fmul fast <4 x float> %i.dpd, %i.dow
  %i.dpf = fadd fast <4 x float> %i.dpe, splat (float f0x3E2AAAAA)
  %i.dpg = fmul fast <4 x float> %i.dpf, %i.dow
  %i.dph = fadd fast <4 x float> %i.dpg, splat (float 5.000000e-01)
  %i.dpi = fmul fast <4 x float> %i.dox, %i.dph
  %i.dpj = fadd fast <4 x float> %i.dow, splat (float 1.000000e+00)
  %i.dpk = fadd fast <4 x float> %i.dpj, %i.dpi
  %i.dpl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dou)
  %i.dpm = shl <4 x i32> %i.dpl, splat (i32 23)
  %i.dpn = add <4 x i32> %i.dpm, splat (i32 1065353216)
  %i.dpo = bitcast <4 x i32> %i.dpn to <4 x float>
  %i.dpp = fmul fast <4 x float> %i.dpk, %i.dpo
  %i.dpq = fadd fast <4 x float> %i.dpp, splat (float 1.000000e+00) ; 2 uses
  %i.dpr = fcmp fast ole <4 x float> %i.dpq, zeroinitializer
  %i.dps = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dpq, <4 x float> splat (float f0x00800000))
  %i.dpt = bitcast <4 x float> %i.dps to <4 x i32> ; 2 uses
  %i.dpu = lshr <4 x i32> %i.dpt, splat (i32 23)
  %i.dpv = and <4 x i32> %i.dpt, splat (i32 -2139095041)
  %i.dpw = or disjoint <4 x i32> %i.dpv, splat (i32 1056964608)
  %i.dpx = bitcast <4 x i32> %i.dpw to <4 x float> ; 3 uses
  %i.dpy = add nsw <4 x i32> %i.dpu, splat (i32 -127)
  %i.dpz = sitofp fast <4 x i32> %i.dpy to <4 x float> ; 2 uses
  %i.dqa = fadd fast <4 x float> %i.dpz, splat (float 1.000000e+00)
  %i.dqb = fcmp fast olt <4 x float> %i.dpx, splat (float f0x3F3504F3) ; 2 uses
  %i.dqc = select <4 x i1> %i.dqb, <4 x float> %i.dpx, <4 x float> zeroinitializer
  %i.dqd = fadd fast <4 x float> %i.dpx, splat (float -1.000000e+00)
  %i.dqe = select fast <4 x i1> %i.dqb, <4 x float> %i.dpz, <4 x float> %i.dqa
  %i.dqf = fadd fast <4 x float> %i.dqd, %i.dqc   ; 12 uses
  %i.dqg = fmul fast <4 x float> %i.dqf, %i.dqf
  %i.dqh = fmul fast <4 x float> %i.dqf, splat (float f0x3D9021BB)
  %i.dqi = fadd fast <4 x float> %i.dqh, splat (float f0xBDEBD1B8)
  %i.dqj = fmul fast <4 x float> %i.dqi, %i.dqf
  %i.dqk = fadd fast <4 x float> %i.dqj, splat (float f0x3DEF251A)
  %i.dql = fmul fast <4 x float> %i.dqk, %i.dqf
  %i.dqm = fadd fast <4 x float> %i.dql, splat (float f0xBDFE5D4F)
  %i.dqn = fmul fast <4 x float> %i.dqm, %i.dqf
  %i.dqo = fadd fast <4 x float> %i.dqn, splat (float f0x3E11E9BF)
  %i.dqp = fmul fast <4 x float> %i.dqo, %i.dqf
  %i.dqq = fadd fast <4 x float> %i.dqp, splat (float f0xBE2AAE50)
  %i.dqr = fmul fast <4 x float> %i.dqq, %i.dqf
  %i.dqs = fadd fast <4 x float> %i.dqr, splat (float f0x3E4CCEAC)
  %i.dqt = fmul fast <4 x float> %i.dqs, %i.dqf
  %i.dqu = fadd fast <4 x float> %i.dqt, splat (float f0xBE7FFFFC)
  %i.dqv = fmul fast <4 x float> %i.dqu, %i.dqf
  %i.dqw = fadd fast <4 x float> %i.dqv, splat (float f0x3EAAAAAA)
  %i.dqx = fmul fast <4 x float> %i.dqw, %i.dqf
  %reass.mul2503 = fmul fast <4 x float> %i.dqe, splat (float f0x3F317218)
  %reass.add2506 = fadd fast <4 x float> %i.dqx, splat (float -5.000000e-01)
  %reass.mul2507 = fmul fast <4 x float> %i.dqg, %reass.add2506
  %i.dqy = fadd fast <4 x float> %reass.mul2503, %i.dqf
  %i.dqz = fadd fast <4 x float> %i.dqy, %reass.mul2507
  %.neg2482 = fmul fast <4 x float> %i.dqz, splat (float -2.000000e+00)
  %i.dra = select fast <4 x i1> %i.dpr, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg2482
  %i.drb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dra, <4 x float> splat (float f0x42B0C0A5))
  %i.drc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.drb, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.drd = fmul fast <4 x float> %i.drc, splat (float f0x3FB8AA3B)
  %i.dre = fadd fast <4 x float> %i.drd, splat (float 5.000000e-01) ; 2 uses
  %i.drf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dre)
  %i.drg = sitofp fast <4 x i32> %i.drf to <4 x float> ; 2 uses
  %i.drh = fcmp fast olt <4 x float> %i.dre, %i.drg
  %i.dri = select <4 x i1> %i.drh, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.drj = fsub fast <4 x float> %i.drg, %i.dri   ; 2 uses
  %i.drk = fmul fast <4 x float> %i.drj, splat (float f0x3F317218)
  %i.drl = fsub fast <4 x float> %i.drc, %i.drk   ; 8 uses
  %i.drm = fmul fast <4 x float> %i.drl, %i.drl
  %i.drn = fmul fast <4 x float> %i.drl, splat (float f0x39506967)
  %i.dro = fadd fast <4 x float> %i.drn, splat (float f0x3AB743CE)
  %i.drp = fmul fast <4 x float> %i.dro, %i.drl
  %i.drq = fadd fast <4 x float> %i.drp, splat (float f0x3C088908)
  %i.drr = fmul fast <4 x float> %i.drq, %i.drl
  %i.drs = fadd fast <4 x float> %i.drr, splat (float f0x3D2AA9C1)
  %i.drt = fmul fast <4 x float> %i.drs, %i.drl
  %i.dru = fadd fast <4 x float> %i.drt, splat (float f0x3E2AAAAA)
  %i.drv = fmul fast <4 x float> %i.dru, %i.drl
  %i.drw = fadd fast <4 x float> %i.drv, splat (float 5.000000e-01)
  %i.drx = fmul fast <4 x float> %i.drm, %i.drw
  %i.dry = fadd fast <4 x float> %i.drl, splat (float 1.000000e+00)
  %i.drz = fadd fast <4 x float> %i.dry, %i.drx
  %i.dsa = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.drj)
  %i.dsb = shl <4 x i32> %i.dsa, splat (i32 23)
  %i.dsc = add <4 x i32> %i.dsb, splat (i32 1065353216)
  %i.dsd = bitcast <4 x i32> %i.dsc to <4 x float>
  %i.dse = fmul fast <4 x float> %i.drz, %i.dsd
  %i.dsf = fadd fast <4 x float> %i.dse, splat (float 1.000000e+00)
  %i.dsg = fdiv fast <4 x float> splat (float 2.000000e+00), %i.dsf
  %i.dsh = fadd fast <4 x float> %i.dsg, splat (float -1.000000e+00)
  %i.dsi = fmul fast <4 x float> %i.dsh, %.11904
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit600

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2458: ; preds = %bb.ay
  %i.dsj = load ptr, ptr %10, align 8, !tbaa !34  ; 2 uses
  %i.dsk = load float, ptr %i.dsj, align 4, !tbaa !53
  %i.dsl = insertelement <4 x float> poison, float %i.dsk, i64 0
  %i.dsm = shufflevector <4 x float> %i.dsl, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dsn = getelementptr inbounds nuw i8, ptr %i.dsj, i64 4
  %i.dso = load float, ptr %i.dsn, align 4, !tbaa !53
  %i.dsp = insertelement <4 x float> poison, float %i.dso, i64 0
  %i.dsq = shufflevector <4 x float> %i.dsp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dsr = fmul fast <4 x float> %i.dsm, %.21907
  %i.dss = fadd fast <4 x float> %i.dsr, %i.dsq
  %i.dst = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dss, <4 x float> zeroinitializer)
  %i.dsu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dst, <4 x float> splat (float 1.000000e+00))
  %i.dsv = fmul fast <4 x float> %i.dsu, %.21907
  %i.dsw = fmul fast <4 x float> %i.dsm, %.11904
  %i.dsx = fadd fast <4 x float> %i.dsw, %i.dsq
  %i.dsy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dsx, <4 x float> zeroinitializer)
  %i.dsz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dsy, <4 x float> splat (float 1.000000e+00))
  %i.dta = fmul fast <4 x float> %i.dsz, %.11904
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit600

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit600:   ; preds = %bb.ay, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2446, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2449, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2452, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2455, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2458
  %.0.i6012445 = phi <4 x float> [ %i.dsv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2458 ], [ %i.dhb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread ], [ %i.dhk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2446 ], [ %i.dhy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2449 ], [ %i.djh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2452 ], [ %i.dol, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2455 ], [ %.21907, %bb.ay ]
  %.0.i599 = phi nsz <4 x float> [ %i.dta, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2458 ], [ %i.dhc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread ], [ %i.dho, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2446 ], [ %i.dia, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2449 ], [ %i.dko, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2452 ], [ %i.dsi, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit602.thread2455 ], [ %.11904, %bb.ay ]
  %i.dtb = bitcast <4 x float> %.0.i6012445 to <8 x i16>
  %i.dtc = bitcast <4 x float> %.0.i599 to <8 x i16>
  %i.dtd = shufflevector <8 x i16> %i.dtb, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.dte = shufflevector <8 x i16> %i.dtc, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.dtf = bitcast <8 x i16> %i.dtd to <4 x float>
  %i.dtg = bitcast <8 x i16> %i.dte to <4 x float>
  %11 = shufflevector <4 x float> %i.dtf, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dth = bitcast <4 x float> %11 to <2 x i64>
  %i.dti = extractelement <2 x i64> %i.dth, i64 0
  store i64 %i.dti, ptr %.25342706, align 1, !tbaa !108
  %i.dtj = getelementptr inbounds i8, ptr %.25342706, i64 %i.am
  %12 = shufflevector <4 x float> %i.dtg, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dtk = bitcast <4 x float> %12 to <2 x i64>
  %i.dtl = extractelement <2 x i64> %i.dtk, i64 0
  store i64 %i.dtl, ptr %i.dtj, align 1, !tbaa !108
  %i.dtm = getelementptr inbounds nuw i8, ptr %.25342706, i64 8
  br label %bb.ba

bb.az:                                            ; preds = %._crit_edge2701
  store <4 x float> %.11906.lcssa, ptr %.62705, align 16, !tbaa !108
  %i.dtn = getelementptr inbounds nuw i8, ptr %.62705, i64 16
  store <4 x float> %.01903.lcssa, ptr %i.dtn, align 16, !tbaa !108
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit600
  %.3535 = phi ptr [ %i.dtm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit600 ], [ %.25342706, %bb.az ] ; 2 uses
  %i.dto = getelementptr inbounds nuw i8, ptr %.62705, i64 32 ; 2 uses
  %i.dtp = add nuw nsw i32 %.15242708, 4          ; 3 uses
  %i.dtq = or disjoint i32 %i.dtp, 3
  %i.dtr = icmp slt i32 %i.dtq, %5
  br i1 %i.dtr, label %bb.at, label %.preheader2587, !llvm.loop !1924

bb.bb:                                            ; preds = %.lr.ph2729, %bb.bo
  %.25252728 = phi i32 [ %.1524.lcssa, %.lr.ph2729 ], [ %i.dyk, %bb.bo ]
  %.45302727 = phi ptr [ %.2528.lcssa, %.lr.ph2729 ], [ %.5531.lcssa, %bb.bo ] ; 5 uses
  %.45362726 = phi ptr [ %.2534.lcssa, %.lr.ph2729 ], [ %.5537, %bb.bo ] ; 4 uses
  %.72725 = phi ptr [ %.6.lcssa, %.lr.ph2729 ], [ %i.dyj, %bb.bo ] ; 3 uses
  br i1 %i.aj, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  br i1 %.not582, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dts = load <2 x float>, ptr %i.cmt, align 4, !tbaa !53
  br label %bb.bf

bb.be:                                            ; preds = %bb.bb
  %i.dtt = load <2 x float>, ptr %.72725, align 4, !tbaa !53
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bc, %bb.bd, %bb.be
  %i.dtu = phi <2 x float> [ %i.dts, %bb.bd ], [ %i.dtt, %bb.be ], [ zeroinitializer, %bb.bc ] ; 3 uses
  br i1 %i.ak, label %.lr.ph2720.preheader, label %._crit_edge2721

.lr.ph2720.preheader:                             ; preds = %bb.bf
  br i1 %min.iters.check, label %.lr.ph2720.preheader3671, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph2720.preheader
  %i.dtv = getelementptr i8, ptr %.45302727, i64 %i.ck
  %i.dtw = shufflevector <2 x float> %i.dtu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dtx = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.dtw, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.dty = shufflevector <4 x float> %i.dtw, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x float> [ %i.dtx, %vector.ph ], [ %i.dvd, %vector.body ]
  %vec.phi3528 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.dve, %vector.body ]
  %vec.phi3529 = phi <4 x float> [ %i.dty, %vector.ph ], [ %i.dux, %vector.body ]
  %vec.phi3530 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.duy, %vector.body ]
  %i.dtz = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.15162735, i64 %i.dtz
  %i.dua = getelementptr i8, ptr %.15162735, i64 %i.dtz
  %next.gep3531 = getelementptr i8, ptr %i.dua, i64 16
  %i.dub = shl i64 %index, 1
  %next.gep3532 = getelementptr i8, ptr %.45302727, i64 %i.dub ; 2 uses
  %wide.vec = load <8 x i16>, ptr %next.gep, align 2, !tbaa !110
  %i.duc = freeze <8 x i16> %wide.vec             ; 2 uses
  %i.dud = bitcast <8 x i16> %i.duc to <4 x i32>
  %i.due = bitcast <8 x i16> %i.duc to <4 x i32>
  %i.duf = and <4 x i32> %i.due, splat (i32 -65536)
  %wide.vec3534 = load <8 x i16>, ptr %next.gep3531, align 2, !tbaa !110
  %i.dug = freeze <8 x i16> %wide.vec3534         ; 2 uses
  %i.duh = bitcast <8 x i16> %i.dug to <4 x i32>
  %i.dui = bitcast <8 x i16> %i.dug to <4 x i32>
  %i.duj = and <4 x i32> %i.dui, splat (i32 -65536)
  %i.duk = shl <4 x i32> %i.dud, splat (i32 16)
  %i.dul = shl <4 x i32> %i.duh, splat (i32 16)
  %i.dum = bitcast <4 x i32> %i.duk to <4 x float>
  %i.dun = bitcast <4 x i32> %i.dul to <4 x float>
  %i.duo = getelementptr i8, ptr %next.gep3532, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep3532, align 2, !tbaa !110
  %wide.load3537 = load <4 x i16>, ptr %i.duo, align 2, !tbaa !110
  %i.dup = zext <4 x i16> %wide.load to <4 x i32>
  %i.duq = zext <4 x i16> %wide.load3537 to <4 x i32>
  %i.dur = shl nuw <4 x i32> %i.dup, splat (i32 16)
  %i.dus = shl nuw <4 x i32> %i.duq, splat (i32 16)
  %i.dut = bitcast <4 x i32> %i.dur to <4 x float> ; 2 uses
  %i.duu = bitcast <4 x i32> %i.dus to <4 x float> ; 2 uses
  %i.duv = fmul fast <4 x float> %i.dut, %i.dum
  %i.duw = fmul fast <4 x float> %i.duu, %i.dun
  %i.dux = fadd fast <4 x float> %i.duv, %vec.phi3529 ; 2 uses
  %i.duy = fadd fast <4 x float> %i.duw, %vec.phi3530 ; 2 uses
  %i.duz = bitcast <4 x i32> %i.duf to <4 x float>
  %i.dva = bitcast <4 x i32> %i.duj to <4 x float>
  %i.dvb = fmul fast <4 x float> %i.duz, %i.dut
  %i.dvc = fmul fast <4 x float> %i.dva, %i.duu
  %i.dvd = fadd fast <4 x float> %i.dvb, %vec.phi ; 2 uses
  %i.dve = fadd fast <4 x float> %i.dvc, %vec.phi3528 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dvf = icmp eq i64 %index.next, %n.vec
  br i1 %i.dvf, label %middle.block, label %vector.body, !llvm.loop !1925

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.dve, %i.dvd
  %i.dvg = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx)
  %bin.rdx3538 = fadd fast <4 x float> %i.duy, %i.dux
  %i.dvh = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx3538)
  %i.dvi = insertelement <2 x float> poison, float %i.dvh, i64 0
  %i.dvj = insertelement <2 x float> %i.dvi, float %i.dvg, i64 1 ; 2 uses
  br i1 %cmp.n, label %._crit_edge2721.loopexit, label %.lr.ph2720.preheader3671

.lr.ph2720.preheader3671:                         ; preds = %.lr.ph2720.preheader, %middle.block
  %.05042718.ph = phi i32 [ 0, %.lr.ph2720.preheader ], [ %i.ci, %middle.block ]
  %.05052717.ph = phi ptr [ %.15162735, %.lr.ph2720.preheader ], [ %i.dfl, %middle.block ]
  %.55312714.ph = phi ptr [ %.45302727, %.lr.ph2720.preheader ], [ %i.dtv, %middle.block ]
  %.ph3672 = phi <2 x float> [ %i.dtu, %.lr.ph2720.preheader ], [ %i.dvj, %middle.block ]
  br label %.lr.ph2720

.lr.ph2720:                                       ; preds = %.lr.ph2720.preheader3671, %.lr.ph2720
  %.05042718 = phi i32 [ %i.dvz, %.lr.ph2720 ], [ %.05042718.ph, %.lr.ph2720.preheader3671 ]
  %.05052717 = phi ptr [ %i.dvx, %.lr.ph2720 ], [ %.05052717.ph, %.lr.ph2720.preheader3671 ] ; 2 uses
  %.55312714 = phi ptr [ %i.dvy, %.lr.ph2720 ], [ %.55312714.ph, %.lr.ph2720.preheader3671 ] ; 2 uses
  %i.dvk = phi <2 x float> [ %i.dvw, %.lr.ph2720 ], [ %.ph3672, %.lr.ph2720.preheader3671 ]
  %i.dvl = load i16, ptr %.55312714, align 2, !tbaa !110 ; 2 uses
  %i.dvm = load <2 x i16>, ptr %.05052717, align 2, !tbaa !110 ; 2 uses
  %i.dvn = insertelement <2 x i16> %i.dvm, i16 %i.dvl, i64 1
  %i.dvo = zext <2 x i16> %i.dvn to <2 x i32>
  %i.dvp = insertelement <2 x i16> %i.dvm, i16 %i.dvl, i64 0
  %i.dvq = zext <2 x i16> %i.dvp to <2 x i32>
  %i.dvr = shl nuw <2 x i32> %i.dvo, splat (i32 16)
  %i.dvs = shl nuw <2 x i32> %i.dvq, splat (i32 16)
  %i.dvt = bitcast <2 x i32> %i.dvr to <2 x float>
  %i.dvu = bitcast <2 x i32> %i.dvs to <2 x float>
  %i.dvv = fmul fast <2 x float> %i.dvu, %i.dvt
  %i.dvw = fadd fast <2 x float> %i.dvv, %i.dvk   ; 2 uses
  %i.dvx = getelementptr inbounds nuw i8, ptr %.05052717, i64 4
  %i.dvy = getelementptr inbounds nuw i8, ptr %.55312714, i64 2
  %i.dvz = add nuw nsw i32 %.05042718, 1          ; 2 uses
  %exitcond2887.not = icmp eq i32 %i.dvz, %7
  br i1 %exitcond2887.not, label %._crit_edge2721.loopexit, label %.lr.ph2720, !llvm.loop !1926

._crit_edge2721.loopexit:                         ; preds = %.lr.ph2720, %middle.block
  %i.dwa = phi <2 x float> [ %i.dvj, %middle.block ], [ %i.dvw, %.lr.ph2720 ]
  %i.dwb = getelementptr i8, ptr %.45302727, i64 %i.au
  %scevgep2886 = getelementptr i8, ptr %i.dwb, i64 2
  br label %._crit_edge2721

._crit_edge2721:                                  ; preds = %._crit_edge2721.loopexit, %bb.bf
  %.5531.lcssa = phi ptr [ %.45302727, %bb.bf ], [ %scevgep2886, %._crit_edge2721.loopexit ]
  %i.dwc = phi <2 x float> [ %i.dtu, %bb.bf ], [ %i.dwa, %._crit_edge2721.loopexit ] ; 13 uses
  br i1 %8, label %bb.bg, label %bb.bn

bb.bg:                                            ; preds = %._crit_edge2721
  switch i32 %9, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit630 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit631.thread2469
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit631.thread2472
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit631.thread2466
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit631.thread2475
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit631.thread2478
    i32 6, label %bb.bh
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit631.thread2469: ; preds = %bb.bg
  %i.dwd = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dwc, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit630

_ZL13activation_ssfiRKN4ncnn3MatE.exit631.thread2472: ; preds = %bb.bg
  %i.dwe = load float, ptr %i.dfq, align 4, !tbaa !53
  %i.dwf = fcmp fast ogt <2 x float> %i.dwc, zeroinitializer
  %i.dwg = insertelement <2 x float> poison, float %i.dwe, i64 0
  %i.dwh = shufflevector <2 x float> %i.dwg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dwi = select <2 x i1> %i.dwf, <2 x float> splat (float 1.000000e+00), <2 x float> %i.dwh
  %i.dwj = fmul fast <2 x float> %i.dwi, %i.dwc
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit630

_ZL13activation_ssfiRKN4ncnn3MatE.exit631.thread2466: ; preds = %bb.bg
  %i.dwk = load float, ptr %i.dfo, align 4, !tbaa !53 ; 2 uses
  %i.dwl = load float, ptr %i.dfp, align 4, !tbaa !53 ; 4 uses
  %i.dwm = extractelement <2 x float> %i.dwc, i64 0
  %.01889 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.dwm, float %i.dwk) ; 2 uses
  %i.dwn = fcmp fast ogt float %.01889, %i.dwl
  %.118902468 = select i1 %i.dwn, float %i.dwl, float %.01889
  %i.dwo = extractelement <2 x float> %i.dwc, i64 1
  %.01893 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.dwo, float %i.dwk) ; 2 uses
  %i.dwp = fcmp fast ogt float %.01893, %i.dwl
  %i.dwq = insertelement <2 x float> poison, float %.118902468, i64 0
  %i.dwr = insertelement <2 x float> %i.dwq, float %.01893, i64 1 ; 2 uses
  br i1 %i.dwp, label %bb.bk, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit630

_ZL13activation_ssfiRKN4ncnn3MatE.exit631.thread2475: ; preds = %bb.bg
  %i.dws = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dwc, <2 x float> splat (float f0x42B0C0A5))
  %i.dwt = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dws, <2 x float> splat (float f0xC2B0C0A5))
  %i.dwu = fneg fast <2 x float> %i.dwt
  %i.dwv = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.dwu)
  %i.dww = fadd fast <2 x float> %i.dwv, splat (float 1.000000e+00)
  %i.dwx = fdiv fast <2 x float> splat (float 1.000000e+00), %i.dww
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit630

_ZL13activation_ssfiRKN4ncnn3MatE.exit631.thread2478: ; preds = %bb.bg
  %i.dwy = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.dwc)
  %i.dwz = fadd fast <2 x float> %i.dwy, splat (float 1.000000e+00)
  %i.dxa = tail call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.dwz)
  %i.dxb = tail call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.dxa)
end_hunk_1
