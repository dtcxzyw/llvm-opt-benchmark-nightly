Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp?download=true
inline.NumInlined: 152
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4ncnn6Interp7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.9:bb.a
  br i1 %i.bt, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.bu = load ptr, ptr %i.t, align 8, !tbaa !58  ; 3 uses
  %.not3.i105.i = icmp eq ptr %i.bu, null
  %i.bv = load ptr, ptr %9, align 8, !tbaa !55    ; 3 uses
  br i1 %.not3.i105.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  invoke void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef %i.bv)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i108.i = icmp eq ptr %i.bv, null
  br i1 %.not.i108.i, label %_ZN4ncnn3MatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.bv) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #22
  unreachable

bb.o:                                             ; preds = %.noexc30
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.cc = load ptr, ptr %i.s, align 8, !tbaa !57  ; 2 uses
  %.not.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i, label %_ZN4ncnn3MatD2Ev.exit99.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = atomicrmw add ptr %i.cc, i32 -1 acq_rel, align 4
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit99.i

bb.q:                                             ; preds = %bb.p
  %i.cf = load ptr, ptr %i.t, align 8, !tbaa !58  ; 3 uses
  %.not3.i.i = icmp eq ptr %i.cf, null
  %i.cg = load ptr, ptr %9, align 8, !tbaa !55    ; 3 uses
  br i1 %.not3.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef %i.cg)
          to label %_ZN4ncnn3MatD2Ev.exit99.i unwind label %bb.u, !inline_history !0

bb.s:                                             ; preds = %bb.q
  %.not.i111.i = icmp eq ptr %i.cg, null
  br i1 %.not.i111.i, label %_ZN4ncnn3MatD2Ev.exit99.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.cg) #12
  br label %_ZN4ncnn3MatD2Ev.exit99.i

bb.u:                                             ; preds = %bb.r
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit99.i:                        ; preds = %bb.t, %bb.s, %bb.r, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %.body

bb.v:                                             ; preds = %._crit_edge.i, %.lr.ph130.i
  %indvars.iv140.i = phi i64 [ 0, %.lr.ph130.i ], [ %indvars.iv.next141.i, %._crit_edge.i ] ; 3 uses
  %.087129.i = phi ptr [ %i.at, %.lr.ph130.i ], [ %i.fz, %._crit_edge.i ] ; 3 uses
  %.088128.i = phi ptr [ %i.ax, %.lr.ph130.i ], [ %.1161.i, %._crit_edge.i ] ; 11 uses
  %.089127.i = phi ptr [ %i.aw, %.lr.ph130.i ], [ %.190159.i, %._crit_edge.i ] ; 8 uses
  %.093126.i = phi i32 [ -2, %.lr.ph130.i ], [ %i.cn, %._crit_edge.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv140.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !47 ; 6 uses
  %i.co = icmp eq i32 %i.cn, %.093126.i
  br i1 %i.co, label %.loopexit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = add nsw i32 %.093126.i, 1
  %i.cq = icmp eq i32 %i.cn, %i.cp
  br i1 %i.cq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cr = add nsw i32 %i.cn, 1
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul i64 %i.az, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ct ; 3 uses
  br i1 %i.ay, label %.lr.ph119.i.preheader, label %._crit_edge.i

.lr.ph119.i.preheader:                            ; preds = %bb.x
  br i1 %i.bb, label %.lr.ph119.i.epil.preheader, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %.lr.ph119.i.preheader, %.lr.ph119.i
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i.1, %.lr.ph119.i ], [ 0, %.lr.ph119.i.preheader ] ; 4 uses
  %.096117.i = phi ptr [ %i.do, %.lr.ph119.i ], [ %i.ar, %.lr.ph119.i.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph119.i ], [ 0, %.lr.ph119.i.preheader ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv134.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !47
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cx
  %i.cz = load <2 x float>, ptr %.096117.i, align 4, !tbaa !61
  %i.da = load <2 x float>, ptr %i.cy, align 4, !tbaa !61
  %i.db = fmul fast <2 x float> %i.da, %i.cz
  %i.dc = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.db)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.088128.i, i64 %indvars.iv134.i
  store float %i.dc, ptr %i.dd, align 4, !tbaa !61
  %i.de = getelementptr inbounds nuw i8, ptr %.096117.i, i64 8
  %indvars.iv.next135.i = or disjoint i64 %indvars.iv134.i, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next135.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !47
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.dh
  %i.dj = load <2 x float>, ptr %i.de, align 4, !tbaa !61
  %i.dk = load <2 x float>, ptr %i.di, align 4, !tbaa !61
  %i.dl = fmul fast <2 x float> %i.dk, %i.dj
  %i.dm = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.dl)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.088128.i, i64 %indvars.iv.next135.i
  store float %i.dm, ptr %i.dn, align 4, !tbaa !61
  %i.do = getelementptr inbounds nuw i8, ptr %.096117.i, i64 16 ; 2 uses
  %indvars.iv.next135.i.1 = add nuw nsw i64 %indvars.iv134.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph124.preheader.i.loopexit.unr-lcssa, label %.lr.ph119.i, !llvm.loop !105

bb.y:                                             ; preds = %bb.w
  %i.dp = sext i32 %i.cn to i64
  %i.dq = mul i64 %i.az, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.dq
  %i.ds = add nsw i32 %i.cn, 1
  %i.dt = sext i32 %i.ds to i64
  %i.du = mul i64 %i.az, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.du
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.y, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.y ] ; 4 uses
  %.092115.i = phi ptr [ %i.ek, %.lr.ph.i ], [ %i.ar, %bb.y ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !47
  %i.dy = sext i32 %i.dx to i64                   ; 2 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.dy
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dy
  %i.eb = load <2 x float>, ptr %.092115.i, align 4, !tbaa !61 ; 2 uses
  %i.ec = load <2 x float>, ptr %i.dz, align 4, !tbaa !61
  %i.ed = fmul fast <2 x float> %i.ec, %i.eb
  %i.ee = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.ed)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.088128.i, i64 %indvars.iv.i
  store float %i.ee, ptr %i.ef, align 4, !tbaa !61
  %i.eg = load <2 x float>, ptr %i.ea, align 4, !tbaa !61
  %i.eh = fmul fast <2 x float> %i.eg, %i.eb
  %i.ei = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.eh)
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.089127.i, i64 %indvars.iv.i
  store float %i.ei, ptr %i.ej, align 4, !tbaa !61
  %i.ek = getelementptr inbounds nuw i8, ptr %.092115.i, i64 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph124.preheader.i, label %.lr.ph.i, !llvm.loop !106

.loopexit.i:                                      ; preds = %bb.v
  br i1 %i.ay, label %.lr.ph124.preheader.i, label %._crit_edge.i

.lr.ph124.preheader.i.loopexit.unr-lcssa:         ; preds = %.lr.ph119.i
  br i1 %lcmp.mod.not, label %.lr.ph124.preheader.i, label %.lr.ph119.i.epil.preheader

.lr.ph119.i.epil.preheader:                       ; preds = %.lr.ph124.preheader.i.loopexit.unr-lcssa, %.lr.ph119.i.preheader
  %indvars.iv134.i.epil.init = phi i64 [ 0, %.lr.ph119.i.preheader ], [ %indvars.iv.next135.i.1, %.lr.ph124.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %.096117.i.epil.init = phi ptr [ %i.ar, %.lr.ph119.i.preheader ], [ %i.do, %.lr.ph124.preheader.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod96)
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv134.i.epil.init
  %i.em = load i32, ptr %i.el, align 4, !tbaa !47
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.en
  %i.ep = load <2 x float>, ptr %.096117.i.epil.init, align 4, !tbaa !61
  %i.eq = load <2 x float>, ptr %i.eo, align 4, !tbaa !61
  %i.er = fmul fast <2 x float> %i.eq, %i.ep
  %i.es = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.er)
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.088128.i, i64 %indvars.iv134.i.epil.init
  store float %i.es, ptr %i.et, align 4, !tbaa !61
  br label %.lr.ph124.preheader.i

.lr.ph124.preheader.i:                            ; preds = %.lr.ph.i, %.lr.ph119.i.epil.preheader, %.lr.ph124.preheader.i.loopexit.unr-lcssa, %.loopexit.i
  %.1162.i = phi ptr [ %.088128.i, %.loopexit.i ], [ %.089127.i, %.lr.ph119.i.epil.preheader ], [ %.089127.i, %.lr.ph124.preheader.i.loopexit.unr-lcssa ], [ %.088128.i, %.lr.ph.i ] ; 8 uses
  %.190160.i = phi ptr [ %.089127.i, %.loopexit.i ], [ %.088128.i, %.lr.ph119.i.epil.preheader ], [ %.088128.i, %.lr.ph124.preheader.i.loopexit.unr-lcssa ], [ %.089127.i, %.lr.ph.i ] ; 8 uses
  %i.eu = load float, ptr %.087129.i, align 4, !tbaa !61 ; 4 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %.087129.i, i64 4
  %i.ev = load float, ptr %.in.i, align 4, !tbaa !61 ; 4 uses
  %.reass.i = mul i64 %factor.op.mul.i, %indvars.iv140.i ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.reass.i ; 4 uses
  br i1 %min.iters.check, label %.lr.ph124.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph124.preheader.i
  %.1162.i83 = ptrtoaddr ptr %.190160.i to i64
  %.190160.i82 = ptrtoaddr ptr %.1162.i to i64
  %i.ex = add i64 %i.ba, %.reass.i                ; 2 uses
  %i.ey = sub i64 %.190160.i82, %i.ex
  %diff.check = icmp ugt i64 %i.ey, -32
  %i.ez = sub i64 %.1162.i83, %i.ex
  %diff.check84 = icmp ugt i64 %i.ez, -32
  %conflict.rdx = or i1 %diff.check, %diff.check84
  br i1 %conflict.rdx, label %.lr.ph124.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fa = getelementptr i8, ptr %i.ew, i64 %i.bg
  %i.fb = getelementptr i8, ptr %.190160.i, i64 %i.bg
  %i.fc = getelementptr i8, ptr %.1162.i, i64 %i.bg
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.eu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert85 = insertelement <4 x float> poison, float %i.ev, i64 0
  %broadcast.splat86 = shufflevector <4 x float> %broadcast.splatinsert85, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fd = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ew, i64 %i.fd ; 2 uses
  %next.gep87 = getelementptr i8, ptr %.190160.i, i64 %i.fd ; 2 uses
  %next.gep88 = getelementptr i8, ptr %.1162.i, i64 %i.fd ; 2 uses
  %i.fe = getelementptr i8, ptr %next.gep88, i64 16
  %wide.load = load <4 x float>, ptr %next.gep88, align 4, !tbaa !61
  %wide.load89 = load <4 x float>, ptr %i.fe, align 4, !tbaa !61
  %i.ff = fmul fast <4 x float> %wide.load, %broadcast.splat
  %i.fg = fmul fast <4 x float> %wide.load89, %broadcast.splat
  %i.fh = getelementptr i8, ptr %next.gep87, i64 16
  %wide.load90 = load <4 x float>, ptr %next.gep87, align 4, !tbaa !61
  %wide.load91 = load <4 x float>, ptr %i.fh, align 4, !tbaa !61
  %i.fi = fmul fast <4 x float> %wide.load90, %broadcast.splat86
  %i.fj = fmul fast <4 x float> %wide.load91, %broadcast.splat86
  %i.fk = fadd fast <4 x float> %i.fi, %i.ff
  %i.fl = fadd fast <4 x float> %i.fj, %i.fg
  %i.fm = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %i.fk, ptr %next.gep, align 4, !tbaa !61
  store <4 x float> %i.fl, ptr %i.fm, align 4, !tbaa !61
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph124.i.preheader

.lr.ph124.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph124.preheader.i, %middle.block
  %.0123.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph124.preheader.i ], [ %i.bf, %middle.block ] ; 4 uses
  %.084122.i.ph = phi ptr [ %i.ew, %vector.memcheck ], [ %i.ew, %.lr.ph124.preheader.i ], [ %i.fa, %middle.block ] ; 3 uses
  %.085121.i.ph = phi ptr [ %.190160.i, %vector.memcheck ], [ %.190160.i, %.lr.ph124.preheader.i ], [ %i.fb, %middle.block ] ; 3 uses
  %.086120.i.ph = phi ptr [ %.1162.i, %vector.memcheck ], [ %.1162.i, %.lr.ph124.preheader.i ], [ %i.fc, %middle.block ] ; 3 uses
  %i.fo = sub i32 %i.ah, %.0123.i.ph
  %.neg = add i32 %.0123.i.ph, 1
  %xtraiter97 = and i32 %i.fo, 1
  %lcmp.mod98.not = icmp eq i32 %xtraiter97, 0
  br i1 %lcmp.mod98.not, label %.lr.ph124.i.prol.loopexit, label %.lr.ph124.i.prol

.lr.ph124.i.prol:                                 ; preds = %.lr.ph124.i.preheader
  %i.fp = getelementptr inbounds nuw i8, ptr %.086120.i.ph, i64 4
  %i.fq = load float, ptr %.086120.i.ph, align 4, !tbaa !61
  %i.fr = fmul fast float %i.fq, %i.eu
  %i.fs = getelementptr inbounds nuw i8, ptr %.085121.i.ph, i64 4
  %i.ft = load float, ptr %.085121.i.ph, align 4, !tbaa !61
  %i.fu = fmul fast float %i.ft, %i.ev
  %i.fv = fadd fast float %i.fu, %i.fr
  %i.fw = getelementptr inbounds nuw i8, ptr %.084122.i.ph, i64 4
  store float %i.fv, ptr %.084122.i.ph, align 4, !tbaa !61
  %i.fx = add nuw nsw i32 %.0123.i.ph, 1
  br label %.lr.ph124.i.prol.loopexit

.lr.ph124.i.prol.loopexit:                        ; preds = %.lr.ph124.i.prol, %.lr.ph124.i.preheader
  %.0123.i.unr = phi i32 [ %.0123.i.ph, %.lr.ph124.i.preheader ], [ %i.fx, %.lr.ph124.i.prol ]
  %.084122.i.unr = phi ptr [ %.084122.i.ph, %.lr.ph124.i.preheader ], [ %i.fw, %.lr.ph124.i.prol ]
  %.085121.i.unr = phi ptr [ %.085121.i.ph, %.lr.ph124.i.preheader ], [ %i.fs, %.lr.ph124.i.prol ]
  %.086120.i.unr = phi ptr [ %.086120.i.ph, %.lr.ph124.i.preheader ], [ %i.fp, %.lr.ph124.i.prol ]
  %i.fy = icmp eq i32 %i.ah, %.neg
  br i1 %i.fy, label %._crit_edge.i, label %.lr.ph124.i

._crit_edge.i:                                    ; preds = %.lr.ph124.i.prol.loopexit, %.lr.ph124.i, %middle.block, %.loopexit.i, %bb.y, %bb.x
  %.1161.i = phi ptr [ %.089127.i, %bb.x ], [ %.088128.i, %.loopexit.i ], [ %.088128.i, %bb.y ], [ %.1162.i, %middle.block ], [ %.1162.i, %.lr.ph124.i ], [ %.1162.i, %.lr.ph124.i.prol.loopexit ]
  %.190159.i = phi ptr [ %.088128.i, %bb.x ], [ %.089127.i, %.loopexit.i ], [ %.089127.i, %bb.y ], [ %.190160.i, %middle.block ], [ %.190160.i, %.lr.ph124.i ], [ %.190160.i, %.lr.ph124.i.prol.loopexit ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.087129.i, i64 8
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %exitcond144.not.i = icmp eq i64 %indvars.iv.next141.i, %wide.trip.count143.i
  br i1 %exitcond144.not.i, label %._crit_edge131.i, label %bb.v, !llvm.loop !108

.lr.ph124.i:                                      ; preds = %.lr.ph124.i.prol.loopexit, %.lr.ph124.i
  %.0123.i = phi i32 [ %i.gq, %.lr.ph124.i ], [ %.0123.i.unr, %.lr.ph124.i.prol.loopexit ]
  %.084122.i = phi ptr [ %i.gp, %.lr.ph124.i ], [ %.084122.i.unr, %.lr.ph124.i.prol.loopexit ] ; 3 uses
  %.085121.i = phi ptr [ %i.gl, %.lr.ph124.i ], [ %.085121.i.unr, %.lr.ph124.i.prol.loopexit ] ; 3 uses
  %.086120.i = phi ptr [ %i.gi, %.lr.ph124.i ], [ %.086120.i.unr, %.lr.ph124.i.prol.loopexit ] ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.086120.i, i64 4
  %i.gb = load float, ptr %.086120.i, align 4, !tbaa !61
  %i.gc = fmul fast float %i.gb, %i.eu
  %i.gd = getelementptr inbounds nuw i8, ptr %.085121.i, i64 4
  %i.ge = load float, ptr %.085121.i, align 4, !tbaa !61
  %i.gf = fmul fast float %i.ge, %i.ev
  %i.gg = fadd fast float %i.gf, %i.gc
  %i.gh = getelementptr inbounds nuw i8, ptr %.084122.i, i64 4
  store float %i.gg, ptr %.084122.i, align 4, !tbaa !61
  %i.gi = getelementptr inbounds nuw i8, ptr %.086120.i, i64 8
  %i.gj = load float, ptr %i.ga, align 4, !tbaa !61
  %i.gk = fmul fast float %i.gj, %i.eu
  %i.gl = getelementptr inbounds nuw i8, ptr %.085121.i, i64 8
  %i.gm = load float, ptr %i.gd, align 4, !tbaa !61
  %i.gn = fmul fast float %i.gm, %i.ev
  %i.go = fadd fast float %i.gn, %i.gk
  %i.gp = getelementptr inbounds nuw i8, ptr %.084122.i, i64 8
  store float %i.go, ptr %i.gh, align 4, !tbaa !61
  %i.gq = add nuw nsw i32 %.0123.i, 2             ; 2 uses
  %exitcond139.not.i.1 = icmp eq i32 %i.gq, %i.ah
  br i1 %exitcond139.not.i.1, label %._crit_edge.i, label %.lr.ph124.i, !llvm.loop !109

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %_ZN4ncnn3MatD2Ev.exit98.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.gr = load i32, ptr %i.b, align 4, !tbaa !47
  %i.gs = sext i32 %i.gr to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.gs
  br i1 %.not.not, label %.noexc29, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.aa:                                            ; preds = %.noexc29
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit99.i, %bb.aa
  %eh.lpad-body = phi { ptr, i32 } [ %i.gt, %bb.aa ], [ %i.cb, %_ZN4ncnn3MatD2Ev.exit99.i ]
  %i.gu = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.gu) #22
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn6Interp7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !47     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.bd

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !47
  %i.h = load i32, ptr %0, align 4, !tbaa !47     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !47
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !47
  %i.k = load i32, ptr %i.a, align 4, !tbaa !47   ; 2 uses
  %.not103 = icmp sgt i32 %i.k, %i.j
  br i1 %.not103, label %._crit_edge, label %.noexc29.lr.ph

.noexc29.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ae = sext i32 %i.k to i64
  br label %.noexc29
end_hunk_0
begin_hunk_1_@_ZNK4ncnn6Interp7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.10:bb.a
  %i.en = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -4
  %i.ep = load <4 x float>, ptr %i.ej, align 4, !tbaa !61
  %i.eq = load <4 x float>, ptr %i.eo, align 4, !tbaa !61
  %i.er = fmul fast <4 x float> %i.eq, %i.ep
  %i.es = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.er)
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.0265360.i, i64 %indvars.iv.next379.i
  store float %i.es, ptr %i.et, align 4, !tbaa !61
  %i.eu = getelementptr inbounds nuw i8, ptr %.0277346.i, i64 32 ; 2 uses
  %indvars.iv.next379.i.1 = add nuw nsw i64 %indvars.iv378.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph354.preheader.i.loopexit.unr-lcssa, label %.lr.ph347.i, !llvm.loop !116

bb.am:                                            ; preds = %bb.ak
  %i.ev = add nsw i32 %.0275356.i, 2
  %i.ew = icmp eq i32 %i.dr, %i.ev
  br i1 %i.ew, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ex = add nsw i32 %i.dr, 1
  %i.ey = sext i32 %i.ex to i64
  %i.ez = mul i64 %i.bh, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ez
  %i.fb = add nsw i32 %i.dr, 2
  %i.fc = sext i32 %i.fb to i64
  %i.fd = mul i64 %i.bh, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.fd
  br i1 %i.bg, label %.lr.ph344.i, label %._crit_edge.i

.lr.ph344.i:                                      ; preds = %bb.an, %.lr.ph344.i
  %indvars.iv373.i = phi i64 [ %indvars.iv.next374.i, %.lr.ph344.i ], [ 0, %bb.an ] ; 4 uses
  %.0281343.i = phi ptr [ %i.fv, %.lr.ph344.i ], [ %i.ax, %bb.an ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv373.i
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !47
  %i.fh = sext i32 %i.fg to i64                   ; 2 uses
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.fh
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.fh
  %i.fk = getelementptr inbounds i8, ptr %i.fi, i64 -4
  %i.fl = load <4 x float>, ptr %.0281343.i, align 4, !tbaa !61 ; 2 uses
  %i.fm = load <4 x float>, ptr %i.fk, align 4, !tbaa !61
  %i.fn = fmul fast <4 x float> %i.fm, %i.fl
  %i.fo = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.fn)
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.0265360.i, i64 %indvars.iv373.i
  store float %i.fo, ptr %i.fp, align 4, !tbaa !61
  %i.fq = getelementptr inbounds i8, ptr %i.fj, i64 -4
  %i.fr = load <4 x float>, ptr %i.fq, align 4, !tbaa !61
  %i.fs = fmul fast <4 x float> %i.fr, %i.fl
  %i.ft = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.fs)
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.0267359.i, i64 %indvars.iv373.i
  store float %i.ft, ptr %i.fu, align 4, !tbaa !61
  %i.fv = getelementptr inbounds nuw i8, ptr %.0281343.i, i64 16
  %indvars.iv.next374.i = add nuw nsw i64 %indvars.iv373.i, 1 ; 2 uses
  %exitcond377.not.i = icmp eq i64 %indvars.iv.next374.i, %wide.trip.count.i
  br i1 %exitcond377.not.i, label %.lr.ph354.preheader.i, label %.lr.ph344.i, !llvm.loop !117

bb.ao:                                            ; preds = %bb.am
  %i.fw = add nsw i32 %.0275356.i, 3
  %i.fx = icmp eq i32 %i.dr, %i.fw
  br i1 %i.fx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fy = sext i32 %i.dr to i64
  %i.fz = mul i64 %i.bh, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.fz
  %i.gb = add nsw i32 %i.dr, 1
  %i.gc = sext i32 %i.gb to i64
  %i.gd = mul i64 %i.bh, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.gd
  %i.gf = add nsw i32 %i.dr, 2
  %i.gg = sext i32 %i.gf to i64
  %i.gh = mul i64 %i.bh, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.gh
  br i1 %i.bg, label %.lr.ph341.i, label %._crit_edge.i

.lr.ph341.i:                                      ; preds = %bb.ap, %.lr.ph341.i
  %indvars.iv368.i = phi i64 [ %indvars.iv.next369.i, %.lr.ph341.i ], [ 0, %bb.ap ] ; 5 uses
  %.0279339.i = phi ptr [ %i.hf, %.lr.ph341.i ], [ %i.ax, %bb.ap ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv368.i
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !47
  %i.gl = sext i32 %i.gk to i64                   ; 3 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.gl
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gl
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.gl
  %i.gp = getelementptr inbounds i8, ptr %i.gm, i64 -4
  %i.gq = load <4 x float>, ptr %.0279339.i, align 4, !tbaa !61 ; 3 uses
  %i.gr = load <4 x float>, ptr %i.gp, align 4, !tbaa !61
  %i.gs = fmul fast <4 x float> %i.gr, %i.gq
  %i.gt = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.gs)
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.0265360.i, i64 %indvars.iv368.i
  store float %i.gt, ptr %i.gu, align 4, !tbaa !61
  %i.gv = getelementptr inbounds i8, ptr %i.gn, i64 -4
  %i.gw = load <4 x float>, ptr %i.gv, align 4, !tbaa !61
  %i.gx = fmul fast <4 x float> %i.gw, %i.gq
  %i.gy = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.gx)
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.0267359.i, i64 %indvars.iv368.i
  store float %i.gy, ptr %i.gz, align 4, !tbaa !61
  %i.ha = getelementptr inbounds i8, ptr %i.go, i64 -4
  %i.hb = load <4 x float>, ptr %i.ha, align 4, !tbaa !61
  %i.hc = fmul fast <4 x float> %i.hb, %i.gq
  %i.hd = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.hc)
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.0269358.i, i64 %indvars.iv368.i
  store float %i.hd, ptr %i.he, align 4, !tbaa !61
  %i.hf = getelementptr inbounds nuw i8, ptr %.0279339.i, i64 16
  %indvars.iv.next369.i = add nuw nsw i64 %indvars.iv368.i, 1 ; 2 uses
  %exitcond372.not.i = icmp eq i64 %indvars.iv.next369.i, %wide.trip.count.i
  br i1 %exitcond372.not.i, label %.lr.ph354.preheader.i, label %.lr.ph341.i, !llvm.loop !118

bb.aq:                                            ; preds = %bb.ao
  %i.hg = add nsw i32 %i.dr, -1
  %i.hh = sext i32 %i.hg to i64
  %i.hi = mul i64 %i.bh, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.hi
  %i.hk = sext i32 %i.dr to i64
  %i.hl = mul i64 %i.bh, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.hl
  %i.hn = add nsw i32 %i.dr, 1
  %i.ho = sext i32 %i.hn to i64
  %i.hp = mul i64 %i.bh, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.hp
  %i.hr = add nsw i32 %i.dr, 2
  %i.hs = sext i32 %i.hr to i64
  %i.ht = mul i64 %i.bh, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ht
  br i1 %i.bg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.aq, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.aq ] ; 6 uses
  %.0274337.i = phi ptr [ %i.ix, %.lr.ph.i ], [ %i.ax, %bb.aq ] ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !47
  %i.hx = sext i32 %i.hw to i64                   ; 4 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.hx
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.hx
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.hx
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.hx
  %i.ic = getelementptr inbounds i8, ptr %i.hy, i64 -4
  %i.id = load <4 x float>, ptr %.0274337.i, align 4, !tbaa !61 ; 4 uses
  %i.ie = load <4 x float>, ptr %i.ic, align 4, !tbaa !61
  %i.if = fmul fast <4 x float> %i.ie, %i.id
  %i.ig = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.if)
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.0265360.i, i64 %indvars.iv.i
  store float %i.ig, ptr %i.ih, align 4, !tbaa !61
  %i.ii = getelementptr inbounds i8, ptr %i.hz, i64 -4
  %i.ij = load <4 x float>, ptr %i.ii, align 4, !tbaa !61
  %i.ik = fmul fast <4 x float> %i.ij, %i.id
  %i.il = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ik)
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.0267359.i, i64 %indvars.iv.i
  store float %i.il, ptr %i.im, align 4, !tbaa !61
  %i.in = getelementptr inbounds i8, ptr %i.ia, i64 -4
  %i.io = load <4 x float>, ptr %i.in, align 4, !tbaa !61
  %i.ip = fmul fast <4 x float> %i.io, %i.id
  %i.iq = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ip)
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.0269358.i, i64 %indvars.iv.i
  store float %i.iq, ptr %i.ir, align 4, !tbaa !61
  %i.is = getelementptr inbounds i8, ptr %i.ib, i64 -4
  %i.it = load <4 x float>, ptr %i.is, align 4, !tbaa !61
  %i.iu = fmul fast <4 x float> %i.it, %i.id
  %i.iv = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.iu)
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.0271357.i, i64 %indvars.iv.i
  store float %i.iv, ptr %i.iw, align 4, !tbaa !61
  %i.ix = getelementptr inbounds nuw i8, ptr %.0274337.i, i64 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph354.preheader.i, label %.lr.ph.i, !llvm.loop !119

.loopexit.i:                                      ; preds = %bb.aj
  br i1 %i.bg, label %.lr.ph354.preheader.i, label %._crit_edge.i

.lr.ph354.preheader.i.loopexit.unr-lcssa:         ; preds = %.lr.ph347.i
  br i1 %lcmp.mod.not, label %.lr.ph354.preheader.i, label %.lr.ph347.i.epil.preheader

.lr.ph347.i.epil.preheader:                       ; preds = %.lr.ph354.preheader.i.loopexit.unr-lcssa, %.lr.ph347.i.preheader
  %indvars.iv378.i.epil.init = phi i64 [ 0, %.lr.ph347.i.preheader ], [ %indvars.iv.next379.i.1, %.lr.ph354.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %.0277346.i.epil.init = phi ptr [ %i.ax, %.lr.ph347.i.preheader ], [ %i.eu, %.lr.ph354.preheader.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod178)
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv378.i.epil.init
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !47
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.ja
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 -4
  %i.jd = load <4 x float>, ptr %.0277346.i.epil.init, align 4, !tbaa !61
  %i.je = load <4 x float>, ptr %i.jc, align 4, !tbaa !61
  %i.jf = fmul fast <4 x float> %i.je, %i.jd
  %i.jg = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.jf)
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.0265360.i, i64 %indvars.iv378.i.epil.init
  store float %i.jg, ptr %i.jh, align 4, !tbaa !61
  br label %.lr.ph354.preheader.i

.lr.ph354.preheader.i:                            ; preds = %.lr.ph.i, %.lr.ph341.i, %.lr.ph344.i, %.lr.ph347.i.epil.preheader, %.lr.ph354.preheader.i.loopexit.unr-lcssa, %.loopexit.i
  %.1266423.i = phi ptr [ %.0265360.i, %.loopexit.i ], [ %.0267359.i, %.lr.ph347.i.epil.preheader ], [ %.0269358.i, %.lr.ph344.i ], [ %.0271357.i, %.lr.ph341.i ], [ %.0267359.i, %.lr.ph354.preheader.i.loopexit.unr-lcssa ], [ %.0265360.i, %.lr.ph.i ] ; 7 uses
  %.1268421.i = phi ptr [ %.0267359.i, %.loopexit.i ], [ %.0269358.i, %.lr.ph347.i.epil.preheader ], [ %.0271357.i, %.lr.ph344.i ], [ %.0265360.i, %.lr.ph341.i ], [ %.0269358.i, %.lr.ph354.preheader.i.loopexit.unr-lcssa ], [ %.0267359.i, %.lr.ph.i ] ; 7 uses
  %.1270419.i = phi ptr [ %.0269358.i, %.loopexit.i ], [ %.0271357.i, %.lr.ph347.i.epil.preheader ], [ %.0265360.i, %.lr.ph344.i ], [ %.0267359.i, %.lr.ph341.i ], [ %.0271357.i, %.lr.ph354.preheader.i.loopexit.unr-lcssa ], [ %.0269358.i, %.lr.ph.i ] ; 7 uses
  %.1272417.i = phi ptr [ %.0271357.i, %.loopexit.i ], [ %.0265360.i, %.lr.ph347.i.epil.preheader ], [ %.0267359.i, %.lr.ph344.i ], [ %.0269358.i, %.lr.ph341.i ], [ %.0265360.i, %.lr.ph354.preheader.i.loopexit.unr-lcssa ], [ %.0271357.i, %.lr.ph.i ] ; 7 uses
  %i.ji = load <4 x float>, ptr %.0261361.i, align 4, !tbaa !61 ; 5 uses
  %.reass.i = mul i64 %factor.op.mul.i, %indvars.iv384.i ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.av, i64 %.reass.i ; 4 uses
  br i1 %min.iters.check, label %.lr.ph354.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph354.preheader.i
  %.1266423.i151 = ptrtoaddr ptr %.1272417.i to i64
  %.1268421.i150 = ptrtoaddr ptr %.1270419.i to i64
  %.1270419.i149 = ptrtoaddr ptr %.1268421.i to i64
  %.1272417.i148 = ptrtoaddr ptr %.1266423.i to i64
  %i.jk = add i64 %i.bi, %.reass.i                ; 4 uses
  %i.jl = sub i64 %.1272417.i148, %i.jk
  %diff.check = icmp ugt i64 %i.jl, -16
  %i.jm = sub i64 %.1270419.i149, %i.jk
  %diff.check152 = icmp ugt i64 %i.jm, -16
  %conflict.rdx = or i1 %diff.check, %diff.check152
  %i.jn = sub i64 %.1268421.i150, %i.jk
  %diff.check153 = icmp ugt i64 %i.jn, -16
  %conflict.rdx154 = or i1 %conflict.rdx, %diff.check153
  %i.jo = sub i64 %.1266423.i151, %i.jk
  %diff.check155 = icmp ugt i64 %i.jo, -16
  %conflict.rdx156 = or i1 %conflict.rdx154, %diff.check155
  br i1 %conflict.rdx156, label %.lr.ph354.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.jp = getelementptr i8, ptr %i.jj, i64 %i.bo
  %i.jq = getelementptr i8, ptr %.1272417.i, i64 %i.bo
  %i.jr = getelementptr i8, ptr %.1270419.i, i64 %i.bo
  %i.js = getelementptr i8, ptr %.1268421.i, i64 %i.bo
  %i.jt = getelementptr i8, ptr %.1266423.i, i64 %i.bo
  %broadcast.splat = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat158 = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat160 = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat162 = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ju = shl i64 %index, 2                       ; 5 uses
  %next.gep = getelementptr i8, ptr %i.jj, i64 %i.ju
  %next.gep163 = getelementptr i8, ptr %.1272417.i, i64 %i.ju
  %next.gep164 = getelementptr i8, ptr %.1270419.i, i64 %i.ju
  %next.gep165 = getelementptr i8, ptr %.1268421.i, i64 %i.ju
  %next.gep166 = getelementptr i8, ptr %.1266423.i, i64 %i.ju
  %wide.load = load <4 x float>, ptr %next.gep166, align 4, !tbaa !61
  %i.jv = fmul fast <4 x float> %wide.load, %broadcast.splat
  %wide.load167 = load <4 x float>, ptr %next.gep165, align 4, !tbaa !61
  %i.jw = fmul fast <4 x float> %wide.load167, %broadcast.splat158
  %i.jx = fadd fast <4 x float> %i.jw, %i.jv
  %wide.load168 = load <4 x float>, ptr %next.gep164, align 4, !tbaa !61
  %i.jy = fmul fast <4 x float> %wide.load168, %broadcast.splat160
  %i.jz = fadd fast <4 x float> %i.jx, %i.jy
  %wide.load169 = load <4 x float>, ptr %next.gep163, align 4, !tbaa !61
  %i.ka = fmul fast <4 x float> %wide.load169, %broadcast.splat162
  %i.kb = fadd fast <4 x float> %i.jz, %i.ka
  store <4 x float> %i.kb, ptr %next.gep, align 4, !tbaa !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kc = icmp eq i64 %index.next, %n.vec
  br i1 %i.kc, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph354.i.preheader

.lr.ph354.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph354.preheader.i, %middle.block
  %.0353.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph354.preheader.i ], [ %i.bn, %middle.block ]
  %.0256352.i.ph = phi ptr [ %i.jj, %vector.memcheck ], [ %i.jj, %.lr.ph354.preheader.i ], [ %i.jp, %middle.block ]
  %.0257351.i.ph = phi ptr [ %.1272417.i, %vector.memcheck ], [ %.1272417.i, %.lr.ph354.preheader.i ], [ %i.jq, %middle.block ]
  %.0258350.i.ph = phi ptr [ %.1270419.i, %vector.memcheck ], [ %.1270419.i, %.lr.ph354.preheader.i ], [ %i.jr, %middle.block ]
  %.0259349.i.ph = phi ptr [ %.1268421.i, %vector.memcheck ], [ %.1268421.i, %.lr.ph354.preheader.i ], [ %i.js, %middle.block ]
  %.0260348.i.ph = phi ptr [ %.1266423.i, %vector.memcheck ], [ %.1266423.i, %.lr.ph354.preheader.i ], [ %i.jt, %middle.block ]
  br label %.lr.ph354.i

._crit_edge.i:                                    ; preds = %.lr.ph354.i, %middle.block, %.loopexit.i, %bb.aq, %bb.ap, %bb.an, %bb.al
  %.1266422.i = phi ptr [ %.0267359.i, %bb.al ], [ %.0265360.i, %.loopexit.i ], [ %.0265360.i, %bb.aq ], [ %.0271357.i, %bb.ap ], [ %.0269358.i, %bb.an ], [ %.1266423.i, %middle.block ], [ %.1266423.i, %.lr.ph354.i ]
  %.1268420.i = phi ptr [ %.0269358.i, %bb.al ], [ %.0267359.i, %.loopexit.i ], [ %.0267359.i, %bb.aq ], [ %.0265360.i, %bb.ap ], [ %.0271357.i, %bb.an ], [ %.1268421.i, %middle.block ], [ %.1268421.i, %.lr.ph354.i ]
  %.1270418.i = phi ptr [ %.0271357.i, %bb.al ], [ %.0269358.i, %.loopexit.i ], [ %.0269358.i, %bb.aq ], [ %.0267359.i, %bb.ap ], [ %.0265360.i, %bb.an ], [ %.1270419.i, %middle.block ], [ %.1270419.i, %.lr.ph354.i ]
  %.1272416.i = phi ptr [ %.0265360.i, %bb.al ], [ %.0271357.i, %.loopexit.i ], [ %.0271357.i, %bb.aq ], [ %.0269358.i, %bb.ap ], [ %.0267359.i, %bb.an ], [ %.1272417.i, %middle.block ], [ %.1272417.i, %.lr.ph354.i ]
  %i.kd = getelementptr inbounds nuw i8, ptr %.0261361.i, i64 16
  %indvars.iv.next385.i = add nuw nsw i64 %indvars.iv384.i, 1 ; 2 uses
  %exitcond388.not.i = icmp eq i64 %indvars.iv.next385.i, %wide.trip.count387.i
  br i1 %exitcond388.not.i, label %._crit_edge363.i, label %bb.aj, !llvm.loop !121

.lr.ph354.i:                                      ; preds = %.lr.ph354.i.preheader, %.lr.ph354.i
  %.0353.i = phi i32 [ %i.kt, %.lr.ph354.i ], [ %.0353.i.ph, %.lr.ph354.i.preheader ]
  %.0256352.i = phi ptr [ %i.ks, %.lr.ph354.i ], [ %.0256352.i.ph, %.lr.ph354.i.preheader ] ; 2 uses
  %.0257351.i = phi ptr [ %i.kk, %.lr.ph354.i ], [ %.0257351.i.ph, %.lr.ph354.i.preheader ] ; 2 uses
  %.0258350.i = phi ptr [ %i.ki, %.lr.ph354.i ], [ %.0258350.i.ph, %.lr.ph354.i.preheader ] ; 2 uses
  %.0259349.i = phi ptr [ %i.kg, %.lr.ph354.i ], [ %.0259349.i.ph, %.lr.ph354.i.preheader ] ; 2 uses
  %.0260348.i = phi ptr [ %i.ke, %.lr.ph354.i ], [ %.0260348.i.ph, %.lr.ph354.i.preheader ] ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.0260348.i, i64 4
  %i.kf = load float, ptr %.0260348.i, align 4, !tbaa !61
  %i.kg = getelementptr inbounds nuw i8, ptr %.0259349.i, i64 4
  %i.kh = load float, ptr %.0259349.i, align 4, !tbaa !61
  %i.ki = getelementptr inbounds nuw i8, ptr %.0258350.i, i64 4
  %i.kj = load float, ptr %.0258350.i, align 4, !tbaa !61
  %i.kk = getelementptr inbounds nuw i8, ptr %.0257351.i, i64 4
  %i.kl = load float, ptr %.0257351.i, align 4, !tbaa !61
  %i.km = insertelement <4 x float> poison, float %i.kf, i64 0
  %i.kn = insertelement <4 x float> %i.km, float %i.kh, i64 1
  %i.ko = insertelement <4 x float> %i.kn, float %i.kj, i64 2
  %i.kp = insertelement <4 x float> %i.ko, float %i.kl, i64 3
  %i.kq = fmul fast <4 x float> %i.kp, %i.ji
  %i.kr = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.kq)
  %i.ks = getelementptr inbounds nuw i8, ptr %.0256352.i, i64 4
  store float %i.kr, ptr %.0256352.i, align 4, !tbaa !61
  %i.kt = add nuw nsw i32 %.0353.i, 1             ; 2 uses
  %exitcond383.not.i = icmp eq i32 %i.kt, %i.an
  br i1 %exitcond383.not.i, label %._crit_edge.i, label %.lr.ph354.i, !llvm.loop !122

_ZN4ncnn3MatD2Ev.exit291.i:                       ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.ab
  %.pn.i = phi { ptr, i32 } [ %i.de, %bb.ab ], [ %i.df, %bb.ad ], [ %i.df, %bb.ac ], [ %i.df, %bb.af ], [ %i.df, %bb.ag ], [ %i.df, %bb.ah ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.ku = load ptr, ptr %i.v, align 8, !tbaa !57  ; 2 uses
  %.not.i308.i = icmp eq ptr %i.ku, null
  br i1 %.not.i308.i, label %_ZN4ncnn3MatD2Ev.exit286.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit291.i
  %i.kv = atomicrmw add ptr %i.ku, i32 -1 acq_rel, align 4
  %i.kw = icmp eq i32 %i.kv, 1
  br i1 %i.kw, label %bb.as, label %_ZN4ncnn3MatD2Ev.exit286.i

bb.as:                                            ; preds = %bb.ar
  %i.kx = load ptr, ptr %i.w, align 8, !tbaa !58  ; 3 uses
  %.not3.i309.i = icmp eq ptr %i.kx, null
  %i.ky = load ptr, ptr %10, align 8, !tbaa !55   ; 3 uses
  br i1 %.not3.i309.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kz = load ptr, ptr %i.kx, align 8, !tbaa !12
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lb = load ptr, ptr %i.la, align 8
  invoke void %i.lb(ptr noundef nonnull align 8 dereferenceable(8) %i.kx, ptr noundef %i.ky)
          to label %_ZN4ncnn3MatD2Ev.exit286.i unwind label %bb.aw, !inline_history !0

bb.au:                                            ; preds = %bb.as
  %.not.i317.i = icmp eq ptr %i.ky, null
  br i1 %.not.i317.i, label %_ZN4ncnn3MatD2Ev.exit286.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @free(ptr noundef nonnull %i.ky) #12
  br label %_ZN4ncnn3MatD2Ev.exit286.i

bb.aw:                                            ; preds = %bb.at
  %i.lc = landingpad { ptr, i32 }
          catch ptr null
  %i.ld = extractvalue { ptr, i32 } %i.lc, 0
  call void @__clang_call_terminate(ptr %i.ld) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit286.i:                       ; preds = %bb.av, %bb.au, %bb.at, %bb.ar, %_ZN4ncnn3MatD2Ev.exit291.i, %bb.aa
  %.pn.pn.i = phi { ptr, i32 } [ %i.dd, %bb.aa ], [ %.pn.i, %bb.ar ], [ %.pn.i, %_ZN4ncnn3MatD2Ev.exit291.i ], [ %.pn.i, %bb.at ], [ %.pn.i, %bb.au ], [ %.pn.i, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.le = load ptr, ptr %i.s, align 8, !tbaa !57  ; 2 uses
  %.not.i312.i = icmp eq ptr %i.le, null
  br i1 %.not.i312.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit286.i
  %i.lf = atomicrmw add ptr %i.le, i32 -1 acq_rel, align 4
  %i.lg = icmp eq i32 %i.lf, 1
  br i1 %i.lg, label %bb.ay, label %_ZN4ncnn3MatD2Ev.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.lh = load ptr, ptr %i.t, align 8, !tbaa !58  ; 3 uses
  %.not3.i313.i = icmp eq ptr %i.lh, null
  %i.li = load ptr, ptr %9, align 8, !tbaa !55    ; 3 uses
  br i1 %.not3.i313.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lj = load ptr, ptr %i.lh, align 8, !tbaa !12
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ll = load ptr, ptr %i.lk, align 8
  invoke void %i.ll(ptr noundef nonnull align 8 dereferenceable(8) %i.lh, ptr noundef %i.li)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.bc, !inline_history !0

bb.ba:                                            ; preds = %bb.ay
  %.not.i316.i = icmp eq ptr %i.li, null
  br i1 %.not.i316.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @free(ptr noundef nonnull %i.li) #12
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.bc:                                            ; preds = %bb.az
  %i.lm = landingpad { ptr, i32 }
          catch ptr null
  %i.ln = extractvalue { ptr, i32 } %i.lm, 0
  call void @__clang_call_terminate(ptr %i.ln) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax, %_ZN4ncnn3MatD2Ev.exit286.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %.body

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.y, %bb.x, %bb.w, %bb.u, %_ZN4ncnn3MatD2Ev.exit288.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.lo = load i32, ptr %i.b, align 4, !tbaa !47
  %i.lp = sext i32 %i.lo to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.lp
  br i1 %.not.not, label %.noexc29, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge, %bb.a
end_hunk_1
