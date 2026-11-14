Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/softmax_x86?download=true
inline.NumInlined: 23
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4ncnnL17softmax_bf16s_sseEPtii:bb.a
  %i.d = lshr i32 %i.c, 2                         ; 2 uses
  %i.e = add nuw nsw i32 %i.d, 1                  ; 2 uses
  %i.f = icmp eq i32 %i.d, 0
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.e, 2147483646
  br label %.lr.ph

.preheader117.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %i.g = and i32 %i.c, 4
  %lcmp.mod.not.not = icmp eq i32 %i.g, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.preheader117.loopexit

.lr.ph.epil.preheader:                            ; preds = %.preheader117.loopexit.unr-lcssa, %.lr.ph.preheader
  %.056120.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ax, %.preheader117.loopexit.unr-lcssa ] ; 2 uses
  %.0109118.epil.init = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.preheader ], [ %i.aw, %.preheader117.loopexit.unr-lcssa ]
  %lcmp.mod222 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod222)
  %i.h = load i64, ptr %.056120.epil.init, align 1, !tbaa !63
  %i.i = insertelement <2 x i64> poison, i64 %i.h, i64 0
  %i.j = bitcast <2 x i64> %i.i to <8 x i16>
  %i.k = shufflevector <8 x i16> %i.j, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.l = bitcast <8 x i16> %i.k to <4 x float>
  %i.m = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0109118.epil.init, <4 x float> nofpclass(nan inf) %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %.056120.epil.init, i64 8
  br label %.preheader117.loopexit

.preheader117.loopexit:                           ; preds = %.preheader117.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa219 = phi <4 x float> [ %i.aw, %.preheader117.loopexit.unr-lcssa ], [ %i.m, %.lr.ph.epil.preheader ]
  %.lcssa218 = phi ptr [ %i.ax, %.preheader117.loopexit.unr-lcssa ], [ %i.n, %.lr.ph.epil.preheader ]
  %i.o = and i32 %i.a, 2147483644
  br label %.preheader117

.preheader117:                                    ; preds = %.preheader117.loopexit, %bb.a
  %.0109.lcssa = phi <4 x float> [ splat (float f0xFF7FFFFF), %bb.a ], [ %.lcssa219, %.preheader117.loopexit ] ; 3 uses
  %.058.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %.preheader117.loopexit ] ; 4 uses
  %.056.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa218, %.preheader117.loopexit ] ; 3 uses
  %i.p = icmp slt i32 %.058.lcssa, %i.a
  br i1 %i.p, label %.lr.ph126.preheader, label %._crit_edge

.lr.ph126.preheader:                              ; preds = %.preheader117
  %i.q = xor i32 %.058.lcssa, -1
  %i.r = add i32 %i.a, %i.q                       ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.r, 7
  br i1 %min.iters.check, label %.lr.ph126.preheader215, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph126.preheader
  %n.vec = and i64 %i.t, 8589934584               ; 4 uses
  %i.u = shl nuw nsw i64 %n.vec, 1
  %i.v = getelementptr i8, ptr %.056.lcssa, i64 %i.u
  %i.w = trunc i64 %n.vec to i32
  %i.x = add i32 %.058.lcssa, %i.w
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
  %i.an = shufflevector <8 x i16> %i.am, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ao = bitcast <8 x i16> %i.an to <4 x float>
  %i.ap = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0109118, <4 x float> nofpclass(nan inf) %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %.056120, i64 8
  %i.ar = load i64, ptr %i.aq, align 1, !tbaa !63
  %i.as = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %i.at = bitcast <2 x i64> %i.as to <8 x i16>
  %i.au = shufflevector <8 x i16> %i.at, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
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
  %i.cw = shufflevector <8 x i16> %i.cv, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
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
  %i.gi = shufflevector <8 x i16> %i.gh, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
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

bb.c:                                             ; preds = %.lr.ph, %.noexc
  %.036 = phi i32 [ %i.k, %.lr.ph ], [ %i.aj, %.noexc ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !43     ; 2 uses
  %i.o = load i32, ptr %4, align 4, !tbaa !43
  %i.p = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  %i.q = mul nsw i32 %i.n, %.036                  ; 2 uses
  %i.r = sub nsw i32 %i.o, %i.q
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.n)
  %i.s = load ptr, ptr %5, align 8, !tbaa !62, !noalias !235
  %i.t = load i64, ptr %i.l, align 8, !tbaa !73, !noalias !235
  %i.u = sext i32 %i.p to i64
  %i.v = mul i64 %i.t, %i.u
  %i.w = load i64, ptr %i.m, align 8, !tbaa !40, !noalias !235
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %3, align 4, !tbaa !43
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %6, align 8, !tbaa !62
  %i.ad = load i32, ptr %7, align 4, !tbaa !43    ; 2 uses
  %i.ae = mul nsw i32 %i.ad, %i.q
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load i32, ptr %8, align 4, !tbaa !43
  %i.ai = load i64, ptr %9, align 8, !tbaa !71
  call fastcc void @_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_(ptr noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.ad, i64 noundef %i.ai, i32 noundef %.sroa.speculated, ptr noundef %i.y, ptr noundef %i.ab)
  %i.aj = add nsw i32 %.036, 1
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !43
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_:bb.a
  %i.ha = fcmp fast olt float %i.gz, %i.gy
  %.sroa.speculated.us.i = select i1 %i.ha, float %i.gy, float %i.gz
  store float %.sroa.speculated.us.i, ptr %.1109172.us.i, align 4, !tbaa !66
  %i.hb = getelementptr inbounds nuw i8, ptr %.1107173.us.i, i64 2
  %i.hc = getelementptr inbounds nuw i8, ptr %.1109172.us.i, i64 4
  %i.hd = add nuw nsw i32 %.1111171.us.i, 1       ; 2 uses
  %exitcond232.not.i = icmp eq i32 %i.hd, %4
  br i1 %exitcond232.not.i, label %._crit_edge.us.i, label %.lr.ph174.us.i, !llvm.loop !248

._crit_edge.us.i:                                 ; preds = %.lr.ph174.us.i, %middle.block129, %..preheader165_crit_edge.us.i
  %indvars.iv.next234.i = add nuw nsw i64 %indvars.iv233.i, 1 ; 2 uses
  %exitcond237.not.i = icmp eq i64 %indvars.iv.next234.i, %wide.trip.count236.i
  br i1 %exitcond237.not.i, label %.lr.ph193.i, label %.lr.ph.us.i, !llvm.loop !17

..preheader165_crit_edge.us.i:                    ; preds = %bb.g
  br i1 %.not, label %._crit_edge.us.i, label %.lr.ph174.us.i.preheader

.lr.ph174.us.i.preheader:                         ; preds = %..preheader165_crit_edge.us.i
  br i1 %min.iters.check118, label %.lr.ph174.us.i.preheader212, label %vector.ph119

vector.ph119:                                     ; preds = %.lr.ph174.us.i.preheader
  %i.he = getelementptr i8, ptr %i.gq, i64 %i.gd
  %i.hf = getelementptr i8, ptr %i.gr, i64 %i.ge
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph119
  %index122 = phi i64 [ 0, %vector.ph119 ], [ %index.next128, %vector.body121 ] ; 3 uses
  %i.hg = shl i64 %index122, 1
  %next.gep123 = getelementptr i8, ptr %i.gq, i64 %i.hg ; 2 uses
  %i.hh = shl i64 %index122, 2
  %next.gep124 = getelementptr i8, ptr %i.gr, i64 %i.hh ; 3 uses
  %i.hi = getelementptr i8, ptr %next.gep123, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep123, align 2, !tbaa !82
  %wide.load125 = load <4 x i16>, ptr %i.hi, align 2, !tbaa !82
  %i.hj = zext <4 x i16> %wide.load to <4 x i32>
  %i.hk = zext <4 x i16> %wide.load125 to <4 x i32>
  %i.hl = shl nuw <4 x i32> %i.hj, splat (i32 16)
  %i.hm = shl nuw <4 x i32> %i.hk, splat (i32 16)
  %i.hn = bitcast <4 x i32> %i.hl to <4 x float>  ; 2 uses
  %i.ho = bitcast <4 x i32> %i.hm to <4 x float>  ; 2 uses
  %i.hp = getelementptr i8, ptr %next.gep124, i64 16 ; 2 uses
  %wide.load126 = load <4 x float>, ptr %next.gep124, align 4, !tbaa !66 ; 2 uses
  %wide.load127 = load <4 x float>, ptr %i.hp, align 4, !tbaa !66 ; 2 uses
  %i.hq = fcmp fast olt <4 x float> %wide.load126, %i.hn
  %i.hr = fcmp fast olt <4 x float> %wide.load127, %i.ho
  %i.hs = select <4 x i1> %i.hq, <4 x float> %i.hn, <4 x float> %wide.load126
  %i.ht = select <4 x i1> %i.hr, <4 x float> %i.ho, <4 x float> %wide.load127
  store <4 x float> %i.hs, ptr %next.gep124, align 4, !tbaa !66
  store <4 x float> %i.ht, ptr %i.hp, align 4, !tbaa !66
  %index.next128 = add nuw i64 %index122, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next128, %n.vec120
  br i1 %i.hu, label %middle.block129, label %vector.body121, !llvm.loop !249

middle.block129:                                  ; preds = %vector.body121
  br i1 %cmp.n130, label %._crit_edge.us.i, label %.lr.ph174.us.i.preheader212

.lr.ph174.us.i.preheader212:                      ; preds = %.lr.ph174.us.i.preheader, %middle.block129
  %.1107173.us.i.ph = phi ptr [ %i.gq, %.lr.ph174.us.i.preheader ], [ %i.he, %middle.block129 ]
  %.1109172.us.i.ph = phi ptr [ %i.gr, %.lr.ph174.us.i.preheader ], [ %i.hf, %middle.block129 ]
  %.1111171.us.i.ph = phi i32 [ %i.fy, %.lr.ph174.us.i.preheader ], [ %i.gg, %middle.block129 ]
  br label %.lr.ph174.us.i

.lr.ph177.split.i:                                ; preds = %.lr.ph177.i
  %i.hv = icmp sgt i32 %4, 0
  br i1 %i.hv, label %.preheader165.i.preheader, label %.lr.ph193.i

.preheader165.i.preheader:                        ; preds = %.lr.ph177.split.i
  %exitcond.not.i47 = icmp eq i32 %4, 1
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %exitcond.not.i47.1 = icmp eq i32 %4, 2
  %i.hx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.promoted = load float, ptr %5, align 4, !tbaa !66
  br label %.preheader165.i

.lr.ph193.i.loopexit215:                          ; preds = %._crit_edge.i48
  store float %.sroa.speculated.i46, ptr %5, align 4, !tbaa !66
  br label %.lr.ph193.i

.lr.ph193.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph193.i.loopexit215, %.lr.ph177.split.i
  %i.hy = and i32 %4, -4
  br label %bb.j

.preheader165.i:                                  ; preds = %.preheader165.i.preheader, %._crit_edge.i48
  %i.hz = phi float [ %.sroa.speculated.i46, %._crit_edge.i48 ], [ %.promoted, %.preheader165.i.preheader ] ; 2 uses
  %indvars.iv.i45 = phi i64 [ %indvars.iv.next.i49, %._crit_edge.i48 ], [ 0, %.preheader165.i.preheader ] ; 2 uses
  %i.ia = mul i64 %indvars.iv.i45, %3
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ia ; 3 uses
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !82
  %i.id = zext i16 %i.ic to i32
  %i.ie = shl nuw i32 %i.id, 16
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
  %.0118.lcssa.i = phi ptr [ %i.ja, %bb.j ], [ %i.mr, %.lr.ph.i43 ] ; 4 uses
  %.0116.lcssa.i = phi ptr [ %5, %bb.j ], [ %i.ms, %.lr.ph.i43 ] ; 6 uses
  %.0114.lcssa.i = phi ptr [ %6, %bb.j ], [ %i.mt, %.lr.ph.i43 ] ; 6 uses
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
  %i.jg = xor i32 %.0112.lcssa.i, -1
  %i.jh = add i32 %4, %i.jg
  %i.ji = zext i32 %i.jh to i64
  %i.jj = shl nuw nsw i64 %i.ji, 2
  %i.jk = add nuw nsw i64 %i.jj, 4                ; 2 uses
  %i.jl = getelementptr i8, ptr %.0114.lcssa.i, i64 %i.jk
  %i.jm = getelementptr i8, ptr %.0116.lcssa.i, i64 %i.jk
  %bound0 = icmp ult ptr %.0114.lcssa.i, %i.jm
  %bound1 = icmp ult ptr %.0116.lcssa.i, %i.jl
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph190.i.preheader208, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck
  %n.vec141 = and i64 %i.jf, 8589934588           ; 5 uses
  %i.jn = trunc i64 %n.vec141 to i32
  %i.jo = add i32 %.0112.lcssa.i, %i.jn
  %i.jp = shl nuw nsw i64 %n.vec141, 2            ; 2 uses
  %i.jq = getelementptr i8, ptr %.0114.lcssa.i, i64 %i.jp
  %i.jr = getelementptr i8, ptr %.0116.lcssa.i, i64 %i.jp
  %i.js = shl nuw nsw i64 %n.vec141, 1
  %i.jt = getelementptr i8, ptr %.0118.lcssa.i, i64 %i.js
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next150, %vector.body142 ] ; 3 uses
  %i.ju = shl i64 %index143, 2                    ; 2 uses
  %next.gep144 = getelementptr i8, ptr %.0114.lcssa.i, i64 %i.ju ; 2 uses
  %next.gep145 = getelementptr i8, ptr %.0116.lcssa.i, i64 %i.ju
  %i.jv = shl i64 %index143, 1
  %next.gep146 = getelementptr i8, ptr %.0118.lcssa.i, i64 %i.jv ; 2 uses
  %wide.load147 = load <4 x i16>, ptr %next.gep146, align 2, !tbaa !82
  %i.jw = zext <4 x i16> %wide.load147 to <4 x i32>
  %i.jx = shl nuw <4 x i32> %i.jw, splat (i32 16)
  %i.jy = bitcast <4 x i32> %i.jx to <4 x float>
  %wide.load148 = load <4 x float>, ptr %next.gep145, align 4, !tbaa !66, !alias.scope !259
  %i.jz = fsub fast <4 x float> %i.jy, %wide.load148
  %i.ka = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.jz) ; 2 uses
  %i.kb = bitcast <4 x float> %i.ka to <4 x i32>
  %i.kc = lshr <4 x i32> %i.kb, splat (i32 16)
  %i.kd = trunc nuw nsw <4 x i32> %i.kc to <4 x i16>
  store <4 x i16> %i.kd, ptr %next.gep146, align 2, !tbaa !82
  %wide.load149 = load <4 x float>, ptr %next.gep144, align 4, !tbaa !66, !alias.scope !260, !noalias !259
  %i.ke = fadd fast <4 x float> %i.ka, %wide.load149
  store <4 x float> %i.ke, ptr %next.gep144, align 4, !tbaa !66, !alias.scope !260, !noalias !259
  %index.next150 = add nuw i64 %index143, 4       ; 2 uses
  %i.kf = icmp eq i64 %index.next150, %n.vec141
  br i1 %i.kf, label %middle.block151, label %vector.body142, !llvm.loop !253

middle.block151:                                  ; preds = %vector.body142
  %cmp.n152 = icmp eq i64 %i.jf, %n.vec141
  br i1 %cmp.n152, label %._crit_edge191.i, label %.lr.ph190.i.preheader208

.lr.ph190.i.preheader208:                         ; preds = %vector.memcheck, %.lr.ph190.i.preheader, %middle.block151
  %.1113189.i.ph = phi i32 [ %.0112.lcssa.i, %vector.memcheck ], [ %.0112.lcssa.i, %.lr.ph190.i.preheader ], [ %i.jo, %middle.block151 ] ; 4 uses
  %.1115188.i.ph = phi ptr [ %.0114.lcssa.i, %vector.memcheck ], [ %.0114.lcssa.i, %.lr.ph190.i.preheader ], [ %i.jq, %middle.block151 ] ; 4 uses
  %.1117187.i.ph = phi ptr [ %.0116.lcssa.i, %vector.memcheck ], [ %.0116.lcssa.i, %.lr.ph190.i.preheader ], [ %i.jr, %middle.block151 ] ; 3 uses
  %.1119186.i.ph = phi ptr [ %.0118.lcssa.i, %vector.memcheck ], [ %.0118.lcssa.i, %.lr.ph190.i.preheader ], [ %i.jt, %middle.block151 ] ; 4 uses
  %i.kg = sub i32 %4, %.1113189.i.ph
  %.neg = add i32 %.1113189.i.ph, 1
  %xtraiter220 = and i32 %i.kg, 1
  %lcmp.mod221.not = icmp eq i32 %xtraiter220, 0
  br i1 %lcmp.mod221.not, label %.lr.ph190.i.prol.loopexit, label %.lr.ph190.i.prol

.lr.ph190.i.prol:                                 ; preds = %.lr.ph190.i.preheader208
  %i.kh = load i16, ptr %.1119186.i.ph, align 2, !tbaa !82
  %i.ki = zext i16 %i.kh to i32
  %i.kj = shl nuw i32 %i.ki, 16
  %i.kk = bitcast i32 %i.kj to float
  %i.kl = load float, ptr %.1117187.i.ph, align 4, !tbaa !66
  %i.km = fsub fast float %i.kk, %i.kl
  %i.kn = tail call fast float @llvm.exp.f32(float %i.km) ; 2 uses
  %i.ko = bitcast float %i.kn to i32
  %i.kp = lshr i32 %i.ko, 16
  %i.kq = trunc nuw nsw i32 %i.kp to i16
  store i16 %i.kq, ptr %.1119186.i.ph, align 2, !tbaa !82
  %i.kr = load float, ptr %.1115188.i.ph, align 4, !tbaa !66
  %i.ks = fadd fast float %i.kn, %i.kr
  store float %i.ks, ptr %.1115188.i.ph, align 4, !tbaa !66
  %i.kt = getelementptr inbounds nuw i8, ptr %.1119186.i.ph, i64 2
  %i.ku = getelementptr inbounds nuw i8, ptr %.1117187.i.ph, i64 4
  %i.kv = getelementptr inbounds nuw i8, ptr %.1115188.i.ph, i64 4
  %i.kw = add nuw nsw i32 %.1113189.i.ph, 1
  br label %.lr.ph190.i.prol.loopexit

.lr.ph190.i.prol.loopexit:                        ; preds = %.lr.ph190.i.prol, %.lr.ph190.i.preheader208
  %.1113189.i.unr = phi i32 [ %.1113189.i.ph, %.lr.ph190.i.preheader208 ], [ %i.kw, %.lr.ph190.i.prol ]
  %.1115188.i.unr = phi ptr [ %.1115188.i.ph, %.lr.ph190.i.preheader208 ], [ %i.kv, %.lr.ph190.i.prol ]
  %.1117187.i.unr = phi ptr [ %.1117187.i.ph, %.lr.ph190.i.preheader208 ], [ %i.ku, %.lr.ph190.i.prol ]
  %.1119186.i.unr = phi ptr [ %.1119186.i.ph, %.lr.ph190.i.preheader208 ], [ %i.kt, %.lr.ph190.i.prol ]
  %i.kx = icmp eq i32 %4, %.neg
  br i1 %i.kx, label %._crit_edge191.i, label %.lr.ph190.i

.lr.ph.i43:                                       ; preds = %bb.j, %.lr.ph.i43
  %.0112181.i = phi i32 [ %i.mu, %.lr.ph.i43 ], [ 0, %bb.j ]
  %.0114180.i = phi ptr [ %i.mt, %.lr.ph.i43 ], [ %6, %bb.j ] ; 3 uses
  %.0116179.i = phi ptr [ %i.ms, %.lr.ph.i43 ], [ %5, %bb.j ] ; 2 uses
  %.0118178.i = phi ptr [ %i.mr, %.lr.ph.i43 ], [ %i.ja, %bb.j ] ; 3 uses
  %i.ky = load i64, ptr %.0118178.i, align 1, !tbaa !63
  %i.kz = insertelement <2 x i64> poison, i64 %i.ky, i64 0
  %i.la = bitcast <2 x i64> %i.kz to <8 x i16>
  %i.lb = shufflevector <8 x i16> %i.la, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.lc = bitcast <8 x i16> %i.lb to <4 x float>
  %i.ld = load <4 x float>, ptr %.0116179.i, align 1, !tbaa !63
  %i.le = load <4 x float>, ptr %.0114180.i, align 1, !tbaa !63
  %i.lf = fsub fast <4 x float> %i.lc, %i.ld
  %i.lg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lf, <4 x float> splat (float f0x42B0C0A5))
  %i.lh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.li = fmul fast <4 x float> %i.lh, splat (float f0x3FB8AA3B)
  %i.lj = fadd fast <4 x float> %i.li, splat (float 5.000000e-01) ; 2 uses
  %i.lk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lj)
  %i.ll = sitofp fast <4 x i32> %i.lk to <4 x float> ; 2 uses
  %i.lm = fcmp fast olt <4 x float> %i.lj, %i.ll
  %i.ln = select <4 x i1> %i.lm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.lo = fsub fast <4 x float> %i.ll, %i.ln      ; 2 uses
  %i.lp = fmul fast <4 x float> %i.lo, splat (float f0x3F317218)
  %i.lq = fsub fast <4 x float> %i.lh, %i.lp      ; 8 uses
  %i.lr = fmul fast <4 x float> %i.lq, %i.lq
  %i.ls = fmul fast <4 x float> %i.lq, splat (float f0x39506967)
  %i.lt = fadd fast <4 x float> %i.ls, splat (float f0x3AB743CE)
  %i.lu = fmul fast <4 x float> %i.lt, %i.lq
  %i.lv = fadd fast <4 x float> %i.lu, splat (float f0x3C088908)
  %i.lw = fmul fast <4 x float> %i.lv, %i.lq
  %i.lx = fadd fast <4 x float> %i.lw, splat (float f0x3D2AA9C1)
  %i.ly = fmul fast <4 x float> %i.lx, %i.lq
  %i.lz = fadd fast <4 x float> %i.ly, splat (float f0x3E2AAAAA)
  %i.ma = fmul fast <4 x float> %i.lz, %i.lq
  %i.mb = fadd fast <4 x float> %i.ma, splat (float 5.000000e-01)
  %i.mc = fmul fast <4 x float> %i.lr, %i.mb
  %i.md = fadd fast <4 x float> %i.lq, splat (float 1.000000e+00)
  %i.me = fadd fast <4 x float> %i.md, %i.mc
  %i.mf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lo)
  %i.mg = shl <4 x i32> %i.mf, splat (i32 23)
  %i.mh = add <4 x i32> %i.mg, splat (i32 1065353216)
  %i.mi = bitcast <4 x i32> %i.mh to <4 x float>
  %i.mj = fmul fast <4 x float> %i.me, %i.mi      ; 2 uses
  %i.mk = bitcast <4 x float> %i.mj to <8 x i16>
  %i.ml = shufflevector <8 x i16> %i.mk, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.mm = bitcast <8 x i16> %i.ml to <4 x float>
  %i.mn = shufflevector <4 x float> %i.mm, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.mo = bitcast <4 x float> %i.mn to <2 x i64>
  %i.mp = extractelement <2 x i64> %i.mo, i64 0
  store i64 %i.mp, ptr %.0118178.i, align 1, !tbaa !63
  %i.mq = fadd fast <4 x float> %i.mj, %i.le
  store <4 x float> %i.mq, ptr %.0114180.i, align 1, !tbaa !63
  %i.mr = getelementptr inbounds nuw i8, ptr %.0118178.i, i64 8 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.0116179.i, i64 16 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.0114180.i, i64 16 ; 2 uses
  %i.mu = add nuw nsw i32 %.0112181.i, 4          ; 2 uses
  %i.mv = or disjoint i32 %i.mu, 3
  %i.mw = icmp slt i32 %i.mv, %4
  br i1 %i.mw, label %.lr.ph.i43, label %.preheader163.i, !llvm.loop !18

.lr.ph190.i:                                      ; preds = %.lr.ph190.i.prol.loopexit, %.lr.ph190.i
  %.1113189.i = phi i32 [ %i.ob, %.lr.ph190.i ], [ %.1113189.i.unr, %.lr.ph190.i.prol.loopexit ]
  %.1115188.i = phi ptr [ %i.oa, %.lr.ph190.i ], [ %.1115188.i.unr, %.lr.ph190.i.prol.loopexit ] ; 4 uses
  %.1117187.i = phi ptr [ %i.nz, %.lr.ph190.i ], [ %.1117187.i.unr, %.lr.ph190.i.prol.loopexit ] ; 3 uses
  %.1119186.i = phi ptr [ %i.ny, %.lr.ph190.i ], [ %.1119186.i.unr, %.lr.ph190.i.prol.loopexit ] ; 4 uses
  %i.mx = load i16, ptr %.1119186.i, align 2, !tbaa !82
  %i.my = zext i16 %i.mx to i32
  %i.mz = shl nuw i32 %i.my, 16
  %i.na = bitcast i32 %i.mz to float
  %i.nb = load float, ptr %.1117187.i, align 4, !tbaa !66
  %i.nc = fsub fast float %i.na, %i.nb
  %i.nd = tail call fast float @llvm.exp.f32(float %i.nc) ; 2 uses
  %i.ne = bitcast float %i.nd to i32
  %i.nf = lshr i32 %i.ne, 16
  %i.ng = trunc nuw nsw i32 %i.nf to i16
  store i16 %i.ng, ptr %.1119186.i, align 2, !tbaa !82
  %i.nh = load float, ptr %.1115188.i, align 4, !tbaa !66
  %i.ni = fadd fast float %i.nd, %i.nh
  store float %i.ni, ptr %.1115188.i, align 4, !tbaa !66
  %i.nj = getelementptr inbounds nuw i8, ptr %.1119186.i, i64 2 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.1117187.i, i64 4
  %i.nl = getelementptr inbounds nuw i8, ptr %.1115188.i, i64 4 ; 2 uses
  %i.nm = load i16, ptr %i.nj, align 2, !tbaa !82
  %i.nn = zext i16 %i.nm to i32
  %i.no = shl nuw i32 %i.nn, 16
  %i.np = bitcast i32 %i.no to float
  %i.nq = load float, ptr %i.nk, align 4, !tbaa !66
  %i.nr = fsub fast float %i.np, %i.nq
  %i.ns = tail call fast float @llvm.exp.f32(float %i.nr) ; 2 uses
  %i.nt = bitcast float %i.ns to i32
  %i.nu = lshr i32 %i.nt, 16
  %i.nv = trunc nuw nsw i32 %i.nu to i16
  store i16 %i.nv, ptr %i.nj, align 2, !tbaa !82
  %i.nw = load float, ptr %i.nl, align 4, !tbaa !66
  %i.nx = fadd fast float %i.ns, %i.nw
  store float %i.nx, ptr %i.nl, align 4, !tbaa !66
  %i.ny = getelementptr inbounds nuw i8, ptr %.1119186.i, i64 4
  %i.nz = getelementptr inbounds nuw i8, ptr %.1117187.i, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %.1115188.i, i64 8
  %i.ob = add nuw nsw i32 %.1113189.i, 2          ; 2 uses
  %exitcond238.not.i.1 = icmp eq i32 %i.ob, %4
  br i1 %exitcond238.not.i.1, label %._crit_edge191.i, label %.lr.ph190.i, !llvm.loop !254

._crit_edge191.i:                                 ; preds = %.lr.ph190.i.prol.loopexit, %.lr.ph190.i, %middle.block151, %.preheader163.i
  %indvars.iv.next240.i = add nuw nsw i64 %indvars.iv239.i, 1 ; 2 uses
  %exitcond243.not.i = icmp eq i64 %indvars.iv.next240.i, %wide.trip.count236.i
  br i1 %exitcond243.not.i, label %.preheader162.i, label %bb.j, !llvm.loop !19

.preheader161.loopexit.i.unr-lcssa:               ; preds = %.lr.ph196.i
  %i.oc = and i32 %i.iv, 4
  %lcmp.mod224.not.not = icmp eq i32 %i.oc, 0
  br i1 %lcmp.mod224.not.not, label %.lr.ph196.i.epil.preheader, label %.preheader161.loopexit.i

.lr.ph196.i.epil.preheader:                       ; preds = %.preheader161.loopexit.i.unr-lcssa, %.lr.ph196.i.preheader
  %.0104194.i.epil.init = phi ptr [ %6, %.lr.ph196.i.preheader ], [ %i.ph, %.preheader161.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod226 = trunc i32 %i.ix to i1
  tail call void @llvm.assume(i1 %lcmp.mod226)
  %i.od = load <4 x float>, ptr %.0104194.i.epil.init, align 1, !tbaa !63 ; 2 uses
  %i.oe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.od) ; 2 uses
  %i.of = fmul fast <4 x float> %i.oe, %i.od
  %i.og = fsub fast <4 x float> splat (float 2.000000e+00), %i.of
  %i.oh = fmul fast <4 x float> %i.og, %i.oe
  store <4 x float> %i.oh, ptr %.0104194.i.epil.init, align 1, !tbaa !63
  %i.oi = getelementptr inbounds nuw i8, ptr %.0104194.i.epil.init, i64 16
  br label %.preheader161.loopexit.i

.preheader161.loopexit.i:                         ; preds = %.preheader161.loopexit.i.unr-lcssa, %.lr.ph196.i.epil.preheader
  %.lcssa207 = phi ptr [ %i.ph, %.preheader161.loopexit.i.unr-lcssa ], [ %i.oi, %.lr.ph196.i.epil.preheader ]
  %i.oj = and i32 %4, 2147483644
  br label %.preheader161.i

.preheader161.i:                                  ; preds = %.preheader161.loopexit.i, %.preheader162.i
  %.0104.lcssa.i = phi ptr [ %6, %.preheader162.i ], [ %.lcssa207, %.preheader161.loopexit.i ] ; 3 uses
  %.0102.lcssa.i = phi i32 [ 0, %.preheader162.i ], [ %i.oj, %.preheader161.loopexit.i ] ; 4 uses
  %i.ok = icmp slt i32 %.0102.lcssa.i, %4
  br i1 %i.ok, label %.lr.ph201.i.preheader, label %.preheader160.i

.lr.ph201.i.preheader:                            ; preds = %.preheader161.i
  %i.ol = xor i32 %.0102.lcssa.i, -1
  %i.om = add i32 %4, %i.ol                       ; 2 uses
  %i.on = zext i32 %i.om to i64
  %i.oo = add nuw nsw i64 %i.on, 1                ; 2 uses
  %min.iters.check158 = icmp ult i32 %i.om, 3
  br i1 %min.iters.check158, label %.lr.ph201.i.preheader206, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph201.i.preheader
  %n.vec160 = and i64 %i.oo, 8589934588           ; 4 uses
  %i.op = trunc i64 %n.vec160 to i32
  %i.oq = add i32 %.0102.lcssa.i, %i.op
  %i.or = shl nuw nsw i64 %n.vec160, 2
  %i.os = getelementptr i8, ptr %.0104.lcssa.i, i64 %i.or
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next165, %vector.body161 ] ; 2 uses
  %i.ot = shl i64 %index162, 2
  %next.gep163 = getelementptr i8, ptr %.0104.lcssa.i, i64 %i.ot ; 2 uses
  %wide.load164 = load <4 x float>, ptr %next.gep163, align 4, !tbaa !66
  %i.ou = fdiv fast <4 x float> splat (float 1.000000e+00), %wide.load164
  store <4 x float> %i.ou, ptr %next.gep163, align 4, !tbaa !66
  %index.next165 = add nuw i64 %index162, 4       ; 2 uses
  %i.ov = icmp eq i64 %index.next165, %n.vec160
  br i1 %i.ov, label %middle.block166, label %vector.body161, !llvm.loop !255

middle.block166:                                  ; preds = %vector.body161
  %cmp.n167 = icmp eq i64 %i.oo, %n.vec160
  br i1 %cmp.n167, label %.preheader160.i, label %.lr.ph201.i.preheader206

.lr.ph201.i.preheader206:                         ; preds = %.lr.ph201.i.preheader, %middle.block166
  %.1103200.i.ph = phi i32 [ %.0102.lcssa.i, %.lr.ph201.i.preheader ], [ %i.oq, %middle.block166 ]
  %.1105199.i.ph = phi ptr [ %.0104.lcssa.i, %.lr.ph201.i.preheader ], [ %i.os, %middle.block166 ]
  br label %.lr.ph201.i

.lr.ph196.i:                                      ; preds = %.lr.ph196.i, %.lr.ph196.i.preheader.new
  %.0104194.i = phi ptr [ %6, %.lr.ph196.i.preheader.new ], [ %i.ph, %.lr.ph196.i ] ; 4 uses
  %niter228 = phi i32 [ 0, %.lr.ph196.i.preheader.new ], [ %niter228.next.1, %.lr.ph196.i ]
  %i.ow = load <4 x float>, ptr %.0104194.i, align 1, !tbaa !63 ; 2 uses
  %i.ox = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.ow) ; 2 uses
  %i.oy = fmul fast <4 x float> %i.ox, %i.ow
  %i.oz = fsub fast <4 x float> splat (float 2.000000e+00), %i.oy
  %i.pa = fmul fast <4 x float> %i.oz, %i.ox
  store <4 x float> %i.pa, ptr %.0104194.i, align 1, !tbaa !63
  %i.pb = getelementptr inbounds nuw i8, ptr %.0104194.i, i64 16 ; 2 uses
  %i.pc = load <4 x float>, ptr %i.pb, align 1, !tbaa !63 ; 2 uses
  %i.pd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.pc) ; 2 uses
  %i.pe = fmul fast <4 x float> %i.pd, %i.pc
  %i.pf = fsub fast <4 x float> splat (float 2.000000e+00), %i.pe
  %i.pg = fmul fast <4 x float> %i.pf, %i.pd
  store <4 x float> %i.pg, ptr %i.pb, align 1, !tbaa !63
  %i.ph = getelementptr inbounds nuw i8, ptr %.0104194.i, i64 32 ; 3 uses
  %niter228.next.1 = add i32 %niter228, 2         ; 2 uses
  %niter228.ncmp.1.not = icmp eq i32 %niter228.next.1, %unroll_iter227
  br i1 %niter228.ncmp.1.not, label %.preheader161.loopexit.i.unr-lcssa, label %.lr.ph196.i, !llvm.loop !20

.preheader160.i:                                  ; preds = %.lr.ph201.i, %middle.block166, %.preheader161.i
  br i1 %i.fx, label %.lr.ph216.i, label %_ZN4ncnnL23softmax_bf16s_pack4_sseEPtimiPfS1_.exit

.lr.ph216.i:                                      ; preds = %.preheader160.i
  %i.pi = and i32 %4, -4
  %wide.trip.count249.i = zext nneg i32 %1 to i64
  br label %bb.k

.lr.ph201.i:                                      ; preds = %.lr.ph201.i.preheader206, %.lr.ph201.i
  %.1103200.i = phi i32 [ %i.pm, %.lr.ph201.i ], [ %.1103200.i.ph, %.lr.ph201.i.preheader206 ]
  %.1105199.i = phi ptr [ %i.pl, %.lr.ph201.i ], [ %.1105199.i.ph, %.lr.ph201.i.preheader206 ] ; 3 uses
  %i.pj = load float, ptr %.1105199.i, align 4, !tbaa !66
  %i.pk = fdiv fast float 1.000000e+00, %i.pj
  store float %i.pk, ptr %.1105199.i, align 4, !tbaa !66
  %i.pl = getelementptr inbounds nuw i8, ptr %.1105199.i, i64 4
  %i.pm = add nuw nsw i32 %.1103200.i, 1          ; 2 uses
  %exitcond244.not.i = icmp eq i32 %i.pm, %4
  br i1 %exitcond244.not.i, label %.preheader160.i, label %.lr.ph201.i, !llvm.loop !256

bb.k:                                             ; preds = %._crit_edge214.i, %.lr.ph216.i
  %indvars.iv246.i = phi i64 [ 0, %.lr.ph216.i ], [ %indvars.iv.next247.i, %._crit_edge214.i ] ; 2 uses
  %i.pn = mul i64 %indvars.iv246.i, %3
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.pn ; 2 uses
  br i1 %i.a, label %.lr.ph206.i, label %.preheader.i42

.preheader.i42:                                   ; preds = %.lr.ph206.i, %bb.k
  %.099.lcssa.i = phi ptr [ %i.po, %bb.k ], [ %i.rg, %.lr.ph206.i ] ; 3 uses
  %.097.lcssa.i = phi ptr [ %6, %bb.k ], [ %i.rh, %.lr.ph206.i ] ; 3 uses
  %.096.lcssa.i = phi i32 [ 0, %bb.k ], [ %i.pi, %.lr.ph206.i ] ; 4 uses
  %i.pp = icmp slt i32 %.096.lcssa.i, %4
  br i1 %i.pp, label %.lr.ph213.i.preheader, label %._crit_edge214.i

.lr.ph213.i.preheader:                            ; preds = %.preheader.i42
  %i.pq = xor i32 %.096.lcssa.i, -1
  %i.pr = add i32 %4, %i.pq                       ; 2 uses
  %i.ps = zext i32 %i.pr to i64
  %i.pt = add nuw nsw i64 %i.ps, 1                ; 2 uses
  %min.iters.check171 = icmp ult i32 %i.pr, 7
  br i1 %min.iters.check171, label %.lr.ph213.i.preheader202, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph213.i.preheader
  %n.vec173 = and i64 %i.pt, 8589934584           ; 5 uses
  %i.pu = trunc i64 %n.vec173 to i32
  %i.pv = add i32 %.096.lcssa.i, %i.pu
  %i.pw = shl nuw nsw i64 %n.vec173, 2
  %i.px = getelementptr i8, ptr %.097.lcssa.i, i64 %i.pw
  %i.py = shl nuw nsw i64 %n.vec173, 1
  %i.pz = getelementptr i8, ptr %.099.lcssa.i, i64 %i.py
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next182, %vector.body174 ] ; 3 uses
  %i.qa = shl i64 %index175, 2
  %next.gep176 = getelementptr i8, ptr %.097.lcssa.i, i64 %i.qa ; 2 uses
  %i.qb = shl i64 %index175, 1
  %next.gep177 = getelementptr i8, ptr %.099.lcssa.i, i64 %i.qb ; 3 uses
  %i.qc = getelementptr i8, ptr %next.gep177, i64 8 ; 2 uses
  %wide.load178 = load <4 x i16>, ptr %next.gep177, align 2, !tbaa !82
  %wide.load179 = load <4 x i16>, ptr %i.qc, align 2, !tbaa !82
  %i.qd = zext <4 x i16> %wide.load178 to <4 x i32>
  %i.qe = zext <4 x i16> %wide.load179 to <4 x i32>
  %i.qf = shl nuw <4 x i32> %i.qd, splat (i32 16)
  %i.qg = shl nuw <4 x i32> %i.qe, splat (i32 16)
  %i.qh = bitcast <4 x i32> %i.qf to <4 x float>
  %i.qi = bitcast <4 x i32> %i.qg to <4 x float>
  %i.qj = getelementptr i8, ptr %next.gep176, i64 16
  %wide.load180 = load <4 x float>, ptr %next.gep176, align 4, !tbaa !66
  %wide.load181 = load <4 x float>, ptr %i.qj, align 4, !tbaa !66
  %i.qk = fmul fast <4 x float> %wide.load180, %i.qh
  %i.ql = fmul fast <4 x float> %wide.load181, %i.qi
  %i.qm = bitcast <4 x float> %i.qk to <4 x i32>
  %i.qn = bitcast <4 x float> %i.ql to <4 x i32>
  %i.qo = lshr <4 x i32> %i.qm, splat (i32 16)
  %i.qp = lshr <4 x i32> %i.qn, splat (i32 16)
  %i.qq = trunc nuw <4 x i32> %i.qo to <4 x i16>
  %i.qr = trunc nuw <4 x i32> %i.qp to <4 x i16>
  store <4 x i16> %i.qq, ptr %next.gep177, align 2, !tbaa !82
  store <4 x i16> %i.qr, ptr %i.qc, align 2, !tbaa !82
  %index.next182 = add nuw i64 %index175, 8       ; 2 uses
  %i.qs = icmp eq i64 %index.next182, %n.vec173
  br i1 %i.qs, label %middle.block183, label %vector.body174, !llvm.loop !257

middle.block183:                                  ; preds = %vector.body174
  %cmp.n184 = icmp eq i64 %i.pt, %n.vec173
  br i1 %cmp.n184, label %._crit_edge214.i, label %.lr.ph213.i.preheader202

.lr.ph213.i.preheader202:                         ; preds = %.lr.ph213.i.preheader, %middle.block183
  %.1212.i.ph = phi i32 [ %.096.lcssa.i, %.lr.ph213.i.preheader ], [ %i.pv, %middle.block183 ]
  %.198211.i.ph = phi ptr [ %.097.lcssa.i, %.lr.ph213.i.preheader ], [ %i.px, %middle.block183 ]
  %.1100210.i.ph = phi ptr [ %.099.lcssa.i, %.lr.ph213.i.preheader ], [ %i.pz, %middle.block183 ]
  br label %.lr.ph213.i

.lr.ph206.i:                                      ; preds = %bb.k, %.lr.ph206.i
  %.096204.i = phi i32 [ %i.ri, %.lr.ph206.i ], [ 0, %bb.k ]
  %.097203.i = phi ptr [ %i.rh, %.lr.ph206.i ], [ %6, %bb.k ] ; 2 uses
  %.099202.i = phi ptr [ %i.rg, %.lr.ph206.i ], [ %i.po, %bb.k ] ; 3 uses
  %i.qt = load i64, ptr %.099202.i, align 1, !tbaa !63
  %i.qu = insertelement <2 x i64> poison, i64 %i.qt, i64 0
end_hunk_1
begin_hunk_2_@_ZNK4ncnn11Softmax_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.9:bb.a
  %i.dt = fcmp fast olt float %i.ds, %i.dr
  %.sroa.speculated.us.i.i = select i1 %i.dt, float %i.dr, float %i.ds
  store float %.sroa.speculated.us.i.i, ptr %.1109172.us.i.i, align 4, !tbaa !66
  %i.du = getelementptr inbounds nuw i8, ptr %.1107173.us.i.i, i64 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.1109172.us.i.i, i64 4
  %i.dw = add nuw nsw i32 %.1111171.us.i.i, 1     ; 2 uses
  %exitcond232.not.i.i = icmp eq i32 %i.dw, %i.aw
  br i1 %exitcond232.not.i.i, label %._crit_edge.us.i.i, label %.lr.ph174.us.i.i, !llvm.loop !272

._crit_edge.us.i.i:                               ; preds = %.lr.ph174.us.i.i, %middle.block187, %..preheader165_crit_edge.us.i.i
  %indvars.iv.next234.i.i = add nuw nsw i64 %indvars.iv233.i.i, 1 ; 2 uses
  %exitcond237.not.i.i = icmp eq i64 %indvars.iv.next234.i.i, %wide.trip.count236.i.i
  br i1 %exitcond237.not.i.i, label %.lr.ph193.i.i, label %.lr.ph.us.i.i, !llvm.loop !17

..preheader165_crit_edge.us.i.i:                  ; preds = %bb.c
  br i1 %.not.i44, label %._crit_edge.us.i.i, label %.lr.ph174.us.i.i.preheader

.lr.ph174.us.i.i.preheader:                       ; preds = %..preheader165_crit_edge.us.i.i
  br i1 %min.iters.check175, label %.lr.ph174.us.i.i.preheader206, label %vector.ph176

vector.ph176:                                     ; preds = %.lr.ph174.us.i.i.preheader
  %i.dx = getelementptr i8, ptr %i.dj, i64 %i.cw
  %i.dy = getelementptr i8, ptr %i.dk, i64 %i.cx
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next186, %vector.body178 ] ; 3 uses
  %i.dz = shl i64 %index179, 1
  %next.gep180 = getelementptr i8, ptr %i.dj, i64 %i.dz ; 2 uses
  %i.ea = shl i64 %index179, 2
  %next.gep181 = getelementptr i8, ptr %i.dk, i64 %i.ea ; 3 uses
  %i.eb = getelementptr i8, ptr %next.gep180, i64 8
  %wide.load182 = load <4 x i16>, ptr %next.gep180, align 2, !tbaa !82
  %wide.load183 = load <4 x i16>, ptr %i.eb, align 2, !tbaa !82
  %i.ec = zext <4 x i16> %wide.load182 to <4 x i32>
  %i.ed = zext <4 x i16> %wide.load183 to <4 x i32>
  %i.ee = shl nuw <4 x i32> %i.ec, splat (i32 16)
  %i.ef = shl nuw <4 x i32> %i.ed, splat (i32 16)
  %i.eg = bitcast <4 x i32> %i.ee to <4 x float>  ; 2 uses
  %i.eh = bitcast <4 x i32> %i.ef to <4 x float>  ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep181, i64 16 ; 2 uses
  %wide.load184 = load <4 x float>, ptr %next.gep181, align 4, !tbaa !66 ; 2 uses
  %wide.load185 = load <4 x float>, ptr %i.ei, align 4, !tbaa !66 ; 2 uses
  %i.ej = fcmp fast olt <4 x float> %wide.load184, %i.eg
  %i.ek = fcmp fast olt <4 x float> %wide.load185, %i.eh
  %i.el = select <4 x i1> %i.ej, <4 x float> %i.eg, <4 x float> %wide.load184
  %i.em = select <4 x i1> %i.ek, <4 x float> %i.eh, <4 x float> %wide.load185
  store <4 x float> %i.el, ptr %next.gep181, align 4, !tbaa !66
  store <4 x float> %i.em, ptr %i.ei, align 4, !tbaa !66
  %index.next186 = add nuw i64 %index179, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next186, %n.vec177
  br i1 %i.en, label %middle.block187, label %vector.body178, !llvm.loop !273

middle.block187:                                  ; preds = %vector.body178
  br i1 %cmp.n188, label %._crit_edge.us.i.i, label %.lr.ph174.us.i.i.preheader206

.lr.ph174.us.i.i.preheader206:                    ; preds = %.lr.ph174.us.i.i.preheader, %middle.block187
  %.1107173.us.i.i.ph = phi ptr [ %i.dj, %.lr.ph174.us.i.i.preheader ], [ %i.dx, %middle.block187 ]
  %.1109172.us.i.i.ph = phi ptr [ %i.dk, %.lr.ph174.us.i.i.preheader ], [ %i.dy, %middle.block187 ]
  %.1111171.us.i.i.ph = phi i32 [ %i.cr, %.lr.ph174.us.i.i.preheader ], [ %i.cz, %middle.block187 ]
  br label %.lr.ph174.us.i.i

.lr.ph177.split.i.i:                              ; preds = %.lr.ph177.i.i
  %i.eo = icmp sgt i32 %i.aw, 0
  br i1 %i.eo, label %.preheader165.i.i.preheader, label %.lr.ph193.i.i

.preheader165.i.i.preheader:                      ; preds = %.lr.ph177.split.i.i
  %exitcond.not.i47.i = icmp eq i32 %i.aw, 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %exitcond.not.i47.i.1 = icmp eq i32 %i.aw, 2
  %i.eq = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %.promoted = load float, ptr %i.av, align 4, !tbaa !66
  br label %.preheader165.i.i

.lr.ph193.i.i.loopexit208:                        ; preds = %._crit_edge.i48.i
  store float %.sroa.speculated.i46.i, ptr %i.av, align 4, !tbaa !66
  br label %.lr.ph193.i.i

.lr.ph193.i.i:                                    ; preds = %._crit_edge.us.i.i, %.lr.ph193.i.i.loopexit208, %.lr.ph177.split.i.i
  %i.er = and i32 %i.aw, -4
  br label %bb.f

.preheader165.i.i:                                ; preds = %.preheader165.i.i.preheader, %._crit_edge.i48.i
  %i.es = phi float [ %.sroa.speculated.i46.i, %._crit_edge.i48.i ], [ %.promoted, %.preheader165.i.i.preheader ] ; 2 uses
  %indvars.iv.i45.i = phi i64 [ %indvars.iv.next.i49.i, %._crit_edge.i48.i ], [ 0, %.preheader165.i.i.preheader ] ; 2 uses
  %i.et = mul nuw nsw i64 %indvars.iv.i45.i, %i.ax
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.et ; 3 uses
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !82
  %i.ew = zext i16 %i.ev to i32
  %i.ex = shl nuw i32 %i.ew, 16
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
  %.0118.lcssa.i.i = phi ptr [ %i.ft, %bb.f ], [ %i.jk, %.lr.ph.i43.i ] ; 4 uses
  %.0116.lcssa.i.i = phi ptr [ %i.av, %bb.f ], [ %i.jl, %.lr.ph.i43.i ] ; 6 uses
  %.0114.lcssa.i.i = phi ptr [ %i.ay, %bb.f ], [ %i.jm, %.lr.ph.i43.i ] ; 6 uses
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
  %i.fz = xor i32 %.0112.lcssa.i.i, -1
  %i.ga = add i32 %i.aw, %i.fz
  %i.gb = zext i32 %i.ga to i64
  %i.gc = shl nuw nsw i64 %i.gb, 2
  %i.gd = add nuw nsw i64 %i.gc, 4                ; 2 uses
  %i.ge = getelementptr i8, ptr %.0114.lcssa.i.i, i64 %i.gd
  %i.gf = getelementptr i8, ptr %.0116.lcssa.i.i, i64 %i.gd
  %bound0 = icmp ult ptr %.0114.lcssa.i.i, %i.gf
  %bound1 = icmp ult ptr %.0116.lcssa.i.i, %i.ge
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph190.i.i.preheader205, label %vector.ph157

vector.ph157:                                     ; preds = %vector.memcheck
  %n.vec158 = and i64 %i.fy, 8589934588           ; 5 uses
  %i.gg = trunc i64 %n.vec158 to i32
  %i.gh = add i32 %.0112.lcssa.i.i, %i.gg
  %i.gi = shl nuw nsw i64 %n.vec158, 2            ; 2 uses
  %i.gj = getelementptr i8, ptr %.0114.lcssa.i.i, i64 %i.gi
  %i.gk = getelementptr i8, ptr %.0116.lcssa.i.i, i64 %i.gi
  %i.gl = shl nuw nsw i64 %n.vec158, 1
  %i.gm = getelementptr i8, ptr %.0118.lcssa.i.i, i64 %i.gl
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph157
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next167, %vector.body159 ] ; 3 uses
  %i.gn = shl i64 %index160, 2                    ; 2 uses
  %next.gep161 = getelementptr i8, ptr %.0114.lcssa.i.i, i64 %i.gn ; 2 uses
  %next.gep162 = getelementptr i8, ptr %.0116.lcssa.i.i, i64 %i.gn
  %i.go = shl i64 %index160, 1
  %next.gep163 = getelementptr i8, ptr %.0118.lcssa.i.i, i64 %i.go ; 2 uses
  %wide.load164 = load <4 x i16>, ptr %next.gep163, align 2, !tbaa !82
  %i.gp = zext <4 x i16> %wide.load164 to <4 x i32>
  %i.gq = shl nuw <4 x i32> %i.gp, splat (i32 16)
  %i.gr = bitcast <4 x i32> %i.gq to <4 x float>
  %wide.load165 = load <4 x float>, ptr %next.gep162, align 4, !tbaa !66, !alias.scope !286
  %i.gs = fsub fast <4 x float> %i.gr, %wide.load165
  %i.gt = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.gs) ; 2 uses
  %i.gu = bitcast <4 x float> %i.gt to <4 x i32>
  %i.gv = lshr <4 x i32> %i.gu, splat (i32 16)
  %i.gw = trunc nuw nsw <4 x i32> %i.gv to <4 x i16>
  store <4 x i16> %i.gw, ptr %next.gep163, align 2, !tbaa !82
  %wide.load166 = load <4 x float>, ptr %next.gep161, align 4, !tbaa !66, !alias.scope !287, !noalias !286
  %i.gx = fadd fast <4 x float> %i.gt, %wide.load166
  store <4 x float> %i.gx, ptr %next.gep161, align 4, !tbaa !66, !alias.scope !287, !noalias !286
  %index.next167 = add nuw i64 %index160, 4       ; 2 uses
  %i.gy = icmp eq i64 %index.next167, %n.vec158
  br i1 %i.gy, label %middle.block168, label %vector.body159, !llvm.loop !277

middle.block168:                                  ; preds = %vector.body159
  %cmp.n169 = icmp eq i64 %i.fy, %n.vec158
  br i1 %cmp.n169, label %._crit_edge191.i.i, label %.lr.ph190.i.i.preheader205

.lr.ph190.i.i.preheader205:                       ; preds = %vector.memcheck, %.lr.ph190.i.i.preheader, %middle.block168
  %.1113189.i.i.ph = phi i32 [ %.0112.lcssa.i.i, %vector.memcheck ], [ %.0112.lcssa.i.i, %.lr.ph190.i.i.preheader ], [ %i.gh, %middle.block168 ] ; 4 uses
  %.1115188.i.i.ph = phi ptr [ %.0114.lcssa.i.i, %vector.memcheck ], [ %.0114.lcssa.i.i, %.lr.ph190.i.i.preheader ], [ %i.gj, %middle.block168 ] ; 4 uses
  %.1117187.i.i.ph = phi ptr [ %.0116.lcssa.i.i, %vector.memcheck ], [ %.0116.lcssa.i.i, %.lr.ph190.i.i.preheader ], [ %i.gk, %middle.block168 ] ; 3 uses
  %.1119186.i.i.ph = phi ptr [ %.0118.lcssa.i.i, %vector.memcheck ], [ %.0118.lcssa.i.i, %.lr.ph190.i.i.preheader ], [ %i.gm, %middle.block168 ] ; 4 uses
  %i.gz = sub i32 %i.aw, %.1113189.i.i.ph
  %.neg = add i32 %.1113189.i.i.ph, 1
  %xtraiter221 = and i32 %i.gz, 1
  %lcmp.mod222.not = icmp eq i32 %xtraiter221, 0
  br i1 %lcmp.mod222.not, label %.lr.ph190.i.i.prol.loopexit, label %.lr.ph190.i.i.prol

.lr.ph190.i.i.prol:                               ; preds = %.lr.ph190.i.i.preheader205
  %i.ha = load i16, ptr %.1119186.i.i.ph, align 2, !tbaa !82
  %i.hb = zext i16 %i.ha to i32
  %i.hc = shl nuw i32 %i.hb, 16
  %i.hd = bitcast i32 %i.hc to float
  %i.he = load float, ptr %.1117187.i.i.ph, align 4, !tbaa !66
  %i.hf = fsub fast float %i.hd, %i.he
  %i.hg = call fast float @llvm.exp.f32(float %i.hf) ; 2 uses
  %i.hh = bitcast float %i.hg to i32
  %i.hi = lshr i32 %i.hh, 16
  %i.hj = trunc nuw nsw i32 %i.hi to i16
  store i16 %i.hj, ptr %.1119186.i.i.ph, align 2, !tbaa !82
  %i.hk = load float, ptr %.1115188.i.i.ph, align 4, !tbaa !66
  %i.hl = fadd fast float %i.hg, %i.hk
  store float %i.hl, ptr %.1115188.i.i.ph, align 4, !tbaa !66
  %i.hm = getelementptr inbounds nuw i8, ptr %.1119186.i.i.ph, i64 2
  %i.hn = getelementptr inbounds nuw i8, ptr %.1117187.i.i.ph, i64 4
  %i.ho = getelementptr inbounds nuw i8, ptr %.1115188.i.i.ph, i64 4
  %i.hp = add nuw nsw i32 %.1113189.i.i.ph, 1
  br label %.lr.ph190.i.i.prol.loopexit

.lr.ph190.i.i.prol.loopexit:                      ; preds = %.lr.ph190.i.i.prol, %.lr.ph190.i.i.preheader205
  %.1113189.i.i.unr = phi i32 [ %.1113189.i.i.ph, %.lr.ph190.i.i.preheader205 ], [ %i.hp, %.lr.ph190.i.i.prol ]
  %.1115188.i.i.unr = phi ptr [ %.1115188.i.i.ph, %.lr.ph190.i.i.preheader205 ], [ %i.ho, %.lr.ph190.i.i.prol ]
  %.1117187.i.i.unr = phi ptr [ %.1117187.i.i.ph, %.lr.ph190.i.i.preheader205 ], [ %i.hn, %.lr.ph190.i.i.prol ]
  %.1119186.i.i.unr = phi ptr [ %.1119186.i.i.ph, %.lr.ph190.i.i.preheader205 ], [ %i.hm, %.lr.ph190.i.i.prol ]
  %i.hq = icmp eq i32 %i.aw, %.neg
  br i1 %i.hq, label %._crit_edge191.i.i, label %.lr.ph190.i.i

.lr.ph.i43.i:                                     ; preds = %bb.f, %.lr.ph.i43.i
  %.0112181.i.i = phi i32 [ %i.jn, %.lr.ph.i43.i ], [ 0, %bb.f ]
  %.0114180.i.i = phi ptr [ %i.jm, %.lr.ph.i43.i ], [ %i.ay, %bb.f ] ; 3 uses
  %.0116179.i.i = phi ptr [ %i.jl, %.lr.ph.i43.i ], [ %i.av, %bb.f ] ; 2 uses
  %.0118178.i.i = phi ptr [ %i.jk, %.lr.ph.i43.i ], [ %i.ft, %bb.f ] ; 3 uses
  %i.hr = load i64, ptr %.0118178.i.i, align 1, !tbaa !63
  %i.hs = insertelement <2 x i64> poison, i64 %i.hr, i64 0
  %i.ht = bitcast <2 x i64> %i.hs to <8 x i16>
  %i.hu = shufflevector <8 x i16> %i.ht, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.hv = bitcast <8 x i16> %i.hu to <4 x float>
  %i.hw = load <4 x float>, ptr %.0116179.i.i, align 1, !tbaa !63
  %i.hx = load <4 x float>, ptr %.0114180.i.i, align 1, !tbaa !63
  %i.hy = fsub fast <4 x float> %i.hv, %i.hw
  %i.hz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hy, <4 x float> splat (float f0x42B0C0A5))
  %i.ia = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ib = fmul fast <4 x float> %i.ia, splat (float f0x3FB8AA3B)
  %i.ic = fadd fast <4 x float> %i.ib, splat (float 5.000000e-01) ; 2 uses
  %i.id = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ic)
  %i.ie = sitofp fast <4 x i32> %i.id to <4 x float> ; 2 uses
  %i.if = fcmp fast olt <4 x float> %i.ic, %i.ie
  %i.ig = select <4 x i1> %i.if, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ih = fsub fast <4 x float> %i.ie, %i.ig      ; 2 uses
  %i.ii = fmul fast <4 x float> %i.ih, splat (float f0x3F317218)
  %i.ij = fsub fast <4 x float> %i.ia, %i.ii      ; 8 uses
  %i.ik = fmul fast <4 x float> %i.ij, %i.ij
  %i.il = fmul fast <4 x float> %i.ij, splat (float f0x39506967)
  %i.im = fadd fast <4 x float> %i.il, splat (float f0x3AB743CE)
  %i.in = fmul fast <4 x float> %i.im, %i.ij
  %i.io = fadd fast <4 x float> %i.in, splat (float f0x3C088908)
  %i.ip = fmul fast <4 x float> %i.io, %i.ij
  %i.iq = fadd fast <4 x float> %i.ip, splat (float f0x3D2AA9C1)
  %i.ir = fmul fast <4 x float> %i.iq, %i.ij
  %i.is = fadd fast <4 x float> %i.ir, splat (float f0x3E2AAAAA)
  %i.it = fmul fast <4 x float> %i.is, %i.ij
  %i.iu = fadd fast <4 x float> %i.it, splat (float 5.000000e-01)
  %i.iv = fmul fast <4 x float> %i.ik, %i.iu
  %i.iw = fadd fast <4 x float> %i.ij, splat (float 1.000000e+00)
  %i.ix = fadd fast <4 x float> %i.iw, %i.iv
  %i.iy = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ih)
  %i.iz = shl <4 x i32> %i.iy, splat (i32 23)
  %i.ja = add <4 x i32> %i.iz, splat (i32 1065353216)
  %i.jb = bitcast <4 x i32> %i.ja to <4 x float>
  %i.jc = fmul fast <4 x float> %i.ix, %i.jb      ; 2 uses
  %i.jd = bitcast <4 x float> %i.jc to <8 x i16>
  %i.je = shufflevector <8 x i16> %i.jd, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.jf = bitcast <8 x i16> %i.je to <4 x float>
  %i.jg = shufflevector <4 x float> %i.jf, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.jh = bitcast <4 x float> %i.jg to <2 x i64>
  %i.ji = extractelement <2 x i64> %i.jh, i64 0
  store i64 %i.ji, ptr %.0118178.i.i, align 1, !tbaa !63
  %i.jj = fadd fast <4 x float> %i.jc, %i.hx
  store <4 x float> %i.jj, ptr %.0114180.i.i, align 1, !tbaa !63
  %i.jk = getelementptr inbounds nuw i8, ptr %.0118178.i.i, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.0116179.i.i, i64 16 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.0114180.i.i, i64 16 ; 2 uses
  %i.jn = add nuw nsw i32 %.0112181.i.i, 4        ; 2 uses
  %i.jo = or disjoint i32 %i.jn, 3
  %i.jp = icmp slt i32 %i.jo, %i.aw
  br i1 %i.jp, label %.lr.ph.i43.i, label %.preheader163.i.i, !llvm.loop !18

.lr.ph190.i.i:                                    ; preds = %.lr.ph190.i.i.prol.loopexit, %.lr.ph190.i.i
  %.1113189.i.i = phi i32 [ %i.ku, %.lr.ph190.i.i ], [ %.1113189.i.i.unr, %.lr.ph190.i.i.prol.loopexit ]
  %.1115188.i.i = phi ptr [ %i.kt, %.lr.ph190.i.i ], [ %.1115188.i.i.unr, %.lr.ph190.i.i.prol.loopexit ] ; 4 uses
  %.1117187.i.i = phi ptr [ %i.ks, %.lr.ph190.i.i ], [ %.1117187.i.i.unr, %.lr.ph190.i.i.prol.loopexit ] ; 3 uses
  %.1119186.i.i = phi ptr [ %i.kr, %.lr.ph190.i.i ], [ %.1119186.i.i.unr, %.lr.ph190.i.i.prol.loopexit ] ; 4 uses
  %i.jq = load i16, ptr %.1119186.i.i, align 2, !tbaa !82
  %i.jr = zext i16 %i.jq to i32
  %i.js = shl nuw i32 %i.jr, 16
  %i.jt = bitcast i32 %i.js to float
  %i.ju = load float, ptr %.1117187.i.i, align 4, !tbaa !66
  %i.jv = fsub fast float %i.jt, %i.ju
  %i.jw = call fast float @llvm.exp.f32(float %i.jv) ; 2 uses
  %i.jx = bitcast float %i.jw to i32
  %i.jy = lshr i32 %i.jx, 16
  %i.jz = trunc nuw nsw i32 %i.jy to i16
  store i16 %i.jz, ptr %.1119186.i.i, align 2, !tbaa !82
  %i.ka = load float, ptr %.1115188.i.i, align 4, !tbaa !66
  %i.kb = fadd fast float %i.jw, %i.ka
  store float %i.kb, ptr %.1115188.i.i, align 4, !tbaa !66
  %i.kc = getelementptr inbounds nuw i8, ptr %.1119186.i.i, i64 2 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.1117187.i.i, i64 4
  %i.ke = getelementptr inbounds nuw i8, ptr %.1115188.i.i, i64 4 ; 2 uses
  %i.kf = load i16, ptr %i.kc, align 2, !tbaa !82
  %i.kg = zext i16 %i.kf to i32
  %i.kh = shl nuw i32 %i.kg, 16
  %i.ki = bitcast i32 %i.kh to float
  %i.kj = load float, ptr %i.kd, align 4, !tbaa !66
  %i.kk = fsub fast float %i.ki, %i.kj
  %i.kl = call fast float @llvm.exp.f32(float %i.kk) ; 2 uses
  %i.km = bitcast float %i.kl to i32
  %i.kn = lshr i32 %i.km, 16
  %i.ko = trunc nuw nsw i32 %i.kn to i16
  store i16 %i.ko, ptr %i.kc, align 2, !tbaa !82
  %i.kp = load float, ptr %i.ke, align 4, !tbaa !66
  %i.kq = fadd fast float %i.kl, %i.kp
  store float %i.kq, ptr %i.ke, align 4, !tbaa !66
  %i.kr = getelementptr inbounds nuw i8, ptr %.1119186.i.i, i64 4
  %i.ks = getelementptr inbounds nuw i8, ptr %.1117187.i.i, i64 8
  %i.kt = getelementptr inbounds nuw i8, ptr %.1115188.i.i, i64 8
  %i.ku = add nuw nsw i32 %.1113189.i.i, 2        ; 2 uses
  %exitcond238.not.i.i.1 = icmp eq i32 %i.ku, %i.aw
  br i1 %exitcond238.not.i.i.1, label %._crit_edge191.i.i, label %.lr.ph190.i.i, !llvm.loop !278

._crit_edge191.i.i:                               ; preds = %.lr.ph190.i.i.prol.loopexit, %.lr.ph190.i.i, %middle.block168, %.preheader163.i.i
  %indvars.iv.next240.i.i = add nuw nsw i64 %indvars.iv239.i.i, 1 ; 2 uses
  %exitcond243.not.i.i = icmp eq i64 %indvars.iv.next240.i.i, %wide.trip.count236.i.i
  br i1 %exitcond243.not.i.i, label %.preheader162.i.i, label %bb.f, !llvm.loop !19

.preheader161.loopexit.i.i.unr-lcssa:             ; preds = %.lr.ph196.i.i
  %i.kv = and i32 %i.fo, 4
  %lcmp.mod225.not.not = icmp eq i32 %i.kv, 0
  br i1 %lcmp.mod225.not.not, label %.lr.ph196.i.i.epil.preheader, label %.preheader161.loopexit.i.i

.lr.ph196.i.i.epil.preheader:                     ; preds = %.preheader161.loopexit.i.i.unr-lcssa, %.lr.ph196.i.i.preheader
  %.0104194.i.i.epil.init = phi ptr [ %i.ay, %.lr.ph196.i.i.preheader ], [ %i.ma, %.preheader161.loopexit.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod227 = trunc i32 %i.fq to i1
  call void @llvm.assume(i1 %lcmp.mod227)
  %i.kw = load <4 x float>, ptr %.0104194.i.i.epil.init, align 1, !tbaa !63 ; 2 uses
  %i.kx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.kw) ; 2 uses
  %i.ky = fmul fast <4 x float> %i.kx, %i.kw
  %i.kz = fsub fast <4 x float> splat (float 2.000000e+00), %i.ky
  %i.la = fmul fast <4 x float> %i.kz, %i.kx
  store <4 x float> %i.la, ptr %.0104194.i.i.epil.init, align 1, !tbaa !63
  %i.lb = getelementptr inbounds nuw i8, ptr %.0104194.i.i.epil.init, i64 16
  br label %.preheader161.loopexit.i.i

.preheader161.loopexit.i.i:                       ; preds = %.preheader161.loopexit.i.i.unr-lcssa, %.lr.ph196.i.i.epil.preheader
  %.lcssa215 = phi ptr [ %i.ma, %.preheader161.loopexit.i.i.unr-lcssa ], [ %i.lb, %.lr.ph196.i.i.epil.preheader ]
  %i.lc = and i32 %i.aw, 2147483644
  br label %.preheader161.i.i

.preheader161.i.i:                                ; preds = %.preheader161.loopexit.i.i, %.preheader162.i.i
  %.0104.lcssa.i.i = phi ptr [ %i.ay, %.preheader162.i.i ], [ %.lcssa215, %.preheader161.loopexit.i.i ] ; 3 uses
  %.0102.lcssa.i.i = phi i32 [ 0, %.preheader162.i.i ], [ %i.lc, %.preheader161.loopexit.i.i ] ; 4 uses
  %i.ld = icmp slt i32 %.0102.lcssa.i.i, %i.aw
  br i1 %i.ld, label %.lr.ph201.i.i.preheader, label %.preheader160.i.i

.lr.ph201.i.i.preheader:                          ; preds = %.preheader161.i.i
  %i.le = xor i32 %.0102.lcssa.i.i, -1
  %i.lf = add i32 %i.aw, %i.le                    ; 2 uses
  %i.lg = zext i32 %i.lf to i64
  %i.lh = add nuw nsw i64 %i.lg, 1                ; 2 uses
  %min.iters.check140 = icmp ult i32 %i.lf, 3
  br i1 %min.iters.check140, label %.lr.ph201.i.i.preheader207, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph201.i.i.preheader
  %n.vec142 = and i64 %i.lh, 8589934588           ; 4 uses
  %i.li = trunc i64 %n.vec142 to i32
  %i.lj = add i32 %.0102.lcssa.i.i, %i.li
  %i.lk = shl nuw nsw i64 %n.vec142, 2
  %i.ll = getelementptr i8, ptr %.0104.lcssa.i.i, i64 %i.lk
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next147, %vector.body143 ] ; 2 uses
  %i.lm = shl i64 %index144, 2
  %next.gep145 = getelementptr i8, ptr %.0104.lcssa.i.i, i64 %i.lm ; 2 uses
  %wide.load146 = load <4 x float>, ptr %next.gep145, align 4, !tbaa !66
  %i.ln = fdiv fast <4 x float> splat (float 1.000000e+00), %wide.load146
  store <4 x float> %i.ln, ptr %next.gep145, align 4, !tbaa !66
  %index.next147 = add nuw i64 %index144, 4       ; 2 uses
  %i.lo = icmp eq i64 %index.next147, %n.vec142
  br i1 %i.lo, label %middle.block148, label %vector.body143, !llvm.loop !279

middle.block148:                                  ; preds = %vector.body143
  %cmp.n149 = icmp eq i64 %i.lh, %n.vec142
  br i1 %cmp.n149, label %.preheader160.i.i, label %.lr.ph201.i.i.preheader207

.lr.ph201.i.i.preheader207:                       ; preds = %.lr.ph201.i.i.preheader, %middle.block148
  %.1103200.i.i.ph = phi i32 [ %.0102.lcssa.i.i, %.lr.ph201.i.i.preheader ], [ %i.lj, %middle.block148 ]
  %.1105199.i.i.ph = phi ptr [ %.0104.lcssa.i.i, %.lr.ph201.i.i.preheader ], [ %i.ll, %middle.block148 ]
  br label %.lr.ph201.i.i

.lr.ph196.i.i:                                    ; preds = %.lr.ph196.i.i, %.lr.ph196.i.i.preheader.new
  %.0104194.i.i = phi ptr [ %i.ay, %.lr.ph196.i.i.preheader.new ], [ %i.ma, %.lr.ph196.i.i ] ; 4 uses
  %niter229 = phi i32 [ 0, %.lr.ph196.i.i.preheader.new ], [ %niter229.next.1, %.lr.ph196.i.i ]
  %i.lp = load <4 x float>, ptr %.0104194.i.i, align 1, !tbaa !63 ; 2 uses
  %i.lq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.lp) ; 2 uses
  %i.lr = fmul fast <4 x float> %i.lq, %i.lp
  %i.ls = fsub fast <4 x float> splat (float 2.000000e+00), %i.lr
  %i.lt = fmul fast <4 x float> %i.ls, %i.lq
  store <4 x float> %i.lt, ptr %.0104194.i.i, align 1, !tbaa !63
  %i.lu = getelementptr inbounds nuw i8, ptr %.0104194.i.i, i64 16 ; 2 uses
  %i.lv = load <4 x float>, ptr %i.lu, align 1, !tbaa !63 ; 2 uses
  %i.lw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.lv) ; 2 uses
  %i.lx = fmul fast <4 x float> %i.lw, %i.lv
  %i.ly = fsub fast <4 x float> splat (float 2.000000e+00), %i.lx
  %i.lz = fmul fast <4 x float> %i.ly, %i.lw
  store <4 x float> %i.lz, ptr %i.lu, align 1, !tbaa !63
  %i.ma = getelementptr inbounds nuw i8, ptr %.0104194.i.i, i64 32 ; 3 uses
  %niter229.next.1 = add i32 %niter229, 2         ; 2 uses
  %niter229.ncmp.1.not = icmp eq i32 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1.not, label %.preheader161.loopexit.i.i.unr-lcssa, label %.lr.ph196.i.i, !llvm.loop !20

.preheader160.i.i:                                ; preds = %.lr.ph201.i.i, %middle.block148, %.preheader161.i.i
  br i1 %i.cq, label %.lr.ph216.i.i, label %_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_.exit

.lr.ph216.i.i:                                    ; preds = %.preheader160.i.i
  %i.mb = and i32 %i.aw, -4
  %wide.trip.count249.i.i = zext nneg i32 %i.az to i64
  br label %bb.g

.lr.ph201.i.i:                                    ; preds = %.lr.ph201.i.i.preheader207, %.lr.ph201.i.i
  %.1103200.i.i = phi i32 [ %i.mf, %.lr.ph201.i.i ], [ %.1103200.i.i.ph, %.lr.ph201.i.i.preheader207 ]
  %.1105199.i.i = phi ptr [ %i.me, %.lr.ph201.i.i ], [ %.1105199.i.i.ph, %.lr.ph201.i.i.preheader207 ] ; 3 uses
  %i.mc = load float, ptr %.1105199.i.i, align 4, !tbaa !66
  %i.md = fdiv fast float 1.000000e+00, %i.mc
  store float %i.md, ptr %.1105199.i.i, align 4, !tbaa !66
  %i.me = getelementptr inbounds nuw i8, ptr %.1105199.i.i, i64 4
  %i.mf = add nuw nsw i32 %.1103200.i.i, 1        ; 2 uses
  %exitcond244.not.i.i = icmp eq i32 %i.mf, %i.aw
  br i1 %exitcond244.not.i.i, label %.preheader160.i.i, label %.lr.ph201.i.i, !llvm.loop !280

bb.g:                                             ; preds = %._crit_edge214.i.i, %.lr.ph216.i.i
  %indvars.iv246.i.i = phi i64 [ 0, %.lr.ph216.i.i ], [ %indvars.iv.next247.i.i, %._crit_edge214.i.i ] ; 2 uses
  %i.mg = mul nsw i64 %indvars.iv246.i.i, %i.ax
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.mg ; 2 uses
  br i1 %i.ba, label %.lr.ph206.i.i, label %.preheader.i42.i

.preheader.i42.i:                                 ; preds = %.lr.ph206.i.i, %bb.g
  %.099.lcssa.i.i = phi ptr [ %i.mh, %bb.g ], [ %i.nz, %.lr.ph206.i.i ] ; 3 uses
  %.097.lcssa.i.i = phi ptr [ %i.ay, %bb.g ], [ %i.oa, %.lr.ph206.i.i ] ; 3 uses
  %.096.lcssa.i.i = phi i32 [ 0, %bb.g ], [ %i.mb, %.lr.ph206.i.i ] ; 4 uses
  %i.mi = icmp slt i32 %.096.lcssa.i.i, %i.aw
  br i1 %i.mi, label %.lr.ph213.i.i.preheader, label %._crit_edge214.i.i

.lr.ph213.i.i.preheader:                          ; preds = %.preheader.i42.i
  %i.mj = xor i32 %.096.lcssa.i.i, -1
  %i.mk = add i32 %i.aw, %i.mj                    ; 2 uses
  %i.ml = zext i32 %i.mk to i64
  %i.mm = add nuw nsw i64 %i.ml, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.mk, 7
  br i1 %min.iters.check, label %.lr.ph213.i.i.preheader204, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph213.i.i.preheader
  %n.vec = and i64 %i.mm, 8589934584              ; 5 uses
  %i.mn = trunc i64 %n.vec to i32
  %i.mo = add i32 %.096.lcssa.i.i, %i.mn
  %i.mp = shl nuw nsw i64 %n.vec, 2
  %i.mq = getelementptr i8, ptr %.097.lcssa.i.i, i64 %i.mp
  %i.mr = shl nuw nsw i64 %n.vec, 1
  %i.ms = getelementptr i8, ptr %.099.lcssa.i.i, i64 %i.mr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mt = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.097.lcssa.i.i, i64 %i.mt ; 2 uses
  %i.mu = shl i64 %index, 1
  %next.gep133 = getelementptr i8, ptr %.099.lcssa.i.i, i64 %i.mu ; 3 uses
  %i.mv = getelementptr i8, ptr %next.gep133, i64 8 ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep133, align 2, !tbaa !82
  %wide.load134 = load <4 x i16>, ptr %i.mv, align 2, !tbaa !82
  %i.mw = zext <4 x i16> %wide.load to <4 x i32>
  %i.mx = zext <4 x i16> %wide.load134 to <4 x i32>
  %i.my = shl nuw <4 x i32> %i.mw, splat (i32 16)
  %i.mz = shl nuw <4 x i32> %i.mx, splat (i32 16)
  %i.na = bitcast <4 x i32> %i.my to <4 x float>
  %i.nb = bitcast <4 x i32> %i.mz to <4 x float>
  %i.nc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load135 = load <4 x float>, ptr %next.gep, align 4, !tbaa !66
  %wide.load136 = load <4 x float>, ptr %i.nc, align 4, !tbaa !66
  %i.nd = fmul fast <4 x float> %wide.load135, %i.na
  %i.ne = fmul fast <4 x float> %wide.load136, %i.nb
  %i.nf = bitcast <4 x float> %i.nd to <4 x i32>
  %i.ng = bitcast <4 x float> %i.ne to <4 x i32>
  %i.nh = lshr <4 x i32> %i.nf, splat (i32 16)
  %i.ni = lshr <4 x i32> %i.ng, splat (i32 16)
  %i.nj = trunc nuw <4 x i32> %i.nh to <4 x i16>
  %i.nk = trunc nuw <4 x i32> %i.ni to <4 x i16>
  store <4 x i16> %i.nj, ptr %next.gep133, align 2, !tbaa !82
  store <4 x i16> %i.nk, ptr %i.mv, align 2, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.nl = icmp eq i64 %index.next, %n.vec
  br i1 %i.nl, label %middle.block, label %vector.body, !llvm.loop !281

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mm, %n.vec
  br i1 %cmp.n, label %._crit_edge214.i.i, label %.lr.ph213.i.i.preheader204

.lr.ph213.i.i.preheader204:                       ; preds = %.lr.ph213.i.i.preheader, %middle.block
  %.1212.i.i.ph = phi i32 [ %.096.lcssa.i.i, %.lr.ph213.i.i.preheader ], [ %i.mo, %middle.block ]
  %.198211.i.i.ph = phi ptr [ %.097.lcssa.i.i, %.lr.ph213.i.i.preheader ], [ %i.mq, %middle.block ]
  %.1100210.i.i.ph = phi ptr [ %.099.lcssa.i.i, %.lr.ph213.i.i.preheader ], [ %i.ms, %middle.block ]
  br label %.lr.ph213.i.i

.lr.ph206.i.i:                                    ; preds = %bb.g, %.lr.ph206.i.i
  %.096204.i.i = phi i32 [ %i.ob, %.lr.ph206.i.i ], [ 0, %bb.g ]
  %.097203.i.i = phi ptr [ %i.oa, %.lr.ph206.i.i ], [ %i.ay, %bb.g ] ; 2 uses
  %.099202.i.i = phi ptr [ %i.nz, %.lr.ph206.i.i ], [ %i.mh, %bb.g ] ; 3 uses
  %i.nm = load i64, ptr %.099202.i.i, align 1, !tbaa !63
  %i.nn = insertelement <2 x i64> poison, i64 %i.nm, i64 0
end_hunk_2
begin_hunk_3_@_ZNK4ncnn11Softmax_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.10:bb.a
  %i.af = lshr i32 %i.ae, 2                       ; 2 uses
  %i.ag = add nuw nsw i32 %i.af, 1                ; 2 uses
  %i.ah = icmp eq i32 %i.af, 0
  br i1 %i.ah, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.ag, 2147483646
  br label %.lr.ph.i

.preheader117.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i
  %i.ai = and i32 %i.ae, 4
  %lcmp.mod.not.not = icmp eq i32 %i.ai, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %.preheader117.loopexit.i

.lr.ph.i.epil.preheader:                          ; preds = %.preheader117.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.056120.i.epil.init = phi ptr [ %.02034, %.lr.ph.i.preheader ], [ %i.bz, %.preheader117.loopexit.i.unr-lcssa ] ; 2 uses
  %.0109118.i.epil.init = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader ], [ %i.by, %.preheader117.loopexit.i.unr-lcssa ]
  %lcmp.mod116 = trunc i32 %i.ag to i1
  call void @llvm.assume(i1 %lcmp.mod116)
  %i.aj = load i64, ptr %.056120.i.epil.init, align 1, !tbaa !63
  %i.ak = insertelement <2 x i64> poison, i64 %i.aj, i64 0
  %i.al = bitcast <2 x i64> %i.ak to <8 x i16>
  %i.am = shufflevector <8 x i16> %i.al, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.an = bitcast <8 x i16> %i.am to <4 x float>
  %i.ao = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0109118.i.epil.init, <4 x float> nofpclass(nan inf) %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %.056120.i.epil.init, i64 8
  br label %.preheader117.loopexit.i

.preheader117.loopexit.i:                         ; preds = %.preheader117.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa104 = phi <4 x float> [ %i.by, %.preheader117.loopexit.i.unr-lcssa ], [ %i.ao, %.lr.ph.i.epil.preheader ]
  %.lcssa = phi ptr [ %i.bz, %.preheader117.loopexit.i.unr-lcssa ], [ %i.ap, %.lr.ph.i.epil.preheader ]
  %i.aq = and i32 %i.ac, 2147483644
  br label %.preheader117.i

.preheader117.i:                                  ; preds = %.preheader117.loopexit.i, %.lr.ph
  %.0109.lcssa.i = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph ], [ %.lcssa104, %.preheader117.loopexit.i ] ; 3 uses
  %.058.lcssa.i = phi i32 [ 0, %.lr.ph ], [ %i.aq, %.preheader117.loopexit.i ] ; 4 uses
  %.056.lcssa.i = phi ptr [ %.02034, %.lr.ph ], [ %.lcssa, %.preheader117.loopexit.i ] ; 3 uses
  %i.ar = icmp slt i32 %.058.lcssa.i, %i.ac
  br i1 %i.ar, label %.lr.ph126.i.preheader, label %._crit_edge.i

.lr.ph126.i.preheader:                            ; preds = %.preheader117.i
  %i.as = xor i32 %.058.lcssa.i, -1
  %i.at = add i32 %i.ac, %i.as                    ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check85 = icmp ult i32 %i.at, 7
  br i1 %min.iters.check85, label %.lr.ph126.i.preheader103, label %vector.ph86

vector.ph86:                                      ; preds = %.lr.ph126.i.preheader
  %n.vec87 = and i64 %i.av, 8589934584            ; 4 uses
  %i.aw = shl nuw nsw i64 %n.vec87, 1
  %i.ax = getelementptr i8, ptr %.056.lcssa.i, i64 %i.aw
  %i.ay = trunc i64 %n.vec87 to i32
  %i.az = add i32 %.058.lcssa.i, %i.ay
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
  %i.bp = shufflevector <8 x i16> %i.bo, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bq = bitcast <8 x i16> %i.bp to <4 x float>
  %i.br = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0109118.i, <4 x float> nofpclass(nan inf) %i.bq)
  %i.bs = getelementptr inbounds nuw i8, ptr %.056120.i, i64 8
  %i.bt = load i64, ptr %i.bs, align 1, !tbaa !63
  %i.bu = insertelement <2 x i64> poison, i64 %i.bt, i64 0
  %i.bv = bitcast <2 x i64> %i.bu to <8 x i16>
  %i.bw = shufflevector <8 x i16> %i.bv, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
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
  %i.dy = shufflevector <8 x i16> %i.dx, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
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
  %i.hk = shufflevector <8 x i16> %i.hj, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
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
  %.not53 = icmp sgt i32 %i.k, %i.j
  br i1 %.not53, label %._crit_edge, label %.noexc21.lr.ph

.noexc21.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = sext i32 %i.k to i64
  br label %.noexc21

.noexc21:                                         ; preds = %.noexc21.lr.ph, %.noexc
  %indvars.iv = phi i64 [ %i.p, %.noexc21.lr.ph ], [ %indvars.iv.next, %.noexc ] ; 3 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !62, !noalias !303
  %i.r = load i64, ptr %i.l, align 8, !tbaa !73, !noalias !303
  %i.s = load i64, ptr %i.m, align 8, !tbaa !40, !noalias !303
  %i.t = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.noexc21
end_hunk_3
begin_hunk_4_@_ZNK4ncnn11Softmax_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.12:bb.a
  %i.aq = lshr i32 %i.ap, 2                       ; 2 uses
  %i.ar = add nuw nsw i32 %i.aq, 1                ; 2 uses
  %i.as = icmp eq i32 %i.aq, 0
  br i1 %i.as, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.ar, 2147483646
  br label %.lr.ph.i

.preheader117.loopexit.i.unr-lcssa:               ; preds = %.lr.ph.i
  %i.at = and i32 %i.ap, 4
  %lcmp.mod.not.not = icmp eq i32 %i.at, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %.preheader117.loopexit.i

.lr.ph.i.epil.preheader:                          ; preds = %.preheader117.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %.056120.i.epil.init = phi ptr [ %.138, %.lr.ph.i.preheader ], [ %i.ck, %.preheader117.loopexit.i.unr-lcssa ] ; 2 uses
  %.0109118.i.epil.init = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph.i.preheader ], [ %i.cj, %.preheader117.loopexit.i.unr-lcssa ]
  %lcmp.mod137 = trunc i32 %i.ar to i1
  call void @llvm.assume(i1 %lcmp.mod137)
  %i.au = load i64, ptr %.056120.i.epil.init, align 1, !tbaa !63
  %i.av = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %i.aw = bitcast <2 x i64> %i.av to <8 x i16>
  %i.ax = shufflevector <8 x i16> %i.aw, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ay = bitcast <8 x i16> %i.ax to <4 x float>
  %i.az = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0109118.i.epil.init, <4 x float> nofpclass(nan inf) %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %.056120.i.epil.init, i64 8
  br label %.preheader117.loopexit.i

.preheader117.loopexit.i:                         ; preds = %.preheader117.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa123 = phi <4 x float> [ %i.cj, %.preheader117.loopexit.i.unr-lcssa ], [ %i.az, %.lr.ph.i.epil.preheader ]
  %.lcssa = phi ptr [ %i.ck, %.preheader117.loopexit.i.unr-lcssa ], [ %i.ba, %.lr.ph.i.epil.preheader ]
  %i.bb = and i32 %i.an, 2147483644
  br label %.preheader117.i

.preheader117.i:                                  ; preds = %.preheader117.loopexit.i, %.lr.ph
  %.0109.lcssa.i = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph ], [ %.lcssa123, %.preheader117.loopexit.i ] ; 3 uses
  %.058.lcssa.i = phi i32 [ 0, %.lr.ph ], [ %i.bb, %.preheader117.loopexit.i ] ; 4 uses
  %.056.lcssa.i = phi ptr [ %.138, %.lr.ph ], [ %.lcssa, %.preheader117.loopexit.i ] ; 3 uses
  %i.bc = icmp slt i32 %.058.lcssa.i, %i.an
  br i1 %i.bc, label %.lr.ph126.i.preheader, label %._crit_edge.i

.lr.ph126.i.preheader:                            ; preds = %.preheader117.i
  %i.bd = xor i32 %.058.lcssa.i, -1
  %i.be = add i32 %i.an, %i.bd                    ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check104 = icmp ult i32 %i.be, 7
  br i1 %min.iters.check104, label %.lr.ph126.i.preheader122, label %vector.ph105

vector.ph105:                                     ; preds = %.lr.ph126.i.preheader
  %n.vec106 = and i64 %i.bg, 8589934584           ; 4 uses
  %i.bh = shl nuw nsw i64 %n.vec106, 1
  %i.bi = getelementptr i8, ptr %.056.lcssa.i, i64 %i.bh
  %i.bj = trunc i64 %n.vec106 to i32
  %i.bk = add i32 %.058.lcssa.i, %i.bj
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
  %i.ca = shufflevector <8 x i16> %i.bz, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cb = bitcast <8 x i16> %i.ca to <4 x float>
  %i.cc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0109118.i, <4 x float> nofpclass(nan inf) %i.cb)
  %i.cd = getelementptr inbounds nuw i8, ptr %.056120.i, i64 8
  %i.ce = load i64, ptr %i.cd, align 1, !tbaa !63
  %i.cf = insertelement <2 x i64> poison, i64 %i.ce, i64 0
  %i.cg = bitcast <2 x i64> %i.cf to <8 x i16>
  %i.ch = shufflevector <8 x i16> %i.cg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
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
  %i.ej = shufflevector <8 x i16> %i.ei, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
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
  %i.hv = shufflevector <8 x i16> %i.hu, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
end_hunk_4
