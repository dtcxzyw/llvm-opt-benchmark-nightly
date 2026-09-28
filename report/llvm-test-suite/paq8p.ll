Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/paq8p?download=true
inline.NumInlined: 1537
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_Z8wavModelR5Mixer:bb.a
  %i.br = and i32 %i.ax, %i.bq
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %i.az, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !22
  %i.bv = icmp eq i8 %i.bu, 97
  br i1 %i.bv, label %.preheader511, label %.loopexit512

.preheader511:                                    ; preds = %bb.ar
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 784 ; 3 uses
  br label %bb.bb

bb.as:                                            ; preds = %bb.f
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.at:                                            ; preds = %bb.j
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.au:                                            ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.av:                                            ; preds = %bb.r
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.aw:                                            ; preds = %bb.v
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ax:                                            ; preds = %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ay:                                            ; preds = %bb.ad
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.az:                                            ; preds = %bb.ah
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ba:                                            ; preds = %bb.al
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.bb:                                            ; preds = %.preheader511, %bb.bl
  %.0250.neg525 = phi i32 [ -32, %.preheader511 ], [ %.0250.neg, %bb.bl ] ; 6 uses
  %.0250524 = phi i32 [ 32, %.preheader511 ], [ %i.gp, %bb.bl ] ; 3 uses
  %i.cg = load i32, ptr @pos, align 4, !tbaa !18  ; 13 uses
  %i.ch = sub nsw i32 %i.cg, %.0250524
  %i.ci = load i32, ptr @buf, align 8, !tbaa !33
  %i.cj = add nsw i32 %i.ci, -1                   ; 12 uses
  %i.ck = and i32 %i.cj, %i.ch
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !35 ; 12 uses
  %i.cm = sext i32 %i.ck to i64
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !22
  %i.cp = icmp eq i8 %i.co, 102
  br i1 %i.cp, label %bb.bc, label %bb.bl

bb.bc:                                            ; preds = %bb.bb
  %.neg488 = add nuw nsw i32 %.0250.neg525, 1
  %i.cq = add i32 %.neg488, %i.cg
  %i.cr = and i32 %i.cj, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %i.cl, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !22
  %i.cv = icmp eq i8 %i.cu, 109
  br i1 %i.cv, label %bb.bd, label %bb.bl

bb.bd:                                            ; preds = %bb.bc
  %.neg489 = add nuw nsw i32 %.0250.neg525, 2
  %i.cw = add i32 %.neg489, %i.cg
  %i.cx = and i32 %i.cj, %i.cw
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %i.cl, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !22
  %i.db = icmp eq i8 %i.da, 116
  br i1 %i.db, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %.neg490 = add nuw nsw i32 %.0250.neg525, 3
  %i.dc = add i32 %.neg490, %i.cg
  %i.dd = and i32 %i.cj, %i.dc
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %i.cl, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !22
  %i.dh = icmp eq i8 %i.dg, 32
  br i1 %i.dh, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %bb.be
  %.neg491 = add nuw nsw i32 %.0250.neg525, 8
  %i.di = add i32 %.neg491, %i.cg                 ; 2 uses
  %i.dj = and i32 %i.cj, %i.di
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %i.cl, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !22
  %i.dn = zext i8 %i.dm to i16
  %i.do = add i32 %i.di, 1
  %i.dp = and i32 %i.cj, %i.do
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds i8, ptr %i.cl, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !22
  %i.dt = zext i8 %i.ds to i16
  %i.du = shl nuw i16 %i.dt, 8
  %trunc = or disjoint i16 %i.du, %i.dn
  switch i16 %trunc, label %bb.bl [
    i16 1, label %bb.bg
    i16 -2, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf
  %.neg492 = add nuw nsw i32 %.0250.neg525, 22
  %i.dv = add i32 %.neg492, %i.cg
  %i.dw = and i32 %i.cj, %i.dv
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %i.cl, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !22  ; 2 uses
  %i.ea = zext i8 %i.dz to i32                    ; 4 uses
  store i32 %i.ea, ptr @_ZZ8wavModelR5MixerE4bits, align 4, !tbaa !18
  %i.eb = add nuw nsw i32 %i.ea, 7
  %i.ec = lshr i32 %i.eb, 3                       ; 2 uses
  store i32 %i.ec, ptr @_ZZ8wavModelR5MixerE5bytes, align 4, !tbaa !18
  %.neg493 = add nuw nsw i32 %.0250.neg525, 10
  %i.ed = add i32 %.neg493, %i.cg
  %i.ee = and i32 %i.cj, %i.ed
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds i8, ptr %i.cl, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !22  ; 7 uses
  %i.ei = zext i8 %i.eh to i32                    ; 3 uses
  store i32 %i.ei, ptr @_ZZ8wavModelR5MixerE8channels, align 4, !tbaa !18
  %i.ej = mul nuw nsw i32 %i.ec, %i.ei
  store i32 %i.ej, ptr @_ZZ8wavModelR5MixerE1w, align 4, !tbaa !18
  %i.ek = add i32 %i.cg, -4
  %i.el = and i32 %i.cj, %i.ek
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds i8, ptr %i.cl, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !22
  %i.ep = zext i8 %i.eo to i32
  %i.eq = add i32 %i.cg, -3
  %i.er = and i32 %i.cj, %i.eq
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds i8, ptr %i.cl, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !22
  %i.ev = zext i8 %i.eu to i32
  %i.ew = shl nuw nsw i32 %i.ev, 8
  %i.ex = or disjoint i32 %i.ew, %i.ep
  %i.ey = add i32 %i.cg, -2
  %i.ez = and i32 %i.cj, %i.ey
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %i.cl, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !22
  %i.fd = zext i8 %i.fc to i32
  %i.fe = shl nuw nsw i32 %i.fd, 16
  %i.ff = or disjoint i32 %i.ex, %i.fe
  %i.fg = add i32 %i.cg, -1
  %i.fh = and i32 %i.cj, %i.fg
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds i8, ptr %i.cl, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !22
  %i.fl = zext i8 %i.fk to i32
  %i.fm = shl nuw nsw i32 %i.fl, 24
  %i.fn = or disjoint i32 %i.ff, %i.fm            ; 2 uses
  store i32 %i.fn, ptr @_ZZ8wavModelR5MixerE1s, align 4, !tbaa !18
  %i.fo = add i8 %i.eh, -1
  %or.cond = icmp ult i8 %i.fo, 2
  br i1 %or.cond, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  switch i8 %i.dz, label %bb.bk [
    i8 16, label %.preheader510.lr.ph
    i8 8, label %.preheader510.lr.ph
  ]

.preheader510.lr.ph:                              ; preds = %bb.bh, %bb.bh
  %i.fp = add nsw i32 %i.fn, %i.cg
  store i32 %i.fp, ptr @_ZZ8wavModelR5MixerE3eof, align 4, !tbaa !18
  %i.fq = load i32, ptr @_ZL1S, align 4, !tbaa !18 ; 2 uses
  %.b287 = load i1, ptr @_ZL1D, align 4
  %i.fr = select i1 %.b287, i32 12, i32 0         ; 2 uses
  %i.fs = add nuw nsw i32 %i.fr, %i.fq
  %.not299518 = icmp slt i32 %i.fs, 0
  br i1 %.not299518, label %.preheader510.us.preheader, label %.preheader510.preheader

.preheader510.preheader:                          ; preds = %.preheader510.lr.ph
  %i.ft = or disjoint i32 %i.fr, 1
  %i.fu = add i32 %i.ft, %i.fq
  %i.fv = shl nuw nsw i8 %i.eh, 2
  %i.fw = zext nneg i8 %i.fv to i64               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 @_ZZ8wavModelR5MixerE7counter, i8 0, i64 %i.fw, i1 false), !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 @_ZZ8wavModelR5MixerE1n, i8 0, i64 %i.fw, i1 false), !tbaa !18
  %wide.trip.count654 = zext nneg i8 %i.eh to i64
  %wide.trip.count649 = zext i32 %i.fu to i64     ; 4 uses
  br label %.preheader510

.preheader510.us.preheader:                       ; preds = %.preheader510.lr.ph
  %i.fx = shl nuw nsw i8 %i.eh, 2
  %i.fy = zext nneg i8 %i.fx to i64               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 @_ZZ8wavModelR5MixerE7counter, i8 0, i64 %i.fy, i1 false), !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 @_ZZ8wavModelR5MixerE1n, i8 0, i64 %i.fy, i1 false), !tbaa !18
  %wide.trip.count659 = zext nneg i8 %i.eh to i64
  %min.iters.check = icmp ult i8 %i.eh, 4
  br i1 %min.iters.check, label %.preheader510.us, label %vector.body

vector.body:                                      ; preds = %.preheader510.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader510.us.preheader ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %index ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.fz, align 16, !tbaa !257
  store <2 x double> splat (double 1.000000e+00), ptr %i.ga, align 16, !tbaa !257
  %index.next = add nuw i64 %index, 4
  br label %vector.body, !llvm.loop !231

.preheader510.us:                                 ; preds = %.preheader510.us.preheader, %.preheader510.us
  %indvars.iv656 = phi i64 [ %indvars.iv.next657, %.preheader510.us ], [ 0, %.preheader510.us.preheader ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv656
  store double 1.000000e+00, ptr %i.gb, align 8, !tbaa !257
  %indvars.iv.next657 = add nuw nsw i64 %indvars.iv656, 1 ; 2 uses
  %exitcond660.not = icmp eq i64 %indvars.iv.next657, %wide.trip.count659
  br i1 %exitcond660.not, label %._crit_edge523, label %.preheader510.us, !llvm.loop !232

.preheader510:                                    ; preds = %.preheader510.preheader, %._crit_edge
  %indvars.iv651 = phi i64 [ 0, %.preheader510.preheader ], [ %indvars.iv.next652, %._crit_edge ] ; 3 uses
  %invariant.gep520 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv651
  br label %.preheader509

._crit_edge523:                                   ; preds = %._crit_edge, %.preheader510.us
  %i.gc = add nuw nsw i32 %i.ei, %i.ea
  store i32 %i.gc, ptr @_ZL5wmode, align 4, !tbaa !18
  %i.gd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.ea) ; 0 uses
  %i.ge = load i32, ptr @_ZZ8wavModelR5MixerE8channels, align 4, !tbaa !18
  %i.gf = icmp eq i32 %i.ge, 1
  br i1 %i.gf, label %bb.bi, label %bb.bj

.preheader509:                                    ; preds = %.preheader510, %.unr-lcssa
  %indvars.iv = phi i64 [ 0, %.preheader510 ], [ %indvars.iv.next, %.unr-lcssa ] ; 6 uses
  %i.gg = sub nsw i64 %wide.trip.count649, %indvars.iv
  %gep521 = getelementptr inbounds nuw [784 x i8], ptr %invariant.gep520, i64 %indvars.iv ; 5 uses
  %xtraiter = and i64 %i.gg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader509, %.prol.preheader
  %indvars.iv645.prol = phi i64 [ %indvars.iv.next646.prol, %.prol.preheader ], [ %indvars.iv, %.preheader509 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader509 ]
  %gep.prol = getelementptr inbounds nuw [16 x i8], ptr %gep521, i64 %indvars.iv645.prol
  store double 0.000000e+00, ptr %gep.prol, align 8, !tbaa !257
  %indvars.iv.next646.prol = add nuw nsw i64 %indvars.iv645.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !233

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader509
  %indvars.iv645.unr = phi i64 [ %indvars.iv, %.preheader509 ], [ %indvars.iv.next646.prol, %.prol.preheader ]
  %i.gh = sub nsw i64 %indvars.iv, %wide.trip.count649
  %i.gi = icmp ugt i64 %i.gh, -4
  br i1 %i.gi, label %.unr-lcssa, label %.preheader509.new

.preheader509.new:                                ; preds = %.prol.loopexit, %.preheader509.new
  %indvars.iv645 = phi i64 [ %indvars.iv.next646.3, %.preheader509.new ], [ %indvars.iv645.unr, %.prol.loopexit ] ; 5 uses
  %gep = getelementptr inbounds nuw [16 x i8], ptr %gep521, i64 %indvars.iv645
  store double 0.000000e+00, ptr %gep, align 8, !tbaa !257
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %gep521, i64 %indvars.iv645
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store double 0.000000e+00, ptr %gep.1, align 8, !tbaa !257
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %gep521, i64 %indvars.iv645
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  store double 0.000000e+00, ptr %gep.2, align 8, !tbaa !257
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %gep521, i64 %indvars.iv645
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  store double 0.000000e+00, ptr %gep.3, align 8, !tbaa !257
  %indvars.iv.next646.3 = add nuw nsw i64 %indvars.iv645, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next646.3, %wide.trip.count649
  br i1 %exitcond.not.3, label %.unr-lcssa, label %.preheader509.new, !llvm.loop !234

.unr-lcssa:                                       ; preds = %.preheader509.new, %.prol.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond650.not = icmp eq i64 %indvars.iv.next, %wide.trip.count649
  br i1 %exitcond650.not, label %._crit_edge, label %.preheader509, !llvm.loop !235

._crit_edge:                                      ; preds = %.unr-lcssa
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv651
  store double 1.000000e+00, ptr %i.gm, align 8, !tbaa !257
  %indvars.iv.next652 = add nuw nsw i64 %indvars.iv651, 1 ; 2 uses
  %exitcond655.not = icmp eq i64 %indvars.iv.next652, %wide.trip.count654
  br i1 %exitcond655.not, label %._crit_edge523, label %.preheader510, !llvm.loop !236

bb.bi:                                            ; preds = %._crit_edge523
  %i.gn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15) ; 0 uses
  store i32 48, ptr @_ZL1S, align 4, !tbaa !18
  store i1 false, ptr @_ZL1D, align 4
  br label %bb.bl

bb.bj:                                            ; preds = %._crit_edge523
  %i.go = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16) ; 0 uses
  store i32 36, ptr @_ZL1S, align 4, !tbaa !18
  store i1 true, ptr @_ZL1D, align 4
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bh, %bb.bg
  store i32 %i.cg, ptr @_ZZ8wavModelR5MixerE3eof, align 4, !tbaa !18
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bf, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bi, %bb.bj, %bb.bk
  %i.gp = add nuw nsw i32 %.0250524, 1            ; 2 uses
  %.0250.neg = xor i32 %.0250524, -1
  %exitcond661.not = icmp eq i32 %i.gp, 1001
  br i1 %exitcond661.not, label %.loopexit512.loopexit, label %bb.bb, !llvm.loop !237

.loopexit512.loopexit:                            ; preds = %bb.bl
  %.pre = load i32, ptr @pos, align 4, !tbaa !18
  br label %.loopexit512

.loopexit512:                                     ; preds = %.loopexit512.loopexit, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %i.gq = phi i32 [ %.pre, %.loopexit512.loopexit ], [ %.pre728, %bb.ar ], [ %.pre728, %bb.aq ], [ %.pre728, %bb.ap ], [ %.pre728, %bb.ao ], [ %.pre728, %bb.an ] ; 3 uses
  %i.gr = load i32, ptr @_ZZ8wavModelR5MixerE3eof, align 4, !tbaa !18 ; 2 uses
  %i.gs = icmp sgt i32 %i.gq, %i.gr
  br i1 %i.gs, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.loopexit512
  store i32 0, ptr @_ZZ8wavModelR5MixerE8channels, align 4, !tbaa !18
  store i32 0, ptr @_ZZ8wavModelR5MixerE4bits, align 4, !tbaa !18
  br label %bb.cp

bb.bn:                                            ; preds = %.loopexit512
  %i.gt = load i32, ptr @bpos, align 4, !tbaa !18
  %.not301 = icmp eq i32 %i.gt, 0
  br i1 %.not301, label %bb.bo, label %bb.co

bb.bo:                                            ; preds = %bb.bn
  %i.gu = load i32, ptr @_ZZ8wavModelR5MixerE1s, align 4, !tbaa !18
  %i.gv = sub i32 %i.gq, %i.gr
  %i.gw = add i32 %i.gv, %i.gu                    ; 2 uses
  %i.gx = load i32, ptr @_ZZ8wavModelR5MixerE5bytes, align 4, !tbaa !18 ; 2 uses
  %i.gy = srem i32 %i.gw, %i.gx
  %i.gz = load i32, ptr @_ZZ8wavModelR5MixerE1w, align 4, !tbaa !18 ; 31 uses
  %i.ha = srem i32 %i.gw, %i.gz                   ; 13 uses
  %i.hb = sdiv i32 %i.ha, %i.gx                   ; 5 uses
  %.not302 = icmp eq i32 %i.gy, 0
  br i1 %.not302, label %.preheader508, label %_Z1ciiiii.exit395

.preheader508:                                    ; preds = %bb.bo
  %i.hc = load i32, ptr @_ZL1S, align 4, !tbaa !18 ; 3 uses
  %.b285526 = load i1, ptr @_ZL1D, align 4        ; 3 uses
  %i.hd = select i1 %.b285526, i32 12, i32 0
  %i.he = add nuw nsw i32 %i.hd, %i.hc
  %.not303527 = icmp slt i32 %i.he, 0
  br i1 %.not303527, label %._crit_edge529, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader508
  %i.hf = sext i32 %i.hb to i64                   ; 2 uses
  %i.hg = getelementptr inbounds [4 x i8], ptr @_ZZ8wavModelR5MixerE7counter, i64 %i.hf
  %invariant.gep = getelementptr [8 x i8], ptr %i.a, i64 %i.hf
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph, %bb.bs
  %.b285730 = phi i1 [ %.b285526, %.lr.ph ], [ %.b285, %bb.bs ]
  %i.hh = phi i32 [ %i.hc, %.lr.ph ], [ %i.hw, %bb.bs ] ; 2 uses
  %indvars.iv662 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next663, %bb.bs ] ; 6 uses
  %i.hi = load i32, ptr %i.hg, align 4, !tbaa !18 ; 2 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = icmp slt i64 %indvars.iv662, %i.hj
  br i1 %i.hk, label %._crit_edge757, label %bb.bq

._crit_edge757:                                   ; preds = %bb.bp
  %.pre761 = trunc nuw nsw i64 %indvars.iv662 to i32
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hl = xor i32 %i.hh, -1
  %i.hm = trunc nuw nsw i64 %indvars.iv662 to i32 ; 2 uses
  %i.hn = add i32 %i.hm, %i.hl                    ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, -1
  %i.hp = icmp slt i32 %i.hn, %i.hi
  %or.cond321 = and i1 %i.ho, %i.hp
  br i1 %or.cond321, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %._crit_edge757, %bb.bq
  %.pre-phi762 = phi i32 [ %.pre761, %._crit_edge757 ], [ %i.hm, %bb.bq ]
  %gep530 = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv662 ; 2 uses
  %i.hq = load double, ptr %gep530, align 8, !tbaa !257
  %i.hr = tail call noundef i32 @_Z1Xii(i32 noundef 0, i32 noundef 1)
  %i.hs = tail call noundef i32 @_Z1Xii(i32 noundef %.pre-phi762, i32 noundef 1)
  %i.ht = mul nsw i32 %i.hs, %i.hr
  %i.hu = sitofp i32 %i.ht to double
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.hq, double f0x3FEFDF3B645A1CAC, double %i.hu)
  store double %i.hv, ptr %gep530, align 8, !tbaa !257
  %.pre729 = load i32, ptr @_ZL1S, align 4, !tbaa !18
  %.b285.pre = load i1, ptr @_ZL1D, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %.b285 = phi i1 [ %.b285730, %bb.bq ], [ %.b285.pre, %bb.br ] ; 3 uses
  %i.hw = phi i32 [ %i.hh, %bb.bq ], [ %.pre729, %bb.br ] ; 3 uses
  %indvars.iv.next663 = add nuw nsw i64 %indvars.iv662, 1
  %i.hx = select i1 %.b285, i32 12, i32 0
  %i.hy = add nuw nsw i32 %i.hx, %i.hw
  %i.hz = sext i32 %i.hy to i64
  %.not303.not = icmp slt i64 %indvars.iv662, %i.hz
  br i1 %.not303.not, label %bb.bp, label %._crit_edge529, !llvm.loop !238
end_hunk_0
