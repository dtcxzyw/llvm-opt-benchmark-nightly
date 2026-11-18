Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9dsp_10bpp?download=true
inline.NumInlined: 17
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 180
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 192
begin_hunk_0_@put_8tap_1d_v_c:bb.a
  %op.rdx126 = icmp slt i64 %i.bq, 0
  %op.rdx127 = or i1 %op.rdx, %op.rdx126
  %n.vec = and i64 %wide.trip.count, 120          ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.084.i = phi i32 [ %5, %bb.a ], [ %i.gm, %.loopexit ]
  %.083.i = phi ptr [ %0, %bb.a ], [ %i.gl, %.loopexit ] ; 3 uses
  %.082.i = phi ptr [ %2, %bb.a ], [ %i.bs, %.loopexit ] ; 11 uses
  %i.br = getelementptr i8, ptr %.082.i, i64 %.idx.i ; 2 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.082.i, i64 %i.a ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.082.i, i64 %.idx87.i ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.082.i, i64 %.idx88.i ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.082.i, i64 %.idx89.i ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx127
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %i.bw = load i16, ptr %6, align 2, !tbaa !28, !alias.scope !124
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.bw, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bx = sext <8 x i16> %broadcast.splat to <8 x i32>
  %i.by = load i16, ptr %i.c, align 2, !tbaa !28, !alias.scope !124
  %broadcast.splatinsert105 = insertelement <8 x i16> poison, i16 %i.by, i64 0
  %broadcast.splat106 = shufflevector <8 x i16> %broadcast.splatinsert105, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bz = sext <8 x i16> %broadcast.splat106 to <8 x i32>
  %i.ca = load i16, ptr %i.e, align 2, !tbaa !28, !alias.scope !124
  %broadcast.splatinsert107 = insertelement <8 x i16> poison, i16 %i.ca, i64 0
  %broadcast.splat108 = shufflevector <8 x i16> %broadcast.splatinsert107, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cb = sext <8 x i16> %broadcast.splat108 to <8 x i32>
  %i.cc = load i16, ptr %i.f, align 2, !tbaa !28, !alias.scope !124
  %broadcast.splatinsert109 = insertelement <8 x i16> poison, i16 %i.cc, i64 0
  %broadcast.splat110 = shufflevector <8 x i16> %broadcast.splatinsert109, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cd = sext <8 x i16> %broadcast.splat110 to <8 x i32>
  %i.ce = load i16, ptr %i.g, align 2, !tbaa !28, !alias.scope !124
  %broadcast.splatinsert111 = insertelement <8 x i16> poison, i16 %i.ce, i64 0
  %broadcast.splat112 = shufflevector <8 x i16> %broadcast.splatinsert111, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cf = sext <8 x i16> %broadcast.splat112 to <8 x i32>
  %i.cg = load i16, ptr %i.h, align 2, !tbaa !28, !alias.scope !124
  %broadcast.splatinsert113 = insertelement <8 x i16> poison, i16 %i.cg, i64 0
  %broadcast.splat114 = shufflevector <8 x i16> %broadcast.splatinsert113, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ch = sext <8 x i16> %broadcast.splat114 to <8 x i32>
  %i.ci = load i16, ptr %i.i, align 2, !tbaa !28, !alias.scope !124
  %broadcast.splatinsert115 = insertelement <8 x i16> poison, i16 %i.ci, i64 0
  %broadcast.splat116 = shufflevector <8 x i16> %broadcast.splatinsert115, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cj = sext <8 x i16> %broadcast.splat116 to <8 x i32>
  %i.ck = load i16, ptr %i.j, align 2, !tbaa !28, !alias.scope !124
  %broadcast.splatinsert117 = insertelement <8 x i16> poison, i16 %i.ck, i64 0
  %broadcast.splat118 = shufflevector <8 x i16> %broadcast.splatinsert117, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cl = sext <8 x i16> %broadcast.splat118 to <8 x i32>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.cm = getelementptr [2 x i8], ptr %i.br, i64 %index
  %wide.load = load <8 x i16>, ptr %i.cm, align 2, !tbaa !28, !alias.scope !125
  %i.cn = zext <8 x i16> %wide.load to <8 x i32>
  %i.co = mul nsw <8 x i32> %i.cn, %i.bx
  %i.cp = sub i64 %index, %i.d
  %i.cq = getelementptr inbounds [2 x i8], ptr %.082.i, i64 %i.cp
  %wide.load119 = load <8 x i16>, ptr %i.cq, align 2, !tbaa !28, !alias.scope !126
  %i.cr = zext <8 x i16> %wide.load119 to <8 x i32>
  %i.cs = mul nsw <8 x i32> %i.cr, %i.bz
  %i.ct = sub nsw i64 %index, %i.a
  %i.cu = getelementptr inbounds [2 x i8], ptr %.082.i, i64 %i.ct
  %wide.load120 = load <8 x i16>, ptr %i.cu, align 2, !tbaa !28, !alias.scope !127
  %i.cv = zext <8 x i16> %wide.load120 to <8 x i32>
  %i.cw = mul nsw <8 x i32> %i.cv, %i.cb
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.082.i, i64 %index
  %wide.load121 = load <8 x i16>, ptr %i.cx, align 2, !tbaa !28, !alias.scope !128
  %i.cy = zext <8 x i16> %wide.load121 to <8 x i32>
  %i.cz = mul nsw <8 x i32> %i.cy, %i.cd
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %index
  %wide.load122 = load <8 x i16>, ptr %i.da, align 2, !tbaa !28, !alias.scope !129
  %i.db = zext <8 x i16> %wide.load122 to <8 x i32>
  %i.dc = mul nsw <8 x i32> %i.db, %i.cf
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %index
  %wide.load123 = load <8 x i16>, ptr %i.dd, align 2, !tbaa !28, !alias.scope !130
  %i.de = zext <8 x i16> %wide.load123 to <8 x i32>
  %i.df = mul nsw <8 x i32> %i.de, %i.ch
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %index
  %wide.load124 = load <8 x i16>, ptr %i.dg, align 2, !tbaa !28, !alias.scope !131
  %i.dh = zext <8 x i16> %wide.load124 to <8 x i32>
  %i.di = mul nsw <8 x i32> %i.dh, %i.cj
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %index
  %wide.load125 = load <8 x i16>, ptr %i.dj, align 2, !tbaa !28, !alias.scope !132
  %i.dk = zext <8 x i16> %wide.load125 to <8 x i32>
  %i.dl = mul nsw <8 x i32> %i.dk, %i.cl
  %i.dm = add nsw <8 x i32> %i.co, splat (i32 64)
  %i.dn = add <8 x i32> %i.dm, %i.cs
  %i.do = add <8 x i32> %i.dn, %i.cw
  %i.dp = add <8 x i32> %i.do, %i.cz
  %i.dq = add <8 x i32> %i.dp, %i.dc
  %i.dr = add <8 x i32> %i.dq, %i.df
  %i.ds = add <8 x i32> %i.dr, %i.di
  %i.dt = add <8 x i32> %i.ds, %i.dl
  %i.du = ashr <8 x i32> %i.dt, splat (i32 7)
  %i.dv = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.du, <8 x i32> zeroinitializer)
  %i.dw = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dv, <8 x i32> splat (i32 1023))
  %i.dx = trunc nuw nsw <8 x i32> %i.dw to <8 x i16>
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.083.i, i64 %index
  store <8 x i16> %i.dx, ptr %i.dy, align 2, !tbaa !28, !alias.scope !133, !noalias !134
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %bb.b ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 10 uses
  %i.ea = load i16, ptr %6, align 2, !tbaa !28
  %i.eb = sext i16 %i.ea to i32
  %i.ec = getelementptr [2 x i8], ptr %i.br, i64 %indvars.iv
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !28
  %i.ee = zext i16 %i.ed to i32
  %i.ef = mul nsw i32 %i.ee, %i.eb
  %i.eg = load i16, ptr %i.c, align 2, !tbaa !28
  %i.eh = sext i16 %i.eg to i32
  %i.ei = sub i64 %indvars.iv, %i.d
  %i.ej = getelementptr inbounds [2 x i8], ptr %.082.i, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !28
  %i.el = zext i16 %i.ek to i32
  %i.em = mul nsw i32 %i.el, %i.eh
  %i.en = load i16, ptr %i.e, align 2, !tbaa !28
  %i.eo = sext i16 %i.en to i32
  %i.ep = sub nsw i64 %indvars.iv, %i.a
  %i.eq = getelementptr inbounds [2 x i8], ptr %.082.i, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !28
  %i.es = zext i16 %i.er to i32
  %i.et = mul nsw i32 %i.es, %i.eo
  %i.eu = load i16, ptr %i.f, align 2, !tbaa !28
  %i.ev = sext i16 %i.eu to i32
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %.082.i, i64 %indvars.iv
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !28
  %i.ey = zext i16 %i.ex to i32
  %i.ez = mul nsw i32 %i.ey, %i.ev
  %i.fa = load i16, ptr %i.g, align 2, !tbaa !28
  %i.fb = sext i16 %i.fa to i32
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !28
  %i.fe = zext i16 %i.fd to i32
  %i.ff = mul nsw i32 %i.fe, %i.fb
  %i.fg = load i16, ptr %i.h, align 2, !tbaa !28
  %i.fh = sext i16 %i.fg to i32
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %indvars.iv
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !28
  %i.fk = zext i16 %i.fj to i32
  %i.fl = mul nsw i32 %i.fk, %i.fh
  %i.fm = load i16, ptr %i.i, align 2, !tbaa !28
  %i.fn = sext i16 %i.fm to i32
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %indvars.iv
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !28
  %i.fq = zext i16 %i.fp to i32
  %i.fr = mul nsw i32 %i.fq, %i.fn
  %i.fs = load i16, ptr %i.j, align 2, !tbaa !28
  %i.ft = sext i16 %i.fs to i32
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %indvars.iv
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !28
  %i.fw = zext i16 %i.fv to i32
  %i.fx = mul nsw i32 %i.fw, %i.ft
  %i.fy = add nsw i32 %i.ef, 64
  %i.fz = add i32 %i.fy, %i.em
  %i.ga = add i32 %i.fz, %i.et
  %i.gb = add i32 %i.ga, %i.ez
  %i.gc = add i32 %i.gb, %i.ff
  %i.gd = add i32 %i.gc, %i.fl
  %i.ge = add i32 %i.gd, %i.fr
  %i.gf = add i32 %i.ge, %i.fx
  %i.gg = ashr i32 %i.gf, 7
  %i.gh = tail call i32 @llvm.smax.i32(i32 %i.gg, i32 0)
  %i.gi = tail call i32 @llvm.umin.i32(i32 %i.gh, i32 1023)
  %i.gj = trunc nuw nsw i32 %i.gi to i16
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %.083.i, i64 %indvars.iv
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !123

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %.083.i, i64 %i.b
  %i.gm = add nsw i32 %.084.i, -1                 ; 2 uses
  %.not.i = icmp eq i32 %i.gm, 0
  br i1 %.not.i, label %do_8tap_1d_c.exit, label %bb.b, !llvm.loop !6

do_8tap_1d_c.exit:                                ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @put_bilin_1d_v_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef range(i32 4, 65) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #8 {
bb.a:
  %i.a = lshr i64 %3, 1                           ; 3 uses
  %i.b = lshr i64 %1, 1                           ; 2 uses
  %wide.trip.count = zext nneg i32 %4 to i64      ; 8 uses
  %7 = and i64 %3, -2
  %i.c = add i32 %5, -1
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = mul i64 %i.a, %i.d
  %i.f = shl nuw nsw i64 %wide.trip.count, 1
  %i.g = add i64 %i.e, %wide.trip.count
  %i.h = shl i64 %i.g, 1
  %scevgep = getelementptr i8, ptr %2, i64 %i.h
  %i.i = shl nuw nsw i64 %i.d, 1
  %i.j = add nuw nsw i64 %i.i, 2
  %i.k = mul i64 %i.a, %i.j
  %i.l = getelementptr i8, ptr %2, i64 %i.k
  %scevgep16 = getelementptr i8, ptr %i.l, i64 %i.f
  %scevgep17 = getelementptr nuw i8, ptr %2, i64 %7
  %i.m = mul i64 %i.b, %i.d
  %i.n = add i64 %i.m, %wide.trip.count
  %i.o = shl i64 %i.n, 1
  %scevgep18 = getelementptr i8, ptr %0, i64 %i.o ; 2 uses
  %min.iters.check = icmp samesign ult i32 %4, 8
  %bound0 = icmp ult ptr %0, %scevgep16
  %bound1 = icmp ult ptr %scevgep17, %scevgep18
  %found.conflict = and i1 %bound0, %bound1
  %i.p = or i64 %3, %1
  %i.q = icmp slt i64 %i.p, 0
  %i.r = or i1 %found.conflict, %i.q
  %bound020 = icmp ult ptr %0, %scevgep
  %bound121 = icmp ult ptr %2, %scevgep18
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx = or i1 %i.r, %found.conflict22
  %n.vec = and i64 %wide.trip.count, 120          ; 9 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.s = icmp eq i64 %n.vec, 8
  %i.t = icmp eq i64 %n.vec, 16
  %i.u = icmp eq i64 %n.vec, 24
  %i.v = icmp eq i64 %n.vec, 32
  %i.w = icmp eq i64 %n.vec, 40
  %i.x = icmp eq i64 %n.vec, 48
  %i.y = icmp eq i64 %n.vec, 56
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.z = add nsw i64 %wide.trip.count, -1
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.036.i = phi i32 [ %5, %bb.a ], [ %i.ex, %.loopexit ]
  %.035.i = phi ptr [ %0, %bb.a ], [ %i.ew, %.loopexit ] ; 12 uses
  %.034.i = phi ptr [ %2, %bb.a ], [ %i.aa, %.loopexit ] ; 12 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.034.i, i64 %i.a ; 12 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %bb.b
  %wide.load = load <8 x i16>, ptr %.034.i, align 2, !tbaa !28, !alias.scope !140 ; 2 uses
  %i.ab = zext <8 x i16> %wide.load to <8 x i32>
  %wide.load23 = load <8 x i16>, ptr %i.aa, align 2, !tbaa !28, !alias.scope !141
  %i.ac = zext <8 x i16> %wide.load23 to <8 x i32>
  %i.ad = sub nsw <8 x i32> %i.ac, %i.ab
  %i.ae = mul nsw <8 x i32> %i.ad, %broadcast.splat
  %i.af = add nsw <8 x i32> %i.ae, splat (i32 8)
  %i.ag = lshr <8 x i32> %i.af, splat (i32 4)
  %i.ah = trunc <8 x i32> %i.ag to <8 x i16>
  %i.ai = add <8 x i16> %wide.load, %i.ah
  store <8 x i16> %i.ai, ptr %.035.i, align 2, !tbaa !28, !alias.scope !142, !noalias !143
  br i1 %i.s, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %i.aj = getelementptr inbounds nuw i8, ptr %.034.i, i64 16
  %wide.load.1 = load <8 x i16>, ptr %i.aj, align 2, !tbaa !28, !alias.scope !140 ; 2 uses
  %i.ak = zext <8 x i16> %wide.load.1 to <8 x i32>
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load23.1 = load <8 x i16>, ptr %i.al, align 2, !tbaa !28, !alias.scope !141
  %i.am = zext <8 x i16> %wide.load23.1 to <8 x i32>
  %i.an = sub nsw <8 x i32> %i.am, %i.ak
  %i.ao = mul nsw <8 x i32> %i.an, %broadcast.splat
  %i.ap = add nsw <8 x i32> %i.ao, splat (i32 8)
  %i.aq = lshr <8 x i32> %i.ap, splat (i32 4)
  %i.ar = trunc <8 x i32> %i.aq to <8 x i16>
  %i.as = add <8 x i16> %wide.load.1, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.035.i, i64 16
  store <8 x i16> %i.as, ptr %i.at, align 2, !tbaa !28, !alias.scope !142, !noalias !143
  br i1 %i.t, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.au = getelementptr inbounds nuw i8, ptr %.034.i, i64 32
  %wide.load.2 = load <8 x i16>, ptr %i.au, align 2, !tbaa !28, !alias.scope !140 ; 2 uses
  %i.av = zext <8 x i16> %wide.load.2 to <8 x i32>
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %wide.load23.2 = load <8 x i16>, ptr %i.aw, align 2, !tbaa !28, !alias.scope !141
  %i.ax = zext <8 x i16> %wide.load23.2 to <8 x i32>
  %i.ay = sub nsw <8 x i32> %i.ax, %i.av
  %i.az = mul nsw <8 x i32> %i.ay, %broadcast.splat
  %i.ba = add nsw <8 x i32> %i.az, splat (i32 8)
  %i.bb = lshr <8 x i32> %i.ba, splat (i32 4)
  %i.bc = trunc <8 x i32> %i.bb to <8 x i16>
  %i.bd = add <8 x i16> %wide.load.2, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.035.i, i64 32
  store <8 x i16> %i.bd, ptr %i.be, align 2, !tbaa !28, !alias.scope !142, !noalias !143
  br i1 %i.u, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.bf = getelementptr inbounds nuw i8, ptr %.034.i, i64 48
  %wide.load.3 = load <8 x i16>, ptr %i.bf, align 2, !tbaa !28, !alias.scope !140 ; 2 uses
  %i.bg = zext <8 x i16> %wide.load.3 to <8 x i32>
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %wide.load23.3 = load <8 x i16>, ptr %i.bh, align 2, !tbaa !28, !alias.scope !141
  %i.bi = zext <8 x i16> %wide.load23.3 to <8 x i32>
  %i.bj = sub nsw <8 x i32> %i.bi, %i.bg
  %i.bk = mul nsw <8 x i32> %i.bj, %broadcast.splat
  %i.bl = add nsw <8 x i32> %i.bk, splat (i32 8)
  %i.bm = lshr <8 x i32> %i.bl, splat (i32 4)
  %i.bn = trunc <8 x i32> %i.bm to <8 x i16>
  %i.bo = add <8 x i16> %wide.load.3, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.035.i, i64 48
  store <8 x i16> %i.bo, ptr %i.bp, align 2, !tbaa !28, !alias.scope !142, !noalias !143
  br i1 %i.v, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.bq = getelementptr inbounds nuw i8, ptr %.034.i, i64 64
  %wide.load.4 = load <8 x i16>, ptr %i.bq, align 2, !tbaa !28, !alias.scope !140 ; 2 uses
  %i.br = zext <8 x i16> %wide.load.4 to <8 x i32>
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %wide.load23.4 = load <8 x i16>, ptr %i.bs, align 2, !tbaa !28, !alias.scope !141
  %i.bt = zext <8 x i16> %wide.load23.4 to <8 x i32>
  %i.bu = sub nsw <8 x i32> %i.bt, %i.br
  %i.bv = mul nsw <8 x i32> %i.bu, %broadcast.splat
  %i.bw = add nsw <8 x i32> %i.bv, splat (i32 8)
  %i.bx = lshr <8 x i32> %i.bw, splat (i32 4)
  %i.by = trunc <8 x i32> %i.bx to <8 x i16>
  %i.bz = add <8 x i16> %wide.load.4, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %.035.i, i64 64
  store <8 x i16> %i.bz, ptr %i.ca, align 2, !tbaa !28, !alias.scope !142, !noalias !143
  br i1 %i.w, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.cb = getelementptr inbounds nuw i8, ptr %.034.i, i64 80
  %wide.load.5 = load <8 x i16>, ptr %i.cb, align 2, !tbaa !28, !alias.scope !140 ; 2 uses
  %i.cc = zext <8 x i16> %wide.load.5 to <8 x i32>
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %wide.load23.5 = load <8 x i16>, ptr %i.cd, align 2, !tbaa !28, !alias.scope !141
  %i.ce = zext <8 x i16> %wide.load23.5 to <8 x i32>
  %i.cf = sub nsw <8 x i32> %i.ce, %i.cc
  %i.cg = mul nsw <8 x i32> %i.cf, %broadcast.splat
  %i.ch = add nsw <8 x i32> %i.cg, splat (i32 8)
  %i.ci = lshr <8 x i32> %i.ch, splat (i32 4)
  %i.cj = trunc <8 x i32> %i.ci to <8 x i16>
  %i.ck = add <8 x i16> %wide.load.5, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.035.i, i64 80
  store <8 x i16> %i.ck, ptr %i.cl, align 2, !tbaa !28, !alias.scope !142, !noalias !143
  br i1 %i.x, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.cm = getelementptr inbounds nuw i8, ptr %.034.i, i64 96
  %wide.load.6 = load <8 x i16>, ptr %i.cm, align 2, !tbaa !28, !alias.scope !140 ; 2 uses
  %i.cn = zext <8 x i16> %wide.load.6 to <8 x i32>
  %i.co = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %wide.load23.6 = load <8 x i16>, ptr %i.co, align 2, !tbaa !28, !alias.scope !141
  %i.cp = zext <8 x i16> %wide.load23.6 to <8 x i32>
  %i.cq = sub nsw <8 x i32> %i.cp, %i.cn
  %i.cr = mul nsw <8 x i32> %i.cq, %broadcast.splat
  %i.cs = add nsw <8 x i32> %i.cr, splat (i32 8)
  %i.ct = lshr <8 x i32> %i.cs, splat (i32 4)
  %i.cu = trunc <8 x i32> %i.ct to <8 x i16>
  %i.cv = add <8 x i16> %wide.load.6, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.035.i, i64 96
  store <8 x i16> %i.cv, ptr %i.cw, align 2, !tbaa !28, !alias.scope !142, !noalias !143
  br i1 %i.y, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %i.cx = getelementptr inbounds nuw i8, ptr %.034.i, i64 112
  %wide.load.7 = load <8 x i16>, ptr %i.cx, align 2, !tbaa !28, !alias.scope !140 ; 2 uses
  %i.cy = zext <8 x i16> %wide.load.7 to <8 x i32>
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %wide.load23.7 = load <8 x i16>, ptr %i.cz, align 2, !tbaa !28, !alias.scope !141
  %i.da = zext <8 x i16> %wide.load23.7 to <8 x i32>
  %i.db = sub nsw <8 x i32> %i.da, %i.cy
  %i.dc = mul nsw <8 x i32> %i.db, %broadcast.splat
  %i.dd = add nsw <8 x i32> %i.dc, splat (i32 8)
  %i.de = lshr <8 x i32> %i.dd, splat (i32 4)
  %i.df = trunc <8 x i32> %i.de to <8 x i16>
  %i.dg = add <8 x i16> %wide.load.7, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %.035.i, i64 112
  store <8 x i16> %i.dg, ptr %i.dh, align 2, !tbaa !28, !alias.scope !142, !noalias !143
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %bb.b ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %.034.i, i64 %indvars.iv.ph
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !28 ; 2 uses
  %i.dk = zext i16 %i.dj to i32
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv.ph
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !28
  %i.dn = zext i16 %i.dm to i32
  %i.do = sub nsw i32 %i.dn, %i.dk
  %i.dp = mul nsw i32 %i.do, %6
  %i.dq = add nsw i32 %i.dp, 8
  %i.dr = lshr i32 %i.dq, 4
  %i.ds = trunc i32 %i.dr to i16
  %i.dt = add i16 %i.dj, %i.ds
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %.035.i, i64 %indvars.iv.ph
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !28
end_hunk_0
begin_hunk_1_@avg_8tap_1d_v_c:bb.a
  %i.br = getelementptr i8, ptr %.082.i, i64 %.idx90.i ; 2 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.082.i, i64 %i.a ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.082.i, i64 %.idx91.i ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.082.i, i64 %.idx92.i ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.082.i, i64 %.idx93.i ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx128
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %i.bw = load i16, ptr %6, align 2, !tbaa !28, !alias.scope !184
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.bw, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bx = sext <8 x i16> %broadcast.splat to <8 x i32>
  %i.by = load i16, ptr %i.c, align 2, !tbaa !28, !alias.scope !184
  %broadcast.splatinsert105 = insertelement <8 x i16> poison, i16 %i.by, i64 0
  %broadcast.splat106 = shufflevector <8 x i16> %broadcast.splatinsert105, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bz = sext <8 x i16> %broadcast.splat106 to <8 x i32>
  %i.ca = load i16, ptr %i.e, align 2, !tbaa !28, !alias.scope !184
  %broadcast.splatinsert107 = insertelement <8 x i16> poison, i16 %i.ca, i64 0
  %broadcast.splat108 = shufflevector <8 x i16> %broadcast.splatinsert107, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cb = sext <8 x i16> %broadcast.splat108 to <8 x i32>
  %i.cc = load i16, ptr %i.f, align 2, !tbaa !28, !alias.scope !184
  %broadcast.splatinsert109 = insertelement <8 x i16> poison, i16 %i.cc, i64 0
  %broadcast.splat110 = shufflevector <8 x i16> %broadcast.splatinsert109, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cd = sext <8 x i16> %broadcast.splat110 to <8 x i32>
  %i.ce = load i16, ptr %i.g, align 2, !tbaa !28, !alias.scope !184
  %broadcast.splatinsert111 = insertelement <8 x i16> poison, i16 %i.ce, i64 0
  %broadcast.splat112 = shufflevector <8 x i16> %broadcast.splatinsert111, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cf = sext <8 x i16> %broadcast.splat112 to <8 x i32>
  %i.cg = load i16, ptr %i.h, align 2, !tbaa !28, !alias.scope !184
  %broadcast.splatinsert113 = insertelement <8 x i16> poison, i16 %i.cg, i64 0
  %broadcast.splat114 = shufflevector <8 x i16> %broadcast.splatinsert113, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ch = sext <8 x i16> %broadcast.splat114 to <8 x i32>
  %i.ci = load i16, ptr %i.i, align 2, !tbaa !28, !alias.scope !184
  %broadcast.splatinsert115 = insertelement <8 x i16> poison, i16 %i.ci, i64 0
  %broadcast.splat116 = shufflevector <8 x i16> %broadcast.splatinsert115, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cj = sext <8 x i16> %broadcast.splat116 to <8 x i32>
  %i.ck = load i16, ptr %i.j, align 2, !tbaa !28, !alias.scope !184
  %broadcast.splatinsert117 = insertelement <8 x i16> poison, i16 %i.ck, i64 0
  %broadcast.splat118 = shufflevector <8 x i16> %broadcast.splatinsert117, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cl = sext <8 x i16> %broadcast.splat118 to <8 x i32>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.083.i, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.cm, align 2, !tbaa !28, !alias.scope !185, !noalias !186
  %i.cn = zext <8 x i16> %wide.load to <8 x i32>
  %i.co = getelementptr [2 x i8], ptr %i.br, i64 %index
  %wide.load119 = load <8 x i16>, ptr %i.co, align 2, !tbaa !28, !alias.scope !187
  %i.cp = zext <8 x i16> %wide.load119 to <8 x i32>
  %i.cq = mul nsw <8 x i32> %i.cp, %i.bx
  %i.cr = sub i64 %index, %i.d
  %i.cs = getelementptr inbounds [2 x i8], ptr %.082.i, i64 %i.cr
  %wide.load120 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !28, !alias.scope !188
  %i.ct = zext <8 x i16> %wide.load120 to <8 x i32>
  %i.cu = mul nsw <8 x i32> %i.ct, %i.bz
  %i.cv = sub nsw i64 %index, %i.a
  %i.cw = getelementptr inbounds [2 x i8], ptr %.082.i, i64 %i.cv
  %wide.load121 = load <8 x i16>, ptr %i.cw, align 2, !tbaa !28, !alias.scope !189
  %i.cx = zext <8 x i16> %wide.load121 to <8 x i32>
  %i.cy = mul nsw <8 x i32> %i.cx, %i.cb
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.082.i, i64 %index
  %wide.load122 = load <8 x i16>, ptr %i.cz, align 2, !tbaa !28, !alias.scope !190
  %i.da = zext <8 x i16> %wide.load122 to <8 x i32>
  %i.db = mul nsw <8 x i32> %i.da, %i.cd
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %index
  %wide.load123 = load <8 x i16>, ptr %i.dc, align 2, !tbaa !28, !alias.scope !191
  %i.dd = zext <8 x i16> %wide.load123 to <8 x i32>
  %i.de = mul nsw <8 x i32> %i.dd, %i.cf
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %index
  %wide.load124 = load <8 x i16>, ptr %i.df, align 2, !tbaa !28, !alias.scope !192
  %i.dg = zext <8 x i16> %wide.load124 to <8 x i32>
  %i.dh = mul nsw <8 x i32> %i.dg, %i.ch
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %index
  %wide.load125 = load <8 x i16>, ptr %i.di, align 2, !tbaa !28, !alias.scope !193
  %i.dj = zext <8 x i16> %wide.load125 to <8 x i32>
  %i.dk = mul nsw <8 x i32> %i.dj, %i.cj
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %index
  %wide.load126 = load <8 x i16>, ptr %i.dl, align 2, !tbaa !28, !alias.scope !194
  %i.dm = zext <8 x i16> %wide.load126 to <8 x i32>
  %i.dn = mul nsw <8 x i32> %i.dm, %i.cl
  %i.do = add nsw <8 x i32> %i.cq, splat (i32 64)
  %i.dp = add <8 x i32> %i.do, %i.cu
  %i.dq = add <8 x i32> %i.dp, %i.cy
  %i.dr = add <8 x i32> %i.dq, %i.db
  %i.ds = add <8 x i32> %i.dr, %i.de
  %i.dt = add <8 x i32> %i.ds, %i.dh
  %i.du = add <8 x i32> %i.dt, %i.dk
  %i.dv = add <8 x i32> %i.du, %i.dn
  %i.dw = ashr <8 x i32> %i.dv, splat (i32 7)
  %i.dx = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dw, <8 x i32> zeroinitializer)
  %i.dy = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dx, <8 x i32> splat (i32 1023))
  %i.dz = add nuw nsw <8 x i32> %i.cn, splat (i32 1)
  %i.ea = add nuw nsw <8 x i32> %i.dz, %i.dy
  %i.eb = lshr <8 x i32> %i.ea, splat (i32 1)
  %i.ec = trunc nuw <8 x i32> %i.eb to <8 x i16>
  store <8 x i16> %i.ec, ptr %i.cm, align 2, !tbaa !28, !alias.scope !185, !noalias !186
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %bb.b ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 10 uses
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %.083.i, i64 %indvars.iv ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !28
  %i.eg = zext i16 %i.ef to i32
  %i.eh = load i16, ptr %6, align 2, !tbaa !28
  %i.ei = sext i16 %i.eh to i32
  %i.ej = getelementptr [2 x i8], ptr %i.br, i64 %indvars.iv
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !28
  %i.el = zext i16 %i.ek to i32
  %i.em = mul nsw i32 %i.el, %i.ei
  %i.en = load i16, ptr %i.c, align 2, !tbaa !28
  %i.eo = sext i16 %i.en to i32
  %i.ep = sub i64 %indvars.iv, %i.d
  %i.eq = getelementptr inbounds [2 x i8], ptr %.082.i, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !28
  %i.es = zext i16 %i.er to i32
  %i.et = mul nsw i32 %i.es, %i.eo
  %i.eu = load i16, ptr %i.e, align 2, !tbaa !28
  %i.ev = sext i16 %i.eu to i32
  %i.ew = sub nsw i64 %indvars.iv, %i.a
  %i.ex = getelementptr inbounds [2 x i8], ptr %.082.i, i64 %i.ew
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !28
  %i.ez = zext i16 %i.ey to i32
  %i.fa = mul nsw i32 %i.ez, %i.ev
  %i.fb = load i16, ptr %i.f, align 2, !tbaa !28
  %i.fc = sext i16 %i.fb to i32
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %.082.i, i64 %indvars.iv
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !28
  %i.ff = zext i16 %i.fe to i32
  %i.fg = mul nsw i32 %i.ff, %i.fc
  %i.fh = load i16, ptr %i.g, align 2, !tbaa !28
  %i.fi = sext i16 %i.fh to i32
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !28
  %i.fl = zext i16 %i.fk to i32
  %i.fm = mul nsw i32 %i.fl, %i.fi
  %i.fn = load i16, ptr %i.h, align 2, !tbaa !28
  %i.fo = sext i16 %i.fn to i32
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %indvars.iv
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !28
  %i.fr = zext i16 %i.fq to i32
  %i.fs = mul nsw i32 %i.fr, %i.fo
  %i.ft = load i16, ptr %i.i, align 2, !tbaa !28
  %i.fu = sext i16 %i.ft to i32
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %indvars.iv
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !28
  %i.fx = zext i16 %i.fw to i32
  %i.fy = mul nsw i32 %i.fx, %i.fu
  %i.fz = load i16, ptr %i.j, align 2, !tbaa !28
  %i.ga = sext i16 %i.fz to i32
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %indvars.iv
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !28
  %i.gd = zext i16 %i.gc to i32
  %i.ge = mul nsw i32 %i.gd, %i.ga
  %i.gf = add nsw i32 %i.em, 64
  %i.gg = add i32 %i.gf, %i.et
  %i.gh = add i32 %i.gg, %i.fa
  %i.gi = add i32 %i.gh, %i.fg
  %i.gj = add i32 %i.gi, %i.fm
  %i.gk = add i32 %i.gj, %i.fs
  %i.gl = add i32 %i.gk, %i.fy
  %i.gm = add i32 %i.gl, %i.ge
  %i.gn = ashr i32 %i.gm, 7
  %i.go = tail call i32 @llvm.smax.i32(i32 %i.gn, i32 0)
  %i.gp = tail call i32 @llvm.umin.i32(i32 %i.go, i32 1023)
  %i.gq = add nuw nsw i32 %i.eg, 1
  %i.gr = add nuw nsw i32 %i.gq, %i.gp
  %i.gs = lshr i32 %i.gr, 1
  %i.gt = trunc nuw i32 %i.gs to i16
  store i16 %i.gt, ptr %i.ee, align 2, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !183

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %.083.i, i64 %i.b
  %i.gv = add nsw i32 %.084.i, -1                 ; 2 uses
  %.not.i = icmp eq i32 %i.gv, 0
  br i1 %.not.i, label %do_8tap_1d_c.exit, label %bb.b, !llvm.loop !6

do_8tap_1d_c.exit:                                ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @avg_bilin_1d_v_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef range(i32 4, 65) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #8 {
bb.a:
  %i.a = lshr i64 %3, 1                           ; 3 uses
  %i.b = lshr i64 %1, 1                           ; 2 uses
  %wide.trip.count = zext nneg i32 %4 to i64      ; 6 uses
  %7 = and i64 %3, -2
  %i.c = add i32 %5, -1
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = mul i64 %i.a, %i.d
  %i.f = shl nuw nsw i64 %wide.trip.count, 1
  %i.g = add i64 %i.e, %wide.trip.count
  %i.h = shl i64 %i.g, 1
  %scevgep = getelementptr i8, ptr %2, i64 %i.h
  %i.i = shl nuw nsw i64 %i.d, 1
  %i.j = add nuw nsw i64 %i.i, 2
  %i.k = mul i64 %i.a, %i.j
  %i.l = getelementptr i8, ptr %2, i64 %i.k
  %scevgep16 = getelementptr i8, ptr %i.l, i64 %i.f
  %scevgep17 = getelementptr nuw i8, ptr %2, i64 %7
  %i.m = mul i64 %i.b, %i.d
  %i.n = add i64 %i.m, %wide.trip.count
  %i.o = shl i64 %i.n, 1
  %scevgep18 = getelementptr i8, ptr %0, i64 %i.o ; 2 uses
  %min.iters.check = icmp samesign ult i32 %4, 8
  %bound0 = icmp ult ptr %0, %scevgep16
  %bound1 = icmp ult ptr %scevgep17, %scevgep18
  %found.conflict = and i1 %bound0, %bound1
  %i.p = or i64 %3, %1
  %i.q = icmp slt i64 %i.p, 0
  %i.r = or i1 %found.conflict, %i.q
  %bound020 = icmp ult ptr %0, %scevgep
  %bound121 = icmp ult ptr %2, %scevgep18
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx = or i1 %i.r, %found.conflict22
  %n.vec = and i64 %wide.trip.count, 120          ; 9 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.s = icmp eq i64 %n.vec, 8
  %i.t = icmp eq i64 %n.vec, 16
  %i.u = icmp eq i64 %n.vec, 24
  %i.v = icmp eq i64 %n.vec, 32
  %i.w = icmp eq i64 %n.vec, 40
  %i.x = icmp eq i64 %n.vec, 48
  %i.y = icmp eq i64 %n.vec, 56
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.036.i = phi i32 [ %5, %bb.a ], [ %i.fg, %.loopexit ]
  %.035.i = phi ptr [ %0, %bb.a ], [ %i.ff, %.loopexit ] ; 11 uses
  %.034.i = phi ptr [ %2, %bb.a ], [ %i.z, %.loopexit ] ; 10 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.034.i, i64 %i.a ; 10 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %bb.b
  %wide.load = load <8 x i16>, ptr %.035.i, align 2, !tbaa !28, !alias.scope !200, !noalias !201
  %i.aa = zext <8 x i16> %wide.load to <8 x i32>
  %wide.load23 = load <8 x i16>, ptr %.034.i, align 2, !tbaa !28, !alias.scope !202
  %i.ab = zext <8 x i16> %wide.load23 to <8 x i32> ; 2 uses
  %wide.load24 = load <8 x i16>, ptr %i.z, align 2, !tbaa !28, !alias.scope !203
  %i.ac = zext <8 x i16> %wide.load24 to <8 x i32>
  %i.ad = sub nsw <8 x i32> %i.ac, %i.ab
  %i.ae = mul nsw <8 x i32> %i.ad, %broadcast.splat
  %i.af = add nsw <8 x i32> %i.ae, splat (i32 8)
  %i.ag = lshr <8 x i32> %i.af, splat (i32 4)
  %i.ah = add nuw nsw <8 x i32> %i.aa, splat (i32 1)
  %i.ai = add nuw nsw <8 x i32> %i.ah, %i.ab
  %i.aj = add nuw nsw <8 x i32> %i.ai, %i.ag
  %i.ak = lshr <8 x i32> %i.aj, splat (i32 1)
  %i.al = trunc <8 x i32> %i.ak to <8 x i16>
  store <8 x i16> %i.al, ptr %.035.i, align 2, !tbaa !28, !alias.scope !200, !noalias !201
  br i1 %i.s, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %i.am = getelementptr inbounds nuw i8, ptr %.035.i, i64 16 ; 2 uses
  %wide.load.1 = load <8 x i16>, ptr %i.am, align 2, !tbaa !28, !alias.scope !200, !noalias !201
  %i.an = zext <8 x i16> %wide.load.1 to <8 x i32>
  %i.ao = getelementptr inbounds nuw i8, ptr %.034.i, i64 16
  %wide.load23.1 = load <8 x i16>, ptr %i.ao, align 2, !tbaa !28, !alias.scope !202
  %i.ap = zext <8 x i16> %wide.load23.1 to <8 x i32> ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load24.1 = load <8 x i16>, ptr %i.aq, align 2, !tbaa !28, !alias.scope !203
  %i.ar = zext <8 x i16> %wide.load24.1 to <8 x i32>
  %i.as = sub nsw <8 x i32> %i.ar, %i.ap
  %i.at = mul nsw <8 x i32> %i.as, %broadcast.splat
  %i.au = add nsw <8 x i32> %i.at, splat (i32 8)
  %i.av = lshr <8 x i32> %i.au, splat (i32 4)
  %i.aw = add nuw nsw <8 x i32> %i.an, splat (i32 1)
  %i.ax = add nuw nsw <8 x i32> %i.aw, %i.ap
  %i.ay = add nuw nsw <8 x i32> %i.ax, %i.av
  %i.az = lshr <8 x i32> %i.ay, splat (i32 1)
  %i.ba = trunc <8 x i32> %i.az to <8 x i16>
  store <8 x i16> %i.ba, ptr %i.am, align 2, !tbaa !28, !alias.scope !200, !noalias !201
  br i1 %i.t, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.bb = getelementptr inbounds nuw i8, ptr %.035.i, i64 32 ; 2 uses
  %wide.load.2 = load <8 x i16>, ptr %i.bb, align 2, !tbaa !28, !alias.scope !200, !noalias !201
  %i.bc = zext <8 x i16> %wide.load.2 to <8 x i32>
  %i.bd = getelementptr inbounds nuw i8, ptr %.034.i, i64 32
  %wide.load23.2 = load <8 x i16>, ptr %i.bd, align 2, !tbaa !28, !alias.scope !202
  %i.be = zext <8 x i16> %wide.load23.2 to <8 x i32> ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %wide.load24.2 = load <8 x i16>, ptr %i.bf, align 2, !tbaa !28, !alias.scope !203
  %i.bg = zext <8 x i16> %wide.load24.2 to <8 x i32>
  %i.bh = sub nsw <8 x i32> %i.bg, %i.be
  %i.bi = mul nsw <8 x i32> %i.bh, %broadcast.splat
  %i.bj = add nsw <8 x i32> %i.bi, splat (i32 8)
  %i.bk = lshr <8 x i32> %i.bj, splat (i32 4)
  %i.bl = add nuw nsw <8 x i32> %i.bc, splat (i32 1)
  %i.bm = add nuw nsw <8 x i32> %i.bl, %i.be
  %i.bn = add nuw nsw <8 x i32> %i.bm, %i.bk
  %i.bo = lshr <8 x i32> %i.bn, splat (i32 1)
  %i.bp = trunc <8 x i32> %i.bo to <8 x i16>
  store <8 x i16> %i.bp, ptr %i.bb, align 2, !tbaa !28, !alias.scope !200, !noalias !201
  br i1 %i.u, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.bq = getelementptr inbounds nuw i8, ptr %.035.i, i64 48 ; 2 uses
  %wide.load.3 = load <8 x i16>, ptr %i.bq, align 2, !tbaa !28, !alias.scope !200, !noalias !201
  %i.br = zext <8 x i16> %wide.load.3 to <8 x i32>
  %i.bs = getelementptr inbounds nuw i8, ptr %.034.i, i64 48
  %wide.load23.3 = load <8 x i16>, ptr %i.bs, align 2, !tbaa !28, !alias.scope !202
  %i.bt = zext <8 x i16> %wide.load23.3 to <8 x i32> ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %wide.load24.3 = load <8 x i16>, ptr %i.bu, align 2, !tbaa !28, !alias.scope !203
  %i.bv = zext <8 x i16> %wide.load24.3 to <8 x i32>
  %i.bw = sub nsw <8 x i32> %i.bv, %i.bt
  %i.bx = mul nsw <8 x i32> %i.bw, %broadcast.splat
  %i.by = add nsw <8 x i32> %i.bx, splat (i32 8)
  %i.bz = lshr <8 x i32> %i.by, splat (i32 4)
  %i.ca = add nuw nsw <8 x i32> %i.br, splat (i32 1)
  %i.cb = add nuw nsw <8 x i32> %i.ca, %i.bt
  %i.cc = add nuw nsw <8 x i32> %i.cb, %i.bz
  %i.cd = lshr <8 x i32> %i.cc, splat (i32 1)
  %i.ce = trunc <8 x i32> %i.cd to <8 x i16>
  store <8 x i16> %i.ce, ptr %i.bq, align 2, !tbaa !28, !alias.scope !200, !noalias !201
  br i1 %i.v, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.cf = getelementptr inbounds nuw i8, ptr %.035.i, i64 64 ; 2 uses
  %wide.load.4 = load <8 x i16>, ptr %i.cf, align 2, !tbaa !28, !alias.scope !200, !noalias !201
  %i.cg = zext <8 x i16> %wide.load.4 to <8 x i32>
  %i.ch = getelementptr inbounds nuw i8, ptr %.034.i, i64 64
  %wide.load23.4 = load <8 x i16>, ptr %i.ch, align 2, !tbaa !28, !alias.scope !202
  %i.ci = zext <8 x i16> %wide.load23.4 to <8 x i32> ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %wide.load24.4 = load <8 x i16>, ptr %i.cj, align 2, !tbaa !28, !alias.scope !203
  %i.ck = zext <8 x i16> %wide.load24.4 to <8 x i32>
  %i.cl = sub nsw <8 x i32> %i.ck, %i.ci
  %i.cm = mul nsw <8 x i32> %i.cl, %broadcast.splat
  %i.cn = add nsw <8 x i32> %i.cm, splat (i32 8)
  %i.co = lshr <8 x i32> %i.cn, splat (i32 4)
  %i.cp = add nuw nsw <8 x i32> %i.cg, splat (i32 1)
  %i.cq = add nuw nsw <8 x i32> %i.cp, %i.ci
  %i.cr = add nuw nsw <8 x i32> %i.cq, %i.co
  %i.cs = lshr <8 x i32> %i.cr, splat (i32 1)
  %i.ct = trunc <8 x i32> %i.cs to <8 x i16>
  store <8 x i16> %i.ct, ptr %i.cf, align 2, !tbaa !28, !alias.scope !200, !noalias !201
  br i1 %i.w, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.cu = getelementptr inbounds nuw i8, ptr %.035.i, i64 80 ; 2 uses
  %wide.load.5 = load <8 x i16>, ptr %i.cu, align 2, !tbaa !28, !alias.scope !200, !noalias !201
  %i.cv = zext <8 x i16> %wide.load.5 to <8 x i32>
  %i.cw = getelementptr inbounds nuw i8, ptr %.034.i, i64 80
  %wide.load23.5 = load <8 x i16>, ptr %i.cw, align 2, !tbaa !28, !alias.scope !202
  %i.cx = zext <8 x i16> %wide.load23.5 to <8 x i32> ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %wide.load24.5 = load <8 x i16>, ptr %i.cy, align 2, !tbaa !28, !alias.scope !203
  %i.cz = zext <8 x i16> %wide.load24.5 to <8 x i32>
  %i.da = sub nsw <8 x i32> %i.cz, %i.cx
  %i.db = mul nsw <8 x i32> %i.da, %broadcast.splat
  %i.dc = add nsw <8 x i32> %i.db, splat (i32 8)
  %i.dd = lshr <8 x i32> %i.dc, splat (i32 4)
  %i.de = add nuw nsw <8 x i32> %i.cv, splat (i32 1)
  %i.df = add nuw nsw <8 x i32> %i.de, %i.cx
  %i.dg = add nuw nsw <8 x i32> %i.df, %i.dd
  %i.dh = lshr <8 x i32> %i.dg, splat (i32 1)
  %i.di = trunc <8 x i32> %i.dh to <8 x i16>
  store <8 x i16> %i.di, ptr %i.cu, align 2, !tbaa !28, !alias.scope !200, !noalias !201
  br i1 %i.x, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.dj = getelementptr inbounds nuw i8, ptr %.035.i, i64 96 ; 2 uses
  %wide.load.6 = load <8 x i16>, ptr %i.dj, align 2, !tbaa !28, !alias.scope !200, !noalias !201
  %i.dk = zext <8 x i16> %wide.load.6 to <8 x i32>
  %i.dl = getelementptr inbounds nuw i8, ptr %.034.i, i64 96
  %wide.load23.6 = load <8 x i16>, ptr %i.dl, align 2, !tbaa !28, !alias.scope !202
  %i.dm = zext <8 x i16> %wide.load23.6 to <8 x i32> ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %wide.load24.6 = load <8 x i16>, ptr %i.dn, align 2, !tbaa !28, !alias.scope !203
  %i.do = zext <8 x i16> %wide.load24.6 to <8 x i32>
  %i.dp = sub nsw <8 x i32> %i.do, %i.dm
  %i.dq = mul nsw <8 x i32> %i.dp, %broadcast.splat
  %i.dr = add nsw <8 x i32> %i.dq, splat (i32 8)
  %i.ds = lshr <8 x i32> %i.dr, splat (i32 4)
  %i.dt = add nuw nsw <8 x i32> %i.dk, splat (i32 1)
  %i.du = add nuw nsw <8 x i32> %i.dt, %i.dm
  %i.dv = add nuw nsw <8 x i32> %i.du, %i.ds
  %i.dw = lshr <8 x i32> %i.dv, splat (i32 1)
  %i.dx = trunc <8 x i32> %i.dw to <8 x i16>
  store <8 x i16> %i.dx, ptr %i.dj, align 2, !tbaa !28, !alias.scope !200, !noalias !201
  br i1 %i.y, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %i.dy = getelementptr inbounds nuw i8, ptr %.035.i, i64 112 ; 2 uses
  %wide.load.7 = load <8 x i16>, ptr %i.dy, align 2, !tbaa !28, !alias.scope !200, !noalias !201
  %i.dz = zext <8 x i16> %wide.load.7 to <8 x i32>
  %i.ea = getelementptr inbounds nuw i8, ptr %.034.i, i64 112
  %wide.load23.7 = load <8 x i16>, ptr %i.ea, align 2, !tbaa !28, !alias.scope !202
  %i.eb = zext <8 x i16> %wide.load23.7 to <8 x i32> ; 2 uses
end_hunk_1
