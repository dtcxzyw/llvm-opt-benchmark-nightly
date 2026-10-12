Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_decimate?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@filter_frame:bb.a
  %i.co = add nsw <2 x i64> %wide.load83, %wide.load81
  %i.cp = add nsw <2 x i64> %wide.load84, %wide.load82
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %index78 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load85 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !29
  %wide.load86 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !29
  %i.cs = add nsw <2 x i64> %i.co, %wide.load85
  %i.ct = add nsw <2 x i64> %i.cp, %wide.load86
  %i.cu = getelementptr i8, ptr %i.cq, i64 8
  %i.cv = getelementptr i8, ptr %i.cq, i64 24
  %wide.load87 = load <2 x i64>, ptr %i.cu, align 8, !tbaa !29
  %wide.load88 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !29
  %i.cw = add nsw <2 x i64> %i.cs, %wide.load87
  %i.cx = add nsw <2 x i64> %i.ct, %wide.load88
  %i.cy = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %i.cw, <2 x i64> %vec.phi79) ; 2 uses
  %i.cz = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %i.cx, <2 x i64> %vec.phi80) ; 2 uses
  %index.next89 = add nuw i64 %index78, 4         ; 2 uses
  %i.da = icmp eq i64 %index.next89, %n.vec76
  br i1 %i.da, label %middle.block90, label %vector.body77, !llvm.loop !70

middle.block90:                                   ; preds = %vector.body77
  %rdx.minmax = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %i.cy, <2 x i64> %i.cz)
  %i.db = tail call i64 @llvm.vector.reduce.smax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  br i1 %cmp.n91, label %._crit_edge185.us.i, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %.preheader.us.i, %middle.block90
  %indvars.iv221.i.ph = phi i64 [ 0, %.preheader.us.i ], [ %n.vec76, %middle.block90 ]
  %.1147182.us.i.ph = phi i64 [ %.0146187.us.i, %.preheader.us.i ], [ %i.db, %middle.block90 ]
  br label %scalar.ph73

scalar.ph73:                                      ; preds = %scalar.ph73.preheader, %scalar.ph73
  %indvars.iv221.i = phi i64 [ %indvars.iv.next222.i, %scalar.ph73 ], [ %indvars.iv221.i.ph, %scalar.ph73.preheader ] ; 3 uses
  %.1147182.us.i = phi i64 [ %spec.select.us.i, %scalar.ph73 ], [ %.1147182.us.i.ph, %scalar.ph73.preheader ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv221.i
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv221.i
  %i.de = load <2 x i64>, ptr %i.dc, align 8, !tbaa !29
  %i.df = load <2 x i64>, ptr %i.dd, align 8, !tbaa !29
  %i.dg = shufflevector <2 x i64> %i.df, <2 x i64> %i.de, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dh = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.dg)
  %spec.select.us.i = tail call i64 @llvm.smax.i64(i64 %i.dh, i64 %.1147182.us.i) ; 2 uses
  %indvars.iv.next222.i = add nuw nsw i64 %indvars.iv221.i, 1 ; 2 uses
  %exitcond224.not.i = icmp eq i64 %indvars.iv.next222.i, %wide.trip.count.i
  br i1 %exitcond224.not.i, label %._crit_edge185.us.i, label %scalar.ph73, !llvm.loop !71

._crit_edge185.us.i:                              ; preds = %scalar.ph73, %middle.block90
  %spec.select.us.i.lcssa = phi i64 [ %i.db, %middle.block90 ], [ %spec.select.us.i, %scalar.ph73 ] ; 2 uses
  %exitcond229.not.i = icmp eq i64 %indvars.iv.next226.i, %wide.trip.count228.i
  br i1 %exitcond229.not.i, label %._crit_edge189.i, label %.preheader.us.i, !llvm.loop !72

bb.p:                                             ; preds = %bb.o
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv218.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !39
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv218.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !39
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv218.i
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !96 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.0146, i64 %indvars.iv218.i
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !96 ; 2 uses
  %.not152.i = icmp eq i64 %indvars.iv218.i, 0
  br i1 %.not152.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = load i32, ptr %i.bl, align 4, !tbaa !101 ; 2 uses
  %i.dr = load i32, ptr %i.bm, align 8, !tbaa !106
  %i.ds = sub nsw i32 0, %i.dr
  %i.dt = ashr i32 %i.ds, %i.dq
  %i.du = sub nsw i32 0, %i.dt
  %i.dv = load i32, ptr %i.bn, align 8, !tbaa !107 ; 2 uses
  %i.dw = load i32, ptr %i.bo, align 4, !tbaa !108
  %i.dx = sub nsw i32 0, %i.dw
  %i.dy = ashr i32 %i.dx, %i.dv
  %i.dz = sub nsw i32 0, %i.dy
  %i.ea = load <2 x i32>, ptr %i.bp, align 8, !tbaa !39
  %i.eb = sdiv <2 x i32> %i.ea, splat (i32 2)     ; 2 uses
  %i.ec = extractelement <2 x i32> %i.eb, i64 0
  %i.ed = ashr i32 %i.ec, %i.dq
  %i.ee = extractelement <2 x i32> %i.eb, i64 1
  %i.ef = ashr i32 %i.ee, %i.dv
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.eg = load i32, ptr %i.bm, align 8, !tbaa !106
  %i.eh = load i32, ptr %i.bo, align 4, !tbaa !108
  %i.ei = load <2 x i32>, ptr %i.bp, align 8, !tbaa !39
  %i.ej = sdiv <2 x i32> %i.ei, splat (i32 2)     ; 2 uses
  %i.ek = extractelement <2 x i32> %i.ej, i64 0
  %i.el = extractelement <2 x i32> %i.ej, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.em = phi i32 [ %i.dz, %bb.q ], [ %i.eh, %bb.r ] ; 3 uses
  %i.en = phi i32 [ %i.du, %bb.q ], [ %i.eg, %bb.r ] ; 5 uses
  %.0134.i = phi i32 [ %i.ed, %bb.q ], [ %i.ek, %bb.r ] ; 2 uses
  %.0133.i = phi i32 [ %i.ef, %bb.q ], [ %i.el, %bb.r ] ; 2 uses
  %i.eo = icmp sgt i32 %i.em, 0
  br i1 %i.eo, label %.lr.ph180.i, label %._crit_edge181.i

.lr.ph180.i:                                      ; preds = %bb.s
  %i.ep = load i32, ptr %i.bq, align 4, !tbaa !49
  %i.eq = icmp eq i32 %i.ep, 8
  %i.er = sext i32 %i.dj to i64                   ; 2 uses
  %i.es = sext i32 %i.dl to i64                   ; 2 uses
  %i.et = icmp sgt i32 %i.en, 0                   ; 2 uses
  br i1 %i.eq, label %.lr.ph180.split.us.i, label %.lr.ph180.split.i

.lr.ph180.split.us.i:                             ; preds = %.lr.ph180.i
  br i1 %i.et, label %.lr.ph180.split.us.split.i, label %._crit_edge181.i

.lr.ph180.split.us.split.i:                       ; preds = %.lr.ph180.split.us.i
  %i.eu = load i32, ptr %i.br, align 8, !tbaa !98
  %i.ev = sext i32 %.0134.i to i64
  br label %.preheader157.us.i

.preheader157.us.i:                               ; preds = %..loopexit_crit_edge.us.i, %.lr.ph180.split.us.split.i
  %.0135177.us.i = phi ptr [ %i.dp, %.lr.ph180.split.us.split.i ], [ %i.fr, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.0136175.us.i = phi ptr [ %i.dn, %.lr.ph180.split.us.split.i ], [ %i.fq, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.0139174.us.i = phi i32 [ 0, %.lr.ph180.split.us.split.i ], [ %i.fs, %..loopexit_crit_edge.us.i ] ; 2 uses
  %i.ew = sdiv i32 %.0139174.us.i, %.0133.i
  %i.ex = mul nsw i32 %i.ew, %i.eu
  %i.ey = sext i32 %i.ex to i64
  %invariant.gep244.i = getelementptr [8 x i8], ptr %i.bb, i64 %i.ey
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge169.us.i, %.preheader157.us.i
  %indvars.iv212.i = phi i64 [ 0, %.preheader157.us.i ], [ %indvars.iv.next213.i, %._crit_edge169.us.i ] ; 2 uses
  %indvars.iv207.i = phi i64 [ 0, %.preheader157.us.i ], [ %indvars.iv.next208.i, %._crit_edge169.us.i ] ; 3 uses
  %indvars216.i = trunc i64 %indvars.iv207.i to i32
  %indvars.iv.next208.i = add nsw i64 %indvars.iv207.i, %i.ev ; 2 uses
  %indvars215.i = trunc i64 %indvars.iv.next208.i to i32 ; 2 uses
  %i.ez = tail call i32 @llvm.smin.i32(i32 %i.en, i32 %indvars215.i) ; 2 uses
  %i.fa = icmp sgt i32 %i.ez, %indvars216.i
  br i1 %i.fa, label %.lr.ph168.us.preheader.i, label %._crit_edge169.us.i

.lr.ph168.us.preheader.i:                         ; preds = %bb.t
  %i.fb = sext i32 %i.ez to i64
  br label %.lr.ph168.us.i

.lr.ph168.us.i:                                   ; preds = %.lr.ph168.us.i, %.lr.ph168.us.preheader.i
  %indvars.iv209.i = phi i64 [ %indvars.iv207.i, %.lr.ph168.us.preheader.i ], [ %indvars.iv.next210.i, %.lr.ph168.us.i ] ; 3 uses
  %.0131166.us.i = phi i64 [ 0, %.lr.ph168.us.preheader.i ], [ %i.fl, %.lr.ph168.us.i ]
  %i.fc = getelementptr inbounds i8, ptr %.0136175.us.i, i64 %indvars.iv209.i
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !48
  %i.fe = zext i8 %i.fd to i32
  %i.ff = getelementptr inbounds i8, ptr %.0135177.us.i, i64 %indvars.iv209.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !48
  %i.fh = zext i8 %i.fg to i32
  %i.fi = sub nsw i32 %i.fe, %i.fh
  %i.fj = tail call i32 @llvm.abs.i32(i32 %i.fi, i1 true)
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = add nuw nsw i64 %.0131166.us.i, %i.fk   ; 2 uses
  %indvars.iv.next210.i = add nsw i64 %indvars.iv209.i, 1 ; 2 uses
  %i.fm = icmp slt i64 %indvars.iv.next210.i, %i.fb
  br i1 %i.fm, label %.lr.ph168.us.i, label %._crit_edge169.us.i, !llvm.loop !73

._crit_edge169.us.i:                              ; preds = %.lr.ph168.us.i, %bb.t
  %.0131.lcssa.us.i = phi i64 [ 0, %bb.t ], [ %i.fl, %.lr.ph168.us.i ]
  %gep245.i = getelementptr [8 x i8], ptr %invariant.gep244.i, i64 %indvars.iv212.i ; 2 uses
  %i.fn = load i64, ptr %gep245.i, align 8, !tbaa !29
  %i.fo = add nsw i64 %i.fn, %.0131.lcssa.us.i
  store i64 %i.fo, ptr %gep245.i, align 8, !tbaa !29
  %indvars.iv.next213.i = add nuw nsw i64 %indvars.iv212.i, 1
  %i.fp = icmp sgt i32 %i.en, %indvars215.i
  br i1 %i.fp, label %bb.t, label %..loopexit_crit_edge.us.i, !llvm.loop !74

..loopexit_crit_edge.us.i:                        ; preds = %._crit_edge169.us.i
  %i.fq = getelementptr inbounds i8, ptr %.0136175.us.i, i64 %i.er
  %i.fr = getelementptr inbounds i8, ptr %.0135177.us.i, i64 %i.es
  %i.fs = add nuw nsw i32 %.0139174.us.i, 1       ; 2 uses
  %exitcond217.not.i = icmp eq i32 %i.fs, %i.em
  br i1 %exitcond217.not.i, label %._crit_edge181.i, label %.preheader157.us.i, !llvm.loop !75

.lr.ph180.split.i:                                ; preds = %.lr.ph180.i
  br i1 %i.et, label %.lr.ph180.split.split.i, label %._crit_edge181.i

.lr.ph180.split.split.i:                          ; preds = %.lr.ph180.split.i
  %i.ft = load i32, ptr %i.br, align 8, !tbaa !98
  %i.fu = sext i32 %.0134.i to i64                ; 2 uses
  br label %.preheader158.i

.preheader158.i:                                  ; preds = %..loopexit159_crit_edge.i, %.lr.ph180.split.split.i
  %.0135177.i = phi ptr [ %i.dp, %.lr.ph180.split.split.i ], [ %i.hk, %..loopexit159_crit_edge.i ] ; 3 uses
  %.0136175.i = phi ptr [ %i.dn, %.lr.ph180.split.split.i ], [ %i.hj, %..loopexit159_crit_edge.i ] ; 3 uses
  %.0139174.i = phi i32 [ 0, %.lr.ph180.split.split.i ], [ %i.hl, %..loopexit159_crit_edge.i ] ; 2 uses
  %i.fv = sdiv i32 %.0139174.i, %.0133.i
  %i.fw = mul nsw i32 %i.fv, %i.ft
  %i.fx = sext i32 %i.fw to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.bb, i64 %i.fx
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i, %.preheader158.i
  %indvars.iv202.i = phi i64 [ 0, %.preheader158.i ], [ %indvars.iv.next203.i, %._crit_edge.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.preheader158.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 6 uses
  %indvars206.i = trunc i64 %indvars.iv.i to i32
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, %i.fu ; 2 uses
  %indvars205.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.fy = tail call i32 @llvm.smin.i32(i32 %i.en, i32 %indvars205.i) ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, %indvars206.i
  br i1 %i.fz, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.u
  %1 = sext i32 %i.fy to i64                      ; 2 uses
  %2 = add i64 %indvars.iv.i, 1
  %3 = tail call i64 @llvm.smax.i64(i64 %1, i64 %2)
  %4 = mul i64 %indvars.iv202.i, %i.fu
  %i.ga = sub i64 %3, %4                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.ga, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.ga, -4                      ; 3 uses
  %i.gb = add i64 %indvars.iv.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.gr, %vector.body ]
  %vec.phi69 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.gs, %vector.body ]
  %i.gc = add i64 %indvars.iv.i, %index           ; 2 uses
  %i.gd = getelementptr inbounds [2 x i8], ptr %.0136175.i, i64 %i.gc ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %wide.load = load <2 x i16>, ptr %i.gd, align 2, !tbaa !110
  %wide.load70 = load <2 x i16>, ptr %i.ge, align 2, !tbaa !110
  %i.gf = zext <2 x i16> %wide.load to <2 x i32>
  %i.gg = zext <2 x i16> %wide.load70 to <2 x i32>
  %i.gh = getelementptr inbounds [2 x i8], ptr %.0135177.i, i64 %i.gc ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %wide.load71 = load <2 x i16>, ptr %i.gh, align 2, !tbaa !110
  %wide.load72 = load <2 x i16>, ptr %i.gi, align 2, !tbaa !110
  %i.gj = zext <2 x i16> %wide.load71 to <2 x i32>
  %i.gk = zext <2 x i16> %wide.load72 to <2 x i32>
  %i.gl = sub nsw <2 x i32> %i.gf, %i.gj
  %i.gm = sub nsw <2 x i32> %i.gg, %i.gk
  %i.gn = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.gl, i1 true)
  %i.go = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.gm, i1 true)
  %i.gp = zext nneg <2 x i32> %i.gn to <2 x i64>
  %i.gq = zext nneg <2 x i32> %i.go to <2 x i64>
  %i.gr = add <2 x i64> %vec.phi, %i.gp           ; 2 uses
  %i.gs = add <2 x i64> %vec.phi69, %i.gq         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gt = icmp eq i64 %index.next, %n.vec
  br i1 %i.gt, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.gs, %i.gr
  %i.gu = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ga, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv199.i.ph = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %i.gb, %middle.block ]
  %.0161.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.gu, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i, %.lr.ph.i ], [ %indvars.iv199.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.0161.i = phi i64 [ %i.he, %.lr.ph.i ], [ %.0161.i.ph, %.lr.ph.i.preheader ]
  %i.gv = getelementptr inbounds [2 x i8], ptr %.0136175.i, i64 %indvars.iv199.i
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !110
  %i.gx = zext i16 %i.gw to i32
  %i.gy = getelementptr inbounds [2 x i8], ptr %.0135177.i, i64 %indvars.iv199.i
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !110
  %i.ha = zext i16 %i.gz to i32
  %i.hb = sub nsw i32 %i.gx, %i.ha
  %i.hc = tail call i32 @llvm.abs.i32(i32 %i.hb, i1 true)
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = add nuw nsw i64 %.0161.i, %i.hd         ; 2 uses
  %indvars.iv.next200.i = add nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %i.hf = icmp slt i64 %indvars.iv.next200.i, %1
  br i1 %i.hf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !77

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.u
  %.0.lcssa.i = phi i64 [ 0, %bb.u ], [ %i.gu, %middle.block ], [ %i.he, %.lr.ph.i ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv202.i ; 2 uses
  %i.hg = load i64, ptr %gep.i, align 8, !tbaa !29
  %i.hh = add nsw i64 %i.hg, %.0.lcssa.i
  store i64 %i.hh, ptr %gep.i, align 8, !tbaa !29
  %indvars.iv.next203.i = add nuw nsw i64 %indvars.iv202.i, 1
  %i.hi = icmp sgt i32 %i.en, %indvars205.i
  br i1 %i.hi, label %bb.u, label %..loopexit159_crit_edge.i, !llvm.loop !78

..loopexit159_crit_edge.i:                        ; preds = %._crit_edge.i
  %i.hj = getelementptr inbounds i8, ptr %.0136175.i, i64 %i.er
  %i.hk = getelementptr inbounds i8, ptr %.0135177.i, i64 %i.es
  %i.hl = add nuw nsw i32 %.0139174.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.hl, %i.em
  br i1 %exitcond.not.i, label %._crit_edge181.i, label %.preheader158.i, !llvm.loop !75

._crit_edge181.i:                                 ; preds = %..loopexit159_crit_edge.i, %..loopexit_crit_edge.us.i, %.lr.ph180.split.i, %.lr.ph180.split.us.i, %bb.s
  %indvars.iv.next219.i = add nuw nsw i64 %indvars.iv218.i, 1
  br label %bb.m, !llvm.loop !79

._crit_edge189.i:                                 ; preds = %._crit_edge185.us.i, %.preheader.lr.ph.i, %.preheader156.i
  %.0146.lcssa.i = phi i64 [ -1, %.preheader156.i ], [ -1, %.preheader.lr.ph.i ], [ %spec.select.us.i.lcssa, %._crit_edge185.us.i ]
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 8 uses
  store i64 0, ptr %i.hm, align 8, !tbaa !94
  %i.hn = load i32, ptr %i.bc, align 8, !tbaa !50 ; 3 uses
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %.lr.ph193.i, label %calc_diffs.exit

.lr.ph193.i:                                      ; preds = %._crit_edge189.i
  %wide.trip.count233.i = zext nneg i32 %i.hn to i64 ; 6 uses
  %min.iters.check96 = icmp ult i32 %i.hn, 14
  br i1 %min.iters.check96, label %scalar.ph95.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph193.i
  %i.hp = mul nsw i64 %i.bw, 24
  %i.hq = getelementptr i8, ptr %i.av, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hq, i64 24
  %i.hs = shl nuw nsw i64 %wide.trip.count233.i, 3
  %i.ht = getelementptr i8, ptr %i.bb, i64 %i.hs
  %bound0 = icmp ult ptr %i.hm, %i.ht
  %bound1 = icmp ult ptr %i.bb, %i.hr
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph95.preheader, label %vector.ph97

vector.ph97:                                      ; preds = %vector.memcheck
  %n.vec98 = and i64 %wide.trip.count233.i, 2147483644 ; 3 uses
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph97
  %index100 = phi i64 [ 0, %vector.ph97 ], [ %index.next105, %vector.body99 ] ; 2 uses
  %vec.phi101 = phi <2 x i64> [ zeroinitializer, %vector.ph97 ], [ %i.hw, %vector.body99 ]
  %vec.phi102 = phi <2 x i64> [ zeroinitializer, %vector.ph97 ], [ %i.hx, %vector.body99 ]
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index100 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %wide.load103 = load <2 x i64>, ptr %i.hu, align 8, !tbaa !29, !alias.scope !111
  %wide.load104 = load <2 x i64>, ptr %i.hv, align 8, !tbaa !29, !alias.scope !111
  %i.hw = add <2 x i64> %wide.load103, %vec.phi101 ; 2 uses
  %i.hx = add <2 x i64> %wide.load104, %vec.phi102 ; 2 uses
  %index.next105 = add nuw i64 %index100, 4       ; 2 uses
  %i.hy = icmp eq i64 %index.next105, %n.vec98
  br i1 %i.hy, label %middle.block106, label %vector.body99, !llvm.loop !82

middle.block106:                                  ; preds = %vector.body99
  %bin.rdx107 = add <2 x i64> %i.hx, %i.hw
  %i.hz = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx107) ; 2 uses
  store i64 %i.hz, ptr %i.hm, align 8, !tbaa !94, !alias.scope !112, !noalias !111
  %cmp.n108 = icmp eq i64 %n.vec98, %wide.trip.count233.i
  br i1 %cmp.n108, label %calc_diffs.exit, label %scalar.ph95.preheader

scalar.ph95.preheader:                            ; preds = %vector.memcheck, %.lr.ph193.i, %middle.block106
  %indvars.iv230.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph193.i ], [ %n.vec98, %middle.block106 ] ; 3 uses
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph193.i ], [ %i.hz, %middle.block106 ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count233.i, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph95.prol.loopexit, label %scalar.ph95.prol

scalar.ph95.prol:                                 ; preds = %scalar.ph95.preheader, %scalar.ph95.prol
  %indvars.iv230.i.prol = phi i64 [ %indvars.iv.next231.i.prol, %scalar.ph95.prol ], [ %indvars.iv230.i.ph, %scalar.ph95.preheader ] ; 2 uses
  %i.ia = phi i64 [ %i.id, %scalar.ph95.prol ], [ %.ph, %scalar.ph95.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph95.prol ], [ 0, %scalar.ph95.preheader ]
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230.i.prol
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !29
  %i.id = add nsw i64 %i.ic, %i.ia                ; 3 uses
  store i64 %i.id, ptr %i.hm, align 8, !tbaa !94
  %indvars.iv.next231.i.prol = add nuw nsw i64 %indvars.iv230.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph95.prol.loopexit, label %scalar.ph95.prol, !llvm.loop !84

scalar.ph95.prol.loopexit:                        ; preds = %scalar.ph95.prol, %scalar.ph95.preheader
  %indvars.iv230.i.unr = phi i64 [ %indvars.iv230.i.ph, %scalar.ph95.preheader ], [ %indvars.iv.next231.i.prol, %scalar.ph95.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph95.preheader ], [ %i.id, %scalar.ph95.prol ]
  %i.ie = sub nsw i64 %indvars.iv230.i.ph, %wide.trip.count233.i
  %i.if = icmp ugt i64 %i.ie, -4
  br i1 %i.if, label %calc_diffs.exit, label %scalar.ph95

scalar.ph95:                                      ; preds = %scalar.ph95.prol.loopexit, %scalar.ph95
  %indvars.iv230.i = phi i64 [ %indvars.iv.next231.i.3, %scalar.ph95 ], [ %indvars.iv230.i.unr, %scalar.ph95.prol.loopexit ] ; 5 uses
  %i.ig = phi i64 [ %i.iv, %scalar.ph95 ], [ %.unr, %scalar.ph95.prol.loopexit ]
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230.i
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !29
  %i.ij = add nsw i64 %i.ii, %i.ig                ; 2 uses
  store i64 %i.ij, ptr %i.hm, align 8, !tbaa !94
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load i64, ptr %i.il, align 8, !tbaa !29
  %i.in = add nsw i64 %i.im, %i.ij                ; 2 uses
  store i64 %i.in, ptr %i.hm, align 8, !tbaa !94
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !29
  %i.ir = add nsw i64 %i.iq, %i.in                ; 2 uses
  store i64 %i.ir, ptr %i.hm, align 8, !tbaa !94
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !29
  %i.iv = add nsw i64 %i.iu, %i.ir                ; 2 uses
  store i64 %i.iv, ptr %i.hm, align 8, !tbaa !94
  %indvars.iv.next231.i.3 = add nuw nsw i64 %indvars.iv230.i, 4 ; 2 uses
  %exitcond234.not.i.3 = icmp eq i64 %indvars.iv.next231.i.3, %wide.trip.count233.i
  br i1 %exitcond234.not.i.3, label %calc_diffs.exit, label %scalar.ph95, !llvm.loop !85

calc_diffs.exit:                                  ; preds = %scalar.ph95.prol.loopexit, %scalar.ph95, %middle.block106, %._crit_edge189.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %.0146.lcssa.i, ptr %i.iw, align 8, !tbaa !93
  %.pre32 = load i32, ptr %i.am, align 8, !tbaa !90
  br label %bb.v

bb.v:                                             ; preds = %calc_diffs.exit, %bb.k
  %i.ix = phi i32 [ %.pre32, %calc_diffs.exit ], [ %i.p, %bb.k ]
  %i.iy = add nsw i32 %i.ix, 1                    ; 2 uses
  store i32 %i.iy, ptr %i.am, align 8, !tbaa !90
  %i.iz = getelementptr inbounds nuw i8, ptr %i.f, i64 136 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !31
  %.not161 = icmp eq i32 %i.iy, %i.ja
  br i1 %.not161, label %bb.w, label %.critedge5

bb.w:                                             ; preds = %bb.v
  %i.jb = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  tail call void @av_frame_free(ptr noundef nonnull %i.jb) #9
  %i.jc = tail call ptr @av_frame_clone(ptr noundef nonnull %.0146) #9
  store ptr %i.jc, ptr %i.jb, align 8, !tbaa !114
  store i32 0, ptr %i.am, align 8, !tbaa !90
  %i.jd = load i32, ptr %i.iz, align 8, !tbaa !31 ; 4 uses
  %i.je = icmp sgt i32 %i.jd, 0
  %i.jf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !30 ; 5 uses
  br i1 %i.je, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w
  %i.jh = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !115 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.jd to i64   ; 2 uses
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %.pre34 = load i64, ptr %.phi.trans.insert33, align 8, !tbaa !93 ; 2 uses
  %xtraiter123 = and i64 %wide.trip.count, 1
  %i.jj = icmp eq i32 %i.jd, 1
  br i1 %i.jj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.new
  %i.jk = phi i64 [ %.pre34, %.lr.ph.new ], [ %i.kc, %bb.x ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.x ] ; 4 uses
  %.013410 = phi i32 [ 0, %.lr.ph.new ], [ %.1135.1, %bb.x ]
  %.01438 = phi i32 [ -1, %.lr.ph.new ], [ %spec.select.1, %bb.x ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.x ]
  %i.jl = getelementptr inbounds nuw [24 x i8], ptr %i.jg, i64 %indvars.iv ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !94
  %i.jo = icmp sgt i64 %i.jn, %i.ji
  %i.jp = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %spec.select = select i1 %i.jo, i32 %i.jp, i32 %.01438
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !93 ; 2 uses
  %i.js = icmp slt i64 %i.jr, %i.jk
  %.1135 = select i1 %i.js, i32 %i.jp, i32 %.013410
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.jt = tail call i64 @llvm.smin.i64(i64 %i.jr, i64 %i.jk) ; 2 uses
  %i.ju = getelementptr inbounds nuw [24 x i8], ptr %i.jg, i64 %indvars.iv.next ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !94
  %i.jx = icmp sgt i64 %i.jw, %i.ji
  %i.jy = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %spec.select.1 = select i1 %i.jx, i32 %i.jy, i32 %spec.select ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !93 ; 2 uses
  %i.kb = icmp slt i64 %i.ka, %i.jt
  %.1135.1 = select i1 %i.kb, i32 %i.jy, i32 %.1135 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.kc = tail call i64 @llvm.smin.i64(i64 %i.ka, i64 %i.jt) ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.x, !llvm.loop !86

end_hunk_0
