inline.NumInlined: 26
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN4ncnnL7softmaxEPfii:bb.a
iter.check:                                       ; preds = %.preheader214
  %i.z = xor i32 %.176.lcssa, -1
  %i.aa = add i32 %i.a, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.aa, 7
  br i1 %min.iters.check, label %.lr.ph231.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check314 = icmp ult i32 %i.aa, 31
  br i1 %min.iters.check314, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ac, 24
  %n.vec = and i64 %i.ac, 8589934560              ; 5 uses
  %i.ae = shl nuw nsw i64 %n.vec, 2
  %i.af = getelementptr i8, ptr %.1.lcssa, i64 %i.ae
  %i.ag = trunc i64 %n.vec to i32
  %i.ah = add i32 %.176.lcssa, %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi315 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi316 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi317 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.ap, %vector.body ]
  %i.ai = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.1.lcssa, i64 %i.ai ; 4 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 32
  %i.ak = getelementptr i8, ptr %next.gep, i64 64
  %i.al = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !59
  %wide.load318 = load <8 x float>, ptr %i.aj, align 4, !tbaa !59
  %wide.load319 = load <8 x float>, ptr %i.ak, align 4, !tbaa !59
  %wide.load320 = load <8 x float>, ptr %i.al, align 4, !tbaa !59
  %i.am = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi, <8 x float> %wide.load) ; 2 uses
  %i.an = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi315, <8 x float> %wide.load318) ; 2 uses
  %i.ao = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi316, <8 x float> %wide.load319) ; 2 uses
  %i.ap = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi317, <8 x float> %wide.load320) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.am, <8 x float> %i.an)
  %rdx.minmax.select322 = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.ao)
  %rdx.minmax.select324 = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select322, <8 x float> %i.ap)
  %i.ar = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select324) ; 3 uses
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph231.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.ar, %vec.epilog.iter.check ], [ f0xFF7FFFFF, %vector.main.loop.iter.check ]
  %n.vec326 = and i64 %i.ac, 8589934584           ; 4 uses
  %i.as = shl nuw nsw i64 %n.vec326, 2
  %i.at = getelementptr i8, ptr %.1.lcssa, i64 %i.as
  %i.au = trunc i64 %n.vec326 to i32
  %i.av = add i32 %.176.lcssa, %i.au
  %broadcast.splatinsert = insertelement <8 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index327 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next331, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi328 = phi <8 x float> [ %broadcast.splat, %vec.epilog.ph ], [ %i.ax, %vec.epilog.vector.body ]
  %i.aw = shl i64 %index327, 2
  %next.gep329 = getelementptr i8, ptr %.1.lcssa, i64 %i.aw
  %wide.load330 = load <8 x float>, ptr %next.gep329, align 4, !tbaa !59
  %i.ax = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi328, <8 x float> %wide.load330) ; 2 uses
  %index.next331 = add nuw i64 %index327, 8       ; 2 uses
  %i.ay = icmp eq i64 %index.next331, %n.vec326
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.az = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.ax) ; 2 uses
  %cmp.n332 = icmp eq i64 %i.ac, %n.vec326
  br i1 %cmp.n332, label %._crit_edge, label %.lr.ph231.preheader

.lr.ph231.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2230.ph = phi ptr [ %.1.lcssa, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  %.277229.ph = phi i32 [ %.176.lcssa, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  %.0205228.ph = phi float [ f0xFF7FFFFF, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %.lr.ph231

.lr.ph224:                                        ; preds = %.preheader215, %.lr.ph224
  %.1223 = phi ptr [ %i.bc, %.lr.ph224 ], [ %.0.lcssa, %.preheader215 ] ; 2 uses
  %.176222 = phi i32 [ %i.bd, %.lr.ph224 ], [ %.075.lcssa, %.preheader215 ]
  %.0196221 = phi <4 x float> [ %i.bb, %.lr.ph224 ], [ splat (float f0xFF7FFFFF), %.preheader215 ]
  %i.ba = load <4 x float>, ptr %.1223, align 1, !tbaa !54
  %i.bb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0196221, <4 x float> nofpclass(nan inf) %i.ba) ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.1223, i64 16 ; 2 uses
  %i.bd = add nuw nsw i32 %.176222, 4             ; 3 uses
  %i.be = or disjoint i32 %i.bd, 3
  %i.bf = icmp slt i32 %i.be, %i.a
  br i1 %i.bf, label %.lr.ph224, label %.preheader214, !llvm.loop !66

.lr.ph231:                                        ; preds = %.lr.ph231.preheader, %.lr.ph231
  %.2230 = phi ptr [ %i.bg, %.lr.ph231 ], [ %.2230.ph, %.lr.ph231.preheader ] ; 2 uses
  %.277229 = phi i32 [ %i.bi, %.lr.ph231 ], [ %.277229.ph, %.lr.ph231.preheader ]
  %.0205228 = phi float [ %.sroa.speculated126, %.lr.ph231 ], [ %.0205228.ph, %.lr.ph231.preheader ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.2230, i64 4
  %i.bh = load float, ptr %.2230, align 4, !tbaa !59
  %.sroa.speculated126 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.0205228, float %i.bh) ; 2 uses
  %i.bi = add nuw nsw i32 %.277229, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.bi, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph231, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph231, %middle.block, %vec.epilog.middle.block, %.preheader214
  %.0205.lcssa = phi float [ f0xFF7FFFFF, %.preheader214 ], [ %i.az, %vec.epilog.middle.block ], [ %i.ar, %middle.block ], [ %.sroa.speculated126, %.lr.ph231 ] ; 4 uses
  %i.bj = icmp eq i32 %2, 4                       ; 2 uses
  br i1 %i.bj, label %.thread, label %bb.b

.thread:                                          ; preds = %._crit_edge
  %i.bk = shufflevector <8 x float> %.0193.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bl = shufflevector <8 x float> %.0193.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0196.lcssa, <4 x float> nofpclass(nan inf) %i.bk)
  %i.bn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bm, <4 x float> nofpclass(nan inf) %i.bl) ; 2 uses
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.bp = icmp eq i32 %2, 1
  br i1 %i.bp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bq = shufflevector <8 x float> %.0193.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.br = shufflevector <8 x float> %.0193.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bq, <4 x float> nofpclass(nan inf) %i.br) ; 2 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.bu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bs, <4 x float> nofpclass(nan inf) %i.bt) ; 2 uses
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.bu, <4 x float> nofpclass(nan inf) %i.bv)
  %i.bx = extractelement <4 x float> %i.bw, i64 0 ; 2 uses
  %i.by = fcmp fast olt float %.0205.lcssa, %i.bx
  %.sroa.speculated119 = select i1 %i.by, float %i.bx, float %.0205.lcssa ; 2 uses
  %i.bz = shufflevector <4 x float> %.0196.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ca = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0196.lcssa, <4 x float> nofpclass(nan inf) %i.bz) ; 2 uses
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ca, <4 x float> nofpclass(nan inf) %i.cb)
  %i.cd = extractelement <4 x float> %i.cc, i64 0 ; 2 uses
  %i.ce = fcmp fast olt float %.sroa.speculated119, %i.cd
  %.sroa.speculated = select i1 %i.ce, float %i.cd, float %.sroa.speculated119 ; 2 uses
  %i.cf = insertelement <4 x float> poison, float %.sroa.speculated, i64 0 ; 2 uses
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = shufflevector <4 x float> %i.cf, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  %i.ci = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %.thread ]
  %.1206 = phi nsz float [ %.sroa.speculated, %bb.c ], [ %.0205.lcssa, %bb.b ], [ %.0205.lcssa, %.thread ] ; 3 uses
  %.2198 = phi nsz <4 x float> [ %i.cg, %bb.c ], [ %.0196.lcssa, %bb.b ], [ %i.bn, %.thread ]
  %.2195 = phi nsz <8 x float> [ %i.ch, %bb.c ], [ %.0193.lcssa, %bb.b ], [ %i.bo, %.thread ]
  br i1 %i.b, label %.lr.ph237, label %.preheader213

.preheader213.loopexit:                           ; preds = %.lr.ph237
  %i.cj = and i32 %i.a, 2147483640
  br label %.preheader213

.preheader213:                                    ; preds = %.preheader213.loopexit, %bb.d
  %.0202.lcssa = phi <8 x float> [ zeroinitializer, %bb.d ], [ %i.dr, %.preheader213.loopexit ] ; 5 uses
  %.089.lcssa = phi i32 [ 0, %bb.d ], [ %i.cj, %.preheader213.loopexit ] ; 3 uses
  %.086.lcssa = phi ptr [ %0, %bb.d ], [ %i.ds, %.preheader213.loopexit ] ; 2 uses
  %i.ck = or disjoint i32 %.089.lcssa, 3
  %i.cl = icmp slt i32 %i.ck, %i.a
  br i1 %i.cl, label %.lr.ph244, label %.preheader212

.lr.ph237:                                        ; preds = %bb.d, %.lr.ph237
  %.086235 = phi ptr [ %i.ds, %.lr.ph237 ], [ %0, %bb.d ] ; 3 uses
  %.089234 = phi i32 [ %i.dt, %.lr.ph237 ], [ 0, %bb.d ]
  %.0202233 = phi <8 x float> [ %i.dr, %.lr.ph237 ], [ zeroinitializer, %bb.d ]
  %i.cm = load <8 x float>, ptr %.086235, align 1, !tbaa !54
  %i.cn = fsub fast <8 x float> %i.cm, %.2195
  %i.co = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cn, <8 x float> splat (float f0x42B0C0A5))
  %i.cp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.co, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cq = fmul fast <8 x float> %i.cp, splat (float f0x3FB8AA3B)
  %i.cr = fadd fast <8 x float> %i.cq, splat (float 5.000000e-01) ; 2 uses
  %i.cs = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cr, i32 1) ; 2 uses
  %i.ct = fcmp fast ogt <8 x float> %i.cs, %i.cr
  %i.cu = select <8 x i1> %i.ct, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cv = fsub fast <8 x float> %i.cs, %i.cu      ; 2 uses
  %i.cw = fmul fast <8 x float> %i.cv, splat (float f0x3F317218)
  %i.cx = fsub fast <8 x float> %i.cp, %i.cw      ; 8 uses
  %i.cy = fmul fast <8 x float> %i.cx, %i.cx
  %i.cz = fmul fast <8 x float> %i.cx, splat (float f0x39506967)
  %i.da = fadd fast <8 x float> %i.cz, splat (float f0x3AB743CE)
  %i.db = fmul fast <8 x float> %i.da, %i.cx
  %i.dc = fadd fast <8 x float> %i.db, splat (float f0x3C088908)
  %i.dd = fmul fast <8 x float> %i.dc, %i.cx
  %i.de = fadd fast <8 x float> %i.dd, splat (float f0x3D2AA9C1)
  %i.df = fmul fast <8 x float> %i.de, %i.cx
  %i.dg = fadd fast <8 x float> %i.df, splat (float f0x3E2AAAAA)
  %i.dh = fmul fast <8 x float> %i.dg, %i.cx
  %i.di = fadd fast <8 x float> %i.dh, splat (float 5.000000e-01)
  %i.dj = fmul fast <8 x float> %i.cy, %i.di
  %i.dk = fadd fast <8 x float> %i.cx, %i.dj
  %i.dl = fadd fast <8 x float> %i.dk, splat (float 1.000000e+00)
  %i.dm = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cv)
  %i.dn = shl <8 x i32> %i.dm, splat (i32 23)
  %i.do = add <8 x i32> %i.dn, splat (i32 1065353216)
  %i.dp = bitcast <8 x i32> %i.do to <8 x float>
  %i.dq = fmul fast <8 x float> %i.dl, %i.dp      ; 2 uses
  store <8 x float> %i.dq, ptr %.086235, align 1, !tbaa !54
  %i.dr = fadd fast <8 x float> %i.dq, %.0202233  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.086235, i64 32 ; 2 uses
  %i.dt = add nuw nsw i32 %.089234, 8             ; 2 uses
  %i.du = or disjoint i32 %i.dt, 7
  %i.dv = icmp slt i32 %i.du, %i.a
  br i1 %i.dv, label %.lr.ph237, label %.preheader213.loopexit, !llvm.loop !68

.preheader212:                                    ; preds = %.lr.ph244, %.preheader213
  %.0199.lcssa = phi <4 x float> [ zeroinitializer, %.preheader213 ], [ %i.gp, %.lr.ph244 ] ; 3 uses
  %.190.lcssa = phi i32 [ %.089.lcssa, %.preheader213 ], [ %i.gr, %.lr.ph244 ] ; 5 uses
  %.187.lcssa = phi ptr [ %.086.lcssa, %.preheader213 ], [ %i.gq, %.lr.ph244 ] ; 5 uses
  %i.dw = icmp slt i32 %.190.lcssa, %i.a
  br i1 %i.dw, label %iter.check362, label %._crit_edge252

iter.check362:                                    ; preds = %.preheader212
  %i.dx = xor i32 %.190.lcssa, -1
  %i.dy = add i32 %i.a, %i.dx                     ; 3 uses
  %i.dz = zext i32 %i.dy to i64
  %i.ea = add nuw nsw i64 %i.dz, 1                ; 5 uses
  %min.iters.check336 = icmp ult i32 %i.dy, 3
  br i1 %min.iters.check336, label %.lr.ph251.preheader, label %vector.main.loop.iter.check337

vector.main.loop.iter.check337:                   ; preds = %iter.check362
  %min.iters.check338 = icmp ult i32 %i.dy, 31
  br i1 %min.iters.check338, label %vec.epilog.ph366, label %vector.ph339

vector.ph339:                                     ; preds = %vector.main.loop.iter.check337
  %i.eb = and i64 %i.ea, 28
  %n.vec340 = and i64 %i.ea, 8589934560           ; 5 uses
  %i.ec = shl nuw nsw i64 %n.vec340, 2
  %i.ed = getelementptr i8, ptr %.187.lcssa, i64 %i.ec
  %i.ee = trunc i64 %n.vec340 to i32
  %i.ef = add i32 %.190.lcssa, %i.ee
  %broadcast.splatinsert341 = insertelement <8 x float> poison, float %.1206, i64 0
  %broadcast.splat342 = shufflevector <8 x float> %broadcast.splatinsert341, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body343

vector.body343:                                   ; preds = %vector.body343, %vector.ph339
  %index344 = phi i64 [ 0, %vector.ph339 ], [ %index.next354, %vector.body343 ] ; 2 uses
  %vec.phi345 = phi <8 x float> [ zeroinitializer, %vector.ph339 ], [ %i.es, %vector.body343 ]
  %vec.phi346 = phi <8 x float> [ zeroinitializer, %vector.ph339 ], [ %i.et, %vector.body343 ]
  %vec.phi347 = phi <8 x float> [ zeroinitializer, %vector.ph339 ], [ %i.eu, %vector.body343 ]
  %vec.phi348 = phi <8 x float> [ zeroinitializer, %vector.ph339 ], [ %i.ev, %vector.body343 ]
  %i.eg = shl i64 %index344, 2
  %next.gep349 = getelementptr i8, ptr %.187.lcssa, i64 %i.eg ; 5 uses
  %i.eh = getelementptr i8, ptr %next.gep349, i64 32 ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep349, i64 64 ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep349, i64 96 ; 2 uses
  %wide.load350 = load <8 x float>, ptr %next.gep349, align 4, !tbaa !59
  %wide.load351 = load <8 x float>, ptr %i.eh, align 4, !tbaa !59
  %wide.load352 = load <8 x float>, ptr %i.ei, align 4, !tbaa !59
  %wide.load353 = load <8 x float>, ptr %i.ej, align 4, !tbaa !59
  %i.ek = fsub fast <8 x float> %wide.load350, %broadcast.splat342
  %i.el = fsub fast <8 x float> %wide.load351, %broadcast.splat342
  %i.em = fsub fast <8 x float> %wide.load352, %broadcast.splat342
  %i.en = fsub fast <8 x float> %wide.load353, %broadcast.splat342
  %i.eo = tail call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.ek) ; 2 uses
  %i.ep = tail call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.el) ; 2 uses
  %i.eq = tail call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.em) ; 2 uses
  %i.er = tail call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.en) ; 2 uses
  store <8 x float> %i.eo, ptr %next.gep349, align 4, !tbaa !59
  store <8 x float> %i.ep, ptr %i.eh, align 4, !tbaa !59
  store <8 x float> %i.eq, ptr %i.ei, align 4, !tbaa !59
  store <8 x float> %i.er, ptr %i.ej, align 4, !tbaa !59
  %i.es = fadd fast <8 x float> %i.eo, %vec.phi345 ; 2 uses
  %i.et = fadd fast <8 x float> %i.ep, %vec.phi346 ; 2 uses
  %i.eu = fadd fast <8 x float> %i.eq, %vec.phi347 ; 2 uses
  %i.ev = fadd fast <8 x float> %i.er, %vec.phi348 ; 2 uses
  %index.next354 = add nuw i64 %index344, 32      ; 2 uses
  %i.ew = icmp eq i64 %index.next354, %n.vec340
  br i1 %i.ew, label %middle.block355, label %vector.body343, !llvm.loop !69

middle.block355:                                  ; preds = %vector.body343
  %bin.rdx = fadd fast <8 x float> %i.et, %i.es
  %bin.rdx356 = fadd fast <8 x float> %i.eu, %bin.rdx
  %bin.rdx357 = fadd fast <8 x float> %i.ev, %bin.rdx356
  %i.ex = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx357) ; 3 uses
  %cmp.n358 = icmp eq i64 %i.ea, %n.vec340
  br i1 %cmp.n358, label %._crit_edge252, label %vec.epilog.iter.check364

vec.epilog.iter.check364:                         ; preds = %middle.block355
  %min.epilog.iters.check365 = icmp eq i64 %i.eb, 0
  br i1 %min.epilog.iters.check365, label %.lr.ph251.preheader, label %vec.epilog.ph366, !prof !70

vec.epilog.ph366:                                 ; preds = %vector.main.loop.iter.check337, %vec.epilog.iter.check364
  %vec.epilog.resume.val359 = phi i64 [ %n.vec340, %vec.epilog.iter.check364 ], [ 0, %vector.main.loop.iter.check337 ]
  %bc.merge.rdx360 = phi float [ %i.ex, %vec.epilog.iter.check364 ], [ 0.000000e+00, %vector.main.loop.iter.check337 ]
  %n.vec367 = and i64 %i.ea, 8589934588           ; 4 uses
  %i.ey = shl nuw nsw i64 %n.vec367, 2
  %i.ez = getelementptr i8, ptr %.187.lcssa, i64 %i.ey
  %i.fa = trunc i64 %n.vec367 to i32
  %i.fb = add i32 %.190.lcssa, %i.fa
  %i.fc = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx360, i64 0
  %broadcast.splatinsert368 = insertelement <4 x float> poison, float %.1206, i64 0
  %broadcast.splat369 = shufflevector <4 x float> %broadcast.splatinsert368, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body370

vec.epilog.vector.body370:                        ; preds = %vec.epilog.vector.body370, %vec.epilog.ph366
  %index371 = phi i64 [ %vec.epilog.resume.val359, %vec.epilog.ph366 ], [ %index.next375, %vec.epilog.vector.body370 ] ; 2 uses
  %vec.phi372 = phi <4 x float> [ %i.fc, %vec.epilog.ph366 ], [ %i.fg, %vec.epilog.vector.body370 ]
  %i.fd = shl i64 %index371, 2
  %next.gep373 = getelementptr i8, ptr %.187.lcssa, i64 %i.fd ; 2 uses
  %wide.load374 = load <4 x float>, ptr %next.gep373, align 4, !tbaa !59
  %i.fe = fsub fast <4 x float> %wide.load374, %broadcast.splat369
  %i.ff = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.fe) ; 2 uses
  store <4 x float> %i.ff, ptr %next.gep373, align 4, !tbaa !59
  %i.fg = fadd fast <4 x float> %i.ff, %vec.phi372 ; 2 uses
  %index.next375 = add nuw i64 %index371, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next375, %n.vec367
  br i1 %i.fh, label %vec.epilog.middle.block376, label %vec.epilog.vector.body370, !llvm.loop !71

vec.epilog.middle.block376:                       ; preds = %vec.epilog.vector.body370
  %i.fi = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.fg) ; 2 uses
  %cmp.n377 = icmp eq i64 %i.ea, %n.vec367
  br i1 %cmp.n377, label %._crit_edge252, label %.lr.ph251.preheader

.lr.ph251.preheader:                              ; preds = %iter.check362, %vec.epilog.iter.check364, %vec.epilog.middle.block376
  %.084250.ph = phi float [ 0.000000e+00, %iter.check362 ], [ %i.ex, %vec.epilog.iter.check364 ], [ %i.fi, %vec.epilog.middle.block376 ]
  %.288249.ph = phi ptr [ %.187.lcssa, %iter.check362 ], [ %i.ed, %vec.epilog.iter.check364 ], [ %i.ez, %vec.epilog.middle.block376 ]
  %.291248.ph = phi i32 [ %.190.lcssa, %iter.check362 ], [ %i.ef, %vec.epilog.iter.check364 ], [ %i.fb, %vec.epilog.middle.block376 ]
  br label %.lr.ph251

.lr.ph244:                                        ; preds = %.preheader213, %.lr.ph244
  %.187243 = phi ptr [ %i.gq, %.lr.ph244 ], [ %.086.lcssa, %.preheader213 ] ; 3 uses
  %.190242 = phi i32 [ %i.gr, %.lr.ph244 ], [ %.089.lcssa, %.preheader213 ]
  %.0199241 = phi <4 x float> [ %i.gp, %.lr.ph244 ], [ zeroinitializer, %.preheader213 ]
  %i.fj = load <4 x float>, ptr %.187243, align 1, !tbaa !54
  %i.fk = fsub fast <4 x float> %i.fj, %.2198
  %i.fl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fk, <4 x float> splat (float f0x42B0C0A5))
  %i.fm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fn = fmul fast <4 x float> %i.fm, splat (float f0x3FB8AA3B)
  %i.fo = fadd fast <4 x float> %i.fn, splat (float 5.000000e-01) ; 2 uses
  %i.fp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fo)
  %i.fq = sitofp fast <4 x i32> %i.fp to <4 x float> ; 2 uses
  %i.fr = fcmp fast olt <4 x float> %i.fo, %i.fq
  %i.fs = select <4 x i1> %i.fr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ft = fsub fast <4 x float> %i.fq, %i.fs      ; 2 uses
  %i.fu = fmul fast <4 x float> %i.ft, splat (float f0x3F317218)
  %i.fv = fsub fast <4 x float> %i.fm, %i.fu      ; 8 uses
  %i.fw = fmul fast <4 x float> %i.fv, %i.fv
  %i.fx = fmul fast <4 x float> %i.fv, splat (float f0x39506967)
  %i.fy = fadd fast <4 x float> %i.fx, splat (float f0x3AB743CE)
  %i.fz = fmul fast <4 x float> %i.fy, %i.fv
  %i.ga = fadd fast <4 x float> %i.fz, splat (float f0x3C088908)
  %i.gb = fmul fast <4 x float> %i.ga, %i.fv
  %i.gc = fadd fast <4 x float> %i.gb, splat (float f0x3D2AA9C1)
  %i.gd = fmul fast <4 x float> %i.gc, %i.fv
  %i.ge = fadd fast <4 x float> %i.gd, splat (float f0x3E2AAAAA)
  %i.gf = fmul fast <4 x float> %i.ge, %i.fv
  %i.gg = fadd fast <4 x float> %i.gf, splat (float 5.000000e-01)
  %i.gh = fmul fast <4 x float> %i.fw, %i.gg
  %i.gi = fadd fast <4 x float> %i.fv, %i.gh
  %i.gj = fadd fast <4 x float> %i.gi, splat (float 1.000000e+00)
  %i.gk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ft)
  %i.gl = shl <4 x i32> %i.gk, splat (i32 23)
  %i.gm = add <4 x i32> %i.gl, splat (i32 1065353216)
  %i.gn = bitcast <4 x i32> %i.gm to <4 x float>
  %i.go = fmul fast <4 x float> %i.gj, %i.gn      ; 2 uses
  store <4 x float> %i.go, ptr %.187243, align 1, !tbaa !54
  %i.gp = fadd fast <4 x float> %i.go, %.0199241  ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.187243, i64 16 ; 2 uses
  %i.gr = add nuw nsw i32 %.190242, 4             ; 3 uses
  %i.gs = or disjoint i32 %i.gr, 3
  %i.gt = icmp slt i32 %i.gs, %i.a
  br i1 %i.gt, label %.lr.ph244, label %.preheader212, !llvm.loop !72

.lr.ph251:                                        ; preds = %.lr.ph251.preheader, %.lr.ph251
  %.084250 = phi float [ %i.gx, %.lr.ph251 ], [ %.084250.ph, %.lr.ph251.preheader ]
  %.288249 = phi ptr [ %i.gy, %.lr.ph251 ], [ %.288249.ph, %.lr.ph251.preheader ] ; 3 uses
  %.291248 = phi i32 [ %i.gz, %.lr.ph251 ], [ %.291248.ph, %.lr.ph251.preheader ]
  %i.gu = load float, ptr %.288249, align 4, !tbaa !59
  %i.gv = fsub fast float %i.gu, %.1206
  %i.gw = tail call fast float @llvm.exp.f32(float %i.gv) ; 2 uses
  store float %i.gw, ptr %.288249, align 4, !tbaa !59
  %i.gx = fadd fast float %i.gw, %.084250         ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.288249, i64 4
  %i.gz = add nuw nsw i32 %.291248, 1             ; 2 uses
  %exitcond285.not = icmp eq i32 %i.gz, %i.a
  br i1 %exitcond285.not, label %._crit_edge252, label %.lr.ph251, !llvm.loop !73

._crit_edge252:                                   ; preds = %.lr.ph251, %middle.block355, %vec.epilog.middle.block376, %.preheader212
  %.084.lcssa = phi float [ 0.000000e+00, %.preheader212 ], [ %i.fi, %vec.epilog.middle.block376 ], [ %i.ex, %middle.block355 ], [ %i.gx, %.lr.ph251 ] ; 2 uses
  %i.ha = icmp eq i32 %2, 8
  br i1 %i.ha, label %.thread209, label %bb.e

.thread209:                                       ; preds = %._crit_edge252
  %i.hb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %.0202.lcssa) ; 2 uses
  %i.hc = fmul fast <8 x float> %i.hb, %.0202.lcssa
  %i.hd = fsub fast <8 x float> splat (float 2.000000e+00), %i.hc
  %i.he = fmul fast <8 x float> %i.hd, %i.hb
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge252
  br i1 %i.bj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.hf = shufflevector <8 x float> %.0202.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hg = shufflevector <8 x float> %.0202.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hh = fadd fast <4 x float> %i.hg, %i.hf
  %i.hi = fadd fast <4 x float> %i.hh, %.0199.lcssa ; 2 uses
  %i.hj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.hi) ; 2 uses
  %i.hk = fmul fast <4 x float> %i.hj, %i.hi
  %i.hl = fsub fast <4 x float> splat (float 2.000000e+00), %i.hk
  %i.hm = fmul fast <4 x float> %i.hl, %i.hj      ; 2 uses
  %i.hn = shufflevector <4 x float> %i.hm, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.g

bb.g:                                             ; preds = %.thread209, %bb.f, %bb.e
  %.2204 = phi nsz <8 x float> [ %i.hn, %bb.f ], [ %.0202.lcssa, %bb.e ], [ %i.he, %.thread209 ] ; 3 uses
  %.1200 = phi nsz <4 x float> [ %i.hm, %bb.f ], [ %.0199.lcssa, %bb.e ], [ %.0199.lcssa, %.thread209 ] ; 3 uses
  br i1 %i.ci, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ho = shufflevector <8 x float> %.2204, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hp = shufflevector <8 x float> %.2204, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hq = fadd fast <4 x float> %i.ho, %i.hp      ; 2 uses
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> %.1200, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.hs = shufflevector <4 x float> %i.hq, <4 x float> %.1200, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.ht = fadd fast <4 x float> %i.hr, %i.hs
  %op.rdx = tail call fast float @llvm.vector.reduce.fadd.v4f32(float %.084.lcssa, <4 x float> %i.ht)
  %i.hu = fdiv fast float 1.000000e+00, %op.rdx   ; 2 uses
  %i.hv = insertelement <4 x float> poison, float %i.hu, i64 0 ; 2 uses
  %i.hw = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hx = shufflevector <4 x float> %i.hv, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3 = phi nsz <8 x float> [ %i.hx, %bb.h ], [ %.2204, %bb.g ] ; 5 uses
  %.2201 = phi nsz <4 x float> [ %i.hw, %bb.h ], [ %.1200, %bb.g ]
  %.185 = phi nsz float [ %i.hu, %bb.h ], [ %.084.lcssa, %bb.g ] ; 3 uses
  br i1 %i.b, label %.lr.ph257.preheader, label %.preheader211

.lr.ph257.preheader:                              ; preds = %bb.i
  %i.hy = add nsw i32 %i.a, -8                    ; 2 uses
  %i.hz = lshr i32 %i.hy, 3
  %i.ia = add nuw nsw i32 %i.hz, 1                ; 2 uses
  %xtraiter443 = and i32 %i.ia, 3                 ; 3 uses
  %i.ib = icmp ult i32 %i.hy, 24
  br i1 %i.ib, label %.lr.ph257.epil.preheader, label %.lr.ph257.preheader.new

.lr.ph257.preheader.new:                          ; preds = %.lr.ph257.preheader
  %unroll_iter448 = and i32 %i.ia, 1073741820
  br label %.lr.ph257

.preheader211.loopexit.unr-lcssa:                 ; preds = %.lr.ph257
  %lcmp.mod445.not = icmp eq i32 %xtraiter443, 0
  br i1 %lcmp.mod445.not, label %.preheader211.loopexit, label %.lr.ph257.epil.preheader

.lr.ph257.epil.preheader:                         ; preds = %.preheader211.loopexit.unr-lcssa, %.lr.ph257.preheader
  %.081254.epil.init = phi ptr [ %0, %.lr.ph257.preheader ], [ %i.it, %.preheader211.loopexit.unr-lcssa ]
  %lcmp.mod447 = icmp ne i32 %xtraiter443, 0
  tail call void @llvm.assume(i1 %lcmp.mod447)
  br label %.lr.ph257.epil

.lr.ph257.epil:                                   ; preds = %.lr.ph257.epil, %.lr.ph257.epil.preheader
  %.081254.epil = phi ptr [ %i.ie, %.lr.ph257.epil ], [ %.081254.epil.init, %.lr.ph257.epil.preheader ] ; 3 uses
  %epil.iter444 = phi i32 [ %epil.iter444.next, %.lr.ph257.epil ], [ 0, %.lr.ph257.epil.preheader ]
  %i.ic = load <8 x float>, ptr %.081254.epil, align 1, !tbaa !54
  %i.id = fmul fast <8 x float> %i.ic, %.3
  store <8 x float> %i.id, ptr %.081254.epil, align 1, !tbaa !54
  %i.ie = getelementptr inbounds nuw i8, ptr %.081254.epil, i64 32 ; 2 uses
  %epil.iter444.next = add i32 %epil.iter444, 1   ; 2 uses
  %epil.iter444.cmp.not = icmp eq i32 %epil.iter444.next, %xtraiter443
  br i1 %epil.iter444.cmp.not, label %.preheader211.loopexit, label %.lr.ph257.epil, !llvm.loop !74

.preheader211.loopexit:                           ; preds = %.lr.ph257.epil, %.preheader211.loopexit.unr-lcssa
  %.lcssa418 = phi ptr [ %i.it, %.preheader211.loopexit.unr-lcssa ], [ %i.ie, %.lr.ph257.epil ]
  %i.if = and i32 %i.a, 2147483640
  br label %.preheader211

.preheader211:                                    ; preds = %.preheader211.loopexit, %bb.i
  %.081.lcssa = phi ptr [ %0, %bb.i ], [ %.lcssa418, %.preheader211.loopexit ] ; 2 uses
  %.078.lcssa = phi i32 [ 0, %bb.i ], [ %i.if, %.preheader211.loopexit ] ; 3 uses
  %i.ig = or disjoint i32 %.078.lcssa, 3
  %i.ih = icmp slt i32 %i.ig, %i.a
  br i1 %i.ih, label %.lr.ph262, label %.preheader

.lr.ph257:                                        ; preds = %.lr.ph257, %.lr.ph257.preheader.new
  %.081254 = phi ptr [ %0, %.lr.ph257.preheader.new ], [ %i.it, %.lr.ph257 ] ; 6 uses
  %niter449 = phi i32 [ 0, %.lr.ph257.preheader.new ], [ %niter449.next.3, %.lr.ph257 ]
  %i.ii = load <8 x float>, ptr %.081254, align 1, !tbaa !54
  %i.ij = fmul fast <8 x float> %i.ii, %.3
  store <8 x float> %i.ij, ptr %.081254, align 1, !tbaa !54
  %i.ik = getelementptr inbounds nuw i8, ptr %.081254, i64 32 ; 2 uses
  %i.il = load <8 x float>, ptr %i.ik, align 1, !tbaa !54
  %i.im = fmul fast <8 x float> %i.il, %.3
  store <8 x float> %i.im, ptr %i.ik, align 1, !tbaa !54
  %i.in = getelementptr inbounds nuw i8, ptr %.081254, i64 64 ; 2 uses
  %i.io = load <8 x float>, ptr %i.in, align 1, !tbaa !54
  %i.ip = fmul fast <8 x float> %i.io, %.3
  store <8 x float> %i.ip, ptr %i.in, align 1, !tbaa !54
  %i.iq = getelementptr inbounds nuw i8, ptr %.081254, i64 96 ; 2 uses
  %i.ir = load <8 x float>, ptr %i.iq, align 1, !tbaa !54
  %i.is = fmul fast <8 x float> %i.ir, %.3
  store <8 x float> %i.is, ptr %i.iq, align 1, !tbaa !54
  %i.it = getelementptr inbounds nuw i8, ptr %.081254, i64 128 ; 3 uses
  %niter449.next.3 = add i32 %niter449, 4         ; 2 uses
  %niter449.ncmp.3.not = icmp eq i32 %niter449.next.3, %unroll_iter448
  br i1 %niter449.ncmp.3.not, label %.preheader211.loopexit.unr-lcssa, label %.lr.ph257, !llvm.loop !75

.preheader:                                       ; preds = %.lr.ph262, %.preheader211
  %.182.lcssa = phi ptr [ %.081.lcssa, %.preheader211 ], [ %i.jw, %.lr.ph262 ] ; 5 uses
  %.179.lcssa = phi i32 [ %.078.lcssa, %.preheader211 ], [ %i.jx, %.lr.ph262 ] ; 5 uses
  %i.iu = icmp slt i32 %.179.lcssa, %i.a
  br i1 %i.iu, label %iter.check400, label %._crit_edge268

iter.check400:                                    ; preds = %.preheader
  %i.iv = xor i32 %.179.lcssa, -1
  %i.iw = add i32 %i.a, %i.iv                     ; 3 uses
  %i.ix = zext i32 %i.iw to i64
  %i.iy = add nuw nsw i64 %i.ix, 1                ; 5 uses
  %min.iters.check381 = icmp ult i32 %i.iw, 7
  br i1 %min.iters.check381, label %.lr.ph267.preheader, label %vector.main.loop.iter.check382

vector.main.loop.iter.check382:                   ; preds = %iter.check400
  %min.iters.check383 = icmp ult i32 %i.iw, 31
  br i1 %min.iters.check383, label %vec.epilog.ph404, label %vector.ph384

vector.ph384:                                     ; preds = %vector.main.loop.iter.check382
  %i.iz = and i64 %i.iy, 24
  %n.vec385 = and i64 %i.iy, 8589934560           ; 5 uses
  %i.ja = trunc i64 %n.vec385 to i32
  %i.jb = add i32 %.179.lcssa, %i.ja
  %i.jc = shl nuw nsw i64 %n.vec385, 2
  %i.jd = getelementptr i8, ptr %.182.lcssa, i64 %i.jc
  %broadcast.splatinsert386 = insertelement <8 x float> poison, float %.185, i64 0
  %broadcast.splat387 = shufflevector <8 x float> %broadcast.splatinsert386, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body388

vector.body388:                                   ; preds = %vector.body388, %vector.ph384
  %index389 = phi i64 [ 0, %vector.ph384 ], [ %index.next395, %vector.body388 ] ; 2 uses
  %i.je = shl i64 %index389, 2
  %next.gep390 = getelementptr i8, ptr %.182.lcssa, i64 %i.je ; 5 uses
  %i.jf = getelementptr i8, ptr %next.gep390, i64 32 ; 2 uses
  %i.jg = getelementptr i8, ptr %next.gep390, i64 64 ; 2 uses
  %i.jh = getelementptr i8, ptr %next.gep390, i64 96 ; 2 uses
  %wide.load391 = load <8 x float>, ptr %next.gep390, align 4, !tbaa !59
  %wide.load392 = load <8 x float>, ptr %i.jf, align 4, !tbaa !59
  %wide.load393 = load <8 x float>, ptr %i.jg, align 4, !tbaa !59
  %wide.load394 = load <8 x float>, ptr %i.jh, align 4, !tbaa !59
  %i.ji = fmul fast <8 x float> %wide.load391, %broadcast.splat387
  %i.jj = fmul fast <8 x float> %wide.load392, %broadcast.splat387
  %i.jk = fmul fast <8 x float> %wide.load393, %broadcast.splat387
  %i.jl = fmul fast <8 x float> %wide.load394, %broadcast.splat387
  store <8 x float> %i.ji, ptr %next.gep390, align 4, !tbaa !59
  store <8 x float> %i.jj, ptr %i.jf, align 4, !tbaa !59
  store <8 x float> %i.jk, ptr %i.jg, align 4, !tbaa !59
  store <8 x float> %i.jl, ptr %i.jh, align 4, !tbaa !59
  %index.next395 = add nuw i64 %index389, 32      ; 2 uses
  %i.jm = icmp eq i64 %index.next395, %n.vec385
  br i1 %i.jm, label %middle.block396, label %vector.body388, !llvm.loop !76

middle.block396:                                  ; preds = %vector.body388
end_hunk_0
begin_hunk_1_@_ZN4ncnnL7softmaxEPfiimiS0_S0_:bb.a
  %i.bu = icmp slt i32 %.0259.lcssa.i, %4
  br i1 %i.bu, label %.lr.ph619.i.preheader, label %._crit_edge.i

.lr.ph619.i.preheader:                            ; preds = %.preheader610.i
  %.neg638 = or disjoint i32 %.0259.lcssa.i, 1
  br i1 %lcmp.mod625.not, label %.lr.ph619.i.prol.loopexit, label %.lr.ph619.i.prol

.lr.ph619.i.prol:                                 ; preds = %.lr.ph619.i.preheader
  %i.bv = load <8 x float>, ptr %.0256.lcssa.i, align 1, !tbaa !54 ; 2 uses
  %i.bw = shufflevector <8 x float> %i.bv, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bx = shufflevector <8 x float> %i.bv, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.by = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bw, <4 x float> nofpclass(nan inf) %i.bx) ; 2 uses
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ca = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.by, <4 x float> nofpclass(nan inf) %i.bz) ; 2 uses
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ca, <4 x float> nofpclass(nan inf) %i.cb)
  %i.cd = extractelement <4 x float> %i.cc, i64 0 ; 2 uses
  %i.ce = load float, ptr %.0257.lcssa.i, align 4, !tbaa !59 ; 2 uses
  %i.cf = fcmp fast olt float %i.ce, %i.cd
  %.sroa.speculated.i.prol = select i1 %i.cf, float %i.cd, float %i.ce
  store float %.sroa.speculated.i.prol, ptr %.0257.lcssa.i, align 4, !tbaa !59
  %i.cg = getelementptr inbounds nuw i8, ptr %.0256.lcssa.i, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %.0257.lcssa.i, i64 4
  %i.ci = or disjoint i32 %.0259.lcssa.i, 1
  br label %.lr.ph619.i.prol.loopexit

.lr.ph619.i.prol.loopexit:                        ; preds = %.lr.ph619.i.prol, %.lr.ph619.i.preheader
  %.1618.i.unr = phi ptr [ %.0256.lcssa.i, %.lr.ph619.i.preheader ], [ %i.cg, %.lr.ph619.i.prol ]
  %.1258617.i.unr = phi ptr [ %.0257.lcssa.i, %.lr.ph619.i.preheader ], [ %i.ch, %.lr.ph619.i.prol ]
  %.1260616.i.unr = phi i32 [ %.0259.lcssa.i, %.lr.ph619.i.preheader ], [ %i.ci, %.lr.ph619.i.prol ]
  %i.cj = icmp eq i32 %4, %.neg638
  br i1 %i.cj, label %._crit_edge.i, label %.lr.ph619.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0256613.i = phi ptr [ %i.dw, %.lr.ph.i ], [ %i.bt, %bb.c ] ; 9 uses
  %.0257612.i = phi ptr [ %i.dx, %.lr.ph.i ], [ %5, %bb.c ] ; 3 uses
  %.0259611.i = phi i32 [ %i.dy, %.lr.ph.i ], [ 0, %bb.c ]
  %i.ck = load <8 x float>, ptr %.0256613.i, align 1, !tbaa !54 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0256613.i, i64 32
  %i.cm = load <8 x float>, ptr %i.cl, align 1, !tbaa !54 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0256613.i, i64 64
  %i.co = load <8 x float>, ptr %i.cn, align 1, !tbaa !54 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0256613.i, i64 96
  %i.cq = load <8 x float>, ptr %i.cp, align 1, !tbaa !54 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0256613.i, i64 128
  %i.cs = load <8 x float>, ptr %i.cr, align 1, !tbaa !54 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0256613.i, i64 160
  %i.cu = load <8 x float>, ptr %i.ct, align 1, !tbaa !54 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0256613.i, i64 192
  %i.cw = load <8 x float>, ptr %i.cv, align 1, !tbaa !54 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0256613.i, i64 224
  %i.cy = load <8 x float>, ptr %i.cx, align 1, !tbaa !54 ; 2 uses
  %i.cz = shufflevector <8 x float> %i.ck, <8 x float> %i.cs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.da = shufflevector <8 x float> %i.ck, <8 x float> %i.cs, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.db = shufflevector <8 x float> %i.co, <8 x float> %i.cw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.dc = shufflevector <8 x float> %i.co, <8 x float> %i.cw, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.dd = shufflevector <8 x float> %i.cm, <8 x float> %i.cu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.de = shufflevector <8 x float> %i.cm, <8 x float> %i.cu, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.df = shufflevector <8 x float> %i.cq, <8 x float> %i.cy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.dg = shufflevector <8 x float> %i.cq, <8 x float> %i.cy, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.dh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cz, <8 x float> nofpclass(nan inf) %i.da) ; 2 uses
  %i.di = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.db, <8 x float> nofpclass(nan inf) %i.dc) ; 2 uses
  %i.dj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dd, <8 x float> nofpclass(nan inf) %i.de) ; 2 uses
  %i.dk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.df, <8 x float> nofpclass(nan inf) %i.dg) ; 2 uses
  %i.dl = shufflevector <8 x float> %i.dh, <8 x float> %i.di, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.dm = shufflevector <8 x float> %i.dh, <8 x float> %i.di, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.dn = shufflevector <8 x float> %i.dj, <8 x float> %i.dk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.do = shufflevector <8 x float> %i.dj, <8 x float> %i.dk, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.dp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dl, <8 x float> nofpclass(nan inf) %i.dm) ; 2 uses
  %i.dq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dn, <8 x float> nofpclass(nan inf) %i.do) ; 2 uses
  %i.dr = shufflevector <8 x float> %i.dp, <8 x float> %i.dq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ds = shufflevector <8 x float> %i.dp, <8 x float> %i.dq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dr, <8 x float> nofpclass(nan inf) %i.ds)
  %i.du = load <8 x float>, ptr %.0257612.i, align 1, !tbaa !54
  %i.dv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.du, <8 x float> nofpclass(nan inf) %i.dt)
  store <8 x float> %i.dv, ptr %.0257612.i, align 1, !tbaa !54
  %i.dw = getelementptr inbounds nuw i8, ptr %.0256613.i, i64 256 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0257612.i, i64 32 ; 2 uses
  %i.dy = add nuw nsw i32 %.0259611.i, 8          ; 2 uses
  %i.dz = or disjoint i32 %i.dy, 7
  %i.ea = icmp slt i32 %i.dz, %4
  br i1 %i.ea, label %.lr.ph.i, label %.preheader610.i, !llvm.loop !89

.lr.ph619.i:                                      ; preds = %.lr.ph619.i.prol.loopexit, %.lr.ph619.i
  %.1618.i = phi ptr [ %i.ez, %.lr.ph619.i ], [ %.1618.i.unr, %.lr.ph619.i.prol.loopexit ] ; 3 uses
  %.1258617.i = phi ptr [ %i.fa, %.lr.ph619.i ], [ %.1258617.i.unr, %.lr.ph619.i.prol.loopexit ] ; 4 uses
  %.1260616.i = phi i32 [ %i.fb, %.lr.ph619.i ], [ %.1260616.i.unr, %.lr.ph619.i.prol.loopexit ]
  %i.eb = load <8 x float>, ptr %.1618.i, align 1, !tbaa !54 ; 2 uses
  %i.ec = shufflevector <8 x float> %i.eb, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ed = shufflevector <8 x float> %i.eb, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ee = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ec, <4 x float> nofpclass(nan inf) %i.ed) ; 2 uses
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.eg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ee, <4 x float> nofpclass(nan inf) %i.ef) ; 2 uses
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ei = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.eg, <4 x float> nofpclass(nan inf) %i.eh)
  %i.ej = extractelement <4 x float> %i.ei, i64 0 ; 2 uses
  %i.ek = load float, ptr %.1258617.i, align 4, !tbaa !59 ; 2 uses
  %i.el = fcmp fast olt float %i.ek, %i.ej
  %.sroa.speculated.i = select i1 %i.el, float %i.ej, float %i.ek
  store float %.sroa.speculated.i, ptr %.1258617.i, align 4, !tbaa !59
  %i.em = getelementptr inbounds nuw i8, ptr %.1618.i, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %.1258617.i, i64 4 ; 2 uses
  %i.eo = load <8 x float>, ptr %i.em, align 1, !tbaa !54 ; 2 uses
  %i.ep = shufflevector <8 x float> %i.eo, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eq = shufflevector <8 x float> %i.eo, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.er = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ep, <4 x float> nofpclass(nan inf) %i.eq) ; 2 uses
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.et = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.er, <4 x float> nofpclass(nan inf) %i.es) ; 2 uses
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ev = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.et, <4 x float> nofpclass(nan inf) %i.eu)
  %i.ew = extractelement <4 x float> %i.ev, i64 0 ; 2 uses
  %i.ex = load float, ptr %i.en, align 4, !tbaa !59 ; 2 uses
  %i.ey = fcmp fast olt float %i.ex, %i.ew
  %.sroa.speculated.i.1 = select i1 %i.ey, float %i.ew, float %i.ex
  store float %.sroa.speculated.i.1, ptr %i.en, align 4, !tbaa !59
  %i.ez = getelementptr inbounds nuw i8, ptr %.1618.i, i64 64
  %i.fa = getelementptr inbounds nuw i8, ptr %.1258617.i, i64 8
  %i.fb = add nuw nsw i32 %.1260616.i, 2          ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.fb, %4
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph619.i, !llvm.loop !90

._crit_edge.i:                                    ; preds = %.lr.ph619.i.prol.loopexit, %.lr.ph619.i, %.preheader610.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond684.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond684.not.i, label %.preheader609.i, label %bb.c, !llvm.loop !91

.preheader607.i:                                  ; preds = %._crit_edge638.i, %bb.b
  br i1 %i.a, label %.lr.ph643.i.preheader, label %.preheader606.i

.lr.ph643.i.preheader:                            ; preds = %.preheader607.i
  %i.fc = add nsw i32 %4, -8                      ; 2 uses
  %i.fd = lshr i32 %i.fc, 3                       ; 2 uses
  %i.fe = add nuw nsw i32 %i.fd, 1                ; 2 uses
  %i.ff = icmp eq i32 %i.fd, 0
  br i1 %i.ff, label %.lr.ph643.i.epil.preheader, label %.lr.ph643.i.preheader.new

.lr.ph643.i.preheader.new:                        ; preds = %.lr.ph643.i.preheader
  %unroll_iter632 = and i32 %i.fe, 1073741822
  br label %.lr.ph643.i

.preheader609.i:                                  ; preds = %._crit_edge.i, %._crit_edge638.i
  %indvars.iv686.i = phi i64 [ %indvars.iv.next687.i, %._crit_edge638.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.fg = mul i64 %indvars.iv686.i, %3
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fg ; 2 uses
  br i1 %i.a, label %.lr.ph628.i, label %.preheader608.i

.preheader608.i:                                  ; preds = %.lr.ph628.i, %.preheader609.i
  %.0280.lcssa.i = phi i32 [ 0, %.preheader609.i ], [ %i.br, %.lr.ph628.i ] ; 2 uses
  %.0278.lcssa.i = phi ptr [ %6, %.preheader609.i ], [ %i.ri, %.lr.ph628.i ]
  %.0276.lcssa.i = phi ptr [ %5, %.preheader609.i ], [ %i.rh, %.lr.ph628.i ]
  %.0262.lcssa.i = phi ptr [ %i.fh, %.preheader609.i ], [ %i.rg, %.lr.ph628.i ]
  %i.fi = icmp slt i32 %.0280.lcssa.i, %4
  br i1 %i.fi, label %.lr.ph637.i, label %._crit_edge638.i

.lr.ph628.i:                                      ; preds = %.preheader609.i, %.lr.ph628.i
  %.0262626.i = phi ptr [ %i.rg, %.lr.ph628.i ], [ %i.fh, %.preheader609.i ] ; 10 uses
  %.0276625.i = phi ptr [ %i.rh, %.lr.ph628.i ], [ %5, %.preheader609.i ] ; 9 uses
  %.0278624.i = phi ptr [ %i.ri, %.lr.ph628.i ], [ %6, %.preheader609.i ] ; 3 uses
  %.0280623.i = phi i32 [ %i.rj, %.lr.ph628.i ], [ 0, %.preheader609.i ]
  %i.fj = load <8 x float>, ptr %.0262626.i, align 1, !tbaa !54
  %i.fk = getelementptr inbounds nuw i8, ptr %.0262626.i, i64 32 ; 2 uses
  %i.fl = load <8 x float>, ptr %i.fk, align 1, !tbaa !54
  %i.fm = getelementptr inbounds nuw i8, ptr %.0262626.i, i64 64 ; 2 uses
  %i.fn = load <8 x float>, ptr %i.fm, align 1, !tbaa !54
  %i.fo = getelementptr inbounds nuw i8, ptr %.0262626.i, i64 96 ; 2 uses
  %i.fp = load <8 x float>, ptr %i.fo, align 1, !tbaa !54
  %i.fq = getelementptr inbounds nuw i8, ptr %.0262626.i, i64 128 ; 2 uses
  %i.fr = load <8 x float>, ptr %i.fq, align 1, !tbaa !54
  %i.fs = getelementptr inbounds nuw i8, ptr %.0262626.i, i64 160 ; 2 uses
  %i.ft = load <8 x float>, ptr %i.fs, align 1, !tbaa !54
  %i.fu = getelementptr inbounds nuw i8, ptr %.0262626.i, i64 192 ; 2 uses
  %i.fv = load <8 x float>, ptr %i.fu, align 1, !tbaa !54
  %i.fw = getelementptr inbounds nuw i8, ptr %.0262626.i, i64 224 ; 2 uses
  %i.fx = load <8 x float>, ptr %i.fw, align 1, !tbaa !54
  %i.fy = load float, ptr %.0276625.i, align 4, !tbaa !59
  %i.fz = insertelement <8 x float> poison, float %i.fy, i64 0
  %i.ga = shufflevector <8 x float> %i.fz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gb = fsub fast <8 x float> %i.fj, %i.ga
  %i.gc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gb, <8 x float> splat (float f0x42B0C0A5))
  %i.gd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gc, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ge = fmul fast <8 x float> %i.gd, splat (float f0x3FB8AA3B)
  %i.gf = fadd fast <8 x float> %i.ge, splat (float 5.000000e-01) ; 2 uses
  %i.gg = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gf, i32 1) ; 2 uses
  %i.gh = fcmp fast ogt <8 x float> %i.gg, %i.gf
  %i.gi = select <8 x i1> %i.gh, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.gj = fsub fast <8 x float> %i.gg, %i.gi      ; 2 uses
  %i.gk = fmul fast <8 x float> %i.gj, splat (float f0x3F317218)
  %i.gl = fsub fast <8 x float> %i.gd, %i.gk      ; 8 uses
  %i.gm = fmul fast <8 x float> %i.gl, %i.gl
  %i.gn = fmul fast <8 x float> %i.gl, splat (float f0x39506967)
  %i.go = fadd fast <8 x float> %i.gn, splat (float f0x3AB743CE)
  %i.gp = fmul fast <8 x float> %i.go, %i.gl
  %i.gq = fadd fast <8 x float> %i.gp, splat (float f0x3C088908)
  %i.gr = fmul fast <8 x float> %i.gq, %i.gl
  %i.gs = fadd fast <8 x float> %i.gr, splat (float f0x3D2AA9C1)
  %i.gt = fmul fast <8 x float> %i.gs, %i.gl
  %i.gu = fadd fast <8 x float> %i.gt, splat (float f0x3E2AAAAA)
  %i.gv = fmul fast <8 x float> %i.gu, %i.gl
  %i.gw = fadd fast <8 x float> %i.gv, splat (float 5.000000e-01)
  %i.gx = fmul fast <8 x float> %i.gm, %i.gw
  %i.gy = fadd fast <8 x float> %i.gl, %i.gx
  %i.gz = fadd fast <8 x float> %i.gy, splat (float 1.000000e+00)
  %i.ha = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gj)
  %i.hb = shl <8 x i32> %i.ha, splat (i32 23)
  %i.hc = add <8 x i32> %i.hb, splat (i32 1065353216)
  %i.hd = bitcast <8 x i32> %i.hc to <8 x float>
  %i.he = fmul fast <8 x float> %i.gz, %i.hd      ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0276625.i, i64 4
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !59
  %i.hh = insertelement <8 x float> poison, float %i.hg, i64 0
  %i.hi = shufflevector <8 x float> %i.hh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hj = fsub fast <8 x float> %i.fl, %i.hi
  %i.hk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hj, <8 x float> splat (float f0x42B0C0A5))
  %i.hl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hk, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hm = fmul fast <8 x float> %i.hl, splat (float f0x3FB8AA3B)
  %i.hn = fadd fast <8 x float> %i.hm, splat (float 5.000000e-01) ; 2 uses
  %i.ho = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hn, i32 1) ; 2 uses
  %i.hp = fcmp fast ogt <8 x float> %i.ho, %i.hn
  %i.hq = select <8 x i1> %i.hp, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.hr = fsub fast <8 x float> %i.ho, %i.hq      ; 2 uses
  %i.hs = fmul fast <8 x float> %i.hr, splat (float f0x3F317218)
  %i.ht = fsub fast <8 x float> %i.hl, %i.hs      ; 8 uses
  %i.hu = fmul fast <8 x float> %i.ht, %i.ht
  %i.hv = fmul fast <8 x float> %i.ht, splat (float f0x39506967)
  %i.hw = fadd fast <8 x float> %i.hv, splat (float f0x3AB743CE)
  %i.hx = fmul fast <8 x float> %i.hw, %i.ht
  %i.hy = fadd fast <8 x float> %i.hx, splat (float f0x3C088908)
  %i.hz = fmul fast <8 x float> %i.hy, %i.ht
  %i.ia = fadd fast <8 x float> %i.hz, splat (float f0x3D2AA9C1)
  %i.ib = fmul fast <8 x float> %i.ia, %i.ht
  %i.ic = fadd fast <8 x float> %i.ib, splat (float f0x3E2AAAAA)
  %i.id = fmul fast <8 x float> %i.ic, %i.ht
  %i.ie = fadd fast <8 x float> %i.id, splat (float 5.000000e-01)
  %i.if = fmul fast <8 x float> %i.hu, %i.ie
  %i.ig = fadd fast <8 x float> %i.ht, %i.if
  %i.ih = fadd fast <8 x float> %i.ig, splat (float 1.000000e+00)
  %i.ii = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hr)
  %i.ij = shl <8 x i32> %i.ii, splat (i32 23)
  %i.ik = add <8 x i32> %i.ij, splat (i32 1065353216)
  %i.il = bitcast <8 x i32> %i.ik to <8 x float>
  %i.im = fmul fast <8 x float> %i.ih, %i.il      ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.0276625.i, i64 8
  %i.io = load float, ptr %i.in, align 4, !tbaa !59
  %i.ip = insertelement <8 x float> poison, float %i.io, i64 0
  %i.iq = shufflevector <8 x float> %i.ip, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ir = fsub fast <8 x float> %i.fn, %i.iq
  %i.is = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ir, <8 x float> splat (float f0x42B0C0A5))
  %i.it = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.is, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.iu = fmul fast <8 x float> %i.it, splat (float f0x3FB8AA3B)
  %i.iv = fadd fast <8 x float> %i.iu, splat (float 5.000000e-01) ; 2 uses
  %i.iw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.iv, i32 1) ; 2 uses
  %i.ix = fcmp fast ogt <8 x float> %i.iw, %i.iv
  %i.iy = select <8 x i1> %i.ix, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.iz = fsub fast <8 x float> %i.iw, %i.iy      ; 2 uses
  %i.ja = fmul fast <8 x float> %i.iz, splat (float f0x3F317218)
  %i.jb = fsub fast <8 x float> %i.it, %i.ja      ; 8 uses
  %i.jc = fmul fast <8 x float> %i.jb, %i.jb
  %i.jd = fmul fast <8 x float> %i.jb, splat (float f0x39506967)
  %i.je = fadd fast <8 x float> %i.jd, splat (float f0x3AB743CE)
  %i.jf = fmul fast <8 x float> %i.je, %i.jb
  %i.jg = fadd fast <8 x float> %i.jf, splat (float f0x3C088908)
  %i.jh = fmul fast <8 x float> %i.jg, %i.jb
  %i.ji = fadd fast <8 x float> %i.jh, splat (float f0x3D2AA9C1)
  %i.jj = fmul fast <8 x float> %i.ji, %i.jb
  %i.jk = fadd fast <8 x float> %i.jj, splat (float f0x3E2AAAAA)
  %i.jl = fmul fast <8 x float> %i.jk, %i.jb
  %i.jm = fadd fast <8 x float> %i.jl, splat (float 5.000000e-01)
  %i.jn = fmul fast <8 x float> %i.jc, %i.jm
  %i.jo = fadd fast <8 x float> %i.jb, %i.jn
  %i.jp = fadd fast <8 x float> %i.jo, splat (float 1.000000e+00)
  %i.jq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.iz)
  %i.jr = shl <8 x i32> %i.jq, splat (i32 23)
  %i.js = add <8 x i32> %i.jr, splat (i32 1065353216)
  %i.jt = bitcast <8 x i32> %i.js to <8 x float>
  %i.ju = fmul fast <8 x float> %i.jp, %i.jt      ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.0276625.i, i64 12
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !59
  %i.jx = insertelement <8 x float> poison, float %i.jw, i64 0
  %i.jy = shufflevector <8 x float> %i.jx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jz = fsub fast <8 x float> %i.fp, %i.jy
  %i.ka = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.jz, <8 x float> splat (float f0x42B0C0A5))
  %i.kb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ka, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kc = fmul fast <8 x float> %i.kb, splat (float f0x3FB8AA3B)
  %i.kd = fadd fast <8 x float> %i.kc, splat (float 5.000000e-01) ; 2 uses
  %i.ke = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.kd, i32 1) ; 2 uses
  %i.kf = fcmp fast ogt <8 x float> %i.ke, %i.kd
  %i.kg = select <8 x i1> %i.kf, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.kh = fsub fast <8 x float> %i.ke, %i.kg      ; 2 uses
  %i.ki = fmul fast <8 x float> %i.kh, splat (float f0x3F317218)
  %i.kj = fsub fast <8 x float> %i.kb, %i.ki      ; 8 uses
  %i.kk = fmul fast <8 x float> %i.kj, %i.kj
  %i.kl = fmul fast <8 x float> %i.kj, splat (float f0x39506967)
  %i.km = fadd fast <8 x float> %i.kl, splat (float f0x3AB743CE)
  %i.kn = fmul fast <8 x float> %i.km, %i.kj
  %i.ko = fadd fast <8 x float> %i.kn, splat (float f0x3C088908)
  %i.kp = fmul fast <8 x float> %i.ko, %i.kj
  %i.kq = fadd fast <8 x float> %i.kp, splat (float f0x3D2AA9C1)
  %i.kr = fmul fast <8 x float> %i.kq, %i.kj
  %i.ks = fadd fast <8 x float> %i.kr, splat (float f0x3E2AAAAA)
  %i.kt = fmul fast <8 x float> %i.ks, %i.kj
  %i.ku = fadd fast <8 x float> %i.kt, splat (float 5.000000e-01)
  %i.kv = fmul fast <8 x float> %i.kk, %i.ku
  %i.kw = fadd fast <8 x float> %i.kj, %i.kv
  %i.kx = fadd fast <8 x float> %i.kw, splat (float 1.000000e+00)
  %i.ky = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kh)
  %i.kz = shl <8 x i32> %i.ky, splat (i32 23)
  %i.la = add <8 x i32> %i.kz, splat (i32 1065353216)
  %i.lb = bitcast <8 x i32> %i.la to <8 x float>
  %i.lc = fmul fast <8 x float> %i.kx, %i.lb      ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.0276625.i, i64 16
  %i.le = load float, ptr %i.ld, align 4, !tbaa !59
  %i.lf = insertelement <8 x float> poison, float %i.le, i64 0
  %i.lg = shufflevector <8 x float> %i.lf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lh = fsub fast <8 x float> %i.fr, %i.lg
  %i.li = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.lh, <8 x float> splat (float f0x42B0C0A5))
  %i.lj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.li, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lk = fmul fast <8 x float> %i.lj, splat (float f0x3FB8AA3B)
  %i.ll = fadd fast <8 x float> %i.lk, splat (float 5.000000e-01) ; 2 uses
  %i.lm = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ll, i32 1) ; 2 uses
  %i.ln = fcmp fast ogt <8 x float> %i.lm, %i.ll
  %i.lo = select <8 x i1> %i.ln, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.lp = fsub fast <8 x float> %i.lm, %i.lo      ; 2 uses
  %i.lq = fmul fast <8 x float> %i.lp, splat (float f0x3F317218)
  %i.lr = fsub fast <8 x float> %i.lj, %i.lq      ; 8 uses
  %i.ls = fmul fast <8 x float> %i.lr, %i.lr
  %i.lt = fmul fast <8 x float> %i.lr, splat (float f0x39506967)
  %i.lu = fadd fast <8 x float> %i.lt, splat (float f0x3AB743CE)
  %i.lv = fmul fast <8 x float> %i.lu, %i.lr
  %i.lw = fadd fast <8 x float> %i.lv, splat (float f0x3C088908)
  %i.lx = fmul fast <8 x float> %i.lw, %i.lr
  %i.ly = fadd fast <8 x float> %i.lx, splat (float f0x3D2AA9C1)
  %i.lz = fmul fast <8 x float> %i.ly, %i.lr
  %i.ma = fadd fast <8 x float> %i.lz, splat (float f0x3E2AAAAA)
  %i.mb = fmul fast <8 x float> %i.ma, %i.lr
  %i.mc = fadd fast <8 x float> %i.mb, splat (float 5.000000e-01)
  %i.md = fmul fast <8 x float> %i.ls, %i.mc
  %i.me = fadd fast <8 x float> %i.lr, %i.md
  %i.mf = fadd fast <8 x float> %i.me, splat (float 1.000000e+00)
  %i.mg = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lp)
  %i.mh = shl <8 x i32> %i.mg, splat (i32 23)
  %i.mi = add <8 x i32> %i.mh, splat (i32 1065353216)
  %i.mj = bitcast <8 x i32> %i.mi to <8 x float>
  %i.mk = fmul fast <8 x float> %i.mf, %i.mj      ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.0276625.i, i64 20
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !59
  %i.mn = insertelement <8 x float> poison, float %i.mm, i64 0
  %i.mo = shufflevector <8 x float> %i.mn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mp = fsub fast <8 x float> %i.ft, %i.mo
  %i.mq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.mp, <8 x float> splat (float f0x42B0C0A5))
  %i.mr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.mq, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ms = fmul fast <8 x float> %i.mr, splat (float f0x3FB8AA3B)
  %i.mt = fadd fast <8 x float> %i.ms, splat (float 5.000000e-01) ; 2 uses
  %i.mu = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.mt, i32 1) ; 2 uses
  %i.mv = fcmp fast ogt <8 x float> %i.mu, %i.mt
  %i.mw = select <8 x i1> %i.mv, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.mx = fsub fast <8 x float> %i.mu, %i.mw      ; 2 uses
  %i.my = fmul fast <8 x float> %i.mx, splat (float f0x3F317218)
  %i.mz = fsub fast <8 x float> %i.mr, %i.my      ; 8 uses
  %i.na = fmul fast <8 x float> %i.mz, %i.mz
  %i.nb = fmul fast <8 x float> %i.mz, splat (float f0x39506967)
  %i.nc = fadd fast <8 x float> %i.nb, splat (float f0x3AB743CE)
  %i.nd = fmul fast <8 x float> %i.nc, %i.mz
  %i.ne = fadd fast <8 x float> %i.nd, splat (float f0x3C088908)
  %i.nf = fmul fast <8 x float> %i.ne, %i.mz
  %i.ng = fadd fast <8 x float> %i.nf, splat (float f0x3D2AA9C1)
  %i.nh = fmul fast <8 x float> %i.ng, %i.mz
  %i.ni = fadd fast <8 x float> %i.nh, splat (float f0x3E2AAAAA)
  %i.nj = fmul fast <8 x float> %i.ni, %i.mz
  %i.nk = fadd fast <8 x float> %i.nj, splat (float 5.000000e-01)
  %i.nl = fmul fast <8 x float> %i.na, %i.nk
  %i.nm = fadd fast <8 x float> %i.mz, %i.nl
  %i.nn = fadd fast <8 x float> %i.nm, splat (float 1.000000e+00)
  %i.no = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mx)
  %i.np = shl <8 x i32> %i.no, splat (i32 23)
  %i.nq = add <8 x i32> %i.np, splat (i32 1065353216)
  %i.nr = bitcast <8 x i32> %i.nq to <8 x float>
  %i.ns = fmul fast <8 x float> %i.nn, %i.nr      ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.0276625.i, i64 24
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !59
  %i.nv = insertelement <8 x float> poison, float %i.nu, i64 0
  %i.nw = shufflevector <8 x float> %i.nv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nx = fsub fast <8 x float> %i.fv, %i.nw
  %i.ny = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.nx, <8 x float> splat (float f0x42B0C0A5))
  %i.nz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ny, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.oa = fmul fast <8 x float> %i.nz, splat (float f0x3FB8AA3B)
  %i.ob = fadd fast <8 x float> %i.oa, splat (float 5.000000e-01) ; 2 uses
  %i.oc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ob, i32 1) ; 2 uses
  %i.od = fcmp fast ogt <8 x float> %i.oc, %i.ob
  %i.oe = select <8 x i1> %i.od, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.of = fsub fast <8 x float> %i.oc, %i.oe      ; 2 uses
  %i.og = fmul fast <8 x float> %i.of, splat (float f0x3F317218)
  %i.oh = fsub fast <8 x float> %i.nz, %i.og      ; 8 uses
  %i.oi = fmul fast <8 x float> %i.oh, %i.oh
  %i.oj = fmul fast <8 x float> %i.oh, splat (float f0x39506967)
  %i.ok = fadd fast <8 x float> %i.oj, splat (float f0x3AB743CE)
  %i.ol = fmul fast <8 x float> %i.ok, %i.oh
  %i.om = fadd fast <8 x float> %i.ol, splat (float f0x3C088908)
  %i.on = fmul fast <8 x float> %i.om, %i.oh
  %i.oo = fadd fast <8 x float> %i.on, splat (float f0x3D2AA9C1)
  %i.op = fmul fast <8 x float> %i.oo, %i.oh
  %i.oq = fadd fast <8 x float> %i.op, splat (float f0x3E2AAAAA)
  %i.or = fmul fast <8 x float> %i.oq, %i.oh
  %i.os = fadd fast <8 x float> %i.or, splat (float 5.000000e-01)
  %i.ot = fmul fast <8 x float> %i.oi, %i.os
  %i.ou = fadd fast <8 x float> %i.oh, %i.ot
  %i.ov = fadd fast <8 x float> %i.ou, splat (float 1.000000e+00)
  %i.ow = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.of)
  %i.ox = shl <8 x i32> %i.ow, splat (i32 23)
  %i.oy = add <8 x i32> %i.ox, splat (i32 1065353216)
  %i.oz = bitcast <8 x i32> %i.oy to <8 x float>
  %i.pa = fmul fast <8 x float> %i.ov, %i.oz      ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.0276625.i, i64 28
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !59
  %i.pd = insertelement <8 x float> poison, float %i.pc, i64 0
  %i.pe = shufflevector <8 x float> %i.pd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pf = fsub fast <8 x float> %i.fx, %i.pe
  %i.pg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.pf, <8 x float> splat (float f0x42B0C0A5))
  %i.ph = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.pg, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.pi = fmul fast <8 x float> %i.ph, splat (float f0x3FB8AA3B)
  %i.pj = fadd fast <8 x float> %i.pi, splat (float 5.000000e-01) ; 2 uses
  %i.pk = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.pj, i32 1) ; 2 uses
  %i.pl = fcmp fast ogt <8 x float> %i.pk, %i.pj
  %i.pm = select <8 x i1> %i.pl, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.pn = fsub fast <8 x float> %i.pk, %i.pm      ; 2 uses
  %i.po = fmul fast <8 x float> %i.pn, splat (float f0x3F317218)
  %i.pp = fsub fast <8 x float> %i.ph, %i.po      ; 8 uses
  %i.pq = fmul fast <8 x float> %i.pp, %i.pp
  %i.pr = fmul fast <8 x float> %i.pp, splat (float f0x39506967)
  %i.ps = fadd fast <8 x float> %i.pr, splat (float f0x3AB743CE)
  %i.pt = fmul fast <8 x float> %i.ps, %i.pp
  %i.pu = fadd fast <8 x float> %i.pt, splat (float f0x3C088908)
  %i.pv = fmul fast <8 x float> %i.pu, %i.pp
  %i.pw = fadd fast <8 x float> %i.pv, splat (float f0x3D2AA9C1)
  %i.px = fmul fast <8 x float> %i.pw, %i.pp
  %i.py = fadd fast <8 x float> %i.px, splat (float f0x3E2AAAAA)
  %i.pz = fmul fast <8 x float> %i.py, %i.pp
  %i.qa = fadd fast <8 x float> %i.pz, splat (float 5.000000e-01)
  %i.qb = fmul fast <8 x float> %i.pq, %i.qa
  %i.qc = fadd fast <8 x float> %i.pp, %i.qb
  %i.qd = fadd fast <8 x float> %i.qc, splat (float 1.000000e+00)
  %i.qe = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.pn)
  %i.qf = shl <8 x i32> %i.qe, splat (i32 23)
  %i.qg = add <8 x i32> %i.qf, splat (i32 1065353216)
  %i.qh = bitcast <8 x i32> %i.qg to <8 x float>
  %i.qi = fmul fast <8 x float> %i.qd, %i.qh      ; 3 uses
  store <8 x float> %i.he, ptr %.0262626.i, align 1, !tbaa !54
  store <8 x float> %i.im, ptr %i.fk, align 1, !tbaa !54
  store <8 x float> %i.ju, ptr %i.fm, align 1, !tbaa !54
  store <8 x float> %i.lc, ptr %i.fo, align 1, !tbaa !54
  store <8 x float> %i.mk, ptr %i.fq, align 1, !tbaa !54
  store <8 x float> %i.ns, ptr %i.fs, align 1, !tbaa !54
  store <8 x float> %i.pa, ptr %i.fu, align 1, !tbaa !54
  store <8 x float> %i.qi, ptr %i.fw, align 1, !tbaa !54
  %i.qj = shufflevector <8 x float> %i.he, <8 x float> %i.mk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.qk = shufflevector <8 x float> %i.he, <8 x float> %i.mk, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ql = shufflevector <8 x float> %i.ju, <8 x float> %i.pa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.qm = shufflevector <8 x float> %i.ju, <8 x float> %i.pa, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.qn = shufflevector <8 x float> %i.im, <8 x float> %i.ns, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.qo = shufflevector <8 x float> %i.im, <8 x float> %i.ns, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.qp = shufflevector <8 x float> %i.lc, <8 x float> %i.qi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.qq = shufflevector <8 x float> %i.lc, <8 x float> %i.qi, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.qr = fadd fast <8 x float> %i.qj, %i.qk      ; 2 uses
  %i.qs = fadd fast <8 x float> %i.ql, %i.qm      ; 2 uses
  %i.qt = fadd fast <8 x float> %i.qn, %i.qo      ; 2 uses
  %i.qu = fadd fast <8 x float> %i.qp, %i.qq      ; 2 uses
  %i.qv = shufflevector <8 x float> %i.qr, <8 x float> %i.qs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.qw = shufflevector <8 x float> %i.qr, <8 x float> %i.qs, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.qx = shufflevector <8 x float> %i.qt, <8 x float> %i.qu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.qy = shufflevector <8 x float> %i.qt, <8 x float> %i.qu, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.qz = fadd fast <8 x float> %i.qv, %i.qw      ; 2 uses
  %i.ra = fadd fast <8 x float> %i.qx, %i.qy      ; 2 uses
  %i.rb = shufflevector <8 x float> %i.qz, <8 x float> %i.ra, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rc = shufflevector <8 x float> %i.qz, <8 x float> %i.ra, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rd = load <8 x float>, ptr %.0278624.i, align 1, !tbaa !54
  %i.re = fadd fast <8 x float> %i.rc, %i.rd
  %i.rf = fadd fast <8 x float> %i.re, %i.rb
  store <8 x float> %i.rf, ptr %.0278624.i, align 1, !tbaa !54
  %i.rg = getelementptr inbounds nuw i8, ptr %.0262626.i, i64 256 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.0276625.i, i64 32 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.0278624.i, i64 32 ; 2 uses
  %i.rj = add nuw nsw i32 %.0280623.i, 8          ; 2 uses
  %i.rk = or disjoint i32 %i.rj, 7
  %i.rl = icmp slt i32 %i.rk, %4
  br i1 %i.rl, label %.lr.ph628.i, label %.preheader608.i, !llvm.loop !92

.lr.ph637.i:                                      ; preds = %.preheader608.i, %.lr.ph637.i
  %.1263636.i = phi ptr [ %i.te, %.lr.ph637.i ], [ %.0262.lcssa.i, %.preheader608.i ] ; 3 uses
  %.1277635.i = phi ptr [ %i.tf, %.lr.ph637.i ], [ %.0276.lcssa.i, %.preheader608.i ] ; 2 uses
  %.1279634.i = phi ptr [ %i.tg, %.lr.ph637.i ], [ %.0278.lcssa.i, %.preheader608.i ] ; 3 uses
  %.1281633.i = phi i32 [ %i.th, %.lr.ph637.i ], [ %.0280.lcssa.i, %.preheader608.i ]
  %i.rm = load <8 x float>, ptr %.1263636.i, align 1, !tbaa !54
  %i.rn = load float, ptr %.1277635.i, align 4, !tbaa !59
  %i.ro = insertelement <8 x float> poison, float %i.rn, i64 0
  %i.rp = shufflevector <8 x float> %i.ro, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rq = fsub fast <8 x float> %i.rm, %i.rp
  %i.rr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.rq, <8 x float> splat (float f0x42B0C0A5))
  %i.rs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.rr, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.rt = fmul fast <8 x float> %i.rs, splat (float f0x3FB8AA3B)
  %i.ru = fadd fast <8 x float> %i.rt, splat (float 5.000000e-01) ; 2 uses
  %i.rv = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ru, i32 1) ; 2 uses
  %i.rw = fcmp fast ogt <8 x float> %i.rv, %i.ru
  %i.rx = select <8 x i1> %i.rw, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ry = fsub fast <8 x float> %i.rv, %i.rx      ; 2 uses
  %i.rz = fmul fast <8 x float> %i.ry, splat (float f0x3F317218)
  %i.sa = fsub fast <8 x float> %i.rs, %i.rz      ; 8 uses
  %i.sb = fmul fast <8 x float> %i.sa, %i.sa
  %i.sc = fmul fast <8 x float> %i.sa, splat (float f0x39506967)
  %i.sd = fadd fast <8 x float> %i.sc, splat (float f0x3AB743CE)
  %i.se = fmul fast <8 x float> %i.sd, %i.sa
  %i.sf = fadd fast <8 x float> %i.se, splat (float f0x3C088908)
  %i.sg = fmul fast <8 x float> %i.sf, %i.sa
  %i.sh = fadd fast <8 x float> %i.sg, splat (float f0x3D2AA9C1)
  %i.si = fmul fast <8 x float> %i.sh, %i.sa
  %i.sj = fadd fast <8 x float> %i.si, splat (float f0x3E2AAAAA)
  %i.sk = fmul fast <8 x float> %i.sj, %i.sa
  %i.sl = fadd fast <8 x float> %i.sk, splat (float 5.000000e-01)
  %i.sm = fmul fast <8 x float> %i.sb, %i.sl
  %i.sn = fadd fast <8 x float> %i.sa, %i.sm
  %i.so = fadd fast <8 x float> %i.sn, splat (float 1.000000e+00)
  %i.sp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ry)
  %i.sq = shl <8 x i32> %i.sp, splat (i32 23)
  %i.sr = add <8 x i32> %i.sq, splat (i32 1065353216)
  %i.ss = bitcast <8 x i32> %i.sr to <8 x float>
  %i.st = fmul fast <8 x float> %i.so, %i.ss      ; 3 uses
  store <8 x float> %i.st, ptr %.1263636.i, align 1, !tbaa !54
  %i.su = shufflevector <8 x float> %i.st, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.sv = shufflevector <8 x float> %i.st, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sw = fadd fast <4 x float> %i.su, %i.sv      ; 2 uses
  %i.sx = shufflevector <4 x float> %i.sw, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.sy = fadd fast <4 x float> %i.sx, %i.sw      ; 2 uses
  %i.sz = extractelement <4 x float> %i.sy, i64 1
  %i.ta = extractelement <4 x float> %i.sy, i64 0
  %i.tb = load float, ptr %.1279634.i, align 4, !tbaa !59
  %i.tc = fadd fast float %i.sz, %i.tb
  %i.td = fadd fast float %i.tc, %i.ta
  store float %i.td, ptr %.1279634.i, align 4, !tbaa !59
  %i.te = getelementptr inbounds nuw i8, ptr %.1263636.i, i64 32
  %i.tf = getelementptr inbounds nuw i8, ptr %.1277635.i, i64 4
  %i.tg = getelementptr inbounds nuw i8, ptr %.1279634.i, i64 4
  %i.th = add nuw nsw i32 %.1281633.i, 1          ; 2 uses
  %exitcond685.not.i = icmp eq i32 %i.th, %4
  br i1 %exitcond685.not.i, label %._crit_edge638.i, label %.lr.ph637.i, !llvm.loop !93

._crit_edge638.i:                                 ; preds = %.lr.ph637.i, %.preheader608.i
  %indvars.iv.next687.i = add nuw nsw i64 %indvars.iv686.i, 1 ; 2 uses
  %exitcond690.not.i = icmp eq i64 %indvars.iv.next687.i, %wide.trip.count.i
  br i1 %exitcond690.not.i, label %.preheader607.i, label %.preheader609.i, !llvm.loop !94

.preheader606.loopexit.i.unr-lcssa:               ; preds = %.lr.ph643.i
  %i.ti = and i32 %i.fc, 8
  %lcmp.mod629.not.not = icmp eq i32 %i.ti, 0
  br i1 %lcmp.mod629.not.not, label %.lr.ph643.i.epil.preheader, label %.preheader606.loopexit.i

.lr.ph643.i.epil.preheader:                       ; preds = %.preheader606.loopexit.i.unr-lcssa, %.lr.ph643.i.preheader
  %.0273641.i.epil.init = phi ptr [ %6, %.lr.ph643.i.preheader ], [ %i.ud, %.preheader606.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod631 = trunc i32 %i.fe to i1
  tail call void @llvm.assume(i1 %lcmp.mod631)
  %i.tj = load <8 x float>, ptr %.0273641.i.epil.init, align 1, !tbaa !54 ; 2 uses
  %i.tk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.tj) ; 2 uses
  %i.tl = fmul fast <8 x float> %i.tk, %i.tj
  %i.tm = fsub fast <8 x float> splat (float 2.000000e+00), %i.tl
  %i.tn = fmul fast <8 x float> %i.tm, %i.tk
  store <8 x float> %i.tn, ptr %.0273641.i.epil.init, align 1, !tbaa !54
  %i.to = getelementptr inbounds nuw i8, ptr %.0273641.i.epil.init, i64 32
  br label %.preheader606.loopexit.i

.preheader606.loopexit.i:                         ; preds = %.preheader606.loopexit.i.unr-lcssa, %.lr.ph643.i.epil.preheader
  %.lcssa524 = phi ptr [ %i.ud, %.preheader606.loopexit.i.unr-lcssa ], [ %i.to, %.lr.ph643.i.epil.preheader ]
  %i.tp = and i32 %4, 2147483640
  br label %.preheader606.i

.preheader606.i:                                  ; preds = %.preheader606.loopexit.i, %.preheader607.i
  %.0273.lcssa.i = phi ptr [ %6, %.preheader607.i ], [ %.lcssa524, %.preheader606.loopexit.i ] ; 2 uses
  %.0271.lcssa.i = phi i32 [ 0, %.preheader607.i ], [ %i.tp, %.preheader606.loopexit.i ] ; 3 uses
  %i.tq = or disjoint i32 %.0271.lcssa.i, 3
  %i.tr = icmp slt i32 %i.tq, %4
  br i1 %i.tr, label %.lr.ph648.i, label %.preheader605.i

.lr.ph643.i:                                      ; preds = %.lr.ph643.i, %.lr.ph643.i.preheader.new
  %.0273641.i = phi ptr [ %6, %.lr.ph643.i.preheader.new ], [ %i.ud, %.lr.ph643.i ] ; 4 uses
  %niter633 = phi i32 [ 0, %.lr.ph643.i.preheader.new ], [ %niter633.next.1, %.lr.ph643.i ]
  %i.ts = load <8 x float>, ptr %.0273641.i, align 1, !tbaa !54 ; 2 uses
  %i.tt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.ts) ; 2 uses
  %i.tu = fmul fast <8 x float> %i.tt, %i.ts
  %i.tv = fsub fast <8 x float> splat (float 2.000000e+00), %i.tu
  %i.tw = fmul fast <8 x float> %i.tv, %i.tt
  store <8 x float> %i.tw, ptr %.0273641.i, align 1, !tbaa !54
  %i.tx = getelementptr inbounds nuw i8, ptr %.0273641.i, i64 32 ; 2 uses
  %i.ty = load <8 x float>, ptr %i.tx, align 1, !tbaa !54 ; 2 uses
  %i.tz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.ty) ; 2 uses
  %i.ua = fmul fast <8 x float> %i.tz, %i.ty
  %i.ub = fsub fast <8 x float> splat (float 2.000000e+00), %i.ua
  %i.uc = fmul fast <8 x float> %i.ub, %i.tz
  store <8 x float> %i.uc, ptr %i.tx, align 1, !tbaa !54
  %i.ud = getelementptr inbounds nuw i8, ptr %.0273641.i, i64 64 ; 3 uses
  %niter633.next.1 = add i32 %niter633, 2         ; 2 uses
  %niter633.ncmp.1.not = icmp eq i32 %niter633.next.1, %unroll_iter632
  br i1 %niter633.ncmp.1.not, label %.preheader606.loopexit.i.unr-lcssa, label %.lr.ph643.i, !llvm.loop !95

.preheader605.i:                                  ; preds = %.lr.ph648.i, %.preheader606.i
  %.1274.lcssa.i = phi ptr [ %.0273.lcssa.i, %.preheader606.i ], [ %i.uv, %.lr.ph648.i ] ; 3 uses
  %.1272.lcssa.i = phi i32 [ %.0271.lcssa.i, %.preheader606.i ], [ %i.uw, %.lr.ph648.i ] ; 4 uses
  %i.ue = icmp slt i32 %.1272.lcssa.i, %4
  br i1 %i.ue, label %.lr.ph653.i.preheader, label %.preheader604.i

.lr.ph653.i.preheader:                            ; preds = %.preheader605.i
  %i.uf = xor i32 %.1272.lcssa.i, -1
  %i.ug = add i32 %4, %i.uf                       ; 2 uses
  %i.uh = zext i32 %i.ug to i64
  %i.ui = add nuw nsw i64 %i.uh, 1                ; 2 uses
  %min.iters.check508 = icmp ult i32 %i.ug, 7
  br i1 %min.iters.check508, label %.lr.ph653.i.preheader521, label %vector.ph509

vector.ph509:                                     ; preds = %.lr.ph653.i.preheader
  %n.vec510 = and i64 %i.ui, 8589934584           ; 4 uses
  %i.uj = trunc i64 %n.vec510 to i32
  %i.uk = add i32 %.1272.lcssa.i, %i.uj
  %i.ul = shl nuw nsw i64 %n.vec510, 2
  %i.um = getelementptr i8, ptr %.1274.lcssa.i, i64 %i.ul
  br label %vector.body511

vector.body511:                                   ; preds = %vector.body511, %vector.ph509
  %index512 = phi i64 [ 0, %vector.ph509 ], [ %index.next515, %vector.body511 ] ; 2 uses
  %i.un = shl i64 %index512, 2
  %next.gep513 = getelementptr i8, ptr %.1274.lcssa.i, i64 %i.un ; 2 uses
  %wide.load514 = load <8 x float>, ptr %next.gep513, align 4, !tbaa !59
  %i.uo = fdiv fast <8 x float> splat (float 1.000000e+00), %wide.load514
  store <8 x float> %i.uo, ptr %next.gep513, align 4, !tbaa !59
  %index.next515 = add nuw i64 %index512, 8       ; 2 uses
  %i.up = icmp eq i64 %index.next515, %n.vec510
  br i1 %i.up, label %middle.block516, label %vector.body511, !llvm.loop !96

middle.block516:                                  ; preds = %vector.body511
  %cmp.n517 = icmp eq i64 %i.ui, %n.vec510
  br i1 %cmp.n517, label %.preheader604.i, label %.lr.ph653.i.preheader521

.lr.ph653.i.preheader521:                         ; preds = %.lr.ph653.i.preheader, %middle.block516
  %.2652.i.ph = phi i32 [ %.1272.lcssa.i, %.lr.ph653.i.preheader ], [ %i.uk, %middle.block516 ]
  %.2275651.i.ph = phi ptr [ %.1274.lcssa.i, %.lr.ph653.i.preheader ], [ %i.um, %middle.block516 ]
  br label %.lr.ph653.i

.lr.ph648.i:                                      ; preds = %.preheader606.i, %.lr.ph648.i
  %.1272647.i = phi i32 [ %i.uw, %.lr.ph648.i ], [ %.0271.lcssa.i, %.preheader606.i ]
  %.1274646.i = phi ptr [ %i.uv, %.lr.ph648.i ], [ %.0273.lcssa.i, %.preheader606.i ] ; 3 uses
  %i.uq = load <4 x float>, ptr %.1274646.i, align 1, !tbaa !54 ; 2 uses
  %i.ur = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.uq) ; 2 uses
  %i.us = fmul fast <4 x float> %i.ur, %i.uq
  %i.ut = fsub fast <4 x float> splat (float 2.000000e+00), %i.us
  %i.uu = fmul fast <4 x float> %i.ut, %i.ur
  store <4 x float> %i.uu, ptr %.1274646.i, align 1, !tbaa !54
  %i.uv = getelementptr inbounds nuw i8, ptr %.1274646.i, i64 16 ; 2 uses
  %i.uw = add nuw nsw i32 %.1272647.i, 4          ; 3 uses
  %i.ux = or disjoint i32 %i.uw, 3
  %i.uy = icmp slt i32 %i.ux, %4
  br i1 %i.uy, label %.lr.ph648.i, label %.preheader605.i, !llvm.loop !97

.preheader604.i:                                  ; preds = %.lr.ph653.i, %middle.block516, %.preheader605.i
  br i1 %i.bq, label %.lr.ph668.i, label %_ZN4ncnnL13softmax_pack8EPfimiS0_S0_.exit

.lr.ph668.i:                                      ; preds = %.preheader604.i
  %i.uz = icmp sgt i32 %4, 3
  %i.va = and i32 %4, -4
  %wide.trip.count696.i = zext nneg i32 %1 to i64
  %xtraiter634 = and i32 %4, 1
  %lcmp.mod635.not = icmp eq i32 %xtraiter634, 0
  br label %bb.d

.lr.ph653.i:                                      ; preds = %.lr.ph653.i.preheader521, %.lr.ph653.i
  %.2652.i = phi i32 [ %i.ve, %.lr.ph653.i ], [ %.2652.i.ph, %.lr.ph653.i.preheader521 ]
  %.2275651.i = phi ptr [ %i.vd, %.lr.ph653.i ], [ %.2275651.i.ph, %.lr.ph653.i.preheader521 ] ; 3 uses
  %i.vb = load float, ptr %.2275651.i, align 4, !tbaa !59
  %i.vc = fdiv fast float 1.000000e+00, %i.vb
  store float %i.vc, ptr %.2275651.i, align 4, !tbaa !59
  %i.vd = getelementptr inbounds nuw i8, ptr %.2275651.i, i64 4
  %i.ve = add nuw nsw i32 %.2652.i, 1             ; 2 uses
  %exitcond691.not.i = icmp eq i32 %i.ve, %4
  br i1 %exitcond691.not.i, label %.preheader604.i, label %.lr.ph653.i, !llvm.loop !98

bb.d:                                             ; preds = %._crit_edge666.i, %.lr.ph668.i
  %indvars.iv693.i = phi i64 [ 0, %.lr.ph668.i ], [ %indvars.iv.next694.i, %._crit_edge666.i ] ; 2 uses
  %i.vf = mul i64 %indvars.iv693.i, %3
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.vf ; 2 uses
  br i1 %i.uz, label %.lr.ph658.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph658.i, %bb.d
  %.0268.lcssa.i = phi ptr [ %i.vg, %bb.d ], [ %i.wr, %.lr.ph658.i ] ; 4 uses
  %.0266.lcssa.i = phi ptr [ %6, %bb.d ], [ %i.ws, %.lr.ph658.i ] ; 3 uses
  %.0264.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.va, %.lr.ph658.i ] ; 4 uses
  %i.vh = icmp slt i32 %.0264.lcssa.i, %4
  br i1 %i.vh, label %.lr.ph665.i.preheader, label %._crit_edge666.i

.lr.ph665.i.preheader:                            ; preds = %.preheader.i
  %.neg639 = or disjoint i32 %.0264.lcssa.i, 1
  br i1 %lcmp.mod635.not, label %.lr.ph665.i.prol.loopexit, label %.lr.ph665.i.prol

.lr.ph665.i.prol:                                 ; preds = %.lr.ph665.i.preheader
  %i.vi = load <8 x float>, ptr %.0268.lcssa.i, align 1, !tbaa !54
  %i.vj = load float, ptr %.0266.lcssa.i, align 4, !tbaa !59
  %i.vk = insertelement <8 x float> poison, float %i.vj, i64 0
  %i.vl = shufflevector <8 x float> %i.vk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.vm = fmul fast <8 x float> %i.vl, %i.vi
  store <8 x float> %i.vm, ptr %.0268.lcssa.i, align 1, !tbaa !54
  %i.vn = getelementptr inbounds nuw i8, ptr %.0268.lcssa.i, i64 32
  %i.vo = getelementptr inbounds nuw i8, ptr %.0266.lcssa.i, i64 4
  %i.vp = or disjoint i32 %.0264.lcssa.i, 1
  br label %.lr.ph665.i.prol.loopexit

.lr.ph665.i.prol.loopexit:                        ; preds = %.lr.ph665.i.prol, %.lr.ph665.i.preheader
  %.1265664.i.unr = phi i32 [ %.0264.lcssa.i, %.lr.ph665.i.preheader ], [ %i.vp, %.lr.ph665.i.prol ]
  %.1267663.i.unr = phi ptr [ %.0266.lcssa.i, %.lr.ph665.i.preheader ], [ %i.vo, %.lr.ph665.i.prol ]
  %.1269662.i.unr = phi ptr [ %.0268.lcssa.i, %.lr.ph665.i.preheader ], [ %i.vn, %.lr.ph665.i.prol ]
  %i.vq = icmp eq i32 %4, %.neg639
  br i1 %i.vq, label %._crit_edge666.i, label %.lr.ph665.i

.lr.ph658.i:                                      ; preds = %bb.d, %.lr.ph658.i
  %.0264656.i = phi i32 [ %i.wt, %.lr.ph658.i ], [ 0, %bb.d ]
  %.0266655.i = phi ptr [ %i.ws, %.lr.ph658.i ], [ %6, %bb.d ] ; 5 uses
  %.0268654.i = phi ptr [ %i.wr, %.lr.ph658.i ], [ %i.vg, %bb.d ] ; 6 uses
  %i.vr = load <8 x float>, ptr %.0268654.i, align 1, !tbaa !54
end_hunk_1
begin_hunk_2_@_ZN4ncnnL7softmaxEPfiimiS0_S0_:bb.a
  %i.xv = load <8 x float>, ptr %i.xu, align 1, !tbaa !54 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.0306632.i, i64 96
  %i.xx = load <8 x float>, ptr %i.xw, align 1, !tbaa !54 ; 2 uses
  %i.xy = shufflevector <8 x float> %i.xr, <8 x float> %i.xt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.xz = shufflevector <8 x float> %i.xr, <8 x float> %i.xt, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ya = shufflevector <8 x float> %i.xv, <8 x float> %i.xx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.yb = shufflevector <8 x float> %i.xv, <8 x float> %i.xx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.yc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.xy, <8 x float> nofpclass(nan inf) %i.xz) ; 2 uses
  %i.yd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ya, <8 x float> nofpclass(nan inf) %i.yb) ; 2 uses
  %i.ye = shufflevector <8 x float> %i.yc, <8 x float> %i.yd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.yf = shufflevector <8 x float> %i.yc, <8 x float> %i.yd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.yg = shufflevector <8 x float> %i.ye, <8 x float> %i.yf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.yh = shufflevector <8 x float> %i.ye, <8 x float> %i.yf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.yi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.yg, <8 x float> nofpclass(nan inf) %i.yh)
  %i.yj = load <8 x float>, ptr %.0307631.i, align 1, !tbaa !54
  %i.yk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.yj, <8 x float> nofpclass(nan inf) %i.yi)
  store <8 x float> %i.yk, ptr %.0307631.i, align 1, !tbaa !54
  %i.yl = getelementptr inbounds nuw i8, ptr %.0306632.i, i64 128 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.0307631.i, i64 32 ; 2 uses
  %i.yn = add nuw nsw i32 %.0310630.i, 8          ; 2 uses
  %i.yo = or disjoint i32 %i.yn, 7
  %i.yp = icmp slt i32 %i.yo, %4
  br i1 %i.yp, label %.lr.ph.i80, label %.preheader629.i, !llvm.loop !102

.preheader628.i:                                  ; preds = %.lr.ph638.i, %.preheader629.i
  %.1311.lcssa.i = phi i32 [ %.0310.lcssa.i, %.preheader629.i ], [ %i.aaa, %.lr.ph638.i ] ; 5 uses
  %.1308.lcssa.i = phi ptr [ %.0307.lcssa.i, %.preheader629.i ], [ %i.zz, %.lr.ph638.i ] ; 4 uses
  %.1.lcssa.i = phi ptr [ %.0306.lcssa.i, %.preheader629.i ], [ %i.zy, %.lr.ph638.i ] ; 3 uses
  %i.yq = icmp slt i32 %.1311.lcssa.i, %4
  br i1 %i.yq, label %.lr.ph645.i.preheader, label %._crit_edge.i68

.lr.ph645.i.preheader:                            ; preds = %.preheader628.i
  %i.yr = sub i32 %4, %.1311.lcssa.i
  %.neg637 = add i32 %.1311.lcssa.i, 1
  %xtraiter611 = and i32 %i.yr, 1
  %lcmp.mod612.not = icmp eq i32 %xtraiter611, 0
  br i1 %lcmp.mod612.not, label %.lr.ph645.i.prol.loopexit, label %.lr.ph645.i.prol

.lr.ph645.i.prol:                                 ; preds = %.lr.ph645.i.preheader
  %i.ys = load <4 x float>, ptr %.1.lcssa.i, align 1, !tbaa !54 ; 2 uses
  %i.yt = shufflevector <4 x float> %i.ys, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.yu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ys, <4 x float> nofpclass(nan inf) %i.yt) ; 2 uses
  %i.yv = shufflevector <4 x float> %i.yu, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.yw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.yu, <4 x float> nofpclass(nan inf) %i.yv)
  %i.yx = extractelement <4 x float> %i.yw, i64 0 ; 2 uses
  %i.yy = load float, ptr %.1308.lcssa.i, align 4, !tbaa !59 ; 2 uses
  %i.yz = fcmp fast olt float %i.yy, %i.yx
  %.sroa.speculated.i78.prol = select i1 %i.yz, float %i.yx, float %i.yy
  store float %.sroa.speculated.i78.prol, ptr %.1308.lcssa.i, align 4, !tbaa !59
  %i.za = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 16
  %i.zb = getelementptr inbounds nuw i8, ptr %.1308.lcssa.i, i64 4
  %i.zc = add nuw nsw i32 %.1311.lcssa.i, 1
  br label %.lr.ph645.i.prol.loopexit

.lr.ph645.i.prol.loopexit:                        ; preds = %.lr.ph645.i.prol, %.lr.ph645.i.preheader
  %.2644.i.unr = phi ptr [ %.1.lcssa.i, %.lr.ph645.i.preheader ], [ %i.za, %.lr.ph645.i.prol ]
  %.2309643.i.unr = phi ptr [ %.1308.lcssa.i, %.lr.ph645.i.preheader ], [ %i.zb, %.lr.ph645.i.prol ]
  %.2312642.i.unr = phi i32 [ %.1311.lcssa.i, %.lr.ph645.i.preheader ], [ %i.zc, %.lr.ph645.i.prol ]
  %i.zd = icmp eq i32 %4, %.neg637
  br i1 %i.zd, label %._crit_edge.i68, label %.lr.ph645.i

.lr.ph638.i:                                      ; preds = %.preheader629.i, %.lr.ph638.i
  %.1637.i = phi ptr [ %i.zy, %.lr.ph638.i ], [ %.0306.lcssa.i, %.preheader629.i ] ; 5 uses
  %.1308636.i = phi ptr [ %i.zz, %.lr.ph638.i ], [ %.0307.lcssa.i, %.preheader629.i ] ; 3 uses
  %.1311635.i = phi i32 [ %i.aaa, %.lr.ph638.i ], [ %.0310.lcssa.i, %.preheader629.i ]
  %i.ze = load <4 x float>, ptr %.1637.i, align 1, !tbaa !54 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %.1637.i, i64 16
  %i.zg = load <4 x float>, ptr %i.zf, align 1, !tbaa !54 ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.1637.i, i64 32
  %i.zi = load <4 x float>, ptr %i.zh, align 1, !tbaa !54 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.1637.i, i64 48
  %i.zk = load <4 x float>, ptr %i.zj, align 1, !tbaa !54 ; 2 uses
  %i.zl = shufflevector <4 x float> %i.ze, <4 x float> %i.zg, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.zm = shufflevector <4 x float> %i.zi, <4 x float> %i.zk, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.zn = shufflevector <4 x float> %i.ze, <4 x float> %i.zg, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.zo = shufflevector <4 x float> %i.zi, <4 x float> %i.zk, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.zp = shufflevector <4 x float> %i.zl, <4 x float> %i.zm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.zq = shufflevector <4 x float> %i.zm, <4 x float> %i.zl, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.zr = shufflevector <4 x float> %i.zn, <4 x float> %i.zo, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.zs = shufflevector <4 x float> %i.zo, <4 x float> %i.zn, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.zt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.zp, <4 x float> nofpclass(nan inf) %i.zq)
  %i.zu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.zr, <4 x float> nofpclass(nan inf) %i.zs)
  %i.zv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.zt, <4 x float> nofpclass(nan inf) %i.zu)
  %i.zw = load <4 x float>, ptr %.1308636.i, align 1, !tbaa !54
  %i.zx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.zw, <4 x float> nofpclass(nan inf) %i.zv)
  store <4 x float> %i.zx, ptr %.1308636.i, align 1, !tbaa !54
  %i.zy = getelementptr inbounds nuw i8, ptr %.1637.i, i64 64 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.1308636.i, i64 16 ; 2 uses
  %i.aaa = add nuw nsw i32 %.1311635.i, 4         ; 3 uses
  %i.aab = or disjoint i32 %i.aaa, 3
  %i.aac = icmp slt i32 %i.aab, %4
  br i1 %i.aac, label %.lr.ph638.i, label %.preheader628.i, !llvm.loop !103

.lr.ph645.i:                                      ; preds = %.lr.ph645.i.prol.loopexit, %.lr.ph645.i
  %.2644.i = phi ptr [ %i.aav, %.lr.ph645.i ], [ %.2644.i.unr, %.lr.ph645.i.prol.loopexit ] ; 3 uses
  %.2309643.i = phi ptr [ %i.aaw, %.lr.ph645.i ], [ %.2309643.i.unr, %.lr.ph645.i.prol.loopexit ] ; 4 uses
  %.2312642.i = phi i32 [ %i.aax, %.lr.ph645.i ], [ %.2312642.i.unr, %.lr.ph645.i.prol.loopexit ]
  %i.aad = load <4 x float>, ptr %.2644.i, align 1, !tbaa !54 ; 2 uses
  %i.aae = shufflevector <4 x float> %i.aad, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.aaf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aad, <4 x float> nofpclass(nan inf) %i.aae) ; 2 uses
  %i.aag = shufflevector <4 x float> %i.aaf, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.aah = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.aaf, <4 x float> nofpclass(nan inf) %i.aag)
  %i.aai = extractelement <4 x float> %i.aah, i64 0 ; 2 uses
  %i.aaj = load float, ptr %.2309643.i, align 4, !tbaa !59 ; 2 uses
  %i.aak = fcmp fast olt float %i.aaj, %i.aai
  %.sroa.speculated.i78 = select i1 %i.aak, float %i.aai, float %i.aaj
  store float %.sroa.speculated.i78, ptr %.2309643.i, align 4, !tbaa !59
  %i.aal = getelementptr inbounds nuw i8, ptr %.2644.i, i64 16
  %i.aam = getelementptr inbounds nuw i8, ptr %.2309643.i, i64 4 ; 2 uses
  %i.aan = load <4 x float>, ptr %i.aal, align 1, !tbaa !54 ; 2 uses
  %i.aao = shufflevector <4 x float> %i.aan, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.aap = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aan, <4 x float> nofpclass(nan inf) %i.aao) ; 2 uses
  %i.aaq = shufflevector <4 x float> %i.aap, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.aar = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.aap, <4 x float> nofpclass(nan inf) %i.aaq)
  %i.aas = extractelement <4 x float> %i.aar, i64 0 ; 2 uses
  %i.aat = load float, ptr %i.aam, align 4, !tbaa !59 ; 2 uses
  %i.aau = fcmp fast olt float %i.aat, %i.aas
  %.sroa.speculated.i78.1 = select i1 %i.aau, float %i.aas, float %i.aat
  store float %.sroa.speculated.i78.1, ptr %i.aam, align 4, !tbaa !59
  %i.aav = getelementptr inbounds nuw i8, ptr %.2644.i, i64 32
  %i.aaw = getelementptr inbounds nuw i8, ptr %.2309643.i, i64 8
  %i.aax = add nuw nsw i32 %.2312642.i, 2         ; 2 uses
  %exitcond.not.i79.1 = icmp eq i32 %i.aax, %4
  br i1 %exitcond.not.i79.1, label %._crit_edge.i68, label %.lr.ph645.i, !llvm.loop !104

._crit_edge.i68:                                  ; preds = %.lr.ph645.i.prol.loopexit, %.lr.ph645.i, %.preheader628.i
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i67, 1 ; 2 uses
  %exitcond736.not.i = icmp eq i64 %indvars.iv.next.i69, %wide.trip.count.i66
  br i1 %exitcond736.not.i, label %.preheader627.i, label %bb.f, !llvm.loop !105

.preheader624.i:                                  ; preds = %._crit_edge673.i, %bb.e
  br i1 %i.a, label %.lr.ph678.i.preheader, label %.preheader623.i

.lr.ph678.i.preheader:                            ; preds = %.preheader624.i
  %i.aay = add nsw i32 %4, -8                     ; 2 uses
  %i.aaz = lshr i32 %i.aay, 3                     ; 2 uses
  %i.aba = add nuw nsw i32 %i.aaz, 1              ; 2 uses
  %i.abb = icmp eq i32 %i.aaz, 0
  br i1 %i.abb, label %.lr.ph678.i.epil.preheader, label %.lr.ph678.i.preheader.new

.lr.ph678.i.preheader.new:                        ; preds = %.lr.ph678.i.preheader
  %unroll_iter619 = and i32 %i.aba, 1073741822
  br label %.lr.ph678.i

.preheader627.i:                                  ; preds = %._crit_edge.i68, %._crit_edge673.i
  %indvars.iv738.i = phi i64 [ %indvars.iv.next739.i, %._crit_edge673.i ], [ 0, %._crit_edge.i68 ] ; 2 uses
  %i.abc = mul i64 %indvars.iv738.i, %3
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abc ; 2 uses
  br i1 %i.a, label %.lr.ph654.i, label %.preheader626.i

.preheader626.i:                                  ; preds = %.lr.ph654.i, %.preheader627.i
  %.0323.lcssa.i = phi i32 [ 0, %.preheader627.i ], [ %i.xm, %.lr.ph654.i ] ; 3 uses
  %.0320.lcssa.i = phi ptr [ %6, %.preheader627.i ], [ %i.aht, %.lr.ph654.i ] ; 2 uses
  %.0317.lcssa.i = phi ptr [ %5, %.preheader627.i ], [ %i.ahs, %.lr.ph654.i ] ; 2 uses
  %.0314.lcssa.i = phi ptr [ %i.abd, %.preheader627.i ], [ %i.ahr, %.lr.ph654.i ] ; 2 uses
  %i.abe = or disjoint i32 %.0323.lcssa.i, 3
  %i.abf = icmp slt i32 %i.abe, %4
  br i1 %i.abf, label %.lr.ph663.i, label %.preheader625.i

.lr.ph654.i:                                      ; preds = %.preheader627.i, %.lr.ph654.i
  %.0314652.i = phi ptr [ %i.ahr, %.lr.ph654.i ], [ %i.abd, %.preheader627.i ] ; 6 uses
  %.0317651.i = phi ptr [ %i.ahs, %.lr.ph654.i ], [ %5, %.preheader627.i ] ; 9 uses
  %.0320650.i = phi ptr [ %i.aht, %.lr.ph654.i ], [ %6, %.preheader627.i ] ; 3 uses
  %.0323649.i = phi i32 [ %i.ahu, %.lr.ph654.i ], [ 0, %.preheader627.i ]
  %i.abg = load <8 x float>, ptr %.0314652.i, align 1, !tbaa !54
  %i.abh = getelementptr inbounds nuw i8, ptr %.0314652.i, i64 32 ; 2 uses
  %i.abi = load <8 x float>, ptr %i.abh, align 1, !tbaa !54
  %i.abj = getelementptr inbounds nuw i8, ptr %.0314652.i, i64 64 ; 2 uses
  %i.abk = load <8 x float>, ptr %i.abj, align 1, !tbaa !54
  %i.abl = getelementptr inbounds nuw i8, ptr %.0314652.i, i64 96 ; 2 uses
  %i.abm = load <8 x float>, ptr %i.abl, align 1, !tbaa !54
  %i.abn = load float, ptr %.0317651.i, align 4, !tbaa !59
  %i.abo = insertelement <4 x float> poison, float %i.abn, i64 0
  %i.abp = getelementptr inbounds nuw i8, ptr %.0317651.i, i64 4
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !59
  %i.abr = insertelement <4 x float> poison, float %i.abq, i64 0
  %i.abs = shufflevector <4 x float> %i.abo, <4 x float> %i.abr, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.abt = fsub fast <8 x float> %i.abg, %i.abs
  %i.abu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.abt, <8 x float> splat (float f0x42B0C0A5))
  %i.abv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.abu, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.abw = fmul fast <8 x float> %i.abv, splat (float f0x3FB8AA3B)
  %i.abx = fadd fast <8 x float> %i.abw, splat (float 5.000000e-01) ; 2 uses
  %i.aby = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.abx, i32 1) ; 2 uses
  %i.abz = fcmp fast ogt <8 x float> %i.aby, %i.abx
  %i.aca = select <8 x i1> %i.abz, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.acb = fsub fast <8 x float> %i.aby, %i.aca   ; 2 uses
  %i.acc = fmul fast <8 x float> %i.acb, splat (float f0x3F317218)
  %i.acd = fsub fast <8 x float> %i.abv, %i.acc   ; 8 uses
  %i.ace = fmul fast <8 x float> %i.acd, %i.acd
  %i.acf = fmul fast <8 x float> %i.acd, splat (float f0x39506967)
  %i.acg = fadd fast <8 x float> %i.acf, splat (float f0x3AB743CE)
  %i.ach = fmul fast <8 x float> %i.acg, %i.acd
  %i.aci = fadd fast <8 x float> %i.ach, splat (float f0x3C088908)
  %i.acj = fmul fast <8 x float> %i.aci, %i.acd
  %i.ack = fadd fast <8 x float> %i.acj, splat (float f0x3D2AA9C1)
  %i.acl = fmul fast <8 x float> %i.ack, %i.acd
  %i.acm = fadd fast <8 x float> %i.acl, splat (float f0x3E2AAAAA)
  %i.acn = fmul fast <8 x float> %i.acm, %i.acd
  %i.aco = fadd fast <8 x float> %i.acn, splat (float 5.000000e-01)
  %i.acp = fmul fast <8 x float> %i.ace, %i.aco
  %i.acq = fadd fast <8 x float> %i.acd, %i.acp
  %i.acr = fadd fast <8 x float> %i.acq, splat (float 1.000000e+00)
  %i.acs = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.acb)
  %i.act = shl <8 x i32> %i.acs, splat (i32 23)
  %i.acu = add <8 x i32> %i.act, splat (i32 1065353216)
  %i.acv = bitcast <8 x i32> %i.acu to <8 x float>
  %i.acw = fmul fast <8 x float> %i.acr, %i.acv   ; 3 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.0317651.i, i64 8
  %i.acy = load float, ptr %i.acx, align 4, !tbaa !59
  %i.acz = insertelement <4 x float> poison, float %i.acy, i64 0
  %i.ada = getelementptr inbounds nuw i8, ptr %.0317651.i, i64 12
  %i.adb = load float, ptr %i.ada, align 4, !tbaa !59
  %i.adc = insertelement <4 x float> poison, float %i.adb, i64 0
  %i.add = shufflevector <4 x float> %i.acz, <4 x float> %i.adc, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.ade = fsub fast <8 x float> %i.abi, %i.add
  %i.adf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ade, <8 x float> splat (float f0x42B0C0A5))
  %i.adg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.adf, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.adh = fmul fast <8 x float> %i.adg, splat (float f0x3FB8AA3B)
  %i.adi = fadd fast <8 x float> %i.adh, splat (float 5.000000e-01) ; 2 uses
  %i.adj = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.adi, i32 1) ; 2 uses
  %i.adk = fcmp fast ogt <8 x float> %i.adj, %i.adi
  %i.adl = select <8 x i1> %i.adk, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.adm = fsub fast <8 x float> %i.adj, %i.adl   ; 2 uses
  %i.adn = fmul fast <8 x float> %i.adm, splat (float f0x3F317218)
  %i.ado = fsub fast <8 x float> %i.adg, %i.adn   ; 8 uses
  %i.adp = fmul fast <8 x float> %i.ado, %i.ado
  %i.adq = fmul fast <8 x float> %i.ado, splat (float f0x39506967)
  %i.adr = fadd fast <8 x float> %i.adq, splat (float f0x3AB743CE)
  %i.ads = fmul fast <8 x float> %i.adr, %i.ado
  %i.adt = fadd fast <8 x float> %i.ads, splat (float f0x3C088908)
  %i.adu = fmul fast <8 x float> %i.adt, %i.ado
  %i.adv = fadd fast <8 x float> %i.adu, splat (float f0x3D2AA9C1)
  %i.adw = fmul fast <8 x float> %i.adv, %i.ado
  %i.adx = fadd fast <8 x float> %i.adw, splat (float f0x3E2AAAAA)
  %i.ady = fmul fast <8 x float> %i.adx, %i.ado
  %i.adz = fadd fast <8 x float> %i.ady, splat (float 5.000000e-01)
  %i.aea = fmul fast <8 x float> %i.adp, %i.adz
  %i.aeb = fadd fast <8 x float> %i.ado, %i.aea
  %i.aec = fadd fast <8 x float> %i.aeb, splat (float 1.000000e+00)
  %i.aed = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.adm)
  %i.aee = shl <8 x i32> %i.aed, splat (i32 23)
  %i.aef = add <8 x i32> %i.aee, splat (i32 1065353216)
  %i.aeg = bitcast <8 x i32> %i.aef to <8 x float>
  %i.aeh = fmul fast <8 x float> %i.aec, %i.aeg   ; 3 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %.0317651.i, i64 16
  %i.aej = load float, ptr %i.aei, align 4, !tbaa !59
  %i.aek = insertelement <4 x float> poison, float %i.aej, i64 0
  %i.ael = getelementptr inbounds nuw i8, ptr %.0317651.i, i64 20
  %i.aem = load float, ptr %i.ael, align 4, !tbaa !59
  %i.aen = insertelement <4 x float> poison, float %i.aem, i64 0
  %i.aeo = shufflevector <4 x float> %i.aek, <4 x float> %i.aen, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.aep = fsub fast <8 x float> %i.abk, %i.aeo
  %i.aeq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aep, <8 x float> splat (float f0x42B0C0A5))
  %i.aer = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aeq, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aes = fmul fast <8 x float> %i.aer, splat (float f0x3FB8AA3B)
  %i.aet = fadd fast <8 x float> %i.aes, splat (float 5.000000e-01) ; 2 uses
  %i.aeu = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aet, i32 1) ; 2 uses
  %i.aev = fcmp fast ogt <8 x float> %i.aeu, %i.aet
  %i.aew = select <8 x i1> %i.aev, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.aex = fsub fast <8 x float> %i.aeu, %i.aew   ; 2 uses
  %i.aey = fmul fast <8 x float> %i.aex, splat (float f0x3F317218)
  %i.aez = fsub fast <8 x float> %i.aer, %i.aey   ; 8 uses
  %i.afa = fmul fast <8 x float> %i.aez, %i.aez
  %i.afb = fmul fast <8 x float> %i.aez, splat (float f0x39506967)
  %i.afc = fadd fast <8 x float> %i.afb, splat (float f0x3AB743CE)
  %i.afd = fmul fast <8 x float> %i.afc, %i.aez
  %i.afe = fadd fast <8 x float> %i.afd, splat (float f0x3C088908)
  %i.aff = fmul fast <8 x float> %i.afe, %i.aez
  %i.afg = fadd fast <8 x float> %i.aff, splat (float f0x3D2AA9C1)
  %i.afh = fmul fast <8 x float> %i.afg, %i.aez
  %i.afi = fadd fast <8 x float> %i.afh, splat (float f0x3E2AAAAA)
  %i.afj = fmul fast <8 x float> %i.afi, %i.aez
  %i.afk = fadd fast <8 x float> %i.afj, splat (float 5.000000e-01)
  %i.afl = fmul fast <8 x float> %i.afa, %i.afk
  %i.afm = fadd fast <8 x float> %i.aez, %i.afl
  %i.afn = fadd fast <8 x float> %i.afm, splat (float 1.000000e+00)
  %i.afo = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aex)
  %i.afp = shl <8 x i32> %i.afo, splat (i32 23)
  %i.afq = add <8 x i32> %i.afp, splat (i32 1065353216)
  %i.afr = bitcast <8 x i32> %i.afq to <8 x float>
  %i.afs = fmul fast <8 x float> %i.afn, %i.afr   ; 3 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %.0317651.i, i64 24
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !59
  %i.afv = insertelement <4 x float> poison, float %i.afu, i64 0
  %i.afw = getelementptr inbounds nuw i8, ptr %.0317651.i, i64 28
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !59
  %i.afy = insertelement <4 x float> poison, float %i.afx, i64 0
  %i.afz = shufflevector <4 x float> %i.afv, <4 x float> %i.afy, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.aga = fsub fast <8 x float> %i.abm, %i.afz
  %i.agb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aga, <8 x float> splat (float f0x42B0C0A5))
  %i.agc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.agb, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.agd = fmul fast <8 x float> %i.agc, splat (float f0x3FB8AA3B)
  %i.age = fadd fast <8 x float> %i.agd, splat (float 5.000000e-01) ; 2 uses
  %i.agf = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.age, i32 1) ; 2 uses
  %i.agg = fcmp fast ogt <8 x float> %i.agf, %i.age
  %i.agh = select <8 x i1> %i.agg, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.agi = fsub fast <8 x float> %i.agf, %i.agh   ; 2 uses
  %i.agj = fmul fast <8 x float> %i.agi, splat (float f0x3F317218)
  %i.agk = fsub fast <8 x float> %i.agc, %i.agj   ; 8 uses
  %i.agl = fmul fast <8 x float> %i.agk, %i.agk
  %i.agm = fmul fast <8 x float> %i.agk, splat (float f0x39506967)
  %i.agn = fadd fast <8 x float> %i.agm, splat (float f0x3AB743CE)
  %i.ago = fmul fast <8 x float> %i.agn, %i.agk
  %i.agp = fadd fast <8 x float> %i.ago, splat (float f0x3C088908)
  %i.agq = fmul fast <8 x float> %i.agp, %i.agk
  %i.agr = fadd fast <8 x float> %i.agq, splat (float f0x3D2AA9C1)
  %i.ags = fmul fast <8 x float> %i.agr, %i.agk
  %i.agt = fadd fast <8 x float> %i.ags, splat (float f0x3E2AAAAA)
  %i.agu = fmul fast <8 x float> %i.agt, %i.agk
  %i.agv = fadd fast <8 x float> %i.agu, splat (float 5.000000e-01)
  %i.agw = fmul fast <8 x float> %i.agl, %i.agv
  %i.agx = fadd fast <8 x float> %i.agk, %i.agw
  %i.agy = fadd fast <8 x float> %i.agx, splat (float 1.000000e+00)
  %i.agz = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.agi)
  %i.aha = shl <8 x i32> %i.agz, splat (i32 23)
  %i.ahb = add <8 x i32> %i.aha, splat (i32 1065353216)
  %i.ahc = bitcast <8 x i32> %i.ahb to <8 x float>
  %i.ahd = fmul fast <8 x float> %i.agy, %i.ahc   ; 3 uses
  store <8 x float> %i.acw, ptr %.0314652.i, align 1, !tbaa !54
  store <8 x float> %i.aeh, ptr %i.abh, align 1, !tbaa !54
  store <8 x float> %i.afs, ptr %i.abj, align 1, !tbaa !54
  store <8 x float> %i.ahd, ptr %i.abl, align 1, !tbaa !54
  %i.ahe = shufflevector <8 x float> %i.acw, <8 x float> %i.aeh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.ahf = shufflevector <8 x float> %i.acw, <8 x float> %i.aeh, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ahg = shufflevector <8 x float> %i.afs, <8 x float> %i.ahd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.ahh = shufflevector <8 x float> %i.afs, <8 x float> %i.ahd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ahi = fadd fast <8 x float> %i.ahe, %i.ahf   ; 2 uses
  %i.ahj = fadd fast <8 x float> %i.ahg, %i.ahh   ; 2 uses
  %i.ahk = shufflevector <8 x float> %i.ahi, <8 x float> %i.ahj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ahl = shufflevector <8 x float> %i.ahi, <8 x float> %i.ahj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ahm = shufflevector <8 x float> %i.ahk, <8 x float> %i.ahl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.ahn = shufflevector <8 x float> %i.ahk, <8 x float> %i.ahl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.aho = load <8 x float>, ptr %.0320650.i, align 1, !tbaa !54
  %i.ahp = fadd fast <8 x float> %i.ahn, %i.aho
  %i.ahq = fadd fast <8 x float> %i.ahp, %i.ahm
  store <8 x float> %i.ahq, ptr %.0320650.i, align 1, !tbaa !54
  %i.ahr = getelementptr inbounds nuw i8, ptr %.0314652.i, i64 128 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %.0317651.i, i64 32 ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %.0320650.i, i64 32 ; 2 uses
  %i.ahu = add nuw nsw i32 %.0323649.i, 8         ; 2 uses
  %i.ahv = or disjoint i32 %i.ahu, 7
  %i.ahw = icmp slt i32 %i.ahv, %4
  br i1 %i.ahw, label %.lr.ph654.i, label %.preheader626.i, !llvm.loop !106

.preheader625.i:                                  ; preds = %.lr.ph663.i, %.preheader626.i
  %.1324.lcssa.i = phi i32 [ %.0323.lcssa.i, %.preheader626.i ], [ %i.aoe, %.lr.ph663.i ] ; 2 uses
  %.1321.lcssa.i = phi ptr [ %.0320.lcssa.i, %.preheader626.i ], [ %i.aod, %.lr.ph663.i ]
  %.1318.lcssa.i = phi ptr [ %.0317.lcssa.i, %.preheader626.i ], [ %i.aoc, %.lr.ph663.i ]
  %.1315.lcssa.i = phi ptr [ %.0314.lcssa.i, %.preheader626.i ], [ %i.aob, %.lr.ph663.i ]
  %i.ahx = icmp slt i32 %.1324.lcssa.i, %4
  br i1 %i.ahx, label %.lr.ph672.i, label %._crit_edge673.i

.lr.ph663.i:                                      ; preds = %.preheader626.i, %.lr.ph663.i
  %.1315662.i = phi ptr [ %i.aob, %.lr.ph663.i ], [ %.0314.lcssa.i, %.preheader626.i ] ; 6 uses
  %.1318661.i = phi ptr [ %i.aoc, %.lr.ph663.i ], [ %.0317.lcssa.i, %.preheader626.i ] ; 5 uses
  %.1321660.i = phi ptr [ %i.aod, %.lr.ph663.i ], [ %.0320.lcssa.i, %.preheader626.i ] ; 3 uses
  %.1324659.i = phi i32 [ %i.aoe, %.lr.ph663.i ], [ %.0323.lcssa.i, %.preheader626.i ]
  %i.ahy = load <4 x float>, ptr %.1315662.i, align 1, !tbaa !54
  %i.ahz = getelementptr inbounds nuw i8, ptr %.1315662.i, i64 16 ; 2 uses
  %i.aia = load <4 x float>, ptr %i.ahz, align 1, !tbaa !54
  %i.aib = getelementptr inbounds nuw i8, ptr %.1315662.i, i64 32 ; 2 uses
  %i.aic = load <4 x float>, ptr %i.aib, align 1, !tbaa !54
  %i.aid = getelementptr inbounds nuw i8, ptr %.1315662.i, i64 48 ; 2 uses
  %i.aie = load <4 x float>, ptr %i.aid, align 1, !tbaa !54
  %i.aif = load float, ptr %.1318661.i, align 4, !tbaa !59
  %i.aig = insertelement <4 x float> poison, float %i.aif, i64 0
  %i.aih = shufflevector <4 x float> %i.aig, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aii = fsub fast <4 x float> %i.ahy, %i.aih
  %i.aij = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aii, <4 x float> splat (float f0x42B0C0A5))
  %i.aik = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aij, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ail = fmul fast <4 x float> %i.aik, splat (float f0x3FB8AA3B)
  %i.aim = fadd fast <4 x float> %i.ail, splat (float 5.000000e-01) ; 2 uses
  %i.ain = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aim)
  %i.aio = sitofp fast <4 x i32> %i.ain to <4 x float> ; 2 uses
  %i.aip = fcmp fast olt <4 x float> %i.aim, %i.aio
  %i.aiq = select <4 x i1> %i.aip, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.air = fsub fast <4 x float> %i.aio, %i.aiq   ; 2 uses
  %i.ais = fmul fast <4 x float> %i.air, splat (float f0x3F317218)
  %i.ait = fsub fast <4 x float> %i.aik, %i.ais   ; 8 uses
  %i.aiu = fmul fast <4 x float> %i.ait, %i.ait
  %i.aiv = fmul fast <4 x float> %i.ait, splat (float f0x39506967)
  %i.aiw = fadd fast <4 x float> %i.aiv, splat (float f0x3AB743CE)
  %i.aix = fmul fast <4 x float> %i.aiw, %i.ait
  %i.aiy = fadd fast <4 x float> %i.aix, splat (float f0x3C088908)
  %i.aiz = fmul fast <4 x float> %i.aiy, %i.ait
  %i.aja = fadd fast <4 x float> %i.aiz, splat (float f0x3D2AA9C1)
  %i.ajb = fmul fast <4 x float> %i.aja, %i.ait
  %i.ajc = fadd fast <4 x float> %i.ajb, splat (float f0x3E2AAAAA)
  %i.ajd = fmul fast <4 x float> %i.ajc, %i.ait
  %i.aje = fadd fast <4 x float> %i.ajd, splat (float 5.000000e-01)
  %i.ajf = fmul fast <4 x float> %i.aiu, %i.aje
  %i.ajg = fadd fast <4 x float> %i.ait, %i.ajf
  %i.ajh = fadd fast <4 x float> %i.ajg, splat (float 1.000000e+00)
  %i.aji = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.air)
  %i.ajj = shl <4 x i32> %i.aji, splat (i32 23)
  %i.ajk = add <4 x i32> %i.ajj, splat (i32 1065353216)
  %i.ajl = bitcast <4 x i32> %i.ajk to <4 x float>
  %i.ajm = fmul fast <4 x float> %i.ajh, %i.ajl   ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %.1318661.i, i64 4
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !59
  %i.ajp = insertelement <4 x float> poison, float %i.ajo, i64 0
  %i.ajq = shufflevector <4 x float> %i.ajp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajr = fsub fast <4 x float> %i.aia, %i.ajq
  %i.ajs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ajr, <4 x float> splat (float f0x42B0C0A5))
  %i.ajt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ajs, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aju = fmul fast <4 x float> %i.ajt, splat (float f0x3FB8AA3B)
  %i.ajv = fadd fast <4 x float> %i.aju, splat (float 5.000000e-01) ; 2 uses
  %i.ajw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ajv)
  %i.ajx = sitofp fast <4 x i32> %i.ajw to <4 x float> ; 2 uses
  %i.ajy = fcmp fast olt <4 x float> %i.ajv, %i.ajx
  %i.ajz = select <4 x i1> %i.ajy, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aka = fsub fast <4 x float> %i.ajx, %i.ajz   ; 2 uses
  %i.akb = fmul fast <4 x float> %i.aka, splat (float f0x3F317218)
  %i.akc = fsub fast <4 x float> %i.ajt, %i.akb   ; 8 uses
  %i.akd = fmul fast <4 x float> %i.akc, %i.akc
  %i.ake = fmul fast <4 x float> %i.akc, splat (float f0x39506967)
  %i.akf = fadd fast <4 x float> %i.ake, splat (float f0x3AB743CE)
  %i.akg = fmul fast <4 x float> %i.akf, %i.akc
  %i.akh = fadd fast <4 x float> %i.akg, splat (float f0x3C088908)
  %i.aki = fmul fast <4 x float> %i.akh, %i.akc
  %i.akj = fadd fast <4 x float> %i.aki, splat (float f0x3D2AA9C1)
  %i.akk = fmul fast <4 x float> %i.akj, %i.akc
  %i.akl = fadd fast <4 x float> %i.akk, splat (float f0x3E2AAAAA)
  %i.akm = fmul fast <4 x float> %i.akl, %i.akc
  %i.akn = fadd fast <4 x float> %i.akm, splat (float 5.000000e-01)
  %i.ako = fmul fast <4 x float> %i.akd, %i.akn
  %i.akp = fadd fast <4 x float> %i.akc, %i.ako
  %i.akq = fadd fast <4 x float> %i.akp, splat (float 1.000000e+00)
  %i.akr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aka)
  %i.aks = shl <4 x i32> %i.akr, splat (i32 23)
  %i.akt = add <4 x i32> %i.aks, splat (i32 1065353216)
  %i.aku = bitcast <4 x i32> %i.akt to <4 x float>
  %i.akv = fmul fast <4 x float> %i.akq, %i.aku   ; 3 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %.1318661.i, i64 8
  %i.akx = load float, ptr %i.akw, align 4, !tbaa !59
  %i.aky = insertelement <4 x float> poison, float %i.akx, i64 0
  %i.akz = shufflevector <4 x float> %i.aky, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ala = fsub fast <4 x float> %i.aic, %i.akz
  %i.alb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ala, <4 x float> splat (float f0x42B0C0A5))
  %i.alc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.alb, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ald = fmul fast <4 x float> %i.alc, splat (float f0x3FB8AA3B)
  %i.ale = fadd fast <4 x float> %i.ald, splat (float 5.000000e-01) ; 2 uses
  %i.alf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ale)
  %i.alg = sitofp fast <4 x i32> %i.alf to <4 x float> ; 2 uses
  %i.alh = fcmp fast olt <4 x float> %i.ale, %i.alg
  %i.ali = select <4 x i1> %i.alh, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.alj = fsub fast <4 x float> %i.alg, %i.ali   ; 2 uses
  %i.alk = fmul fast <4 x float> %i.alj, splat (float f0x3F317218)
  %i.all = fsub fast <4 x float> %i.alc, %i.alk   ; 8 uses
  %i.alm = fmul fast <4 x float> %i.all, %i.all
  %i.aln = fmul fast <4 x float> %i.all, splat (float f0x39506967)
  %i.alo = fadd fast <4 x float> %i.aln, splat (float f0x3AB743CE)
  %i.alp = fmul fast <4 x float> %i.alo, %i.all
  %i.alq = fadd fast <4 x float> %i.alp, splat (float f0x3C088908)
  %i.alr = fmul fast <4 x float> %i.alq, %i.all
  %i.als = fadd fast <4 x float> %i.alr, splat (float f0x3D2AA9C1)
  %i.alt = fmul fast <4 x float> %i.als, %i.all
  %i.alu = fadd fast <4 x float> %i.alt, splat (float f0x3E2AAAAA)
  %i.alv = fmul fast <4 x float> %i.alu, %i.all
  %i.alw = fadd fast <4 x float> %i.alv, splat (float 5.000000e-01)
  %i.alx = fmul fast <4 x float> %i.alm, %i.alw
  %i.aly = fadd fast <4 x float> %i.all, %i.alx
  %i.alz = fadd fast <4 x float> %i.aly, splat (float 1.000000e+00)
  %i.ama = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.alj)
  %i.amb = shl <4 x i32> %i.ama, splat (i32 23)
  %i.amc = add <4 x i32> %i.amb, splat (i32 1065353216)
  %i.amd = bitcast <4 x i32> %i.amc to <4 x float>
  %i.ame = fmul fast <4 x float> %i.alz, %i.amd   ; 3 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %.1318661.i, i64 12
  %i.amg = load float, ptr %i.amf, align 4, !tbaa !59
  %i.amh = insertelement <4 x float> poison, float %i.amg, i64 0
  %i.ami = shufflevector <4 x float> %i.amh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amj = fsub fast <4 x float> %i.aie, %i.ami
  %i.amk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.amj, <4 x float> splat (float f0x42B0C0A5))
  %i.aml = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.amk, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.amm = fmul fast <4 x float> %i.aml, splat (float f0x3FB8AA3B)
  %i.amn = fadd fast <4 x float> %i.amm, splat (float 5.000000e-01) ; 2 uses
  %i.amo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.amn)
  %i.amp = sitofp fast <4 x i32> %i.amo to <4 x float> ; 2 uses
  %i.amq = fcmp fast olt <4 x float> %i.amn, %i.amp
  %i.amr = select <4 x i1> %i.amq, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ams = fsub fast <4 x float> %i.amp, %i.amr   ; 2 uses
  %i.amt = fmul fast <4 x float> %i.ams, splat (float f0x3F317218)
  %i.amu = fsub fast <4 x float> %i.aml, %i.amt   ; 8 uses
  %i.amv = fmul fast <4 x float> %i.amu, %i.amu
  %i.amw = fmul fast <4 x float> %i.amu, splat (float f0x39506967)
  %i.amx = fadd fast <4 x float> %i.amw, splat (float f0x3AB743CE)
  %i.amy = fmul fast <4 x float> %i.amx, %i.amu
  %i.amz = fadd fast <4 x float> %i.amy, splat (float f0x3C088908)
  %i.ana = fmul fast <4 x float> %i.amz, %i.amu
  %i.anb = fadd fast <4 x float> %i.ana, splat (float f0x3D2AA9C1)
  %i.anc = fmul fast <4 x float> %i.anb, %i.amu
  %i.and = fadd fast <4 x float> %i.anc, splat (float f0x3E2AAAAA)
  %i.ane = fmul fast <4 x float> %i.and, %i.amu
  %i.anf = fadd fast <4 x float> %i.ane, splat (float 5.000000e-01)
  %i.ang = fmul fast <4 x float> %i.amv, %i.anf
  %i.anh = fadd fast <4 x float> %i.amu, %i.ang
  %i.ani = fadd fast <4 x float> %i.anh, splat (float 1.000000e+00)
  %i.anj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ams)
  %i.ank = shl <4 x i32> %i.anj, splat (i32 23)
  %i.anl = add <4 x i32> %i.ank, splat (i32 1065353216)
  %i.anm = bitcast <4 x i32> %i.anl to <4 x float>
  %i.ann = fmul fast <4 x float> %i.ani, %i.anm   ; 3 uses
  store <4 x float> %i.ajm, ptr %.1315662.i, align 1, !tbaa !54
  store <4 x float> %i.akv, ptr %i.ahz, align 1, !tbaa !54
  store <4 x float> %i.ame, ptr %i.aib, align 1, !tbaa !54
  store <4 x float> %i.ann, ptr %i.aid, align 1, !tbaa !54
  %i.ano = shufflevector <4 x float> %i.ajm, <4 x float> %i.akv, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.anp = shufflevector <4 x float> %i.ame, <4 x float> %i.ann, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.anq = shufflevector <4 x float> %i.ajm, <4 x float> %i.akv, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.anr = shufflevector <4 x float> %i.ame, <4 x float> %i.ann, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ans = shufflevector <4 x float> %i.ano, <4 x float> %i.anp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ant = shufflevector <4 x float> %i.anp, <4 x float> %i.ano, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.anu = shufflevector <4 x float> %i.anq, <4 x float> %i.anr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.anv = shufflevector <4 x float> %i.anr, <4 x float> %i.anq, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.anw = load <4 x float>, ptr %.1321660.i, align 1, !tbaa !54
  %i.anx = fadd fast <4 x float> %i.ant, %i.anw
  %i.any = fadd fast <4 x float> %i.anx, %i.ans
  %i.anz = fadd fast <4 x float> %i.any, %i.anv
  %i.aoa = fadd fast <4 x float> %i.anz, %i.anu
  store <4 x float> %i.aoa, ptr %.1321660.i, align 1, !tbaa !54
  %i.aob = getelementptr inbounds nuw i8, ptr %.1315662.i, i64 64 ; 2 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %.1318661.i, i64 16 ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %.1321660.i, i64 16 ; 2 uses
  %i.aoe = add nuw nsw i32 %.1324659.i, 4         ; 3 uses
  %i.aof = or disjoint i32 %i.aoe, 3
  %i.aog = icmp slt i32 %i.aof, %4
  br i1 %i.aog, label %.lr.ph663.i, label %.preheader625.i, !llvm.loop !107

.lr.ph672.i:                                      ; preds = %.preheader625.i, %.lr.ph672.i
  %.2316671.i = phi ptr [ %i.apx, %.lr.ph672.i ], [ %.1315.lcssa.i, %.preheader625.i ] ; 3 uses
  %.2319670.i = phi ptr [ %i.apy, %.lr.ph672.i ], [ %.1318.lcssa.i, %.preheader625.i ] ; 2 uses
  %.2322669.i = phi ptr [ %i.apz, %.lr.ph672.i ], [ %.1321.lcssa.i, %.preheader625.i ] ; 3 uses
  %.2325668.i = phi i32 [ %i.aqa, %.lr.ph672.i ], [ %.1324.lcssa.i, %.preheader625.i ]
  %i.aoh = load <4 x float>, ptr %.2316671.i, align 1, !tbaa !54
  %i.aoi = load float, ptr %.2319670.i, align 4, !tbaa !59
  %i.aoj = insertelement <4 x float> poison, float %i.aoi, i64 0
  %i.aok = shufflevector <4 x float> %i.aoj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aol = fsub fast <4 x float> %i.aoh, %i.aok
  %i.aom = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aol, <4 x float> splat (float f0x42B0C0A5))
  %i.aon = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aom, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aoo = fmul fast <4 x float> %i.aon, splat (float f0x3FB8AA3B)
  %i.aop = fadd fast <4 x float> %i.aoo, splat (float 5.000000e-01) ; 2 uses
  %i.aoq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aop)
  %i.aor = sitofp fast <4 x i32> %i.aoq to <4 x float> ; 2 uses
  %i.aos = fcmp fast olt <4 x float> %i.aop, %i.aor
  %i.aot = select <4 x i1> %i.aos, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aou = fsub fast <4 x float> %i.aor, %i.aot   ; 2 uses
  %i.aov = fmul fast <4 x float> %i.aou, splat (float f0x3F317218)
  %i.aow = fsub fast <4 x float> %i.aon, %i.aov   ; 8 uses
  %i.aox = fmul fast <4 x float> %i.aow, %i.aow
  %i.aoy = fmul fast <4 x float> %i.aow, splat (float f0x39506967)
  %i.aoz = fadd fast <4 x float> %i.aoy, splat (float f0x3AB743CE)
  %i.apa = fmul fast <4 x float> %i.aoz, %i.aow
  %i.apb = fadd fast <4 x float> %i.apa, splat (float f0x3C088908)
  %i.apc = fmul fast <4 x float> %i.apb, %i.aow
  %i.apd = fadd fast <4 x float> %i.apc, splat (float f0x3D2AA9C1)
  %i.ape = fmul fast <4 x float> %i.apd, %i.aow
  %i.apf = fadd fast <4 x float> %i.ape, splat (float f0x3E2AAAAA)
  %i.apg = fmul fast <4 x float> %i.apf, %i.aow
  %i.aph = fadd fast <4 x float> %i.apg, splat (float 5.000000e-01)
  %i.api = fmul fast <4 x float> %i.aox, %i.aph
  %i.apj = fadd fast <4 x float> %i.aow, %i.api
  %i.apk = fadd fast <4 x float> %i.apj, splat (float 1.000000e+00)
  %i.apl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aou)
  %i.apm = shl <4 x i32> %i.apl, splat (i32 23)
  %i.apn = add <4 x i32> %i.apm, splat (i32 1065353216)
  %i.apo = bitcast <4 x i32> %i.apn to <4 x float>
  %i.app = fmul fast <4 x float> %i.apk, %i.apo   ; 3 uses
  store <4 x float> %i.app, ptr %.2316671.i, align 1, !tbaa !54
  %i.apq = shufflevector <4 x float> %i.app, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.apr = fadd fast <4 x float> %i.apq, %i.app   ; 2 uses
  %i.aps = extractelement <4 x float> %i.apr, i64 1
  %i.apt = extractelement <4 x float> %i.apr, i64 0
  %i.apu = load float, ptr %.2322669.i, align 4, !tbaa !59
  %i.apv = fadd fast float %i.aps, %i.apu
  %i.apw = fadd fast float %i.apv, %i.apt
  store float %i.apw, ptr %.2322669.i, align 4, !tbaa !59
  %i.apx = getelementptr inbounds nuw i8, ptr %.2316671.i, i64 16
  %i.apy = getelementptr inbounds nuw i8, ptr %.2319670.i, i64 4
  %i.apz = getelementptr inbounds nuw i8, ptr %.2322669.i, i64 4
  %i.aqa = add nuw nsw i32 %.2325668.i, 1         ; 2 uses
  %exitcond737.not.i = icmp eq i32 %i.aqa, %4
  br i1 %exitcond737.not.i, label %._crit_edge673.i, label %.lr.ph672.i, !llvm.loop !108

._crit_edge673.i:                                 ; preds = %.lr.ph672.i, %.preheader625.i
  %indvars.iv.next739.i = add nuw nsw i64 %indvars.iv738.i, 1 ; 2 uses
  %exitcond742.not.i = icmp eq i64 %indvars.iv.next739.i, %wide.trip.count.i66
  br i1 %exitcond742.not.i, label %.preheader624.i, label %.preheader627.i, !llvm.loop !109

.preheader623.loopexit.i.unr-lcssa:               ; preds = %.lr.ph678.i
  %i.aqb = and i32 %i.aay, 8
  %lcmp.mod616.not.not = icmp eq i32 %i.aqb, 0
  br i1 %lcmp.mod616.not.not, label %.lr.ph678.i.epil.preheader, label %.preheader623.loopexit.i

.lr.ph678.i.epil.preheader:                       ; preds = %.preheader623.loopexit.i.unr-lcssa, %.lr.ph678.i.preheader
  %.0326677.i.epil.init = phi ptr [ %6, %.lr.ph678.i.preheader ], [ %i.aqw, %.preheader623.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod618 = trunc i32 %i.aba to i1
  tail call void @llvm.assume(i1 %lcmp.mod618)
  %i.aqc = load <8 x float>, ptr %.0326677.i.epil.init, align 1, !tbaa !54 ; 2 uses
  %i.aqd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.aqc) ; 2 uses
  %i.aqe = fmul fast <8 x float> %i.aqd, %i.aqc
  %i.aqf = fsub fast <8 x float> splat (float 2.000000e+00), %i.aqe
  %i.aqg = fmul fast <8 x float> %i.aqf, %i.aqd
  store <8 x float> %i.aqg, ptr %.0326677.i.epil.init, align 1, !tbaa !54
  %i.aqh = getelementptr inbounds nuw i8, ptr %.0326677.i.epil.init, i64 32
  br label %.preheader623.loopexit.i

.preheader623.loopexit.i:                         ; preds = %.preheader623.loopexit.i.unr-lcssa, %.lr.ph678.i.epil.preheader
  %.lcssa539 = phi ptr [ %i.aqw, %.preheader623.loopexit.i.unr-lcssa ], [ %i.aqh, %.lr.ph678.i.epil.preheader ]
  %i.aqi = and i32 %4, 2147483640
  br label %.preheader623.i

.preheader623.i:                                  ; preds = %.preheader623.loopexit.i, %.preheader624.i
  %.0339.lcssa.i = phi i32 [ 0, %.preheader624.i ], [ %i.aqi, %.preheader623.loopexit.i ] ; 3 uses
  %.0326.lcssa.i = phi ptr [ %6, %.preheader624.i ], [ %.lcssa539, %.preheader623.loopexit.i ] ; 2 uses
  %i.aqj = or disjoint i32 %.0339.lcssa.i, 3
  %i.aqk = icmp slt i32 %i.aqj, %4
  br i1 %i.aqk, label %.lr.ph683.i, label %.preheader622.i

.lr.ph678.i:                                      ; preds = %.lr.ph678.i, %.lr.ph678.i.preheader.new
  %.0326677.i = phi ptr [ %6, %.lr.ph678.i.preheader.new ], [ %i.aqw, %.lr.ph678.i ] ; 4 uses
  %niter620 = phi i32 [ 0, %.lr.ph678.i.preheader.new ], [ %niter620.next.1, %.lr.ph678.i ]
  %i.aql = load <8 x float>, ptr %.0326677.i, align 1, !tbaa !54 ; 2 uses
  %i.aqm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.aql) ; 2 uses
  %i.aqn = fmul fast <8 x float> %i.aqm, %i.aql
  %i.aqo = fsub fast <8 x float> splat (float 2.000000e+00), %i.aqn
  %i.aqp = fmul fast <8 x float> %i.aqo, %i.aqm
  store <8 x float> %i.aqp, ptr %.0326677.i, align 1, !tbaa !54
  %i.aqq = getelementptr inbounds nuw i8, ptr %.0326677.i, i64 32 ; 2 uses
  %i.aqr = load <8 x float>, ptr %i.aqq, align 1, !tbaa !54 ; 2 uses
  %i.aqs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.aqr) ; 2 uses
  %i.aqt = fmul fast <8 x float> %i.aqs, %i.aqr
  %i.aqu = fsub fast <8 x float> splat (float 2.000000e+00), %i.aqt
  %i.aqv = fmul fast <8 x float> %i.aqu, %i.aqs
  store <8 x float> %i.aqv, ptr %i.aqq, align 1, !tbaa !54
  %i.aqw = getelementptr inbounds nuw i8, ptr %.0326677.i, i64 64 ; 3 uses
  %niter620.next.1 = add i32 %niter620, 2         ; 2 uses
  %niter620.ncmp.1.not = icmp eq i32 %niter620.next.1, %unroll_iter619
  br i1 %niter620.ncmp.1.not, label %.preheader623.loopexit.i.unr-lcssa, label %.lr.ph678.i, !llvm.loop !110

.preheader622.i:                                  ; preds = %.lr.ph683.i, %.preheader623.i
  %.1340.lcssa.i = phi i32 [ %.0339.lcssa.i, %.preheader623.i ], [ %i.arp, %.lr.ph683.i ] ; 4 uses
  %.1327.lcssa.i = phi ptr [ %.0326.lcssa.i, %.preheader623.i ], [ %i.aro, %.lr.ph683.i ] ; 3 uses
  %i.aqx = icmp slt i32 %.1340.lcssa.i, %4
  br i1 %i.aqx, label %.lr.ph688.i.preheader, label %.preheader621.i

.lr.ph688.i.preheader:                            ; preds = %.preheader622.i
  %i.aqy = xor i32 %.1340.lcssa.i, -1
  %i.aqz = add i32 %4, %i.aqy                     ; 2 uses
  %i.ara = zext i32 %i.aqz to i64
  %i.arb = add nuw nsw i64 %i.ara, 1              ; 2 uses
  %min.iters.check495 = icmp ult i32 %i.aqz, 7
  br i1 %min.iters.check495, label %.lr.ph688.i.preheader536, label %vector.ph496

vector.ph496:                                     ; preds = %.lr.ph688.i.preheader
  %n.vec497 = and i64 %i.arb, 8589934584          ; 4 uses
  %i.arc = shl nuw nsw i64 %n.vec497, 2
  %i.ard = getelementptr i8, ptr %.1327.lcssa.i, i64 %i.arc
  %i.are = trunc i64 %n.vec497 to i32
  %i.arf = add i32 %.1340.lcssa.i, %i.are
  br label %vector.body498

vector.body498:                                   ; preds = %vector.body498, %vector.ph496
  %index499 = phi i64 [ 0, %vector.ph496 ], [ %index.next502, %vector.body498 ] ; 2 uses
  %i.arg = shl i64 %index499, 2
  %next.gep500 = getelementptr i8, ptr %.1327.lcssa.i, i64 %i.arg ; 2 uses
  %wide.load501 = load <8 x float>, ptr %next.gep500, align 4, !tbaa !59
  %i.arh = fdiv fast <8 x float> splat (float 1.000000e+00), %wide.load501
  store <8 x float> %i.arh, ptr %next.gep500, align 4, !tbaa !59
  %index.next502 = add nuw i64 %index499, 8       ; 2 uses
  %i.ari = icmp eq i64 %index.next502, %n.vec497
  br i1 %i.ari, label %middle.block503, label %vector.body498, !llvm.loop !111

middle.block503:                                  ; preds = %vector.body498
  %cmp.n504 = icmp eq i64 %i.arb, %n.vec497
  br i1 %cmp.n504, label %.preheader621.i, label %.lr.ph688.i.preheader536

.lr.ph688.i.preheader536:                         ; preds = %.lr.ph688.i.preheader, %middle.block503
  %.2328687.i.ph = phi ptr [ %.1327.lcssa.i, %.lr.ph688.i.preheader ], [ %i.ard, %middle.block503 ]
  %.2341686.i.ph = phi i32 [ %.1340.lcssa.i, %.lr.ph688.i.preheader ], [ %i.arf, %middle.block503 ]
  br label %.lr.ph688.i

.lr.ph683.i:                                      ; preds = %.preheader623.i, %.lr.ph683.i
  %.1327682.i = phi ptr [ %i.aro, %.lr.ph683.i ], [ %.0326.lcssa.i, %.preheader623.i ] ; 3 uses
  %.1340681.i = phi i32 [ %i.arp, %.lr.ph683.i ], [ %.0339.lcssa.i, %.preheader623.i ]
  %i.arj = load <4 x float>, ptr %.1327682.i, align 1, !tbaa !54 ; 2 uses
  %i.ark = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.arj) ; 2 uses
  %i.arl = fmul fast <4 x float> %i.ark, %i.arj
  %i.arm = fsub fast <4 x float> splat (float 2.000000e+00), %i.arl
  %i.arn = fmul fast <4 x float> %i.arm, %i.ark
  store <4 x float> %i.arn, ptr %.1327682.i, align 1, !tbaa !54
  %i.aro = getelementptr inbounds nuw i8, ptr %.1327682.i, i64 16 ; 2 uses
  %i.arp = add nuw nsw i32 %.1340681.i, 4         ; 3 uses
  %i.arq = or disjoint i32 %i.arp, 3
  %i.arr = icmp slt i32 %i.arq, %4
  br i1 %i.arr, label %.lr.ph683.i, label %.preheader622.i, !llvm.loop !112

.preheader621.i:                                  ; preds = %.lr.ph688.i, %middle.block503, %.preheader622.i
  br i1 %i.xl, label %.lr.ph710.i, label %_ZN4ncnnL13softmax_pack8EPfimiS0_S0_.exit

.lr.ph710.i:                                      ; preds = %.preheader621.i
  %i.ars = and i32 %4, -8
  %wide.trip.count748.i = zext nneg i32 %1 to i64
  br label %bb.g

.lr.ph688.i:                                      ; preds = %.lr.ph688.i.preheader536, %.lr.ph688.i
  %.2328687.i = phi ptr [ %i.arv, %.lr.ph688.i ], [ %.2328687.i.ph, %.lr.ph688.i.preheader536 ] ; 3 uses
  %.2341686.i = phi i32 [ %i.arw, %.lr.ph688.i ], [ %.2341686.i.ph, %.lr.ph688.i.preheader536 ]
  %i.art = load float, ptr %.2328687.i, align 4, !tbaa !59
  %i.aru = fdiv fast float 1.000000e+00, %i.art
  store float %i.aru, ptr %.2328687.i, align 4, !tbaa !59
  %i.arv = getelementptr inbounds nuw i8, ptr %.2328687.i, i64 4
  %i.arw = add nuw nsw i32 %.2341686.i, 1         ; 2 uses
  %exitcond743.not.i = icmp eq i32 %i.arw, %4
  br i1 %exitcond743.not.i, label %.preheader621.i, label %.lr.ph688.i, !llvm.loop !113

bb.g:                                             ; preds = %._crit_edge708.i, %.lr.ph710.i
  %indvars.iv745.i = phi i64 [ 0, %.lr.ph710.i ], [ %indvars.iv.next746.i, %._crit_edge708.i ] ; 2 uses
  %i.arx = mul i64 %indvars.iv745.i, %3
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.arx ; 2 uses
  br i1 %i.a, label %.lr.ph693.i, label %.preheader620.i

.preheader620.i:                                  ; preds = %.lr.ph693.i, %bb.g
  %.0335.lcssa.i = phi ptr [ %i.ary, %bb.g ], [ %i.atn, %.lr.ph693.i ] ; 2 uses
  %.0332.lcssa.i = phi ptr [ %6, %bb.g ], [ %i.ato, %.lr.ph693.i ] ; 2 uses
  %.0329.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.ars, %.lr.ph693.i ] ; 3 uses
  %i.arz = or disjoint i32 %.0329.lcssa.i, 3
  %i.asa = icmp slt i32 %i.arz, %4
  br i1 %i.asa, label %.lr.ph700.i, label %.preheader.i64

.lr.ph693.i:                                      ; preds = %bb.g, %.lr.ph693.i
  %.0329691.i = phi i32 [ %i.atp, %.lr.ph693.i ], [ 0, %bb.g ]
  %.0332690.i = phi ptr [ %i.ato, %.lr.ph693.i ], [ %6, %bb.g ] ; 9 uses
  %.0335689.i = phi ptr [ %i.atn, %.lr.ph693.i ], [ %i.ary, %bb.g ] ; 6 uses
  %i.asb = load <8 x float>, ptr %.0335689.i, align 1, !tbaa !54
  %i.asc = getelementptr inbounds nuw i8, ptr %.0335689.i, i64 32 ; 2 uses
  %i.asd = load <8 x float>, ptr %i.asc, align 1, !tbaa !54
  %i.ase = getelementptr inbounds nuw i8, ptr %.0335689.i, i64 64 ; 2 uses
  %i.asf = load <8 x float>, ptr %i.ase, align 1, !tbaa !54
  %i.asg = getelementptr inbounds nuw i8, ptr %.0335689.i, i64 96 ; 2 uses
  %i.ash = load <8 x float>, ptr %i.asg, align 1, !tbaa !54
  %i.asi = load float, ptr %.0332690.i, align 4, !tbaa !59
  %i.asj = insertelement <4 x float> poison, float %i.asi, i64 0
  %i.ask = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 4
  %i.asl = load float, ptr %i.ask, align 4, !tbaa !59
  %i.asm = insertelement <4 x float> poison, float %i.asl, i64 0
  %i.asn = shufflevector <4 x float> %i.asj, <4 x float> %i.asm, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.aso = fmul fast <8 x float> %i.asn, %i.asb
  %i.asp = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 8
  %i.asq = load float, ptr %i.asp, align 4, !tbaa !59
  %i.asr = insertelement <4 x float> poison, float %i.asq, i64 0
  %i.ass = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 12
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !59
  %i.asu = insertelement <4 x float> poison, float %i.ast, i64 0
  %i.asv = shufflevector <4 x float> %i.asr, <4 x float> %i.asu, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.asw = fmul fast <8 x float> %i.asv, %i.asd
  %i.asx = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 16
  %i.asy = load float, ptr %i.asx, align 4, !tbaa !59
  %i.asz = insertelement <4 x float> poison, float %i.asy, i64 0
  %i.ata = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 20
  %i.atb = load float, ptr %i.ata, align 4, !tbaa !59
  %i.atc = insertelement <4 x float> poison, float %i.atb, i64 0
  %i.atd = shufflevector <4 x float> %i.asz, <4 x float> %i.atc, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
end_hunk_2
begin_hunk_3_@_ZN4ncnnL7softmaxEPfiimiS0_S0_:bb.a
  %i.ayt = fcmp fast olt <8 x float> %wide.load366, %wide.load370
  %i.ayu = fcmp fast olt <8 x float> %wide.load367, %wide.load371
  %i.ayv = select <8 x i1> %i.ayr, <8 x float> %wide.load368, <8 x float> %wide.load
  %i.ayw = select <8 x i1> %i.ays, <8 x float> %wide.load369, <8 x float> %wide.load365
  %i.ayx = select <8 x i1> %i.ayt, <8 x float> %wide.load370, <8 x float> %wide.load366
  %i.ayy = select <8 x i1> %i.ayu, <8 x float> %wide.load371, <8 x float> %wide.load367
  store <8 x float> %i.ayv, ptr %next.gep364, align 4, !tbaa !59, !alias.scope !121, !noalias !124
  store <8 x float> %i.ayw, ptr %i.ayl, align 4, !tbaa !59, !alias.scope !121, !noalias !124
  store <8 x float> %i.ayx, ptr %i.aym, align 4, !tbaa !59, !alias.scope !121, !noalias !124
  store <8 x float> %i.ayy, ptr %i.ayn, align 4, !tbaa !59, !alias.scope !121, !noalias !124
  %index.next372 = add nuw i64 %index362, 32      ; 2 uses
  %i.ayz = icmp eq i64 %index.next372, %n.vec360
  br i1 %i.ayz, label %middle.block373, label %vector.body361, !llvm.loop !126

middle.block373:                                  ; preds = %vector.body361
  %cmp.n374 = icmp eq i64 %i.axz, %n.vec360
  br i1 %cmp.n374, label %._crit_edge.i85, label %vec.epilog.iter.check380

vec.epilog.iter.check380:                         ; preds = %middle.block373
  %min.epilog.iters.check381 = icmp eq i64 %i.aye, 0
  br i1 %min.epilog.iters.check381, label %.lr.ph266.i.preheader, label %vec.epilog.ph382, !prof !64

vec.epilog.ph382:                                 ; preds = %vector.main.loop.iter.check357, %vec.epilog.iter.check380
  %vec.epilog.resume.val375 = phi i64 [ %n.vec360, %vec.epilog.iter.check380 ], [ 0, %vector.main.loop.iter.check357 ]
  %n.vec383 = and i64 %i.axz, 8589934584          ; 4 uses
  %i.aza = shl nuw nsw i64 %n.vec383, 2           ; 2 uses
  %i.azb = getelementptr i8, ptr %.1.lcssa.i84, i64 %i.aza
  %i.azc = getelementptr i8, ptr %.1141.lcssa.i, i64 %i.aza
  %i.azd = trunc i64 %n.vec383 to i32
  %i.aze = add i32 %.1144.lcssa.i, %i.azd
  br label %vec.epilog.vector.body384

vec.epilog.vector.body384:                        ; preds = %vec.epilog.vector.body384, %vec.epilog.ph382
  %index385 = phi i64 [ %vec.epilog.resume.val375, %vec.epilog.ph382 ], [ %index.next390, %vec.epilog.vector.body384 ] ; 2 uses
  %i.azf = shl i64 %index385, 2                   ; 2 uses
  %next.gep386 = getelementptr i8, ptr %.1.lcssa.i84, i64 %i.azf
  %next.gep387 = getelementptr i8, ptr %.1141.lcssa.i, i64 %i.azf ; 2 uses
  %wide.load388 = load <8 x float>, ptr %next.gep387, align 4, !tbaa !59, !alias.scope !121, !noalias !124 ; 2 uses
  %wide.load389 = load <8 x float>, ptr %next.gep386, align 4, !tbaa !59, !alias.scope !124 ; 2 uses
  %i.azg = fcmp fast olt <8 x float> %wide.load388, %wide.load389
  %i.azh = select <8 x i1> %i.azg, <8 x float> %wide.load389, <8 x float> %wide.load388
  store <8 x float> %i.azh, ptr %next.gep387, align 4, !tbaa !59, !alias.scope !121, !noalias !124
  %index.next390 = add nuw i64 %index385, 8       ; 2 uses
  %i.azi = icmp eq i64 %index.next390, %n.vec383
  br i1 %i.azi, label %vec.epilog.middle.block391, label %vec.epilog.vector.body384, !llvm.loop !127

vec.epilog.middle.block391:                       ; preds = %vec.epilog.vector.body384
  %cmp.n392 = icmp eq i64 %i.axz, %n.vec383
  br i1 %cmp.n392, label %._crit_edge.i85, label %.lr.ph266.i.preheader

.lr.ph266.i.preheader:                            ; preds = %vector.memcheck, %iter.check378, %vec.epilog.iter.check380, %vec.epilog.middle.block391
  %.2265.i.ph = phi ptr [ %.1.lcssa.i84, %iter.check378 ], [ %.1.lcssa.i84, %vector.memcheck ], [ %i.ayg, %vec.epilog.iter.check380 ], [ %i.azb, %vec.epilog.middle.block391 ] ; 2 uses
  %.2142264.i.ph = phi ptr [ %.1141.lcssa.i, %iter.check378 ], [ %.1141.lcssa.i, %vector.memcheck ], [ %i.ayh, %vec.epilog.iter.check380 ], [ %i.azc, %vec.epilog.middle.block391 ] ; 2 uses
  %.2145263.i.ph = phi i32 [ %.1144.lcssa.i, %iter.check378 ], [ %.1144.lcssa.i, %vector.memcheck ], [ %i.ayj, %vec.epilog.iter.check380 ], [ %i.aze, %vec.epilog.middle.block391 ] ; 4 uses
  %i.azj = sub i32 %4, %.2145263.i.ph
  %xtraiter588 = and i32 %i.azj, 3                ; 2 uses
  %lcmp.mod589.not = icmp eq i32 %xtraiter588, 0
  br i1 %lcmp.mod589.not, label %.lr.ph266.i.prol.loopexit, label %.lr.ph266.i.prol

.lr.ph266.i.prol:                                 ; preds = %.lr.ph266.i.preheader, %.lr.ph266.i.prol
  %.2265.i.prol = phi ptr [ %i.azo, %.lr.ph266.i.prol ], [ %.2265.i.ph, %.lr.ph266.i.preheader ] ; 2 uses
  %.2142264.i.prol = phi ptr [ %i.azp, %.lr.ph266.i.prol ], [ %.2142264.i.ph, %.lr.ph266.i.preheader ] ; 3 uses
  %.2145263.i.prol = phi i32 [ %i.azq, %.lr.ph266.i.prol ], [ %.2145263.i.ph, %.lr.ph266.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph266.i.prol ], [ 0, %.lr.ph266.i.preheader ]
  %i.azk = load float, ptr %.2142264.i.prol, align 4, !tbaa !59 ; 2 uses
  %i.azl = load float, ptr %.2265.i.prol, align 4, !tbaa !59 ; 2 uses
  %i.azm = fcmp fast olt float %i.azk, %i.azl
  %i.azn = select i1 %i.azm, float %i.azl, float %i.azk
  store float %i.azn, ptr %.2142264.i.prol, align 4, !tbaa !59
  %i.azo = getelementptr inbounds nuw i8, ptr %.2265.i.prol, i64 4 ; 2 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %.2142264.i.prol, i64 4 ; 2 uses
  %i.azq = add nuw nsw i32 %.2145263.i.prol, 1    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter588
  br i1 %prol.iter.cmp.not, label %.lr.ph266.i.prol.loopexit, label %.lr.ph266.i.prol, !llvm.loop !128

.lr.ph266.i.prol.loopexit:                        ; preds = %.lr.ph266.i.prol, %.lr.ph266.i.preheader
  %.2265.i.unr = phi ptr [ %.2265.i.ph, %.lr.ph266.i.preheader ], [ %i.azo, %.lr.ph266.i.prol ]
  %.2142264.i.unr = phi ptr [ %.2142264.i.ph, %.lr.ph266.i.preheader ], [ %i.azp, %.lr.ph266.i.prol ]
  %.2145263.i.unr = phi i32 [ %.2145263.i.ph, %.lr.ph266.i.preheader ], [ %i.azq, %.lr.ph266.i.prol ]
  %i.azr = sub i32 %.2145263.i.ph, %4
  %i.azs = icmp ugt i32 %i.azr, -4
  br i1 %i.azs, label %._crit_edge.i85, label %.lr.ph266.i

.lr.ph259.i:                                      ; preds = %.preheader250.i, %.lr.ph259.i
  %.1258.i = phi ptr [ %i.azw, %.lr.ph259.i ], [ %.0139.lcssa.i, %.preheader250.i ] ; 2 uses
  %.1141257.i = phi ptr [ %i.azx, %.lr.ph259.i ], [ %.0140.lcssa.i, %.preheader250.i ] ; 3 uses
  %.1144256.i = phi i32 [ %i.azy, %.lr.ph259.i ], [ %.0143.lcssa.i, %.preheader250.i ]
  %i.azt = load <4 x float>, ptr %.1258.i, align 1, !tbaa !54
  %i.azu = load <4 x float>, ptr %.1141257.i, align 1, !tbaa !54
  %i.azv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.azu, <4 x float> nofpclass(nan inf) %i.azt)
  store <4 x float> %i.azv, ptr %.1141257.i, align 1, !tbaa !54
  %i.azw = getelementptr inbounds nuw i8, ptr %.1258.i, i64 16 ; 2 uses
  %i.azx = getelementptr inbounds nuw i8, ptr %.1141257.i, i64 16 ; 2 uses
  %i.azy = add nuw nsw i32 %.1144256.i, 4         ; 3 uses
  %i.azz = or disjoint i32 %i.azy, 3
  %i.baa = icmp slt i32 %i.azz, %4
  br i1 %i.baa, label %.lr.ph259.i, label %.preheader249.i, !llvm.loop !129

.lr.ph266.i:                                      ; preds = %.lr.ph266.i.prol.loopexit, %.lr.ph266.i
  %.2265.i = phi ptr [ %i.bax, %.lr.ph266.i ], [ %.2265.i.unr, %.lr.ph266.i.prol.loopexit ] ; 5 uses
  %.2142264.i = phi ptr [ %i.bay, %.lr.ph266.i ], [ %.2142264.i.unr, %.lr.ph266.i.prol.loopexit ] ; 6 uses
  %.2145263.i = phi i32 [ %i.baz, %.lr.ph266.i ], [ %.2145263.i.unr, %.lr.ph266.i.prol.loopexit ]
  %i.bab = load float, ptr %.2142264.i, align 4, !tbaa !59 ; 2 uses
  %i.bac = load float, ptr %.2265.i, align 4, !tbaa !59 ; 2 uses
  %i.bad = fcmp fast olt float %i.bab, %i.bac
  %i.bae = select i1 %i.bad, float %i.bac, float %i.bab
  store float %i.bae, ptr %.2142264.i, align 4, !tbaa !59
  %i.baf = getelementptr inbounds nuw i8, ptr %.2265.i, i64 4
  %i.bag = getelementptr inbounds nuw i8, ptr %.2142264.i, i64 4 ; 2 uses
  %i.bah = load float, ptr %i.bag, align 4, !tbaa !59 ; 2 uses
  %i.bai = load float, ptr %i.baf, align 4, !tbaa !59 ; 2 uses
  %i.baj = fcmp fast olt float %i.bah, %i.bai
  %i.bak = select i1 %i.baj, float %i.bai, float %i.bah
  store float %i.bak, ptr %i.bag, align 4, !tbaa !59
  %i.bal = getelementptr inbounds nuw i8, ptr %.2265.i, i64 8
  %i.bam = getelementptr inbounds nuw i8, ptr %.2142264.i, i64 8 ; 2 uses
  %i.ban = load float, ptr %i.bam, align 4, !tbaa !59 ; 2 uses
  %i.bao = load float, ptr %i.bal, align 4, !tbaa !59 ; 2 uses
  %i.bap = fcmp fast olt float %i.ban, %i.bao
  %i.baq = select i1 %i.bap, float %i.bao, float %i.ban
  store float %i.baq, ptr %i.bam, align 4, !tbaa !59
  %i.bar = getelementptr inbounds nuw i8, ptr %.2265.i, i64 12
  %i.bas = getelementptr inbounds nuw i8, ptr %.2142264.i, i64 12 ; 2 uses
  %i.bat = load float, ptr %i.bas, align 4, !tbaa !59 ; 2 uses
  %i.bau = load float, ptr %i.bar, align 4, !tbaa !59 ; 2 uses
  %i.bav = fcmp fast olt float %i.bat, %i.bau
  %i.baw = select i1 %i.bav, float %i.bau, float %i.bat
  store float %i.baw, ptr %i.bas, align 4, !tbaa !59
  %i.bax = getelementptr inbounds nuw i8, ptr %.2265.i, i64 16
  %i.bay = getelementptr inbounds nuw i8, ptr %.2142264.i, i64 16
  %i.baz = add nuw nsw i32 %.2145263.i, 4         ; 2 uses
  %exitcond.not.i89.3 = icmp eq i32 %i.baz, %4
  br i1 %exitcond.not.i89.3, label %._crit_edge.i85, label %.lr.ph266.i, !llvm.loop !130

._crit_edge.i85:                                  ; preds = %.lr.ph266.i.prol.loopexit, %.lr.ph266.i, %middle.block373, %vec.epilog.middle.block391, %.preheader249.i
  %indvars.iv.next.i86 = add nuw nsw i64 %indvars.iv.i83, 1 ; 2 uses
  %exitcond357.not.i = icmp eq i64 %indvars.iv.next.i86, %wide.trip.count.i82
  br i1 %exitcond357.not.i, label %.preheader248.i, label %bb.i, !llvm.loop !131

.preheader245.i:                                  ; preds = %._crit_edge294.i, %bb.h
  br i1 %i.a, label %.lr.ph299.i.preheader, label %.preheader244.i

.lr.ph299.i.preheader:                            ; preds = %.preheader245.i
  %i.bba = add nsw i32 %4, -8                     ; 2 uses
  %i.bbb = lshr i32 %i.bba, 3                     ; 2 uses
  %i.bbc = add nuw nsw i32 %i.bbb, 1              ; 2 uses
  %i.bbd = icmp eq i32 %i.bbb, 0
  br i1 %i.bbd, label %.lr.ph299.i.epil.preheader, label %.lr.ph299.i.preheader.new

.lr.ph299.i.preheader.new:                        ; preds = %.lr.ph299.i.preheader
  %unroll_iter598 = and i32 %i.bbc, 1073741822
  br label %.lr.ph299.i

.preheader248.i:                                  ; preds = %._crit_edge.i85, %._crit_edge294.i
  %indvars.iv359.i = phi i64 [ %indvars.iv.next360.i, %._crit_edge294.i ], [ 0, %._crit_edge.i85 ] ; 2 uses
  %i.bbe = mul i64 %indvars.iv359.i, %3
  %i.bbf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bbe ; 2 uses
  br i1 %i.a, label %.lr.ph275.i, label %.preheader247.i

.preheader247.i:                                  ; preds = %.lr.ph275.i, %.preheader248.i
  %.0172.lcssa.i = phi i32 [ 0, %.preheader248.i ], [ %i.awn, %.lr.ph275.i ] ; 3 uses
  %.0169.lcssa.i = phi ptr [ %6, %.preheader248.i ], [ %i.bcs, %.lr.ph275.i ] ; 2 uses
  %.0166.lcssa.i = phi ptr [ %5, %.preheader248.i ], [ %i.bcr, %.lr.ph275.i ] ; 2 uses
  %.0163.lcssa.i = phi ptr [ %i.bbf, %.preheader248.i ], [ %i.bcq, %.lr.ph275.i ] ; 2 uses
  %i.bbg = or disjoint i32 %.0172.lcssa.i, 3
  %i.bbh = icmp slt i32 %i.bbg, %4
  br i1 %i.bbh, label %.lr.ph284.i, label %.preheader246.i

.lr.ph275.i:                                      ; preds = %.preheader248.i, %.lr.ph275.i
  %.0163273.i = phi ptr [ %i.bcq, %.lr.ph275.i ], [ %i.bbf, %.preheader248.i ] ; 3 uses
  %.0166272.i = phi ptr [ %i.bcr, %.lr.ph275.i ], [ %5, %.preheader248.i ] ; 2 uses
  %.0169271.i = phi ptr [ %i.bcs, %.lr.ph275.i ], [ %6, %.preheader248.i ] ; 3 uses
  %.0172270.i = phi i32 [ %i.bct, %.lr.ph275.i ], [ 0, %.preheader248.i ]
  %i.bbi = load <8 x float>, ptr %.0163273.i, align 1, !tbaa !54
  %i.bbj = load <8 x float>, ptr %.0166272.i, align 1, !tbaa !54
  %i.bbk = load <8 x float>, ptr %.0169271.i, align 1, !tbaa !54
  %i.bbl = fsub fast <8 x float> %i.bbi, %i.bbj
  %i.bbm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bbl, <8 x float> splat (float f0x42B0C0A5))
  %i.bbn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bbm, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bbo = fmul fast <8 x float> %i.bbn, splat (float f0x3FB8AA3B)
  %i.bbp = fadd fast <8 x float> %i.bbo, splat (float 5.000000e-01) ; 2 uses
  %i.bbq = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bbp, i32 1) ; 2 uses
  %i.bbr = fcmp fast ogt <8 x float> %i.bbq, %i.bbp
  %i.bbs = select <8 x i1> %i.bbr, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bbt = fsub fast <8 x float> %i.bbq, %i.bbs   ; 2 uses
  %i.bbu = fmul fast <8 x float> %i.bbt, splat (float f0x3F317218)
  %i.bbv = fsub fast <8 x float> %i.bbn, %i.bbu   ; 8 uses
  %i.bbw = fmul fast <8 x float> %i.bbv, %i.bbv
  %i.bbx = fmul fast <8 x float> %i.bbv, splat (float f0x39506967)
  %i.bby = fadd fast <8 x float> %i.bbx, splat (float f0x3AB743CE)
  %i.bbz = fmul fast <8 x float> %i.bby, %i.bbv
  %i.bca = fadd fast <8 x float> %i.bbz, splat (float f0x3C088908)
  %i.bcb = fmul fast <8 x float> %i.bca, %i.bbv
  %i.bcc = fadd fast <8 x float> %i.bcb, splat (float f0x3D2AA9C1)
  %i.bcd = fmul fast <8 x float> %i.bcc, %i.bbv
  %i.bce = fadd fast <8 x float> %i.bcd, splat (float f0x3E2AAAAA)
  %i.bcf = fmul fast <8 x float> %i.bce, %i.bbv
  %i.bcg = fadd fast <8 x float> %i.bcf, splat (float 5.000000e-01)
  %i.bch = fmul fast <8 x float> %i.bbw, %i.bcg
  %i.bci = fadd fast <8 x float> %i.bbv, %i.bch
  %i.bcj = fadd fast <8 x float> %i.bci, splat (float 1.000000e+00)
  %i.bck = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bbt)
  %i.bcl = shl <8 x i32> %i.bck, splat (i32 23)
  %i.bcm = add <8 x i32> %i.bcl, splat (i32 1065353216)
  %i.bcn = bitcast <8 x i32> %i.bcm to <8 x float>
  %i.bco = fmul fast <8 x float> %i.bcj, %i.bcn   ; 2 uses
  store <8 x float> %i.bco, ptr %.0163273.i, align 1, !tbaa !54
  %i.bcp = fadd fast <8 x float> %i.bco, %i.bbk
  store <8 x float> %i.bcp, ptr %.0169271.i, align 1, !tbaa !54
  %i.bcq = getelementptr inbounds nuw i8, ptr %.0163273.i, i64 32 ; 2 uses
  %i.bcr = getelementptr inbounds nuw i8, ptr %.0166272.i, i64 32 ; 2 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %.0169271.i, i64 32 ; 2 uses
  %i.bct = add nuw nsw i32 %.0172270.i, 8         ; 2 uses
  %i.bcu = or disjoint i32 %i.bct, 7
  %i.bcv = icmp slt i32 %i.bcu, %4
  br i1 %i.bcv, label %.lr.ph275.i, label %.preheader247.i, !llvm.loop !132

.preheader246.i:                                  ; preds = %.lr.ph284.i, %.preheader247.i
  %.1173.lcssa.i = phi i32 [ %.0172.lcssa.i, %.preheader247.i ], [ %i.bfo, %.lr.ph284.i ] ; 6 uses
  %.1170.lcssa.i = phi ptr [ %.0169.lcssa.i, %.preheader247.i ], [ %i.bfn, %.lr.ph284.i ] ; 7 uses
  %.1167.lcssa.i = phi ptr [ %.0166.lcssa.i, %.preheader247.i ], [ %i.bfm, %.lr.ph284.i ] ; 7 uses
  %.1164.lcssa.i = phi ptr [ %.0163.lcssa.i, %.preheader247.i ], [ %i.bfl, %.lr.ph284.i ] ; 7 uses
  %i.bcw = icmp slt i32 %.1173.lcssa.i, %4
  br i1 %i.bcw, label %.lr.ph293.i.preheader, label %._crit_edge294.i

.lr.ph293.i.preheader:                            ; preds = %.preheader246.i
  %i.bcx = xor i32 %.1173.lcssa.i, -1
  %i.bcy = add i32 %4, %i.bcx                     ; 2 uses
  %i.bcz = zext i32 %i.bcy to i64
  %i.bda = add nuw nsw i64 %i.bcz, 1              ; 2 uses
  %min.iters.check413 = icmp ult i32 %i.bcy, 7
  br i1 %min.iters.check413, label %.lr.ph293.i.preheader562, label %vector.memcheck396

vector.memcheck396:                               ; preds = %.lr.ph293.i.preheader
  %scevgep397 = getelementptr i8, ptr %.1164.lcssa.i, i64 4
  %i.bdb = xor i32 %.1173.lcssa.i, -1
  %i.bdc = add i32 %4, %i.bdb
  %i.bdd = zext i32 %i.bdc to i64
  %i.bde = shl nuw nsw i64 %i.bdd, 2              ; 3 uses
  %scevgep398 = getelementptr i8, ptr %scevgep397, i64 %i.bde ; 2 uses
  %scevgep399 = getelementptr i8, ptr %.1170.lcssa.i, i64 4
  %scevgep400 = getelementptr i8, ptr %scevgep399, i64 %i.bde ; 2 uses
  %scevgep401 = getelementptr i8, ptr %.1167.lcssa.i, i64 4
  %scevgep402 = getelementptr i8, ptr %scevgep401, i64 %i.bde ; 2 uses
  %bound0403 = icmp ult ptr %.1164.lcssa.i, %scevgep400
  %bound1404 = icmp ult ptr %.1170.lcssa.i, %scevgep398
  %found.conflict405 = and i1 %bound0403, %bound1404
  %bound0406 = icmp ult ptr %.1164.lcssa.i, %scevgep402
  %bound1407 = icmp ult ptr %.1167.lcssa.i, %scevgep398
  %found.conflict408 = and i1 %bound0406, %bound1407
  %conflict.rdx = or i1 %found.conflict405, %found.conflict408
  %bound0409 = icmp ult ptr %.1170.lcssa.i, %scevgep402
  %bound1410 = icmp ult ptr %.1167.lcssa.i, %scevgep400
  %found.conflict411 = and i1 %bound0409, %bound1410
  %conflict.rdx412 = or i1 %conflict.rdx, %found.conflict411
  br i1 %conflict.rdx412, label %.lr.ph293.i.preheader562, label %vector.ph414

vector.ph414:                                     ; preds = %vector.memcheck396
  %n.vec415 = and i64 %i.bda, 8589934584          ; 4 uses
  %i.bdf = shl nuw nsw i64 %n.vec415, 2           ; 3 uses
  %i.bdg = getelementptr i8, ptr %.1164.lcssa.i, i64 %i.bdf
  %i.bdh = getelementptr i8, ptr %.1167.lcssa.i, i64 %i.bdf
  %i.bdi = getelementptr i8, ptr %.1170.lcssa.i, i64 %i.bdf
  %i.bdj = trunc i64 %n.vec415 to i32
  %i.bdk = add i32 %.1173.lcssa.i, %i.bdj
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph414
  %index417 = phi i64 [ 0, %vector.ph414 ], [ %index.next424, %vector.body416 ] ; 2 uses
  %i.bdl = shl i64 %index417, 2                   ; 3 uses
  %next.gep418 = getelementptr i8, ptr %.1164.lcssa.i, i64 %i.bdl ; 2 uses
  %next.gep419 = getelementptr i8, ptr %.1167.lcssa.i, i64 %i.bdl
  %next.gep420 = getelementptr i8, ptr %.1170.lcssa.i, i64 %i.bdl ; 2 uses
  %wide.load421 = load <8 x float>, ptr %next.gep418, align 4, !tbaa !59, !alias.scope !133, !noalias !136
  %wide.load422 = load <8 x float>, ptr %next.gep419, align 4, !tbaa !59, !alias.scope !139
  %i.bdm = fsub fast <8 x float> %wide.load421, %wide.load422
  %i.bdn = tail call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.bdm) ; 2 uses
  store <8 x float> %i.bdn, ptr %next.gep418, align 4, !tbaa !59, !alias.scope !133, !noalias !136
  %wide.load423 = load <8 x float>, ptr %next.gep420, align 4, !tbaa !59, !alias.scope !140, !noalias !139
  %i.bdo = fadd fast <8 x float> %wide.load423, %i.bdn
  store <8 x float> %i.bdo, ptr %next.gep420, align 4, !tbaa !59, !alias.scope !140, !noalias !139
  %index.next424 = add nuw i64 %index417, 8       ; 2 uses
  %i.bdp = icmp eq i64 %index.next424, %n.vec415
  br i1 %i.bdp, label %middle.block425, label %vector.body416, !llvm.loop !141

middle.block425:                                  ; preds = %vector.body416
  %cmp.n426 = icmp eq i64 %i.bda, %n.vec415
  br i1 %cmp.n426, label %._crit_edge294.i, label %.lr.ph293.i.preheader562

.lr.ph293.i.preheader562:                         ; preds = %vector.memcheck396, %.lr.ph293.i.preheader, %middle.block425
  %.2165292.i.ph = phi ptr [ %.1164.lcssa.i, %vector.memcheck396 ], [ %.1164.lcssa.i, %.lr.ph293.i.preheader ], [ %i.bdg, %middle.block425 ] ; 4 uses
  %.2168291.i.ph = phi ptr [ %.1167.lcssa.i, %vector.memcheck396 ], [ %.1167.lcssa.i, %.lr.ph293.i.preheader ], [ %i.bdh, %middle.block425 ] ; 3 uses
  %.2171290.i.ph = phi ptr [ %.1170.lcssa.i, %vector.memcheck396 ], [ %.1170.lcssa.i, %.lr.ph293.i.preheader ], [ %i.bdi, %middle.block425 ] ; 4 uses
  %.2174289.i.ph = phi i32 [ %.1173.lcssa.i, %vector.memcheck396 ], [ %.1173.lcssa.i, %.lr.ph293.i.preheader ], [ %i.bdk, %middle.block425 ] ; 4 uses
  %i.bdq = sub i32 %4, %.2174289.i.ph
  %.neg = add i32 %.2174289.i.ph, 1
  %xtraiter590 = and i32 %i.bdq, 1
  %lcmp.mod591.not = icmp eq i32 %xtraiter590, 0
  br i1 %lcmp.mod591.not, label %.lr.ph293.i.prol.loopexit, label %.lr.ph293.i.prol

.lr.ph293.i.prol:                                 ; preds = %.lr.ph293.i.preheader562
  %i.bdr = load float, ptr %.2165292.i.ph, align 4, !tbaa !59
  %i.bds = load float, ptr %.2168291.i.ph, align 4, !tbaa !59
  %i.bdt = fsub fast float %i.bdr, %i.bds
  %i.bdu = tail call fast float @llvm.exp.f32(float %i.bdt) ; 2 uses
  store float %i.bdu, ptr %.2165292.i.ph, align 4, !tbaa !59
  %i.bdv = load float, ptr %.2171290.i.ph, align 4, !tbaa !59
  %i.bdw = fadd fast float %i.bdv, %i.bdu
  store float %i.bdw, ptr %.2171290.i.ph, align 4, !tbaa !59
  %i.bdx = getelementptr inbounds nuw i8, ptr %.2165292.i.ph, i64 4
  %i.bdy = getelementptr inbounds nuw i8, ptr %.2168291.i.ph, i64 4
  %i.bdz = getelementptr inbounds nuw i8, ptr %.2171290.i.ph, i64 4
  %i.bea = add nuw nsw i32 %.2174289.i.ph, 1
  br label %.lr.ph293.i.prol.loopexit

.lr.ph293.i.prol.loopexit:                        ; preds = %.lr.ph293.i.prol, %.lr.ph293.i.preheader562
  %.2165292.i.unr = phi ptr [ %.2165292.i.ph, %.lr.ph293.i.preheader562 ], [ %i.bdx, %.lr.ph293.i.prol ]
  %.2168291.i.unr = phi ptr [ %.2168291.i.ph, %.lr.ph293.i.preheader562 ], [ %i.bdy, %.lr.ph293.i.prol ]
  %.2171290.i.unr = phi ptr [ %.2171290.i.ph, %.lr.ph293.i.preheader562 ], [ %i.bdz, %.lr.ph293.i.prol ]
  %.2174289.i.unr = phi i32 [ %.2174289.i.ph, %.lr.ph293.i.preheader562 ], [ %i.bea, %.lr.ph293.i.prol ]
  %i.beb = icmp eq i32 %4, %.neg
  br i1 %i.beb, label %._crit_edge294.i, label %.lr.ph293.i

.lr.ph284.i:                                      ; preds = %.preheader247.i, %.lr.ph284.i
  %.1164283.i = phi ptr [ %i.bfl, %.lr.ph284.i ], [ %.0163.lcssa.i, %.preheader247.i ] ; 3 uses
  %.1167282.i = phi ptr [ %i.bfm, %.lr.ph284.i ], [ %.0166.lcssa.i, %.preheader247.i ] ; 2 uses
  %.1170281.i = phi ptr [ %i.bfn, %.lr.ph284.i ], [ %.0169.lcssa.i, %.preheader247.i ] ; 3 uses
  %.1173280.i = phi i32 [ %i.bfo, %.lr.ph284.i ], [ %.0172.lcssa.i, %.preheader247.i ]
  %i.bec = load <4 x float>, ptr %.1164283.i, align 1, !tbaa !54
  %i.bed = load <4 x float>, ptr %.1167282.i, align 1, !tbaa !54
  %i.bee = load <4 x float>, ptr %.1170281.i, align 1, !tbaa !54
  %i.bef = fsub fast <4 x float> %i.bec, %i.bed
  %i.beg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bef, <4 x float> splat (float f0x42B0C0A5))
  %i.beh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.beg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bei = fmul fast <4 x float> %i.beh, splat (float f0x3FB8AA3B)
  %i.bej = fadd fast <4 x float> %i.bei, splat (float 5.000000e-01) ; 2 uses
  %i.bek = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bej)
  %i.bel = sitofp fast <4 x i32> %i.bek to <4 x float> ; 2 uses
  %i.bem = fcmp fast olt <4 x float> %i.bej, %i.bel
  %i.ben = select <4 x i1> %i.bem, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.beo = fsub fast <4 x float> %i.bel, %i.ben   ; 2 uses
  %i.bep = fmul fast <4 x float> %i.beo, splat (float f0x3F317218)
  %i.beq = fsub fast <4 x float> %i.beh, %i.bep   ; 8 uses
  %i.ber = fmul fast <4 x float> %i.beq, %i.beq
  %i.bes = fmul fast <4 x float> %i.beq, splat (float f0x39506967)
  %i.bet = fadd fast <4 x float> %i.bes, splat (float f0x3AB743CE)
  %i.beu = fmul fast <4 x float> %i.bet, %i.beq
  %i.bev = fadd fast <4 x float> %i.beu, splat (float f0x3C088908)
  %i.bew = fmul fast <4 x float> %i.bev, %i.beq
  %i.bex = fadd fast <4 x float> %i.bew, splat (float f0x3D2AA9C1)
  %i.bey = fmul fast <4 x float> %i.bex, %i.beq
  %i.bez = fadd fast <4 x float> %i.bey, splat (float f0x3E2AAAAA)
  %i.bfa = fmul fast <4 x float> %i.bez, %i.beq
  %i.bfb = fadd fast <4 x float> %i.bfa, splat (float 5.000000e-01)
  %i.bfc = fmul fast <4 x float> %i.ber, %i.bfb
  %i.bfd = fadd fast <4 x float> %i.beq, %i.bfc
  %i.bfe = fadd fast <4 x float> %i.bfd, splat (float 1.000000e+00)
  %i.bff = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.beo)
  %i.bfg = shl <4 x i32> %i.bff, splat (i32 23)
  %i.bfh = add <4 x i32> %i.bfg, splat (i32 1065353216)
  %i.bfi = bitcast <4 x i32> %i.bfh to <4 x float>
  %i.bfj = fmul fast <4 x float> %i.bfe, %i.bfi   ; 2 uses
  store <4 x float> %i.bfj, ptr %.1164283.i, align 1, !tbaa !54
  %i.bfk = fadd fast <4 x float> %i.bfj, %i.bee
  store <4 x float> %i.bfk, ptr %.1170281.i, align 1, !tbaa !54
  %i.bfl = getelementptr inbounds nuw i8, ptr %.1164283.i, i64 16 ; 2 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %.1167282.i, i64 16 ; 2 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %.1170281.i, i64 16 ; 2 uses
  %i.bfo = add nuw nsw i32 %.1173280.i, 4         ; 3 uses
  %i.bfp = or disjoint i32 %i.bfo, 3
  %i.bfq = icmp slt i32 %i.bfp, %4
  br i1 %i.bfq, label %.lr.ph284.i, label %.preheader246.i, !llvm.loop !142

.lr.ph293.i:                                      ; preds = %.lr.ph293.i.prol.loopexit, %.lr.ph293.i
  %.2165292.i = phi ptr [ %i.bgg, %.lr.ph293.i ], [ %.2165292.i.unr, %.lr.ph293.i.prol.loopexit ] ; 4 uses
  %.2168291.i = phi ptr [ %i.bgh, %.lr.ph293.i ], [ %.2168291.i.unr, %.lr.ph293.i.prol.loopexit ] ; 3 uses
  %.2171290.i = phi ptr [ %i.bgi, %.lr.ph293.i ], [ %.2171290.i.unr, %.lr.ph293.i.prol.loopexit ] ; 4 uses
  %.2174289.i = phi i32 [ %i.bgj, %.lr.ph293.i ], [ %.2174289.i.unr, %.lr.ph293.i.prol.loopexit ]
  %i.bfr = load float, ptr %.2165292.i, align 4, !tbaa !59
  %i.bfs = load float, ptr %.2168291.i, align 4, !tbaa !59
  %i.bft = fsub fast float %i.bfr, %i.bfs
  %i.bfu = tail call fast float @llvm.exp.f32(float %i.bft) ; 2 uses
  store float %i.bfu, ptr %.2165292.i, align 4, !tbaa !59
  %i.bfv = load float, ptr %.2171290.i, align 4, !tbaa !59
  %i.bfw = fadd fast float %i.bfv, %i.bfu
  store float %i.bfw, ptr %.2171290.i, align 4, !tbaa !59
  %i.bfx = getelementptr inbounds nuw i8, ptr %.2165292.i, i64 4 ; 2 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %.2168291.i, i64 4
  %i.bfz = getelementptr inbounds nuw i8, ptr %.2171290.i, i64 4 ; 2 uses
  %i.bga = load float, ptr %i.bfx, align 4, !tbaa !59
  %i.bgb = load float, ptr %i.bfy, align 4, !tbaa !59
  %i.bgc = fsub fast float %i.bga, %i.bgb
  %i.bgd = tail call fast float @llvm.exp.f32(float %i.bgc) ; 2 uses
  store float %i.bgd, ptr %i.bfx, align 4, !tbaa !59
  %i.bge = load float, ptr %i.bfz, align 4, !tbaa !59
  %i.bgf = fadd fast float %i.bge, %i.bgd
  store float %i.bgf, ptr %i.bfz, align 4, !tbaa !59
  %i.bgg = getelementptr inbounds nuw i8, ptr %.2165292.i, i64 8
  %i.bgh = getelementptr inbounds nuw i8, ptr %.2168291.i, i64 8
  %i.bgi = getelementptr inbounds nuw i8, ptr %.2171290.i, i64 8
  %i.bgj = add nuw nsw i32 %.2174289.i, 2         ; 2 uses
  %exitcond358.not.i.1 = icmp eq i32 %i.bgj, %4
  br i1 %exitcond358.not.i.1, label %._crit_edge294.i, label %.lr.ph293.i, !llvm.loop !143

._crit_edge294.i:                                 ; preds = %.lr.ph293.i.prol.loopexit, %.lr.ph293.i, %middle.block425, %.preheader246.i
  %indvars.iv.next360.i = add nuw nsw i64 %indvars.iv359.i, 1 ; 2 uses
  %exitcond363.not.i = icmp eq i64 %indvars.iv.next360.i, %wide.trip.count.i82
  br i1 %exitcond363.not.i, label %.preheader245.i, label %.preheader248.i, !llvm.loop !144

.preheader244.loopexit.i.unr-lcssa:               ; preds = %.lr.ph299.i
  %i.bgk = and i32 %i.bba, 8
  %lcmp.mod595.not.not = icmp eq i32 %i.bgk, 0
  br i1 %lcmp.mod595.not.not, label %.lr.ph299.i.epil.preheader, label %.preheader244.loopexit.i

.lr.ph299.i.epil.preheader:                       ; preds = %.preheader244.loopexit.i.unr-lcssa, %.lr.ph299.i.preheader
  %.0159297.i.epil.init = phi ptr [ %6, %.lr.ph299.i.preheader ], [ %i.bhf, %.preheader244.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod597 = trunc i32 %i.bbc to i1
  tail call void @llvm.assume(i1 %lcmp.mod597)
  %i.bgl = load <8 x float>, ptr %.0159297.i.epil.init, align 1, !tbaa !54 ; 2 uses
  %i.bgm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.bgl) ; 2 uses
  %i.bgn = fmul fast <8 x float> %i.bgm, %i.bgl
  %i.bgo = fsub fast <8 x float> splat (float 2.000000e+00), %i.bgn
  %i.bgp = fmul fast <8 x float> %i.bgo, %i.bgm
  store <8 x float> %i.bgp, ptr %.0159297.i.epil.init, align 1, !tbaa !54
  %i.bgq = getelementptr inbounds nuw i8, ptr %.0159297.i.epil.init, i64 32
  br label %.preheader244.loopexit.i

.preheader244.loopexit.i:                         ; preds = %.preheader244.loopexit.i.unr-lcssa, %.lr.ph299.i.epil.preheader
  %.lcssa561 = phi ptr [ %i.bhf, %.preheader244.loopexit.i.unr-lcssa ], [ %i.bgq, %.lr.ph299.i.epil.preheader ]
  %i.bgr = and i32 %4, 2147483640
  br label %.preheader244.i

.preheader244.i:                                  ; preds = %.preheader244.loopexit.i, %.preheader245.i
  %.0159.lcssa.i = phi ptr [ %6, %.preheader245.i ], [ %.lcssa561, %.preheader244.loopexit.i ] ; 2 uses
  %.0156.lcssa.i = phi i32 [ 0, %.preheader245.i ], [ %i.bgr, %.preheader244.loopexit.i ] ; 3 uses
  %i.bgs = or disjoint i32 %.0156.lcssa.i, 3
  %i.bgt = icmp slt i32 %i.bgs, %4
  br i1 %i.bgt, label %.lr.ph304.i, label %.preheader243.i

.lr.ph299.i:                                      ; preds = %.lr.ph299.i, %.lr.ph299.i.preheader.new
  %.0159297.i = phi ptr [ %6, %.lr.ph299.i.preheader.new ], [ %i.bhf, %.lr.ph299.i ] ; 4 uses
  %niter599 = phi i32 [ 0, %.lr.ph299.i.preheader.new ], [ %niter599.next.1, %.lr.ph299.i ]
  %i.bgu = load <8 x float>, ptr %.0159297.i, align 1, !tbaa !54 ; 2 uses
  %i.bgv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.bgu) ; 2 uses
  %i.bgw = fmul fast <8 x float> %i.bgv, %i.bgu
  %i.bgx = fsub fast <8 x float> splat (float 2.000000e+00), %i.bgw
  %i.bgy = fmul fast <8 x float> %i.bgx, %i.bgv
  store <8 x float> %i.bgy, ptr %.0159297.i, align 1, !tbaa !54
  %i.bgz = getelementptr inbounds nuw i8, ptr %.0159297.i, i64 32 ; 2 uses
  %i.bha = load <8 x float>, ptr %i.bgz, align 1, !tbaa !54 ; 2 uses
  %i.bhb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.bha) ; 2 uses
  %i.bhc = fmul fast <8 x float> %i.bhb, %i.bha
  %i.bhd = fsub fast <8 x float> splat (float 2.000000e+00), %i.bhc
  %i.bhe = fmul fast <8 x float> %i.bhd, %i.bhb
  store <8 x float> %i.bhe, ptr %i.bgz, align 1, !tbaa !54
  %i.bhf = getelementptr inbounds nuw i8, ptr %.0159297.i, i64 64 ; 3 uses
  %niter599.next.1 = add i32 %niter599, 2         ; 2 uses
  %niter599.ncmp.1.not = icmp eq i32 %niter599.next.1, %unroll_iter598
  br i1 %niter599.ncmp.1.not, label %.preheader244.loopexit.i.unr-lcssa, label %.lr.ph299.i, !llvm.loop !145

.preheader243.i:                                  ; preds = %.lr.ph304.i, %.preheader244.i
  %.1160.lcssa.i = phi ptr [ %.0159.lcssa.i, %.preheader244.i ], [ %i.bhx, %.lr.ph304.i ] ; 3 uses
  %.1157.lcssa.i = phi i32 [ %.0156.lcssa.i, %.preheader244.i ], [ %i.bhy, %.lr.ph304.i ] ; 4 uses
  %i.bhg = icmp slt i32 %.1157.lcssa.i, %4
  br i1 %i.bhg, label %.lr.ph309.i.preheader, label %.preheader242.i

.lr.ph309.i.preheader:                            ; preds = %.preheader243.i
  %i.bhh = xor i32 %.1157.lcssa.i, -1
  %i.bhi = add i32 %4, %i.bhh                     ; 2 uses
  %i.bhj = zext i32 %i.bhi to i64
  %i.bhk = add nuw nsw i64 %i.bhj, 1              ; 2 uses
  %min.iters.check431 = icmp ult i32 %i.bhi, 7
  br i1 %min.iters.check431, label %.lr.ph309.i.preheader558, label %vector.ph432

vector.ph432:                                     ; preds = %.lr.ph309.i.preheader
  %n.vec433 = and i64 %i.bhk, 8589934584          ; 4 uses
  %i.bhl = trunc i64 %n.vec433 to i32
  %i.bhm = add i32 %.1157.lcssa.i, %i.bhl
  %i.bhn = shl nuw nsw i64 %n.vec433, 2
  %i.bho = getelementptr i8, ptr %.1160.lcssa.i, i64 %i.bhn
  br label %vector.body434

vector.body434:                                   ; preds = %vector.body434, %vector.ph432
  %index435 = phi i64 [ 0, %vector.ph432 ], [ %index.next438, %vector.body434 ] ; 2 uses
  %i.bhp = shl i64 %index435, 2
  %next.gep436 = getelementptr i8, ptr %.1160.lcssa.i, i64 %i.bhp ; 2 uses
  %wide.load437 = load <8 x float>, ptr %next.gep436, align 4, !tbaa !59
  %i.bhq = fdiv fast <8 x float> splat (float 1.000000e+00), %wide.load437
  store <8 x float> %i.bhq, ptr %next.gep436, align 4, !tbaa !59
  %index.next438 = add nuw i64 %index435, 8       ; 2 uses
  %i.bhr = icmp eq i64 %index.next438, %n.vec433
  br i1 %i.bhr, label %middle.block439, label %vector.body434, !llvm.loop !146

middle.block439:                                  ; preds = %vector.body434
  %cmp.n440 = icmp eq i64 %i.bhk, %n.vec433
  br i1 %cmp.n440, label %.preheader242.i, label %.lr.ph309.i.preheader558

.lr.ph309.i.preheader558:                         ; preds = %.lr.ph309.i.preheader, %middle.block439
  %.2158308.i.ph = phi i32 [ %.1157.lcssa.i, %.lr.ph309.i.preheader ], [ %i.bhm, %middle.block439 ]
  %.2161307.i.ph = phi ptr [ %.1160.lcssa.i, %.lr.ph309.i.preheader ], [ %i.bho, %middle.block439 ]
  br label %.lr.ph309.i

.lr.ph304.i:                                      ; preds = %.preheader244.i, %.lr.ph304.i
  %.1157303.i = phi i32 [ %i.bhy, %.lr.ph304.i ], [ %.0156.lcssa.i, %.preheader244.i ]
  %.1160302.i = phi ptr [ %i.bhx, %.lr.ph304.i ], [ %.0159.lcssa.i, %.preheader244.i ] ; 3 uses
  %i.bhs = load <4 x float>, ptr %.1160302.i, align 1, !tbaa !54 ; 2 uses
  %i.bht = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.bhs) ; 2 uses
  %i.bhu = fmul fast <4 x float> %i.bht, %i.bhs
  %i.bhv = fsub fast <4 x float> splat (float 2.000000e+00), %i.bhu
  %i.bhw = fmul fast <4 x float> %i.bhv, %i.bht
  store <4 x float> %i.bhw, ptr %.1160302.i, align 1, !tbaa !54
  %i.bhx = getelementptr inbounds nuw i8, ptr %.1160302.i, i64 16 ; 2 uses
  %i.bhy = add nuw nsw i32 %.1157303.i, 4         ; 3 uses
  %i.bhz = or disjoint i32 %i.bhy, 3
  %i.bia = icmp slt i32 %i.bhz, %4
  br i1 %i.bia, label %.lr.ph304.i, label %.preheader243.i, !llvm.loop !147

.preheader242.i:                                  ; preds = %.lr.ph309.i, %middle.block439, %.preheader243.i
  br i1 %i.awm, label %.lr.ph331.i, label %_ZN4ncnnL13softmax_pack8EPfimiS0_S0_.exit

.lr.ph331.i:                                      ; preds = %.preheader242.i
  %i.bib = and i32 %4, -8                         ; 2 uses
  %wide.trip.count369.i = zext nneg i32 %1 to i64
  %i.bic = add i32 %4, -8                         ; 2 uses
  %i.bid = lshr i32 %i.bic, 3
  %i.bie = add nuw nsw i32 %i.bid, 1              ; 2 uses
  %xtraiter600 = and i32 %i.bie, 3                ; 3 uses
  %i.bif = icmp ult i32 %i.bic, 24
  %unroll_iter606 = and i32 %i.bie, 1073741820
  %lcmp.mod602.not = icmp eq i32 %xtraiter600, 0
  %lcmp.mod605 = icmp ne i32 %xtraiter600, 0
  br label %bb.j

.lr.ph309.i:                                      ; preds = %.lr.ph309.i.preheader558, %.lr.ph309.i
  %.2158308.i = phi i32 [ %i.bij, %.lr.ph309.i ], [ %.2158308.i.ph, %.lr.ph309.i.preheader558 ]
  %.2161307.i = phi ptr [ %i.bii, %.lr.ph309.i ], [ %.2161307.i.ph, %.lr.ph309.i.preheader558 ] ; 3 uses
  %i.big = load float, ptr %.2161307.i, align 4, !tbaa !59
  %i.bih = fdiv fast float 1.000000e+00, %i.big
  store float %i.bih, ptr %.2161307.i, align 4, !tbaa !59
  %i.bii = getelementptr inbounds nuw i8, ptr %.2161307.i, i64 4
  %i.bij = add nuw nsw i32 %.2158308.i, 1         ; 2 uses
  %exitcond364.not.i = icmp eq i32 %i.bij, %4
  br i1 %exitcond364.not.i, label %.preheader242.i, label %.lr.ph309.i, !llvm.loop !148

bb.j:                                             ; preds = %._crit_edge329.i, %.lr.ph331.i
  %indvars.iv366.i = phi i64 [ 0, %.lr.ph331.i ], [ %indvars.iv.next367.i, %._crit_edge329.i ] ; 2 uses
  %i.bik = mul i64 %indvars.iv366.i, %3
  %i.bil = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bik ; 3 uses
  br i1 %i.a, label %.lr.ph314.i.preheader, label %.preheader241.i

.lr.ph314.i.preheader:                            ; preds = %bb.j
  br i1 %i.bif, label %.lr.ph314.i.epil.preheader, label %.lr.ph314.i

.preheader241.i.loopexit.unr-lcssa:               ; preds = %.lr.ph314.i
  br i1 %lcmp.mod602.not, label %.preheader241.i, label %.lr.ph314.i.epil.preheader

.lr.ph314.i.epil.preheader:                       ; preds = %.preheader241.i.loopexit.unr-lcssa, %.lr.ph314.i.preheader
end_hunk_3
begin_hunk_4_@_ZNK4ncnn15Softmax_x86_avx15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.4:bb.a
iter.check183:                                    ; preds = %.preheader214.i
  %i.bb = xor i32 %.176.lcssa.i, -1
  %i.bc = add i32 %i.ac, %i.bb                    ; 3 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = add nuw nsw i64 %i.bd, 1                ; 5 uses
  %min.iters.check157 = icmp ult i32 %i.bc, 7
  br i1 %min.iters.check157, label %.lr.ph231.i.preheader, label %vector.main.loop.iter.check158

vector.main.loop.iter.check158:                   ; preds = %iter.check183
  %min.iters.check159 = icmp ult i32 %i.bc, 31
  br i1 %min.iters.check159, label %vec.epilog.ph187, label %vector.ph160

vector.ph160:                                     ; preds = %vector.main.loop.iter.check158
  %i.bf = and i64 %i.be, 24
  %n.vec161 = and i64 %i.be, 8589934560           ; 5 uses
  %i.bg = shl nuw nsw i64 %n.vec161, 2
  %i.bh = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bg
  %i.bi = trunc i64 %n.vec161 to i32
  %i.bj = add i32 %.176.lcssa.i, %i.bi
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph160
  %index163 = phi i64 [ 0, %vector.ph160 ], [ %index.next173, %vector.body162 ] ; 2 uses
  %vec.phi164 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph160 ], [ %i.bo, %vector.body162 ]
  %vec.phi165 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph160 ], [ %i.bp, %vector.body162 ]
  %vec.phi166 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph160 ], [ %i.bq, %vector.body162 ]
  %vec.phi167 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph160 ], [ %i.br, %vector.body162 ]
  %i.bk = shl i64 %index163, 2
  %next.gep168 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bk ; 4 uses
  %i.bl = getelementptr i8, ptr %next.gep168, i64 32
  %i.bm = getelementptr i8, ptr %next.gep168, i64 64
  %i.bn = getelementptr i8, ptr %next.gep168, i64 96
  %wide.load169 = load <8 x float>, ptr %next.gep168, align 4, !tbaa !59
  %wide.load170 = load <8 x float>, ptr %i.bl, align 4, !tbaa !59
  %wide.load171 = load <8 x float>, ptr %i.bm, align 4, !tbaa !59
  %wide.load172 = load <8 x float>, ptr %i.bn, align 4, !tbaa !59
  %i.bo = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi164, <8 x float> %wide.load169) ; 2 uses
  %i.bp = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi165, <8 x float> %wide.load170) ; 2 uses
  %i.bq = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi166, <8 x float> %wide.load171) ; 2 uses
  %i.br = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi167, <8 x float> %wide.load172) ; 2 uses
  %index.next173 = add nuw i64 %index163, 32      ; 2 uses
  %i.bs = icmp eq i64 %index.next173, %n.vec161
  br i1 %i.bs, label %middle.block174, label %vector.body162, !llvm.loop !181

middle.block174:                                  ; preds = %vector.body162
  %rdx.minmax.select = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bo, <8 x float> %i.bp)
  %rdx.minmax.select176 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.bq)
  %rdx.minmax.select178 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select176, <8 x float> %i.br)
  %i.bt = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select178) ; 3 uses
  %cmp.n179 = icmp eq i64 %i.be, %n.vec161
  br i1 %cmp.n179, label %._crit_edge.i, label %vec.epilog.iter.check185

vec.epilog.iter.check185:                         ; preds = %middle.block174
  %min.epilog.iters.check186 = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check186, label %.lr.ph231.i.preheader, label %vec.epilog.ph187, !prof !64

vec.epilog.ph187:                                 ; preds = %vector.main.loop.iter.check158, %vec.epilog.iter.check185
  %vec.epilog.resume.val180 = phi i64 [ %n.vec161, %vec.epilog.iter.check185 ], [ 0, %vector.main.loop.iter.check158 ]
  %bc.merge.rdx182 = phi float [ %i.bt, %vec.epilog.iter.check185 ], [ f0xFF7FFFFF, %vector.main.loop.iter.check158 ]
  %n.vec188 = and i64 %i.be, 8589934584           ; 4 uses
  %i.bu = shl nuw nsw i64 %n.vec188, 2
  %i.bv = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bu
  %i.bw = trunc i64 %n.vec188 to i32
  %i.bx = add i32 %.176.lcssa.i, %i.bw
  %broadcast.splatinsert189 = insertelement <8 x float> poison, float %bc.merge.rdx182, i64 0
  %broadcast.splat190 = shufflevector <8 x float> %broadcast.splatinsert189, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body191

vec.epilog.vector.body191:                        ; preds = %vec.epilog.vector.body191, %vec.epilog.ph187
  %index192 = phi i64 [ %vec.epilog.resume.val180, %vec.epilog.ph187 ], [ %index.next196, %vec.epilog.vector.body191 ] ; 2 uses
  %vec.phi193 = phi <8 x float> [ %broadcast.splat190, %vec.epilog.ph187 ], [ %i.bz, %vec.epilog.vector.body191 ]
  %i.by = shl i64 %index192, 2
  %next.gep194 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.by
  %wide.load195 = load <8 x float>, ptr %next.gep194, align 4, !tbaa !59
  %i.bz = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi193, <8 x float> %wide.load195) ; 2 uses
  %index.next196 = add nuw i64 %index192, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next196, %n.vec188
  br i1 %i.ca, label %vec.epilog.middle.block197, label %vec.epilog.vector.body191, !llvm.loop !182

vec.epilog.middle.block197:                       ; preds = %vec.epilog.vector.body191
  %i.cb = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.bz) ; 2 uses
  %cmp.n198 = icmp eq i64 %i.be, %n.vec188
  br i1 %cmp.n198, label %._crit_edge.i, label %.lr.ph231.i.preheader

.lr.ph231.i.preheader:                            ; preds = %iter.check183, %vec.epilog.iter.check185, %vec.epilog.middle.block197
  %.2230.i.ph = phi ptr [ %.1.lcssa.i, %iter.check183 ], [ %i.bh, %vec.epilog.iter.check185 ], [ %i.bv, %vec.epilog.middle.block197 ]
  %.277229.i.ph = phi i32 [ %.176.lcssa.i, %iter.check183 ], [ %i.bj, %vec.epilog.iter.check185 ], [ %i.bx, %vec.epilog.middle.block197 ]
  %.0205228.i.ph = phi float [ f0xFF7FFFFF, %iter.check183 ], [ %i.bt, %vec.epilog.iter.check185 ], [ %i.cb, %vec.epilog.middle.block197 ]
  br label %.lr.ph231.i

.lr.ph224.i:                                      ; preds = %.preheader215.i, %.lr.ph224.i
  %.1223.i = phi ptr [ %i.ce, %.lr.ph224.i ], [ %.0.lcssa.i, %.preheader215.i ] ; 2 uses
  %.176222.i = phi i32 [ %i.cf, %.lr.ph224.i ], [ %.075.lcssa.i, %.preheader215.i ]
  %.0196221.i = phi <4 x float> [ %i.cd, %.lr.ph224.i ], [ splat (float f0xFF7FFFFF), %.preheader215.i ]
  %i.cc = load <4 x float>, ptr %.1223.i, align 1, !tbaa !54
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0196221.i, <4 x float> nofpclass(nan inf) %i.cc) ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.1223.i, i64 16 ; 2 uses
  %i.cf = add nuw nsw i32 %.176222.i, 4           ; 3 uses
  %i.cg = or disjoint i32 %i.cf, 3
  %i.ch = icmp slt i32 %i.cg, %i.ac
  br i1 %i.ch, label %.lr.ph224.i, label %.preheader214.i, !llvm.loop !66

.lr.ph231.i:                                      ; preds = %.lr.ph231.i.preheader, %.lr.ph231.i
  %.2230.i = phi ptr [ %i.ci, %.lr.ph231.i ], [ %.2230.i.ph, %.lr.ph231.i.preheader ] ; 2 uses
  %.277229.i = phi i32 [ %i.ck, %.lr.ph231.i ], [ %.277229.i.ph, %.lr.ph231.i.preheader ]
  %.0205228.i = phi float [ %.sroa.speculated126.i, %.lr.ph231.i ], [ %.0205228.i.ph, %.lr.ph231.i.preheader ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.2230.i, i64 4
  %i.cj = load float, ptr %.2230.i, align 4, !tbaa !59
  %.sroa.speculated126.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.0205228.i, float %i.cj) ; 2 uses
  %i.ck = add nuw nsw i32 %.277229.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ck, %i.ac
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph231.i, !llvm.loop !183

._crit_edge.i:                                    ; preds = %.lr.ph231.i, %middle.block174, %vec.epilog.middle.block197, %.preheader214.i
  %.0205.lcssa.i = phi float [ f0xFF7FFFFF, %.preheader214.i ], [ %i.cb, %vec.epilog.middle.block197 ], [ %i.bt, %middle.block174 ], [ %.sroa.speculated126.i, %.lr.ph231.i ] ; 4 uses
  %i.cl = icmp eq i32 %i.aa, 4                    ; 2 uses
  br i1 %i.cl, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %._crit_edge.i
  %i.cm = shufflevector <8 x float> %.0193.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cn = shufflevector <8 x float> %.0193.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.co = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0196.lcssa.i, <4 x float> nofpclass(nan inf) %i.cm)
  %i.cp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.co, <4 x float> nofpclass(nan inf) %i.cn) ; 2 uses
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i
  %i.cr = icmp eq i32 %i.aa, 1
  br i1 %i.cr, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cs = shufflevector <8 x float> %.0193.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ct = shufflevector <8 x float> %.0193.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cs, <4 x float> nofpclass(nan inf) %i.ct) ; 2 uses
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cu, <4 x float> nofpclass(nan inf) %i.cv) ; 2 uses
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.cw, <4 x float> nofpclass(nan inf) %i.cx)
  %i.cz = extractelement <4 x float> %i.cy, i64 0 ; 2 uses
  %i.da = fcmp fast olt float %.0205.lcssa.i, %i.cz
  %.sroa.speculated119.i = select i1 %i.da, float %i.cz, float %.0205.lcssa.i ; 2 uses
  %i.db = shufflevector <4 x float> %.0196.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0196.lcssa.i, <4 x float> nofpclass(nan inf) %i.db) ; 2 uses
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.de = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dc, <4 x float> nofpclass(nan inf) %i.dd)
  %i.df = extractelement <4 x float> %i.de, i64 0 ; 2 uses
  %i.dg = fcmp fast olt float %.sroa.speculated119.i, %i.df
  %.sroa.speculated.i = select i1 %i.dg, float %i.df, float %.sroa.speculated119.i ; 2 uses
  %i.dh = insertelement <4 x float> poison, float %.sroa.speculated.i, i64 0 ; 2 uses
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread.i
  %i.dk = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %.thread.i ]
  %.1206.i = phi nsz float [ %.sroa.speculated.i, %bb.d ], [ %.0205.lcssa.i, %bb.c ], [ %.0205.lcssa.i, %.thread.i ] ; 3 uses
  %.2198.i = phi nsz <4 x float> [ %i.di, %bb.d ], [ %.0196.lcssa.i, %bb.c ], [ %i.cp, %.thread.i ]
  %.2195.i = phi nsz <8 x float> [ %i.dj, %bb.d ], [ %.0193.lcssa.i, %bb.c ], [ %i.cq, %.thread.i ]
  br i1 %i.ad, label %.lr.ph237.i, label %.preheader213.i

.preheader213.loopexit.i:                         ; preds = %.lr.ph237.i
  %i.dl = and i32 %i.ac, 2147483640
  br label %.preheader213.i

.preheader213.i:                                  ; preds = %.preheader213.loopexit.i, %bb.e
  %.0202.lcssa.i = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.et, %.preheader213.loopexit.i ] ; 5 uses
  %.089.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.dl, %.preheader213.loopexit.i ] ; 3 uses
  %.086.lcssa.i = phi ptr [ %.02042, %bb.e ], [ %i.eu, %.preheader213.loopexit.i ] ; 2 uses
  %i.dm = or disjoint i32 %.089.lcssa.i, 3
  %i.dn = icmp slt i32 %i.dm, %i.ac
  br i1 %i.dn, label %.lr.ph244.i, label %.preheader212.i

.lr.ph237.i:                                      ; preds = %bb.e, %.lr.ph237.i
  %.086235.i = phi ptr [ %i.eu, %.lr.ph237.i ], [ %.02042, %bb.e ] ; 3 uses
  %.089234.i = phi i32 [ %i.ev, %.lr.ph237.i ], [ 0, %bb.e ]
  %.0202233.i = phi <8 x float> [ %i.et, %.lr.ph237.i ], [ zeroinitializer, %bb.e ]
  %i.do = load <8 x float>, ptr %.086235.i, align 1, !tbaa !54
  %i.dp = fsub fast <8 x float> %i.do, %.2195.i
  %i.dq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dp, <8 x float> splat (float f0x42B0C0A5))
  %i.dr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dq, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ds = fmul fast <8 x float> %i.dr, splat (float f0x3FB8AA3B)
  %i.dt = fadd fast <8 x float> %i.ds, splat (float 5.000000e-01) ; 2 uses
  %i.du = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dt, i32 1) ; 2 uses
  %i.dv = fcmp fast ogt <8 x float> %i.du, %i.dt
  %i.dw = select <8 x i1> %i.dv, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dx = fsub fast <8 x float> %i.du, %i.dw      ; 2 uses
  %i.dy = fmul fast <8 x float> %i.dx, splat (float f0x3F317218)
  %i.dz = fsub fast <8 x float> %i.dr, %i.dy      ; 8 uses
  %i.ea = fmul fast <8 x float> %i.dz, %i.dz
  %i.eb = fmul fast <8 x float> %i.dz, splat (float f0x39506967)
  %i.ec = fadd fast <8 x float> %i.eb, splat (float f0x3AB743CE)
  %i.ed = fmul fast <8 x float> %i.ec, %i.dz
  %i.ee = fadd fast <8 x float> %i.ed, splat (float f0x3C088908)
  %i.ef = fmul fast <8 x float> %i.ee, %i.dz
  %i.eg = fadd fast <8 x float> %i.ef, splat (float f0x3D2AA9C1)
  %i.eh = fmul fast <8 x float> %i.eg, %i.dz
  %i.ei = fadd fast <8 x float> %i.eh, splat (float f0x3E2AAAAA)
  %i.ej = fmul fast <8 x float> %i.ei, %i.dz
  %i.ek = fadd fast <8 x float> %i.ej, splat (float 5.000000e-01)
  %i.el = fmul fast <8 x float> %i.ea, %i.ek
  %i.em = fadd fast <8 x float> %i.dz, %i.el
  %i.en = fadd fast <8 x float> %i.em, splat (float 1.000000e+00)
  %i.eo = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dx)
  %i.ep = shl <8 x i32> %i.eo, splat (i32 23)
  %i.eq = add <8 x i32> %i.ep, splat (i32 1065353216)
  %i.er = bitcast <8 x i32> %i.eq to <8 x float>
  %i.es = fmul fast <8 x float> %i.en, %i.er      ; 2 uses
  store <8 x float> %i.es, ptr %.086235.i, align 1, !tbaa !54
  %i.et = fadd fast <8 x float> %i.es, %.0202233.i ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.086235.i, i64 32 ; 2 uses
  %i.ev = add nuw nsw i32 %.089234.i, 8           ; 2 uses
  %i.ew = or disjoint i32 %i.ev, 7
  %i.ex = icmp slt i32 %i.ew, %i.ac
  br i1 %i.ex, label %.lr.ph237.i, label %.preheader213.loopexit.i, !llvm.loop !68

.preheader212.i:                                  ; preds = %.lr.ph244.i, %.preheader213.i
  %.0199.lcssa.i = phi <4 x float> [ zeroinitializer, %.preheader213.i ], [ %i.hr, %.lr.ph244.i ] ; 3 uses
  %.190.lcssa.i = phi i32 [ %.089.lcssa.i, %.preheader213.i ], [ %i.ht, %.lr.ph244.i ] ; 5 uses
  %.187.lcssa.i = phi ptr [ %.086.lcssa.i, %.preheader213.i ], [ %i.hs, %.lr.ph244.i ] ; 5 uses
  %i.ey = icmp slt i32 %.190.lcssa.i, %i.ac
  br i1 %i.ey, label %iter.check138, label %._crit_edge252.i

iter.check138:                                    ; preds = %.preheader212.i
  %i.ez = xor i32 %.190.lcssa.i, -1
  %i.fa = add i32 %i.ac, %i.ez                    ; 3 uses
  %i.fb = zext i32 %i.fa to i64
  %i.fc = add nuw nsw i64 %i.fb, 1                ; 5 uses
  %min.iters.check114 = icmp ult i32 %i.fa, 3
  br i1 %min.iters.check114, label %.lr.ph251.i.preheader, label %vector.main.loop.iter.check115

vector.main.loop.iter.check115:                   ; preds = %iter.check138
  %min.iters.check116 = icmp ult i32 %i.fa, 31
  br i1 %min.iters.check116, label %vec.epilog.ph142, label %vector.ph117

vector.ph117:                                     ; preds = %vector.main.loop.iter.check115
  %i.fd = and i64 %i.fc, 28
  %n.vec118 = and i64 %i.fc, 8589934560           ; 5 uses
  %i.fe = shl nuw nsw i64 %n.vec118, 2
  %i.ff = getelementptr i8, ptr %.187.lcssa.i, i64 %i.fe
  %i.fg = trunc i64 %n.vec118 to i32
  %i.fh = add i32 %.190.lcssa.i, %i.fg
  %broadcast.splatinsert119 = insertelement <8 x float> poison, float %.1206.i, i64 0
  %broadcast.splat120 = shufflevector <8 x float> %broadcast.splatinsert119, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph117
  %index122 = phi i64 [ 0, %vector.ph117 ], [ %index.next131, %vector.body121 ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph117 ], [ %i.fu, %vector.body121 ]
  %vec.phi123 = phi <8 x float> [ zeroinitializer, %vector.ph117 ], [ %i.fv, %vector.body121 ]
  %vec.phi124 = phi <8 x float> [ zeroinitializer, %vector.ph117 ], [ %i.fw, %vector.body121 ]
  %vec.phi125 = phi <8 x float> [ zeroinitializer, %vector.ph117 ], [ %i.fx, %vector.body121 ]
  %i.fi = shl i64 %index122, 2
  %next.gep126 = getelementptr i8, ptr %.187.lcssa.i, i64 %i.fi ; 5 uses
  %i.fj = getelementptr i8, ptr %next.gep126, i64 32 ; 2 uses
  %i.fk = getelementptr i8, ptr %next.gep126, i64 64 ; 2 uses
  %i.fl = getelementptr i8, ptr %next.gep126, i64 96 ; 2 uses
  %wide.load127 = load <8 x float>, ptr %next.gep126, align 4, !tbaa !59
  %wide.load128 = load <8 x float>, ptr %i.fj, align 4, !tbaa !59
  %wide.load129 = load <8 x float>, ptr %i.fk, align 4, !tbaa !59
  %wide.load130 = load <8 x float>, ptr %i.fl, align 4, !tbaa !59
  %i.fm = fsub fast <8 x float> %wide.load127, %broadcast.splat120
  %i.fn = fsub fast <8 x float> %wide.load128, %broadcast.splat120
  %i.fo = fsub fast <8 x float> %wide.load129, %broadcast.splat120
  %i.fp = fsub fast <8 x float> %wide.load130, %broadcast.splat120
  %i.fq = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.fm) ; 2 uses
  %i.fr = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.fn) ; 2 uses
  %i.fs = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.fo) ; 2 uses
  %i.ft = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.fp) ; 2 uses
  store <8 x float> %i.fq, ptr %next.gep126, align 4, !tbaa !59
  store <8 x float> %i.fr, ptr %i.fj, align 4, !tbaa !59
  store <8 x float> %i.fs, ptr %i.fk, align 4, !tbaa !59
  store <8 x float> %i.ft, ptr %i.fl, align 4, !tbaa !59
  %i.fu = fadd fast <8 x float> %i.fq, %vec.phi   ; 2 uses
  %i.fv = fadd fast <8 x float> %i.fr, %vec.phi123 ; 2 uses
  %i.fw = fadd fast <8 x float> %i.fs, %vec.phi124 ; 2 uses
  %i.fx = fadd fast <8 x float> %i.ft, %vec.phi125 ; 2 uses
  %index.next131 = add nuw i64 %index122, 32      ; 2 uses
  %i.fy = icmp eq i64 %index.next131, %n.vec118
  br i1 %i.fy, label %middle.block132, label %vector.body121, !llvm.loop !184

middle.block132:                                  ; preds = %vector.body121
  %bin.rdx = fadd fast <8 x float> %i.fv, %i.fu
  %bin.rdx133 = fadd fast <8 x float> %i.fw, %bin.rdx
  %bin.rdx134 = fadd fast <8 x float> %i.fx, %bin.rdx133
  %i.fz = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx134) ; 3 uses
  %cmp.n135 = icmp eq i64 %i.fc, %n.vec118
  br i1 %cmp.n135, label %._crit_edge252.i, label %vec.epilog.iter.check140

vec.epilog.iter.check140:                         ; preds = %middle.block132
  %min.epilog.iters.check141 = icmp eq i64 %i.fd, 0
  br i1 %min.epilog.iters.check141, label %.lr.ph251.i.preheader, label %vec.epilog.ph142, !prof !70

vec.epilog.ph142:                                 ; preds = %vector.main.loop.iter.check115, %vec.epilog.iter.check140
  %vec.epilog.resume.val136 = phi i64 [ %n.vec118, %vec.epilog.iter.check140 ], [ 0, %vector.main.loop.iter.check115 ]
  %bc.merge.rdx = phi float [ %i.fz, %vec.epilog.iter.check140 ], [ 0.000000e+00, %vector.main.loop.iter.check115 ]
  %n.vec143 = and i64 %i.fc, 8589934588           ; 4 uses
  %i.ga = shl nuw nsw i64 %n.vec143, 2
  %i.gb = getelementptr i8, ptr %.187.lcssa.i, i64 %i.ga
  %i.gc = trunc i64 %n.vec143 to i32
  %i.gd = add i32 %.190.lcssa.i, %i.gc
  %i.ge = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %broadcast.splatinsert144 = insertelement <4 x float> poison, float %.1206.i, i64 0
  %broadcast.splat145 = shufflevector <4 x float> %broadcast.splatinsert144, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body146

vec.epilog.vector.body146:                        ; preds = %vec.epilog.vector.body146, %vec.epilog.ph142
  %index147 = phi i64 [ %vec.epilog.resume.val136, %vec.epilog.ph142 ], [ %index.next151, %vec.epilog.vector.body146 ] ; 2 uses
  %vec.phi148 = phi <4 x float> [ %i.ge, %vec.epilog.ph142 ], [ %i.gi, %vec.epilog.vector.body146 ]
  %i.gf = shl i64 %index147, 2
  %next.gep149 = getelementptr i8, ptr %.187.lcssa.i, i64 %i.gf ; 2 uses
  %wide.load150 = load <4 x float>, ptr %next.gep149, align 4, !tbaa !59
  %i.gg = fsub fast <4 x float> %wide.load150, %broadcast.splat145
  %i.gh = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.gg) ; 2 uses
  store <4 x float> %i.gh, ptr %next.gep149, align 4, !tbaa !59
  %i.gi = fadd fast <4 x float> %i.gh, %vec.phi148 ; 2 uses
  %index.next151 = add nuw i64 %index147, 4       ; 2 uses
  %i.gj = icmp eq i64 %index.next151, %n.vec143
  br i1 %i.gj, label %vec.epilog.middle.block152, label %vec.epilog.vector.body146, !llvm.loop !185

vec.epilog.middle.block152:                       ; preds = %vec.epilog.vector.body146
  %i.gk = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.gi) ; 2 uses
  %cmp.n153 = icmp eq i64 %i.fc, %n.vec143
  br i1 %cmp.n153, label %._crit_edge252.i, label %.lr.ph251.i.preheader

.lr.ph251.i.preheader:                            ; preds = %iter.check138, %vec.epilog.iter.check140, %vec.epilog.middle.block152
  %.084250.i.ph = phi float [ 0.000000e+00, %iter.check138 ], [ %i.fz, %vec.epilog.iter.check140 ], [ %i.gk, %vec.epilog.middle.block152 ]
  %.288249.i.ph = phi ptr [ %.187.lcssa.i, %iter.check138 ], [ %i.ff, %vec.epilog.iter.check140 ], [ %i.gb, %vec.epilog.middle.block152 ]
  %.291248.i.ph = phi i32 [ %.190.lcssa.i, %iter.check138 ], [ %i.fh, %vec.epilog.iter.check140 ], [ %i.gd, %vec.epilog.middle.block152 ]
  br label %.lr.ph251.i

.lr.ph244.i:                                      ; preds = %.preheader213.i, %.lr.ph244.i
  %.187243.i = phi ptr [ %i.hs, %.lr.ph244.i ], [ %.086.lcssa.i, %.preheader213.i ] ; 3 uses
  %.190242.i = phi i32 [ %i.ht, %.lr.ph244.i ], [ %.089.lcssa.i, %.preheader213.i ]
  %.0199241.i = phi <4 x float> [ %i.hr, %.lr.ph244.i ], [ zeroinitializer, %.preheader213.i ]
  %i.gl = load <4 x float>, ptr %.187243.i, align 1, !tbaa !54
  %i.gm = fsub fast <4 x float> %i.gl, %.2198.i
  %i.gn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gm, <4 x float> splat (float f0x42B0C0A5))
  %i.go = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gp = fmul fast <4 x float> %i.go, splat (float f0x3FB8AA3B)
  %i.gq = fadd fast <4 x float> %i.gp, splat (float 5.000000e-01) ; 2 uses
  %i.gr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gq)
  %i.gs = sitofp fast <4 x i32> %i.gr to <4 x float> ; 2 uses
  %i.gt = fcmp fast olt <4 x float> %i.gq, %i.gs
  %i.gu = select <4 x i1> %i.gt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gv = fsub fast <4 x float> %i.gs, %i.gu      ; 2 uses
  %i.gw = fmul fast <4 x float> %i.gv, splat (float f0x3F317218)
  %i.gx = fsub fast <4 x float> %i.go, %i.gw      ; 8 uses
  %i.gy = fmul fast <4 x float> %i.gx, %i.gx
  %i.gz = fmul fast <4 x float> %i.gx, splat (float f0x39506967)
  %i.ha = fadd fast <4 x float> %i.gz, splat (float f0x3AB743CE)
  %i.hb = fmul fast <4 x float> %i.ha, %i.gx
  %i.hc = fadd fast <4 x float> %i.hb, splat (float f0x3C088908)
  %i.hd = fmul fast <4 x float> %i.hc, %i.gx
  %i.he = fadd fast <4 x float> %i.hd, splat (float f0x3D2AA9C1)
  %i.hf = fmul fast <4 x float> %i.he, %i.gx
  %i.hg = fadd fast <4 x float> %i.hf, splat (float f0x3E2AAAAA)
  %i.hh = fmul fast <4 x float> %i.hg, %i.gx
  %i.hi = fadd fast <4 x float> %i.hh, splat (float 5.000000e-01)
  %i.hj = fmul fast <4 x float> %i.gy, %i.hi
  %i.hk = fadd fast <4 x float> %i.gx, %i.hj
  %i.hl = fadd fast <4 x float> %i.hk, splat (float 1.000000e+00)
  %i.hm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gv)
  %i.hn = shl <4 x i32> %i.hm, splat (i32 23)
  %i.ho = add <4 x i32> %i.hn, splat (i32 1065353216)
  %i.hp = bitcast <4 x i32> %i.ho to <4 x float>
  %i.hq = fmul fast <4 x float> %i.hl, %i.hp      ; 2 uses
  store <4 x float> %i.hq, ptr %.187243.i, align 1, !tbaa !54
  %i.hr = fadd fast <4 x float> %i.hq, %.0199241.i ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.187243.i, i64 16 ; 2 uses
  %i.ht = add nuw nsw i32 %.190242.i, 4           ; 3 uses
  %i.hu = or disjoint i32 %i.ht, 3
  %i.hv = icmp slt i32 %i.hu, %i.ac
  br i1 %i.hv, label %.lr.ph244.i, label %.preheader212.i, !llvm.loop !72

.lr.ph251.i:                                      ; preds = %.lr.ph251.i.preheader, %.lr.ph251.i
  %.084250.i = phi float [ %i.hz, %.lr.ph251.i ], [ %.084250.i.ph, %.lr.ph251.i.preheader ]
  %.288249.i = phi ptr [ %i.ia, %.lr.ph251.i ], [ %.288249.i.ph, %.lr.ph251.i.preheader ] ; 3 uses
  %.291248.i = phi i32 [ %i.ib, %.lr.ph251.i ], [ %.291248.i.ph, %.lr.ph251.i.preheader ]
  %i.hw = load float, ptr %.288249.i, align 4, !tbaa !59
  %i.hx = fsub fast float %i.hw, %.1206.i
  %i.hy = call fast float @llvm.exp.f32(float %i.hx) ; 2 uses
  store float %i.hy, ptr %.288249.i, align 4, !tbaa !59
  %i.hz = fadd fast float %i.hy, %.084250.i       ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.288249.i, i64 4
  %i.ib = add nuw nsw i32 %.291248.i, 1           ; 2 uses
  %exitcond285.not.i = icmp eq i32 %i.ib, %i.ac
  br i1 %exitcond285.not.i, label %._crit_edge252.i, label %.lr.ph251.i, !llvm.loop !186

._crit_edge252.i:                                 ; preds = %.lr.ph251.i, %middle.block132, %vec.epilog.middle.block152, %.preheader212.i
  %.084.lcssa.i = phi float [ 0.000000e+00, %.preheader212.i ], [ %i.gk, %vec.epilog.middle.block152 ], [ %i.fz, %middle.block132 ], [ %i.hz, %.lr.ph251.i ] ; 2 uses
  %i.ic = icmp eq i32 %i.aa, 8
  br i1 %i.ic, label %.thread209.i, label %bb.f

.thread209.i:                                     ; preds = %._crit_edge252.i
  %i.id = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %.0202.lcssa.i) ; 2 uses
  %i.ie = fmul fast <8 x float> %i.id, %.0202.lcssa.i
  %i.if = fsub fast <8 x float> splat (float 2.000000e+00), %i.ie
  %i.ig = fmul fast <8 x float> %i.if, %i.id
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge252.i
  br i1 %i.cl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ih = shufflevector <8 x float> %.0202.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ii = shufflevector <8 x float> %.0202.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ij = fadd fast <4 x float> %i.ii, %i.ih
  %i.ik = fadd fast <4 x float> %i.ij, %.0199.lcssa.i ; 2 uses
  %i.il = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.ik) ; 2 uses
  %i.im = fmul fast <4 x float> %i.il, %i.ik
  %i.in = fsub fast <4 x float> splat (float 2.000000e+00), %i.im
  %i.io = fmul fast <4 x float> %i.in, %i.il      ; 2 uses
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread209.i
  %.2204.i = phi nsz <8 x float> [ %i.ip, %bb.g ], [ %.0202.lcssa.i, %bb.f ], [ %i.ig, %.thread209.i ] ; 3 uses
  %.1200.i = phi nsz <4 x float> [ %i.io, %bb.g ], [ %.0199.lcssa.i, %bb.f ], [ %.0199.lcssa.i, %.thread209.i ] ; 3 uses
  br i1 %i.dk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.iq = shufflevector <8 x float> %.2204.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ir = shufflevector <8 x float> %.2204.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.is = fadd fast <4 x float> %i.iq, %i.ir      ; 2 uses
  %i.it = shufflevector <4 x float> %i.is, <4 x float> %.1200.i, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.iu = shufflevector <4 x float> %i.is, <4 x float> %.1200.i, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.iv = fadd fast <4 x float> %i.it, %i.iu
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.084.lcssa.i, <4 x float> %i.iv)
  %i.iw = fdiv fast float 1.000000e+00, %op.rdx   ; 2 uses
  %i.ix = insertelement <4 x float> poison, float %i.iw, i64 0 ; 2 uses
  %i.iy = shufflevector <4 x float> %i.ix, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iz = shufflevector <4 x float> %i.ix, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3.i = phi nsz <8 x float> [ %i.iz, %bb.i ], [ %.2204.i, %bb.h ] ; 5 uses
  %.2201.i = phi nsz <4 x float> [ %i.iy, %bb.i ], [ %.1200.i, %bb.h ]
  %.185.i = phi nsz float [ %i.iw, %bb.i ], [ %.084.lcssa.i, %bb.h ] ; 3 uses
  br i1 %i.ad, label %.lr.ph257.i.preheader, label %.preheader211.i

.lr.ph257.i.preheader:                            ; preds = %bb.j
  %i.ja = add nsw i32 %i.ac, -8                   ; 2 uses
  %i.jb = lshr i32 %i.ja, 3
  %i.jc = add nuw nsw i32 %i.jb, 1                ; 2 uses
  %xtraiter229 = and i32 %i.jc, 3                 ; 3 uses
  %i.jd = icmp ult i32 %i.ja, 24
  br i1 %i.jd, label %.lr.ph257.i.epil.preheader, label %.lr.ph257.i.preheader.new

.lr.ph257.i.preheader.new:                        ; preds = %.lr.ph257.i.preheader
  %unroll_iter234 = and i32 %i.jc, 1073741820
  br label %.lr.ph257.i

.preheader211.loopexit.i.unr-lcssa:               ; preds = %.lr.ph257.i
  %lcmp.mod231.not = icmp eq i32 %xtraiter229, 0
  br i1 %lcmp.mod231.not, label %.preheader211.loopexit.i, label %.lr.ph257.i.epil.preheader

.lr.ph257.i.epil.preheader:                       ; preds = %.preheader211.loopexit.i.unr-lcssa, %.lr.ph257.i.preheader
  %.081254.i.epil.init = phi ptr [ %.02042, %.lr.ph257.i.preheader ], [ %i.jv, %.preheader211.loopexit.i.unr-lcssa ]
  %lcmp.mod233 = icmp ne i32 %xtraiter229, 0
  call void @llvm.assume(i1 %lcmp.mod233)
  br label %.lr.ph257.i.epil

.lr.ph257.i.epil:                                 ; preds = %.lr.ph257.i.epil, %.lr.ph257.i.epil.preheader
  %.081254.i.epil = phi ptr [ %i.jg, %.lr.ph257.i.epil ], [ %.081254.i.epil.init, %.lr.ph257.i.epil.preheader ] ; 3 uses
  %epil.iter230 = phi i32 [ %epil.iter230.next, %.lr.ph257.i.epil ], [ 0, %.lr.ph257.i.epil.preheader ]
  %i.je = load <8 x float>, ptr %.081254.i.epil, align 1, !tbaa !54
  %i.jf = fmul fast <8 x float> %i.je, %.3.i
  store <8 x float> %i.jf, ptr %.081254.i.epil, align 1, !tbaa !54
  %i.jg = getelementptr inbounds nuw i8, ptr %.081254.i.epil, i64 32 ; 2 uses
  %epil.iter230.next = add i32 %epil.iter230, 1   ; 2 uses
  %epil.iter230.cmp.not = icmp eq i32 %epil.iter230.next, %xtraiter229
  br i1 %epil.iter230.cmp.not, label %.preheader211.loopexit.i, label %.lr.ph257.i.epil, !llvm.loop !187

.preheader211.loopexit.i:                         ; preds = %.lr.ph257.i.epil, %.preheader211.loopexit.i.unr-lcssa
  %.lcssa222 = phi ptr [ %i.jv, %.preheader211.loopexit.i.unr-lcssa ], [ %i.jg, %.lr.ph257.i.epil ]
  %i.jh = and i32 %i.ac, 2147483640
  br label %.preheader211.i

.preheader211.i:                                  ; preds = %.preheader211.loopexit.i, %bb.j
  %.081.lcssa.i = phi ptr [ %.02042, %bb.j ], [ %.lcssa222, %.preheader211.loopexit.i ] ; 2 uses
  %.078.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.jh, %.preheader211.loopexit.i ] ; 3 uses
  %i.ji = or disjoint i32 %.078.lcssa.i, 3
  %i.jj = icmp slt i32 %i.ji, %i.ac
  br i1 %i.jj, label %.lr.ph262.i, label %.preheader.i

.lr.ph257.i:                                      ; preds = %.lr.ph257.i, %.lr.ph257.i.preheader.new
  %.081254.i = phi ptr [ %.02042, %.lr.ph257.i.preheader.new ], [ %i.jv, %.lr.ph257.i ] ; 6 uses
  %niter235 = phi i32 [ 0, %.lr.ph257.i.preheader.new ], [ %niter235.next.3, %.lr.ph257.i ]
  %i.jk = load <8 x float>, ptr %.081254.i, align 1, !tbaa !54
  %i.jl = fmul fast <8 x float> %i.jk, %.3.i
  store <8 x float> %i.jl, ptr %.081254.i, align 1, !tbaa !54
  %i.jm = getelementptr inbounds nuw i8, ptr %.081254.i, i64 32 ; 2 uses
  %i.jn = load <8 x float>, ptr %i.jm, align 1, !tbaa !54
  %i.jo = fmul fast <8 x float> %i.jn, %.3.i
  store <8 x float> %i.jo, ptr %i.jm, align 1, !tbaa !54
  %i.jp = getelementptr inbounds nuw i8, ptr %.081254.i, i64 64 ; 2 uses
  %i.jq = load <8 x float>, ptr %i.jp, align 1, !tbaa !54
  %i.jr = fmul fast <8 x float> %i.jq, %.3.i
  store <8 x float> %i.jr, ptr %i.jp, align 1, !tbaa !54
  %i.js = getelementptr inbounds nuw i8, ptr %.081254.i, i64 96 ; 2 uses
  %i.jt = load <8 x float>, ptr %i.js, align 1, !tbaa !54
  %i.ju = fmul fast <8 x float> %i.jt, %.3.i
  store <8 x float> %i.ju, ptr %i.js, align 1, !tbaa !54
  %i.jv = getelementptr inbounds nuw i8, ptr %.081254.i, i64 128 ; 3 uses
  %niter235.next.3 = add i32 %niter235, 4         ; 2 uses
  %niter235.ncmp.3.not = icmp eq i32 %niter235.next.3, %unroll_iter234
  br i1 %niter235.ncmp.3.not, label %.preheader211.loopexit.i.unr-lcssa, label %.lr.ph257.i, !llvm.loop !75

.preheader.i:                                     ; preds = %.lr.ph262.i, %.preheader211.i
  %.182.lcssa.i = phi ptr [ %.081.lcssa.i, %.preheader211.i ], [ %i.ky, %.lr.ph262.i ] ; 5 uses
  %.179.lcssa.i = phi i32 [ %.078.lcssa.i, %.preheader211.i ], [ %i.kz, %.lr.ph262.i ] ; 5 uses
  %i.jw = icmp slt i32 %.179.lcssa.i, %i.ac
  br i1 %i.jw, label %iter.check, label %_ZN4ncnnL7softmaxEPfii.exit

iter.check:                                       ; preds = %.preheader.i
  %i.jx = xor i32 %.179.lcssa.i, -1
  %i.jy = add i32 %i.ac, %i.jx                    ; 3 uses
  %i.jz = zext i32 %i.jy to i64
  %i.ka = add nuw nsw i64 %i.jz, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.jy, 7
  br i1 %min.iters.check, label %.lr.ph267.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check99 = icmp ult i32 %i.jy, 31
  br i1 %min.iters.check99, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kb = and i64 %i.ka, 24
  %n.vec = and i64 %i.ka, 8589934560              ; 5 uses
  %i.kc = trunc i64 %n.vec to i32
  %i.kd = add i32 %.179.lcssa.i, %i.kc
  %i.ke = shl nuw nsw i64 %n.vec, 2
  %i.kf = getelementptr i8, ptr %.182.lcssa.i, i64 %i.ke
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.185.i, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.182.lcssa.i, i64 %i.kg ; 5 uses
  %i.kh = getelementptr i8, ptr %next.gep, i64 32 ; 2 uses
  %i.ki = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.kj = getelementptr i8, ptr %next.gep, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !59
  %wide.load100 = load <8 x float>, ptr %i.kh, align 4, !tbaa !59
  %wide.load101 = load <8 x float>, ptr %i.ki, align 4, !tbaa !59
  %wide.load102 = load <8 x float>, ptr %i.kj, align 4, !tbaa !59
  %i.kk = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.kl = fmul fast <8 x float> %wide.load100, %broadcast.splat
  %i.km = fmul fast <8 x float> %wide.load101, %broadcast.splat
  %i.kn = fmul fast <8 x float> %wide.load102, %broadcast.splat
  store <8 x float> %i.kk, ptr %next.gep, align 4, !tbaa !59
  store <8 x float> %i.kl, ptr %i.kh, align 4, !tbaa !59
  store <8 x float> %i.km, ptr %i.ki, align 4, !tbaa !59
  store <8 x float> %i.kn, ptr %i.kj, align 4, !tbaa !59
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ko = icmp eq i64 %index.next, %n.vec
  br i1 %i.ko, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
end_hunk_4
begin_hunk_5_@_ZNK4ncnn15Softmax_x86_avx15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.6:bb.a
iter.check203:                                    ; preds = %.preheader214.i
  %i.bm = xor i32 %.176.lcssa.i, -1
  %i.bn = add i32 %i.an, %i.bm                    ; 3 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 5 uses
  %min.iters.check177 = icmp ult i32 %i.bn, 7
  br i1 %min.iters.check177, label %.lr.ph231.i.preheader, label %vector.main.loop.iter.check178

vector.main.loop.iter.check178:                   ; preds = %iter.check203
  %min.iters.check179 = icmp ult i32 %i.bn, 31
  br i1 %min.iters.check179, label %vec.epilog.ph207, label %vector.ph180

vector.ph180:                                     ; preds = %vector.main.loop.iter.check178
  %i.bq = and i64 %i.bp, 24
  %n.vec181 = and i64 %i.bp, 8589934560           ; 5 uses
  %i.br = shl nuw nsw i64 %n.vec181, 2
  %i.bs = getelementptr i8, ptr %.1.lcssa.i, i64 %i.br
  %i.bt = trunc i64 %n.vec181 to i32
  %i.bu = add i32 %.176.lcssa.i, %i.bt
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph180
  %index183 = phi i64 [ 0, %vector.ph180 ], [ %index.next193, %vector.body182 ] ; 2 uses
  %vec.phi184 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph180 ], [ %i.bz, %vector.body182 ]
  %vec.phi185 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph180 ], [ %i.ca, %vector.body182 ]
  %vec.phi186 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph180 ], [ %i.cb, %vector.body182 ]
  %vec.phi187 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph180 ], [ %i.cc, %vector.body182 ]
  %i.bv = shl i64 %index183, 2
  %next.gep188 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bv ; 4 uses
  %i.bw = getelementptr i8, ptr %next.gep188, i64 32
  %i.bx = getelementptr i8, ptr %next.gep188, i64 64
  %i.by = getelementptr i8, ptr %next.gep188, i64 96
  %wide.load189 = load <8 x float>, ptr %next.gep188, align 4, !tbaa !59
  %wide.load190 = load <8 x float>, ptr %i.bw, align 4, !tbaa !59
  %wide.load191 = load <8 x float>, ptr %i.bx, align 4, !tbaa !59
  %wide.load192 = load <8 x float>, ptr %i.by, align 4, !tbaa !59
  %i.bz = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi184, <8 x float> %wide.load189) ; 2 uses
  %i.ca = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi185, <8 x float> %wide.load190) ; 2 uses
  %i.cb = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi186, <8 x float> %wide.load191) ; 2 uses
  %i.cc = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi187, <8 x float> %wide.load192) ; 2 uses
  %index.next193 = add nuw i64 %index183, 32      ; 2 uses
  %i.cd = icmp eq i64 %index.next193, %n.vec181
  br i1 %i.cd, label %middle.block194, label %vector.body182, !llvm.loop !204

middle.block194:                                  ; preds = %vector.body182
  %rdx.minmax.select = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bz, <8 x float> %i.ca)
  %rdx.minmax.select196 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.cb)
  %rdx.minmax.select198 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select196, <8 x float> %i.cc)
  %i.ce = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select198) ; 3 uses
  %cmp.n199 = icmp eq i64 %i.bp, %n.vec181
  br i1 %cmp.n199, label %._crit_edge.i, label %vec.epilog.iter.check205

vec.epilog.iter.check205:                         ; preds = %middle.block194
  %min.epilog.iters.check206 = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check206, label %.lr.ph231.i.preheader, label %vec.epilog.ph207, !prof !64

vec.epilog.ph207:                                 ; preds = %vector.main.loop.iter.check178, %vec.epilog.iter.check205
  %vec.epilog.resume.val200 = phi i64 [ %n.vec181, %vec.epilog.iter.check205 ], [ 0, %vector.main.loop.iter.check178 ]
  %bc.merge.rdx202 = phi float [ %i.ce, %vec.epilog.iter.check205 ], [ f0xFF7FFFFF, %vector.main.loop.iter.check178 ]
  %n.vec208 = and i64 %i.bp, 8589934584           ; 4 uses
  %i.cf = shl nuw nsw i64 %n.vec208, 2
  %i.cg = getelementptr i8, ptr %.1.lcssa.i, i64 %i.cf
  %i.ch = trunc i64 %n.vec208 to i32
  %i.ci = add i32 %.176.lcssa.i, %i.ch
  %broadcast.splatinsert209 = insertelement <8 x float> poison, float %bc.merge.rdx202, i64 0
  %broadcast.splat210 = shufflevector <8 x float> %broadcast.splatinsert209, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body211

vec.epilog.vector.body211:                        ; preds = %vec.epilog.vector.body211, %vec.epilog.ph207
  %index212 = phi i64 [ %vec.epilog.resume.val200, %vec.epilog.ph207 ], [ %index.next216, %vec.epilog.vector.body211 ] ; 2 uses
  %vec.phi213 = phi <8 x float> [ %broadcast.splat210, %vec.epilog.ph207 ], [ %i.ck, %vec.epilog.vector.body211 ]
  %i.cj = shl i64 %index212, 2
  %next.gep214 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.cj
  %wide.load215 = load <8 x float>, ptr %next.gep214, align 4, !tbaa !59
  %i.ck = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi213, <8 x float> %wide.load215) ; 2 uses
  %index.next216 = add nuw i64 %index212, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next216, %n.vec208
  br i1 %i.cl, label %vec.epilog.middle.block217, label %vec.epilog.vector.body211, !llvm.loop !205

vec.epilog.middle.block217:                       ; preds = %vec.epilog.vector.body211
  %i.cm = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.ck) ; 2 uses
  %cmp.n218 = icmp eq i64 %i.bp, %n.vec208
  br i1 %cmp.n218, label %._crit_edge.i, label %.lr.ph231.i.preheader

.lr.ph231.i.preheader:                            ; preds = %iter.check203, %vec.epilog.iter.check205, %vec.epilog.middle.block217
  %.2230.i.ph = phi ptr [ %.1.lcssa.i, %iter.check203 ], [ %i.bs, %vec.epilog.iter.check205 ], [ %i.cg, %vec.epilog.middle.block217 ]
  %.277229.i.ph = phi i32 [ %.176.lcssa.i, %iter.check203 ], [ %i.bu, %vec.epilog.iter.check205 ], [ %i.ci, %vec.epilog.middle.block217 ]
  %.0205228.i.ph = phi float [ f0xFF7FFFFF, %iter.check203 ], [ %i.ce, %vec.epilog.iter.check205 ], [ %i.cm, %vec.epilog.middle.block217 ]
  br label %.lr.ph231.i

.lr.ph224.i:                                      ; preds = %.preheader215.i, %.lr.ph224.i
  %.1223.i = phi ptr [ %i.cp, %.lr.ph224.i ], [ %.0.lcssa.i, %.preheader215.i ] ; 2 uses
  %.176222.i = phi i32 [ %i.cq, %.lr.ph224.i ], [ %.075.lcssa.i, %.preheader215.i ]
  %.0196221.i = phi <4 x float> [ %i.co, %.lr.ph224.i ], [ splat (float f0xFF7FFFFF), %.preheader215.i ]
  %i.cn = load <4 x float>, ptr %.1223.i, align 1, !tbaa !54
  %i.co = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0196221.i, <4 x float> nofpclass(nan inf) %i.cn) ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.1223.i, i64 16 ; 2 uses
  %i.cq = add nuw nsw i32 %.176222.i, 4           ; 3 uses
  %i.cr = or disjoint i32 %i.cq, 3
  %i.cs = icmp slt i32 %i.cr, %i.an
  br i1 %i.cs, label %.lr.ph224.i, label %.preheader214.i, !llvm.loop !66

.lr.ph231.i:                                      ; preds = %.lr.ph231.i.preheader, %.lr.ph231.i
  %.2230.i = phi ptr [ %i.ct, %.lr.ph231.i ], [ %.2230.i.ph, %.lr.ph231.i.preheader ] ; 2 uses
  %.277229.i = phi i32 [ %i.cv, %.lr.ph231.i ], [ %.277229.i.ph, %.lr.ph231.i.preheader ]
  %.0205228.i = phi float [ %.sroa.speculated126.i, %.lr.ph231.i ], [ %.0205228.i.ph, %.lr.ph231.i.preheader ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.2230.i, i64 4
  %i.cu = load float, ptr %.2230.i, align 4, !tbaa !59
  %.sroa.speculated126.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.0205228.i, float %i.cu) ; 2 uses
  %i.cv = add nuw nsw i32 %.277229.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cv, %i.an
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph231.i, !llvm.loop !206

._crit_edge.i:                                    ; preds = %.lr.ph231.i, %middle.block194, %vec.epilog.middle.block217, %.preheader214.i
  %.0205.lcssa.i = phi float [ f0xFF7FFFFF, %.preheader214.i ], [ %i.cm, %vec.epilog.middle.block217 ], [ %i.ce, %middle.block194 ], [ %.sroa.speculated126.i, %.lr.ph231.i ] ; 4 uses
  %i.cw = icmp eq i32 %i.al, 4                    ; 2 uses
  br i1 %i.cw, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %._crit_edge.i
  %i.cx = shufflevector <8 x float> %.0193.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cy = shufflevector <8 x float> %.0193.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0196.lcssa.i, <4 x float> nofpclass(nan inf) %i.cx)
  %i.da = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cz, <4 x float> nofpclass(nan inf) %i.cy) ; 2 uses
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i
  %i.dc = icmp eq i32 %i.al, 1
  br i1 %i.dc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dd = shufflevector <8 x float> %.0193.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.de = shufflevector <8 x float> %.0193.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.df = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dd, <4 x float> nofpclass(nan inf) %i.de) ; 2 uses
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.df, <4 x float> nofpclass(nan inf) %i.dg) ; 2 uses
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.di)
  %i.dk = extractelement <4 x float> %i.dj, i64 0 ; 2 uses
  %i.dl = fcmp fast olt float %.0205.lcssa.i, %i.dk
  %.sroa.speculated119.i = select i1 %i.dl, float %i.dk, float %.0205.lcssa.i ; 2 uses
  %i.dm = shufflevector <4 x float> %.0196.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0196.lcssa.i, <4 x float> nofpclass(nan inf) %i.dm) ; 2 uses
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dn, <4 x float> nofpclass(nan inf) %i.do)
  %i.dq = extractelement <4 x float> %i.dp, i64 0 ; 2 uses
  %i.dr = fcmp fast olt float %.sroa.speculated119.i, %i.dq
  %.sroa.speculated.i = select i1 %i.dr, float %i.dq, float %.sroa.speculated119.i ; 2 uses
  %i.ds = insertelement <4 x float> poison, float %.sroa.speculated.i, i64 0 ; 2 uses
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> zeroinitializer
  %i.du = shufflevector <4 x float> %i.ds, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread.i
  %i.dv = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %.thread.i ]
  %.1206.i = phi nsz float [ %.sroa.speculated.i, %bb.d ], [ %.0205.lcssa.i, %bb.c ], [ %.0205.lcssa.i, %.thread.i ] ; 3 uses
  %.2198.i = phi nsz <4 x float> [ %i.dt, %bb.d ], [ %.0196.lcssa.i, %bb.c ], [ %i.da, %.thread.i ]
  %.2195.i = phi nsz <8 x float> [ %i.du, %bb.d ], [ %.0193.lcssa.i, %bb.c ], [ %i.db, %.thread.i ]
  br i1 %i.ao, label %.lr.ph237.i, label %.preheader213.i

.preheader213.loopexit.i:                         ; preds = %.lr.ph237.i
  %i.dw = and i32 %i.an, 2147483640
  br label %.preheader213.i

.preheader213.i:                                  ; preds = %.preheader213.loopexit.i, %bb.e
  %.0202.lcssa.i = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.fe, %.preheader213.loopexit.i ] ; 5 uses
  %.089.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.dw, %.preheader213.loopexit.i ] ; 3 uses
  %.086.lcssa.i = phi ptr [ %.146, %bb.e ], [ %i.ff, %.preheader213.loopexit.i ] ; 2 uses
  %i.dx = or disjoint i32 %.089.lcssa.i, 3
  %i.dy = icmp slt i32 %i.dx, %i.an
  br i1 %i.dy, label %.lr.ph244.i, label %.preheader212.i

.lr.ph237.i:                                      ; preds = %bb.e, %.lr.ph237.i
  %.086235.i = phi ptr [ %i.ff, %.lr.ph237.i ], [ %.146, %bb.e ] ; 3 uses
  %.089234.i = phi i32 [ %i.fg, %.lr.ph237.i ], [ 0, %bb.e ]
  %.0202233.i = phi <8 x float> [ %i.fe, %.lr.ph237.i ], [ zeroinitializer, %bb.e ]
  %i.dz = load <8 x float>, ptr %.086235.i, align 1, !tbaa !54
  %i.ea = fsub fast <8 x float> %i.dz, %.2195.i
  %i.eb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ea, <8 x float> splat (float f0x42B0C0A5))
  %i.ec = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.eb, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ed = fmul fast <8 x float> %i.ec, splat (float f0x3FB8AA3B)
  %i.ee = fadd fast <8 x float> %i.ed, splat (float 5.000000e-01) ; 2 uses
  %i.ef = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ee, i32 1) ; 2 uses
  %i.eg = fcmp fast ogt <8 x float> %i.ef, %i.ee
  %i.eh = select <8 x i1> %i.eg, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ei = fsub fast <8 x float> %i.ef, %i.eh      ; 2 uses
  %i.ej = fmul fast <8 x float> %i.ei, splat (float f0x3F317218)
  %i.ek = fsub fast <8 x float> %i.ec, %i.ej      ; 8 uses
  %i.el = fmul fast <8 x float> %i.ek, %i.ek
  %i.em = fmul fast <8 x float> %i.ek, splat (float f0x39506967)
  %i.en = fadd fast <8 x float> %i.em, splat (float f0x3AB743CE)
  %i.eo = fmul fast <8 x float> %i.en, %i.ek
  %i.ep = fadd fast <8 x float> %i.eo, splat (float f0x3C088908)
  %i.eq = fmul fast <8 x float> %i.ep, %i.ek
  %i.er = fadd fast <8 x float> %i.eq, splat (float f0x3D2AA9C1)
  %i.es = fmul fast <8 x float> %i.er, %i.ek
  %i.et = fadd fast <8 x float> %i.es, splat (float f0x3E2AAAAA)
  %i.eu = fmul fast <8 x float> %i.et, %i.ek
  %i.ev = fadd fast <8 x float> %i.eu, splat (float 5.000000e-01)
  %i.ew = fmul fast <8 x float> %i.el, %i.ev
  %i.ex = fadd fast <8 x float> %i.ek, %i.ew
  %i.ey = fadd fast <8 x float> %i.ex, splat (float 1.000000e+00)
  %i.ez = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ei)
  %i.fa = shl <8 x i32> %i.ez, splat (i32 23)
  %i.fb = add <8 x i32> %i.fa, splat (i32 1065353216)
  %i.fc = bitcast <8 x i32> %i.fb to <8 x float>
  %i.fd = fmul fast <8 x float> %i.ey, %i.fc      ; 2 uses
  store <8 x float> %i.fd, ptr %.086235.i, align 1, !tbaa !54
  %i.fe = fadd fast <8 x float> %i.fd, %.0202233.i ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.086235.i, i64 32 ; 2 uses
  %i.fg = add nuw nsw i32 %.089234.i, 8           ; 2 uses
  %i.fh = or disjoint i32 %i.fg, 7
  %i.fi = icmp slt i32 %i.fh, %i.an
  br i1 %i.fi, label %.lr.ph237.i, label %.preheader213.loopexit.i, !llvm.loop !68

.preheader212.i:                                  ; preds = %.lr.ph244.i, %.preheader213.i
  %.0199.lcssa.i = phi <4 x float> [ zeroinitializer, %.preheader213.i ], [ %i.ic, %.lr.ph244.i ] ; 3 uses
  %.190.lcssa.i = phi i32 [ %.089.lcssa.i, %.preheader213.i ], [ %i.ie, %.lr.ph244.i ] ; 5 uses
  %.187.lcssa.i = phi ptr [ %.086.lcssa.i, %.preheader213.i ], [ %i.id, %.lr.ph244.i ] ; 5 uses
  %i.fj = icmp slt i32 %.190.lcssa.i, %i.an
  br i1 %i.fj, label %iter.check158, label %._crit_edge252.i

iter.check158:                                    ; preds = %.preheader212.i
  %i.fk = xor i32 %.190.lcssa.i, -1
  %i.fl = add i32 %i.an, %i.fk                    ; 3 uses
  %i.fm = zext i32 %i.fl to i64
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 5 uses
  %min.iters.check134 = icmp ult i32 %i.fl, 3
  br i1 %min.iters.check134, label %.lr.ph251.i.preheader, label %vector.main.loop.iter.check135

vector.main.loop.iter.check135:                   ; preds = %iter.check158
  %min.iters.check136 = icmp ult i32 %i.fl, 31
  br i1 %min.iters.check136, label %vec.epilog.ph162, label %vector.ph137

vector.ph137:                                     ; preds = %vector.main.loop.iter.check135
  %i.fo = and i64 %i.fn, 28
  %n.vec138 = and i64 %i.fn, 8589934560           ; 5 uses
  %i.fp = shl nuw nsw i64 %n.vec138, 2
  %i.fq = getelementptr i8, ptr %.187.lcssa.i, i64 %i.fp
  %i.fr = trunc i64 %n.vec138 to i32
  %i.fs = add i32 %.190.lcssa.i, %i.fr
  %broadcast.splatinsert139 = insertelement <8 x float> poison, float %.1206.i, i64 0
  %broadcast.splat140 = shufflevector <8 x float> %broadcast.splatinsert139, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph137
  %index142 = phi i64 [ 0, %vector.ph137 ], [ %index.next151, %vector.body141 ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph137 ], [ %i.gf, %vector.body141 ]
  %vec.phi143 = phi <8 x float> [ zeroinitializer, %vector.ph137 ], [ %i.gg, %vector.body141 ]
  %vec.phi144 = phi <8 x float> [ zeroinitializer, %vector.ph137 ], [ %i.gh, %vector.body141 ]
  %vec.phi145 = phi <8 x float> [ zeroinitializer, %vector.ph137 ], [ %i.gi, %vector.body141 ]
  %i.ft = shl i64 %index142, 2
  %next.gep146 = getelementptr i8, ptr %.187.lcssa.i, i64 %i.ft ; 5 uses
  %i.fu = getelementptr i8, ptr %next.gep146, i64 32 ; 2 uses
  %i.fv = getelementptr i8, ptr %next.gep146, i64 64 ; 2 uses
  %i.fw = getelementptr i8, ptr %next.gep146, i64 96 ; 2 uses
  %wide.load147 = load <8 x float>, ptr %next.gep146, align 4, !tbaa !59
  %wide.load148 = load <8 x float>, ptr %i.fu, align 4, !tbaa !59
  %wide.load149 = load <8 x float>, ptr %i.fv, align 4, !tbaa !59
  %wide.load150 = load <8 x float>, ptr %i.fw, align 4, !tbaa !59
  %i.fx = fsub fast <8 x float> %wide.load147, %broadcast.splat140
  %i.fy = fsub fast <8 x float> %wide.load148, %broadcast.splat140
  %i.fz = fsub fast <8 x float> %wide.load149, %broadcast.splat140
  %i.ga = fsub fast <8 x float> %wide.load150, %broadcast.splat140
  %i.gb = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.fx) ; 2 uses
  %i.gc = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.fy) ; 2 uses
  %i.gd = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.fz) ; 2 uses
  %i.ge = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.ga) ; 2 uses
  store <8 x float> %i.gb, ptr %next.gep146, align 4, !tbaa !59
  store <8 x float> %i.gc, ptr %i.fu, align 4, !tbaa !59
  store <8 x float> %i.gd, ptr %i.fv, align 4, !tbaa !59
  store <8 x float> %i.ge, ptr %i.fw, align 4, !tbaa !59
  %i.gf = fadd fast <8 x float> %i.gb, %vec.phi   ; 2 uses
  %i.gg = fadd fast <8 x float> %i.gc, %vec.phi143 ; 2 uses
  %i.gh = fadd fast <8 x float> %i.gd, %vec.phi144 ; 2 uses
  %i.gi = fadd fast <8 x float> %i.ge, %vec.phi145 ; 2 uses
  %index.next151 = add nuw i64 %index142, 32      ; 2 uses
  %i.gj = icmp eq i64 %index.next151, %n.vec138
  br i1 %i.gj, label %middle.block152, label %vector.body141, !llvm.loop !207

middle.block152:                                  ; preds = %vector.body141
  %bin.rdx = fadd fast <8 x float> %i.gg, %i.gf
  %bin.rdx153 = fadd fast <8 x float> %i.gh, %bin.rdx
  %bin.rdx154 = fadd fast <8 x float> %i.gi, %bin.rdx153
  %i.gk = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx154) ; 3 uses
  %cmp.n155 = icmp eq i64 %i.fn, %n.vec138
  br i1 %cmp.n155, label %._crit_edge252.i, label %vec.epilog.iter.check160

vec.epilog.iter.check160:                         ; preds = %middle.block152
  %min.epilog.iters.check161 = icmp eq i64 %i.fo, 0
  br i1 %min.epilog.iters.check161, label %.lr.ph251.i.preheader, label %vec.epilog.ph162, !prof !70

vec.epilog.ph162:                                 ; preds = %vector.main.loop.iter.check135, %vec.epilog.iter.check160
  %vec.epilog.resume.val156 = phi i64 [ %n.vec138, %vec.epilog.iter.check160 ], [ 0, %vector.main.loop.iter.check135 ]
  %bc.merge.rdx = phi float [ %i.gk, %vec.epilog.iter.check160 ], [ 0.000000e+00, %vector.main.loop.iter.check135 ]
  %n.vec163 = and i64 %i.fn, 8589934588           ; 4 uses
  %i.gl = shl nuw nsw i64 %n.vec163, 2
  %i.gm = getelementptr i8, ptr %.187.lcssa.i, i64 %i.gl
  %i.gn = trunc i64 %n.vec163 to i32
  %i.go = add i32 %.190.lcssa.i, %i.gn
  %i.gp = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %broadcast.splatinsert164 = insertelement <4 x float> poison, float %.1206.i, i64 0
  %broadcast.splat165 = shufflevector <4 x float> %broadcast.splatinsert164, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body166

vec.epilog.vector.body166:                        ; preds = %vec.epilog.vector.body166, %vec.epilog.ph162
  %index167 = phi i64 [ %vec.epilog.resume.val156, %vec.epilog.ph162 ], [ %index.next171, %vec.epilog.vector.body166 ] ; 2 uses
  %vec.phi168 = phi <4 x float> [ %i.gp, %vec.epilog.ph162 ], [ %i.gt, %vec.epilog.vector.body166 ]
  %i.gq = shl i64 %index167, 2
  %next.gep169 = getelementptr i8, ptr %.187.lcssa.i, i64 %i.gq ; 2 uses
  %wide.load170 = load <4 x float>, ptr %next.gep169, align 4, !tbaa !59
  %i.gr = fsub fast <4 x float> %wide.load170, %broadcast.splat165
  %i.gs = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.gr) ; 2 uses
  store <4 x float> %i.gs, ptr %next.gep169, align 4, !tbaa !59
  %i.gt = fadd fast <4 x float> %i.gs, %vec.phi168 ; 2 uses
  %index.next171 = add nuw i64 %index167, 4       ; 2 uses
  %i.gu = icmp eq i64 %index.next171, %n.vec163
  br i1 %i.gu, label %vec.epilog.middle.block172, label %vec.epilog.vector.body166, !llvm.loop !208

vec.epilog.middle.block172:                       ; preds = %vec.epilog.vector.body166
  %i.gv = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.gt) ; 2 uses
  %cmp.n173 = icmp eq i64 %i.fn, %n.vec163
  br i1 %cmp.n173, label %._crit_edge252.i, label %.lr.ph251.i.preheader

.lr.ph251.i.preheader:                            ; preds = %iter.check158, %vec.epilog.iter.check160, %vec.epilog.middle.block172
  %.084250.i.ph = phi float [ 0.000000e+00, %iter.check158 ], [ %i.gk, %vec.epilog.iter.check160 ], [ %i.gv, %vec.epilog.middle.block172 ]
  %.288249.i.ph = phi ptr [ %.187.lcssa.i, %iter.check158 ], [ %i.fq, %vec.epilog.iter.check160 ], [ %i.gm, %vec.epilog.middle.block172 ]
  %.291248.i.ph = phi i32 [ %.190.lcssa.i, %iter.check158 ], [ %i.fs, %vec.epilog.iter.check160 ], [ %i.go, %vec.epilog.middle.block172 ]
  br label %.lr.ph251.i

.lr.ph244.i:                                      ; preds = %.preheader213.i, %.lr.ph244.i
  %.187243.i = phi ptr [ %i.id, %.lr.ph244.i ], [ %.086.lcssa.i, %.preheader213.i ] ; 3 uses
  %.190242.i = phi i32 [ %i.ie, %.lr.ph244.i ], [ %.089.lcssa.i, %.preheader213.i ]
  %.0199241.i = phi <4 x float> [ %i.ic, %.lr.ph244.i ], [ zeroinitializer, %.preheader213.i ]
  %i.gw = load <4 x float>, ptr %.187243.i, align 1, !tbaa !54
  %i.gx = fsub fast <4 x float> %i.gw, %.2198.i
  %i.gy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gx, <4 x float> splat (float f0x42B0C0A5))
  %i.gz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ha = fmul fast <4 x float> %i.gz, splat (float f0x3FB8AA3B)
  %i.hb = fadd fast <4 x float> %i.ha, splat (float 5.000000e-01) ; 2 uses
  %i.hc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hb)
  %i.hd = sitofp fast <4 x i32> %i.hc to <4 x float> ; 2 uses
  %i.he = fcmp fast olt <4 x float> %i.hb, %i.hd
  %i.hf = select <4 x i1> %i.he, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hg = fsub fast <4 x float> %i.hd, %i.hf      ; 2 uses
  %i.hh = fmul fast <4 x float> %i.hg, splat (float f0x3F317218)
  %i.hi = fsub fast <4 x float> %i.gz, %i.hh      ; 8 uses
  %i.hj = fmul fast <4 x float> %i.hi, %i.hi
  %i.hk = fmul fast <4 x float> %i.hi, splat (float f0x39506967)
  %i.hl = fadd fast <4 x float> %i.hk, splat (float f0x3AB743CE)
  %i.hm = fmul fast <4 x float> %i.hl, %i.hi
  %i.hn = fadd fast <4 x float> %i.hm, splat (float f0x3C088908)
  %i.ho = fmul fast <4 x float> %i.hn, %i.hi
  %i.hp = fadd fast <4 x float> %i.ho, splat (float f0x3D2AA9C1)
  %i.hq = fmul fast <4 x float> %i.hp, %i.hi
  %i.hr = fadd fast <4 x float> %i.hq, splat (float f0x3E2AAAAA)
  %i.hs = fmul fast <4 x float> %i.hr, %i.hi
  %i.ht = fadd fast <4 x float> %i.hs, splat (float 5.000000e-01)
  %i.hu = fmul fast <4 x float> %i.hj, %i.ht
  %i.hv = fadd fast <4 x float> %i.hi, %i.hu
  %i.hw = fadd fast <4 x float> %i.hv, splat (float 1.000000e+00)
  %i.hx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hg)
  %i.hy = shl <4 x i32> %i.hx, splat (i32 23)
  %i.hz = add <4 x i32> %i.hy, splat (i32 1065353216)
  %i.ia = bitcast <4 x i32> %i.hz to <4 x float>
  %i.ib = fmul fast <4 x float> %i.hw, %i.ia      ; 2 uses
  store <4 x float> %i.ib, ptr %.187243.i, align 1, !tbaa !54
  %i.ic = fadd fast <4 x float> %i.ib, %.0199241.i ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.187243.i, i64 16 ; 2 uses
  %i.ie = add nuw nsw i32 %.190242.i, 4           ; 3 uses
  %i.if = or disjoint i32 %i.ie, 3
  %i.ig = icmp slt i32 %i.if, %i.an
  br i1 %i.ig, label %.lr.ph244.i, label %.preheader212.i, !llvm.loop !72

.lr.ph251.i:                                      ; preds = %.lr.ph251.i.preheader, %.lr.ph251.i
  %.084250.i = phi float [ %i.ik, %.lr.ph251.i ], [ %.084250.i.ph, %.lr.ph251.i.preheader ]
  %.288249.i = phi ptr [ %i.il, %.lr.ph251.i ], [ %.288249.i.ph, %.lr.ph251.i.preheader ] ; 3 uses
  %.291248.i = phi i32 [ %i.im, %.lr.ph251.i ], [ %.291248.i.ph, %.lr.ph251.i.preheader ]
  %i.ih = load float, ptr %.288249.i, align 4, !tbaa !59
  %i.ii = fsub fast float %i.ih, %.1206.i
  %i.ij = call fast float @llvm.exp.f32(float %i.ii) ; 2 uses
  store float %i.ij, ptr %.288249.i, align 4, !tbaa !59
  %i.ik = fadd fast float %i.ij, %.084250.i       ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.288249.i, i64 4
  %i.im = add nuw nsw i32 %.291248.i, 1           ; 2 uses
  %exitcond285.not.i = icmp eq i32 %i.im, %i.an
  br i1 %exitcond285.not.i, label %._crit_edge252.i, label %.lr.ph251.i, !llvm.loop !209

._crit_edge252.i:                                 ; preds = %.lr.ph251.i, %middle.block152, %vec.epilog.middle.block172, %.preheader212.i
  %.084.lcssa.i = phi float [ 0.000000e+00, %.preheader212.i ], [ %i.gv, %vec.epilog.middle.block172 ], [ %i.gk, %middle.block152 ], [ %i.ik, %.lr.ph251.i ] ; 2 uses
  %i.in = icmp eq i32 %i.al, 8
  br i1 %i.in, label %.thread209.i, label %bb.f

.thread209.i:                                     ; preds = %._crit_edge252.i
  %i.io = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %.0202.lcssa.i) ; 2 uses
  %i.ip = fmul fast <8 x float> %i.io, %.0202.lcssa.i
  %i.iq = fsub fast <8 x float> splat (float 2.000000e+00), %i.ip
  %i.ir = fmul fast <8 x float> %i.iq, %i.io
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge252.i
  br i1 %i.cw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.is = shufflevector <8 x float> %.0202.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.it = shufflevector <8 x float> %.0202.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.iu = fadd fast <4 x float> %i.it, %i.is
  %i.iv = fadd fast <4 x float> %i.iu, %.0199.lcssa.i ; 2 uses
  %i.iw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.iv) ; 2 uses
  %i.ix = fmul fast <4 x float> %i.iw, %i.iv
  %i.iy = fsub fast <4 x float> splat (float 2.000000e+00), %i.ix
  %i.iz = fmul fast <4 x float> %i.iy, %i.iw      ; 2 uses
  %i.ja = shufflevector <4 x float> %i.iz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread209.i
  %.2204.i = phi nsz <8 x float> [ %i.ja, %bb.g ], [ %.0202.lcssa.i, %bb.f ], [ %i.ir, %.thread209.i ] ; 3 uses
  %.1200.i = phi nsz <4 x float> [ %i.iz, %bb.g ], [ %.0199.lcssa.i, %bb.f ], [ %.0199.lcssa.i, %.thread209.i ] ; 3 uses
  br i1 %i.dv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.jb = shufflevector <8 x float> %.2204.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.jc = shufflevector <8 x float> %.2204.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jd = fadd fast <4 x float> %i.jb, %i.jc      ; 2 uses
  %i.je = shufflevector <4 x float> %i.jd, <4 x float> %.1200.i, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.jf = shufflevector <4 x float> %i.jd, <4 x float> %.1200.i, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.jg = fadd fast <4 x float> %i.je, %i.jf
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.084.lcssa.i, <4 x float> %i.jg)
  %i.jh = fdiv fast float 1.000000e+00, %op.rdx   ; 2 uses
  %i.ji = insertelement <4 x float> poison, float %i.jh, i64 0 ; 2 uses
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jk = shufflevector <4 x float> %i.ji, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3.i = phi nsz <8 x float> [ %i.jk, %bb.i ], [ %.2204.i, %bb.h ] ; 5 uses
  %.2201.i = phi nsz <4 x float> [ %i.jj, %bb.i ], [ %.1200.i, %bb.h ]
  %.185.i = phi nsz float [ %i.jh, %bb.i ], [ %.084.lcssa.i, %bb.h ] ; 3 uses
  br i1 %i.ao, label %.lr.ph257.i.preheader, label %.preheader211.i

.lr.ph257.i.preheader:                            ; preds = %bb.j
  %i.jl = add nsw i32 %i.an, -8                   ; 2 uses
  %i.jm = lshr i32 %i.jl, 3
  %i.jn = add nuw nsw i32 %i.jm, 1                ; 2 uses
  %xtraiter251 = and i32 %i.jn, 3                 ; 3 uses
  %i.jo = icmp ult i32 %i.jl, 24
  br i1 %i.jo, label %.lr.ph257.i.epil.preheader, label %.lr.ph257.i.preheader.new

.lr.ph257.i.preheader.new:                        ; preds = %.lr.ph257.i.preheader
  %unroll_iter256 = and i32 %i.jn, 1073741820
  br label %.lr.ph257.i

.preheader211.loopexit.i.unr-lcssa:               ; preds = %.lr.ph257.i
  %lcmp.mod253.not = icmp eq i32 %xtraiter251, 0
  br i1 %lcmp.mod253.not, label %.preheader211.loopexit.i, label %.lr.ph257.i.epil.preheader

.lr.ph257.i.epil.preheader:                       ; preds = %.preheader211.loopexit.i.unr-lcssa, %.lr.ph257.i.preheader
  %.081254.i.epil.init = phi ptr [ %.146, %.lr.ph257.i.preheader ], [ %i.kg, %.preheader211.loopexit.i.unr-lcssa ]
  %lcmp.mod255 = icmp ne i32 %xtraiter251, 0
  call void @llvm.assume(i1 %lcmp.mod255)
  br label %.lr.ph257.i.epil

.lr.ph257.i.epil:                                 ; preds = %.lr.ph257.i.epil, %.lr.ph257.i.epil.preheader
  %.081254.i.epil = phi ptr [ %i.jr, %.lr.ph257.i.epil ], [ %.081254.i.epil.init, %.lr.ph257.i.epil.preheader ] ; 3 uses
  %epil.iter252 = phi i32 [ %epil.iter252.next, %.lr.ph257.i.epil ], [ 0, %.lr.ph257.i.epil.preheader ]
  %i.jp = load <8 x float>, ptr %.081254.i.epil, align 1, !tbaa !54
  %i.jq = fmul fast <8 x float> %i.jp, %.3.i
  store <8 x float> %i.jq, ptr %.081254.i.epil, align 1, !tbaa !54
  %i.jr = getelementptr inbounds nuw i8, ptr %.081254.i.epil, i64 32 ; 2 uses
  %epil.iter252.next = add i32 %epil.iter252, 1   ; 2 uses
  %epil.iter252.cmp.not = icmp eq i32 %epil.iter252.next, %xtraiter251
  br i1 %epil.iter252.cmp.not, label %.preheader211.loopexit.i, label %.lr.ph257.i.epil, !llvm.loop !210

.preheader211.loopexit.i:                         ; preds = %.lr.ph257.i.epil, %.preheader211.loopexit.i.unr-lcssa
  %.lcssa242 = phi ptr [ %i.kg, %.preheader211.loopexit.i.unr-lcssa ], [ %i.jr, %.lr.ph257.i.epil ]
  %i.js = and i32 %i.an, 2147483640
  br label %.preheader211.i

.preheader211.i:                                  ; preds = %.preheader211.loopexit.i, %bb.j
  %.081.lcssa.i = phi ptr [ %.146, %bb.j ], [ %.lcssa242, %.preheader211.loopexit.i ] ; 2 uses
  %.078.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.js, %.preheader211.loopexit.i ] ; 3 uses
  %i.jt = or disjoint i32 %.078.lcssa.i, 3
  %i.ju = icmp slt i32 %i.jt, %i.an
  br i1 %i.ju, label %.lr.ph262.i, label %.preheader.i

.lr.ph257.i:                                      ; preds = %.lr.ph257.i, %.lr.ph257.i.preheader.new
  %.081254.i = phi ptr [ %.146, %.lr.ph257.i.preheader.new ], [ %i.kg, %.lr.ph257.i ] ; 6 uses
  %niter257 = phi i32 [ 0, %.lr.ph257.i.preheader.new ], [ %niter257.next.3, %.lr.ph257.i ]
  %i.jv = load <8 x float>, ptr %.081254.i, align 1, !tbaa !54
  %i.jw = fmul fast <8 x float> %i.jv, %.3.i
  store <8 x float> %i.jw, ptr %.081254.i, align 1, !tbaa !54
  %i.jx = getelementptr inbounds nuw i8, ptr %.081254.i, i64 32 ; 2 uses
  %i.jy = load <8 x float>, ptr %i.jx, align 1, !tbaa !54
  %i.jz = fmul fast <8 x float> %i.jy, %.3.i
  store <8 x float> %i.jz, ptr %i.jx, align 1, !tbaa !54
  %i.ka = getelementptr inbounds nuw i8, ptr %.081254.i, i64 64 ; 2 uses
  %i.kb = load <8 x float>, ptr %i.ka, align 1, !tbaa !54
  %i.kc = fmul fast <8 x float> %i.kb, %.3.i
  store <8 x float> %i.kc, ptr %i.ka, align 1, !tbaa !54
  %i.kd = getelementptr inbounds nuw i8, ptr %.081254.i, i64 96 ; 2 uses
  %i.ke = load <8 x float>, ptr %i.kd, align 1, !tbaa !54
  %i.kf = fmul fast <8 x float> %i.ke, %.3.i
  store <8 x float> %i.kf, ptr %i.kd, align 1, !tbaa !54
  %i.kg = getelementptr inbounds nuw i8, ptr %.081254.i, i64 128 ; 3 uses
  %niter257.next.3 = add i32 %niter257, 4         ; 2 uses
  %niter257.ncmp.3.not = icmp eq i32 %niter257.next.3, %unroll_iter256
  br i1 %niter257.ncmp.3.not, label %.preheader211.loopexit.i.unr-lcssa, label %.lr.ph257.i, !llvm.loop !75

.preheader.i:                                     ; preds = %.lr.ph262.i, %.preheader211.i
  %.182.lcssa.i = phi ptr [ %.081.lcssa.i, %.preheader211.i ], [ %i.lj, %.lr.ph262.i ] ; 5 uses
  %.179.lcssa.i = phi i32 [ %.078.lcssa.i, %.preheader211.i ], [ %i.lk, %.lr.ph262.i ] ; 5 uses
  %i.kh = icmp slt i32 %.179.lcssa.i, %i.an
  br i1 %i.kh, label %iter.check, label %_ZN4ncnnL7softmaxEPfii.exit

iter.check:                                       ; preds = %.preheader.i
  %i.ki = xor i32 %.179.lcssa.i, -1
  %i.kj = add i32 %i.an, %i.ki                    ; 3 uses
  %i.kk = zext i32 %i.kj to i64
  %i.kl = add nuw nsw i64 %i.kk, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.kj, 7
  br i1 %min.iters.check, label %.lr.ph267.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check119 = icmp ult i32 %i.kj, 31
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.km = and i64 %i.kl, 24
  %n.vec = and i64 %i.kl, 8589934560              ; 5 uses
  %i.kn = trunc i64 %n.vec to i32
  %i.ko = add i32 %.179.lcssa.i, %i.kn
  %i.kp = shl nuw nsw i64 %n.vec, 2
  %i.kq = getelementptr i8, ptr %.182.lcssa.i, i64 %i.kp
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.185.i, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kr = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.182.lcssa.i, i64 %i.kr ; 5 uses
  %i.ks = getelementptr i8, ptr %next.gep, i64 32 ; 2 uses
  %i.kt = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.ku = getelementptr i8, ptr %next.gep, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !59
  %wide.load120 = load <8 x float>, ptr %i.ks, align 4, !tbaa !59
  %wide.load121 = load <8 x float>, ptr %i.kt, align 4, !tbaa !59
  %wide.load122 = load <8 x float>, ptr %i.ku, align 4, !tbaa !59
  %i.kv = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.kw = fmul fast <8 x float> %wide.load120, %broadcast.splat
  %i.kx = fmul fast <8 x float> %wide.load121, %broadcast.splat
  %i.ky = fmul fast <8 x float> %wide.load122, %broadcast.splat
  store <8 x float> %i.kv, ptr %next.gep, align 4, !tbaa !59
  store <8 x float> %i.kw, ptr %i.ks, align 4, !tbaa !59
  store <8 x float> %i.kx, ptr %i.kt, align 4, !tbaa !59
  store <8 x float> %i.ky, ptr %i.ku, align 4, !tbaa !59
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kz = icmp eq i64 %index.next, %n.vec
  br i1 %i.kz, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
end_hunk_5
begin_hunk_6_@_ZN4ncnnL17softmax_bf16s_sseEPtii:bb.a
  %vec.phi331 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.bi, %vector.body ]
  %i.ap = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.177.lcssa, i64 %i.ap ; 4 uses
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  %i.ar = getelementptr i8, ptr %next.gep, i64 32
  %i.as = getelementptr i8, ptr %next.gep, i64 48
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !216
  %wide.load332 = load <8 x i16>, ptr %i.aq, align 2, !tbaa !216
  %wide.load333 = load <8 x i16>, ptr %i.ar, align 2, !tbaa !216
  %wide.load334 = load <8 x i16>, ptr %i.as, align 2, !tbaa !216
  %i.at = zext <8 x i16> %wide.load to <8 x i32>
  %i.au = zext <8 x i16> %wide.load332 to <8 x i32>
  %i.av = zext <8 x i16> %wide.load333 to <8 x i32>
  %i.aw = zext <8 x i16> %wide.load334 to <8 x i32>
  %i.ax = shl nuw <8 x i32> %i.at, splat (i32 16)
  %i.ay = shl nuw <8 x i32> %i.au, splat (i32 16)
  %i.az = shl nuw <8 x i32> %i.av, splat (i32 16)
  %i.ba = shl nuw <8 x i32> %i.aw, splat (i32 16)
  %i.bb = bitcast <8 x i32> %i.ax to <8 x float>
  %i.bc = bitcast <8 x i32> %i.ay to <8 x float>
  %i.bd = bitcast <8 x i32> %i.az to <8 x float>
  %i.be = bitcast <8 x i32> %i.ba to <8 x float>
  %i.bf = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi, <8 x float> %i.bb) ; 2 uses
  %i.bg = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi329, <8 x float> %i.bc) ; 2 uses
  %i.bh = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi330, <8 x float> %i.bd) ; 2 uses
  %i.bi = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi331, <8 x float> %i.be) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !218

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.bf, <8 x float> %i.bg)
  %rdx.minmax.select336 = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.bh)
  %rdx.minmax.select338 = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select336, <8 x float> %i.bi)
  %i.bk = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select338) ; 3 uses
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %.lr.ph245.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.bk, %vec.epilog.iter.check ], [ f0xFF7FFFFF, %vector.main.loop.iter.check ]
  %n.vec340 = and i64 %i.aj, 8589934588           ; 4 uses
  %i.bl = shl nuw nsw i64 %n.vec340, 1
  %i.bm = getelementptr i8, ptr %.177.lcssa, i64 %i.bl
  %i.bn = trunc i64 %n.vec340 to i32
  %i.bo = add i32 %.180.lcssa, %i.bn
  %broadcast.splatinsert = insertelement <4 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index341 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next345, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi342 = phi <4 x float> [ %broadcast.splat, %vec.epilog.ph ], [ %i.bt, %vec.epilog.vector.body ]
  %i.bp = shl i64 %index341, 1
  %next.gep343 = getelementptr i8, ptr %.177.lcssa, i64 %i.bp
  %wide.load344 = load <4 x i16>, ptr %next.gep343, align 2, !tbaa !216
  %i.bq = zext <4 x i16> %wide.load344 to <4 x i32>
  %i.br = shl nuw <4 x i32> %i.bq, splat (i32 16)
  %i.bs = bitcast <4 x i32> %i.br to <4 x float>
  %i.bt = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi342, <4 x float> %i.bs) ; 2 uses
  %index.next345 = add nuw i64 %index341, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next345, %n.vec340
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !219

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bv = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %i.bt) ; 2 uses
  %cmp.n346 = icmp eq i64 %i.aj, %n.vec340
  br i1 %cmp.n346, label %._crit_edge, label %.lr.ph245.preheader

.lr.ph245.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.278244.ph = phi ptr [ %.177.lcssa, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %.281243.ph = phi i32 [ %.180.lcssa, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  %.0213242.ph = phi float [ f0xFF7FFFFF, %iter.check ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  br label %.lr.ph245

.lr.ph238:                                        ; preds = %.preheader229, %.lr.ph238
  %.177237 = phi ptr [ %i.cc, %.lr.ph238 ], [ %.076.lcssa, %.preheader229 ] ; 2 uses
  %.180236 = phi i32 [ %i.cd, %.lr.ph238 ], [ %.079.lcssa, %.preheader229 ]
  %.0210235 = phi <4 x float> [ %i.cb, %.lr.ph238 ], [ splat (float f0xFF7FFFFF), %.preheader229 ]
  %i.bw = load i64, ptr %.177237, align 1, !tbaa !54
  %i.bx = insertelement <2 x i64> poison, i64 %i.bw, i64 0
  %i.by = bitcast <2 x i64> %i.bx to <8 x i16>
  %i.bz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.by, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ca = bitcast <8 x i16> %i.bz to <4 x float>
  %i.cb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210235, <4 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.177237, i64 8 ; 2 uses
  %i.cd = add nuw nsw i32 %.180236, 4             ; 3 uses
  %i.ce = or disjoint i32 %i.cd, 3
  %i.cf = icmp slt i32 %i.ce, %i.a
  br i1 %i.cf, label %.lr.ph238, label %.preheader228, !llvm.loop !220

.lr.ph245:                                        ; preds = %.lr.ph245.preheader, %.lr.ph245
  %.278244 = phi ptr [ %i.cg, %.lr.ph245 ], [ %.278244.ph, %.lr.ph245.preheader ] ; 2 uses
  %.281243 = phi i32 [ %i.cl, %.lr.ph245 ], [ %.281243.ph, %.lr.ph245.preheader ]
  %.0213242 = phi float [ %.sroa.speculated133, %.lr.ph245 ], [ %.0213242.ph, %.lr.ph245.preheader ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.278244, i64 2
  %i.ch = load i16, ptr %.278244, align 2, !tbaa !216
  %i.ci = zext i16 %i.ch to i32
  %i.cj = shl nuw i32 %i.ci, 16
  %i.ck = bitcast i32 %i.cj to float
  %.sroa.speculated133 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.0213242, float %i.ck) ; 2 uses
  %i.cl = add nuw nsw i32 %.281243, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cl, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph245, !llvm.loop !221

._crit_edge:                                      ; preds = %.lr.ph245, %middle.block, %vec.epilog.middle.block, %.preheader228
  %.0213.lcssa = phi float [ f0xFF7FFFFF, %.preheader228 ], [ %i.bv, %vec.epilog.middle.block ], [ %i.bk, %middle.block ], [ %.sroa.speculated133, %.lr.ph245 ] ; 4 uses
  %i.cm = icmp eq i32 %2, 4                       ; 2 uses
  br i1 %i.cm, label %.thread, label %bb.b

.thread:                                          ; preds = %._crit_edge
  %i.cn = shufflevector <8 x float> %.0207.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.co = shufflevector <8 x float> %.0207.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa, <4 x float> nofpclass(nan inf) %i.cn)
  %i.cq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cp, <4 x float> nofpclass(nan inf) %i.co) ; 2 uses
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.cs = icmp eq i32 %2, 1
  br i1 %i.cs, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ct = shufflevector <8 x float> %.0207.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cu = shufflevector <8 x float> %.0207.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ct, <4 x float> nofpclass(nan inf) %i.cu) ; 2 uses
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cv, <4 x float> nofpclass(nan inf) %i.cw) ; 2 uses
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.cx, <4 x float> nofpclass(nan inf) %i.cy)
  %i.da = extractelement <4 x float> %i.cz, i64 0 ; 2 uses
  %i.db = fcmp fast olt float %.0213.lcssa, %i.da
  %.sroa.speculated129 = select i1 %i.db, float %i.da, float %.0213.lcssa ; 2 uses
  %i.dc = shufflevector <4 x float> %.0210.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa, <4 x float> nofpclass(nan inf) %i.dc) ; 2 uses
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.df = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dd, <4 x float> nofpclass(nan inf) %i.de)
  %i.dg = extractelement <4 x float> %i.df, i64 0 ; 2 uses
  %i.dh = fcmp fast olt float %.sroa.speculated129, %i.dg
  %.sroa.speculated = select i1 %i.dh, float %i.dg, float %.sroa.speculated129 ; 2 uses
  %i.di = insertelement <4 x float> poison, float %.sroa.speculated, i64 0 ; 2 uses
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  %i.dl = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %.thread ]
  %.1214 = phi nsz float [ %.sroa.speculated, %bb.c ], [ %.0213.lcssa, %bb.b ], [ %.0213.lcssa, %.thread ] ; 3 uses
  %.2212 = phi nsz <4 x float> [ %i.dj, %bb.c ], [ %.0210.lcssa, %bb.b ], [ %i.cq, %.thread ]
  %.2209 = phi nsz <8 x float> [ %i.dk, %bb.c ], [ %.0207.lcssa, %bb.b ], [ %i.cr, %.thread ]
  br i1 %i.b, label %.lr.ph251, label %.preheader227

.preheader227.loopexit:                           ; preds = %.lr.ph251
  %i.dm = and i32 %i.a, 2147483640
  br label %.preheader227

.preheader227:                                    ; preds = %.preheader227.loopexit, %bb.d
  %.0215.lcssa = phi <8 x float> [ zeroinitializer, %bb.d ], [ %i.fe, %.preheader227.loopexit ] ; 5 uses
  %.087.lcssa = phi ptr [ %0, %bb.d ], [ %i.ff, %.preheader227.loopexit ] ; 2 uses
  %.084.lcssa = phi i32 [ 0, %bb.d ], [ %i.dm, %.preheader227.loopexit ] ; 3 uses
  %i.dn = or disjoint i32 %.084.lcssa, 3
  %i.do = icmp slt i32 %i.dn, %i.a
  br i1 %i.do, label %.lr.ph258, label %.preheader226

.lr.ph251:                                        ; preds = %bb.d, %.lr.ph251
  %.084249 = phi i32 [ %i.fg, %.lr.ph251 ], [ 0, %bb.d ]
  %.087248 = phi ptr [ %i.ff, %.lr.ph251 ], [ %0, %bb.d ] ; 3 uses
  %.0215247 = phi <8 x float> [ %i.fe, %.lr.ph251 ], [ zeroinitializer, %bb.d ]
  %i.dp = load <8 x i16>, ptr %.087248, align 1, !tbaa !54 ; 2 uses
  %i.dq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dr = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.dp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ds = shufflevector <8 x i16> %i.dq, <8 x i16> %i.dr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dt = bitcast <16 x i16> %i.ds to <8 x float>
  %i.du = fsub fast <8 x float> %i.dt, %.2209
  %i.dv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.du, <8 x float> splat (float f0x42B0C0A5))
  %i.dw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dv, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dx = fmul fast <8 x float> %i.dw, splat (float f0x3FB8AA3B)
  %i.dy = fadd fast <8 x float> %i.dx, splat (float 5.000000e-01) ; 2 uses
  %i.dz = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dy, i32 1) ; 2 uses
  %i.ea = fcmp fast ogt <8 x float> %i.dz, %i.dy
  %i.eb = select <8 x i1> %i.ea, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ec = fsub fast <8 x float> %i.dz, %i.eb      ; 2 uses
  %i.ed = fmul fast <8 x float> %i.ec, splat (float f0x3F317218)
  %i.ee = fsub fast <8 x float> %i.dw, %i.ed      ; 8 uses
  %i.ef = fmul fast <8 x float> %i.ee, %i.ee
  %i.eg = fmul fast <8 x float> %i.ee, splat (float f0x39506967)
  %i.eh = fadd fast <8 x float> %i.eg, splat (float f0x3AB743CE)
  %i.ei = fmul fast <8 x float> %i.eh, %i.ee
  %i.ej = fadd fast <8 x float> %i.ei, splat (float f0x3C088908)
  %i.ek = fmul fast <8 x float> %i.ej, %i.ee
  %i.el = fadd fast <8 x float> %i.ek, splat (float f0x3D2AA9C1)
  %i.em = fmul fast <8 x float> %i.el, %i.ee
  %i.en = fadd fast <8 x float> %i.em, splat (float f0x3E2AAAAA)
  %i.eo = fmul fast <8 x float> %i.en, %i.ee
  %i.ep = fadd fast <8 x float> %i.eo, splat (float 5.000000e-01)
  %i.eq = fmul fast <8 x float> %i.ef, %i.ep
  %i.er = fadd fast <8 x float> %i.ee, %i.eq
  %i.es = fadd fast <8 x float> %i.er, splat (float 1.000000e+00)
  %i.et = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ec)
  %i.eu = shl <8 x i32> %i.et, splat (i32 23)
  %i.ev = add <8 x i32> %i.eu, splat (i32 1065353216)
  %i.ew = bitcast <8 x i32> %i.ev to <8 x float>
  %i.ex = fmul fast <8 x float> %i.es, %i.ew      ; 2 uses
  %i.ey = bitcast <8 x float> %i.ex to <8 x i32>  ; 2 uses
  %i.ez = shufflevector <8 x i32> %i.ey, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fa = shufflevector <8 x i32> %i.ey, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fb = lshr <4 x i32> %i.ez, splat (i32 16)
  %i.fc = lshr <4 x i32> %i.fa, splat (i32 16)
  %i.fd = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fb, <4 x i32> %i.fc)
  store <8 x i16> %i.fd, ptr %.087248, align 1, !tbaa !54
  %i.fe = fadd fast <8 x float> %i.ex, %.0215247  ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.087248, i64 16 ; 2 uses
  %i.fg = add nuw nsw i32 %.084249, 8             ; 2 uses
  %i.fh = or disjoint i32 %i.fg, 7
  %i.fi = icmp slt i32 %i.fh, %i.a
  br i1 %i.fi, label %.lr.ph251, label %.preheader227.loopexit, !llvm.loop !222

.preheader226:                                    ; preds = %.lr.ph258, %.preheader227
  %.0218.lcssa = phi <4 x float> [ zeroinitializer, %.preheader227 ], [ %i.jp, %.lr.ph258 ] ; 3 uses
  %.188.lcssa = phi ptr [ %.087.lcssa, %.preheader227 ], [ %i.jq, %.lr.ph258 ] ; 5 uses
  %.185.lcssa = phi i32 [ %.084.lcssa, %.preheader227 ], [ %i.jr, %.lr.ph258 ] ; 5 uses
  %i.fj = icmp slt i32 %.185.lcssa, %i.a
  br i1 %i.fj, label %iter.check376, label %._crit_edge266

iter.check376:                                    ; preds = %.preheader226
  %i.fk = xor i32 %.185.lcssa, -1
  %i.fl = add i32 %i.a, %i.fk                     ; 3 uses
  %i.fm = zext i32 %i.fl to i64
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 5 uses
  %min.iters.check350 = icmp ult i32 %i.fl, 3
  br i1 %min.iters.check350, label %.lr.ph265.preheader, label %vector.main.loop.iter.check351

vector.main.loop.iter.check351:                   ; preds = %iter.check376
  %min.iters.check352 = icmp ult i32 %i.fl, 15
  br i1 %min.iters.check352, label %vec.epilog.ph380, label %vector.ph353

vector.ph353:                                     ; preds = %vector.main.loop.iter.check351
  %i.fo = and i64 %i.fn, 12
  %n.vec354 = and i64 %i.fn, 8589934576           ; 5 uses
  %i.fp = trunc i64 %n.vec354 to i32
  %i.fq = add i32 %.185.lcssa, %i.fp
  %i.fr = shl nuw nsw i64 %n.vec354, 1
  %i.fs = getelementptr i8, ptr %.188.lcssa, i64 %i.fr
  %broadcast.splatinsert355 = insertelement <4 x float> poison, float %.1214, i64 0
  %broadcast.splat356 = shufflevector <4 x float> %broadcast.splatinsert355, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body357

vector.body357:                                   ; preds = %vector.body357, %vector.ph353
  %index358 = phi i64 [ 0, %vector.ph353 ], [ %index.next368, %vector.body357 ] ; 2 uses
  %vec.phi359 = phi <4 x float> [ zeroinitializer, %vector.ph353 ], [ %i.hd, %vector.body357 ]
  %vec.phi360 = phi <4 x float> [ zeroinitializer, %vector.ph353 ], [ %i.he, %vector.body357 ]
  %vec.phi361 = phi <4 x float> [ zeroinitializer, %vector.ph353 ], [ %i.hf, %vector.body357 ]
  %vec.phi362 = phi <4 x float> [ zeroinitializer, %vector.ph353 ], [ %i.hg, %vector.body357 ]
  %i.ft = shl i64 %index358, 1
  %next.gep363 = getelementptr i8, ptr %.188.lcssa, i64 %i.ft ; 5 uses
  %i.fu = getelementptr i8, ptr %next.gep363, i64 8 ; 2 uses
  %i.fv = getelementptr i8, ptr %next.gep363, i64 16 ; 2 uses
  %i.fw = getelementptr i8, ptr %next.gep363, i64 24 ; 2 uses
  %wide.load364 = load <4 x i16>, ptr %next.gep363, align 2, !tbaa !216
  %wide.load365 = load <4 x i16>, ptr %i.fu, align 2, !tbaa !216
  %wide.load366 = load <4 x i16>, ptr %i.fv, align 2, !tbaa !216
  %wide.load367 = load <4 x i16>, ptr %i.fw, align 2, !tbaa !216
  %i.fx = zext <4 x i16> %wide.load364 to <4 x i32>
  %i.fy = zext <4 x i16> %wide.load365 to <4 x i32>
  %i.fz = zext <4 x i16> %wide.load366 to <4 x i32>
  %i.ga = zext <4 x i16> %wide.load367 to <4 x i32>
  %i.gb = shl nuw <4 x i32> %i.fx, splat (i32 16)
  %i.gc = shl nuw <4 x i32> %i.fy, splat (i32 16)
  %i.gd = shl nuw <4 x i32> %i.fz, splat (i32 16)
  %i.ge = shl nuw <4 x i32> %i.ga, splat (i32 16)
  %i.gf = bitcast <4 x i32> %i.gb to <4 x float>
  %i.gg = bitcast <4 x i32> %i.gc to <4 x float>
  %i.gh = bitcast <4 x i32> %i.gd to <4 x float>
  %i.gi = bitcast <4 x i32> %i.ge to <4 x float>
  %i.gj = fsub fast <4 x float> %i.gf, %broadcast.splat356
  %i.gk = fsub fast <4 x float> %i.gg, %broadcast.splat356
  %i.gl = fsub fast <4 x float> %i.gh, %broadcast.splat356
  %i.gm = fsub fast <4 x float> %i.gi, %broadcast.splat356
  %i.gn = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.gj) ; 2 uses
  %i.go = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.gk) ; 2 uses
  %i.gp = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.gl) ; 2 uses
  %i.gq = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.gm) ; 2 uses
  %i.gr = bitcast <4 x float> %i.gn to <4 x i32>
  %i.gs = bitcast <4 x float> %i.go to <4 x i32>
  %i.gt = bitcast <4 x float> %i.gp to <4 x i32>
  %i.gu = bitcast <4 x float> %i.gq to <4 x i32>
  %i.gv = lshr <4 x i32> %i.gr, splat (i32 16)
  %i.gw = lshr <4 x i32> %i.gs, splat (i32 16)
  %i.gx = lshr <4 x i32> %i.gt, splat (i32 16)
  %i.gy = lshr <4 x i32> %i.gu, splat (i32 16)
  %i.gz = trunc nuw nsw <4 x i32> %i.gv to <4 x i16>
  %i.ha = trunc nuw nsw <4 x i32> %i.gw to <4 x i16>
  %i.hb = trunc nuw nsw <4 x i32> %i.gx to <4 x i16>
  %i.hc = trunc nuw nsw <4 x i32> %i.gy to <4 x i16>
  store <4 x i16> %i.gz, ptr %next.gep363, align 2, !tbaa !216
  store <4 x i16> %i.ha, ptr %i.fu, align 2, !tbaa !216
  store <4 x i16> %i.hb, ptr %i.fv, align 2, !tbaa !216
  store <4 x i16> %i.hc, ptr %i.fw, align 2, !tbaa !216
  %i.hd = fadd fast <4 x float> %i.gn, %vec.phi359 ; 2 uses
  %i.he = fadd fast <4 x float> %i.go, %vec.phi360 ; 2 uses
  %i.hf = fadd fast <4 x float> %i.gp, %vec.phi361 ; 2 uses
  %i.hg = fadd fast <4 x float> %i.gq, %vec.phi362 ; 2 uses
  %index.next368 = add nuw i64 %index358, 16      ; 2 uses
  %i.hh = icmp eq i64 %index.next368, %n.vec354
  br i1 %i.hh, label %middle.block369, label %vector.body357, !llvm.loop !223

middle.block369:                                  ; preds = %vector.body357
  %bin.rdx = fadd fast <4 x float> %i.he, %i.hd
  %bin.rdx370 = fadd fast <4 x float> %i.hf, %bin.rdx
  %bin.rdx371 = fadd fast <4 x float> %i.hg, %bin.rdx370
  %i.hi = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx371) ; 3 uses
  %cmp.n372 = icmp eq i64 %i.fn, %n.vec354
  br i1 %cmp.n372, label %._crit_edge266, label %vec.epilog.iter.check378

vec.epilog.iter.check378:                         ; preds = %middle.block369
  %min.epilog.iters.check379 = icmp eq i64 %i.fo, 0
  br i1 %min.epilog.iters.check379, label %.lr.ph265.preheader, label %vec.epilog.ph380, !prof !224

vec.epilog.ph380:                                 ; preds = %vector.main.loop.iter.check351, %vec.epilog.iter.check378
  %vec.epilog.resume.val373 = phi i64 [ %n.vec354, %vec.epilog.iter.check378 ], [ 0, %vector.main.loop.iter.check351 ]
  %bc.merge.rdx374 = phi float [ %i.hi, %vec.epilog.iter.check378 ], [ 0.000000e+00, %vector.main.loop.iter.check351 ]
  %n.vec381 = and i64 %i.fn, 8589934588           ; 4 uses
  %i.hj = trunc i64 %n.vec381 to i32
  %i.hk = add i32 %.185.lcssa, %i.hj
  %i.hl = shl nuw nsw i64 %n.vec381, 1
  %i.hm = getelementptr i8, ptr %.188.lcssa, i64 %i.hl
  %i.hn = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx374, i64 0
  %broadcast.splatinsert382 = insertelement <4 x float> poison, float %.1214, i64 0
  %broadcast.splat383 = shufflevector <4 x float> %broadcast.splatinsert382, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body384

vec.epilog.vector.body384:                        ; preds = %vec.epilog.vector.body384, %vec.epilog.ph380
  %index385 = phi i64 [ %vec.epilog.resume.val373, %vec.epilog.ph380 ], [ %index.next389, %vec.epilog.vector.body384 ] ; 2 uses
  %vec.phi386 = phi <4 x float> [ %i.hn, %vec.epilog.ph380 ], [ %i.hx, %vec.epilog.vector.body384 ]
  %i.ho = shl i64 %index385, 1
  %next.gep387 = getelementptr i8, ptr %.188.lcssa, i64 %i.ho ; 2 uses
  %wide.load388 = load <4 x i16>, ptr %next.gep387, align 2, !tbaa !216
  %i.hp = zext <4 x i16> %wide.load388 to <4 x i32>
  %i.hq = shl nuw <4 x i32> %i.hp, splat (i32 16)
  %i.hr = bitcast <4 x i32> %i.hq to <4 x float>
  %i.hs = fsub fast <4 x float> %i.hr, %broadcast.splat383
  %i.ht = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hs) ; 2 uses
  %i.hu = bitcast <4 x float> %i.ht to <4 x i32>
  %i.hv = lshr <4 x i32> %i.hu, splat (i32 16)
  %i.hw = trunc nuw nsw <4 x i32> %i.hv to <4 x i16>
  store <4 x i16> %i.hw, ptr %next.gep387, align 2, !tbaa !216
  %i.hx = fadd fast <4 x float> %i.ht, %vec.phi386 ; 2 uses
  %index.next389 = add nuw i64 %index385, 4       ; 2 uses
  %i.hy = icmp eq i64 %index.next389, %n.vec381
  br i1 %i.hy, label %vec.epilog.middle.block390, label %vec.epilog.vector.body384, !llvm.loop !225

vec.epilog.middle.block390:                       ; preds = %vec.epilog.vector.body384
  %i.hz = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.hx) ; 2 uses
  %cmp.n391 = icmp eq i64 %i.fn, %n.vec381
  br i1 %cmp.n391, label %._crit_edge266, label %.lr.ph265.preheader

.lr.ph265.preheader:                              ; preds = %iter.check376, %vec.epilog.iter.check378, %vec.epilog.middle.block390
  %.082264.ph = phi float [ 0.000000e+00, %iter.check376 ], [ %i.hi, %vec.epilog.iter.check378 ], [ %i.hz, %vec.epilog.middle.block390 ]
  %.286263.ph = phi i32 [ %.185.lcssa, %iter.check376 ], [ %i.fq, %vec.epilog.iter.check378 ], [ %i.hk, %vec.epilog.middle.block390 ]
  %.289262.ph = phi ptr [ %.188.lcssa, %iter.check376 ], [ %i.fs, %vec.epilog.iter.check378 ], [ %i.hm, %vec.epilog.middle.block390 ]
  br label %.lr.ph265

.lr.ph258:                                        ; preds = %.preheader227, %.lr.ph258
  %.185257 = phi i32 [ %i.jr, %.lr.ph258 ], [ %.084.lcssa, %.preheader227 ]
  %.188256 = phi ptr [ %i.jq, %.lr.ph258 ], [ %.087.lcssa, %.preheader227 ] ; 3 uses
  %.0218255 = phi <4 x float> [ %i.jp, %.lr.ph258 ], [ zeroinitializer, %.preheader227 ]
  %i.ia = load i64, ptr %.188256, align 1, !tbaa !54
  %i.ib = insertelement <2 x i64> poison, i64 %i.ia, i64 0
  %i.ic = bitcast <2 x i64> %i.ib to <8 x i16>
  %i.id = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ic, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ie = bitcast <8 x i16> %i.id to <4 x float>
  %i.if = fsub fast <4 x float> %i.ie, %.2212
  %i.ig = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.if, <4 x float> splat (float f0x42B0C0A5))
  %i.ih = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ig, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ii = fmul fast <4 x float> %i.ih, splat (float f0x3FB8AA3B)
  %i.ij = fadd fast <4 x float> %i.ii, splat (float 5.000000e-01) ; 2 uses
  %i.ik = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ij)
  %i.il = sitofp fast <4 x i32> %i.ik to <4 x float> ; 2 uses
  %i.im = fcmp fast olt <4 x float> %i.ij, %i.il
  %i.in = select <4 x i1> %i.im, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.io = fsub fast <4 x float> %i.il, %i.in      ; 2 uses
  %i.ip = fmul fast <4 x float> %i.io, splat (float f0x3F317218)
  %i.iq = fsub fast <4 x float> %i.ih, %i.ip      ; 8 uses
  %i.ir = fmul fast <4 x float> %i.iq, %i.iq
  %i.is = fmul fast <4 x float> %i.iq, splat (float f0x39506967)
  %i.it = fadd fast <4 x float> %i.is, splat (float f0x3AB743CE)
  %i.iu = fmul fast <4 x float> %i.it, %i.iq
  %i.iv = fadd fast <4 x float> %i.iu, splat (float f0x3C088908)
  %i.iw = fmul fast <4 x float> %i.iv, %i.iq
  %i.ix = fadd fast <4 x float> %i.iw, splat (float f0x3D2AA9C1)
  %i.iy = fmul fast <4 x float> %i.ix, %i.iq
  %i.iz = fadd fast <4 x float> %i.iy, splat (float f0x3E2AAAAA)
  %i.ja = fmul fast <4 x float> %i.iz, %i.iq
  %i.jb = fadd fast <4 x float> %i.ja, splat (float 5.000000e-01)
  %i.jc = fmul fast <4 x float> %i.ir, %i.jb
  %i.jd = fadd fast <4 x float> %i.iq, %i.jc
  %i.je = fadd fast <4 x float> %i.jd, splat (float 1.000000e+00)
  %i.jf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.io)
  %i.jg = shl <4 x i32> %i.jf, splat (i32 23)
  %i.jh = add <4 x i32> %i.jg, splat (i32 1065353216)
  %i.ji = bitcast <4 x i32> %i.jh to <4 x float>
  %i.jj = fmul fast <4 x float> %i.je, %i.ji      ; 2 uses
  %i.jk = bitcast <4 x float> %i.jj to <4 x i32>
  %i.jl = lshr <4 x i32> %i.jk, splat (i32 16)
  %i.jm = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.jl, <4 x i32> poison)
  %i.jn = bitcast <8 x i16> %i.jm to <2 x i64>
  %i.jo = extractelement <2 x i64> %i.jn, i64 0
  store i64 %i.jo, ptr %.188256, align 1, !tbaa !54
  %i.jp = fadd fast <4 x float> %i.jj, %.0218255  ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.188256, i64 8 ; 2 uses
  %i.jr = add nuw nsw i32 %.185257, 4             ; 3 uses
  %i.js = or disjoint i32 %i.jr, 3
  %i.jt = icmp slt i32 %i.js, %i.a
  br i1 %i.jt, label %.lr.ph258, label %.preheader226, !llvm.loop !226

.lr.ph265:                                        ; preds = %.lr.ph265.preheader, %.lr.ph265
  %.082264 = phi float [ %i.kd, %.lr.ph265 ], [ %.082264.ph, %.lr.ph265.preheader ]
  %.286263 = phi i32 [ %i.kf, %.lr.ph265 ], [ %.286263.ph, %.lr.ph265.preheader ]
  %.289262 = phi ptr [ %i.ke, %.lr.ph265 ], [ %.289262.ph, %.lr.ph265.preheader ] ; 3 uses
  %i.ju = load i16, ptr %.289262, align 2, !tbaa !216
  %i.jv = zext i16 %i.ju to i32
  %i.jw = shl nuw i32 %i.jv, 16
  %i.jx = bitcast i32 %i.jw to float
  %i.jy = fsub fast float %i.jx, %.1214
  %i.jz = tail call fast float @llvm.exp.f32(float %i.jy) ; 2 uses
  %i.ka = bitcast float %i.jz to i32
  %i.kb = lshr i32 %i.ka, 16
  %i.kc = trunc nuw nsw i32 %i.kb to i16
  store i16 %i.kc, ptr %.289262, align 2, !tbaa !216
  %i.kd = fadd fast float %i.jz, %.082264         ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.289262, i64 2
  %i.kf = add nuw nsw i32 %.286263, 1             ; 2 uses
  %exitcond299.not = icmp eq i32 %i.kf, %i.a
  br i1 %exitcond299.not, label %._crit_edge266, label %.lr.ph265, !llvm.loop !227

._crit_edge266:                                   ; preds = %.lr.ph265, %middle.block369, %vec.epilog.middle.block390, %.preheader226
  %.082.lcssa = phi float [ 0.000000e+00, %.preheader226 ], [ %i.hz, %vec.epilog.middle.block390 ], [ %i.hi, %middle.block369 ], [ %i.kd, %.lr.ph265 ] ; 2 uses
  %i.kg = icmp eq i32 %2, 8
  br i1 %i.kg, label %.thread223, label %bb.e

.thread223:                                       ; preds = %._crit_edge266
  %i.kh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %.0215.lcssa) ; 2 uses
  %i.ki = fmul fast <8 x float> %i.kh, %.0215.lcssa
  %i.kj = fsub fast <8 x float> splat (float 2.000000e+00), %i.ki
  %i.kk = fmul fast <8 x float> %i.kj, %i.kh
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge266
  br i1 %i.cm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.kl = shufflevector <8 x float> %.0215.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.km = shufflevector <8 x float> %.0215.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.kn = fadd fast <4 x float> %i.km, %i.kl
  %i.ko = fadd fast <4 x float> %i.kn, %.0218.lcssa ; 2 uses
  %i.kp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.ko) ; 2 uses
  %i.kq = fmul fast <4 x float> %i.kp, %i.ko
  %i.kr = fsub fast <4 x float> splat (float 2.000000e+00), %i.kq
  %i.ks = fmul fast <4 x float> %i.kr, %i.kp      ; 2 uses
  %i.kt = shufflevector <4 x float> %i.ks, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.g

bb.g:                                             ; preds = %.thread223, %bb.f, %bb.e
  %.1219 = phi nsz <4 x float> [ %i.ks, %bb.f ], [ %.0218.lcssa, %bb.e ], [ %.0218.lcssa, %.thread223 ] ; 3 uses
  %.2217 = phi nsz <8 x float> [ %i.kt, %bb.f ], [ %.0215.lcssa, %bb.e ], [ %i.kk, %.thread223 ] ; 3 uses
  br i1 %i.dl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ku = shufflevector <8 x float> %.2217, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.kv = shufflevector <8 x float> %.2217, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.kw = fadd fast <4 x float> %i.ku, %i.kv      ; 2 uses
  %i.kx = shufflevector <4 x float> %i.kw, <4 x float> %.1219, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.ky = shufflevector <4 x float> %i.kw, <4 x float> %.1219, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.kz = fadd fast <4 x float> %i.kx, %i.ky
  %op.rdx = tail call fast float @llvm.vector.reduce.fadd.v4f32(float %.082.lcssa, <4 x float> %i.kz)
  %i.la = fdiv fast float 1.000000e+00, %op.rdx   ; 2 uses
  %i.lb = insertelement <4 x float> poison, float %i.la, i64 0 ; 2 uses
  %i.lc = shufflevector <4 x float> %i.lb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ld = shufflevector <4 x float> %i.lb, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2220 = phi nsz <4 x float> [ %i.lc, %bb.h ], [ %.1219, %bb.g ]
  %.3 = phi nsz <8 x float> [ %i.ld, %bb.h ], [ %.2217, %bb.g ]
  %.183 = phi nsz float [ %i.la, %bb.h ], [ %.082.lcssa, %bb.g ] ; 3 uses
  br i1 %i.b, label %.lr.ph271, label %.preheader225

.preheader225.loopexit:                           ; preds = %.lr.ph271
  %i.le = and i32 %i.a, 2147483640
  br label %.preheader225

.preheader225:                                    ; preds = %.preheader225.loopexit, %bb.i
  %.073.lcssa = phi ptr [ %0, %bb.i ], [ %i.lt, %.preheader225.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.i ], [ %i.le, %.preheader225.loopexit ] ; 3 uses
  %i.lf = or disjoint i32 %.0.lcssa, 3
  %i.lg = icmp slt i32 %i.lf, %i.a
  br i1 %i.lg, label %.lr.ph276, label %.preheader

.lr.ph271:                                        ; preds = %bb.i, %.lr.ph271
  %.0269 = phi i32 [ %i.lu, %.lr.ph271 ], [ 0, %bb.i ]
  %.073268 = phi ptr [ %i.lt, %.lr.ph271 ], [ %0, %bb.i ] ; 3 uses
  %i.lh = load <8 x i16>, ptr %.073268, align 1, !tbaa !54 ; 2 uses
  %i.li = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lk = shufflevector <8 x i16> %i.li, <8 x i16> %i.lj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ll = bitcast <16 x i16> %i.lk to <8 x float>
  %i.lm = fmul fast <8 x float> %.3, %i.ll
  %i.ln = bitcast <8 x float> %i.lm to <8 x i32>  ; 2 uses
  %i.lo = shufflevector <8 x i32> %i.ln, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lp = shufflevector <8 x i32> %i.ln, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lq = lshr <4 x i32> %i.lo, splat (i32 16)
  %i.lr = lshr <4 x i32> %i.lp, splat (i32 16)
  %i.ls = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.lq, <4 x i32> %i.lr)
  store <8 x i16> %i.ls, ptr %.073268, align 1, !tbaa !54
  %i.lt = getelementptr inbounds nuw i8, ptr %.073268, i64 16 ; 2 uses
  %i.lu = add nuw nsw i32 %.0269, 8               ; 2 uses
  %i.lv = or disjoint i32 %i.lu, 7
  %i.lw = icmp slt i32 %i.lv, %i.a
  br i1 %i.lw, label %.lr.ph271, label %.preheader225.loopexit, !llvm.loop !228

.preheader:                                       ; preds = %.lr.ph276, %.preheader225
  %.174.lcssa = phi ptr [ %.073.lcssa, %.preheader225 ], [ %i.no, %.lr.ph276 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader225 ], [ %i.np, %.lr.ph276 ] ; 5 uses
  %i.lx = icmp slt i32 %.1.lcssa, %i.a
  br i1 %i.lx, label %iter.check411, label %._crit_edge282

iter.check411:                                    ; preds = %.preheader
  %i.ly = xor i32 %.1.lcssa, -1
  %i.lz = add i32 %i.a, %i.ly                     ; 3 uses
  %i.ma = zext i32 %i.lz to i64
  %i.mb = add nuw nsw i64 %i.ma, 1                ; 5 uses
  %min.iters.check395 = icmp ult i32 %i.lz, 3
  br i1 %min.iters.check395, label %.lr.ph281.preheader, label %vector.main.loop.iter.check396

vector.main.loop.iter.check396:                   ; preds = %iter.check411
  %min.iters.check397 = icmp ult i32 %i.lz, 15
  br i1 %min.iters.check397, label %vec.epilog.ph415, label %vector.ph398

vector.ph398:                                     ; preds = %vector.main.loop.iter.check396
  %i.mc = and i64 %i.mb, 12
  %n.vec399 = and i64 %i.mb, 8589934576           ; 5 uses
  %i.md = trunc i64 %n.vec399 to i32
  %i.me = add i32 %.1.lcssa, %i.md
  %i.mf = shl nuw nsw i64 %n.vec399, 1
  %i.mg = getelementptr i8, ptr %.174.lcssa, i64 %i.mf
  %broadcast.splatinsert400 = insertelement <16 x float> poison, float %.183, i64 0
  %broadcast.splat401 = shufflevector <16 x float> %broadcast.splatinsert400, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph398
  %index403 = phi i64 [ 0, %vector.ph398 ], [ %index.next406, %vector.body402 ] ; 2 uses
  %i.mh = shl i64 %index403, 1
  %next.gep404 = getelementptr i8, ptr %.174.lcssa, i64 %i.mh ; 2 uses
  %wide.load405 = load <16 x i16>, ptr %next.gep404, align 2, !tbaa !216
  %i.mi = zext <16 x i16> %wide.load405 to <16 x i32>
  %i.mj = shl nuw <16 x i32> %i.mi, splat (i32 16)
  %i.mk = bitcast <16 x i32> %i.mj to <16 x float>
  %i.ml = fmul fast <16 x float> %broadcast.splat401, %i.mk
  %i.mm = bitcast <16 x float> %i.ml to <16 x i32>
  %i.mn = lshr <16 x i32> %i.mm, splat (i32 16)
  %i.mo = trunc nuw <16 x i32> %i.mn to <16 x i16>
  store <16 x i16> %i.mo, ptr %next.gep404, align 2, !tbaa !216
  %index.next406 = add nuw i64 %index403, 16      ; 2 uses
  %i.mp = icmp eq i64 %index.next406, %n.vec399
  br i1 %i.mp, label %middle.block407, label %vector.body402, !llvm.loop !229

middle.block407:                                  ; preds = %vector.body402
  %cmp.n408 = icmp eq i64 %i.mb, %n.vec399
  br i1 %cmp.n408, label %._crit_edge282, label %vec.epilog.iter.check413

vec.epilog.iter.check413:                         ; preds = %middle.block407
  %min.epilog.iters.check414 = icmp eq i64 %i.mc, 0
  br i1 %min.epilog.iters.check414, label %.lr.ph281.preheader, label %vec.epilog.ph415, !prof !224

vec.epilog.ph415:                                 ; preds = %vector.main.loop.iter.check396, %vec.epilog.iter.check413
  %vec.epilog.resume.val409 = phi i64 [ %n.vec399, %vec.epilog.iter.check413 ], [ 0, %vector.main.loop.iter.check396 ]
  %n.vec416 = and i64 %i.mb, 8589934588           ; 4 uses
  %i.mq = trunc i64 %n.vec416 to i32
  %i.mr = add i32 %.1.lcssa, %i.mq
  %i.ms = shl nuw nsw i64 %n.vec416, 1
  %i.mt = getelementptr i8, ptr %.174.lcssa, i64 %i.ms
  %broadcast.splatinsert417 = insertelement <4 x float> poison, float %.183, i64 0
  %broadcast.splat418 = shufflevector <4 x float> %broadcast.splatinsert417, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body419

vec.epilog.vector.body419:                        ; preds = %vec.epilog.vector.body419, %vec.epilog.ph415
  %index420 = phi i64 [ %vec.epilog.resume.val409, %vec.epilog.ph415 ], [ %index.next423, %vec.epilog.vector.body419 ] ; 2 uses
  %i.mu = shl i64 %index420, 1
  %next.gep421 = getelementptr i8, ptr %.174.lcssa, i64 %i.mu ; 2 uses
  %wide.load422 = load <4 x i16>, ptr %next.gep421, align 2, !tbaa !216
  %i.mv = zext <4 x i16> %wide.load422 to <4 x i32>
  %i.mw = shl nuw <4 x i32> %i.mv, splat (i32 16)
  %i.mx = bitcast <4 x i32> %i.mw to <4 x float>
  %i.my = fmul fast <4 x float> %broadcast.splat418, %i.mx
  %i.mz = bitcast <4 x float> %i.my to <4 x i32>
  %i.na = lshr <4 x i32> %i.mz, splat (i32 16)
  %i.nb = trunc nuw <4 x i32> %i.na to <4 x i16>
end_hunk_6
begin_hunk_7_@_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_:bb.a

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index252 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next254, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index252, 2
  %next.gep253 = getelementptr i8, ptr %.1.lcssa, i64 %i.ak
  store <8 x float> splat (float f0xFF7FFFFF), ptr %next.gep253, align 4, !tbaa !59
  %index.next254 = add nuw i64 %index252, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next254, %n.vec251
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !239

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n255 = icmp eq i64 %i.v, %n.vec251
  br i1 %cmp.n255, label %.preheader96, label %.lr.ph134.preheader

.lr.ph134.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2133.ph = phi ptr [ %.1.lcssa, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  %.256132.ph = phi i32 [ %.155.lcssa, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph134

.lr.ph129:                                        ; preds = %.preheader98, %.lr.ph129
  %.1128 = phi ptr [ %i.am, %.lr.ph129 ], [ %.0.lcssa, %.preheader98 ] ; 2 uses
  %.155127 = phi i32 [ %i.an, %.lr.ph129 ], [ %.054.lcssa, %.preheader98 ]
  store <4 x float> splat (float f0xFF7FFFFF), ptr %.1128, align 1, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %.1128, i64 16 ; 2 uses
  %i.an = add nuw nsw i32 %.155127, 4             ; 3 uses
  %i.ao = or disjoint i32 %i.an, 3
  %i.ap = icmp slt i32 %i.ao, %4
  br i1 %i.ap, label %.lr.ph129, label %.preheader97, !llvm.loop !240

.preheader96:                                     ; preds = %.lr.ph134, %middle.block, %vec.epilog.middle.block, %.preheader97
  br i1 %i.a, label %.lr.ph137.preheader, label %.preheader95

.lr.ph137.preheader:                              ; preds = %.preheader96
  %i.aq = add nsw i32 %4, -8                      ; 2 uses
  %i.ar = lshr i32 %i.aq, 3
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 5
  %i.au = add nuw nsw i64 %i.at, 32               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %6, i8 0, i64 %i.au, i1 false), !tbaa !54
  %scevgep = getelementptr i8, ptr %6, i64 %i.au
  %i.av = and i32 %i.aq, -8
  %i.aw = add nuw nsw i32 %i.av, 8
  br label %.preheader95

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %.lr.ph134
  %.2133 = phi ptr [ %i.ax, %.lr.ph134 ], [ %.2133.ph, %.lr.ph134.preheader ] ; 2 uses
  %.256132 = phi i32 [ %i.ay, %.lr.ph134 ], [ %.256132.ph, %.lr.ph134.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.2133, i64 4
  store float f0xFF7FFFFF, ptr %.2133, align 4, !tbaa !59
  %i.ay = add nuw nsw i32 %.256132, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ay, %4
  br i1 %exitcond.not, label %.preheader96, label %.lr.ph134, !llvm.loop !241

.preheader95:                                     ; preds = %.lr.ph137.preheader, %.preheader96
  %.060.lcssa = phi ptr [ %6, %.preheader96 ], [ %scevgep, %.lr.ph137.preheader ] ; 3 uses
  %.057.lcssa = phi i32 [ 0, %.preheader96 ], [ %i.aw, %.lr.ph137.preheader ] ; 4 uses
  %i.az = or disjoint i32 %.057.lcssa, 3
  %i.ba = icmp slt i32 %i.az, %4
  br i1 %i.ba, label %.lr.ph142.preheader, label %.preheader

.lr.ph142.preheader:                              ; preds = %.preheader95
  %i.bb = add nsw i32 %4, -4
  %i.bc = sub nsw i32 %i.bb, %.057.lcssa          ; 2 uses
  %i.bd = lshr i32 %i.bc, 2
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 4
  %i.bg = add nuw nsw i64 %i.bf, 16               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.060.lcssa, i8 0, i64 %i.bg, i1 false), !tbaa !54
  %scevgep183 = getelementptr i8, ptr %.060.lcssa, i64 %i.bg
  %i.bh = and i32 %i.bc, -4
  %i.bi = add i32 %.057.lcssa, %i.bh
  %i.bj = add i32 %i.bi, 4
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph142.preheader, %.preheader95
  %.161.lcssa = phi ptr [ %.060.lcssa, %.preheader95 ], [ %scevgep183, %.lr.ph142.preheader ]
  %.158.lcssa = phi i32 [ %.057.lcssa, %.preheader95 ], [ %i.bj, %.lr.ph142.preheader ] ; 2 uses
  %i.bk = icmp slt i32 %.158.lcssa, %4
  br i1 %i.bk, label %.lr.ph147.preheader, label %._crit_edge

.lr.ph147.preheader:                              ; preds = %.preheader
  %i.bl = xor i32 %.158.lcssa, -1
  %i.bm = add i32 %4, %i.bl
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = add nuw nsw i64 %i.bo, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.161.lcssa, i8 0, i64 %i.bp, i1 false), !tbaa !59
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph147.preheader, %.preheader
  switch i32 %2, label %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit [
    i32 8, label %bb.b
    i32 4, label %bb.f
    i32 1, label %bb.h
  ]

bb.b:                                             ; preds = %._crit_edge
  %i.bq = icmp sgt i32 %1, 0
  %i.br = icmp sgt i32 %4, 0
  %or.cond.i = and i1 %i.bq, %i.br                ; 2 uses
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %.preheader137.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.bs = mul i64 %indvars.iv.i, %3
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bs
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %.076141.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %i.cj, %bb.c ] ; 2 uses
  %.082140.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cl, %bb.c ]
  %.083139.i = phi ptr [ %5, %.lr.ph.i ], [ %i.ck, %bb.c ] ; 3 uses
  %i.bu = load <8 x i16>, ptr %.076141.i, align 1, !tbaa !54 ; 2 uses
  %i.bv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bx = shufflevector <8 x i16> %i.bv, <8 x i16> %i.bw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.by = bitcast <16 x i16> %i.bx to <8 x float> ; 2 uses
  %i.bz = shufflevector <8 x float> %i.by, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ca = shufflevector <8 x float> %i.by, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bz, <4 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cb, <4 x float> nofpclass(nan inf) %i.cc) ; 2 uses
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.cd, <4 x float> nofpclass(nan inf) %i.ce)
  %i.cg = extractelement <4 x float> %i.cf, i64 0 ; 2 uses
  %i.ch = load float, ptr %.083139.i, align 4, !tbaa !59 ; 2 uses
  %i.ci = fcmp fast olt float %i.ch, %i.cg
  %.sroa.speculated.i = select i1 %i.ci, float %i.cg, float %i.ch
  store float %.sroa.speculated.i, ptr %.083139.i, align 4, !tbaa !59
  %i.cj = getelementptr inbounds nuw i8, ptr %.076141.i, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %.083139.i, i64 4
  %i.cl = add nuw nsw i32 %.082140.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cl, %4
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !242

._crit_edge.i:                                    ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond181.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond181.not.i, label %.lr.ph150.i, label %.lr.ph.i, !llvm.loop !243

.preheader137.i:                                  ; preds = %._crit_edge151.i, %bb.b
  br i1 %i.a, label %.lr.ph156.i.preheader, label %.preheader136.i

.lr.ph156.i.preheader:                            ; preds = %.preheader137.i
  %i.cm = add nsw i32 %4, -8                      ; 2 uses
  %i.cn = lshr i32 %i.cm, 3                       ; 2 uses
  %i.co = add nuw nsw i32 %i.cn, 1                ; 2 uses
  %i.cp = icmp eq i32 %i.cn, 0
  br i1 %i.cp, label %.lr.ph156.i.epil.preheader, label %.lr.ph156.i.preheader.new

.lr.ph156.i.preheader.new:                        ; preds = %.lr.ph156.i.preheader
  %unroll_iter453 = and i32 %i.co, 1073741822
  br label %.lr.ph156.i

.lr.ph150.i:                                      ; preds = %._crit_edge.i, %._crit_edge151.i
  %indvars.iv183.i = phi i64 [ %indvars.iv.next184.i, %._crit_edge151.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.cq = mul i64 %indvars.iv183.i, %3
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cq
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph150.i
  %.077148.i = phi i32 [ 0, %.lr.ph150.i ], [ %i.ex, %bb.d ]
  %.078147.i = phi ptr [ %6, %.lr.ph150.i ], [ %i.ew, %bb.d ] ; 3 uses
  %.079146.i = phi ptr [ %5, %.lr.ph150.i ], [ %i.ev, %bb.d ] ; 2 uses
  %.080145.i = phi ptr [ %i.cr, %.lr.ph150.i ], [ %i.eu, %bb.d ] ; 3 uses
  %i.cs = load <8 x i16>, ptr %.080145.i, align 1, !tbaa !54 ; 2 uses
  %i.ct = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cu = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cs, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cv = shufflevector <8 x i16> %i.ct, <8 x i16> %i.cu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cw = bitcast <16 x i16> %i.cv to <8 x float>
  %i.cx = load float, ptr %.079146.i, align 4, !tbaa !59
  %i.cy = insertelement <8 x float> poison, float %i.cx, i64 0
  %i.cz = shufflevector <8 x float> %i.cy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.da = fsub fast <8 x float> %i.cw, %i.cz
  %i.db = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.da, <8 x float> splat (float f0x42B0C0A5))
  %i.dc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.db, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dd = fmul fast <8 x float> %i.dc, splat (float f0x3FB8AA3B)
  %i.de = fadd fast <8 x float> %i.dd, splat (float 5.000000e-01) ; 2 uses
  %i.df = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.de, i32 1) ; 2 uses
  %i.dg = fcmp fast ogt <8 x float> %i.df, %i.de
  %i.dh = select <8 x i1> %i.dg, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.di = fsub fast <8 x float> %i.df, %i.dh      ; 2 uses
  %i.dj = fmul fast <8 x float> %i.di, splat (float f0x3F317218)
  %i.dk = fsub fast <8 x float> %i.dc, %i.dj      ; 8 uses
  %i.dl = fmul fast <8 x float> %i.dk, %i.dk
  %i.dm = fmul fast <8 x float> %i.dk, splat (float f0x39506967)
  %i.dn = fadd fast <8 x float> %i.dm, splat (float f0x3AB743CE)
  %i.do = fmul fast <8 x float> %i.dn, %i.dk
  %i.dp = fadd fast <8 x float> %i.do, splat (float f0x3C088908)
  %i.dq = fmul fast <8 x float> %i.dp, %i.dk
  %i.dr = fadd fast <8 x float> %i.dq, splat (float f0x3D2AA9C1)
  %i.ds = fmul fast <8 x float> %i.dr, %i.dk
  %i.dt = fadd fast <8 x float> %i.ds, splat (float f0x3E2AAAAA)
  %i.du = fmul fast <8 x float> %i.dt, %i.dk
  %i.dv = fadd fast <8 x float> %i.du, splat (float 5.000000e-01)
  %i.dw = fmul fast <8 x float> %i.dl, %i.dv
  %i.dx = fadd fast <8 x float> %i.dk, %i.dw
  %i.dy = fadd fast <8 x float> %i.dx, splat (float 1.000000e+00)
  %i.dz = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.di)
  %i.ea = shl <8 x i32> %i.dz, splat (i32 23)
  %i.eb = add <8 x i32> %i.ea, splat (i32 1065353216)
  %i.ec = bitcast <8 x i32> %i.eb to <8 x float>
  %i.ed = fmul fast <8 x float> %i.dy, %i.ec      ; 3 uses
  %i.ee = bitcast <8 x float> %i.ed to <8 x i32>  ; 2 uses
  %i.ef = shufflevector <8 x i32> %i.ee, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eg = shufflevector <8 x i32> %i.ee, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eh = lshr <4 x i32> %i.ef, splat (i32 16)
  %i.ei = lshr <4 x i32> %i.eg, splat (i32 16)
  %i.ej = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.eh, <4 x i32> %i.ei)
  store <8 x i16> %i.ej, ptr %.080145.i, align 1, !tbaa !54
  %i.ek = shufflevector <8 x float> %i.ed, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.el = shufflevector <8 x float> %i.ed, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.em = fadd fast <4 x float> %i.ek, %i.el      ; 2 uses
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.eo = fadd fast <4 x float> %i.en, %i.em      ; 2 uses
  %i.ep = extractelement <4 x float> %i.eo, i64 1
  %i.eq = extractelement <4 x float> %i.eo, i64 0
  %i.er = load float, ptr %.078147.i, align 4, !tbaa !59
  %i.es = fadd fast float %i.ep, %i.er
  %i.et = fadd fast float %i.es, %i.eq
  store float %i.et, ptr %.078147.i, align 4, !tbaa !59
  %i.eu = getelementptr inbounds nuw i8, ptr %.080145.i, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %.079146.i, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %.078147.i, i64 4
  %i.ex = add nuw nsw i32 %.077148.i, 1           ; 2 uses
  %exitcond182.not.i = icmp eq i32 %i.ex, %4
  br i1 %exitcond182.not.i, label %._crit_edge151.i, label %bb.d, !llvm.loop !244

._crit_edge151.i:                                 ; preds = %bb.d
  %indvars.iv.next184.i = add nuw nsw i64 %indvars.iv183.i, 1 ; 2 uses
  %exitcond187.not.i = icmp eq i64 %indvars.iv.next184.i, %wide.trip.count.i
  br i1 %exitcond187.not.i, label %.preheader137.i, label %.lr.ph150.i, !llvm.loop !245

.preheader136.loopexit.i.unr-lcssa:               ; preds = %.lr.ph156.i
  %i.ey = and i32 %i.cm, 8
  %lcmp.mod450.not.not = icmp eq i32 %i.ey, 0
  br i1 %lcmp.mod450.not.not, label %.lr.ph156.i.epil.preheader, label %.preheader136.loopexit.i

.lr.ph156.i.epil.preheader:                       ; preds = %.preheader136.loopexit.i.unr-lcssa, %.lr.ph156.i.preheader
  %.073154.i.epil.init = phi ptr [ %6, %.lr.ph156.i.preheader ], [ %i.ft, %.preheader136.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod452 = trunc i32 %i.co to i1
  tail call void @llvm.assume(i1 %lcmp.mod452)
  %i.ez = load <8 x float>, ptr %.073154.i.epil.init, align 1, !tbaa !54 ; 2 uses
  %i.fa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.ez) ; 2 uses
  %i.fb = fmul fast <8 x float> %i.fa, %i.ez
  %i.fc = fsub fast <8 x float> splat (float 2.000000e+00), %i.fb
  %i.fd = fmul fast <8 x float> %i.fc, %i.fa
  store <8 x float> %i.fd, ptr %.073154.i.epil.init, align 1, !tbaa !54
  %i.fe = getelementptr inbounds nuw i8, ptr %.073154.i.epil.init, i64 32
  br label %.preheader136.loopexit.i

.preheader136.loopexit.i:                         ; preds = %.preheader136.loopexit.i.unr-lcssa, %.lr.ph156.i.epil.preheader
  %.lcssa376 = phi ptr [ %i.ft, %.preheader136.loopexit.i.unr-lcssa ], [ %i.fe, %.lr.ph156.i.epil.preheader ]
  %i.ff = and i32 %4, 2147483640
  br label %.preheader136.i

.preheader136.i:                                  ; preds = %.preheader136.loopexit.i, %.preheader137.i
  %.073.lcssa.i = phi ptr [ %6, %.preheader137.i ], [ %.lcssa376, %.preheader136.loopexit.i ] ; 2 uses
  %.072.lcssa.i = phi i32 [ 0, %.preheader137.i ], [ %i.ff, %.preheader136.loopexit.i ] ; 3 uses
  %i.fg = or disjoint i32 %.072.lcssa.i, 3
  %i.fh = icmp slt i32 %i.fg, %4
  br i1 %i.fh, label %.lr.ph160.i, label %.preheader135.i

.lr.ph156.i:                                      ; preds = %.lr.ph156.i, %.lr.ph156.i.preheader.new
  %.073154.i = phi ptr [ %6, %.lr.ph156.i.preheader.new ], [ %i.ft, %.lr.ph156.i ] ; 4 uses
  %niter454 = phi i32 [ 0, %.lr.ph156.i.preheader.new ], [ %niter454.next.1, %.lr.ph156.i ]
  %i.fi = load <8 x float>, ptr %.073154.i, align 1, !tbaa !54 ; 2 uses
  %i.fj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.fi) ; 2 uses
  %i.fk = fmul fast <8 x float> %i.fj, %i.fi
  %i.fl = fsub fast <8 x float> splat (float 2.000000e+00), %i.fk
  %i.fm = fmul fast <8 x float> %i.fl, %i.fj
  store <8 x float> %i.fm, ptr %.073154.i, align 1, !tbaa !54
  %i.fn = getelementptr inbounds nuw i8, ptr %.073154.i, i64 32 ; 2 uses
  %i.fo = load <8 x float>, ptr %i.fn, align 1, !tbaa !54 ; 2 uses
  %i.fp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.fo) ; 2 uses
  %i.fq = fmul fast <8 x float> %i.fp, %i.fo
  %i.fr = fsub fast <8 x float> splat (float 2.000000e+00), %i.fq
  %i.fs = fmul fast <8 x float> %i.fr, %i.fp
  store <8 x float> %i.fs, ptr %i.fn, align 1, !tbaa !54
  %i.ft = getelementptr inbounds nuw i8, ptr %.073154.i, i64 64 ; 3 uses
  %niter454.next.1 = add i32 %niter454, 2         ; 2 uses
  %niter454.ncmp.1.not = icmp eq i32 %niter454.next.1, %unroll_iter453
  br i1 %niter454.ncmp.1.not, label %.preheader136.loopexit.i.unr-lcssa, label %.lr.ph156.i, !llvm.loop !246

.preheader135.i:                                  ; preds = %.lr.ph160.i, %.preheader136.i
  %.174.lcssa.i = phi ptr [ %.073.lcssa.i, %.preheader136.i ], [ %i.gl, %.lr.ph160.i ] ; 3 uses
  %.1.lcssa.i = phi i32 [ %.072.lcssa.i, %.preheader136.i ], [ %i.gm, %.lr.ph160.i ] ; 4 uses
  %i.fu = icmp slt i32 %.1.lcssa.i, %4
  br i1 %i.fu, label %.lr.ph165.i.preheader, label %.preheader.i

.lr.ph165.i.preheader:                            ; preds = %.preheader135.i
  %i.fv = xor i32 %.1.lcssa.i, -1
  %i.fw = add i32 %4, %i.fv                       ; 2 uses
  %i.fx = zext i32 %i.fw to i64
  %i.fy = add nuw nsw i64 %i.fx, 1                ; 2 uses
  %min.iters.check362 = icmp ult i32 %i.fw, 7
  br i1 %min.iters.check362, label %.lr.ph165.i.preheader374, label %vector.ph363

vector.ph363:                                     ; preds = %.lr.ph165.i.preheader
  %n.vec364 = and i64 %i.fy, 8589934584           ; 4 uses
  %i.fz = trunc i64 %n.vec364 to i32
  %i.ga = add i32 %.1.lcssa.i, %i.fz
  %i.gb = shl nuw nsw i64 %n.vec364, 2
  %i.gc = getelementptr i8, ptr %.174.lcssa.i, i64 %i.gb
  br label %vector.body365

vector.body365:                                   ; preds = %vector.body365, %vector.ph363
  %index366 = phi i64 [ 0, %vector.ph363 ], [ %index.next369, %vector.body365 ] ; 2 uses
  %i.gd = shl i64 %index366, 2
  %next.gep367 = getelementptr i8, ptr %.174.lcssa.i, i64 %i.gd ; 2 uses
  %wide.load368 = load <8 x float>, ptr %next.gep367, align 4, !tbaa !59
  %i.ge = fdiv fast <8 x float> splat (float 1.000000e+00), %wide.load368
  store <8 x float> %i.ge, ptr %next.gep367, align 4, !tbaa !59
  %index.next369 = add nuw i64 %index366, 8       ; 2 uses
  %i.gf = icmp eq i64 %index.next369, %n.vec364
  br i1 %i.gf, label %middle.block370, label %vector.body365, !llvm.loop !247

middle.block370:                                  ; preds = %vector.body365
  %cmp.n371 = icmp eq i64 %i.fy, %n.vec364
  br i1 %cmp.n371, label %.preheader.i, label %.lr.ph165.i.preheader374

.lr.ph165.i.preheader374:                         ; preds = %.lr.ph165.i.preheader, %middle.block370
  %.2164.i.ph = phi i32 [ %.1.lcssa.i, %.lr.ph165.i.preheader ], [ %i.ga, %middle.block370 ]
  %.275163.i.ph = phi ptr [ %.174.lcssa.i, %.lr.ph165.i.preheader ], [ %i.gc, %middle.block370 ]
  br label %.lr.ph165.i

.lr.ph160.i:                                      ; preds = %.preheader136.i, %.lr.ph160.i
  %.1159.i = phi i32 [ %i.gm, %.lr.ph160.i ], [ %.072.lcssa.i, %.preheader136.i ]
  %.174158.i = phi ptr [ %i.gl, %.lr.ph160.i ], [ %.073.lcssa.i, %.preheader136.i ] ; 3 uses
  %i.gg = load <4 x float>, ptr %.174158.i, align 1, !tbaa !54 ; 2 uses
  %i.gh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.gg) ; 2 uses
  %i.gi = fmul fast <4 x float> %i.gh, %i.gg
  %i.gj = fsub fast <4 x float> splat (float 2.000000e+00), %i.gi
  %i.gk = fmul fast <4 x float> %i.gj, %i.gh
  store <4 x float> %i.gk, ptr %.174158.i, align 1, !tbaa !54
  %i.gl = getelementptr inbounds nuw i8, ptr %.174158.i, i64 16 ; 2 uses
  %i.gm = add nuw nsw i32 %.1159.i, 4             ; 3 uses
  %i.gn = or disjoint i32 %i.gm, 3
  %i.go = icmp slt i32 %i.gn, %4
  br i1 %i.go, label %.lr.ph160.i, label %.preheader135.i, !llvm.loop !248

.preheader.i:                                     ; preds = %.lr.ph165.i, %middle.block370, %.preheader135.i
  br i1 %or.cond.i, label %.lr.ph170.preheader.i, label %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit

.lr.ph170.preheader.i:                            ; preds = %.preheader.i
  %wide.trip.count193.i = zext nneg i32 %1 to i64
  br label %.lr.ph170.i

.lr.ph165.i:                                      ; preds = %.lr.ph165.i.preheader374, %.lr.ph165.i
  %.2164.i = phi i32 [ %i.gs, %.lr.ph165.i ], [ %.2164.i.ph, %.lr.ph165.i.preheader374 ]
  %.275163.i = phi ptr [ %i.gr, %.lr.ph165.i ], [ %.275163.i.ph, %.lr.ph165.i.preheader374 ] ; 3 uses
  %i.gp = load float, ptr %.275163.i, align 4, !tbaa !59
  %i.gq = fdiv fast float 1.000000e+00, %i.gp
  store float %i.gq, ptr %.275163.i, align 4, !tbaa !59
  %i.gr = getelementptr inbounds nuw i8, ptr %.275163.i, i64 4
  %i.gs = add nuw nsw i32 %.2164.i, 1             ; 2 uses
  %exitcond188.not.i = icmp eq i32 %i.gs, %4
  br i1 %exitcond188.not.i, label %.preheader.i, label %.lr.ph165.i, !llvm.loop !249

.lr.ph170.i:                                      ; preds = %._crit_edge171.i, %.lr.ph170.preheader.i
  %indvars.iv190.i = phi i64 [ 0, %.lr.ph170.preheader.i ], [ %indvars.iv.next191.i, %._crit_edge171.i ] ; 2 uses
  %i.gt = mul i64 %indvars.iv190.i, %3
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.gt
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph170.i
  %.068168.i = phi i32 [ 0, %.lr.ph170.i ], [ %i.hm, %bb.e ]
  %.069167.i = phi ptr [ %6, %.lr.ph170.i ], [ %i.hl, %bb.e ] ; 2 uses
  %.070166.i = phi ptr [ %i.gu, %.lr.ph170.i ], [ %i.hk, %bb.e ] ; 3 uses
  %i.gv = load <8 x i16>, ptr %.070166.i, align 1, !tbaa !54 ; 2 uses
  %i.gw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gx = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.gv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.gy = shufflevector <8 x i16> %i.gw, <8 x i16> %i.gx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gz = bitcast <16 x i16> %i.gy to <8 x float>
  %i.ha = load float, ptr %.069167.i, align 4, !tbaa !59
  %i.hb = insertelement <8 x float> poison, float %i.ha, i64 0
  %i.hc = shufflevector <8 x float> %i.hb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hd = fmul fast <8 x float> %i.hc, %i.gz
  %i.he = bitcast <8 x float> %i.hd to <8 x i32>  ; 2 uses
  %i.hf = shufflevector <8 x i32> %i.he, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hg = shufflevector <8 x i32> %i.he, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hh = lshr <4 x i32> %i.hf, splat (i32 16)
  %i.hi = lshr <4 x i32> %i.hg, splat (i32 16)
  %i.hj = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.hh, <4 x i32> %i.hi)
  store <8 x i16> %i.hj, ptr %.070166.i, align 1, !tbaa !54
  %i.hk = getelementptr inbounds nuw i8, ptr %.070166.i, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %.069167.i, i64 4
  %i.hm = add nuw nsw i32 %.068168.i, 1           ; 2 uses
  %exitcond189.not.i = icmp eq i32 %i.hm, %4
  br i1 %exitcond189.not.i, label %._crit_edge171.i, label %bb.e, !llvm.loop !250

._crit_edge171.i:                                 ; preds = %bb.e
  %indvars.iv.next191.i = add nuw nsw i64 %indvars.iv190.i, 1 ; 2 uses
  %exitcond194.not.i = icmp eq i64 %indvars.iv.next191.i, %wide.trip.count193.i
  br i1 %exitcond194.not.i, label %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit, label %.lr.ph170.i, !llvm.loop !251

bb.f:                                             ; preds = %._crit_edge
  %i.hn = icmp sgt i32 %1, 0
  %i.ho = icmp sgt i32 %4, 0
  %or.cond.i64 = and i1 %i.hn, %i.ho              ; 2 uses
  br i1 %or.cond.i64, label %.lr.ph.preheader.i73, label %.preheader131.i

.lr.ph.preheader.i73:                             ; preds = %bb.f
  %wide.trip.count.i74 = zext nneg i32 %1 to i64  ; 2 uses
  %xtraiter428 = and i32 %4, 1
  %i.hp = icmp eq i32 %4, 1
  %unroll_iter432 = and i32 %4, 2147483646
  %lcmp.mod430.not = icmp eq i32 %xtraiter428, 0
  %lcmp.mod431 = trunc i32 %4 to i1
  br label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %._crit_edge.i79, %.lr.ph.preheader.i73
  %indvars.iv.i76 = phi i64 [ 0, %.lr.ph.preheader.i73 ], [ %indvars.iv.next.i80, %._crit_edge.i79 ] ; 2 uses
  %i.hq = mul i64 %indvars.iv.i76, %3
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.hq ; 2 uses
  br i1 %i.hp, label %.epil.preheader, label %.lr.ph.i75.new

.lr.ph.i75.new:                                   ; preds = %.lr.ph.i75, %.lr.ph.i75.new
  %.076135.i = phi ptr [ %i.is, %.lr.ph.i75.new ], [ %i.hr, %.lr.ph.i75 ] ; 3 uses
  %.083133.i = phi ptr [ %i.it, %.lr.ph.i75.new ], [ %5, %.lr.ph.i75 ] ; 4 uses
  %niter433 = phi i32 [ %niter433.next.1, %.lr.ph.i75.new ], [ 0, %.lr.ph.i75 ]
  %i.hs = load i64, ptr %.076135.i, align 1, !tbaa !54
  %i.ht = insertelement <2 x i64> poison, i64 %i.hs, i64 0
  %i.hu = bitcast <2 x i64> %i.ht to <8 x i16>
  %i.hv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hw = bitcast <8 x i16> %i.hv to <4 x float>  ; 2 uses
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.hy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hw, <4 x float> nofpclass(nan inf) %i.hx) ; 2 uses
  %i.hz = shufflevector <4 x float> %i.hy, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ia = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.hy, <4 x float> nofpclass(nan inf) %i.hz)
  %i.ib = extractelement <4 x float> %i.ia, i64 0 ; 2 uses
  %i.ic = load float, ptr %.083133.i, align 4, !tbaa !59 ; 2 uses
  %i.id = fcmp fast olt float %i.ic, %i.ib
  %.sroa.speculated.i77 = select i1 %i.id, float %i.ib, float %i.ic
  store float %.sroa.speculated.i77, ptr %.083133.i, align 4, !tbaa !59
  %i.ie = getelementptr inbounds nuw i8, ptr %.076135.i, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %.083133.i, i64 4 ; 2 uses
  %i.ig = load i64, ptr %i.ie, align 1, !tbaa !54
  %i.ih = insertelement <2 x i64> poison, i64 %i.ig, i64 0
  %i.ii = bitcast <2 x i64> %i.ih to <8 x i16>
  %i.ij = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ii, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ik = bitcast <8 x i16> %i.ij to <4 x float>  ; 2 uses
  %i.il = shufflevector <4 x float> %i.ik, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.im = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ik, <4 x float> nofpclass(nan inf) %i.il) ; 2 uses
  %i.in = shufflevector <4 x float> %i.im, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.io = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.im, <4 x float> nofpclass(nan inf) %i.in)
  %i.ip = extractelement <4 x float> %i.io, i64 0 ; 2 uses
  %i.iq = load float, ptr %i.if, align 4, !tbaa !59 ; 2 uses
  %i.ir = fcmp fast olt float %i.iq, %i.ip
  %.sroa.speculated.i77.1 = select i1 %i.ir, float %i.ip, float %i.iq
  store float %.sroa.speculated.i77.1, ptr %i.if, align 4, !tbaa !59
  %i.is = getelementptr inbounds nuw i8, ptr %.076135.i, i64 16 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.083133.i, i64 8 ; 2 uses
  %niter433.next.1 = add nuw nsw i32 %niter433, 2 ; 2 uses
  %niter433.ncmp.1 = icmp eq i32 %niter433.next.1, %unroll_iter432
  br i1 %niter433.ncmp.1, label %._crit_edge.i79.unr-lcssa, label %.lr.ph.i75.new, !llvm.loop !252

._crit_edge.i79.unr-lcssa:                        ; preds = %.lr.ph.i75.new
  br i1 %lcmp.mod430.not, label %._crit_edge.i79, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i79.unr-lcssa, %.lr.ph.i75
  %.076135.i.epil.init = phi ptr [ %i.hr, %.lr.ph.i75 ], [ %i.is, %._crit_edge.i79.unr-lcssa ]
  %.083133.i.epil.init = phi ptr [ %5, %.lr.ph.i75 ], [ %i.it, %._crit_edge.i79.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod431)
  %i.iu = load i64, ptr %.076135.i.epil.init, align 1, !tbaa !54
  %i.iv = insertelement <2 x i64> poison, i64 %i.iu, i64 0
  %i.iw = bitcast <2 x i64> %i.iv to <8 x i16>
  %i.ix = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.iw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.iy = bitcast <8 x i16> %i.ix to <4 x float>  ; 2 uses
  %i.iz = shufflevector <4 x float> %i.iy, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ja = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.iy, <4 x float> nofpclass(nan inf) %i.iz) ; 2 uses
  %i.jb = shufflevector <4 x float> %i.ja, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.jc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ja, <4 x float> nofpclass(nan inf) %i.jb)
  %i.jd = extractelement <4 x float> %i.jc, i64 0 ; 2 uses
  %i.je = load float, ptr %.083133.i.epil.init, align 4, !tbaa !59 ; 2 uses
  %i.jf = fcmp fast olt float %i.je, %i.jd
  %.sroa.speculated.i77.epil = select i1 %i.jf, float %i.jd, float %i.je
  store float %.sroa.speculated.i77.epil, ptr %.083133.i.epil.init, align 4, !tbaa !59
  br label %._crit_edge.i79

._crit_edge.i79:                                  ; preds = %._crit_edge.i79.unr-lcssa, %.epil.preheader
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i76, 1 ; 2 uses
  %exitcond175.not.i = icmp eq i64 %indvars.iv.next.i80, %wide.trip.count.i74
  br i1 %exitcond175.not.i, label %.lr.ph144.i, label %.lr.ph.i75, !llvm.loop !253

.preheader131.i:                                  ; preds = %._crit_edge145.i, %bb.f
  br i1 %i.a, label %.lr.ph150.i72.preheader, label %.preheader130.i

.lr.ph150.i72.preheader:                          ; preds = %.preheader131.i
  %i.jg = add nsw i32 %4, -8                      ; 2 uses
  %i.jh = lshr i32 %i.jg, 3                       ; 2 uses
  %i.ji = add nuw nsw i32 %i.jh, 1                ; 2 uses
  %i.jj = icmp eq i32 %i.jh, 0
  br i1 %i.jj, label %.lr.ph150.i72.epil.preheader, label %.lr.ph150.i72.preheader.new

.lr.ph150.i72.preheader.new:                      ; preds = %.lr.ph150.i72.preheader
  %unroll_iter439 = and i32 %i.ji, 1073741822
  br label %.lr.ph150.i72

.lr.ph144.i:                                      ; preds = %._crit_edge.i79, %._crit_edge145.i
  %indvars.iv177.i = phi i64 [ %indvars.iv.next178.i, %._crit_edge145.i ], [ 0, %._crit_edge.i79 ] ; 2 uses
  %i.jk = mul i64 %indvars.iv177.i, %3
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.jk
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph144.i
  %.077142.i = phi i32 [ 0, %.lr.ph144.i ], [ %i.lo, %bb.g ]
  %.078141.i = phi ptr [ %6, %.lr.ph144.i ], [ %i.ln, %bb.g ] ; 3 uses
  %.079140.i = phi ptr [ %5, %.lr.ph144.i ], [ %i.lm, %bb.g ] ; 2 uses
  %.080139.i = phi ptr [ %i.jl, %.lr.ph144.i ], [ %i.ll, %bb.g ] ; 3 uses
  %i.jm = load i64, ptr %.080139.i, align 1, !tbaa !54
  %i.jn = insertelement <2 x i64> poison, i64 %i.jm, i64 0
  %i.jo = bitcast <2 x i64> %i.jn to <8 x i16>
  %i.jp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jq = bitcast <8 x i16> %i.jp to <4 x float>
  %i.jr = load float, ptr %.079140.i, align 4, !tbaa !59
  %i.js = insertelement <4 x float> poison, float %i.jr, i64 0
  %i.jt = shufflevector <4 x float> %i.js, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ju = fsub fast <4 x float> %i.jq, %i.jt
  %i.jv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ju, <4 x float> splat (float f0x42B0C0A5))
  %i.jw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jv, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jx = fmul fast <4 x float> %i.jw, splat (float f0x3FB8AA3B)
  %i.jy = fadd fast <4 x float> %i.jx, splat (float 5.000000e-01) ; 2 uses
  %i.jz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jy)
  %i.ka = sitofp fast <4 x i32> %i.jz to <4 x float> ; 2 uses
  %i.kb = fcmp fast olt <4 x float> %i.jy, %i.ka
  %i.kc = select <4 x i1> %i.kb, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.kd = fsub fast <4 x float> %i.ka, %i.kc      ; 2 uses
  %i.ke = fmul fast <4 x float> %i.kd, splat (float f0x3F317218)
  %i.kf = fsub fast <4 x float> %i.jw, %i.ke      ; 8 uses
  %i.kg = fmul fast <4 x float> %i.kf, %i.kf
  %i.kh = fmul fast <4 x float> %i.kf, splat (float f0x39506967)
  %i.ki = fadd fast <4 x float> %i.kh, splat (float f0x3AB743CE)
  %i.kj = fmul fast <4 x float> %i.ki, %i.kf
  %i.kk = fadd fast <4 x float> %i.kj, splat (float f0x3C088908)
  %i.kl = fmul fast <4 x float> %i.kk, %i.kf
  %i.km = fadd fast <4 x float> %i.kl, splat (float f0x3D2AA9C1)
  %i.kn = fmul fast <4 x float> %i.km, %i.kf
  %i.ko = fadd fast <4 x float> %i.kn, splat (float f0x3E2AAAAA)
  %i.kp = fmul fast <4 x float> %i.ko, %i.kf
  %i.kq = fadd fast <4 x float> %i.kp, splat (float 5.000000e-01)
  %i.kr = fmul fast <4 x float> %i.kg, %i.kq
  %i.ks = fadd fast <4 x float> %i.kf, %i.kr
  %i.kt = fadd fast <4 x float> %i.ks, splat (float 1.000000e+00)
  %i.ku = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kd)
  %i.kv = shl <4 x i32> %i.ku, splat (i32 23)
  %i.kw = add <4 x i32> %i.kv, splat (i32 1065353216)
  %i.kx = bitcast <4 x i32> %i.kw to <4 x float>
  %i.ky = fmul fast <4 x float> %i.kt, %i.kx      ; 3 uses
  %i.kz = bitcast <4 x float> %i.ky to <4 x i32>
  %i.la = lshr <4 x i32> %i.kz, splat (i32 16)
  %i.lb = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.la, <4 x i32> poison)
  %i.lc = bitcast <8 x i16> %i.lb to <2 x i64>
  %i.ld = extractelement <2 x i64> %i.lc, i64 0
  store i64 %i.ld, ptr %.080139.i, align 1, !tbaa !54
  %i.le = shufflevector <4 x float> %i.ky, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.lf = fadd fast <4 x float> %i.le, %i.ky      ; 2 uses
  %i.lg = extractelement <4 x float> %i.lf, i64 1
  %i.lh = extractelement <4 x float> %i.lf, i64 0
  %i.li = load float, ptr %.078141.i, align 4, !tbaa !59
  %i.lj = fadd fast float %i.lg, %i.li
  %i.lk = fadd fast float %i.lj, %i.lh
  store float %i.lk, ptr %.078141.i, align 4, !tbaa !59
  %i.ll = getelementptr inbounds nuw i8, ptr %.080139.i, i64 8
  %i.lm = getelementptr inbounds nuw i8, ptr %.079140.i, i64 4
  %i.ln = getelementptr inbounds nuw i8, ptr %.078141.i, i64 4
  %i.lo = add nuw nsw i32 %.077142.i, 1           ; 2 uses
  %exitcond176.not.i = icmp eq i32 %i.lo, %4
  br i1 %exitcond176.not.i, label %._crit_edge145.i, label %bb.g, !llvm.loop !254

._crit_edge145.i:                                 ; preds = %bb.g
  %indvars.iv.next178.i = add nuw nsw i64 %indvars.iv177.i, 1 ; 2 uses
  %exitcond181.not.i81 = icmp eq i64 %indvars.iv.next178.i, %wide.trip.count.i74
  br i1 %exitcond181.not.i81, label %.preheader131.i, label %.lr.ph144.i, !llvm.loop !255

.preheader130.loopexit.i.unr-lcssa:               ; preds = %.lr.ph150.i72
  %i.lp = and i32 %i.jg, 8
  %lcmp.mod436.not.not = icmp eq i32 %i.lp, 0
  br i1 %lcmp.mod436.not.not, label %.lr.ph150.i72.epil.preheader, label %.preheader130.loopexit.i

.lr.ph150.i72.epil.preheader:                     ; preds = %.preheader130.loopexit.i.unr-lcssa, %.lr.ph150.i72.preheader
  %.073148.i.epil.init = phi ptr [ %6, %.lr.ph150.i72.preheader ], [ %i.mk, %.preheader130.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod438 = trunc i32 %i.ji to i1
  tail call void @llvm.assume(i1 %lcmp.mod438)
  %i.lq = load <8 x float>, ptr %.073148.i.epil.init, align 1, !tbaa !54 ; 2 uses
  %i.lr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.lq) ; 2 uses
  %i.ls = fmul fast <8 x float> %i.lr, %i.lq
  %i.lt = fsub fast <8 x float> splat (float 2.000000e+00), %i.ls
  %i.lu = fmul fast <8 x float> %i.lt, %i.lr
  store <8 x float> %i.lu, ptr %.073148.i.epil.init, align 1, !tbaa !54
  %i.lv = getelementptr inbounds nuw i8, ptr %.073148.i.epil.init, i64 32
  br label %.preheader130.loopexit.i

.preheader130.loopexit.i:                         ; preds = %.preheader130.loopexit.i.unr-lcssa, %.lr.ph150.i72.epil.preheader
  %.lcssa381 = phi ptr [ %i.mk, %.preheader130.loopexit.i.unr-lcssa ], [ %i.lv, %.lr.ph150.i72.epil.preheader ]
  %i.lw = and i32 %4, 2147483640
  br label %.preheader130.i

.preheader130.i:                                  ; preds = %.preheader130.loopexit.i, %.preheader131.i
  %.073.lcssa.i65 = phi ptr [ %6, %.preheader131.i ], [ %.lcssa381, %.preheader130.loopexit.i ] ; 2 uses
  %.072.lcssa.i66 = phi i32 [ 0, %.preheader131.i ], [ %i.lw, %.preheader130.loopexit.i ] ; 3 uses
  %i.lx = or disjoint i32 %.072.lcssa.i66, 3
  %i.ly = icmp slt i32 %i.lx, %4
  br i1 %i.ly, label %.lr.ph154.i, label %.preheader129.i

.lr.ph150.i72:                                    ; preds = %.lr.ph150.i72, %.lr.ph150.i72.preheader.new
  %.073148.i = phi ptr [ %6, %.lr.ph150.i72.preheader.new ], [ %i.mk, %.lr.ph150.i72 ] ; 4 uses
  %niter440 = phi i32 [ 0, %.lr.ph150.i72.preheader.new ], [ %niter440.next.1, %.lr.ph150.i72 ]
  %i.lz = load <8 x float>, ptr %.073148.i, align 1, !tbaa !54 ; 2 uses
  %i.ma = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.lz) ; 2 uses
  %i.mb = fmul fast <8 x float> %i.ma, %i.lz
  %i.mc = fsub fast <8 x float> splat (float 2.000000e+00), %i.mb
  %i.md = fmul fast <8 x float> %i.mc, %i.ma
  store <8 x float> %i.md, ptr %.073148.i, align 1, !tbaa !54
  %i.me = getelementptr inbounds nuw i8, ptr %.073148.i, i64 32 ; 2 uses
  %i.mf = load <8 x float>, ptr %i.me, align 1, !tbaa !54 ; 2 uses
  %i.mg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.mf) ; 2 uses
  %i.mh = fmul fast <8 x float> %i.mg, %i.mf
  %i.mi = fsub fast <8 x float> splat (float 2.000000e+00), %i.mh
  %i.mj = fmul fast <8 x float> %i.mi, %i.mg
  store <8 x float> %i.mj, ptr %i.me, align 1, !tbaa !54
  %i.mk = getelementptr inbounds nuw i8, ptr %.073148.i, i64 64 ; 3 uses
  %niter440.next.1 = add i32 %niter440, 2         ; 2 uses
  %niter440.ncmp.1.not = icmp eq i32 %niter440.next.1, %unroll_iter439
  br i1 %niter440.ncmp.1.not, label %.preheader130.loopexit.i.unr-lcssa, label %.lr.ph150.i72, !llvm.loop !256

.preheader129.i:                                  ; preds = %.lr.ph154.i, %.preheader130.i
  %.174.lcssa.i67 = phi ptr [ %.073.lcssa.i65, %.preheader130.i ], [ %i.nc, %.lr.ph154.i ] ; 3 uses
  %.1.lcssa.i68 = phi i32 [ %.072.lcssa.i66, %.preheader130.i ], [ %i.nd, %.lr.ph154.i ] ; 4 uses
  %i.ml = icmp slt i32 %.1.lcssa.i68, %4
  br i1 %i.ml, label %.lr.ph159.i.preheader, label %.preheader.i69

.lr.ph159.i.preheader:                            ; preds = %.preheader129.i
  %i.mm = xor i32 %.1.lcssa.i68, -1
  %i.mn = add i32 %4, %i.mm                       ; 2 uses
  %i.mo = zext i32 %i.mn to i64
  %i.mp = add nuw nsw i64 %i.mo, 1                ; 2 uses
  %min.iters.check349 = icmp ult i32 %i.mn, 7
  br i1 %min.iters.check349, label %.lr.ph159.i.preheader378, label %vector.ph350

vector.ph350:                                     ; preds = %.lr.ph159.i.preheader
  %n.vec351 = and i64 %i.mp, 8589934584           ; 4 uses
  %i.mq = trunc i64 %n.vec351 to i32
  %i.mr = add i32 %.1.lcssa.i68, %i.mq
  %i.ms = shl nuw nsw i64 %n.vec351, 2
  %i.mt = getelementptr i8, ptr %.174.lcssa.i67, i64 %i.ms
  br label %vector.body352

vector.body352:                                   ; preds = %vector.body352, %vector.ph350
  %index353 = phi i64 [ 0, %vector.ph350 ], [ %index.next356, %vector.body352 ] ; 2 uses
  %i.mu = shl i64 %index353, 2
  %next.gep354 = getelementptr i8, ptr %.174.lcssa.i67, i64 %i.mu ; 2 uses
  %wide.load355 = load <8 x float>, ptr %next.gep354, align 4, !tbaa !59
  %i.mv = fdiv fast <8 x float> splat (float 1.000000e+00), %wide.load355
  store <8 x float> %i.mv, ptr %next.gep354, align 4, !tbaa !59
  %index.next356 = add nuw i64 %index353, 8       ; 2 uses
  %i.mw = icmp eq i64 %index.next356, %n.vec351
  br i1 %i.mw, label %middle.block357, label %vector.body352, !llvm.loop !257

middle.block357:                                  ; preds = %vector.body352
  %cmp.n358 = icmp eq i64 %i.mp, %n.vec351
  br i1 %cmp.n358, label %.preheader.i69, label %.lr.ph159.i.preheader378

.lr.ph159.i.preheader378:                         ; preds = %.lr.ph159.i.preheader, %middle.block357
  %.2158.i.ph = phi i32 [ %.1.lcssa.i68, %.lr.ph159.i.preheader ], [ %i.mr, %middle.block357 ]
  %.275157.i.ph = phi ptr [ %.174.lcssa.i67, %.lr.ph159.i.preheader ], [ %i.mt, %middle.block357 ]
  br label %.lr.ph159.i

.lr.ph154.i:                                      ; preds = %.preheader130.i, %.lr.ph154.i
  %.1153.i = phi i32 [ %i.nd, %.lr.ph154.i ], [ %.072.lcssa.i66, %.preheader130.i ]
  %.174152.i = phi ptr [ %i.nc, %.lr.ph154.i ], [ %.073.lcssa.i65, %.preheader130.i ] ; 3 uses
  %i.mx = load <4 x float>, ptr %.174152.i, align 1, !tbaa !54 ; 2 uses
  %i.my = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.mx) ; 2 uses
  %i.mz = fmul fast <4 x float> %i.my, %i.mx
  %i.na = fsub fast <4 x float> splat (float 2.000000e+00), %i.mz
  %i.nb = fmul fast <4 x float> %i.na, %i.my
  store <4 x float> %i.nb, ptr %.174152.i, align 1, !tbaa !54
  %i.nc = getelementptr inbounds nuw i8, ptr %.174152.i, i64 16 ; 2 uses
  %i.nd = add nuw nsw i32 %.1153.i, 4             ; 3 uses
  %i.ne = or disjoint i32 %i.nd, 3
  %i.nf = icmp slt i32 %i.ne, %4
  br i1 %i.nf, label %.lr.ph154.i, label %.preheader129.i, !llvm.loop !258

.preheader.i69:                                   ; preds = %.lr.ph159.i, %middle.block357, %.preheader129.i
  br i1 %or.cond.i64, label %.lr.ph164.preheader.i, label %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit

.lr.ph164.preheader.i:                            ; preds = %.preheader.i69
  %wide.trip.count187.i = zext nneg i32 %1 to i64
  %xtraiter442 = and i32 %4, 1
  %i.ng = icmp eq i32 %4, 1
  %unroll_iter446 = and i32 %4, 2147483646
  %lcmp.mod444.not = icmp eq i32 %xtraiter442, 0
  %lcmp.mod445 = trunc i32 %4 to i1
  br label %.lr.ph164.i

.lr.ph159.i:                                      ; preds = %.lr.ph159.i.preheader378, %.lr.ph159.i
  %.2158.i = phi i32 [ %i.nk, %.lr.ph159.i ], [ %.2158.i.ph, %.lr.ph159.i.preheader378 ]
  %.275157.i = phi ptr [ %i.nj, %.lr.ph159.i ], [ %.275157.i.ph, %.lr.ph159.i.preheader378 ] ; 3 uses
  %i.nh = load float, ptr %.275157.i, align 4, !tbaa !59
  %i.ni = fdiv fast float 1.000000e+00, %i.nh
  store float %i.ni, ptr %.275157.i, align 4, !tbaa !59
  %i.nj = getelementptr inbounds nuw i8, ptr %.275157.i, i64 4
  %i.nk = add nuw nsw i32 %.2158.i, 1             ; 2 uses
  %exitcond182.not.i71 = icmp eq i32 %i.nk, %4
  br i1 %exitcond182.not.i71, label %.preheader.i69, label %.lr.ph159.i, !llvm.loop !259

.lr.ph164.i:                                      ; preds = %._crit_edge165.i, %.lr.ph164.preheader.i
  %indvars.iv184.i = phi i64 [ 0, %.lr.ph164.preheader.i ], [ %indvars.iv.next185.i, %._crit_edge165.i ] ; 2 uses
  %i.nl = mul i64 %indvars.iv184.i, %3
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.nl ; 2 uses
  br i1 %i.ng, label %.epil.preheader441, label %.lr.ph164.i.new

.lr.ph164.i.new:                                  ; preds = %.lr.ph164.i, %.lr.ph164.i.new
  %.069161.i = phi ptr [ %i.os, %.lr.ph164.i.new ], [ %6, %.lr.ph164.i ] ; 3 uses
  %.070160.i = phi ptr [ %i.or, %.lr.ph164.i.new ], [ %i.nm, %.lr.ph164.i ] ; 4 uses
  %niter447 = phi i32 [ %niter447.next.1, %.lr.ph164.i.new ], [ 0, %.lr.ph164.i ]
  %i.nn = load i64, ptr %.070160.i, align 1, !tbaa !54
  %i.no = insertelement <2 x i64> poison, i64 %i.nn, i64 0
  %i.np = bitcast <2 x i64> %i.no to <8 x i16>
  %i.nq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.np, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nr = bitcast <8 x i16> %i.nq to <4 x float>
  %i.ns = load float, ptr %.069161.i, align 4, !tbaa !59
  %i.nt = insertelement <4 x float> poison, float %i.ns, i64 0
  %i.nu = shufflevector <4 x float> %i.nt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nv = fmul fast <4 x float> %i.nu, %i.nr
  %i.nw = bitcast <4 x float> %i.nv to <4 x i32>
  %i.nx = lshr <4 x i32> %i.nw, splat (i32 16)
  %i.ny = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.nx, <4 x i32> poison)
  %i.nz = bitcast <8 x i16> %i.ny to <2 x i64>
  %i.oa = extractelement <2 x i64> %i.nz, i64 0
  store i64 %i.oa, ptr %.070160.i, align 1, !tbaa !54
  %i.ob = getelementptr inbounds nuw i8, ptr %.070160.i, i64 8 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.069161.i, i64 4
  %i.od = load i64, ptr %i.ob, align 1, !tbaa !54
  %i.oe = insertelement <2 x i64> poison, i64 %i.od, i64 0
  %i.of = bitcast <2 x i64> %i.oe to <8 x i16>
  %i.og = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.of, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.oh = bitcast <8 x i16> %i.og to <4 x float>
  %i.oi = load float, ptr %i.oc, align 4, !tbaa !59
  %i.oj = insertelement <4 x float> poison, float %i.oi, i64 0
  %i.ok = shufflevector <4 x float> %i.oj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ol = fmul fast <4 x float> %i.ok, %i.oh
  %i.om = bitcast <4 x float> %i.ol to <4 x i32>
  %i.on = lshr <4 x i32> %i.om, splat (i32 16)
end_hunk_7
begin_hunk_8_@_ZN4ncnnL26softmax_bf16s_sse_dispatchEPtiimiPfS1_:bb.a
  %index264 = phi i64 [ 0, %vector.ph261 ], [ %index.next274, %vector.body263 ] ; 3 uses
  %i.rf = shl i64 %index264, 1
  %next.gep265 = getelementptr i8, ptr %.1.lcssa.i85, i64 %i.rf ; 4 uses
  %i.rg = shl i64 %index264, 2
  %next.gep266 = getelementptr i8, ptr %.1154.lcssa.i, i64 %i.rg ; 5 uses
  %i.rh = getelementptr i8, ptr %next.gep265, i64 16
  %i.ri = getelementptr i8, ptr %next.gep265, i64 32
  %i.rj = getelementptr i8, ptr %next.gep265, i64 48
  %wide.load = load <8 x i16>, ptr %next.gep265, align 2, !tbaa !216
  %wide.load267 = load <8 x i16>, ptr %i.rh, align 2, !tbaa !216
  %wide.load268 = load <8 x i16>, ptr %i.ri, align 2, !tbaa !216
  %wide.load269 = load <8 x i16>, ptr %i.rj, align 2, !tbaa !216
  %i.rk = zext <8 x i16> %wide.load to <8 x i32>
  %i.rl = zext <8 x i16> %wide.load267 to <8 x i32>
  %i.rm = zext <8 x i16> %wide.load268 to <8 x i32>
  %i.rn = zext <8 x i16> %wide.load269 to <8 x i32>
  %i.ro = shl nuw <8 x i32> %i.rk, splat (i32 16)
  %i.rp = shl nuw <8 x i32> %i.rl, splat (i32 16)
  %i.rq = shl nuw <8 x i32> %i.rm, splat (i32 16)
  %i.rr = shl nuw <8 x i32> %i.rn, splat (i32 16)
  %i.rs = bitcast <8 x i32> %i.ro to <8 x float>  ; 2 uses
  %i.rt = bitcast <8 x i32> %i.rp to <8 x float>  ; 2 uses
  %i.ru = bitcast <8 x i32> %i.rq to <8 x float>  ; 2 uses
  %i.rv = bitcast <8 x i32> %i.rr to <8 x float>  ; 2 uses
  %i.rw = getelementptr i8, ptr %next.gep266, i64 32 ; 2 uses
  %i.rx = getelementptr i8, ptr %next.gep266, i64 64 ; 2 uses
  %i.ry = getelementptr i8, ptr %next.gep266, i64 96 ; 2 uses
  %wide.load270 = load <8 x float>, ptr %next.gep266, align 4, !tbaa !59 ; 2 uses
  %wide.load271 = load <8 x float>, ptr %i.rw, align 4, !tbaa !59 ; 2 uses
  %wide.load272 = load <8 x float>, ptr %i.rx, align 4, !tbaa !59 ; 2 uses
  %wide.load273 = load <8 x float>, ptr %i.ry, align 4, !tbaa !59 ; 2 uses
  %i.rz = fcmp fast olt <8 x float> %wide.load270, %i.rs
  %i.sa = fcmp fast olt <8 x float> %wide.load271, %i.rt
  %i.sb = fcmp fast olt <8 x float> %wide.load272, %i.ru
  %i.sc = fcmp fast olt <8 x float> %wide.load273, %i.rv
  %i.sd = select <8 x i1> %i.rz, <8 x float> %i.rs, <8 x float> %wide.load270
  %i.se = select <8 x i1> %i.sa, <8 x float> %i.rt, <8 x float> %wide.load271
  %i.sf = select <8 x i1> %i.sb, <8 x float> %i.ru, <8 x float> %wide.load272
  %i.sg = select <8 x i1> %i.sc, <8 x float> %i.rv, <8 x float> %wide.load273
  store <8 x float> %i.sd, ptr %next.gep266, align 4, !tbaa !59
  store <8 x float> %i.se, ptr %i.rw, align 4, !tbaa !59
  store <8 x float> %i.sf, ptr %i.rx, align 4, !tbaa !59
  store <8 x float> %i.sg, ptr %i.ry, align 4, !tbaa !59
  %index.next274 = add nuw i64 %index264, 32      ; 2 uses
  %i.sh = icmp eq i64 %index.next274, %n.vec262
  br i1 %i.sh, label %middle.block275, label %vector.body263, !llvm.loop !263

middle.block275:                                  ; preds = %vector.body263
  %cmp.n276 = icmp eq i64 %i.qx, %n.vec262
  br i1 %cmp.n276, label %._crit_edge.i86, label %vec.epilog.iter.check282

vec.epilog.iter.check282:                         ; preds = %middle.block275
  %min.epilog.iters.check283 = icmp eq i64 %i.qy, 0
  br i1 %min.epilog.iters.check283, label %.lr.ph280.i.preheader, label %vec.epilog.ph284, !prof !70

vec.epilog.ph284:                                 ; preds = %vector.main.loop.iter.check259, %vec.epilog.iter.check282
  %vec.epilog.resume.val277 = phi i64 [ %n.vec262, %vec.epilog.iter.check282 ], [ 0, %vector.main.loop.iter.check259 ]
  %n.vec285 = and i64 %i.qx, 8589934588           ; 5 uses
  %i.si = shl nuw nsw i64 %n.vec285, 1
  %i.sj = getelementptr i8, ptr %.1.lcssa.i85, i64 %i.si
  %i.sk = shl nuw nsw i64 %n.vec285, 2
  %i.sl = getelementptr i8, ptr %.1154.lcssa.i, i64 %i.sk
  %i.sm = trunc i64 %n.vec285 to i32
  %i.sn = add i32 %.1157.lcssa.i, %i.sm
  br label %vec.epilog.vector.body286

vec.epilog.vector.body286:                        ; preds = %vec.epilog.vector.body286, %vec.epilog.ph284
  %index287 = phi i64 [ %vec.epilog.resume.val277, %vec.epilog.ph284 ], [ %index.next292, %vec.epilog.vector.body286 ] ; 3 uses
  %i.so = shl i64 %index287, 1
  %next.gep288 = getelementptr i8, ptr %.1.lcssa.i85, i64 %i.so
  %i.sp = shl i64 %index287, 2
  %next.gep289 = getelementptr i8, ptr %.1154.lcssa.i, i64 %i.sp ; 2 uses
  %wide.load290 = load <4 x i16>, ptr %next.gep288, align 2, !tbaa !216
  %i.sq = zext <4 x i16> %wide.load290 to <4 x i32>
  %i.sr = shl nuw <4 x i32> %i.sq, splat (i32 16)
  %i.ss = bitcast <4 x i32> %i.sr to <4 x float>  ; 2 uses
  %wide.load291 = load <4 x float>, ptr %next.gep289, align 4, !tbaa !59 ; 2 uses
  %i.st = fcmp fast olt <4 x float> %wide.load291, %i.ss
  %i.su = select <4 x i1> %i.st, <4 x float> %i.ss, <4 x float> %wide.load291
  store <4 x float> %i.su, ptr %next.gep289, align 4, !tbaa !59
  %index.next292 = add nuw i64 %index287, 4       ; 2 uses
  %i.sv = icmp eq i64 %index.next292, %n.vec285
  br i1 %i.sv, label %vec.epilog.middle.block293, label %vec.epilog.vector.body286, !llvm.loop !264

vec.epilog.middle.block293:                       ; preds = %vec.epilog.vector.body286
  %cmp.n294 = icmp eq i64 %i.qx, %n.vec285
  br i1 %cmp.n294, label %._crit_edge.i86, label %.lr.ph280.i.preheader

.lr.ph280.i.preheader:                            ; preds = %iter.check280, %vec.epilog.iter.check282, %vec.epilog.middle.block293
  %.2279.i.ph = phi ptr [ %.1.lcssa.i85, %iter.check280 ], [ %i.ra, %vec.epilog.iter.check282 ], [ %i.sj, %vec.epilog.middle.block293 ]
  %.2155278.i.ph = phi ptr [ %.1154.lcssa.i, %iter.check280 ], [ %i.rc, %vec.epilog.iter.check282 ], [ %i.sl, %vec.epilog.middle.block293 ]
  %.2158277.i.ph = phi i32 [ %.1157.lcssa.i, %iter.check280 ], [ %i.re, %vec.epilog.iter.check282 ], [ %i.sn, %vec.epilog.middle.block293 ]
  br label %.lr.ph280.i

.lr.ph273.i:                                      ; preds = %.preheader264.i, %.lr.ph273.i
  %.1272.i = phi ptr [ %i.td, %.lr.ph273.i ], [ %.0136.lcssa.i, %.preheader264.i ] ; 2 uses
  %.1154271.i = phi ptr [ %i.te, %.lr.ph273.i ], [ %.0153.lcssa.i, %.preheader264.i ] ; 3 uses
  %.1157270.i = phi i32 [ %i.tf, %.lr.ph273.i ], [ %.0156.lcssa.i, %.preheader264.i ]
  %i.sw = load i64, ptr %.1272.i, align 1, !tbaa !54
  %i.sx = insertelement <2 x i64> poison, i64 %i.sw, i64 0
  %i.sy = bitcast <2 x i64> %i.sx to <8 x i16>
  %i.sz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ta = bitcast <8 x i16> %i.sz to <4 x float>
  %i.tb = load <4 x float>, ptr %.1154271.i, align 1, !tbaa !54
  %i.tc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.tb, <4 x float> nofpclass(nan inf) %i.ta)
  store <4 x float> %i.tc, ptr %.1154271.i, align 1, !tbaa !54
  %i.td = getelementptr inbounds nuw i8, ptr %.1272.i, i64 8 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.1154271.i, i64 16 ; 2 uses
  %i.tf = add nuw nsw i32 %.1157270.i, 4          ; 3 uses
  %i.tg = or disjoint i32 %i.tf, 3
  %i.th = icmp slt i32 %i.tg, %4
  br i1 %i.th, label %.lr.ph273.i, label %.preheader263.i, !llvm.loop !265

.lr.ph280.i:                                      ; preds = %.lr.ph280.i.preheader, %.lr.ph280.i
  %.2279.i = phi ptr [ %i.to, %.lr.ph280.i ], [ %.2279.i.ph, %.lr.ph280.i.preheader ] ; 2 uses
  %.2155278.i = phi ptr [ %i.tp, %.lr.ph280.i ], [ %.2155278.i.ph, %.lr.ph280.i.preheader ] ; 3 uses
  %.2158277.i = phi i32 [ %i.tq, %.lr.ph280.i ], [ %.2158277.i.ph, %.lr.ph280.i.preheader ]
  %i.ti = load i16, ptr %.2279.i, align 2, !tbaa !216
  %i.tj = zext i16 %i.ti to i32
  %i.tk = shl nuw i32 %i.tj, 16
  %i.tl = bitcast i32 %i.tk to float              ; 2 uses
  %i.tm = load float, ptr %.2155278.i, align 4, !tbaa !59 ; 2 uses
  %i.tn = fcmp fast olt float %i.tm, %i.tl
  %.sroa.speculated.i90 = select i1 %i.tn, float %i.tl, float %i.tm
  store float %.sroa.speculated.i90, ptr %.2155278.i, align 4, !tbaa !59
  %i.to = getelementptr inbounds nuw i8, ptr %.2279.i, i64 2
  %i.tp = getelementptr inbounds nuw i8, ptr %.2155278.i, i64 4
  %i.tq = add nuw nsw i32 %.2158277.i, 1          ; 2 uses
  %exitcond.not.i91 = icmp eq i32 %i.tq, %4
  br i1 %exitcond.not.i91, label %._crit_edge.i86, label %.lr.ph280.i, !llvm.loop !266

._crit_edge.i86:                                  ; preds = %.lr.ph280.i, %middle.block275, %vec.epilog.middle.block293, %.preheader263.i
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i84, 1 ; 2 uses
  %exitcond371.not.i = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i83
  br i1 %exitcond371.not.i, label %.preheader262.i, label %bb.i, !llvm.loop !267

.preheader259.i:                                  ; preds = %._crit_edge308.i, %bb.h
  br i1 %i.a, label %.lr.ph313.i.preheader, label %.preheader258.i

.lr.ph313.i.preheader:                            ; preds = %.preheader259.i
  %i.tr = add nsw i32 %4, -8                      ; 2 uses
  %i.ts = lshr i32 %i.tr, 3                       ; 2 uses
  %i.tt = add nuw nsw i32 %i.ts, 1                ; 2 uses
  %i.tu = icmp eq i32 %i.ts, 0
  br i1 %i.tu, label %.lr.ph313.i.epil.preheader, label %.lr.ph313.i.preheader.new

.lr.ph313.i.preheader.new:                        ; preds = %.lr.ph313.i.preheader
  %unroll_iter426 = and i32 %i.tt, 1073741822
  br label %.lr.ph313.i

.preheader262.i:                                  ; preds = %._crit_edge.i86, %._crit_edge308.i
  %indvars.iv373.i = phi i64 [ %indvars.iv.next374.i, %._crit_edge308.i ], [ 0, %._crit_edge.i86 ] ; 2 uses
  %i.tv = mul i64 %indvars.iv373.i, %3
  %i.tw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.tv ; 2 uses
  br i1 %i.a, label %.lr.ph289.i, label %.preheader261.i

.preheader261.i:                                  ; preds = %.lr.ph289.i, %.preheader262.i
  %.0169.lcssa.i = phi ptr [ %6, %.preheader262.i ], [ %i.vt, %.lr.ph289.i ] ; 2 uses
  %.0166.lcssa.i = phi i32 [ 0, %.preheader262.i ], [ %i.pi, %.lr.ph289.i ] ; 3 uses
  %.0163.lcssa.i = phi ptr [ %5, %.preheader262.i ], [ %i.vs, %.lr.ph289.i ] ; 2 uses
  %.0160.lcssa.i = phi ptr [ %i.tw, %.preheader262.i ], [ %i.vr, %.lr.ph289.i ] ; 2 uses
  %i.tx = or disjoint i32 %.0166.lcssa.i, 3
  %i.ty = icmp slt i32 %i.tx, %4
  br i1 %i.ty, label %.lr.ph298.i, label %.preheader260.i

.lr.ph289.i:                                      ; preds = %.preheader262.i, %.lr.ph289.i
  %.0160287.i = phi ptr [ %i.vr, %.lr.ph289.i ], [ %i.tw, %.preheader262.i ] ; 3 uses
  %.0163286.i = phi ptr [ %i.vs, %.lr.ph289.i ], [ %5, %.preheader262.i ] ; 2 uses
  %.0166285.i = phi i32 [ %i.vu, %.lr.ph289.i ], [ 0, %.preheader262.i ]
  %.0169284.i = phi ptr [ %i.vt, %.lr.ph289.i ], [ %6, %.preheader262.i ] ; 3 uses
  %i.tz = load <8 x i16>, ptr %.0160287.i, align 1, !tbaa !54 ; 2 uses
  %i.ua = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ub = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.tz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.uc = shufflevector <8 x i16> %i.ua, <8 x i16> %i.ub, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ud = bitcast <16 x i16> %i.uc to <8 x float>
  %i.ue = load <8 x float>, ptr %.0163286.i, align 1, !tbaa !54
  %i.uf = load <8 x float>, ptr %.0169284.i, align 1, !tbaa !54
  %i.ug = fsub fast <8 x float> %i.ud, %i.ue
  %i.uh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ug, <8 x float> splat (float f0x42B0C0A5))
  %i.ui = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.uh, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.uj = fmul fast <8 x float> %i.ui, splat (float f0x3FB8AA3B)
  %i.uk = fadd fast <8 x float> %i.uj, splat (float 5.000000e-01) ; 2 uses
  %i.ul = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.uk, i32 1) ; 2 uses
  %i.um = fcmp fast ogt <8 x float> %i.ul, %i.uk
  %i.un = select <8 x i1> %i.um, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.uo = fsub fast <8 x float> %i.ul, %i.un      ; 2 uses
  %i.up = fmul fast <8 x float> %i.uo, splat (float f0x3F317218)
  %i.uq = fsub fast <8 x float> %i.ui, %i.up      ; 8 uses
  %i.ur = fmul fast <8 x float> %i.uq, %i.uq
  %i.us = fmul fast <8 x float> %i.uq, splat (float f0x39506967)
  %i.ut = fadd fast <8 x float> %i.us, splat (float f0x3AB743CE)
  %i.uu = fmul fast <8 x float> %i.ut, %i.uq
  %i.uv = fadd fast <8 x float> %i.uu, splat (float f0x3C088908)
  %i.uw = fmul fast <8 x float> %i.uv, %i.uq
  %i.ux = fadd fast <8 x float> %i.uw, splat (float f0x3D2AA9C1)
  %i.uy = fmul fast <8 x float> %i.ux, %i.uq
  %i.uz = fadd fast <8 x float> %i.uy, splat (float f0x3E2AAAAA)
  %i.va = fmul fast <8 x float> %i.uz, %i.uq
  %i.vb = fadd fast <8 x float> %i.va, splat (float 5.000000e-01)
  %i.vc = fmul fast <8 x float> %i.ur, %i.vb
  %i.vd = fadd fast <8 x float> %i.uq, %i.vc
  %i.ve = fadd fast <8 x float> %i.vd, splat (float 1.000000e+00)
  %i.vf = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.uo)
  %i.vg = shl <8 x i32> %i.vf, splat (i32 23)
  %i.vh = add <8 x i32> %i.vg, splat (i32 1065353216)
  %i.vi = bitcast <8 x i32> %i.vh to <8 x float>
  %i.vj = fmul fast <8 x float> %i.ve, %i.vi      ; 2 uses
  %i.vk = bitcast <8 x float> %i.vj to <8 x i32>  ; 2 uses
  %i.vl = shufflevector <8 x i32> %i.vk, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vm = shufflevector <8 x i32> %i.vk, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.vn = lshr <4 x i32> %i.vl, splat (i32 16)
  %i.vo = lshr <4 x i32> %i.vm, splat (i32 16)
  %i.vp = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.vn, <4 x i32> %i.vo)
  store <8 x i16> %i.vp, ptr %.0160287.i, align 1, !tbaa !54
  %i.vq = fadd fast <8 x float> %i.vj, %i.uf
  store <8 x float> %i.vq, ptr %.0169284.i, align 1, !tbaa !54
  %i.vr = getelementptr inbounds nuw i8, ptr %.0160287.i, i64 16 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %.0163286.i, i64 32 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.0169284.i, i64 32 ; 2 uses
  %i.vu = add nuw nsw i32 %.0166285.i, 8          ; 2 uses
  %i.vv = or disjoint i32 %i.vu, 7
  %i.vw = icmp slt i32 %i.vv, %4
  br i1 %i.vw, label %.lr.ph289.i, label %.preheader261.i, !llvm.loop !268

.preheader260.i:                                  ; preds = %.lr.ph298.i, %.preheader261.i
  %.1170.lcssa.i = phi ptr [ %.0169.lcssa.i, %.preheader261.i ], [ %i.zl, %.lr.ph298.i ] ; 6 uses
  %.1167.lcssa.i = phi i32 [ %.0166.lcssa.i, %.preheader261.i ], [ %i.zm, %.lr.ph298.i ] ; 6 uses
  %.1164.lcssa.i = phi ptr [ %.0163.lcssa.i, %.preheader261.i ], [ %i.zk, %.lr.ph298.i ] ; 6 uses
  %.1161.lcssa.i = phi ptr [ %.0160.lcssa.i, %.preheader261.i ], [ %i.zj, %.lr.ph298.i ] ; 4 uses
  %i.vx = icmp slt i32 %.1167.lcssa.i, %4
  br i1 %i.vx, label %.lr.ph307.i.preheader, label %._crit_edge308.i

.lr.ph307.i.preheader:                            ; preds = %.preheader260.i
  %i.vy = xor i32 %.1167.lcssa.i, -1
  %i.vz = add i32 %4, %i.vy                       ; 2 uses
  %i.wa = zext i32 %i.vz to i64
  %i.wb = add nuw nsw i64 %i.wa, 1                ; 2 uses
  %min.iters.check302 = icmp ult i32 %i.vz, 7
  br i1 %min.iters.check302, label %.lr.ph307.i.preheader393, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph307.i.preheader
  %scevgep298 = getelementptr i8, ptr %.1170.lcssa.i, i64 4
  %i.wc = xor i32 %.1167.lcssa.i, -1
  %i.wd = add i32 %4, %i.wc
  %i.we = zext i32 %i.wd to i64
  %i.wf = shl nuw nsw i64 %i.we, 2                ; 2 uses
  %scevgep299 = getelementptr i8, ptr %scevgep298, i64 %i.wf
  %scevgep300 = getelementptr i8, ptr %.1164.lcssa.i, i64 4
  %scevgep301 = getelementptr i8, ptr %scevgep300, i64 %i.wf
  %bound0 = icmp ult ptr %.1170.lcssa.i, %scevgep301
  %bound1 = icmp ult ptr %.1164.lcssa.i, %scevgep299
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph307.i.preheader393, label %vector.ph303

vector.ph303:                                     ; preds = %vector.memcheck
  %n.vec304 = and i64 %i.wb, 8589934584           ; 5 uses
  %i.wg = shl nuw nsw i64 %n.vec304, 1
  %i.wh = getelementptr i8, ptr %.1161.lcssa.i, i64 %i.wg
  %i.wi = shl nuw nsw i64 %n.vec304, 2            ; 2 uses
  %i.wj = getelementptr i8, ptr %.1164.lcssa.i, i64 %i.wi
  %i.wk = trunc i64 %n.vec304 to i32
  %i.wl = add i32 %.1167.lcssa.i, %i.wk
  %i.wm = getelementptr i8, ptr %.1170.lcssa.i, i64 %i.wi
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph303
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next313, %vector.body305 ] ; 3 uses
  %i.wn = shl i64 %index306, 1
  %next.gep307 = getelementptr i8, ptr %.1161.lcssa.i, i64 %i.wn ; 2 uses
  %i.wo = shl i64 %index306, 2                    ; 2 uses
  %next.gep308 = getelementptr i8, ptr %.1164.lcssa.i, i64 %i.wo
  %next.gep309 = getelementptr i8, ptr %.1170.lcssa.i, i64 %i.wo ; 2 uses
  %wide.load310 = load <8 x i16>, ptr %next.gep307, align 2, !tbaa !216
  %i.wp = zext <8 x i16> %wide.load310 to <8 x i32>
  %i.wq = shl nuw <8 x i32> %i.wp, splat (i32 16)
  %i.wr = bitcast <8 x i32> %i.wq to <8 x float>
  %wide.load311 = load <8 x float>, ptr %next.gep308, align 4, !tbaa !59, !alias.scope !269
  %i.ws = fsub fast <8 x float> %i.wr, %wide.load311
  %i.wt = tail call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.ws) ; 2 uses
  %i.wu = bitcast <8 x float> %i.wt to <8 x i32>
  %i.wv = lshr <8 x i32> %i.wu, splat (i32 16)
  %i.ww = trunc nuw nsw <8 x i32> %i.wv to <8 x i16>
  store <8 x i16> %i.ww, ptr %next.gep307, align 2, !tbaa !216
  %wide.load312 = load <8 x float>, ptr %next.gep309, align 4, !tbaa !59, !alias.scope !272, !noalias !269
  %i.wx = fadd fast <8 x float> %i.wt, %wide.load312
  store <8 x float> %i.wx, ptr %next.gep309, align 4, !tbaa !59, !alias.scope !272, !noalias !269
  %index.next313 = add nuw i64 %index306, 8       ; 2 uses
  %i.wy = icmp eq i64 %index.next313, %n.vec304
  br i1 %i.wy, label %middle.block314, label %vector.body305, !llvm.loop !274

middle.block314:                                  ; preds = %vector.body305
  %cmp.n315 = icmp eq i64 %i.wb, %n.vec304
  br i1 %cmp.n315, label %._crit_edge308.i, label %.lr.ph307.i.preheader393

.lr.ph307.i.preheader393:                         ; preds = %vector.memcheck, %.lr.ph307.i.preheader, %middle.block314
  %.2162306.i.ph = phi ptr [ %.1161.lcssa.i, %vector.memcheck ], [ %.1161.lcssa.i, %.lr.ph307.i.preheader ], [ %i.wh, %middle.block314 ] ; 4 uses
  %.2165305.i.ph = phi ptr [ %.1164.lcssa.i, %vector.memcheck ], [ %.1164.lcssa.i, %.lr.ph307.i.preheader ], [ %i.wj, %middle.block314 ] ; 3 uses
  %.2168304.i.ph = phi i32 [ %.1167.lcssa.i, %vector.memcheck ], [ %.1167.lcssa.i, %.lr.ph307.i.preheader ], [ %i.wl, %middle.block314 ] ; 4 uses
  %.2171303.i.ph = phi ptr [ %.1170.lcssa.i, %vector.memcheck ], [ %.1170.lcssa.i, %.lr.ph307.i.preheader ], [ %i.wm, %middle.block314 ] ; 4 uses
  %i.wz = sub i32 %4, %.2168304.i.ph
  %.neg = add i32 %.2168304.i.ph, 1
  %xtraiter419 = and i32 %i.wz, 1
  %lcmp.mod420.not = icmp eq i32 %xtraiter419, 0
  br i1 %lcmp.mod420.not, label %.lr.ph307.i.prol.loopexit, label %.lr.ph307.i.prol

.lr.ph307.i.prol:                                 ; preds = %.lr.ph307.i.preheader393
  %i.xa = load i16, ptr %.2162306.i.ph, align 2, !tbaa !216
  %i.xb = zext i16 %i.xa to i32
  %i.xc = shl nuw i32 %i.xb, 16
  %i.xd = bitcast i32 %i.xc to float
  %i.xe = load float, ptr %.2165305.i.ph, align 4, !tbaa !59
  %i.xf = fsub fast float %i.xd, %i.xe
  %i.xg = tail call fast float @llvm.exp.f32(float %i.xf) ; 2 uses
  %i.xh = bitcast float %i.xg to i32
  %i.xi = lshr i32 %i.xh, 16
  %i.xj = trunc nuw nsw i32 %i.xi to i16
  store i16 %i.xj, ptr %.2162306.i.ph, align 2, !tbaa !216
  %i.xk = load float, ptr %.2171303.i.ph, align 4, !tbaa !59
  %i.xl = fadd fast float %i.xg, %i.xk
  store float %i.xl, ptr %.2171303.i.ph, align 4, !tbaa !59
  %i.xm = getelementptr inbounds nuw i8, ptr %.2162306.i.ph, i64 2
  %i.xn = getelementptr inbounds nuw i8, ptr %.2165305.i.ph, i64 4
  %i.xo = getelementptr inbounds nuw i8, ptr %.2171303.i.ph, i64 4
  %i.xp = add nuw nsw i32 %.2168304.i.ph, 1
  br label %.lr.ph307.i.prol.loopexit

.lr.ph307.i.prol.loopexit:                        ; preds = %.lr.ph307.i.prol, %.lr.ph307.i.preheader393
  %.2162306.i.unr = phi ptr [ %.2162306.i.ph, %.lr.ph307.i.preheader393 ], [ %i.xm, %.lr.ph307.i.prol ]
  %.2165305.i.unr = phi ptr [ %.2165305.i.ph, %.lr.ph307.i.preheader393 ], [ %i.xn, %.lr.ph307.i.prol ]
  %.2168304.i.unr = phi i32 [ %.2168304.i.ph, %.lr.ph307.i.preheader393 ], [ %i.xp, %.lr.ph307.i.prol ]
  %.2171303.i.unr = phi ptr [ %.2171303.i.ph, %.lr.ph307.i.preheader393 ], [ %i.xo, %.lr.ph307.i.prol ]
  %i.xq = icmp eq i32 %4, %.neg
  br i1 %i.xq, label %._crit_edge308.i, label %.lr.ph307.i

.lr.ph298.i:                                      ; preds = %.preheader261.i, %.lr.ph298.i
  %.1161297.i = phi ptr [ %i.zj, %.lr.ph298.i ], [ %.0160.lcssa.i, %.preheader261.i ] ; 3 uses
  %.1164296.i = phi ptr [ %i.zk, %.lr.ph298.i ], [ %.0163.lcssa.i, %.preheader261.i ] ; 2 uses
  %.1167295.i = phi i32 [ %i.zm, %.lr.ph298.i ], [ %.0166.lcssa.i, %.preheader261.i ]
  %.1170294.i = phi ptr [ %i.zl, %.lr.ph298.i ], [ %.0169.lcssa.i, %.preheader261.i ] ; 3 uses
  %i.xr = load i64, ptr %.1161297.i, align 1, !tbaa !54
  %i.xs = insertelement <2 x i64> poison, i64 %i.xr, i64 0
  %i.xt = bitcast <2 x i64> %i.xs to <8 x i16>
  %i.xu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xv = bitcast <8 x i16> %i.xu to <4 x float>
  %i.xw = load <4 x float>, ptr %.1164296.i, align 1, !tbaa !54
  %i.xx = load <4 x float>, ptr %.1170294.i, align 1, !tbaa !54
  %i.xy = fsub fast <4 x float> %i.xv, %i.xw
  %i.xz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.xy, <4 x float> splat (float f0x42B0C0A5))
  %i.ya = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.yb = fmul fast <4 x float> %i.ya, splat (float f0x3FB8AA3B)
  %i.yc = fadd fast <4 x float> %i.yb, splat (float 5.000000e-01) ; 2 uses
  %i.yd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yc)
  %i.ye = sitofp fast <4 x i32> %i.yd to <4 x float> ; 2 uses
  %i.yf = fcmp fast olt <4 x float> %i.yc, %i.ye
  %i.yg = select <4 x i1> %i.yf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.yh = fsub fast <4 x float> %i.ye, %i.yg      ; 2 uses
  %i.yi = fmul fast <4 x float> %i.yh, splat (float f0x3F317218)
  %i.yj = fsub fast <4 x float> %i.ya, %i.yi      ; 8 uses
  %i.yk = fmul fast <4 x float> %i.yj, %i.yj
  %i.yl = fmul fast <4 x float> %i.yj, splat (float f0x39506967)
  %i.ym = fadd fast <4 x float> %i.yl, splat (float f0x3AB743CE)
  %i.yn = fmul fast <4 x float> %i.ym, %i.yj
  %i.yo = fadd fast <4 x float> %i.yn, splat (float f0x3C088908)
  %i.yp = fmul fast <4 x float> %i.yo, %i.yj
  %i.yq = fadd fast <4 x float> %i.yp, splat (float f0x3D2AA9C1)
  %i.yr = fmul fast <4 x float> %i.yq, %i.yj
  %i.ys = fadd fast <4 x float> %i.yr, splat (float f0x3E2AAAAA)
  %i.yt = fmul fast <4 x float> %i.ys, %i.yj
  %i.yu = fadd fast <4 x float> %i.yt, splat (float 5.000000e-01)
  %i.yv = fmul fast <4 x float> %i.yk, %i.yu
  %i.yw = fadd fast <4 x float> %i.yj, %i.yv
  %i.yx = fadd fast <4 x float> %i.yw, splat (float 1.000000e+00)
  %i.yy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yh)
  %i.yz = shl <4 x i32> %i.yy, splat (i32 23)
  %i.za = add <4 x i32> %i.yz, splat (i32 1065353216)
  %i.zb = bitcast <4 x i32> %i.za to <4 x float>
  %i.zc = fmul fast <4 x float> %i.yx, %i.zb      ; 2 uses
  %i.zd = bitcast <4 x float> %i.zc to <4 x i32>
  %i.ze = lshr <4 x i32> %i.zd, splat (i32 16)
  %i.zf = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ze, <4 x i32> poison)
  %i.zg = bitcast <8 x i16> %i.zf to <2 x i64>
  %i.zh = extractelement <2 x i64> %i.zg, i64 0
  store i64 %i.zh, ptr %.1161297.i, align 1, !tbaa !54
  %i.zi = fadd fast <4 x float> %i.zc, %i.xx
  store <4 x float> %i.zi, ptr %.1170294.i, align 1, !tbaa !54
  %i.zj = getelementptr inbounds nuw i8, ptr %.1161297.i, i64 8 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.1164296.i, i64 16 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.1170294.i, i64 16 ; 2 uses
  %i.zm = add nuw nsw i32 %.1167295.i, 4          ; 3 uses
  %i.zn = or disjoint i32 %i.zm, 3
  %i.zo = icmp slt i32 %i.zn, %4
  br i1 %i.zo, label %.lr.ph298.i, label %.preheader260.i, !llvm.loop !275

.lr.ph307.i:                                      ; preds = %.lr.ph307.i.prol.loopexit, %.lr.ph307.i
  %.2162306.i = phi ptr [ %i.aaq, %.lr.ph307.i ], [ %.2162306.i.unr, %.lr.ph307.i.prol.loopexit ] ; 4 uses
  %.2165305.i = phi ptr [ %i.aar, %.lr.ph307.i ], [ %.2165305.i.unr, %.lr.ph307.i.prol.loopexit ] ; 3 uses
  %.2168304.i = phi i32 [ %i.aat, %.lr.ph307.i ], [ %.2168304.i.unr, %.lr.ph307.i.prol.loopexit ]
  %.2171303.i = phi ptr [ %i.aas, %.lr.ph307.i ], [ %.2171303.i.unr, %.lr.ph307.i.prol.loopexit ] ; 4 uses
  %i.zp = load i16, ptr %.2162306.i, align 2, !tbaa !216
  %i.zq = zext i16 %i.zp to i32
  %i.zr = shl nuw i32 %i.zq, 16
  %i.zs = bitcast i32 %i.zr to float
  %i.zt = load float, ptr %.2165305.i, align 4, !tbaa !59
  %i.zu = fsub fast float %i.zs, %i.zt
  %i.zv = tail call fast float @llvm.exp.f32(float %i.zu) ; 2 uses
  %i.zw = bitcast float %i.zv to i32
  %i.zx = lshr i32 %i.zw, 16
  %i.zy = trunc nuw nsw i32 %i.zx to i16
  store i16 %i.zy, ptr %.2162306.i, align 2, !tbaa !216
  %i.zz = load float, ptr %.2171303.i, align 4, !tbaa !59
  %i.aaa = fadd fast float %i.zv, %i.zz
  store float %i.aaa, ptr %.2171303.i, align 4, !tbaa !59
  %i.aab = getelementptr inbounds nuw i8, ptr %.2162306.i, i64 2 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %.2165305.i, i64 4
  %i.aad = getelementptr inbounds nuw i8, ptr %.2171303.i, i64 4 ; 2 uses
  %i.aae = load i16, ptr %i.aab, align 2, !tbaa !216
  %i.aaf = zext i16 %i.aae to i32
  %i.aag = shl nuw i32 %i.aaf, 16
  %i.aah = bitcast i32 %i.aag to float
  %i.aai = load float, ptr %i.aac, align 4, !tbaa !59
  %i.aaj = fsub fast float %i.aah, %i.aai
  %i.aak = tail call fast float @llvm.exp.f32(float %i.aaj) ; 2 uses
  %i.aal = bitcast float %i.aak to i32
  %i.aam = lshr i32 %i.aal, 16
  %i.aan = trunc nuw nsw i32 %i.aam to i16
  store i16 %i.aan, ptr %i.aab, align 2, !tbaa !216
  %i.aao = load float, ptr %i.aad, align 4, !tbaa !59
  %i.aap = fadd fast float %i.aak, %i.aao
  store float %i.aap, ptr %i.aad, align 4, !tbaa !59
  %i.aaq = getelementptr inbounds nuw i8, ptr %.2162306.i, i64 4
  %i.aar = getelementptr inbounds nuw i8, ptr %.2165305.i, i64 8
  %i.aas = getelementptr inbounds nuw i8, ptr %.2171303.i, i64 8
  %i.aat = add nuw nsw i32 %.2168304.i, 2         ; 2 uses
  %exitcond372.not.i.1 = icmp eq i32 %i.aat, %4
  br i1 %exitcond372.not.i.1, label %._crit_edge308.i, label %.lr.ph307.i, !llvm.loop !276

._crit_edge308.i:                                 ; preds = %.lr.ph307.i.prol.loopexit, %.lr.ph307.i, %middle.block314, %.preheader260.i
  %indvars.iv.next374.i = add nuw nsw i64 %indvars.iv373.i, 1 ; 2 uses
  %exitcond377.not.i = icmp eq i64 %indvars.iv.next374.i, %wide.trip.count.i83
  br i1 %exitcond377.not.i, label %.preheader259.i, label %.preheader262.i, !llvm.loop !277

.preheader258.loopexit.i.unr-lcssa:               ; preds = %.lr.ph313.i
  %i.aau = and i32 %i.tr, 8
  %lcmp.mod423.not.not = icmp eq i32 %i.aau, 0
  br i1 %lcmp.mod423.not.not, label %.lr.ph313.i.epil.preheader, label %.preheader258.loopexit.i

.lr.ph313.i.epil.preheader:                       ; preds = %.preheader258.loopexit.i.unr-lcssa, %.lr.ph313.i.preheader
  %.0150311.i.epil.init = phi ptr [ %6, %.lr.ph313.i.preheader ], [ %i.abp, %.preheader258.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod425 = trunc i32 %i.tt to i1
  tail call void @llvm.assume(i1 %lcmp.mod425)
  %i.aav = load <8 x float>, ptr %.0150311.i.epil.init, align 1, !tbaa !54 ; 2 uses
  %i.aaw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.aav) ; 2 uses
  %i.aax = fmul fast <8 x float> %i.aaw, %i.aav
  %i.aay = fsub fast <8 x float> splat (float 2.000000e+00), %i.aax
  %i.aaz = fmul fast <8 x float> %i.aay, %i.aaw
  store <8 x float> %i.aaz, ptr %.0150311.i.epil.init, align 1, !tbaa !54
  %i.aba = getelementptr inbounds nuw i8, ptr %.0150311.i.epil.init, i64 32
  br label %.preheader258.loopexit.i

.preheader258.loopexit.i:                         ; preds = %.preheader258.loopexit.i.unr-lcssa, %.lr.ph313.i.epil.preheader
  %.lcssa392 = phi ptr [ %i.abp, %.preheader258.loopexit.i.unr-lcssa ], [ %i.aba, %.lr.ph313.i.epil.preheader ]
  %i.abb = and i32 %4, 2147483640
  br label %.preheader258.i

.preheader258.i:                                  ; preds = %.preheader258.loopexit.i, %.preheader259.i
  %.0150.lcssa.i = phi ptr [ %6, %.preheader259.i ], [ %.lcssa392, %.preheader258.loopexit.i ] ; 2 uses
  %.0147.lcssa.i = phi i32 [ 0, %.preheader259.i ], [ %i.abb, %.preheader258.loopexit.i ] ; 3 uses
  %i.abc = or disjoint i32 %.0147.lcssa.i, 3
  %i.abd = icmp slt i32 %i.abc, %4
  br i1 %i.abd, label %.lr.ph318.i, label %.preheader257.i

.lr.ph313.i:                                      ; preds = %.lr.ph313.i, %.lr.ph313.i.preheader.new
  %.0150311.i = phi ptr [ %6, %.lr.ph313.i.preheader.new ], [ %i.abp, %.lr.ph313.i ] ; 4 uses
  %niter427 = phi i32 [ 0, %.lr.ph313.i.preheader.new ], [ %niter427.next.1, %.lr.ph313.i ]
  %i.abe = load <8 x float>, ptr %.0150311.i, align 1, !tbaa !54 ; 2 uses
  %i.abf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.abe) ; 2 uses
  %i.abg = fmul fast <8 x float> %i.abf, %i.abe
  %i.abh = fsub fast <8 x float> splat (float 2.000000e+00), %i.abg
  %i.abi = fmul fast <8 x float> %i.abh, %i.abf
  store <8 x float> %i.abi, ptr %.0150311.i, align 1, !tbaa !54
  %i.abj = getelementptr inbounds nuw i8, ptr %.0150311.i, i64 32 ; 2 uses
  %i.abk = load <8 x float>, ptr %i.abj, align 1, !tbaa !54 ; 2 uses
  %i.abl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.abk) ; 2 uses
  %i.abm = fmul fast <8 x float> %i.abl, %i.abk
  %i.abn = fsub fast <8 x float> splat (float 2.000000e+00), %i.abm
  %i.abo = fmul fast <8 x float> %i.abn, %i.abl
  store <8 x float> %i.abo, ptr %i.abj, align 1, !tbaa !54
  %i.abp = getelementptr inbounds nuw i8, ptr %.0150311.i, i64 64 ; 3 uses
  %niter427.next.1 = add i32 %niter427, 2         ; 2 uses
  %niter427.ncmp.1.not = icmp eq i32 %niter427.next.1, %unroll_iter426
  br i1 %niter427.ncmp.1.not, label %.preheader258.loopexit.i.unr-lcssa, label %.lr.ph313.i, !llvm.loop !278

.preheader257.i:                                  ; preds = %.lr.ph318.i, %.preheader258.i
  %.1151.lcssa.i = phi ptr [ %.0150.lcssa.i, %.preheader258.i ], [ %i.ach, %.lr.ph318.i ] ; 3 uses
  %.1148.lcssa.i = phi i32 [ %.0147.lcssa.i, %.preheader258.i ], [ %i.aci, %.lr.ph318.i ] ; 4 uses
  %i.abq = icmp slt i32 %.1148.lcssa.i, %4
  br i1 %i.abq, label %.lr.ph323.i.preheader, label %.preheader256.i

.lr.ph323.i.preheader:                            ; preds = %.preheader257.i
  %i.abr = xor i32 %.1148.lcssa.i, -1
  %i.abs = add i32 %4, %i.abr                     ; 2 uses
  %i.abt = zext i32 %i.abs to i64
  %i.abu = add nuw nsw i64 %i.abt, 1              ; 2 uses
  %min.iters.check320 = icmp ult i32 %i.abs, 7
  br i1 %min.iters.check320, label %.lr.ph323.i.preheader389, label %vector.ph321

vector.ph321:                                     ; preds = %.lr.ph323.i.preheader
  %n.vec322 = and i64 %i.abu, 8589934584          ; 4 uses
  %i.abv = trunc i64 %n.vec322 to i32
  %i.abw = add i32 %.1148.lcssa.i, %i.abv
  %i.abx = shl nuw nsw i64 %n.vec322, 2
  %i.aby = getelementptr i8, ptr %.1151.lcssa.i, i64 %i.abx
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph321
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next327, %vector.body323 ] ; 2 uses
  %i.abz = shl i64 %index324, 2
  %next.gep325 = getelementptr i8, ptr %.1151.lcssa.i, i64 %i.abz ; 2 uses
  %wide.load326 = load <8 x float>, ptr %next.gep325, align 4, !tbaa !59
  %i.aca = fdiv fast <8 x float> splat (float 1.000000e+00), %wide.load326
  store <8 x float> %i.aca, ptr %next.gep325, align 4, !tbaa !59
  %index.next327 = add nuw i64 %index324, 8       ; 2 uses
  %i.acb = icmp eq i64 %index.next327, %n.vec322
  br i1 %i.acb, label %middle.block328, label %vector.body323, !llvm.loop !279

middle.block328:                                  ; preds = %vector.body323
  %cmp.n329 = icmp eq i64 %i.abu, %n.vec322
  br i1 %cmp.n329, label %.preheader256.i, label %.lr.ph323.i.preheader389

.lr.ph323.i.preheader389:                         ; preds = %.lr.ph323.i.preheader, %middle.block328
  %.2149322.i.ph = phi i32 [ %.1148.lcssa.i, %.lr.ph323.i.preheader ], [ %i.abw, %middle.block328 ]
  %.2152321.i.ph = phi ptr [ %.1151.lcssa.i, %.lr.ph323.i.preheader ], [ %i.aby, %middle.block328 ]
  br label %.lr.ph323.i

.lr.ph318.i:                                      ; preds = %.preheader258.i, %.lr.ph318.i
  %.1148317.i = phi i32 [ %i.aci, %.lr.ph318.i ], [ %.0147.lcssa.i, %.preheader258.i ]
  %.1151316.i = phi ptr [ %i.ach, %.lr.ph318.i ], [ %.0150.lcssa.i, %.preheader258.i ] ; 3 uses
  %i.acc = load <4 x float>, ptr %.1151316.i, align 1, !tbaa !54 ; 2 uses
  %i.acd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.acc) ; 2 uses
  %i.ace = fmul fast <4 x float> %i.acd, %i.acc
  %i.acf = fsub fast <4 x float> splat (float 2.000000e+00), %i.ace
  %i.acg = fmul fast <4 x float> %i.acf, %i.acd
  store <4 x float> %i.acg, ptr %.1151316.i, align 1, !tbaa !54
  %i.ach = getelementptr inbounds nuw i8, ptr %.1151316.i, i64 16 ; 2 uses
  %i.aci = add nuw nsw i32 %.1148317.i, 4         ; 3 uses
  %i.acj = or disjoint i32 %i.aci, 3
  %i.ack = icmp slt i32 %i.acj, %4
  br i1 %i.ack, label %.lr.ph318.i, label %.preheader257.i, !llvm.loop !280

.preheader256.i:                                  ; preds = %.lr.ph323.i, %middle.block328, %.preheader257.i
  br i1 %i.ph, label %.lr.ph345.i, label %_ZN4ncnnL23softmax_bf16s_pack8_sseEPtimiPfS1_.exit

.lr.ph345.i:                                      ; preds = %.preheader256.i
  %i.acl = and i32 %4, -8
  %wide.trip.count383.i = zext nneg i32 %1 to i64
  br label %bb.j

.lr.ph323.i:                                      ; preds = %.lr.ph323.i.preheader389, %.lr.ph323.i
  %.2149322.i = phi i32 [ %i.acp, %.lr.ph323.i ], [ %.2149322.i.ph, %.lr.ph323.i.preheader389 ]
  %.2152321.i = phi ptr [ %i.aco, %.lr.ph323.i ], [ %.2152321.i.ph, %.lr.ph323.i.preheader389 ] ; 3 uses
  %i.acm = load float, ptr %.2152321.i, align 4, !tbaa !59
  %i.acn = fdiv fast float 1.000000e+00, %i.acm
  store float %i.acn, ptr %.2152321.i, align 4, !tbaa !59
  %i.aco = getelementptr inbounds nuw i8, ptr %.2152321.i, i64 4
  %i.acp = add nuw nsw i32 %.2149322.i, 1         ; 2 uses
  %exitcond378.not.i = icmp eq i32 %i.acp, %4
  br i1 %exitcond378.not.i, label %.preheader256.i, label %.lr.ph323.i, !llvm.loop !281

bb.j:                                             ; preds = %._crit_edge343.i, %.lr.ph345.i
  %indvars.iv380.i = phi i64 [ 0, %.lr.ph345.i ], [ %indvars.iv.next381.i, %._crit_edge343.i ] ; 2 uses
  %i.acq = mul i64 %indvars.iv380.i, %3
  %i.acr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.acq ; 2 uses
end_hunk_8
begin_hunk_9_@_ZNK4ncnn15Softmax_x86_avx21forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.10:bb.a
  %vec.phi164 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph157 ], [ %i.ck, %vector.body159 ]
  %i.br = shl i64 %index160, 1
  %next.gep165 = getelementptr i8, ptr %.177.lcssa.i, i64 %i.br ; 4 uses
  %i.bs = getelementptr i8, ptr %next.gep165, i64 16
  %i.bt = getelementptr i8, ptr %next.gep165, i64 32
  %i.bu = getelementptr i8, ptr %next.gep165, i64 48
  %wide.load166 = load <8 x i16>, ptr %next.gep165, align 2, !tbaa !216
  %wide.load167 = load <8 x i16>, ptr %i.bs, align 2, !tbaa !216
  %wide.load168 = load <8 x i16>, ptr %i.bt, align 2, !tbaa !216
  %wide.load169 = load <8 x i16>, ptr %i.bu, align 2, !tbaa !216
  %i.bv = zext <8 x i16> %wide.load166 to <8 x i32>
  %i.bw = zext <8 x i16> %wide.load167 to <8 x i32>
  %i.bx = zext <8 x i16> %wide.load168 to <8 x i32>
  %i.by = zext <8 x i16> %wide.load169 to <8 x i32>
  %i.bz = shl nuw <8 x i32> %i.bv, splat (i32 16)
  %i.ca = shl nuw <8 x i32> %i.bw, splat (i32 16)
  %i.cb = shl nuw <8 x i32> %i.bx, splat (i32 16)
  %i.cc = shl nuw <8 x i32> %i.by, splat (i32 16)
  %i.cd = bitcast <8 x i32> %i.bz to <8 x float>
  %i.ce = bitcast <8 x i32> %i.ca to <8 x float>
  %i.cf = bitcast <8 x i32> %i.cb to <8 x float>
  %i.cg = bitcast <8 x i32> %i.cc to <8 x float>
  %i.ch = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi161, <8 x float> %i.cd) ; 2 uses
  %i.ci = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi162, <8 x float> %i.ce) ; 2 uses
  %i.cj = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi163, <8 x float> %i.cf) ; 2 uses
  %i.ck = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi164, <8 x float> %i.cg) ; 2 uses
  %index.next170 = add nuw i64 %index160, 32      ; 2 uses
  %i.cl = icmp eq i64 %index.next170, %n.vec158
  br i1 %i.cl, label %middle.block171, label %vector.body159, !llvm.loop !302

middle.block171:                                  ; preds = %vector.body159
  %rdx.minmax.select = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ch, <8 x float> %i.ci)
  %rdx.minmax.select173 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.cj)
  %rdx.minmax.select175 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select173, <8 x float> %i.ck)
  %i.cm = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select175) ; 3 uses
  %cmp.n176 = icmp eq i64 %i.bl, %n.vec158
  br i1 %cmp.n176, label %._crit_edge.i, label %vec.epilog.iter.check182

vec.epilog.iter.check182:                         ; preds = %middle.block171
  %min.epilog.iters.check183 = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check183, label %.lr.ph245.i.preheader, label %vec.epilog.ph184, !prof !70

vec.epilog.ph184:                                 ; preds = %vector.main.loop.iter.check155, %vec.epilog.iter.check182
  %vec.epilog.resume.val177 = phi i64 [ %n.vec158, %vec.epilog.iter.check182 ], [ 0, %vector.main.loop.iter.check155 ]
  %bc.merge.rdx179 = phi float [ %i.cm, %vec.epilog.iter.check182 ], [ f0xFF7FFFFF, %vector.main.loop.iter.check155 ]
  %n.vec185 = and i64 %i.bl, 8589934588           ; 4 uses
  %i.cn = shl nuw nsw i64 %n.vec185, 1
  %i.co = getelementptr i8, ptr %.177.lcssa.i, i64 %i.cn
  %i.cp = trunc i64 %n.vec185 to i32
  %i.cq = add i32 %.180.lcssa.i, %i.cp
  %broadcast.splatinsert186 = insertelement <4 x float> poison, float %bc.merge.rdx179, i64 0
  %broadcast.splat187 = shufflevector <4 x float> %broadcast.splatinsert186, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body188

vec.epilog.vector.body188:                        ; preds = %vec.epilog.vector.body188, %vec.epilog.ph184
  %index189 = phi i64 [ %vec.epilog.resume.val177, %vec.epilog.ph184 ], [ %index.next193, %vec.epilog.vector.body188 ] ; 2 uses
  %vec.phi190 = phi <4 x float> [ %broadcast.splat187, %vec.epilog.ph184 ], [ %i.cv, %vec.epilog.vector.body188 ]
  %i.cr = shl i64 %index189, 1
  %next.gep191 = getelementptr i8, ptr %.177.lcssa.i, i64 %i.cr
  %wide.load192 = load <4 x i16>, ptr %next.gep191, align 2, !tbaa !216
  %i.cs = zext <4 x i16> %wide.load192 to <4 x i32>
  %i.ct = shl nuw <4 x i32> %i.cs, splat (i32 16)
  %i.cu = bitcast <4 x i32> %i.ct to <4 x float>
  %i.cv = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi190, <4 x float> %i.cu) ; 2 uses
  %index.next193 = add nuw i64 %index189, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next193, %n.vec185
  br i1 %i.cw, label %vec.epilog.middle.block194, label %vec.epilog.vector.body188, !llvm.loop !303

vec.epilog.middle.block194:                       ; preds = %vec.epilog.vector.body188
  %i.cx = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %i.cv) ; 2 uses
  %cmp.n195 = icmp eq i64 %i.bl, %n.vec185
  br i1 %cmp.n195, label %._crit_edge.i, label %.lr.ph245.i.preheader

.lr.ph245.i.preheader:                            ; preds = %iter.check180, %vec.epilog.iter.check182, %vec.epilog.middle.block194
  %.278244.i.ph = phi ptr [ %.177.lcssa.i, %iter.check180 ], [ %i.bo, %vec.epilog.iter.check182 ], [ %i.co, %vec.epilog.middle.block194 ]
  %.281243.i.ph = phi i32 [ %.180.lcssa.i, %iter.check180 ], [ %i.bq, %vec.epilog.iter.check182 ], [ %i.cq, %vec.epilog.middle.block194 ]
  %.0213242.i.ph = phi float [ f0xFF7FFFFF, %iter.check180 ], [ %i.cm, %vec.epilog.iter.check182 ], [ %i.cx, %vec.epilog.middle.block194 ]
  br label %.lr.ph245.i

.lr.ph238.i:                                      ; preds = %.preheader229.i, %.lr.ph238.i
  %.177237.i = phi ptr [ %i.de, %.lr.ph238.i ], [ %.076.lcssa.i, %.preheader229.i ] ; 2 uses
  %.180236.i = phi i32 [ %i.df, %.lr.ph238.i ], [ %.079.lcssa.i, %.preheader229.i ]
  %.0210235.i = phi <4 x float> [ %i.dd, %.lr.ph238.i ], [ splat (float f0xFF7FFFFF), %.preheader229.i ]
  %i.cy = load i64, ptr %.177237.i, align 1, !tbaa !54
  %i.cz = insertelement <2 x i64> poison, i64 %i.cy, i64 0
  %i.da = bitcast <2 x i64> %i.cz to <8 x i16>
  %i.db = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.da, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dc = bitcast <8 x i16> %i.db to <4 x float>
  %i.dd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210235.i, <4 x float> nofpclass(nan inf) %i.dc) ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.177237.i, i64 8 ; 2 uses
  %i.df = add nuw nsw i32 %.180236.i, 4           ; 3 uses
  %i.dg = or disjoint i32 %i.df, 3
  %i.dh = icmp slt i32 %i.dg, %i.ac
  br i1 %i.dh, label %.lr.ph238.i, label %.preheader228.i, !llvm.loop !220

.lr.ph245.i:                                      ; preds = %.lr.ph245.i.preheader, %.lr.ph245.i
  %.278244.i = phi ptr [ %i.di, %.lr.ph245.i ], [ %.278244.i.ph, %.lr.ph245.i.preheader ] ; 2 uses
  %.281243.i = phi i32 [ %i.dn, %.lr.ph245.i ], [ %.281243.i.ph, %.lr.ph245.i.preheader ]
  %.0213242.i = phi float [ %.sroa.speculated133.i, %.lr.ph245.i ], [ %.0213242.i.ph, %.lr.ph245.i.preheader ]
  %i.di = getelementptr inbounds nuw i8, ptr %.278244.i, i64 2
  %i.dj = load i16, ptr %.278244.i, align 2, !tbaa !216
  %i.dk = zext i16 %i.dj to i32
  %i.dl = shl nuw i32 %i.dk, 16
  %i.dm = bitcast i32 %i.dl to float
  %.sroa.speculated133.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.0213242.i, float %i.dm) ; 2 uses
  %i.dn = add nuw nsw i32 %.281243.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dn, %i.ac
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph245.i, !llvm.loop !304

._crit_edge.i:                                    ; preds = %.lr.ph245.i, %middle.block171, %vec.epilog.middle.block194, %.preheader228.i
  %.0213.lcssa.i = phi float [ f0xFF7FFFFF, %.preheader228.i ], [ %i.cx, %vec.epilog.middle.block194 ], [ %i.cm, %middle.block171 ], [ %.sroa.speculated133.i, %.lr.ph245.i ] ; 4 uses
  %i.do = icmp eq i32 %i.aa, 4                    ; 2 uses
  br i1 %i.do, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %._crit_edge.i
  %i.dp = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dq = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa.i, <4 x float> nofpclass(nan inf) %i.dp)
  %i.ds = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dr, <4 x float> nofpclass(nan inf) %i.dq) ; 2 uses
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i
  %i.du = icmp eq i32 %i.aa, 1
  br i1 %i.du, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dv = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dw = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dv, <4 x float> nofpclass(nan inf) %i.dw) ; 2 uses
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.dz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dx, <4 x float> nofpclass(nan inf) %i.dy) ; 2 uses
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.eb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.dz, <4 x float> nofpclass(nan inf) %i.ea)
  %i.ec = extractelement <4 x float> %i.eb, i64 0 ; 2 uses
  %i.ed = fcmp fast olt float %.0213.lcssa.i, %i.ec
  %.sroa.speculated129.i = select i1 %i.ed, float %i.ec, float %.0213.lcssa.i ; 2 uses
  %i.ee = shufflevector <4 x float> %.0210.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ef = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa.i, <4 x float> nofpclass(nan inf) %i.ee) ; 2 uses
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.eh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ef, <4 x float> nofpclass(nan inf) %i.eg)
  %i.ei = extractelement <4 x float> %i.eh, i64 0 ; 2 uses
  %i.ej = fcmp fast olt float %.sroa.speculated129.i, %i.ei
  %.sroa.speculated.i = select i1 %i.ej, float %i.ei, float %.sroa.speculated129.i ; 2 uses
  %i.ek = insertelement <4 x float> poison, float %.sroa.speculated.i, i64 0 ; 2 uses
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = shufflevector <4 x float> %i.ek, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread.i
  %i.en = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %.thread.i ]
  %.1214.i = phi nsz float [ %.sroa.speculated.i, %bb.d ], [ %.0213.lcssa.i, %bb.c ], [ %.0213.lcssa.i, %.thread.i ] ; 3 uses
  %.2212.i = phi nsz <4 x float> [ %i.el, %bb.d ], [ %.0210.lcssa.i, %bb.c ], [ %i.ds, %.thread.i ]
  %.2209.i = phi nsz <8 x float> [ %i.em, %bb.d ], [ %.0207.lcssa.i, %bb.c ], [ %i.dt, %.thread.i ]
  br i1 %i.ad, label %.lr.ph251.i, label %.preheader227.i

.preheader227.loopexit.i:                         ; preds = %.lr.ph251.i
  %i.eo = and i32 %i.ac, 2147483640
  br label %.preheader227.i

.preheader227.i:                                  ; preds = %.preheader227.loopexit.i, %bb.e
  %.0215.lcssa.i = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.gg, %.preheader227.loopexit.i ] ; 5 uses
  %.087.lcssa.i = phi ptr [ %.02042, %bb.e ], [ %i.gh, %.preheader227.loopexit.i ] ; 2 uses
  %.084.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.eo, %.preheader227.loopexit.i ] ; 3 uses
  %i.ep = or disjoint i32 %.084.lcssa.i, 3
  %i.eq = icmp slt i32 %i.ep, %i.ac
  br i1 %i.eq, label %.lr.ph258.i, label %.preheader226.i

.lr.ph251.i:                                      ; preds = %bb.e, %.lr.ph251.i
  %.084249.i = phi i32 [ %i.gi, %.lr.ph251.i ], [ 0, %bb.e ]
  %.087248.i = phi ptr [ %i.gh, %.lr.ph251.i ], [ %.02042, %bb.e ] ; 3 uses
  %.0215247.i = phi <8 x float> [ %i.gg, %.lr.ph251.i ], [ zeroinitializer, %bb.e ]
  %i.er = load <8 x i16>, ptr %.087248.i, align 1, !tbaa !54 ; 2 uses
  %i.es = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.er, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.et = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.er, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.eu = shufflevector <8 x i16> %i.es, <8 x i16> %i.et, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ev = bitcast <16 x i16> %i.eu to <8 x float>
  %i.ew = fsub fast <8 x float> %i.ev, %.2209.i
  %i.ex = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ew, <8 x float> splat (float f0x42B0C0A5))
  %i.ey = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ex, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ez = fmul fast <8 x float> %i.ey, splat (float f0x3FB8AA3B)
  %i.fa = fadd fast <8 x float> %i.ez, splat (float 5.000000e-01) ; 2 uses
  %i.fb = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fa, i32 1) ; 2 uses
  %i.fc = fcmp fast ogt <8 x float> %i.fb, %i.fa
  %i.fd = select <8 x i1> %i.fc, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.fe = fsub fast <8 x float> %i.fb, %i.fd      ; 2 uses
  %i.ff = fmul fast <8 x float> %i.fe, splat (float f0x3F317218)
  %i.fg = fsub fast <8 x float> %i.ey, %i.ff      ; 8 uses
  %i.fh = fmul fast <8 x float> %i.fg, %i.fg
  %i.fi = fmul fast <8 x float> %i.fg, splat (float f0x39506967)
  %i.fj = fadd fast <8 x float> %i.fi, splat (float f0x3AB743CE)
  %i.fk = fmul fast <8 x float> %i.fj, %i.fg
  %i.fl = fadd fast <8 x float> %i.fk, splat (float f0x3C088908)
  %i.fm = fmul fast <8 x float> %i.fl, %i.fg
  %i.fn = fadd fast <8 x float> %i.fm, splat (float f0x3D2AA9C1)
  %i.fo = fmul fast <8 x float> %i.fn, %i.fg
  %i.fp = fadd fast <8 x float> %i.fo, splat (float f0x3E2AAAAA)
  %i.fq = fmul fast <8 x float> %i.fp, %i.fg
  %i.fr = fadd fast <8 x float> %i.fq, splat (float 5.000000e-01)
  %i.fs = fmul fast <8 x float> %i.fh, %i.fr
  %i.ft = fadd fast <8 x float> %i.fg, %i.fs
  %i.fu = fadd fast <8 x float> %i.ft, splat (float 1.000000e+00)
  %i.fv = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fe)
  %i.fw = shl <8 x i32> %i.fv, splat (i32 23)
  %i.fx = add <8 x i32> %i.fw, splat (i32 1065353216)
  %i.fy = bitcast <8 x i32> %i.fx to <8 x float>
  %i.fz = fmul fast <8 x float> %i.fu, %i.fy      ; 2 uses
  %i.ga = bitcast <8 x float> %i.fz to <8 x i32>  ; 2 uses
  %i.gb = shufflevector <8 x i32> %i.ga, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gc = shufflevector <8 x i32> %i.ga, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gd = lshr <4 x i32> %i.gb, splat (i32 16)
  %i.ge = lshr <4 x i32> %i.gc, splat (i32 16)
  %i.gf = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gd, <4 x i32> %i.ge)
  store <8 x i16> %i.gf, ptr %.087248.i, align 1, !tbaa !54
  %i.gg = fadd fast <8 x float> %i.fz, %.0215247.i ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.087248.i, i64 16 ; 2 uses
  %i.gi = add nuw nsw i32 %.084249.i, 8           ; 2 uses
  %i.gj = or disjoint i32 %i.gi, 7
  %i.gk = icmp slt i32 %i.gj, %i.ac
  br i1 %i.gk, label %.lr.ph251.i, label %.preheader227.loopexit.i, !llvm.loop !222

.preheader226.i:                                  ; preds = %.lr.ph258.i, %.preheader227.i
  %.0218.lcssa.i = phi <4 x float> [ zeroinitializer, %.preheader227.i ], [ %i.kr, %.lr.ph258.i ] ; 3 uses
  %.188.lcssa.i = phi ptr [ %.087.lcssa.i, %.preheader227.i ], [ %i.ks, %.lr.ph258.i ] ; 5 uses
  %.185.lcssa.i = phi i32 [ %.084.lcssa.i, %.preheader227.i ], [ %i.kt, %.lr.ph258.i ] ; 5 uses
  %i.gl = icmp slt i32 %.185.lcssa.i, %i.ac
  br i1 %i.gl, label %iter.check135, label %._crit_edge266.i

iter.check135:                                    ; preds = %.preheader226.i
  %i.gm = xor i32 %.185.lcssa.i, -1
  %i.gn = add i32 %i.ac, %i.gm                    ; 3 uses
  %i.go = zext i32 %i.gn to i64
  %i.gp = add nuw nsw i64 %i.go, 1                ; 5 uses
  %min.iters.check111 = icmp ult i32 %i.gn, 3
  br i1 %min.iters.check111, label %.lr.ph265.i.preheader, label %vector.main.loop.iter.check112

vector.main.loop.iter.check112:                   ; preds = %iter.check135
  %min.iters.check113 = icmp ult i32 %i.gn, 15
  br i1 %min.iters.check113, label %vec.epilog.ph139, label %vector.ph114

vector.ph114:                                     ; preds = %vector.main.loop.iter.check112
  %i.gq = and i64 %i.gp, 12
  %n.vec115 = and i64 %i.gp, 8589934576           ; 5 uses
  %i.gr = trunc i64 %n.vec115 to i32
  %i.gs = add i32 %.185.lcssa.i, %i.gr
  %i.gt = shl nuw nsw i64 %n.vec115, 1
  %i.gu = getelementptr i8, ptr %.188.lcssa.i, i64 %i.gt
  %broadcast.splatinsert116 = insertelement <4 x float> poison, float %.1214.i, i64 0
  %broadcast.splat117 = shufflevector <4 x float> %broadcast.splatinsert116, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next128, %vector.body118 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph114 ], [ %i.if, %vector.body118 ]
  %vec.phi120 = phi <4 x float> [ zeroinitializer, %vector.ph114 ], [ %i.ig, %vector.body118 ]
  %vec.phi121 = phi <4 x float> [ zeroinitializer, %vector.ph114 ], [ %i.ih, %vector.body118 ]
  %vec.phi122 = phi <4 x float> [ zeroinitializer, %vector.ph114 ], [ %i.ii, %vector.body118 ]
  %i.gv = shl i64 %index119, 1
  %next.gep123 = getelementptr i8, ptr %.188.lcssa.i, i64 %i.gv ; 5 uses
  %i.gw = getelementptr i8, ptr %next.gep123, i64 8 ; 2 uses
  %i.gx = getelementptr i8, ptr %next.gep123, i64 16 ; 2 uses
  %i.gy = getelementptr i8, ptr %next.gep123, i64 24 ; 2 uses
  %wide.load124 = load <4 x i16>, ptr %next.gep123, align 2, !tbaa !216
  %wide.load125 = load <4 x i16>, ptr %i.gw, align 2, !tbaa !216
  %wide.load126 = load <4 x i16>, ptr %i.gx, align 2, !tbaa !216
  %wide.load127 = load <4 x i16>, ptr %i.gy, align 2, !tbaa !216
  %i.gz = zext <4 x i16> %wide.load124 to <4 x i32>
  %i.ha = zext <4 x i16> %wide.load125 to <4 x i32>
  %i.hb = zext <4 x i16> %wide.load126 to <4 x i32>
  %i.hc = zext <4 x i16> %wide.load127 to <4 x i32>
  %i.hd = shl nuw <4 x i32> %i.gz, splat (i32 16)
  %i.he = shl nuw <4 x i32> %i.ha, splat (i32 16)
  %i.hf = shl nuw <4 x i32> %i.hb, splat (i32 16)
  %i.hg = shl nuw <4 x i32> %i.hc, splat (i32 16)
  %i.hh = bitcast <4 x i32> %i.hd to <4 x float>
  %i.hi = bitcast <4 x i32> %i.he to <4 x float>
  %i.hj = bitcast <4 x i32> %i.hf to <4 x float>
  %i.hk = bitcast <4 x i32> %i.hg to <4 x float>
  %i.hl = fsub fast <4 x float> %i.hh, %broadcast.splat117
  %i.hm = fsub fast <4 x float> %i.hi, %broadcast.splat117
  %i.hn = fsub fast <4 x float> %i.hj, %broadcast.splat117
  %i.ho = fsub fast <4 x float> %i.hk, %broadcast.splat117
  %i.hp = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hl) ; 2 uses
  %i.hq = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hm) ; 2 uses
  %i.hr = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hn) ; 2 uses
  %i.hs = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.ho) ; 2 uses
  %i.ht = bitcast <4 x float> %i.hp to <4 x i32>
  %i.hu = bitcast <4 x float> %i.hq to <4 x i32>
  %i.hv = bitcast <4 x float> %i.hr to <4 x i32>
  %i.hw = bitcast <4 x float> %i.hs to <4 x i32>
  %i.hx = lshr <4 x i32> %i.ht, splat (i32 16)
  %i.hy = lshr <4 x i32> %i.hu, splat (i32 16)
  %i.hz = lshr <4 x i32> %i.hv, splat (i32 16)
  %i.ia = lshr <4 x i32> %i.hw, splat (i32 16)
  %i.ib = trunc nuw nsw <4 x i32> %i.hx to <4 x i16>
  %i.ic = trunc nuw nsw <4 x i32> %i.hy to <4 x i16>
  %i.id = trunc nuw nsw <4 x i32> %i.hz to <4 x i16>
  %i.ie = trunc nuw nsw <4 x i32> %i.ia to <4 x i16>
  store <4 x i16> %i.ib, ptr %next.gep123, align 2, !tbaa !216
  store <4 x i16> %i.ic, ptr %i.gw, align 2, !tbaa !216
  store <4 x i16> %i.id, ptr %i.gx, align 2, !tbaa !216
  store <4 x i16> %i.ie, ptr %i.gy, align 2, !tbaa !216
  %i.if = fadd fast <4 x float> %i.hp, %vec.phi   ; 2 uses
  %i.ig = fadd fast <4 x float> %i.hq, %vec.phi120 ; 2 uses
  %i.ih = fadd fast <4 x float> %i.hr, %vec.phi121 ; 2 uses
  %i.ii = fadd fast <4 x float> %i.hs, %vec.phi122 ; 2 uses
  %index.next128 = add nuw i64 %index119, 16      ; 2 uses
  %i.ij = icmp eq i64 %index.next128, %n.vec115
  br i1 %i.ij, label %middle.block129, label %vector.body118, !llvm.loop !305

middle.block129:                                  ; preds = %vector.body118
  %bin.rdx = fadd fast <4 x float> %i.ig, %i.if
  %bin.rdx130 = fadd fast <4 x float> %i.ih, %bin.rdx
  %bin.rdx131 = fadd fast <4 x float> %i.ii, %bin.rdx130
  %i.ik = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx131) ; 3 uses
  %cmp.n132 = icmp eq i64 %i.gp, %n.vec115
  br i1 %cmp.n132, label %._crit_edge266.i, label %vec.epilog.iter.check137

vec.epilog.iter.check137:                         ; preds = %middle.block129
  %min.epilog.iters.check138 = icmp eq i64 %i.gq, 0
  br i1 %min.epilog.iters.check138, label %.lr.ph265.i.preheader, label %vec.epilog.ph139, !prof !224

vec.epilog.ph139:                                 ; preds = %vector.main.loop.iter.check112, %vec.epilog.iter.check137
  %vec.epilog.resume.val133 = phi i64 [ %n.vec115, %vec.epilog.iter.check137 ], [ 0, %vector.main.loop.iter.check112 ]
  %bc.merge.rdx = phi float [ %i.ik, %vec.epilog.iter.check137 ], [ 0.000000e+00, %vector.main.loop.iter.check112 ]
  %n.vec140 = and i64 %i.gp, 8589934588           ; 4 uses
  %i.il = trunc i64 %n.vec140 to i32
  %i.im = add i32 %.185.lcssa.i, %i.il
  %i.in = shl nuw nsw i64 %n.vec140, 1
  %i.io = getelementptr i8, ptr %.188.lcssa.i, i64 %i.in
  %i.ip = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %broadcast.splatinsert141 = insertelement <4 x float> poison, float %.1214.i, i64 0
  %broadcast.splat142 = shufflevector <4 x float> %broadcast.splatinsert141, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body143

vec.epilog.vector.body143:                        ; preds = %vec.epilog.vector.body143, %vec.epilog.ph139
  %index144 = phi i64 [ %vec.epilog.resume.val133, %vec.epilog.ph139 ], [ %index.next148, %vec.epilog.vector.body143 ] ; 2 uses
  %vec.phi145 = phi <4 x float> [ %i.ip, %vec.epilog.ph139 ], [ %i.iz, %vec.epilog.vector.body143 ]
  %i.iq = shl i64 %index144, 1
  %next.gep146 = getelementptr i8, ptr %.188.lcssa.i, i64 %i.iq ; 2 uses
  %wide.load147 = load <4 x i16>, ptr %next.gep146, align 2, !tbaa !216
  %i.ir = zext <4 x i16> %wide.load147 to <4 x i32>
  %i.is = shl nuw <4 x i32> %i.ir, splat (i32 16)
  %i.it = bitcast <4 x i32> %i.is to <4 x float>
  %i.iu = fsub fast <4 x float> %i.it, %broadcast.splat142
  %i.iv = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.iu) ; 2 uses
  %i.iw = bitcast <4 x float> %i.iv to <4 x i32>
  %i.ix = lshr <4 x i32> %i.iw, splat (i32 16)
  %i.iy = trunc nuw nsw <4 x i32> %i.ix to <4 x i16>
  store <4 x i16> %i.iy, ptr %next.gep146, align 2, !tbaa !216
  %i.iz = fadd fast <4 x float> %i.iv, %vec.phi145 ; 2 uses
  %index.next148 = add nuw i64 %index144, 4       ; 2 uses
  %i.ja = icmp eq i64 %index.next148, %n.vec140
  br i1 %i.ja, label %vec.epilog.middle.block149, label %vec.epilog.vector.body143, !llvm.loop !306

vec.epilog.middle.block149:                       ; preds = %vec.epilog.vector.body143
  %i.jb = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.iz) ; 2 uses
  %cmp.n150 = icmp eq i64 %i.gp, %n.vec140
  br i1 %cmp.n150, label %._crit_edge266.i, label %.lr.ph265.i.preheader

.lr.ph265.i.preheader:                            ; preds = %iter.check135, %vec.epilog.iter.check137, %vec.epilog.middle.block149
  %.082264.i.ph = phi float [ 0.000000e+00, %iter.check135 ], [ %i.ik, %vec.epilog.iter.check137 ], [ %i.jb, %vec.epilog.middle.block149 ]
  %.286263.i.ph = phi i32 [ %.185.lcssa.i, %iter.check135 ], [ %i.gs, %vec.epilog.iter.check137 ], [ %i.im, %vec.epilog.middle.block149 ]
  %.289262.i.ph = phi ptr [ %.188.lcssa.i, %iter.check135 ], [ %i.gu, %vec.epilog.iter.check137 ], [ %i.io, %vec.epilog.middle.block149 ]
  br label %.lr.ph265.i

.lr.ph258.i:                                      ; preds = %.preheader227.i, %.lr.ph258.i
  %.185257.i = phi i32 [ %i.kt, %.lr.ph258.i ], [ %.084.lcssa.i, %.preheader227.i ]
  %.188256.i = phi ptr [ %i.ks, %.lr.ph258.i ], [ %.087.lcssa.i, %.preheader227.i ] ; 3 uses
  %.0218255.i = phi <4 x float> [ %i.kr, %.lr.ph258.i ], [ zeroinitializer, %.preheader227.i ]
  %i.jc = load i64, ptr %.188256.i, align 1, !tbaa !54
  %i.jd = insertelement <2 x i64> poison, i64 %i.jc, i64 0
  %i.je = bitcast <2 x i64> %i.jd to <8 x i16>
  %i.jf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.je, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jg = bitcast <8 x i16> %i.jf to <4 x float>
  %i.jh = fsub fast <4 x float> %i.jg, %.2212.i
  %i.ji = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.jh, <4 x float> splat (float f0x42B0C0A5))
  %i.jj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ji, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jk = fmul fast <4 x float> %i.jj, splat (float f0x3FB8AA3B)
  %i.jl = fadd fast <4 x float> %i.jk, splat (float 5.000000e-01) ; 2 uses
  %i.jm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jl)
  %i.jn = sitofp fast <4 x i32> %i.jm to <4 x float> ; 2 uses
  %i.jo = fcmp fast olt <4 x float> %i.jl, %i.jn
  %i.jp = select <4 x i1> %i.jo, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.jq = fsub fast <4 x float> %i.jn, %i.jp      ; 2 uses
  %i.jr = fmul fast <4 x float> %i.jq, splat (float f0x3F317218)
  %i.js = fsub fast <4 x float> %i.jj, %i.jr      ; 8 uses
  %i.jt = fmul fast <4 x float> %i.js, %i.js
  %i.ju = fmul fast <4 x float> %i.js, splat (float f0x39506967)
  %i.jv = fadd fast <4 x float> %i.ju, splat (float f0x3AB743CE)
  %i.jw = fmul fast <4 x float> %i.jv, %i.js
  %i.jx = fadd fast <4 x float> %i.jw, splat (float f0x3C088908)
  %i.jy = fmul fast <4 x float> %i.jx, %i.js
  %i.jz = fadd fast <4 x float> %i.jy, splat (float f0x3D2AA9C1)
  %i.ka = fmul fast <4 x float> %i.jz, %i.js
  %i.kb = fadd fast <4 x float> %i.ka, splat (float f0x3E2AAAAA)
  %i.kc = fmul fast <4 x float> %i.kb, %i.js
  %i.kd = fadd fast <4 x float> %i.kc, splat (float 5.000000e-01)
  %i.ke = fmul fast <4 x float> %i.jt, %i.kd
  %i.kf = fadd fast <4 x float> %i.js, %i.ke
  %i.kg = fadd fast <4 x float> %i.kf, splat (float 1.000000e+00)
  %i.kh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jq)
  %i.ki = shl <4 x i32> %i.kh, splat (i32 23)
  %i.kj = add <4 x i32> %i.ki, splat (i32 1065353216)
  %i.kk = bitcast <4 x i32> %i.kj to <4 x float>
  %i.kl = fmul fast <4 x float> %i.kg, %i.kk      ; 2 uses
  %i.km = bitcast <4 x float> %i.kl to <4 x i32>
  %i.kn = lshr <4 x i32> %i.km, splat (i32 16)
  %i.ko = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kn, <4 x i32> poison)
  %i.kp = bitcast <8 x i16> %i.ko to <2 x i64>
  %i.kq = extractelement <2 x i64> %i.kp, i64 0
  store i64 %i.kq, ptr %.188256.i, align 1, !tbaa !54
  %i.kr = fadd fast <4 x float> %i.kl, %.0218255.i ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.188256.i, i64 8 ; 2 uses
  %i.kt = add nuw nsw i32 %.185257.i, 4           ; 3 uses
  %i.ku = or disjoint i32 %i.kt, 3
  %i.kv = icmp slt i32 %i.ku, %i.ac
  br i1 %i.kv, label %.lr.ph258.i, label %.preheader226.i, !llvm.loop !226

.lr.ph265.i:                                      ; preds = %.lr.ph265.i.preheader, %.lr.ph265.i
  %.082264.i = phi float [ %i.lf, %.lr.ph265.i ], [ %.082264.i.ph, %.lr.ph265.i.preheader ]
  %.286263.i = phi i32 [ %i.lh, %.lr.ph265.i ], [ %.286263.i.ph, %.lr.ph265.i.preheader ]
  %.289262.i = phi ptr [ %i.lg, %.lr.ph265.i ], [ %.289262.i.ph, %.lr.ph265.i.preheader ] ; 3 uses
  %i.kw = load i16, ptr %.289262.i, align 2, !tbaa !216
  %i.kx = zext i16 %i.kw to i32
  %i.ky = shl nuw i32 %i.kx, 16
  %i.kz = bitcast i32 %i.ky to float
  %i.la = fsub fast float %i.kz, %.1214.i
  %i.lb = call fast float @llvm.exp.f32(float %i.la) ; 2 uses
  %i.lc = bitcast float %i.lb to i32
  %i.ld = lshr i32 %i.lc, 16
  %i.le = trunc nuw nsw i32 %i.ld to i16
  store i16 %i.le, ptr %.289262.i, align 2, !tbaa !216
  %i.lf = fadd fast float %i.lb, %.082264.i       ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.289262.i, i64 2
  %i.lh = add nuw nsw i32 %.286263.i, 1           ; 2 uses
  %exitcond299.not.i = icmp eq i32 %i.lh, %i.ac
  br i1 %exitcond299.not.i, label %._crit_edge266.i, label %.lr.ph265.i, !llvm.loop !307

._crit_edge266.i:                                 ; preds = %.lr.ph265.i, %middle.block129, %vec.epilog.middle.block149, %.preheader226.i
  %.082.lcssa.i = phi float [ 0.000000e+00, %.preheader226.i ], [ %i.jb, %vec.epilog.middle.block149 ], [ %i.ik, %middle.block129 ], [ %i.lf, %.lr.ph265.i ] ; 2 uses
  %i.li = icmp eq i32 %i.aa, 8
  br i1 %i.li, label %.thread223.i, label %bb.f

.thread223.i:                                     ; preds = %._crit_edge266.i
  %i.lj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %.0215.lcssa.i) ; 2 uses
  %i.lk = fmul fast <8 x float> %i.lj, %.0215.lcssa.i
  %i.ll = fsub fast <8 x float> splat (float 2.000000e+00), %i.lk
  %i.lm = fmul fast <8 x float> %i.ll, %i.lj
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge266.i
  br i1 %i.do, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ln = shufflevector <8 x float> %.0215.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lo = shufflevector <8 x float> %.0215.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lp = fadd fast <4 x float> %i.lo, %i.ln
  %i.lq = fadd fast <4 x float> %i.lp, %.0218.lcssa.i ; 2 uses
  %i.lr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.lq) ; 2 uses
  %i.ls = fmul fast <4 x float> %i.lr, %i.lq
  %i.lt = fsub fast <4 x float> splat (float 2.000000e+00), %i.ls
  %i.lu = fmul fast <4 x float> %i.lt, %i.lr      ; 2 uses
  %i.lv = shufflevector <4 x float> %i.lu, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread223.i
  %.1219.i = phi nsz <4 x float> [ %i.lu, %bb.g ], [ %.0218.lcssa.i, %bb.f ], [ %.0218.lcssa.i, %.thread223.i ] ; 3 uses
  %.2217.i = phi nsz <8 x float> [ %i.lv, %bb.g ], [ %.0215.lcssa.i, %bb.f ], [ %i.lm, %.thread223.i ] ; 3 uses
  br i1 %i.en, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.lw = shufflevector <8 x float> %.2217.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lx = shufflevector <8 x float> %.2217.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ly = fadd fast <4 x float> %i.lw, %i.lx      ; 2 uses
  %i.lz = shufflevector <4 x float> %i.ly, <4 x float> %.1219.i, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.ma = shufflevector <4 x float> %i.ly, <4 x float> %.1219.i, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.mb = fadd fast <4 x float> %i.lz, %i.ma
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.082.lcssa.i, <4 x float> %i.mb)
  %i.mc = fdiv fast float 1.000000e+00, %op.rdx   ; 2 uses
  %i.md = insertelement <4 x float> poison, float %i.mc, i64 0 ; 2 uses
  %i.me = shufflevector <4 x float> %i.md, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mf = shufflevector <4 x float> %i.md, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2220.i = phi nsz <4 x float> [ %i.me, %bb.i ], [ %.1219.i, %bb.h ]
  %.3.i = phi nsz <8 x float> [ %i.mf, %bb.i ], [ %.2217.i, %bb.h ]
  %.183.i = phi nsz float [ %i.mc, %bb.i ], [ %.082.lcssa.i, %bb.h ] ; 3 uses
  br i1 %i.ad, label %.lr.ph271.i, label %.preheader225.i

.preheader225.loopexit.i:                         ; preds = %.lr.ph271.i
  %i.mg = and i32 %i.ac, 2147483640
  br label %.preheader225.i

.preheader225.i:                                  ; preds = %.preheader225.loopexit.i, %bb.j
  %.073.lcssa.i = phi ptr [ %.02042, %bb.j ], [ %i.mv, %.preheader225.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.mg, %.preheader225.loopexit.i ] ; 3 uses
  %i.mh = or disjoint i32 %.0.lcssa.i, 3
  %i.mi = icmp slt i32 %i.mh, %i.ac
  br i1 %i.mi, label %.lr.ph276.i, label %.preheader.i

.lr.ph271.i:                                      ; preds = %bb.j, %.lr.ph271.i
  %.0269.i = phi i32 [ %i.mw, %.lr.ph271.i ], [ 0, %bb.j ]
  %.073268.i = phi ptr [ %i.mv, %.lr.ph271.i ], [ %.02042, %bb.j ] ; 3 uses
  %i.mj = load <8 x i16>, ptr %.073268.i, align 1, !tbaa !54 ; 2 uses
  %i.mk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ml = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mm = shufflevector <8 x i16> %i.mk, <8 x i16> %i.ml, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mn = bitcast <16 x i16> %i.mm to <8 x float>
  %i.mo = fmul fast <8 x float> %.3.i, %i.mn
  %i.mp = bitcast <8 x float> %i.mo to <8 x i32>  ; 2 uses
  %i.mq = shufflevector <8 x i32> %i.mp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mr = shufflevector <8 x i32> %i.mp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ms = lshr <4 x i32> %i.mq, splat (i32 16)
  %i.mt = lshr <4 x i32> %i.mr, splat (i32 16)
  %i.mu = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ms, <4 x i32> %i.mt)
  store <8 x i16> %i.mu, ptr %.073268.i, align 1, !tbaa !54
  %i.mv = getelementptr inbounds nuw i8, ptr %.073268.i, i64 16 ; 2 uses
  %i.mw = add nuw nsw i32 %.0269.i, 8             ; 2 uses
  %i.mx = or disjoint i32 %i.mw, 7
  %i.my = icmp slt i32 %i.mx, %i.ac
  br i1 %i.my, label %.lr.ph271.i, label %.preheader225.loopexit.i, !llvm.loop !228

.preheader.i:                                     ; preds = %.lr.ph276.i, %.preheader225.i
  %.174.lcssa.i = phi ptr [ %.073.lcssa.i, %.preheader225.i ], [ %i.oq, %.lr.ph276.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader225.i ], [ %i.or, %.lr.ph276.i ] ; 5 uses
  %i.mz = icmp slt i32 %.1.lcssa.i, %i.ac
  br i1 %i.mz, label %iter.check, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit

iter.check:                                       ; preds = %.preheader.i
  %i.na = xor i32 %.1.lcssa.i, -1
  %i.nb = add i32 %i.ac, %i.na                    ; 3 uses
  %i.nc = zext i32 %i.nb to i64
  %i.nd = add nuw nsw i64 %i.nc, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.nb, 3
  br i1 %min.iters.check, label %.lr.ph281.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check99 = icmp ult i32 %i.nb, 15
  br i1 %min.iters.check99, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ne = and i64 %i.nd, 12
  %n.vec = and i64 %i.nd, 8589934576              ; 5 uses
  %i.nf = trunc i64 %n.vec to i32
  %i.ng = add i32 %.1.lcssa.i, %i.nf
  %i.nh = shl nuw nsw i64 %n.vec, 1
  %i.ni = getelementptr i8, ptr %.174.lcssa.i, i64 %i.nh
  %broadcast.splatinsert = insertelement <16 x float> poison, float %.183.i, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nj = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.174.lcssa.i, i64 %i.nj ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !216
  %i.nk = zext <16 x i16> %wide.load to <16 x i32>
  %i.nl = shl nuw <16 x i32> %i.nk, splat (i32 16)
  %i.nm = bitcast <16 x i32> %i.nl to <16 x float>
  %i.nn = fmul fast <16 x float> %broadcast.splat, %i.nm
  %i.no = bitcast <16 x float> %i.nn to <16 x i32>
  %i.np = lshr <16 x i32> %i.no, splat (i32 16)
  %i.nq = trunc nuw <16 x i32> %i.np to <16 x i16>
  store <16 x i16> %i.nq, ptr %next.gep, align 2, !tbaa !216
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.nr = icmp eq i64 %index.next, %n.vec
  br i1 %i.nr, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.nd, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ne, 0
  br i1 %min.epilog.iters.check, label %.lr.ph281.i.preheader, label %vec.epilog.ph, !prof !224

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec101 = and i64 %i.nd, 8589934588           ; 4 uses
  %i.ns = trunc i64 %n.vec101 to i32
  %i.nt = add i32 %.1.lcssa.i, %i.ns
  %i.nu = shl nuw nsw i64 %n.vec101, 1
  %i.nv = getelementptr i8, ptr %.174.lcssa.i, i64 %i.nu
  %broadcast.splatinsert102 = insertelement <4 x float> poison, float %.183.i, i64 0
  %broadcast.splat103 = shufflevector <4 x float> %broadcast.splatinsert102, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index104 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next107, %vec.epilog.vector.body ] ; 2 uses
  %i.nw = shl i64 %index104, 1
  %next.gep105 = getelementptr i8, ptr %.174.lcssa.i, i64 %i.nw ; 2 uses
  %wide.load106 = load <4 x i16>, ptr %next.gep105, align 2, !tbaa !216
  %i.nx = zext <4 x i16> %wide.load106 to <4 x i32>
  %i.ny = shl nuw <4 x i32> %i.nx, splat (i32 16)
  %i.nz = bitcast <4 x i32> %i.ny to <4 x float>
  %i.oa = fmul fast <4 x float> %broadcast.splat103, %i.nz
  %i.ob = bitcast <4 x float> %i.oa to <4 x i32>
  %i.oc = lshr <4 x i32> %i.ob, splat (i32 16)
  %i.od = trunc nuw <4 x i32> %i.oc to <4 x i16>
end_hunk_9
begin_hunk_10_@_ZNK4ncnn15Softmax_x86_avx21forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.12:bb.a
  %vec.phi184 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph177 ], [ %i.cv, %vector.body179 ]
  %i.cc = shl i64 %index180, 1
  %next.gep185 = getelementptr i8, ptr %.177.lcssa.i, i64 %i.cc ; 4 uses
  %i.cd = getelementptr i8, ptr %next.gep185, i64 16
  %i.ce = getelementptr i8, ptr %next.gep185, i64 32
  %i.cf = getelementptr i8, ptr %next.gep185, i64 48
  %wide.load186 = load <8 x i16>, ptr %next.gep185, align 2, !tbaa !216
  %wide.load187 = load <8 x i16>, ptr %i.cd, align 2, !tbaa !216
  %wide.load188 = load <8 x i16>, ptr %i.ce, align 2, !tbaa !216
  %wide.load189 = load <8 x i16>, ptr %i.cf, align 2, !tbaa !216
  %i.cg = zext <8 x i16> %wide.load186 to <8 x i32>
  %i.ch = zext <8 x i16> %wide.load187 to <8 x i32>
  %i.ci = zext <8 x i16> %wide.load188 to <8 x i32>
  %i.cj = zext <8 x i16> %wide.load189 to <8 x i32>
  %i.ck = shl nuw <8 x i32> %i.cg, splat (i32 16)
  %i.cl = shl nuw <8 x i32> %i.ch, splat (i32 16)
  %i.cm = shl nuw <8 x i32> %i.ci, splat (i32 16)
  %i.cn = shl nuw <8 x i32> %i.cj, splat (i32 16)
  %i.co = bitcast <8 x i32> %i.ck to <8 x float>
  %i.cp = bitcast <8 x i32> %i.cl to <8 x float>
  %i.cq = bitcast <8 x i32> %i.cm to <8 x float>
  %i.cr = bitcast <8 x i32> %i.cn to <8 x float>
  %i.cs = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi181, <8 x float> %i.co) ; 2 uses
  %i.ct = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi182, <8 x float> %i.cp) ; 2 uses
  %i.cu = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi183, <8 x float> %i.cq) ; 2 uses
  %i.cv = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi184, <8 x float> %i.cr) ; 2 uses
  %index.next190 = add nuw i64 %index180, 32      ; 2 uses
  %i.cw = icmp eq i64 %index.next190, %n.vec178
  br i1 %i.cw, label %middle.block191, label %vector.body179, !llvm.loop !323

middle.block191:                                  ; preds = %vector.body179
  %rdx.minmax.select = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.cs, <8 x float> %i.ct)
  %rdx.minmax.select193 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.cu)
  %rdx.minmax.select195 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select193, <8 x float> %i.cv)
  %i.cx = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select195) ; 3 uses
  %cmp.n196 = icmp eq i64 %i.bw, %n.vec178
  br i1 %cmp.n196, label %._crit_edge.i, label %vec.epilog.iter.check202

vec.epilog.iter.check202:                         ; preds = %middle.block191
  %min.epilog.iters.check203 = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check203, label %.lr.ph245.i.preheader, label %vec.epilog.ph204, !prof !70

vec.epilog.ph204:                                 ; preds = %vector.main.loop.iter.check175, %vec.epilog.iter.check202
  %vec.epilog.resume.val197 = phi i64 [ %n.vec178, %vec.epilog.iter.check202 ], [ 0, %vector.main.loop.iter.check175 ]
  %bc.merge.rdx199 = phi float [ %i.cx, %vec.epilog.iter.check202 ], [ f0xFF7FFFFF, %vector.main.loop.iter.check175 ]
  %n.vec205 = and i64 %i.bw, 8589934588           ; 4 uses
  %i.cy = shl nuw nsw i64 %n.vec205, 1
  %i.cz = getelementptr i8, ptr %.177.lcssa.i, i64 %i.cy
  %i.da = trunc i64 %n.vec205 to i32
  %i.db = add i32 %.180.lcssa.i, %i.da
  %broadcast.splatinsert206 = insertelement <4 x float> poison, float %bc.merge.rdx199, i64 0
  %broadcast.splat207 = shufflevector <4 x float> %broadcast.splatinsert206, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body208

vec.epilog.vector.body208:                        ; preds = %vec.epilog.vector.body208, %vec.epilog.ph204
  %index209 = phi i64 [ %vec.epilog.resume.val197, %vec.epilog.ph204 ], [ %index.next213, %vec.epilog.vector.body208 ] ; 2 uses
  %vec.phi210 = phi <4 x float> [ %broadcast.splat207, %vec.epilog.ph204 ], [ %i.dg, %vec.epilog.vector.body208 ]
  %i.dc = shl i64 %index209, 1
  %next.gep211 = getelementptr i8, ptr %.177.lcssa.i, i64 %i.dc
  %wide.load212 = load <4 x i16>, ptr %next.gep211, align 2, !tbaa !216
  %i.dd = zext <4 x i16> %wide.load212 to <4 x i32>
  %i.de = shl nuw <4 x i32> %i.dd, splat (i32 16)
  %i.df = bitcast <4 x i32> %i.de to <4 x float>
  %i.dg = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi210, <4 x float> %i.df) ; 2 uses
  %index.next213 = add nuw i64 %index209, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next213, %n.vec205
  br i1 %i.dh, label %vec.epilog.middle.block214, label %vec.epilog.vector.body208, !llvm.loop !324

vec.epilog.middle.block214:                       ; preds = %vec.epilog.vector.body208
  %i.di = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %i.dg) ; 2 uses
  %cmp.n215 = icmp eq i64 %i.bw, %n.vec205
  br i1 %cmp.n215, label %._crit_edge.i, label %.lr.ph245.i.preheader

.lr.ph245.i.preheader:                            ; preds = %iter.check200, %vec.epilog.iter.check202, %vec.epilog.middle.block214
  %.278244.i.ph = phi ptr [ %.177.lcssa.i, %iter.check200 ], [ %i.bz, %vec.epilog.iter.check202 ], [ %i.cz, %vec.epilog.middle.block214 ]
  %.281243.i.ph = phi i32 [ %.180.lcssa.i, %iter.check200 ], [ %i.cb, %vec.epilog.iter.check202 ], [ %i.db, %vec.epilog.middle.block214 ]
  %.0213242.i.ph = phi float [ f0xFF7FFFFF, %iter.check200 ], [ %i.cx, %vec.epilog.iter.check202 ], [ %i.di, %vec.epilog.middle.block214 ]
  br label %.lr.ph245.i

.lr.ph238.i:                                      ; preds = %.preheader229.i, %.lr.ph238.i
  %.177237.i = phi ptr [ %i.dp, %.lr.ph238.i ], [ %.076.lcssa.i, %.preheader229.i ] ; 2 uses
  %.180236.i = phi i32 [ %i.dq, %.lr.ph238.i ], [ %.079.lcssa.i, %.preheader229.i ]
  %.0210235.i = phi <4 x float> [ %i.do, %.lr.ph238.i ], [ splat (float f0xFF7FFFFF), %.preheader229.i ]
  %i.dj = load i64, ptr %.177237.i, align 1, !tbaa !54
  %i.dk = insertelement <2 x i64> poison, i64 %i.dj, i64 0
  %i.dl = bitcast <2 x i64> %i.dk to <8 x i16>
  %i.dm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dn = bitcast <8 x i16> %i.dm to <4 x float>
  %i.do = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210235.i, <4 x float> nofpclass(nan inf) %i.dn) ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.177237.i, i64 8 ; 2 uses
  %i.dq = add nuw nsw i32 %.180236.i, 4           ; 3 uses
  %i.dr = or disjoint i32 %i.dq, 3
  %i.ds = icmp slt i32 %i.dr, %i.an
  br i1 %i.ds, label %.lr.ph238.i, label %.preheader228.i, !llvm.loop !220

.lr.ph245.i:                                      ; preds = %.lr.ph245.i.preheader, %.lr.ph245.i
  %.278244.i = phi ptr [ %i.dt, %.lr.ph245.i ], [ %.278244.i.ph, %.lr.ph245.i.preheader ] ; 2 uses
  %.281243.i = phi i32 [ %i.dy, %.lr.ph245.i ], [ %.281243.i.ph, %.lr.ph245.i.preheader ]
  %.0213242.i = phi float [ %.sroa.speculated133.i, %.lr.ph245.i ], [ %.0213242.i.ph, %.lr.ph245.i.preheader ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.278244.i, i64 2
  %i.du = load i16, ptr %.278244.i, align 2, !tbaa !216
  %i.dv = zext i16 %i.du to i32
  %i.dw = shl nuw i32 %i.dv, 16
  %i.dx = bitcast i32 %i.dw to float
  %.sroa.speculated133.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.0213242.i, float %i.dx) ; 2 uses
  %i.dy = add nuw nsw i32 %.281243.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dy, %i.an
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph245.i, !llvm.loop !325

._crit_edge.i:                                    ; preds = %.lr.ph245.i, %middle.block191, %vec.epilog.middle.block214, %.preheader228.i
  %.0213.lcssa.i = phi float [ f0xFF7FFFFF, %.preheader228.i ], [ %i.di, %vec.epilog.middle.block214 ], [ %i.cx, %middle.block191 ], [ %.sroa.speculated133.i, %.lr.ph245.i ] ; 4 uses
  %i.dz = icmp eq i32 %i.al, 4                    ; 2 uses
  br i1 %i.dz, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %._crit_edge.i
  %i.ea = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eb = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ec = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa.i, <4 x float> nofpclass(nan inf) %i.ea)
  %i.ed = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ec, <4 x float> nofpclass(nan inf) %i.eb) ; 2 uses
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i
  %i.ef = icmp eq i32 %i.al, 1
  br i1 %i.ef, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.eg = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eh = shufflevector <8 x float> %.0207.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eg, <4 x float> nofpclass(nan inf) %i.eh) ; 2 uses
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ek = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ei, <4 x float> nofpclass(nan inf) %i.ej) ; 2 uses
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ek, <4 x float> nofpclass(nan inf) %i.el)
  %i.en = extractelement <4 x float> %i.em, i64 0 ; 2 uses
  %i.eo = fcmp fast olt float %.0213.lcssa.i, %i.en
  %.sroa.speculated129.i = select i1 %i.eo, float %i.en, float %.0213.lcssa.i ; 2 uses
  %i.ep = shufflevector <4 x float> %.0210.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.eq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0210.lcssa.i, <4 x float> nofpclass(nan inf) %i.ep) ; 2 uses
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.es = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.eq, <4 x float> nofpclass(nan inf) %i.er)
  %i.et = extractelement <4 x float> %i.es, i64 0 ; 2 uses
  %i.eu = fcmp fast olt float %.sroa.speculated129.i, %i.et
  %.sroa.speculated.i = select i1 %i.eu, float %i.et, float %.sroa.speculated129.i ; 2 uses
  %i.ev = insertelement <4 x float> poison, float %.sroa.speculated.i, i64 0 ; 2 uses
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ex = shufflevector <4 x float> %i.ev, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread.i
  %i.ey = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %.thread.i ]
  %.1214.i = phi nsz float [ %.sroa.speculated.i, %bb.d ], [ %.0213.lcssa.i, %bb.c ], [ %.0213.lcssa.i, %.thread.i ] ; 3 uses
  %.2212.i = phi nsz <4 x float> [ %i.ew, %bb.d ], [ %.0210.lcssa.i, %bb.c ], [ %i.ed, %.thread.i ]
  %.2209.i = phi nsz <8 x float> [ %i.ex, %bb.d ], [ %.0207.lcssa.i, %bb.c ], [ %i.ee, %.thread.i ]
  br i1 %i.ao, label %.lr.ph251.i, label %.preheader227.i

.preheader227.loopexit.i:                         ; preds = %.lr.ph251.i
  %i.ez = and i32 %i.an, 2147483640
  br label %.preheader227.i

.preheader227.i:                                  ; preds = %.preheader227.loopexit.i, %bb.e
  %.0215.lcssa.i = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.gr, %.preheader227.loopexit.i ] ; 5 uses
  %.087.lcssa.i = phi ptr [ %.146, %bb.e ], [ %i.gs, %.preheader227.loopexit.i ] ; 2 uses
  %.084.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.ez, %.preheader227.loopexit.i ] ; 3 uses
  %i.fa = or disjoint i32 %.084.lcssa.i, 3
  %i.fb = icmp slt i32 %i.fa, %i.an
  br i1 %i.fb, label %.lr.ph258.i, label %.preheader226.i

.lr.ph251.i:                                      ; preds = %bb.e, %.lr.ph251.i
  %.084249.i = phi i32 [ %i.gt, %.lr.ph251.i ], [ 0, %bb.e ]
  %.087248.i = phi ptr [ %i.gs, %.lr.ph251.i ], [ %.146, %bb.e ] ; 3 uses
  %.0215247.i = phi <8 x float> [ %i.gr, %.lr.ph251.i ], [ zeroinitializer, %bb.e ]
  %i.fc = load <8 x i16>, ptr %.087248.i, align 1, !tbaa !54 ; 2 uses
  %i.fd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fe = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ff = shufflevector <8 x i16> %i.fd, <8 x i16> %i.fe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fg = bitcast <16 x i16> %i.ff to <8 x float>
  %i.fh = fsub fast <8 x float> %i.fg, %.2209.i
  %i.fi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.fh, <8 x float> splat (float f0x42B0C0A5))
  %i.fj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fi, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fk = fmul fast <8 x float> %i.fj, splat (float f0x3FB8AA3B)
  %i.fl = fadd fast <8 x float> %i.fk, splat (float 5.000000e-01) ; 2 uses
  %i.fm = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fl, i32 1) ; 2 uses
  %i.fn = fcmp fast ogt <8 x float> %i.fm, %i.fl
  %i.fo = select <8 x i1> %i.fn, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.fp = fsub fast <8 x float> %i.fm, %i.fo      ; 2 uses
  %i.fq = fmul fast <8 x float> %i.fp, splat (float f0x3F317218)
  %i.fr = fsub fast <8 x float> %i.fj, %i.fq      ; 8 uses
  %i.fs = fmul fast <8 x float> %i.fr, %i.fr
  %i.ft = fmul fast <8 x float> %i.fr, splat (float f0x39506967)
  %i.fu = fadd fast <8 x float> %i.ft, splat (float f0x3AB743CE)
  %i.fv = fmul fast <8 x float> %i.fu, %i.fr
  %i.fw = fadd fast <8 x float> %i.fv, splat (float f0x3C088908)
  %i.fx = fmul fast <8 x float> %i.fw, %i.fr
  %i.fy = fadd fast <8 x float> %i.fx, splat (float f0x3D2AA9C1)
  %i.fz = fmul fast <8 x float> %i.fy, %i.fr
  %i.ga = fadd fast <8 x float> %i.fz, splat (float f0x3E2AAAAA)
  %i.gb = fmul fast <8 x float> %i.ga, %i.fr
  %i.gc = fadd fast <8 x float> %i.gb, splat (float 5.000000e-01)
  %i.gd = fmul fast <8 x float> %i.fs, %i.gc
  %i.ge = fadd fast <8 x float> %i.fr, %i.gd
  %i.gf = fadd fast <8 x float> %i.ge, splat (float 1.000000e+00)
  %i.gg = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fp)
  %i.gh = shl <8 x i32> %i.gg, splat (i32 23)
  %i.gi = add <8 x i32> %i.gh, splat (i32 1065353216)
  %i.gj = bitcast <8 x i32> %i.gi to <8 x float>
  %i.gk = fmul fast <8 x float> %i.gf, %i.gj      ; 2 uses
  %i.gl = bitcast <8 x float> %i.gk to <8 x i32>  ; 2 uses
  %i.gm = shufflevector <8 x i32> %i.gl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gn = shufflevector <8 x i32> %i.gl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.go = lshr <4 x i32> %i.gm, splat (i32 16)
  %i.gp = lshr <4 x i32> %i.gn, splat (i32 16)
  %i.gq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.go, <4 x i32> %i.gp)
  store <8 x i16> %i.gq, ptr %.087248.i, align 1, !tbaa !54
  %i.gr = fadd fast <8 x float> %i.gk, %.0215247.i ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.087248.i, i64 16 ; 2 uses
  %i.gt = add nuw nsw i32 %.084249.i, 8           ; 2 uses
  %i.gu = or disjoint i32 %i.gt, 7
  %i.gv = icmp slt i32 %i.gu, %i.an
  br i1 %i.gv, label %.lr.ph251.i, label %.preheader227.loopexit.i, !llvm.loop !222

.preheader226.i:                                  ; preds = %.lr.ph258.i, %.preheader227.i
  %.0218.lcssa.i = phi <4 x float> [ zeroinitializer, %.preheader227.i ], [ %i.lc, %.lr.ph258.i ] ; 3 uses
  %.188.lcssa.i = phi ptr [ %.087.lcssa.i, %.preheader227.i ], [ %i.ld, %.lr.ph258.i ] ; 5 uses
  %.185.lcssa.i = phi i32 [ %.084.lcssa.i, %.preheader227.i ], [ %i.le, %.lr.ph258.i ] ; 5 uses
  %i.gw = icmp slt i32 %.185.lcssa.i, %i.an
  br i1 %i.gw, label %iter.check155, label %._crit_edge266.i

iter.check155:                                    ; preds = %.preheader226.i
  %i.gx = xor i32 %.185.lcssa.i, -1
  %i.gy = add i32 %i.an, %i.gx                    ; 3 uses
  %i.gz = zext i32 %i.gy to i64
  %i.ha = add nuw nsw i64 %i.gz, 1                ; 5 uses
  %min.iters.check131 = icmp ult i32 %i.gy, 3
  br i1 %min.iters.check131, label %.lr.ph265.i.preheader, label %vector.main.loop.iter.check132

vector.main.loop.iter.check132:                   ; preds = %iter.check155
  %min.iters.check133 = icmp ult i32 %i.gy, 15
  br i1 %min.iters.check133, label %vec.epilog.ph159, label %vector.ph134

vector.ph134:                                     ; preds = %vector.main.loop.iter.check132
  %i.hb = and i64 %i.ha, 12
  %n.vec135 = and i64 %i.ha, 8589934576           ; 5 uses
  %i.hc = trunc i64 %n.vec135 to i32
  %i.hd = add i32 %.185.lcssa.i, %i.hc
  %i.he = shl nuw nsw i64 %n.vec135, 1
  %i.hf = getelementptr i8, ptr %.188.lcssa.i, i64 %i.he
  %broadcast.splatinsert136 = insertelement <4 x float> poison, float %.1214.i, i64 0
  %broadcast.splat137 = shufflevector <4 x float> %broadcast.splatinsert136, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph134
  %index139 = phi i64 [ 0, %vector.ph134 ], [ %index.next148, %vector.body138 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph134 ], [ %i.iq, %vector.body138 ]
  %vec.phi140 = phi <4 x float> [ zeroinitializer, %vector.ph134 ], [ %i.ir, %vector.body138 ]
  %vec.phi141 = phi <4 x float> [ zeroinitializer, %vector.ph134 ], [ %i.is, %vector.body138 ]
  %vec.phi142 = phi <4 x float> [ zeroinitializer, %vector.ph134 ], [ %i.it, %vector.body138 ]
  %i.hg = shl i64 %index139, 1
  %next.gep143 = getelementptr i8, ptr %.188.lcssa.i, i64 %i.hg ; 5 uses
  %i.hh = getelementptr i8, ptr %next.gep143, i64 8 ; 2 uses
  %i.hi = getelementptr i8, ptr %next.gep143, i64 16 ; 2 uses
  %i.hj = getelementptr i8, ptr %next.gep143, i64 24 ; 2 uses
  %wide.load144 = load <4 x i16>, ptr %next.gep143, align 2, !tbaa !216
  %wide.load145 = load <4 x i16>, ptr %i.hh, align 2, !tbaa !216
  %wide.load146 = load <4 x i16>, ptr %i.hi, align 2, !tbaa !216
  %wide.load147 = load <4 x i16>, ptr %i.hj, align 2, !tbaa !216
  %i.hk = zext <4 x i16> %wide.load144 to <4 x i32>
  %i.hl = zext <4 x i16> %wide.load145 to <4 x i32>
  %i.hm = zext <4 x i16> %wide.load146 to <4 x i32>
  %i.hn = zext <4 x i16> %wide.load147 to <4 x i32>
  %i.ho = shl nuw <4 x i32> %i.hk, splat (i32 16)
  %i.hp = shl nuw <4 x i32> %i.hl, splat (i32 16)
  %i.hq = shl nuw <4 x i32> %i.hm, splat (i32 16)
  %i.hr = shl nuw <4 x i32> %i.hn, splat (i32 16)
  %i.hs = bitcast <4 x i32> %i.ho to <4 x float>
  %i.ht = bitcast <4 x i32> %i.hp to <4 x float>
  %i.hu = bitcast <4 x i32> %i.hq to <4 x float>
  %i.hv = bitcast <4 x i32> %i.hr to <4 x float>
  %i.hw = fsub fast <4 x float> %i.hs, %broadcast.splat137
  %i.hx = fsub fast <4 x float> %i.ht, %broadcast.splat137
  %i.hy = fsub fast <4 x float> %i.hu, %broadcast.splat137
  %i.hz = fsub fast <4 x float> %i.hv, %broadcast.splat137
  %i.ia = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hw) ; 2 uses
  %i.ib = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hx) ; 2 uses
  %i.ic = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hy) ; 2 uses
  %i.id = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.hz) ; 2 uses
  %i.ie = bitcast <4 x float> %i.ia to <4 x i32>
  %i.if = bitcast <4 x float> %i.ib to <4 x i32>
  %i.ig = bitcast <4 x float> %i.ic to <4 x i32>
  %i.ih = bitcast <4 x float> %i.id to <4 x i32>
  %i.ii = lshr <4 x i32> %i.ie, splat (i32 16)
  %i.ij = lshr <4 x i32> %i.if, splat (i32 16)
  %i.ik = lshr <4 x i32> %i.ig, splat (i32 16)
  %i.il = lshr <4 x i32> %i.ih, splat (i32 16)
  %i.im = trunc nuw nsw <4 x i32> %i.ii to <4 x i16>
  %i.in = trunc nuw nsw <4 x i32> %i.ij to <4 x i16>
  %i.io = trunc nuw nsw <4 x i32> %i.ik to <4 x i16>
  %i.ip = trunc nuw nsw <4 x i32> %i.il to <4 x i16>
  store <4 x i16> %i.im, ptr %next.gep143, align 2, !tbaa !216
  store <4 x i16> %i.in, ptr %i.hh, align 2, !tbaa !216
  store <4 x i16> %i.io, ptr %i.hi, align 2, !tbaa !216
  store <4 x i16> %i.ip, ptr %i.hj, align 2, !tbaa !216
  %i.iq = fadd fast <4 x float> %i.ia, %vec.phi   ; 2 uses
  %i.ir = fadd fast <4 x float> %i.ib, %vec.phi140 ; 2 uses
  %i.is = fadd fast <4 x float> %i.ic, %vec.phi141 ; 2 uses
  %i.it = fadd fast <4 x float> %i.id, %vec.phi142 ; 2 uses
  %index.next148 = add nuw i64 %index139, 16      ; 2 uses
  %i.iu = icmp eq i64 %index.next148, %n.vec135
  br i1 %i.iu, label %middle.block149, label %vector.body138, !llvm.loop !326

middle.block149:                                  ; preds = %vector.body138
  %bin.rdx = fadd fast <4 x float> %i.ir, %i.iq
  %bin.rdx150 = fadd fast <4 x float> %i.is, %bin.rdx
  %bin.rdx151 = fadd fast <4 x float> %i.it, %bin.rdx150
  %i.iv = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx151) ; 3 uses
  %cmp.n152 = icmp eq i64 %i.ha, %n.vec135
  br i1 %cmp.n152, label %._crit_edge266.i, label %vec.epilog.iter.check157

vec.epilog.iter.check157:                         ; preds = %middle.block149
  %min.epilog.iters.check158 = icmp eq i64 %i.hb, 0
  br i1 %min.epilog.iters.check158, label %.lr.ph265.i.preheader, label %vec.epilog.ph159, !prof !224

vec.epilog.ph159:                                 ; preds = %vector.main.loop.iter.check132, %vec.epilog.iter.check157
  %vec.epilog.resume.val153 = phi i64 [ %n.vec135, %vec.epilog.iter.check157 ], [ 0, %vector.main.loop.iter.check132 ]
  %bc.merge.rdx = phi float [ %i.iv, %vec.epilog.iter.check157 ], [ 0.000000e+00, %vector.main.loop.iter.check132 ]
  %n.vec160 = and i64 %i.ha, 8589934588           ; 4 uses
  %i.iw = trunc i64 %n.vec160 to i32
  %i.ix = add i32 %.185.lcssa.i, %i.iw
  %i.iy = shl nuw nsw i64 %n.vec160, 1
  %i.iz = getelementptr i8, ptr %.188.lcssa.i, i64 %i.iy
  %i.ja = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %broadcast.splatinsert161 = insertelement <4 x float> poison, float %.1214.i, i64 0
  %broadcast.splat162 = shufflevector <4 x float> %broadcast.splatinsert161, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body163

vec.epilog.vector.body163:                        ; preds = %vec.epilog.vector.body163, %vec.epilog.ph159
  %index164 = phi i64 [ %vec.epilog.resume.val153, %vec.epilog.ph159 ], [ %index.next168, %vec.epilog.vector.body163 ] ; 2 uses
  %vec.phi165 = phi <4 x float> [ %i.ja, %vec.epilog.ph159 ], [ %i.jk, %vec.epilog.vector.body163 ]
  %i.jb = shl i64 %index164, 1
  %next.gep166 = getelementptr i8, ptr %.188.lcssa.i, i64 %i.jb ; 2 uses
  %wide.load167 = load <4 x i16>, ptr %next.gep166, align 2, !tbaa !216
  %i.jc = zext <4 x i16> %wide.load167 to <4 x i32>
  %i.jd = shl nuw <4 x i32> %i.jc, splat (i32 16)
  %i.je = bitcast <4 x i32> %i.jd to <4 x float>
  %i.jf = fsub fast <4 x float> %i.je, %broadcast.splat162
  %i.jg = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.jf) ; 2 uses
  %i.jh = bitcast <4 x float> %i.jg to <4 x i32>
  %i.ji = lshr <4 x i32> %i.jh, splat (i32 16)
  %i.jj = trunc nuw nsw <4 x i32> %i.ji to <4 x i16>
  store <4 x i16> %i.jj, ptr %next.gep166, align 2, !tbaa !216
  %i.jk = fadd fast <4 x float> %i.jg, %vec.phi165 ; 2 uses
  %index.next168 = add nuw i64 %index164, 4       ; 2 uses
  %i.jl = icmp eq i64 %index.next168, %n.vec160
  br i1 %i.jl, label %vec.epilog.middle.block169, label %vec.epilog.vector.body163, !llvm.loop !327

vec.epilog.middle.block169:                       ; preds = %vec.epilog.vector.body163
  %i.jm = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.jk) ; 2 uses
  %cmp.n170 = icmp eq i64 %i.ha, %n.vec160
  br i1 %cmp.n170, label %._crit_edge266.i, label %.lr.ph265.i.preheader

.lr.ph265.i.preheader:                            ; preds = %iter.check155, %vec.epilog.iter.check157, %vec.epilog.middle.block169
  %.082264.i.ph = phi float [ 0.000000e+00, %iter.check155 ], [ %i.iv, %vec.epilog.iter.check157 ], [ %i.jm, %vec.epilog.middle.block169 ]
  %.286263.i.ph = phi i32 [ %.185.lcssa.i, %iter.check155 ], [ %i.hd, %vec.epilog.iter.check157 ], [ %i.ix, %vec.epilog.middle.block169 ]
  %.289262.i.ph = phi ptr [ %.188.lcssa.i, %iter.check155 ], [ %i.hf, %vec.epilog.iter.check157 ], [ %i.iz, %vec.epilog.middle.block169 ]
  br label %.lr.ph265.i

.lr.ph258.i:                                      ; preds = %.preheader227.i, %.lr.ph258.i
  %.185257.i = phi i32 [ %i.le, %.lr.ph258.i ], [ %.084.lcssa.i, %.preheader227.i ]
  %.188256.i = phi ptr [ %i.ld, %.lr.ph258.i ], [ %.087.lcssa.i, %.preheader227.i ] ; 3 uses
  %.0218255.i = phi <4 x float> [ %i.lc, %.lr.ph258.i ], [ zeroinitializer, %.preheader227.i ]
  %i.jn = load i64, ptr %.188256.i, align 1, !tbaa !54
  %i.jo = insertelement <2 x i64> poison, i64 %i.jn, i64 0
  %i.jp = bitcast <2 x i64> %i.jo to <8 x i16>
  %i.jq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jr = bitcast <8 x i16> %i.jq to <4 x float>
  %i.js = fsub fast <4 x float> %i.jr, %.2212.i
  %i.jt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.js, <4 x float> splat (float f0x42B0C0A5))
  %i.ju = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.jv = fmul fast <4 x float> %i.ju, splat (float f0x3FB8AA3B)
  %i.jw = fadd fast <4 x float> %i.jv, splat (float 5.000000e-01) ; 2 uses
  %i.jx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jw)
  %i.jy = sitofp fast <4 x i32> %i.jx to <4 x float> ; 2 uses
  %i.jz = fcmp fast olt <4 x float> %i.jw, %i.jy
  %i.ka = select <4 x i1> %i.jz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.kb = fsub fast <4 x float> %i.jy, %i.ka      ; 2 uses
  %i.kc = fmul fast <4 x float> %i.kb, splat (float f0x3F317218)
  %i.kd = fsub fast <4 x float> %i.ju, %i.kc      ; 8 uses
  %i.ke = fmul fast <4 x float> %i.kd, %i.kd
  %i.kf = fmul fast <4 x float> %i.kd, splat (float f0x39506967)
  %i.kg = fadd fast <4 x float> %i.kf, splat (float f0x3AB743CE)
  %i.kh = fmul fast <4 x float> %i.kg, %i.kd
  %i.ki = fadd fast <4 x float> %i.kh, splat (float f0x3C088908)
  %i.kj = fmul fast <4 x float> %i.ki, %i.kd
  %i.kk = fadd fast <4 x float> %i.kj, splat (float f0x3D2AA9C1)
  %i.kl = fmul fast <4 x float> %i.kk, %i.kd
  %i.km = fadd fast <4 x float> %i.kl, splat (float f0x3E2AAAAA)
  %i.kn = fmul fast <4 x float> %i.km, %i.kd
  %i.ko = fadd fast <4 x float> %i.kn, splat (float 5.000000e-01)
  %i.kp = fmul fast <4 x float> %i.ke, %i.ko
  %i.kq = fadd fast <4 x float> %i.kd, %i.kp
  %i.kr = fadd fast <4 x float> %i.kq, splat (float 1.000000e+00)
  %i.ks = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kb)
  %i.kt = shl <4 x i32> %i.ks, splat (i32 23)
  %i.ku = add <4 x i32> %i.kt, splat (i32 1065353216)
  %i.kv = bitcast <4 x i32> %i.ku to <4 x float>
  %i.kw = fmul fast <4 x float> %i.kr, %i.kv      ; 2 uses
  %i.kx = bitcast <4 x float> %i.kw to <4 x i32>
  %i.ky = lshr <4 x i32> %i.kx, splat (i32 16)
  %i.kz = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ky, <4 x i32> poison)
  %i.la = bitcast <8 x i16> %i.kz to <2 x i64>
  %i.lb = extractelement <2 x i64> %i.la, i64 0
  store i64 %i.lb, ptr %.188256.i, align 1, !tbaa !54
  %i.lc = fadd fast <4 x float> %i.kw, %.0218255.i ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.188256.i, i64 8 ; 2 uses
  %i.le = add nuw nsw i32 %.185257.i, 4           ; 3 uses
  %i.lf = or disjoint i32 %i.le, 3
  %i.lg = icmp slt i32 %i.lf, %i.an
  br i1 %i.lg, label %.lr.ph258.i, label %.preheader226.i, !llvm.loop !226

.lr.ph265.i:                                      ; preds = %.lr.ph265.i.preheader, %.lr.ph265.i
  %.082264.i = phi float [ %i.lq, %.lr.ph265.i ], [ %.082264.i.ph, %.lr.ph265.i.preheader ]
  %.286263.i = phi i32 [ %i.ls, %.lr.ph265.i ], [ %.286263.i.ph, %.lr.ph265.i.preheader ]
  %.289262.i = phi ptr [ %i.lr, %.lr.ph265.i ], [ %.289262.i.ph, %.lr.ph265.i.preheader ] ; 3 uses
  %i.lh = load i16, ptr %.289262.i, align 2, !tbaa !216
  %i.li = zext i16 %i.lh to i32
  %i.lj = shl nuw i32 %i.li, 16
  %i.lk = bitcast i32 %i.lj to float
  %i.ll = fsub fast float %i.lk, %.1214.i
  %i.lm = call fast float @llvm.exp.f32(float %i.ll) ; 2 uses
  %i.ln = bitcast float %i.lm to i32
  %i.lo = lshr i32 %i.ln, 16
  %i.lp = trunc nuw nsw i32 %i.lo to i16
  store i16 %i.lp, ptr %.289262.i, align 2, !tbaa !216
  %i.lq = fadd fast float %i.lm, %.082264.i       ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.289262.i, i64 2
  %i.ls = add nuw nsw i32 %.286263.i, 1           ; 2 uses
  %exitcond299.not.i = icmp eq i32 %i.ls, %i.an
  br i1 %exitcond299.not.i, label %._crit_edge266.i, label %.lr.ph265.i, !llvm.loop !328

._crit_edge266.i:                                 ; preds = %.lr.ph265.i, %middle.block149, %vec.epilog.middle.block169, %.preheader226.i
  %.082.lcssa.i = phi float [ 0.000000e+00, %.preheader226.i ], [ %i.jm, %vec.epilog.middle.block169 ], [ %i.iv, %middle.block149 ], [ %i.lq, %.lr.ph265.i ] ; 2 uses
  %i.lt = icmp eq i32 %i.al, 8
  br i1 %i.lt, label %.thread223.i, label %bb.f

.thread223.i:                                     ; preds = %._crit_edge266.i
  %i.lu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %.0215.lcssa.i) ; 2 uses
  %i.lv = fmul fast <8 x float> %i.lu, %.0215.lcssa.i
  %i.lw = fsub fast <8 x float> splat (float 2.000000e+00), %i.lv
  %i.lx = fmul fast <8 x float> %i.lw, %i.lu
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge266.i
  br i1 %i.dz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ly = shufflevector <8 x float> %.0215.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lz = shufflevector <8 x float> %.0215.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ma = fadd fast <4 x float> %i.lz, %i.ly
  %i.mb = fadd fast <4 x float> %i.ma, %.0218.lcssa.i ; 2 uses
  %i.mc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.mb) ; 2 uses
  %i.md = fmul fast <4 x float> %i.mc, %i.mb
  %i.me = fsub fast <4 x float> splat (float 2.000000e+00), %i.md
  %i.mf = fmul fast <4 x float> %i.me, %i.mc      ; 2 uses
  %i.mg = shufflevector <4 x float> %i.mf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread223.i
  %.1219.i = phi nsz <4 x float> [ %i.mf, %bb.g ], [ %.0218.lcssa.i, %bb.f ], [ %.0218.lcssa.i, %.thread223.i ] ; 3 uses
  %.2217.i = phi nsz <8 x float> [ %i.mg, %bb.g ], [ %.0215.lcssa.i, %bb.f ], [ %i.lx, %.thread223.i ] ; 3 uses
  br i1 %i.ey, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.mh = shufflevector <8 x float> %.2217.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mi = shufflevector <8 x float> %.2217.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mj = fadd fast <4 x float> %i.mh, %i.mi      ; 2 uses
  %i.mk = shufflevector <4 x float> %i.mj, <4 x float> %.1219.i, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.ml = shufflevector <4 x float> %i.mj, <4 x float> %.1219.i, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.mm = fadd fast <4 x float> %i.mk, %i.ml
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.082.lcssa.i, <4 x float> %i.mm)
  %i.mn = fdiv fast float 1.000000e+00, %op.rdx   ; 2 uses
  %i.mo = insertelement <4 x float> poison, float %i.mn, i64 0 ; 2 uses
  %i.mp = shufflevector <4 x float> %i.mo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mq = shufflevector <4 x float> %i.mo, <4 x float> poison, <8 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2220.i = phi nsz <4 x float> [ %i.mp, %bb.i ], [ %.1219.i, %bb.h ]
  %.3.i = phi nsz <8 x float> [ %i.mq, %bb.i ], [ %.2217.i, %bb.h ]
  %.183.i = phi nsz float [ %i.mn, %bb.i ], [ %.082.lcssa.i, %bb.h ] ; 3 uses
  br i1 %i.ao, label %.lr.ph271.i, label %.preheader225.i

.preheader225.loopexit.i:                         ; preds = %.lr.ph271.i
  %i.mr = and i32 %i.an, 2147483640
  br label %.preheader225.i

.preheader225.i:                                  ; preds = %.preheader225.loopexit.i, %bb.j
  %.073.lcssa.i = phi ptr [ %.146, %bb.j ], [ %i.ng, %.preheader225.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.mr, %.preheader225.loopexit.i ] ; 3 uses
  %i.ms = or disjoint i32 %.0.lcssa.i, 3
  %i.mt = icmp slt i32 %i.ms, %i.an
  br i1 %i.mt, label %.lr.ph276.i, label %.preheader.i

.lr.ph271.i:                                      ; preds = %bb.j, %.lr.ph271.i
  %.0269.i = phi i32 [ %i.nh, %.lr.ph271.i ], [ 0, %bb.j ]
  %.073268.i = phi ptr [ %i.ng, %.lr.ph271.i ], [ %.146, %bb.j ] ; 3 uses
  %i.mu = load <8 x i16>, ptr %.073268.i, align 1, !tbaa !54 ; 2 uses
  %i.mv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mx = shufflevector <8 x i16> %i.mv, <8 x i16> %i.mw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.my = bitcast <16 x i16> %i.mx to <8 x float>
  %i.mz = fmul fast <8 x float> %.3.i, %i.my
  %i.na = bitcast <8 x float> %i.mz to <8 x i32>  ; 2 uses
  %i.nb = shufflevector <8 x i32> %i.na, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nc = shufflevector <8 x i32> %i.na, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.nd = lshr <4 x i32> %i.nb, splat (i32 16)
  %i.ne = lshr <4 x i32> %i.nc, splat (i32 16)
  %i.nf = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.nd, <4 x i32> %i.ne)
  store <8 x i16> %i.nf, ptr %.073268.i, align 1, !tbaa !54
  %i.ng = getelementptr inbounds nuw i8, ptr %.073268.i, i64 16 ; 2 uses
  %i.nh = add nuw nsw i32 %.0269.i, 8             ; 2 uses
  %i.ni = or disjoint i32 %i.nh, 7
  %i.nj = icmp slt i32 %i.ni, %i.an
  br i1 %i.nj, label %.lr.ph271.i, label %.preheader225.loopexit.i, !llvm.loop !228

.preheader.i:                                     ; preds = %.lr.ph276.i, %.preheader225.i
  %.174.lcssa.i = phi ptr [ %.073.lcssa.i, %.preheader225.i ], [ %i.pb, %.lr.ph276.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader225.i ], [ %i.pc, %.lr.ph276.i ] ; 5 uses
  %i.nk = icmp slt i32 %.1.lcssa.i, %i.an
  br i1 %i.nk, label %iter.check, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit

iter.check:                                       ; preds = %.preheader.i
  %i.nl = xor i32 %.1.lcssa.i, -1
  %i.nm = add i32 %i.an, %i.nl                    ; 3 uses
  %i.nn = zext i32 %i.nm to i64
  %i.no = add nuw nsw i64 %i.nn, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.nm, 3
  br i1 %min.iters.check, label %.lr.ph281.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check119 = icmp ult i32 %i.nm, 15
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.np = and i64 %i.no, 12
  %n.vec = and i64 %i.no, 8589934576              ; 5 uses
  %i.nq = trunc i64 %n.vec to i32
  %i.nr = add i32 %.1.lcssa.i, %i.nq
  %i.ns = shl nuw nsw i64 %n.vec, 1
  %i.nt = getelementptr i8, ptr %.174.lcssa.i, i64 %i.ns
  %broadcast.splatinsert = insertelement <16 x float> poison, float %.183.i, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nu = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.174.lcssa.i, i64 %i.nu ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !216
  %i.nv = zext <16 x i16> %wide.load to <16 x i32>
  %i.nw = shl nuw <16 x i32> %i.nv, splat (i32 16)
  %i.nx = bitcast <16 x i32> %i.nw to <16 x float>
  %i.ny = fmul fast <16 x float> %broadcast.splat, %i.nx
  %i.nz = bitcast <16 x float> %i.ny to <16 x i32>
  %i.oa = lshr <16 x i32> %i.nz, splat (i32 16)
  %i.ob = trunc nuw <16 x i32> %i.oa to <16 x i16>
  store <16 x i16> %i.ob, ptr %next.gep, align 2, !tbaa !216
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.oc = icmp eq i64 %index.next, %n.vec
  br i1 %i.oc, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.no, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL17softmax_bf16s_sseEPtii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.np, 0
  br i1 %min.epilog.iters.check, label %.lr.ph281.i.preheader, label %vec.epilog.ph, !prof !224

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec121 = and i64 %i.no, 8589934588           ; 4 uses
  %i.od = trunc i64 %n.vec121 to i32
  %i.oe = add i32 %.1.lcssa.i, %i.od
  %i.of = shl nuw nsw i64 %n.vec121, 1
  %i.og = getelementptr i8, ptr %.174.lcssa.i, i64 %i.of
  %broadcast.splatinsert122 = insertelement <4 x float> poison, float %.183.i, i64 0
  %broadcast.splat123 = shufflevector <4 x float> %broadcast.splatinsert122, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 2 uses
  %i.oh = shl i64 %index124, 1
  %next.gep125 = getelementptr i8, ptr %.174.lcssa.i, i64 %i.oh ; 2 uses
  %wide.load126 = load <4 x i16>, ptr %next.gep125, align 2, !tbaa !216
  %i.oi = zext <4 x i16> %wide.load126 to <4 x i32>
  %i.oj = shl nuw <4 x i32> %i.oi, splat (i32 16)
  %i.ok = bitcast <4 x i32> %i.oj to <4 x float>
  %i.ol = fmul fast <4 x float> %broadcast.splat123, %i.ok
  %i.om = bitcast <4 x float> %i.ol to <4 x i32>
  %i.on = lshr <4 x i32> %i.om, splat (i32 16)
  %i.oo = trunc nuw <4 x i32> %i.on to <4 x i16>
end_hunk_10
