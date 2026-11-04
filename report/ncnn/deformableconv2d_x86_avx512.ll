Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deformableconv2d_x86_avx512?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK4ncnn27DeformableConv2D_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined:bb.a
  %i.cg = add nsw i32 %i.cf, %.0114207            ; 2 uses
  %i.ch = shl nsw i32 %i.cg, 1                    ; 2 uses
  %i.ci = load i32, ptr %i.s, align 4, !tbaa !51, !noalias !127
  %i.cj = load ptr, ptr %7, align 8, !tbaa !19, !noalias !127 ; 2 uses
  %i.ck = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !127
  %i.cl = sext i32 %i.ch to i64
  %i.cm = load i64, ptr %i.u, align 8, !tbaa !52, !noalias !127 ; 2 uses
  %i.cn = mul i64 %i.cm, %i.ck                    ; 2 uses
  %i.co = mul i64 %i.cn, %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.co
  %i.cq = sext i32 %i.ci to i64
  %i.cr = or disjoint i32 %i.ch, 1
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul i64 %i.cn, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.cv = load i8, ptr %8, align 1, !tbaa !61, !range !47, !noundef !48
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %.noexc147, label %bb.d

.noexc147:                                        ; preds = %.noexc150
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.cx = load i32, ptr %i.af, align 4, !tbaa !51, !noalias !128 ; 2 uses
  %i.cy = load i32, ptr %i.ag, align 8, !tbaa !62, !noalias !128 ; 2 uses
  %i.cz = load i32, ptr %i.ah, align 4, !tbaa !73, !noalias !128
  %i.da = load ptr, ptr %9, align 8, !tbaa !19, !noalias !128
  %i.db = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !128
  %i.dc = sext i32 %i.cg to i64
  %i.dd = mul i64 %i.db, %i.dc
  %i.de = load i64, ptr %i.aj, align 8, !tbaa !52, !noalias !128 ; 4 uses
  %i.df = mul i64 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df
  %i.dh = load i32, ptr %i.ak, align 8, !tbaa !57, !noalias !128
  %i.di = load ptr, ptr %i.al, align 8, !tbaa !18, !noalias !128
  store ptr %i.dg, ptr %14, align 8, !tbaa !19
  store ptr null, ptr %i.v, align 8, !tbaa !17
  store i64 %i.de, ptr %i.w, align 8, !tbaa !52
  store i32 %i.dh, ptr %i.x, align 8, !tbaa !57
  store ptr %i.di, ptr %i.y, align 8, !tbaa !18
  store i32 %i.cx, ptr %i.aa, align 4, !tbaa !51
  store i32 %i.cy, ptr %i.ab, align 8, !tbaa !62
  store i32 1, ptr %i.ac, align 4, !tbaa !73
  store i32 %i.cz, ptr %i.ad, align 8, !tbaa !59
  %i.dj = sext i32 %i.cx to i64
  %i.dk = sext i32 %i.cy to i64
  %i.dl = mul nsw i64 %i.dk, %i.dj                ; 2 uses
  %i.dm = mul i64 %i.de, %i.dl
  %i.dn = add i64 %i.dm, 15
  %i.do = and i64 %i.dn, -16
  %i.dp = udiv i64 %i.do, %i.de
  store i64 %i.dp, ptr %i.ae, align 8, !tbaa !20
  %i.dq = load i32, ptr %i.am, align 8, !tbaa !74, !noalias !128 ; 2 uses
  %i.dr = add nsw i32 %i.dq, -1
  store i32 %i.dr, ptr %i.z, align 8, !tbaa !74, !alias.scope !128
  %i.ds = icmp eq i32 %i.dq, 4
  br i1 %i.ds, label %bb.c, label %_ZN4ncnn3Mat7channelEi.exit

bb.c:                                             ; preds = %.noexc147
  store i64 %i.dl, ptr %i.ae, align 8, !tbaa !20, !alias.scope !128
  br label %_ZN4ncnn3Mat7channelEi.exit

bb.d:                                             ; preds = %.noexc150
  store i64 0, ptr %i.ae, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef 0, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3Mat7channelEi.exit unwind label %bb.y

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %bb.d, %bb.c, %.noexc147
  %i.dt = load i32, ptr %10, align 4, !tbaa !58   ; 2 uses
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %.preheader.lr.ph, label %._crit_edge204

.preheader.lr.ph:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.dv = mul i64 %i.cm, %i.cq
  %i.dw = load i32, ptr %11, align 4, !tbaa !58   ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.preheader.preheader, label %._crit_edge204

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.dy = insertelement <2 x i32> %i.bv, i32 %.0114207, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.dz = phi i32 [ %i.eu, %._crit_edge ], [ %i.dt, %.preheader.preheader ]
  %i.ea = phi i32 [ %i.ev, %._crit_edge ], [ %i.dw, %.preheader.preheader ] ; 2 uses
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %._crit_edge ], [ 0, %.preheader.preheader ] ; 4 uses
  %.2202 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %.1117206, %.preheader.preheader ] ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ec = mul i64 %i.dv, %indvars.iv221           ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ec
  %i.ef = trunc nsw i64 %indvars.iv221 to i32
  %i.eg = insertelement <2 x i32> poison, i32 %i.ef, i64 1
  br label %bb.k

._crit_edge204:                                   ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN4ncnn3Mat7channelEi.exit
  %.2.lcssa = phi ptr [ %.1117206, %_ZN4ncnn3Mat7channelEi.exit ], [ %.1117206, %.preheader.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.eh = load ptr, ptr %i.v, align 8, !tbaa !17  ; 2 uses
  %.not.i = icmp eq ptr %i.eh, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit125, label %bb.e

bb.e:                                             ; preds = %._crit_edge204
  %i.ei = atomicrmw add ptr %i.eh, i32 -1 acq_rel, align 4
  %i.ej = icmp eq i32 %i.ei, 1
  br i1 %i.ej, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit125

bb.f:                                             ; preds = %bb.e
  %i.ek = load ptr, ptr %i.y, align 8, !tbaa !18  ; 3 uses
  %.not3.i = icmp eq ptr %i.ek, null
  %i.el = load ptr, ptr %14, align 8, !tbaa !19   ; 3 uses
  br i1 %.not3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !11
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef %i.el)
          to label %_ZN4ncnn3MatD2Ev.exit125 unwind label %bb.j, !inline_history !0

bb.h:                                             ; preds = %bb.f
  %.not.i145 = icmp eq ptr %i.el, null
  br i1 %.not.i145, label %_ZN4ncnn3MatD2Ev.exit125, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.el) #9
  br label %_ZN4ncnn3MatD2Ev.exit125

bb.j:                                             ; preds = %bb.g
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit125:                         ; preds = %bb.e, %._crit_edge204, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.er = add nuw nsw i32 %.0114207, 1            ; 2 uses
  %i.es = load i32, ptr %i.r, align 4, !tbaa !42  ; 3 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.noexc150, label %._crit_edge209.loopexit, !llvm.loop !123

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load i32, ptr %10, align 4, !tbaa !58
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.eu = phi i32 [ %i.dz, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.ev = phi i32 [ %i.ea, %.preheader ], [ %i.jg, %._crit_edge.loopexit ]
  %.3.lcssa = phi ptr [ %.2202, %.preheader ], [ %i.jf, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.ew = sext i32 %i.eu to i64
  %i.ex = icmp slt i64 %indvars.iv.next222, %i.ew
  br i1 %i.ex, label %.preheader, label %._crit_edge204, !llvm.loop !124

bb.k:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %.3200 = phi ptr [ %.2202, %.lr.ph ], [ %i.jf, %.critedge ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !38
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !38
  %i.fc = trunc nsw i64 %indvars.iv to i32
  %i.fd = load <2 x i32>, ptr %i.an, align 4, !tbaa !58
  %i.fe = insertelement <2 x i32> %i.eg, i32 %i.fc, i64 0
  %i.ff = mul nsw <2 x i32> %i.fd, %i.fe
  %i.fg = call <3 x i32> @llvm.masked.load.v3i32.p0(ptr nonnull align 4 %i.ao, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i32> poison), !tbaa !58
  %i.fh = shufflevector <3 x i32> %i.fg, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.fi = sub <2 x i32> %i.ff, %i.fh
  %i.fj = load <2 x i32>, ptr %i.ap, align 4, !tbaa !58
  %i.fk = mul nsw <2 x i32> %i.fj, %i.dy
  %i.fl = add nsw <2 x i32> %i.fi, %i.fk
  %i.fm = sitofp fast <2 x i32> %i.fl to <2 x float>
  %i.fn = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fo = insertelement <2 x float> %i.fn, float %i.ez, i64 1
  %i.fp = fadd fast <2 x float> %i.fo, %i.fm      ; 3 uses
  %i.fq = extractelement <2 x float> %i.fp, i64 1 ; 3 uses
  %i.fr = fcmp fast ogt float %i.fq, -1.000000e+00
  %i.fs = extractelement <2 x float> %i.fp, i64 0 ; 3 uses
  %i.ft = fcmp fast ogt float %i.fs, -1.000000e+00
  %or.cond = select i1 %i.fr, i1 %i.ft, i1 false
  br i1 %or.cond, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.fu = load i32, ptr %12, align 4, !tbaa !58   ; 2 uses
  %i.fv = sitofp fast i32 %i.fu to float
  %i.fw = fcmp fast olt float %i.fq, %i.fv
  br i1 %i.fw, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.fx = load i32, ptr %13, align 4, !tbaa !58   ; 2 uses
  %i.fy = sitofp fast i32 %i.fx to float
  %i.fz = fcmp fast olt float %i.fs, %i.fy
  br i1 %i.fz, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ga = call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.fp)
  %i.gb = fptosi <2 x float> %i.ga to <2 x i32>
  %.fr = freeze <2 x i32> %i.gb                   ; 3 uses
  %i.gc = extractelement <2 x i32> %.fr, i64 1    ; 5 uses
  %i.gd = add nsw i32 %i.gc, 1                    ; 2 uses
  %i.ge = extractelement <2 x i32> %.fr, i64 0    ; 5 uses
  %i.gf = add nsw i32 %i.ge, 1                    ; 2 uses
  %i.gg = sitofp fast i32 %i.gc to float
  %i.gh = fsub fast float %i.fq, %i.gg            ; 3 uses
  %i.gi = sitofp fast i32 %i.ge to float
  %i.gj = fsub fast float %i.fs, %i.gi            ; 3 uses
  %i.gk = fsub fast float 1.000000e+00, %i.gh     ; 2 uses
  %i.gl = fsub fast float 1.000000e+00, %i.gj     ; 2 uses
  %i.gm = icmp sgt <2 x i32> %.fr, splat (i32 -1) ; 3 uses
  %i.gn = extractelement <2 x i1> %i.gm, i64 0
  %i.go = extractelement <2 x i1> %i.gm, i64 1
  %15 = bitcast <2 x i1> %i.gm to i2
  %16 = icmp eq i2 %15, -1
  %i.gp = add nsw i32 %i.fx, -1
  %i.gq = icmp sgt i32 %i.gp, %i.ge               ; 2 uses
  %i.gr = select i1 %i.go, i1 %i.gq, i1 false
  %i.gs = add nsw i32 %i.fu, -1
  %i.gt = icmp sgt i32 %i.gs, %i.gc               ; 2 uses
  %17 = and i1 %i.gt, %i.gn
  %i.gu = select i1 %i.gt, i1 %i.gq, i1 false
  %i.gv = fmul fast float %i.gl, %i.gk
  %i.gw = fmul fast float %i.gk, %i.gj
  %i.gx = fmul fast float %i.gl, %i.gh
  %i.gy = fmul fast float %i.gj, %i.gh
  br i1 %16, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gz = zext nneg i32 %i.gc to i64
  %i.ha = mul i64 %i.bf, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ha
  %i.hc = shl nuw nsw i32 %i.ge, 4
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.hd
  %i.hf = load <16 x float>, ptr %i.he, align 64, !tbaa !63
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.hg = phi fast <16 x float> [ %i.hf, %bb.o ], [ zeroinitializer, %bb.n ]
  br i1 %i.gr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hh = zext nneg i32 %i.gc to i64
  %i.hi = mul i64 %i.bf, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.hi
  %i.hk = shl nsw i32 %i.gf, 4
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.hl
  %i.hn = load <16 x float>, ptr %i.hm, align 64, !tbaa !63
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ho = phi fast <16 x float> [ %i.hn, %bb.q ], [ zeroinitializer, %bb.p ]
  br i1 %17, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hp = sext i32 %i.gd to i64
  %i.hq = mul i64 %i.bf, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.hq
  %i.hs = shl nuw nsw i32 %i.ge, 4
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ht
  %i.hv = load <16 x float>, ptr %i.hu, align 64, !tbaa !63
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.hw = phi fast <16 x float> [ %i.hv, %bb.s ], [ zeroinitializer, %bb.r ]
  br i1 %i.gu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hx = sext i32 %i.gd to i64
  %i.hy = mul i64 %i.bf, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.hy
  %i.ia = shl nsw i32 %i.gf, 4
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.ib
  %i.id = load <16 x float>, ptr %i.ic, align 64, !tbaa !63
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ie = phi fast <16 x float> [ %i.id, %bb.u ], [ zeroinitializer, %bb.t ]
  %i.if = insertelement <16 x float> poison, float %i.gv, i64 0
  %i.ig = shufflevector <16 x float> %i.if, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ih = fmul fast <16 x float> %i.hg, %i.ig
  %i.ii = insertelement <16 x float> poison, float %i.gw, i64 0
  %i.ij = shufflevector <16 x float> %i.ii, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ik = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ho, <16 x float> nofpclass(nan inf) %i.ij, <16 x float> nofpclass(nan inf) %i.ih)
  %i.il = insertelement <16 x float> poison, float %i.gx, i64 0
  %i.im = shufflevector <16 x float> %i.il, <16 x float> poison, <16 x i32> zeroinitializer
  %i.in = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hw, <16 x float> nofpclass(nan inf) %i.im, <16 x float> nofpclass(nan inf) %i.ik)
  %i.io = insertelement <16 x float> poison, float %i.gy, i64 0
  %i.ip = shufflevector <16 x float> %i.io, <16 x float> poison, <16 x i32> zeroinitializer
  %i.iq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ie, <16 x float> nofpclass(nan inf) %i.ip, <16 x float> nofpclass(nan inf) %i.in) ; 2 uses
  %i.ir = load i8, ptr %8, align 1, !tbaa !61, !range !47, !noundef !48
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.it = load ptr, ptr %14, align 8, !tbaa !19
  %i.iu = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.iv = sext i32 %i.iu to i64
  %i.iw = mul nsw i64 %indvars.iv221, %i.iv
  %i.ix = load i64, ptr %i.w, align 8, !tbaa !52
  %i.iy = mul i64 %i.iw, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.iy
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !38
  %i.jc = insertelement <16 x float> poison, float %i.jb, i64 0
  %i.jd = shufflevector <16 x float> %i.jc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.je = fmul fast <16 x float> %i.jd, %i.iq
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.k, %bb.v, %bb.w, %bb.m
  %.1 = phi nsz <16 x float> [ %i.iq, %bb.v ], [ zeroinitializer, %bb.m ], [ %i.je, %bb.w ], [ zeroinitializer, %bb.k ], [ zeroinitializer, %bb.l ]
  store <16 x float> %.1, ptr %.3200, align 64, !tbaa !63
  %i.jf = getelementptr inbounds nuw i8, ptr %.3200, i64 64 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jg = load i32, ptr %11, align 4, !tbaa !58   ; 2 uses
  %i.jh = sext i32 %i.jg to i64
  %i.ji = icmp slt i64 %indvars.iv.next, %i.jh
  br i1 %i.ji, label %bb.k, label %._crit_edge.loopexit, !llvm.loop !125

._crit_edge215:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge215, %bb.a
  ret void

bb.y:                                             ; preds = %bb.d
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  %i.jk = extractvalue { ptr, i32 } %i.jj, 0
  call void @__clang_call_terminate(ptr %i.jk) #22
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !76 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn27DeformableConv2D_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !58     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !58
  %i.h = load i32, ptr %0, align 4, !tbaa !58     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !58
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !58
  %i.k = load i32, ptr %i.a, align 4, !tbaa !58   ; 2 uses
  %.not216 = icmp sgt i32 %i.k, %i.j
  br i1 %.not216, label %._crit_edge218, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 216 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 212 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 52
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 228
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 236
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.aq = load i32, ptr %i.q, align 8, !tbaa !43  ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge218

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.as = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.at = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bw, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.au = phi i32 [ %i.aq, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bx, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.av = phi i32 [ %i.aq, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.by, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv227 = phi i64 [ %i.as, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next228, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !19, !noalias !140
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !140
  %i.ay = mul i64 %i.ax, %indvars.iv227
  %i.az = load i64, ptr %i.n, align 8, !tbaa !52, !noalias !140 ; 2 uses
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba ; 4 uses
  %i.bc = icmp sgt i32 %i.av, 0
  br i1 %i.bc, label %.preheader200.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader200.lr.ph:                              ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.bd = load i32, ptr %i.l, align 4, !tbaa !51, !noalias !140
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %i.az, %i.be                    ; 4 uses
  %i.bg = load i32, ptr %i.r, align 4, !tbaa !42  ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.preheader200.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader200.preheader:                          ; preds = %.preheader200.lr.ph
  %i.bi = load ptr, ptr %4, align 8, !tbaa !19
  %i.bj = load i32, ptr %5, align 4, !tbaa !58
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul nsw i64 %indvars.iv227, %i.bk
end_hunk_0
begin_hunk_1_@_ZNK4ncnn27DeformableConv2D_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.1:bb.a
  %i.cg = add nsw i32 %i.cf, %.0103210            ; 2 uses
  %i.ch = shl nsw i32 %i.cg, 1                    ; 2 uses
  %i.ci = load i32, ptr %i.s, align 4, !tbaa !51, !noalias !141
  %i.cj = load ptr, ptr %7, align 8, !tbaa !19, !noalias !141 ; 2 uses
  %i.ck = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !141
  %i.cl = sext i32 %i.ch to i64
  %i.cm = load i64, ptr %i.u, align 8, !tbaa !52, !noalias !141 ; 2 uses
  %i.cn = mul i64 %i.cm, %i.ck                    ; 2 uses
  %i.co = mul i64 %i.cn, %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.co
  %i.cq = sext i32 %i.ci to i64
  %i.cr = or disjoint i32 %i.ch, 1
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul i64 %i.cn, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.cv = load i8, ptr %8, align 1, !tbaa !61, !range !47, !noundef !48
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %.noexc135, label %bb.d

.noexc135:                                        ; preds = %.noexc138
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.cx = load i32, ptr %i.af, align 4, !tbaa !51, !noalias !142 ; 2 uses
  %i.cy = load i32, ptr %i.ag, align 8, !tbaa !62, !noalias !142 ; 2 uses
  %i.cz = load i32, ptr %i.ah, align 4, !tbaa !73, !noalias !142
  %i.da = load ptr, ptr %9, align 8, !tbaa !19, !noalias !142
  %i.db = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !142
  %i.dc = sext i32 %i.cg to i64
  %i.dd = mul i64 %i.db, %i.dc
  %i.de = load i64, ptr %i.aj, align 8, !tbaa !52, !noalias !142 ; 4 uses
  %i.df = mul i64 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df
  %i.dh = load i32, ptr %i.ak, align 8, !tbaa !57, !noalias !142
  %i.di = load ptr, ptr %i.al, align 8, !tbaa !18, !noalias !142
  store ptr %i.dg, ptr %14, align 8, !tbaa !19
  store ptr null, ptr %i.v, align 8, !tbaa !17
  store i64 %i.de, ptr %i.w, align 8, !tbaa !52
  store i32 %i.dh, ptr %i.x, align 8, !tbaa !57
  store ptr %i.di, ptr %i.y, align 8, !tbaa !18
  store i32 %i.cx, ptr %i.aa, align 4, !tbaa !51
  store i32 %i.cy, ptr %i.ab, align 8, !tbaa !62
  store i32 1, ptr %i.ac, align 4, !tbaa !73
  store i32 %i.cz, ptr %i.ad, align 8, !tbaa !59
  %i.dj = sext i32 %i.cx to i64
  %i.dk = sext i32 %i.cy to i64
  %i.dl = mul nsw i64 %i.dk, %i.dj                ; 2 uses
  %i.dm = mul i64 %i.de, %i.dl
  %i.dn = add i64 %i.dm, 15
  %i.do = and i64 %i.dn, -16
  %i.dp = udiv i64 %i.do, %i.de
  store i64 %i.dp, ptr %i.ae, align 8, !tbaa !20
  %i.dq = load i32, ptr %i.am, align 8, !tbaa !74, !noalias !142 ; 2 uses
  %i.dr = add nsw i32 %i.dq, -1
  store i32 %i.dr, ptr %i.z, align 8, !tbaa !74, !alias.scope !142
  %i.ds = icmp eq i32 %i.dq, 4
  br i1 %i.ds, label %bb.c, label %_ZN4ncnn3Mat7channelEi.exit

bb.c:                                             ; preds = %.noexc135
  store i64 %i.dl, ptr %i.ae, align 8, !tbaa !20, !alias.scope !142
  br label %_ZN4ncnn3Mat7channelEi.exit

bb.d:                                             ; preds = %.noexc138
  store i64 0, ptr %i.ae, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef 0, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3Mat7channelEi.exit unwind label %bb.y

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %bb.d, %bb.c, %.noexc135
  %i.dt = load i32, ptr %10, align 4, !tbaa !58   ; 2 uses
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %.preheader.lr.ph, label %._crit_edge207

.preheader.lr.ph:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.dv = mul i64 %i.cm, %i.cq
  %i.dw = load i32, ptr %11, align 4, !tbaa !58   ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.preheader.preheader, label %._crit_edge207

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.dy = insertelement <2 x i32> %i.bv, i32 %.0103210, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.dz = phi i32 [ %i.eu, %._crit_edge ], [ %i.dt, %.preheader.preheader ]
  %i.ea = phi i32 [ %i.ev, %._crit_edge ], [ %i.dw, %.preheader.preheader ] ; 2 uses
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %._crit_edge ], [ 0, %.preheader.preheader ] ; 4 uses
  %.2205 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %.1209, %.preheader.preheader ] ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ec = mul i64 %i.dv, %indvars.iv224           ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ec
  %i.ef = trunc nsw i64 %indvars.iv224 to i32
  %i.eg = insertelement <2 x i32> poison, i32 %i.ef, i64 1
  br label %bb.k

._crit_edge207:                                   ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN4ncnn3Mat7channelEi.exit
  %.2.lcssa = phi ptr [ %.1209, %_ZN4ncnn3Mat7channelEi.exit ], [ %.1209, %.preheader.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.eh = load ptr, ptr %i.v, align 8, !tbaa !17  ; 2 uses
  %.not.i = icmp eq ptr %i.eh, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.e

bb.e:                                             ; preds = %._crit_edge207
  %i.ei = atomicrmw add ptr %i.eh, i32 -1 acq_rel, align 4
  %i.ej = icmp eq i32 %i.ei, 1
  br i1 %i.ej, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit113

bb.f:                                             ; preds = %bb.e
  %i.ek = load ptr, ptr %i.y, align 8, !tbaa !18  ; 3 uses
  %.not3.i = icmp eq ptr %i.ek, null
  %i.el = load ptr, ptr %14, align 8, !tbaa !19   ; 3 uses
  br i1 %.not3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !11
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef %i.el)
          to label %_ZN4ncnn3MatD2Ev.exit113 unwind label %bb.j, !inline_history !0

bb.h:                                             ; preds = %bb.f
  %.not.i133 = icmp eq ptr %i.el, null
  br i1 %.not.i133, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.el) #9
  br label %_ZN4ncnn3MatD2Ev.exit113

bb.j:                                             ; preds = %bb.g
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit113:                         ; preds = %bb.e, %._crit_edge207, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.er = add nuw nsw i32 %.0103210, 1            ; 2 uses
  %i.es = load i32, ptr %i.r, align 4, !tbaa !42  ; 3 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.noexc138, label %._crit_edge212.loopexit, !llvm.loop !137

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load i32, ptr %10, align 4, !tbaa !58
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.eu = phi i32 [ %i.dz, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.ev = phi i32 [ %i.ea, %.preheader ], [ %i.jg, %._crit_edge.loopexit ]
  %.3.lcssa = phi ptr [ %.2205, %.preheader ], [ %i.jf, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %i.ew = sext i32 %i.eu to i64
  %i.ex = icmp slt i64 %indvars.iv.next225, %i.ew
  br i1 %i.ex, label %.preheader, label %._crit_edge207, !llvm.loop !138

bb.k:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %.3203 = phi ptr [ %.2205, %.lr.ph ], [ %i.jf, %.critedge ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !38
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !38
  %i.fc = trunc nsw i64 %indvars.iv to i32
  %i.fd = load <2 x i32>, ptr %i.an, align 4, !tbaa !58
  %i.fe = insertelement <2 x i32> %i.eg, i32 %i.fc, i64 0
  %i.ff = mul nsw <2 x i32> %i.fd, %i.fe
  %i.fg = call <3 x i32> @llvm.masked.load.v3i32.p0(ptr nonnull align 4 %i.ao, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i32> poison), !tbaa !58
  %i.fh = shufflevector <3 x i32> %i.fg, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.fi = sub <2 x i32> %i.ff, %i.fh
  %i.fj = load <2 x i32>, ptr %i.ap, align 4, !tbaa !58
  %i.fk = mul nsw <2 x i32> %i.fj, %i.dy
  %i.fl = add nsw <2 x i32> %i.fi, %i.fk
  %i.fm = sitofp fast <2 x i32> %i.fl to <2 x float>
  %i.fn = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fo = insertelement <2 x float> %i.fn, float %i.ez, i64 1
  %i.fp = fadd fast <2 x float> %i.fo, %i.fm      ; 3 uses
  %i.fq = extractelement <2 x float> %i.fp, i64 1 ; 3 uses
  %i.fr = fcmp fast ogt float %i.fq, -1.000000e+00
  %i.fs = extractelement <2 x float> %i.fp, i64 0 ; 3 uses
  %i.ft = fcmp fast ogt float %i.fs, -1.000000e+00
  %or.cond = select i1 %i.fr, i1 %i.ft, i1 false
  br i1 %or.cond, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.fu = load i32, ptr %12, align 4, !tbaa !58   ; 2 uses
  %i.fv = sitofp fast i32 %i.fu to float
  %i.fw = fcmp fast olt float %i.fq, %i.fv
  br i1 %i.fw, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.fx = load i32, ptr %13, align 4, !tbaa !58   ; 2 uses
  %i.fy = sitofp fast i32 %i.fx to float
  %i.fz = fcmp fast olt float %i.fs, %i.fy
  br i1 %i.fz, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ga = call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.fp)
  %i.gb = fptosi <2 x float> %i.ga to <2 x i32>
  %.fr = freeze <2 x i32> %i.gb                   ; 3 uses
  %i.gc = extractelement <2 x i32> %.fr, i64 1    ; 5 uses
  %i.gd = add nsw i32 %i.gc, 1                    ; 2 uses
  %i.ge = extractelement <2 x i32> %.fr, i64 0    ; 5 uses
  %i.gf = add nsw i32 %i.ge, 1                    ; 2 uses
  %i.gg = sitofp fast i32 %i.gc to float
  %i.gh = fsub fast float %i.fq, %i.gg            ; 3 uses
  %i.gi = sitofp fast i32 %i.ge to float
  %i.gj = fsub fast float %i.fs, %i.gi            ; 3 uses
  %i.gk = fsub fast float 1.000000e+00, %i.gh     ; 2 uses
  %i.gl = fsub fast float 1.000000e+00, %i.gj     ; 2 uses
  %i.gm = icmp sgt <2 x i32> %.fr, splat (i32 -1) ; 3 uses
  %i.gn = extractelement <2 x i1> %i.gm, i64 0
  %i.go = extractelement <2 x i1> %i.gm, i64 1
  %15 = bitcast <2 x i1> %i.gm to i2
  %16 = icmp eq i2 %15, -1
  %i.gp = add nsw i32 %i.fx, -1
  %i.gq = icmp sgt i32 %i.gp, %i.ge               ; 2 uses
  %i.gr = select i1 %i.go, i1 %i.gq, i1 false
  %i.gs = add nsw i32 %i.fu, -1
  %i.gt = icmp sgt i32 %i.gs, %i.gc               ; 2 uses
  %17 = and i1 %i.gt, %i.gn
  %i.gu = select i1 %i.gt, i1 %i.gq, i1 false
  %i.gv = fmul fast float %i.gl, %i.gk
  %i.gw = fmul fast float %i.gk, %i.gj
  %i.gx = fmul fast float %i.gl, %i.gh
  %i.gy = fmul fast float %i.gj, %i.gh
  br i1 %16, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gz = zext nneg i32 %i.gc to i64
  %i.ha = mul i64 %i.bf, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ha
  %i.hc = shl nuw nsw i32 %i.ge, 3
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.hd
  %i.hf = load <8 x float>, ptr %i.he, align 32, !tbaa !63
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.hg = phi fast <8 x float> [ %i.hf, %bb.o ], [ zeroinitializer, %bb.n ]
  br i1 %i.gr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hh = zext nneg i32 %i.gc to i64
  %i.hi = mul i64 %i.bf, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.hi
  %i.hk = shl nsw i32 %i.gf, 3
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.hl
  %i.hn = load <8 x float>, ptr %i.hm, align 32, !tbaa !63
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ho = phi fast <8 x float> [ %i.hn, %bb.q ], [ zeroinitializer, %bb.p ]
  br i1 %17, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hp = sext i32 %i.gd to i64
  %i.hq = mul i64 %i.bf, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.hq
  %i.hs = shl nuw nsw i32 %i.ge, 3
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ht
  %i.hv = load <8 x float>, ptr %i.hu, align 32, !tbaa !63
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.hw = phi fast <8 x float> [ %i.hv, %bb.s ], [ zeroinitializer, %bb.r ]
  br i1 %i.gu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hx = sext i32 %i.gd to i64
  %i.hy = mul i64 %i.bf, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.hy
  %i.ia = shl nsw i32 %i.gf, 3
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.ib
  %i.id = load <8 x float>, ptr %i.ic, align 32, !tbaa !63
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ie = phi fast <8 x float> [ %i.id, %bb.u ], [ zeroinitializer, %bb.t ]
  %i.if = insertelement <8 x float> poison, float %i.gv, i64 0
  %i.ig = shufflevector <8 x float> %i.if, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ih = fmul fast <8 x float> %i.hg, %i.ig
  %i.ii = insertelement <8 x float> poison, float %i.gw, i64 0
  %i.ij = shufflevector <8 x float> %i.ii, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ik = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ho, <8 x float> nofpclass(nan inf) %i.ij, <8 x float> nofpclass(nan inf) %i.ih)
  %i.il = insertelement <8 x float> poison, float %i.gx, i64 0
  %i.im = shufflevector <8 x float> %i.il, <8 x float> poison, <8 x i32> zeroinitializer
  %i.in = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hw, <8 x float> nofpclass(nan inf) %i.im, <8 x float> nofpclass(nan inf) %i.ik)
  %i.io = insertelement <8 x float> poison, float %i.gy, i64 0
  %i.ip = shufflevector <8 x float> %i.io, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ie, <8 x float> nofpclass(nan inf) %i.ip, <8 x float> nofpclass(nan inf) %i.in) ; 2 uses
  %i.ir = load i8, ptr %8, align 1, !tbaa !61, !range !47, !noundef !48
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.it = load ptr, ptr %14, align 8, !tbaa !19
  %i.iu = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.iv = sext i32 %i.iu to i64
  %i.iw = mul nsw i64 %indvars.iv224, %i.iv
  %i.ix = load i64, ptr %i.w, align 8, !tbaa !52
  %i.iy = mul i64 %i.iw, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.iy
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !38
  %i.jc = insertelement <8 x float> poison, float %i.jb, i64 0
  %i.jd = shufflevector <8 x float> %i.jc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.je = fmul fast <8 x float> %i.jd, %i.iq
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.w, %bb.l, %bb.k, %bb.m
  %.1198 = phi nsz <8 x float> [ zeroinitializer, %bb.k ], [ zeroinitializer, %bb.m ], [ zeroinitializer, %bb.l ], [ %i.je, %bb.w ], [ %i.iq, %bb.v ]
  store <8 x float> %.1198, ptr %.3203, align 32, !tbaa !63
  %i.jf = getelementptr inbounds nuw i8, ptr %.3203, i64 32 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jg = load i32, ptr %11, align 4, !tbaa !58   ; 2 uses
  %i.jh = sext i32 %i.jg to i64
  %i.ji = icmp slt i64 %indvars.iv.next, %i.jh
  br i1 %i.ji, label %bb.k, label %._crit_edge.loopexit, !llvm.loop !139

._crit_edge218:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge218, %bb.a
  ret void

bb.y:                                             ; preds = %bb.d
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  %i.jk = extractvalue { ptr, i32 } %i.jj, 0
  call void @__clang_call_terminate(ptr %i.jk) #22
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn27DeformableConv2D_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !58     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !58
  %i.h = load i32, ptr %0, align 4, !tbaa !58     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !58
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !58
  %i.k = load i32, ptr %i.a, align 4, !tbaa !58   ; 2 uses
  %.not216 = icmp sgt i32 %i.k, %i.j
  br i1 %.not216, label %._crit_edge218, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 216 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 212 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 52
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 228
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 236
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.aq = load i32, ptr %i.q, align 8, !tbaa !43  ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge218

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.as = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.at = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bw, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.au = phi i32 [ %i.aq, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bx, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.av = phi i32 [ %i.aq, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.by, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv227 = phi i64 [ %i.as, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next228, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !19, !noalias !154
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !154
  %i.ay = mul i64 %i.ax, %indvars.iv227
  %i.az = load i64, ptr %i.n, align 8, !tbaa !52, !noalias !154 ; 2 uses
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba ; 4 uses
  %i.bc = icmp sgt i32 %i.av, 0
  br i1 %i.bc, label %.preheader200.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader200.lr.ph:                              ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.bd = load i32, ptr %i.l, align 4, !tbaa !51, !noalias !154
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %i.az, %i.be                    ; 4 uses
  %i.bg = load i32, ptr %i.r, align 4, !tbaa !42  ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.preheader200.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader200.preheader:                          ; preds = %.preheader200.lr.ph
  %i.bi = load ptr, ptr %4, align 8, !tbaa !19
  %i.bj = load i32, ptr %5, align 4, !tbaa !58
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul nsw i64 %indvars.iv227, %i.bk
  %i.bm = load i32, ptr %i.o, align 4, !tbaa !51
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %i.bl, %i.bn
  %i.bp = load i64, ptr %i.p, align 8, !tbaa !52
  %i.bq = mul i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bq
  br label %.preheader200

.preheader200:                                    ; preds = %.preheader200.preheader, %._crit_edge212
  %i.bs = phi i32 [ %i.ca, %._crit_edge212 ], [ %i.au, %.preheader200.preheader ]
  %i.bt = phi i32 [ %i.cb, %._crit_edge212 ], [ %i.bg, %.preheader200.preheader ] ; 3 uses
  %.0104215 = phi i32 [ %i.cc, %._crit_edge212 ], [ 0, %.preheader200.preheader ] ; 3 uses
  %.0105214 = phi ptr [ %.1.lcssa, %._crit_edge212 ], [ %i.br, %.preheader200.preheader ] ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.noexc138.preheader, label %._crit_edge212
end_hunk_1
begin_hunk_2_@_ZNK4ncnn27DeformableConv2D_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.2:bb.a
  %i.cg = add nsw i32 %i.cf, %.0103210            ; 2 uses
  %i.ch = shl nsw i32 %i.cg, 1                    ; 2 uses
  %i.ci = load i32, ptr %i.s, align 4, !tbaa !51, !noalias !155
  %i.cj = load ptr, ptr %7, align 8, !tbaa !19, !noalias !155 ; 2 uses
  %i.ck = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !155
  %i.cl = sext i32 %i.ch to i64
  %i.cm = load i64, ptr %i.u, align 8, !tbaa !52, !noalias !155 ; 2 uses
  %i.cn = mul i64 %i.cm, %i.ck                    ; 2 uses
  %i.co = mul i64 %i.cn, %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.co
  %i.cq = sext i32 %i.ci to i64
  %i.cr = or disjoint i32 %i.ch, 1
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul i64 %i.cn, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.cv = load i8, ptr %8, align 1, !tbaa !61, !range !47, !noundef !48
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %.noexc135, label %bb.d

.noexc135:                                        ; preds = %.noexc138
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.cx = load i32, ptr %i.af, align 4, !tbaa !51, !noalias !156 ; 2 uses
  %i.cy = load i32, ptr %i.ag, align 8, !tbaa !62, !noalias !156 ; 2 uses
  %i.cz = load i32, ptr %i.ah, align 4, !tbaa !73, !noalias !156
  %i.da = load ptr, ptr %9, align 8, !tbaa !19, !noalias !156
  %i.db = load i64, ptr %i.ai, align 8, !tbaa !20, !noalias !156
  %i.dc = sext i32 %i.cg to i64
  %i.dd = mul i64 %i.db, %i.dc
  %i.de = load i64, ptr %i.aj, align 8, !tbaa !52, !noalias !156 ; 4 uses
  %i.df = mul i64 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df
  %i.dh = load i32, ptr %i.ak, align 8, !tbaa !57, !noalias !156
  %i.di = load ptr, ptr %i.al, align 8, !tbaa !18, !noalias !156
  store ptr %i.dg, ptr %14, align 8, !tbaa !19
  store ptr null, ptr %i.v, align 8, !tbaa !17
  store i64 %i.de, ptr %i.w, align 8, !tbaa !52
  store i32 %i.dh, ptr %i.x, align 8, !tbaa !57
  store ptr %i.di, ptr %i.y, align 8, !tbaa !18
  store i32 %i.cx, ptr %i.aa, align 4, !tbaa !51
  store i32 %i.cy, ptr %i.ab, align 8, !tbaa !62
  store i32 1, ptr %i.ac, align 4, !tbaa !73
  store i32 %i.cz, ptr %i.ad, align 8, !tbaa !59
  %i.dj = sext i32 %i.cx to i64
  %i.dk = sext i32 %i.cy to i64
  %i.dl = mul nsw i64 %i.dk, %i.dj                ; 2 uses
  %i.dm = mul i64 %i.de, %i.dl
  %i.dn = add i64 %i.dm, 15
  %i.do = and i64 %i.dn, -16
  %i.dp = udiv i64 %i.do, %i.de
  store i64 %i.dp, ptr %i.ae, align 8, !tbaa !20
  %i.dq = load i32, ptr %i.am, align 8, !tbaa !74, !noalias !156 ; 2 uses
  %i.dr = add nsw i32 %i.dq, -1
  store i32 %i.dr, ptr %i.z, align 8, !tbaa !74, !alias.scope !156
  %i.ds = icmp eq i32 %i.dq, 4
  br i1 %i.ds, label %bb.c, label %_ZN4ncnn3Mat7channelEi.exit

bb.c:                                             ; preds = %.noexc135
  store i64 %i.dl, ptr %i.ae, align 8, !tbaa !20, !alias.scope !156
  br label %_ZN4ncnn3Mat7channelEi.exit

bb.d:                                             ; preds = %.noexc138
  store i64 0, ptr %i.ae, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.y, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef 0, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3Mat7channelEi.exit unwind label %bb.y

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %bb.d, %bb.c, %.noexc135
  %i.dt = load i32, ptr %10, align 4, !tbaa !58   ; 2 uses
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %.preheader.lr.ph, label %._crit_edge207

.preheader.lr.ph:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.dv = mul i64 %i.cm, %i.cq
  %i.dw = load i32, ptr %11, align 4, !tbaa !58   ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.preheader.preheader, label %._crit_edge207

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.dy = insertelement <2 x i32> %i.bv, i32 %.0103210, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.dz = phi i32 [ %i.eu, %._crit_edge ], [ %i.dt, %.preheader.preheader ]
  %i.ea = phi i32 [ %i.ev, %._crit_edge ], [ %i.dw, %.preheader.preheader ] ; 2 uses
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %._crit_edge ], [ 0, %.preheader.preheader ] ; 4 uses
  %.2205 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %.1209, %.preheader.preheader ] ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ec = mul i64 %i.dv, %indvars.iv224           ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ec
  %i.ef = trunc nsw i64 %indvars.iv224 to i32
  %i.eg = insertelement <2 x i32> poison, i32 %i.ef, i64 1
  br label %bb.k

._crit_edge207:                                   ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN4ncnn3Mat7channelEi.exit
  %.2.lcssa = phi ptr [ %.1209, %_ZN4ncnn3Mat7channelEi.exit ], [ %.1209, %.preheader.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.eh = load ptr, ptr %i.v, align 8, !tbaa !17  ; 2 uses
  %.not.i = icmp eq ptr %i.eh, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.e

bb.e:                                             ; preds = %._crit_edge207
  %i.ei = atomicrmw add ptr %i.eh, i32 -1 acq_rel, align 4
  %i.ej = icmp eq i32 %i.ei, 1
  br i1 %i.ej, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit113

bb.f:                                             ; preds = %bb.e
  %i.ek = load ptr, ptr %i.y, align 8, !tbaa !18  ; 3 uses
  %.not3.i = icmp eq ptr %i.ek, null
  %i.el = load ptr, ptr %14, align 8, !tbaa !19   ; 3 uses
  br i1 %.not3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !11
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef %i.el)
          to label %_ZN4ncnn3MatD2Ev.exit113 unwind label %bb.j, !inline_history !0

bb.h:                                             ; preds = %bb.f
  %.not.i133 = icmp eq ptr %i.el, null
  br i1 %.not.i133, label %_ZN4ncnn3MatD2Ev.exit113, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.el) #9
  br label %_ZN4ncnn3MatD2Ev.exit113

bb.j:                                             ; preds = %bb.g
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit113:                         ; preds = %bb.e, %._crit_edge207, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.er = add nuw nsw i32 %.0103210, 1            ; 2 uses
  %i.es = load i32, ptr %i.r, align 4, !tbaa !42  ; 3 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.noexc138, label %._crit_edge212.loopexit, !llvm.loop !151

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load i32, ptr %10, align 4, !tbaa !58
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.eu = phi i32 [ %i.dz, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.ev = phi i32 [ %i.ea, %.preheader ], [ %i.jg, %._crit_edge.loopexit ]
  %.3.lcssa = phi ptr [ %.2205, %.preheader ], [ %i.jf, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %i.ew = sext i32 %i.eu to i64
  %i.ex = icmp slt i64 %indvars.iv.next225, %i.ew
  br i1 %i.ex, label %.preheader, label %._crit_edge207, !llvm.loop !152

bb.k:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 5 uses
  %.3203 = phi ptr [ %.2205, %.lr.ph ], [ %i.jf, %.critedge ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !38
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !38
  %i.fc = trunc nsw i64 %indvars.iv to i32
  %i.fd = load <2 x i32>, ptr %i.an, align 4, !tbaa !58
  %i.fe = insertelement <2 x i32> %i.eg, i32 %i.fc, i64 0
  %i.ff = mul nsw <2 x i32> %i.fd, %i.fe
  %i.fg = call <3 x i32> @llvm.masked.load.v3i32.p0(ptr nonnull align 4 %i.ao, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i32> poison), !tbaa !58
  %i.fh = shufflevector <3 x i32> %i.fg, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.fi = sub <2 x i32> %i.ff, %i.fh
  %i.fj = load <2 x i32>, ptr %i.ap, align 4, !tbaa !58
  %i.fk = mul nsw <2 x i32> %i.fj, %i.dy
  %i.fl = add nsw <2 x i32> %i.fi, %i.fk
  %i.fm = sitofp fast <2 x i32> %i.fl to <2 x float>
  %i.fn = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fo = insertelement <2 x float> %i.fn, float %i.ez, i64 1
  %i.fp = fadd fast <2 x float> %i.fo, %i.fm      ; 3 uses
  %i.fq = extractelement <2 x float> %i.fp, i64 1 ; 3 uses
  %i.fr = fcmp fast ogt float %i.fq, -1.000000e+00
  %i.fs = extractelement <2 x float> %i.fp, i64 0 ; 3 uses
  %i.ft = fcmp fast ogt float %i.fs, -1.000000e+00
  %or.cond = select i1 %i.fr, i1 %i.ft, i1 false
  br i1 %or.cond, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.fu = load i32, ptr %12, align 4, !tbaa !58   ; 2 uses
  %i.fv = sitofp fast i32 %i.fu to float
  %i.fw = fcmp fast olt float %i.fq, %i.fv
  br i1 %i.fw, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.fx = load i32, ptr %13, align 4, !tbaa !58   ; 2 uses
  %i.fy = sitofp fast i32 %i.fx to float
  %i.fz = fcmp fast olt float %i.fs, %i.fy
  br i1 %i.fz, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ga = call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.fp)
  %i.gb = fptosi <2 x float> %i.ga to <2 x i32>
  %.fr = freeze <2 x i32> %i.gb                   ; 3 uses
  %i.gc = extractelement <2 x i32> %.fr, i64 1    ; 5 uses
  %i.gd = add nsw i32 %i.gc, 1                    ; 2 uses
  %i.ge = extractelement <2 x i32> %.fr, i64 0    ; 5 uses
  %i.gf = add nsw i32 %i.ge, 1                    ; 2 uses
  %i.gg = sitofp fast i32 %i.gc to float
  %i.gh = fsub fast float %i.fq, %i.gg            ; 3 uses
  %i.gi = sitofp fast i32 %i.ge to float
  %i.gj = fsub fast float %i.fs, %i.gi            ; 3 uses
  %i.gk = fsub fast float 1.000000e+00, %i.gh     ; 2 uses
  %i.gl = fsub fast float 1.000000e+00, %i.gj     ; 2 uses
  %i.gm = icmp sgt <2 x i32> %.fr, splat (i32 -1) ; 3 uses
  %i.gn = extractelement <2 x i1> %i.gm, i64 0
  %i.go = extractelement <2 x i1> %i.gm, i64 1
  %15 = bitcast <2 x i1> %i.gm to i2
  %16 = icmp eq i2 %15, -1
  %i.gp = add nsw i32 %i.fx, -1
  %i.gq = icmp sgt i32 %i.gp, %i.ge               ; 2 uses
  %i.gr = select i1 %i.go, i1 %i.gq, i1 false
  %i.gs = add nsw i32 %i.fu, -1
  %i.gt = icmp sgt i32 %i.gs, %i.gc               ; 2 uses
  %17 = and i1 %i.gt, %i.gn
  %i.gu = select i1 %i.gt, i1 %i.gq, i1 false
  %i.gv = fmul fast float %i.gl, %i.gk
  %i.gw = fmul fast float %i.gk, %i.gj
  %i.gx = fmul fast float %i.gl, %i.gh
  %i.gy = fmul fast float %i.gj, %i.gh
  br i1 %16, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gz = zext nneg i32 %i.gc to i64
  %i.ha = mul i64 %i.bf, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ha
  %i.hc = shl nuw nsw i32 %i.ge, 2
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.hd
  %i.hf = load <4 x float>, ptr %i.he, align 16, !tbaa !63
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.hg = phi fast <4 x float> [ %i.hf, %bb.o ], [ zeroinitializer, %bb.n ]
  br i1 %i.gr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hh = zext nneg i32 %i.gc to i64
  %i.hi = mul i64 %i.bf, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.hi
  %i.hk = shl nsw i32 %i.gf, 2
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.hl
  %i.hn = load <4 x float>, ptr %i.hm, align 16, !tbaa !63
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ho = phi fast <4 x float> [ %i.hn, %bb.q ], [ zeroinitializer, %bb.p ]
  br i1 %17, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hp = sext i32 %i.gd to i64
  %i.hq = mul i64 %i.bf, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.hq
  %i.hs = shl nuw nsw i32 %i.ge, 2
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ht
  %i.hv = load <4 x float>, ptr %i.hu, align 16, !tbaa !63
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.hw = phi fast <4 x float> [ %i.hv, %bb.s ], [ zeroinitializer, %bb.r ]
  br i1 %i.gu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hx = sext i32 %i.gd to i64
  %i.hy = mul i64 %i.bf, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.hy
  %i.ia = shl nsw i32 %i.gf, 2
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.ib
  %i.id = load <4 x float>, ptr %i.ic, align 16, !tbaa !63
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ie = phi fast <4 x float> [ %i.id, %bb.u ], [ zeroinitializer, %bb.t ]
  %i.if = insertelement <4 x float> poison, float %i.gv, i64 0
  %i.ig = shufflevector <4 x float> %i.if, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ih = fmul fast <4 x float> %i.hg, %i.ig
  %i.ii = insertelement <4 x float> poison, float %i.gw, i64 0
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ik = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ho, <4 x float> nofpclass(nan inf) %i.ij, <4 x float> nofpclass(nan inf) %i.ih)
  %i.il = insertelement <4 x float> poison, float %i.gx, i64 0
  %i.im = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> zeroinitializer
  %i.in = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hw, <4 x float> nofpclass(nan inf) %i.im, <4 x float> nofpclass(nan inf) %i.ik)
  %i.io = insertelement <4 x float> poison, float %i.gy, i64 0
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ie, <4 x float> nofpclass(nan inf) %i.ip, <4 x float> nofpclass(nan inf) %i.in) ; 2 uses
  %i.ir = load i8, ptr %8, align 1, !tbaa !61, !range !47, !noundef !48
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.it = load ptr, ptr %14, align 8, !tbaa !19
  %i.iu = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.iv = sext i32 %i.iu to i64
  %i.iw = mul nsw i64 %indvars.iv224, %i.iv
  %i.ix = load i64, ptr %i.w, align 8, !tbaa !52
  %i.iy = mul i64 %i.iw, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.iy
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !38
  %i.jc = insertelement <4 x float> poison, float %i.jb, i64 0
  %i.jd = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.je = fmul fast <4 x float> %i.jd, %i.iq
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.w, %bb.l, %bb.k, %bb.m
  %.1198 = phi nsz <4 x float> [ zeroinitializer, %bb.k ], [ zeroinitializer, %bb.m ], [ zeroinitializer, %bb.l ], [ %i.je, %bb.w ], [ %i.iq, %bb.v ]
  store <4 x float> %.1198, ptr %.3203, align 16, !tbaa !63
  %i.jf = getelementptr inbounds nuw i8, ptr %.3203, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jg = load i32, ptr %11, align 4, !tbaa !58   ; 2 uses
  %i.jh = sext i32 %i.jg to i64
  %i.ji = icmp slt i64 %indvars.iv.next, %i.jh
  br i1 %i.ji, label %bb.k, label %._crit_edge.loopexit, !llvm.loop !153

._crit_edge218:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge218, %bb.a
  ret void

bb.y:                                             ; preds = %bb.d
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  %i.jk = extractvalue { ptr, i32 } %i.jj, 0
  call void @__clang_call_terminate(ptr %i.jk) #22
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #12

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn27DeformableConv2D_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !58     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !58
  %i.h = load i32, ptr %0, align 4, !tbaa !58     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !58
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !58
  %i.k = load i32, ptr %i.a, align 4, !tbaa !58   ; 2 uses
  %.not207 = icmp sgt i32 %i.k, %i.j
  br i1 %.not207, label %._crit_edge209, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 216 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 212 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 52
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 232
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 244
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 228
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 236
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.at = load i32, ptr %i.q, align 8, !tbaa !43  ; 3 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge209

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.av = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.aw = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.by, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.ax = phi i32 [ %i.at, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.bz, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.ay = phi i32 [ %i.at, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.ca, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv220 = phi i64 [ %i.av, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next221, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !19, !noalias !168
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !168
  %i.bb = mul i64 %i.ba, %indvars.iv220
  %i.bc = load i64, ptr %i.n, align 8, !tbaa !52, !noalias !168 ; 2 uses
  %i.bd = mul i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bd ; 4 uses
  %i.bf = icmp sgt i32 %i.ay, 0
  br i1 %i.bf, label %.preheader193.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader193.lr.ph:                              ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.bg = load i32, ptr %i.l, align 4, !tbaa !51, !noalias !168
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul i64 %i.bc, %i.bh                    ; 4 uses
  %i.bj = load i32, ptr %i.r, align 4, !tbaa !42  ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.preheader193.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader193.preheader:                          ; preds = %.preheader193.lr.ph
  %i.bl = load ptr, ptr %4, align 8, !tbaa !19
  %i.bm = load i32, ptr %5, align 4, !tbaa !58
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %indvars.iv220, %i.bn
  %i.bp = load i32, ptr %i.o, align 4, !tbaa !51
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul nsw i64 %i.bo, %i.bq
  %i.bs = load i64, ptr %i.p, align 8, !tbaa !52
  %i.bt = mul i64 %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bt
  br label %.preheader193

.preheader193:                                    ; preds = %.preheader193.preheader, %._crit_edge
end_hunk_2
