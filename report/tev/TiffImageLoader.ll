Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/TiffImageLoader?download=true
inline.NumInlined: 18382
inline.NumDeleted: 4972
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 183
begin_hunk_0_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZNS_13readTiffImageERKNS_8TiffDataEP4tiffbbNS2_17basic_string_viewIcNS2_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvEUlmE_EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm":.from.
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !96, !noalias !5786 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !97, !noalias !5786
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !97, !alias.scope !5786
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !5786 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #48, !noalias !5786
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #44, !noalias !5786
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44, !noalias !5786
  %i.s = icmp ult i64 %2, %3
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !5788, !nonnull !185, !align !446 ; 11 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !5790, !nonnull !185, !align !446
  %i.v = load i64, ptr %i.u, align 8, !tbaa !87   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !5791, !nonnull !185, !align !447
  %i.y = load i16, ptr %i.x, align 2, !tbaa !82
  %i.z = icmp eq i16 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !5792, !nonnull !185, !align !446
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !87 ; 17 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !5793, !nonnull !185, !align !446
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !87 ; 9 uses
  %i.ag = icmp ult i64 %i.ac, %i.af               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  br i1 %i.z, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.ag, label %.lr.ph.split.us.split, label %._crit_edge

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !5794, !nonnull !185, !align !447
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !82 ; 4 uses
  %i.aq = zext i16 %i.ap to i64                   ; 3 uses
  %.not.i.us = icmp eq i16 %i.ap, 0
  br i1 %.not.i.us, label %._crit_edge, label %.lr.ph27.i.us.from..lr.ph30.i.us.preheader

.lr.ph27.i.us.from..lr.ph30.i.us.preheader:       ; preds = %.lr.ph.split.us.split
  %xtraiter102 = and i64 %i.aq, 1
  %i.ar = icmp eq i16 %i.ap, 1
  %unroll_iter = and i64 %i.aq, 65534
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  %lcmp.mod104 = trunc i16 %i.ap to i1
  br label %.lr.ph27.i.us.from..lr.ph30.i.us

.lr.ph27.i.us.from..lr.ph30.i.us:                 ; preds = %.lr.ph27.i.us.from..lr.ph30.i.us.preheader, %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit.us"
  %.024.us = phi i64 [ %i.dg, %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit.us" ], [ %2, %.lr.ph27.i.us.from..lr.ph30.i.us.preheader ] ; 3 uses
  %i.as = sub i64 %.024.us, %i.v
  %i.at = shl i64 %i.as, 32
  %i.au = ashr exact i64 %i.at, 32                ; 3 uses
  %i.av = load ptr, ptr %i.ak, align 8, !nonnull !185, !align !448 ; 3 uses
  %i.aw = load ptr, ptr %i.am, align 8, !nonnull !185, !align !448
  %i.ax = load ptr, ptr %i.al, align 8, !nonnull !185, !align !446
  %i.ay = load ptr, ptr %i.aj, align 8, !nonnull !185, !align !446
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !833 ; 3 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !148
  %i.bb = load i32, ptr %i.aw, align 4, !tbaa !151
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul i64 %.024.us, %i.bc
  br label %.from..lr.ph27.i.us

.from..lr.ph27.i.us:                              ; preds = %._crit_edge.i.us, %.lr.ph27.i.us.from..lr.ph30.i.us
  %.028.i.us = phi i64 [ %i.ac, %.lr.ph27.i.us.from..lr.ph30.i.us ], [ %i.df, %._crit_edge.i.us ] ; 3 uses
  %i.be = sub nuw i64 %.028.i.us, %i.ac
  %i.bf = shl i64 %i.be, 32
  %i.bg = ashr exact i64 %i.bf, 32                ; 3 uses
  %i.bh = add i64 %.028.i.us, %i.bd
  %i.bi = mul i64 %i.bh, %i.aq
  %i.bj = getelementptr [4 x i8], ptr %i.ba, i64 %i.bi ; 3 uses
  br i1 %i.ar, label %.from.52.epil.preheader, label %.from.52

.from.52:                                         ; preds = %.from..lr.ph27.i.us, %.from.52
  %.02326.i.us = phi i64 [ %i.cp, %.from.52 ], [ 0, %.from..lr.ph27.i.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.from.52 ], [ 0, %.from..lr.ph27.i.us ]
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %.02326.i.us ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !151
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %i.au, %i.bn
  %i.bp = add nsw i64 %i.bo, %i.bg
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !180
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !425
  %i.bt = mul i64 %i.bp, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !79
  %i.bw = load float, ptr %i.av, align 4, !tbaa !79
  %i.bx = fmul float %i.bv, %i.bw
  %i.by = getelementptr [4 x i8], ptr %i.bj, i64 %.02326.i.us
  store float %i.bx, ptr %i.by, align 4, !tbaa !79
  %i.bz = or disjoint i64 %.02326.i.us, 1         ; 2 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.bz ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !151
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul nsw i64 %i.au, %i.cd
  %i.cf = add nsw i64 %i.ce, %i.bg
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !180
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !425
  %i.cj = mul i64 %i.cf, %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !79
  %i.cm = load float, ptr %i.av, align 4, !tbaa !79
  %i.cn = fmul float %i.cl, %i.cm
  %i.co = getelementptr [4 x i8], ptr %i.bj, i64 %i.bz
  store float %i.cn, ptr %i.co, align 4, !tbaa !79
  %i.cp = add nuw nsw i64 %.02326.i.us, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.us.unr-lcssa, label %.from.52, !llvm.loop !5773

._crit_edge.i.us.unr-lcssa:                       ; preds = %.from.52
  br i1 %lcmp.mod103.not, label %._crit_edge.i.us, label %.from.52.epil.preheader

.from.52.epil.preheader:                          ; preds = %._crit_edge.i.us.unr-lcssa, %.from..lr.ph27.i.us
  %.02326.i.us.epil.init = phi i64 [ 0, %.from..lr.ph27.i.us ], [ %i.cp, %._crit_edge.i.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod104)
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %.02326.i.us.epil.init ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !151
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i64 %i.au, %i.ct
  %i.cv = add nsw i64 %i.cu, %i.bg
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !180
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !425
  %i.cz = mul i64 %i.cv, %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !79
  %i.dc = load float, ptr %i.av, align 4, !tbaa !79
  %i.dd = fmul float %i.db, %i.dc
  %i.de = getelementptr [4 x i8], ptr %i.bj, i64 %.02326.i.us.epil.init
  store float %i.dd, ptr %i.de, align 4, !tbaa !79
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.i.us.unr-lcssa, %.from.52.epil.preheader
  %i.df = add nuw i64 %.028.i.us, 1               ; 2 uses
  %exitcond33.not.i.us = icmp eq i64 %i.df, %i.af
  br i1 %exitcond33.not.i.us, label %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit.us", label %.from..lr.ph27.i.us, !llvm.loop !5774

"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit.us": ; preds = %._crit_edge.i.us
  %i.dg = add nuw i64 %.024.us, 1                 ; 2 uses
  %exitcond28.not = icmp eq i64 %i.dg, %3
  br i1 %exitcond28.not, label %._crit_edge, label %.lr.ph27.i.us.from..lr.ph30.i.us, !llvm.loop !5775

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.ag, label %.lr.ph.i.from..lr.ph.split.split, label %._crit_edge

.lr.ph.i.from..lr.ph.split.split:                 ; preds = %.lr.ph.split
  %i.dh = load ptr, ptr %i.ah, align 8, !tbaa !5795, !nonnull !185, !align !446
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !87
  %i.dj = load ptr, ptr %i.ai, align 8, !tbaa !5796, !nonnull !185, !align !446
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !87
  %i.dl = udiv i64 %i.di, %i.dk                   ; 3 uses
  %i.dm = load ptr, ptr %i.aj, align 8, !tbaa !5797, !nonnull !185, !align !446
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !833 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !151
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !180 ; 9 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !425 ; 9 uses
  %i.du = load ptr, ptr %i.ak, align 8, !tbaa !5798, !nonnull !185, !align !448 ; 6 uses
  %i.dv = load ptr, ptr %i.al, align 8, !tbaa !5799, !nonnull !185, !align !446
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !148 ; 3 uses
  %i.dx = load ptr, ptr %i.am, align 8, !tbaa !5800, !nonnull !185, !align !448
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !151 ; 2 uses
  %i.dz = sext i32 %i.dy to i64                   ; 3 uses
  %i.ea = load ptr, ptr %i.an, align 8, !tbaa !5794, !nonnull !185, !align !447
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !82 ; 2 uses
  %i.ec = zext i16 %i.eb to i64                   ; 3 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.dw, i64 %i.dl ; 4 uses
  %scevgep = getelementptr i8, ptr %i.du, i64 4
  %i.ed = mul i64 %2, %i.dz                       ; 2 uses
  %i.ee = xor i64 %2, -1
  %i.ef = add i64 %3, %i.ee
  %i.eg = mul i64 %i.ef, %i.dz
  %i.eh = add i64 %i.ac, %i.ed
  %i.ei = sub i64 %i.af, %i.ac                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ei, 8
  %ident.check = icmp ne i16 %i.eb, 1
  %i.ej = sub i64 %i.ac, %i.af
  %i.ek = icmp ult i64 %i.ej, -2147483648
  %i.el = or i1 %ident.check, %i.ek
  %i.em = add i64 %i.dl, %i.eh
  %i.en = shl i64 %i.em, 2
  %i.eo = getelementptr i8, ptr %i.dw, i64 %i.en  ; 2 uses
  %i.ep = add i64 %i.af, %i.dl
  %i.eq = add i64 %i.ep, %i.ed
  %i.er = add i64 %i.eg, %i.eq
  %i.es = shl i64 %i.er, 2
  %i.et = getelementptr i8, ptr %i.dw, i64 %i.es  ; 2 uses
  %i.eu = mul i64 %i.dt, %i.dq
  %invariant.op109 = sub i64 %i.af, %i.ac
  %bound0 = icmp ult ptr %i.eo, %scevgep
  %bound1 = icmp ult ptr %i.du, %i.et
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.dy, 0
  %i.ev = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.ei, -4                      ; 3 uses
  %i.ew = add i64 %i.ac, %n.vec
  %invariant.op = sub i64 1, %i.ac
  %invariant.op105 = sub i64 2, %i.ac
  %invariant.op107 = sub i64 3, %i.ac
  %cmp.n = icmp eq i64 %i.ei, %n.vec
  br label %.from..lr.ph.i

._crit_edge:                                      ; preds = %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit23", %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit.us", %.lr.ph.split.us.split, %.lr.ph.split.us, %.lr.ph.split, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr68)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #48
  unreachable

.from..lr.ph.i:                                   ; preds = %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit23", %.lr.ph.i.from..lr.ph.split.split
  %.024 = phi i64 [ %2, %.lr.ph.i.from..lr.ph.split.split ], [ %i.ii, %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit23" ] ; 3 uses
  %i.ez = sub i64 %.024, %i.v
  %i.fa = shl i64 %i.ez, 32
  %i.fb = ashr exact i64 %i.fa, 32                ; 2 uses
  %i.fc = mul nsw i64 %i.fb, %i.dq                ; 8 uses
  %i.fd = mul i64 %.024, %i.dz                    ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.el
  br i1 %brmerge, label %.from.57.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.from..lr.ph.i
  %i.fe = mul i64 %i.eu, %i.fb
  %i.ff = shl i64 %i.fe, 2
  %i.fg = getelementptr i8, ptr %i.dr, i64 %i.ff  ; 4 uses
  %i.fh = add i64 %i.fc, %invariant.op109
  %i.fi = shl i64 %i.fh, 2
  %.reass110 = add i64 %i.fi, -4
  %i.fj = mul i64 %i.dt, %.reass110
  %i.fk = getelementptr i8, ptr %i.dr, i64 %i.fj  ; 4 uses
  %i.fl = icmp ult ptr %i.fg, %i.fk
  %i.fm = select i1 %i.fl, ptr %i.fg, ptr %i.fk
  %i.fn = icmp ugt ptr %i.fg, %i.fk
  %i.fo = select i1 %i.fn, ptr %i.fg, ptr %i.fk
  %i.fp = getelementptr i8, ptr %i.fo, i64 4
  %bound097 = icmp ult ptr %i.eo, %i.fp
  %bound198 = icmp ult ptr %i.fm, %i.et
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx = or i1 %i.ev, %found.conflict99
  br i1 %conflict.rdx, label %.from.57.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fq = load float, ptr %i.du, align 4, !tbaa !79, !alias.scope !5801
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fq, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.fd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fr = add nuw i64 %i.ac, %index               ; 4 uses
  %.reass = add i64 %i.fr, %invariant.op
  %.reass106 = add i64 %i.fr, %invariant.op105
  %.reass108 = add i64 %i.fr, %invariant.op107
  %i.fs = shl i64 %index, 32
  %i.ft = shl i64 %.reass, 32
  %i.fu = shl i64 %.reass106, 32
  %i.fv = shl i64 %.reass108, 32
  %i.fw = ashr exact i64 %i.fs, 32
  %i.fx = ashr exact i64 %i.ft, 32
  %i.fy = ashr exact i64 %i.fu, 32
  %i.fz = ashr exact i64 %i.fv, 32
  %i.ga = add nsw i64 %i.fw, %i.fc
  %i.gb = add nsw i64 %i.fx, %i.fc
  %i.gc = add nsw i64 %i.fy, %i.fc
  %i.gd = add nsw i64 %i.fz, %i.fc
  %i.ge = mul i64 %i.ga, %i.dt
  %i.gf = mul i64 %i.gb, %i.dt
  %i.gg = mul i64 %i.gc, %i.dt
  %i.gh = mul i64 %i.gd, %i.dt
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ge
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.gf
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.gg
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.gh
  %i.gm = load float, ptr %i.gi, align 4, !tbaa !79, !alias.scope !5802
  %i.gn = load float, ptr %i.gj, align 4, !tbaa !79, !alias.scope !5802
  %i.go = load float, ptr %i.gk, align 4, !tbaa !79, !alias.scope !5802
  %i.gp = load float, ptr %i.gl, align 4, !tbaa !79, !alias.scope !5802
  %i.gq = insertelement <4 x float> poison, float %i.gm, i64 0
  %i.gr = insertelement <4 x float> %i.gq, float %i.gn, i64 1
  %i.gs = insertelement <4 x float> %i.gr, float %i.go, i64 2
  %i.gt = insertelement <4 x float> %i.gs, float %i.gp, i64 3
  %i.gu = fmul <4 x float> %i.gt, %broadcast.splat
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.fr
  store <4 x float> %i.gu, ptr %gep, align 4, !tbaa !79, !alias.scope !5803, !noalias !5804
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gv = icmp eq i64 %index.next, %n.vec
  br i1 %i.gv, label %middle.block, label %vector.body, !llvm.loop !5780

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit23", label %.from.57.preheader

.from.57.preheader:                               ; preds = %.from..lr.ph.i, %vector.memcheck, %middle.block
  %.02225.i.ph = phi i64 [ %i.ac, %vector.memcheck ], [ %i.ew, %middle.block ], [ %i.ac, %.from..lr.ph.i ] ; 6 uses
  %i.gw = sub i64 %i.af, %.02225.i.ph
  %.neg = add i64 %.02225.i.ph, 1
  %xtraiter = and i64 %i.gw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.from.57.prol.loopexit, label %.from.57.prol

.from.57.prol:                                    ; preds = %.from.57.preheader
  %i.gx = sub nuw i64 %.02225.i.ph, %i.ac
  %i.gy = shl i64 %i.gx, 32
  %i.gz = ashr exact i64 %i.gy, 32
  %i.ha = add nsw i64 %i.gz, %i.fc
  %i.hb = mul i64 %i.ha, %i.dt
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.hb
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !79
  %i.he = load float, ptr %i.du, align 4, !tbaa !79
  %i.hf = fmul float %i.hd, %i.he
  %i.hg = add i64 %.02225.i.ph, %i.fd
  %i.hh = mul i64 %i.hg, %i.ec
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.hh
  store float %i.hf, ptr %gep.i.prol, align 4, !tbaa !79
  %i.hi = add nuw i64 %.02225.i.ph, 1
  br label %.from.57.prol.loopexit

.from.57.prol.loopexit:                           ; preds = %.from.57.prol, %.from.57.preheader
  %.02225.i.unr = phi i64 [ %.02225.i.ph, %.from.57.preheader ], [ %i.hi, %.from.57.prol ]
  %i.hj = icmp eq i64 %i.af, %.neg
  br i1 %i.hj, label %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit23", label %.from.57

.from.57:                                         ; preds = %.from.57.prol.loopexit, %.from.57
  %.02225.i = phi i64 [ %i.ih, %.from.57 ], [ %.02225.i.unr, %.from.57.prol.loopexit ] ; 4 uses
  %i.hk = sub nuw i64 %.02225.i, %i.ac
  %i.hl = shl i64 %i.hk, 32
  %i.hm = ashr exact i64 %i.hl, 32
  %i.hn = add nsw i64 %i.hm, %i.fc
  %i.ho = mul i64 %i.hn, %i.dt
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ho
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !79
  %i.hr = load float, ptr %i.du, align 4, !tbaa !79
  %i.hs = fmul float %i.hq, %i.hr
  %i.ht = add i64 %.02225.i, %i.fd
  %i.hu = mul i64 %i.ht, %i.ec
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.hu
  store float %i.hs, ptr %gep.i, align 4, !tbaa !79
  %i.hv = add nuw i64 %.02225.i, 1                ; 2 uses
  %i.hw = sub nuw i64 %i.hv, %i.ac
  %i.hx = shl i64 %i.hw, 32
  %i.hy = ashr exact i64 %i.hx, 32
  %i.hz = add nsw i64 %i.hy, %i.fc
  %i.ia = mul i64 %i.hz, %i.dt
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ia
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !79
  %i.id = load float, ptr %i.du, align 4, !tbaa !79
  %i.ie = fmul float %i.ic, %i.id
  %i.if = add i64 %i.hv, %i.fd
  %i.ig = mul i64 %i.if, %i.ec
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ig
  store float %i.ie, ptr %gep.i.1, align 4, !tbaa !79
  %i.ih = add nuw i64 %.02225.i, 2                ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ih, %i.af
  br i1 %exitcond.not.i.1, label %"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit23", label %.from.57, !llvm.loop !5781

"_ZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_2clEvENKUlmE_clEm.exit.loopexit23": ; preds = %.from.57.prol.loopexit, %.from.57, %middle.block
  %i.ii = add nuw i64 %.024, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ii, %3
  br i1 %exitcond.not, label %._crit_edge, label %.from..lr.ph.i, !llvm.loop !5775

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge
  %i.ij = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = atomicrmw add ptr %i.ik, i32 -1 acq_rel, align 4 ; 2 uses
  %i.im = icmp slt i32 %i.il, 1
  br i1 %i.im, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %bb.g
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !117 ; 7 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !128
  %i.iq = and i32 %i.ip, 8
  %.not.i.i.i.i = icmp eq i32 %i.iq, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !129 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !130 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.is, %i.iu
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.iw = getelementptr inbounds nuw i8, ptr %i.io, i64 48
  %i.ix = getelementptr inbounds nuw i8, ptr %i.io, i64 33
  %i.iy = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.is, %.from..lr.ph.i.i.i.i.i ], [ %i.jk, %.noexc2.i.i ] ; 2 uses
  %i.iz = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !133 ; 2 uses
  %i.ja = load i8, ptr %i.iv, align 8             ; 2 uses
  %i.jb = trunc i8 %i.ja to i1                    ; 2 uses
  %i.jc = load ptr, ptr %i.iw, align 8
  %i.jd = select i1 %i.jb, ptr %i.jc, ptr %i.ix
  %i.je = load i64, ptr %i.iy, align 8
  %i.jf = lshr i8 %i.ja, 1
  %i.jg = zext nneg i8 %i.jf to i64
  %i.jh = select i1 %i.jb, i64 %i.je, i64 %i.jg
  %i.ji = load ptr, ptr %i.iz, align 8, !tbaa !89
  %i.jj = load ptr, ptr %i.ji, align 8
  invoke void %i.jj(ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr %i.jd, i64 %i.jh, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jk, %i.iu
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.from..noexc2.i.i, %bb.g
  %lpad.loopexit.split-lp100 = landingpad { ptr, i32 }
          catch ptr null
  %i.jl = extractvalue { ptr, i32 } %lpad.loopexit.split-lp100, 0
  call void @__clang_call_terminate(ptr %i.jl) #48
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.jm = icmp slt i32 %i.il, 2
  br i1 %i.jm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.h, %_ZN3tev5Latch9countDownEv.exit.i
  %i.jn = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !97 ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZZZNS_13readTiffImageERKNS_8TiffDataEP4tiffbbNS2_17basic_string_viewIcNS2_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPS4_E_clIfEENS_4TaskIvEESI_EUlmE0_EESM_S4_S4_mT0_iENKUlmmE_clEmm":.from.
bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #44, !noalias !6120
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44, !noalias !6120
  %i.s = icmp ult i64 %2, %3
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !6122, !nonnull !185, !align !446 ; 13 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !6124, !nonnull !185, !align !446
  %i.v = load i64, ptr %i.u, align 8, !tbaa !87   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !6125, !nonnull !185, !align !447
  %i.y = load i16, ptr %i.x, align 2, !tbaa !82
  %i.z = icmp eq i16 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !6126, !nonnull !185, !align !446
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !87 ; 26 uses
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !6127, !nonnull !185, !align !446
  %i.an = load i64, ptr %i.am, align 8, !tbaa !87 ; 13 uses
  %i.ao = icmp ult i64 %i.al, %i.an               ; 2 uses
  br i1 %i.z, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.ao, label %.lr.ph.split.us.split, label %._crit_edge

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !6128, !nonnull !185, !align !447
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !82 ; 5 uses
  %i.ar = zext i16 %i.aq to i64                   ; 19 uses
  %.not47.i.us = icmp eq i16 %i.aq, 0
  %exitcond56.peel.not.i.us = icmp eq i16 %i.aq, 1 ; 2 uses
  br i1 %.not47.i.us, label %._crit_edge, label %.preheader.lr.ph.i.us.preheader

.preheader.lr.ph.i.us.preheader:                  ; preds = %.lr.ph.split.us.split
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = shl nuw nsw i64 %i.ar, 2
  %i.au = shl nuw nsw i64 %i.ar, 2
  %i.av = sub i64 %2, %i.v
  %i.aw = mul i64 %i.av, %i.ar
  %i.ax = shl i64 %i.aw, 2
  %i.ay = shl nuw nsw i64 %i.ar, 2
  %min.iters.check232 = icmp ult i16 %i.aq, 8
  %n.vec236 = and i64 %i.ar, 65528                ; 3 uses
  %cmp.n243 = icmp eq i64 %n.vec236, %i.ar
  %xtraiter263 = and i64 %i.ar, 3                 ; 2 uses
  %lcmp.mod264.not = icmp eq i64 %xtraiter263, 0
  %i.az = add nsw i64 %i.ar, -1                   ; 2 uses
  %min.iters.check217 = icmp ult i16 %i.aq, 9
  %n.vec220 = and i64 %i.az, -8                   ; 3 uses
  %i.ba = or disjoint i64 %n.vec220, 1
  %cmp.n227 = icmp eq i64 %i.az, %n.vec220
  br label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %.preheader.lr.ph.i.us.preheader, %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIfEENS_4TaskIvEESF_ENKUlmE0_clEm.exit.us"
  %indvar = phi i64 [ 0, %.preheader.lr.ph.i.us.preheader ], [ %indvar.next, %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIfEENS_4TaskIvEESF_ENKUlmE0_clEm.exit.us" ] ; 2 uses
  %.040.us = phi i64 [ %2, %.preheader.lr.ph.i.us.preheader ], [ %i.hk, %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIfEENS_4TaskIvEESF_ENKUlmE0_clEm.exit.us" ] ; 4 uses
  %i.bb = sub i64 %.040.us, %i.v                  ; 2 uses
  %i.bc = load ptr, ptr %i.ah, align 8, !nonnull !185
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !153, !range !184, !noundef !185
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %.preheader.lr.ph.split.us.split.us.i.us, label %.preheader.us.i.us.from..preheader.lr.ph.split.us.split.i.us

.preheader.us.i.us.from..preheader.lr.ph.split.us.split.i.us: ; preds = %.preheader.lr.ph.i.us
  %i.bf = mul i64 %i.ay, %indvar
  %i.bg = add i64 %i.ax, %i.bf
  %i.bh = load ptr, ptr %i.ab, align 8, !tbaa !6129, !nonnull !185, !align !446
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !387
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = mul i64 %i.bb, %i.bk
  %invariant.op.i.us = sub i64 %i.bl, %i.al
  %i.bm = load ptr, ptr %i.ac, align 8, !tbaa !6130, !nonnull !185, !align !446
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !148 ; 2 uses
  %i.bo = ptrtoaddr ptr %i.bn to i64
  %i.bp = load ptr, ptr %i.ad, align 8, !tbaa !6131, !nonnull !185, !align !446
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !148 ; 2 uses
  %i.br = ptrtoaddr ptr %i.bq to i64
  %i.bs = load ptr, ptr %i.ae, align 8, !tbaa !6132, !nonnull !185, !align !448
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !151
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %.040.us, %i.bu                 ; 2 uses
  %i.bw = add i64 %i.al, %i.bv
  %i.bx = mul i64 %i.au, %i.bw
  %i.by = add i64 %i.bx, %i.br
  %i.bz = mul i64 %i.bg, %i.bk
  %i.ca = add i64 %i.bz, %i.bo
  %i.cb = sub i64 %i.ca, %i.by
  %diff.check234 = icmp ugt i64 %i.cb, -32
  %or.cond = select i1 %min.iters.check232, i1 true, i1 %diff.check234
  br label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.from..preheader.us.i.us"

"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.from..preheader.us.i.us": ; preds = %._crit_edge.split.us41.i.us, %.preheader.us.i.us.from..preheader.lr.ph.split.us.split.i.us
  %.02535.us.i.us = phi i64 [ %i.al, %.preheader.us.i.us.from..preheader.lr.ph.split.us.split.i.us ], [ %i.di, %._crit_edge.split.us41.i.us ] ; 3 uses
  %.reass.i.us = add i64 %invariant.op.i.us, %.02535.us.i.us
  %i.cc = mul i64 %.reass.i.us, %i.ar
  %i.cd = add i64 %.02535.us.i.us, %i.bv
  %i.ce = mul i64 %i.cd, %i.ar
  %i.cf = getelementptr [4 x i8], ptr %i.bq, i64 %i.ce ; 6 uses
  %i.cg = getelementptr [4 x i8], ptr %i.bn, i64 %i.cc ; 6 uses
  br i1 %or.cond, label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.preheader", label %vector.body237

vector.body237:                                   ; preds = %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.from..preheader.us.i.us", %vector.body237
  %index238 = phi i64 [ %index.next241, %vector.body237 ], [ 0, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.from..preheader.us.i.us" ] ; 3 uses
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %index238 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %wide.load239 = load <4 x float>, ptr %i.ch, align 4, !tbaa !79
  %wide.load240 = load <4 x float>, ptr %i.ci, align 4, !tbaa !79
  %i.cj = getelementptr [4 x i8], ptr %i.cf, i64 %index238 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  store <4 x float> %wide.load239, ptr %i.cj, align 4, !tbaa !79
  store <4 x float> %wide.load240, ptr %i.ck, align 4, !tbaa !79
  %index.next241 = add nuw i64 %index238, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next241, %n.vec236
  br i1 %i.cl, label %middle.block242, label %vector.body237, !llvm.loop !6098

middle.block242:                                  ; preds = %vector.body237
  br i1 %cmp.n243, label %._crit_edge.split.us41.i.us, label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.preheader"

"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.preheader": ; preds = %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.from..preheader.us.i.us", %middle.block242
  %.02431.us40.i.us.ph = phi i64 [ 0, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.from..preheader.us.i.us" ], [ %n.vec236, %middle.block242 ] ; 3 uses
  br i1 %lcmp.mod264.not, label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.prol.loopexit", label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.prol"

"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.prol": ; preds = %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.preheader", %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.prol"
  %.02431.us40.i.us.prol = phi i64 [ %i.cp, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.prol" ], [ %.02431.us40.i.us.ph, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.preheader" ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.prol" ], [ 0, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.preheader" ]
  %i.cm = getelementptr [4 x i8], ptr %i.cg, i64 %.02431.us40.i.us.prol
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !79
  %i.co = getelementptr [4 x i8], ptr %i.cf, i64 %.02431.us40.i.us.prol
  store float %i.cn, ptr %i.co, align 4, !tbaa !79
  %i.cp = add nuw nsw i64 %.02431.us40.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter263
  br i1 %prol.iter.cmp.not, label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.prol.loopexit", label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.prol", !llvm.loop !6099

"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.prol.loopexit": ; preds = %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.prol", %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.preheader"
  %.02431.us40.i.us.unr = phi i64 [ %.02431.us40.i.us.ph, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.preheader" ], [ %i.cp, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.prol" ]
  %i.cq = sub nsw i64 %.02431.us40.i.us.ph, %i.ar
  %i.cr = icmp ugt i64 %i.cq, -4
  br i1 %i.cr, label %._crit_edge.split.us41.i.us, label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us"

"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us": ; preds = %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.prol.loopexit", %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us"
  %.02431.us40.i.us = phi i64 [ %i.dh, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us" ], [ %.02431.us40.i.us.unr, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.prol.loopexit" ] ; 6 uses
  %i.cs = getelementptr [4 x i8], ptr %i.cg, i64 %.02431.us40.i.us
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !79
  %i.cu = getelementptr [4 x i8], ptr %i.cf, i64 %.02431.us40.i.us
  store float %i.ct, ptr %i.cu, align 4, !tbaa !79
  %i.cv = add nuw nsw i64 %.02431.us40.i.us, 1    ; 2 uses
  %i.cw = getelementptr [4 x i8], ptr %i.cg, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !79
  %i.cy = getelementptr [4 x i8], ptr %i.cf, i64 %i.cv
  store float %i.cx, ptr %i.cy, align 4, !tbaa !79
  %i.cz = add nuw nsw i64 %.02431.us40.i.us, 2    ; 2 uses
  %i.da = getelementptr [4 x i8], ptr %i.cg, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !79
  %i.dc = getelementptr [4 x i8], ptr %i.cf, i64 %i.cz
  store float %i.db, ptr %i.dc, align 4, !tbaa !79
  %i.dd = add nuw nsw i64 %.02431.us40.i.us, 3    ; 2 uses
  %i.de = getelementptr [4 x i8], ptr %i.cg, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !79
  %i.dg = getelementptr [4 x i8], ptr %i.cf, i64 %i.dd
  store float %i.df, ptr %i.dg, align 4, !tbaa !79
  %i.dh = add nuw nsw i64 %.02431.us40.i.us, 4    ; 2 uses
  %exitcond53.not.i.us.3 = icmp eq i64 %i.dh, %i.ar
  br i1 %exitcond53.not.i.us.3, label %._crit_edge.split.us41.i.us, label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us", !llvm.loop !6100

._crit_edge.split.us41.i.us:                      ; preds = %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.prol.loopexit", %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us", %middle.block242
  %i.di = add nuw i64 %.02535.us.i.us, 1          ; 2 uses
  %exitcond54.not.i.us = icmp eq i64 %i.di, %i.an
  br i1 %exitcond54.not.i.us, label %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIfEENS_4TaskIvEESF_ENKUlmE0_clEm.exit.us", label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us39.i.us.from..preheader.us.i.us", !llvm.loop !6101

.preheader.lr.ph.split.us.split.us.i.us:          ; preds = %.preheader.lr.ph.i.us
  %i.dj = trunc i64 %i.bb to i32                  ; 2 uses
  %i.dk = load ptr, ptr %i.ag, align 8, !tbaa !6133, !nonnull !185, !align !446 ; 5 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !151 ; 9 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !151 ; 5 uses
  %i.do = sdiv i32 %i.dj, %i.dn                   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !410
  %i.dr = mul i32 %i.dq, %i.do                    ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !409 ; 4 uses
  %i.du = or i32 %i.dn, %i.dl
  %.fr.i.us = freeze i32 %i.du
  %or.cond.not.us.us.us.i.us = icmp sgt i32 %.fr.i.us, -1
  %i.dv = mul nsw i32 %i.do, %i.dn                ; 0 uses
  %.recomposed = srem i32 %i.dj, %i.dn
  %i.dw = mul nsw i32 %.recomposed, %i.dl
  %i.dx = sext i32 %i.dw to i64
  %i.dy = load ptr, ptr %i.ac, align 8, !tbaa !6130, !nonnull !185, !align !446
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !148 ; 3 uses
  %i.ea = load ptr, ptr %i.ad, align 8, !tbaa !6131, !nonnull !185, !align !446
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !148 ; 4 uses
  %i.ec = load ptr, ptr %i.ae, align 8, !tbaa !6132, !nonnull !185, !align !448
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !151
  %i.ee = sext i32 %i.ed to i64
  %i.ef = mul i64 %.040.us, %i.ee                 ; 4 uses
  %i.eg = getelementptr [4 x i8], ptr %i.dz, i64 %i.dx ; 3 uses
  br i1 %or.cond.not.us.us.us.i.us, label %.preheader.us.us.us.i.us.from..preheader.lr.ph.split.us.split.us.split.us.i.us, label %.preheader.us.us.i.preheader.us, !prof !6134

.preheader.us.us.i.preheader.us:                  ; preds = %.preheader.lr.ph.split.us.split.us.i.us
  br i1 %exitcond56.peel.not.i.us, label %.preheader.us.us.i.us.us, label %.preheader.us.us.i

.preheader.us.us.i.us.us:                         ; preds = %.preheader.us.us.i.preheader.us, %.preheader.us.us.i.us.us
  %.02535.us.us.i.us.us = phi i64 [ %i.ev, %.preheader.us.us.i.us.us ], [ %i.al, %.preheader.us.us.i.preheader.us ] ; 3 uses
  %i.eh = sub nuw i64 %.02535.us.us.i.us.us, %i.al
  %i.ei = trunc i64 %i.eh to i32                  ; 2 uses
  %i.ej = sdiv i32 %i.ei, %i.dl                   ; 2 uses
  %i.ek = add i32 %i.ej, %i.dr
  %i.el = zext i32 %i.ek to i64
  %i.em = mul i64 %i.dt, %i.el
  %i.en = mul nsw i32 %i.ej, %i.dl                ; 0 uses
  %.recomposed276 = srem i32 %i.ei, %i.dl
  %i.eo = sext i32 %.recomposed276 to i64
  %i.ep = getelementptr [4 x i8], ptr %i.eg, i64 %i.eo
  %i.eq = getelementptr [4 x i8], ptr %i.ep, i64 %i.em
  %i.er = add i64 %.02535.us.us.i.us.us, %i.ef
  %i.es = mul nuw nsw i64 %i.er, %i.ar
  %i.et = getelementptr [4 x i8], ptr %i.eb, i64 %i.es
  %i.eu = load float, ptr %i.eq, align 4, !tbaa !79
  store float %i.eu, ptr %i.et, align 4, !tbaa !79
  %i.ev = add nuw i64 %.02535.us.us.i.us.us, 1    ; 2 uses
  %exitcond55.not.i.us.us = icmp eq i64 %i.ev, %i.an
  br i1 %exitcond55.not.i.us.us, label %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIfEENS_4TaskIvEESF_ENKUlmE0_clEm.exit.us", label %.preheader.us.us.i.us.us, !llvm.loop !6101

.preheader.us.us.us.i.us.from..preheader.lr.ph.split.us.split.us.split.us.i.us: ; preds = %.preheader.lr.ph.split.us.split.us.i.us
  %i.ew = ptrtoaddr ptr %i.eb to i64
  %7 = ptrtoaddr ptr %i.dz to i64
  %i.ex = zext i32 %i.dn to i64                   ; 2 uses
  %i.ey = zext i32 %i.dl to i64                   ; 2 uses
  %i.ez = mul nuw i64 %i.ex, %i.ey
  %invariant.gep73.i.us = getelementptr [4 x i8], ptr %i.dz, i64 %i.ez ; 6 uses
  %i.fa = shl nuw nsw i64 %i.ex, 2
  %i.fb = mul i64 %i.fa, %i.ey
  %i.fc = add i64 %i.fb, %7
  %i.fd = add i64 %i.ew, 4
  %8 = add i64 %i.al, %i.ef
  %9 = mul i64 %i.at, %8
  %i.fe = add i64 %i.fd, %9
  br label %.preheader.us.us.us.i.us

.preheader.us.us.us.i.us:                         ; preds = %._crit_edge.split.us.split.us.us.us.us.i.us, %.preheader.us.us.us.i.us.from..preheader.lr.ph.split.us.split.us.split.us.i.us
  %.02535.us.us.us.i.us = phi i64 [ %i.al, %.preheader.us.us.us.i.us.from..preheader.lr.ph.split.us.split.us.split.us.i.us ], [ %i.hj, %._crit_edge.split.us.split.us.us.us.us.i.us ] ; 3 uses
  %i.ff = sub nuw i64 %.02535.us.us.us.i.us, %i.al ; 2 uses
  %i.fg = trunc i64 %i.ff to i32                  ; 2 uses
  %i.fh = sdiv i32 %i.fg, %i.dl                   ; 2 uses
  %i.fi = add i32 %i.fh, %i.dr
  %i.fj = zext i32 %i.fi to i64                   ; 2 uses
  %i.fk = mul i64 %i.dt, %i.fj                    ; 7 uses
  %i.fl = mul nsw i32 %i.fh, %i.dl                ; 0 uses
  %.recomposed277 = srem i32 %i.fg, %i.dl
  %i.fm = sext i32 %.recomposed277 to i64
  %i.fn = add i64 %.02535.us.us.us.i.us, %i.ef
  %i.fo = mul i64 %i.fn, %i.ar
  %i.fp = getelementptr [4 x i8], ptr %i.eb, i64 %i.fo ; 7 uses
  %i.fq = getelementptr [4 x i8], ptr %i.eg, i64 %i.fm
  %i.fr = getelementptr [4 x i8], ptr %i.fq, i64 %i.fk
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !79
  store float %i.fs, ptr %i.fp, align 4, !tbaa !79
  br i1 %exitcond56.peel.not.i.us, label %._crit_edge.split.us.split.us.us.us.us.i.us, label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.preheader"

"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.preheader": ; preds = %.preheader.us.us.us.i.us
  br i1 %min.iters.check217, label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.preheader251", label %vector.memcheck218

vector.memcheck218:                               ; preds = %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.preheader"
  %i.ft = mul i64 %i.ff, %i.as
  %i.fu = add i64 %i.fe, %i.ft
  %i.fv = mul i64 %i.dt, %i.fj
  %i.fw = shl i64 %i.fv, 2
  %i.fx = add i64 %i.fc, %i.fw
  %i.fy = sub i64 %i.fx, %i.fu
  %diff.check = icmp ugt i64 %i.fy, -32
  br i1 %diff.check, label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.preheader251", label %vector.body221

vector.body221:                                   ; preds = %vector.memcheck218, %vector.body221
  %index222 = phi i64 [ %index.next225, %vector.body221 ], [ 0, %vector.memcheck218 ] ; 2 uses
  %i.fz = or disjoint i64 %index222, 1            ; 2 uses
  %i.ga = getelementptr [4 x i8], ptr %invariant.gep73.i.us, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 -4
  %i.gc = getelementptr [4 x i8], ptr %i.gb, i64 %i.fk ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 16
  %wide.load223 = load <4 x float>, ptr %i.gc, align 4, !tbaa !79
  %wide.load224 = load <4 x float>, ptr %i.gd, align 4, !tbaa !79
  %i.ge = getelementptr [4 x i8], ptr %i.fp, i64 %i.fz ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 16
  store <4 x float> %wide.load223, ptr %i.ge, align 4, !tbaa !79
  store <4 x float> %wide.load224, ptr %i.gf, align 4, !tbaa !79
  %index.next225 = add nuw i64 %index222, 8       ; 2 uses
  %i.gg = icmp eq i64 %index.next225, %n.vec220
  br i1 %i.gg, label %middle.block226, label %vector.body221, !llvm.loop !6102

middle.block226:                                  ; preds = %vector.body221
  br i1 %cmp.n227, label %._crit_edge.split.us.split.us.us.us.us.i.us, label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.preheader251"

"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.preheader251": ; preds = %vector.memcheck218, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.preheader", %middle.block226
  %.02431.us.us.us.us.us.i.us.ph = phi i64 [ 1, %vector.memcheck218 ], [ 1, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.preheader" ], [ %i.ba, %middle.block226 ] ; 4 uses
  %i.gh = sub nsw i64 %i.ar, %.02431.us.us.us.us.us.i.us.ph
  %xtraiter265 = and i64 %i.gh, 3                 ; 2 uses
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.prol.loopexit", label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.prol"

"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.prol": ; preds = %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.preheader251", %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.prol"
  %.02431.us.us.us.us.us.i.us.prol = phi i64 [ %i.gm, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.prol" ], [ %.02431.us.us.us.us.us.i.us.ph, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.preheader251" ] ; 3 uses
  %prol.iter267 = phi i64 [ %prol.iter267.next, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.prol" ], [ 0, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.preheader251" ]
  %gep74.i.us.prol = getelementptr [4 x i8], ptr %invariant.gep73.i.us, i64 %.02431.us.us.us.us.us.i.us.prol
  %i.gi = getelementptr i8, ptr %gep74.i.us.prol, i64 -4
  %i.gj = getelementptr [4 x i8], ptr %i.gi, i64 %i.fk
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !79
  %i.gl = getelementptr [4 x i8], ptr %i.fp, i64 %.02431.us.us.us.us.us.i.us.prol
  store float %i.gk, ptr %i.gl, align 4, !tbaa !79
  %i.gm = add nuw nsw i64 %.02431.us.us.us.us.us.i.us.prol, 1 ; 2 uses
  %prol.iter267.next = add i64 %prol.iter267, 1   ; 2 uses
  %prol.iter267.cmp.not = icmp eq i64 %prol.iter267.next, %xtraiter265
  br i1 %prol.iter267.cmp.not, label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.prol.loopexit", label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.prol", !llvm.loop !6103

"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.prol.loopexit": ; preds = %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.prol", %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.preheader251"
  %.02431.us.us.us.us.us.i.us.unr = phi i64 [ %.02431.us.us.us.us.us.i.us.ph, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.preheader251" ], [ %i.gm, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.prol" ]
  %i.gn = sub nsw i64 %.02431.us.us.us.us.us.i.us.ph, %i.ar
  %i.go = icmp ugt i64 %i.gn, -4
  br i1 %i.go, label %._crit_edge.split.us.split.us.us.us.us.i.us, label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us"

"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us": ; preds = %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.prol.loopexit", %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us"
  %.02431.us.us.us.us.us.i.us = phi i64 [ %i.hi, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us" ], [ %.02431.us.us.us.us.us.i.us.unr, %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.prol.loopexit" ] ; 6 uses
  %gep74.i.us = getelementptr [4 x i8], ptr %invariant.gep73.i.us, i64 %.02431.us.us.us.us.us.i.us
  %i.gp = getelementptr i8, ptr %gep74.i.us, i64 -4
  %i.gq = getelementptr [4 x i8], ptr %i.gp, i64 %i.fk
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !79
  %i.gs = getelementptr [4 x i8], ptr %i.fp, i64 %.02431.us.us.us.us.us.i.us
  store float %i.gr, ptr %i.gs, align 4, !tbaa !79
  %i.gt = add nuw nsw i64 %.02431.us.us.us.us.us.i.us, 1 ; 2 uses
  %gep74.i.us.1 = getelementptr [4 x i8], ptr %invariant.gep73.i.us, i64 %i.gt
  %i.gu = getelementptr i8, ptr %gep74.i.us.1, i64 -4
  %i.gv = getelementptr [4 x i8], ptr %i.gu, i64 %i.fk
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !79
  %i.gx = getelementptr [4 x i8], ptr %i.fp, i64 %i.gt
  store float %i.gw, ptr %i.gx, align 4, !tbaa !79
  %i.gy = add nuw nsw i64 %.02431.us.us.us.us.us.i.us, 2 ; 2 uses
  %gep74.i.us.2 = getelementptr [4 x i8], ptr %invariant.gep73.i.us, i64 %i.gy
  %i.gz = getelementptr i8, ptr %gep74.i.us.2, i64 -4
  %i.ha = getelementptr [4 x i8], ptr %i.gz, i64 %i.fk
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !79
  %i.hc = getelementptr [4 x i8], ptr %i.fp, i64 %i.gy
  store float %i.hb, ptr %i.hc, align 4, !tbaa !79
  %i.hd = add nuw nsw i64 %.02431.us.us.us.us.us.i.us, 3 ; 2 uses
  %gep74.i.us.3 = getelementptr [4 x i8], ptr %invariant.gep73.i.us, i64 %i.hd
  %i.he = getelementptr i8, ptr %gep74.i.us.3, i64 -4
  %i.hf = getelementptr [4 x i8], ptr %i.he, i64 %i.fk
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !79
  %i.hh = getelementptr [4 x i8], ptr %i.fp, i64 %i.hd
  store float %i.hg, ptr %i.hh, align 4, !tbaa !79
  %i.hi = add nuw nsw i64 %.02431.us.us.us.us.us.i.us, 4 ; 2 uses
  %exitcond56.not.i.us.3 = icmp eq i64 %i.hi, %i.ar
  br i1 %exitcond56.not.i.us.3, label %._crit_edge.split.us.split.us.us.us.us.i.us, label %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us", !llvm.loop !6104

._crit_edge.split.us.split.us.us.us.us.i.us:      ; preds = %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us.prol.loopexit", %"_ZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_7clEiii.exit.us.us.us.us.us.i.us", %middle.block226, %.preheader.us.us.us.i.us
  %i.hj = add nuw i64 %.02535.us.us.us.i.us, 1    ; 2 uses
  %exitcond58.not.i.us = icmp eq i64 %i.hj, %i.an
  br i1 %exitcond58.not.i.us, label %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIfEENS_4TaskIvEESF_ENKUlmE0_clEm.exit.us", label %.preheader.us.us.us.i.us, !llvm.loop !6101

"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIfEENS_4TaskIvEESF_ENKUlmE0_clEm.exit.us": ; preds = %._crit_edge.split.us41.i.us, %.preheader.us.us.i.us.us, %._crit_edge.split.us.split.us.us.us.us.i.us
  %i.hk = add i64 %.040.us, 1                     ; 2 uses
  %exitcond64.not = icmp eq i64 %i.hk, %3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond64.not, label %._crit_edge, label %.preheader.lr.ph.i.us, !llvm.loop !6105

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.ao, label %.from..lr.ph.split.split.us, label %._crit_edge

.from..lr.ph.split.split.us:                      ; preds = %.lr.ph.split
  %i.hl = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !6135, !nonnull !185, !align !446
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !87 ; 2 uses
  %.not.i = icmp eq i64 %i.hn, 0
  %i.ho = load ptr, ptr %i.ab, align 8, !tbaa !6129, !nonnull !185, !align !446
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !387
  %i.hr = zext i32 %i.hq to i64                   ; 4 uses
  %i.hs = load ptr, ptr %i.ac, align 8, !tbaa !6130, !nonnull !185, !align !446
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !148 ; 4 uses
  %i.hu = load ptr, ptr %i.ad, align 8, !tbaa !6131, !nonnull !185, !align !446
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !148 ; 3 uses
  %i.hw = load ptr, ptr %i.ae, align 8, !tbaa !6132, !nonnull !185, !align !448
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !151 ; 2 uses
  %i.hy = sext i32 %i.hx to i64                   ; 4 uses
  %i.hz = load ptr, ptr %i.af, align 8, !tbaa !6128, !nonnull !185, !align !447
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !82 ; 2 uses
  %i.ib = zext i16 %i.ia to i64                   ; 6 uses
  %invariant.gep.i.us = getelementptr [4 x i8], ptr %i.hv, i64 %i.hn ; 7 uses
  br i1 %.not.i, label %.from..lr.ph.i.us.us.preheader, label %.from..lr.ph.split.split.us.split

.from..lr.ph.i.us.us.preheader:                   ; preds = %.from..lr.ph.split.split.us
  %i.ic = shl i64 %3, 2
  %i.id = add i64 %i.ic, -4
  %i.ie = shl i64 %i.v, 2
  %i.if = sub i64 %i.id, %i.ie
  %i.ig = mul i64 %i.if, %i.hr
  %i.ih = shl i64 %i.an, 2
  %i.ii = add i64 %i.ig, %i.ih
  %i.ij = shl i64 %i.al, 2
  %i.ik = sub i64 %i.ii, %i.ij
  %scevgep = getelementptr i8, ptr %i.ht, i64 %i.ik
  %i.il = sub i64 %2, %i.v
  %i.im = mul i64 %i.il, %i.hr
  %i.in = shl i64 %i.im, 2
  %scevgep211 = getelementptr i8, ptr %i.ht, i64 %i.in
  %i.io = xor i64 %2, -1
  %i.ip = add i64 %3, %i.io
  %i.iq = mul i64 %i.ip, %i.hy
  %i.ir = mul i64 %2, %i.hy                       ; 2 uses
  %i.is = add i64 %i.an, %i.ir
  %i.it = add i64 %i.iq, %i.is
  %i.iu = shl i64 %i.it, 2
  %scevgep212 = getelementptr i8, ptr %i.hv, i64 %i.iu
  %i.iv = add i64 %i.al, %i.ir
  %i.iw = shl i64 %i.iv, 2
  %scevgep213 = getelementptr i8, ptr %i.hv, i64 %i.iw
  %i.ix = sub i64 %i.an, %i.al                    ; 3 uses
  %min.iters.check = icmp ugt i64 %i.ix, 7
  %ident.check.not = icmp eq i16 %i.ia, 1
  %or.cond249 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %scevgep213, %scevgep
  %bound1 = icmp ult ptr %scevgep211, %scevgep212
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.hx, 0
  %i.iy = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.ix, -8                      ; 3 uses
  %i.iz = add i64 %i.al, %n.vec
  %i.ja = getelementptr [4 x i8], ptr %invariant.gep.i.us, i64 %i.al
  %cmp.n = icmp eq i64 %i.ix, %n.vec
  br label %.from..lr.ph.i.us.us

.from..lr.ph.i.us.us:                             ; preds = %.from..lr.ph.i.us.us.preheader, %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIfEENS_4TaskIvEESF_ENKUlmE0_clEm.exit.loopexit30.us.us"
  %.040.us49.us = phi i64 [ %i.kd, %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIfEENS_4TaskIvEESF_ENKUlmE0_clEm.exit.loopexit30.us.us" ], [ %2, %.from..lr.ph.i.us.us.preheader ] ; 3 uses
  %i.jb = sub i64 %.040.us49.us, %i.v
  %i.jc = mul i64 %i.jb, %i.hr
  %i.jd = getelementptr [4 x i8], ptr %i.ht, i64 %i.jc ; 4 uses
  %i.je = mul i64 %.040.us49.us, %i.hy            ; 4 uses
  %or.cond249.not = xor i1 %or.cond249, true
  %brmerge = select i1 %or.cond249.not, i1 true, i1 %i.iy
  br i1 %brmerge, label %.from.110.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.from..lr.ph.i.us.us
  %invariant.gep = getelementptr [4 x i8], ptr %i.ja, i64 %i.je
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jf = getelementptr [4 x i8], ptr %i.jd, i64 %index ; 2 uses
  %i.jg = getelementptr i8, ptr %i.jf, i64 16
  %wide.load = load <4 x float>, ptr %i.jf, align 4, !tbaa !79, !alias.scope !6136
  %wide.load214 = load <4 x float>, ptr %i.jg, align 4, !tbaa !79, !alias.scope !6136
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.jh = getelementptr i8, ptr %gep, i64 16
  store <4 x float> %wide.load, ptr %gep, align 4, !tbaa !79, !alias.scope !6137, !noalias !6136
  store <4 x float> %wide.load214, ptr %i.jh, align 4, !tbaa !79, !alias.scope !6137, !noalias !6136
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ji = icmp eq i64 %index.next, %n.vec
  br i1 %i.ji, label %middle.block, label %vector.body, !llvm.loop !6109

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"_ZZZZN3tev13readTiffImageERKNS_8TiffDataEP4tiffbbNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEiENK3$_3clEvENKUlTyPT_E_clIfEENS_4TaskIvEESF_ENKUlmE0_clEm.exit.loopexit30.us.us", label %.from.110.us.preheader

.from.110.us.preheader:                           ; preds = %.from..lr.ph.i.us.us, %middle.block
  %.030.i.us.us.ph = phi i64 [ %i.iz, %middle.block ], [ %i.al, %.from..lr.ph.i.us.us ] ; 6 uses
  %i.jj = sub i64 %i.an, %.030.i.us.us.ph
  %.neg268 = add i64 %.030.i.us.us.ph, 1
  %xtraiter261 = and i64 %i.jj, 1
  %lcmp.mod262.not = icmp eq i64 %xtraiter261, 0
  br i1 %lcmp.mod262.not, label %.from.110.us.prol.loopexit, label %.from.110.us.prol

end_hunk_1
