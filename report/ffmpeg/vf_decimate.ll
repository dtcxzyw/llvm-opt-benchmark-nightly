Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_decimate?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@filter_frame:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.in = phi ptr [ %i.ar, %bb.h ], [ %i.as, %bb.i ]
  %i.at = load ptr, ptr %.in, align 8, !tbaa !41  ; 6 uses
  %.not160 = icmp eq ptr %i.at, null
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35 ; 3 uses
  br i1 %.not160, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = sext i32 %i.p to i64
  %i.ax = getelementptr inbounds [24 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 9223372036854775807, ptr %i.ay, align 8, !tbaa !78
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 9223372036854775807, ptr %i.az, align 8, !tbaa !79
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !72 ; 13 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !71
  %i.be = sext i32 %i.bd to i64
  %i.bf = shl nsw i64 %i.be, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bb, i8 0, i64 %i.bf, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 188
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !80
  %.not.i = icmp eq i32 %i.bh, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %.0146, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 104 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.bo = getelementptr inbounds nuw i8, ptr %i.at, i64 108 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 176 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 180 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge181.i, %bb.l
  %indvars.iv218.i = phi i64 [ %indvars.iv.next219.i, %._crit_edge181.i ], [ 0, %bb.l ] ; 7 uses
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !81
  %.not151.i = icmp eq ptr %i.bt, null
  %i.bu = select i1 %.not151.i, i64 1, i64 3
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bv = phi i64 [ 1, %bb.m ], [ %i.bu, %bb.n ]
  %i.bw = icmp samesign ult i64 %indvars.iv218.i, %i.bv
  br i1 %i.bw, label %bb.p, label %.preheader156.i

.preheader156.i:                                  ; preds = %bb.o
  %i.bx = sext i32 %i.p to i64                    ; 2 uses
  %i.by = getelementptr inbounds [24 x i8], ptr %i.av, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !70 ; 2 uses
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = icmp sgt i32 %i.ca, 1
  br i1 %i.cc, label %.preheader.lr.ph.i, label %._crit_edge189.i

.preheader.lr.ph.i:                               ; preds = %.preheader156.i
  %i.cd = load i32, ptr %i.bs, align 8, !tbaa !69 ; 4 uses
  %i.ce = icmp sgt i32 %i.cd, 1
  br i1 %i.ce, label %.preheader.us.preheader.i, label %._crit_edge189.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.cf = add nsw i32 %i.cd, -1
  %i.cg = zext nneg i32 %i.cd to i64              ; 2 uses
  %wide.trip.count228.i = zext nneg i32 %i.cb to i64
  %wide.trip.count.i = zext nneg i32 %i.cf to i64 ; 3 uses
  %min.iters.check74 = icmp ult i32 %i.cd, 5
  %n.vec76 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n91 = icmp eq i64 %n.vec76, %wide.trip.count.i
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge185.us.i, %.preheader.us.preheader.i
  %indvars.iv225.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next226.i, %._crit_edge185.us.i ] ; 2 uses
  %.0146187.us.i = phi i64 [ -1, %.preheader.us.preheader.i ], [ %spec.select.us.i.lcssa, %._crit_edge185.us.i ] ; 2 uses
  %i.ch = mul nuw nsw i64 %indvars.iv225.i, %i.cg
  %indvars.iv.next226.i = add nuw nsw i64 %indvars.iv225.i, 1 ; 3 uses
  %i.ci = mul nuw nsw i64 %indvars.iv.next226.i, %i.cg
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ch ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ci ; 2 uses
  br i1 %min.iters.check74, label %scalar.ph73.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %.preheader.us.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.0146187.us.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next89, %vector.body77 ] ; 3 uses
  %vec.phi79 = phi <2 x i64> [ %broadcast.splat, %vector.ph75 ], [ %i.cz, %vector.body77 ]
  %vec.phi80 = phi <2 x i64> [ %broadcast.splat, %vector.ph75 ], [ %i.da, %vector.body77 ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %index78 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load81 = load <2 x i64>, ptr %i.cl, align 8, !tbaa !34
  %wide.load82 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !34
  %i.cn = getelementptr i8, ptr %i.cl, i64 8
  %i.co = getelementptr i8, ptr %i.cl, i64 24
  %wide.load83 = load <2 x i64>, ptr %i.cn, align 8, !tbaa !34
  %wide.load84 = load <2 x i64>, ptr %i.co, align 8, !tbaa !34
  %i.cp = add nsw <2 x i64> %wide.load83, %wide.load81
  %i.cq = add nsw <2 x i64> %wide.load84, %wide.load82
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %index78 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load85 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !34
  %wide.load86 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !34
  %i.ct = add nsw <2 x i64> %i.cp, %wide.load85
  %i.cu = add nsw <2 x i64> %i.cq, %wide.load86
  %i.cv = getelementptr i8, ptr %i.cr, i64 8
  %i.cw = getelementptr i8, ptr %i.cr, i64 24
  %wide.load87 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !34
  %wide.load88 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !34
  %i.cx = add nsw <2 x i64> %i.ct, %wide.load87
  %i.cy = add nsw <2 x i64> %i.cu, %wide.load88
  %i.cz = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %i.cx, <2 x i64> %vec.phi79) ; 2 uses
  %i.da = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %i.cy, <2 x i64> %vec.phi80) ; 2 uses
  %index.next89 = add nuw i64 %index78, 4         ; 2 uses
  %i.db = icmp eq i64 %index.next89, %n.vec76
  br i1 %i.db, label %middle.block90, label %vector.body77, !llvm.loop !82

middle.block90:                                   ; preds = %vector.body77
  %rdx.minmax = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %i.cz, <2 x i64> %i.da)
  %i.dc = tail call i64 @llvm.vector.reduce.smax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  br i1 %cmp.n91, label %._crit_edge185.us.i, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %.preheader.us.i, %middle.block90
  %indvars.iv221.i.ph = phi i64 [ 0, %.preheader.us.i ], [ %n.vec76, %middle.block90 ]
  %.1147182.us.i.ph = phi i64 [ %.0146187.us.i, %.preheader.us.i ], [ %i.dc, %middle.block90 ]
  br label %scalar.ph73

scalar.ph73:                                      ; preds = %scalar.ph73.preheader, %scalar.ph73
  %indvars.iv221.i = phi i64 [ %indvars.iv.next222.i, %scalar.ph73 ], [ %indvars.iv221.i.ph, %scalar.ph73.preheader ] ; 3 uses
  %.1147182.us.i = phi i64 [ %spec.select.us.i, %scalar.ph73 ], [ %.1147182.us.i.ph, %scalar.ph73.preheader ]
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv221.i
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv221.i
  %i.df = load <2 x i64>, ptr %i.dd, align 8, !tbaa !34
  %i.dg = load <2 x i64>, ptr %i.de, align 8, !tbaa !34
  %i.dh = shufflevector <2 x i64> %i.dg, <2 x i64> %i.df, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.di = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.dh)
  %spec.select.us.i = tail call i64 @llvm.smax.i64(i64 %i.di, i64 %.1147182.us.i) ; 2 uses
  %indvars.iv.next222.i = add nuw nsw i64 %indvars.iv221.i, 1 ; 2 uses
  %exitcond224.not.i = icmp eq i64 %indvars.iv.next222.i, %wide.trip.count.i
  br i1 %exitcond224.not.i, label %._crit_edge185.us.i, label %scalar.ph73, !llvm.loop !85

._crit_edge185.us.i:                              ; preds = %scalar.ph73, %middle.block90
  %spec.select.us.i.lcssa = phi i64 [ %i.dc, %middle.block90 ], [ %spec.select.us.i, %scalar.ph73 ] ; 2 uses
  %exitcond229.not.i = icmp eq i64 %indvars.iv.next226.i, %wide.trip.count228.i
  br i1 %exitcond229.not.i, label %._crit_edge189.i, label %.preheader.us.i, !llvm.loop !86

bb.p:                                             ; preds = %bb.o
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv218.i
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !48
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv218.i
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !48
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv218.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !81 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.0146, i64 %indvars.iv218.i
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !81 ; 2 uses
  %.not152.i = icmp eq i64 %indvars.iv218.i, 0
  br i1 %.not152.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dr = load i32, ptr %i.bl, align 4, !tbaa !87 ; 2 uses
  %i.ds = load i32, ptr %i.bm, align 8, !tbaa !88
  %i.dt = sub nsw i32 0, %i.ds
  %i.du = ashr i32 %i.dt, %i.dr
  %i.dv = sub nsw i32 0, %i.du
  %i.dw = load i32, ptr %i.bn, align 8, !tbaa !93 ; 2 uses
  %i.dx = load i32, ptr %i.bo, align 4, !tbaa !94
  %i.dy = sub nsw i32 0, %i.dx
  %i.dz = ashr i32 %i.dy, %i.dw
  %i.ea = sub nsw i32 0, %i.dz
  %i.eb = load i32, ptr %i.bp, align 8, !tbaa !32
  %i.ec = sdiv i32 %i.eb, 2
  %i.ed = load i32, ptr %i.bq, align 4, !tbaa !33
  %i.ee = sdiv i32 %i.ed, 2
  %i.ef = ashr i32 %i.ec, %i.dr
  %i.eg = ashr i32 %i.ee, %i.dw
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.eh = load i32, ptr %i.bm, align 8, !tbaa !88
  %i.ei = load i32, ptr %i.bo, align 4, !tbaa !94
  %i.ej = load i32, ptr %i.bp, align 8, !tbaa !32
  %i.ek = sdiv i32 %i.ej, 2
  %i.el = load i32, ptr %i.bq, align 4, !tbaa !33
  %i.em = sdiv i32 %i.el, 2
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.en = phi i32 [ %i.ea, %bb.q ], [ %i.ei, %bb.r ] ; 3 uses
  %i.eo = phi i32 [ %i.dv, %bb.q ], [ %i.eh, %bb.r ] ; 6 uses
  %.0134.i = phi i32 [ %i.ef, %bb.q ], [ %i.ek, %bb.r ] ; 3 uses
  %.0133.i = phi i32 [ %i.eg, %bb.q ], [ %i.em, %bb.r ] ; 2 uses
  %i.ep = icmp sgt i32 %i.en, 0
  br i1 %i.ep, label %.lr.ph180.i, label %._crit_edge181.i

.lr.ph180.i:                                      ; preds = %bb.s
  %i.eq = load i32, ptr %i.br, align 4, !tbaa !67
  %i.er = icmp eq i32 %i.eq, 8
  %i.es = sext i32 %i.dk to i64                   ; 2 uses
  %i.et = sext i32 %i.dm to i64                   ; 2 uses
  %i.eu = icmp sgt i32 %i.eo, 0                   ; 2 uses
  br i1 %i.er, label %.lr.ph180.split.us.i, label %.lr.ph180.split.i

.lr.ph180.split.us.i:                             ; preds = %.lr.ph180.i
  br i1 %i.eu, label %.lr.ph180.split.us.split.i, label %._crit_edge181.i

.lr.ph180.split.us.split.i:                       ; preds = %.lr.ph180.split.us.i
  %i.ev = load i32, ptr %i.bs, align 8, !tbaa !69
  %i.ew = sext i32 %.0134.i to i64
  br label %.preheader157.us.i

.preheader157.us.i:                               ; preds = %..loopexit_crit_edge.us.i, %.lr.ph180.split.us.split.i
  %.0135177.us.i = phi ptr [ %i.dq, %.lr.ph180.split.us.split.i ], [ %i.fs, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.0136175.us.i = phi ptr [ %i.do, %.lr.ph180.split.us.split.i ], [ %i.fr, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.0139174.us.i = phi i32 [ 0, %.lr.ph180.split.us.split.i ], [ %i.ft, %..loopexit_crit_edge.us.i ] ; 2 uses
  %i.ex = sdiv i32 %.0139174.us.i, %.0133.i
  %i.ey = mul nsw i32 %i.ex, %i.ev
  %i.ez = sext i32 %i.ey to i64
  %invariant.gep244.i = getelementptr [8 x i8], ptr %i.bb, i64 %i.ez
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge169.us.i, %.preheader157.us.i
  %indvars.iv212.i = phi i64 [ 0, %.preheader157.us.i ], [ %indvars.iv.next213.i, %._crit_edge169.us.i ] ; 2 uses
  %indvars.iv207.i = phi i64 [ 0, %.preheader157.us.i ], [ %indvars.iv.next208.i, %._crit_edge169.us.i ] ; 3 uses
  %indvars216.i = trunc i64 %indvars.iv207.i to i32
  %indvars.iv.next208.i = add nsw i64 %indvars.iv207.i, %i.ew ; 2 uses
  %indvars215.i = trunc i64 %indvars.iv.next208.i to i32 ; 2 uses
  %i.fa = tail call i32 @llvm.smin.i32(i32 %i.eo, i32 %indvars215.i) ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, %indvars216.i
  br i1 %i.fb, label %.lr.ph168.us.preheader.i, label %._crit_edge169.us.i

.lr.ph168.us.preheader.i:                         ; preds = %bb.t
  %i.fc = sext i32 %i.fa to i64
  br label %.lr.ph168.us.i

.lr.ph168.us.i:                                   ; preds = %.lr.ph168.us.i, %.lr.ph168.us.preheader.i
  %indvars.iv209.i = phi i64 [ %indvars.iv207.i, %.lr.ph168.us.preheader.i ], [ %indvars.iv.next210.i, %.lr.ph168.us.i ] ; 3 uses
  %.0131166.us.i = phi i64 [ 0, %.lr.ph168.us.preheader.i ], [ %i.fm, %.lr.ph168.us.i ]
  %i.fd = getelementptr inbounds i8, ptr %.0136175.us.i, i64 %indvars.iv209.i
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !62
  %i.ff = zext i8 %i.fe to i32
  %i.fg = getelementptr inbounds i8, ptr %.0135177.us.i, i64 %indvars.iv209.i
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !62
  %i.fi = zext i8 %i.fh to i32
  %i.fj = sub nsw i32 %i.ff, %i.fi
  %i.fk = tail call i32 @llvm.abs.i32(i32 %i.fj, i1 true)
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = add nuw nsw i64 %.0131166.us.i, %i.fl   ; 2 uses
  %indvars.iv.next210.i = add nsw i64 %indvars.iv209.i, 1 ; 2 uses
  %i.fn = icmp slt i64 %indvars.iv.next210.i, %i.fc
  br i1 %i.fn, label %.lr.ph168.us.i, label %._crit_edge169.us.i, !llvm.loop !95

._crit_edge169.us.i:                              ; preds = %.lr.ph168.us.i, %bb.t
  %.0131.lcssa.us.i = phi i64 [ 0, %bb.t ], [ %i.fm, %.lr.ph168.us.i ]
  %gep245.i = getelementptr [8 x i8], ptr %invariant.gep244.i, i64 %indvars.iv212.i ; 2 uses
  %i.fo = load i64, ptr %gep245.i, align 8, !tbaa !34
  %i.fp = add nsw i64 %i.fo, %.0131.lcssa.us.i
  store i64 %i.fp, ptr %gep245.i, align 8, !tbaa !34
  %indvars.iv.next213.i = add nuw nsw i64 %indvars.iv212.i, 1
  %i.fq = icmp sgt i32 %i.eo, %indvars215.i
  br i1 %i.fq, label %bb.t, label %..loopexit_crit_edge.us.i, !llvm.loop !96

..loopexit_crit_edge.us.i:                        ; preds = %._crit_edge169.us.i
  %i.fr = getelementptr inbounds i8, ptr %.0136175.us.i, i64 %i.es
  %i.fs = getelementptr inbounds i8, ptr %.0135177.us.i, i64 %i.et
  %i.ft = add nuw nsw i32 %.0139174.us.i, 1       ; 2 uses
  %exitcond217.not.i = icmp eq i32 %i.ft, %i.en
  br i1 %exitcond217.not.i, label %._crit_edge181.i, label %.preheader157.us.i, !llvm.loop !97

.lr.ph180.split.i:                                ; preds = %.lr.ph180.i
  br i1 %i.eu, label %.lr.ph180.split.split.i, label %._crit_edge181.i

.lr.ph180.split.split.i:                          ; preds = %.lr.ph180.split.i
  %i.fu = load i32, ptr %i.bs, align 8, !tbaa !69
  %i.fv = sext i32 %.0134.i to i64                ; 2 uses
  %1 = zext nneg i32 %i.eo to i64
  br label %.preheader158.i

.preheader158.i:                                  ; preds = %..loopexit159_crit_edge.i, %.lr.ph180.split.split.i
  %.0135177.i = phi ptr [ %i.dq, %.lr.ph180.split.split.i ], [ %i.hl, %..loopexit159_crit_edge.i ] ; 3 uses
  %.0136175.i = phi ptr [ %i.do, %.lr.ph180.split.split.i ], [ %i.hk, %..loopexit159_crit_edge.i ] ; 3 uses
  %.0139174.i = phi i32 [ 0, %.lr.ph180.split.split.i ], [ %i.hm, %..loopexit159_crit_edge.i ] ; 2 uses
  %i.fw = sdiv i32 %.0139174.i, %.0133.i
  %i.fx = mul nsw i32 %i.fw, %i.fu
  %i.fy = sext i32 %i.fx to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.bb, i64 %i.fy
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i, %.preheader158.i
  %indvars.iv202.i = phi i64 [ 0, %.preheader158.i ], [ %indvars.iv.next203.i, %._crit_edge.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.preheader158.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 6 uses
  %2 = trunc i64 %indvars.iv202.i to i32
  %3 = add i32 %2, 1
  %4 = mul i32 %3, %.0134.i
  %5 = sext i32 %4 to i64
  %smin = tail call i64 @llvm.smin.i64(i64 %1, i64 %5)
  %6 = add i64 %indvars.iv.i, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %smin, i64 %6)
  %7 = mul i64 %indvars.iv202.i, %i.fv
  %8 = sub i64 %smax, %7                          ; 3 uses
  %indvars206.i = trunc i64 %indvars.iv.i to i32
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, %i.fv ; 2 uses
  %indvars205.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.fz = tail call i32 @llvm.smin.i32(i32 %i.eo, i32 %indvars205.i) ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, %indvars206.i
  br i1 %i.ga, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.u
  %i.gb = sext i32 %i.fz to i64
  %min.iters.check = icmp ult i64 %8, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %8, -4                         ; 3 uses
  %i.gc = add i64 %indvars.iv.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.gs, %vector.body ]
  %vec.phi69 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.gt, %vector.body ]
  %i.gd = add i64 %indvars.iv.i, %index           ; 2 uses
  %i.ge = getelementptr inbounds [2 x i8], ptr %.0136175.i, i64 %i.gd ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %wide.load = load <2 x i16>, ptr %i.ge, align 2, !tbaa !98
  %wide.load70 = load <2 x i16>, ptr %i.gf, align 2, !tbaa !98
  %i.gg = zext <2 x i16> %wide.load to <2 x i32>
  %i.gh = zext <2 x i16> %wide.load70 to <2 x i32>
  %i.gi = getelementptr inbounds [2 x i8], ptr %.0135177.i, i64 %i.gd ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %wide.load71 = load <2 x i16>, ptr %i.gi, align 2, !tbaa !98
  %wide.load72 = load <2 x i16>, ptr %i.gj, align 2, !tbaa !98
  %i.gk = zext <2 x i16> %wide.load71 to <2 x i32>
  %i.gl = zext <2 x i16> %wide.load72 to <2 x i32>
  %i.gm = sub nsw <2 x i32> %i.gg, %i.gk
  %i.gn = sub nsw <2 x i32> %i.gh, %i.gl
  %i.go = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.gm, i1 true)
  %i.gp = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.gn, i1 true)
  %i.gq = zext nneg <2 x i32> %i.go to <2 x i64>
  %i.gr = zext nneg <2 x i32> %i.gp to <2 x i64>
  %i.gs = add <2 x i64> %vec.phi, %i.gq           ; 2 uses
  %i.gt = add <2 x i64> %vec.phi69, %i.gr         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gu = icmp eq i64 %index.next, %n.vec
  br i1 %i.gu, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.gt, %i.gs
  %i.gv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv199.i.ph = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %i.gc, %middle.block ]
  %.0161.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.gv, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i, %.lr.ph.i ], [ %indvars.iv199.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.0161.i = phi i64 [ %i.hf, %.lr.ph.i ], [ %.0161.i.ph, %.lr.ph.i.preheader ]
  %i.gw = getelementptr inbounds [2 x i8], ptr %.0136175.i, i64 %indvars.iv199.i
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !98
  %i.gy = zext i16 %i.gx to i32
  %i.gz = getelementptr inbounds [2 x i8], ptr %.0135177.i, i64 %indvars.iv199.i
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !98
  %i.hb = zext i16 %i.ha to i32
  %i.hc = sub nsw i32 %i.gy, %i.hb
  %i.hd = tail call i32 @llvm.abs.i32(i32 %i.hc, i1 true)
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = add nuw nsw i64 %.0161.i, %i.he         ; 2 uses
  %indvars.iv.next200.i = add nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %i.hg = icmp slt i64 %indvars.iv.next200.i, %i.gb
  br i1 %i.hg, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !101

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.u
  %.0.lcssa.i = phi i64 [ 0, %bb.u ], [ %i.gv, %middle.block ], [ %i.hf, %.lr.ph.i ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv202.i ; 2 uses
  %i.hh = load i64, ptr %gep.i, align 8, !tbaa !34
  %i.hi = add nsw i64 %i.hh, %.0.lcssa.i
  store i64 %i.hi, ptr %gep.i, align 8, !tbaa !34
  %indvars.iv.next203.i = add nuw nsw i64 %indvars.iv202.i, 1
  %i.hj = icmp sgt i32 %i.eo, %indvars205.i
  br i1 %i.hj, label %bb.u, label %..loopexit159_crit_edge.i, !llvm.loop !102

..loopexit159_crit_edge.i:                        ; preds = %._crit_edge.i
  %i.hk = getelementptr inbounds i8, ptr %.0136175.i, i64 %i.es
  %i.hl = getelementptr inbounds i8, ptr %.0135177.i, i64 %i.et
  %i.hm = add nuw nsw i32 %.0139174.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.hm, %i.en
  br i1 %exitcond.not.i, label %._crit_edge181.i, label %.preheader158.i, !llvm.loop !97

._crit_edge181.i:                                 ; preds = %..loopexit159_crit_edge.i, %..loopexit_crit_edge.us.i, %.lr.ph180.split.i, %.lr.ph180.split.us.i, %bb.s
  %indvars.iv.next219.i = add nuw nsw i64 %indvars.iv218.i, 1
  br label %bb.m, !llvm.loop !103

._crit_edge189.i:                                 ; preds = %._crit_edge185.us.i, %.preheader.lr.ph.i, %.preheader156.i
  %.0146.lcssa.i = phi i64 [ -1, %.preheader156.i ], [ -1, %.preheader.lr.ph.i ], [ %spec.select.us.i.lcssa, %._crit_edge185.us.i ]
  %i.hn = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 8 uses
  store i64 0, ptr %i.hn, align 8, !tbaa !79
  %i.ho = load i32, ptr %i.bc, align 8, !tbaa !71 ; 3 uses
  %i.hp = icmp sgt i32 %i.ho, 0
  br i1 %i.hp, label %.lr.ph193.i, label %calc_diffs.exit

.lr.ph193.i:                                      ; preds = %._crit_edge189.i
  %wide.trip.count233.i = zext nneg i32 %i.ho to i64 ; 6 uses
  %min.iters.check96 = icmp ult i32 %i.ho, 14
  br i1 %min.iters.check96, label %scalar.ph95.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph193.i
  %i.hq = mul nsw i64 %i.bx, 24
  %i.hr = getelementptr i8, ptr %i.av, i64 %i.hq
  %scevgep = getelementptr i8, ptr %i.hr, i64 24
  %i.hs = shl nuw nsw i64 %wide.trip.count233.i, 3
  %scevgep94 = getelementptr i8, ptr %i.bb, i64 %i.hs
  %bound0 = icmp ult ptr %i.hn, %scevgep94
  %bound1 = icmp ult ptr %i.bb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph95.preheader, label %vector.ph97

vector.ph97:                                      ; preds = %vector.memcheck
  %n.vec98 = and i64 %wide.trip.count233.i, 2147483644 ; 3 uses
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph97
  %index100 = phi i64 [ 0, %vector.ph97 ], [ %index.next105, %vector.body99 ] ; 2 uses
  %vec.phi101 = phi <2 x i64> [ zeroinitializer, %vector.ph97 ], [ %i.hv, %vector.body99 ]
  %vec.phi102 = phi <2 x i64> [ zeroinitializer, %vector.ph97 ], [ %i.hw, %vector.body99 ]
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index100 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %wide.load103 = load <2 x i64>, ptr %i.ht, align 8, !tbaa !34, !alias.scope !104
  %wide.load104 = load <2 x i64>, ptr %i.hu, align 8, !tbaa !34, !alias.scope !104
  %i.hv = add <2 x i64> %wide.load103, %vec.phi101 ; 2 uses
  %i.hw = add <2 x i64> %wide.load104, %vec.phi102 ; 2 uses
  %index.next105 = add nuw i64 %index100, 4       ; 2 uses
  %i.hx = icmp eq i64 %index.next105, %n.vec98
  br i1 %i.hx, label %middle.block106, label %vector.body99, !llvm.loop !107

middle.block106:                                  ; preds = %vector.body99
  %bin.rdx107 = add <2 x i64> %i.hw, %i.hv
  %i.hy = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx107) ; 2 uses
  store i64 %i.hy, ptr %i.hn, align 8, !tbaa !79, !alias.scope !108, !noalias !104
  %cmp.n108 = icmp eq i64 %n.vec98, %wide.trip.count233.i
  br i1 %cmp.n108, label %calc_diffs.exit, label %scalar.ph95.preheader

scalar.ph95.preheader:                            ; preds = %vector.memcheck, %.lr.ph193.i, %middle.block106
  %indvars.iv230.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph193.i ], [ %n.vec98, %middle.block106 ] ; 3 uses
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph193.i ], [ %i.hy, %middle.block106 ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count233.i, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph95.prol.loopexit, label %scalar.ph95.prol

scalar.ph95.prol:                                 ; preds = %scalar.ph95.preheader, %scalar.ph95.prol
  %indvars.iv230.i.prol = phi i64 [ %indvars.iv.next231.i.prol, %scalar.ph95.prol ], [ %indvars.iv230.i.ph, %scalar.ph95.preheader ] ; 2 uses
  %i.hz = phi i64 [ %i.ic, %scalar.ph95.prol ], [ %.ph, %scalar.ph95.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph95.prol ], [ 0, %scalar.ph95.preheader ]
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230.i.prol
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !34
  %i.ic = add nsw i64 %i.ib, %i.hz                ; 3 uses
  store i64 %i.ic, ptr %i.hn, align 8, !tbaa !79
  %indvars.iv.next231.i.prol = add nuw nsw i64 %indvars.iv230.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph95.prol.loopexit, label %scalar.ph95.prol, !llvm.loop !110

scalar.ph95.prol.loopexit:                        ; preds = %scalar.ph95.prol, %scalar.ph95.preheader
  %indvars.iv230.i.unr = phi i64 [ %indvars.iv230.i.ph, %scalar.ph95.preheader ], [ %indvars.iv.next231.i.prol, %scalar.ph95.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph95.preheader ], [ %i.ic, %scalar.ph95.prol ]
  %i.id = sub nsw i64 %indvars.iv230.i.ph, %wide.trip.count233.i
  %i.ie = icmp ugt i64 %i.id, -4
  br i1 %i.ie, label %calc_diffs.exit, label %scalar.ph95

scalar.ph95:                                      ; preds = %scalar.ph95.prol.loopexit, %scalar.ph95
  %indvars.iv230.i = phi i64 [ %indvars.iv.next231.i.3, %scalar.ph95 ], [ %indvars.iv230.i.unr, %scalar.ph95.prol.loopexit ] ; 5 uses
  %i.if = phi i64 [ %i.iu, %scalar.ph95 ], [ %.unr, %scalar.ph95.prol.loopexit ]
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230.i
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !34
  %i.ii = add nsw i64 %i.ih, %i.if                ; 2 uses
  store i64 %i.ii, ptr %i.hn, align 8, !tbaa !79
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !34
  %i.im = add nsw i64 %i.il, %i.ii                ; 2 uses
  store i64 %i.im, ptr %i.hn, align 8, !tbaa !79
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !34
  %i.iq = add nsw i64 %i.ip, %i.im                ; 2 uses
  store i64 %i.iq, ptr %i.hn, align 8, !tbaa !79
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv230.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load i64, ptr %i.is, align 8, !tbaa !34
  %i.iu = add nsw i64 %i.it, %i.iq                ; 2 uses
  store i64 %i.iu, ptr %i.hn, align 8, !tbaa !79
  %indvars.iv.next231.i.3 = add nuw nsw i64 %indvars.iv230.i, 4 ; 2 uses
  %exitcond234.not.i.3 = icmp eq i64 %indvars.iv.next231.i.3, %wide.trip.count233.i
  br i1 %exitcond234.not.i.3, label %calc_diffs.exit, label %scalar.ph95, !llvm.loop !112

calc_diffs.exit:                                  ; preds = %scalar.ph95.prol.loopexit, %scalar.ph95, %middle.block106, %._crit_edge189.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %.0146.lcssa.i, ptr %i.iv, align 8, !tbaa !78
  %.pre32 = load i32, ptr %i.am, align 8, !tbaa !75
  br label %bb.v

bb.v:                                             ; preds = %calc_diffs.exit, %bb.k
  %i.iw = phi i32 [ %.pre32, %calc_diffs.exit ], [ %i.p, %bb.k ]
  %i.ix = add nsw i32 %i.iw, 1                    ; 2 uses
  store i32 %i.ix, ptr %i.am, align 8, !tbaa !75
  %i.iy = getelementptr inbounds nuw i8, ptr %i.f, i64 136 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !36
  %.not161 = icmp eq i32 %i.ix, %i.iz
  br i1 %.not161, label %bb.w, label %.critedge5

bb.w:                                             ; preds = %bb.v
  %i.ja = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  tail call void @av_frame_free(ptr noundef nonnull %i.ja) #9
  %i.jb = tail call ptr @av_frame_clone(ptr noundef nonnull %.0146) #9
  store ptr %i.jb, ptr %i.ja, align 8, !tbaa !113
  store i32 0, ptr %i.am, align 8, !tbaa !75
  %i.jc = load i32, ptr %i.iy, align 8, !tbaa !36 ; 4 uses
  %i.jd = icmp sgt i32 %i.jc, 0
  %i.je = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !35 ; 5 uses
  br i1 %i.jd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w
  %i.jg = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !114 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.jc to i64   ; 2 uses
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %.pre34 = load i64, ptr %.phi.trans.insert33, align 8, !tbaa !78 ; 2 uses
  %xtraiter123 = and i64 %wide.trip.count, 1
  %i.ji = icmp eq i32 %i.jc, 1
  br i1 %i.ji, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.new
  %i.jj = phi i64 [ %.pre34, %.lr.ph.new ], [ %i.kb, %bb.x ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.x ] ; 4 uses
  %.013410 = phi i32 [ 0, %.lr.ph.new ], [ %.1135.1, %bb.x ]
  %.01438 = phi i32 [ -1, %.lr.ph.new ], [ %spec.select.1, %bb.x ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.x ]
  %i.jk = getelementptr inbounds nuw [24 x i8], ptr %i.jf, i64 %indvars.iv ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !79
  %i.jn = icmp sgt i64 %i.jm, %i.jh
  %i.jo = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %spec.select = select i1 %i.jn, i32 %i.jo, i32 %.01438
end_hunk_0
