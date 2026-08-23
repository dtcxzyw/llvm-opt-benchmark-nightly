Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9dsp_10bpp?download=true
inline.NumInlined: 17
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 180
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 192
begin_hunk_0_@diag_downleft_32x32_c:vector.ph
  %wide.load34 = load <4 x i16>, ptr %i.c, align 2, !tbaa !12 ; 3 uses
  %i.d = shufflevector <4 x i16> %vector.recur.init, <4 x i16> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.e = shufflevector <4 x i16> %wide.load, <4 x i16> %wide.load34, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.f = zext <4 x i16> %i.d to <4 x i32>
  %i.g = zext <4 x i16> %i.e to <4 x i32>
  %i.h = zext <4 x i16> %wide.load to <4 x i32>
  %i.i = zext <4 x i16> %wide.load34 to <4 x i32>
  %i.j = shl nuw nsw <4 x i32> %i.h, splat (i32 1)
  %i.k = shl nuw nsw <4 x i32> %i.i, splat (i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  %wide.load35 = load <4 x i16>, ptr %i.l, align 2, !tbaa !12
  %wide.load36 = load <4 x i16>, ptr %i.m, align 2, !tbaa !12
  %i.n = zext <4 x i16> %wide.load35 to <4 x i32>
  %i.o = zext <4 x i16> %wide.load36 to <4 x i32>
  %i.p = add nuw nsw <4 x i32> %i.f, splat (i32 2)
  %i.q = add nuw nsw <4 x i32> %i.g, splat (i32 2)
  %i.r = add nuw nsw <4 x i32> %i.p, %i.j
  %i.s = add nuw nsw <4 x i32> %i.q, %i.k
  %i.t = add nuw nsw <4 x i32> %i.r, %i.n
  %i.u = add nuw nsw <4 x i32> %i.s, %i.o
  %i.v = lshr <4 x i32> %i.t, splat (i32 2)
  %i.w = lshr <4 x i32> %i.u, splat (i32 2)
  %i.x = trunc nuw <4 x i32> %i.v to <4 x i16>
  %i.y = trunc nuw <4 x i32> %i.w to <4 x i16>
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store <4 x i16> %i.x, ptr %i.a, align 16, !tbaa !12
  store <4 x i16> %i.y, ptr %i.z, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 26
  %wide.load.1 = load <4 x i16>, ptr %i.aa, align 2, !tbaa !12 ; 3 uses
  %wide.load34.1 = load <4 x i16>, ptr %i.ab, align 2, !tbaa !12 ; 3 uses
  %i.ac = shufflevector <4 x i16> %wide.load34, <4 x i16> %wide.load.1, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ad = shufflevector <4 x i16> %wide.load.1, <4 x i16> %wide.load34.1, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ae = zext <4 x i16> %i.ac to <4 x i32>
  %i.af = zext <4 x i16> %i.ad to <4 x i32>
  %i.ag = zext <4 x i16> %wide.load.1 to <4 x i32>
  %i.ah = zext <4 x i16> %wide.load34.1 to <4 x i32>
  %i.ai = shl nuw nsw <4 x i32> %i.ag, splat (i32 1)
  %i.aj = shl nuw nsw <4 x i32> %i.ah, splat (i32 1)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 28
  %wide.load35.1 = load <4 x i16>, ptr %i.ak, align 2, !tbaa !12
  %wide.load36.1 = load <4 x i16>, ptr %i.al, align 2, !tbaa !12
  %i.am = zext <4 x i16> %wide.load35.1 to <4 x i32>
  %i.an = zext <4 x i16> %wide.load36.1 to <4 x i32>
  %i.ao = add nuw nsw <4 x i32> %i.ae, splat (i32 2)
  %i.ap = add nuw nsw <4 x i32> %i.af, splat (i32 2)
  %i.aq = add nuw nsw <4 x i32> %i.ao, %i.ai
  %i.ar = add nuw nsw <4 x i32> %i.ap, %i.aj
  %i.as = add nuw nsw <4 x i32> %i.aq, %i.am
  %i.at = add nuw nsw <4 x i32> %i.ar, %i.an
  %i.au = lshr <4 x i32> %i.as, splat (i32 2)
  %i.av = lshr <4 x i32> %i.at, splat (i32 2)
  %i.aw = trunc nuw <4 x i32> %i.au to <4 x i16>
  %i.ax = trunc nuw <4 x i32> %i.av to <4 x i16>
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <4 x i16> %i.aw, ptr %i.ay, align 16, !tbaa !12
  store <4 x i16> %i.ax, ptr %i.az, align 8, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 34
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 42
  %wide.load.2 = load <4 x i16>, ptr %i.ba, align 2, !tbaa !12 ; 3 uses
  %wide.load34.2 = load <4 x i16>, ptr %i.bb, align 2, !tbaa !12 ; 3 uses
  %i.bc = shufflevector <4 x i16> %wide.load34.1, <4 x i16> %wide.load.2, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bd = shufflevector <4 x i16> %wide.load.2, <4 x i16> %wide.load34.2, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.be = zext <4 x i16> %i.bc to <4 x i32>
  %i.bf = zext <4 x i16> %i.bd to <4 x i32>
  %i.bg = zext <4 x i16> %wide.load.2 to <4 x i32>
  %i.bh = zext <4 x i16> %wide.load34.2 to <4 x i32>
  %i.bi = shl nuw nsw <4 x i32> %i.bg, splat (i32 1)
  %i.bj = shl nuw nsw <4 x i32> %i.bh, splat (i32 1)
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 44
  %wide.load35.2 = load <4 x i16>, ptr %i.bk, align 2, !tbaa !12
  %wide.load36.2 = load <4 x i16>, ptr %i.bl, align 2, !tbaa !12
  %i.bm = zext <4 x i16> %wide.load35.2 to <4 x i32>
  %i.bn = zext <4 x i16> %wide.load36.2 to <4 x i32>
  %i.bo = add nuw nsw <4 x i32> %i.be, splat (i32 2)
  %i.bp = add nuw nsw <4 x i32> %i.bf, splat (i32 2)
  %i.bq = add nuw nsw <4 x i32> %i.bo, %i.bi
  %i.br = add nuw nsw <4 x i32> %i.bp, %i.bj
  %i.bs = add nuw nsw <4 x i32> %i.bq, %i.bm
  %i.bt = add nuw nsw <4 x i32> %i.br, %i.bn
  %i.bu = lshr <4 x i32> %i.bs, splat (i32 2)
  %i.bv = lshr <4 x i32> %i.bt, splat (i32 2)
  %i.bw = trunc nuw <4 x i32> %i.bu to <4 x i16>
  %i.bx = trunc nuw <4 x i32> %i.bv to <4 x i16>
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store <4 x i16> %i.bw, ptr %i.by, align 16, !tbaa !12
  store <4 x i16> %i.bx, ptr %i.bz, align 8, !tbaa !12
  %vector.recur.extract = extractelement <4 x i16> %wide.load34.2, i64 3
  %i.ca = zext i16 %vector.recur.extract to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 50
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !12 ; 2 uses
  %i.cd = zext i16 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !12
  %i.ch = zext i16 %i.cg to i32
  %i.ci = add nuw nsw i32 %i.ca, 2
  %i.cj = add nuw nsw i32 %i.ci, %i.ce
  %i.ck = add nuw nsw i32 %i.cj, %i.ch
  %i.cl = lshr i32 %i.ck, 2
  %i.cm = trunc nuw i32 %i.cl to i16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i16 %i.cm, ptr %i.cn, align 16, !tbaa !12
  %i.co = zext i16 %i.cc to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !12 ; 2 uses
  %i.cr = zext i16 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 54
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !12
  %i.cv = zext i16 %i.cu to i32
  %i.cw = add nuw nsw i32 %i.co, 2
  %i.cx = add nuw nsw i32 %i.cw, %i.cs
  %i.cy = add nuw nsw i32 %i.cx, %i.cv
  %i.cz = lshr i32 %i.cy, 2
  %i.da = trunc nuw i32 %i.cz to i16
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  store i16 %i.da, ptr %i.db, align 2, !tbaa !12
  %i.dc = zext i16 %i.cq to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 54
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !12 ; 2 uses
  %i.df = zext i16 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !12
  %i.dj = zext i16 %i.di to i32
  %i.dk = add nuw nsw i32 %i.dc, 2
  %i.dl = add nuw nsw i32 %i.dk, %i.dg
  %i.dm = add nuw nsw i32 %i.dl, %i.dj
  %i.dn = lshr i32 %i.dm, 2
  %i.do = trunc nuw i32 %i.dn to i16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i16 %i.do, ptr %i.dp, align 4, !tbaa !12
  %i.dq = zext i16 %i.de to i32
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !12 ; 2 uses
  %i.dt = zext i16 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 58
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !12
  %i.dx = zext i16 %i.dw to i32
  %i.dy = add nuw nsw i32 %i.dq, 2
  %i.dz = add nuw nsw i32 %i.dy, %i.du
  %i.ea = add nuw nsw i32 %i.dz, %i.dx
  %i.eb = lshr i32 %i.ea, 2
  %i.ec = trunc nuw i32 %i.eb to i16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 54
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !12
  %i.ee = zext i16 %i.ds to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 58
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !12 ; 2 uses
  %i.eh = zext i16 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 1
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !12
  %i.el = zext i16 %i.ek to i32
  %i.em = add nuw nsw i32 %i.ee, 2
  %i.en = add nuw nsw i32 %i.em, %i.ei
  %i.eo = add nuw nsw i32 %i.en, %i.el
  %i.ep = lshr i32 %i.eo, 2
  %i.eq = trunc nuw i32 %i.ep to i16
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i16 %i.eq, ptr %i.er, align 8, !tbaa !12
  %i.es = zext i16 %i.eg to i32
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !12
  %i.ev = zext i16 %i.eu to i32
  %i.ew = shl nuw nsw i32 %i.ev, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 62
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !12
  %i.ez = zext i16 %i.ey to i32
  %i.fa = add nuw nsw i32 %i.es, 2
  %i.fb = add nuw nsw i32 %i.fa, %i.ew
  %i.fc = add nuw nsw i32 %i.fb, %i.ez
  %i.fd = lshr i32 %i.fc, 2
  %i.fe = trunc nuw i32 %i.fd to i16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !12
  %i.fg = lshr i64 %1, 1
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !12
  %i.fj = zext i16 %i.fi to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 62 ; 2 uses
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !12
  %i.fm = zext i16 %i.fl to i32
  %i.fn = mul nuw nsw i32 %i.fm, 3
  %i.fo = add nuw nsw i32 %i.fj, 2
  %i.fp = add nuw nsw i32 %i.fo, %i.fn
  %i.fq = lshr i32 %i.fp, 2
  %i.fr = trunc nuw i32 %i.fq to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i16 %i.fr, ptr %i.fs, align 4, !tbaa !12
  br label %iter.check

iter.check:                                       ; preds = %vector.ph, %memset_bpc.exit
  %indvars.iv30 = phi i64 [ 0, %vector.ph ], [ %indvars.iv.next31, %memset_bpc.exit ] ; 7 uses
  %i.ft = mul nuw nsw i64 %i.fg, %indvars.iv30
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ft ; 2 uses
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv30
  %i.fw = shl nuw nsw i64 %indvars.iv30, 1
  %i.fx = sub nuw nsw i64 62, %i.fw
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.fu, ptr nonnull align 2 %i.fv, i64 %i.fx, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 62 ; 3 uses
  %i.fz = load i16, ptr %i.fk, align 2, !tbaa !12 ; 3 uses
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 7 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv30, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check38 = icmp samesign ult i64 %indvars.iv30, 15
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph39

vector.ph39:                                      ; preds = %vector.main.loop.iter.check
  %i.ga = and i64 %indvars.iv.next31, 12
  %n.vec = and i64 %indvars.iv.next31, 9223372036854775792 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.fz, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %vector.ph39
  %index41 = phi i64 [ 0, %vector.ph39 ], [ %index.next42, %vector.body40 ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.fy, i64 %index41 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.gb, align 2, !tbaa !12
  store <8 x i16> %broadcast.splat, ptr %i.gc, align 2, !tbaa !12
  %index.next42 = add nuw i64 %index41, 16        ; 2 uses
  %i.gd = icmp eq i64 %index.next42, %n.vec
  br i1 %i.gd, label %middle.block43, label %vector.body40, !llvm.loop !19

middle.block43:                                   ; preds = %vector.body40
  %cmp.n = icmp eq i64 %indvars.iv.next31, %n.vec
  br i1 %cmp.n, label %memset_bpc.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block43
  %min.epilog.iters.check = icmp eq i64 %i.ga, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %indvars.iv.next31, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert45 = insertelement <4 x i16> poison, i16 %i.fz, i64 0
  %broadcast.splat46 = shufflevector <4 x i16> %broadcast.splatinsert45, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.fy, i64 %index47
  store <4 x i16> %broadcast.splat46, ptr %i.ge, align 2, !tbaa !12
  %index.next48 = add nuw i64 %index47, 4         ; 2 uses
  %i.gf = icmp eq i64 %index.next48, %n.vec44
  br i1 %i.gf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %indvars.iv.next31, %n.vec44
  br i1 %cmp.n49, label %memset_bpc.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec44, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.fy, i64 %indvars.iv.i
  store i16 %i.fz, ptr %i.gg, align 2, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %indvars.iv30
  br i1 %exitcond.not.i, label %memset_bpc.exit, label %vec.epilog.scalar.ph, !llvm.loop !24

memset_bpc.exit:                                  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block43
  %exitcond33.not = icmp eq i64 %indvars.iv.next31, 32
  br i1 %exitcond33.not, label %bb.a, label %iter.check, !llvm.loop !25

bb.a:                                             ; preds = %memset_bpc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @diag_downright_32x32_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #3 {
vector.ph:
  %.pre43 = load i16, ptr %3, align 2, !tbaa !12  ; 2 uses
  %.phi.trans.insert44 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.pre45 = load i16, ptr %.phi.trans.insert44, align 2, !tbaa !12 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 52
  %wide.load80.6 = load <4 x i16>, ptr %i.a, align 2, !tbaa !12 ; 4 uses
  %vector.recur.extract = extractelement <4 x i16> %wide.load80.6, i64 3 ; 2 uses
  %vector.recur.extract81 = extractelement <4 x i16> %wide.load80.6, i64 2
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 52
  %wide.load.6 = load <4 x i16>, ptr %i.b, align 2, !tbaa !12 ; 4 uses
  %vector.recur.extract82 = extractelement <4 x i16> %wide.load.6, i64 3 ; 2 uses
  %vector.recur.extract83 = extractelement <4 x i16> %wide.load.6, i64 2
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 36
  %wide.load80.4 = load <4 x i16>, ptr %i.c, align 2, !tbaa !12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 44
  %wide.load80.5 = load <4 x i16>, ptr %i.d, align 2, !tbaa !12 ; 3 uses
  %i.e = shufflevector <4 x i16> %wide.load80.4, <4 x i16> %wide.load80.5, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.f = shufflevector <4 x i16> %wide.load80.5, <4 x i16> %wide.load80.6, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 2 uses
  %i.g = shufflevector <4 x i16> %i.e, <4 x i16> %i.f, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.h = zext <4 x i16> %i.g to <4 x i32>
  %i.i = add nuw nsw <4 x i32> %i.h, splat (i32 2)
  %i.j = zext <4 x i16> %i.f to <4 x i32>
  %i.k = shl nuw nsw <4 x i32> %i.j, splat (i32 1)
  %i.l = add nuw nsw <4 x i32> %i.i, %i.k
  %i.m = zext <4 x i16> %wide.load80.6 to <4 x i32>
  %i.n = add nuw nsw <4 x i32> %i.l, %i.m
  %i.o = lshr <4 x i32> %i.n, splat (i32 2)
  %i.p = trunc nuw <4 x i32> %i.o to <4 x i16>    ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 36
  %wide.load.4 = load <4 x i16>, ptr %i.q, align 2, !tbaa !12 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 44
  %wide.load.5 = load <4 x i16>, ptr %i.r, align 2, !tbaa !12 ; 3 uses
  %i.s = shufflevector <4 x i16> %wide.load.4, <4 x i16> %wide.load.5, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.t = shufflevector <4 x i16> %wide.load.5, <4 x i16> %wide.load.6, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 2 uses
  %i.u = shufflevector <4 x i16> %i.s, <4 x i16> %i.t, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.v = zext <4 x i16> %i.u to <4 x i32>
  %i.w = add nuw nsw <4 x i32> %i.v, splat (i32 2)
  %i.x = zext <4 x i16> %i.t to <4 x i32>
  %i.y = shl nuw nsw <4 x i32> %i.x, splat (i32 1)
  %i.z = add nuw nsw <4 x i32> %i.w, %i.y
  %i.aa = zext <4 x i16> %wide.load.6 to <4 x i32>
  %i.ab = add nuw nsw <4 x i32> %i.z, %i.aa
  %i.ac = lshr <4 x i32> %i.ab, splat (i32 2)
  %i.ad = trunc nuw <4 x i32> %i.ac to <4 x i16>  ; 28 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 28
  %wide.load80.3 = load <4 x i16>, ptr %i.ae, align 2, !tbaa !12 ; 3 uses
  %i.af = shufflevector <4 x i16> %wide.load80.3, <4 x i16> %wide.load80.4, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.ag = shufflevector <4 x i16> %i.af, <4 x i16> %i.e, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ah = zext <4 x i16> %i.ag to <4 x i32>
  %i.ai = add nuw nsw <4 x i32> %i.ah, splat (i32 2)
  %i.aj = zext <4 x i16> %i.e to <4 x i32>
  %i.ak = shl nuw nsw <4 x i32> %i.aj, splat (i32 1)
  %i.al = add nuw nsw <4 x i32> %i.ai, %i.ak
  %i.am = zext <4 x i16> %wide.load80.5 to <4 x i32>
  %i.an = add nuw nsw <4 x i32> %i.al, %i.am
  %i.ao = lshr <4 x i32> %i.an, splat (i32 2)
  %i.ap = trunc nuw <4 x i32> %i.ao to <4 x i16>  ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 28
  %wide.load.3 = load <4 x i16>, ptr %i.aq, align 2, !tbaa !12 ; 3 uses
  %i.ar = shufflevector <4 x i16> %wide.load.3, <4 x i16> %wide.load.4, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.as = shufflevector <4 x i16> %i.ar, <4 x i16> %i.s, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.at = zext <4 x i16> %i.as to <4 x i32>
  %i.au = add nuw nsw <4 x i32> %i.at, splat (i32 2)
  %i.av = zext <4 x i16> %i.s to <4 x i32>
  %i.aw = shl nuw nsw <4 x i32> %i.av, splat (i32 1)
  %i.ax = add nuw nsw <4 x i32> %i.au, %i.aw
  %i.ay = zext <4 x i16> %wide.load.5 to <4 x i32>
  %i.az = add nuw nsw <4 x i32> %i.ax, %i.ay
  %i.ba = lshr <4 x i32> %i.az, splat (i32 2)
  %i.bb = trunc nuw <4 x i32> %i.ba to <4 x i16>  ; 24 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 20
  %wide.load80.2 = load <4 x i16>, ptr %i.bc, align 2, !tbaa !12 ; 3 uses
  %i.bd = shufflevector <4 x i16> %wide.load80.2, <4 x i16> %wide.load80.3, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.be = shufflevector <4 x i16> %i.bd, <4 x i16> %i.af, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bf = zext <4 x i16> %i.be to <4 x i32>
  %i.bg = add nuw nsw <4 x i32> %i.bf, splat (i32 2)
  %i.bh = zext <4 x i16> %i.af to <4 x i32>
  %i.bi = shl nuw nsw <4 x i32> %i.bh, splat (i32 1)
  %i.bj = add nuw nsw <4 x i32> %i.bg, %i.bi
  %i.bk = zext <4 x i16> %wide.load80.4 to <4 x i32>
  %i.bl = add nuw nsw <4 x i32> %i.bj, %i.bk
  %i.bm = lshr <4 x i32> %i.bl, splat (i32 2)
  %i.bn = trunc nuw <4 x i32> %i.bm to <4 x i16>  ; 14 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 20
  %wide.load.2 = load <4 x i16>, ptr %i.bo, align 2, !tbaa !12 ; 3 uses
  %i.bp = shufflevector <4 x i16> %wide.load.2, <4 x i16> %wide.load.3, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.bq = shufflevector <4 x i16> %i.bp, <4 x i16> %i.ar, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.br = zext <4 x i16> %i.bq to <4 x i32>
  %i.bs = add nuw nsw <4 x i32> %i.br, splat (i32 2)
  %i.bt = zext <4 x i16> %i.ar to <4 x i32>
  %i.bu = shl nuw nsw <4 x i32> %i.bt, splat (i32 1)
  %i.bv = add nuw nsw <4 x i32> %i.bs, %i.bu
  %i.bw = zext <4 x i16> %wide.load.4 to <4 x i32>
  %i.bx = add nuw nsw <4 x i32> %i.bv, %i.bw
  %i.by = lshr <4 x i32> %i.bx, splat (i32 2)
  %i.bz = trunc nuw <4 x i32> %i.by to <4 x i16>  ; 20 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 12
  %wide.load80.1 = load <4 x i16>, ptr %i.ca, align 2, !tbaa !12 ; 3 uses
  %i.cb = shufflevector <4 x i16> %wide.load80.1, <4 x i16> %wide.load80.2, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.cc = shufflevector <4 x i16> %i.cb, <4 x i16> %i.bd, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cd = zext <4 x i16> %i.cc to <4 x i32>
  %i.ce = add nuw nsw <4 x i32> %i.cd, splat (i32 2)
  %i.cf = zext <4 x i16> %i.bd to <4 x i32>
  %i.cg = shl nuw nsw <4 x i32> %i.cf, splat (i32 1)
  %i.ch = add nuw nsw <4 x i32> %i.ce, %i.cg
  %i.ci = zext <4 x i16> %wide.load80.3 to <4 x i32>
  %i.cj = add nuw nsw <4 x i32> %i.ch, %i.ci
  %i.ck = lshr <4 x i32> %i.cj, splat (i32 2)
  %i.cl = trunc nuw <4 x i32> %i.ck to <4 x i16>  ; 18 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 12
  %wide.load.1 = load <4 x i16>, ptr %i.cm, align 2, !tbaa !12 ; 3 uses
  %i.cn = shufflevector <4 x i16> %wide.load.1, <4 x i16> %wide.load.2, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.co = shufflevector <4 x i16> %i.cn, <4 x i16> %i.bp, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cp = zext <4 x i16> %i.co to <4 x i32>
  %i.cq = add nuw nsw <4 x i32> %i.cp, splat (i32 2)
  %i.cr = zext <4 x i16> %i.bp to <4 x i32>
  %i.cs = shl nuw nsw <4 x i32> %i.cr, splat (i32 1)
  %i.ct = add nuw nsw <4 x i32> %i.cq, %i.cs
  %i.cu = zext <4 x i16> %wide.load.3 to <4 x i32>
  %i.cv = add nuw nsw <4 x i32> %i.ct, %i.cu
  %i.cw = lshr <4 x i32> %i.cv, splat (i32 2)
  %i.cx = trunc nuw <4 x i32> %i.cw to <4 x i16>  ; 16 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 4
  %wide.load80 = load <4 x i16>, ptr %i.cy, align 2, !tbaa !12 ; 3 uses
  %i.cz = shufflevector <4 x i16> %wide.load80, <4 x i16> %wide.load80.1, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.da = shufflevector <4 x i16> %i.cz, <4 x i16> %i.cb, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.db = zext <4 x i16> %i.da to <4 x i32>
  %i.dc = add nuw nsw <4 x i32> %i.db, splat (i32 2)
  %i.dd = zext <4 x i16> %i.cb to <4 x i32>
  %i.de = shl nuw nsw <4 x i32> %i.dd, splat (i32 1)
  %i.df = add nuw nsw <4 x i32> %i.dc, %i.de
  %i.dg = zext <4 x i16> %wide.load80.2 to <4 x i32>
  %i.dh = add nuw nsw <4 x i32> %i.df, %i.dg
  %i.di = lshr <4 x i32> %i.dh, splat (i32 2)
  %i.dj = trunc nuw <4 x i32> %i.di to <4 x i16>  ; 22 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 4
  %wide.load = load <4 x i16>, ptr %i.dk, align 2, !tbaa !12 ; 3 uses
  %i.dl = shufflevector <4 x i16> %wide.load, <4 x i16> %wide.load.1, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.dm = shufflevector <4 x i16> %i.dl, <4 x i16> %i.cn, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dn = zext <4 x i16> %i.dm to <4 x i32>
  %i.do = add nuw nsw <4 x i32> %i.dn, splat (i32 2)
  %i.dp = zext <4 x i16> %i.cn to <4 x i32>
  %i.dq = shl nuw nsw <4 x i32> %i.dp, splat (i32 1)
  %i.dr = add nuw nsw <4 x i32> %i.do, %i.dq
  %i.ds = zext <4 x i16> %wide.load.2 to <4 x i32>
  %i.dt = add nuw nsw <4 x i32> %i.dr, %i.ds
  %i.du = lshr <4 x i32> %i.dt, splat (i32 2)
  %i.dv = trunc nuw <4 x i32> %i.du to <4 x i16>  ; 12 uses
  %vector.recur.init = insertelement <4 x i16> poison, i16 %.pre45, i64 3
  %i.dw = shufflevector <4 x i16> %vector.recur.init, <4 x i16> %wide.load80, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.dx = shufflevector <4 x i16> %i.dw, <4 x i16> %i.cz, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dy = zext <4 x i16> %i.dx to <4 x i32>
  %i.dz = add nuw nsw <4 x i32> %i.dy, splat (i32 2)
  %i.ea = zext <4 x i16> %i.cz to <4 x i32>
  %i.eb = shl nuw nsw <4 x i32> %i.ea, splat (i32 1)
  %i.ec = add nuw nsw <4 x i32> %i.dz, %i.eb
  %i.ed = zext <4 x i16> %wide.load80.1 to <4 x i32>
  %i.ee = add nuw nsw <4 x i32> %i.ec, %i.ed
  %i.ef = lshr <4 x i32> %i.ee, splat (i32 2)
  %i.eg = trunc nuw <4 x i32> %i.ef to <4 x i16>  ; 26 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.pre42 = load i16, ptr %.phi.trans.insert, align 2, !tbaa !12
  %vector.recur.init76 = insertelement <4 x i16> poison, i16 %.pre42, i64 3
  %i.eh = shufflevector <4 x i16> %vector.recur.init76, <4 x i16> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.ei = shufflevector <4 x i16> %i.eh, <4 x i16> %i.dl, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ej = zext <4 x i16> %i.ei to <4 x i32>
  %i.ek = add nuw nsw <4 x i32> %i.ej, splat (i32 2)
  %i.el = zext <4 x i16> %i.dl to <4 x i32>
  %i.em = shl nuw nsw <4 x i32> %i.el, splat (i32 1)
  %i.en = add nuw nsw <4 x i32> %i.ek, %i.em
  %i.eo = zext <4 x i16> %wide.load.1 to <4 x i32>
  %i.ep = add nuw nsw <4 x i32> %i.en, %i.eo
  %i.eq = lshr <4 x i32> %i.ep, splat (i32 2)
  %i.er = trunc nuw <4 x i32> %i.eq to <4 x i16>  ; 8 uses
  %vector.recur.init74 = insertelement <4 x i16> poison, i16 %.pre43, i64 3
  %i.es = shufflevector <4 x i16> %vector.recur.init74, <4 x i16> %i.dw, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.et = zext <4 x i16> %i.es to <4 x i32>
  %i.eu = add nuw nsw <4 x i32> %i.et, splat (i32 2)
  %i.ev = zext <4 x i16> %i.dw to <4 x i32>
  %i.ew = shl nuw nsw <4 x i32> %i.ev, splat (i32 1)
  %i.ex = add nuw nsw <4 x i32> %i.eu, %i.ew
  %i.ey = zext <4 x i16> %wide.load80 to <4 x i32>
  %i.ez = add nuw nsw <4 x i32> %i.ex, %i.ey
  %i.fa = lshr <4 x i32> %i.ez, splat (i32 2)
end_hunk_0
begin_hunk_1_@vert_left_32x32_c:vector.ph
  %i.r = trunc nuw <4 x i32> %i.q to <4 x i16>
  store <4 x i16> %i.r, ptr %i.b, align 16, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 10
  %wide.load.1 = load <4 x i16>, ptr %i.s, align 2, !tbaa !12 ; 3 uses
  %i.t = shufflevector <4 x i16> %wide.load, <4 x i16> %wide.load.1, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.u = zext <4 x i16> %i.t to <4 x i32>         ; 2 uses
  %i.v = zext <4 x i16> %wide.load.1 to <4 x i32> ; 2 uses
  %i.w = add nuw nsw <4 x i32> %i.u, splat (i32 1)
  %i.x = add nuw nsw <4 x i32> %i.w, %i.v
  %i.y = lshr <4 x i32> %i.x, splat (i32 1)
  %i.z = trunc nuw <4 x i32> %i.y to <4 x i16>
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store <4 x i16> %i.z, ptr %i.aa, align 8, !tbaa !12
  %i.ab = shl nuw nsw <4 x i32> %i.v, splat (i32 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 12
  %wide.load57.1 = load <4 x i16>, ptr %i.ac, align 2, !tbaa !12
  %i.ad = zext <4 x i16> %wide.load57.1 to <4 x i32>
  %i.ae = add nuw nsw <4 x i32> %i.u, splat (i32 2)
  %i.af = add nuw nsw <4 x i32> %i.ae, %i.ab
  %i.ag = add nuw nsw <4 x i32> %i.af, %i.ad
  %i.ah = lshr <4 x i32> %i.ag, splat (i32 2)
  %i.ai = trunc nuw <4 x i32> %i.ah to <4 x i16>
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store <4 x i16> %i.ai, ptr %i.aj, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 18
  %wide.load.2 = load <4 x i16>, ptr %i.ak, align 2, !tbaa !12 ; 3 uses
  %i.al = shufflevector <4 x i16> %wide.load.1, <4 x i16> %wide.load.2, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.am = zext <4 x i16> %i.al to <4 x i32>       ; 2 uses
  %i.an = zext <4 x i16> %wide.load.2 to <4 x i32> ; 2 uses
  %i.ao = add nuw nsw <4 x i32> %i.am, splat (i32 1)
  %i.ap = add nuw nsw <4 x i32> %i.ao, %i.an
  %i.aq = lshr <4 x i32> %i.ap, splat (i32 1)
  %i.ar = trunc nuw <4 x i32> %i.aq to <4 x i16>
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i16> %i.ar, ptr %i.as, align 16, !tbaa !12
  %i.at = shl nuw nsw <4 x i32> %i.an, splat (i32 1)
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 20
  %wide.load57.2 = load <4 x i16>, ptr %i.au, align 2, !tbaa !12
  %i.av = zext <4 x i16> %wide.load57.2 to <4 x i32>
  %i.aw = add nuw nsw <4 x i32> %i.am, splat (i32 2)
  %i.ax = add nuw nsw <4 x i32> %i.aw, %i.at
  %i.ay = add nuw nsw <4 x i32> %i.ax, %i.av
  %i.az = lshr <4 x i32> %i.ay, splat (i32 2)
  %i.ba = trunc nuw <4 x i32> %i.az to <4 x i16>
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x i16> %i.ba, ptr %i.bb, align 16, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 26
  %wide.load.3 = load <4 x i16>, ptr %i.bc, align 2, !tbaa !12 ; 3 uses
  %i.bd = shufflevector <4 x i16> %wide.load.2, <4 x i16> %wide.load.3, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.be = zext <4 x i16> %i.bd to <4 x i32>       ; 2 uses
  %i.bf = zext <4 x i16> %wide.load.3 to <4 x i32> ; 2 uses
  %i.bg = add nuw nsw <4 x i32> %i.be, splat (i32 1)
  %i.bh = add nuw nsw <4 x i32> %i.bg, %i.bf
  %i.bi = lshr <4 x i32> %i.bh, splat (i32 1)
  %i.bj = trunc nuw <4 x i32> %i.bi to <4 x i16>
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <4 x i16> %i.bj, ptr %i.bk, align 8, !tbaa !12
  %i.bl = shl nuw nsw <4 x i32> %i.bf, splat (i32 1)
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 28
  %wide.load57.3 = load <4 x i16>, ptr %i.bm, align 2, !tbaa !12
  %i.bn = zext <4 x i16> %wide.load57.3 to <4 x i32>
  %i.bo = add nuw nsw <4 x i32> %i.be, splat (i32 2)
  %i.bp = add nuw nsw <4 x i32> %i.bo, %i.bl
  %i.bq = add nuw nsw <4 x i32> %i.bp, %i.bn
  %i.br = lshr <4 x i32> %i.bq, splat (i32 2)
  %i.bs = trunc nuw <4 x i32> %i.br to <4 x i16>
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store <4 x i16> %i.bs, ptr %i.bt, align 8, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 34
  %wide.load.4 = load <4 x i16>, ptr %i.bu, align 2, !tbaa !12 ; 3 uses
  %i.bv = shufflevector <4 x i16> %wide.load.3, <4 x i16> %wide.load.4, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bw = zext <4 x i16> %i.bv to <4 x i32>       ; 2 uses
  %i.bx = zext <4 x i16> %wide.load.4 to <4 x i32> ; 2 uses
  %i.by = add nuw nsw <4 x i32> %i.bw, splat (i32 1)
  %i.bz = add nuw nsw <4 x i32> %i.by, %i.bx
  %i.ca = lshr <4 x i32> %i.bz, splat (i32 1)
  %i.cb = trunc nuw <4 x i32> %i.ca to <4 x i16>
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i16> %i.cb, ptr %i.cc, align 16, !tbaa !12
  %i.cd = shl nuw nsw <4 x i32> %i.bx, splat (i32 1)
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 36
  %wide.load57.4 = load <4 x i16>, ptr %i.ce, align 2, !tbaa !12
  %i.cf = zext <4 x i16> %wide.load57.4 to <4 x i32>
  %i.cg = add nuw nsw <4 x i32> %i.bw, splat (i32 2)
  %i.ch = add nuw nsw <4 x i32> %i.cg, %i.cd
  %i.ci = add nuw nsw <4 x i32> %i.ch, %i.cf
  %i.cj = lshr <4 x i32> %i.ci, splat (i32 2)
  %i.ck = trunc nuw <4 x i32> %i.cj to <4 x i16>
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <4 x i16> %i.ck, ptr %i.cl, align 16, !tbaa !12
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 42
  %wide.load.5 = load <4 x i16>, ptr %i.cm, align 2, !tbaa !12 ; 3 uses
  %i.cn = shufflevector <4 x i16> %wide.load.4, <4 x i16> %wide.load.5, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.co = zext <4 x i16> %i.cn to <4 x i32>       ; 2 uses
  %i.cp = zext <4 x i16> %wide.load.5 to <4 x i32> ; 2 uses
  %i.cq = add nuw nsw <4 x i32> %i.co, splat (i32 1)
  %i.cr = add nuw nsw <4 x i32> %i.cq, %i.cp
  %i.cs = lshr <4 x i32> %i.cr, splat (i32 1)
  %i.ct = trunc nuw <4 x i32> %i.cs to <4 x i16>
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store <4 x i16> %i.ct, ptr %i.cu, align 8, !tbaa !12
  %i.cv = shl nuw nsw <4 x i32> %i.cp, splat (i32 1)
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 44
  %wide.load57.5 = load <4 x i16>, ptr %i.cw, align 2, !tbaa !12
  %i.cx = zext <4 x i16> %wide.load57.5 to <4 x i32>
  %i.cy = add nuw nsw <4 x i32> %i.co, splat (i32 2)
  %i.cz = add nuw nsw <4 x i32> %i.cy, %i.cv
  %i.da = add nuw nsw <4 x i32> %i.cz, %i.cx
  %i.db = lshr <4 x i32> %i.da, splat (i32 2)
  %i.dc = trunc nuw <4 x i32> %i.db to <4 x i16>
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store <4 x i16> %i.dc, ptr %i.dd, align 8, !tbaa !12
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 50
  %wide.load.6 = load <4 x i16>, ptr %i.de, align 2, !tbaa !12 ; 3 uses
  %i.df = shufflevector <4 x i16> %wide.load.5, <4 x i16> %wide.load.6, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dg = zext <4 x i16> %i.df to <4 x i32>       ; 2 uses
  %i.dh = zext <4 x i16> %wide.load.6 to <4 x i32> ; 2 uses
  %i.di = add nuw nsw <4 x i32> %i.dg, splat (i32 1)
  %i.dj = add nuw nsw <4 x i32> %i.di, %i.dh
  %i.dk = lshr <4 x i32> %i.dj, splat (i32 1)
  %i.dl = trunc nuw <4 x i32> %i.dk to <4 x i16>
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i16> %i.dl, ptr %i.dm, align 16, !tbaa !12
  %i.dn = shl nuw nsw <4 x i32> %i.dh, splat (i32 1)
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 52
  %wide.load57.6 = load <4 x i16>, ptr %i.do, align 2, !tbaa !12
  %i.dp = zext <4 x i16> %wide.load57.6 to <4 x i32>
  %i.dq = add nuw nsw <4 x i32> %i.dg, splat (i32 2)
  %i.dr = add nuw nsw <4 x i32> %i.dq, %i.dn
  %i.ds = add nuw nsw <4 x i32> %i.dr, %i.dp
  %i.dt = lshr <4 x i32> %i.ds, splat (i32 2)
  %i.du = trunc nuw <4 x i32> %i.dt to <4 x i16>
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <4 x i16> %i.du, ptr %i.dv, align 16, !tbaa !12
  %vector.recur.extract = extractelement <4 x i16> %wide.load.6, i64 3
  %i.dw = zext i16 %vector.recur.extract to i32   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 58
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !12 ; 2 uses
  %i.dz = zext i16 %i.dy to i32                   ; 2 uses
  %i.ea = add nuw nsw i32 %i.dw, 1
  %i.eb = add nuw nsw i32 %i.ea, %i.dz
  %i.ec = lshr i32 %i.eb, 1
  %i.ed = trunc nuw i32 %i.ec to i16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i16 %i.ed, ptr %i.ee, align 8, !tbaa !12
  %i.ef = shl nuw nsw i32 %i.dz, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !12
  %i.ei = zext i16 %i.eh to i32
  %i.ej = add nuw nsw i32 %i.dw, 2
  %i.ek = add nuw nsw i32 %i.ej, %i.ef
  %i.el = add nuw nsw i32 %i.ek, %i.ei
  %i.em = lshr i32 %i.el, 2
  %i.en = trunc nuw i32 %i.em to i16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i16 %i.en, ptr %i.eo, align 8, !tbaa !12
  %i.ep = zext i16 %i.dy to i32                   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !12
  %i.es = zext i16 %i.er to i32                   ; 2 uses
  %i.et = add nuw nsw i32 %i.ep, 1
  %i.eu = add nuw nsw i32 %i.et, %i.es
  %i.ev = lshr i32 %i.eu, 1
  %i.ew = trunc nuw i32 %i.ev to i16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !12
  %i.ey = shl nuw nsw i32 %i.es, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 62
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !12
  %i.fb = zext i16 %i.fa to i32
  %i.fc = add nuw nsw i32 %i.ep, 2
  %i.fd = add nuw nsw i32 %i.fc, %i.ey
  %i.fe = add nuw nsw i32 %i.fd, %i.fb
  %i.ff = lshr i32 %i.fe, 2
  %i.fg = trunc nuw i32 %i.ff to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !12
  %i.fi = lshr i64 %1, 1                          ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !12
  %i.fl = zext i16 %i.fk to i32                   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 62 ; 3 uses
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !12
  %i.fo = zext i16 %i.fn to i32                   ; 2 uses
  %i.fp = add nuw nsw i32 %i.fl, 1
  %i.fq = add nuw nsw i32 %i.fp, %i.fo
  %i.fr = lshr i32 %i.fq, 1
  %i.fs = trunc nuw i32 %i.fr to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i16 %i.fs, ptr %i.ft, align 4, !tbaa !12
  %i.fu = mul nuw nsw i32 %i.fo, 3
  %i.fv = add nuw nsw i32 %i.fl, 2
  %i.fw = add nuw nsw i32 %i.fv, %i.fu
  %i.fx = lshr i32 %i.fw, 2
  %i.fy = trunc nuw i32 %i.fx to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i16 %i.fy, ptr %i.fz, align 4, !tbaa !12
  br label %bb.a

bb.a:                                             ; preds = %vector.ph, %memset_bpc.exit49
  %indvars.iv53 = phi i64 [ 0, %vector.ph ], [ %indvars.iv.next54, %memset_bpc.exit49 ] ; 8 uses
  %i.ga = shl nuw nsw i64 %indvars.iv53, 1        ; 3 uses
  %i.gb = mul nuw nsw i64 %i.fi, %i.ga
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.gb ; 2 uses
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv53
  %i.ge = sub nuw nsw i64 62, %i.ga               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.gc, ptr nonnull align 2 %i.gd, i64 %i.ge, i1 false)
  %i.gf = getelementptr i8, ptr %i.gc, i64 62     ; 2 uses
  %i.gg = load i16, ptr %i.fm, align 2, !tbaa !12 ; 2 uses
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 6 uses
  %min.iters.check65 = icmp samesign ult i64 %indvars.iv53, 7
  br i1 %min.iters.check65, label %scalar.ph64.preheader, label %vector.ph66

vector.ph66:                                      ; preds = %bb.a
  %n.vec67 = and i64 %indvars.iv.next54, 9223372036854775800 ; 3 uses
  %broadcast.splatinsert68 = insertelement <8 x i16> poison, i16 %i.gg, i64 0
  %broadcast.splat69 = shufflevector <8 x i16> %broadcast.splatinsert68, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph66
  %index71 = phi i64 [ 0, %vector.ph66 ], [ %index.next72, %vector.body70 ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.gf, i64 %index71
  store <8 x i16> %broadcast.splat69, ptr %i.gh, align 2, !tbaa !12
  %index.next72 = add nuw i64 %index71, 8         ; 2 uses
  %i.gi = icmp eq i64 %index.next72, %n.vec67
  br i1 %i.gi, label %middle.block73, label %vector.body70, !llvm.loop !26

middle.block73:                                   ; preds = %vector.body70
  %cmp.n74 = icmp eq i64 %indvars.iv.next54, %n.vec67
  br i1 %cmp.n74, label %memset_bpc.exit, label %scalar.ph64.preheader

scalar.ph64.preheader:                            ; preds = %bb.a, %middle.block73
  %indvars.iv.i.ph = phi i64 [ 0, %bb.a ], [ %n.vec67, %middle.block73 ]
  br label %scalar.ph64

scalar.ph64:                                      ; preds = %scalar.ph64.preheader, %scalar.ph64
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph64 ], [ %indvars.iv.i.ph, %scalar.ph64.preheader ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.gf, i64 %indvars.iv.i
  store i16 %i.gg, ptr %i.gj, align 2, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %indvars.iv53
  br i1 %exitcond.not.i, label %memset_bpc.exit, label %scalar.ph64, !llvm.loop !27

memset_bpc.exit:                                  ; preds = %scalar.ph64, %middle.block73
  %i.gk = or disjoint i64 %i.ga, 1
  %i.gl = mul nuw nsw i64 %i.fi, %i.gk
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.gl ; 2 uses
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv53
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.gm, ptr nonnull align 2 %i.gn, i64 %i.ge, i1 false)
  %i.go = getelementptr i8, ptr %i.gm, i64 62     ; 2 uses
  %i.gp = load i16, ptr %i.fm, align 2, !tbaa !12 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv53, 7
  br i1 %min.iters.check, label %scalar.ph58.preheader, label %vector.ph59

vector.ph59:                                      ; preds = %memset_bpc.exit
  %n.vec = and i64 %indvars.iv.next54, 9223372036854775800 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.gp, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph59
  %index61 = phi i64 [ 0, %vector.ph59 ], [ %index.next62, %vector.body60 ] ; 2 uses
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %index61
  store <8 x i16> %broadcast.splat, ptr %i.gq, align 2, !tbaa !12
  %index.next62 = add nuw i64 %index61, 8         ; 2 uses
  %i.gr = icmp eq i64 %index.next62, %n.vec
  br i1 %i.gr, label %middle.block63, label %vector.body60, !llvm.loop !28

middle.block63:                                   ; preds = %vector.body60
  %cmp.n = icmp eq i64 %indvars.iv.next54, %n.vec
  br i1 %cmp.n, label %memset_bpc.exit49, label %scalar.ph58.preheader

scalar.ph58.preheader:                            ; preds = %memset_bpc.exit, %middle.block63
  %indvars.iv.i46.ph = phi i64 [ 0, %memset_bpc.exit ], [ %n.vec, %middle.block63 ]
  br label %scalar.ph58

scalar.ph58:                                      ; preds = %scalar.ph58.preheader, %scalar.ph58
  %indvars.iv.i46 = phi i64 [ %indvars.iv.next.i47, %scalar.ph58 ], [ %indvars.iv.i46.ph, %scalar.ph58.preheader ] ; 3 uses
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %indvars.iv.i46
  store i16 %i.gp, ptr %i.gs, align 2, !tbaa !12
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i46, 1
  %exitcond.not.i48 = icmp eq i64 %indvars.iv.i46, %indvars.iv53
  br i1 %exitcond.not.i48, label %memset_bpc.exit49, label %scalar.ph58, !llvm.loop !29

memset_bpc.exit49:                                ; preds = %scalar.ph58, %middle.block63
  %exitcond56.not = icmp eq i64 %indvars.iv.next54, 16
  br i1 %exitcond56.not, label %bb.b, label %bb.a, !llvm.loop !30

bb.b:                                             ; preds = %memset_bpc.exit49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @hor_up_32x32_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #3 {
vector.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 50
  %wide.load.6 = load <4 x i16>, ptr %i.a, align 2, !tbaa !12 ; 3 uses
  %vector.recur.extract = extractelement <4 x i16> %wide.load.6, i64 3
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 42
  %wide.load.5 = load <4 x i16>, ptr %i.b, align 2, !tbaa !12 ; 3 uses
  %i.c = shufflevector <4 x i16> %wide.load.5, <4 x i16> %wide.load.6, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.d = zext <4 x i16> %i.c to <4 x i32>         ; 2 uses
  %i.e = add nuw nsw <4 x i32> %i.d, splat (i32 1)
  %i.f = zext <4 x i16> %wide.load.6 to <4 x i32> ; 2 uses
  %i.g = add nuw nsw <4 x i32> %i.e, %i.f
  %i.h = lshr <4 x i32> %i.g, splat (i32 1)
  %i.i = add nuw nsw <4 x i32> %i.d, splat (i32 2)
  %i.j = shl nuw nsw <4 x i32> %i.f, splat (i32 1)
  %i.k = add nuw nsw <4 x i32> %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 52
  %wide.load81.6 = load <4 x i16>, ptr %i.l, align 2, !tbaa !12
  %i.m = zext <4 x i16> %wide.load81.6 to <4 x i32>
  %i.n = add nuw nsw <4 x i32> %i.k, %i.m
  %i.o = lshr <4 x i32> %i.n, splat (i32 2)
  %i.p = shufflevector <4 x i32> %i.h, <4 x i32> %i.o, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec.6 = trunc nuw <8 x i32> %i.p to <8 x i16> ; 19 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 34
  %wide.load.4 = load <4 x i16>, ptr %i.q, align 2, !tbaa !12 ; 3 uses
  %i.r = shufflevector <4 x i16> %wide.load.4, <4 x i16> %wide.load.5, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.s = zext <4 x i16> %i.r to <4 x i32>         ; 2 uses
  %i.t = add nuw nsw <4 x i32> %i.s, splat (i32 1)
  %i.u = zext <4 x i16> %wide.load.5 to <4 x i32> ; 2 uses
  %i.v = add nuw nsw <4 x i32> %i.t, %i.u
  %i.w = lshr <4 x i32> %i.v, splat (i32 1)
  %i.x = add nuw nsw <4 x i32> %i.s, splat (i32 2)
  %i.y = shl nuw nsw <4 x i32> %i.u, splat (i32 1)
  %i.z = add nuw nsw <4 x i32> %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 44
  %wide.load81.5 = load <4 x i16>, ptr %i.aa, align 2, !tbaa !12
  %i.ab = zext <4 x i16> %wide.load81.5 to <4 x i32>
  %i.ac = add nuw nsw <4 x i32> %i.z, %i.ab
  %i.ad = lshr <4 x i32> %i.ac, splat (i32 2)
  %i.ae = shufflevector <4 x i32> %i.w, <4 x i32> %i.ad, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec.5 = trunc nuw <8 x i32> %i.ae to <8 x i16> ; 19 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 26
  %wide.load.3 = load <4 x i16>, ptr %i.af, align 2, !tbaa !12 ; 3 uses
  %i.ag = shufflevector <4 x i16> %wide.load.3, <4 x i16> %wide.load.4, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ah = zext <4 x i16> %i.ag to <4 x i32>       ; 2 uses
  %i.ai = add nuw nsw <4 x i32> %i.ah, splat (i32 1)
  %i.aj = zext <4 x i16> %wide.load.4 to <4 x i32> ; 2 uses
  %i.ak = add nuw nsw <4 x i32> %i.ai, %i.aj
  %i.al = lshr <4 x i32> %i.ak, splat (i32 1)
  %i.am = add nuw nsw <4 x i32> %i.ah, splat (i32 2)
  %i.an = shl nuw nsw <4 x i32> %i.aj, splat (i32 1)
  %i.ao = add nuw nsw <4 x i32> %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 36
  %wide.load81.4 = load <4 x i16>, ptr %i.ap, align 2, !tbaa !12
  %i.aq = zext <4 x i16> %wide.load81.4 to <4 x i32>
  %i.ar = add nuw nsw <4 x i32> %i.ao, %i.aq
  %i.as = lshr <4 x i32> %i.ar, splat (i32 2)
  %i.at = shufflevector <4 x i32> %i.al, <4 x i32> %i.as, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec.4 = trunc nuw <8 x i32> %i.at to <8 x i16> ; 19 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 18
  %wide.load.2 = load <4 x i16>, ptr %i.au, align 2, !tbaa !12 ; 3 uses
  %i.av = shufflevector <4 x i16> %wide.load.2, <4 x i16> %wide.load.3, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.aw = zext <4 x i16> %i.av to <4 x i32>       ; 2 uses
  %i.ax = add nuw nsw <4 x i32> %i.aw, splat (i32 1)
  %i.ay = zext <4 x i16> %wide.load.3 to <4 x i32> ; 2 uses
  %i.az = add nuw nsw <4 x i32> %i.ax, %i.ay
  %i.ba = lshr <4 x i32> %i.az, splat (i32 1)
  %i.bb = add nuw nsw <4 x i32> %i.aw, splat (i32 2)
  %i.bc = shl nuw nsw <4 x i32> %i.ay, splat (i32 1)
  %i.bd = add nuw nsw <4 x i32> %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 28
  %wide.load81.3 = load <4 x i16>, ptr %i.be, align 2, !tbaa !12
  %i.bf = zext <4 x i16> %wide.load81.3 to <4 x i32>
  %i.bg = add nuw nsw <4 x i32> %i.bd, %i.bf
  %i.bh = lshr <4 x i32> %i.bg, splat (i32 2)
  %i.bi = shufflevector <4 x i32> %i.ba, <4 x i32> %i.bh, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec.3 = trunc nuw <8 x i32> %i.bi to <8 x i16> ; 16 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %wide.load.1 = load <4 x i16>, ptr %i.bj, align 2, !tbaa !12 ; 3 uses
  %i.bk = shufflevector <4 x i16> %wide.load.1, <4 x i16> %wide.load.2, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bl = zext <4 x i16> %i.bk to <4 x i32>       ; 2 uses
  %i.bm = add nuw nsw <4 x i32> %i.bl, splat (i32 1)
  %i.bn = zext <4 x i16> %wide.load.2 to <4 x i32> ; 2 uses
  %i.bo = add nuw nsw <4 x i32> %i.bm, %i.bn
  %i.bp = lshr <4 x i32> %i.bo, splat (i32 1)
  %i.bq = add nuw nsw <4 x i32> %i.bl, splat (i32 2)
  %i.br = shl nuw nsw <4 x i32> %i.bn, splat (i32 1)
  %i.bs = add nuw nsw <4 x i32> %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 20
  %wide.load81.2 = load <4 x i16>, ptr %i.bt, align 2, !tbaa !12
  %i.bu = zext <4 x i16> %wide.load81.2 to <4 x i32>
  %i.bv = add nuw nsw <4 x i32> %i.bs, %i.bu
  %i.bw = lshr <4 x i32> %i.bv, splat (i32 2)
  %i.bx = shufflevector <4 x i32> %i.bp, <4 x i32> %i.bw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec.2 = trunc nuw <8 x i32> %i.bx to <8 x i16> ; 12 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 2
  %wide.load = load <4 x i16>, ptr %i.by, align 2, !tbaa !12 ; 3 uses
  %i.bz = shufflevector <4 x i16> %wide.load, <4 x i16> %wide.load.1, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ca = zext <4 x i16> %i.bz to <4 x i32>       ; 2 uses
  %i.cb = add nuw nsw <4 x i32> %i.ca, splat (i32 1)
  %i.cc = zext <4 x i16> %wide.load.1 to <4 x i32> ; 2 uses
  %i.cd = add nuw nsw <4 x i32> %i.cb, %i.cc
  %i.ce = lshr <4 x i32> %i.cd, splat (i32 1)
  %i.cf = add nuw nsw <4 x i32> %i.ca, splat (i32 2)
  %i.cg = shl nuw nsw <4 x i32> %i.cc, splat (i32 1)
  %i.ch = add nuw nsw <4 x i32> %i.cf, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 12
  %wide.load81.1 = load <4 x i16>, ptr %i.ci, align 2, !tbaa !12
  %i.cj = zext <4 x i16> %wide.load81.1 to <4 x i32>
  %i.ck = add nuw nsw <4 x i32> %i.ch, %i.cj
  %i.cl = lshr <4 x i32> %i.ck, splat (i32 2)
  %i.cm = shufflevector <4 x i32> %i.ce, <4 x i32> %i.cl, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec.1 = trunc nuw <8 x i32> %i.cm to <8 x i16> ; 8 uses
  %.pre = load i16, ptr %2, align 2, !tbaa !12
  %vector.recur.init = insertelement <4 x i16> poison, i16 %.pre, i64 3
  %i.cn = shufflevector <4 x i16> %vector.recur.init, <4 x i16> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.co = zext <4 x i16> %i.cn to <4 x i32>       ; 2 uses
  %i.cp = add nuw nsw <4 x i32> %i.co, splat (i32 1)
  %i.cq = zext <4 x i16> %wide.load to <4 x i32>  ; 2 uses
  %i.cr = add nuw nsw <4 x i32> %i.cp, %i.cq
  %i.cs = lshr <4 x i32> %i.cr, splat (i32 1)
  %i.ct = add nuw nsw <4 x i32> %i.co, splat (i32 2)
  %i.cu = shl nuw nsw <4 x i32> %i.cq, splat (i32 1)
  %i.cv = add nuw nsw <4 x i32> %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %wide.load81 = load <4 x i16>, ptr %i.cw, align 2, !tbaa !12
  %i.cx = zext <4 x i16> %wide.load81 to <4 x i32>
  %i.cy = add nuw nsw <4 x i32> %i.cv, %i.cx
  %i.cz = lshr <4 x i32> %i.cy, splat (i32 2)
  %i.da = shufflevector <4 x i32> %i.cs, <4 x i32> %i.cz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc nuw <8 x i32> %i.da to <8 x i16> ; 4 uses
  %i.db = zext i16 %vector.recur.extract to i32   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !12 ; 2 uses
  %i.de = zext i16 %i.dd to i32                   ; 2 uses
  %i.df = add nuw nsw i32 %i.db, 1
  %i.dg = add nuw nsw i32 %i.df, %i.de
  %i.dh = lshr i32 %i.dg, 1
  %i.di = trunc nuw i32 %i.dh to i16              ; 16 uses
  %i.dj = shl nuw nsw i32 %i.de, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !12
  %i.dm = zext i16 %i.dl to i32
  %i.dn = add nuw nsw i32 %i.db, 2
  %i.do = add nuw nsw i32 %i.dn, %i.dj
  %i.dp = add nuw nsw i32 %i.do, %i.dm
  %i.dq = lshr i32 %i.dp, 2
  %i.dr = trunc nuw i32 %i.dq to i16              ; 16 uses
  %i.ds = zext i16 %i.dd to i32                   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !12
  %i.dv = zext i16 %i.du to i32                   ; 2 uses
  %i.dw = add nuw nsw i32 %i.ds, 1
  %i.dx = add nuw nsw i32 %i.dw, %i.dv
  %i.dy = lshr i32 %i.dx, 1
end_hunk_1
