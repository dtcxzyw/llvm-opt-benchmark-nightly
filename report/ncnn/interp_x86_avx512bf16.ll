Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp_x86_avx512bf16?download=true
inline.NumInlined: 24
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.3:bb.a
  %i.ad = load ptr, ptr %5, align 8, !tbaa !20
  %i.ae = load ptr, ptr %4, align 8, !tbaa !21
  %i.af = load i32, ptr %i.n, align 4, !tbaa !27
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv187, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !23
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !15
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph162

._crit_edge163:                                   ; preds = %._crit_edge, %.lr.ph167.split
  %i.am = phi i32 [ %i.t, %.lr.ph167.split ], [ %i.km, %._crit_edge ]
  %indvars.iv.next188 = add nsw i64 %indvars.iv187, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next188 to i32
  %exitcond190.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond190.not, label %._crit_edge168, label %.lr.ph167.split, !llvm.loop !74

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %._crit_edge
  %i.an = phi i32 [ %.pre, %.lr.ph162.preheader ], [ %i.en, %._crit_edge ] ; 4 uses
  %indvars.iv184 = phi i64 [ 0, %.lr.ph162.preheader ], [ %indvars.iv.next185, %._crit_edge ] ; 2 uses
  %.0108159 = phi ptr [ %i.ad, %.lr.ph162.preheader ], [ %i.kk, %._crit_edge ] ; 5 uses
  %.0109158 = phi ptr [ %i.ak, %.lr.ph162.preheader ], [ %i.kl, %._crit_edge ] ; 8 uses
  %.0109158213 = ptrtoaddr ptr %.0109158 to i64   ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv184
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !15
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.as ; 11 uses
  %i.au = load float, ptr %.0108159, align 4, !tbaa !17 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0108159, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !17 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0108159, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !17 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0108159, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !17 ; 6 uses
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
  %i.cc = load <16 x bfloat>, ptr %i.cb, align 1, !tbaa !32
  %i.cd = fpext fast <16 x bfloat> %i.cc to <16 x float>
  %i.ce = load <16 x bfloat>, ptr %i.by, align 1, !tbaa !32
  %i.cf = fpext fast <16 x bfloat> %i.ce to <16 x float>
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.bz
  %i.ch = load <16 x bfloat>, ptr %i.cg, align 1, !tbaa !32
  %i.ci = fpext fast <16 x bfloat> %i.ch to <16 x float>
  %i.cj = shl nuw nsw i32 %i.bx, 1
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.ck
  %i.cm = load <16 x bfloat>, ptr %i.cl, align 1, !tbaa !32
  %i.cn = fpext fast <16 x bfloat> %i.cm to <16 x float>
  %i.co = fmul fast <16 x float> %i.bd, %i.cd
  %i.cp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> nofpclass(nan inf) %i.co)
  %i.cq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ci, <16 x float> nofpclass(nan inf) %i.bh, <16 x float> nofpclass(nan inf) %i.cp)
  %i.cr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cn, <16 x float> nofpclass(nan inf) %i.bj, <16 x float> nofpclass(nan inf) %i.cq)
  %i.cs = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cr)
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.0109158, i64 %indvars.iv
  store <16 x bfloat> %i.cs, ptr %i.ct, align 1, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.cu = or disjoint i64 %indvars.iv.next, 15
  %i.cv = load i32, ptr %8, align 4, !tbaa !15    ; 3 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %i.cu, %i.cw
  br i1 %i.cx, label %bb.c, label %.preheader147.loopexit, !llvm.loop !75

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
  %i.dq = load <8 x bfloat>, ptr %i.dp, align 1, !tbaa !32
  %i.dr = fpext fast <8 x bfloat> %i.dq to <8 x float>
  %i.ds = load <8 x bfloat>, ptr %i.dm, align 1, !tbaa !32
  %i.dt = fpext fast <8 x bfloat> %i.ds to <8 x float>
  %i.du = getelementptr inbounds [2 x i8], ptr %i.dm, i64 %i.dn
  %i.dv = load <8 x bfloat>, ptr %i.du, align 1, !tbaa !32
  %i.dw = fpext fast <8 x bfloat> %i.dv to <8 x float>
  %i.dx = shl nuw nsw i32 %i.dl, 1
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.dy
  %i.ea = load <8 x bfloat>, ptr %i.dz, align 1, !tbaa !32
  %i.eb = fpext fast <8 x bfloat> %i.ea to <8 x float>
  %i.ec = fmul fast <8 x float> %i.bp, %i.dr
  %i.ed = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dt, <8 x float> nofpclass(nan inf) %i.br, <8 x float> nofpclass(nan inf) %i.ec)
  %i.ee = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dw, <8 x float> nofpclass(nan inf) %i.bt, <8 x float> nofpclass(nan inf) %i.ed)
  %i.ef = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.bv, <8 x float> nofpclass(nan inf) %i.ee)
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.0109158, i64 %indvars.iv175
  %i.eh = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ef)
  store <8 x bfloat> %i.eh, ptr %i.eg, align 1, !tbaa !32
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 8 ; 3 uses
  %i.ei = or disjoint i64 %indvars.iv.next176, 7
  %i.ej = load i32, ptr %8, align 4, !tbaa !15    ; 3 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp slt i64 %i.ei, %i.ek
  br i1 %i.el, label %bb.d, label %.preheader146.loopexit, !llvm.loop !76

.preheader.loopexit:                              ; preds = %bb.e
  %i.em = trunc nuw i64 %indvars.iv.next179 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader146
  %i.en = phi i32 [ %i.cz, %.preheader146 ], [ %i.jc, %.preheader.loopexit ] ; 5 uses
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
  %i.es = zext nneg i32 %i.ep to i64              ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.at, i64 %i.er ; 3 uses
  %invariant.gep208 = getelementptr [2 x i8], ptr %i.at, i64 %i.es ; 3 uses
  %i.et = sub nsw i64 %i.er, %i.eq                ; 7 uses
  %min.iters.check = icmp ult i64 %i.et, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.eu = sub i64 %.0109158213, %i.al             ; 2 uses
  %i.ev = add nsw i64 %i.as, %i.es
  %i.ew = shl nsw i64 %i.ev, 1
  %i.ex = sub i64 %i.ew, %i.eu
  %diff.check = icmp ugt i64 %i.ex, -64
  %i.ey = add nsw i64 %i.er, %i.as
  %i.ez = shl nsw i64 %i.ey, 1
  %i.fa = sub i64 %i.ez, %i.eu
  %diff.check214 = icmp ugt i64 %i.fa, -64
  %conflict.rdx = or i1 %diff.check, %diff.check214
  %i.fb = sub i64 %i.al, %.0109158213
  %i.fc = shl nsw i64 %i.as, 1
  %9 = add i64 %i.fb, %i.fc                       ; 2 uses
  %diff.check215 = icmp ugt i64 %9, -64
  %conflict.rdx216 = or i1 %conflict.rdx, %diff.check215
  %i.fd = shl nsw i64 %i.er, 1
  %i.fe = sub i64 %9, %i.fd
  %diff.check217 = icmp ugt i64 %i.fe, -64
  %conflict.rdx218 = or i1 %conflict.rdx216, %diff.check217
  br i1 %conflict.rdx218, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check219 = icmp ult i64 %i.et, 32
  br i1 %min.iters.check219, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ff = and i64 %i.et, 24
  %n.vec = and i64 %i.et, -32                     ; 4 uses
  %i.fg = add nsw i64 %n.vec, %i.eq
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert220 = insertelement <32 x float> poison, float %i.aw, i64 0
  %broadcast.splat221 = shufflevector <32 x float> %broadcast.splatinsert220, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert222 = insertelement <32 x float> poison, float %i.ay, i64 0
  %broadcast.splat223 = shufflevector <32 x float> %broadcast.splatinsert222, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert224 = insertelement <32 x float> poison, float %i.ba, i64 0
  %broadcast.splat225 = shufflevector <32 x float> %broadcast.splatinsert224, <32 x float> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fh = add nuw i64 %index, %i.eq               ; 5 uses
  %i.fi = sub nsw i64 %i.fh, %i.er
  %i.fj = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.fi
  %wide.load = load <32 x i16>, ptr %i.fj, align 2, !tbaa !34
  %i.fk = zext <32 x i16> %wide.load to <32 x i32>
  %i.fl = shl nuw <32 x i32> %i.fk, splat (i32 16)
  %i.fm = bitcast <32 x i32> %i.fl to <32 x float>
  %i.fn = fmul fast <32 x float> %broadcast.splat, %i.fm
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.fh
  %wide.load226 = load <32 x i16>, ptr %i.fo, align 2, !tbaa !34
  %i.fp = zext <32 x i16> %wide.load226 to <32 x i32>
  %i.fq = shl nuw <32 x i32> %i.fp, splat (i32 16)
  %i.fr = bitcast <32 x i32> %i.fq to <32 x float>
  %i.fs = fmul fast <32 x float> %broadcast.splat221, %i.fr
  %i.ft = fadd fast <32 x float> %i.fs, %i.fn
  %i.fu = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.fh
  %wide.load227 = load <32 x i16>, ptr %i.fu, align 2, !tbaa !34
  %i.fv = zext <32 x i16> %wide.load227 to <32 x i32>
  %i.fw = shl nuw <32 x i32> %i.fv, splat (i32 16)
  %i.fx = bitcast <32 x i32> %i.fw to <32 x float>
  %i.fy = fmul fast <32 x float> %broadcast.splat223, %i.fx
  %i.fz = fadd fast <32 x float> %i.ft, %i.fy
  %i.ga = getelementptr [2 x i8], ptr %invariant.gep208, i64 %i.fh
  %wide.load228 = load <32 x i16>, ptr %i.ga, align 2, !tbaa !34
  %i.gb = zext <32 x i16> %wide.load228 to <32 x i32>
  %i.gc = shl nuw <32 x i32> %i.gb, splat (i32 16)
  %i.gd = bitcast <32 x i32> %i.gc to <32 x float>
  %i.ge = fmul fast <32 x float> %broadcast.splat225, %i.gd
  %i.gf = fadd fast <32 x float> %i.fz, %i.ge
  %i.gg = bitcast <32 x float> %i.gf to <32 x i32>
  %i.gh = lshr <32 x i32> %i.gg, splat (i32 16)
  %i.gi = trunc nuw <32 x i32> %i.gh to <32 x i16>
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %.0109158, i64 %i.fh
  store <32 x i16> %i.gi, ptr %i.gj, align 2, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ff, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec229 = and i64 %i.et, -8                   ; 3 uses
  %i.gl = add nsw i64 %n.vec229, %i.eq
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
  %i.gm = add nuw i64 %index238, %i.eq            ; 5 uses
  %i.gn = sub nsw i64 %i.gm, %i.er
  %i.go = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.gn
  %wide.load239 = load <8 x i16>, ptr %i.go, align 2, !tbaa !34
  %i.gp = zext <8 x i16> %wide.load239 to <8 x i32>
  %i.gq = shl nuw <8 x i32> %i.gp, splat (i32 16)
  %i.gr = bitcast <8 x i32> %i.gq to <8 x float>
  %i.gs = fmul fast <8 x float> %broadcast.splat231, %i.gr
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.gm
  %wide.load240 = load <8 x i16>, ptr %i.gt, align 2, !tbaa !34
  %i.gu = zext <8 x i16> %wide.load240 to <8 x i32>
  %i.gv = shl nuw <8 x i32> %i.gu, splat (i32 16)
  %i.gw = bitcast <8 x i32> %i.gv to <8 x float>
  %i.gx = fmul fast <8 x float> %broadcast.splat233, %i.gw
  %i.gy = fadd fast <8 x float> %i.gx, %i.gs
  %i.gz = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.gm
  %wide.load241 = load <8 x i16>, ptr %i.gz, align 2, !tbaa !34
  %i.ha = zext <8 x i16> %wide.load241 to <8 x i32>
  %i.hb = shl nuw <8 x i32> %i.ha, splat (i32 16)
  %i.hc = bitcast <8 x i32> %i.hb to <8 x float>
  %i.hd = fmul fast <8 x float> %broadcast.splat235, %i.hc
  %i.he = fadd fast <8 x float> %i.gy, %i.hd
  %i.hf = getelementptr [2 x i8], ptr %invariant.gep208, i64 %i.gm
  %wide.load242 = load <8 x i16>, ptr %i.hf, align 2, !tbaa !34
  %i.hg = zext <8 x i16> %wide.load242 to <8 x i32>
  %i.hh = shl nuw <8 x i32> %i.hg, splat (i32 16)
  %i.hi = bitcast <8 x i32> %i.hh to <8 x float>
  %i.hj = fmul fast <8 x float> %broadcast.splat237, %i.hi
  %i.hk = fadd fast <8 x float> %i.he, %i.hj
  %i.hl = bitcast <8 x float> %i.hk to <8 x i32>
  %i.hm = lshr <8 x i32> %i.hl, splat (i32 16)
  %i.hn = trunc nuw <8 x i32> %i.hm to <8 x i16>
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %.0109158, i64 %i.gm
  store <8 x i16> %i.hn, ptr %i.ho, align 2, !tbaa !34
  %index.next243 = add nuw i64 %index238, 8       ; 2 uses
  %i.hp = icmp eq i64 %index.next243, %n.vec229
  br i1 %i.hp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !78

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n244 = icmp eq i64 %i.et, %n.vec229
  br i1 %cmp.n244, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv181.ph = phi i64 [ %i.eq, %iter.check ], [ %i.eq, %vector.memcheck ], [ %i.fg, %vec.epilog.iter.check ], [ %i.gl, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.e:                                             ; preds = %.lr.ph153, %bb.e
  %indvars.iv178 = phi i64 [ %i.dk, %.lr.ph153 ], [ %indvars.iv.next179, %bb.e ] ; 3 uses
  %i.hq = phi i32 [ %i.cz, %.lr.ph153 ], [ %i.jc, %bb.e ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv178 ; 4 uses
  %i.hs = sext i32 %i.hq to i64                   ; 2 uses
  %i.ht = sub nsw i64 0, %i.hs
  %i.hu = getelementptr inbounds [2 x i8], ptr %i.hr, i64 %i.ht
  %i.hv = load i64, ptr %i.hu, align 1, !tbaa !32
  %i.hw = insertelement <2 x i64> poison, i64 %i.hv, i64 0
  %i.hx = bitcast <2 x i64> %i.hw to <8 x i16>
  %i.hy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hz = bitcast <8 x i16> %i.hy to <4 x float>
  %i.ia = load i64, ptr %i.hr, align 1, !tbaa !32
  %i.ib = insertelement <2 x i64> poison, i64 %i.ia, i64 0
  %i.ic = bitcast <2 x i64> %i.ib to <8 x i16>
  %i.id = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ic, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ie = bitcast <8 x i16> %i.id to <4 x float>
  %i.if = getelementptr inbounds [2 x i8], ptr %i.hr, i64 %i.hs
  %i.ig = load i64, ptr %i.if, align 1, !tbaa !32
  %i.ih = insertelement <2 x i64> poison, i64 %i.ig, i64 0
  %i.ii = bitcast <2 x i64> %i.ih to <8 x i16>
  %i.ij = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ii, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ik = bitcast <8 x i16> %i.ij to <4 x float>
  %i.il = shl nuw nsw i32 %i.hq, 1
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.hr, i64 %i.im
  %i.io = load i64, ptr %i.in, align 1, !tbaa !32
  %i.ip = insertelement <2 x i64> poison, i64 %i.io, i64 0
  %i.iq = bitcast <2 x i64> %i.ip to <8 x i16>
  %i.ir = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.iq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.is = bitcast <8 x i16> %i.ir to <4 x float>
  %i.it = fmul fast <4 x float> %i.dd, %i.hz
  %i.iu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ie, <4 x float> nofpclass(nan inf) %i.df, <4 x float> nofpclass(nan inf) %i.it)
  %i.iv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ik, <4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.iu)
  %i.iw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.is, <4 x float> nofpclass(nan inf) %i.dj, <4 x float> nofpclass(nan inf) %i.iv)
  %i.ix = shufflevector <4 x float> %i.iw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.iy = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ix)
  %i.iz = bitcast <8 x bfloat> %i.iy to <2 x i64>
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %.0109158, i64 %indvars.iv178
  %i.jb = extractelement <2 x i64> %i.iz, i64 0
  store i64 %i.jb, ptr %i.ja, align 1, !tbaa !32
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 4 ; 3 uses
  %i.jc = load i32, ptr %8, align 4, !tbaa !15    ; 3 uses
  %i.jd = trunc i64 %indvars.iv.next179 to i32
  %i.je = or i32 %i.jd, 3
  %i.jf = icmp slt i32 %i.je, %i.jc
  br i1 %i.jf, label %bb.e, label %.preheader.loopexit, !llvm.loop !79

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %vec.epilog.scalar.ph ], [ %indvars.iv181.ph, %vec.epilog.scalar.ph.preheader ] ; 6 uses
  %i.jg = sub nsw i64 %indvars.iv181, %i.er
  %i.jh = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !34
  %i.jj = zext i16 %i.ji to i32
  %i.jk = shl nuw i32 %i.jj, 16
  %i.jl = bitcast i32 %i.jk to float
  %i.jm = fmul fast float %i.au, %i.jl
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv181
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !34
  %i.jp = zext i16 %i.jo to i32
  %i.jq = shl nuw i32 %i.jp, 16
  %i.jr = bitcast i32 %i.jq to float
  %i.js = fmul fast float %i.aw, %i.jr
  %i.jt = fadd fast float %i.js, %i.jm
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv181
  %i.ju = load i16, ptr %gep, align 2, !tbaa !34
  %i.jv = zext i16 %i.ju to i32
  %i.jw = shl nuw i32 %i.jv, 16
end_hunk_0
