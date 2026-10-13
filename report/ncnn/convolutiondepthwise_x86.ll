Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolutiondepthwise_x86?download=true
inline.NumInlined: 220
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK4ncnn24ConvolutionDepthWise_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
_ZN4ncnn3MatD2Ev.exit49.preheader:                ; preds = %_ZN4ncnn3MatD2Ev.exit49.lr.ph
  %i.z = sext i32 %i.k to i64
  %i.aa = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3MatD2Ev.exit49

_ZN4ncnn3MatD2Ev.exit49:                          ; preds = %_ZN4ncnn3MatD2Ev.exit49.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.ab = phi i32 [ %i.x, %_ZN4ncnn3MatD2Ev.exit49.preheader ], [ %i.bf, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.ac = phi i32 [ %i.x, %_ZN4ncnn3MatD2Ev.exit49.preheader ], [ %i.bg, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv210 = phi i64 [ %i.z, %_ZN4ncnn3MatD2Ev.exit49.preheader ], [ %indvars.iv.next211, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.ae = load i32, ptr %5, align 4, !tbaa !69
  %i.af = trunc nsw i64 %indvars.iv210 to i32
  %i.ag = shl i32 %i.af, 2
  %i.ah = mul i32 %i.ag, %i.ae
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ai ; 3 uses
  %i.ak = load ptr, ptr %6, align 8, !tbaa !21, !noalias !178
  %i.al = load i64, ptr %i.p, align 8, !tbaa !22, !noalias !178
  %i.am = mul i64 %i.al, %indvars.iv210
  %i.an = load i64, ptr %i.q, align 8, !tbaa !67, !noalias !178 ; 2 uses
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ao
  %i.aq = icmp sgt i32 %i.ac, 0
  br i1 %i.aq, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit49
  %i.ar = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !178
  %i.as = sext i32 %i.ar to i64
  %i.at = mul i64 %i.an, %i.as
  %i.au = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.aw = load ptr, ptr %3, align 8, !tbaa !21, !noalias !179
  %i.ax = load i64, ptr %i.l, align 8, !tbaa !22, !noalias !179
  %i.ay = mul i64 %i.ax, %indvars.iv210
  %i.az = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !179
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba
  %.idx = shl nsw i64 %indvars.iv210, 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge195
  %i.bc = phi i32 [ %i.bh, %._crit_edge195 ], [ %i.ab, %.preheader.preheader ]
  %i.bd = phi i32 [ %i.bi, %._crit_edge195 ], [ %i.au, %.preheader.preheader ] ; 2 uses
  %.045198 = phi i32 [ %i.bm, %._crit_edge195 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.046197 = phi ptr [ %i.bl, %._crit_edge195 ], [ %i.bb, %.preheader.preheader ] ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph194, label %._crit_edge195

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge195, %.preheader.lr.ph, %_ZN4ncnn3MatD2Ev.exit49
  %i.bf = phi i32 [ %i.ab, %_ZN4ncnn3MatD2Ev.exit49 ], [ %i.ab, %.preheader.lr.ph ], [ %i.bh, %._crit_edge195 ]
  %i.bg = phi i32 [ %i.ac, %_ZN4ncnn3MatD2Ev.exit49 ], [ %i.ac, %.preheader.lr.ph ], [ %i.bh, %._crit_edge195 ]
  %indvars.iv.next211 = add nsw i64 %indvars.iv210, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next211 to i32
  %exitcond213.not = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond213.not, label %._crit_edge201, label %_ZN4ncnn3MatD2Ev.exit49, !llvm.loop !174

._crit_edge195.loopexit:                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.pre = load i32, ptr %7, align 4, !tbaa !69
  br label %._crit_edge195

._crit_edge195:                                   ; preds = %._crit_edge195.loopexit, %.preheader
  %i.bh = phi i32 [ %i.bc, %.preheader ], [ %.pre, %._crit_edge195.loopexit ] ; 4 uses
  %i.bi = phi i32 [ %i.bd, %.preheader ], [ %i.jx, %._crit_edge195.loopexit ] ; 2 uses
  %i.bj = shl nsw i32 %i.bi, 2
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %.046197, i64 %i.bk
  %i.bm = add nuw nsw i32 %.045198, 1             ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %i.bh
  br i1 %i.bn, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !175

.lr.ph194:                                        ; preds = %.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ 0, %.preheader ] ; 3 uses
  %i.bo = load i32, ptr %i.r, align 8, !tbaa !77
  %.not48 = icmp eq i32 %i.bo, 0
  br i1 %.not48, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph194
  %i.bp = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %.idx
  %i.br = load <4 x float>, ptr %i.bq, align 1, !tbaa !87
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph194
  %.043 = phi nsz <4 x float> [ %i.br, %bb.c ], [ zeroinitializer, %.lr.ph194 ] ; 3 uses
  %i.bs = load i32, ptr %i.t, align 8, !tbaa !65
  %i.bt = mul nsw i32 %i.bs, %.045198
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %i.at, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bv
  %i.bx = load i32, ptr %i.u, align 4, !tbaa !64
  %i.by = trunc nuw nsw i64 %indvars.iv207 to i32
  %i.bz = shl i32 %i.by, 2
  %i.ca = mul i32 %i.bz, %i.bx
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.cb ; 3 uses
  %i.cd = load i32, ptr %5, align 4, !tbaa !69    ; 4 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.cf = load ptr, ptr %9, align 8, !tbaa !81    ; 3 uses
  %wide.trip.count = zext nneg i32 %i.cd to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cg = icmp eq i32 %i.cd, 1
  br i1 %i.cg, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.h

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.1191.epil.init = phi <4 x float> [ %.043, %.lr.ph ], [ %i.jv, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod233 = trunc i32 %i.cd to i1
  call void @llvm.assume(i1 %lcmp.mod233)
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.epil.init
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !69
  %i.cj = shl nsw i32 %i.ci, 2
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ck
  %i.cm = load <4 x float>, ptr %i.cl, align 1, !tbaa !87
  %.idx224.epil = shl nuw nsw i64 %indvars.iv.epil.init, 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx224.epil
  %i.co = load <4 x float>, ptr %i.cn, align 1, !tbaa !87
  %i.cp = fmul fast <4 x float> %i.co, %i.cm
  %i.cq = fadd fast <4 x float> %i.cp, %.1191.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.d
  %.1.lcssa = phi <4 x float> [ %.043, %bb.d ], [ %i.jv, %._crit_edge.loopexit.unr-lcssa ], [ %i.cq, %.epil.preheader ] ; 10 uses
  %i.cr = load i32, ptr %i.v, align 8, !tbaa !44
  switch i32 %i.cr, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.e
    i32 2, label %.noexc58
    i32 3, label %bb.f
    i32 4, label %.noexc59
    i32 5, label %.noexc60
    i32 6, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.cs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1.lcssa, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc58:                                         ; preds = %._crit_edge
  %i.ct = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !45
  %i.cv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1.lcssa)
  %i.cw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1.lcssa)
  %i.cx = insertelement <4 x float> poison, float %i.cu, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cz = fmul fast <4 x float> %i.cy, %i.cw
  %i.da = fadd fast <4 x float> %i.cz, %i.cv
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %._crit_edge
  %i.db = load ptr, ptr %i.w, align 8, !tbaa !21  ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !45
  %i.dd = insertelement <4 x float> poison, float %i.dc, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dg = load float, ptr %i.df, align 4, !tbaa !45
  %i.dh = insertelement <4 x float> poison, float %i.dg, i64 0
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1.lcssa, <4 x float> nofpclass(nan inf) %i.de)
  %i.dk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dj, <4 x float> nofpclass(nan inf) %i.di)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc59:                                         ; preds = %._crit_edge
  %i.dl = fneg fast <4 x float> %.1.lcssa
  %i.dm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dl, <4 x float> splat (float f0x42B0C0A5))
  %i.dn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dm, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.do = fmul fast <4 x float> %i.dn, splat (float f0x3FB8AA3B)
  %i.dp = fadd fast <4 x float> %i.do, splat (float 5.000000e-01) ; 2 uses
  %i.dq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dp)
  %i.dr = sitofp fast <4 x i32> %i.dq to <4 x float> ; 2 uses
  %i.ds = fcmp fast olt <4 x float> %i.dp, %i.dr
  %i.dt = select <4 x i1> %i.ds, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.du = fsub fast <4 x float> %i.dr, %i.dt      ; 2 uses
  %i.dv = fmul fast <4 x float> %i.du, splat (float f0x3F317218)
  %i.dw = fsub fast <4 x float> %i.dn, %i.dv      ; 8 uses
  %i.dx = fmul fast <4 x float> %i.dw, %i.dw
  %i.dy = fmul fast <4 x float> %i.dw, splat (float f0x39506967)
  %i.dz = fadd fast <4 x float> %i.dy, splat (float f0x3AB743CE)
  %i.ea = fmul fast <4 x float> %i.dz, %i.dw
  %i.eb = fadd fast <4 x float> %i.ea, splat (float f0x3C088908)
  %i.ec = fmul fast <4 x float> %i.eb, %i.dw
  %i.ed = fadd fast <4 x float> %i.ec, splat (float f0x3D2AA9C1)
  %i.ee = fmul fast <4 x float> %i.ed, %i.dw
  %i.ef = fadd fast <4 x float> %i.ee, splat (float f0x3E2AAAAA)
  %i.eg = fmul fast <4 x float> %i.ef, %i.dw
  %i.eh = fadd fast <4 x float> %i.eg, splat (float 5.000000e-01)
  %i.ei = fmul fast <4 x float> %i.dx, %i.eh
  %i.ej = fadd fast <4 x float> %i.dw, %i.ei
  %i.ek = fadd fast <4 x float> %i.ej, splat (float 1.000000e+00)
  %i.el = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.du)
  %i.em = shl <4 x i32> %i.el, splat (i32 23)
  %i.en = add <4 x i32> %i.em, splat (i32 1065353216)
  %i.eo = bitcast <4 x i32> %i.en to <4 x float>
  %i.ep = fmul fast <4 x float> %i.ek, %i.eo
  %i.eq = fadd fast <4 x float> %i.ep, splat (float 1.000000e+00)
  %i.er = fdiv fast <4 x float> splat (float 1.000000e+00), %i.eq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc60:                                         ; preds = %._crit_edge
  %i.es = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.1.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.et = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.es, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.eu = fmul fast <4 x float> %i.et, splat (float f0x3FB8AA3B)
  %i.ev = fadd fast <4 x float> %i.eu, splat (float 5.000000e-01) ; 2 uses
  %i.ew = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ev)
  %i.ex = sitofp fast <4 x i32> %i.ew to <4 x float> ; 2 uses
  %i.ey = fcmp fast olt <4 x float> %i.ev, %i.ex
  %i.ez = select <4 x i1> %i.ey, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fa = fsub fast <4 x float> %i.ex, %i.ez      ; 2 uses
  %i.fb = fmul fast <4 x float> %i.fa, splat (float f0x3F317218)
  %i.fc = fsub fast <4 x float> %i.et, %i.fb      ; 8 uses
  %i.fd = fmul fast <4 x float> %i.fc, %i.fc
  %i.fe = fmul fast <4 x float> %i.fc, splat (float f0x39506967)
  %i.ff = fadd fast <4 x float> %i.fe, splat (float f0x3AB743CE)
  %i.fg = fmul fast <4 x float> %i.ff, %i.fc
  %i.fh = fadd fast <4 x float> %i.fg, splat (float f0x3C088908)
  %i.fi = fmul fast <4 x float> %i.fh, %i.fc
  %i.fj = fadd fast <4 x float> %i.fi, splat (float f0x3D2AA9C1)
  %i.fk = fmul fast <4 x float> %i.fj, %i.fc
  %i.fl = fadd fast <4 x float> %i.fk, splat (float f0x3E2AAAAA)
  %i.fm = fmul fast <4 x float> %i.fl, %i.fc
  %i.fn = fadd fast <4 x float> %i.fm, splat (float 5.000000e-01)
  %i.fo = fmul fast <4 x float> %i.fd, %i.fn
  %i.fp = fadd fast <4 x float> %i.fc, %i.fo
  %i.fq = fadd fast <4 x float> %i.fp, splat (float 1.000000e+00)
  %i.fr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fa)
  %i.fs = shl <4 x i32> %i.fr, splat (i32 23)
  %i.ft = add <4 x i32> %i.fs, splat (i32 1065353216)
  %i.fu = bitcast <4 x i32> %i.ft to <4 x float>
  %i.fv = fmul fast <4 x float> %i.fq, %i.fu
  %i.fw = fadd fast <4 x float> %i.fv, splat (float 1.000000e+00) ; 2 uses
  %i.fx = fcmp fast ole <4 x float> %i.fw, zeroinitializer
  %i.fy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fw, <4 x float> splat (float f0x00800000))
  %i.fz = bitcast <4 x float> %i.fy to <4 x i32>  ; 2 uses
  %i.ga = lshr <4 x i32> %i.fz, splat (i32 23)
  %i.gb = and <4 x i32> %i.fz, splat (i32 -2139095041)
  %i.gc = or disjoint <4 x i32> %i.gb, splat (i32 1056964608)
  %i.gd = bitcast <4 x i32> %i.gc to <4 x float>  ; 3 uses
  %i.ge = add nsw <4 x i32> %i.ga, splat (i32 -127)
  %i.gf = sitofp fast <4 x i32> %i.ge to <4 x float> ; 2 uses
  %i.gg = fadd fast <4 x float> %i.gf, splat (float 1.000000e+00)
  %i.gh = fcmp fast olt <4 x float> %i.gd, splat (float f0x3F3504F3) ; 2 uses
  %i.gi = select <4 x i1> %i.gh, <4 x float> %i.gd, <4 x float> zeroinitializer
  %i.gj = fadd fast <4 x float> %i.gd, splat (float -1.000000e+00)
  %i.gk = select fast <4 x i1> %i.gh, <4 x float> %i.gf, <4 x float> %i.gg
  %i.gl = fadd fast <4 x float> %i.gj, %i.gi      ; 12 uses
  %i.gm = fmul fast <4 x float> %i.gl, %i.gl
  %i.gn = fmul fast <4 x float> %i.gl, splat (float f0x3D9021BB)
  %i.go = fadd fast <4 x float> %i.gn, splat (float f0xBDEBD1B8)
  %i.gp = fmul fast <4 x float> %i.go, %i.gl
  %i.gq = fadd fast <4 x float> %i.gp, splat (float f0x3DEF251A)
  %i.gr = fmul fast <4 x float> %i.gq, %i.gl
  %i.gs = fadd fast <4 x float> %i.gr, splat (float f0xBDFE5D4F)
  %i.gt = fmul fast <4 x float> %i.gs, %i.gl
  %i.gu = fadd fast <4 x float> %i.gt, splat (float f0x3E11E9BF)
  %i.gv = fmul fast <4 x float> %i.gu, %i.gl
  %i.gw = fadd fast <4 x float> %i.gv, splat (float f0xBE2AAE50)
  %i.gx = fmul fast <4 x float> %i.gw, %i.gl
  %i.gy = fadd fast <4 x float> %i.gx, splat (float f0x3E4CCEAC)
  %i.gz = fmul fast <4 x float> %i.gy, %i.gl
  %i.ha = fadd fast <4 x float> %i.gz, splat (float f0xBE7FFFFC)
  %i.hb = fmul fast <4 x float> %i.ha, %i.gl
  %i.hc = fadd fast <4 x float> %i.hb, splat (float f0x3EAAAAAA)
  %i.hd = fmul fast <4 x float> %i.hc, %i.gl
  %reass.mul = fmul fast <4 x float> %i.gk, splat (float f0x3F317218)
  %reass.add189 = fadd fast <4 x float> %i.hd, splat (float -5.000000e-01)
  %reass.mul190 = fmul fast <4 x float> %i.gm, %reass.add189
  %i.he = fadd fast <4 x float> %reass.mul, %i.gl
  %i.hf = fadd fast <4 x float> %i.he, %reass.mul190
  %.neg = fmul fast <4 x float> %i.hf, splat (float -2.000000e+00)
  %i.hg = select fast <4 x i1> %i.fx, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.hh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hg, <4 x float> splat (float f0x42B0C0A5))
  %i.hi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hj = fmul fast <4 x float> %i.hi, splat (float f0x3FB8AA3B)
  %i.hk = fadd fast <4 x float> %i.hj, splat (float 5.000000e-01) ; 2 uses
  %i.hl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hk)
  %i.hm = sitofp fast <4 x i32> %i.hl to <4 x float> ; 2 uses
  %i.hn = fcmp fast olt <4 x float> %i.hk, %i.hm
  %i.ho = select <4 x i1> %i.hn, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hp = fsub fast <4 x float> %i.hm, %i.ho      ; 2 uses
  %i.hq = fmul fast <4 x float> %i.hp, splat (float f0x3F317218)
  %i.hr = fsub fast <4 x float> %i.hi, %i.hq      ; 8 uses
  %i.hs = fmul fast <4 x float> %i.hr, %i.hr
  %i.ht = fmul fast <4 x float> %i.hr, splat (float f0x39506967)
  %i.hu = fadd fast <4 x float> %i.ht, splat (float f0x3AB743CE)
  %i.hv = fmul fast <4 x float> %i.hu, %i.hr
  %i.hw = fadd fast <4 x float> %i.hv, splat (float f0x3C088908)
  %i.hx = fmul fast <4 x float> %i.hw, %i.hr
  %i.hy = fadd fast <4 x float> %i.hx, splat (float f0x3D2AA9C1)
  %i.hz = fmul fast <4 x float> %i.hy, %i.hr
  %i.ia = fadd fast <4 x float> %i.hz, splat (float f0x3E2AAAAA)
  %i.ib = fmul fast <4 x float> %i.ia, %i.hr
  %i.ic = fadd fast <4 x float> %i.ib, splat (float 5.000000e-01)
  %i.id = fmul fast <4 x float> %i.hs, %i.ic
  %i.ie = fadd fast <4 x float> %i.hr, %i.id
  %i.if = fadd fast <4 x float> %i.ie, splat (float 1.000000e+00)
  %i.ig = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hp)
  %i.ih = shl <4 x i32> %i.ig, splat (i32 23)
  %i.ii = add <4 x i32> %i.ih, splat (i32 1065353216)
  %i.ij = bitcast <4 x i32> %i.ii to <4 x float>
  %i.ik = fmul fast <4 x float> %i.if, %i.ij
  %i.il = fadd fast <4 x float> %i.ik, splat (float 1.000000e+00)
  %i.im = fdiv fast <4 x float> splat (float 2.000000e+00), %i.il
  %i.in = fadd fast <4 x float> %i.im, splat (float -1.000000e+00)
  %i.io = fmul fast <4 x float> %i.in, %.1.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.ip = load ptr, ptr %i.w, align 8, !tbaa !21  ; 2 uses
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !45
  %i.ir = insertelement <4 x float> poison, float %i.iq, i64 0
  %i.is = shufflevector <4 x float> %i.ir, <4 x float> poison, <4 x i32> zeroinitializer
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.iu = load float, ptr %i.it, align 4, !tbaa !45
  %i.iv = insertelement <4 x float> poison, float %i.iu, i64 0
  %i.iw = shufflevector <4 x float> %i.iv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ix = fmul fast <4 x float> %i.is, %.1.lcssa
  %i.iy = fadd fast <4 x float> %i.ix, %i.iw
  %i.iz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.iy, <4 x float> zeroinitializer)
  %i.ja = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.iz, <4 x float> splat (float 1.000000e+00))
  %i.jb = fmul fast <4 x float> %i.ja, %.1.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %.1191 = phi <4 x float> [ %.043, %.lr.ph.new ], [ %i.jv, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !69
  %i.je = shl nsw i32 %i.jd, 2
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.jf
  %i.jh = load <4 x float>, ptr %i.jg, align 1, !tbaa !87
  %.idx224 = shl nuw nsw i64 %indvars.iv, 4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx224
  %i.jj = load <4 x float>, ptr %i.ji, align 1, !tbaa !87
  %i.jk = fmul fast <4 x float> %i.jj, %i.jh
  %i.jl = fadd fast <4 x float> %i.jk, %.1191
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !69
  %i.jo = shl nsw i32 %i.jn, 2
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.jp
  %i.jr = load <4 x float>, ptr %i.jq, align 1, !tbaa !87
  %.idx224.1 = shl nuw nsw i64 %indvars.iv.next, 4
  %i.js = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx224.1
  %i.jt = load <4 x float>, ptr %i.js, align 1, !tbaa !87
  %i.ju = fmul fast <4 x float> %i.jt, %i.jr
  %i.jv = fadd fast <4 x float> %i.ju, %i.jl      ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !176

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.g, %.noexc60, %.noexc59, %bb.f, %.noexc58, %bb.e, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.jb, %bb.g ], [ %i.cs, %bb.e ], [ %i.da, %.noexc58 ], [ %i.dk, %bb.f ], [ %i.er, %.noexc59 ], [ %i.io, %.noexc60 ], [ %.1.lcssa, %._crit_edge ]
  %.idx225 = shl nuw nsw i64 %indvars.iv207, 4
  %i.jw = getelementptr inbounds nuw i8, ptr %.046197, i64 %.idx225
  store <4 x float> %.0.i, ptr %i.jw, align 1, !tbaa !87
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 2 uses
  %i.jx = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.jy = sext i32 %i.jx to i64
  %i.jz = icmp slt i64 %indvars.iv.next208, %i.jy
  br i1 %i.jz, label %.lr.ph194, label %._crit_edge195.loopexit, !llvm.loop !177

._crit_edge201:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit49.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge201, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare !callback !100 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4ncnnL15convdw3x3s1_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !75
  store i32 %i.i, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !75
  store i32 %i.k, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !76
  store i32 %i.m, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i32, ptr %i.n, align 8, !tbaa !70
  store i32 %i.o, ptr %i.d, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.p = load ptr, ptr %2, align 8, !tbaa !21
  store ptr %i.p, ptr %i.e, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.q = load ptr, ptr %3, align 8, !tbaa !21
  store ptr %i.q, ptr %i.f, align 8, !tbaa !98
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !82
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.s)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL15convdw3x3s1_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %i.f, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4ncnnL15convdw3x3s2_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !75   ; 2 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !75   ; 2 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !76
  store i32 %i.n, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i32, ptr %i.o, align 8, !tbaa !70
  store i32 %i.p, ptr %i.d, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.q = sub i32 %i.j, %i.l
  %i.r = shl i32 %i.q, 1
  store i32 %i.r, ptr %i.e, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.s = load ptr, ptr %2, align 8, !tbaa !21
  store ptr %i.s, ptr %i.f, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.t = load ptr, ptr %3, align 8, !tbaa !21
  store ptr %i.t, ptr %i.g, align 8, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !82
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.h, i32 %i.v)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL15convdw3x3s2_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21convdw3x3s1_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !69     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.h = load i32, ptr %0, align 4, !tbaa !69     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !69
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !69
  %i.k = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %.not678 = icmp sgt i32 %i.k, %i.j
  br i1 %.not678, label %._crit_edge680, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = sext i32 %i.k to i64
  %i.t = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.s, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !21, !noalias !189
  %i.v = load i64, ptr %i.l, align 8, !tbaa !22, !noalias !189
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !189
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y
  %i.aa = load ptr, ptr %4, align 8, !tbaa !98    ; 2 uses
  %.not182 = icmp eq ptr %i.aa, null
  br i1 %.not182, label %_ZNK4ncnn3Mat7channelEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %.idx = shl nsw i64 %indvars.iv, 4
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.idx
  %i.ac = load <4 x float>, ptr %i.ab, align 1, !tbaa !87
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.ad = phi fast <4 x float> [ %i.ac, %bb.c ], [ zeroinitializer, %_ZN4ncnn3Mat7channelEi.exit ] ; 15 uses
  %i.ae = load ptr, ptr %5, align 8, !tbaa !21
  %i.af = load i32, ptr %i.n, align 4, !tbaa !75
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !67
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 9 uses
  %i.al = load <4 x float>, ptr %i.ak, align 16, !tbaa !87 ; 15 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = load <4 x float>, ptr %i.am, align 16, !tbaa !87 ; 15 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ap = load <4 x float>, ptr %i.ao, align 16, !tbaa !87 ; 15 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ar = load <4 x float>, ptr %i.aq, align 16, !tbaa !87 ; 15 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.at = load <4 x float>, ptr %i.as, align 16, !tbaa !87 ; 15 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.av = load <4 x float>, ptr %i.au, align 16, !tbaa !87 ; 15 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.ax = load <4 x float>, ptr %i.aw, align 16, !tbaa !87 ; 15 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %i.az = load <4 x float>, ptr %i.ay, align 16, !tbaa !87 ; 15 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.bb = load <4 x float>, ptr %i.ba, align 16, !tbaa !87 ; 15 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !69
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.preheader631.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader631.preheader:                          ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.be = load ptr, ptr %6, align 8, !tbaa !21, !noalias !190
  %i.bf = load i64, ptr %i.q, align 8, !tbaa !22, !noalias !190
  %i.bg = mul i64 %i.bf, %indvars.iv
  %i.bh = load i64, ptr %i.r, align 8, !tbaa !67, !noalias !190 ; 3 uses
  %i.bi = mul i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi ; 3 uses
  %i.bk = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !190
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = shl nsw i64 %i.bl, 1
  %i.bn = mul i64 %i.bm, %i.bh
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bn
  %i.bp = mul i64 %i.bh, %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bp
  %.pre = load i32, ptr %8, align 4, !tbaa !69
  br label %.preheader631

.preheader631:                                    ; preds = %.preheader631.preheader, %._crit_edge
  %i.br = phi i32 [ %i.sl, %._crit_edge ], [ %.pre, %.preheader631.preheader ] ; 2 uses
  %.0160677 = phi i32 [ %i.sp, %._crit_edge ], [ 0, %.preheader631.preheader ]
  %.0161676 = phi ptr [ %i.so, %._crit_edge ], [ %i.bo, %.preheader631.preheader ] ; 2 uses
  %.0165675 = phi ptr [ %i.sn, %._crit_edge ], [ %i.bq, %.preheader631.preheader ] ; 2 uses
  %.0170674 = phi ptr [ %i.sm, %._crit_edge ], [ %i.bj, %.preheader631.preheader ] ; 2 uses
  %.0175673 = phi ptr [ %.4179.lcssa, %._crit_edge ], [ %i.z, %.preheader631.preheader ] ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 7
  br i1 %i.bs, label %.lr.ph, label %.preheader630

.preheader630:                                    ; preds = %.lr.ph, %.preheader631
  %i.bt = phi i32 [ %i.br, %.preheader631 ], [ %i.jz, %.lr.ph ] ; 2 uses
  %.1176.lcssa = phi ptr [ %.0175673, %.preheader631 ], [ %i.jw, %.lr.ph ] ; 2 uses
  %.1171.lcssa = phi ptr [ %.0170674, %.preheader631 ], [ %i.hx, %.lr.ph ] ; 2 uses
  %.1166.lcssa = phi ptr [ %.0165675, %.preheader631 ], [ %i.hz, %.lr.ph ] ; 2 uses
  %.1162.lcssa = phi ptr [ %.0161676, %.preheader631 ], [ %i.ib, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.preheader631 ], [ %i.jx, %.lr.ph ] ; 3 uses
  %i.bu = or disjoint i32 %.0.lcssa, 3
  %i.bv = icmp slt i32 %i.bu, %i.bt
  br i1 %i.bv, label %.lr.ph646, label %.preheader629

.lr.ph:                                           ; preds = %.preheader631, %.lr.ph
  %.0636 = phi i32 [ %i.jx, %.lr.ph ], [ 0, %.preheader631 ]
  %.1162635 = phi ptr [ %i.ib, %.lr.ph ], [ %.0161676, %.preheader631 ] ; 10 uses
  %.1166634 = phi ptr [ %i.hz, %.lr.ph ], [ %.0165675, %.preheader631 ] ; 10 uses
  %.1171633 = phi ptr [ %i.hx, %.lr.ph ], [ %.0170674, %.preheader631 ] ; 10 uses
  %.1176632 = phi ptr [ %i.jw, %.lr.ph ], [ %.0175673, %.preheader631 ] ; 9 uses
  %i.bw = load <4 x float>, ptr %.1171633, align 16, !tbaa !87
  %i.bx = getelementptr inbounds nuw i8, ptr %.1171633, i64 16
  %i.by = load <4 x float>, ptr %i.bx, align 16, !tbaa !87 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.1171633, i64 32
  %i.ca = load <4 x float>, ptr %i.bz, align 16, !tbaa !87 ; 3 uses
  %i.cb = load <4 x float>, ptr %.1166634, align 16, !tbaa !87
  %i.cc = getelementptr inbounds nuw i8, ptr %.1166634, i64 16
  %i.cd = load <4 x float>, ptr %i.cc, align 16, !tbaa !87 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.1166634, i64 32
  %i.cf = load <4 x float>, ptr %i.ce, align 16, !tbaa !87 ; 3 uses
  %i.cg = load <4 x float>, ptr %.1162635, align 16, !tbaa !87
  %i.ch = getelementptr inbounds nuw i8, ptr %.1162635, i64 16
  %i.ci = load <4 x float>, ptr %i.ch, align 16, !tbaa !87 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.1162635, i64 32
  %i.ck = load <4 x float>, ptr %i.cj, align 16, !tbaa !87 ; 3 uses
  %i.cl = fmul fast <4 x float> %i.bw, %i.al
  %i.cm = fadd fast <4 x float> %i.ad, %i.cl
  %i.cn = fmul fast <4 x float> %i.by, %i.an
  %i.co = fadd fast <4 x float> %i.cn, %i.cm
  %i.cp = fmul fast <4 x float> %i.ca, %i.ap
  %i.cq = fadd fast <4 x float> %i.co, %i.cp
  %i.cr = fmul fast <4 x float> %i.cb, %i.ar
  %i.cs = fadd fast <4 x float> %i.cq, %i.cr
  %i.ct = fmul fast <4 x float> %i.cd, %i.at
  %i.cu = fadd fast <4 x float> %i.cs, %i.ct
  %i.cv = fmul fast <4 x float> %i.cf, %i.av
  %i.cw = fadd fast <4 x float> %i.cu, %i.cv
  %i.cx = fmul fast <4 x float> %i.cg, %i.ax
  %i.cy = fadd fast <4 x float> %i.cw, %i.cx
  %i.cz = fmul fast <4 x float> %i.ci, %i.az
  %i.da = fadd fast <4 x float> %i.cy, %i.cz
  %i.db = fmul fast <4 x float> %i.ck, %i.bb
  %i.dc = fadd fast <4 x float> %i.da, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %.1171633, i64 48
  %i.de = load <4 x float>, ptr %i.dd, align 16, !tbaa !87 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1166634, i64 48
  %i.dg = load <4 x float>, ptr %i.df, align 16, !tbaa !87 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1162635, i64 48
  %i.di = load <4 x float>, ptr %i.dh, align 16, !tbaa !87 ; 3 uses
  store <4 x float> %i.dc, ptr %.1176632, align 16, !tbaa !87
  %i.dj = fmul fast <4 x float> %i.by, %i.al
  %i.dk = fadd fast <4 x float> %i.ad, %i.dj
  %i.dl = fmul fast <4 x float> %i.ca, %i.an
  %i.dm = fadd fast <4 x float> %i.dl, %i.dk
  %i.dn = fmul fast <4 x float> %i.de, %i.ap
  %i.do = fmul fast <4 x float> %i.cd, %i.ar
  %i.dp = fmul fast <4 x float> %i.cf, %i.at
  %i.dq = fmul fast <4 x float> %i.dg, %i.av
  %i.dr = fmul fast <4 x float> %i.ci, %i.ax
  %i.ds = fmul fast <4 x float> %i.ck, %i.az
  %i.dt = fmul fast <4 x float> %i.di, %i.bb
  %i.du = fadd fast <4 x float> %i.dm, %i.do
  %i.dv = fadd fast <4 x float> %i.du, %i.dp
  %i.dw = fadd fast <4 x float> %i.dv, %i.dr
  %i.dx = fadd fast <4 x float> %i.dw, %i.ds
  %i.dy = fadd fast <4 x float> %i.dx, %i.dn
  %i.dz = fadd fast <4 x float> %i.dy, %i.dq
  %i.ea = fadd fast <4 x float> %i.dz, %i.dt
  %i.eb = getelementptr inbounds nuw i8, ptr %.1171633, i64 64
  %i.ec = load <4 x float>, ptr %i.eb, align 16, !tbaa !87 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.1166634, i64 64
  %i.ee = load <4 x float>, ptr %i.ed, align 16, !tbaa !87 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.1162635, i64 64
  %i.eg = load <4 x float>, ptr %i.ef, align 16, !tbaa !87 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.1176632, i64 16
  store <4 x float> %i.ea, ptr %i.eh, align 16, !tbaa !87
  %i.ei = fmul fast <4 x float> %i.ca, %i.al
  %i.ej = fadd fast <4 x float> %i.ad, %i.ei
  %i.ek = fmul fast <4 x float> %i.de, %i.an
  %i.el = fmul fast <4 x float> %i.ec, %i.ap
  %i.em = fmul fast <4 x float> %i.cf, %i.ar
  %i.en = fmul fast <4 x float> %i.dg, %i.at
  %i.eo = fmul fast <4 x float> %i.ee, %i.av
  %i.ep = fmul fast <4 x float> %i.ck, %i.ax
  %i.eq = fmul fast <4 x float> %i.di, %i.az
  %i.er = fmul fast <4 x float> %i.eg, %i.bb
  %i.es = fadd fast <4 x float> %i.em, %i.ej
  %i.et = fadd fast <4 x float> %i.es, %i.ep
  %i.eu = fadd fast <4 x float> %i.et, %i.ek
  %i.ev = fadd fast <4 x float> %i.eu, %i.en
  %i.ew = fadd fast <4 x float> %i.ev, %i.eq
  %i.ex = fadd fast <4 x float> %i.ew, %i.el
  %i.ey = fadd fast <4 x float> %i.ex, %i.eo
  %i.ez = fadd fast <4 x float> %i.ey, %i.er
  %i.fa = getelementptr inbounds nuw i8, ptr %.1171633, i64 80
  %i.fb = load <4 x float>, ptr %i.fa, align 16, !tbaa !87 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.1166634, i64 80
  %i.fd = load <4 x float>, ptr %i.fc, align 16, !tbaa !87 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.1162635, i64 80
  %i.ff = load <4 x float>, ptr %i.fe, align 16, !tbaa !87 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.1176632, i64 32
  store <4 x float> %i.ez, ptr %i.fg, align 16, !tbaa !87
  %i.fh = fmul fast <4 x float> %i.de, %i.al
  %i.fi = fadd fast <4 x float> %i.ad, %i.fh
  %i.fj = fmul fast <4 x float> %i.ec, %i.an
  %i.fk = fmul fast <4 x float> %i.fb, %i.ap
  %i.fl = fmul fast <4 x float> %i.dg, %i.ar
  %i.fm = fmul fast <4 x float> %i.ee, %i.at
  %i.fn = fmul fast <4 x float> %i.fd, %i.av
  %i.fo = fmul fast <4 x float> %i.di, %i.ax
  %i.fp = fmul fast <4 x float> %i.eg, %i.az
  %i.fq = fmul fast <4 x float> %i.ff, %i.bb
  %i.fr = fadd fast <4 x float> %i.fl, %i.fi
  %i.fs = fadd fast <4 x float> %i.fr, %i.fo
  %i.ft = fadd fast <4 x float> %i.fs, %i.fj
  %i.fu = fadd fast <4 x float> %i.ft, %i.fm
  %i.fv = fadd fast <4 x float> %i.fu, %i.fp
  %i.fw = fadd fast <4 x float> %i.fv, %i.fk
  %i.fx = fadd fast <4 x float> %i.fw, %i.fn
  %i.fy = fadd fast <4 x float> %i.fx, %i.fq
  %i.fz = getelementptr inbounds nuw i8, ptr %.1171633, i64 96
  %i.ga = load <4 x float>, ptr %i.fz, align 16, !tbaa !87 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.1166634, i64 96
  %i.gc = load <4 x float>, ptr %i.gb, align 16, !tbaa !87 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.1162635, i64 96
  %i.ge = load <4 x float>, ptr %i.gd, align 16, !tbaa !87 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.1176632, i64 48
  store <4 x float> %i.fy, ptr %i.gf, align 16, !tbaa !87
  %i.gg = fmul fast <4 x float> %i.ec, %i.al
  %i.gh = fadd fast <4 x float> %i.ad, %i.gg
  %i.gi = fmul fast <4 x float> %i.fb, %i.an
  %i.gj = fmul fast <4 x float> %i.ga, %i.ap
  %i.gk = fmul fast <4 x float> %i.ee, %i.ar
  %i.gl = fmul fast <4 x float> %i.fd, %i.at
  %i.gm = fmul fast <4 x float> %i.gc, %i.av
  %i.gn = fmul fast <4 x float> %i.eg, %i.ax
  %i.go = fmul fast <4 x float> %i.ff, %i.az
  %i.gp = fmul fast <4 x float> %i.ge, %i.bb
  %i.gq = fadd fast <4 x float> %i.gk, %i.gh
  %i.gr = fadd fast <4 x float> %i.gq, %i.gn
  %i.gs = fadd fast <4 x float> %i.gr, %i.gi
  %i.gt = fadd fast <4 x float> %i.gs, %i.gl
  %i.gu = fadd fast <4 x float> %i.gt, %i.go
  %i.gv = fadd fast <4 x float> %i.gu, %i.gj
  %i.gw = fadd fast <4 x float> %i.gv, %i.gm
  %i.gx = fadd fast <4 x float> %i.gw, %i.gp
  %i.gy = getelementptr inbounds nuw i8, ptr %.1171633, i64 112
  %i.gz = load <4 x float>, ptr %i.gy, align 16, !tbaa !87 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.1166634, i64 112
  %i.hb = load <4 x float>, ptr %i.ha, align 16, !tbaa !87 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.1162635, i64 112
  %i.hd = load <4 x float>, ptr %i.hc, align 16, !tbaa !87 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.1176632, i64 64
  store <4 x float> %i.gx, ptr %i.he, align 16, !tbaa !87
  %i.hf = fmul fast <4 x float> %i.fb, %i.al
  %i.hg = fadd fast <4 x float> %i.ad, %i.hf
  %i.hh = fmul fast <4 x float> %i.ga, %i.an
  %i.hi = fmul fast <4 x float> %i.gz, %i.ap
  %i.hj = fmul fast <4 x float> %i.fd, %i.ar
  %i.hk = fmul fast <4 x float> %i.gc, %i.at
  %i.hl = fmul fast <4 x float> %i.hb, %i.av
  %i.hm = fmul fast <4 x float> %i.ff, %i.ax
  %i.hn = fmul fast <4 x float> %i.ge, %i.az
  %i.ho = fmul fast <4 x float> %i.hd, %i.bb
  %i.hp = fadd fast <4 x float> %i.hj, %i.hg
  %i.hq = fadd fast <4 x float> %i.hp, %i.hm
  %i.hr = fadd fast <4 x float> %i.hq, %i.hh
  %i.hs = fadd fast <4 x float> %i.hr, %i.hk
  %i.ht = fadd fast <4 x float> %i.hs, %i.hn
  %i.hu = fadd fast <4 x float> %i.ht, %i.hi
  %i.hv = fadd fast <4 x float> %i.hu, %i.hl
  %i.hw = fadd fast <4 x float> %i.hv, %i.ho
  %i.hx = getelementptr inbounds nuw i8, ptr %.1171633, i64 128 ; 3 uses
  %i.hy = load <4 x float>, ptr %i.hx, align 16, !tbaa !87 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.1166634, i64 128 ; 3 uses
  %i.ia = load <4 x float>, ptr %i.hz, align 16, !tbaa !87 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.1162635, i64 128 ; 3 uses
  %i.ic = load <4 x float>, ptr %i.ib, align 16, !tbaa !87 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.1176632, i64 80
  store <4 x float> %i.hw, ptr %i.id, align 16, !tbaa !87
  %i.ie = fmul fast <4 x float> %i.ga, %i.al
  %i.if = fadd fast <4 x float> %i.ad, %i.ie
  %i.ig = fmul fast <4 x float> %i.gz, %i.an
  %i.ih = fmul fast <4 x float> %i.hy, %i.ap
  %i.ii = fmul fast <4 x float> %i.gc, %i.ar
  %i.ij = fmul fast <4 x float> %i.hb, %i.at
  %i.ik = fmul fast <4 x float> %i.ia, %i.av
  %i.il = fmul fast <4 x float> %i.ge, %i.ax
  %i.im = fmul fast <4 x float> %i.hd, %i.az
  %i.in = fmul fast <4 x float> %i.ic, %i.bb
  %i.io = fadd fast <4 x float> %i.ii, %i.if
  %i.ip = fadd fast <4 x float> %i.io, %i.il
  %i.iq = fadd fast <4 x float> %i.ip, %i.ig
  %i.ir = fadd fast <4 x float> %i.iq, %i.ij
  %i.is = fadd fast <4 x float> %i.ir, %i.im
  %i.it = fadd fast <4 x float> %i.is, %i.ih
  %i.iu = fadd fast <4 x float> %i.it, %i.ik
  %i.iv = fadd fast <4 x float> %i.iu, %i.in
  %i.iw = getelementptr inbounds nuw i8, ptr %.1171633, i64 144
  %i.ix = load <4 x float>, ptr %i.iw, align 16, !tbaa !87
  %i.iy = getelementptr inbounds nuw i8, ptr %.1166634, i64 144
  %i.iz = load <4 x float>, ptr %i.iy, align 16, !tbaa !87
  %i.ja = getelementptr inbounds nuw i8, ptr %.1162635, i64 144
  %i.jb = load <4 x float>, ptr %i.ja, align 16, !tbaa !87
  %i.jc = getelementptr inbounds nuw i8, ptr %.1176632, i64 96
  store <4 x float> %i.iv, ptr %i.jc, align 16, !tbaa !87
  %i.jd = fmul fast <4 x float> %i.gz, %i.al
  %i.je = fadd fast <4 x float> %i.ad, %i.jd
  %i.jf = fmul fast <4 x float> %i.hy, %i.an
  %i.jg = fmul fast <4 x float> %i.ix, %i.ap
  %i.jh = fmul fast <4 x float> %i.hb, %i.ar
  %i.ji = fmul fast <4 x float> %i.ia, %i.at
  %i.jj = fmul fast <4 x float> %i.iz, %i.av
  %i.jk = fmul fast <4 x float> %i.hd, %i.ax
  %i.jl = fmul fast <4 x float> %i.ic, %i.az
  %i.jm = fmul fast <4 x float> %i.jb, %i.bb
  %i.jn = fadd fast <4 x float> %i.jh, %i.je
  %i.jo = fadd fast <4 x float> %i.jn, %i.jk
  %i.jp = fadd fast <4 x float> %i.jo, %i.jf
  %i.jq = fadd fast <4 x float> %i.jp, %i.ji
  %i.jr = fadd fast <4 x float> %i.jq, %i.jl
  %i.js = fadd fast <4 x float> %i.jr, %i.jg
  %i.jt = fadd fast <4 x float> %i.js, %i.jj
  %i.ju = fadd fast <4 x float> %i.jt, %i.jm
  %i.jv = getelementptr inbounds nuw i8, ptr %.1176632, i64 112
  store <4 x float> %i.ju, ptr %i.jv, align 16, !tbaa !87
  %i.jw = getelementptr inbounds nuw i8, ptr %.1176632, i64 128 ; 2 uses
  %i.jx = add nuw nsw i32 %.0636, 8               ; 3 uses
  %i.jy = or disjoint i32 %i.jx, 7
  %i.jz = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.ka = icmp slt i32 %i.jy, %i.jz
  br i1 %i.ka, label %.lr.ph, label %.preheader630, !llvm.loop !184

.preheader629:                                    ; preds = %.lr.ph646, %.preheader630
  %i.kb = phi i32 [ %i.bt, %.preheader630 ], [ %i.ol, %.lr.ph646 ] ; 2 uses
  %.2177.lcssa = phi ptr [ %.1176.lcssa, %.preheader630 ], [ %i.oi, %.lr.ph646 ] ; 2 uses
  %.2172.lcssa = phi ptr [ %.1171.lcssa, %.preheader630 ], [ %i.mj, %.lr.ph646 ] ; 2 uses
  %.2167.lcssa = phi ptr [ %.1166.lcssa, %.preheader630 ], [ %i.ml, %.lr.ph646 ] ; 2 uses
  %.2163.lcssa = phi ptr [ %.1162.lcssa, %.preheader630 ], [ %i.mn, %.lr.ph646 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader630 ], [ %i.oj, %.lr.ph646 ] ; 3 uses
  %i.kc = or disjoint i32 %.1.lcssa, 1
  %i.kd = icmp slt i32 %i.kc, %i.kb
  br i1 %i.kd, label %.lr.ph657, label %.preheader

.lr.ph646:                                        ; preds = %.preheader630, %.lr.ph646
  %.1645 = phi i32 [ %i.oj, %.lr.ph646 ], [ %.0.lcssa, %.preheader630 ]
  %.2163644 = phi ptr [ %i.mn, %.lr.ph646 ], [ %.1162.lcssa, %.preheader630 ] ; 6 uses
  %.2167643 = phi ptr [ %i.ml, %.lr.ph646 ], [ %.1166.lcssa, %.preheader630 ] ; 6 uses
  %.2172642 = phi ptr [ %i.mj, %.lr.ph646 ], [ %.1171.lcssa, %.preheader630 ] ; 6 uses
  %.2177641 = phi ptr [ %i.oi, %.lr.ph646 ], [ %.1176.lcssa, %.preheader630 ] ; 5 uses
  %i.ke = load <4 x float>, ptr %.2172642, align 16, !tbaa !87
  %i.kf = getelementptr inbounds nuw i8, ptr %.2172642, i64 16
  %i.kg = load <4 x float>, ptr %i.kf, align 16, !tbaa !87 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.2172642, i64 32
  %i.ki = load <4 x float>, ptr %i.kh, align 16, !tbaa !87 ; 3 uses
  %i.kj = load <4 x float>, ptr %.2167643, align 16, !tbaa !87
  %i.kk = getelementptr inbounds nuw i8, ptr %.2167643, i64 16
  %i.kl = load <4 x float>, ptr %i.kk, align 16, !tbaa !87 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.2167643, i64 32
  %i.kn = load <4 x float>, ptr %i.km, align 16, !tbaa !87 ; 3 uses
  %i.ko = load <4 x float>, ptr %.2163644, align 16, !tbaa !87
  %i.kp = getelementptr inbounds nuw i8, ptr %.2163644, i64 16
  %i.kq = load <4 x float>, ptr %i.kp, align 16, !tbaa !87 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.2163644, i64 32
  %i.ks = load <4 x float>, ptr %i.kr, align 16, !tbaa !87 ; 3 uses
  %i.kt = fmul fast <4 x float> %i.ke, %i.al
  %i.ku = fadd fast <4 x float> %i.ad, %i.kt
  %i.kv = fmul fast <4 x float> %i.kg, %i.an
  %i.kw = fadd fast <4 x float> %i.kv, %i.ku
  %i.kx = fmul fast <4 x float> %i.ki, %i.ap
  %i.ky = fadd fast <4 x float> %i.kw, %i.kx
  %i.kz = fmul fast <4 x float> %i.kj, %i.ar
  %i.la = fadd fast <4 x float> %i.ky, %i.kz
  %i.lb = fmul fast <4 x float> %i.kl, %i.at
  %i.lc = fadd fast <4 x float> %i.la, %i.lb
  %i.ld = fmul fast <4 x float> %i.kn, %i.av
  %i.le = fadd fast <4 x float> %i.lc, %i.ld
  %i.lf = fmul fast <4 x float> %i.ko, %i.ax
  %i.lg = fadd fast <4 x float> %i.le, %i.lf
  %i.lh = fmul fast <4 x float> %i.kq, %i.az
  %i.li = fadd fast <4 x float> %i.lg, %i.lh
  %i.lj = fmul fast <4 x float> %i.ks, %i.bb
  %i.lk = fadd fast <4 x float> %i.li, %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %.2172642, i64 48
  %i.lm = load <4 x float>, ptr %i.ll, align 16, !tbaa !87 ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.2167643, i64 48
  %i.lo = load <4 x float>, ptr %i.ln, align 16, !tbaa !87 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.2163644, i64 48
  %i.lq = load <4 x float>, ptr %i.lp, align 16, !tbaa !87 ; 3 uses
  store <4 x float> %i.lk, ptr %.2177641, align 16, !tbaa !87
  %i.lr = fmul fast <4 x float> %i.kg, %i.al
  %i.ls = fadd fast <4 x float> %i.ad, %i.lr
  %i.lt = fmul fast <4 x float> %i.ki, %i.an
  %i.lu = fadd fast <4 x float> %i.lt, %i.ls
  %i.lv = fmul fast <4 x float> %i.lm, %i.ap
  %i.lw = fmul fast <4 x float> %i.kl, %i.ar
  %i.lx = fmul fast <4 x float> %i.kn, %i.at
  %i.ly = fmul fast <4 x float> %i.lo, %i.av
  %i.lz = fmul fast <4 x float> %i.kq, %i.ax
  %i.ma = fmul fast <4 x float> %i.ks, %i.az
  %i.mb = fmul fast <4 x float> %i.lq, %i.bb
  %i.mc = fadd fast <4 x float> %i.lu, %i.lw
  %i.md = fadd fast <4 x float> %i.mc, %i.lx
  %i.me = fadd fast <4 x float> %i.md, %i.lz
  %i.mf = fadd fast <4 x float> %i.me, %i.ma
  %i.mg = fadd fast <4 x float> %i.mf, %i.lv
  %i.mh = fadd fast <4 x float> %i.mg, %i.ly
  %i.mi = fadd fast <4 x float> %i.mh, %i.mb
  %i.mj = getelementptr inbounds nuw i8, ptr %.2172642, i64 64 ; 3 uses
  %i.mk = load <4 x float>, ptr %i.mj, align 16, !tbaa !87 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.2167643, i64 64 ; 3 uses
  %i.mm = load <4 x float>, ptr %i.ml, align 16, !tbaa !87 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.2163644, i64 64 ; 3 uses
  %i.mo = load <4 x float>, ptr %i.mn, align 16, !tbaa !87 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.2177641, i64 16
  store <4 x float> %i.mi, ptr %i.mp, align 16, !tbaa !87
  %i.mq = fmul fast <4 x float> %i.ki, %i.al
  %i.mr = fadd fast <4 x float> %i.ad, %i.mq
  %i.ms = fmul fast <4 x float> %i.lm, %i.an
  %i.mt = fmul fast <4 x float> %i.mk, %i.ap
  %i.mu = fmul fast <4 x float> %i.kn, %i.ar
  %i.mv = fmul fast <4 x float> %i.lo, %i.at
  %i.mw = fmul fast <4 x float> %i.mm, %i.av
  %i.mx = fmul fast <4 x float> %i.ks, %i.ax
  %i.my = fmul fast <4 x float> %i.lq, %i.az
  %i.mz = fmul fast <4 x float> %i.mo, %i.bb
  %i.na = fadd fast <4 x float> %i.mu, %i.mr
  %i.nb = fadd fast <4 x float> %i.na, %i.mx
  %i.nc = fadd fast <4 x float> %i.nb, %i.ms
  %i.nd = fadd fast <4 x float> %i.nc, %i.mv
  %i.ne = fadd fast <4 x float> %i.nd, %i.my
  %i.nf = fadd fast <4 x float> %i.ne, %i.mt
  %i.ng = fadd fast <4 x float> %i.nf, %i.mw
  %i.nh = fadd fast <4 x float> %i.ng, %i.mz
  %i.ni = getelementptr inbounds nuw i8, ptr %.2172642, i64 80
  %i.nj = load <4 x float>, ptr %i.ni, align 16, !tbaa !87
  %i.nk = getelementptr inbounds nuw i8, ptr %.2167643, i64 80
  %i.nl = load <4 x float>, ptr %i.nk, align 16, !tbaa !87
  %i.nm = getelementptr inbounds nuw i8, ptr %.2163644, i64 80
  %i.nn = load <4 x float>, ptr %i.nm, align 16, !tbaa !87
  %i.no = getelementptr inbounds nuw i8, ptr %.2177641, i64 32
  store <4 x float> %i.nh, ptr %i.no, align 16, !tbaa !87
  %i.np = fmul fast <4 x float> %i.lm, %i.al
  %i.nq = fadd fast <4 x float> %i.ad, %i.np
  %i.nr = fmul fast <4 x float> %i.mk, %i.an
  %i.ns = fmul fast <4 x float> %i.nj, %i.ap
  %i.nt = fmul fast <4 x float> %i.lo, %i.ar
  %i.nu = fmul fast <4 x float> %i.mm, %i.at
  %i.nv = fmul fast <4 x float> %i.nl, %i.av
  %i.nw = fmul fast <4 x float> %i.lq, %i.ax
  %i.nx = fmul fast <4 x float> %i.mo, %i.az
  %i.ny = fmul fast <4 x float> %i.nn, %i.bb
  %i.nz = fadd fast <4 x float> %i.nt, %i.nq
  %i.oa = fadd fast <4 x float> %i.nz, %i.nw
  %i.ob = fadd fast <4 x float> %i.oa, %i.nr
  %i.oc = fadd fast <4 x float> %i.ob, %i.nu
  %i.od = fadd fast <4 x float> %i.oc, %i.nx
  %i.oe = fadd fast <4 x float> %i.od, %i.ns
  %i.of = fadd fast <4 x float> %i.oe, %i.nv
  %i.og = fadd fast <4 x float> %i.of, %i.ny
  %i.oh = getelementptr inbounds nuw i8, ptr %.2177641, i64 48
  store <4 x float> %i.og, ptr %i.oh, align 16, !tbaa !87
  %i.oi = getelementptr inbounds nuw i8, ptr %.2177641, i64 64 ; 2 uses
  %i.oj = add nuw nsw i32 %.1645, 4               ; 3 uses
  %i.ok = or disjoint i32 %i.oj, 3
  %i.ol = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.om = icmp slt i32 %i.ok, %i.ol
  br i1 %i.om, label %.lr.ph646, label %.preheader629, !llvm.loop !185

.preheader:                                       ; preds = %.lr.ph657, %.preheader629
  %i.on = phi i32 [ %i.kb, %.preheader629 ], [ %i.qy, %.lr.ph657 ] ; 2 uses
  %.3178.lcssa = phi ptr [ %.2177.lcssa, %.preheader629 ], [ %i.qv, %.lr.ph657 ] ; 2 uses
  %.3173.lcssa = phi ptr [ %.2172.lcssa, %.preheader629 ], [ %i.os, %.lr.ph657 ] ; 2 uses
  %.3168.lcssa = phi ptr [ %.2167.lcssa, %.preheader629 ], [ %i.ox, %.lr.ph657 ] ; 2 uses
  %.3164.lcssa = phi ptr [ %.2163.lcssa, %.preheader629 ], [ %i.pc, %.lr.ph657 ] ; 2 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader629 ], [ %i.qw, %.lr.ph657 ] ; 2 uses
  %i.oo = icmp slt i32 %.2.lcssa, %i.on
  br i1 %i.oo, label %.lr.ph668, label %._crit_edge

.lr.ph657:                                        ; preds = %.preheader629, %.lr.ph657
  %.2656 = phi i32 [ %i.qw, %.lr.ph657 ], [ %.1.lcssa, %.preheader629 ]
  %.3164655 = phi ptr [ %i.pc, %.lr.ph657 ], [ %.2163.lcssa, %.preheader629 ] ; 4 uses
  %.3168654 = phi ptr [ %i.ox, %.lr.ph657 ], [ %.2167.lcssa, %.preheader629 ] ; 4 uses
  %.3173653 = phi ptr [ %i.os, %.lr.ph657 ], [ %.2172.lcssa, %.preheader629 ] ; 4 uses
  %.3178652 = phi ptr [ %i.qv, %.lr.ph657 ], [ %.2177.lcssa, %.preheader629 ] ; 3 uses
  %i.op = load <4 x float>, ptr %.3173653, align 16, !tbaa !87
  %i.oq = getelementptr inbounds nuw i8, ptr %.3173653, i64 16
  %i.or = load <4 x float>, ptr %i.oq, align 16, !tbaa !87 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.3173653, i64 32 ; 3 uses
  %i.ot = load <4 x float>, ptr %i.os, align 16, !tbaa !87 ; 2 uses
  %i.ou = load <4 x float>, ptr %.3168654, align 16, !tbaa !87
  %i.ov = getelementptr inbounds nuw i8, ptr %.3168654, i64 16
  %i.ow = load <4 x float>, ptr %i.ov, align 16, !tbaa !87 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.3168654, i64 32 ; 3 uses
  %i.oy = load <4 x float>, ptr %i.ox, align 16, !tbaa !87 ; 2 uses
  %i.oz = load <4 x float>, ptr %.3164655, align 16, !tbaa !87
  %i.pa = getelementptr inbounds nuw i8, ptr %.3164655, i64 16
  %i.pb = load <4 x float>, ptr %i.pa, align 16, !tbaa !87 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.3164655, i64 32 ; 3 uses
  %i.pd = load <4 x float>, ptr %i.pc, align 16, !tbaa !87 ; 2 uses
  %i.pe = fmul fast <4 x float> %i.op, %i.al
  %i.pf = fadd fast <4 x float> %i.ad, %i.pe
  %i.pg = fmul fast <4 x float> %i.or, %i.an
  %i.ph = fadd fast <4 x float> %i.pg, %i.pf
  %i.pi = fmul fast <4 x float> %i.ot, %i.ap
  %i.pj = fadd fast <4 x float> %i.ph, %i.pi
  %i.pk = fmul fast <4 x float> %i.ou, %i.ar
  %i.pl = fadd fast <4 x float> %i.pj, %i.pk
  %i.pm = fmul fast <4 x float> %i.ow, %i.at
  %i.pn = fadd fast <4 x float> %i.pl, %i.pm
  %i.po = fmul fast <4 x float> %i.oy, %i.av
  %i.pp = fadd fast <4 x float> %i.pn, %i.po
  %i.pq = fmul fast <4 x float> %i.oz, %i.ax
  %i.pr = fadd fast <4 x float> %i.pp, %i.pq
  %i.ps = fmul fast <4 x float> %i.pb, %i.az
  %i.pt = fadd fast <4 x float> %i.pr, %i.ps
  %i.pu = fmul fast <4 x float> %i.pd, %i.bb
  %i.pv = fadd fast <4 x float> %i.pt, %i.pu
  %i.pw = getelementptr inbounds nuw i8, ptr %.3173653, i64 48
  %i.px = load <4 x float>, ptr %i.pw, align 16, !tbaa !87
  %i.py = getelementptr inbounds nuw i8, ptr %.3168654, i64 48
  %i.pz = load <4 x float>, ptr %i.py, align 16, !tbaa !87
  %i.qa = getelementptr inbounds nuw i8, ptr %.3164655, i64 48
  %i.qb = load <4 x float>, ptr %i.qa, align 16, !tbaa !87
  store <4 x float> %i.pv, ptr %.3178652, align 16, !tbaa !87
  %i.qc = fmul fast <4 x float> %i.or, %i.al
  %i.qd = fadd fast <4 x float> %i.ad, %i.qc
  %i.qe = fmul fast <4 x float> %i.ot, %i.an
  %i.qf = fadd fast <4 x float> %i.qe, %i.qd
  %i.qg = fmul fast <4 x float> %i.px, %i.ap
  %i.qh = fmul fast <4 x float> %i.ow, %i.ar
  %i.qi = fmul fast <4 x float> %i.oy, %i.at
  %i.qj = fmul fast <4 x float> %i.pz, %i.av
  %i.qk = fmul fast <4 x float> %i.pb, %i.ax
  %i.ql = fmul fast <4 x float> %i.pd, %i.az
  %i.qm = fmul fast <4 x float> %i.qb, %i.bb
  %i.qn = fadd fast <4 x float> %i.qf, %i.qh
  %i.qo = fadd fast <4 x float> %i.qn, %i.qi
  %i.qp = fadd fast <4 x float> %i.qo, %i.qk
  %i.qq = fadd fast <4 x float> %i.qp, %i.ql
  %i.qr = fadd fast <4 x float> %i.qq, %i.qg
  %i.qs = fadd fast <4 x float> %i.qr, %i.qj
  %i.qt = fadd fast <4 x float> %i.qs, %i.qm
  %i.qu = getelementptr inbounds nuw i8, ptr %.3178652, i64 16
  store <4 x float> %i.qt, ptr %i.qu, align 16, !tbaa !87
  %i.qv = getelementptr inbounds nuw i8, ptr %.3178652, i64 32 ; 2 uses
  %i.qw = add nuw nsw i32 %.2656, 2               ; 3 uses
  %i.qx = or disjoint i32 %i.qw, 1
  %i.qy = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.qz = icmp slt i32 %i.qx, %i.qy
  br i1 %i.qz, label %.lr.ph657, label %.preheader, !llvm.loop !186

.lr.ph668:                                        ; preds = %.preheader, %.lr.ph668
  %.3667 = phi i32 [ %i.si, %.lr.ph668 ], [ %.2.lcssa, %.preheader ]
  %.4666 = phi ptr [ %i.rl, %.lr.ph668 ], [ %.3164.lcssa, %.preheader ] ; 3 uses
  %.4169665 = phi ptr [ %i.rg, %.lr.ph668 ], [ %.3168.lcssa, %.preheader ] ; 3 uses
  %.4174664 = phi ptr [ %i.rb, %.lr.ph668 ], [ %.3173.lcssa, %.preheader ] ; 3 uses
  %.4179663 = phi ptr [ %i.sh, %.lr.ph668 ], [ %.3178.lcssa, %.preheader ] ; 2 uses
  %i.ra = load <4 x float>, ptr %.4174664, align 16, !tbaa !87
  %i.rb = getelementptr inbounds nuw i8, ptr %.4174664, i64 16 ; 3 uses
  %i.rc = load <4 x float>, ptr %i.rb, align 16, !tbaa !87
  %i.rd = getelementptr inbounds nuw i8, ptr %.4174664, i64 32
  %i.re = load <4 x float>, ptr %i.rd, align 16, !tbaa !87
  %i.rf = load <4 x float>, ptr %.4169665, align 16, !tbaa !87
  %i.rg = getelementptr inbounds nuw i8, ptr %.4169665, i64 16 ; 3 uses
  %i.rh = load <4 x float>, ptr %i.rg, align 16, !tbaa !87
  %i.ri = getelementptr inbounds nuw i8, ptr %.4169665, i64 32
  %i.rj = load <4 x float>, ptr %i.ri, align 16, !tbaa !87
  %i.rk = load <4 x float>, ptr %.4666, align 16, !tbaa !87
  %i.rl = getelementptr inbounds nuw i8, ptr %.4666, i64 16 ; 3 uses
  %i.rm = load <4 x float>, ptr %i.rl, align 16, !tbaa !87
  %i.rn = getelementptr inbounds nuw i8, ptr %.4666, i64 32
  %i.ro = load <4 x float>, ptr %i.rn, align 16, !tbaa !87
  %i.rp = fmul fast <4 x float> %i.ra, %i.al
  %i.rq = fadd fast <4 x float> %i.ad, %i.rp
  %i.rr = fmul fast <4 x float> %i.rc, %i.an
  %i.rs = fadd fast <4 x float> %i.rr, %i.rq
  %i.rt = fmul fast <4 x float> %i.re, %i.ap
  %i.ru = fadd fast <4 x float> %i.rs, %i.rt
  %i.rv = fmul fast <4 x float> %i.rf, %i.ar
  %i.rw = fadd fast <4 x float> %i.ru, %i.rv
  %i.rx = fmul fast <4 x float> %i.rh, %i.at
  %i.ry = fadd fast <4 x float> %i.rw, %i.rx
  %i.rz = fmul fast <4 x float> %i.rj, %i.av
  %i.sa = fadd fast <4 x float> %i.ry, %i.rz
  %i.sb = fmul fast <4 x float> %i.rk, %i.ax
  %i.sc = fadd fast <4 x float> %i.sa, %i.sb
  %i.sd = fmul fast <4 x float> %i.rm, %i.az
  %i.se = fadd fast <4 x float> %i.sc, %i.sd
  %i.sf = fmul fast <4 x float> %i.ro, %i.bb
  %i.sg = fadd fast <4 x float> %i.se, %i.sf
  store <4 x float> %i.sg, ptr %.4179663, align 16, !tbaa !87
  %i.sh = getelementptr inbounds nuw i8, ptr %.4179663, i64 16 ; 2 uses
  %i.si = add nuw nsw i32 %.3667, 1               ; 2 uses
  %i.sj = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.sk = icmp slt i32 %i.si, %i.sj
  br i1 %i.sk, label %.lr.ph668, label %._crit_edge, !llvm.loop !187

._crit_edge:                                      ; preds = %.lr.ph668, %.preheader
  %i.sl = phi i32 [ %i.on, %.preheader ], [ %i.sj, %.lr.ph668 ]
  %.4179.lcssa = phi ptr [ %.3178.lcssa, %.preheader ], [ %i.sh, %.lr.ph668 ]
  %.4174.lcssa = phi ptr [ %.3173.lcssa, %.preheader ], [ %i.rb, %.lr.ph668 ]
  %.4169.lcssa = phi ptr [ %.3168.lcssa, %.preheader ], [ %i.rg, %.lr.ph668 ]
  %.4.lcssa = phi ptr [ %.3164.lcssa, %.preheader ], [ %i.rl, %.lr.ph668 ]
  %i.sm = getelementptr inbounds nuw i8, ptr %.4174.lcssa, i64 32
  %i.sn = getelementptr inbounds nuw i8, ptr %.4169.lcssa, i64 32
  %i.so = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 32
  %i.sp = add nuw nsw i32 %.0160677, 1            ; 2 uses
  %i.sq = load i32, ptr %7, align 4, !tbaa !69
  %i.sr = icmp slt i32 %i.sp, %i.sq
  br i1 %i.sr, label %.preheader631, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !188

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %_ZNK4ncnn3Mat7channelEi.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge680, label %_ZN4ncnn3Mat7channelEi.exit

._crit_edge680:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge680, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21convdw3x3s2_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !69     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.h = load i32, ptr %0, align 4, !tbaa !69     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !69
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !69
  %i.k = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %.not400 = icmp sgt i32 %i.k, %i.j
  br i1 %.not400, label %._crit_edge402, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = sext i32 %i.k to i64
  %i.t = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.s, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !21, !noalias !199
  %i.v = load i64, ptr %i.l, align 8, !tbaa !22, !noalias !199
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !199
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y
  %i.aa = load ptr, ptr %4, align 8, !tbaa !98    ; 2 uses
  %.not139 = icmp eq ptr %i.aa, null
  br i1 %.not139, label %_ZNK4ncnn3Mat7channelEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %.idx = shl nsw i64 %indvars.iv, 4
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.idx
  %i.ac = load <4 x float>, ptr %i.ab, align 1, !tbaa !87
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.ad = phi fast <4 x float> [ %i.ac, %bb.c ], [ zeroinitializer, %_ZN4ncnn3Mat7channelEi.exit ] ; 7 uses
  %i.ae = load ptr, ptr %5, align 8, !tbaa !21
  %i.af = load i32, ptr %i.n, align 4, !tbaa !75
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !67
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 9 uses
  %i.al = load <4 x float>, ptr %i.ak, align 16, !tbaa !87 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = load <4 x float>, ptr %i.am, align 16, !tbaa !87 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ap = load <4 x float>, ptr %i.ao, align 16, !tbaa !87 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ar = load <4 x float>, ptr %i.aq, align 16, !tbaa !87 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.at = load <4 x float>, ptr %i.as, align 16, !tbaa !87 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.av = load <4 x float>, ptr %i.au, align 16, !tbaa !87 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.ax = load <4 x float>, ptr %i.aw, align 16, !tbaa !87 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %i.az = load <4 x float>, ptr %i.ay, align 16, !tbaa !87 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.bb = load <4 x float>, ptr %i.ba, align 16, !tbaa !87 ; 7 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !69
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.preheader364.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader364.preheader:                          ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.be = load ptr, ptr %6, align 8, !tbaa !21, !noalias !200
  %i.bf = load i64, ptr %i.q, align 8, !tbaa !22, !noalias !200
  %i.bg = mul i64 %i.bf, %indvars.iv
  %i.bh = load i64, ptr %i.r, align 8, !tbaa !67, !noalias !200 ; 3 uses
  %i.bi = mul i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi ; 3 uses
  %i.bk = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !200
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = shl nsw i64 %i.bl, 1
  %i.bn = mul i64 %i.bm, %i.bh
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bn
  %i.bp = mul i64 %i.bh, %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bp
  %.pre = load i32, ptr %8, align 4, !tbaa !69
  br label %.preheader364

.preheader364:                                    ; preds = %.preheader364.preheader, %._crit_edge
  %i.br = phi i32 [ %i.lb, %._crit_edge ], [ %.pre, %.preheader364.preheader ] ; 2 uses
  %.0121399 = phi i32 [ %i.lh, %._crit_edge ], [ 0, %.preheader364.preheader ]
  %.0122398 = phi ptr [ %i.lg, %._crit_edge ], [ %i.bo, %.preheader364.preheader ] ; 2 uses
  %.0125397 = phi ptr [ %i.lf, %._crit_edge ], [ %i.bq, %.preheader364.preheader ] ; 2 uses
  %.0129396 = phi ptr [ %i.le, %._crit_edge ], [ %i.bj, %.preheader364.preheader ] ; 2 uses
  %.0133395 = phi ptr [ %.3136.lcssa, %._crit_edge ], [ %i.z, %.preheader364.preheader ] ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 3
  br i1 %i.bs, label %.lr.ph, label %.preheader363

.preheader363:                                    ; preds = %.lr.ph, %.preheader364
  %i.bt = phi i32 [ %i.br, %.preheader364 ], [ %i.gv, %.lr.ph ] ; 2 uses
  %.1134.lcssa = phi ptr [ %.0133395, %.preheader364 ], [ %i.gs, %.lr.ph ] ; 2 uses
  %.1130.lcssa = phi ptr [ %.0129396, %.preheader364 ], [ %i.fs, %.lr.ph ] ; 2 uses
  %.1126.lcssa = phi ptr [ %.0125397, %.preheader364 ], [ %i.fu, %.lr.ph ] ; 2 uses
  %.1123.lcssa = phi ptr [ %.0122398, %.preheader364 ], [ %i.fw, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.preheader364 ], [ %i.gt, %.lr.ph ] ; 3 uses
  %i.bu = or disjoint i32 %.0.lcssa, 1
  %i.bv = icmp slt i32 %i.bu, %i.bt
  br i1 %i.bv, label %.lr.ph379, label %.preheader

.lr.ph:                                           ; preds = %.preheader364, %.lr.ph
  %.0369 = phi i32 [ %i.gt, %.lr.ph ], [ 0, %.preheader364 ]
  %.1123368 = phi ptr [ %i.fw, %.lr.ph ], [ %.0122398, %.preheader364 ] ; 9 uses
  %.1126367 = phi ptr [ %i.fu, %.lr.ph ], [ %.0125397, %.preheader364 ] ; 9 uses
  %.1130366 = phi ptr [ %i.fs, %.lr.ph ], [ %.0129396, %.preheader364 ] ; 9 uses
  %.1134365 = phi ptr [ %i.gs, %.lr.ph ], [ %.0133395, %.preheader364 ] ; 5 uses
  %i.bw = load <4 x float>, ptr %.1130366, align 16, !tbaa !87
  %i.bx = getelementptr inbounds nuw i8, ptr %.1130366, i64 16
  %i.by = load <4 x float>, ptr %i.bx, align 16, !tbaa !87
  %i.bz = getelementptr inbounds nuw i8, ptr %.1130366, i64 32
  %i.ca = load <4 x float>, ptr %i.bz, align 16, !tbaa !87 ; 2 uses
  %i.cb = load <4 x float>, ptr %.1126367, align 16, !tbaa !87
  %i.cc = getelementptr inbounds nuw i8, ptr %.1126367, i64 16
  %i.cd = load <4 x float>, ptr %i.cc, align 16, !tbaa !87
  %i.ce = getelementptr inbounds nuw i8, ptr %.1126367, i64 32
  %i.cf = load <4 x float>, ptr %i.ce, align 16, !tbaa !87 ; 2 uses
  %i.cg = load <4 x float>, ptr %.1123368, align 16, !tbaa !87
  %i.ch = getelementptr inbounds nuw i8, ptr %.1123368, i64 16
  %i.ci = load <4 x float>, ptr %i.ch, align 16, !tbaa !87
  %i.cj = getelementptr inbounds nuw i8, ptr %.1123368, i64 32
  %i.ck = load <4 x float>, ptr %i.cj, align 16, !tbaa !87 ; 2 uses
  %i.cl = fmul fast <4 x float> %i.bw, %i.al
  %i.cm = fadd fast <4 x float> %i.ad, %i.cl
  %i.cn = fmul fast <4 x float> %i.by, %i.an
  %i.co = fadd fast <4 x float> %i.cn, %i.cm
  %i.cp = fmul fast <4 x float> %i.ca, %i.ap
  %i.cq = fadd fast <4 x float> %i.co, %i.cp
  %i.cr = fmul fast <4 x float> %i.cb, %i.ar
  %i.cs = fadd fast <4 x float> %i.cq, %i.cr
  %i.ct = fmul fast <4 x float> %i.cd, %i.at
  %i.cu = fadd fast <4 x float> %i.cs, %i.ct
  %i.cv = fmul fast <4 x float> %i.cf, %i.av
  %i.cw = fadd fast <4 x float> %i.cu, %i.cv
  %i.cx = fmul fast <4 x float> %i.cg, %i.ax
  %i.cy = fadd fast <4 x float> %i.cw, %i.cx
  %i.cz = fmul fast <4 x float> %i.ci, %i.az
  %i.da = fadd fast <4 x float> %i.cy, %i.cz
  %i.db = fmul fast <4 x float> %i.ck, %i.bb
  %i.dc = fadd fast <4 x float> %i.da, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %.1130366, i64 48
  %i.de = load <4 x float>, ptr %i.dd, align 16, !tbaa !87
  %i.df = getelementptr inbounds nuw i8, ptr %.1126367, i64 48
  %i.dg = load <4 x float>, ptr %i.df, align 16, !tbaa !87
  %i.dh = getelementptr inbounds nuw i8, ptr %.1123368, i64 48
  %i.di = load <4 x float>, ptr %i.dh, align 16, !tbaa !87
  %i.dj = getelementptr inbounds nuw i8, ptr %.1130366, i64 64
  %i.dk = load <4 x float>, ptr %i.dj, align 16, !tbaa !87 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.1126367, i64 64
  %i.dm = load <4 x float>, ptr %i.dl, align 16, !tbaa !87 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.1123368, i64 64
  %i.do = load <4 x float>, ptr %i.dn, align 16, !tbaa !87 ; 2 uses
  store <4 x float> %i.dc, ptr %.1134365, align 16, !tbaa !87
  %i.dp = fmul fast <4 x float> %i.ca, %i.al
  %i.dq = fadd fast <4 x float> %i.ad, %i.dp
  %i.dr = fmul fast <4 x float> %i.de, %i.an
  %i.ds = fmul fast <4 x float> %i.dk, %i.ap
  %i.dt = fmul fast <4 x float> %i.cf, %i.ar
  %i.du = fmul fast <4 x float> %i.dg, %i.at
  %i.dv = fmul fast <4 x float> %i.dm, %i.av
  %i.dw = fmul fast <4 x float> %i.ck, %i.ax
  %i.dx = fmul fast <4 x float> %i.di, %i.az
  %i.dy = fmul fast <4 x float> %i.do, %i.bb
  %i.dz = fadd fast <4 x float> %i.dt, %i.dq
  %i.ea = fadd fast <4 x float> %i.dz, %i.dw
  %i.eb = fadd fast <4 x float> %i.ea, %i.dr
  %i.ec = fadd fast <4 x float> %i.eb, %i.du
  %i.ed = fadd fast <4 x float> %i.ec, %i.dx
  %i.ee = fadd fast <4 x float> %i.ed, %i.ds
  %i.ef = fadd fast <4 x float> %i.ee, %i.dv
  %i.eg = fadd fast <4 x float> %i.ef, %i.dy
  %i.eh = getelementptr inbounds nuw i8, ptr %.1130366, i64 80
  %i.ei = load <4 x float>, ptr %i.eh, align 16, !tbaa !87
  %i.ej = getelementptr inbounds nuw i8, ptr %.1126367, i64 80
  %i.ek = load <4 x float>, ptr %i.ej, align 16, !tbaa !87
  %i.el = getelementptr inbounds nuw i8, ptr %.1123368, i64 80
  %i.em = load <4 x float>, ptr %i.el, align 16, !tbaa !87
  %i.en = getelementptr inbounds nuw i8, ptr %.1130366, i64 96
  %i.eo = load <4 x float>, ptr %i.en, align 16, !tbaa !87 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.1126367, i64 96
  %i.eq = load <4 x float>, ptr %i.ep, align 16, !tbaa !87 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.1123368, i64 96
  %i.es = load <4 x float>, ptr %i.er, align 16, !tbaa !87 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.1134365, i64 16
  store <4 x float> %i.eg, ptr %i.et, align 16, !tbaa !87
  %i.eu = fmul fast <4 x float> %i.dk, %i.al
  %i.ev = fadd fast <4 x float> %i.ad, %i.eu
  %i.ew = fmul fast <4 x float> %i.ei, %i.an
  %i.ex = fmul fast <4 x float> %i.eo, %i.ap
  %i.ey = fmul fast <4 x float> %i.dm, %i.ar
  %i.ez = fmul fast <4 x float> %i.ek, %i.at
  %i.fa = fmul fast <4 x float> %i.eq, %i.av
  %i.fb = fmul fast <4 x float> %i.do, %i.ax
  %i.fc = fmul fast <4 x float> %i.em, %i.az
  %i.fd = fmul fast <4 x float> %i.es, %i.bb
  %i.fe = fadd fast <4 x float> %i.ey, %i.ev
  %i.ff = fadd fast <4 x float> %i.fe, %i.fb
  %i.fg = fadd fast <4 x float> %i.ff, %i.ew
  %i.fh = fadd fast <4 x float> %i.fg, %i.ez
  %i.fi = fadd fast <4 x float> %i.fh, %i.fc
  %i.fj = fadd fast <4 x float> %i.fi, %i.ex
  %i.fk = fadd fast <4 x float> %i.fj, %i.fa
  %i.fl = fadd fast <4 x float> %i.fk, %i.fd
  %i.fm = getelementptr inbounds nuw i8, ptr %.1130366, i64 112
  %i.fn = load <4 x float>, ptr %i.fm, align 16, !tbaa !87
  %i.fo = getelementptr inbounds nuw i8, ptr %.1126367, i64 112
  %i.fp = load <4 x float>, ptr %i.fo, align 16, !tbaa !87
  %i.fq = getelementptr inbounds nuw i8, ptr %.1123368, i64 112
  %i.fr = load <4 x float>, ptr %i.fq, align 16, !tbaa !87
  %i.fs = getelementptr inbounds nuw i8, ptr %.1130366, i64 128 ; 3 uses
  %i.ft = load <4 x float>, ptr %i.fs, align 16, !tbaa !87
  %i.fu = getelementptr inbounds nuw i8, ptr %.1126367, i64 128 ; 3 uses
  %i.fv = load <4 x float>, ptr %i.fu, align 16, !tbaa !87
  %i.fw = getelementptr inbounds nuw i8, ptr %.1123368, i64 128 ; 3 uses
  %i.fx = load <4 x float>, ptr %i.fw, align 16, !tbaa !87
  %i.fy = getelementptr inbounds nuw i8, ptr %.1134365, i64 32
  store <4 x float> %i.fl, ptr %i.fy, align 16, !tbaa !87
  %i.fz = fmul fast <4 x float> %i.eo, %i.al
  %i.ga = fadd fast <4 x float> %i.ad, %i.fz
  %i.gb = fmul fast <4 x float> %i.fn, %i.an
  %i.gc = fmul fast <4 x float> %i.ft, %i.ap
  %i.gd = fmul fast <4 x float> %i.eq, %i.ar
  %i.ge = fmul fast <4 x float> %i.fp, %i.at
  %i.gf = fmul fast <4 x float> %i.fv, %i.av
  %i.gg = fmul fast <4 x float> %i.es, %i.ax
  %i.gh = fmul fast <4 x float> %i.fr, %i.az
  %i.gi = fmul fast <4 x float> %i.fx, %i.bb
  %i.gj = fadd fast <4 x float> %i.gd, %i.ga
  %i.gk = fadd fast <4 x float> %i.gj, %i.gg
  %i.gl = fadd fast <4 x float> %i.gk, %i.gb
  %i.gm = fadd fast <4 x float> %i.gl, %i.ge
  %i.gn = fadd fast <4 x float> %i.gm, %i.gh
  %i.go = fadd fast <4 x float> %i.gn, %i.gc
  %i.gp = fadd fast <4 x float> %i.go, %i.gf
  %i.gq = fadd fast <4 x float> %i.gp, %i.gi
  %i.gr = getelementptr inbounds nuw i8, ptr %.1134365, i64 48
  store <4 x float> %i.gq, ptr %i.gr, align 16, !tbaa !87
  %i.gs = getelementptr inbounds nuw i8, ptr %.1134365, i64 64 ; 2 uses
  %i.gt = add nuw nsw i32 %.0369, 4               ; 3 uses
  %i.gu = or disjoint i32 %i.gt, 3
  %i.gv = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.gw = icmp slt i32 %i.gu, %i.gv
  br i1 %i.gw, label %.lr.ph, label %.preheader363, !llvm.loop !195

.preheader:                                       ; preds = %.lr.ph379, %.preheader363
  %i.gx = phi i32 [ %i.bt, %.preheader363 ], [ %i.jo, %.lr.ph379 ] ; 2 uses
  %.2135.lcssa = phi ptr [ %.1134.lcssa, %.preheader363 ], [ %i.jl, %.lr.ph379 ] ; 2 uses
  %.2131.lcssa = phi ptr [ %.1130.lcssa, %.preheader363 ], [ %i.im, %.lr.ph379 ] ; 2 uses
  %.2127.lcssa = phi ptr [ %.1126.lcssa, %.preheader363 ], [ %i.io, %.lr.ph379 ] ; 2 uses
  %.2124.lcssa = phi ptr [ %.1123.lcssa, %.preheader363 ], [ %i.iq, %.lr.ph379 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader363 ], [ %i.jm, %.lr.ph379 ] ; 2 uses
  %i.gy = icmp slt i32 %.1.lcssa, %i.gx
  br i1 %i.gy, label %.lr.ph390, label %._crit_edge

.lr.ph379:                                        ; preds = %.preheader363, %.lr.ph379
  %.1378 = phi i32 [ %i.jm, %.lr.ph379 ], [ %.0.lcssa, %.preheader363 ]
  %.2124377 = phi ptr [ %i.iq, %.lr.ph379 ], [ %.1123.lcssa, %.preheader363 ] ; 5 uses
  %.2127376 = phi ptr [ %i.io, %.lr.ph379 ], [ %.1126.lcssa, %.preheader363 ] ; 5 uses
  %.2131375 = phi ptr [ %i.im, %.lr.ph379 ], [ %.1130.lcssa, %.preheader363 ] ; 5 uses
  %.2135374 = phi ptr [ %i.jl, %.lr.ph379 ], [ %.1134.lcssa, %.preheader363 ] ; 3 uses
  %i.gz = load <4 x float>, ptr %.2131375, align 16, !tbaa !87
  %i.ha = getelementptr inbounds nuw i8, ptr %.2131375, i64 16
  %i.hb = load <4 x float>, ptr %i.ha, align 16, !tbaa !87
  %i.hc = getelementptr inbounds nuw i8, ptr %.2131375, i64 32
  %i.hd = load <4 x float>, ptr %i.hc, align 16, !tbaa !87 ; 2 uses
  %i.he = load <4 x float>, ptr %.2127376, align 16, !tbaa !87
  %i.hf = getelementptr inbounds nuw i8, ptr %.2127376, i64 16
  %i.hg = load <4 x float>, ptr %i.hf, align 16, !tbaa !87
  %i.hh = getelementptr inbounds nuw i8, ptr %.2127376, i64 32
  %i.hi = load <4 x float>, ptr %i.hh, align 16, !tbaa !87 ; 2 uses
  %i.hj = load <4 x float>, ptr %.2124377, align 16, !tbaa !87
  %i.hk = getelementptr inbounds nuw i8, ptr %.2124377, i64 16
  %i.hl = load <4 x float>, ptr %i.hk, align 16, !tbaa !87
  %i.hm = getelementptr inbounds nuw i8, ptr %.2124377, i64 32
  %i.hn = load <4 x float>, ptr %i.hm, align 16, !tbaa !87 ; 2 uses
  %i.ho = fmul fast <4 x float> %i.gz, %i.al
  %i.hp = fadd fast <4 x float> %i.ad, %i.ho
  %i.hq = fmul fast <4 x float> %i.hb, %i.an
  %i.hr = fadd fast <4 x float> %i.hq, %i.hp
  %i.hs = fmul fast <4 x float> %i.hd, %i.ap
  %i.ht = fadd fast <4 x float> %i.hr, %i.hs
  %i.hu = fmul fast <4 x float> %i.he, %i.ar
  %i.hv = fadd fast <4 x float> %i.ht, %i.hu
  %i.hw = fmul fast <4 x float> %i.hg, %i.at
  %i.hx = fadd fast <4 x float> %i.hv, %i.hw
  %i.hy = fmul fast <4 x float> %i.hi, %i.av
  %i.hz = fadd fast <4 x float> %i.hx, %i.hy
  %i.ia = fmul fast <4 x float> %i.hj, %i.ax
  %i.ib = fadd fast <4 x float> %i.hz, %i.ia
  %i.ic = fmul fast <4 x float> %i.hl, %i.az
  %i.id = fadd fast <4 x float> %i.ib, %i.ic
  %i.ie = fmul fast <4 x float> %i.hn, %i.bb
  %i.if = fadd fast <4 x float> %i.id, %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %.2131375, i64 48
  %i.ih = load <4 x float>, ptr %i.ig, align 16, !tbaa !87
  %i.ii = getelementptr inbounds nuw i8, ptr %.2127376, i64 48
  %i.ij = load <4 x float>, ptr %i.ii, align 16, !tbaa !87
  %i.ik = getelementptr inbounds nuw i8, ptr %.2124377, i64 48
  %i.il = load <4 x float>, ptr %i.ik, align 16, !tbaa !87
  %i.im = getelementptr inbounds nuw i8, ptr %.2131375, i64 64 ; 3 uses
  %i.in = load <4 x float>, ptr %i.im, align 16, !tbaa !87
  %i.io = getelementptr inbounds nuw i8, ptr %.2127376, i64 64 ; 3 uses
  %i.ip = load <4 x float>, ptr %i.io, align 16, !tbaa !87
  %i.iq = getelementptr inbounds nuw i8, ptr %.2124377, i64 64 ; 3 uses
  %i.ir = load <4 x float>, ptr %i.iq, align 16, !tbaa !87
  store <4 x float> %i.if, ptr %.2135374, align 16, !tbaa !87
  %i.is = fmul fast <4 x float> %i.hd, %i.al
  %i.it = fadd fast <4 x float> %i.ad, %i.is
  %i.iu = fmul fast <4 x float> %i.ih, %i.an
  %i.iv = fmul fast <4 x float> %i.in, %i.ap
  %i.iw = fmul fast <4 x float> %i.hi, %i.ar
  %i.ix = fmul fast <4 x float> %i.ij, %i.at
  %i.iy = fmul fast <4 x float> %i.ip, %i.av
  %i.iz = fmul fast <4 x float> %i.hn, %i.ax
  %i.ja = fmul fast <4 x float> %i.il, %i.az
  %i.jb = fmul fast <4 x float> %i.ir, %i.bb
  %i.jc = fadd fast <4 x float> %i.iw, %i.it
  %i.jd = fadd fast <4 x float> %i.jc, %i.iz
  %i.je = fadd fast <4 x float> %i.jd, %i.iu
  %i.jf = fadd fast <4 x float> %i.je, %i.ix
  %i.jg = fadd fast <4 x float> %i.jf, %i.ja
  %i.jh = fadd fast <4 x float> %i.jg, %i.iv
  %i.ji = fadd fast <4 x float> %i.jh, %i.iy
  %i.jj = fadd fast <4 x float> %i.ji, %i.jb
  %i.jk = getelementptr inbounds nuw i8, ptr %.2135374, i64 16
  store <4 x float> %i.jj, ptr %i.jk, align 16, !tbaa !87
  %i.jl = getelementptr inbounds nuw i8, ptr %.2135374, i64 32 ; 2 uses
  %i.jm = add nuw nsw i32 %.1378, 2               ; 3 uses
  %i.jn = or disjoint i32 %i.jm, 1
  %i.jo = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.jp = icmp slt i32 %i.jn, %i.jo
  br i1 %i.jp, label %.lr.ph379, label %.preheader, !llvm.loop !196

.lr.ph390:                                        ; preds = %.preheader, %.lr.ph390
  %.2389 = phi i32 [ %i.ky, %.lr.ph390 ], [ %.1.lcssa, %.preheader ]
  %.3388 = phi ptr [ %i.kd, %.lr.ph390 ], [ %.2124.lcssa, %.preheader ] ; 3 uses
  %.3128387 = phi ptr [ %i.jy, %.lr.ph390 ], [ %.2127.lcssa, %.preheader ] ; 3 uses
  %.3132386 = phi ptr [ %i.jt, %.lr.ph390 ], [ %.2131.lcssa, %.preheader ] ; 3 uses
  %.3136385 = phi ptr [ %i.kx, %.lr.ph390 ], [ %.2135.lcssa, %.preheader ] ; 2 uses
  %i.jq = load <4 x float>, ptr %.3132386, align 16, !tbaa !87
  %i.jr = getelementptr inbounds nuw i8, ptr %.3132386, i64 16
  %i.js = load <4 x float>, ptr %i.jr, align 16, !tbaa !87
  %i.jt = getelementptr inbounds nuw i8, ptr %.3132386, i64 32 ; 3 uses
  %i.ju = load <4 x float>, ptr %i.jt, align 16, !tbaa !87
  %i.jv = load <4 x float>, ptr %.3128387, align 16, !tbaa !87
  %i.jw = getelementptr inbounds nuw i8, ptr %.3128387, i64 16
  %i.jx = load <4 x float>, ptr %i.jw, align 16, !tbaa !87
  %i.jy = getelementptr inbounds nuw i8, ptr %.3128387, i64 32 ; 3 uses
  %i.jz = load <4 x float>, ptr %i.jy, align 16, !tbaa !87
  %i.ka = load <4 x float>, ptr %.3388, align 16, !tbaa !87
  %i.kb = getelementptr inbounds nuw i8, ptr %.3388, i64 16
  %i.kc = load <4 x float>, ptr %i.kb, align 16, !tbaa !87
  %i.kd = getelementptr inbounds nuw i8, ptr %.3388, i64 32 ; 3 uses
  %i.ke = load <4 x float>, ptr %i.kd, align 16, !tbaa !87
  %i.kf = fmul fast <4 x float> %i.jq, %i.al
  %i.kg = fadd fast <4 x float> %i.ad, %i.kf
  %i.kh = fmul fast <4 x float> %i.js, %i.an
  %i.ki = fadd fast <4 x float> %i.kh, %i.kg
  %i.kj = fmul fast <4 x float> %i.ju, %i.ap
  %i.kk = fadd fast <4 x float> %i.ki, %i.kj
  %i.kl = fmul fast <4 x float> %i.jv, %i.ar
  %i.km = fadd fast <4 x float> %i.kk, %i.kl
  %i.kn = fmul fast <4 x float> %i.jx, %i.at
  %i.ko = fadd fast <4 x float> %i.km, %i.kn
  %i.kp = fmul fast <4 x float> %i.jz, %i.av
  %i.kq = fadd fast <4 x float> %i.ko, %i.kp
  %i.kr = fmul fast <4 x float> %i.ka, %i.ax
  %i.ks = fadd fast <4 x float> %i.kq, %i.kr
  %i.kt = fmul fast <4 x float> %i.kc, %i.az
  %i.ku = fadd fast <4 x float> %i.ks, %i.kt
  %i.kv = fmul fast <4 x float> %i.ke, %i.bb
  %i.kw = fadd fast <4 x float> %i.ku, %i.kv
  store <4 x float> %i.kw, ptr %.3136385, align 16, !tbaa !87
  %i.kx = getelementptr inbounds nuw i8, ptr %.3136385, i64 16 ; 2 uses
  %i.ky = add nuw nsw i32 %.2389, 1               ; 2 uses
  %i.kz = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.la = icmp slt i32 %i.ky, %i.kz
  br i1 %i.la, label %.lr.ph390, label %._crit_edge, !llvm.loop !197

._crit_edge:                                      ; preds = %.lr.ph390, %.preheader
  %i.lb = phi i32 [ %i.gx, %.preheader ], [ %i.kz, %.lr.ph390 ]
  %.3136.lcssa = phi ptr [ %.2135.lcssa, %.preheader ], [ %i.kx, %.lr.ph390 ]
  %.3132.lcssa = phi ptr [ %.2131.lcssa, %.preheader ], [ %i.jt, %.lr.ph390 ]
  %.3128.lcssa = phi ptr [ %.2127.lcssa, %.preheader ], [ %i.jy, %.lr.ph390 ]
  %.3.lcssa = phi ptr [ %.2124.lcssa, %.preheader ], [ %i.kd, %.lr.ph390 ]
  %i.lc = load i32, ptr %9, align 4, !tbaa !69
  %i.ld = sext i32 %i.lc to i64                   ; 3 uses
  %i.le = getelementptr inbounds [4 x i8], ptr %.3132.lcssa, i64 %i.ld
  %i.lf = getelementptr inbounds [4 x i8], ptr %.3128.lcssa, i64 %i.ld
  %i.lg = getelementptr inbounds [4 x i8], ptr %.3.lcssa, i64 %i.ld
  %i.lh = add nuw nsw i32 %.0121399, 1            ; 2 uses
  %i.li = load i32, ptr %7, align 4, !tbaa !69
  %i.lj = icmp slt i32 %i.lh, %i.li
  br i1 %i.lj, label %.preheader364, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !198

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %_ZNK4ncnn3Mat7channelEi.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge402, label %_ZN4ncnn3Mat7channelEi.exit

._crit_edge402:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge402, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21convdw5x5s1_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !69     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.h = load i32, ptr %0, align 4, !tbaa !69     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !69
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !69
  %i.k = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %.not548 = icmp sgt i32 %i.k, %i.j
  br i1 %.not548, label %._crit_edge550, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = sext i32 %i.k to i64
  %i.u = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.t, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !209
  %i.w = load ptr, ptr %3, align 8, !tbaa !21, !noalias !209 ; 2 uses
  %i.x = load i64, ptr %i.m, align 8, !tbaa !22, !noalias !209 ; 2 uses
  %i.y = mul i64 %i.x, %indvars.iv
  %i.z = load i64, ptr %i.n, align 8, !tbaa !67, !noalias !209 ; 3 uses
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa ; 3 uses
  %i.ac = sext i32 %i.v to i64
  %i.ad = load ptr, ptr %4, align 8, !tbaa !98    ; 2 uses
  %.not215 = icmp eq ptr %i.ad, null
  br i1 %.not215, label %_ZNK4ncnn3Mat7channelEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %.idx = shl nsw i64 %indvars.iv, 4
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx
  %i.af = load <4 x float>, ptr %i.ae, align 1, !tbaa !87
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.ag = phi fast <4 x float> [ %i.af, %bb.c ], [ zeroinitializer, %_ZN4ncnn3Mat7channelEi.exit ] ; 3 uses
  %i.ah = load ptr, ptr %5, align 8, !tbaa !21
  %i.ai = load i32, ptr %i.o, align 4, !tbaa !75
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %indvars.iv, %i.aj
  %i.al = load i64, ptr %i.p, align 8, !tbaa !67
  %i.am = mul i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 50 uses
  %i.ao = load i32, ptr %i.q, align 4, !tbaa !75, !noalias !210
  %i.ap = load ptr, ptr %6, align 8, !tbaa !21, !noalias !210 ; 6 uses
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !22, !noalias !210 ; 2 uses
  %i.ar = mul i64 %i.aq, %indvars.iv              ; 5 uses
  %i.as = load i64, ptr %i.s, align 8, !tbaa !67, !noalias !210 ; 7 uses
  %i.at = mul i64 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.at ; 7 uses
  %i.av = sext i32 %i.ao to i64                   ; 5 uses
  %i.aw = mul i64 %i.as, %i.av                    ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw ; 2 uses
  %i.ay = shl i64 %i.aw, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay ; 2 uses
  %i.ba = mul i64 %i.aw, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ba ; 2 uses
  %i.bc = shl i64 %i.aw, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %7, align 4, !tbaa !69    ; 5 uses
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %.preheader485.lr.ph, label %.preheader486

.preheader485.lr.ph:                              ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 144
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 176
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 192
  %i.bs = getelementptr inbounds nuw i8, ptr %i.an, i64 208
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 224
  %i.bu = getelementptr inbounds nuw i8, ptr %i.an, i64 240
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 256
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 272
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 288
  %i.by = getelementptr inbounds nuw i8, ptr %i.an, i64 304
  %i.bz = getelementptr inbounds nuw i8, ptr %i.an, i64 320
  %i.ca = getelementptr inbounds nuw i8, ptr %i.an, i64 336
  %i.cb = getelementptr inbounds nuw i8, ptr %i.an, i64 352
  %i.cc = getelementptr inbounds nuw i8, ptr %i.an, i64 368
  %i.cd = getelementptr inbounds nuw i8, ptr %i.an, i64 384
  %i.ce = load i32, ptr %8, align 4, !tbaa !69    ; 3 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.preheader485.preheader, label %.preheader485.lr.ph.split.us

.preheader485.preheader:                          ; preds = %.preheader485.lr.ph
  %i.cg = mul i64 %i.aw, 5
  %i.ch = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.cg
  %i.ci = mul i64 %i.z, %i.ac
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ci
  br label %.preheader485

.preheader485.lr.ph.split.us:                     ; preds = %.preheader485.lr.ph
  %i.ck = load i32, ptr %9, align 4, !tbaa !69
  %i.cl = shl i32 %i.ck, 2
  %i.cm = add i32 %i.cl, 16
  %i.cn = sext i32 %i.cm to i64
  %i.co = shl i32 %i.ce, 2
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul i64 %i.as, %i.aq
  %i.cr = mul i64 %i.cq, %indvars.iv
  %i.cs = call i32 @llvm.umax.i32(i32 %i.be, i32 3) ; 2 uses
  %i.ct = shl nuw i32 %i.cs, 1
  %i.cu = and i32 %i.ct, -4
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = mul nsw i64 %i.cv, %i.cn                ; 5 uses
  %i.cx = getelementptr i8, ptr %i.ap, i64 %i.cr
  %scevgep = getelementptr i8, ptr %i.cx, i64 %i.cw
  %i.cy = add i64 %i.ar, %i.av
  %i.cz = mul i64 %i.as, %i.cy
  %i.da = getelementptr i8, ptr %i.ap, i64 %i.cz
  %scevgep582 = getelementptr i8, ptr %i.da, i64 %i.cw
  %i.db = shl nsw i64 %i.av, 1
  %i.dc = add i64 %i.ar, %i.db
  %i.dd = mul i64 %i.as, %i.dc
  %i.de = getelementptr i8, ptr %i.ap, i64 %i.dd
  %scevgep583 = getelementptr i8, ptr %i.de, i64 %i.cw
  %i.df = mul nsw i64 %i.av, 3
  %i.dg = add i64 %i.ar, %i.df
  %i.dh = mul i64 %i.as, %i.dg
  %i.di = getelementptr i8, ptr %i.ap, i64 %i.dh
  %scevgep584 = getelementptr i8, ptr %i.di, i64 %i.cw
  %i.dj = shl nsw i64 %i.av, 2
  %i.dk = add i64 %i.ar, %i.dj
  %i.dl = mul i64 %i.as, %i.dk
  %i.dm = getelementptr i8, ptr %i.ap, i64 %i.dl
  %scevgep585 = getelementptr i8, ptr %i.dm, i64 %i.cw
  %i.dn = mul i64 %i.z, %i.x
  %i.do = mul i64 %i.dn, %indvars.iv
  %i.dp = mul nsw i64 %i.cv, %i.cp
  %i.dq = getelementptr i8, ptr %i.w, i64 %i.do
  %scevgep586 = getelementptr i8, ptr %i.dq, i64 %i.dp
  %i.dr = and i32 %i.cs, 2147483646
  br label %.preheader486

.preheader486:                                    ; preds = %._crit_edge, %.preheader485.lr.ph.split.us, %_ZNK4ncnn3Mat7channelEi.exit
  %i.ds = phi i32 [ %i.be, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.be, %.preheader485.lr.ph.split.us ], [ %i.lz, %._crit_edge ] ; 2 uses
  %.0204.lcssa = phi ptr [ %i.ab, %_ZNK4ncnn3Mat7channelEi.exit ], [ %scevgep586, %.preheader485.lr.ph.split.us ], [ %i.mn, %._crit_edge ]
  %.0198.lcssa = phi ptr [ %i.au, %_ZNK4ncnn3Mat7channelEi.exit ], [ %scevgep, %.preheader485.lr.ph.split.us ], [ %i.mf, %._crit_edge ]
  %.0194.lcssa = phi ptr [ %i.ax, %_ZNK4ncnn3Mat7channelEi.exit ], [ %scevgep582, %.preheader485.lr.ph.split.us ], [ %i.mg, %._crit_edge ]
  %.0190.lcssa = phi ptr [ %i.az, %_ZNK4ncnn3Mat7channelEi.exit ], [ %scevgep583, %.preheader485.lr.ph.split.us ], [ %i.mh, %._crit_edge ]
  %.0186.lcssa = phi ptr [ %i.bb, %_ZNK4ncnn3Mat7channelEi.exit ], [ %scevgep584, %.preheader485.lr.ph.split.us ], [ %i.mi, %._crit_edge ]
  %.0184.lcssa = phi ptr [ %i.bd, %_ZNK4ncnn3Mat7channelEi.exit ], [ %scevgep585, %.preheader485.lr.ph.split.us ], [ %i.mj, %._crit_edge ]
  %.0181.lcssa = phi i32 [ 0, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.dr, %.preheader485.lr.ph.split.us ], [ %i.mp, %._crit_edge ] ; 2 uses
  %i.dt = icmp slt i32 %.0181.lcssa, %i.ds
  br i1 %i.dt, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %.preheader486
  %i.du = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.dx = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.dz = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.ea = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %i.eb = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.ec = getelementptr inbounds nuw i8, ptr %i.an, i64 144
  %i.ed = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  %i.ee = getelementptr inbounds nuw i8, ptr %i.an, i64 176
  %i.ef = getelementptr inbounds nuw i8, ptr %i.an, i64 192
  %i.eg = getelementptr inbounds nuw i8, ptr %i.an, i64 208
  %i.eh = getelementptr inbounds nuw i8, ptr %i.an, i64 224
  %i.ei = getelementptr inbounds nuw i8, ptr %i.an, i64 240
  %i.ej = getelementptr inbounds nuw i8, ptr %i.an, i64 256
  %i.ek = getelementptr inbounds nuw i8, ptr %i.an, i64 272
  %i.el = getelementptr inbounds nuw i8, ptr %i.an, i64 288
  %i.em = getelementptr inbounds nuw i8, ptr %i.an, i64 304
  %i.en = getelementptr inbounds nuw i8, ptr %i.an, i64 320
  %i.eo = getelementptr inbounds nuw i8, ptr %i.an, i64 336
  %i.ep = getelementptr inbounds nuw i8, ptr %i.an, i64 352
  %i.eq = getelementptr inbounds nuw i8, ptr %i.an, i64 368
  %i.er = getelementptr inbounds nuw i8, ptr %i.an, i64 384
  %i.es = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader485:                                    ; preds = %.preheader485.preheader, %._crit_edge
  %i.eu = phi i32 [ %i.lz, %._crit_edge ], [ %i.be, %.preheader485.preheader ]
  %i.ev = phi i32 [ %i.ma, %._crit_edge ], [ %i.ce, %.preheader485.preheader ] ; 2 uses
  %.0181512 = phi i32 [ %i.mp, %._crit_edge ], [ 0, %.preheader485.preheader ]
  %.0182511 = phi ptr [ %i.mk, %._crit_edge ], [ %i.ch, %.preheader485.preheader ] ; 2 uses
  %.0184510 = phi ptr [ %i.mj, %._crit_edge ], [ %i.bd, %.preheader485.preheader ] ; 2 uses
  %.0186509 = phi ptr [ %i.mi, %._crit_edge ], [ %i.bb, %.preheader485.preheader ] ; 2 uses
  %.0190508 = phi ptr [ %i.mh, %._crit_edge ], [ %i.az, %.preheader485.preheader ] ; 2 uses
  %.0194507 = phi ptr [ %i.mg, %._crit_edge ], [ %i.ax, %.preheader485.preheader ] ; 2 uses
  %.0198506 = phi ptr [ %i.mf, %._crit_edge ], [ %i.au, %.preheader485.preheader ] ; 2 uses
  %.0202505 = phi ptr [ %i.mo, %._crit_edge ], [ %i.cj, %.preheader485.preheader ] ; 2 uses
  %.0204504 = phi ptr [ %i.mn, %._crit_edge ], [ %i.ab, %.preheader485.preheader ] ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader485, %.lr.ph
  %.0180495 = phi i32 [ %i.lw, %.lr.ph ], [ 0, %.preheader485 ]
  %.1183494 = phi ptr [ %i.lc, %.lr.ph ], [ %.0182511, %.preheader485 ] ; 5 uses
  %.1185493 = phi ptr [ %i.ju, %.lr.ph ], [ %.0184510, %.preheader485 ] ; 5 uses
  %.1187492 = phi ptr [ %i.im, %.lr.ph ], [ %.0186509, %.preheader485 ] ; 5 uses
  %.1191491 = phi ptr [ %i.he, %.lr.ph ], [ %.0190508, %.preheader485 ] ; 5 uses
  %.1195490 = phi ptr [ %i.fw, %.lr.ph ], [ %.0194507, %.preheader485 ] ; 5 uses
  %.1199489 = phi ptr [ %i.ey, %.lr.ph ], [ %.0198506, %.preheader485 ] ; 5 uses
  %.1203488 = phi ptr [ %i.lv, %.lr.ph ], [ %.0202505, %.preheader485 ] ; 2 uses
  %.1205487 = phi ptr [ %i.lu, %.lr.ph ], [ %.0204504, %.preheader485 ] ; 2 uses
  %i.ex = load <4 x float>, ptr %.1199489, align 16, !tbaa !87
  %i.ey = getelementptr inbounds nuw i8, ptr %.1199489, i64 16 ; 3 uses
  %i.ez = load <4 x float>, ptr %i.ey, align 16, !tbaa !87
  %i.fa = getelementptr inbounds nuw i8, ptr %.1199489, i64 32
  %i.fb = load <4 x float>, ptr %i.fa, align 16, !tbaa !87
  %i.fc = getelementptr inbounds nuw i8, ptr %.1199489, i64 48
  %i.fd = load <4 x float>, ptr %i.fc, align 16, !tbaa !87
  %i.fe = getelementptr inbounds nuw i8, ptr %.1199489, i64 64
  %i.ff = load <4 x float>, ptr %i.fe, align 16, !tbaa !87
  %i.fg = load <4 x float>, ptr %i.an, align 16, !tbaa !87 ; 2 uses
  %i.fh = load <4 x float>, ptr %i.bg, align 16, !tbaa !87 ; 2 uses
  %i.fi = load <4 x float>, ptr %i.bh, align 16, !tbaa !87 ; 2 uses
  %i.fj = load <4 x float>, ptr %i.bi, align 16, !tbaa !87 ; 2 uses
  %i.fk = load <4 x float>, ptr %i.bj, align 16, !tbaa !87 ; 2 uses
  %i.fl = fmul fast <4 x float> %i.fg, %i.ex
  %i.fm = fadd fast <4 x float> %i.ag, %i.fl
  %i.fn = fmul fast <4 x float> %i.fh, %i.ez
  %i.fo = fadd fast <4 x float> %i.fn, %i.fm
  %i.fp = fmul fast <4 x float> %i.fi, %i.fb
  %i.fq = fadd fast <4 x float> %i.fo, %i.fp
  %i.fr = fmul fast <4 x float> %i.fj, %i.fd
  %i.fs = fadd fast <4 x float> %i.fq, %i.fr
  %i.ft = fmul fast <4 x float> %i.fk, %i.ff
  %i.fu = fadd fast <4 x float> %i.fs, %i.ft
  %i.fv = load <4 x float>, ptr %.1195490, align 16, !tbaa !87 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.1195490, i64 16 ; 3 uses
  %i.fx = load <4 x float>, ptr %i.fw, align 16, !tbaa !87 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.1195490, i64 32
  %i.fz = load <4 x float>, ptr %i.fy, align 16, !tbaa !87 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.1195490, i64 48
  %i.gb = load <4 x float>, ptr %i.ga, align 16, !tbaa !87 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.1195490, i64 64
  %i.gd = load <4 x float>, ptr %i.gc, align 16, !tbaa !87 ; 2 uses
  %i.ge = fmul fast <4 x float> %i.fv, %i.fg
  %i.gf = fadd fast <4 x float> %i.ag, %i.ge
  %i.gg = fmul fast <4 x float> %i.fx, %i.fh
  %i.gh = fadd fast <4 x float> %i.gg, %i.gf
  %i.gi = fmul fast <4 x float> %i.fz, %i.fi
  %i.gj = fadd fast <4 x float> %i.gh, %i.gi
  %i.gk = fmul fast <4 x float> %i.gb, %i.fj
  %i.gl = fadd fast <4 x float> %i.gj, %i.gk
  %i.gm = fmul fast <4 x float> %i.gd, %i.fk
  %i.gn = fadd fast <4 x float> %i.gl, %i.gm
  %i.go = load <4 x float>, ptr %i.bk, align 16, !tbaa !87 ; 2 uses
  %i.gp = load <4 x float>, ptr %i.bl, align 16, !tbaa !87 ; 2 uses
  %i.gq = load <4 x float>, ptr %i.bm, align 16, !tbaa !87 ; 2 uses
  %i.gr = load <4 x float>, ptr %i.bn, align 16, !tbaa !87 ; 2 uses
  %i.gs = load <4 x float>, ptr %i.bo, align 16, !tbaa !87 ; 2 uses
  %i.gt = fmul fast <4 x float> %i.go, %i.fv
  %i.gu = fadd fast <4 x float> %i.fu, %i.gt
  %i.gv = fmul fast <4 x float> %i.gp, %i.fx
  %i.gw = fadd fast <4 x float> %i.gu, %i.gv
  %i.gx = fmul fast <4 x float> %i.gq, %i.fz
  %i.gy = fadd fast <4 x float> %i.gw, %i.gx
  %i.gz = fmul fast <4 x float> %i.gr, %i.gb
  %i.ha = fadd fast <4 x float> %i.gy, %i.gz
  %i.hb = fmul fast <4 x float> %i.gs, %i.gd
  %i.hc = fadd fast <4 x float> %i.ha, %i.hb
  %i.hd = load <4 x float>, ptr %.1191491, align 16, !tbaa !87 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.1191491, i64 16 ; 3 uses
  %i.hf = load <4 x float>, ptr %i.he, align 16, !tbaa !87 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.1191491, i64 32
  %i.hh = load <4 x float>, ptr %i.hg, align 16, !tbaa !87 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.1191491, i64 48
  %i.hj = load <4 x float>, ptr %i.hi, align 16, !tbaa !87 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.1191491, i64 64
  %i.hl = load <4 x float>, ptr %i.hk, align 16, !tbaa !87 ; 2 uses
  %i.hm = fmul fast <4 x float> %i.hd, %i.go
  %i.hn = fadd fast <4 x float> %i.gn, %i.hm
  %i.ho = fmul fast <4 x float> %i.hf, %i.gp
  %i.hp = fadd fast <4 x float> %i.hn, %i.ho
  %i.hq = fmul fast <4 x float> %i.hh, %i.gq
  %i.hr = fadd fast <4 x float> %i.hp, %i.hq
  %i.hs = fmul fast <4 x float> %i.hj, %i.gr
  %i.ht = fadd fast <4 x float> %i.hr, %i.hs
  %i.hu = fmul fast <4 x float> %i.hl, %i.gs
  %i.hv = fadd fast <4 x float> %i.ht, %i.hu
  %i.hw = load <4 x float>, ptr %i.bp, align 16, !tbaa !87 ; 2 uses
  %i.hx = load <4 x float>, ptr %i.bq, align 16, !tbaa !87 ; 2 uses
  %i.hy = load <4 x float>, ptr %i.br, align 16, !tbaa !87 ; 2 uses
  %i.hz = load <4 x float>, ptr %i.bs, align 16, !tbaa !87 ; 2 uses
  %i.ia = load <4 x float>, ptr %i.bt, align 16, !tbaa !87 ; 2 uses
  %i.ib = fmul fast <4 x float> %i.hw, %i.hd
  %i.ic = fadd fast <4 x float> %i.hc, %i.ib
  %i.id = fmul fast <4 x float> %i.hx, %i.hf
  %i.ie = fadd fast <4 x float> %i.ic, %i.id
  %i.if = fmul fast <4 x float> %i.hy, %i.hh
  %i.ig = fadd fast <4 x float> %i.ie, %i.if
  %i.ih = fmul fast <4 x float> %i.hz, %i.hj
  %i.ii = fadd fast <4 x float> %i.ig, %i.ih
  %i.ij = fmul fast <4 x float> %i.ia, %i.hl
  %i.ik = fadd fast <4 x float> %i.ii, %i.ij
  %i.il = load <4 x float>, ptr %.1187492, align 16, !tbaa !87 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.1187492, i64 16 ; 3 uses
  %i.in = load <4 x float>, ptr %i.im, align 16, !tbaa !87 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.1187492, i64 32
  %i.ip = load <4 x float>, ptr %i.io, align 16, !tbaa !87 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.1187492, i64 48
  %i.ir = load <4 x float>, ptr %i.iq, align 16, !tbaa !87 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.1187492, i64 64
  %i.it = load <4 x float>, ptr %i.is, align 16, !tbaa !87 ; 2 uses
  %i.iu = fmul fast <4 x float> %i.il, %i.hw
  %i.iv = fadd fast <4 x float> %i.hv, %i.iu
  %i.iw = fmul fast <4 x float> %i.in, %i.hx
  %i.ix = fadd fast <4 x float> %i.iv, %i.iw
  %i.iy = fmul fast <4 x float> %i.ip, %i.hy
  %i.iz = fadd fast <4 x float> %i.ix, %i.iy
  %i.ja = fmul fast <4 x float> %i.ir, %i.hz
  %i.jb = fadd fast <4 x float> %i.iz, %i.ja
  %i.jc = fmul fast <4 x float> %i.it, %i.ia
  %i.jd = fadd fast <4 x float> %i.jb, %i.jc
  %i.je = load <4 x float>, ptr %i.bu, align 16, !tbaa !87 ; 2 uses
  %i.jf = load <4 x float>, ptr %i.bv, align 16, !tbaa !87 ; 2 uses
  %i.jg = load <4 x float>, ptr %i.bw, align 16, !tbaa !87 ; 2 uses
  %i.jh = load <4 x float>, ptr %i.bx, align 16, !tbaa !87 ; 2 uses
  %i.ji = load <4 x float>, ptr %i.by, align 16, !tbaa !87 ; 2 uses
  %i.jj = fmul fast <4 x float> %i.je, %i.il
  %i.jk = fadd fast <4 x float> %i.ik, %i.jj
  %i.jl = fmul fast <4 x float> %i.jf, %i.in
  %i.jm = fadd fast <4 x float> %i.jk, %i.jl
  %i.jn = fmul fast <4 x float> %i.jg, %i.ip
  %i.jo = fadd fast <4 x float> %i.jm, %i.jn
  %i.jp = fmul fast <4 x float> %i.jh, %i.ir
  %i.jq = fadd fast <4 x float> %i.jo, %i.jp
  %i.jr = fmul fast <4 x float> %i.ji, %i.it
  %i.js = fadd fast <4 x float> %i.jq, %i.jr
  %i.jt = load <4 x float>, ptr %.1185493, align 16, !tbaa !87 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.1185493, i64 16 ; 3 uses
  %i.jv = load <4 x float>, ptr %i.ju, align 16, !tbaa !87 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.1185493, i64 32
  %i.jx = load <4 x float>, ptr %i.jw, align 16, !tbaa !87 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.1185493, i64 48
  %i.jz = load <4 x float>, ptr %i.jy, align 16, !tbaa !87 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.1185493, i64 64
  %i.kb = load <4 x float>, ptr %i.ka, align 16, !tbaa !87 ; 2 uses
  %i.kc = fmul fast <4 x float> %i.jt, %i.je
  %i.kd = fadd fast <4 x float> %i.jd, %i.kc
  %i.ke = fmul fast <4 x float> %i.jv, %i.jf
  %i.kf = fadd fast <4 x float> %i.kd, %i.ke
  %i.kg = fmul fast <4 x float> %i.jx, %i.jg
  %i.kh = fadd fast <4 x float> %i.kf, %i.kg
  %i.ki = fmul fast <4 x float> %i.jz, %i.jh
  %i.kj = fadd fast <4 x float> %i.kh, %i.ki
  %i.kk = fmul fast <4 x float> %i.kb, %i.ji
  %i.kl = fadd fast <4 x float> %i.kj, %i.kk
  %i.km = load <4 x float>, ptr %i.bz, align 16, !tbaa !87 ; 2 uses
  %i.kn = load <4 x float>, ptr %i.ca, align 16, !tbaa !87 ; 2 uses
  %i.ko = load <4 x float>, ptr %i.cb, align 16, !tbaa !87 ; 2 uses
  %i.kp = load <4 x float>, ptr %i.cc, align 16, !tbaa !87 ; 2 uses
  %i.kq = load <4 x float>, ptr %i.cd, align 16, !tbaa !87 ; 2 uses
  %i.kr = fmul fast <4 x float> %i.km, %i.jt
  %i.ks = fadd fast <4 x float> %i.js, %i.kr
  %i.kt = fmul fast <4 x float> %i.kn, %i.jv
  %i.ku = fadd fast <4 x float> %i.ks, %i.kt
  %i.kv = fmul fast <4 x float> %i.ko, %i.jx
  %i.kw = fadd fast <4 x float> %i.ku, %i.kv
  %i.kx = fmul fast <4 x float> %i.kp, %i.jz
  %i.ky = fadd fast <4 x float> %i.kw, %i.kx
  %i.kz = fmul fast <4 x float> %i.kq, %i.kb
  %i.la = fadd fast <4 x float> %i.ky, %i.kz
  %i.lb = load <4 x float>, ptr %.1183494, align 16, !tbaa !87
  %i.lc = getelementptr inbounds nuw i8, ptr %.1183494, i64 16 ; 3 uses
  %i.ld = load <4 x float>, ptr %i.lc, align 16, !tbaa !87
  %i.le = getelementptr inbounds nuw i8, ptr %.1183494, i64 32
  %i.lf = load <4 x float>, ptr %i.le, align 16, !tbaa !87
  %i.lg = getelementptr inbounds nuw i8, ptr %.1183494, i64 48
  %i.lh = load <4 x float>, ptr %i.lg, align 16, !tbaa !87
  %i.li = getelementptr inbounds nuw i8, ptr %.1183494, i64 64
  %i.lj = load <4 x float>, ptr %i.li, align 16, !tbaa !87
  %i.lk = fmul fast <4 x float> %i.lb, %i.km
  %i.ll = fadd fast <4 x float> %i.kl, %i.lk
  %i.lm = fmul fast <4 x float> %i.ld, %i.kn
  %i.ln = fadd fast <4 x float> %i.ll, %i.lm
  %i.lo = fmul fast <4 x float> %i.lf, %i.ko
  %i.lp = fadd fast <4 x float> %i.ln, %i.lo
  %i.lq = fmul fast <4 x float> %i.lh, %i.kp
  %i.lr = fadd fast <4 x float> %i.lp, %i.lq
  %i.ls = fmul fast <4 x float> %i.lj, %i.kq
  %i.lt = fadd fast <4 x float> %i.lr, %i.ls
  store <4 x float> %i.la, ptr %.1205487, align 16, !tbaa !87
  store <4 x float> %i.lt, ptr %.1203488, align 16, !tbaa !87
  %i.lu = getelementptr inbounds nuw i8, ptr %.1205487, i64 16 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.1203488, i64 16 ; 2 uses
  %i.lw = add nuw nsw i32 %.0180495, 1            ; 2 uses
  %i.lx = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.ly = icmp slt i32 %i.lw, %i.lx
  br i1 %i.ly, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !205

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %7, align 4, !tbaa !69
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader485
  %i.lz = phi i32 [ %i.eu, %.preheader485 ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %i.ma = phi i32 [ %i.ev, %.preheader485 ], [ %i.lx, %._crit_edge.loopexit ] ; 2 uses
  %.1205.lcssa = phi ptr [ %.0204504, %.preheader485 ], [ %i.lu, %._crit_edge.loopexit ]
  %.1203.lcssa = phi ptr [ %.0202505, %.preheader485 ], [ %i.lv, %._crit_edge.loopexit ]
  %.1199.lcssa = phi ptr [ %.0198506, %.preheader485 ], [ %i.ey, %._crit_edge.loopexit ]
  %.1195.lcssa = phi ptr [ %.0194507, %.preheader485 ], [ %i.fw, %._crit_edge.loopexit ]
  %.1191.lcssa = phi ptr [ %.0190508, %.preheader485 ], [ %i.he, %._crit_edge.loopexit ]
  %.1187.lcssa = phi ptr [ %.0186509, %.preheader485 ], [ %i.im, %._crit_edge.loopexit ]
  %.1185.lcssa = phi ptr [ %.0184510, %.preheader485 ], [ %i.ju, %._crit_edge.loopexit ]
  %.1183.lcssa = phi ptr [ %.0182511, %.preheader485 ], [ %i.lc, %._crit_edge.loopexit ]
  %i.mb = load i32, ptr %9, align 4, !tbaa !69
  %i.mc = shl nsw i32 %i.mb, 2
  %i.md = add nsw i32 %i.mc, 16
  %i.me = sext i32 %i.md to i64                   ; 6 uses
  %i.mf = getelementptr inbounds [4 x i8], ptr %.1199.lcssa, i64 %i.me ; 2 uses
  %i.mg = getelementptr inbounds [4 x i8], ptr %.1195.lcssa, i64 %i.me ; 2 uses
  %i.mh = getelementptr inbounds [4 x i8], ptr %.1191.lcssa, i64 %i.me ; 2 uses
  %i.mi = getelementptr inbounds [4 x i8], ptr %.1187.lcssa, i64 %i.me ; 2 uses
  %i.mj = getelementptr inbounds [4 x i8], ptr %.1185.lcssa, i64 %i.me ; 2 uses
  %i.mk = getelementptr inbounds [4 x i8], ptr %.1183.lcssa, i64 %i.me
  %i.ml = shl nsw i32 %i.ma, 2
  %i.mm = sext i32 %i.ml to i64                   ; 2 uses
  %i.mn = getelementptr inbounds [4 x i8], ptr %.1205.lcssa, i64 %i.mm ; 2 uses
  %i.mo = getelementptr inbounds [4 x i8], ptr %.1203.lcssa, i64 %i.mm
  %i.mp = add nuw nsw i32 %.0181512, 2            ; 3 uses
  %i.mq = or disjoint i32 %i.mp, 1
  %i.mr = icmp slt i32 %i.mq, %i.lz
  br i1 %i.mr, label %.preheader485, label %.preheader486, !llvm.loop !206

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge534
  %i.ms = phi i32 [ %i.rp, %._crit_edge534 ], [ %i.ds, %.preheader.lr.ph ]
  %i.mt = phi i32 [ %i.rq, %._crit_edge534 ], [ %i.es, %.preheader.lr.ph ] ; 2 uses
  %.1547 = phi i32 [ %i.rw, %._crit_edge534 ], [ %.0181.lcssa, %.preheader.lr.ph ]
  %.2546 = phi ptr [ %i.rv, %._crit_edge534 ], [ %.0184.lcssa, %.preheader.lr.ph ] ; 2 uses
  %.2188545 = phi ptr [ %i.ru, %._crit_edge534 ], [ %.0186.lcssa, %.preheader.lr.ph ] ; 2 uses
  %.2192544 = phi ptr [ %i.rt, %._crit_edge534 ], [ %.0190.lcssa, %.preheader.lr.ph ] ; 2 uses
  %.2196543 = phi ptr [ %i.rs, %._crit_edge534 ], [ %.0194.lcssa, %.preheader.lr.ph ] ; 2 uses
  %.2200542 = phi ptr [ %i.rr, %._crit_edge534 ], [ %.0198.lcssa, %.preheader.lr.ph ] ; 2 uses
  %.2206541 = phi ptr [ %.3207.lcssa, %._crit_edge534 ], [ %.0204.lcssa, %.preheader.lr.ph ] ; 2 uses
  %i.mu = icmp sgt i32 %i.mt, 0
  br i1 %i.mu, label %.lr.ph533, label %._crit_edge534

.lr.ph533:                                        ; preds = %.preheader, %.lr.ph533
  %.0532 = phi i32 [ %i.rm, %.lr.ph533 ], [ 0, %.preheader ]
  %.3531 = phi ptr [ %i.qo, %.lr.ph533 ], [ %.2546, %.preheader ] ; 5 uses
  %.3189530 = phi ptr [ %i.pq, %.lr.ph533 ], [ %.2188545, %.preheader ] ; 5 uses
  %.3193529 = phi ptr [ %i.os, %.lr.ph533 ], [ %.2192544, %.preheader ] ; 5 uses
  %.3197528 = phi ptr [ %i.nu, %.lr.ph533 ], [ %.2196543, %.preheader ] ; 5 uses
  %.3201527 = phi ptr [ %i.mw, %.lr.ph533 ], [ %.2200542, %.preheader ] ; 5 uses
  %.3207526 = phi ptr [ %i.rl, %.lr.ph533 ], [ %.2206541, %.preheader ] ; 2 uses
  %i.mv = load <4 x float>, ptr %.3201527, align 16, !tbaa !87
  %i.mw = getelementptr inbounds nuw i8, ptr %.3201527, i64 16 ; 3 uses
  %i.mx = load <4 x float>, ptr %i.mw, align 16, !tbaa !87
  %i.my = getelementptr inbounds nuw i8, ptr %.3201527, i64 32
  %i.mz = load <4 x float>, ptr %i.my, align 16, !tbaa !87
  %i.na = getelementptr inbounds nuw i8, ptr %.3201527, i64 48
  %i.nb = load <4 x float>, ptr %i.na, align 16, !tbaa !87
  %i.nc = getelementptr inbounds nuw i8, ptr %.3201527, i64 64
  %i.nd = load <4 x float>, ptr %i.nc, align 16, !tbaa !87
  %i.ne = load <4 x float>, ptr %i.an, align 16, !tbaa !87
  %i.nf = load <4 x float>, ptr %i.du, align 16, !tbaa !87
  %i.ng = load <4 x float>, ptr %i.dv, align 16, !tbaa !87
  %i.nh = load <4 x float>, ptr %i.dw, align 16, !tbaa !87
  %i.ni = load <4 x float>, ptr %i.dx, align 16, !tbaa !87
  %i.nj = fmul fast <4 x float> %i.ne, %i.mv
  %i.nk = fadd fast <4 x float> %i.ag, %i.nj
  %i.nl = fmul fast <4 x float> %i.nf, %i.mx
  %i.nm = fadd fast <4 x float> %i.nl, %i.nk
  %i.nn = fmul fast <4 x float> %i.ng, %i.mz
  %i.no = fadd fast <4 x float> %i.nm, %i.nn
  %i.np = fmul fast <4 x float> %i.nh, %i.nb
  %i.nq = fadd fast <4 x float> %i.no, %i.np
  %i.nr = fmul fast <4 x float> %i.ni, %i.nd
  %i.ns = fadd fast <4 x float> %i.nq, %i.nr
  %i.nt = load <4 x float>, ptr %.3197528, align 16, !tbaa !87
  %i.nu = getelementptr inbounds nuw i8, ptr %.3197528, i64 16 ; 3 uses
  %i.nv = load <4 x float>, ptr %i.nu, align 16, !tbaa !87
  %i.nw = getelementptr inbounds nuw i8, ptr %.3197528, i64 32
  %i.nx = load <4 x float>, ptr %i.nw, align 16, !tbaa !87
  %i.ny = getelementptr inbounds nuw i8, ptr %.3197528, i64 48
  %i.nz = load <4 x float>, ptr %i.ny, align 16, !tbaa !87
  %i.oa = getelementptr inbounds nuw i8, ptr %.3197528, i64 64
  %i.ob = load <4 x float>, ptr %i.oa, align 16, !tbaa !87
  %i.oc = load <4 x float>, ptr %i.dy, align 16, !tbaa !87
  %i.od = load <4 x float>, ptr %i.dz, align 16, !tbaa !87
  %i.oe = load <4 x float>, ptr %i.ea, align 16, !tbaa !87
  %i.of = load <4 x float>, ptr %i.eb, align 16, !tbaa !87
  %i.og = load <4 x float>, ptr %i.ec, align 16, !tbaa !87
  %i.oh = fmul fast <4 x float> %i.oc, %i.nt
  %i.oi = fadd fast <4 x float> %i.ns, %i.oh
  %i.oj = fmul fast <4 x float> %i.od, %i.nv
  %i.ok = fadd fast <4 x float> %i.oi, %i.oj
  %i.ol = fmul fast <4 x float> %i.oe, %i.nx
  %i.om = fadd fast <4 x float> %i.ok, %i.ol
  %i.on = fmul fast <4 x float> %i.of, %i.nz
  %i.oo = fadd fast <4 x float> %i.om, %i.on
  %i.op = fmul fast <4 x float> %i.og, %i.ob
  %i.oq = fadd fast <4 x float> %i.oo, %i.op
  %i.or = load <4 x float>, ptr %.3193529, align 16, !tbaa !87
  %i.os = getelementptr inbounds nuw i8, ptr %.3193529, i64 16 ; 3 uses
  %i.ot = load <4 x float>, ptr %i.os, align 16, !tbaa !87
  %i.ou = getelementptr inbounds nuw i8, ptr %.3193529, i64 32
  %i.ov = load <4 x float>, ptr %i.ou, align 16, !tbaa !87
  %i.ow = getelementptr inbounds nuw i8, ptr %.3193529, i64 48
  %i.ox = load <4 x float>, ptr %i.ow, align 16, !tbaa !87
  %i.oy = getelementptr inbounds nuw i8, ptr %.3193529, i64 64
  %i.oz = load <4 x float>, ptr %i.oy, align 16, !tbaa !87
  %i.pa = load <4 x float>, ptr %i.ed, align 16, !tbaa !87
  %i.pb = load <4 x float>, ptr %i.ee, align 16, !tbaa !87
  %i.pc = load <4 x float>, ptr %i.ef, align 16, !tbaa !87
  %i.pd = load <4 x float>, ptr %i.eg, align 16, !tbaa !87
  %i.pe = load <4 x float>, ptr %i.eh, align 16, !tbaa !87
  %i.pf = fmul fast <4 x float> %i.pa, %i.or
  %i.pg = fadd fast <4 x float> %i.oq, %i.pf
  %i.ph = fmul fast <4 x float> %i.pb, %i.ot
  %i.pi = fadd fast <4 x float> %i.pg, %i.ph
  %i.pj = fmul fast <4 x float> %i.pc, %i.ov
  %i.pk = fadd fast <4 x float> %i.pi, %i.pj
  %i.pl = fmul fast <4 x float> %i.pd, %i.ox
  %i.pm = fadd fast <4 x float> %i.pk, %i.pl
  %i.pn = fmul fast <4 x float> %i.pe, %i.oz
  %i.po = fadd fast <4 x float> %i.pm, %i.pn
  %i.pp = load <4 x float>, ptr %.3189530, align 16, !tbaa !87
  %i.pq = getelementptr inbounds nuw i8, ptr %.3189530, i64 16 ; 3 uses
  %i.pr = load <4 x float>, ptr %i.pq, align 16, !tbaa !87
  %i.ps = getelementptr inbounds nuw i8, ptr %.3189530, i64 32
  %i.pt = load <4 x float>, ptr %i.ps, align 16, !tbaa !87
  %i.pu = getelementptr inbounds nuw i8, ptr %.3189530, i64 48
  %i.pv = load <4 x float>, ptr %i.pu, align 16, !tbaa !87
  %i.pw = getelementptr inbounds nuw i8, ptr %.3189530, i64 64
  %i.px = load <4 x float>, ptr %i.pw, align 16, !tbaa !87
  %i.py = load <4 x float>, ptr %i.ei, align 16, !tbaa !87
  %i.pz = load <4 x float>, ptr %i.ej, align 16, !tbaa !87
  %i.qa = load <4 x float>, ptr %i.ek, align 16, !tbaa !87
  %i.qb = load <4 x float>, ptr %i.el, align 16, !tbaa !87
  %i.qc = load <4 x float>, ptr %i.em, align 16, !tbaa !87
  %i.qd = fmul fast <4 x float> %i.py, %i.pp
  %i.qe = fadd fast <4 x float> %i.po, %i.qd
  %i.qf = fmul fast <4 x float> %i.pz, %i.pr
  %i.qg = fadd fast <4 x float> %i.qe, %i.qf
  %i.qh = fmul fast <4 x float> %i.qa, %i.pt
  %i.qi = fadd fast <4 x float> %i.qg, %i.qh
  %i.qj = fmul fast <4 x float> %i.qb, %i.pv
  %i.qk = fadd fast <4 x float> %i.qi, %i.qj
  %i.ql = fmul fast <4 x float> %i.qc, %i.px
  %i.qm = fadd fast <4 x float> %i.qk, %i.ql
  %i.qn = load <4 x float>, ptr %.3531, align 16, !tbaa !87
  %i.qo = getelementptr inbounds nuw i8, ptr %.3531, i64 16 ; 3 uses
  %i.qp = load <4 x float>, ptr %i.qo, align 16, !tbaa !87
  %i.qq = getelementptr inbounds nuw i8, ptr %.3531, i64 32
  %i.qr = load <4 x float>, ptr %i.qq, align 16, !tbaa !87
  %i.qs = getelementptr inbounds nuw i8, ptr %.3531, i64 48
  %i.qt = load <4 x float>, ptr %i.qs, align 16, !tbaa !87
  %i.qu = getelementptr inbounds nuw i8, ptr %.3531, i64 64
  %i.qv = load <4 x float>, ptr %i.qu, align 16, !tbaa !87
  %i.qw = load <4 x float>, ptr %i.en, align 16, !tbaa !87
  %i.qx = load <4 x float>, ptr %i.eo, align 16, !tbaa !87
  %i.qy = load <4 x float>, ptr %i.ep, align 16, !tbaa !87
  %i.qz = load <4 x float>, ptr %i.eq, align 16, !tbaa !87
  %i.ra = load <4 x float>, ptr %i.er, align 16, !tbaa !87
  %i.rb = fmul fast <4 x float> %i.qw, %i.qn
  %i.rc = fadd fast <4 x float> %i.qm, %i.rb
  %i.rd = fmul fast <4 x float> %i.qx, %i.qp
  %i.re = fadd fast <4 x float> %i.rc, %i.rd
  %i.rf = fmul fast <4 x float> %i.qy, %i.qr
  %i.rg = fadd fast <4 x float> %i.re, %i.rf
  %i.rh = fmul fast <4 x float> %i.qz, %i.qt
  %i.ri = fadd fast <4 x float> %i.rg, %i.rh
  %i.rj = fmul fast <4 x float> %i.ra, %i.qv
  %i.rk = fadd fast <4 x float> %i.ri, %i.rj
  store <4 x float> %i.rk, ptr %.3207526, align 16, !tbaa !87
  %i.rl = getelementptr inbounds nuw i8, ptr %.3207526, i64 16 ; 2 uses
  %i.rm = add nuw nsw i32 %.0532, 1               ; 2 uses
  %i.rn = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.ro = icmp slt i32 %i.rm, %i.rn
  br i1 %i.ro, label %.lr.ph533, label %._crit_edge534.loopexit, !llvm.loop !207

._crit_edge534.loopexit:                          ; preds = %.lr.ph533
  %.pre588 = load i32, ptr %7, align 4, !tbaa !69
  br label %._crit_edge534

._crit_edge534:                                   ; preds = %._crit_edge534.loopexit, %.preheader
  %i.rp = phi i32 [ %i.ms, %.preheader ], [ %.pre588, %._crit_edge534.loopexit ] ; 2 uses
  %i.rq = phi i32 [ %i.mt, %.preheader ], [ %i.rn, %._crit_edge534.loopexit ]
  %.3207.lcssa = phi ptr [ %.2206541, %.preheader ], [ %i.rl, %._crit_edge534.loopexit ]
  %.3201.lcssa = phi ptr [ %.2200542, %.preheader ], [ %i.mw, %._crit_edge534.loopexit ]
  %.3197.lcssa = phi ptr [ %.2196543, %.preheader ], [ %i.nu, %._crit_edge534.loopexit ]
  %.3193.lcssa = phi ptr [ %.2192544, %.preheader ], [ %i.os, %._crit_edge534.loopexit ]
  %.3189.lcssa = phi ptr [ %.2188545, %.preheader ], [ %i.pq, %._crit_edge534.loopexit ]
  %.3.lcssa = phi ptr [ %.2546, %.preheader ], [ %i.qo, %._crit_edge534.loopexit ]
  %i.rr = getelementptr inbounds nuw i8, ptr %.3201.lcssa, i64 64
  %i.rs = getelementptr inbounds nuw i8, ptr %.3197.lcssa, i64 64
  %i.rt = getelementptr inbounds nuw i8, ptr %.3193.lcssa, i64 64
  %i.ru = getelementptr inbounds nuw i8, ptr %.3189.lcssa, i64 64
  %i.rv = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 64
  %i.rw = add nuw nsw i32 %.1547, 1               ; 2 uses
  %i.rx = icmp slt i32 %i.rw, %i.rp
  br i1 %i.rx, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !208

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge534, %.preheader.lr.ph, %.preheader486
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.u, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge550, label %_ZN4ncnn3Mat7channelEi.exit

._crit_edge550:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge550, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21convdw5x5s2_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !69     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.h = load i32, ptr %0, align 4, !tbaa !69     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !69
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !69
  %i.k = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %.not241 = icmp sgt i32 %i.k, %i.j
  br i1 %.not241, label %._crit_edge243, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = sext i32 %i.k to i64
  %i.t = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.s, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !21, !noalias !217
  %i.v = load i64, ptr %i.l, align 8, !tbaa !22, !noalias !217
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !217
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y
  %i.aa = load ptr, ptr %4, align 8, !tbaa !98    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL15convdw3x3s1_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined:bb.a
  %scevgep274 = getelementptr i8, ptr %i.l, i64 %i.aw
  %i.ax = and i32 %i.al, -2
  %i.ay = add nuw i32 %i.ax, 2                    ; 2 uses
  %i.az = add nsw i32 %i.j, 1
  %i.ba = icmp sgt i32 %i.s, 0
  %i.bb = sext i32 %i.s to i64                    ; 3 uses
  %i.bc = mul i64 %i.ap, %i.bb
  %i.bd = icmp sgt i32 %i.s, 0
  %i.be = add i32 %i.s, -1
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2                ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, 12               ; 3 uses
  %i.bi = mul nsw i64 %i.aj, 36
  %i.bj = add i32 %i.s, -1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2                ; 2 uses
  %i.bm = add nuw nsw i64 %i.bl, 4                ; 2 uses
  %i.bn = add nuw nsw i64 %i.bl, 12               ; 4 uses
  %i.bo = mul nsw i64 %i.aj, 36
  %i.bp = getelementptr i8, ptr %i.r, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 36
  %i.br = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bs = getelementptr i8, ptr %i.br, i64 36
  %i.bt = zext nneg i32 %i.s to i64               ; 2 uses
  %min.iters.check412 = icmp ult i32 %i.s, 4
  %n.vec414 = and i64 %i.bt, 2147483644           ; 4 uses
  %i.bu = trunc nuw nsw i64 %n.vec414 to i32
  %i.bv = sub nsw i32 %i.s, %i.bu
  %i.bw = shl nuw nsw i64 %n.vec414, 2            ; 6 uses
  %cmp.n457 = icmp eq i64 %n.vec414, %i.bt
  %i.bx = zext nneg i32 %i.s to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.s, 4
  %n.vec = and i64 %i.bx, 2147483644              ; 4 uses
  %i.by = trunc nuw nsw i64 %n.vec to i32
  %i.bz = sub nsw i32 %i.s, %i.by
  %i.ca = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bx
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i64 [ 0, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv278 = phi i64 [ %i.aj, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %indvars.iv275 = phi ptr [ %scevgep274, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep276, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv272 = phi ptr [ %scevgep271, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep273, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv269 = phi ptr [ %scevgep268, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep270, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv = phi ptr [ %scevgep, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep267, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.cb = mul nuw nsw i64 %indvar, 36
  %scevgep367 = getelementptr i8, ptr %i.bq, i64 %i.cb ; 2 uses
  %i.cc = mul nuw nsw i64 %indvar, 36
  %scevgep313 = getelementptr i8, ptr %i.bs, i64 %i.cc
  %.reass = mul i64 %factor.op.mul, %indvars.iv278
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  br i1 %.not170, label %_ZN4ncnn3MatD2Ev.exit171, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv278
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit171

_ZN4ncnn3MatD2Ev.exit171:                         ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.cg = phi fast float [ %i.cf, %bb.c ], [ 0.000000e+00, %_ZN4ncnn3Mat7channelEi.exit ] ; 5 uses
  %.idx = mul i64 %indvars.iv278, 36
  %i.ch = getelementptr i8, ptr %i.r, i64 %.idx   ; 21 uses
  %.reass249 = mul i64 %factor.op.mul248, %indvars.iv278
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass249 ; 5 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.aa ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ac ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 12 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 2 uses
  br i1 %i.ag, label %.lr.ph219, label %.preheader

.lr.ph219:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit171
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 32 ; 2 uses
  br i1 %i.ba, label %.lr.ph.us.preheader, label %.lr.ph219.split.preheader

.lr.ph219.split.preheader:                        ; preds = %.lr.ph219
  %scevgep277 = getelementptr i8, ptr %indvars.iv275, i64 %i.bc
  br label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph219
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.y
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ae
  %broadcast.splatinsert415 = insertelement <4 x float> poison, float %i.cg, i64 0
  %broadcast.splat416 = shufflevector <4 x float> %broadcast.splatinsert415, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0150218.us = phi i32 [ %i.hb, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.0151217.us = phi ptr [ %i.gy, %._crit_edge.us ], [ %i.cu, %.lr.ph.us.preheader ] ; 7 uses
  %.0153216.us = phi ptr [ %i.gx, %._crit_edge.us ], [ %i.ck, %.lr.ph.us.preheader ] ; 7 uses
  %.0155215.us = phi ptr [ %i.gw, %._crit_edge.us ], [ %i.cj, %.lr.ph.us.preheader ] ; 7 uses
  %.0159214.us = phi ptr [ %i.gv, %._crit_edge.us ], [ %i.ci, %.lr.ph.us.preheader ] ; 7 uses
  %.0163213.us = phi ptr [ %i.ha, %._crit_edge.us ], [ %i.ct, %.lr.ph.us.preheader ] ; 11 uses
  %.0165212.us = phi ptr [ %i.gz, %._crit_edge.us ], [ %i.cd, %.lr.ph.us.preheader ] ; 11 uses
  br i1 %min.iters.check412, label %scalar.ph411.preheader, label %vector.memcheck360

vector.memcheck360:                               ; preds = %.lr.ph.us
  %scevgep361 = getelementptr i8, ptr %.0165212.us, i64 %i.bm ; 6 uses
  %scevgep362 = getelementptr i8, ptr %.0163213.us, i64 %i.bm ; 6 uses
  %scevgep363 = getelementptr i8, ptr %.0151217.us, i64 %i.bn ; 2 uses
  %scevgep364 = getelementptr i8, ptr %.0153216.us, i64 %i.bn ; 2 uses
  %scevgep365 = getelementptr i8, ptr %.0155215.us, i64 %i.bn ; 2 uses
  %scevgep366 = getelementptr i8, ptr %.0159214.us, i64 %i.bn ; 2 uses
  %bound0368 = icmp ult ptr %.0165212.us, %scevgep362
  %bound1369 = icmp ult ptr %.0163213.us, %scevgep361
  %found.conflict370 = and i1 %bound0368, %bound1369
  %bound0371 = icmp ult ptr %.0165212.us, %scevgep363
  %bound1372 = icmp ult ptr %.0151217.us, %scevgep361
  %found.conflict373 = and i1 %bound0371, %bound1372
  %conflict.rdx374 = or i1 %found.conflict370, %found.conflict373
  %bound0375 = icmp ult ptr %.0165212.us, %scevgep364
  %bound1376 = icmp ult ptr %.0153216.us, %scevgep361
  %found.conflict377 = and i1 %bound0375, %bound1376
  %conflict.rdx378 = or i1 %conflict.rdx374, %found.conflict377
  %bound0379 = icmp ult ptr %.0165212.us, %scevgep365
  %bound1380 = icmp ult ptr %.0155215.us, %scevgep361
  %found.conflict381 = and i1 %bound0379, %bound1380
  %conflict.rdx382 = or i1 %conflict.rdx378, %found.conflict381
  %bound0383 = icmp ult ptr %.0165212.us, %scevgep366
  %bound1384 = icmp ult ptr %.0159214.us, %scevgep361
  %found.conflict385 = and i1 %bound0383, %bound1384
  %conflict.rdx386 = or i1 %conflict.rdx382, %found.conflict385
  %bound0387 = icmp ult ptr %.0165212.us, %scevgep367
  %bound1388 = icmp ult ptr %i.ch, %scevgep361
  %found.conflict389 = and i1 %bound0387, %bound1388
  %conflict.rdx390 = or i1 %conflict.rdx386, %found.conflict389
  %bound0391 = icmp ult ptr %.0163213.us, %scevgep363
  %bound1392 = icmp ult ptr %.0151217.us, %scevgep362
  %found.conflict393 = and i1 %bound0391, %bound1392
  %conflict.rdx394 = or i1 %conflict.rdx390, %found.conflict393
  %bound0395 = icmp ult ptr %.0163213.us, %scevgep364
  %bound1396 = icmp ult ptr %.0153216.us, %scevgep362
  %found.conflict397 = and i1 %bound0395, %bound1396
  %conflict.rdx398 = or i1 %conflict.rdx394, %found.conflict397
  %bound0399 = icmp ult ptr %.0163213.us, %scevgep365
  %bound1400 = icmp ult ptr %.0155215.us, %scevgep362
  %found.conflict401 = and i1 %bound0399, %bound1400
  %conflict.rdx402 = or i1 %conflict.rdx398, %found.conflict401
  %bound0403 = icmp ult ptr %.0163213.us, %scevgep366
  %bound1404 = icmp ult ptr %.0159214.us, %scevgep362
  %found.conflict405 = and i1 %bound0403, %bound1404
  %conflict.rdx406 = or i1 %conflict.rdx402, %found.conflict405
  %bound0407 = icmp ult ptr %.0163213.us, %scevgep367
  %bound1408 = icmp ult ptr %i.ch, %scevgep362
  %found.conflict409 = and i1 %bound0407, %bound1408
  %conflict.rdx410 = or i1 %conflict.rdx406, %found.conflict409
  br i1 %conflict.rdx410, label %scalar.ph411.preheader, label %vector.ph413

vector.ph413:                                     ; preds = %vector.memcheck360
  %i.cv = getelementptr i8, ptr %.0151217.us, i64 %i.bw ; 2 uses
  %i.cw = getelementptr i8, ptr %.0153216.us, i64 %i.bw ; 2 uses
  %i.cx = getelementptr i8, ptr %.0155215.us, i64 %i.bw ; 2 uses
  %i.cy = getelementptr i8, ptr %.0159214.us, i64 %i.bw ; 2 uses
  %i.cz = getelementptr i8, ptr %.0163213.us, i64 %i.bw ; 2 uses
  %i.da = getelementptr i8, ptr %.0165212.us, i64 %i.bw ; 2 uses
  %i.db = load float, ptr %i.ch, align 4, !tbaa !45, !alias.scope !245
  %broadcast.splatinsert426 = insertelement <4 x float> poison, float %i.db, i64 0
  %broadcast.splat427 = shufflevector <4 x float> %broadcast.splatinsert426, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dc = load float, ptr %i.cn, align 4, !tbaa !45, !alias.scope !245
  %broadcast.splatinsert429 = insertelement <4 x float> poison, float %i.dc, i64 0
  %broadcast.splat430 = shufflevector <4 x float> %broadcast.splatinsert429, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dd = load float, ptr %i.co, align 4, !tbaa !45, !alias.scope !245
  %broadcast.splatinsert432 = insertelement <4 x float> poison, float %i.dd, i64 0
  %broadcast.splat433 = shufflevector <4 x float> %broadcast.splatinsert432, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.de = load float, ptr %i.cl, align 4, !tbaa !45, !alias.scope !245
  %broadcast.splatinsert435 = insertelement <4 x float> poison, float %i.de, i64 0
  %broadcast.splat436 = shufflevector <4 x float> %broadcast.splatinsert435, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.df = load float, ptr %i.cp, align 4, !tbaa !45, !alias.scope !245
  %broadcast.splatinsert438 = insertelement <4 x float> poison, float %i.df, i64 0
  %broadcast.splat439 = shufflevector <4 x float> %broadcast.splatinsert438, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dg = load float, ptr %i.cq, align 4, !tbaa !45, !alias.scope !245
  %broadcast.splatinsert441 = insertelement <4 x float> poison, float %i.dg, i64 0
  %broadcast.splat442 = shufflevector <4 x float> %broadcast.splatinsert441, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dh = load float, ptr %i.cm, align 4, !tbaa !45, !alias.scope !245
  %broadcast.splatinsert444 = insertelement <4 x float> poison, float %i.dh, i64 0
  %broadcast.splat445 = shufflevector <4 x float> %broadcast.splatinsert444, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.di = load float, ptr %i.cr, align 4, !tbaa !45, !alias.scope !245
  %broadcast.splatinsert447 = insertelement <4 x float> poison, float %i.di, i64 0
  %broadcast.splat448 = shufflevector <4 x float> %broadcast.splatinsert447, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dj = load float, ptr %i.cs, align 4, !tbaa !45, !alias.scope !245
  %broadcast.splatinsert450 = insertelement <4 x float> poison, float %i.dj, i64 0
  %broadcast.splat451 = shufflevector <4 x float> %broadcast.splatinsert450, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph413
  %index418 = phi i64 [ 0, %vector.ph413 ], [ %index.next455, %vector.body417 ] ; 2 uses
  %i.dk = shl i64 %index418, 2                    ; 6 uses
  %next.gep419 = getelementptr i8, ptr %.0151217.us, i64 %i.dk ; 3 uses
  %next.gep420 = getelementptr i8, ptr %.0153216.us, i64 %i.dk ; 3 uses
  %next.gep421 = getelementptr i8, ptr %.0155215.us, i64 %i.dk ; 3 uses
  %next.gep422 = getelementptr i8, ptr %.0159214.us, i64 %i.dk ; 3 uses
  %next.gep423 = getelementptr i8, ptr %.0163213.us, i64 %i.dk
  %next.gep424 = getelementptr i8, ptr %.0165212.us, i64 %i.dk
  %wide.load425 = load <4 x float>, ptr %next.gep422, align 4, !tbaa !45, !alias.scope !246
  %i.dl = fmul fast <4 x float> %broadcast.splat427, %wide.load425
  %i.dm = fadd fast <4 x float> %broadcast.splat416, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %next.gep422, i64 4
  %wide.load428 = load <4 x float>, ptr %i.dn, align 4, !tbaa !45, !alias.scope !246
  %i.do = fmul fast <4 x float> %broadcast.splat430, %wide.load428
  %i.dp = fadd fast <4 x float> %i.do, %i.dm
  %i.dq = getelementptr inbounds nuw i8, ptr %next.gep422, i64 8
  %wide.load431 = load <4 x float>, ptr %i.dq, align 4, !tbaa !45, !alias.scope !246
  %i.dr = fmul fast <4 x float> %broadcast.splat433, %wide.load431
  %i.ds = fadd fast <4 x float> %i.dp, %i.dr
  %wide.load434 = load <4 x float>, ptr %next.gep421, align 4, !tbaa !45, !alias.scope !247 ; 2 uses
  %i.dt = fmul fast <4 x float> %broadcast.splat436, %wide.load434
  %i.du = fadd fast <4 x float> %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %next.gep421, i64 4
  %wide.load437 = load <4 x float>, ptr %i.dv, align 4, !tbaa !45, !alias.scope !247 ; 2 uses
  %i.dw = fmul fast <4 x float> %broadcast.splat439, %wide.load437
  %i.dx = fadd fast <4 x float> %i.du, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %next.gep421, i64 8
  %wide.load440 = load <4 x float>, ptr %i.dy, align 4, !tbaa !45, !alias.scope !247 ; 2 uses
  %i.dz = fmul fast <4 x float> %broadcast.splat442, %wide.load440
  %i.ea = fadd fast <4 x float> %i.dx, %i.dz
  %wide.load443 = load <4 x float>, ptr %next.gep420, align 4, !tbaa !45, !alias.scope !248 ; 2 uses
  %i.eb = fmul fast <4 x float> %broadcast.splat445, %wide.load443
  %i.ec = fadd fast <4 x float> %i.ea, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %next.gep420, i64 4
  %wide.load446 = load <4 x float>, ptr %i.ed, align 4, !tbaa !45, !alias.scope !248 ; 2 uses
  %i.ee = fmul fast <4 x float> %broadcast.splat448, %wide.load446
  %i.ef = fadd fast <4 x float> %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %next.gep420, i64 8
  %wide.load449 = load <4 x float>, ptr %i.eg, align 4, !tbaa !45, !alias.scope !248 ; 2 uses
  %i.eh = fmul fast <4 x float> %broadcast.splat451, %wide.load449
  %i.ei = fadd fast <4 x float> %i.ef, %i.eh
  %i.ej = fmul fast <4 x float> %wide.load434, %broadcast.splat427
  %i.ek = fadd fast <4 x float> %broadcast.splat416, %i.ej
  %i.el = fmul fast <4 x float> %wide.load437, %broadcast.splat430
  %i.em = fadd fast <4 x float> %i.el, %i.ek
  %i.en = fmul fast <4 x float> %wide.load440, %broadcast.splat433
  %i.eo = fadd fast <4 x float> %i.em, %i.en
  %i.ep = fmul fast <4 x float> %wide.load443, %broadcast.splat436
  %i.eq = fadd fast <4 x float> %i.eo, %i.ep
  %i.er = fmul fast <4 x float> %wide.load446, %broadcast.splat439
  %i.es = fadd fast <4 x float> %i.eq, %i.er
  %i.et = fmul fast <4 x float> %wide.load449, %broadcast.splat442
  %i.eu = fadd fast <4 x float> %i.es, %i.et
  %wide.load452 = load <4 x float>, ptr %next.gep419, align 4, !tbaa !45, !alias.scope !249
  %i.ev = fmul fast <4 x float> %wide.load452, %broadcast.splat445
  %i.ew = fadd fast <4 x float> %i.eu, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %next.gep419, i64 4
  %wide.load453 = load <4 x float>, ptr %i.ex, align 4, !tbaa !45, !alias.scope !249
  %i.ey = fmul fast <4 x float> %wide.load453, %broadcast.splat448
  %i.ez = fadd fast <4 x float> %i.ew, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %next.gep419, i64 8
  %wide.load454 = load <4 x float>, ptr %i.fa, align 4, !tbaa !45, !alias.scope !249
  %i.fb = fmul fast <4 x float> %wide.load454, %broadcast.splat451
  %i.fc = fadd fast <4 x float> %i.ez, %i.fb
  store <4 x float> %i.ei, ptr %next.gep424, align 4, !tbaa !45, !alias.scope !250, !noalias !251
  store <4 x float> %i.fc, ptr %next.gep423, align 4, !tbaa !45, !alias.scope !252, !noalias !253
  %index.next455 = add nuw i64 %index418, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next455, %n.vec414
  br i1 %i.fd, label %middle.block456, label %vector.body417, !llvm.loop !231

middle.block456:                                  ; preds = %vector.body417
  br i1 %cmp.n457, label %._crit_edge.us, label %scalar.ph411.preheader

scalar.ph411.preheader:                           ; preds = %vector.memcheck360, %.lr.ph.us, %middle.block456
  %.0149206.us.ph = phi i32 [ %i.s, %vector.memcheck360 ], [ %i.s, %.lr.ph.us ], [ %i.bv, %middle.block456 ]
  %.1152205.us.ph = phi ptr [ %.0151217.us, %vector.memcheck360 ], [ %.0151217.us, %.lr.ph.us ], [ %i.cv, %middle.block456 ]
  %.1154204.us.ph = phi ptr [ %.0153216.us, %vector.memcheck360 ], [ %.0153216.us, %.lr.ph.us ], [ %i.cw, %middle.block456 ]
  %.1156203.us.ph = phi ptr [ %.0155215.us, %vector.memcheck360 ], [ %.0155215.us, %.lr.ph.us ], [ %i.cx, %middle.block456 ]
  %.1160202.us.ph = phi ptr [ %.0159214.us, %vector.memcheck360 ], [ %.0159214.us, %.lr.ph.us ], [ %i.cy, %middle.block456 ]
  %.1164201.us.ph = phi ptr [ %.0163213.us, %vector.memcheck360 ], [ %.0163213.us, %.lr.ph.us ], [ %i.cz, %middle.block456 ]
  %.1166200.us.ph = phi ptr [ %.0165212.us, %vector.memcheck360 ], [ %.0165212.us, %.lr.ph.us ], [ %i.da, %middle.block456 ]
  br label %scalar.ph411

scalar.ph411:                                     ; preds = %scalar.ph411.preheader, %scalar.ph411
  %.0149206.us = phi i32 [ %i.gt, %scalar.ph411 ], [ %.0149206.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %.1152205.us = phi ptr [ %i.fu, %scalar.ph411 ], [ %.1152205.us.ph, %scalar.ph411.preheader ] ; 3 uses
  %.1154204.us = phi ptr [ %i.fi, %scalar.ph411 ], [ %.1154204.us.ph, %scalar.ph411.preheader ] ; 3 uses
  %.1156203.us = phi ptr [ %i.fh, %scalar.ph411 ], [ %.1156203.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %.1160202.us = phi ptr [ %i.fe, %scalar.ph411 ], [ %.1160202.us.ph, %scalar.ph411.preheader ] ; 3 uses
  %.1164201.us = phi ptr [ %i.gs, %scalar.ph411 ], [ %.1164201.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %.1166200.us = phi ptr [ %i.gr, %scalar.ph411 ], [ %.1166200.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.1160202.us, i64 4 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.1160202.us, i64 8
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !45
  %i.fh = getelementptr inbounds nuw i8, ptr %.1156203.us, i64 4 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.1154204.us, i64 4 ; 3 uses
  %i.fj = load <2 x float>, ptr %.1160202.us, align 4, !tbaa !45
  %i.fk = load <2 x float>, ptr %.1156203.us, align 4, !tbaa !45 ; 2 uses
  %i.fl = load <2 x float>, ptr %.1154204.us, align 4, !tbaa !45 ; 2 uses
  %i.fm = load <8 x float>, ptr %i.ch, align 4, !tbaa !45 ; 4 uses
  %i.fn = shufflevector <2 x float> %i.fk, <2 x float> %i.fl, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 2, i32 3>
  %i.fo = insertelement <8 x float> %i.fn, float %i.fg, i64 2
  %i.fp = shufflevector <2 x float> %i.fk, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.fq = shufflevector <8 x float> %i.fo, <8 x float> %i.fp, <8 x i32> <i32 poison, i32 poison, i32 2, i32 8, i32 4, i32 poison, i32 6, i32 7>
  %i.fr = shufflevector <2 x float> %i.fj, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fs = getelementptr inbounds nuw i8, ptr %.1154204.us, i64 8
  %i.ft = load float, ptr %i.cs, align 4, !tbaa !45 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.1152205.us, i64 4 ; 2 uses
  %i.fv = load <2 x float>, ptr %i.fh, align 4, !tbaa !45 ; 2 uses
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fx = shufflevector <8 x float> %i.fq, <8 x float> %i.fw, <8 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 4, i32 9, i32 6, i32 7>
  %i.fy = shufflevector <8 x float> %i.fr, <8 x float> %i.fx, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fz = fmul fast <8 x float> %i.fm, %i.fy
  %i.ga = load <2 x float>, ptr %i.fi, align 4, !tbaa !45
  %i.gb = load float, ptr %i.fs, align 4, !tbaa !45
  %i.gc = fmul fast float %i.ft, %i.gb
  %op.rdx466 = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.gc, <8 x float> %i.fz)
  %op.rdx467 = fadd fast float %op.rdx466, %i.cg
  %i.gd = load <2 x float>, ptr %.1152205.us, align 4, !tbaa !45
  %i.ge = shufflevector <2 x float> %i.fl, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gf = shufflevector <8 x float> %i.fm, <8 x float> %i.ge, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <2 x float> %i.ga, <2 x float> %i.gd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gh = shufflevector <8 x float> %i.gf, <8 x float> %i.gg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gi = shufflevector <8 x float> %i.fp, <8 x float> %i.fm, <4 x i32> <i32 0, i32 poison, i32 poison, i32 11>
  %i.gj = shufflevector <2 x float> %i.fv, <2 x float> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gk = shufflevector <4 x float> %i.gi, <4 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gl = shufflevector <8 x float> %i.gk, <8 x float> %i.gj, <8 x i32> <i32 0, i32 9, i32 10, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gm = shufflevector <8 x float> %i.gl, <8 x float> %i.fm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.gn = fmul fast <8 x float> %i.gh, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %.1152205.us, i64 8
  %i.gp = load float, ptr %i.go, align 4, !tbaa !45
  %i.gq = fmul fast float %i.gp, %i.ft
  %op.rdx468 = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.gq, <8 x float> %i.gn)
  %op.rdx469 = fadd fast float %op.rdx468, %i.cg
  store float %op.rdx467, ptr %.1166200.us, align 4, !tbaa !45
  store float %op.rdx469, ptr %.1164201.us, align 4, !tbaa !45
  %i.gr = getelementptr inbounds nuw i8, ptr %.1166200.us, i64 4 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.1164201.us, i64 4 ; 2 uses
  %i.gt = add nsw i32 %.0149206.us, -1
  %i.gu = icmp sgt i32 %.0149206.us, 1
  br i1 %i.gu, label %scalar.ph411, label %._crit_edge.us, !llvm.loop !232

._crit_edge.us:                                   ; preds = %scalar.ph411, %middle.block456
  %.lcssa303 = phi ptr [ %i.cy, %middle.block456 ], [ %i.fe, %scalar.ph411 ]
  %.lcssa302 = phi ptr [ %i.cx, %middle.block456 ], [ %i.fh, %scalar.ph411 ]
  %.lcssa301 = phi ptr [ %i.cw, %middle.block456 ], [ %i.fi, %scalar.ph411 ]
  %.lcssa300 = phi ptr [ %i.cv, %middle.block456 ], [ %i.fu, %scalar.ph411 ]
  %.lcssa299 = phi ptr [ %i.da, %middle.block456 ], [ %i.gr, %scalar.ph411 ]
  %.lcssa = phi ptr [ %i.cz, %middle.block456 ], [ %i.gs, %scalar.ph411 ]
  %i.gv = getelementptr inbounds [4 x i8], ptr %.lcssa303, i64 %i.ai ; 2 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %.lcssa302, i64 %i.ai ; 2 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %.lcssa301, i64 %i.ai ; 2 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %.lcssa300, i64 %i.ai
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.lcssa299, i64 %i.bb ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.bb
  %i.hb = add nuw nsw i32 %.0150218.us, 2         ; 2 uses
  %i.hc = or disjoint i32 %i.hb, 1
  %i.hd = icmp slt i32 %i.hc, %i.af
  br i1 %i.hd, label %.lr.ph.us, label %.preheader, !llvm.loop !233

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph219.split.preheader, %_ZN4ncnn3MatD2Ev.exit171
  %.0165.lcssa = phi ptr [ %i.cd, %_ZN4ncnn3MatD2Ev.exit171 ], [ %scevgep277, %.lr.ph219.split.preheader ], [ %i.gz, %._crit_edge.us ]
  %.0159.lcssa = phi ptr [ %i.ci, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv, %.lr.ph219.split.preheader ], [ %i.gv, %._crit_edge.us ]
  %.0155.lcssa = phi ptr [ %i.cj, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv269, %.lr.ph219.split.preheader ], [ %i.gw, %._crit_edge.us ]
  %.0153.lcssa = phi ptr [ %i.ck, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv272, %.lr.ph219.split.preheader ], [ %i.gx, %._crit_edge.us ]
  %.0150.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit171 ], [ %i.ay, %.lr.ph219.split.preheader ], [ %i.ay, %._crit_edge.us ] ; 2 uses
  %i.he = icmp slt i32 %.0150.lcssa, %i.af
  br i1 %i.he, label %.lr.ph244, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph244:                                        ; preds = %.preheader
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ch, i64 32 ; 2 uses
  br i1 %i.bd, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph244
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cg, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.1243 = phi i32 [ %i.kc, %._crit_edge ], [ %.0150.lcssa, %.lr.ph.preheader ]
  %.2242 = phi ptr [ %i.kb, %._crit_edge ], [ %.0153.lcssa, %.lr.ph.preheader ] ; 6 uses
  %.2157241 = phi ptr [ %i.ka, %._crit_edge ], [ %.0155.lcssa, %.lr.ph.preheader ] ; 6 uses
  %.2161240 = phi ptr [ %i.jz, %._crit_edge ], [ %.0159.lcssa, %.lr.ph.preheader ] ; 6 uses
  %.2167239 = phi ptr [ %.lcssa308, %._crit_edge ], [ %.0165.lcssa, %.lr.ph.preheader ] ; 9 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.hl = getelementptr i8, ptr %.2167239, i64 %i.bg
  %scevgep309 = getelementptr i8, ptr %i.hl, i64 4 ; 4 uses
  %scevgep310 = getelementptr i8, ptr %.2242, i64 %i.bh
  %scevgep311 = getelementptr i8, ptr %.2157241, i64 %i.bh
  %scevgep312 = getelementptr i8, ptr %.2161240, i64 %i.bh
  %bound0 = icmp ult ptr %.2167239, %scevgep310
  %bound1 = icmp ult ptr %.2242, %scevgep309
  %found.conflict = and i1 %bound0, %bound1
  %bound0314 = icmp ult ptr %.2167239, %scevgep311
  %bound1315 = icmp ult ptr %.2157241, %scevgep309
  %found.conflict316 = and i1 %bound0314, %bound1315
  %conflict.rdx = or i1 %found.conflict, %found.conflict316
  %bound0317 = icmp ult ptr %.2167239, %scevgep312
  %bound1318 = icmp ult ptr %.2161240, %scevgep309
  %found.conflict319 = and i1 %bound0317, %bound1318
  %conflict.rdx320 = or i1 %conflict.rdx, %found.conflict319
  %bound0321 = icmp ult ptr %.2167239, %scevgep313
  %bound1322 = icmp ult ptr %i.ch, %scevgep309
  %found.conflict323 = and i1 %bound0321, %bound1322
  %conflict.rdx324 = or i1 %conflict.rdx320, %found.conflict323
  br i1 %conflict.rdx324, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hm = getelementptr i8, ptr %.2242, i64 %i.ca ; 2 uses
  %i.hn = getelementptr i8, ptr %.2157241, i64 %i.ca ; 2 uses
  %i.ho = getelementptr i8, ptr %.2161240, i64 %i.ca ; 2 uses
  %i.hp = getelementptr i8, ptr %.2167239, i64 %i.ca ; 2 uses
  %i.hq = load float, ptr %i.ch, align 4, !tbaa !45, !alias.scope !254
  %broadcast.splatinsert328 = insertelement <4 x float> poison, float %i.hq, i64 0
  %broadcast.splat329 = shufflevector <4 x float> %broadcast.splatinsert328, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hr = load float, ptr %i.hf, align 4, !tbaa !45, !alias.scope !254
  %broadcast.splatinsert331 = insertelement <4 x float> poison, float %i.hr, i64 0
  %broadcast.splat332 = shufflevector <4 x float> %broadcast.splatinsert331, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hs = load float, ptr %i.hg, align 4, !tbaa !45, !alias.scope !254
  %broadcast.splatinsert334 = insertelement <4 x float> poison, float %i.hs, i64 0
  %broadcast.splat335 = shufflevector <4 x float> %broadcast.splatinsert334, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ht = load float, ptr %i.cl, align 4, !tbaa !45, !alias.scope !254
  %broadcast.splatinsert337 = insertelement <4 x float> poison, float %i.ht, i64 0
  %broadcast.splat338 = shufflevector <4 x float> %broadcast.splatinsert337, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hu = load float, ptr %i.hh, align 4, !tbaa !45, !alias.scope !254
  %broadcast.splatinsert340 = insertelement <4 x float> poison, float %i.hu, i64 0
  %broadcast.splat341 = shufflevector <4 x float> %broadcast.splatinsert340, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hv = load float, ptr %i.hi, align 4, !tbaa !45, !alias.scope !254
  %broadcast.splatinsert343 = insertelement <4 x float> poison, float %i.hv, i64 0
  %broadcast.splat344 = shufflevector <4 x float> %broadcast.splatinsert343, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hw = load float, ptr %i.cm, align 4, !tbaa !45, !alias.scope !254
  %broadcast.splatinsert346 = insertelement <4 x float> poison, float %i.hw, i64 0
  %broadcast.splat347 = shufflevector <4 x float> %broadcast.splatinsert346, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hx = load float, ptr %i.hj, align 4, !tbaa !45, !alias.scope !254
  %broadcast.splatinsert349 = insertelement <4 x float> poison, float %i.hx, i64 0
  %broadcast.splat350 = shufflevector <4 x float> %broadcast.splatinsert349, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hy = load float, ptr %i.hk, align 4, !tbaa !45, !alias.scope !254
  %broadcast.splatinsert352 = insertelement <4 x float> poison, float %i.hy, i64 0
  %broadcast.splat353 = shufflevector <4 x float> %broadcast.splatinsert352, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hz = shl i64 %index, 2                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.2242, i64 %i.hz ; 3 uses
  %next.gep325 = getelementptr i8, ptr %.2157241, i64 %i.hz ; 3 uses
  %next.gep326 = getelementptr i8, ptr %.2161240, i64 %i.hz ; 3 uses
  %next.gep327 = getelementptr i8, ptr %.2167239, i64 %i.hz
  %wide.load = load <4 x float>, ptr %next.gep326, align 4, !tbaa !45, !alias.scope !255
  %i.ia = fmul fast <4 x float> %broadcast.splat329, %wide.load
  %i.ib = fadd fast <4 x float> %broadcast.splat, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %next.gep326, i64 4
  %wide.load330 = load <4 x float>, ptr %i.ic, align 4, !tbaa !45, !alias.scope !255
  %i.id = fmul fast <4 x float> %broadcast.splat332, %wide.load330
  %i.ie = fadd fast <4 x float> %i.id, %i.ib
  %i.if = getelementptr inbounds nuw i8, ptr %next.gep326, i64 8
  %wide.load333 = load <4 x float>, ptr %i.if, align 4, !tbaa !45, !alias.scope !255
  %i.ig = fmul fast <4 x float> %broadcast.splat335, %wide.load333
  %i.ih = fadd fast <4 x float> %i.ie, %i.ig
  %wide.load336 = load <4 x float>, ptr %next.gep325, align 4, !tbaa !45, !alias.scope !256
  %i.ii = fmul fast <4 x float> %broadcast.splat338, %wide.load336
  %i.ij = fadd fast <4 x float> %i.ih, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %next.gep325, i64 4
  %wide.load339 = load <4 x float>, ptr %i.ik, align 4, !tbaa !45, !alias.scope !256
  %i.il = fmul fast <4 x float> %broadcast.splat341, %wide.load339
  %i.im = fadd fast <4 x float> %i.ij, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %next.gep325, i64 8
  %wide.load342 = load <4 x float>, ptr %i.in, align 4, !tbaa !45, !alias.scope !256
  %i.io = fmul fast <4 x float> %broadcast.splat344, %wide.load342
  %i.ip = fadd fast <4 x float> %i.im, %i.io
  %wide.load345 = load <4 x float>, ptr %next.gep, align 4, !tbaa !45, !alias.scope !257
  %i.iq = fmul fast <4 x float> %broadcast.splat347, %wide.load345
  %i.ir = fadd fast <4 x float> %i.ip, %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %wide.load348 = load <4 x float>, ptr %i.is, align 4, !tbaa !45, !alias.scope !257
  %i.it = fmul fast <4 x float> %broadcast.splat350, %wide.load348
  %i.iu = fadd fast <4 x float> %i.ir, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %wide.load351 = load <4 x float>, ptr %i.iv, align 4, !tbaa !45, !alias.scope !257
  %i.iw = fmul fast <4 x float> %broadcast.splat353, %wide.load351
  %i.ix = fadd fast <4 x float> %i.iu, %i.iw
  store <4 x float> %i.ix, ptr %next.gep327, align 4, !tbaa !45, !alias.scope !258, !noalias !259
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iy = icmp eq i64 %index.next, %n.vec
  br i1 %i.iy, label %middle.block, label %vector.body, !llvm.loop !240

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.hm, i64 -4
  %ind.escape354 = getelementptr i8, ptr %i.hn, i64 -4
  %ind.escape355 = getelementptr i8, ptr %i.ho, i64 -4
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.0148235.ph = phi i32 [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph ], [ %i.bz, %middle.block ]
  %.3234.ph = phi ptr [ %.2242, %vector.memcheck ], [ %.2242, %.lr.ph ], [ %i.hm, %middle.block ]
  %.3158233.ph = phi ptr [ %.2157241, %vector.memcheck ], [ %.2157241, %.lr.ph ], [ %i.hn, %middle.block ]
  %.3162232.ph = phi ptr [ %.2161240, %vector.memcheck ], [ %.2161240, %.lr.ph ], [ %i.ho, %middle.block ]
  %.3168231.ph = phi ptr [ %.2167239, %vector.memcheck ], [ %.2167239, %.lr.ph ], [ %i.hp, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0148235 = phi i32 [ %i.jx, %scalar.ph ], [ %.0148235.ph, %scalar.ph.preheader ] ; 2 uses
  %.3234 = phi ptr [ %i.je, %scalar.ph ], [ %.3234.ph, %scalar.ph.preheader ] ; 4 uses
  %.3158233 = phi ptr [ %i.jd, %scalar.ph ], [ %.3158233.ph, %scalar.ph.preheader ] ; 3 uses
  %.3162232 = phi ptr [ %i.iz, %scalar.ph ], [ %.3162232.ph, %scalar.ph.preheader ] ; 4 uses
  %.3168231 = phi ptr [ %i.jw, %scalar.ph ], [ %.3168231.ph, %scalar.ph.preheader ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.3162232, i64 4
  %i.ja = getelementptr inbounds nuw i8, ptr %.3162232, i64 8
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !45
  %i.jc = load float, ptr %.3158233, align 4, !tbaa !45
  %i.jd = getelementptr inbounds nuw i8, ptr %.3158233, i64 4 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.3234, i64 4
  %i.jf = load <2 x float>, ptr %.3162232, align 4, !tbaa !45
  %i.jg = load <2 x float>, ptr %i.jd, align 4, !tbaa !45
  %i.jh = load <2 x float>, ptr %.3234, align 4, !tbaa !45
  %i.ji = load <8 x float>, ptr %i.ch, align 4, !tbaa !45
  %i.jj = insertelement <8 x float> poison, float %i.jb, i64 2
  %i.jk = insertelement <8 x float> %i.jj, float %i.jc, i64 3
  %i.jl = shufflevector <2 x float> %i.jf, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jm = shufflevector <8 x float> %i.jl, <8 x float> %i.jk, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jn = shufflevector <2 x float> %i.jg, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jo = shufflevector <8 x float> %i.jm, <8 x float> %i.jn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.jp = shufflevector <2 x float> %i.jh, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jq = shufflevector <8 x float> %i.jo, <8 x float> %i.jp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.jr = fmul fast <8 x float> %i.ji, %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %.3234, i64 8
  %i.jt = load float, ptr %i.js, align 4, !tbaa !45
  %i.ju = load float, ptr %i.hk, align 4, !tbaa !45
  %i.jv = fmul fast float %i.ju, %i.jt
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.jv, <8 x float> %i.jr)
  %op.rdx465 = fadd fast float %op.rdx, %i.cg
  store float %op.rdx465, ptr %.3168231, align 4, !tbaa !45
  %i.jw = getelementptr inbounds nuw i8, ptr %.3168231, i64 4 ; 2 uses
  %i.jx = add nsw i32 %.0148235, -1
  %i.jy = icmp sgt i32 %.0148235, 1
  br i1 %i.jy, label %scalar.ph, label %._crit_edge, !llvm.loop !241

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.3234.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.3234, %scalar.ph ]
  %.3158233.lcssa = phi ptr [ %ind.escape354, %middle.block ], [ %.3158233, %scalar.ph ]
  %.3162232.lcssa = phi ptr [ %ind.escape355, %middle.block ], [ %.3162232, %scalar.ph ]
  %.lcssa308 = phi ptr [ %i.hp, %middle.block ], [ %i.jw, %scalar.ph ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.3162232.lcssa, i64 12
  %i.ka = getelementptr inbounds nuw i8, ptr %.3158233.lcssa, i64 12
  %i.kb = getelementptr inbounds nuw i8, ptr %.3234.lcssa, i64 12
  %i.kc = add nuw nsw i32 %.1243, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.kc, %i.af
  br i1 %exitcond.not, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph, !llvm.loop !242

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %.lr.ph244, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv278, 1 ; 2 uses
  %scevgep267 = getelementptr i8, ptr %indvars.iv, i64 %factor.op.mul248
  %scevgep270 = getelementptr i8, ptr %indvars.iv269, i64 %factor.op.mul248
  %scevgep273 = getelementptr i8, ptr %indvars.iv272, i64 %factor.op.mul248
  %scevgep276 = getelementptr i8, ptr %indvars.iv275, i64 %factor.op.mul
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond280.not = icmp eq i32 %i.az, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond280.not, label %._crit_edge247, label %_ZN4ncnn3Mat7channelEi.exit

._crit_edge247:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge247, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL15convdw3x3s2_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !69     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.h = load i32, ptr %0, align 4, !tbaa !69     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !69
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !69
  %i.k = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %.not125 = icmp sgt i32 %i.k, %i.j
  br i1 %.not125, label %._crit_edge127, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !21, !noalias !273
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22, !noalias !273
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !67, !noalias !273
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !98     ; 2 uses
  %.not81 = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %5, align 8, !tbaa !98     ; 2 uses
  %i.s = load ptr, ptr %6, align 8, !tbaa !21, !noalias !274
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !22, !noalias !274
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !67, !noalias !274
  %factor.op.mul128 = mul i64 %i.u, %i.w
  %i.x = load i32, ptr %7, align 4, !tbaa !69     ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i32 %i.x, 1
  %i.aa = sext i32 %i.z to i64
  %i.ab = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us, label %._crit_edge127

_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us:       ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph
  %i.ad = load i32, ptr %9, align 4, !tbaa !69    ; 7 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = load i32, ptr %10, align 4, !tbaa !69
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  br i1 %i.ae, label %_ZN4ncnn3Mat7channelEi.exit.us.us.preheader, label %._crit_edge127

_ZN4ncnn3Mat7channelEi.exit.us.us.preheader:      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us
  %i.ah = sext i32 %i.k to i64                    ; 2 uses
  %i.ai = add nsw i32 %i.j, 1
  %i.aj = add nsw i32 %i.ad, -1
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = shl nuw nsw i64 %i.ak, 3
  %i.an = add nuw nsw i64 %i.am, 12               ; 3 uses
  %i.ao = mul nsw i64 %i.ah, 36
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 36
  %i.ar = zext nneg i32 %i.ad to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ad, 5
  %i.as = and i64 %i.ar, 3                        ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  %i.au = select i1 %i.at, i64 4, i64 %i.as
  %n.vec = sub nsw i64 %i.ar, %i.au               ; 4 uses
  %i.av = trunc i64 %n.vec to i32
  %i.aw = sub i32 %i.ad, %i.av
  %i.ax = shl nsw i64 %n.vec, 3                   ; 3 uses
  %i.ay = shl nsw i64 %n.vec, 2
  br label %_ZN4ncnn3Mat7channelEi.exit.us.us
end_hunk_1
begin_hunk_2_@_ZNK4ncnn24ConvolutionDepthWise_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %.084433 = phi ptr [ %.1.lcssa, %._crit_edge428 ], [ %i.bf, %.preheader.preheader ] ; 2 uses
  %.085432 = phi ptr [ %.186.lcssa, %._crit_edge428 ], [ %i.bf, %.preheader.preheader ] ; 2 uses
  %.088431 = phi i32 [ %i.bn, %._crit_edge428 ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph427, label %._crit_edge428

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge428, %.preheader.lr.ph, %_ZN4ncnn3MatD2Ev.exit95
  %i.bj = phi i32 [ %i.ae, %_ZN4ncnn3MatD2Ev.exit95 ], [ %i.ae, %.preheader.lr.ph ], [ %i.bl, %._crit_edge428 ]
  %i.bk = phi i32 [ %i.af, %_ZN4ncnn3MatD2Ev.exit95 ], [ %i.af, %.preheader.lr.ph ], [ %i.bl, %._crit_edge428 ]
  %indvars.iv.next443 = add nsw i64 %indvars.iv442, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next443 to i32
  %exitcond445.not = icmp eq i32 %i.ad, %lftr.wideiv
  br i1 %exitcond445.not, label %._crit_edge436, label %_ZN4ncnn3MatD2Ev.exit95, !llvm.loop !287

._crit_edge428.loopexit:                          ; preds = %bb.h
  %.pre = load i32, ptr %7, align 4, !tbaa !69
  br label %._crit_edge428

._crit_edge428:                                   ; preds = %._crit_edge428.loopexit, %.preheader
  %i.bl = phi i32 [ %i.bg, %.preheader ], [ %.pre, %._crit_edge428.loopexit ] ; 4 uses
  %i.bm = phi i32 [ %i.bh, %.preheader ], [ %i.rh, %._crit_edge428.loopexit ]
  %.186.lcssa = phi ptr [ %.085432, %.preheader ], [ %.287, %._crit_edge428.loopexit ]
  %.1.lcssa = phi ptr [ %.084433, %.preheader ], [ %.2, %._crit_edge428.loopexit ]
  %i.bn = add nuw nsw i32 %.088431, 1             ; 2 uses
  %i.bo = icmp slt i32 %i.bn, %i.bl
  br i1 %i.bo, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !288

.lr.ph427:                                        ; preds = %.preheader, %bb.h
  %.1426 = phi ptr [ %.2, %bb.h ], [ %.084433, %.preheader ] ; 3 uses
  %.186425 = phi ptr [ %.287, %bb.h ], [ %.085432, %.preheader ] ; 4 uses
  %.089424 = phi i32 [ %i.rg, %bb.h ], [ 0, %.preheader ] ; 2 uses
  %i.bp = load i32, ptr %i.r, align 8, !tbaa !65
  %i.bq = mul nsw i32 %i.bp, %.088431
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul i64 %i.aw, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bs
  %i.bu = load i32, ptr %i.s, align 4, !tbaa !64
  %i.bv = shl i32 %.089424, 3
  %i.bw = mul i32 %i.bv, %i.bu
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %i.bt, i64 %i.bx
  %i.bz = load i32, ptr %5, align 4, !tbaa !69    ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph427
  %i.cb = load ptr, ptr %9, align 8, !tbaa !81
  %wide.trip.count = zext nneg i32 %i.bz to i64
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.cc = sitofp fast <4 x i32> %i.dx to <4 x float>
  %i.cd = sitofp fast <4 x i32> %i.dz to <4 x float>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph427
  %.lcssa421 = phi <4 x float> [ zeroinitializer, %.lr.ph427 ], [ %i.cd, %._crit_edge.loopexit ]
  %.lcssa = phi <4 x float> [ zeroinitializer, %.lr.ph427 ], [ %i.cc, %._crit_edge.loopexit ]
  %i.ce = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ax ; 2 uses
  %i.cg = load <4 x float>, ptr %i.cf, align 1, !tbaa !87
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ci = load <4 x float>, ptr %i.ch, align 1, !tbaa !87
  %i.cj = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ax ; 2 uses
  %i.cl = load <4 x float>, ptr %i.ck, align 1, !tbaa !87 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cn = load <4 x float>, ptr %i.cm, align 1, !tbaa !87 ; 2 uses
  %i.co = fmul fast <4 x float> %i.cl, %i.cg
  %i.cp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.co)
  %i.cq = fmul fast <4 x float> %i.cn, %i.ci
  %i.cr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.cq)
  %i.cs = fcmp fast une <4 x float> %i.cl, zeroinitializer
  %i.ct = fcmp fast une <4 x float> %i.cn, zeroinitializer
  %i.cu = select <4 x i1> %i.cs, <4 x float> %i.cp, <4 x float> zeroinitializer
  %i.cv = select <4 x i1> %i.ct, <4 x float> %i.cr, <4 x float> zeroinitializer
  %i.cw = fmul fast <4 x float> %i.cu, %.lcssa    ; 2 uses
  %i.cx = fmul fast <4 x float> %i.cv, %.lcssa421 ; 2 uses
  %i.cy = load i32, ptr %i.v, align 8, !tbaa !77
  %.not93 = icmp eq i32 %i.cy, 0
  br i1 %.not93, label %bb.e, label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.cz = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.dx, %bb.c ]
  %i.da = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.dz, %bb.c ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !69
  %i.dd = shl nsw i32 %i.dc, 3
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %i.by, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 1, !tbaa !87
  %i.dh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.dg, i64 0
  %i.di = bitcast <2 x i64> %i.dh to <16 x i8>    ; 2 uses
  %.lobit.i140 = ashr <16 x i8> %i.di, splat (i8 7)
  %i.dj = shufflevector <16 x i8> %i.di, <16 x i8> %.lobit.i140, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dk = shl nuw nsw i64 %indvars.iv, 3
  %i.dl = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 1, !tbaa !87
  %i.dn = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.dm, i64 0
  %i.do = bitcast <2 x i64> %i.dn to <16 x i8>    ; 2 uses
  %.lobit.i = ashr <16 x i8> %i.do, splat (i8 7)
  %i.dp = shufflevector <16 x i8> %i.do, <16 x i8> %.lobit.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dq = bitcast <16 x i8> %i.dj to <8 x i16>    ; 2 uses
  %i.dr = bitcast <16 x i8> %i.dp to <8 x i16>    ; 2 uses
  %i.ds = mul <8 x i16> %i.dr, %i.dq              ; 2 uses
  %i.dt = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.dq, <8 x i16> %i.dr) ; 2 uses
  %i.du = shufflevector <8 x i16> %i.ds, <8 x i16> %i.dt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dv = shufflevector <8 x i16> %i.ds, <8 x i16> %i.dt, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dw = bitcast <8 x i16> %i.du to <4 x i32>
  %i.dx = add <4 x i32> %i.cz, %i.dw              ; 2 uses
  %i.dy = bitcast <8 x i16> %i.dv to <4 x i32>
  %i.dz = add <4 x i32> %i.da, %i.dy              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !289

bb.d:                                             ; preds = %._crit_edge
  %i.ea = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.ax ; 2 uses
  %i.ec = load <4 x float>, ptr %i.eb, align 1, !tbaa !87
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ee = load <4 x float>, ptr %i.ed, align 1, !tbaa !87
  %i.ef = fadd fast <4 x float> %i.ec, %i.cw
  %i.eg = fadd fast <4 x float> %i.ee, %i.cx
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.0393 = phi nsz <4 x float> [ %i.cw, %._crit_edge ], [ %i.ef, %bb.d ] ; 10 uses
  %.0392 = phi nsz <4 x float> [ %i.cx, %._crit_edge ], [ %i.eg, %bb.d ] ; 10 uses
  %i.eh = load i32, ptr %i.x, align 8, !tbaa !44
  switch i32 %i.eh, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread397
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread400
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread403
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread406
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread409
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread: ; preds = %bb.e
  %i.ei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0393, <4 x float> zeroinitializer)
  %i.ej = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0392, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread397: ; preds = %bb.e
  %i.ek = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.el = load float, ptr %i.ek, align 4, !tbaa !45
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0393)
  %i.en = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0393)
  %i.eo = insertelement <4 x float> poison, float %i.el, i64 0
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eq = fmul fast <4 x float> %i.ep, %i.en
  %i.er = fadd fast <4 x float> %i.eq, %i.em
  %i.es = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0392)
  %i.et = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0392)
  %i.eu = fmul fast <4 x float> %i.ep, %i.et
  %i.ev = fadd fast <4 x float> %i.eu, %i.es
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread400: ; preds = %bb.e
  %i.ew = load ptr, ptr %i.y, align 8, !tbaa !21  ; 2 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !45
  %i.ey = insertelement <4 x float> poison, float %i.ex, i64 0
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !45
  %i.fc = insertelement <4 x float> poison, float %i.fb, i64 0
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0393, <4 x float> nofpclass(nan inf) %i.ez)
  %i.ff = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fe, <4 x float> nofpclass(nan inf) %i.fd)
  %i.fg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0392, <4 x float> nofpclass(nan inf) %i.ez)
  %i.fh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fg, <4 x float> nofpclass(nan inf) %i.fd)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread403: ; preds = %bb.e
  %i.fi = fneg fast <4 x float> %.0393
  %i.fj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fi, <4 x float> splat (float f0x42B0C0A5))
  %i.fk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fl = fmul fast <4 x float> %i.fk, splat (float f0x3FB8AA3B)
  %i.fm = fadd fast <4 x float> %i.fl, splat (float 5.000000e-01) ; 2 uses
  %i.fn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fm)
  %i.fo = sitofp fast <4 x i32> %i.fn to <4 x float> ; 2 uses
  %i.fp = fcmp fast olt <4 x float> %i.fm, %i.fo
  %i.fq = select <4 x i1> %i.fp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fr = fsub fast <4 x float> %i.fo, %i.fq      ; 2 uses
  %i.fs = fmul fast <4 x float> %i.fr, splat (float f0x3F317218)
  %i.ft = fsub fast <4 x float> %i.fk, %i.fs      ; 8 uses
  %i.fu = fmul fast <4 x float> %i.ft, %i.ft
  %i.fv = fmul fast <4 x float> %i.ft, splat (float f0x39506967)
  %i.fw = fadd fast <4 x float> %i.fv, splat (float f0x3AB743CE)
  %i.fx = fmul fast <4 x float> %i.fw, %i.ft
  %i.fy = fadd fast <4 x float> %i.fx, splat (float f0x3C088908)
  %i.fz = fmul fast <4 x float> %i.fy, %i.ft
  %i.ga = fadd fast <4 x float> %i.fz, splat (float f0x3D2AA9C1)
  %i.gb = fmul fast <4 x float> %i.ga, %i.ft
  %i.gc = fadd fast <4 x float> %i.gb, splat (float f0x3E2AAAAA)
  %i.gd = fmul fast <4 x float> %i.gc, %i.ft
  %i.ge = fadd fast <4 x float> %i.gd, splat (float 5.000000e-01)
  %i.gf = fmul fast <4 x float> %i.fu, %i.ge
  %i.gg = fadd fast <4 x float> %i.ft, %i.gf
  %i.gh = fadd fast <4 x float> %i.gg, splat (float 1.000000e+00)
  %i.gi = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fr)
  %i.gj = shl <4 x i32> %i.gi, splat (i32 23)
  %i.gk = add <4 x i32> %i.gj, splat (i32 1065353216)
  %i.gl = bitcast <4 x i32> %i.gk to <4 x float>
  %i.gm = fmul fast <4 x float> %i.gh, %i.gl
  %i.gn = fadd fast <4 x float> %i.gm, splat (float 1.000000e+00)
  %i.go = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gn
  %i.gp = fneg fast <4 x float> %.0392
  %i.gq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gp, <4 x float> splat (float f0x42B0C0A5))
  %i.gr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gs = fmul fast <4 x float> %i.gr, splat (float f0x3FB8AA3B)
  %i.gt = fadd fast <4 x float> %i.gs, splat (float 5.000000e-01) ; 2 uses
  %i.gu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gt)
  %i.gv = sitofp fast <4 x i32> %i.gu to <4 x float> ; 2 uses
  %i.gw = fcmp fast olt <4 x float> %i.gt, %i.gv
  %i.gx = select <4 x i1> %i.gw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gy = fsub fast <4 x float> %i.gv, %i.gx      ; 2 uses
  %i.gz = fmul fast <4 x float> %i.gy, splat (float f0x3F317218)
  %i.ha = fsub fast <4 x float> %i.gr, %i.gz      ; 8 uses
  %i.hb = fmul fast <4 x float> %i.ha, %i.ha
  %i.hc = fmul fast <4 x float> %i.ha, splat (float f0x39506967)
  %i.hd = fadd fast <4 x float> %i.hc, splat (float f0x3AB743CE)
  %i.he = fmul fast <4 x float> %i.hd, %i.ha
  %i.hf = fadd fast <4 x float> %i.he, splat (float f0x3C088908)
  %i.hg = fmul fast <4 x float> %i.hf, %i.ha
  %i.hh = fadd fast <4 x float> %i.hg, splat (float f0x3D2AA9C1)
  %i.hi = fmul fast <4 x float> %i.hh, %i.ha
  %i.hj = fadd fast <4 x float> %i.hi, splat (float f0x3E2AAAAA)
  %i.hk = fmul fast <4 x float> %i.hj, %i.ha
  %i.hl = fadd fast <4 x float> %i.hk, splat (float 5.000000e-01)
  %i.hm = fmul fast <4 x float> %i.hb, %i.hl
  %i.hn = fadd fast <4 x float> %i.ha, %i.hm
  %i.ho = fadd fast <4 x float> %i.hn, splat (float 1.000000e+00)
  %i.hp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gy)
  %i.hq = shl <4 x i32> %i.hp, splat (i32 23)
  %i.hr = add <4 x i32> %i.hq, splat (i32 1065353216)
  %i.hs = bitcast <4 x i32> %i.hr to <4 x float>
  %i.ht = fmul fast <4 x float> %i.ho, %i.hs
  %i.hu = fadd fast <4 x float> %i.ht, splat (float 1.000000e+00)
  %i.hv = fdiv fast <4 x float> splat (float 1.000000e+00), %i.hu
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread406: ; preds = %bb.e
  %i.hw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0393, <4 x float> splat (float f0x42B0C0A5))
  %i.hx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hw, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hy = fmul fast <4 x float> %i.hx, splat (float f0x3FB8AA3B)
  %i.hz = fadd fast <4 x float> %i.hy, splat (float 5.000000e-01) ; 2 uses
  %i.ia = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hz)
  %i.ib = sitofp fast <4 x i32> %i.ia to <4 x float> ; 2 uses
  %i.ic = fcmp fast olt <4 x float> %i.hz, %i.ib
  %i.id = select <4 x i1> %i.ic, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ie = fsub fast <4 x float> %i.ib, %i.id      ; 2 uses
  %i.if = fmul fast <4 x float> %i.ie, splat (float f0x3F317218)
  %i.ig = fsub fast <4 x float> %i.hx, %i.if      ; 8 uses
  %i.ih = fmul fast <4 x float> %i.ig, %i.ig
  %i.ii = fmul fast <4 x float> %i.ig, splat (float f0x39506967)
  %i.ij = fadd fast <4 x float> %i.ii, splat (float f0x3AB743CE)
  %i.ik = fmul fast <4 x float> %i.ij, %i.ig
  %i.il = fadd fast <4 x float> %i.ik, splat (float f0x3C088908)
  %i.im = fmul fast <4 x float> %i.il, %i.ig
  %i.in = fadd fast <4 x float> %i.im, splat (float f0x3D2AA9C1)
  %i.io = fmul fast <4 x float> %i.in, %i.ig
  %i.ip = fadd fast <4 x float> %i.io, splat (float f0x3E2AAAAA)
  %i.iq = fmul fast <4 x float> %i.ip, %i.ig
  %i.ir = fadd fast <4 x float> %i.iq, splat (float 5.000000e-01)
  %i.is = fmul fast <4 x float> %i.ih, %i.ir
  %i.it = fadd fast <4 x float> %i.ig, %i.is
  %i.iu = fadd fast <4 x float> %i.it, splat (float 1.000000e+00)
  %i.iv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ie)
  %i.iw = shl <4 x i32> %i.iv, splat (i32 23)
  %i.ix = add <4 x i32> %i.iw, splat (i32 1065353216)
  %i.iy = bitcast <4 x i32> %i.ix to <4 x float>
  %i.iz = fmul fast <4 x float> %i.iu, %i.iy
  %i.ja = fadd fast <4 x float> %i.iz, splat (float 1.000000e+00) ; 2 uses
  %i.jb = fcmp fast ole <4 x float> %i.ja, zeroinitializer
  %i.jc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ja, <4 x float> splat (float f0x00800000))
  %i.jd = bitcast <4 x float> %i.jc to <4 x i32>  ; 2 uses
  %i.je = lshr <4 x i32> %i.jd, splat (i32 23)
  %i.jf = and <4 x i32> %i.jd, splat (i32 -2139095041)
  %i.jg = or disjoint <4 x i32> %i.jf, splat (i32 1056964608)
  %i.jh = bitcast <4 x i32> %i.jg to <4 x float>  ; 3 uses
  %i.ji = add nsw <4 x i32> %i.je, splat (i32 -127)
  %i.jj = sitofp fast <4 x i32> %i.ji to <4 x float> ; 2 uses
  %i.jk = fadd fast <4 x float> %i.jj, splat (float 1.000000e+00)
  %i.jl = fcmp fast olt <4 x float> %i.jh, splat (float f0x3F3504F3) ; 2 uses
  %i.jm = select <4 x i1> %i.jl, <4 x float> %i.jh, <4 x float> zeroinitializer
  %i.jn = fadd fast <4 x float> %i.jh, splat (float -1.000000e+00)
  %i.jo = select fast <4 x i1> %i.jl, <4 x float> %i.jj, <4 x float> %i.jk
  %i.jp = fadd fast <4 x float> %i.jn, %i.jm      ; 12 uses
  %i.jq = fmul fast <4 x float> %i.jp, %i.jp
  %i.jr = fmul fast <4 x float> %i.jp, splat (float f0x3D9021BB)
  %i.js = fadd fast <4 x float> %i.jr, splat (float f0xBDEBD1B8)
  %i.jt = fmul fast <4 x float> %i.js, %i.jp
  %i.ju = fadd fast <4 x float> %i.jt, splat (float f0x3DEF251A)
  %i.jv = fmul fast <4 x float> %i.ju, %i.jp
  %i.jw = fadd fast <4 x float> %i.jv, splat (float f0xBDFE5D4F)
  %i.jx = fmul fast <4 x float> %i.jw, %i.jp
  %i.jy = fadd fast <4 x float> %i.jx, splat (float f0x3E11E9BF)
  %i.jz = fmul fast <4 x float> %i.jy, %i.jp
  %i.ka = fadd fast <4 x float> %i.jz, splat (float f0xBE2AAE50)
  %i.kb = fmul fast <4 x float> %i.ka, %i.jp
  %i.kc = fadd fast <4 x float> %i.kb, splat (float f0x3E4CCEAC)
  %i.kd = fmul fast <4 x float> %i.kc, %i.jp
  %i.ke = fadd fast <4 x float> %i.kd, splat (float f0xBE7FFFFC)
  %i.kf = fmul fast <4 x float> %i.ke, %i.jp
  %i.kg = fadd fast <4 x float> %i.kf, splat (float f0x3EAAAAAA)
  %i.kh = fmul fast <4 x float> %i.kg, %i.jp
  %reass.mul = fmul fast <4 x float> %i.jo, splat (float f0x3F317218)
  %reass.add417 = fadd fast <4 x float> %i.kh, splat (float -5.000000e-01)
  %reass.mul418 = fmul fast <4 x float> %i.jq, %reass.add417
  %i.ki = fadd fast <4 x float> %reass.mul, %i.jp
  %i.kj = fadd fast <4 x float> %i.ki, %reass.mul418
  %.neg = fmul fast <4 x float> %i.kj, splat (float -2.000000e+00)
  %i.kk = select fast <4 x i1> %i.jb, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.kl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.kk, <4 x float> splat (float f0x42B0C0A5))
  %i.km = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kn = fmul fast <4 x float> %i.km, splat (float f0x3FB8AA3B)
  %i.ko = fadd fast <4 x float> %i.kn, splat (float 5.000000e-01) ; 2 uses
  %i.kp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ko)
  %i.kq = sitofp fast <4 x i32> %i.kp to <4 x float> ; 2 uses
  %i.kr = fcmp fast olt <4 x float> %i.ko, %i.kq
  %i.ks = select <4 x i1> %i.kr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.kt = fsub fast <4 x float> %i.kq, %i.ks      ; 2 uses
  %i.ku = fmul fast <4 x float> %i.kt, splat (float f0x3F317218)
  %i.kv = fsub fast <4 x float> %i.km, %i.ku      ; 8 uses
  %i.kw = fmul fast <4 x float> %i.kv, %i.kv
  %i.kx = fmul fast <4 x float> %i.kv, splat (float f0x39506967)
  %i.ky = fadd fast <4 x float> %i.kx, splat (float f0x3AB743CE)
  %i.kz = fmul fast <4 x float> %i.ky, %i.kv
  %i.la = fadd fast <4 x float> %i.kz, splat (float f0x3C088908)
  %i.lb = fmul fast <4 x float> %i.la, %i.kv
  %i.lc = fadd fast <4 x float> %i.lb, splat (float f0x3D2AA9C1)
  %i.ld = fmul fast <4 x float> %i.lc, %i.kv
  %i.le = fadd fast <4 x float> %i.ld, splat (float f0x3E2AAAAA)
  %i.lf = fmul fast <4 x float> %i.le, %i.kv
  %i.lg = fadd fast <4 x float> %i.lf, splat (float 5.000000e-01)
  %i.lh = fmul fast <4 x float> %i.kw, %i.lg
  %i.li = fadd fast <4 x float> %i.kv, %i.lh
  %i.lj = fadd fast <4 x float> %i.li, splat (float 1.000000e+00)
  %i.lk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kt)
  %i.ll = shl <4 x i32> %i.lk, splat (i32 23)
  %i.lm = add <4 x i32> %i.ll, splat (i32 1065353216)
  %i.ln = bitcast <4 x i32> %i.lm to <4 x float>
  %i.lo = fmul fast <4 x float> %i.lj, %i.ln
  %i.lp = fadd fast <4 x float> %i.lo, splat (float 1.000000e+00)
  %i.lq = fdiv fast <4 x float> splat (float 2.000000e+00), %i.lp
  %i.lr = fadd fast <4 x float> %i.lq, splat (float -1.000000e+00)
  %i.ls = fmul fast <4 x float> %i.lr, %.0393
  %i.lt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0392, <4 x float> splat (float f0x42B0C0A5))
  %i.lu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lv = fmul fast <4 x float> %i.lu, splat (float f0x3FB8AA3B)
  %i.lw = fadd fast <4 x float> %i.lv, splat (float 5.000000e-01) ; 2 uses
  %i.lx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lw)
  %i.ly = sitofp fast <4 x i32> %i.lx to <4 x float> ; 2 uses
  %i.lz = fcmp fast olt <4 x float> %i.lw, %i.ly
  %i.ma = select <4 x i1> %i.lz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.mb = fsub fast <4 x float> %i.ly, %i.ma      ; 2 uses
  %i.mc = fmul fast <4 x float> %i.mb, splat (float f0x3F317218)
  %i.md = fsub fast <4 x float> %i.lu, %i.mc      ; 8 uses
  %i.me = fmul fast <4 x float> %i.md, %i.md
  %i.mf = fmul fast <4 x float> %i.md, splat (float f0x39506967)
  %i.mg = fadd fast <4 x float> %i.mf, splat (float f0x3AB743CE)
  %i.mh = fmul fast <4 x float> %i.mg, %i.md
  %i.mi = fadd fast <4 x float> %i.mh, splat (float f0x3C088908)
  %i.mj = fmul fast <4 x float> %i.mi, %i.md
  %i.mk = fadd fast <4 x float> %i.mj, splat (float f0x3D2AA9C1)
  %i.ml = fmul fast <4 x float> %i.mk, %i.md
  %i.mm = fadd fast <4 x float> %i.ml, splat (float f0x3E2AAAAA)
  %i.mn = fmul fast <4 x float> %i.mm, %i.md
  %i.mo = fadd fast <4 x float> %i.mn, splat (float 5.000000e-01)
  %i.mp = fmul fast <4 x float> %i.me, %i.mo
  %i.mq = fadd fast <4 x float> %i.md, %i.mp
  %i.mr = fadd fast <4 x float> %i.mq, splat (float 1.000000e+00)
  %i.ms = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mb)
  %i.mt = shl <4 x i32> %i.ms, splat (i32 23)
  %i.mu = add <4 x i32> %i.mt, splat (i32 1065353216)
  %i.mv = bitcast <4 x i32> %i.mu to <4 x float>
  %i.mw = fmul fast <4 x float> %i.mr, %i.mv
  %i.mx = fadd fast <4 x float> %i.mw, splat (float 1.000000e+00) ; 2 uses
  %i.my = fcmp fast ole <4 x float> %i.mx, zeroinitializer
  %i.mz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mx, <4 x float> splat (float f0x00800000))
  %i.na = bitcast <4 x float> %i.mz to <4 x i32>  ; 2 uses
  %i.nb = lshr <4 x i32> %i.na, splat (i32 23)
  %i.nc = and <4 x i32> %i.na, splat (i32 -2139095041)
  %i.nd = or disjoint <4 x i32> %i.nc, splat (i32 1056964608)
  %i.ne = bitcast <4 x i32> %i.nd to <4 x float>  ; 3 uses
  %i.nf = add nsw <4 x i32> %i.nb, splat (i32 -127)
  %i.ng = sitofp fast <4 x i32> %i.nf to <4 x float> ; 2 uses
  %i.nh = fadd fast <4 x float> %i.ng, splat (float 1.000000e+00)
  %i.ni = fcmp fast olt <4 x float> %i.ne, splat (float f0x3F3504F3) ; 2 uses
  %i.nj = select <4 x i1> %i.ni, <4 x float> %i.ne, <4 x float> zeroinitializer
  %i.nk = fadd fast <4 x float> %i.ne, splat (float -1.000000e+00)
  %i.nl = select fast <4 x i1> %i.ni, <4 x float> %i.ng, <4 x float> %i.nh
  %i.nm = fadd fast <4 x float> %i.nk, %i.nj      ; 12 uses
  %i.nn = fmul fast <4 x float> %i.nm, %i.nm
  %i.no = fmul fast <4 x float> %i.nm, splat (float f0x3D9021BB)
  %i.np = fadd fast <4 x float> %i.no, splat (float f0xBDEBD1B8)
  %i.nq = fmul fast <4 x float> %i.np, %i.nm
  %i.nr = fadd fast <4 x float> %i.nq, splat (float f0x3DEF251A)
  %i.ns = fmul fast <4 x float> %i.nr, %i.nm
  %i.nt = fadd fast <4 x float> %i.ns, splat (float f0xBDFE5D4F)
  %i.nu = fmul fast <4 x float> %i.nt, %i.nm
  %i.nv = fadd fast <4 x float> %i.nu, splat (float f0x3E11E9BF)
  %i.nw = fmul fast <4 x float> %i.nv, %i.nm
  %i.nx = fadd fast <4 x float> %i.nw, splat (float f0xBE2AAE50)
  %i.ny = fmul fast <4 x float> %i.nx, %i.nm
  %i.nz = fadd fast <4 x float> %i.ny, splat (float f0x3E4CCEAC)
  %i.oa = fmul fast <4 x float> %i.nz, %i.nm
  %i.ob = fadd fast <4 x float> %i.oa, splat (float f0xBE7FFFFC)
  %i.oc = fmul fast <4 x float> %i.ob, %i.nm
  %i.od = fadd fast <4 x float> %i.oc, splat (float f0x3EAAAAAA)
  %i.oe = fmul fast <4 x float> %i.od, %i.nm
  %reass.mul416 = fmul fast <4 x float> %i.nl, splat (float f0x3F317218)
  %reass.add419 = fadd fast <4 x float> %i.oe, splat (float -5.000000e-01)
  %reass.mul420 = fmul fast <4 x float> %i.nn, %reass.add419
  %i.of = fadd fast <4 x float> %reass.mul416, %i.nm
  %i.og = fadd fast <4 x float> %i.of, %reass.mul420
  %.neg412 = fmul fast <4 x float> %i.og, splat (float -2.000000e+00)
  %i.oh = select fast <4 x i1> %i.my, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg412
  %i.oi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.oh, <4 x float> splat (float f0x42B0C0A5))
  %i.oj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oi, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ok = fmul fast <4 x float> %i.oj, splat (float f0x3FB8AA3B)
  %i.ol = fadd fast <4 x float> %i.ok, splat (float 5.000000e-01) ; 2 uses
  %i.om = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ol)
  %i.on = sitofp fast <4 x i32> %i.om to <4 x float> ; 2 uses
  %i.oo = fcmp fast olt <4 x float> %i.ol, %i.on
  %i.op = select <4 x i1> %i.oo, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.oq = fsub fast <4 x float> %i.on, %i.op      ; 2 uses
  %i.or = fmul fast <4 x float> %i.oq, splat (float f0x3F317218)
  %i.os = fsub fast <4 x float> %i.oj, %i.or      ; 8 uses
  %i.ot = fmul fast <4 x float> %i.os, %i.os
  %i.ou = fmul fast <4 x float> %i.os, splat (float f0x39506967)
  %i.ov = fadd fast <4 x float> %i.ou, splat (float f0x3AB743CE)
  %i.ow = fmul fast <4 x float> %i.ov, %i.os
  %i.ox = fadd fast <4 x float> %i.ow, splat (float f0x3C088908)
  %i.oy = fmul fast <4 x float> %i.ox, %i.os
  %i.oz = fadd fast <4 x float> %i.oy, splat (float f0x3D2AA9C1)
  %i.pa = fmul fast <4 x float> %i.oz, %i.os
  %i.pb = fadd fast <4 x float> %i.pa, splat (float f0x3E2AAAAA)
  %i.pc = fmul fast <4 x float> %i.pb, %i.os
  %i.pd = fadd fast <4 x float> %i.pc, splat (float 5.000000e-01)
  %i.pe = fmul fast <4 x float> %i.ot, %i.pd
  %i.pf = fadd fast <4 x float> %i.os, %i.pe
  %i.pg = fadd fast <4 x float> %i.pf, splat (float 1.000000e+00)
  %i.ph = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oq)
  %i.pi = shl <4 x i32> %i.ph, splat (i32 23)
  %i.pj = add <4 x i32> %i.pi, splat (i32 1065353216)
  %i.pk = bitcast <4 x i32> %i.pj to <4 x float>
  %i.pl = fmul fast <4 x float> %i.pg, %i.pk
  %i.pm = fadd fast <4 x float> %i.pl, splat (float 1.000000e+00)
  %i.pn = fdiv fast <4 x float> splat (float 2.000000e+00), %i.pm
  %i.po = fadd fast <4 x float> %i.pn, splat (float -1.000000e+00)
  %i.pp = fmul fast <4 x float> %i.po, %.0392
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread409: ; preds = %bb.e
  %i.pq = load ptr, ptr %i.y, align 8, !tbaa !21  ; 2 uses
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !45
  %i.ps = insertelement <4 x float> poison, float %i.pr, i64 0
  %i.pt = shufflevector <4 x float> %i.ps, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !45
  %i.pw = insertelement <4 x float> poison, float %i.pv, i64 0
  %i.px = shufflevector <4 x float> %i.pw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.py = fmul fast <4 x float> %i.pt, %.0393
  %i.pz = fadd fast <4 x float> %i.py, %i.px
  %i.qa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pz, <4 x float> zeroinitializer)
  %i.qb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.qa, <4 x float> splat (float 1.000000e+00))
  %i.qc = fmul fast <4 x float> %i.qb, %.0393
  %i.qd = fmul fast <4 x float> %i.pt, %.0392
  %i.qe = fadd fast <4 x float> %i.qd, %i.px
  %i.qf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qe, <4 x float> zeroinitializer)
  %i.qg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.qf, <4 x float> splat (float 1.000000e+00))
  %i.qh = fmul fast <4 x float> %i.qg, %.0392
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.e, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread409, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread406, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread403, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread400, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread397, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread
  %.0.i114396 = phi <4 x float> [ %i.qc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread409 ], [ %i.ei, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread ], [ %i.er, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread397 ], [ %i.ff, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread400 ], [ %i.go, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread403 ], [ %i.ls, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread406 ], [ %.0393, %bb.e ] ; 2 uses
  %.0.i = phi nsz <4 x float> [ %i.qh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread409 ], [ %i.ej, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread ], [ %i.ev, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread397 ], [ %i.fh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread400 ], [ %i.hv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread403 ], [ %i.pp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit118.thread406 ], [ %.0392, %bb.e ] ; 2 uses
  %i.qi = load i8, ptr %10, align 1, !tbaa !85, !range !54, !noundef !55
  %i.qj = trunc nuw i8 %i.qi to i1
  br i1 %i.qj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.qk = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.qk, i64 %i.ax ; 2 uses
  %i.qm = load <4 x float>, ptr %i.ql, align 1, !tbaa !87
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  %i.qo = load <4 x float>, ptr %i.qn, align 1, !tbaa !87
  %i.qp = fmul fast <4 x float> %i.qm, %.0.i114396 ; 2 uses
  %i.qq = fmul fast <4 x float> %i.qo, %.0.i      ; 2 uses
  %i.qr = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qp)
  %i.qs = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qq)
  %i.qt = fadd fast <4 x float> %i.qr, %i.qp
  %i.qu = fadd fast <4 x float> %i.qs, %i.qq
  %i.qv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qt)
  %i.qw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qu)
  %i.qx = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.qv, <4 x i32> %i.qw)
  %i.qy = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qx, <8 x i16> splat (i16 -127))
  %i.qz = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.qy, <8 x i16> splat (i16 127))
  %i.ra = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.qz, <8 x i16> poison)
  %i.rb = bitcast <16 x i8> %i.ra to <2 x i64>
  %i.rc = extractelement <2 x i64> %i.rb, i64 0
  store i64 %i.rc, ptr %.1426, align 8, !tbaa !294
  %i.rd = getelementptr inbounds nuw i8, ptr %.1426, i64 8
  br label %bb.h

bb.g:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  store <4 x float> %.0.i114396, ptr %.186425, align 1, !tbaa !87
  %i.re = getelementptr inbounds nuw i8, ptr %.186425, i64 16
  store <4 x float> %.0.i, ptr %i.re, align 1, !tbaa !87
  %i.rf = getelementptr inbounds nuw i8, ptr %.186425, i64 32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.287 = phi ptr [ %.186425, %bb.f ], [ %i.rf, %bb.g ] ; 2 uses
  %.2 = phi ptr [ %i.rd, %bb.f ], [ %.1426, %bb.g ] ; 2 uses
  %i.rg = add nuw nsw i32 %.089424, 1             ; 2 uses
  %i.rh = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.ri = icmp slt i32 %i.rg, %i.rh
  br i1 %i.ri, label %.lr.ph427, label %._crit_edge428.loopexit, !llvm.loop !290

._crit_edge436:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit95.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge436, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIfSaIfEE9push_backERKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr %1, align 4, !tbaa !45
  store float %i.e, ptr %i.b, align 4, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.f, ptr %i.a, align 8, !tbaa !101
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !96     ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 2                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.l  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 2305843009213693951)
  %i.p = select i1 %i.n, i64 2305843009213693951, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #24 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load float, ptr %1, align 4, !tbaa !45
  store float %i.t, ptr %i.s, align 4, !tbaa !45
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i

bb.e:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 4 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.not.i17.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i, %bb.f
  store ptr %i.r, ptr %0, align 8, !tbaa !96
  store ptr %i.v, ptr %i.a, align 8, !tbaa !101
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !97
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4ncnnL28convdw3x3s1_int8_requant_sseERKNS_3MatERS0_S2_S2_St6vectorIfSaIfEERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr noundef nonnull align 8 %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %5) unnamed_addr #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !75
  store i32 %i.i, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !75
  store i32 %i.k, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !76
  store i32 %i.m, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i32, ptr %i.n, align 8, !tbaa !70
  store i32 %i.o, ptr %i.d, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.p = load ptr, ptr %2, align 8, !tbaa !21
  store ptr %i.p, ptr %i.e, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.q = load ptr, ptr %3, align 8, !tbaa !21
  store ptr %i.q, ptr %i.f, align 8, !tbaa !98
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !82
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.s)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL28convdw3x3s1_int8_requant_sseERKNS_3MatERS0_S2_S2_St6vectorIfSaIfEERKNS_6OptionE.omp_outlined, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %i.f, ptr nonnull %4, ptr nonnull %i.e, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
end_hunk_2
