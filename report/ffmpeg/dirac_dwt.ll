Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dirac_dwt?download=true
inline.NumInlined: 15
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 63
begin_hunk_0_@vertical_compose_fidelityiH0_8bit:bb.a
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !48
  %i.bj = sext i16 %i.bi to i32
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !48
  %i.bm = sext i16 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, %i.bj
  %i.bo = mul nsw i32 %i.bn, 10
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !48
  %i.br = sext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !48
  %i.bu = sext i16 %i.bt to i32
  %i.bv = add nsw i32 %i.bu, %i.br
  %.neg = mul i32 %i.bv, 16777191
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !48
  %i.by = sext i16 %i.bx to i32
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !48
  %i.cb = sext i16 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, %i.by
  %i.cd = mul nsw i32 %i.cc, 81
  %i.ce = shl nsw i32 %i.bg, 1
  %reass.sub = sub nsw i32 %i.bo, %i.ce
  %i.cf = add nsw i32 %reass.sub, 128
  %i.cg = add i32 %i.cf, %.neg
  %i.ch = add i32 %i.cg, %i.cd
  %i.ci = lshr i32 %i.ch, 8
  %i.cj = trunc i32 %i.ci to i16
  %i.ck = add i16 %i.az, %i.cj
  store i16 %i.ck, ptr %i.ay, align 2, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !232

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @horizontal_compose_fidelityi_8bit(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = ashr i32 %2, 1                           ; 16 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.preheader48.lr.ph, label %interleave_8bit.exit

.preheader48.lr.ph:                               ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -1                     ; 20 uses
  %i.d = zext nneg i32 %i.a to i64                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 4 uses
  %i.e = load i16, ptr %0, align 2, !tbaa !48     ; 2 uses
  %i.f = icmp ne i32 %i.c, 0
  %i.g = zext i1 %i.f to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !48
  %i.j = tail call i32 @llvm.umin.i32(i32 %i.c, i32 2)
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !48
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.c, i32 3)
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !48
  %i.r = tail call i32 @llvm.umin.i32(i32 %i.c, i32 4)
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !48
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.d
  %i.w = load i16, ptr %i.v, align 2, !tbaa !48
  %i.x = sext i16 %i.e to i32                     ; 3 uses
  %i.y = sext i16 %i.u to i32
  %i.z = add nsw i32 %i.y, %i.x
  %i.aa = sext i16 %i.q to i32
  %i.ab = add nsw i32 %i.aa, %i.x
  %i.ac = mul nsw i32 %i.ab, 10
  %i.ad = sext i16 %i.m to i32
  %i.ae = add nsw i32 %i.ad, %i.x
  %.neg41.peel = mul i32 %i.ae, 16777191
  %i.af = sext i16 %i.e to i32
  %i.ag = sext i16 %i.i to i32
  %i.ah = add nsw i32 %i.ag, %i.af
  %i.ai = mul nsw i32 %i.ah, 81
  %i.aj = shl nsw i32 %i.z, 1
  %reass.sub.peel = sub nsw i32 %i.ac, %i.aj
  %i.ak = add nsw i32 %reass.sub.peel, 128
  %i.al = add i32 %i.ak, %.neg41.peel
  %i.am = add i32 %i.al, %i.ai
  %i.an = lshr i32 %i.am, 8
  %i.ao = trunc i32 %i.an to i16
  %i.ap = add i16 %i.w, %i.ao
  store i16 %i.ap, ptr %1, align 2, !tbaa !48
  %exitcond.peel.not = icmp eq i32 %i.a, 1
  br i1 %exitcond.peel.not, label %.preheader.lr.ph, label %.preheader48.peel.next

.preheader48.peel.next:                           ; preds = %.preheader48.lr.ph
  %i.aq = load i16, ptr %0, align 2, !tbaa !48    ; 2 uses
  %i.ar = load i16, ptr %i.h, align 2, !tbaa !48
  %i.as = load i16, ptr %i.l, align 2, !tbaa !48
  %i.at = load i16, ptr %i.p, align 2, !tbaa !48
  %i.au = load i16, ptr %i.t, align 2, !tbaa !48
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.c, i32 5)
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !48
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !48
  %i.bc = sext i16 %i.aq to i32                   ; 2 uses
  %i.bd = sext i16 %i.ay to i32
  %i.be = add nsw i32 %i.bd, %i.bc
  %i.bf = sext i16 %i.au to i32
  %i.bg = add nsw i32 %i.bf, %i.bc
  %i.bh = mul nsw i32 %i.bg, 10
  %i.bi = sext i16 %i.aq to i32
  %i.bj = sext i16 %i.at to i32
  %i.bk = add nsw i32 %i.bj, %i.bi
  %.neg41.peel78 = mul i32 %i.bk, 16777191
  %i.bl = sext i16 %i.ar to i32
  %i.bm = sext i16 %i.as to i32
  %i.bn = add nsw i32 %i.bm, %i.bl
  %i.bo = mul nsw i32 %i.bn, 81
  %i.bp = shl nsw i32 %i.be, 1
  %reass.sub.peel79 = sub nsw i32 %i.bh, %i.bp
  %i.bq = add nsw i32 %reass.sub.peel79, 128
  %i.br = add i32 %i.bq, %.neg41.peel78
  %i.bs = add i32 %i.br, %i.bo
  %i.bt = lshr i32 %i.bs, 8
  %i.bu = trunc i32 %i.bt to i16
  %i.bv = add i16 %i.bb, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !48
  %exitcond.peel81.not = icmp eq i32 %i.a, 2
  br i1 %exitcond.peel81.not, label %.preheader.lr.ph, label %.preheader48.peel.next60

.preheader48.peel.next60:                         ; preds = %.preheader48.peel.next
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.bx = load i16, ptr %0, align 2, !tbaa !48
  %..i42.1.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 0)
  %i.by = sext i32 %..i42.1.peel to i64
  %i.bz = getelementptr inbounds [2 x i8], ptr %0, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !48
  %..i42.2.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 1)
  %i.cb = sext i32 %..i42.2.peel to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !48
  %..i42.3.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 2)
  %i.ce = sext i32 %..i42.3.peel to i64
  %i.cf = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !48
  %..i42.4.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 3)
  %i.ch = sext i32 %..i42.4.peel to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !48
  %..i42.5.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 4)
  %i.ck = sext i32 %..i42.5.peel to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !48
  %..i42.6.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 5)
  %i.cn = sext i32 %..i42.6.peel to i64
  %i.co = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !48
  %..i42.7.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 6)
  %i.cq = sext i32 %..i42.7.peel to i64
  %i.cr = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !48
  %gep.peel = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.ct = load i16, ptr %gep.peel, align 2, !tbaa !48
  %i.cu = sext i16 %i.bx to i32
  %i.cv = sext i16 %i.cs to i32
  %i.cw = add nsw i32 %i.cv, %i.cu
  %i.cx = sext i16 %i.ca to i32
  %i.cy = sext i16 %i.cp to i32
  %i.cz = add nsw i32 %i.cy, %i.cx
  %i.da = mul nsw i32 %i.cz, 10
  %i.db = sext i16 %i.cd to i32
  %i.dc = sext i16 %i.cm to i32
  %i.dd = add nsw i32 %i.dc, %i.db
  %.neg41.peel173 = mul i32 %i.dd, 16777191
  %i.de = sext i16 %i.cg to i32
  %i.df = sext i16 %i.cj to i32
  %i.dg = add nsw i32 %i.df, %i.de
  %i.dh = mul nsw i32 %i.dg, 81
  %i.di = shl nsw i32 %i.cw, 1
  %reass.sub.peel174 = sub nsw i32 %i.da, %i.di
  %i.dj = add nsw i32 %reass.sub.peel174, 128
  %i.dk = add i32 %i.dj, %.neg41.peel173
  %i.dl = add i32 %i.dk, %i.dh
  %i.dm = lshr i32 %i.dl, 8
  %i.dn = trunc i32 %i.dm to i16
  %i.do = add i16 %i.ct, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !48
  %exitcond.not.peel = icmp eq i32 %i.a, 3
  br i1 %exitcond.not.peel, label %.preheader.lr.ph, label %.preheader48

.preheader48:                                     ; preds = %.preheader48.peel.next60, %.preheader48
  %indvars.iv = phi i64 [ %i.ej, %.preheader48 ], [ 3, %.preheader48.peel.next60 ] ; 10 uses
  %i.dq = trunc i64 %indvars.iv to i32
  %i.dr = add i32 %i.dq, -3
  %..i42 = tail call i32 @llvm.smin.i32(i32 %i.dr, i32 %i.c)
  %i.ds = sext i32 %..i42 to i64
  %i.dt = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !48
  %i.dv = trunc i64 %indvars.iv to i32
  %i.dw = add i32 %i.dv, -2
  %..i42.1 = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.c)
  %i.dx = sext i32 %..i42.1 to i64
  %i.dy = getelementptr inbounds [2 x i8], ptr %0, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !48
  %i.ea = trunc i64 %indvars.iv to i32
  %i.eb = add i32 %i.ea, -1
  %..i42.2 = tail call i32 @llvm.smin.i32(i32 %i.eb, i32 %i.c)
  %i.ec = sext i32 %..i42.2 to i64
  %i.ed = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !48
  %i.ef = trunc nsw i64 %indvars.iv to i32
  %..i42.3 = tail call i32 @llvm.smin.i32(i32 %i.ef, i32 %i.c)
  %i.eg = sext i32 %..i42.3 to i64
  %i.eh = getelementptr inbounds [2 x i8], ptr %0, i64 %i.eg
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !48
  %i.ej = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.ek = trunc nsw i64 %i.ej to i32
  %..i42.4 = tail call i32 @llvm.smin.i32(i32 %i.ek, i32 %i.c)
  %i.el = sext i32 %..i42.4 to i64
  %i.em = getelementptr inbounds [2 x i8], ptr %0, i64 %i.el
  %i.en = load i16, ptr %i.em, align 2, !tbaa !48
  %i.eo = trunc i64 %indvars.iv to i32
  %i.ep = add i32 %i.eo, 2
  %..i42.5 = tail call i32 @llvm.smin.i32(i32 %i.ep, i32 %i.c)
  %i.eq = sext i32 %..i42.5 to i64
  %i.er = getelementptr inbounds [2 x i8], ptr %0, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2, !tbaa !48
  %i.et = trunc i64 %indvars.iv to i32
  %i.eu = add i32 %i.et, 3
  %..i42.6 = tail call i32 @llvm.smin.i32(i32 %i.eu, i32 %i.c)
  %i.ev = sext i32 %..i42.6 to i64
  %i.ew = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !48
  %i.ey = trunc i64 %indvars.iv to i32
  %i.ez = add i32 %i.ey, 4
  %..i42.7 = tail call i32 @llvm.smin.i32(i32 %i.ez, i32 %i.c)
  %i.fa = sext i32 %..i42.7 to i64
  %i.fb = getelementptr inbounds [2 x i8], ptr %0, i64 %i.fa
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !48
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fd = load i16, ptr %gep, align 2, !tbaa !48
  %i.fe = sext i16 %i.du to i32
  %i.ff = sext i16 %i.fc to i32
  %i.fg = add nsw i32 %i.ff, %i.fe
  %i.fh = sext i16 %i.dz to i32
  %i.fi = sext i16 %i.ex to i32
  %i.fj = add nsw i32 %i.fi, %i.fh
  %i.fk = mul nsw i32 %i.fj, 10
  %i.fl = sext i16 %i.ee to i32
  %i.fm = sext i16 %i.es to i32
  %i.fn = add nsw i32 %i.fm, %i.fl
  %.neg41 = mul i32 %i.fn, 16777191
  %i.fo = sext i16 %i.ei to i32
  %i.fp = sext i16 %i.en to i32
  %i.fq = add nsw i32 %i.fp, %i.fo
  %i.fr = mul nsw i32 %i.fq, 81
  %i.fs = shl nsw i32 %i.fg, 1
  %reass.sub = sub nsw i32 %i.fk, %i.fs
  %i.ft = add nsw i32 %reass.sub, 128
  %i.fu = add i32 %i.ft, %.neg41
  %i.fv = add i32 %i.fu, %i.fr
  %i.fw = lshr i32 %i.fv, 8
  %i.fx = trunc i32 %i.fw to i16
  %i.fy = add i16 %i.fd, %i.fx
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !48
  %exitcond.not = icmp eq i64 %i.ej, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.lr.ph, label %.preheader48, !llvm.loop !233

.preheader.lr.ph:                                 ; preds = %.preheader48.peel.next60, %.preheader48, %.preheader48.lr.ph, %.preheader48.peel.next
  %i.ga = add nsw i32 %i.a, -1                    ; 25 uses
  %i.gb = zext nneg i32 %i.a to i64               ; 6 uses
  %wide.trip.count90 = zext nneg i32 %i.a to i64
  %i.gc = load i16, ptr %1, align 2, !tbaa !48    ; 2 uses
  %i.gd = icmp ne i32 %i.ga, 0
  %i.ge = zext i1 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ge ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !48
  %i.gh = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 2)
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.gi ; 2 uses
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !48
  %i.gl = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 3)
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.gm ; 2 uses
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !48
  %i.gp = load i16, ptr %0, align 2, !tbaa !48
  %i.gq = sext i16 %i.gc to i32                   ; 7 uses
  %i.gr = sext i16 %i.go to i32
  %i.gs = add nsw i32 %i.gr, %i.gq
  %i.gt = sext i16 %i.gk to i32
  %i.gu = add nsw i32 %i.gt, %i.gq
  %i.gv = mul nsw i32 %i.gu, 21
  %i.gw = sext i16 %i.gg to i32
  %i.gx = add nsw i32 %i.gw, %i.gq
  %.neg.peel = mul i32 %i.gx, 16777170
  %i.gy = sext i16 %i.gc to i32
  %i.gz = add nsw i32 %i.gy, %i.gq
  %i.ha = mul nsw i32 %i.gz, 161
  %i.hb = shl nsw i32 %i.gs, 3
  %reass.sub57.peel = sub nsw i32 %i.gv, %i.hb
  %i.hc = add nsw i32 %reass.sub57.peel, 128
  %i.hd = add i32 %i.hc, %.neg.peel
  %i.he = add i32 %i.hd, %i.ha
  %i.hf = lshr i32 %i.he, 8
  %i.hg = trunc i32 %i.hf to i16
  %i.hh = sub i16 %i.gp, %i.hg
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.gb
  store i16 %i.hh, ptr %i.hi, align 2, !tbaa !48
  %exitcond91.peel.not = icmp eq i32 %i.a, 1
  br i1 %exitcond91.peel.not, label %.lr.ph.preheader, label %.preheader.peel.next

.preheader.peel.next:                             ; preds = %.preheader.lr.ph
  %i.hj = load i16, ptr %1, align 2, !tbaa !48
  %i.hk = load i16, ptr %i.gf, align 2, !tbaa !48
  %i.hl = load i16, ptr %i.gj, align 2, !tbaa !48
  %i.hm = load i16, ptr %i.gn, align 2, !tbaa !48
  %i.hn = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 4)
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ho
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !48
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !48
  %i.ht = sext i16 %i.hq to i32
  %i.hu = add nsw i32 %i.ht, %i.gq
  %i.hv = sext i16 %i.hm to i32
  %i.hw = add nsw i32 %i.hv, %i.gq
  %i.hx = mul nsw i32 %i.hw, 21
  %i.hy = sext i16 %i.hl to i32
  %i.hz = add nsw i32 %i.hy, %i.gq
  %.neg.peel110 = mul i32 %i.hz, 16777170
  %i.ia = sext i16 %i.hj to i32
  %i.ib = sext i16 %i.hk to i32
  %i.ic = add nsw i32 %i.ib, %i.ia
  %i.id = mul nsw i32 %i.ic, 161
  %i.ie = shl nsw i32 %i.hu, 3
  %reass.sub57.peel111 = sub nsw i32 %i.hx, %i.ie
  %i.if = add nsw i32 %reass.sub57.peel111, 128
  %i.ig = add i32 %i.if, %.neg.peel110
  %i.ih = add i32 %i.ig, %i.id
  %i.ii = lshr i32 %i.ih, 8
  %i.ij = trunc i32 %i.ii to i16
  %i.ik = sub i16 %i.hs, %i.ij
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.gb
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  store i16 %i.ik, ptr %i.im, align 2, !tbaa !48
  %exitcond91.peel113.not = icmp eq i32 %i.a, 2
  br i1 %exitcond91.peel113.not, label %.lr.ph.preheader, label %.preheader.peel.next92

.preheader.peel.next92:                           ; preds = %.preheader.peel.next
  %invariant.gep161 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.gb ; 3 uses
  %i.in = load i16, ptr %1, align 2, !tbaa !48    ; 2 uses
  %..i.2.peel = tail call i32 @llvm.smin.i32(i32 %i.ga, i32 0)
  %i.io = sext i32 %..i.2.peel to i64
  %i.ip = getelementptr inbounds [2 x i8], ptr %1, i64 %i.io
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !48
  %..i.3.peel = tail call i32 @llvm.smin.i32(i32 %i.ga, i32 1)
  %i.ir = sext i32 %..i.3.peel to i64
  %i.is = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ir
  %i.it = load i16, ptr %i.is, align 2, !tbaa !48
  %..i.4.peel = tail call i32 @llvm.smin.i32(i32 %i.ga, i32 2)
  %i.iu = sext i32 %..i.4.peel to i64
  %i.iv = getelementptr inbounds [2 x i8], ptr %1, i64 %i.iu
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !48
  %..i.5.peel = tail call i32 @llvm.smin.i32(i32 %i.ga, i32 3)
  %i.ix = sext i32 %..i.5.peel to i64
  %i.iy = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ix
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !48
  %..i.6.peel = tail call i32 @llvm.smin.i32(i32 %i.ga, i32 4)
  %i.ja = sext i32 %..i.6.peel to i64
  %i.jb = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !48
  %..i.7.peel = tail call i32 @llvm.smin.i32(i32 %i.ga, i32 5)
  %i.jd = sext i32 %..i.7.peel to i64
  %i.je = getelementptr inbounds [2 x i8], ptr %1, i64 %i.jd
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !48
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !48
  %i.ji = sext i16 %i.in to i32
  %i.jj = sext i16 %i.jf to i32
  %i.jk = add nsw i32 %i.jj, %i.ji
  %i.jl = sext i16 %i.in to i32
  %i.jm = sext i16 %i.jc to i32
  %i.jn = add nsw i32 %i.jm, %i.jl
  %i.jo = mul nsw i32 %i.jn, 21
  %i.jp = sext i16 %i.iq to i32
  %i.jq = sext i16 %i.iz to i32
  %i.jr = add nsw i32 %i.jq, %i.jp
  %.neg.peel177 = mul i32 %i.jr, 16777170
  %i.js = sext i16 %i.it to i32
  %i.jt = sext i16 %i.iw to i32
  %i.ju = add nsw i32 %i.jt, %i.js
  %i.jv = mul nsw i32 %i.ju, 161
  %i.jw = shl nsw i32 %i.jk, 3
  %reass.sub57.peel178 = sub nsw i32 %i.jo, %i.jw
  %i.jx = add nsw i32 %reass.sub57.peel178, 128
  %i.jy = add i32 %i.jx, %.neg.peel177
  %i.jz = add i32 %i.jy, %i.jv
  %i.ka = lshr i32 %i.jz, 8
  %i.kb = trunc i32 %i.ka to i16
  %i.kc = sub i16 %i.jh, %i.kb
  %gep162.peel = getelementptr inbounds nuw i8, ptr %invariant.gep161, i64 4
  store i16 %i.kc, ptr %gep162.peel, align 2, !tbaa !48
  %exitcond91.not.peel = icmp eq i32 %i.a, 3
  br i1 %exitcond91.not.peel, label %.lr.ph.preheader, label %.preheader.peel180

.preheader.peel180:                               ; preds = %.preheader.peel.next92
  %i.kd = load i16, ptr %1, align 2, !tbaa !48
  %..i.1.peel182 = tail call i32 @llvm.smin.i32(i32 %i.ga, i32 0)
  %i.ke = sext i32 %..i.1.peel182 to i64
  %i.kf = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ke
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !48
  %..i.2.peel183 = tail call i32 @llvm.smin.i32(i32 %i.ga, i32 1)
  %i.kh = sext i32 %..i.2.peel183 to i64
  %i.ki = getelementptr inbounds [2 x i8], ptr %1, i64 %i.kh
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !48
  %..i.3.peel184 = tail call i32 @llvm.smin.i32(i32 %i.ga, i32 2)
  %i.kk = sext i32 %..i.3.peel184 to i64
  %i.kl = getelementptr inbounds [2 x i8], ptr %1, i64 %i.kk
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !48
  %..i.4.peel185 = tail call i32 @llvm.smin.i32(i32 %i.ga, i32 3)
  %i.kn = sext i32 %..i.4.peel185 to i64
  %i.ko = getelementptr inbounds [2 x i8], ptr %1, i64 %i.kn
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !48
  %..i.5.peel186 = tail call i32 @llvm.smin.i32(i32 %i.ga, i32 4)
  %i.kq = sext i32 %..i.5.peel186 to i64
  %i.kr = getelementptr inbounds [2 x i8], ptr %1, i64 %i.kq
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !48
  %..i.6.peel187 = tail call i32 @llvm.smin.i32(i32 %i.ga, i32 5)
  %i.kt = sext i32 %..i.6.peel187 to i64
  %i.ku = getelementptr inbounds [2 x i8], ptr %1, i64 %i.kt
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !48
  %..i.7.peel188 = tail call i32 @llvm.smin.i32(i32 %i.ga, i32 6)
  %i.kw = sext i32 %..i.7.peel188 to i64
  %i.kx = getelementptr inbounds [2 x i8], ptr %1, i64 %i.kw
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !48
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !48
  %i.lb = sext i16 %i.kd to i32
  %i.lc = sext i16 %i.ky to i32
  %i.ld = add nsw i32 %i.lc, %i.lb
  %i.le = sext i16 %i.kg to i32
  %i.lf = sext i16 %i.kv to i32
  %i.lg = add nsw i32 %i.lf, %i.le
  %i.lh = mul nsw i32 %i.lg, 21
  %i.li = sext i16 %i.kj to i32
  %i.lj = sext i16 %i.ks to i32
  %i.lk = add nsw i32 %i.lj, %i.li
  %.neg.peel189 = mul i32 %i.lk, 16777170
  %i.ll = sext i16 %i.km to i32
  %i.lm = sext i16 %i.kp to i32
  %i.ln = add nsw i32 %i.lm, %i.ll
  %i.lo = mul nsw i32 %i.ln, 161
  %i.lp = shl nsw i32 %i.ld, 3
  %reass.sub57.peel190 = sub nsw i32 %i.lh, %i.lp
  %i.lq = add nsw i32 %reass.sub57.peel190, 128
  %i.lr = add i32 %i.lq, %.neg.peel189
  %i.ls = add i32 %i.lr, %i.lo
  %i.lt = lshr i32 %i.ls, 8
  %i.lu = trunc i32 %i.lt to i16
  %i.lv = sub i16 %i.la, %i.lu
  %gep162.peel191 = getelementptr inbounds nuw i8, ptr %invariant.gep161, i64 6
  store i16 %i.lv, ptr %gep162.peel191, align 2, !tbaa !48
  %exitcond91.not.peel192 = icmp eq i32 %i.a, 4
  br i1 %exitcond91.not.peel192, label %.lr.ph.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader.peel180, %.preheader
  %indvars.iv87 = phi i64 [ %i.mu, %.preheader ], [ 4, %.preheader.peel180 ] ; 10 uses
  %i.lw = trunc i64 %indvars.iv87 to i32
  %i.lx = add i32 %i.lw, -4
  %..i = tail call i32 @llvm.smin.i32(i32 %i.lx, i32 %i.ga)
  %i.ly = sext i32 %..i to i64
  %i.lz = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ly
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !48
  %i.mb = trunc i64 %indvars.iv87 to i32
  %i.mc = add i32 %i.mb, -3
  %..i.1 = tail call i32 @llvm.smin.i32(i32 %i.mc, i32 %i.ga)
  %i.md = sext i32 %..i.1 to i64
  %i.me = getelementptr inbounds [2 x i8], ptr %1, i64 %i.md
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !48
  %i.mg = trunc i64 %indvars.iv87 to i32
  %i.mh = add i32 %i.mg, -2
  %..i.2 = tail call i32 @llvm.smin.i32(i32 %i.mh, i32 %i.ga)
  %i.mi = sext i32 %..i.2 to i64
  %i.mj = getelementptr inbounds [2 x i8], ptr %1, i64 %i.mi
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !48
  %i.ml = trunc i64 %indvars.iv87 to i32
  %i.mm = add i32 %i.ml, -1
  %..i.3 = tail call i32 @llvm.smin.i32(i32 %i.mm, i32 %i.ga)
  %i.mn = sext i32 %..i.3 to i64
  %i.mo = getelementptr inbounds [2 x i8], ptr %1, i64 %i.mn
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !48
  %i.mq = trunc nsw i64 %indvars.iv87 to i32
  %..i.4 = tail call i32 @llvm.smin.i32(i32 %i.mq, i32 %i.ga)
  %i.mr = sext i32 %..i.4 to i64
  %i.ms = getelementptr inbounds [2 x i8], ptr %1, i64 %i.mr
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !48
  %i.mu = add nuw nsw i64 %indvars.iv87, 1        ; 3 uses
  %i.mv = trunc nsw i64 %i.mu to i32
  %..i.5 = tail call i32 @llvm.smin.i32(i32 %i.mv, i32 %i.ga)
  %i.mw = sext i32 %..i.5 to i64
  %i.mx = getelementptr inbounds [2 x i8], ptr %1, i64 %i.mw
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !48
  %i.mz = trunc i64 %indvars.iv87 to i32
  %i.na = add i32 %i.mz, 2
  %..i.6 = tail call i32 @llvm.smin.i32(i32 %i.na, i32 %i.ga)
  %i.nb = sext i32 %..i.6 to i64
  %i.nc = getelementptr inbounds [2 x i8], ptr %1, i64 %i.nb
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !48
  %i.ne = trunc i64 %indvars.iv87 to i32
  %i.nf = add i32 %i.ne, 3
  %..i.7 = tail call i32 @llvm.smin.i32(i32 %i.nf, i32 %i.ga)
  %i.ng = sext i32 %..i.7 to i64
  %i.nh = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ng
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !48
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv87
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !48
  %i.nl = sext i16 %i.ma to i32
  %i.nm = sext i16 %i.ni to i32
  %i.nn = add nsw i32 %i.nm, %i.nl
  %i.no = sext i16 %i.mf to i32
  %i.np = sext i16 %i.nd to i32
  %i.nq = add nsw i32 %i.np, %i.no
  %i.nr = mul nsw i32 %i.nq, 21
  %i.ns = sext i16 %i.mk to i32
  %i.nt = sext i16 %i.my to i32
  %i.nu = add nsw i32 %i.nt, %i.ns
  %.neg = mul i32 %i.nu, 16777170
  %i.nv = sext i16 %i.mp to i32
  %i.nw = sext i16 %i.mt to i32
  %i.nx = add nsw i32 %i.nw, %i.nv
  %i.ny = mul nsw i32 %i.nx, 161
  %i.nz = shl nsw i32 %i.nn, 3
  %reass.sub57 = sub nsw i32 %i.nr, %i.nz
  %i.oa = add nsw i32 %reass.sub57, 128
  %i.ob = add i32 %i.oa, %.neg
  %i.oc = add i32 %i.ob, %i.ny
  %i.od = lshr i32 %i.oc, 8
  %i.oe = trunc i32 %i.od to i16
  %i.of = sub i16 %i.nk, %i.oe
  %gep162 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep161, i64 %indvars.iv87
  store i16 %i.of, ptr %gep162, align 2, !tbaa !48
  %exitcond91.not = icmp eq i64 %i.mu, %wide.trip.count90
  br i1 %exitcond91.not, label %.lr.ph.preheader, label %.preheader, !llvm.loop !234

.lr.ph.preheader:                                 ; preds = %.preheader.peel.next92, %.preheader.peel180, %.preheader, %.preheader.lr.ph, %.preheader.peel.next
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.gb ; 6 uses
  %wide.trip.count118 = zext nneg i32 %i.a to i64
  %min.iters.check = icmp ult i32 %i.a, 12
  br i1 %min.iters.check, label %.lr.ph.preheader171, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.oh = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.oh  ; 2 uses
  %scevgep163 = getelementptr i8, ptr %1, i64 %i.oh
  %bound0 = icmp ult ptr %0, %i.og
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0164 = icmp ult ptr %0, %scevgep163
  %bound1165 = icmp ult ptr %i.og, %scevgep
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx = or i1 %found.conflict, %found.conflict166
  br i1 %conflict.rdx, label %.lr.ph.preheader171, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %index ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %wide.load = load <4 x i16>, ptr %i.oi, align 2, !tbaa !48, !alias.scope !235
  %wide.load167 = load <4 x i16>, ptr %i.oj, align 2, !tbaa !48, !alias.scope !235
  %i.ok = shl nuw nsw i64 %index, 2
  %i.ol = shl i64 %index, 2
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 %i.ok
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 %i.ol
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.op = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %wide.load168 = load <4 x i16>, ptr %i.op, align 2, !tbaa !48, !alias.scope !238
  %wide.load169 = load <4 x i16>, ptr %i.oq, align 2, !tbaa !48, !alias.scope !238
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> %wide.load168, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.om, align 2, !tbaa !48, !alias.scope !240, !noalias !242
  %interleaved.vec170 = shufflevector <4 x i16> %wide.load167, <4 x i16> %wide.load169, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec170, ptr %i.oo, align 2, !tbaa !48, !alias.scope !240, !noalias !242
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.or = icmp eq i64 %index.next, %n.vec
  br i1 %i.or, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %interleave_8bit.exit, label %.lr.ph.preheader171

.lr.ph.preheader171:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv115.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %i.gb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader171
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %indvars.iv115.ph
  %i.ot = load i16, ptr %i.os, align 2, !tbaa !48
  %.idx.prol = shl nuw nsw i64 %indvars.iv115.ph, 2
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.prol ; 2 uses
  store i16 %i.ot, ptr %i.ou, align 2, !tbaa !48
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv115.ph
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !48
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 2
  store i16 %i.ow, ptr %i.ox, align 2, !tbaa !48
  %indvars.iv.next116.prol = or disjoint i64 %indvars.iv115.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader171
  %indvars.iv115.unr = phi i64 [ %indvars.iv115.ph, %.lr.ph.preheader171 ], [ %indvars.iv.next116.prol, %.lr.ph.prol ]
  %i.oy = add nsw i64 %i.gb, -1
  %i.oz = icmp eq i64 %indvars.iv115.ph, %i.oy
  br i1 %i.oz, label %interleave_8bit.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv115 = phi i64 [ %indvars.iv.next116.1, %.lr.ph ], [ %indvars.iv115.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.pa = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %indvars.iv115
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !48
  %.idx = shl nuw nsw i64 %indvars.iv115, 2
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  store i16 %i.pb, ptr %i.pc, align 2, !tbaa !48
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv115
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !48
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 2
  store i16 %i.pe, ptr %i.pf, align 2, !tbaa !48
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 3 uses
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %indvars.iv.next116
  %i.ph = load i16, ptr %i.pg, align 2, !tbaa !48
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next116, 2
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1 ; 2 uses
  store i16 %i.ph, ptr %i.pi, align 2, !tbaa !48
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next116
  %i.pk = load i16, ptr %i.pj, align 2, !tbaa !48
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 2
  store i16 %i.pk, ptr %i.pl, align 2, !tbaa !48
  %indvars.iv.next116.1 = add nuw nsw i64 %indvars.iv115, 2 ; 2 uses
  %exitcond119.not.1 = icmp eq i64 %indvars.iv.next116.1, %wide.trip.count118
  br i1 %exitcond119.not.1, label %interleave_8bit.exit, label %.lr.ph, !llvm.loop !244

interleave_8bit.exit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @spatial_compose_daub97i_dy_8bit(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = sext i32 %1 to i64
  %i.k = getelementptr inbounds [72 x i8], ptr %i.i, i64 %i.j ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !22   ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !26 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !26 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !26 ; 4 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !26 ; 4 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.o = add nsw i32 %i.m, 3                      ; 4 uses
  %i.p = add nsw i32 %3, -1                       ; 7 uses
  %.not.i51 = icmp eq i32 %i.p, 0
  br i1 %.not.i51, label %avpriv_mirror.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %.lr.ph, label %avpriv_mirror.exit56

.lr.ph:                                           ; preds = %.preheader
  %i.r = shl nsw i32 %i.p, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.09.i5259 = phi i32 [ %i.o, %.lr.ph ], [ %.1.i55, %bb.b ] ; 2 uses
  %i.s = icmp sgt i32 %.09.i5259, 0
  %spec.select.i54 = select i1 %i.s, i32 %i.r, i32 0
  %.1.i55 = sub nsw i32 %spec.select.i54, %.09.i5259 ; 3 uses
  %i.t = icmp ugt i32 %.1.i55, %i.p
  br i1 %i.t, label %bb.b, label %avpriv_mirror.exit56, !llvm.loop !30

avpriv_mirror.exit56:                             ; preds = %bb.b, %.preheader
  %.09.i52.lcssa = phi i32 [ %i.o, %.preheader ], [ %.1.i55, %bb.b ]
  %i.u = mul nsw i32 %.09.i52.lcssa, %4
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.n, i64 %i.v ; 2 uses
  %i.x = add nsw i32 %i.m, 4                      ; 3 uses
  %i.y = icmp ugt i32 %i.x, %i.p
  br i1 %i.y, label %.lr.ph61, label %avpriv_mirror.exit

.lr.ph61:                                         ; preds = %avpriv_mirror.exit56
  %i.z = shl nsw i32 %i.p, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph61, %bb.c
  %.09.i60 = phi i32 [ %i.x, %.lr.ph61 ], [ %.1.i, %bb.c ] ; 2 uses
  %i.aa = icmp sgt i32 %.09.i60, 0
  %spec.select.i = select i1 %i.aa, i32 %i.z, i32 0
end_hunk_0
begin_hunk_1_@vertical_compose_fidelityiH0_10bit:bb.a
  %i.af = add <4 x i32> %wide.load77, %wide.load76
  %i.ag = mul <4 x i32> %i.af, splat (i32 81)
  %i.ah = shl <4 x i32> %i.u, splat (i32 1)
  %i.ai = sub <4 x i32> %i.y, %i.ah
  %i.aj = add <4 x i32> %i.ai, splat (i32 128)
  %i.ak = add <4 x i32> %i.aj, %i.ac
  %i.al = add <4 x i32> %i.ak, %i.ag
  %i.am = ashr <4 x i32> %i.al, splat (i32 8)
  %i.an = add <4 x i32> %i.am, %wide.load
  store <4 x i32> %i.an, ptr %i.r, align 4, !tbaa !16, !alias.scope !453, !noalias !456
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !473

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader78

.lr.ph.preheader78:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader78, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader78 ] ; 10 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !16
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !16
  %i.av = add i32 %i.au, %i.as
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !16
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !16
  %i.ba = add i32 %i.az, %i.ax
  %i.bb = mul i32 %i.ba, 10
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !16
  %i.bg = add i32 %i.bf, %i.bd
  %.neg = mul i32 %i.bg, -25
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !16
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !16
  %i.bl = add i32 %i.bk, %i.bi
  %i.bm = mul i32 %i.bl, 81
  %i.bn = shl i32 %i.av, 1
  %reass.sub = sub i32 %i.bb, %i.bn
  %i.bo = add i32 %reass.sub, 128
  %i.bp = add i32 %i.bo, %.neg
  %i.bq = add i32 %i.bp, %i.bm
  %i.br = ashr i32 %i.bq, 8
  %i.bs = add i32 %i.br, %i.aq
  store i32 %i.bs, ptr %i.ap, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !474

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @horizontal_compose_fidelityi_10bit(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = ashr i32 %2, 1                           ; 16 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.preheader48.lr.ph, label %interleave_10bit.exit

.preheader48.lr.ph:                               ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -1                     ; 20 uses
  %i.d = zext nneg i32 %i.a to i64                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 4 uses
  %i.e = load i32, ptr %0, align 4, !tbaa !16     ; 4 uses
  %i.f = icmp ne i32 %i.c, 0
  %i.g = zext i1 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = tail call i32 @llvm.umin.i32(i32 %i.c, i32 2)
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.c, i32 3)
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = tail call i32 @llvm.umin.i32(i32 %i.c, i32 4)
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !16
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16
  %i.x = add i32 %i.u, %i.e
  %i.y = add i32 %i.q, %i.e
  %i.z = mul i32 %i.y, 10
  %i.aa = add i32 %i.m, %i.e
  %.neg41.peel = mul i32 %i.aa, -25
  %i.ab = add i32 %i.i, %i.e
  %i.ac = mul i32 %i.ab, 81
  %i.ad = shl i32 %i.x, 1
  %reass.sub.peel = sub i32 %i.z, %i.ad
  %i.ae = add i32 %reass.sub.peel, 128
  %i.af = add i32 %i.ae, %.neg41.peel
  %i.ag = add i32 %i.af, %i.ac
  %i.ah = ashr i32 %i.ag, 8
  %i.ai = add i32 %i.ah, %i.w
  store i32 %i.ai, ptr %1, align 4, !tbaa !16
  %exitcond.peel.not = icmp eq i32 %i.a, 1
  br i1 %exitcond.peel.not, label %.preheader.lr.ph, label %.preheader48.peel.next

.preheader48.peel.next:                           ; preds = %.preheader48.lr.ph
  %i.aj = load i32, ptr %0, align 4, !tbaa !16    ; 3 uses
  %i.ak = load i32, ptr %i.h, align 4, !tbaa !16
  %i.al = load i32, ptr %i.l, align 4, !tbaa !16
  %i.am = load i32, ptr %i.p, align 4, !tbaa !16
  %i.an = load i32, ptr %i.t, align 4, !tbaa !16
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.c, i32 5)
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !16
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !16
  %i.av = add i32 %i.ar, %i.aj
  %i.aw = add i32 %i.an, %i.aj
  %i.ax = mul i32 %i.aw, 10
  %i.ay = add i32 %i.am, %i.aj
  %.neg41.peel78 = mul i32 %i.ay, -25
  %i.az = add i32 %i.al, %i.ak
  %i.ba = mul i32 %i.az, 81
  %i.bb = shl i32 %i.av, 1
  %reass.sub.peel79 = sub i32 %i.ax, %i.bb
  %i.bc = add i32 %reass.sub.peel79, 128
  %i.bd = add i32 %i.bc, %.neg41.peel78
  %i.be = add i32 %i.bd, %i.ba
  %i.bf = ashr i32 %i.be, 8
  %i.bg = add i32 %i.bf, %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !16
  %exitcond.peel81.not = icmp eq i32 %i.a, 2
  br i1 %exitcond.peel81.not, label %.preheader.lr.ph, label %.preheader48.peel.next60

.preheader48.peel.next60:                         ; preds = %.preheader48.peel.next
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.bi = load i32, ptr %0, align 4, !tbaa !16
  %..i42.1.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 0)
  %i.bj = sext i32 %..i42.1.peel to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !16
  %..i42.2.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 1)
  %i.bm = sext i32 %..i42.2.peel to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !16
  %..i42.3.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 2)
  %i.bp = sext i32 %..i42.3.peel to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !16
  %..i42.4.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 3)
  %i.bs = sext i32 %..i42.4.peel to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !16
  %..i42.5.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 4)
  %i.bv = sext i32 %..i42.5.peel to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !16
  %..i42.6.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 5)
  %i.by = sext i32 %..i42.6.peel to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %0, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !16
  %..i42.7.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 6)
  %i.cb = sext i32 %..i42.7.peel to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !16
  %gep.peel = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.ce = load i32, ptr %gep.peel, align 4, !tbaa !16
  %i.cf = add i32 %i.cd, %i.bi
  %i.cg = add i32 %i.ca, %i.bl
  %i.ch = mul i32 %i.cg, 10
  %i.ci = add i32 %i.bx, %i.bo
  %.neg41.peel173 = mul i32 %i.ci, -25
  %i.cj = add i32 %i.bu, %i.br
  %i.ck = mul i32 %i.cj, 81
  %i.cl = shl i32 %i.cf, 1
  %reass.sub.peel174 = sub i32 %i.ch, %i.cl
  %i.cm = add i32 %reass.sub.peel174, 128
  %i.cn = add i32 %i.cm, %.neg41.peel173
  %i.co = add i32 %i.cn, %i.ck
  %i.cp = ashr i32 %i.co, 8
  %i.cq = add i32 %i.cp, %i.ce
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !16
  %exitcond.not.peel = icmp eq i32 %i.a, 3
  br i1 %exitcond.not.peel, label %.preheader.lr.ph, label %.preheader48

.preheader48:                                     ; preds = %.preheader48.peel.next60, %.preheader48
  %indvars.iv = phi i64 [ %i.dl, %.preheader48 ], [ 3, %.preheader48.peel.next60 ] ; 10 uses
  %i.cs = trunc i64 %indvars.iv to i32
  %i.ct = add i32 %i.cs, -3
  %..i42 = tail call i32 @llvm.smin.i32(i32 %i.ct, i32 %i.c)
  %i.cu = sext i32 %..i42 to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !16
  %i.cx = trunc i64 %indvars.iv to i32
  %i.cy = add i32 %i.cx, -2
  %..i42.1 = tail call i32 @llvm.smin.i32(i32 %i.cy, i32 %i.c)
  %i.cz = sext i32 %..i42.1 to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !16
  %i.dc = trunc i64 %indvars.iv to i32
  %i.dd = add i32 %i.dc, -1
  %..i42.2 = tail call i32 @llvm.smin.i32(i32 %i.dd, i32 %i.c)
  %i.de = sext i32 %..i42.2 to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %0, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !16
  %i.dh = trunc nsw i64 %indvars.iv to i32
  %..i42.3 = tail call i32 @llvm.smin.i32(i32 %i.dh, i32 %i.c)
  %i.di = sext i32 %..i42.3 to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !16
  %i.dl = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.dm = trunc nsw i64 %i.dl to i32
  %..i42.4 = tail call i32 @llvm.smin.i32(i32 %i.dm, i32 %i.c)
  %i.dn = sext i32 %..i42.4 to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !16
  %i.dq = trunc i64 %indvars.iv to i32
  %i.dr = add i32 %i.dq, 2
  %..i42.5 = tail call i32 @llvm.smin.i32(i32 %i.dr, i32 %i.c)
  %i.ds = sext i32 %..i42.5 to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !16
  %i.dv = trunc i64 %indvars.iv to i32
  %i.dw = add i32 %i.dv, 3
  %..i42.6 = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.c)
  %i.dx = sext i32 %..i42.6 to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !16
  %i.ea = trunc i64 %indvars.iv to i32
  %i.eb = add i32 %i.ea, 4
  %..i42.7 = tail call i32 @llvm.smin.i32(i32 %i.eb, i32 %i.c)
  %i.ec = sext i32 %..i42.7 to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !16
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ef = load i32, ptr %gep, align 4, !tbaa !16
  %i.eg = add i32 %i.ee, %i.cw
  %i.eh = add i32 %i.dz, %i.db
  %i.ei = mul i32 %i.eh, 10
  %i.ej = add i32 %i.du, %i.dg
  %.neg41 = mul i32 %i.ej, -25
  %i.ek = add i32 %i.dp, %i.dk
  %i.el = mul i32 %i.ek, 81
  %i.em = shl i32 %i.eg, 1
  %reass.sub = sub i32 %i.ei, %i.em
  %i.en = add i32 %reass.sub, 128
  %i.eo = add i32 %i.en, %.neg41
  %i.ep = add i32 %i.eo, %i.el
  %i.eq = ashr i32 %i.ep, 8
  %i.er = add i32 %i.eq, %i.ef
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.er, ptr %i.es, align 4, !tbaa !16
  %exitcond.not = icmp eq i64 %i.dl, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.lr.ph, label %.preheader48, !llvm.loop !475

.preheader.lr.ph:                                 ; preds = %.preheader48.peel.next60, %.preheader48, %.preheader48.lr.ph, %.preheader48.peel.next
  %i.et = add nsw i32 %i.a, -1                    ; 25 uses
  %i.eu = zext nneg i32 %i.a to i64               ; 6 uses
  %wide.trip.count90 = zext nneg i32 %i.a to i64
  %i.ev = load i32, ptr %1, align 4, !tbaa !16    ; 7 uses
  %i.ew = icmp ne i32 %i.et, 0
  %i.ex = zext i1 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !16
  %i.fa = tail call i32 @llvm.umin.i32(i32 %i.et, i32 2)
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fb ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !16
  %i.fe = tail call i32 @llvm.umin.i32(i32 %i.et, i32 3)
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ff ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !16
  %i.fi = load i32, ptr %0, align 4, !tbaa !16
  %i.fj = add i32 %i.fh, %i.ev
  %i.fk = add i32 %i.fd, %i.ev
  %i.fl = mul i32 %i.fk, 21
  %i.fm = add i32 %i.ez, %i.ev
  %.neg.peel = mul i32 %i.fm, -46
  %i.fn = mul i32 %i.ev, 322
  %i.fo = shl i32 %i.fj, 3
  %reass.sub57.peel = sub i32 %i.fl, %i.fo
  %i.fp = add i32 %reass.sub57.peel, 128
  %i.fq = add i32 %i.fp, %.neg.peel
  %i.fr = add i32 %i.fq, %i.fn
  %i.fs = ashr i32 %i.fr, 8
  %i.ft = sub i32 %i.fi, %i.fs
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eu
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !16
  %exitcond91.peel.not = icmp eq i32 %i.a, 1
  br i1 %exitcond91.peel.not, label %.lr.ph.preheader, label %.preheader.peel.next

.preheader.peel.next:                             ; preds = %.preheader.lr.ph
  %i.fv = load i32, ptr %1, align 4, !tbaa !16
  %i.fw = load i32, ptr %i.ey, align 4, !tbaa !16
  %i.fx = load i32, ptr %i.fc, align 4, !tbaa !16
  %i.fy = load i32, ptr %i.fg, align 4, !tbaa !16
  %i.fz = tail call i32 @llvm.umin.i32(i32 %i.et, i32 4)
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !16
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !16
  %i.gf = add i32 %i.gc, %i.ev
  %i.gg = add i32 %i.fy, %i.ev
  %i.gh = mul i32 %i.gg, 21
  %i.gi = add i32 %i.fx, %i.ev
  %.neg.peel110 = mul i32 %i.gi, -46
  %i.gj = add i32 %i.fw, %i.fv
  %i.gk = mul i32 %i.gj, 161
  %i.gl = shl i32 %i.gf, 3
  %reass.sub57.peel111 = sub i32 %i.gh, %i.gl
  %i.gm = add i32 %reass.sub57.peel111, 128
  %i.gn = add i32 %i.gm, %.neg.peel110
  %i.go = add i32 %i.gn, %i.gk
  %i.gp = ashr i32 %i.go, 8
  %i.gq = sub i32 %i.ge, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eu
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  store i32 %i.gq, ptr %i.gs, align 4, !tbaa !16
  %exitcond91.peel113.not = icmp eq i32 %i.a, 2
  br i1 %exitcond91.peel113.not, label %.lr.ph.preheader, label %.preheader.peel.next92

.preheader.peel.next92:                           ; preds = %.preheader.peel.next
  %invariant.gep161 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eu ; 3 uses
  %i.gt = load i32, ptr %1, align 4, !tbaa !16    ; 2 uses
  %..i.2.peel = tail call i32 @llvm.smin.i32(i32 %i.et, i32 0)
  %i.gu = sext i32 %..i.2.peel to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !16
  %..i.3.peel = tail call i32 @llvm.smin.i32(i32 %i.et, i32 1)
  %i.gx = sext i32 %..i.3.peel to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !16
  %..i.4.peel = tail call i32 @llvm.smin.i32(i32 %i.et, i32 2)
  %i.ha = sext i32 %..i.4.peel to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !16
  %..i.5.peel = tail call i32 @llvm.smin.i32(i32 %i.et, i32 3)
  %i.hd = sext i32 %..i.5.peel to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !16
  %..i.6.peel = tail call i32 @llvm.smin.i32(i32 %i.et, i32 4)
  %i.hg = sext i32 %..i.6.peel to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !16
  %..i.7.peel = tail call i32 @llvm.smin.i32(i32 %i.et, i32 5)
  %i.hj = sext i32 %..i.7.peel to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !16
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !16
  %i.ho = add i32 %i.hl, %i.gt
  %i.hp = add i32 %i.hi, %i.gt
  %i.hq = mul i32 %i.hp, 21
  %i.hr = add i32 %i.hf, %i.gw
  %.neg.peel177 = mul i32 %i.hr, -46
  %i.hs = add i32 %i.hc, %i.gz
  %i.ht = mul i32 %i.hs, 161
  %i.hu = shl i32 %i.ho, 3
  %reass.sub57.peel178 = sub i32 %i.hq, %i.hu
  %i.hv = add i32 %reass.sub57.peel178, 128
  %i.hw = add i32 %i.hv, %.neg.peel177
  %i.hx = add i32 %i.hw, %i.ht
  %i.hy = ashr i32 %i.hx, 8
  %i.hz = sub i32 %i.hn, %i.hy
  %gep162.peel = getelementptr inbounds nuw i8, ptr %invariant.gep161, i64 8
  store i32 %i.hz, ptr %gep162.peel, align 4, !tbaa !16
  %exitcond91.not.peel = icmp eq i32 %i.a, 3
  br i1 %exitcond91.not.peel, label %.lr.ph.preheader, label %.preheader.peel180

.preheader.peel180:                               ; preds = %.preheader.peel.next92
  %i.ia = load i32, ptr %1, align 4, !tbaa !16
  %..i.1.peel182 = tail call i32 @llvm.smin.i32(i32 %i.et, i32 0)
  %i.ib = sext i32 %..i.1.peel182 to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !16
  %..i.2.peel183 = tail call i32 @llvm.smin.i32(i32 %i.et, i32 1)
  %i.ie = sext i32 %..i.2.peel183 to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !16
  %..i.3.peel184 = tail call i32 @llvm.smin.i32(i32 %i.et, i32 2)
  %i.ih = sext i32 %..i.3.peel184 to i64
  %i.ii = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !16
  %..i.4.peel185 = tail call i32 @llvm.smin.i32(i32 %i.et, i32 3)
  %i.ik = sext i32 %..i.4.peel185 to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !16
  %..i.5.peel186 = tail call i32 @llvm.smin.i32(i32 %i.et, i32 4)
  %i.in = sext i32 %..i.5.peel186 to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %1, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !16
  %..i.6.peel187 = tail call i32 @llvm.smin.i32(i32 %i.et, i32 5)
  %i.iq = sext i32 %..i.6.peel187 to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %1, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !16
  %..i.7.peel188 = tail call i32 @llvm.smin.i32(i32 %i.et, i32 6)
  %i.it = sext i32 %..i.7.peel188 to i64
  %i.iu = getelementptr inbounds [4 x i8], ptr %1, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !16
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !16
  %i.iy = add i32 %i.iv, %i.ia
  %i.iz = add i32 %i.is, %i.id
  %i.ja = mul i32 %i.iz, 21
  %i.jb = add i32 %i.ip, %i.ig
  %.neg.peel189 = mul i32 %i.jb, -46
  %i.jc = add i32 %i.im, %i.ij
  %i.jd = mul i32 %i.jc, 161
  %i.je = shl i32 %i.iy, 3
  %reass.sub57.peel190 = sub i32 %i.ja, %i.je
  %i.jf = add i32 %reass.sub57.peel190, 128
  %i.jg = add i32 %i.jf, %.neg.peel189
  %i.jh = add i32 %i.jg, %i.jd
  %i.ji = ashr i32 %i.jh, 8
  %i.jj = sub i32 %i.ix, %i.ji
  %gep162.peel191 = getelementptr inbounds nuw i8, ptr %invariant.gep161, i64 12
  store i32 %i.jj, ptr %gep162.peel191, align 4, !tbaa !16
  %exitcond91.not.peel192 = icmp eq i32 %i.a, 4
  br i1 %exitcond91.not.peel192, label %.lr.ph.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader.peel180, %.preheader
  %indvars.iv87 = phi i64 [ %i.ki, %.preheader ], [ 4, %.preheader.peel180 ] ; 10 uses
  %i.jk = trunc i64 %indvars.iv87 to i32
  %i.jl = add i32 %i.jk, -4
  %..i = tail call i32 @llvm.smin.i32(i32 %i.jl, i32 %i.et)
  %i.jm = sext i32 %..i to i64
  %i.jn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !16
  %i.jp = trunc i64 %indvars.iv87 to i32
  %i.jq = add i32 %i.jp, -3
  %..i.1 = tail call i32 @llvm.smin.i32(i32 %i.jq, i32 %i.et)
  %i.jr = sext i32 %..i.1 to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !16
  %i.ju = trunc i64 %indvars.iv87 to i32
  %i.jv = add i32 %i.ju, -2
  %..i.2 = tail call i32 @llvm.smin.i32(i32 %i.jv, i32 %i.et)
  %i.jw = sext i32 %..i.2 to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !16
  %i.jz = trunc i64 %indvars.iv87 to i32
  %i.ka = add i32 %i.jz, -1
  %..i.3 = tail call i32 @llvm.smin.i32(i32 %i.ka, i32 %i.et)
  %i.kb = sext i32 %..i.3 to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !16
  %i.ke = trunc nsw i64 %indvars.iv87 to i32
  %..i.4 = tail call i32 @llvm.smin.i32(i32 %i.ke, i32 %i.et)
  %i.kf = sext i32 %..i.4 to i64
  %i.kg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !16
  %i.ki = add nuw nsw i64 %indvars.iv87, 1        ; 3 uses
  %i.kj = trunc nsw i64 %i.ki to i32
  %..i.5 = tail call i32 @llvm.smin.i32(i32 %i.kj, i32 %i.et)
  %i.kk = sext i32 %..i.5 to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !16
  %i.kn = trunc i64 %indvars.iv87 to i32
  %i.ko = add i32 %i.kn, 2
  %..i.6 = tail call i32 @llvm.smin.i32(i32 %i.ko, i32 %i.et)
  %i.kp = sext i32 %..i.6 to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !16
  %i.ks = trunc i64 %indvars.iv87 to i32
  %i.kt = add i32 %i.ks, 3
  %..i.7 = tail call i32 @llvm.smin.i32(i32 %i.kt, i32 %i.et)
  %i.ku = sext i32 %..i.7 to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !16
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv87
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !16
  %i.kz = add i32 %i.kw, %i.jo
  %i.la = add i32 %i.kr, %i.jt
  %i.lb = mul i32 %i.la, 21
  %i.lc = add i32 %i.km, %i.jy
  %.neg = mul i32 %i.lc, -46
  %i.ld = add i32 %i.kh, %i.kd
  %i.le = mul i32 %i.ld, 161
  %i.lf = shl i32 %i.kz, 3
  %reass.sub57 = sub i32 %i.lb, %i.lf
  %i.lg = add i32 %reass.sub57, 128
  %i.lh = add i32 %i.lg, %.neg
  %i.li = add i32 %i.lh, %i.le
  %i.lj = ashr i32 %i.li, 8
  %i.lk = sub i32 %i.ky, %i.lj
  %gep162 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep161, i64 %indvars.iv87
  store i32 %i.lk, ptr %gep162, align 4, !tbaa !16
  %exitcond91.not = icmp eq i64 %i.ki, %wide.trip.count90
  br i1 %exitcond91.not, label %.lr.ph.preheader, label %.preheader, !llvm.loop !476

.lr.ph.preheader:                                 ; preds = %.preheader.peel.next92, %.preheader.peel180, %.preheader, %.preheader.lr.ph, %.preheader.peel.next
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eu ; 6 uses
  %wide.trip.count118 = zext nneg i32 %i.a to i64
  %min.iters.check = icmp ult i32 %i.a, 12
  br i1 %min.iters.check, label %.lr.ph.preheader171, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.lm = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.lm  ; 2 uses
  %scevgep163 = getelementptr i8, ptr %1, i64 %i.lm
  %bound0 = icmp ult ptr %0, %i.ll
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0164 = icmp ult ptr %0, %scevgep163
  %bound1165 = icmp ult ptr %i.ll, %scevgep
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx = or i1 %found.conflict, %found.conflict166
  br i1 %conflict.rdx, label %.lr.ph.preheader171, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %index ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %wide.load = load <2 x i32>, ptr %i.ln, align 4, !tbaa !16, !alias.scope !477
  %wide.load167 = load <2 x i32>, ptr %i.lo, align 4, !tbaa !16, !alias.scope !477
  %i.lp = shl nuw nsw i64 %index, 3
  %i.lq = shl i64 %index, 3
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 %i.lp
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 %i.lq
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %wide.load168 = load <2 x i32>, ptr %i.lu, align 4, !tbaa !16, !alias.scope !480
  %wide.load169 = load <2 x i32>, ptr %i.lv, align 4, !tbaa !16, !alias.scope !480
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load168, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.lr, align 4, !tbaa !16, !alias.scope !482, !noalias !484
  %interleaved.vec170 = shufflevector <2 x i32> %wide.load167, <2 x i32> %wide.load169, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec170, ptr %i.lt, align 4, !tbaa !16, !alias.scope !482, !noalias !484
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lw = icmp eq i64 %index.next, %n.vec
  br i1 %i.lw, label %middle.block, label %vector.body, !llvm.loop !485

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %interleave_10bit.exit, label %.lr.ph.preheader171

.lr.ph.preheader171:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv115.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %i.eu, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader171
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv115.ph
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !16
  %.idx.prol = shl nuw nsw i64 %indvars.iv115.ph, 3
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.prol ; 2 uses
  store i32 %i.ly, ptr %i.lz, align 4, !tbaa !16
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv115.ph
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !16
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  store i32 %i.mb, ptr %i.mc, align 4, !tbaa !16
  %indvars.iv.next116.prol = or disjoint i64 %indvars.iv115.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader171
  %indvars.iv115.unr = phi i64 [ %indvars.iv115.ph, %.lr.ph.preheader171 ], [ %indvars.iv.next116.prol, %.lr.ph.prol ]
  %i.md = add nsw i64 %i.eu, -1
  %i.me = icmp eq i64 %indvars.iv115.ph, %i.md
  br i1 %i.me, label %interleave_10bit.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv115 = phi i64 [ %indvars.iv.next116.1, %.lr.ph ], [ %indvars.iv115.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv115
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !16
  %.idx = shl nuw nsw i64 %indvars.iv115, 3
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !16
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv115
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !16
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !16
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv.next116
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !16
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next116, 3
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1 ; 2 uses
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !16
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next116
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !16
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !16
  %indvars.iv.next116.1 = add nuw nsw i64 %indvars.iv115, 2 ; 2 uses
  %exitcond119.not.1 = icmp eq i64 %indvars.iv.next116.1, %wide.trip.count118
  br i1 %exitcond119.not.1, label %interleave_10bit.exit, label %.lr.ph, !llvm.loop !486

interleave_10bit.exit:                            ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @spatial_compose_daub97i_dy_10bit(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = sext i32 %1 to i64
  %i.k = getelementptr inbounds [72 x i8], ptr %i.i, i64 %i.j ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !22   ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !26 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !26 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !26 ; 4 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !26 ; 4 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.o = add nsw i32 %i.m, 3                      ; 4 uses
  %i.p = add nsw i32 %3, -1                       ; 7 uses
  %.not.i51 = icmp eq i32 %i.p, 0
  br i1 %.not.i51, label %avpriv_mirror.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %.lr.ph, label %avpriv_mirror.exit56

.lr.ph:                                           ; preds = %.preheader
  %i.r = shl nsw i32 %i.p, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.09.i5259 = phi i32 [ %i.o, %.lr.ph ], [ %.1.i55, %bb.b ] ; 2 uses
  %i.s = icmp sgt i32 %.09.i5259, 0
  %spec.select.i54 = select i1 %i.s, i32 %i.r, i32 0
  %.1.i55 = sub nsw i32 %spec.select.i54, %.09.i5259 ; 3 uses
  %i.t = icmp ugt i32 %.1.i55, %i.p
  br i1 %i.t, label %bb.b, label %avpriv_mirror.exit56, !llvm.loop !30

avpriv_mirror.exit56:                             ; preds = %bb.b, %.preheader
  %.09.i52.lcssa = phi i32 [ %i.o, %.preheader ], [ %.1.i55, %bb.b ]
  %i.u = mul nsw i32 %.09.i52.lcssa, %4
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.n, i64 %i.v ; 2 uses
  %i.x = add nsw i32 %i.m, 4                      ; 3 uses
  %i.y = icmp ugt i32 %i.x, %i.p
  br i1 %i.y, label %.lr.ph61, label %avpriv_mirror.exit

.lr.ph61:                                         ; preds = %avpriv_mirror.exit56
  %i.z = shl nsw i32 %i.p, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph61, %bb.c
  %.09.i60 = phi i32 [ %i.x, %.lr.ph61 ], [ %.1.i, %bb.c ] ; 2 uses
  %i.aa = icmp sgt i32 %.09.i60, 0
  %spec.select.i = select i1 %i.aa, i32 %i.z, i32 0
  %.1.i = sub nsw i32 %spec.select.i, %.09.i60    ; 3 uses
  %i.ab = icmp ugt i32 %.1.i, %i.p
  br i1 %i.ab, label %bb.c, label %avpriv_mirror.exit, !llvm.loop !30

avpriv_mirror.exit:                               ; preds = %bb.c, %bb.a, %avpriv_mirror.exit56
  %.sroa.15.0 = phi ptr [ %i.w, %avpriv_mirror.exit56 ], [ %i.n, %bb.a ], [ %i.w, %bb.c ] ; 3 uses
  %.0.i = phi i32 [ %i.x, %avpriv_mirror.exit56 ], [ 0, %bb.a ], [ %.1.i, %bb.c ]
  %i.ac = mul nsw i32 %.0.i, %4
  %i.ad = sext i32 %i.ac to i64
end_hunk_1
begin_hunk_2_@vertical_compose_fidelityiH0_12bit:bb.a
  %i.af = add <4 x i32> %wide.load77, %wide.load76
  %i.ag = mul <4 x i32> %i.af, splat (i32 81)
  %i.ah = shl <4 x i32> %i.u, splat (i32 1)
  %i.ai = sub <4 x i32> %i.y, %i.ah
  %i.aj = add <4 x i32> %i.ai, splat (i32 128)
  %i.ak = add <4 x i32> %i.aj, %i.ac
  %i.al = add <4 x i32> %i.ak, %i.ag
  %i.am = ashr <4 x i32> %i.al, splat (i32 8)
  %i.an = add <4 x i32> %i.am, %wide.load
  store <4 x i32> %i.an, ptr %i.r, align 4, !tbaa !16, !alias.scope !695, !noalias !698
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !715

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader78

.lr.ph.preheader78:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader78, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader78 ] ; 10 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !16
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !16
  %i.av = add i32 %i.au, %i.as
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !16
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !16
  %i.ba = add i32 %i.az, %i.ax
  %i.bb = mul i32 %i.ba, 10
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !16
  %i.bg = add i32 %i.bf, %i.bd
  %.neg = mul i32 %i.bg, -25
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !16
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !16
  %i.bl = add i32 %i.bk, %i.bi
  %i.bm = mul i32 %i.bl, 81
  %i.bn = shl i32 %i.av, 1
  %reass.sub = sub i32 %i.bb, %i.bn
  %i.bo = add i32 %reass.sub, 128
  %i.bp = add i32 %i.bo, %.neg
  %i.bq = add i32 %i.bp, %i.bm
  %i.br = ashr i32 %i.bq, 8
  %i.bs = add i32 %i.br, %i.aq
  store i32 %i.bs, ptr %i.ap, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !716

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @horizontal_compose_fidelityi_12bit(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = ashr i32 %2, 1                           ; 16 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.preheader48.lr.ph, label %interleave_12bit.exit

.preheader48.lr.ph:                               ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -1                     ; 20 uses
  %i.d = zext nneg i32 %i.a to i64                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 4 uses
  %i.e = load i32, ptr %0, align 4, !tbaa !16     ; 4 uses
  %i.f = icmp ne i32 %i.c, 0
  %i.g = zext i1 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = tail call i32 @llvm.umin.i32(i32 %i.c, i32 2)
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.c, i32 3)
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = tail call i32 @llvm.umin.i32(i32 %i.c, i32 4)
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !16
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16
  %i.x = add i32 %i.u, %i.e
  %i.y = add i32 %i.q, %i.e
  %i.z = mul i32 %i.y, 10
  %i.aa = add i32 %i.m, %i.e
  %.neg41.peel = mul i32 %i.aa, -25
  %i.ab = add i32 %i.i, %i.e
  %i.ac = mul i32 %i.ab, 81
  %i.ad = shl i32 %i.x, 1
  %reass.sub.peel = sub i32 %i.z, %i.ad
  %i.ae = add i32 %reass.sub.peel, 128
  %i.af = add i32 %i.ae, %.neg41.peel
  %i.ag = add i32 %i.af, %i.ac
  %i.ah = ashr i32 %i.ag, 8
  %i.ai = add i32 %i.ah, %i.w
  store i32 %i.ai, ptr %1, align 4, !tbaa !16
  %exitcond.peel.not = icmp eq i32 %i.a, 1
  br i1 %exitcond.peel.not, label %.preheader.lr.ph, label %.preheader48.peel.next

.preheader48.peel.next:                           ; preds = %.preheader48.lr.ph
  %i.aj = load i32, ptr %0, align 4, !tbaa !16    ; 3 uses
  %i.ak = load i32, ptr %i.h, align 4, !tbaa !16
  %i.al = load i32, ptr %i.l, align 4, !tbaa !16
  %i.am = load i32, ptr %i.p, align 4, !tbaa !16
  %i.an = load i32, ptr %i.t, align 4, !tbaa !16
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.c, i32 5)
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !16
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !16
  %i.av = add i32 %i.ar, %i.aj
  %i.aw = add i32 %i.an, %i.aj
  %i.ax = mul i32 %i.aw, 10
  %i.ay = add i32 %i.am, %i.aj
  %.neg41.peel78 = mul i32 %i.ay, -25
  %i.az = add i32 %i.al, %i.ak
  %i.ba = mul i32 %i.az, 81
  %i.bb = shl i32 %i.av, 1
  %reass.sub.peel79 = sub i32 %i.ax, %i.bb
  %i.bc = add i32 %reass.sub.peel79, 128
  %i.bd = add i32 %i.bc, %.neg41.peel78
  %i.be = add i32 %i.bd, %i.ba
  %i.bf = ashr i32 %i.be, 8
  %i.bg = add i32 %i.bf, %i.au
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !16
  %exitcond.peel81.not = icmp eq i32 %i.a, 2
  br i1 %exitcond.peel81.not, label %.preheader.lr.ph, label %.preheader48.peel.next60

.preheader48.peel.next60:                         ; preds = %.preheader48.peel.next
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.bi = load i32, ptr %0, align 4, !tbaa !16
  %..i42.1.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 0)
  %i.bj = sext i32 %..i42.1.peel to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !16
  %..i42.2.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 1)
  %i.bm = sext i32 %..i42.2.peel to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !16
  %..i42.3.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 2)
  %i.bp = sext i32 %..i42.3.peel to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !16
  %..i42.4.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 3)
  %i.bs = sext i32 %..i42.4.peel to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !16
  %..i42.5.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 4)
  %i.bv = sext i32 %..i42.5.peel to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !16
  %..i42.6.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 5)
  %i.by = sext i32 %..i42.6.peel to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %0, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !16
  %..i42.7.peel = tail call i32 @llvm.smin.i32(i32 %i.c, i32 6)
  %i.cb = sext i32 %..i42.7.peel to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !16
  %gep.peel = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.ce = load i32, ptr %gep.peel, align 4, !tbaa !16
  %i.cf = add i32 %i.cd, %i.bi
  %i.cg = add i32 %i.ca, %i.bl
  %i.ch = mul i32 %i.cg, 10
  %i.ci = add i32 %i.bx, %i.bo
  %.neg41.peel173 = mul i32 %i.ci, -25
  %i.cj = add i32 %i.bu, %i.br
  %i.ck = mul i32 %i.cj, 81
  %i.cl = shl i32 %i.cf, 1
  %reass.sub.peel174 = sub i32 %i.ch, %i.cl
  %i.cm = add i32 %reass.sub.peel174, 128
  %i.cn = add i32 %i.cm, %.neg41.peel173
  %i.co = add i32 %i.cn, %i.ck
  %i.cp = ashr i32 %i.co, 8
  %i.cq = add i32 %i.cp, %i.ce
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !16
  %exitcond.not.peel = icmp eq i32 %i.a, 3
  br i1 %exitcond.not.peel, label %.preheader.lr.ph, label %.preheader48

.preheader48:                                     ; preds = %.preheader48.peel.next60, %.preheader48
  %indvars.iv = phi i64 [ %i.dl, %.preheader48 ], [ 3, %.preheader48.peel.next60 ] ; 10 uses
  %i.cs = trunc i64 %indvars.iv to i32
  %i.ct = add i32 %i.cs, -3
  %..i42 = tail call i32 @llvm.smin.i32(i32 %i.ct, i32 %i.c)
  %i.cu = sext i32 %..i42 to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !16
  %i.cx = trunc i64 %indvars.iv to i32
  %i.cy = add i32 %i.cx, -2
  %..i42.1 = tail call i32 @llvm.smin.i32(i32 %i.cy, i32 %i.c)
  %i.cz = sext i32 %..i42.1 to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !16
  %i.dc = trunc i64 %indvars.iv to i32
  %i.dd = add i32 %i.dc, -1
  %..i42.2 = tail call i32 @llvm.smin.i32(i32 %i.dd, i32 %i.c)
  %i.de = sext i32 %..i42.2 to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %0, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !16
  %i.dh = trunc nsw i64 %indvars.iv to i32
  %..i42.3 = tail call i32 @llvm.smin.i32(i32 %i.dh, i32 %i.c)
  %i.di = sext i32 %..i42.3 to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !16
  %i.dl = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.dm = trunc nsw i64 %i.dl to i32
  %..i42.4 = tail call i32 @llvm.smin.i32(i32 %i.dm, i32 %i.c)
  %i.dn = sext i32 %..i42.4 to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !16
  %i.dq = trunc i64 %indvars.iv to i32
  %i.dr = add i32 %i.dq, 2
  %..i42.5 = tail call i32 @llvm.smin.i32(i32 %i.dr, i32 %i.c)
  %i.ds = sext i32 %..i42.5 to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !16
  %i.dv = trunc i64 %indvars.iv to i32
  %i.dw = add i32 %i.dv, 3
  %..i42.6 = tail call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.c)
  %i.dx = sext i32 %..i42.6 to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !16
  %i.ea = trunc i64 %indvars.iv to i32
  %i.eb = add i32 %i.ea, 4
  %..i42.7 = tail call i32 @llvm.smin.i32(i32 %i.eb, i32 %i.c)
  %i.ec = sext i32 %..i42.7 to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !16
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ef = load i32, ptr %gep, align 4, !tbaa !16
  %i.eg = add i32 %i.ee, %i.cw
  %i.eh = add i32 %i.dz, %i.db
  %i.ei = mul i32 %i.eh, 10
  %i.ej = add i32 %i.du, %i.dg
  %.neg41 = mul i32 %i.ej, -25
  %i.ek = add i32 %i.dp, %i.dk
  %i.el = mul i32 %i.ek, 81
  %i.em = shl i32 %i.eg, 1
  %reass.sub = sub i32 %i.ei, %i.em
  %i.en = add i32 %reass.sub, 128
  %i.eo = add i32 %i.en, %.neg41
  %i.ep = add i32 %i.eo, %i.el
  %i.eq = ashr i32 %i.ep, 8
  %i.er = add i32 %i.eq, %i.ef
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.er, ptr %i.es, align 4, !tbaa !16
  %exitcond.not = icmp eq i64 %i.dl, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.lr.ph, label %.preheader48, !llvm.loop !717

.preheader.lr.ph:                                 ; preds = %.preheader48.peel.next60, %.preheader48, %.preheader48.lr.ph, %.preheader48.peel.next
  %i.et = add nsw i32 %i.a, -1                    ; 25 uses
  %i.eu = zext nneg i32 %i.a to i64               ; 6 uses
  %wide.trip.count90 = zext nneg i32 %i.a to i64
  %i.ev = load i32, ptr %1, align 4, !tbaa !16    ; 7 uses
  %i.ew = icmp ne i32 %i.et, 0
  %i.ex = zext i1 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !16
  %i.fa = tail call i32 @llvm.umin.i32(i32 %i.et, i32 2)
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fb ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !16
  %i.fe = tail call i32 @llvm.umin.i32(i32 %i.et, i32 3)
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ff ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !16
  %i.fi = load i32, ptr %0, align 4, !tbaa !16
  %i.fj = add i32 %i.fh, %i.ev
  %i.fk = add i32 %i.fd, %i.ev
  %i.fl = mul i32 %i.fk, 21
  %i.fm = add i32 %i.ez, %i.ev
  %.neg.peel = mul i32 %i.fm, -46
  %i.fn = mul i32 %i.ev, 322
  %i.fo = shl i32 %i.fj, 3
  %reass.sub57.peel = sub i32 %i.fl, %i.fo
  %i.fp = add i32 %reass.sub57.peel, 128
  %i.fq = add i32 %i.fp, %.neg.peel
  %i.fr = add i32 %i.fq, %i.fn
  %i.fs = ashr i32 %i.fr, 8
  %i.ft = sub i32 %i.fi, %i.fs
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eu
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !16
  %exitcond91.peel.not = icmp eq i32 %i.a, 1
  br i1 %exitcond91.peel.not, label %.lr.ph.preheader, label %.preheader.peel.next

.preheader.peel.next:                             ; preds = %.preheader.lr.ph
  %i.fv = load i32, ptr %1, align 4, !tbaa !16
  %i.fw = load i32, ptr %i.ey, align 4, !tbaa !16
  %i.fx = load i32, ptr %i.fc, align 4, !tbaa !16
  %i.fy = load i32, ptr %i.fg, align 4, !tbaa !16
  %i.fz = tail call i32 @llvm.umin.i32(i32 %i.et, i32 4)
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !16
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !16
  %i.gf = add i32 %i.gc, %i.ev
  %i.gg = add i32 %i.fy, %i.ev
  %i.gh = mul i32 %i.gg, 21
  %i.gi = add i32 %i.fx, %i.ev
  %.neg.peel110 = mul i32 %i.gi, -46
  %i.gj = add i32 %i.fw, %i.fv
  %i.gk = mul i32 %i.gj, 161
  %i.gl = shl i32 %i.gf, 3
  %reass.sub57.peel111 = sub i32 %i.gh, %i.gl
  %i.gm = add i32 %reass.sub57.peel111, 128
  %i.gn = add i32 %i.gm, %.neg.peel110
  %i.go = add i32 %i.gn, %i.gk
  %i.gp = ashr i32 %i.go, 8
  %i.gq = sub i32 %i.ge, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eu
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  store i32 %i.gq, ptr %i.gs, align 4, !tbaa !16
  %exitcond91.peel113.not = icmp eq i32 %i.a, 2
  br i1 %exitcond91.peel113.not, label %.lr.ph.preheader, label %.preheader.peel.next92

.preheader.peel.next92:                           ; preds = %.preheader.peel.next
  %invariant.gep161 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eu ; 3 uses
  %i.gt = load i32, ptr %1, align 4, !tbaa !16    ; 2 uses
  %..i.2.peel = tail call i32 @llvm.smin.i32(i32 %i.et, i32 0)
  %i.gu = sext i32 %..i.2.peel to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !16
  %..i.3.peel = tail call i32 @llvm.smin.i32(i32 %i.et, i32 1)
  %i.gx = sext i32 %..i.3.peel to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !16
  %..i.4.peel = tail call i32 @llvm.smin.i32(i32 %i.et, i32 2)
  %i.ha = sext i32 %..i.4.peel to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !16
  %..i.5.peel = tail call i32 @llvm.smin.i32(i32 %i.et, i32 3)
  %i.hd = sext i32 %..i.5.peel to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !16
  %..i.6.peel = tail call i32 @llvm.smin.i32(i32 %i.et, i32 4)
  %i.hg = sext i32 %..i.6.peel to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !16
  %..i.7.peel = tail call i32 @llvm.smin.i32(i32 %i.et, i32 5)
  %i.hj = sext i32 %..i.7.peel to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !16
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !16
  %i.ho = add i32 %i.hl, %i.gt
  %i.hp = add i32 %i.hi, %i.gt
  %i.hq = mul i32 %i.hp, 21
  %i.hr = add i32 %i.hf, %i.gw
  %.neg.peel177 = mul i32 %i.hr, -46
  %i.hs = add i32 %i.hc, %i.gz
  %i.ht = mul i32 %i.hs, 161
  %i.hu = shl i32 %i.ho, 3
  %reass.sub57.peel178 = sub i32 %i.hq, %i.hu
  %i.hv = add i32 %reass.sub57.peel178, 128
  %i.hw = add i32 %i.hv, %.neg.peel177
  %i.hx = add i32 %i.hw, %i.ht
  %i.hy = ashr i32 %i.hx, 8
  %i.hz = sub i32 %i.hn, %i.hy
  %gep162.peel = getelementptr inbounds nuw i8, ptr %invariant.gep161, i64 8
  store i32 %i.hz, ptr %gep162.peel, align 4, !tbaa !16
  %exitcond91.not.peel = icmp eq i32 %i.a, 3
  br i1 %exitcond91.not.peel, label %.lr.ph.preheader, label %.preheader.peel180

.preheader.peel180:                               ; preds = %.preheader.peel.next92
  %i.ia = load i32, ptr %1, align 4, !tbaa !16
  %..i.1.peel182 = tail call i32 @llvm.smin.i32(i32 %i.et, i32 0)
  %i.ib = sext i32 %..i.1.peel182 to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !16
  %..i.2.peel183 = tail call i32 @llvm.smin.i32(i32 %i.et, i32 1)
  %i.ie = sext i32 %..i.2.peel183 to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !16
  %..i.3.peel184 = tail call i32 @llvm.smin.i32(i32 %i.et, i32 2)
  %i.ih = sext i32 %..i.3.peel184 to i64
  %i.ii = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !16
  %..i.4.peel185 = tail call i32 @llvm.smin.i32(i32 %i.et, i32 3)
  %i.ik = sext i32 %..i.4.peel185 to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !16
  %..i.5.peel186 = tail call i32 @llvm.smin.i32(i32 %i.et, i32 4)
  %i.in = sext i32 %..i.5.peel186 to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %1, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !16
  %..i.6.peel187 = tail call i32 @llvm.smin.i32(i32 %i.et, i32 5)
  %i.iq = sext i32 %..i.6.peel187 to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %1, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !16
  %..i.7.peel188 = tail call i32 @llvm.smin.i32(i32 %i.et, i32 6)
  %i.it = sext i32 %..i.7.peel188 to i64
  %i.iu = getelementptr inbounds [4 x i8], ptr %1, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !16
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !16
  %i.iy = add i32 %i.iv, %i.ia
  %i.iz = add i32 %i.is, %i.id
  %i.ja = mul i32 %i.iz, 21
  %i.jb = add i32 %i.ip, %i.ig
  %.neg.peel189 = mul i32 %i.jb, -46
  %i.jc = add i32 %i.im, %i.ij
  %i.jd = mul i32 %i.jc, 161
  %i.je = shl i32 %i.iy, 3
  %reass.sub57.peel190 = sub i32 %i.ja, %i.je
  %i.jf = add i32 %reass.sub57.peel190, 128
  %i.jg = add i32 %i.jf, %.neg.peel189
  %i.jh = add i32 %i.jg, %i.jd
  %i.ji = ashr i32 %i.jh, 8
  %i.jj = sub i32 %i.ix, %i.ji
  %gep162.peel191 = getelementptr inbounds nuw i8, ptr %invariant.gep161, i64 12
  store i32 %i.jj, ptr %gep162.peel191, align 4, !tbaa !16
  %exitcond91.not.peel192 = icmp eq i32 %i.a, 4
  br i1 %exitcond91.not.peel192, label %.lr.ph.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader.peel180, %.preheader
  %indvars.iv87 = phi i64 [ %i.ki, %.preheader ], [ 4, %.preheader.peel180 ] ; 10 uses
  %i.jk = trunc i64 %indvars.iv87 to i32
  %i.jl = add i32 %i.jk, -4
  %..i = tail call i32 @llvm.smin.i32(i32 %i.jl, i32 %i.et)
  %i.jm = sext i32 %..i to i64
  %i.jn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !16
  %i.jp = trunc i64 %indvars.iv87 to i32
  %i.jq = add i32 %i.jp, -3
  %..i.1 = tail call i32 @llvm.smin.i32(i32 %i.jq, i32 %i.et)
  %i.jr = sext i32 %..i.1 to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !16
  %i.ju = trunc i64 %indvars.iv87 to i32
  %i.jv = add i32 %i.ju, -2
  %..i.2 = tail call i32 @llvm.smin.i32(i32 %i.jv, i32 %i.et)
  %i.jw = sext i32 %..i.2 to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !16
  %i.jz = trunc i64 %indvars.iv87 to i32
  %i.ka = add i32 %i.jz, -1
  %..i.3 = tail call i32 @llvm.smin.i32(i32 %i.ka, i32 %i.et)
  %i.kb = sext i32 %..i.3 to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !16
  %i.ke = trunc nsw i64 %indvars.iv87 to i32
  %..i.4 = tail call i32 @llvm.smin.i32(i32 %i.ke, i32 %i.et)
  %i.kf = sext i32 %..i.4 to i64
  %i.kg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !16
  %i.ki = add nuw nsw i64 %indvars.iv87, 1        ; 3 uses
  %i.kj = trunc nsw i64 %i.ki to i32
  %..i.5 = tail call i32 @llvm.smin.i32(i32 %i.kj, i32 %i.et)
  %i.kk = sext i32 %..i.5 to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !16
  %i.kn = trunc i64 %indvars.iv87 to i32
  %i.ko = add i32 %i.kn, 2
  %..i.6 = tail call i32 @llvm.smin.i32(i32 %i.ko, i32 %i.et)
  %i.kp = sext i32 %..i.6 to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !16
  %i.ks = trunc i64 %indvars.iv87 to i32
  %i.kt = add i32 %i.ks, 3
  %..i.7 = tail call i32 @llvm.smin.i32(i32 %i.kt, i32 %i.et)
  %i.ku = sext i32 %..i.7 to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !16
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv87
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !16
  %i.kz = add i32 %i.kw, %i.jo
  %i.la = add i32 %i.kr, %i.jt
  %i.lb = mul i32 %i.la, 21
  %i.lc = add i32 %i.km, %i.jy
  %.neg = mul i32 %i.lc, -46
  %i.ld = add i32 %i.kh, %i.kd
  %i.le = mul i32 %i.ld, 161
  %i.lf = shl i32 %i.kz, 3
  %reass.sub57 = sub i32 %i.lb, %i.lf
  %i.lg = add i32 %reass.sub57, 128
  %i.lh = add i32 %i.lg, %.neg
  %i.li = add i32 %i.lh, %i.le
  %i.lj = ashr i32 %i.li, 8
  %i.lk = sub i32 %i.ky, %i.lj
  %gep162 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep161, i64 %indvars.iv87
  store i32 %i.lk, ptr %gep162, align 4, !tbaa !16
  %exitcond91.not = icmp eq i64 %i.ki, %wide.trip.count90
  br i1 %exitcond91.not, label %.lr.ph.preheader, label %.preheader, !llvm.loop !718

.lr.ph.preheader:                                 ; preds = %.preheader.peel.next92, %.preheader.peel180, %.preheader, %.preheader.lr.ph, %.preheader.peel.next
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eu ; 6 uses
  %wide.trip.count118 = zext nneg i32 %i.a to i64
  %min.iters.check = icmp ult i32 %i.a, 12
  br i1 %min.iters.check, label %.lr.ph.preheader171, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.lm = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.lm  ; 2 uses
  %scevgep163 = getelementptr i8, ptr %1, i64 %i.lm
  %bound0 = icmp ult ptr %0, %i.ll
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0164 = icmp ult ptr %0, %scevgep163
  %bound1165 = icmp ult ptr %i.ll, %scevgep
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx = or i1 %found.conflict, %found.conflict166
  br i1 %conflict.rdx, label %.lr.ph.preheader171, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %index ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %wide.load = load <2 x i32>, ptr %i.ln, align 4, !tbaa !16, !alias.scope !719
  %wide.load167 = load <2 x i32>, ptr %i.lo, align 4, !tbaa !16, !alias.scope !719
  %i.lp = shl nuw nsw i64 %index, 3
  %i.lq = shl i64 %index, 3
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 %i.lp
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 %i.lq
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %wide.load168 = load <2 x i32>, ptr %i.lu, align 4, !tbaa !16, !alias.scope !722
  %wide.load169 = load <2 x i32>, ptr %i.lv, align 4, !tbaa !16, !alias.scope !722
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load168, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.lr, align 4, !tbaa !16, !alias.scope !724, !noalias !726
  %interleaved.vec170 = shufflevector <2 x i32> %wide.load167, <2 x i32> %wide.load169, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec170, ptr %i.lt, align 4, !tbaa !16, !alias.scope !724, !noalias !726
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lw = icmp eq i64 %index.next, %n.vec
  br i1 %i.lw, label %middle.block, label %vector.body, !llvm.loop !727

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %interleave_12bit.exit, label %.lr.ph.preheader171

.lr.ph.preheader171:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv115.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %i.eu, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader171
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv115.ph
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !16
  %.idx.prol = shl nuw nsw i64 %indvars.iv115.ph, 3
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.prol ; 2 uses
  store i32 %i.ly, ptr %i.lz, align 4, !tbaa !16
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv115.ph
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !16
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  store i32 %i.mb, ptr %i.mc, align 4, !tbaa !16
  %indvars.iv.next116.prol = or disjoint i64 %indvars.iv115.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader171
  %indvars.iv115.unr = phi i64 [ %indvars.iv115.ph, %.lr.ph.preheader171 ], [ %indvars.iv.next116.prol, %.lr.ph.prol ]
  %i.md = add nsw i64 %i.eu, -1
  %i.me = icmp eq i64 %indvars.iv115.ph, %i.md
  br i1 %i.me, label %interleave_12bit.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv115 = phi i64 [ %indvars.iv.next116.1, %.lr.ph ], [ %indvars.iv115.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv115
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !16
  %.idx = shl nuw nsw i64 %indvars.iv115, 3
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !16
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv115
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !16
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !16
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv.next116
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !16
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next116, 3
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1 ; 2 uses
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !16
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next116
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !16
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !16
  %indvars.iv.next116.1 = add nuw nsw i64 %indvars.iv115, 2 ; 2 uses
  %exitcond119.not.1 = icmp eq i64 %indvars.iv.next116.1, %wide.trip.count118
  br i1 %exitcond119.not.1, label %interleave_12bit.exit, label %.lr.ph, !llvm.loop !728

interleave_12bit.exit:                            ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @spatial_compose_daub97i_dy_12bit(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = sext i32 %1 to i64
  %i.k = getelementptr inbounds [72 x i8], ptr %i.i, i64 %i.j ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !22   ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !26 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !26 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !26 ; 4 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !26 ; 4 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.o = add nsw i32 %i.m, 3                      ; 4 uses
  %i.p = add nsw i32 %3, -1                       ; 7 uses
  %.not.i51 = icmp eq i32 %i.p, 0
  br i1 %.not.i51, label %avpriv_mirror.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %.lr.ph, label %avpriv_mirror.exit56

.lr.ph:                                           ; preds = %.preheader
  %i.r = shl nsw i32 %i.p, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.09.i5259 = phi i32 [ %i.o, %.lr.ph ], [ %.1.i55, %bb.b ] ; 2 uses
  %i.s = icmp sgt i32 %.09.i5259, 0
  %spec.select.i54 = select i1 %i.s, i32 %i.r, i32 0
  %.1.i55 = sub nsw i32 %spec.select.i54, %.09.i5259 ; 3 uses
  %i.t = icmp ugt i32 %.1.i55, %i.p
  br i1 %i.t, label %bb.b, label %avpriv_mirror.exit56, !llvm.loop !30

avpriv_mirror.exit56:                             ; preds = %bb.b, %.preheader
  %.09.i52.lcssa = phi i32 [ %i.o, %.preheader ], [ %.1.i55, %bb.b ]
  %i.u = mul nsw i32 %.09.i52.lcssa, %4
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.n, i64 %i.v ; 2 uses
  %i.x = add nsw i32 %i.m, 4                      ; 3 uses
  %i.y = icmp ugt i32 %i.x, %i.p
  br i1 %i.y, label %.lr.ph61, label %avpriv_mirror.exit

.lr.ph61:                                         ; preds = %avpriv_mirror.exit56
  %i.z = shl nsw i32 %i.p, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph61, %bb.c
  %.09.i60 = phi i32 [ %i.x, %.lr.ph61 ], [ %.1.i, %bb.c ] ; 2 uses
  %i.aa = icmp sgt i32 %.09.i60, 0
  %spec.select.i = select i1 %i.aa, i32 %i.z, i32 0
  %.1.i = sub nsw i32 %spec.select.i, %.09.i60    ; 3 uses
  %i.ab = icmp ugt i32 %.1.i, %i.p
  br i1 %i.ab, label %bb.c, label %avpriv_mirror.exit, !llvm.loop !30

avpriv_mirror.exit:                               ; preds = %bb.c, %bb.a, %avpriv_mirror.exit56
  %.sroa.15.0 = phi ptr [ %i.w, %avpriv_mirror.exit56 ], [ %i.n, %bb.a ], [ %i.w, %bb.c ] ; 3 uses
  %.0.i = phi i32 [ %i.x, %avpriv_mirror.exit56 ], [ 0, %bb.a ], [ %.1.i, %bb.c ]
  %i.ac = mul nsw i32 %.0.i, %4
  %i.ad = sext i32 %i.ac to i64
end_hunk_2
