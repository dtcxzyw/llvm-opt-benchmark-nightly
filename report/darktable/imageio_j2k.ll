inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sycc422_to_rgb:bb.a
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.ay) #15
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !45  ; 11 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 176
  store ptr %i.w, ptr %i.ba, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  store i32 %i.i, ptr %i.bb, align 8, !tbaa !46
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 76
  store i32 %i.l, ptr %i.bc, align 4, !tbaa !49
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  store i32 %i.i, ptr %i.bd, align 8, !tbaa !46
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 140
  store i32 %i.l, ptr %i.be, align 4, !tbaa !49
  %i.bf = load i32, ptr %i.az, align 8, !tbaa !69 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !69
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  store i32 %i.bf, ptr %i.bh, align 8, !tbaa !69
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !70 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 68
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !70
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 132
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !70
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.09297 = phi i64 [ %i.dm, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.bm = mul nuw i64 %.09297, %i.j               ; 6 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bm ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bm ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bm ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx151
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 3 uses
  %i.br = shl nuw i64 %index, 1                   ; 4 uses
  %i.bs = add nuw i64 %index, %i.bm               ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bs
  %wide.load = load <8 x i32>, ptr %i.bt, align 4, !tbaa !15, !alias.scope !82
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.bs
  %wide.load154 = load <8 x i32>, ptr %i.bu, align 4, !tbaa !15, !alias.scope !85
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.br
  %wide.vec = load <16 x i32>, ptr %i.bv, align 4, !tbaa !15, !alias.scope !87 ; 2 uses
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec155 = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.br
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.br
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.br
  %i.bz = sub nsw <8 x i32> %wide.load, %broadcast.splat
  %i.ca = sub nsw <8 x i32> %wide.load154, %broadcast.splat
  %i.cb = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ca to <8 x float>
  %i.cc = fpext reassoc nsz arcp contract afn <8 x float> %i.cb to <8 x double> ; 2 uses
  %i.cd = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.cc, splat (double 1.402000e+00)
  %i.ce = fptosi <8 x double> %i.cd to <8 x i32>  ; 2 uses
  %i.cf = add nsw <8 x i32> %strided.vec, %i.ce   ; 2 uses
  %i.cg = icmp sgt <8 x i32> %i.cf, %broadcast.splat153
  %i.ch = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cf, <8 x i32> zeroinitializer)
  %i.ci = select <8 x i1> %i.cg, <8 x i32> %broadcast.splat153, <8 x i32> %i.ch
  %i.cj = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bz to <8 x float>
  %i.ck = fpext reassoc nsz arcp contract afn <8 x float> %i.cj to <8 x double> ; 2 uses
  %i.cl = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.ck, splat (double 3.440000e-01)
  %i.cm = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.cc, splat (double 7.140000e-01)
  %i.cn = fadd reassoc nsz arcp contract afn <8 x double> %i.cm, %i.cl
  %i.co = fptosi <8 x double> %i.cn to <8 x i32>  ; 2 uses
  %i.cp = sub nsw <8 x i32> %strided.vec, %i.co   ; 2 uses
  %i.cq = icmp sgt <8 x i32> %i.cp, %broadcast.splat153
  %i.cr = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cp, <8 x i32> zeroinitializer)
  %i.cs = select <8 x i1> %i.cq, <8 x i32> %broadcast.splat153, <8 x i32> %i.cr
  %i.ct = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.ck, splat (double 1.772000e+00)
  %i.cu = fptosi <8 x double> %i.ct to <8 x i32>  ; 2 uses
  %i.cv = add nsw <8 x i32> %strided.vec, %i.cu   ; 2 uses
  %i.cw = icmp sgt <8 x i32> %i.cv, %broadcast.splat153
  %i.cx = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cv, <8 x i32> zeroinitializer)
  %i.cy = select <8 x i1> %i.cw, <8 x i32> %broadcast.splat153, <8 x i32> %i.cx
  %i.cz = add nsw <8 x i32> %strided.vec155, %i.ce ; 2 uses
  %i.da = icmp sgt <8 x i32> %i.cz, %broadcast.splat153
  %i.db = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cz, <8 x i32> zeroinitializer)
  %i.dc = select <8 x i1> %i.da, <8 x i32> %broadcast.splat153, <8 x i32> %i.db
  %interleaved.vec = shufflevector <8 x i32> %i.ci, <8 x i32> %i.dc, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec, ptr %i.bw, align 4, !tbaa !15, !alias.scope !89, !noalias !91
  %i.dd = sub nsw <8 x i32> %strided.vec155, %i.co ; 2 uses
  %i.de = icmp sgt <8 x i32> %i.dd, %broadcast.splat153
  %i.df = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dd, <8 x i32> zeroinitializer)
  %i.dg = select <8 x i1> %i.de, <8 x i32> %broadcast.splat153, <8 x i32> %i.df
  %interleaved.vec156 = shufflevector <8 x i32> %i.cs, <8 x i32> %i.dg, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec156, ptr %i.bx, align 4, !tbaa !15, !alias.scope !94, !noalias !95
  %i.dh = add nsw <8 x i32> %strided.vec155, %i.cu ; 2 uses
  %i.di = icmp sgt <8 x i32> %i.dh, %broadcast.splat153
  %i.dj = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dh, <8 x i32> zeroinitializer)
  %i.dk = select <8 x i1> %i.di, <8 x i32> %broadcast.splat153, <8 x i32> %i.dj
  %interleaved.vec157 = shufflevector <8 x i32> %i.cy, <8 x i32> %i.dk, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec157, ptr %i.by, align 4, !tbaa !15, !alias.scope !96, !noalias !97
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.096.ph = phi i64 [ %i.aq, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.dm = add nuw nsw i64 %.09297, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dm, %i.m
  br i1 %exitcond.not, label %._crit_edge99.split, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.096 = phi i64 [ %i.fp, %scalar.ph ], [ %.096.ph, %scalar.ph.preheader ] ; 6 uses
  %i.dn = lshr exact i64 %.096, 1
  %i.do = add nuw i64 %i.dn, %i.bm                ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !15
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.do
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !15
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.096 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !15 ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.096 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.096 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.096 ; 2 uses
  %i.dy = sub nsw i32 %i.dq, %i.f
  %i.dz = sub nsw i32 %i.ds, %i.f
  %i.ea = sitofp reassoc nsz arcp contract afn i32 %i.dz to float
  %i.eb = fpext reassoc nsz arcp contract afn float %i.ea to double ; 2 uses
  %i.ec = fmul reassoc nnan nsz arcp contract afn double %i.eb, 1.402000e+00
  %i.ed = fptosi double %i.ec to i32              ; 2 uses
  %i.ee = add nsw i32 %i.du, %i.ed                ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, %i.g
  %i.eg = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 0)
  %i.eh = select i1 %i.ef, i32 %i.g, i32 %i.eg
  store i32 %i.eh, ptr %i.dv, align 4, !tbaa !15
  %i.ei = sitofp reassoc nsz arcp contract afn i32 %i.dy to float
  %i.ej = fpext reassoc nsz arcp contract afn float %i.ei to double ; 2 uses
  %i.ek = fmul reassoc nnan nsz arcp contract afn double %i.ej, 3.440000e-01
  %i.el = fmul reassoc nnan nsz arcp contract afn double %i.eb, 7.140000e-01
  %i.em = fadd reassoc nsz arcp contract afn double %i.el, %i.ek
  %i.en = fptosi double %i.em to i32              ; 2 uses
  %i.eo = sub nsw i32 %i.du, %i.en                ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, %i.g
  %i.eq = tail call i32 @llvm.smax.i32(i32 %i.eo, i32 0)
  %i.er = select i1 %i.ep, i32 %i.g, i32 %i.eq
  store i32 %i.er, ptr %i.dw, align 4, !tbaa !15
  %i.es = fmul reassoc nnan nsz arcp contract afn double %i.ej, 1.772000e+00
  %i.et = fptosi double %i.es to i32              ; 2 uses
  %i.eu = add nsw i32 %i.du, %i.et                ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, %i.g
  %i.ew = tail call i32 @llvm.smax.i32(i32 %i.eu, i32 0)
  %i.ex = select i1 %i.ev, i32 %i.g, i32 %i.ew
  store i32 %i.ex, ptr %i.dx, align 4, !tbaa !15
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !15 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.fd = add nsw i32 %i.ez, %i.ed                ; 2 uses
  %i.fe = icmp sgt i32 %i.fd, %i.g
  %i.ff = tail call i32 @llvm.smax.i32(i32 %i.fd, i32 0)
  %i.fg = select i1 %i.fe, i32 %i.g, i32 %i.ff
  store i32 %i.fg, ptr %i.fa, align 4, !tbaa !15
  %i.fh = sub nsw i32 %i.ez, %i.en                ; 2 uses
  %i.fi = icmp sgt i32 %i.fh, %i.g
  %i.fj = tail call i32 @llvm.smax.i32(i32 %i.fh, i32 0)
  %i.fk = select i1 %i.fi, i32 %i.g, i32 %i.fj
  store i32 %i.fk, ptr %i.fb, align 4, !tbaa !15
  %i.fl = add nsw i32 %i.ez, %i.et                ; 2 uses
  %i.fm = icmp sgt i32 %i.fl, %i.g
  %i.fn = tail call i32 @llvm.smax.i32(i32 %i.fl, i32 0)
  %i.fo = select i1 %i.fm, i32 %i.g, i32 %i.fn
  store i32 %i.fo, ptr %i.fc, align 4, !tbaa !15
  %i.fp = add nuw nsw i64 %.096, 2                ; 2 uses
  %i.fq = icmp samesign ult i64 %i.fp, %i.j
  br i1 %i.fq, label %scalar.ph, label %._crit_edge, !llvm.loop !99

bb.c:                                             ; preds = %._crit_edge99.split, %bb.b
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @sycc444_to_rgb(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  %i.f = shl nuw i32 1, %i.e                      ; 3 uses
  %notmask = shl nsw i32 -1, %i.d
  %i.g = xor i32 %notmask, -1                     ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !46
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !49
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw i64 %i.m, %i.j                   ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 4 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 3 uses
  %1 = ptrtoaddr ptr %i.s to i64                  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57   ; 3 uses
  %i.v = ptrtoaddr ptr %i.u to i64                ; 3 uses
  %i.w = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 6 uses
  %i.x = ptrtoaddr ptr %i.w to i64                ; 5 uses
  %i.y = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 6 uses
  %i.z = ptrtoaddr ptr %i.y to i64                ; 5 uses
  %i.aa = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 6 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64              ; 5 uses
  %i.ac = icmp ne ptr %i.w, null
  %i.ad = icmp ne ptr %i.y, null
  %or.cond = and i1 %i.ac, %i.ad
  %i.ae = icmp ne ptr %i.aa, null
  %or.cond3 = and i1 %or.cond, %i.ae
  br i1 %or.cond3, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.n, 16
  br i1 %min.iters.check, label %.lr.ph.preheader79, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.af = sub i64 %i.x, %i.z
  %diff.check = icmp ugt i64 %i.af, -32
  %i.ag = sub i64 %i.x, %i.ab
  %diff.check54 = icmp ugt i64 %i.ag, -32
  %conflict.rdx = or i1 %diff.check, %diff.check54
  %i.ah = sub i64 %i.q, %i.x
  %diff.check55 = icmp ugt i64 %i.ah, -32
  %conflict.rdx56 = or i1 %conflict.rdx, %diff.check55
  %2 = sub i64 %1, %i.x
  %diff.check57 = icmp ugt i64 %2, -32
  %conflict.rdx58 = or i1 %conflict.rdx56, %diff.check57
  %3 = sub i64 %i.v, %i.x
  %diff.check59 = icmp ugt i64 %3, -32
  %conflict.rdx60 = or i1 %conflict.rdx58, %diff.check59
  %4 = sub i64 %i.z, %i.ab
  %diff.check61 = icmp ugt i64 %4, -32
  %conflict.rdx62 = or i1 %conflict.rdx60, %diff.check61
  %5 = sub i64 %i.q, %i.z
  %diff.check63 = icmp ugt i64 %5, -32
  %conflict.rdx64 = or i1 %conflict.rdx62, %diff.check63
  %i.ai = sub i64 %1, %i.z
  %diff.check65 = icmp ugt i64 %i.ai, -32
  %conflict.rdx66 = or i1 %conflict.rdx64, %diff.check65
  %6 = sub i64 %i.v, %i.z
  %diff.check67 = icmp ugt i64 %6, -32
  %conflict.rdx68 = or i1 %conflict.rdx66, %diff.check67
  %7 = sub i64 %i.q, %i.ab
  %diff.check69 = icmp ugt i64 %7, -32
  %conflict.rdx70 = or i1 %conflict.rdx68, %diff.check69
  %8 = sub i64 %1, %i.ab
  %diff.check71 = icmp ugt i64 %8, -32
  %conflict.rdx72 = or i1 %conflict.rdx70, %diff.check71
  %9 = sub i64 %i.v, %i.ab
  %diff.check73 = icmp ugt i64 %9, -32
  %conflict.rdx74 = or i1 %conflict.rdx72, %diff.check73
  br i1 %conflict.rdx74, label %.lr.ph.preheader79, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert75 = insertelement <8 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat76 = shufflevector <8 x i32> %broadcast.splatinsert75, <8 x i32> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index
  %wide.load = load <8 x i32>, ptr %i.aj, align 4, !tbaa !15 ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index
  %wide.load77 = load <8 x i32>, ptr %i.ak, align 4, !tbaa !15
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index
  %wide.load78 = load <8 x i32>, ptr %i.al, align 4, !tbaa !15
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index
  %i.ap = sub nsw <8 x i32> %wide.load77, %broadcast.splat
  %i.aq = sub nsw <8 x i32> %wide.load78, %broadcast.splat
  %i.ar = sitofp reassoc nsz arcp contract afn <8 x i32> %i.aq to <8 x float>
  %i.as = fpext reassoc nsz arcp contract afn <8 x float> %i.ar to <8 x double> ; 2 uses
  %i.at = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.as, splat (double 1.402000e+00)
  %i.au = fptosi <8 x double> %i.at to <8 x i32>
  %i.av = add nsw <8 x i32> %wide.load, %i.au     ; 2 uses
  %i.aw = icmp sgt <8 x i32> %i.av, %broadcast.splat76
  %i.ax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.av, <8 x i32> zeroinitializer)
  %i.ay = select <8 x i1> %i.aw, <8 x i32> %broadcast.splat76, <8 x i32> %i.ax
  store <8 x i32> %i.ay, ptr %i.am, align 4, !tbaa !15
  %i.az = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ap to <8 x float>
  %i.ba = fpext reassoc nsz arcp contract afn <8 x float> %i.az to <8 x double> ; 2 uses
  %i.bb = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.ba, splat (double 3.440000e-01)
  %i.bc = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.as, splat (double 7.140000e-01)
  %i.bd = fadd reassoc nsz arcp contract afn <8 x double> %i.bc, %i.bb
  %i.be = fptosi <8 x double> %i.bd to <8 x i32>
  %i.bf = sub nsw <8 x i32> %wide.load, %i.be     ; 2 uses
  %i.bg = icmp sgt <8 x i32> %i.bf, %broadcast.splat76
  %i.bh = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bf, <8 x i32> zeroinitializer)
  %i.bi = select <8 x i1> %i.bg, <8 x i32> %broadcast.splat76, <8 x i32> %i.bh
  store <8 x i32> %i.bi, ptr %i.an, align 4, !tbaa !15
  %i.bj = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.ba, splat (double 1.772000e+00)
  %i.bk = fptosi <8 x double> %i.bj to <8 x i32>
  %i.bl = add nsw <8 x i32> %wide.load, %i.bk     ; 2 uses
  %i.bm = icmp sgt <8 x i32> %i.bl, %broadcast.splat76
  %i.bn = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bl, <8 x i32> zeroinitializer)
  %i.bo = select <8 x i1> %i.bm, <8 x i32> %broadcast.splat76, <8 x i32> %i.bn
  store <8 x i32> %i.bo, ptr %i.ao, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader79

.lr.ph.preheader79:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.050.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.w) #15
  tail call void @free(ptr noundef %i.y) #15
  tail call void @free(ptr noundef %i.aa) #15
  br label %bb.c

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader
  tail call void @free(ptr noundef %i.p) #15
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store ptr %i.w, ptr %i.br, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.bt) #15
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 112
  store ptr %i.y, ptr %i.bv, align 8, !tbaa !57
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 176
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.bx) #15
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 176
  store ptr %i.aa, ptr %i.bz, align 8, !tbaa !57
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader79, %.lr.ph
  %.050 = phi i64 [ %i.dj, %.lr.ph ], [ %.050.ph, %.lr.ph.preheader79 ] ; 7 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.050
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !15 ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.050
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !15
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.050
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !15
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.050
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.050
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.050
  %i.cj = sub nsw i32 %i.cd, %i.f
  %i.ck = sub nsw i32 %i.cf, %i.f
  %i.cl = sitofp reassoc nsz arcp contract afn i32 %i.ck to float
  %i.cm = fpext reassoc nsz arcp contract afn float %i.cl to double ; 2 uses
  %i.cn = fmul reassoc nnan nsz arcp contract afn double %i.cm, 1.402000e+00
  %i.co = fptosi double %i.cn to i32
  %i.cp = add nsw i32 %i.cb, %i.co                ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, %i.g
  %i.cr = tail call i32 @llvm.smax.i32(i32 %i.cp, i32 0)
  %i.cs = select i1 %i.cq, i32 %i.g, i32 %i.cr
  store i32 %i.cs, ptr %i.cg, align 4, !tbaa !15
  %i.ct = sitofp reassoc nsz arcp contract afn i32 %i.cj to float
  %i.cu = fpext reassoc nsz arcp contract afn float %i.ct to double ; 2 uses
  %i.cv = fmul reassoc nnan nsz arcp contract afn double %i.cu, 3.440000e-01
  %i.cw = fmul reassoc nnan nsz arcp contract afn double %i.cm, 7.140000e-01
  %i.cx = fadd reassoc nsz arcp contract afn double %i.cw, %i.cv
  %i.cy = fptosi double %i.cx to i32
  %i.cz = sub nsw i32 %i.cb, %i.cy                ; 2 uses
  %i.da = icmp sgt i32 %i.cz, %i.g
  %i.db = tail call i32 @llvm.smax.i32(i32 %i.cz, i32 0)
  %i.dc = select i1 %i.da, i32 %i.g, i32 %i.db
  store i32 %i.dc, ptr %i.ch, align 4, !tbaa !15
  %i.dd = fmul reassoc nnan nsz arcp contract afn double %i.cu, 1.772000e+00
  %i.de = fptosi double %i.dd to i32
  %i.df = add nsw i32 %i.cb, %i.de                ; 2 uses
  %i.dg = icmp sgt i32 %i.df, %i.g
  %i.dh = tail call i32 @llvm.smax.i32(i32 %i.df, i32 0)
  %i.di = select i1 %i.dg, i32 %i.g, i32 %i.dh
  store i32 %i.di, ptr %i.ci, align 4, !tbaa !15
  %i.dj = add nuw i64 %.050, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dj, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !101

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr>, <4 x i1>, <4 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4i64.p0(<4 x i64>, ptr captures(none), <4 x i1>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4i32.p0(<4 x i32>, ptr captures(none), <4 x i1>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS9opj_image", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
end_hunk_0
