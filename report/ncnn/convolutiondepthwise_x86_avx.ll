Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolutiondepthwise_x86_avx?download=true
inline.NumInlined: 225
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK4ncnn28ConvolutionDepthWise_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1:bb.a
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
  %i.ak = load ptr, ptr %6, align 8, !tbaa !21, !noalias !195
  %i.al = load i64, ptr %i.p, align 8, !tbaa !22, !noalias !195
  %i.am = mul i64 %i.al, %indvars.iv210
  %i.an = load i64, ptr %i.q, align 8, !tbaa !67, !noalias !195 ; 2 uses
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ao
  %i.aq = icmp sgt i32 %i.ac, 0
  br i1 %i.aq, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit49
  %i.ar = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !195
  %i.as = sext i32 %i.ar to i64
  %i.at = mul i64 %i.an, %i.as
  %i.au = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.aw = load ptr, ptr %3, align 8, !tbaa !21, !noalias !196
  %i.ax = load i64, ptr %i.l, align 8, !tbaa !22, !noalias !196
  %i.ay = mul i64 %i.ax, %indvars.iv210
  %i.az = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !196
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
  br i1 %exitcond213.not, label %._crit_edge201, label %_ZN4ncnn3MatD2Ev.exit49, !llvm.loop !191

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
  br i1 %i.bn, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !192

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
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !193

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.g, %.noexc60, %.noexc59, %bb.f, %.noexc58, %bb.e, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.jb, %bb.g ], [ %i.cs, %bb.e ], [ %i.da, %.noexc58 ], [ %i.dk, %bb.f ], [ %i.er, %.noexc59 ], [ %i.io, %.noexc60 ], [ %.1.lcssa, %._crit_edge ]
  %.idx225 = shl nuw nsw i64 %indvars.iv207, 4
  %i.jw = getelementptr inbounds nuw i8, ptr %.046197, i64 %.idx225
  store <4 x float> %.0.i, ptr %i.jw, align 1, !tbaa !87
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 2 uses
  %i.jx = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.jy = sext i32 %i.jx to i64
  %i.jz = icmp slt i64 %indvars.iv.next208, %i.jy
  br i1 %i.jz, label %.lr.ph194, label %._crit_edge195.loopexit, !llvm.loop !194

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
  store ptr %i.p, ptr %i.e, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.q = load ptr, ptr %3, align 8, !tbaa !21
  store ptr %i.q, ptr %i.f, align 8, !tbaa !97
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
  store ptr %i.s, ptr %i.f, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.t = load ptr, ptr %3, align 8, !tbaa !21
  store ptr %i.t, ptr %i.g, align 8, !tbaa !97
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
define internal void @_ZN4ncnnL21convdw3x3s1_pack8_avxERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #12 personality ptr @__gxx_personality_v0 {
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
  %.not1031 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1031, label %._crit_edge1033, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

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
  %indvars.iv = phi i64 [ %i.t, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !209
  %i.w = load ptr, ptr %3, align 8, !tbaa !21, !noalias !209
  %i.x = load i64, ptr %i.m, align 8, !tbaa !22, !noalias !209
  %i.y = mul i64 %i.x, %indvars.iv
  %i.z = load i64, ptr %i.n, align 8, !tbaa !67, !noalias !209 ; 2 uses
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa ; 3 uses
  %i.ac = sext i32 %i.v to i64
  %i.ad = load ptr, ptr %4, align 8, !tbaa !97    ; 2 uses
  %.not309 = icmp eq ptr %i.ad, null
  br i1 %.not309, label %_ZNK4ncnn3Mat7channelEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %.idx = shl nsw i64 %indvars.iv, 5
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx
  %i.af = load <8 x float>, ptr %i.ae, align 1, !tbaa !87
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.ag = phi fast <8 x float> [ %i.af, %bb.c ], [ zeroinitializer, %_ZN4ncnn3Mat7channelEi.exit ] ; 21 uses
  %i.ah = load ptr, ptr %5, align 8, !tbaa !21
  %i.ai = load i32, ptr %i.o, align 4, !tbaa !75
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %indvars.iv, %i.aj
  %i.al = load i64, ptr %i.p, align 8, !tbaa !67
  %i.am = mul i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 22 uses
  %i.ao = load i32, ptr %i.q, align 4, !tbaa !75, !noalias !210
  %i.ap = load ptr, ptr %6, align 8, !tbaa !21, !noalias !210
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !22, !noalias !210
  %i.ar = mul i64 %i.aq, %indvars.iv
  %i.as = load i64, ptr %i.s, align 8, !tbaa !67, !noalias !210 ; 2 uses
  %i.at = mul i64 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.at ; 5 uses
  %i.av = sext i32 %i.ao to i64
  %i.aw = mul i64 %i.as, %i.av                    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw ; 2 uses
  %i.ay = shl i64 %i.aw, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %7, align 4, !tbaa !69    ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %.preheader936.lr.ph, label %.preheader937

.preheader936.lr.ph:                              ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.bc = mul i64 %i.aw, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bc
  %i.be = mul i64 %i.z, %i.ac
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 64 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 96 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 128 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 160 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 192 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 224 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 256 ; 3 uses
  %.pre = load i32, ptr %8, align 4, !tbaa !69
  br label %.preheader936

.preheader937:                                    ; preds = %._crit_edge, %_ZNK4ncnn3Mat7channelEi.exit
  %i.bo = phi i32 [ %i.ba, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.sa, %._crit_edge ]
  %.0298.lcssa = phi ptr [ %i.ab, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.rw, %._crit_edge ]
  %.0286.lcssa = phi ptr [ %i.au, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.rq, %._crit_edge ]
  %.0278.lcssa = phi ptr [ %i.ax, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.rr, %._crit_edge ]
  %.0274.lcssa = phi ptr [ %i.az, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.rs, %._crit_edge ]
  %.0269.lcssa = phi i32 [ 0, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.ry, %._crit_edge ] ; 2 uses
  %i.bp = icmp slt i32 %.0269.lcssa, %i.bo
  br i1 %i.bp, label %.preheader933.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader933.lr.ph:                              ; preds = %.preheader937
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 64 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.an, i64 96 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 128 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.an, i64 160 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 192 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 224 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 256 ; 3 uses
  %.pre1075 = load i32, ptr %8, align 4, !tbaa !69
  br label %.preheader933

.preheader936:                                    ; preds = %.preheader936.lr.ph, %._crit_edge
  %i.by = phi i32 [ %.pre, %.preheader936.lr.ph ], [ %i.rl, %._crit_edge ] ; 2 uses
  %.0269987 = phi i32 [ 0, %.preheader936.lr.ph ], [ %i.ry, %._crit_edge ]
  %.0271986 = phi ptr [ %i.bd, %.preheader936.lr.ph ], [ %i.rt, %._crit_edge ] ; 2 uses
  %.0274985 = phi ptr [ %i.az, %.preheader936.lr.ph ], [ %i.rs, %._crit_edge ] ; 2 uses
  %.0278984 = phi ptr [ %i.ax, %.preheader936.lr.ph ], [ %i.rr, %._crit_edge ] ; 2 uses
  %.0286983 = phi ptr [ %i.au, %.preheader936.lr.ph ], [ %i.rq, %._crit_edge ] ; 2 uses
  %.0294982 = phi ptr [ %i.bf, %.preheader936.lr.ph ], [ %i.rx, %._crit_edge ] ; 2 uses
  %.0298981 = phi ptr [ %i.ab, %.preheader936.lr.ph ], [ %i.rw, %._crit_edge ] ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 3
  br i1 %i.bz, label %.lr.ph, label %.preheader935

.preheader935:                                    ; preds = %.lr.ph, %.preheader936
  %i.ca = phi i32 [ %i.by, %.preheader936 ], [ %i.kc, %.lr.ph ] ; 2 uses
  %.1299.lcssa = phi ptr [ %.0298981, %.preheader936 ], [ %i.jy, %.lr.ph ] ; 2 uses
  %.1295.lcssa = phi ptr [ %.0294982, %.preheader936 ], [ %i.jz, %.lr.ph ] ; 2 uses
  %.1287.lcssa = phi ptr [ %.0286983, %.preheader936 ], [ %i.cn, %.lr.ph ] ; 2 uses
  %.1279.lcssa = phi ptr [ %.0278984, %.preheader936 ], [ %i.dz, %.lr.ph ] ; 2 uses
  %.1275.lcssa = phi ptr [ %.0274985, %.preheader936 ], [ %i.gj, %.lr.ph ] ; 2 uses
  %.1272.lcssa = phi ptr [ %.0271986, %.preheader936 ], [ %i.iq, %.lr.ph ] ; 2 uses
  %.0266.lcssa = phi i32 [ 0, %.preheader936 ], [ %i.ka, %.lr.ph ] ; 3 uses
  %i.cb = or disjoint i32 %.0266.lcssa, 1
  %i.cc = icmp slt i32 %i.cb, %i.ca
  br i1 %i.cc, label %.lr.ph958, label %.preheader934

.lr.ph:                                           ; preds = %.preheader936, %.lr.ph
  %.0266944 = phi i32 [ %i.ka, %.lr.ph ], [ 0, %.preheader936 ]
  %.1272943 = phi ptr [ %i.iq, %.lr.ph ], [ %.0271986, %.preheader936 ] ; 6 uses
  %.1275942 = phi ptr [ %i.gj, %.lr.ph ], [ %.0274985, %.preheader936 ] ; 6 uses
  %.1279941 = phi ptr [ %i.dz, %.lr.ph ], [ %.0278984, %.preheader936 ] ; 6 uses
  %.1287940 = phi ptr [ %i.cn, %.lr.ph ], [ %.0286983, %.preheader936 ] ; 6 uses
  %.1295939 = phi ptr [ %i.jz, %.lr.ph ], [ %.0294982, %.preheader936 ] ; 5 uses
  %.1299938 = phi ptr [ %i.jy, %.lr.ph ], [ %.0298981, %.preheader936 ] ; 5 uses
  %i.cd = load <8 x float>, ptr %i.an, align 32, !tbaa !87 ; 8 uses
  %i.ce = load <8 x float>, ptr %i.bg, align 32, !tbaa !87 ; 8 uses
  %i.cf = load <8 x float>, ptr %i.bh, align 32, !tbaa !87 ; 8 uses
  %i.cg = load <8 x float>, ptr %.1287940, align 32, !tbaa !87
  %i.ch = getelementptr inbounds nuw i8, ptr %.1287940, i64 32
  %i.ci = load <8 x float>, ptr %i.ch, align 32, !tbaa !87 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.1287940, i64 64
  %i.ck = load <8 x float>, ptr %i.cj, align 32, !tbaa !87 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.1287940, i64 96
  %i.cm = load <8 x float>, ptr %i.cl, align 32, !tbaa !87 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.1287940, i64 128 ; 3 uses
  %i.co = load <8 x float>, ptr %i.cn, align 32, !tbaa !87 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.1287940, i64 160
  %i.cq = load <8 x float>, ptr %i.cp, align 32, !tbaa !87
  %i.cr = fmul fast <8 x float> %i.cg, %i.cd
  %i.cs = fadd fast <8 x float> %i.ag, %i.cr
  %i.ct = fmul fast <8 x float> %i.ci, %i.cd
  %i.cu = fadd fast <8 x float> %i.ag, %i.ct
  %i.cv = fmul fast <8 x float> %i.ck, %i.cd
  %i.cw = fadd fast <8 x float> %i.ag, %i.cv
  %i.cx = fmul fast <8 x float> %i.cm, %i.cd
  %i.cy = fadd fast <8 x float> %i.ag, %i.cx
  %i.cz = fmul fast <8 x float> %i.ci, %i.ce
  %i.da = fadd fast <8 x float> %i.cz, %i.cs
  %i.db = fmul fast <8 x float> %i.ck, %i.ce
  %i.dc = fadd fast <8 x float> %i.db, %i.cu
  %i.dd = fmul fast <8 x float> %i.cm, %i.ce
  %i.de = fadd fast <8 x float> %i.dd, %i.cw
  %i.df = fmul fast <8 x float> %i.co, %i.ce
  %i.dg = fadd fast <8 x float> %i.df, %i.cy
  %i.dh = fmul fast <8 x float> %i.ck, %i.cf
  %i.di = fadd fast <8 x float> %i.da, %i.dh
  %i.dj = fmul fast <8 x float> %i.cm, %i.cf
  %i.dk = fadd fast <8 x float> %i.dc, %i.dj
  %i.dl = fmul fast <8 x float> %i.co, %i.cf
  %i.dm = fadd fast <8 x float> %i.de, %i.dl
  %i.dn = fmul fast <8 x float> %i.cq, %i.cf
  %i.do = fadd fast <8 x float> %i.dg, %i.dn
  %i.dp = load <8 x float>, ptr %i.bi, align 32, !tbaa !87 ; 8 uses
  %i.dq = load <8 x float>, ptr %i.bj, align 32, !tbaa !87 ; 8 uses
  %i.dr = load <8 x float>, ptr %i.bk, align 32, !tbaa !87 ; 8 uses
  %i.ds = load <8 x float>, ptr %.1279941, align 32, !tbaa !87 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.1279941, i64 32
  %i.du = load <8 x float>, ptr %i.dt, align 32, !tbaa !87 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.1279941, i64 64
  %i.dw = load <8 x float>, ptr %i.dv, align 32, !tbaa !87 ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.1279941, i64 96
  %i.dy = load <8 x float>, ptr %i.dx, align 32, !tbaa !87 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.1279941, i64 128 ; 3 uses
  %i.ea = load <8 x float>, ptr %i.dz, align 32, !tbaa !87 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.1279941, i64 160
  %i.ec = load <8 x float>, ptr %i.eb, align 32, !tbaa !87 ; 2 uses
  %i.ed = fmul fast <8 x float> %i.ds, %i.cd
  %i.ee = fadd fast <8 x float> %i.ag, %i.ed
  %i.ef = fmul fast <8 x float> %i.du, %i.cd
  %i.eg = fadd fast <8 x float> %i.ag, %i.ef
  %i.eh = fmul fast <8 x float> %i.dw, %i.cd
  %i.ei = fadd fast <8 x float> %i.ag, %i.eh
  %i.ej = fmul fast <8 x float> %i.dy, %i.cd
  %i.ek = fadd fast <8 x float> %i.ag, %i.ej
  %i.el = fmul fast <8 x float> %i.ds, %i.dp
  %i.em = fadd fast <8 x float> %i.di, %i.el
  %i.en = fmul fast <8 x float> %i.du, %i.dp
  %i.eo = fadd fast <8 x float> %i.dk, %i.en
  %i.ep = fmul fast <8 x float> %i.dw, %i.dp
  %i.eq = fadd fast <8 x float> %i.dm, %i.ep
  %i.er = fmul fast <8 x float> %i.dy, %i.dp
  %i.es = fadd fast <8 x float> %i.do, %i.er
  %i.et = fmul fast <8 x float> %i.du, %i.ce
  %i.eu = fadd fast <8 x float> %i.et, %i.ee
  %i.ev = fmul fast <8 x float> %i.dw, %i.ce
  %i.ew = fadd fast <8 x float> %i.ev, %i.eg
  %i.ex = fmul fast <8 x float> %i.dy, %i.ce
  %i.ey = fadd fast <8 x float> %i.ex, %i.ei
  %i.ez = fmul fast <8 x float> %i.ea, %i.ce
  %i.fa = fadd fast <8 x float> %i.ez, %i.ek
  %i.fb = fmul fast <8 x float> %i.du, %i.dq
  %i.fc = fadd fast <8 x float> %i.em, %i.fb
  %i.fd = fmul fast <8 x float> %i.dw, %i.dq
  %i.fe = fadd fast <8 x float> %i.eo, %i.fd
  %i.ff = fmul fast <8 x float> %i.dy, %i.dq
  %i.fg = fadd fast <8 x float> %i.eq, %i.ff
  %i.fh = fmul fast <8 x float> %i.ea, %i.dq
  %i.fi = fadd fast <8 x float> %i.es, %i.fh
  %i.fj = fmul fast <8 x float> %i.dw, %i.cf
  %i.fk = fadd fast <8 x float> %i.eu, %i.fj
  %i.fl = fmul fast <8 x float> %i.dy, %i.cf
  %i.fm = fadd fast <8 x float> %i.ew, %i.fl
  %i.fn = fmul fast <8 x float> %i.ea, %i.cf
  %i.fo = fadd fast <8 x float> %i.ey, %i.fn
  %i.fp = fmul fast <8 x float> %i.ec, %i.cf
  %i.fq = fadd fast <8 x float> %i.fa, %i.fp
  %i.fr = fmul fast <8 x float> %i.dw, %i.dr
  %i.fs = fadd fast <8 x float> %i.fc, %i.fr
  %i.ft = fmul fast <8 x float> %i.dy, %i.dr
  %i.fu = fadd fast <8 x float> %i.fe, %i.ft
  %i.fv = fmul fast <8 x float> %i.ea, %i.dr
  %i.fw = fadd fast <8 x float> %i.fg, %i.fv
  %i.fx = fmul fast <8 x float> %i.ec, %i.dr
  %i.fy = fadd fast <8 x float> %i.fi, %i.fx
  %i.fz = load <8 x float>, ptr %i.bl, align 32, !tbaa !87 ; 8 uses
  %i.ga = load <8 x float>, ptr %i.bm, align 32, !tbaa !87 ; 8 uses
  %i.gb = load <8 x float>, ptr %i.bn, align 32, !tbaa !87 ; 8 uses
  %i.gc = load <8 x float>, ptr %.1275942, align 32, !tbaa !87 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.1275942, i64 32
  %i.ge = load <8 x float>, ptr %i.gd, align 32, !tbaa !87 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.1275942, i64 64
  %i.gg = load <8 x float>, ptr %i.gf, align 32, !tbaa !87 ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.1275942, i64 96
  %i.gi = load <8 x float>, ptr %i.gh, align 32, !tbaa !87 ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.1275942, i64 128 ; 3 uses
  %i.gk = load <8 x float>, ptr %i.gj, align 32, !tbaa !87 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.1275942, i64 160
  %i.gm = load <8 x float>, ptr %i.gl, align 32, !tbaa !87 ; 2 uses
  %i.gn = fmul fast <8 x float> %i.gc, %i.dp
  %i.go = fadd fast <8 x float> %i.fk, %i.gn
  %i.gp = fmul fast <8 x float> %i.ge, %i.dp
  %i.gq = fadd fast <8 x float> %i.fm, %i.gp
  %i.gr = fmul fast <8 x float> %i.gg, %i.dp
  %i.gs = fadd fast <8 x float> %i.fo, %i.gr
  %i.gt = fmul fast <8 x float> %i.gi, %i.dp
  %i.gu = fadd fast <8 x float> %i.fq, %i.gt
  %i.gv = fmul fast <8 x float> %i.gc, %i.fz
  %i.gw = fadd fast <8 x float> %i.fs, %i.gv
  %i.gx = fmul fast <8 x float> %i.ge, %i.fz
  %i.gy = fadd fast <8 x float> %i.fu, %i.gx
  %i.gz = fmul fast <8 x float> %i.gg, %i.fz
  %i.ha = fadd fast <8 x float> %i.fw, %i.gz
  %i.hb = fmul fast <8 x float> %i.gi, %i.fz
  %i.hc = fadd fast <8 x float> %i.fy, %i.hb
  %i.hd = fmul fast <8 x float> %i.ge, %i.dq
  %i.he = fadd fast <8 x float> %i.go, %i.hd
  %i.hf = fmul fast <8 x float> %i.gg, %i.dq
  %i.hg = fadd fast <8 x float> %i.gq, %i.hf
  %i.hh = fmul fast <8 x float> %i.gi, %i.dq
  %i.hi = fadd fast <8 x float> %i.gs, %i.hh
  %i.hj = fmul fast <8 x float> %i.gk, %i.dq
  %i.hk = fadd fast <8 x float> %i.gu, %i.hj
  %i.hl = fmul fast <8 x float> %i.ge, %i.ga
  %i.hm = fadd fast <8 x float> %i.gw, %i.hl
  %i.hn = fmul fast <8 x float> %i.gg, %i.ga
  %i.ho = fadd fast <8 x float> %i.gy, %i.hn
  %i.hp = fmul fast <8 x float> %i.gi, %i.ga
  %i.hq = fadd fast <8 x float> %i.ha, %i.hp
  %i.hr = fmul fast <8 x float> %i.gk, %i.ga
  %i.hs = fadd fast <8 x float> %i.hc, %i.hr
  %i.ht = fmul fast <8 x float> %i.gg, %i.dr
  %i.hu = fadd fast <8 x float> %i.he, %i.ht
  %i.hv = fmul fast <8 x float> %i.gi, %i.dr
  %i.hw = fadd fast <8 x float> %i.hg, %i.hv
  %i.hx = fmul fast <8 x float> %i.gk, %i.dr
  %i.hy = fadd fast <8 x float> %i.hi, %i.hx
  %i.hz = fmul fast <8 x float> %i.gm, %i.dr
  %i.ia = fadd fast <8 x float> %i.hk, %i.hz
  %i.ib = fmul fast <8 x float> %i.gg, %i.gb
  %i.ic = fadd fast <8 x float> %i.hm, %i.ib
  %i.id = fmul fast <8 x float> %i.gi, %i.gb
  %i.ie = fadd fast <8 x float> %i.ho, %i.id
  %i.if = fmul fast <8 x float> %i.gk, %i.gb
  %i.ig = fadd fast <8 x float> %i.hq, %i.if
  %i.ih = fmul fast <8 x float> %i.gm, %i.gb
  %i.ii = fadd fast <8 x float> %i.hs, %i.ih
  %i.ij = load <8 x float>, ptr %.1272943, align 32, !tbaa !87
  %i.ik = getelementptr inbounds nuw i8, ptr %.1272943, i64 32
  %i.il = load <8 x float>, ptr %i.ik, align 32, !tbaa !87 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.1272943, i64 64
  %i.in = load <8 x float>, ptr %i.im, align 32, !tbaa !87 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.1272943, i64 96
  %i.ip = load <8 x float>, ptr %i.io, align 32, !tbaa !87 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.1272943, i64 128 ; 3 uses
  %i.ir = load <8 x float>, ptr %i.iq, align 32, !tbaa !87 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.1272943, i64 160
  %i.it = load <8 x float>, ptr %i.is, align 32, !tbaa !87
  %i.iu = fmul fast <8 x float> %i.ij, %i.fz
  %i.iv = fadd fast <8 x float> %i.hu, %i.iu
  %i.iw = fmul fast <8 x float> %i.il, %i.fz
  %i.ix = fadd fast <8 x float> %i.hw, %i.iw
  %i.iy = fmul fast <8 x float> %i.in, %i.fz
  %i.iz = fadd fast <8 x float> %i.hy, %i.iy
  %i.ja = fmul fast <8 x float> %i.ip, %i.fz
  %i.jb = fadd fast <8 x float> %i.ia, %i.ja
  %i.jc = fmul fast <8 x float> %i.il, %i.ga
  %i.jd = fadd fast <8 x float> %i.iv, %i.jc
  %i.je = fmul fast <8 x float> %i.in, %i.ga
  %i.jf = fadd fast <8 x float> %i.ix, %i.je
  %i.jg = fmul fast <8 x float> %i.ip, %i.ga
  %i.jh = fadd fast <8 x float> %i.iz, %i.jg
  %i.ji = fmul fast <8 x float> %i.ir, %i.ga
  %i.jj = fadd fast <8 x float> %i.jb, %i.ji
  %i.jk = fmul fast <8 x float> %i.in, %i.gb
  %i.jl = fadd fast <8 x float> %i.jd, %i.jk
  %i.jm = fmul fast <8 x float> %i.ip, %i.gb
  %i.jn = fadd fast <8 x float> %i.jf, %i.jm
  %i.jo = fmul fast <8 x float> %i.ir, %i.gb
  %i.jp = fadd fast <8 x float> %i.jh, %i.jo
  %i.jq = fmul fast <8 x float> %i.it, %i.gb
  %i.jr = fadd fast <8 x float> %i.jj, %i.jq
  store <8 x float> %i.ic, ptr %.1299938, align 32, !tbaa !87
  %i.js = getelementptr inbounds nuw i8, ptr %.1299938, i64 32
  store <8 x float> %i.ie, ptr %i.js, align 32, !tbaa !87
  %i.jt = getelementptr inbounds nuw i8, ptr %.1299938, i64 64
  store <8 x float> %i.ig, ptr %i.jt, align 32, !tbaa !87
  %i.ju = getelementptr inbounds nuw i8, ptr %.1299938, i64 96
  store <8 x float> %i.ii, ptr %i.ju, align 32, !tbaa !87
  store <8 x float> %i.jl, ptr %.1295939, align 32, !tbaa !87
  %i.jv = getelementptr inbounds nuw i8, ptr %.1295939, i64 32
  store <8 x float> %i.jn, ptr %i.jv, align 32, !tbaa !87
  %i.jw = getelementptr inbounds nuw i8, ptr %.1295939, i64 64
  store <8 x float> %i.jp, ptr %i.jw, align 32, !tbaa !87
  %i.jx = getelementptr inbounds nuw i8, ptr %.1295939, i64 96
  store <8 x float> %i.jr, ptr %i.jx, align 32, !tbaa !87
  %i.jy = getelementptr inbounds nuw i8, ptr %.1299938, i64 128 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.1295939, i64 128 ; 2 uses
  %i.ka = add nuw nsw i32 %.0266944, 4            ; 3 uses
  %i.kb = or disjoint i32 %i.ka, 3
  %i.kc = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.kd = icmp slt i32 %i.kb, %i.kc
  br i1 %i.kd, label %.lr.ph, label %.preheader935, !llvm.loop !201

.preheader934:                                    ; preds = %.lr.ph958, %.preheader935
  %i.ke = phi i32 [ %i.ca, %.preheader935 ], [ %i.or, %.lr.ph958 ] ; 2 uses
  %.2300.lcssa = phi ptr [ %.1299.lcssa, %.preheader935 ], [ %i.on, %.lr.ph958 ] ; 2 uses
  %.2296.lcssa = phi ptr [ %.1295.lcssa, %.preheader935 ], [ %i.oo, %.lr.ph958 ] ; 2 uses
  %.2288.lcssa = phi ptr [ %.1287.lcssa, %.preheader935 ], [ %i.km, %.lr.ph958 ] ; 2 uses
  %.2280.lcssa = phi ptr [ %.1279.lcssa, %.preheader935 ], [ %i.li, %.lr.ph958 ] ; 2 uses
  %.2276.lcssa = phi ptr [ %.1275.lcssa, %.preheader935 ], [ %i.mq, %.lr.ph958 ] ; 2 uses
  %.2273.lcssa = phi ptr [ %.1272.lcssa, %.preheader935 ], [ %i.nv, %.lr.ph958 ] ; 2 uses
  %.1267.lcssa = phi i32 [ %.0266.lcssa, %.preheader935 ], [ %i.op, %.lr.ph958 ] ; 2 uses
  %i.kf = icmp slt i32 %.1267.lcssa, %i.ke
  br i1 %i.kf, label %.lr.ph973, label %._crit_edge

.lr.ph958:                                        ; preds = %.preheader935, %.lr.ph958
  %.1267957 = phi i32 [ %i.op, %.lr.ph958 ], [ %.0266.lcssa, %.preheader935 ]
  %.2273956 = phi ptr [ %i.nv, %.lr.ph958 ], [ %.1272.lcssa, %.preheader935 ] ; 4 uses
  %.2276955 = phi ptr [ %i.mq, %.lr.ph958 ], [ %.1275.lcssa, %.preheader935 ] ; 4 uses
  %.2280954 = phi ptr [ %i.li, %.lr.ph958 ], [ %.1279.lcssa, %.preheader935 ] ; 4 uses
  %.2288953 = phi ptr [ %i.km, %.lr.ph958 ], [ %.1287.lcssa, %.preheader935 ] ; 4 uses
  %.2296952 = phi ptr [ %i.oo, %.lr.ph958 ], [ %.1295.lcssa, %.preheader935 ] ; 3 uses
  %.2300951 = phi ptr [ %i.on, %.lr.ph958 ], [ %.1299.lcssa, %.preheader935 ] ; 3 uses
  %i.kg = load <8 x float>, ptr %i.an, align 32, !tbaa !87 ; 4 uses
  %i.kh = load <8 x float>, ptr %i.bg, align 32, !tbaa !87 ; 4 uses
  %i.ki = load <8 x float>, ptr %i.bh, align 32, !tbaa !87 ; 4 uses
  %i.kj = load <8 x float>, ptr %.2288953, align 32, !tbaa !87
  %i.kk = getelementptr inbounds nuw i8, ptr %.2288953, i64 32
  %i.kl = load <8 x float>, ptr %i.kk, align 32, !tbaa !87 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.2288953, i64 64 ; 3 uses
  %i.kn = load <8 x float>, ptr %i.km, align 32, !tbaa !87 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.2288953, i64 96
  %i.kp = load <8 x float>, ptr %i.ko, align 32, !tbaa !87
  %i.kq = fmul fast <8 x float> %i.kj, %i.kg
  %i.kr = fadd fast <8 x float> %i.ag, %i.kq
  %i.ks = fmul fast <8 x float> %i.kl, %i.kg
  %i.kt = fadd fast <8 x float> %i.ag, %i.ks
  %i.ku = fmul fast <8 x float> %i.kl, %i.kh
  %i.kv = fadd fast <8 x float> %i.ku, %i.kr
  %i.kw = fmul fast <8 x float> %i.kn, %i.kh
  %i.kx = fadd fast <8 x float> %i.kw, %i.kt
  %i.ky = fmul fast <8 x float> %i.kn, %i.ki
  %i.kz = fadd fast <8 x float> %i.kv, %i.ky
  %i.la = fmul fast <8 x float> %i.kp, %i.ki
  %i.lb = fadd fast <8 x float> %i.kx, %i.la
  %i.lc = load <8 x float>, ptr %i.bi, align 32, !tbaa !87 ; 4 uses
  %i.ld = load <8 x float>, ptr %i.bj, align 32, !tbaa !87 ; 4 uses
  %i.le = load <8 x float>, ptr %i.bk, align 32, !tbaa !87 ; 4 uses
  %i.lf = load <8 x float>, ptr %.2280954, align 32, !tbaa !87 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.2280954, i64 32
  %i.lh = load <8 x float>, ptr %i.lg, align 32, !tbaa !87 ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.2280954, i64 64 ; 3 uses
  %i.lj = load <8 x float>, ptr %i.li, align 32, !tbaa !87 ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.2280954, i64 96
  %i.ll = load <8 x float>, ptr %i.lk, align 32, !tbaa !87 ; 2 uses
  %i.lm = fmul fast <8 x float> %i.lf, %i.lc
  %i.ln = fadd fast <8 x float> %i.kz, %i.lm
  %i.lo = fmul fast <8 x float> %i.lh, %i.lc
  %i.lp = fadd fast <8 x float> %i.lb, %i.lo
  %i.lq = fmul fast <8 x float> %i.lf, %i.kg
  %i.lr = fadd fast <8 x float> %i.ag, %i.lq
  %i.ls = fmul fast <8 x float> %i.lh, %i.kg
  %i.lt = fadd fast <8 x float> %i.ag, %i.ls
  %i.lu = fmul fast <8 x float> %i.lh, %i.ld
  %i.lv = fadd fast <8 x float> %i.ln, %i.lu
  %i.lw = fmul fast <8 x float> %i.lj, %i.ld
  %i.lx = fadd fast <8 x float> %i.lp, %i.lw
  %i.ly = fmul fast <8 x float> %i.lh, %i.kh
  %i.lz = fadd fast <8 x float> %i.ly, %i.lr
  %i.ma = fmul fast <8 x float> %i.lj, %i.kh
  %i.mb = fadd fast <8 x float> %i.ma, %i.lt
  %i.mc = fmul fast <8 x float> %i.lj, %i.le
  %i.md = fadd fast <8 x float> %i.lv, %i.mc
  %i.me = fmul fast <8 x float> %i.ll, %i.le
  %i.mf = fadd fast <8 x float> %i.lx, %i.me
  %i.mg = fmul fast <8 x float> %i.lj, %i.ki
  %i.mh = fadd fast <8 x float> %i.lz, %i.mg
  %i.mi = fmul fast <8 x float> %i.ll, %i.ki
  %i.mj = fadd fast <8 x float> %i.mb, %i.mi
  %i.mk = load <8 x float>, ptr %i.bl, align 32, !tbaa !87 ; 4 uses
  %i.ml = load <8 x float>, ptr %i.bm, align 32, !tbaa !87 ; 4 uses
  %i.mm = load <8 x float>, ptr %i.bn, align 32, !tbaa !87 ; 4 uses
  %i.mn = load <8 x float>, ptr %.2276955, align 32, !tbaa !87 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.2276955, i64 32
  %i.mp = load <8 x float>, ptr %i.mo, align 32, !tbaa !87 ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.2276955, i64 64 ; 3 uses
  %i.mr = load <8 x float>, ptr %i.mq, align 32, !tbaa !87 ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.2276955, i64 96
  %i.mt = load <8 x float>, ptr %i.ms, align 32, !tbaa !87 ; 2 uses
  %i.mu = fmul fast <8 x float> %i.mn, %i.mk
  %i.mv = fadd fast <8 x float> %i.md, %i.mu
  %i.mw = fmul fast <8 x float> %i.mp, %i.mk
  %i.mx = fadd fast <8 x float> %i.mf, %i.mw
  %i.my = fmul fast <8 x float> %i.mn, %i.lc
  %i.mz = fadd fast <8 x float> %i.mh, %i.my
  %i.na = fmul fast <8 x float> %i.mp, %i.lc
  %i.nb = fadd fast <8 x float> %i.mj, %i.na
  %i.nc = fmul fast <8 x float> %i.mp, %i.ml
  %i.nd = fadd fast <8 x float> %i.mv, %i.nc
  %i.ne = fmul fast <8 x float> %i.mr, %i.ml
  %i.nf = fadd fast <8 x float> %i.mx, %i.ne
  %i.ng = fmul fast <8 x float> %i.mp, %i.ld
  %i.nh = fadd fast <8 x float> %i.mz, %i.ng
  %i.ni = fmul fast <8 x float> %i.mr, %i.ld
  %i.nj = fadd fast <8 x float> %i.nb, %i.ni
  %i.nk = fmul fast <8 x float> %i.mr, %i.mm
  %i.nl = fadd fast <8 x float> %i.nd, %i.nk
  %i.nm = fmul fast <8 x float> %i.mt, %i.mm
  %i.nn = fadd fast <8 x float> %i.nf, %i.nm
  %i.no = fmul fast <8 x float> %i.mr, %i.le
  %i.np = fadd fast <8 x float> %i.nh, %i.no
  %i.nq = fmul fast <8 x float> %i.mt, %i.le
  %i.nr = fadd fast <8 x float> %i.nj, %i.nq
  %i.ns = load <8 x float>, ptr %.2273956, align 32, !tbaa !87
  %i.nt = getelementptr inbounds nuw i8, ptr %.2273956, i64 32
  %i.nu = load <8 x float>, ptr %i.nt, align 32, !tbaa !87 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.2273956, i64 64 ; 3 uses
  %i.nw = load <8 x float>, ptr %i.nv, align 32, !tbaa !87 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.2273956, i64 96
  %i.ny = load <8 x float>, ptr %i.nx, align 32, !tbaa !87
  %i.nz = fmul fast <8 x float> %i.ns, %i.mk
  %i.oa = fadd fast <8 x float> %i.np, %i.nz
  %i.ob = fmul fast <8 x float> %i.nu, %i.mk
  %i.oc = fadd fast <8 x float> %i.nr, %i.ob
  %i.od = fmul fast <8 x float> %i.nu, %i.ml
  %i.oe = fadd fast <8 x float> %i.oa, %i.od
  %i.of = fmul fast <8 x float> %i.nw, %i.ml
  %i.og = fadd fast <8 x float> %i.oc, %i.of
  %i.oh = fmul fast <8 x float> %i.nw, %i.mm
  %i.oi = fadd fast <8 x float> %i.oe, %i.oh
  %i.oj = fmul fast <8 x float> %i.ny, %i.mm
  %i.ok = fadd fast <8 x float> %i.og, %i.oj
  store <8 x float> %i.nl, ptr %.2300951, align 32, !tbaa !87
  %i.ol = getelementptr inbounds nuw i8, ptr %.2300951, i64 32
  store <8 x float> %i.nn, ptr %i.ol, align 32, !tbaa !87
  store <8 x float> %i.oi, ptr %.2296952, align 32, !tbaa !87
  %i.om = getelementptr inbounds nuw i8, ptr %.2296952, i64 32
  store <8 x float> %i.ok, ptr %i.om, align 32, !tbaa !87
  %i.on = getelementptr inbounds nuw i8, ptr %.2300951, i64 64 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.2296952, i64 64 ; 2 uses
  %i.op = add nuw nsw i32 %.1267957, 2            ; 3 uses
  %i.oq = or disjoint i32 %i.op, 1
  %i.or = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.os = icmp slt i32 %i.oq, %i.or
  br i1 %i.os, label %.lr.ph958, label %.preheader934, !llvm.loop !202

.lr.ph973:                                        ; preds = %.preheader934, %.lr.ph973
  %.2268972 = phi i32 [ %i.ri, %.lr.ph973 ], [ %.1267.lcssa, %.preheader934 ]
  %.3971 = phi ptr [ %i.qw, %.lr.ph973 ], [ %.2273.lcssa, %.preheader934 ] ; 3 uses
  %.3277970 = phi ptr [ %i.qf, %.lr.ph973 ], [ %.2276.lcssa, %.preheader934 ] ; 3 uses
  %.3281969 = phi ptr [ %i.pl, %.lr.ph973 ], [ %.2280.lcssa, %.preheader934 ] ; 3 uses
  %.3289968 = phi ptr [ %i.ox, %.lr.ph973 ], [ %.2288.lcssa, %.preheader934 ] ; 3 uses
  %.3297967 = phi ptr [ %i.rh, %.lr.ph973 ], [ %.2296.lcssa, %.preheader934 ] ; 2 uses
  %.3301966 = phi ptr [ %i.rg, %.lr.ph973 ], [ %.2300.lcssa, %.preheader934 ] ; 2 uses
  %i.ot = load <8 x float>, ptr %i.an, align 32, !tbaa !87 ; 2 uses
  %i.ou = load <8 x float>, ptr %i.bg, align 32, !tbaa !87 ; 2 uses
  %i.ov = load <8 x float>, ptr %i.bh, align 32, !tbaa !87 ; 2 uses
  %i.ow = load <8 x float>, ptr %.3289968, align 32, !tbaa !87
  %i.ox = getelementptr inbounds nuw i8, ptr %.3289968, i64 32 ; 3 uses
  %i.oy = load <8 x float>, ptr %i.ox, align 32, !tbaa !87
  %i.oz = getelementptr inbounds nuw i8, ptr %.3289968, i64 64
  %i.pa = load <8 x float>, ptr %i.oz, align 32, !tbaa !87
  %i.pb = fmul fast <8 x float> %i.ow, %i.ot
  %i.pc = fadd fast <8 x float> %i.ag, %i.pb
  %i.pd = fmul fast <8 x float> %i.oy, %i.ou
  %i.pe = fadd fast <8 x float> %i.pd, %i.pc
  %i.pf = fmul fast <8 x float> %i.pa, %i.ov
  %i.pg = fadd fast <8 x float> %i.pe, %i.pf
  %i.ph = load <8 x float>, ptr %i.bi, align 32, !tbaa !87 ; 2 uses
  %i.pi = load <8 x float>, ptr %i.bj, align 32, !tbaa !87 ; 2 uses
  %i.pj = load <8 x float>, ptr %i.bk, align 32, !tbaa !87 ; 2 uses
  %i.pk = load <8 x float>, ptr %.3281969, align 32, !tbaa !87 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.3281969, i64 32 ; 3 uses
  %i.pm = load <8 x float>, ptr %i.pl, align 32, !tbaa !87 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.3281969, i64 64
  %i.po = load <8 x float>, ptr %i.pn, align 32, !tbaa !87 ; 2 uses
  %i.pp = fmul fast <8 x float> %i.pk, %i.ph
  %i.pq = fadd fast <8 x float> %i.pg, %i.pp
  %i.pr = fmul fast <8 x float> %i.pk, %i.ot
  %i.ps = fadd fast <8 x float> %i.ag, %i.pr
  %i.pt = fmul fast <8 x float> %i.pm, %i.pi
  %i.pu = fadd fast <8 x float> %i.pq, %i.pt
  %i.pv = fmul fast <8 x float> %i.pm, %i.ou
  %i.pw = fadd fast <8 x float> %i.pv, %i.ps
  %i.px = fmul fast <8 x float> %i.po, %i.pj
  %i.py = fadd fast <8 x float> %i.pu, %i.px
  %i.pz = fmul fast <8 x float> %i.po, %i.ov
  %i.qa = fadd fast <8 x float> %i.pw, %i.pz
  %i.qb = load <8 x float>, ptr %i.bl, align 32, !tbaa !87 ; 2 uses
  %i.qc = load <8 x float>, ptr %i.bm, align 32, !tbaa !87 ; 2 uses
  %i.qd = load <8 x float>, ptr %i.bn, align 32, !tbaa !87 ; 2 uses
  %i.qe = load <8 x float>, ptr %.3277970, align 32, !tbaa !87 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.3277970, i64 32 ; 3 uses
  %i.qg = load <8 x float>, ptr %i.qf, align 32, !tbaa !87 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.3277970, i64 64
  %i.qi = load <8 x float>, ptr %i.qh, align 32, !tbaa !87 ; 2 uses
  %i.qj = fmul fast <8 x float> %i.qe, %i.qb
  %i.qk = fadd fast <8 x float> %i.py, %i.qj
  %i.ql = fmul fast <8 x float> %i.qe, %i.ph
  %i.qm = fadd fast <8 x float> %i.qa, %i.ql
  %i.qn = fmul fast <8 x float> %i.qg, %i.qc
  %i.qo = fadd fast <8 x float> %i.qk, %i.qn
  %i.qp = fmul fast <8 x float> %i.qg, %i.pi
  %i.qq = fadd fast <8 x float> %i.qm, %i.qp
  %i.qr = fmul fast <8 x float> %i.qi, %i.qd
  %i.qs = fadd fast <8 x float> %i.qo, %i.qr
  %i.qt = fmul fast <8 x float> %i.qi, %i.pj
  %i.qu = fadd fast <8 x float> %i.qq, %i.qt
  %i.qv = load <8 x float>, ptr %.3971, align 32, !tbaa !87
  %i.qw = getelementptr inbounds nuw i8, ptr %.3971, i64 32 ; 3 uses
  %i.qx = load <8 x float>, ptr %i.qw, align 32, !tbaa !87
  %i.qy = getelementptr inbounds nuw i8, ptr %.3971, i64 64
  %i.qz = load <8 x float>, ptr %i.qy, align 32, !tbaa !87
  %i.ra = fmul fast <8 x float> %i.qv, %i.qb
  %i.rb = fadd fast <8 x float> %i.qu, %i.ra
  %i.rc = fmul fast <8 x float> %i.qx, %i.qc
  %i.rd = fadd fast <8 x float> %i.rb, %i.rc
  %i.re = fmul fast <8 x float> %i.qz, %i.qd
  %i.rf = fadd fast <8 x float> %i.rd, %i.re
  store <8 x float> %i.qs, ptr %.3301966, align 32, !tbaa !87
  store <8 x float> %i.rf, ptr %.3297967, align 32, !tbaa !87
  %i.rg = getelementptr inbounds nuw i8, ptr %.3301966, i64 32 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.3297967, i64 32 ; 2 uses
  %i.ri = add nuw nsw i32 %.2268972, 1            ; 2 uses
  %i.rj = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.rk = icmp slt i32 %i.ri, %i.rj
  br i1 %i.rk, label %.lr.ph973, label %._crit_edge, !llvm.loop !203

._crit_edge:                                      ; preds = %.lr.ph973, %.preheader934
  %i.rl = phi i32 [ %i.ke, %.preheader934 ], [ %i.rj, %.lr.ph973 ] ; 2 uses
  %.3301.lcssa = phi ptr [ %.2300.lcssa, %.preheader934 ], [ %i.rg, %.lr.ph973 ]
  %.3297.lcssa = phi ptr [ %.2296.lcssa, %.preheader934 ], [ %i.rh, %.lr.ph973 ]
  %.3289.lcssa = phi ptr [ %.2288.lcssa, %.preheader934 ], [ %i.ox, %.lr.ph973 ]
  %.3281.lcssa = phi ptr [ %.2280.lcssa, %.preheader934 ], [ %i.pl, %.lr.ph973 ]
  %.3277.lcssa = phi ptr [ %.2276.lcssa, %.preheader934 ], [ %i.qf, %.lr.ph973 ]
  %.3.lcssa = phi ptr [ %.2273.lcssa, %.preheader934 ], [ %i.qw, %.lr.ph973 ]
  %i.rm = load i32, ptr %9, align 4, !tbaa !69
  %i.rn = shl nsw i32 %i.rm, 3
  %i.ro = add nsw i32 %i.rn, 16
  %i.rp = sext i32 %i.ro to i64                   ; 4 uses
  %i.rq = getelementptr inbounds [4 x i8], ptr %.3289.lcssa, i64 %i.rp ; 2 uses
  %i.rr = getelementptr inbounds [4 x i8], ptr %.3281.lcssa, i64 %i.rp ; 2 uses
  %i.rs = getelementptr inbounds [4 x i8], ptr %.3277.lcssa, i64 %i.rp ; 2 uses
  %i.rt = getelementptr inbounds [4 x i8], ptr %.3.lcssa, i64 %i.rp
  %i.ru = shl nsw i32 %i.rl, 3
  %i.rv = sext i32 %i.ru to i64                   ; 2 uses
  %i.rw = getelementptr inbounds [4 x i8], ptr %.3301.lcssa, i64 %i.rv ; 2 uses
  %i.rx = getelementptr inbounds [4 x i8], ptr %.3297.lcssa, i64 %i.rv
  %i.ry = add nuw nsw i32 %.0269987, 2            ; 3 uses
  %i.rz = or disjoint i32 %i.ry, 1
  %i.sa = load i32, ptr %7, align 4, !tbaa !69    ; 2 uses
  %i.sb = icmp slt i32 %i.rz, %i.sa
  br i1 %i.sb, label %.preheader936, label %.preheader937, !llvm.loop !204

.preheader933:                                    ; preds = %.preheader933.lr.ph, %._crit_edge1021
  %i.sc = phi i32 [ %.pre1075, %.preheader933.lr.ph ], [ %i.abp, %._crit_edge1021 ] ; 2 uses
  %.12701030 = phi i32 [ %.0269.lcssa, %.preheader933.lr.ph ], [ %i.abt, %._crit_edge1021 ]
  %.41029 = phi ptr [ %.0274.lcssa, %.preheader933.lr.ph ], [ %i.abs, %._crit_edge1021 ] ; 2 uses
  %.42821028 = phi ptr [ %.0278.lcssa, %.preheader933.lr.ph ], [ %i.abr, %._crit_edge1021 ] ; 2 uses
  %.42901027 = phi ptr [ %.0286.lcssa, %.preheader933.lr.ph ], [ %i.abq, %._crit_edge1021 ] ; 2 uses
  %.43021026 = phi ptr [ %.0298.lcssa, %.preheader933.lr.ph ], [ %.7305.lcssa, %._crit_edge1021 ] ; 2 uses
  %i.sd = icmp sgt i32 %i.sc, 3
  br i1 %i.sd, label %.lr.ph998, label %.preheader932

.preheader932:                                    ; preds = %.lr.ph998, %.preheader933
  %i.se = phi i32 [ %i.sc, %.preheader933 ], [ %i.wx, %.lr.ph998 ] ; 2 uses
  %.5303.lcssa = phi ptr [ %.43021026, %.preheader933 ], [ %i.wu, %.lr.ph998 ] ; 2 uses
  %.5291.lcssa = phi ptr [ %.42901027, %.preheader933 ], [ %i.sr, %.lr.ph998 ] ; 2 uses
  %.5283.lcssa = phi ptr [ %.42821028, %.preheader933 ], [ %i.ud, %.lr.ph998 ] ; 2 uses
  %.5.lcssa = phi ptr [ %.41029, %.preheader933 ], [ %i.vp, %.lr.ph998 ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.preheader933 ], [ %i.wv, %.lr.ph998 ] ; 3 uses
  %i.sf = or disjoint i32 %.0.lcssa, 1
  %i.sg = icmp slt i32 %i.sf, %i.se
  br i1 %i.sg, label %.lr.ph1009, label %.preheader

.lr.ph998:                                        ; preds = %.preheader933, %.lr.ph998
  %.0997 = phi i32 [ %i.wv, %.lr.ph998 ], [ 0, %.preheader933 ]
  %.5996 = phi ptr [ %i.vp, %.lr.ph998 ], [ %.41029, %.preheader933 ] ; 6 uses
  %.5283995 = phi ptr [ %i.ud, %.lr.ph998 ], [ %.42821028, %.preheader933 ] ; 6 uses
  %.5291994 = phi ptr [ %i.sr, %.lr.ph998 ], [ %.42901027, %.preheader933 ] ; 6 uses
  %.5303993 = phi ptr [ %i.wu, %.lr.ph998 ], [ %.43021026, %.preheader933 ] ; 5 uses
  %i.sh = load <8 x float>, ptr %i.an, align 32, !tbaa !87 ; 4 uses
  %i.si = load <8 x float>, ptr %i.bq, align 32, !tbaa !87 ; 4 uses
  %i.sj = load <8 x float>, ptr %i.br, align 32, !tbaa !87 ; 4 uses
  %i.sk = load <8 x float>, ptr %.5291994, align 32, !tbaa !87
  %i.sl = getelementptr inbounds nuw i8, ptr %.5291994, i64 32
  %i.sm = load <8 x float>, ptr %i.sl, align 32, !tbaa !87 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.5291994, i64 64
  %i.so = load <8 x float>, ptr %i.sn, align 32, !tbaa !87 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.5291994, i64 96
  %i.sq = load <8 x float>, ptr %i.sp, align 32, !tbaa !87 ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.5291994, i64 128 ; 3 uses
  %i.ss = load <8 x float>, ptr %i.sr, align 32, !tbaa !87 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.5291994, i64 160
  %i.su = load <8 x float>, ptr %i.st, align 32, !tbaa !87
  %i.sv = fmul fast <8 x float> %i.sk, %i.sh
  %i.sw = fadd fast <8 x float> %i.ag, %i.sv
  %i.sx = fmul fast <8 x float> %i.sm, %i.sh
  %i.sy = fadd fast <8 x float> %i.ag, %i.sx
  %i.sz = fmul fast <8 x float> %i.so, %i.sh
  %i.ta = fadd fast <8 x float> %i.ag, %i.sz
  %i.tb = fmul fast <8 x float> %i.sq, %i.sh
  %i.tc = fadd fast <8 x float> %i.ag, %i.tb
  %i.td = fmul fast <8 x float> %i.sm, %i.si
  %i.te = fadd fast <8 x float> %i.td, %i.sw
  %i.tf = fmul fast <8 x float> %i.so, %i.si
  %i.tg = fadd fast <8 x float> %i.tf, %i.sy
  %i.th = fmul fast <8 x float> %i.sq, %i.si
  %i.ti = fadd fast <8 x float> %i.th, %i.ta
  %i.tj = fmul fast <8 x float> %i.ss, %i.si
  %i.tk = fadd fast <8 x float> %i.tj, %i.tc
  %i.tl = fmul fast <8 x float> %i.so, %i.sj
  %i.tm = fadd fast <8 x float> %i.te, %i.tl
  %i.tn = fmul fast <8 x float> %i.sq, %i.sj
  %i.to = fadd fast <8 x float> %i.tg, %i.tn
  %i.tp = fmul fast <8 x float> %i.ss, %i.sj
  %i.tq = fadd fast <8 x float> %i.ti, %i.tp
  %i.tr = fmul fast <8 x float> %i.su, %i.sj
  %i.ts = fadd fast <8 x float> %i.tk, %i.tr
  %i.tt = load <8 x float>, ptr %i.bs, align 32, !tbaa !87 ; 4 uses
  %i.tu = load <8 x float>, ptr %i.bt, align 32, !tbaa !87 ; 4 uses
  %i.tv = load <8 x float>, ptr %i.bu, align 32, !tbaa !87 ; 4 uses
  %i.tw = load <8 x float>, ptr %.5283995, align 32, !tbaa !87
  %i.tx = getelementptr inbounds nuw i8, ptr %.5283995, i64 32
  %i.ty = load <8 x float>, ptr %i.tx, align 32, !tbaa !87 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.5283995, i64 64
  %i.ua = load <8 x float>, ptr %i.tz, align 32, !tbaa !87 ; 3 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.5283995, i64 96
  %i.uc = load <8 x float>, ptr %i.ub, align 32, !tbaa !87 ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.5283995, i64 128 ; 3 uses
  %i.ue = load <8 x float>, ptr %i.ud, align 32, !tbaa !87 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.5283995, i64 160
  %i.ug = load <8 x float>, ptr %i.uf, align 32, !tbaa !87
  %i.uh = fmul fast <8 x float> %i.tw, %i.tt
  %i.ui = fadd fast <8 x float> %i.tm, %i.uh
  %i.uj = fmul fast <8 x float> %i.ty, %i.tt
  %i.uk = fadd fast <8 x float> %i.to, %i.uj
  %i.ul = fmul fast <8 x float> %i.ua, %i.tt
  %i.um = fadd fast <8 x float> %i.tq, %i.ul
  %i.un = fmul fast <8 x float> %i.uc, %i.tt
  %i.uo = fadd fast <8 x float> %i.ts, %i.un
  %i.up = fmul fast <8 x float> %i.ty, %i.tu
  %i.uq = fadd fast <8 x float> %i.ui, %i.up
  %i.ur = fmul fast <8 x float> %i.ua, %i.tu
  %i.us = fadd fast <8 x float> %i.uk, %i.ur
  %i.ut = fmul fast <8 x float> %i.uc, %i.tu
  %i.uu = fadd fast <8 x float> %i.um, %i.ut
  %i.uv = fmul fast <8 x float> %i.ue, %i.tu
  %i.uw = fadd fast <8 x float> %i.uo, %i.uv
  %i.ux = fmul fast <8 x float> %i.ua, %i.tv
  %i.uy = fadd fast <8 x float> %i.uq, %i.ux
  %i.uz = fmul fast <8 x float> %i.uc, %i.tv
  %i.va = fadd fast <8 x float> %i.us, %i.uz
  %i.vb = fmul fast <8 x float> %i.ue, %i.tv
  %i.vc = fadd fast <8 x float> %i.uu, %i.vb
  %i.vd = fmul fast <8 x float> %i.ug, %i.tv
  %i.ve = fadd fast <8 x float> %i.uw, %i.vd
  %i.vf = load <8 x float>, ptr %i.bv, align 32, !tbaa !87 ; 4 uses
  %i.vg = load <8 x float>, ptr %i.bw, align 32, !tbaa !87 ; 4 uses
  %i.vh = load <8 x float>, ptr %i.bx, align 32, !tbaa !87 ; 4 uses
  %i.vi = load <8 x float>, ptr %.5996, align 32, !tbaa !87
  %i.vj = getelementptr inbounds nuw i8, ptr %.5996, i64 32
  %i.vk = load <8 x float>, ptr %i.vj, align 32, !tbaa !87 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %.5996, i64 64
  %i.vm = load <8 x float>, ptr %i.vl, align 32, !tbaa !87 ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.5996, i64 96
  %i.vo = load <8 x float>, ptr %i.vn, align 32, !tbaa !87 ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.5996, i64 128 ; 3 uses
  %i.vq = load <8 x float>, ptr %i.vp, align 32, !tbaa !87 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.5996, i64 160
  %i.vs = load <8 x float>, ptr %i.vr, align 32, !tbaa !87
  %i.vt = fmul fast <8 x float> %i.vi, %i.vf
  %i.vu = fadd fast <8 x float> %i.uy, %i.vt
  %i.vv = fmul fast <8 x float> %i.vk, %i.vf
  %i.vw = fadd fast <8 x float> %i.va, %i.vv
  %i.vx = fmul fast <8 x float> %i.vm, %i.vf
  %i.vy = fadd fast <8 x float> %i.vc, %i.vx
  %i.vz = fmul fast <8 x float> %i.vo, %i.vf
  %i.wa = fadd fast <8 x float> %i.ve, %i.vz
  %i.wb = fmul fast <8 x float> %i.vk, %i.vg
  %i.wc = fadd fast <8 x float> %i.vu, %i.wb
  %i.wd = fmul fast <8 x float> %i.vm, %i.vg
  %i.we = fadd fast <8 x float> %i.vw, %i.wd
  %i.wf = fmul fast <8 x float> %i.vo, %i.vg
  %i.wg = fadd fast <8 x float> %i.vy, %i.wf
  %i.wh = fmul fast <8 x float> %i.vq, %i.vg
  %i.wi = fadd fast <8 x float> %i.wa, %i.wh
  %i.wj = fmul fast <8 x float> %i.vm, %i.vh
  %i.wk = fadd fast <8 x float> %i.wc, %i.wj
  %i.wl = fmul fast <8 x float> %i.vo, %i.vh
  %i.wm = fadd fast <8 x float> %i.we, %i.wl
  %i.wn = fmul fast <8 x float> %i.vq, %i.vh
  %i.wo = fadd fast <8 x float> %i.wg, %i.wn
  %i.wp = fmul fast <8 x float> %i.vs, %i.vh
  %i.wq = fadd fast <8 x float> %i.wi, %i.wp
  store <8 x float> %i.wk, ptr %.5303993, align 32, !tbaa !87
  %i.wr = getelementptr inbounds nuw i8, ptr %.5303993, i64 32
  store <8 x float> %i.wm, ptr %i.wr, align 32, !tbaa !87
  %i.ws = getelementptr inbounds nuw i8, ptr %.5303993, i64 64
  store <8 x float> %i.wo, ptr %i.ws, align 32, !tbaa !87
  %i.wt = getelementptr inbounds nuw i8, ptr %.5303993, i64 96
  store <8 x float> %i.wq, ptr %i.wt, align 32, !tbaa !87
  %i.wu = getelementptr inbounds nuw i8, ptr %.5303993, i64 128 ; 2 uses
  %i.wv = add nuw nsw i32 %.0997, 4               ; 3 uses
  %i.ww = or disjoint i32 %i.wv, 3
  %i.wx = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.wy = icmp slt i32 %i.ww, %i.wx
  br i1 %i.wy, label %.lr.ph998, label %.preheader932, !llvm.loop !205

.preheader:                                       ; preds = %.lr.ph1009, %.preheader932
  %i.wz = phi i32 [ %i.se, %.preheader932 ], [ %i.zt, %.lr.ph1009 ] ; 2 uses
  %.6304.lcssa = phi ptr [ %.5303.lcssa, %.preheader932 ], [ %i.zq, %.lr.ph1009 ] ; 2 uses
  %.6292.lcssa = phi ptr [ %.5291.lcssa, %.preheader932 ], [ %i.xh, %.lr.ph1009 ] ; 2 uses
  %.6284.lcssa = phi ptr [ %.5283.lcssa, %.preheader932 ], [ %i.yd, %.lr.ph1009 ] ; 2 uses
  %.6.lcssa = phi ptr [ %.5.lcssa, %.preheader932 ], [ %i.yz, %.lr.ph1009 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader932 ], [ %i.zr, %.lr.ph1009 ] ; 2 uses
  %i.xa = icmp slt i32 %.1.lcssa, %i.wz
  br i1 %i.xa, label %.lr.ph1020, label %._crit_edge1021

.lr.ph1009:                                       ; preds = %.preheader932, %.lr.ph1009
  %.11008 = phi i32 [ %i.zr, %.lr.ph1009 ], [ %.0.lcssa, %.preheader932 ]
  %.61007 = phi ptr [ %i.yz, %.lr.ph1009 ], [ %.5.lcssa, %.preheader932 ] ; 4 uses
  %.62841006 = phi ptr [ %i.yd, %.lr.ph1009 ], [ %.5283.lcssa, %.preheader932 ] ; 4 uses
  %.62921005 = phi ptr [ %i.xh, %.lr.ph1009 ], [ %.5291.lcssa, %.preheader932 ] ; 4 uses
  %.63041004 = phi ptr [ %i.zq, %.lr.ph1009 ], [ %.5303.lcssa, %.preheader932 ] ; 3 uses
  %i.xb = load <8 x float>, ptr %i.an, align 32, !tbaa !87 ; 2 uses
  %i.xc = load <8 x float>, ptr %i.bq, align 32, !tbaa !87 ; 2 uses
  %i.xd = load <8 x float>, ptr %i.br, align 32, !tbaa !87 ; 2 uses
  %i.xe = load <8 x float>, ptr %.62921005, align 32, !tbaa !87
  %i.xf = getelementptr inbounds nuw i8, ptr %.62921005, i64 32
  %i.xg = load <8 x float>, ptr %i.xf, align 32, !tbaa !87 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.62921005, i64 64 ; 3 uses
  %i.xi = load <8 x float>, ptr %i.xh, align 32, !tbaa !87 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.62921005, i64 96
  %i.xk = load <8 x float>, ptr %i.xj, align 32, !tbaa !87
  %i.xl = fmul fast <8 x float> %i.xe, %i.xb
  %i.xm = fadd fast <8 x float> %i.ag, %i.xl
  %i.xn = fmul fast <8 x float> %i.xg, %i.xb
  %i.xo = fadd fast <8 x float> %i.ag, %i.xn
  %i.xp = fmul fast <8 x float> %i.xg, %i.xc
  %i.xq = fadd fast <8 x float> %i.xp, %i.xm
  %i.xr = fmul fast <8 x float> %i.xi, %i.xc
  %i.xs = fadd fast <8 x float> %i.xr, %i.xo
  %i.xt = fmul fast <8 x float> %i.xi, %i.xd
  %i.xu = fadd fast <8 x float> %i.xq, %i.xt
  %i.xv = fmul fast <8 x float> %i.xk, %i.xd
  %i.xw = fadd fast <8 x float> %i.xs, %i.xv
  %i.xx = load <8 x float>, ptr %i.bs, align 32, !tbaa !87 ; 2 uses
  %i.xy = load <8 x float>, ptr %i.bt, align 32, !tbaa !87 ; 2 uses
  %i.xz = load <8 x float>, ptr %i.bu, align 32, !tbaa !87 ; 2 uses
  %i.ya = load <8 x float>, ptr %.62841006, align 32, !tbaa !87
  %i.yb = getelementptr inbounds nuw i8, ptr %.62841006, i64 32
  %i.yc = load <8 x float>, ptr %i.yb, align 32, !tbaa !87 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.62841006, i64 64 ; 3 uses
  %i.ye = load <8 x float>, ptr %i.yd, align 32, !tbaa !87 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.62841006, i64 96
  %i.yg = load <8 x float>, ptr %i.yf, align 32, !tbaa !87
  %i.yh = fmul fast <8 x float> %i.ya, %i.xx
  %i.yi = fadd fast <8 x float> %i.xu, %i.yh
  %i.yj = fmul fast <8 x float> %i.yc, %i.xx
  %i.yk = fadd fast <8 x float> %i.xw, %i.yj
  %i.yl = fmul fast <8 x float> %i.yc, %i.xy
  %i.ym = fadd fast <8 x float> %i.yi, %i.yl
  %i.yn = fmul fast <8 x float> %i.ye, %i.xy
  %i.yo = fadd fast <8 x float> %i.yk, %i.yn
  %i.yp = fmul fast <8 x float> %i.ye, %i.xz
  %i.yq = fadd fast <8 x float> %i.ym, %i.yp
  %i.yr = fmul fast <8 x float> %i.yg, %i.xz
  %i.ys = fadd fast <8 x float> %i.yo, %i.yr
  %i.yt = load <8 x float>, ptr %i.bv, align 32, !tbaa !87 ; 2 uses
  %i.yu = load <8 x float>, ptr %i.bw, align 32, !tbaa !87 ; 2 uses
  %i.yv = load <8 x float>, ptr %i.bx, align 32, !tbaa !87 ; 2 uses
  %i.yw = load <8 x float>, ptr %.61007, align 32, !tbaa !87
  %i.yx = getelementptr inbounds nuw i8, ptr %.61007, i64 32
  %i.yy = load <8 x float>, ptr %i.yx, align 32, !tbaa !87 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %.61007, i64 64 ; 3 uses
  %i.za = load <8 x float>, ptr %i.yz, align 32, !tbaa !87 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %.61007, i64 96
  %i.zc = load <8 x float>, ptr %i.zb, align 32, !tbaa !87
  %i.zd = fmul fast <8 x float> %i.yw, %i.yt
  %i.ze = fadd fast <8 x float> %i.yq, %i.zd
  %i.zf = fmul fast <8 x float> %i.yy, %i.yt
  %i.zg = fadd fast <8 x float> %i.ys, %i.zf
  %i.zh = fmul fast <8 x float> %i.yy, %i.yu
  %i.zi = fadd fast <8 x float> %i.ze, %i.zh
  %i.zj = fmul fast <8 x float> %i.za, %i.yu
  %i.zk = fadd fast <8 x float> %i.zg, %i.zj
  %i.zl = fmul fast <8 x float> %i.za, %i.yv
  %i.zm = fadd fast <8 x float> %i.zi, %i.zl
  %i.zn = fmul fast <8 x float> %i.zc, %i.yv
  %i.zo = fadd fast <8 x float> %i.zk, %i.zn
  store <8 x float> %i.zm, ptr %.63041004, align 32, !tbaa !87
  %i.zp = getelementptr inbounds nuw i8, ptr %.63041004, i64 32
  store <8 x float> %i.zo, ptr %i.zp, align 32, !tbaa !87
  %i.zq = getelementptr inbounds nuw i8, ptr %.63041004, i64 64 ; 2 uses
  %i.zr = add nuw nsw i32 %.11008, 2              ; 3 uses
  %i.zs = or disjoint i32 %i.zr, 1
  %i.zt = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.zu = icmp slt i32 %i.zs, %i.zt
  br i1 %i.zu, label %.lr.ph1009, label %.preheader, !llvm.loop !206

.lr.ph1020:                                       ; preds = %.preheader, %.lr.ph1020
  %.21019 = phi i32 [ %i.abm, %.lr.ph1020 ], [ %.1.lcssa, %.preheader ]
  %.71018 = phi ptr [ %i.abb, %.lr.ph1020 ], [ %.6.lcssa, %.preheader ] ; 3 uses
  %.72851017 = phi ptr [ %i.aan, %.lr.ph1020 ], [ %.6284.lcssa, %.preheader ] ; 3 uses
  %.72931016 = phi ptr [ %i.zz, %.lr.ph1020 ], [ %.6292.lcssa, %.preheader ] ; 3 uses
  %.73051015 = phi ptr [ %i.abl, %.lr.ph1020 ], [ %.6304.lcssa, %.preheader ] ; 2 uses
  %i.zv = load <8 x float>, ptr %i.an, align 32, !tbaa !87
  %i.zw = load <8 x float>, ptr %i.bq, align 32, !tbaa !87
  %i.zx = load <8 x float>, ptr %i.br, align 32, !tbaa !87
  %i.zy = load <8 x float>, ptr %.72931016, align 32, !tbaa !87
  %i.zz = getelementptr inbounds nuw i8, ptr %.72931016, i64 32 ; 3 uses
  %i.aaa = load <8 x float>, ptr %i.zz, align 32, !tbaa !87
  %i.aab = getelementptr inbounds nuw i8, ptr %.72931016, i64 64
  %i.aac = load <8 x float>, ptr %i.aab, align 32, !tbaa !87
  %i.aad = fmul fast <8 x float> %i.zy, %i.zv
  %i.aae = fadd fast <8 x float> %i.ag, %i.aad
  %i.aaf = fmul fast <8 x float> %i.aaa, %i.zw
  %i.aag = fadd fast <8 x float> %i.aaf, %i.aae
  %i.aah = fmul fast <8 x float> %i.aac, %i.zx
  %i.aai = fadd fast <8 x float> %i.aag, %i.aah
  %i.aaj = load <8 x float>, ptr %i.bs, align 32, !tbaa !87
  %i.aak = load <8 x float>, ptr %i.bt, align 32, !tbaa !87
  %i.aal = load <8 x float>, ptr %i.bu, align 32, !tbaa !87
  %i.aam = load <8 x float>, ptr %.72851017, align 32, !tbaa !87
  %i.aan = getelementptr inbounds nuw i8, ptr %.72851017, i64 32 ; 3 uses
  %i.aao = load <8 x float>, ptr %i.aan, align 32, !tbaa !87
  %i.aap = getelementptr inbounds nuw i8, ptr %.72851017, i64 64
  %i.aaq = load <8 x float>, ptr %i.aap, align 32, !tbaa !87
  %i.aar = fmul fast <8 x float> %i.aam, %i.aaj
  %i.aas = fadd fast <8 x float> %i.aai, %i.aar
  %i.aat = fmul fast <8 x float> %i.aao, %i.aak
  %i.aau = fadd fast <8 x float> %i.aas, %i.aat
  %i.aav = fmul fast <8 x float> %i.aaq, %i.aal
  %i.aaw = fadd fast <8 x float> %i.aau, %i.aav
  %i.aax = load <8 x float>, ptr %i.bv, align 32, !tbaa !87
  %i.aay = load <8 x float>, ptr %i.bw, align 32, !tbaa !87
  %i.aaz = load <8 x float>, ptr %i.bx, align 32, !tbaa !87
  %i.aba = load <8 x float>, ptr %.71018, align 32, !tbaa !87
  %i.abb = getelementptr inbounds nuw i8, ptr %.71018, i64 32 ; 3 uses
  %i.abc = load <8 x float>, ptr %i.abb, align 32, !tbaa !87
  %i.abd = getelementptr inbounds nuw i8, ptr %.71018, i64 64
  %i.abe = load <8 x float>, ptr %i.abd, align 32, !tbaa !87
  %i.abf = fmul fast <8 x float> %i.aba, %i.aax
  %i.abg = fadd fast <8 x float> %i.aaw, %i.abf
  %i.abh = fmul fast <8 x float> %i.abc, %i.aay
  %i.abi = fadd fast <8 x float> %i.abg, %i.abh
  %i.abj = fmul fast <8 x float> %i.abe, %i.aaz
  %i.abk = fadd fast <8 x float> %i.abi, %i.abj
  store <8 x float> %i.abk, ptr %.73051015, align 32, !tbaa !87
  %i.abl = getelementptr inbounds nuw i8, ptr %.73051015, i64 32 ; 2 uses
  %i.abm = add nuw nsw i32 %.21019, 1             ; 2 uses
  %i.abn = load i32, ptr %8, align 4, !tbaa !69   ; 2 uses
  %i.abo = icmp slt i32 %i.abm, %i.abn
  br i1 %i.abo, label %.lr.ph1020, label %._crit_edge1021, !llvm.loop !207

._crit_edge1021:                                  ; preds = %.lr.ph1020, %.preheader
  %i.abp = phi i32 [ %i.wz, %.preheader ], [ %i.abn, %.lr.ph1020 ]
  %.7305.lcssa = phi ptr [ %.6304.lcssa, %.preheader ], [ %i.abl, %.lr.ph1020 ]
  %.7293.lcssa = phi ptr [ %.6292.lcssa, %.preheader ], [ %i.zz, %.lr.ph1020 ]
  %.7285.lcssa = phi ptr [ %.6284.lcssa, %.preheader ], [ %i.aan, %.lr.ph1020 ]
  %.7.lcssa = phi ptr [ %.6.lcssa, %.preheader ], [ %i.abb, %.lr.ph1020 ]
  %i.abq = getelementptr inbounds nuw i8, ptr %.7293.lcssa, i64 64
  %i.abr = getelementptr inbounds nuw i8, ptr %.7285.lcssa, i64 64
  %i.abs = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 64
  %i.abt = add nuw nsw i32 %.12701030, 1          ; 2 uses
  %i.abu = load i32, ptr %7, align 4, !tbaa !69
  %i.abv = icmp slt i32 %i.abt, %i.abu
  br i1 %i.abv, label %.preheader933, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !208

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge1021, %.preheader937
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.u, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge1033, label %_ZN4ncnn3Mat7channelEi.exit

._crit_edge1033:                                  ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge1033, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21convdw3x3s2_pack8_avxERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #12 personality ptr @__gxx_personality_v0 {
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
  %.not402 = icmp sgt i32 %i.k, %i.j
  br i1 %.not402, label %._crit_edge404, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

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
  %i.u = load ptr, ptr %3, align 8, !tbaa !21, !noalias !219
  %i.v = load i64, ptr %i.l, align 8, !tbaa !22, !noalias !219
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !219
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y
  %i.aa = load ptr, ptr %4, align 8, !tbaa !97    ; 2 uses
  %.not139 = icmp eq ptr %i.aa, null
  br i1 %.not139, label %_ZNK4ncnn3Mat7channelEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %.idx = shl nsw i64 %indvars.iv, 5
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.idx
  %i.ac = load <8 x float>, ptr %i.ab, align 1, !tbaa !87
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.ad = phi fast <8 x float> [ %i.ac, %bb.c ], [ zeroinitializer, %_ZN4ncnn3Mat7channelEi.exit ] ; 7 uses
  %i.ae = load ptr, ptr %5, align 8, !tbaa !21
  %i.af = load i32, ptr %i.n, align 4, !tbaa !75
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !67
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 9 uses
  %i.al = load <8 x float>, ptr %i.ak, align 32, !tbaa !87 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.an = load <8 x float>, ptr %i.am, align 32, !tbaa !87 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.ap = load <8 x float>, ptr %i.ao, align 32, !tbaa !87 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.ar = load <8 x float>, ptr %i.aq, align 32, !tbaa !87 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.at = load <8 x float>, ptr %i.as, align 32, !tbaa !87 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 160
  %i.av = load <8 x float>, ptr %i.au, align 32, !tbaa !87 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  %i.ax = load <8 x float>, ptr %i.aw, align 32, !tbaa !87 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 224
  %i.az = load <8 x float>, ptr %i.ay, align 32, !tbaa !87 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 256
  %i.bb = load <8 x float>, ptr %i.ba, align 32, !tbaa !87 ; 7 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !69
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.preheader366.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader366.preheader:                          ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.be = load ptr, ptr %6, align 8, !tbaa !21, !noalias !220
  %i.bf = load i64, ptr %i.q, align 8, !tbaa !22, !noalias !220
  %i.bg = mul i64 %i.bf, %indvars.iv
  %i.bh = load i64, ptr %i.r, align 8, !tbaa !67, !noalias !220 ; 3 uses
  %i.bi = mul i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi ; 3 uses
  %i.bk = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !220
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = shl nsw i64 %i.bl, 1
  %i.bn = mul i64 %i.bm, %i.bh
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bn
  %i.bp = mul i64 %i.bh, %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bp
  %.pre = load i32, ptr %8, align 4, !tbaa !69
  br label %.preheader366

.preheader366:                                    ; preds = %.preheader366.preheader, %._crit_edge
  %i.br = phi i32 [ %i.lb, %._crit_edge ], [ %.pre, %.preheader366.preheader ] ; 2 uses
  %.0121401 = phi i32 [ %i.lh, %._crit_edge ], [ 0, %.preheader366.preheader ]
  %.0122400 = phi ptr [ %i.lg, %._crit_edge ], [ %i.bo, %.preheader366.preheader ] ; 2 uses
  %.0125399 = phi ptr [ %i.lf, %._crit_edge ], [ %i.bq, %.preheader366.preheader ] ; 2 uses
  %.0129398 = phi ptr [ %i.le, %._crit_edge ], [ %i.bj, %.preheader366.preheader ] ; 2 uses
  %.0133397 = phi ptr [ %.3136.lcssa, %._crit_edge ], [ %i.z, %.preheader366.preheader ] ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 3
  br i1 %i.bs, label %.lr.ph, label %.preheader365

.preheader365:                                    ; preds = %.lr.ph, %.preheader366
  %i.bt = phi i32 [ %i.br, %.preheader366 ], [ %i.gv, %.lr.ph ] ; 2 uses
  %.1134.lcssa = phi ptr [ %.0133397, %.preheader366 ], [ %i.gs, %.lr.ph ] ; 2 uses
  %.1130.lcssa = phi ptr [ %.0129398, %.preheader366 ], [ %i.cl, %.lr.ph ] ; 2 uses
  %.1126.lcssa = phi ptr [ %.0125399, %.preheader366 ], [ %i.ea, %.lr.ph ] ; 2 uses
  %.1123.lcssa = phi ptr [ %.0122400, %.preheader366 ], [ %i.fp, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.preheader366 ], [ %i.gt, %.lr.ph ] ; 3 uses
  %i.bu = or disjoint i32 %.0.lcssa, 1
  %i.bv = icmp slt i32 %i.bu, %i.bt
  br i1 %i.bv, label %.lr.ph381, label %.preheader

.lr.ph:                                           ; preds = %.preheader366, %.lr.ph
  %.0371 = phi i32 [ %i.gt, %.lr.ph ], [ 0, %.preheader366 ]
  %.1123370 = phi ptr [ %i.fp, %.lr.ph ], [ %.0122400, %.preheader366 ] ; 9 uses
  %.1126369 = phi ptr [ %i.ea, %.lr.ph ], [ %.0125399, %.preheader366 ] ; 9 uses
  %.1130368 = phi ptr [ %i.cl, %.lr.ph ], [ %.0129398, %.preheader366 ] ; 9 uses
  %.1134367 = phi ptr [ %i.gs, %.lr.ph ], [ %.0133397, %.preheader366 ] ; 5 uses
  %i.bw = load <8 x float>, ptr %.1130368, align 32, !tbaa !87
  %i.bx = getelementptr inbounds nuw i8, ptr %.1130368, i64 32
  %i.by = load <8 x float>, ptr %i.bx, align 32, !tbaa !87
  %i.bz = getelementptr inbounds nuw i8, ptr %.1130368, i64 64
  %i.ca = load <8 x float>, ptr %i.bz, align 32, !tbaa !87 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.1130368, i64 96
  %i.cc = load <8 x float>, ptr %i.cb, align 32, !tbaa !87
  %i.cd = getelementptr inbounds nuw i8, ptr %.1130368, i64 128
  %i.ce = load <8 x float>, ptr %i.cd, align 32, !tbaa !87 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1130368, i64 160
  %i.cg = load <8 x float>, ptr %i.cf, align 32, !tbaa !87
  %i.ch = getelementptr inbounds nuw i8, ptr %.1130368, i64 192
  %i.ci = load <8 x float>, ptr %i.ch, align 32, !tbaa !87 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.1130368, i64 224
  %i.ck = load <8 x float>, ptr %i.cj, align 32, !tbaa !87
  %i.cl = getelementptr inbounds nuw i8, ptr %.1130368, i64 256 ; 3 uses
  %i.cm = load <8 x float>, ptr %i.cl, align 32, !tbaa !87
  %i.cn = fmul fast <8 x float> %i.bw, %i.al
  %i.co = fadd fast <8 x float> %i.ad, %i.cn
  %i.cp = fmul fast <8 x float> %i.ca, %i.al
  %i.cq = fadd fast <8 x float> %i.ad, %i.cp
  %i.cr = fmul fast <8 x float> %i.ce, %i.al
  %i.cs = fadd fast <8 x float> %i.ad, %i.cr
  %i.ct = fmul fast <8 x float> %i.ci, %i.al
  %i.cu = fadd fast <8 x float> %i.ad, %i.ct
  %i.cv = fmul fast <8 x float> %i.by, %i.an
  %i.cw = fadd fast <8 x float> %i.cv, %i.co
  %i.cx = fmul fast <8 x float> %i.cc, %i.an
  %i.cy = fadd fast <8 x float> %i.cx, %i.cq
  %i.cz = fmul fast <8 x float> %i.cg, %i.an
  %i.da = fadd fast <8 x float> %i.cz, %i.cs
  %i.db = fmul fast <8 x float> %i.ck, %i.an
  %i.dc = fadd fast <8 x float> %i.db, %i.cu
  %i.dd = fmul fast <8 x float> %i.ca, %i.ap
  %i.de = fadd fast <8 x float> %i.cw, %i.dd
  %i.df = fmul fast <8 x float> %i.ce, %i.ap
  %i.dg = fadd fast <8 x float> %i.cy, %i.df
  %i.dh = fmul fast <8 x float> %i.ci, %i.ap
  %i.di = fadd fast <8 x float> %i.da, %i.dh
  %i.dj = fmul fast <8 x float> %i.cm, %i.ap
  %i.dk = fadd fast <8 x float> %i.dc, %i.dj
  %i.dl = load <8 x float>, ptr %.1126369, align 32, !tbaa !87
  %i.dm = getelementptr inbounds nuw i8, ptr %.1126369, i64 32
  %i.dn = load <8 x float>, ptr %i.dm, align 32, !tbaa !87
  %i.do = getelementptr inbounds nuw i8, ptr %.1126369, i64 64
  %i.dp = load <8 x float>, ptr %i.do, align 32, !tbaa !87 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.1126369, i64 96
  %i.dr = load <8 x float>, ptr %i.dq, align 32, !tbaa !87
  %i.ds = getelementptr inbounds nuw i8, ptr %.1126369, i64 128
  %i.dt = load <8 x float>, ptr %i.ds, align 32, !tbaa !87 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.1126369, i64 160
  %i.dv = load <8 x float>, ptr %i.du, align 32, !tbaa !87
  %i.dw = getelementptr inbounds nuw i8, ptr %.1126369, i64 192
  %i.dx = load <8 x float>, ptr %i.dw, align 32, !tbaa !87 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.1126369, i64 224
  %i.dz = load <8 x float>, ptr %i.dy, align 32, !tbaa !87
  %i.ea = getelementptr inbounds nuw i8, ptr %.1126369, i64 256 ; 3 uses
  %i.eb = load <8 x float>, ptr %i.ea, align 32, !tbaa !87
  %i.ec = fmul fast <8 x float> %i.dl, %i.ar
  %i.ed = fadd fast <8 x float> %i.de, %i.ec
  %i.ee = fmul fast <8 x float> %i.dp, %i.ar
  %i.ef = fadd fast <8 x float> %i.dg, %i.ee
  %i.eg = fmul fast <8 x float> %i.dt, %i.ar
  %i.eh = fadd fast <8 x float> %i.di, %i.eg
  %i.ei = fmul fast <8 x float> %i.dx, %i.ar
  %i.ej = fadd fast <8 x float> %i.dk, %i.ei
  %i.ek = fmul fast <8 x float> %i.dn, %i.at
  %i.el = fadd fast <8 x float> %i.ed, %i.ek
  %i.em = fmul fast <8 x float> %i.dr, %i.at
  %i.en = fadd fast <8 x float> %i.ef, %i.em
  %i.eo = fmul fast <8 x float> %i.dv, %i.at
  %i.ep = fadd fast <8 x float> %i.eh, %i.eo
  %i.eq = fmul fast <8 x float> %i.dz, %i.at
  %i.er = fadd fast <8 x float> %i.ej, %i.eq
  %i.es = fmul fast <8 x float> %i.dp, %i.av
  %i.et = fadd fast <8 x float> %i.el, %i.es
  %i.eu = fmul fast <8 x float> %i.dt, %i.av
  %i.ev = fadd fast <8 x float> %i.en, %i.eu
  %i.ew = fmul fast <8 x float> %i.dx, %i.av
  %i.ex = fadd fast <8 x float> %i.ep, %i.ew
  %i.ey = fmul fast <8 x float> %i.eb, %i.av
  %i.ez = fadd fast <8 x float> %i.er, %i.ey
  %i.fa = load <8 x float>, ptr %.1123370, align 32, !tbaa !87
  %i.fb = getelementptr inbounds nuw i8, ptr %.1123370, i64 32
  %i.fc = load <8 x float>, ptr %i.fb, align 32, !tbaa !87
  %i.fd = getelementptr inbounds nuw i8, ptr %.1123370, i64 64
  %i.fe = load <8 x float>, ptr %i.fd, align 32, !tbaa !87 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.1123370, i64 96
  %i.fg = load <8 x float>, ptr %i.ff, align 32, !tbaa !87
  %i.fh = getelementptr inbounds nuw i8, ptr %.1123370, i64 128
  %i.fi = load <8 x float>, ptr %i.fh, align 32, !tbaa !87 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.1123370, i64 160
  %i.fk = load <8 x float>, ptr %i.fj, align 32, !tbaa !87
  %i.fl = getelementptr inbounds nuw i8, ptr %.1123370, i64 192
  %i.fm = load <8 x float>, ptr %i.fl, align 32, !tbaa !87 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.1123370, i64 224
  %i.fo = load <8 x float>, ptr %i.fn, align 32, !tbaa !87
  %i.fp = getelementptr inbounds nuw i8, ptr %.1123370, i64 256 ; 3 uses
  %i.fq = load <8 x float>, ptr %i.fp, align 32, !tbaa !87
  %i.fr = fmul fast <8 x float> %i.fa, %i.ax
  %i.fs = fadd fast <8 x float> %i.et, %i.fr
  %i.ft = fmul fast <8 x float> %i.fe, %i.ax
  %i.fu = fadd fast <8 x float> %i.ev, %i.ft
  %i.fv = fmul fast <8 x float> %i.fi, %i.ax
  %i.fw = fadd fast <8 x float> %i.ex, %i.fv
  %i.fx = fmul fast <8 x float> %i.fm, %i.ax
  %i.fy = fadd fast <8 x float> %i.ez, %i.fx
  %i.fz = fmul fast <8 x float> %i.fc, %i.az
  %i.ga = fadd fast <8 x float> %i.fs, %i.fz
  %i.gb = fmul fast <8 x float> %i.fg, %i.az
  %i.gc = fadd fast <8 x float> %i.fu, %i.gb
  %i.gd = fmul fast <8 x float> %i.fk, %i.az
  %i.ge = fadd fast <8 x float> %i.fw, %i.gd
  %i.gf = fmul fast <8 x float> %i.fo, %i.az
  %i.gg = fadd fast <8 x float> %i.fy, %i.gf
  %i.gh = fmul fast <8 x float> %i.fe, %i.bb
  %i.gi = fadd fast <8 x float> %i.ga, %i.gh
  %i.gj = fmul fast <8 x float> %i.fi, %i.bb
  %i.gk = fadd fast <8 x float> %i.gc, %i.gj
  %i.gl = fmul fast <8 x float> %i.fm, %i.bb
  %i.gm = fadd fast <8 x float> %i.ge, %i.gl
  %i.gn = fmul fast <8 x float> %i.fq, %i.bb
  %i.go = fadd fast <8 x float> %i.gg, %i.gn
  store <8 x float> %i.gi, ptr %.1134367, align 32, !tbaa !87
  %i.gp = getelementptr inbounds nuw i8, ptr %.1134367, i64 32
  store <8 x float> %i.gk, ptr %i.gp, align 32, !tbaa !87
  %i.gq = getelementptr inbounds nuw i8, ptr %.1134367, i64 64
  store <8 x float> %i.gm, ptr %i.gq, align 32, !tbaa !87
  %i.gr = getelementptr inbounds nuw i8, ptr %.1134367, i64 96
  store <8 x float> %i.go, ptr %i.gr, align 32, !tbaa !87
  %i.gs = getelementptr inbounds nuw i8, ptr %.1134367, i64 128 ; 2 uses
  %i.gt = add nuw nsw i32 %.0371, 4               ; 3 uses
  %i.gu = or disjoint i32 %i.gt, 3
  %i.gv = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.gw = icmp slt i32 %i.gu, %i.gv
  br i1 %i.gw, label %.lr.ph, label %.preheader365, !llvm.loop !215

.preheader:                                       ; preds = %.lr.ph381, %.preheader365
  %i.gx = phi i32 [ %i.bt, %.preheader365 ], [ %i.jo, %.lr.ph381 ] ; 2 uses
  %.2135.lcssa = phi ptr [ %.1134.lcssa, %.preheader365 ], [ %i.jl, %.lr.ph381 ] ; 2 uses
  %.2131.lcssa = phi ptr [ %.1130.lcssa, %.preheader365 ], [ %i.hg, %.lr.ph381 ] ; 2 uses
  %.2127.lcssa = phi ptr [ %.1126.lcssa, %.preheader365 ], [ %i.ib, %.lr.ph381 ] ; 2 uses
  %.2124.lcssa = phi ptr [ %.1123.lcssa, %.preheader365 ], [ %i.iw, %.lr.ph381 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader365 ], [ %i.jm, %.lr.ph381 ] ; 2 uses
  %i.gy = icmp slt i32 %.1.lcssa, %i.gx
  br i1 %i.gy, label %.lr.ph392, label %._crit_edge

.lr.ph381:                                        ; preds = %.preheader365, %.lr.ph381
  %.1380 = phi i32 [ %i.jm, %.lr.ph381 ], [ %.0.lcssa, %.preheader365 ]
  %.2124379 = phi ptr [ %i.iw, %.lr.ph381 ], [ %.1123.lcssa, %.preheader365 ] ; 5 uses
  %.2127378 = phi ptr [ %i.ib, %.lr.ph381 ], [ %.1126.lcssa, %.preheader365 ] ; 5 uses
  %.2131377 = phi ptr [ %i.hg, %.lr.ph381 ], [ %.1130.lcssa, %.preheader365 ] ; 5 uses
  %.2135376 = phi ptr [ %i.jl, %.lr.ph381 ], [ %.1134.lcssa, %.preheader365 ] ; 3 uses
  %i.gz = load <8 x float>, ptr %.2131377, align 32, !tbaa !87
  %i.ha = getelementptr inbounds nuw i8, ptr %.2131377, i64 32
  %i.hb = load <8 x float>, ptr %i.ha, align 32, !tbaa !87
  %i.hc = getelementptr inbounds nuw i8, ptr %.2131377, i64 64
  %i.hd = load <8 x float>, ptr %i.hc, align 32, !tbaa !87 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.2131377, i64 96
  %i.hf = load <8 x float>, ptr %i.he, align 32, !tbaa !87
  %i.hg = getelementptr inbounds nuw i8, ptr %.2131377, i64 128 ; 3 uses
  %i.hh = load <8 x float>, ptr %i.hg, align 32, !tbaa !87
  %i.hi = fmul fast <8 x float> %i.gz, %i.al
  %i.hj = fadd fast <8 x float> %i.ad, %i.hi
  %i.hk = fmul fast <8 x float> %i.hd, %i.al
  %i.hl = fadd fast <8 x float> %i.ad, %i.hk
  %i.hm = fmul fast <8 x float> %i.hb, %i.an
  %i.hn = fadd fast <8 x float> %i.hm, %i.hj
  %i.ho = fmul fast <8 x float> %i.hf, %i.an
  %i.hp = fadd fast <8 x float> %i.ho, %i.hl
  %i.hq = fmul fast <8 x float> %i.hd, %i.ap
  %i.hr = fadd fast <8 x float> %i.hn, %i.hq
  %i.hs = fmul fast <8 x float> %i.hh, %i.ap
  %i.ht = fadd fast <8 x float> %i.hp, %i.hs
  %i.hu = load <8 x float>, ptr %.2127378, align 32, !tbaa !87
  %i.hv = getelementptr inbounds nuw i8, ptr %.2127378, i64 32
  %i.hw = load <8 x float>, ptr %i.hv, align 32, !tbaa !87
  %i.hx = getelementptr inbounds nuw i8, ptr %.2127378, i64 64
  %i.hy = load <8 x float>, ptr %i.hx, align 32, !tbaa !87 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.2127378, i64 96
  %i.ia = load <8 x float>, ptr %i.hz, align 32, !tbaa !87
  %i.ib = getelementptr inbounds nuw i8, ptr %.2127378, i64 128 ; 3 uses
  %i.ic = load <8 x float>, ptr %i.ib, align 32, !tbaa !87
  %i.id = fmul fast <8 x float> %i.hu, %i.ar
  %i.ie = fadd fast <8 x float> %i.hr, %i.id
  %i.if = fmul fast <8 x float> %i.hy, %i.ar
  %i.ig = fadd fast <8 x float> %i.ht, %i.if
  %i.ih = fmul fast <8 x float> %i.hw, %i.at
  %i.ii = fadd fast <8 x float> %i.ie, %i.ih
  %i.ij = fmul fast <8 x float> %i.ia, %i.at
  %i.ik = fadd fast <8 x float> %i.ig, %i.ij
  %i.il = fmul fast <8 x float> %i.hy, %i.av
  %i.im = fadd fast <8 x float> %i.ii, %i.il
  %i.in = fmul fast <8 x float> %i.ic, %i.av
  %i.io = fadd fast <8 x float> %i.ik, %i.in
  %i.ip = load <8 x float>, ptr %.2124379, align 32, !tbaa !87
  %i.iq = getelementptr inbounds nuw i8, ptr %.2124379, i64 32
  %i.ir = load <8 x float>, ptr %i.iq, align 32, !tbaa !87
  %i.is = getelementptr inbounds nuw i8, ptr %.2124379, i64 64
  %i.it = load <8 x float>, ptr %i.is, align 32, !tbaa !87 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.2124379, i64 96
  %i.iv = load <8 x float>, ptr %i.iu, align 32, !tbaa !87
  %i.iw = getelementptr inbounds nuw i8, ptr %.2124379, i64 128 ; 3 uses
  %i.ix = load <8 x float>, ptr %i.iw, align 32, !tbaa !87
  %i.iy = fmul fast <8 x float> %i.ip, %i.ax
  %i.iz = fadd fast <8 x float> %i.im, %i.iy
  %i.ja = fmul fast <8 x float> %i.it, %i.ax
  %i.jb = fadd fast <8 x float> %i.io, %i.ja
  %i.jc = fmul fast <8 x float> %i.ir, %i.az
  %i.jd = fadd fast <8 x float> %i.iz, %i.jc
  %i.je = fmul fast <8 x float> %i.iv, %i.az
  %i.jf = fadd fast <8 x float> %i.jb, %i.je
  %i.jg = fmul fast <8 x float> %i.it, %i.bb
  %i.jh = fadd fast <8 x float> %i.jd, %i.jg
  %i.ji = fmul fast <8 x float> %i.ix, %i.bb
  %i.jj = fadd fast <8 x float> %i.jf, %i.ji
  store <8 x float> %i.jh, ptr %.2135376, align 32, !tbaa !87
  %i.jk = getelementptr inbounds nuw i8, ptr %.2135376, i64 32
  store <8 x float> %i.jj, ptr %i.jk, align 32, !tbaa !87
  %i.jl = getelementptr inbounds nuw i8, ptr %.2135376, i64 64 ; 2 uses
  %i.jm = add nuw nsw i32 %.1380, 2               ; 3 uses
  %i.jn = or disjoint i32 %i.jm, 1
  %i.jo = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.jp = icmp slt i32 %i.jn, %i.jo
  br i1 %i.jp, label %.lr.ph381, label %.preheader, !llvm.loop !216

.lr.ph392:                                        ; preds = %.preheader, %.lr.ph392
  %.2391 = phi i32 [ %i.ky, %.lr.ph392 ], [ %.1.lcssa, %.preheader ]
  %.3390 = phi ptr [ %i.kp, %.lr.ph392 ], [ %.2124.lcssa, %.preheader ] ; 3 uses
  %.3128389 = phi ptr [ %i.ke, %.lr.ph392 ], [ %.2127.lcssa, %.preheader ] ; 3 uses
  %.3132388 = phi ptr [ %i.jt, %.lr.ph392 ], [ %.2131.lcssa, %.preheader ] ; 3 uses
  %.3136387 = phi ptr [ %i.kx, %.lr.ph392 ], [ %.2135.lcssa, %.preheader ] ; 2 uses
  %i.jq = load <8 x float>, ptr %.3132388, align 32, !tbaa !87
  %i.jr = getelementptr inbounds nuw i8, ptr %.3132388, i64 32
  %i.js = load <8 x float>, ptr %i.jr, align 32, !tbaa !87
  %i.jt = getelementptr inbounds nuw i8, ptr %.3132388, i64 64 ; 3 uses
  %i.ju = load <8 x float>, ptr %i.jt, align 32, !tbaa !87
  %i.jv = fmul fast <8 x float> %i.jq, %i.al
  %i.jw = fadd fast <8 x float> %i.ad, %i.jv
  %i.jx = fmul fast <8 x float> %i.js, %i.an
  %i.jy = fadd fast <8 x float> %i.jx, %i.jw
  %i.jz = fmul fast <8 x float> %i.ju, %i.ap
  %i.ka = fadd fast <8 x float> %i.jy, %i.jz
  %i.kb = load <8 x float>, ptr %.3128389, align 32, !tbaa !87
  %i.kc = getelementptr inbounds nuw i8, ptr %.3128389, i64 32
  %i.kd = load <8 x float>, ptr %i.kc, align 32, !tbaa !87
  %i.ke = getelementptr inbounds nuw i8, ptr %.3128389, i64 64 ; 3 uses
  %i.kf = load <8 x float>, ptr %i.ke, align 32, !tbaa !87
  %i.kg = fmul fast <8 x float> %i.kb, %i.ar
  %i.kh = fadd fast <8 x float> %i.ka, %i.kg
  %i.ki = fmul fast <8 x float> %i.kd, %i.at
  %i.kj = fadd fast <8 x float> %i.kh, %i.ki
  %i.kk = fmul fast <8 x float> %i.kf, %i.av
  %i.kl = fadd fast <8 x float> %i.kj, %i.kk
  %i.km = load <8 x float>, ptr %.3390, align 32, !tbaa !87
  %i.kn = getelementptr inbounds nuw i8, ptr %.3390, i64 32
  %i.ko = load <8 x float>, ptr %i.kn, align 32, !tbaa !87
  %i.kp = getelementptr inbounds nuw i8, ptr %.3390, i64 64 ; 3 uses
  %i.kq = load <8 x float>, ptr %i.kp, align 32, !tbaa !87
  %i.kr = fmul fast <8 x float> %i.km, %i.ax
  %i.ks = fadd fast <8 x float> %i.kl, %i.kr
  %i.kt = fmul fast <8 x float> %i.ko, %i.az
  %i.ku = fadd fast <8 x float> %i.ks, %i.kt
  %i.kv = fmul fast <8 x float> %i.kq, %i.bb
  %i.kw = fadd fast <8 x float> %i.ku, %i.kv
  store <8 x float> %i.kw, ptr %.3136387, align 32, !tbaa !87
  %i.kx = getelementptr inbounds nuw i8, ptr %.3136387, i64 32 ; 2 uses
  %i.ky = add nuw nsw i32 %.2391, 1               ; 2 uses
  %i.kz = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.la = icmp slt i32 %i.ky, %i.kz
  br i1 %i.la, label %.lr.ph392, label %._crit_edge, !llvm.loop !217

._crit_edge:                                      ; preds = %.lr.ph392, %.preheader
  %i.lb = phi i32 [ %i.gx, %.preheader ], [ %i.kz, %.lr.ph392 ]
  %.3136.lcssa = phi ptr [ %.2135.lcssa, %.preheader ], [ %i.kx, %.lr.ph392 ]
  %.3132.lcssa = phi ptr [ %.2131.lcssa, %.preheader ], [ %i.jt, %.lr.ph392 ]
  %.3128.lcssa = phi ptr [ %.2127.lcssa, %.preheader ], [ %i.ke, %.lr.ph392 ]
  %.3.lcssa = phi ptr [ %.2124.lcssa, %.preheader ], [ %i.kp, %.lr.ph392 ]
  %i.lc = load i32, ptr %9, align 4, !tbaa !69
  %i.ld = sext i32 %i.lc to i64                   ; 3 uses
  %i.le = getelementptr inbounds [4 x i8], ptr %.3132.lcssa, i64 %i.ld
  %i.lf = getelementptr inbounds [4 x i8], ptr %.3128.lcssa, i64 %i.ld
  %i.lg = getelementptr inbounds [4 x i8], ptr %.3.lcssa, i64 %i.ld
  %i.lh = add nuw nsw i32 %.0121401, 1            ; 2 uses
  %i.li = load i32, ptr %7, align 4, !tbaa !69
  %i.lj = icmp slt i32 %i.lh, %i.li
  br i1 %i.lj, label %.preheader366, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !218

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %_ZNK4ncnn3Mat7channelEi.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge404, label %_ZN4ncnn3Mat7channelEi.exit

._crit_edge404:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge404, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21convdw5x5s1_pack8_avxERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #12 personality ptr @__gxx_personality_v0 {
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
  %.not240 = icmp sgt i32 %i.k, %i.j
  br i1 %.not240, label %._crit_edge242, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

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
  %i.u = load ptr, ptr %3, align 8, !tbaa !21, !noalias !227
  %i.v = load i64, ptr %i.l, align 8, !tbaa !22, !noalias !227
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !227
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y
  %i.aa = load ptr, ptr %4, align 8, !tbaa !97    ; 2 uses
  %.not111 = icmp eq ptr %i.aa, null
  br i1 %.not111, label %_ZNK4ncnn3Mat7channelEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %.idx = shl nsw i64 %indvars.iv, 5
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.idx
  %i.ac = load <8 x float>, ptr %i.ab, align 1, !tbaa !87
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.ad = phi fast <8 x float> [ %i.ac, %bb.c ], [ zeroinitializer, %_ZN4ncnn3Mat7channelEi.exit ]
  %i.ae = load ptr, ptr %5, align 8, !tbaa !21
  %i.af = load i32, ptr %i.n, align 4, !tbaa !75
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !67
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 25 uses
  %i.al = load i32, ptr %7, align 4, !tbaa !69    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 160
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 224
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 256
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 288
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 320
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 352
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 384
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 416
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 448
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 480
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 512
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 544
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 576
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 608
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 640
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 672
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 704
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ak, i64 736
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 768
  %i.bl = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bn = load ptr, ptr %6, align 8, !tbaa !21, !noalias !228
  %i.bo = load i64, ptr %i.q, align 8, !tbaa !22, !noalias !228
  %i.bp = mul i64 %i.bo, %indvars.iv
  %i.bq = load i64, ptr %i.r, align 8, !tbaa !67, !noalias !228 ; 2 uses
  %i.br = mul i64 %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.br ; 5 uses
  %i.bt = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !228
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %i.bq, %i.bu                    ; 4 uses
  %i.bw = shl i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bw
  %i.by = mul i64 %i.bv, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.by
  %i.ca = shl i64 %i.bv, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bv
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.cd = phi i32 [ %i.ha, %._crit_edge ], [ %i.al, %.preheader.preheader ]
  %i.ce = phi i32 [ %i.hb, %._crit_edge ], [ %i.bl, %.preheader.preheader ] ; 2 uses
  %.095239 = phi i32 [ %i.hh, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.096238 = phi ptr [ %i.hg, %._crit_edge ], [ %i.bx, %.preheader.preheader ] ; 2 uses
  %.097237 = phi ptr [ %i.hf, %._crit_edge ], [ %i.bz, %.preheader.preheader ] ; 2 uses
  %.099236 = phi ptr [ %i.he, %._crit_edge ], [ %i.cb, %.preheader.preheader ] ; 2 uses
  %.0101235 = phi ptr [ %i.hd, %._crit_edge ], [ %i.cc, %.preheader.preheader ] ; 2 uses
  %.0103234 = phi ptr [ %i.hc, %._crit_edge ], [ %i.bs, %.preheader.preheader ] ; 2 uses
  %.0105233 = phi ptr [ %.1106.lcssa, %._crit_edge ], [ %i.z, %.preheader.preheader ] ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
end_hunk_0
begin_hunk_1_@_ZN4ncnnL21convdw5x5s2_pack8_avxERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined:bb.a
  %i.gv = fadd fast <8 x float> %i.gt, %i.gu
  store <8 x float> %i.gv, ptr %.1107222, align 32, !tbaa !87
  %i.gw = getelementptr inbounds nuw i8, ptr %.1107222, i64 32 ; 2 uses
  %i.gx = add nuw nsw i32 %.0228, 1               ; 2 uses
  %i.gy = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.gz = icmp slt i32 %i.gx, %i.gy
  br i1 %i.gz, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !233

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %7, align 4, !tbaa !69
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ha = phi i32 [ %i.cd, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.hb = phi i32 [ %i.ce, %.preheader ], [ %i.gy, %._crit_edge.loopexit ]
  %.1107.lcssa = phi ptr [ %.0106234, %.preheader ], [ %i.gw, %._crit_edge.loopexit ]
  %.1105.lcssa = phi ptr [ %.0104235, %.preheader ], [ %i.cj, %._crit_edge.loopexit ]
  %.1103.lcssa = phi ptr [ %.0102236, %.preheader ], [ %i.dh, %._crit_edge.loopexit ]
  %.1101.lcssa = phi ptr [ %.0100237, %.preheader ], [ %i.ef, %._crit_edge.loopexit ]
  %.199.lcssa = phi ptr [ %.098238, %.preheader ], [ %i.fd, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.097239, %.preheader ], [ %i.gb, %._crit_edge.loopexit ]
  %i.hc = load i32, ptr %9, align 4, !tbaa !69
  %i.hd = sext i32 %i.hc to i64                   ; 5 uses
  %i.he = getelementptr inbounds [4 x i8], ptr %.1105.lcssa, i64 %i.hd
  %i.hf = getelementptr inbounds [4 x i8], ptr %.1103.lcssa, i64 %i.hd
  %i.hg = getelementptr inbounds [4 x i8], ptr %.1101.lcssa, i64 %i.hd
  %i.hh = getelementptr inbounds [4 x i8], ptr %.199.lcssa, i64 %i.hd
  %i.hi = getelementptr inbounds [4 x i8], ptr %.1.lcssa, i64 %i.hd
  %i.hj = add nuw nsw i32 %.096240, 1             ; 2 uses
  %i.hk = icmp slt i32 %i.hj, %i.ha
  br i1 %i.hk, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !234

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %.preheader.lr.ph, %_ZNK4ncnn3Mat7channelEi.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge243, label %_ZN4ncnn3Mat7channelEi.exit

._crit_edge243:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge243, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21convdw3x3s1_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #14 personality ptr @__gxx_personality_v0 {
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
  %i.u = load ptr, ptr %3, align 8, !tbaa !21, !noalias !246
  %i.v = load i64, ptr %i.l, align 8, !tbaa !22, !noalias !246
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !246
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y
  %i.aa = load ptr, ptr %4, align 8, !tbaa !97    ; 2 uses
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
  %i.be = load ptr, ptr %6, align 8, !tbaa !21, !noalias !247
  %i.bf = load i64, ptr %i.q, align 8, !tbaa !22, !noalias !247
  %i.bg = mul i64 %i.bf, %indvars.iv
  %i.bh = load i64, ptr %i.r, align 8, !tbaa !67, !noalias !247 ; 3 uses
  %i.bi = mul i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi ; 3 uses
  %i.bk = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !247
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
  br i1 %i.ka, label %.lr.ph, label %.preheader630, !llvm.loop !241

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
  br i1 %i.om, label %.lr.ph646, label %.preheader629, !llvm.loop !242

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
  br i1 %i.qz, label %.lr.ph657, label %.preheader, !llvm.loop !243

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
  br i1 %i.sk, label %.lr.ph668, label %._crit_edge, !llvm.loop !244

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
  br i1 %i.sr, label %.preheader631, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !245

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
define internal void @_ZN4ncnnL21convdw3x3s2_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #14 personality ptr @__gxx_personality_v0 {
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
  %i.u = load ptr, ptr %3, align 8, !tbaa !21, !noalias !256
  %i.v = load i64, ptr %i.l, align 8, !tbaa !22, !noalias !256
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !256
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y
  %i.aa = load ptr, ptr %4, align 8, !tbaa !97    ; 2 uses
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
  %i.be = load ptr, ptr %6, align 8, !tbaa !21, !noalias !257
  %i.bf = load i64, ptr %i.q, align 8, !tbaa !22, !noalias !257
  %i.bg = mul i64 %i.bf, %indvars.iv
  %i.bh = load i64, ptr %i.r, align 8, !tbaa !67, !noalias !257 ; 3 uses
  %i.bi = mul i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi ; 3 uses
  %i.bk = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !257
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
  br i1 %i.gw, label %.lr.ph, label %.preheader363, !llvm.loop !252

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
  br i1 %i.jp, label %.lr.ph379, label %.preheader, !llvm.loop !253

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
  br i1 %i.la, label %.lr.ph390, label %._crit_edge, !llvm.loop !254

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
  br i1 %i.lj, label %.preheader364, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !255

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
define internal void @_ZN4ncnnL21convdw5x5s1_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #14 personality ptr @__gxx_personality_v0 {
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
  %i.v = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !266
  %i.w = load ptr, ptr %3, align 8, !tbaa !21, !noalias !266 ; 2 uses
  %i.x = load i64, ptr %i.m, align 8, !tbaa !22, !noalias !266 ; 2 uses
  %i.y = mul i64 %i.x, %indvars.iv
  %i.z = load i64, ptr %i.n, align 8, !tbaa !67, !noalias !266 ; 3 uses
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa ; 3 uses
  %i.ac = sext i32 %i.v to i64
  %i.ad = load ptr, ptr %4, align 8, !tbaa !97    ; 2 uses
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
  %i.ao = load i32, ptr %i.q, align 4, !tbaa !75, !noalias !267
  %i.ap = load ptr, ptr %6, align 8, !tbaa !21, !noalias !267 ; 6 uses
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !22, !noalias !267 ; 2 uses
  %i.ar = mul i64 %i.aq, %indvars.iv              ; 5 uses
  %i.as = load i64, ptr %i.s, align 8, !tbaa !67, !noalias !267 ; 7 uses
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
  br i1 %i.ly, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !262

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
  br i1 %i.mr, label %.preheader485, label %.preheader486, !llvm.loop !263

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
  br i1 %i.ro, label %.lr.ph533, label %._crit_edge534.loopexit, !llvm.loop !264

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
  br i1 %i.rx, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !265

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
define internal void @_ZN4ncnnL21convdw5x5s2_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #14 personality ptr @__gxx_personality_v0 {
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
  %i.u = load ptr, ptr %3, align 8, !tbaa !21, !noalias !274
  %i.v = load i64, ptr %i.l, align 8, !tbaa !22, !noalias !274
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !274
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y
  %i.aa = load ptr, ptr %4, align 8, !tbaa !97    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL15convdw3x3s1_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined:bb.a
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
  %min.iters.check412 = icmp ult i32 %i.s, 8
  %n.vec414 = and i64 %i.bt, 2147483640           ; 4 uses
  %i.bu = trunc nuw nsw i64 %n.vec414 to i32
  %i.bv = sub nsw i32 %i.s, %i.bu
  %i.bw = shl nuw nsw i64 %n.vec414, 2            ; 6 uses
  %cmp.n457 = icmp eq i64 %n.vec414, %i.bt
  %i.bx = zext nneg i32 %i.s to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.s, 8
  %n.vec = and i64 %i.bx, 2147483640              ; 4 uses
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
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
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
  %broadcast.splatinsert415 = insertelement <8 x float> poison, float %i.cg, i64 0
  %broadcast.splat416 = shufflevector <8 x float> %broadcast.splatinsert415, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0150218.us = phi i32 [ %i.hf, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.0151217.us = phi ptr [ %i.hc, %._crit_edge.us ], [ %i.cu, %.lr.ph.us.preheader ] ; 7 uses
  %.0153216.us = phi ptr [ %i.hb, %._crit_edge.us ], [ %i.ck, %.lr.ph.us.preheader ] ; 7 uses
  %.0155215.us = phi ptr [ %i.ha, %._crit_edge.us ], [ %i.cj, %.lr.ph.us.preheader ] ; 7 uses
  %.0159214.us = phi ptr [ %i.gz, %._crit_edge.us ], [ %i.ci, %.lr.ph.us.preheader ] ; 7 uses
  %.0163213.us = phi ptr [ %i.he, %._crit_edge.us ], [ %i.ct, %.lr.ph.us.preheader ] ; 11 uses
  %.0165212.us = phi ptr [ %i.hd, %._crit_edge.us ], [ %i.cd, %.lr.ph.us.preheader ] ; 11 uses
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
  %i.db = load float, ptr %i.ch, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert426 = insertelement <8 x float> poison, float %i.db, i64 0
  %broadcast.splat427 = shufflevector <8 x float> %broadcast.splatinsert426, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dc = load float, ptr %i.cn, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert429 = insertelement <8 x float> poison, float %i.dc, i64 0
  %broadcast.splat430 = shufflevector <8 x float> %broadcast.splatinsert429, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dd = load float, ptr %i.co, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert432 = insertelement <8 x float> poison, float %i.dd, i64 0
  %broadcast.splat433 = shufflevector <8 x float> %broadcast.splatinsert432, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.de = load float, ptr %i.cl, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert435 = insertelement <8 x float> poison, float %i.de, i64 0
  %broadcast.splat436 = shufflevector <8 x float> %broadcast.splatinsert435, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.df = load float, ptr %i.cp, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert438 = insertelement <8 x float> poison, float %i.df, i64 0
  %broadcast.splat439 = shufflevector <8 x float> %broadcast.splatinsert438, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dg = load float, ptr %i.cq, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert441 = insertelement <8 x float> poison, float %i.dg, i64 0
  %broadcast.splat442 = shufflevector <8 x float> %broadcast.splatinsert441, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dh = load float, ptr %i.cm, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert444 = insertelement <8 x float> poison, float %i.dh, i64 0
  %broadcast.splat445 = shufflevector <8 x float> %broadcast.splatinsert444, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.di = load float, ptr %i.cr, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert447 = insertelement <8 x float> poison, float %i.di, i64 0
  %broadcast.splat448 = shufflevector <8 x float> %broadcast.splatinsert447, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dj = load float, ptr %i.cs, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert450 = insertelement <8 x float> poison, float %i.dj, i64 0
  %broadcast.splat451 = shufflevector <8 x float> %broadcast.splatinsert450, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
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
  %wide.load425 = load <8 x float>, ptr %next.gep422, align 4, !tbaa !45, !alias.scope !303
  %i.dl = fmul fast <8 x float> %broadcast.splat427, %wide.load425
  %i.dm = fadd fast <8 x float> %broadcast.splat416, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %next.gep422, i64 4
  %wide.load428 = load <8 x float>, ptr %i.dn, align 4, !tbaa !45, !alias.scope !303
  %i.do = fmul fast <8 x float> %broadcast.splat430, %wide.load428
  %i.dp = fadd fast <8 x float> %i.do, %i.dm
  %i.dq = getelementptr inbounds nuw i8, ptr %next.gep422, i64 8
  %wide.load431 = load <8 x float>, ptr %i.dq, align 4, !tbaa !45, !alias.scope !303
  %i.dr = fmul fast <8 x float> %broadcast.splat433, %wide.load431
  %i.ds = fadd fast <8 x float> %i.dp, %i.dr
  %wide.load434 = load <8 x float>, ptr %next.gep421, align 4, !tbaa !45, !alias.scope !304 ; 2 uses
  %i.dt = fmul fast <8 x float> %broadcast.splat436, %wide.load434
  %i.du = fadd fast <8 x float> %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %next.gep421, i64 4
  %wide.load437 = load <8 x float>, ptr %i.dv, align 4, !tbaa !45, !alias.scope !304 ; 2 uses
  %i.dw = fmul fast <8 x float> %broadcast.splat439, %wide.load437
  %i.dx = fadd fast <8 x float> %i.du, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %next.gep421, i64 8
  %wide.load440 = load <8 x float>, ptr %i.dy, align 4, !tbaa !45, !alias.scope !304 ; 2 uses
  %i.dz = fmul fast <8 x float> %broadcast.splat442, %wide.load440
  %i.ea = fadd fast <8 x float> %i.dx, %i.dz
  %wide.load443 = load <8 x float>, ptr %next.gep420, align 4, !tbaa !45, !alias.scope !305 ; 2 uses
  %i.eb = fmul fast <8 x float> %broadcast.splat445, %wide.load443
  %i.ec = fadd fast <8 x float> %i.ea, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %next.gep420, i64 4
  %wide.load446 = load <8 x float>, ptr %i.ed, align 4, !tbaa !45, !alias.scope !305 ; 2 uses
  %i.ee = fmul fast <8 x float> %broadcast.splat448, %wide.load446
  %i.ef = fadd fast <8 x float> %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %next.gep420, i64 8
  %wide.load449 = load <8 x float>, ptr %i.eg, align 4, !tbaa !45, !alias.scope !305 ; 2 uses
  %i.eh = fmul fast <8 x float> %broadcast.splat451, %wide.load449
  %i.ei = fadd fast <8 x float> %i.ef, %i.eh
  %i.ej = fmul fast <8 x float> %wide.load434, %broadcast.splat427
  %i.ek = fadd fast <8 x float> %broadcast.splat416, %i.ej
  %i.el = fmul fast <8 x float> %wide.load437, %broadcast.splat430
  %i.em = fadd fast <8 x float> %i.el, %i.ek
  %i.en = fmul fast <8 x float> %wide.load440, %broadcast.splat433
  %i.eo = fadd fast <8 x float> %i.em, %i.en
  %i.ep = fmul fast <8 x float> %wide.load443, %broadcast.splat436
  %i.eq = fadd fast <8 x float> %i.eo, %i.ep
  %i.er = fmul fast <8 x float> %wide.load446, %broadcast.splat439
  %i.es = fadd fast <8 x float> %i.eq, %i.er
  %i.et = fmul fast <8 x float> %wide.load449, %broadcast.splat442
  %i.eu = fadd fast <8 x float> %i.es, %i.et
  %wide.load452 = load <8 x float>, ptr %next.gep419, align 4, !tbaa !45, !alias.scope !306
  %i.ev = fmul fast <8 x float> %wide.load452, %broadcast.splat445
  %i.ew = fadd fast <8 x float> %i.eu, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %next.gep419, i64 4
  %wide.load453 = load <8 x float>, ptr %i.ex, align 4, !tbaa !45, !alias.scope !306
  %i.ey = fmul fast <8 x float> %wide.load453, %broadcast.splat448
  %i.ez = fadd fast <8 x float> %i.ew, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %next.gep419, i64 8
  %wide.load454 = load <8 x float>, ptr %i.fa, align 4, !tbaa !45, !alias.scope !306
  %i.fb = fmul fast <8 x float> %wide.load454, %broadcast.splat451
  %i.fc = fadd fast <8 x float> %i.ez, %i.fb
  store <8 x float> %i.ei, ptr %next.gep424, align 4, !tbaa !45, !alias.scope !307, !noalias !308
  store <8 x float> %i.fc, ptr %next.gep423, align 4, !tbaa !45, !alias.scope !309, !noalias !310
  %index.next455 = add nuw i64 %index418, 8       ; 2 uses
  %i.fd = icmp eq i64 %index.next455, %n.vec414
  br i1 %i.fd, label %middle.block456, label %vector.body417, !llvm.loop !288

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
  %.0149206.us = phi i32 [ %i.gx, %scalar.ph411 ], [ %.0149206.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %.1152205.us = phi ptr [ %i.ga, %scalar.ph411 ], [ %.1152205.us.ph, %scalar.ph411.preheader ] ; 3 uses
  %.1154204.us = phi ptr [ %i.fr, %scalar.ph411 ], [ %.1154204.us.ph, %scalar.ph411.preheader ] ; 3 uses
  %.1156203.us = phi ptr [ %i.fp, %scalar.ph411 ], [ %.1156203.us.ph, %scalar.ph411.preheader ] ; 3 uses
  %.1160202.us = phi ptr [ %i.fe, %scalar.ph411 ], [ %.1160202.us.ph, %scalar.ph411.preheader ] ; 3 uses
  %.1164201.us = phi ptr [ %i.gw, %scalar.ph411 ], [ %.1164201.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %.1166200.us = phi ptr [ %i.gv, %scalar.ph411 ], [ %.1166200.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.1160202.us, i64 4 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.1160202.us, i64 8
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !45
  %i.fh = load float, ptr %.1156203.us, align 4, !tbaa !45 ; 2 uses
  %i.fi = load <2 x float>, ptr %.1160202.us, align 4, !tbaa !45
  %i.fj = load <4 x float>, ptr %i.ch, align 4, !tbaa !45 ; 3 uses
  %i.fk = insertelement <4 x float> poison, float %i.fg, i64 2
  %i.fl = insertelement <4 x float> %i.fk, float %i.fh, i64 3
  %i.fm = shufflevector <2 x float> %i.fi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> %i.fl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fo = fmul fast <4 x float> %i.fj, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %.1156203.us, i64 4 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.1156203.us, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %.1154204.us, i64 4 ; 3 uses
  %i.fs = load <2 x float>, ptr %i.fp, align 4, !tbaa !45 ; 2 uses
  %i.ft = load float, ptr %i.fq, align 4, !tbaa !45
  %i.fu = load <2 x float>, ptr %.1154204.us, align 4, !tbaa !45 ; 2 uses
  %i.fv = load <4 x float>, ptr %i.cp, align 4, !tbaa !45 ; 2 uses
  %i.fw = shufflevector <2 x float> %i.fs, <2 x float> %i.fu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fx = fmul fast <4 x float> %i.fv, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %.1154204.us, i64 8
  %i.fz = load float, ptr %i.cs, align 4, !tbaa !45 ; 2 uses
  %rdx.op = fadd fast <4 x float> %i.fo, %i.fx
  %i.ga = getelementptr inbounds nuw i8, ptr %.1152205.us, i64 4 ; 2 uses
  %i.gb = load <2 x float>, ptr %i.fr, align 4, !tbaa !45
  %i.gc = load float, ptr %i.fy, align 4, !tbaa !45
  %i.gd = fmul fast float %i.fz, %i.gc
  %op.rdx466 = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.gd, <4 x float> %rdx.op)
  %op.rdx467 = fadd fast float %op.rdx466, %i.cg
  %i.ge = load <2 x float>, ptr %.1152205.us, align 4, !tbaa !45
  %i.gf = shufflevector <2 x float> %i.fu, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <4 x float> %i.fj, <4 x float> %i.gf, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.gh = shufflevector <2 x float> %i.gb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> %i.gg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 poison, i32 poison>
  %i.gj = shufflevector <2 x float> %i.ge, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gk = shufflevector <8 x float> %i.gi, <8 x float> %i.gj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.gl = shufflevector <2 x float> %i.fs, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> %i.fj, <8 x i32> <i32 poison, i32 0, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gn = insertelement <8 x float> %i.gm, float %i.fh, i64 0
  %i.go = insertelement <8 x float> %i.gn, float %i.ft, i64 2
  %i.gp = shufflevector <4 x float> %i.fv, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gq = shufflevector <8 x float> %i.go, <8 x float> %i.gp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.gr = fmul fast <8 x float> %i.gk, %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %.1152205.us, i64 8
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !45
  %i.gu = fmul fast float %i.gt, %i.fz
  %op.rdx468 = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.gu, <8 x float> %i.gr)
  %op.rdx469 = fadd fast float %op.rdx468, %i.cg
  store float %op.rdx467, ptr %.1166200.us, align 4, !tbaa !45
  store float %op.rdx469, ptr %.1164201.us, align 4, !tbaa !45
  %i.gv = getelementptr inbounds nuw i8, ptr %.1166200.us, i64 4 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.1164201.us, i64 4 ; 2 uses
  %i.gx = add nsw i32 %.0149206.us, -1
  %i.gy = icmp sgt i32 %.0149206.us, 1
  br i1 %i.gy, label %scalar.ph411, label %._crit_edge.us, !llvm.loop !289

._crit_edge.us:                                   ; preds = %scalar.ph411, %middle.block456
  %.lcssa303 = phi ptr [ %i.cy, %middle.block456 ], [ %i.fe, %scalar.ph411 ]
  %.lcssa302 = phi ptr [ %i.cx, %middle.block456 ], [ %i.fp, %scalar.ph411 ]
  %.lcssa301 = phi ptr [ %i.cw, %middle.block456 ], [ %i.fr, %scalar.ph411 ]
  %.lcssa300 = phi ptr [ %i.cv, %middle.block456 ], [ %i.ga, %scalar.ph411 ]
  %.lcssa299 = phi ptr [ %i.da, %middle.block456 ], [ %i.gv, %scalar.ph411 ]
  %.lcssa = phi ptr [ %i.cz, %middle.block456 ], [ %i.gw, %scalar.ph411 ]
  %i.gz = getelementptr inbounds [4 x i8], ptr %.lcssa303, i64 %i.ai ; 2 uses
  %i.ha = getelementptr inbounds [4 x i8], ptr %.lcssa302, i64 %i.ai ; 2 uses
  %i.hb = getelementptr inbounds [4 x i8], ptr %.lcssa301, i64 %i.ai ; 2 uses
  %i.hc = getelementptr inbounds [4 x i8], ptr %.lcssa300, i64 %i.ai
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.lcssa299, i64 %i.bb ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.bb
  %i.hf = add nuw nsw i32 %.0150218.us, 2         ; 2 uses
  %i.hg = or disjoint i32 %i.hf, 1
  %i.hh = icmp slt i32 %i.hg, %i.af
  br i1 %i.hh, label %.lr.ph.us, label %.preheader, !llvm.loop !290

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph219.split.preheader, %_ZN4ncnn3MatD2Ev.exit171
  %.0165.lcssa = phi ptr [ %i.cd, %_ZN4ncnn3MatD2Ev.exit171 ], [ %scevgep277, %.lr.ph219.split.preheader ], [ %i.hd, %._crit_edge.us ]
  %.0159.lcssa = phi ptr [ %i.ci, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv, %.lr.ph219.split.preheader ], [ %i.gz, %._crit_edge.us ]
  %.0155.lcssa = phi ptr [ %i.cj, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv269, %.lr.ph219.split.preheader ], [ %i.ha, %._crit_edge.us ]
  %.0153.lcssa = phi ptr [ %i.ck, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv272, %.lr.ph219.split.preheader ], [ %i.hb, %._crit_edge.us ]
  %.0150.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit171 ], [ %i.ay, %.lr.ph219.split.preheader ], [ %i.ay, %._crit_edge.us ] ; 2 uses
  %i.hi = icmp slt i32 %.0150.lcssa, %i.af
  br i1 %i.hi, label %.lr.ph244, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph244:                                        ; preds = %.preheader
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ch, i64 32 ; 2 uses
  br i1 %i.bd, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph244
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cg, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.1243 = phi i32 [ %i.kg, %._crit_edge ], [ %.0150.lcssa, %.lr.ph.preheader ]
  %.2242 = phi ptr [ %i.kf, %._crit_edge ], [ %.0153.lcssa, %.lr.ph.preheader ] ; 6 uses
  %.2157241 = phi ptr [ %i.ke, %._crit_edge ], [ %.0155.lcssa, %.lr.ph.preheader ] ; 6 uses
  %.2161240 = phi ptr [ %i.kd, %._crit_edge ], [ %.0159.lcssa, %.lr.ph.preheader ] ; 6 uses
  %.2167239 = phi ptr [ %.lcssa308, %._crit_edge ], [ %.0165.lcssa, %.lr.ph.preheader ] ; 9 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.hp = getelementptr i8, ptr %.2167239, i64 %i.bg
  %scevgep309 = getelementptr i8, ptr %i.hp, i64 4 ; 4 uses
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
  %i.hq = getelementptr i8, ptr %.2242, i64 %i.ca ; 2 uses
  %i.hr = getelementptr i8, ptr %.2157241, i64 %i.ca ; 2 uses
  %i.hs = getelementptr i8, ptr %.2161240, i64 %i.ca ; 2 uses
  %i.ht = getelementptr i8, ptr %.2167239, i64 %i.ca ; 2 uses
  %i.hu = load float, ptr %i.ch, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert328 = insertelement <8 x float> poison, float %i.hu, i64 0
  %broadcast.splat329 = shufflevector <8 x float> %broadcast.splatinsert328, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hv = load float, ptr %i.hj, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert331 = insertelement <8 x float> poison, float %i.hv, i64 0
  %broadcast.splat332 = shufflevector <8 x float> %broadcast.splatinsert331, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hw = load float, ptr %i.hk, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert334 = insertelement <8 x float> poison, float %i.hw, i64 0
  %broadcast.splat335 = shufflevector <8 x float> %broadcast.splatinsert334, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hx = load float, ptr %i.cl, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert337 = insertelement <8 x float> poison, float %i.hx, i64 0
  %broadcast.splat338 = shufflevector <8 x float> %broadcast.splatinsert337, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hy = load float, ptr %i.hl, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert340 = insertelement <8 x float> poison, float %i.hy, i64 0
  %broadcast.splat341 = shufflevector <8 x float> %broadcast.splatinsert340, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hz = load float, ptr %i.hm, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert343 = insertelement <8 x float> poison, float %i.hz, i64 0
  %broadcast.splat344 = shufflevector <8 x float> %broadcast.splatinsert343, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ia = load float, ptr %i.cm, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert346 = insertelement <8 x float> poison, float %i.ia, i64 0
  %broadcast.splat347 = shufflevector <8 x float> %broadcast.splatinsert346, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ib = load float, ptr %i.hn, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert349 = insertelement <8 x float> poison, float %i.ib, i64 0
  %broadcast.splat350 = shufflevector <8 x float> %broadcast.splatinsert349, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ic = load float, ptr %i.ho, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert352 = insertelement <8 x float> poison, float %i.ic, i64 0
  %broadcast.splat353 = shufflevector <8 x float> %broadcast.splatinsert352, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.id = shl i64 %index, 2                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.2242, i64 %i.id ; 3 uses
  %next.gep325 = getelementptr i8, ptr %.2157241, i64 %i.id ; 3 uses
  %next.gep326 = getelementptr i8, ptr %.2161240, i64 %i.id ; 3 uses
  %next.gep327 = getelementptr i8, ptr %.2167239, i64 %i.id
  %wide.load = load <8 x float>, ptr %next.gep326, align 4, !tbaa !45, !alias.scope !312
  %i.ie = fmul fast <8 x float> %broadcast.splat329, %wide.load
  %i.if = fadd fast <8 x float> %broadcast.splat, %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %next.gep326, i64 4
  %wide.load330 = load <8 x float>, ptr %i.ig, align 4, !tbaa !45, !alias.scope !312
  %i.ih = fmul fast <8 x float> %broadcast.splat332, %wide.load330
  %i.ii = fadd fast <8 x float> %i.ih, %i.if
  %i.ij = getelementptr inbounds nuw i8, ptr %next.gep326, i64 8
  %wide.load333 = load <8 x float>, ptr %i.ij, align 4, !tbaa !45, !alias.scope !312
  %i.ik = fmul fast <8 x float> %broadcast.splat335, %wide.load333
  %i.il = fadd fast <8 x float> %i.ii, %i.ik
  %wide.load336 = load <8 x float>, ptr %next.gep325, align 4, !tbaa !45, !alias.scope !313
  %i.im = fmul fast <8 x float> %broadcast.splat338, %wide.load336
  %i.in = fadd fast <8 x float> %i.il, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %next.gep325, i64 4
  %wide.load339 = load <8 x float>, ptr %i.io, align 4, !tbaa !45, !alias.scope !313
  %i.ip = fmul fast <8 x float> %broadcast.splat341, %wide.load339
  %i.iq = fadd fast <8 x float> %i.in, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %next.gep325, i64 8
  %wide.load342 = load <8 x float>, ptr %i.ir, align 4, !tbaa !45, !alias.scope !313
  %i.is = fmul fast <8 x float> %broadcast.splat344, %wide.load342
  %i.it = fadd fast <8 x float> %i.iq, %i.is
  %wide.load345 = load <8 x float>, ptr %next.gep, align 4, !tbaa !45, !alias.scope !314
  %i.iu = fmul fast <8 x float> %broadcast.splat347, %wide.load345
  %i.iv = fadd fast <8 x float> %i.it, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %wide.load348 = load <8 x float>, ptr %i.iw, align 4, !tbaa !45, !alias.scope !314
  %i.ix = fmul fast <8 x float> %broadcast.splat350, %wide.load348
  %i.iy = fadd fast <8 x float> %i.iv, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %wide.load351 = load <8 x float>, ptr %i.iz, align 4, !tbaa !45, !alias.scope !314
  %i.ja = fmul fast <8 x float> %broadcast.splat353, %wide.load351
  %i.jb = fadd fast <8 x float> %i.iy, %i.ja
  store <8 x float> %i.jb, ptr %next.gep327, align 4, !tbaa !45, !alias.scope !315, !noalias !316
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jc = icmp eq i64 %index.next, %n.vec
  br i1 %i.jc, label %middle.block, label %vector.body, !llvm.loop !297

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.hq, i64 -4
  %ind.escape354 = getelementptr i8, ptr %i.hr, i64 -4
  %ind.escape355 = getelementptr i8, ptr %i.hs, i64 -4
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.0148235.ph = phi i32 [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph ], [ %i.bz, %middle.block ]
  %.3234.ph = phi ptr [ %.2242, %vector.memcheck ], [ %.2242, %.lr.ph ], [ %i.hq, %middle.block ]
  %.3158233.ph = phi ptr [ %.2157241, %vector.memcheck ], [ %.2157241, %.lr.ph ], [ %i.hr, %middle.block ]
  %.3162232.ph = phi ptr [ %.2161240, %vector.memcheck ], [ %.2161240, %.lr.ph ], [ %i.hs, %middle.block ]
  %.3168231.ph = phi ptr [ %.2167239, %vector.memcheck ], [ %.2167239, %.lr.ph ], [ %i.ht, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0148235 = phi i32 [ %i.kb, %scalar.ph ], [ %.0148235.ph, %scalar.ph.preheader ] ; 2 uses
  %.3234 = phi ptr [ %i.ji, %scalar.ph ], [ %.3234.ph, %scalar.ph.preheader ] ; 4 uses
  %.3158233 = phi ptr [ %i.jh, %scalar.ph ], [ %.3158233.ph, %scalar.ph.preheader ] ; 3 uses
  %.3162232 = phi ptr [ %i.jd, %scalar.ph ], [ %.3162232.ph, %scalar.ph.preheader ] ; 4 uses
  %.3168231 = phi ptr [ %i.ka, %scalar.ph ], [ %.3168231.ph, %scalar.ph.preheader ] ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.3162232, i64 4
  %i.je = getelementptr inbounds nuw i8, ptr %.3162232, i64 8
  %i.jf = load float, ptr %i.je, align 4, !tbaa !45
  %i.jg = load float, ptr %.3158233, align 4, !tbaa !45
  %i.jh = getelementptr inbounds nuw i8, ptr %.3158233, i64 4 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.3234, i64 4
  %i.jj = load <2 x float>, ptr %.3162232, align 4, !tbaa !45
  %i.jk = load <2 x float>, ptr %i.jh, align 4, !tbaa !45
  %i.jl = load <2 x float>, ptr %.3234, align 4, !tbaa !45
  %i.jm = load <8 x float>, ptr %i.ch, align 4, !tbaa !45
  %i.jn = insertelement <8 x float> poison, float %i.jf, i64 2
  %i.jo = insertelement <8 x float> %i.jn, float %i.jg, i64 3
  %i.jp = shufflevector <2 x float> %i.jj, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jq = shufflevector <8 x float> %i.jp, <8 x float> %i.jo, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jr = shufflevector <2 x float> %i.jk, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.js = shufflevector <8 x float> %i.jq, <8 x float> %i.jr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.jt = shufflevector <2 x float> %i.jl, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ju = shufflevector <8 x float> %i.js, <8 x float> %i.jt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.jv = fmul fast <8 x float> %i.jm, %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %.3234, i64 8
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !45
  %i.jy = load float, ptr %i.ho, align 4, !tbaa !45
  %i.jz = fmul fast float %i.jy, %i.jx
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.jz, <8 x float> %i.jv)
  %op.rdx465 = fadd fast float %op.rdx, %i.cg
  store float %op.rdx465, ptr %.3168231, align 4, !tbaa !45
  %i.ka = getelementptr inbounds nuw i8, ptr %.3168231, i64 4 ; 2 uses
  %i.kb = add nsw i32 %.0148235, -1
  %i.kc = icmp sgt i32 %.0148235, 1
  br i1 %i.kc, label %scalar.ph, label %._crit_edge, !llvm.loop !298

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.3234.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.3234, %scalar.ph ]
  %.3158233.lcssa = phi ptr [ %ind.escape354, %middle.block ], [ %.3158233, %scalar.ph ]
  %.3162232.lcssa = phi ptr [ %ind.escape355, %middle.block ], [ %.3162232, %scalar.ph ]
  %.lcssa308 = phi ptr [ %i.ht, %middle.block ], [ %i.ka, %scalar.ph ]
  %i.kd = getelementptr inbounds nuw i8, ptr %.3162232.lcssa, i64 12
  %i.ke = getelementptr inbounds nuw i8, ptr %.3158233.lcssa, i64 12
  %i.kf = getelementptr inbounds nuw i8, ptr %.3234.lcssa, i64 12
  %i.kg = add nuw nsw i32 %.1243, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.kg, %i.af
  br i1 %exitcond.not, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph, !llvm.loop !299

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
define internal void @_ZN4ncnnL15convdw3x3s2_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #16 personality ptr @__gxx_personality_v0 {
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
  %i.l = load ptr, ptr %3, align 8, !tbaa !21, !noalias !330
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22, !noalias !330
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !67, !noalias !330
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !97     ; 2 uses
  %.not81 = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %5, align 8, !tbaa !97     ; 2 uses
  %i.s = load ptr, ptr %6, align 8, !tbaa !21, !noalias !331
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !22, !noalias !331
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !67, !noalias !331
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
end_hunk_2
begin_hunk_3_@_ZNK4ncnn28ConvolutionDepthWise_x86_avx16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %i.bd = load i64, ptr %i.l, align 8, !tbaa !22, !noalias !349
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge423
  %i.bg = phi i32 [ %i.bl, %._crit_edge423 ], [ %i.ae, %.preheader.preheader ]
  %i.bh = phi i32 [ %i.bm, %._crit_edge423 ], [ %i.ay, %.preheader.preheader ] ; 2 uses
  %.080428 = phi ptr [ %.1.lcssa, %._crit_edge423 ], [ %i.bf, %.preheader.preheader ] ; 2 uses
  %.081427 = phi ptr [ %.182.lcssa, %._crit_edge423 ], [ %i.bf, %.preheader.preheader ] ; 2 uses
  %.084426 = phi i32 [ %i.bn, %._crit_edge423 ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph422, label %._crit_edge423

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge423, %.preheader.lr.ph, %_ZN4ncnn3MatD2Ev.exit91
  %i.bj = phi i32 [ %i.ae, %_ZN4ncnn3MatD2Ev.exit91 ], [ %i.ae, %.preheader.lr.ph ], [ %i.bl, %._crit_edge423 ]
  %i.bk = phi i32 [ %i.af, %_ZN4ncnn3MatD2Ev.exit91 ], [ %i.af, %.preheader.lr.ph ], [ %i.bl, %._crit_edge423 ]
  %indvars.iv.next438 = add nsw i64 %indvars.iv437, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next438 to i32
  %exitcond440.not = icmp eq i32 %i.ad, %lftr.wideiv
  br i1 %exitcond440.not, label %._crit_edge431, label %_ZN4ncnn3MatD2Ev.exit91, !llvm.loop !344

._crit_edge423.loopexit:                          ; preds = %bb.h
  %.pre = load i32, ptr %7, align 4, !tbaa !69
  br label %._crit_edge423

._crit_edge423:                                   ; preds = %._crit_edge423.loopexit, %.preheader
  %i.bl = phi i32 [ %i.bg, %.preheader ], [ %.pre, %._crit_edge423.loopexit ] ; 4 uses
  %i.bm = phi i32 [ %i.bh, %.preheader ], [ %i.rb, %._crit_edge423.loopexit ]
  %.182.lcssa = phi ptr [ %.081427, %.preheader ], [ %.283, %._crit_edge423.loopexit ]
  %.1.lcssa = phi ptr [ %.080428, %.preheader ], [ %.2, %._crit_edge423.loopexit ]
  %i.bn = add nuw nsw i32 %.084426, 1             ; 2 uses
  %i.bo = icmp slt i32 %i.bn, %i.bl
  br i1 %i.bo, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !345

.lr.ph422:                                        ; preds = %.preheader, %bb.h
  %.1421 = phi ptr [ %.2, %bb.h ], [ %.080428, %.preheader ] ; 3 uses
  %.182420 = phi ptr [ %.283, %bb.h ], [ %.081427, %.preheader ] ; 4 uses
  %.085419 = phi i32 [ %i.ra, %bb.h ], [ 0, %.preheader ] ; 2 uses
  %i.bp = load i32, ptr %i.r, align 8, !tbaa !65
  %i.bq = mul nsw i32 %i.bp, %.084426
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul i64 %i.aw, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bs
  %i.bu = load i32, ptr %i.s, align 4, !tbaa !64
  %i.bv = shl i32 %.085419, 3
  %i.bw = mul i32 %i.bv, %i.bu
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %i.bt, i64 %i.bx
  %i.bz = load i32, ptr %5, align 4, !tbaa !69    ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph422
  %i.cb = load ptr, ptr %9, align 8, !tbaa !81
  %wide.trip.count = zext nneg i32 %i.bz to i64
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.cc = sitofp fast <4 x i32> %i.dr to <4 x float>
  %i.cd = sitofp fast <4 x i32> %i.dt to <4 x float>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph422
  %.lcssa416 = phi <4 x float> [ zeroinitializer, %.lr.ph422 ], [ %i.cd, %._crit_edge.loopexit ]
  %.lcssa = phi <4 x float> [ zeroinitializer, %.lr.ph422 ], [ %i.cc, %._crit_edge.loopexit ]
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
  %i.cx = fmul fast <4 x float> %i.cv, %.lcssa416 ; 2 uses
  %i.cy = load i32, ptr %i.v, align 8, !tbaa !77
  %.not89 = icmp eq i32 %i.cy, 0
  br i1 %.not89, label %bb.e, label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.cz = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.dr, %bb.c ]
  %i.da = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.dt, %bb.c ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !69
  %i.dd = shl nsw i32 %i.dc, 3
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %i.by, i64 %i.de
  %i.dg = load <8 x i8>, ptr %i.df, align 1, !tbaa !87
  %i.dh = sext <8 x i8> %i.dg to <8 x i16>        ; 2 uses
  %i.di = shl nuw nsw i64 %indvars.iv, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.di
  %i.dk = load <8 x i8>, ptr %i.dj, align 1, !tbaa !87
  %i.dl = sext <8 x i8> %i.dk to <8 x i16>        ; 2 uses
  %i.dm = mul nsw <8 x i16> %i.dl, %i.dh          ; 2 uses
  %i.dn = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.dh, <8 x i16> %i.dl) ; 2 uses
  %i.do = shufflevector <8 x i16> %i.dm, <8 x i16> %i.dn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dp = shufflevector <8 x i16> %i.dm, <8 x i16> %i.dn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dq = bitcast <8 x i16> %i.do to <4 x i32>
  %i.dr = add <4 x i32> %i.cz, %i.dq              ; 2 uses
  %i.ds = bitcast <8 x i16> %i.dp to <4 x i32>
  %i.dt = add <4 x i32> %i.da, %i.ds              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !346

bb.d:                                             ; preds = %._crit_edge
  %i.du = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.ax ; 2 uses
  %i.dw = load <4 x float>, ptr %i.dv, align 1, !tbaa !87
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dy = load <4 x float>, ptr %i.dx, align 1, !tbaa !87
  %i.dz = fadd fast <4 x float> %i.dw, %i.cw
  %i.ea = fadd fast <4 x float> %i.dy, %i.cx
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.0388 = phi nsz <4 x float> [ %i.cw, %._crit_edge ], [ %i.dz, %bb.d ] ; 10 uses
  %.0387 = phi nsz <4 x float> [ %i.cx, %._crit_edge ], [ %i.ea, %bb.d ] ; 10 uses
  %i.eb = load i32, ptr %i.x, align 8, !tbaa !44
  switch i32 %i.eb, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread392
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread395
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread398
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread401
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread404
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread: ; preds = %bb.e
  %i.ec = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0388, <4 x float> zeroinitializer)
  %i.ed = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0387, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread392: ; preds = %bb.e
  %i.ee = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !45
  %i.eg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0388)
  %i.eh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0388)
  %i.ei = insertelement <4 x float> poison, float %i.ef, i64 0
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ek = fmul fast <4 x float> %i.ej, %i.eh
  %i.el = fadd fast <4 x float> %i.ek, %i.eg
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0387)
  %i.en = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0387)
  %i.eo = fmul fast <4 x float> %i.ej, %i.en
  %i.ep = fadd fast <4 x float> %i.eo, %i.em
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread395: ; preds = %bb.e
  %i.eq = load ptr, ptr %i.y, align 8, !tbaa !21  ; 2 uses
  %i.er = load float, ptr %i.eq, align 4, !tbaa !45
  %i.es = insertelement <4 x float> poison, float %i.er, i64 0
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !45
  %i.ew = insertelement <4 x float> poison, float %i.ev, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ey = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0388, <4 x float> nofpclass(nan inf) %i.et)
  %i.ez = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ey, <4 x float> nofpclass(nan inf) %i.ex)
  %i.fa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0387, <4 x float> nofpclass(nan inf) %i.et)
  %i.fb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fa, <4 x float> nofpclass(nan inf) %i.ex)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread398: ; preds = %bb.e
  %i.fc = fneg fast <4 x float> %.0388
  %i.fd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fc, <4 x float> splat (float f0x42B0C0A5))
  %i.fe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fd, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ff = fmul fast <4 x float> %i.fe, splat (float f0x3FB8AA3B)
  %i.fg = fadd fast <4 x float> %i.ff, splat (float 5.000000e-01) ; 2 uses
  %i.fh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fg)
  %i.fi = sitofp fast <4 x i32> %i.fh to <4 x float> ; 2 uses
  %i.fj = fcmp fast olt <4 x float> %i.fg, %i.fi
  %i.fk = select <4 x i1> %i.fj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fl = fsub fast <4 x float> %i.fi, %i.fk      ; 2 uses
  %i.fm = fmul fast <4 x float> %i.fl, splat (float f0x3F317218)
  %i.fn = fsub fast <4 x float> %i.fe, %i.fm      ; 8 uses
  %i.fo = fmul fast <4 x float> %i.fn, %i.fn
  %i.fp = fmul fast <4 x float> %i.fn, splat (float f0x39506967)
  %i.fq = fadd fast <4 x float> %i.fp, splat (float f0x3AB743CE)
  %i.fr = fmul fast <4 x float> %i.fq, %i.fn
  %i.fs = fadd fast <4 x float> %i.fr, splat (float f0x3C088908)
  %i.ft = fmul fast <4 x float> %i.fs, %i.fn
  %i.fu = fadd fast <4 x float> %i.ft, splat (float f0x3D2AA9C1)
  %i.fv = fmul fast <4 x float> %i.fu, %i.fn
  %i.fw = fadd fast <4 x float> %i.fv, splat (float f0x3E2AAAAA)
  %i.fx = fmul fast <4 x float> %i.fw, %i.fn
  %i.fy = fadd fast <4 x float> %i.fx, splat (float 5.000000e-01)
  %i.fz = fmul fast <4 x float> %i.fo, %i.fy
  %i.ga = fadd fast <4 x float> %i.fn, %i.fz
  %i.gb = fadd fast <4 x float> %i.ga, splat (float 1.000000e+00)
  %i.gc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fl)
  %i.gd = shl <4 x i32> %i.gc, splat (i32 23)
  %i.ge = add <4 x i32> %i.gd, splat (i32 1065353216)
  %i.gf = bitcast <4 x i32> %i.ge to <4 x float>
  %i.gg = fmul fast <4 x float> %i.gb, %i.gf
  %i.gh = fadd fast <4 x float> %i.gg, splat (float 1.000000e+00)
  %i.gi = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gh
  %i.gj = fneg fast <4 x float> %.0387
  %i.gk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gj, <4 x float> splat (float f0x42B0C0A5))
  %i.gl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gk, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gm = fmul fast <4 x float> %i.gl, splat (float f0x3FB8AA3B)
  %i.gn = fadd fast <4 x float> %i.gm, splat (float 5.000000e-01) ; 2 uses
  %i.go = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gn)
  %i.gp = sitofp fast <4 x i32> %i.go to <4 x float> ; 2 uses
  %i.gq = fcmp fast olt <4 x float> %i.gn, %i.gp
  %i.gr = select <4 x i1> %i.gq, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gs = fsub fast <4 x float> %i.gp, %i.gr      ; 2 uses
  %i.gt = fmul fast <4 x float> %i.gs, splat (float f0x3F317218)
  %i.gu = fsub fast <4 x float> %i.gl, %i.gt      ; 8 uses
  %i.gv = fmul fast <4 x float> %i.gu, %i.gu
  %i.gw = fmul fast <4 x float> %i.gu, splat (float f0x39506967)
  %i.gx = fadd fast <4 x float> %i.gw, splat (float f0x3AB743CE)
  %i.gy = fmul fast <4 x float> %i.gx, %i.gu
  %i.gz = fadd fast <4 x float> %i.gy, splat (float f0x3C088908)
  %i.ha = fmul fast <4 x float> %i.gz, %i.gu
  %i.hb = fadd fast <4 x float> %i.ha, splat (float f0x3D2AA9C1)
  %i.hc = fmul fast <4 x float> %i.hb, %i.gu
  %i.hd = fadd fast <4 x float> %i.hc, splat (float f0x3E2AAAAA)
  %i.he = fmul fast <4 x float> %i.hd, %i.gu
  %i.hf = fadd fast <4 x float> %i.he, splat (float 5.000000e-01)
  %i.hg = fmul fast <4 x float> %i.gv, %i.hf
  %i.hh = fadd fast <4 x float> %i.gu, %i.hg
  %i.hi = fadd fast <4 x float> %i.hh, splat (float 1.000000e+00)
  %i.hj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gs)
  %i.hk = shl <4 x i32> %i.hj, splat (i32 23)
  %i.hl = add <4 x i32> %i.hk, splat (i32 1065353216)
  %i.hm = bitcast <4 x i32> %i.hl to <4 x float>
  %i.hn = fmul fast <4 x float> %i.hi, %i.hm
  %i.ho = fadd fast <4 x float> %i.hn, splat (float 1.000000e+00)
  %i.hp = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ho
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread401: ; preds = %bb.e
  %i.hq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0388, <4 x float> splat (float f0x42B0C0A5))
  %i.hr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hs = fmul fast <4 x float> %i.hr, splat (float f0x3FB8AA3B)
  %i.ht = fadd fast <4 x float> %i.hs, splat (float 5.000000e-01) ; 2 uses
  %i.hu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ht)
  %i.hv = sitofp fast <4 x i32> %i.hu to <4 x float> ; 2 uses
  %i.hw = fcmp fast olt <4 x float> %i.ht, %i.hv
  %i.hx = select <4 x i1> %i.hw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hy = fsub fast <4 x float> %i.hv, %i.hx      ; 2 uses
  %i.hz = fmul fast <4 x float> %i.hy, splat (float f0x3F317218)
  %i.ia = fsub fast <4 x float> %i.hr, %i.hz      ; 8 uses
  %i.ib = fmul fast <4 x float> %i.ia, %i.ia
  %i.ic = fmul fast <4 x float> %i.ia, splat (float f0x39506967)
  %i.id = fadd fast <4 x float> %i.ic, splat (float f0x3AB743CE)
  %i.ie = fmul fast <4 x float> %i.id, %i.ia
  %i.if = fadd fast <4 x float> %i.ie, splat (float f0x3C088908)
  %i.ig = fmul fast <4 x float> %i.if, %i.ia
  %i.ih = fadd fast <4 x float> %i.ig, splat (float f0x3D2AA9C1)
  %i.ii = fmul fast <4 x float> %i.ih, %i.ia
  %i.ij = fadd fast <4 x float> %i.ii, splat (float f0x3E2AAAAA)
  %i.ik = fmul fast <4 x float> %i.ij, %i.ia
  %i.il = fadd fast <4 x float> %i.ik, splat (float 5.000000e-01)
  %i.im = fmul fast <4 x float> %i.ib, %i.il
  %i.in = fadd fast <4 x float> %i.ia, %i.im
  %i.io = fadd fast <4 x float> %i.in, splat (float 1.000000e+00)
  %i.ip = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hy)
  %i.iq = shl <4 x i32> %i.ip, splat (i32 23)
  %i.ir = add <4 x i32> %i.iq, splat (i32 1065353216)
  %i.is = bitcast <4 x i32> %i.ir to <4 x float>
  %i.it = fmul fast <4 x float> %i.io, %i.is
  %i.iu = fadd fast <4 x float> %i.it, splat (float 1.000000e+00) ; 2 uses
  %i.iv = fcmp fast ole <4 x float> %i.iu, zeroinitializer
  %i.iw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.iu, <4 x float> splat (float f0x00800000))
  %i.ix = bitcast <4 x float> %i.iw to <4 x i32>  ; 2 uses
  %i.iy = lshr <4 x i32> %i.ix, splat (i32 23)
  %i.iz = and <4 x i32> %i.ix, splat (i32 -2139095041)
  %i.ja = or disjoint <4 x i32> %i.iz, splat (i32 1056964608)
  %i.jb = bitcast <4 x i32> %i.ja to <4 x float>  ; 3 uses
  %i.jc = add nsw <4 x i32> %i.iy, splat (i32 -127)
  %i.jd = sitofp fast <4 x i32> %i.jc to <4 x float> ; 2 uses
  %i.je = fadd fast <4 x float> %i.jd, splat (float 1.000000e+00)
  %i.jf = fcmp fast olt <4 x float> %i.jb, splat (float f0x3F3504F3) ; 2 uses
  %i.jg = select <4 x i1> %i.jf, <4 x float> %i.jb, <4 x float> zeroinitializer
  %i.jh = fadd fast <4 x float> %i.jb, splat (float -1.000000e+00)
  %i.ji = select fast <4 x i1> %i.jf, <4 x float> %i.jd, <4 x float> %i.je
  %i.jj = fadd fast <4 x float> %i.jh, %i.jg      ; 12 uses
  %i.jk = fmul fast <4 x float> %i.jj, %i.jj
  %i.jl = fmul fast <4 x float> %i.jj, splat (float f0x3D9021BB)
  %i.jm = fadd fast <4 x float> %i.jl, splat (float f0xBDEBD1B8)
  %i.jn = fmul fast <4 x float> %i.jm, %i.jj
  %i.jo = fadd fast <4 x float> %i.jn, splat (float f0x3DEF251A)
  %i.jp = fmul fast <4 x float> %i.jo, %i.jj
  %i.jq = fadd fast <4 x float> %i.jp, splat (float f0xBDFE5D4F)
  %i.jr = fmul fast <4 x float> %i.jq, %i.jj
  %i.js = fadd fast <4 x float> %i.jr, splat (float f0x3E11E9BF)
  %i.jt = fmul fast <4 x float> %i.js, %i.jj
  %i.ju = fadd fast <4 x float> %i.jt, splat (float f0xBE2AAE50)
  %i.jv = fmul fast <4 x float> %i.ju, %i.jj
  %i.jw = fadd fast <4 x float> %i.jv, splat (float f0x3E4CCEAC)
  %i.jx = fmul fast <4 x float> %i.jw, %i.jj
  %i.jy = fadd fast <4 x float> %i.jx, splat (float f0xBE7FFFFC)
  %i.jz = fmul fast <4 x float> %i.jy, %i.jj
  %i.ka = fadd fast <4 x float> %i.jz, splat (float f0x3EAAAAAA)
  %i.kb = fmul fast <4 x float> %i.ka, %i.jj
  %reass.mul = fmul fast <4 x float> %i.ji, splat (float f0x3F317218)
  %reass.add412 = fadd fast <4 x float> %i.kb, splat (float -5.000000e-01)
  %reass.mul413 = fmul fast <4 x float> %i.jk, %reass.add412
  %i.kc = fadd fast <4 x float> %reass.mul, %i.jj
  %i.kd = fadd fast <4 x float> %i.kc, %reass.mul413
  %.neg = fmul fast <4 x float> %i.kd, splat (float -2.000000e+00)
  %i.ke = select fast <4 x i1> %i.iv, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.kf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ke, <4 x float> splat (float f0x42B0C0A5))
  %i.kg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kh = fmul fast <4 x float> %i.kg, splat (float f0x3FB8AA3B)
  %i.ki = fadd fast <4 x float> %i.kh, splat (float 5.000000e-01) ; 2 uses
  %i.kj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ki)
  %i.kk = sitofp fast <4 x i32> %i.kj to <4 x float> ; 2 uses
  %i.kl = fcmp fast olt <4 x float> %i.ki, %i.kk
  %i.km = select <4 x i1> %i.kl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.kn = fsub fast <4 x float> %i.kk, %i.km      ; 2 uses
  %i.ko = fmul fast <4 x float> %i.kn, splat (float f0x3F317218)
  %i.kp = fsub fast <4 x float> %i.kg, %i.ko      ; 8 uses
  %i.kq = fmul fast <4 x float> %i.kp, %i.kp
  %i.kr = fmul fast <4 x float> %i.kp, splat (float f0x39506967)
  %i.ks = fadd fast <4 x float> %i.kr, splat (float f0x3AB743CE)
  %i.kt = fmul fast <4 x float> %i.ks, %i.kp
  %i.ku = fadd fast <4 x float> %i.kt, splat (float f0x3C088908)
  %i.kv = fmul fast <4 x float> %i.ku, %i.kp
  %i.kw = fadd fast <4 x float> %i.kv, splat (float f0x3D2AA9C1)
  %i.kx = fmul fast <4 x float> %i.kw, %i.kp
  %i.ky = fadd fast <4 x float> %i.kx, splat (float f0x3E2AAAAA)
  %i.kz = fmul fast <4 x float> %i.ky, %i.kp
  %i.la = fadd fast <4 x float> %i.kz, splat (float 5.000000e-01)
  %i.lb = fmul fast <4 x float> %i.kq, %i.la
  %i.lc = fadd fast <4 x float> %i.kp, %i.lb
  %i.ld = fadd fast <4 x float> %i.lc, splat (float 1.000000e+00)
  %i.le = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kn)
  %i.lf = shl <4 x i32> %i.le, splat (i32 23)
  %i.lg = add <4 x i32> %i.lf, splat (i32 1065353216)
  %i.lh = bitcast <4 x i32> %i.lg to <4 x float>
  %i.li = fmul fast <4 x float> %i.ld, %i.lh
  %i.lj = fadd fast <4 x float> %i.li, splat (float 1.000000e+00)
  %i.lk = fdiv fast <4 x float> splat (float 2.000000e+00), %i.lj
  %i.ll = fadd fast <4 x float> %i.lk, splat (float -1.000000e+00)
  %i.lm = fmul fast <4 x float> %i.ll, %.0388
  %i.ln = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0387, <4 x float> splat (float f0x42B0C0A5))
  %i.lo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ln, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lp = fmul fast <4 x float> %i.lo, splat (float f0x3FB8AA3B)
  %i.lq = fadd fast <4 x float> %i.lp, splat (float 5.000000e-01) ; 2 uses
  %i.lr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lq)
  %i.ls = sitofp fast <4 x i32> %i.lr to <4 x float> ; 2 uses
  %i.lt = fcmp fast olt <4 x float> %i.lq, %i.ls
  %i.lu = select <4 x i1> %i.lt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.lv = fsub fast <4 x float> %i.ls, %i.lu      ; 2 uses
  %i.lw = fmul fast <4 x float> %i.lv, splat (float f0x3F317218)
  %i.lx = fsub fast <4 x float> %i.lo, %i.lw      ; 8 uses
  %i.ly = fmul fast <4 x float> %i.lx, %i.lx
  %i.lz = fmul fast <4 x float> %i.lx, splat (float f0x39506967)
  %i.ma = fadd fast <4 x float> %i.lz, splat (float f0x3AB743CE)
  %i.mb = fmul fast <4 x float> %i.ma, %i.lx
  %i.mc = fadd fast <4 x float> %i.mb, splat (float f0x3C088908)
  %i.md = fmul fast <4 x float> %i.mc, %i.lx
  %i.me = fadd fast <4 x float> %i.md, splat (float f0x3D2AA9C1)
  %i.mf = fmul fast <4 x float> %i.me, %i.lx
  %i.mg = fadd fast <4 x float> %i.mf, splat (float f0x3E2AAAAA)
  %i.mh = fmul fast <4 x float> %i.mg, %i.lx
  %i.mi = fadd fast <4 x float> %i.mh, splat (float 5.000000e-01)
  %i.mj = fmul fast <4 x float> %i.ly, %i.mi
  %i.mk = fadd fast <4 x float> %i.lx, %i.mj
  %i.ml = fadd fast <4 x float> %i.mk, splat (float 1.000000e+00)
  %i.mm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lv)
  %i.mn = shl <4 x i32> %i.mm, splat (i32 23)
  %i.mo = add <4 x i32> %i.mn, splat (i32 1065353216)
  %i.mp = bitcast <4 x i32> %i.mo to <4 x float>
  %i.mq = fmul fast <4 x float> %i.ml, %i.mp
  %i.mr = fadd fast <4 x float> %i.mq, splat (float 1.000000e+00) ; 2 uses
  %i.ms = fcmp fast ole <4 x float> %i.mr, zeroinitializer
  %i.mt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mr, <4 x float> splat (float f0x00800000))
  %i.mu = bitcast <4 x float> %i.mt to <4 x i32>  ; 2 uses
  %i.mv = lshr <4 x i32> %i.mu, splat (i32 23)
  %i.mw = and <4 x i32> %i.mu, splat (i32 -2139095041)
  %i.mx = or disjoint <4 x i32> %i.mw, splat (i32 1056964608)
  %i.my = bitcast <4 x i32> %i.mx to <4 x float>  ; 3 uses
  %i.mz = add nsw <4 x i32> %i.mv, splat (i32 -127)
  %i.na = sitofp fast <4 x i32> %i.mz to <4 x float> ; 2 uses
  %i.nb = fadd fast <4 x float> %i.na, splat (float 1.000000e+00)
  %i.nc = fcmp fast olt <4 x float> %i.my, splat (float f0x3F3504F3) ; 2 uses
  %i.nd = select <4 x i1> %i.nc, <4 x float> %i.my, <4 x float> zeroinitializer
  %i.ne = fadd fast <4 x float> %i.my, splat (float -1.000000e+00)
  %i.nf = select fast <4 x i1> %i.nc, <4 x float> %i.na, <4 x float> %i.nb
  %i.ng = fadd fast <4 x float> %i.ne, %i.nd      ; 12 uses
  %i.nh = fmul fast <4 x float> %i.ng, %i.ng
  %i.ni = fmul fast <4 x float> %i.ng, splat (float f0x3D9021BB)
  %i.nj = fadd fast <4 x float> %i.ni, splat (float f0xBDEBD1B8)
  %i.nk = fmul fast <4 x float> %i.nj, %i.ng
  %i.nl = fadd fast <4 x float> %i.nk, splat (float f0x3DEF251A)
  %i.nm = fmul fast <4 x float> %i.nl, %i.ng
  %i.nn = fadd fast <4 x float> %i.nm, splat (float f0xBDFE5D4F)
  %i.no = fmul fast <4 x float> %i.nn, %i.ng
  %i.np = fadd fast <4 x float> %i.no, splat (float f0x3E11E9BF)
  %i.nq = fmul fast <4 x float> %i.np, %i.ng
  %i.nr = fadd fast <4 x float> %i.nq, splat (float f0xBE2AAE50)
  %i.ns = fmul fast <4 x float> %i.nr, %i.ng
  %i.nt = fadd fast <4 x float> %i.ns, splat (float f0x3E4CCEAC)
  %i.nu = fmul fast <4 x float> %i.nt, %i.ng
  %i.nv = fadd fast <4 x float> %i.nu, splat (float f0xBE7FFFFC)
  %i.nw = fmul fast <4 x float> %i.nv, %i.ng
  %i.nx = fadd fast <4 x float> %i.nw, splat (float f0x3EAAAAAA)
  %i.ny = fmul fast <4 x float> %i.nx, %i.ng
  %reass.mul411 = fmul fast <4 x float> %i.nf, splat (float f0x3F317218)
  %reass.add414 = fadd fast <4 x float> %i.ny, splat (float -5.000000e-01)
  %reass.mul415 = fmul fast <4 x float> %i.nh, %reass.add414
  %i.nz = fadd fast <4 x float> %reass.mul411, %i.ng
  %i.oa = fadd fast <4 x float> %i.nz, %reass.mul415
  %.neg407 = fmul fast <4 x float> %i.oa, splat (float -2.000000e+00)
  %i.ob = select fast <4 x i1> %i.ms, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg407
  %i.oc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ob, <4 x float> splat (float f0x42B0C0A5))
  %i.od = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.oe = fmul fast <4 x float> %i.od, splat (float f0x3FB8AA3B)
  %i.of = fadd fast <4 x float> %i.oe, splat (float 5.000000e-01) ; 2 uses
  %i.og = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.of)
  %i.oh = sitofp fast <4 x i32> %i.og to <4 x float> ; 2 uses
  %i.oi = fcmp fast olt <4 x float> %i.of, %i.oh
  %i.oj = select <4 x i1> %i.oi, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ok = fsub fast <4 x float> %i.oh, %i.oj      ; 2 uses
  %i.ol = fmul fast <4 x float> %i.ok, splat (float f0x3F317218)
  %i.om = fsub fast <4 x float> %i.od, %i.ol      ; 8 uses
  %i.on = fmul fast <4 x float> %i.om, %i.om
  %i.oo = fmul fast <4 x float> %i.om, splat (float f0x39506967)
  %i.op = fadd fast <4 x float> %i.oo, splat (float f0x3AB743CE)
  %i.oq = fmul fast <4 x float> %i.op, %i.om
  %i.or = fadd fast <4 x float> %i.oq, splat (float f0x3C088908)
  %i.os = fmul fast <4 x float> %i.or, %i.om
  %i.ot = fadd fast <4 x float> %i.os, splat (float f0x3D2AA9C1)
  %i.ou = fmul fast <4 x float> %i.ot, %i.om
  %i.ov = fadd fast <4 x float> %i.ou, splat (float f0x3E2AAAAA)
  %i.ow = fmul fast <4 x float> %i.ov, %i.om
  %i.ox = fadd fast <4 x float> %i.ow, splat (float 5.000000e-01)
  %i.oy = fmul fast <4 x float> %i.on, %i.ox
  %i.oz = fadd fast <4 x float> %i.om, %i.oy
  %i.pa = fadd fast <4 x float> %i.oz, splat (float 1.000000e+00)
  %i.pb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ok)
  %i.pc = shl <4 x i32> %i.pb, splat (i32 23)
  %i.pd = add <4 x i32> %i.pc, splat (i32 1065353216)
  %i.pe = bitcast <4 x i32> %i.pd to <4 x float>
  %i.pf = fmul fast <4 x float> %i.pa, %i.pe
  %i.pg = fadd fast <4 x float> %i.pf, splat (float 1.000000e+00)
  %i.ph = fdiv fast <4 x float> splat (float 2.000000e+00), %i.pg
  %i.pi = fadd fast <4 x float> %i.ph, splat (float -1.000000e+00)
  %i.pj = fmul fast <4 x float> %i.pi, %.0387
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread404: ; preds = %bb.e
  %i.pk = load ptr, ptr %i.y, align 8, !tbaa !21  ; 2 uses
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !45
  %i.pm = insertelement <4 x float> poison, float %i.pl, i64 0
  %i.pn = shufflevector <4 x float> %i.pm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 4
  %i.pp = load float, ptr %i.po, align 4, !tbaa !45
  %i.pq = insertelement <4 x float> poison, float %i.pp, i64 0
  %i.pr = shufflevector <4 x float> %i.pq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ps = fmul fast <4 x float> %i.pn, %.0388
  %i.pt = fadd fast <4 x float> %i.ps, %i.pr
  %i.pu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pt, <4 x float> zeroinitializer)
  %i.pv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.pu, <4 x float> splat (float 1.000000e+00))
  %i.pw = fmul fast <4 x float> %i.pv, %.0388
  %i.px = fmul fast <4 x float> %i.pn, %.0387
  %i.py = fadd fast <4 x float> %i.px, %i.pr
  %i.pz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.py, <4 x float> zeroinitializer)
  %i.qa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.pz, <4 x float> splat (float 1.000000e+00))
  %i.qb = fmul fast <4 x float> %i.qa, %.0387
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.e, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread404, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread401, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread398, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread395, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread392, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread
  %.0.i110391 = phi <4 x float> [ %i.pw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread404 ], [ %i.ec, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread ], [ %i.el, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread392 ], [ %i.ez, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread395 ], [ %i.gi, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread398 ], [ %i.lm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread401 ], [ %.0388, %bb.e ] ; 2 uses
  %.0.i = phi nsz <4 x float> [ %i.qb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread404 ], [ %i.ed, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread ], [ %i.ep, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread392 ], [ %i.fb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread395 ], [ %i.hp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread398 ], [ %i.pj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread401 ], [ %.0387, %bb.e ] ; 2 uses
  %i.qc = load i8, ptr %10, align 1, !tbaa !85, !range !54, !noundef !55
  %i.qd = trunc nuw i8 %i.qc to i1
  br i1 %i.qd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.qe = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.qf = getelementptr inbounds [4 x i8], ptr %i.qe, i64 %i.ax ; 2 uses
  %i.qg = load <4 x float>, ptr %i.qf, align 1, !tbaa !87
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  %i.qi = load <4 x float>, ptr %i.qh, align 1, !tbaa !87
  %i.qj = fmul fast <4 x float> %i.qg, %.0.i110391 ; 2 uses
  %i.qk = fmul fast <4 x float> %i.qi, %.0.i      ; 2 uses
  %i.ql = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qj)
  %i.qm = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qk)
  %i.qn = fadd fast <4 x float> %i.ql, %i.qj
  %i.qo = fadd fast <4 x float> %i.qm, %i.qk
  %i.qp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qn)
  %i.qq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qo)
  %i.qr = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.qp, <4 x i32> %i.qq)
  %i.qs = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qr, <8 x i16> splat (i16 -127))
  %i.qt = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.qs, <8 x i16> splat (i16 127))
  %i.qu = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.qt, <8 x i16> poison)
  %i.qv = bitcast <16 x i8> %i.qu to <2 x i64>
  %i.qw = extractelement <2 x i64> %i.qv, i64 0
  store i64 %i.qw, ptr %.1421, align 8, !tbaa !351
  %i.qx = getelementptr inbounds nuw i8, ptr %.1421, i64 8
  br label %bb.h

bb.g:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  store <4 x float> %.0.i110391, ptr %.182420, align 1, !tbaa !87
  %i.qy = getelementptr inbounds nuw i8, ptr %.182420, i64 16
  store <4 x float> %.0.i, ptr %i.qy, align 1, !tbaa !87
  %i.qz = getelementptr inbounds nuw i8, ptr %.182420, i64 32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.283 = phi ptr [ %.182420, %bb.f ], [ %i.qz, %bb.g ] ; 2 uses
  %.2 = phi ptr [ %i.qx, %bb.f ], [ %.1421, %bb.g ] ; 2 uses
  %i.ra = add nuw nsw i32 %.085419, 1             ; 2 uses
  %i.rb = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.rc = icmp slt i32 %i.ra, %i.rb
  br i1 %i.rc, label %.lr.ph422, label %._crit_edge423.loopexit, !llvm.loop !347

._crit_edge431:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit91.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge431, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIfSaIfEE9push_backERKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr %1, align 4, !tbaa !45
  store float %i.e, ptr %i.b, align 4, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.f, ptr %i.a, align 8, !tbaa !100
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !95     ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #24
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
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 4 uses
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
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !96
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #23
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i, %bb.f
  store ptr %i.r, ptr %0, align 8, !tbaa !95
  store ptr %i.v, ptr %i.a, align 8, !tbaa !100
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !96
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
  store ptr %i.p, ptr %i.e, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.q = load ptr, ptr %3, align 8, !tbaa !21
  store ptr %i.q, ptr %i.f, align 8, !tbaa !97
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !82
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.s)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL28convdw3x3s1_int8_requant_sseERKNS_3MatERS0_S2_S2_St6vectorIfSaIfEERKNS_6OptionE.omp_outlined, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %i.f, ptr nonnull %4, ptr nonnull %i.e, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
end_hunk_3
