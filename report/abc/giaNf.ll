Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaNf?download=true
inline.NumInlined: 1012
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 48
begin_hunk_0_@Nf_ObjMergeOrder:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !87   ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !104  ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !105  ; 6 uses
  %.val172 = load i64, ptr %i.g, align 4          ; 4 uses
  %i.u = trunc i64 %.val172 to i32                ; 2 uses
  %i.v = and i32 %i.u, 536870911
  %i.w = sub nsw i32 %1, %i.v                     ; 5 uses
  %i.x = getelementptr i8, ptr %0, i64 88         ; 4 uses
  %.val.i = load ptr, ptr %i.x, align 8, !tbaa !33 ; 3 uses
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !23  ; 3 uses
  %i.ab = icmp slt i32 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr i8, ptr %0, i64 72
  %.val40.i = load ptr, ptr %i.ac, align 8, !tbaa !91
  %i.ad = lshr i32 %i.aa, 16
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val40.i, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !102
  %i.ah = and i32 %i.aa, 65535
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !23 ; 4 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.am = getelementptr i8, ptr %0, i64 32
  %.val46.i = load ptr, ptr %i.am, align 8, !tbaa !64
  %i.an = getelementptr i8, ptr %.val46.i, i64 4
  %.val46.val.i = load i32, ptr %i.an, align 4, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %Nf_CutGetSign.exit.i, %.lr.ph.i
  %.pn50.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.ei, %Nf_CutGetSign.exit.i ] ; 15 uses
  %.03549.i = phi i32 [ 0, %.lr.ph.i ], [ %i.eh, %Nf_CutGetSign.exit.i ]
  %.03648.i = phi ptr [ %2, %.lr.ph.i ], [ %i.eg, %Nf_CutGetSign.exit.i ] ; 6 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %.pn50.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.03648.i, i64 8
  store i32 0, ptr %i.ao, align 8, !tbaa !107
  %i.ap = getelementptr inbounds nuw i8, ptr %.03648.i, i64 12
  store float 0.000000e+00, ptr %i.ap, align 4, !tbaa !108
  %.0.val.i = load i32, ptr %.0.i, align 4, !tbaa !23 ; 4 uses
  %i.aq = lshr i32 %.0.val.i, 5
  %i.ar = getelementptr inbounds nuw i8, ptr %.03648.i, i64 16
  %i.as = and i32 %i.aq, 67108863                 ; 2 uses
  %i.at = shl i32 %.0.val.i, 27
  %i.au = getelementptr inbounds nuw i8, ptr %.pn50.i, i64 8 ; 3 uses
  %i.av = and i32 %.0.val.i, 31                   ; 3 uses
  %.not.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i, label %Nf_CutGetSign.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %wide.trip.count.i.i = zext nneg i32 %i.av to i64 ; 5 uses
  %min.iters.check = icmp samesign ult i32 %i.av, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 28       ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn50.i, i64 16
  %wide.load = load <2 x i32>, ptr %i.au, align 4, !tbaa !23
  %wide.load953 = load <2 x i32>, ptr %i.aw, align 4, !tbaa !23
  %i.ax = and <2 x i32> %wide.load, splat (i32 63)
  %i.ay = and <2 x i32> %wide.load953, splat (i32 63)
  %i.az = zext nneg <2 x i32> %i.ax to <2 x i64>
  %i.ba = zext nneg <2 x i32> %i.ay to <2 x i64>
  %i.bb = shl nuw <2 x i64> splat (i64 1), %i.az  ; 2 uses
  %i.bc = shl nuw <2 x i64> splat (i64 1), %i.ba  ; 2 uses
  %i.bd = icmp eq i64 %n.vec, 4
  br i1 %i.bd, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.be = getelementptr inbounds nuw i8, ptr %.pn50.i, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn50.i, i64 32
  %wide.load.1 = load <2 x i32>, ptr %i.be, align 4, !tbaa !23
  %wide.load953.1 = load <2 x i32>, ptr %i.bf, align 4, !tbaa !23
  %i.bg = and <2 x i32> %wide.load.1, splat (i32 63)
  %i.bh = and <2 x i32> %wide.load953.1, splat (i32 63)
  %i.bi = zext nneg <2 x i32> %i.bg to <2 x i64>
  %i.bj = zext nneg <2 x i32> %i.bh to <2 x i64>
  %i.bk = shl nuw <2 x i64> splat (i64 1), %i.bi
  %i.bl = shl nuw <2 x i64> splat (i64 1), %i.bj
  %i.bm = or <2 x i64> %i.bk, %i.bb               ; 2 uses
  %i.bn = or <2 x i64> %i.bl, %i.bc               ; 2 uses
  %i.bo = icmp eq i64 %n.vec, 8
  br i1 %i.bo, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn50.i, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn50.i, i64 48
  %wide.load.2 = load <2 x i32>, ptr %i.bp, align 4, !tbaa !23
  %wide.load953.2 = load <2 x i32>, ptr %i.bq, align 4, !tbaa !23
  %i.br = and <2 x i32> %wide.load.2, splat (i32 63)
  %i.bs = and <2 x i32> %wide.load953.2, splat (i32 63)
  %i.bt = zext nneg <2 x i32> %i.br to <2 x i64>
  %i.bu = zext nneg <2 x i32> %i.bs to <2 x i64>
  %i.bv = shl nuw <2 x i64> splat (i64 1), %i.bt
  %i.bw = shl nuw <2 x i64> splat (i64 1), %i.bu
  %i.bx = or <2 x i64> %i.bv, %i.bm               ; 2 uses
  %i.by = or <2 x i64> %i.bw, %i.bn               ; 2 uses
  %i.bz = icmp eq i64 %n.vec, 12
  br i1 %i.bz, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ca = getelementptr inbounds nuw i8, ptr %.pn50.i, i64 56
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn50.i, i64 64
  %wide.load.3 = load <2 x i32>, ptr %i.ca, align 4, !tbaa !23
  %wide.load953.3 = load <2 x i32>, ptr %i.cb, align 4, !tbaa !23
  %i.cc = and <2 x i32> %wide.load.3, splat (i32 63)
  %i.cd = and <2 x i32> %wide.load953.3, splat (i32 63)
  %i.ce = zext nneg <2 x i32> %i.cc to <2 x i64>
  %i.cf = zext nneg <2 x i32> %i.cd to <2 x i64>
  %i.cg = shl nuw <2 x i64> splat (i64 1), %i.ce
  %i.ch = shl nuw <2 x i64> splat (i64 1), %i.cf
  %i.ci = or <2 x i64> %i.cg, %i.bx               ; 2 uses
  %i.cj = or <2 x i64> %i.ch, %i.by               ; 2 uses
  %i.ck = icmp eq i64 %n.vec, 16
  br i1 %i.ck, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn50.i, i64 72
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn50.i, i64 80
  %wide.load.4 = load <2 x i32>, ptr %i.cl, align 4, !tbaa !23
  %wide.load953.4 = load <2 x i32>, ptr %i.cm, align 4, !tbaa !23
  %i.cn = and <2 x i32> %wide.load.4, splat (i32 63)
  %i.co = and <2 x i32> %wide.load953.4, splat (i32 63)
  %i.cp = zext nneg <2 x i32> %i.cn to <2 x i64>
  %i.cq = zext nneg <2 x i32> %i.co to <2 x i64>
  %i.cr = shl nuw <2 x i64> splat (i64 1), %i.cp
  %i.cs = shl nuw <2 x i64> splat (i64 1), %i.cq
  %i.ct = or <2 x i64> %i.cr, %i.ci               ; 2 uses
  %i.cu = or <2 x i64> %i.cs, %i.cj               ; 2 uses
  %i.cv = icmp eq i64 %n.vec, 20
  br i1 %i.cv, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn50.i, i64 88
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn50.i, i64 96
  %wide.load.5 = load <2 x i32>, ptr %i.cw, align 4, !tbaa !23
  %wide.load953.5 = load <2 x i32>, ptr %i.cx, align 4, !tbaa !23
  %i.cy = and <2 x i32> %wide.load.5, splat (i32 63)
  %i.cz = and <2 x i32> %wide.load953.5, splat (i32 63)
  %i.da = zext nneg <2 x i32> %i.cy to <2 x i64>
  %i.db = zext nneg <2 x i32> %i.cz to <2 x i64>
  %i.dc = shl nuw <2 x i64> splat (i64 1), %i.da
  %i.dd = shl nuw <2 x i64> splat (i64 1), %i.db
  %i.de = or <2 x i64> %i.dc, %i.ct               ; 2 uses
  %i.df = or <2 x i64> %i.dd, %i.cu               ; 2 uses
  %i.dg = icmp eq i64 %n.vec, 24
  br i1 %i.dg, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn50.i, i64 104
  %i.di = getelementptr inbounds nuw i8, ptr %.pn50.i, i64 112
  %wide.load.6 = load <2 x i32>, ptr %i.dh, align 4, !tbaa !23
  %wide.load953.6 = load <2 x i32>, ptr %i.di, align 4, !tbaa !23
  %i.dj = and <2 x i32> %wide.load.6, splat (i32 63)
  %i.dk = and <2 x i32> %wide.load953.6, splat (i32 63)
  %i.dl = zext nneg <2 x i32> %i.dj to <2 x i64>
  %i.dm = zext nneg <2 x i32> %i.dk to <2 x i64>
  %i.dn = shl nuw <2 x i64> splat (i64 1), %i.dl
  %i.do = shl nuw <2 x i64> splat (i64 1), %i.dm
  %i.dp = or <2 x i64> %i.dn, %i.de
  %i.dq = or <2 x i64> %i.do, %i.df
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa1118 = phi <2 x i64> [ %i.bb, %vector.ph ], [ %i.bm, %vector.body.1 ], [ %i.bx, %vector.body.2 ], [ %i.ci, %vector.body.3 ], [ %i.ct, %vector.body.4 ], [ %i.de, %vector.body.5 ], [ %i.dp, %vector.body.6 ]
  %.lcssa1117 = phi <2 x i64> [ %i.bc, %vector.ph ], [ %i.bn, %vector.body.1 ], [ %i.by, %vector.body.2 ], [ %i.cj, %vector.body.3 ], [ %i.cu, %vector.body.4 ], [ %i.df, %vector.body.5 ], [ %i.dq, %vector.body.6 ]
  %bin.rdx = or <2 x i64> %.lcssa1117, %.lcssa1118
  %i.dr = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %Nf_CutGetSign.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.dr, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i64 [ %i.dx, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !23
  %i.du = and i32 %i.dt, 63
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = or i64 %i.dw, %.067.i.i                 ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Nf_CutGetSign.exit.i, label %.lr.ph.i.i, !llvm.loop !186

Nf_CutGetSign.exit.i:                             ; preds = %.lr.ph.i.i, %middle.block, %bb.c
  %.pre-phi715 = phi i64 [ 0, %bb.c ], [ %wide.trip.count.i.i, %middle.block ], [ %wide.trip.count.i.i, %.lr.ph.i.i ]
  %.06.lcssa.i.i = phi i64 [ 0, %bb.c ], [ %i.dr, %middle.block ], [ %i.dx, %.lr.ph.i.i ]
  store i64 %.06.lcssa.i.i, ptr %.03648.i, align 16, !tbaa !109
  %i.dy = lshr i32 %i.as, 1
  %.not.i = icmp slt i32 %i.dy, %.val46.val.i
  %i.dz = select i1 %.not.i, i32 0, i32 67108864
  %i.ea = or disjoint i32 %i.at, %i.dz
  %i.eb = or disjoint i32 %i.ea, %i.as
  store i32 %i.eb, ptr %i.ar, align 16
  %i.ec = getelementptr inbounds nuw i8, ptr %.03648.i, i64 20
  %i.ed = shl i32 %.0.val.i, 2
  %i.ee = and i32 %i.ed, 124
  %i.ef = zext nneg i32 %i.ee to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ec, ptr nonnull align 4 %i.au, i64 %i.ef, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %.03648.i, i64 48 ; 2 uses
  %i.eh = add nuw nsw i32 %.03549.i, 1            ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %.pre-phi715
  %exitcond.not = icmp eq i32 %i.eh, %i.ak
  br i1 %exitcond.not, label %._crit_edge.i, label %bb.c, !llvm.loop !187

._crit_edge.i:                                    ; preds = %Nf_CutGetSign.exit.i, %bb.b
  %.036.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.eg, %Nf_CutGetSign.exit.i ] ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ek = load i32, ptr %i.ej, align 16
  %i.el = icmp ugt i32 %i.ek, 268435455
  br i1 %i.el, label %bb.d, label %Nf_ManPrepareCuts.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.em = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 8
  store i32 0, ptr %i.em, align 8, !tbaa !107
  %i.en = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 12
  store float 0.000000e+00, ptr %i.en, align 4, !tbaa !108
  %i.eo = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 16 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8
  %i.eq = and i32 %i.ep, 67108864
  %i.er = or disjoint i32 %i.eq, 134217730
  store i32 %i.er, ptr %i.eo, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 20
  store i32 %i.w, ptr %i.es, align 4, !tbaa !23
  %i.et = and i32 %i.w, 63
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = shl nuw i64 1, %i.eu
  store i64 %i.ev, ptr %.036.lcssa.i, align 8, !tbaa !109
  %i.ew = add nsw i32 %i.ak, 1
  br label %Nf_ManPrepareCuts.exit

bb.e:                                             ; preds = %bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.ex, align 8, !tbaa !107
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float 0.000000e+00, ptr %i.ey, align 4, !tbaa !108
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 16
  %i.fb = and i32 %i.fa, 67108864
  %i.fc = or disjoint i32 %i.fb, 134217730
  store i32 %i.fc, ptr %i.ez, align 16
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.w, ptr %i.fd, align 4, !tbaa !23
  %i.fe = and i32 %i.w, 63
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = shl nuw i64 1, %i.ff
  store i64 %i.fg, ptr %2, align 16, !tbaa !109
  br label %Nf_ManPrepareCuts.exit

Nf_ManPrepareCuts.exit:                           ; preds = %._crit_edge.i, %bb.d, %bb.e
  %.1.i = phi i32 [ 1, %bb.e ], [ %i.ew, %bb.d ], [ %i.ak, %._crit_edge.i ] ; 5 uses
  %i.fh = lshr i64 %.val172, 32
  %i.fi = trunc nuw i64 %i.fh to i32
  %i.fj = and i32 %i.fi, 536870911
  %i.fk = sub nsw i32 %1, %i.fj                   ; 5 uses
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !23 ; 3 uses
  %i.fo = icmp slt i32 %i.fn, 1
  br i1 %i.fo, label %bb.i, label %bb.f

bb.f:                                             ; preds = %Nf_ManPrepareCuts.exit
  %i.fp = getelementptr i8, ptr %0, i64 72
  %.val40.i185 = load ptr, ptr %i.fp, align 8, !tbaa !91
  %i.fq = lshr i32 %i.fn, 16
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.val40.i185, i64 %i.fr
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !102
  %i.fu = and i32 %i.fn, 65535
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.fv ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !23 ; 4 uses
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %.lr.ph.i190, label %._crit_edge.i186

.lr.ph.i190:                                      ; preds = %bb.f
  %i.fz = getelementptr i8, ptr %0, i64 32
  %.val46.i208 = load ptr, ptr %i.fz, align 8, !tbaa !64
  %i.ga = getelementptr i8, ptr %.val46.i208, i64 4
  %.val46.val.i209 = load i32, ptr %i.ga, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %Nf_CutGetSign.exit.i206, %.lr.ph.i190
  %.pn50.i191 = phi ptr [ %i.fw, %.lr.ph.i190 ], [ %i.jv, %Nf_CutGetSign.exit.i206 ] ; 15 uses
  %.03549.i192 = phi i32 [ 0, %.lr.ph.i190 ], [ %i.ju, %Nf_CutGetSign.exit.i206 ]
  %.03648.i193 = phi ptr [ %3, %.lr.ph.i190 ], [ %i.jt, %Nf_CutGetSign.exit.i206 ] ; 6 uses
  %.0.i194 = getelementptr inbounds nuw i8, ptr %.pn50.i191, i64 4 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.03648.i193, i64 8
  store i32 0, ptr %i.gb, align 8, !tbaa !107
  %i.gc = getelementptr inbounds nuw i8, ptr %.03648.i193, i64 12
  store float 0.000000e+00, ptr %i.gc, align 4, !tbaa !108
  %.0.val.i195 = load i32, ptr %.0.i194, align 4, !tbaa !23 ; 4 uses
  %i.gd = lshr i32 %.0.val.i195, 5
  %i.ge = getelementptr inbounds nuw i8, ptr %.03648.i193, i64 16
  %i.gf = and i32 %i.gd, 67108863                 ; 2 uses
  %i.gg = shl i32 %.0.val.i195, 27
  %i.gh = getelementptr inbounds nuw i8, ptr %.pn50.i191, i64 8 ; 3 uses
  %i.gi = and i32 %.0.val.i195, 31                ; 3 uses
  %.not.i.i198 = icmp eq i32 %i.gi, 0
  br i1 %.not.i.i198, label %Nf_CutGetSign.exit.i206, label %.lr.ph.preheader.i.i199

.lr.ph.preheader.i.i199:                          ; preds = %bb.g
  %wide.trip.count.i.i200 = zext nneg i32 %i.gi to i64 ; 5 uses
  %min.iters.check955 = icmp samesign ult i32 %i.gi, 4
  br i1 %min.iters.check955, label %.lr.ph.i.i201.preheader, label %vector.ph956

vector.ph956:                                     ; preds = %.lr.ph.preheader.i.i199
  %n.vec957 = and i64 %wide.trip.count.i.i200, 28 ; 8 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.pn50.i191, i64 16
  %wide.load962 = load <2 x i32>, ptr %i.gh, align 4, !tbaa !23
  %wide.load963 = load <2 x i32>, ptr %i.gj, align 4, !tbaa !23
  %i.gk = and <2 x i32> %wide.load962, splat (i32 63)
  %i.gl = and <2 x i32> %wide.load963, splat (i32 63)
  %i.gm = zext nneg <2 x i32> %i.gk to <2 x i64>
  %i.gn = zext nneg <2 x i32> %i.gl to <2 x i64>
  %i.go = shl nuw <2 x i64> splat (i64 1), %i.gm  ; 2 uses
  %i.gp = shl nuw <2 x i64> splat (i64 1), %i.gn  ; 2 uses
  %i.gq = icmp eq i64 %n.vec957, 4
  br i1 %i.gq, label %middle.block965, label %vector.body958.1

vector.body958.1:                                 ; preds = %vector.ph956
  %i.gr = getelementptr inbounds nuw i8, ptr %.pn50.i191, i64 24
  %i.gs = getelementptr inbounds nuw i8, ptr %.pn50.i191, i64 32
  %wide.load962.1 = load <2 x i32>, ptr %i.gr, align 4, !tbaa !23
  %wide.load963.1 = load <2 x i32>, ptr %i.gs, align 4, !tbaa !23
  %i.gt = and <2 x i32> %wide.load962.1, splat (i32 63)
  %i.gu = and <2 x i32> %wide.load963.1, splat (i32 63)
  %i.gv = zext nneg <2 x i32> %i.gt to <2 x i64>
  %i.gw = zext nneg <2 x i32> %i.gu to <2 x i64>
  %i.gx = shl nuw <2 x i64> splat (i64 1), %i.gv
  %i.gy = shl nuw <2 x i64> splat (i64 1), %i.gw
  %i.gz = or <2 x i64> %i.gx, %i.go               ; 2 uses
  %i.ha = or <2 x i64> %i.gy, %i.gp               ; 2 uses
  %i.hb = icmp eq i64 %n.vec957, 8
  br i1 %i.hb, label %middle.block965, label %vector.body958.2

vector.body958.2:                                 ; preds = %vector.body958.1
  %i.hc = getelementptr inbounds nuw i8, ptr %.pn50.i191, i64 40
  %i.hd = getelementptr inbounds nuw i8, ptr %.pn50.i191, i64 48
  %wide.load962.2 = load <2 x i32>, ptr %i.hc, align 4, !tbaa !23
  %wide.load963.2 = load <2 x i32>, ptr %i.hd, align 4, !tbaa !23
  %i.he = and <2 x i32> %wide.load962.2, splat (i32 63)
  %i.hf = and <2 x i32> %wide.load963.2, splat (i32 63)
  %i.hg = zext nneg <2 x i32> %i.he to <2 x i64>
  %i.hh = zext nneg <2 x i32> %i.hf to <2 x i64>
  %i.hi = shl nuw <2 x i64> splat (i64 1), %i.hg
  %i.hj = shl nuw <2 x i64> splat (i64 1), %i.hh
  %i.hk = or <2 x i64> %i.hi, %i.gz               ; 2 uses
  %i.hl = or <2 x i64> %i.hj, %i.ha               ; 2 uses
  %i.hm = icmp eq i64 %n.vec957, 12
  br i1 %i.hm, label %middle.block965, label %vector.body958.3

vector.body958.3:                                 ; preds = %vector.body958.2
  %i.hn = getelementptr inbounds nuw i8, ptr %.pn50.i191, i64 56
  %i.ho = getelementptr inbounds nuw i8, ptr %.pn50.i191, i64 64
  %wide.load962.3 = load <2 x i32>, ptr %i.hn, align 4, !tbaa !23
  %wide.load963.3 = load <2 x i32>, ptr %i.ho, align 4, !tbaa !23
  %i.hp = and <2 x i32> %wide.load962.3, splat (i32 63)
  %i.hq = and <2 x i32> %wide.load963.3, splat (i32 63)
  %i.hr = zext nneg <2 x i32> %i.hp to <2 x i64>
  %i.hs = zext nneg <2 x i32> %i.hq to <2 x i64>
  %i.ht = shl nuw <2 x i64> splat (i64 1), %i.hr
  %i.hu = shl nuw <2 x i64> splat (i64 1), %i.hs
  %i.hv = or <2 x i64> %i.ht, %i.hk               ; 2 uses
  %i.hw = or <2 x i64> %i.hu, %i.hl               ; 2 uses
  %i.hx = icmp eq i64 %n.vec957, 16
  br i1 %i.hx, label %middle.block965, label %vector.body958.4

vector.body958.4:                                 ; preds = %vector.body958.3
  %i.hy = getelementptr inbounds nuw i8, ptr %.pn50.i191, i64 72
  %i.hz = getelementptr inbounds nuw i8, ptr %.pn50.i191, i64 80
  %wide.load962.4 = load <2 x i32>, ptr %i.hy, align 4, !tbaa !23
  %wide.load963.4 = load <2 x i32>, ptr %i.hz, align 4, !tbaa !23
  %i.ia = and <2 x i32> %wide.load962.4, splat (i32 63)
  %i.ib = and <2 x i32> %wide.load963.4, splat (i32 63)
  %i.ic = zext nneg <2 x i32> %i.ia to <2 x i64>
  %i.id = zext nneg <2 x i32> %i.ib to <2 x i64>
  %i.ie = shl nuw <2 x i64> splat (i64 1), %i.ic
  %i.if = shl nuw <2 x i64> splat (i64 1), %i.id
  %i.ig = or <2 x i64> %i.ie, %i.hv               ; 2 uses
  %i.ih = or <2 x i64> %i.if, %i.hw               ; 2 uses
  %i.ii = icmp eq i64 %n.vec957, 20
  br i1 %i.ii, label %middle.block965, label %vector.body958.5

vector.body958.5:                                 ; preds = %vector.body958.4
  %i.ij = getelementptr inbounds nuw i8, ptr %.pn50.i191, i64 88
  %i.ik = getelementptr inbounds nuw i8, ptr %.pn50.i191, i64 96
  %wide.load962.5 = load <2 x i32>, ptr %i.ij, align 4, !tbaa !23
  %wide.load963.5 = load <2 x i32>, ptr %i.ik, align 4, !tbaa !23
  %i.il = and <2 x i32> %wide.load962.5, splat (i32 63)
  %i.im = and <2 x i32> %wide.load963.5, splat (i32 63)
  %i.in = zext nneg <2 x i32> %i.il to <2 x i64>
  %i.io = zext nneg <2 x i32> %i.im to <2 x i64>
  %i.ip = shl nuw <2 x i64> splat (i64 1), %i.in
  %i.iq = shl nuw <2 x i64> splat (i64 1), %i.io
  %i.ir = or <2 x i64> %i.ip, %i.ig               ; 2 uses
  %i.is = or <2 x i64> %i.iq, %i.ih               ; 2 uses
  %i.it = icmp eq i64 %n.vec957, 24
  br i1 %i.it, label %middle.block965, label %vector.body958.6

vector.body958.6:                                 ; preds = %vector.body958.5
  %i.iu = getelementptr inbounds nuw i8, ptr %.pn50.i191, i64 104
  %i.iv = getelementptr inbounds nuw i8, ptr %.pn50.i191, i64 112
  %wide.load962.6 = load <2 x i32>, ptr %i.iu, align 4, !tbaa !23
  %wide.load963.6 = load <2 x i32>, ptr %i.iv, align 4, !tbaa !23
  %i.iw = and <2 x i32> %wide.load962.6, splat (i32 63)
  %i.ix = and <2 x i32> %wide.load963.6, splat (i32 63)
  %i.iy = zext nneg <2 x i32> %i.iw to <2 x i64>
  %i.iz = zext nneg <2 x i32> %i.ix to <2 x i64>
  %i.ja = shl nuw <2 x i64> splat (i64 1), %i.iy
  %i.jb = shl nuw <2 x i64> splat (i64 1), %i.iz
  %i.jc = or <2 x i64> %i.ja, %i.ir
  %i.jd = or <2 x i64> %i.jb, %i.is
  br label %middle.block965

middle.block965:                                  ; preds = %vector.body958.6, %vector.body958.5, %vector.body958.4, %vector.body958.3, %vector.body958.2, %vector.body958.1, %vector.ph956
  %.lcssa1114 = phi <2 x i64> [ %i.go, %vector.ph956 ], [ %i.gz, %vector.body958.1 ], [ %i.hk, %vector.body958.2 ], [ %i.hv, %vector.body958.3 ], [ %i.ig, %vector.body958.4 ], [ %i.ir, %vector.body958.5 ], [ %i.jc, %vector.body958.6 ]
  %.lcssa1113 = phi <2 x i64> [ %i.gp, %vector.ph956 ], [ %i.ha, %vector.body958.1 ], [ %i.hl, %vector.body958.2 ], [ %i.hw, %vector.body958.3 ], [ %i.ih, %vector.body958.4 ], [ %i.is, %vector.body958.5 ], [ %i.jd, %vector.body958.6 ]
  %bin.rdx966 = or <2 x i64> %.lcssa1113, %.lcssa1114
  %i.je = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx966) ; 2 uses
  %cmp.n967 = icmp eq i64 %n.vec957, %wide.trip.count.i.i200
  br i1 %cmp.n967, label %Nf_CutGetSign.exit.i206, label %.lr.ph.i.i201.preheader

.lr.ph.i.i201.preheader:                          ; preds = %.lr.ph.preheader.i.i199, %middle.block965
  %indvars.iv.i.i202.ph = phi i64 [ 0, %.lr.ph.preheader.i.i199 ], [ %n.vec957, %middle.block965 ]
  %.067.i.i203.ph = phi i64 [ 0, %.lr.ph.preheader.i.i199 ], [ %i.je, %middle.block965 ]
  br label %.lr.ph.i.i201

.lr.ph.i.i201:                                    ; preds = %.lr.ph.i.i201.preheader, %.lr.ph.i.i201
  %indvars.iv.i.i202 = phi i64 [ %indvars.iv.next.i.i204, %.lr.ph.i.i201 ], [ %indvars.iv.i.i202.ph, %.lr.ph.i.i201.preheader ] ; 2 uses
  %.067.i.i203 = phi i64 [ %i.jk, %.lr.ph.i.i201 ], [ %.067.i.i203.ph, %.lr.ph.i.i201.preheader ]
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.i.i202
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !23
  %i.jh = and i32 %i.jg, 63
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = shl nuw i64 1, %i.ji
  %i.jk = or i64 %i.jj, %.067.i.i203              ; 2 uses
  %indvars.iv.next.i.i204 = add nuw nsw i64 %indvars.iv.i.i202, 1 ; 2 uses
  %exitcond.not.i.i205 = icmp eq i64 %indvars.iv.next.i.i204, %wide.trip.count.i.i200
  br i1 %exitcond.not.i.i205, label %Nf_CutGetSign.exit.i206, label %.lr.ph.i.i201, !llvm.loop !188

Nf_CutGetSign.exit.i206:                          ; preds = %.lr.ph.i.i201, %middle.block965, %bb.g
  %.pre-phi713 = phi i64 [ 0, %bb.g ], [ %wide.trip.count.i.i200, %middle.block965 ], [ %wide.trip.count.i.i200, %.lr.ph.i.i201 ]
  %.06.lcssa.i.i207 = phi i64 [ 0, %bb.g ], [ %i.je, %middle.block965 ], [ %i.jk, %.lr.ph.i.i201 ]
  store i64 %.06.lcssa.i.i207, ptr %.03648.i193, align 16, !tbaa !109
  %i.jl = lshr i32 %i.gf, 1
  %.not.i210 = icmp slt i32 %i.jl, %.val46.val.i209
  %i.jm = select i1 %.not.i210, i32 0, i32 67108864
  %i.jn = or disjoint i32 %i.gg, %i.jm
  %i.jo = or disjoint i32 %i.jn, %i.gf
  store i32 %i.jo, ptr %i.ge, align 16
  %i.jp = getelementptr inbounds nuw i8, ptr %.03648.i193, i64 20
  %i.jq = shl i32 %.0.val.i195, 2
  %i.jr = and i32 %i.jq, 124
  %i.js = zext nneg i32 %i.jr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jp, ptr nonnull align 4 %i.gh, i64 %i.js, i1 false)
  %i.jt = getelementptr inbounds nuw i8, ptr %.03648.i193, i64 48 ; 2 uses
  %i.ju = add nuw nsw i32 %.03549.i192, 1         ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.0.i194, i64 %.pre-phi713
  %exitcond689.not = icmp eq i32 %i.ju, %i.fx
  br i1 %exitcond689.not, label %._crit_edge.i186, label %bb.g, !llvm.loop !187

._crit_edge.i186:                                 ; preds = %Nf_CutGetSign.exit.i206, %bb.f
  %.036.lcssa.i187 = phi ptr [ %3, %bb.f ], [ %i.jt, %Nf_CutGetSign.exit.i206 ] ; 5 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jx = load i32, ptr %i.jw, align 16
  %i.jy = icmp ugt i32 %i.jx, 268435455
  br i1 %i.jy, label %bb.h, label %Nf_ManPrepareCuts.exit213

bb.h:                                             ; preds = %._crit_edge.i186
  %i.jz = getelementptr inbounds nuw i8, ptr %.036.lcssa.i187, i64 8
  store i32 0, ptr %i.jz, align 8, !tbaa !107
  %i.ka = getelementptr inbounds nuw i8, ptr %.036.lcssa.i187, i64 12
  store float 0.000000e+00, ptr %i.ka, align 4, !tbaa !108
  %i.kb = getelementptr inbounds nuw i8, ptr %.036.lcssa.i187, i64 16 ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 8
  %i.kd = and i32 %i.kc, 67108864
  %i.ke = or disjoint i32 %i.kd, 134217730
  store i32 %i.ke, ptr %i.kb, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %.036.lcssa.i187, i64 20
  store i32 %i.fk, ptr %i.kf, align 4, !tbaa !23
  %i.kg = and i32 %i.fk, 63
  %i.kh = zext nneg i32 %i.kg to i64
  %i.ki = shl nuw i64 1, %i.kh
  store i64 %i.ki, ptr %.036.lcssa.i187, align 8, !tbaa !109
  %i.kj = add nsw i32 %i.fx, 1
  br label %Nf_ManPrepareCuts.exit213

bb.i:                                             ; preds = %Nf_ManPrepareCuts.exit
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.kk, align 8, !tbaa !107
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float 0.000000e+00, ptr %i.kl, align 4, !tbaa !108
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 16
  %i.ko = and i32 %i.kn, 67108864
  %i.kp = or disjoint i32 %i.ko, 134217730
  store i32 %i.kp, ptr %i.km, align 16
  %i.kq = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.fk, ptr %i.kq, align 4, !tbaa !23
  %i.kr = and i32 %i.fk, 63
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = shl nuw i64 1, %i.ks
  store i64 %i.kt, ptr %3, align 16, !tbaa !109
  br label %Nf_ManPrepareCuts.exit213

Nf_ManPrepareCuts.exit213:                        ; preds = %._crit_edge.i186, %bb.h, %bb.i
  %.1.i189 = phi i32 [ 1, %bb.i ], [ %i.kj, %bb.h ], [ %i.fx, %._crit_edge.i186 ] ; 5 uses
  %i.ku = lshr i32 %i.u, 29
  %i.kv = and i32 %i.ku, 1                        ; 2 uses
  %i.kw = lshr i64 %.val172, 61
  %i.kx = trunc nuw nsw i64 %i.kw to i32
  %i.ky = and i32 %i.kx, 1                        ; 2 uses
  %i.kz = getelementptr i8, ptr %i.d, i64 208
  %.val176 = load ptr, ptr %i.kz, align 8, !tbaa !79 ; 4 uses
  %.not.i214.not = icmp eq ptr %.val176, null
  br i1 %.not.i214.not, label %Gia_ObjSibl.exit, label %bb.j

bb.j:                                             ; preds = %Nf_ManPrepareCuts.exit213
  %i.la = getelementptr inbounds [4 x i8], ptr %.val176, i64 %i.f
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !23
  br label %Gia_ObjSibl.exit

Gia_ObjSibl.exit:                                 ; preds = %Nf_ManPrepareCuts.exit213, %bb.j
  %i.lc = phi i32 [ %i.lb, %bb.j ], [ 0, %Nf_ManPrepareCuts.exit213 ] ; 4 uses
  %i.ld = sext i32 %.1.i to i64
  %.idx619 = mul nsw i64 %i.ld, 48
  %i.le = getelementptr inbounds i8, ptr %2, i64 %.idx619 ; 2 uses
  %i.lf = sext i32 %.1.i189 to i64
  %.idx620 = mul nsw i64 %i.lf, 48
  %i.lg = getelementptr inbounds i8, ptr %3, i64 %.idx620 ; 2 uses
  %i.lh = icmp sgt i32 %i.t, 0
  br i1 %i.lh, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Gia_ObjSibl.exit
  %wide.trip.count = zext nneg i32 %i.t to i64    ; 3 uses
  %min.iters.check971 = icmp ult i32 %i.t, 4
  br i1 %min.iters.check971, label %.lr.ph.preheader1112, label %vector.ph972

vector.ph972:                                     ; preds = %.lr.ph.preheader
  %n.vec973 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body974

vector.body974:                                   ; preds = %vector.body974, %vector.ph972
  %index975 = phi i64 [ 0, %vector.ph972 ], [ %index.next977, %vector.body974 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph972 ], [ %vec.ind.next, %vector.body974 ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %4, <2 x i64> %vec.ind
  %wide.gep976 = getelementptr inbounds nuw [48 x i8], ptr %4, <2 x i64> %step.add
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index975 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  store <2 x ptr> %wide.gep, ptr %i.li, align 16, !tbaa !111
  store <2 x ptr> %wide.gep976, ptr %i.lj, align 16, !tbaa !111
  %index.next977 = add nuw i64 %index975, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.lk = icmp eq i64 %index.next977, %n.vec973
  br i1 %i.lk, label %middle.block978, label %vector.body974, !llvm.loop !189

middle.block978:                                  ; preds = %vector.body974
  %cmp.n979 = icmp eq i64 %n.vec973, %wide.trip.count
  br i1 %cmp.n979, label %._crit_edge, label %.lr.ph.preheader1112

.lr.ph.preheader1112:                             ; preds = %.lr.ph.preheader, %middle.block978
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec973, %middle.block978 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader1112, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1112 ] ; 3 uses
  %i.ll = getelementptr inbounds nuw [48 x i8], ptr %4, i64 %indvars.iv
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !111
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond691.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond691.not, label %._crit_edge, label %.lr.ph, !llvm.loop !190

._crit_edge:                                      ; preds = %.lr.ph, %middle.block978, %Gia_ObjSibl.exit
  %.not = icmp eq i32 %i.lc, 0
  br i1 %.not, label %bb.p, label %Gia_ObjSiblObj.exit

Gia_ObjSiblObj.exit:                              ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val176) ]
  %i.ln = getelementptr inbounds [4 x i8], ptr %.val176, i64 %i.f
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !23 ; 2 uses
  %.not6.i = icmp ne i32 %i.lo, 0
  call void @llvm.assume(i1 %.not6.i)
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds [12 x i8], ptr %.val169, i64 %i.lp
  %.val177 = load i64, ptr %i.lq, align 4
  %i.lr = xor i64 %.val177, %.val172
  %i.ls = lshr i64 %i.lr, 63
  %i.lt = trunc nuw nsw i64 %i.ls to i32
  %i.lu = sext i32 %i.lc to i64
  %i.lv = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !23 ; 3 uses
  %i.lx = icmp slt i32 %i.lw, 1
  br i1 %i.lx, label %Nf_ManPrepareCuts.exit246.thread, label %bb.k

bb.k:                                             ; preds = %Gia_ObjSiblObj.exit
  %i.ly = getelementptr i8, ptr %0, i64 72
  %.val40.i218 = load ptr, ptr %i.ly, align 8, !tbaa !91
  %i.lz = lshr i32 %i.lw, 16
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %.val40.i218, i64 %i.ma
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !102
  %i.md = and i32 %i.lw, 65535
  %i.me = zext nneg i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.me ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !23 ; 3 uses
  %i.mh = icmp sgt i32 %i.mg, 0
  br i1 %i.mh, label %.lr.ph.i223, label %._crit_edge587

.lr.ph.i223:                                      ; preds = %bb.k
  %i.mi = getelementptr i8, ptr %0, i64 32
  %.val46.i241 = load ptr, ptr %i.mi, align 8, !tbaa !64
  %i.mj = getelementptr i8, ptr %.val46.i241, i64 4
  %.val46.val.i242 = load i32, ptr %i.mj, align 4, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %Nf_CutGetSign.exit.i239, %.lr.ph.i223
  %.pn50.i224 = phi ptr [ %i.mf, %.lr.ph.i223 ], [ %i.qe, %Nf_CutGetSign.exit.i239 ] ; 15 uses
  %.03549.i225 = phi i32 [ 0, %.lr.ph.i223 ], [ %i.qd, %Nf_CutGetSign.exit.i239 ]
  %.03648.i226 = phi ptr [ %5, %.lr.ph.i223 ], [ %i.qc, %Nf_CutGetSign.exit.i239 ] ; 6 uses
  %.0.i227 = getelementptr inbounds nuw i8, ptr %.pn50.i224, i64 4 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.03648.i226, i64 8
  store i32 0, ptr %i.mk, align 8, !tbaa !107
  %i.ml = getelementptr inbounds nuw i8, ptr %.03648.i226, i64 12
  store float 0.000000e+00, ptr %i.ml, align 4, !tbaa !108
  %.0.val.i228 = load i32, ptr %.0.i227, align 4, !tbaa !23 ; 4 uses
  %i.mm = lshr i32 %.0.val.i228, 5
  %i.mn = getelementptr inbounds nuw i8, ptr %.03648.i226, i64 16
  %i.mo = and i32 %i.mm, 67108863                 ; 2 uses
  %i.mp = shl i32 %.0.val.i228, 27
  %i.mq = getelementptr inbounds nuw i8, ptr %.pn50.i224, i64 8 ; 3 uses
  %i.mr = and i32 %.0.val.i228, 31                ; 3 uses
  %.not.i.i231 = icmp eq i32 %i.mr, 0
  br i1 %.not.i.i231, label %Nf_CutGetSign.exit.i239, label %.lr.ph.preheader.i.i232

.lr.ph.preheader.i.i232:                          ; preds = %bb.l
  %wide.trip.count.i.i233 = zext nneg i32 %i.mr to i64 ; 5 uses
  %min.iters.check982 = icmp samesign ult i32 %i.mr, 4
  br i1 %min.iters.check982, label %.lr.ph.i.i234.preheader, label %vector.ph983

vector.ph983:                                     ; preds = %.lr.ph.preheader.i.i232
  %n.vec984 = and i64 %wide.trip.count.i.i233, 28 ; 8 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.pn50.i224, i64 16
  %wide.load989 = load <2 x i32>, ptr %i.mq, align 4, !tbaa !23
  %wide.load990 = load <2 x i32>, ptr %i.ms, align 4, !tbaa !23
  %i.mt = and <2 x i32> %wide.load989, splat (i32 63)
  %i.mu = and <2 x i32> %wide.load990, splat (i32 63)
  %i.mv = zext nneg <2 x i32> %i.mt to <2 x i64>
  %i.mw = zext nneg <2 x i32> %i.mu to <2 x i64>
  %i.mx = shl nuw <2 x i64> splat (i64 1), %i.mv  ; 2 uses
  %i.my = shl nuw <2 x i64> splat (i64 1), %i.mw  ; 2 uses
  %i.mz = icmp eq i64 %n.vec984, 4
  br i1 %i.mz, label %middle.block992, label %vector.body985.1

vector.body985.1:                                 ; preds = %vector.ph983
  %i.na = getelementptr inbounds nuw i8, ptr %.pn50.i224, i64 24
  %i.nb = getelementptr inbounds nuw i8, ptr %.pn50.i224, i64 32
  %wide.load989.1 = load <2 x i32>, ptr %i.na, align 4, !tbaa !23
  %wide.load990.1 = load <2 x i32>, ptr %i.nb, align 4, !tbaa !23
  %i.nc = and <2 x i32> %wide.load989.1, splat (i32 63)
  %i.nd = and <2 x i32> %wide.load990.1, splat (i32 63)
  %i.ne = zext nneg <2 x i32> %i.nc to <2 x i64>
  %i.nf = zext nneg <2 x i32> %i.nd to <2 x i64>
  %i.ng = shl nuw <2 x i64> splat (i64 1), %i.ne
  %i.nh = shl nuw <2 x i64> splat (i64 1), %i.nf
  %i.ni = or <2 x i64> %i.ng, %i.mx               ; 2 uses
  %i.nj = or <2 x i64> %i.nh, %i.my               ; 2 uses
  %i.nk = icmp eq i64 %n.vec984, 8
  br i1 %i.nk, label %middle.block992, label %vector.body985.2

vector.body985.2:                                 ; preds = %vector.body985.1
  %i.nl = getelementptr inbounds nuw i8, ptr %.pn50.i224, i64 40
  %i.nm = getelementptr inbounds nuw i8, ptr %.pn50.i224, i64 48
  %wide.load989.2 = load <2 x i32>, ptr %i.nl, align 4, !tbaa !23
  %wide.load990.2 = load <2 x i32>, ptr %i.nm, align 4, !tbaa !23
  %i.nn = and <2 x i32> %wide.load989.2, splat (i32 63)
  %i.no = and <2 x i32> %wide.load990.2, splat (i32 63)
  %i.np = zext nneg <2 x i32> %i.nn to <2 x i64>
  %i.nq = zext nneg <2 x i32> %i.no to <2 x i64>
  %i.nr = shl nuw <2 x i64> splat (i64 1), %i.np
  %i.ns = shl nuw <2 x i64> splat (i64 1), %i.nq
  %i.nt = or <2 x i64> %i.nr, %i.ni               ; 2 uses
  %i.nu = or <2 x i64> %i.ns, %i.nj               ; 2 uses
  %i.nv = icmp eq i64 %n.vec984, 12
  br i1 %i.nv, label %middle.block992, label %vector.body985.3

vector.body985.3:                                 ; preds = %vector.body985.2
  %i.nw = getelementptr inbounds nuw i8, ptr %.pn50.i224, i64 56
  %i.nx = getelementptr inbounds nuw i8, ptr %.pn50.i224, i64 64
  %wide.load989.3 = load <2 x i32>, ptr %i.nw, align 4, !tbaa !23
  %wide.load990.3 = load <2 x i32>, ptr %i.nx, align 4, !tbaa !23
  %i.ny = and <2 x i32> %wide.load989.3, splat (i32 63)
  %i.nz = and <2 x i32> %wide.load990.3, splat (i32 63)
  %i.oa = zext nneg <2 x i32> %i.ny to <2 x i64>
  %i.ob = zext nneg <2 x i32> %i.nz to <2 x i64>
  %i.oc = shl nuw <2 x i64> splat (i64 1), %i.oa
  %i.od = shl nuw <2 x i64> splat (i64 1), %i.ob
  %i.oe = or <2 x i64> %i.oc, %i.nt               ; 2 uses
  %i.of = or <2 x i64> %i.od, %i.nu               ; 2 uses
  %i.og = icmp eq i64 %n.vec984, 16
  br i1 %i.og, label %middle.block992, label %vector.body985.4

vector.body985.4:                                 ; preds = %vector.body985.3
  %i.oh = getelementptr inbounds nuw i8, ptr %.pn50.i224, i64 72
  %i.oi = getelementptr inbounds nuw i8, ptr %.pn50.i224, i64 80
  %wide.load989.4 = load <2 x i32>, ptr %i.oh, align 4, !tbaa !23
  %wide.load990.4 = load <2 x i32>, ptr %i.oi, align 4, !tbaa !23
  %i.oj = and <2 x i32> %wide.load989.4, splat (i32 63)
  %i.ok = and <2 x i32> %wide.load990.4, splat (i32 63)
  %i.ol = zext nneg <2 x i32> %i.oj to <2 x i64>
  %i.om = zext nneg <2 x i32> %i.ok to <2 x i64>
  %i.on = shl nuw <2 x i64> splat (i64 1), %i.ol
  %i.oo = shl nuw <2 x i64> splat (i64 1), %i.om
  %i.op = or <2 x i64> %i.on, %i.oe               ; 2 uses
  %i.oq = or <2 x i64> %i.oo, %i.of               ; 2 uses
  %i.or = icmp eq i64 %n.vec984, 20
  br i1 %i.or, label %middle.block992, label %vector.body985.5

vector.body985.5:                                 ; preds = %vector.body985.4
  %i.os = getelementptr inbounds nuw i8, ptr %.pn50.i224, i64 88
  %i.ot = getelementptr inbounds nuw i8, ptr %.pn50.i224, i64 96
  %wide.load989.5 = load <2 x i32>, ptr %i.os, align 4, !tbaa !23
  %wide.load990.5 = load <2 x i32>, ptr %i.ot, align 4, !tbaa !23
  %i.ou = and <2 x i32> %wide.load989.5, splat (i32 63)
  %i.ov = and <2 x i32> %wide.load990.5, splat (i32 63)
  %i.ow = zext nneg <2 x i32> %i.ou to <2 x i64>
  %i.ox = zext nneg <2 x i32> %i.ov to <2 x i64>
  %i.oy = shl nuw <2 x i64> splat (i64 1), %i.ow
  %i.oz = shl nuw <2 x i64> splat (i64 1), %i.ox
  %i.pa = or <2 x i64> %i.oy, %i.op               ; 2 uses
  %i.pb = or <2 x i64> %i.oz, %i.oq               ; 2 uses
  %i.pc = icmp eq i64 %n.vec984, 24
  br i1 %i.pc, label %middle.block992, label %vector.body985.6

vector.body985.6:                                 ; preds = %vector.body985.5
  %i.pd = getelementptr inbounds nuw i8, ptr %.pn50.i224, i64 104
  %i.pe = getelementptr inbounds nuw i8, ptr %.pn50.i224, i64 112
  %wide.load989.6 = load <2 x i32>, ptr %i.pd, align 4, !tbaa !23
  %wide.load990.6 = load <2 x i32>, ptr %i.pe, align 4, !tbaa !23
  %i.pf = and <2 x i32> %wide.load989.6, splat (i32 63)
  %i.pg = and <2 x i32> %wide.load990.6, splat (i32 63)
  %i.ph = zext nneg <2 x i32> %i.pf to <2 x i64>
  %i.pi = zext nneg <2 x i32> %i.pg to <2 x i64>
  %i.pj = shl nuw <2 x i64> splat (i64 1), %i.ph
  %i.pk = shl nuw <2 x i64> splat (i64 1), %i.pi
  %i.pl = or <2 x i64> %i.pj, %i.pa
  %i.pm = or <2 x i64> %i.pk, %i.pb
  br label %middle.block992

middle.block992:                                  ; preds = %vector.body985.6, %vector.body985.5, %vector.body985.4, %vector.body985.3, %vector.body985.2, %vector.body985.1, %vector.ph983
  %.lcssa1110 = phi <2 x i64> [ %i.mx, %vector.ph983 ], [ %i.ni, %vector.body985.1 ], [ %i.nt, %vector.body985.2 ], [ %i.oe, %vector.body985.3 ], [ %i.op, %vector.body985.4 ], [ %i.pa, %vector.body985.5 ], [ %i.pl, %vector.body985.6 ]
  %.lcssa1109 = phi <2 x i64> [ %i.my, %vector.ph983 ], [ %i.nj, %vector.body985.1 ], [ %i.nu, %vector.body985.2 ], [ %i.of, %vector.body985.3 ], [ %i.oq, %vector.body985.4 ], [ %i.pb, %vector.body985.5 ], [ %i.pm, %vector.body985.6 ]
  %bin.rdx993 = or <2 x i64> %.lcssa1109, %.lcssa1110
  %i.pn = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx993) ; 2 uses
  %cmp.n994 = icmp eq i64 %n.vec984, %wide.trip.count.i.i233
  br i1 %cmp.n994, label %Nf_CutGetSign.exit.i239, label %.lr.ph.i.i234.preheader

.lr.ph.i.i234.preheader:                          ; preds = %.lr.ph.preheader.i.i232, %middle.block992
  %indvars.iv.i.i235.ph = phi i64 [ 0, %.lr.ph.preheader.i.i232 ], [ %n.vec984, %middle.block992 ]
  %.067.i.i236.ph = phi i64 [ 0, %.lr.ph.preheader.i.i232 ], [ %i.pn, %middle.block992 ]
  br label %.lr.ph.i.i234

.lr.ph.i.i234:                                    ; preds = %.lr.ph.i.i234.preheader, %.lr.ph.i.i234
  %indvars.iv.i.i235 = phi i64 [ %indvars.iv.next.i.i237, %.lr.ph.i.i234 ], [ %indvars.iv.i.i235.ph, %.lr.ph.i.i234.preheader ] ; 2 uses
  %.067.i.i236 = phi i64 [ %i.pt, %.lr.ph.i.i234 ], [ %.067.i.i236.ph, %.lr.ph.i.i234.preheader ]
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %indvars.iv.i.i235
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !23
  %i.pq = and i32 %i.pp, 63
  %i.pr = zext nneg i32 %i.pq to i64
  %i.ps = shl nuw i64 1, %i.pr
  %i.pt = or i64 %i.ps, %.067.i.i236              ; 2 uses
  %indvars.iv.next.i.i237 = add nuw nsw i64 %indvars.iv.i.i235, 1 ; 2 uses
  %exitcond.not.i.i238 = icmp eq i64 %indvars.iv.next.i.i237, %wide.trip.count.i.i233
  br i1 %exitcond.not.i.i238, label %Nf_CutGetSign.exit.i239, label %.lr.ph.i.i234, !llvm.loop !191

Nf_CutGetSign.exit.i239:                          ; preds = %.lr.ph.i.i234, %middle.block992, %bb.l
  %.pre-phi711 = phi i64 [ 0, %bb.l ], [ %wide.trip.count.i.i233, %middle.block992 ], [ %wide.trip.count.i.i233, %.lr.ph.i.i234 ]
  %.06.lcssa.i.i240 = phi i64 [ 0, %bb.l ], [ %i.pn, %middle.block992 ], [ %i.pt, %.lr.ph.i.i234 ]
  store i64 %.06.lcssa.i.i240, ptr %.03648.i226, align 16, !tbaa !109
  %i.pu = lshr i32 %i.mo, 1
  %.not.i243 = icmp slt i32 %i.pu, %.val46.val.i242
  %i.pv = select i1 %.not.i243, i32 0, i32 67108864
  %i.pw = or disjoint i32 %i.mp, %i.pv
  %i.px = or disjoint i32 %i.pw, %i.mo
  store i32 %i.px, ptr %i.mn, align 16
  %i.py = getelementptr inbounds nuw i8, ptr %.03648.i226, i64 20
  %i.pz = shl i32 %.0.val.i228, 2
  %i.qa = and i32 %i.pz, 124
  %i.qb = zext nneg i32 %i.qa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.py, ptr nonnull align 4 %i.mq, i64 %i.qb, i1 false)
  %i.qc = getelementptr inbounds nuw i8, ptr %.03648.i226, i64 48
  %i.qd = add nuw nsw i32 %.03549.i225, 1         ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %.0.i227, i64 %.pre-phi711
  %exitcond692.not = icmp eq i32 %i.qd, %i.mg
  br i1 %exitcond692.not, label %Nf_ManPrepareCuts.exit246, label %bb.l, !llvm.loop !187

Nf_ManPrepareCuts.exit246.thread:                 ; preds = %Gia_ObjSiblObj.exit
  %i.qf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.qf, align 8, !tbaa !107
  %i.qg = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float 0.000000e+00, ptr %i.qg, align 4, !tbaa !108
  %i.qh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 16
  %i.qj = and i32 %i.qi, 67108864
  %i.qk = or disjoint i32 %i.qj, 134217730
  store i32 %i.qk, ptr %i.qh, align 16
  %i.ql = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.lc, ptr %i.ql, align 4, !tbaa !23
  %i.qm = and i32 %i.lc, 63
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = shl nuw i64 1, %i.qn
  store i64 %i.qo, ptr %5, align 16, !tbaa !109
  br label %.lr.ph586

Nf_ManPrepareCuts.exit246:                        ; preds = %Nf_CutGetSign.exit.i239
  %i.qp = zext nneg i32 %i.mg to i64
  %.idx = mul nuw nsw i64 %i.qp, 48
  br label %.lr.ph586

.lr.ph586:                                        ; preds = %Nf_ManPrepareCuts.exit246, %Nf_ManPrepareCuts.exit246.thread
  %.idx.sink = phi i64 [ %.idx, %Nf_ManPrepareCuts.exit246 ], [ 48, %Nf_ManPrepareCuts.exit246.thread ]
  %i.qq = getelementptr inbounds nuw i8, ptr %5, i64 %.idx.sink
  %i.qr = getelementptr i8, ptr %0, i64 168
  %i.qs = getelementptr i8, ptr %0, i64 152
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph586, %Nf_CutParams.exit
  %.0151585 = phi ptr [ %5, %.lr.ph586 ], [ %i.sy, %Nf_CutParams.exit ] ; 2 uses
  %.0152584 = phi i32 [ 0, %.lr.ph586 ], [ %i.sx, %Nf_CutParams.exit ] ; 2 uses
  %i.qt = sext i32 %.0152584 to i64
  %i.qu = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.qt
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !111 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qv, ptr noundef nonnull align 16 dereferenceable(48) %.0151585, i64 48, i1 false), !tbaa.struct !212
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16 ; 2 uses
  %i.qx = load i32, ptr %i.qw, align 8            ; 5 uses
  %.masked = and i32 %i.qx, 67108863
  %i.qy = xor i32 %.masked, %i.lt
  %i.qz = and i32 %i.qx, -67108864
  %i.ra = or disjoint i32 %i.qy, %i.qz
  store i32 %i.ra, ptr %i.qw, align 8
  %i.rb = lshr i32 %i.qx, 27                      ; 5 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qv, i64 8 ; 5 uses
  store i32 0, ptr %i.rc, align 8, !tbaa !107
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qv, i64 12 ; 5 uses
  store float 0.000000e+00, ptr %i.rd, align 4, !tbaa !108
  %.not.i247 = icmp eq i32 %i.rb, 0
  br i1 %.not.i247, label %._crit_edge.i250, label %.lr.ph.i248

.lr.ph.i248:                                      ; preds = %bb.m
  %i.re = getelementptr inbounds nuw i8, ptr %i.qv, i64 20 ; 3 uses
  %.val.i249 = load ptr, ptr %i.qr, align 8, !tbaa !33 ; 3 uses
  %.val22.i = load ptr, ptr %i.qs, align 8, !tbaa !93 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.rb to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.rf = icmp eq i32 %i.rb, 1
  br i1 %i.rf, label %.epil.preheader, label %.lr.ph.i248.new

.lr.ph.i248.new:                                  ; preds = %.lr.ph.i248
  %unroll_iter = and i64 %wide.trip.count.i, 30
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i248.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i248.new ], [ %indvars.iv.next.i.1, %bb.n ] ; 3 uses
  %i.rg = phi float [ 0.000000e+00, %.lr.ph.i248.new ], [ %i.sa, %bb.n ]
  %i.rh = phi i32 [ 0, %.lr.ph.i248.new ], [ %i.rx, %bb.n ]
  %niter = phi i64 [ 0, %.lr.ph.i248.new ], [ %niter.next.1, %bb.n ]
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %indvars.iv.i
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !23
  %i.rk = sext i32 %i.rj to i64                   ; 2 uses
  %i.rl = getelementptr inbounds [4 x i8], ptr %.val.i249, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !23
  %i.rn = call noundef i32 @llvm.smax.i32(i32 %i.rh, i32 %i.rm) ; 2 uses
  store i32 %i.rn, ptr %i.rc, align 8, !tbaa !107
  %i.ro = getelementptr inbounds [4 x i8], ptr %.val22.i, i64 %i.rk
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !94
  %i.rq = fadd float %i.rg, %i.rp                 ; 2 uses
  store float %i.rq, ptr %i.rd, align 4, !tbaa !108
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %indvars.iv.i
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 4
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !23
  %i.ru = sext i32 %i.rt to i64                   ; 2 uses
  %i.rv = getelementptr inbounds [4 x i8], ptr %.val.i249, i64 %i.ru
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !23
  %i.rx = call noundef i32 @llvm.smax.i32(i32 %i.rn, i32 %i.rw) ; 4 uses
  store i32 %i.rx, ptr %i.rc, align 8, !tbaa !107
  %i.ry = getelementptr inbounds [4 x i8], ptr %.val22.i, i64 %i.ru
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !94
  %i.sa = fadd float %i.rq, %i.rz                 ; 4 uses
  store float %i.sa, ptr %i.rd, align 4, !tbaa !108
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i250.loopexit.unr-lcssa, label %bb.n, !llvm.loop !192

._crit_edge.i250.loopexit.unr-lcssa:              ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i250, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i250.loopexit.unr-lcssa, %.lr.ph.i248
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i248 ], [ %indvars.iv.next.i.1, %._crit_edge.i250.loopexit.unr-lcssa ]
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph.i248 ], [ %i.sa, %._crit_edge.i250.loopexit.unr-lcssa ]
  %.epil.init1122 = phi i32 [ 0, %.lr.ph.i248 ], [ %i.rx, %._crit_edge.i250.loopexit.unr-lcssa ]
  %lcmp.mod1125 = trunc i32 %i.rb to i1
  call void @llvm.assume(i1 %lcmp.mod1125)
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %indvars.iv.i.epil.init
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !23
  %i.sd = sext i32 %i.sc to i64                   ; 2 uses
  %i.se = getelementptr inbounds [4 x i8], ptr %.val.i249, i64 %i.sd
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !23
  %i.sg = call noundef i32 @llvm.smax.i32(i32 %.epil.init1122, i32 %i.sf) ; 2 uses
  store i32 %i.sg, ptr %i.rc, align 8, !tbaa !107
  %i.sh = getelementptr inbounds [4 x i8], ptr %.val22.i, i64 %i.sd
  %i.si = load float, ptr %i.sh, align 4, !tbaa !94
  %i.sj = fadd float %.epil.init, %i.si           ; 2 uses
  store float %i.sj, ptr %i.rd, align 4, !tbaa !108
  br label %._crit_edge.i250

._crit_edge.i250:                                 ; preds = %.epil.preheader, %._crit_edge.i250.loopexit.unr-lcssa, %bb.m
  %i.sk = phi float [ 0.000000e+00, %bb.m ], [ %i.sa, %._crit_edge.i250.loopexit.unr-lcssa ], [ %i.sj, %.epil.preheader ]
  %i.sl = phi i32 [ 0, %bb.m ], [ %i.rx, %._crit_edge.i250.loopexit.unr-lcssa ], [ %i.sg, %.epil.preheader ]
  %i.sm = icmp ugt i32 %i.qx, 268435455
  %i.sn = zext i1 %i.sm to i32
  %i.so = add nuw nsw i32 %i.sl, %i.sn
  store i32 %i.so, ptr %i.rc, align 8, !tbaa !107
  %i.sp = icmp ult i32 %i.qx, 268435456
  br i1 %i.sp, label %Nf_CutParams.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i250
  %i.sq = load ptr, ptr %i.p, align 8, !tbaa !87
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 28
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !213
  %i.st = add nsw i32 %i.ss, %i.rb
  %i.su = sitofp i32 %i.st to float
  br label %Nf_CutParams.exit

Nf_CutParams.exit:                                ; preds = %._crit_edge.i250, %bb.o
  %.0.i.i = phi float [ %i.su, %bb.o ], [ 0.000000e+00, %._crit_edge.i250 ]
  %i.sv = fadd float %i.sk, %.0.i.i
  %i.sw = fdiv float %i.sv, %i.o
  store float %i.sw, ptr %i.rd, align 4, !tbaa !108
  %i.sx = call fastcc i32 @Nf_SetAddCut(ptr noundef %i.c, i32 noundef %.0152584, i32 noundef %i.t) ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.0151585, i64 48 ; 2 uses
  %i.sz = icmp ult ptr %i.sy, %i.qq
  br i1 %i.sz, label %bb.m, label %._crit_edge587.loopexit, !llvm.loop !193

._crit_edge587.loopexit:                          ; preds = %Nf_CutParams.exit
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !84
  br label %._crit_edge587

._crit_edge587:                                   ; preds = %bb.k, %._crit_edge587.loopexit
  %.pre = phi ptr [ %i.d, %bb.k ], [ %.pre.pre, %._crit_edge587.loopexit ]
  %.0152.lcssa = phi i32 [ 0, %bb.k ], [ %i.sx, %._crit_edge587.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge587, %._crit_edge
  %i.ta = phi ptr [ %.pre, %._crit_edge587 ], [ %i.d, %._crit_edge ] ; 2 uses
  %.1 = phi i32 [ %.0152.lcssa, %._crit_edge587 ], [ 0, %._crit_edge ] ; 6 uses
  %i.tb = getelementptr i8, ptr %i.ta, i64 40
  %.val179 = load ptr, ptr %i.tb, align 8, !tbaa !214 ; 3 uses
  %.not.i251 = icmp eq ptr %.val179, null
  br i1 %.not.i251, label %Gia_ObjIsMuxId.exit.thread, label %Gia_ObjIsMuxId.exit

Gia_ObjIsMuxId.exit:                              ; preds = %bb.p
  %i.tc = getelementptr inbounds [4 x i8], ptr %.val179, i64 %i.f
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !23 ; 2 uses
  %.not514 = icmp eq i32 %i.td, 0
  br i1 %.not514, label %Gia_ObjIsMuxId.exit.thread, label %Gia_ObjFaninId2.exit

Gia_ObjFaninId2.exit:                             ; preds = %Gia_ObjIsMuxId.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.te = ashr i32 %i.td, 1                       ; 5 uses
  %.val.i253 = load ptr, ptr %i.x, align 8, !tbaa !33
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds [4 x i8], ptr %.val.i253, i64 %i.tf
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !23 ; 3 uses
  %i.ti = icmp slt i32 %i.th, 1
  br i1 %i.ti, label %Nf_ManPrepareCuts.exit282.thread, label %bb.q

bb.q:                                             ; preds = %Gia_ObjFaninId2.exit
  %i.tj = getelementptr i8, ptr %0, i64 72
  %.val40.i254 = load ptr, ptr %i.tj, align 8, !tbaa !91
  %i.tk = lshr i32 %i.th, 16
  %i.tl = zext nneg i32 %i.tk to i64
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %.val40.i254, i64 %i.tl
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !102
  %i.to = and i32 %i.th, 65535
  %i.tp = zext nneg i32 %i.to to i64
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %i.tp ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !23 ; 4 uses
  %i.ts = icmp sgt i32 %i.tr, 0
  br i1 %i.ts, label %.lr.ph.i259, label %._crit_edge.i255

.lr.ph.i259:                                      ; preds = %bb.q
  %i.tt = getelementptr i8, ptr %0, i64 32
  %.val46.i277 = load ptr, ptr %i.tt, align 8, !tbaa !64
  %i.tu = getelementptr i8, ptr %.val46.i277, i64 4
  %.val46.val.i278 = load i32, ptr %i.tu, align 4, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %Nf_CutGetSign.exit.i275, %.lr.ph.i259
  %.pn50.i260 = phi ptr [ %i.tq, %.lr.ph.i259 ], [ %i.xp, %Nf_CutGetSign.exit.i275 ] ; 15 uses
  %.03549.i261 = phi i32 [ 0, %.lr.ph.i259 ], [ %i.xo, %Nf_CutGetSign.exit.i275 ]
  %.03648.i262 = phi ptr [ %6, %.lr.ph.i259 ], [ %i.xn, %Nf_CutGetSign.exit.i275 ] ; 6 uses
  %.0.i263 = getelementptr inbounds nuw i8, ptr %.pn50.i260, i64 4 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.03648.i262, i64 8
  store i32 0, ptr %i.tv, align 8, !tbaa !107
  %i.tw = getelementptr inbounds nuw i8, ptr %.03648.i262, i64 12
  store float 0.000000e+00, ptr %i.tw, align 4, !tbaa !108
  %.0.val.i264 = load i32, ptr %.0.i263, align 4, !tbaa !23 ; 4 uses
  %i.tx = lshr i32 %.0.val.i264, 5
  %i.ty = getelementptr inbounds nuw i8, ptr %.03648.i262, i64 16
  %i.tz = and i32 %i.tx, 67108863                 ; 2 uses
  %i.ua = shl i32 %.0.val.i264, 27
  %i.ub = getelementptr inbounds nuw i8, ptr %.pn50.i260, i64 8 ; 3 uses
  %i.uc = and i32 %.0.val.i264, 31                ; 3 uses
  %.not.i.i267 = icmp eq i32 %i.uc, 0
  br i1 %.not.i.i267, label %Nf_CutGetSign.exit.i275, label %.lr.ph.preheader.i.i268

.lr.ph.preheader.i.i268:                          ; preds = %bb.r
  %wide.trip.count.i.i269 = zext nneg i32 %i.uc to i64 ; 5 uses
  %min.iters.check998 = icmp samesign ult i32 %i.uc, 4
  br i1 %min.iters.check998, label %.lr.ph.i.i270.preheader, label %vector.ph999

vector.ph999:                                     ; preds = %.lr.ph.preheader.i.i268
  %n.vec1000 = and i64 %wide.trip.count.i.i269, 28 ; 8 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.pn50.i260, i64 16
  %wide.load1005 = load <2 x i32>, ptr %i.ub, align 4, !tbaa !23
  %wide.load1006 = load <2 x i32>, ptr %i.ud, align 4, !tbaa !23
  %i.ue = and <2 x i32> %wide.load1005, splat (i32 63)
  %i.uf = and <2 x i32> %wide.load1006, splat (i32 63)
  %i.ug = zext nneg <2 x i32> %i.ue to <2 x i64>
  %i.uh = zext nneg <2 x i32> %i.uf to <2 x i64>
  %i.ui = shl nuw <2 x i64> splat (i64 1), %i.ug  ; 2 uses
  %i.uj = shl nuw <2 x i64> splat (i64 1), %i.uh  ; 2 uses
  %i.uk = icmp eq i64 %n.vec1000, 4
  br i1 %i.uk, label %middle.block1008, label %vector.body1001.1

vector.body1001.1:                                ; preds = %vector.ph999
  %i.ul = getelementptr inbounds nuw i8, ptr %.pn50.i260, i64 24
  %i.um = getelementptr inbounds nuw i8, ptr %.pn50.i260, i64 32
  %wide.load1005.1 = load <2 x i32>, ptr %i.ul, align 4, !tbaa !23
  %wide.load1006.1 = load <2 x i32>, ptr %i.um, align 4, !tbaa !23
  %i.un = and <2 x i32> %wide.load1005.1, splat (i32 63)
  %i.uo = and <2 x i32> %wide.load1006.1, splat (i32 63)
  %i.up = zext nneg <2 x i32> %i.un to <2 x i64>
  %i.uq = zext nneg <2 x i32> %i.uo to <2 x i64>
  %i.ur = shl nuw <2 x i64> splat (i64 1), %i.up
  %i.us = shl nuw <2 x i64> splat (i64 1), %i.uq
  %i.ut = or <2 x i64> %i.ur, %i.ui               ; 2 uses
  %i.uu = or <2 x i64> %i.us, %i.uj               ; 2 uses
  %i.uv = icmp eq i64 %n.vec1000, 8
  br i1 %i.uv, label %middle.block1008, label %vector.body1001.2

vector.body1001.2:                                ; preds = %vector.body1001.1
  %i.uw = getelementptr inbounds nuw i8, ptr %.pn50.i260, i64 40
  %i.ux = getelementptr inbounds nuw i8, ptr %.pn50.i260, i64 48
  %wide.load1005.2 = load <2 x i32>, ptr %i.uw, align 4, !tbaa !23
  %wide.load1006.2 = load <2 x i32>, ptr %i.ux, align 4, !tbaa !23
  %i.uy = and <2 x i32> %wide.load1005.2, splat (i32 63)
  %i.uz = and <2 x i32> %wide.load1006.2, splat (i32 63)
  %i.va = zext nneg <2 x i32> %i.uy to <2 x i64>
  %i.vb = zext nneg <2 x i32> %i.uz to <2 x i64>
  %i.vc = shl nuw <2 x i64> splat (i64 1), %i.va
  %i.vd = shl nuw <2 x i64> splat (i64 1), %i.vb
  %i.ve = or <2 x i64> %i.vc, %i.ut               ; 2 uses
  %i.vf = or <2 x i64> %i.vd, %i.uu               ; 2 uses
  %i.vg = icmp eq i64 %n.vec1000, 12
  br i1 %i.vg, label %middle.block1008, label %vector.body1001.3

vector.body1001.3:                                ; preds = %vector.body1001.2
  %i.vh = getelementptr inbounds nuw i8, ptr %.pn50.i260, i64 56
  %i.vi = getelementptr inbounds nuw i8, ptr %.pn50.i260, i64 64
  %wide.load1005.3 = load <2 x i32>, ptr %i.vh, align 4, !tbaa !23
  %wide.load1006.3 = load <2 x i32>, ptr %i.vi, align 4, !tbaa !23
  %i.vj = and <2 x i32> %wide.load1005.3, splat (i32 63)
  %i.vk = and <2 x i32> %wide.load1006.3, splat (i32 63)
  %i.vl = zext nneg <2 x i32> %i.vj to <2 x i64>
  %i.vm = zext nneg <2 x i32> %i.vk to <2 x i64>
  %i.vn = shl nuw <2 x i64> splat (i64 1), %i.vl
  %i.vo = shl nuw <2 x i64> splat (i64 1), %i.vm
  %i.vp = or <2 x i64> %i.vn, %i.ve               ; 2 uses
  %i.vq = or <2 x i64> %i.vo, %i.vf               ; 2 uses
  %i.vr = icmp eq i64 %n.vec1000, 16
  br i1 %i.vr, label %middle.block1008, label %vector.body1001.4

vector.body1001.4:                                ; preds = %vector.body1001.3
  %i.vs = getelementptr inbounds nuw i8, ptr %.pn50.i260, i64 72
  %i.vt = getelementptr inbounds nuw i8, ptr %.pn50.i260, i64 80
  %wide.load1005.4 = load <2 x i32>, ptr %i.vs, align 4, !tbaa !23
  %wide.load1006.4 = load <2 x i32>, ptr %i.vt, align 4, !tbaa !23
  %i.vu = and <2 x i32> %wide.load1005.4, splat (i32 63)
  %i.vv = and <2 x i32> %wide.load1006.4, splat (i32 63)
  %i.vw = zext nneg <2 x i32> %i.vu to <2 x i64>
  %i.vx = zext nneg <2 x i32> %i.vv to <2 x i64>
  %i.vy = shl nuw <2 x i64> splat (i64 1), %i.vw
  %i.vz = shl nuw <2 x i64> splat (i64 1), %i.vx
  %i.wa = or <2 x i64> %i.vy, %i.vp               ; 2 uses
  %i.wb = or <2 x i64> %i.vz, %i.vq               ; 2 uses
  %i.wc = icmp eq i64 %n.vec1000, 20
  br i1 %i.wc, label %middle.block1008, label %vector.body1001.5

vector.body1001.5:                                ; preds = %vector.body1001.4
  %i.wd = getelementptr inbounds nuw i8, ptr %.pn50.i260, i64 88
  %i.we = getelementptr inbounds nuw i8, ptr %.pn50.i260, i64 96
  %wide.load1005.5 = load <2 x i32>, ptr %i.wd, align 4, !tbaa !23
  %wide.load1006.5 = load <2 x i32>, ptr %i.we, align 4, !tbaa !23
  %i.wf = and <2 x i32> %wide.load1005.5, splat (i32 63)
  %i.wg = and <2 x i32> %wide.load1006.5, splat (i32 63)
  %i.wh = zext nneg <2 x i32> %i.wf to <2 x i64>
  %i.wi = zext nneg <2 x i32> %i.wg to <2 x i64>
  %i.wj = shl nuw <2 x i64> splat (i64 1), %i.wh
  %i.wk = shl nuw <2 x i64> splat (i64 1), %i.wi
  %i.wl = or <2 x i64> %i.wj, %i.wa               ; 2 uses
  %i.wm = or <2 x i64> %i.wk, %i.wb               ; 2 uses
  %i.wn = icmp eq i64 %n.vec1000, 24
  br i1 %i.wn, label %middle.block1008, label %vector.body1001.6

vector.body1001.6:                                ; preds = %vector.body1001.5
  %i.wo = getelementptr inbounds nuw i8, ptr %.pn50.i260, i64 104
  %i.wp = getelementptr inbounds nuw i8, ptr %.pn50.i260, i64 112
  %wide.load1005.6 = load <2 x i32>, ptr %i.wo, align 4, !tbaa !23
  %wide.load1006.6 = load <2 x i32>, ptr %i.wp, align 4, !tbaa !23
  %i.wq = and <2 x i32> %wide.load1005.6, splat (i32 63)
  %i.wr = and <2 x i32> %wide.load1006.6, splat (i32 63)
  %i.ws = zext nneg <2 x i32> %i.wq to <2 x i64>
  %i.wt = zext nneg <2 x i32> %i.wr to <2 x i64>
  %i.wu = shl nuw <2 x i64> splat (i64 1), %i.ws
  %i.wv = shl nuw <2 x i64> splat (i64 1), %i.wt
  %i.ww = or <2 x i64> %i.wu, %i.wl
  %i.wx = or <2 x i64> %i.wv, %i.wm
  br label %middle.block1008

middle.block1008:                                 ; preds = %vector.body1001.6, %vector.body1001.5, %vector.body1001.4, %vector.body1001.3, %vector.body1001.2, %vector.body1001.1, %vector.ph999
  %.lcssa1103 = phi <2 x i64> [ %i.ui, %vector.ph999 ], [ %i.ut, %vector.body1001.1 ], [ %i.ve, %vector.body1001.2 ], [ %i.vp, %vector.body1001.3 ], [ %i.wa, %vector.body1001.4 ], [ %i.wl, %vector.body1001.5 ], [ %i.ww, %vector.body1001.6 ]
  %.lcssa1102 = phi <2 x i64> [ %i.uj, %vector.ph999 ], [ %i.uu, %vector.body1001.1 ], [ %i.vf, %vector.body1001.2 ], [ %i.vq, %vector.body1001.3 ], [ %i.wb, %vector.body1001.4 ], [ %i.wm, %vector.body1001.5 ], [ %i.wx, %vector.body1001.6 ]
  %bin.rdx1009 = or <2 x i64> %.lcssa1102, %.lcssa1103
  %i.wy = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx1009) ; 2 uses
  %cmp.n1010 = icmp eq i64 %n.vec1000, %wide.trip.count.i.i269
  br i1 %cmp.n1010, label %Nf_CutGetSign.exit.i275, label %.lr.ph.i.i270.preheader

.lr.ph.i.i270.preheader:                          ; preds = %.lr.ph.preheader.i.i268, %middle.block1008
  %indvars.iv.i.i271.ph = phi i64 [ 0, %.lr.ph.preheader.i.i268 ], [ %n.vec1000, %middle.block1008 ]
  %.067.i.i272.ph = phi i64 [ 0, %.lr.ph.preheader.i.i268 ], [ %i.wy, %middle.block1008 ]
  br label %.lr.ph.i.i270

.lr.ph.i.i270:                                    ; preds = %.lr.ph.i.i270.preheader, %.lr.ph.i.i270
  %indvars.iv.i.i271 = phi i64 [ %indvars.iv.next.i.i273, %.lr.ph.i.i270 ], [ %indvars.iv.i.i271.ph, %.lr.ph.i.i270.preheader ] ; 2 uses
  %.067.i.i272 = phi i64 [ %i.xe, %.lr.ph.i.i270 ], [ %.067.i.i272.ph, %.lr.ph.i.i270.preheader ]
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %indvars.iv.i.i271
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !23
  %i.xb = and i32 %i.xa, 63
  %i.xc = zext nneg i32 %i.xb to i64
  %i.xd = shl nuw i64 1, %i.xc
  %i.xe = or i64 %i.xd, %.067.i.i272              ; 2 uses
  %indvars.iv.next.i.i273 = add nuw nsw i64 %indvars.iv.i.i271, 1 ; 2 uses
  %exitcond.not.i.i274 = icmp eq i64 %indvars.iv.next.i.i273, %wide.trip.count.i.i269
  br i1 %exitcond.not.i.i274, label %Nf_CutGetSign.exit.i275, label %.lr.ph.i.i270, !llvm.loop !194

Nf_CutGetSign.exit.i275:                          ; preds = %.lr.ph.i.i270, %middle.block1008, %bb.r
  %.pre-phi = phi i64 [ 0, %bb.r ], [ %wide.trip.count.i.i269, %middle.block1008 ], [ %wide.trip.count.i.i269, %.lr.ph.i.i270 ]
  %.06.lcssa.i.i276 = phi i64 [ 0, %bb.r ], [ %i.wy, %middle.block1008 ], [ %i.xe, %.lr.ph.i.i270 ]
  store i64 %.06.lcssa.i.i276, ptr %.03648.i262, align 16, !tbaa !109
  %i.xf = lshr i32 %i.tz, 1
  %.not.i279 = icmp slt i32 %i.xf, %.val46.val.i278
  %i.xg = select i1 %.not.i279, i32 0, i32 67108864
  %i.xh = or disjoint i32 %i.ua, %i.xg
  %i.xi = or disjoint i32 %i.xh, %i.tz
  store i32 %i.xi, ptr %i.ty, align 16
  %i.xj = getelementptr inbounds nuw i8, ptr %.03648.i262, i64 20
  %i.xk = shl i32 %.0.val.i264, 2
  %i.xl = and i32 %i.xk, 124
  %i.xm = zext nneg i32 %i.xl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.xj, ptr nonnull align 4 %i.ub, i64 %i.xm, i1 false)
  %i.xn = getelementptr inbounds nuw i8, ptr %.03648.i262, i64 48 ; 2 uses
  %i.xo = add nuw nsw i32 %.03549.i261, 1         ; 2 uses
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %.0.i263, i64 %.pre-phi
  %exitcond693.not = icmp eq i32 %i.xo, %i.tr
  br i1 %exitcond693.not, label %._crit_edge.i255, label %bb.r, !llvm.loop !187

._crit_edge.i255:                                 ; preds = %Nf_CutGetSign.exit.i275, %bb.q
  %.036.lcssa.i256 = phi ptr [ %6, %bb.q ], [ %i.xn, %Nf_CutGetSign.exit.i275 ] ; 5 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.xr = load i32, ptr %i.xq, align 16
  %i.xs = icmp ugt i32 %i.xr, 268435455
  br i1 %i.xs, label %bb.s, label %Nf_ManPrepareCuts.exit282

bb.s:                                             ; preds = %._crit_edge.i255
  %i.xt = getelementptr inbounds nuw i8, ptr %.036.lcssa.i256, i64 8
  store i32 0, ptr %i.xt, align 8, !tbaa !107
  %i.xu = getelementptr inbounds nuw i8, ptr %.036.lcssa.i256, i64 12
  store float 0.000000e+00, ptr %i.xu, align 4, !tbaa !108
  %i.xv = getelementptr inbounds nuw i8, ptr %.036.lcssa.i256, i64 16 ; 2 uses
  %i.xw = load i32, ptr %i.xv, align 8
  %i.xx = and i32 %i.xw, 67108864
  %i.xy = or disjoint i32 %i.xx, 134217730
  store i32 %i.xy, ptr %i.xv, align 8
  %i.xz = getelementptr inbounds nuw i8, ptr %.036.lcssa.i256, i64 20
  store i32 %i.te, ptr %i.xz, align 4, !tbaa !23
  %i.ya = and i32 %i.te, 63
  %i.yb = zext nneg i32 %i.ya to i64
  %i.yc = shl nuw i64 1, %i.yb
  store i64 %i.yc, ptr %.036.lcssa.i256, align 8, !tbaa !109
  %i.yd = add nsw i32 %i.tr, 1
  br label %Nf_ManPrepareCuts.exit282

Nf_ManPrepareCuts.exit282.thread:                 ; preds = %Gia_ObjFaninId2.exit
  %i.ye = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.ye, align 8, !tbaa !107
  %i.yf = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float 0.000000e+00, ptr %i.yf, align 4, !tbaa !108
  %i.yg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.yh = load i32, ptr %i.yg, align 16
  %i.yi = and i32 %i.yh, 67108864
  %i.yj = or disjoint i32 %i.yi, 134217730
  store i32 %i.yj, ptr %i.yg, align 16
  %i.yk = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %i.te, ptr %i.yk, align 4, !tbaa !23
  %i.yl = and i32 %i.te, 63
  %i.ym = zext nneg i32 %i.yl to i64
  %i.yn = shl nuw i64 1, %i.ym
  store i64 %i.yn, ptr %6, align 16, !tbaa !109
  br label %Nf_ManPrepareCuts.exit282

Nf_ManPrepareCuts.exit282:                        ; preds = %bb.s, %._crit_edge.i255, %Nf_ManPrepareCuts.exit282.thread
  %.1.i258503 = phi i32 [ 1, %Nf_ManPrepareCuts.exit282.thread ], [ %i.tr, %._crit_edge.i255 ], [ %i.yd, %bb.s ] ; 3 uses
  %i.yo = getelementptr i8, ptr %i.ta, i64 32
  %.val.i284 = load ptr, ptr %i.yo, align 8, !tbaa !103
  %i.yp = ptrtoint ptr %i.g to i64
  %i.yq = ptrtoint ptr %.val.i284 to i64
  %i.yr = sub i64 %i.yp, %i.yq
  %i.ys = sdiv exact i64 %i.yr, 12
  %i.yt = shl i64 %i.ys, 32
  %i.yu = ashr exact i64 %i.yt, 30
  %i.yv = getelementptr inbounds i8, ptr %.val179, i64 %i.yu
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !23
  %i.yx = sext i32 %.1.i258503 to i64
  %.idx621 = mul nsw i64 %i.yx, 48
  %i.yy = getelementptr inbounds i8, ptr %6, i64 %.idx621
  %i.yz = mul nsw i32 %.1.i189, %.1.i
  %i.za = mul nsw i32 %i.yz, %.1.i258503
  %i.zb = sitofp i32 %i.za to double
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.zd = load double, ptr %i.zc, align 8, !tbaa !114
  %i.ze = fadd double %i.zd, %i.zb
  store double %i.ze, ptr %i.zc, align 8, !tbaa !114
  %i.zf = icmp sgt i32 %.1.i, 0
  br i1 %i.zf, label %.preheader536.lr.ph, label %._crit_edge600

.preheader536.lr.ph:                              ; preds = %Nf_ManPrepareCuts.exit282
  %i.zg = icmp sgt i32 %.1.i189, 0
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.zi = zext nneg i32 %i.r to i64
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.zl = getelementptr i8, ptr %0, i64 32
  %i.zm = getelementptr i8, ptr %0, i64 168
  %i.zn = getelementptr i8, ptr %0, i64 152
  %i.zo = add nsw i32 %i.t, -1
  %i.zp = icmp sgt i32 %.1.i258503, 0
  %or.cond = select i1 %i.zg, i1 %i.zp, i1 false
  br i1 %or.cond, label %.preheader536.us.us, label %._crit_edge600

.preheader536.us.us:                              ; preds = %.preheader536.lr.ph, %._crit_edge595.split.us.us.us
  %.2599.us.us = phi i32 [ %.5.us.us.us, %._crit_edge595.split.us.us.us ], [ %.1, %.preheader536.lr.ph ]
  %.0156597.us.us = phi ptr [ %i.ats, %._crit_edge595.split.us.us.us ], [ %2, %.preheader536.lr.ph ] ; 4 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %.0156597.us.us, i64 16
  %i.zr = getelementptr inbounds nuw i8, ptr %.0156597.us.us, i64 20 ; 2 uses
  br label %.preheader535.us.us.us

.preheader535.us.us.us:                           ; preds = %._crit_edge591.us.us.us, %.preheader536.us.us
  %.3594.us.us.us = phi i32 [ %.2599.us.us, %.preheader536.us.us ], [ %.5.us.us.us, %._crit_edge591.us.us.us ]
  %.0154593.us.us.us = phi ptr [ %3, %.preheader536.us.us ], [ %i.atq, %._crit_edge591.us.us.us ] ; 4 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %.0154593.us.us.us, i64 16
  %i.zt = getelementptr inbounds nuw i8, ptr %.0154593.us.us.us, i64 20 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %Nf_SetAddCut.exit.us.us.us, %.preheader535.us.us.us
  %.0589.us.us.us = phi ptr [ %6, %.preheader535.us.us.us ], [ %i.ato, %Nf_SetAddCut.exit.us.us.us ] ; 4 uses
  %.4588.us.us.us = phi i32 [ %.3594.us.us.us, %.preheader535.us.us.us ], [ %.5.us.us.us, %Nf_SetAddCut.exit.us.us.us ] ; 14 uses
  %i.zu = load i64, ptr %.0156597.us.us, align 16, !tbaa !109
  %i.zv = load i64, ptr %.0154593.us.us.us, align 16, !tbaa !109
  %i.zw = or i64 %i.zv, %i.zu
  %i.zx = load i64, ptr %.0589.us.us.us, align 16, !tbaa !109
  %i.zy = or i64 %i.zw, %i.zx                     ; 4 uses
  %i.zz = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.zy)
  %i.aaa = trunc nuw nsw i64 %i.zz to i32
  %i.aab = icmp slt i32 %i.r, %i.aaa
  br i1 %i.aab, label %Nf_SetAddCut.exit.us.us.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aac = load double, ptr %i.zh, align 8, !tbaa !114
  %i.aad = fadd double %i.aac, 1.000000e+00
  store double %i.aad, ptr %i.zh, align 8, !tbaa !114
  %i.aae = sext i32 %.4588.us.us.us to i64
  %i.aaf = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.aae
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !111 ; 19 uses
  %i.aah = load i32, ptr %i.zq, align 16          ; 3 uses
  %i.aai = lshr i32 %i.aah, 27                    ; 3 uses
  %i.aaj = load i32, ptr %i.zs, align 16          ; 3 uses
  %i.aak = lshr i32 %i.aaj, 27                    ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.0589.us.us.us, i64 16
  %i.aam = load i32, ptr %i.aal, align 16         ; 3 uses
  %i.aan = lshr i32 %i.aam, 27                    ; 3 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.0589.us.us.us, i64 20 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aag, i64 20 ; 13 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.ad, %bb.u
  %indvars.iv.i285.us.us.us = phi i64 [ %indvars.iv.next.i286.us.us.us, %bb.ad ], [ 0, %bb.u ] ; 4 uses
  %.047.i.us.us.us = phi i32 [ %spec.select.i287.us.us.us, %bb.ad ], [ 0, %bb.u ] ; 3 uses
  %.045.i.us.us.us = phi i32 [ %.146.i.us.us.us, %bb.ad ], [ 0, %bb.u ] ; 3 uses
  %.044.i.us.us.us = phi i32 [ %.1.i289.us.us.us, %bb.ad ], [ 0, %bb.u ] ; 3 uses
  %i.aaq = icmp eq i32 %.047.i.us.us.us, %i.aai
  br i1 %i.aaq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aar = zext nneg i32 %.047.i.us.us.us to i64
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.aar
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.aau = phi i32 [ %i.aat, %bb.w ], [ 1000000000, %bb.v ] ; 2 uses
  %i.aav = icmp eq i32 %.045.i.us.us.us, %i.aak
  br i1 %i.aav, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aaw = zext nneg i32 %.045.i.us.us.us to i64
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.aaw
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !23
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.aaz = phi i32 [ %i.aay, %bb.y ], [ 1000000000, %bb.x ] ; 2 uses
  %i.aba = icmp eq i32 %.044.i.us.us.us, %i.aan
  br i1 %i.aba, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.abb = zext nneg i32 %.044.i.us.us.us to i64
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.aao, i64 %i.abb
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.abe = phi i32 [ %i.abd, %bb.aa ], [ 1000000000, %bb.z ] ; 2 uses
  %i.abf = call noundef i32 @llvm.smin.i32(i32 %i.aau, i32 %i.aaz) ; 2 uses
  %i.abg = call noundef i32 @llvm.smin.i32(i32 %i.abf, i32 %i.abe) ; 4 uses
  %i.abh = icmp eq i32 %i.abg, 1000000000
  br i1 %i.abh, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.abi = icmp eq i64 %indvars.iv.i285.us.us.us, %i.zi
  br i1 %i.abi, label %Nf_SetAddCut.exit.us.us.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next.i286.us.us.us = add nuw nsw i64 %indvars.iv.i285.us.us.us, 1
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %indvars.iv.i285.us.us.us
  store i32 %i.abg, ptr %i.abj, align 4, !tbaa !23
  %i.abk = icmp eq i32 %i.aau, %i.abg
  %i.abl = zext i1 %i.abk to i32
  %spec.select.i287.us.us.us = add nuw nsw i32 %.047.i.us.us.us, %i.abl
  %i.abm = icmp eq i32 %i.aaz, %i.abg
  %i.abn = zext i1 %i.abm to i32
  %.146.i.us.us.us = add nuw nsw i32 %.045.i.us.us.us, %i.abn
  %.not.i288.us.us.us = icmp sle i32 %i.abe, %i.abf
  %i.abo = zext i1 %.not.i288.us.us.us to i32
  %.1.i289.us.us.us = add nuw nsw i32 %.044.i.us.us.us, %i.abo
  br label %bb.v

bb.ae:                                            ; preds = %bb.ab
  %i.abp = trunc nuw nsw i64 %indvars.iv.i285.us.us.us to i32
  %i.abq = getelementptr inbounds nuw i8, ptr %i.aag, i64 16 ; 8 uses
  %i.abr = load i32, ptr %i.abq, align 8
  %i.abs = shl i32 %i.abp, 27
  %i.abt = and i32 %i.abr, 67108864
  %i.abu = or disjoint i32 %i.abt, %i.abs
  %.fr = freeze i32 %i.abu                        ; 2 uses
  %i.abv = or i32 %.fr, 67108863
  store i32 %i.abv, ptr %i.abq, align 8
  store i64 %i.zy, ptr %i.aag, align 8, !tbaa !109
  %i.abw = icmp sgt i32 %.4588.us.us.us, 0        ; 2 uses
  br i1 %i.abw, label %.lr.ph.i290.us.us.us, label %Nf_SetLastCutIsContained.exit.us.us.us

.lr.ph.i290.us.us.us:                             ; preds = %bb.ae
  %i.abx = zext nneg i32 %.4588.us.us.us to i64   ; 2 uses
  %i.aby = lshr i32 %.fr, 27                      ; 4 uses
  %wide.trip.count.i.i291.us.us.us = zext nneg i32 %i.aby to i64 ; 2 uses
  %.not49.i.i.us.us.us = icmp eq i32 %i.aby, 0
  br i1 %.not49.i.i.us.us.us, label %.lr.ph.split.us.i.us.us.us, label %.lr.ph.split.i.us.us.us

.lr.ph.split.i.us.us.us:                          ; preds = %.lr.ph.i290.us.us.us, %Nf_SetCutIsContainedOrder.exit.thread.i.us.us.us
  %indvars.iv.i292.us.us.us = phi i64 [ %indvars.iv.next.i294.us.us.us, %Nf_SetCutIsContainedOrder.exit.thread.i.us.us.us ], [ 0, %.lr.ph.i290.us.us.us ] ; 2 uses
  %i.abz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i292.us.us.us
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !111 ; 4 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 16
  %i.acc = load i32, ptr %i.acb, align 8
  %i.acd = lshr i32 %i.acc, 27                    ; 4 uses
  %.not.i293.us.us.us = icmp samesign ugt i32 %i.acd, %i.aby
  br i1 %.not.i293.us.us.us, label %Nf_SetCutIsContainedOrder.exit.thread.i.us.us.us, label %bb.af

bb.af:                                            ; preds = %.lr.ph.split.i.us.us.us
  %i.ace = load i64, ptr %i.aca, align 8, !tbaa !109 ; 2 uses
  %i.acf = and i64 %i.zy, %i.ace
  %i.acg = icmp eq i64 %i.acf, %i.ace
  br i1 %i.acg, label %bb.ag, label %Nf_SetCutIsContainedOrder.exit.thread.i.us.us.us

bb.ag:                                            ; preds = %bb.af
  %i.ach = icmp eq i32 %i.aby, %i.acd
  br i1 %i.ach, label %.preheader.i.i.us.us.us, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.aci = icmp eq i32 %i.acd, 0
  br i1 %i.aci, label %Nf_SetAddCut.exit.us.us.us, label %.lr.ph.i.i296.us.us.us

.lr.ph.i.i296.us.us.us:                           ; preds = %bb.ah
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aca, i64 20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.al, %.lr.ph.i.i296.us.us.us
  %indvars.iv.i.i297.us.us.us = phi i64 [ 0, %.lr.ph.i.i296.us.us.us ], [ %indvars.iv.next.i.i298.us.us.us, %bb.al ] ; 2 uses
  %.038.i.i.us.us.us = phi i32 [ 0, %.lr.ph.i.i296.us.us.us ], [ %.1.i.i.us.us.us, %bb.al ] ; 3 uses
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %indvars.iv.i.i297.us.us.us
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !23 ; 2 uses
  %i.acm = sext i32 %.038.i.i.us.us.us to i64
  %i.acn = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.acm
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !23 ; 2 uses
  %i.acp = icmp sgt i32 %i.acl, %i.aco
  br i1 %i.acp, label %Nf_SetCutIsContainedOrder.exit.thread.i.us.us.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.acq = icmp eq i32 %i.acl, %i.aco
  br i1 %i.acq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.acr = add nsw i32 %.038.i.i.us.us.us, 1      ; 2 uses
  %i.acs = icmp eq i32 %i.acr, %i.acd
  br i1 %i.acs, label %Nf_SetAddCut.exit.us.us.us, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.1.i.i.us.us.us = phi i32 [ %i.acr, %bb.ak ], [ %.038.i.i.us.us.us, %bb.aj ]
  %indvars.iv.next.i.i298.us.us.us = add nuw nsw i64 %indvars.iv.i.i297.us.us.us, 1 ; 2 uses
  %exitcond.not.i.i299.us.us.us = icmp eq i64 %indvars.iv.next.i.i298.us.us.us, %wide.trip.count.i.i291.us.us.us
  br i1 %exitcond.not.i.i299.us.us.us, label %Nf_SetCutIsContainedOrder.exit.thread.i.us.us.us, label %bb.ai, !llvm.loop !1

.preheader.i.i.us.us.us:                          ; preds = %bb.ag
  %i.act = getelementptr inbounds nuw i8, ptr %i.aca, i64 20
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %.preheader.i.i.us.us.us
  %indvars.iv53.i.i.us.us.us = phi i64 [ 0, %.preheader.i.i.us.us.us ], [ %indvars.iv.next54.i.i.us.us.us, %bb.an ] ; 3 uses
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %indvars.iv53.i.i.us.us.us
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !23
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.act, i64 %indvars.iv53.i.i.us.us.us
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !23
  %.not.i.i300.us.us.us = icmp eq i32 %i.acv, %i.acx
  br i1 %.not.i.i300.us.us.us, label %bb.an, label %Nf_SetCutIsContainedOrder.exit.thread.i.us.us.us

bb.an:                                            ; preds = %bb.am
  %indvars.iv.next54.i.i.us.us.us = add nuw nsw i64 %indvars.iv53.i.i.us.us.us, 1 ; 2 uses
  %exitcond57.not.i.i.us.us.us = icmp eq i64 %indvars.iv.next54.i.i.us.us.us, %wide.trip.count.i.i291.us.us.us
  br i1 %exitcond57.not.i.i.us.us.us, label %Nf_SetAddCut.exit.us.us.us, label %bb.am, !llvm.loop !195

Nf_SetCutIsContainedOrder.exit.thread.i.us.us.us: ; preds = %bb.ai, %bb.al, %bb.am, %bb.af, %.lr.ph.split.i.us.us.us
  %indvars.iv.next.i294.us.us.us = add nuw nsw i64 %indvars.iv.i292.us.us.us, 1 ; 2 uses
  %exitcond.not.i295.us.us.us = icmp eq i64 %indvars.iv.next.i294.us.us.us, %i.abx
  br i1 %exitcond.not.i295.us.us.us, label %Nf_SetLastCutIsContained.exit.us.us.us, label %.lr.ph.split.i.us.us.us, !llvm.loop !196

.lr.ph.split.us.i.us.us.us:                       ; preds = %.lr.ph.i290.us.us.us, %Nf_SetCutIsContainedOrder.exit.thread.us.i.us.us.us
  %indvars.iv39.i.us.us.us = phi i64 [ %indvars.iv.next40.i.us.us.us, %Nf_SetCutIsContainedOrder.exit.thread.us.i.us.us.us ], [ 0, %.lr.ph.i290.us.us.us ] ; 2 uses
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv39.i.us.us.us
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !111 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  %i.adb = load i32, ptr %i.ada, align 8
  %.not.us.not.i.us.us.us = icmp ult i32 %i.adb, 134217728
  br i1 %.not.us.not.i.us.us.us, label %bb.ao, label %Nf_SetCutIsContainedOrder.exit.thread.us.i.us.us.us

bb.ao:                                            ; preds = %.lr.ph.split.us.i.us.us.us
  %i.adc = load i64, ptr %i.acz, align 8, !tbaa !109 ; 2 uses
  %i.add = and i64 %i.zy, %i.adc
  %i.ade = icmp eq i64 %i.add, %i.adc
  br i1 %i.ade, label %Nf_SetAddCut.exit.us.us.us, label %Nf_SetCutIsContainedOrder.exit.thread.us.i.us.us.us

Nf_SetCutIsContainedOrder.exit.thread.us.i.us.us.us: ; preds = %bb.ao, %.lr.ph.split.us.i.us.us.us
  %indvars.iv.next40.i.us.us.us = add nuw nsw i64 %indvars.iv39.i.us.us.us, 1 ; 2 uses
  %exitcond43.not.i.us.us.us = icmp eq i64 %indvars.iv.next40.i.us.us.us, %i.abx
  br i1 %exitcond43.not.i.us.us.us, label %Nf_SetLastCutIsContained.exit.us.us.us, label %.lr.ph.split.us.i.us.us.us, !llvm.loop !196

Nf_SetLastCutIsContained.exit.us.us.us:           ; preds = %Nf_SetCutIsContainedOrder.exit.thread.i.us.us.us, %Nf_SetCutIsContainedOrder.exit.thread.us.i.us.us.us, %bb.ae
  %i.adf = load double, ptr %i.zj, align 8, !tbaa !114
  %i.adg = fadd double %i.adf, 1.000000e+00
  store double %i.adg, ptr %i.zj, align 8, !tbaa !114
  %i.adh = load i32, ptr %i.abq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.adi = load ptr, ptr %i.zk, align 8, !tbaa !62 ; 4 uses
  %i.adj = lshr i32 %i.aah, 1
  %i.adk = and i32 %i.adj, 33554431               ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adi, i64 24
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !39 ; 3 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.ado = load i32, ptr %i.adn, align 8, !tbaa !40 ; 3 uses
  %i.adp = lshr i32 %i.adk, %i.ado
  %i.adq = zext nneg i32 %i.adp to i64
end_hunk_0
begin_hunk_1_@Nf_ObjMergeOrder:bb.a
  %i.arp = or i32 %i.arn, -134217728
  store i32 %i.arp, ptr %i.aro, align 8
  %indvars.iv.next74.i.i.us.us.us = add nuw nsw i64 %indvars.iv.i19.i.us.us.us, 1 ; 2 uses
  %exitcond.not75.i.i.us.us.us = icmp eq i64 %indvars.iv.next74.i.i.us.us.us, %i.aqc
  br i1 %exitcond.not75.i.i.us.us.us, label %.preheader.i.i335.us.us.us, label %.outer.i.i.us.us.us, !llvm.loop !2

._crit_edge.i.i334.us.us.us:                      ; preds = %Nf_SetCutIsContainedOrder.exit.thread.i.i.us.us.us, %Nf_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us
  br i1 %i.aqe, label %Nf_SetLastCutContainsArea.exit.i.us.us.us, label %.preheader.i.i335.us.us.us

.preheader.i.i335.us.us.us:                       ; preds = %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us, %._crit_edge.i.i334.us.us.us
  %i.arq = add nuw nsw i32 %.4588.us.us.us, 1
  %wide.trip.count62.i.i.us.us.us = zext nneg i32 %i.arq to i64
  br label %.lr.ph55.i.i.us.us.us

.lr.ph55.i.i.us.us.us:                            ; preds = %bb.bu, %.preheader.i.i335.us.us.us
  %indvars.iv59.i.i.us.us.us = phi i64 [ 0, %.preheader.i.i335.us.us.us ], [ %indvars.iv.next60.i.i.us.us.us, %bb.bu ] ; 3 uses
  %.04054.i.i.us.us.us = phi i32 [ 0, %.preheader.i.i335.us.us.us ], [ %.141.i.i.us.us.us, %bb.bu ] ; 3 uses
  %i.arr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv59.i.i.us.us.us ; 2 uses
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !111 ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 16
  %i.aru = load i32, ptr %i.art, align 8
  %i.arv = icmp ugt i32 %i.aru, -134217729
  br i1 %i.arv, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %.lr.ph55.i.i.us.us.us
  %i.arw = sext i32 %.04054.i.i.us.us.us to i64   ; 2 uses
  %i.arx = icmp sgt i64 %indvars.iv59.i.i.us.us.us, %i.arw
  br i1 %i.arx, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ary = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.arw ; 2 uses
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !111
  store ptr %i.ars, ptr %i.ary, align 8, !tbaa !111
  store ptr %i.arz, ptr %i.arr, align 8, !tbaa !111
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.asa = add nsw i32 %.04054.i.i.us.us.us, 1
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph55.i.i.us.us.us
  %.141.i.i.us.us.us = phi i32 [ %.04054.i.i.us.us.us, %.lr.ph55.i.i.us.us.us ], [ %i.asa, %bb.bt ] ; 2 uses
  %indvars.iv.next60.i.i.us.us.us = add nuw nsw i64 %indvars.iv59.i.i.us.us.us, 1 ; 2 uses
  %exitcond63.not.i.i.us.us.us = icmp eq i64 %indvars.iv.next60.i.i.us.us.us, %wide.trip.count62.i.i.us.us.us
  br i1 %exitcond63.not.i.i.us.us.us, label %._crit_edge56.loopexit.i.i.us.us.us, label %.lr.ph55.i.i.us.us.us, !llvm.loop !3

._crit_edge56.loopexit.i.i.us.us.us:              ; preds = %bb.bu
  %i.asb = add nsw i32 %.141.i.i.us.us.us, -1
  br label %Nf_SetLastCutContainsArea.exit.i.us.us.us

Nf_SetLastCutContainsArea.exit.i.us.us.us:        ; preds = %._crit_edge56.loopexit.i.i.us.us.us, %._crit_edge.i.i334.us.us.us
  %.0.i.i336.us.us.us = phi i32 [ %i.asb, %._crit_edge56.loopexit.i.i.us.us.us ], [ %.4588.us.us.us, %._crit_edge.i.i334.us.us.us ] ; 8 uses
  %i.asc = icmp sgt i32 %.0.i.i336.us.us.us, 0
  br i1 %i.asc, label %.lr.ph.i8.i.us.us.us.preheader, label %Nf_SetSortByArea.exit.i.us.us.us

.lr.ph.i8.i.us.us.us.preheader:                   ; preds = %Nf_SetLastCutContainsArea.exit.i.us.us.us
  %i.asd = zext nneg i32 %.0.i.i336.us.us.us to i64
  br label %.lr.ph.i8.i.us.us.us

.lr.ph.i8.i.us.us.us:                             ; preds = %.lr.ph.i8.i.us.us.us.preheader, %Nf_CutCompareArea.exit.i.i.us.us.us
  %indvars.iv694 = phi i64 [ %i.asd, %.lr.ph.i8.i.us.us.us.preheader ], [ %indvars.iv.next695, %Nf_CutCompareArea.exit.i.i.us.us.us ] ; 3 uses
  %i.ase = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv694 ; 3 uses
  %i.asf = getelementptr i8, ptr %i.ase, i64 -8   ; 2 uses
  %i.asg = load ptr, ptr %i.asf, align 8, !tbaa !111 ; 4 uses
  %i.ash = load ptr, ptr %i.ase, align 8, !tbaa !111 ; 4 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asg, i64 16
  %i.asj = load i32, ptr %i.asi, align 8          ; 2 uses
  %i.ask = lshr i32 %i.asj, 26
  %i.asl = and i32 %i.ask, 1                      ; 2 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %i.ash, i64 16
  %i.asn = load i32, ptr %i.asm, align 8          ; 2 uses
  %i.aso = lshr i32 %i.asn, 26
  %i.asp = and i32 %i.aso, 1                      ; 2 uses
  %i.asq = icmp samesign ult i32 %i.asl, %i.asp
  br i1 %i.asq, label %Nf_SetSortByArea.exit.i.us.us.us, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i8.i.us.us.us
  %i.asr = icmp samesign ugt i32 %i.asl, %i.asp
  br i1 %i.asr, label %Nf_CutCompareArea.exit.i.i.us.us.us, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asg, i64 12
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !108
  %i.asu = fpext float %i.ast to double           ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ash, i64 12
  %i.asw = load float, ptr %i.asv, align 4, !tbaa !108
  %i.asx = fpext float %i.asw to double           ; 2 uses
  %i.asy = fadd double %i.asx, -1.000000e-03
  %i.asz = fcmp ogt double %i.asy, %i.asu
  br i1 %i.asz, label %Nf_SetSortByArea.exit.i.us.us.us, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ata = fadd double %i.asx, 1.000000e-03
  %i.atb = fcmp olt double %i.ata, %i.asu
  br i1 %i.atb, label %Nf_CutCompareArea.exit.i.i.us.us.us, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.atc = getelementptr inbounds nuw i8, ptr %i.asg, i64 8
  %i.atd = load i32, ptr %i.atc, align 8, !tbaa !107 ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %i.ash, i64 8
  %i.atf = load i32, ptr %i.ate, align 8, !tbaa !107 ; 2 uses
  %i.atg = icmp slt i32 %i.atd, %i.atf
  br i1 %i.atg, label %Nf_SetSortByArea.exit.i.us.us.us, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ath = icmp sgt i32 %i.atd, %i.atf
  br i1 %i.ath, label %Nf_CutCompareArea.exit.i.i.us.us.us, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ati = lshr i32 %i.asj, 27
  %i.atj = lshr i32 %i.asn, 27
  %i.atk = icmp samesign ult i32 %i.ati, %i.atj
  br i1 %i.atk, label %Nf_SetSortByArea.exit.i.us.us.us, label %Nf_CutCompareArea.exit.i.i.us.us.us

Nf_CutCompareArea.exit.i.i.us.us.us:              ; preds = %bb.ca, %bb.bz, %bb.bx, %bb.bv
  store ptr %i.ash, ptr %i.asf, align 8, !tbaa !111
  store ptr %i.asg, ptr %i.ase, align 8, !tbaa !111
  %indvars.iv.next695 = add nsw i64 %indvars.iv694, -1
  %i.atl = icmp sgt i64 %indvars.iv694, 1
  br i1 %i.atl, label %.lr.ph.i8.i.us.us.us, label %Nf_SetSortByArea.exit.i.us.us.us, !llvm.loop !4

Nf_SetSortByArea.exit.i.us.us.us:                 ; preds = %.lr.ph.i8.i.us.us.us, %bb.bw, %bb.by, %bb.ca, %Nf_CutCompareArea.exit.i.i.us.us.us, %Nf_SetLastCutContainsArea.exit.i.us.us.us, %bb.bk
  %.0.i10.i.us.us.us = phi i32 [ %.4588.us.us.us, %bb.bk ], [ %.0.i.i336.us.us.us, %Nf_SetLastCutContainsArea.exit.i.us.us.us ], [ %.0.i.i336.us.us.us, %Nf_CutCompareArea.exit.i.i.us.us.us ], [ %.0.i.i336.us.us.us, %bb.ca ], [ %.0.i.i336.us.us.us, %bb.by ], [ %.0.i.i336.us.us.us, %bb.bw ], [ %.0.i.i336.us.us.us, %.lr.ph.i8.i.us.us.us ]
  %i.atm = add nsw i32 %.0.i10.i.us.us.us, 1
  %i.atn = call noundef i32 @llvm.smin.i32(i32 %i.atm, i32 %i.zo)
  br label %Nf_SetAddCut.exit.us.us.us

Nf_SetAddCut.exit.us.us.us:                       ; preds = %bb.ac, %bb.ah, %bb.ao, %bb.ak, %bb.an, %Nf_SetSortByArea.exit.i.us.us.us, %Nf_CutParams.exit328.us.us.us, %bb.t
  %.5.us.us.us = phi i32 [ %.4588.us.us.us, %bb.t ], [ %.4588.us.us.us, %bb.ak ], [ 1, %Nf_CutParams.exit328.us.us.us ], [ %i.atn, %Nf_SetSortByArea.exit.i.us.us.us ], [ %.4588.us.us.us, %bb.ah ], [ %.4588.us.us.us, %bb.ao ], [ %.4588.us.us.us, %bb.an ], [ %.4588.us.us.us, %bb.ac ] ; 4 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %.0589.us.us.us, i64 48 ; 2 uses
  %i.atp = icmp ult ptr %i.ato, %i.yy
  br i1 %i.atp, label %bb.t, label %._crit_edge591.us.us.us, !llvm.loop !200

._crit_edge591.us.us.us:                          ; preds = %Nf_SetAddCut.exit.us.us.us
  %i.atq = getelementptr inbounds nuw i8, ptr %.0154593.us.us.us, i64 48 ; 2 uses
  %i.atr = icmp ult ptr %i.atq, %i.lg
  br i1 %i.atr, label %.preheader535.us.us.us, label %._crit_edge595.split.us.us.us, !llvm.loop !201

._crit_edge595.split.us.us.us:                    ; preds = %._crit_edge591.us.us.us
  %i.ats = getelementptr inbounds nuw i8, ptr %.0156597.us.us, i64 48 ; 2 uses
  %i.att = icmp ult ptr %i.ats, %i.le
  br i1 %i.att, label %.preheader536.us.us, label %._crit_edge600, !llvm.loop !202

._crit_edge600:                                   ; preds = %._crit_edge595.split.us.us.us, %.preheader536.lr.ph, %Nf_ManPrepareCuts.exit282
  %.2.lcssa = phi i32 [ %.1, %Nf_ManPrepareCuts.exit282 ], [ %.1, %.preheader536.lr.ph ], [ %.5.us.us.us, %._crit_edge595.split.us.us.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.loopexit526

Gia_ObjIsMuxId.exit.thread:                       ; preds = %bb.p, %Gia_ObjIsMuxId.exit
  %.val181 = load i64, ptr %i.g, align 4          ; 4 uses
  %i.atu = and i64 %.val181, 2147483648
  %.not.i.i338 = icmp ne i64 %i.atu, 0
  %i.atv = and i64 %.val181, 536870911
  %i.atw = icmp eq i64 %i.atv, 536870911
  %narrow.i.not.i = or i1 %.not.i.i338, %i.atw
  br i1 %narrow.i.not.i, label %Gia_ObjIsXor.exit, label %bb.cb

bb.cb:                                            ; preds = %Gia_ObjIsMuxId.exit.thread
  %i.atx = trunc i64 %.val181 to i32
  %i.aty = and i32 %i.atx, 536870911
  %i.atz = lshr i64 %.val181, 32
  %i.aua = trunc nuw i64 %i.atz to i32
  %i.aub = and i32 %i.aua, 536870911
  %i.auc = icmp samesign uge i32 %i.aty, %i.aub
  br label %Gia_ObjIsXor.exit

Gia_ObjIsXor.exit:                                ; preds = %Gia_ObjIsMuxId.exit.thread, %bb.cb
  %.not39.i = phi i1 [ true, %Gia_ObjIsMuxId.exit.thread ], [ %i.auc, %bb.cb ]
  %i.aud = mul nsw i32 %.1.i189, %.1.i
  %i.aue = sitofp i32 %i.aud to double
  %i.auf = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.aug = load double, ptr %i.auf, align 8, !tbaa !114
  %i.auh = fadd double %i.aug, %i.aue
  store double %i.auh, ptr %i.auf, align 8, !tbaa !114
  %i.aui = icmp sgt i32 %.1.i, 0
  br i1 %i.aui, label %.preheader.lr.ph, label %.loopexit526

.preheader.lr.ph:                                 ; preds = %Gia_ObjIsXor.exit
  %i.auj = icmp sgt i32 %.1.i189, 0
  %i.auk = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.aul = icmp eq i32 %i.r, 0                    ; 2 uses
  %wide.trip.count158.i = zext i32 %i.r to i64    ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.auo = getelementptr i8, ptr %0, i64 32
  %i.aup = getelementptr i8, ptr %0, i64 168
  %i.auq = getelementptr i8, ptr %0, i64 152
  %i.aur = add nsw i32 %i.t, -1
  br i1 %i.auj, label %.preheader.us, label %.loopexit526

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge613.us
  %.6616.us = phi i32 [ %.8.us, %._crit_edge613.us ], [ %.1, %.preheader.lr.ph ]
  %.1157615.us = phi ptr [ %i.bnr, %._crit_edge613.us ], [ %2, %.preheader.lr.ph ] ; 5 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %.1157615.us, i64 16
  %i.aut = getelementptr i8, ptr %.1157615.us, i64 20 ; 4 uses
  br label %bb.cc

bb.cc:                                            ; preds = %.preheader.us, %Nf_SetAddCut.exit474.us
  %.7608.us = phi i32 [ %.6616.us, %.preheader.us ], [ %.8.us, %Nf_SetAddCut.exit474.us ] ; 18 uses
  %.1155607.us = phi ptr [ %3, %.preheader.us ], [ %i.bnp, %Nf_SetAddCut.exit474.us ] ; 5 uses
  %i.auu = load i32, ptr %i.aus, align 16         ; 3 uses
  %i.auv = lshr i32 %i.auu, 27                    ; 11 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %.1155607.us, i64 16
  %i.aux = load i32, ptr %i.auw, align 16         ; 3 uses
  %i.auy = lshr i32 %i.aux, 27                    ; 11 uses
  %i.auz = add nuw nsw i32 %i.auy, %i.auv
  %i.ava = icmp sgt i32 %i.auz, %i.r
  br i1 %i.ava, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.avb = load i64, ptr %.1157615.us, align 16, !tbaa !109
  %i.avc = load i64, ptr %.1155607.us, align 16, !tbaa !109
  %i.avd = or i64 %i.avc, %i.avb
  %i.ave = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.avd)
  %i.avf = trunc nuw nsw i64 %i.ave to i32
  %i.avg = icmp slt i32 %i.r, %i.avf
  br i1 %i.avg, label %Nf_SetAddCut.exit474.us, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.avh = load double, ptr %i.auk, align 8, !tbaa !114
  %i.avi = fadd double %i.avh, 1.000000e+00
  store double %i.avi, ptr %i.auk, align 8, !tbaa !114
  %i.avj = sext i32 %.7608.us to i64
  %i.avk = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.avj
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !111 ; 19 uses
  %i.avm = getelementptr i8, ptr %.1155607.us, i64 20 ; 4 uses
  %i.avn = getelementptr i8, ptr %i.avl, i64 20   ; 15 uses
  %i.avo = icmp eq i32 %i.auv, %i.r
  %i.avp = icmp eq i32 %i.auy, %i.r
  %or.cond.i.us = and i1 %i.avo, %i.avp
  br i1 %or.cond.i.us, label %.preheader.i.us, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.avq = icmp eq i32 %i.auv, 0
  br i1 %i.avq, label %.loopexit120.i.us, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.avr = icmp eq i32 %i.auy, 0
  br i1 %i.avr, label %.loopexit121.i.us, label %.preheader118.i.us

.preheader118.i.us:                               ; preds = %bb.cg
  br i1 %i.aul, label %Nf_SetAddCut.exit474.us, label %.lr.ph.i339.us

.lr.ph.i339.us:                                   ; preds = %.preheader118.i.us, %bb.cm
  %indvars.iv697 = phi i64 [ %indvars.iv.next698, %bb.cm ], [ 0, %.preheader118.i.us ] ; 2 uses
  %.091123.i.us = phi i32 [ %.192.i.us, %bb.cm ], [ 0, %.preheader118.i.us ] ; 5 uses
  %.196122.i.us = phi i32 [ %.297.i.us, %bb.cm ], [ 0, %.preheader118.i.us ] ; 5 uses
  %i.avs = sext i32 %.196122.i.us to i64
  %i.avt = getelementptr inbounds [4 x i8], ptr %i.aut, i64 %i.avs
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !23 ; 4 uses
  %i.avv = sext i32 %.091123.i.us to i64
  %i.avw = getelementptr inbounds [4 x i8], ptr %i.avm, i64 %i.avv
  %i.avx = load i32, ptr %i.avw, align 4, !tbaa !23 ; 3 uses
  %i.avy = icmp slt i32 %i.avu, %i.avx
  %indvars.iv.next698 = add nuw nsw i64 %indvars.iv697, 1 ; 4 uses
  %i.avz = getelementptr inbounds nuw [4 x i8], ptr %i.avn, i64 %indvars.iv697 ; 3 uses
  br i1 %i.avy, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i339.us
  %i.awa = icmp sgt i32 %i.avu, %i.avx
  br i1 %i.awa, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.awb = add nsw i32 %.196122.i.us, 1           ; 3 uses
  store i32 %i.avu, ptr %i.avz, align 4, !tbaa !23
  %i.awc = add nsw i32 %.091123.i.us, 1           ; 3 uses
  %.not.i340.us = icmp slt i32 %i.awb, %i.auv
  br i1 %.not.i340.us, label %bb.cj, label %.loopexit120.i.us.loopexit

bb.cj:                                            ; preds = %bb.ci
  %.not112.i.us = icmp slt i32 %i.awc, %i.auy
  br i1 %.not112.i.us, label %bb.cm, label %.loopexit121.i.us.loopexit

bb.ck:                                            ; preds = %bb.ch
  %i.awd = add nsw i32 %.091123.i.us, 1           ; 2 uses
  store i32 %i.avx, ptr %i.avz, align 4, !tbaa !23
  %.not113.i.us = icmp slt i32 %i.awd, %i.auy
  br i1 %.not113.i.us, label %bb.cm, label %.loopexit121.i.us.loopexit

bb.cl:                                            ; preds = %.lr.ph.i339.us
  %i.awe = add nsw i32 %.196122.i.us, 1           ; 2 uses
  store i32 %i.avu, ptr %i.avz, align 4, !tbaa !23
  %.not114.i.us = icmp slt i32 %i.awe, %i.auv
  br i1 %.not114.i.us, label %bb.cm, label %.loopexit120.i.us.loopexit

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.cj
  %.297.i.us = phi i32 [ %i.awe, %bb.cl ], [ %.196122.i.us, %bb.ck ], [ %i.awb, %bb.cj ]
  %.192.i.us = phi i32 [ %.091123.i.us, %bb.cl ], [ %i.awd, %bb.ck ], [ %i.awc, %bb.cj ]
  %i.awf = icmp eq i64 %indvars.iv.next698, %wide.trip.count158.i
  br i1 %i.awf, label %Nf_SetAddCut.exit474.us, label %.lr.ph.i339.us

.loopexit121.i.us.loopexit:                       ; preds = %bb.ck, %bb.cj
  %.398.i.us.ph = phi i32 [ %.196122.i.us, %bb.ck ], [ %i.awb, %bb.cj ]
  %i.awg = trunc nuw i64 %indvars.iv.next698 to i32
  br label %.loopexit121.i.us

.loopexit121.i.us:                                ; preds = %.loopexit121.i.us.loopexit, %bb.cg
  %.398.i.us = phi i32 [ 0, %bb.cg ], [ %.398.i.us.ph, %.loopexit121.i.us.loopexit ] ; 4 uses
  %.2.i.us = phi i32 [ 0, %bb.cg ], [ %i.awg, %.loopexit121.i.us.loopexit ] ; 4 uses
  %i.awh = add nsw i32 %.2.i.us, %i.auv
  %i.awi = add nsw i32 %.398.i.us, %i.r
  %i.awj = icmp sgt i32 %i.awh, %i.awi
  br i1 %i.awj, label %Nf_SetAddCut.exit474.us, label %.preheader117.i.us

.preheader117.i.us:                               ; preds = %.loopexit121.i.us
  %i.awk = icmp slt i32 %.398.i.us, %i.auv
  br i1 %i.awk, label %.lr.ph127.preheader.i.us, label %.loopexit.us

.lr.ph127.preheader.i.us:                         ; preds = %.preheader117.i.us
  %i.awl = sext i32 %.2.i.us to i64
  %i.awm = sext i32 %.398.i.us to i64             ; 2 uses
  %wide.trip.count.i341.us = zext nneg i32 %i.auv to i64
  %i.awn = shl nsw i64 %i.awl, 2
  %scevgep700 = getelementptr i8, ptr %i.avn, i64 %i.awn
  %i.awo = shl nsw i64 %i.awm, 2
  %scevgep701 = getelementptr i8, ptr %i.aut, i64 %i.awo
  %i.awp = sub nsw i64 %wide.trip.count.i341.us, %i.awm
  %i.awq = shl nsw i64 %i.awp, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep700, ptr align 4 %scevgep701, i64 %i.awq, i1 false), !tbaa !23
  %i.awr = add i32 %i.auv, %.2.i.us
  %i.aws = sub i32 %i.awr, %.398.i.us
  br label %.loopexit.us

.loopexit120.i.us.loopexit:                       ; preds = %bb.cl, %bb.ci
  %.293.i.us.ph = phi i32 [ %.091123.i.us, %bb.cl ], [ %i.awc, %bb.ci ]
  %i.awt = trunc nuw i64 %indvars.iv.next698 to i32
  br label %.loopexit120.i.us

.loopexit120.i.us:                                ; preds = %.loopexit120.i.us.loopexit, %bb.cf
  %.293.i.us = phi i32 [ 0, %bb.cf ], [ %.293.i.us.ph, %.loopexit120.i.us.loopexit ] ; 4 uses
  %.4.i.us = phi i32 [ 0, %bb.cf ], [ %i.awt, %.loopexit120.i.us.loopexit ] ; 4 uses
  %i.awu = add nsw i32 %.4.i.us, %i.auy
  %i.awv = add nsw i32 %.293.i.us, %i.r
  %i.aww = icmp sgt i32 %i.awu, %i.awv
  br i1 %i.aww, label %Nf_SetAddCut.exit474.us, label %.preheader116.i.us

.preheader116.i.us:                               ; preds = %.loopexit120.i.us
  %i.awx = icmp slt i32 %.293.i.us, %i.auy
  br i1 %i.awx, label %.lr.ph130.preheader.i.us, label %.loopexit.us

.lr.ph130.preheader.i.us:                         ; preds = %.preheader116.i.us
  %i.awy = sext i32 %.4.i.us to i64
  %i.awz = sext i32 %.293.i.us to i64             ; 2 uses
  %wide.trip.count153.i.us = zext nneg i32 %i.auy to i64
  %i.axa = shl nsw i64 %i.awy, 2
  %scevgep703 = getelementptr i8, ptr %i.avn, i64 %i.axa
  %i.axb = shl nsw i64 %i.awz, 2
  %scevgep704 = getelementptr i8, ptr %i.avm, i64 %i.axb
  %i.axc = sub nsw i64 %wide.trip.count153.i.us, %i.awz
  %i.axd = shl nsw i64 %i.axc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep703, ptr align 4 %scevgep704, i64 %i.axd, i1 false), !tbaa !23
  %i.axe = add i32 %i.auy, %.4.i.us
  %i.axf = sub i32 %i.axe, %.293.i.us
  br label %.loopexit.us

.preheader.i.us:                                  ; preds = %bb.ce
  br i1 %i.aul, label %.loopexit.us, label %.lr.ph134.i.us

.lr.ph134.i.us:                                   ; preds = %.preheader.i.us, %bb.cn
  %indvars.iv155.i.us = phi i64 [ %indvars.iv.next156.i.us, %bb.cn ], [ 0, %.preheader.i.us ] ; 4 uses
  %i.axg = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %indvars.iv155.i.us
  %i.axh = load i32, ptr %i.axg, align 4, !tbaa !23 ; 2 uses
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %i.avm, i64 %indvars.iv155.i.us
  %i.axj = load i32, ptr %i.axi, align 4, !tbaa !23
  %.not115.i.us = icmp eq i32 %i.axh, %i.axj
  br i1 %.not115.i.us, label %bb.cn, label %Nf_SetAddCut.exit474.us

bb.cn:                                            ; preds = %.lr.ph134.i.us
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr %i.avn, i64 %indvars.iv155.i.us
  store i32 %i.axh, ptr %i.axk, align 4, !tbaa !23
  %indvars.iv.next156.i.us = add nuw nsw i64 %indvars.iv155.i.us, 1 ; 2 uses
  %exitcond159.not.i.us = icmp eq i64 %indvars.iv.next156.i.us, %wide.trip.count158.i
  br i1 %exitcond159.not.i.us, label %.loopexit.us, label %.lr.ph134.i.us, !llvm.loop !203

.loopexit.us:                                     ; preds = %bb.cn, %.preheader.i.us, %.lr.ph130.preheader.i.us, %.preheader116.i.us, %.lr.ph127.preheader.i.us, %.preheader117.i.us
  %.5.lcssa.sink.i.us = phi i32 [ %i.aws, %.lr.ph127.preheader.i.us ], [ 0, %.preheader.i.us ], [ %i.axf, %.lr.ph130.preheader.i.us ], [ %.2.i.us, %.preheader117.i.us ], [ %.4.i.us, %.preheader116.i.us ], [ %i.r, %bb.cn ]
  %i.axl = getelementptr inbounds nuw i8, ptr %i.avl, i64 16 ; 8 uses
  %i.axm = load i32, ptr %i.axl, align 8
  %i.axn = shl i32 %.5.lcssa.sink.i.us, 27
  %i.axo = and i32 %i.axm, 67108864
  %i.axp = or disjoint i32 %i.axo, %i.axn
  %.fr818 = freeze i32 %i.axp                     ; 2 uses
  %i.axq = or i32 %.fr818, 67108863
  store i32 %i.axq, ptr %i.axl, align 8
  %i.axr = load i64, ptr %.1157615.us, align 16, !tbaa !109
  %i.axs = load i64, ptr %.1155607.us, align 16, !tbaa !109
  %i.axt = or i64 %i.axs, %i.axr                  ; 3 uses
  store i64 %i.axt, ptr %i.avl, align 8, !tbaa !109
  %i.axu = icmp sgt i32 %.7608.us, 0              ; 2 uses
  br i1 %i.axu, label %.lr.ph.i346.us, label %Nf_SetLastCutIsContained.exit373.us

.lr.ph.i346.us:                                   ; preds = %.loopexit.us
  %i.axv = zext nneg i32 %.7608.us to i64         ; 2 uses
  %i.axw = lshr i32 %.fr818, 27                   ; 4 uses
  %wide.trip.count.i.i348.us = zext nneg i32 %i.axw to i64 ; 2 uses
  %.not49.i.i349.us = icmp eq i32 %i.axw, 0
  br i1 %.not49.i.i349.us, label %.lr.ph.split.us.i367.us, label %.lr.ph.split.i350.us

.lr.ph.split.i350.us:                             ; preds = %.lr.ph.i346.us, %Nf_SetCutIsContainedOrder.exit.thread.i353.us
  %indvars.iv.i351.us = phi i64 [ %indvars.iv.next.i354.us, %Nf_SetCutIsContainedOrder.exit.thread.i353.us ], [ 0, %.lr.ph.i346.us ] ; 2 uses
  %i.axx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i351.us
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !111 ; 4 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 16
  %i.aya = load i32, ptr %i.axz, align 8
  %i.ayb = lshr i32 %i.aya, 27                    ; 4 uses
  %.not.i352.us = icmp samesign ugt i32 %i.ayb, %i.axw
  br i1 %.not.i352.us, label %Nf_SetCutIsContainedOrder.exit.thread.i353.us, label %bb.co

bb.co:                                            ; preds = %.lr.ph.split.i350.us
  %i.ayc = load i64, ptr %i.axy, align 8, !tbaa !109 ; 2 uses
  %i.ayd = and i64 %i.axt, %i.ayc
  %i.aye = icmp eq i64 %i.ayd, %i.ayc
  br i1 %i.aye, label %bb.cp, label %Nf_SetCutIsContainedOrder.exit.thread.i353.us

bb.cp:                                            ; preds = %bb.co
  %i.ayf = icmp eq i32 %i.axw, %i.ayb
  br i1 %i.ayf, label %.preheader.i.i362.us, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ayg = icmp eq i32 %i.ayb, 0
  br i1 %i.ayg, label %Nf_SetAddCut.exit474.us, label %.lr.ph.i.i356.us

.lr.ph.i.i356.us:                                 ; preds = %bb.cq
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.axy, i64 20
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cu, %.lr.ph.i.i356.us
  %indvars.iv.i.i357.us = phi i64 [ 0, %.lr.ph.i.i356.us ], [ %indvars.iv.next.i.i360.us, %bb.cu ] ; 2 uses
  %.038.i.i358.us = phi i32 [ 0, %.lr.ph.i.i356.us ], [ %.1.i.i359.us, %bb.cu ] ; 3 uses
  %i.ayi = getelementptr inbounds nuw [4 x i8], ptr %i.avn, i64 %indvars.iv.i.i357.us
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !23 ; 2 uses
  %i.ayk = sext i32 %.038.i.i358.us to i64
  %i.ayl = getelementptr inbounds [4 x i8], ptr %i.ayh, i64 %i.ayk
  %i.aym = load i32, ptr %i.ayl, align 4, !tbaa !23 ; 2 uses
  %i.ayn = icmp sgt i32 %i.ayj, %i.aym
  br i1 %i.ayn, label %Nf_SetCutIsContainedOrder.exit.thread.i353.us, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ayo = icmp eq i32 %i.ayj, %i.aym
  br i1 %i.ayo, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.ayp = add nsw i32 %.038.i.i358.us, 1         ; 2 uses
  %i.ayq = icmp eq i32 %i.ayp, %i.ayb
  br i1 %i.ayq, label %Nf_SetAddCut.exit474.us, label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.1.i.i359.us = phi i32 [ %i.ayp, %bb.ct ], [ %.038.i.i358.us, %bb.cs ]
  %indvars.iv.next.i.i360.us = add nuw nsw i64 %indvars.iv.i.i357.us, 1 ; 2 uses
  %exitcond.not.i.i361.us = icmp eq i64 %indvars.iv.next.i.i360.us, %wide.trip.count.i.i348.us
  br i1 %exitcond.not.i.i361.us, label %Nf_SetCutIsContainedOrder.exit.thread.i353.us, label %bb.cr, !llvm.loop !1

.preheader.i.i362.us:                             ; preds = %bb.cp
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.axy, i64 20
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cw, %.preheader.i.i362.us
  %indvars.iv53.i.i363.us = phi i64 [ 0, %.preheader.i.i362.us ], [ %indvars.iv.next54.i.i365.us, %bb.cw ] ; 3 uses
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %i.avn, i64 %indvars.iv53.i.i363.us
  %i.ayt = load i32, ptr %i.ays, align 4, !tbaa !23
  %i.ayu = getelementptr inbounds nuw [4 x i8], ptr %i.ayr, i64 %indvars.iv53.i.i363.us
  %i.ayv = load i32, ptr %i.ayu, align 4, !tbaa !23
  %.not.i.i364.us = icmp eq i32 %i.ayt, %i.ayv
  br i1 %.not.i.i364.us, label %bb.cw, label %Nf_SetCutIsContainedOrder.exit.thread.i353.us

bb.cw:                                            ; preds = %bb.cv
  %indvars.iv.next54.i.i365.us = add nuw nsw i64 %indvars.iv53.i.i363.us, 1 ; 2 uses
  %exitcond57.not.i.i366.us = icmp eq i64 %indvars.iv.next54.i.i365.us, %wide.trip.count.i.i348.us
  br i1 %exitcond57.not.i.i366.us, label %Nf_SetAddCut.exit474.us, label %bb.cv, !llvm.loop !195

Nf_SetCutIsContainedOrder.exit.thread.i353.us:    ; preds = %bb.cr, %bb.cu, %bb.cv, %bb.co, %.lr.ph.split.i350.us
  %indvars.iv.next.i354.us = add nuw nsw i64 %indvars.iv.i351.us, 1 ; 2 uses
  %exitcond.not.i355.us = icmp eq i64 %indvars.iv.next.i354.us, %i.axv
  br i1 %exitcond.not.i355.us, label %Nf_SetLastCutIsContained.exit373.us, label %.lr.ph.split.i350.us, !llvm.loop !196

.lr.ph.split.us.i367.us:                          ; preds = %.lr.ph.i346.us, %Nf_SetCutIsContainedOrder.exit.thread.us.i370.us
  %indvars.iv39.i368.us = phi i64 [ %indvars.iv.next40.i371.us, %Nf_SetCutIsContainedOrder.exit.thread.us.i370.us ], [ 0, %.lr.ph.i346.us ] ; 2 uses
  %i.ayw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv39.i368.us
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !111 ; 2 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 16
  %i.ayz = load i32, ptr %i.ayy, align 8
  %.not.us.not.i369.us = icmp ult i32 %i.ayz, 134217728
  br i1 %.not.us.not.i369.us, label %bb.cx, label %Nf_SetCutIsContainedOrder.exit.thread.us.i370.us

bb.cx:                                            ; preds = %.lr.ph.split.us.i367.us
  %i.aza = load i64, ptr %i.ayx, align 8, !tbaa !109 ; 2 uses
  %i.azb = and i64 %i.axt, %i.aza
  %i.azc = icmp eq i64 %i.azb, %i.aza
  br i1 %i.azc, label %Nf_SetAddCut.exit474.us, label %Nf_SetCutIsContainedOrder.exit.thread.us.i370.us

Nf_SetCutIsContainedOrder.exit.thread.us.i370.us: ; preds = %bb.cx, %.lr.ph.split.us.i367.us
  %indvars.iv.next40.i371.us = add nuw nsw i64 %indvars.iv39.i368.us, 1 ; 2 uses
  %exitcond43.not.i372.us = icmp eq i64 %indvars.iv.next40.i371.us, %i.axv
  br i1 %exitcond43.not.i372.us, label %Nf_SetLastCutIsContained.exit373.us, label %.lr.ph.split.us.i367.us, !llvm.loop !196

Nf_SetLastCutIsContained.exit373.us:              ; preds = %Nf_SetCutIsContainedOrder.exit.thread.i353.us, %Nf_SetCutIsContainedOrder.exit.thread.us.i370.us, %.loopexit.us
  %i.azd = load double, ptr %i.aum, align 8, !tbaa !114
  %i.aze = fadd double %i.azd, 1.000000e+00
  store double %i.aze, ptr %i.aum, align 8, !tbaa !114
  %i.azf = load i32, ptr %i.axl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.azg = load ptr, ptr %i.aun, align 8, !tbaa !62 ; 4 uses
  %i.azh = lshr i32 %i.auu, 1
  %i.azi = and i32 %i.azh, 33554431               ; 2 uses
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azg, i64 24
  %i.azk = load ptr, ptr %i.azj, align 8, !tbaa !39 ; 2 uses
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azg, i64 8
  %i.azm = load i32, ptr %i.azl, align 8, !tbaa !40 ; 2 uses
  %i.azn = lshr i32 %i.azi, %i.azm
  %i.azo = zext nneg i32 %i.azn to i64
  %i.azp = getelementptr inbounds nuw [8 x i8], ptr %i.azk, i64 %i.azo
  %i.azq = load ptr, ptr %i.azp, align 8, !tbaa !42
  %i.azr = load i32, ptr %i.azg, align 8, !tbaa !43 ; 2 uses
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azg, i64 12
  %i.azt = load i32, ptr %i.azs, align 4, !tbaa !44 ; 2 uses
  %i.azu = and i32 %i.azt, %i.azi
  %i.azv = mul nsw i32 %i.azu, %i.azr
  %i.azw = sext i32 %i.azv to i64
  %i.azx = getelementptr inbounds [8 x i8], ptr %i.azq, i64 %i.azw
  %i.azy = load i64, ptr %i.azx, align 8, !tbaa !25
  %i.azz = lshr i32 %i.aux, 1
  %i.baa = and i32 %i.azz, 33554431               ; 2 uses
  %i.bab = lshr i32 %i.baa, %i.azm
  %i.bac = zext nneg i32 %i.bab to i64
  %i.bad = getelementptr inbounds nuw [8 x i8], ptr %i.azk, i64 %i.bac
  %i.bae = load ptr, ptr %i.bad, align 8, !tbaa !42
  %i.baf = and i32 %i.azt, %i.baa
  %i.bag = mul nsw i32 %i.baf, %i.azr
  %i.bah = sext i32 %i.bag to i64
  %i.bai = getelementptr inbounds [8 x i8], ptr %i.bae, i64 %i.bah
  %i.baj = load i64, ptr %i.bai, align 8, !tbaa !25
  %i.bak = and i32 %i.auu, 1
  %.not.i374.us = icmp ne i32 %i.bak, %i.kv
  %i.bal = sext i1 %.not.i374.us to i64
  %spec.select.i375.us = xor i64 %i.azy, %i.bal   ; 2 uses
  %i.bam = and i32 %i.aux, 1
  %.not38.i.us = icmp ne i32 %i.bam, %i.ky
  %i.ban = sext i1 %.not38.i.us to i64
  %.0.i376.us = xor i64 %i.baj, %i.ban            ; 2 uses
  %i.bao = lshr i32 %i.azf, 27                    ; 6 uses
  %i.bap = icmp ne i32 %i.bao, 0                  ; 3 uses
  %i.baq = icmp ne i32 %i.auv, 0
  %i.bar = and i1 %i.baq, %i.bap
  br i1 %i.bar, label %.lr.ph.preheader.i.i397.us, label %Abc_Tt6Expand.exit.i377.us

.lr.ph.preheader.i.i397.us:                       ; preds = %Nf_SetLastCutIsContained.exit373.us
  %i.bas = add nsw i32 %i.auv, -1
  %i.bat = zext nneg i32 %i.bao to i64
  br label %.lr.ph.i.i398.us

.lr.ph.i.i398.us:                                 ; preds = %bb.db, %.lr.ph.preheader.i.i397.us
  %indvars.iv.i.i399.us = phi i64 [ %i.bat, %.lr.ph.preheader.i.i397.us ], [ %indvars.iv.next.i.i402.us, %bb.db ] ; 2 uses
  %.020.i.i400.us = phi i32 [ %i.bas, %.lr.ph.preheader.i.i397.us ], [ %.1.i.i405.us, %bb.db ] ; 4 uses
  %.01619.i.i401.us = phi i64 [ %spec.select.i375.us, %.lr.ph.preheader.i.i397.us ], [ %.2.i.i404.us, %bb.db ] ; 5 uses
  %indvars.iv.next.i.i402.us = add nsw i64 %indvars.iv.i.i399.us, -1 ; 5 uses
  %i.bau = getelementptr inbounds nuw [4 x i8], ptr %i.avn, i64 %indvars.iv.next.i.i402.us
  %i.bav = load i32, ptr %i.bau, align 4, !tbaa !23
  %i.baw = zext nneg i32 %.020.i.i400.us to i64   ; 3 uses
  %i.bax = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %i.baw
  %i.bay = load i32, ptr %i.bax, align 4, !tbaa !23
  %i.baz = icmp sgt i32 %i.bav, %i.bay
  br i1 %i.baz, label %bb.db, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i.i398.us
  %i.bba = icmp samesign ugt i64 %indvars.iv.next.i.i402.us, %i.baw
  br i1 %i.bba, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.bbb = getelementptr inbounds nuw [144 x i8], ptr @s_PPMasks, i64 %i.baw
  %i.bbc = getelementptr inbounds nuw [24 x i8], ptr %i.bbb, i64 %indvars.iv.next.i.i402.us ; 3 uses
  %i.bbd = trunc nuw nsw i64 %indvars.iv.next.i.i402.us to i32
  %i.bbe = shl nuw nsw i32 1, %i.bbd
  %.neg.i.i.i406.us = shl nsw i32 -1, %.020.i.i400.us
  %i.bbf = add nsw i32 %i.bbe, %.neg.i.i.i406.us
  %i.bbg = load i64, ptr %i.bbc, align 8, !tbaa !25
  %i.bbh = and i64 %i.bbg, %.01619.i.i401.us
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbc, i64 8
  %i.bbj = load i64, ptr %i.bbi, align 8, !tbaa !25
  %i.bbk = and i64 %i.bbj, %.01619.i.i401.us
  %i.bbl = zext i32 %i.bbf to i64                 ; 2 uses
  %i.bbm = shl i64 %i.bbk, %i.bbl
  %i.bbn = or i64 %i.bbm, %i.bbh
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbc, i64 16
  %i.bbp = load i64, ptr %i.bbo, align 8, !tbaa !25
  %i.bbq = and i64 %i.bbp, %.01619.i.i401.us
  %i.bbr = lshr i64 %i.bbq, %i.bbl
end_hunk_1
