Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN6LibRaw18recover_highlightsEv:bb.a
  %wide.load465 = load <8 x float>, ptr %i.k, align 4, !tbaa !11
  %wide.load466 = load <8 x float>, ptr %i.l, align 4, !tbaa !11
  %wide.load467 = load <8 x float>, ptr %i.m, align 4, !tbaa !11
  %i.n = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, splat (float 3.200000e+04)
  %i.o = fmul reassoc nsz arcp contract afn <8 x float> %wide.load465, splat (float 3.200000e+04)
  %i.p = fmul reassoc nsz arcp contract afn <8 x float> %wide.load466, splat (float 3.200000e+04)
  %i.q = fmul reassoc nsz arcp contract afn <8 x float> %wide.load467, splat (float 3.200000e+04)
  %i.r = fptosi <8 x float> %i.n to <8 x i32>
  %i.s = fptosi <8 x float> %i.o to <8 x i32>
  %i.t = fptosi <8 x float> %i.p to <8 x i32>
  %i.u = fptosi <8 x float> %i.q to <8 x i32>
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store <8 x i32> %i.r, ptr %i.v, align 16, !tbaa !111
  store <8 x i32> %i.s, ptr %i.w, align 16, !tbaa !111
  store <8 x i32> %i.t, ptr %i.x, align 16, !tbaa !111
  store <8 x i32> %i.u, ptr %i.y, align 16, !tbaa !111
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !253

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph213.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !117

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec468 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index469 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next471, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index469
  %wide.load470 = load <4 x float>, ptr %i.aa, align 4, !tbaa !11
  %i.ab = fmul reassoc nsz arcp contract afn <4 x float> %wide.load470, splat (float 3.200000e+04)
  %i.ac = fptosi <4 x float> %i.ab to <4 x i32>
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index469
  store <4 x i32> %i.ac, ptr %i.ad, align 16, !tbaa !111
  %index.next471 = add nuw i64 %index469, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next471, %n.vec468
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !254

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n472 = icmp eq i64 %n.vec468, %wide.trip.count
  br i1 %cmp.n472, label %.lr.ph213.preheader, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec468, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.lr.ph213.preheader:                              ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %wide.trip.count297 = zext i32 %i.g to i64
  br label %.lr.ph213

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.ag = load float, ptr %i.af, align 4, !tbaa !11
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, 3.200000e+04
  %i.ai = fptosi float %i.ah to i32
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !111
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph213.preheader, label %vec.epilog.scalar.ph, !llvm.loop !255

bb.b:                                             ; preds = %.lr.ph213
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %.preheader207, label %.lr.ph213, !llvm.loop !256

.preheader207:                                    ; preds = %bb.b
  %.not458 = icmp eq i32 %i.g, 1
  br i1 %.not458, label %._crit_edge, label %.lr.ph216

.lr.ph216:                                        ; preds = %.preheader207
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 10 uses
  %.pre = load float, ptr %i.ak, align 4, !tbaa !11 ; 2 uses
  %i.al = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.al, 7                    ; 3 uses
  %i.am = add i32 %i.g, -2
  %i.an = icmp ult i32 %i.am, 7
  br i1 %i.an, label %.epil.preheader, label %.lr.ph216.new

.lr.ph216.new:                                    ; preds = %.lr.ph216
  %unroll_iter = and i64 %i.al, -8
  br label %bb.c

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %bb.b
  %indvars.iv294 = phi i64 [ 0, %.lr.ph213.preheader ], [ %indvars.iv.next295, %bb.b ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv294
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !111
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %.loopexit209, label %bb.b

bb.c:                                             ; preds = %bb.c, %.lr.ph216.new
  %i.ar = phi float [ %.pre, %.lr.ph216.new ], [ %i.cf, %bb.c ] ; 2 uses
  %indvars.iv299 = phi i64 [ 1, %.lr.ph216.new ], [ %indvars.iv.next300.7, %bb.c ] ; 10 uses
  %.0156214 = phi i32 [ 0, %.lr.ph216.new ], [ %spec.select.7, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph216.new ], [ %niter.next.7, %bb.c ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv299
  %i.at = load float, ptr %i.as, align 4, !tbaa !11 ; 2 uses
  %i.au = fcmp reassoc nsz arcp contract afn olt float %i.ar, %i.at ; 2 uses
  %i.av = trunc nuw i64 %indvars.iv299 to i32
  %spec.select = select i1 %i.au, i32 %i.av, i32 %.0156214
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %i.aw = select i1 %i.au, float %i.at, float %i.ar ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next300
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !11 ; 2 uses
  %i.az = fcmp reassoc nsz arcp contract afn olt float %i.aw, %i.ay ; 2 uses
  %i.ba = trunc nuw i64 %indvars.iv.next300 to i32
  %spec.select.1 = select i1 %i.az, i32 %i.ba, i32 %spec.select
  %indvars.iv.next300.1 = add nuw nsw i64 %indvars.iv299, 2 ; 2 uses
  %i.bb = select i1 %i.az, float %i.ay, float %i.aw ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next300.1
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !11 ; 2 uses
  %i.be = fcmp reassoc nsz arcp contract afn olt float %i.bb, %i.bd ; 2 uses
  %i.bf = trunc nuw i64 %indvars.iv.next300.1 to i32
  %spec.select.2 = select i1 %i.be, i32 %i.bf, i32 %spec.select.1
  %indvars.iv.next300.2 = add nuw nsw i64 %indvars.iv299, 3 ; 2 uses
  %i.bg = select i1 %i.be, float %i.bd, float %i.bb ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next300.2
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !11 ; 2 uses
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %i.bg, %i.bi ; 2 uses
  %i.bk = trunc nuw i64 %indvars.iv.next300.2 to i32
  %spec.select.3 = select i1 %i.bj, i32 %i.bk, i32 %spec.select.2
  %indvars.iv.next300.3 = add nuw nsw i64 %indvars.iv299, 4 ; 2 uses
  %i.bl = select i1 %i.bj, float %i.bi, float %i.bg ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next300.3
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !11 ; 2 uses
  %i.bo = fcmp reassoc nsz arcp contract afn olt float %i.bl, %i.bn ; 2 uses
  %i.bp = trunc nuw i64 %indvars.iv.next300.3 to i32
  %spec.select.4 = select i1 %i.bo, i32 %i.bp, i32 %spec.select.3
  %indvars.iv.next300.4 = add nuw nsw i64 %indvars.iv299, 5 ; 2 uses
  %i.bq = select i1 %i.bo, float %i.bn, float %i.bl ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next300.4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !11 ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn olt float %i.bq, %i.bs ; 2 uses
  %i.bu = trunc nuw i64 %indvars.iv.next300.4 to i32
  %spec.select.5 = select i1 %i.bt, i32 %i.bu, i32 %spec.select.4
  %indvars.iv.next300.5 = add nuw nsw i64 %indvars.iv299, 6 ; 2 uses
  %i.bv = select i1 %i.bt, float %i.bs, float %i.bq ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next300.5
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !11 ; 2 uses
  %i.by = fcmp reassoc nsz arcp contract afn olt float %i.bv, %i.bx ; 2 uses
  %i.bz = trunc nuw i64 %indvars.iv.next300.5 to i32
  %spec.select.6 = select i1 %i.by, i32 %i.bz, i32 %spec.select.5
  %indvars.iv.next300.6 = add nuw nsw i64 %indvars.iv299, 7 ; 2 uses
  %i.ca = select i1 %i.by, float %i.bx, float %i.bv ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next300.6
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !11 ; 2 uses
  %i.cd = fcmp reassoc nsz arcp contract afn olt float %i.ca, %i.cc ; 2 uses
  %i.ce = trunc nuw i64 %indvars.iv.next300.6 to i32
  %spec.select.7 = select i1 %i.cd, i32 %i.ce, i32 %spec.select.6 ; 3 uses
  %indvars.iv.next300.7 = add nuw nsw i64 %indvars.iv299, 8 ; 2 uses
  %i.cf = select i1 %i.cd, float %i.cc, float %i.ca ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !257

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph216
  %.epil.init = phi float [ %.pre, %.lr.ph216 ], [ %i.cf, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv299.epil.init = phi i64 [ 1, %.lr.ph216 ], [ %indvars.iv.next300.7, %._crit_edge.loopexit.unr-lcssa ]
  %.0156214.epil.init = phi i32 [ 0, %.lr.ph216 ], [ %spec.select.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod544 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod544)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.cg = phi float [ %.epil.init, %.epil.preheader ], [ %i.cl, %bb.d ] ; 2 uses
  %indvars.iv299.epil = phi i64 [ %indvars.iv299.epil.init, %.epil.preheader ], [ %indvars.iv.next300.epil, %bb.d ] ; 3 uses
  %.0156214.epil = phi i32 [ %.0156214.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv299.epil
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !11 ; 2 uses
  %i.cj = fcmp reassoc nsz arcp contract afn olt float %i.cg, %i.ci ; 2 uses
  %i.ck = trunc nuw i64 %indvars.iv299.epil to i32
  %spec.select.epil = select i1 %i.cj, i32 %i.ck, i32 %.0156214.epil ; 2 uses
  %indvars.iv.next300.epil = add nuw nsw i64 %indvars.iv299.epil, 1
  %i.cl = select i1 %i.cj, float %i.ci, float %i.cg
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !258

._crit_edge.loopexit:                             ; preds = %bb.d, %._crit_edge.loopexit.unr-lcssa
  %spec.select.lcssa = phi i32 [ %spec.select.7, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.d ]
  %i.cm = zext i32 %spec.select.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit, %.preheader207
  %.0156.lcssa = phi i64 [ 0, %.preheader207 ], [ %i.cm, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.co = load i16, ptr %i.cn, align 4, !tbaa !206
  %i.cp = zext i16 %i.co to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 381668 ; 4 uses
  %i.cr = load i16, ptr %i.cq, align 4, !tbaa !210
  %i.cs = zext nneg i16 %i.cr to i32
  %i.ct = sub nsw i32 2, %i.cs                    ; 2 uses
  %i.cu = lshr i32 %i.cp, %i.ct                   ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !207
  %i.cx = zext i16 %i.cw to i32
  %i.cy = lshr i32 %i.cx, %i.ct                   ; 10 uses
  %i.cz = zext nneg i32 %i.cu to i64              ; 6 uses
  %i.da = shl nuw nsw i32 %i.cy, 2
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.cz, i64 noundef %i.db) ; 19 uses
  %i.dd = load i32, ptr %i.f, align 4, !tbaa !112 ; 2 uses
  %.not284 = icmp eq i32 %i.dd, 0
  br i1 %.not284, label %._crit_edge279, label %.lr.ph278

.lr.ph278:                                        ; preds = %._crit_edge
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 768264
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.dg = mul nuw i32 %i.cu, %i.cy                ; 5 uses
  %i.dh = zext i32 %i.dg to i64                   ; 10 uses
  %i.di = shl nuw nsw i64 %i.dh, 2
  %.not285 = icmp eq i32 %i.cu, 0                 ; 3 uses
  %.not286 = icmp eq i32 %i.cy, 0                 ; 3 uses
  %i.dj = fdiv reassoc nsz arcp contract afn float 3.200000e+01, %exp2
  %i.dk = fptosi float %i.dj to i32               ; 2 uses
  %i.dl = icmp sgt i32 %i.dg, 0                   ; 2 uses
  %i.dm = zext nneg i32 %i.cy to i64              ; 17 uses
  %brmerge = or i1 %.not285, %.not286
  %min.iters.check512 = icmp samesign ult i32 %i.cy, 4
  %min.iters.check514 = icmp samesign ult i32 %i.cy, 32
  %i.dn = and i64 %i.dm, 28
  %n.vec516 = and i64 %i.dm, 65504                ; 4 uses
  %cmp.n521 = icmp eq i64 %n.vec516, %i.dm
  %min.epilog.iters.check526 = icmp eq i64 %i.dn, 0
  %n.vec528 = and i64 %i.dm, 65532                ; 3 uses
  %cmp.n533 = icmp eq i64 %n.vec528, %i.dm
  %.not199462 = icmp eq i32 %i.dk, 0
  %min.iters.check501 = icmp ult i32 %i.dg, 24
  %n.vec503 = and i64 %i.dh, 2147483640           ; 3 uses
  %cmp.n509 = icmp eq i64 %n.vec503, %i.dh
  %min.iters.check473 = icmp ult i32 %i.dg, 4
  %min.iters.check475 = icmp ult i32 %i.dg, 32
  %i.do = and i64 %i.dh, 28
  %n.vec477 = and i64 %i.dh, 2147483616           ; 4 uses
  %cmp.n486 = icmp eq i64 %n.vec477, %i.dh
  %min.epilog.iters.check491 = icmp eq i64 %i.do, 0
  %n.vec493 = and i64 %i.dh, 2147483644           ; 3 uses
  %cmp.n499 = icmp eq i64 %n.vec493, %i.dh
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph278, %.loopexit
  %indvars.iv369 = phi i64 [ 0, %.lr.ph278 ], [ %indvars.iv.next370, %.loopexit ] ; 13 uses
  %i.dp = phi i32 [ %i.dd, %.lr.ph278 ], [ %i.nn, %.loopexit ]
  %.not = icmp eq i64 %indvars.iv369, %.0156.lcssa
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dq = load ptr, ptr %i.de, align 8, !tbaa !214 ; 2 uses
  %.not197 = icmp eq ptr %i.dq, null
  br i1 %.not197, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dr = load ptr, ptr %i.df, align 8, !tbaa !215
  %i.ds = trunc nuw i64 %indvars.iv369 to i32
  %i.dt = add i32 %i.ds, -1
  %i.du = add nsw i32 %i.dp, -1
  %i.dv = tail call noundef i32 %i.dq(ptr noundef %i.dr, i32 noundef 16384, i32 noundef %i.dt, i32 noundef %i.du)
  %.not198 = icmp eq i32 %i.dv, 0
  br i1 %.not198, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dw = tail call ptr @__cxa_allocate_exception(i64 4) #10 ; 2 uses
  store i32 6, ptr %i.dw, align 16, !tbaa !216
  tail call void @__cxa_throw(ptr nonnull %i.dw, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #11
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dc, i8 0, i64 %i.di, i1 false)
  br i1 %.not285, label %._crit_edge247.split, label %.preheader205.lr.ph

.preheader205.lr.ph:                              ; preds = %bb.i
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv369
  br i1 %.not286, label %._crit_edge247.split, label %.preheader205.lr.ph.split

.preheader205.lr.ph.split:                        ; preds = %.preheader205.lr.ph
  %i.dy = load i16, ptr %i.cq, align 4, !tbaa !210 ; 2 uses
  %i.dz = zext nneg i16 %i.dy to i32
  %i.ea = lshr i32 4, %i.dz                       ; 5 uses
  %i.eb = mul nuw nsw i32 %i.ea, %i.ea
  %i.ec = icmp ugt i16 %i.dy, 2
  %i.ed = zext nneg i32 %i.ea to i64              ; 7 uses
  br label %.preheader205

.preheader205:                                    ; preds = %.preheader205.lr.ph.split, %._crit_edge242
  %indvars.iv330 = phi i64 [ 0, %.preheader205.lr.ph.split ], [ %indvars.iv.next331, %._crit_edge242 ] ; 3 uses
  %indvars.iv318 = phi i32 [ %i.ea, %.preheader205.lr.ph.split ], [ %indvars.iv.next319, %._crit_edge242 ] ; 2 uses
  %i.ee = mul nuw nsw i64 %indvars.iv330, %i.ed   ; 2 uses
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 3 uses
  %i.ef = mul nuw nsw i64 %indvars.iv.next331, %i.ed
  %i.eg = icmp samesign ult i64 %i.ee, %i.ef
  %i.eh = mul nuw nsw i64 %indvars.iv330, %i.dm   ; 2 uses
  br i1 %i.eg, label %.lr.ph233.us.preheader, label %.lr.ph241.split

.lr.ph233.us.preheader:                           ; preds = %.preheader205
  %i.ei = trunc nuw nsw i64 %i.ee to i32
  %invariant.gep446 = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.eh
  br label %.lr.ph233.us

.lr.ph233.us:                                     ; preds = %.lr.ph233.us.preheader, %bb.k
  %indvars.iv323 = phi i64 [ 0, %.lr.ph233.us.preheader ], [ %indvars.iv.next324, %bb.k ] ; 3 uses
  %indvars.iv321 = phi i64 [ %i.ed, %.lr.ph233.us.preheader ], [ %indvars.iv.next322, %bb.k ] ; 7 uses
  %indvars.iv309 = phi i64 [ 0, %.lr.ph233.us.preheader ], [ %indvars.iv.next310, %bb.k ] ; 8 uses
  %i.ej = mul nuw nsw i64 %indvars.iv323, %i.ed
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 3 uses
  %i.ek = mul nuw nsw i64 %indvars.iv.next324, %i.ed
  %i.el = icmp samesign ult i64 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph233.split.us.us, label %._crit_edge234.us

bb.j:                                             ; preds = %._crit_edge234.us
  %i.em = fdiv reassoc nsz arcp contract afn float %.us-phi.us, %.us-phi238.us
  %gep447 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep446, i64 %indvars.iv323
  store float %i.em, ptr %gep447, align 4, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge234.us
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, %i.ed
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, %i.ed
  %exitcond329.not = icmp eq i64 %indvars.iv.next324, %i.dm
  br i1 %exitcond329.not, label %._crit_edge242, label %.lr.ph233.us, !llvm.loop !259

._crit_edge234.us:                                ; preds = %._crit_edge224.us.us, %.lr.ph233.us
  %.us-phi.us = phi float [ 0.000000e+00, %.lr.ph233.us ], [ %.2182.us.us.lcssa, %._crit_edge224.us.us ]
  %.us-phi238.us = phi float [ 0.000000e+00, %.lr.ph233.us ], [ %.2179.us.us.lcssa, %._crit_edge224.us.us ]
  %.us-phi239.us = phi i32 [ 0, %.lr.ph233.us ], [ %.2175.us.us.lcssa, %._crit_edge224.us.us ]
  %i.en = icmp eq i32 %.us-phi239.us, %i.eb
  br i1 %i.en, label %bb.j, label %bb.k

.lr.ph233.split.us.us:                            ; preds = %.lr.ph233.us
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !114 ; 7 uses
  %i.ep = load i16, ptr %i.cv, align 2, !tbaa !207
  %i.eq = zext i16 %i.ep to i32
  %i.er = load i32, ptr %i.dx, align 4, !tbaa !111 ; 7 uses
  %i.es = trunc nuw nsw i64 %indvars.iv309 to i32
  %indvars.iv.next312.prol = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %exitcond317.not = icmp eq i64 %indvars.iv.next312.prol, %indvars.iv321
  %1 = trunc nuw nsw i64 %indvars.iv.next312.prol to i32
  %indvars.iv.next312.1 = add nuw nsw i64 %indvars.iv309, 2 ; 2 uses
  %exitcond317.not.1 = icmp eq i64 %indvars.iv.next312.1, %indvars.iv321
  %2 = trunc nuw nsw i64 %indvars.iv.next312.1 to i32
  %indvars.iv.next312.2 = add nuw nsw i64 %indvars.iv309, 3 ; 2 uses
  %exitcond317.not.2 = icmp eq i64 %indvars.iv.next312.2, %indvars.iv321
  %3 = trunc nuw nsw i64 %indvars.iv.next312.2 to i32
  %indvars.iv.next312.3 = add nuw nsw i64 %indvars.iv309, 4 ; 2 uses
  %exitcond317.not.3 = icmp eq i64 %indvars.iv.next312.3, %indvars.iv321
  %4 = trunc nuw nsw i64 %indvars.iv.next312.3 to i32
  %indvars.iv.next312.4 = add nuw nsw i64 %indvars.iv309, 5 ; 2 uses
  %exitcond317.not.4 = icmp eq i64 %indvars.iv.next312.4, %indvars.iv321
  %5 = trunc nuw nsw i64 %indvars.iv.next312.4 to i32
  %indvars.iv.next312.5 = add nuw nsw i64 %indvars.iv309, 6 ; 2 uses
  %exitcond317.not.5 = icmp eq i64 %indvars.iv.next312.5, %indvars.iv321
  %6 = trunc nuw nsw i64 %indvars.iv.next312.5 to i32
  br label %.lr.ph223.us.us

.lr.ph223.us.us:                                  ; preds = %._crit_edge224.us.us, %.lr.ph233.split.us.us
  %.0160231.us.us = phi i32 [ %i.ei, %.lr.ph233.split.us.us ], [ %i.gp, %._crit_edge224.us.us ] ; 2 uses
  %.0173230.us.us = phi i32 [ 0, %.lr.ph233.split.us.us ], [ %.2175.us.us.lcssa, %._crit_edge224.us.us ] ; 3 uses
  %.0177229.us.us = phi float [ 0.000000e+00, %.lr.ph233.split.us.us ], [ %.2179.us.us.lcssa, %._crit_edge224.us.us ] ; 3 uses
  %.0180228.us.us = phi float [ 0.000000e+00, %.lr.ph233.split.us.us ], [ %.2182.us.us.lcssa, %._crit_edge224.us.us ] ; 3 uses
  %i.et = mul i32 %.0160231.us.us, %i.eq          ; 7 uses
  %7 = add i32 %i.et, %i.es
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %8 ; 2 uses
  %10 = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %indvars.iv369
  %11 = load i16, ptr %10, align 2, !tbaa !115    ; 2 uses
  %12 = zext i16 %11 to i32
  %13 = sdiv i32 %12, %i.er
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %25

15:                                               ; preds = %.lr.ph223.us.us
  %16 = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %.0156.lcssa
  %17 = load i16, ptr %16, align 2, !tbaa !115    ; 2 uses
  %18 = icmp ugt i16 %17, 24000
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = uitofp i16 %11 to float
  %21 = fadd reassoc nsz arcp contract afn float %.0180228.us.us, %20
  %22 = uitofp i16 %17 to float
  %23 = fadd reassoc nsz arcp contract afn float %.0177229.us.us, %22
  %24 = add nsw i32 %.0173230.us.us, 1
  br label %25

25:                                               ; preds = %19, %15, %.lr.ph223.us.us
  %.2182.us.us = phi nsz float [ %21, %19 ], [ %.0180228.us.us, %15 ], [ %.0180228.us.us, %.lr.ph223.us.us ] ; 4 uses
  %.2179.us.us = phi nsz float [ %23, %19 ], [ %.0177229.us.us, %15 ], [ %.0177229.us.us, %.lr.ph223.us.us ] ; 4 uses
  %.2175.us.us = phi i32 [ %24, %19 ], [ %.0173230.us.us, %15 ], [ %.0173230.us.us, %.lr.ph223.us.us ] ; 4 uses
  br i1 %exitcond317.not, label %._crit_edge224.us.us, label %26

26:                                               ; preds = %25
  %27 = add i32 %i.et, %1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %28 ; 2 uses
  %30 = getelementptr inbounds nuw [2 x i8], ptr %29, i64 %indvars.iv369
  %31 = load i16, ptr %30, align 2, !tbaa !115    ; 2 uses
  %32 = zext i16 %31 to i32
  %33 = sdiv i32 %32, %i.er
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %45

35:                                               ; preds = %26
  %36 = getelementptr inbounds nuw [2 x i8], ptr %29, i64 %.0156.lcssa
  %37 = load i16, ptr %36, align 2, !tbaa !115    ; 2 uses
  %38 = icmp ugt i16 %37, 24000
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = uitofp i16 %31 to float
  %41 = fadd reassoc nsz arcp contract afn float %.2182.us.us, %40
  %42 = uitofp i16 %37 to float
  %43 = fadd reassoc nsz arcp contract afn float %.2179.us.us, %42
  %44 = add nsw i32 %.2175.us.us, 1
  br label %45

45:                                               ; preds = %39, %35, %26
  %.2182.us.us.1 = phi nsz float [ %41, %39 ], [ %.2182.us.us, %35 ], [ %.2182.us.us, %26 ] ; 4 uses
  %.2179.us.us.1 = phi nsz float [ %43, %39 ], [ %.2179.us.us, %35 ], [ %.2179.us.us, %26 ] ; 4 uses
  %.2175.us.us.1 = phi i32 [ %44, %39 ], [ %.2175.us.us, %35 ], [ %.2175.us.us, %26 ] ; 4 uses
  br i1 %exitcond317.not.1, label %._crit_edge224.us.us, label %.prol.preheader

.prol.preheader:                                  ; preds = %45
  %i.eu = add i32 %i.et, %2
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %indvars.iv369
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !115 ; 2 uses
  %i.ez = zext i16 %i.ey to i32
  %i.fa = sdiv i32 %i.ez, %i.er
  %i.fb = icmp eq i32 %i.fa, 1
  br i1 %i.fb, label %bb.l, label %46

bb.l:                                             ; preds = %.prol.preheader
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %.0156.lcssa
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !115 ; 2 uses
  %i.fe = icmp ugt i16 %i.fd, 24000
  br i1 %i.fe, label %bb.m, label %46

bb.m:                                             ; preds = %bb.l
  %i.ff = uitofp i16 %i.ey to float
  %i.fg = fadd reassoc nsz arcp contract afn float %.2182.us.us.1, %i.ff
  %i.fh = uitofp i16 %i.fd to float
  %i.fi = fadd reassoc nsz arcp contract afn float %.2179.us.us.1, %i.fh
  %i.fj = add nsw i32 %.2175.us.us.1, 1
  br label %46

46:                                               ; preds = %bb.m, %bb.l, %.prol.preheader
  %.2182.us.us.2 = phi nsz float [ %i.fg, %bb.m ], [ %.2182.us.us.1, %bb.l ], [ %.2182.us.us.1, %.prol.preheader ] ; 4 uses
  %.2179.us.us.2 = phi nsz float [ %i.fi, %bb.m ], [ %.2179.us.us.1, %bb.l ], [ %.2179.us.us.1, %.prol.preheader ] ; 4 uses
  %.2175.us.us.2 = phi i32 [ %i.fj, %bb.m ], [ %.2175.us.us.1, %bb.l ], [ %.2175.us.us.1, %.prol.preheader ] ; 4 uses
  br i1 %exitcond317.not.2, label %._crit_edge224.us.us, label %.prol.loopexit

.prol.loopexit:                                   ; preds = %46
  %47 = add i32 %i.et, %3
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %48 ; 2 uses
  %50 = getelementptr inbounds nuw [2 x i8], ptr %49, i64 %indvars.iv369
  %51 = load i16, ptr %50, align 2, !tbaa !115    ; 2 uses
  %52 = zext i16 %51 to i32
  %53 = sdiv i32 %52, %i.er
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %63

55:                                               ; preds = %.prol.loopexit
  %56 = getelementptr inbounds nuw [2 x i8], ptr %49, i64 %.0156.lcssa
  %57 = load i16, ptr %56, align 2, !tbaa !115    ; 2 uses
  %58 = icmp ugt i16 %57, 24000
  br i1 %58, label %.lr.ph223.us.us.new, label %63

.lr.ph223.us.us.new:                              ; preds = %55
  %59 = uitofp i16 %51 to float
  %60 = fadd reassoc nsz arcp contract afn float %.2182.us.us.2, %59
  %61 = uitofp i16 %57 to float
  %62 = fadd reassoc nsz arcp contract afn float %.2179.us.us.2, %61
  %invariant.op = add nsw i32 %.2175.us.us.2, 1
  br label %63

63:                                               ; preds = %.lr.ph223.us.us.new, %55, %.prol.loopexit
  %.2182.us.us.3 = phi nsz float [ %60, %.lr.ph223.us.us.new ], [ %.2182.us.us.2, %55 ], [ %.2182.us.us.2, %.prol.loopexit ] ; 4 uses
  %.2179.us.us.3 = phi nsz float [ %62, %.lr.ph223.us.us.new ], [ %.2179.us.us.2, %55 ], [ %.2179.us.us.2, %.prol.loopexit ] ; 4 uses
  %.2175.us.us.3 = phi i32 [ %invariant.op, %.lr.ph223.us.us.new ], [ %.2175.us.us.2, %55 ], [ %.2175.us.us.2, %.prol.loopexit ] ; 4 uses
  br i1 %exitcond317.not.3, label %._crit_edge224.us.us, label %bb.n

bb.n:                                             ; preds = %63
  %i.fk = add i32 %i.et, %4
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %indvars.iv369
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !115 ; 2 uses
  %i.fp = zext i16 %i.fo to i32
  %i.fq = sdiv i32 %i.fp, %i.er
  %i.fr = icmp eq i32 %i.fq, 1
  br i1 %i.fr, label %bb.o, label %64

bb.o:                                             ; preds = %bb.n
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %.0156.lcssa
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !115 ; 2 uses
  %i.fu = icmp ugt i16 %i.ft, 24000
  br i1 %i.fu, label %bb.p, label %64

bb.p:                                             ; preds = %bb.o
  %i.fv = uitofp i16 %i.fo to float
  %i.fw = fadd reassoc nsz arcp contract afn float %.2182.us.us.3, %i.fv
  %i.fx = uitofp i16 %i.ft to float
  %i.fy = fadd reassoc nsz arcp contract afn float %.2179.us.us.3, %i.fx
  %i.fz = add nsw i32 %.2175.us.us.3, 1
  br label %64

64:                                               ; preds = %bb.p, %bb.o, %bb.n
  %.2182.us.us.4 = phi nsz float [ %i.fw, %bb.p ], [ %.2182.us.us.3, %bb.o ], [ %.2182.us.us.3, %bb.n ] ; 4 uses
  %.2179.us.us.4 = phi nsz float [ %i.fy, %bb.p ], [ %.2179.us.us.3, %bb.o ], [ %.2179.us.us.3, %bb.n ] ; 4 uses
  %.2175.us.us.4 = phi i32 [ %i.fz, %bb.p ], [ %.2175.us.us.3, %bb.o ], [ %.2175.us.us.3, %bb.n ] ; 4 uses
  br i1 %exitcond317.not.4, label %._crit_edge224.us.us, label %bb.q

bb.q:                                             ; preds = %64
  %.reass = add i32 %i.et, %5
  %i.ga = zext i32 %.reass to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.gb, i64 %indvars.iv369
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !115 ; 2 uses
  %i.ge = zext i16 %i.gd to i32
  %i.gf = sdiv i32 %i.ge, %i.er
  %i.gg = icmp eq i32 %i.gf, 1
  br i1 %i.gg, label %bb.r, label %65

bb.r:                                             ; preds = %bb.q
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.gb, i64 %.0156.lcssa
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !115 ; 2 uses
  %i.gj = icmp ugt i16 %i.gi, 24000
  br i1 %i.gj, label %bb.s, label %65

bb.s:                                             ; preds = %bb.r
  %i.gk = uitofp i16 %i.gd to float
  %i.gl = fadd reassoc nsz arcp contract afn float %.2182.us.us.4, %i.gk
  %i.gm = uitofp i16 %i.gi to float
  %i.gn = fadd reassoc nsz arcp contract afn float %.2179.us.us.4, %i.gm
  %i.go = add nsw i32 %.2175.us.us.4, 1
  br label %65

65:                                               ; preds = %bb.s, %bb.r, %bb.q
  %.2182.us.us.5 = phi nsz float [ %i.gl, %bb.s ], [ %.2182.us.us.4, %bb.r ], [ %.2182.us.us.4, %bb.q ] ; 4 uses
  %.2179.us.us.5 = phi nsz float [ %i.gn, %bb.s ], [ %.2179.us.us.4, %bb.r ], [ %.2179.us.us.4, %bb.q ] ; 4 uses
  %.2175.us.us.5 = phi i32 [ %i.go, %bb.s ], [ %.2175.us.us.4, %bb.r ], [ %.2175.us.us.4, %bb.q ] ; 4 uses
  br i1 %exitcond317.not.5, label %._crit_edge224.us.us, label %bb.t

bb.t:                                             ; preds = %65
  %66 = add i32 %i.et, %6
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %67 ; 2 uses
  %69 = getelementptr inbounds nuw [2 x i8], ptr %68, i64 %indvars.iv369
  %70 = load i16, ptr %69, align 2, !tbaa !115    ; 2 uses
  %71 = zext i16 %70 to i32
  %72 = sdiv i32 %71, %i.er
  %exitcond317.not.1.a = icmp eq i32 %72, 1
  br i1 %exitcond317.not.1.a, label %73, label %._crit_edge224.us.us

73:                                               ; preds = %bb.t
  %74 = getelementptr inbounds nuw [2 x i8], ptr %68, i64 %.0156.lcssa
  %75 = load i16, ptr %74, align 2, !tbaa !115    ; 2 uses
  %76 = icmp ugt i16 %75, 24000
  br i1 %76, label %77, label %._crit_edge224.us.us

77:                                               ; preds = %73
  %78 = uitofp i16 %70 to float
  %79 = fadd reassoc nsz arcp contract afn float %.2182.us.us.5, %78
  %80 = uitofp i16 %75 to float
  %81 = fadd reassoc nsz arcp contract afn float %.2179.us.us.5, %80
  %82 = add nsw i32 %.2175.us.us.5, 1
  br label %._crit_edge224.us.us

._crit_edge224.us.us:                             ; preds = %bb.t, %73, %77, %65, %64, %63, %46, %45, %25
  %.2182.us.us.lcssa = phi float [ %.2182.us.us, %25 ], [ %.2182.us.us.1, %45 ], [ %.2182.us.us.2, %46 ], [ %.2182.us.us.3, %63 ], [ %.2182.us.us.4, %64 ], [ %.2182.us.us.5, %65 ], [ %79, %77 ], [ %.2182.us.us.5, %73 ], [ %.2182.us.us.5, %bb.t ] ; 2 uses
  %.2179.us.us.lcssa = phi float [ %.2179.us.us, %25 ], [ %.2179.us.us.1, %45 ], [ %.2179.us.us.2, %46 ], [ %.2179.us.us.3, %63 ], [ %.2179.us.us.4, %64 ], [ %.2179.us.us.5, %65 ], [ %81, %77 ], [ %.2179.us.us.5, %73 ], [ %.2179.us.us.5, %bb.t ] ; 2 uses
  %.2175.us.us.lcssa = phi i32 [ %.2175.us.us, %25 ], [ %.2175.us.us.1, %45 ], [ %.2175.us.us.2, %46 ], [ %.2175.us.us.3, %63 ], [ %.2175.us.us.4, %64 ], [ %.2175.us.us.5, %65 ], [ %82, %77 ], [ %.2175.us.us.5, %73 ], [ %.2175.us.us.5, %bb.t ] ; 2 uses
  %i.gp = add nuw nsw i32 %.0160231.us.us, 1      ; 2 uses
  %exitcond320.not = icmp eq i32 %i.gp, %indvars.iv318
  br i1 %exitcond320.not, label %._crit_edge234.us, label %.lr.ph223.us.us, !llvm.loop !260

.lr.ph241.split:                                  ; preds = %.preheader205
  br i1 %i.ec, label %iter.check523, label %._crit_edge242

iter.check523:                                    ; preds = %.lr.ph241.split
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.eh ; 3 uses
  br i1 %min.iters.check512, label %.lr.ph241.split.split.preheader, label %vector.main.loop.iter.check513

vector.main.loop.iter.check513:                   ; preds = %iter.check523
  br i1 %min.iters.check514, label %vec.epilog.ph527, label %vector.body517

vector.body517:                                   ; preds = %vector.main.loop.iter.check513, %vector.body517
  %index518 = phi i64 [ %index.next519, %vector.body517 ], [ 0, %vector.main.loop.iter.check513 ] ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index518 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 96
  store <8 x float> splat (float +qnan), ptr %i.gq, align 4, !tbaa !11
  store <8 x float> splat (float +qnan), ptr %i.gr, align 4, !tbaa !11
  store <8 x float> splat (float +qnan), ptr %i.gs, align 4, !tbaa !11
  store <8 x float> splat (float +qnan), ptr %i.gt, align 4, !tbaa !11
  %index.next519 = add nuw i64 %index518, 32      ; 2 uses
  %i.gu = icmp eq i64 %index.next519, %n.vec516
  br i1 %i.gu, label %middle.block520, label %vector.body517, !llvm.loop !261

middle.block520:                                  ; preds = %vector.body517
  br i1 %cmp.n521, label %._crit_edge242, label %vec.epilog.iter.check525

vec.epilog.iter.check525:                         ; preds = %middle.block520
  br i1 %min.epilog.iters.check526, label %.lr.ph241.split.split.preheader, label %vec.epilog.ph527, !prof !117

vec.epilog.ph527:                                 ; preds = %vector.main.loop.iter.check513, %vec.epilog.iter.check525
  %vec.epilog.resume.val522 = phi i64 [ %n.vec516, %vec.epilog.iter.check525 ], [ 0, %vector.main.loop.iter.check513 ]
  br label %vec.epilog.vector.body529

vec.epilog.vector.body529:                        ; preds = %vec.epilog.vector.body529, %vec.epilog.ph527
  %index530 = phi i64 [ %vec.epilog.resume.val522, %vec.epilog.ph527 ], [ %index.next531, %vec.epilog.vector.body529 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index530
  store <4 x float> splat (float +qnan), ptr %i.gv, align 4, !tbaa !11
  %index.next531 = add nuw i64 %index530, 4       ; 2 uses
  %i.gw = icmp eq i64 %index.next531, %n.vec528
  br i1 %i.gw, label %vec.epilog.middle.block532, label %vec.epilog.vector.body529, !llvm.loop !262

vec.epilog.middle.block532:                       ; preds = %vec.epilog.vector.body529
  br i1 %cmp.n533, label %._crit_edge242, label %.lr.ph241.split.split.preheader

.lr.ph241.split.split.preheader:                  ; preds = %iter.check523, %vec.epilog.iter.check525, %vec.epilog.middle.block532
  %indvars.iv304.ph = phi i64 [ 0, %iter.check523 ], [ %n.vec516, %vec.epilog.iter.check525 ], [ %n.vec528, %vec.epilog.middle.block532 ]
  br label %.lr.ph241.split.split

.lr.ph241.split.split:                            ; preds = %.lr.ph241.split.split.preheader, %.lr.ph241.split.split
  %indvars.iv304 = phi i64 [ %indvars.iv.next305, %.lr.ph241.split.split ], [ %indvars.iv304.ph, %.lr.ph241.split.split.preheader ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv304
  store float +qnan, ptr %gep, align 4, !tbaa !11
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %exitcond308.not = icmp eq i64 %indvars.iv.next305, %i.dm
  br i1 %exitcond308.not, label %._crit_edge242, label %.lr.ph241.split.split, !llvm.loop !263

._crit_edge242:                                   ; preds = %.lr.ph241.split.split, %bb.k, %middle.block520, %vec.epilog.middle.block532, %.lr.ph241.split
  %indvars.iv.next319 = add nuw nsw i32 %indvars.iv318, %i.ea
  %exitcond334.not = icmp eq i64 %indvars.iv.next331, %i.cz
  br i1 %exitcond334.not, label %._crit_edge247.split, label %.preheader205, !llvm.loop !264

._crit_edge247.split:                             ; preds = %._crit_edge242, %.preheader205.lr.ph, %bb.i
  br i1 %.not199462, label %._crit_edge463, label %.preheader204

bb.u:                                             ; preds = %._crit_edge258
  %.not199 = icmp eq i32 %i.gx, 0
  br i1 %.not199, label %._crit_edge463, label %.preheader204, !llvm.loop !265

.preheader204:                                    ; preds = %._crit_edge247.split, %bb.u
  %.in = phi i32 [ %i.gx, %bb.u ], [ %i.dk, %._crit_edge247.split ]
  %i.gx = add nsw i32 %.in, -1                    ; 2 uses
  br i1 %brmerge, label %.preheader203, label %.preheader201

.preheader203:                                    ; preds = %._crit_edge253, %.preheader204
  br i1 %i.dl, label %.lr.ph257.preheader, label %.preheader206

.lr.ph257.preheader:                              ; preds = %.preheader203
  br i1 %min.iters.check501, label %.lr.ph257.preheader536, label %vector.body504

vector.body504:                                   ; preds = %.lr.ph257.preheader, %vector.body504
  %index505 = phi i64 [ %index.next507, %vector.body504 ], [ 0, %.lr.ph257.preheader ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.he, %vector.body504 ], [ zeroinitializer, %.lr.ph257.preheader ]
  %i.gy = phi <8 x i1> [ %i.hd, %vector.body504 ], [ zeroinitializer, %.lr.ph257.preheader ]
  %i.gz = getelementptr [4 x i8], ptr %i.dc, i64 %index505 ; 2 uses
  %wide.load506 = load <8 x float>, ptr %i.gz, align 4, !tbaa !11
  %wide.load506.fr = freeze <8 x float> %wide.load506 ; 2 uses
  %i.ha = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.load506.fr, zeroinitializer ; 3 uses
  %i.hb = fneg reassoc nsz arcp contract afn <8 x float> %wide.load506.fr
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.hb, ptr align 4 %i.gz, <8 x i1> %i.ha), !tbaa !11
  %i.hc = bitcast <8 x i1> %i.ha to i8
  %.not535 = icmp eq i8 %i.hc, 0                  ; 2 uses
  %i.hd = select i1 %.not535, <8 x i1> %i.gy, <8 x i1> %i.ha ; 2 uses
  %i.he = select i1 %.not535, <8 x i32> %vec.phi, <8 x i32> splat (i32 1) ; 2 uses
  %index.next507 = add nuw i64 %index505, 8       ; 2 uses
  %i.hf = icmp eq i64 %index.next507, %n.vec503
  br i1 %i.hf, label %middle.block508, label %vector.body504, !llvm.loop !266

middle.block508:                                  ; preds = %vector.body504
  %i.hg = tail call i32 @llvm.experimental.vector.extract.last.active.v8i32(<8 x i32> %i.he, <8 x i1> %i.hd, i32 0) ; 2 uses
  br i1 %cmp.n509, label %._crit_edge258, label %.lr.ph257.preheader536

.lr.ph257.preheader536:                           ; preds = %.lr.ph257.preheader, %middle.block508
  %indvars.iv349.ph = phi i64 [ 0, %.lr.ph257.preheader ], [ %n.vec503, %middle.block508 ]
  %.0170255.ph = phi i32 [ 0, %.lr.ph257.preheader ], [ %i.hg, %middle.block508 ]
  br label %.lr.ph257

.preheader201:                                    ; preds = %.preheader204, %._crit_edge253
  %indvars.iv344 = phi i64 [ %indvars.iv.next345, %._crit_edge253 ], [ 0, %.preheader204 ] ; 5 uses
  %i.hh = mul nuw nsw i64 %indvars.iv344, %i.dm   ; 3 uses
  %invariant.gep448 = getelementptr [4 x i8], ptr %i.dc, i64 %i.hh
  %i.hi = trunc i64 %indvars.iv344 to i32
  %i.hj = add i32 %i.hi, -1                       ; 4 uses
  %i.hk = icmp ult i32 %i.hj, %i.cu               ; 2 uses
  %i.hl = mul nuw i32 %i.hj, %i.cy
  %i.hm = mul nuw i32 %i.hj, %i.cy
  %i.hn = zext i32 %i.hm to i64
  %invariant.gep450 = getelementptr [4 x i8], ptr %i.dc, i64 %i.hn
  %i.ho = mul nuw i32 %i.hj, %i.cy
  %i.hp = zext i32 %i.ho to i64
  %invariant.gep452 = getelementptr [4 x i8], ptr %i.dc, i64 %i.hp
  %i.hq = add nuw nsw i64 %indvars.iv344, 1       ; 2 uses
  %i.hr = icmp samesign ult i64 %i.hq, %i.cz
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.hh
  %i.ht = add nuw nsw i64 %indvars.iv344, 1       ; 4 uses
  %i.hu = icmp samesign ult i64 %i.ht, %i.cz
  %i.hv = mul nuw nsw i64 %i.ht, %i.dm
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.hv
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.hh
  br label %bb.v

bb.v:                                             ; preds = %.preheader201, %bb.af
  %indvars.iv339 = phi i64 [ 0, %.preheader201 ], [ %indvars.iv.next340.pre-phi, %bb.af ] ; 7 uses
  %gep449 = getelementptr [4 x i8], ptr %invariant.gep448, i64 %indvars.iv339 ; 2 uses
  %i.hy = load float, ptr %gep449, align 4, !tbaa !11
  %i.hz = fcmp reassoc nsz arcp contract afn une float %i.hy, 0.000000e+00
  br i1 %i.hz, label %._crit_edge381, label %.preheader.preheader

._crit_edge381:                                   ; preds = %bb.v
  %.pre382 = add nuw nsw i64 %indvars.iv339, 1
  br label %bb.af

.preheader.preheader:                             ; preds = %bb.v
  %i.ia = trunc i64 %indvars.iv339 to i32
  %i.ib = add i32 %i.ia, -1                       ; 4 uses
  %i.ic = icmp ult i32 %i.ib, %i.cy               ; 3 uses
  %or.cond = and i1 %i.hk, %i.ic
  br i1 %or.cond, label %bb.w, label %.preheader.1

bb.w:                                             ; preds = %.preheader.preheader
  %i.id = add nuw i32 %i.hl, %i.ib
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ie
  %i.ig = load float, ptr %i.if, align 4, !tbaa !11 ; 2 uses
  %i.ih = fcmp reassoc nsz arcp contract afn ogt float %i.ig, 0.000000e+00 ; 2 uses
  %spec.select456 = select nsz i1 %i.ih, float %i.ig, float 0.000000e+00
  %spec.select457 = zext i1 %i.ih to i32
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.w, %.preheader.preheader
  %.4184 = phi nsz float [ 0.000000e+00, %.preheader.preheader ], [ %spec.select456, %bb.w ] ; 4 uses
  %.4 = phi i32 [ 0, %.preheader.preheader ], [ %spec.select457, %bb.w ] ; 4 uses
  br i1 %i.hk, label %.preheader.2, label %.preheader.2.thread

.preheader.2.thread:                              ; preds = %.preheader.1
  %i.ii = add nuw nsw i64 %indvars.iv339, 1       ; 3 uses
  %i.ij = icmp samesign ult i64 %i.ii, %i.dm
  br i1 %i.ij, label %.preheader.4, label %.preheader.4.thread

.preheader.2:                                     ; preds = %.preheader.1
  %gep451 = getelementptr [4 x i8], ptr %invariant.gep450, i64 %indvars.iv339
  %i.ik = load float, ptr %gep451, align 4, !tbaa !11 ; 2 uses
  %i.il = fcmp reassoc nsz arcp contract afn ogt float %i.ik, 0.000000e+00 ; 2 uses
  %i.im = fmul reassoc nnan nsz arcp contract afn float %i.ik, 2.000000e+00
  %i.in = fadd reassoc nsz arcp contract afn float %i.im, %.4184
  %i.io = or disjoint i32 %.4, 2
  %.4184.1 = select nsz i1 %i.il, float %i.in, float %.4184 ; 3 uses
  %.4.1 = select i1 %i.il, i32 %i.io, i32 %.4     ; 3 uses
  %i.ip = add nuw nsw i64 %indvars.iv339, 1       ; 5 uses
  %i.iq = icmp samesign ult i64 %i.ip, %i.dm
  br i1 %i.iq, label %bb.x, label %.preheader.4.thread

bb.x:                                             ; preds = %.preheader.2
  %gep453 = getelementptr [4 x i8], ptr %invariant.gep452, i64 %i.ip
  %i.ir = load float, ptr %gep453, align 4, !tbaa !11 ; 2 uses
  %i.is = fcmp reassoc nsz arcp contract afn ogt float %i.ir, 0.000000e+00
  br i1 %i.is, label %.split, label %.preheader.4

.split:                                           ; preds = %bb.x
  %i.it = fadd reassoc nsz arcp contract afn float %i.ir, %.4184.1
  %i.iu = add nuw nsw i32 %.4.1, 1
  br label %.preheader.4

.preheader.4:                                     ; preds = %bb.x, %.split, %.preheader.2.thread
  %.4.2423 = phi i32 [ %i.iu, %.split ], [ %.4, %.preheader.2.thread ], [ %.4.1, %bb.x ] ; 2 uses
  %.4184.2422 = phi float [ %i.it, %.split ], [ %.4184, %.preheader.2.thread ], [ %.4184.1, %bb.x ] ; 2 uses
  %i.iv = phi i64 [ %i.ip, %.split ], [ %i.ii, %.preheader.2.thread ], [ %i.ip, %bb.x ] ; 5 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.iv
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !11 ; 2 uses
  %i.iy = fcmp reassoc nsz arcp contract afn ogt float %i.ix, 0.000000e+00 ; 2 uses
  %i.iz = fmul reassoc nnan nsz arcp contract afn float %i.ix, 2.000000e+00
  %i.ja = fadd reassoc nsz arcp contract afn float %i.iz, %.4184.2422
  %i.jb = add nuw nsw i32 %.4.2423, 2
  %.4184.3 = select nsz i1 %i.iy, float %i.ja, float %.4184.2422 ; 3 uses
  %.4.3 = select i1 %i.iy, i32 %i.jb, i32 %.4.2423 ; 3 uses
  br i1 %i.hu, label %bb.y, label %.preheader.7

.preheader.4.thread:                              ; preds = %.preheader.2, %.preheader.2.thread
  %.ph = phi i64 [ %i.ii, %.preheader.2.thread ], [ %i.ip, %.preheader.2 ] ; 2 uses
  %.4184.3.ph = phi float [ %.4184, %.preheader.2.thread ], [ %.4184.1, %.preheader.2 ] ; 2 uses
  %.4.3.ph = phi i32 [ %.4, %.preheader.2.thread ], [ %.4.1, %.preheader.2 ] ; 2 uses
  br i1 %i.hr, label %.preheader.6, label %.preheader.7

bb.y:                                             ; preds = %.preheader.4
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.iv
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !11 ; 2 uses
  %i.je = fcmp reassoc nsz arcp contract afn ogt float %i.jd, 0.000000e+00
  br i1 %i.je, label %.split429, label %.preheader.6

.split429:                                        ; preds = %bb.y
  %i.jf = fadd reassoc nsz arcp contract afn float %i.jd, %.4184.3
  %i.jg = add nuw nsw i32 %.4.3, 1
  br label %.preheader.6

.preheader.6:                                     ; preds = %bb.y, %.split429, %.preheader.4.thread
  %.4.4433 = phi i32 [ %i.jg, %.split429 ], [ %.4.3.ph, %.preheader.4.thread ], [ %.4.3, %bb.y ] ; 2 uses
  %.4184.4432 = phi float [ %i.jf, %.split429 ], [ %.4184.3.ph, %.preheader.4.thread ], [ %.4184.3, %bb.y ] ; 2 uses
  %i.jh = phi i64 [ %i.iv, %.split429 ], [ %.ph, %.preheader.4.thread ], [ %i.iv, %bb.y ] ; 3 uses
  %i.ji = phi i64 [ %i.ht, %.split429 ], [ %i.hq, %.preheader.4.thread ], [ %i.ht, %bb.y ] ; 2 uses
  %i.jj = mul nuw nsw i64 %i.ji, %i.dm
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.jj
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv339
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !11 ; 2 uses
  %i.jn = fcmp reassoc nsz arcp contract afn ogt float %i.jm, 0.000000e+00 ; 2 uses
  %i.jo = fmul reassoc nnan nsz arcp contract afn float %i.jm, 2.000000e+00
  %i.jp = fadd reassoc nsz arcp contract afn float %i.jo, %.4184.4432
  %i.jq = add nuw nsw i32 %.4.4433, 2
  %.4184.5 = select nsz i1 %i.jn, float %i.jp, float %.4184.4432 ; 3 uses
  %.4.5 = select i1 %i.jn, i32 %i.jq, i32 %.4.4433 ; 3 uses
  br i1 %i.ic, label %bb.z, label %.preheader.7

bb.z:                                             ; preds = %.preheader.6
  %i.jr = mul nuw nsw i64 %i.ji, %i.dm
  %i.js = zext nneg i32 %i.ib to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.jr
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.js
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !11 ; 2 uses
  %i.jw = fcmp reassoc nsz arcp contract afn ogt float %i.jv, 0.000000e+00
  br i1 %i.jw, label %bb.aa, label %.preheader.7

bb.aa:                                            ; preds = %bb.z
  %i.jx = fadd reassoc nsz arcp contract afn float %i.jv, %.4184.5
  %i.jy = add nuw nsw i32 %.4.5, 1
  br label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.4, %.preheader.4.thread, %bb.aa, %bb.z, %.preheader.6
  %i.jz = phi i64 [ %i.jh, %bb.aa ], [ %i.jh, %bb.z ], [ %i.jh, %.preheader.6 ], [ %.ph, %.preheader.4.thread ], [ %i.iv, %.preheader.4 ] ; 2 uses
  %.4184.6 = phi nsz float [ %i.jx, %bb.aa ], [ %.4184.5, %bb.z ], [ %.4184.5, %.preheader.6 ], [ %.4184.3.ph, %.preheader.4.thread ], [ %.4184.3, %.preheader.4 ] ; 3 uses
  %.4.6 = phi i32 [ %i.jy, %bb.aa ], [ %.4.5, %bb.z ], [ %.4.5, %.preheader.6 ], [ %.4.3.ph, %.preheader.4.thread ], [ %.4.3, %.preheader.4 ] ; 3 uses
  br i1 %i.ic, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.preheader.7
  %i.ka = zext nneg i32 %i.ib to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ka
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !11 ; 2 uses
  %i.kd = fcmp reassoc nsz arcp contract afn ogt float %i.kc, 0.000000e+00
  br i1 %i.kd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ke = fmul reassoc nnan nsz arcp contract afn float %i.kc, 2.000000e+00
  %i.kf = fadd reassoc nsz arcp contract afn float %i.ke, %.4184.6
  %i.kg = add nuw nsw i32 %.4.6, 2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %.preheader.7
  %.4184.7 = phi nsz float [ %i.kf, %bb.ac ], [ %.4184.6, %bb.ab ], [ %.4184.6, %.preheader.7 ]
  %.4.7 = phi i32 [ %i.kg, %bb.ac ], [ %.4.6, %bb.ab ], [ %.4.6, %.preheader.7 ] ; 2 uses
  %i.kh = icmp samesign ugt i32 %.4.7, 3
  br i1 %i.kh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ki = fadd reassoc nsz arcp contract afn float %.4184.7, %exp2
  %i.kj = fneg reassoc nsz arcp contract afn float %i.ki
  %i.kk = uitofp nneg i32 %.4.7 to float
  %i.kl = fadd reassoc nsz arcp contract afn float %exp2, %i.kk
  %i.km = fdiv reassoc nsz arcp contract afn float %i.kj, %i.kl
  store float %i.km, ptr %gep449, align 4, !tbaa !11
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge381, %bb.ad, %bb.ae
  %indvars.iv.next340.pre-phi = phi i64 [ %.pre382, %._crit_edge381 ], [ %i.jz, %bb.ad ], [ %i.jz, %bb.ae ] ; 2 uses
  %exitcond343.not = icmp eq i64 %indvars.iv.next340.pre-phi, %i.dm
  br i1 %exitcond343.not, label %._crit_edge253, label %bb.v, !llvm.loop !267

._crit_edge253:                                   ; preds = %bb.af
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1 ; 2 uses
  %exitcond348.not = icmp eq i64 %indvars.iv.next345, %i.cz
  br i1 %exitcond348.not, label %.preheader203, label %.preheader201, !llvm.loop !268

.lr.ph257:                                        ; preds = %.lr.ph257.preheader536, %bb.ah
  %indvars.iv349 = phi i64 [ %indvars.iv.next350, %bb.ah ], [ %indvars.iv349.ph, %.lr.ph257.preheader536 ] ; 2 uses
  %.0170255 = phi i32 [ %.1171, %bb.ah ], [ %.0170255.ph, %.lr.ph257.preheader536 ]
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv349 ; 2 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !11 ; 2 uses
  %i.kp = fcmp reassoc nsz arcp contract afn olt float %i.ko, 0.000000e+00
  br i1 %i.kp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph257
  %i.kq = fneg reassoc nsz arcp contract afn float %i.ko
  store float %i.kq, ptr %i.kn, align 4, !tbaa !11
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph257, %bb.ag
  %.1171 = phi i32 [ 1, %bb.ag ], [ %.0170255, %.lr.ph257 ] ; 2 uses
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1 ; 2 uses
  %exitcond353.not = icmp eq i64 %indvars.iv.next350, %i.dh
  br i1 %exitcond353.not, label %._crit_edge258, label %.lr.ph257, !llvm.loop !269

._crit_edge258:                                   ; preds = %bb.ah, %middle.block508
  %.1171.lcssa = phi i32 [ %i.hg, %middle.block508 ], [ %.1171, %bb.ah ]
  %i.kr = icmp eq i32 %.1171.lcssa, 0
  br i1 %i.kr, label %._crit_edge258._crit_edge, label %bb.u, !llvm.loop !265

._crit_edge258._crit_edge:                        ; preds = %._crit_edge258
  br label %._crit_edge463, !llvm.loop !265

._crit_edge463:                                   ; preds = %bb.u, %._crit_edge258._crit_edge, %._crit_edge247.split
  br i1 %i.dl, label %iter.check488, label %.preheader206

iter.check488:                                    ; preds = %._crit_edge463
  br i1 %min.iters.check473, label %.lr.ph262.preheader, label %vector.main.loop.iter.check474

vector.main.loop.iter.check474:                   ; preds = %iter.check488
  br i1 %min.iters.check475, label %vec.epilog.ph492, label %vector.body478

vector.body478:                                   ; preds = %vector.main.loop.iter.check474, %vector.body478
  %index479 = phi i64 [ %index.next484, %vector.body478 ], [ 0, %vector.main.loop.iter.check474 ] ; 2 uses
  %i.ks = getelementptr [4 x i8], ptr %i.dc, i64 %index479 ; 5 uses
  %i.kt = getelementptr i8, ptr %i.ks, i64 32     ; 2 uses
  %i.ku = getelementptr i8, ptr %i.ks, i64 64     ; 2 uses
  %i.kv = getelementptr i8, ptr %i.ks, i64 96     ; 2 uses
  %wide.load480 = load <8 x float>, ptr %i.ks, align 4, !tbaa !11
  %wide.load481 = load <8 x float>, ptr %i.kt, align 4, !tbaa !11
  %wide.load482 = load <8 x float>, ptr %i.ku, align 4, !tbaa !11
  %wide.load483 = load <8 x float>, ptr %i.kv, align 4, !tbaa !11
  %i.kw = fcmp reassoc nsz arcp contract afn oeq <8 x float> %wide.load480, zeroinitializer
  %i.kx = fcmp reassoc nsz arcp contract afn oeq <8 x float> %wide.load481, zeroinitializer
  %i.ky = fcmp reassoc nsz arcp contract afn oeq <8 x float> %wide.load482, zeroinitializer
  %i.kz = fcmp reassoc nsz arcp contract afn oeq <8 x float> %wide.load483, zeroinitializer
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 1.000000e+00), ptr align 4 %i.ks, <8 x i1> %i.kw), !tbaa !11
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 1.000000e+00), ptr align 4 %i.kt, <8 x i1> %i.kx), !tbaa !11
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 1.000000e+00), ptr align 4 %i.ku, <8 x i1> %i.ky), !tbaa !11
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> splat (float 1.000000e+00), ptr align 4 %i.kv, <8 x i1> %i.kz), !tbaa !11
  %index.next484 = add nuw i64 %index479, 32      ; 2 uses
  %i.la = icmp eq i64 %index.next484, %n.vec477
  br i1 %i.la, label %middle.block485, label %vector.body478, !llvm.loop !270

middle.block485:                                  ; preds = %vector.body478
  br i1 %cmp.n486, label %.preheader206, label %vec.epilog.iter.check490

vec.epilog.iter.check490:                         ; preds = %middle.block485
  br i1 %min.epilog.iters.check491, label %.lr.ph262.preheader, label %vec.epilog.ph492, !prof !117

vec.epilog.ph492:                                 ; preds = %vector.main.loop.iter.check474, %vec.epilog.iter.check490
  %vec.epilog.resume.val487 = phi i64 [ %n.vec477, %vec.epilog.iter.check490 ], [ 0, %vector.main.loop.iter.check474 ]
  br label %vec.epilog.vector.body494

vec.epilog.vector.body494:                        ; preds = %vec.epilog.vector.body494, %vec.epilog.ph492
  %index495 = phi i64 [ %vec.epilog.resume.val487, %vec.epilog.ph492 ], [ %index.next497, %vec.epilog.vector.body494 ] ; 2 uses
  %i.lb = getelementptr [4 x i8], ptr %i.dc, i64 %index495 ; 2 uses
  %wide.load496 = load <4 x float>, ptr %i.lb, align 4, !tbaa !11
  %i.lc = fcmp reassoc nsz arcp contract afn oeq <4 x float> %wide.load496, zeroinitializer
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> splat (float 1.000000e+00), ptr align 4 %i.lb, <4 x i1> %i.lc), !tbaa !11
  %index.next497 = add nuw i64 %index495, 4       ; 2 uses
  %i.ld = icmp eq i64 %index.next497, %n.vec493
  br i1 %i.ld, label %vec.epilog.middle.block498, label %vec.epilog.vector.body494, !llvm.loop !271

vec.epilog.middle.block498:                       ; preds = %vec.epilog.vector.body494
  br i1 %cmp.n499, label %.preheader206, label %.lr.ph262.preheader

.lr.ph262.preheader:                              ; preds = %iter.check488, %vec.epilog.iter.check490, %vec.epilog.middle.block498
  %indvars.iv354.ph = phi i64 [ 0, %iter.check488 ], [ %n.vec477, %vec.epilog.iter.check490 ], [ %n.vec493, %vec.epilog.middle.block498 ]
  br label %.lr.ph262

.preheader206:                                    ; preds = %.preheader203, %bb.aj, %middle.block485, %vec.epilog.middle.block498, %._crit_edge463
  br i1 %.not285, label %.loopexit, label %.preheader202.lr.ph

.preheader202.lr.ph:                              ; preds = %.preheader206
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv369
  br i1 %.not286, label %.loopexit, label %.preheader202.preheader

.preheader202.preheader:                          ; preds = %.preheader202.lr.ph
  %.pre372.pre = load i16, ptr %i.cq, align 4, !tbaa !210
  br label %.preheader202

.lr.ph262:                                        ; preds = %.lr.ph262.preheader, %bb.aj
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %bb.aj ], [ %indvars.iv354.ph, %.lr.ph262.preheader ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv354 ; 2 uses
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !11
  %i.lh = fcmp reassoc nsz arcp contract afn oeq float %i.lg, 0.000000e+00
  br i1 %i.lh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph262
  store float 1.000000e+00, ptr %i.lf, align 4, !tbaa !11
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph262, %bb.ai
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %exitcond358.not = icmp eq i64 %indvars.iv.next355, %i.dh
  br i1 %exitcond358.not, label %.preheader206, label %.lr.ph262, !llvm.loop !272

.preheader202:                                    ; preds = %.preheader202.preheader, %._crit_edge273
  %.pre372 = phi i16 [ %.pre372.pre, %.preheader202.preheader ], [ %.pre372374, %._crit_edge273 ] ; 3 uses
  %indvars.iv364 = phi i64 [ 0, %.preheader202.preheader ], [ %indvars.iv.next365, %._crit_edge273 ] ; 3 uses
  %indvars366 = trunc i64 %indvars.iv364 to i32   ; 2 uses
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %i.li = add nuw nsw i32 %indvars366, 1          ; 2 uses
  %i.lj = mul nuw nsw i64 %indvars.iv364, %i.dm
  %invariant.gep454 = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.lj
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader202, %._crit_edge270
  %.pre372379 = phi i16 [ %.pre372, %.preheader202 ], [ %.pre372374, %._crit_edge270 ] ; 2 uses
  %i.lk = phi i16 [ %.pre372, %.preheader202 ], [ %i.nl, %._crit_edge270 ] ; 2 uses
  %i.ll = phi i16 [ %.pre372, %.preheader202 ], [ %i.nm, %._crit_edge270 ] ; 3 uses
  %indvars.iv359 = phi i64 [ 0, %.preheader202 ], [ %indvars.iv.next360, %._crit_edge270 ] ; 3 uses
  %indvars361 = trunc i64 %indvars.iv359 to i32   ; 2 uses
  %i.lm = zext nneg i16 %i.ll to i32
  %i.ln = lshr i32 4, %i.lm                       ; 3 uses
  %i.lo = mul i32 %i.ln, %indvars366              ; 2 uses
  %i.lp = mul i32 %i.ln, %i.li
  %i.lq = icmp ult i32 %i.lo, %i.lp
  br i1 %i.lq, label %.lr.ph269, label %._crit_edge270

.lr.ph269:                                        ; preds = %bb.ak
  %i.lr = add nuw nsw i32 %indvars361, 1          ; 2 uses
  %gep455 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep454, i64 %indvars.iv359
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph269, %._crit_edge266
  %.pre372378 = phi i16 [ %.pre372379, %.lr.ph269 ], [ %.pre372375, %._crit_edge266 ] ; 2 uses
  %i.ls = phi i16 [ %i.lk, %.lr.ph269 ], [ %i.nf, %._crit_edge266 ] ; 2 uses
  %i.lt = phi i16 [ %i.ll, %.lr.ph269 ], [ %i.nf, %._crit_edge266 ] ; 2 uses
  %i.lu = phi i32 [ %i.ln, %.lr.ph269 ], [ %i.ni, %._crit_edge266 ]
  %.1161267 = phi i32 [ %i.lo, %.lr.ph269 ], [ %i.ng, %._crit_edge266 ] ; 2 uses
  %i.lv = mul i32 %i.lu, %indvars361              ; 2 uses
  %i.lw = zext nneg i16 %i.lt to i32
  %i.lx = lshr i32 4, %i.lw
  %i.ly = mul i32 %i.lx, %i.lr
  %i.lz = icmp ult i32 %i.lv, %i.ly
  br i1 %i.lz, label %.lr.ph265, label %._crit_edge266

.lr.ph265:                                        ; preds = %bb.al
  %i.ma = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.mb = load i32, ptr %i.le, align 4, !tbaa !111
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph265, %bb.ap
  %.pre372377 = phi i16 [ %.pre372378, %.lr.ph265 ], [ %.pre372376, %bb.ap ] ; 2 uses
  %i.mc = phi i16 [ %i.ls, %.lr.ph265 ], [ %i.my, %bb.ap ] ; 2 uses
  %i.md = phi i16 [ %i.lt, %.lr.ph265 ], [ %i.mz, %bb.ap ] ; 2 uses
  %.1159263 = phi i32 [ %i.lv, %.lr.ph265 ], [ %i.na, %bb.ap ] ; 2 uses
  %i.me = load i16, ptr %i.cv, align 2, !tbaa !207
  %i.mf = zext i16 %i.me to i32
  %i.mg = mul i32 %.1161267, %i.mf
  %i.mh = add i32 %i.mg, %.1159263
  %i.mi = zext i32 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.mi ; 2 uses
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %i.mj, i64 %indvars.iv369 ; 2 uses
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !115
  %i.mm = zext i16 %i.ml to i32                   ; 2 uses
  %i.mn = sdiv i32 %i.mm, %i.mb
  %i.mo = icmp sgt i32 %i.mn, 1
  br i1 %i.mo, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %i.mj, i64 %.0156.lcssa
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !115
  %i.mr = uitofp i16 %i.mq to float
  %i.ms = load float, ptr %gep455, align 4, !tbaa !11
  %i.mt = fmul reassoc nsz arcp contract afn float %i.ms, %i.mr
  %i.mu = fptosi float %i.mt to i32               ; 2 uses
  %i.mv = icmp slt i32 %i.mm, %i.mu
  br i1 %i.mv, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.mw = tail call i32 @llvm.umin.i32(i32 %i.mu, i32 65535)
  %i.mx = trunc nuw i32 %i.mw to i16
  store i16 %i.mx, ptr %i.mk, align 2, !tbaa !115
  %.pre373 = load i16, ptr %i.cq, align 4, !tbaa !210 ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.am, %bb.ao, %bb.an
  %.pre372376 = phi i16 [ %.pre372377, %bb.am ], [ %.pre373, %bb.ao ], [ %.pre372377, %bb.an ] ; 2 uses
  %i.my = phi i16 [ %i.mc, %bb.am ], [ %.pre373, %bb.ao ], [ %i.mc, %bb.an ] ; 2 uses
  %i.mz = phi i16 [ %i.md, %bb.am ], [ %.pre373, %bb.ao ], [ %i.md, %bb.an ] ; 2 uses
  %i.na = add nuw nsw i32 %.1159263, 1            ; 2 uses
  %i.nb = zext nneg i16 %i.mz to i32
  %i.nc = lshr i32 4, %i.nb
  %i.nd = mul i32 %i.nc, %i.lr
  %i.ne = icmp samesign ult i32 %i.na, %i.nd
  br i1 %i.ne, label %bb.am, label %._crit_edge266, !llvm.loop !273

._crit_edge266:                                   ; preds = %bb.ap, %bb.al
  %.pre372375 = phi i16 [ %.pre372378, %bb.al ], [ %.pre372376, %bb.ap ] ; 2 uses
  %i.nf = phi i16 [ %i.ls, %bb.al ], [ %i.my, %bb.ap ] ; 5 uses
  %i.ng = add nuw nsw i32 %.1161267, 1            ; 2 uses
  %i.nh = zext nneg i16 %i.nf to i32
  %i.ni = lshr i32 4, %i.nh                       ; 2 uses
  %i.nj = mul i32 %i.ni, %i.li
  %i.nk = icmp samesign ult i32 %i.ng, %i.nj
  br i1 %i.nk, label %bb.al, label %._crit_edge270, !llvm.loop !274

._crit_edge270:                                   ; preds = %._crit_edge266, %bb.ak
  %.pre372374 = phi i16 [ %.pre372379, %bb.ak ], [ %.pre372375, %._crit_edge266 ] ; 2 uses
  %i.nl = phi i16 [ %i.lk, %bb.ak ], [ %i.nf, %._crit_edge266 ]
  %i.nm = phi i16 [ %i.ll, %bb.ak ], [ %i.nf, %._crit_edge266 ]
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %i.dm
  br i1 %exitcond363.not, label %._crit_edge273, label %bb.ak, !llvm.loop !275

._crit_edge273:                                   ; preds = %._crit_edge270
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %i.cz
  br i1 %exitcond368.not, label %.loopexit, label %.preheader202, !llvm.loop !276

.loopexit:                                        ; preds = %._crit_edge273, %.preheader206, %.preheader202.lr.ph, %bb.e
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.nn = load i32, ptr %i.f, align 4, !tbaa !112 ; 2 uses
  %i.no = zext i32 %i.nn to i64
  %i.np = icmp samesign ult i64 %indvars.iv.next370, %i.no
  br i1 %i.np, label %bb.e, label %._crit_edge279, !llvm.loop !277

._crit_edge279:                                   ; preds = %.loopexit, %._crit_edge
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.dc)
  br label %.loopexit209

.loopexit209:                                     ; preds = %.lr.ph213, %._crit_edge279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ldexp.f32.i32(float, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v29i16.p0(<29 x i16>, ptr captures(none), <29 x i1>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v8i32(<8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.experimental.vector.extract.last.active.v8i32(<8 x i32>, <8 x i1>, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !9, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !15}
!15 = distinct !{!15, !"LVerDomain"}
!16 = !{!17}
!17 = distinct !{!17, !15}
!18 = !{!19}
!19 = distinct !{!19, !15}
!20 = !{!17, !14}
!21 = distinct !{!21, !22, !23, !24}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"branch_weights", i32 8, i32 24}
!26 = distinct !{!26, !22, !23, !24}
!27 = distinct !{!27, !22, !23, !24}
!28 = !{!"branch_weights", i32 4, i32 12}
!29 = distinct !{!29, !22, !23, !24}
!30 = distinct !{!30, !22, !23}
!31 = !{!32}
!32 = distinct !{!32, !33}
!33 = distinct !{!33, !"LVerDomain"}
!34 = !{!35}
!35 = distinct !{!35, !33}
!36 = !{!37}
!37 = distinct !{!37, !33}
!38 = !{!39}
!39 = distinct !{!39, !33}
!40 = !{!37, !35, !32}
!41 = distinct !{!41, !22, !23, !24}
!42 = distinct !{!42, !22, !23, !24}
!43 = distinct !{!43, !22, !23}
!44 = distinct !{!44, !22, !23}
!45 = !{!46, !51, i64 30}
!46 = !{!"_ZTS6LibRaw", !47, i64 8, !93, i64 381584, !94, i64 381592, !9, i64 384344, !104, i64 433496, !104, i64 433504, !9, i64 433512, !105, i64 768232, !106, i64 768248, !9, i64 768400, !9, i64 768416, !9, i64 768432, !49, i64 768448, !49, i64 768456, !49, i64 768464, !85, i64 768472, !49, i64 768480, !49, i64 768488, !49, i64 768496, !49, i64 768504}
!47 = !{!"_ZTS13libraw_data_t", !48, i64 0, !50, i64 8, !53, i64 192, !55, i64 632, !60, i64 1928, !76, i64 5088, !77, i64 5232, !78, i64 5536, !8, i64 5584, !8, i64 5588, !81, i64 5592, !84, i64 192680, !87, i64 193480, !89, i64 193504, !90, i64 193768, !49, i64 381568}
!48 = !{!"p1 short", !49, i64 0}
!49 = !{!"any pointer", !9, i64 0}
!50 = !{!"_ZTS20libraw_image_sizes_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !51, i64 8, !51, i64 10, !51, i64 12, !51, i64 14, !8, i64 16, !52, i64 24, !8, i64 32, !9, i64 36, !51, i64 164, !9, i64 166}
!51 = !{!"short", !9, i64 0}
!52 = !{!"double", !9, i64 0}
!53 = !{!"_ZTS16libraw_iparams_t", !9, i64 0, !9, i64 4, !9, i64 68, !9, i64 132, !9, i64 196, !9, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !9, i64 348, !9, i64 384, !9, i64 420, !8, i64 428, !54, i64 432}
!54 = !{!"p1 omnipotent char", !49, i64 0}
!55 = !{!"_ZTS17libraw_lensinfo_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !9, i64 20, !9, i64 148, !9, i64 276, !9, i64 404, !51, i64 532, !56, i64 536, !57, i64 544, !58, i64 560}
!56 = !{!"_ZTS18libraw_nikonlens_t", !12, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!57 = !{!"_ZTS16libraw_dnglens_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!58 = !{!"_ZTS24libraw_makernotes_lens_t", !59, i64 0, !9, i64 8, !51, i64 136, !51, i64 138, !59, i64 144, !51, i64 152, !51, i64 154, !9, i64 156, !51, i64 220, !9, i64 222, !9, i64 238, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !12, i64 284, !12, i64 288, !12, i64 292, !12, i64 296, !12, i64 300, !12, i64 304, !12, i64 308, !12, i64 312, !59, i64 320, !9, i64 328, !59, i64 456, !9, i64 464, !59, i64 592, !9, i64 600, !51, i64 728, !12, i64 732}
!59 = !{!"long long", !9, i64 0}
!60 = !{!"_ZTS19libraw_makernotes_t", !61, i64 0, !63, i64 168, !65, i64 464, !66, i64 848, !67, i64 1200, !68, i64 1664, !69, i64 1848, !70, i64 2092, !71, i64 2160, !72, i64 2196, !73, i64 2648, !74, i64 2720, !75, i64 2856}
!61 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16, !8, i64 32, !9, i64 36, !51, i64 52, !51, i64 54, !9, i64 56, !51, i64 58, !51, i64 60, !51, i64 62, !51, i64 64, !51, i64 66, !51, i64 68, !51, i64 70, !51, i64 72, !51, i64 74, !51, i64 76, !51, i64 78, !51, i64 80, !51, i64 82, !8, i64 84, !12, i64 88, !51, i64 92, !51, i64 94, !51, i64 96, !51, i64 98, !8, i64 100, !51, i64 104, !8, i64 108, !8, i64 112, !51, i64 116, !8, i64 120, !62, i64 124, !62, i64 132, !62, i64 140, !62, i64 148, !62, i64 156, !9, i64 164}
!62 = !{!"_ZTS13libraw_area_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6}
!63 = !{!"_ZTS25libraw_nikon_makernotes_t", !52, i64 0, !51, i64 8, !51, i64 10, !9, i64 12, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 34, !9, i64 54, !9, i64 58, !9, i64 62, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 69, !9, i64 70, !9, i64 71, !9, i64 73, !9, i64 74, !9, i64 75, !9, i64 76, !9, i64 77, !9, i64 78, !9, i64 82, !9, i64 86, !51, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !9, i64 112, !9, i64 144, !9, i64 145, !9, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !9, i64 160, !9, i64 162, !51, i64 170, !64, i64 172, !51, i64 180, !51, i64 182, !51, i64 184, !8, i64 188, !9, i64 192, !9, i64 212, !8, i64 232, !9, i64 236, !8, i64 248, !54, i64 256, !51, i64 264, !51, i64 266, !9, i64 268, !51, i64 270, !52, i64 272, !52, i64 280, !52, i64 288}
!64 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6}
!65 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !52, i64 8, !9, i64 16, !9, i64 24, !9, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !9, i64 168, !9, i64 200, !8, i64 264, !9, i64 268, !9, i64 276, !9, i64 288}
!66 = !{!"_ZTS18libraw_fuji_info_t", !12, i64 0, !51, i64 4, !51, i64 6, !51, i64 8, !51, i64 10, !51, i64 12, !51, i64 14, !51, i64 16, !51, i64 18, !9, i64 20, !9, i64 53, !12, i64 88, !51, i64 92, !51, i64 94, !9, i64 96, !51, i64 100, !8, i64 104, !8, i64 108, !51, i64 112, !9, i64 114, !51, i64 120, !51, i64 122, !51, i64 124, !51, i64 126, !51, i64 128, !8, i64 132, !51, i64 136, !9, i64 138, !9, i64 151, !9, i64 156, !8, i64 164, !51, i64 168, !8, i64 172, !51, i64 176, !9, i64 178, !9, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !9, i64 336, !8, i64 344}
!67 = !{!"_ZTS27libraw_olympus_makernotes_t", !9, i64 0, !51, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !9, i64 64, !9, i64 72, !51, i64 82, !9, i64 84, !51, i64 88, !51, i64 90, !9, i64 92, !9, i64 352, !51, i64 392, !9, i64 394, !9, i64 396, !9, i64 404, !51, i64 416, !51, i64 418, !51, i64 420, !51, i64 422, !52, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !8, i64 452, !51, i64 456, !51, i64 458}
!68 = !{!"_ZTS18libraw_sony_info_t", !51, i64 0, !9, i64 2, !9, i64 3, !8, i64 4, !9, i64 8, !8, i64 12, !9, i64 16, !9, i64 17, !51, i64 18, !9, i64 20, !9, i64 24, !9, i64 25, !51, i64 26, !9, i64 28, !9, i64 38, !9, i64 39, !9, i64 40, !51, i64 48, !9, i64 50, !9, i64 51, !9, i64 52, !51, i64 54, !8, i64 56, !51, i64 60, !9, i64 62, !51, i64 66, !51, i64 68, !51, i64 70, !51, i64 72, !51, i64 74, !51, i64 76, !51, i64 78, !8, i64 80, !12, i64 84, !51, i64 88, !8, i64 92, !8, i64 96, !51, i64 100, !9, i64 102, !8, i64 124, !51, i64 128, !8, i64 132, !9, i64 136, !9, i64 137, !51, i64 138, !51, i64 140, !51, i64 142, !51, i64 144, !51, i64 146, !51, i64 148, !51, i64 150, !51, i64 152, !51, i64 154, !8, i64 156, !51, i64 160, !9, i64 162, !12, i64 180}
!69 = !{!"_ZTS25libraw_kodak_makernotes_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !51, i64 8, !51, i64 10, !9, i64 12, !9, i64 48, !9, i64 84, !9, i64 120, !9, i64 156, !9, i64 192, !51, i64 228, !51, i64 230, !51, i64 232, !51, i64 234, !12, i64 236, !12, i64 240}
!70 = !{!"_ZTS29libraw_panasonic_makernotes_t", !51, i64 0, !51, i64 2, !9, i64 4, !8, i64 36, !12, i64 40, !9, i64 44, !51, i64 56, !51, i64 58, !8, i64 60, !8, i64 64}
!71 = !{!"_ZTS26libraw_pentax_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !51, i64 12, !8, i64 16, !8, i64 20, !51, i64 24, !9, i64 26, !51, i64 30, !9, i64 32, !9, i64 33, !51, i64 34}
!72 = !{!"_ZTS22libraw_p1_makernotes_t", !9, i64 0, !9, i64 64, !9, i64 128, !9, i64 384}
!73 = !{!"_ZTS25libraw_ricoh_makernotes_t", !51, i64 0, !9, i64 4, !9, i64 12, !51, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !51, i64 40, !51, i64 42, !51, i64 44, !51, i64 46, !51, i64 48, !51, i64 50, !52, i64 56, !52, i64 64}
!74 = !{!"_ZTS27libraw_samsung_makernotes_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 40, !52, i64 88, !8, i64 96, !9, i64 100}
!75 = !{!"_ZTS24libraw_metadata_common_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !51, i64 64, !9, i64 66, !12, i64 196, !9, i64 200, !8, i64 296}
!76 = !{!"_ZTS21libraw_shootinginfo_t", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !51, i64 8, !51, i64 10, !51, i64 12, !9, i64 14, !9, i64 78}
!77 = !{!"_ZTS22libraw_output_params_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 64, !9, i64 112, !12, i64 128, !12, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !54, i64 168, !54, i64 176, !54, i64 184, !54, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !9, i64 224, !8, i64 240, !8, i64 244, !12, i64 248, !12, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !12, i64 288, !12, i64 292, !8, i64 296, !8, i64 300}
!78 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !12, i64 28, !9, i64 32, !79, i64 40}
!79 = !{!"p2 omnipotent char", !80, i64 0}
!80 = !{!"any p2 pointer", !49, i64 0}
!81 = !{!"_ZTS18libraw_colordata_t", !9, i64 0, !9, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !9, i64 147500, !12, i64 147516, !12, i64 147520, !9, i64 147524, !9, i64 147652, !9, i64 147668, !9, i64 147684, !9, i64 147732, !9, i64 147780, !9, i64 147828, !82, i64 147876, !12, i64 147912, !12, i64 147916, !9, i64 147920, !9, i64 147984, !9, i64 148048, !9, i64 148112, !9, i64 148176, !9, i64 148193, !49, i64 148264, !8, i64 148272, !9, i64 148276, !9, i64 148308, !83, i64 148648, !9, i64 181624, !9, i64 185720, !8, i64 187000, !9, i64 187004, !8, i64 187076, !8, i64 187080}
!82 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !12, i64 32}
!83 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !9, i64 4, !8, i64 16420, !9, i64 16424, !12, i64 32840, !9, i64 32844, !9, i64 32860, !9, i64 32868, !8, i64 32884, !9, i64 32888, !9, i64 32904, !12, i64 32920, !12, i64 32924, !9, i64 32928}
!84 = !{!"_ZTS17libraw_imgother_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !85, i64 16, !8, i64 24, !9, i64 28, !86, i64 156, !9, i64 204, !9, i64 716, !9, i64 780}
!85 = !{!"long", !9, i64 0}
!86 = !{!"_ZTS17libraw_gps_info_t", !9, i64 0, !9, i64 12, !9, i64 24, !12, i64 36, !9, i64 40, !9, i64 41, !9, i64 42, !9, i64 43, !9, i64 44}
!87 = !{!"_ZTS18libraw_thumbnail_t", !88, i64 0, !51, i64 4, !51, i64 6, !8, i64 8, !8, i64 12, !54, i64 16}
!88 = !{!"_ZTS24LibRaw_thumbnail_formats", !9, i64 0}
!89 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !9, i64 8}
!90 = !{!"_ZTS16libraw_rawdata_t", !49, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !91, i64 32, !91, i64 40, !91, i64 48, !48, i64 56, !48, i64 64, !53, i64 72, !50, i64 512, !92, i64 696, !81, i64 712}
!91 = !{!"p1 float", !49, i64 0}
!92 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !51, i64 12, !51, i64 14}
!93 = !{!"p1 _ZTS10LibRaw_TLS", !49, i64 0}
!94 = !{!"_ZTS22libraw_internal_data_t", !95, i64 0, !92, i64 64, !98, i64 80, !100, i64 96, !101, i64 136}
!95 = !{!"_ZTS15internal_data_t", !96, i64 0, !97, i64 8, !8, i64 16, !54, i64 24, !59, i64 32, !59, i64 40, !9, i64 48}
!96 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !49, i64 0}
!97 = !{!"p1 _ZTS8_IO_FILE", !49, i64 0}
!98 = !{!"_ZTS13output_data_t", !99, i64 0, !99, i64 8}
!99 = !{!"p1 int", !49, i64 0}
!100 = !{!"_ZTS15identify_data_t", !8, i64 0, !59, i64 8, !59, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!101 = !{!"_ZTS15unpacker_data_t", !51, i64 0, !9, i64 2, !9, i64 10, !8, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !59, i64 64, !59, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !102, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !59, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !103, i64 192, !9, i64 440, !8, i64 2488, !8, i64 2492, !51, i64 2496, !51, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !9, i64 2528, !51, i64 2608}
!102 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !9, i64 0}
!103 = !{!"_ZTS12pana8_tags_t", !9, i64 0, !9, i64 24, !51, i64 36, !9, i64 38, !9, i64 46, !9, i64 80, !9, i64 114, !51, i64 148, !51, i64 150, !9, i64 152, !9, i64 192, !9, i64 204, !9, i64 224, !9, i64 234}
!104 = !{!"p1 _ZTS6decode", !49, i64 0}
!105 = !{!"_ZTS13libraw_memmgr", !80, i64 0, !8, i64 8}
!106 = !{!"_ZTS18libraw_callbacks_t", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !49, i64 96, !49, i64 104, !49, i64 112, !49, i64 120, !49, i64 128, !49, i64 136, !49, i64 144}
!107 = !{!46, !51, i64 28}
!108 = !{!46, !8, i64 153096}
!109 = distinct !{!109, !22}
!110 = !{!46, !8, i64 153088}
!111 = !{!8, !8, i64 0}
!112 = !{!46, !8, i64 540}
!113 = !{!46, !8, i64 544}
!114 = !{!46, !48, i64 8}
!115 = !{!51, !51, i64 0}
!116 = distinct !{!116, !22, !23, !24}
!117 = !{!"branch_weights", i32 4, i32 28}
!118 = distinct !{!118, !22, !23, !24}
!119 = distinct !{!119, !22, !24, !23}
!120 = distinct !{!120, !22, !23, !24}
!121 = !{!122}
!122 = distinct !{!122, !123}
!123 = distinct !{!123, !"LVerDomain"}
!124 = !{!125}
!125 = distinct !{!125, !123}
!126 = !{!127}
!127 = distinct !{!127, !123}
!128 = !{!129}
!129 = distinct !{!129, !123}
!130 = !{!122, !125, !127}
!131 = distinct !{!131, !22, !23, !24}
!132 = distinct !{!132, !22, !23, !24}
!133 = distinct !{!133, !134}
!134 = !{!"llvm.loop.unroll.disable"}
!135 = distinct !{!135, !22, !23, !24}
!136 = distinct !{!136, !22, !23, !24}
!137 = distinct !{!137, !22, !23}
!138 = !{!139}
!139 = distinct !{!139, !140}
!140 = distinct !{!140, !"LVerDomain"}
!141 = !{!142}
!142 = distinct !{!142, !140}
!143 = !{!144}
!144 = distinct !{!144, !140}
!145 = !{!146}
!146 = distinct !{!146, !140}
!147 = !{!139, !142, !144}
!148 = distinct !{!148, !22, !23, !24}
!149 = distinct !{!149, !22, !23, !24}
!150 = distinct !{!150, !22, !23}
!151 = distinct !{!151, !22, !23}
!152 = distinct !{!152, !22, !23, !24}
!153 = distinct !{!153, !22, !23, !24}
!154 = distinct !{!154, !134}
!155 = distinct !{!155, !22, !23}
!156 = distinct !{!156, !22}
!157 = !{!158}
!158 = distinct !{!158, !159}
!159 = distinct !{!159, !"LVerDomain"}
!160 = !{!161}
!161 = distinct !{!161, !159}
!162 = !{!163}
!163 = distinct !{!163, !159}
!164 = !{!165}
!165 = distinct !{!165, !159}
!166 = !{!158, !161, !163}
!167 = distinct !{!167, !22, !23, !24}
!168 = distinct !{!168, !22, !23, !24}
!169 = distinct !{!169, !22, !23, !24}
!170 = distinct !{!170, !22, !23, !24}
!171 = distinct !{!171, !22, !23}
!172 = !{!173}
!173 = distinct !{!173, !174}
!174 = distinct !{!174, !"LVerDomain"}
!175 = !{!176}
!176 = distinct !{!176, !174}
!177 = !{!178}
!178 = distinct !{!178, !174}
!179 = !{!180}
!180 = distinct !{!180, !174}
!181 = !{!173, !176, !178}
!182 = distinct !{!182, !22, !23, !24}
!183 = distinct !{!183, !22, !23, !24}
!184 = distinct !{!184, !22, !23}
!185 = distinct !{!185, !22, !23}
!186 = distinct !{!186, !22, !23, !24}
!187 = distinct !{!187, !22, !23, !24}
!188 = distinct !{!188, !134}
!189 = distinct !{!189, !22, !23}
!190 = distinct !{!190, !22}
!191 = !{!46, !12, i64 5372}
!192 = !{!193}
!193 = distinct !{!193, !194}
!194 = distinct !{!194, !"LVerDomain"}
!195 = !{!196}
!196 = distinct !{!196, !194}
!197 = !{!198, !193}
!198 = distinct !{!198, !194}
!199 = !{!198}
!200 = distinct !{!200, !22, !23, !24}
!201 = distinct !{!201, !22, !23, !24}
!202 = distinct !{!202, !22, !23}
!203 = distinct !{!203, !22}
!204 = distinct !{!204, !22, !24, !23}
!205 = distinct !{!205, !22}
!206 = !{!46, !51, i64 20}
!207 = !{!46, !51, i64 22}
!208 = distinct !{!208, !22}
!209 = distinct !{!209, !22}
!210 = !{!46, !51, i64 381668}
!211 = distinct !{!211, !22}
!212 = distinct !{!212, !22}
!213 = !{!46, !8, i64 5484}
!214 = !{!46, !49, i64 768264}
!215 = !{!46, !49, i64 768272}
!216 = !{!217, !217, i64 0}
!217 = !{!"_ZTS17LibRaw_exceptions", !9, i64 0}
!218 = distinct !{!218, !22}
!219 = !{!9, !9, i64 0}
!220 = distinct !{!220, !22}
!221 = distinct !{!221, !22}
!222 = distinct !{!222, !22, !23, !24}
!223 = distinct !{!223, !22, !23, !24}
!224 = distinct !{!224, !22, !24, !23}
!225 = distinct !{!225, !22}
!226 = distinct !{!226, !22, !23, !24}
!227 = distinct !{!227, !22, !24, !23}
!228 = distinct !{!228, !22, !23, !24}
!229 = distinct !{!229, !22, !23, !24}
!230 = distinct !{!230, !22, !24, !23}
!231 = distinct !{!231, !22}
!232 = distinct !{!232, !22, !23, !24}
!233 = distinct !{!233, !22, !23, !24}
!234 = distinct !{!234, !22, !24, !23}
!235 = distinct !{!235, !22, !23, !24}
!236 = distinct !{!236, !22, !23, !24}
!237 = distinct !{!237, !22, !24, !23}
!238 = distinct !{!238, !22, !23, !24}
!239 = distinct !{!239, !22, !23, !24}
!240 = distinct !{!240, !22, !24, !23}
!241 = distinct !{!241, !22, !23, !24}
!242 = distinct !{!242, !22, !23, !24}
!243 = distinct !{!243, !22, !23, !24}
!244 = distinct !{!244, !22, !23, !24}
!245 = distinct !{!245, !22, !24, !23}
!246 = distinct !{!246, !22}
!247 = distinct !{!247, !22, !24, !23}
!248 = distinct !{!248, !22}
!249 = distinct !{!249, !134}
!250 = distinct !{!250, !22}
!251 = distinct !{!251, !22}
!252 = !{!46, !8, i64 5384}
!253 = distinct !{!253, !22, !23, !24}
!254 = distinct !{!254, !22, !23, !24}
!255 = distinct !{!255, !22, !24, !23}
!256 = distinct !{!256, !22}
!257 = distinct !{!257, !22}
!258 = distinct !{!258, !134}
!259 = distinct !{!259, !22}
!260 = distinct !{!260, !22}
!261 = distinct !{!261, !22, !23, !24}
!262 = distinct !{!262, !22, !23, !24}
!263 = distinct !{!263, !22, !24, !23}
!264 = distinct !{!264, !22}
!265 = distinct !{!265, !22}
!266 = distinct !{!266, !22, !23, !24}
!267 = distinct !{!267, !22}
!268 = distinct !{!268, !22}
!269 = distinct !{!269, !22, !24, !23}
!270 = distinct !{!270, !22, !23, !24}
!271 = distinct !{!271, !22, !23, !24}
!272 = distinct !{!272, !22, !24, !23}
!273 = distinct !{!273, !22}
!274 = distinct !{!274, !22}
!275 = distinct !{!275, !22}
!276 = distinct !{!276, !22}
!277 = distinct !{!277, !22}
end_hunk_0
