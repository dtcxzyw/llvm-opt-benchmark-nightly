Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilTruth?download=true
inline.NumInlined: 60
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 70
begin_hunk_0_@Extra_TruthCountOnesInCofs:bb.a
.lr.ph96:                                         ; preds = %.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 2 uses
  %i.aj = load <8 x i16>, ptr %2, align 2, !tbaa !201 ; 9 uses
  %.promoted111 = load i16, ptr %i.ah, align 2, !tbaa !201 ; 2 uses
  %.promoted113 = load i16, ptr %i.ai, align 2, !tbaa !201 ; 2 uses
  %i.ak = add nsw i32 %i.af, -1                   ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ak, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph96
  %n.vec = and i64 %i.am, 8589934588              ; 4 uses
  %i.an = trunc i64 %n.vec to i32
  %i.ao = shl nuw nsw i64 %n.vec, 3
  %i.ap = getelementptr i8, ptr %0, i64 %i.ao
  %i.aq = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.promoted113, i64 0
  %i.ar = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.promoted111, i64 0
  %i.as = shufflevector <8 x i16> %i.aj, <8 x i16> poison, <4 x i32> <i32 7, i32 poison, i32 poison, i32 poison>
  %i.at = shufflevector <4 x i16> %i.as, <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.au = shufflevector <8 x i16> %i.aj, <8 x i16> poison, <4 x i32> <i32 6, i32 poison, i32 poison, i32 poison>
  %i.av = shufflevector <4 x i16> %i.au, <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.aw = shufflevector <8 x i16> %i.aj, <8 x i16> poison, <4 x i32> <i32 5, i32 poison, i32 poison, i32 poison>
  %i.ax = shufflevector <4 x i16> %i.aw, <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ay = shufflevector <8 x i16> %i.aj, <8 x i16> poison, <4 x i32> <i32 4, i32 poison, i32 poison, i32 poison>
  %i.az = shufflevector <4 x i16> %i.ay, <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ba = shufflevector <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aj, <4 x i32> <i32 11, i32 1, i32 2, i32 3>
  %i.bb = shufflevector <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aj, <4 x i32> <i32 10, i32 1, i32 2, i32 3>
  %i.bc = shufflevector <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aj, <4 x i32> <i32 9, i32 1, i32 2, i32 3>
  %i.bd = shufflevector <8 x i16> %i.aj, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.be = shufflevector <4 x i16> %i.bd, <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i16> [ %i.aq, %vector.ph ], [ %i.dv, %vector.body ]
  %vec.phi152 = phi <4 x i16> [ %i.ar, %vector.ph ], [ %i.dp, %vector.body ]
  %vec.phi153 = phi <4 x i16> [ %i.at, %vector.ph ], [ %i.dj, %vector.body ]
  %vec.phi154 = phi <4 x i16> [ %i.av, %vector.ph ], [ %i.dc, %vector.body ]
  %vec.phi155 = phi <4 x i16> [ %i.ax, %vector.ph ], [ %i.cv, %vector.body ]
  %vec.phi156 = phi <4 x i16> [ %i.az, %vector.ph ], [ %i.co, %vector.body ]
  %vec.phi157 = phi <4 x i16> [ %i.ba, %vector.ph ], [ %i.ch, %vector.body ]
  %vec.phi158 = phi <4 x i16> [ %i.bb, %vector.ph ], [ %i.ca, %vector.body ]
  %vec.phi159 = phi <4 x i16> [ %i.bc, %vector.ph ], [ %i.bt, %vector.body ]
  %vec.phi160 = phi <4 x i16> [ %i.be, %vector.ph ], [ %i.bm, %vector.body ]
  %i.bf = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.bf
  %wide.vec = load <8 x i32>, ptr %next.gep, align 4, !tbaa !8 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 10 uses
  %strided.vec161 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 10 uses
  %i.bg = and <4 x i32> %strided.vec, splat (i32 1431655765)
  %i.bh = shl <4 x i32> %strided.vec161, splat (i32 1)
  %i.bi = and <4 x i32> %i.bh, splat (i32 -1431655766)
  %i.bj = or disjoint <4 x i32> %i.bi, %i.bg
  %i.bk = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.bj)
  %i.bl = trunc nuw nsw <4 x i32> %i.bk to <4 x i16>
  %i.bm = add <4 x i16> %vec.phi160, %i.bl        ; 2 uses
  %i.bn = and <4 x i32> %strided.vec, splat (i32 -1431655766)
  %i.bo = lshr <4 x i32> %strided.vec161, splat (i32 1)
  %i.bp = and <4 x i32> %i.bo, splat (i32 1431655765)
  %i.bq = or disjoint <4 x i32> %i.bp, %i.bn
  %i.br = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.bq)
  %i.bs = trunc nuw nsw <4 x i32> %i.br to <4 x i16>
  %i.bt = add <4 x i16> %vec.phi159, %i.bs        ; 2 uses
  %i.bu = and <4 x i32> %strided.vec, splat (i32 858993459)
  %i.bv = shl <4 x i32> %strided.vec161, splat (i32 2)
  %i.bw = and <4 x i32> %i.bv, splat (i32 -858993460)
  %i.bx = or disjoint <4 x i32> %i.bw, %i.bu
  %i.by = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.bx)
  %i.bz = trunc nuw nsw <4 x i32> %i.by to <4 x i16>
  %i.ca = add <4 x i16> %vec.phi158, %i.bz        ; 2 uses
  %i.cb = and <4 x i32> %strided.vec, splat (i32 -858993460)
  %i.cc = lshr <4 x i32> %strided.vec161, splat (i32 2)
  %i.cd = and <4 x i32> %i.cc, splat (i32 858993459)
  %i.ce = or disjoint <4 x i32> %i.cd, %i.cb
  %i.cf = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.ce)
  %i.cg = trunc nuw nsw <4 x i32> %i.cf to <4 x i16>
  %i.ch = add <4 x i16> %vec.phi157, %i.cg        ; 2 uses
  %i.ci = and <4 x i32> %strided.vec, splat (i32 252645135)
  %i.cj = shl <4 x i32> %strided.vec161, splat (i32 4)
  %i.ck = and <4 x i32> %i.cj, splat (i32 -252645136)
  %i.cl = or disjoint <4 x i32> %i.ck, %i.ci
  %i.cm = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.cl)
  %i.cn = trunc nuw nsw <4 x i32> %i.cm to <4 x i16>
  %i.co = add <4 x i16> %vec.phi156, %i.cn        ; 2 uses
  %i.cp = and <4 x i32> %strided.vec, splat (i32 -252645136)
  %i.cq = lshr <4 x i32> %strided.vec161, splat (i32 4)
  %i.cr = and <4 x i32> %i.cq, splat (i32 252645135)
  %i.cs = or disjoint <4 x i32> %i.cr, %i.cp
  %i.ct = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.cs)
  %i.cu = trunc nuw nsw <4 x i32> %i.ct to <4 x i16>
  %i.cv = add <4 x i16> %vec.phi155, %i.cu        ; 2 uses
  %i.cw = and <4 x i32> %strided.vec, splat (i32 16711935)
  %i.cx = shl <4 x i32> %strided.vec161, splat (i32 8)
  %i.cy = and <4 x i32> %i.cx, splat (i32 -16711936)
  %i.cz = or disjoint <4 x i32> %i.cy, %i.cw
  %i.da = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.cz)
  %i.db = trunc nuw nsw <4 x i32> %i.da to <4 x i16>
  %i.dc = add <4 x i16> %vec.phi154, %i.db        ; 2 uses
  %i.dd = and <4 x i32> %strided.vec, splat (i32 -16711936)
  %i.de = lshr <4 x i32> %strided.vec161, splat (i32 8)
  %i.df = and <4 x i32> %i.de, splat (i32 16711935)
  %i.dg = or disjoint <4 x i32> %i.df, %i.dd
  %i.dh = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.dg)
  %i.di = trunc nuw nsw <4 x i32> %i.dh to <4 x i16>
  %i.dj = add <4 x i16> %vec.phi153, %i.di        ; 2 uses
  %i.dk = and <4 x i32> %strided.vec, splat (i32 65535)
  %i.dl = shl <4 x i32> %strided.vec161, splat (i32 16)
  %i.dm = or disjoint <4 x i32> %i.dl, %i.dk
  %i.dn = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.dm)
  %i.do = trunc nuw nsw <4 x i32> %i.dn to <4 x i16>
  %i.dp = add <4 x i16> %vec.phi152, %i.do        ; 2 uses
  %i.dq = and <4 x i32> %strided.vec, splat (i32 -65536)
  %i.dr = lshr <4 x i32> %strided.vec161, splat (i32 16)
  %i.ds = or disjoint <4 x i32> %i.dr, %i.dq
  %i.dt = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %i.ds)
  %i.du = trunc nuw nsw <4 x i32> %i.dt to <4 x i16>
  %i.dv = add <4 x i16> %vec.phi, %i.du           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  %i.dx = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.dv) ; 2 uses
  %i.dy = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.dp) ; 2 uses
  %i.dz = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.dj)
  %i.ea = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.dc)
  %i.eb = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.cv)
  %i.ec = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.co)
  %i.ed = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ch)
  %i.ee = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ca)
  %i.ef = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.bt)
  %i.eg = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.bm)
  %cmp.n = icmp eq i64 %i.am, %n.vec
  %i.eh = insertelement <8 x i16> poison, i16 %i.eg, i64 0
  %i.ei = insertelement <8 x i16> %i.eh, i16 %i.ef, i64 1
  %i.ej = insertelement <8 x i16> %i.ei, i16 %i.ee, i64 2
  %i.ek = insertelement <8 x i16> %i.ej, i16 %i.ed, i64 3
  %i.el = insertelement <8 x i16> %i.ek, i16 %i.ec, i64 4
  %i.em = insertelement <8 x i16> %i.el, i16 %i.eb, i64 5
  %i.en = insertelement <8 x i16> %i.em, i16 %i.ea, i64 6
  %i.eo = insertelement <8 x i16> %i.en, i16 %i.dz, i64 7 ; 2 uses
  br i1 %cmp.n, label %..thread87.loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph96, %middle.block
  %.ph = phi i16 [ %.promoted113, %.lr.ph96 ], [ %i.dx, %middle.block ]
  %.ph172 = phi i16 [ %.promoted111, %.lr.ph96 ], [ %i.dy, %middle.block ]
  %.195.ph = phi i32 [ 0, %.lr.ph96 ], [ %i.an, %middle.block ]
  %.07994.ph = phi ptr [ %0, %.lr.ph96 ], [ %i.ap, %middle.block ]
  %.ph173 = phi <8 x i16> [ %i.aj, %.lr.ph96 ], [ %i.eo, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv125 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next126, %._crit_edge ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv125
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !8
  %i.er = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.eq)
  %i.es = trunc nuw nsw i32 %i.er to i16          ; 2 uses
  %i.et = trunc nuw nsw i64 %indvars.iv125 to i32
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 5, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.eu = trunc i64 %indvars.iv to i32
  %i.ev = add i32 %i.eu, -5
  %i.ew = shl nuw i32 1, %i.ev
  %i.ex = and i32 %i.ew, %i.et
  %.not = icmp eq i32 %i.ex, 0
  %.idx132 = shl nuw nsw i64 %indvars.iv, 2
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 %.idx132 ; 3 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2 ; 2 uses
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !201
  %i.fb = add i16 %i.fa, %i.es
  store i16 %i.fb, ptr %i.ez, align 2, !tbaa !201
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.fc = load i16, ptr %i.ey, align 2, !tbaa !201
  %i.fd = add i16 %i.fc, %i.es
  store i16 %i.fd, ptr %i.ey, align 2, !tbaa !201
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !204

._crit_edge:                                      ; preds = %bb.k
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %.preheader, label %.lr.ph, !llvm.loop !205

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.fe = phi i16 [ %i.gc, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.ff = phi i16 [ %i.fw, %scalar.ph ], [ %.ph172, %scalar.ph.preheader ]
  %.195 = phi i32 [ %i.ge, %scalar.ph ], [ %.195.ph, %scalar.ph.preheader ]
  %.07994 = phi ptr [ %i.gd, %scalar.ph ], [ %.07994.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fg = phi <8 x i16> [ %i.fq, %scalar.ph ], [ %.ph173, %scalar.ph.preheader ]
  %3 = load i32, ptr %.07994, align 4, !tbaa !8   ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %.07994, i64 4
  %5 = load i32, ptr %4, align 4, !tbaa !8        ; 3 uses
  %6 = insertelement <4 x i32> poison, i32 %5, i64 0
  %7 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fh = shl <4 x i32> %7, <i32 1, i32 2, i32 4, i32 8>
  %8 = insertelement <8 x i32> poison, i32 %3, i64 0
  %i.fi = shufflevector <8 x i32> %8, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.fj = and <8 x i32> %i.fi, <i32 1431655765, i32 -1431655766, i32 858993459, i32 -858993460, i32 252645135, i32 -252645136, i32 16711935, i32 -16711936>
  %i.fk = lshr <4 x i32> %7, <i32 1, i32 2, i32 4, i32 8>
  %i.fl = shufflevector <4 x i32> %i.fh, <4 x i32> %i.fk, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.fm = and <8 x i32> %i.fl, <i32 -1431655766, i32 1431655765, i32 -858993460, i32 858993459, i32 -252645136, i32 252645135, i32 -16711936, i32 16711935>
  %i.fn = or disjoint <8 x i32> %i.fm, %i.fj
  %i.fo = tail call range(i32 0, 33) <8 x i32> @llvm.ctpop.v8i32(<8 x i32> %i.fn)
  %i.fp = trunc nuw nsw <8 x i32> %i.fo to <8 x i16>
  %i.fq = add <8 x i16> %i.fg, %i.fp              ; 2 uses
  %i.fr = and i32 %3, 65535
  %i.fs = shl i32 %5, 16
  %i.ft = or disjoint i32 %i.fs, %i.fr
  %i.fu = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ft)
  %i.fv = trunc nuw nsw i32 %i.fu to i16
  %i.fw = add i16 %i.ff, %i.fv                    ; 2 uses
  %i.fx = and i32 %3, -65536
  %i.fy = lshr i32 %5, 16
  %i.fz = or disjoint i32 %i.fy, %i.fx
  %i.ga = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.fz)
  %i.gb = trunc nuw nsw i32 %i.ga to i16
  %i.gc = add i16 %i.fe, %i.gb                    ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.07994, i64 8
  %i.ge = add nuw nsw i32 %.195, 1                ; 2 uses
  %exitcond130.not = icmp eq i32 %i.ge, %i.af
  br i1 %exitcond130.not, label %..thread87.loopexit_crit_edge, label %scalar.ph, !llvm.loop !206

..thread87.loopexit_crit_edge:                    ; preds = %scalar.ph, %middle.block
  %.lcssa143 = phi i16 [ %i.dy, %middle.block ], [ %i.fw, %scalar.ph ]
  %.lcssa = phi i16 [ %i.dx, %middle.block ], [ %i.gc, %scalar.ph ]
  %i.gf = phi <8 x i16> [ %i.eo, %middle.block ], [ %i.fq, %scalar.ph ]
  store <8 x i16> %i.gf, ptr %2, align 2, !tbaa !201
  store i16 %.lcssa143, ptr %i.ah, align 2, !tbaa !201
  store i16 %.lcssa, ptr %i.ai, align 2, !tbaa !201
  br label %.thread87

.thread87:                                        ; preds = %.preheader90, %.preheader, %..thread87.loopexit_crit_edge, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @Extra_TruthHash(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi11 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @Extra_TruthHash.HashPrimes, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x i32>, ptr %i.b, align 16, !tbaa !8
  %wide.load12 = load <4 x i32>, ptr %i.c, align 16, !tbaa !8
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load13 = load <4 x i32>, ptr %i.d, align 4, !tbaa !8
  %wide.load14 = load <4 x i32>, ptr %i.e, align 4, !tbaa !8
  %i.f = mul <4 x i32> %wide.load13, %wide.load
  %i.g = mul <4 x i32> %wide.load14, %wide.load12
  %i.h = xor <4 x i32> %i.f, %vec.phi             ; 2 uses
  %i.i = xor <4 x i32> %i.g, %vec.phi11           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.i, %i.h
  %i.k = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader15

.lr.ph.preheader15:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.09.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader15, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader15 ] ; 3 uses
  %.09 = phi i32 [ %i.q, %.lr.ph ], [ %.09.ph, %.lr.ph.preheader15 ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @Extra_TruthHash.HashPrimes, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !8
  %i.p = mul i32 %i.o, %i.m
  %i.q = xor i32 %i.p, %.09                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !208

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.k, %middle.block ], [ %i.q, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Extra_TruthSemiCanonicize(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %2, 6
  %i.b = add nsw i32 %2, -5
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 14 uses
  %i.e = icmp slt i32 %i.d, 1                     ; 6 uses
  br i1 %i.e, label %Extra_TruthCountOnes.exit, label %select.unfold.preheader.i

select.unfold.preheader.i:                        ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64                ; 3 uses
  %min.iters.check = icmp ult i32 %i.d, 8
  br i1 %min.iters.check, label %select.unfold.i, label %vector.ph

vector.ph:                                        ; preds = %select.unfold.preheader.i
  %n.vec = and i64 %i.f, 2147483640
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi166 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %i.g = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.g ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.i = getelementptr inbounds i8, ptr %gep, i64 -28
  %wide.load = load <4 x i32>, ptr %i.h, align 4, !tbaa !8
  %wide.load167 = load <4 x i32>, ptr %i.i, align 4, !tbaa !8
  %i.j = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load)
  %i.k = shufflevector <4 x i32> %i.j, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.l = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load167)
  %i.m = shufflevector <4 x i32> %i.l, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.n = add <4 x i32> %i.k, %vec.phi             ; 2 uses
  %i.o = add <4 x i32> %i.m, %vec.phi166          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.o, %i.n
  %i.q = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %Extra_TruthCountOnes.exit

select.unfold.i:                                  ; preds = %select.unfold.preheader.i, %select.unfold.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %select.unfold.i ], [ %i.f, %select.unfold.preheader.i ] ; 2 uses
  %.08.i = phi i32 [ %i.u, %select.unfold.i ], [ 0, %select.unfold.preheader.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8
  %i.t = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.s)
  %i.u = add nuw nsw i32 %i.t, %.08.i             ; 2 uses
  %i.v = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.v, label %select.unfold.i, label %Extra_TruthCountOnes.exit, !llvm.loop !210

Extra_TruthCountOnes.exit:                        ; preds = %select.unfold.i, %middle.block, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.q, %middle.block ], [ %i.u, %select.unfold.i ] ; 2 uses
  %i.w = shl nsw i32 %i.d, 4                      ; 2 uses
  %i.x = icmp sgt i32 %.0.lcssa.i, %i.w
  br i1 %i.x, label %bb.d, label %bb.b

bb.b:                                             ; preds = %Extra_TruthCountOnes.exit
  %i.y = icmp eq i32 %.0.lcssa.i, %i.w
  br i1 %i.y, label %bb.c, label %Extra_TruthNot.exit

bb.c:                                             ; preds = %bb.b
  %i.z = load i32, ptr %0, align 4, !tbaa !8
  %i.aa = and i32 %i.z, 1
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %Extra_TruthNot.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %Extra_TruthCountOnes.exit
  %i.ab = shl nuw i32 1, %2                       ; 3 uses
  br i1 %i.e, label %Extra_TruthNot.exit, label %select.unfold.preheader.i108

select.unfold.preheader.i108:                     ; preds = %bb.d
  %i.ac = zext nneg i32 %i.d to i64               ; 3 uses
  %min.iters.check170 = icmp ult i32 %i.d, 8
  br i1 %min.iters.check170, label %select.unfold.i109, label %vector.ph171

vector.ph171:                                     ; preds = %select.unfold.preheader.i108
  %n.vec172 = and i64 %i.ac, 2147483640
  %invariant.gep356 = getelementptr [4 x i8], ptr %0, i64 %i.ac
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next177, %vector.body173 ] ; 2 uses
  %i.ad = xor i64 %index174, -1
  %gep357 = getelementptr [4 x i8], ptr %invariant.gep356, i64 %i.ad ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %gep357, i64 -12 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %gep357, i64 -28 ; 2 uses
  %wide.load175 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !8
  %wide.load176 = load <4 x i32>, ptr %i.af, align 4, !tbaa !8
  %i.ag = xor <4 x i32> %wide.load175, splat (i32 -1)
  %i.ah = xor <4 x i32> %wide.load176, splat (i32 -1)
  store <4 x i32> %i.ag, ptr %i.ae, align 4, !tbaa !8
  store <4 x i32> %i.ah, ptr %i.af, align 4, !tbaa !8
  %index.next177 = add nuw i64 %index174, 8       ; 2 uses
  %i.ai = icmp eq i64 %index.next177, %n.vec172
  br i1 %i.ai, label %Extra_TruthNot.exit, label %vector.body173, !llvm.loop !211

select.unfold.i109:                               ; preds = %select.unfold.preheader.i108, %select.unfold.i109
  %indvars.iv.i110 = phi i64 [ %indvars.iv.next.i111, %select.unfold.i109 ], [ %i.ac, %select.unfold.preheader.i108 ] ; 2 uses
  %indvars.iv.next.i111 = add nsw i64 %indvars.iv.i110, -1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i111 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !8
  %i.al = xor i32 %i.ak, -1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !8
  %i.am = icmp samesign ugt i64 %indvars.iv.i110, 1
  br i1 %i.am, label %select.unfold.i109, label %Extra_TruthNot.exit, !llvm.loop !212
end_hunk_0
