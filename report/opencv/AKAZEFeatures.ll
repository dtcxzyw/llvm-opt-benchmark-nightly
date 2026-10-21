Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/AKAZEFeatures?download=true
inline.NumInlined: 1054
inline.NumDeleted: 331
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZNK2cv11xfeatures2d28NonLinearScalarDiffusionStepclERKNS_5RangeE:bb.a
  %i.ay = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 4      ; 3 uses
  %i.ba = load i64, ptr %i.av, align 8, !tbaa !100 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.au, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 4      ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !62 ; 3 uses
  store float 0.000000e+00, ptr %i.be, align 4, !tbaa !16
  %i.bf = getelementptr i8, ptr %i.be, i64 4      ; 7 uses
  %i.bg = icmp sgt i32 %i.am, 2
  br i1 %i.bg, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %wide.trip.count.i = zext i32 %i.an to i64      ; 4 uses
  %min.iters.check = icmp ult i32 %i.an, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.bh = shl nuw nsw i64 %wide.trip.count.i, 2   ; 4 uses
  %i.bi = getelementptr i8, ptr %i.be, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 4      ; 4 uses
  %i.bk = getelementptr i8, ptr %i.au, i64 %i.ba
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.bh
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  %i.bn = add nuw nsw i64 %i.bh, 8                ; 2 uses
  %i.bo = getelementptr i8, ptr %i.au, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.aq, i64 %i.ax
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.bh
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  %i.bs = getelementptr i8, ptr %i.aq, i64 %i.bn
  %bound0 = icmp ult ptr %i.bf, %i.bm
  %bound1 = icmp ult ptr %i.bc, %i.bj
  %found.conflict = and i1 %bound0, %bound1
  %bound021 = icmp ult ptr %i.bf, %i.bo
  %bound122 = icmp ult ptr %i.au, %i.bj
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx = or i1 %found.conflict, %found.conflict23
  %bound024 = icmp ult ptr %i.bf, %i.br
  %bound125 = icmp ult ptr %i.az, %i.bj
  %found.conflict26 = and i1 %bound024, %bound125
  %conflict.rdx27 = or i1 %conflict.rdx, %found.conflict26
  %bound028 = icmp ult ptr %i.bf, %i.bs
  %bound129 = icmp ult ptr %i.aq, %i.bj
  %found.conflict30 = and i1 %bound028, %bound129
  %conflict.rdx31 = or i1 %conflict.rdx27, %found.conflict30
  br i1 %conflict.rdx31, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.h, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index
  %wide.load = load <4 x float>, ptr %i.bt, align 4, !tbaa !16, !alias.scope !372 ; 3 uses
  %i.bu = or disjoint i64 %index, 1               ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bu
  %wide.load32 = load <4 x float>, ptr %i.bv, align 4, !tbaa !16, !alias.scope !372
  %i.bw = fadd <4 x float> %wide.load, %wide.load32
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bu
  %wide.load33 = load <4 x float>, ptr %i.bx, align 4, !tbaa !16, !alias.scope !373
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index
  %wide.load34 = load <4 x float>, ptr %i.by, align 4, !tbaa !16, !alias.scope !373 ; 3 uses
  %i.bz = fsub <4 x float> %wide.load33, %wide.load34
  %i.ca = getelementptr [4 x i8], ptr %i.au, i64 %index
  %wide.load35 = load <4 x float>, ptr %i.ca, align 4, !tbaa !16, !alias.scope !372
  %i.cb = fadd <4 x float> %wide.load, %wide.load35
  %i.cc = getelementptr [4 x i8], ptr %i.aq, i64 %index
  %wide.load36 = load <4 x float>, ptr %i.cc, align 4, !tbaa !16, !alias.scope !373
  %i.cd = fsub <4 x float> %wide.load36, %wide.load34
  %i.ce = fmul <4 x float> %i.cb, %i.cd
  %i.cf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.bz, <4 x float> %i.ce)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index
  %wide.load37 = load <4 x float>, ptr %i.cg, align 4, !tbaa !16, !alias.scope !374
  %i.ch = fadd <4 x float> %wide.load, %wide.load37
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index
  %wide.load38 = load <4 x float>, ptr %i.ci, align 4, !tbaa !16, !alias.scope !375
  %i.cj = fsub <4 x float> %wide.load38, %wide.load34
  %i.ck = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> %i.cj, <4 x float> %i.cf)
  %i.cl = fmul <4 x float> %broadcast.splat, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index
  store <4 x float> %i.cl, ptr %i.cm, align 4, !tbaa !16, !alias.scope !376, !noalias !377
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !351

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.j
  %i.co = sext i32 %i.an to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.co
  store float 0.000000e+00, ptr %i.cp, align 4, !tbaa !16
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.b
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cq, %bb.k ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %eh.lpad-body.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 8 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cs = load <2 x float>, ptr %i.cr, align 4, !tbaa !16 ; 2 uses
  %i.ct = extractelement <2 x float> %i.cs, i64 0 ; 2 uses
  %i.cu = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cs)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next.i
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !16
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !16 ; 3 uses
  %i.cz = fsub float %i.cw, %i.cy
  %i.da = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.db = load float, ptr %i.da, align 4, !tbaa !16
  %i.dc = fadd float %i.ct, %i.db
  %i.dd = getelementptr [4 x i8], ptr %i.aq, i64 %indvars.iv.i
  %i.de = load float, ptr %i.dd, align 4, !tbaa !16
  %i.df = fsub float %i.de, %i.cy
  %i.dg = fmul float %i.dc, %i.df
  %i.dh = call float @llvm.fmuladd.f32(float %i.cu, float %i.cz, float %i.dg)
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.dj = load float, ptr %i.di, align 4, !tbaa !16
  %i.dk = fadd float %i.ct, %i.dj
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !16
  %i.dn = fsub float %i.dm, %i.cy
  %i.do = call float @llvm.fmuladd.f32(float %i.dk, float %i.dn, float %i.dh)
  %i.dp = fmul float %i.h, %i.do
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  store float %i.dp, ptr %i.dq, align 4, !tbaa !16
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !352

bb.l:                                             ; preds = %._crit_edge.i, %bb.i
  %.0203.i = phi i32 [ 1, %._crit_edge.i ], [ %i.i, %bb.i ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !61 ; 2 uses
  %i.dt = add nsw i32 %i.ds, -1
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.dt) ; 3 uses
  %i.du = icmp slt i32 %.0203.i, %.sroa.speculated.i
  br i1 %i.du, label %.lr.ph219.i, label %._crit_edge220.i

.lr.ph219.i:                                      ; preds = %bb.l
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !62 ; 9 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !100 ; 10 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !62 ; 9 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !100 ; 10 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !62 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !100 ; 4 uses
  %i.eh = icmp sgt i32 %i.am, 2
  %i.ei = sext i32 %i.an to i64                   ; 7 uses
  %i.ej = add nsw i32 %i.am, -3
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = sext i32 %.0203.i to i64                ; 6 uses
  %wide.trip.count234.i = sext i32 %.sroa.speculated.i to i64 ; 5 uses
  %wide.trip.count229.i = zext i32 %i.an to i64   ; 4 uses
  %i.em = mul i64 %i.eg, %i.el
  %i.en = getelementptr i8, ptr %i.ee, i64 %i.em
  %scevgep = getelementptr i8, ptr %i.en, i64 4
  %i.eo = add nsw i64 %wide.trip.count234.i, -1   ; 3 uses
  %i.ep = mul i64 %i.eg, %i.eo
  %i.eq = shl nuw nsw i64 %wide.trip.count229.i, 2 ; 7 uses
  %i.er = getelementptr i8, ptr %i.ee, i64 %i.ep
  %i.es = getelementptr i8, ptr %i.er, i64 %i.eq
  %scevgep40 = getelementptr i8, ptr %i.es, i64 4 ; 2 uses
  %i.et = add nsw i64 %i.el, -1                   ; 2 uses
  %i.eu = mul i64 %i.ec, %i.et
  %i.ev = getelementptr i8, ptr %i.ea, i64 %i.eu
  %i.ew = add nsw i64 %wide.trip.count234.i, -2   ; 2 uses
  %i.ex = mul i64 %i.ec, %i.ew
  %i.ey = getelementptr i8, ptr %i.ea, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.eq
  %i.fa = add nsw i64 %i.el, 1                    ; 2 uses
  %i.fb = mul i64 %i.ec, %i.fa
  %i.fc = getelementptr i8, ptr %i.ea, i64 %i.fb
  %i.fd = insertelement <2 x ptr> poison, ptr %i.ev, i64 0
  %i.fe = insertelement <2 x ptr> %i.fd, ptr %i.fc, i64 1
  %i.ff = getelementptr i8, <2 x ptr> %i.fe, i64 4
  %i.fg = mul i64 %i.ec, %wide.trip.count234.i
  %i.fh = getelementptr i8, ptr %i.ea, i64 %i.fg
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.eq
  %5 = insertelement <2 x ptr> poison, ptr %i.ez, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %i.fi, i64 1
  %7 = getelementptr i8, <2 x ptr> %6, i64 4
  %8 = mul i64 %i.ec, %i.el
  %i.fj = getelementptr nuw i8, ptr %i.ea, i64 %8
  %i.fk = mul i64 %i.ec, %i.eo
  %i.fl = getelementptr i8, ptr %i.ea, i64 %i.fk
  %scevgep47.a = getelementptr i8, ptr %i.fl, i64 %i.eq
  %i.fm = mul i64 %i.dy, %i.et
  %i.fn = getelementptr i8, ptr %i.dw, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 4
  %9 = mul i64 %i.dy, %i.ew
  %10 = getelementptr i8, ptr %i.dw, i64 %9
  %11 = getelementptr i8, ptr %10, i64 %i.eq
  %12 = insertelement <2 x ptr> poison, ptr %scevgep47.a, i64 0
  %13 = insertelement <2 x ptr> %12, ptr %11, i64 1
  %14 = getelementptr i8, <2 x ptr> %13, <2 x i64> <i64 8, i64 4>
  %i.fp = mul i64 %i.dy, %i.fa
  %i.fq = getelementptr i8, ptr %i.dw, i64 %i.fp
  %scevgep49 = getelementptr i8, ptr %i.fq, i64 4
  %i.fr = mul i64 %i.dy, %wide.trip.count234.i
  %15 = getelementptr i8, ptr %i.dw, i64 %i.fr
  %i.fs = getelementptr i8, ptr %15, i64 %i.eq
  %i.ft = getelementptr i8, ptr %i.fs, i64 4
  %i.fu = mul i64 %i.dy, %i.el
  %scevgep51 = getelementptr nuw i8, ptr %i.dw, i64 %i.fu
  %i.fv = mul i64 %i.dy, %i.eo
  %i.fw = getelementptr i8, ptr %i.dw, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.eq
  %scevgep52 = getelementptr i8, ptr %i.fx, i64 8
  %16 = insertelement <4 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %17 = shufflevector <4 x ptr> %16, <4 x ptr> poison, <4 x i32> zeroinitializer
  %18 = shufflevector <4 x ptr> %16, <4 x ptr> poison, <2 x i32> zeroinitializer
  %19 = insertelement <2 x ptr> poison, ptr %i.ft, i64 0
  %20 = insertelement <2 x ptr> %19, ptr %scevgep52, i64 1
  %i.fy = insertelement <4 x ptr> poison, ptr %scevgep40, i64 0
  %i.fz = shufflevector <4 x ptr> %i.fy, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ga = insertelement <2 x ptr> poison, ptr %scevgep49, i64 0
  %i.gb = insertelement <2 x ptr> %i.ga, ptr %scevgep51, i64 1
  %i.gc = insertelement <2 x ptr> poison, ptr %scevgep40, i64 0
  %i.gd = shufflevector <2 x ptr> %i.gc, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ge = shufflevector <2 x ptr> %i.ff, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %21 = shufflevector <2 x ptr> %7, <2 x ptr> %14, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %min.iters.check79 = icmp ult i32 %i.an, 4
  %i.gf = icmp ult <4 x ptr> %17, %21
  %i.gg = insertelement <4 x ptr> %i.ge, ptr %i.fj, i64 2
  %i.gh = insertelement <4 x ptr> %i.gg, ptr %i.fo, i64 3
  %i.gi = icmp ult <4 x ptr> %i.gh, %i.fz
  %i.gj = or i64 %i.ec, %i.eg
  %i.gk = icmp ult <2 x ptr> %18, %20
  %i.gl = icmp ult <2 x ptr> %i.gb, %i.gd
  %i.gm = icmp slt i64 %i.gj, 0
  %stride.check68 = icmp slt i64 %i.dy, 0
  %i.gn = insertelement <8 x i1> poison, i1 %i.gm, i64 6
  %i.go = insertelement <8 x i1> %i.gn, i1 %stride.check68, i64 7
  %i.gp = shufflevector <4 x i1> %i.gf, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gq = shufflevector <8 x i1> %i.gp, <8 x i1> %i.go, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.gr = shufflevector <2 x i1> %i.gk, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gs = shufflevector <8 x i1> %i.gq, <8 x i1> %i.gr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.gt = shufflevector <2 x i1> %i.gl, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gu = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true>, <8 x i1> %i.gt, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 6, i32 7>
  %i.gv = shufflevector <4 x i1> %i.gi, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gw = shufflevector <8 x i1> %i.gv, <8 x i1> %i.gu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.gx = and <8 x i1> %i.gs, %i.gw
  %i.gy = bitcast <8 x i1> %i.gx to i8
  %.not = icmp eq i8 %i.gy, 0
  %n.vec81 = and i64 %wide.trip.count229.i, 4294967292 ; 3 uses
  %broadcast.splatinsert82 = insertelement <4 x float> poison, float %i.h, i64 0
  %broadcast.splat83 = shufflevector <4 x float> %broadcast.splatinsert82, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n98 = icmp eq i64 %n.vec81, %wide.trip.count229.i
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge216.i, %.lr.ph219.i
  %indvars.iv231.i = phi i64 [ %i.el, %.lr.ph219.i ], [ %indvars.iv.next232.i, %._crit_edge216.i ] ; 5 uses
  %i.gz = add nsw i64 %indvars.iv231.i, -1        ; 2 uses
  %i.ha = mul i64 %i.gz, %i.dy
  %i.hb = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ha ; 2 uses
  %i.hc = mul i64 %i.gz, %i.ec
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.hc ; 2 uses
  %i.he = mul i64 %indvars.iv231.i, %i.dy
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.he ; 4 uses
  %i.hg = mul i64 %indvars.iv231.i, %i.ec
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.hg ; 4 uses
  %indvars.iv.next232.i = add nsw i64 %indvars.iv231.i, 1 ; 4 uses
  %i.hi = mul i64 %indvars.iv.next232.i, %i.dy
  %i.hj = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.hi ; 2 uses
  %i.hk = mul i64 %indvars.iv.next232.i, %i.ec
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.hk ; 2 uses
  %i.hm = mul i64 %indvars.iv231.i, %i.eg
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.hm ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 5 uses
  %i.hp = load <2 x float>, ptr %i.hh, align 4, !tbaa !16 ; 2 uses
  %i.hq = extractelement <2 x float> %i.hp, i64 0 ; 2 uses
  %i.hr = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.hp)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hf, i64 4 ; 7 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !16
  %i.hu = load float, ptr %i.hf, align 4, !tbaa !16 ; 3 uses
  %i.hv = fsub float %i.ht, %i.hu
  %i.hw = load float, ptr %i.hl, align 4, !tbaa !16
  %i.hx = fadd float %i.hq, %i.hw
  %i.hy = load float, ptr %i.hj, align 4, !tbaa !16
  %i.hz = fsub float %i.hy, %i.hu
  %i.ia = fmul float %i.hx, %i.hz
  %i.ib = call float @llvm.fmuladd.f32(float %i.hr, float %i.hv, float %i.ia)
  %i.ic = load float, ptr %i.hd, align 4, !tbaa !16
  %i.id = fadd float %i.hq, %i.ic
  %i.ie = load float, ptr %i.hb, align 4, !tbaa !16
  %i.if = fsub float %i.ie, %i.hu
  %i.ig = call float @llvm.fmuladd.f32(float %i.id, float %i.if, float %i.ib)
  %i.ih = fmul float %i.h, %i.ig
  store float %i.ih, ptr %i.hn, align 4, !tbaa !16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hd, i64 4 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.hl, i64 4 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hn, i64 4 ; 3 uses
  br i1 %i.eh, label %.lr.ph215.i.preheader, label %._crit_edge216.i

.lr.ph215.i.preheader:                            ; preds = %bb.m
  %.not.not = xor i1 %.not, true
  %brmerge = select i1 %min.iters.check79, i1 true, i1 %.not.not
  br i1 %brmerge, label %.lr.ph215.i.preheader157, label %vector.body84

vector.body84:                                    ; preds = %.lr.ph215.i.preheader, %vector.body84
  %index85 = phi i64 [ %index.next96, %vector.body84 ], [ 0, %.lr.ph215.i.preheader ] ; 11 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %index85
  %wide.load86 = load <4 x float>, ptr %i.in, align 4, !tbaa !16, !alias.scope !378 ; 4 uses
  %i.io = or disjoint i64 %index85, 1             ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.io
  %wide.load87 = load <4 x float>, ptr %i.ip, align 4, !tbaa !16, !alias.scope !378
  %i.iq = fadd <4 x float> %wide.load86, %wide.load87
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.io
  %wide.load88 = load <4 x float>, ptr %i.ir, align 4, !tbaa !16, !alias.scope !379
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %index85
  %wide.load89 = load <4 x float>, ptr %i.is, align 4, !tbaa !16, !alias.scope !379 ; 4 uses
  %i.it = fsub <4 x float> %wide.load88, %wide.load89
  %i.iu = getelementptr [4 x i8], ptr %i.hh, i64 %index85
  %wide.load90 = load <4 x float>, ptr %i.iu, align 4, !tbaa !16, !alias.scope !378
  %i.iv = fadd <4 x float> %wide.load86, %wide.load90
  %i.iw = getelementptr [4 x i8], ptr %i.hf, i64 %index85
  %wide.load91 = load <4 x float>, ptr %i.iw, align 4, !tbaa !16, !alias.scope !379
  %i.ix = fsub <4 x float> %wide.load91, %wide.load89
  %i.iy = fmul <4 x float> %i.iv, %i.ix
  %i.iz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iq, <4 x float> %i.it, <4 x float> %i.iy)
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %index85
  %wide.load92 = load <4 x float>, ptr %i.ja, align 4, !tbaa !16, !alias.scope !380
  %i.jb = fadd <4 x float> %wide.load86, %wide.load92
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %index85
  %wide.load93 = load <4 x float>, ptr %i.jc, align 4, !tbaa !16, !alias.scope !381
  %i.jd = fsub <4 x float> %wide.load93, %wide.load89
  %i.je = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jb, <4 x float> %i.jd, <4 x float> %i.iz)
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %index85
  %wide.load94 = load <4 x float>, ptr %i.jf, align 4, !tbaa !16, !alias.scope !382
  %i.jg = fadd <4 x float> %wide.load86, %wide.load94
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %index85
  %wide.load95 = load <4 x float>, ptr %i.jh, align 4, !tbaa !16, !alias.scope !383
  %i.ji = fsub <4 x float> %wide.load95, %wide.load89
  %i.jj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jg, <4 x float> %i.ji, <4 x float> %i.je)
  %i.jk = fmul <4 x float> %broadcast.splat83, %i.jj
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %index85
  store <4 x float> %i.jk, ptr %i.jl, align 4, !tbaa !16, !alias.scope !384, !noalias !385
  %index.next96 = add nuw i64 %index85, 4         ; 2 uses
  %i.jm = icmp eq i64 %index.next96, %n.vec81
  br i1 %i.jm, label %middle.block97, label %vector.body84, !llvm.loop !361

middle.block97:                                   ; preds = %vector.body84
  br i1 %cmp.n98, label %._crit_edge216.i, label %.lr.ph215.i.preheader157

.lr.ph215.i.preheader157:                         ; preds = %.lr.ph215.i.preheader, %middle.block97
  %indvars.iv226.i.ph = phi i64 [ %n.vec81, %middle.block97 ], [ 0, %.lr.ph215.i.preheader ]
  br label %.lr.ph215.i

._crit_edge216.i:                                 ; preds = %.lr.ph215.i, %middle.block97, %bb.m
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.ei
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !16 ; 3 uses
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.ek
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !16
  %i.jr = fadd float %i.jo, %i.jq
  %i.js = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.ek
  %i.jt = load float, ptr %i.js, align 4, !tbaa !16
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.ei
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !16 ; 3 uses
  %i.jw = fsub float %i.jt, %i.jv
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.ei
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !16
  %i.jz = fadd float %i.jo, %i.jy
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.ei
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !16
  %i.kc = fsub float %i.kb, %i.jv
  %i.kd = fmul float %i.jz, %i.kc
  %i.ke = call float @llvm.fmuladd.f32(float %i.jr, float %i.jw, float %i.kd)
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.ei
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !16
  %i.kh = fadd float %i.jo, %i.kg
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.ei
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !16
  %i.kk = fsub float %i.kj, %i.jv
  %i.kl = call float @llvm.fmuladd.f32(float %i.kh, float %i.kk, float %i.ke)
  %i.km = fmul float %i.h, %i.kl
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.ei
  store float %i.km, ptr %i.kn, align 4, !tbaa !16
  %exitcond235.not.i = icmp eq i64 %indvars.iv.next232.i, %wide.trip.count234.i
  br i1 %exitcond235.not.i, label %._crit_edge220.i, label %bb.m, !llvm.loop !362

.lr.ph215.i:                                      ; preds = %.lr.ph215.i.preheader157, %.lr.ph215.i
  %indvars.iv226.i = phi i64 [ %indvars.iv.next227.i, %.lr.ph215.i ], [ %indvars.iv226.i.ph, %.lr.ph215.i.preheader157 ] ; 10 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv226.i
  %indvars.iv.next227.i = add nuw nsw i64 %indvars.iv226.i, 1 ; 3 uses
  %i.kp = load <2 x float>, ptr %i.ko, align 4, !tbaa !16 ; 2 uses
  %i.kq = extractelement <2 x float> %i.kp, i64 0 ; 3 uses
  %i.kr = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.kp)
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv.next227.i
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !16
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv226.i
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !16 ; 4 uses
  %i.kw = fsub float %i.kt, %i.kv
  %i.kx = getelementptr [4 x i8], ptr %i.hh, i64 %indvars.iv226.i
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !16
  %i.kz = fadd float %i.kq, %i.ky
  %i.la = getelementptr [4 x i8], ptr %i.hf, i64 %indvars.iv226.i
  %i.lb = load float, ptr %i.la, align 4, !tbaa !16
  %i.lc = fsub float %i.lb, %i.kv
  %i.ld = fmul float %i.kz, %i.lc
  %i.le = call float @llvm.fmuladd.f32(float %i.kr, float %i.kw, float %i.ld)
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv226.i
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !16
  %i.lh = fadd float %i.kq, %i.lg
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv226.i
  %i.lj = load float, ptr %i.li, align 4, !tbaa !16
  %i.lk = fsub float %i.lj, %i.kv
  %i.ll = call float @llvm.fmuladd.f32(float %i.lh, float %i.lk, float %i.le)
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv226.i
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !16
  %i.lo = fadd float %i.kq, %i.ln
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv226.i
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !16
  %i.lr = fsub float %i.lq, %i.kv
  %i.ls = call float @llvm.fmuladd.f32(float %i.lo, float %i.lr, float %i.ll)
  %i.lt = fmul float %i.h, %i.ls
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv226.i
  store float %i.lt, ptr %i.lu, align 4, !tbaa !16
  %exitcond230.not.i = icmp eq i64 %indvars.iv.next227.i, %wide.trip.count229.i
  br i1 %exitcond230.not.i, label %._crit_edge216.i, label %.lr.ph215.i, !llvm.loop !363

._crit_edge220.i:                                 ; preds = %._crit_edge216.i, %bb.l
  %.1.lcssa.i = phi i32 [ %.0203.i, %bb.l ], [ %.sroa.speculated.i, %._crit_edge216.i ] ; 2 uses
  %i.lv = icmp eq i32 %i.k, %i.ds
  br i1 %i.lv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge220.i
end_hunk_0
