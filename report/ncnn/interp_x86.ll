Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp_x86?download=true
inline.NumInlined: 95
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.9:bb.a
  %i.az = load i16, ptr %i.ax, align 2, !tbaa !72
  %i.ba = load i16, ptr %invariant.gep, align 2, !tbaa !72
  %i.bb = insertelement <2 x i16> poison, i16 %i.az, i64 0
  %i.bc = insertelement <2 x i16> %i.bb, i16 %i.ba, i64 1
  %i.bd = zext <2 x i16> %i.bc to <2 x i32>
  %i.be = shl nuw <2 x i32> %i.bd, splat (i32 16)
  %i.bf = bitcast <2 x i32> %i.be to <2 x float>
  %i.bg = fmul fast <2 x float> %i.ay, %i.bf
  %i.bh = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bg)
  %i.bi = bitcast float %i.bh to i32
  %i.bj = lshr i32 %i.bi, 16
  %i.bk = trunc nuw i32 %i.bj to i16
  store i16 %i.bk, ptr %.05366.us, align 2, !tbaa !72
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.preheader.us
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !72
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2
  %i.bn = load i16, ptr %gep.1, align 2, !tbaa !72
  %i.bo = insertelement <2 x i16> poison, i16 %i.bm, i64 0
  %i.bp = insertelement <2 x i16> %i.bo, i16 %i.bn, i64 1
  %i.bq = zext <2 x i16> %i.bp to <2 x i32>
  %i.br = shl nuw <2 x i32> %i.bq, splat (i32 16)
  %i.bs = bitcast <2 x i32> %i.br to <2 x float>
  %i.bt = fmul fast <2 x float> %i.ay, %i.bs
  %i.bu = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bt)
  %i.bv = bitcast float %i.bu to i32
  %i.bw = lshr i32 %i.bv, 16
  %i.bx = trunc nuw i32 %i.bw to i16
  %i.by = getelementptr inbounds nuw i8, ptr %.05366.us, i64 2
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !72
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !72
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.cb = load i16, ptr %gep.2, align 2, !tbaa !72
  %i.cc = insertelement <2 x i16> poison, i16 %i.ca, i64 0
  %i.cd = insertelement <2 x i16> %i.cc, i16 %i.cb, i64 1
  %i.ce = zext <2 x i16> %i.cd to <2 x i32>
  %i.cf = shl nuw <2 x i32> %i.ce, splat (i32 16)
  %i.cg = bitcast <2 x i32> %i.cf to <2 x float>
  %i.ch = fmul fast <2 x float> %i.ay, %i.cg
  %i.ci = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.ch)
  %i.cj = bitcast float %i.ci to i32
  %i.ck = lshr i32 %i.cj, 16
  %i.cl = trunc nuw i32 %i.ck to i16
  %i.cm = getelementptr inbounds nuw i8, ptr %.05366.us, i64 4
  store i16 %i.cl, ptr %i.cm, align 2, !tbaa !72
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.preheader.us
  %i.cn = getelementptr inbounds nuw i8, ptr %.05267.us, i64 8
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.05366.us, i64 %i.ar
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %._crit_edge71, label %.preheader.us, !llvm.loop !180

._crit_edge71:                                    ; preds = %._crit_edge.us, %._crit_edge, %.lr.ph70.split.us, %.lr.ph75.split
  %i.cp = phi i32 [ %i.hb, %._crit_edge ], [ %i.t, %.lr.ph75.split ], [ %i.t, %.lr.ph70.split.us ], [ %i.t, %._crit_edge.us ]
  %i.cq = phi i32 [ %i.hb, %._crit_edge ], [ %i.u, %.lr.ph75.split ], [ %i.t, %.lr.ph70.split.us ], [ %i.t, %._crit_edge.us ]
  %indvars.iv.next99 = add nsw i64 %indvars.iv98, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next99 to i32
  %exitcond101.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond101.not, label %._crit_edge76, label %.lr.ph75.split, !llvm.loop !181

.lr.ph70.split:                                   ; preds = %.lr.ph70.split.preheader, %._crit_edge
  %i.cr = phi i32 [ %i.dd, %._crit_edge ], [ %i.am, %.lr.ph70.split.preheader ] ; 4 uses
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %._crit_edge ], [ 0, %.lr.ph70.split.preheader ] ; 2 uses
  %.05267 = phi ptr [ %i.gz, %._crit_edge ], [ %i.ak, %.lr.ph70.split.preheader ] ; 2 uses
  %.05366 = phi ptr [ %i.ha, %._crit_edge ], [ %i.aj, %.lr.ph70.split.preheader ] ; 7 uses
  %.05366119 = ptrtoaddr ptr %.05366 to i64
  %i.cs = load ptr, ptr %7, align 8, !tbaa !62
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv95
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !28
  %i.cv = mul i32 %i.cr, %i.cu
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.cw ; 6 uses
  %i.cy = load <2 x float>, ptr %.05267, align 4, !tbaa !61 ; 7 uses
  %i.cz = icmp sgt i32 %i.cr, 3
  br i1 %i.cz, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.lr.ph70.split
  %i.da = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> zeroinitializer
  %i.db = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.e

.preheader.loopexit:                              ; preds = %bb.e
  %i.dc = trunc nuw nsw i64 %indvars.iv.next88 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.lr.ph70.split
  %i.dd = phi i32 [ %i.cr, %.lr.ph70.split ], [ %i.fu, %.preheader.loopexit ] ; 5 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph70.split ], [ %i.dc, %.preheader.loopexit ] ; 2 uses
  %i.de = icmp slt i32 %.0.lcssa, %i.dd
  br i1 %i.de, label %.lr.ph65.preheader, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %i.dd to i64
  br label %._crit_edge

.lr.ph65.preheader:                               ; preds = %.preheader
  %i.df = zext i32 %.0.lcssa to i64               ; 5 uses
  %i.dg = zext nneg i32 %i.dd to i64              ; 4 uses
  %wide.trip.count93 = zext nneg i32 %i.dd to i64 ; 5 uses
  %invariant.gep113 = getelementptr [2 x i8], ptr %i.cx, i64 %i.dg ; 4 uses
  %i.dh = sub nsw i64 %wide.trip.count93, %i.df   ; 3 uses
  %min.iters.check = icmp ult i64 %i.dh, 8
  br i1 %min.iters.check, label %.lr.ph65.preheader124, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph65.preheader
  %i.di = add nsw i64 %i.cw, %wide.trip.count93
  %i.dj = shl nsw i64 %i.di, 1
  %i.dk = sub i64 %.05366119, %i.ao               ; 2 uses
  %i.dl = sub i64 %i.dj, %i.dk
  %diff.check = icmp ugt i64 %i.dl, -16
  %i.dm = shl nsw i64 %i.cw, 1
  %i.dn = sub i64 %i.dm, %i.dk
  %diff.check120 = icmp ugt i64 %i.dn, -16
  %conflict.rdx = or i1 %diff.check, %diff.check120
  br i1 %conflict.rdx, label %.lr.ph65.preheader124, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dh, -8                      ; 3 uses
  %i.do = add nsw i64 %n.vec, %i.df
  %broadcast.splat = shufflevector <2 x float> %i.cy, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat122 = shufflevector <2 x float> %i.cy, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dp = add nuw i64 %index, %i.df               ; 3 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.dp
  %wide.load = load <8 x i16>, ptr %i.dq, align 2, !tbaa !72
  %i.dr = zext <8 x i16> %wide.load to <8 x i32>
  %i.ds = shl nuw <8 x i32> %i.dr, splat (i32 16)
  %i.dt = bitcast <8 x i32> %i.ds to <8 x float>
  %i.du = fmul fast <8 x float> %broadcast.splat, %i.dt
  %i.dv = getelementptr [2 x i8], ptr %invariant.gep113, i64 %i.dp
  %wide.load123 = load <8 x i16>, ptr %i.dv, align 2, !tbaa !72
  %i.dw = zext <8 x i16> %wide.load123 to <8 x i32>
  %i.dx = shl nuw <8 x i32> %i.dw, splat (i32 16)
  %i.dy = bitcast <8 x i32> %i.dx to <8 x float>
  %i.dz = fmul fast <8 x float> %broadcast.splat122, %i.dy
  %i.ea = fadd fast <8 x float> %i.dz, %i.du
  %i.eb = bitcast <8 x float> %i.ea to <8 x i32>
  %i.ec = lshr <8 x i32> %i.eb, splat (i32 16)
  %i.ed = trunc nuw <8 x i32> %i.ec to <8 x i16>
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %.05366, i64 %i.dp
  store <8 x i16> %i.ed, ptr %i.ee, align 2, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph65.preheader124

.lr.ph65.preheader124:                            ; preds = %vector.memcheck, %.lr.ph65.preheader, %middle.block
  %indvars.iv90.ph = phi i64 [ %i.df, %vector.memcheck ], [ %i.df, %.lr.ph65.preheader ], [ %i.do, %middle.block ] ; 7 uses
  %i.eg = sub nsw i64 %wide.trip.count93, %indvars.iv90.ph
  %xtraiter = and i64 %i.eg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph65.prol.loopexit, label %.lr.ph65.prol

.lr.ph65.prol:                                    ; preds = %.lr.ph65.preheader124
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv90.ph
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !72
  %gep114.prol = getelementptr [2 x i8], ptr %invariant.gep113, i64 %indvars.iv90.ph
  %i.ej = load i16, ptr %gep114.prol, align 2, !tbaa !72
  %i.ek = insertelement <2 x i16> poison, i16 %i.ei, i64 0
  %i.el = insertelement <2 x i16> %i.ek, i16 %i.ej, i64 1
  %i.em = zext <2 x i16> %i.el to <2 x i32>
  %i.en = shl nuw <2 x i32> %i.em, splat (i32 16)
  %i.eo = bitcast <2 x i32> %i.en to <2 x float>
  %i.ep = fmul fast <2 x float> %i.cy, %i.eo
  %i.eq = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.ep)
  %i.er = bitcast float %i.eq to i32
  %i.es = lshr i32 %i.er, 16
  %i.et = trunc nuw i32 %i.es to i16
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %.05366, i64 %indvars.iv90.ph
  store i16 %i.et, ptr %i.eu, align 2, !tbaa !72
  %indvars.iv.next91.prol = add nuw nsw i64 %indvars.iv90.ph, 1
  br label %.lr.ph65.prol.loopexit

.lr.ph65.prol.loopexit:                           ; preds = %.lr.ph65.prol, %.lr.ph65.preheader124
  %indvars.iv90.unr = phi i64 [ %indvars.iv90.ph, %.lr.ph65.preheader124 ], [ %indvars.iv.next91.prol, %.lr.ph65.prol ]
  %i.ev = add nsw i64 %wide.trip.count93, -1
  %i.ew = icmp eq i64 %indvars.iv90.ph, %i.ev
  br i1 %i.ew, label %._crit_edge, label %.lr.ph65

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv87 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next88, %bb.e ] ; 3 uses
  %i.ex = phi i32 [ %i.cr, %.lr.ph ], [ %i.fu, %bb.e ]
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv87 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 1, !tbaa !20
  %i.fa = insertelement <2 x i64> poison, i64 %i.ez, i64 0
  %i.fb = bitcast <2 x i64> %i.fa to <8 x i16>
  %9 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fc = bitcast <8 x i16> %9 to <4 x float>
  %i.fd = sext i32 %i.ex to i64
  %i.fe = getelementptr inbounds [2 x i8], ptr %i.ey, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 1, !tbaa !20
  %i.fg = insertelement <2 x i64> poison, i64 %i.ff, i64 0
  %i.fh = bitcast <2 x i64> %i.fg to <8 x i16>
  %10 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fi = bitcast <8 x i16> %10 to <4 x float>
  %i.fj = fmul fast <4 x float> %i.da, %i.fc
  %i.fk = fmul fast <4 x float> %i.db, %i.fi
  %i.fl = fadd fast <4 x float> %i.fk, %i.fj
  %i.fm = bitcast <4 x float> %i.fl to <8 x i16>
  %i.fn = shufflevector <8 x i16> %i.fm, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.fo = bitcast <8 x i16> %i.fn to <4 x float>
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.fq = bitcast <4 x float> %i.fp to <2 x i64>
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %.05366, i64 %indvars.iv87
  %i.fs = extractelement <2 x i64> %i.fq, i64 0
  store i64 %i.fs, ptr %i.fr, align 1, !tbaa !20
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 4 ; 3 uses
  %i.ft = or disjoint i64 %indvars.iv.next88, 3
  %i.fu = load i32, ptr %8, align 4, !tbaa !28    ; 3 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = icmp slt i64 %i.ft, %i.fv
  br i1 %i.fw, label %bb.e, label %.preheader.loopexit, !llvm.loop !183

.lr.ph65:                                         ; preds = %.lr.ph65.prol.loopexit, %.lr.ph65
  %indvars.iv90 = phi i64 [ %indvars.iv.next91.1, %.lr.ph65 ], [ %indvars.iv90.unr, %.lr.ph65.prol.loopexit ] ; 5 uses
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv90
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !72
  %gep114 = getelementptr [2 x i8], ptr %invariant.gep113, i64 %indvars.iv90
  %i.fz = load i16, ptr %gep114, align 2, !tbaa !72
  %i.ga = insertelement <2 x i16> poison, i16 %i.fy, i64 0
  %i.gb = insertelement <2 x i16> %i.ga, i16 %i.fz, i64 1
  %i.gc = zext <2 x i16> %i.gb to <2 x i32>
  %i.gd = shl nuw <2 x i32> %i.gc, splat (i32 16)
  %i.ge = bitcast <2 x i32> %i.gd to <2 x float>
  %i.gf = fmul fast <2 x float> %i.cy, %i.ge
  %i.gg = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.gf)
  %i.gh = bitcast float %i.gg to i32
  %i.gi = lshr i32 %i.gh, 16
  %i.gj = trunc nuw i32 %i.gi to i16
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %.05366, i64 %indvars.iv90
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !72
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 3 uses
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv.next91
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !72
  %gep114.1 = getelementptr [2 x i8], ptr %invariant.gep113, i64 %indvars.iv.next91
  %i.gn = load i16, ptr %gep114.1, align 2, !tbaa !72
  %i.go = insertelement <2 x i16> poison, i16 %i.gm, i64 0
  %i.gp = insertelement <2 x i16> %i.go, i16 %i.gn, i64 1
  %i.gq = zext <2 x i16> %i.gp to <2 x i32>
  %i.gr = shl nuw <2 x i32> %i.gq, splat (i32 16)
  %i.gs = bitcast <2 x i32> %i.gr to <2 x float>
  %i.gt = fmul fast <2 x float> %i.cy, %i.gs
  %i.gu = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.gt)
  %i.gv = bitcast float %i.gu to i32
  %i.gw = lshr i32 %i.gv, 16
  %i.gx = trunc nuw i32 %i.gw to i16
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %.05366, i64 %indvars.iv.next91
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !72
  %indvars.iv.next91.1 = add nuw nsw i64 %indvars.iv90, 2 ; 2 uses
  %exitcond94.not.1 = icmp eq i64 %indvars.iv.next91.1, %wide.trip.count93
  br i1 %exitcond94.not.1, label %._crit_edge, label %.lr.ph65, !llvm.loop !184

._crit_edge:                                      ; preds = %.lr.ph65.prol.loopexit, %.lr.ph65, %middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.dg, %middle.block ], [ %i.dg, %.lr.ph65 ], [ %i.dg, %.lr.ph65.prol.loopexit ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.05267, i64 8
  %i.ha = getelementptr inbounds [2 x i8], ptr %.05366, i64 %.pre-phi
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.hb = load i32, ptr %6, align 4, !tbaa !28    ; 3 uses
  %i.hc = sext i32 %i.hb to i64
  %i.hd = icmp slt i64 %indvars.iv.next96, %i.hc
  br i1 %i.hd, label %.lr.ph70.split, label %._crit_edge71, !llvm.loop !185

._crit_edge76:                                    ; preds = %._crit_edge71, %.lr.ph75, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge76, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not95 = icmp sgt i32 %i.k, %i.j
  br i1 %.not95, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !28     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph98.split.preheader, label %._crit_edge99

.lr.ph98.split.preheader:                         ; preds = %.lr.ph98
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph98.split

.lr.ph98.split:                                   ; preds = %.lr.ph98.split.preheader, %._crit_edge94
  %i.t = phi i32 [ %i.p, %.lr.ph98.split.preheader ], [ %i.am, %._crit_edge94 ] ; 2 uses
  %indvars.iv110 = phi i64 [ %i.r, %.lr.ph98.split.preheader ], [ %indvars.iv.next111, %._crit_edge94 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !29
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv110, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !32
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph93.preheader, label %._crit_edge94

.lr.ph93.preheader:                               ; preds = %.lr.ph98.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !64
  %i.ae = load ptr, ptr %4, align 8, !tbaa !43
  %i.af = load i32, ptr %i.n, align 4, !tbaa !29
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv110, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !32
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !28
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph93

._crit_edge94:                                    ; preds = %._crit_edge, %.lr.ph98.split
  %i.am = phi i32 [ %i.t, %.lr.ph98.split ], [ %i.fn, %._crit_edge ]
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next111 to i32
  %exitcond113.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond113.not, label %._crit_edge99, label %.lr.ph98.split, !llvm.loop !186

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %._crit_edge
  %i.an = phi i32 [ %.pre, %.lr.ph93.preheader ], [ %i.bb, %._crit_edge ] ; 4 uses
  %indvars.iv107 = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next108, %._crit_edge ] ; 2 uses
  %.06690 = phi ptr [ %i.ad, %.lr.ph93.preheader ], [ %i.fl, %._crit_edge ] ; 2 uses
  %.06789 = phi ptr [ %i.ak, %.lr.ph93.preheader ], [ %i.fm, %._crit_edge ] ; 5 uses
  %.06789132 = ptrtoaddr ptr %.06789 to i64       ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !62
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv107
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !28
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.as ; 7 uses
  %i.au = load <4 x float>, ptr %.06690, align 4, !tbaa !61 ; 9 uses
  %i.av = icmp sgt i32 %i.an, 3
  br i1 %i.av, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.lr.ph93
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ax = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ay = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.az = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  br label %bb.c

.preheader.loopexit:                              ; preds = %bb.c
  %i.ba = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.lr.ph93
  %i.bb = phi i32 [ %i.an, %.lr.ph93 ], [ %i.eo, %.preheader.loopexit ] ; 6 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph93 ], [ %i.ba, %.preheader.loopexit ] ; 2 uses
  %i.bc = icmp slt i32 %.0.lcssa, %i.bb
  br i1 %i.bc, label %.lr.ph88, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre114 = sext i32 %i.bb to i64
  br label %._crit_edge

.lr.ph88:                                         ; preds = %.preheader
  %i.bd = shl nuw nsw i32 %i.bb, 1
  %i.be = zext i32 %.0.lcssa to i64               ; 5 uses
  %i.bf = zext nneg i32 %i.bb to i64              ; 5 uses
  %i.bg = zext nneg i32 %i.bd to i64              ; 2 uses
  %wide.trip.count = zext i32 %i.bb to i64        ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.at, i64 %i.bf ; 2 uses
  %invariant.gep123 = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bg ; 2 uses
  %i.bh = sub nsw i64 %wide.trip.count, %i.be     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bh, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph88
  %i.bi = add nsw i64 %i.as, %i.bg
  %i.bj = shl nsw i64 %i.bi, 1
  %i.bk = sub i64 %.06789132, %i.al               ; 3 uses
  %i.bl = sub i64 %i.bj, %i.bk
  %diff.check = icmp ugt i64 %i.bl, -16
  %i.bm = add nsw i64 %i.as, %wide.trip.count
  %i.bn = shl nsw i64 %i.bm, 1
  %i.bo = sub i64 %i.bn, %i.bk
  %diff.check133 = icmp ugt i64 %i.bo, -16
  %conflict.rdx = or i1 %diff.check, %diff.check133
  %i.bp = shl nsw i64 %i.as, 1                    ; 2 uses
  %i.bq = sub i64 %i.bp, %i.bk
  %diff.check134 = icmp ugt i64 %i.bq, -16
  %conflict.rdx135 = or i1 %conflict.rdx, %diff.check134
  %i.br = shl nuw nsw i64 %wide.trip.count, 1
  %i.bs = add i64 %i.br, %.06789132
  %i.bt = add i64 %i.al, %i.bp
  %i.bu = sub i64 %i.bt, %i.bs
  %diff.check136 = icmp ugt i64 %i.bu, -16
  %conflict.rdx137 = or i1 %conflict.rdx135, %diff.check136
  br i1 %conflict.rdx137, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bh, -8                      ; 3 uses
  %i.bv = add nsw i64 %n.vec, %i.be
  %broadcast.splat = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat139 = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat141 = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat143 = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = add nuw i64 %index, %i.be               ; 5 uses
  %i.bx = sub nsw i64 %i.bw, %i.bf
  %i.by = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.bx
  %wide.load = load <8 x i16>, ptr %i.by, align 2, !tbaa !72
  %i.bz = zext <8 x i16> %wide.load to <8 x i32>
  %i.ca = shl nuw <8 x i32> %i.bz, splat (i32 16)
  %i.cb = bitcast <8 x i32> %i.ca to <8 x float>
  %i.cc = fmul fast <8 x float> %broadcast.splat, %i.cb
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bw
  %wide.load144 = load <8 x i16>, ptr %i.cd, align 2, !tbaa !72
  %i.ce = zext <8 x i16> %wide.load144 to <8 x i32>
  %i.cf = shl nuw <8 x i32> %i.ce, splat (i32 16)
  %i.cg = bitcast <8 x i32> %i.cf to <8 x float>
  %i.ch = fmul fast <8 x float> %broadcast.splat139, %i.cg
  %i.ci = fadd fast <8 x float> %i.ch, %i.cc
  %i.cj = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bw
  %wide.load145 = load <8 x i16>, ptr %i.cj, align 2, !tbaa !72
  %i.ck = zext <8 x i16> %wide.load145 to <8 x i32>
  %i.cl = shl nuw <8 x i32> %i.ck, splat (i32 16)
  %i.cm = bitcast <8 x i32> %i.cl to <8 x float>
  %i.cn = fmul fast <8 x float> %broadcast.splat141, %i.cm
  %i.co = fadd fast <8 x float> %i.ci, %i.cn
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep123, i64 %i.bw
  %wide.load146 = load <8 x i16>, ptr %i.cp, align 2, !tbaa !72
  %i.cq = zext <8 x i16> %wide.load146 to <8 x i32>
  %i.cr = shl nuw <8 x i32> %i.cq, splat (i32 16)
  %i.cs = bitcast <8 x i32> %i.cr to <8 x float>
  %i.ct = fmul fast <8 x float> %broadcast.splat143, %i.cs
  %i.cu = fadd fast <8 x float> %i.co, %i.ct
  %i.cv = bitcast <8 x float> %i.cu to <8 x i32>
  %i.cw = lshr <8 x i32> %i.cv, splat (i32 16)
  %i.cx = trunc nuw <8 x i32> %i.cw to <8 x i16>
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.06789, i64 %i.bw
  store <8 x i16> %i.cx, ptr %i.cy, align 2, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph88, %middle.block
  %indvars.iv104.ph = phi i64 [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph88 ], [ %i.bv, %middle.block ]
  br label %scalar.ph

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.da = phi i32 [ %i.an, %.lr.ph ], [ %i.eo, %bb.c ] ; 2 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.dc = sext i32 %i.da to i64                   ; 2 uses
  %i.dd = sub nsw i64 0, %i.dc
  %i.de = getelementptr inbounds [2 x i8], ptr %i.db, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 1, !tbaa !20
  %i.dg = insertelement <2 x i64> poison, i64 %i.df, i64 0
  %i.dh = bitcast <2 x i64> %i.dg to <8 x i16>
  %9 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.di = bitcast <8 x i16> %9 to <4 x float>
  %i.dj = load i64, ptr %i.db, align 1, !tbaa !20
  %i.dk = insertelement <2 x i64> poison, i64 %i.dj, i64 0
  %i.dl = bitcast <2 x i64> %i.dk to <8 x i16>
  %10 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dm = bitcast <8 x i16> %10 to <4 x float>
  %i.dn = getelementptr inbounds [2 x i8], ptr %i.db, i64 %i.dc
  %i.do = load i64, ptr %i.dn, align 1, !tbaa !20
  %i.dp = insertelement <2 x i64> poison, i64 %i.do, i64 0
  %i.dq = bitcast <2 x i64> %i.dp to <8 x i16>
  %11 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dr = bitcast <8 x i16> %11 to <4 x float>
  %i.ds = shl nuw nsw i32 %i.da, 1
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 1, !tbaa !20
  %i.dw = insertelement <2 x i64> poison, i64 %i.dv, i64 0
  %i.dx = bitcast <2 x i64> %i.dw to <8 x i16>
  %12 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dy = bitcast <8 x i16> %12 to <4 x float>
  %i.dz = fmul fast <4 x float> %i.aw, %i.di
  %i.ea = fmul fast <4 x float> %i.ax, %i.dm
  %i.eb = fadd fast <4 x float> %i.ea, %i.dz
  %i.ec = fmul fast <4 x float> %i.ay, %i.dr
  %i.ed = fadd fast <4 x float> %i.eb, %i.ec
  %i.ee = fmul fast <4 x float> %i.az, %i.dy
  %i.ef = fadd fast <4 x float> %i.ed, %i.ee
  %i.eg = bitcast <4 x float> %i.ef to <8 x i16>
  %i.eh = shufflevector <8 x i16> %i.eg, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ei = bitcast <8 x i16> %i.eh to <4 x float>
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ek = bitcast <4 x float> %i.ej to <2 x i64>
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.06789, i64 %indvars.iv
  %i.em = extractelement <2 x i64> %i.ek, i64 0
  store i64 %i.em, ptr %i.el, align 1, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.en = or disjoint i64 %indvars.iv.next, 3
  %i.eo = load i32, ptr %8, align 4, !tbaa !28    ; 3 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %i.en, %i.ep
  br i1 %i.eq, label %bb.c, label %.preheader.loopexit, !llvm.loop !188

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %scalar.ph ], [ %indvars.iv104.ph, %scalar.ph.preheader ] ; 6 uses
  %i.er = sub nsw i64 %indvars.iv104, %i.bf
  %i.es = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2, !tbaa !72
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv104
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !72
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv104
  %i.ew = load i16, ptr %gep, align 2, !tbaa !72
  %gep124 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep123, i64 %indvars.iv104
  %i.ex = load i16, ptr %gep124, align 2, !tbaa !72
  %i.ey = insertelement <4 x i16> poison, i16 %i.et, i64 0
  %i.ez = insertelement <4 x i16> %i.ey, i16 %i.ev, i64 1
  %i.fa = insertelement <4 x i16> %i.ez, i16 %i.ew, i64 2
  %i.fb = insertelement <4 x i16> %i.fa, i16 %i.ex, i64 3
  %i.fc = zext <4 x i16> %i.fb to <4 x i32>
  %i.fd = shl nuw <4 x i32> %i.fc, splat (i32 16)
  %i.fe = bitcast <4 x i32> %i.fd to <4 x float>
  %i.ff = fmul fast <4 x float> %i.au, %i.fe
  %i.fg = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ff)
  %i.fh = bitcast float %i.fg to i32
  %i.fi = lshr i32 %i.fh, 16
  %i.fj = trunc nuw i32 %i.fi to i16
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %.06789, i64 %indvars.iv104
  store i16 %i.fj, ptr %i.fk, align 2, !tbaa !72
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !189

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre114, %.preheader.._crit_edge_crit_edge ], [ %i.bf, %middle.block ], [ %i.bf, %scalar.ph ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.06690, i64 16
  %i.fm = getelementptr inbounds [2 x i8], ptr %.06789, i64 %.pre-phi
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.fn = load i32, ptr %6, align 4, !tbaa !28    ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %i.fp = icmp slt i64 %indvars.iv.next108, %i.fo
  br i1 %i.fp, label %.lr.ph93, label %._crit_edge94, !llvm.loop !190

._crit_edge99:                                    ; preds = %._crit_edge94, %.lr.ph98, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge99, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.11(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !28     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !28
  %i.h = load i32, ptr %0, align 4, !tbaa !28     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !28
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !28
  %i.k = load i32, ptr %i.a, align 4, !tbaa !28   ; 2 uses
  %.not85 = icmp sgt i32 %i.k, %i.j
  br i1 %.not85, label %._crit_edge87, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load i32, ptr %5, align 4, !tbaa !28     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge87

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.v = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.au, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.t, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next92, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !43, !noalias !198
  %i.y = load i64, ptr %i.m, align 8, !tbaa !37, !noalias !198
  %i.z = mul i64 %i.y, %indvars.iv91
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !32, !noalias !198 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !43, !noalias !199
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !37, !noalias !199
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !32, !noalias !199 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph84, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph84:                                         ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !29, !noalias !199
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !29, !noalias !198
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aa, %i.an
  %i.ap = mul i64 %i.ag, %i.al
  %i.aq = load i32, ptr %8, align 4, !tbaa !28    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge
  %.pre95 = load i32, ptr %i.b, align 4, !tbaa !28
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph84, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.as = phi i32 [ %i.u, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre95, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.u, %.lr.ph84 ] ; 2 uses
  %i.at = phi i32 [ %i.v, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.v, %.lr.ph84 ]
  %i.au = phi i32 [ %i.w, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.w, %.lr.ph84 ]
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, 1
  %i.av = sext i32 %i.as to i64
  %.not.not = icmp slt i64 %indvars.iv91, %i.av
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge87, !llvm.loop !195

.lr.ph84.split:                                   ; preds = %.lr.ph84, %._crit_edge
  %i.aw = phi i32 [ %i.bl, %._crit_edge ], [ %i.v, %.lr.ph84 ]
  %i.ax = phi i32 [ %i.bm, %._crit_edge ], [ %i.aq, %.lr.ph84 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph84 ] ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = uitofp ninf nsz nneg i32 %i.ay to float
  %i.ba = load float, ptr %6, align 4, !tbaa !61
  %i.bb = fmul fast float %i.ba, %i.az
  %i.bc = fptosi float %i.bb to i32
  %i.bd = load i32, ptr %7, align 4, !tbaa !28
  %i.be = add nsw i32 %i.bd, -1
  %.sroa.speculated51 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = sext i32 %.sroa.speculated51 to i64
  %i.bg = mul i64 %i.ao, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bg
  %i.bi = icmp sgt i32 %i.ax, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph84.split
  %i.bj = mul i64 %i.ap, %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj
  %.pre = load i32, ptr %11, align 4, !tbaa !28
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre94 = load i32, ptr %5, align 4, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph84.split
  %i.bl = phi i32 [ %.pre94, %._crit_edge.loopexit ], [ %i.aw, %.lr.ph84.split ] ; 4 uses
  %i.bm = phi i32 [ %i.cf, %._crit_edge.loopexit ], [ %i.ax, %.lr.ph84.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = sext i32 %i.bl to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !196

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
end_hunk_0
begin_hunk_1_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.12:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ae = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.ae, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.af = load i32, ptr %i.l, align 4, !tbaa !29, !noalias !215
  %i.ag = load ptr, ptr %3, align 8, !tbaa !43, !noalias !215
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !37, !noalias !215
  %i.ai = mul i64 %i.ah, %indvars.iv
  %i.aj = load i64, ptr %i.n, align 8, !tbaa !32, !noalias !215 ; 3 uses
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak ; 6 uses
  %i.am = sext i32 %i.af to i64                   ; 2 uses
  %i.an = load i32, ptr %i.o, align 4, !tbaa !29, !noalias !216 ; 14 uses
  %i.ao = load i32, ptr %i.p, align 8, !tbaa !27, !noalias !216 ; 4 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !43, !noalias !216
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !37, !noalias !216
  %i.ar = mul i64 %i.aq, %indvars.iv
  %i.as = load i64, ptr %i.r, align 8, !tbaa !32, !noalias !216 ; 3 uses
  %i.at = mul i64 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.at ; 4 uses
  %i.av = sext i32 %i.an to i64                   ; 2 uses
  %i.aw = load i32, ptr %5, align 4, !tbaa !28    ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 4
  br i1 %i.ax, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.ay = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %i.az = load ptr, ptr %7, align 8, !tbaa !62    ; 2 uses
  %i.ba = load ptr, ptr %8, align 8, !tbaa !64
  %i.bb = load ptr, ptr %9, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  store i64 0, ptr %i.u, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.an, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %.noexc29 unwind label %bb.ba

.noexc29:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  store i64 0, ptr %i.x, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.w, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.an, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i unwind label %bb.p

_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i:         ; preds = %.noexc29
  %i.bc = icmp sgt i32 %i.ao, 0
  br i1 %i.bc, label %.lr.ph157.i, label %._crit_edge.i

.lr.ph157.i:                                      ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i
  %i.bd = load ptr, ptr %13, align 8, !tbaa !43
  %i.be = load ptr, ptr %12, align 8, !tbaa !43
  %i.bf = icmp sgt i32 %i.an, 0                   ; 3 uses
  %i.bg = shl i32 %i.an, 2                        ; 2 uses
  %i.bh = zext i32 %i.bg to i64                   ; 3 uses
  %wide.trip.count168.i = zext nneg i32 %i.ao to i64
  %wide.trip.count.i = zext nneg i32 %i.an to i64 ; 2 uses
  %i.bi = mul i64 %i.aj, %i.am                    ; 3 uses
  %i.bj = mul i64 %i.as, %i.av                    ; 3 uses
  br label %bb.q

._crit_edge.i:                                    ; preds = %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i, %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit.i
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !41  ; 2 uses
  %.not.i110.i = icmp eq ptr %i.bk, null
  br i1 %.not.i110.i, label %_ZN4ncnn3MatD2Ev.exit108.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %bb.e, label %_ZN4ncnn3MatD2Ev.exit108.i

bb.e:                                             ; preds = %bb.d
  %i.bn = load ptr, ptr %i.w, align 8, !tbaa !42  ; 3 uses
  %.not3.i111.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %13, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i111.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  invoke void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef %i.bo)
          to label %_ZN4ncnn3MatD2Ev.exit108.i unwind label %bb.i, !inline_history !1

bb.g:                                             ; preds = %bb.e
  %.not.i125.i = icmp eq ptr %i.bo, null
  br i1 %.not.i125.i, label %_ZN4ncnn3MatD2Ev.exit108.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.bo) #6
  br label %_ZN4ncnn3MatD2Ev.exit108.i

bb.i:                                             ; preds = %bb.f
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit108.i:                       ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  %i.bu = load ptr, ptr %i.s, align 8, !tbaa !41  ; 2 uses
  %.not.i114.i = icmp eq ptr %i.bu, null
  br i1 %.not.i114.i, label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit108.i
  %i.bv = atomicrmw add ptr %i.bu, i32 -1 acq_rel, align 4
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.k, label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit

bb.k:                                             ; preds = %bb.j
  %i.bx = load ptr, ptr %i.t, align 8, !tbaa !42  ; 3 uses
  %.not3.i115.i = icmp eq ptr %i.bx, null
  %i.by = load ptr, ptr %12, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i115.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef %i.by)
          to label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit unwind label %bb.o, !inline_history !1

bb.m:                                             ; preds = %bb.k
  %.not.i123.i = icmp eq ptr %i.by, null
  br i1 %.not.i123.i, label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.by) #6
  br label %_ZN4ncnnL33resize_bilinear_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit

bb.o:                                             ; preds = %bb.l
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #22
  unreachable

bb.p:                                             ; preds = %.noexc29
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  %i.cf = load ptr, ptr %i.s, align 8, !tbaa !41  ; 2 uses
  %.not.i118.i = icmp eq ptr %i.cf, null
  br i1 %.not.i118.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.u

bb.q:                                             ; preds = %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i, %.lr.ph157.i
  %indvars.iv165.i = phi i64 [ 0, %.lr.ph157.i ], [ %indvars.iv.next166.i, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i ] ; 5 uses
  %.081155.i = phi i32 [ -2, %.lr.ph157.i ], [ %i.ch, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i ] ; 2 uses
  %.082154.i = phi ptr [ %i.bd, %.lr.ph157.i ], [ %.1.i90, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i ] ; 7 uses
  %.083153.i = phi ptr [ %i.be, %.lr.ph157.i ], [ %.184.i89, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i ] ; 8 uses
  %.095152.i = phi ptr [ %i.ba, %.lr.ph157.i ], [ %i.ie, %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv165.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !28 ; 6 uses
  %i.ci = icmp eq i32 %i.ch, %.081155.i
  br i1 %i.ci, label %.loopexit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = add nsw i32 %.081155.i, 1
  %i.ck = icmp eq i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cl = add nsw i32 %i.ch, 1
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul i64 %i.bi, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.cn
  br i1 %i.bf, label %.lr.ph151.i, label %.loopexit.i.thread

.lr.ph151.i:                                      ; preds = %bb.s, %.lr.ph151.i
  %indvars.iv160.i = phi i64 [ %indvars.iv.next161.i, %.lr.ph151.i ], [ 0, %bb.s ] ; 3 uses
  %.079149.i = phi ptr [ %i.do, %.lr.ph151.i ], [ %i.ay, %bb.s ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv160.i
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !28
  %i.cr = shl nsw i32 %i.cq, 2
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.cs ; 2 uses
  %i.cu = load float, ptr %.079149.i, align 4, !tbaa !61
  %i.cv = insertelement <4 x float> poison, float %i.cu, i64 0
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cx = getelementptr inbounds nuw i8, ptr %.079149.i, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !61
  %i.cz = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = load i64, ptr %i.ct, align 1, !tbaa !20
  %i.dc = insertelement <2 x i64> poison, i64 %i.db, i64 0
  %i.dd = bitcast <2 x i64> %i.dc to <8 x i16>
  %14 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.de = bitcast <8 x i16> %14 to <4 x float>
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.dg = load i64, ptr %i.df, align 1, !tbaa !20
  %i.dh = insertelement <2 x i64> poison, i64 %i.dg, i64 0
  %i.di = bitcast <2 x i64> %i.dh to <8 x i16>
  %15 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.di, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dj = bitcast <8 x i16> %15 to <4 x float>
  %i.dk = fmul fast <4 x float> %i.cw, %i.de
  %i.dl = fmul fast <4 x float> %i.da, %i.dj
  %i.dm = fadd fast <4 x float> %i.dl, %i.dk
  %.idx.i = shl nuw nsw i64 %indvars.iv160.i, 4
  %i.dn = getelementptr inbounds nuw i8, ptr %.083153.i, i64 %.idx.i
  store <4 x float> %i.dm, ptr %i.dn, align 16, !tbaa !20
  %i.do = getelementptr inbounds nuw i8, ptr %.079149.i, i64 8
  %indvars.iv.next161.i = add nuw nsw i64 %indvars.iv160.i, 1 ; 2 uses
  %exitcond164.not.i = icmp eq i64 %indvars.iv.next161.i, %wide.trip.count.i
  br i1 %exitcond164.not.i, label %.loopexit.i.thread138, label %.lr.ph151.i, !llvm.loop !204

bb.t:                                             ; preds = %bb.r
  %i.dp = sext i32 %i.ch to i64
  %i.dq = mul i64 %i.bi, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.dq
  %i.ds = add nsw i32 %i.ch, 1
  %i.dt = sext i32 %i.ds to i64
  %i.du = mul i64 %i.bi, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.du
  br i1 %i.bf, label %.lr.ph.i, label %.loopexit.i.thread

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.t ] ; 3 uses
  %.077147.i = phi ptr [ %i.fk, %.lr.ph.i ], [ %i.ay, %bb.t ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !28
  %i.dy = shl nsw i32 %i.dx, 2
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds [2 x i8], ptr %i.dr, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.dv, i64 %i.dz ; 2 uses
  %i.ec = load float, ptr %.077147.i, align 4, !tbaa !61
  %i.ed = insertelement <4 x float> poison, float %i.ec, i64 0
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.077147.i, i64 4
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !61
  %i.eh = insertelement <4 x float> poison, float %i.eg, i64 0
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ej = load i64, ptr %i.ea, align 1, !tbaa !20
  %i.ek = insertelement <2 x i64> poison, i64 %i.ej, i64 0
  %i.el = bitcast <2 x i64> %i.ek to <8 x i16>
  %16 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.el, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.em = bitcast <8 x i16> %16 to <4 x float>
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.eo = load i64, ptr %i.en, align 1, !tbaa !20
  %i.ep = insertelement <2 x i64> poison, i64 %i.eo, i64 0
  %i.eq = bitcast <2 x i64> %i.ep to <8 x i16>
  %17 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.er = bitcast <8 x i16> %17 to <4 x float>
  %i.es = load i64, ptr %i.eb, align 1, !tbaa !20
  %i.et = insertelement <2 x i64> poison, i64 %i.es, i64 0
  %i.eu = bitcast <2 x i64> %i.et to <8 x i16>
  %18 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ev = bitcast <8 x i16> %18 to <4 x float>
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ex = load i64, ptr %i.ew, align 1, !tbaa !20
  %i.ey = insertelement <2 x i64> poison, i64 %i.ex, i64 0
  %i.ez = bitcast <2 x i64> %i.ey to <8 x i16>
  %19 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ez, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fa = bitcast <8 x i16> %19 to <4 x float>
  %i.fb = fmul fast <4 x float> %i.ee, %i.em
  %i.fc = fmul fast <4 x float> %i.ee, %i.ev
  %i.fd = fmul fast <4 x float> %i.ei, %i.er
  %i.fe = fadd fast <4 x float> %i.fd, %i.fb
  %i.ff = fmul fast <4 x float> %i.ei, %i.fa
  %i.fg = fadd fast <4 x float> %i.ff, %i.fc
  %i.fh = shl nuw nsw i64 %indvars.iv.i, 2        ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.083153.i, i64 %i.fh
  store <4 x float> %i.fe, ptr %i.fi, align 16, !tbaa !20
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.082154.i, i64 %i.fh
  store <4 x float> %i.fg, ptr %i.fj, align 16, !tbaa !20
  %i.fk = getelementptr inbounds nuw i8, ptr %.077147.i, i64 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i.thread138, label %.lr.ph.i, !llvm.loop !205

.loopexit.i.thread:                               ; preds = %bb.t, %bb.s
  %.184.i.ph = phi ptr [ %.083153.i, %bb.t ], [ %.082154.i, %bb.s ]
  %.1.i.ph = phi ptr [ %.082154.i, %bb.t ], [ %.083153.i, %bb.s ]
  %i.fl = mul i64 %i.bj, %indvars.iv165.i
  %i.fm = load <2 x float>, ptr %.095152.i, align 4, !tbaa !61
  br label %.preheader.i.i

.loopexit.i.thread138:                            ; preds = %.lr.ph.i, %.lr.ph151.i
  %.184.i.ph136 = phi ptr [ %.082154.i, %.lr.ph151.i ], [ %.083153.i, %.lr.ph.i ]
  %.1.i.ph137 = phi ptr [ %.083153.i, %.lr.ph151.i ], [ %.082154.i, %.lr.ph.i ]
  %i.fn = mul i64 %i.bj, %indvars.iv165.i
  %i.fo = load <2 x float>, ptr %.095152.i, align 4, !tbaa !61 ; 3 uses
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fq = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.lr.ph.i.i.preheader

.loopexit.i:                                      ; preds = %bb.q
  %i.fr = mul i64 %i.bj, %indvars.iv165.i         ; 2 uses
  %i.fs = load <2 x float>, ptr %.095152.i, align 4, !tbaa !61 ; 4 uses
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fu = shufflevector <2 x float> %i.fs, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br i1 %i.bf, label %.lr.ph.i.i.preheader, label %.preheader.i.i

.lr.ph.i.i.preheader:                             ; preds = %.loopexit.i.thread138, %.loopexit.i
  %i.fv = phi <4 x float> [ %i.fq, %.loopexit.i.thread138 ], [ %i.fu, %.loopexit.i ]
  %i.fw = phi <4 x float> [ %i.fp, %.loopexit.i.thread138 ], [ %i.ft, %.loopexit.i ]
  %i.fx = phi i64 [ %i.fn, %.loopexit.i.thread138 ], [ %i.fr, %.loopexit.i ] ; 2 uses
  %.1.i142 = phi ptr [ %.1.i.ph137, %.loopexit.i.thread138 ], [ %.082154.i, %.loopexit.i ] ; 2 uses
  %.184.i141 = phi ptr [ %.184.i.ph136, %.loopexit.i.thread138 ], [ %.083153.i, %.loopexit.i ] ; 2 uses
  %i.fy = phi <2 x float> [ %i.fo, %.loopexit.i.thread138 ], [ %i.fs, %.loopexit.i ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.fx
  br label %.lr.ph.i.i

.preheader.loopexit.i.i:                          ; preds = %.lr.ph.i.i
  %i.ga = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.thread, %.preheader.loopexit.i.i, %.loopexit.i
  %i.gb = phi i64 [ %i.fr, %.loopexit.i ], [ %i.fx, %.preheader.loopexit.i.i ], [ %i.fl, %.loopexit.i.thread ]
  %.1.i90 = phi ptr [ %.082154.i, %.loopexit.i ], [ %.1.i142, %.preheader.loopexit.i.i ], [ %.1.i.ph, %.loopexit.i.thread ] ; 3 uses
  %.184.i89 = phi ptr [ %.083153.i, %.loopexit.i ], [ %.184.i141, %.preheader.loopexit.i.i ], [ %.184.i.ph, %.loopexit.i.thread ] ; 3 uses
  %.0.lcssa.i.i = phi i32 [ 0, %.loopexit.i ], [ %i.ga, %.preheader.loopexit.i.i ], [ 0, %.loopexit.i.thread ] ; 2 uses
  %i.gc = phi <2 x float> [ %i.fs, %.loopexit.i ], [ %i.fy, %.preheader.loopexit.i.i ], [ %i.fm, %.loopexit.i.thread ] ; 3 uses
  %i.gd = icmp slt i32 %.0.lcssa.i.i, %i.bg
  br i1 %i.gd, label %.lr.ph29.preheader.i.i, label %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i

.lr.ph29.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.ge = zext i32 %.0.lcssa.i.i to i64           ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.gb ; 2 uses
  %i.gg = sub nsw i64 %i.bh, %i.ge                ; 3 uses
  %min.iters.check153 = icmp ult i64 %i.gg, 8
  br i1 %min.iters.check153, label %.lr.ph29.i.i.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %.lr.ph29.preheader.i.i
  %n.vec155 = and i64 %i.gg, -8                   ; 3 uses
  %i.gh = add nsw i64 %n.vec155, %i.ge
  %broadcast.splat157 = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat159 = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph154
  %index161 = phi i64 [ 0, %vector.ph154 ], [ %index.next166, %vector.body160 ] ; 2 uses
  %i.gi = add nuw i64 %index161, %i.ge            ; 3 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.184.i89, i64 %i.gi ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %wide.load162 = load <4 x float>, ptr %i.gj, align 4, !tbaa !61
  %wide.load163 = load <4 x float>, ptr %i.gk, align 4, !tbaa !61
  %i.gl = fmul fast <4 x float> %wide.load162, %broadcast.splat157
  %i.gm = fmul fast <4 x float> %wide.load163, %broadcast.splat157
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.1.i90, i64 %i.gi ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %wide.load164 = load <4 x float>, ptr %i.gn, align 4, !tbaa !61
  %wide.load165 = load <4 x float>, ptr %i.go, align 4, !tbaa !61
  %i.gp = fmul fast <4 x float> %wide.load164, %broadcast.splat159
  %i.gq = fmul fast <4 x float> %wide.load165, %broadcast.splat159
  %i.gr = fadd fast <4 x float> %i.gp, %i.gl
  %i.gs = fadd fast <4 x float> %i.gq, %i.gm
  %i.gt = bitcast <4 x float> %i.gr to <4 x i32>
  %i.gu = bitcast <4 x float> %i.gs to <4 x i32>
  %i.gv = lshr <4 x i32> %i.gt, splat (i32 16)
  %i.gw = lshr <4 x i32> %i.gu, splat (i32 16)
  %i.gx = trunc nuw <4 x i32> %i.gv to <4 x i16>
  %i.gy = trunc nuw <4 x i32> %i.gw to <4 x i16>
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.gf, i64 %i.gi ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store <4 x i16> %i.gx, ptr %i.gz, align 2, !tbaa !72
  store <4 x i16> %i.gy, ptr %i.ha, align 2, !tbaa !72
  %index.next166 = add nuw i64 %index161, 8       ; 2 uses
  %i.hb = icmp eq i64 %index.next166, %n.vec155
  br i1 %i.hb, label %middle.block167, label %vector.body160, !llvm.loop !206

middle.block167:                                  ; preds = %vector.body160
  %cmp.n168 = icmp eq i64 %i.gg, %n.vec155
  br i1 %cmp.n168, label %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i, label %.lr.ph29.i.i.preheader

.lr.ph29.i.i.preheader:                           ; preds = %.lr.ph29.preheader.i.i, %middle.block167
  %indvars.iv31.i.i.ph = phi i64 [ %i.ge, %.lr.ph29.preheader.i.i ], [ %i.gh, %middle.block167 ]
  br label %.lr.ph29.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.184.i141, i64 %indvars.iv.i.i
  %i.hd = load <4 x float>, ptr %i.hc, align 1, !tbaa !20
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.1.i142, i64 %indvars.iv.i.i
  %i.hf = load <4 x float>, ptr %i.he, align 1, !tbaa !20
  %i.hg = fmul fast <4 x float> %i.hd, %i.fw
  %i.hh = fmul fast <4 x float> %i.hf, %i.fv
  %i.hi = fadd fast <4 x float> %i.hh, %i.hg
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %indvars.iv.i.i
  %i.hk = bitcast <4 x float> %i.hi to <8 x i16>
  %i.hl = shufflevector <8 x i16> %i.hk, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.hm = bitcast <8 x i16> %i.hl to <4 x float>
  %i.hn = shufflevector <4 x float> %i.hm, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ho = bitcast <4 x float> %i.hn to <2 x i64>
  %i.hp = extractelement <2 x i64> %i.ho, i64 0
  store i64 %i.hp, ptr %i.hj, align 1, !tbaa !20
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 4 ; 3 uses
  %i.hq = or disjoint i64 %indvars.iv.next.i.i, 3
  %i.hr = icmp samesign ult i64 %i.hq, %i.bh
  br i1 %i.hr, label %.lr.ph.i.i, label %.preheader.loopexit.i.i, !llvm.loop !207

.lr.ph29.i.i:                                     ; preds = %.lr.ph29.i.i.preheader, %.lr.ph29.i.i
  %indvars.iv31.i.i = phi i64 [ %indvars.iv.next32.i.i, %.lr.ph29.i.i ], [ %indvars.iv31.i.i.ph, %.lr.ph29.i.i.preheader ] ; 4 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.184.i89, i64 %indvars.iv31.i.i
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !61
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.1.i90, i64 %indvars.iv31.i.i
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !61
  %i.hw = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.hx = insertelement <2 x float> %i.hw, float %i.hv, i64 1
  %i.hy = fmul fast <2 x float> %i.hx, %i.gc
  %i.hz = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.hy)
  %i.ia = bitcast float %i.hz to i32
  %i.ib = lshr i32 %i.ia, 16
  %i.ic = trunc nuw i32 %i.ib to i16
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.gf, i64 %indvars.iv31.i.i
  store i16 %i.ic, ptr %i.id, align 2, !tbaa !72
  %indvars.iv.next32.i.i = add nuw nsw i64 %indvars.iv31.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next32.i.i, %i.bh
  br i1 %exitcond.not.i.i, label %_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i, label %.lr.ph29.i.i, !llvm.loop !208

_ZN4ncnnL22vresize_bilinear_bf16sEPKfS1_Ptiff.exit.i: ; preds = %.lr.ph29.i.i, %middle.block167, %.preheader.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %.095152.i, i64 8
  %indvars.iv.next166.i = add nuw nsw i64 %indvars.iv165.i, 1 ; 2 uses
  %exitcond169.not.i = icmp eq i64 %indvars.iv.next166.i, %wide.trip.count168.i
  br i1 %exitcond169.not.i, label %._crit_edge.i, label %bb.q, !llvm.loop !209

bb.u:                                             ; preds = %bb.p
  %i.if = atomicrmw add ptr %i.cf, i32 -1 acq_rel, align 4
  %i.ig = icmp eq i32 %i.if, 1
  br i1 %i.ig, label %bb.v, label %_ZN4ncnn3MatD2Ev.exit.i

bb.v:                                             ; preds = %bb.u
  %i.ih = load ptr, ptr %i.t, align 8, !tbaa !42  ; 3 uses
  %.not3.i119.i = icmp eq ptr %i.ih, null
  %i.ii = load ptr, ptr %12, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i119.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ij = load ptr, ptr %i.ih, align 8, !tbaa !13
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load ptr, ptr %i.ik, align 8
  invoke void %i.il(ptr noundef nonnull align 8 dereferenceable(8) %i.ih, ptr noundef %i.ii)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.z, !inline_history !1

bb.x:                                             ; preds = %bb.v
  %.not.i122.i = icmp eq ptr %i.ii, null
  br i1 %.not.i122.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef nonnull %i.ii) #6
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.z:                                             ; preds = %bb.w
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.y, %bb.x, %bb.w, %bb.u, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  br label %.body

end_hunk_1
begin_hunk_2_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.13:bb.a
  br i1 %.not.i335.i, label %_ZN4ncnn3MatD2Ev.exit294.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.cc) #6
  br label %_ZN4ncnn3MatD2Ev.exit294.i

bb.i:                                             ; preds = %bb.f
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit294.i:                       ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  %i.ci = load ptr, ptr %i.y, align 8, !tbaa !41  ; 2 uses
  %.not.i300.i = icmp eq ptr %i.ci, null
  br i1 %.not.i300.i, label %_ZN4ncnn3MatD2Ev.exit293.i, label %bb.j

bb.j:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit294.i
  %i.cj = atomicrmw add ptr %i.ci, i32 -1 acq_rel, align 4
  %i.ck = icmp eq i32 %i.cj, 1
  br i1 %i.ck, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit293.i

bb.k:                                             ; preds = %bb.j
  %i.cl = load ptr, ptr %i.z, align 8, !tbaa !42  ; 3 uses
  %.not3.i301.i = icmp eq ptr %i.cl, null
  %i.cm = load ptr, ptr %16, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i301.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  invoke void %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef %i.cm)
          to label %_ZN4ncnn3MatD2Ev.exit293.i unwind label %bb.o, !inline_history !1

bb.m:                                             ; preds = %bb.k
  %.not.i333.i = icmp eq ptr %i.cm, null
  br i1 %.not.i333.i, label %_ZN4ncnn3MatD2Ev.exit293.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.cm) #6
  br label %_ZN4ncnn3MatD2Ev.exit293.i

bb.o:                                             ; preds = %bb.l
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit293.i:                       ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %_ZN4ncnn3MatD2Ev.exit294.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.cs = load ptr, ptr %i.v, align 8, !tbaa !41  ; 2 uses
  %.not.i304.i = icmp eq ptr %i.cs, null
  br i1 %.not.i304.i, label %_ZN4ncnn3MatD2Ev.exit292.i, label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit293.i
  %i.ct = atomicrmw add ptr %i.cs, i32 -1 acq_rel, align 4
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit292.i

bb.q:                                             ; preds = %bb.p
  %i.cv = load ptr, ptr %i.w, align 8, !tbaa !42  ; 3 uses
  %.not3.i305.i = icmp eq ptr %i.cv, null
  %i.cw = load ptr, ptr %15, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i305.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  invoke void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef %i.cw)
          to label %_ZN4ncnn3MatD2Ev.exit292.i unwind label %bb.u, !inline_history !1

bb.s:                                             ; preds = %bb.q
  %.not.i331.i = icmp eq ptr %i.cw, null
  br i1 %.not.i331.i, label %_ZN4ncnn3MatD2Ev.exit292.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.cw) #6
  br label %_ZN4ncnn3MatD2Ev.exit292.i

bb.u:                                             ; preds = %bb.r
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit292.i:                       ; preds = %bb.t, %bb.s, %bb.r, %bb.p, %_ZN4ncnn3MatD2Ev.exit293.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  %i.dc = load ptr, ptr %i.s, align 8, !tbaa !41  ; 2 uses
  %.not.i308.i = icmp eq ptr %i.dc, null
  br i1 %.not.i308.i, label %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit292.i
  %i.dd = atomicrmw add ptr %i.dc, i32 -1 acq_rel, align 4
  %i.de = icmp eq i32 %i.dd, 1
  br i1 %i.de, label %bb.w, label %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit

bb.w:                                             ; preds = %bb.v
  %i.df = load ptr, ptr %i.t, align 8, !tbaa !42  ; 3 uses
  %.not3.i309.i = icmp eq ptr %i.df, null
  %i.dg = load ptr, ptr %14, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i309.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !13
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.df, ptr noundef %i.dg)
          to label %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit unwind label %bb.aa, !inline_history !1

bb.y:                                             ; preds = %bb.w
  %.not.i329.i = icmp eq ptr %i.dg, null
  br i1 %.not.i329.i, label %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.dg) #6
  br label %_ZN4ncnnL32resize_bicubic_image_pack4_bf16sERKNS_3MatERS0_PfPiS4_S5_.exit

bb.aa:                                            ; preds = %bb.x
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #22
  unreachable

bb.ab:                                            ; preds = %.noexc29
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN4ncnn3MatD2Ev.exit289.i

bb.ac:                                            ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit343.i
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN4ncnn3MatD2Ev.exit290.i

bb.ad:                                            ; preds = %_ZN4ncnn3MatC2EimiPNS_9AllocatorE.exit341.i
  %i.do = landingpad { ptr, i32 }
          catch ptr null                          ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  %i.dp = load ptr, ptr %i.y, align 8, !tbaa !41  ; 2 uses
  %.not.i312.i = icmp eq ptr %i.dp, null
  br i1 %.not.i312.i, label %_ZN4ncnn3MatD2Ev.exit290.i, label %bb.an

bb.ae:                                            ; preds = %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i, %.lr.ph437.i
  %indvars.iv458.i = phi i64 [ 0, %.lr.ph437.i ], [ %indvars.iv.next459.i, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i ] ; 3 uses
  %.0223435.i = phi i32 [ -3, %.lr.ph437.i ], [ %i.dr, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i ] ; 4 uses
  %.0224434.i = phi ptr [ %i.bp, %.lr.ph437.i ], [ %.1.i, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i ] ; 10 uses
  %.0225433.i = phi ptr [ %i.bq, %.lr.ph437.i ], [ %.1226.i, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i ] ; 11 uses
  %.0227432.i = phi ptr [ %i.br, %.lr.ph437.i ], [ %.1228.i, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i ] ; 12 uses
  %.0229431.i = phi ptr [ %i.bs, %.lr.ph437.i ], [ %.1230.i, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i ] ; 13 uses
  %.0257430.i = phi ptr [ %i.bm, %.lr.ph437.i ], [ %i.vf, %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv458.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !28 ; 15 uses
  %i.ds = icmp eq i32 %i.dr, %.0223435.i
  br i1 %i.ds, label %.loopexit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = add nsw i32 %.0223435.i, 1
  %i.du = icmp eq i32 %i.dr, %i.dt
  br i1 %i.du, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dv = add nsw i32 %i.dr, 2
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul i64 %i.bx, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.dx
  br i1 %i.bt, label %.lr.ph429.i, label %.loopexit.i

.lr.ph429.i:                                      ; preds = %bb.ag, %.lr.ph429.i
  %indvars.iv453.i = phi i64 [ %indvars.iv.next454.i, %.lr.ph429.i ], [ 0, %bb.ag ] ; 3 uses
  %.0221427.i = phi ptr [ %i.fu, %.lr.ph429.i ], [ %i.bk, %bb.ag ] ; 5 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv453.i
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !28
  %i.eb = shl nsw i32 %i.ea, 2
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [2 x i8], ptr %i.dy, i64 %i.ec ; 4 uses
  %i.ee = load float, ptr %.0221427.i, align 4, !tbaa !61
  %i.ef = insertelement <4 x float> poison, float %i.ee, i64 0
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eh = getelementptr inbounds nuw i8, ptr %.0221427.i, i64 4
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !61
  %i.ej = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> poison, <4 x i32> zeroinitializer
  %i.el = getelementptr inbounds nuw i8, ptr %.0221427.i, i64 8
  %i.em = load float, ptr %i.el, align 4, !tbaa !61
  %i.en = insertelement <4 x float> poison, float %i.em, i64 0
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ep = getelementptr inbounds nuw i8, ptr %.0221427.i, i64 12
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !61
  %i.er = insertelement <4 x float> poison, float %i.eq, i64 0
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> zeroinitializer
  %i.et = getelementptr inbounds i8, ptr %i.ed, i64 -8
  %i.eu = load i64, ptr %i.et, align 1, !tbaa !20
  %i.ev = insertelement <2 x i64> poison, i64 %i.eu, i64 0
  %i.ew = bitcast <2 x i64> %i.ev to <8 x i16>
  %18 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ew, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ex = bitcast <8 x i16> %18 to <4 x float>
  %i.ey = load i64, ptr %i.ed, align 1, !tbaa !20
  %i.ez = insertelement <2 x i64> poison, i64 %i.ey, i64 0
  %i.fa = bitcast <2 x i64> %i.ez to <8 x i16>
  %19 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fb = bitcast <8 x i16> %19 to <4 x float>
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.fd = load i64, ptr %i.fc, align 1, !tbaa !20
  %i.fe = insertelement <2 x i64> poison, i64 %i.fd, i64 0
  %i.ff = bitcast <2 x i64> %i.fe to <8 x i16>
  %20 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ff, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fg = bitcast <8 x i16> %20 to <4 x float>
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.fi = load i64, ptr %i.fh, align 1, !tbaa !20
  %i.fj = insertelement <2 x i64> poison, i64 %i.fi, i64 0
  %i.fk = bitcast <2 x i64> %i.fj to <8 x i16>
  %21 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fl = bitcast <8 x i16> %21 to <4 x float>
  %i.fm = fmul fast <4 x float> %i.eg, %i.ex
  %i.fn = fmul fast <4 x float> %i.ek, %i.fb
  %i.fo = fadd fast <4 x float> %i.fn, %i.fm
  %i.fp = fmul fast <4 x float> %i.eo, %i.fg
  %i.fq = fadd fast <4 x float> %i.fo, %i.fp
  %i.fr = fmul fast <4 x float> %i.es, %i.fl
  %i.fs = fadd fast <4 x float> %i.fq, %i.fr
  %.idx.i = shl nuw nsw i64 %indvars.iv453.i, 4
  %i.ft = getelementptr inbounds nuw i8, ptr %.0229431.i, i64 %.idx.i
  store <4 x float> %i.fs, ptr %i.ft, align 16, !tbaa !20
  %i.fu = getelementptr inbounds nuw i8, ptr %.0221427.i, i64 16
  %indvars.iv.next454.i = add nuw nsw i64 %indvars.iv453.i, 1 ; 2 uses
  %exitcond457.not.i = icmp eq i64 %indvars.iv.next454.i, %wide.trip.count.i
  br i1 %exitcond457.not.i, label %.loopexit.i, label %.lr.ph429.i, !llvm.loop !221

bb.ah:                                            ; preds = %bb.af
  %i.fv = add nsw i32 %.0223435.i, 2
  %i.fw = icmp eq i32 %i.dr, %i.fv
  br i1 %i.fw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fx = add nsw i32 %i.dr, 1
  %i.fy = sext i32 %i.fx to i64
  %i.fz = mul i64 %i.bx, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.fz
  %i.gb = add nsw i32 %i.dr, 2
  %i.gc = sext i32 %i.gb to i64
  %i.gd = mul i64 %i.bx, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.gd
  br i1 %i.bt, label %.lr.ph426.i, label %.loopexit.i

.lr.ph426.i:                                      ; preds = %bb.ai, %.lr.ph426.i
  %indvars.iv448.i = phi i64 [ %indvars.iv.next449.i, %.lr.ph426.i ], [ 0, %bb.ai ] ; 3 uses
  %.0219424.i = phi ptr [ %i.jd, %.lr.ph426.i ], [ %i.bk, %bb.ai ] ; 5 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv448.i
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !28
  %i.gh = shl nsw i32 %i.gg, 2
  %i.gi = sext i32 %i.gh to i64                   ; 2 uses
  %i.gj = getelementptr inbounds [2 x i8], ptr %i.ga, i64 %i.gi ; 4 uses
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.ge, i64 %i.gi ; 4 uses
  %i.gl = load float, ptr %.0219424.i, align 4, !tbaa !61
  %i.gm = insertelement <4 x float> poison, float %i.gl, i64 0
  %i.gn = shufflevector <4 x float> %i.gm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0219424.i, i64 4
  %i.gp = load float, ptr %i.go, align 4, !tbaa !61
  %i.gq = insertelement <4 x float> poison, float %i.gp, i64 0
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0219424.i, i64 8
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !61
  %i.gu = insertelement <4 x float> poison, float %i.gt, i64 0
  %i.gv = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.0219424.i, i64 12
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !61
  %i.gy = insertelement <4 x float> poison, float %i.gx, i64 0
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gj, i64 -8
  %i.hb = load i64, ptr %i.ha, align 1, !tbaa !20
  %i.hc = insertelement <2 x i64> poison, i64 %i.hb, i64 0
  %i.hd = bitcast <2 x i64> %i.hc to <8 x i16>
  %22 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.he = bitcast <8 x i16> %22 to <4 x float>
  %i.hf = load i64, ptr %i.gj, align 1, !tbaa !20
  %i.hg = insertelement <2 x i64> poison, i64 %i.hf, i64 0
  %i.hh = bitcast <2 x i64> %i.hg to <8 x i16>
  %23 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hi = bitcast <8 x i16> %23 to <4 x float>
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.hk = load i64, ptr %i.hj, align 1, !tbaa !20
  %i.hl = insertelement <2 x i64> poison, i64 %i.hk, i64 0
  %i.hm = bitcast <2 x i64> %i.hl to <8 x i16>
  %24 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hn = bitcast <8 x i16> %24 to <4 x float>
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.hp = load i64, ptr %i.ho, align 1, !tbaa !20
  %i.hq = insertelement <2 x i64> poison, i64 %i.hp, i64 0
  %i.hr = bitcast <2 x i64> %i.hq to <8 x i16>
  %25 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hs = bitcast <8 x i16> %25 to <4 x float>
  %i.ht = getelementptr inbounds i8, ptr %i.gk, i64 -8
  %i.hu = load i64, ptr %i.ht, align 1, !tbaa !20
  %i.hv = insertelement <2 x i64> poison, i64 %i.hu, i64 0
  %i.hw = bitcast <2 x i64> %i.hv to <8 x i16>
  %26 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hx = bitcast <8 x i16> %26 to <4 x float>
  %i.hy = load i64, ptr %i.gk, align 1, !tbaa !20
  %i.hz = insertelement <2 x i64> poison, i64 %i.hy, i64 0
  %i.ia = bitcast <2 x i64> %i.hz to <8 x i16>
  %27 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ia, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ib = bitcast <8 x i16> %27 to <4 x float>
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.id = load i64, ptr %i.ic, align 1, !tbaa !20
  %i.ie = insertelement <2 x i64> poison, i64 %i.id, i64 0
  %i.if = bitcast <2 x i64> %i.ie to <8 x i16>
  %28 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.if, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ig = bitcast <8 x i16> %28 to <4 x float>
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.ii = load i64, ptr %i.ih, align 1, !tbaa !20
  %i.ij = insertelement <2 x i64> poison, i64 %i.ii, i64 0
  %i.ik = bitcast <2 x i64> %i.ij to <8 x i16>
  %29 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ik, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.il = bitcast <8 x i16> %29 to <4 x float>
  %i.im = fmul fast <4 x float> %i.gn, %i.he
  %i.in = fmul fast <4 x float> %i.gn, %i.hx
  %i.io = fmul fast <4 x float> %i.gr, %i.hi
  %i.ip = fadd fast <4 x float> %i.io, %i.im
  %i.iq = fmul fast <4 x float> %i.gr, %i.ib
  %i.ir = fadd fast <4 x float> %i.iq, %i.in
  %i.is = fmul fast <4 x float> %i.gv, %i.hn
  %i.it = fadd fast <4 x float> %i.ip, %i.is
  %i.iu = fmul fast <4 x float> %i.gv, %i.ig
  %i.iv = fadd fast <4 x float> %i.ir, %i.iu
  %i.iw = fmul fast <4 x float> %i.gz, %i.hs
  %i.ix = fadd fast <4 x float> %i.it, %i.iw
  %i.iy = fmul fast <4 x float> %i.gz, %i.il
  %i.iz = fadd fast <4 x float> %i.iv, %i.iy
  %i.ja = shl nuw nsw i64 %indvars.iv448.i, 2     ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.0229431.i, i64 %i.ja
  store <4 x float> %i.ix, ptr %i.jb, align 16, !tbaa !20
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.0227432.i, i64 %i.ja
  store <4 x float> %i.iz, ptr %i.jc, align 16, !tbaa !20
  %i.jd = getelementptr inbounds nuw i8, ptr %.0219424.i, i64 16
  %indvars.iv.next449.i = add nuw nsw i64 %indvars.iv448.i, 1 ; 2 uses
  %exitcond452.not.i = icmp eq i64 %indvars.iv.next449.i, %wide.trip.count.i
  br i1 %exitcond452.not.i, label %.loopexit.i, label %.lr.ph426.i, !llvm.loop !222

bb.aj:                                            ; preds = %bb.ah
  %i.je = add nsw i32 %.0223435.i, 3
  %i.jf = icmp eq i32 %i.dr, %i.je
  br i1 %i.jf, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.bt, label %.lr.ph423.i, label %.loopexit.i

.lr.ph423.i:                                      ; preds = %bb.ak
  %.pn264.v.v.v.i = sext i32 %i.dr to i64
  %.pn264.v.i = mul i64 %i.bx, %.pn264.v.v.v.i
  %.pn264.v.v.v.v.1.i = add nsw i32 %i.dr, 1
  %.pn264.v.v.v.1.i = sext i32 %.pn264.v.v.v.v.1.i to i64
  %.pn264.v.1.i = mul i64 %i.bx, %.pn264.v.v.v.1.i
  %.pn264.v.v.v.v.2.i = add nsw i32 %i.dr, 2
  %.pn264.v.v.v.2.i = sext i32 %.pn264.v.v.v.v.2.i to i64
  %.pn264.v.2.i = mul i64 %i.bx, %.pn264.v.v.v.2.i
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph423.i
  %indvars.iv443.i = phi i64 [ 0, %.lr.ph423.i ], [ %indvars.iv.next444.i, %bb.al ] ; 3 uses
  %.0217421.i = phi ptr [ %i.bk, %.lr.ph423.i ], [ %i.nd, %bb.al ] ; 5 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv443.i
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !28
  %i.ji = shl nsw i32 %i.jh, 2
  %i.jj = sext i32 %i.ji to i64
  %i.jk = load float, ptr %.0217421.i, align 4, !tbaa !61
  %i.jl = insertelement <4 x float> poison, float %i.jk, i64 0
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.0217421.i, i64 4
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !61
  %i.jp = insertelement <4 x float> poison, float %i.jo, i64 0
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.0217421.i, i64 8
  %i.js = load float, ptr %i.jr, align 4, !tbaa !61
  %i.jt = insertelement <4 x float> poison, float %i.js, i64 0
  %i.ju = shufflevector <4 x float> %i.jt, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.0217421.i, i64 12
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !61
  %i.jx = insertelement <4 x float> poison, float %i.jw, i64 0
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %invariant.gep418.i = getelementptr [2 x i8], ptr %i.ax, i64 %i.jj ; 3 uses
  %i.jz = shl nuw nsw i64 %indvars.iv443.i, 2     ; 3 uses
  %gep419.i = getelementptr i8, ptr %invariant.gep418.i, i64 %.pn264.v.i ; 4 uses
  %i.ka = getelementptr inbounds i8, ptr %gep419.i, i64 -8
  %i.kb = load i64, ptr %i.ka, align 1, !tbaa !20
  %i.kc = insertelement <2 x i64> poison, i64 %i.kb, i64 0
  %i.kd = bitcast <2 x i64> %i.kc to <8 x i16>
  %30 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ke = bitcast <8 x i16> %30 to <4 x float>
  %i.kf = load i64, ptr %gep419.i, align 1, !tbaa !20
  %i.kg = insertelement <2 x i64> poison, i64 %i.kf, i64 0
  %i.kh = bitcast <2 x i64> %i.kg to <8 x i16>
  %31 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ki = bitcast <8 x i16> %31 to <4 x float>
  %i.kj = getelementptr inbounds nuw i8, ptr %gep419.i, i64 8
  %i.kk = load i64, ptr %i.kj, align 1, !tbaa !20
  %i.kl = insertelement <2 x i64> poison, i64 %i.kk, i64 0
  %i.km = bitcast <2 x i64> %i.kl to <8 x i16>
  %32 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.km, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kn = bitcast <8 x i16> %32 to <4 x float>
  %i.ko = getelementptr inbounds nuw i8, ptr %gep419.i, i64 16
  %i.kp = load i64, ptr %i.ko, align 1, !tbaa !20
  %i.kq = insertelement <2 x i64> poison, i64 %i.kp, i64 0
  %i.kr = bitcast <2 x i64> %i.kq to <8 x i16>
  %33 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ks = bitcast <8 x i16> %33 to <4 x float>
  %i.kt = fmul fast <4 x float> %i.jm, %i.ke
  %i.ku = fmul fast <4 x float> %i.jq, %i.ki
  %i.kv = fadd fast <4 x float> %i.ku, %i.kt
  %i.kw = fmul fast <4 x float> %i.ju, %i.kn
  %i.kx = fadd fast <4 x float> %i.kv, %i.kw
  %i.ky = fmul fast <4 x float> %i.jy, %i.ks
  %i.kz = fadd fast <4 x float> %i.kx, %i.ky
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.0229431.i, i64 %i.jz
  store <4 x float> %i.kz, ptr %i.la, align 16, !tbaa !20
  %gep419.1.i = getelementptr i8, ptr %invariant.gep418.i, i64 %.pn264.v.1.i ; 4 uses
  %i.lb = getelementptr inbounds i8, ptr %gep419.1.i, i64 -8
  %i.lc = load i64, ptr %i.lb, align 1, !tbaa !20
  %i.ld = insertelement <2 x i64> poison, i64 %i.lc, i64 0
  %i.le = bitcast <2 x i64> %i.ld to <8 x i16>
  %34 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.le, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lf = bitcast <8 x i16> %34 to <4 x float>
  %i.lg = load i64, ptr %gep419.1.i, align 1, !tbaa !20
  %i.lh = insertelement <2 x i64> poison, i64 %i.lg, i64 0
  %i.li = bitcast <2 x i64> %i.lh to <8 x i16>
  %35 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.li, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lj = bitcast <8 x i16> %35 to <4 x float>
  %i.lk = getelementptr inbounds nuw i8, ptr %gep419.1.i, i64 8
  %i.ll = load i64, ptr %i.lk, align 1, !tbaa !20
  %i.lm = insertelement <2 x i64> poison, i64 %i.ll, i64 0
  %i.ln = bitcast <2 x i64> %i.lm to <8 x i16>
  %36 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ln, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lo = bitcast <8 x i16> %36 to <4 x float>
  %i.lp = getelementptr inbounds nuw i8, ptr %gep419.1.i, i64 16
  %i.lq = load i64, ptr %i.lp, align 1, !tbaa !20
  %i.lr = insertelement <2 x i64> poison, i64 %i.lq, i64 0
  %i.ls = bitcast <2 x i64> %i.lr to <8 x i16>
  %37 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ls, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lt = bitcast <8 x i16> %37 to <4 x float>
  %i.lu = fmul fast <4 x float> %i.jm, %i.lf
  %i.lv = fmul fast <4 x float> %i.jq, %i.lj
  %i.lw = fadd fast <4 x float> %i.lv, %i.lu
  %i.lx = fmul fast <4 x float> %i.ju, %i.lo
  %i.ly = fadd fast <4 x float> %i.lw, %i.lx
  %i.lz = fmul fast <4 x float> %i.jy, %i.lt
  %i.ma = fadd fast <4 x float> %i.ly, %i.lz
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.0227432.i, i64 %i.jz
  store <4 x float> %i.ma, ptr %i.mb, align 16, !tbaa !20
  %gep419.2.i = getelementptr i8, ptr %invariant.gep418.i, i64 %.pn264.v.2.i ; 4 uses
  %i.mc = getelementptr inbounds i8, ptr %gep419.2.i, i64 -8
  %i.md = load i64, ptr %i.mc, align 1, !tbaa !20
  %i.me = insertelement <2 x i64> poison, i64 %i.md, i64 0
  %i.mf = bitcast <2 x i64> %i.me to <8 x i16>
  %38 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mg = bitcast <8 x i16> %38 to <4 x float>
  %i.mh = load i64, ptr %gep419.2.i, align 1, !tbaa !20
  %i.mi = insertelement <2 x i64> poison, i64 %i.mh, i64 0
  %i.mj = bitcast <2 x i64> %i.mi to <8 x i16>
  %39 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mk = bitcast <8 x i16> %39 to <4 x float>
  %i.ml = getelementptr inbounds nuw i8, ptr %gep419.2.i, i64 8
  %i.mm = load i64, ptr %i.ml, align 1, !tbaa !20
  %i.mn = insertelement <2 x i64> poison, i64 %i.mm, i64 0
  %i.mo = bitcast <2 x i64> %i.mn to <8 x i16>
  %40 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mp = bitcast <8 x i16> %40 to <4 x float>
  %i.mq = getelementptr inbounds nuw i8, ptr %gep419.2.i, i64 16
  %i.mr = load i64, ptr %i.mq, align 1, !tbaa !20
  %i.ms = insertelement <2 x i64> poison, i64 %i.mr, i64 0
  %i.mt = bitcast <2 x i64> %i.ms to <8 x i16>
  %41 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mu = bitcast <8 x i16> %41 to <4 x float>
  %i.mv = fmul fast <4 x float> %i.jm, %i.mg
  %i.mw = fmul fast <4 x float> %i.jq, %i.mk
  %i.mx = fadd fast <4 x float> %i.mw, %i.mv
  %i.my = fmul fast <4 x float> %i.ju, %i.mp
  %i.mz = fadd fast <4 x float> %i.mx, %i.my
  %i.na = fmul fast <4 x float> %i.jy, %i.mu
  %i.nb = fadd fast <4 x float> %i.mz, %i.na
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.0225433.i, i64 %i.jz
  store <4 x float> %i.nb, ptr %i.nc, align 16, !tbaa !20
  %i.nd = getelementptr inbounds nuw i8, ptr %.0217421.i, i64 16
  %indvars.iv.next444.i = add nuw nsw i64 %indvars.iv443.i, 1 ; 2 uses
  %exitcond447.not.i = icmp eq i64 %indvars.iv.next444.i, %wide.trip.count.i
  br i1 %exitcond447.not.i, label %.loopexit.i, label %bb.al, !llvm.loop !223

bb.am:                                            ; preds = %bb.aj
  %i.ne = add nsw i32 %i.dr, -1
  %i.nf = sext i32 %i.ne to i64
  %i.ng = mul i64 %i.bx, %i.nf
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ng
  %i.ni = sext i32 %i.dr to i64
  %i.nj = mul i64 %i.bx, %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.nj
  br i1 %i.bt, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.am
  %.v.v.v.v.v.2.i = add nsw i32 %i.dr, 1
  %.v.v.v.v.2.i = sext i32 %.v.v.v.v.v.2.i to i64
  %.v.v.2.i = mul i64 %i.bx, %.v.v.v.v.2.i
  %.v.v.v.v.v.3.i = add nsw i32 %i.dr, 2
  %.v.v.v.v.3.i = sext i32 %.v.v.v.v.v.3.i to i64
  %.v.v.3.i = mul i64 %i.bx, %.v.v.v.v.3.i
  br label %.thread410.3.i

.thread410.3.i:                                   ; preds = %.thread410.3.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.thread410.3.i ] ; 3 uses
  %.0214416.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %i.sl, %.thread410.3.i ] ; 5 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !28
  %i.nn = shl nsw i32 %i.nm, 2
  %i.no = sext i32 %i.nn to i64                   ; 3 uses
  %i.np = getelementptr inbounds [2 x i8], ptr %i.nk, i64 %i.no ; 4 uses
  %i.nq = load float, ptr %.0214416.i, align 4, !tbaa !61
  %i.nr = insertelement <4 x float> poison, float %i.nq, i64 0
  %i.ns = shufflevector <4 x float> %i.nr, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.0214416.i, i64 4
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !61
  %i.nv = insertelement <4 x float> poison, float %i.nu, i64 0
  %i.nw = shufflevector <4 x float> %i.nv, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.0214416.i, i64 8
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !61
  %i.nz = insertelement <4 x float> poison, float %i.ny, i64 0
  %i.oa = shufflevector <4 x float> %i.nz, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.0214416.i, i64 12
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !61
  %i.od = insertelement <4 x float> poison, float %i.oc, i64 0
  %i.oe = shufflevector <4 x float> %i.od, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.ax, i64 %i.no ; 2 uses
  %i.of = shl nuw nsw i64 %indvars.iv.i, 2        ; 4 uses
  %i.og = getelementptr inbounds [2 x i8], ptr %i.nh, i64 %i.no ; 4 uses
  %i.oh = getelementptr inbounds i8, ptr %i.og, i64 -8
  %i.oi = load i64, ptr %i.oh, align 1, !tbaa !20
  %i.oj = insertelement <2 x i64> poison, i64 %i.oi, i64 0
  %i.ok = bitcast <2 x i64> %i.oj to <8 x i16>
  %42 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ok, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ol = bitcast <8 x i16> %42 to <4 x float>
  %i.om = load i64, ptr %i.og, align 1, !tbaa !20
  %i.on = insertelement <2 x i64> poison, i64 %i.om, i64 0
  %i.oo = bitcast <2 x i64> %i.on to <8 x i16>
  %43 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.oo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.op = bitcast <8 x i16> %43 to <4 x float>
  %i.oq = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.or = load i64, ptr %i.oq, align 1, !tbaa !20
  %i.os = insertelement <2 x i64> poison, i64 %i.or, i64 0
  %i.ot = bitcast <2 x i64> %i.os to <8 x i16>
  %44 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ot, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ou = bitcast <8 x i16> %44 to <4 x float>
  %i.ov = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.ow = load i64, ptr %i.ov, align 1, !tbaa !20
  %i.ox = insertelement <2 x i64> poison, i64 %i.ow, i64 0
  %i.oy = bitcast <2 x i64> %i.ox to <8 x i16>
  %45 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.oy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.oz = bitcast <8 x i16> %45 to <4 x float>
  %i.pa = fmul fast <4 x float> %i.ns, %i.ol
  %i.pb = fmul fast <4 x float> %i.nw, %i.op
  %i.pc = fadd fast <4 x float> %i.pb, %i.pa
  %i.pd = fmul fast <4 x float> %i.oa, %i.ou
  %i.pe = fadd fast <4 x float> %i.pc, %i.pd
  %i.pf = fmul fast <4 x float> %i.oe, %i.oz
  %i.pg = fadd fast <4 x float> %i.pe, %i.pf
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.0229431.i, i64 %i.of
  store <4 x float> %i.pg, ptr %i.ph, align 16, !tbaa !20
  %i.pi = getelementptr inbounds i8, ptr %i.np, i64 -8
  %i.pj = load i64, ptr %i.pi, align 1, !tbaa !20
  %i.pk = insertelement <2 x i64> poison, i64 %i.pj, i64 0
  %i.pl = bitcast <2 x i64> %i.pk to <8 x i16>
  %46 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pm = bitcast <8 x i16> %46 to <4 x float>
  %i.pn = load i64, ptr %i.np, align 1, !tbaa !20
  %i.po = insertelement <2 x i64> poison, i64 %i.pn, i64 0
  %i.pp = bitcast <2 x i64> %i.po to <8 x i16>
  %47 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pq = bitcast <8 x i16> %47 to <4 x float>
  %i.pr = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.ps = load i64, ptr %i.pr, align 1, !tbaa !20
  %i.pt = insertelement <2 x i64> poison, i64 %i.ps, i64 0
  %i.pu = bitcast <2 x i64> %i.pt to <8 x i16>
  %48 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.pv = bitcast <8 x i16> %48 to <4 x float>
  %i.pw = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  %i.px = load i64, ptr %i.pw, align 1, !tbaa !20
  %i.py = insertelement <2 x i64> poison, i64 %i.px, i64 0
  %i.pz = bitcast <2 x i64> %i.py to <8 x i16>
  %49 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qa = bitcast <8 x i16> %49 to <4 x float>
  %i.qb = fmul fast <4 x float> %i.ns, %i.pm
  %i.qc = fmul fast <4 x float> %i.nw, %i.pq
  %i.qd = fadd fast <4 x float> %i.qc, %i.qb
  %i.qe = fmul fast <4 x float> %i.oa, %i.pv
  %i.qf = fadd fast <4 x float> %i.qd, %i.qe
  %i.qg = fmul fast <4 x float> %i.oe, %i.qa
  %i.qh = fadd fast <4 x float> %i.qf, %i.qg
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %.0227432.i, i64 %i.of
  store <4 x float> %i.qh, ptr %i.qi, align 16, !tbaa !20
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %.v.v.2.i ; 4 uses
  %i.qj = getelementptr inbounds i8, ptr %gep.2.i, i64 -8
  %i.qk = load i64, ptr %i.qj, align 1, !tbaa !20
  %i.ql = insertelement <2 x i64> poison, i64 %i.qk, i64 0
  %i.qm = bitcast <2 x i64> %i.ql to <8 x i16>
  %50 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qn = bitcast <8 x i16> %50 to <4 x float>
  %i.qo = load i64, ptr %gep.2.i, align 1, !tbaa !20
  %i.qp = insertelement <2 x i64> poison, i64 %i.qo, i64 0
  %i.qq = bitcast <2 x i64> %i.qp to <8 x i16>
  %51 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qr = bitcast <8 x i16> %51 to <4 x float>
  %i.qs = getelementptr inbounds nuw i8, ptr %gep.2.i, i64 8
  %i.qt = load i64, ptr %i.qs, align 1, !tbaa !20
  %i.qu = insertelement <2 x i64> poison, i64 %i.qt, i64 0
  %i.qv = bitcast <2 x i64> %i.qu to <8 x i16>
  %52 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qw = bitcast <8 x i16> %52 to <4 x float>
  %i.qx = getelementptr inbounds nuw i8, ptr %gep.2.i, i64 16
  %i.qy = load i64, ptr %i.qx, align 1, !tbaa !20
  %i.qz = insertelement <2 x i64> poison, i64 %i.qy, i64 0
  %i.ra = bitcast <2 x i64> %i.qz to <8 x i16>
  %53 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ra, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rb = bitcast <8 x i16> %53 to <4 x float>
  %i.rc = fmul fast <4 x float> %i.ns, %i.qn
  %i.rd = fmul fast <4 x float> %i.nw, %i.qr
  %i.re = fadd fast <4 x float> %i.rd, %i.rc
  %i.rf = fmul fast <4 x float> %i.oa, %i.qw
  %i.rg = fadd fast <4 x float> %i.re, %i.rf
  %i.rh = fmul fast <4 x float> %i.oe, %i.rb
  %i.ri = fadd fast <4 x float> %i.rg, %i.rh
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %.0225433.i, i64 %i.of
  store <4 x float> %i.ri, ptr %i.rj, align 16, !tbaa !20
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %.v.v.3.i ; 4 uses
  %i.rk = getelementptr inbounds i8, ptr %gep.3.i, i64 -8
  %i.rl = load i64, ptr %i.rk, align 1, !tbaa !20
  %i.rm = insertelement <2 x i64> poison, i64 %i.rl, i64 0
  %i.rn = bitcast <2 x i64> %i.rm to <8 x i16>
  %54 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ro = bitcast <8 x i16> %54 to <4 x float>
  %i.rp = load i64, ptr %gep.3.i, align 1, !tbaa !20
  %i.rq = insertelement <2 x i64> poison, i64 %i.rp, i64 0
  %i.rr = bitcast <2 x i64> %i.rq to <8 x i16>
  %55 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rs = bitcast <8 x i16> %55 to <4 x float>
  %i.rt = getelementptr inbounds nuw i8, ptr %gep.3.i, i64 8
  %i.ru = load i64, ptr %i.rt, align 1, !tbaa !20
  %i.rv = insertelement <2 x i64> poison, i64 %i.ru, i64 0
  %i.rw = bitcast <2 x i64> %i.rv to <8 x i16>
  %56 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rx = bitcast <8 x i16> %56 to <4 x float>
  %i.ry = getelementptr inbounds nuw i8, ptr %gep.3.i, i64 16
  %i.rz = load i64, ptr %i.ry, align 1, !tbaa !20
  %i.sa = insertelement <2 x i64> poison, i64 %i.rz, i64 0
  %i.sb = bitcast <2 x i64> %i.sa to <8 x i16>
  %57 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sc = bitcast <8 x i16> %57 to <4 x float>
  %i.sd = fmul fast <4 x float> %i.ns, %i.ro
  %i.se = fmul fast <4 x float> %i.nw, %i.rs
  %i.sf = fadd fast <4 x float> %i.se, %i.sd
  %i.sg = fmul fast <4 x float> %i.oa, %i.rx
  %i.sh = fadd fast <4 x float> %i.sf, %i.sg
  %i.si = fmul fast <4 x float> %i.oe, %i.sc
  %i.sj = fadd fast <4 x float> %i.sh, %i.si
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.0224434.i, i64 %i.of
  store <4 x float> %i.sj, ptr %i.sk, align 16, !tbaa !20
  %i.sl = getelementptr inbounds nuw i8, ptr %.0214416.i, i64 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.thread410.3.i, !llvm.loop !224

.loopexit.i:                                      ; preds = %.thread410.3.i, %bb.al, %.lr.ph426.i, %.lr.ph429.i, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae
  %.1230.i = phi ptr [ %.0229431.i, %bb.ae ], [ %.0227432.i, %bb.ag ], [ %.0225433.i, %bb.ai ], [ %.0224434.i, %bb.ak ], [ %.0229431.i, %bb.am ], [ %.0224434.i, %bb.al ], [ %.0227432.i, %.lr.ph429.i ], [ %.0225433.i, %.lr.ph426.i ], [ %.0229431.i, %.thread410.3.i ] ; 4 uses
  %.1228.i = phi ptr [ %.0227432.i, %bb.ae ], [ %.0225433.i, %bb.ag ], [ %.0224434.i, %bb.ai ], [ %.0229431.i, %bb.ak ], [ %.0227432.i, %bb.am ], [ %.0229431.i, %bb.al ], [ %.0225433.i, %.lr.ph429.i ], [ %.0224434.i, %.lr.ph426.i ], [ %.0227432.i, %.thread410.3.i ] ; 4 uses
  %.1226.i = phi ptr [ %.0225433.i, %bb.ae ], [ %.0224434.i, %bb.ag ], [ %.0229431.i, %bb.ai ], [ %.0227432.i, %bb.ak ], [ %.0225433.i, %bb.am ], [ %.0227432.i, %bb.al ], [ %.0224434.i, %.lr.ph429.i ], [ %.0229431.i, %.lr.ph426.i ], [ %.0225433.i, %.thread410.3.i ] ; 4 uses
  %.1.i = phi ptr [ %.0224434.i, %bb.ae ], [ %.0229431.i, %bb.ag ], [ %.0227432.i, %bb.ai ], [ %.0225433.i, %bb.ak ], [ %.0224434.i, %bb.am ], [ %.0225433.i, %bb.al ], [ %.0229431.i, %.lr.ph429.i ], [ %.0227432.i, %.lr.ph426.i ], [ %.0224434.i, %.thread410.3.i ] ; 4 uses
  %i.sm = mul i64 %i.bw, %indvars.iv458.i
  %i.sn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.sm ; 3 uses
  %i.so = load <4 x float>, ptr %.0257430.i, align 4, !tbaa !61 ; 5 uses
  %i.sp = shufflevector <4 x float> %i.so, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sq = shufflevector <4 x float> %i.so, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.sr = shufflevector <4 x float> %i.so, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.ss = shufflevector <4 x float> %i.so, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  br i1 %i.bt, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.loopexit.i.i:                          ; preds = %.lr.ph.i.i
  %i.st = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.loopexit.i
  %.0.lcssa.i.i = phi i32 [ 0, %.loopexit.i ], [ %i.st, %.preheader.loopexit.i.i ] ; 2 uses
  %i.su = icmp slt i32 %.0.lcssa.i.i, %i.bu
  br i1 %i.su, label %.lr.ph47.preheader.i.i, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i

.lr.ph47.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.sv = zext i32 %.0.lcssa.i.i to i64           ; 4 uses
  %i.sw = sub nsw i64 %i.bv, %i.sv                ; 3 uses
  %min.iters.check261 = icmp ult i64 %i.sw, 4
  br i1 %min.iters.check261, label %.lr.ph47.i.i.preheader, label %vector.ph262

vector.ph262:                                     ; preds = %.lr.ph47.preheader.i.i
  %n.vec263 = and i64 %i.sw, -4                   ; 3 uses
  %i.sx = add nsw i64 %n.vec263, %i.sv
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph262
  %index273 = phi i64 [ 0, %vector.ph262 ], [ %index.next278, %vector.body272 ] ; 2 uses
  %i.sy = add nuw i64 %index273, %i.sv            ; 5 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %.1230.i, i64 %i.sy
  %wide.load274 = load <4 x float>, ptr %i.sz, align 4, !tbaa !61
  %i.ta = fmul fast <4 x float> %wide.load274, %i.sp
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %.1228.i, i64 %i.sy
  %wide.load275 = load <4 x float>, ptr %i.tb, align 4, !tbaa !61
  %i.tc = fmul fast <4 x float> %wide.load275, %i.sq
  %i.td = fadd fast <4 x float> %i.tc, %i.ta
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %.1226.i, i64 %i.sy
  %wide.load276 = load <4 x float>, ptr %i.te, align 4, !tbaa !61
  %i.tf = fmul fast <4 x float> %wide.load276, %i.sr
  %i.tg = fadd fast <4 x float> %i.td, %i.tf
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %i.sy
  %wide.load277 = load <4 x float>, ptr %i.th, align 4, !tbaa !61
  %i.ti = fmul fast <4 x float> %wide.load277, %i.ss
  %i.tj = fadd fast <4 x float> %i.tg, %i.ti
  %i.tk = bitcast <4 x float> %i.tj to <4 x i32>
  %i.tl = lshr <4 x i32> %i.tk, splat (i32 16)
  %i.tm = trunc nuw <4 x i32> %i.tl to <4 x i16>
  %i.tn = getelementptr inbounds nuw [2 x i8], ptr %i.sn, i64 %i.sy
  store <4 x i16> %i.tm, ptr %i.tn, align 2, !tbaa !72
  %index.next278 = add nuw i64 %index273, 4       ; 2 uses
  %i.to = icmp eq i64 %index.next278, %n.vec263
  br i1 %i.to, label %middle.block279, label %vector.body272, !llvm.loop !225

middle.block279:                                  ; preds = %vector.body272
  %cmp.n280 = icmp eq i64 %i.sw, %n.vec263
  br i1 %cmp.n280, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i, label %.lr.ph47.i.i.preheader

.lr.ph47.i.i.preheader:                           ; preds = %.lr.ph47.preheader.i.i, %middle.block279
  %indvars.iv49.i.i.ph = phi i64 [ %i.sv, %.lr.ph47.preheader.i.i ], [ %i.sx, %middle.block279 ]
  br label %.lr.ph47.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.loopexit.i ] ; 6 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %.1230.i, i64 %indvars.iv.i.i
  %i.tq = load <4 x float>, ptr %i.tp, align 1, !tbaa !20
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %.1228.i, i64 %indvars.iv.i.i
  %i.ts = load <4 x float>, ptr %i.tr, align 1, !tbaa !20
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %.1226.i, i64 %indvars.iv.i.i
  %i.tu = load <4 x float>, ptr %i.tt, align 1, !tbaa !20
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %indvars.iv.i.i
  %i.tw = load <4 x float>, ptr %i.tv, align 1, !tbaa !20
  %i.tx = fmul fast <4 x float> %i.tq, %i.sp
  %i.ty = fmul fast <4 x float> %i.ts, %i.sq
  %i.tz = fadd fast <4 x float> %i.ty, %i.tx
  %i.ua = fmul fast <4 x float> %i.tu, %i.sr
  %i.ub = fadd fast <4 x float> %i.tz, %i.ua
  %i.uc = fmul fast <4 x float> %i.tw, %i.ss
  %i.ud = fadd fast <4 x float> %i.ub, %i.uc
  %i.ue = getelementptr inbounds nuw [2 x i8], ptr %i.sn, i64 %indvars.iv.i.i
  %i.uf = bitcast <4 x float> %i.ud to <8 x i16>
  %i.ug = shufflevector <8 x i16> %i.uf, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.uh = bitcast <8 x i16> %i.ug to <4 x float>
  %i.ui = shufflevector <4 x float> %i.uh, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.uj = bitcast <4 x float> %i.ui to <2 x i64>
  %i.uk = extractelement <2 x i64> %i.uj, i64 0
  store i64 %i.uk, ptr %i.ue, align 1, !tbaa !20
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 4 ; 3 uses
  %i.ul = or disjoint i64 %indvars.iv.next.i.i, 3
  %i.um = icmp samesign ult i64 %i.ul, %i.bv
  br i1 %i.um, label %.lr.ph.i.i, label %.preheader.loopexit.i.i, !llvm.loop !226

.lr.ph47.i.i:                                     ; preds = %.lr.ph47.i.i.preheader, %.lr.ph47.i.i
  %indvars.iv49.i.i = phi i64 [ %indvars.iv.next50.i.i, %.lr.ph47.i.i ], [ %indvars.iv49.i.i.ph, %.lr.ph47.i.i.preheader ] ; 6 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %.1230.i, i64 %indvars.iv49.i.i
  %i.uo = load float, ptr %i.un, align 4, !tbaa !61
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %.1228.i, i64 %indvars.iv49.i.i
  %i.uq = load float, ptr %i.up, align 4, !tbaa !61
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %.1226.i, i64 %indvars.iv49.i.i
  %i.us = load float, ptr %i.ur, align 4, !tbaa !61
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %.1.i, i64 %indvars.iv49.i.i
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !61
  %i.uv = insertelement <4 x float> poison, float %i.uo, i64 0
  %i.uw = insertelement <4 x float> %i.uv, float %i.uq, i64 1
  %i.ux = insertelement <4 x float> %i.uw, float %i.us, i64 2
  %i.uy = insertelement <4 x float> %i.ux, float %i.uu, i64 3
  %i.uz = fmul fast <4 x float> %i.uy, %i.so
  %i.va = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.uz)
  %i.vb = bitcast float %i.va to i32
  %i.vc = lshr i32 %i.vb, 16
  %i.vd = trunc nuw i32 %i.vc to i16
  %i.ve = getelementptr inbounds nuw [2 x i8], ptr %i.sn, i64 %indvars.iv49.i.i
  store i16 %i.vd, ptr %i.ve, align 2, !tbaa !72
  %indvars.iv.next50.i.i = add nuw nsw i64 %indvars.iv49.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next50.i.i, %i.bv
  br i1 %exitcond.not.i.i, label %_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i, label %.lr.ph47.i.i, !llvm.loop !227

_ZN4ncnnL21vresize_bicubic_bf16sEPKfS1_S1_S1_Ptiffff.exit.i: ; preds = %.lr.ph47.i.i, %middle.block279, %.preheader.i.i
  %i.vf = getelementptr inbounds nuw i8, ptr %.0257430.i, i64 16
  %indvars.iv.next459.i = add nuw nsw i64 %indvars.iv458.i, 1 ; 2 uses
  %exitcond462.not.i = icmp eq i64 %indvars.iv.next459.i, %wide.trip.count461.i
  br i1 %exitcond462.not.i, label %._crit_edge.i, label %bb.ae, !llvm.loop !228

bb.an:                                            ; preds = %bb.ad
  %i.vg = atomicrmw add ptr %i.dp, i32 -1 acq_rel, align 4
  %i.vh = icmp eq i32 %i.vg, 1
  br i1 %i.vh, label %bb.ao, label %_ZN4ncnn3MatD2Ev.exit290.i

bb.ao:                                            ; preds = %bb.an
  %i.vi = load ptr, ptr %i.z, align 8, !tbaa !42  ; 3 uses
  %.not3.i313.i = icmp eq ptr %i.vi, null
  %i.vj = load ptr, ptr %16, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i313.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.vk = load ptr, ptr %i.vi, align 8, !tbaa !13
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 24
  %i.vm = load ptr, ptr %i.vl, align 8
  invoke void %i.vm(ptr noundef nonnull align 8 dereferenceable(8) %i.vi, ptr noundef %i.vj)
          to label %_ZN4ncnn3MatD2Ev.exit290.i unwind label %bb.as, !inline_history !1

bb.aq:                                            ; preds = %bb.ao
  %.not.i327.i = icmp eq ptr %i.vj, null
  br i1 %.not.i327.i, label %_ZN4ncnn3MatD2Ev.exit290.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @free(ptr noundef nonnull %i.vj) #6
  br label %_ZN4ncnn3MatD2Ev.exit290.i

bb.as:                                            ; preds = %bb.ap
  %i.vn = landingpad { ptr, i32 }
          catch ptr null
  %i.vo = extractvalue { ptr, i32 } %i.vn, 0
  call void @__clang_call_terminate(ptr %i.vo) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit290.i:                       ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.ad, %bb.ac
  %.pn284.pn.pn.i = phi { ptr, i32 } [ %i.dn, %bb.ac ], [ %i.do, %bb.an ], [ %i.do, %bb.ad ], [ %i.do, %bb.ap ], [ %i.do, %bb.aq ], [ %i.do, %bb.ar ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.vp = load ptr, ptr %i.v, align 8, !tbaa !41  ; 2 uses
  %.not.i316.i = icmp eq ptr %i.vp, null
  br i1 %.not.i316.i, label %_ZN4ncnn3MatD2Ev.exit289.i, label %bb.at

bb.at:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit290.i
  %i.vq = atomicrmw add ptr %i.vp, i32 -1 acq_rel, align 4
  %i.vr = icmp eq i32 %i.vq, 1
  br i1 %i.vr, label %bb.au, label %_ZN4ncnn3MatD2Ev.exit289.i

bb.au:                                            ; preds = %bb.at
  %i.vs = load ptr, ptr %i.w, align 8, !tbaa !42  ; 3 uses
  %.not3.i317.i = icmp eq ptr %i.vs, null
  %i.vt = load ptr, ptr %15, align 8, !tbaa !43   ; 3 uses
  br i1 %.not3.i317.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.vu = load ptr, ptr %i.vs, align 8, !tbaa !13
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 24
  %i.vw = load ptr, ptr %i.vv, align 8
end_hunk_2
