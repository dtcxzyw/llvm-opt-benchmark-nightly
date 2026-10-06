Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/interpolation?download=true
inline.NumInlined: 33
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 40
begin_hunk_0_@dt_interpolation_compute_sample:bb.a
  %wide.load148 = load <8 x float>, ptr %i.bf, align 64, !tbaa !19
  %wide.load149 = load <8 x float>, ptr %i.bg, align 32, !tbaa !19
  %i.bh = getelementptr inbounds [4 x i8], ptr %.0106, i64 %index ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %wide.load150 = load <8 x float>, ptr %i.bh, align 4, !tbaa !19
  %wide.load151 = load <8 x float>, ptr %i.bi, align 4, !tbaa !19
  %wide.load152 = load <8 x float>, ptr %i.bj, align 4, !tbaa !19
  %wide.load153 = load <8 x float>, ptr %i.bk, align 4, !tbaa !19
  %i.bl = fmul reassoc nsz arcp contract afn <8 x float> %wide.load150, %wide.load
  %i.bm = fmul reassoc nsz arcp contract afn <8 x float> %wide.load151, %wide.load147
  %i.bn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load152, %wide.load148
  %i.bo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load153, %wide.load149
  %i.bp = fadd reassoc nsz arcp contract afn <8 x float> %i.bl, %vec.phi ; 2 uses
  %i.bq = fadd reassoc nsz arcp contract afn <8 x float> %i.bm, %vec.phi144 ; 2 uses
  %i.br = fadd reassoc nsz arcp contract afn <8 x float> %i.bn, %vec.phi145 ; 2 uses
  %i.bs = fadd reassoc nsz arcp contract afn <8 x float> %i.bo, %vec.phi146 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.bq, %i.bp
  %bin.rdx154 = fadd reassoc nsz arcp contract afn <8 x float> %i.br, %bin.rdx
  %bin.rdx155 = fadd reassoc nsz arcp contract afn <8 x float> %i.bs, %bin.rdx154
  %i.bu = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx155) ; 3 uses
  br i1 %cmp.n, label %.loopexit219, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.bu, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.bv = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index157 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next161, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi158 = phi <4 x float> [ %i.bv, %vec.epilog.ph ], [ %i.bz, %vec.epilog.vector.body ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index157
  %wide.load159 = load <4 x float>, ptr %i.bw, align 16, !tbaa !19
  %i.bx = getelementptr inbounds [4 x i8], ptr %.0106, i64 %index157
  %wide.load160 = load <4 x float>, ptr %i.bx, align 4, !tbaa !19
  %i.by = fmul reassoc nsz arcp contract afn <4 x float> %wide.load160, %wide.load159
  %i.bz = fadd reassoc nsz arcp contract afn <4 x float> %i.by, %vec.phi158 ; 2 uses
  %index.next161 = add nuw i64 %index157, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next161, %n.vec156
  br i1 %i.ca, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !92

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cb = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bz) ; 2 uses
  br i1 %cmp.n162, label %.loopexit219, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec156, %vec.epilog.middle.block ] ; 4 uses
  %.082102.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.bu, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ] ; 2 uses
  %i.cc = sub i64 %i.ao, %indvars.iv.ph
  %xtraiter = and i64 %i.cc, 6                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.082102.prol = phi float [ %i.cj, %vec.epilog.scalar.ph.prol ], [ %.082102.ph, %vec.epilog.scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.prol
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !19
  %i.cf = mul nsw i64 %indvars.iv.prol, %i.bb
  %i.cg = getelementptr inbounds [4 x i8], ptr %.0106, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !19
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, %i.ce
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ci, %.082102.prol ; 3 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !93

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa232.unr = phi float [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.cj, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.082102.unr = phi float [ %.082102.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cj, %vec.epilog.scalar.ph.prol ]
  %i.ck = sub i64 %indvars.iv.ph, %i.ao
  %i.cl = icmp ugt i64 %i.ck, -8
  br i1 %i.cl, label %.loopexit219, label %vec.epilog.scalar.ph

.loopexit219:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa141 = phi float [ %i.cb, %vec.epilog.middle.block ], [ %i.bu, %middle.block ], [ %.lcssa232.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.eu, %vec.epilog.scalar.ph ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv120
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !19
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %.lcssa141
  %i.cp = fadd reassoc nsz arcp contract afn float %i.co, %.084104 ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %.0106, i64 %i.ba
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next121, %i.ao
  br i1 %exitcond123.not, label %.loopexit, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %.082102 = phi float [ %i.eu, %vec.epilog.scalar.ph ], [ %.082102.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !19
  %i.ct = mul nsw i64 %indvars.iv, %i.bb
  %i.cu = getelementptr inbounds [4 x i8], ptr %.0106, i64 %i.ct
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !19
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.cs
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cw, %.082102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !19
  %i.da = mul nsw i64 %indvars.iv.next, %i.bb
  %i.db = getelementptr inbounds [4 x i8], ptr %.0106, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !19
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.cz
  %i.de = fadd reassoc nsz arcp contract afn float %i.dd, %i.cx
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.1
  %i.dg = load float, ptr %i.df, align 4, !tbaa !19
  %i.dh = mul nsw i64 %indvars.iv.next.1, %i.bb
  %i.di = getelementptr inbounds [4 x i8], ptr %.0106, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !19
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.dg
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dk, %i.de
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.2
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !19
  %i.do = mul nsw i64 %indvars.iv.next.2, %i.bb
  %i.dp = getelementptr inbounds [4 x i8], ptr %.0106, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !19
  %i.dr = fmul reassoc nsz arcp contract afn float %i.dq, %i.dn
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dr, %i.dl
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.3
  %i.du = load float, ptr %i.dt, align 4, !tbaa !19
  %i.dv = mul nsw i64 %indvars.iv.next.3, %i.bb
  %i.dw = getelementptr inbounds [4 x i8], ptr %.0106, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !19
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, %i.du
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, %i.ds
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.4
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !19
  %i.ec = mul nsw i64 %indvars.iv.next.4, %i.bb
  %i.ed = getelementptr inbounds [4 x i8], ptr %.0106, i64 %i.ec
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !19
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, %i.eb
  %i.eg = fadd reassoc nsz arcp contract afn float %i.ef, %i.dz
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.5
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !19
  %i.ej = mul nsw i64 %indvars.iv.next.5, %i.bb
  %i.ek = getelementptr inbounds [4 x i8], ptr %.0106, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !19
  %i.em = fmul reassoc nsz arcp contract afn float %i.el, %i.ei
  %i.en = fadd reassoc nsz arcp contract afn float %i.em, %i.eg
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.6
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !19
  %i.eq = mul nsw i64 %indvars.iv.next.6, %i.bb
  %i.er = getelementptr inbounds [4 x i8], ptr %.0106, i64 %i.eq
  %i.es = load float, ptr %i.er, align 4, !tbaa !19
  %i.et = fmul reassoc nsz arcp contract afn float %i.es, %i.ep
  %i.eu = fadd reassoc nsz arcp contract afn float %i.et, %i.en ; 2 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %i.ao
  br i1 %exitcond.not.7, label %.loopexit219, label %vec.epilog.scalar.ph, !llvm.loop !94

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.ev = icmp sgt i32 %i.ac, -1
  %i.ew = icmp sgt i32 %i.ad, -1
  %or.cond = select i1 %i.ev, i1 %i.ew, i1 false
  %i.ex = icmp sgt i32 %4, %i.ac
  %or.cond95 = and i1 %i.ex, %or.cond
  %i.ey = icmp sgt i32 %5, %i.ad
  %or.cond96 = select i1 %or.cond95, i1 %i.ey, i1 false
  br i1 %or.cond96, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ez = shl i64 %i.af, 1                        ; 9 uses
  %.not114 = icmp eq i64 %i.ez, 0
  br i1 %.not114, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.fa = trunc i64 %i.ag to i32                  ; 2 uses
  %i.fb = sub i32 %i.ac, %i.fa
  %i.fc = sub i32 %i.ad, %i.fa
  %i.fd = sext i32 %i.fc to i64
  %i.fe = add nsw i32 %5, -1
  %i.ff = zext nneg i32 %i.fe to i64              ; 2 uses
  %factor.i = shl nuw nsw i64 %i.ff, 1
  %i.fg = sext i32 %i.fb to i64                   ; 3 uses
  %i.fh = add nsw i32 %4, -1
  %i.fi = zext nneg i32 %i.fh to i64              ; 4 uses
  %i.fj = sext i32 %7 to i64
  %i.fk = sext i32 %6 to i64                      ; 3 uses
  %factor.i98 = shl nuw nsw i64 %i.fi, 1          ; 3 uses
  %min.iters.check164 = icmp ult i64 %i.ez, 4
  %min.iters.check166 = icmp ult i64 %i.ez, 16
  %n.vec168 = and i64 %i.ez, -16                  ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.fg, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert169 = insertelement <8 x i64> poison, i64 %i.fi, i64 0
  %broadcast.splat170 = shufflevector <8 x i64> %broadcast.splatinsert169, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert171 = insertelement <8 x i64> poison, i64 %factor.i98, i64 0
  %broadcast.splat172 = shufflevector <8 x i64> %broadcast.splatinsert171, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert173 = insertelement <8 x i64> poison, i64 %i.fk, i64 0
  %broadcast.splat174 = shufflevector <8 x i64> %broadcast.splatinsert173, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <8 x i64> splat (i64 8), %broadcast.splat
  %cmp.n186 = icmp eq i64 %i.ez, %n.vec168
  %i.fl = and i64 %i.af, 6
  %min.epilog.iters.check192 = icmp eq i64 %i.fl, 0
  %n.vec194 = and i64 %i.ez, -4                   ; 3 uses
  %broadcast.splatinsert195 = insertelement <4 x i64> poison, i64 %i.fg, i64 0
  %broadcast.splat196 = shufflevector <4 x i64> %broadcast.splatinsert195, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert197 = insertelement <4 x i64> poison, i64 %i.fi, i64 0
  %broadcast.splat198 = shufflevector <4 x i64> %broadcast.splatinsert197, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert199 = insertelement <4 x i64> poison, i64 %factor.i98, i64 0
  %broadcast.splat200 = shufflevector <4 x i64> %broadcast.splatinsert199, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert201 = insertelement <4 x i64> poison, i64 %i.fk, i64 0
  %broadcast.splat202 = shufflevector <4 x i64> %broadcast.splatinsert201, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n215 = icmp eq i64 %i.ez, %n.vec194
  br label %iter.check189

iter.check189:                                    ; preds = %.lr.ph, %.loopexit218
  %.080110 = phi i64 [ 0, %.lr.ph ], [ %i.gp, %.loopexit218 ] ; 3 uses
  %.1109 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.go, %.loopexit218 ]
  %i.fm = add nsw i64 %.080110, %i.fd             ; 5 uses
  %i.fn = sub i64 0, %i.fm
  %i.fo = icmp slt i64 %i.fm, 0
  %i.fp = icmp samesign ugt i64 %i.fm, %i.ff
  %i.fq = sub nsw i64 %factor.i, %i.fm
  %spec.select = select i1 %i.fp, i64 %i.fq, i64 %i.fm
  %.0.i = select i1 %i.fo, i64 %i.fn, i64 %spec.select
  %i.fr = mul nsw i64 %.0.i, %i.fj
  %i.fs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fr ; 4 uses
  br i1 %min.iters.check164, label %_mirror.exit99.preheader, label %vector.main.loop.iter.check165

vector.main.loop.iter.check165:                   ; preds = %iter.check189
  br i1 %min.iters.check166, label %vec.epilog.ph193, label %vector.body175

vector.body175:                                   ; preds = %vector.main.loop.iter.check165, %vector.body175
  %index176 = phi i64 [ %index.next183, %vector.body175 ], [ 0, %vector.main.loop.iter.check165 ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body175 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.main.loop.iter.check165 ] ; 3 uses
  %vec.phi177 = phi <8 x float> [ %25, %vector.body175 ], [ zeroinitializer, %vector.main.loop.iter.check165 ]
  %vec.phi178 = phi <8 x float> [ %26, %vector.body175 ], [ zeroinitializer, %vector.main.loop.iter.check165 ]
  %8 = add nsw <8 x i64> %vec.ind, %broadcast.splat ; 5 uses
  %.reass = add <8 x i64> %vec.ind, %invariant.op ; 5 uses
  %9 = sub <8 x i64> zeroinitializer, %8
  %10 = sub <8 x i64> zeroinitializer, %.reass
  %11 = icmp slt <8 x i64> %8, zeroinitializer
  %12 = icmp slt <8 x i64> %.reass, zeroinitializer
  %13 = icmp ugt <8 x i64> %8, %broadcast.splat170
  %14 = icmp ugt <8 x i64> %.reass, %broadcast.splat170
  %15 = sub nsw <8 x i64> %broadcast.splat172, %8
  %16 = sub nsw <8 x i64> %broadcast.splat172, %.reass
  %17 = select <8 x i1> %13, <8 x i64> %15, <8 x i64> %8
  %18 = select <8 x i1> %14, <8 x i64> %16, <8 x i64> %.reass
  %19 = select <8 x i1> %11, <8 x i64> %9, <8 x i64> %17
  %20 = select <8 x i1> %12, <8 x i64> %10, <8 x i64> %18
  %21 = mul nsw <8 x i64> %19, %broadcast.splat174
  %22 = mul nsw <8 x i64> %20, %broadcast.splat174
  %wide.gep = getelementptr inbounds [4 x i8], ptr %i.fs, <8 x i64> %21
  %wide.gep179 = getelementptr inbounds [4 x i8], ptr %i.fs, <8 x i64> %22
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index176 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %wide.load180 = load <8 x float>, ptr %i.ft, align 64, !tbaa !19
  %wide.load181 = load <8 x float>, ptr %i.fu, align 32, !tbaa !19
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !19
  %wide.masked.gather182 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep179, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !19
  %23 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.load180
  %24 = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather182, %wide.load181
  %25 = fadd reassoc nsz arcp contract afn <8 x float> %23, %vec.phi177 ; 2 uses
  %26 = fadd reassoc nsz arcp contract afn <8 x float> %24, %vec.phi178 ; 2 uses
  %index.next183 = add nuw i64 %index176, 16      ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %i.fv = icmp eq i64 %index.next183, %n.vec168
  br i1 %i.fv, label %middle.block184, label %vector.body175, !llvm.loop !95

middle.block184:                                  ; preds = %vector.body175
  %bin.rdx185 = fadd reassoc nsz arcp contract afn <8 x float> %26, %25
  %i.fw = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx185) ; 3 uses
  br i1 %cmp.n186, label %.loopexit218, label %vec.epilog.iter.check191

vec.epilog.iter.check191:                         ; preds = %middle.block184
  br i1 %min.epilog.iters.check192, label %_mirror.exit99.preheader, label %vec.epilog.ph193, !prof !24

vec.epilog.ph193:                                 ; preds = %vector.main.loop.iter.check165, %vec.epilog.iter.check191
  %vec.epilog.resume.val187 = phi i64 [ %n.vec168, %vec.epilog.iter.check191 ], [ 0, %vector.main.loop.iter.check165 ] ; 2 uses
  %bc.merge.rdx188 = phi float [ %i.fw, %vec.epilog.iter.check191 ], [ 0.000000e+00, %vector.main.loop.iter.check165 ]
  %i.fx = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx188, i64 0
  %broadcast.splatinsert203 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val187, i64 0
  %broadcast.splat204 = shufflevector <4 x i64> %broadcast.splatinsert203, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat204, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body205

vec.epilog.vector.body205:                        ; preds = %vec.epilog.vector.body205, %vec.epilog.ph193
  %index206 = phi i64 [ %vec.epilog.resume.val187, %vec.epilog.ph193 ], [ %index.next212, %vec.epilog.vector.body205 ] ; 2 uses
  %vec.ind207 = phi <4 x i64> [ %induction, %vec.epilog.ph193 ], [ %vec.ind.next213, %vec.epilog.vector.body205 ] ; 2 uses
  %vec.phi208 = phi <4 x float> [ %i.fx, %vec.epilog.ph193 ], [ %i.gi, %vec.epilog.vector.body205 ]
  %i.fy = add nsw <4 x i64> %vec.ind207, %broadcast.splat196 ; 5 uses
  %i.fz = sub <4 x i64> zeroinitializer, %i.fy
  %i.ga = icmp slt <4 x i64> %i.fy, zeroinitializer
  %i.gb = icmp ugt <4 x i64> %i.fy, %broadcast.splat198
  %i.gc = sub nsw <4 x i64> %broadcast.splat200, %i.fy
  %i.gd = select <4 x i1> %i.gb, <4 x i64> %i.gc, <4 x i64> %i.fy
  %i.ge = select <4 x i1> %i.ga, <4 x i64> %i.fz, <4 x i64> %i.gd
  %i.gf = mul nsw <4 x i64> %i.ge, %broadcast.splat202
  %wide.gep209 = getelementptr inbounds [4 x i8], ptr %i.fs, <4 x i64> %i.gf
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index206
  %wide.load210 = load <4 x float>, ptr %i.gg, align 16, !tbaa !19
  %wide.masked.gather211 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep209, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !19
  %i.gh = fmul reassoc nsz arcp contract afn <4 x float> %wide.masked.gather211, %wide.load210
  %i.gi = fadd reassoc nsz arcp contract afn <4 x float> %i.gh, %vec.phi208 ; 2 uses
  %index.next212 = add nuw i64 %index206, 4       ; 2 uses
  %vec.ind.next213 = add nuw nsw <4 x i64> %vec.ind207, splat (i64 4)
  %i.gj = icmp eq i64 %index.next212, %n.vec194
  br i1 %i.gj, label %vec.epilog.middle.block214, label %vec.epilog.vector.body205, !llvm.loop !96

vec.epilog.middle.block214:                       ; preds = %vec.epilog.vector.body205
  %i.gk = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.gi) ; 2 uses
  br i1 %cmp.n215, label %.loopexit218, label %_mirror.exit99.preheader

_mirror.exit99.preheader:                         ; preds = %iter.check189, %vec.epilog.iter.check191, %vec.epilog.middle.block214
  %.078108.ph = phi i64 [ 0, %iter.check189 ], [ %n.vec168, %vec.epilog.iter.check191 ], [ %n.vec194, %vec.epilog.middle.block214 ]
  %.079107.ph = phi float [ 0.000000e+00, %iter.check189 ], [ %i.fw, %vec.epilog.iter.check191 ], [ %i.gk, %vec.epilog.middle.block214 ]
  br label %_mirror.exit99

.loopexit218:                                     ; preds = %_mirror.exit99, %vec.epilog.middle.block214, %middle.block184
  %.lcssa = phi float [ %i.gk, %vec.epilog.middle.block214 ], [ %i.fw, %middle.block184 ], [ %i.hb, %_mirror.exit99 ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.080110
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !19
  %i.gn = fmul reassoc nsz arcp contract afn float %i.gm, %.lcssa
  %i.go = fadd reassoc nsz arcp contract afn float %i.gn, %.1109 ; 2 uses
  %i.gp = add nuw nsw i64 %.080110, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.gp, %i.ez
  br i1 %exitcond125.not, label %.loopexit, label %iter.check189

_mirror.exit99:                                   ; preds = %_mirror.exit99.preheader, %_mirror.exit99
  %.078108 = phi i64 [ %i.hc, %_mirror.exit99 ], [ %.078108.ph, %_mirror.exit99.preheader ] ; 3 uses
  %.079107 = phi float [ %i.hb, %_mirror.exit99 ], [ %.079107.ph, %_mirror.exit99.preheader ]
  %i.gq = add nsw i64 %.078108, %i.fg             ; 5 uses
  %i.gr = sub i64 0, %i.gq
  %i.gs = icmp slt i64 %i.gq, 0
  %i.gt = icmp samesign ugt i64 %i.gq, %i.fi
  %i.gu = sub nsw i64 %factor.i98, %i.gq
  %spec.select112 = select i1 %i.gt, i64 %i.gu, i64 %i.gq
  %.0.i97 = select i1 %i.gs, i64 %i.gr, i64 %spec.select112
  %i.gv = mul nsw i64 %.0.i97, %i.fk
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.gv
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.078108
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !19
  %i.gz = load float, ptr %i.gw, align 4, !tbaa !19
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gz, %i.gy
  %i.hb = fadd reassoc nsz arcp contract afn float %i.ha, %.079107 ; 2 uses
  %i.hc = add nuw nsw i64 %.078108, 1             ; 2 uses
  %exitcond124.not = icmp eq i64 %i.hc, %i.ez
  br i1 %exitcond124.not, label %.loopexit218, label %_mirror.exit99, !llvm.loop !97

.loopexit:                                        ; preds = %.loopexit219, %.loopexit218, %bb.e, %bb.g, %bb.f
  %.2 = phi nsz float [ 0.000000e+00, %bb.f ], [ %i.go, %.loopexit218 ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.e ], [ %i.cp, %.loopexit219 ]
  %i.hd = fmul reassoc nsz arcp contract afn float %i.ab, %i.p
  %i.he = fdiv reassoc nsz arcp contract afn float %.2, %i.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret float %i.he
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @dt_interpolation_compute_pixel4c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, float noundef %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x float], align 64             ; 8 uses
  %i.b = alloca [8 x float], align 64             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %3)
  %i.d = fptosi float %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 3 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.d, 1
  %i.i = sub i32 %i.h, %i.g
  %i.j = sitofp reassoc nsz arcp contract afn i32 %i.i to float
  %i.k = fsub reassoc nsz arcp contract afn float %3, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = shl i64 %i.f, 1
  %i.o = uitofp reassoc nsz arcp contract afn i64 %i.f to float
  %i.p = call reassoc nsz arcp contract afn float %i.m(ptr noundef nonnull %i.a, i64 noundef %i.n, float noundef %i.o, float noundef %i.k, float noundef -1.000000e+00) #12, !inline_history !0
  %i.q = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %4)
  %i.r = fptosi float %i.q to i32
  %i.s = load i64, ptr %i.e, align 8, !tbaa !16   ; 3 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = add i32 %i.r, 1
  %i.v = sub i32 %i.u, %i.t
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.v to float
  %i.x = fsub reassoc nsz arcp contract afn float %4, %i.w
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.z = shl i64 %i.s, 1
  %i.aa = uitofp reassoc nsz arcp contract afn i64 %i.s to float
  %i.ab = call reassoc nsz arcp contract afn float %i.y(ptr noundef nonnull %i.b, i64 noundef %i.z, float noundef %i.aa, float noundef %i.x, float noundef -1.000000e+00) #12, !inline_history !0
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, %i.p
  %i.ad = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ac ; 2 uses
  %i.ae = fptosi float %3 to i32                  ; 5 uses
  %i.af = fptosi float %4 to i32                  ; 5 uses
  %i.ag = sext i32 %i.ae to i64                   ; 2 uses
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !16  ; 6 uses
  %i.ai = add i64 %i.ah, -1                       ; 4 uses
  %.not = icmp ugt i64 %i.ai, %i.ag
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = sext i32 %i.af to i64                   ; 2 uses
  %.not121 = icmp ugt i64 %i.ai, %i.aj
  br i1 %.not121, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = sext i32 %5 to i64
  %i.al = sub i64 %i.ak, %i.ah
  %i.am = icmp ugt i64 %i.al, %i.ag
  br i1 %i.am, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.an = sext i32 %6 to i64
  %i.ao = sub i64 %i.an, %i.ah
  %i.ap = icmp ugt i64 %i.ao, %i.aj
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = shl i64 %i.ah, 1                        ; 9 uses
  %.not147 = icmp eq i64 %i.aq, 0
  br i1 %.not147, label %.preheader131, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ar = mul nsw i32 %7, %i.af
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %1, i64 %i.as
  %i.au = shl nsw i32 %i.ae, 2
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.av
  %narrow = sub nsw i32 -4, %7
  %i.ax = sext i32 %narrow to i64
  %i.ay = mul i64 %i.ai, %i.ax
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = sext i32 %7 to i64
  %min.iters.check = icmp ult i64 %i.aq, 4
  %min.iters.check231 = icmp ult i64 %i.aq, 16
  %n.vec = and i64 %i.aq, -16                     ; 4 uses
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  %i.bb = and i64 %i.ah, 6
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  %n.vec254 = and i64 %i.aq, -4                   ; 3 uses
  %cmp.n267 = icmp eq i64 %i.aq, %n.vec254
  br label %iter.check

.preheader131:                                    ; preds = %.preheader132, %bb.e
  %i.bc = phi <4 x float> [ zeroinitializer, %bb.e ], [ %i.dr, %.preheader132 ]
  %i.bd = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bf = fmul reassoc nsz arcp contract afn <4 x float> %i.bc, %i.be
  store <4 x float> %i.bf, ptr %2, align 4, !tbaa !19
  br label %.loopexit

iter.check:                                       ; preds = %.lr.ph, %.preheader132
  %.0111137 = phi i64 [ 0, %.lr.ph ], [ %i.dt, %.preheader132 ] ; 2 uses
  %.0112136 = phi ptr [ %i.az, %.lr.ph ], [ %i.ds, %.preheader132 ] ; 5 uses
  %i.bg = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.dr, %.preheader132 ]
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check231, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %vec.phi = phi <8 x float> [ %i.bq, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi232 = phi <8 x float> [ %i.br, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
end_hunk_0
begin_hunk_1_@_maketaps_lanczos:.preheader78.preheader
  %i.dw = fadd reassoc nsz arcp contract afn <8 x float> %i.dv, splat (float f0x3089705F)
  %i.dx = select reassoc nsz arcp contract afn <8 x i1> %i.ap, <8 x float> %broadcast.splat176, <8 x float> %broadcast.splat174
  %i.dy = fmul reassoc nsz arcp contract afn <8 x float> %i.dx, %i.bz
  %i.dz = fmul reassoc nsz arcp contract afn <8 x float> %i.dy, %i.db
  %i.ea = fadd reassoc nsz arcp contract afn <8 x float> %i.dz, splat (float f0x3089705F)
  %i.eb = fmul reassoc nsz arcp contract afn <8 x float> %vec.ind, %vec.ind
  %i.ec = fmul reassoc nsz arcp contract afn <8 x float> %i.eb, splat (float f0x411DE9E7)
  %i.ed = fadd reassoc nsz arcp contract afn <8 x float> %i.ec, splat (float f0x3089705F)
  %i.ee = shl i64 %index, 4
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 %i.ee
  %i.eg = fdiv reassoc nsz arcp contract afn <8 x float> %i.df, %i.di
  %i.eh = fdiv reassoc nsz arcp contract afn <8 x float> %i.dm, %i.dp
  %i.ei = fdiv reassoc nsz arcp contract afn <8 x float> %i.dt, %i.dw
  %i.ej = fdiv reassoc nsz arcp contract afn <8 x float> %i.ea, %i.ed
  %i.ek = shufflevector <8 x float> %i.eg, <8 x float> %i.eh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.el = shufflevector <8 x float> %i.ei, <8 x float> %i.ej, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ek, <16 x float> %i.el, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ef, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind, %broadcast.splat182
  %vec.ind.next195 = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind192, %broadcast.splat182
  %vec.ind.next196 = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind193, %broadcast.splat182
  %vec.ind.next197 = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind194, %broadcast.splat182
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.preheader, label %.preheader76.preheader

.preheader76.preheader:                           ; preds = %.lr.ph, %middle.block
  %.07287.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.ph = phi <4 x float> [ %i.j, %.lr.ph ], [ %i.t, %middle.block ]
  %invariant.op251 = fmul reassoc nsz arcp contract afn <4 x float> splat (float f0x40490FDB), %i.m
  %factor.op.fmul253 = fmul reassoc nsz arcp contract afn <4 x float> splat (float f0x40490FDB), %i.n
  %i.en = insertelement <4 x float> poison, float %i.a, i64 0
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.preheader76

.preheader:                                       ; preds = %.preheader76, %middle.block, %.preheader78.preheader
  %.not92 = icmp eq i64 %1, 0
  br i1 %.not92, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %min.iters.check203 = icmp ult i64 %1, 4
  br i1 %min.iters.check203, label %.lr.ph90.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check204 = icmp ult i64 %1, 32
  br i1 %min.iters.check204, label %vec.epilog.ph, label %vector.ph205

vector.ph205:                                     ; preds = %vector.main.loop.iter.check
  %i.ep = and i64 %1, 28
  %n.vec206 = and i64 %1, -32                     ; 4 uses
  br label %vector.body207

vector.body207:                                   ; preds = %vector.ph205, %vector.body207
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next215, %vector.body207 ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph205 ], [ %i.eu, %vector.body207 ]
  %vec.phi209 = phi <8 x float> [ zeroinitializer, %vector.ph205 ], [ %i.ev, %vector.body207 ]
  %vec.phi210 = phi <8 x float> [ zeroinitializer, %vector.ph205 ], [ %i.ew, %vector.body207 ]
  %vec.phi211 = phi <8 x float> [ zeroinitializer, %vector.ph205 ], [ %i.ex, %vector.body207 ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index208 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 96
  %wide.load = load <8 x float>, ptr %i.eq, align 4, !tbaa !19
  %wide.load212 = load <8 x float>, ptr %i.er, align 4, !tbaa !19
  %wide.load213 = load <8 x float>, ptr %i.es, align 4, !tbaa !19
  %wide.load214 = load <8 x float>, ptr %i.et, align 4, !tbaa !19
  %i.eu = fadd reassoc nsz arcp contract afn <8 x float> %wide.load, %vec.phi ; 2 uses
  %i.ev = fadd reassoc nsz arcp contract afn <8 x float> %wide.load212, %vec.phi209 ; 2 uses
  %i.ew = fadd reassoc nsz arcp contract afn <8 x float> %wide.load213, %vec.phi210 ; 2 uses
  %i.ex = fadd reassoc nsz arcp contract afn <8 x float> %wide.load214, %vec.phi211 ; 2 uses
  %index.next215 = add nuw i64 %index208, 32      ; 2 uses
  %i.ey = icmp eq i64 %index.next215, %n.vec206
  br i1 %i.ey, label %middle.block216, label %vector.body207, !llvm.loop !148

middle.block216:                                  ; preds = %vector.body207
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.ev, %i.eu
  %bin.rdx217 = fadd reassoc nsz arcp contract afn <8 x float> %i.ew, %bin.rdx
  %bin.rdx218 = fadd reassoc nsz arcp contract afn <8 x float> %i.ex, %bin.rdx217
  %i.ez = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx218) ; 3 uses
  %cmp.n219 = icmp eq i64 %1, %n.vec206
  br i1 %cmp.n219, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block216
  %min.epilog.iters.check = icmp eq i64 %i.ep, 0
  br i1 %min.epilog.iters.check, label %.lr.ph90.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec206, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.ez, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %n.vec220 = and i64 %1, -4                      ; 3 uses
  %i.fa = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index221 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next224, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi222 = phi <4 x float> [ %i.fa, %vec.epilog.ph ], [ %i.fc, %vec.epilog.vector.body ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index221
  %wide.load223 = load <4 x float>, ptr %i.fb, align 4, !tbaa !19
  %i.fc = fadd reassoc nsz arcp contract afn <4 x float> %wide.load223, %vec.phi222 ; 2 uses
  %index.next224 = add nuw i64 %index221, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next224, %n.vec220
  br i1 %i.fd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !149

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fe = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.fc) ; 2 uses
  %cmp.n225 = icmp eq i64 %1, %n.vec220
  br i1 %cmp.n225, label %._crit_edge, label %.lr.ph90.preheader

.lr.ph90.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.089.ph = phi i64 [ 0, %iter.check ], [ %n.vec206, %vec.epilog.iter.check ], [ %n.vec220, %vec.epilog.middle.block ]
  %.06588.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.ez, %vec.epilog.iter.check ], [ %i.fe, %vec.epilog.middle.block ]
  br label %.lr.ph90

.preheader76:                                     ; preds = %.preheader76.preheader, %.preheader76
  %.07287 = phi i64 [ %i.gl, %.preheader76 ], [ %.07287.ph, %.preheader76.preheader ] ; 2 uses
  %i.ff = phi <4 x float> [ %i.gk, %.preheader76 ], [ %.ph, %.preheader76.preheader ] ; 7 uses
  %i.fg = fptosi <4 x float> %i.ff to <4 x i32>   ; 2 uses
  %i.fh = sitofp <4 x i32> %i.fg to <4 x float>
  %.reass254 = fmul reassoc nsz arcp contract afn <4 x float> %i.ff, %factor.op.fmul253
  %i.fi = fmul reassoc nsz arcp contract afn <4 x float> %i.ff, %i.ff
  %.idx = shl i64 %.07287, 4
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.fk = fsub reassoc nsz arcp contract afn <4 x float> %i.ff, %i.fh ; 2 uses
  %i.fl = and <4 x i32> %i.fg, splat (i32 1)
  %i.fm = icmp eq <4 x i32> %i.fl, zeroinitializer
  %i.fn = fmul reassoc nsz arcp contract afn <4 x float> %i.fk, splat (float f0x40490FDB)
  %.reass252 = fmul reassoc nsz arcp contract afn <4 x float> %i.ff, %invariant.op251
  %i.fo = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fn)
  %i.fp = fmul reassoc nsz arcp contract afn <4 x float> %i.fk, splat (float f0x3FA2F983)
  %i.fq = fsub reassoc nsz arcp contract afn <4 x float> splat (float f0x40490FDB), %i.fo
  %i.fr = fmul reassoc nsz arcp contract afn <4 x float> %i.fp, %i.fq ; 2 uses
  %i.fs = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fr)
  %i.ft = fmul reassoc nsz arcp contract afn <4 x float> %i.fs, splat (float 2.250000e-01)
  %i.fu = fadd reassoc nsz arcp contract afn <4 x float> %i.ft, splat (float f0x3F466666)
  %i.fv = fmul reassoc nsz arcp contract afn <4 x float> %i.fu, %i.fr
  %i.fw = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %.reass252)
  %i.fx = fsub reassoc nsz arcp contract afn <4 x float> splat (float f0x40490FDB), %i.fw
  %i.fy = fmul reassoc nsz arcp contract afn <4 x float> %.reass254, %i.fx ; 2 uses
  %i.fz = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fy)
  %i.ga = fmul reassoc nsz arcp contract afn <4 x float> %i.fz, splat (float 2.250000e-01)
  %i.gb = fadd reassoc nsz arcp contract afn <4 x float> %i.ga, splat (float f0x3F466666)
  %i.gc = fmul reassoc nsz arcp contract afn <4 x float> %i.gb, %i.fy
  %i.gd = select <4 x i1> %i.fm, <4 x float> %i.l, <4 x float> %i.o
  %i.ge = fmul reassoc nsz arcp contract afn <4 x float> %i.gd, %i.fv
  %i.gf = fmul reassoc nsz arcp contract afn <4 x float> %i.ge, %i.gc
  %i.gg = fadd reassoc nsz arcp contract afn <4 x float> %i.gf, splat (float f0x3089705F)
  %i.gh = fmul reassoc nsz arcp contract afn <4 x float> %i.fi, splat (float f0x411DE9E7)
  %i.gi = fadd reassoc nsz arcp contract afn <4 x float> %i.gh, splat (float f0x3089705F)
  %i.gj = fdiv reassoc nsz arcp contract afn <4 x float> %i.gg, %i.gi
  store <4 x float> %i.gj, ptr %i.fj, align 4, !tbaa !19
  %i.gk = fadd reassoc nsz arcp contract afn <4 x float> %i.ff, %i.eo
  %i.gl = add nuw i64 %.07287, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.gl, %i.d
  br i1 %exitcond.not, label %.preheader, label %.preheader76, !llvm.loop !150

._crit_edge:                                      ; preds = %.lr.ph90, %middle.block216, %vec.epilog.middle.block, %.preheader
  %.065.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.fe, %vec.epilog.middle.block ], [ %i.ez, %middle.block216 ], [ %i.go, %.lr.ph90 ]
  ret float %.065.lcssa

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %.lr.ph90
  %.089 = phi i64 [ %i.gp, %.lr.ph90 ], [ %.089.ph, %.lr.ph90.preheader ] ; 2 uses
  %.06588 = phi float [ %i.go, %.lr.ph90 ], [ %.06588.ph, %.lr.ph90.preheader ]
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.089
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !19
  %i.go = fadd reassoc nsz arcp contract afn float %i.gn, %.06588 ; 2 uses
  %i.gp = add nuw i64 %.089, 1                    ; 2 uses
  %exitcond93.not = icmp eq i64 %i.gp, %1
  br i1 %exitcond93.not, label %._crit_edge, label %.lr.ph90, !llvm.loop !151
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #11

declare i64 @dt_round_size(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.x86.sse.sfence() #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.fabs.v32f32(<32 x float>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!"dt_interpolation_t", !9, i64 0, !13, i64 8, !14, i64 16, !12, i64 24}
!16 = !{!15, !14, i64 16}
!17 = !{!15, !12, i64 24}
!18 = !{!"float", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!"branch_weights", i32 4, i32 28}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!"branch_weights", i32 4, i32 12}
!25 = !{!"p1 int", !12, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 float", !12, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"dt_iop_roi_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !18, i64 16}
!30 = !{!29, !9, i64 8}
!31 = !{!29, !9, i64 0}
!32 = !{!29, !9, i64 4}
!33 = !{!29, !9, i64 12}
!34 = !{!29, !18, i64 16}
!35 = !{!"dt_codepath_t", !9, i64 0}
!36 = !{!"p1 _ZTS6_GList", !12, i64 0}
!37 = !{!"p1 _ZTS11_JsonParser", !12, i64 0}
!38 = !{!"p1 _ZTS9dt_conf_t", !12, i64 0}
!39 = !{!"p1 _ZTS12dt_develop_t", !12, i64 0}
!40 = !{!"p1 _ZTS8dt_lib_t", !12, i64 0}
!41 = !{!"p1 _ZTS17dt_view_manager_t", !12, i64 0}
!42 = !{!"p1 _ZTS12dt_control_t", !12, i64 0}
!43 = !{!"p1 _ZTS19dt_control_signal_t", !12, i64 0}
!44 = !{!"p1 _ZTS12dt_gui_gtk_t", !12, i64 0}
!45 = !{!"p1 _ZTS17dt_mipmap_cache_t", !12, i64 0}
!46 = !{!"p1 _ZTS16dt_image_cache_t", !12, i64 0}
!47 = !{!"p1 _ZTS12dt_bauhaus_t", !12, i64 0}
!48 = !{!"p1 _ZTS13dt_database_t", !12, i64 0}
!49 = !{!"p1 _ZTS14dt_pwstorage_t", !12, i64 0}
!50 = !{!"p1 _ZTS11dt_camctl_t", !12, i64 0}
!51 = !{!"p1 _ZTS15dt_collection_t", !12, i64 0}
!52 = !{!"p1 _ZTS14dt_selection_t", !12, i64 0}
!53 = !{!"p1 _ZTS11dt_points_t", !12, i64 0}
!54 = !{!"p1 _ZTS12dt_imageio_t", !12, i64 0}
!55 = !{!"p1 _ZTS11dt_opencl_t", !12, i64 0}
!56 = !{!"p1 _ZTS9dt_dbus_t", !12, i64 0}
!57 = !{!"p1 _ZTS9dt_undo_t", !12, i64 0}
!58 = !{!"p1 _ZTS16dt_colorspaces_t", !12, i64 0}
!59 = !{!"p1 _ZTS9dt_l10n_t", !12, i64 0}
!60 = !{!"dt_pthread_mutex_t", !8, i64 0}
!61 = !{!"p1 _ZTS9lua_State", !12, i64 0}
!62 = !{!"_Bool", !8, i64 0}
!63 = !{!"p1 _ZTS10_GMainLoop", !12, i64 0}
!64 = !{!"p1 _ZTS13_GMainContext", !12, i64 0}
!65 = !{!"p1 _ZTS12_GThreadPool", !12, i64 0}
!66 = !{!"p1 _ZTS12_GAsyncQueue", !12, i64 0}
!67 = !{!"", !61, i64 0, !60, i64 8, !8, i64 48, !62, i64 96, !62, i64 97, !63, i64 104, !64, i64 112, !65, i64 120, !66, i64 128, !66, i64 136, !66, i64 144}
!68 = !{!"double", !8, i64 0}
!69 = !{!"p1 _ZTS10_GTimeZone", !12, i64 0}
!70 = !{!"p1 _ZTS10_GDateTime", !12, i64 0}
!71 = !{!"dt_sys_resources_t", !14, i64 0, !14, i64 8, !25, i64 16, !25, i64 24, !9, i64 32}
!72 = !{!"dt_backthumb_t", !68, i64 0, !68, i64 8, !9, i64 16, !9, i64 20}
!73 = !{!"dt_gimp_t", !9, i64 0, !13, i64 8, !13, i64 16, !9, i64 24, !9, i64 28}
!74 = !{!"p1 _ZTS10_GtkWidget", !12, i64 0}
!75 = !{!"dt_splash_t", !74, i64 0, !74, i64 8, !74, i64 16, !74, i64 24, !9, i64 32}
!76 = !{!"darktable_t", !35, i64 0, !9, i64 4, !9, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !37, i64 48, !38, i64 56, !39, i64 64, !40, i64 72, !41, i64 80, !42, i64 88, !43, i64 96, !44, i64 104, !45, i64 112, !46, i64 120, !47, i64 128, !48, i64 136, !49, i64 144, !50, i64 152, !51, i64 160, !52, i64 168, !53, i64 176, !54, i64 184, !55, i64 192, !56, i64 200, !57, i64 208, !58, i64 216, !59, i64 224, !8, i64 232, !60, i64 2792, !60, i64 2832, !60, i64 2872, !60, i64 2912, !60, i64 2952, !60, i64 2992, !13, i64 3032, !13, i64 3040, !13, i64 3048, !13, i64 3056, !13, i64 3064, !13, i64 3072, !13, i64 3080, !13, i64 3088, !13, i64 3096, !13, i64 3104, !13, i64 3112, !13, i64 3120, !13, i64 3128, !67, i64 3136, !36, i64 3288, !68, i64 3296, !36, i64 3304, !9, i64 3312, !8, i64 3316, !9, i64 3512, !9, i64 3516, !69, i64 3520, !70, i64 3528, !71, i64 3536, !72, i64 3576, !73, i64 3600, !75, i64 3632, !9, i64 3672}
!77 = !{!76, !9, i64 8}
!78 = !{!15, !13, i64 8}
!79 = !{!14, !14, i64 0}
!80 = !{!"", !68, i64 0, !68, i64 8}
!81 = !{!80, !68, i64 0}
!82 = !{!80, !68, i64 8}
!83 = !{!"timeval", !14, i64 0, !14, i64 8}
!84 = !{!83, !14, i64 0}
!85 = !{!83, !14, i64 8}
!86 = !{!"rusage", !83, i64 0, !83, i64 16, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136}
!87 = !{!86, !14, i64 0}
!88 = !{!86, !14, i64 8}
!89 = !{!9, !9, i64 0}
!90 = !{i64 0, i64 4, !89, i64 4, i64 4, !89, i64 8, i64 4, !89, i64 12, i64 4, !89, i64 16, i64 4, !19}
!91 = distinct !{!91, !20, !21}
!92 = distinct !{!92, !20, !21}
!93 = distinct !{!93, !23}
!94 = distinct !{!94, !20}
!95 = distinct !{!95, !20, !21}
!96 = distinct !{!96, !20, !21}
!97 = distinct !{!97, !21, !20}
!98 = distinct !{!98, i1 false, !"copy_pixel"}
!99 = distinct !{!99, !98, !"copy_pixel: argument 1"}
!100 = distinct !{!100, !98, !"copy_pixel: argument 0"}
!101 = distinct !{!101, !20, !21}
!102 = distinct !{!102, !20, !21}
!103 = distinct !{!103, !21, !20}
!104 = distinct !{!104, i1 false, !"copy_pixel"}
!105 = distinct !{!105, !104, !"copy_pixel: argument 1"}
!106 = distinct !{!106, !104, !"copy_pixel: argument 0"}
!107 = distinct !{!107, !20, !21}
!108 = distinct !{!108, !21, !20}
!109 = !{!100, !99}
!110 = !{!106, !105}
!111 = distinct !{!111, i1 false, !"copy_pixel"}
!112 = distinct !{!112, !111, !"copy_pixel: argument 1"}
!113 = distinct !{!113, !111, !"copy_pixel: argument 0"}
!114 = distinct !{!114, !20, !21}
!115 = distinct !{!115, !20, !21}
!116 = distinct !{!116, !21, !20}
!117 = distinct !{!117, !23}
!118 = distinct !{!118, i1 false, !"copy_pixel_nontemporal"}
!119 = distinct !{!119, !118, !"copy_pixel_nontemporal: argument 0"}
!120 = !{!113, !112}
!121 = !{!8, !8, i64 0}
!122 = !{!119}
!123 = !{i32 1}
!124 = distinct !{!124, !20, !21}
!125 = distinct !{!125, !20, !21}
!126 = distinct !{!126, !20, !21}
!127 = distinct !{!127, !20, !21}
!128 = distinct !{!128, !21, !20}
!129 = distinct !{!129, !20}
!130 = distinct !{null}
!131 = distinct !{!131, !20, !21}
!132 = distinct !{!132, !20, !21}
!133 = distinct !{!133, !20, !21}
!134 = distinct !{!134, !20, !21}
!135 = distinct !{!135, !21, !20}
!136 = distinct !{!136, !20}
!137 = distinct !{!137, !20, !21}
!138 = distinct !{!138, !20, !21}
!139 = distinct !{!139, !21, !20}
!140 = distinct !{!140, !20, !21}
!141 = distinct !{!141, !20, !21}
!142 = distinct !{!142, !21, !20}
!143 = distinct !{!143, !20, !21}
!144 = distinct !{!144, !21, !20}
!145 = distinct !{!145, !20, !21}
!146 = distinct !{!146, !21, !20}
!147 = distinct !{!147, !20, !21}
!148 = distinct !{!148, !20, !21}
!149 = distinct !{!149, !20, !21}
!150 = distinct !{!150, !21, !20}
!151 = distinct !{!151, !21, !20}
end_hunk_1
