Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp_x86_avx512?download=true
inline.NumInlined: 111
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK4ncnn17Interp_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.6:bb.a
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not157 = icmp sgt i32 %i.k, %i.j
  br i1 %.not157, label %._crit_edge161, label %.lr.ph160

.lr.ph160:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !25     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph160.split.preheader, label %._crit_edge161

.lr.ph160.split.preheader:                        ; preds = %.lr.ph160
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph160.split

.lr.ph160.split:                                  ; preds = %.lr.ph160.split.preheader, %._crit_edge156
  %i.t = phi i32 [ %i.p, %.lr.ph160.split.preheader ], [ %i.am, %._crit_edge156 ] ; 2 uses
  %indvars.iv180 = phi i64 [ %i.r, %.lr.ph160.split.preheader ], [ %indvars.iv.next181, %._crit_edge156 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !26
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv180, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !29
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph155.preheader, label %._crit_edge156

.lr.ph155.preheader:                              ; preds = %.lr.ph160.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !72
  %i.ae = load ptr, ptr %4, align 8, !tbaa !45
  %i.af = load i32, ptr %i.n, align 4, !tbaa !26
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv180, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !29
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !25
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph155

._crit_edge156:                                   ; preds = %._crit_edge150, %.lr.ph160.split
  %i.am = phi i32 [ %i.t, %.lr.ph160.split ], [ %i.ja, %._crit_edge150 ]
  %indvars.iv.next181 = add nsw i64 %indvars.iv180, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next181 to i32
  %exitcond183.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond183.not, label %._crit_edge161, label %.lr.ph160.split, !llvm.loop !137

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %._crit_edge150
  %i.an = phi i32 [ %.pre, %.lr.ph155.preheader ], [ %i.ed, %._crit_edge150 ] ; 4 uses
  %indvars.iv177 = phi i64 [ 0, %.lr.ph155.preheader ], [ %indvars.iv.next178, %._crit_edge150 ] ; 2 uses
  %.0113152 = phi ptr [ %i.ad, %.lr.ph155.preheader ], [ %i.iy, %._crit_edge150 ] ; 5 uses
  %.0114151 = phi ptr [ %i.ak, %.lr.ph155.preheader ], [ %i.iz, %._crit_edge150 ] ; 8 uses
  %.0114151206 = ptrtoaddr ptr %.0114151 to i64   ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv177
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !25
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.as ; 11 uses
  %i.au = load float, ptr %.0113152, align 4, !tbaa !70 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0113152, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !70 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0113152, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !70 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0113152, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !70 ; 6 uses
  %i.bb = insertelement <16 x float> poison, float %i.au, i64 0
  %i.bc = shufflevector <16 x float> %i.bb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bd = insertelement <16 x float> poison, float %i.aw, i64 0
  %i.be = shufflevector <16 x float> %i.bd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bf = insertelement <16 x float> poison, float %i.ay, i64 0
  %i.bg = shufflevector <16 x float> %i.bf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bh = insertelement <16 x float> poison, float %i.ba, i64 0
  %i.bi = shufflevector <16 x float> %i.bh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bj = icmp sgt i32 %i.an, 15
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph155, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph155 ] ; 3 uses
  %i.bk = phi i32 [ %i.cd, %.lr.ph ], [ %i.an, %.lr.ph155 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.bm = sext i32 %i.bk to i64                   ; 2 uses
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = load <16 x float>, ptr %i.bo, align 64, !tbaa !17
  %i.bq = load <16 x float>, ptr %i.bl, align 64, !tbaa !17
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bs = load <16 x float>, ptr %i.br, align 64, !tbaa !17
  %i.bt = shl nsw i32 %i.bk, 1
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bu
  %i.bw = load <16 x float>, ptr %i.bv, align 64, !tbaa !17
  %i.bx = fmul fast <16 x float> %i.bp, %i.bc
  %i.by = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bq, <16 x float> nofpclass(nan inf) %i.be, <16 x float> nofpclass(nan inf) %i.bx)
  %i.bz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.bg, <16 x float> nofpclass(nan inf) %i.by)
  %i.ca = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bw, <16 x float> nofpclass(nan inf) %i.bi, <16 x float> nofpclass(nan inf) %i.bz)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.0114151, i64 %indvars.iv
  store <16 x float> %i.ca, ptr %i.cb, align 64, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.cc = or disjoint i64 %indvars.iv.next, 15
  %i.cd = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %i.cc, %i.ce
  br i1 %i.cf, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !138

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cg = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph155
  %i.ch = phi i32 [ %i.an, %.lr.ph155 ], [ %i.cd, %._crit_edge.loopexit ] ; 3 uses
  %.0111.lcssa = phi i32 [ 0, %.lr.ph155 ], [ %i.cg, %._crit_edge.loopexit ] ; 3 uses
  %i.ci = insertelement <8 x float> poison, float %i.au, i64 0
  %i.cj = shufflevector <8 x float> %i.ci, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ck = insertelement <8 x float> poison, float %i.aw, i64 0
  %i.cl = shufflevector <8 x float> %i.ck, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cm = insertelement <8 x float> poison, float %i.ay, i64 0
  %i.cn = shufflevector <8 x float> %i.cm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.co = insertelement <8 x float> poison, float %i.ba, i64 0
  %i.cp = shufflevector <8 x float> %i.co, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cq = or disjoint i32 %.0111.lcssa, 7
  %i.cr = icmp slt i32 %i.cq, %i.ch
  br i1 %i.cr, label %.lr.ph140.preheader, label %._crit_edge141

.lr.ph140.preheader:                              ; preds = %._crit_edge
  %i.cs = zext nneg i32 %.0111.lcssa to i64
  br label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %.lr.ph140
  %indvars.iv168 = phi i64 [ %i.cs, %.lr.ph140.preheader ], [ %indvars.iv.next169, %.lr.ph140 ] ; 3 uses
  %i.ct = phi i32 [ %i.ch, %.lr.ph140.preheader ], [ %i.dm, %.lr.ph140 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv168 ; 4 uses
  %i.cv = sext i32 %i.ct to i64                   ; 2 uses
  %i.cw = sub nsw i64 0, %i.cv
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cw
  %i.cy = load <8 x float>, ptr %i.cx, align 32, !tbaa !17
  %i.cz = load <8 x float>, ptr %i.cu, align 32, !tbaa !17
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cv
  %i.db = load <8 x float>, ptr %i.da, align 32, !tbaa !17
  %i.dc = shl nsw i32 %i.ct, 1
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.dd
  %i.df = load <8 x float>, ptr %i.de, align 32, !tbaa !17
  %i.dg = fmul fast <8 x float> %i.cy, %i.cj
  %i.dh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cz, <8 x float> nofpclass(nan inf) %i.cl, <8 x float> nofpclass(nan inf) %i.dg)
  %i.di = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.db, <8 x float> nofpclass(nan inf) %i.cn, <8 x float> nofpclass(nan inf) %i.dh)
  %i.dj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.df, <8 x float> nofpclass(nan inf) %i.cp, <8 x float> nofpclass(nan inf) %i.di)
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.0114151, i64 %indvars.iv168
  store <8 x float> %i.dj, ptr %i.dk, align 32, !tbaa !17
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 8 ; 3 uses
  %i.dl = or disjoint i64 %indvars.iv.next169, 7
  %i.dm = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp slt i64 %i.dl, %i.dn
  br i1 %i.do, label %.lr.ph140, label %._crit_edge141.loopexit, !llvm.loop !139

._crit_edge141.loopexit:                          ; preds = %.lr.ph140
  %i.dp = trunc nuw nsw i64 %indvars.iv.next169 to i32
  br label %._crit_edge141

._crit_edge141:                                   ; preds = %._crit_edge141.loopexit, %._crit_edge
  %i.dq = phi i32 [ %i.ch, %._crit_edge ], [ %i.dm, %._crit_edge141.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0111.lcssa, %._crit_edge ], [ %i.dp, %._crit_edge141.loopexit ] ; 3 uses
  %i.dr = insertelement <4 x float> poison, float %i.au, i64 0
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dt = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dx = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dz = or disjoint i32 %.1.lcssa, 3
  %i.ea = icmp slt i32 %i.dz, %i.dq
  br i1 %i.ea, label %.lr.ph145.preheader, label %.preheader

.lr.ph145.preheader:                              ; preds = %._crit_edge141
  %i.eb = zext nneg i32 %.1.lcssa to i64
  br label %.lr.ph145

.preheader.loopexit:                              ; preds = %.lr.ph145
  %i.ec = trunc nuw i64 %indvars.iv.next172 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge141
  %i.ed = phi i32 [ %i.dq, %._crit_edge141 ], [ %i.if, %.preheader.loopexit ] ; 5 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %._crit_edge141 ], [ %i.ec, %.preheader.loopexit ] ; 2 uses
  %i.ee = icmp slt i32 %.2.lcssa, %i.ed
  br i1 %i.ee, label %iter.check, label %.preheader.._crit_edge150_crit_edge

.preheader.._crit_edge150_crit_edge:              ; preds = %.preheader
  %.pre184 = sext i32 %i.ed to i64
  br label %._crit_edge150

iter.check:                                       ; preds = %.preheader
  %i.ef = shl nuw nsw i32 %i.ed, 1
  %i.eg = sext i32 %.2.lcssa to i64               ; 7 uses
  %i.eh = sext i32 %i.ed to i64                   ; 11 uses
  %9 = zext nneg i32 %i.ef to i64                 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.at, i64 %i.eh ; 3 uses
  %invariant.gep201 = getelementptr [4 x i8], ptr %i.at, i64 %9 ; 3 uses
  %i.ei = sub nsw i64 %i.eh, %i.eg                ; 7 uses
  %min.iters.check = icmp ult i64 %i.ei, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ej = sub i64 %.0114151206, %i.al             ; 2 uses
  %i.ek = add nsw i64 %i.as, %9
  %i.el = shl nsw i64 %i.ek, 2
  %i.em = sub i64 %i.el, %i.ej
  %diff.check = icmp ugt i64 %i.em, -256
  %i.en = add nsw i64 %i.eh, %i.as
  %i.eo = shl nsw i64 %i.en, 2
  %i.ep = sub i64 %i.eo, %i.ej
  %diff.check207 = icmp ugt i64 %i.ep, -256
  %conflict.rdx = or i1 %diff.check, %diff.check207
  %i.eq = sub i64 %.0114151206, %i.al             ; 2 uses
  %i.er = shl nsw i64 %i.as, 2                    ; 2 uses
  %i.es = sub i64 %i.er, %i.eq
  %diff.check208 = icmp ugt i64 %i.es, -256
  %conflict.rdx209 = or i1 %conflict.rdx, %diff.check208
  %i.et = shl nsw i64 %i.eh, 2
  %i.eu = add i64 %i.eq, %i.et
  %i.ev = sub i64 %i.er, %i.eu
  %diff.check210 = icmp ugt i64 %i.ev, -256
  %conflict.rdx211 = or i1 %conflict.rdx209, %diff.check210
  br i1 %conflict.rdx211, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check212 = icmp ult i64 %i.ei, 64
  br i1 %min.iters.check212, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ew = and i64 %i.ei, 56
  %n.vec = and i64 %i.ei, -64                     ; 4 uses
  %i.ex = add nsw i64 %n.vec, %i.eg
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert213 = insertelement <16 x float> poison, float %i.aw, i64 0
  %broadcast.splat214 = shufflevector <16 x float> %broadcast.splatinsert213, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert215 = insertelement <16 x float> poison, float %i.ay, i64 0
  %broadcast.splat216 = shufflevector <16 x float> %broadcast.splatinsert215, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert217 = insertelement <16 x float> poison, float %i.ba, i64 0
  %broadcast.splat218 = shufflevector <16 x float> %broadcast.splatinsert217, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ey = add nuw i64 %index, %i.eg               ; 5 uses
  %i.ez = sub nsw i64 %i.ey, %i.eh
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ez ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 128
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 192
  %wide.load = load <16 x float>, ptr %i.fa, align 4, !tbaa !70
  %wide.load219 = load <16 x float>, ptr %i.fb, align 4, !tbaa !70
  %wide.load220 = load <16 x float>, ptr %i.fc, align 4, !tbaa !70
  %wide.load221 = load <16 x float>, ptr %i.fd, align 4, !tbaa !70
  %i.fe = fmul fast <16 x float> %wide.load, %broadcast.splat
  %i.ff = fmul fast <16 x float> %wide.load219, %broadcast.splat
  %i.fg = fmul fast <16 x float> %wide.load220, %broadcast.splat
  %i.fh = fmul fast <16 x float> %wide.load221, %broadcast.splat
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ey ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 128
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 192
  %wide.load222 = load <16 x float>, ptr %i.fi, align 4, !tbaa !70
  %wide.load223 = load <16 x float>, ptr %i.fj, align 4, !tbaa !70
  %wide.load224 = load <16 x float>, ptr %i.fk, align 4, !tbaa !70
  %wide.load225 = load <16 x float>, ptr %i.fl, align 4, !tbaa !70
  %i.fm = fmul fast <16 x float> %wide.load222, %broadcast.splat214
  %i.fn = fmul fast <16 x float> %wide.load223, %broadcast.splat214
  %i.fo = fmul fast <16 x float> %wide.load224, %broadcast.splat214
  %i.fp = fmul fast <16 x float> %wide.load225, %broadcast.splat214
  %i.fq = fadd fast <16 x float> %i.fe, %i.fm
  %i.fr = fadd fast <16 x float> %i.ff, %i.fn
  %i.fs = fadd fast <16 x float> %i.fg, %i.fo
  %i.ft = fadd fast <16 x float> %i.fh, %i.fp
  %i.fu = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ey ; 4 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 64
  %i.fw = getelementptr i8, ptr %i.fu, i64 128
  %i.fx = getelementptr i8, ptr %i.fu, i64 192
  %wide.load226 = load <16 x float>, ptr %i.fu, align 4, !tbaa !70
  %wide.load227 = load <16 x float>, ptr %i.fv, align 4, !tbaa !70
  %wide.load228 = load <16 x float>, ptr %i.fw, align 4, !tbaa !70
  %wide.load229 = load <16 x float>, ptr %i.fx, align 4, !tbaa !70
  %i.fy = fmul fast <16 x float> %wide.load226, %broadcast.splat216
  %i.fz = fmul fast <16 x float> %wide.load227, %broadcast.splat216
  %i.ga = fmul fast <16 x float> %wide.load228, %broadcast.splat216
  %i.gb = fmul fast <16 x float> %wide.load229, %broadcast.splat216
  %i.gc = fadd fast <16 x float> %i.fq, %i.fy
  %i.gd = fadd fast <16 x float> %i.fr, %i.fz
  %i.ge = fadd fast <16 x float> %i.fs, %i.ga
  %i.gf = fadd fast <16 x float> %i.ft, %i.gb
  %i.gg = getelementptr [4 x i8], ptr %invariant.gep201, i64 %i.ey ; 4 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 64
  %i.gi = getelementptr i8, ptr %i.gg, i64 128
  %i.gj = getelementptr i8, ptr %i.gg, i64 192
  %wide.load230 = load <16 x float>, ptr %i.gg, align 4, !tbaa !70
  %wide.load231 = load <16 x float>, ptr %i.gh, align 4, !tbaa !70
  %wide.load232 = load <16 x float>, ptr %i.gi, align 4, !tbaa !70
  %wide.load233 = load <16 x float>, ptr %i.gj, align 4, !tbaa !70
  %i.gk = fmul fast <16 x float> %wide.load230, %broadcast.splat218
  %i.gl = fmul fast <16 x float> %wide.load231, %broadcast.splat218
  %i.gm = fmul fast <16 x float> %wide.load232, %broadcast.splat218
  %i.gn = fmul fast <16 x float> %wide.load233, %broadcast.splat218
  %i.go = fadd fast <16 x float> %i.gc, %i.gk
  %i.gp = fadd fast <16 x float> %i.gd, %i.gl
  %i.gq = fadd fast <16 x float> %i.ge, %i.gm
  %i.gr = fadd fast <16 x float> %i.gf, %i.gn
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.0114151, i64 %i.ey ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 128
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 192
  store <16 x float> %i.go, ptr %i.gs, align 4, !tbaa !70
  store <16 x float> %i.gp, ptr %i.gt, align 4, !tbaa !70
  store <16 x float> %i.gq, ptr %i.gu, align 4, !tbaa !70
  store <16 x float> %i.gr, ptr %i.gv, align 4, !tbaa !70
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.gw = icmp eq i64 %index.next, %n.vec
  br i1 %i.gw, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ei, %n.vec
  br i1 %cmp.n, label %._crit_edge150, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ew, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec234 = and i64 %i.ei, -8                   ; 3 uses
  %i.gx = add nsw i64 %n.vec234, %i.eg
  %broadcast.splatinsert235 = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat236 = shufflevector <8 x float> %broadcast.splatinsert235, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert237 = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat238 = shufflevector <8 x float> %broadcast.splatinsert237, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert239 = insertelement <8 x float> poison, float %i.ay, i64 0
  %broadcast.splat240 = shufflevector <8 x float> %broadcast.splatinsert239, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert241 = insertelement <8 x float> poison, float %i.ba, i64 0
  %broadcast.splat242 = shufflevector <8 x float> %broadcast.splatinsert241, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index243 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next248, %vec.epilog.vector.body ] ; 2 uses
  %i.gy = add nuw i64 %index243, %i.eg            ; 5 uses
  %i.gz = sub nsw i64 %i.gy, %i.eh
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.gz
  %wide.load244 = load <8 x float>, ptr %i.ha, align 4, !tbaa !70
  %i.hb = fmul fast <8 x float> %wide.load244, %broadcast.splat236
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.gy
  %wide.load245 = load <8 x float>, ptr %i.hc, align 4, !tbaa !70
  %i.hd = fmul fast <8 x float> %wide.load245, %broadcast.splat238
  %i.he = fadd fast <8 x float> %i.hb, %i.hd
  %i.hf = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.gy
  %wide.load246 = load <8 x float>, ptr %i.hf, align 4, !tbaa !70
  %i.hg = fmul fast <8 x float> %wide.load246, %broadcast.splat240
  %i.hh = fadd fast <8 x float> %i.he, %i.hg
  %i.hi = getelementptr [4 x i8], ptr %invariant.gep201, i64 %i.gy
  %wide.load247 = load <8 x float>, ptr %i.hi, align 4, !tbaa !70
  %i.hj = fmul fast <8 x float> %wide.load247, %broadcast.splat242
  %i.hk = fadd fast <8 x float> %i.hh, %i.hj
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.0114151, i64 %i.gy
  store <8 x float> %i.hk, ptr %i.hl, align 4, !tbaa !70
  %index.next248 = add nuw i64 %index243, 8       ; 2 uses
  %i.hm = icmp eq i64 %index.next248, %n.vec234
  br i1 %i.hm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !141

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n249 = icmp eq i64 %i.ei, %n.vec234
  br i1 %cmp.n249, label %._crit_edge150, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv174.ph = phi i64 [ %i.eg, %iter.check ], [ %i.eg, %vector.memcheck ], [ %i.ex, %vec.epilog.iter.check ], [ %i.gx, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.lr.ph145:                                        ; preds = %.lr.ph145.preheader, %.lr.ph145
  %indvars.iv171 = phi i64 [ %i.eb, %.lr.ph145.preheader ], [ %indvars.iv.next172, %.lr.ph145 ] ; 3 uses
  %i.hn = phi i32 [ %i.dq, %.lr.ph145.preheader ], [ %i.if, %.lr.ph145 ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv171 ; 4 uses
  %i.hp = sext i32 %i.hn to i64                   ; 2 uses
  %i.hq = sub nsw i64 0, %i.hp
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.hq
  %i.hs = load <4 x float>, ptr %i.hr, align 16, !tbaa !17
  %i.ht = load <4 x float>, ptr %i.ho, align 16, !tbaa !17
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.hp
  %i.hv = load <4 x float>, ptr %i.hu, align 16, !tbaa !17
  %i.hw = shl nsw i32 %i.hn, 1
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.hx
  %i.hz = load <4 x float>, ptr %i.hy, align 16, !tbaa !17
  %i.ia = fmul fast <4 x float> %i.hs, %i.ds
  %i.ib = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ht, <4 x float> nofpclass(nan inf) %i.du, <4 x float> nofpclass(nan inf) %i.ia)
  %i.ic = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hv, <4 x float> nofpclass(nan inf) %i.dw, <4 x float> nofpclass(nan inf) %i.ib)
  %i.id = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hz, <4 x float> nofpclass(nan inf) %i.dy, <4 x float> nofpclass(nan inf) %i.ic)
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.0114151, i64 %indvars.iv171
  store <4 x float> %i.id, ptr %i.ie, align 16, !tbaa !17
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 4 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.12:bb.a
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.as ; 11 uses
  %i.au = load float, ptr %.0108167, align 4, !tbaa !70 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0108167, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !70 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0108167, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !70 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0108167, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !70 ; 6 uses
  %i.bb = icmp sgt i32 %i.an, 15
  br i1 %i.bb, label %.lr.ph, label %.preheader155

.lr.ph:                                           ; preds = %.lr.ph170
  %i.bc = insertelement <16 x float> poison, float %i.au, i64 0
  %i.bd = shufflevector <16 x float> %i.bc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.be = insertelement <16 x float> poison, float %i.aw, i64 0
  %i.bf = shufflevector <16 x float> %i.be, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bg = insertelement <16 x float> poison, float %i.ay, i64 0
  %i.bh = shufflevector <16 x float> %i.bg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bi = insertelement <16 x float> poison, float %i.ba, i64 0
  %i.bj = shufflevector <16 x float> %i.bi, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.c

.preheader155.loopexit:                           ; preds = %bb.c
  %i.bk = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader155

.preheader155:                                    ; preds = %.preheader155.loopexit, %.lr.ph170
  %i.bl = phi i32 [ %i.an, %.lr.ph170 ], [ %i.ed, %.preheader155.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph170 ], [ %i.bk, %.preheader155.loopexit ] ; 3 uses
  %i.bm = or disjoint i32 %.0.lcssa, 7
  %i.bn = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bn, label %.lr.ph158, label %.preheader154

.lr.ph158:                                        ; preds = %.preheader155
  %i.bo = insertelement <8 x float> poison, float %i.au, i64 0
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bq = insertelement <8 x float> poison, float %i.aw, i64 0
  %i.br = shufflevector <8 x float> %i.bq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bs = insertelement <8 x float> poison, float %i.ay, i64 0
  %i.bt = shufflevector <8 x float> %i.bs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bu = insertelement <8 x float> poison, float %i.ba, i64 0
  %i.bv = shufflevector <8 x float> %i.bu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bw = zext nneg i32 %.0.lcssa to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.bx = phi i32 [ %i.an, %.lr.ph ], [ %i.ed, %bb.c ] ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.bz = sext i32 %i.bx to i64                   ; 2 uses
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.ca
  %i.cc = load <16 x i16>, ptr %i.cb, align 1, !tbaa !17 ; 2 uses
  %i.cd = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.cc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ce = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.cc, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cf = shufflevector <16 x i16> %i.cd, <16 x i16> %i.ce, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cg = shufflevector <16 x i16> %i.cd, <16 x i16> %i.ce, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ch = bitcast <16 x i16> %i.cf to <8 x i32>
  %i.ci = bitcast <16 x i16> %i.cg to <8 x i32>
  %i.cj = shufflevector <8 x i32> %i.ch, <8 x i32> %i.ci, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ck = bitcast <16 x i32> %i.cj to <16 x float>
  %i.cl = load <16 x i16>, ptr %i.by, align 1, !tbaa !17 ; 2 uses
  %i.cm = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.cl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.cn = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.cl, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.co = shufflevector <16 x i16> %i.cm, <16 x i16> %i.cn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cp = shufflevector <16 x i16> %i.cm, <16 x i16> %i.cn, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cq = bitcast <16 x i16> %i.co to <8 x i32>
  %i.cr = bitcast <16 x i16> %i.cp to <8 x i32>
  %i.cs = shufflevector <8 x i32> %i.cq, <8 x i32> %i.cr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ct = bitcast <16 x i32> %i.cs to <16 x float>
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.bz
  %i.cv = load <16 x i16>, ptr %i.cu, align 1, !tbaa !17 ; 2 uses
  %i.cw = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.cv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.cx = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.cv, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cy = shufflevector <16 x i16> %i.cw, <16 x i16> %i.cx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cz = shufflevector <16 x i16> %i.cw, <16 x i16> %i.cx, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.da = bitcast <16 x i16> %i.cy to <8 x i32>
  %i.db = bitcast <16 x i16> %i.cz to <8 x i32>
  %i.dc = shufflevector <8 x i32> %i.da, <8 x i32> %i.db, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dd = bitcast <16 x i32> %i.dc to <16 x float>
  %i.de = shl nsw i32 %i.bx, 1
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.df
  %i.dh = load <16 x i16>, ptr %i.dg, align 1, !tbaa !17 ; 2 uses
  %i.di = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.dh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.dj = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.dh, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dk = shufflevector <16 x i16> %i.di, <16 x i16> %i.dj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dl = shufflevector <16 x i16> %i.di, <16 x i16> %i.dj, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dm = bitcast <16 x i16> %i.dk to <8 x i32>
  %i.dn = bitcast <16 x i16> %i.dl to <8 x i32>
  %i.do = shufflevector <8 x i32> %i.dm, <8 x i32> %i.dn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dp = bitcast <16 x i32> %i.do to <16 x float>
  %i.dq = fmul fast <16 x float> %i.bd, %i.ck
  %i.dr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ct, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> nofpclass(nan inf) %i.dq)
  %i.ds = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dd, <16 x float> nofpclass(nan inf) %i.bh, <16 x float> nofpclass(nan inf) %i.dr)
  %i.dt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dp, <16 x float> nofpclass(nan inf) %i.bj, <16 x float> nofpclass(nan inf) %i.ds)
  %i.du = bitcast <16 x float> %i.dt to <16 x i32>
  %i.dv = lshr <16 x i32> %i.du, splat (i32 16)   ; 2 uses
  %i.dw = shufflevector <16 x i32> %i.dv, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dx = shufflevector <16 x i32> %i.dv, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dy = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.dw, <8 x i32> %i.dx)
  %i.dz = bitcast <16 x i16> %i.dy to <4 x i64>
  %i.ea = shufflevector <4 x i64> %i.dz, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.0109166, i64 %indvars.iv
  store <4 x i64> %i.ea, ptr %i.eb, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.ec = or disjoint i64 %indvars.iv.next, 15
  %i.ed = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = icmp slt i64 %i.ec, %i.ee
  br i1 %i.ef, label %bb.c, label %.preheader155.loopexit, !llvm.loop !278

.preheader154.loopexit:                           ; preds = %bb.d
  %i.eg = trunc nuw nsw i64 %indvars.iv.next184 to i32
  br label %.preheader154

.preheader154:                                    ; preds = %.preheader154.loopexit, %.preheader155
  %i.eh = phi i32 [ %i.bl, %.preheader155 ], [ %i.gg, %.preheader154.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader155 ], [ %i.eg, %.preheader154.loopexit ] ; 3 uses
  %i.ei = or disjoint i32 %.1.lcssa, 3
  %i.ej = icmp slt i32 %i.ei, %i.eh
  br i1 %i.ej, label %.lr.ph161, label %.preheader

.lr.ph161:                                        ; preds = %.preheader154
  %i.ek = insertelement <4 x float> poison, float %i.au, i64 0
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eo = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eq = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.es = zext nneg i32 %.1.lcssa to i64
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph158, %bb.d
  %indvars.iv183 = phi i64 [ %i.bw, %.lr.ph158 ], [ %indvars.iv.next184, %bb.d ] ; 3 uses
  %i.et = phi i32 [ %i.bl, %.lr.ph158 ], [ %i.gg, %bb.d ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv183 ; 4 uses
  %i.ev = sext i32 %i.et to i64                   ; 2 uses
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = getelementptr inbounds [2 x i8], ptr %i.eu, i64 %i.ew
  %i.ey = load <8 x i16>, ptr %i.ex, align 1, !tbaa !17 ; 2 uses
  %i.ez = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ey, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fa = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ey, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fb = shufflevector <8 x i16> %i.ez, <8 x i16> %i.fa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fc = bitcast <16 x i16> %i.fb to <8 x float>
  %i.fd = load <8 x i16>, ptr %i.eu, align 1, !tbaa !17 ; 2 uses
  %i.fe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ff = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fd, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fg = shufflevector <8 x i16> %i.fe, <8 x i16> %i.ff, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fh = bitcast <16 x i16> %i.fg to <8 x float>
  %i.fi = getelementptr inbounds [2 x i8], ptr %i.eu, i64 %i.ev
  %i.fj = load <8 x i16>, ptr %i.fi, align 1, !tbaa !17 ; 2 uses
  %i.fk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fl = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fm = shufflevector <8 x i16> %i.fk, <8 x i16> %i.fl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fn = bitcast <16 x i16> %i.fm to <8 x float>
  %i.fo = shl nsw i32 %i.et, 1
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [2 x i8], ptr %i.eu, i64 %i.fp
  %i.fr = load <8 x i16>, ptr %i.fq, align 1, !tbaa !17 ; 2 uses
  %i.fs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ft = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fr, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fu = shufflevector <8 x i16> %i.fs, <8 x i16> %i.ft, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fv = bitcast <16 x i16> %i.fu to <8 x float>
  %i.fw = fmul fast <8 x float> %i.bp, %i.fc
  %i.fx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fh, <8 x float> nofpclass(nan inf) %i.br, <8 x float> nofpclass(nan inf) %i.fw)
  %i.fy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fn, <8 x float> nofpclass(nan inf) %i.bt, <8 x float> nofpclass(nan inf) %i.fx)
  %i.fz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fv, <8 x float> nofpclass(nan inf) %i.bv, <8 x float> nofpclass(nan inf) %i.fy)
  %i.ga = bitcast <8 x float> %i.fz to <8 x i32>
  %i.gb = lshr <8 x i32> %i.ga, splat (i32 16)    ; 2 uses
  %i.gc = shufflevector <8 x i32> %i.gb, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gd = shufflevector <8 x i32> %i.gb, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ge = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gc, <4 x i32> %i.gd)
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %.0109166, i64 %indvars.iv183
  store <8 x i16> %i.ge, ptr %i.gf, align 1, !tbaa !17
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 8 ; 3 uses
  %i.gg = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.gh = trunc i64 %indvars.iv.next184 to i32
  %i.gi = or i32 %i.gh, 7
  %i.gj = icmp slt i32 %i.gi, %i.gg
  br i1 %i.gj, label %bb.d, label %.preheader154.loopexit, !llvm.loop !279

.preheader.loopexit:                              ; preds = %bb.e
  %i.gk = trunc nuw i64 %indvars.iv.next187 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader154
  %i.gl = phi i32 [ %i.eh, %.preheader154 ], [ %i.lc, %.preheader.loopexit ] ; 5 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader154 ], [ %i.gk, %.preheader.loopexit ] ; 2 uses
  %i.gm = icmp slt i32 %.2.lcssa, %i.gl
  br i1 %i.gm, label %iter.check, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre199 = sext i32 %i.gl to i64
  br label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.gn = shl nuw nsw i32 %i.gl, 1
  %i.go = sext i32 %.2.lcssa to i64               ; 7 uses
  %i.gp = sext i32 %i.gl to i64                   ; 11 uses
  %9 = zext nneg i32 %i.gn to i64                 ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.at, i64 %i.gp ; 3 uses
  %invariant.gep217 = getelementptr [2 x i8], ptr %i.at, i64 %9 ; 3 uses
  %i.gq = sub nsw i64 %i.gp, %i.go                ; 7 uses
  %min.iters.check = icmp ult i64 %i.gq, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gr = sub i64 %.0109166222, %i.al             ; 2 uses
  %i.gs = add nsw i64 %i.as, %9
  %i.gt = shl nsw i64 %i.gs, 1
  %i.gu = sub i64 %i.gt, %i.gr
  %diff.check = icmp ugt i64 %i.gu, -64
  %i.gv = add nsw i64 %i.gp, %i.as
  %i.gw = shl nsw i64 %i.gv, 1
  %i.gx = sub i64 %i.gw, %i.gr
  %diff.check223 = icmp ugt i64 %i.gx, -64
  %conflict.rdx = or i1 %diff.check, %diff.check223
  %i.gy = sub i64 %.0109166222, %i.al             ; 2 uses
  %i.gz = shl nsw i64 %i.as, 1                    ; 2 uses
  %i.ha = sub i64 %i.gz, %i.gy
  %diff.check224 = icmp ugt i64 %i.ha, -64
  %conflict.rdx225 = or i1 %conflict.rdx, %diff.check224
  %i.hb = shl nsw i64 %i.gp, 1
  %i.hc = add i64 %i.gy, %i.hb
  %i.hd = sub i64 %i.gz, %i.hc
  %diff.check226 = icmp ugt i64 %i.hd, -64
  %conflict.rdx227 = or i1 %conflict.rdx225, %diff.check226
  br i1 %conflict.rdx227, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check228 = icmp ult i64 %i.gq, 32
  br i1 %min.iters.check228, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.he = and i64 %i.gq, 24
  %n.vec = and i64 %i.gq, -32                     ; 4 uses
  %i.hf = add nsw i64 %n.vec, %i.go
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <32 x float> poison, float %i.aw, i64 0
  %broadcast.splat230 = shufflevector <32 x float> %broadcast.splatinsert229, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert231 = insertelement <32 x float> poison, float %i.ay, i64 0
  %broadcast.splat232 = shufflevector <32 x float> %broadcast.splatinsert231, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert233 = insertelement <32 x float> poison, float %i.ba, i64 0
  %broadcast.splat234 = shufflevector <32 x float> %broadcast.splatinsert233, <32 x float> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hg = add nuw i64 %index, %i.go               ; 5 uses
  %i.hh = sub nsw i64 %i.hg, %i.gp
  %i.hi = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.hh
  %wide.load = load <32 x i16>, ptr %i.hi, align 2, !tbaa !269
  %i.hj = zext <32 x i16> %wide.load to <32 x i32>
  %i.hk = shl nuw <32 x i32> %i.hj, splat (i32 16)
  %i.hl = bitcast <32 x i32> %i.hk to <32 x float>
  %i.hm = fmul fast <32 x float> %broadcast.splat, %i.hl
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.hg
  %wide.load235 = load <32 x i16>, ptr %i.hn, align 2, !tbaa !269
  %i.ho = zext <32 x i16> %wide.load235 to <32 x i32>
  %i.hp = shl nuw <32 x i32> %i.ho, splat (i32 16)
  %i.hq = bitcast <32 x i32> %i.hp to <32 x float>
  %i.hr = fmul fast <32 x float> %broadcast.splat230, %i.hq
  %i.hs = fadd fast <32 x float> %i.hm, %i.hr
  %i.ht = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.hg
  %wide.load236 = load <32 x i16>, ptr %i.ht, align 2, !tbaa !269
  %i.hu = zext <32 x i16> %wide.load236 to <32 x i32>
  %i.hv = shl nuw <32 x i32> %i.hu, splat (i32 16)
  %i.hw = bitcast <32 x i32> %i.hv to <32 x float>
  %i.hx = fmul fast <32 x float> %broadcast.splat232, %i.hw
  %i.hy = fadd fast <32 x float> %i.hs, %i.hx
  %i.hz = getelementptr [2 x i8], ptr %invariant.gep217, i64 %i.hg
  %wide.load237 = load <32 x i16>, ptr %i.hz, align 2, !tbaa !269
  %i.ia = zext <32 x i16> %wide.load237 to <32 x i32>
  %i.ib = shl nuw <32 x i32> %i.ia, splat (i32 16)
  %i.ic = bitcast <32 x i32> %i.ib to <32 x float>
  %i.id = fmul fast <32 x float> %broadcast.splat234, %i.ic
  %i.ie = fadd fast <32 x float> %i.hy, %i.id
  %i.if = bitcast <32 x float> %i.ie to <32 x i32>
  %i.ig = lshr <32 x i32> %i.if, splat (i32 16)
  %i.ih = trunc nuw <32 x i32> %i.ig to <32 x i16>
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %.0109166, i64 %i.hg
  store <32 x i16> %i.ih, ptr %i.ii, align 2, !tbaa !269
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ij = icmp eq i64 %index.next, %n.vec
  br i1 %i.ij, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.he, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !272

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec238 = and i64 %i.gq, -8                   ; 3 uses
  %i.ik = add nsw i64 %n.vec238, %i.go
  %broadcast.splatinsert239 = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat240 = shufflevector <8 x float> %broadcast.splatinsert239, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert241 = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat242 = shufflevector <8 x float> %broadcast.splatinsert241, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert243 = insertelement <8 x float> poison, float %i.ay, i64 0
  %broadcast.splat244 = shufflevector <8 x float> %broadcast.splatinsert243, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert245 = insertelement <8 x float> poison, float %i.ba, i64 0
  %broadcast.splat246 = shufflevector <8 x float> %broadcast.splatinsert245, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index247 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next252, %vec.epilog.vector.body ] ; 2 uses
  %i.il = add nuw i64 %index247, %i.go            ; 5 uses
  %i.im = sub nsw i64 %i.il, %i.gp
  %i.in = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.im
  %wide.load248 = load <8 x i16>, ptr %i.in, align 2, !tbaa !269
  %i.io = zext <8 x i16> %wide.load248 to <8 x i32>
  %i.ip = shl nuw <8 x i32> %i.io, splat (i32 16)
  %i.iq = bitcast <8 x i32> %i.ip to <8 x float>
  %i.ir = fmul fast <8 x float> %broadcast.splat240, %i.iq
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.il
  %wide.load249 = load <8 x i16>, ptr %i.is, align 2, !tbaa !269
  %i.it = zext <8 x i16> %wide.load249 to <8 x i32>
  %i.iu = shl nuw <8 x i32> %i.it, splat (i32 16)
  %i.iv = bitcast <8 x i32> %i.iu to <8 x float>
  %i.iw = fmul fast <8 x float> %broadcast.splat242, %i.iv
  %i.ix = fadd fast <8 x float> %i.ir, %i.iw
  %i.iy = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.il
  %wide.load250 = load <8 x i16>, ptr %i.iy, align 2, !tbaa !269
  %i.iz = zext <8 x i16> %wide.load250 to <8 x i32>
  %i.ja = shl nuw <8 x i32> %i.iz, splat (i32 16)
  %i.jb = bitcast <8 x i32> %i.ja to <8 x float>
  %i.jc = fmul fast <8 x float> %broadcast.splat244, %i.jb
  %i.jd = fadd fast <8 x float> %i.ix, %i.jc
  %i.je = getelementptr [2 x i8], ptr %invariant.gep217, i64 %i.il
  %wide.load251 = load <8 x i16>, ptr %i.je, align 2, !tbaa !269
  %i.jf = zext <8 x i16> %wide.load251 to <8 x i32>
  %i.jg = shl nuw <8 x i32> %i.jf, splat (i32 16)
  %i.jh = bitcast <8 x i32> %i.jg to <8 x float>
  %i.ji = fmul fast <8 x float> %broadcast.splat246, %i.jh
  %i.jj = fadd fast <8 x float> %i.jd, %i.ji
  %i.jk = bitcast <8 x float> %i.jj to <8 x i32>
  %i.jl = lshr <8 x i32> %i.jk, splat (i32 16)
  %i.jm = trunc nuw <8 x i32> %i.jl to <8 x i16>
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %.0109166, i64 %i.il
  store <8 x i16> %i.jm, ptr %i.jn, align 2, !tbaa !269
  %index.next252 = add nuw i64 %index247, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next252, %n.vec238
  br i1 %i.jo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !281

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n253 = icmp eq i64 %i.gq, %n.vec238
  br i1 %cmp.n253, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv189.ph = phi i64 [ %i.go, %iter.check ], [ %i.go, %vector.memcheck ], [ %i.hf, %vec.epilog.iter.check ], [ %i.ik, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.e:                                             ; preds = %.lr.ph161, %bb.e
  %indvars.iv186 = phi i64 [ %i.es, %.lr.ph161 ], [ %indvars.iv.next187, %bb.e ] ; 3 uses
  %i.jp = phi i32 [ %i.eh, %.lr.ph161 ], [ %i.lc, %bb.e ] ; 2 uses
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv186 ; 4 uses
  %i.jr = sext i32 %i.jp to i64                   ; 2 uses
  %i.js = sub nsw i64 0, %i.jr
  %i.jt = getelementptr inbounds [2 x i8], ptr %i.jq, i64 %i.js
  %i.ju = load i64, ptr %i.jt, align 1, !tbaa !17
  %i.jv = insertelement <2 x i64> poison, i64 %i.ju, i64 0
  %i.jw = bitcast <2 x i64> %i.jv to <8 x i16>
  %i.jx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jy = bitcast <8 x i16> %i.jx to <4 x float>
  %i.jz = load i64, ptr %i.jq, align 1, !tbaa !17
  %i.ka = insertelement <2 x i64> poison, i64 %i.jz, i64 0
  %i.kb = bitcast <2 x i64> %i.ka to <8 x i16>
  %i.kc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kd = bitcast <8 x i16> %i.kc to <4 x float>
  %i.ke = getelementptr inbounds [2 x i8], ptr %i.jq, i64 %i.jr
  %i.kf = load i64, ptr %i.ke, align 1, !tbaa !17
  %i.kg = insertelement <2 x i64> poison, i64 %i.kf, i64 0
  %i.kh = bitcast <2 x i64> %i.kg to <8 x i16>
  %i.ki = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kj = bitcast <8 x i16> %i.ki to <4 x float>
  %i.kk = shl nsw i32 %i.jp, 1
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [2 x i8], ptr %i.jq, i64 %i.kl
  %i.kn = load i64, ptr %i.km, align 1, !tbaa !17
  %i.ko = insertelement <2 x i64> poison, i64 %i.kn, i64 0
  %i.kp = bitcast <2 x i64> %i.ko to <8 x i16>
  %i.kq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kr = bitcast <8 x i16> %i.kq to <4 x float>
  %i.ks = fmul fast <4 x float> %i.el, %i.jy
  %i.kt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kd, <4 x float> nofpclass(nan inf) %i.en, <4 x float> nofpclass(nan inf) %i.ks)
  %i.ku = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kj, <4 x float> nofpclass(nan inf) %i.ep, <4 x float> nofpclass(nan inf) %i.kt)
  %i.kv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.kr, <4 x float> nofpclass(nan inf) %i.er, <4 x float> nofpclass(nan inf) %i.ku)
  %i.kw = bitcast <4 x float> %i.kv to <4 x i32>
  %i.kx = lshr <4 x i32> %i.kw, splat (i32 16)
  %i.ky = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.kx, <4 x i32> poison)
  %i.kz = bitcast <8 x i16> %i.ky to <2 x i64>
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %.0109166, i64 %indvars.iv186
  %i.lb = extractelement <2 x i64> %i.kz, i64 0
  store i64 %i.lb, ptr %i.la, align 1, !tbaa !17
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 4 ; 3 uses
end_hunk_1
