Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/metasound?download=true
inline.NumInlined: 26
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@decode_ppc:bb.a
  %i.am = fmul nsz float %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !46
  %i.ap = zext nneg i8 %i.ao to i32
  %notmask = shl nsw i32 -1, %i.ap
  %i.aq = xor i32 %notmask, -1
  %i.ar = uitofp nsz nneg i32 %i.aq to float
  %i.as = fdiv nsz float %i.am, %i.ar
  %i.at = fadd nsz float %.046, %i.as             ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %exp2 = tail call nsz float @llvm.exp2.f32(float %i.at)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.au = fmul nsz float %i.at, 4.000000e+02
  %i.av = fpext nsz float %i.au to double
  %i.aw = fadd nsz double %i.av, 5.000000e-01
  %i.ax = fptosi double %i.aw to i32
  %i.ay = sitofp nsz i32 %i.ax to double
  %i.az = fdiv nsz double %i.ay, 4.000000e+02
  %i.ba = fptrunc nsz double %i.az to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.044 = phi nsz float [ %exp2, %bb.e ], [ %i.ba, %bb.f ] ; 4 uses
  switch i32 %i.h, label %bb.k [
    i32 8, label %bb.l
    i32 11, label %bb.h
    i32 16, label %bb.h
    i32 22, label %bb.i
    i32 44, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.bb = icmp eq i32 %i.n, 32
  %i.bc = select i1 %i.bb, float 2.000000e+00, float 4.000000e+00
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k, %bb.j, %bb.i, %bb.h
  %.0 = phi nsz float [ 4.000000e+00, %bb.k ], [ 8.000000e+00, %bb.j ], [ 3.000000e+00, %bb.h ], [ 2.000000e+00, %bb.g ], [ %i.bc, %bb.i ]
  %i.bd = fdiv nsz float %i.q, %.044
  %i.be = fdiv nsz float %.0, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 226
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !113 ; 3 uses
  %i.bh = uitofp i8 %i.bg to float
  %i.bi = fmul nsz float %i.be, %i.bh
  %i.bj = fptosi float %i.bi to i32               ; 2 uses
  %.off = add i32 %i.g, -22000
  %i.bk = icmp ult i32 %.off, 1000
  %i.bl = icmp eq i32 %i.n, 32
  %or.cond = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = fpext nsz float %.044 to double
  %i.bn = fdiv nsz double 2.000000e+00, %i.bm
  %i.bo = fadd nsz double %i.bn, 1.000000e+00
  %i.bp = sitofp nsz i32 %i.bj to double
  %i.bq = tail call nsz double @llvm.fmuladd.f64(double %i.bo, double %i.bp, double 5.000000e-01)
  %i.br = fptosi double %i.bq to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.047 = phi i32 [ %i.br, %bb.m ], [ %i.bj, %bb.l ] ; 7 uses
  %i.bs = icmp eq i32 %i.e, 2
  %i.bt = select i1 %i.bs, float 2.500000e+04, float 2.000000e+04 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 227
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !47
  %i.bw = zext nneg i8 %i.bv to i32
  %notmask48 = shl nsw i32 -1, %i.bw
  %i.bx = xor i32 %notmask48, -1
  %i.by = uitofp nsz nneg i32 %i.bx to float
  %i.bz = fdiv nsz float %i.bt, %i.by             ; 2 uses
  %i.ca = sitofp nsz i32 %2 to float
  %i.cb = fmul nnan nsz float %i.bz, 5.000000e-01
  %i.cc = tail call nsz float @llvm.fmuladd.f32(float %i.bz, float %i.ca, float %i.cb)
  %i.cd = fdiv nsz float %i.cc, %i.bt             ; 2 uses
  %i.ce = fcmp nsz ogt float %i.cd, -1.000000e+00
  %i.cf = select nsz i1 %i.ce, float %i.cd, float -1.000000e+00 ; 2 uses
  %i.cg = fcmp nsz ogt float %i.cf, 1.000000e+00
  %..i.i = select nsz i1 %i.cg, float 1.000000e+00, float %i.cf ; 2 uses
  %i.ch = fcmp nsz ogt float %..i.i, 0.000000e+00
  %i.ci = fneg nsz float %i.bt
  %i.cj = select nsz i1 %i.ch, float %i.bt, float %i.ci
  %i.ck = fpext nnan ninf nsz float %i.cj to double
  %i.cl = tail call nsz float @llvm.fabs.f32(float %..i.i)
  %i.cm = fpext float %i.cl to double
  %i.cn = fmul nsz double %i.cm, f0x401536958FD351F0
  %i.co = tail call nsz double @llvm.exp.f64(double %i.cn)
  %i.cp = fadd nsz double %i.co, -1.000000e+00
  %i.cq = fmul nsz double %i.cp, %i.ck
  %i.cr = fdiv nsz double %i.cq, 2.000000e+02
  %i.cs = fptrunc nsz double %i.cr to float
  %i.ct = fmul nsz float %i.cs, f0x39000000       ; 9 uses
  %i.cu = zext i8 %i.bg to i32
  %i.cv = zext i8 %i.bg to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cv ; 2 uses
  %i.cx = icmp sgt i32 %.047, 1
  br i1 %i.cx, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.cy = lshr i32 %.047, 1
  %wide.trip.count.i = zext nneg i32 %i.cy to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %.047, 16
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.cz = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %i.da = getelementptr i8, ptr %4, i64 %i.cz
  %i.db = getelementptr i8, ptr %3, i64 %i.cz
  %bound0 = icmp ult ptr %4, %i.db
  %bound1 = icmp ult ptr %3, %i.da
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 1073741816 ; 4 uses
  %i.dc = shl nuw nsw i64 %n.vec, 2
  %i.dd = getelementptr i8, ptr %3, i64 %i.dc     ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ct, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.de = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %3, i64 %i.de ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !48, !alias.scope !114
  %wide.load60 = load <4 x float>, ptr %i.df, align 4, !tbaa !48, !alias.scope !114
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %wide.load61 = load <4 x float>, ptr %i.dg, align 4, !tbaa !48, !alias.scope !115, !noalias !114
  %wide.load62 = load <4 x float>, ptr %i.dh, align 4, !tbaa !48, !alias.scope !115, !noalias !114
  %i.di = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load61)
  %i.dj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load60, <4 x float> %wide.load62)
  store <4 x float> %i.di, ptr %i.dg, align 4, !tbaa !48, !alias.scope !115, !noalias !114
  store <4 x float> %i.dj, ptr %i.dh, align 4, !tbaa !48, !alias.scope !115, !noalias !114
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.04246.i.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader.i ], [ %i.dd, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.dl = getelementptr inbounds nuw i8, ptr %.04246.i.ph, i64 4 ; 2 uses
  %i.dm = load float, ptr %.04246.i.ph, align 4, !tbaa !48
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i.ph ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !48
  %i.dp = tail call nsz float @llvm.fmuladd.f32(float %i.ct, float %i.dm, float %i.do)
  store float %i.dp, ptr %i.dn, align 4, !tbaa !48
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa94.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.dl, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.04246.i.unr = phi ptr [ %.04246.i.ph, %.lr.ph.i.preheader ], [ %i.dl, %.lr.ph.i.prol ]
  %i.dq = add nsw i64 %wide.trip.count.i, -1
  %i.dr = icmp eq i64 %indvars.iv.i.ph, %i.dq
  br i1 %i.dr, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.n
  %.042.lcssa.i = phi ptr [ %3, %bb.n ], [ %i.dd, %middle.block ], [ %.lcssa94.unr, %.lr.ph.i.prol.loopexit ], [ %i.fv, %.lr.ph.i ] ; 3 uses
  %i.ds = ashr i32 %.047, 1
  %i.dt = add nsw i32 %i.ds, %i.cu
  %i.du = sdiv i32 %i.dt, %.047                   ; 4 uses
  %i.dv = icmp sgt i32 %i.du, 1
  %i.dw = sdiv i32 %.047, -2                      ; 4 uses
  %i.dx = add nsw i32 %.047, 1
  %i.dy = sdiv i32 %i.dx, 2                       ; 4 uses
  br i1 %i.dv, label %.lr.ph54.i, label %._crit_edge55.i

.lr.ph54.i:                                       ; preds = %.preheader.i
  %i.dz = icmp slt i32 %i.dw, %i.dy
  br i1 %i.dz, label %.lr.ph50.us.preheader.i, label %._crit_edge55.i

.lr.ph50.us.preheader.i:                          ; preds = %.lr.ph54.i
  %i.ea = sext i32 %i.dw to i64                   ; 7 uses
  %wide.trip.count70.i = sext i32 %i.dy to i64    ; 6 uses
  %i.eb = sub nsw i64 %wide.trip.count70.i, %i.ea
  %i.ec = shl nsw i64 %i.eb, 2
  %i.ed = sub nsw i64 %wide.trip.count70.i, %i.ea ; 3 uses
  %min.iters.check72 = icmp ult i64 %i.ed, 8
  %n.vec78 = and i64 %i.ed, -8                    ; 4 uses
  %i.ee = add nsw i64 %n.vec78, %i.ea
  %i.ef = shl nsw i64 %n.vec78, 2
  %broadcast.splatinsert79 = insertelement <4 x float> poison, float %i.ct, i64 0
  %broadcast.splat80 = shufflevector <4 x float> %broadcast.splatinsert79, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n90 = icmp eq i64 %i.ed, %n.vec78
  %i.eg = add nsw i64 %wide.trip.count70.i, -1
  br label %.lr.ph50.us.i

.lr.ph50.us.i:                                    ; preds = %._crit_edge.us.i, %.lr.ph50.us.preheader.i
  %.14153.us.i = phi i32 [ %i.fp, %._crit_edge.us.i ], [ 1, %.lr.ph50.us.preheader.i ] ; 2 uses
  %.14352.us.i = phi ptr [ %.lcssa, %._crit_edge.us.i ], [ %.042.lcssa.i, %.lr.ph50.us.preheader.i ] ; 6 uses
  %i.eh = uitofp nsz nneg i32 %.14153.us.i to float
  %i.ei = fmul nsz float %.044, %i.eh
  %i.ej = fpext nsz float %i.ei to double
  %i.ek = fadd nsz double %i.ej, 5.000000e-01
  %i.el = fptosi double %i.ek to i32
  %i.em = sext i32 %i.el to i64                   ; 3 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %4, i64 %i.em ; 4 uses
  br i1 %min.iters.check72, label %scalar.ph71.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph50.us.i
  %5 = add nsw i64 %i.em, %i.ea
  %i.en = shl nsw i64 %5, 2
  %i.eo = getelementptr i8, ptr %4, i64 %i.en
  %i.ep = add nsw i64 %i.em, %wide.trip.count70.i
  %i.eq = shl nsw i64 %i.ep, 2
  %i.er = getelementptr i8, ptr %4, i64 %i.eq
  %i.es = getelementptr i8, ptr %.14352.us.i, i64 %i.ec
  %bound074 = icmp ult ptr %i.eo, %i.es
  %bound175 = icmp ult ptr %.14352.us.i, %i.er
  %found.conflict76 = and i1 %bound074, %bound175
  br i1 %found.conflict76, label %scalar.ph71.preheader, label %vector.ph77

vector.ph77:                                      ; preds = %vector.memcheck73
  %i.et = getelementptr i8, ptr %.14352.us.i, i64 %i.ef ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ea
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph77
  %index82 = phi i64 [ 0, %vector.ph77 ], [ %index.next88, %vector.body81 ] ; 3 uses
  %i.eu = shl i64 %index82, 2
  %next.gep83 = getelementptr i8, ptr %.14352.us.i, i64 %i.eu ; 2 uses
  %i.ev = getelementptr i8, ptr %next.gep83, i64 16
  %wide.load84 = load <4 x float>, ptr %next.gep83, align 4, !tbaa !48, !alias.scope !116
  %wide.load85 = load <4 x float>, ptr %i.ev, align 4, !tbaa !48, !alias.scope !116
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index82 ; 3 uses
  %i.ew = getelementptr i8, ptr %gep, i64 16      ; 2 uses
  %wide.load86 = load <4 x float>, ptr %gep, align 4, !tbaa !48, !alias.scope !117, !noalias !116
  %wide.load87 = load <4 x float>, ptr %i.ew, align 4, !tbaa !48, !alias.scope !117, !noalias !116
  %i.ex = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat80, <4 x float> %wide.load84, <4 x float> %wide.load86)
  %i.ey = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat80, <4 x float> %wide.load85, <4 x float> %wide.load87)
  store <4 x float> %i.ex, ptr %gep, align 4, !tbaa !48, !alias.scope !117, !noalias !116
  store <4 x float> %i.ey, ptr %i.ew, align 4, !tbaa !48, !alias.scope !117, !noalias !116
  %index.next88 = add nuw i64 %index82, 8         ; 2 uses
  %i.ez = icmp eq i64 %index.next88, %n.vec78
  br i1 %i.ez, label %middle.block89, label %vector.body81, !llvm.loop !108

middle.block89:                                   ; preds = %vector.body81
  br i1 %cmp.n90, label %._crit_edge.us.i, label %scalar.ph71.preheader

scalar.ph71.preheader:                            ; preds = %vector.memcheck73, %.lr.ph50.us.i, %middle.block89
  %indvars.iv67.i.ph = phi i64 [ %i.ea, %vector.memcheck73 ], [ %i.ea, %.lr.ph50.us.i ], [ %i.ee, %middle.block89 ] ; 5 uses
  %.248.us.i.ph = phi ptr [ %.14352.us.i, %vector.memcheck73 ], [ %.14352.us.i, %.lr.ph50.us.i ], [ %i.et, %middle.block89 ] ; 3 uses
  %i.fa = sub nsw i64 %wide.trip.count70.i, %indvars.iv67.i.ph
  %xtraiter95 = and i64 %i.fa, 1
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %scalar.ph71.prol.loopexit, label %scalar.ph71.prol

scalar.ph71.prol:                                 ; preds = %scalar.ph71.preheader
  %i.fb = getelementptr inbounds nuw i8, ptr %.248.us.i.ph, i64 4 ; 2 uses
  %i.fc = load float, ptr %.248.us.i.ph, align 4, !tbaa !48
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv67.i.ph ; 2 uses
  %i.fd = load float, ptr %gep.i.prol, align 4, !tbaa !48
  %i.fe = tail call nsz float @llvm.fmuladd.f32(float %i.ct, float %i.fc, float %i.fd)
  store float %i.fe, ptr %gep.i.prol, align 4, !tbaa !48
  %indvars.iv.next68.i.prol = add nsw i64 %indvars.iv67.i.ph, 1
  br label %scalar.ph71.prol.loopexit

scalar.ph71.prol.loopexit:                        ; preds = %scalar.ph71.prol, %scalar.ph71.preheader
  %.lcssa93.unr = phi ptr [ poison, %scalar.ph71.preheader ], [ %i.fb, %scalar.ph71.prol ]
  %indvars.iv67.i.unr = phi i64 [ %indvars.iv67.i.ph, %scalar.ph71.preheader ], [ %indvars.iv.next68.i.prol, %scalar.ph71.prol ]
  %.248.us.i.unr = phi ptr [ %.248.us.i.ph, %scalar.ph71.preheader ], [ %i.fb, %scalar.ph71.prol ]
  %i.ff = icmp eq i64 %indvars.iv67.i.ph, %i.eg
  br i1 %i.ff, label %._crit_edge.us.i, label %scalar.ph71

scalar.ph71:                                      ; preds = %scalar.ph71.prol.loopexit, %scalar.ph71
  %indvars.iv67.i = phi i64 [ %indvars.iv.next68.i.1, %scalar.ph71 ], [ %indvars.iv67.i.unr, %scalar.ph71.prol.loopexit ] ; 3 uses
  %.248.us.i = phi ptr [ %i.fk, %scalar.ph71 ], [ %.248.us.i.unr, %scalar.ph71.prol.loopexit ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.248.us.i, i64 4
  %i.fh = load float, ptr %.248.us.i, align 4, !tbaa !48
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv67.i ; 2 uses
  %i.fi = load float, ptr %gep.i, align 4, !tbaa !48
  %i.fj = tail call nsz float @llvm.fmuladd.f32(float %i.ct, float %i.fh, float %i.fi)
  store float %i.fj, ptr %gep.i, align 4, !tbaa !48
  %i.fk = getelementptr inbounds nuw i8, ptr %.248.us.i, i64 8 ; 2 uses
  %i.fl = load float, ptr %i.fg, align 4, !tbaa !48
  %i.fm = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv67.i
  %gep.i.1 = getelementptr i8, ptr %i.fm, i64 4   ; 2 uses
  %i.fn = load float, ptr %gep.i.1, align 4, !tbaa !48
  %i.fo = tail call nsz float @llvm.fmuladd.f32(float %i.ct, float %i.fl, float %i.fn)
  store float %i.fo, ptr %gep.i.1, align 4, !tbaa !48
  %indvars.iv.next68.i.1 = add nsw i64 %indvars.iv67.i, 2 ; 2 uses
  %exitcond71.not.i.1 = icmp eq i64 %indvars.iv.next68.i.1, %wide.trip.count70.i
  br i1 %exitcond71.not.i.1, label %._crit_edge.us.i, label %scalar.ph71, !llvm.loop !109

._crit_edge.us.i:                                 ; preds = %scalar.ph71.prol.loopexit, %scalar.ph71, %middle.block89
  %.lcssa = phi ptr [ %i.et, %middle.block89 ], [ %.lcssa93.unr, %scalar.ph71.prol.loopexit ], [ %i.fk, %scalar.ph71 ] ; 2 uses
  %i.fp = add nuw nsw i32 %.14153.us.i, 1         ; 2 uses
  %exitcond72.not.i = icmp eq i32 %i.fp, %i.du
  br i1 %exitcond72.not.i, label %._crit_edge55.i, label %.lr.ph50.us.i, !llvm.loop !110

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.04246.i = phi ptr [ %i.fv, %.lr.ph.i ], [ %.04246.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.04246.i, i64 4
  %i.fr = load float, ptr %.04246.i, align 4, !tbaa !48
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i ; 2 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !48
  %i.fu = tail call nsz float @llvm.fmuladd.f32(float %i.ct, float %i.fr, float %i.ft)
  store float %i.fu, ptr %i.fs, align 4, !tbaa !48
  %i.fv = getelementptr inbounds nuw i8, ptr %.04246.i, i64 8 ; 2 uses
  %i.fw = load float, ptr %i.fq, align 4, !tbaa !48
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 4 ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !48
  %i.ga = tail call nsz float @llvm.fmuladd.f32(float %i.ct, float %i.fw, float %i.fz)
  store float %i.ga, ptr %i.fy, align 4, !tbaa !48
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.preheader.i, label %.lr.ph.i, !llvm.loop !111

._crit_edge55.i:                                  ; preds = %._crit_edge.us.i, %.lr.ph54.i, %.preheader.i
  %.143.lcssa.i = phi ptr [ %.042.lcssa.i, %.preheader.i ], [ %.042.lcssa.i, %.lr.ph54.i ], [ %.lcssa, %._crit_edge.us.i ] ; 2 uses
  %.141.lcssa.i = phi i32 [ 1, %.preheader.i ], [ %i.du, %.lr.ph54.i ], [ %i.du, %._crit_edge.us.i ]
  %i.gb = icmp slt i32 %i.dw, %i.dy
  %i.gc = icmp ult ptr %.143.lcssa.i, %i.cw
  %i.gd = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %i.gd, label %.lr.ph61.preheader.i, label %add_peak.exit

.lr.ph61.preheader.i:                             ; preds = %._crit_edge55.i
  %i.ge = uitofp nsz nneg i32 %.141.lcssa.i to float
  %i.gf = fmul nsz float %.044, %i.ge
  %i.gg = fpext nsz float %i.gf to double
  %i.gh = fadd nsz double %i.gg, 5.000000e-01
  %i.gi = fptosi double %i.gh to i32
  %i.gj = sext i32 %i.dw to i64
  %i.gk = sext i32 %i.gi to i64
  %i.gl = sext i32 %i.dy to i64
  %invariant.gep86.i = getelementptr [4 x i8], ptr %4, i64 %i.gk
  br label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i, %.lr.ph61.preheader.i
  %indvars.iv73.i = phi i64 [ %i.gj, %.lr.ph61.preheader.i ], [ %indvars.iv.next74.i, %.lr.ph61.i ] ; 2 uses
  %.359.i = phi ptr [ %.143.lcssa.i, %.lr.ph61.preheader.i ], [ %i.gm, %.lr.ph61.i ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.359.i, i64 4 ; 2 uses
  %i.gn = load float, ptr %.359.i, align 4, !tbaa !48
  %gep87.i = getelementptr [4 x i8], ptr %invariant.gep86.i, i64 %indvars.iv73.i ; 2 uses
  %i.go = load float, ptr %gep87.i, align 4, !tbaa !48
  %i.gp = tail call nsz float @llvm.fmuladd.f32(float %i.ct, float %i.gn, float %i.go)
  store float %i.gp, ptr %gep87.i, align 4, !tbaa !48
  %indvars.iv.next74.i = add nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %i.gq = icmp slt i64 %indvars.iv.next74.i, %i.gl
  %i.gr = icmp ult ptr %i.gm, %i.cw
  %i.gs = select i1 %i.gq, i1 %i.gr, i1 false
  br i1 %i.gs, label %.lr.ph61.i, label %add_peak.exit, !llvm.loop !112

add_peak.exit:                                    ; preds = %.lr.ph61.i, %._crit_edge55.i
  ret void
}

declare hidden i32 @ff_twinvq_decode_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
end_hunk_0
