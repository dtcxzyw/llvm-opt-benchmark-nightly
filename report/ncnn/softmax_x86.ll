Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/softmax_x86?download=true
inline.NumInlined: 23
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNK4ncnn11Softmax_x8615forward_inplaceERNS_3MatERKNS_6OptionE:bb.a
  %.0101110.i.epil = phi <4 x float> [ %i.ba, %.lr.ph.i.epil ], [ %.0101110.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.az = load <4 x float>, ptr %.050112.i.epil, align 1, !tbaa !63
  %i.ba = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0101110.i.epil, <4 x float> nofpclass(nan inf) %i.az) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.050112.i.epil, i64 16 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader109.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !83

.preheader109.loopexit.i:                         ; preds = %.lr.ph.i.epil, %.preheader109.loopexit.i.unr-lcssa
  %.lcssa287 = phi <4 x float> [ %i.cc, %.preheader109.loopexit.i.unr-lcssa ], [ %i.ba, %.lr.ph.i.epil ]
  %.lcssa286 = phi ptr [ %i.cd, %.preheader109.loopexit.i.unr-lcssa ], [ %i.bb, %.lr.ph.i.epil ]
  %i.bc = and i32 %i.at, 2147483644
  br label %.preheader109.i

.preheader109.i:                                  ; preds = %.preheader109.loopexit.i, %bb.d
  %.0101.lcssa.i = phi <4 x float> [ splat (float f0xFF7FFFFF), %bb.d ], [ %.lcssa287, %.preheader109.loopexit.i ] ; 2 uses
  %.058.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.bc, %.preheader109.loopexit.i ] ; 4 uses
  %.050.lcssa.i = phi ptr [ %i.as, %bb.d ], [ %.lcssa286, %.preheader109.loopexit.i ] ; 3 uses
  %i.bd = icmp slt i32 %.058.lcssa.i, %i.at
  br i1 %i.bd, label %.lr.ph118.i.preheader, label %._crit_edge.i

.lr.ph118.i.preheader:                            ; preds = %.preheader109.i
  %i.be = xor i32 %.058.lcssa.i, -1
  %i.bf = add i32 %i.at, %i.be                    ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bf, 7
  br i1 %min.iters.check, label %.lr.ph118.i.preheader283, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph118.i.preheader
  %n.vec = and i64 %i.bh, 8589934584              ; 4 uses
  %i.bi = shl nuw nsw i64 %n.vec, 2
  %i.bj = getelementptr i8, ptr %.050.lcssa.i, i64 %i.bi
  %i.bk = trunc i64 %n.vec to i32
  %i.bl = add i32 %.058.lcssa.i, %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.bo, %vector.body ]
  %vec.phi240 = phi <4 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.bp, %vector.body ]
  %i.bm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.050.lcssa.i, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !66
  %wide.load241 = load <4 x float>, ptr %i.bn, align 4, !tbaa !66
  %i.bo = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %wide.load) ; 2 uses
  %i.bp = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi240, <4 x float> %wide.load241) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bo, <4 x float> %i.bp)
  %i.br = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph118.i.preheader283

.lr.ph118.i.preheader283:                         ; preds = %.lr.ph118.i.preheader, %middle.block
  %.151117.i.ph = phi ptr [ %.050.lcssa.i, %.lr.ph118.i.preheader ], [ %i.bj, %middle.block ]
  %.159116.i.ph = phi i32 [ %.058.lcssa.i, %.lr.ph118.i.preheader ], [ %i.bl, %middle.block ]
  %.0105115.i.ph = phi float [ f0xFF7FFFFF, %.lr.ph118.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph118.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.050112.i = phi ptr [ %i.as, %.lr.ph.i.preheader.new ], [ %i.cd, %.lr.ph.i ] ; 5 uses
  %.0101110.i = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader.new ], [ %i.cc, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.bs = load <4 x float>, ptr %.050112.i, align 1, !tbaa !63
  %i.bt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0101110.i, <4 x float> nofpclass(nan inf) %i.bs)
  %i.bu = getelementptr inbounds nuw i8, ptr %.050112.i, i64 16
  %i.bv = load <4 x float>, ptr %i.bu, align 1, !tbaa !63
  %i.bw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bt, <4 x float> nofpclass(nan inf) %i.bv)
  %i.bx = getelementptr inbounds nuw i8, ptr %.050112.i, i64 32
  %i.by = load <4 x float>, ptr %i.bx, align 1, !tbaa !63
  %i.bz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bw, <4 x float> nofpclass(nan inf) %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %.050112.i, i64 48
  %i.cb = load <4 x float>, ptr %i.ca, align 1, !tbaa !63
  %i.cc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bz, <4 x float> nofpclass(nan inf) %i.cb) ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.050112.i, i64 64 ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader109.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

.lr.ph118.i:                                      ; preds = %.lr.ph118.i.preheader283, %.lr.ph118.i
  %.151117.i = phi ptr [ %i.ce, %.lr.ph118.i ], [ %.151117.i.ph, %.lr.ph118.i.preheader283 ] ; 2 uses
  %.159116.i = phi i32 [ %i.cg, %.lr.ph118.i ], [ %.159116.i.ph, %.lr.ph118.i.preheader283 ]
  %.0105115.i = phi float [ %.sroa.speculated71.i, %.lr.ph118.i ], [ %.0105115.i.ph, %.lr.ph118.i.preheader283 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.151117.i, i64 4
  %i.cf = load float, ptr %.151117.i, align 4, !tbaa !66
  %.sroa.speculated71.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.0105115.i, float %i.cf) ; 2 uses
  %i.cg = add nuw nsw i32 %.159116.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cg, %i.at
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph118.i, !llvm.loop !85

._crit_edge.i:                                    ; preds = %.lr.ph118.i, %middle.block, %.preheader109.i
  %.0105.lcssa.i = phi float [ f0xFF7FFFFF, %.preheader109.i ], [ %i.br, %middle.block ], [ %.sroa.speculated71.i, %.lr.ph118.i ] ; 2 uses
  %i.ch = shufflevector <4 x float> %.0101.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ci = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0101.lcssa.i, <4 x float> nofpclass(nan inf) %i.ch) ; 2 uses
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ck = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ci, <4 x float> nofpclass(nan inf) %i.cj)
  %i.cl = extractelement <4 x float> %i.ck, i64 0 ; 2 uses
  %i.cm = fcmp fast olt float %.0105.lcssa.i, %i.cl
  %.sroa.speculated.i = select i1 %i.cm, float %i.cl, float %.0105.lcssa.i ; 3 uses
  %i.cn = insertelement <4 x float> poison, float %.sroa.speculated.i, i64 0
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.au, label %.lr.ph124.i, label %.preheader108.i

.preheader108.loopexit.i:                         ; preds = %.lr.ph124.i
  %i.cp = and i32 %i.at, 2147483644
  br label %.preheader108.i

.preheader108.i:                                  ; preds = %.preheader108.loopexit.i, %._crit_edge.i
  %.0103.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge.i ], [ %i.ep, %.preheader108.loopexit.i ] ; 2 uses
  %.054.lcssa.i = phi ptr [ %i.as, %._crit_edge.i ], [ %i.eq, %.preheader108.loopexit.i ] ; 3 uses
  %.052.lcssa.i = phi i32 [ 0, %._crit_edge.i ], [ %i.cp, %.preheader108.loopexit.i ] ; 4 uses
  %i.cq = icmp slt i32 %.052.lcssa.i, %i.at
  br i1 %i.cq, label %.lr.ph131.i.preheader, label %._crit_edge132.i

.lr.ph131.i.preheader:                            ; preds = %.preheader108.i
  %i.cr = xor i32 %.052.lcssa.i, -1
  %i.cs = add i32 %i.at, %i.cr                    ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check244 = icmp ult i32 %i.cs, 7
  br i1 %min.iters.check244, label %.lr.ph131.i.preheader277, label %vector.ph245

vector.ph245:                                     ; preds = %.lr.ph131.i.preheader
  %n.vec246 = and i64 %i.cu, 8589934584           ; 4 uses
  %i.cv = trunc i64 %n.vec246 to i32
  %i.cw = add i32 %.052.lcssa.i, %i.cv
  %i.cx = shl nuw nsw i64 %n.vec246, 2
  %i.cy = getelementptr i8, ptr %.054.lcssa.i, i64 %i.cx
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.speculated.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph245
  %index248 = phi i64 [ 0, %vector.ph245 ], [ %index.next254, %vector.body247 ] ; 2 uses
  %vec.phi249 = phi <4 x float> [ zeroinitializer, %vector.ph245 ], [ %i.df, %vector.body247 ]
  %vec.phi250 = phi <4 x float> [ zeroinitializer, %vector.ph245 ], [ %i.dg, %vector.body247 ]
  %i.cz = shl i64 %index248, 2
  %next.gep251 = getelementptr i8, ptr %.054.lcssa.i, i64 %i.cz ; 3 uses
  %i.da = getelementptr i8, ptr %next.gep251, i64 16 ; 2 uses
  %wide.load252 = load <4 x float>, ptr %next.gep251, align 4, !tbaa !66
  %wide.load253 = load <4 x float>, ptr %i.da, align 4, !tbaa !66
  %i.db = fsub fast <4 x float> %wide.load252, %broadcast.splat
  %i.dc = fsub fast <4 x float> %wide.load253, %broadcast.splat
  %i.dd = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.db) ; 2 uses
  %i.de = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.dc) ; 2 uses
  store <4 x float> %i.dd, ptr %next.gep251, align 4, !tbaa !66
  store <4 x float> %i.de, ptr %i.da, align 4, !tbaa !66
  %i.df = fadd fast <4 x float> %i.dd, %vec.phi249 ; 2 uses
  %i.dg = fadd fast <4 x float> %i.de, %vec.phi250 ; 2 uses
  %index.next254 = add nuw i64 %index248, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next254, %n.vec246
  br i1 %i.dh, label %middle.block255, label %vector.body247, !llvm.loop !86

middle.block255:                                  ; preds = %vector.body247
  %bin.rdx = fadd fast <4 x float> %i.dg, %i.df
  %i.di = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n256 = icmp eq i64 %i.cu, %n.vec246
  br i1 %cmp.n256, label %._crit_edge132.i, label %.lr.ph131.i.preheader277

.lr.ph131.i.preheader277:                         ; preds = %.lr.ph131.i.preheader, %middle.block255
  %.153130.i.ph = phi i32 [ %.052.lcssa.i, %.lr.ph131.i.preheader ], [ %i.cw, %middle.block255 ]
  %.155129.i.ph = phi ptr [ %.054.lcssa.i, %.lr.ph131.i.preheader ], [ %i.cy, %middle.block255 ]
  %.056128.i.ph = phi float [ 0.000000e+00, %.lr.ph131.i.preheader ], [ %i.di, %middle.block255 ]
  br label %.lr.ph131.i

.lr.ph124.i:                                      ; preds = %._crit_edge.i, %.lr.ph124.i
  %.052122.i = phi i32 [ %i.er, %.lr.ph124.i ], [ 0, %._crit_edge.i ]
  %.054121.i = phi ptr [ %i.eq, %.lr.ph124.i ], [ %i.as, %._crit_edge.i ] ; 3 uses
  %.0103120.i = phi <4 x float> [ %i.ep, %.lr.ph124.i ], [ zeroinitializer, %._crit_edge.i ]
  %i.dj = load <4 x float>, ptr %.054121.i, align 1, !tbaa !63
  %i.dk = fsub fast <4 x float> %i.dj, %i.co
  %i.dl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dk, <4 x float> splat (float f0x42B0C0A5))
  %i.dm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dn = fmul fast <4 x float> %i.dm, splat (float f0x3FB8AA3B)
  %i.do = fadd fast <4 x float> %i.dn, splat (float 5.000000e-01) ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.do)
  %i.dq = sitofp fast <4 x i32> %i.dp to <4 x float> ; 2 uses
  %i.dr = fcmp fast olt <4 x float> %i.do, %i.dq
  %i.ds = select <4 x i1> %i.dr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dt = fsub fast <4 x float> %i.dq, %i.ds      ; 2 uses
  %i.du = fmul fast <4 x float> %i.dt, splat (float f0x3F317218)
  %i.dv = fsub fast <4 x float> %i.dm, %i.du      ; 8 uses
  %i.dw = fmul fast <4 x float> %i.dv, %i.dv
  %i.dx = fmul fast <4 x float> %i.dv, splat (float f0x39506967)
  %i.dy = fadd fast <4 x float> %i.dx, splat (float f0x3AB743CE)
  %i.dz = fmul fast <4 x float> %i.dy, %i.dv
  %i.ea = fadd fast <4 x float> %i.dz, splat (float f0x3C088908)
  %i.eb = fmul fast <4 x float> %i.ea, %i.dv
  %i.ec = fadd fast <4 x float> %i.eb, splat (float f0x3D2AA9C1)
  %i.ed = fmul fast <4 x float> %i.ec, %i.dv
  %i.ee = fadd fast <4 x float> %i.ed, splat (float f0x3E2AAAAA)
  %i.ef = fmul fast <4 x float> %i.ee, %i.dv
  %i.eg = fadd fast <4 x float> %i.ef, splat (float 5.000000e-01)
  %i.eh = fmul fast <4 x float> %i.dw, %i.eg
  %i.ei = fadd fast <4 x float> %i.dv, splat (float 1.000000e+00)
  %i.ej = fadd fast <4 x float> %i.ei, %i.eh
  %i.ek = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dt)
  %i.el = shl <4 x i32> %i.ek, splat (i32 23)
  %i.em = add <4 x i32> %i.el, splat (i32 1065353216)
  %i.en = bitcast <4 x i32> %i.em to <4 x float>
  %i.eo = fmul fast <4 x float> %i.ej, %i.en      ; 2 uses
  store <4 x float> %i.eo, ptr %.054121.i, align 1, !tbaa !63
  %i.ep = fadd fast <4 x float> %i.eo, %.0103120.i ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.054121.i, i64 16 ; 2 uses
  %i.er = add nuw nsw i32 %.052122.i, 4           ; 2 uses
  %i.es = or disjoint i32 %i.er, 3
  %i.et = icmp slt i32 %i.es, %i.at
  br i1 %i.et, label %.lr.ph124.i, label %.preheader108.loopexit.i, !llvm.loop !1

.lr.ph131.i:                                      ; preds = %.lr.ph131.i.preheader277, %.lr.ph131.i
  %.153130.i = phi i32 [ %i.ez, %.lr.ph131.i ], [ %.153130.i.ph, %.lr.ph131.i.preheader277 ]
  %.155129.i = phi ptr [ %i.ey, %.lr.ph131.i ], [ %.155129.i.ph, %.lr.ph131.i.preheader277 ] ; 3 uses
  %.056128.i = phi float [ %i.ex, %.lr.ph131.i ], [ %.056128.i.ph, %.lr.ph131.i.preheader277 ]
  %i.eu = load float, ptr %.155129.i, align 4, !tbaa !66
  %i.ev = fsub fast float %i.eu, %.sroa.speculated.i
  %i.ew = tail call fast float @llvm.exp.f32(float %i.ev) ; 2 uses
  store float %i.ew, ptr %.155129.i, align 4, !tbaa !66
  %i.ex = fadd fast float %i.ew, %.056128.i       ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.155129.i, i64 4
  %i.ez = add nuw nsw i32 %.153130.i, 1           ; 2 uses
  %exitcond152.not.i = icmp eq i32 %i.ez, %i.at
  br i1 %exitcond152.not.i, label %._crit_edge132.i, label %.lr.ph131.i, !llvm.loop !87

._crit_edge132.i:                                 ; preds = %.lr.ph131.i, %middle.block255, %.preheader108.i
  %.056.lcssa.i = phi float [ 0.000000e+00, %.preheader108.i ], [ %i.di, %middle.block255 ], [ %i.ex, %.lr.ph131.i ]
  %i.fa = shufflevector <4 x float> %.0103.lcssa.i, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.fb = shufflevector <4 x float> %.0103.lcssa.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.fc = fadd fast <2 x float> %i.fa, %i.fb
  %i.fd = tail call fast float @llvm.vector.reduce.fadd.v2f32(float %.056.lcssa.i, <2 x float> %i.fc)
  %i.fe = fdiv fast float 1.000000e+00, %i.fd     ; 3 uses
  %i.ff = insertelement <4 x float> poison, float %i.fe, i64 0
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %i.au, label %.lr.ph137.i.preheader, label %.preheader.i

.lr.ph137.i.preheader:                            ; preds = %._crit_edge132.i
  %i.fh = add nsw i32 %i.at, -4                   ; 2 uses
  %i.fi = lshr i32 %i.fh, 2
  %i.fj = add nuw nsw i32 %i.fi, 1                ; 2 uses
  %xtraiter291 = and i32 %i.fj, 3                 ; 3 uses
  %i.fk = icmp ult i32 %i.fh, 12
  br i1 %i.fk, label %.lr.ph137.i.epil.preheader, label %.lr.ph137.i.preheader.new

.lr.ph137.i.preheader.new:                        ; preds = %.lr.ph137.i.preheader
  %unroll_iter296 = and i32 %i.fj, 2147483644
  br label %.lr.ph137.i

.preheader.loopexit.i.unr-lcssa:                  ; preds = %.lr.ph137.i
  %lcmp.mod293.not = icmp eq i32 %xtraiter291, 0
  br i1 %lcmp.mod293.not, label %.preheader.loopexit.i, label %.lr.ph137.i.epil.preheader

.lr.ph137.i.epil.preheader:                       ; preds = %.preheader.loopexit.i.unr-lcssa, %.lr.ph137.i.preheader
  %.048134.i.epil.init = phi ptr [ %i.as, %.lr.ph137.i.preheader ], [ %i.go, %.preheader.loopexit.i.unr-lcssa ]
  %lcmp.mod295 = icmp ne i32 %xtraiter291, 0
  tail call void @llvm.assume(i1 %lcmp.mod295)
  br label %.lr.ph137.i.epil

.lr.ph137.i.epil:                                 ; preds = %.lr.ph137.i.epil, %.lr.ph137.i.epil.preheader
  %.048134.i.epil = phi ptr [ %i.fn, %.lr.ph137.i.epil ], [ %.048134.i.epil.init, %.lr.ph137.i.epil.preheader ] ; 3 uses
  %epil.iter292 = phi i32 [ %epil.iter292.next, %.lr.ph137.i.epil ], [ 0, %.lr.ph137.i.epil.preheader ]
  %i.fl = load <4 x float>, ptr %.048134.i.epil, align 1, !tbaa !63
  %i.fm = fmul fast <4 x float> %i.fl, %i.fg
  store <4 x float> %i.fm, ptr %.048134.i.epil, align 1, !tbaa !63
  %i.fn = getelementptr inbounds nuw i8, ptr %.048134.i.epil, i64 16 ; 2 uses
  %epil.iter292.next = add i32 %epil.iter292, 1   ; 2 uses
  %epil.iter292.cmp.not = icmp eq i32 %epil.iter292.next, %xtraiter291
  br i1 %epil.iter292.cmp.not, label %.preheader.loopexit.i, label %.lr.ph137.i.epil, !llvm.loop !88

.preheader.loopexit.i:                            ; preds = %.lr.ph137.i.epil, %.preheader.loopexit.i.unr-lcssa
  %.lcssa = phi ptr [ %i.go, %.preheader.loopexit.i.unr-lcssa ], [ %i.fn, %.lr.ph137.i.epil ]
  %i.fo = and i32 %i.at, 2147483644
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %._crit_edge132.i
  %.048.lcssa.i = phi ptr [ %i.as, %._crit_edge132.i ], [ %.lcssa, %.preheader.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %._crit_edge132.i ], [ %i.fo, %.preheader.loopexit.i ] ; 4 uses
  %i.fp = icmp slt i32 %.0.lcssa.i, %i.at
  br i1 %i.fp, label %.lr.ph142.i.preheader, label %.thread227

.lr.ph142.i.preheader:                            ; preds = %.preheader.i
  %i.fq = xor i32 %.0.lcssa.i, -1
  %i.fr = add i32 %i.at, %i.fq                    ; 2 uses
  %i.fs = zext i32 %i.fr to i64
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %min.iters.check261 = icmp ult i32 %i.fr, 7
  br i1 %min.iters.check261, label %.lr.ph142.i.preheader276, label %vector.ph262

vector.ph262:                                     ; preds = %.lr.ph142.i.preheader
  %n.vec263 = and i64 %i.ft, 8589934584           ; 4 uses
  %i.fu = trunc i64 %n.vec263 to i32
  %i.fv = add i32 %.0.lcssa.i, %i.fu
  %i.fw = shl nuw nsw i64 %n.vec263, 2
  %i.fx = getelementptr i8, ptr %.048.lcssa.i, i64 %i.fw
  %broadcast.splatinsert264 = insertelement <4 x float> poison, float %i.fe, i64 0
  %broadcast.splat265 = shufflevector <4 x float> %broadcast.splatinsert264, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body266

vector.body266:                                   ; preds = %vector.body266, %vector.ph262
  %index267 = phi i64 [ 0, %vector.ph262 ], [ %index.next271, %vector.body266 ] ; 2 uses
  %i.fy = shl i64 %index267, 2
  %next.gep268 = getelementptr i8, ptr %.048.lcssa.i, i64 %i.fy ; 3 uses
  %i.fz = getelementptr i8, ptr %next.gep268, i64 16 ; 2 uses
  %wide.load269 = load <4 x float>, ptr %next.gep268, align 4, !tbaa !66
  %wide.load270 = load <4 x float>, ptr %i.fz, align 4, !tbaa !66
  %i.ga = fmul fast <4 x float> %wide.load269, %broadcast.splat265
  %i.gb = fmul fast <4 x float> %wide.load270, %broadcast.splat265
  store <4 x float> %i.ga, ptr %next.gep268, align 4, !tbaa !66
  store <4 x float> %i.gb, ptr %i.fz, align 4, !tbaa !66
  %index.next271 = add nuw i64 %index267, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next271, %n.vec263
  br i1 %i.gc, label %middle.block272, label %vector.body266, !llvm.loop !89

middle.block272:                                  ; preds = %vector.body266
  %cmp.n273 = icmp eq i64 %i.ft, %n.vec263
  br i1 %cmp.n273, label %.thread227, label %.lr.ph142.i.preheader276

.lr.ph142.i.preheader276:                         ; preds = %.lr.ph142.i.preheader, %middle.block272
  %.1141.i.ph = phi i32 [ %.0.lcssa.i, %.lr.ph142.i.preheader ], [ %i.fv, %middle.block272 ]
  %.149140.i.ph = phi ptr [ %.048.lcssa.i, %.lr.ph142.i.preheader ], [ %i.fx, %middle.block272 ]
  br label %.lr.ph142.i

.lr.ph137.i:                                      ; preds = %.lr.ph137.i, %.lr.ph137.i.preheader.new
  %.048134.i = phi ptr [ %i.as, %.lr.ph137.i.preheader.new ], [ %i.go, %.lr.ph137.i ] ; 6 uses
  %niter297 = phi i32 [ 0, %.lr.ph137.i.preheader.new ], [ %niter297.next.3, %.lr.ph137.i ]
  %i.gd = load <4 x float>, ptr %.048134.i, align 1, !tbaa !63
  %i.ge = fmul fast <4 x float> %i.gd, %i.fg
  store <4 x float> %i.ge, ptr %.048134.i, align 1, !tbaa !63
  %i.gf = getelementptr inbounds nuw i8, ptr %.048134.i, i64 16 ; 2 uses
  %i.gg = load <4 x float>, ptr %i.gf, align 1, !tbaa !63
  %i.gh = fmul fast <4 x float> %i.gg, %i.fg
  store <4 x float> %i.gh, ptr %i.gf, align 1, !tbaa !63
  %i.gi = getelementptr inbounds nuw i8, ptr %.048134.i, i64 32 ; 2 uses
  %i.gj = load <4 x float>, ptr %i.gi, align 1, !tbaa !63
  %i.gk = fmul fast <4 x float> %i.gj, %i.fg
  store <4 x float> %i.gk, ptr %i.gi, align 1, !tbaa !63
  %i.gl = getelementptr inbounds nuw i8, ptr %.048134.i, i64 48 ; 2 uses
  %i.gm = load <4 x float>, ptr %i.gl, align 1, !tbaa !63
  %i.gn = fmul fast <4 x float> %i.gm, %i.fg
  store <4 x float> %i.gn, ptr %i.gl, align 1, !tbaa !63
  %i.go = getelementptr inbounds nuw i8, ptr %.048134.i, i64 64 ; 3 uses
  %niter297.next.3 = add nuw nsw i32 %niter297, 4 ; 2 uses
  %niter297.ncmp.3.not = icmp eq i32 %niter297.next.3, %unroll_iter296
  br i1 %niter297.ncmp.3.not, label %.preheader.loopexit.i.unr-lcssa, label %.lr.ph137.i, !llvm.loop !2

.lr.ph142.i:                                      ; preds = %.lr.ph142.i.preheader276, %.lr.ph142.i
  %.1141.i = phi i32 [ %i.gs, %.lr.ph142.i ], [ %.1141.i.ph, %.lr.ph142.i.preheader276 ]
  %.149140.i = phi ptr [ %i.gp, %.lr.ph142.i ], [ %.149140.i.ph, %.lr.ph142.i.preheader276 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.149140.i, i64 4
  %i.gq = load float, ptr %.149140.i, align 4, !tbaa !66
  %i.gr = fmul fast float %i.gq, %i.fe
  store float %i.gr, ptr %.149140.i, align 4, !tbaa !66
  %i.gs = add nuw nsw i32 %.1141.i, 1             ; 2 uses
  %exitcond153.not.i = icmp eq i32 %i.gs, %i.at
  br i1 %exitcond153.not.i, label %.thread227, label %.lr.ph142.i, !llvm.loop !90

.thread227:                                       ; preds = %.lr.ph142.i, %middle.block272, %.preheader.i
  %i.gt = icmp eq i32 %i.aq, 1
  br label %bb.x

_ZN4ncnnL7softmaxEPfii.exit:                      ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.gu = icmp eq i32 %i.ad, 2                    ; 2 uses
  %i.gv = icmp eq i32 %i.aq, 0                    ; 2 uses
  %or.cond = select i1 %i.gu, i1 %i.gv, i1 false
  br i1 %or.cond, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN4ncnnL7softmaxEPfii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i32 %i.af, ptr %i.f, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !70 ; 3 uses
  %i.gy = add i32 %i.af, -1
  %i.gz = add i32 %i.gy, %i.gx
  %i.ha = sdiv i32 %i.gz, %i.gx                   ; 2 uses
  store i32 %i.ha, ptr %i.g, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  %i.hb = sext i32 %i.af to i64
  %i.hc = sext i32 %i.ab to i64
  %i.hd = mul nsw i64 %i.hc, %i.hb
  store i64 %i.hd, ptr %i.h, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !72
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store i64 0, ptr %i.hi, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.hh, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %i.ha, i32 noundef 2, i32 noundef %i.gx, i64 noundef 4, ptr noundef %i.hf)
  %i.hj = load ptr, ptr %3, align 8, !tbaa !62
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit104

_ZNK4ncnn3Mat5emptyEv.exit104:                    ; preds = %bb.e
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.hm = load i64, ptr %i.hi, align 8, !tbaa !73
end_hunk_0
begin_hunk_1_@_ZN4ncnnL7softmaxEPfii:bb.a
.preheader109.loopexit:                           ; preds = %.lr.ph.epil, %.preheader109.loopexit.unr-lcssa
  %.lcssa212 = phi <4 x float> [ %i.aj, %.preheader109.loopexit.unr-lcssa ], [ %i.h, %.lr.ph.epil ]
  %.lcssa211 = phi ptr [ %i.ak, %.preheader109.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.epil ]
  %i.j = and i32 %i.a, 2147483644
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.loopexit, %bb.a
  %.0101.lcssa = phi <4 x float> [ splat (float f0xFF7FFFFF), %bb.a ], [ %.lcssa212, %.preheader109.loopexit ] ; 3 uses
  %.058.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %.preheader109.loopexit ] ; 4 uses
  %.050.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa211, %.preheader109.loopexit ] ; 3 uses
  %i.k = icmp slt i32 %.058.lcssa, %i.a
  br i1 %i.k, label %.lr.ph118.preheader, label %._crit_edge

.lr.ph118.preheader:                              ; preds = %.preheader109
  %i.l = xor i32 %.058.lcssa, -1
  %i.m = add i32 %i.a, %i.l                       ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.m, 7
  br i1 %min.iters.check, label %.lr.ph118.preheader208, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph118.preheader
  %n.vec = and i64 %i.o, 8589934584               ; 4 uses
  %i.p = shl nuw nsw i64 %n.vec, 2
  %i.q = getelementptr i8, ptr %.050.lcssa, i64 %i.p
  %i.r = trunc i64 %n.vec to i32
  %i.s = add i32 %.058.lcssa, %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi165 = phi <4 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.w, %vector.body ]
  %i.t = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.050.lcssa, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !66
  %wide.load166 = load <4 x float>, ptr %i.u, align 4, !tbaa !66
  %i.v = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %wide.load) ; 2 uses
  %i.w = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi165, <4 x float> %wide.load166) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.v, <4 x float> %i.w)
  %i.y = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph118.preheader208

.lr.ph118.preheader208:                           ; preds = %.lr.ph118.preheader, %middle.block
  %.151117.ph = phi ptr [ %.050.lcssa, %.lr.ph118.preheader ], [ %i.q, %middle.block ]
  %.159116.ph = phi i32 [ %.058.lcssa, %.lr.ph118.preheader ], [ %i.s, %middle.block ]
  %.0105115.ph = phi float [ f0xFF7FFFFF, %.lr.ph118.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph118

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.050112 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.ak, %.lr.ph ] ; 5 uses
  %.0101110 = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.z = load <4 x float>, ptr %.050112, align 1, !tbaa !63
  %i.aa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0101110, <4 x float> nofpclass(nan inf) %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %.050112, i64 16
  %i.ac = load <4 x float>, ptr %i.ab, align 1, !tbaa !63
  %i.ad = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aa, <4 x float> nofpclass(nan inf) %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %.050112, i64 32
  %i.af = load <4 x float>, ptr %i.ae, align 1, !tbaa !63
  %i.ag = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ad, <4 x float> nofpclass(nan inf) %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %.050112, i64 48
  %i.ai = load <4 x float>, ptr %i.ah, align 1, !tbaa !63
  %i.aj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ag, <4 x float> nofpclass(nan inf) %i.ai) ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.050112, i64 64 ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader109.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !0

.lr.ph118:                                        ; preds = %.lr.ph118.preheader208, %.lr.ph118
  %.151117 = phi ptr [ %i.al, %.lr.ph118 ], [ %.151117.ph, %.lr.ph118.preheader208 ] ; 2 uses
  %.159116 = phi i32 [ %i.an, %.lr.ph118 ], [ %.159116.ph, %.lr.ph118.preheader208 ]
  %.0105115 = phi float [ %.sroa.speculated71, %.lr.ph118 ], [ %.0105115.ph, %.lr.ph118.preheader208 ]
  %i.al = getelementptr inbounds nuw i8, ptr %.151117, i64 4
  %i.am = load float, ptr %.151117, align 4, !tbaa !66
  %.sroa.speculated71 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.0105115, float %i.am) ; 2 uses
  %i.an = add nuw nsw i32 %.159116, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.an, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph118, !llvm.loop !98

._crit_edge:                                      ; preds = %.lr.ph118, %middle.block, %.preheader109
  %.0105.lcssa = phi float [ f0xFF7FFFFF, %.preheader109 ], [ %i.y, %middle.block ], [ %.sroa.speculated71, %.lr.ph118 ] ; 3 uses
  %i.ao = icmp eq i32 %2, 1                       ; 2 uses
  br i1 %i.ao, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.ap = shufflevector <4 x float> %.0101.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.aq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0101.lcssa, <4 x float> nofpclass(nan inf) %i.ap) ; 2 uses
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.as = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.aq, <4 x float> nofpclass(nan inf) %i.ar)
  %i.at = extractelement <4 x float> %i.as, i64 0 ; 2 uses
  %i.au = fcmp fast olt float %.0105.lcssa, %i.at
  %.sroa.speculated = select i1 %i.au, float %i.at, float %.0105.lcssa ; 2 uses
  %i.av = insertelement <4 x float> poison, float %.sroa.speculated, i64 0
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1106 = phi nsz float [ %.sroa.speculated, %bb.b ], [ %.0105.lcssa, %._crit_edge ] ; 2 uses
  %.1102 = phi nsz <4 x float> [ %i.aw, %bb.b ], [ %.0101.lcssa, %._crit_edge ]
  br i1 %i.b, label %.lr.ph124, label %.preheader108

.preheader108.loopexit:                           ; preds = %.lr.ph124
  %i.ax = and i32 %i.a, 2147483644
  br label %.preheader108

.preheader108:                                    ; preds = %.preheader108.loopexit, %bb.c
  %.0103.lcssa = phi <4 x float> [ zeroinitializer, %bb.c ], [ %i.cx, %.preheader108.loopexit ] ; 5 uses
  %.054.lcssa = phi ptr [ %0, %bb.c ], [ %i.cy, %.preheader108.loopexit ] ; 3 uses
  %.052.lcssa = phi i32 [ 0, %bb.c ], [ %i.ax, %.preheader108.loopexit ] ; 4 uses
  %i.ay = icmp slt i32 %.052.lcssa, %i.a
  br i1 %i.ay, label %.lr.ph131.preheader, label %._crit_edge132

.lr.ph131.preheader:                              ; preds = %.preheader108
  %i.az = xor i32 %.052.lcssa, -1
  %i.ba = add i32 %i.a, %i.az                     ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check169 = icmp ult i32 %i.ba, 7
  br i1 %min.iters.check169, label %.lr.ph131.preheader202, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph131.preheader
  %n.vec171 = and i64 %i.bc, 8589934584           ; 4 uses
  %i.bd = trunc i64 %n.vec171 to i32
  %i.be = add i32 %.052.lcssa, %i.bd
  %i.bf = shl nuw nsw i64 %n.vec171, 2
  %i.bg = getelementptr i8, ptr %.054.lcssa, i64 %i.bf
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.1106, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next179, %vector.body172 ] ; 2 uses
  %vec.phi174 = phi <4 x float> [ zeroinitializer, %vector.ph170 ], [ %i.bn, %vector.body172 ]
  %vec.phi175 = phi <4 x float> [ zeroinitializer, %vector.ph170 ], [ %i.bo, %vector.body172 ]
  %i.bh = shl i64 %index173, 2
  %next.gep176 = getelementptr i8, ptr %.054.lcssa, i64 %i.bh ; 3 uses
  %i.bi = getelementptr i8, ptr %next.gep176, i64 16 ; 2 uses
  %wide.load177 = load <4 x float>, ptr %next.gep176, align 4, !tbaa !66
  %wide.load178 = load <4 x float>, ptr %i.bi, align 4, !tbaa !66
  %i.bj = fsub fast <4 x float> %wide.load177, %broadcast.splat
  %i.bk = fsub fast <4 x float> %wide.load178, %broadcast.splat
  %i.bl = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.bj) ; 2 uses
  %i.bm = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.bk) ; 2 uses
  store <4 x float> %i.bl, ptr %next.gep176, align 4, !tbaa !66
  store <4 x float> %i.bm, ptr %i.bi, align 4, !tbaa !66
  %i.bn = fadd fast <4 x float> %i.bl, %vec.phi174 ; 2 uses
  %i.bo = fadd fast <4 x float> %i.bm, %vec.phi175 ; 2 uses
  %index.next179 = add nuw i64 %index173, 8       ; 2 uses
  %i.bp = icmp eq i64 %index.next179, %n.vec171
  br i1 %i.bp, label %middle.block180, label %vector.body172, !llvm.loop !99

middle.block180:                                  ; preds = %vector.body172
  %bin.rdx = fadd fast <4 x float> %i.bo, %i.bn
  %i.bq = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n181 = icmp eq i64 %i.bc, %n.vec171
  br i1 %cmp.n181, label %._crit_edge132, label %.lr.ph131.preheader202

.lr.ph131.preheader202:                           ; preds = %.lr.ph131.preheader, %middle.block180
  %.153130.ph = phi i32 [ %.052.lcssa, %.lr.ph131.preheader ], [ %i.be, %middle.block180 ]
  %.155129.ph = phi ptr [ %.054.lcssa, %.lr.ph131.preheader ], [ %i.bg, %middle.block180 ]
  %.056128.ph = phi float [ 0.000000e+00, %.lr.ph131.preheader ], [ %i.bq, %middle.block180 ]
  br label %.lr.ph131

.lr.ph124:                                        ; preds = %bb.c, %.lr.ph124
  %.052122 = phi i32 [ %i.cz, %.lr.ph124 ], [ 0, %bb.c ]
  %.054121 = phi ptr [ %i.cy, %.lr.ph124 ], [ %0, %bb.c ] ; 3 uses
  %.0103120 = phi <4 x float> [ %i.cx, %.lr.ph124 ], [ zeroinitializer, %bb.c ]
  %i.br = load <4 x float>, ptr %.054121, align 1, !tbaa !63
  %i.bs = fsub fast <4 x float> %i.br, %.1102
  %i.bt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bs, <4 x float> splat (float f0x42B0C0A5))
  %i.bu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bv = fmul fast <4 x float> %i.bu, splat (float f0x3FB8AA3B)
  %i.bw = fadd fast <4 x float> %i.bv, splat (float 5.000000e-01) ; 2 uses
  %i.bx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bw)
  %i.by = sitofp fast <4 x i32> %i.bx to <4 x float> ; 2 uses
  %i.bz = fcmp fast olt <4 x float> %i.bw, %i.by
  %i.ca = select <4 x i1> %i.bz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cb = fsub fast <4 x float> %i.by, %i.ca      ; 2 uses
  %i.cc = fmul fast <4 x float> %i.cb, splat (float f0x3F317218)
  %i.cd = fsub fast <4 x float> %i.bu, %i.cc      ; 8 uses
  %i.ce = fmul fast <4 x float> %i.cd, %i.cd
  %i.cf = fmul fast <4 x float> %i.cd, splat (float f0x39506967)
  %i.cg = fadd fast <4 x float> %i.cf, splat (float f0x3AB743CE)
  %i.ch = fmul fast <4 x float> %i.cg, %i.cd
  %i.ci = fadd fast <4 x float> %i.ch, splat (float f0x3C088908)
  %i.cj = fmul fast <4 x float> %i.ci, %i.cd
  %i.ck = fadd fast <4 x float> %i.cj, splat (float f0x3D2AA9C1)
  %i.cl = fmul fast <4 x float> %i.ck, %i.cd
  %i.cm = fadd fast <4 x float> %i.cl, splat (float f0x3E2AAAAA)
  %i.cn = fmul fast <4 x float> %i.cm, %i.cd
  %i.co = fadd fast <4 x float> %i.cn, splat (float 5.000000e-01)
  %i.cp = fmul fast <4 x float> %i.ce, %i.co
  %i.cq = fadd fast <4 x float> %i.cd, splat (float 1.000000e+00)
  %i.cr = fadd fast <4 x float> %i.cq, %i.cp
  %i.cs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cb)
  %i.ct = shl <4 x i32> %i.cs, splat (i32 23)
  %i.cu = add <4 x i32> %i.ct, splat (i32 1065353216)
  %i.cv = bitcast <4 x i32> %i.cu to <4 x float>
  %i.cw = fmul fast <4 x float> %i.cr, %i.cv      ; 2 uses
  store <4 x float> %i.cw, ptr %.054121, align 1, !tbaa !63
  %i.cx = fadd fast <4 x float> %i.cw, %.0103120  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.054121, i64 16 ; 2 uses
  %i.cz = add nuw nsw i32 %.052122, 4             ; 2 uses
  %i.da = or disjoint i32 %i.cz, 3
  %i.db = icmp slt i32 %i.da, %i.a
  br i1 %i.db, label %.lr.ph124, label %.preheader108.loopexit, !llvm.loop !1

.lr.ph131:                                        ; preds = %.lr.ph131.preheader202, %.lr.ph131
  %.153130 = phi i32 [ %i.dh, %.lr.ph131 ], [ %.153130.ph, %.lr.ph131.preheader202 ]
  %.155129 = phi ptr [ %i.dg, %.lr.ph131 ], [ %.155129.ph, %.lr.ph131.preheader202 ] ; 3 uses
  %.056128 = phi float [ %i.df, %.lr.ph131 ], [ %.056128.ph, %.lr.ph131.preheader202 ]
  %i.dc = load float, ptr %.155129, align 4, !tbaa !66
  %i.dd = fsub fast float %i.dc, %.1106
  %i.de = tail call fast float @llvm.exp.f32(float %i.dd) ; 2 uses
  store float %i.de, ptr %.155129, align 4, !tbaa !66
  %i.df = fadd fast float %i.de, %.056128         ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.155129, i64 4
  %i.dh = add nuw nsw i32 %.153130, 1             ; 2 uses
  %exitcond152.not = icmp eq i32 %i.dh, %i.a
  br i1 %exitcond152.not, label %._crit_edge132, label %.lr.ph131, !llvm.loop !100

._crit_edge132:                                   ; preds = %.lr.ph131, %middle.block180, %.preheader108
  %.056.lcssa = phi float [ 0.000000e+00, %.preheader108 ], [ %i.bq, %middle.block180 ], [ %i.df, %.lr.ph131 ] ; 3 uses
  %i.di = icmp eq i32 %2, 4
  br i1 %i.di, label %.thread, label %bb.d

.thread:                                          ; preds = %._crit_edge132
  %i.dj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %.0103.lcssa) ; 2 uses
  %i.dk = fmul fast <4 x float> %i.dj, %.0103.lcssa
  %i.dl = fsub fast <4 x float> splat (float 2.000000e+00), %i.dk
  %i.dm = fmul fast <4 x float> %i.dl, %i.dj
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge132
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dn = shufflevector <4 x float> %.0103.lcssa, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.do = shufflevector <4 x float> %.0103.lcssa, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.dp = fadd fast <2 x float> %i.dn, %i.do
  %i.dq = tail call fast float @llvm.vector.reduce.fadd.v2f32(float %.056.lcssa, <2 x float> %i.dp)
  %i.dr = fdiv fast float 1.000000e+00, %i.dq     ; 2 uses
  %i.ds = insertelement <4 x float> poison, float %i.dr, i64 0
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %bb.d
  %.2 = phi nsz <4 x float> [ %i.dt, %bb.e ], [ %.0103.lcssa, %bb.d ], [ %i.dm, %.thread ] ; 5 uses
  %.157 = phi nsz float [ %i.dr, %bb.e ], [ %.056.lcssa, %bb.d ], [ %.056.lcssa, %.thread ] ; 2 uses
  br i1 %i.b, label %.lr.ph137.preheader, label %.preheader

.lr.ph137.preheader:                              ; preds = %bb.f
  %i.du = add nsw i32 %i.a, -4                    ; 2 uses
  %i.dv = lshr i32 %i.du, 2
  %i.dw = add nuw nsw i32 %i.dv, 1                ; 2 uses
  %xtraiter216 = and i32 %i.dw, 3                 ; 3 uses
  %i.dx = icmp ult i32 %i.du, 12
  br i1 %i.dx, label %.lr.ph137.epil.preheader, label %.lr.ph137.preheader.new

.lr.ph137.preheader.new:                          ; preds = %.lr.ph137.preheader
  %unroll_iter221 = and i32 %i.dw, 2147483644
  br label %.lr.ph137

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph137
  %lcmp.mod218.not = icmp eq i32 %xtraiter216, 0
  br i1 %lcmp.mod218.not, label %.preheader.loopexit, label %.lr.ph137.epil.preheader

.lr.ph137.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph137.preheader
  %.048134.epil.init = phi ptr [ %0, %.lr.ph137.preheader ], [ %i.fb, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod220 = icmp ne i32 %xtraiter216, 0
  tail call void @llvm.assume(i1 %lcmp.mod220)
  br label %.lr.ph137.epil

.lr.ph137.epil:                                   ; preds = %.lr.ph137.epil, %.lr.ph137.epil.preheader
  %.048134.epil = phi ptr [ %i.ea, %.lr.ph137.epil ], [ %.048134.epil.init, %.lr.ph137.epil.preheader ] ; 3 uses
  %epil.iter217 = phi i32 [ %epil.iter217.next, %.lr.ph137.epil ], [ 0, %.lr.ph137.epil.preheader ]
  %i.dy = load <4 x float>, ptr %.048134.epil, align 1, !tbaa !63
  %i.dz = fmul fast <4 x float> %i.dy, %.2
  store <4 x float> %i.dz, ptr %.048134.epil, align 1, !tbaa !63
  %i.ea = getelementptr inbounds nuw i8, ptr %.048134.epil, i64 16 ; 2 uses
  %epil.iter217.next = add i32 %epil.iter217, 1   ; 2 uses
  %epil.iter217.cmp.not = icmp eq i32 %epil.iter217.next, %xtraiter216
  br i1 %epil.iter217.cmp.not, label %.preheader.loopexit, label %.lr.ph137.epil, !llvm.loop !101

.preheader.loopexit:                              ; preds = %.lr.ph137.epil, %.preheader.loopexit.unr-lcssa
  %.lcssa = phi ptr [ %i.fb, %.preheader.loopexit.unr-lcssa ], [ %i.ea, %.lr.ph137.epil ]
  %i.eb = and i32 %i.a, 2147483644
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.f
  %.048.lcssa = phi ptr [ %0, %bb.f ], [ %.lcssa, %.preheader.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %bb.f ], [ %i.eb, %.preheader.loopexit ] ; 4 uses
  %i.ec = icmp slt i32 %.0.lcssa, %i.a
  br i1 %i.ec, label %.lr.ph142.preheader, label %._crit_edge143

.lr.ph142.preheader:                              ; preds = %.preheader
  %i.ed = xor i32 %.0.lcssa, -1
  %i.ee = add i32 %i.a, %i.ed                     ; 2 uses
  %i.ef = zext i32 %i.ee to i64
  %i.eg = add nuw nsw i64 %i.ef, 1                ; 2 uses
  %min.iters.check186 = icmp ult i32 %i.ee, 7
  br i1 %min.iters.check186, label %.lr.ph142.preheader201, label %vector.ph187

vector.ph187:                                     ; preds = %.lr.ph142.preheader
  %n.vec188 = and i64 %i.eg, 8589934584           ; 4 uses
  %i.eh = trunc i64 %n.vec188 to i32
  %i.ei = add i32 %.0.lcssa, %i.eh
  %i.ej = shl nuw nsw i64 %n.vec188, 2
  %i.ek = getelementptr i8, ptr %.048.lcssa, i64 %i.ej
  %broadcast.splatinsert189 = insertelement <4 x float> poison, float %.157, i64 0
  %broadcast.splat190 = shufflevector <4 x float> %broadcast.splatinsert189, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph187
  %index192 = phi i64 [ 0, %vector.ph187 ], [ %index.next196, %vector.body191 ] ; 2 uses
  %i.el = shl i64 %index192, 2
  %next.gep193 = getelementptr i8, ptr %.048.lcssa, i64 %i.el ; 3 uses
  %i.em = getelementptr i8, ptr %next.gep193, i64 16 ; 2 uses
  %wide.load194 = load <4 x float>, ptr %next.gep193, align 4, !tbaa !66
  %wide.load195 = load <4 x float>, ptr %i.em, align 4, !tbaa !66
  %i.en = fmul fast <4 x float> %wide.load194, %broadcast.splat190
  %i.eo = fmul fast <4 x float> %wide.load195, %broadcast.splat190
  store <4 x float> %i.en, ptr %next.gep193, align 4, !tbaa !66
  store <4 x float> %i.eo, ptr %i.em, align 4, !tbaa !66
  %index.next196 = add nuw i64 %index192, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next196, %n.vec188
  br i1 %i.ep, label %middle.block197, label %vector.body191, !llvm.loop !102

middle.block197:                                  ; preds = %vector.body191
  %cmp.n198 = icmp eq i64 %i.eg, %n.vec188
  br i1 %cmp.n198, label %._crit_edge143, label %.lr.ph142.preheader201

.lr.ph142.preheader201:                           ; preds = %.lr.ph142.preheader, %middle.block197
  %.1141.ph = phi i32 [ %.0.lcssa, %.lr.ph142.preheader ], [ %i.ei, %middle.block197 ]
  %.149140.ph = phi ptr [ %.048.lcssa, %.lr.ph142.preheader ], [ %i.ek, %middle.block197 ]
  br label %.lr.ph142

.lr.ph137:                                        ; preds = %.lr.ph137, %.lr.ph137.preheader.new
  %.048134 = phi ptr [ %0, %.lr.ph137.preheader.new ], [ %i.fb, %.lr.ph137 ] ; 6 uses
  %niter222 = phi i32 [ 0, %.lr.ph137.preheader.new ], [ %niter222.next.3, %.lr.ph137 ]
  %i.eq = load <4 x float>, ptr %.048134, align 1, !tbaa !63
  %i.er = fmul fast <4 x float> %i.eq, %.2
  store <4 x float> %i.er, ptr %.048134, align 1, !tbaa !63
  %i.es = getelementptr inbounds nuw i8, ptr %.048134, i64 16 ; 2 uses
  %i.et = load <4 x float>, ptr %i.es, align 1, !tbaa !63
  %i.eu = fmul fast <4 x float> %i.et, %.2
  store <4 x float> %i.eu, ptr %i.es, align 1, !tbaa !63
  %i.ev = getelementptr inbounds nuw i8, ptr %.048134, i64 32 ; 2 uses
  %i.ew = load <4 x float>, ptr %i.ev, align 1, !tbaa !63
  %i.ex = fmul fast <4 x float> %i.ew, %.2
  store <4 x float> %i.ex, ptr %i.ev, align 1, !tbaa !63
  %i.ey = getelementptr inbounds nuw i8, ptr %.048134, i64 48 ; 2 uses
  %i.ez = load <4 x float>, ptr %i.ey, align 1, !tbaa !63
  %i.fa = fmul fast <4 x float> %i.ez, %.2
  store <4 x float> %i.fa, ptr %i.ey, align 1, !tbaa !63
  %i.fb = getelementptr inbounds nuw i8, ptr %.048134, i64 64 ; 3 uses
  %niter222.next.3 = add nuw nsw i32 %niter222, 4 ; 2 uses
  %niter222.ncmp.3.not = icmp eq i32 %niter222.next.3, %unroll_iter221
  br i1 %niter222.ncmp.3.not, label %.preheader.loopexit.unr-lcssa, label %.lr.ph137, !llvm.loop !2

.lr.ph142:                                        ; preds = %.lr.ph142.preheader201, %.lr.ph142
  %.1141 = phi i32 [ %i.ff, %.lr.ph142 ], [ %.1141.ph, %.lr.ph142.preheader201 ]
  %.149140 = phi ptr [ %i.fc, %.lr.ph142 ], [ %.149140.ph, %.lr.ph142.preheader201 ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.149140, i64 4
  %i.fd = load float, ptr %.149140, align 4, !tbaa !66
  %i.fe = fmul fast float %i.fd, %.157
  store float %i.fe, ptr %.149140, align 4, !tbaa !66
  %i.ff = add nuw nsw i32 %.1141, 1               ; 2 uses
  %exitcond153.not = icmp eq i32 %i.ff, %i.a
  br i1 %exitcond153.not, label %._crit_edge143, label %.lr.ph142, !llvm.loop !103

._crit_edge143:                                   ; preds = %.lr.ph142, %middle.block197, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Softmax_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !43     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
end_hunk_1
begin_hunk_2_@_ZN4ncnnL7softmaxEPfiimiS0_S0_:bb.a
  %i.bu = or disjoint i32 %i.bt, 3
  %i.bv = icmp slt i32 %i.bu, %4
  br i1 %i.bv, label %bb.c, label %..preheader332_crit_edge.us.i, !llvm.loop !110

.lr.ph341.us.i:                                   ; preds = %.lr.ph341.us.i.prol.loopexit, %.lr.ph341.us.i
  %.1340.us.i = phi ptr [ %i.co, %.lr.ph341.us.i ], [ %.1340.us.i.unr, %.lr.ph341.us.i.prol.loopexit ] ; 3 uses
  %.1180339.us.i = phi ptr [ %i.cp, %.lr.ph341.us.i ], [ %.1180339.us.i.unr, %.lr.ph341.us.i.prol.loopexit ] ; 4 uses
  %.1182338.us.i = phi i32 [ %i.cq, %.lr.ph341.us.i ], [ %.1182338.us.i.unr, %.lr.ph341.us.i.prol.loopexit ]
  %i.bw = load <4 x float>, ptr %.1340.us.i, align 1, !tbaa !63 ; 2 uses
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.by = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bw, <4 x float> nofpclass(nan inf) %i.bx) ; 2 uses
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ca = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.by, <4 x float> nofpclass(nan inf) %i.bz)
  %i.cb = extractelement <4 x float> %i.ca, i64 0 ; 2 uses
  %i.cc = load float, ptr %.1180339.us.i, align 4, !tbaa !66 ; 2 uses
  %i.cd = fcmp fast olt float %i.cc, %i.cb
  %.sroa.speculated.us.i = select i1 %i.cd, float %i.cb, float %i.cc
  store float %.sroa.speculated.us.i, ptr %.1180339.us.i, align 4, !tbaa !66
  %i.ce = getelementptr inbounds nuw i8, ptr %.1340.us.i, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %.1180339.us.i, i64 4 ; 2 uses
  %i.cg = load <4 x float>, ptr %i.ce, align 1, !tbaa !63 ; 2 uses
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ci = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cg, <4 x float> nofpclass(nan inf) %i.ch) ; 2 uses
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ck = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ci, <4 x float> nofpclass(nan inf) %i.cj)
  %i.cl = extractelement <4 x float> %i.ck, i64 0 ; 2 uses
  %i.cm = load float, ptr %i.cf, align 4, !tbaa !66 ; 2 uses
  %i.cn = fcmp fast olt float %i.cm, %i.cl
  %.sroa.speculated.us.i.1 = select i1 %i.cn, float %i.cl, float %i.cm
  store float %.sroa.speculated.us.i.1, ptr %i.cf, align 4, !tbaa !66
  %i.co = getelementptr inbounds nuw i8, ptr %.1340.us.i, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %.1180339.us.i, i64 8
  %i.cq = add nuw nsw i32 %.1182338.us.i, 2       ; 2 uses
  %exitcond399.not.i.1 = icmp eq i32 %i.cq, %4
  br i1 %exitcond399.not.i.1, label %._crit_edge.us.i, label %.lr.ph341.us.i, !llvm.loop !111

._crit_edge.us.i:                                 ; preds = %.lr.ph341.us.i.prol.loopexit, %.lr.ph341.us.i, %..preheader332_crit_edge.us.i
  %indvars.iv.next401.i = add nuw nsw i64 %indvars.iv400.i, 1 ; 2 uses
  %exitcond404.not.i = icmp eq i64 %indvars.iv.next401.i, %wide.trip.count403.i
  br i1 %exitcond404.not.i, label %.lr.ph360.i, label %.lr.ph.us.i, !llvm.loop !112

..preheader332_crit_edge.us.i:                    ; preds = %bb.c
  br i1 %.not52, label %._crit_edge.us.i, label %.lr.ph341.us.i.preheader

.lr.ph341.us.i.preheader:                         ; preds = %..preheader332_crit_edge.us.i
  br i1 %lcmp.mod318.not, label %.lr.ph341.us.i.prol.loopexit, label %.lr.ph341.us.i.prol

.lr.ph341.us.i.prol:                              ; preds = %.lr.ph341.us.i.preheader
  %i.cr = load <4 x float>, ptr %i.br, align 1, !tbaa !63 ; 2 uses
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ct = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cr, <4 x float> nofpclass(nan inf) %i.cs) ; 2 uses
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ct, <4 x float> nofpclass(nan inf) %i.cu)
  %i.cw = extractelement <4 x float> %i.cv, i64 0 ; 2 uses
  %i.cx = load float, ptr %i.bs, align 4, !tbaa !66 ; 2 uses
  %i.cy = fcmp fast olt float %i.cx, %i.cw
  %.sroa.speculated.us.i.prol = select i1 %i.cy, float %i.cw, float %i.cx
  store float %.sroa.speculated.us.i.prol, ptr %i.bs, align 4, !tbaa !66
  %i.cz = getelementptr inbounds nuw i8, ptr %.0178335.us.i, i64 80
  %i.da = getelementptr inbounds nuw i8, ptr %.0179334.us.i, i64 20
  br label %.lr.ph341.us.i.prol.loopexit

.lr.ph341.us.i.prol.loopexit:                     ; preds = %.lr.ph341.us.i.prol, %.lr.ph341.us.i.preheader
  %.1340.us.i.unr = phi ptr [ %i.br, %.lr.ph341.us.i.preheader ], [ %i.cz, %.lr.ph341.us.i.prol ]
  %.1180339.us.i.unr = phi ptr [ %i.bs, %.lr.ph341.us.i.preheader ], [ %i.da, %.lr.ph341.us.i.prol ]
  %.1182338.us.i.unr = phi i32 [ %i.as, %.lr.ph341.us.i.preheader ], [ %i.at, %.lr.ph341.us.i.prol ]
  br i1 %i.au, label %._crit_edge.us.i, label %.lr.ph341.us.i

.lr.ph344.split.i:                                ; preds = %.lr.ph344.i
  %i.db = icmp sgt i32 %4, 0
  br i1 %i.db, label %.preheader332.i.preheader, label %.lr.ph360.i

.preheader332.i.preheader:                        ; preds = %.lr.ph344.split.i
  %exitcond.not.i = icmp eq i32 %4, 1
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %4, 2
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.promoted359 = load float, ptr %5, align 4, !tbaa !66
  br label %.preheader332.i

.lr.ph360.i:                                      ; preds = %._crit_edge.i, %._crit_edge.us.i, %.lr.ph344.split.i
  %i.de = and i32 %4, -4
  br label %bb.f

.preheader332.i:                                  ; preds = %.preheader332.i.preheader, %._crit_edge.i
  %i.df = phi float [ %.sroa.speculated.i, %._crit_edge.i ], [ %.promoted359, %.preheader332.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %.preheader332.i.preheader ] ; 2 uses
  %i.dg = mul i64 %indvars.iv.i, %3
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dg ; 3 uses
  %i.di = load <4 x float>, ptr %i.dh, align 1, !tbaa !63 ; 2 uses
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.di, <4 x float> nofpclass(nan inf) %i.dj) ; 2 uses
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dk, <4 x float> nofpclass(nan inf) %i.dl)
  %i.dn = extractelement <4 x float> %i.dm, i64 0 ; 2 uses
  %i.do = fcmp fast olt float %i.df, %i.dn
  %.sroa.speculated.i = select i1 %i.do, float %i.dn, float %i.df ; 2 uses
  store float %.sroa.speculated.i, ptr %5, align 4, !tbaa !66
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d

bb.d:                                             ; preds = %.preheader332.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dq = load <4 x float>, ptr %i.dp, align 1, !tbaa !63 ; 2 uses
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ds = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> nofpclass(nan inf) %i.dr) ; 2 uses
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.du = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ds, <4 x float> nofpclass(nan inf) %i.dt)
  %i.dv = extractelement <4 x float> %i.du, i64 0 ; 2 uses
  %i.dw = load float, ptr %i.dc, align 4, !tbaa !66 ; 2 uses
  %i.dx = fcmp fast olt float %i.dw, %i.dv
  %.sroa.speculated.i.1 = select i1 %i.dx, float %i.dv, float %i.dw
  store float %.sroa.speculated.i.1, ptr %i.dc, align 4, !tbaa !66
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dz = load <4 x float>, ptr %i.dy, align 1, !tbaa !63 ; 2 uses
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.eb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dz, <4 x float> nofpclass(nan inf) %i.ea) ; 2 uses
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ed = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.eb, <4 x float> nofpclass(nan inf) %i.ec)
  %i.ee = extractelement <4 x float> %i.ed, i64 0 ; 2 uses
  %i.ef = load float, ptr %i.dd, align 4, !tbaa !66 ; 2 uses
  %i.eg = fcmp fast olt float %i.ef, %i.ee
  %.sroa.speculated.i.2 = select i1 %i.eg, float %i.ee, float %i.ef
  store float %.sroa.speculated.i.2, ptr %i.dd, align 4, !tbaa !66
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e, %bb.d, %.preheader332.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond398.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count403.i
  br i1 %exitcond398.not.i, label %.lr.ph360.i, label %.preheader332.i, !llvm.loop !112

.preheader329.i:                                  ; preds = %._crit_edge358.i, %bb.b
  br i1 %i.b, label %.lr.ph363.i.preheader, label %.preheader328.i

.lr.ph363.i.preheader:                            ; preds = %.preheader329.i
  %i.eh = add nsw i32 %4, -4                      ; 2 uses
  %i.ei = lshr i32 %i.eh, 2                       ; 2 uses
  %i.ej = add nuw nsw i32 %i.ei, 1                ; 2 uses
  %i.ek = icmp eq i32 %i.ei, 0
  br i1 %i.ek, label %.lr.ph363.i.epil.preheader, label %.lr.ph363.i.preheader.new

.lr.ph363.i.preheader.new:                        ; preds = %.lr.ph363.i.preheader
  %unroll_iter325 = and i32 %i.ej, 2147483646
  br label %.lr.ph363.i

bb.f:                                             ; preds = %._crit_edge358.i, %.lr.ph360.i
  %indvars.iv406.i = phi i64 [ 0, %.lr.ph360.i ], [ %indvars.iv.next407.i, %._crit_edge358.i ] ; 2 uses
  %i.el = mul i64 %indvars.iv406.i, %3
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.el ; 2 uses
  br i1 %i.b, label %.lr.ph.i, label %.preheader330.i

.preheader330.i:                                  ; preds = %.lr.ph.i, %bb.f
  %.0201.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.de, %.lr.ph.i ] ; 2 uses
  %.0199.lcssa.i = phi ptr [ %6, %bb.f ], [ %i.kt, %.lr.ph.i ]
  %.0197.lcssa.i = phi ptr [ %5, %bb.f ], [ %i.ks, %.lr.ph.i ]
  %.0184.lcssa.i = phi ptr [ %i.em, %bb.f ], [ %i.kr, %.lr.ph.i ]
  %i.en = icmp slt i32 %.0201.lcssa.i, %4
  br i1 %i.en, label %.lr.ph357.i, label %._crit_edge358.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.0184348.i = phi ptr [ %i.kr, %.lr.ph.i ], [ %i.em, %bb.f ] ; 6 uses
  %.0197347.i = phi ptr [ %i.ks, %.lr.ph.i ], [ %5, %bb.f ] ; 5 uses
  %.0199346.i = phi ptr [ %i.kt, %.lr.ph.i ], [ %6, %bb.f ] ; 3 uses
  %.0201345.i = phi i32 [ %i.ku, %.lr.ph.i ], [ 0, %bb.f ]
  %i.eo = load <4 x float>, ptr %.0184348.i, align 1, !tbaa !63
  %i.ep = getelementptr inbounds nuw i8, ptr %.0184348.i, i64 16 ; 2 uses
  %i.eq = load <4 x float>, ptr %i.ep, align 1, !tbaa !63
  %i.er = getelementptr inbounds nuw i8, ptr %.0184348.i, i64 32 ; 2 uses
  %i.es = load <4 x float>, ptr %i.er, align 1, !tbaa !63
  %i.et = getelementptr inbounds nuw i8, ptr %.0184348.i, i64 48 ; 2 uses
  %i.eu = load <4 x float>, ptr %i.et, align 1, !tbaa !63
  %i.ev = load float, ptr %.0197347.i, align 4, !tbaa !66
  %i.ew = insertelement <4 x float> poison, float %i.ev, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ey = fsub fast <4 x float> %i.eo, %i.ex
  %i.ez = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ey, <4 x float> splat (float f0x42B0C0A5))
  %i.fa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ez, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fb = fmul fast <4 x float> %i.fa, splat (float f0x3FB8AA3B)
  %i.fc = fadd fast <4 x float> %i.fb, splat (float 5.000000e-01) ; 2 uses
  %i.fd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fc)
  %i.fe = sitofp fast <4 x i32> %i.fd to <4 x float> ; 2 uses
  %i.ff = fcmp fast olt <4 x float> %i.fc, %i.fe
  %i.fg = select <4 x i1> %i.ff, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fh = fsub fast <4 x float> %i.fe, %i.fg      ; 2 uses
  %i.fi = fmul fast <4 x float> %i.fh, splat (float f0x3F317218)
  %i.fj = fsub fast <4 x float> %i.fa, %i.fi      ; 8 uses
  %i.fk = fmul fast <4 x float> %i.fj, %i.fj
  %i.fl = fmul fast <4 x float> %i.fj, splat (float f0x39506967)
  %i.fm = fadd fast <4 x float> %i.fl, splat (float f0x3AB743CE)
  %i.fn = fmul fast <4 x float> %i.fm, %i.fj
  %i.fo = fadd fast <4 x float> %i.fn, splat (float f0x3C088908)
  %i.fp = fmul fast <4 x float> %i.fo, %i.fj
  %i.fq = fadd fast <4 x float> %i.fp, splat (float f0x3D2AA9C1)
  %i.fr = fmul fast <4 x float> %i.fq, %i.fj
  %i.fs = fadd fast <4 x float> %i.fr, splat (float f0x3E2AAAAA)
  %i.ft = fmul fast <4 x float> %i.fs, %i.fj
  %i.fu = fadd fast <4 x float> %i.ft, splat (float 5.000000e-01)
  %i.fv = fmul fast <4 x float> %i.fk, %i.fu
  %i.fw = fadd fast <4 x float> %i.fj, splat (float 1.000000e+00)
  %i.fx = fadd fast <4 x float> %i.fw, %i.fv
  %i.fy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fh)
  %i.fz = shl <4 x i32> %i.fy, splat (i32 23)
  %i.ga = add <4 x i32> %i.fz, splat (i32 1065353216)
  %i.gb = bitcast <4 x i32> %i.ga to <4 x float>
  %i.gc = fmul fast <4 x float> %i.fx, %i.gb      ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.0197347.i, i64 4
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !66
  %i.gf = insertelement <4 x float> poison, float %i.ge, i64 0
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gh = fsub fast <4 x float> %i.eq, %i.gg
  %i.gi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gh, <4 x float> splat (float f0x42B0C0A5))
  %i.gj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gi, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gk = fmul fast <4 x float> %i.gj, splat (float f0x3FB8AA3B)
  %i.gl = fadd fast <4 x float> %i.gk, splat (float 5.000000e-01) ; 2 uses
  %i.gm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gl)
  %i.gn = sitofp fast <4 x i32> %i.gm to <4 x float> ; 2 uses
  %i.go = fcmp fast olt <4 x float> %i.gl, %i.gn
  %i.gp = select <4 x i1> %i.go, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gq = fsub fast <4 x float> %i.gn, %i.gp      ; 2 uses
  %i.gr = fmul fast <4 x float> %i.gq, splat (float f0x3F317218)
  %i.gs = fsub fast <4 x float> %i.gj, %i.gr      ; 8 uses
  %i.gt = fmul fast <4 x float> %i.gs, %i.gs
  %i.gu = fmul fast <4 x float> %i.gs, splat (float f0x39506967)
  %i.gv = fadd fast <4 x float> %i.gu, splat (float f0x3AB743CE)
  %i.gw = fmul fast <4 x float> %i.gv, %i.gs
  %i.gx = fadd fast <4 x float> %i.gw, splat (float f0x3C088908)
  %i.gy = fmul fast <4 x float> %i.gx, %i.gs
  %i.gz = fadd fast <4 x float> %i.gy, splat (float f0x3D2AA9C1)
  %i.ha = fmul fast <4 x float> %i.gz, %i.gs
  %i.hb = fadd fast <4 x float> %i.ha, splat (float f0x3E2AAAAA)
  %i.hc = fmul fast <4 x float> %i.hb, %i.gs
  %i.hd = fadd fast <4 x float> %i.hc, splat (float 5.000000e-01)
  %i.he = fmul fast <4 x float> %i.gt, %i.hd
  %i.hf = fadd fast <4 x float> %i.gs, splat (float 1.000000e+00)
  %i.hg = fadd fast <4 x float> %i.hf, %i.he
  %i.hh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gq)
  %i.hi = shl <4 x i32> %i.hh, splat (i32 23)
  %i.hj = add <4 x i32> %i.hi, splat (i32 1065353216)
  %i.hk = bitcast <4 x i32> %i.hj to <4 x float>
  %i.hl = fmul fast <4 x float> %i.hg, %i.hk      ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.0197347.i, i64 8
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !66
  %i.ho = insertelement <4 x float> poison, float %i.hn, i64 0
  %i.hp = shufflevector <4 x float> %i.ho, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hq = fsub fast <4 x float> %i.es, %i.hp
  %i.hr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hq, <4 x float> splat (float f0x42B0C0A5))
  %i.hs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hr, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ht = fmul fast <4 x float> %i.hs, splat (float f0x3FB8AA3B)
  %i.hu = fadd fast <4 x float> %i.ht, splat (float 5.000000e-01) ; 2 uses
  %i.hv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hu)
  %i.hw = sitofp fast <4 x i32> %i.hv to <4 x float> ; 2 uses
  %i.hx = fcmp fast olt <4 x float> %i.hu, %i.hw
  %i.hy = select <4 x i1> %i.hx, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hz = fsub fast <4 x float> %i.hw, %i.hy      ; 2 uses
  %i.ia = fmul fast <4 x float> %i.hz, splat (float f0x3F317218)
  %i.ib = fsub fast <4 x float> %i.hs, %i.ia      ; 8 uses
  %i.ic = fmul fast <4 x float> %i.ib, %i.ib
  %i.id = fmul fast <4 x float> %i.ib, splat (float f0x39506967)
  %i.ie = fadd fast <4 x float> %i.id, splat (float f0x3AB743CE)
  %i.if = fmul fast <4 x float> %i.ie, %i.ib
  %i.ig = fadd fast <4 x float> %i.if, splat (float f0x3C088908)
  %i.ih = fmul fast <4 x float> %i.ig, %i.ib
  %i.ii = fadd fast <4 x float> %i.ih, splat (float f0x3D2AA9C1)
  %i.ij = fmul fast <4 x float> %i.ii, %i.ib
  %i.ik = fadd fast <4 x float> %i.ij, splat (float f0x3E2AAAAA)
  %i.il = fmul fast <4 x float> %i.ik, %i.ib
  %i.im = fadd fast <4 x float> %i.il, splat (float 5.000000e-01)
  %i.in = fmul fast <4 x float> %i.ic, %i.im
  %i.io = fadd fast <4 x float> %i.ib, splat (float 1.000000e+00)
  %i.ip = fadd fast <4 x float> %i.io, %i.in
  %i.iq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hz)
  %i.ir = shl <4 x i32> %i.iq, splat (i32 23)
  %i.is = add <4 x i32> %i.ir, splat (i32 1065353216)
  %i.it = bitcast <4 x i32> %i.is to <4 x float>
  %i.iu = fmul fast <4 x float> %i.ip, %i.it      ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.0197347.i, i64 12
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !66
  %i.ix = insertelement <4 x float> poison, float %i.iw, i64 0
  %i.iy = shufflevector <4 x float> %i.ix, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iz = fsub fast <4 x float> %i.eu, %i.iy
  %i.ja = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.iz, <4 x float> splat (float f0x42B0C0A5))
  %i.jb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ja, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jc = fmul fast <4 x float> %i.jb, splat (float f0x3FB8AA3B)
  %i.jd = fadd fast <4 x float> %i.jc, splat (float 5.000000e-01) ; 2 uses
  %i.je = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jd)
  %i.jf = sitofp fast <4 x i32> %i.je to <4 x float> ; 2 uses
  %i.jg = fcmp fast olt <4 x float> %i.jd, %i.jf
  %i.jh = select <4 x i1> %i.jg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ji = fsub fast <4 x float> %i.jf, %i.jh      ; 2 uses
  %i.jj = fmul fast <4 x float> %i.ji, splat (float f0x3F317218)
  %i.jk = fsub fast <4 x float> %i.jb, %i.jj      ; 8 uses
  %i.jl = fmul fast <4 x float> %i.jk, %i.jk
  %i.jm = fmul fast <4 x float> %i.jk, splat (float f0x39506967)
  %i.jn = fadd fast <4 x float> %i.jm, splat (float f0x3AB743CE)
  %i.jo = fmul fast <4 x float> %i.jn, %i.jk
  %i.jp = fadd fast <4 x float> %i.jo, splat (float f0x3C088908)
  %i.jq = fmul fast <4 x float> %i.jp, %i.jk
  %i.jr = fadd fast <4 x float> %i.jq, splat (float f0x3D2AA9C1)
  %i.js = fmul fast <4 x float> %i.jr, %i.jk
  %i.jt = fadd fast <4 x float> %i.js, splat (float f0x3E2AAAAA)
  %i.ju = fmul fast <4 x float> %i.jt, %i.jk
  %i.jv = fadd fast <4 x float> %i.ju, splat (float 5.000000e-01)
  %i.jw = fmul fast <4 x float> %i.jl, %i.jv
  %i.jx = fadd fast <4 x float> %i.jk, splat (float 1.000000e+00)
  %i.jy = fadd fast <4 x float> %i.jx, %i.jw
  %i.jz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ji)
  %i.ka = shl <4 x i32> %i.jz, splat (i32 23)
  %i.kb = add <4 x i32> %i.ka, splat (i32 1065353216)
  %i.kc = bitcast <4 x i32> %i.kb to <4 x float>
  %i.kd = fmul fast <4 x float> %i.jy, %i.kc      ; 3 uses
  store <4 x float> %i.gc, ptr %.0184348.i, align 1, !tbaa !63
  store <4 x float> %i.hl, ptr %i.ep, align 1, !tbaa !63
  store <4 x float> %i.iu, ptr %i.er, align 1, !tbaa !63
  store <4 x float> %i.kd, ptr %i.et, align 1, !tbaa !63
  %i.ke = shufflevector <4 x float> %i.gc, <4 x float> %i.hl, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.kf = shufflevector <4 x float> %i.iu, <4 x float> %i.kd, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.kg = shufflevector <4 x float> %i.gc, <4 x float> %i.hl, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.kh = shufflevector <4 x float> %i.iu, <4 x float> %i.kd, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ki = shufflevector <4 x float> %i.ke, <4 x float> %i.kf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.kj = shufflevector <4 x float> %i.kf, <4 x float> %i.ke, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.kk = shufflevector <4 x float> %i.kg, <4 x float> %i.kh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.kl = shufflevector <4 x float> %i.kh, <4 x float> %i.kg, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.km = load <4 x float>, ptr %.0199346.i, align 1, !tbaa !63
  %i.kn = fadd fast <4 x float> %i.kj, %i.km
  %i.ko = fadd fast <4 x float> %i.kn, %i.ki
  %i.kp = fadd fast <4 x float> %i.ko, %i.kl
  %i.kq = fadd fast <4 x float> %i.kp, %i.kk
  store <4 x float> %i.kq, ptr %.0199346.i, align 1, !tbaa !63
  %i.kr = getelementptr inbounds nuw i8, ptr %.0184348.i, i64 64 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0197347.i, i64 16 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.0199346.i, i64 16 ; 2 uses
  %i.ku = add nuw nsw i32 %.0201345.i, 4          ; 2 uses
  %i.kv = or disjoint i32 %i.ku, 3
  %i.kw = icmp slt i32 %i.kv, %4
  br i1 %i.kw, label %.lr.ph.i, label %.preheader330.i, !llvm.loop !113

.lr.ph357.i:                                      ; preds = %.preheader330.i, %.lr.ph357.i
  %.1185356.i = phi ptr [ %i.mn, %.lr.ph357.i ], [ %.0184.lcssa.i, %.preheader330.i ] ; 3 uses
  %.1198355.i = phi ptr [ %i.mo, %.lr.ph357.i ], [ %.0197.lcssa.i, %.preheader330.i ] ; 2 uses
  %.1200354.i = phi ptr [ %i.mp, %.lr.ph357.i ], [ %.0199.lcssa.i, %.preheader330.i ] ; 3 uses
  %.1202353.i = phi i32 [ %i.mq, %.lr.ph357.i ], [ %.0201.lcssa.i, %.preheader330.i ]
  %i.kx = load <4 x float>, ptr %.1185356.i, align 1, !tbaa !63
  %i.ky = load float, ptr %.1198355.i, align 4, !tbaa !66
  %i.kz = insertelement <4 x float> poison, float %i.ky, i64 0
  %i.la = shufflevector <4 x float> %i.kz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lb = fsub fast <4 x float> %i.kx, %i.la
  %i.lc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lb, <4 x float> splat (float f0x42B0C0A5))
  %i.ld = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.le = fmul fast <4 x float> %i.ld, splat (float f0x3FB8AA3B)
  %i.lf = fadd fast <4 x float> %i.le, splat (float 5.000000e-01) ; 2 uses
  %i.lg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lf)
  %i.lh = sitofp fast <4 x i32> %i.lg to <4 x float> ; 2 uses
  %i.li = fcmp fast olt <4 x float> %i.lf, %i.lh
  %i.lj = select <4 x i1> %i.li, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.lk = fsub fast <4 x float> %i.lh, %i.lj      ; 2 uses
  %i.ll = fmul fast <4 x float> %i.lk, splat (float f0x3F317218)
  %i.lm = fsub fast <4 x float> %i.ld, %i.ll      ; 8 uses
  %i.ln = fmul fast <4 x float> %i.lm, %i.lm
  %i.lo = fmul fast <4 x float> %i.lm, splat (float f0x39506967)
  %i.lp = fadd fast <4 x float> %i.lo, splat (float f0x3AB743CE)
  %i.lq = fmul fast <4 x float> %i.lp, %i.lm
  %i.lr = fadd fast <4 x float> %i.lq, splat (float f0x3C088908)
  %i.ls = fmul fast <4 x float> %i.lr, %i.lm
  %i.lt = fadd fast <4 x float> %i.ls, splat (float f0x3D2AA9C1)
  %i.lu = fmul fast <4 x float> %i.lt, %i.lm
  %i.lv = fadd fast <4 x float> %i.lu, splat (float f0x3E2AAAAA)
  %i.lw = fmul fast <4 x float> %i.lv, %i.lm
  %i.lx = fadd fast <4 x float> %i.lw, splat (float 5.000000e-01)
  %i.ly = fmul fast <4 x float> %i.ln, %i.lx
  %i.lz = fadd fast <4 x float> %i.lm, splat (float 1.000000e+00)
  %i.ma = fadd fast <4 x float> %i.lz, %i.ly
  %i.mb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lk)
  %i.mc = shl <4 x i32> %i.mb, splat (i32 23)
  %i.md = add <4 x i32> %i.mc, splat (i32 1065353216)
  %i.me = bitcast <4 x i32> %i.md to <4 x float>
  %i.mf = fmul fast <4 x float> %i.ma, %i.me      ; 3 uses
  store <4 x float> %i.mf, ptr %.1185356.i, align 1, !tbaa !63
  %i.mg = shufflevector <4 x float> %i.mf, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.mh = fadd fast <4 x float> %i.mg, %i.mf      ; 2 uses
  %i.mi = extractelement <4 x float> %i.mh, i64 1
  %i.mj = extractelement <4 x float> %i.mh, i64 0
  %i.mk = load float, ptr %.1200354.i, align 4, !tbaa !66
  %i.ml = fadd fast float %i.mi, %i.mk
  %i.mm = fadd fast float %i.ml, %i.mj
  store float %i.mm, ptr %.1200354.i, align 4, !tbaa !66
  %i.mn = getelementptr inbounds nuw i8, ptr %.1185356.i, i64 16
  %i.mo = getelementptr inbounds nuw i8, ptr %.1198355.i, i64 4
  %i.mp = getelementptr inbounds nuw i8, ptr %.1200354.i, i64 4
  %i.mq = add nuw nsw i32 %.1202353.i, 1          ; 2 uses
  %exitcond405.not.i = icmp eq i32 %i.mq, %4
  br i1 %exitcond405.not.i, label %._crit_edge358.i, label %.lr.ph357.i, !llvm.loop !114

._crit_edge358.i:                                 ; preds = %.lr.ph357.i, %.preheader330.i
  %indvars.iv.next407.i = add nuw nsw i64 %indvars.iv406.i, 1 ; 2 uses
  %exitcond410.not.i = icmp eq i64 %indvars.iv.next407.i, %wide.trip.count403.i
  br i1 %exitcond410.not.i, label %.preheader329.i, label %bb.f, !llvm.loop !115

.preheader328.loopexit.i.unr-lcssa:               ; preds = %.lr.ph363.i
  %i.mr = and i32 %i.eh, 4
  %lcmp.mod322.not.not = icmp eq i32 %i.mr, 0
  br i1 %lcmp.mod322.not.not, label %.lr.ph363.i.epil.preheader, label %.preheader328.loopexit.i

.lr.ph363.i.epil.preheader:                       ; preds = %.preheader328.loopexit.i.unr-lcssa, %.lr.ph363.i.preheader
  %.0195361.i.epil.init = phi ptr [ %6, %.lr.ph363.i.preheader ], [ %i.nw, %.preheader328.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod324 = trunc i32 %i.ej to i1
  tail call void @llvm.assume(i1 %lcmp.mod324)
  %i.ms = load <4 x float>, ptr %.0195361.i.epil.init, align 1, !tbaa !63 ; 2 uses
  %i.mt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.ms) ; 2 uses
  %i.mu = fmul fast <4 x float> %i.mt, %i.ms
  %i.mv = fsub fast <4 x float> splat (float 2.000000e+00), %i.mu
  %i.mw = fmul fast <4 x float> %i.mv, %i.mt
  store <4 x float> %i.mw, ptr %.0195361.i.epil.init, align 1, !tbaa !63
  %i.mx = getelementptr inbounds nuw i8, ptr %.0195361.i.epil.init, i64 16
  br label %.preheader328.loopexit.i

.preheader328.loopexit.i:                         ; preds = %.preheader328.loopexit.i.unr-lcssa, %.lr.ph363.i.epil.preheader
  %.lcssa263 = phi ptr [ %i.nw, %.preheader328.loopexit.i.unr-lcssa ], [ %i.mx, %.lr.ph363.i.epil.preheader ]
  %i.my = and i32 %4, 2147483644
  br label %.preheader328.i

.preheader328.i:                                  ; preds = %.preheader328.loopexit.i, %.preheader329.i
  %.0195.lcssa.i = phi ptr [ %6, %.preheader329.i ], [ %.lcssa263, %.preheader328.loopexit.i ] ; 3 uses
  %.0193.lcssa.i = phi i32 [ 0, %.preheader329.i ], [ %i.my, %.preheader328.loopexit.i ] ; 4 uses
  %i.mz = icmp slt i32 %.0193.lcssa.i, %4
  br i1 %i.mz, label %.lr.ph368.i.preheader, label %.preheader327.i

.lr.ph368.i.preheader:                            ; preds = %.preheader328.i
  %i.na = xor i32 %.0193.lcssa.i, -1
  %i.nb = add i32 %4, %i.na                       ; 2 uses
  %i.nc = zext i32 %i.nb to i64
  %i.nd = add nuw nsw i64 %i.nc, 1                ; 2 uses
  %min.iters.check249 = icmp ult i32 %i.nb, 3
  br i1 %min.iters.check249, label %.lr.ph368.i.preheader262, label %vector.ph250

vector.ph250:                                     ; preds = %.lr.ph368.i.preheader
  %n.vec251 = and i64 %i.nd, 8589934588           ; 4 uses
  %i.ne = trunc i64 %n.vec251 to i32
  %i.nf = add i32 %.0193.lcssa.i, %i.ne
  %i.ng = shl nuw nsw i64 %n.vec251, 2
  %i.nh = getelementptr i8, ptr %.0195.lcssa.i, i64 %i.ng
  br label %vector.body252

vector.body252:                                   ; preds = %vector.body252, %vector.ph250
  %index253 = phi i64 [ 0, %vector.ph250 ], [ %index.next256, %vector.body252 ] ; 2 uses
  %i.ni = shl i64 %index253, 2
  %next.gep254 = getelementptr i8, ptr %.0195.lcssa.i, i64 %i.ni ; 2 uses
  %wide.load255 = load <4 x float>, ptr %next.gep254, align 4, !tbaa !66
  %i.nj = fdiv fast <4 x float> splat (float 1.000000e+00), %wide.load255
  store <4 x float> %i.nj, ptr %next.gep254, align 4, !tbaa !66
  %index.next256 = add nuw i64 %index253, 4       ; 2 uses
  %i.nk = icmp eq i64 %index.next256, %n.vec251
  br i1 %i.nk, label %middle.block257, label %vector.body252, !llvm.loop !116

middle.block257:                                  ; preds = %vector.body252
  %cmp.n258 = icmp eq i64 %i.nd, %n.vec251
  br i1 %cmp.n258, label %.preheader327.i, label %.lr.ph368.i.preheader262

.lr.ph368.i.preheader262:                         ; preds = %.lr.ph368.i.preheader, %middle.block257
  %.1194367.i.ph = phi i32 [ %.0193.lcssa.i, %.lr.ph368.i.preheader ], [ %i.nf, %middle.block257 ]
  %.1196366.i.ph = phi ptr [ %.0195.lcssa.i, %.lr.ph368.i.preheader ], [ %i.nh, %middle.block257 ]
  br label %.lr.ph368.i

.lr.ph363.i:                                      ; preds = %.lr.ph363.i, %.lr.ph363.i.preheader.new
  %.0195361.i = phi ptr [ %6, %.lr.ph363.i.preheader.new ], [ %i.nw, %.lr.ph363.i ] ; 4 uses
  %niter326 = phi i32 [ 0, %.lr.ph363.i.preheader.new ], [ %niter326.next.1, %.lr.ph363.i ]
  %i.nl = load <4 x float>, ptr %.0195361.i, align 1, !tbaa !63 ; 2 uses
  %i.nm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.nl) ; 2 uses
  %i.nn = fmul fast <4 x float> %i.nm, %i.nl
  %i.no = fsub fast <4 x float> splat (float 2.000000e+00), %i.nn
  %i.np = fmul fast <4 x float> %i.no, %i.nm
  store <4 x float> %i.np, ptr %.0195361.i, align 1, !tbaa !63
  %i.nq = getelementptr inbounds nuw i8, ptr %.0195361.i, i64 16 ; 2 uses
  %i.nr = load <4 x float>, ptr %i.nq, align 1, !tbaa !63 ; 2 uses
  %i.ns = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.nr) ; 2 uses
  %i.nt = fmul fast <4 x float> %i.ns, %i.nr
  %i.nu = fsub fast <4 x float> splat (float 2.000000e+00), %i.nt
  %i.nv = fmul fast <4 x float> %i.nu, %i.ns
  store <4 x float> %i.nv, ptr %i.nq, align 1, !tbaa !63
  %i.nw = getelementptr inbounds nuw i8, ptr %.0195361.i, i64 32 ; 3 uses
  %niter326.next.1 = add i32 %niter326, 2         ; 2 uses
  %niter326.ncmp.1.not = icmp eq i32 %niter326.next.1, %unroll_iter325
  br i1 %niter326.ncmp.1.not, label %.preheader328.loopexit.i.unr-lcssa, label %.lr.ph363.i, !llvm.loop !117

.preheader327.i:                                  ; preds = %.lr.ph368.i, %middle.block257, %.preheader328.i
  br i1 %i.ar, label %.lr.ph383.i, label %_ZN4ncnnL13softmax_pack4EPfimiS0_S0_.exit

.lr.ph383.i:                                      ; preds = %.preheader327.i
  %i.nx = and i32 %4, -4
  %wide.trip.count416.i = zext nneg i32 %1 to i64
  %xtraiter327 = and i32 %4, 3                    ; 2 uses
  %lcmp.mod328.not = icmp eq i32 %xtraiter327, 0
  br label %bb.g

.lr.ph368.i:                                      ; preds = %.lr.ph368.i.preheader262, %.lr.ph368.i
  %.1194367.i = phi i32 [ %i.ob, %.lr.ph368.i ], [ %.1194367.i.ph, %.lr.ph368.i.preheader262 ]
  %.1196366.i = phi ptr [ %i.oa, %.lr.ph368.i ], [ %.1196366.i.ph, %.lr.ph368.i.preheader262 ] ; 3 uses
  %i.ny = load float, ptr %.1196366.i, align 4, !tbaa !66
  %i.nz = fdiv fast float 1.000000e+00, %i.ny
  store float %i.nz, ptr %.1196366.i, align 4, !tbaa !66
  %i.oa = getelementptr inbounds nuw i8, ptr %.1196366.i, i64 4
  %i.ob = add nuw nsw i32 %.1194367.i, 1          ; 2 uses
  %exitcond411.not.i = icmp eq i32 %i.ob, %4
  br i1 %exitcond411.not.i, label %.preheader327.i, label %.lr.ph368.i, !llvm.loop !118

bb.g:                                             ; preds = %._crit_edge381.i, %.lr.ph383.i
  %indvars.iv413.i = phi i64 [ 0, %.lr.ph383.i ], [ %indvars.iv.next414.i, %._crit_edge381.i ] ; 2 uses
  %i.oc = mul i64 %indvars.iv413.i, %3
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.oc ; 2 uses
  br i1 %i.b, label %.lr.ph373.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph373.i, %bb.g
  %.0190.lcssa.i = phi ptr [ %i.od, %bb.g ], [ %i.pp, %.lr.ph373.i ] ; 2 uses
  %.0188.lcssa.i = phi ptr [ %6, %bb.g ], [ %i.pq, %.lr.ph373.i ] ; 2 uses
  %.0186.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.nx, %.lr.ph373.i ] ; 4 uses
  %i.oe = icmp slt i32 %.0186.lcssa.i, %4
  br i1 %i.oe, label %.lr.ph380.i.preheader, label %._crit_edge381.i

.lr.ph380.i.preheader:                            ; preds = %.preheader.i
  br i1 %lcmp.mod328.not, label %.lr.ph380.i.prol.loopexit, label %.lr.ph380.i.prol

.lr.ph380.i.prol:                                 ; preds = %.lr.ph380.i.preheader, %.lr.ph380.i.prol
  %.1187379.i.prol = phi i32 [ %i.om, %.lr.ph380.i.prol ], [ %.0186.lcssa.i, %.lr.ph380.i.preheader ]
  %.1189378.i.prol = phi ptr [ %i.ol, %.lr.ph380.i.prol ], [ %.0188.lcssa.i, %.lr.ph380.i.preheader ] ; 2 uses
  %.1191377.i.prol = phi ptr [ %i.ok, %.lr.ph380.i.prol ], [ %.0190.lcssa.i, %.lr.ph380.i.preheader ] ; 3 uses
  %prol.iter329 = phi i32 [ %prol.iter329.next, %.lr.ph380.i.prol ], [ 0, %.lr.ph380.i.preheader ]
  %i.of = load <4 x float>, ptr %.1191377.i.prol, align 1, !tbaa !63
  %i.og = load float, ptr %.1189378.i.prol, align 4, !tbaa !66
  %i.oh = insertelement <4 x float> poison, float %i.og, i64 0
  %i.oi = shufflevector <4 x float> %i.oh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oj = fmul fast <4 x float> %i.oi, %i.of
  store <4 x float> %i.oj, ptr %.1191377.i.prol, align 1, !tbaa !63
  %i.ok = getelementptr inbounds nuw i8, ptr %.1191377.i.prol, i64 16 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.1189378.i.prol, i64 4 ; 2 uses
  %i.om = add nuw nsw i32 %.1187379.i.prol, 1     ; 2 uses
  %prol.iter329.next = add i32 %prol.iter329, 1   ; 2 uses
  %prol.iter329.cmp.not = icmp eq i32 %prol.iter329.next, %xtraiter327
  br i1 %prol.iter329.cmp.not, label %.lr.ph380.i.prol.loopexit, label %.lr.ph380.i.prol, !llvm.loop !119

.lr.ph380.i.prol.loopexit:                        ; preds = %.lr.ph380.i.prol, %.lr.ph380.i.preheader
  %.1187379.i.unr = phi i32 [ %.0186.lcssa.i, %.lr.ph380.i.preheader ], [ %i.om, %.lr.ph380.i.prol ]
  %.1189378.i.unr = phi ptr [ %.0188.lcssa.i, %.lr.ph380.i.preheader ], [ %i.ol, %.lr.ph380.i.prol ]
  %.1191377.i.unr = phi ptr [ %.0190.lcssa.i, %.lr.ph380.i.preheader ], [ %i.ok, %.lr.ph380.i.prol ]
  %i.on = sub i32 %.0186.lcssa.i, %4
  %i.oo = icmp ugt i32 %i.on, -4
  br i1 %i.oo, label %._crit_edge381.i, label %.lr.ph380.i

.lr.ph373.i:                                      ; preds = %bb.g, %.lr.ph373.i
  %.0186371.i = phi i32 [ %i.pr, %.lr.ph373.i ], [ 0, %bb.g ]
  %.0188370.i = phi ptr [ %i.pq, %.lr.ph373.i ], [ %6, %bb.g ] ; 5 uses
  %.0190369.i = phi ptr [ %i.pp, %.lr.ph373.i ], [ %i.od, %bb.g ] ; 6 uses
  %i.op = load <4 x float>, ptr %.0190369.i, align 1, !tbaa !63
  %i.oq = getelementptr inbounds nuw i8, ptr %.0190369.i, i64 16 ; 2 uses
  %i.or = load <4 x float>, ptr %i.oq, align 1, !tbaa !63
  %i.os = getelementptr inbounds nuw i8, ptr %.0190369.i, i64 32 ; 2 uses
  %i.ot = load <4 x float>, ptr %i.os, align 1, !tbaa !63
  %i.ou = getelementptr inbounds nuw i8, ptr %.0190369.i, i64 48 ; 2 uses
  %i.ov = load <4 x float>, ptr %i.ou, align 1, !tbaa !63
  %i.ow = load float, ptr %.0188370.i, align 4, !tbaa !66
  %i.ox = insertelement <4 x float> poison, float %i.ow, i64 0
  %i.oy = shufflevector <4 x float> %i.ox, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oz = fmul fast <4 x float> %i.oy, %i.op
  %i.pa = getelementptr inbounds nuw i8, ptr %.0188370.i, i64 4
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !66
  %i.pc = insertelement <4 x float> poison, float %i.pb, i64 0
  %i.pd = shufflevector <4 x float> %i.pc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pe = fmul fast <4 x float> %i.pd, %i.or
  %i.pf = getelementptr inbounds nuw i8, ptr %.0188370.i, i64 8
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !66
  %i.ph = insertelement <4 x float> poison, float %i.pg, i64 0
  %i.pi = shufflevector <4 x float> %i.ph, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pj = fmul fast <4 x float> %i.pi, %i.ot
end_hunk_2
begin_hunk_3_@_ZN4ncnnL7softmaxEPfiimiS0_S0_:bb.a
  %i.uc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.promoted = load float, ptr %5, align 4, !tbaa !66
  br label %.preheader158.i

.lr.ph186.i:                                      ; preds = %._crit_edge.i47, %._crit_edge.us.i51, %.lr.ph170.split.i
  %i.ud = and i32 %4, -4
  br label %bb.l

.preheader158.i:                                  ; preds = %.preheader158.i.preheader, %._crit_edge.i47
  %i.ue = phi float [ %i.uj, %._crit_edge.i47 ], [ %.promoted, %.preheader158.i.preheader ] ; 2 uses
  %indvars.iv.i45 = phi i64 [ %indvars.iv.next.i48, %._crit_edge.i47 ], [ 0, %.preheader158.i.preheader ] ; 2 uses
  %i.uf = mul i64 %indvars.iv.i45, %3
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.uf ; 3 uses
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !66 ; 2 uses
  %i.ui = fcmp fast olt float %i.ue, %i.uh
  %i.uj = select i1 %i.ui, float %i.uh, float %i.ue ; 2 uses
  store float %i.uj, ptr %5, align 4, !tbaa !66
  br i1 %exitcond.not.i46, label %._crit_edge.i47, label %bb.j

bb.j:                                             ; preds = %.preheader158.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  %i.ul = load float, ptr %i.ub, align 4, !tbaa !66 ; 2 uses
  %i.um = load float, ptr %i.uk, align 4, !tbaa !66 ; 2 uses
  %i.un = fcmp fast olt float %i.ul, %i.um
  %i.uo = select i1 %i.un, float %i.um, float %i.ul
  store float %i.uo, ptr %i.ub, align 4, !tbaa !66
  br i1 %exitcond.not.i46.1, label %._crit_edge.i47, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.up = getelementptr inbounds nuw i8, ptr %i.ug, i64 8
  %i.uq = load float, ptr %i.uc, align 4, !tbaa !66 ; 2 uses
  %i.ur = load float, ptr %i.up, align 4, !tbaa !66 ; 2 uses
  %i.us = fcmp fast olt float %i.uq, %i.ur
  %i.ut = select i1 %i.us, float %i.ur, float %i.uq
  store float %i.ut, ptr %i.uc, align 4, !tbaa !66
  br label %._crit_edge.i47

._crit_edge.i47:                                  ; preds = %bb.k, %bb.j, %.preheader158.i
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %exitcond224.not.i = icmp eq i64 %indvars.iv.next.i48, %wide.trip.count229.i
  br i1 %exitcond224.not.i, label %.lr.ph186.i, label %.preheader158.i, !llvm.loop !6

.preheader155.i:                                  ; preds = %._crit_edge184.i, %bb.h
  br i1 %i.b, label %.lr.ph189.i.preheader, label %.preheader154.i

.lr.ph189.i.preheader:                            ; preds = %.preheader155.i
  %i.uu = add nsw i32 %4, -4                      ; 2 uses
  %i.uv = lshr i32 %i.uu, 2                       ; 2 uses
  %i.uw = add nuw nsw i32 %i.uv, 1                ; 2 uses
  %i.ux = icmp eq i32 %i.uv, 0
  br i1 %i.ux, label %.lr.ph189.i.epil.preheader, label %.lr.ph189.i.preheader.new

.lr.ph189.i.preheader.new:                        ; preds = %.lr.ph189.i.preheader
  %unroll_iter305 = and i32 %i.uw, 2147483646
  br label %.lr.ph189.i

bb.l:                                             ; preds = %._crit_edge184.i, %.lr.ph186.i
  %indvars.iv232.i = phi i64 [ 0, %.lr.ph186.i ], [ %indvars.iv.next233.i, %._crit_edge184.i ] ; 2 uses
  %i.uy = mul i64 %indvars.iv232.i, %3
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.uy ; 2 uses
  br i1 %i.b, label %.lr.ph.i43, label %.preheader156.i

.preheader156.i:                                  ; preds = %.lr.ph.i43, %bb.l
  %.0120.lcssa.i = phi ptr [ %i.uz, %bb.l ], [ %i.xp, %.lr.ph.i43 ] ; 7 uses
  %.0118.lcssa.i = phi ptr [ %5, %bb.l ], [ %i.xq, %.lr.ph.i43 ] ; 7 uses
  %.0116.lcssa.i = phi ptr [ %6, %bb.l ], [ %i.xr, %.lr.ph.i43 ] ; 7 uses
  %.0114.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.ud, %.lr.ph.i43 ] ; 6 uses
  %i.va = icmp slt i32 %.0114.lcssa.i, %4
  br i1 %i.va, label %.lr.ph183.i.preheader, label %._crit_edge184.i

.lr.ph183.i.preheader:                            ; preds = %.preheader156.i
  %i.vb = xor i32 %.0114.lcssa.i, -1
  %i.vc = add i32 %4, %i.vb                       ; 2 uses
  %i.vd = zext i32 %i.vc to i64
  %i.ve = add nuw nsw i64 %i.vd, 1                ; 2 uses
  %min.iters.check191 = icmp ult i32 %i.vc, 3
  br i1 %min.iters.check191, label %.lr.ph183.i.preheader276, label %vector.memcheck173

vector.memcheck173:                               ; preds = %.lr.ph183.i.preheader
  %scevgep174 = getelementptr i8, ptr %.0120.lcssa.i, i64 4
  %i.vf = xor i32 %.0114.lcssa.i, -1
  %i.vg = add i32 %4, %i.vf
  %i.vh = zext i32 %i.vg to i64
  %i.vi = shl nuw nsw i64 %i.vh, 2                ; 3 uses
  %scevgep175 = getelementptr i8, ptr %scevgep174, i64 %i.vi ; 2 uses
  %scevgep176 = getelementptr i8, ptr %.0116.lcssa.i, i64 4
  %scevgep177 = getelementptr i8, ptr %scevgep176, i64 %i.vi ; 2 uses
  %scevgep178 = getelementptr i8, ptr %.0118.lcssa.i, i64 4
  %scevgep179 = getelementptr i8, ptr %scevgep178, i64 %i.vi ; 2 uses
  %bound0180 = icmp ult ptr %.0120.lcssa.i, %scevgep177
  %bound1181 = icmp ult ptr %.0116.lcssa.i, %scevgep175
  %found.conflict182 = and i1 %bound0180, %bound1181
  %bound0183 = icmp ult ptr %.0120.lcssa.i, %scevgep179
  %bound1184 = icmp ult ptr %.0118.lcssa.i, %scevgep175
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx = or i1 %found.conflict182, %found.conflict185
  %bound0186 = icmp ult ptr %.0116.lcssa.i, %scevgep179
  %bound1187 = icmp ult ptr %.0118.lcssa.i, %scevgep177
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx, %found.conflict188
  br i1 %conflict.rdx189, label %.lr.ph183.i.preheader276, label %vector.ph192

vector.ph192:                                     ; preds = %vector.memcheck173
  %n.vec193 = and i64 %i.ve, 8589934588           ; 4 uses
  %i.vj = trunc i64 %n.vec193 to i32
  %i.vk = add i32 %.0114.lcssa.i, %i.vj
  %i.vl = shl nuw nsw i64 %n.vec193, 2            ; 3 uses
  %i.vm = getelementptr i8, ptr %.0116.lcssa.i, i64 %i.vl
  %i.vn = getelementptr i8, ptr %.0118.lcssa.i, i64 %i.vl
  %i.vo = getelementptr i8, ptr %.0120.lcssa.i, i64 %i.vl
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next202, %vector.body194 ] ; 2 uses
  %i.vp = shl i64 %index195, 2                    ; 3 uses
  %next.gep196 = getelementptr i8, ptr %.0116.lcssa.i, i64 %i.vp ; 2 uses
  %next.gep197 = getelementptr i8, ptr %.0118.lcssa.i, i64 %i.vp
  %next.gep198 = getelementptr i8, ptr %.0120.lcssa.i, i64 %i.vp ; 2 uses
  %wide.load199 = load <4 x float>, ptr %next.gep198, align 4, !tbaa !66, !alias.scope !146, !noalias !147
  %wide.load200 = load <4 x float>, ptr %next.gep197, align 4, !tbaa !66, !alias.scope !148
  %i.vq = fsub fast <4 x float> %wide.load199, %wide.load200
  %i.vr = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.vq) ; 2 uses
  store <4 x float> %i.vr, ptr %next.gep198, align 4, !tbaa !66, !alias.scope !146, !noalias !147
  %wide.load201 = load <4 x float>, ptr %next.gep196, align 4, !tbaa !66, !alias.scope !149, !noalias !148
  %i.vs = fadd fast <4 x float> %wide.load201, %i.vr
  store <4 x float> %i.vs, ptr %next.gep196, align 4, !tbaa !66, !alias.scope !149, !noalias !148
  %index.next202 = add nuw i64 %index195, 4       ; 2 uses
  %i.vt = icmp eq i64 %index.next202, %n.vec193
  br i1 %i.vt, label %middle.block203, label %vector.body194, !llvm.loop !133

middle.block203:                                  ; preds = %vector.body194
  %cmp.n204 = icmp eq i64 %i.ve, %n.vec193
  br i1 %cmp.n204, label %._crit_edge184.i, label %.lr.ph183.i.preheader276

.lr.ph183.i.preheader276:                         ; preds = %vector.memcheck173, %.lr.ph183.i.preheader, %middle.block203
  %.1115182.i.ph = phi i32 [ %.0114.lcssa.i, %vector.memcheck173 ], [ %.0114.lcssa.i, %.lr.ph183.i.preheader ], [ %i.vk, %middle.block203 ] ; 4 uses
  %.1117181.i.ph = phi ptr [ %.0116.lcssa.i, %vector.memcheck173 ], [ %.0116.lcssa.i, %.lr.ph183.i.preheader ], [ %i.vm, %middle.block203 ] ; 4 uses
  %.1119180.i.ph = phi ptr [ %.0118.lcssa.i, %vector.memcheck173 ], [ %.0118.lcssa.i, %.lr.ph183.i.preheader ], [ %i.vn, %middle.block203 ] ; 3 uses
  %.1121179.i.ph = phi ptr [ %.0120.lcssa.i, %vector.memcheck173 ], [ %.0120.lcssa.i, %.lr.ph183.i.preheader ], [ %i.vo, %middle.block203 ] ; 4 uses
  %i.vu = sub i32 %4, %.1115182.i.ph
  %.neg330 = add i32 %.1115182.i.ph, 1
  %xtraiter298 = and i32 %i.vu, 1
  %lcmp.mod299.not = icmp eq i32 %xtraiter298, 0
  br i1 %lcmp.mod299.not, label %.lr.ph183.i.prol.loopexit, label %.lr.ph183.i.prol

.lr.ph183.i.prol:                                 ; preds = %.lr.ph183.i.preheader276
  %i.vv = load float, ptr %.1121179.i.ph, align 4, !tbaa !66
  %i.vw = load float, ptr %.1119180.i.ph, align 4, !tbaa !66
  %i.vx = fsub fast float %i.vv, %i.vw
  %i.vy = tail call fast float @llvm.exp.f32(float %i.vx) ; 2 uses
  store float %i.vy, ptr %.1121179.i.ph, align 4, !tbaa !66
  %i.vz = load float, ptr %.1117181.i.ph, align 4, !tbaa !66
  %i.wa = fadd fast float %i.vz, %i.vy
  store float %i.wa, ptr %.1117181.i.ph, align 4, !tbaa !66
  %i.wb = getelementptr inbounds nuw i8, ptr %.1121179.i.ph, i64 4
  %i.wc = getelementptr inbounds nuw i8, ptr %.1119180.i.ph, i64 4
  %i.wd = getelementptr inbounds nuw i8, ptr %.1117181.i.ph, i64 4
  %i.we = add nuw nsw i32 %.1115182.i.ph, 1
  br label %.lr.ph183.i.prol.loopexit

.lr.ph183.i.prol.loopexit:                        ; preds = %.lr.ph183.i.prol, %.lr.ph183.i.preheader276
  %.1115182.i.unr = phi i32 [ %.1115182.i.ph, %.lr.ph183.i.preheader276 ], [ %i.we, %.lr.ph183.i.prol ]
  %.1117181.i.unr = phi ptr [ %.1117181.i.ph, %.lr.ph183.i.preheader276 ], [ %i.wd, %.lr.ph183.i.prol ]
  %.1119180.i.unr = phi ptr [ %.1119180.i.ph, %.lr.ph183.i.preheader276 ], [ %i.wc, %.lr.ph183.i.prol ]
  %.1121179.i.unr = phi ptr [ %.1121179.i.ph, %.lr.ph183.i.preheader276 ], [ %i.wb, %.lr.ph183.i.prol ]
  %i.wf = icmp eq i32 %4, %.neg330
  br i1 %i.wf, label %._crit_edge184.i, label %.lr.ph183.i

.lr.ph.i43:                                       ; preds = %bb.l, %.lr.ph.i43
  %.0114174.i = phi i32 [ %i.xs, %.lr.ph.i43 ], [ 0, %bb.l ]
  %.0116173.i = phi ptr [ %i.xr, %.lr.ph.i43 ], [ %6, %bb.l ] ; 3 uses
  %.0118172.i = phi ptr [ %i.xq, %.lr.ph.i43 ], [ %5, %bb.l ] ; 2 uses
  %.0120171.i = phi ptr [ %i.xp, %.lr.ph.i43 ], [ %i.uz, %bb.l ] ; 3 uses
  %i.wg = load <4 x float>, ptr %.0120171.i, align 1, !tbaa !63
  %i.wh = load <4 x float>, ptr %.0118172.i, align 1, !tbaa !63
  %i.wi = load <4 x float>, ptr %.0116173.i, align 1, !tbaa !63
  %i.wj = fsub fast <4 x float> %i.wg, %i.wh
  %i.wk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.wj, <4 x float> splat (float f0x42B0C0A5))
  %i.wl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wk, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.wm = fmul fast <4 x float> %i.wl, splat (float f0x3FB8AA3B)
  %i.wn = fadd fast <4 x float> %i.wm, splat (float 5.000000e-01) ; 2 uses
  %i.wo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wn)
  %i.wp = sitofp fast <4 x i32> %i.wo to <4 x float> ; 2 uses
  %i.wq = fcmp fast olt <4 x float> %i.wn, %i.wp
  %i.wr = select <4 x i1> %i.wq, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ws = fsub fast <4 x float> %i.wp, %i.wr      ; 2 uses
  %i.wt = fmul fast <4 x float> %i.ws, splat (float f0x3F317218)
  %i.wu = fsub fast <4 x float> %i.wl, %i.wt      ; 8 uses
  %i.wv = fmul fast <4 x float> %i.wu, %i.wu
  %i.ww = fmul fast <4 x float> %i.wu, splat (float f0x39506967)
  %i.wx = fadd fast <4 x float> %i.ww, splat (float f0x3AB743CE)
  %i.wy = fmul fast <4 x float> %i.wx, %i.wu
  %i.wz = fadd fast <4 x float> %i.wy, splat (float f0x3C088908)
  %i.xa = fmul fast <4 x float> %i.wz, %i.wu
  %i.xb = fadd fast <4 x float> %i.xa, splat (float f0x3D2AA9C1)
  %i.xc = fmul fast <4 x float> %i.xb, %i.wu
  %i.xd = fadd fast <4 x float> %i.xc, splat (float f0x3E2AAAAA)
  %i.xe = fmul fast <4 x float> %i.xd, %i.wu
  %i.xf = fadd fast <4 x float> %i.xe, splat (float 5.000000e-01)
  %i.xg = fmul fast <4 x float> %i.wv, %i.xf
  %i.xh = fadd fast <4 x float> %i.wu, splat (float 1.000000e+00)
  %i.xi = fadd fast <4 x float> %i.xh, %i.xg
  %i.xj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ws)
  %i.xk = shl <4 x i32> %i.xj, splat (i32 23)
  %i.xl = add <4 x i32> %i.xk, splat (i32 1065353216)
  %i.xm = bitcast <4 x i32> %i.xl to <4 x float>
  %i.xn = fmul fast <4 x float> %i.xi, %i.xm      ; 2 uses
  store <4 x float> %i.xn, ptr %.0120171.i, align 1, !tbaa !63
  %i.xo = fadd fast <4 x float> %i.xn, %i.wi
  store <4 x float> %i.xo, ptr %.0116173.i, align 1, !tbaa !63
  %i.xp = getelementptr inbounds nuw i8, ptr %.0120171.i, i64 16 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.0118172.i, i64 16 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.0116173.i, i64 16 ; 2 uses
  %i.xs = add nuw nsw i32 %.0114174.i, 4          ; 2 uses
  %i.xt = or disjoint i32 %i.xs, 3
  %i.xu = icmp slt i32 %i.xt, %4
  br i1 %i.xu, label %.lr.ph.i43, label %.preheader156.i, !llvm.loop !7

.lr.ph183.i:                                      ; preds = %.lr.ph183.i.prol.loopexit, %.lr.ph183.i
  %.1115182.i = phi i32 [ %i.yn, %.lr.ph183.i ], [ %.1115182.i.unr, %.lr.ph183.i.prol.loopexit ]
  %.1117181.i = phi ptr [ %i.ym, %.lr.ph183.i ], [ %.1117181.i.unr, %.lr.ph183.i.prol.loopexit ] ; 4 uses
  %.1119180.i = phi ptr [ %i.yl, %.lr.ph183.i ], [ %.1119180.i.unr, %.lr.ph183.i.prol.loopexit ] ; 3 uses
  %.1121179.i = phi ptr [ %i.yk, %.lr.ph183.i ], [ %.1121179.i.unr, %.lr.ph183.i.prol.loopexit ] ; 4 uses
  %i.xv = load float, ptr %.1121179.i, align 4, !tbaa !66
  %i.xw = load float, ptr %.1119180.i, align 4, !tbaa !66
  %i.xx = fsub fast float %i.xv, %i.xw
  %i.xy = tail call fast float @llvm.exp.f32(float %i.xx) ; 2 uses
  store float %i.xy, ptr %.1121179.i, align 4, !tbaa !66
  %i.xz = load float, ptr %.1117181.i, align 4, !tbaa !66
  %i.ya = fadd fast float %i.xz, %i.xy
  store float %i.ya, ptr %.1117181.i, align 4, !tbaa !66
  %i.yb = getelementptr inbounds nuw i8, ptr %.1121179.i, i64 4 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.1119180.i, i64 4
  %i.yd = getelementptr inbounds nuw i8, ptr %.1117181.i, i64 4 ; 2 uses
  %i.ye = load float, ptr %i.yb, align 4, !tbaa !66
  %i.yf = load float, ptr %i.yc, align 4, !tbaa !66
  %i.yg = fsub fast float %i.ye, %i.yf
  %i.yh = tail call fast float @llvm.exp.f32(float %i.yg) ; 2 uses
  store float %i.yh, ptr %i.yb, align 4, !tbaa !66
  %i.yi = load float, ptr %i.yd, align 4, !tbaa !66
  %i.yj = fadd fast float %i.yi, %i.yh
  store float %i.yj, ptr %i.yd, align 4, !tbaa !66
  %i.yk = getelementptr inbounds nuw i8, ptr %.1121179.i, i64 8
  %i.yl = getelementptr inbounds nuw i8, ptr %.1119180.i, i64 8
  %i.ym = getelementptr inbounds nuw i8, ptr %.1117181.i, i64 8
  %i.yn = add nuw nsw i32 %.1115182.i, 2          ; 2 uses
  %exitcond231.not.i.1 = icmp eq i32 %i.yn, %4
  br i1 %exitcond231.not.i.1, label %._crit_edge184.i, label %.lr.ph183.i, !llvm.loop !134

._crit_edge184.i:                                 ; preds = %.lr.ph183.i.prol.loopexit, %.lr.ph183.i, %middle.block203, %.preheader156.i
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count229.i
  br i1 %exitcond236.not.i, label %.preheader155.i, label %bb.l, !llvm.loop !8

.preheader154.loopexit.i.unr-lcssa:               ; preds = %.lr.ph189.i
  %i.yo = and i32 %i.uu, 4
  %lcmp.mod302.not.not = icmp eq i32 %i.yo, 0
  br i1 %lcmp.mod302.not.not, label %.lr.ph189.i.epil.preheader, label %.preheader154.loopexit.i

.lr.ph189.i.epil.preheader:                       ; preds = %.preheader154.loopexit.i.unr-lcssa, %.lr.ph189.i.preheader
  %.0107187.i.epil.init = phi ptr [ %6, %.lr.ph189.i.preheader ], [ %i.zt, %.preheader154.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod304 = trunc i32 %i.uw to i1
  tail call void @llvm.assume(i1 %lcmp.mod304)
  %i.yp = load <4 x float>, ptr %.0107187.i.epil.init, align 1, !tbaa !63 ; 2 uses
  %i.yq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.yp) ; 2 uses
  %i.yr = fmul fast <4 x float> %i.yq, %i.yp
  %i.ys = fsub fast <4 x float> splat (float 2.000000e+00), %i.yr
  %i.yt = fmul fast <4 x float> %i.ys, %i.yq
  store <4 x float> %i.yt, ptr %.0107187.i.epil.init, align 1, !tbaa !63
  %i.yu = getelementptr inbounds nuw i8, ptr %.0107187.i.epil.init, i64 16
  br label %.preheader154.loopexit.i

.preheader154.loopexit.i:                         ; preds = %.preheader154.loopexit.i.unr-lcssa, %.lr.ph189.i.epil.preheader
  %.lcssa275 = phi ptr [ %i.zt, %.preheader154.loopexit.i.unr-lcssa ], [ %i.yu, %.lr.ph189.i.epil.preheader ]
  %i.yv = and i32 %4, 2147483644
  br label %.preheader154.i

.preheader154.i:                                  ; preds = %.preheader154.loopexit.i, %.preheader155.i
  %.0107.lcssa.i = phi ptr [ %6, %.preheader155.i ], [ %.lcssa275, %.preheader154.loopexit.i ] ; 3 uses
  %.0105.lcssa.i = phi i32 [ 0, %.preheader155.i ], [ %i.yv, %.preheader154.loopexit.i ] ; 4 uses
  %i.yw = icmp slt i32 %.0105.lcssa.i, %4
  br i1 %i.yw, label %.lr.ph194.i.preheader, label %.preheader153.i

.lr.ph194.i.preheader:                            ; preds = %.preheader154.i
  %i.yx = xor i32 %.0105.lcssa.i, -1
  %i.yy = add i32 %4, %i.yx                       ; 2 uses
  %i.yz = zext i32 %i.yy to i64
  %i.za = add nuw nsw i64 %i.yz, 1                ; 2 uses
  %min.iters.check210 = icmp ult i32 %i.yy, 3
  br i1 %min.iters.check210, label %.lr.ph194.i.preheader274, label %vector.ph211

vector.ph211:                                     ; preds = %.lr.ph194.i.preheader
  %n.vec212 = and i64 %i.za, 8589934588           ; 4 uses
  %i.zb = trunc i64 %n.vec212 to i32
  %i.zc = add i32 %.0105.lcssa.i, %i.zb
  %i.zd = shl nuw nsw i64 %n.vec212, 2
  %i.ze = getelementptr i8, ptr %.0107.lcssa.i, i64 %i.zd
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph211
  %index214 = phi i64 [ 0, %vector.ph211 ], [ %index.next217, %vector.body213 ] ; 2 uses
  %i.zf = shl i64 %index214, 2
  %next.gep215 = getelementptr i8, ptr %.0107.lcssa.i, i64 %i.zf ; 2 uses
  %wide.load216 = load <4 x float>, ptr %next.gep215, align 4, !tbaa !66
  %i.zg = fdiv fast <4 x float> splat (float 1.000000e+00), %wide.load216
  store <4 x float> %i.zg, ptr %next.gep215, align 4, !tbaa !66
  %index.next217 = add nuw i64 %index214, 4       ; 2 uses
  %i.zh = icmp eq i64 %index.next217, %n.vec212
  br i1 %i.zh, label %middle.block218, label %vector.body213, !llvm.loop !135

middle.block218:                                  ; preds = %vector.body213
  %cmp.n219 = icmp eq i64 %i.za, %n.vec212
  br i1 %cmp.n219, label %.preheader153.i, label %.lr.ph194.i.preheader274

.lr.ph194.i.preheader274:                         ; preds = %.lr.ph194.i.preheader, %middle.block218
  %.1106193.i.ph = phi i32 [ %.0105.lcssa.i, %.lr.ph194.i.preheader ], [ %i.zc, %middle.block218 ]
  %.1108192.i.ph = phi ptr [ %.0107.lcssa.i, %.lr.ph194.i.preheader ], [ %i.ze, %middle.block218 ]
  br label %.lr.ph194.i

.lr.ph189.i:                                      ; preds = %.lr.ph189.i, %.lr.ph189.i.preheader.new
  %.0107187.i = phi ptr [ %6, %.lr.ph189.i.preheader.new ], [ %i.zt, %.lr.ph189.i ] ; 4 uses
  %niter306 = phi i32 [ 0, %.lr.ph189.i.preheader.new ], [ %niter306.next.1, %.lr.ph189.i ]
  %i.zi = load <4 x float>, ptr %.0107187.i, align 1, !tbaa !63 ; 2 uses
  %i.zj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.zi) ; 2 uses
  %i.zk = fmul fast <4 x float> %i.zj, %i.zi
  %i.zl = fsub fast <4 x float> splat (float 2.000000e+00), %i.zk
  %i.zm = fmul fast <4 x float> %i.zl, %i.zj
  store <4 x float> %i.zm, ptr %.0107187.i, align 1, !tbaa !63
  %i.zn = getelementptr inbounds nuw i8, ptr %.0107187.i, i64 16 ; 2 uses
  %i.zo = load <4 x float>, ptr %i.zn, align 1, !tbaa !63 ; 2 uses
  %i.zp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.zo) ; 2 uses
  %i.zq = fmul fast <4 x float> %i.zp, %i.zo
  %i.zr = fsub fast <4 x float> splat (float 2.000000e+00), %i.zq
  %i.zs = fmul fast <4 x float> %i.zr, %i.zp
  store <4 x float> %i.zs, ptr %i.zn, align 1, !tbaa !63
  %i.zt = getelementptr inbounds nuw i8, ptr %.0107187.i, i64 32 ; 3 uses
  %niter306.next.1 = add i32 %niter306, 2         ; 2 uses
  %niter306.ncmp.1.not = icmp eq i32 %niter306.next.1, %unroll_iter305
  br i1 %niter306.ncmp.1.not, label %.preheader154.loopexit.i.unr-lcssa, label %.lr.ph189.i, !llvm.loop !9

.preheader153.i:                                  ; preds = %.lr.ph194.i, %middle.block218, %.preheader154.i
  br i1 %i.qx, label %.lr.ph209.i, label %_ZN4ncnnL13softmax_pack4EPfimiS0_S0_.exit

.lr.ph209.i:                                      ; preds = %.preheader153.i
  %i.zu = and i32 %4, -4                          ; 2 uses
  %wide.trip.count242.i = zext nneg i32 %1 to i64
  %i.zv = add i32 %4, -4                          ; 2 uses
  %i.zw = lshr i32 %i.zv, 2
  %i.zx = add nuw nsw i32 %i.zw, 1                ; 2 uses
  %xtraiter307 = and i32 %i.zx, 3                 ; 3 uses
  %i.zy = icmp ult i32 %i.zv, 12
  %unroll_iter313 = and i32 %i.zx, 2147483644
  %lcmp.mod309.not = icmp eq i32 %xtraiter307, 0
  %lcmp.mod312 = icmp ne i32 %xtraiter307, 0
  br label %bb.m

.lr.ph194.i:                                      ; preds = %.lr.ph194.i.preheader274, %.lr.ph194.i
  %.1106193.i = phi i32 [ %i.aac, %.lr.ph194.i ], [ %.1106193.i.ph, %.lr.ph194.i.preheader274 ]
  %.1108192.i = phi ptr [ %i.aab, %.lr.ph194.i ], [ %.1108192.i.ph, %.lr.ph194.i.preheader274 ] ; 3 uses
  %i.zz = load float, ptr %.1108192.i, align 4, !tbaa !66
  %i.aaa = fdiv fast float 1.000000e+00, %i.zz
  store float %i.aaa, ptr %.1108192.i, align 4, !tbaa !66
  %i.aab = getelementptr inbounds nuw i8, ptr %.1108192.i, i64 4
  %i.aac = add nuw nsw i32 %.1106193.i, 1         ; 2 uses
  %exitcond237.not.i = icmp eq i32 %i.aac, %4
  br i1 %exitcond237.not.i, label %.preheader153.i, label %.lr.ph194.i, !llvm.loop !136

bb.m:                                             ; preds = %._crit_edge207.i, %.lr.ph209.i
  %indvars.iv239.i = phi i64 [ 0, %.lr.ph209.i ], [ %indvars.iv.next240.i, %._crit_edge207.i ] ; 2 uses
  %i.aad = mul i64 %indvars.iv239.i, %3
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aad ; 3 uses
  br i1 %i.b, label %.lr.ph199.i.preheader, label %.preheader.i42

.lr.ph199.i.preheader:                            ; preds = %bb.m
  br i1 %i.zy, label %.lr.ph199.i.epil.preheader, label %.lr.ph199.i

.preheader.i42.loopexit.unr-lcssa:                ; preds = %.lr.ph199.i
  br i1 %lcmp.mod309.not, label %.preheader.i42, label %.lr.ph199.i.epil.preheader

.lr.ph199.i.epil.preheader:                       ; preds = %.preheader.i42.loopexit.unr-lcssa, %.lr.ph199.i.preheader
  %.0100196.i.epil.init = phi ptr [ %6, %.lr.ph199.i.preheader ], [ %i.acg, %.preheader.i42.loopexit.unr-lcssa ]
  %.0102195.i.epil.init = phi ptr [ %i.aae, %.lr.ph199.i.preheader ], [ %i.acf, %.preheader.i42.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod312)
  br label %.lr.ph199.i.epil

.lr.ph199.i.epil:                                 ; preds = %.lr.ph199.i.epil, %.lr.ph199.i.epil.preheader
  %.0100196.i.epil = phi ptr [ %i.aaj, %.lr.ph199.i.epil ], [ %.0100196.i.epil.init, %.lr.ph199.i.epil.preheader ] ; 2 uses
  %.0102195.i.epil = phi ptr [ %i.aai, %.lr.ph199.i.epil ], [ %.0102195.i.epil.init, %.lr.ph199.i.epil.preheader ] ; 3 uses
  %epil.iter308 = phi i32 [ %epil.iter308.next, %.lr.ph199.i.epil ], [ 0, %.lr.ph199.i.epil.preheader ]
  %i.aaf = load <4 x float>, ptr %.0102195.i.epil, align 1, !tbaa !63
  %i.aag = load <4 x float>, ptr %.0100196.i.epil, align 1, !tbaa !63
  %i.aah = fmul fast <4 x float> %i.aag, %i.aaf
  store <4 x float> %i.aah, ptr %.0102195.i.epil, align 1, !tbaa !63
  %i.aai = getelementptr inbounds nuw i8, ptr %.0102195.i.epil, i64 16 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %.0100196.i.epil, i64 16 ; 2 uses
  %epil.iter308.next = add i32 %epil.iter308, 1   ; 2 uses
  %epil.iter308.cmp.not = icmp eq i32 %epil.iter308.next, %xtraiter307
  br i1 %epil.iter308.cmp.not, label %.preheader.i42, label %.lr.ph199.i.epil, !llvm.loop !137

.preheader.i42:                                   ; preds = %.preheader.i42.loopexit.unr-lcssa, %.lr.ph199.i.epil, %bb.m
  %.0102.lcssa.i = phi ptr [ %i.aae, %bb.m ], [ %i.acf, %.preheader.i42.loopexit.unr-lcssa ], [ %i.aai, %.lr.ph199.i.epil ] ; 6 uses
  %.0100.lcssa.i = phi ptr [ %6, %bb.m ], [ %i.acg, %.preheader.i42.loopexit.unr-lcssa ], [ %i.aaj, %.lr.ph199.i.epil ] ; 6 uses
end_hunk_3
begin_hunk_4_@_ZNK4ncnn11Softmax_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.3:bb.a
  %i.fu = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %.promoted = load float, ptr %i.av, align 4, !tbaa !66
  br label %.preheader158.i.i

.lr.ph186.i.i:                                    ; preds = %._crit_edge.i47.i, %._crit_edge.us.i51.i, %.lr.ph170.split.i.i
  %i.fv = and i32 %i.aw, -4
  br label %bb.e

.preheader158.i.i:                                ; preds = %.preheader158.i.i.preheader, %._crit_edge.i47.i
  %i.fw = phi float [ %i.gb, %._crit_edge.i47.i ], [ %.promoted, %.preheader158.i.i.preheader ] ; 2 uses
  %indvars.iv.i45.i = phi i64 [ %indvars.iv.next.i48.i, %._crit_edge.i47.i ], [ 0, %.preheader158.i.i.preheader ] ; 2 uses
  %i.fx = mul nuw nsw i64 %indvars.iv.i45.i, %i.ax
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.fx ; 3 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !66 ; 2 uses
  %i.ga = fcmp fast olt float %i.fw, %i.fz
  %i.gb = select i1 %i.ga, float %i.fz, float %i.fw ; 2 uses
  store float %i.gb, ptr %i.av, align 4, !tbaa !66
  br i1 %exitcond.not.i46.i, label %._crit_edge.i47.i, label %bb.c

bb.c:                                             ; preds = %.preheader158.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.gd = load float, ptr %i.ft, align 4, !tbaa !66 ; 2 uses
  %i.ge = load float, ptr %i.gc, align 4, !tbaa !66 ; 2 uses
  %i.gf = fcmp fast olt float %i.gd, %i.ge
  %i.gg = select i1 %i.gf, float %i.ge, float %i.gd
  store float %i.gg, ptr %i.ft, align 4, !tbaa !66
  br i1 %exitcond.not.i46.i.1, label %._crit_edge.i47.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gi = load float, ptr %i.fu, align 4, !tbaa !66 ; 2 uses
  %i.gj = load float, ptr %i.gh, align 4, !tbaa !66 ; 2 uses
  %i.gk = fcmp fast olt float %i.gi, %i.gj
  %i.gl = select i1 %i.gk, float %i.gj, float %i.gi
  store float %i.gl, ptr %i.fu, align 4, !tbaa !66
  br label %._crit_edge.i47.i

._crit_edge.i47.i:                                ; preds = %bb.d, %bb.c, %.preheader158.i.i
  %indvars.iv.next.i48.i = add nuw nsw i64 %indvars.iv.i45.i, 1 ; 2 uses
  %exitcond224.not.i.i = icmp eq i64 %indvars.iv.next.i48.i, %wide.trip.count229.i.i
  br i1 %exitcond224.not.i.i, label %.lr.ph186.i.i, label %.preheader158.i.i, !llvm.loop !6

.preheader155.i.i:                                ; preds = %._crit_edge184.i.i, %._crit_edge.i
  br i1 %i.ba, label %.lr.ph189.i.i.preheader, label %.preheader154.i.i

.lr.ph189.i.i.preheader:                          ; preds = %.preheader155.i.i
  %i.gm = add nsw i32 %i.aw, -4                   ; 2 uses
  %i.gn = lshr i32 %i.gm, 2                       ; 2 uses
  %i.go = add nuw nsw i32 %i.gn, 1                ; 2 uses
  %i.gp = icmp eq i32 %i.gn, 0
  br i1 %i.gp, label %.lr.ph189.i.i.epil.preheader, label %.lr.ph189.i.i.preheader.new

.lr.ph189.i.i.preheader.new:                      ; preds = %.lr.ph189.i.i.preheader
  %unroll_iter262 = and i32 %i.go, 2147483646
  br label %.lr.ph189.i.i

bb.e:                                             ; preds = %._crit_edge184.i.i, %.lr.ph186.i.i
  %indvars.iv232.i.i = phi i64 [ 0, %.lr.ph186.i.i ], [ %indvars.iv.next233.i.i, %._crit_edge184.i.i ] ; 2 uses
  %i.gq = mul i64 %indvars.iv232.i.i, %i.ax
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.gq ; 2 uses
  br i1 %i.ba, label %.lr.ph.i43.i, label %.preheader156.i.i

.preheader156.i.i:                                ; preds = %.lr.ph.i43.i, %bb.e
  %.0120.lcssa.i.i = phi ptr [ %i.gr, %bb.e ], [ %i.jh, %.lr.ph.i43.i ] ; 7 uses
  %.0118.lcssa.i.i = phi ptr [ %i.av, %bb.e ], [ %i.ji, %.lr.ph.i43.i ] ; 7 uses
  %.0116.lcssa.i.i = phi ptr [ %i.ay, %bb.e ], [ %i.jj, %.lr.ph.i43.i ] ; 7 uses
  %.0114.lcssa.i.i = phi i32 [ 0, %bb.e ], [ %i.fv, %.lr.ph.i43.i ] ; 6 uses
  %i.gs = icmp slt i32 %.0114.lcssa.i.i, %i.aw
  br i1 %i.gs, label %.lr.ph183.i.i.preheader, label %._crit_edge184.i.i

.lr.ph183.i.i.preheader:                          ; preds = %.preheader156.i.i
  %i.gt = xor i32 %.0114.lcssa.i.i, -1
  %i.gu = add i32 %i.aw, %i.gt                    ; 2 uses
  %i.gv = zext i32 %i.gu to i64
  %i.gw = add nuw nsw i64 %i.gv, 1                ; 2 uses
  %min.iters.check173 = icmp ult i32 %i.gu, 3
  br i1 %min.iters.check173, label %.lr.ph183.i.i.preheader228, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph183.i.i.preheader
  %scevgep156 = getelementptr i8, ptr %.0120.lcssa.i.i, i64 4
  %i.gx = xor i32 %.0114.lcssa.i.i, -1
  %i.gy = add i32 %i.aw, %i.gx
  %i.gz = zext i32 %i.gy to i64
  %i.ha = shl nuw nsw i64 %i.gz, 2                ; 3 uses
  %scevgep157 = getelementptr i8, ptr %scevgep156, i64 %i.ha ; 2 uses
  %scevgep158 = getelementptr i8, ptr %.0116.lcssa.i.i, i64 4
  %scevgep159 = getelementptr i8, ptr %scevgep158, i64 %i.ha ; 2 uses
  %scevgep160 = getelementptr i8, ptr %.0118.lcssa.i.i, i64 4
  %scevgep161 = getelementptr i8, ptr %scevgep160, i64 %i.ha ; 2 uses
  %bound0162 = icmp ult ptr %.0120.lcssa.i.i, %scevgep159
  %bound1163 = icmp ult ptr %.0116.lcssa.i.i, %scevgep157
  %found.conflict164 = and i1 %bound0162, %bound1163
  %bound0165 = icmp ult ptr %.0120.lcssa.i.i, %scevgep161
  %bound1166 = icmp ult ptr %.0118.lcssa.i.i, %scevgep157
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx = or i1 %found.conflict164, %found.conflict167
  %bound0168 = icmp ult ptr %.0116.lcssa.i.i, %scevgep161
  %bound1169 = icmp ult ptr %.0118.lcssa.i.i, %scevgep159
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx, %found.conflict170
  br i1 %conflict.rdx171, label %.lr.ph183.i.i.preheader228, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck155
  %n.vec175 = and i64 %i.gw, 8589934588           ; 4 uses
  %i.hb = trunc i64 %n.vec175 to i32
  %i.hc = add i32 %.0114.lcssa.i.i, %i.hb
  %i.hd = shl nuw nsw i64 %n.vec175, 2            ; 3 uses
  %i.he = getelementptr i8, ptr %.0116.lcssa.i.i, i64 %i.hd
  %i.hf = getelementptr i8, ptr %.0118.lcssa.i.i, i64 %i.hd
  %i.hg = getelementptr i8, ptr %.0120.lcssa.i.i, i64 %i.hd
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next184, %vector.body176 ] ; 2 uses
  %i.hh = shl i64 %index177, 2                    ; 3 uses
  %next.gep178 = getelementptr i8, ptr %.0116.lcssa.i.i, i64 %i.hh ; 2 uses
  %next.gep179 = getelementptr i8, ptr %.0118.lcssa.i.i, i64 %i.hh
  %next.gep180 = getelementptr i8, ptr %.0120.lcssa.i.i, i64 %i.hh ; 2 uses
  %wide.load181 = load <4 x float>, ptr %next.gep180, align 4, !tbaa !66, !alias.scope !188, !noalias !189
  %wide.load182 = load <4 x float>, ptr %next.gep179, align 4, !tbaa !66, !alias.scope !190
  %i.hi = fsub fast <4 x float> %wide.load181, %wide.load182
  %i.hj = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hi) ; 2 uses
  store <4 x float> %i.hj, ptr %next.gep180, align 4, !tbaa !66, !alias.scope !188, !noalias !189
  %wide.load183 = load <4 x float>, ptr %next.gep178, align 4, !tbaa !66, !alias.scope !191, !noalias !190
  %i.hk = fadd fast <4 x float> %wide.load183, %i.hj
  store <4 x float> %i.hk, ptr %next.gep178, align 4, !tbaa !66, !alias.scope !191, !noalias !190
  %index.next184 = add nuw i64 %index177, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next184, %n.vec175
  br i1 %i.hl, label %middle.block185, label %vector.body176, !llvm.loop !172

middle.block185:                                  ; preds = %vector.body176
  %cmp.n186 = icmp eq i64 %i.gw, %n.vec175
  br i1 %cmp.n186, label %._crit_edge184.i.i, label %.lr.ph183.i.i.preheader228

.lr.ph183.i.i.preheader228:                       ; preds = %vector.memcheck155, %.lr.ph183.i.i.preheader, %middle.block185
  %.1115182.i.i.ph = phi i32 [ %.0114.lcssa.i.i, %vector.memcheck155 ], [ %.0114.lcssa.i.i, %.lr.ph183.i.i.preheader ], [ %i.hc, %middle.block185 ] ; 4 uses
  %.1117181.i.i.ph = phi ptr [ %.0116.lcssa.i.i, %vector.memcheck155 ], [ %.0116.lcssa.i.i, %.lr.ph183.i.i.preheader ], [ %i.he, %middle.block185 ] ; 4 uses
  %.1119180.i.i.ph = phi ptr [ %.0118.lcssa.i.i, %vector.memcheck155 ], [ %.0118.lcssa.i.i, %.lr.ph183.i.i.preheader ], [ %i.hf, %middle.block185 ] ; 3 uses
  %.1121179.i.i.ph = phi ptr [ %.0120.lcssa.i.i, %vector.memcheck155 ], [ %.0120.lcssa.i.i, %.lr.ph183.i.i.preheader ], [ %i.hg, %middle.block185 ] ; 4 uses
  %i.hm = sub i32 %i.aw, %.1115182.i.i.ph
  %.neg274 = add i32 %.1115182.i.i.ph, 1
  %xtraiter255 = and i32 %i.hm, 1
  %lcmp.mod256.not = icmp eq i32 %xtraiter255, 0
  br i1 %lcmp.mod256.not, label %.lr.ph183.i.i.prol.loopexit, label %.lr.ph183.i.i.prol

.lr.ph183.i.i.prol:                               ; preds = %.lr.ph183.i.i.preheader228
  %i.hn = load float, ptr %.1121179.i.i.ph, align 4, !tbaa !66
  %i.ho = load float, ptr %.1119180.i.i.ph, align 4, !tbaa !66
  %i.hp = fsub fast float %i.hn, %i.ho
  %i.hq = call fast float @llvm.exp.f32(float %i.hp) ; 2 uses
  store float %i.hq, ptr %.1121179.i.i.ph, align 4, !tbaa !66
  %i.hr = load float, ptr %.1117181.i.i.ph, align 4, !tbaa !66
  %i.hs = fadd fast float %i.hr, %i.hq
  store float %i.hs, ptr %.1117181.i.i.ph, align 4, !tbaa !66
  %i.ht = getelementptr inbounds nuw i8, ptr %.1121179.i.i.ph, i64 4
  %i.hu = getelementptr inbounds nuw i8, ptr %.1119180.i.i.ph, i64 4
  %i.hv = getelementptr inbounds nuw i8, ptr %.1117181.i.i.ph, i64 4
  %i.hw = add nuw nsw i32 %.1115182.i.i.ph, 1
  br label %.lr.ph183.i.i.prol.loopexit

.lr.ph183.i.i.prol.loopexit:                      ; preds = %.lr.ph183.i.i.prol, %.lr.ph183.i.i.preheader228
  %.1115182.i.i.unr = phi i32 [ %.1115182.i.i.ph, %.lr.ph183.i.i.preheader228 ], [ %i.hw, %.lr.ph183.i.i.prol ]
  %.1117181.i.i.unr = phi ptr [ %.1117181.i.i.ph, %.lr.ph183.i.i.preheader228 ], [ %i.hv, %.lr.ph183.i.i.prol ]
  %.1119180.i.i.unr = phi ptr [ %.1119180.i.i.ph, %.lr.ph183.i.i.preheader228 ], [ %i.hu, %.lr.ph183.i.i.prol ]
  %.1121179.i.i.unr = phi ptr [ %.1121179.i.i.ph, %.lr.ph183.i.i.preheader228 ], [ %i.ht, %.lr.ph183.i.i.prol ]
  %i.hx = icmp eq i32 %i.aw, %.neg274
  br i1 %i.hx, label %._crit_edge184.i.i, label %.lr.ph183.i.i

.lr.ph.i43.i:                                     ; preds = %bb.e, %.lr.ph.i43.i
  %.0114174.i.i = phi i32 [ %i.jk, %.lr.ph.i43.i ], [ 0, %bb.e ]
  %.0116173.i.i = phi ptr [ %i.jj, %.lr.ph.i43.i ], [ %i.ay, %bb.e ] ; 3 uses
  %.0118172.i.i = phi ptr [ %i.ji, %.lr.ph.i43.i ], [ %i.av, %bb.e ] ; 2 uses
  %.0120171.i.i = phi ptr [ %i.jh, %.lr.ph.i43.i ], [ %i.gr, %bb.e ] ; 3 uses
  %i.hy = load <4 x float>, ptr %.0120171.i.i, align 1, !tbaa !63
  %i.hz = load <4 x float>, ptr %.0118172.i.i, align 1, !tbaa !63
  %i.ia = load <4 x float>, ptr %.0116173.i.i, align 1, !tbaa !63
  %i.ib = fsub fast <4 x float> %i.hy, %i.hz
  %i.ic = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ib, <4 x float> splat (float f0x42B0C0A5))
  %i.id = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ic, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ie = fmul fast <4 x float> %i.id, splat (float f0x3FB8AA3B)
  %i.if = fadd fast <4 x float> %i.ie, splat (float 5.000000e-01) ; 2 uses
  %i.ig = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.if)
  %i.ih = sitofp fast <4 x i32> %i.ig to <4 x float> ; 2 uses
  %i.ii = fcmp fast olt <4 x float> %i.if, %i.ih
  %i.ij = select <4 x i1> %i.ii, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ik = fsub fast <4 x float> %i.ih, %i.ij      ; 2 uses
  %i.il = fmul fast <4 x float> %i.ik, splat (float f0x3F317218)
  %i.im = fsub fast <4 x float> %i.id, %i.il      ; 8 uses
  %i.in = fmul fast <4 x float> %i.im, %i.im
  %i.io = fmul fast <4 x float> %i.im, splat (float f0x39506967)
  %i.ip = fadd fast <4 x float> %i.io, splat (float f0x3AB743CE)
  %i.iq = fmul fast <4 x float> %i.ip, %i.im
  %i.ir = fadd fast <4 x float> %i.iq, splat (float f0x3C088908)
  %i.is = fmul fast <4 x float> %i.ir, %i.im
  %i.it = fadd fast <4 x float> %i.is, splat (float f0x3D2AA9C1)
  %i.iu = fmul fast <4 x float> %i.it, %i.im
  %i.iv = fadd fast <4 x float> %i.iu, splat (float f0x3E2AAAAA)
  %i.iw = fmul fast <4 x float> %i.iv, %i.im
  %i.ix = fadd fast <4 x float> %i.iw, splat (float 5.000000e-01)
  %i.iy = fmul fast <4 x float> %i.in, %i.ix
  %i.iz = fadd fast <4 x float> %i.im, splat (float 1.000000e+00)
  %i.ja = fadd fast <4 x float> %i.iz, %i.iy
  %i.jb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ik)
  %i.jc = shl <4 x i32> %i.jb, splat (i32 23)
  %i.jd = add <4 x i32> %i.jc, splat (i32 1065353216)
  %i.je = bitcast <4 x i32> %i.jd to <4 x float>
  %i.jf = fmul fast <4 x float> %i.ja, %i.je      ; 2 uses
  store <4 x float> %i.jf, ptr %.0120171.i.i, align 1, !tbaa !63
  %i.jg = fadd fast <4 x float> %i.jf, %i.ia
  store <4 x float> %i.jg, ptr %.0116173.i.i, align 1, !tbaa !63
  %i.jh = getelementptr inbounds nuw i8, ptr %.0120171.i.i, i64 16 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.0118172.i.i, i64 16 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.0116173.i.i, i64 16 ; 2 uses
  %i.jk = add nuw nsw i32 %.0114174.i.i, 4        ; 2 uses
  %i.jl = or disjoint i32 %i.jk, 3
  %i.jm = icmp slt i32 %i.jl, %i.aw
  br i1 %i.jm, label %.lr.ph.i43.i, label %.preheader156.i.i, !llvm.loop !7

.lr.ph183.i.i:                                    ; preds = %.lr.ph183.i.i.prol.loopexit, %.lr.ph183.i.i
  %.1115182.i.i = phi i32 [ %i.kf, %.lr.ph183.i.i ], [ %.1115182.i.i.unr, %.lr.ph183.i.i.prol.loopexit ]
  %.1117181.i.i = phi ptr [ %i.ke, %.lr.ph183.i.i ], [ %.1117181.i.i.unr, %.lr.ph183.i.i.prol.loopexit ] ; 4 uses
  %.1119180.i.i = phi ptr [ %i.kd, %.lr.ph183.i.i ], [ %.1119180.i.i.unr, %.lr.ph183.i.i.prol.loopexit ] ; 3 uses
  %.1121179.i.i = phi ptr [ %i.kc, %.lr.ph183.i.i ], [ %.1121179.i.i.unr, %.lr.ph183.i.i.prol.loopexit ] ; 4 uses
  %i.jn = load float, ptr %.1121179.i.i, align 4, !tbaa !66
  %i.jo = load float, ptr %.1119180.i.i, align 4, !tbaa !66
  %i.jp = fsub fast float %i.jn, %i.jo
  %i.jq = call fast float @llvm.exp.f32(float %i.jp) ; 2 uses
  store float %i.jq, ptr %.1121179.i.i, align 4, !tbaa !66
  %i.jr = load float, ptr %.1117181.i.i, align 4, !tbaa !66
  %i.js = fadd fast float %i.jr, %i.jq
  store float %i.js, ptr %.1117181.i.i, align 4, !tbaa !66
  %i.jt = getelementptr inbounds nuw i8, ptr %.1121179.i.i, i64 4 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.1119180.i.i, i64 4
  %i.jv = getelementptr inbounds nuw i8, ptr %.1117181.i.i, i64 4 ; 2 uses
  %i.jw = load float, ptr %i.jt, align 4, !tbaa !66
  %i.jx = load float, ptr %i.ju, align 4, !tbaa !66
  %i.jy = fsub fast float %i.jw, %i.jx
  %i.jz = call fast float @llvm.exp.f32(float %i.jy) ; 2 uses
  store float %i.jz, ptr %i.jt, align 4, !tbaa !66
  %i.ka = load float, ptr %i.jv, align 4, !tbaa !66
  %i.kb = fadd fast float %i.ka, %i.jz
  store float %i.kb, ptr %i.jv, align 4, !tbaa !66
  %i.kc = getelementptr inbounds nuw i8, ptr %.1121179.i.i, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %.1119180.i.i, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %.1117181.i.i, i64 8
  %i.kf = add nuw nsw i32 %.1115182.i.i, 2        ; 2 uses
  %exitcond231.not.i.i.1 = icmp eq i32 %i.kf, %i.aw
  br i1 %exitcond231.not.i.i.1, label %._crit_edge184.i.i, label %.lr.ph183.i.i, !llvm.loop !173

._crit_edge184.i.i:                               ; preds = %.lr.ph183.i.i.prol.loopexit, %.lr.ph183.i.i, %middle.block185, %.preheader156.i.i
  %indvars.iv.next233.i.i = add nuw nsw i64 %indvars.iv232.i.i, 1 ; 2 uses
  %exitcond236.not.i.i = icmp eq i64 %indvars.iv.next233.i.i, %wide.trip.count229.i.i
  br i1 %exitcond236.not.i.i, label %.preheader155.i.i, label %bb.e, !llvm.loop !8

.preheader154.loopexit.i.i.unr-lcssa:             ; preds = %.lr.ph189.i.i
  %i.kg = and i32 %i.gm, 4
  %lcmp.mod259.not.not = icmp eq i32 %i.kg, 0
  br i1 %lcmp.mod259.not.not, label %.lr.ph189.i.i.epil.preheader, label %.preheader154.loopexit.i.i

.lr.ph189.i.i.epil.preheader:                     ; preds = %.preheader154.loopexit.i.i.unr-lcssa, %.lr.ph189.i.i.preheader
  %.0107187.i.i.epil.init = phi ptr [ %i.ay, %.lr.ph189.i.i.preheader ], [ %i.ll, %.preheader154.loopexit.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod261 = trunc i32 %i.go to i1
  call void @llvm.assume(i1 %lcmp.mod261)
  %i.kh = load <4 x float>, ptr %.0107187.i.i.epil.init, align 1, !tbaa !63 ; 2 uses
  %i.ki = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.kh) ; 2 uses
  %i.kj = fmul fast <4 x float> %i.ki, %i.kh
  %i.kk = fsub fast <4 x float> splat (float 2.000000e+00), %i.kj
  %i.kl = fmul fast <4 x float> %i.kk, %i.ki
  store <4 x float> %i.kl, ptr %.0107187.i.i.epil.init, align 1, !tbaa !63
  %i.km = getelementptr inbounds nuw i8, ptr %.0107187.i.i.epil.init, i64 16
  br label %.preheader154.loopexit.i.i

.preheader154.loopexit.i.i:                       ; preds = %.preheader154.loopexit.i.i.unr-lcssa, %.lr.ph189.i.i.epil.preheader
  %.lcssa238 = phi ptr [ %i.ll, %.preheader154.loopexit.i.i.unr-lcssa ], [ %i.km, %.lr.ph189.i.i.epil.preheader ]
  %i.kn = and i32 %i.aw, 2147483644
  br label %.preheader154.i.i

.preheader154.i.i:                                ; preds = %.preheader154.loopexit.i.i, %.preheader155.i.i
  %.0107.lcssa.i.i = phi ptr [ %i.ay, %.preheader155.i.i ], [ %.lcssa238, %.preheader154.loopexit.i.i ] ; 3 uses
  %.0105.lcssa.i.i = phi i32 [ 0, %.preheader155.i.i ], [ %i.kn, %.preheader154.loopexit.i.i ] ; 4 uses
  %i.ko = icmp slt i32 %.0105.lcssa.i.i, %i.aw
  br i1 %i.ko, label %.lr.ph194.i.i.preheader, label %.preheader153.i.i

.lr.ph194.i.i.preheader:                          ; preds = %.preheader154.i.i
  %i.kp = xor i32 %.0105.lcssa.i.i, -1
  %i.kq = add i32 %i.aw, %i.kp                    ; 2 uses
  %i.kr = zext i32 %i.kq to i64
  %i.ks = add nuw nsw i64 %i.kr, 1                ; 2 uses
  %min.iters.check143 = icmp ult i32 %i.kq, 3
  br i1 %min.iters.check143, label %.lr.ph194.i.i.preheader230, label %vector.ph144

vector.ph144:                                     ; preds = %.lr.ph194.i.i.preheader
  %n.vec145 = and i64 %i.ks, 8589934588           ; 4 uses
  %i.kt = trunc i64 %n.vec145 to i32
  %i.ku = add i32 %.0105.lcssa.i.i, %i.kt
  %i.kv = shl nuw nsw i64 %n.vec145, 2
  %i.kw = getelementptr i8, ptr %.0107.lcssa.i.i, i64 %i.kv
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next150, %vector.body146 ] ; 2 uses
  %i.kx = shl i64 %index147, 2
  %next.gep148 = getelementptr i8, ptr %.0107.lcssa.i.i, i64 %i.kx ; 2 uses
  %wide.load149 = load <4 x float>, ptr %next.gep148, align 4, !tbaa !66
  %i.ky = fdiv fast <4 x float> splat (float 1.000000e+00), %wide.load149
  store <4 x float> %i.ky, ptr %next.gep148, align 4, !tbaa !66
  %index.next150 = add nuw i64 %index147, 4       ; 2 uses
  %i.kz = icmp eq i64 %index.next150, %n.vec145
  br i1 %i.kz, label %middle.block151, label %vector.body146, !llvm.loop !174

middle.block151:                                  ; preds = %vector.body146
  %cmp.n152 = icmp eq i64 %i.ks, %n.vec145
  br i1 %cmp.n152, label %.preheader153.i.i, label %.lr.ph194.i.i.preheader230

.lr.ph194.i.i.preheader230:                       ; preds = %.lr.ph194.i.i.preheader, %middle.block151
  %.1106193.i.i.ph = phi i32 [ %.0105.lcssa.i.i, %.lr.ph194.i.i.preheader ], [ %i.ku, %middle.block151 ]
  %.1108192.i.i.ph = phi ptr [ %.0107.lcssa.i.i, %.lr.ph194.i.i.preheader ], [ %i.kw, %middle.block151 ]
  br label %.lr.ph194.i.i

.lr.ph189.i.i:                                    ; preds = %.lr.ph189.i.i, %.lr.ph189.i.i.preheader.new
  %.0107187.i.i = phi ptr [ %i.ay, %.lr.ph189.i.i.preheader.new ], [ %i.ll, %.lr.ph189.i.i ] ; 4 uses
  %niter263 = phi i32 [ 0, %.lr.ph189.i.i.preheader.new ], [ %niter263.next.1, %.lr.ph189.i.i ]
  %i.la = load <4 x float>, ptr %.0107187.i.i, align 1, !tbaa !63 ; 2 uses
  %i.lb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.la) ; 2 uses
  %i.lc = fmul fast <4 x float> %i.lb, %i.la
  %i.ld = fsub fast <4 x float> splat (float 2.000000e+00), %i.lc
  %i.le = fmul fast <4 x float> %i.ld, %i.lb
  store <4 x float> %i.le, ptr %.0107187.i.i, align 1, !tbaa !63
  %i.lf = getelementptr inbounds nuw i8, ptr %.0107187.i.i, i64 16 ; 2 uses
  %i.lg = load <4 x float>, ptr %i.lf, align 1, !tbaa !63 ; 2 uses
  %i.lh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.lg) ; 2 uses
  %i.li = fmul fast <4 x float> %i.lh, %i.lg
  %i.lj = fsub fast <4 x float> splat (float 2.000000e+00), %i.li
  %i.lk = fmul fast <4 x float> %i.lj, %i.lh
  store <4 x float> %i.lk, ptr %i.lf, align 1, !tbaa !63
  %i.ll = getelementptr inbounds nuw i8, ptr %.0107187.i.i, i64 32 ; 3 uses
  %niter263.next.1 = add i32 %niter263, 2         ; 2 uses
  %niter263.ncmp.1.not = icmp eq i32 %niter263.next.1, %unroll_iter262
  br i1 %niter263.ncmp.1.not, label %.preheader154.loopexit.i.i.unr-lcssa, label %.lr.ph189.i.i, !llvm.loop !9

.preheader153.i.i:                                ; preds = %.lr.ph194.i.i, %middle.block151, %.preheader154.i.i
  br i1 %i.cq, label %.lr.ph209.i.i, label %_ZN4ncnnL7softmaxEPfiimiS0_S0_.exit

.lr.ph209.i.i:                                    ; preds = %.preheader153.i.i
  %i.lm = and i32 %i.aw, -4                       ; 2 uses
  %wide.trip.count242.i.i = zext nneg i32 %i.az to i64
  %i.ln = add i32 %i.aw, -4                       ; 2 uses
  %i.lo = lshr i32 %i.ln, 2
  %i.lp = add nuw nsw i32 %i.lo, 1                ; 2 uses
  %xtraiter264 = and i32 %i.lp, 3                 ; 3 uses
  %i.lq = icmp ult i32 %i.ln, 12
  %unroll_iter270 = and i32 %i.lp, 2147483644
  %lcmp.mod266.not = icmp eq i32 %xtraiter264, 0
  %lcmp.mod269 = icmp ne i32 %xtraiter264, 0
  br label %bb.f

.lr.ph194.i.i:                                    ; preds = %.lr.ph194.i.i.preheader230, %.lr.ph194.i.i
  %.1106193.i.i = phi i32 [ %i.lu, %.lr.ph194.i.i ], [ %.1106193.i.i.ph, %.lr.ph194.i.i.preheader230 ]
  %.1108192.i.i = phi ptr [ %i.lt, %.lr.ph194.i.i ], [ %.1108192.i.i.ph, %.lr.ph194.i.i.preheader230 ] ; 3 uses
  %i.lr = load float, ptr %.1108192.i.i, align 4, !tbaa !66
  %i.ls = fdiv fast float 1.000000e+00, %i.lr
  store float %i.ls, ptr %.1108192.i.i, align 4, !tbaa !66
  %i.lt = getelementptr inbounds nuw i8, ptr %.1108192.i.i, i64 4
  %i.lu = add nuw nsw i32 %.1106193.i.i, 1        ; 2 uses
  %exitcond237.not.i.i = icmp eq i32 %i.lu, %i.aw
  br i1 %exitcond237.not.i.i, label %.preheader153.i.i, label %.lr.ph194.i.i, !llvm.loop !175

bb.f:                                             ; preds = %._crit_edge207.i.i, %.lr.ph209.i.i
  %indvars.iv239.i.i = phi i64 [ 0, %.lr.ph209.i.i ], [ %indvars.iv.next240.i.i, %._crit_edge207.i.i ] ; 2 uses
  %i.lv = mul nsw i64 %indvars.iv239.i.i, %i.ax
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.lv ; 3 uses
  br i1 %i.ba, label %.lr.ph199.i.i.preheader, label %.preheader.i42.i

.lr.ph199.i.i.preheader:                          ; preds = %bb.f
  br i1 %i.lq, label %.lr.ph199.i.i.epil.preheader, label %.lr.ph199.i.i

.preheader.i42.i.loopexit.unr-lcssa:              ; preds = %.lr.ph199.i.i
  br i1 %lcmp.mod266.not, label %.preheader.i42.i, label %.lr.ph199.i.i.epil.preheader

.lr.ph199.i.i.epil.preheader:                     ; preds = %.preheader.i42.i.loopexit.unr-lcssa, %.lr.ph199.i.i.preheader
  %.0100196.i.i.epil.init = phi ptr [ %i.ay, %.lr.ph199.i.i.preheader ], [ %i.ny, %.preheader.i42.i.loopexit.unr-lcssa ]
  %.0102195.i.i.epil.init = phi ptr [ %i.lw, %.lr.ph199.i.i.preheader ], [ %i.nx, %.preheader.i42.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod269)
  br label %.lr.ph199.i.i.epil

.lr.ph199.i.i.epil:                               ; preds = %.lr.ph199.i.i.epil, %.lr.ph199.i.i.epil.preheader
  %.0100196.i.i.epil = phi ptr [ %i.mb, %.lr.ph199.i.i.epil ], [ %.0100196.i.i.epil.init, %.lr.ph199.i.i.epil.preheader ] ; 2 uses
  %.0102195.i.i.epil = phi ptr [ %i.ma, %.lr.ph199.i.i.epil ], [ %.0102195.i.i.epil.init, %.lr.ph199.i.i.epil.preheader ] ; 3 uses
  %epil.iter265 = phi i32 [ %epil.iter265.next, %.lr.ph199.i.i.epil ], [ 0, %.lr.ph199.i.i.epil.preheader ]
  %i.lx = load <4 x float>, ptr %.0102195.i.i.epil, align 1, !tbaa !63
  %i.ly = load <4 x float>, ptr %.0100196.i.i.epil, align 1, !tbaa !63
  %i.lz = fmul fast <4 x float> %i.ly, %i.lx
  store <4 x float> %i.lz, ptr %.0102195.i.i.epil, align 1, !tbaa !63
  %i.ma = getelementptr inbounds nuw i8, ptr %.0102195.i.i.epil, i64 16 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.0100196.i.i.epil, i64 16 ; 2 uses
  %epil.iter265.next = add i32 %epil.iter265, 1   ; 2 uses
  %epil.iter265.cmp.not = icmp eq i32 %epil.iter265.next, %xtraiter264
  br i1 %epil.iter265.cmp.not, label %.preheader.i42.i, label %.lr.ph199.i.i.epil, !llvm.loop !176

.preheader.i42.i:                                 ; preds = %.preheader.i42.i.loopexit.unr-lcssa, %.lr.ph199.i.i.epil, %bb.f
  %.0102.lcssa.i.i = phi ptr [ %i.lw, %bb.f ], [ %i.nx, %.preheader.i42.i.loopexit.unr-lcssa ], [ %i.ma, %.lr.ph199.i.i.epil ] ; 6 uses
  %.0100.lcssa.i.i = phi ptr [ %i.ay, %bb.f ], [ %i.ny, %.preheader.i42.i.loopexit.unr-lcssa ], [ %i.mb, %.lr.ph199.i.i.epil ] ; 6 uses
end_hunk_4
begin_hunk_5_@_ZNK4ncnn11Softmax_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.4:bb.a
.preheader109.loopexit.i:                         ; preds = %.lr.ph.i.epil, %.preheader109.loopexit.i.unr-lcssa
  %.lcssa105 = phi <4 x float> [ %i.bl, %.preheader109.loopexit.i.unr-lcssa ], [ %i.aj, %.lr.ph.i.epil ]
  %.lcssa = phi ptr [ %i.bm, %.preheader109.loopexit.i.unr-lcssa ], [ %i.ak, %.lr.ph.i.epil ]
  %i.al = and i32 %i.ac, 2147483644
  br label %.preheader109.i

.preheader109.i:                                  ; preds = %.preheader109.loopexit.i, %.lr.ph
  %.0101.lcssa.i = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph ], [ %.lcssa105, %.preheader109.loopexit.i ] ; 3 uses
  %.058.lcssa.i = phi i32 [ 0, %.lr.ph ], [ %i.al, %.preheader109.loopexit.i ] ; 4 uses
  %.050.lcssa.i = phi ptr [ %.02034, %.lr.ph ], [ %.lcssa, %.preheader109.loopexit.i ] ; 3 uses
  %i.am = icmp slt i32 %.058.lcssa.i, %i.ac
  br i1 %i.am, label %.lr.ph118.i.preheader, label %._crit_edge.i

.lr.ph118.i.preheader:                            ; preds = %.preheader109.i
  %i.an = xor i32 %.058.lcssa.i, -1
  %i.ao = add i32 %i.ac, %i.an                    ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check86 = icmp ult i32 %i.ao, 7
  br i1 %min.iters.check86, label %.lr.ph118.i.preheader104, label %vector.ph87

vector.ph87:                                      ; preds = %.lr.ph118.i.preheader
  %n.vec88 = and i64 %i.aq, 8589934584            ; 4 uses
  %i.ar = shl nuw nsw i64 %n.vec88, 2
  %i.as = getelementptr i8, ptr %.050.lcssa.i, i64 %i.ar
  %i.at = trunc i64 %n.vec88 to i32
  %i.au = add i32 %.058.lcssa.i, %i.at
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next96, %vector.body89 ] ; 2 uses
  %vec.phi91 = phi <4 x float> [ splat (float f0xFF7FFFFF), %vector.ph87 ], [ %i.ax, %vector.body89 ]
  %vec.phi92 = phi <4 x float> [ splat (float f0xFF7FFFFF), %vector.ph87 ], [ %i.ay, %vector.body89 ]
  %i.av = shl i64 %index90, 2
  %next.gep93 = getelementptr i8, ptr %.050.lcssa.i, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep93, i64 16
  %wide.load94 = load <4 x float>, ptr %next.gep93, align 4, !tbaa !66
  %wide.load95 = load <4 x float>, ptr %i.aw, align 4, !tbaa !66
  %i.ax = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi91, <4 x float> %wide.load94) ; 2 uses
  %i.ay = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi92, <4 x float> %wide.load95) ; 2 uses
  %index.next96 = add nuw i64 %index90, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next96, %n.vec88
  br i1 %i.az, label %middle.block97, label %vector.body89, !llvm.loop !198

middle.block97:                                   ; preds = %vector.body89
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ax, <4 x float> %i.ay)
  %i.ba = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  %cmp.n98 = icmp eq i64 %i.aq, %n.vec88
  br i1 %cmp.n98, label %._crit_edge.i, label %.lr.ph118.i.preheader104

.lr.ph118.i.preheader104:                         ; preds = %.lr.ph118.i.preheader, %middle.block97
  %.151117.i.ph = phi ptr [ %.050.lcssa.i, %.lr.ph118.i.preheader ], [ %i.as, %middle.block97 ]
  %.159116.i.ph = phi i32 [ %.058.lcssa.i, %.lr.ph118.i.preheader ], [ %i.au, %middle.block97 ]
  %.0105115.i.ph = phi float [ f0xFF7FFFFF, %.lr.ph118.i.preheader ], [ %i.ba, %middle.block97 ]
  br label %.lr.ph118.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.050112.i = phi ptr [ %.02034, %.lr.ph.i.preheader.new ], [ %i.bm, %.lr.ph.i ] ; 5 uses
  %.0101110.i = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader.new ], [ %i.bl, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.bb = load <4 x float>, ptr %.050112.i, align 1, !tbaa !63
  %i.bc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0101110.i, <4 x float> nofpclass(nan inf) %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %.050112.i, i64 16
  %i.be = load <4 x float>, ptr %i.bd, align 1, !tbaa !63
  %i.bf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bc, <4 x float> nofpclass(nan inf) %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %.050112.i, i64 32
  %i.bh = load <4 x float>, ptr %i.bg, align 1, !tbaa !63
  %i.bi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bf, <4 x float> nofpclass(nan inf) %i.bh)
  %i.bj = getelementptr inbounds nuw i8, ptr %.050112.i, i64 48
  %i.bk = load <4 x float>, ptr %i.bj, align 1, !tbaa !63
  %i.bl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bi, <4 x float> nofpclass(nan inf) %i.bk) ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.050112.i, i64 64 ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader109.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

.lr.ph118.i:                                      ; preds = %.lr.ph118.i.preheader104, %.lr.ph118.i
  %.151117.i = phi ptr [ %i.bn, %.lr.ph118.i ], [ %.151117.i.ph, %.lr.ph118.i.preheader104 ] ; 2 uses
  %.159116.i = phi i32 [ %i.bp, %.lr.ph118.i ], [ %.159116.i.ph, %.lr.ph118.i.preheader104 ]
  %.0105115.i = phi float [ %.sroa.speculated71.i, %.lr.ph118.i ], [ %.0105115.i.ph, %.lr.ph118.i.preheader104 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.151117.i, i64 4
  %i.bo = load float, ptr %.151117.i, align 4, !tbaa !66
  %.sroa.speculated71.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.0105115.i, float %i.bo) ; 2 uses
  %i.bp = add nuw nsw i32 %.159116.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bp, %i.ac
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph118.i, !llvm.loop !199

._crit_edge.i:                                    ; preds = %.lr.ph118.i, %middle.block97, %.preheader109.i
  %.0105.lcssa.i = phi float [ f0xFF7FFFFF, %.preheader109.i ], [ %i.ba, %middle.block97 ], [ %.sroa.speculated71.i, %.lr.ph118.i ] ; 3 uses
  %i.bq = icmp eq i32 %i.aa, 1                    ; 2 uses
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.br = shufflevector <4 x float> %.0101.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.bs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0101.lcssa.i, <4 x float> nofpclass(nan inf) %i.br) ; 2 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.bs, <4 x float> nofpclass(nan inf) %i.bt)
  %i.bv = extractelement <4 x float> %i.bu, i64 0 ; 2 uses
  %i.bw = fcmp fast olt float %.0105.lcssa.i, %i.bv
  %.sroa.speculated.i = select i1 %i.bw, float %i.bv, float %.0105.lcssa.i ; 2 uses
  %i.bx = insertelement <4 x float> poison, float %.sroa.speculated.i, i64 0
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.1106.i = phi nsz float [ %.sroa.speculated.i, %bb.c ], [ %.0105.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.1102.i = phi nsz <4 x float> [ %i.by, %bb.c ], [ %.0101.lcssa.i, %._crit_edge.i ]
  br i1 %i.ad, label %.lr.ph124.i, label %.preheader108.i

.preheader108.loopexit.i:                         ; preds = %.lr.ph124.i
  %i.bz = and i32 %i.ac, 2147483644
  br label %.preheader108.i

.preheader108.i:                                  ; preds = %.preheader108.loopexit.i, %bb.d
  %.0103.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.dz, %.preheader108.loopexit.i ] ; 5 uses
  %.054.lcssa.i = phi ptr [ %.02034, %bb.d ], [ %i.ea, %.preheader108.loopexit.i ] ; 3 uses
  %.052.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.bz, %.preheader108.loopexit.i ] ; 4 uses
  %i.ca = icmp slt i32 %.052.lcssa.i, %i.ac
  br i1 %i.ca, label %.lr.ph131.i.preheader, label %._crit_edge132.i

.lr.ph131.i.preheader:                            ; preds = %.preheader108.i
  %i.cb = xor i32 %.052.lcssa.i, -1
  %i.cc = add i32 %i.ac, %i.cb                    ; 2 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check69 = icmp ult i32 %i.cc, 7
  br i1 %min.iters.check69, label %.lr.ph131.i.preheader103, label %vector.ph70

vector.ph70:                                      ; preds = %.lr.ph131.i.preheader
  %n.vec71 = and i64 %i.ce, 8589934584            ; 4 uses
  %i.cf = trunc i64 %n.vec71 to i32
  %i.cg = add i32 %.052.lcssa.i, %i.cf
  %i.ch = shl nuw nsw i64 %n.vec71, 2
  %i.ci = getelementptr i8, ptr %.054.lcssa.i, i64 %i.ch
  %broadcast.splatinsert72 = insertelement <4 x float> poison, float %.1106.i, i64 0
  %broadcast.splat73 = shufflevector <4 x float> %broadcast.splatinsert72, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph70
  %index75 = phi i64 [ 0, %vector.ph70 ], [ %index.next80, %vector.body74 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph70 ], [ %i.cp, %vector.body74 ]
  %vec.phi76 = phi <4 x float> [ zeroinitializer, %vector.ph70 ], [ %i.cq, %vector.body74 ]
  %i.cj = shl i64 %index75, 2
  %next.gep77 = getelementptr i8, ptr %.054.lcssa.i, i64 %i.cj ; 3 uses
  %i.ck = getelementptr i8, ptr %next.gep77, i64 16 ; 2 uses
  %wide.load78 = load <4 x float>, ptr %next.gep77, align 4, !tbaa !66
  %wide.load79 = load <4 x float>, ptr %i.ck, align 4, !tbaa !66
  %i.cl = fsub fast <4 x float> %wide.load78, %broadcast.splat73
  %i.cm = fsub fast <4 x float> %wide.load79, %broadcast.splat73
  %i.cn = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.cl) ; 2 uses
  %i.co = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.cm) ; 2 uses
  store <4 x float> %i.cn, ptr %next.gep77, align 4, !tbaa !66
  store <4 x float> %i.co, ptr %i.ck, align 4, !tbaa !66
  %i.cp = fadd fast <4 x float> %i.cn, %vec.phi   ; 2 uses
  %i.cq = fadd fast <4 x float> %i.co, %vec.phi76 ; 2 uses
  %index.next80 = add nuw i64 %index75, 8         ; 2 uses
  %i.cr = icmp eq i64 %index.next80, %n.vec71
  br i1 %i.cr, label %middle.block81, label %vector.body74, !llvm.loop !200

middle.block81:                                   ; preds = %vector.body74
  %bin.rdx = fadd fast <4 x float> %i.cq, %i.cp
  %i.cs = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n82 = icmp eq i64 %i.ce, %n.vec71
  br i1 %cmp.n82, label %._crit_edge132.i, label %.lr.ph131.i.preheader103

.lr.ph131.i.preheader103:                         ; preds = %.lr.ph131.i.preheader, %middle.block81
  %.153130.i.ph = phi i32 [ %.052.lcssa.i, %.lr.ph131.i.preheader ], [ %i.cg, %middle.block81 ]
  %.155129.i.ph = phi ptr [ %.054.lcssa.i, %.lr.ph131.i.preheader ], [ %i.ci, %middle.block81 ]
  %.056128.i.ph = phi float [ 0.000000e+00, %.lr.ph131.i.preheader ], [ %i.cs, %middle.block81 ]
  br label %.lr.ph131.i

.lr.ph124.i:                                      ; preds = %bb.d, %.lr.ph124.i
  %.052122.i = phi i32 [ %i.eb, %.lr.ph124.i ], [ 0, %bb.d ]
  %.054121.i = phi ptr [ %i.ea, %.lr.ph124.i ], [ %.02034, %bb.d ] ; 3 uses
  %.0103120.i = phi <4 x float> [ %i.dz, %.lr.ph124.i ], [ zeroinitializer, %bb.d ]
  %i.ct = load <4 x float>, ptr %.054121.i, align 1, !tbaa !63
  %i.cu = fsub fast <4 x float> %i.ct, %.1102.i
  %i.cv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cu, <4 x float> splat (float f0x42B0C0A5))
  %i.cw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cv, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cx = fmul fast <4 x float> %i.cw, splat (float f0x3FB8AA3B)
  %i.cy = fadd fast <4 x float> %i.cx, splat (float 5.000000e-01) ; 2 uses
  %i.cz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cy)
  %i.da = sitofp fast <4 x i32> %i.cz to <4 x float> ; 2 uses
  %i.db = fcmp fast olt <4 x float> %i.cy, %i.da
  %i.dc = select <4 x i1> %i.db, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dd = fsub fast <4 x float> %i.da, %i.dc      ; 2 uses
  %i.de = fmul fast <4 x float> %i.dd, splat (float f0x3F317218)
  %i.df = fsub fast <4 x float> %i.cw, %i.de      ; 8 uses
  %i.dg = fmul fast <4 x float> %i.df, %i.df
  %i.dh = fmul fast <4 x float> %i.df, splat (float f0x39506967)
  %i.di = fadd fast <4 x float> %i.dh, splat (float f0x3AB743CE)
  %i.dj = fmul fast <4 x float> %i.di, %i.df
  %i.dk = fadd fast <4 x float> %i.dj, splat (float f0x3C088908)
  %i.dl = fmul fast <4 x float> %i.dk, %i.df
  %i.dm = fadd fast <4 x float> %i.dl, splat (float f0x3D2AA9C1)
  %i.dn = fmul fast <4 x float> %i.dm, %i.df
  %i.do = fadd fast <4 x float> %i.dn, splat (float f0x3E2AAAAA)
  %i.dp = fmul fast <4 x float> %i.do, %i.df
  %i.dq = fadd fast <4 x float> %i.dp, splat (float 5.000000e-01)
  %i.dr = fmul fast <4 x float> %i.dg, %i.dq
  %i.ds = fadd fast <4 x float> %i.df, splat (float 1.000000e+00)
  %i.dt = fadd fast <4 x float> %i.ds, %i.dr
  %i.du = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dd)
  %i.dv = shl <4 x i32> %i.du, splat (i32 23)
  %i.dw = add <4 x i32> %i.dv, splat (i32 1065353216)
  %i.dx = bitcast <4 x i32> %i.dw to <4 x float>
  %i.dy = fmul fast <4 x float> %i.dt, %i.dx      ; 2 uses
  store <4 x float> %i.dy, ptr %.054121.i, align 1, !tbaa !63
  %i.dz = fadd fast <4 x float> %i.dy, %.0103120.i ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.054121.i, i64 16 ; 2 uses
  %i.eb = add nuw nsw i32 %.052122.i, 4           ; 2 uses
  %i.ec = or disjoint i32 %i.eb, 3
  %i.ed = icmp slt i32 %i.ec, %i.ac
  br i1 %i.ed, label %.lr.ph124.i, label %.preheader108.loopexit.i, !llvm.loop !1

.lr.ph131.i:                                      ; preds = %.lr.ph131.i.preheader103, %.lr.ph131.i
  %.153130.i = phi i32 [ %i.ej, %.lr.ph131.i ], [ %.153130.i.ph, %.lr.ph131.i.preheader103 ]
  %.155129.i = phi ptr [ %i.ei, %.lr.ph131.i ], [ %.155129.i.ph, %.lr.ph131.i.preheader103 ] ; 3 uses
  %.056128.i = phi float [ %i.eh, %.lr.ph131.i ], [ %.056128.i.ph, %.lr.ph131.i.preheader103 ]
  %i.ee = load float, ptr %.155129.i, align 4, !tbaa !66
  %i.ef = fsub fast float %i.ee, %.1106.i
  %i.eg = call fast float @llvm.exp.f32(float %i.ef) ; 2 uses
  store float %i.eg, ptr %.155129.i, align 4, !tbaa !66
  %i.eh = fadd fast float %i.eg, %.056128.i       ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.155129.i, i64 4
  %i.ej = add nuw nsw i32 %.153130.i, 1           ; 2 uses
  %exitcond152.not.i = icmp eq i32 %i.ej, %i.ac
  br i1 %exitcond152.not.i, label %._crit_edge132.i, label %.lr.ph131.i, !llvm.loop !201

._crit_edge132.i:                                 ; preds = %.lr.ph131.i, %middle.block81, %.preheader108.i
  %.056.lcssa.i = phi float [ 0.000000e+00, %.preheader108.i ], [ %i.cs, %middle.block81 ], [ %i.eh, %.lr.ph131.i ] ; 3 uses
  %i.ek = icmp eq i32 %i.aa, 4
  br i1 %i.ek, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %._crit_edge132.i
  %i.el = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %.0103.lcssa.i) ; 2 uses
  %i.em = fmul fast <4 x float> %i.el, %.0103.lcssa.i
  %i.en = fsub fast <4 x float> splat (float 2.000000e+00), %i.em
  %i.eo = fmul fast <4 x float> %i.en, %i.el
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge132.i
  br i1 %i.bq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ep = shufflevector <4 x float> %.0103.lcssa.i, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.eq = shufflevector <4 x float> %.0103.lcssa.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.er = fadd fast <2 x float> %i.ep, %i.eq
  %i.es = call fast float @llvm.vector.reduce.fadd.v2f32(float %.056.lcssa.i, <2 x float> %i.er)
  %i.et = fdiv fast float 1.000000e+00, %i.es     ; 2 uses
  %i.eu = insertelement <4 x float> poison, float %i.et, i64 0
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.thread.i
  %.2.i = phi nsz <4 x float> [ %i.ev, %bb.f ], [ %.0103.lcssa.i, %bb.e ], [ %i.eo, %.thread.i ] ; 5 uses
  %.157.i = phi nsz float [ %i.et, %bb.f ], [ %.056.lcssa.i, %bb.e ], [ %.056.lcssa.i, %.thread.i ] ; 2 uses
  br i1 %i.ad, label %.lr.ph137.i.preheader, label %.preheader.i

.lr.ph137.i.preheader:                            ; preds = %bb.g
  %i.ew = add nsw i32 %i.ac, -4                   ; 2 uses
  %i.ex = lshr i32 %i.ew, 2
  %i.ey = add nuw nsw i32 %i.ex, 1                ; 2 uses
  %xtraiter118 = and i32 %i.ey, 3                 ; 3 uses
  %i.ez = icmp ult i32 %i.ew, 12
  br i1 %i.ez, label %.lr.ph137.i.epil.preheader, label %.lr.ph137.i.preheader.new

.lr.ph137.i.preheader.new:                        ; preds = %.lr.ph137.i.preheader
  %unroll_iter123 = and i32 %i.ey, 2147483644
  br label %.lr.ph137.i

.preheader.loopexit.i.unr-lcssa:                  ; preds = %.lr.ph137.i
  %lcmp.mod120.not = icmp eq i32 %xtraiter118, 0
  br i1 %lcmp.mod120.not, label %.preheader.loopexit.i, label %.lr.ph137.i.epil.preheader

.lr.ph137.i.epil.preheader:                       ; preds = %.preheader.loopexit.i.unr-lcssa, %.lr.ph137.i.preheader
  %.048134.i.epil.init = phi ptr [ %.02034, %.lr.ph137.i.preheader ], [ %i.gd, %.preheader.loopexit.i.unr-lcssa ]
  %lcmp.mod122 = icmp ne i32 %xtraiter118, 0
  call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph137.i.epil

.lr.ph137.i.epil:                                 ; preds = %.lr.ph137.i.epil, %.lr.ph137.i.epil.preheader
  %.048134.i.epil = phi ptr [ %i.fc, %.lr.ph137.i.epil ], [ %.048134.i.epil.init, %.lr.ph137.i.epil.preheader ] ; 3 uses
  %epil.iter119 = phi i32 [ %epil.iter119.next, %.lr.ph137.i.epil ], [ 0, %.lr.ph137.i.epil.preheader ]
  %i.fa = load <4 x float>, ptr %.048134.i.epil, align 1, !tbaa !63
  %i.fb = fmul fast <4 x float> %i.fa, %.2.i
  store <4 x float> %i.fb, ptr %.048134.i.epil, align 1, !tbaa !63
  %i.fc = getelementptr inbounds nuw i8, ptr %.048134.i.epil, i64 16 ; 2 uses
  %epil.iter119.next = add i32 %epil.iter119, 1   ; 2 uses
  %epil.iter119.cmp.not = icmp eq i32 %epil.iter119.next, %xtraiter118
  br i1 %epil.iter119.cmp.not, label %.preheader.loopexit.i, label %.lr.ph137.i.epil, !llvm.loop !202

.preheader.loopexit.i:                            ; preds = %.lr.ph137.i.epil, %.preheader.loopexit.i.unr-lcssa
  %.lcssa113 = phi ptr [ %i.gd, %.preheader.loopexit.i.unr-lcssa ], [ %i.fc, %.lr.ph137.i.epil ]
  %i.fd = and i32 %i.ac, 2147483644
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.g
  %.048.lcssa.i = phi ptr [ %.02034, %bb.g ], [ %.lcssa113, %.preheader.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.fd, %.preheader.loopexit.i ] ; 4 uses
  %i.fe = icmp slt i32 %.0.lcssa.i, %i.ac
  br i1 %i.fe, label %.lr.ph142.i.preheader, label %_ZN4ncnnL7softmaxEPfii.exit

.lr.ph142.i.preheader:                            ; preds = %.preheader.i
  %i.ff = xor i32 %.0.lcssa.i, -1
  %i.fg = add i32 %i.ac, %i.ff                    ; 2 uses
  %i.fh = zext i32 %i.fg to i64
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.fg, 7
  br i1 %min.iters.check, label %.lr.ph142.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph142.i.preheader
  %n.vec = and i64 %i.fi, 8589934584              ; 4 uses
  %i.fj = trunc i64 %n.vec to i32
  %i.fk = add i32 %.0.lcssa.i, %i.fj
  %i.fl = shl nuw nsw i64 %n.vec, 2
  %i.fm = getelementptr i8, ptr %.048.lcssa.i, i64 %i.fl
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.157.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fn = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.048.lcssa.i, i64 %i.fn ; 3 uses
  %i.fo = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !66
  %wide.load66 = load <4 x float>, ptr %i.fo, align 4, !tbaa !66
  %i.fp = fmul fast <4 x float> %wide.load, %broadcast.splat
  %i.fq = fmul fast <4 x float> %wide.load66, %broadcast.splat
  store <4 x float> %i.fp, ptr %next.gep, align 4, !tbaa !66
  store <4 x float> %i.fq, ptr %i.fo, align 4, !tbaa !66
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fi, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL7softmaxEPfii.exit, label %.lr.ph142.i.preheader102

.lr.ph142.i.preheader102:                         ; preds = %.lr.ph142.i.preheader, %middle.block
  %.1141.i.ph = phi i32 [ %.0.lcssa.i, %.lr.ph142.i.preheader ], [ %i.fk, %middle.block ]
  %.149140.i.ph = phi ptr [ %.048.lcssa.i, %.lr.ph142.i.preheader ], [ %i.fm, %middle.block ]
  br label %.lr.ph142.i

.lr.ph137.i:                                      ; preds = %.lr.ph137.i, %.lr.ph137.i.preheader.new
  %.048134.i = phi ptr [ %.02034, %.lr.ph137.i.preheader.new ], [ %i.gd, %.lr.ph137.i ] ; 6 uses
  %niter124 = phi i32 [ 0, %.lr.ph137.i.preheader.new ], [ %niter124.next.3, %.lr.ph137.i ]
  %i.fs = load <4 x float>, ptr %.048134.i, align 1, !tbaa !63
  %i.ft = fmul fast <4 x float> %i.fs, %.2.i
  store <4 x float> %i.ft, ptr %.048134.i, align 1, !tbaa !63
  %i.fu = getelementptr inbounds nuw i8, ptr %.048134.i, i64 16 ; 2 uses
  %i.fv = load <4 x float>, ptr %i.fu, align 1, !tbaa !63
  %i.fw = fmul fast <4 x float> %i.fv, %.2.i
  store <4 x float> %i.fw, ptr %i.fu, align 1, !tbaa !63
  %i.fx = getelementptr inbounds nuw i8, ptr %.048134.i, i64 32 ; 2 uses
  %i.fy = load <4 x float>, ptr %i.fx, align 1, !tbaa !63
  %i.fz = fmul fast <4 x float> %i.fy, %.2.i
  store <4 x float> %i.fz, ptr %i.fx, align 1, !tbaa !63
  %i.ga = getelementptr inbounds nuw i8, ptr %.048134.i, i64 48 ; 2 uses
  %i.gb = load <4 x float>, ptr %i.ga, align 1, !tbaa !63
  %i.gc = fmul fast <4 x float> %i.gb, %.2.i
  store <4 x float> %i.gc, ptr %i.ga, align 1, !tbaa !63
  %i.gd = getelementptr inbounds nuw i8, ptr %.048134.i, i64 64 ; 3 uses
  %niter124.next.3 = add nuw nsw i32 %niter124, 4 ; 2 uses
  %niter124.ncmp.3.not = icmp eq i32 %niter124.next.3, %unroll_iter123
  br i1 %niter124.ncmp.3.not, label %.preheader.loopexit.i.unr-lcssa, label %.lr.ph137.i, !llvm.loop !2

.lr.ph142.i:                                      ; preds = %.lr.ph142.i.preheader102, %.lr.ph142.i
  %.1141.i = phi i32 [ %i.gh, %.lr.ph142.i ], [ %.1141.i.ph, %.lr.ph142.i.preheader102 ]
  %.149140.i = phi ptr [ %i.ge, %.lr.ph142.i ], [ %.149140.i.ph, %.lr.ph142.i.preheader102 ] ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.149140.i, i64 4
  %i.gf = load float, ptr %.149140.i, align 4, !tbaa !66
  %i.gg = fmul fast float %i.gf, %.157.i
  store float %i.gg, ptr %.149140.i, align 4, !tbaa !66
  %i.gh = add nuw nsw i32 %.1141.i, 1             ; 2 uses
  %exitcond153.not.i = icmp eq i32 %i.gh, %i.ac
  br i1 %exitcond153.not.i, label %_ZN4ncnnL7softmaxEPfii.exit, label %.lr.ph142.i, !llvm.loop !204

_ZN4ncnnL7softmaxEPfii.exit:                      ; preds = %.lr.ph142.i, %middle.block, %.preheader.i
  %i.gi = load i32, ptr %5, align 4, !tbaa !43    ; 2 uses
  %i.gj = load i32, ptr %6, align 4, !tbaa !43    ; 2 uses
  %i.gk = mul nsw i32 %i.gj, %i.gi
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [4 x i8], ptr %.02034, i64 %i.gl
  %i.gn = add nuw nsw i32 %.035, 1                ; 2 uses
  %i.go = load i32, ptr %4, align 4, !tbaa !43    ; 2 uses
  %i.gp = icmp slt i32 %i.gn, %i.go
  br i1 %i.gp, label %.lr.ph, label %._crit_edge, !llvm.loop !205

._crit_edge38:                                    ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge38, %bb.a
  ret void
}

end_hunk_5
begin_hunk_6_@_ZNK4ncnn11Softmax_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.6:bb.a
.preheader109.loopexit.i:                         ; preds = %.lr.ph.i.epil, %.preheader109.loopexit.i.unr-lcssa
  %.lcssa124 = phi <4 x float> [ %i.bw, %.preheader109.loopexit.i.unr-lcssa ], [ %i.au, %.lr.ph.i.epil ]
  %.lcssa = phi ptr [ %i.bx, %.preheader109.loopexit.i.unr-lcssa ], [ %i.av, %.lr.ph.i.epil ]
  %i.aw = and i32 %i.an, 2147483644
  br label %.preheader109.i

.preheader109.i:                                  ; preds = %.preheader109.loopexit.i, %.lr.ph
  %.0101.lcssa.i = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph ], [ %.lcssa124, %.preheader109.loopexit.i ] ; 3 uses
  %.058.lcssa.i = phi i32 [ 0, %.lr.ph ], [ %i.aw, %.preheader109.loopexit.i ] ; 4 uses
  %.050.lcssa.i = phi ptr [ %.138, %.lr.ph ], [ %.lcssa, %.preheader109.loopexit.i ] ; 3 uses
  %i.ax = icmp slt i32 %.058.lcssa.i, %i.an
  br i1 %i.ax, label %.lr.ph118.i.preheader, label %._crit_edge.i

.lr.ph118.i.preheader:                            ; preds = %.preheader109.i
  %i.ay = xor i32 %.058.lcssa.i, -1
  %i.az = add i32 %i.an, %i.ay                    ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check105 = icmp ult i32 %i.az, 7
  br i1 %min.iters.check105, label %.lr.ph118.i.preheader123, label %vector.ph106

vector.ph106:                                     ; preds = %.lr.ph118.i.preheader
  %n.vec107 = and i64 %i.bb, 8589934584           ; 4 uses
  %i.bc = shl nuw nsw i64 %n.vec107, 2
  %i.bd = getelementptr i8, ptr %.050.lcssa.i, i64 %i.bc
  %i.be = trunc i64 %n.vec107 to i32
  %i.bf = add i32 %.058.lcssa.i, %i.be
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next115, %vector.body108 ] ; 2 uses
  %vec.phi110 = phi <4 x float> [ splat (float f0xFF7FFFFF), %vector.ph106 ], [ %i.bi, %vector.body108 ]
  %vec.phi111 = phi <4 x float> [ splat (float f0xFF7FFFFF), %vector.ph106 ], [ %i.bj, %vector.body108 ]
  %i.bg = shl i64 %index109, 2
  %next.gep112 = getelementptr i8, ptr %.050.lcssa.i, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load113 = load <4 x float>, ptr %next.gep112, align 4, !tbaa !66
  %wide.load114 = load <4 x float>, ptr %i.bh, align 4, !tbaa !66
  %i.bi = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi110, <4 x float> %wide.load113) ; 2 uses
  %i.bj = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi111, <4 x float> %wide.load114) ; 2 uses
  %index.next115 = add nuw i64 %index109, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next115, %n.vec107
  br i1 %i.bk, label %middle.block116, label %vector.body108, !llvm.loop !218

middle.block116:                                  ; preds = %vector.body108
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bi, <4 x float> %i.bj)
  %i.bl = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  %cmp.n117 = icmp eq i64 %i.bb, %n.vec107
  br i1 %cmp.n117, label %._crit_edge.i, label %.lr.ph118.i.preheader123

.lr.ph118.i.preheader123:                         ; preds = %.lr.ph118.i.preheader, %middle.block116
  %.151117.i.ph = phi ptr [ %.050.lcssa.i, %.lr.ph118.i.preheader ], [ %i.bd, %middle.block116 ]
  %.159116.i.ph = phi i32 [ %.058.lcssa.i, %.lr.ph118.i.preheader ], [ %i.bf, %middle.block116 ]
  %.0105115.i.ph = phi float [ f0xFF7FFFFF, %.lr.ph118.i.preheader ], [ %i.bl, %middle.block116 ]
  br label %.lr.ph118.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.050112.i = phi ptr [ %.138, %.lr.ph.i.preheader.new ], [ %i.bx, %.lr.ph.i ] ; 5 uses
  %.0101110.i = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader.new ], [ %i.bw, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.bm = load <4 x float>, ptr %.050112.i, align 1, !tbaa !63
  %i.bn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0101110.i, <4 x float> nofpclass(nan inf) %i.bm)
  %i.bo = getelementptr inbounds nuw i8, ptr %.050112.i, i64 16
  %i.bp = load <4 x float>, ptr %i.bo, align 1, !tbaa !63
  %i.bq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bn, <4 x float> nofpclass(nan inf) %i.bp)
  %i.br = getelementptr inbounds nuw i8, ptr %.050112.i, i64 32
  %i.bs = load <4 x float>, ptr %i.br, align 1, !tbaa !63
  %i.bt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bq, <4 x float> nofpclass(nan inf) %i.bs)
  %i.bu = getelementptr inbounds nuw i8, ptr %.050112.i, i64 48
  %i.bv = load <4 x float>, ptr %i.bu, align 1, !tbaa !63
  %i.bw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bt, <4 x float> nofpclass(nan inf) %i.bv) ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.050112.i, i64 64 ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader109.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

.lr.ph118.i:                                      ; preds = %.lr.ph118.i.preheader123, %.lr.ph118.i
  %.151117.i = phi ptr [ %i.by, %.lr.ph118.i ], [ %.151117.i.ph, %.lr.ph118.i.preheader123 ] ; 2 uses
  %.159116.i = phi i32 [ %i.ca, %.lr.ph118.i ], [ %.159116.i.ph, %.lr.ph118.i.preheader123 ]
  %.0105115.i = phi float [ %.sroa.speculated71.i, %.lr.ph118.i ], [ %.0105115.i.ph, %.lr.ph118.i.preheader123 ]
  %i.by = getelementptr inbounds nuw i8, ptr %.151117.i, i64 4
  %i.bz = load float, ptr %.151117.i, align 4, !tbaa !66
  %.sroa.speculated71.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.0105115.i, float %i.bz) ; 2 uses
  %i.ca = add nuw nsw i32 %.159116.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ca, %i.an
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph118.i, !llvm.loop !219

._crit_edge.i:                                    ; preds = %.lr.ph118.i, %middle.block116, %.preheader109.i
  %.0105.lcssa.i = phi float [ f0xFF7FFFFF, %.preheader109.i ], [ %i.bl, %middle.block116 ], [ %.sroa.speculated71.i, %.lr.ph118.i ] ; 3 uses
  %i.cb = icmp eq i32 %i.al, 1                    ; 2 uses
  br i1 %i.cb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.cc = shufflevector <4 x float> %.0101.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0101.lcssa.i, <4 x float> nofpclass(nan inf) %i.cc) ; 2 uses
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.cd, <4 x float> nofpclass(nan inf) %i.ce)
  %i.cg = extractelement <4 x float> %i.cf, i64 0 ; 2 uses
  %i.ch = fcmp fast olt float %.0105.lcssa.i, %i.cg
  %.sroa.speculated.i = select i1 %i.ch, float %i.cg, float %.0105.lcssa.i ; 2 uses
  %i.ci = insertelement <4 x float> poison, float %.sroa.speculated.i, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.1106.i = phi nsz float [ %.sroa.speculated.i, %bb.c ], [ %.0105.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.1102.i = phi nsz <4 x float> [ %i.cj, %bb.c ], [ %.0101.lcssa.i, %._crit_edge.i ]
  br i1 %i.ao, label %.lr.ph124.i, label %.preheader108.i

.preheader108.loopexit.i:                         ; preds = %.lr.ph124.i
  %i.ck = and i32 %i.an, 2147483644
  br label %.preheader108.i

.preheader108.i:                                  ; preds = %.preheader108.loopexit.i, %bb.d
  %.0103.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.ek, %.preheader108.loopexit.i ] ; 5 uses
  %.054.lcssa.i = phi ptr [ %.138, %bb.d ], [ %i.el, %.preheader108.loopexit.i ] ; 3 uses
  %.052.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.ck, %.preheader108.loopexit.i ] ; 4 uses
  %i.cl = icmp slt i32 %.052.lcssa.i, %i.an
  br i1 %i.cl, label %.lr.ph131.i.preheader, label %._crit_edge132.i

.lr.ph131.i.preheader:                            ; preds = %.preheader108.i
  %i.cm = xor i32 %.052.lcssa.i, -1
  %i.cn = add i32 %i.an, %i.cm                    ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check88 = icmp ult i32 %i.cn, 7
  br i1 %min.iters.check88, label %.lr.ph131.i.preheader122, label %vector.ph89

vector.ph89:                                      ; preds = %.lr.ph131.i.preheader
  %n.vec90 = and i64 %i.cp, 8589934584            ; 4 uses
  %i.cq = trunc i64 %n.vec90 to i32
  %i.cr = add i32 %.052.lcssa.i, %i.cq
  %i.cs = shl nuw nsw i64 %n.vec90, 2
  %i.ct = getelementptr i8, ptr %.054.lcssa.i, i64 %i.cs
  %broadcast.splatinsert91 = insertelement <4 x float> poison, float %.1106.i, i64 0
  %broadcast.splat92 = shufflevector <4 x float> %broadcast.splatinsert91, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph89
  %index94 = phi i64 [ 0, %vector.ph89 ], [ %index.next99, %vector.body93 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph89 ], [ %i.da, %vector.body93 ]
  %vec.phi95 = phi <4 x float> [ zeroinitializer, %vector.ph89 ], [ %i.db, %vector.body93 ]
  %i.cu = shl i64 %index94, 2
  %next.gep96 = getelementptr i8, ptr %.054.lcssa.i, i64 %i.cu ; 3 uses
  %i.cv = getelementptr i8, ptr %next.gep96, i64 16 ; 2 uses
  %wide.load97 = load <4 x float>, ptr %next.gep96, align 4, !tbaa !66
  %wide.load98 = load <4 x float>, ptr %i.cv, align 4, !tbaa !66
  %i.cw = fsub fast <4 x float> %wide.load97, %broadcast.splat92
  %i.cx = fsub fast <4 x float> %wide.load98, %broadcast.splat92
  %i.cy = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.cw) ; 2 uses
  %i.cz = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.cx) ; 2 uses
  store <4 x float> %i.cy, ptr %next.gep96, align 4, !tbaa !66
  store <4 x float> %i.cz, ptr %i.cv, align 4, !tbaa !66
  %i.da = fadd fast <4 x float> %i.cy, %vec.phi   ; 2 uses
  %i.db = fadd fast <4 x float> %i.cz, %vec.phi95 ; 2 uses
  %index.next99 = add nuw i64 %index94, 8         ; 2 uses
  %i.dc = icmp eq i64 %index.next99, %n.vec90
  br i1 %i.dc, label %middle.block100, label %vector.body93, !llvm.loop !220

middle.block100:                                  ; preds = %vector.body93
  %bin.rdx = fadd fast <4 x float> %i.db, %i.da
  %i.dd = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n101 = icmp eq i64 %i.cp, %n.vec90
  br i1 %cmp.n101, label %._crit_edge132.i, label %.lr.ph131.i.preheader122

.lr.ph131.i.preheader122:                         ; preds = %.lr.ph131.i.preheader, %middle.block100
  %.153130.i.ph = phi i32 [ %.052.lcssa.i, %.lr.ph131.i.preheader ], [ %i.cr, %middle.block100 ]
  %.155129.i.ph = phi ptr [ %.054.lcssa.i, %.lr.ph131.i.preheader ], [ %i.ct, %middle.block100 ]
  %.056128.i.ph = phi float [ 0.000000e+00, %.lr.ph131.i.preheader ], [ %i.dd, %middle.block100 ]
  br label %.lr.ph131.i

.lr.ph124.i:                                      ; preds = %bb.d, %.lr.ph124.i
  %.052122.i = phi i32 [ %i.em, %.lr.ph124.i ], [ 0, %bb.d ]
  %.054121.i = phi ptr [ %i.el, %.lr.ph124.i ], [ %.138, %bb.d ] ; 3 uses
  %.0103120.i = phi <4 x float> [ %i.ek, %.lr.ph124.i ], [ zeroinitializer, %bb.d ]
  %i.de = load <4 x float>, ptr %.054121.i, align 1, !tbaa !63
  %i.df = fsub fast <4 x float> %i.de, %.1102.i
  %i.dg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.df, <4 x float> splat (float f0x42B0C0A5))
  %i.dh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.di = fmul fast <4 x float> %i.dh, splat (float f0x3FB8AA3B)
  %i.dj = fadd fast <4 x float> %i.di, splat (float 5.000000e-01) ; 2 uses
  %i.dk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dj)
  %i.dl = sitofp fast <4 x i32> %i.dk to <4 x float> ; 2 uses
  %i.dm = fcmp fast olt <4 x float> %i.dj, %i.dl
  %i.dn = select <4 x i1> %i.dm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.do = fsub fast <4 x float> %i.dl, %i.dn      ; 2 uses
  %i.dp = fmul fast <4 x float> %i.do, splat (float f0x3F317218)
  %i.dq = fsub fast <4 x float> %i.dh, %i.dp      ; 8 uses
  %i.dr = fmul fast <4 x float> %i.dq, %i.dq
  %i.ds = fmul fast <4 x float> %i.dq, splat (float f0x39506967)
  %i.dt = fadd fast <4 x float> %i.ds, splat (float f0x3AB743CE)
  %i.du = fmul fast <4 x float> %i.dt, %i.dq
  %i.dv = fadd fast <4 x float> %i.du, splat (float f0x3C088908)
  %i.dw = fmul fast <4 x float> %i.dv, %i.dq
  %i.dx = fadd fast <4 x float> %i.dw, splat (float f0x3D2AA9C1)
  %i.dy = fmul fast <4 x float> %i.dx, %i.dq
  %i.dz = fadd fast <4 x float> %i.dy, splat (float f0x3E2AAAAA)
  %i.ea = fmul fast <4 x float> %i.dz, %i.dq
  %i.eb = fadd fast <4 x float> %i.ea, splat (float 5.000000e-01)
  %i.ec = fmul fast <4 x float> %i.dr, %i.eb
  %i.ed = fadd fast <4 x float> %i.dq, splat (float 1.000000e+00)
  %i.ee = fadd fast <4 x float> %i.ed, %i.ec
  %i.ef = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.do)
  %i.eg = shl <4 x i32> %i.ef, splat (i32 23)
  %i.eh = add <4 x i32> %i.eg, splat (i32 1065353216)
  %i.ei = bitcast <4 x i32> %i.eh to <4 x float>
  %i.ej = fmul fast <4 x float> %i.ee, %i.ei      ; 2 uses
  store <4 x float> %i.ej, ptr %.054121.i, align 1, !tbaa !63
  %i.ek = fadd fast <4 x float> %i.ej, %.0103120.i ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.054121.i, i64 16 ; 2 uses
  %i.em = add nuw nsw i32 %.052122.i, 4           ; 2 uses
  %i.en = or disjoint i32 %i.em, 3
  %i.eo = icmp slt i32 %i.en, %i.an
  br i1 %i.eo, label %.lr.ph124.i, label %.preheader108.loopexit.i, !llvm.loop !1

.lr.ph131.i:                                      ; preds = %.lr.ph131.i.preheader122, %.lr.ph131.i
  %.153130.i = phi i32 [ %i.eu, %.lr.ph131.i ], [ %.153130.i.ph, %.lr.ph131.i.preheader122 ]
  %.155129.i = phi ptr [ %i.et, %.lr.ph131.i ], [ %.155129.i.ph, %.lr.ph131.i.preheader122 ] ; 3 uses
  %.056128.i = phi float [ %i.es, %.lr.ph131.i ], [ %.056128.i.ph, %.lr.ph131.i.preheader122 ]
  %i.ep = load float, ptr %.155129.i, align 4, !tbaa !66
  %i.eq = fsub fast float %i.ep, %.1106.i
  %i.er = call fast float @llvm.exp.f32(float %i.eq) ; 2 uses
  store float %i.er, ptr %.155129.i, align 4, !tbaa !66
  %i.es = fadd fast float %i.er, %.056128.i       ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.155129.i, i64 4
  %i.eu = add nuw nsw i32 %.153130.i, 1           ; 2 uses
  %exitcond152.not.i = icmp eq i32 %i.eu, %i.an
  br i1 %exitcond152.not.i, label %._crit_edge132.i, label %.lr.ph131.i, !llvm.loop !221

._crit_edge132.i:                                 ; preds = %.lr.ph131.i, %middle.block100, %.preheader108.i
  %.056.lcssa.i = phi float [ 0.000000e+00, %.preheader108.i ], [ %i.dd, %middle.block100 ], [ %i.es, %.lr.ph131.i ] ; 3 uses
  %i.ev = icmp eq i32 %i.al, 4
  br i1 %i.ev, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %._crit_edge132.i
  %i.ew = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %.0103.lcssa.i) ; 2 uses
  %i.ex = fmul fast <4 x float> %i.ew, %.0103.lcssa.i
  %i.ey = fsub fast <4 x float> splat (float 2.000000e+00), %i.ex
  %i.ez = fmul fast <4 x float> %i.ey, %i.ew
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge132.i
  br i1 %i.cb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fa = shufflevector <4 x float> %.0103.lcssa.i, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.fb = shufflevector <4 x float> %.0103.lcssa.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.fc = fadd fast <2 x float> %i.fa, %i.fb
  %i.fd = call fast float @llvm.vector.reduce.fadd.v2f32(float %.056.lcssa.i, <2 x float> %i.fc)
  %i.fe = fdiv fast float 1.000000e+00, %i.fd     ; 2 uses
  %i.ff = insertelement <4 x float> poison, float %i.fe, i64 0
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.thread.i
  %.2.i = phi nsz <4 x float> [ %i.fg, %bb.f ], [ %.0103.lcssa.i, %bb.e ], [ %i.ez, %.thread.i ] ; 5 uses
  %.157.i = phi nsz float [ %i.fe, %bb.f ], [ %.056.lcssa.i, %bb.e ], [ %.056.lcssa.i, %.thread.i ] ; 2 uses
  br i1 %i.ao, label %.lr.ph137.i.preheader, label %.preheader.i

.lr.ph137.i.preheader:                            ; preds = %bb.g
  %i.fh = add nsw i32 %i.an, -4                   ; 2 uses
  %i.fi = lshr i32 %i.fh, 2
  %i.fj = add nuw nsw i32 %i.fi, 1                ; 2 uses
  %xtraiter139 = and i32 %i.fj, 3                 ; 3 uses
  %i.fk = icmp ult i32 %i.fh, 12
  br i1 %i.fk, label %.lr.ph137.i.epil.preheader, label %.lr.ph137.i.preheader.new

.lr.ph137.i.preheader.new:                        ; preds = %.lr.ph137.i.preheader
  %unroll_iter144 = and i32 %i.fj, 2147483644
  br label %.lr.ph137.i

.preheader.loopexit.i.unr-lcssa:                  ; preds = %.lr.ph137.i
  %lcmp.mod141.not = icmp eq i32 %xtraiter139, 0
  br i1 %lcmp.mod141.not, label %.preheader.loopexit.i, label %.lr.ph137.i.epil.preheader

.lr.ph137.i.epil.preheader:                       ; preds = %.preheader.loopexit.i.unr-lcssa, %.lr.ph137.i.preheader
  %.048134.i.epil.init = phi ptr [ %.138, %.lr.ph137.i.preheader ], [ %i.go, %.preheader.loopexit.i.unr-lcssa ]
  %lcmp.mod143 = icmp ne i32 %xtraiter139, 0
  call void @llvm.assume(i1 %lcmp.mod143)
  br label %.lr.ph137.i.epil

.lr.ph137.i.epil:                                 ; preds = %.lr.ph137.i.epil, %.lr.ph137.i.epil.preheader
  %.048134.i.epil = phi ptr [ %i.fn, %.lr.ph137.i.epil ], [ %.048134.i.epil.init, %.lr.ph137.i.epil.preheader ] ; 3 uses
  %epil.iter140 = phi i32 [ %epil.iter140.next, %.lr.ph137.i.epil ], [ 0, %.lr.ph137.i.epil.preheader ]
  %i.fl = load <4 x float>, ptr %.048134.i.epil, align 1, !tbaa !63
  %i.fm = fmul fast <4 x float> %i.fl, %.2.i
  store <4 x float> %i.fm, ptr %.048134.i.epil, align 1, !tbaa !63
  %i.fn = getelementptr inbounds nuw i8, ptr %.048134.i.epil, i64 16 ; 2 uses
  %epil.iter140.next = add i32 %epil.iter140, 1   ; 2 uses
  %epil.iter140.cmp.not = icmp eq i32 %epil.iter140.next, %xtraiter139
  br i1 %epil.iter140.cmp.not, label %.preheader.loopexit.i, label %.lr.ph137.i.epil, !llvm.loop !222

.preheader.loopexit.i:                            ; preds = %.lr.ph137.i.epil, %.preheader.loopexit.i.unr-lcssa
  %.lcssa132 = phi ptr [ %i.go, %.preheader.loopexit.i.unr-lcssa ], [ %i.fn, %.lr.ph137.i.epil ]
  %i.fo = and i32 %i.an, 2147483644
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.g
  %.048.lcssa.i = phi ptr [ %.138, %bb.g ], [ %.lcssa132, %.preheader.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.fo, %.preheader.loopexit.i ] ; 4 uses
  %i.fp = icmp slt i32 %.0.lcssa.i, %i.an
  br i1 %i.fp, label %.lr.ph142.i.preheader, label %_ZN4ncnnL7softmaxEPfii.exit

.lr.ph142.i.preheader:                            ; preds = %.preheader.i
  %i.fq = xor i32 %.0.lcssa.i, -1
  %i.fr = add i32 %i.an, %i.fq                    ; 2 uses
  %i.fs = zext i32 %i.fr to i64
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.fr, 7
  br i1 %min.iters.check, label %.lr.ph142.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph142.i.preheader
  %n.vec = and i64 %i.ft, 8589934584              ; 4 uses
  %i.fu = trunc i64 %n.vec to i32
  %i.fv = add i32 %.0.lcssa.i, %i.fu
  %i.fw = shl nuw nsw i64 %n.vec, 2
  %i.fx = getelementptr i8, ptr %.048.lcssa.i, i64 %i.fw
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.157.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fy = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.048.lcssa.i, i64 %i.fy ; 3 uses
  %i.fz = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !66
  %wide.load85 = load <4 x float>, ptr %i.fz, align 4, !tbaa !66
  %i.ga = fmul fast <4 x float> %wide.load, %broadcast.splat
  %i.gb = fmul fast <4 x float> %wide.load85, %broadcast.splat
  store <4 x float> %i.ga, ptr %next.gep, align 4, !tbaa !66
  store <4 x float> %i.gb, ptr %i.fz, align 4, !tbaa !66
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !223

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ft, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL7softmaxEPfii.exit, label %.lr.ph142.i.preheader121

.lr.ph142.i.preheader121:                         ; preds = %.lr.ph142.i.preheader, %middle.block
  %.1141.i.ph = phi i32 [ %.0.lcssa.i, %.lr.ph142.i.preheader ], [ %i.fv, %middle.block ]
  %.149140.i.ph = phi ptr [ %.048.lcssa.i, %.lr.ph142.i.preheader ], [ %i.fx, %middle.block ]
  br label %.lr.ph142.i

.lr.ph137.i:                                      ; preds = %.lr.ph137.i, %.lr.ph137.i.preheader.new
  %.048134.i = phi ptr [ %.138, %.lr.ph137.i.preheader.new ], [ %i.go, %.lr.ph137.i ] ; 6 uses
  %niter145 = phi i32 [ 0, %.lr.ph137.i.preheader.new ], [ %niter145.next.3, %.lr.ph137.i ]
  %i.gd = load <4 x float>, ptr %.048134.i, align 1, !tbaa !63
  %i.ge = fmul fast <4 x float> %i.gd, %.2.i
  store <4 x float> %i.ge, ptr %.048134.i, align 1, !tbaa !63
  %i.gf = getelementptr inbounds nuw i8, ptr %.048134.i, i64 16 ; 2 uses
  %i.gg = load <4 x float>, ptr %i.gf, align 1, !tbaa !63
  %i.gh = fmul fast <4 x float> %i.gg, %.2.i
  store <4 x float> %i.gh, ptr %i.gf, align 1, !tbaa !63
  %i.gi = getelementptr inbounds nuw i8, ptr %.048134.i, i64 32 ; 2 uses
  %i.gj = load <4 x float>, ptr %i.gi, align 1, !tbaa !63
  %i.gk = fmul fast <4 x float> %i.gj, %.2.i
  store <4 x float> %i.gk, ptr %i.gi, align 1, !tbaa !63
  %i.gl = getelementptr inbounds nuw i8, ptr %.048134.i, i64 48 ; 2 uses
  %i.gm = load <4 x float>, ptr %i.gl, align 1, !tbaa !63
  %i.gn = fmul fast <4 x float> %i.gm, %.2.i
  store <4 x float> %i.gn, ptr %i.gl, align 1, !tbaa !63
  %i.go = getelementptr inbounds nuw i8, ptr %.048134.i, i64 64 ; 3 uses
  %niter145.next.3 = add nuw nsw i32 %niter145, 4 ; 2 uses
  %niter145.ncmp.3.not = icmp eq i32 %niter145.next.3, %unroll_iter144
  br i1 %niter145.ncmp.3.not, label %.preheader.loopexit.i.unr-lcssa, label %.lr.ph137.i, !llvm.loop !2

.lr.ph142.i:                                      ; preds = %.lr.ph142.i.preheader121, %.lr.ph142.i
  %.1141.i = phi i32 [ %i.gs, %.lr.ph142.i ], [ %.1141.i.ph, %.lr.ph142.i.preheader121 ]
  %.149140.i = phi ptr [ %i.gp, %.lr.ph142.i ], [ %.149140.i.ph, %.lr.ph142.i.preheader121 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.149140.i, i64 4
  %i.gq = load float, ptr %.149140.i, align 4, !tbaa !66
  %i.gr = fmul fast float %i.gq, %.157.i
  store float %i.gr, ptr %.149140.i, align 4, !tbaa !66
  %i.gs = add nuw nsw i32 %.1141.i, 1             ; 2 uses
  %exitcond153.not.i = icmp eq i32 %i.gs, %i.an
  br i1 %exitcond153.not.i, label %_ZN4ncnnL7softmaxEPfii.exit, label %.lr.ph142.i, !llvm.loop !224

_ZN4ncnnL7softmaxEPfii.exit:                      ; preds = %.lr.ph142.i, %middle.block, %.preheader.i
  %i.gt = load i32, ptr %6, align 4, !tbaa !43    ; 2 uses
  %i.gu = load i32, ptr %7, align 4, !tbaa !43    ; 2 uses
  %i.gv = mul nsw i32 %i.gu, %i.gt
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %.138, i64 %i.gw ; 2 uses
  %i.gy = add nuw nsw i32 %.039, 1                ; 2 uses
  %i.gz = load i32, ptr %5, align 4, !tbaa !43    ; 2 uses
  %i.ha = icmp slt i32 %i.gy, %i.gz
  br i1 %i.ha, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !225

._crit_edge45:                                    ; preds = %._crit_edge42, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge45, %bb.a
  ret void
}

end_hunk_6
begin_hunk_7_@_ZN4ncnnL17softmax_bf16s_sseEPtii:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi173 = phi <4 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.ah, %vector.body ]
  %i.y = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.056.lcssa, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !82
  %wide.load174 = load <4 x i16>, ptr %i.z, align 2, !tbaa !82
  %i.aa = zext <4 x i16> %wide.load to <4 x i32>
  %i.ab = zext <4 x i16> %wide.load174 to <4 x i32>
  %i.ac = shl nuw <4 x i32> %i.aa, splat (i32 16)
  %i.ad = shl nuw <4 x i32> %i.ab, splat (i32 16)
  %i.ae = bitcast <4 x i32> %i.ac to <4 x float>
  %i.af = bitcast <4 x i32> %i.ad to <4 x float>
  %i.ag = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.ae) ; 2 uses
  %i.ah = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi173, <4 x float> %i.af) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !227

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ag, <4 x float> %i.ah)
  %i.aj = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph126.preheader215

.lr.ph126.preheader215:                           ; preds = %.lr.ph126.preheader, %middle.block
  %.157125.ph = phi ptr [ %.056.lcssa, %.lr.ph126.preheader ], [ %i.v, %middle.block ]
  %.159124.ph = phi i32 [ %.058.lcssa, %.lr.ph126.preheader ], [ %i.x, %middle.block ]
  %.0111123.ph = phi float [ f0xFF7FFFFF, %.lr.ph126.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph126

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.056120 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.ax, %.lr.ph ] ; 3 uses
  %.0109118 = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ak = load i64, ptr %.056120, align 1, !tbaa !63
  %i.al = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %i.am = bitcast <2 x i64> %i.al to <8 x i16>
  %i.an = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.am, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ao = bitcast <8 x i16> %i.an to <4 x float>
  %i.ap = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0109118, <4 x float> nofpclass(nan inf) %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %.056120, i64 8
  %i.ar = load i64, ptr %i.aq, align 1, !tbaa !63
  %i.as = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %i.at = bitcast <2 x i64> %i.as to <8 x i16>
  %i.au = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.at, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.av = bitcast <8 x i16> %i.au to <4 x float>
  %i.aw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ap, <4 x float> nofpclass(nan inf) %i.av) ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.056120, i64 16 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader117.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !12

.lr.ph126:                                        ; preds = %.lr.ph126.preheader215, %.lr.ph126
  %.157125 = phi ptr [ %i.ay, %.lr.ph126 ], [ %.157125.ph, %.lr.ph126.preheader215 ] ; 2 uses
  %.159124 = phi i32 [ %i.bd, %.lr.ph126 ], [ %.159124.ph, %.lr.ph126.preheader215 ]
  %.0111123 = phi float [ %.sroa.speculated75, %.lr.ph126 ], [ %.0111123.ph, %.lr.ph126.preheader215 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.157125, i64 2
  %i.az = load i16, ptr %.157125, align 2, !tbaa !82
  %i.ba = zext i16 %i.az to i32
  %i.bb = shl nuw i32 %i.ba, 16
  %i.bc = bitcast i32 %i.bb to float
  %.sroa.speculated75 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.0111123, float %i.bc) ; 2 uses
  %i.bd = add nuw nsw i32 %.159124, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph126, !llvm.loop !228

._crit_edge:                                      ; preds = %.lr.ph126, %middle.block, %.preheader117
  %.0111.lcssa = phi float [ f0xFF7FFFFF, %.preheader117 ], [ %i.aj, %middle.block ], [ %.sroa.speculated75, %.lr.ph126 ] ; 3 uses
  %i.be = icmp eq i32 %2, 1                       ; 2 uses
  br i1 %i.be, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.bf = shufflevector <4 x float> %.0109.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.bg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0109.lcssa, <4 x float> nofpclass(nan inf) %i.bf) ; 2 uses
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.bg, <4 x float> nofpclass(nan inf) %i.bh)
  %i.bj = extractelement <4 x float> %i.bi, i64 0 ; 2 uses
  %i.bk = fcmp fast olt float %.0111.lcssa, %i.bj
  %.sroa.speculated = select i1 %i.bk, float %i.bj, float %.0111.lcssa ; 2 uses
  %i.bl = insertelement <4 x float> poison, float %.sroa.speculated, i64 0
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1112 = phi nsz float [ %.sroa.speculated, %bb.b ], [ %.0111.lcssa, %._crit_edge ] ; 2 uses
  %.1110 = phi nsz <4 x float> [ %i.bm, %bb.b ], [ %.0109.lcssa, %._crit_edge ]
  br i1 %i.b, label %.lr.ph132, label %.preheader116

.preheader116.loopexit:                           ; preds = %.lr.ph132
  %i.bn = and i32 %i.a, 2147483644
  br label %.preheader116

.preheader116:                                    ; preds = %.preheader116.loopexit, %bb.c
  %.0113.lcssa = phi <4 x float> [ zeroinitializer, %bb.c ], [ %i.ej, %.preheader116.loopexit ] ; 5 uses
  %.052.lcssa = phi ptr [ %0, %bb.c ], [ %i.ek, %.preheader116.loopexit ] ; 3 uses
  %.050.lcssa = phi i32 [ 0, %bb.c ], [ %i.bn, %.preheader116.loopexit ] ; 4 uses
  %i.bo = icmp slt i32 %.050.lcssa, %i.a
  br i1 %i.bo, label %.lr.ph139.preheader, label %._crit_edge140

.lr.ph139.preheader:                              ; preds = %.preheader116
  %i.bp = xor i32 %.050.lcssa, -1
  %i.bq = add i32 %i.a, %i.bp                     ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check177 = icmp ult i32 %i.bq, 7
  br i1 %min.iters.check177, label %.lr.ph139.preheader209, label %vector.ph178

vector.ph178:                                     ; preds = %.lr.ph139.preheader
  %n.vec179 = and i64 %i.bs, 8589934584           ; 4 uses
  %i.bt = trunc i64 %n.vec179 to i32
  %i.bu = add i32 %.050.lcssa, %i.bt
  %i.bv = shl nuw nsw i64 %n.vec179, 1
  %i.bw = getelementptr i8, ptr %.052.lcssa, i64 %i.bv
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.1112, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next187, %vector.body180 ] ; 2 uses
  %vec.phi182 = phi <4 x float> [ zeroinitializer, %vector.ph178 ], [ %i.cp, %vector.body180 ]
  %vec.phi183 = phi <4 x float> [ zeroinitializer, %vector.ph178 ], [ %i.cq, %vector.body180 ]
  %i.bx = shl i64 %index181, 1
  %next.gep184 = getelementptr i8, ptr %.052.lcssa, i64 %i.bx ; 3 uses
  %i.by = getelementptr i8, ptr %next.gep184, i64 8 ; 2 uses
  %wide.load185 = load <4 x i16>, ptr %next.gep184, align 2, !tbaa !82
  %wide.load186 = load <4 x i16>, ptr %i.by, align 2, !tbaa !82
  %i.bz = zext <4 x i16> %wide.load185 to <4 x i32>
  %i.ca = zext <4 x i16> %wide.load186 to <4 x i32>
  %i.cb = shl nuw <4 x i32> %i.bz, splat (i32 16)
  %i.cc = shl nuw <4 x i32> %i.ca, splat (i32 16)
  %i.cd = bitcast <4 x i32> %i.cb to <4 x float>
  %i.ce = bitcast <4 x i32> %i.cc to <4 x float>
  %i.cf = fsub fast <4 x float> %i.cd, %broadcast.splat
  %i.cg = fsub fast <4 x float> %i.ce, %broadcast.splat
  %i.ch = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.cf) ; 2 uses
  %i.ci = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.cg) ; 2 uses
  %i.cj = bitcast <4 x float> %i.ch to <4 x i32>
  %i.ck = bitcast <4 x float> %i.ci to <4 x i32>
  %i.cl = lshr <4 x i32> %i.cj, splat (i32 16)
  %i.cm = lshr <4 x i32> %i.ck, splat (i32 16)
  %i.cn = trunc nuw nsw <4 x i32> %i.cl to <4 x i16>
  %i.co = trunc nuw nsw <4 x i32> %i.cm to <4 x i16>
  store <4 x i16> %i.cn, ptr %next.gep184, align 2, !tbaa !82
  store <4 x i16> %i.co, ptr %i.by, align 2, !tbaa !82
  %i.cp = fadd fast <4 x float> %i.ch, %vec.phi182 ; 2 uses
  %i.cq = fadd fast <4 x float> %i.ci, %vec.phi183 ; 2 uses
  %index.next187 = add nuw i64 %index181, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next187, %n.vec179
  br i1 %i.cr, label %middle.block188, label %vector.body180, !llvm.loop !229

middle.block188:                                  ; preds = %vector.body180
  %bin.rdx = fadd fast <4 x float> %i.cq, %i.cp
  %i.cs = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n189 = icmp eq i64 %i.bs, %n.vec179
  br i1 %cmp.n189, label %._crit_edge140, label %.lr.ph139.preheader209

.lr.ph139.preheader209:                           ; preds = %.lr.ph139.preheader, %middle.block188
  %.151138.ph = phi i32 [ %.050.lcssa, %.lr.ph139.preheader ], [ %i.bu, %middle.block188 ]
  %.153137.ph = phi ptr [ %.052.lcssa, %.lr.ph139.preheader ], [ %i.bw, %middle.block188 ]
  %.054136.ph = phi float [ 0.000000e+00, %.lr.ph139.preheader ], [ %i.cs, %middle.block188 ]
  br label %.lr.ph139

.lr.ph132:                                        ; preds = %bb.c, %.lr.ph132
  %.050130 = phi i32 [ %i.el, %.lr.ph132 ], [ 0, %bb.c ]
  %.052129 = phi ptr [ %i.ek, %.lr.ph132 ], [ %0, %bb.c ] ; 3 uses
  %.0113128 = phi <4 x float> [ %i.ej, %.lr.ph132 ], [ zeroinitializer, %bb.c ]
  %i.ct = load i64, ptr %.052129, align 1, !tbaa !63
  %i.cu = insertelement <2 x i64> poison, i64 %i.ct, i64 0
  %i.cv = bitcast <2 x i64> %i.cu to <8 x i16>
  %i.cw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cx = bitcast <8 x i16> %i.cw to <4 x float>
  %i.cy = fsub fast <4 x float> %i.cx, %.1110
  %i.cz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cy, <4 x float> splat (float f0x42B0C0A5))
  %i.da = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.db = fmul fast <4 x float> %i.da, splat (float f0x3FB8AA3B)
  %i.dc = fadd fast <4 x float> %i.db, splat (float 5.000000e-01) ; 2 uses
  %i.dd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dc)
  %i.de = sitofp fast <4 x i32> %i.dd to <4 x float> ; 2 uses
  %i.df = fcmp fast olt <4 x float> %i.dc, %i.de
  %i.dg = select <4 x i1> %i.df, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dh = fsub fast <4 x float> %i.de, %i.dg      ; 2 uses
  %i.di = fmul fast <4 x float> %i.dh, splat (float f0x3F317218)
  %i.dj = fsub fast <4 x float> %i.da, %i.di      ; 8 uses
  %i.dk = fmul fast <4 x float> %i.dj, %i.dj
  %i.dl = fmul fast <4 x float> %i.dj, splat (float f0x39506967)
  %i.dm = fadd fast <4 x float> %i.dl, splat (float f0x3AB743CE)
  %i.dn = fmul fast <4 x float> %i.dm, %i.dj
  %i.do = fadd fast <4 x float> %i.dn, splat (float f0x3C088908)
  %i.dp = fmul fast <4 x float> %i.do, %i.dj
  %i.dq = fadd fast <4 x float> %i.dp, splat (float f0x3D2AA9C1)
  %i.dr = fmul fast <4 x float> %i.dq, %i.dj
  %i.ds = fadd fast <4 x float> %i.dr, splat (float f0x3E2AAAAA)
  %i.dt = fmul fast <4 x float> %i.ds, %i.dj
  %i.du = fadd fast <4 x float> %i.dt, splat (float 5.000000e-01)
  %i.dv = fmul fast <4 x float> %i.dk, %i.du
  %i.dw = fadd fast <4 x float> %i.dj, splat (float 1.000000e+00)
  %i.dx = fadd fast <4 x float> %i.dw, %i.dv
  %i.dy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dh)
  %i.dz = shl <4 x i32> %i.dy, splat (i32 23)
  %i.ea = add <4 x i32> %i.dz, splat (i32 1065353216)
  %i.eb = bitcast <4 x i32> %i.ea to <4 x float>
  %i.ec = fmul fast <4 x float> %i.dx, %i.eb      ; 2 uses
  %i.ed = bitcast <4 x float> %i.ec to <8 x i16>
  %i.ee = shufflevector <8 x i16> %i.ed, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ef = bitcast <8 x i16> %i.ee to <4 x float>
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.eh = bitcast <4 x float> %i.eg to <2 x i64>
  %i.ei = extractelement <2 x i64> %i.eh, i64 0
  store i64 %i.ei, ptr %.052129, align 1, !tbaa !63
  %i.ej = fadd fast <4 x float> %i.ec, %.0113128  ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.052129, i64 8 ; 2 uses
  %i.el = add nuw nsw i32 %.050130, 4             ; 2 uses
  %i.em = or disjoint i32 %i.el, 3
  %i.en = icmp slt i32 %i.em, %i.a
  br i1 %i.en, label %.lr.ph132, label %.preheader116.loopexit, !llvm.loop !13

.lr.ph139:                                        ; preds = %.lr.ph139.preheader209, %.lr.ph139
  %.151138 = phi i32 [ %i.ez, %.lr.ph139 ], [ %.151138.ph, %.lr.ph139.preheader209 ]
  %.153137 = phi ptr [ %i.ey, %.lr.ph139 ], [ %.153137.ph, %.lr.ph139.preheader209 ] ; 3 uses
  %.054136 = phi float [ %i.ex, %.lr.ph139 ], [ %.054136.ph, %.lr.ph139.preheader209 ]
  %i.eo = load i16, ptr %.153137, align 2, !tbaa !82
  %i.ep = zext i16 %i.eo to i32
  %i.eq = shl nuw i32 %i.ep, 16
  %i.er = bitcast i32 %i.eq to float
  %i.es = fsub fast float %i.er, %.1112
  %i.et = tail call fast float @llvm.exp.f32(float %i.es) ; 2 uses
  %i.eu = bitcast float %i.et to i32
  %i.ev = lshr i32 %i.eu, 16
  %i.ew = trunc nuw nsw i32 %i.ev to i16
  store i16 %i.ew, ptr %.153137, align 2, !tbaa !82
  %i.ex = fadd fast float %i.et, %.054136         ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.153137, i64 2
  %i.ez = add nuw nsw i32 %.151138, 1             ; 2 uses
  %exitcond160.not = icmp eq i32 %i.ez, %i.a
  br i1 %exitcond160.not, label %._crit_edge140, label %.lr.ph139, !llvm.loop !230

._crit_edge140:                                   ; preds = %.lr.ph139, %middle.block188, %.preheader116
  %.054.lcssa = phi float [ 0.000000e+00, %.preheader116 ], [ %i.cs, %middle.block188 ], [ %i.ex, %.lr.ph139 ] ; 3 uses
  %i.fa = icmp eq i32 %2, 4
  br i1 %i.fa, label %.thread, label %bb.d

.thread:                                          ; preds = %._crit_edge140
  %i.fb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %.0113.lcssa) ; 2 uses
  %i.fc = fmul fast <4 x float> %i.fb, %.0113.lcssa
  %i.fd = fsub fast <4 x float> splat (float 2.000000e+00), %i.fc
  %i.fe = fmul fast <4 x float> %i.fd, %i.fb
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge140
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ff = shufflevector <4 x float> %.0113.lcssa, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.fg = shufflevector <4 x float> %.0113.lcssa, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.fh = fadd fast <2 x float> %i.ff, %i.fg
  %i.fi = tail call fast float @llvm.vector.reduce.fadd.v2f32(float %.054.lcssa, <2 x float> %i.fh)
  %i.fj = fdiv fast float 1.000000e+00, %i.fi     ; 2 uses
  %i.fk = insertelement <4 x float> poison, float %i.fj, i64 0
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %bb.d
  %.2 = phi nsz <4 x float> [ %i.fl, %bb.e ], [ %.0113.lcssa, %bb.d ], [ %i.fe, %.thread ]
  %.155 = phi nsz float [ %i.fj, %bb.e ], [ %.054.lcssa, %bb.d ], [ %.054.lcssa, %.thread ] ; 2 uses
  br i1 %i.b, label %.lr.ph145, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph145
  %i.fm = and i32 %i.a, 2147483644
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.f
  %.048.lcssa = phi ptr [ %0, %bb.f ], [ %i.gr, %.preheader.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %bb.f ], [ %i.fm, %.preheader.loopexit ] ; 4 uses
  %i.fn = icmp slt i32 %.0.lcssa, %i.a
  br i1 %i.fn, label %.lr.ph150.preheader, label %._crit_edge151

.lr.ph150.preheader:                              ; preds = %.preheader
  %i.fo = xor i32 %.0.lcssa, -1
  %i.fp = add i32 %i.a, %i.fo                     ; 2 uses
  %i.fq = zext i32 %i.fp to i64
  %i.fr = add nuw nsw i64 %i.fq, 1                ; 2 uses
  %min.iters.check194 = icmp ult i32 %i.fp, 7
  br i1 %min.iters.check194, label %.lr.ph150.preheader208, label %vector.ph195

vector.ph195:                                     ; preds = %.lr.ph150.preheader
  %n.vec196 = and i64 %i.fr, 8589934584           ; 4 uses
  %i.fs = trunc i64 %n.vec196 to i32
  %i.ft = add i32 %.0.lcssa, %i.fs
  %i.fu = shl nuw nsw i64 %n.vec196, 1
  %i.fv = getelementptr i8, ptr %.048.lcssa, i64 %i.fu
  %broadcast.splatinsert197 = insertelement <8 x float> poison, float %.155, i64 0
  %broadcast.splat198 = shufflevector <8 x float> %broadcast.splatinsert197, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph195
  %index200 = phi i64 [ 0, %vector.ph195 ], [ %index.next203, %vector.body199 ] ; 2 uses
  %i.fw = shl i64 %index200, 1
  %next.gep201 = getelementptr i8, ptr %.048.lcssa, i64 %i.fw ; 2 uses
  %wide.load202 = load <8 x i16>, ptr %next.gep201, align 2, !tbaa !82
  %i.fx = zext <8 x i16> %wide.load202 to <8 x i32>
  %i.fy = shl nuw <8 x i32> %i.fx, splat (i32 16)
  %i.fz = bitcast <8 x i32> %i.fy to <8 x float>
  %i.ga = fmul fast <8 x float> %broadcast.splat198, %i.fz
  %i.gb = bitcast <8 x float> %i.ga to <8 x i32>
  %i.gc = lshr <8 x i32> %i.gb, splat (i32 16)
  %i.gd = trunc nuw <8 x i32> %i.gc to <8 x i16>
  store <8 x i16> %i.gd, ptr %next.gep201, align 2, !tbaa !82
  %index.next203 = add nuw i64 %index200, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next203, %n.vec196
  br i1 %i.ge, label %middle.block204, label %vector.body199, !llvm.loop !231

middle.block204:                                  ; preds = %vector.body199
  %cmp.n205 = icmp eq i64 %i.fr, %n.vec196
  br i1 %cmp.n205, label %._crit_edge151, label %.lr.ph150.preheader208

.lr.ph150.preheader208:                           ; preds = %.lr.ph150.preheader, %middle.block204
  %.1149.ph = phi i32 [ %.0.lcssa, %.lr.ph150.preheader ], [ %i.ft, %middle.block204 ]
  %.149148.ph = phi ptr [ %.048.lcssa, %.lr.ph150.preheader ], [ %i.fv, %middle.block204 ]
  br label %.lr.ph150

.lr.ph145:                                        ; preds = %bb.f, %.lr.ph145
  %.0143 = phi i32 [ %i.gs, %.lr.ph145 ], [ 0, %bb.f ]
  %.048142 = phi ptr [ %i.gr, %.lr.ph145 ], [ %0, %bb.f ] ; 3 uses
  %i.gf = load i64, ptr %.048142, align 1, !tbaa !63
  %i.gg = insertelement <2 x i64> poison, i64 %i.gf, i64 0
  %i.gh = bitcast <2 x i64> %i.gg to <8 x i16>
  %i.gi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gj = bitcast <8 x i16> %i.gi to <4 x float>
  %i.gk = fmul fast <4 x float> %.2, %i.gj
  %i.gl = bitcast <4 x float> %i.gk to <8 x i16>
  %i.gm = shufflevector <8 x i16> %i.gl, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.gn = bitcast <8 x i16> %i.gm to <4 x float>
  %i.go = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.gp = bitcast <4 x float> %i.go to <2 x i64>
  %i.gq = extractelement <2 x i64> %i.gp, i64 0
  store i64 %i.gq, ptr %.048142, align 1, !tbaa !63
  %i.gr = getelementptr inbounds nuw i8, ptr %.048142, i64 8 ; 2 uses
  %i.gs = add nuw nsw i32 %.0143, 4               ; 2 uses
  %i.gt = or disjoint i32 %i.gs, 3
  %i.gu = icmp slt i32 %i.gt, %i.a
  br i1 %i.gu, label %.lr.ph145, label %.preheader.loopexit, !llvm.loop !14

.lr.ph150:                                        ; preds = %.lr.ph150.preheader208, %.lr.ph150
  %.1149 = phi i32 [ %i.he, %.lr.ph150 ], [ %.1149.ph, %.lr.ph150.preheader208 ]
  %.149148 = phi ptr [ %i.hd, %.lr.ph150 ], [ %.149148.ph, %.lr.ph150.preheader208 ] ; 3 uses
  %i.gv = load i16, ptr %.149148, align 2, !tbaa !82
  %i.gw = zext i16 %i.gv to i32
  %i.gx = shl nuw i32 %i.gw, 16
  %i.gy = bitcast i32 %i.gx to float
  %i.gz = fmul fast float %.155, %i.gy
  %i.ha = bitcast float %i.gz to i32
  %i.hb = lshr i32 %i.ha, 16
  %i.hc = trunc nuw i32 %i.hb to i16
  store i16 %i.hc, ptr %.149148, align 2, !tbaa !82
  %i.hd = getelementptr inbounds nuw i8, ptr %.149148, i64 2
  %i.he = add nuw nsw i32 %.1149, 1               ; 2 uses
  %exitcond161.not = icmp eq i32 %i.he, %i.a
  br i1 %exitcond161.not, label %._crit_edge151, label %.lr.ph150, !llvm.loop !232

._crit_edge151:                                   ; preds = %.lr.ph150, %middle.block204, %.preheader
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Softmax_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !43     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !43
  %i.h = load i32, ptr %0, align 4, !tbaa !43     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !43
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !43
  %i.k = load i32, ptr %i.a, align 4, !tbaa !43   ; 2 uses
  %.not35 = icmp sgt i32 %i.k, %i.j
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.c
end_hunk_7
begin_hunk_8_@_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_:bb.a
  br i1 %min.iters.check, label %.lr.ph67.preheader216, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph67.preheader
  %n.vec = and i64 %i.l, 8589934584               ; 4 uses
  %i.m = trunc i64 %n.vec to i32
  %i.n = add i32 %.037.lcssa, %i.m
  %i.o = shl nuw nsw i64 %n.vec, 2
  %i.p = getelementptr i8, ptr %.039.lcssa, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.039.lcssa, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %next.gep, align 4, !tbaa !66
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.r, align 4, !tbaa !66
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.preheader52, label %.lr.ph67.preheader216

.lr.ph67.preheader216:                            ; preds = %.lr.ph67.preheader, %middle.block
  %.13866.ph = phi i32 [ %.037.lcssa, %.lr.ph67.preheader ], [ %i.n, %middle.block ]
  %.14065.ph = phi ptr [ %.039.lcssa, %.lr.ph67.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03962 = phi ptr [ %5, %.lr.ph.preheader.new ], [ %i.aa, %.lr.ph ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  store <4 x float> splat (float f0xFF7FFFFF), ptr %.03962, align 1, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %.03962, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.t, align 1, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %.03962, i64 32
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.u, align 1, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %.03962, i64 48
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.v, align 1, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %.03962, i64 64
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.w, align 1, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %.03962, i64 80
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.x, align 1, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %.03962, i64 96
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.y, align 1, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %.03962, i64 112
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.z, align 1, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %.03962, i64 128 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %.preheader53.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !15

.preheader52:                                     ; preds = %.lr.ph67, %middle.block, %.preheader53
  br i1 %i.a, label %.lr.ph70.preheader, label %.preheader

.lr.ph70.preheader:                               ; preds = %.preheader52
  %i.ab = add nsw i32 %4, -4                      ; 2 uses
  %i.ac = lshr i32 %i.ab, 2
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 4
  %i.af = add nuw nsw i64 %i.ae, 16               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %6, i8 0, i64 %i.af, i1 false), !tbaa !63
  %scevgep = getelementptr i8, ptr %6, i64 %i.af
  %i.ag = and i32 %i.ab, -4
  %i.ah = add nuw nsw i32 %i.ag, 4
  br label %.preheader

.lr.ph67:                                         ; preds = %.lr.ph67.preheader216, %.lr.ph67
  %.13866 = phi i32 [ %i.aj, %.lr.ph67 ], [ %.13866.ph, %.lr.ph67.preheader216 ]
  %.14065 = phi ptr [ %i.ai, %.lr.ph67 ], [ %.14065.ph, %.lr.ph67.preheader216 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.14065, i64 4
  store float f0xFF7FFFFF, ptr %.14065, align 4, !tbaa !66
  %i.aj = add nuw nsw i32 %.13866, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.aj, %4
  br i1 %exitcond.not, label %.preheader52, label %.lr.ph67, !llvm.loop !238

.preheader:                                       ; preds = %.lr.ph70.preheader, %.preheader52
  %.035.lcssa = phi ptr [ %6, %.preheader52 ], [ %scevgep, %.lr.ph70.preheader ]
  %.0.lcssa = phi i32 [ 0, %.preheader52 ], [ %i.ah, %.lr.ph70.preheader ] ; 2 uses
  %i.ak = icmp slt i32 %.0.lcssa, %4
  br i1 %i.ak, label %.lr.ph75.preheader, label %._crit_edge

.lr.ph75.preheader:                               ; preds = %.preheader
  %i.al = xor i32 %.0.lcssa, -1
  %i.am = add nsw i32 %4, %i.al
  %i.an = zext i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.035.lcssa, i8 0, i64 %i.ap, i1 false), !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph75.preheader, %.preheader
  switch i32 %2, label %_ZN4ncnnL23softmax_bf16s_pack4_sseEPtimiPfS1_.exit [
    i32 4, label %bb.b
    i32 1, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge
  %i.aq = icmp sgt i32 %1, 0
  %i.ar = icmp sgt i32 %4, 0
  %or.cond.i = and i1 %i.aq, %i.ar                ; 2 uses
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %.preheader118.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.as = mul i64 %indvars.iv.i, %3
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.as
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.069122.i = phi ptr [ %i.at, %.lr.ph.i ], [ %i.bg, %bb.c ] ; 2 uses
  %.075121.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bi, %bb.c ]
  %.076120.i = phi ptr [ %5, %.lr.ph.i ], [ %i.bh, %bb.c ] ; 3 uses
  %i.au = load i64, ptr %.069122.i, align 1, !tbaa !63
  %i.av = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %i.aw = bitcast <2 x i64> %i.av to <8 x i16>
  %i.ax = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ay = bitcast <8 x i16> %i.ax to <4 x float>  ; 2 uses
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ba = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ay, <4 x float> nofpclass(nan inf) %i.az) ; 2 uses
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ba, <4 x float> nofpclass(nan inf) %i.bb)
  %i.bd = extractelement <4 x float> %i.bc, i64 0 ; 2 uses
  %i.be = load float, ptr %.076120.i, align 4, !tbaa !66 ; 2 uses
  %i.bf = fcmp fast olt float %i.be, %i.bd
  %.sroa.speculated.i = select i1 %i.bf, float %i.bd, float %i.be
  store float %.sroa.speculated.i, ptr %.076120.i, align 4, !tbaa !66
  %i.bg = getelementptr inbounds nuw i8, ptr %.069122.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.076120.i, i64 4
  %i.bi = add nuw nsw i32 %.075121.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bi, %4
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !239

._crit_edge.i:                                    ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond155.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond155.not.i, label %.lr.ph131.i, label %.lr.ph.i, !llvm.loop !240

.preheader118.i:                                  ; preds = %._crit_edge132.i, %bb.b
  br i1 %i.a, label %.lr.ph137.i.preheader, label %.preheader117.i

.lr.ph137.i.preheader:                            ; preds = %.preheader118.i
  %i.bj = add nsw i32 %4, -4                      ; 2 uses
  %i.bk = lshr i32 %i.bj, 2                       ; 2 uses
  %i.bl = add nuw nsw i32 %i.bk, 1                ; 2 uses
  %i.bm = icmp eq i32 %i.bk, 0
  br i1 %i.bm, label %.lr.ph137.i.epil.preheader, label %.lr.ph137.i.preheader.new

.lr.ph137.i.preheader.new:                        ; preds = %.lr.ph137.i.preheader
  %unroll_iter234 = and i32 %i.bl, 2147483646
  br label %.lr.ph137.i

.lr.ph131.i:                                      ; preds = %._crit_edge.i, %._crit_edge132.i
  %indvars.iv157.i = phi i64 [ %indvars.iv.next158.i, %._crit_edge132.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.bn = mul i64 %indvars.iv157.i, %3
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bn
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph131.i
  %.070129.i = phi i32 [ 0, %.lr.ph131.i ], [ %i.ds, %bb.d ]
  %.071128.i = phi ptr [ %6, %.lr.ph131.i ], [ %i.dr, %bb.d ] ; 3 uses
  %.072127.i = phi ptr [ %5, %.lr.ph131.i ], [ %i.dq, %bb.d ] ; 2 uses
  %.073126.i = phi ptr [ %i.bo, %.lr.ph131.i ], [ %i.dp, %bb.d ] ; 3 uses
  %i.bp = load i64, ptr %.073126.i, align 1, !tbaa !63
  %i.bq = insertelement <2 x i64> poison, i64 %i.bp, i64 0
  %i.br = bitcast <2 x i64> %i.bq to <8 x i16>
  %i.bs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.br, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bt = bitcast <8 x i16> %i.bs to <4 x float>
  %i.bu = load float, ptr %.072127.i, align 4, !tbaa !66
  %i.bv = insertelement <4 x float> poison, float %i.bu, i64 0
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = fsub fast <4 x float> %i.bt, %i.bw
  %i.by = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bx, <4 x float> splat (float f0x42B0C0A5))
  %i.bz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.by, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ca = fmul fast <4 x float> %i.bz, splat (float f0x3FB8AA3B)
  %i.cb = fadd fast <4 x float> %i.ca, splat (float 5.000000e-01) ; 2 uses
  %i.cc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cb)
  %i.cd = sitofp fast <4 x i32> %i.cc to <4 x float> ; 2 uses
  %i.ce = fcmp fast olt <4 x float> %i.cb, %i.cd
  %i.cf = select <4 x i1> %i.ce, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cg = fsub fast <4 x float> %i.cd, %i.cf      ; 2 uses
  %i.ch = fmul fast <4 x float> %i.cg, splat (float f0x3F317218)
  %i.ci = fsub fast <4 x float> %i.bz, %i.ch      ; 8 uses
  %i.cj = fmul fast <4 x float> %i.ci, %i.ci
  %i.ck = fmul fast <4 x float> %i.ci, splat (float f0x39506967)
  %i.cl = fadd fast <4 x float> %i.ck, splat (float f0x3AB743CE)
  %i.cm = fmul fast <4 x float> %i.cl, %i.ci
  %i.cn = fadd fast <4 x float> %i.cm, splat (float f0x3C088908)
  %i.co = fmul fast <4 x float> %i.cn, %i.ci
  %i.cp = fadd fast <4 x float> %i.co, splat (float f0x3D2AA9C1)
  %i.cq = fmul fast <4 x float> %i.cp, %i.ci
  %i.cr = fadd fast <4 x float> %i.cq, splat (float f0x3E2AAAAA)
  %i.cs = fmul fast <4 x float> %i.cr, %i.ci
  %i.ct = fadd fast <4 x float> %i.cs, splat (float 5.000000e-01)
  %i.cu = fmul fast <4 x float> %i.cj, %i.ct
  %i.cv = fadd fast <4 x float> %i.ci, splat (float 1.000000e+00)
  %i.cw = fadd fast <4 x float> %i.cv, %i.cu
  %i.cx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cg)
  %i.cy = shl <4 x i32> %i.cx, splat (i32 23)
  %i.cz = add <4 x i32> %i.cy, splat (i32 1065353216)
  %i.da = bitcast <4 x i32> %i.cz to <4 x float>
  %i.db = fmul fast <4 x float> %i.cw, %i.da      ; 3 uses
  %i.dc = bitcast <4 x float> %i.db to <8 x i16>
  %i.dd = shufflevector <8 x i16> %i.dc, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.de = bitcast <8 x i16> %i.dd to <4 x float>
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.dg = bitcast <4 x float> %i.df to <2 x i64>
  %i.dh = extractelement <2 x i64> %i.dg, i64 0
  store i64 %i.dh, ptr %.073126.i, align 1, !tbaa !63
  %i.di = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.dj = fadd fast <4 x float> %i.di, %i.db      ; 2 uses
  %i.dk = extractelement <4 x float> %i.dj, i64 1
  %i.dl = extractelement <4 x float> %i.dj, i64 0
  %i.dm = load float, ptr %.071128.i, align 4, !tbaa !66
  %i.dn = fadd fast float %i.dk, %i.dm
  %i.do = fadd fast float %i.dn, %i.dl
  store float %i.do, ptr %.071128.i, align 4, !tbaa !66
  %i.dp = getelementptr inbounds nuw i8, ptr %.073126.i, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.072127.i, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %.071128.i, i64 4
  %i.ds = add nuw nsw i32 %.070129.i, 1           ; 2 uses
  %exitcond156.not.i = icmp eq i32 %i.ds, %4
  br i1 %exitcond156.not.i, label %._crit_edge132.i, label %bb.d, !llvm.loop !241

._crit_edge132.i:                                 ; preds = %bb.d
  %indvars.iv.next158.i = add nuw nsw i64 %indvars.iv157.i, 1 ; 2 uses
  %exitcond161.not.i = icmp eq i64 %indvars.iv.next158.i, %wide.trip.count.i
  br i1 %exitcond161.not.i, label %.preheader118.i, label %.lr.ph131.i, !llvm.loop !242

.preheader117.loopexit.i.unr-lcssa:               ; preds = %.lr.ph137.i
  %i.dt = and i32 %i.bj, 4
  %lcmp.mod231.not.not = icmp eq i32 %i.dt, 0
  br i1 %lcmp.mod231.not.not, label %.lr.ph137.i.epil.preheader, label %.preheader117.loopexit.i

.lr.ph137.i.epil.preheader:                       ; preds = %.preheader117.loopexit.i.unr-lcssa, %.lr.ph137.i.preheader
  %.067135.i.epil.init = phi ptr [ %6, %.lr.ph137.i.preheader ], [ %i.ey, %.preheader117.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod233 = trunc i32 %i.bl to i1
  tail call void @llvm.assume(i1 %lcmp.mod233)
  %i.du = load <4 x float>, ptr %.067135.i.epil.init, align 1, !tbaa !63 ; 2 uses
  %i.dv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.du) ; 2 uses
  %i.dw = fmul fast <4 x float> %i.dv, %i.du
  %i.dx = fsub fast <4 x float> splat (float 2.000000e+00), %i.dw
  %i.dy = fmul fast <4 x float> %i.dx, %i.dv
  store <4 x float> %i.dy, ptr %.067135.i.epil.init, align 1, !tbaa !63
  %i.dz = getelementptr inbounds nuw i8, ptr %.067135.i.epil.init, i64 16
  br label %.preheader117.loopexit.i

.preheader117.loopexit.i:                         ; preds = %.preheader117.loopexit.i.unr-lcssa, %.lr.ph137.i.epil.preheader
  %.lcssa = phi ptr [ %i.ey, %.preheader117.loopexit.i.unr-lcssa ], [ %i.dz, %.lr.ph137.i.epil.preheader ]
  %i.ea = and i32 %4, 2147483644
  br label %.preheader117.i

.preheader117.i:                                  ; preds = %.preheader117.loopexit.i, %.preheader118.i
  %.067.lcssa.i = phi ptr [ %6, %.preheader118.i ], [ %.lcssa, %.preheader117.loopexit.i ] ; 3 uses
  %.066.lcssa.i = phi i32 [ 0, %.preheader118.i ], [ %i.ea, %.preheader117.loopexit.i ] ; 4 uses
  %i.eb = icmp slt i32 %.066.lcssa.i, %4
  br i1 %i.eb, label %.lr.ph141.i.preheader, label %.preheader.i

.lr.ph141.i.preheader:                            ; preds = %.preheader117.i
  %i.ec = xor i32 %.066.lcssa.i, -1
  %i.ed = add i32 %4, %i.ec                       ; 2 uses
  %i.ee = zext i32 %i.ed to i64
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %min.iters.check189 = icmp ult i32 %i.ed, 3
  br i1 %min.iters.check189, label %.lr.ph141.i.preheader201, label %vector.ph190

vector.ph190:                                     ; preds = %.lr.ph141.i.preheader
  %n.vec191 = and i64 %i.ef, 8589934588           ; 4 uses
  %i.eg = trunc i64 %n.vec191 to i32
  %i.eh = add i32 %.066.lcssa.i, %i.eg
  %i.ei = shl nuw nsw i64 %n.vec191, 2
  %i.ej = getelementptr i8, ptr %.067.lcssa.i, i64 %i.ei
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next196, %vector.body192 ] ; 2 uses
  %i.ek = shl i64 %index193, 2
  %next.gep194 = getelementptr i8, ptr %.067.lcssa.i, i64 %i.ek ; 2 uses
  %wide.load195 = load <4 x float>, ptr %next.gep194, align 4, !tbaa !66
  %i.el = fdiv fast <4 x float> splat (float 1.000000e+00), %wide.load195
  store <4 x float> %i.el, ptr %next.gep194, align 4, !tbaa !66
  %index.next196 = add nuw i64 %index193, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next196, %n.vec191
  br i1 %i.em, label %middle.block197, label %vector.body192, !llvm.loop !243

middle.block197:                                  ; preds = %vector.body192
  %cmp.n198 = icmp eq i64 %i.ef, %n.vec191
  br i1 %cmp.n198, label %.preheader.i, label %.lr.ph141.i.preheader201

.lr.ph141.i.preheader201:                         ; preds = %.lr.ph141.i.preheader, %middle.block197
  %.1140.i.ph = phi i32 [ %.066.lcssa.i, %.lr.ph141.i.preheader ], [ %i.eh, %middle.block197 ]
  %.168139.i.ph = phi ptr [ %.067.lcssa.i, %.lr.ph141.i.preheader ], [ %i.ej, %middle.block197 ]
  br label %.lr.ph141.i

.lr.ph137.i:                                      ; preds = %.lr.ph137.i, %.lr.ph137.i.preheader.new
  %.067135.i = phi ptr [ %6, %.lr.ph137.i.preheader.new ], [ %i.ey, %.lr.ph137.i ] ; 4 uses
  %niter235 = phi i32 [ 0, %.lr.ph137.i.preheader.new ], [ %niter235.next.1, %.lr.ph137.i ]
  %i.en = load <4 x float>, ptr %.067135.i, align 1, !tbaa !63 ; 2 uses
  %i.eo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.en) ; 2 uses
  %i.ep = fmul fast <4 x float> %i.eo, %i.en
  %i.eq = fsub fast <4 x float> splat (float 2.000000e+00), %i.ep
  %i.er = fmul fast <4 x float> %i.eq, %i.eo
  store <4 x float> %i.er, ptr %.067135.i, align 1, !tbaa !63
  %i.es = getelementptr inbounds nuw i8, ptr %.067135.i, i64 16 ; 2 uses
  %i.et = load <4 x float>, ptr %i.es, align 1, !tbaa !63 ; 2 uses
  %i.eu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.et) ; 2 uses
  %i.ev = fmul fast <4 x float> %i.eu, %i.et
  %i.ew = fsub fast <4 x float> splat (float 2.000000e+00), %i.ev
  %i.ex = fmul fast <4 x float> %i.ew, %i.eu
  store <4 x float> %i.ex, ptr %i.es, align 1, !tbaa !63
  %i.ey = getelementptr inbounds nuw i8, ptr %.067135.i, i64 32 ; 3 uses
  %niter235.next.1 = add i32 %niter235, 2         ; 2 uses
  %niter235.ncmp.1.not = icmp eq i32 %niter235.next.1, %unroll_iter234
  br i1 %niter235.ncmp.1.not, label %.preheader117.loopexit.i.unr-lcssa, label %.lr.ph137.i, !llvm.loop !244

.preheader.i:                                     ; preds = %.lr.ph141.i, %middle.block197, %.preheader117.i
  br i1 %or.cond.i, label %.lr.ph146.preheader.i, label %_ZN4ncnnL23softmax_bf16s_pack4_sseEPtimiPfS1_.exit

.lr.ph146.preheader.i:                            ; preds = %.preheader.i
  %wide.trip.count167.i = zext nneg i32 %1 to i64
  br label %.lr.ph146.i

.lr.ph141.i:                                      ; preds = %.lr.ph141.i.preheader201, %.lr.ph141.i
  %.1140.i = phi i32 [ %i.fc, %.lr.ph141.i ], [ %.1140.i.ph, %.lr.ph141.i.preheader201 ]
  %.168139.i = phi ptr [ %i.fb, %.lr.ph141.i ], [ %.168139.i.ph, %.lr.ph141.i.preheader201 ] ; 3 uses
  %i.ez = load float, ptr %.168139.i, align 4, !tbaa !66
  %i.fa = fdiv fast float 1.000000e+00, %i.ez
  store float %i.fa, ptr %.168139.i, align 4, !tbaa !66
  %i.fb = getelementptr inbounds nuw i8, ptr %.168139.i, i64 4
  %i.fc = add nuw nsw i32 %.1140.i, 1             ; 2 uses
  %exitcond162.not.i = icmp eq i32 %i.fc, %4
  br i1 %exitcond162.not.i, label %.preheader.i, label %.lr.ph141.i, !llvm.loop !245

.lr.ph146.i:                                      ; preds = %._crit_edge147.i, %.lr.ph146.preheader.i
  %indvars.iv164.i = phi i64 [ 0, %.lr.ph146.preheader.i ], [ %indvars.iv.next165.i, %._crit_edge147.i ] ; 2 uses
  %i.fd = mul i64 %indvars.iv164.i, %3
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.fd
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph146.i
  %.062144.i = phi i32 [ 0, %.lr.ph146.i ], [ %i.fw, %bb.e ]
  %.063143.i = phi ptr [ %6, %.lr.ph146.i ], [ %i.fv, %bb.e ] ; 2 uses
  %.064142.i = phi ptr [ %i.fe, %.lr.ph146.i ], [ %i.fu, %bb.e ] ; 3 uses
  %i.ff = load i64, ptr %.064142.i, align 1, !tbaa !63
  %i.fg = insertelement <2 x i64> poison, i64 %i.ff, i64 0
  %i.fh = bitcast <2 x i64> %i.fg to <8 x i16>
  %i.fi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fj = bitcast <8 x i16> %i.fi to <4 x float>
  %i.fk = load float, ptr %.063143.i, align 4, !tbaa !66
  %i.fl = insertelement <4 x float> poison, float %i.fk, i64 0
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fn = fmul fast <4 x float> %i.fm, %i.fj
  %i.fo = bitcast <4 x float> %i.fn to <8 x i16>
  %i.fp = shufflevector <8 x i16> %i.fo, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.fq = bitcast <8 x i16> %i.fp to <4 x float>
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.fs = bitcast <4 x float> %i.fr to <2 x i64>
  %i.ft = extractelement <2 x i64> %i.fs, i64 0
  store i64 %i.ft, ptr %.064142.i, align 1, !tbaa !63
  %i.fu = getelementptr inbounds nuw i8, ptr %.064142.i, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.063143.i, i64 4
  %i.fw = add nuw nsw i32 %.062144.i, 1           ; 2 uses
  %exitcond163.not.i = icmp eq i32 %i.fw, %4
  br i1 %exitcond163.not.i, label %._crit_edge147.i, label %bb.e, !llvm.loop !246

._crit_edge147.i:                                 ; preds = %bb.e
  %indvars.iv.next165.i = add nuw nsw i64 %indvars.iv164.i, 1 ; 2 uses
  %exitcond168.not.i = icmp eq i64 %indvars.iv.next165.i, %wide.trip.count167.i
  br i1 %exitcond168.not.i, label %_ZN4ncnnL23softmax_bf16s_pack4_sseEPtimiPfS1_.exit, label %.lr.ph146.i, !llvm.loop !247

bb.f:                                             ; preds = %._crit_edge
  %i.fx = icmp sgt i32 %1, 0                      ; 2 uses
  br i1 %i.fx, label %.lr.ph177.i, label %.preheader162.i

.lr.ph177.i:                                      ; preds = %bb.f
  %wide.trip.count236.i = zext nneg i32 %1 to i64 ; 3 uses
  br i1 %i.a, label %.lr.ph.us.preheader.i, label %.lr.ph177.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph177.i
  %i.fy = and i32 %4, 2147483644                  ; 4 uses
  %.not = icmp eq i32 %i.fy, %4
  %i.fz = xor i32 %i.fy, -1
  %i.ga = add nsw i32 %4, %i.fz                   ; 2 uses
  %i.gb = zext i32 %i.ga to i64
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %min.iters.check118 = icmp ult i32 %i.ga, 7
  %n.vec120 = and i64 %i.gc, 8589934584           ; 5 uses
  %i.gd = shl nuw nsw i64 %n.vec120, 1
  %i.ge = shl nuw nsw i64 %n.vec120, 2
  %i.gf = trunc i64 %n.vec120 to i32
  %i.gg = add i32 %i.fy, %i.gf
  %cmp.n130 = icmp eq i64 %i.gc, %n.vec120
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv233.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next234.i, %._crit_edge.us.i ] ; 2 uses
  %i.gh = mul i64 %indvars.iv233.i, %3
end_hunk_8
begin_hunk_9_@_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_:bb.a
  %i.if = bitcast i32 %i.ie to float              ; 2 uses
  %i.ig = fcmp fast olt float %i.hz, %i.if
  %.sroa.speculated.i46 = select i1 %i.ig, float %i.if, float %i.hz ; 2 uses
  br i1 %exitcond.not.i47, label %._crit_edge.i48, label %bb.h

bb.h:                                             ; preds = %.preheader165.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !82
  %i.ij = zext i16 %i.ii to i32
  %i.ik = shl nuw i32 %i.ij, 16
  %i.il = bitcast i32 %i.ik to float              ; 2 uses
  %i.im = load float, ptr %i.hw, align 4, !tbaa !66 ; 2 uses
  %i.in = fcmp fast olt float %i.im, %i.il
  %.sroa.speculated.i46.1 = select i1 %i.in, float %i.il, float %i.im
  store float %.sroa.speculated.i46.1, ptr %i.hw, align 4, !tbaa !66
  br i1 %exitcond.not.i47.1, label %._crit_edge.i48, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.io = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !82
  %i.iq = zext i16 %i.ip to i32
  %i.ir = shl nuw i32 %i.iq, 16
  %i.is = bitcast i32 %i.ir to float              ; 2 uses
  %i.it = load float, ptr %i.hx, align 4, !tbaa !66 ; 2 uses
  %i.iu = fcmp fast olt float %i.it, %i.is
  %.sroa.speculated.i46.2 = select i1 %i.iu, float %i.is, float %i.it
  store float %.sroa.speculated.i46.2, ptr %i.hx, align 4, !tbaa !66
  br label %._crit_edge.i48

._crit_edge.i48:                                  ; preds = %bb.i, %bb.h, %.preheader165.i
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %exitcond231.not.i = icmp eq i64 %indvars.iv.next.i49, %wide.trip.count236.i
  br i1 %exitcond231.not.i, label %.lr.ph193.i.loopexit215, label %.preheader165.i, !llvm.loop !17

.preheader162.i:                                  ; preds = %._crit_edge191.i, %bb.f
  br i1 %i.a, label %.lr.ph196.i.preheader, label %.preheader161.i

.lr.ph196.i.preheader:                            ; preds = %.preheader162.i
  %i.iv = add nsw i32 %4, -4                      ; 2 uses
  %i.iw = lshr i32 %i.iv, 2                       ; 2 uses
  %i.ix = add nuw nsw i32 %i.iw, 1                ; 2 uses
  %i.iy = icmp eq i32 %i.iw, 0
  br i1 %i.iy, label %.lr.ph196.i.epil.preheader, label %.lr.ph196.i.preheader.new

.lr.ph196.i.preheader.new:                        ; preds = %.lr.ph196.i.preheader
  %unroll_iter227 = and i32 %i.ix, 2147483646
  br label %.lr.ph196.i

bb.j:                                             ; preds = %._crit_edge191.i, %.lr.ph193.i
  %indvars.iv239.i = phi i64 [ 0, %.lr.ph193.i ], [ %indvars.iv.next240.i, %._crit_edge191.i ] ; 2 uses
  %i.iz = mul i64 %indvars.iv239.i, %3
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.iz ; 2 uses
  br i1 %i.a, label %.lr.ph.i43, label %.preheader163.i

.preheader163.i:                                  ; preds = %.lr.ph.i43, %bb.j
  %.0118.lcssa.i = phi ptr [ %i.ja, %bb.j ], [ %i.mo, %.lr.ph.i43 ] ; 4 uses
  %.0116.lcssa.i = phi ptr [ %5, %bb.j ], [ %i.mp, %.lr.ph.i43 ] ; 6 uses
  %.0114.lcssa.i = phi ptr [ %6, %bb.j ], [ %i.mq, %.lr.ph.i43 ] ; 6 uses
  %.0112.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.hy, %.lr.ph.i43 ] ; 6 uses
  %i.jb = icmp slt i32 %.0112.lcssa.i, %4
  br i1 %i.jb, label %.lr.ph190.i.preheader, label %._crit_edge191.i

.lr.ph190.i.preheader:                            ; preds = %.preheader163.i
  %i.jc = xor i32 %.0112.lcssa.i, -1
  %i.jd = add i32 %4, %i.jc                       ; 2 uses
  %i.je = zext i32 %i.jd to i64
  %i.jf = add nuw nsw i64 %i.je, 1                ; 2 uses
  %min.iters.check139 = icmp ult i32 %i.jd, 3
  br i1 %min.iters.check139, label %.lr.ph190.i.preheader208, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph190.i.preheader
  %scevgep134 = getelementptr i8, ptr %.0114.lcssa.i, i64 4
  %i.jg = xor i32 %.0112.lcssa.i, -1
  %i.jh = add i32 %4, %i.jg
  %i.ji = zext i32 %i.jh to i64
  %i.jj = shl nuw nsw i64 %i.ji, 2                ; 2 uses
  %scevgep135 = getelementptr i8, ptr %scevgep134, i64 %i.jj
  %scevgep136 = getelementptr i8, ptr %.0116.lcssa.i, i64 4
  %scevgep137 = getelementptr i8, ptr %scevgep136, i64 %i.jj
  %bound0 = icmp ult ptr %.0114.lcssa.i, %scevgep137
  %bound1 = icmp ult ptr %.0116.lcssa.i, %scevgep135
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph190.i.preheader208, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck
  %n.vec141 = and i64 %i.jf, 8589934588           ; 5 uses
  %i.jk = trunc i64 %n.vec141 to i32
  %i.jl = add i32 %.0112.lcssa.i, %i.jk
  %i.jm = shl nuw nsw i64 %n.vec141, 2            ; 2 uses
  %i.jn = getelementptr i8, ptr %.0114.lcssa.i, i64 %i.jm
  %i.jo = getelementptr i8, ptr %.0116.lcssa.i, i64 %i.jm
  %i.jp = shl nuw nsw i64 %n.vec141, 1
  %i.jq = getelementptr i8, ptr %.0118.lcssa.i, i64 %i.jp
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next150, %vector.body142 ] ; 3 uses
  %i.jr = shl i64 %index143, 2                    ; 2 uses
  %next.gep144 = getelementptr i8, ptr %.0114.lcssa.i, i64 %i.jr ; 2 uses
  %next.gep145 = getelementptr i8, ptr %.0116.lcssa.i, i64 %i.jr
  %i.js = shl i64 %index143, 1
  %next.gep146 = getelementptr i8, ptr %.0118.lcssa.i, i64 %i.js ; 2 uses
  %wide.load147 = load <4 x i16>, ptr %next.gep146, align 2, !tbaa !82
  %i.jt = zext <4 x i16> %wide.load147 to <4 x i32>
  %i.ju = shl nuw <4 x i32> %i.jt, splat (i32 16)
  %i.jv = bitcast <4 x i32> %i.ju to <4 x float>
  %wide.load148 = load <4 x float>, ptr %next.gep145, align 4, !tbaa !66, !alias.scope !259
  %i.jw = fsub fast <4 x float> %i.jv, %wide.load148
  %i.jx = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.jw) ; 2 uses
  %i.jy = bitcast <4 x float> %i.jx to <4 x i32>
  %i.jz = lshr <4 x i32> %i.jy, splat (i32 16)
  %i.ka = trunc nuw nsw <4 x i32> %i.jz to <4 x i16>
  store <4 x i16> %i.ka, ptr %next.gep146, align 2, !tbaa !82
  %wide.load149 = load <4 x float>, ptr %next.gep144, align 4, !tbaa !66, !alias.scope !260, !noalias !259
  %i.kb = fadd fast <4 x float> %i.jx, %wide.load149
  store <4 x float> %i.kb, ptr %next.gep144, align 4, !tbaa !66, !alias.scope !260, !noalias !259
  %index.next150 = add nuw i64 %index143, 4       ; 2 uses
  %i.kc = icmp eq i64 %index.next150, %n.vec141
  br i1 %i.kc, label %middle.block151, label %vector.body142, !llvm.loop !253

middle.block151:                                  ; preds = %vector.body142
  %cmp.n152 = icmp eq i64 %i.jf, %n.vec141
  br i1 %cmp.n152, label %._crit_edge191.i, label %.lr.ph190.i.preheader208

.lr.ph190.i.preheader208:                         ; preds = %vector.memcheck, %.lr.ph190.i.preheader, %middle.block151
  %.1113189.i.ph = phi i32 [ %.0112.lcssa.i, %vector.memcheck ], [ %.0112.lcssa.i, %.lr.ph190.i.preheader ], [ %i.jl, %middle.block151 ] ; 4 uses
  %.1115188.i.ph = phi ptr [ %.0114.lcssa.i, %vector.memcheck ], [ %.0114.lcssa.i, %.lr.ph190.i.preheader ], [ %i.jn, %middle.block151 ] ; 4 uses
  %.1117187.i.ph = phi ptr [ %.0116.lcssa.i, %vector.memcheck ], [ %.0116.lcssa.i, %.lr.ph190.i.preheader ], [ %i.jo, %middle.block151 ] ; 3 uses
  %.1119186.i.ph = phi ptr [ %.0118.lcssa.i, %vector.memcheck ], [ %.0118.lcssa.i, %.lr.ph190.i.preheader ], [ %i.jq, %middle.block151 ] ; 4 uses
  %i.kd = sub i32 %4, %.1113189.i.ph
  %.neg = add i32 %.1113189.i.ph, 1
  %xtraiter220 = and i32 %i.kd, 1
  %lcmp.mod221.not = icmp eq i32 %xtraiter220, 0
  br i1 %lcmp.mod221.not, label %.lr.ph190.i.prol.loopexit, label %.lr.ph190.i.prol

.lr.ph190.i.prol:                                 ; preds = %.lr.ph190.i.preheader208
  %i.ke = load i16, ptr %.1119186.i.ph, align 2, !tbaa !82
  %i.kf = zext i16 %i.ke to i32
  %i.kg = shl nuw i32 %i.kf, 16
  %i.kh = bitcast i32 %i.kg to float
  %i.ki = load float, ptr %.1117187.i.ph, align 4, !tbaa !66
  %i.kj = fsub fast float %i.kh, %i.ki
  %i.kk = tail call fast float @llvm.exp.f32(float %i.kj) ; 2 uses
  %i.kl = bitcast float %i.kk to i32
  %i.km = lshr i32 %i.kl, 16
  %i.kn = trunc nuw nsw i32 %i.km to i16
  store i16 %i.kn, ptr %.1119186.i.ph, align 2, !tbaa !82
  %i.ko = load float, ptr %.1115188.i.ph, align 4, !tbaa !66
  %i.kp = fadd fast float %i.kk, %i.ko
  store float %i.kp, ptr %.1115188.i.ph, align 4, !tbaa !66
  %i.kq = getelementptr inbounds nuw i8, ptr %.1119186.i.ph, i64 2
  %i.kr = getelementptr inbounds nuw i8, ptr %.1117187.i.ph, i64 4
  %i.ks = getelementptr inbounds nuw i8, ptr %.1115188.i.ph, i64 4
  %i.kt = add nuw nsw i32 %.1113189.i.ph, 1
  br label %.lr.ph190.i.prol.loopexit

.lr.ph190.i.prol.loopexit:                        ; preds = %.lr.ph190.i.prol, %.lr.ph190.i.preheader208
  %.1113189.i.unr = phi i32 [ %.1113189.i.ph, %.lr.ph190.i.preheader208 ], [ %i.kt, %.lr.ph190.i.prol ]
  %.1115188.i.unr = phi ptr [ %.1115188.i.ph, %.lr.ph190.i.preheader208 ], [ %i.ks, %.lr.ph190.i.prol ]
  %.1117187.i.unr = phi ptr [ %.1117187.i.ph, %.lr.ph190.i.preheader208 ], [ %i.kr, %.lr.ph190.i.prol ]
  %.1119186.i.unr = phi ptr [ %.1119186.i.ph, %.lr.ph190.i.preheader208 ], [ %i.kq, %.lr.ph190.i.prol ]
  %i.ku = icmp eq i32 %4, %.neg
  br i1 %i.ku, label %._crit_edge191.i, label %.lr.ph190.i

.lr.ph.i43:                                       ; preds = %bb.j, %.lr.ph.i43
  %.0112181.i = phi i32 [ %i.mr, %.lr.ph.i43 ], [ 0, %bb.j ]
  %.0114180.i = phi ptr [ %i.mq, %.lr.ph.i43 ], [ %6, %bb.j ] ; 3 uses
  %.0116179.i = phi ptr [ %i.mp, %.lr.ph.i43 ], [ %5, %bb.j ] ; 2 uses
  %.0118178.i = phi ptr [ %i.mo, %.lr.ph.i43 ], [ %i.ja, %bb.j ] ; 3 uses
  %i.kv = load i64, ptr %.0118178.i, align 1, !tbaa !63
  %i.kw = insertelement <2 x i64> poison, i64 %i.kv, i64 0
  %i.kx = bitcast <2 x i64> %i.kw to <8 x i16>
  %i.ky = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kz = bitcast <8 x i16> %i.ky to <4 x float>
  %i.la = load <4 x float>, ptr %.0116179.i, align 1, !tbaa !63
  %i.lb = load <4 x float>, ptr %.0114180.i, align 1, !tbaa !63
  %i.lc = fsub fast <4 x float> %i.kz, %i.la
  %i.ld = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lc, <4 x float> splat (float f0x42B0C0A5))
  %i.le = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ld, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lf = fmul fast <4 x float> %i.le, splat (float f0x3FB8AA3B)
  %i.lg = fadd fast <4 x float> %i.lf, splat (float 5.000000e-01) ; 2 uses
  %i.lh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lg)
  %i.li = sitofp fast <4 x i32> %i.lh to <4 x float> ; 2 uses
  %i.lj = fcmp fast olt <4 x float> %i.lg, %i.li
  %i.lk = select <4 x i1> %i.lj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ll = fsub fast <4 x float> %i.li, %i.lk      ; 2 uses
  %i.lm = fmul fast <4 x float> %i.ll, splat (float f0x3F317218)
  %i.ln = fsub fast <4 x float> %i.le, %i.lm      ; 8 uses
  %i.lo = fmul fast <4 x float> %i.ln, %i.ln
  %i.lp = fmul fast <4 x float> %i.ln, splat (float f0x39506967)
  %i.lq = fadd fast <4 x float> %i.lp, splat (float f0x3AB743CE)
  %i.lr = fmul fast <4 x float> %i.lq, %i.ln
  %i.ls = fadd fast <4 x float> %i.lr, splat (float f0x3C088908)
  %i.lt = fmul fast <4 x float> %i.ls, %i.ln
  %i.lu = fadd fast <4 x float> %i.lt, splat (float f0x3D2AA9C1)
  %i.lv = fmul fast <4 x float> %i.lu, %i.ln
  %i.lw = fadd fast <4 x float> %i.lv, splat (float f0x3E2AAAAA)
  %i.lx = fmul fast <4 x float> %i.lw, %i.ln
  %i.ly = fadd fast <4 x float> %i.lx, splat (float 5.000000e-01)
  %i.lz = fmul fast <4 x float> %i.lo, %i.ly
  %i.ma = fadd fast <4 x float> %i.ln, splat (float 1.000000e+00)
  %i.mb = fadd fast <4 x float> %i.ma, %i.lz
  %i.mc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ll)
  %i.md = shl <4 x i32> %i.mc, splat (i32 23)
  %i.me = add <4 x i32> %i.md, splat (i32 1065353216)
  %i.mf = bitcast <4 x i32> %i.me to <4 x float>
  %i.mg = fmul fast <4 x float> %i.mb, %i.mf      ; 2 uses
  %i.mh = bitcast <4 x float> %i.mg to <8 x i16>
  %i.mi = shufflevector <8 x i16> %i.mh, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.mj = bitcast <8 x i16> %i.mi to <4 x float>
  %i.mk = shufflevector <4 x float> %i.mj, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ml = bitcast <4 x float> %i.mk to <2 x i64>
  %i.mm = extractelement <2 x i64> %i.ml, i64 0
  store i64 %i.mm, ptr %.0118178.i, align 1, !tbaa !63
  %i.mn = fadd fast <4 x float> %i.mg, %i.lb
  store <4 x float> %i.mn, ptr %.0114180.i, align 1, !tbaa !63
  %i.mo = getelementptr inbounds nuw i8, ptr %.0118178.i, i64 8 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.0116179.i, i64 16 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.0114180.i, i64 16 ; 2 uses
  %i.mr = add nuw nsw i32 %.0112181.i, 4          ; 2 uses
  %i.ms = or disjoint i32 %i.mr, 3
  %i.mt = icmp slt i32 %i.ms, %4
  br i1 %i.mt, label %.lr.ph.i43, label %.preheader163.i, !llvm.loop !18

.lr.ph190.i:                                      ; preds = %.lr.ph190.i.prol.loopexit, %.lr.ph190.i
  %.1113189.i = phi i32 [ %i.ny, %.lr.ph190.i ], [ %.1113189.i.unr, %.lr.ph190.i.prol.loopexit ]
  %.1115188.i = phi ptr [ %i.nx, %.lr.ph190.i ], [ %.1115188.i.unr, %.lr.ph190.i.prol.loopexit ] ; 4 uses
  %.1117187.i = phi ptr [ %i.nw, %.lr.ph190.i ], [ %.1117187.i.unr, %.lr.ph190.i.prol.loopexit ] ; 3 uses
  %.1119186.i = phi ptr [ %i.nv, %.lr.ph190.i ], [ %.1119186.i.unr, %.lr.ph190.i.prol.loopexit ] ; 4 uses
  %i.mu = load i16, ptr %.1119186.i, align 2, !tbaa !82
  %i.mv = zext i16 %i.mu to i32
  %i.mw = shl nuw i32 %i.mv, 16
  %i.mx = bitcast i32 %i.mw to float
  %i.my = load float, ptr %.1117187.i, align 4, !tbaa !66
  %i.mz = fsub fast float %i.mx, %i.my
  %i.na = tail call fast float @llvm.exp.f32(float %i.mz) ; 2 uses
  %i.nb = bitcast float %i.na to i32
  %i.nc = lshr i32 %i.nb, 16
  %i.nd = trunc nuw nsw i32 %i.nc to i16
  store i16 %i.nd, ptr %.1119186.i, align 2, !tbaa !82
  %i.ne = load float, ptr %.1115188.i, align 4, !tbaa !66
  %i.nf = fadd fast float %i.na, %i.ne
  store float %i.nf, ptr %.1115188.i, align 4, !tbaa !66
  %i.ng = getelementptr inbounds nuw i8, ptr %.1119186.i, i64 2 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.1117187.i, i64 4
  %i.ni = getelementptr inbounds nuw i8, ptr %.1115188.i, i64 4 ; 2 uses
  %i.nj = load i16, ptr %i.ng, align 2, !tbaa !82
  %i.nk = zext i16 %i.nj to i32
  %i.nl = shl nuw i32 %i.nk, 16
  %i.nm = bitcast i32 %i.nl to float
  %i.nn = load float, ptr %i.nh, align 4, !tbaa !66
  %i.no = fsub fast float %i.nm, %i.nn
  %i.np = tail call fast float @llvm.exp.f32(float %i.no) ; 2 uses
  %i.nq = bitcast float %i.np to i32
  %i.nr = lshr i32 %i.nq, 16
  %i.ns = trunc nuw nsw i32 %i.nr to i16
  store i16 %i.ns, ptr %i.ng, align 2, !tbaa !82
  %i.nt = load float, ptr %i.ni, align 4, !tbaa !66
  %i.nu = fadd fast float %i.np, %i.nt
  store float %i.nu, ptr %i.ni, align 4, !tbaa !66
  %i.nv = getelementptr inbounds nuw i8, ptr %.1119186.i, i64 4
  %i.nw = getelementptr inbounds nuw i8, ptr %.1117187.i, i64 8
  %i.nx = getelementptr inbounds nuw i8, ptr %.1115188.i, i64 8
  %i.ny = add nuw nsw i32 %.1113189.i, 2          ; 2 uses
  %exitcond238.not.i.1 = icmp eq i32 %i.ny, %4
  br i1 %exitcond238.not.i.1, label %._crit_edge191.i, label %.lr.ph190.i, !llvm.loop !254

._crit_edge191.i:                                 ; preds = %.lr.ph190.i.prol.loopexit, %.lr.ph190.i, %middle.block151, %.preheader163.i
  %indvars.iv.next240.i = add nuw nsw i64 %indvars.iv239.i, 1 ; 2 uses
  %exitcond243.not.i = icmp eq i64 %indvars.iv.next240.i, %wide.trip.count236.i
  br i1 %exitcond243.not.i, label %.preheader162.i, label %bb.j, !llvm.loop !19

.preheader161.loopexit.i.unr-lcssa:               ; preds = %.lr.ph196.i
  %i.nz = and i32 %i.iv, 4
  %lcmp.mod224.not.not = icmp eq i32 %i.nz, 0
  br i1 %lcmp.mod224.not.not, label %.lr.ph196.i.epil.preheader, label %.preheader161.loopexit.i

.lr.ph196.i.epil.preheader:                       ; preds = %.preheader161.loopexit.i.unr-lcssa, %.lr.ph196.i.preheader
  %.0104194.i.epil.init = phi ptr [ %6, %.lr.ph196.i.preheader ], [ %i.pe, %.preheader161.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod226 = trunc i32 %i.ix to i1
  tail call void @llvm.assume(i1 %lcmp.mod226)
  %i.oa = load <4 x float>, ptr %.0104194.i.epil.init, align 1, !tbaa !63 ; 2 uses
  %i.ob = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.oa) ; 2 uses
  %i.oc = fmul fast <4 x float> %i.ob, %i.oa
  %i.od = fsub fast <4 x float> splat (float 2.000000e+00), %i.oc
  %i.oe = fmul fast <4 x float> %i.od, %i.ob
  store <4 x float> %i.oe, ptr %.0104194.i.epil.init, align 1, !tbaa !63
  %i.of = getelementptr inbounds nuw i8, ptr %.0104194.i.epil.init, i64 16
  br label %.preheader161.loopexit.i

.preheader161.loopexit.i:                         ; preds = %.preheader161.loopexit.i.unr-lcssa, %.lr.ph196.i.epil.preheader
  %.lcssa207 = phi ptr [ %i.pe, %.preheader161.loopexit.i.unr-lcssa ], [ %i.of, %.lr.ph196.i.epil.preheader ]
  %i.og = and i32 %4, 2147483644
  br label %.preheader161.i

.preheader161.i:                                  ; preds = %.preheader161.loopexit.i, %.preheader162.i
  %.0104.lcssa.i = phi ptr [ %6, %.preheader162.i ], [ %.lcssa207, %.preheader161.loopexit.i ] ; 3 uses
  %.0102.lcssa.i = phi i32 [ 0, %.preheader162.i ], [ %i.og, %.preheader161.loopexit.i ] ; 4 uses
  %i.oh = icmp slt i32 %.0102.lcssa.i, %4
  br i1 %i.oh, label %.lr.ph201.i.preheader, label %.preheader160.i

.lr.ph201.i.preheader:                            ; preds = %.preheader161.i
  %i.oi = xor i32 %.0102.lcssa.i, -1
  %i.oj = add i32 %4, %i.oi                       ; 2 uses
  %i.ok = zext i32 %i.oj to i64
  %i.ol = add nuw nsw i64 %i.ok, 1                ; 2 uses
  %min.iters.check158 = icmp ult i32 %i.oj, 3
  br i1 %min.iters.check158, label %.lr.ph201.i.preheader206, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph201.i.preheader
  %n.vec160 = and i64 %i.ol, 8589934588           ; 4 uses
  %i.om = trunc i64 %n.vec160 to i32
  %i.on = add i32 %.0102.lcssa.i, %i.om
  %i.oo = shl nuw nsw i64 %n.vec160, 2
  %i.op = getelementptr i8, ptr %.0104.lcssa.i, i64 %i.oo
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next165, %vector.body161 ] ; 2 uses
  %i.oq = shl i64 %index162, 2
  %next.gep163 = getelementptr i8, ptr %.0104.lcssa.i, i64 %i.oq ; 2 uses
  %wide.load164 = load <4 x float>, ptr %next.gep163, align 4, !tbaa !66
  %i.or = fdiv fast <4 x float> splat (float 1.000000e+00), %wide.load164
  store <4 x float> %i.or, ptr %next.gep163, align 4, !tbaa !66
  %index.next165 = add nuw i64 %index162, 4       ; 2 uses
  %i.os = icmp eq i64 %index.next165, %n.vec160
  br i1 %i.os, label %middle.block166, label %vector.body161, !llvm.loop !255

middle.block166:                                  ; preds = %vector.body161
  %cmp.n167 = icmp eq i64 %i.ol, %n.vec160
  br i1 %cmp.n167, label %.preheader160.i, label %.lr.ph201.i.preheader206

.lr.ph201.i.preheader206:                         ; preds = %.lr.ph201.i.preheader, %middle.block166
  %.1103200.i.ph = phi i32 [ %.0102.lcssa.i, %.lr.ph201.i.preheader ], [ %i.on, %middle.block166 ]
  %.1105199.i.ph = phi ptr [ %.0104.lcssa.i, %.lr.ph201.i.preheader ], [ %i.op, %middle.block166 ]
  br label %.lr.ph201.i

.lr.ph196.i:                                      ; preds = %.lr.ph196.i, %.lr.ph196.i.preheader.new
  %.0104194.i = phi ptr [ %6, %.lr.ph196.i.preheader.new ], [ %i.pe, %.lr.ph196.i ] ; 4 uses
  %niter228 = phi i32 [ 0, %.lr.ph196.i.preheader.new ], [ %niter228.next.1, %.lr.ph196.i ]
  %i.ot = load <4 x float>, ptr %.0104194.i, align 1, !tbaa !63 ; 2 uses
  %i.ou = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.ot) ; 2 uses
  %i.ov = fmul fast <4 x float> %i.ou, %i.ot
  %i.ow = fsub fast <4 x float> splat (float 2.000000e+00), %i.ov
  %i.ox = fmul fast <4 x float> %i.ow, %i.ou
  store <4 x float> %i.ox, ptr %.0104194.i, align 1, !tbaa !63
  %i.oy = getelementptr inbounds nuw i8, ptr %.0104194.i, i64 16 ; 2 uses
  %i.oz = load <4 x float>, ptr %i.oy, align 1, !tbaa !63 ; 2 uses
  %i.pa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.oz) ; 2 uses
  %i.pb = fmul fast <4 x float> %i.pa, %i.oz
  %i.pc = fsub fast <4 x float> splat (float 2.000000e+00), %i.pb
  %i.pd = fmul fast <4 x float> %i.pc, %i.pa
  store <4 x float> %i.pd, ptr %i.oy, align 1, !tbaa !63
  %i.pe = getelementptr inbounds nuw i8, ptr %.0104194.i, i64 32 ; 3 uses
  %niter228.next.1 = add i32 %niter228, 2         ; 2 uses
  %niter228.ncmp.1.not = icmp eq i32 %niter228.next.1, %unroll_iter227
  br i1 %niter228.ncmp.1.not, label %.preheader161.loopexit.i.unr-lcssa, label %.lr.ph196.i, !llvm.loop !20

.preheader160.i:                                  ; preds = %.lr.ph201.i, %middle.block166, %.preheader161.i
  br i1 %i.fx, label %.lr.ph216.i, label %_ZN4ncnnL23softmax_bf16s_pack4_sseEPtimiPfS1_.exit

.lr.ph216.i:                                      ; preds = %.preheader160.i
  %i.pf = and i32 %4, -4
  %wide.trip.count249.i = zext nneg i32 %1 to i64
  br label %bb.k

.lr.ph201.i:                                      ; preds = %.lr.ph201.i.preheader206, %.lr.ph201.i
  %.1103200.i = phi i32 [ %i.pj, %.lr.ph201.i ], [ %.1103200.i.ph, %.lr.ph201.i.preheader206 ]
  %.1105199.i = phi ptr [ %i.pi, %.lr.ph201.i ], [ %.1105199.i.ph, %.lr.ph201.i.preheader206 ] ; 3 uses
  %i.pg = load float, ptr %.1105199.i, align 4, !tbaa !66
  %i.ph = fdiv fast float 1.000000e+00, %i.pg
  store float %i.ph, ptr %.1105199.i, align 4, !tbaa !66
  %i.pi = getelementptr inbounds nuw i8, ptr %.1105199.i, i64 4
  %i.pj = add nuw nsw i32 %.1103200.i, 1          ; 2 uses
  %exitcond244.not.i = icmp eq i32 %i.pj, %4
  br i1 %exitcond244.not.i, label %.preheader160.i, label %.lr.ph201.i, !llvm.loop !256

bb.k:                                             ; preds = %._crit_edge214.i, %.lr.ph216.i
  %indvars.iv246.i = phi i64 [ 0, %.lr.ph216.i ], [ %indvars.iv.next247.i, %._crit_edge214.i ] ; 2 uses
  %i.pk = mul i64 %indvars.iv246.i, %3
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.pk ; 2 uses
  br i1 %i.a, label %.lr.ph206.i, label %.preheader.i42

.preheader.i42:                                   ; preds = %.lr.ph206.i, %bb.k
  %.099.lcssa.i = phi ptr [ %i.pl, %bb.k ], [ %i.rd, %.lr.ph206.i ] ; 3 uses
  %.097.lcssa.i = phi ptr [ %6, %bb.k ], [ %i.re, %.lr.ph206.i ] ; 3 uses
  %.096.lcssa.i = phi i32 [ 0, %bb.k ], [ %i.pf, %.lr.ph206.i ] ; 4 uses
  %i.pm = icmp slt i32 %.096.lcssa.i, %4
  br i1 %i.pm, label %.lr.ph213.i.preheader, label %._crit_edge214.i

.lr.ph213.i.preheader:                            ; preds = %.preheader.i42
  %i.pn = xor i32 %.096.lcssa.i, -1
  %i.po = add i32 %4, %i.pn                       ; 2 uses
  %i.pp = zext i32 %i.po to i64
  %i.pq = add nuw nsw i64 %i.pp, 1                ; 2 uses
  %min.iters.check171 = icmp ult i32 %i.po, 7
  br i1 %min.iters.check171, label %.lr.ph213.i.preheader202, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph213.i.preheader
  %n.vec173 = and i64 %i.pq, 8589934584           ; 5 uses
  %i.pr = trunc i64 %n.vec173 to i32
  %i.ps = add i32 %.096.lcssa.i, %i.pr
end_hunk_9
begin_hunk_10_@_ZNK4ncnn11Softmax_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.9:bb.a
  %i.ey = bitcast i32 %i.ex to float              ; 2 uses
  %i.ez = fcmp fast olt float %i.es, %i.ey
  %.sroa.speculated.i46.i = select i1 %i.ez, float %i.ey, float %i.es ; 2 uses
  br i1 %exitcond.not.i47.i, label %._crit_edge.i48.i, label %bb.d

bb.d:                                             ; preds = %.preheader165.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !82
  %i.fc = zext i16 %i.fb to i32
  %i.fd = shl nuw i32 %i.fc, 16
  %i.fe = bitcast i32 %i.fd to float              ; 2 uses
  %i.ff = load float, ptr %i.ep, align 4, !tbaa !66 ; 2 uses
  %i.fg = fcmp fast olt float %i.ff, %i.fe
  %.sroa.speculated.i46.i.1 = select i1 %i.fg, float %i.fe, float %i.ff
  store float %.sroa.speculated.i46.i.1, ptr %i.ep, align 4, !tbaa !66
  br i1 %exitcond.not.i47.i.1, label %._crit_edge.i48.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !82
  %i.fj = zext i16 %i.fi to i32
  %i.fk = shl nuw i32 %i.fj, 16
  %i.fl = bitcast i32 %i.fk to float              ; 2 uses
  %i.fm = load float, ptr %i.eq, align 4, !tbaa !66 ; 2 uses
  %i.fn = fcmp fast olt float %i.fm, %i.fl
  %.sroa.speculated.i46.i.2 = select i1 %i.fn, float %i.fl, float %i.fm
  store float %.sroa.speculated.i46.i.2, ptr %i.eq, align 4, !tbaa !66
  br label %._crit_edge.i48.i

._crit_edge.i48.i:                                ; preds = %bb.e, %bb.d, %.preheader165.i.i
  %indvars.iv.next.i49.i = add nuw nsw i64 %indvars.iv.i45.i, 1 ; 2 uses
  %exitcond231.not.i.i = icmp eq i64 %indvars.iv.next.i49.i, %wide.trip.count236.i.i
  br i1 %exitcond231.not.i.i, label %.lr.ph193.i.i.loopexit208, label %.preheader165.i.i, !llvm.loop !17

.preheader162.i.i:                                ; preds = %._crit_edge191.i.i, %._crit_edge.i
  br i1 %i.ba, label %.lr.ph196.i.i.preheader, label %.preheader161.i.i

.lr.ph196.i.i.preheader:                          ; preds = %.preheader162.i.i
  %i.fo = add nsw i32 %i.aw, -4                   ; 2 uses
  %i.fp = lshr i32 %i.fo, 2                       ; 2 uses
  %i.fq = add nuw nsw i32 %i.fp, 1                ; 2 uses
  %i.fr = icmp eq i32 %i.fp, 0
  br i1 %i.fr, label %.lr.ph196.i.i.epil.preheader, label %.lr.ph196.i.i.preheader.new

.lr.ph196.i.i.preheader.new:                      ; preds = %.lr.ph196.i.i.preheader
  %unroll_iter228 = and i32 %i.fq, 2147483646
  br label %.lr.ph196.i.i

bb.f:                                             ; preds = %._crit_edge191.i.i, %.lr.ph193.i.i
  %indvars.iv239.i.i = phi i64 [ 0, %.lr.ph193.i.i ], [ %indvars.iv.next240.i.i, %._crit_edge191.i.i ] ; 2 uses
  %i.fs = mul i64 %indvars.iv239.i.i, %i.ax
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.fs ; 2 uses
  br i1 %i.ba, label %.lr.ph.i43.i, label %.preheader163.i.i

.preheader163.i.i:                                ; preds = %.lr.ph.i43.i, %bb.f
  %.0118.lcssa.i.i = phi ptr [ %i.ft, %bb.f ], [ %i.jh, %.lr.ph.i43.i ] ; 4 uses
  %.0116.lcssa.i.i = phi ptr [ %i.av, %bb.f ], [ %i.ji, %.lr.ph.i43.i ] ; 6 uses
  %.0114.lcssa.i.i = phi ptr [ %i.ay, %bb.f ], [ %i.jj, %.lr.ph.i43.i ] ; 6 uses
  %.0112.lcssa.i.i = phi i32 [ 0, %bb.f ], [ %i.er, %.lr.ph.i43.i ] ; 6 uses
  %i.fu = icmp slt i32 %.0112.lcssa.i.i, %i.aw
  br i1 %i.fu, label %.lr.ph190.i.i.preheader, label %._crit_edge191.i.i

.lr.ph190.i.i.preheader:                          ; preds = %.preheader163.i.i
  %i.fv = xor i32 %.0112.lcssa.i.i, -1
  %i.fw = add i32 %i.aw, %i.fv                    ; 2 uses
  %i.fx = zext i32 %i.fw to i64
  %i.fy = add nuw nsw i64 %i.fx, 1                ; 2 uses
  %min.iters.check156 = icmp ult i32 %i.fw, 3
  br i1 %min.iters.check156, label %.lr.ph190.i.i.preheader205, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph190.i.i.preheader
  %scevgep = getelementptr i8, ptr %.0114.lcssa.i.i, i64 4
  %i.fz = xor i32 %.0112.lcssa.i.i, -1
  %i.ga = add i32 %i.aw, %i.fz
  %i.gb = zext i32 %i.ga to i64
  %i.gc = shl nuw nsw i64 %i.gb, 2                ; 2 uses
  %scevgep152 = getelementptr i8, ptr %scevgep, i64 %i.gc
  %scevgep153 = getelementptr i8, ptr %.0116.lcssa.i.i, i64 4
  %scevgep154 = getelementptr i8, ptr %scevgep153, i64 %i.gc
  %bound0 = icmp ult ptr %.0114.lcssa.i.i, %scevgep154
  %bound1 = icmp ult ptr %.0116.lcssa.i.i, %scevgep152
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph190.i.i.preheader205, label %vector.ph157

vector.ph157:                                     ; preds = %vector.memcheck
  %n.vec158 = and i64 %i.fy, 8589934588           ; 5 uses
  %i.gd = trunc i64 %n.vec158 to i32
  %i.ge = add i32 %.0112.lcssa.i.i, %i.gd
  %i.gf = shl nuw nsw i64 %n.vec158, 2            ; 2 uses
  %i.gg = getelementptr i8, ptr %.0114.lcssa.i.i, i64 %i.gf
  %i.gh = getelementptr i8, ptr %.0116.lcssa.i.i, i64 %i.gf
  %i.gi = shl nuw nsw i64 %n.vec158, 1
  %i.gj = getelementptr i8, ptr %.0118.lcssa.i.i, i64 %i.gi
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph157
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next167, %vector.body159 ] ; 3 uses
  %i.gk = shl i64 %index160, 2                    ; 2 uses
  %next.gep161 = getelementptr i8, ptr %.0114.lcssa.i.i, i64 %i.gk ; 2 uses
  %next.gep162 = getelementptr i8, ptr %.0116.lcssa.i.i, i64 %i.gk
  %i.gl = shl i64 %index160, 1
  %next.gep163 = getelementptr i8, ptr %.0118.lcssa.i.i, i64 %i.gl ; 2 uses
  %wide.load164 = load <4 x i16>, ptr %next.gep163, align 2, !tbaa !82
  %i.gm = zext <4 x i16> %wide.load164 to <4 x i32>
  %i.gn = shl nuw <4 x i32> %i.gm, splat (i32 16)
  %i.go = bitcast <4 x i32> %i.gn to <4 x float>
  %wide.load165 = load <4 x float>, ptr %next.gep162, align 4, !tbaa !66, !alias.scope !286
  %i.gp = fsub fast <4 x float> %i.go, %wide.load165
  %i.gq = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.gp) ; 2 uses
  %i.gr = bitcast <4 x float> %i.gq to <4 x i32>
  %i.gs = lshr <4 x i32> %i.gr, splat (i32 16)
  %i.gt = trunc nuw nsw <4 x i32> %i.gs to <4 x i16>
  store <4 x i16> %i.gt, ptr %next.gep163, align 2, !tbaa !82
  %wide.load166 = load <4 x float>, ptr %next.gep161, align 4, !tbaa !66, !alias.scope !287, !noalias !286
  %i.gu = fadd fast <4 x float> %i.gq, %wide.load166
  store <4 x float> %i.gu, ptr %next.gep161, align 4, !tbaa !66, !alias.scope !287, !noalias !286
  %index.next167 = add nuw i64 %index160, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next167, %n.vec158
  br i1 %i.gv, label %middle.block168, label %vector.body159, !llvm.loop !277

middle.block168:                                  ; preds = %vector.body159
  %cmp.n169 = icmp eq i64 %i.fy, %n.vec158
  br i1 %cmp.n169, label %._crit_edge191.i.i, label %.lr.ph190.i.i.preheader205

.lr.ph190.i.i.preheader205:                       ; preds = %vector.memcheck, %.lr.ph190.i.i.preheader, %middle.block168
  %.1113189.i.i.ph = phi i32 [ %.0112.lcssa.i.i, %vector.memcheck ], [ %.0112.lcssa.i.i, %.lr.ph190.i.i.preheader ], [ %i.ge, %middle.block168 ] ; 4 uses
  %.1115188.i.i.ph = phi ptr [ %.0114.lcssa.i.i, %vector.memcheck ], [ %.0114.lcssa.i.i, %.lr.ph190.i.i.preheader ], [ %i.gg, %middle.block168 ] ; 4 uses
  %.1117187.i.i.ph = phi ptr [ %.0116.lcssa.i.i, %vector.memcheck ], [ %.0116.lcssa.i.i, %.lr.ph190.i.i.preheader ], [ %i.gh, %middle.block168 ] ; 3 uses
  %.1119186.i.i.ph = phi ptr [ %.0118.lcssa.i.i, %vector.memcheck ], [ %.0118.lcssa.i.i, %.lr.ph190.i.i.preheader ], [ %i.gj, %middle.block168 ] ; 4 uses
  %i.gw = sub i32 %i.aw, %.1113189.i.i.ph
  %.neg = add i32 %.1113189.i.i.ph, 1
  %xtraiter221 = and i32 %i.gw, 1
  %lcmp.mod222.not = icmp eq i32 %xtraiter221, 0
  br i1 %lcmp.mod222.not, label %.lr.ph190.i.i.prol.loopexit, label %.lr.ph190.i.i.prol

.lr.ph190.i.i.prol:                               ; preds = %.lr.ph190.i.i.preheader205
  %i.gx = load i16, ptr %.1119186.i.i.ph, align 2, !tbaa !82
  %i.gy = zext i16 %i.gx to i32
  %i.gz = shl nuw i32 %i.gy, 16
  %i.ha = bitcast i32 %i.gz to float
  %i.hb = load float, ptr %.1117187.i.i.ph, align 4, !tbaa !66
  %i.hc = fsub fast float %i.ha, %i.hb
  %i.hd = call fast float @llvm.exp.f32(float %i.hc) ; 2 uses
  %i.he = bitcast float %i.hd to i32
  %i.hf = lshr i32 %i.he, 16
  %i.hg = trunc nuw nsw i32 %i.hf to i16
  store i16 %i.hg, ptr %.1119186.i.i.ph, align 2, !tbaa !82
  %i.hh = load float, ptr %.1115188.i.i.ph, align 4, !tbaa !66
  %i.hi = fadd fast float %i.hd, %i.hh
  store float %i.hi, ptr %.1115188.i.i.ph, align 4, !tbaa !66
  %i.hj = getelementptr inbounds nuw i8, ptr %.1119186.i.i.ph, i64 2
  %i.hk = getelementptr inbounds nuw i8, ptr %.1117187.i.i.ph, i64 4
  %i.hl = getelementptr inbounds nuw i8, ptr %.1115188.i.i.ph, i64 4
  %i.hm = add nuw nsw i32 %.1113189.i.i.ph, 1
  br label %.lr.ph190.i.i.prol.loopexit

.lr.ph190.i.i.prol.loopexit:                      ; preds = %.lr.ph190.i.i.prol, %.lr.ph190.i.i.preheader205
  %.1113189.i.i.unr = phi i32 [ %.1113189.i.i.ph, %.lr.ph190.i.i.preheader205 ], [ %i.hm, %.lr.ph190.i.i.prol ]
  %.1115188.i.i.unr = phi ptr [ %.1115188.i.i.ph, %.lr.ph190.i.i.preheader205 ], [ %i.hl, %.lr.ph190.i.i.prol ]
  %.1117187.i.i.unr = phi ptr [ %.1117187.i.i.ph, %.lr.ph190.i.i.preheader205 ], [ %i.hk, %.lr.ph190.i.i.prol ]
  %.1119186.i.i.unr = phi ptr [ %.1119186.i.i.ph, %.lr.ph190.i.i.preheader205 ], [ %i.hj, %.lr.ph190.i.i.prol ]
  %i.hn = icmp eq i32 %i.aw, %.neg
  br i1 %i.hn, label %._crit_edge191.i.i, label %.lr.ph190.i.i

.lr.ph.i43.i:                                     ; preds = %bb.f, %.lr.ph.i43.i
  %.0112181.i.i = phi i32 [ %i.jk, %.lr.ph.i43.i ], [ 0, %bb.f ]
  %.0114180.i.i = phi ptr [ %i.jj, %.lr.ph.i43.i ], [ %i.ay, %bb.f ] ; 3 uses
  %.0116179.i.i = phi ptr [ %i.ji, %.lr.ph.i43.i ], [ %i.av, %bb.f ] ; 2 uses
  %.0118178.i.i = phi ptr [ %i.jh, %.lr.ph.i43.i ], [ %i.ft, %bb.f ] ; 3 uses
  %i.ho = load i64, ptr %.0118178.i.i, align 1, !tbaa !63
  %i.hp = insertelement <2 x i64> poison, i64 %i.ho, i64 0
  %i.hq = bitcast <2 x i64> %i.hp to <8 x i16>
  %i.hr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hs = bitcast <8 x i16> %i.hr to <4 x float>
  %i.ht = load <4 x float>, ptr %.0116179.i.i, align 1, !tbaa !63
  %i.hu = load <4 x float>, ptr %.0114180.i.i, align 1, !tbaa !63
  %i.hv = fsub fast <4 x float> %i.hs, %i.ht
  %i.hw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hv, <4 x float> splat (float f0x42B0C0A5))
  %i.hx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hw, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hy = fmul fast <4 x float> %i.hx, splat (float f0x3FB8AA3B)
  %i.hz = fadd fast <4 x float> %i.hy, splat (float 5.000000e-01) ; 2 uses
  %i.ia = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hz)
  %i.ib = sitofp fast <4 x i32> %i.ia to <4 x float> ; 2 uses
  %i.ic = fcmp fast olt <4 x float> %i.hz, %i.ib
  %i.id = select <4 x i1> %i.ic, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ie = fsub fast <4 x float> %i.ib, %i.id      ; 2 uses
  %i.if = fmul fast <4 x float> %i.ie, splat (float f0x3F317218)
  %i.ig = fsub fast <4 x float> %i.hx, %i.if      ; 8 uses
  %i.ih = fmul fast <4 x float> %i.ig, %i.ig
  %i.ii = fmul fast <4 x float> %i.ig, splat (float f0x39506967)
  %i.ij = fadd fast <4 x float> %i.ii, splat (float f0x3AB743CE)
  %i.ik = fmul fast <4 x float> %i.ij, %i.ig
  %i.il = fadd fast <4 x float> %i.ik, splat (float f0x3C088908)
  %i.im = fmul fast <4 x float> %i.il, %i.ig
  %i.in = fadd fast <4 x float> %i.im, splat (float f0x3D2AA9C1)
  %i.io = fmul fast <4 x float> %i.in, %i.ig
  %i.ip = fadd fast <4 x float> %i.io, splat (float f0x3E2AAAAA)
  %i.iq = fmul fast <4 x float> %i.ip, %i.ig
  %i.ir = fadd fast <4 x float> %i.iq, splat (float 5.000000e-01)
  %i.is = fmul fast <4 x float> %i.ih, %i.ir
  %i.it = fadd fast <4 x float> %i.ig, splat (float 1.000000e+00)
  %i.iu = fadd fast <4 x float> %i.it, %i.is
  %i.iv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ie)
  %i.iw = shl <4 x i32> %i.iv, splat (i32 23)
  %i.ix = add <4 x i32> %i.iw, splat (i32 1065353216)
  %i.iy = bitcast <4 x i32> %i.ix to <4 x float>
  %i.iz = fmul fast <4 x float> %i.iu, %i.iy      ; 2 uses
  %i.ja = bitcast <4 x float> %i.iz to <8 x i16>
  %i.jb = shufflevector <8 x i16> %i.ja, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.jc = bitcast <8 x i16> %i.jb to <4 x float>
  %i.jd = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.je = bitcast <4 x float> %i.jd to <2 x i64>
  %i.jf = extractelement <2 x i64> %i.je, i64 0
  store i64 %i.jf, ptr %.0118178.i.i, align 1, !tbaa !63
  %i.jg = fadd fast <4 x float> %i.iz, %i.hu
  store <4 x float> %i.jg, ptr %.0114180.i.i, align 1, !tbaa !63
  %i.jh = getelementptr inbounds nuw i8, ptr %.0118178.i.i, i64 8 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.0116179.i.i, i64 16 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.0114180.i.i, i64 16 ; 2 uses
  %i.jk = add nuw nsw i32 %.0112181.i.i, 4        ; 2 uses
  %i.jl = or disjoint i32 %i.jk, 3
  %i.jm = icmp slt i32 %i.jl, %i.aw
  br i1 %i.jm, label %.lr.ph.i43.i, label %.preheader163.i.i, !llvm.loop !18

.lr.ph190.i.i:                                    ; preds = %.lr.ph190.i.i.prol.loopexit, %.lr.ph190.i.i
  %.1113189.i.i = phi i32 [ %i.kr, %.lr.ph190.i.i ], [ %.1113189.i.i.unr, %.lr.ph190.i.i.prol.loopexit ]
  %.1115188.i.i = phi ptr [ %i.kq, %.lr.ph190.i.i ], [ %.1115188.i.i.unr, %.lr.ph190.i.i.prol.loopexit ] ; 4 uses
  %.1117187.i.i = phi ptr [ %i.kp, %.lr.ph190.i.i ], [ %.1117187.i.i.unr, %.lr.ph190.i.i.prol.loopexit ] ; 3 uses
  %.1119186.i.i = phi ptr [ %i.ko, %.lr.ph190.i.i ], [ %.1119186.i.i.unr, %.lr.ph190.i.i.prol.loopexit ] ; 4 uses
  %i.jn = load i16, ptr %.1119186.i.i, align 2, !tbaa !82
  %i.jo = zext i16 %i.jn to i32
  %i.jp = shl nuw i32 %i.jo, 16
  %i.jq = bitcast i32 %i.jp to float
  %i.jr = load float, ptr %.1117187.i.i, align 4, !tbaa !66
  %i.js = fsub fast float %i.jq, %i.jr
  %i.jt = call fast float @llvm.exp.f32(float %i.js) ; 2 uses
  %i.ju = bitcast float %i.jt to i32
  %i.jv = lshr i32 %i.ju, 16
  %i.jw = trunc nuw nsw i32 %i.jv to i16
  store i16 %i.jw, ptr %.1119186.i.i, align 2, !tbaa !82
  %i.jx = load float, ptr %.1115188.i.i, align 4, !tbaa !66
  %i.jy = fadd fast float %i.jt, %i.jx
  store float %i.jy, ptr %.1115188.i.i, align 4, !tbaa !66
  %i.jz = getelementptr inbounds nuw i8, ptr %.1119186.i.i, i64 2 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.1117187.i.i, i64 4
  %i.kb = getelementptr inbounds nuw i8, ptr %.1115188.i.i, i64 4 ; 2 uses
  %i.kc = load i16, ptr %i.jz, align 2, !tbaa !82
  %i.kd = zext i16 %i.kc to i32
  %i.ke = shl nuw i32 %i.kd, 16
  %i.kf = bitcast i32 %i.ke to float
  %i.kg = load float, ptr %i.ka, align 4, !tbaa !66
  %i.kh = fsub fast float %i.kf, %i.kg
  %i.ki = call fast float @llvm.exp.f32(float %i.kh) ; 2 uses
  %i.kj = bitcast float %i.ki to i32
  %i.kk = lshr i32 %i.kj, 16
  %i.kl = trunc nuw nsw i32 %i.kk to i16
  store i16 %i.kl, ptr %i.jz, align 2, !tbaa !82
  %i.km = load float, ptr %i.kb, align 4, !tbaa !66
  %i.kn = fadd fast float %i.ki, %i.km
  store float %i.kn, ptr %i.kb, align 4, !tbaa !66
  %i.ko = getelementptr inbounds nuw i8, ptr %.1119186.i.i, i64 4
  %i.kp = getelementptr inbounds nuw i8, ptr %.1117187.i.i, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %.1115188.i.i, i64 8
  %i.kr = add nuw nsw i32 %.1113189.i.i, 2        ; 2 uses
  %exitcond238.not.i.i.1 = icmp eq i32 %i.kr, %i.aw
  br i1 %exitcond238.not.i.i.1, label %._crit_edge191.i.i, label %.lr.ph190.i.i, !llvm.loop !278

._crit_edge191.i.i:                               ; preds = %.lr.ph190.i.i.prol.loopexit, %.lr.ph190.i.i, %middle.block168, %.preheader163.i.i
  %indvars.iv.next240.i.i = add nuw nsw i64 %indvars.iv239.i.i, 1 ; 2 uses
  %exitcond243.not.i.i = icmp eq i64 %indvars.iv.next240.i.i, %wide.trip.count236.i.i
  br i1 %exitcond243.not.i.i, label %.preheader162.i.i, label %bb.f, !llvm.loop !19

.preheader161.loopexit.i.i.unr-lcssa:             ; preds = %.lr.ph196.i.i
  %i.ks = and i32 %i.fo, 4
  %lcmp.mod225.not.not = icmp eq i32 %i.ks, 0
  br i1 %lcmp.mod225.not.not, label %.lr.ph196.i.i.epil.preheader, label %.preheader161.loopexit.i.i

.lr.ph196.i.i.epil.preheader:                     ; preds = %.preheader161.loopexit.i.i.unr-lcssa, %.lr.ph196.i.i.preheader
  %.0104194.i.i.epil.init = phi ptr [ %i.ay, %.lr.ph196.i.i.preheader ], [ %i.lx, %.preheader161.loopexit.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod227 = trunc i32 %i.fq to i1
  call void @llvm.assume(i1 %lcmp.mod227)
  %i.kt = load <4 x float>, ptr %.0104194.i.i.epil.init, align 1, !tbaa !63 ; 2 uses
  %i.ku = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.kt) ; 2 uses
  %i.kv = fmul fast <4 x float> %i.ku, %i.kt
  %i.kw = fsub fast <4 x float> splat (float 2.000000e+00), %i.kv
  %i.kx = fmul fast <4 x float> %i.kw, %i.ku
  store <4 x float> %i.kx, ptr %.0104194.i.i.epil.init, align 1, !tbaa !63
  %i.ky = getelementptr inbounds nuw i8, ptr %.0104194.i.i.epil.init, i64 16
  br label %.preheader161.loopexit.i.i

.preheader161.loopexit.i.i:                       ; preds = %.preheader161.loopexit.i.i.unr-lcssa, %.lr.ph196.i.i.epil.preheader
  %.lcssa215 = phi ptr [ %i.lx, %.preheader161.loopexit.i.i.unr-lcssa ], [ %i.ky, %.lr.ph196.i.i.epil.preheader ]
  %i.kz = and i32 %i.aw, 2147483644
  br label %.preheader161.i.i

.preheader161.i.i:                                ; preds = %.preheader161.loopexit.i.i, %.preheader162.i.i
  %.0104.lcssa.i.i = phi ptr [ %i.ay, %.preheader162.i.i ], [ %.lcssa215, %.preheader161.loopexit.i.i ] ; 3 uses
  %.0102.lcssa.i.i = phi i32 [ 0, %.preheader162.i.i ], [ %i.kz, %.preheader161.loopexit.i.i ] ; 4 uses
  %i.la = icmp slt i32 %.0102.lcssa.i.i, %i.aw
  br i1 %i.la, label %.lr.ph201.i.i.preheader, label %.preheader160.i.i

.lr.ph201.i.i.preheader:                          ; preds = %.preheader161.i.i
  %i.lb = xor i32 %.0102.lcssa.i.i, -1
  %i.lc = add i32 %i.aw, %i.lb                    ; 2 uses
  %i.ld = zext i32 %i.lc to i64
  %i.le = add nuw nsw i64 %i.ld, 1                ; 2 uses
  %min.iters.check140 = icmp ult i32 %i.lc, 3
  br i1 %min.iters.check140, label %.lr.ph201.i.i.preheader207, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph201.i.i.preheader
  %n.vec142 = and i64 %i.le, 8589934588           ; 4 uses
  %i.lf = trunc i64 %n.vec142 to i32
  %i.lg = add i32 %.0102.lcssa.i.i, %i.lf
  %i.lh = shl nuw nsw i64 %n.vec142, 2
  %i.li = getelementptr i8, ptr %.0104.lcssa.i.i, i64 %i.lh
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next147, %vector.body143 ] ; 2 uses
  %i.lj = shl i64 %index144, 2
  %next.gep145 = getelementptr i8, ptr %.0104.lcssa.i.i, i64 %i.lj ; 2 uses
  %wide.load146 = load <4 x float>, ptr %next.gep145, align 4, !tbaa !66
  %i.lk = fdiv fast <4 x float> splat (float 1.000000e+00), %wide.load146
  store <4 x float> %i.lk, ptr %next.gep145, align 4, !tbaa !66
  %index.next147 = add nuw i64 %index144, 4       ; 2 uses
  %i.ll = icmp eq i64 %index.next147, %n.vec142
  br i1 %i.ll, label %middle.block148, label %vector.body143, !llvm.loop !279

middle.block148:                                  ; preds = %vector.body143
  %cmp.n149 = icmp eq i64 %i.le, %n.vec142
  br i1 %cmp.n149, label %.preheader160.i.i, label %.lr.ph201.i.i.preheader207

.lr.ph201.i.i.preheader207:                       ; preds = %.lr.ph201.i.i.preheader, %middle.block148
  %.1103200.i.i.ph = phi i32 [ %.0102.lcssa.i.i, %.lr.ph201.i.i.preheader ], [ %i.lg, %middle.block148 ]
  %.1105199.i.i.ph = phi ptr [ %.0104.lcssa.i.i, %.lr.ph201.i.i.preheader ], [ %i.li, %middle.block148 ]
  br label %.lr.ph201.i.i

.lr.ph196.i.i:                                    ; preds = %.lr.ph196.i.i, %.lr.ph196.i.i.preheader.new
  %.0104194.i.i = phi ptr [ %i.ay, %.lr.ph196.i.i.preheader.new ], [ %i.lx, %.lr.ph196.i.i ] ; 4 uses
  %niter229 = phi i32 [ 0, %.lr.ph196.i.i.preheader.new ], [ %niter229.next.1, %.lr.ph196.i.i ]
  %i.lm = load <4 x float>, ptr %.0104194.i.i, align 1, !tbaa !63 ; 2 uses
  %i.ln = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.lm) ; 2 uses
  %i.lo = fmul fast <4 x float> %i.ln, %i.lm
  %i.lp = fsub fast <4 x float> splat (float 2.000000e+00), %i.lo
  %i.lq = fmul fast <4 x float> %i.lp, %i.ln
  store <4 x float> %i.lq, ptr %.0104194.i.i, align 1, !tbaa !63
  %i.lr = getelementptr inbounds nuw i8, ptr %.0104194.i.i, i64 16 ; 2 uses
  %i.ls = load <4 x float>, ptr %i.lr, align 1, !tbaa !63 ; 2 uses
  %i.lt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.ls) ; 2 uses
  %i.lu = fmul fast <4 x float> %i.lt, %i.ls
  %i.lv = fsub fast <4 x float> splat (float 2.000000e+00), %i.lu
  %i.lw = fmul fast <4 x float> %i.lv, %i.lt
  store <4 x float> %i.lw, ptr %i.lr, align 1, !tbaa !63
  %i.lx = getelementptr inbounds nuw i8, ptr %.0104194.i.i, i64 32 ; 3 uses
  %niter229.next.1 = add i32 %niter229, 2         ; 2 uses
  %niter229.ncmp.1.not = icmp eq i32 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1.not, label %.preheader161.loopexit.i.i.unr-lcssa, label %.lr.ph196.i.i, !llvm.loop !20

.preheader160.i.i:                                ; preds = %.lr.ph201.i.i, %middle.block148, %.preheader161.i.i
  br i1 %i.cq, label %.lr.ph216.i.i, label %_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_.exit

.lr.ph216.i.i:                                    ; preds = %.preheader160.i.i
  %i.ly = and i32 %i.aw, -4
  %wide.trip.count249.i.i = zext nneg i32 %i.az to i64
  br label %bb.g

.lr.ph201.i.i:                                    ; preds = %.lr.ph201.i.i.preheader207, %.lr.ph201.i.i
  %.1103200.i.i = phi i32 [ %i.mc, %.lr.ph201.i.i ], [ %.1103200.i.i.ph, %.lr.ph201.i.i.preheader207 ]
  %.1105199.i.i = phi ptr [ %i.mb, %.lr.ph201.i.i ], [ %.1105199.i.i.ph, %.lr.ph201.i.i.preheader207 ] ; 3 uses
  %i.lz = load float, ptr %.1105199.i.i, align 4, !tbaa !66
  %i.ma = fdiv fast float 1.000000e+00, %i.lz
  store float %i.ma, ptr %.1105199.i.i, align 4, !tbaa !66
  %i.mb = getelementptr inbounds nuw i8, ptr %.1105199.i.i, i64 4
  %i.mc = add nuw nsw i32 %.1103200.i.i, 1        ; 2 uses
  %exitcond244.not.i.i = icmp eq i32 %i.mc, %i.aw
  br i1 %exitcond244.not.i.i, label %.preheader160.i.i, label %.lr.ph201.i.i, !llvm.loop !280

bb.g:                                             ; preds = %._crit_edge214.i.i, %.lr.ph216.i.i
  %indvars.iv246.i.i = phi i64 [ 0, %.lr.ph216.i.i ], [ %indvars.iv.next247.i.i, %._crit_edge214.i.i ] ; 2 uses
  %i.md = mul nsw i64 %indvars.iv246.i.i, %i.ax
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.md ; 2 uses
  br i1 %i.ba, label %.lr.ph206.i.i, label %.preheader.i42.i

.preheader.i42.i:                                 ; preds = %.lr.ph206.i.i, %bb.g
  %.099.lcssa.i.i = phi ptr [ %i.me, %bb.g ], [ %i.nw, %.lr.ph206.i.i ] ; 3 uses
  %.097.lcssa.i.i = phi ptr [ %i.ay, %bb.g ], [ %i.nx, %.lr.ph206.i.i ] ; 3 uses
  %.096.lcssa.i.i = phi i32 [ 0, %bb.g ], [ %i.ly, %.lr.ph206.i.i ] ; 4 uses
  %i.mf = icmp slt i32 %.096.lcssa.i.i, %i.aw
  br i1 %i.mf, label %.lr.ph213.i.i.preheader, label %._crit_edge214.i.i

.lr.ph213.i.i.preheader:                          ; preds = %.preheader.i42.i
  %i.mg = xor i32 %.096.lcssa.i.i, -1
  %i.mh = add i32 %i.aw, %i.mg                    ; 2 uses
  %i.mi = zext i32 %i.mh to i64
  %i.mj = add nuw nsw i64 %i.mi, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.mh, 7
  br i1 %min.iters.check, label %.lr.ph213.i.i.preheader204, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph213.i.i.preheader
  %n.vec = and i64 %i.mj, 8589934584              ; 5 uses
  %i.mk = trunc i64 %n.vec to i32
  %i.ml = add i32 %.096.lcssa.i.i, %i.mk
end_hunk_10
begin_hunk_11_@_ZNK4ncnn11Softmax_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.10:bb.a
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next95, %vector.body88 ] ; 2 uses
  %vec.phi90 = phi <4 x float> [ splat (float f0xFF7FFFFF), %vector.ph86 ], [ %i.bi, %vector.body88 ]
  %vec.phi91 = phi <4 x float> [ splat (float f0xFF7FFFFF), %vector.ph86 ], [ %i.bj, %vector.body88 ]
  %i.ba = shl i64 %index89, 1
  %next.gep92 = getelementptr i8, ptr %.056.lcssa.i, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep92, i64 8
  %wide.load93 = load <4 x i16>, ptr %next.gep92, align 2, !tbaa !82
  %wide.load94 = load <4 x i16>, ptr %i.bb, align 2, !tbaa !82
  %i.bc = zext <4 x i16> %wide.load93 to <4 x i32>
  %i.bd = zext <4 x i16> %wide.load94 to <4 x i32>
  %i.be = shl nuw <4 x i32> %i.bc, splat (i32 16)
  %i.bf = shl nuw <4 x i32> %i.bd, splat (i32 16)
  %i.bg = bitcast <4 x i32> %i.be to <4 x float>
  %i.bh = bitcast <4 x i32> %i.bf to <4 x float>
  %i.bi = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi90, <4 x float> %i.bg) ; 2 uses
  %i.bj = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi91, <4 x float> %i.bh) ; 2 uses
  %index.next95 = add nuw i64 %index89, 8         ; 2 uses
  %i.bk = icmp eq i64 %index.next95, %n.vec87
  br i1 %i.bk, label %middle.block96, label %vector.body88, !llvm.loop !291

middle.block96:                                   ; preds = %vector.body88
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bi, <4 x float> %i.bj)
  %i.bl = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  %cmp.n97 = icmp eq i64 %i.av, %n.vec87
  br i1 %cmp.n97, label %._crit_edge.i, label %.lr.ph126.i.preheader103

.lr.ph126.i.preheader103:                         ; preds = %.lr.ph126.i.preheader, %middle.block96
  %.157125.i.ph = phi ptr [ %.056.lcssa.i, %.lr.ph126.i.preheader ], [ %i.ax, %middle.block96 ]
  %.159124.i.ph = phi i32 [ %.058.lcssa.i, %.lr.ph126.i.preheader ], [ %i.az, %middle.block96 ]
  %.0111123.i.ph = phi float [ f0xFF7FFFFF, %.lr.ph126.i.preheader ], [ %i.bl, %middle.block96 ]
  br label %.lr.ph126.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.056120.i = phi ptr [ %.02034, %.lr.ph.i.preheader.new ], [ %i.bz, %.lr.ph.i ] ; 3 uses
  %.0109118.i = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader.new ], [ %i.by, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bm = load i64, ptr %.056120.i, align 1, !tbaa !63
  %i.bn = insertelement <2 x i64> poison, i64 %i.bm, i64 0
  %i.bo = bitcast <2 x i64> %i.bn to <8 x i16>
  %i.bp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bq = bitcast <8 x i16> %i.bp to <4 x float>
  %i.br = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0109118.i, <4 x float> nofpclass(nan inf) %i.bq)
  %i.bs = getelementptr inbounds nuw i8, ptr %.056120.i, i64 8
  %i.bt = load i64, ptr %i.bs, align 1, !tbaa !63
  %i.bu = insertelement <2 x i64> poison, i64 %i.bt, i64 0
  %i.bv = bitcast <2 x i64> %i.bu to <8 x i16>
  %i.bw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bx = bitcast <8 x i16> %i.bw to <4 x float>
  %i.by = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.br, <4 x float> nofpclass(nan inf) %i.bx) ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.056120.i, i64 16 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader117.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !12

.lr.ph126.i:                                      ; preds = %.lr.ph126.i.preheader103, %.lr.ph126.i
  %.157125.i = phi ptr [ %i.ca, %.lr.ph126.i ], [ %.157125.i.ph, %.lr.ph126.i.preheader103 ] ; 2 uses
  %.159124.i = phi i32 [ %i.cf, %.lr.ph126.i ], [ %.159124.i.ph, %.lr.ph126.i.preheader103 ]
  %.0111123.i = phi float [ %.sroa.speculated75.i, %.lr.ph126.i ], [ %.0111123.i.ph, %.lr.ph126.i.preheader103 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.157125.i, i64 2
  %i.cb = load i16, ptr %.157125.i, align 2, !tbaa !82
  %i.cc = zext i16 %i.cb to i32
  %i.cd = shl nuw i32 %i.cc, 16
  %i.ce = bitcast i32 %i.cd to float
  %.sroa.speculated75.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.0111123.i, float %i.ce) ; 2 uses
  %i.cf = add nuw nsw i32 %.159124.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cf, %i.ac
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph126.i, !llvm.loop !292

._crit_edge.i:                                    ; preds = %.lr.ph126.i, %middle.block96, %.preheader117.i
  %.0111.lcssa.i = phi float [ f0xFF7FFFFF, %.preheader117.i ], [ %i.bl, %middle.block96 ], [ %.sroa.speculated75.i, %.lr.ph126.i ] ; 3 uses
  %i.cg = icmp eq i32 %i.aa, 1                    ; 2 uses
  br i1 %i.cg, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.ch = shufflevector <4 x float> %.0109.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ci = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0109.lcssa.i, <4 x float> nofpclass(nan inf) %i.ch) ; 2 uses
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ck = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ci, <4 x float> nofpclass(nan inf) %i.cj)
  %i.cl = extractelement <4 x float> %i.ck, i64 0 ; 2 uses
  %i.cm = fcmp fast olt float %.0111.lcssa.i, %i.cl
  %.sroa.speculated.i = select i1 %i.cm, float %i.cl, float %.0111.lcssa.i ; 2 uses
  %i.cn = insertelement <4 x float> poison, float %.sroa.speculated.i, i64 0
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.1112.i = phi nsz float [ %.sroa.speculated.i, %bb.c ], [ %.0111.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.1110.i = phi nsz <4 x float> [ %i.co, %bb.c ], [ %.0109.lcssa.i, %._crit_edge.i ]
  br i1 %i.ad, label %.lr.ph132.i, label %.preheader116.i

.preheader116.loopexit.i:                         ; preds = %.lr.ph132.i
  %i.cp = and i32 %i.ac, 2147483644
  br label %.preheader116.i

.preheader116.i:                                  ; preds = %.preheader116.loopexit.i, %bb.d
  %.0113.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.fl, %.preheader116.loopexit.i ] ; 5 uses
  %.052.lcssa.i = phi ptr [ %.02034, %bb.d ], [ %i.fm, %.preheader116.loopexit.i ] ; 3 uses
  %.050.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.cp, %.preheader116.loopexit.i ] ; 4 uses
  %i.cq = icmp slt i32 %.050.lcssa.i, %i.ac
  br i1 %i.cq, label %.lr.ph139.i.preheader, label %._crit_edge140.i

.lr.ph139.i.preheader:                            ; preds = %.preheader116.i
  %i.cr = xor i32 %.050.lcssa.i, -1
  %i.cs = add i32 %i.ac, %i.cr                    ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check68 = icmp ult i32 %i.cs, 7
  br i1 %min.iters.check68, label %.lr.ph139.i.preheader102, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph139.i.preheader
  %n.vec70 = and i64 %i.cu, 8589934584            ; 4 uses
  %i.cv = trunc i64 %n.vec70 to i32
  %i.cw = add i32 %.050.lcssa.i, %i.cv
  %i.cx = shl nuw nsw i64 %n.vec70, 1
  %i.cy = getelementptr i8, ptr %.052.lcssa.i, i64 %i.cx
  %broadcast.splatinsert71 = insertelement <4 x float> poison, float %.1112.i, i64 0
  %broadcast.splat72 = shufflevector <4 x float> %broadcast.splatinsert71, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph69
  %index74 = phi i64 [ 0, %vector.ph69 ], [ %index.next79, %vector.body73 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph69 ], [ %i.dr, %vector.body73 ]
  %vec.phi75 = phi <4 x float> [ zeroinitializer, %vector.ph69 ], [ %i.ds, %vector.body73 ]
  %i.cz = shl i64 %index74, 1
  %next.gep76 = getelementptr i8, ptr %.052.lcssa.i, i64 %i.cz ; 3 uses
  %i.da = getelementptr i8, ptr %next.gep76, i64 8 ; 2 uses
  %wide.load77 = load <4 x i16>, ptr %next.gep76, align 2, !tbaa !82
  %wide.load78 = load <4 x i16>, ptr %i.da, align 2, !tbaa !82
  %i.db = zext <4 x i16> %wide.load77 to <4 x i32>
  %i.dc = zext <4 x i16> %wide.load78 to <4 x i32>
  %i.dd = shl nuw <4 x i32> %i.db, splat (i32 16)
  %i.de = shl nuw <4 x i32> %i.dc, splat (i32 16)
  %i.df = bitcast <4 x i32> %i.dd to <4 x float>
  %i.dg = bitcast <4 x i32> %i.de to <4 x float>
  %i.dh = fsub fast <4 x float> %i.df, %broadcast.splat72
  %i.di = fsub fast <4 x float> %i.dg, %broadcast.splat72
  %i.dj = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.dh) ; 2 uses
  %i.dk = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.di) ; 2 uses
  %i.dl = bitcast <4 x float> %i.dj to <4 x i32>
  %i.dm = bitcast <4 x float> %i.dk to <4 x i32>
  %i.dn = lshr <4 x i32> %i.dl, splat (i32 16)
  %i.do = lshr <4 x i32> %i.dm, splat (i32 16)
  %i.dp = trunc nuw nsw <4 x i32> %i.dn to <4 x i16>
  %i.dq = trunc nuw nsw <4 x i32> %i.do to <4 x i16>
  store <4 x i16> %i.dp, ptr %next.gep76, align 2, !tbaa !82
  store <4 x i16> %i.dq, ptr %i.da, align 2, !tbaa !82
  %i.dr = fadd fast <4 x float> %i.dj, %vec.phi   ; 2 uses
  %i.ds = fadd fast <4 x float> %i.dk, %vec.phi75 ; 2 uses
  %index.next79 = add nuw i64 %index74, 8         ; 2 uses
  %i.dt = icmp eq i64 %index.next79, %n.vec70
  br i1 %i.dt, label %middle.block80, label %vector.body73, !llvm.loop !293

middle.block80:                                   ; preds = %vector.body73
  %bin.rdx = fadd fast <4 x float> %i.ds, %i.dr
  %i.du = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n81 = icmp eq i64 %i.cu, %n.vec70
  br i1 %cmp.n81, label %._crit_edge140.i, label %.lr.ph139.i.preheader102

.lr.ph139.i.preheader102:                         ; preds = %.lr.ph139.i.preheader, %middle.block80
  %.151138.i.ph = phi i32 [ %.050.lcssa.i, %.lr.ph139.i.preheader ], [ %i.cw, %middle.block80 ]
  %.153137.i.ph = phi ptr [ %.052.lcssa.i, %.lr.ph139.i.preheader ], [ %i.cy, %middle.block80 ]
  %.054136.i.ph = phi float [ 0.000000e+00, %.lr.ph139.i.preheader ], [ %i.du, %middle.block80 ]
  br label %.lr.ph139.i

.lr.ph132.i:                                      ; preds = %bb.d, %.lr.ph132.i
  %.050130.i = phi i32 [ %i.fn, %.lr.ph132.i ], [ 0, %bb.d ]
  %.052129.i = phi ptr [ %i.fm, %.lr.ph132.i ], [ %.02034, %bb.d ] ; 3 uses
  %.0113128.i = phi <4 x float> [ %i.fl, %.lr.ph132.i ], [ zeroinitializer, %bb.d ]
  %i.dv = load i64, ptr %.052129.i, align 1, !tbaa !63
  %i.dw = insertelement <2 x i64> poison, i64 %i.dv, i64 0
  %i.dx = bitcast <2 x i64> %i.dw to <8 x i16>
  %i.dy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dz = bitcast <8 x i16> %i.dy to <4 x float>
  %i.ea = fsub fast <4 x float> %i.dz, %.1110.i
  %i.eb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ea, <4 x float> splat (float f0x42B0C0A5))
  %i.ec = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eb, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ed = fmul fast <4 x float> %i.ec, splat (float f0x3FB8AA3B)
  %i.ee = fadd fast <4 x float> %i.ed, splat (float 5.000000e-01) ; 2 uses
  %i.ef = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ee)
  %i.eg = sitofp fast <4 x i32> %i.ef to <4 x float> ; 2 uses
  %i.eh = fcmp fast olt <4 x float> %i.ee, %i.eg
  %i.ei = select <4 x i1> %i.eh, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ej = fsub fast <4 x float> %i.eg, %i.ei      ; 2 uses
  %i.ek = fmul fast <4 x float> %i.ej, splat (float f0x3F317218)
  %i.el = fsub fast <4 x float> %i.ec, %i.ek      ; 8 uses
  %i.em = fmul fast <4 x float> %i.el, %i.el
  %i.en = fmul fast <4 x float> %i.el, splat (float f0x39506967)
  %i.eo = fadd fast <4 x float> %i.en, splat (float f0x3AB743CE)
  %i.ep = fmul fast <4 x float> %i.eo, %i.el
  %i.eq = fadd fast <4 x float> %i.ep, splat (float f0x3C088908)
  %i.er = fmul fast <4 x float> %i.eq, %i.el
  %i.es = fadd fast <4 x float> %i.er, splat (float f0x3D2AA9C1)
  %i.et = fmul fast <4 x float> %i.es, %i.el
  %i.eu = fadd fast <4 x float> %i.et, splat (float f0x3E2AAAAA)
  %i.ev = fmul fast <4 x float> %i.eu, %i.el
  %i.ew = fadd fast <4 x float> %i.ev, splat (float 5.000000e-01)
  %i.ex = fmul fast <4 x float> %i.em, %i.ew
  %i.ey = fadd fast <4 x float> %i.el, splat (float 1.000000e+00)
  %i.ez = fadd fast <4 x float> %i.ey, %i.ex
  %i.fa = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ej)
  %i.fb = shl <4 x i32> %i.fa, splat (i32 23)
  %i.fc = add <4 x i32> %i.fb, splat (i32 1065353216)
  %i.fd = bitcast <4 x i32> %i.fc to <4 x float>
  %i.fe = fmul fast <4 x float> %i.ez, %i.fd      ; 2 uses
  %i.ff = bitcast <4 x float> %i.fe to <8 x i16>
  %i.fg = shufflevector <8 x i16> %i.ff, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.fh = bitcast <8 x i16> %i.fg to <4 x float>
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.fj = bitcast <4 x float> %i.fi to <2 x i64>
  %i.fk = extractelement <2 x i64> %i.fj, i64 0
  store i64 %i.fk, ptr %.052129.i, align 1, !tbaa !63
  %i.fl = fadd fast <4 x float> %i.fe, %.0113128.i ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.052129.i, i64 8 ; 2 uses
  %i.fn = add nuw nsw i32 %.050130.i, 4           ; 2 uses
  %i.fo = or disjoint i32 %i.fn, 3
  %i.fp = icmp slt i32 %i.fo, %i.ac
  br i1 %i.fp, label %.lr.ph132.i, label %.preheader116.loopexit.i, !llvm.loop !13

.lr.ph139.i:                                      ; preds = %.lr.ph139.i.preheader102, %.lr.ph139.i
  %.151138.i = phi i32 [ %i.gb, %.lr.ph139.i ], [ %.151138.i.ph, %.lr.ph139.i.preheader102 ]
  %.153137.i = phi ptr [ %i.ga, %.lr.ph139.i ], [ %.153137.i.ph, %.lr.ph139.i.preheader102 ] ; 3 uses
  %.054136.i = phi float [ %i.fz, %.lr.ph139.i ], [ %.054136.i.ph, %.lr.ph139.i.preheader102 ]
  %i.fq = load i16, ptr %.153137.i, align 2, !tbaa !82
  %i.fr = zext i16 %i.fq to i32
  %i.fs = shl nuw i32 %i.fr, 16
  %i.ft = bitcast i32 %i.fs to float
  %i.fu = fsub fast float %i.ft, %.1112.i
  %i.fv = call fast float @llvm.exp.f32(float %i.fu) ; 2 uses
  %i.fw = bitcast float %i.fv to i32
  %i.fx = lshr i32 %i.fw, 16
  %i.fy = trunc nuw nsw i32 %i.fx to i16
  store i16 %i.fy, ptr %.153137.i, align 2, !tbaa !82
  %i.fz = fadd fast float %i.fv, %.054136.i       ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.153137.i, i64 2
  %i.gb = add nuw nsw i32 %.151138.i, 1           ; 2 uses
  %exitcond160.not.i = icmp eq i32 %i.gb, %i.ac
  br i1 %exitcond160.not.i, label %._crit_edge140.i, label %.lr.ph139.i, !llvm.loop !294

._crit_edge140.i:                                 ; preds = %.lr.ph139.i, %middle.block80, %.preheader116.i
  %.054.lcssa.i = phi float [ 0.000000e+00, %.preheader116.i ], [ %i.du, %middle.block80 ], [ %i.fz, %.lr.ph139.i ] ; 3 uses
  %i.gc = icmp eq i32 %i.aa, 4
  br i1 %i.gc, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %._crit_edge140.i
  %i.gd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %.0113.lcssa.i) ; 2 uses
  %i.ge = fmul fast <4 x float> %i.gd, %.0113.lcssa.i
  %i.gf = fsub fast <4 x float> splat (float 2.000000e+00), %i.ge
  %i.gg = fmul fast <4 x float> %i.gf, %i.gd
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge140.i
  br i1 %i.cg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.gh = shufflevector <4 x float> %.0113.lcssa.i, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gi = shufflevector <4 x float> %.0113.lcssa.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gj = fadd fast <2 x float> %i.gh, %i.gi
  %i.gk = call fast float @llvm.vector.reduce.fadd.v2f32(float %.054.lcssa.i, <2 x float> %i.gj)
  %i.gl = fdiv fast float 1.000000e+00, %i.gk     ; 2 uses
  %i.gm = insertelement <4 x float> poison, float %i.gl, i64 0
  %i.gn = shufflevector <4 x float> %i.gm, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.thread.i
  %.2.i = phi nsz <4 x float> [ %i.gn, %bb.f ], [ %.0113.lcssa.i, %bb.e ], [ %i.gg, %.thread.i ]
  %.155.i = phi nsz float [ %i.gl, %bb.f ], [ %.054.lcssa.i, %bb.e ], [ %.054.lcssa.i, %.thread.i ] ; 2 uses
  br i1 %i.ad, label %.lr.ph145.i, label %.preheader.i

.preheader.loopexit.i:                            ; preds = %.lr.ph145.i
  %i.go = and i32 %i.ac, 2147483644
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.g
  %.048.lcssa.i = phi ptr [ %.02034, %bb.g ], [ %i.ht, %.preheader.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.go, %.preheader.loopexit.i ] ; 4 uses
  %i.gp = icmp slt i32 %.0.lcssa.i, %i.ac
  br i1 %i.gp, label %.lr.ph150.i.preheader, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit

.lr.ph150.i.preheader:                            ; preds = %.preheader.i
  %i.gq = xor i32 %.0.lcssa.i, -1
  %i.gr = add i32 %i.ac, %i.gq                    ; 2 uses
  %i.gs = zext i32 %i.gr to i64
  %i.gt = add nuw nsw i64 %i.gs, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.gr, 7
  br i1 %min.iters.check, label %.lr.ph150.i.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph150.i.preheader
  %n.vec = and i64 %i.gt, 8589934584              ; 4 uses
  %i.gu = trunc i64 %n.vec to i32
  %i.gv = add i32 %.0.lcssa.i, %i.gu
  %i.gw = shl nuw nsw i64 %n.vec, 1
  %i.gx = getelementptr i8, ptr %.048.lcssa.i, i64 %i.gw
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.155.i, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gy = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.048.lcssa.i, i64 %i.gy ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !82
  %i.gz = zext <8 x i16> %wide.load to <8 x i32>
  %i.ha = shl nuw <8 x i32> %i.gz, splat (i32 16)
  %i.hb = bitcast <8 x i32> %i.ha to <8 x float>
  %i.hc = fmul fast <8 x float> %broadcast.splat, %i.hb
  %i.hd = bitcast <8 x float> %i.hc to <8 x i32>
  %i.he = lshr <8 x i32> %i.hd, splat (i32 16)
  %i.hf = trunc nuw <8 x i32> %i.he to <8 x i16>
  store <8 x i16> %i.hf, ptr %next.gep, align 2, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gt, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit, label %.lr.ph150.i.preheader101

.lr.ph150.i.preheader101:                         ; preds = %.lr.ph150.i.preheader, %middle.block
  %.1149.i.ph = phi i32 [ %.0.lcssa.i, %.lr.ph150.i.preheader ], [ %i.gv, %middle.block ]
  %.149148.i.ph = phi ptr [ %.048.lcssa.i, %.lr.ph150.i.preheader ], [ %i.gx, %middle.block ]
  br label %.lr.ph150.i

.lr.ph145.i:                                      ; preds = %bb.g, %.lr.ph145.i
  %.0143.i = phi i32 [ %i.hu, %.lr.ph145.i ], [ 0, %bb.g ]
  %.048142.i = phi ptr [ %i.ht, %.lr.ph145.i ], [ %.02034, %bb.g ] ; 3 uses
  %i.hh = load i64, ptr %.048142.i, align 1, !tbaa !63
  %i.hi = insertelement <2 x i64> poison, i64 %i.hh, i64 0
  %i.hj = bitcast <2 x i64> %i.hi to <8 x i16>
  %i.hk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hl = bitcast <8 x i16> %i.hk to <4 x float>
  %i.hm = fmul fast <4 x float> %.2.i, %i.hl
  %i.hn = bitcast <4 x float> %i.hm to <8 x i16>
  %i.ho = shufflevector <8 x i16> %i.hn, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.hp = bitcast <8 x i16> %i.ho to <4 x float>
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.hr = bitcast <4 x float> %i.hq to <2 x i64>
  %i.hs = extractelement <2 x i64> %i.hr, i64 0
  store i64 %i.hs, ptr %.048142.i, align 1, !tbaa !63
  %i.ht = getelementptr inbounds nuw i8, ptr %.048142.i, i64 8 ; 2 uses
  %i.hu = add nuw nsw i32 %.0143.i, 4             ; 2 uses
  %i.hv = or disjoint i32 %i.hu, 3
  %i.hw = icmp slt i32 %i.hv, %i.ac
  br i1 %i.hw, label %.lr.ph145.i, label %.preheader.loopexit.i, !llvm.loop !14

.lr.ph150.i:                                      ; preds = %.lr.ph150.i.preheader101, %.lr.ph150.i
  %.1149.i = phi i32 [ %i.ig, %.lr.ph150.i ], [ %.1149.i.ph, %.lr.ph150.i.preheader101 ]
  %.149148.i = phi ptr [ %i.if, %.lr.ph150.i ], [ %.149148.i.ph, %.lr.ph150.i.preheader101 ] ; 3 uses
  %i.hx = load i16, ptr %.149148.i, align 2, !tbaa !82
  %i.hy = zext i16 %i.hx to i32
  %i.hz = shl nuw i32 %i.hy, 16
  %i.ia = bitcast i32 %i.hz to float
  %i.ib = fmul fast float %.155.i, %i.ia
  %i.ic = bitcast float %i.ib to i32
  %i.id = lshr i32 %i.ic, 16
  %i.ie = trunc nuw i32 %i.id to i16
  store i16 %i.ie, ptr %.149148.i, align 2, !tbaa !82
  %i.if = getelementptr inbounds nuw i8, ptr %.149148.i, i64 2
  %i.ig = add nuw nsw i32 %.1149.i, 1             ; 2 uses
  %exitcond161.not.i = icmp eq i32 %i.ig, %i.ac
  br i1 %exitcond161.not.i, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit, label %.lr.ph150.i, !llvm.loop !296

_ZN4ncnnL17softmax_bf16s_sseEPtii.exit:           ; preds = %.lr.ph150.i, %middle.block, %.preheader.i
  %i.ih = load i32, ptr %5, align 4, !tbaa !43    ; 2 uses
  %i.ii = load i32, ptr %6, align 4, !tbaa !43    ; 2 uses
  %i.ij = mul nsw i32 %i.ii, %i.ih
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [2 x i8], ptr %.02034, i64 %i.ik
  %i.im = add nuw nsw i32 %.035, 1                ; 2 uses
  %i.in = load i32, ptr %4, align 4, !tbaa !43    ; 2 uses
  %i.io = icmp slt i32 %i.im, %i.in
  br i1 %i.io, label %.lr.ph, label %._crit_edge, !llvm.loop !297

._crit_edge38:                                    ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge38, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Softmax_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.11(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !43     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !43
end_hunk_11
begin_hunk_12_@_ZNK4ncnn11Softmax_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.12:bb.a
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph105
  %index108 = phi i64 [ 0, %vector.ph105 ], [ %index.next114, %vector.body107 ] ; 2 uses
  %vec.phi109 = phi <4 x float> [ splat (float f0xFF7FFFFF), %vector.ph105 ], [ %i.bt, %vector.body107 ]
  %vec.phi110 = phi <4 x float> [ splat (float f0xFF7FFFFF), %vector.ph105 ], [ %i.bu, %vector.body107 ]
  %i.bl = shl i64 %index108, 1
  %next.gep111 = getelementptr i8, ptr %.056.lcssa.i, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep111, i64 8
  %wide.load112 = load <4 x i16>, ptr %next.gep111, align 2, !tbaa !82
  %wide.load113 = load <4 x i16>, ptr %i.bm, align 2, !tbaa !82
  %i.bn = zext <4 x i16> %wide.load112 to <4 x i32>
  %i.bo = zext <4 x i16> %wide.load113 to <4 x i32>
  %i.bp = shl nuw <4 x i32> %i.bn, splat (i32 16)
  %i.bq = shl nuw <4 x i32> %i.bo, splat (i32 16)
  %i.br = bitcast <4 x i32> %i.bp to <4 x float>
  %i.bs = bitcast <4 x i32> %i.bq to <4 x float>
  %i.bt = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi109, <4 x float> %i.br) ; 2 uses
  %i.bu = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi110, <4 x float> %i.bs) ; 2 uses
  %index.next114 = add nuw i64 %index108, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next114, %n.vec106
  br i1 %i.bv, label %middle.block115, label %vector.body107, !llvm.loop !309

middle.block115:                                  ; preds = %vector.body107
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bt, <4 x float> %i.bu)
  %i.bw = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  %cmp.n116 = icmp eq i64 %i.bg, %n.vec106
  br i1 %cmp.n116, label %._crit_edge.i, label %.lr.ph126.i.preheader122

.lr.ph126.i.preheader122:                         ; preds = %.lr.ph126.i.preheader, %middle.block115
  %.157125.i.ph = phi ptr [ %.056.lcssa.i, %.lr.ph126.i.preheader ], [ %i.bi, %middle.block115 ]
  %.159124.i.ph = phi i32 [ %.058.lcssa.i, %.lr.ph126.i.preheader ], [ %i.bk, %middle.block115 ]
  %.0111123.i.ph = phi float [ f0xFF7FFFFF, %.lr.ph126.i.preheader ], [ %i.bw, %middle.block115 ]
  br label %.lr.ph126.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.056120.i = phi ptr [ %.138, %.lr.ph.i.preheader.new ], [ %i.ck, %.lr.ph.i ] ; 3 uses
  %.0109118.i = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader.new ], [ %i.cj, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bx = load i64, ptr %.056120.i, align 1, !tbaa !63
  %i.by = insertelement <2 x i64> poison, i64 %i.bx, i64 0
  %i.bz = bitcast <2 x i64> %i.by to <8 x i16>
  %i.ca = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cb = bitcast <8 x i16> %i.ca to <4 x float>
  %i.cc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0109118.i, <4 x float> nofpclass(nan inf) %i.cb)
  %i.cd = getelementptr inbounds nuw i8, ptr %.056120.i, i64 8
  %i.ce = load i64, ptr %i.cd, align 1, !tbaa !63
  %i.cf = insertelement <2 x i64> poison, i64 %i.ce, i64 0
  %i.cg = bitcast <2 x i64> %i.cf to <8 x i16>
  %i.ch = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ci = bitcast <8 x i16> %i.ch to <4 x float>
  %i.cj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cc, <4 x float> nofpclass(nan inf) %i.ci) ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.056120.i, i64 16 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader117.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !12

.lr.ph126.i:                                      ; preds = %.lr.ph126.i.preheader122, %.lr.ph126.i
  %.157125.i = phi ptr [ %i.cl, %.lr.ph126.i ], [ %.157125.i.ph, %.lr.ph126.i.preheader122 ] ; 2 uses
  %.159124.i = phi i32 [ %i.cq, %.lr.ph126.i ], [ %.159124.i.ph, %.lr.ph126.i.preheader122 ]
  %.0111123.i = phi float [ %.sroa.speculated75.i, %.lr.ph126.i ], [ %.0111123.i.ph, %.lr.ph126.i.preheader122 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.157125.i, i64 2
  %i.cm = load i16, ptr %.157125.i, align 2, !tbaa !82
  %i.cn = zext i16 %i.cm to i32
  %i.co = shl nuw i32 %i.cn, 16
  %i.cp = bitcast i32 %i.co to float
  %.sroa.speculated75.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.0111123.i, float %i.cp) ; 2 uses
  %i.cq = add nuw nsw i32 %.159124.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cq, %i.an
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph126.i, !llvm.loop !310

._crit_edge.i:                                    ; preds = %.lr.ph126.i, %middle.block115, %.preheader117.i
  %.0111.lcssa.i = phi float [ f0xFF7FFFFF, %.preheader117.i ], [ %i.bw, %middle.block115 ], [ %.sroa.speculated75.i, %.lr.ph126.i ] ; 3 uses
  %i.cr = icmp eq i32 %i.al, 1                    ; 2 uses
  br i1 %i.cr, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.cs = shufflevector <4 x float> %.0109.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ct = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0109.lcssa.i, <4 x float> nofpclass(nan inf) %i.cs) ; 2 uses
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ct, <4 x float> nofpclass(nan inf) %i.cu)
  %i.cw = extractelement <4 x float> %i.cv, i64 0 ; 2 uses
  %i.cx = fcmp fast olt float %.0111.lcssa.i, %i.cw
  %.sroa.speculated.i = select i1 %i.cx, float %i.cw, float %.0111.lcssa.i ; 2 uses
  %i.cy = insertelement <4 x float> poison, float %.sroa.speculated.i, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.1112.i = phi nsz float [ %.sroa.speculated.i, %bb.c ], [ %.0111.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.1110.i = phi nsz <4 x float> [ %i.cz, %bb.c ], [ %.0109.lcssa.i, %._crit_edge.i ]
  br i1 %i.ao, label %.lr.ph132.i, label %.preheader116.i

.preheader116.loopexit.i:                         ; preds = %.lr.ph132.i
  %i.da = and i32 %i.an, 2147483644
  br label %.preheader116.i

.preheader116.i:                                  ; preds = %.preheader116.loopexit.i, %bb.d
  %.0113.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.d ], [ %i.fw, %.preheader116.loopexit.i ] ; 5 uses
  %.052.lcssa.i = phi ptr [ %.138, %bb.d ], [ %i.fx, %.preheader116.loopexit.i ] ; 3 uses
  %.050.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.da, %.preheader116.loopexit.i ] ; 4 uses
  %i.db = icmp slt i32 %.050.lcssa.i, %i.an
  br i1 %i.db, label %.lr.ph139.i.preheader, label %._crit_edge140.i

.lr.ph139.i.preheader:                            ; preds = %.preheader116.i
  %i.dc = xor i32 %.050.lcssa.i, -1
  %i.dd = add i32 %i.an, %i.dc                    ; 2 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check87 = icmp ult i32 %i.dd, 7
  br i1 %min.iters.check87, label %.lr.ph139.i.preheader121, label %vector.ph88

vector.ph88:                                      ; preds = %.lr.ph139.i.preheader
  %n.vec89 = and i64 %i.df, 8589934584            ; 4 uses
  %i.dg = trunc i64 %n.vec89 to i32
  %i.dh = add i32 %.050.lcssa.i, %i.dg
  %i.di = shl nuw nsw i64 %n.vec89, 1
  %i.dj = getelementptr i8, ptr %.052.lcssa.i, i64 %i.di
  %broadcast.splatinsert90 = insertelement <4 x float> poison, float %.1112.i, i64 0
  %broadcast.splat91 = shufflevector <4 x float> %broadcast.splatinsert90, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph88
  %index93 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body92 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph88 ], [ %i.ec, %vector.body92 ]
  %vec.phi94 = phi <4 x float> [ zeroinitializer, %vector.ph88 ], [ %i.ed, %vector.body92 ]
  %i.dk = shl i64 %index93, 1
  %next.gep95 = getelementptr i8, ptr %.052.lcssa.i, i64 %i.dk ; 3 uses
  %i.dl = getelementptr i8, ptr %next.gep95, i64 8 ; 2 uses
  %wide.load96 = load <4 x i16>, ptr %next.gep95, align 2, !tbaa !82
  %wide.load97 = load <4 x i16>, ptr %i.dl, align 2, !tbaa !82
  %i.dm = zext <4 x i16> %wide.load96 to <4 x i32>
  %i.dn = zext <4 x i16> %wide.load97 to <4 x i32>
  %i.do = shl nuw <4 x i32> %i.dm, splat (i32 16)
  %i.dp = shl nuw <4 x i32> %i.dn, splat (i32 16)
  %i.dq = bitcast <4 x i32> %i.do to <4 x float>
  %i.dr = bitcast <4 x i32> %i.dp to <4 x float>
  %i.ds = fsub fast <4 x float> %i.dq, %broadcast.splat91
  %i.dt = fsub fast <4 x float> %i.dr, %broadcast.splat91
  %i.du = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.ds) ; 2 uses
  %i.dv = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.dt) ; 2 uses
  %i.dw = bitcast <4 x float> %i.du to <4 x i32>
  %i.dx = bitcast <4 x float> %i.dv to <4 x i32>
  %i.dy = lshr <4 x i32> %i.dw, splat (i32 16)
  %i.dz = lshr <4 x i32> %i.dx, splat (i32 16)
  %i.ea = trunc nuw nsw <4 x i32> %i.dy to <4 x i16>
  %i.eb = trunc nuw nsw <4 x i32> %i.dz to <4 x i16>
  store <4 x i16> %i.ea, ptr %next.gep95, align 2, !tbaa !82
  store <4 x i16> %i.eb, ptr %i.dl, align 2, !tbaa !82
  %i.ec = fadd fast <4 x float> %i.du, %vec.phi   ; 2 uses
  %i.ed = fadd fast <4 x float> %i.dv, %vec.phi94 ; 2 uses
  %index.next98 = add nuw i64 %index93, 8         ; 2 uses
  %i.ee = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.ee, label %middle.block99, label %vector.body92, !llvm.loop !311

middle.block99:                                   ; preds = %vector.body92
  %bin.rdx = fadd fast <4 x float> %i.ed, %i.ec
  %i.ef = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n100 = icmp eq i64 %i.df, %n.vec89
  br i1 %cmp.n100, label %._crit_edge140.i, label %.lr.ph139.i.preheader121

.lr.ph139.i.preheader121:                         ; preds = %.lr.ph139.i.preheader, %middle.block99
  %.151138.i.ph = phi i32 [ %.050.lcssa.i, %.lr.ph139.i.preheader ], [ %i.dh, %middle.block99 ]
  %.153137.i.ph = phi ptr [ %.052.lcssa.i, %.lr.ph139.i.preheader ], [ %i.dj, %middle.block99 ]
  %.054136.i.ph = phi float [ 0.000000e+00, %.lr.ph139.i.preheader ], [ %i.ef, %middle.block99 ]
  br label %.lr.ph139.i

.lr.ph132.i:                                      ; preds = %bb.d, %.lr.ph132.i
  %.050130.i = phi i32 [ %i.fy, %.lr.ph132.i ], [ 0, %bb.d ]
  %.052129.i = phi ptr [ %i.fx, %.lr.ph132.i ], [ %.138, %bb.d ] ; 3 uses
  %.0113128.i = phi <4 x float> [ %i.fw, %.lr.ph132.i ], [ zeroinitializer, %bb.d ]
  %i.eg = load i64, ptr %.052129.i, align 1, !tbaa !63
  %i.eh = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %i.ei = bitcast <2 x i64> %i.eh to <8 x i16>
  %i.ej = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ei, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ek = bitcast <8 x i16> %i.ej to <4 x float>
  %i.el = fsub fast <4 x float> %i.ek, %.1110.i
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.el, <4 x float> splat (float f0x42B0C0A5))
  %i.en = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.em, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eo = fmul fast <4 x float> %i.en, splat (float f0x3FB8AA3B)
  %i.ep = fadd fast <4 x float> %i.eo, splat (float 5.000000e-01) ; 2 uses
  %i.eq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ep)
  %i.er = sitofp fast <4 x i32> %i.eq to <4 x float> ; 2 uses
  %i.es = fcmp fast olt <4 x float> %i.ep, %i.er
  %i.et = select <4 x i1> %i.es, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eu = fsub fast <4 x float> %i.er, %i.et      ; 2 uses
  %i.ev = fmul fast <4 x float> %i.eu, splat (float f0x3F317218)
  %i.ew = fsub fast <4 x float> %i.en, %i.ev      ; 8 uses
  %i.ex = fmul fast <4 x float> %i.ew, %i.ew
  %i.ey = fmul fast <4 x float> %i.ew, splat (float f0x39506967)
  %i.ez = fadd fast <4 x float> %i.ey, splat (float f0x3AB743CE)
  %i.fa = fmul fast <4 x float> %i.ez, %i.ew
  %i.fb = fadd fast <4 x float> %i.fa, splat (float f0x3C088908)
  %i.fc = fmul fast <4 x float> %i.fb, %i.ew
  %i.fd = fadd fast <4 x float> %i.fc, splat (float f0x3D2AA9C1)
  %i.fe = fmul fast <4 x float> %i.fd, %i.ew
  %i.ff = fadd fast <4 x float> %i.fe, splat (float f0x3E2AAAAA)
  %i.fg = fmul fast <4 x float> %i.ff, %i.ew
  %i.fh = fadd fast <4 x float> %i.fg, splat (float 5.000000e-01)
  %i.fi = fmul fast <4 x float> %i.ex, %i.fh
  %i.fj = fadd fast <4 x float> %i.ew, splat (float 1.000000e+00)
  %i.fk = fadd fast <4 x float> %i.fj, %i.fi
  %i.fl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eu)
  %i.fm = shl <4 x i32> %i.fl, splat (i32 23)
  %i.fn = add <4 x i32> %i.fm, splat (i32 1065353216)
  %i.fo = bitcast <4 x i32> %i.fn to <4 x float>
  %i.fp = fmul fast <4 x float> %i.fk, %i.fo      ; 2 uses
  %i.fq = bitcast <4 x float> %i.fp to <8 x i16>
  %i.fr = shufflevector <8 x i16> %i.fq, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.fs = bitcast <8 x i16> %i.fr to <4 x float>
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.fu = bitcast <4 x float> %i.ft to <2 x i64>
  %i.fv = extractelement <2 x i64> %i.fu, i64 0
  store i64 %i.fv, ptr %.052129.i, align 1, !tbaa !63
  %i.fw = fadd fast <4 x float> %i.fp, %.0113128.i ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.052129.i, i64 8 ; 2 uses
  %i.fy = add nuw nsw i32 %.050130.i, 4           ; 2 uses
  %i.fz = or disjoint i32 %i.fy, 3
  %i.ga = icmp slt i32 %i.fz, %i.an
  br i1 %i.ga, label %.lr.ph132.i, label %.preheader116.loopexit.i, !llvm.loop !13

.lr.ph139.i:                                      ; preds = %.lr.ph139.i.preheader121, %.lr.ph139.i
  %.151138.i = phi i32 [ %i.gm, %.lr.ph139.i ], [ %.151138.i.ph, %.lr.ph139.i.preheader121 ]
  %.153137.i = phi ptr [ %i.gl, %.lr.ph139.i ], [ %.153137.i.ph, %.lr.ph139.i.preheader121 ] ; 3 uses
  %.054136.i = phi float [ %i.gk, %.lr.ph139.i ], [ %.054136.i.ph, %.lr.ph139.i.preheader121 ]
  %i.gb = load i16, ptr %.153137.i, align 2, !tbaa !82
  %i.gc = zext i16 %i.gb to i32
  %i.gd = shl nuw i32 %i.gc, 16
  %i.ge = bitcast i32 %i.gd to float
  %i.gf = fsub fast float %i.ge, %.1112.i
  %i.gg = call fast float @llvm.exp.f32(float %i.gf) ; 2 uses
  %i.gh = bitcast float %i.gg to i32
  %i.gi = lshr i32 %i.gh, 16
  %i.gj = trunc nuw nsw i32 %i.gi to i16
  store i16 %i.gj, ptr %.153137.i, align 2, !tbaa !82
  %i.gk = fadd fast float %i.gg, %.054136.i       ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.153137.i, i64 2
  %i.gm = add nuw nsw i32 %.151138.i, 1           ; 2 uses
  %exitcond160.not.i = icmp eq i32 %i.gm, %i.an
  br i1 %exitcond160.not.i, label %._crit_edge140.i, label %.lr.ph139.i, !llvm.loop !312

._crit_edge140.i:                                 ; preds = %.lr.ph139.i, %middle.block99, %.preheader116.i
  %.054.lcssa.i = phi float [ 0.000000e+00, %.preheader116.i ], [ %i.ef, %middle.block99 ], [ %i.gk, %.lr.ph139.i ] ; 3 uses
  %i.gn = icmp eq i32 %i.al, 4
  br i1 %i.gn, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %._crit_edge140.i
  %i.go = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %.0113.lcssa.i) ; 2 uses
  %i.gp = fmul fast <4 x float> %i.go, %.0113.lcssa.i
  %i.gq = fsub fast <4 x float> splat (float 2.000000e+00), %i.gp
  %i.gr = fmul fast <4 x float> %i.gq, %i.go
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge140.i
  br i1 %i.cr, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.gs = shufflevector <4 x float> %.0113.lcssa.i, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gt = shufflevector <4 x float> %.0113.lcssa.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gu = fadd fast <2 x float> %i.gs, %i.gt
  %i.gv = call fast float @llvm.vector.reduce.fadd.v2f32(float %.054.lcssa.i, <2 x float> %i.gu)
  %i.gw = fdiv fast float 1.000000e+00, %i.gv     ; 2 uses
  %i.gx = insertelement <4 x float> poison, float %i.gw, i64 0
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.thread.i
  %.2.i = phi nsz <4 x float> [ %i.gy, %bb.f ], [ %.0113.lcssa.i, %bb.e ], [ %i.gr, %.thread.i ]
  %.155.i = phi nsz float [ %i.gw, %bb.f ], [ %.054.lcssa.i, %bb.e ], [ %.054.lcssa.i, %.thread.i ] ; 2 uses
  br i1 %i.ao, label %.lr.ph145.i, label %.preheader.i

.preheader.loopexit.i:                            ; preds = %.lr.ph145.i
  %i.gz = and i32 %i.an, 2147483644
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.g
  %.048.lcssa.i = phi ptr [ %.138, %bb.g ], [ %i.ie, %.preheader.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.gz, %.preheader.loopexit.i ] ; 4 uses
  %i.ha = icmp slt i32 %.0.lcssa.i, %i.an
  br i1 %i.ha, label %.lr.ph150.i.preheader, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit

.lr.ph150.i.preheader:                            ; preds = %.preheader.i
  %i.hb = xor i32 %.0.lcssa.i, -1
  %i.hc = add i32 %i.an, %i.hb                    ; 2 uses
  %i.hd = zext i32 %i.hc to i64
  %i.he = add nuw nsw i64 %i.hd, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.hc, 7
  br i1 %min.iters.check, label %.lr.ph150.i.preheader120, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph150.i.preheader
  %n.vec = and i64 %i.he, 8589934584              ; 4 uses
  %i.hf = trunc i64 %n.vec to i32
  %i.hg = add i32 %.0.lcssa.i, %i.hf
  %i.hh = shl nuw nsw i64 %n.vec, 1
  %i.hi = getelementptr i8, ptr %.048.lcssa.i, i64 %i.hh
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.155.i, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hj = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.048.lcssa.i, i64 %i.hj ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !82
  %i.hk = zext <8 x i16> %wide.load to <8 x i32>
  %i.hl = shl nuw <8 x i32> %i.hk, splat (i32 16)
  %i.hm = bitcast <8 x i32> %i.hl to <8 x float>
  %i.hn = fmul fast <8 x float> %broadcast.splat, %i.hm
  %i.ho = bitcast <8 x float> %i.hn to <8 x i32>
  %i.hp = lshr <8 x i32> %i.ho, splat (i32 16)
  %i.hq = trunc nuw <8 x i32> %i.hp to <8 x i16>
  store <8 x i16> %i.hq, ptr %next.gep, align 2, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hr = icmp eq i64 %index.next, %n.vec
  br i1 %i.hr, label %middle.block, label %vector.body, !llvm.loop !313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.he, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit, label %.lr.ph150.i.preheader120

.lr.ph150.i.preheader120:                         ; preds = %.lr.ph150.i.preheader, %middle.block
  %.1149.i.ph = phi i32 [ %.0.lcssa.i, %.lr.ph150.i.preheader ], [ %i.hg, %middle.block ]
  %.149148.i.ph = phi ptr [ %.048.lcssa.i, %.lr.ph150.i.preheader ], [ %i.hi, %middle.block ]
  br label %.lr.ph150.i

.lr.ph145.i:                                      ; preds = %bb.g, %.lr.ph145.i
  %.0143.i = phi i32 [ %i.if, %.lr.ph145.i ], [ 0, %bb.g ]
  %.048142.i = phi ptr [ %i.ie, %.lr.ph145.i ], [ %.138, %bb.g ] ; 3 uses
  %i.hs = load i64, ptr %.048142.i, align 1, !tbaa !63
  %i.ht = insertelement <2 x i64> poison, i64 %i.hs, i64 0
  %i.hu = bitcast <2 x i64> %i.ht to <8 x i16>
  %i.hv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hw = bitcast <8 x i16> %i.hv to <4 x float>
  %i.hx = fmul fast <4 x float> %.2.i, %i.hw
  %i.hy = bitcast <4 x float> %i.hx to <8 x i16>
  %i.hz = shufflevector <8 x i16> %i.hy, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ia = bitcast <8 x i16> %i.hz to <4 x float>
  %i.ib = shufflevector <4 x float> %i.ia, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ic = bitcast <4 x float> %i.ib to <2 x i64>
  %i.id = extractelement <2 x i64> %i.ic, i64 0
  store i64 %i.id, ptr %.048142.i, align 1, !tbaa !63
  %i.ie = getelementptr inbounds nuw i8, ptr %.048142.i, i64 8 ; 2 uses
  %i.if = add nuw nsw i32 %.0143.i, 4             ; 2 uses
  %i.ig = or disjoint i32 %i.if, 3
  %i.ih = icmp slt i32 %i.ig, %i.an
  br i1 %i.ih, label %.lr.ph145.i, label %.preheader.loopexit.i, !llvm.loop !14

.lr.ph150.i:                                      ; preds = %.lr.ph150.i.preheader120, %.lr.ph150.i
  %.1149.i = phi i32 [ %i.ir, %.lr.ph150.i ], [ %.1149.i.ph, %.lr.ph150.i.preheader120 ]
  %.149148.i = phi ptr [ %i.iq, %.lr.ph150.i ], [ %.149148.i.ph, %.lr.ph150.i.preheader120 ] ; 3 uses
  %i.ii = load i16, ptr %.149148.i, align 2, !tbaa !82
  %i.ij = zext i16 %i.ii to i32
  %i.ik = shl nuw i32 %i.ij, 16
  %i.il = bitcast i32 %i.ik to float
  %i.im = fmul fast float %.155.i, %i.il
  %i.in = bitcast float %i.im to i32
  %i.io = lshr i32 %i.in, 16
  %i.ip = trunc nuw i32 %i.io to i16
  store i16 %i.ip, ptr %.149148.i, align 2, !tbaa !82
  %i.iq = getelementptr inbounds nuw i8, ptr %.149148.i, i64 2
  %i.ir = add nuw nsw i32 %.1149.i, 1             ; 2 uses
  %exitcond161.not.i = icmp eq i32 %i.ir, %i.an
  br i1 %exitcond161.not.i, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit, label %.lr.ph150.i, !llvm.loop !314

_ZN4ncnnL17softmax_bf16s_sseEPtii.exit:           ; preds = %.lr.ph150.i, %middle.block, %.preheader.i
  %i.is = load i32, ptr %6, align 4, !tbaa !43    ; 2 uses
  %i.it = load i32, ptr %7, align 4, !tbaa !43    ; 2 uses
  %i.iu = mul nsw i32 %i.it, %i.is
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [2 x i8], ptr %.138, i64 %i.iv ; 2 uses
  %i.ix = add nuw nsw i32 %.039, 1                ; 2 uses
  %i.iy = load i32, ptr %5, align 4, !tbaa !43    ; 2 uses
  %i.iz = icmp slt i32 %i.ix, %i.iy
  br i1 %i.iz, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !315

._crit_edge45:                                    ; preds = %._crit_edge42, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge45, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #12

end_hunk_12
