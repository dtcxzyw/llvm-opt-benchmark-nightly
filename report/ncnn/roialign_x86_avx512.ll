inline.NumInlined: 74
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn19ROIAlign_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined:bb.a
  br i1 %.not166, label %._crit_edge168.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !40, !noalias !70
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !70
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !70
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !40, !noalias !73
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41, !noalias !73
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !73
  %factor.op.mul169 = mul i64 %i.s, %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.w = load i32, ptr %i.v, align 4, !tbaa !37   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 220
  br i1 %i.x, label %.noexc.lr.ph.split, label %._crit_edge168.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !22  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = sext i32 %i.aa to i64
  br i1 %i.ab, label %.noexc.lr.ph.split.split, label %._crit_edge168.split

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ad = load i32, ptr %10, align 4, !tbaa !18
  %i.ae = load i32, ptr %11, align 4, !tbaa !18
  %i.af = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.ag = insertelement <2 x i32> %i.af, i32 %i.ad, i64 1
  %i.ah = sitofp <2 x i32> %i.ag to <2 x float>   ; 2 uses
  %i.ai = load i32, ptr %i.y, align 4, !tbaa !48  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  %i.ak = uitofp nneg i32 %i.ai to float
  %i.al = sext i32 %i.k to i64
  %i.am = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.aa to i64
  %i.an = insertelement <2 x i1> poison, i1 %i.aj, i64 0
  %i.ao = shufflevector <2 x i1> %i.an, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ap = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph.split.split, %._crit_edge165
  %indvars.iv181 = phi i64 [ %i.al, %.noexc.lr.ph.split.split ], [ %indvars.iv.next182, %._crit_edge165 ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv181
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 13 uses
  %.reass170 = mul i64 %factor.op.mul169, %indvars.iv181
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass170
  br label %.preheader147

.preheader147:                                    ; preds = %.noexc, %._crit_edge
  %.063164 = phi ptr [ %i.as, %.noexc ], [ %i.aw, %._crit_edge ] ; 2 uses
  %.064163 = phi i32 [ 0, %.noexc ], [ %.2.lcssa, %._crit_edge ]
  %.066162 = phi i32 [ 0, %.noexc ], [ %i.au, %._crit_edge ] ; 2 uses
  %i.at = uitofp nneg i32 %.066162 to float
  %i.au = add nuw nsw i32 %.066162, 1             ; 3 uses
  %i.av = uitofp nneg i32 %i.au to float
  br label %bb.c

._crit_edge165:                                   ; preds = %._crit_edge
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next182 to i32
  %exitcond184.not = icmp eq i32 %i.am, %lftr.wideiv
  br i1 %exitcond184.not, label %._crit_edge168.split, label %.noexc

._crit_edge:                                      ; preds = %._crit_edge155
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.063164, i64 %i.ac
  %exitcond180.not = icmp eq i32 %i.au, %i.w
  br i1 %exitcond180.not, label %._crit_edge165, label %.preheader147, !llvm.loop !76

bb.c:                                             ; preds = %.preheader147, %._crit_edge155
  %indvars.iv176 = phi i64 [ 0, %.preheader147 ], [ %indvars.iv.next177, %._crit_edge155 ] ; 3 uses
  %.165160 = phi i32 [ %.064163, %.preheader147 ], [ %.2.lcssa, %._crit_edge155 ] ; 3 uses
  %i.ax = load float, ptr %6, align 4, !tbaa !42
  %i.ay = load float, ptr %7, align 4, !tbaa !42  ; 2 uses
  %i.az = load float, ptr %8, align 4, !tbaa !42
  %i.ba = trunc nuw nsw i64 %indvars.iv176 to i32
  %i.bb = uitofp nneg i32 %i.ba to float
  %i.bc = load float, ptr %9, align 4, !tbaa !42  ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 3 uses
  %i.bd = trunc nuw nsw i64 %indvars.iv.next177 to i32
  %i.be = uitofp nneg i32 %i.bd to float
  %i.bf = fmul fast float %i.ay, %i.at
  %i.bg = fmul fast float %i.bc, %i.bb
  %i.bh = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.bf, i64 1
  %i.bj = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.ax, i64 1 ; 2 uses
  %i.bl = fadd fast <2 x float> %i.bi, %i.bk
  %i.bm = fmul fast float %i.ay, %i.av
  %i.bn = fmul fast float %i.bc, %i.be
  %i.bo = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bm, i64 1
  %i.bq = fadd fast <2 x float> %i.bp, %i.bk
  %i.br = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bl, <2 x float> zeroinitializer)
  %i.bs = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.br, <2 x float> %i.ah) ; 3 uses
  %i.bt = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bq, <2 x float> zeroinitializer)
  %i.bu = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bt, <2 x float> %i.ah) ; 3 uses
  %i.bv = fsub fast <2 x float> %i.bu, %i.bs
  %i.bw = call fast <2 x float> @llvm.ceil.v2f32(<2 x float> %i.bv)
  %i.bx = select <2 x i1> %i.ao, <2 x float> %i.aq, <2 x float> %i.bw
  %i.by = fptosi <2 x float> %i.bx to <2 x i32>   ; 3 uses
  %i.bz = fcmp ole <2 x float> %i.bu, %i.bs
  %i.ca = extractelement <2 x i1> %i.bz, i64 1
  %i.cb = fcmp ole <2 x float> %i.bu, %i.bs
  %i.cc = extractelement <2 x i1> %i.cb, i64 0
  %i.cd = select i1 %i.ca, i1 true, i1 %i.cc
  %i.ce = extractelement <2 x i32> %i.by, i64 0   ; 5 uses
  %i.cf = extractelement <2 x i32> %i.by, i64 1   ; 2 uses
  %i.cg = mul i32 %i.ce, %i.cf                    ; 2 uses
  %i.ch = icmp sgt <2 x i32> %i.by, zeroinitializer ; 2 uses
  %i.ci = extractelement <2 x i1> %i.ch, i64 0
  %i.cj = extractelement <2 x i1> %i.ch, i64 1
  %or.cond = select i1 %i.cj, i1 %i.ci, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.us, label %._crit_edge155

.preheader.lr.ph.split.us:                        ; preds = %bb.c
  %i.ck = load ptr, ptr %12, align 8, !tbaa !49   ; 4 uses
  %i.cl = zext nneg i32 %i.ce to i64              ; 6 uses
  %i.cm = sext i32 %.165160 to i64
  %min.iters.check = icmp ult i32 %i.ce, 4
  %min.iters.check193 = icmp ult i32 %i.ce, 16
  %i.cn = and i64 %i.cl, 12
  %n.vec = and i64 %i.cl, 2147483632              ; 5 uses
  %i.co = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.cl
  %min.epilog.iters.check = icmp eq i64 %i.cn, 0
  %n.vec226 = and i64 %i.cl, 2147483644           ; 4 uses
  %i.cp = trunc nuw nsw i64 %n.vec226 to i32
  %cmp.n247 = icmp eq i64 %n.vec226, %i.cl
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.061154.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.fq, %._crit_edge.us ]
  %.062153.us = phi float [ 0.000000e+00, %.preheader.lr.ph.split.us ], [ %.lcssa, %._crit_edge.us ] ; 3 uses
  %.2152.us = phi i64 [ %i.cm, %.preheader.lr.ph.split.us ], [ %i.fp, %._crit_edge.us ] ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check193, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cq = add i64 %.2152.us, %n.vec
  %i.cr = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.062153.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.cr, %vector.ph ], [ %i.ee, %vector.body ]
  %vec.phi194 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ef, %vector.body ]
  %i.cs = add i64 %.2152.us, %index               ; 2 uses
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %i.cs
  %i.cu = getelementptr [32 x i8], ptr %i.ck, i64 %i.cs
  %i.cv = getelementptr i8, ptr %i.cu, i64 256
  %wide.vec = load <64 x float>, ptr %i.ct, align 4, !tbaa !62 ; 8 uses
  %i.cw = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.cx = shufflevector <64 x i32> %i.cw, <64 x i32> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.cy = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.cz = shufflevector <64 x i32> %i.cy, <64 x i32> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %i.da = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.db = shufflevector <64 x i32> %i.da, <64 x i32> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %i.dc = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.dd = shufflevector <64 x i32> %i.dc, <64 x i32> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %strided.vec198 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %strided.vec199 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %strided.vec200 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %strided.vec201 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %wide.vec202 = load <64 x float>, ptr %i.cv, align 4, !tbaa !62 ; 8 uses
  %i.de = bitcast <64 x float> %wide.vec202 to <64 x i32>
  %i.df = shufflevector <64 x i32> %i.de, <64 x i32> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.dg = bitcast <64 x float> %wide.vec202 to <64 x i32>
  %i.dh = shufflevector <64 x i32> %i.dg, <64 x i32> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %i.di = bitcast <64 x float> %wide.vec202 to <64 x i32>
  %i.dj = shufflevector <64 x i32> %i.di, <64 x i32> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %i.dk = bitcast <64 x float> %wide.vec202 to <64 x i32>
  %i.dl = shufflevector <64 x i32> %i.dk, <64 x i32> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %strided.vec207 = shufflevector <64 x float> %wide.vec202, <64 x float> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %strided.vec208 = shufflevector <64 x float> %wide.vec202, <64 x float> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %strided.vec209 = shufflevector <64 x float> %wide.vec202, <64 x float> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %strided.vec210 = shufflevector <64 x float> %wide.vec202, <64 x float> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %i.dm = sext <8 x i32> %i.cx to <8 x i64>
  %i.dn = sext <8 x i32> %i.df to <8 x i64>
  %wide.gep = getelementptr inbounds [4 x i8], ptr %i.ar, <8 x i64> %i.dm
  %wide.gep211 = getelementptr inbounds [4 x i8], ptr %i.ar, <8 x i64> %i.dn
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %wide.masked.gather212 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep211, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %i.do = fmul fast <8 x float> %wide.masked.gather, %strided.vec198
  %i.dp = fmul fast <8 x float> %wide.masked.gather212, %strided.vec207
  %i.dq = sext <8 x i32> %i.cz to <8 x i64>
  %i.dr = sext <8 x i32> %i.dh to <8 x i64>
  %wide.gep213 = getelementptr inbounds [4 x i8], ptr %i.ar, <8 x i64> %i.dq
  %wide.gep214 = getelementptr inbounds [4 x i8], ptr %i.ar, <8 x i64> %i.dr
  %wide.masked.gather215 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep213, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %wide.masked.gather216 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep214, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %i.ds = fmul fast <8 x float> %wide.masked.gather215, %strided.vec199
  %i.dt = fmul fast <8 x float> %wide.masked.gather216, %strided.vec208
  %13 = fadd fast <8 x float> %i.do, %i.ds
  %14 = fadd fast <8 x float> %i.dp, %i.dt
  %i.du = sext <8 x i32> %i.db to <8 x i64>
  %i.dv = sext <8 x i32> %i.dj to <8 x i64>
  %wide.gep217 = getelementptr inbounds [4 x i8], ptr %i.ar, <8 x i64> %i.du
  %wide.gep218 = getelementptr inbounds [4 x i8], ptr %i.ar, <8 x i64> %i.dv
  %wide.masked.gather219 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep217, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %wide.masked.gather220 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep218, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %i.dw = fmul fast <8 x float> %wide.masked.gather219, %strided.vec200
  %i.dx = fmul fast <8 x float> %wide.masked.gather220, %strided.vec209
  %15 = fadd fast <8 x float> %13, %i.dw
  %16 = fadd fast <8 x float> %14, %i.dx
  %i.dy = sext <8 x i32> %i.dd to <8 x i64>
  %i.dz = sext <8 x i32> %i.dl to <8 x i64>
  %wide.gep221 = getelementptr inbounds [4 x i8], ptr %i.ar, <8 x i64> %i.dy
  %wide.gep222 = getelementptr inbounds [4 x i8], ptr %i.ar, <8 x i64> %i.dz
  %wide.masked.gather223 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep221, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %wide.masked.gather224 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep222, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %i.ea = fmul fast <8 x float> %wide.masked.gather223, %strided.vec201
  %i.eb = fmul fast <8 x float> %wide.masked.gather224, %strided.vec210
  %i.ec = fadd fast <8 x float> %15, %i.ea
  %i.ed = fadd fast <8 x float> %16, %i.eb
  %i.ee = fadd fast <8 x float> %i.ec, %vec.phi   ; 2 uses
  %i.ef = fadd fast <8 x float> %i.ed, %vec.phi194 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <8 x float> %i.ef, %i.ee
  %i.eh = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.eh, %vec.epilog.iter.check ], [ %.062153.us, %vector.main.loop.iter.check ]
  %i.ei = add i64 %.2152.us, %n.vec226
  %i.ej = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %i.ek = getelementptr [32 x i8], ptr %i.ck, i64 %.2152.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index227 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next246, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi228 = phi <4 x float> [ %i.ej, %vec.epilog.ph ], [ %i.fd, %vec.epilog.vector.body ]
  %i.el = getelementptr [32 x i8], ptr %i.ek, i64 %index227
  %wide.vec229 = load <32 x float>, ptr %i.el, align 4, !tbaa !62 ; 8 uses
  %i.em = bitcast <32 x float> %wide.vec229 to <32 x i32>
  %i.en = shufflevector <32 x i32> %i.em, <32 x i32> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %i.eo = bitcast <32 x float> %wide.vec229 to <32 x i32>
  %i.ep = shufflevector <32 x i32> %i.eo, <32 x i32> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %i.eq = bitcast <32 x float> %wide.vec229 to <32 x i32>
  %i.er = shufflevector <32 x i32> %i.eq, <32 x i32> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %i.es = bitcast <32 x float> %wide.vec229 to <32 x i32>
  %i.et = shufflevector <32 x i32> %i.es, <32 x i32> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec234 = shufflevector <32 x float> %wide.vec229, <32 x float> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec235 = shufflevector <32 x float> %wide.vec229, <32 x float> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec236 = shufflevector <32 x float> %wide.vec229, <32 x float> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec237 = shufflevector <32 x float> %wide.vec229, <32 x float> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %i.eu = sext <4 x i32> %i.en to <4 x i64>
  %wide.gep238 = getelementptr inbounds [4 x i8], ptr %i.ar, <4 x i64> %i.eu
  %wide.masked.gather239 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep238, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.ev = fmul fast <4 x float> %wide.masked.gather239, %strided.vec234
  %i.ew = sext <4 x i32> %i.ep to <4 x i64>
  %wide.gep240 = getelementptr inbounds [4 x i8], ptr %i.ar, <4 x i64> %i.ew
  %wide.masked.gather241 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep240, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.ex = fmul fast <4 x float> %wide.masked.gather241, %strided.vec235
  %17 = fadd fast <4 x float> %i.ev, %i.ex
  %i.ey = sext <4 x i32> %i.er to <4 x i64>
  %wide.gep242 = getelementptr inbounds [4 x i8], ptr %i.ar, <4 x i64> %i.ey
  %wide.masked.gather243 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep242, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.ez = fmul fast <4 x float> %wide.masked.gather243, %strided.vec236
  %18 = fadd fast <4 x float> %17, %i.ez
  %i.fa = sext <4 x i32> %i.et to <4 x i64>
  %wide.gep244 = getelementptr inbounds [4 x i8], ptr %i.ar, <4 x i64> %i.fa
  %wide.masked.gather245 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep244, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.fb = fmul fast <4 x float> %wide.masked.gather245, %strided.vec237
  %i.fc = fadd fast <4 x float> %18, %i.fb
  %i.fd = fadd fast <4 x float> %i.fc, %vec.phi228 ; 2 uses
  %index.next246 = add nuw i64 %index227, 4       ; 2 uses
  %i.fe = icmp eq i64 %index.next246, %n.vec226
  br i1 %i.fe, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !78

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ff = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.fd) ; 2 uses
  br i1 %cmp.n247, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %.2152.us, %iter.check ], [ %i.cq, %vec.epilog.iter.check ], [ %i.ei, %vec.epilog.middle.block ]
  %.060150.us.ph = phi i32 [ 0, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.cp, %vec.epilog.middle.block ]
  %.1149.us.ph = phi float [ %.062153.us, %iter.check ], [ %i.eh, %vec.epilog.iter.check ], [ %i.ff, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.060150.us = phi i32 [ %i.fo, %vec.epilog.scalar.ph ], [ %.060150.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.1149.us = phi float [ %op.rdx, %vec.epilog.scalar.ph ], [ %.1149.us.ph, %vec.epilog.scalar.ph.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %indvars.iv ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load <4 x float>, ptr %i.fh, align 4, !tbaa !42
  %i.fj = load <4 x i32>, ptr %i.fg, align 4, !tbaa !18
  %i.fk = sext <4 x i32> %i.fj to <4 x i64>
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.ar, <4 x i64> %i.fk
  %i.fm = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.fl, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.fn = fmul fast <4 x float> %i.fm, %i.fi
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.1149.us, <4 x float> %i.fn) ; 2 uses
  %i.fo = add nuw nsw i32 %.060150.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.fo, %i.ce
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !79

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi float [ %i.ff, %vec.epilog.middle.block ], [ %i.eh, %middle.block ], [ %op.rdx, %vec.epilog.scalar.ph ] ; 2 uses
  %i.fp = add nsw i64 %.2152.us, %i.cl
  %i.fq = add nuw nsw i32 %.061154.us, 1          ; 2 uses
  %exitcond175.not = icmp eq i32 %i.fq, %i.cf
  br i1 %exitcond175.not, label %._crit_edge155.loopexit, label %iter.check, !llvm.loop !80

._crit_edge155.loopexit:                          ; preds = %._crit_edge.us
  %i.fr = add i32 %.165160, %i.cg
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %._crit_edge155.loopexit, %bb.c
  %.2.lcssa = phi i32 [ %.165160, %bb.c ], [ %i.fr, %._crit_edge155.loopexit ] ; 2 uses
  %.062.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %.lcssa, %._crit_edge155.loopexit ]
  %i.fs = sitofp fast i32 %i.cg to float
  %i.ft = fdiv fast float %.062.lcssa, %i.fs
  %i.fu = select fast i1 %i.cd, float 0.000000e+00, float %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.063164, i64 %indvars.iv176
  store float %i.fu, ptr %i.fv, align 4, !tbaa !42
  %exitcond179.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count
  br i1 %exitcond179.not, label %._crit_edge, label %bb.c, !llvm.loop !81

._crit_edge168.split:                             ; preds = %._crit_edge165, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge168.split, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !82 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn44detectron2_pre_calc_for_bilinear_interpolateIfEEviiiiiiT_S1_S1_S1_iiRSt6vectorINS_7PreCalcIS1_EESaIS4_EE(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6, float noundef nofpclass(nan inf) %7, float noundef nofpclass(nan inf) %8, float noundef nofpclass(nan inf) %9, i32 noundef %10, i32 noundef %11, ptr noundef nonnull align 8 dereferenceable(24) %12) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader110.lr.ph, label %._crit_edge142.split

.preheader110.lr.ph:                              ; preds = %bb.a
  %i.b = icmp slt i32 %3, 1
  %i.c = icmp slt i32 %5, 1
  %i.d = sitofp fast i32 %0 to float
  %i.e = sitofp fast i32 %1 to float
  %i.f = add nsw i32 %0, -1                       ; 4 uses
  %i.g = sitofp fast i32 %i.f to float
  %i.h = add nsw i32 %1, -1                       ; 4 uses
  %i.i = sitofp fast i32 %i.h to float
  %i.j = icmp slt i32 %4, 1
  %or.cond.not170 = or i1 %i.b, %i.j
  %brmerge = or i1 %or.cond.not170, %i.c
  br i1 %brmerge, label %._crit_edge142.split, label %.preheader110.us.us.preheader

.preheader110.us.us.preheader:                    ; preds = %.preheader110.lr.ph
  %i.k = sitofp fast i32 %11 to float
  %i.l = sitofp fast i32 %10 to float
  %i.m = zext nneg i32 %5 to i64
  %i.n = shl nuw nsw i64 %i.m, 5
  %i.o = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.p = fdiv fast float 1.000000e+00, %i.l
  %i.q = shufflevector <2 x i32> %i.o, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.r = fdiv fast float 1.000000e+00, %i.k
  br label %.preheader110.us.us

.preheader110.us.us:                              ; preds = %.preheader110.us.us.preheader, %._crit_edge.split.us.split.us.us.us
  %.0141.us.us = phi i32 [ %.us-phi.us.us.us.us.us, %._crit_edge.split.us.split.us.us.us ], [ 0, %.preheader110.us.us.preheader ]
  %.087140.us.us = phi i32 [ %i.by, %._crit_edge.split.us.split.us.us.us ], [ 0, %.preheader110.us.us.preheader ] ; 2 uses
  %i.s = uitofp nneg i32 %.087140.us.us to float
  %i.t = fmul fast float %8, %i.s
  %i.u = fadd fast float %6, %i.t
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge116.split.us.us.us.us.us, %.preheader110.us.us
  %.1134.us.us.us.us = phi i32 [ %.0141.us.us, %.preheader110.us.us ], [ %.us-phi.us.us.us.us.us, %._crit_edge116.split.us.us.us.us.us ]
  %.088133.us.us.us.us = phi i32 [ 0, %.preheader110.us.us ], [ %i.bx, %._crit_edge116.split.us.us.us.us.us ] ; 2 uses
  %i.v = uitofp nneg i32 %.088133.us.us.us.us to float
  %i.w = fmul fast float %9, %i.v
  %i.x = fadd fast float %7, %i.w
  br label %.lr.ph.us.us.us.us.us

.lr.ph.us.us.us.us.us:                            ; preds = %._crit_edge.us.us.us.us.us, %.preheader.us.us.us.us
  %.2114.us.us.us.us.us = phi i32 [ %.1134.us.us.us.us, %.preheader.us.us.us.us ], [ %.us-phi.us.us.us.us.us, %._crit_edge.us.us.us.us.us ] ; 3 uses
  %.089113.us.us.us.us.us = phi i32 [ 0, %.preheader.us.us.us.us ], [ %i.bs, %._crit_edge.us.us.us.us.us ] ; 2 uses
  %i.y = uitofp nneg i32 %.089113.us.us.us.us.us to float
  %i.z = fadd fast float %i.y, 5.000000e-01
  %i.aa = fmul fast float %8, %i.z
  %i.ab = fmul fast float %i.aa, %i.p
  %i.ac = fadd fast float %i.ab, %i.u             ; 3 uses
  %i.ad = fcmp fast olt float %i.ac, -1.000000e+00
  %i.ae = fcmp fast ogt float %i.ac, %i.d
  %or.cond.us.us.us.us.us = select i1 %i.ad, i1 true, i1 %i.ae
  %.093.us.us.us.us.us = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ac, float 0.000000e+00) ; 2 uses
  %i.af = fptosi float %.093.us.us.us.us.us to i32 ; 3 uses
  %.not.us.us.us.us.us = icmp sgt i32 %i.f, %i.af ; 2 uses
  %i.ag = add nsw i32 %i.af, 1
  %.097.us.us.us.us.us = select i1 %.not.us.us.us.us.us, i32 %i.ag, i32 %i.f
  %.095.us.us.us.us.us = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.af) ; 2 uses
  %i.ah = insertelement <2 x i32> poison, i32 %.095.us.us.us.us.us, i64 0
  %i.ai = insertelement <2 x i32> %i.ah, i32 %.097.us.us.us.us.us, i64 1
  %i.aj = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ak = mul nsw <4 x i32> %i.aj, %i.q
  %or.cond.fr.us.us.us.us.us = freeze i1 %or.cond.us.us.us.us.us
  br i1 %or.cond.fr.us.us.us.us.us, label %.lr.ph.split.us.us.us.us.us.us, label %.lr.ph.split.us130.us.us.us.us.preheader

.lr.ph.split.us130.us.us.us.us.preheader:         ; preds = %.lr.ph.us.us.us.us.us
  %.194.us.us.us.us.us = select nsz i1 %.not.us.us.us.us.us, float %.093.us.us.us.us.us, float %i.g
  %i.al = sitofp fast i32 %.095.us.us.us.us.us to float
  %i.am = fsub fast float %.194.us.us.us.us.us, %i.al ; 2 uses
  %i.an = fsub fast float 1.000000e+00, %i.am
  %i.ao = sext i32 %.2114.us.us.us.us.us to i64
  %i.ap = insertelement <4 x float> poison, float %i.an, i64 0
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 1
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %.lr.ph.split.us130.us.us.us.us

.lr.ph.split.us130.us.us.us.us:                   ; preds = %.lr.ph.split.us130.us.us.us.us.preheader, %bb.d
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph.split.us130.us.us.us.us.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.090111.us119.us.us.us.us = phi i32 [ 0, %.lr.ph.split.us130.us.us.us.us.preheader ], [ %i.bq, %bb.d ] ; 2 uses
  %i.as = uitofp nneg i32 %.090111.us119.us.us.us.us to float
  %i.at = fadd fast float %i.as, 5.000000e-01
  %i.au = fmul fast float %9, %i.at
  %i.av = fmul fast float %i.au, %i.r
  %i.aw = fadd fast float %i.av, %i.x             ; 3 uses
  %i.ax = fcmp fast olt float %i.aw, -1.000000e+00
  %i.ay = fcmp fast ogt float %i.aw, %i.e
  %or.cond109.us.us.us.us.us = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond109.us.us.us.us.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us130.us.us.us.us
  %.091.us.us.us.us.us = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.aw, float 0.000000e+00) ; 2 uses
  %i.az = fptosi float %.091.us.us.us.us.us to i32 ; 3 uses
  %.not105.us.us.us.us.us = icmp sgt i32 %i.h, %i.az ; 2 uses
  %i.ba = add nsw i32 %i.az, 1
  %.098.us.us.us.us.us = select i1 %.not105.us.us.us.us.us, i32 %i.ba, i32 %i.h
  %.096.us.us.us.us.us = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.az) ; 2 uses
  %.192.us.us.us.us.us = select nsz i1 %.not105.us.us.us.us.us, float %.091.us.us.us.us.us, float %i.i
  %i.bb = sitofp fast i32 %.096.us.us.us.us.us to float
  %i.bc = fsub fast float %.192.us.us.us.us.us, %i.bb ; 2 uses
  %i.bd = fsub fast float 1.000000e+00, %i.bc
  %i.be = load ptr, ptr %12, align 8, !tbaa !49
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %indvars.iv ; 2 uses
  %i.bg = insertelement <4 x i32> poison, i32 %.096.us.us.us.us.us, i64 0
  %i.bh = insertelement <4 x i32> %i.bg, i32 %.098.us.us.us.us.us, i64 1
  %i.bi = shufflevector <4 x i32> %i.bh, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bj = add nsw <4 x i32> %i.bi, %i.ak
  store <4 x i32> %i.bj, ptr %i.bf, align 4, !tbaa !18
  %.sroa.7.0..sroa_idx.us.us.us.us.us = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bk = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bc, i64 1
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bn = fmul fast <4 x float> %i.bm, %i.ar
  store <4 x float> %i.bn, ptr %.sroa.7.0..sroa_idx.us.us.us.us.us, align 4, !tbaa !42
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us130.us.us.us.us
  %i.bo = load ptr, ptr %12, align 8, !tbaa !49
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bp, i8 0, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bq = add nuw nsw i32 %.090111.us119.us.us.us.us, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bq, %5
  br i1 %exitcond.not, label %._crit_edge.us.us.us.us.us.loopexit149, label %.lr.ph.split.us130.us.us.us.us, !llvm.loop !84

._crit_edge.us.us.us.us.us.loopexit149:           ; preds = %bb.d
  %i.br = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge.us.us.us.us.us

._crit_edge.us.us.us.us.us:                       ; preds = %._crit_edge.us.us.us.us.us.loopexit149, %.lr.ph.split.us.us.us.us.us.us
  %.us-phi.us.us.us.us.us = phi i32 [ %i.bw, %.lr.ph.split.us.us.us.us.us.us ], [ %i.br, %._crit_edge.us.us.us.us.us.loopexit149 ] ; 3 uses
  %i.bs = add nuw nsw i32 %.089113.us.us.us.us.us, 1 ; 2 uses
  %exitcond157.not = icmp eq i32 %i.bs, %4
  br i1 %exitcond157.not, label %._crit_edge116.split.us.us.us.us.us, label %.lr.ph.us.us.us.us.us, !llvm.loop !85

.lr.ph.split.us.us.us.us.us.us:                   ; preds = %.lr.ph.us.us.us.us.us
  %i.bt = load ptr, ptr %12, align 8, !tbaa !49
  %i.bu = sext i32 %.2114.us.us.us.us.us to i64
  %i.bv = shl nsw i64 %i.bu, 5
  %scevgep = getelementptr nuw i8, ptr %i.bt, i64 %i.bv
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.n, i1 false), !tbaa !62
  %i.bw = add i32 %5, %.2114.us.us.us.us.us
  br label %._crit_edge.us.us.us.us.us

._crit_edge116.split.us.us.us.us.us:              ; preds = %._crit_edge.us.us.us.us.us
  %i.bx = add nuw nsw i32 %.088133.us.us.us.us, 1 ; 2 uses
  %exitcond158.not = icmp eq i32 %i.bx, %3
  br i1 %exitcond158.not, label %._crit_edge.split.us.split.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !86

._crit_edge.split.us.split.us.us.us:              ; preds = %._crit_edge116.split.us.us.us.us.us
  %i.by = add nuw nsw i32 %.087140.us.us, 1       ; 2 uses
  %exitcond159.not = icmp eq i32 %i.by, %2
  br i1 %exitcond159.not, label %._crit_edge142.split, label %.preheader110.us.us, !llvm.loop !87

._crit_edge142.split:                             ; preds = %._crit_edge.split.us.split.us.us.us, %.preheader110.lr.ph, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn19ROIAlign_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.h = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !18
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 7 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 8 uses
  %.not124 = icmp sgt i32 %i.k, %i.j
  br i1 %.not124, label %._crit_edge.split128, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !40, !noalias !88
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !88
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !88
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !40, !noalias !91 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41, !noalias !91
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !91
  %factor.op.mul126 = mul i64 %i.s, %i.u          ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 212
  %i.w = load i32, ptr %i.v, align 4, !tbaa !37   ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.noexc.lr.ph.split, label %._crit_edge.split128

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.z = load i32, ptr %i.y, align 8, !tbaa !22   ; 5 uses
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = sext i32 %i.z to i64
  br i1 %i.aa, label %.noexc.lr.ph.split.split, label %._crit_edge.split128

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ac = load i32, ptr %6, align 4, !tbaa !18    ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.noexc.lr.ph.split.split.split.us, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split.split
  %i.ae = zext nneg i32 %i.z to i64
  %i.af = sext i32 %i.k to i64                    ; 5 uses
  %i.ag = zext nneg i32 %i.w to i64
  %i.ah = mul nuw nsw i64 %i.ae, %i.ag
  %i.ai = shl nuw i64 %i.ah, 2                    ; 5 uses
  %i.aj = add nsw i32 %i.j, 1
  %i.ak = sub i32 %i.aj, %i.k                     ; 2 uses
  %i.al = sub i32 %i.j, %i.k
  %xtraiter = and i32 %i.ak, 3                    ; 3 uses
  %i.am = icmp ult i32 %i.al, 3
  br i1 %i.am, label %.noexc.epil.preheader, label %.noexc.preheader.new

.noexc.preheader.new:                             ; preds = %.noexc.preheader
  %unroll_iter = and i32 %i.ak, -4
  br label %.noexc

.noexc.lr.ph.split.split.split.us:                ; preds = %.noexc.lr.ph.split.split
  %i.an = load i32, ptr %7, align 4, !tbaa !18    ; 6 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.noexc.lr.ph.split.split.split.us.split.us, label %.noexc.us.preheader

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.split.split.us
  %i.ap = zext nneg i32 %i.z to i64
  %i.aq = sext i32 %i.k to i64                    ; 5 uses
  %i.ar = zext nneg i32 %i.w to i64
  %i.as = mul nuw nsw i64 %i.ap, %i.ar
  %i.at = shl nuw i64 %i.as, 2                    ; 5 uses
  %i.au = add nsw i32 %i.j, 1
  %i.av = sub i32 %i.au, %i.k                     ; 2 uses
  %i.aw = sub i32 %i.j, %i.k
  %xtraiter241 = and i32 %i.av, 3                 ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 3
  br i1 %i.ax, label %.noexc.us.epil.preheader, label %.noexc.us.preheader.new

.noexc.us.preheader.new:                          ; preds = %.noexc.us.preheader
  %unroll_iter245 = and i32 %i.av, -4
  br label %.noexc.us

.noexc.lr.ph.split.split.split.us.split.us:       ; preds = %.noexc.lr.ph.split.split.split.us
  %i.ay = load ptr, ptr %8, align 8, !tbaa !49    ; 4 uses
  %i.az = zext nneg i32 %i.an to i64              ; 6 uses
  %i.ba = mul i32 %i.an, %i.ac
  %i.bb = sext i32 %i.k to i64
  %i.bc = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.z to i64
  %min.iters.check = icmp ult i32 %i.an, 4
  %min.iters.check174 = icmp ult i32 %i.an, 16
  %i.bd = and i64 %i.az, 12
  %n.vec = and i64 %i.az, 2147483632              ; 5 uses
  %i.be = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.az
  %min.epilog.iters.check = icmp eq i64 %i.bd, 0
  %n.vec207 = and i64 %i.az, 2147483644           ; 4 uses
  %i.bf = trunc nuw nsw i64 %n.vec207 to i32
  %cmp.n228 = icmp eq i64 %n.vec207, %i.az
  br label %.noexc.us.us

.noexc.us.us:                                     ; preds = %._crit_edge117.split123.us.split.us.us.us, %.noexc.lr.ph.split.split.split.us.split.us
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %._crit_edge117.split123.us.split.us.us.us ], [ %i.bb, %.noexc.lr.ph.split.split.split.us.split.us ] ; 3 uses
  %.reass.us.us = mul i64 %factor.op.mul, %indvars.iv155
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us.us ; 13 uses
  %.reass127.us.us = mul i64 %factor.op.mul126, %indvars.iv155
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass127.us.us
  br label %.preheader89.us.us.us.us

.preheader89.us.us.us.us:                         ; preds = %._crit_edge.split.us.split.us.us.us.us.us, %.noexc.us.us
  %.052116.us.us.us.us = phi i32 [ 0, %.noexc.us.us ], [ %i.ep, %._crit_edge.split.us.split.us.us.us.us.us ]
  %.053115.us.us.us.us = phi i32 [ 0, %.noexc.us.us ], [ %i.ek, %._crit_edge.split.us.split.us.us.us.us.us ]
  %.055112.us.us.us.us = phi ptr [ %i.bh, %.noexc.us.us ], [ %i.eo, %._crit_edge.split.us.split.us.us.us.us.us ] ; 2 uses
  br label %.preheader88.us.us.us.us.us.us

.preheader88.us.us.us.us.us.us:                   ; preds = %._crit_edge97.split.us.us.us.us.us.us.us, %.preheader89.us.us.us.us
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %._crit_edge97.split.us.us.us.us.us.us.us ], [ 0, %.preheader89.us.us.us.us ] ; 2 uses
  %.154101.us.us.us.us.us.us = phi i32 [ %i.ek, %._crit_edge97.split.us.us.us.us.us.us.us ], [ %.053115.us.us.us.us, %.preheader89.us.us.us.us ] ; 2 uses
  %i.bi = sext i32 %.154101.us.us.us.us.us.us to i64
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.us.us.us.us.us.us.us, %.preheader88.us.us.us.us.us.us
  %.04996.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader88.us.us.us.us.us.us ], [ %i.ej, %._crit_edge.us.us.us.us.us.us.us ]
  %.05095.us.us.us.us.us.us.us = phi float [ 0.000000e+00, %.preheader88.us.us.us.us.us.us ], [ %.lcssa, %._crit_edge.us.us.us.us.us.us.us ] ; 3 uses
  %.294.us.us.us.us.us.us.us = phi i64 [ %i.bi, %.preheader88.us.us.us.us.us.us ], [ %i.ei, %._crit_edge.us.us.us.us.us.us.us ] ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check174, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = add i64 %.294.us.us.us.us.us.us.us, %n.vec
  %i.bk = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.05095.us.us.us.us.us.us.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.bk, %vector.ph ], [ %i.cx, %vector.body ]
  %vec.phi175 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.cy, %vector.body ]
  %i.bl = add i64 %.294.us.us.us.us.us.us.us, %index ; 2 uses
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %i.bl
  %i.bn = getelementptr [32 x i8], ptr %i.ay, i64 %i.bl
  %i.bo = getelementptr i8, ptr %i.bn, i64 256
  %wide.vec = load <64 x float>, ptr %i.bm, align 4, !tbaa !62 ; 8 uses
  %i.bp = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.bq = shufflevector <64 x i32> %i.bp, <64 x i32> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.br = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.bs = shufflevector <64 x i32> %i.br, <64 x i32> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %i.bt = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.bu = shufflevector <64 x i32> %i.bt, <64 x i32> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %i.bv = bitcast <64 x float> %wide.vec to <64 x i32>
  %i.bw = shufflevector <64 x i32> %i.bv, <64 x i32> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %strided.vec179 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %strided.vec180 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %strided.vec181 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %strided.vec182 = shufflevector <64 x float> %wide.vec, <64 x float> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %wide.vec183 = load <64 x float>, ptr %i.bo, align 4, !tbaa !62 ; 8 uses
  %i.bx = bitcast <64 x float> %wide.vec183 to <64 x i32>
  %i.by = shufflevector <64 x i32> %i.bx, <64 x i32> poison, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56>
  %i.bz = bitcast <64 x float> %wide.vec183 to <64 x i32>
  %i.ca = shufflevector <64 x i32> %i.bz, <64 x i32> poison, <8 x i32> <i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57>
  %i.cb = bitcast <64 x float> %wide.vec183 to <64 x i32>
  %i.cc = shufflevector <64 x i32> %i.cb, <64 x i32> poison, <8 x i32> <i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58>
  %i.cd = bitcast <64 x float> %wide.vec183 to <64 x i32>
  %i.ce = shufflevector <64 x i32> %i.cd, <64 x i32> poison, <8 x i32> <i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59>
  %strided.vec188 = shufflevector <64 x float> %wide.vec183, <64 x float> poison, <8 x i32> <i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60>
  %strided.vec189 = shufflevector <64 x float> %wide.vec183, <64 x float> poison, <8 x i32> <i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61>
  %strided.vec190 = shufflevector <64 x float> %wide.vec183, <64 x float> poison, <8 x i32> <i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62>
  %strided.vec191 = shufflevector <64 x float> %wide.vec183, <64 x float> poison, <8 x i32> <i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %i.cf = sext <8 x i32> %i.bq to <8 x i64>
  %i.cg = sext <8 x i32> %i.by to <8 x i64>
  %wide.gep = getelementptr inbounds [4 x i8], ptr %i.bg, <8 x i64> %i.cf
  %wide.gep192 = getelementptr inbounds [4 x i8], ptr %i.bg, <8 x i64> %i.cg
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %wide.masked.gather193 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep192, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %i.ch = fmul fast <8 x float> %wide.masked.gather, %strided.vec179
  %i.ci = fmul fast <8 x float> %wide.masked.gather193, %strided.vec188
  %i.cj = sext <8 x i32> %i.bs to <8 x i64>
  %i.ck = sext <8 x i32> %i.ca to <8 x i64>
  %wide.gep194 = getelementptr inbounds [4 x i8], ptr %i.bg, <8 x i64> %i.cj
  %wide.gep195 = getelementptr inbounds [4 x i8], ptr %i.bg, <8 x i64> %i.ck
  %wide.masked.gather196 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep194, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %wide.masked.gather197 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep195, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %i.cl = fmul fast <8 x float> %wide.masked.gather196, %strided.vec180
  %i.cm = fmul fast <8 x float> %wide.masked.gather197, %strided.vec189
  %10 = fadd fast <8 x float> %i.ch, %i.cl
  %11 = fadd fast <8 x float> %i.ci, %i.cm
  %i.cn = sext <8 x i32> %i.bu to <8 x i64>
  %i.co = sext <8 x i32> %i.cc to <8 x i64>
  %wide.gep198 = getelementptr inbounds [4 x i8], ptr %i.bg, <8 x i64> %i.cn
  %wide.gep199 = getelementptr inbounds [4 x i8], ptr %i.bg, <8 x i64> %i.co
  %wide.masked.gather200 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep198, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %wide.masked.gather201 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep199, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %i.cp = fmul fast <8 x float> %wide.masked.gather200, %strided.vec181
  %i.cq = fmul fast <8 x float> %wide.masked.gather201, %strided.vec190
  %12 = fadd fast <8 x float> %10, %i.cp
  %13 = fadd fast <8 x float> %11, %i.cq
  %i.cr = sext <8 x i32> %i.bw to <8 x i64>
  %i.cs = sext <8 x i32> %i.ce to <8 x i64>
  %wide.gep202 = getelementptr inbounds [4 x i8], ptr %i.bg, <8 x i64> %i.cr
  %wide.gep203 = getelementptr inbounds [4 x i8], ptr %i.bg, <8 x i64> %i.cs
  %wide.masked.gather204 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep202, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %wide.masked.gather205 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep203, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !42
  %i.ct = fmul fast <8 x float> %wide.masked.gather204, %strided.vec182
  %i.cu = fmul fast <8 x float> %wide.masked.gather205, %strided.vec191
  %i.cv = fadd fast <8 x float> %12, %i.ct
  %i.cw = fadd fast <8 x float> %13, %i.cu
  %i.cx = fadd fast <8 x float> %i.cv, %vec.phi   ; 2 uses
  %i.cy = fadd fast <8 x float> %i.cw, %vec.phi175 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <8 x float> %i.cy, %i.cx
  %i.da = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us.us.us.us.us.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.da, %vec.epilog.iter.check ], [ %.05095.us.us.us.us.us.us.us, %vector.main.loop.iter.check ]
  %i.db = add i64 %.294.us.us.us.us.us.us.us, %n.vec207
  %i.dc = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %i.dd = getelementptr [32 x i8], ptr %i.ay, i64 %.294.us.us.us.us.us.us.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index208 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next227, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi209 = phi <4 x float> [ %i.dc, %vec.epilog.ph ], [ %i.dw, %vec.epilog.vector.body ]
  %i.de = getelementptr [32 x i8], ptr %i.dd, i64 %index208
  %wide.vec210 = load <32 x float>, ptr %i.de, align 4, !tbaa !62 ; 8 uses
  %i.df = bitcast <32 x float> %wide.vec210 to <32 x i32>
  %i.dg = shufflevector <32 x i32> %i.df, <32 x i32> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %i.dh = bitcast <32 x float> %wide.vec210 to <32 x i32>
  %i.di = shufflevector <32 x i32> %i.dh, <32 x i32> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %i.dj = bitcast <32 x float> %wide.vec210 to <32 x i32>
  %i.dk = shufflevector <32 x i32> %i.dj, <32 x i32> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %i.dl = bitcast <32 x float> %wide.vec210 to <32 x i32>
  %i.dm = shufflevector <32 x i32> %i.dl, <32 x i32> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %strided.vec215 = shufflevector <32 x float> %wide.vec210, <32 x float> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %strided.vec216 = shufflevector <32 x float> %wide.vec210, <32 x float> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %strided.vec217 = shufflevector <32 x float> %wide.vec210, <32 x float> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %strided.vec218 = shufflevector <32 x float> %wide.vec210, <32 x float> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %i.dn = sext <4 x i32> %i.dg to <4 x i64>
  %wide.gep219 = getelementptr inbounds [4 x i8], ptr %i.bg, <4 x i64> %i.dn
  %wide.masked.gather220 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep219, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.do = fmul fast <4 x float> %wide.masked.gather220, %strided.vec215
  %i.dp = sext <4 x i32> %i.di to <4 x i64>
  %wide.gep221 = getelementptr inbounds [4 x i8], ptr %i.bg, <4 x i64> %i.dp
  %wide.masked.gather222 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep221, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.dq = fmul fast <4 x float> %wide.masked.gather222, %strided.vec216
  %14 = fadd fast <4 x float> %i.do, %i.dq
  %i.dr = sext <4 x i32> %i.dk to <4 x i64>
  %wide.gep223 = getelementptr inbounds [4 x i8], ptr %i.bg, <4 x i64> %i.dr
  %wide.masked.gather224 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep223, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.ds = fmul fast <4 x float> %wide.masked.gather224, %strided.vec217
  %15 = fadd fast <4 x float> %14, %i.ds
  %i.dt = sext <4 x i32> %i.dm to <4 x i64>
  %wide.gep225 = getelementptr inbounds [4 x i8], ptr %i.bg, <4 x i64> %i.dt
  %wide.masked.gather226 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep225, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.du = fmul fast <4 x float> %wide.masked.gather226, %strided.vec218
  %i.dv = fadd fast <4 x float> %15, %i.du
  %i.dw = fadd fast <4 x float> %i.dv, %vec.phi209 ; 2 uses
  %index.next227 = add nuw i64 %index208, 4       ; 2 uses
  %i.dx = icmp eq i64 %index.next227, %n.vec207
  br i1 %i.dx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !95

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dy = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.dw) ; 2 uses
  br i1 %cmp.n228, label %._crit_edge.us.us.us.us.us.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %.294.us.us.us.us.us.us.us, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.db, %vec.epilog.middle.block ]
  %.04892.us.us.us.us.us.us.us.ph = phi i32 [ 0, %iter.check ], [ %i.be, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  %.191.us.us.us.us.us.us.us.ph = phi float [ %.05095.us.us.us.us.us.us.us, %iter.check ], [ %i.da, %vec.epilog.iter.check ], [ %i.dy, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.04892.us.us.us.us.us.us.us = phi i32 [ %i.eh, %vec.epilog.scalar.ph ], [ %.04892.us.us.us.us.us.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.191.us.us.us.us.us.us.us = phi float [ %op.rdx, %vec.epilog.scalar.ph ], [ %.191.us.us.us.us.us.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %indvars.iv ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load <4 x float>, ptr %i.ea, align 4, !tbaa !42
  %i.ec = load <4 x i32>, ptr %i.dz, align 4, !tbaa !18
  %i.ed = sext <4 x i32> %i.ec to <4 x i64>
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.bg, <4 x i64> %i.ed
  %i.ef = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ee, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !42
  %i.eg = fmul fast <4 x float> %i.ef, %i.eb
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.191.us.us.us.us.us.us.us, <4 x float> %i.eg) ; 2 uses
  %i.eh = add nuw nsw i32 %.04892.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond148.not = icmp eq i32 %i.eh, %i.an
  br i1 %exitcond148.not, label %._crit_edge.us.us.us.us.us.us.us, label %vec.epilog.scalar.ph, !llvm.loop !96

._crit_edge.us.us.us.us.us.us.us:                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi float [ %i.dy, %vec.epilog.middle.block ], [ %i.da, %middle.block ], [ %op.rdx, %vec.epilog.scalar.ph ] ; 2 uses
  %i.ei = add nsw i64 %.294.us.us.us.us.us.us.us, %i.az
  %i.ej = add nuw nsw i32 %.04996.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond149.not = icmp eq i32 %i.ej, %i.ac
  br i1 %exitcond149.not, label %._crit_edge97.split.us.us.us.us.us.us.us, label %iter.check, !llvm.loop !97

._crit_edge97.split.us.us.us.us.us.us.us:         ; preds = %._crit_edge.us.us.us.us.us.us.us
  %i.ek = add i32 %i.ba, %.154101.us.us.us.us.us.us ; 2 uses
  %i.el = load float, ptr %9, align 4, !tbaa !42
  %i.em = fdiv fast float %.lcssa, %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.055112.us.us.us.us, i64 %indvars.iv150
  store float %i.em, ptr %i.en, align 4, !tbaa !42
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count
  br i1 %exitcond153.not, label %._crit_edge.split.us.split.us.us.us.us.us, label %.preheader88.us.us.us.us.us.us, !llvm.loop !98

._crit_edge.split.us.split.us.us.us.us.us:        ; preds = %._crit_edge97.split.us.us.us.us.us.us.us
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.055112.us.us.us.us, i64 %i.ab
  %i.ep = add nuw nsw i32 %.052116.us.us.us.us, 1 ; 2 uses
  %exitcond154.not = icmp eq i32 %i.ep, %i.w
  br i1 %exitcond154.not, label %._crit_edge117.split123.us.split.us.us.us, label %.preheader89.us.us.us.us, !llvm.loop !99

._crit_edge117.split123.us.split.us.us.us:        ; preds = %._crit_edge.split.us.split.us.us.us.us.us
  %indvars.iv.next156 = add nsw i64 %indvars.iv155, 1 ; 2 uses
  %lftr.wideiv158 = trunc i64 %indvars.iv.next156 to i32
  %exitcond159.not = icmp eq i32 %i.bc, %lftr.wideiv158
  br i1 %exitcond159.not, label %._crit_edge.split128, label %.noexc.us.us

.noexc.us:                                        ; preds = %.noexc.us, %.noexc.us.preheader.new
  %indvar142 = phi i64 [ 0, %.noexc.us.preheader.new ], [ %indvar.next143.3, %.noexc.us ] ; 5 uses
  %niter246 = phi i32 [ 0, %.noexc.us.preheader.new ], [ %niter246.next.3, %.noexc.us ]
  %i.eq = add nsw i64 %indvar142, %i.aq
  %i.er = mul i64 %factor.op.mul126, %i.eq
  %scevgep144 = getelementptr i8, ptr %i.q, i64 %i.er
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep144, i8 0, i64 %i.at, i1 false), !tbaa !42
  %indvar.next143 = or disjoint i64 %indvar142, 1
  %i.es = add nsw i64 %indvar.next143, %i.aq
  %i.et = mul i64 %factor.op.mul126, %i.es
  %scevgep144.1 = getelementptr i8, ptr %i.q, i64 %i.et
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep144.1, i8 0, i64 %i.at, i1 false), !tbaa !42
  %indvar.next143.1 = or disjoint i64 %indvar142, 2
  %i.eu = add nsw i64 %indvar.next143.1, %i.aq
  %i.ev = mul i64 %factor.op.mul126, %i.eu
  %scevgep144.2 = getelementptr i8, ptr %i.q, i64 %i.ev
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep144.2, i8 0, i64 %i.at, i1 false), !tbaa !42
  %indvar.next143.2 = or disjoint i64 %indvar142, 3
  %i.ew = add nsw i64 %indvar.next143.2, %i.aq
  %i.ex = mul i64 %factor.op.mul126, %i.ew
  %scevgep144.3 = getelementptr i8, ptr %i.q, i64 %i.ex
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep144.3, i8 0, i64 %i.at, i1 false), !tbaa !42
  %indvar.next143.3 = add nuw nsw i64 %indvar142, 4 ; 2 uses
  %niter246.next.3 = add i32 %niter246, 4         ; 2 uses
  %niter246.ncmp.3 = icmp eq i32 %niter246.next.3, %unroll_iter245
  br i1 %niter246.ncmp.3, label %._crit_edge.split128.loopexit236.unr-lcssa, label %.noexc.us

.noexc:                                           ; preds = %.noexc, %.noexc.preheader.new
  %indvar = phi i64 [ 0, %.noexc.preheader.new ], [ %indvar.next.3, %.noexc ] ; 5 uses
  %niter = phi i32 [ 0, %.noexc.preheader.new ], [ %niter.next.3, %.noexc ]
  %i.ey = add nsw i64 %indvar, %i.af
  %i.ez = mul i64 %factor.op.mul126, %i.ey
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ez
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ai, i1 false), !tbaa !42
  %indvar.next = or disjoint i64 %indvar, 1
  %i.fa = add nsw i64 %indvar.next, %i.af
  %i.fb = mul i64 %factor.op.mul126, %i.fa
  %scevgep.1 = getelementptr i8, ptr %i.q, i64 %i.fb
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.1, i8 0, i64 %i.ai, i1 false), !tbaa !42
  %indvar.next.1 = or disjoint i64 %indvar, 2
  %i.fc = add nsw i64 %indvar.next.1, %i.af
  %i.fd = mul i64 %factor.op.mul126, %i.fc
  %scevgep.2 = getelementptr i8, ptr %i.q, i64 %i.fd
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.2, i8 0, i64 %i.ai, i1 false), !tbaa !42
  %indvar.next.2 = or disjoint i64 %indvar, 3
  %i.fe = add nsw i64 %indvar.next.2, %i.af
  %i.ff = mul i64 %factor.op.mul126, %i.fe
  %scevgep.3 = getelementptr i8, ptr %i.q, i64 %i.ff
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.3, i8 0, i64 %i.ai, i1 false), !tbaa !42
  %indvar.next.3 = add nuw nsw i64 %indvar, 4     ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.split128.loopexit237.unr-lcssa, label %.noexc

._crit_edge.split128.loopexit236.unr-lcssa:       ; preds = %.noexc.us
  %lcmp.mod243.not = icmp eq i32 %xtraiter241, 0
  br i1 %lcmp.mod243.not, label %._crit_edge.split128, label %.noexc.us.epil.preheader

.noexc.us.epil.preheader:                         ; preds = %._crit_edge.split128.loopexit236.unr-lcssa, %.noexc.us.preheader
  %indvar142.epil.init = phi i64 [ 0, %.noexc.us.preheader ], [ %indvar.next143.3, %._crit_edge.split128.loopexit236.unr-lcssa ]
  %lcmp.mod244 = icmp ne i32 %xtraiter241, 0
  call void @llvm.assume(i1 %lcmp.mod244)
  br label %.noexc.us.epil

.noexc.us.epil:                                   ; preds = %.noexc.us.epil, %.noexc.us.epil.preheader
  %indvar142.epil = phi i64 [ %indvar142.epil.init, %.noexc.us.epil.preheader ], [ %indvar.next143.epil, %.noexc.us.epil ] ; 2 uses
  %epil.iter242 = phi i32 [ 0, %.noexc.us.epil.preheader ], [ %epil.iter242.next, %.noexc.us.epil ]
  %i.fg = add i64 %indvar142.epil, %i.aq
  %i.fh = mul i64 %factor.op.mul126, %i.fg
  %scevgep144.epil = getelementptr i8, ptr %i.q, i64 %i.fh
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep144.epil, i8 0, i64 %i.at, i1 false), !tbaa !42
  %indvar.next143.epil = add nuw nsw i64 %indvar142.epil, 1
  %epil.iter242.next = add i32 %epil.iter242, 1   ; 2 uses
  %epil.iter242.cmp.not = icmp eq i32 %epil.iter242.next, %xtraiter241
  br i1 %epil.iter242.cmp.not, label %._crit_edge.split128, label %.noexc.us.epil, !llvm.loop !100

._crit_edge.split128.loopexit237.unr-lcssa:       ; preds = %.noexc
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.split128, label %.noexc.epil.preheader

.noexc.epil.preheader:                            ; preds = %._crit_edge.split128.loopexit237.unr-lcssa, %.noexc.preheader
  %indvar.epil.init = phi i64 [ 0, %.noexc.preheader ], [ %indvar.next.3, %._crit_edge.split128.loopexit237.unr-lcssa ]
  %lcmp.mod238 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod238)
  br label %.noexc.epil

.noexc.epil:                                      ; preds = %.noexc.epil, %.noexc.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.noexc.epil.preheader ], [ %indvar.next.epil, %.noexc.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.noexc.epil.preheader ], [ %epil.iter.next, %.noexc.epil ]
  %i.fi = add i64 %indvar.epil, %i.af
  %i.fj = mul i64 %factor.op.mul126, %i.fi
  %scevgep.epil = getelementptr i8, ptr %i.q, i64 %i.fj
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.epil, i8 0, i64 %i.ai, i1 false), !tbaa !42
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split128, label %.noexc.epil, !llvm.loop !102

._crit_edge.split128:                             ; preds = %._crit_edge.split128.loopexit237.unr-lcssa, %.noexc.epil, %._crit_edge.split128.loopexit236.unr-lcssa, %.noexc.us.epil, %._crit_edge117.split123.us.split.us.us.us, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.split128, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8
end_hunk_0
