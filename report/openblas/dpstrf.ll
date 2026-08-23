Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dpstrf?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dpstrf_:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.r, %.lr.ph458.new
  %indvars.iv517 = phi i64 [ 2, %.lr.ph458.new ], [ %indvars.iv.next518.3, %bb.r ] ; 5 uses
  %.0456 = phi i32 [ 1, %.lr.ph458.new ], [ %.1.3, %bb.r ]
  %i.au = phi double [ %i.ao, %.lr.ph458.new ], [ %i.bz, %bb.r ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph458.new ], [ %niter.next.3, %bb.r ]
  %i.av = trunc nuw nsw i64 %indvars.iv517 to i32 ; 2 uses
  %i.aw = mul i32 %i.ap, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !16 ; 3 uses
  %i.ba = fcmp ogt double %i.az, %i.au
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store double %i.az, ptr %i.g, align 8, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bb = phi double [ %i.az, %bb.k ], [ %i.au, %bb.j ] ; 2 uses
  %.1 = phi i32 [ %i.av, %bb.k ], [ %.0456, %bb.j ]
  %i.bc = trunc i64 %indvars.iv517 to i32
  %i.bd = or disjoint i32 %i.bc, 1                ; 2 uses
  %i.be = mul i32 %i.ap, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !16 ; 3 uses
  %i.bi = fcmp ogt double %i.bh, %i.bb
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store double %i.bh, ptr %i.g, align 8, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bj = phi double [ %i.bh, %bb.m ], [ %i.bb, %bb.l ] ; 2 uses
  %.1.1 = phi i32 [ %i.bd, %bb.m ], [ %.1, %bb.l ]
  %i.bk = trunc i64 %indvars.iv517 to i32
  %i.bl = add i32 %i.bk, 2                        ; 2 uses
  %i.bm = mul i32 %i.ap, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !16 ; 3 uses
  %i.bq = fcmp ogt double %i.bp, %i.bj
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store double %i.bp, ptr %i.g, align 8, !tbaa !16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.br = phi double [ %i.bp, %bb.o ], [ %i.bj, %bb.n ] ; 2 uses
  %.1.2 = phi i32 [ %i.bl, %bb.o ], [ %.1.1, %bb.n ]
  %i.bs = trunc i64 %indvars.iv517 to i32
  %i.bt = add i32 %i.bs, 3                        ; 2 uses
  %i.bu = mul i32 %i.ap, %i.bt
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !16 ; 3 uses
  %i.by = fcmp ogt double %i.bx, %i.br
  br i1 %i.by, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double %i.bx, ptr %i.g, align 8, !tbaa !16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bz = phi double [ %i.bx, %bb.q ], [ %i.br, %bb.p ] ; 3 uses
  %.1.3 = phi i32 [ %i.bt, %bb.q ], [ %.1.2, %bb.p ] ; 3 uses
  %indvars.iv.next518.3 = add nuw nsw i64 %indvars.iv517, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge459.loopexit.unr-lcssa, label %bb.j, !llvm.loop !18

._crit_edge459.loopexit.unr-lcssa:                ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge459, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge459.loopexit.unr-lcssa, %.lr.ph458
  %indvars.iv517.epil.init = phi i64 [ 2, %.lr.ph458 ], [ %indvars.iv.next518.3, %._crit_edge459.loopexit.unr-lcssa ]
  %.0456.epil.init = phi i32 [ 1, %.lr.ph458 ], [ %.1.3, %._crit_edge459.loopexit.unr-lcssa ]
  %.epil.init = phi double [ %i.ao, %.lr.ph458 ], [ %i.bz, %._crit_edge459.loopexit.unr-lcssa ]
  %lcmp.mod955 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod955)
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %.epil.preheader
  %indvars.iv517.epil = phi i64 [ %indvars.iv517.epil.init, %.epil.preheader ], [ %indvars.iv.next518.epil, %bb.u ] ; 2 uses
  %.0456.epil = phi i32 [ %.0456.epil.init, %.epil.preheader ], [ %.1.epil, %bb.u ]
  %i.ca = phi double [ %.epil.init, %.epil.preheader ], [ %i.ch, %bb.u ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.cb = trunc nuw nsw i64 %indvars.iv517.epil to i32 ; 2 uses
  %i.cc = mul i32 %i.ap, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !16 ; 3 uses
  %i.cg = fcmp ogt double %i.cf, %i.ca
  br i1 %i.cg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double %i.cf, ptr %i.g, align 8, !tbaa !16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ch = phi double [ %i.cf, %bb.t ], [ %i.ca, %bb.s ] ; 2 uses
  %.1.epil = phi i32 [ %i.cb, %bb.t ], [ %.0456.epil, %bb.s ] ; 2 uses
  %indvars.iv.next518.epil = add nuw nsw i64 %indvars.iv517.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge459, label %bb.s, !llvm.loop !19

._crit_edge459:                                   ; preds = %._crit_edge459.loopexit.unr-lcssa, %bb.u, %._crit_edge
  %i.ci = phi double [ %i.ao, %._crit_edge ], [ %i.bz, %._crit_edge459.loopexit.unr-lcssa ], [ %i.ch, %bb.u ]
  %.0.lcssa = phi i32 [ 1, %._crit_edge ], [ %.1.3, %._crit_edge459.loopexit.unr-lcssa ], [ %.1.epil, %bb.u ] ; 2 uses
  %i.cj = fcmp ugt double %i.ci, 0.000000e+00
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge459
  %i.ck = call i32 @disnan_(ptr noundef nonnull %i.g) #8
  %.not416 = icmp eq i32 %i.ck, 0
  br i1 %.not416, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge459
  store i32 0, ptr %5, align 4, !tbaa !8
  store i32 1, ptr %8, align 4, !tbaa !8
  br label %bb.ay

bb.x:                                             ; preds = %bb.v
  %i.cl = load double, ptr %6, align 8, !tbaa !16 ; 2 uses
  %i.cm = fcmp olt double %i.cl, 0.000000e+00
  br i1 %i.cm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cn = load i32, ptr %1, align 4, !tbaa !8
  %i.co = sitofp i32 %i.cn to double
  %i.cp = call double @dlamch_(ptr noundef nonnull @.str.4) #8
  %i.cq = fmul double %i.cp, %i.co
  %i.cr = load double, ptr %i.g, align 8, !tbaa !16
  %i.cs = fmul double %i.cq, %i.cr
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.0388 = phi double [ %i.cs, %bb.y ], [ %i.cl, %bb.x ] ; 2 uses
  %i.ct = load i32, ptr %1, align 4, !tbaa !8     ; 4 uses
  br i1 %.not, label %bb.al, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not424479 = icmp slt i32 %i.ct, 1
  br i1 %.not424479, label %.loopexit, label %.lr.ph483

.lr.ph483:                                        ; preds = %bb.aa
  %i.cu = add i32 %i.j, 1                         ; 19 uses
  %i.cv = zext nneg i32 %i.w to i64               ; 2 uses
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = zext nneg i32 %i.w to i64               ; 4 uses
  %i.cy = sext i32 %i.j to i64                    ; 6 uses
  %i.cz = zext nneg i32 %i.ct to i64
  %i.da = sub nsw i32 0, %i.w                     ; 2 uses
  %i.db = shl nuw i32 %i.w, 1                     ; 2 uses
  %i.dc = shl nuw nsw i64 %i.cx, 3
  %i.dd = zext i32 %i.da to i64
  %scevgep672 = getelementptr i8, ptr %2, i64 -16
  %i.de = zext i32 %i.db to i64
  %scevgep674 = getelementptr i8, ptr %2, i64 -8
  %i.df = shl nuw nsw i64 %i.cx, 4
  %i.dg = sub nsw i32 0, %i.w                     ; 2 uses
  %i.dh = zext i32 %i.dg to i64
  %i.di = zext i32 %i.dg to i64
  %i.dj = zext i32 %i.cu to i64                   ; 2 uses
  %i.dk = mul i32 %i.w, %i.cu
  %i.dl = zext i32 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.cx, 3
  %i.dn = sub nsw i32 0, %i.w
  %i.do = zext i32 %i.dn to i64
  %i.dp = shl nsw i64 %i.k, 3                     ; 2 uses
  %scevgep712 = getelementptr i8, ptr %2, i64 %i.dp
  %i.dq = sext i32 %i.cu to i64
  %i.dr = shl nsw i64 %i.dq, 3
  %i.ds = zext i32 %i.cu to i64                   ; 2 uses
  %i.dt = mul i32 %i.w, %i.cu
  %i.du = zext i32 %i.dt to i64
  %scevgep714 = getelementptr i8, ptr %2, i64 %i.dp
  %i.dv = sub nsw i32 0, %i.w
  %i.dw = zext i32 %i.dv to i64
  %i.dx = icmp slt i32 %i.cu, 0                   ; 2 uses
  %i.dy = select i1 %i.dx, i32 %narrow, i32 %i.cu
  %broadcast.splatinsert731 = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %broadcast.splat732 = shufflevector <4 x i32> %broadcast.splatinsert731, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert764 = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %broadcast.splat765 = shufflevector <4 x i32> %broadcast.splatinsert764, <4 x i32> poison, <4 x i32> zeroinitializer
  %ident.check = icmp ne i32 %i.j, 1
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph483, %bb.ak
  %indvars.iv527 = phi i64 [ 1, %.lr.ph483 ], [ %indvars.iv.next528, %bb.ak ] ; 11 uses
  %indvars.iv522 = phi i64 [ 1, %.lr.ph483 ], [ %indvars.iv.next523, %bb.ak ] ; 2 uses
  %indvar = phi i64 [ 0, %.lr.ph483 ], [ %indvar.next, %bb.ak ] ; 16 uses
  %.2481 = phi i32 [ %.0.lcssa, %.lr.ph483 ], [ %.3.lcssa, %bb.ak ] ; 2 uses
  %i.dz = mul i64 %indvar, %i.dw
  %i.ea = mul i64 %i.dm, %indvar
  %i.eb = mul i64 %indvar, %i.do
  %i.ec = mul i64 %indvar, %i.du
  %i.ed = add i64 %i.ec, %i.ds
  %i.ee = mul i64 %indvar, %i.di
  %i.ef = mul i64 %indvar, %i.dl
  %i.eg = add i64 %i.ef, %i.dj
  %i.eh = mul i64 %indvar, %i.dh
  %i.ei = mul i64 %i.dc, %indvar
  %i.ej = mul i64 %indvar, %i.dd
  %i.ek = mul i64 %indvar, %i.de
  %i.el = mul i64 %i.df, %indvar                  ; 2 uses
  %i.em = trunc i64 %indvar to i32
  %i.en = mul i32 %i.em, %i.da
  %i.eo = trunc i64 %indvar to i32
  %i.ep = mul i32 %i.db, %i.eo
  %i.eq = add i32 %i.ep, 2
  %indvars541 = trunc i64 %indvars.iv522 to i32
  %i.er = load i32, ptr %1, align 4, !tbaa !8     ; 4 uses
  %i.es = trunc nuw nsw i64 %indvars.iv527 to i32 ; 2 uses
  %i.et = sub nsw i32 %i.er, %i.es
  %i.eu = add nsw i32 %i.et, 1                    ; 2 uses
  store i32 %i.eu, ptr %i.c, align 4, !tbaa !8
  %i.ev = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.eu) ; 3 uses
  store i32 %i.ev, ptr %i.f, align 4, !tbaa !8
  %i.ew = sext i32 %i.er to i64
  %.not426460 = icmp sgt i64 %indvars.iv527, %i.ew
  br i1 %.not426460, label %._crit_edge464, label %.lr.ph463.preheader

.lr.ph463.preheader:                              ; preds = %bb.ab
  %i.ex = trunc i64 %indvar to i32
  %i.ey = mul i32 %i.w, %i.ex
  %i.ez = xor i32 %i.ey, -1
  %i.fa = mul i64 %i.cw, %indvar
  %scevgep = getelementptr i8, ptr %7, i64 %i.fa
  %i.fb = add i32 %i.er, %i.ez
  %i.fc = zext i32 %i.fb to i64
  %i.fd = shl nuw nsw i64 %i.fc, 3
  %i.fe = add nuw nsw i64 %i.fd, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.fe, i1 false), !tbaa !16
  br label %._crit_edge464

._crit_edge464:                                   ; preds = %.lr.ph463.preheader, %bb.ab
  %i.ff = trunc nuw i64 %indvars.iv527 to i32
  %i.fg = add i32 %i.ff, -1
  %i.fh = add i32 %i.fg, %i.ev                    ; 2 uses
  store i32 %i.fh, ptr %i.b, align 4, !tbaa !8
  %i.fi = sext i32 %i.fh to i64
  %.not427470 = icmp sgt i64 %indvars.iv527, %i.fi
  br i1 %.not427470, label %._crit_edge476, label %.lr.ph475.preheader

.lr.ph475.preheader:                              ; preds = %._crit_edge464
  %invariant.gep622 = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv527
  %invariant.gep624 = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv527
  %i.fj = getelementptr i8, ptr %7, i64 %i.ea
  %i.fk = getelementptr i8, ptr %7, i64 %i.ei
  %i.fl = shl i64 %i.ek, 32
  %i.fm = add i64 %i.fl, 8589934592
  %i.fn = getelementptr i8, ptr %2, i64 %i.el
  %i.fo = getelementptr i8, ptr %i.fn, i64 -8
  %i.fp = getelementptr i8, ptr %2, i64 %i.el
  br label %.lr.ph475

.lr.ph475:                                        ; preds = %.lr.ph475.preheader, %bb.ai
  %indvar665 = phi i64 [ 0, %.lr.ph475.preheader ], [ %indvar.next666, %bb.ai ] ; 12 uses
  %indvar663 = phi i32 [ 0, %.lr.ph475.preheader ], [ %indvar.next664, %bb.ai ] ; 3 uses
  %indvars.iv529 = phi i64 [ %indvars.iv527, %.lr.ph475.preheader ], [ %indvars.iv.next530.pre-phi, %bb.ai ] ; 35 uses
  %.3473 = phi i32 [ %.2481, %.lr.ph475.preheader ], [ %.4, %bb.ai ]
  %i.fq = xor i64 %indvar665, -1
  %i.fr = add i64 %i.dz, %i.fq
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = shl nuw nsw i64 %indvar665, 3
  %scevgep708 = getelementptr i8, ptr %i.fj, i64 %i.ft ; 2 uses
  %9 = shl i64 %indvars.iv529, 3
  %scevgep710 = getelementptr i8, ptr %7, i64 %9  ; 2 uses
  %i.fu = xor i64 %indvar665, -1
  %i.fv = add i64 %i.eb, %i.fu
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = mul i64 %indvar665, %i.ds
  %i.fy = add i64 %i.ed, %i.fx
  %sext = shl i64 %i.fy, 32
  %i.fz = ashr exact i64 %sext, 29                ; 2 uses
  %scevgep715 = getelementptr i8, ptr %scevgep714, i64 %i.fz ; 4 uses
  %i.ga = xor i64 %indvar665, -1
  %i.gb = add i64 %i.ee, %i.ga
  %i.gc = trunc i64 %i.gb to i32
  %i.gd = mul i64 %indvar665, %i.dj
  %i.ge = add i64 %i.eg, %i.gd
  %i.gf = trunc i64 %i.ge to i32                  ; 4 uses
  %i.gg = xor i64 %indvar665, -1
  %i.gh = add i64 %i.eh, %i.gg
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = shl nuw nsw i64 %indvar665, 3
  %scevgep667 = getelementptr i8, ptr %i.fk, i64 %i.gj ; 4 uses
  %10 = shl i64 %indvars.iv529, 3
  %scevgep668 = getelementptr i8, ptr %7, i64 %10 ; 2 uses
  %i.gk = xor i64 %indvar665, -1
  %i.gl = add i64 %i.ej, %i.gk
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = shl i64 %indvar665, 33
  %sext934 = add i64 %i.gn, %i.fm
  %i.go = ashr exact i64 %sext934, 29             ; 2 uses
  %scevgep673 = getelementptr i8, ptr %scevgep672, i64 %i.go ; 2 uses
  %i.gp = shl nuw nsw i64 %indvar665, 4           ; 2 uses
  %scevgep676 = getelementptr i8, ptr %i.fo, i64 %i.gp ; 2 uses
  %scevgep677 = getelementptr i8, ptr %i.fp, i64 %i.gp
  %i.gq = xor i32 %indvar663, -1
  %i.gr = add i32 %i.en, %i.gq
  %i.gs = shl nuw i32 %indvar663, 1
  %i.gt = add i32 %i.eq, %i.gs                    ; 2 uses
  %i.gu = load i32, ptr %1, align 4, !tbaa !8     ; 16 uses
  store i32 %i.gu, ptr %i.c, align 4, !tbaa !8
  %i.gv = sext i32 %i.gu to i64                   ; 5 uses
  %.not429465 = icmp sgt i64 %indvars.iv529, %i.gv
  br i1 %.not429465, label %._crit_edge469, label %.lr.ph468

.lr.ph468:                                        ; preds = %.lr.ph475
  %i.gw = icmp sgt i64 %indvars.iv529, %indvars.iv527
  %i.gx = add i32 %i.gu, 1                        ; 2 uses
  br i1 %i.gw, label %.lr.ph468.split.us.preheader, label %iter.check758

iter.check758:                                    ; preds = %.lr.ph468
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %i.gv ; 7 uses
  %i.gy = add i32 %i.gu, %i.fs                    ; 3 uses
  %i.gz = zext i32 %i.gy to i64
  %i.ha = add nuw nsw i64 %i.gz, 1                ; 5 uses
  %min.iters.check726 = icmp ult i32 %i.gy, 3
  br i1 %min.iters.check726, label %.lr.ph468.split.preheader, label %vector.scevcheck703

vector.scevcheck703:                              ; preds = %iter.check758
  %i.hb = add i32 %i.gu, %i.gc
  %mul704 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.dy, i32 %i.hb) ; 2 uses
  %mul.result705 = extractvalue { i32, i1 } %mul704, 0 ; 2 uses
  %mul.overflow706 = extractvalue { i32, i1 } %mul704, 1
  %i.hc = add i32 %mul.result705, %i.gf
  %i.hd = sub i32 %i.gf, %mul.result705
  %i.he = icmp slt i32 %i.hc, %i.gf
  %i.hf = icmp sgt i32 %i.hd, %i.gf
  %i.hg = select i1 %i.dx, i1 %i.hf, i1 %i.he
  %i.hh = or i1 %i.hg, %mul.overflow706
  br i1 %i.hh, label %.lr.ph468.split.preheader, label %vector.memcheck707

vector.memcheck707:                               ; preds = %vector.scevcheck703
  %i.hi = shl nsw i64 %i.gv, 3                    ; 2 uses
  %scevgep709 = getelementptr i8, ptr %scevgep708, i64 %i.hi ; 2 uses
  %i.hj = add i32 %i.gu, %i.fw
  %i.hk = zext i32 %i.hj to i64                   ; 2 uses
  %i.hl = shl nuw nsw i64 %i.hk, 3                ; 2 uses
  %i.hm = getelementptr i8, ptr %scevgep710, i64 %i.hi
  %scevgep711 = getelementptr i8, ptr %i.hm, i64 %i.hl ; 2 uses
  %i.hn = mul i64 %i.dr, %i.hk
  %i.ho = getelementptr i8, ptr %scevgep712, i64 %i.hn
  %scevgep713 = getelementptr i8, ptr %i.ho, i64 %i.fz ; 4 uses
  %i.hp = icmp ult ptr %scevgep713, %scevgep715
  %umin = select i1 %i.hp, ptr %scevgep713, ptr %scevgep715
  %i.hq = icmp ugt ptr %scevgep713, %scevgep715
  %umax = select i1 %i.hq, ptr %scevgep713, ptr %scevgep715
  %scevgep716 = getelementptr i8, ptr %umax, i64 8
  %scevgep717 = getelementptr i8, ptr %scevgep710, i64 %i.hl
  %bound0718 = icmp ult ptr %scevgep709, %scevgep716
  %bound1719 = icmp ult ptr %umin, %scevgep711
  %found.conflict720 = and i1 %bound0718, %bound1719
  %bound0721 = icmp ult ptr %scevgep709, %scevgep717
  %bound1722 = icmp ult ptr %scevgep708, %scevgep711
  %found.conflict723 = and i1 %bound0721, %bound1722
  %conflict.rdx724 = or i1 %found.conflict720, %found.conflict723
  br i1 %conflict.rdx724, label %.lr.ph468.split.preheader, label %vector.main.loop.iter.check727

vector.main.loop.iter.check727:                   ; preds = %vector.memcheck707
  %min.iters.check728 = icmp ult i32 %i.gy, 15
  br i1 %min.iters.check728, label %vec.epilog.ph762, label %vector.ph729

vector.ph729:                                     ; preds = %vector.main.loop.iter.check727
  %i.hr = and i64 %i.ha, 12
  %n.vec730 = and i64 %i.ha, 8589934576           ; 4 uses
  %i.hs = add i64 %indvars.iv529, %n.vec730       ; 2 uses
  %i.ht = trunc i64 %indvars.iv529 to i32
  %broadcast.splatinsert733 = insertelement <4 x i32> poison, i32 %i.ht, i64 0
  %broadcast.splat734 = shufflevector <4 x i32> %broadcast.splatinsert733, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction735 = add <4 x i32> %broadcast.splat734, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body736

vector.body736:                                   ; preds = %vector.body736, %vector.ph729
  %index737 = phi i64 [ 0, %vector.ph729 ], [ %index.next752, %vector.body736 ] ; 2 uses
  %vec.ind738 = phi <4 x i32> [ %induction735, %vector.ph729 ], [ %vec.ind.next753, %vector.body736 ] ; 5 uses
  %step.add739 = add <4 x i32> %vec.ind738, splat (i32 4)
  %step.add.2740 = add <4 x i32> %vec.ind738, splat (i32 8)
  %step.add.3741 = add <4 x i32> %vec.ind738, splat (i32 12)
  %i.hu = add i64 %indvars.iv529, %index737       ; 2 uses
  %i.hv = mul <4 x i32> %broadcast.splat732, %vec.ind738
  %i.hw = mul <4 x i32> %broadcast.splat732, %step.add739
  %i.hx = mul <4 x i32> %broadcast.splat732, %step.add.2740
  %i.hy = mul <4 x i32> %broadcast.splat732, %step.add.3741
  %i.hz = sext <4 x i32> %i.hv to <4 x i64>
  %i.ia = sext <4 x i32> %i.hw to <4 x i64>
  %i.ib = sext <4 x i32> %i.hx to <4 x i64>
  %i.ic = sext <4 x i32> %i.hy to <4 x i64>
  %wide.gep = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.hz
  %wide.gep742 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.ia
  %wide.gep743 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.ib
  %wide.gep744 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.ic
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !21
  %wide.masked.gather745 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep742, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !21
  %wide.masked.gather746 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep743, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !21
  %wide.masked.gather747 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep744, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !21
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.hu ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 96
  %wide.load748 = load <4 x double>, ptr %i.id, align 8, !tbaa !16, !alias.scope !24
  %wide.load749 = load <4 x double>, ptr %i.ie, align 8, !tbaa !16, !alias.scope !24
  %wide.load750 = load <4 x double>, ptr %i.if, align 8, !tbaa !16, !alias.scope !24
  %wide.load751 = load <4 x double>, ptr %i.ig, align 8, !tbaa !16, !alias.scope !24
  %i.ih = fsub <4 x double> %wide.masked.gather, %wide.load748
  %i.ii = fsub <4 x double> %wide.masked.gather745, %wide.load749
  %i.ij = fsub <4 x double> %wide.masked.gather746, %wide.load750
  %i.ik = fsub <4 x double> %wide.masked.gather747, %wide.load751
  %i.il = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.hu ; 4 uses
  %i.im = getelementptr i8, ptr %i.il, i64 32
  %i.in = getelementptr i8, ptr %i.il, i64 64
  %i.io = getelementptr i8, ptr %i.il, i64 96
  store <4 x double> %i.ih, ptr %i.il, align 8, !tbaa !16, !alias.scope !26, !noalias !28
  store <4 x double> %i.ii, ptr %i.im, align 8, !tbaa !16, !alias.scope !26, !noalias !28
  store <4 x double> %i.ij, ptr %i.in, align 8, !tbaa !16, !alias.scope !26, !noalias !28
  store <4 x double> %i.ik, ptr %i.io, align 8, !tbaa !16, !alias.scope !26, !noalias !28
  %index.next752 = add nuw i64 %index737, 16      ; 2 uses
  %vec.ind.next753 = add <4 x i32> %vec.ind738, splat (i32 16)
  %i.ip = icmp eq i64 %index.next752, %n.vec730
  br i1 %i.ip, label %middle.block754, label %vector.body736, !llvm.loop !29

middle.block754:                                  ; preds = %vector.body736
  %cmp.n755 = icmp eq i64 %i.ha, %n.vec730
  br i1 %cmp.n755, label %._crit_edge469, label %vec.epilog.iter.check760

vec.epilog.iter.check760:                         ; preds = %middle.block754
  %min.epilog.iters.check761 = icmp eq i64 %i.hr, 0
  br i1 %min.epilog.iters.check761, label %.lr.ph468.split.preheader, label %vec.epilog.ph762, !prof !30

vec.epilog.ph762:                                 ; preds = %vector.main.loop.iter.check727, %vec.epilog.iter.check760
  %vec.epilog.resume.val756 = phi i64 [ %n.vec730, %vec.epilog.iter.check760 ], [ 0, %vector.main.loop.iter.check727 ]
  %bc.resume.val757 = phi i64 [ %i.hs, %vec.epilog.iter.check760 ], [ %indvars.iv529, %vector.main.loop.iter.check727 ]
  %n.vec763 = and i64 %i.ha, 8589934588           ; 3 uses
  %i.iq = add i64 %indvars.iv529, %n.vec763
  %i.ir = trunc i64 %bc.resume.val757 to i32
  %broadcast.splatinsert766 = insertelement <4 x i32> poison, i32 %i.ir, i64 0
  %broadcast.splat767 = shufflevector <4 x i32> %broadcast.splatinsert766, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction768 = add <4 x i32> %broadcast.splat767, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body769

vec.epilog.vector.body769:                        ; preds = %vec.epilog.vector.body769, %vec.epilog.ph762
  %index770 = phi i64 [ %vec.epilog.resume.val756, %vec.epilog.ph762 ], [ %index.next775, %vec.epilog.vector.body769 ] ; 2 uses
  %vec.ind771 = phi <4 x i32> [ %induction768, %vec.epilog.ph762 ], [ %vec.ind.next776, %vec.epilog.vector.body769 ] ; 2 uses
  %i.is = add i64 %indvars.iv529, %index770       ; 2 uses
  %i.it = mul <4 x i32> %broadcast.splat765, %vec.ind771
  %i.iu = sext <4 x i32> %i.it to <4 x i64>
  %wide.gep772 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.iu
  %wide.masked.gather773 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep772, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !21
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.is
  %wide.load774 = load <4 x double>, ptr %i.iv, align 8, !tbaa !16, !alias.scope !24
  %i.iw = fsub <4 x double> %wide.masked.gather773, %wide.load774
  %i.ix = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.is
  store <4 x double> %i.iw, ptr %i.ix, align 8, !tbaa !16, !alias.scope !26, !noalias !28
  %index.next775 = add nuw i64 %index770, 4       ; 2 uses
  %vec.ind.next776 = add <4 x i32> %vec.ind771, splat (i32 4)
  %i.iy = icmp eq i64 %index.next775, %n.vec763
  br i1 %i.iy, label %vec.epilog.middle.block777, label %vec.epilog.vector.body769, !llvm.loop !31

vec.epilog.middle.block777:                       ; preds = %vec.epilog.vector.body769
  %cmp.n778 = icmp eq i64 %i.ha, %n.vec763
  br i1 %cmp.n778, label %._crit_edge469, label %.lr.ph468.split.preheader

.lr.ph468.split.preheader:                        ; preds = %vector.memcheck707, %vector.scevcheck703, %iter.check758, %vec.epilog.iter.check760, %vec.epilog.middle.block777
  %indvars.iv531.ph = phi i64 [ %indvars.iv529, %iter.check758 ], [ %indvars.iv529, %vector.scevcheck703 ], [ %indvars.iv529, %vector.memcheck707 ], [ %i.hs, %vec.epilog.iter.check760 ], [ %i.iq, %vec.epilog.middle.block777 ] ; 3 uses
  %i.iz = add i32 %i.gu, 1
  %i.ja = trunc i64 %indvars.iv531.ph to i32      ; 2 uses
  %i.jb = sub i32 %i.iz, %i.ja
  %i.jc = sub i32 %i.gu, %i.ja
  %xtraiter956 = and i32 %i.jb, 3                 ; 2 uses
  %lcmp.mod957.not = icmp eq i32 %xtraiter956, 0
  br i1 %lcmp.mod957.not, label %.lr.ph468.split.prol.loopexit, label %.lr.ph468.split.prol

.lr.ph468.split.prol:                             ; preds = %.lr.ph468.split.preheader, %.lr.ph468.split.prol
  %indvars.iv531.prol = phi i64 [ %indvars.iv.next532.prol, %.lr.ph468.split.prol ], [ %indvars.iv531.ph, %.lr.ph468.split.preheader ] ; 4 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph468.split.prol ], [ 0, %.lr.ph468.split.preheader ]
  %i.jd = trunc nsw i64 %indvars.iv531.prol to i32
  %i.je = mul i32 %i.cu, %i.jd
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.jf
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !16
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv531.prol
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !16
  %i.jk = fsub double %i.jh, %i.jj
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv531.prol
  store double %i.jk, ptr %gep.prol, align 8, !tbaa !16
  %indvars.iv.next532.prol = add i64 %indvars.iv531.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
end_hunk_0
begin_hunk_1_@dpstrf_:bb.a
  %wide.trip.count.i = sext i32 %i.np to i64      ; 3 uses
  %i.nu = sub nsw i64 %wide.trip.count.i, %i.nq
  %xtraiter961 = and i64 %i.nu, 7                 ; 2 uses
  %lcmp.mod962.not = icmp eq i64 %xtraiter961, 0
  br i1 %lcmp.mod962.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.nq, %.lr.ph.preheader.i ] ; 2 uses
  %.04.i.prol = phi i32 [ %.1.i.prol, %.lr.ph.i.prol ], [ %i.no, %.lr.ph.preheader.i ]
  %.0152.i.prol = phi double [ %.116.i.prol, %.lr.ph.i.prol ], [ %i.nt, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter963 = phi i64 [ %prol.iter963.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 3 uses
  %i.nv = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.i.prol
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !16 ; 2 uses
  %i.nx = fcmp ogt double %i.nw, %.0152.i.prol    ; 2 uses
  %.116.i.prol = select i1 %i.nx, double %i.nw, double %.0152.i.prol ; 2 uses
  %i.ny = trunc nsw i64 %indvars.iv.next.i.prol to i32
  %.1.i.prol = select i1 %i.nx, i32 %i.ny, i32 %.04.i.prol ; 3 uses
  %prol.iter963.next = add i64 %prol.iter963, 1   ; 2 uses
  %prol.iter963.cmp.not = icmp eq i64 %prol.iter963.next, %xtraiter961
  br i1 %prol.iter963.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !47

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.1.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %.1.i.prol, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %i.nq, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.04.i.unr = phi i32 [ %i.no, %.lr.ph.preheader.i ], [ %.1.i.prol, %.lr.ph.i.prol ]
  %.0152.i.unr = phi double [ %i.nt, %.lr.ph.preheader.i ], [ %.116.i.prol, %.lr.ph.i.prol ]
  %i.nz = sub nsw i64 %i.nq, %wide.trip.count.i
  %i.oa = icmp ugt i64 %i.nz, -8
  br i1 %i.oa, label %dmaxloc_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.04.i = phi i32 [ %.1.i.7, %.lr.ph.i ], [ %.04.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0152.i = phi double [ %.116.i.7, %.lr.ph.i ], [ %.0152.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ob = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.i
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !16 ; 2 uses
  %i.od = fcmp ogt double %i.oc, %.0152.i         ; 2 uses
  %.116.i = select i1 %i.od, double %i.oc, double %.0152.i ; 2 uses
  %i.oe = trunc nsw i64 %indvars.iv.next.i to i32
  %.1.i = select i1 %i.od, i32 %i.oe, i32 %.04.i
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.of = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i
  %i.og = load double, ptr %i.of, align 8, !tbaa !16 ; 2 uses
  %i.oh = fcmp ogt double %i.og, %.116.i          ; 2 uses
  %.116.i.1 = select i1 %i.oh, double %i.og, double %.116.i ; 2 uses
  %i.oi = trunc nsw i64 %indvars.iv.next.i.1 to i32
  %.1.i.1 = select i1 %i.oh, i32 %i.oi, i32 %.1.i
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.oj = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i.1
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !16 ; 2 uses
  %i.ol = fcmp ogt double %i.ok, %.116.i.1        ; 2 uses
  %.116.i.2 = select i1 %i.ol, double %i.ok, double %.116.i.1 ; 2 uses
  %i.om = trunc nsw i64 %indvars.iv.next.i.2 to i32
  %.1.i.2 = select i1 %i.ol, i32 %i.om, i32 %.1.i.1
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.on = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i.2
  %i.oo = load double, ptr %i.on, align 8, !tbaa !16 ; 2 uses
  %i.op = fcmp ogt double %i.oo, %.116.i.2        ; 2 uses
  %.116.i.3 = select i1 %i.op, double %i.oo, double %.116.i.2 ; 2 uses
  %i.oq = trunc nsw i64 %indvars.iv.next.i.3 to i32
  %.1.i.3 = select i1 %i.op, i32 %i.oq, i32 %.1.i.2
  %indvars.iv.next.i.4 = add nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.or = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i.3
  %i.os = load double, ptr %i.or, align 8, !tbaa !16 ; 2 uses
  %i.ot = fcmp ogt double %i.os, %.116.i.3        ; 2 uses
  %.116.i.4 = select i1 %i.ot, double %i.os, double %.116.i.3 ; 2 uses
  %i.ou = trunc nsw i64 %indvars.iv.next.i.4 to i32
  %.1.i.4 = select i1 %i.ot, i32 %i.ou, i32 %.1.i.3
  %indvars.iv.next.i.5 = add nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.ov = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i.4
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !16 ; 2 uses
  %i.ox = fcmp ogt double %i.ow, %.116.i.4        ; 2 uses
  %.116.i.5 = select i1 %i.ox, double %i.ow, double %.116.i.4 ; 2 uses
  %i.oy = trunc nsw i64 %indvars.iv.next.i.5 to i32
  %.1.i.5 = select i1 %i.ox, i32 %i.oy, i32 %.1.i.4
  %indvars.iv.next.i.6 = add nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.oz = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i.5
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !16 ; 2 uses
  %i.pb = fcmp ogt double %i.pa, %.116.i.5        ; 2 uses
  %.116.i.6 = select i1 %i.pb, double %i.pa, double %.116.i.5 ; 2 uses
  %i.pc = trunc nsw i64 %indvars.iv.next.i.6 to i32
  %.1.i.6 = select i1 %i.pb, i32 %i.pc, i32 %.1.i.5
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.pd = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i.6
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !16 ; 2 uses
  %i.pf = fcmp ogt double %i.pe, %.116.i.6        ; 2 uses
  %.116.i.7 = select i1 %i.pf, double %i.pe, double %.116.i.6
  %i.pg = trunc nsw i64 %indvars.iv.next.i.7 to i32
  %.1.i.7 = select i1 %i.pf, i32 %i.pg, i32 %.1.i.6 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %dmaxloc_.exit, label %.lr.ph.i, !llvm.loop !48

dmaxloc_.exit:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.ac
  %.0.lcssa.i = phi i32 [ %i.no, %bb.ac ], [ %.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.1.i.7, %.lr.ph.i ]
  %reass.sub.i = sub i32 %.0.lcssa.i, %i.no
  %i.ph = add i32 %reass.sub.i, %i.nn             ; 2 uses
  %i.pi = add nsw i32 %i.ph, %i.gu
  %i.pj = sext i32 %i.pi to i64
  %i.pk = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.pj
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !16 ; 3 uses
  store double %i.pl, ptr %i.g, align 8, !tbaa !16
  %i.pm = fcmp ugt double %i.pl, %.0388
  br i1 %i.pm, label %bb.ad, label %split

bb.ad:                                            ; preds = %dmaxloc_.exit
  %i.pn = call i32 @disnan_(ptr noundef nonnull %i.g) #8
  %.not430 = icmp eq i32 %i.pn, 0
  br i1 %.not430, label %._crit_edge469._crit_edge, label %._crit_edge560

._crit_edge560:                                   ; preds = %bb.ad
  %.pre561 = load double, ptr %i.g, align 8, !tbaa !16
  br label %split

split:                                            ; preds = %dmaxloc_.exit, %._crit_edge560
  %i.po = phi double [ %.pre561, %._crit_edge560 ], [ %i.pl, %dmaxloc_.exit ]
  %i.pp = mul i32 %i.cu, %i.nn
  br label %bb.ax

._crit_edge469._crit_edge:                        ; preds = %._crit_edge469, %bb.ad
  %.4 = phi i32 [ %i.ph, %bb.ad ], [ %.3473, %._crit_edge469 ] ; 11 uses
  %.not431 = icmp eq i32 %.4, %i.nn
  %.pre581 = mul nsw i64 %indvars.iv529, %i.cy    ; 3 uses
  %.pre583 = add nsw i64 %.pre581, %indvars.iv529 ; 2 uses
  br i1 %.not431, label %._crit_edge570, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge469._crit_edge
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.pre583
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !16
  %i.ps = mul nsw i32 %.4, %i.j                   ; 2 uses
  %i.pt = add nsw i32 %i.ps, %.4
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.pu
  store double %i.pr, ptr %i.pv, align 8, !tbaa !16
  %i.pw = trunc i64 %indvars.iv529 to i32
  %i.px = add i32 %i.pw, -1
  store i32 %i.px, ptr %i.c, align 4, !tbaa !8
  %i.py = getelementptr [8 x i8], ptr %i.l, i64 %.pre581
  %i.pz = getelementptr i8, ptr %i.py, i64 8
  %i.qa = sext i32 %i.ps to i64                   ; 2 uses
  %i.qb = getelementptr [8 x i8], ptr %i.l, i64 %i.qa
  %i.qc = getelementptr i8, ptr %i.qb, i64 8
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef %i.pz, ptr noundef nonnull @c__1, ptr noundef %i.qc, ptr noundef nonnull @c__1) #8
  %i.qd = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.qe = icmp slt i32 %.4, %i.qd
  br i1 %i.qe, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.qf = sub nsw i32 %i.qd, %.4
  store i32 %i.qf, ptr %i.c, align 4, !tbaa !8
  %i.qg = add nsw i32 %.4, 1
  %i.qh = mul nsw i32 %i.qg, %i.j                 ; 2 uses
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv529
  %i.qk = getelementptr [8 x i8], ptr %i.qj, i64 %i.qi
  %i.ql = add nsw i32 %i.qh, %.4
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.qm
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.qk, ptr noundef nonnull %3, ptr noundef nonnull %i.qn, ptr noundef nonnull %3) #8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.qo = xor i32 %i.nn, -1
  %i.qp = add i32 %.4, %i.qo
  store i32 %i.qp, ptr %i.c, align 4, !tbaa !8
  %i.qq = add nuw nsw i64 %indvars.iv529, 1       ; 2 uses
  %i.qr = mul nsw i64 %i.qq, %i.cy
  %i.qs = getelementptr [8 x i8], ptr %i.l, i64 %i.qr
  %i.qt = getelementptr [8 x i8], ptr %i.qs, i64 %indvars.iv529
  %i.qu = getelementptr [8 x i8], ptr %i.l, i64 %i.qq
  %i.qv = getelementptr [8 x i8], ptr %i.qu, i64 %i.qa
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.qt, ptr noundef nonnull %3, ptr noundef nonnull %i.qv, ptr noundef nonnull @c__1) #8
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv529 ; 2 uses
  %i.qx = load double, ptr %i.qw, align 8, !tbaa !16
  %i.qy = sext i32 %.4 to i64                     ; 2 uses
  %i.qz = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.qy ; 2 uses
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !16
  store double %i.ra, ptr %i.qw, align 8, !tbaa !16
  store double %i.qx, ptr %i.qz, align 8, !tbaa !16
  %i.rb = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.qy ; 2 uses
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !8
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv529 ; 2 uses
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !8
  store i32 %i.re, ptr %i.rb, align 4, !tbaa !8
  store i32 %i.rc, ptr %i.rd, align 4, !tbaa !8
  br label %._crit_edge570

._crit_edge570:                                   ; preds = %._crit_edge469._crit_edge, %bb.ag
  %i.rf = load double, ptr %i.g, align 8, !tbaa !16
  %i.rg = call double @sqrt(double noundef %i.rf) #8 ; 2 uses
  store double %i.rg, ptr %i.g, align 8, !tbaa !16
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.pre583
  store double %i.rg, ptr %i.rh, align 8, !tbaa !16
  %i.ri = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.rj = sext i32 %i.ri to i64
  %i.rk = icmp slt i64 %indvars.iv529, %i.rj
  br i1 %i.rk, label %bb.ah, label %._crit_edge569

._crit_edge569:                                   ; preds = %._crit_edge570
  %.pre585 = add nuw i64 %indvars.iv529, 1
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge570
  %i.rl = sub nuw nsw i64 %indvars.iv529, %indvars.iv527
  %i.rm = trunc nsw i64 %i.rl to i32
  store i32 %i.rm, ptr %i.c, align 4, !tbaa !8
  %i.rn = sub nsw i32 %i.ri, %i.nn
  store i32 %i.rn, ptr %i.d, align 4, !tbaa !8
  %i.ro = add nuw nsw i64 %indvars.iv529, 1       ; 2 uses
  %i.rp = mul nsw i64 %i.ro, %i.cy                ; 2 uses
  %gep623 = getelementptr [8 x i8], ptr %invariant.gep622, i64 %i.rp
  %gep625 = getelementptr [8 x i8], ptr %invariant.gep624, i64 %.pre581
  %i.rq = getelementptr [8 x i8], ptr %i.l, i64 %i.rp
  %i.rr = getelementptr [8 x i8], ptr %i.rq, i64 %indvars.iv529 ; 2 uses
  call void @dgemv_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b23, ptr noundef nonnull %gep623, ptr noundef nonnull %3, ptr noundef nonnull %gep625, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b25, ptr noundef nonnull %i.rr, ptr noundef nonnull %3) #8
  %i.rs = load i32, ptr %1, align 4, !tbaa !8
  %i.rt = sub nsw i32 %i.rs, %i.nn
  store i32 %i.rt, ptr %i.c, align 4, !tbaa !8
  %i.ru = load double, ptr %i.g, align 8, !tbaa !16
  %i.rv = fdiv double 1.000000e+00, %i.ru
  store double %i.rv, ptr %i.e, align 8, !tbaa !16
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.rr, ptr noundef nonnull %3) #8
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge569, %bb.ah
  %indvars.iv.next530.pre-phi = phi i64 [ %.pre585, %._crit_edge569 ], [ %i.ro, %bb.ah ] ; 2 uses
  %i.rw = load i32, ptr %i.b, align 4, !tbaa !8
  %i.rx = sext i32 %i.rw to i64
  %.not427.not = icmp slt i64 %indvars.iv529, %i.rx
  %indvar.next664 = add i32 %indvar663, 1
  %indvar.next666 = add i64 %indvar665, 1
  br i1 %.not427.not, label %.lr.ph475, label %._crit_edge476.loopexit, !llvm.loop !49

._crit_edge476.loopexit:                          ; preds = %bb.ai
  %i.ry = trunc nsw i64 %indvars.iv.next530.pre-phi to i32
  %.pre562 = load i32, ptr %i.f, align 4, !tbaa !8
  %.pre563 = load i32, ptr %1, align 4, !tbaa !8
  br label %._crit_edge476

._crit_edge476:                                   ; preds = %._crit_edge476.loopexit, %._crit_edge464
  %i.rz = phi i32 [ %i.er, %._crit_edge464 ], [ %.pre563, %._crit_edge476.loopexit ] ; 2 uses
  %i.sa = phi i32 [ %i.ev, %._crit_edge464 ], [ %.pre562, %._crit_edge476.loopexit ]
  %.0391.lcssa = phi i32 [ %i.es, %._crit_edge464 ], [ %i.ry, %._crit_edge476.loopexit ] ; 3 uses
  %.3.lcssa = phi i32 [ %.2481, %._crit_edge464 ], [ %.4, %._crit_edge476.loopexit ]
  %i.sb = add nsw i32 %i.sa, %indvars541
  %.not428 = icmp sgt i32 %i.sb, %i.rz
  br i1 %.not428, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge476
  %reass.sub = sub i32 %i.rz, %.0391.lcssa
  %i.sc = add i32 %reass.sub, 1
  store i32 %i.sc, ptr %i.b, align 4, !tbaa !8
  %i.sd = mul nsw i32 %.0391.lcssa, %i.j          ; 2 uses
  %i.se = sext i32 %i.sd to i64
  %i.sf = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv527
  %i.sg = getelementptr [8 x i8], ptr %i.sf, i64 %i.se
  %i.sh = add nsw i32 %i.sd, %.0391.lcssa
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.si
  call void @dsyrk_(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b23, ptr noundef nonnull %i.sg, ptr noundef nonnull %3, ptr noundef nonnull @c_b25, ptr noundef nonnull %i.sj, ptr noundef nonnull %3) #8
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge476, %bb.aj
  %indvars.iv.next528 = add nuw nsw i64 %indvars.iv527, %i.cx ; 2 uses
  %indvars.iv.next523 = add i64 %indvars.iv522, %i.cv
  %.not424 = icmp samesign ugt i64 %indvars.iv.next528, %i.cz
  %indvar.next = add i64 %indvar, 1
  br i1 %.not424, label %.loopexit, label %bb.ab, !llvm.loop !50

bb.al:                                            ; preds = %bb.z
  %i.sk = icmp sgt i32 %i.ct, 0
  br i1 %i.sk, label %.lr.ph508, label %.loopexit

.lr.ph508:                                        ; preds = %bb.al
  %i.sl = add i32 %i.j, 1                         ; 30 uses
  %i.sm = sext i32 %i.j to i64                    ; 5 uses
  %invariant.gep632 = getelementptr [8 x i8], ptr %i.l, i64 %i.sm
  %i.sn = sub nsw i32 0, %i.w                     ; 2 uses
  %i.so = mul i32 %i.w, %i.sl
  %i.sp = zext nneg i32 %i.w to i64               ; 2 uses
  %i.sq = shl nuw nsw i64 %i.sp, 3
  %i.sr = zext i32 %i.sn to i64
  %i.ss = shl nsw i64 %i.k, 3                     ; 4 uses
  %scevgep798 = getelementptr i8, ptr %2, i64 %i.ss
  %i.st = sext i32 %i.sl to i64
  %i.su = shl nsw i64 %i.st, 3
  %i.sv = zext i32 %i.sl to i64                   ; 2 uses
  %i.sw = mul i32 %i.w, %i.sl
  %i.sx = zext i32 %i.sw to i64
  %scevgep800 = getelementptr i8, ptr %2, i64 %i.ss
  %i.sy = shl nsw i64 %i.sm, 3
  %i.sz = add nsw i64 %i.sy, 8                    ; 2 uses
  %i.ta = mul i64 %i.sz, %i.sp
  %i.tb = sub nsw i32 0, %i.w                     ; 2 uses
  %i.tc = zext i32 %i.tb to i64
  %i.td = zext i32 %i.tb to i64
  %i.te = zext i32 %i.sl to i64                   ; 2 uses
  %i.tf = mul i32 %i.w, %i.sl
  %i.tg = zext i32 %i.tf to i64
  %i.th = zext nneg i32 %i.w to i64
  %i.ti = shl nuw nsw i64 %i.th, 3
  %i.tj = sub nsw i32 0, %i.w
  %i.tk = zext i32 %i.tj to i64
  %i.tl = shl nsw i64 %i.k, 3                     ; 2 uses
  %scevgep862 = getelementptr i8, ptr %2, i64 %i.tl
  %i.tm = sext i32 %i.sl to i64
  %i.tn = shl nsw i64 %i.tm, 3
  %i.to = zext i32 %i.sl to i64                   ; 2 uses
  %i.tp = mul i32 %i.w, %i.sl
  %i.tq = zext i32 %i.tp to i64
  %scevgep864 = getelementptr i8, ptr %2, i64 %i.tl
  %i.tr = sub nsw i32 0, %i.w
  %i.ts = zext i32 %i.tr to i64
  %i.tt = getelementptr i8, ptr %2, i64 %i.ss
  %i.tu = getelementptr i8, ptr %i.tt, i64 8
  %i.tv = getelementptr i8, ptr %2, i64 %i.ss
  %i.tw = getelementptr i8, ptr %i.tv, i64 16
  %i.tx = icmp slt i32 %i.sl, 0                   ; 2 uses
  %i.ty = select i1 %i.tx, i32 %narrow, i32 %i.sl
  %broadcast.splatinsert883 = insertelement <4 x i32> poison, i32 %i.sl, i64 0
  %broadcast.splat884 = shufflevector <4 x i32> %broadcast.splatinsert883, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert918 = insertelement <4 x i32> poison, i32 %i.sl, i64 0
  %broadcast.splat919 = shufflevector <4 x i32> %broadcast.splatinsert918, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.tz = icmp slt i32 %i.sl, 0                   ; 2 uses
  %i.ua = select i1 %i.tz, i32 %narrow, i32 %i.sl
  %broadcast.splatinsert831 = insertelement <4 x i32> poison, i32 %i.sl, i64 0
  %broadcast.splat832 = shufflevector <4 x i32> %broadcast.splatinsert831, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph508, %bb.aw
  %indvar789 = phi i64 [ 0, %.lr.ph508 ], [ %indvar.next790, %bb.aw ] ; 12 uses
  %indvar781 = phi i32 [ 0, %.lr.ph508 ], [ %indvar.next782, %bb.aw ] ; 3 uses
  %.5506 = phi i32 [ %.0.lcssa, %.lr.ph508 ], [ %.6.lcssa, %bb.aw ] ; 2 uses
  %.1390505 = phi i32 [ 1, %.lr.ph508 ], [ %i.aiy, %bb.aw ] ; 12 uses
  %i.ub = mul i64 %indvar789, %i.ts
  %i.uc = mul i64 %i.ti, %indvar789
  %i.ud = mul i64 %indvar789, %i.tk
  %i.ue = mul i64 %indvar789, %i.tq
  %i.uf = add i64 %i.ue, %i.to
  %i.ug = mul i64 %indvar789, %i.td
  %i.uh = mul i64 %indvar789, %i.tg
  %i.ui = add i64 %i.uh, %i.te
  %i.uj = mul i64 %indvar789, %i.tc
  %i.uk = mul i64 %i.sq, %indvar789
  %i.ul = mul i64 %indvar789, %i.sr
  %i.um = mul i64 %indvar789, %i.sx
  %i.un = add i64 %i.um, %i.sv
  %i.uo = mul i64 %i.ta, %indvar789               ; 2 uses
  %i.up = mul i32 %indvar781, %i.sn
  %i.uq = mul i32 %i.so, %indvar781
  %i.ur = add i32 %i.sl, %i.uq
  %i.us = load i32, ptr %1, align 4, !tbaa !8     ; 3 uses
  %i.ut = sub i32 %i.us, %.1390505                ; 2 uses
  %i.uu = add nsw i32 %i.ut, 1                    ; 2 uses
  store i32 %i.uu, ptr %i.c, align 4, !tbaa !8
  %i.uv = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.uu) ; 3 uses
  store i32 %i.uv, ptr %i.f, align 4, !tbaa !8
  %.not418484 = icmp sgt i32 %.1390505, %i.us
  br i1 %.not418484, label %._crit_edge488, label %.lr.ph487.preheader

.lr.ph487.preheader:                              ; preds = %bb.am
  %i.uw = zext nneg i32 %.1390505 to i64
  %i.ux = shl nuw nsw i64 %i.uw, 3
  %scevgep543 = getelementptr i8, ptr %i.h, i64 %i.ux
  %i.uy = zext i32 %i.ut to i64
  %i.uz = shl nuw nsw i64 %i.uy, 3
  %i.va = add nuw nsw i64 %i.uz, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep543, i8 0, i64 %i.va, i1 false), !tbaa !16
  br label %._crit_edge488

._crit_edge488:                                   ; preds = %.lr.ph487.preheader, %bb.am
  %i.vb = add nsw i32 %.1390505, -1
  %i.vc = add i32 %i.vb, %i.uv                    ; 2 uses
  store i32 %i.vc, ptr %i.b, align 4, !tbaa !8
  %.not419495 = icmp sgt i32 %.1390505, %i.vc
  br i1 %.not419495, label %._crit_edge501, label %.lr.ph500

.lr.ph500:                                        ; preds = %._crit_edge488
  %i.vd = mul nsw i32 %.1390505, %i.j
  %i.ve = zext nneg i32 %.1390505 to i64          ; 2 uses
  %i.vf = sext i32 %i.vd to i64                   ; 2 uses
  %invariant.gep634 = getelementptr [8 x i8], ptr %i.l, i64 %i.vf
  %invariant.gep636 = getelementptr [8 x i8], ptr %i.l, i64 %i.vf
  %i.vg = getelementptr i8, ptr %7, i64 %i.uc
  %i.vh = getelementptr i8, ptr %7, i64 %i.uk
  %i.vi = getelementptr i8, ptr %i.tu, i64 %i.uo
  %i.vj = getelementptr i8, ptr %i.tw, i64 %i.uo
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph500, %bb.au
  %indvar791 = phi i64 [ 0, %.lr.ph500 ], [ %indvar.next792, %bb.au ] ; 12 uses
  %indvar783 = phi i32 [ 0, %.lr.ph500 ], [ %indvar.next784, %bb.au ] ; 3 uses
  %indvars.iv547 = phi i64 [ %i.ve, %.lr.ph500 ], [ %indvars.iv.next548.pre-phi, %bb.au ] ; 35 uses
  %.6498 = phi i32 [ %.5506, %.lr.ph500 ], [ %.7, %bb.au ]
  %i.vk = xor i64 %indvar791, -1
  %i.vl = add i64 %i.ub, %i.vk
  %i.vm = trunc i64 %i.vl to i32
  %i.vn = shl nuw nsw i64 %indvar791, 3
  %scevgep858 = getelementptr i8, ptr %i.vg, i64 %i.vn ; 2 uses
  %11 = shl i64 %indvars.iv547, 3
  %scevgep860 = getelementptr i8, ptr %7, i64 %11 ; 2 uses
  %i.vo = xor i64 %indvar791, -1
  %i.vp = add i64 %i.ud, %i.vo
  %i.vq = trunc i64 %i.vp to i32
  %i.vr = mul i64 %indvar791, %i.to
  %i.vs = add i64 %i.uf, %i.vr
  %sext935 = shl i64 %i.vs, 32
  %i.vt = ashr exact i64 %sext935, 29             ; 2 uses
  %scevgep865 = getelementptr i8, ptr %scevgep864, i64 %i.vt ; 4 uses
  %i.vu = xor i64 %indvar791, -1
  %i.vv = add i64 %i.ug, %i.vu
  %i.vw = trunc i64 %i.vv to i32
  %i.vx = mul i64 %indvar791, %i.te
  %i.vy = add i64 %i.ui, %i.vx
  %i.vz = trunc i64 %i.vy to i32                  ; 4 uses
  %i.wa = xor i64 %indvar791, -1
  %i.wb = add i64 %i.uj, %i.wa
  %i.wc = trunc i64 %i.wb to i32
  %i.wd = shl nuw nsw i64 %indvar791, 3
  %scevgep793 = getelementptr i8, ptr %i.vh, i64 %i.wd ; 4 uses
  %12 = shl i64 %indvars.iv547, 3
  %scevgep794 = getelementptr i8, ptr %7, i64 %12 ; 2 uses
  %i.we = xor i64 %indvar791, -1
  %i.wf = add i64 %i.ul, %i.we
  %i.wg = trunc i64 %i.wf to i32
  %i.wh = mul i64 %indvar791, %i.sv
  %i.wi = add i64 %i.un, %i.wh
  %sext936 = shl i64 %i.wi, 32
  %i.wj = ashr exact i64 %sext936, 29             ; 2 uses
  %scevgep801 = getelementptr i8, ptr %scevgep800, i64 %i.wj ; 4 uses
  %i.wk = mul i64 %i.sz, %indvar791               ; 2 uses
  %scevgep805 = getelementptr i8, ptr %i.vi, i64 %i.wk ; 2 uses
  %scevgep806 = getelementptr i8, ptr %i.vj, i64 %i.wk
  %i.wl = xor i32 %indvar783, -1
  %i.wm = add i32 %i.up, %i.wl
  %i.wn = mul i32 %i.sl, %indvar783
  %i.wo = add i32 %i.ur, %i.wn                    ; 4 uses
  %i.wp = load i32, ptr %1, align 4, !tbaa !8     ; 16 uses
  store i32 %i.wp, ptr %i.c, align 4, !tbaa !8
  %i.wq = sext i32 %i.wp to i64                   ; 5 uses
  %.not421489 = icmp sgt i64 %indvars.iv547, %i.wq
  br i1 %.not421489, label %._crit_edge493, label %.lr.ph492

.lr.ph492:                                        ; preds = %bb.an
  %i.wr = icmp sgt i64 %indvars.iv547, %i.ve
  %i.ws = add i32 %i.wp, 1                        ; 2 uses
  br i1 %i.wr, label %.lr.ph492.split.us.preheader, label %iter.check912

iter.check912:                                    ; preds = %.lr.ph492
  %invariant.gep626 = getelementptr [8 x i8], ptr %i.h, i64 %i.wq ; 7 uses
  %i.wt = add i32 %i.wp, %i.vm                    ; 3 uses
  %i.wu = zext i32 %i.wt to i64
  %i.wv = add nuw nsw i64 %i.wu, 1                ; 5 uses
  %min.iters.check878 = icmp ult i32 %i.wt, 3
  br i1 %min.iters.check878, label %.lr.ph492.split.preheader, label %vector.scevcheck853

vector.scevcheck853:                              ; preds = %iter.check912
  %i.ww = add i32 %i.wp, %i.vw
  %mul854 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ty, i32 %i.ww) ; 2 uses
  %mul.result855 = extractvalue { i32, i1 } %mul854, 0 ; 2 uses
  %mul.overflow856 = extractvalue { i32, i1 } %mul854, 1
  %i.wx = add i32 %mul.result855, %i.vz
  %i.wy = sub i32 %i.vz, %mul.result855
  %i.wz = icmp slt i32 %i.wx, %i.vz
  %i.xa = icmp sgt i32 %i.wy, %i.vz
  %i.xb = select i1 %i.tx, i1 %i.xa, i1 %i.wz
  %i.xc = or i1 %i.xb, %mul.overflow856
  br i1 %i.xc, label %.lr.ph492.split.preheader, label %vector.memcheck857

vector.memcheck857:                               ; preds = %vector.scevcheck853
  %i.xd = shl nsw i64 %i.wq, 3                    ; 2 uses
  %scevgep859 = getelementptr i8, ptr %scevgep858, i64 %i.xd ; 2 uses
  %i.xe = add i32 %i.wp, %i.vq
  %i.xf = zext i32 %i.xe to i64                   ; 2 uses
  %i.xg = shl nuw nsw i64 %i.xf, 3                ; 2 uses
  %i.xh = getelementptr i8, ptr %scevgep860, i64 %i.xd
  %scevgep861 = getelementptr i8, ptr %i.xh, i64 %i.xg ; 2 uses
  %i.xi = mul i64 %i.tn, %i.xf
  %i.xj = getelementptr i8, ptr %scevgep862, i64 %i.xi
  %scevgep863 = getelementptr i8, ptr %i.xj, i64 %i.vt ; 4 uses
  %i.xk = icmp ult ptr %scevgep863, %scevgep865
  %umin866 = select i1 %i.xk, ptr %scevgep863, ptr %scevgep865
  %i.xl = icmp ugt ptr %scevgep863, %scevgep865
  %umax867 = select i1 %i.xl, ptr %scevgep863, ptr %scevgep865
  %scevgep868 = getelementptr i8, ptr %umax867, i64 8
  %scevgep869 = getelementptr i8, ptr %scevgep860, i64 %i.xg
  %bound0870 = icmp ult ptr %scevgep859, %scevgep868
  %bound1871 = icmp ult ptr %umin866, %scevgep861
  %found.conflict872 = and i1 %bound0870, %bound1871
  %bound0873 = icmp ult ptr %scevgep859, %scevgep869
  %bound1874 = icmp ult ptr %scevgep858, %scevgep861
  %found.conflict875 = and i1 %bound0873, %bound1874
  %conflict.rdx876 = or i1 %found.conflict872, %found.conflict875
  br i1 %conflict.rdx876, label %.lr.ph492.split.preheader, label %vector.main.loop.iter.check879

vector.main.loop.iter.check879:                   ; preds = %vector.memcheck857
  %min.iters.check880 = icmp ult i32 %i.wt, 15
  br i1 %min.iters.check880, label %vec.epilog.ph916, label %vector.ph881

vector.ph881:                                     ; preds = %vector.main.loop.iter.check879
  %i.xm = and i64 %i.wv, 12
  %n.vec882 = and i64 %i.wv, 8589934576           ; 4 uses
  %i.xn = add i64 %indvars.iv547, %n.vec882       ; 2 uses
  %i.xo = trunc i64 %indvars.iv547 to i32
  %broadcast.splatinsert885 = insertelement <4 x i32> poison, i32 %i.xo, i64 0
  %broadcast.splat886 = shufflevector <4 x i32> %broadcast.splatinsert885, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction887 = add <4 x i32> %broadcast.splat886, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body888

vector.body888:                                   ; preds = %vector.body888, %vector.ph881
  %index889 = phi i64 [ 0, %vector.ph881 ], [ %index.next906, %vector.body888 ] ; 2 uses
  %vec.ind890 = phi <4 x i32> [ %induction887, %vector.ph881 ], [ %vec.ind.next907, %vector.body888 ] ; 5 uses
  %step.add891 = add <4 x i32> %vec.ind890, splat (i32 4)
  %step.add.2892 = add <4 x i32> %vec.ind890, splat (i32 8)
  %step.add.3893 = add <4 x i32> %vec.ind890, splat (i32 12)
  %i.xp = add i64 %indvars.iv547, %index889       ; 2 uses
  %i.xq = mul <4 x i32> %broadcast.splat884, %vec.ind890
  %i.xr = mul <4 x i32> %broadcast.splat884, %step.add891
  %i.xs = mul <4 x i32> %broadcast.splat884, %step.add.2892
  %i.xt = mul <4 x i32> %broadcast.splat884, %step.add.3893
  %i.xu = sext <4 x i32> %i.xq to <4 x i64>
  %i.xv = sext <4 x i32> %i.xr to <4 x i64>
  %i.xw = sext <4 x i32> %i.xs to <4 x i64>
  %i.xx = sext <4 x i32> %i.xt to <4 x i64>
  %wide.gep894 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.xu
  %wide.gep895 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.xv
  %wide.gep896 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.xw
  %wide.gep897 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.xx
  %wide.masked.gather898 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep894, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !51
  %wide.masked.gather899 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep895, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !51
  %wide.masked.gather900 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep896, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !51
  %wide.masked.gather901 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep897, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !51
  %i.xy = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.xp ; 4 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 32
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xy, i64 64
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xy, i64 96
  %wide.load902 = load <4 x double>, ptr %i.xy, align 8, !tbaa !16, !alias.scope !54
  %wide.load903 = load <4 x double>, ptr %i.xz, align 8, !tbaa !16, !alias.scope !54
  %wide.load904 = load <4 x double>, ptr %i.ya, align 8, !tbaa !16, !alias.scope !54
  %wide.load905 = load <4 x double>, ptr %i.yb, align 8, !tbaa !16, !alias.scope !54
  %i.yc = fsub <4 x double> %wide.masked.gather898, %wide.load902
  %i.yd = fsub <4 x double> %wide.masked.gather899, %wide.load903
  %i.ye = fsub <4 x double> %wide.masked.gather900, %wide.load904
  %i.yf = fsub <4 x double> %wide.masked.gather901, %wide.load905
  %i.yg = getelementptr [8 x i8], ptr %invariant.gep626, i64 %i.xp ; 4 uses
  %i.yh = getelementptr i8, ptr %i.yg, i64 32
  %i.yi = getelementptr i8, ptr %i.yg, i64 64
  %i.yj = getelementptr i8, ptr %i.yg, i64 96
  store <4 x double> %i.yc, ptr %i.yg, align 8, !tbaa !16, !alias.scope !56, !noalias !58
  store <4 x double> %i.yd, ptr %i.yh, align 8, !tbaa !16, !alias.scope !56, !noalias !58
  store <4 x double> %i.ye, ptr %i.yi, align 8, !tbaa !16, !alias.scope !56, !noalias !58
  store <4 x double> %i.yf, ptr %i.yj, align 8, !tbaa !16, !alias.scope !56, !noalias !58
  %index.next906 = add nuw i64 %index889, 16      ; 2 uses
  %vec.ind.next907 = add <4 x i32> %vec.ind890, splat (i32 16)
  %i.yk = icmp eq i64 %index.next906, %n.vec882
  br i1 %i.yk, label %middle.block908, label %vector.body888, !llvm.loop !59

middle.block908:                                  ; preds = %vector.body888
  %cmp.n909 = icmp eq i64 %i.wv, %n.vec882
  br i1 %cmp.n909, label %._crit_edge493, label %vec.epilog.iter.check914

vec.epilog.iter.check914:                         ; preds = %middle.block908
  %min.epilog.iters.check915 = icmp eq i64 %i.xm, 0
  br i1 %min.epilog.iters.check915, label %.lr.ph492.split.preheader, label %vec.epilog.ph916, !prof !30

vec.epilog.ph916:                                 ; preds = %vector.main.loop.iter.check879, %vec.epilog.iter.check914
  %vec.epilog.resume.val910 = phi i64 [ %n.vec882, %vec.epilog.iter.check914 ], [ 0, %vector.main.loop.iter.check879 ]
  %bc.resume.val911 = phi i64 [ %i.xn, %vec.epilog.iter.check914 ], [ %indvars.iv547, %vector.main.loop.iter.check879 ]
  %n.vec917 = and i64 %i.wv, 8589934588           ; 3 uses
  %i.yl = add i64 %indvars.iv547, %n.vec917
  %i.ym = trunc i64 %bc.resume.val911 to i32
  %broadcast.splatinsert920 = insertelement <4 x i32> poison, i32 %i.ym, i64 0
  %broadcast.splat921 = shufflevector <4 x i32> %broadcast.splatinsert920, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction922 = add <4 x i32> %broadcast.splat921, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body923

vec.epilog.vector.body923:                        ; preds = %vec.epilog.vector.body923, %vec.epilog.ph916
  %index924 = phi i64 [ %vec.epilog.resume.val910, %vec.epilog.ph916 ], [ %index.next929, %vec.epilog.vector.body923 ] ; 2 uses
  %vec.ind925 = phi <4 x i32> [ %induction922, %vec.epilog.ph916 ], [ %vec.ind.next930, %vec.epilog.vector.body923 ] ; 2 uses
  %i.yn = add i64 %indvars.iv547, %index924       ; 2 uses
  %i.yo = mul <4 x i32> %broadcast.splat919, %vec.ind925
  %i.yp = sext <4 x i32> %i.yo to <4 x i64>
  %wide.gep926 = getelementptr inbounds [8 x i8], ptr %i.l, <4 x i64> %i.yp
  %wide.masked.gather927 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep926, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16, !alias.scope !51
  %i.yq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.yn
  %wide.load928 = load <4 x double>, ptr %i.yq, align 8, !tbaa !16, !alias.scope !54
  %i.yr = fsub <4 x double> %wide.masked.gather927, %wide.load928
  %i.ys = getelementptr [8 x i8], ptr %invariant.gep626, i64 %i.yn
  store <4 x double> %i.yr, ptr %i.ys, align 8, !tbaa !16, !alias.scope !56, !noalias !58
  %index.next929 = add nuw i64 %index924, 4       ; 2 uses
  %vec.ind.next930 = add <4 x i32> %vec.ind925, splat (i32 4)
  %i.yt = icmp eq i64 %index.next929, %n.vec917
  br i1 %i.yt, label %vec.epilog.middle.block931, label %vec.epilog.vector.body923, !llvm.loop !60

vec.epilog.middle.block931:                       ; preds = %vec.epilog.vector.body923
  %cmp.n932 = icmp eq i64 %i.wv, %n.vec917
  br i1 %cmp.n932, label %._crit_edge493, label %.lr.ph492.split.preheader

.lr.ph492.split.preheader:                        ; preds = %vector.memcheck857, %vector.scevcheck853, %iter.check912, %vec.epilog.iter.check914, %vec.epilog.middle.block931
  %indvars.iv549.ph = phi i64 [ %indvars.iv547, %iter.check912 ], [ %indvars.iv547, %vector.scevcheck853 ], [ %indvars.iv547, %vector.memcheck857 ], [ %i.xn, %vec.epilog.iter.check914 ], [ %i.yl, %vec.epilog.middle.block931 ] ; 3 uses
  %i.yu = add i32 %i.wp, 1
  %i.yv = trunc i64 %indvars.iv549.ph to i32      ; 2 uses
  %i.yw = sub i32 %i.yu, %i.yv
  %i.yx = sub i32 %i.wp, %i.yv
  %xtraiter964 = and i32 %i.yw, 3                 ; 2 uses
  %lcmp.mod965.not = icmp eq i32 %xtraiter964, 0
  br i1 %lcmp.mod965.not, label %.lr.ph492.split.prol.loopexit, label %.lr.ph492.split.prol

.lr.ph492.split.prol:                             ; preds = %.lr.ph492.split.preheader, %.lr.ph492.split.prol
  %indvars.iv549.prol = phi i64 [ %indvars.iv.next550.prol, %.lr.ph492.split.prol ], [ %indvars.iv549.ph, %.lr.ph492.split.preheader ] ; 4 uses
  %prol.iter966 = phi i32 [ %prol.iter966.next, %.lr.ph492.split.prol ], [ 0, %.lr.ph492.split.preheader ]
  %i.yy = trunc nsw i64 %indvars.iv549.prol to i32
  %i.yz = mul i32 %i.sl, %i.yy
  %i.za = sext i32 %i.yz to i64
  %i.zb = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.za
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !16
  %i.zd = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv549.prol
  %i.ze = load double, ptr %i.zd, align 8, !tbaa !16
  %i.zf = fsub double %i.zc, %i.ze
  %gep627.prol = getelementptr [8 x i8], ptr %invariant.gep626, i64 %indvars.iv549.prol
  store double %i.zf, ptr %gep627.prol, align 8, !tbaa !16
  %indvars.iv.next550.prol = add nsw i64 %indvars.iv549.prol, 1 ; 2 uses
end_hunk_1
begin_hunk_2_@dpstrf_:bb.a
  %i.aek = getelementptr i8, ptr %i.aej, i64 -8
  %i.ael = load double, ptr %i.aek, align 8, !tbaa !16 ; 2 uses
  %wide.trip.count.i436 = sext i32 %i.aeh to i64  ; 3 uses
  %i.aem = sub nsw i64 %wide.trip.count.i436, %i.aei
  %xtraiter970 = and i64 %i.aem, 7                ; 2 uses
  %lcmp.mod971.not = icmp eq i64 %xtraiter970, 0
  br i1 %lcmp.mod971.not, label %.lr.ph.i437.prol.loopexit, label %.lr.ph.i437.prol

.lr.ph.i437.prol:                                 ; preds = %.lr.ph.preheader.i435, %.lr.ph.i437.prol
  %indvars.iv.i438.prol = phi i64 [ %indvars.iv.next.i441.prol, %.lr.ph.i437.prol ], [ %i.aei, %.lr.ph.preheader.i435 ] ; 2 uses
  %.04.i439.prol = phi i32 [ %.1.i443.prol, %.lr.ph.i437.prol ], [ %i.aeg, %.lr.ph.preheader.i435 ]
  %.0152.i440.prol = phi double [ %.116.i442.prol, %.lr.ph.i437.prol ], [ %i.ael, %.lr.ph.preheader.i435 ] ; 2 uses
  %prol.iter972 = phi i64 [ %prol.iter972.next, %.lr.ph.i437.prol ], [ 0, %.lr.ph.preheader.i435 ]
  %indvars.iv.next.i441.prol = add nsw i64 %indvars.iv.i438.prol, 1 ; 3 uses
  %i.aen = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.i438.prol
  %i.aeo = load double, ptr %i.aen, align 8, !tbaa !16 ; 2 uses
  %i.aep = fcmp ogt double %i.aeo, %.0152.i440.prol ; 2 uses
  %.116.i442.prol = select i1 %i.aep, double %i.aeo, double %.0152.i440.prol ; 2 uses
  %i.aeq = trunc nsw i64 %indvars.iv.next.i441.prol to i32
  %.1.i443.prol = select i1 %i.aep, i32 %i.aeq, i32 %.04.i439.prol ; 3 uses
  %prol.iter972.next = add i64 %prol.iter972, 1   ; 2 uses
  %prol.iter972.cmp.not = icmp eq i64 %prol.iter972.next, %xtraiter970
  br i1 %prol.iter972.cmp.not, label %.lr.ph.i437.prol.loopexit, label %.lr.ph.i437.prol, !llvm.loop !77

.lr.ph.i437.prol.loopexit:                        ; preds = %.lr.ph.i437.prol, %.lr.ph.preheader.i435
  %.1.i443.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i435 ], [ %.1.i443.prol, %.lr.ph.i437.prol ]
  %indvars.iv.i438.unr = phi i64 [ %i.aei, %.lr.ph.preheader.i435 ], [ %indvars.iv.next.i441.prol, %.lr.ph.i437.prol ]
  %.04.i439.unr = phi i32 [ %i.aeg, %.lr.ph.preheader.i435 ], [ %.1.i443.prol, %.lr.ph.i437.prol ]
  %.0152.i440.unr = phi double [ %i.ael, %.lr.ph.preheader.i435 ], [ %.116.i442.prol, %.lr.ph.i437.prol ]
  %i.aer = sub nsw i64 %i.aei, %wide.trip.count.i436
  %i.aes = icmp ugt i64 %i.aer, -8
  br i1 %i.aes, label %dmaxloc_.exit445, label %.lr.ph.i437

.lr.ph.i437:                                      ; preds = %.lr.ph.i437.prol.loopexit, %.lr.ph.i437
  %indvars.iv.i438 = phi i64 [ %indvars.iv.next.i441.7, %.lr.ph.i437 ], [ %indvars.iv.i438.unr, %.lr.ph.i437.prol.loopexit ] ; 9 uses
  %.04.i439 = phi i32 [ %.1.i443.7, %.lr.ph.i437 ], [ %.04.i439.unr, %.lr.ph.i437.prol.loopexit ]
  %.0152.i440 = phi double [ %.116.i442.7, %.lr.ph.i437 ], [ %.0152.i440.unr, %.lr.ph.i437.prol.loopexit ] ; 2 uses
  %indvars.iv.next.i441 = add nsw i64 %indvars.iv.i438, 1 ; 2 uses
  %i.aet = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.i438
  %i.aeu = load double, ptr %i.aet, align 8, !tbaa !16 ; 2 uses
  %i.aev = fcmp ogt double %i.aeu, %.0152.i440    ; 2 uses
  %.116.i442 = select i1 %i.aev, double %i.aeu, double %.0152.i440 ; 2 uses
  %i.aew = trunc nsw i64 %indvars.iv.next.i441 to i32
  %.1.i443 = select i1 %i.aev, i32 %i.aew, i32 %.04.i439
  %indvars.iv.next.i441.1 = add nsw i64 %indvars.iv.i438, 2 ; 2 uses
  %i.aex = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i441
  %i.aey = load double, ptr %i.aex, align 8, !tbaa !16 ; 2 uses
  %i.aez = fcmp ogt double %i.aey, %.116.i442     ; 2 uses
  %.116.i442.1 = select i1 %i.aez, double %i.aey, double %.116.i442 ; 2 uses
  %i.afa = trunc nsw i64 %indvars.iv.next.i441.1 to i32
  %.1.i443.1 = select i1 %i.aez, i32 %i.afa, i32 %.1.i443
  %indvars.iv.next.i441.2 = add nsw i64 %indvars.iv.i438, 3 ; 2 uses
  %i.afb = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i441.1
  %i.afc = load double, ptr %i.afb, align 8, !tbaa !16 ; 2 uses
  %i.afd = fcmp ogt double %i.afc, %.116.i442.1   ; 2 uses
  %.116.i442.2 = select i1 %i.afd, double %i.afc, double %.116.i442.1 ; 2 uses
  %i.afe = trunc nsw i64 %indvars.iv.next.i441.2 to i32
  %.1.i443.2 = select i1 %i.afd, i32 %i.afe, i32 %.1.i443.1
  %indvars.iv.next.i441.3 = add nsw i64 %indvars.iv.i438, 4 ; 2 uses
  %i.aff = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i441.2
  %i.afg = load double, ptr %i.aff, align 8, !tbaa !16 ; 2 uses
  %i.afh = fcmp ogt double %i.afg, %.116.i442.2   ; 2 uses
  %.116.i442.3 = select i1 %i.afh, double %i.afg, double %.116.i442.2 ; 2 uses
  %i.afi = trunc nsw i64 %indvars.iv.next.i441.3 to i32
  %.1.i443.3 = select i1 %i.afh, i32 %i.afi, i32 %.1.i443.2
  %indvars.iv.next.i441.4 = add nsw i64 %indvars.iv.i438, 5 ; 2 uses
  %i.afj = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i441.3
  %i.afk = load double, ptr %i.afj, align 8, !tbaa !16 ; 2 uses
  %i.afl = fcmp ogt double %i.afk, %.116.i442.3   ; 2 uses
  %.116.i442.4 = select i1 %i.afl, double %i.afk, double %.116.i442.3 ; 2 uses
  %i.afm = trunc nsw i64 %indvars.iv.next.i441.4 to i32
  %.1.i443.4 = select i1 %i.afl, i32 %i.afm, i32 %.1.i443.3
  %indvars.iv.next.i441.5 = add nsw i64 %indvars.iv.i438, 6 ; 2 uses
  %i.afn = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i441.4
  %i.afo = load double, ptr %i.afn, align 8, !tbaa !16 ; 2 uses
  %i.afp = fcmp ogt double %i.afo, %.116.i442.4   ; 2 uses
  %.116.i442.5 = select i1 %i.afp, double %i.afo, double %.116.i442.4 ; 2 uses
  %i.afq = trunc nsw i64 %indvars.iv.next.i441.5 to i32
  %.1.i443.5 = select i1 %i.afp, i32 %i.afq, i32 %.1.i443.4
  %indvars.iv.next.i441.6 = add nsw i64 %indvars.iv.i438, 7 ; 2 uses
  %i.afr = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i441.5
  %i.afs = load double, ptr %i.afr, align 8, !tbaa !16 ; 2 uses
  %i.aft = fcmp ogt double %i.afs, %.116.i442.5   ; 2 uses
  %.116.i442.6 = select i1 %i.aft, double %i.afs, double %.116.i442.5 ; 2 uses
  %i.afu = trunc nsw i64 %indvars.iv.next.i441.6 to i32
  %.1.i443.6 = select i1 %i.aft, i32 %i.afu, i32 %.1.i443.5
  %indvars.iv.next.i441.7 = add nsw i64 %indvars.iv.i438, 8 ; 3 uses
  %i.afv = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next.i441.6
  %i.afw = load double, ptr %i.afv, align 8, !tbaa !16 ; 2 uses
  %i.afx = fcmp ogt double %i.afw, %.116.i442.6   ; 2 uses
  %.116.i442.7 = select i1 %i.afx, double %i.afw, double %.116.i442.6
  %i.afy = trunc nsw i64 %indvars.iv.next.i441.7 to i32
  %.1.i443.7 = select i1 %i.afx, i32 %i.afy, i32 %.1.i443.6 ; 2 uses
  %exitcond.not.i444.7 = icmp eq i64 %indvars.iv.next.i441.7, %wide.trip.count.i436
  br i1 %exitcond.not.i444.7, label %dmaxloc_.exit445, label %.lr.ph.i437, !llvm.loop !48

dmaxloc_.exit445:                                 ; preds = %.lr.ph.i437.prol.loopexit, %.lr.ph.i437, %bb.ao
  %.0.lcssa.i433 = phi i32 [ %i.aeg, %bb.ao ], [ %.1.i443.lcssa.unr, %.lr.ph.i437.prol.loopexit ], [ %.1.i443.7, %.lr.ph.i437 ]
  %reass.sub.i434 = sub i32 %.0.lcssa.i433, %i.aeg
  %i.afz = add i32 %reass.sub.i434, %i.aef        ; 2 uses
  %i.aga = add nsw i32 %i.afz, %i.wp
  %i.agb = sext i32 %i.aga to i64
  %i.agc = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.agb
  %i.agd = load double, ptr %i.agc, align 8, !tbaa !16 ; 3 uses
  store double %i.agd, ptr %i.g, align 8, !tbaa !16
  %i.age = fcmp ugt double %i.agd, %.0388
  br i1 %i.age, label %bb.ap, label %split565

bb.ap:                                            ; preds = %dmaxloc_.exit445
  %i.agf = call i32 @disnan_(ptr noundef nonnull %i.g) #8
  %.not422 = icmp eq i32 %i.agf, 0
  br i1 %.not422, label %._crit_edge493._crit_edge, label %._crit_edge564

._crit_edge564:                                   ; preds = %bb.ap
  %.pre566 = load double, ptr %i.g, align 8, !tbaa !16
  br label %split565

split565:                                         ; preds = %dmaxloc_.exit445, %._crit_edge564
  %i.agg = phi double [ %.pre566, %._crit_edge564 ], [ %i.agd, %dmaxloc_.exit445 ]
  %i.agh = mul i32 %i.sl, %i.aef
  br label %bb.ax

._crit_edge493._crit_edge:                        ; preds = %._crit_edge493, %bb.ap
  %.7 = phi i32 [ %i.afz, %bb.ap ], [ %.6498, %._crit_edge493 ] ; 11 uses
  %.not423 = icmp eq i32 %.7, %i.aef
  %.pre574 = mul nsw i64 %indvars.iv547, %i.sm    ; 4 uses
  %.pre576 = add nsw i64 %.pre574, %indvars.iv547 ; 2 uses
  br i1 %.not423, label %._crit_edge572, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge493._crit_edge
  %i.agi = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.pre576
  %i.agj = load double, ptr %i.agi, align 8, !tbaa !16
  %i.agk = mul nsw i32 %.7, %i.j                  ; 2 uses
  %i.agl = add nsw i32 %i.agk, %.7
  %i.agm = sext i32 %i.agl to i64
  %i.agn = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.agm
  store double %i.agj, ptr %i.agn, align 8, !tbaa !16
  %i.ago = trunc i64 %indvars.iv547 to i32
  %i.agp = add i32 %i.ago, -1
  store i32 %i.agp, ptr %i.c, align 4, !tbaa !8
  %gep633 = getelementptr [8 x i8], ptr %invariant.gep632, i64 %indvars.iv547
  %i.agq = add nsw i32 %.7, %i.j
  %i.agr = sext i32 %i.agq to i64
  %i.ags = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.agr
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef nonnull %gep633, ptr noundef nonnull %3, ptr noundef nonnull %i.ags, ptr noundef nonnull %3) #8
  %i.agt = load i32, ptr %1, align 4, !tbaa !8    ; 2 uses
  %i.agu = icmp slt i32 %.7, %i.agt
  br i1 %i.agu, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.agv = sub nsw i32 %i.agt, %.7
  store i32 %i.agv, ptr %i.c, align 4, !tbaa !8
  %i.agw = add nsw i32 %.7, 1                     ; 2 uses
  %i.agx = sext i32 %i.agw to i64
  %i.agy = getelementptr [8 x i8], ptr %i.l, i64 %.pre574
  %i.agz = getelementptr [8 x i8], ptr %i.agy, i64 %i.agx
  %i.aha = add nsw i32 %i.agw, %i.agk
  %i.ahb = sext i32 %i.aha to i64
  %i.ahc = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ahb
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.agz, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ahc, ptr noundef nonnull @c__1) #8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ahd = xor i32 %i.aef, -1
  %i.ahe = add i32 %.7, %i.ahd
  store i32 %i.ahe, ptr %i.c, align 4, !tbaa !8
  %i.ahf = add nsw i64 %indvars.iv547, 1          ; 2 uses
  %i.ahg = getelementptr [8 x i8], ptr %i.l, i64 %i.ahf
  %i.ahh = getelementptr [8 x i8], ptr %i.ahg, i64 %.pre574
  %i.ahi = mul nsw i64 %i.ahf, %i.sm
  %i.ahj = sext i32 %.7 to i64                    ; 3 uses
  %i.ahk = getelementptr [8 x i8], ptr %i.l, i64 %i.ahi
  %i.ahl = getelementptr [8 x i8], ptr %i.ahk, i64 %i.ahj
  call void @dswap_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ahh, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ahl, ptr noundef nonnull %3) #8
  %i.ahm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv547 ; 2 uses
  %i.ahn = load double, ptr %i.ahm, align 8, !tbaa !16
  %i.aho = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ahj ; 2 uses
  %i.ahp = load double, ptr %i.aho, align 8, !tbaa !16
  store double %i.ahp, ptr %i.ahm, align 8, !tbaa !16
  store double %i.ahn, ptr %i.aho, align 8, !tbaa !16
  %i.ahq = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ahj ; 2 uses
  %i.ahr = load i32, ptr %i.ahq, align 4, !tbaa !8
  %i.ahs = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv547 ; 2 uses
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !8
  store i32 %i.aht, ptr %i.ahq, align 4, !tbaa !8
  store i32 %i.ahr, ptr %i.ahs, align 4, !tbaa !8
  br label %._crit_edge572

._crit_edge572:                                   ; preds = %._crit_edge493._crit_edge, %bb.as
  %i.ahu = load double, ptr %i.g, align 8, !tbaa !16
  %i.ahv = call double @sqrt(double noundef %i.ahu) #8 ; 2 uses
  store double %i.ahv, ptr %i.g, align 8, !tbaa !16
  %i.ahw = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.pre576
  store double %i.ahv, ptr %i.ahw, align 8, !tbaa !16
  %i.ahx = load i32, ptr %1, align 4, !tbaa !8    ; 2 uses
  %i.ahy = sext i32 %i.ahx to i64
  %i.ahz = icmp slt i64 %indvars.iv547, %i.ahy
  br i1 %i.ahz, label %bb.at, label %._crit_edge571

._crit_edge571:                                   ; preds = %._crit_edge572
  %.pre578 = add nuw i64 %indvars.iv547, 1
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge572
  %i.aia = sub nsw i32 %i.ahx, %i.aef
  store i32 %i.aia, ptr %i.c, align 4, !tbaa !8
  %i.aib = trunc i64 %indvars.iv547 to i32
  %i.aic = sub i32 %i.aib, %.1390505
  store i32 %i.aic, ptr %i.d, align 4, !tbaa !8
  %i.aid = add nsw i64 %indvars.iv547, 1          ; 3 uses
  %gep635 = getelementptr [8 x i8], ptr %invariant.gep634, i64 %i.aid
  %gep637 = getelementptr [8 x i8], ptr %invariant.gep636, i64 %indvars.iv547
  %i.aie = getelementptr [8 x i8], ptr %i.l, i64 %i.aid
  %i.aif = getelementptr [8 x i8], ptr %i.aie, i64 %.pre574 ; 2 uses
  call void @dgemv_(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b23, ptr noundef nonnull %gep635, ptr noundef nonnull %3, ptr noundef nonnull %gep637, ptr noundef nonnull %3, ptr noundef nonnull @c_b25, ptr noundef nonnull %i.aif, ptr noundef nonnull @c__1) #8
  %i.aig = load i32, ptr %1, align 4, !tbaa !8
  %i.aih = sub nsw i32 %i.aig, %i.aef
  store i32 %i.aih, ptr %i.c, align 4, !tbaa !8
  %i.aii = load double, ptr %i.g, align 8, !tbaa !16
  %i.aij = fdiv double 1.000000e+00, %i.aii
  store double %i.aij, ptr %i.e, align 8, !tbaa !16
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.aif, ptr noundef nonnull @c__1) #8
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge571, %bb.at
  %indvars.iv.next548.pre-phi = phi i64 [ %.pre578, %._crit_edge571 ], [ %i.aid, %bb.at ] ; 2 uses
  %i.aik = load i32, ptr %i.b, align 4, !tbaa !8
  %i.ail = sext i32 %i.aik to i64
  %.not419.not = icmp slt i64 %indvars.iv547, %i.ail
  %indvar.next784 = add i32 %indvar783, 1
  %indvar.next792 = add i64 %indvar791, 1
  br i1 %.not419.not, label %bb.an, label %._crit_edge501.loopexit, !llvm.loop !78

._crit_edge501.loopexit:                          ; preds = %bb.au
  %i.aim = trunc nsw i64 %indvars.iv.next548.pre-phi to i32
  %.pre567 = load i32, ptr %i.f, align 4, !tbaa !8
  %.pre568 = load i32, ptr %1, align 4, !tbaa !8
  br label %._crit_edge501

._crit_edge501:                                   ; preds = %._crit_edge501.loopexit, %._crit_edge488
  %i.ain = phi i32 [ %i.us, %._crit_edge488 ], [ %.pre568, %._crit_edge501.loopexit ] ; 2 uses
  %i.aio = phi i32 [ %i.uv, %._crit_edge488 ], [ %.pre567, %._crit_edge501.loopexit ]
  %.1392.lcssa = phi i32 [ %.1390505, %._crit_edge488 ], [ %i.aim, %._crit_edge501.loopexit ] ; 3 uses
  %.6.lcssa = phi i32 [ %.5506, %._crit_edge488 ], [ %.7, %._crit_edge501.loopexit ]
  %i.aip = add nsw i32 %i.aio, %.1390505
  %.not420 = icmp sgt i32 %i.aip, %i.ain
  br i1 %.not420, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %._crit_edge501
  %reass.sub509 = sub i32 %i.ain, %.1392.lcssa
  %i.aiq = add i32 %reass.sub509, 1
  store i32 %i.aiq, ptr %i.b, align 4, !tbaa !8
  %i.air = mul nsw i32 %.1390505, %i.j
  %i.ais = add nsw i32 %.1392.lcssa, %i.air
  %i.ait = sext i32 %i.ais to i64
  %i.aiu = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ait
  %i.aiv = mul i32 %.1392.lcssa, %i.sl
  %i.aiw = sext i32 %i.aiv to i64
  %i.aix = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aiw
  call void @dsyrk_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b23, ptr noundef nonnull %i.aiu, ptr noundef nonnull %3, ptr noundef nonnull @c_b25, ptr noundef nonnull %i.aix, ptr noundef nonnull %3) #8
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge501, %bb.av
  %i.aiy = add nuw nsw i32 %i.w, %.1390505        ; 2 uses
  %.not608 = icmp sgt i32 %i.aiy, %i.ct
  %indvar.next782 = add i32 %indvar781, 1
  %indvar.next790 = add i64 %indvar789, 1
  br i1 %.not608, label %.loopexit, label %bb.am, !llvm.loop !79

.loopexit:                                        ; preds = %bb.ak, %bb.aw, %bb.aa, %bb.al
  %i.aiz = load i32, ptr %1, align 4, !tbaa !8
  store i32 %i.aiz, ptr %5, align 4, !tbaa !8
  br label %bb.ay

bb.ax:                                            ; preds = %split565, %split
  %.sink641 = phi i32 [ %i.agh, %split565 ], [ %i.pp, %split ]
  %.sink638 = phi double [ %i.agg, %split565 ], [ %i.po, %split ]
  %.2393 = phi i32 [ %i.aef, %split565 ], [ %i.nn, %split ]
  %i.aja = sext i32 %.sink641 to i64
  %i.ajb = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aja
  store double %.sink638, ptr %i.ajb, align 8, !tbaa !16
  %i.ajc = add nsw i32 %.2393, -1
  store i32 %i.ajc, ptr %5, align 4, !tbaa !8
  store i32 1, ptr %8, align 4, !tbaa !8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.i, %bb.w, %.loopexit, %bb.ax, %bb.f, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @dpstf2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @disnan_(ptr noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

declare void @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dsyrk_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"branch_weights", i32 8, i32 24}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !12, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !6, i64 0}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!25}
!25 = distinct !{!25, !23}
!26 = !{!27}
!27 = distinct !{!27, !23}
!28 = !{!22, !25}
!29 = distinct !{!29, !10, !11, !12}
!30 = !{!"branch_weights", i32 4, i32 12}
!31 = distinct !{!31, !10, !11, !12}
!32 = distinct !{!32, !20}
!33 = !{!34}
!34 = distinct !{!34, !35}
!35 = distinct !{!35, !"LVerDomain"}
!36 = !{!37}
end_hunk_2
