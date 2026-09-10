Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/triangle?download=true
inline.NumInlined: 349
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z12insertvertexP4meshP8behaviorPdP4otriP4osubii:bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !76
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !76
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  store ptr %i.dn, ptr %i.dq, align 8, !tbaa !76
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 82720
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !114 ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 82752
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !113
  %i.dw = sext i32 %i.dv to i64
  %i.dx = shl nsw i64 %i.dw, 3
  %scevgep.i = getelementptr i8, ptr %i.df, i64 %i.dx
  %i.dy = zext nneg i32 %i.ds to i64
  %i.dz = shl nuw nsw i64 %i.dy, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.dz, i1 false), !tbaa !23
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.s
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !42
  %.not27.i = icmp eq i32 %i.eb, 0
  br i1 %.not27.i, label %_Z12maketriangleP4meshP8behaviorP4otri.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 82756
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !85
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.ee
  store double -1.000000e+00, ptr %i.ef, align 8, !tbaa !23
  br label %_Z12maketriangleP4meshP8behaviorP4otri.exit

_Z12maketriangleP4meshP8behaviorP4otri.exit:      ; preds = %._crit_edge.i, %bb.t
  %i.eg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %i.eg, align 8, !tbaa !74
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge650
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 82728 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !150
  %i.ej = add nsw i64 %i.ei, 1
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !150
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_Z12maketriangleP4meshP8behaviorP4otri.exit
  %i.ek = phi i32 [ %i.cx, %_Z12maketriangleP4meshP8behaviorP4otri.exit ], [ %i.cp, %bb.u ] ; 3 uses
  %i.el = phi ptr [ %i.df, %_Z12maketriangleP4meshP8behaviorP4otri.exit ], [ undef, %bb.u ] ; 18 uses
  %.sroa.8207.0 = phi i64 [ %i.dc, %_Z12maketriangleP4meshP8behaviorP4otri.exit ], [ 0, %bb.u ] ; 2 uses
  %.sroa.0203.0 = phi ptr [ %i.de, %_Z12maketriangleP4meshP8behaviorP4otri.exit ], [ undef, %bb.u ] ; 2 uses
  %i.em = ptrtoaddr ptr %i.el to i64
  %i.en = tail call noundef ptr @_Z9poolallocP10memorypool(ptr noundef nonnull %0) ; 27 uses
  %i.eo = ptrtoaddr ptr %i.en to i64
  store ptr %i.en, ptr %12, align 8, !tbaa !73
  %i.ep = load ptr, ptr %i.ct, align 8, !tbaa !83 ; 3 uses
  store ptr %i.ep, ptr %i.en, align 8, !tbaa !76
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !76
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store ptr %i.ep, ptr %i.er, align 8, !tbaa !76
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 24 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.es, i8 0, i64 24, i1 false)
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !65
  %.not.i567 = icmp eq i32 %i.eu, 0
  br i1 %.not.i567, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 82872
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !84 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !76
  %i.ey = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  store ptr %i.ew, ptr %i.ey, align 8, !tbaa !76
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  store ptr %i.ew, ptr %i.ez, align 8, !tbaa !76
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 82720
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !114 ; 6 uses
  %i.fc = icmp sgt i32 %i.fb, 0                   ; 3 uses
  br i1 %i.fc, label %.lr.ph.i570, label %._crit_edge.i568

.lr.ph.i570:                                      ; preds = %bb.x
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 82752
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !113
  %i.ff = sext i32 %i.fe to i64
  %i.fg = shl nsw i64 %i.ff, 3
  %scevgep.i571 = getelementptr i8, ptr %i.en, i64 %i.fg
  %i.fh = zext nneg i32 %i.fb to i64
  %i.fi = shl nuw nsw i64 %i.fh, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i571, i8 0, i64 %i.fi, i1 false), !tbaa !23
  br label %._crit_edge.i568

._crit_edge.i568:                                 ; preds = %.lr.ph.i570, %bb.x
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !42
  %.not27.i569 = icmp eq i32 %i.fk, 0             ; 3 uses
  br i1 %.not27.i569, label %_Z12maketriangleP4meshP8behaviorP4otri.exit572, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i568
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 82756
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !85
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.fn
  store double -1.000000e+00, ptr %i.fo, align 8, !tbaa !23
  br label %_Z12maketriangleP4meshP8behaviorP4otri.exit572

_Z12maketriangleP4meshP8behaviorP4otri.exit572:   ; preds = %._crit_edge.i568, %bb.y
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i32 0, ptr %i.fp, align 8, !tbaa !74
  %i.fq = getelementptr inbounds [4 x i8], ptr @plus1mod3, i64 %i.ca ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !32
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr [8 x i8], ptr %i.bw, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 24     ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !76 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.cl, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !76
  %i.fy = load i32, ptr @plus1mod3, align 4, !tbaa !32
  %i.fz = sext i32 %i.fy to i64                   ; 5 uses
  %i.ga = getelementptr [8 x i8], ptr %i.en, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 24
  store ptr %i.fx, ptr %i.gb, align 8, !tbaa !76
  %i.gc = load i32, ptr @minus1mod3, align 4, !tbaa !32
  %i.gd = sext i32 %i.gc to i64                   ; 4 uses
  %i.ge = getelementptr [8 x i8], ptr %i.en, i64 %i.gd ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 24
  store ptr %i.fv, ptr %i.gf, align 8, !tbaa !76
  store ptr %2, ptr %i.es, align 8, !tbaa !76
  store ptr %2, ptr %i.fu, align 8, !tbaa !76
  br i1 %i.fc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_Z12maketriangleP4meshP8behaviorP4otri.exit572
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 82752
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !113
  %i.gi = sext i32 %i.gh to i64                   ; 6 uses
  %wide.trip.count = zext nneg i32 %i.fb to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.fb, 6
  %i.gj = sub i64 %i.by, %i.eo
  %diff.check = icmp ugt i64 %i.gj, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gk = add nsw i64 %index, %i.gi               ; 2 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %wide.load = load <2 x double>, ptr %i.gl, align 8, !tbaa !23
  %wide.load707 = load <2 x double>, ptr %i.gm, align 8, !tbaa !23
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.gk ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store <2 x double> %wide.load, ptr %i.gn, align 8, !tbaa !23
  store <2 x double> %wide.load707, ptr %i.go, align 8, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gp = icmp eq i64 %index.next, %n.vec
  br i1 %i.gp, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gq = add nsw i64 %indvars.iv.prol, %i.gi     ; 2 uses
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.gq
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !23
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.gq
  store double %i.gs, ptr %i.gt, align 8, !tbaa !23
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !236

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.gu = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.gv = icmp ugt i64 %i.gu, -4
  br i1 %i.gv, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %i.gi
  %invariant.op774 = add i64 2, %i.gi
  %invariant.op776 = add i64 3, %i.gi
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.gw = add nsw i64 %indvars.iv, %i.gi          ; 2 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.gw
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !23
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.gw
  store double %i.gy, ptr %i.gz, align 8, !tbaa !23
  %.reass = add i64 %indvars.iv, %invariant.op    ; 2 uses
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %.reass
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !23
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.en, i64 %.reass
  store double %i.hb, ptr %i.hc, align 8, !tbaa !23
  %.reass775 = add i64 %indvars.iv, %invariant.op774 ; 2 uses
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %.reass775
  %i.he = load double, ptr %i.hd, align 8, !tbaa !23
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.en, i64 %.reass775
  store double %i.he, ptr %i.hf, align 8, !tbaa !23
  %.reass777 = add i64 %indvars.iv, %invariant.op776 ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %.reass777
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !23
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.en, i64 %.reass777
  store double %i.hh, ptr %i.hi, align 8, !tbaa !23
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !237

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_Z12maketriangleP4meshP8behaviorP4otri.exit572
  br i1 %.not27.i569, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 82756
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !85
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.hl
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !23
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.hl
  store double %i.hn, ptr %i.ho, align 8, !tbaa !23
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge
  br i1 %.not538, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hp = sext i32 %i.ek to i64                   ; 2 uses
  %i.hq = getelementptr inbounds [4 x i8], ptr @minus1mod3, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !32
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr [8 x i8], ptr %i.cs, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !76
  %i.hw = getelementptr [8 x i8], ptr %i.el, i64 %i.fz
  %i.hx = getelementptr i8, ptr %i.hw, i64 24
  store ptr %i.fv, ptr %i.hx, align 8, !tbaa !76
  %i.hy = getelementptr [8 x i8], ptr %i.el, i64 %i.gd
  %i.hz = getelementptr i8, ptr %i.hy, i64 24
  store ptr %i.hv, ptr %i.hz, align 8, !tbaa !76
  %i.ia = getelementptr i8, ptr %i.el, i64 24
  store ptr %2, ptr %i.ia, align 8, !tbaa !76
  %i.ib = getelementptr inbounds [4 x i8], ptr @plus1mod3, i64 %i.hp
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !32
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr [8 x i8], ptr %i.cs, i64 %i.id
  %i.if = getelementptr i8, ptr %i.ie, i64 24
  store ptr %2, ptr %i.if, align 8, !tbaa !76
  br i1 %i.fc, label %.lr.ph621, label %._crit_edge622

.lr.ph621:                                        ; preds = %bb.ab
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 82752
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !113
  %i.ii = sext i32 %i.ih to i64                   ; 6 uses
  %wide.trip.count638 = zext nneg i32 %i.fb to i64 ; 5 uses
  %min.iters.check711 = icmp ult i32 %i.fb, 6
  %i.ij = sub i64 %i.cr, %i.em
  %diff.check709 = icmp ugt i64 %i.ij, -32
  %or.cond755 = or i1 %min.iters.check711, %diff.check709
  br i1 %or.cond755, label %scalar.ph710.preheader, label %vector.ph712

vector.ph712:                                     ; preds = %.lr.ph621
  %n.vec713 = and i64 %wide.trip.count638, 2147483644 ; 3 uses
  br label %vector.body714

vector.body714:                                   ; preds = %vector.body714, %vector.ph712
  %index715 = phi i64 [ 0, %vector.ph712 ], [ %index.next718, %vector.body714 ] ; 2 uses
  %i.ik = add nsw i64 %index715, %i.ii            ; 2 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.ik ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %wide.load716 = load <2 x double>, ptr %i.il, align 8, !tbaa !23
  %wide.load717 = load <2 x double>, ptr %i.im, align 8, !tbaa !23
  %i.in = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.ik ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  store <2 x double> %wide.load716, ptr %i.in, align 8, !tbaa !23
  store <2 x double> %wide.load717, ptr %i.io, align 8, !tbaa !23
  %index.next718 = add nuw i64 %index715, 4       ; 2 uses
  %i.ip = icmp eq i64 %index.next718, %n.vec713
  br i1 %i.ip, label %middle.block719, label %vector.body714, !llvm.loop !238

middle.block719:                                  ; preds = %vector.body714
  %cmp.n720 = icmp eq i64 %n.vec713, %wide.trip.count638
  br i1 %cmp.n720, label %._crit_edge622, label %scalar.ph710.preheader

scalar.ph710.preheader:                           ; preds = %.lr.ph621, %middle.block719
  %indvars.iv635.ph = phi i64 [ 0, %.lr.ph621 ], [ %n.vec713, %middle.block719 ] ; 3 uses
  %xtraiter761 = and i64 %wide.trip.count638, 3   ; 2 uses
  %lcmp.mod762.not = icmp eq i64 %xtraiter761, 0
  br i1 %lcmp.mod762.not, label %scalar.ph710.prol.loopexit, label %scalar.ph710.prol

scalar.ph710.prol:                                ; preds = %scalar.ph710.preheader, %scalar.ph710.prol
  %indvars.iv635.prol = phi i64 [ %indvars.iv.next636.prol, %scalar.ph710.prol ], [ %indvars.iv635.ph, %scalar.ph710.preheader ] ; 2 uses
  %prol.iter763 = phi i64 [ %prol.iter763.next, %scalar.ph710.prol ], [ 0, %scalar.ph710.preheader ]
  %i.iq = add nsw i64 %indvars.iv635.prol, %i.ii  ; 2 uses
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.iq
  %i.is = load double, ptr %i.ir, align 8, !tbaa !23
  %i.it = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.iq
  store double %i.is, ptr %i.it, align 8, !tbaa !23
  %indvars.iv.next636.prol = add nuw nsw i64 %indvars.iv635.prol, 1 ; 2 uses
  %prol.iter763.next = add i64 %prol.iter763, 1   ; 2 uses
  %prol.iter763.cmp.not = icmp eq i64 %prol.iter763.next, %xtraiter761
  br i1 %prol.iter763.cmp.not, label %scalar.ph710.prol.loopexit, label %scalar.ph710.prol, !llvm.loop !239

scalar.ph710.prol.loopexit:                       ; preds = %scalar.ph710.prol, %scalar.ph710.preheader
  %indvars.iv635.unr = phi i64 [ %indvars.iv635.ph, %scalar.ph710.preheader ], [ %indvars.iv.next636.prol, %scalar.ph710.prol ]
  %i.iu = sub nsw i64 %indvars.iv635.ph, %wide.trip.count638
  %i.iv = icmp ugt i64 %i.iu, -4
  br i1 %i.iv, label %._crit_edge622, label %scalar.ph710.preheader.new

scalar.ph710.preheader.new:                       ; preds = %scalar.ph710.prol.loopexit
  %invariant.op778 = add i64 1, %i.ii
  %invariant.op780 = add i64 2, %i.ii
  %invariant.op782 = add i64 3, %i.ii
  br label %scalar.ph710

scalar.ph710:                                     ; preds = %scalar.ph710, %scalar.ph710.preheader.new
  %indvars.iv635 = phi i64 [ %indvars.iv635.unr, %scalar.ph710.preheader.new ], [ %indvars.iv.next636.3, %scalar.ph710 ] ; 5 uses
  %i.iw = add nsw i64 %indvars.iv635, %i.ii       ; 2 uses
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.iw
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !23
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.iw
  store double %i.iy, ptr %i.iz, align 8, !tbaa !23
  %.reass779 = add i64 %indvars.iv635, %invariant.op778 ; 2 uses
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %.reass779
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !23
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.el, i64 %.reass779
  store double %i.jb, ptr %i.jc, align 8, !tbaa !23
  %.reass781 = add i64 %indvars.iv635, %invariant.op780 ; 2 uses
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %.reass781
  %i.je = load double, ptr %i.jd, align 8, !tbaa !23
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.el, i64 %.reass781
  store double %i.je, ptr %i.jf, align 8, !tbaa !23
  %.reass783 = add i64 %indvars.iv635, %invariant.op782 ; 2 uses
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %.reass783
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !23
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.el, i64 %.reass783
  store double %i.jh, ptr %i.ji, align 8, !tbaa !23
  %indvars.iv.next636.3 = add nuw nsw i64 %indvars.iv635, 4 ; 2 uses
  %exitcond639.not.3 = icmp eq i64 %indvars.iv.next636.3, %wide.trip.count638
  br i1 %exitcond639.not.3, label %._crit_edge622, label %scalar.ph710, !llvm.loop !240

._crit_edge622:                                   ; preds = %scalar.ph710.prol.loopexit, %scalar.ph710, %middle.block719, %bb.ab
  br i1 %.not27.i569, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge622
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 82756
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !85
  %i.jl = sext i32 %i.jk to i64                   ; 2 uses
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.jl
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !23
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.jl
  store double %i.jn, ptr %i.jo, align 8, !tbaa !23
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge622, %bb.ac, %bb.aa
  %i.jp = load i32, ptr %i.bx, align 8, !tbaa !128
  %.not541 = icmp eq i32 %i.jp, 0
  br i1 %.not541, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jq = getelementptr i8, ptr %i.cf, i64 48     ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !76
  %i.js = ptrtoint ptr %i.jr to i64               ; 3 uses
  %i.jt = and i64 %i.js, -4
  %i.ju = inttoptr i64 %i.jt to ptr               ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 82872
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !84 ; 4 uses
  %.not542 = icmp eq ptr %i.jw, %i.ju
  br i1 %.not542, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jx = and i64 %i.js, 1
  store ptr %i.jw, ptr %i.jq, align 8, !tbaa !76
  %i.jy = and i64 %i.js, -3
  %i.jz = inttoptr i64 %i.jy to ptr
  %i.ka = getelementptr i8, ptr %i.en, i64 48
  store ptr %i.jz, ptr %i.ka, align 8, !tbaa !76
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.jx
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 48
  store ptr %i.en, ptr %i.kc, align 8, !tbaa !76
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br i1 %.not538, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kd = sext i32 %i.ek to i64
  %i.ke = getelementptr [8 x i8], ptr %i.cs, i64 %i.kd
  %i.kf = getelementptr i8, ptr %i.ke, i64 48     ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !76
  %i.kh = ptrtoint ptr %i.kg to i64               ; 3 uses
  %i.ki = and i64 %i.kh, -4
  %i.kj = inttoptr i64 %i.ki to ptr               ; 2 uses
  %.not543 = icmp eq ptr %i.jw, %i.kj
  br i1 %.not543, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kk = and i64 %i.kh, 1
  store ptr %i.jw, ptr %i.kf, align 8, !tbaa !76
  %i.kl = and i64 %i.kh, -3
  %i.km = inttoptr i64 %i.kl to ptr
  %i.kn = getelementptr i8, ptr %i.el, i64 48
  store ptr %i.km, ptr %i.kn, align 8, !tbaa !76
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.kk
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 48
  store ptr %i.el, ptr %i.kp, align 8, !tbaa !76
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ai, %bb.ah, %bb.ad
  store ptr %i.cg, ptr %i.en, align 8, !tbaa !76
  %i.kq = ptrtoint ptr %i.en to i64               ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.en, ptr %i.kr, align 8, !tbaa !76
  %i.ks = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.kt = or i64 %i.ce, %i.ks
  %i.ku = inttoptr i64 %i.kt to ptr
  store ptr %i.ku, ptr %i.ge, align 8, !tbaa !76
  %i.kv = or i64 %i.gd, %i.kq
  %i.kw = inttoptr i64 %i.kv to ptr
  store ptr %i.kw, ptr %i.cf, align 8, !tbaa !76
  %i.kx = getelementptr inbounds [4 x i8], ptr @minus1mod3, i64 %i.gd
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !32 ; 3 uses
  store i32 %i.ky, ptr %i.fp, align 8, !tbaa !74
  br i1 %.not538, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kz = ptrtoint ptr %.sroa.0203.0 to i64
  %i.la = or i64 %.sroa.8207.0, %i.kz
  %i.lb = inttoptr i64 %i.la to ptr
  %i.lc = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.lb, ptr %i.el, align 8, !tbaa !76
  %i.ld = ptrtoint ptr %i.el to i64               ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0203.0, i64 %.sroa.8207.0
  store ptr %i.el, ptr %i.le, align 8, !tbaa !76
  %i.lf = sext i32 %i.ek to i64                   ; 2 uses
  %i.lg = or i64 %i.cr, %i.lf
  %i.lh = inttoptr i64 %i.lg to ptr
  %i.li = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.fz
  store ptr %i.lh, ptr %i.li, align 8, !tbaa !76
  %i.lj = or i64 %i.fz, %i.ld
  %i.lk = inttoptr i64 %i.lj to ptr
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.lf
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !76
  %i.lm = getelementptr inbounds [4 x i8], ptr @plus1mod3, i64 %i.fz
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !32 ; 2 uses
  store i32 %i.ln, ptr %i.lc, align 8, !tbaa !74
  %i.lo = sext i32 %i.ky to i64                   ; 2 uses
  %i.lp = or i64 %i.lo, %i.kq
  %i.lq = inttoptr i64 %i.lp to ptr
  %i.lr = sext i32 %i.ln to i64                   ; 2 uses
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.lr
  store ptr %i.lq, ptr %i.ls, align 8, !tbaa !76
  %i.lt = or i64 %i.lr, %i.ld
  %i.lu = inttoptr i64 %i.lt to ptr
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.lo
  store ptr %i.lu, ptr %i.lv, align 8, !tbaa !76
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br i1 %i.h, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lw = load ptr, ptr %4, align 8, !tbaa !87    ; 5 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !88 ; 4 uses
  %i.lz = sub nsw i32 3, %i.ly
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.lw, i64 %i.ma
  store ptr %2, ptr %i.mb, align 8, !tbaa !76
  %i.mc = sext i32 %i.ly to i64
  %i.md = getelementptr [8 x i8], ptr %i.lw, i64 %i.mc
  %i.me = getelementptr i8, ptr %i.md, i64 32
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !76
  %i.mg = sub nsw i32 5, %i.ly
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.lw, i64 %i.mh
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !76
  %i.mk = sub nsw i32 1, %i.ly                    ; 2 uses
  store i32 %i.mk, ptr %i.lx, align 8, !tbaa !88
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.lw, i64 %i.ml
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !76
  %i.mo = ptrtoint ptr %i.mn to i64               ; 3 uses
  %i.mp = and i64 %i.mo, 1
  %i.mq = and i64 %i.mo, -4
  %i.mr = inttoptr i64 %i.mq to ptr
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lw, i64 64
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !32
  call void @_Z12insertsubsegP4meshP8behaviorP4otrii(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %12, i32 noundef %i.mt)
  %i.mu = sext i32 %i.ky to i64
  %i.mv = getelementptr [8 x i8], ptr %i.en, i64 %i.mu
  %i.mw = getelementptr i8, ptr %i.mv, i64 48
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !76
  %i.my = ptrtoint ptr %i.mx to i64               ; 4 uses
  %i.mz = trunc i64 %i.my to i32
  %i.na = and i32 %i.mz, 1                        ; 2 uses
  %i.nb = and i64 %i.my, -4                       ; 2 uses
  %i.nc = inttoptr i64 %i.nb to ptr               ; 3 uses
  %i.nd = and i64 %i.my, 1
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.nd ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  store ptr %i.mf, ptr %i.nf, align 8, !tbaa !76
  %i.ng = sub nuw nsw i32 5, %i.na
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.nh
  store ptr %i.mj, ptr %i.ni, align 8, !tbaa !76
  %i.nj = and i64 %i.my, -3
  %i.nk = inttoptr i64 %i.nj to ptr
  %i.nl = load ptr, ptr %4, align 8, !tbaa !87    ; 3 uses
  %i.nm = load i32, ptr %i.lx, align 8, !tbaa !88 ; 2 uses
  %i.nn = sext i32 %i.nm to i64                   ; 2 uses
  %i.no = getelementptr inbounds [8 x i8], ptr %i.nl, i64 %i.nn
  store ptr %i.nk, ptr %i.no, align 8, !tbaa !76
  %i.np = ptrtoint ptr %i.nl to i64
  %i.nq = or i64 %i.nn, %i.np
  %i.nr = inttoptr i64 %i.nq to ptr
  store ptr %i.nr, ptr %i.ne, align 8, !tbaa !76
  %i.ns = xor i32 %i.na, 1
  %i.nt = and i64 %i.mo, -3
  %i.nu = inttoptr i64 %i.nt to ptr
  %i.nv = zext nneg i32 %i.ns to i64              ; 2 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.nv
  store ptr %i.nu, ptr %i.nw, align 8, !tbaa !76
  %i.nx = or disjoint i64 %i.nb, %i.nv
  %i.ny = inttoptr i64 %i.nx to ptr
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.mp
  store ptr %i.ny, ptr %i.nz, align 8, !tbaa !76
  %i.oa = sub nsw i32 1, %i.nm
  store i32 %i.oa, ptr %i.lx, align 8, !tbaa !88
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 82740
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !109
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds [4 x i8], ptr %2, i64 %i.od ; 2 uses
end_hunk_0
begin_hunk_1_@_Z12insertvertexP4meshP8behaviorPdP4otriP4osubii:bb.a
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qn, i64 64
  store ptr %i.qw, ptr %i.qz, align 8, !tbaa !76
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 82720 ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !114 ; 2 uses
  %i.rc = icmp sgt i32 %i.rb, 0
  br i1 %i.rc, label %.lr.ph.i576, label %._crit_edge.i574

.lr.ph.i576:                                      ; preds = %bb.ax
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 82752
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !113
  %i.rf = sext i32 %i.re to i64
  %i.rg = shl nsw i64 %i.rf, 3
  %scevgep.i577 = getelementptr i8, ptr %i.qn, i64 %i.rg
  %i.rh = zext nneg i32 %i.rb to i64
  %i.ri = shl nuw nsw i64 %i.rh, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i577, i8 0, i64 %i.ri, i1 false), !tbaa !23
  br label %._crit_edge.i574

._crit_edge.i574:                                 ; preds = %.lr.ph.i576, %bb.ax
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !42
  %.not27.i575 = icmp eq i32 %i.rk, 0
  br i1 %.not27.i575, label %_Z12maketriangleP4meshP8behaviorP4otri.exit578, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i574
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 82756
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !85
  %i.rn = sext i32 %i.rm to i64
  %i.ro = getelementptr inbounds [8 x i8], ptr %i.qn, i64 %i.rn
  store double -1.000000e+00, ptr %i.ro, align 8, !tbaa !23
  br label %_Z12maketriangleP4meshP8behaviorP4otri.exit578

_Z12maketriangleP4meshP8behaviorP4otri.exit578:   ; preds = %._crit_edge.i574, %bb.ay
  %i.rp = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i32 0, ptr %i.rp, align 8, !tbaa !74
  %i.rq = tail call noundef ptr @_Z9poolallocP10memorypool(ptr noundef nonnull %0) ; 24 uses
  %i.rr = ptrtoaddr ptr %i.rq to i64              ; 2 uses
  store ptr %i.rq, ptr %12, align 8, !tbaa !73
  %i.rs = load ptr, ptr %i.j, align 8, !tbaa !83  ; 3 uses
  store ptr %i.rs, ptr %i.rq, align 8, !tbaa !76
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  store ptr %i.rs, ptr %i.rt, align 8, !tbaa !76
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  store ptr %i.rs, ptr %i.ru, align 8, !tbaa !76
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rq, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rv, i8 0, i64 24, i1 false)
  %i.rw = load i32, ptr %i.qt, align 8, !tbaa !65
  %.not.i579 = icmp eq i32 %i.rw, 0
  br i1 %.not.i579, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_Z12maketriangleP4meshP8behaviorP4otri.exit578
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 82872
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !84 ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rq, i64 48
  store ptr %i.ry, ptr %i.rz, align 8, !tbaa !76
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rq, i64 56
  store ptr %i.ry, ptr %i.sa, align 8, !tbaa !76
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rq, i64 64
  store ptr %i.ry, ptr %i.sb, align 8, !tbaa !76
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_Z12maketriangleP4meshP8behaviorP4otri.exit578
  %i.sc = load i32, ptr %i.ra, align 8, !tbaa !114 ; 4 uses
  %i.sd = icmp sgt i32 %i.sc, 0                   ; 2 uses
  br i1 %i.sd, label %.lr.ph.i582, label %._crit_edge.i580

.lr.ph.i582:                                      ; preds = %bb.ba
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 82752
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !113
  %i.sg = sext i32 %i.sf to i64
  %i.sh = shl nsw i64 %i.sg, 3
  %scevgep.i583 = getelementptr i8, ptr %i.rq, i64 %i.sh
  %i.si = zext nneg i32 %i.sc to i64
  %i.sj = shl nuw nsw i64 %i.si, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i583, i8 0, i64 %i.sj, i1 false), !tbaa !23
  br label %._crit_edge.i580

._crit_edge.i580:                                 ; preds = %.lr.ph.i582, %bb.ba
  %i.sk = load i32, ptr %i.rj, align 4, !tbaa !42
  %.not27.i581 = icmp eq i32 %i.sk, 0             ; 2 uses
  br i1 %.not27.i581, label %_Z12maketriangleP4meshP8behaviorP4otri.exit584, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i580
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 82756
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !85
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [8 x i8], ptr %i.rq, i64 %i.sn
  store double -1.000000e+00, ptr %i.so, align 8, !tbaa !23
  br label %_Z12maketriangleP4meshP8behaviorP4otri.exit584

_Z12maketriangleP4meshP8behaviorP4otri.exit584:   ; preds = %._crit_edge.i580, %bb.bb
  %i.sp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i32 0, ptr %i.sp, align 8, !tbaa !74
  %i.sq = load i32, ptr %i.pu, align 4, !tbaa !32
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr [8 x i8], ptr %i.pp, i64 %i.sr
  %i.st = getelementptr i8, ptr %i.ss, i64 24
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !76
  %i.sv = load i32, ptr %i.pw, align 4, !tbaa !32
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr [8 x i8], ptr %i.pp, i64 %i.sw
  %i.sy = getelementptr i8, ptr %i.sx, i64 24
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !76
  %i.ta = getelementptr [8 x i8], ptr %i.pp, i64 %i.pt
  %i.tb = getelementptr i8, ptr %i.ta, i64 24     ; 2 uses
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !76 ; 2 uses
  %i.td = load i32, ptr @plus1mod3, align 4, !tbaa !32
  %i.te = sext i32 %i.td to i64                   ; 4 uses
  %i.tf = getelementptr [8 x i8], ptr %i.qn, i64 %i.te ; 2 uses
  %i.tg = getelementptr i8, ptr %i.tf, i64 24
  store ptr %i.sz, ptr %i.tg, align 8, !tbaa !76
  %i.th = load i32, ptr @minus1mod3, align 4, !tbaa !32
  %i.ti = sext i32 %i.th to i64                   ; 4 uses
  %i.tj = getelementptr [8 x i8], ptr %i.qn, i64 %i.ti
  %i.tk = getelementptr i8, ptr %i.tj, i64 24
  store ptr %i.tc, ptr %i.tk, align 8, !tbaa !76
  store ptr %2, ptr %i.qs, align 8, !tbaa !76
  %i.tl = getelementptr [8 x i8], ptr %i.rq, i64 %i.te
  %i.tm = getelementptr i8, ptr %i.tl, i64 24
  store ptr %i.tc, ptr %i.tm, align 8, !tbaa !76
  %i.tn = getelementptr [8 x i8], ptr %i.rq, i64 %i.ti ; 2 uses
  %i.to = getelementptr i8, ptr %i.tn, i64 24
  store ptr %i.su, ptr %i.to, align 8, !tbaa !76
  store ptr %2, ptr %i.rv, align 8, !tbaa !76
  store ptr %2, ptr %i.tb, align 8, !tbaa !76
  br i1 %i.sd, label %.lr.ph624, label %._crit_edge625

.lr.ph624:                                        ; preds = %_Z12maketriangleP4meshP8behaviorP4otri.exit584
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 82752
  %i.tq = load i32, ptr %i.tp, align 8, !tbaa !113
  %i.tr = sext i32 %i.tq to i64                   ; 4 uses
  %wide.trip.count643 = zext nneg i32 %i.sc to i64 ; 5 uses
  %min.iters.check728 = icmp ult i32 %i.sc, 20
  br i1 %min.iters.check728, label %scalar.ph727.preheader, label %vector.memcheck722

vector.memcheck722:                               ; preds = %.lr.ph624
  %i.ts = sub i64 %i.qo, %i.rr
  %diff.check723 = icmp ugt i64 %i.ts, -32
  %i.tt = sub i64 %i.pq, %i.qo
  %diff.check724 = icmp ugt i64 %i.tt, -32
  %conflict.rdx = or i1 %diff.check723, %diff.check724
  %i.tu = sub i64 %i.pq, %i.rr
  %diff.check725 = icmp ugt i64 %i.tu, -32
  %conflict.rdx726 = or i1 %conflict.rdx, %diff.check725
  br i1 %conflict.rdx726, label %scalar.ph727.preheader, label %vector.ph729

vector.ph729:                                     ; preds = %vector.memcheck722
  %n.vec730 = and i64 %wide.trip.count643, 2147483644 ; 3 uses
  br label %vector.body731

vector.body731:                                   ; preds = %vector.body731, %vector.ph729
  %index732 = phi i64 [ 0, %vector.ph729 ], [ %index.next735, %vector.body731 ] ; 2 uses
  %i.tv = add nsw i64 %index732, %i.tr            ; 3 uses
  %i.tw = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %i.tv ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %wide.load733 = load <2 x double>, ptr %i.tw, align 8, !tbaa !23 ; 2 uses
  %wide.load734 = load <2 x double>, ptr %i.tx, align 8, !tbaa !23 ; 2 uses
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.qn, i64 %i.tv ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  store <2 x double> %wide.load733, ptr %i.ty, align 8, !tbaa !23
  store <2 x double> %wide.load734, ptr %i.tz, align 8, !tbaa !23
  %i.ua = getelementptr inbounds [8 x i8], ptr %i.rq, i64 %i.tv ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  store <2 x double> %wide.load733, ptr %i.ua, align 8, !tbaa !23
  store <2 x double> %wide.load734, ptr %i.ub, align 8, !tbaa !23
  %index.next735 = add nuw i64 %index732, 4       ; 2 uses
  %i.uc = icmp eq i64 %index.next735, %n.vec730
  br i1 %i.uc, label %middle.block736, label %vector.body731, !llvm.loop !241

middle.block736:                                  ; preds = %vector.body731
  %cmp.n737 = icmp eq i64 %n.vec730, %wide.trip.count643
  br i1 %cmp.n737, label %._crit_edge625, label %scalar.ph727.preheader

scalar.ph727.preheader:                           ; preds = %vector.memcheck722, %.lr.ph624, %middle.block736
  %indvars.iv640.ph = phi i64 [ 0, %vector.memcheck722 ], [ 0, %.lr.ph624 ], [ %n.vec730, %middle.block736 ] ; 4 uses
  %xtraiter764 = and i64 %wide.trip.count643, 1
  %lcmp.mod765.not = icmp eq i64 %xtraiter764, 0
  br i1 %lcmp.mod765.not, label %scalar.ph727.prol.loopexit, label %scalar.ph727.prol

scalar.ph727.prol:                                ; preds = %scalar.ph727.preheader
  %i.ud = add nsw i64 %indvars.iv640.ph, %i.tr    ; 3 uses
  %i.ue = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %i.ud
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !23 ; 2 uses
  %i.ug = getelementptr inbounds [8 x i8], ptr %i.qn, i64 %i.ud
  store double %i.uf, ptr %i.ug, align 8, !tbaa !23
  %i.uh = getelementptr inbounds [8 x i8], ptr %i.rq, i64 %i.ud
  store double %i.uf, ptr %i.uh, align 8, !tbaa !23
  %indvars.iv.next641.prol = or disjoint i64 %indvars.iv640.ph, 1
  br label %scalar.ph727.prol.loopexit

scalar.ph727.prol.loopexit:                       ; preds = %scalar.ph727.prol, %scalar.ph727.preheader
  %indvars.iv640.unr = phi i64 [ %indvars.iv640.ph, %scalar.ph727.preheader ], [ %indvars.iv.next641.prol, %scalar.ph727.prol ]
  %i.ui = add nsw i64 %wide.trip.count643, -1
  %i.uj = icmp eq i64 %indvars.iv640.ph, %i.ui
  br i1 %i.uj, label %._crit_edge625, label %scalar.ph727.preheader.new

scalar.ph727.preheader.new:                       ; preds = %scalar.ph727.prol.loopexit
  %invariant.op784 = add i64 1, %i.tr
  br label %scalar.ph727

scalar.ph727:                                     ; preds = %scalar.ph727, %scalar.ph727.preheader.new
  %indvars.iv640 = phi i64 [ %indvars.iv640.unr, %scalar.ph727.preheader.new ], [ %indvars.iv.next641.1, %scalar.ph727 ] ; 3 uses
  %i.uk = add nsw i64 %indvars.iv640, %i.tr       ; 3 uses
  %i.ul = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %i.uk
  %i.um = load double, ptr %i.ul, align 8, !tbaa !23 ; 2 uses
  %i.un = getelementptr inbounds [8 x i8], ptr %i.qn, i64 %i.uk
  store double %i.um, ptr %i.un, align 8, !tbaa !23
  %i.uo = getelementptr inbounds [8 x i8], ptr %i.rq, i64 %i.uk
  store double %i.um, ptr %i.uo, align 8, !tbaa !23
  %.reass785 = add i64 %indvars.iv640, %invariant.op784 ; 3 uses
  %i.up = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %.reass785
  %i.uq = load double, ptr %i.up, align 8, !tbaa !23 ; 2 uses
  %i.ur = getelementptr inbounds [8 x i8], ptr %i.qn, i64 %.reass785
  store double %i.uq, ptr %i.ur, align 8, !tbaa !23
  %i.us = getelementptr inbounds [8 x i8], ptr %i.rq, i64 %.reass785
  store double %i.uq, ptr %i.us, align 8, !tbaa !23
  %indvars.iv.next641.1 = add nuw nsw i64 %indvars.iv640, 2 ; 2 uses
  %exitcond644.not.1 = icmp eq i64 %indvars.iv.next641.1, %wide.trip.count643
  br i1 %exitcond644.not.1, label %._crit_edge625, label %scalar.ph727, !llvm.loop !242

._crit_edge625:                                   ; preds = %scalar.ph727.prol.loopexit, %scalar.ph727, %middle.block736, %_Z12maketriangleP4meshP8behaviorP4otri.exit584
  br i1 %.not27.i581, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge625
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 82756
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !85
  %i.uv = sext i32 %i.uu to i64                   ; 3 uses
  %i.uw = getelementptr inbounds [8 x i8], ptr %i.pp, i64 %i.uv
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !23 ; 2 uses
  %i.uy = getelementptr inbounds [8 x i8], ptr %i.qn, i64 %i.uv
  store double %i.ux, ptr %i.uy, align 8, !tbaa !23
  %i.uz = getelementptr inbounds [8 x i8], ptr %i.rq, i64 %i.uv
  store double %i.ux, ptr %i.uz, align 8, !tbaa !23
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %._crit_edge625
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 82760
  %i.vb = load i32, ptr %i.va, align 8, !tbaa !128
  %.not533 = icmp eq i32 %i.vb, 0
  br i1 %.not533, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.vc = getelementptr i8, ptr %i.qa, i64 48     ; 2 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !76
  %i.ve = ptrtoint ptr %i.vd to i64               ; 3 uses
  %i.vf = and i64 %i.ve, -4
  %i.vg = inttoptr i64 %i.vf to ptr               ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 82872
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !84 ; 4 uses
  %.not534 = icmp eq ptr %i.vi, %i.vg
  br i1 %.not534, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.vj = and i64 %i.ve, 1
  store ptr %i.vi, ptr %i.vc, align 8, !tbaa !76
  %i.vk = and i64 %i.ve, -3
  %i.vl = inttoptr i64 %i.vk to ptr
  %i.vm = getelementptr i8, ptr %i.qn, i64 48
  store ptr %i.vl, ptr %i.vm, align 8, !tbaa !76
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.vg, i64 %i.vj
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 48
  store ptr %i.qn, ptr %i.vo, align 8, !tbaa !76
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.vp = getelementptr i8, ptr %i.qh, i64 48     ; 2 uses
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !76
  %i.vr = ptrtoint ptr %i.vq to i64               ; 3 uses
  %i.vs = and i64 %i.vr, -4
  %i.vt = inttoptr i64 %i.vs to ptr               ; 2 uses
  %.not535 = icmp eq ptr %i.vi, %i.vt
  br i1 %.not535, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.vu = and i64 %i.vr, 1
  store ptr %i.vi, ptr %i.vp, align 8, !tbaa !76
  %i.vv = and i64 %i.vr, -3
  %i.vw = inttoptr i64 %i.vv to ptr
  %i.vx = getelementptr i8, ptr %i.rq, i64 48
  store ptr %i.vw, ptr %i.vx, align 8, !tbaa !76
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %i.vu
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 48
  store ptr %i.rq, ptr %i.vz, align 8, !tbaa !76
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.bd
  store ptr %i.qb, ptr %i.qn, align 8, !tbaa !76
  %i.wa = ptrtoint ptr %i.qn to i64               ; 2 uses
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %i.qd
  store ptr %i.qn, ptr %i.wb, align 8, !tbaa !76
  store ptr %i.qi, ptr %i.rq, align 8, !tbaa !76
  %i.wc = ptrtoint ptr %i.rq to i64               ; 2 uses
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.qk
  store ptr %i.rq, ptr %i.wd, align 8, !tbaa !76
  %i.we = or i64 %i.ti, %i.wc
  %i.wf = inttoptr i64 %i.we to ptr
  store ptr %i.wf, ptr %i.tf, align 8, !tbaa !76
  %i.wg = or i64 %i.te, %i.wa
  %i.wh = inttoptr i64 %i.wg to ptr
  store ptr %i.wh, ptr %i.tn, align 8, !tbaa !76
  %i.wi = getelementptr inbounds [4 x i8], ptr @plus1mod3, i64 %i.te
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !32 ; 2 uses
  store i32 %i.wj, ptr %i.rp, align 8, !tbaa !74
  %i.wk = sext i32 %i.wj to i64                   ; 2 uses
  %i.wl = or i64 %i.wk, %i.wa
  %i.wm = inttoptr i64 %i.wl to ptr
  store ptr %i.wm, ptr %i.qa, align 8, !tbaa !76
  %i.wn = ptrtoint ptr %i.pp to i64               ; 3 uses
  %i.wo = or i64 %i.pz, %i.wn
  %i.wp = inttoptr i64 %i.wo to ptr
  %i.wq = getelementptr inbounds [8 x i8], ptr %i.qn, i64 %i.wk
  store ptr %i.wp, ptr %i.wq, align 8, !tbaa !76
  %i.wr = getelementptr inbounds [4 x i8], ptr @minus1mod3, i64 %i.ti
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !32 ; 2 uses
  store i32 %i.ws, ptr %i.sp, align 8, !tbaa !74
  %i.wt = sext i32 %i.ws to i64                   ; 2 uses
  %i.wu = or i64 %i.wt, %i.wc
  %i.wv = inttoptr i64 %i.wu to ptr
  store ptr %i.wv, ptr %i.qh, align 8, !tbaa !76
  %i.ww = or i64 %i.qg, %i.wn
  %i.wx = inttoptr i64 %i.ww to ptr
  %i.wy = getelementptr inbounds [8 x i8], ptr %i.rq, i64 %i.wt
  store ptr %i.wx, ptr %i.wy, align 8, !tbaa !76
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 82764
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !129
  %.not536 = icmp eq i32 %i.xa, 0
  br i1 %.not536, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xc, i8 0, i64 16, i1 false)
  %i.xd = load ptr, ptr %i.xb, align 8, !tbaa !89 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr %i.xd, ptr %i.xe, align 8, !tbaa !90
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xg = ptrtoint ptr %i.xf to i64               ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.xi = load i32, ptr %i.xh, align 8, !tbaa !91
  %i.xj = sext i32 %i.xi to i64                   ; 2 uses
  %i.xk = add i64 %i.xj, %i.xg
  %i.xl = urem i64 %i.xg, %i.xj
  %i.xm = sub i64 %i.xk, %i.xl
  %i.xn = inttoptr i64 %i.xm to ptr
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %i.xn, ptr %i.xo, align 8, !tbaa !92
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 588
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !93
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i32 %i.xq, ptr %i.xr, align 8, !tbaa !94
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr null, ptr %i.xs, align 8, !tbaa !95
  %i.xt = tail call noundef ptr @_Z9poolallocP10memorypool(ptr noundef nonnull %i.xb) ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 82632
  store ptr %i.xt, ptr %i.xu, align 8, !tbaa !153
  %i.xv = or i64 %i.pt, %i.wn
  %i.xw = inttoptr i64 %i.xv to ptr
  store ptr %i.xw, ptr %i.xt, align 8, !tbaa !155
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  store ptr null, ptr %i.xx, align 8, !tbaa !156
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.xy = load i32, ptr %i.a, align 4, !tbaa !64
  %i.xz = icmp sgt i32 %i.xy, 2
  br i1 %i.xz, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ya = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80) ; 0 uses
  call void @_Z13printtriangleP4meshP8behaviorP4otri(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %7)
  %i.yb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81) ; 0 uses
  call void @_Z13printtriangleP4meshP8behaviorP4otri(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %11)
  %i.yc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.82) ; 0 uses
  call void @_Z13printtriangleP4meshP8behaviorP4otri(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %12)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %bb.au
  %.pre-phi = phi i64 [ %i.pt, %bb.bk ], [ %i.pt, %bb.bl ], [ %.pre652, %bb.au ] ; 2 uses
  %.promoted630 = phi i32 [ %i.ps, %bb.bk ], [ %i.ps, %bb.bl ], [ %i.po, %bb.au ]
  %.promoted = phi ptr [ %i.pp, %bb.bk ], [ %i.pp, %bb.bl ], [ %i.bw, %bb.au ] ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ye = getelementptr inbounds [4 x i8], ptr @plus1mod3, i64 %.pre-phi
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !32
  %i.yg = sext i32 %i.yf to i64
  %i.yh = getelementptr [8 x i8], ptr %.promoted, i64 %i.yg
  %i.yi = getelementptr i8, ptr %i.yh, i64 24
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !76 ; 2 uses
  %i.yk = getelementptr inbounds [4 x i8], ptr @minus1mod3, i64 %.pre-phi
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !32
  %i.ym = sext i32 %i.yl to i64
  %i.yn = getelementptr [8 x i8], ptr %.promoted, i64 %i.ym
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 82856 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 82760 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 82872 ; 2 uses
  %.not548 = icmp eq i32 %5, 0
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 82832
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 82840
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 82848
  %i.yv = getelementptr i8, ptr %1, i64 84        ; 3 uses
  %i.yw = getelementptr i8, ptr %2, i64 8
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 82792 ; 4 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.za = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 82720
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 82752
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 82756
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 82764
end_hunk_1
begin_hunk_2_@_Z12insertvertexP4meshP8behaviorPdP4otriP4osubii:bb.a
  %i.aek = or i64 %i.aaa, %i.adc
  %i.ael = inttoptr i64 %i.aek to ptr             ; 2 uses
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %i.ady
  store ptr %i.ael, ptr %i.aem, align 8, !tbaa !76
  store ptr %i.aef, ptr %i.adv, align 8, !tbaa !76
  %i.aen = or i64 %i.adu, %i.zj
  %i.aeo = inttoptr i64 %i.aen to ptr             ; 2 uses
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr %i.aej, i64 %i.aeh
  store ptr %i.aeo, ptr %i.aep, align 8, !tbaa !76
  store ptr %i.adn, ptr %i.aee, align 8, !tbaa !76
  %i.aeq = or i64 %i.aed, %i.zj
  %i.aer = inttoptr i64 %i.aeq to ptr             ; 2 uses
  %i.aes = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %i.adp
  store ptr %i.aer, ptr %i.aes, align 8, !tbaa !76
  store ptr %i.ade, ptr %i.adm, align 8, !tbaa !76
  %i.aet = or i64 %i.aaa, %i.adl
  %i.aeu = inttoptr i64 %i.aet to ptr             ; 2 uses
  %i.aev = getelementptr inbounds nuw [8 x i8], ptr %i.adi, i64 %i.adg
  store ptr %i.aeu, ptr %i.aev, align 8, !tbaa !76
  %.not551 = icmp eq i32 %i.acz, 0
  br i1 %.not551, label %bb.da, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.aew = getelementptr i8, ptr %i.add, i64 48   ; 3 uses
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !76
  %i.aey = ptrtoint ptr %i.aex to i64             ; 3 uses
  %i.aez = and i64 %i.aey, -4
  %i.afa = inttoptr i64 %i.aez to ptr             ; 2 uses
  %i.afb = getelementptr i8, ptr %i.adv, i64 48   ; 3 uses
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !76
  %i.afd = ptrtoint ptr %i.afc to i64             ; 3 uses
  %i.afe = and i64 %i.afd, 1
  %i.aff = and i64 %i.afd, -4
  %i.afg = inttoptr i64 %i.aff to ptr             ; 2 uses
  %i.afh = getelementptr i8, ptr %i.aee, i64 48   ; 3 uses
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !76
  %i.afj = ptrtoint ptr %i.afi to i64             ; 3 uses
  %i.afk = and i64 %i.afj, 1
  %i.afl = and i64 %i.afj, -4
  %i.afm = inttoptr i64 %i.afl to ptr             ; 2 uses
  %i.afn = getelementptr i8, ptr %i.adm, i64 48   ; 3 uses
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !76
  %i.afp = ptrtoint ptr %i.afo to i64             ; 3 uses
  %i.afq = and i64 %i.afp, 1
  %i.afr = and i64 %i.afp, -4
  %i.afs = inttoptr i64 %i.afr to ptr             ; 2 uses
  %i.aft = load ptr, ptr %i.yr, align 8, !tbaa !84 ; 8 uses
  %i.afu = icmp eq ptr %i.aft, %i.afa
  br i1 %i.afu, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store ptr %i.aft, ptr %i.afn, align 8, !tbaa !76
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.afv = and i64 %i.aey, 1
  %i.afw = and i64 %i.aey, -3
  %i.afx = inttoptr i64 %i.afw to ptr
  store ptr %i.afx, ptr %i.afn, align 8, !tbaa !76
  %i.afy = getelementptr inbounds nuw [8 x i8], ptr %i.afa, i64 %i.afv
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 48
  store ptr %i.aeu, ptr %i.afz, align 8, !tbaa !76
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.aga = icmp eq ptr %i.aft, %i.afg
  br i1 %i.aga, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store ptr %i.aft, ptr %i.aew, align 8, !tbaa !76
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  %i.agb = and i64 %i.afd, -3
  %i.agc = inttoptr i64 %i.agb to ptr
  store ptr %i.agc, ptr %i.aew, align 8, !tbaa !76
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.afg, i64 %i.afe
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 48
  store ptr %i.ael, ptr %i.age, align 8, !tbaa !76
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.agf = icmp eq ptr %i.aft, %i.afm
  br i1 %i.agf, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  store ptr %i.aft, ptr %i.afb, align 8, !tbaa !76
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.agg = and i64 %i.afj, -3
  %i.agh = inttoptr i64 %i.agg to ptr
  store ptr %i.agh, ptr %i.afb, align 8, !tbaa !76
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.afm, i64 %i.afk
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 48
  store ptr %i.aeo, ptr %i.agj, align 8, !tbaa !76
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.agk = icmp eq ptr %i.aft, %i.afs
  br i1 %i.agk, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store ptr %i.aft, ptr %i.afh, align 8, !tbaa !76
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.agl = and i64 %i.afp, -3
  %i.agm = inttoptr i64 %i.agl to ptr
  store ptr %i.agm, ptr %i.afh, align 8, !tbaa !76
  %i.agn = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %i.afq
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 48
  store ptr %i.aer, ptr %i.ago, align 8, !tbaa !76
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz, %bb.cn
  %i.agp = getelementptr i8, ptr %i.adv, i64 24
  store ptr %i.aag, ptr %i.agp, align 8, !tbaa !76
  %i.agq = getelementptr i8, ptr %i.aee, i64 24
  store ptr %2, ptr %i.agq, align 8, !tbaa !76
  %i.agr = getelementptr i8, ptr %i.zw, i64 24
  store ptr %.0498.ph, ptr %i.agr, align 8, !tbaa !76
  %i.ags = getelementptr i8, ptr %i.adm, i64 24
  store ptr %2, ptr %i.ags, align 8, !tbaa !76
  %i.agt = getelementptr i8, ptr %i.add, i64 24
  store ptr %i.aag, ptr %i.agt, align 8, !tbaa !76
  store ptr %.0500, ptr %i.aaf, align 8, !tbaa !76
  %i.agu = load i32, ptr %i.zb, align 8, !tbaa !114 ; 3 uses
  %i.agv = icmp sgt i32 %i.agu, 0
  br i1 %i.agv, label %.lr.ph628, label %._crit_edge629

.lr.ph628:                                        ; preds = %bb.da
  %i.agw = load i32, ptr %i.zc, align 8, !tbaa !113
  %i.agx = sext i32 %i.agw to i64                 ; 6 uses
  %wide.trip.count648 = zext nneg i32 %i.agu to i64 ; 6 uses
  %min.iters.check744 = icmp ult i32 %i.agu, 4
  br i1 %min.iters.check744, label %scalar.ph743.preheader, label %vector.memcheck739

vector.memcheck739:                               ; preds = %.lr.ph628
  %i.agy = shl nsw i64 %i.agx, 3                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aab, i64 %i.agy
  %i.agz = add nsw i64 %i.agx, %wide.trip.count648
  %i.aha = shl nsw i64 %i.agz, 3                  ; 2 uses
  %scevgep740 = getelementptr i8, ptr %i.aab, i64 %i.aha
  %scevgep741 = getelementptr i8, ptr %.ph756, i64 %i.agy
  %scevgep742 = getelementptr i8, ptr %.ph756, i64 %i.aha
  %bound0 = icmp ult ptr %scevgep, %scevgep742
  %bound1 = icmp ult ptr %scevgep741, %scevgep740
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph743.preheader, label %vector.ph745

vector.ph745:                                     ; preds = %vector.memcheck739
  %n.vec746 = and i64 %wide.trip.count648, 2147483646 ; 3 uses
  br label %vector.body747

vector.body747:                                   ; preds = %vector.body747, %vector.ph745
  %index748 = phi i64 [ 0, %vector.ph745 ], [ %index.next751, %vector.body747 ] ; 2 uses
  %i.ahb = add nsw i64 %index748, %i.agx          ; 2 uses
  %i.ahc = getelementptr inbounds [8 x i8], ptr %i.aab, i64 %i.ahb ; 2 uses
  %wide.load749 = load <2 x double>, ptr %i.ahc, align 8, !tbaa !23, !alias.scope !249, !noalias !250
  %i.ahd = getelementptr inbounds [8 x i8], ptr %.ph756, i64 %i.ahb ; 2 uses
  %wide.load750 = load <2 x double>, ptr %i.ahd, align 8, !tbaa !23, !alias.scope !250
  %i.ahe = fadd <2 x double> %wide.load749, %wide.load750
  %i.ahf = fmul <2 x double> %i.ahe, splat (double 5.000000e-01) ; 2 uses
  store <2 x double> %i.ahf, ptr %i.ahc, align 8, !tbaa !23, !alias.scope !249, !noalias !250
  store <2 x double> %i.ahf, ptr %i.ahd, align 8, !tbaa !23, !alias.scope !250
  %index.next751 = add nuw i64 %index748, 2       ; 2 uses
  %i.ahg = icmp eq i64 %index.next751, %n.vec746
  br i1 %i.ahg, label %middle.block752, label %vector.body747, !llvm.loop !246

middle.block752:                                  ; preds = %vector.body747
  %cmp.n753 = icmp eq i64 %n.vec746, %wide.trip.count648
  br i1 %cmp.n753, label %._crit_edge629, label %scalar.ph743.preheader

scalar.ph743.preheader:                           ; preds = %vector.memcheck739, %.lr.ph628, %middle.block752
  %indvars.iv645.ph = phi i64 [ 0, %vector.memcheck739 ], [ 0, %.lr.ph628 ], [ %n.vec746, %middle.block752 ] ; 4 uses
  %xtraiter767 = and i64 %wide.trip.count648, 1
  %lcmp.mod768.not = icmp eq i64 %xtraiter767, 0
  br i1 %lcmp.mod768.not, label %scalar.ph743.prol.loopexit, label %scalar.ph743.prol

scalar.ph743.prol:                                ; preds = %scalar.ph743.preheader
  %i.ahh = add nsw i64 %indvars.iv645.ph, %i.agx  ; 2 uses
  %i.ahi = getelementptr inbounds [8 x i8], ptr %i.aab, i64 %i.ahh ; 2 uses
  %i.ahj = load double, ptr %i.ahi, align 8, !tbaa !23
  %i.ahk = getelementptr inbounds [8 x i8], ptr %.ph756, i64 %i.ahh ; 2 uses
  %i.ahl = load double, ptr %i.ahk, align 8, !tbaa !23
  %i.ahm = fadd double %i.ahj, %i.ahl
  %i.ahn = fmul double %i.ahm, 5.000000e-01       ; 2 uses
  store double %i.ahn, ptr %i.ahi, align 8, !tbaa !23
  store double %i.ahn, ptr %i.ahk, align 8, !tbaa !23
  %indvars.iv.next646.prol = or disjoint i64 %indvars.iv645.ph, 1
  br label %scalar.ph743.prol.loopexit

scalar.ph743.prol.loopexit:                       ; preds = %scalar.ph743.prol, %scalar.ph743.preheader
  %indvars.iv645.unr = phi i64 [ %indvars.iv645.ph, %scalar.ph743.preheader ], [ %indvars.iv.next646.prol, %scalar.ph743.prol ]
  %i.aho = add nsw i64 %wide.trip.count648, -1
  %i.ahp = icmp eq i64 %indvars.iv645.ph, %i.aho
  br i1 %i.ahp, label %._crit_edge629, label %scalar.ph743.preheader.new

scalar.ph743.preheader.new:                       ; preds = %scalar.ph743.prol.loopexit
  %invariant.op786 = add i64 1, %i.agx
  br label %scalar.ph743

scalar.ph743:                                     ; preds = %scalar.ph743, %scalar.ph743.preheader.new
  %indvars.iv645 = phi i64 [ %indvars.iv645.unr, %scalar.ph743.preheader.new ], [ %indvars.iv.next646.1, %scalar.ph743 ] ; 3 uses
  %i.ahq = add nsw i64 %indvars.iv645, %i.agx     ; 2 uses
  %i.ahr = getelementptr inbounds [8 x i8], ptr %i.aab, i64 %i.ahq ; 2 uses
  %i.ahs = load double, ptr %i.ahr, align 8, !tbaa !23
  %i.aht = getelementptr inbounds [8 x i8], ptr %.ph756, i64 %i.ahq ; 2 uses
  %i.ahu = load double, ptr %i.aht, align 8, !tbaa !23
  %i.ahv = fadd double %i.ahs, %i.ahu
  %i.ahw = fmul double %i.ahv, 5.000000e-01       ; 2 uses
  store double %i.ahw, ptr %i.ahr, align 8, !tbaa !23
  store double %i.ahw, ptr %i.aht, align 8, !tbaa !23
  %.reass787 = add i64 %indvars.iv645, %invariant.op786 ; 2 uses
  %i.ahx = getelementptr inbounds [8 x i8], ptr %i.aab, i64 %.reass787 ; 2 uses
  %i.ahy = load double, ptr %i.ahx, align 8, !tbaa !23
  %i.ahz = getelementptr inbounds [8 x i8], ptr %.ph756, i64 %.reass787 ; 2 uses
  %i.aia = load double, ptr %i.ahz, align 8, !tbaa !23
  %i.aib = fadd double %i.ahy, %i.aia
  %i.aic = fmul double %i.aib, 5.000000e-01       ; 2 uses
  store double %i.aic, ptr %i.ahx, align 8, !tbaa !23
  store double %i.aic, ptr %i.ahz, align 8, !tbaa !23
  %indvars.iv.next646.1 = add nuw nsw i64 %indvars.iv645, 2 ; 2 uses
  %exitcond649.not.1 = icmp eq i64 %indvars.iv.next646.1, %wide.trip.count648
  br i1 %exitcond649.not.1, label %._crit_edge629, label %scalar.ph743, !llvm.loop !247

._crit_edge629:                                   ; preds = %scalar.ph743.prol.loopexit, %scalar.ph743, %middle.block752, %bb.da
  %i.aid = load i32, ptr %i.zd, align 4, !tbaa !42
  %.not552 = icmp eq i32 %i.aid, 0
  br i1 %.not552, label %bb.df, label %bb.db

bb.db:                                            ; preds = %._crit_edge629
  %i.aie = load i32, ptr %i.ze, align 4, !tbaa !85
  %i.aif = sext i32 %i.aie to i64                 ; 3 uses
  %i.aig = getelementptr inbounds [8 x i8], ptr %i.aab, i64 %i.aif ; 2 uses
  %i.aih = load double, ptr %i.aig, align 8, !tbaa !23 ; 2 uses
  %i.aii = fcmp ugt double %i.aih, 0.000000e+00
  br i1 %i.aii, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.aij = getelementptr inbounds [8 x i8], ptr %.ph756, i64 %i.aif
  %i.aik = load double, ptr %i.aij, align 8, !tbaa !23 ; 2 uses
  %i.ail = fcmp ugt double %i.aik, 0.000000e+00
  br i1 %i.ail, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.aim = fadd double %i.aih, %i.aik
  %i.ain = fmul double %i.aim, 5.000000e-01
  br label %bb.de

bb.de:                                            ; preds = %bb.db, %bb.dc, %bb.dd
  %.0497 = phi double [ %i.ain, %bb.dd ], [ -1.000000e+00, %bb.dc ], [ -1.000000e+00, %bb.db ] ; 2 uses
  store double %.0497, ptr %i.aig, align 8, !tbaa !23
  %i.aio = getelementptr inbounds [8 x i8], ptr %.ph756, i64 %i.aif
  store double %.0497, ptr %i.aio, align 8, !tbaa !23
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %._crit_edge629
  %i.aip = load i32, ptr %i.zf, align 4, !tbaa !129
  %.not553 = icmp eq i32 %i.aip, 0
  br i1 %.not553, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.aiq = tail call noundef ptr @_Z9poolallocP10memorypool(ptr noundef nonnull %i.zg) ; 3 uses
  %i.air = or i64 %.pre655, %i.zj
  %i.ais = inttoptr i64 %i.air to ptr
  store ptr %i.ais, ptr %i.aiq, align 8, !tbaa !155
  %i.ait = load ptr, ptr %i.zh, align 8, !tbaa !153
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8
  store ptr %i.ait, ptr %i.aiu, align 8, !tbaa !156
  store ptr %i.aiq, ptr %i.zh, align 8, !tbaa !153
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.aiv = load i32, ptr %i.a, align 4, !tbaa !64
  %i.aiw = icmp sgt i32 %i.aiv, 2
  br i1 %i.aiw, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.aix = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72) ; 0 uses
  %i.aiy = getelementptr inbounds [4 x i8], ptr @plus1mod3, i64 %i.adc
  %i.aiz = load i32, ptr %i.aiy, align 4, !tbaa !32
  store i32 %i.aiz, ptr %i.yy, align 8, !tbaa !74
  call void @_Z13printtriangleP4meshP8behaviorP4otri(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %9)
  %i.aja = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73) ; 0 uses
  call void @_Z13printtriangleP4meshP8behaviorP4otri(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %7)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di
  %i.ajb = load i32, ptr %i.aeb, align 4, !tbaa !32 ; 2 uses
  store i32 %i.ajb, ptr %i.yd, align 8, !tbaa !74
  br label %bb.bn, !llvm.loop !248

.thread608:                                       ; preds = %bb.cl, %.split606, %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit, %._crit_edge654, %bb.cm, %bb.bp, %bb.bq
  %.1496602613 = phi i32 [ %.0495.ph, %bb.bp ], [ %spec.select, %bb.bq ], [ %.0495.ph, %bb.cm ], [ %.0495.ph, %._crit_edge654 ], [ %.0495.ph, %_Z16counterclockwiseP4meshP8behaviorPdS3_S3_.exit ], [ %.0495.ph, %.split606 ], [ %.0495.ph, %bb.cl ] ; 2 uses
  br i1 %.not555, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.thread608
  call void @_Z12testtriangleP4meshP8behaviorP4otri(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %7)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %.thread608
  %i.ajc = sext i32 %i.zk to i64
  %i.ajd = getelementptr inbounds [4 x i8], ptr @plus1mod3, i64 %i.ajc
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !32
  %i.ajf = sext i32 %i.aje to i64                 ; 2 uses
  %i.ajg = getelementptr inbounds [8 x i8], ptr %.ph756, i64 %i.ajf
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !76
  %i.aji = ptrtoint ptr %i.ajh to i64             ; 2 uses
  %i.ajj = and i64 %i.aji, 3
  %i.ajk = and i64 %i.aji, -4
  %i.ajl = inttoptr i64 %i.ajk to ptr             ; 4 uses
  %i.ajm = icmp eq ptr %.0500, %i.yj
  br i1 %i.ajm, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ajn = load ptr, ptr %i.yo, align 8, !tbaa !83
  %i.ajo = icmp eq ptr %i.ajn, %i.ajl
  br i1 %i.ajo, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  store ptr %.ph756, ptr %3, align 8, !tbaa !73
  %i.ajp = getelementptr inbounds [4 x i8], ptr @plus1mod3, i64 %i.ajf
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !32
  br label %bb.dp

bb.do:                                            ; preds = %bb.dm
  store ptr %i.ajl, ptr %7, align 8, !tbaa !73
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr @plus1mod3, i64 %i.ajj
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !32 ; 3 uses
  store i32 %i.ajs, ptr %i.yd, align 8, !tbaa !74
  %i.ajt = sext i32 %i.ajs to i64
  %i.aju = getelementptr inbounds [4 x i8], ptr @minus1mod3, i64 %i.ajt
  %i.ajv = load i32, ptr %i.aju, align 4, !tbaa !32
  %i.ajw = sext i32 %i.ajv to i64
  %i.ajx = getelementptr [8 x i8], ptr %i.ajl, i64 %i.ajw
  br label %.outer, !llvm.loop !248

bb.dp:                                            ; preds = %bb.dn, %bb.p, %bb.h
  %.sink704 = phi i32 [ %i.ajq, %bb.dn ], [ %.pre651, %bb.p ], [ %i.af, %bb.h ] ; 2 uses
  %.lcssa.sink = phi ptr [ %.ph756, %bb.dn ], [ %.pre, %bb.p ], [ %i.ad, %bb.h ]
  %.0503 = phi i32 [ %.1496602613, %bb.dn ], [ 2, %bb.p ], [ 3, %bb.h ]
  %i.ajy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sink704, ptr %i.ajy, align 8, !tbaa !74
  %i.ajz = getelementptr inbounds nuw i8, ptr %0, i64 82888
  store ptr %.lcssa.sink, ptr %i.ajz, align 8, !tbaa !125
  %i.aka = getelementptr inbounds nuw i8, ptr %0, i64 82896
  store i32 %.sink704, ptr %i.aka, align 8, !tbaa !146
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  ret i32 %.0503
}

; Function Attrs: mustprogress uwtable
define void @_Z18triangulatepolygonP4meshP8behaviorP4otriS4_iii(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #7 {
bb.a:
  %7 = alloca %struct.otri, align 8               ; 6 uses
  %8 = alloca %struct.otri, align 8               ; 8 uses
  %9 = alloca %struct.otri, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.a = load ptr, ptr %3, align 8, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !74
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr [8 x i8], ptr %i.a, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 4 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !73     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !74
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr @minus1mod3, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.h, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !76   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !64
  %i.t = icmp sgt i32 %i.s, 2
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.30) ; 0 uses
  %i.u = load double, ptr %i.g, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !23
  %i.x = load double, ptr %i.q, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !23
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84, double noundef %i.u, double noundef %i.w, double noundef %i.x, double noundef %i.z) ; 0 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !73
  %.pre86 = load i32, ptr %i.i, align 8, !tbaa !74
  %.phi.trans.insert = sext i32 %.pre86 to i64
  %.phi.trans.insert87 = getelementptr inbounds [4 x i8], ptr @minus1mod3, i64 %.phi.trans.insert
  %.pre88 = load i32, ptr %.phi.trans.insert87, align 4, !tbaa !32
  %.pre89 = sext i32 %.pre88 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi = phi i64 [ %.pre89, %bb.b ], [ %i.n, %bb.a ]
  %i.ab = phi ptr [ %.pre, %bb.b ], [ %i.h, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %.pre-phi
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !76
  %i.af = ptrtoint ptr %i.ae to i64               ; 3 uses
end_hunk_2
