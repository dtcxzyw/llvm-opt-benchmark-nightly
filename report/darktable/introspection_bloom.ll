Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_bloom?download=true
inline.NumInlined: 10
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@process:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.u = load float, ptr %i.t, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !34
  %i.x = insertelement <2 x float> poison, float %i.q, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.w, i64 1
  %i.z = fadd reassoc nsz arcp contract afn <2 x float> %i.y, splat (float 1.000000e+00)
  %i.aa = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.z, <2 x float> splat (float 1.000000e+02))
  %i.ab = fpext nnan <2 x float> %i.aa to <2 x double>
  %i.ac = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.ab, <double 2.560000e+00, double -1.000000e-02> ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = fptosi double %i.ad to i32
  %i.af = sitofp reassoc nsz arcp contract afn i32 %i.ae to float
  %i.ag = fmul reassoc nsz arcp contract afn float %i.s, %i.af
  %i.ah = fdiv reassoc nsz arcp contract afn float %i.ag, %i.u
  %i.ai = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ah) ; 2 uses
  %i.aj = fcmp reassoc nsz arcp contract afn ogt float %i.ai, 2.560000e+02
  %i.ak = select reassoc nsz arcp contract afn i1 %i.aj, float 2.560000e+02, float %i.ai
  %i.al = fptosi float %i.ak to i32
  %i.am = extractelement <2 x double> %i.ac, i64 1
  %i.an = fptrunc reassoc nnan nsz arcp contract afn double %i.am to float
  %i.ao = fneg reassoc nsz arcp contract afn float %i.an
  %i.ap = call reassoc nnan nsz arcp contract afn float @llvm.exp2.f32(float %i.ao) ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !58 ; 7 uses
  %.not69 = icmp eq i64 %i.p, 0                   ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !59  ; 10 uses
  br i1 %.not69, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp ult i64 %i.p, 5
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.as = mul nsw i64 %i.l, %i.o                  ; 2 uses
  %i.at = shl i64 %i.as, 2
  %i.au = getelementptr i8, ptr %.pre, i64 %i.at
  %i.av = shl i64 %i.as, 4
  %i.aw = getelementptr i8, ptr %2, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 -12
  %bound0 = icmp ult ptr %.pre, %i.ax
  %bound1 = icmp ult ptr %2, %i.au
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check74 = icmp ult i64 %i.p, 33
  br i1 %min.iters.check74, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ay = and i64 %i.p, 31                        ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  %i.ba = select i1 %i.az, i64 32, i64 %i.ay      ; 2 uses
  %n.vec = sub i64 %i.p, %i.ba                    ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ap, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert75 = insertelement <8 x float> poison, float %i.ar, i64 0
  %broadcast.splat76 = shufflevector <8 x float> %broadcast.splatinsert75, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bb = shl i64 %index, 4
  %i.bc = shl i64 %index, 4
  %i.bd = shl i64 %index, 4
  %i.be = shl i64 %index, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 %i.bb
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %i.bc
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 256
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 %i.be
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 384
  %wide.vec = load <32 x float>, ptr %i.bf, align 64, !tbaa !35, !alias.scope !60
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec77 = load <32 x float>, ptr %i.bh, align 64, !tbaa !35, !alias.scope !60
  %strided.vec78 = shufflevector <32 x float> %wide.vec77, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec79 = load <32 x float>, ptr %i.bj, align 64, !tbaa !35, !alias.scope !60
  %strided.vec80 = shufflevector <32 x float> %wide.vec79, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec81 = load <32 x float>, ptr %i.bl, align 64, !tbaa !35, !alias.scope !60
  %strided.vec82 = shufflevector <32 x float> %wide.vec81, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.bm = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat ; 2 uses
  %i.bn = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec78, %broadcast.splat ; 2 uses
  %i.bo = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec80, %broadcast.splat ; 2 uses
  %i.bp = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec82, %broadcast.splat ; 2 uses
  %i.bq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bm, %broadcast.splat76
  %i.br = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bn, %broadcast.splat76
  %i.bs = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bo, %broadcast.splat76
  %i.bt = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bp, %broadcast.splat76
  %i.bu = select reassoc nsz arcp contract afn <8 x i1> %i.bq, <8 x float> %i.bm, <8 x float> zeroinitializer
  %i.bv = select reassoc nsz arcp contract afn <8 x i1> %i.br, <8 x float> %i.bn, <8 x float> zeroinitializer
  %i.bw = select reassoc nsz arcp contract afn <8 x i1> %i.bs, <8 x float> %i.bo, <8 x float> zeroinitializer
  %i.bx = select reassoc nsz arcp contract afn <8 x i1> %i.bt, <8 x float> %i.bp, <8 x float> zeroinitializer
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  store <8 x float> %i.bu, ptr %i.by, align 4, !tbaa !35, !alias.scope !61, !noalias !60
  store <8 x float> %i.bv, ptr %i.bz, align 4, !tbaa !35, !alias.scope !61, !noalias !60
  store <8 x float> %i.bw, ptr %i.ca, align 4, !tbaa !35, !alias.scope !61, !noalias !60
  store <8 x float> %i.bx, ptr %i.cb, align 4, !tbaa !35, !alias.scope !61, !noalias !60
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !45

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.ba, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !64

.lr.ph.preheader:                                 ; preds = %vec.epilog.vector.body, %iter.check, %vector.memcheck, %vec.epilog.iter.check
  %.06164.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec83, %vec.epilog.vector.body ] ; 4 uses
  %i.cd = sub i64 %i.p, %.06164.ph
  %xtraiter = and i64 %i.cd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.06164.prol = phi i64 [ %i.ck, %.lr.ph.prol ], [ %.06164.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.idx.prol = shl i64 %.06164.prol, 4
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.prol
  %i.cf = load float, ptr %i.ce, align 16, !tbaa !35
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.ap ; 2 uses
  %i.ch = fcmp reassoc nsz arcp contract afn ogt float %i.cg, %i.ar
  %i.ci = select reassoc nsz arcp contract afn i1 %i.ch, float %i.cg, float 0.000000e+00
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.06164.prol
  store float %i.ci, ptr %i.cj, align 4, !tbaa !35
  %i.ck = add nuw i64 %.06164.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !46

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.06164.unr = phi i64 [ %.06164.ph, %.lr.ph.preheader ], [ %i.ck, %.lr.ph.prol ]
  %i.cl = sub i64 %.06164.ph, %i.p
  %i.cm = icmp ugt i64 %i.cl, -4
  br i1 %i.cm, label %._crit_edge, label %.lr.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cn = and i64 %i.p, 3                         ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  %i.cp = select i1 %i.co, i64 4, i64 %i.cn
  %n.vec83 = sub i64 %i.p, %i.cp                  ; 2 uses
  %broadcast.splatinsert84 = insertelement <4 x float> poison, float %i.ap, i64 0
  %broadcast.splat85 = shufflevector <4 x float> %broadcast.splatinsert84, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert86 = insertelement <4 x float> poison, float %i.ar, i64 0
  %broadcast.splat87 = shufflevector <4 x float> %broadcast.splatinsert86, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next91, %vec.epilog.vector.body ] ; 3 uses
  %i.cq = shl i64 %index88, 4
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 %i.cq
  %wide.vec89 = load <16 x float>, ptr %i.cr, align 16, !tbaa !35, !alias.scope !60
  %strided.vec90 = shufflevector <16 x float> %wide.vec89, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.cs = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec90, %broadcast.splat85 ; 2 uses
  %i.ct = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.cs, %broadcast.splat87
  %i.cu = select reassoc nsz arcp contract afn <4 x i1> %i.ct, <4 x float> %i.cs, <4 x float> zeroinitializer
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index88
  store <4 x float> %i.cu, ptr %i.cv, align 4, !tbaa !35, !alias.scope !61, !noalias !60
  %index.next91 = add nuw i64 %index88, 4         ; 2 uses
  %i.cw = icmp eq i64 %index.next91, %n.vec83
  br i1 %i.cw, label %.lr.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %i.cx = shl nsw i32 %i.al, 1
  %i.cy = or disjoint i32 %i.cx, 1
  %i.cz = sdiv i32 %i.cy, 2
  %i.da = sext i32 %i.cz to i64
  call void @dt_box_mean(ptr noundef %.pre, i64 noundef %i.o, i64 noundef %i.l, i32 noundef 1, i64 noundef %i.da, i32 noundef 8) #19
  %.pre72 = load ptr, ptr %i.a, align 8, !tbaa !59 ; 7 uses
  br i1 %.not69, label %._crit_edge68, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %._crit_edge
  %min.iters.check101 = icmp ult i64 %i.p, 8
  br i1 %min.iters.check101, label %.lr.ph67.preheader121, label %vector.memcheck102

vector.memcheck102:                               ; preds = %.lr.ph67.preheader
  %i.db = mul nsw i64 %i.l, %i.o                  ; 2 uses
  %i.dc = shl i64 %i.db, 4                        ; 2 uses
  %i.dd = getelementptr i8, ptr %3, i64 %i.dc     ; 2 uses
  %i.de = getelementptr i8, ptr %2, i64 %i.dc
  %i.df = shl i64 %i.db, 2
  %i.dg = getelementptr i8, ptr %.pre72, i64 %i.df
  %bound0103 = icmp ult ptr %3, %i.de
  %bound1104 = icmp ult ptr %2, %i.dd
  %found.conflict105 = and i1 %bound0103, %bound1104
  %bound0106 = icmp ult ptr %3, %i.dg
  %bound1107 = icmp ult ptr %.pre72, %i.dd
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx = or i1 %found.conflict105, %found.conflict108
  br i1 %conflict.rdx, label %.lr.ph67.preheader121, label %vector.ph109

vector.ph109:                                     ; preds = %vector.memcheck102
  %n.vec110 = and i64 %i.p, -4                    ; 3 uses
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next118, %vector.body111 ] ; 3 uses
  %i.dh = shl nuw i64 %index112, 2                ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dh
  %wide.vec113 = load <16 x float>, ptr %i.di, align 64, !tbaa !35, !alias.scope !66 ; 3 uses
  %strided.vec114 = shufflevector <16 x float> %wide.vec113, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec115 = shufflevector <16 x float> %wide.vec113, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.pre72, i64 %index112
  %wide.load = load <4 x float>, ptr %i.dj, align 4, !tbaa !35, !alias.scope !67
  %i.dk = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+02), %wide.load
  %i.dl = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec114, splat (float f0x3C23D70A)
  %i.dm = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.dl
  %i.dn = fmul reassoc nsz arcp contract afn <4 x float> %i.dm, %i.dk
  %i.do = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+02), %i.dn
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dh
  %i.dq = shufflevector <4 x float> %i.do, <4 x float> %strided.vec115, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dr = shufflevector <16 x float> %wide.vec113, <16 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %interleaved.vec = shufflevector <8 x float> %i.dq, <8 x float> %i.dr, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.dp, align 64, !tbaa !35, !alias.scope !68, !noalias !69
  %index.next118 = add nuw i64 %index112, 4       ; 2 uses
  %i.ds = icmp eq i64 %index.next118, %n.vec110
  br i1 %i.ds, label %middle.block119, label %vector.body111, !llvm.loop !52

middle.block119:                                  ; preds = %vector.body111
  %cmp.n = icmp eq i64 %i.p, %n.vec110
  br i1 %cmp.n, label %._crit_edge68, label %.lr.ph67.preheader121

.lr.ph67.preheader121:                            ; preds = %vector.memcheck102, %.lr.ph67.preheader, %middle.block119
  %.065.ph = phi i64 [ 0, %vector.memcheck102 ], [ 0, %.lr.ph67.preheader ], [ %n.vec110, %middle.block119 ] ; 5 uses
  %.neg = or disjoint i64 %.065.ph, 1
  %xtraiter122 = and i64 %i.p, 1
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader121
  %i.dt = shl nuw i64 %.065.ph, 2                 ; 5 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dt
  %i.dv = load float, ptr %i.du, align 64, !tbaa !35
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.pre72, i64 %.065.ph
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !35
  %i.dy = fsub reassoc nsz arcp contract afn float 1.000000e+02, %i.dx
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dv, f0x3C23D70A
  %i.ea = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dz
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, %i.dy
  %i.ec = fsub reassoc nsz arcp contract afn float 1.000000e+02, %i.eb
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dt
  store float %i.ec, ptr %i.ed, align 64, !tbaa !35
  %i.ee = or disjoint i64 %i.dt, 1                ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !35
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ee
  store float %i.eg, ptr %i.eh, align 4, !tbaa !35
  %i.ei = or disjoint i64 %i.dt, 2                ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ei
  %i.ek = load float, ptr %i.ej, align 8, !tbaa !35
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ei
  store float %i.ek, ptr %i.el, align 8, !tbaa !35
  %i.em = or disjoint i64 %i.dt, 3                ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.em
  %i.eo = load float, ptr %i.en, align 4, !tbaa !35
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.em
  store float %i.eo, ptr %i.ep, align 4, !tbaa !35
  %i.eq = or disjoint i64 %.065.ph, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol, %.lr.ph67.preheader121
  %.065.unr = phi i64 [ %.065.ph, %.lr.ph67.preheader121 ], [ %i.eq, %.lr.ph67.prol ]
  %i.er = icmp eq i64 %i.p, %.neg
  br i1 %i.er, label %._crit_edge68, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.06164 = phi i64 [ %i.ft, %.lr.ph ], [ %.06164.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.idx = shl i64 %.06164, 4
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.et = load float, ptr %i.es, align 16, !tbaa !35
  %i.eu = fmul reassoc nsz arcp contract afn float %i.et, %i.ap ; 2 uses
  %i.ev = fcmp reassoc nsz arcp contract afn ogt float %i.eu, %i.ar
  %i.ew = select reassoc nsz arcp contract afn i1 %i.ev, float %i.eu, float 0.000000e+00
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.06164
  store float %i.ew, ptr %i.ex, align 4, !tbaa !35
  %i.ey = add nuw i64 %.06164, 1                  ; 2 uses
  %.idx.1 = shl i64 %i.ey, 4
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.1
  %i.fa = load float, ptr %i.ez, align 16, !tbaa !35
  %i.fb = fmul reassoc nsz arcp contract afn float %i.fa, %i.ap ; 2 uses
  %i.fc = fcmp reassoc nsz arcp contract afn ogt float %i.fb, %i.ar
  %i.fd = select reassoc nsz arcp contract afn i1 %i.fc, float %i.fb, float 0.000000e+00
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ey
  store float %i.fd, ptr %i.fe, align 4, !tbaa !35
  %i.ff = add nuw i64 %.06164, 2                  ; 2 uses
  %.idx.2 = shl i64 %i.ff, 4
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.2
  %i.fh = load float, ptr %i.fg, align 16, !tbaa !35
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fh, %i.ap ; 2 uses
  %i.fj = fcmp reassoc nsz arcp contract afn ogt float %i.fi, %i.ar
  %i.fk = select reassoc nsz arcp contract afn i1 %i.fj, float %i.fi, float 0.000000e+00
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ff
  store float %i.fk, ptr %i.fl, align 4, !tbaa !35
  %i.fm = add nuw i64 %.06164, 3                  ; 2 uses
  %.idx.3 = shl i64 %i.fm, 4
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.3
  %i.fo = load float, ptr %i.fn, align 16, !tbaa !35
  %i.fp = fmul reassoc nsz arcp contract afn float %i.fo, %i.ap ; 2 uses
  %i.fq = fcmp reassoc nsz arcp contract afn ogt float %i.fp, %i.ar
  %i.fr = select reassoc nsz arcp contract afn i1 %i.fq, float %i.fp, float 0.000000e+00
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.fm
  store float %i.fr, ptr %i.fs, align 4, !tbaa !35
  %i.ft = add nuw i64 %.06164, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ft, %i.p
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !53

._crit_edge68:                                    ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67, %middle.block119, %._crit_edge
  call void @free(ptr noundef %.pre72) #19
  br label %bb.e

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67
  %.065 = phi i64 [ %i.hp, %.lr.ph67 ], [ %.065.unr, %.lr.ph67.prol.loopexit ] ; 4 uses
  %i.fu = shl nuw i64 %.065, 2                    ; 5 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fu
  %i.fw = load float, ptr %i.fv, align 16, !tbaa !35
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.pre72, i64 %.065
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !35
  %i.fz = fsub reassoc nsz arcp contract afn float 1.000000e+02, %i.fy
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fw, f0x3C23D70A
  %i.gb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ga
  %i.gc = fmul reassoc nsz arcp contract afn float %i.gb, %i.fz
  %i.gd = fsub reassoc nsz arcp contract afn float 1.000000e+02, %i.gc
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fu
  store float %i.gd, ptr %i.ge, align 16, !tbaa !35
  %i.gf = or disjoint i64 %i.fu, 1                ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gf
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !35
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gf
  store float %i.gh, ptr %i.gi, align 4, !tbaa !35
  %i.gj = or disjoint i64 %i.fu, 2                ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gj
  %i.gl = load float, ptr %i.gk, align 8, !tbaa !35
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gj
  store float %i.gl, ptr %i.gm, align 8, !tbaa !35
  %i.gn = or disjoint i64 %i.fu, 3                ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gn
  %i.gp = load float, ptr %i.go, align 4, !tbaa !35
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gn
  store float %i.gp, ptr %i.gq, align 4, !tbaa !35
  %i.gr = add nuw i64 %.065, 1                    ; 2 uses
  %i.gs = shl nuw i64 %i.gr, 2                    ; 5 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gs
  %i.gu = load float, ptr %i.gt, align 16, !tbaa !35
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.pre72, i64 %i.gr
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !35
  %i.gx = fsub reassoc nsz arcp contract afn float 1.000000e+02, %i.gw
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gu, f0x3C23D70A
  %i.gz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.gy
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gz, %i.gx
  %i.hb = fsub reassoc nsz arcp contract afn float 1.000000e+02, %i.ha
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gs
  store float %i.hb, ptr %i.hc, align 16, !tbaa !35
  %i.hd = or disjoint i64 %i.gs, 1                ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hd
  %i.hf = load float, ptr %i.he, align 4, !tbaa !35
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hd
  store float %i.hf, ptr %i.hg, align 4, !tbaa !35
  %i.hh = or disjoint i64 %i.gs, 2                ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hh
  %i.hj = load float, ptr %i.hi, align 8, !tbaa !35
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hh
  store float %i.hj, ptr %i.hk, align 8, !tbaa !35
  %i.hl = or disjoint i64 %i.gs, 3                ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hl
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !35
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hl
  store float %i.hn, ptr %i.ho, align 4, !tbaa !35
  %i.hp = add nuw i64 %.065, 2                    ; 2 uses
  %exitcond71.not.1 = icmp eq i64 %i.hp, %i.p
  br i1 %exitcond71.not.1, label %._crit_edge68, label %.lr.ph67, !llvm.loop !54

bb.e:                                             ; preds = %._crit_edge68, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_iop_alloc_image_buffers(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @dt_box_mean(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @tiling_callback(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 28)) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !29
  %i.c = load float, ptr %i.b, align 4, !tbaa !31
  %i.d = fadd reassoc nsz arcp contract afn float %i.c, 1.000000e+00
  %i.e = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.d, float 1.000000e+02)
  %i.f = fpext nnan float %i.e to double
  %i.g = fmul reassoc nnan nsz arcp contract afn double %i.f, 2.560000e+00
  %i.h = fptosi double %i.g to i32
  %i.i = sitofp reassoc nsz arcp contract afn i32 %i.h to float
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load float, ptr %i.j, align 4, !tbaa !32
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.n = load float, ptr %i.m, align 8, !tbaa !33
  %i.o = fdiv reassoc nsz arcp contract afn float %i.l, %i.n
  %i.p = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.o) ; 2 uses
  %i.q = fcmp reassoc nsz arcp contract afn ogt float %i.p, 2.560000e+02
  %i.r = select reassoc nsz arcp contract afn i1 %i.q, float 2.560000e+02, float %i.p
  %i.s = fptosi float %i.r to i32
  store <2 x float> <float 2.300000e+00, float 3.000000e+00>, ptr %4, align 4, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 1.000000e+00, ptr %i.t, align 4, !tbaa !71
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.u, align 4, !tbaa !72
  %i.v = mul nsw i32 %i.s, 5
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.v, ptr %i.w, align 4, !tbaa !73
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.x, align 4, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !41
  store <4 x i32> splat (i32 -999), ptr %i.a, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  tail call void @free(ptr noundef %i.b) #19
  store ptr null, ptr %i.a, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !29  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.d, ptr %i.e, align 4, !tbaa !34
  %i.f = load <2 x float>, ptr %1, align 4, !tbaa !35
  store <2 x float> %i.f, ptr %i.b, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(12) ptr @calloc(i64 noundef 1, i64 noundef 12) #21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !29
  tail call void @free(ptr noundef %i.b) #19
  store ptr null, ptr %i.a, align 16, !tbaa !29
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 24) #19 ; 7 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.a, ptr %i.b, align 16, !tbaa !88
  %i.c = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.9) #19 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !90
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.c, ptr noundef nonnull @.str.10) #19
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #19
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.d, ptr noundef %i.e) #19
  %i.f = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.12) #19 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !91
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.f, ptr noundef nonnull @.str.10) #19
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #19
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.h, ptr noundef %i.i) #19
  %i.j = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.14) #19 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !92
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.j, ptr noundef nonnull @.str.10) #19
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.m = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #19
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.l, ptr noundef %i.m) #19
  ret void
}

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3
end_hunk_0
