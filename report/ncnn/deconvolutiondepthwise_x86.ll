Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolutiondepthwise_x86?download=true
inline.NumInlined: 74
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4ncnn26DeconvolutionDepthWise_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.as
  %i.au = icmp sgt i32 %i.ag, 0
  br i1 %i.au, label %.preheader217.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader217.lr.ph:                              ; preds = %_ZN4ncnn3MatD2Ev.exit68
  %i.av = load i32, ptr %i.o, align 4, !tbaa !80, !noalias !132
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.ar, %i.aw
  %i.ay = load i32, ptr %8, align 4, !tbaa !72    ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader217.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader217.preheader:                          ; preds = %.preheader217.lr.ph
  %i.ba = load ptr, ptr %3, align 8, !tbaa !18, !noalias !135
  %i.bb = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !135
  %i.bc = mul i64 %i.bb, %indvars.iv240
  %i.bd = load i64, ptr %i.m, align 8, !tbaa !70, !noalias !135
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be
  %.idx = shl nsw i64 %indvars.iv240, 4
  br label %.preheader217

.preheader217:                                    ; preds = %.preheader217.preheader, %._crit_edge229
  %i.bg = phi i32 [ %i.bl, %._crit_edge229 ], [ %i.af, %.preheader217.preheader ]
  %i.bh = phi i32 [ %i.bm, %._crit_edge229 ], [ %i.ay, %.preheader217.preheader ] ; 2 uses
  %.056232 = phi i32 [ %.neg214, %._crit_edge229 ], [ 0, %.preheader217.preheader ]
  %.057231 = phi ptr [ %.1.lcssa, %._crit_edge229 ], [ %i.bf, %.preheader217.preheader ] ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  %.neg214 = add nuw nsw i32 %.056232, 1          ; 3 uses
  br i1 %i.bi, label %.lr.ph228, label %._crit_edge229

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge229, %.preheader217.lr.ph, %_ZN4ncnn3MatD2Ev.exit68
  %i.bj = phi i32 [ %i.af, %_ZN4ncnn3MatD2Ev.exit68 ], [ %i.af, %.preheader217.lr.ph ], [ %i.bl, %._crit_edge229 ]
  %i.bk = phi i32 [ %i.ag, %_ZN4ncnn3MatD2Ev.exit68 ], [ %i.ag, %.preheader217.lr.ph ], [ %i.bl, %._crit_edge229 ]
  %indvars.iv.next241 = add nsw i64 %indvars.iv240, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next241 to i32
  %exitcond243.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond243.not, label %._crit_edge235, label %_ZN4ncnn3MatD2Ev.exit68, !llvm.loop !138

._crit_edge229.loopexit:                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.pre = load i32, ptr %7, align 4, !tbaa !72
  br label %._crit_edge229

._crit_edge229:                                   ; preds = %.preheader217, %._crit_edge229.loopexit
  %i.bl = phi i32 [ %.pre, %._crit_edge229.loopexit ], [ %i.bg, %.preheader217 ] ; 4 uses
  %i.bm = phi i32 [ %i.js, %._crit_edge229.loopexit ], [ %i.bh, %.preheader217 ]
  %.1.lcssa = phi ptr [ %i.jq, %._crit_edge229.loopexit ], [ %.057231, %.preheader217 ]
  %i.bn = icmp slt i32 %.neg214, %i.bl
  br i1 %i.bn, label %.preheader217, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !140

.lr.ph228:                                        ; preds = %.preheader217, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.055227 = phi i32 [ %i.jr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ 0, %.preheader217 ] ; 2 uses
  %.1226 = phi ptr [ %i.jq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.057231, %.preheader217 ] ; 2 uses
  %i.bo = load i32, ptr %i.r, align 4, !tbaa !84
  %.not63 = icmp eq i32 %i.bo, 0
  br i1 %.not63, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph228
  %i.bp = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %.idx
  %i.br = load <4 x float>, ptr %i.bq, align 1, !tbaa !112
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph228
  %.0210 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph228 ], [ %i.br, %bb.c ] ; 2 uses
  %i.bs = load i32, ptr %i.t, align 8, !tbaa !44  ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph222, label %._crit_edge

.lr.ph222:                                        ; preds = %bb.d
  %i.bu = load i32, ptr %i.u, align 8, !tbaa !97
  %i.bv = load i32, ptr %9, align 4, !tbaa !72
  %invariant.op224 = sub i32 %.neg214, %i.bv
  %.neg216 = add nuw nsw i32 %.055227, 1
  br label %bb.h

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %.1211.lcssa = phi <4 x float> [ %.0210, %bb.d ], [ %.4, %.loopexit ] ; 10 uses
  %i.bw = load i32, ptr %i.z, align 8, !tbaa !108
  switch i32 %i.bw, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.e
    i32 2, label %.noexc76
    i32 3, label %bb.f
    i32 4, label %.noexc77
    i32 5, label %.noexc78
    i32 6, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.bx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1211.lcssa, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc76:                                         ; preds = %._crit_edge
  %i.by = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.bz = load float, ptr %i.by, align 4, !tbaa !53
  %i.ca = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1211.lcssa)
  %i.cb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1211.lcssa)
  %i.cc = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ce = fmul fast <4 x float> %i.cd, %i.cb
  %i.cf = fadd fast <4 x float> %i.ce, %i.ca
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %._crit_edge
  %i.cg = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !53
  %i.ci = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !53
  %i.cm = insertelement <4 x float> poison, float %i.cl, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1211.lcssa, <4 x float> nofpclass(nan inf) %i.cj)
  %i.cp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.co, <4 x float> nofpclass(nan inf) %i.cn)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc77:                                         ; preds = %._crit_edge
  %i.cq = fneg fast <4 x float> %.1211.lcssa
  %i.cr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cq, <4 x float> splat (float f0x42B0C0A5))
  %i.cs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cr, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ct = fmul fast <4 x float> %i.cs, splat (float f0x3FB8AA3B)
  %i.cu = fadd fast <4 x float> %i.ct, splat (float 5.000000e-01) ; 2 uses
  %i.cv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cu)
  %i.cw = sitofp fast <4 x i32> %i.cv to <4 x float> ; 2 uses
  %i.cx = fcmp fast olt <4 x float> %i.cu, %i.cw
  %i.cy = select <4 x i1> %i.cx, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cz = fsub fast <4 x float> %i.cw, %i.cy      ; 2 uses
  %i.da = fmul fast <4 x float> %i.cz, splat (float f0x3F317218)
  %i.db = fsub fast <4 x float> %i.cs, %i.da      ; 8 uses
  %i.dc = fmul fast <4 x float> %i.db, %i.db
  %i.dd = fmul fast <4 x float> %i.db, splat (float f0x39506967)
  %i.de = fadd fast <4 x float> %i.dd, splat (float f0x3AB743CE)
  %i.df = fmul fast <4 x float> %i.de, %i.db
  %i.dg = fadd fast <4 x float> %i.df, splat (float f0x3C088908)
  %i.dh = fmul fast <4 x float> %i.dg, %i.db
  %i.di = fadd fast <4 x float> %i.dh, splat (float f0x3D2AA9C1)
  %i.dj = fmul fast <4 x float> %i.di, %i.db
  %i.dk = fadd fast <4 x float> %i.dj, splat (float f0x3E2AAAAA)
  %i.dl = fmul fast <4 x float> %i.dk, %i.db
  %i.dm = fadd fast <4 x float> %i.dl, splat (float 5.000000e-01)
  %i.dn = fmul fast <4 x float> %i.dc, %i.dm
  %i.do = fadd fast <4 x float> %i.db, %i.dn
  %i.dp = fadd fast <4 x float> %i.do, splat (float 1.000000e+00)
  %i.dq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cz)
  %i.dr = shl <4 x i32> %i.dq, splat (i32 23)
  %i.ds = add <4 x i32> %i.dr, splat (i32 1065353216)
  %i.dt = bitcast <4 x i32> %i.ds to <4 x float>
  %i.du = fmul fast <4 x float> %i.dp, %i.dt
  %i.dv = fadd fast <4 x float> %i.du, splat (float 1.000000e+00)
  %i.dw = fdiv fast <4 x float> splat (float 1.000000e+00), %i.dv
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc78:                                         ; preds = %._crit_edge
  %i.dx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.1211.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.dy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dx, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dz = fmul fast <4 x float> %i.dy, splat (float f0x3FB8AA3B)
  %i.ea = fadd fast <4 x float> %i.dz, splat (float 5.000000e-01) ; 2 uses
  %i.eb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ea)
  %i.ec = sitofp fast <4 x i32> %i.eb to <4 x float> ; 2 uses
  %i.ed = fcmp fast olt <4 x float> %i.ea, %i.ec
  %i.ee = select <4 x i1> %i.ed, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ef = fsub fast <4 x float> %i.ec, %i.ee      ; 2 uses
  %i.eg = fmul fast <4 x float> %i.ef, splat (float f0x3F317218)
  %i.eh = fsub fast <4 x float> %i.dy, %i.eg      ; 8 uses
  %i.ei = fmul fast <4 x float> %i.eh, %i.eh
  %i.ej = fmul fast <4 x float> %i.eh, splat (float f0x39506967)
  %i.ek = fadd fast <4 x float> %i.ej, splat (float f0x3AB743CE)
  %i.el = fmul fast <4 x float> %i.ek, %i.eh
  %i.em = fadd fast <4 x float> %i.el, splat (float f0x3C088908)
  %i.en = fmul fast <4 x float> %i.em, %i.eh
  %i.eo = fadd fast <4 x float> %i.en, splat (float f0x3D2AA9C1)
  %i.ep = fmul fast <4 x float> %i.eo, %i.eh
  %i.eq = fadd fast <4 x float> %i.ep, splat (float f0x3E2AAAAA)
  %i.er = fmul fast <4 x float> %i.eq, %i.eh
  %i.es = fadd fast <4 x float> %i.er, splat (float 5.000000e-01)
  %i.et = fmul fast <4 x float> %i.ei, %i.es
  %i.eu = fadd fast <4 x float> %i.eh, %i.et
  %i.ev = fadd fast <4 x float> %i.eu, splat (float 1.000000e+00)
  %i.ew = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ef)
  %i.ex = shl <4 x i32> %i.ew, splat (i32 23)
  %i.ey = add <4 x i32> %i.ex, splat (i32 1065353216)
  %i.ez = bitcast <4 x i32> %i.ey to <4 x float>
  %i.fa = fmul fast <4 x float> %i.ev, %i.ez
  %i.fb = fadd fast <4 x float> %i.fa, splat (float 1.000000e+00) ; 2 uses
  %i.fc = fcmp fast ole <4 x float> %i.fb, zeroinitializer
  %i.fd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fb, <4 x float> splat (float f0x00800000))
  %i.fe = bitcast <4 x float> %i.fd to <4 x i32>  ; 2 uses
  %i.ff = lshr <4 x i32> %i.fe, splat (i32 23)
  %i.fg = and <4 x i32> %i.fe, splat (i32 -2139095041)
  %i.fh = or disjoint <4 x i32> %i.fg, splat (i32 1056964608)
  %i.fi = bitcast <4 x i32> %i.fh to <4 x float>  ; 3 uses
  %i.fj = add nsw <4 x i32> %i.ff, splat (i32 -127)
  %i.fk = sitofp fast <4 x i32> %i.fj to <4 x float> ; 2 uses
  %i.fl = fadd fast <4 x float> %i.fk, splat (float 1.000000e+00)
  %i.fm = fcmp fast olt <4 x float> %i.fi, splat (float f0x3F3504F3) ; 2 uses
  %i.fn = select <4 x i1> %i.fm, <4 x float> %i.fi, <4 x float> zeroinitializer
  %i.fo = fadd fast <4 x float> %i.fi, splat (float -1.000000e+00)
  %i.fp = select fast <4 x i1> %i.fm, <4 x float> %i.fk, <4 x float> %i.fl
  %i.fq = fadd fast <4 x float> %i.fo, %i.fn      ; 12 uses
  %i.fr = fmul fast <4 x float> %i.fq, %i.fq
  %i.fs = fmul fast <4 x float> %i.fq, splat (float f0x3D9021BB)
  %i.ft = fadd fast <4 x float> %i.fs, splat (float f0xBDEBD1B8)
  %i.fu = fmul fast <4 x float> %i.ft, %i.fq
  %i.fv = fadd fast <4 x float> %i.fu, splat (float f0x3DEF251A)
  %i.fw = fmul fast <4 x float> %i.fv, %i.fq
  %i.fx = fadd fast <4 x float> %i.fw, splat (float f0xBDFE5D4F)
  %i.fy = fmul fast <4 x float> %i.fx, %i.fq
  %i.fz = fadd fast <4 x float> %i.fy, splat (float f0x3E11E9BF)
  %i.ga = fmul fast <4 x float> %i.fz, %i.fq
  %i.gb = fadd fast <4 x float> %i.ga, splat (float f0xBE2AAE50)
  %i.gc = fmul fast <4 x float> %i.gb, %i.fq
  %i.gd = fadd fast <4 x float> %i.gc, splat (float f0x3E4CCEAC)
  %i.ge = fmul fast <4 x float> %i.gd, %i.fq
  %i.gf = fadd fast <4 x float> %i.ge, splat (float f0xBE7FFFFC)
  %i.gg = fmul fast <4 x float> %i.gf, %i.fq
  %i.gh = fadd fast <4 x float> %i.gg, splat (float f0x3EAAAAAA)
  %i.gi = fmul fast <4 x float> %i.gh, %i.fq
  %i.gj = fmul fast <4 x float> %i.fp, splat (float f0x3F317218)
  %reass.add213 = fadd fast <4 x float> %i.gi, splat (float -5.000000e-01)
  %reass.mul = fmul fast <4 x float> %i.fr, %reass.add213
  %i.gk = fadd fast <4 x float> %i.gj, %i.fq
  %i.gl = fadd fast <4 x float> %i.gk, %reass.mul
  %.neg = fmul fast <4 x float> %i.gl, splat (float -2.000000e+00)
  %i.gm = select fast <4 x i1> %i.fc, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.gn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gm, <4 x float> splat (float f0x42B0C0A5))
  %i.go = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gp = fmul fast <4 x float> %i.go, splat (float f0x3FB8AA3B)
  %i.gq = fadd fast <4 x float> %i.gp, splat (float 5.000000e-01) ; 2 uses
  %i.gr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gq)
  %i.gs = sitofp fast <4 x i32> %i.gr to <4 x float> ; 2 uses
  %i.gt = fcmp fast olt <4 x float> %i.gq, %i.gs
  %i.gu = select <4 x i1> %i.gt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gv = fsub fast <4 x float> %i.gs, %i.gu      ; 2 uses
  %i.gw = fmul fast <4 x float> %i.gv, splat (float f0x3F317218)
  %i.gx = fsub fast <4 x float> %i.go, %i.gw      ; 8 uses
  %i.gy = fmul fast <4 x float> %i.gx, %i.gx
  %i.gz = fmul fast <4 x float> %i.gx, splat (float f0x39506967)
  %i.ha = fadd fast <4 x float> %i.gz, splat (float f0x3AB743CE)
  %i.hb = fmul fast <4 x float> %i.ha, %i.gx
  %i.hc = fadd fast <4 x float> %i.hb, splat (float f0x3C088908)
  %i.hd = fmul fast <4 x float> %i.hc, %i.gx
  %i.he = fadd fast <4 x float> %i.hd, splat (float f0x3D2AA9C1)
  %i.hf = fmul fast <4 x float> %i.he, %i.gx
  %i.hg = fadd fast <4 x float> %i.hf, splat (float f0x3E2AAAAA)
  %i.hh = fmul fast <4 x float> %i.hg, %i.gx
  %i.hi = fadd fast <4 x float> %i.hh, splat (float 5.000000e-01)
  %i.hj = fmul fast <4 x float> %i.gy, %i.hi
  %i.hk = fadd fast <4 x float> %i.gx, %i.hj
  %i.hl = fadd fast <4 x float> %i.hk, splat (float 1.000000e+00)
  %i.hm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gv)
  %i.hn = shl <4 x i32> %i.hm, splat (i32 23)
  %i.ho = add <4 x i32> %i.hn, splat (i32 1065353216)
  %i.hp = bitcast <4 x i32> %i.ho to <4 x float>
  %i.hq = fmul fast <4 x float> %i.hl, %i.hp
  %i.hr = fadd fast <4 x float> %i.hq, splat (float 1.000000e+00)
  %i.hs = fdiv fast <4 x float> splat (float 2.000000e+00), %i.hr
  %i.ht = fadd fast <4 x float> %i.hs, splat (float -1.000000e+00)
  %i.hu = fmul fast <4 x float> %i.ht, %.1211.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.hv = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !53
  %i.hx = insertelement <4 x float> poison, float %i.hw, i64 0
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !53
  %i.ib = insertelement <4 x float> poison, float %i.ia, i64 0
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> zeroinitializer
  %i.id = fmul fast <4 x float> %i.hy, %.1211.lcssa
  %i.ie = fadd fast <4 x float> %i.id, %i.ic
  %i.if = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ie, <4 x float> zeroinitializer)
  %i.ig = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.if, <4 x float> splat (float 1.000000e+00))
  %i.ih = fmul fast <4 x float> %i.ig, %.1211.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %.lr.ph222, %.loopexit
  %.054221 = phi i32 [ 0, %.lr.ph222 ], [ %i.jp, %.loopexit ] ; 3 uses
  %.1211220 = phi <4 x float> [ %.0210, %.lr.ph222 ], [ %.4, %.loopexit ] ; 5 uses
  %i.ii = mul nsw i32 %i.bu, %.054221
  %.reass225 = add i32 %i.ii, %invariant.op224    ; 3 uses
  %i.ij = icmp slt i32 %.reass225, 0
  br i1 %i.ij, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ik = load i32, ptr %i.v, align 8, !tbaa !99  ; 2 uses
  %i.il = srem i32 %.reass225, %i.ik
  %i.im = sdiv i32 %.reass225, %i.ik              ; 2 uses
  %.not64 = icmp eq i32 %i.il, 0
  br i1 %.not64, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.in = load i32, ptr %10, align 4, !tbaa !72
  %.not65 = icmp slt i32 %i.im, %i.in
  br i1 %.not65, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.j
  %i.io = load i32, ptr %i.w, align 4, !tbaa !43  ; 3 uses
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.iq = load i32, ptr %i.x, align 4, !tbaa !96
  %i.ir = load i32, ptr %11, align 4, !tbaa !72
  %invariant.op = sub i32 %.neg216, %i.ir
  %i.is = sext i32 %i.im to i64
  %i.it = mul i64 %i.ax, %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.it
  %i.iv = mul nuw nsw i32 %i.io, %.054221
  %wide.trip.count = zext nneg i32 %i.io to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.2218 = phi <4 x float> [ %.1211220, %.lr.ph ], [ %.3, %bb.o ] ; 4 uses
  %i.iw = trunc i64 %indvars.iv to i32
  %i.ix = mul i32 %i.iq, %i.iw
  %.reass = add i32 %i.ix, %invariant.op          ; 3 uses
  %i.iy = icmp slt i32 %.reass, 0
  br i1 %i.iy, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.iz = load i32, ptr %i.y, align 4, !tbaa !98  ; 2 uses
  %i.ja = srem i32 %.reass, %i.iz
  %i.jb = sdiv i32 %.reass, %i.iz                 ; 2 uses
  %.not66 = icmp eq i32 %i.ja, 0
  br i1 %.not66, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.jc = load i32, ptr %12, align 4, !tbaa !72
  %.not67 = icmp slt i32 %i.jb, %i.jc
  br i1 %.not67, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.jd = shl nsw i32 %i.jb, 2
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.je
  %i.jg = load <4 x float>, ptr %i.jf, align 1, !tbaa !112
  %i.jh = trunc i64 %indvars.iv to i32
  %i.ji = add i32 %i.iv, %i.jh
  %i.jj = shl nsw i32 %i.ji, 2
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.jk
  %i.jm = load <4 x float>, ptr %i.jl, align 1, !tbaa !112
  %i.jn = fmul fast <4 x float> %i.jm, %i.jg
  %i.jo = fadd fast <4 x float> %i.jn, %.2218
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.l
  %.3 = phi nsz <4 x float> [ %.2218, %bb.k ], [ %i.jo, %bb.n ], [ %.2218, %bb.m ], [ %.2218, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !141

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.j, %bb.h, %bb.i
  %.4 = phi nsz <4 x float> [ %.1211220, %bb.h ], [ %.1211220, %bb.i ], [ %.1211220, %bb.j ], [ %.1211220, %.preheader ], [ %.3, %bb.o ] ; 2 uses
  %i.jp = add nuw nsw i32 %.054221, 1             ; 2 uses
  %exitcond239.not = icmp eq i32 %i.jp, %i.bs
  br i1 %exitcond239.not, label %._crit_edge, label %bb.h, !llvm.loop !142

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.g, %.noexc78, %.noexc77, %bb.f, %.noexc76, %bb.e, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.ih, %bb.g ], [ %i.bx, %bb.e ], [ %i.cf, %.noexc76 ], [ %i.cp, %bb.f ], [ %i.dw, %.noexc77 ], [ %i.hu, %.noexc78 ], [ %.1211.lcssa, %._crit_edge ]
  store <4 x float> %.0.i, ptr %.1226, align 1, !tbaa !112
  %i.jq = getelementptr inbounds nuw i8, ptr %.1226, i64 16 ; 2 uses
  %i.jr = add nuw nsw i32 %.055227, 1             ; 2 uses
  %i.js = load i32, ptr %8, align 4, !tbaa !72    ; 2 uses
  %i.jt = icmp slt i32 %i.jr, %i.js
  br i1 %i.jt, label %.lr.ph228, label %._crit_edge229.loopexit, !llvm.loop !143

._crit_edge235:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit68.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge235, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare !callback !144 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #12

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn26DeconvolutionDepthWise_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !72     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !72
  %i.h = load i32, ptr %0, align 4, !tbaa !72     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !72
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
end_hunk_0
