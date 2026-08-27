Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp_x86_avx512bf16?download=true
inline.NumInlined: 24
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.3:bb.a

.lr.ph167.split.preheader:                        ; preds = %.lr.ph167
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph167.split

.lr.ph167.split:                                  ; preds = %.lr.ph167.split.preheader, %._crit_edge163
  %i.t = phi i32 [ %i.p, %.lr.ph167.split.preheader ], [ %i.am, %._crit_edge163 ] ; 2 uses
  %indvars.iv187 = phi i64 [ %i.r, %.lr.ph167.split.preheader ], [ %indvars.iv.next188, %._crit_edge163 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !39
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv187, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !34
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph162.preheader, label %._crit_edge163

.lr.ph162.preheader:                              ; preds = %.lr.ph167.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !27
  %i.ae = load ptr, ptr %4, align 8, !tbaa !29
  %i.af = load i32, ptr %i.n, align 4, !tbaa !39
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv187, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !34
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !18
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph162

._crit_edge163:                                   ; preds = %._crit_edge, %.lr.ph167.split
  %i.am = phi i32 [ %i.t, %.lr.ph167.split ], [ %i.kn, %._crit_edge ]
  %indvars.iv.next188 = add nsw i64 %indvars.iv187, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next188 to i32
  %exitcond190.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond190.not, label %._crit_edge168, label %.lr.ph167.split, !llvm.loop !67

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %._crit_edge
  %i.an = phi i32 [ %.pre, %.lr.ph162.preheader ], [ %i.en, %._crit_edge ] ; 4 uses
  %indvars.iv184 = phi i64 [ 0, %.lr.ph162.preheader ], [ %indvars.iv.next185, %._crit_edge ] ; 2 uses
  %.0108159 = phi ptr [ %i.ad, %.lr.ph162.preheader ], [ %i.kl, %._crit_edge ] ; 5 uses
  %.0109158 = phi ptr [ %i.ak, %.lr.ph162.preheader ], [ %i.km, %._crit_edge ] ; 8 uses
  %.0109158213 = ptrtoaddr ptr %.0109158 to i64   ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv184
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !18
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.as ; 11 uses
  %i.au = load float, ptr %.0108159, align 4, !tbaa !24 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0108159, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !24 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0108159, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !24 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0108159, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !24 ; 6 uses
  %i.bb = icmp sgt i32 %i.an, 15
  br i1 %i.bb, label %.lr.ph, label %.preheader147

.lr.ph:                                           ; preds = %.lr.ph162
  %i.bc = insertelement <16 x float> poison, float %i.au, i64 0
  %i.bd = shufflevector <16 x float> %i.bc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.be = insertelement <16 x float> poison, float %i.aw, i64 0
  %i.bf = shufflevector <16 x float> %i.be, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bg = insertelement <16 x float> poison, float %i.ay, i64 0
  %i.bh = shufflevector <16 x float> %i.bg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bi = insertelement <16 x float> poison, float %i.ba, i64 0
  %i.bj = shufflevector <16 x float> %i.bi, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.c

.preheader147.loopexit:                           ; preds = %bb.c
  %i.bk = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader147

.preheader147:                                    ; preds = %.preheader147.loopexit, %.lr.ph162
  %i.bl = phi i32 [ %i.an, %.lr.ph162 ], [ %i.cv, %.preheader147.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph162 ], [ %i.bk, %.preheader147.loopexit ] ; 3 uses
  %i.bm = or disjoint i32 %.0.lcssa, 7
  %i.bn = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bn, label %.lr.ph150, label %.preheader146

.lr.ph150:                                        ; preds = %.preheader147
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
  %i.bx = phi i32 [ %i.an, %.lr.ph ], [ %i.cv, %bb.c ] ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.bz = sext i32 %i.bx to i64                   ; 2 uses
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.ca
  %i.cc = load <16 x bfloat>, ptr %i.cb, align 1, !tbaa !53
  %i.cd = fpext fast <16 x bfloat> %i.cc to <16 x float>
  %i.ce = load <16 x bfloat>, ptr %i.by, align 1, !tbaa !53
  %i.cf = fpext fast <16 x bfloat> %i.ce to <16 x float>
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.bz
  %i.ch = load <16 x bfloat>, ptr %i.cg, align 1, !tbaa !53
  %i.ci = fpext fast <16 x bfloat> %i.ch to <16 x float>
  %i.cj = shl nsw i32 %i.bx, 1
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.ck
  %i.cm = load <16 x bfloat>, ptr %i.cl, align 1, !tbaa !53
  %i.cn = fpext fast <16 x bfloat> %i.cm to <16 x float>
  %i.co = fmul fast <16 x float> %i.bd, %i.cd
  %i.cp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> nofpclass(nan inf) %i.co)
  %i.cq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ci, <16 x float> nofpclass(nan inf) %i.bh, <16 x float> nofpclass(nan inf) %i.cp)
  %i.cr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cn, <16 x float> nofpclass(nan inf) %i.bj, <16 x float> nofpclass(nan inf) %i.cq)
  %i.cs = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cr)
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.0109158, i64 %indvars.iv
  store <16 x bfloat> %i.cs, ptr %i.ct, align 1, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.cu = or disjoint i64 %indvars.iv.next, 15
  %i.cv = load i32, ptr %8, align 4, !tbaa !18    ; 3 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %i.cu, %i.cw
  br i1 %i.cx, label %bb.c, label %.preheader147.loopexit, !llvm.loop !68

.preheader146.loopexit:                           ; preds = %bb.d
  %i.cy = trunc nuw nsw i64 %indvars.iv.next176 to i32
  br label %.preheader146

.preheader146:                                    ; preds = %.preheader146.loopexit, %.preheader147
  %i.cz = phi i32 [ %i.bl, %.preheader147 ], [ %i.ej, %.preheader146.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader147 ], [ %i.cy, %.preheader146.loopexit ] ; 3 uses
  %i.da = or disjoint i32 %.1.lcssa, 3
  %i.db = icmp slt i32 %i.da, %i.cz
  br i1 %i.db, label %.lr.ph153, label %.preheader

.lr.ph153:                                        ; preds = %.preheader146
  %i.dc = insertelement <4 x float> poison, float %i.au, i64 0
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.de = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dg = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.di = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = zext nneg i32 %.1.lcssa to i64
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph150, %bb.d
  %indvars.iv175 = phi i64 [ %i.bw, %.lr.ph150 ], [ %indvars.iv.next176, %bb.d ] ; 3 uses
  %i.dl = phi i32 [ %i.bl, %.lr.ph150 ], [ %i.ej, %bb.d ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv175 ; 4 uses
  %i.dn = sext i32 %i.dl to i64                   ; 2 uses
  %i.do = sub nsw i64 0, %i.dn
  %i.dp = getelementptr inbounds [2 x i8], ptr %i.dm, i64 %i.do
  %i.dq = load <8 x bfloat>, ptr %i.dp, align 1, !tbaa !53
  %i.dr = fpext fast <8 x bfloat> %i.dq to <8 x float>
  %i.ds = load <8 x bfloat>, ptr %i.dm, align 1, !tbaa !53
  %i.dt = fpext fast <8 x bfloat> %i.ds to <8 x float>
  %i.du = getelementptr inbounds [2 x i8], ptr %i.dm, i64 %i.dn
  %i.dv = load <8 x bfloat>, ptr %i.du, align 1, !tbaa !53
  %i.dw = fpext fast <8 x bfloat> %i.dv to <8 x float>
  %i.dx = shl nsw i32 %i.dl, 1
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [2 x i8], ptr %i.dm, i64 %i.dy
  %i.ea = load <8 x bfloat>, ptr %i.dz, align 1, !tbaa !53
  %i.eb = fpext fast <8 x bfloat> %i.ea to <8 x float>
  %i.ec = fmul fast <8 x float> %i.bp, %i.dr
  %i.ed = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dt, <8 x float> nofpclass(nan inf) %i.br, <8 x float> nofpclass(nan inf) %i.ec)
  %i.ee = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dw, <8 x float> nofpclass(nan inf) %i.bt, <8 x float> nofpclass(nan inf) %i.ed)
  %i.ef = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.bv, <8 x float> nofpclass(nan inf) %i.ee)
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.0109158, i64 %indvars.iv175
  %i.eh = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ef)
  store <8 x bfloat> %i.eh, ptr %i.eg, align 1, !tbaa !53
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 8 ; 3 uses
  %i.ei = or disjoint i64 %indvars.iv.next176, 7
  %i.ej = load i32, ptr %8, align 4, !tbaa !18    ; 3 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp slt i64 %i.ei, %i.ek
  br i1 %i.el, label %bb.d, label %.preheader146.loopexit, !llvm.loop !69

.preheader.loopexit:                              ; preds = %bb.e
  %i.em = trunc nuw i64 %indvars.iv.next179 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader146
  %i.en = phi i32 [ %i.cz, %.preheader146 ], [ %i.jd, %.preheader.loopexit ] ; 5 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader146 ], [ %i.em, %.preheader.loopexit ] ; 2 uses
  %i.eo = icmp slt i32 %.2.lcssa, %i.en
  br i1 %i.eo, label %iter.check, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre191 = sext i32 %i.en to i64
  br label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.ep = shl nuw nsw i32 %i.en, 1
  %i.eq = sext i32 %.2.lcssa to i64               ; 7 uses
  %i.er = sext i32 %i.en to i64                   ; 11 uses
  %9 = zext nneg i32 %i.ep to i64                 ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.at, i64 %i.er ; 3 uses
  %invariant.gep208 = getelementptr [2 x i8], ptr %i.at, i64 %9 ; 3 uses
  %i.es = sub nsw i64 %i.er, %i.eq                ; 7 uses
  %min.iters.check = icmp ult i64 %i.es, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.et = sub i64 %.0109158213, %i.al             ; 2 uses
  %i.eu = add nsw i64 %i.as, %9
  %i.ev = shl nsw i64 %i.eu, 1
  %i.ew = sub i64 %i.ev, %i.et
  %diff.check = icmp ugt i64 %i.ew, -64
  %i.ex = add nsw i64 %i.er, %i.as
  %i.ey = shl nsw i64 %i.ex, 1
  %i.ez = sub i64 %i.ey, %i.et
  %diff.check214 = icmp ugt i64 %i.ez, -64
  %conflict.rdx = or i1 %diff.check, %diff.check214
  %i.fa = sub i64 %.0109158213, %i.al             ; 2 uses
  %i.fb = shl nsw i64 %i.as, 1                    ; 2 uses
  %i.fc = sub i64 %i.fb, %i.fa
  %diff.check215 = icmp ugt i64 %i.fc, -64
  %conflict.rdx216 = or i1 %conflict.rdx, %diff.check215
  %i.fd = shl nsw i64 %i.er, 1
  %i.fe = add i64 %i.fa, %i.fd
  %i.ff = sub i64 %i.fb, %i.fe
  %diff.check217 = icmp ugt i64 %i.ff, -64
  %conflict.rdx218 = or i1 %conflict.rdx216, %diff.check217
  br i1 %conflict.rdx218, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check219 = icmp ult i64 %i.es, 32
  br i1 %min.iters.check219, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fg = and i64 %i.es, 24
  %n.vec = and i64 %i.es, -32                     ; 4 uses
  %i.fh = add nsw i64 %n.vec, %i.eq
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert220 = insertelement <32 x float> poison, float %i.aw, i64 0
  %broadcast.splat221 = shufflevector <32 x float> %broadcast.splatinsert220, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert222 = insertelement <32 x float> poison, float %i.ay, i64 0
  %broadcast.splat223 = shufflevector <32 x float> %broadcast.splatinsert222, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert224 = insertelement <32 x float> poison, float %i.ba, i64 0
  %broadcast.splat225 = shufflevector <32 x float> %broadcast.splatinsert224, <32 x float> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = add nuw i64 %index, %i.eq               ; 5 uses
  %i.fj = sub nsw i64 %i.fi, %i.er
  %i.fk = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.fj
  %wide.load = load <32 x i16>, ptr %i.fk, align 2, !tbaa !56
  %i.fl = zext <32 x i16> %wide.load to <32 x i32>
  %i.fm = shl nuw <32 x i32> %i.fl, splat (i32 16)
  %i.fn = bitcast <32 x i32> %i.fm to <32 x float>
  %i.fo = fmul fast <32 x float> %broadcast.splat, %i.fn
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.fi
  %wide.load226 = load <32 x i16>, ptr %i.fp, align 2, !tbaa !56
  %i.fq = zext <32 x i16> %wide.load226 to <32 x i32>
  %i.fr = shl nuw <32 x i32> %i.fq, splat (i32 16)
  %i.fs = bitcast <32 x i32> %i.fr to <32 x float>
  %i.ft = fmul fast <32 x float> %broadcast.splat221, %i.fs
  %i.fu = fadd fast <32 x float> %i.fo, %i.ft
  %i.fv = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.fi
  %wide.load227 = load <32 x i16>, ptr %i.fv, align 2, !tbaa !56
  %i.fw = zext <32 x i16> %wide.load227 to <32 x i32>
  %i.fx = shl nuw <32 x i32> %i.fw, splat (i32 16)
  %i.fy = bitcast <32 x i32> %i.fx to <32 x float>
  %i.fz = fmul fast <32 x float> %broadcast.splat223, %i.fy
  %i.ga = fadd fast <32 x float> %i.fu, %i.fz
  %i.gb = getelementptr [2 x i8], ptr %invariant.gep208, i64 %i.fi
  %wide.load228 = load <32 x i16>, ptr %i.gb, align 2, !tbaa !56
  %i.gc = zext <32 x i16> %wide.load228 to <32 x i32>
  %i.gd = shl nuw <32 x i32> %i.gc, splat (i32 16)
  %i.ge = bitcast <32 x i32> %i.gd to <32 x float>
  %i.gf = fmul fast <32 x float> %broadcast.splat225, %i.ge
  %i.gg = fadd fast <32 x float> %i.ga, %i.gf
  %i.gh = bitcast <32 x float> %i.gg to <32 x i32>
  %i.gi = lshr <32 x i32> %i.gh, splat (i32 16)
  %i.gj = trunc nuw <32 x i32> %i.gi to <32 x i16>
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %.0109158, i64 %i.fi
  store <32 x i16> %i.gj, ptr %i.gk, align 2, !tbaa !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gl = icmp eq i64 %index.next, %n.vec
  br i1 %i.gl, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.es, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fg, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec229 = and i64 %i.es, -8                   ; 3 uses
  %i.gm = add nsw i64 %n.vec229, %i.eq
  %broadcast.splatinsert230 = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat231 = shufflevector <8 x float> %broadcast.splatinsert230, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert232 = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat233 = shufflevector <8 x float> %broadcast.splatinsert232, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert234 = insertelement <8 x float> poison, float %i.ay, i64 0
  %broadcast.splat235 = shufflevector <8 x float> %broadcast.splatinsert234, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert236 = insertelement <8 x float> poison, float %i.ba, i64 0
  %broadcast.splat237 = shufflevector <8 x float> %broadcast.splatinsert236, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index238 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next243, %vec.epilog.vector.body ] ; 2 uses
  %i.gn = add nuw i64 %index238, %i.eq            ; 5 uses
  %i.go = sub nsw i64 %i.gn, %i.er
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.go
  %wide.load239 = load <8 x i16>, ptr %i.gp, align 2, !tbaa !56
  %i.gq = zext <8 x i16> %wide.load239 to <8 x i32>
  %i.gr = shl nuw <8 x i32> %i.gq, splat (i32 16)
  %i.gs = bitcast <8 x i32> %i.gr to <8 x float>
  %i.gt = fmul fast <8 x float> %broadcast.splat231, %i.gs
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.gn
  %wide.load240 = load <8 x i16>, ptr %i.gu, align 2, !tbaa !56
  %i.gv = zext <8 x i16> %wide.load240 to <8 x i32>
  %i.gw = shl nuw <8 x i32> %i.gv, splat (i32 16)
  %i.gx = bitcast <8 x i32> %i.gw to <8 x float>
  %i.gy = fmul fast <8 x float> %broadcast.splat233, %i.gx
  %i.gz = fadd fast <8 x float> %i.gt, %i.gy
  %i.ha = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.gn
  %wide.load241 = load <8 x i16>, ptr %i.ha, align 2, !tbaa !56
  %i.hb = zext <8 x i16> %wide.load241 to <8 x i32>
  %i.hc = shl nuw <8 x i32> %i.hb, splat (i32 16)
  %i.hd = bitcast <8 x i32> %i.hc to <8 x float>
  %i.he = fmul fast <8 x float> %broadcast.splat235, %i.hd
  %i.hf = fadd fast <8 x float> %i.gz, %i.he
  %i.hg = getelementptr [2 x i8], ptr %invariant.gep208, i64 %i.gn
  %wide.load242 = load <8 x i16>, ptr %i.hg, align 2, !tbaa !56
  %i.hh = zext <8 x i16> %wide.load242 to <8 x i32>
  %i.hi = shl nuw <8 x i32> %i.hh, splat (i32 16)
  %i.hj = bitcast <8 x i32> %i.hi to <8 x float>
  %i.hk = fmul fast <8 x float> %broadcast.splat237, %i.hj
  %i.hl = fadd fast <8 x float> %i.hf, %i.hk
  %i.hm = bitcast <8 x float> %i.hl to <8 x i32>
  %i.hn = lshr <8 x i32> %i.hm, splat (i32 16)
  %i.ho = trunc nuw <8 x i32> %i.hn to <8 x i16>
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %.0109158, i64 %i.gn
  store <8 x i16> %i.ho, ptr %i.hp, align 2, !tbaa !56
  %index.next243 = add nuw i64 %index238, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next243, %n.vec229
  br i1 %i.hq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n244 = icmp eq i64 %i.es, %n.vec229
  br i1 %cmp.n244, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv181.ph = phi i64 [ %i.eq, %iter.check ], [ %i.eq, %vector.memcheck ], [ %i.fh, %vec.epilog.iter.check ], [ %i.gm, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.e:                                             ; preds = %.lr.ph153, %bb.e
  %indvars.iv178 = phi i64 [ %i.dk, %.lr.ph153 ], [ %indvars.iv.next179, %bb.e ] ; 3 uses
  %i.hr = phi i32 [ %i.cz, %.lr.ph153 ], [ %i.jd, %bb.e ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv178 ; 4 uses
  %i.ht = sext i32 %i.hr to i64                   ; 2 uses
  %i.hu = sub nsw i64 0, %i.ht
  %i.hv = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %i.hu
  %i.hw = load i64, ptr %i.hv, align 1, !tbaa !53
  %i.hx = insertelement <2 x i64> poison, i64 %i.hw, i64 0
  %i.hy = bitcast <2 x i64> %i.hx to <8 x i16>
  %i.hz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ia = bitcast <8 x i16> %i.hz to <4 x float>
  %i.ib = load i64, ptr %i.hs, align 1, !tbaa !53
  %i.ic = insertelement <2 x i64> poison, i64 %i.ib, i64 0
  %i.id = bitcast <2 x i64> %i.ic to <8 x i16>
  %i.ie = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.id, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.if = bitcast <8 x i16> %i.ie to <4 x float>
  %i.ig = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %i.ht
  %i.ih = load i64, ptr %i.ig, align 1, !tbaa !53
  %i.ii = insertelement <2 x i64> poison, i64 %i.ih, i64 0
  %i.ij = bitcast <2 x i64> %i.ii to <8 x i16>
  %i.ik = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ij, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.il = bitcast <8 x i16> %i.ik to <4 x float>
  %i.im = shl nsw i32 %i.hr, 1
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %i.in
  %i.ip = load i64, ptr %i.io, align 1, !tbaa !53
  %i.iq = insertelement <2 x i64> poison, i64 %i.ip, i64 0
  %i.ir = bitcast <2 x i64> %i.iq to <8 x i16>
  %i.is = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ir, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.it = bitcast <8 x i16> %i.is to <4 x float>
  %i.iu = fmul fast <4 x float> %i.dd, %i.ia
  %i.iv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.if, <4 x float> nofpclass(nan inf) %i.df, <4 x float> nofpclass(nan inf) %i.iu)
  %i.iw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.il, <4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.iv)
  %i.ix = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.it, <4 x float> nofpclass(nan inf) %i.dj, <4 x float> nofpclass(nan inf) %i.iw)
  %i.iy = shufflevector <4 x float> %i.ix, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.iz = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.iy)
  %i.ja = bitcast <8 x bfloat> %i.iz to <2 x i64>
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %.0109158, i64 %indvars.iv178
  %i.jc = extractelement <2 x i64> %i.ja, i64 0
  store i64 %i.jc, ptr %i.jb, align 1, !tbaa !53
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 4 ; 3 uses
  %i.jd = load i32, ptr %8, align 4, !tbaa !18    ; 3 uses
end_hunk_0
