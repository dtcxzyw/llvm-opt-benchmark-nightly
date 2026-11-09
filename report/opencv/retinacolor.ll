Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/retinacolor?download=true
inline.NumInlined: 399
inline.NumDeleted: 59
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN2cv11bioinspired11RetinaColor33_interpolateSingleChannelImage111EPf:bb.a
  %i.di = fadd float %i.dd, %i.dh
  %i.dj = fdiv float %i.di, 3.000000e+00
  store float %i.dj, ptr %i.db, align 4, !tbaa !38
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !337

.lver.check:                                      ; preds = %.preheader.preheader, %._crit_edge36
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge36 ] ; 2 uses
  %.02937 = phi i32 [ 0, %.preheader.preheader ], [ %i.gd, %._crit_edge36 ] ; 9 uses
  %i.dk = sub i32 -2, %.02937
  %i.dl = icmp ult i32 %i.dk, %i.ca
  %i.dm = sub i32 -3, %.02937
  %i.dn = icmp ult i32 %i.dm, %i.ca
  %.reass83 = or i1 %i.dl, %invariant.op82
  %i.do = or i1 %i.dn, %.reass83
  br i1 %i.do, label %.ph.lver.orig.preheader, label %.ph

.ph.lver.orig.preheader:                          ; preds = %.lver.check
  br i1 %i.cd, label %.ph.lver.orig.epil.preheader, label %.ph.lver.orig

.ph.lver.orig:                                    ; preds = %.ph.lver.orig.preheader, %.ph.lver.orig
  %indvars.iv42.lver.orig = phi i64 [ %indvars.iv.next43.lver.orig.1, %.ph.lver.orig ], [ 1, %.ph.lver.orig.preheader ] ; 3 uses
  %niter81 = phi i64 [ %niter81.next.1, %.ph.lver.orig ], [ 0, %.ph.lver.orig.preheader ]
  %i.dp = trunc nuw i64 %indvars.iv42.lver.orig to i32
  %i.dq = mul i32 %.pre48, %i.dp
  %i.dr = add i32 %i.dq, %.02937                  ; 3 uses
  %i.ds = sub i32 %i.dr, %.pre48
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dt
  %i.dv = load float, ptr %i.du, align 4, !tbaa !38
  %i.dw = zext i32 %i.dr to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dw ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !38
  %i.dz = fadd float %i.dv, %i.dy
  %i.ea = add i32 %i.dr, %.pre48
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !38
  %i.ee = fadd float %i.dz, %i.ed
  %i.ef = fdiv float %i.ee, 3.000000e+00
  store float %i.ef, ptr %i.dx, align 4, !tbaa !38
  %i.eg = trunc i64 %indvars.iv42.lver.orig to i32
  %i.eh = add i32 %i.eg, 1
  %i.ei = mul i32 %i.eh, %.pre48
  %i.ej = add i32 %i.ei, %.02937                  ; 3 uses
  %i.ek = sub i32 %i.ej, %.pre48
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.el
  %i.en = load float, ptr %i.em, align 4, !tbaa !38
  %i.eo = zext i32 %i.ej to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eo ; 2 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !38
  %i.er = fadd float %i.en, %i.eq
  %i.es = add i32 %i.ej, %.pre48
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.et
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !38
  %i.ew = fadd float %i.er, %i.ev
  %i.ex = fdiv float %i.ew, 3.000000e+00
  store float %i.ex, ptr %i.ep, align 4, !tbaa !38
  %indvars.iv.next43.lver.orig.1 = add nuw nsw i64 %indvars.iv42.lver.orig, 2 ; 2 uses
  %niter81.next.1 = add nuw i64 %niter81, 2       ; 2 uses
  %niter81.ncmp.1 = icmp eq i64 %niter81.next.1, %unroll_iter80
  br i1 %niter81.ncmp.1, label %._crit_edge36.loopexit.unr-lcssa, label %.ph.lver.orig, !llvm.loop !3

.ph:                                              ; preds = %.lver.check
  %i.ey = shl nuw nsw i64 %indvar, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.ey
  %load_initial = load float, ptr %scevgep, align 4 ; 2 uses
  br i1 %i.cc, label %.epil.preheader, label %.ph.new

._crit_edge38.split:                              ; preds = %._crit_edge36, %.preheader.lr.ph, %.preheader31
  ret void

._crit_edge36.loopexit.unr-lcssa:                 ; preds = %.ph.lver.orig
  br i1 %lcmp.mod78.not, label %._crit_edge36, label %.ph.lver.orig.epil.preheader

.ph.lver.orig.epil.preheader:                     ; preds = %._crit_edge36.loopexit.unr-lcssa, %.ph.lver.orig.preheader
  %indvars.iv42.lver.orig.epil.init = phi i64 [ 1, %.ph.lver.orig.preheader ], [ %indvars.iv.next43.lver.orig.1, %._crit_edge36.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.ez = trunc nuw i64 %indvars.iv42.lver.orig.epil.init to i32
  %i.fa = mul i32 %.pre48, %i.ez
  %i.fb = add i32 %i.fa, %.02937                  ; 3 uses
  %i.fc = sub i32 %i.fb, %.pre48
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !38
  %i.fg = zext i32 %i.fb to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fg ; 2 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !38
  %i.fj = fadd float %i.ff, %i.fi
  %i.fk = add i32 %i.fb, %.pre48
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !38
  %i.fo = fadd float %i.fj, %i.fn
  %i.fp = fdiv float %i.fo, 3.000000e+00
  store float %i.fp, ptr %i.fh, align 4, !tbaa !38
  br label %._crit_edge36

._crit_edge36.loopexit73.unr-lcssa:               ; preds = %.ph.new
  br i1 %lcmp.mod75.not, label %._crit_edge36, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge36.loopexit73.unr-lcssa, %.ph
  %store_forwarded.epil.init = phi float [ %load_initial, %.ph ], [ %i.he, %._crit_edge36.loopexit73.unr-lcssa ]
  %indvars.iv42.epil.init = phi i64 [ 1, %.ph ], [ %indvars.iv.next43.1, %._crit_edge36.loopexit73.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.fq = trunc nuw i64 %indvars.iv42.epil.init to i32
  %i.fr = mul nuw i32 %.pre48, %i.fq
  %i.fs = add i32 %i.fr, %.02937                  ; 2 uses
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ft ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !38
  %i.fw = fadd float %store_forwarded.epil.init, %i.fv
  %i.fx = add i32 %i.fs, %.pre48
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fy
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !38
  %i.gb = fadd float %i.fw, %i.ga
  %i.gc = fdiv float %i.gb, 3.000000e+00
  store float %i.gc, ptr %i.fu, align 4, !tbaa !38
  br label %._crit_edge36

._crit_edge36:                                    ; preds = %.epil.preheader, %._crit_edge36.loopexit73.unr-lcssa, %.ph.lver.orig.epil.preheader, %._crit_edge36.loopexit.unr-lcssa
  %i.gd = add nuw i32 %.02937, 1                  ; 2 uses
  %exitcond47.not = icmp eq i32 %i.gd, %.pre48
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond47.not, label %._crit_edge38.split, label %.lver.check, !llvm.loop !4

.ph.new:                                          ; preds = %.ph, %.ph.new
  %store_forwarded = phi float [ %i.he, %.ph.new ], [ %load_initial, %.ph ]
  %indvars.iv42 = phi i64 [ %indvars.iv.next43.1, %.ph.new ], [ 1, %.ph ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.ph.new ], [ 0, %.ph ]
  %i.ge = trunc nuw i64 %indvars.iv42 to i32
  %i.gf = mul nuw i32 %.pre48, %i.ge
  %i.gg = add i32 %i.gf, %.02937                  ; 2 uses
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gh ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !38
  %i.gk = fadd float %store_forwarded, %i.gj
  %i.gl = add i32 %i.gg, %.pre48
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gm
  %i.go = load float, ptr %i.gn, align 4, !tbaa !38
  %i.gp = fadd float %i.gk, %i.go
  %i.gq = fdiv float %i.gp, 3.000000e+00          ; 2 uses
  store float %i.gq, ptr %i.gi, align 4, !tbaa !38
  %i.gr = trunc i64 %indvars.iv42 to i32
  %i.gs = add i32 %i.gr, 1
  %i.gt = mul nuw i32 %i.gs, %.pre48
  %i.gu = add i32 %i.gt, %.02937                  ; 2 uses
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gv ; 2 uses
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !38
  %i.gy = fadd float %i.gq, %i.gx
  %i.gz = add i32 %i.gu, %.pre48
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ha
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !38
  %i.hd = fadd float %i.gy, %i.hc
  %i.he = fdiv float %i.hd, 3.000000e+00          ; 3 uses
  store float %i.he, ptr %i.gw, align 4, !tbaa !38
  %indvars.iv.next43.1 = add nuw nsw i64 %indvars.iv42, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge36.loopexit73.unr-lcssa, label %.ph.new, !llvm.loop !3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv11bioinspired11RetinaColor28_interpolateBayerRGBchannelsEPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(349) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71
  %i.c = trunc i64 %i.b to i32
  %i.d = add i32 %i.c, -1                         ; 5 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge83.split, label %.preheader65.lr.ph

.preheader65.lr.ph:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  %i.g = trunc i64 %i.f to i32                    ; 6 uses
  %i.h = add i32 %i.g, -1                         ; 2 uses
  %i.i = icmp ugt i32 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8
  %i.l = trunc i64 %i.k to i32                    ; 7 uses
  br i1 %i.i, label %.preheader65.preheader, label %.preheader64

.preheader65.preheader:                           ; preds = %.preheader65.lr.ph
  %i.m = zext i32 %i.h to i64                     ; 4 uses
  %i.n = add nsw i64 %i.m, -2                     ; 3 uses
  %i.o = lshr i64 %i.n, 1
  %i.p = shl i32 %i.g, 1
  %i.q = add i32 %i.l, %i.g                       ; 3 uses
  %i.r = add i32 %i.q, 1                          ; 2 uses
  %i.s = add i32 %i.q, 3                          ; 2 uses
  %i.t = shl nuw nsw i64 %i.m, 2
  %i.u = and i64 %i.t, 17179869176                ; 2 uses
  %i.v = add nsw i64 %i.u, -4                     ; 4 uses
  %i.w = add i32 %i.l, %i.g
  %i.x = add i32 %i.w, 2
  %i.y = add nsw i64 %i.m, -2                     ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %i.aa = add nuw i64 %i.z, 1                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 48
  %i.ab = trunc i64 %i.o to i32                   ; 2 uses
  %mul.result = shl i32 %i.ab, 1                  ; 6 uses
  %mul.overflow = icmp slt i32 %i.ab, 0
  %i.ac = icmp ugt i64 %i.n, 8589934591
  %i.ad = icmp ugt i64 %i.n, 8589934591
  %invariant.op313 = or i1 %i.ad, %mul.overflow
  %i.ae = getelementptr i8, ptr %1, i64 %i.u
  %i.af = getelementptr i8, ptr %1, i64 %i.v
  %i.ag = getelementptr i8, ptr %1, i64 %i.v
  %i.ah = getelementptr i8, ptr %1, i64 %i.v
  %i.ai = getelementptr i8, ptr %1, i64 %i.v
  %i.aj = and i64 %i.aa, 3                        ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = select i1 %i.ak, i64 4, i64 %i.aj
  %n.vec = sub i64 %i.aa, %i.al                   ; 2 uses
  %i.am = shl i64 %n.vec, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %.preheader65

.preheader65:                                     ; preds = %.preheader65.preheader, %._crit_edge
  %indvar = phi i32 [ 0, %.preheader65.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.067 = phi i32 [ 0, %.preheader65.preheader ], [ %i.fa, %._crit_edge ] ; 3 uses
  %i.ao = mul i32 %.067, %i.g                     ; 10 uses
  %i.ap = or disjoint i32 %.067, 1
  %i.aq = mul i32 %i.ap, %i.g                     ; 3 uses
  %invariant.op = add i32 %i.aq, 1                ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.preheader65
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.preheader65 ], [ %i.an, %vector.body ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.preheader65
  %i.ar = mul i32 %i.p, %indvar                   ; 6 uses
  %i.as = add i32 %i.s, %i.ar
  %i.at = add i32 %i.r, %i.ar
  %i.au = xor i32 %i.ar, -2
  %i.av = icmp ult i32 %i.au, %mul.result
  %i.aw = add i32 %i.q, %i.ar
  %i.ax = sub i32 -3, %i.aw
  %i.ay = icmp ult i32 %i.ax, %mul.result
  %i.az = or i1 %i.ay, %i.ac
  %i.ba = xor i32 %i.ar, -1
  %i.bb = icmp ugt i32 %mul.result, %i.ba
  %.reass314 = or i1 %i.bb, %invariant.op313
  %i.bc = sub i32 -3, %i.ar
  %i.bd = icmp ult i32 %i.bc, %mul.result
  %i.be = xor i32 %i.at, -1
  %i.bf = icmp ugt i32 %mul.result, %i.be
  %i.bg = xor i32 %i.as, -1
  %i.bh = icmp ugt i32 %mul.result, %i.bg
  %i.bi = or i1 %i.az, %i.av
  %i.bj = or i1 %i.bi, %.reass314
  %i.bk = or i1 %i.bd, %i.bj
  %i.bl = or i1 %i.bf, %i.bk
  %i.bm = or i1 %i.bh, %i.bl
  br i1 %i.bm, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bn = zext i32 %i.ao to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2                ; 2 uses
  %i.bp = getelementptr i8, ptr %1, i64 %i.bo     ; 4 uses
  %i.bq = getelementptr i8, ptr %i.ae, i64 %i.bo  ; 4 uses
  %i.br = add i32 %i.x, %i.ao
  %i.bs = zext i32 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 2                ; 2 uses
  %i.bu = getelementptr i8, ptr %1, i64 %i.bt     ; 4 uses
  %i.bv = getelementptr i8, ptr %i.af, i64 %i.bt  ; 4 uses
  %i.bw = add i32 %i.ao, 2
  %i.bx = zext i32 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 2                ; 2 uses
  %i.bz = getelementptr i8, ptr %1, i64 %i.by     ; 2 uses
  %i.ca = getelementptr i8, ptr %i.ag, i64 %i.by  ; 2 uses
  %i.cb = add i32 %i.r, %i.ao
  %i.cc = zext i32 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 2                ; 2 uses
  %i.ce = getelementptr i8, ptr %1, i64 %i.cd     ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ah, i64 %i.cd  ; 2 uses
  %i.cg = add i32 %i.s, %i.ao
  %i.ch = zext i32 %i.cg to i64
  %i.ci = shl nuw nsw i64 %i.ch, 2                ; 2 uses
  %i.cj = getelementptr i8, ptr %1, i64 %i.ci     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ai, i64 %i.ci  ; 2 uses
  %bound0154.a = icmp ult ptr %i.bp, %i.bv
  %bound1155.a = icmp ult ptr %i.bu, %i.bq
  %found.conflict156.a = and i1 %bound0154.a, %bound1155.a
  %bound0158.a = icmp ult ptr %i.bp, %i.ca
  %bound1159.a = icmp ult ptr %i.bz, %i.bq
  %found.conflict160.a = and i1 %bound0158.a, %bound1159.a
  %conflict.rdx161.a = or i1 %found.conflict156.a, %found.conflict160.a
  %bound0162 = icmp ult ptr %i.bp, %i.cf
  %bound1163 = icmp ult ptr %i.ce, %i.bq
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx165 = or i1 %conflict.rdx161.a, %found.conflict164
  %bound0166 = icmp ult ptr %i.bp, %i.ck
  %bound1167 = icmp ult ptr %i.cj, %i.bq
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %conflict.rdx165, %found.conflict168
  %bound0170 = icmp ult ptr %i.bu, %i.ca
  %bound1171 = icmp ult ptr %i.bz, %i.bv
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  %bound0174 = icmp ult ptr %i.bu, %i.cf
  %bound1175 = icmp ult ptr %i.ce, %i.bv
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  %bound0178 = icmp ult ptr %i.bu, %i.ck
  %bound1179 = icmp ult ptr %i.cj, %i.bv
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %conflict.rdx177, %found.conflict180
  br i1 %conflict.rdx181, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %invariant.op307 = add i32 %i.l, %invariant.op
  %invariant.op309 = add i32 %i.l, %invariant.op
  %invariant.op311 = add i32 %i.l, %invariant.op
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %index.tr = trunc i64 %index to i32
  %i.cl = shl i32 %index.tr, 1                    ; 4 uses
  %i.cm = or disjoint i32 %i.cl, 1                ; 2 uses
  %i.cn = or disjoint i32 %i.cl, 3                ; 2 uses
  %i.co = or disjoint i32 %i.cl, 5                ; 2 uses
  %i.cp = or disjoint i32 %i.cl, 7                ; 2 uses
  %i.cq = add i32 %i.ao, %i.cm                    ; 3 uses
  %i.cr = add i32 %i.ao, %i.cn
  %i.cs = add i32 %i.ao, %i.co
  %i.ct = add i32 %i.ao, %i.cp
  %i.cu = add i32 %i.cm, %i.l                     ; 2 uses
  %i.cv = add i32 %i.cu, %invariant.op            ; 2 uses
  %.reass308 = add i32 %i.cn, %invariant.op307
  %.reass310 = add i32 %i.co, %invariant.op309
  %.reass312 = add i32 %i.cp, %invariant.op311
  %i.cw = add nsw i32 %i.cq, -1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cx
  %wide.vec = load <8 x float>, ptr %i.cy, align 4, !tbaa !38, !alias.scope !363, !noalias !364
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cz = add i32 %i.cq, 1
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.da
  %wide.vec182 = load <8 x float>, ptr %i.db, align 4, !tbaa !38, !alias.scope !365
  %strided.vec183 = shufflevector <8 x float> %wide.vec182, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.dc = fadd <4 x float> %strided.vec, %strided.vec183
  %i.dd = fmul <4 x float> %i.dc, splat (float 5.000000e-01) ; 4 uses
  %i.de = zext i32 %i.cq to i64
  %i.df = zext i32 %i.cr to i64
  %i.dg = zext i32 %i.cs to i64
  %i.dh = zext i32 %i.ct to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.df
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dg
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dh
  %i.dm = extractelement <4 x float> %i.dd, i64 0
  store float %i.dm, ptr %i.di, align 4, !tbaa !38, !alias.scope !363, !noalias !364
  %i.dn = extractelement <4 x float> %i.dd, i64 1
  store float %i.dn, ptr %i.dj, align 4, !tbaa !38, !alias.scope !363, !noalias !364
  %i.do = extractelement <4 x float> %i.dd, i64 2
  store float %i.do, ptr %i.dk, align 4, !tbaa !38, !alias.scope !363, !noalias !364
  %i.dp = extractelement <4 x float> %i.dd, i64 3
  store float %i.dp, ptr %i.dl, align 4, !tbaa !38, !alias.scope !363, !noalias !364
  %i.dq = add i32 %i.cu, %i.aq
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dr
  %wide.vec184 = load <8 x float>, ptr %i.ds, align 4, !tbaa !38, !alias.scope !366
  %strided.vec185 = shufflevector <8 x float> %wide.vec184, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.dt = add i32 %i.cv, 1
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.du
  %wide.vec186 = load <8 x float>, ptr %i.dv, align 4, !tbaa !38, !alias.scope !367
  %strided.vec187 = shufflevector <8 x float> %wide.vec186, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.dw = fadd <4 x float> %strided.vec185, %strided.vec187
  %i.dx = fmul <4 x float> %i.dw, splat (float 5.000000e-01) ; 4 uses
  %i.dy = zext i32 %i.cv to i64
  %i.dz = zext i32 %.reass308 to i64
  %i.ea = zext i32 %.reass310 to i64
  %i.eb = zext i32 %.reass312 to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dy
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dz
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ea
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eb
  %i.eg = extractelement <4 x float> %i.dx, i64 0
  store float %i.eg, ptr %i.ec, align 4, !tbaa !38, !alias.scope !368, !noalias !369
  %i.eh = extractelement <4 x float> %i.dx, i64 1
  store float %i.eh, ptr %i.ed, align 4, !tbaa !38, !alias.scope !368, !noalias !369
  %i.ei = extractelement <4 x float> %i.dx, i64 2
  store float %i.ei, ptr %i.ee, align 4, !tbaa !38, !alias.scope !368, !noalias !369
  %i.ej = extractelement <4 x float> %i.dx, i64 3
  store float %i.ej, ptr %i.ef, align 4, !tbaa !38, !alias.scope !368, !noalias !369
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %scalar.ph.preheader, label %vector.body, !llvm.loop !348

.preheader64:                                     ; preds = %._crit_edge, %.preheader65.lr.ph
  %.not101 = icmp eq i32 %i.d, 1
  br i1 %.not101, label %._crit_edge83.split, label %.preheader63.lr.ph

.preheader63.lr.ph:                               ; preds = %.preheader64
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.em = load i64, ptr %i.el, align 8, !tbaa !44 ; 3 uses
  %i.en = trunc i64 %i.em to i32                  ; 14 uses
  %.not84 = icmp eq i32 %i.en, 0
  br i1 %.not84, label %.preheader.lr.ph, label %.preheader63.lr.ph.split

.preheader63.lr.ph.split:                         ; preds = %.preheader63.lr.ph
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !70
  %i.eq = trunc i64 %i.ep to i32                  ; 3 uses
  %invariant.op75 = add i32 %i.eq, 1
  %wide.trip.count = and i64 %i.em, 4294967295    ; 4 uses
  %i.er = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.es = shl i32 %i.en, 1                        ; 2 uses
  %i.et = add i32 %i.eq, %i.en
  %i.eu = add i32 %i.et, 1                        ; 2 uses
  %i.ev = mul i32 %i.en, 3
  %i.ew = add i32 %i.ev, %i.eq
  %i.ex = add i32 %i.ew, 1                        ; 2 uses
  %min.iters.check210 = icmp samesign ult i64 %wide.trip.count, 20
  %i.ey = trunc i64 %i.er to i32                  ; 6 uses
  %i.ez = icmp ugt i64 %i.er, 4294967295
  %n.vec229 = and i64 %i.em, 4294967292           ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec229
  br label %.preheader63

._crit_edge:                                      ; preds = %scalar.ph
  %i.fa = add nuw i32 %.067, 2                    ; 2 uses
  %i.fb = icmp ult i32 %i.fa, %i.d
  %indvar.next = add i32 %indvar, 1
  br i1 %i.fb, label %.preheader65, label %.preheader64, !llvm.loop !349

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fc = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.fd = add i32 %i.ao, %i.fc                    ; 3 uses
  %i.fe = add i32 %i.fc, %i.l                     ; 2 uses
  %.reass = add i32 %i.fe, %invariant.op          ; 2 uses
  %i.ff = add i32 %i.fd, -1
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !38
  %i.fj = add i32 %i.fd, 1
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fk
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !38
  %i.fn = fadd float %i.fi, %i.fm
  %i.fo = fmul float %i.fn, 5.000000e-01
  %i.fp = zext i32 %i.fd to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fp
  store float %i.fo, ptr %i.fq, align 4, !tbaa !38
  %i.fr = add i32 %i.fe, %i.aq
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fs
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !38
  %i.fv = add i32 %.reass, 1
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fw
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !38
  %i.fz = fadd float %i.fu, %i.fy
  %i.ga = fmul float %i.fz, 5.000000e-01
  %i.gb = zext i32 %.reass to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gb
  store float %i.ga, ptr %i.gc, align 4, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.gd = icmp samesign ult i64 %indvars.iv.next, %i.m
  br i1 %i.gd, label %scalar.ph, label %._crit_edge, !llvm.loop !350

.preheader63:                                     ; preds = %.preheader63.lr.ph.split, %._crit_edge69
  %indvar190 = phi i32 [ 0, %.preheader63.lr.ph.split ], [ %indvar.next191, %._crit_edge69 ] ; 3 uses
  %.06174 = phi i32 [ 1, %.preheader63.lr.ph.split ], [ %i.ke, %._crit_edge69 ] ; 3 uses
  %i.ge = mul i32 %.06174, %i.en                  ; 4 uses
  %i.gf = add nuw i32 %.06174, 1
  %i.gg = mul i32 %i.gf, %i.en                    ; 3 uses
  %invariant.op72.reass = add i32 %i.gg, %invariant.op75 ; 4 uses
  br i1 %min.iters.check210, label %scalar.ph209.preheader, label %vector.scevcheck188

vector.scevcheck188:                              ; preds = %.preheader63
  %i.gh = mul i32 %i.es, %indvar190               ; 3 uses
  %i.gi = add i32 %i.ex, %i.gh
  %i.gj = add i32 %i.eu, %i.gh
  %i.gk = xor i32 %i.ge, -1
  %i.gl = icmp ult i32 %i.gk, %i.ey
  %i.gm = xor i32 %invariant.op72.reass, -1
  %i.gn = icmp ult i32 %i.gm, %i.ey
  %i.go = or i1 %i.gn, %i.ez
  %i.gp = xor i32 %i.gh, -1
  %i.gq = icmp ult i32 %i.gp, %i.ey
  %i.gr = xor i32 %i.gg, -1
  %i.gs = icmp ult i32 %i.gr, %i.ey
  %i.gt = xor i32 %i.gj, -1
  %i.gu = icmp ult i32 %i.gt, %i.ey
  %i.gv = xor i32 %i.gi, -1
  %i.gw = icmp ult i32 %i.gv, %i.ey
  %i.gx = or i1 %i.gl, %i.go
  %i.gy = or i1 %i.gq, %i.gx
  %i.gz = or i1 %i.gs, %i.gy
  %i.ha = or i1 %i.gu, %i.gz
  %i.hb = or i1 %i.gw, %i.ha
  br i1 %i.hb, label %scalar.ph209.preheader, label %vector.memcheck211

vector.memcheck211:                               ; preds = %vector.scevcheck188
  %i.hc = zext i32 %invariant.op72.reass to i64
  %i.hd = shl nuw nsw i64 %i.hc, 2                ; 5 uses
  %i.he = zext i32 %i.ge to i64
  %i.hf = shl nuw nsw i64 %i.he, 2                ; 5 uses
  %i.hg = sub nsw i64 %i.hf, %i.hd
  %diff.check = icmp ugt i64 %i.hg, -16
  %i.hh = mul i32 %indvar190, %i.es               ; 3 uses
  %i.hi = zext i32 %i.hh to i64
  %i.hj = shl nuw nsw i64 %i.hi, 2                ; 2 uses
  %i.hk = sub nsw i64 %i.hj, %i.hf
  %diff.check212 = icmp ugt i64 %i.hk, -16
  %conflict.rdx213 = or i1 %diff.check, %diff.check212
  %i.hl = zext i32 %i.gg to i64
  %i.hm = shl nuw nsw i64 %i.hl, 2                ; 2 uses
  %i.hn = sub nsw i64 %i.hm, %i.hf
  %diff.check214 = icmp ugt i64 %i.hn, -16
  %conflict.rdx215 = or i1 %conflict.rdx213, %diff.check214
  %i.ho = add i32 %i.eu, %i.hh
  %i.hp = zext i32 %i.ho to i64
  %i.hq = shl nuw nsw i64 %i.hp, 2                ; 2 uses
  %i.hr = sub nsw i64 %i.hf, %i.hq
  %diff.check216 = icmp ugt i64 %i.hr, -16
  %conflict.rdx217 = or i1 %conflict.rdx215, %diff.check216
  %i.hs = add i32 %i.ex, %i.hh
  %i.ht = zext i32 %i.hs to i64
  %i.hu = shl nuw nsw i64 %i.ht, 2                ; 2 uses
  %i.hv = sub nsw i64 %i.hf, %i.hu
  %diff.check218 = icmp ugt i64 %i.hv, -16
  %conflict.rdx219 = or i1 %conflict.rdx217, %diff.check218
  %i.hw = sub nsw i64 %i.hj, %i.hd
  %diff.check220 = icmp ugt i64 %i.hw, -16
  %conflict.rdx221 = or i1 %conflict.rdx219, %diff.check220
  %i.hx = sub nsw i64 %i.hm, %i.hd
  %diff.check222 = icmp ugt i64 %i.hx, -16
  %conflict.rdx223 = or i1 %conflict.rdx221, %diff.check222
  %i.hy = sub nsw i64 %i.hq, %i.hd
  %diff.check224 = icmp ugt i64 %i.hy, -16
  %conflict.rdx225 = or i1 %conflict.rdx223, %diff.check224
  %i.hz = sub nsw i64 %i.hu, %i.hd
  %diff.check226 = icmp ugt i64 %i.hz, -16
  %conflict.rdx227 = or i1 %conflict.rdx225, %diff.check226
  br i1 %conflict.rdx227, label %scalar.ph209.preheader, label %vector.body230

vector.body230:                                   ; preds = %vector.memcheck211, %vector.body230
  %index231 = phi i64 [ %index.next235, %vector.body230 ], [ 0, %vector.memcheck211 ] ; 2 uses
  %i.ia = trunc nuw i64 %index231 to i32          ; 2 uses
  %i.ib = add i32 %i.ge, %i.ia                    ; 3 uses
  %i.ic = add i32 %invariant.op72.reass, %i.ia    ; 3 uses
  %i.id = sub i32 %i.ib, %i.en
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ie
  %wide.load = load <4 x float>, ptr %i.if, align 4, !tbaa !38
  %i.ig = add i32 %i.ib, %i.en
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ih
  %wide.load232 = load <4 x float>, ptr %i.ii, align 4, !tbaa !38
  %i.ij = fadd <4 x float> %wide.load, %wide.load232
  %i.ik = fmul <4 x float> %i.ij, splat (float 5.000000e-01)
  %i.il = zext i32 %i.ib to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.il
  store <4 x float> %i.ik, ptr %i.im, align 4, !tbaa !38
  %i.in = sub i32 %i.ic, %i.en
  %i.io = zext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.io
  %wide.load233 = load <4 x float>, ptr %i.ip, align 4, !tbaa !38
  %i.iq = add i32 %i.ic, %i.en
  %i.ir = zext i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ir
  %wide.load234 = load <4 x float>, ptr %i.is, align 4, !tbaa !38
  %i.it = fadd <4 x float> %wide.load233, %wide.load234
  %i.iu = fmul <4 x float> %i.it, splat (float 5.000000e-01)
  %i.iv = zext i32 %i.ic to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.iv
  store <4 x float> %i.iu, ptr %i.iw, align 4, !tbaa !38
  %index.next235 = add nuw i64 %index231, 4       ; 2 uses
  %i.ix = icmp eq i64 %index.next235, %n.vec229
  br i1 %i.ix, label %middle.block236, label %vector.body230, !llvm.loop !351

middle.block236:                                  ; preds = %vector.body230
  br i1 %cmp.n, label %._crit_edge69, label %scalar.ph209.preheader

scalar.ph209.preheader:                           ; preds = %vector.memcheck211, %vector.scevcheck188, %.preheader63, %middle.block236
  %indvars.iv87.ph = phi i64 [ 0, %vector.memcheck211 ], [ 0, %vector.scevcheck188 ], [ 0, %.preheader63 ], [ %n.vec229, %middle.block236 ]
  br label %scalar.ph209

.preheader.lr.ph:                                 ; preds = %._crit_edge69, %.preheader63.lr.ph
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !44 ; 2 uses
  %i.ja = trunc i64 %i.iz to i32                  ; 10 uses
  %.not85 = icmp eq i32 %i.ja, 0
  br i1 %.not85, label %._crit_edge83.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !43
  %i.jd = trunc i64 %i.jc to i32                  ; 5 uses
  %i.je = and i64 %i.iz, 4294967295               ; 4 uses
  %i.jf = add nsw i64 %i.je, -1                   ; 3 uses
  %i.jg = lshr i64 %i.jf, 1
  %i.jh = add i32 %i.jd, %i.ja                    ; 2 uses
  %i.ji = add i32 %i.jh, -1                       ; 2 uses
  %i.jj = add i32 %i.jh, 1                        ; 2 uses
  %i.jk = shl i32 %i.ja, 1
  %i.jl = add i32 %i.jk, %i.jd                    ; 2 uses
  %i.jm = shl nuw nsw i64 %i.je, 2
  %i.jn = add nsw i64 %i.jm, -4
  %i.jo = or i64 %i.jn, 4                         ; 5 uses
  %i.jp = add nsw i64 %i.je, -1                   ; 2 uses
  %i.jq = lshr i64 %i.jp, 1
  %i.jr = add nuw i64 %i.jq, 1                    ; 2 uses
  %min.iters.check275 = icmp ult i64 %i.jp, 48
  %i.js = trunc i64 %i.jg to i32                  ; 2 uses
  %mul.result240 = shl i32 %i.js, 1               ; 5 uses
  %mul.overflow241 = icmp slt i32 %i.js, 0
  %i.jt = icmp ugt i64 %i.jf, 8589934591
  %i.ju = icmp ugt i64 %i.jf, 8589934591
  %invariant.op315 = or i1 %i.ju, %mul.overflow241
  %i.jv = getelementptr i8, ptr %1, i64 %i.jo
  %i.jw = getelementptr i8, ptr %1, i64 %i.jo
  %i.jx = getelementptr i8, ptr %1, i64 %i.jo
  %i.jy = getelementptr i8, ptr %1, i64 %i.jo
  %i.jz = getelementptr i8, ptr %1, i64 %i.jo
  %i.ka = and i64 %i.jr, 3                        ; 2 uses
  %i.kb = icmp eq i64 %i.ka, 0
  %i.kc = select i1 %i.kb, i64 4, i64 %i.ka
  %n.vec293 = sub i64 %i.jr, %i.kc                ; 2 uses
  %i.kd = shl i64 %n.vec293, 1
  br label %.preheader

._crit_edge69:                                    ; preds = %scalar.ph209, %middle.block236
  %i.ke = add nuw i32 %.06174, 2                  ; 2 uses
  %i.kf = icmp ult i32 %i.ke, %i.d
  %indvar.next191 = add i32 %indvar190, 1
  br i1 %i.kf, label %.preheader63, label %.preheader.lr.ph, !llvm.loop !352

scalar.ph209:                                     ; preds = %scalar.ph209.preheader, %scalar.ph209
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %scalar.ph209 ], [ %indvars.iv87.ph, %scalar.ph209.preheader ] ; 2 uses
  %i.kg = trunc nuw i64 %indvars.iv87 to i32      ; 2 uses
  %i.kh = add i32 %i.ge, %i.kg                    ; 3 uses
  %.reass73 = add i32 %invariant.op72.reass, %i.kg ; 3 uses
  %i.ki = sub i32 %i.kh, %i.en
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kj
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !38
  %i.km = add i32 %i.kh, %i.en
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kn
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !38
  %i.kq = fadd float %i.kl, %i.kp
  %i.kr = fmul float %i.kq, 5.000000e-01
  %i.ks = zext i32 %i.kh to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ks
  store float %i.kr, ptr %i.kt, align 4, !tbaa !38
  %i.ku = sub i32 %.reass73, %i.en
  %i.kv = zext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kv
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !38
  %i.ky = add i32 %.reass73, %i.en
  %i.kz = zext i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kz
  %i.lb = load float, ptr %i.la, align 4, !tbaa !38
  %i.lc = fadd float %i.kx, %i.lb
  %i.ld = fmul float %i.lc, 5.000000e-01
  %i.le = zext i32 %.reass73 to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.le
  store float %i.ld, ptr %i.lf, align 4, !tbaa !38
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge69, label %scalar.ph209, !llvm.loop !353

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge77
  %indvar242 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %indvar.next243, %._crit_edge77 ] ; 4 uses
  %.05882 = phi i32 [ 1, %.preheader.lr.ph.split ], [ %i.ow, %._crit_edge77 ] ; 3 uses
  %i.lg = mul i32 %.05882, %i.ja
  %i.lh = and i32 %.05882, 1                      ; 5 uses
  %invariant.op78 = add i32 %i.lh, %i.lg
  %invariant.op80 = add i32 %invariant.op78, %i.jd ; 7 uses
  br i1 %min.iters.check275, label %scalar.ph274.preheader, label %vector.scevcheck238

scalar.ph274.preheader:                           ; preds = %vector.body294, %vector.memcheck276, %vector.scevcheck238, %.preheader
  %indvars.iv90.ph = phi i64 [ 0, %vector.memcheck276 ], [ 0, %vector.scevcheck238 ], [ 0, %.preheader ], [ %i.kd, %vector.body294 ]
  br label %scalar.ph274

vector.scevcheck238:                              ; preds = %.preheader
  %i.li = mul i32 %indvar242, %i.ja               ; 4 uses
  %i.lj = add i32 %i.jl, %i.li
  %i.lk = and i32 %indvar242, 1
  %i.ll = xor i32 %i.lk, 1                        ; 4 uses
  %i.lm = add i32 %i.lj, %i.ll
  %i.ln = add i32 %i.li, %i.jd
  %i.lo = add i32 %i.ln, %i.ll
  %i.lp = add i32 %i.jj, %i.li
  %i.lq = add i32 %i.lp, %i.ll
  %i.lr = add i32 %i.ji, %i.li
  %i.ls = add i32 %i.lr, %i.ll
  %i.lt = xor i32 %invariant.op80, -1
  %i.lu = icmp ugt i32 %mul.result240, %i.lt
  %i.lv = xor i32 %i.ls, -1
  %i.lw = icmp ugt i32 %mul.result240, %i.lv
  %i.lx = or i1 %i.lw, %i.jt
  %i.ly = xor i32 %i.lq, -1
  %i.lz = icmp ugt i32 %mul.result240, %i.ly
  %.reass316 = or i1 %i.lz, %invariant.op315
  %i.ma = xor i32 %i.lo, -1
  %i.mb = icmp ugt i32 %mul.result240, %i.ma
  %i.mc = xor i32 %i.lm, -1
  %i.md = icmp ugt i32 %mul.result240, %i.mc
  %i.me = or i1 %i.lx, %i.lu
  %i.mf = or i1 %i.me, %.reass316
  %i.mg = or i1 %i.mb, %i.mf
  %i.mh = or i1 %i.md, %i.mg
  br i1 %i.mh, label %scalar.ph274.preheader, label %vector.memcheck276

vector.memcheck276:                               ; preds = %vector.scevcheck238
  %i.mi = zext i32 %invariant.op80 to i64
  %i.mj = shl nuw nsw i64 %i.mi, 2                ; 2 uses
  %i.mk = getelementptr i8, ptr %1, i64 %i.mj     ; 4 uses
  %i.ml = getelementptr i8, ptr %i.jv, i64 %i.mj  ; 4 uses
  %i.mm = mul i32 %indvar242, %i.ja               ; 4 uses
  %i.mn = add i32 %i.ji, %i.mm
  %i.mo = add i32 %i.mn, %i.lh
  %i.mp = zext i32 %i.mo to i64
  %i.mq = shl nuw nsw i64 %i.mp, 2                ; 2 uses
  %i.mr = getelementptr i8, ptr %1, i64 %i.mq
  %i.ms = getelementptr i8, ptr %i.jw, i64 %i.mq
  %i.mt = add i32 %i.jj, %i.mm
  %i.mu = add i32 %i.mt, %i.lh
  %i.mv = zext i32 %i.mu to i64
  %i.mw = shl nuw nsw i64 %i.mv, 2                ; 2 uses
  %i.mx = getelementptr i8, ptr %1, i64 %i.mw
  %i.my = getelementptr i8, ptr %i.jx, i64 %i.mw
  %i.mz = add i32 %i.mm, %i.jd
  %i.na = add i32 %i.mz, %i.lh
  %i.nb = zext i32 %i.na to i64
  %i.nc = shl nuw nsw i64 %i.nb, 2                ; 2 uses
  %i.nd = getelementptr i8, ptr %1, i64 %i.nc
  %i.ne = getelementptr i8, ptr %i.jy, i64 %i.nc
  %i.nf = add i32 %i.jl, %i.mm
  %i.ng = add i32 %i.nf, %i.lh
  %i.nh = zext i32 %i.ng to i64
  %i.ni = shl nuw nsw i64 %i.nh, 2                ; 2 uses
  %i.nj = getelementptr i8, ptr %1, i64 %i.ni
  %i.nk = getelementptr i8, ptr %i.jz, i64 %i.ni
  %bound0277 = icmp ult ptr %i.mk, %i.ms
  %bound1278 = icmp ult ptr %i.mr, %i.ml
  %found.conflict279 = and i1 %bound0277, %bound1278
  %bound0280 = icmp ult ptr %i.mk, %i.my
  %bound1281 = icmp ult ptr %i.mx, %i.ml
  %found.conflict282 = and i1 %bound0280, %bound1281
  %conflict.rdx283 = or i1 %found.conflict279, %found.conflict282
  %bound0284 = icmp ult ptr %i.mk, %i.ne
  %bound1285 = icmp ult ptr %i.nd, %i.ml
  %found.conflict286 = and i1 %bound0284, %bound1285
  %conflict.rdx287 = or i1 %conflict.rdx283, %found.conflict286
  %bound0288 = icmp ult ptr %i.mk, %i.nk
  %bound1289 = icmp ult ptr %i.nj, %i.ml
  %found.conflict290 = and i1 %bound0288, %bound1289
  %conflict.rdx291 = or i1 %conflict.rdx287, %found.conflict290
  br i1 %conflict.rdx291, label %scalar.ph274.preheader, label %vector.body294

vector.body294:                                   ; preds = %vector.memcheck276, %vector.body294
  %index295 = phi i64 [ %index.next304, %vector.body294 ], [ 0, %vector.memcheck276 ] ; 2 uses
  %index295.tr = trunc i64 %index295 to i32
  %i.nl = shl i32 %index295.tr, 1                 ; 4 uses
  %i.nm = or disjoint i32 %i.nl, 2
  %i.nn = or disjoint i32 %i.nl, 4
  %i.no = or disjoint i32 %i.nl, 6
  %i.np = add i32 %invariant.op80, %i.nl          ; 5 uses
  %i.nq = add i32 %invariant.op80, %i.nm
  %i.nr = add i32 %invariant.op80, %i.nn
  %i.ns = add i32 %invariant.op80, %i.no
  %i.nt = add i32 %i.np, -1
  %i.nu = zext i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.nu
  %wide.vec296 = load <8 x float>, ptr %i.nv, align 4, !tbaa !38, !alias.scope !370
  %strided.vec297 = shufflevector <8 x float> %wide.vec296, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nw = add i32 %i.np, 1
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.nx
  %wide.vec298 = load <8 x float>, ptr %i.ny, align 4, !tbaa !38, !alias.scope !371
  %strided.vec299 = shufflevector <8 x float> %wide.vec298, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nz = fadd <4 x float> %strided.vec297, %strided.vec299
  %i.oa = sub i32 %i.np, %i.ja
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ob
  %wide.vec300 = load <8 x float>, ptr %i.oc, align 4, !tbaa !38, !alias.scope !372
  %strided.vec301 = shufflevector <8 x float> %wide.vec300, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.od = fadd <4 x float> %i.nz, %strided.vec301
  %i.oe = add i32 %i.np, %i.ja
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.of
  %wide.vec302 = load <8 x float>, ptr %i.og, align 4, !tbaa !38, !alias.scope !373
  %strided.vec303 = shufflevector <8 x float> %wide.vec302, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oh = fadd <4 x float> %i.od, %strided.vec303
  %i.oi = fmul <4 x float> %i.oh, splat (float 2.500000e-01) ; 4 uses
  %i.oj = zext i32 %i.np to i64
  %i.ok = zext i32 %i.nq to i64
  %i.ol = zext i32 %i.nr to i64
  %i.om = zext i32 %i.ns to i64
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.oj
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ok
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ol
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.om
  %i.or = extractelement <4 x float> %i.oi, i64 0
  store float %i.or, ptr %i.on, align 4, !tbaa !38, !alias.scope !374, !noalias !375
  %i.os = extractelement <4 x float> %i.oi, i64 1
  store float %i.os, ptr %i.oo, align 4, !tbaa !38, !alias.scope !374, !noalias !375
  %i.ot = extractelement <4 x float> %i.oi, i64 2
  store float %i.ot, ptr %i.op, align 4, !tbaa !38, !alias.scope !374, !noalias !375
  %i.ou = extractelement <4 x float> %i.oi, i64 3
  store float %i.ou, ptr %i.oq, align 4, !tbaa !38, !alias.scope !374, !noalias !375
  %index.next304 = add nuw i64 %index295, 4       ; 2 uses
  %i.ov = icmp eq i64 %index.next304, %n.vec293
  br i1 %i.ov, label %scalar.ph274.preheader, label %vector.body294, !llvm.loop !360

._crit_edge83.split:                              ; preds = %._crit_edge77, %bb.a, %.preheader64, %.preheader.lr.ph
  ret void

._crit_edge77:                                    ; preds = %scalar.ph274
  %i.ow = add nuw i32 %.05882, 1                  ; 2 uses
  %exitcond93.not = icmp eq i32 %i.ow, %i.d
  %indvar.next243 = add i32 %indvar242, 1
  br i1 %exitcond93.not, label %._crit_edge83.split, label %.preheader, !llvm.loop !361

scalar.ph274:                                     ; preds = %scalar.ph274.preheader, %scalar.ph274
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %scalar.ph274 ], [ %indvars.iv90.ph, %scalar.ph274.preheader ] ; 2 uses
  %i.ox = trunc nuw i64 %indvars.iv90 to i32
  %.reass81 = add i32 %invariant.op80, %i.ox      ; 5 uses
  %i.oy = add i32 %.reass81, -1
  %i.oz = zext i32 %i.oy to i64
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.oz
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !38
  %i.pc = add i32 %.reass81, 1
  %i.pd = zext i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pd
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !38
  %i.pg = fadd float %i.pb, %i.pf
  %i.ph = sub i32 %.reass81, %i.ja
  %i.pi = zext i32 %i.ph to i64
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pi
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !38
  %i.pl = fadd float %i.pg, %i.pk
  %i.pm = add i32 %.reass81, %i.ja
  %i.pn = zext i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pn
  %i.pp = load float, ptr %i.po, align 4, !tbaa !38
  %i.pq = fadd float %i.pl, %i.pp
  %i.pr = fmul float %i.pq, 2.500000e-01
  %i.ps = zext i32 %.reass81 to i64
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ps
  store float %i.pr, ptr %i.pt, align 4, !tbaa !38
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 2 ; 2 uses
  %i.pu = icmp samesign ult i64 %indvars.iv.next91, %i.je
  br i1 %i.pu, label %scalar.ph274, label %._crit_edge77, !llvm.loop !362
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv11bioinspired11RetinaColor15_applyRIFfilterEPKfPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(349) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !71
  %i.d = trunc i64 %i.c to i32
  %i.e = add i32 %i.d, -1                         ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %.preheader.lr.ph, label %.._crit_edge21.split_crit_edge

.._crit_edge21.split_crit_edge:                   ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !24
  br label %._crit_edge21.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !44
  %i.i = trunc i64 %i.h to i32                    ; 14 uses
  %i.j = add i32 %i.i, -1                         ; 3 uses
  %i.k = icmp ugt i32 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  br i1 %i.k, label %.preheader.preheader, label %._crit_edge21.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.n = ptrtoaddr ptr %i.m to i64
  %wide.trip.count = zext i32 %i.j to i64         ; 3 uses
  %i.o = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %i.p = add i32 %i.i, 1                          ; 2 uses
  %i.q = shl i32 %i.i, 1                          ; 3 uses
  %i.r = add i32 %i.q, 2                          ; 2 uses
  %i.s = sub i64 %i.n, %i.a                       ; 5 uses
  %i.t = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %min.iters.check = icmp ult i32 %i.j, 13
  %i.u = trunc i64 %i.o to i32                    ; 5 uses
  %i.v = icmp ugt i64 %i.o, 4294967295
  %invariant.op = add i64 %i.s, -1
  %invariant.op44 = add i64 %i.s, -1
  %invariant.op46 = add i64 %i.s, -1
  %invariant.op48 = add i64 %i.s, -1
  %i.w = add i64 %i.s, -1
  %diff.check38 = icmp ult i64 %i.w, 15
  %n.vec = and i64 %i.t, -4                       ; 3 uses
  %i.x = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvar = phi i32 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %.020 = phi i32 [ 1, %.preheader.preheader ], [ %i.cp, %._crit_edge ] ; 2 uses
  %i.y = mul i32 %.020, %i.i                      ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.z = mul i32 %indvar, %i.i                    ; 5 uses
  %i.aa = add i32 %i.r, %i.z
  %i.ab = add i32 %i.q, %i.z
  %i.ac = add i32 %i.p, %i.z
  %i.ad = xor i32 %i.ac, -1
  %i.ae = icmp ult i32 %i.ad, %i.u
  %i.af = xor i32 %i.z, -1
  %i.ag = icmp ult i32 %i.af, %i.u
  %i.ah = or i1 %i.ag, %i.v
  %i.ai = xor i32 %i.ab, -1
  %i.aj = icmp ult i32 %i.ai, %i.u
  %i.ak = sub i32 -3, %i.z
  %i.al = icmp ult i32 %i.ak, %i.u
  %i.am = xor i32 %i.aa, -1
  %i.an = icmp ult i32 %i.am, %i.u
  %i.ao = or i1 %i.ae, %i.ah
  %i.ap = or i1 %i.aj, %i.ao
  %i.aq = or i1 %i.al, %i.ap
  %i.ar = or i1 %i.an, %i.aq
  br i1 %i.ar, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.as = mul i32 %indvar, %i.i                   ; 5 uses
  %i.at = add i32 %i.p, %i.as
  %i.au = zext i32 %i.at to i64                   ; 4 uses
  %i.av = add i32 %i.r, %i.as
  %i.aw = zext i32 %i.av to i64
  %i.ax = sub nsw i64 %i.au, %i.aw
  %i.ay = shl nsw i64 %i.ax, 2
  %.reass = add i64 %i.ay, %invariant.op
  %diff.check = icmp ult i64 %.reass, 15
  %i.az = add i32 %i.as, 2
  %i.ba = zext i32 %i.az to i64
  %i.bb = sub nsw i64 %i.au, %i.ba
  %i.bc = shl nsw i64 %i.bb, 2
  %.reass45 = add i64 %i.bc, %invariant.op44
  %diff.check33 = icmp ult i64 %.reass45, 15
  %conflict.rdx = or i1 %diff.check, %diff.check33
  %i.bd = add i32 %i.q, %i.as
  %i.be = zext i32 %i.bd to i64
  %i.bf = sub nsw i64 %i.au, %i.be
  %i.bg = shl nsw i64 %i.bf, 2
  %.reass47 = add i64 %i.bg, %invariant.op46
  %diff.check34 = icmp ult i64 %.reass47, 15
  %conflict.rdx35 = or i1 %conflict.rdx, %diff.check34
  %i.bh = zext i32 %i.as to i64
  %i.bi = sub nsw i64 %i.au, %i.bh
  %i.bj = shl nsw i64 %i.bi, 2
  %.reass49 = add i64 %i.bj, %invariant.op48
  %diff.check36 = icmp ult i64 %.reass49, 15
  %conflict.rdx37 = or i1 %conflict.rdx35, %diff.check36
  %conflict.rdx39 = or i1 %conflict.rdx37, %diff.check38
  br i1 %conflict.rdx39, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.bk = trunc i64 %index to i32
  %i.bl = or disjoint i32 %i.bk, 1
  %i.bm = add i32 %i.y, %i.bl                     ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bn
  %wide.load = load <4 x float>, ptr %i.bo, align 4, !tbaa !38
  %i.bp = add i32 %i.bm, -1                       ; 2 uses
  %i.bq = sub i32 %i.bp, %i.i
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.br
  %wide.load40 = load <4 x float>, ptr %i.bs, align 4, !tbaa !38
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 4.000000e+00), <4 x float> %wide.load40)
  %i.bu = add i32 %i.bp, %i.i
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bv
  %wide.load41 = load <4 x float>, ptr %i.bw, align 4, !tbaa !38
  %i.bx = fadd <4 x float> %i.bt, %wide.load41
  %i.by = add i32 %i.bm, 1                        ; 2 uses
  %i.bz = sub i32 %i.by, %i.i
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ca
  %wide.load42 = load <4 x float>, ptr %i.cb, align 4, !tbaa !38
  %i.cc = fadd <4 x float> %i.bx, %wide.load42
  %i.cd = add i32 %i.by, %i.i
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ce
  %wide.load43 = load <4 x float>, ptr %i.cf, align 4, !tbaa !38
  %i.cg = fadd <4 x float> %i.cc, %wide.load43
  %i.ch = fmul <4 x float> %i.cg, splat (float 1.250000e-01)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bn
  store <4 x float> %i.ch, ptr %i.ci, align 4, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck ], [ 1, %.preheader ], [ %i.x, %middle.block ]
  br label %scalar.ph

._crit_edge21.split:                              ; preds = %._crit_edge, %.._crit_edge21.split_crit_edge, %.preheader.lr.ph
  %i.ck = phi ptr [ %.pre, %.._crit_edge21.split_crit_edge ], [ %i.m, %.preheader.lr.ph ], [ %i.m, %._crit_edge ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !43
  %i.cn = shl i64 %i.cm, 2
  %i.co = and i64 %i.cn, 17179869180
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr nonnull align 4 %i.ck, i64 %i.co, i1 false)
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.cp = add nuw i32 %.020, 1                    ; 2 uses
  %exitcond23.not = icmp eq i32 %i.cp, %i.e
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond23.not, label %._crit_edge21.split, label %.preheader, !llvm.loop !377

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cq = trunc nuw i64 %indvars.iv to i32
  %i.cr = add i32 %i.y, %i.cq                     ; 3 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !38
  %i.cv = add i32 %i.cr, -1                       ; 2 uses
  %i.cw = sub i32 %i.cv, %i.i
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !38
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cu, float 4.000000e+00, float %i.cz)
  %i.db = add i32 %i.cv, %i.i
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !38
  %i.df = fadd float %i.da, %i.de
  %i.dg = add i32 %i.cr, 1                        ; 2 uses
  %i.dh = sub i32 %i.dg, %i.i
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !38
  %i.dl = fadd float %i.df, %i.dk
  %i.dm = add i32 %i.dg, %i.i
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !38
  %i.dq = fadd float %i.dl, %i.dp
  %i.dr = fmul float %i.dq, 1.250000e-01
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cs
  store float %i.dr, ptr %i.ds, align 4, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !378
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv11bioinspired11RetinaColor27_getNormalizedContoursImageEPKfPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(349) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71
  %i.c = trunc i64 %i.b to i32
  %i.d = add i32 %i.c, -1                         ; 4 uses
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44
  %i.h = trunc i64 %i.g to i32                    ; 8 uses
  %i.i = add i32 %i.h, -1                         ; 2 uses
  %i.j = icmp ugt i32 %i.i, 1
  br i1 %i.j, label %.preheader.us.preheader, label %.lr.ph.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext i32 %i.i to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.04147.us = phi i32 [ %i.bj, %._crit_edge.us ], [ 1, %.preheader.us.preheader ] ; 2 uses
  %.04246.us = phi float [ %.2.us, %._crit_edge.us ], [ 0.000000e+00, %.preheader.us.preheader ]
  %i.k = mul i32 %.04147.us, %i.h
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv = phi i64 [ 1, %.preheader.us ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.144.us = phi float [ %.04246.us, %.preheader.us ], [ %.2.us, %bb.b ] ; 2 uses
  %i.l = trunc nuw i64 %indvars.iv to i32
  %i.m = add i32 %i.k, %i.l                       ; 5 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !38
  %i.q = add i32 %i.m, -1                         ; 3 uses
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !38
  %i.u = fneg float %i.t
  %i.v = tail call float @llvm.fmuladd.f32(float %i.p, float 8.000000e+00, float %i.u)
  %i.w = add i32 %i.m, 1                          ; 3 uses
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.x
  %i.z = load float, ptr %i.y, align 4, !tbaa !38
  %i.aa = fsub float %i.v, %i.z
  %i.ab = sub i32 %i.m, %i.h
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !38
  %i.af = fsub float %i.aa, %i.ae
  %i.ag = add i32 %i.m, %i.h
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !38
  %i.ak = fsub float %i.af, %i.aj
  %i.al = sub i32 %i.q, %i.h
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !38
  %i.ap = fsub float %i.ak, %i.ao
  %i.aq = add i32 %i.q, %i.h
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !38
  %i.au = fsub float %i.ap, %i.at
  %i.av = sub i32 %i.w, %i.h
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !38
  %i.az = fsub float %i.au, %i.ay
  %i.ba = add i32 %i.w, %i.h
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !38
  %i.be = fsub float %i.az, %i.bd
  %i.bf = tail call float @llvm.fabs.f32(float %i.be)
  %i.bg = fmul float %i.bf, f0x3EAAAAAB           ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.n
  store float %i.bg, ptr %i.bh, align 4, !tbaa !38
  %i.bi = fcmp ogt float %i.bg, %.144.us
  %.2.us = select i1 %i.bi, float %i.bg, float %.144.us ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !379

._crit_edge.us:                                   ; preds = %bb.b
  %i.bj = add nuw i32 %.04147.us, 1               ; 2 uses
  %exitcond55.not = icmp eq i32 %i.bj, %i.d
  br i1 %exitcond55.not, label %._crit_edge48, label %.preheader.us, !llvm.loop !380

._crit_edge48:                                    ; preds = %._crit_edge.us
  %i.bk = fdiv float 1.000000e+00, %.2.us
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %._crit_edge48, %.preheader.lr.ph
  %i.bl = phi float [ %i.bk, %._crit_edge48 ], [ +inf, %.preheader.lr.ph ] ; 2 uses
  %wide.trip.count59 = zext i32 %i.d to i64       ; 2 uses
  %i.bm = add nsw i64 %wide.trip.count59, -1      ; 2 uses
  %min.iters.check = icmp ult i32 %i.d, 9
  br i1 %min.iters.check, label %.lr.ph.preheader67, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bm, -8                      ; 3 uses
  %i.bn = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bl, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 20 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bp, align 4, !tbaa !38
  %wide.load66 = load <4 x float>, ptr %i.bq, align 4, !tbaa !38
  %i.br = fmul <4 x float> %broadcast.splat, %wide.load
  %i.bs = fmul <4 x float> %broadcast.splat, %wide.load66
  store <4 x float> %i.br, ptr %i.bp, align 4, !tbaa !38
  store <4 x float> %i.bs, ptr %i.bq, align 4, !tbaa !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !381

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader67

.lr.ph.preheader67:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv56.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader67, %.lr.ph
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %.lr.ph ], [ %indvars.iv56.ph, %.lr.ph.preheader67 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv56 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !38
  %i.bw = fmul float %i.bl, %i.bv
  store float %i.bw, ptr %i.bu, align 4, !tbaa !38
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge, label %.lr.ph, !llvm.loop !382
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11bioinspired11RetinaColor40_adaptiveHorizontalCausalFilter_addInputEPKfPfjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(349) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Range", align 4         ; 6 uses
  %6 = alloca %"class.cv::bioinspired::RetinaColor::Parallel_adaptiveHorizontalCausalFilter_addInput", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i32 %3, ptr %5, align 4, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %4, ptr %i.a, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44
  %i.f = trunc i64 %i.e to i32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv11bioinspired11RetinaColor48Parallel_adaptiveHorizontalCausalFilter_addInputE, i64 16), ptr %6, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.g, align 8, !tbaa !86
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %1, ptr %i.h, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.c, ptr %i.i, align 8, !tbaa !88
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %i.f, ptr %i.j, align 8, !tbaa !89
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, double noundef -1.000000e+00)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %i.k
}

declare void @_ZN2cv11bioinspired17BasicRetinaFilter37_horizontalAnticausalFilter_IrregularEPfjjPKf(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN2cv11bioinspired17BasicRetinaFilter31_verticalCausalFilter_IrregularEPfjjPKf(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11bioinspired11RetinaColor42_adaptiveVerticalAnticausalFilter_multGainEPfjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(349) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Range", align 4         ; 6 uses
  %5 = alloca %"class.cv::bioinspired::RetinaColor::Parallel_adaptiveVerticalAnticausalFilter_multGain", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i32 %2, ptr %4, align 4, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %3, ptr %i.a, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !43
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.j = load float, ptr %i.i, align 4, !tbaa !84
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv11bioinspired11RetinaColor50Parallel_adaptiveVerticalAnticausalFilter_multGainE, i64 16), ptr %5, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.k, align 8, !tbaa !91
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.g, ptr %i.l, align 8, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.n = load <2 x i64>, ptr %i.h, align 8, !tbaa !383
  %i.o = trunc <2 x i64> %i.n to <2 x i32>
  store <2 x i32> %i.o, ptr %i.m, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float %i.j, ptr %i.p, align 8, !tbaa !95
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef -1.000000e+00)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %i.q
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv11bioinspired11RetinaColor16_computeGradientEPKf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(349) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71
  %i.c = trunc i64 %i.b to i32
  %i.d = add i32 %i.c, -2                         ; 2 uses
  %i.e = icmp ugt i32 %i.d, 2
  br i1 %i.e, label %.preheader.lr.ph, label %._crit_edge45.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44
  %i.h = trunc i64 %i.g to i32                    ; 5 uses
  %i.i = add i32 %i.h, -2                         ; 2 uses
  %i.j = icmp ugt i32 %i.i, 2
  %i.k = shl i32 %i.h, 1                          ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 328
  br i1 %i.j, label %.preheader.preheader, label %._crit_edge45.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext i32 %i.i to i64
  %i.n = load i64, ptr %i.l, align 8, !tbaa !43
  %i.o = trunc i64 %i.n to i32
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !24   ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.04244 = phi i32 [ %i.r, %._crit_edge ], [ 2, %.preheader.preheader ] ; 2 uses
  %i.q = mul i32 %.04244, %i.h
  br label %bb.b

._crit_edge45.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.b
  %i.r = add nuw i32 %.04244, 1                   ; 2 uses
  %exitcond47.not = icmp eq i32 %i.r, %i.d
  br i1 %exitcond47.not, label %._crit_edge45.split, label %.preheader, !llvm.loop !384

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 2, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.s = trunc nuw i64 %indvars.iv to i32
  %i.t = add i32 %i.q, %i.s                       ; 10 uses
  %i.u = add i32 %i.t, %i.h
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !38
  %i.y = sub i32 %i.t, %i.h
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !38
  %i.ac = add i32 %i.t, 1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !38
  %i.ag = add i32 %i.t, -1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !38
  %i.ak = zext i32 %i.t to i64                    ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ak
  %i.am = load float, ptr %i.al, align 4, !tbaa !38
  %i.an = sub i32 %i.t, %i.k
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !38
  %i.ar = add i32 %i.t, -2
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !38
  %i.av = add i32 %i.t, %i.k
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !38
  %i.az = add i32 %i.t, 2
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !38
  %i.bd = insertelement <2 x float> poison, float %i.af, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.x, i64 1
  %i.bf = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.ab, i64 1
  %i.bh = fsub <2 x float> %i.be, %i.bg
  %i.bi = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bh)
  %i.bj = insertelement <2 x float> poison, float %i.am, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bl = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.aq, i64 1
  %i.bn = fsub <2 x float> %i.bk, %i.bm
  %i.bo = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bn)
  %i.bp = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.ay, i64 1
  %i.br = fsub <2 x float> %i.bq, %i.bk
  %i.bs = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.br)
  %i.bt = fadd <2 x float> %i.bo, %i.bs
  %i.bu = fmul <2 x float> %i.bt, splat (float 2.500000e-01)
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bu) ; 2 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 0
  %i.bx = extractelement <2 x float> %i.bv, i64 1
  %i.by = fcmp olt float %i.bw, %i.bx             ; 2 uses
  %i.bz = add i32 %i.t, %i.o
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ak
  %. = select i1 %i.by, float 6.000000e-02, float 5.700000e-01
  %.51 = select i1 %i.by, float 5.700000e-01, float 6.000000e-02
  store float %., ptr %i.cb, align 4, !tbaa !38
  store float %.51, ptr %i.cc, align 4, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !385
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv11bioinspired11RetinaColor34applyKrauskopfLMS2Acr1cr2TransformERSt8valarrayIfE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(349) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !23     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23
  %.not = icmp eq i64 %i.a, %i.c                  ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.3, i64 noundef 115) ; 0 uses
  %i.e = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !14
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #17
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i8, ptr %i.k, align 8, !tbaa !66
  %.not.i1.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 67
  %i.n = load i8, ptr %i.m, align 1, !tbaa !67
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.j)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef signext i8 %i.q(ptr noundef nonnull align 8 dereferenceable(570) %i.j, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.n, %bb.d ], [ %i.r, %bb.e ]
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 0 uses
  br label %_ZN2cv11bioinspired11RetinaColor31_applyImageColorSpaceConversionERKSt8valarrayIfERS3_PKf.exit

bb.f:                                             ; preds = %bb.a
  %i.u = udiv i64 %i.a, 3                         ; 3 uses
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %_ZN2cv11bioinspired11RetinaColor31_applyImageColorSpaceConversionERKSt8valarrayIfERS3_PKf.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !24   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24   ; 5 uses
  %i.aa = shl i64 %i.a, 1
  %i.ab = udiv i64 %i.aa, 3
  %i.ac = and i64 %i.u, 4294967295                ; 7 uses
  %i.ad = and i64 %i.ab, 4294967295               ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.ac, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ae = ptrtoaddr ptr %i.z to i64               ; 3 uses
  %i.af = ptrtoaddr ptr %i.x to i64               ; 3 uses
  %i.ag = shl nuw nsw i64 %i.ac, 2                ; 4 uses
  %i.ah = shl nuw nsw i64 %i.ad, 2                ; 5 uses
  %i.ai = add nsw i64 %i.ah, -1
  %diff.check23 = icmp ult i64 %i.ai, 15
  %i.aj = sub i64 %i.af, %i.ae                    ; 3 uses
  %i.ak = sub i64 %i.ah, %i.aj
  %diff.check24 = icmp ugt i64 %i.ak, -16
  %conflict.rdx25 = or i1 %diff.check23, %diff.check24
  %i.al = sub i64 %i.ag, %i.aj
  %diff.check26 = icmp ugt i64 %i.al, -16
  %conflict.rdx27 = or i1 %conflict.rdx25, %diff.check26
  %i.am = add i64 %i.aj, -1
  %diff.check28 = icmp ult i64 %i.am, 15
  %conflict.rdx29 = or i1 %conflict.rdx27, %diff.check28
  %i.an = sub nsw i64 %i.ag, %i.ah
  %diff.check30 = icmp ugt i64 %i.an, -16
  %conflict.rdx31 = or i1 %conflict.rdx29, %diff.check30
  %i.ao = add i64 %i.ag, %i.af
  %i.ap = sub i64 %i.ao, %i.ae                    ; 2 uses
  %i.aq = sub i64 %i.ah, %i.ap
  %diff.check32 = icmp ugt i64 %i.aq, -16
  %conflict.rdx33 = or i1 %conflict.rdx31, %diff.check32
  %i.ar = add i64 %i.ap, -1
  %diff.check34 = icmp ult i64 %i.ar, 15
  %conflict.rdx35 = or i1 %conflict.rdx33, %diff.check34
  %i.as = add i64 %i.ah, %i.af
  %i.at = sub i64 %i.as, %i.ae                    ; 2 uses
  %i.au = sub i64 %i.ag, %i.at
  %diff.check36 = icmp ugt i64 %i.au, -16
  %conflict.rdx37 = or i1 %conflict.rdx35, %diff.check36
  %i.av = add i64 %i.at, -1
  %diff.check38 = icmp ult i64 %i.av, 15
  %conflict.rdx39 = or i1 %conflict.rdx37, %diff.check38
  br i1 %conflict.rdx39, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, 4294967292               ; 4 uses
  %i.aw = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.ax = getelementptr i8, ptr %i.z, i64 %i.aw
  %i.ay = trunc nuw i64 %n.vec to i32
  %i.az = getelementptr i8, ptr %i.x, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.ba ; 3 uses
  %next.gep40 = getelementptr i8, ptr %i.x, i64 %i.ba ; 3 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !38 ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %next.gep, i64 %i.ac
  %wide.load41 = load <4 x float>, ptr %i.bb, align 4, !tbaa !38 ; 3 uses
  %i.bc = fadd <4 x float> %wide.load, %wide.load41
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %next.gep, i64 %i.ad
  %wide.load42 = load <4 x float>, ptr %i.bd, align 4, !tbaa !38 ; 3 uses
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load42, <4 x float> zeroinitializer, <4 x float> %i.bc)
  %i.bf = fsub <4 x float> %wide.load, %wide.load41
  %i.bg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load42, <4 x float> zeroinitializer, <4 x float> %i.bf)
  %i.bh = fmul <4 x float> %wide.load41, splat (float -5.000000e-01)
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float -5.000000e-01), <4 x float> %i.bh)
  %i.bj = fadd <4 x float> %wide.load42, %i.bi
  store <4 x float> %i.be, ptr %next.gep40, align 4, !tbaa !38
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %next.gep40, i64 %i.ac
  store <4 x float> %i.bg, ptr %i.bk, align 4, !tbaa !38
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %next.gep40, i64 %i.ad
  store <4 x float> %i.bj, ptr %i.bl, align 4, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !386

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZN2cv11bioinspired11RetinaColor31_applyImageColorSpaceConversionERKSt8valarrayIfERS3_PKf.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.045.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i ], [ %i.ax, %middle.block ]
  %.04044.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.ay, %middle.block ]
  %.04143.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i ], [ %i.az, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.045.i = phi ptr [ %i.cd, %scalar.ph ], [ %.045.i.ph, %scalar.ph.preheader ] ; 4 uses
  %.04044.i = phi i32 [ %i.cb, %scalar.ph ], [ %.04044.i.ph, %scalar.ph.preheader ]
  %.04143.i = phi ptr [ %i.cc, %scalar.ph ], [ %.04143.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bn = load float, ptr %.045.i, align 4, !tbaa !38 ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.045.i, i64 %i.ac
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !38 ; 3 uses
  %i.bq = fadd float %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.045.i, i64 %i.ad
  %i.bs = load float, ptr %i.br, align 4, !tbaa !38 ; 3 uses
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float 0.000000e+00, float %i.bq)
  %i.bu = fsub float %i.bn, %i.bp
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bs, float 0.000000e+00, float %i.bu)
  %i.bw = fmul float %i.bp, -5.000000e-01
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bn, float -5.000000e-01, float %i.bw)
  %i.by = fadd float %i.bs, %i.bx
  store float %i.bt, ptr %.04143.i, align 4, !tbaa !38
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.04143.i, i64 %i.ac
  store float %i.bv, ptr %i.bz, align 4, !tbaa !38
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.04143.i, i64 %i.ad
  store float %i.by, ptr %i.ca, align 4, !tbaa !38
  %i.cb = add nuw i32 %.04044.i, 1                ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.04143.i, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.045.i, i64 4
  %exitcond.not.i = icmp eq i32 %i.cb, %i.v
  br i1 %exitcond.not.i, label %_ZN2cv11bioinspired11RetinaColor31_applyImageColorSpaceConversionERKSt8valarrayIfERS3_PKf.exit, label %scalar.ph, !llvm.loop !387

_ZN2cv11bioinspired11RetinaColor31_applyImageColorSpaceConversionERKSt8valarrayIfERS3_PKf.exit: ; preds = %scalar.ph, %middle.block, %bb.f, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv11bioinspired11RetinaColor31_applyImageColorSpaceConversionERKSt8valarrayIfERS3_PKf(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(349) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.b = udiv i64 %i.a, 3                         ; 4 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 12 uses
  %i.h = shl i64 %i.a, 1
  %i.i = udiv i64 %i.h, 3
  %i.j = and i64 %i.b, 4294967295                 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.l = and i64 %i.i, 4294967295                 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.j, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.t = shl i64 %i.b, 2
  %i.u = add i64 %i.t, 17179869180
  %i.v = and i64 %i.u, 17179869180                ; 3 uses
  %i.w = add nuw nsw i64 %i.v, 4                  ; 2 uses
  %i.x = getelementptr i8, ptr %i.e, i64 %i.w     ; 3 uses
  %i.y = shl nuw nsw i64 %i.j, 2                  ; 3 uses
  %i.z = getelementptr nuw i8, ptr %i.e, i64 %i.y ; 6 uses
  %i.aa = add nuw nsw i64 %i.v, %i.y
  %i.ab = add nuw nsw i64 %i.aa, 4                ; 2 uses
  %i.ac = getelementptr i8, ptr %i.e, i64 %i.ab   ; 6 uses
  %i.ad = shl nuw nsw i64 %i.l, 2                 ; 3 uses
  %i.ae = getelementptr nuw i8, ptr %i.e, i64 %i.ad ; 6 uses
  %i.af = add nuw nsw i64 %i.v, %i.ad
  %i.ag = add nuw nsw i64 %i.af, 4                ; 2 uses
  %i.ah = getelementptr i8, ptr %i.e, i64 %i.ag   ; 6 uses
  %i.ai = getelementptr nuw i8, ptr %i.g, i64 %i.ad ; 3 uses
  %i.aj = getelementptr i8, ptr %i.g, i64 %i.ag   ; 3 uses
  %i.ak = getelementptr nuw i8, ptr %i.g, i64 %i.y ; 3 uses
  %i.al = getelementptr i8, ptr %i.g, i64 %i.ab   ; 3 uses
  %i.am = getelementptr i8, ptr %i.g, i64 %i.w    ; 3 uses
  %i.an = getelementptr i8, ptr %3, i64 36        ; 3 uses
  %i.ao = insertelement <4 x ptr> poison, ptr %i.e, i64 0
  %i.ap = shufflevector <4 x ptr> %i.ao, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.aq = insertelement <4 x ptr> poison, ptr %i.ac, i64 0
  %i.ar = insertelement <4 x ptr> %i.aq, ptr %i.ah, i64 1
  %i.as = insertelement <4 x ptr> %i.ar, ptr %i.aj, i64 2
  %i.at = insertelement <4 x ptr> %i.as, ptr %i.al, i64 3
  %i.au = icmp ult <4 x ptr> %i.ap, %i.at
  %i.av = insertelement <4 x ptr> poison, ptr %i.z, i64 0
  %i.aw = insertelement <4 x ptr> %i.av, ptr %i.ae, i64 1
  %i.ax = insertelement <4 x ptr> %i.aw, ptr %i.ai, i64 2
  %i.ay = insertelement <4 x ptr> %i.ax, ptr %i.ak, i64 3
  %i.az = insertelement <4 x ptr> poison, ptr %i.x, i64 0
  %i.ba = shufflevector <4 x ptr> %i.az, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bb = icmp ult <4 x ptr> %i.ay, %i.ba
  %i.bc = and <4 x i1> %i.au, %i.bb
  %bound0122 = icmp ult ptr %i.e, %i.am
  %bound1123 = icmp ult ptr %i.g, %i.x
  %found.conflict124 = and i1 %bound0122, %bound1123
  %bound0126 = icmp ult ptr %i.e, %i.an
  %bound1127 = icmp ult ptr %3, %i.x
  %found.conflict128 = and i1 %bound0126, %bound1127
  %bound0130 = icmp ult ptr %i.z, %i.ah
  %bound1131 = icmp ult ptr %i.ae, %i.ac
  %found.conflict132 = and i1 %bound0130, %bound1131
  %bound0134 = icmp ult ptr %i.z, %i.aj
  %bound1135 = icmp ult ptr %i.ai, %i.ac
  %found.conflict136 = and i1 %bound0134, %bound1135
  %bound0138 = icmp ult ptr %i.z, %i.al
  %bound1139 = icmp ult ptr %i.ak, %i.ac
  %found.conflict140 = and i1 %bound0138, %bound1139
  %bound0142 = icmp ult ptr %i.z, %i.am
  %bound1143 = icmp ult ptr %i.g, %i.ac
  %found.conflict144 = and i1 %bound0142, %bound1143
  %bound0146 = icmp ult ptr %i.z, %i.an
  %bound1147 = icmp ult ptr %3, %i.ac
  %found.conflict148 = and i1 %bound0146, %bound1147
  %bound0150 = icmp ult ptr %i.ae, %i.aj
  %bound1151 = icmp ult ptr %i.ai, %i.ah
  %found.conflict152 = and i1 %bound0150, %bound1151
  %bound0154 = icmp ult ptr %i.ae, %i.al
  %bound1155 = icmp ult ptr %i.ak, %i.ah
  %found.conflict156 = and i1 %bound0154, %bound1155
  %bound0158 = icmp ult ptr %i.ae, %i.am
  %bound1159 = icmp ult ptr %i.g, %i.ah
  %found.conflict160 = and i1 %bound0158, %bound1159
  %bound0162 = icmp ult ptr %i.ae, %i.an
  %bound1163 = icmp ult ptr %3, %i.ah
  %found.conflict164 = and i1 %bound0162, %bound1163
  %i.bd = bitcast <4 x i1> %i.bc to i4
  %i.be = icmp ne i4 %i.bd, 0
  %op.rdx = or i1 %i.be, %found.conflict124
  %op.rdx187 = or i1 %found.conflict128, %found.conflict132
  %op.rdx188 = or i1 %found.conflict136, %found.conflict140
  %op.rdx189 = or i1 %found.conflict144, %found.conflict148
  %op.rdx190 = or i1 %found.conflict152, %found.conflict156
  %op.rdx191 = or i1 %found.conflict160, %found.conflict164
  %op.rdx192 = or i1 %op.rdx, %op.rdx187
  %op.rdx193 = or i1 %op.rdx188, %op.rdx189
  %op.rdx194 = or i1 %op.rdx190, %op.rdx191
  %op.rdx195 = or i1 %op.rdx192, %op.rdx193
  %op.rdx196 = or i1 %op.rdx195, %op.rdx194
  br i1 %op.rdx196, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 4294967292               ; 4 uses
  %i.bf = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.bg = getelementptr i8, ptr %i.g, i64 %i.bf
  %i.bh = trunc nuw i64 %n.vec to i32
  %i.bi = getelementptr i8, ptr %i.e, i64 %i.bf
  %i.bj = load float, ptr %3, align 4, !tbaa !38, !alias.scope !398
  %broadcast.splatinsert168 = insertelement <4 x float> poison, float %i.bj, i64 0
  %broadcast.splat169 = shufflevector <4 x float> %broadcast.splatinsert168, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bk = load float, ptr %i.k, align 4, !tbaa !38, !alias.scope !398
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bk, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bl = load float, ptr %i.m, align 4, !tbaa !38, !alias.scope !398
  %broadcast.splatinsert171 = insertelement <4 x float> poison, float %i.bl, i64 0
  %broadcast.splat172 = shufflevector <4 x float> %broadcast.splatinsert171, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bm = load float, ptr %i.n, align 4, !tbaa !38, !alias.scope !398
  %broadcast.splatinsert175 = insertelement <4 x float> poison, float %i.bm, i64 0
  %broadcast.splat176 = shufflevector <4 x float> %broadcast.splatinsert175, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bn = load float, ptr %i.o, align 4, !tbaa !38, !alias.scope !398
  %broadcast.splatinsert173 = insertelement <4 x float> poison, float %i.bn, i64 0
  %broadcast.splat174 = shufflevector <4 x float> %broadcast.splatinsert173, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bo = load float, ptr %i.p, align 4, !tbaa !38, !alias.scope !398
  %broadcast.splatinsert177 = insertelement <4 x float> poison, float %i.bo, i64 0
  %broadcast.splat178 = shufflevector <4 x float> %broadcast.splatinsert177, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bp = load float, ptr %i.q, align 4, !tbaa !38, !alias.scope !398
  %broadcast.splatinsert181 = insertelement <4 x float> poison, float %i.bp, i64 0
  %broadcast.splat182 = shufflevector <4 x float> %broadcast.splatinsert181, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bq = load float, ptr %i.r, align 4, !tbaa !38, !alias.scope !398
  %broadcast.splatinsert179 = insertelement <4 x float> poison, float %i.bq, i64 0
  %broadcast.splat180 = shufflevector <4 x float> %broadcast.splatinsert179, <4 x float> poison, <4 x i32> zeroinitializer
  %i.br = load float, ptr %i.s, align 4, !tbaa !38, !alias.scope !398
  %broadcast.splatinsert183 = insertelement <4 x float> poison, float %i.br, i64 0
  %broadcast.splat184 = shufflevector <4 x float> %broadcast.splatinsert183, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.bs ; 3 uses
  %next.gep166 = getelementptr i8, ptr %i.e, i64 %i.bs ; 3 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !38, !alias.scope !399 ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %next.gep, i64 %i.j
  %wide.load167 = load <4 x float>, ptr %i.bt, align 4, !tbaa !38, !alias.scope !400 ; 3 uses
  %i.bu = fmul <4 x float> %wide.load167, %broadcast.splat
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat169, <4 x float> %i.bu)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %next.gep, i64 %i.l
  %wide.load170 = load <4 x float>, ptr %i.bw, align 4, !tbaa !38, !alias.scope !401 ; 3 uses
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load170, <4 x float> %broadcast.splat172, <4 x float> %i.bv)
  %i.by = fmul <4 x float> %wide.load167, %broadcast.splat174
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat176, <4 x float> %i.by)
  %i.ca = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load170, <4 x float> %broadcast.splat178, <4 x float> %i.bz)
  %i.cb = fmul <4 x float> %wide.load167, %broadcast.splat180
  %i.cc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat182, <4 x float> %i.cb)
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load170, <4 x float> %broadcast.splat184, <4 x float> %i.cc)
  store <4 x float> %i.bx, ptr %next.gep166, align 4, !tbaa !38, !alias.scope !402, !noalias !403
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %next.gep166, i64 %i.j
  store <4 x float> %i.ca, ptr %i.ce, align 4, !tbaa !38, !alias.scope !404, !noalias !405
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %next.gep166, i64 %i.l
  store <4 x float> %i.cd, ptr %i.cf, align 4, !tbaa !38, !alias.scope !406, !noalias !407
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !396

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.045.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph ], [ %i.bg, %middle.block ]
  %.04044.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.bh, %middle.block ]
  %.04143.ph = phi ptr [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph ], [ %i.bi, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.045 = phi ptr [ %i.di, %scalar.ph ], [ %.045.ph, %scalar.ph.preheader ] ; 4 uses
  %.04044 = phi i32 [ %i.dg, %scalar.ph ], [ %.04044.ph, %scalar.ph.preheader ]
  %.04143 = phi ptr [ %i.dh, %scalar.ph ], [ %.04143.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ch = load float, ptr %.045, align 4, !tbaa !38 ; 3 uses
  %i.ci = load float, ptr %3, align 4, !tbaa !38
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.045, i64 %i.j
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !38 ; 3 uses
  %i.cl = load float, ptr %i.k, align 4, !tbaa !38
  %i.cm = fmul float %i.ck, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ci, float %i.cm)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.045, i64 %i.l
  %i.cp = load float, ptr %i.co, align 4, !tbaa !38 ; 3 uses
  %i.cq = load float, ptr %i.m, align 4, !tbaa !38
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cq, float %i.cn)
  %i.cs = load float, ptr %i.n, align 4, !tbaa !38
  %i.ct = load float, ptr %i.o, align 4, !tbaa !38
  %i.cu = fmul float %i.ck, %i.ct
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.cs, float %i.cu)
  %i.cw = load float, ptr %i.p, align 4, !tbaa !38
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cw, float %i.cv)
  %i.cy = load float, ptr %i.q, align 4, !tbaa !38
  %i.cz = load float, ptr %i.r, align 4, !tbaa !38
  %i.da = fmul float %i.ck, %i.cz
  %i.db = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.cy, float %i.da)
  %i.dc = load float, ptr %i.s, align 4, !tbaa !38
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.dc, float %i.db)
  store float %i.cr, ptr %.04143, align 4, !tbaa !38
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.04143, i64 %i.j
  store float %i.cx, ptr %i.de, align 4, !tbaa !38
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.04143, i64 %i.l
  store float %i.dd, ptr %i.df, align 4, !tbaa !38
  %i.dg = add nuw i32 %.04044, 1                  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.04143, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %.045, i64 4
  %exitcond.not = icmp eq i32 %i.dg, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !397
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv11bioinspired11RetinaColor21applyLMS2LabTransformERSt8valarrayIfE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(349) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !23     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23
  %.not = icmp eq i64 %i.a, %i.c                  ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.3, i64 noundef 115) ; 0 uses
  %i.e = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !14
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #17
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i8, ptr %i.k, align 8, !tbaa !66
  %.not.i1.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 67
  %i.n = load i8, ptr %i.m, align 1, !tbaa !67
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.j)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef signext i8 %i.q(ptr noundef nonnull align 8 dereferenceable(570) %i.j, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.n, %bb.d ], [ %i.r, %bb.e ]
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 0 uses
  br label %_ZN2cv11bioinspired11RetinaColor31_applyImageColorSpaceConversionERKSt8valarrayIfERS3_PKf.exit

bb.f:                                             ; preds = %bb.a
  %i.u = udiv i64 %i.a, 3                         ; 3 uses
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %_ZN2cv11bioinspired11RetinaColor31_applyImageColorSpaceConversionERKSt8valarrayIfERS3_PKf.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !24   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24   ; 5 uses
  %i.aa = shl i64 %i.a, 1
  %i.ab = udiv i64 %i.aa, 3
  %i.ac = and i64 %i.u, 4294967295                ; 7 uses
  %i.ad = and i64 %i.ab, 4294967295               ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.ac, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ae = ptrtoaddr ptr %i.z to i64               ; 3 uses
  %i.af = ptrtoaddr ptr %i.x to i64               ; 3 uses
  %i.ag = shl nuw nsw i64 %i.ac, 2                ; 4 uses
  %i.ah = shl nuw nsw i64 %i.ad, 2                ; 5 uses
  %i.ai = add nsw i64 %i.ah, -1
  %diff.check23 = icmp ult i64 %i.ai, 15
  %i.aj = sub i64 %i.af, %i.ae                    ; 3 uses
  %i.ak = sub i64 %i.ah, %i.aj
  %diff.check24 = icmp ugt i64 %i.ak, -16
  %conflict.rdx25 = or i1 %diff.check23, %diff.check24
  %i.al = sub i64 %i.ag, %i.aj
  %diff.check26 = icmp ugt i64 %i.al, -16
  %conflict.rdx27 = or i1 %conflict.rdx25, %diff.check26
  %i.am = add i64 %i.aj, -1
  %diff.check28 = icmp ult i64 %i.am, 15
  %conflict.rdx29 = or i1 %conflict.rdx27, %diff.check28
  %i.an = sub nsw i64 %i.ag, %i.ah
  %diff.check30 = icmp ugt i64 %i.an, -16
  %conflict.rdx31 = or i1 %conflict.rdx29, %diff.check30
  %i.ao = add i64 %i.ag, %i.af
  %i.ap = sub i64 %i.ao, %i.ae                    ; 2 uses
  %i.aq = sub i64 %i.ah, %i.ap
  %diff.check32 = icmp ugt i64 %i.aq, -16
  %conflict.rdx33 = or i1 %conflict.rdx31, %diff.check32
  %i.ar = add i64 %i.ap, -1
  %diff.check34 = icmp ult i64 %i.ar, 15
  %conflict.rdx35 = or i1 %conflict.rdx33, %diff.check34
  %i.as = add i64 %i.ah, %i.af
  %i.at = sub i64 %i.as, %i.ae                    ; 2 uses
  %i.au = sub i64 %i.ag, %i.at
  %diff.check36 = icmp ugt i64 %i.au, -16
  %conflict.rdx37 = or i1 %conflict.rdx35, %diff.check36
  %i.av = add i64 %i.at, -1
  %diff.check38 = icmp ult i64 %i.av, 15
  %conflict.rdx39 = or i1 %conflict.rdx37, %diff.check38
  br i1 %conflict.rdx39, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, 4294967292               ; 4 uses
  %i.aw = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.ax = getelementptr i8, ptr %i.z, i64 %i.aw
  %i.ay = trunc nuw i64 %n.vec to i32
  %i.az = getelementptr i8, ptr %i.x, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.ba ; 3 uses
  %next.gep40 = getelementptr i8, ptr %i.x, i64 %i.ba ; 3 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !38 ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %next.gep, i64 %i.ac
  %wide.load41 = load <4 x float>, ptr %i.bb, align 4, !tbaa !38 ; 3 uses
  %i.bc = fmul <4 x float> %wide.load41, splat (float 5.774000e-01)
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 5.774000e-01), <4 x float> %i.bc)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %next.gep, i64 %i.ad
  %wide.load42 = load <4 x float>, ptr %i.be, align 4, !tbaa !38 ; 3 uses
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load42, <4 x float> splat (float 5.774000e-01), <4 x float> %i.bd)
  %i.bg = fmul <4 x float> %wide.load41, splat (float 4.082000e-01)
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 4.082000e-01), <4 x float> %i.bg)
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load42, <4 x float> splat (float -8.165000e-01), <4 x float> %i.bh)
  %i.bj = fmul <4 x float> %wide.load41, splat (float f0xBF350481)
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float f0x3F350481), <4 x float> %i.bj)
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load42, <4 x float> zeroinitializer, <4 x float> %i.bk)
  store <4 x float> %i.bf, ptr %next.gep40, align 4, !tbaa !38
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %next.gep40, i64 %i.ac
  store <4 x float> %i.bi, ptr %i.bm, align 4, !tbaa !38
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %next.gep40, i64 %i.ad
  store <4 x float> %i.bl, ptr %i.bn, align 4, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !408

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZN2cv11bioinspired11RetinaColor31_applyImageColorSpaceConversionERKSt8valarrayIfERS3_PKf.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.045.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i ], [ %i.ax, %middle.block ]
  %.04044.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.ay, %middle.block ]
  %.04143.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i ], [ %i.az, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.045.i = phi ptr [ %i.ch, %scalar.ph ], [ %.045.i.ph, %scalar.ph.preheader ] ; 4 uses
  %.04044.i = phi i32 [ %i.cf, %scalar.ph ], [ %.04044.i.ph, %scalar.ph.preheader ]
  %.04143.i = phi ptr [ %i.cg, %scalar.ph ], [ %.04143.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bp = load float, ptr %.045.i, align 4, !tbaa !38 ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.045.i, i64 %i.ac
  %i.br = load float, ptr %i.bq, align 4, !tbaa !38 ; 3 uses
  %i.bs = fmul float %i.br, 5.774000e-01
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bp, float 5.774000e-01, float %i.bs)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.045.i, i64 %i.ad
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !38 ; 3 uses
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float 5.774000e-01, float %i.bt)
  %i.bx = fmul float %i.br, 4.082000e-01
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bp, float 4.082000e-01, float %i.bx)
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bv, float -8.165000e-01, float %i.by)
  %i.ca = fmul float %i.br, f0xBF350481
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bp, float f0x3F350481, float %i.ca)
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bv, float 0.000000e+00, float %i.cb)
  store float %i.bw, ptr %.04143.i, align 4, !tbaa !38
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.04143.i, i64 %i.ac
  store float %i.bz, ptr %i.cd, align 4, !tbaa !38
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.04143.i, i64 %i.ad
  store float %i.cc, ptr %i.ce, align 4, !tbaa !38
  %i.cf = add nuw i32 %.04044.i, 1                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.04143.i, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.045.i, i64 4
  %exitcond.not.i = icmp eq i32 %i.cf, %i.v
  br i1 %exitcond.not.i, label %_ZN2cv11bioinspired11RetinaColor31_applyImageColorSpaceConversionERKSt8valarrayIfERS3_PKf.exit, label %scalar.ph, !llvm.loop !409

_ZN2cv11bioinspired11RetinaColor31_applyImageColorSpaceConversionERKSt8valarrayIfERS3_PKf.exit: ; preds = %scalar.ph, %middle.block, %bb.f, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret i1 %.not
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv11bioinspired11RetinaColor24Parallel_computeGradientD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv11bioinspired11RetinaColor24Parallel_computeGradientclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !73     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !74   ; 2 uses
  %.not34 = icmp eq i32 %i.a, %i.c
  br i1 %.not34, label %._crit_edge36.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !78   ; 4 uses
  %i.f = add i32 %i.e, -2                         ; 2 uses
  %i.g = icmp ugt i32 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  br i1 %i.g, label %.preheader.preheader, label %._crit_edge36.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext i32 %i.f to i64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !77   ; 2 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !79
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.03235 = phi i32 [ %i.q, %._crit_edge ], [ %i.a, %.preheader.preheader ] ; 2 uses
  %i.p = mul i32 %i.e, %.03235
  br label %bb.b

._crit_edge36.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.b
  %i.q = add nsw i32 %.03235, 1                   ; 2 uses
  %.not = icmp eq i32 %i.q, %i.c
  br i1 %.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !410

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 2, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.r = trunc nuw i64 %indvars.iv to i32
  %i.s = add i32 %i.p, %i.r                       ; 10 uses
  %i.t = add i32 %i.s, %i.e
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !38
  %i.x = sub i32 %i.s, %i.e
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !38
  %i.ab = add i32 %i.s, 1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !38
  %i.af = add i32 %i.s, -1
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !38
  %i.aj = zext i32 %i.s to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !38
  %i.am = sub i32 %i.s, %i.k
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !38
  %i.aq = add i32 %i.s, -2
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !38
  %i.au = add i32 %i.k, %i.s
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !38
  %i.ay = add i32 %i.s, 2
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !38
  %i.bc = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %i.w, i64 1
  %i.be = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.aa, i64 1
  %i.bg = fsub <2 x float> %i.bd, %i.bf
  %i.bh = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bg)
  %i.bi = insertelement <2 x float> poison, float %i.al, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bk = insertelement <2 x float> poison, float %i.at, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.ap, i64 1
  %i.bm = fsub <2 x float> %i.bj, %i.bl
  %i.bn = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bm)
  %i.bo = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.ax, i64 1
  %i.bq = fsub <2 x float> %i.bp, %i.bj
  %i.br = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bq)
  %i.bs = fadd <2 x float> %i.bn, %i.br
  %i.bt = fmul <2 x float> %i.bs, splat (float 2.500000e-01)
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bt) ; 2 uses
  %i.bv = extractelement <2 x float> %i.bu, i64 0
  %i.bw = extractelement <2 x float> %i.bu, i64 1
  %i.bx = fcmp olt float %i.bv, %i.bw             ; 2 uses
  %i.by = add i32 %i.o, %i.s
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.aj
  %. = select i1 %i.bx, float 6.000000e-02, float 5.700000e-01
  %.42 = select i1 %i.bx, float 5.700000e-01, float 6.000000e-02
  store float %., ptr %i.ca, align 4, !tbaa !38
  store float %.42, ptr %i.cb, align 4, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !411
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv11bioinspired11RetinaColor48Parallel_adaptiveHorizontalCausalFilter_addInputD0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv11bioinspired11RetinaColor48Parallel_adaptiveHorizontalCausalFilter_addInputclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !73     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !89   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !74   ; 2 uses
  %.not28 = icmp ne i32 %i.a, %i.e
  %i.f = icmp ne i32 %i.c, 0
  %or.cond = select i1 %.not28, i1 %i.f, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge33.split

.preheader.preheader:                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88
  %i.i = mul i32 %i.c, %i.a
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.j
  %xtraiter = and i32 %i.c, 3                     ; 3 uses
  %i.r = icmp ult i32 %i.c, 4
  %unroll_iter = and i32 %i.c, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod48 = icmp ne i32 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.01532 = phi i32 [ %i.y, %._crit_edge ], [ %i.a, %.preheader.preheader ]
  %.01631 = phi ptr [ %.lcssa43, %._crit_edge ], [ %i.k, %.preheader.preheader ] ; 2 uses
  %.01730 = phi ptr [ %.lcssa44, %._crit_edge ], [ %i.n, %.preheader.preheader ] ; 2 uses
  %.01929 = phi ptr [ %.lcssa, %._crit_edge ], [ %i.q, %.preheader.preheader ] ; 2 uses
  br i1 %i.r, label %.epil.preheader, label %.preheader.new

._crit_edge33.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %.01424.epil.init = phi float [ 0.000000e+00, %.preheader ], [ %i.av, %._crit_edge.unr-lcssa ]
  %.123.epil.init = phi ptr [ %.01631, %.preheader ], [ %i.at, %._crit_edge.unr-lcssa ]
  %.11822.epil.init = phi ptr [ %.01730, %.preheader ], [ %i.ar, %._crit_edge.unr-lcssa ]
  %.12021.epil.init = phi ptr [ %.01929, %.preheader ], [ %i.aw, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.01424.epil = phi float [ %.01424.epil.init, %.epil.preheader ], [ %i.w, %bb.b ]
  %.123.epil = phi ptr [ %.123.epil.init, %.epil.preheader ], [ %i.u, %bb.b ] ; 2 uses
  %.11822.epil = phi ptr [ %.11822.epil.init, %.epil.preheader ], [ %i.s, %bb.b ] ; 2 uses
  %.12021.epil = phi ptr [ %.12021.epil.init, %.epil.preheader ], [ %i.x, %bb.b ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %.11822.epil, i64 4 ; 2 uses
  %i.t = load float, ptr %.11822.epil, align 4, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %.123.epil, i64 4 ; 2 uses
  %i.v = load float, ptr %.123.epil, align 4, !tbaa !38
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float %.01424.epil, float %i.t) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.12021.epil, i64 4 ; 2 uses
  store float %i.w, ptr %.12021.epil, align 4, !tbaa !38
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !412

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %.lcssa44 = phi ptr [ %i.ar, %._crit_edge.unr-lcssa ], [ %i.s, %bb.b ]
  %.lcssa43 = phi ptr [ %i.at, %._crit_edge.unr-lcssa ], [ %i.u, %bb.b ]
  %.lcssa = phi ptr [ %i.aw, %._crit_edge.unr-lcssa ], [ %i.x, %bb.b ]
  %i.y = add nsw i32 %.01532, 1                   ; 2 uses
  %.not = icmp eq i32 %i.y, %i.e
  br i1 %.not, label %._crit_edge33.split, label %.preheader, !llvm.loop !413

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.01424 = phi float [ %i.av, %.preheader.new ], [ 0.000000e+00, %.preheader ]
  %.123 = phi ptr [ %i.at, %.preheader.new ], [ %.01631, %.preheader ] ; 5 uses
  %.11822 = phi ptr [ %i.ar, %.preheader.new ], [ %.01730, %.preheader ] ; 5 uses
  %.12021 = phi ptr [ %i.aw, %.preheader.new ], [ %.01929, %.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %.11822, i64 4
  %i.aa = load float, ptr %.11822, align 4, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %.123, i64 4
  %i.ac = load float, ptr %.123, align 4, !tbaa !38
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %.01424, float %i.aa) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.12021, i64 4
  store float %i.ad, ptr %.12021, align 4, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %.11822, i64 8
  %i.ag = load float, ptr %i.z, align 4, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %.123, i64 8
  %i.ai = load float, ptr %i.ab, align 4, !tbaa !38
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ad, float %i.ag) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.12021, i64 8
  store float %i.aj, ptr %i.ae, align 4, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %.11822, i64 12
  %i.am = load float, ptr %i.af, align 4, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %.123, i64 12
  %i.ao = load float, ptr %i.ah, align 4, !tbaa !38
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.aj, float %i.am) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.12021, i64 12
  store float %i.ap, ptr %i.ak, align 4, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %.11822, i64 16 ; 3 uses
  %i.as = load float, ptr %i.al, align 4, !tbaa !38
  %i.at = getelementptr inbounds nuw i8, ptr %.123, i64 16 ; 3 uses
  %i.au = load float, ptr %i.an, align 4, !tbaa !38
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float %i.ap, float %i.as) ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.12021, i64 16 ; 3 uses
  store float %i.av, ptr %i.aq, align 4, !tbaa !38
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !414
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv11bioinspired11RetinaColor50Parallel_adaptiveVerticalAnticausalFilter_multGainD0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv11bioinspired11RetinaColor50Parallel_adaptiveVerticalAnticausalFilter_multGainclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !94   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !93   ; 6 uses
  %i.g = mul i32 %i.f, %i.d
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h
  %i.j = zext i32 %i.d to i64
  %i.k = sub nsw i64 0, %i.j                      ; 6 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !92
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.h
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.k
  %i.q = load i32, ptr %1, align 4, !tbaa !73     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !74   ; 2 uses
  %.not25 = icmp eq i32 %i.q, %i.s
  br i1 %.not25, label %._crit_edge29.split, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.a
  %.not30 = icmp eq i32 %i.f, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %.not30, label %._crit_edge29.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph28
  %i.u = sext i32 %i.q to i64
  %xtraiter = and i32 %i.f, 1
  %i.v = icmp eq i32 %i.f, 1
  %unroll_iter = and i32 %i.f, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod34 = trunc i32 %i.f to i1
  br label %.lr.ph

._crit_edge29.split:                              ; preds = %._crit_edge, %.lr.ph28, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.u, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.new

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.01723.epil.init = phi ptr [ %i.x, %.lr.ph ], [ %i.ar, %._crit_edge.unr-lcssa ]
  %.01822.epil.init = phi ptr [ %i.w, %.lr.ph ], [ %i.aq, %._crit_edge.unr-lcssa ] ; 2 uses
  %.01921.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.an, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.y = load float, ptr %.01822.epil.init, align 4, !tbaa !38
  %i.z = load float, ptr %.01723.epil.init, align 4, !tbaa !38
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float %.01921.epil.init, float %i.y)
  %i.ab = load float, ptr %i.t, align 8, !tbaa !95
  %i.ac = fmul float %i.ab, %i.aa
  store float %i.ac, ptr %.01822.epil.init, align 4, !tbaa !38
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ad = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.s, %i.ad
  br i1 %.not, label %._crit_edge29.split, label %.lr.ph, !llvm.loop !415

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.01723 = phi ptr [ %i.ar, %.lr.ph.new ], [ %i.x, %.lr.ph ] ; 2 uses
  %.01822 = phi ptr [ %i.aq, %.lr.ph.new ], [ %i.w, %.lr.ph ] ; 3 uses
  %.01921 = phi float [ %i.an, %.lr.ph.new ], [ 0.000000e+00, %.lr.ph ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ae = load float, ptr %.01822, align 4, !tbaa !38
  %i.af = load float, ptr %.01723, align 4, !tbaa !38
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float %.01921, float %i.ae) ; 2 uses
  %i.ah = load float, ptr %i.t, align 8, !tbaa !95
  %i.ai = fmul float %i.ah, %i.ag
  store float %i.ai, ptr %.01822, align 4, !tbaa !38
  %i.aj = getelementptr inbounds [4 x i8], ptr %.01822, i64 %i.k ; 3 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %.01723, i64 %i.k ; 2 uses
  %i.al = load float, ptr %i.aj, align 4, !tbaa !38
  %i.am = load float, ptr %i.ak, align 4, !tbaa !38
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ag, float %i.al) ; 3 uses
  %i.ao = load float, ptr %i.t, align 8, !tbaa !95
  %i.ap = fmul float %i.ao, %i.an
  store float %i.ap, ptr %i.aj, align 4, !tbaa !38
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.k ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.k ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !416
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #11

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv11bioinspired25Parallel_clipBufferValuesIfED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv11bioinspired25Parallel_clipBufferValuesIfEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !73     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !74   ; 4 uses
  %.not14 = icmp eq i32 %i.a, %i.c
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = sext i32 %i.a to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = sub i32 %i.c, %i.a
  %.neg = add i32 %i.a, 1
  %xtraiter = and i32 %i.j, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph
  %i.k = load float, ptr %i.g, align 4, !tbaa !38 ; 2 uses
  %i.l = load float, ptr %i.h, align 4, !tbaa !83 ; 2 uses
  %i.m = fcmp ogt float %i.k, %i.l
  br i1 %i.m, label %.sink.split.prol, label %bb.b

bb.b:                                             ; preds = %.prol.preheader
  %i.n = load float, ptr %i.i, align 8, !tbaa !82 ; 2 uses
  %i.o = fcmp olt float %i.k, %i.n
  br i1 %i.o, label %.sink.split.prol, label %.prol.loopexit.unr-lcssa

.sink.split.prol:                                 ; preds = %bb.b, %.prol.preheader
  %.sink.prol = phi float [ %i.l, %.prol.preheader ], [ %i.n, %bb.b ]
  store float %.sink.prol, ptr %i.g, align 4, !tbaa !38
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.sink.split.prol, %bb.b
  %i.p = add nsw i32 %i.a, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.016.unr = phi i32 [ %i.a, %.lr.ph ], [ %i.p, %.prol.loopexit.unr-lcssa ]
  %.01015.unr = phi ptr [ %i.g, %.lr.ph ], [ %i.q, %.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i32 %i.c, %.neg
  br i1 %i.r, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %bb.f, %bb.a
  ret void

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.f
  %.016 = phi i32 [ %i.ad, %bb.f ], [ %.016.unr, %.prol.loopexit ]
  %.01015 = phi ptr [ %i.ae, %bb.f ], [ %.01015.unr, %.prol.loopexit ] ; 4 uses
  %i.s = load float, ptr %.01015, align 4, !tbaa !38 ; 2 uses
  %i.t = load float, ptr %i.h, align 4, !tbaa !83 ; 2 uses
  %i.u = fcmp ogt float %i.s, %i.t
  br i1 %i.u, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %.lr.ph.new
  %i.v = load float, ptr %i.i, align 8, !tbaa !82 ; 2 uses
  %i.w = fcmp olt float %i.s, %i.v
  br i1 %i.w, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %.lr.ph.new
  %.sink = phi float [ %i.t, %.lr.ph.new ], [ %i.v, %bb.c ]
  store float %.sink, ptr %.01015, align 4, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.01015, i64 4 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !38 ; 2 uses
  %i.z = load float, ptr %i.h, align 4, !tbaa !83 ; 2 uses
  %i.aa = fcmp ogt float %i.y, %i.z
  br i1 %i.aa, label %.sink.split.1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load float, ptr %i.i, align 8, !tbaa !82 ; 2 uses
  %i.ac = fcmp olt float %i.y, %i.ab
  br i1 %i.ac, label %.sink.split.1, label %bb.f

.sink.split.1:                                    ; preds = %bb.e, %bb.d
  %.sink.1 = phi float [ %i.z, %bb.d ], [ %i.ab, %bb.e ]
  store float %.sink.1, ptr %i.x, align 4, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.1, %bb.e
  %i.ad = add nsw i32 %.016, 2                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01015, i64 8
  %.not.1 = icmp eq i32 %i.ad, %i.c
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !417
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null, null, null, null}
!1 = distinct !{!1, !39}
!2 = distinct !{!2, !39}
!3 = distinct !{!3, !39}
!4 = distinct !{!4, !39}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!"p1 int", !16, i64 0}
!18 = !{!"_ZTSSt8valarrayIjE", !15, i64 0, !17, i64 8}
!19 = !{!18, !15, i64 0}
!20 = !{!18, !17, i64 8}
!21 = !{!"p1 float", !16, i64 0}
!22 = !{!"_ZTSSt8valarrayIfE", !15, i64 0, !21, i64 8}
!23 = !{!22, !15, i64 0}
!24 = !{!22, !21, i64 8}
!25 = !{!"_ZTSN2cv11bioinspired14TemplateBufferIfEE", !22, i64 8, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56}
!26 = !{!"float", !9, i64 0}
!27 = !{!"_ZTSN2cv11bioinspired17BasicRetinaFilterE", !25, i64 0, !22, i64 64, !10, i64 80, !10, i64 84, !22, i64 88, !22, i64 104, !22, i64 120, !26, i64 136, !26, i64 140, !26, i64 144, !26, i64 148, !26, i64 152, !26, i64 156, !26, i64 160, !26, i64 164}
!28 = !{!"bool", !9, i64 0}
!29 = !{!"p1 _ZTSN2cv11bioinspired14TemplateBufferIfEE", !16, i64 0}
!30 = !{!"p1 _ZTSSt8valarrayIfE", !16, i64 0}
!31 = !{!"_ZTSN2cv11bioinspired11RetinaColorE", !27, i64 8, !10, i64 176, !28, i64 180, !26, i64 184, !29, i64 192, !30, i64 200, !18, i64 208, !22, i64 224, !22, i64 240, !22, i64 256, !22, i64 272, !22, i64 288, !22, i64 304, !22, i64 320, !26, i64 336, !26, i64 340, !26, i64 344, !28, i64 348}
!32 = !{!31, !29, i64 192}
!33 = !{!31, !30, i64 200}
!34 = !{!31, !28, i64 348}
!35 = !{!31, !10, i64 176}
!36 = !{!31, !28, i64 180}
!37 = !{!31, !26, i64 184}
!38 = !{!26, !26, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{!31, !26, i64 344}
!43 = !{!25, !15, i64 48}
!44 = !{!25, !15, i64 32}
!45 = !{!31, !26, i64 336}
!46 = !{!31, !26, i64 340}
!47 = !{!"_ZTSSt13_Ios_Fmtflags", !9, i64 0}
!48 = !{!"_ZTSSt12_Ios_Iostate", !9, i64 0}
!49 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!50 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !15, i64 8}
!51 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!52 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!53 = !{!"_ZTSSt6locale", !52, i64 0}
!54 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !47, i64 24, !48, i64 28, !48, i64 32, !49, i64 40, !50, i64 48, !9, i64 64, !10, i64 192, !51, i64 200, !53, i64 208}
!55 = !{!"p1 _ZTSSo", !16, i64 0}
!56 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!57 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!58 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!59 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!60 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !54, i64 0, !55, i64 216, !9, i64 224, !28, i64 225, !56, i64 232, !57, i64 240, !58, i64 248, !59, i64 256}
!61 = !{!60, !57, i64 240}
!62 = !{!"_ZTSNSt6locale5facetE", !10, i64 8}
!63 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!64 = !{!"p1 short", !16, i64 0}
!65 = !{!"_ZTSSt5ctypeIcE", !62, i64 0, !63, i64 16, !28, i64 24, !17, i64 32, !17, i64 40, !64, i64 48, !9, i64 56, !9, i64 57, !9, i64 313, !9, i64 569}
!66 = !{!65, !9, i64 56}
!67 = !{!9, !9, i64 0}
!68 = !{!10, !10, i64 0}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!25, !15, i64 56}
!71 = !{!25, !15, i64 24}
!72 = !{!"_ZTSN2cv5RangeE", !10, i64 0, !10, i64 4}
!73 = !{!72, !10, i64 0}
!74 = !{!72, !10, i64 4}
!75 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!76 = !{!"_ZTSN2cv11bioinspired11RetinaColor24Parallel_computeGradientE", !75, i64 0, !21, i64 8, !21, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36}
!77 = !{!76, !21, i64 8}
!78 = !{!76, !10, i64 24}
!79 = !{!76, !10, i64 36}
!80 = !{!"_ZTSN2cv11bioinspired25Parallel_clipBufferValuesIfEE", !75, i64 0, !21, i64 8, !26, i64 16, !26, i64 20}
!81 = !{!80, !21, i64 8}
!82 = !{!80, !26, i64 16}
!83 = !{!80, !26, i64 20}
!84 = !{!27, !26, i64 164}
!85 = !{!"_ZTSN2cv11bioinspired11RetinaColor48Parallel_adaptiveHorizontalCausalFilter_addInputE", !75, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !10, i64 32}
!86 = !{!85, !21, i64 8}
!87 = !{!85, !21, i64 16}
!88 = !{!85, !21, i64 24}
!89 = !{!85, !10, i64 32}
!90 = !{!"_ZTSN2cv11bioinspired11RetinaColor50Parallel_adaptiveVerticalAnticausalFilter_multGainE", !75, i64 0, !21, i64 8, !21, i64 16, !10, i64 24, !10, i64 28, !26, i64 32}
!91 = !{!90, !21, i64 8}
!92 = !{!90, !21, i64 16}
!93 = !{!90, !10, i64 24}
!94 = !{!90, !10, i64 28}
!95 = !{!90, !26, i64 32}
!96 = distinct !{!96, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!97 = distinct !{!97, !96, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!98 = distinct !{!98, !39, !40, !41}
!99 = distinct !{!99, !39, !41, !40}
!100 = distinct !{!100, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!101 = distinct !{!101, !100, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!102 = distinct !{!102, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!103 = distinct !{!103, !102, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!104 = distinct !{!104, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!105 = distinct !{!105, !104, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!106 = distinct !{!106, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!107 = distinct !{!107, !106, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!108 = distinct !{!108, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!109 = distinct !{!109, !108, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!110 = distinct !{!110, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!111 = distinct !{!111, !110, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!112 = distinct !{!112, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!113 = distinct !{!113, !112, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!114 = distinct !{!114, !39, !40, !41}
!115 = distinct !{!115, !39, !41, !40}
!116 = !{!97}
!117 = !{!101}
!118 = !{!103}
!119 = !{!105}
!120 = !{!107}
!121 = !{!109}
!122 = !{!111}
!123 = !{!113}
!124 = distinct !{!124, !39}
!125 = distinct !{!125, !39}
!126 = distinct !{!126, !39}
!127 = distinct !{!127, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!128 = distinct !{!128, !127, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!129 = distinct !{!129, !69}
!130 = distinct !{!130, !39, !40, !41}
!131 = distinct !{!131, !39}
!132 = distinct !{!132, !39, !41, !40}
!133 = !{!128}
!134 = distinct !{!134, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!135 = distinct !{!135, !134, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!136 = distinct !{!136, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!137 = distinct !{!137, !136, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!138 = distinct !{!138, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!139 = distinct !{!139, !138, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!140 = distinct !{!140, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!141 = distinct !{!141, !140, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!142 = distinct !{!142, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!143 = distinct !{!143, !142, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!144 = distinct !{!144, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!145 = distinct !{!145, !144, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!146 = distinct !{!146, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!147 = distinct !{!147, !146, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!148 = distinct !{!148, !39, !40, !41}
!149 = distinct !{!149, !39, !41, !40}
!150 = !{!135}
!151 = !{!137}
!152 = !{!139}
!153 = !{!141}
!154 = !{!143}
!155 = !{!145}
!156 = !{!147}
!157 = !{ptr @_ZN2cv11bioinspired11RetinaColorD2Ev}
!158 = distinct !{!158, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!159 = distinct !{!159, !158, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!160 = distinct !{!160, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!161 = distinct !{!161, !160, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!162 = distinct !{!162, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!163 = distinct !{!163, !162, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!164 = distinct !{!164, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!165 = distinct !{!165, !164, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!166 = distinct !{!166, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!167 = distinct !{!167, !166, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!168 = distinct !{!168, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!169 = distinct !{!169, !168, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!170 = distinct !{!170, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!171 = distinct !{!171, !170, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!172 = distinct !{!172, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!173 = distinct !{!173, !172, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!174 = distinct !{!174, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!175 = distinct !{!175, !174, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!176 = distinct !{!176, !39, !40, !41}
!177 = distinct !{!177, !39, !41, !40}
!178 = !{!159}
!179 = !{!161}
!180 = !{!163}
!181 = !{!165}
!182 = !{!167}
!183 = !{!169}
!184 = !{!171}
!185 = !{!173}
!186 = !{!175}
!187 = distinct !{!187, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!188 = distinct !{!188, !187, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!189 = distinct !{!189, !69}
!190 = distinct !{!190, !39}
!191 = distinct !{!191, i1 false, !"LVerDomain"}
!192 = distinct !{!192, !191}
!193 = distinct !{!193, !191}
!194 = distinct !{!194, !191}
!195 = distinct !{!195, !191}
!196 = distinct !{!196, !191}
!197 = distinct !{!197, !39, !40, !41}
!198 = distinct !{!198, i1 false, !"LVerDomain"}
!199 = distinct !{!199, !198}
!200 = distinct !{!200, !198}
!201 = distinct !{!201, !198}
!202 = distinct !{!202, !198}
!203 = distinct !{!203, !198}
!204 = distinct !{!204, !198}
!205 = distinct !{!205, !198}
!206 = distinct !{!206, !198}
!207 = distinct !{!207, !39, !40, !41}
!208 = distinct !{!208, !39, !40}
!209 = distinct !{!209, !39, !40}
!210 = distinct !{!210, !69}
!211 = distinct !{!211, i1 false, !"LVerDomain"}
!212 = distinct !{!212, !211}
!213 = distinct !{!213, !211}
!214 = distinct !{!214, !211}
!215 = distinct !{!215, !211}
!216 = distinct !{!216, !211}
!217 = distinct !{!217, !211}
!218 = distinct !{!218, !211}
!219 = distinct !{!219, !211}
!220 = distinct !{!220, !211}
!221 = distinct !{!221, !39, !40, !41}
!222 = distinct !{!222, !39, !40}
!223 = distinct !{!223, !39}
!224 = distinct !{!224, i1 false, !"LVerDomain"}
!225 = distinct !{!225, !224}
!226 = distinct !{!226, !224}
!227 = distinct !{!227, !39, !40, !41}
!228 = distinct !{!228, !39, !40}
!229 = distinct !{!229, i1 false, !"LVerDomain"}
!230 = distinct !{!230, !229}
!231 = distinct !{!231, !229}
!232 = distinct !{!232, !229}
!233 = distinct !{!233, !229}
!234 = distinct !{!234, !39, !40, !41}
!235 = distinct !{!235, !69}
!236 = distinct !{!236, i1 true, !"_ZSt15__valarray_fillIfEvPT_mRKS0_"}
!237 = distinct !{!237, !236, !"_ZSt15__valarray_fillIfEvPT_mRKS0_: argument 0"}
!238 = distinct !{!238, !39, !40}
!239 = distinct !{!239, i1 false, !"LVerDomain"}
!240 = distinct !{!240, !239}
!241 = distinct !{!241, !239}
!242 = distinct !{!242, !239}
!243 = distinct !{!243, !239}
!244 = distinct !{!244, !239}
!245 = distinct !{!245, !239}
!246 = distinct !{!246, !239}
!247 = distinct !{!247, !239}
!248 = distinct !{!248, !239}
!249 = distinct !{!249, !239}
!250 = distinct !{!250, !39, !40, !41}
!251 = distinct !{!251, !39}
!252 = distinct !{!252, !39, !40}
!253 = !{!188}
!254 = !{!192}
!255 = !{!193}
!256 = !{!195, !194, !192}
!257 = !{!195}
!258 = !{!194, !192}
!259 = !{!194}
!260 = !{!196}
!261 = !{!193, !195, !194, !192}
!262 = !{!199}
!263 = !{!200}
!264 = !{!205, !204, !203, !202, !201, !199}
!265 = !{!201}
!266 = !{!205}
!267 = !{!204, !203, !202, !201, !199}
!268 = !{!202}
!269 = !{!204}
!270 = !{!203, !202, !201, !199}
!271 = !{!203}
!272 = !{!206}
!273 = !{!200, !205, !204, !203, !202, !201, !199}
!274 = !{!212}
!275 = !{!213}
!276 = !{!214}
!277 = !{!220, !219, !218, !212, !213, !217, !216, !215}
!278 = !{!215}
!279 = !{!220}
!280 = !{!219, !218, !212, !213, !217, !216, !215}
!281 = !{!216}
!282 = !{!219}
!283 = !{!218, !212, !213, !217, !216, !215}
!284 = !{!217}
!285 = !{!218}
!286 = !{!212, !213, !217, !216, !215}
!287 = !{!76, !21, i64 16}
!288 = !{!76, !10, i64 28}
!289 = !{!76, !10, i64 32}
!290 = !{!225}
!291 = !{!226}
!292 = !{!230}
!293 = !{!231}
!294 = !{!233, !232, !230}
!295 = !{!233}
!296 = !{!232, !230}
!297 = !{!232}
!298 = !{!237}
!299 = !{!240}
!300 = !{!241}
!301 = !{!242}
!302 = !{!243}
!303 = !{!249, !248, !247, !246, !240, !245, !244, !241, !242}
!304 = !{!246}
!305 = !{!244}
!306 = !{!249}
!307 = !{!248, !247, !246, !240, !245, !244, !241, !242}
!308 = !{!247}
!309 = !{!245}
!310 = !{!248}
!311 = !{!247, !246, !240, !245, !244, !241, !242}
!312 = !{i8 0, i8 2}
!313 = !{}
!314 = distinct !{!314, i1 false, !"LVerDomain"}
!315 = distinct !{!315, !314}
!316 = distinct !{!316, !314}
!317 = distinct !{!317, !314}
!318 = distinct !{!318, !39, !40, !41}
!319 = distinct !{!319, !39, !40}
!320 = !{!315}
!321 = !{!316}
!322 = !{!315, !317}
!323 = !{!317}
!324 = distinct !{!324, !69}
!325 = distinct !{!325, !39, !40, !41}
!326 = distinct !{!326, !39, !40}
!327 = distinct !{!327, !39, !40, !41}
!328 = distinct !{!328, !39}
!329 = distinct !{!329, !39, !41, !40}
!330 = distinct !{!330, !39, !40, !41}
!331 = distinct !{!331, !39, !41, !40}
!332 = distinct !{!332, i1 false, !"LVerDomain"}
!333 = distinct !{!333, !332}
!334 = distinct !{!334, !332}
!335 = distinct !{!335, !332}
!336 = distinct !{!336, !39, !40, !41}
!337 = distinct !{!337, !39, !40}
!338 = !{!333}
!339 = !{!334}
!340 = !{!333, !335}
!341 = !{!335}
!342 = distinct !{!342, i1 false, !"LVerDomain"}
!343 = distinct !{!343, !342}
!344 = distinct !{!344, !342}
!345 = distinct !{!345, !342}
!346 = distinct !{!346, !342}
!347 = distinct !{!347, !342}
!348 = distinct !{!348, !39, !40, !41}
!349 = distinct !{!349, !39}
!350 = distinct !{!350, !39, !40}
!351 = distinct !{!351, !39, !40, !41}
!352 = distinct !{!352, !39}
!353 = distinct !{!353, !39, !40}
!354 = distinct !{!354, i1 false, !"LVerDomain"}
!355 = distinct !{!355, !354}
!356 = distinct !{!356, !354}
!357 = distinct !{!357, !354}
!358 = distinct !{!358, !354}
!359 = distinct !{!359, !354}
!360 = distinct !{!360, !39, !40, !41}
!361 = distinct !{!361, !39}
!362 = distinct !{!362, !39, !40}
!363 = !{!343}
!364 = !{!347, !346, !345, !344}
!365 = !{!346}
!366 = !{!345}
!367 = !{!344}
!368 = !{!347}
!369 = !{!346, !345, !344}
!370 = !{!355}
!371 = !{!356}
!372 = !{!357}
!373 = !{!358}
!374 = !{!359}
!375 = !{!355, !356, !357, !358}
!376 = distinct !{!376, !39, !40, !41}
!377 = distinct !{!377, !39}
!378 = distinct !{!378, !39, !40}
!379 = distinct !{!379, !39}
!380 = distinct !{!380, !39}
!381 = distinct !{!381, !39, !40, !41}
!382 = distinct !{!382, !39, !41, !40}
!383 = !{!15, !15, i64 0}
!384 = distinct !{!384, !39}
!385 = distinct !{!385, !39}
!386 = distinct !{!386, !39, !40, !41}
!387 = distinct !{!387, !39, !40}
!388 = distinct !{!388, i1 false, !"LVerDomain"}
!389 = distinct !{!389, !388}
!390 = distinct !{!390, !388}
!391 = distinct !{!391, !388}
!392 = distinct !{!392, !388}
!393 = distinct !{!393, !388}
!394 = distinct !{!394, !388}
!395 = distinct !{!395, !388}
!396 = distinct !{!396, !39, !40, !41}
!397 = distinct !{!397, !39, !40}
!398 = !{!389}
!399 = !{!390}
!400 = !{!391}
!401 = !{!392}
!402 = !{!393}
!403 = !{!395, !394, !392, !391, !390, !389}
!404 = !{!395}
!405 = !{!394, !392, !391, !390, !389}
!406 = !{!394}
!407 = !{!392, !391, !390, !389}
!408 = distinct !{!408, !39, !40, !41}
!409 = distinct !{!409, !39, !40}
!410 = distinct !{!410, !39}
!411 = distinct !{!411, !39}
!412 = distinct !{!412, !69}
!413 = distinct !{!413, !39}
!414 = distinct !{!414, !39}
!415 = distinct !{!415, !39}
!416 = distinct !{!416, !39}
!417 = distinct !{!417, !39}
end_hunk_0
