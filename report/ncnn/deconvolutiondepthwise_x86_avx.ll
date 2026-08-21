Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolutiondepthwise_x86_avx?download=true
inline.NumInlined: 74
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4ncnn30DeconvolutionDepthWise_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !74
  %i.h = load i32, ptr %0, align 4, !tbaa !74     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !74
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !74
  %i.k = load i32, ptr %i.a, align 4, !tbaa !74   ; 2 uses
  %.not281 = icmp sgt i32 %i.k, %i.j
  br i1 %.not281, label %._crit_edge283, label %_ZN4ncnn3MatD2Ev.exit68.lr.ph

_ZN4ncnn3MatD2Ev.exit68.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 536
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 268
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 440
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 220
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 288 ; 3 uses
  %i.ab = load i32, ptr %7, align 4, !tbaa !74    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4ncnn3MatD2Ev.exit68.preheader, label %._crit_edge283

_ZN4ncnn3MatD2Ev.exit68.preheader:                ; preds = %_ZN4ncnn3MatD2Ev.exit68.lr.ph
  %i.ad = sext i32 %i.k to i64
  %i.ae = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3MatD2Ev.exit68

_ZN4ncnn3MatD2Ev.exit68:                          ; preds = %_ZN4ncnn3MatD2Ev.exit68.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.af = phi i32 [ %i.ab, %_ZN4ncnn3MatD2Ev.exit68.preheader ], [ %i.bj, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.ag = phi i32 [ %i.ab, %_ZN4ncnn3MatD2Ev.exit68.preheader ], [ %i.bk, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv288 = phi i64 [ %i.ad, %_ZN4ncnn3MatD2Ev.exit68.preheader ], [ %indvars.iv.next289, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.ai = load i32, ptr %5, align 4, !tbaa !74
  %i.aj = trunc nsw i64 %indvars.iv288 to i32
  %i.ak = shl i32 %i.aj, 3
  %i.al = mul i32 %i.ak, %i.ai
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.am
  %i.ao = load ptr, ptr %6, align 8, !tbaa !18, !noalias !135
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !135
  %i.aq = mul i64 %i.ap, %indvars.iv288
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !72, !noalias !135 ; 2 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.as
  %i.au = icmp sgt i32 %i.ag, 0
  br i1 %i.au, label %.preheader265.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader265.lr.ph:                              ; preds = %_ZN4ncnn3MatD2Ev.exit68
  %i.av = load i32, ptr %i.o, align 4, !tbaa !82, !noalias !135
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.ar, %i.aw
  %i.ay = load i32, ptr %8, align 4, !tbaa !74    ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader265.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader265.preheader:                          ; preds = %.preheader265.lr.ph
  %i.ba = load ptr, ptr %3, align 8, !tbaa !18, !noalias !138
  %i.bb = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !138
  %i.bc = mul i64 %i.bb, %indvars.iv288
  %i.bd = load i64, ptr %i.m, align 8, !tbaa !72, !noalias !138
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be
  %.idx = shl nsw i64 %indvars.iv288, 5
  br label %.preheader265

.preheader265:                                    ; preds = %.preheader265.preheader, %._crit_edge277
  %i.bg = phi i32 [ %i.bl, %._crit_edge277 ], [ %i.af, %.preheader265.preheader ]
  %i.bh = phi i32 [ %i.bm, %._crit_edge277 ], [ %i.ay, %.preheader265.preheader ] ; 2 uses
  %.056280 = phi i32 [ %.neg262.a, %._crit_edge277 ], [ 0, %.preheader265.preheader ]
  %.057279 = phi ptr [ %.1.lcssa, %._crit_edge277 ], [ %i.bf, %.preheader265.preheader ] ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  %.neg262.a = add nuw nsw i32 %.056280, 1        ; 3 uses
  br i1 %i.bi, label %.lr.ph276, label %._crit_edge277

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge277, %.preheader265.lr.ph, %_ZN4ncnn3MatD2Ev.exit68
  %i.bj = phi i32 [ %i.af, %_ZN4ncnn3MatD2Ev.exit68 ], [ %i.af, %.preheader265.lr.ph ], [ %i.bl, %._crit_edge277 ]
  %i.bk = phi i32 [ %i.ag, %_ZN4ncnn3MatD2Ev.exit68 ], [ %i.ag, %.preheader265.lr.ph ], [ %i.bl, %._crit_edge277 ]
  %indvars.iv.next289 = add nsw i64 %indvars.iv288, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next289 to i32
  %exitcond291.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond291.not, label %._crit_edge283, label %_ZN4ncnn3MatD2Ev.exit68, !llvm.loop !141

._crit_edge277.loopexit:                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %.pre = load i32, ptr %7, align 4, !tbaa !74
  br label %._crit_edge277

._crit_edge277:                                   ; preds = %.preheader265, %._crit_edge277.loopexit
  %i.bl = phi i32 [ %.pre, %._crit_edge277.loopexit ], [ %i.bg, %.preheader265 ] ; 4 uses
  %i.bm = phi i32 [ %i.jp, %._crit_edge277.loopexit ], [ %i.bh, %.preheader265 ]
  %.1.lcssa = phi ptr [ %i.jn, %._crit_edge277.loopexit ], [ %.057279, %.preheader265 ]
  %i.bn = icmp slt i32 %.neg262.a, %i.bl
  br i1 %i.bn, label %.preheader265, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !143

.lr.ph276:                                        ; preds = %.preheader265, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %.055275 = phi i32 [ %i.jo, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ 0, %.preheader265 ] ; 2 uses
  %.1274 = phi ptr [ %i.jn, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %.057279, %.preheader265 ] ; 2 uses
  %i.bo = load i32, ptr %i.r, align 4, !tbaa !86
  %.not63 = icmp eq i32 %i.bo, 0
  br i1 %.not63, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph276
  %i.bp = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %.idx
  %i.br = load <8 x float>, ptr %i.bq, align 1, !tbaa !116
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph276
  %.0256 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph276 ], [ %i.br, %bb.c ] ; 2 uses
  %i.bs = load i32, ptr %i.t, align 8, !tbaa !44  ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph270, label %._crit_edge

.lr.ph270:                                        ; preds = %bb.d
  %i.bu = load i32, ptr %i.u, align 8, !tbaa !101
  %i.bv = load i32, ptr %9, align 4, !tbaa !74
  %invariant.op272 = sub i32 %.neg262.a, %i.bv
  %.neg264 = add nuw nsw i32 %.055275, 1
  br label %bb.f

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %.1257.lcssa = phi <8 x float> [ %.0256, %bb.d ], [ %.4, %.loopexit ] ; 10 uses
  %i.bw = load i32, ptr %i.z, align 8, !tbaa !112
  switch i32 %i.bw, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.e
    i32 2, label %.noexc76
    i32 3, label %.noexc78
    i32 4, label %.noexc79
    i32 5, label %.noexc80
    i32 6, label %.noexc83
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.bx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.1257.lcssa, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc76:                                         ; preds = %._crit_edge
  %i.by = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.bz = load float, ptr %i.by, align 4, !tbaa !53
  %i.ca = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.1257.lcssa)
  %i.cb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.1257.lcssa)
  %i.cc = insertelement <8 x float> poison, float %i.bz, i64 0
  %i.cd = shufflevector <8 x float> %i.cc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ce = fmul fast <8 x float> %i.cd, %i.cb
  %i.cf = fadd fast <8 x float> %i.ce, %i.ca
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc78:                                         ; preds = %._crit_edge
  %i.cg = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !53
  %i.ci = insertelement <8 x float> poison, float %i.ch, i64 0
  %i.cj = shufflevector <8 x float> %i.ci, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !53
  %i.cm = insertelement <8 x float> poison, float %i.cl, i64 0
  %i.cn = shufflevector <8 x float> %i.cm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.co = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.1257.lcssa, <8 x float> nofpclass(nan inf) %i.cj)
  %i.cp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.co, <8 x float> nofpclass(nan inf) %i.cn)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc79:                                         ; preds = %._crit_edge
  %i.cq = fneg fast <8 x float> %.1257.lcssa
  %i.cr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cq, <8 x float> splat (float f0x42B0C0A5))
  %i.cs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cr, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ct = fmul fast <8 x float> %i.cs, splat (float f0x3FB8AA3B)
  %i.cu = fadd fast <8 x float> %i.ct, splat (float 5.000000e-01) ; 2 uses
  %i.cv = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cu, i32 1) ; 2 uses
  %i.cw = fcmp fast ogt <8 x float> %i.cv, %i.cu
  %i.cx = select <8 x i1> %i.cw, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cy = fsub fast <8 x float> %i.cv, %i.cx      ; 2 uses
  %i.cz = fmul fast <8 x float> %i.cy, splat (float f0x3F317218)
  %i.da = fsub fast <8 x float> %i.cs, %i.cz      ; 8 uses
  %i.db = fmul fast <8 x float> %i.da, %i.da
  %i.dc = fmul fast <8 x float> %i.da, splat (float f0x39506967)
  %i.dd = fadd fast <8 x float> %i.dc, splat (float f0x3AB743CE)
  %i.de = fmul fast <8 x float> %i.dd, %i.da
  %i.df = fadd fast <8 x float> %i.de, splat (float f0x3C088908)
  %i.dg = fmul fast <8 x float> %i.df, %i.da
  %i.dh = fadd fast <8 x float> %i.dg, splat (float f0x3D2AA9C1)
  %i.di = fmul fast <8 x float> %i.dh, %i.da
  %i.dj = fadd fast <8 x float> %i.di, splat (float f0x3E2AAAAA)
  %i.dk = fmul fast <8 x float> %i.dj, %i.da
  %i.dl = fadd fast <8 x float> %i.dk, splat (float 5.000000e-01)
  %i.dm = fmul fast <8 x float> %i.db, %i.dl
  %i.dn = fadd fast <8 x float> %i.da, %i.dm
  %i.do = fadd fast <8 x float> %i.dn, splat (float 1.000000e+00)
  %i.dp = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cy)
  %i.dq = shl <8 x i32> %i.dp, splat (i32 23)
  %i.dr = add <8 x i32> %i.dq, splat (i32 1065353216)
  %i.ds = bitcast <8 x i32> %i.dr to <8 x float>
  %i.dt = fmul fast <8 x float> %i.do, %i.ds
  %i.du = fadd fast <8 x float> %i.dt, splat (float 1.000000e+00)
  %i.dv = fdiv fast <8 x float> splat (float 1.000000e+00), %i.du
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc80:                                         ; preds = %._crit_edge
  %i.dw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.1257.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.dx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dw, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dy = fmul fast <8 x float> %i.dx, splat (float f0x3FB8AA3B)
  %i.dz = fadd fast <8 x float> %i.dy, splat (float 5.000000e-01) ; 2 uses
  %i.ea = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dz, i32 1) ; 2 uses
  %i.eb = fcmp fast ogt <8 x float> %i.ea, %i.dz
  %i.ec = select <8 x i1> %i.eb, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ed = fsub fast <8 x float> %i.ea, %i.ec      ; 2 uses
  %i.ee = fmul fast <8 x float> %i.ed, splat (float f0x3F317218)
  %i.ef = fsub fast <8 x float> %i.dx, %i.ee      ; 8 uses
  %i.eg = fmul fast <8 x float> %i.ef, %i.ef
  %i.eh = fmul fast <8 x float> %i.ef, splat (float f0x39506967)
  %i.ei = fadd fast <8 x float> %i.eh, splat (float f0x3AB743CE)
  %i.ej = fmul fast <8 x float> %i.ei, %i.ef
  %i.ek = fadd fast <8 x float> %i.ej, splat (float f0x3C088908)
  %i.el = fmul fast <8 x float> %i.ek, %i.ef
  %i.em = fadd fast <8 x float> %i.el, splat (float f0x3D2AA9C1)
  %i.en = fmul fast <8 x float> %i.em, %i.ef
  %i.eo = fadd fast <8 x float> %i.en, splat (float f0x3E2AAAAA)
  %i.ep = fmul fast <8 x float> %i.eo, %i.ef
  %i.eq = fadd fast <8 x float> %i.ep, splat (float 5.000000e-01)
  %i.er = fmul fast <8 x float> %i.eg, %i.eq
  %i.es = fadd fast <8 x float> %i.ef, %i.er
  %i.et = fadd fast <8 x float> %i.es, splat (float 1.000000e+00)
  %i.eu = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ed)
  %i.ev = shl <8 x i32> %i.eu, splat (i32 23)
  %i.ew = add <8 x i32> %i.ev, splat (i32 1065353216)
  %i.ex = bitcast <8 x i32> %i.ew to <8 x float>
  %i.ey = fmul fast <8 x float> %i.et, %i.ex
  %i.ez = fadd fast <8 x float> %i.ey, splat (float 1.000000e+00) ; 2 uses
  %i.fa = fcmp fast ole <8 x float> %i.ez, zeroinitializer
  %i.fb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ez, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.fc = bitcast <8 x float> %i.fb to <8 x i32>
  %i.fd = bitcast <8 x float> %i.fb to <8 x i32>
  %i.fe = and <8 x i32> %i.fd, splat (i32 -2139095041)
  %i.ff = or disjoint <8 x i32> %i.fe, splat (i32 1056964608)
  %i.fg = bitcast <8 x i32> %i.ff to <8 x float>  ; 3 uses
  %i.fh = lshr <8 x i32> %i.fc, splat (i32 23)
  %i.fi = add nsw <8 x i32> %i.fh, splat (i32 -127)
  %i.fj = sitofp fast <8 x i32> %i.fi to <8 x float> ; 2 uses
  %i.fk = fadd fast <8 x float> %i.fj, splat (float 1.000000e+00)
  %i.fl = fcmp fast olt <8 x float> %i.fg, splat (float f0x3F3504F3) ; 2 uses
  %i.fm = select <8 x i1> %i.fl, <8 x float> %i.fg, <8 x float> zeroinitializer
  %i.fn = fadd fast <8 x float> %i.fg, splat (float -1.000000e+00)
  %i.fo = select fast <8 x i1> %i.fl, <8 x float> %i.fj, <8 x float> %i.fk
  %i.fp = fadd fast <8 x float> %i.fn, %i.fm      ; 12 uses
  %i.fq = fmul fast <8 x float> %i.fp, %i.fp      ; 2 uses
  %i.fr = fmul fast <8 x float> %i.fp, splat (float f0x3D9021BB)
  %i.fs = fadd fast <8 x float> %i.fr, splat (float f0xBDEBD1B8)
  %i.ft = fmul fast <8 x float> %i.fs, %i.fp
  %i.fu = fadd fast <8 x float> %i.ft, splat (float f0x3DEF251A)
  %i.fv = fmul fast <8 x float> %i.fu, %i.fp
  %i.fw = fadd fast <8 x float> %i.fv, splat (float f0xBDFE5D4F)
  %i.fx = fmul fast <8 x float> %i.fw, %i.fp
  %i.fy = fadd fast <8 x float> %i.fx, splat (float f0x3E11E9BF)
  %i.fz = fmul fast <8 x float> %i.fy, %i.fp
  %i.ga = fadd fast <8 x float> %i.fz, splat (float f0xBE2AAE50)
  %i.gb = fmul fast <8 x float> %i.ga, %i.fp
  %i.gc = fadd fast <8 x float> %i.gb, splat (float f0x3E4CCEAC)
  %i.gd = fmul fast <8 x float> %i.gc, %i.fp
  %i.ge = fadd fast <8 x float> %i.gd, splat (float f0xBE7FFFFC)
  %i.gf = fmul fast <8 x float> %i.ge, %i.fp
  %i.gg = fadd fast <8 x float> %i.gf, splat (float f0x3EAAAAAA)
  %i.gh = fmul fast <8 x float> %i.fq, %i.fp
  %reass.mul.a = fmul fast <8 x float> %i.gh, %i.gg
  %.neg258 = fmul fast <8 x float> %i.fq, splat (float -5.000000e-01)
  %reass.mul260 = fmul fast <8 x float> %i.fo, splat (float f0x3F317218)
  %13 = fadd fast <8 x float> %i.fp, %.neg258
  %i.gi = fadd fast <8 x float> %reass.mul.a, %13
  %i.gj = fadd fast <8 x float> %i.gi, %reass.mul260
  %.neg = fmul fast <8 x float> %i.gj, splat (float -2.000000e+00)
  %i.gk = select fast <8 x i1> %i.fa, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.gl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gk, <8 x float> splat (float f0x42B0C0A5))
  %i.gm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gl, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gn = fmul fast <8 x float> %i.gm, splat (float f0x3FB8AA3B)
  %i.go = fadd fast <8 x float> %i.gn, splat (float 5.000000e-01) ; 2 uses
  %i.gp = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.go, i32 1) ; 2 uses
  %i.gq = fcmp fast ogt <8 x float> %i.gp, %i.go
  %i.gr = select <8 x i1> %i.gq, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.gs = fsub fast <8 x float> %i.gp, %i.gr      ; 2 uses
  %i.gt = fmul fast <8 x float> %i.gs, splat (float f0x3F317218)
  %i.gu = fsub fast <8 x float> %i.gm, %i.gt      ; 8 uses
  %i.gv = fmul fast <8 x float> %i.gu, %i.gu
  %i.gw = fmul fast <8 x float> %i.gu, splat (float f0x39506967)
  %i.gx = fadd fast <8 x float> %i.gw, splat (float f0x3AB743CE)
  %i.gy = fmul fast <8 x float> %i.gx, %i.gu
  %i.gz = fadd fast <8 x float> %i.gy, splat (float f0x3C088908)
  %i.ha = fmul fast <8 x float> %i.gz, %i.gu
  %i.hb = fadd fast <8 x float> %i.ha, splat (float f0x3D2AA9C1)
  %i.hc = fmul fast <8 x float> %i.hb, %i.gu
  %i.hd = fadd fast <8 x float> %i.hc, splat (float f0x3E2AAAAA)
  %i.he = fmul fast <8 x float> %i.hd, %i.gu
  %i.hf = fadd fast <8 x float> %i.he, splat (float 5.000000e-01)
  %i.hg = fmul fast <8 x float> %i.gv, %i.hf
  %i.hh = fadd fast <8 x float> %i.gu, %i.hg
  %i.hi = fadd fast <8 x float> %i.hh, splat (float 1.000000e+00)
  %i.hj = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gs)
  %i.hk = shl <8 x i32> %i.hj, splat (i32 23)
  %i.hl = add <8 x i32> %i.hk, splat (i32 1065353216)
  %i.hm = bitcast <8 x i32> %i.hl to <8 x float>
  %i.hn = fmul fast <8 x float> %i.hi, %i.hm
  %i.ho = fadd fast <8 x float> %i.hn, splat (float 1.000000e+00)
  %i.hp = fdiv fast <8 x float> splat (float 2.000000e+00), %i.ho
  %i.hq = fadd fast <8 x float> %i.hp, splat (float -1.000000e+00)
  %i.hr = fmul fast <8 x float> %i.hq, %.1257.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc83:                                         ; preds = %._crit_edge
  %i.hs = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !53
  %i.hu = insertelement <8 x float> poison, float %i.ht, i64 0
  %i.hv = shufflevector <8 x float> %i.hu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !53
  %i.hy = insertelement <8 x float> poison, float %i.hx, i64 0
  %i.hz = shufflevector <8 x float> %i.hy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ia = fmul fast <8 x float> %i.hv, %.1257.lcssa
  %i.ib = fadd fast <8 x float> %i.ia, %i.hz
  %i.ic = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ib, <8 x float> zeroinitializer)
  %i.id = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ic, <8 x float> splat (float 1.000000e+00))
  %i.ie = fmul fast <8 x float> %i.id, %.1257.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %.lr.ph270, %.loopexit
  %.054269 = phi i32 [ 0, %.lr.ph270 ], [ %i.jm, %.loopexit ] ; 3 uses
  %.1257268 = phi <8 x float> [ %.0256, %.lr.ph270 ], [ %.4, %.loopexit ] ; 5 uses
  %i.if = mul nsw i32 %i.bu, %.054269
  %.reass273 = add i32 %i.if, %invariant.op272    ; 3 uses
  %i.ig = icmp slt i32 %.reass273, 0
  br i1 %i.ig, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ih = load i32, ptr %i.v, align 8, !tbaa !103 ; 2 uses
  %i.ii = srem i32 %.reass273, %i.ih
  %i.ij = sdiv i32 %.reass273, %i.ih              ; 2 uses
  %.not64 = icmp eq i32 %i.ii, 0
  br i1 %.not64, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ik = load i32, ptr %10, align 4, !tbaa !74
  %.not65 = icmp slt i32 %i.ij, %i.ik
  br i1 %.not65, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.h
  %i.il = load i32, ptr %i.w, align 4, !tbaa !43  ; 3 uses
  %i.im = icmp sgt i32 %i.il, 0
  br i1 %i.im, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.in = load i32, ptr %i.x, align 4, !tbaa !100
  %i.io = load i32, ptr %11, align 4, !tbaa !74
  %invariant.op = sub i32 %.neg264, %i.io
  %i.ip = sext i32 %i.ij to i64
  %i.iq = mul i64 %i.ax, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.iq
  %i.is = mul nuw nsw i32 %i.il, %.054269
  %wide.trip.count = zext nneg i32 %i.il to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.2266 = phi <8 x float> [ %.1257268, %.lr.ph ], [ %.3, %bb.m ] ; 4 uses
  %i.it = trunc i64 %indvars.iv to i32
  %i.iu = mul i32 %i.in, %i.it
  %.reass = add i32 %i.iu, %invariant.op          ; 3 uses
  %i.iv = icmp slt i32 %.reass, 0
  br i1 %i.iv, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.iw = load i32, ptr %i.y, align 4, !tbaa !102 ; 2 uses
  %i.ix = srem i32 %.reass, %i.iw
  %i.iy = sdiv i32 %.reass, %i.iw                 ; 2 uses
  %.not66 = icmp eq i32 %i.ix, 0
  br i1 %.not66, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.iz = load i32, ptr %12, align 4, !tbaa !74
  %.not67 = icmp slt i32 %i.iy, %i.iz
  br i1 %.not67, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ja = shl nsw i32 %i.iy, 3
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.ir, i64 %i.jb
  %i.jd = load <8 x float>, ptr %i.jc, align 1, !tbaa !116
  %i.je = trunc i64 %indvars.iv to i32
  %i.jf = add i32 %i.is, %i.je
  %i.jg = shl nsw i32 %i.jf, 3
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.jh
  %i.jj = load <8 x float>, ptr %i.ji, align 1, !tbaa !116
  %i.jk = fmul fast <8 x float> %i.jj, %i.jd
  %i.jl = fadd fast <8 x float> %i.jk, %.2266
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.j
  %.3 = phi nsz <8 x float> [ %.2266, %bb.i ], [ %i.jl, %bb.l ], [ %.2266, %bb.k ], [ %.2266, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !144

.loopexit:                                        ; preds = %bb.m, %.preheader, %bb.h, %bb.f, %bb.g
  %.4 = phi nsz <8 x float> [ %.1257268, %bb.f ], [ %.1257268, %bb.g ], [ %.1257268, %bb.h ], [ %.1257268, %.preheader ], [ %.3, %bb.m ] ; 2 uses
  %i.jm = add nuw nsw i32 %.054269, 1             ; 2 uses
  %exitcond287.not = icmp eq i32 %i.jm, %i.bs
  br i1 %exitcond287.not, label %._crit_edge, label %bb.f, !llvm.loop !145

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc83, %.noexc80, %.noexc79, %.noexc78, %.noexc76, %bb.e, %._crit_edge
  %.0.i = phi nsz <8 x float> [ %i.ie, %.noexc83 ], [ %i.bx, %bb.e ], [ %i.cf, %.noexc76 ], [ %i.cp, %.noexc78 ], [ %i.dv, %.noexc79 ], [ %i.hr, %.noexc80 ], [ %.1257.lcssa, %._crit_edge ]
  store <8 x float> %.0.i, ptr %.1274, align 1, !tbaa !116
  %i.jn = getelementptr inbounds nuw i8, ptr %.1274, i64 32 ; 2 uses
  %i.jo = add nuw nsw i32 %.055275, 1             ; 2 uses
  %i.jp = load i32, ptr %8, align 4, !tbaa !74    ; 2 uses
  %i.jq = icmp slt i32 %i.jo, %i.jp
  br i1 %i.jq, label %.lr.ph276, label %._crit_edge277.loopexit, !llvm.loop !146

._crit_edge283:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit68.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge283, %bb.a
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
declare !callback !147 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #12

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn30DeconvolutionDepthWise_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !74     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !74
  %i.h = load i32, ptr %0, align 4, !tbaa !74     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !74
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !74
  %i.k = load i32, ptr %i.a, align 4, !tbaa !74   ; 2 uses
  %.not235 = icmp sgt i32 %i.k, %i.j
  br i1 %.not235, label %._crit_edge237, label %_ZN4ncnn3MatD2Ev.exit68.lr.ph

_ZN4ncnn3MatD2Ev.exit68.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 536
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 268
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 440
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 220
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 288 ; 3 uses
  %i.ab = load i32, ptr %7, align 4, !tbaa !74    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4ncnn3MatD2Ev.exit68.preheader, label %._crit_edge237

_ZN4ncnn3MatD2Ev.exit68.preheader:                ; preds = %_ZN4ncnn3MatD2Ev.exit68.lr.ph
  %i.ad = sext i32 %i.k to i64
  %i.ae = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3MatD2Ev.exit68

_ZN4ncnn3MatD2Ev.exit68:                          ; preds = %_ZN4ncnn3MatD2Ev.exit68.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.af = phi i32 [ %i.ab, %_ZN4ncnn3MatD2Ev.exit68.preheader ], [ %i.bj, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.ag = phi i32 [ %i.ab, %_ZN4ncnn3MatD2Ev.exit68.preheader ], [ %i.bk, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv242 = phi i64 [ %i.ad, %_ZN4ncnn3MatD2Ev.exit68.preheader ], [ %indvars.iv.next243, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.ai = load i32, ptr %5, align 4, !tbaa !74
  %i.aj = trunc nsw i64 %indvars.iv242 to i32
  %i.ak = shl i32 %i.aj, 2
  %i.al = mul i32 %i.ak, %i.ai
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.am
  %i.ao = load ptr, ptr %6, align 8, !tbaa !18, !noalias !149
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !149
  %i.aq = mul i64 %i.ap, %indvars.iv242
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !72, !noalias !149 ; 2 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.as
  %i.au = icmp sgt i32 %i.ag, 0
  br i1 %i.au, label %.preheader219.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader219.lr.ph:                              ; preds = %_ZN4ncnn3MatD2Ev.exit68
  %i.av = load i32, ptr %i.o, align 4, !tbaa !82, !noalias !149
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.ar, %i.aw
  %i.ay = load i32, ptr %8, align 4, !tbaa !74    ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader219.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader219.preheader:                          ; preds = %.preheader219.lr.ph
  %i.ba = load ptr, ptr %3, align 8, !tbaa !18, !noalias !152
  %i.bb = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !152
  %i.bc = mul i64 %i.bb, %indvars.iv242
  %i.bd = load i64, ptr %i.m, align 8, !tbaa !72, !noalias !152
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be
  %.idx = shl nsw i64 %indvars.iv242, 4
  br label %.preheader219

.preheader219:                                    ; preds = %.preheader219.preheader, %._crit_edge231
  %i.bg = phi i32 [ %i.bl, %._crit_edge231 ], [ %i.af, %.preheader219.preheader ]
  %i.bh = phi i32 [ %i.bm, %._crit_edge231 ], [ %i.ay, %.preheader219.preheader ] ; 2 uses
  %.056234 = phi i32 [ %.neg216.a, %._crit_edge231 ], [ 0, %.preheader219.preheader ]
  %.057233 = phi ptr [ %.1.lcssa, %._crit_edge231 ], [ %i.bf, %.preheader219.preheader ] ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  %.neg216.a = add nuw nsw i32 %.056234, 1        ; 3 uses
  br i1 %i.bi, label %.lr.ph230, label %._crit_edge231

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge231, %.preheader219.lr.ph, %_ZN4ncnn3MatD2Ev.exit68
  %i.bj = phi i32 [ %i.af, %_ZN4ncnn3MatD2Ev.exit68 ], [ %i.af, %.preheader219.lr.ph ], [ %i.bl, %._crit_edge231 ]
  %i.bk = phi i32 [ %i.ag, %_ZN4ncnn3MatD2Ev.exit68 ], [ %i.ag, %.preheader219.lr.ph ], [ %i.bl, %._crit_edge231 ]
  %indvars.iv.next243 = add nsw i64 %indvars.iv242, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next243 to i32
  %exitcond245.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond245.not, label %._crit_edge237, label %_ZN4ncnn3MatD2Ev.exit68, !llvm.loop !155

._crit_edge231.loopexit:                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.pre = load i32, ptr %7, align 4, !tbaa !74
  br label %._crit_edge231

._crit_edge231:                                   ; preds = %.preheader219, %._crit_edge231.loopexit
  %i.bl = phi i32 [ %.pre, %._crit_edge231.loopexit ], [ %i.bg, %.preheader219 ] ; 4 uses
  %i.bm = phi i32 [ %i.jr, %._crit_edge231.loopexit ], [ %i.bh, %.preheader219 ]
  %.1.lcssa = phi ptr [ %i.jp, %._crit_edge231.loopexit ], [ %.057233, %.preheader219 ]
  %i.bn = icmp slt i32 %.neg216.a, %i.bl
  br i1 %i.bn, label %.preheader219, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !156

.lr.ph230:                                        ; preds = %.preheader219, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.055229 = phi i32 [ %i.jq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ 0, %.preheader219 ] ; 2 uses
  %.1228 = phi ptr [ %i.jp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.057233, %.preheader219 ] ; 2 uses
  %i.bo = load i32, ptr %i.r, align 4, !tbaa !86
  %.not63 = icmp eq i32 %i.bo, 0
  br i1 %.not63, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph230
  %i.bp = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %.idx
  %i.br = load <4 x float>, ptr %i.bq, align 1, !tbaa !116
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph230
  %.0210 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph230 ], [ %i.br, %bb.c ] ; 2 uses
  %i.bs = load i32, ptr %i.t, align 8, !tbaa !44  ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph224, label %._crit_edge

.lr.ph224:                                        ; preds = %bb.d
  %i.bu = load i32, ptr %i.u, align 8, !tbaa !101
  %i.bv = load i32, ptr %9, align 4, !tbaa !74
  %invariant.op226 = sub i32 %.neg216.a, %i.bv
  %.neg218 = add nuw nsw i32 %.055229, 1
  br label %bb.h

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %.1211.lcssa = phi <4 x float> [ %.0210, %bb.d ], [ %.4, %.loopexit ] ; 10 uses
  %i.bw = load i32, ptr %i.z, align 8, !tbaa !112
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
  %i.fr = fmul fast <4 x float> %i.fq, %i.fq      ; 2 uses
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
  %i.gi = fmul fast <4 x float> %i.fr, %i.fq
  %reass.mul.a = fmul fast <4 x float> %i.gi, %i.gh
  %.neg212 = fmul fast <4 x float> %i.fr, splat (float -5.000000e-01)
  %reass.mul214 = fmul fast <4 x float> %i.fp, splat (float f0x3F317218)
  %13 = fadd fast <4 x float> %i.fq, %.neg212
  %i.gj = fadd fast <4 x float> %reass.mul.a, %13
  %i.gk = fadd fast <4 x float> %i.gj, %reass.mul214
  %.neg = fmul fast <4 x float> %i.gk, splat (float -2.000000e+00)
  %i.gl = select fast <4 x i1> %i.fc, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.gm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gl, <4 x float> splat (float f0x42B0C0A5))
  %i.gn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gm, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.go = fmul fast <4 x float> %i.gn, splat (float f0x3FB8AA3B)
  %i.gp = fadd fast <4 x float> %i.go, splat (float 5.000000e-01) ; 2 uses
  %i.gq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gp)
  %i.gr = sitofp fast <4 x i32> %i.gq to <4 x float> ; 2 uses
  %i.gs = fcmp fast olt <4 x float> %i.gp, %i.gr
  %i.gt = select <4 x i1> %i.gs, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gu = fsub fast <4 x float> %i.gr, %i.gt      ; 2 uses
  %i.gv = fmul fast <4 x float> %i.gu, splat (float f0x3F317218)
  %i.gw = fsub fast <4 x float> %i.gn, %i.gv      ; 8 uses
  %i.gx = fmul fast <4 x float> %i.gw, %i.gw
  %i.gy = fmul fast <4 x float> %i.gw, splat (float f0x39506967)
  %i.gz = fadd fast <4 x float> %i.gy, splat (float f0x3AB743CE)
  %i.ha = fmul fast <4 x float> %i.gz, %i.gw
  %i.hb = fadd fast <4 x float> %i.ha, splat (float f0x3C088908)
  %i.hc = fmul fast <4 x float> %i.hb, %i.gw
  %i.hd = fadd fast <4 x float> %i.hc, splat (float f0x3D2AA9C1)
  %i.he = fmul fast <4 x float> %i.hd, %i.gw
  %i.hf = fadd fast <4 x float> %i.he, splat (float f0x3E2AAAAA)
  %i.hg = fmul fast <4 x float> %i.hf, %i.gw
  %i.hh = fadd fast <4 x float> %i.hg, splat (float 5.000000e-01)
  %i.hi = fmul fast <4 x float> %i.gx, %i.hh
  %i.hj = fadd fast <4 x float> %i.gw, %i.hi
  %i.hk = fadd fast <4 x float> %i.hj, splat (float 1.000000e+00)
  %i.hl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gu)
  %i.hm = shl <4 x i32> %i.hl, splat (i32 23)
  %i.hn = add <4 x i32> %i.hm, splat (i32 1065353216)
  %i.ho = bitcast <4 x i32> %i.hn to <4 x float>
  %i.hp = fmul fast <4 x float> %i.hk, %i.ho
  %i.hq = fadd fast <4 x float> %i.hp, splat (float 1.000000e+00)
  %i.hr = fdiv fast <4 x float> splat (float 2.000000e+00), %i.hq
  %i.hs = fadd fast <4 x float> %i.hr, splat (float -1.000000e+00)
  %i.ht = fmul fast <4 x float> %i.hs, %.1211.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.hu = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !53
  %i.hw = insertelement <4 x float> poison, float %i.hv, i64 0
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !53
  %i.ia = insertelement <4 x float> poison, float %i.hz, i64 0
  %i.ib = shufflevector <4 x float> %i.ia, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ic = fmul fast <4 x float> %i.hx, %.1211.lcssa
  %i.id = fadd fast <4 x float> %i.ic, %i.ib
  %i.ie = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.id, <4 x float> zeroinitializer)
  %i.if = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ie, <4 x float> splat (float 1.000000e+00))
  %i.ig = fmul fast <4 x float> %i.if, %.1211.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %.lr.ph224, %.loopexit
  %.054223 = phi i32 [ 0, %.lr.ph224 ], [ %i.jo, %.loopexit ] ; 3 uses
  %.1211222 = phi <4 x float> [ %.0210, %.lr.ph224 ], [ %.4, %.loopexit ] ; 5 uses
  %i.ih = mul nsw i32 %i.bu, %.054223
  %.reass227 = add i32 %i.ih, %invariant.op226    ; 3 uses
  %i.ii = icmp slt i32 %.reass227, 0
  br i1 %i.ii, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ij = load i32, ptr %i.v, align 8, !tbaa !103 ; 2 uses
  %i.ik = srem i32 %.reass227, %i.ij
  %i.il = sdiv i32 %.reass227, %i.ij              ; 2 uses
  %.not64 = icmp eq i32 %i.ik, 0
  br i1 %.not64, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.im = load i32, ptr %10, align 4, !tbaa !74
  %.not65 = icmp slt i32 %i.il, %i.im
  br i1 %.not65, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.j
  %i.in = load i32, ptr %i.w, align 4, !tbaa !43  ; 3 uses
  %i.io = icmp sgt i32 %i.in, 0
  br i1 %i.io, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.ip = load i32, ptr %i.x, align 4, !tbaa !100
  %i.iq = load i32, ptr %11, align 4, !tbaa !74
  %invariant.op = sub i32 %.neg218, %i.iq
  %i.ir = sext i32 %i.il to i64
  %i.is = mul i64 %i.ax, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.is
  %i.iu = mul nuw nsw i32 %i.in, %.054223
  %wide.trip.count = zext nneg i32 %i.in to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.2220 = phi <4 x float> [ %.1211222, %.lr.ph ], [ %.3, %bb.o ] ; 4 uses
  %i.iv = trunc i64 %indvars.iv to i32
  %i.iw = mul i32 %i.ip, %i.iv
  %.reass = add i32 %i.iw, %invariant.op          ; 3 uses
  %i.ix = icmp slt i32 %.reass, 0
  br i1 %i.ix, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.iy = load i32, ptr %i.y, align 4, !tbaa !102 ; 2 uses
  %i.iz = srem i32 %.reass, %i.iy
  %i.ja = sdiv i32 %.reass, %i.iy                 ; 2 uses
  %.not66 = icmp eq i32 %i.iz, 0
  br i1 %.not66, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.jb = load i32, ptr %12, align 4, !tbaa !74
  %.not67 = icmp slt i32 %i.ja, %i.jb
  br i1 %.not67, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.jc = shl nsw i32 %i.ja, 2
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.jd
  %i.jf = load <4 x float>, ptr %i.je, align 1, !tbaa !116
  %i.jg = trunc i64 %indvars.iv to i32
  %i.jh = add i32 %i.iu, %i.jg
  %i.ji = shl nsw i32 %i.jh, 2
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.jj
  %i.jl = load <4 x float>, ptr %i.jk, align 1, !tbaa !116
  %i.jm = fmul fast <4 x float> %i.jl, %i.jf
  %i.jn = fadd fast <4 x float> %i.jm, %.2220
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.l
  %.3 = phi nsz <4 x float> [ %.2220, %bb.k ], [ %i.jn, %bb.n ], [ %.2220, %bb.m ], [ %.2220, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !157

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.j, %bb.h, %bb.i
  %.4 = phi nsz <4 x float> [ %.1211222, %bb.h ], [ %.1211222, %bb.i ], [ %.1211222, %bb.j ], [ %.1211222, %.preheader ], [ %.3, %bb.o ] ; 2 uses
  %i.jo = add nuw nsw i32 %.054223, 1             ; 2 uses
  %exitcond241.not = icmp eq i32 %i.jo, %i.bs
  br i1 %exitcond241.not, label %._crit_edge, label %bb.h, !llvm.loop !158

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.g, %.noexc78, %.noexc77, %bb.f, %.noexc76, %bb.e, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.ig, %bb.g ], [ %i.bx, %bb.e ], [ %i.cf, %.noexc76 ], [ %i.cp, %bb.f ], [ %i.dw, %.noexc77 ], [ %i.ht, %.noexc78 ], [ %.1211.lcssa, %._crit_edge ]
  store <4 x float> %.0.i, ptr %.1228, align 1, !tbaa !116
  %i.jp = getelementptr inbounds nuw i8, ptr %.1228, i64 16 ; 2 uses
  %i.jq = add nuw nsw i32 %.055229, 1             ; 2 uses
  %i.jr = load i32, ptr %8, align 4, !tbaa !74    ; 2 uses
  %i.js = icmp slt i32 %i.jq, %i.jr
  br i1 %i.js, label %.lr.ph230, label %._crit_edge231.loopexit, !llvm.loop !159

._crit_edge237:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit68.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge237, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn30DeconvolutionDepthWise_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !74     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !74
  %i.h = load i32, ptr %0, align 4, !tbaa !74     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !74
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !74
  %i.k = load i32, ptr %i.a, align 4, !tbaa !74   ; 2 uses
  %.not132 = icmp sgt i32 %i.k, %i.j
  br i1 %.not132, label %._crit_edge134.split, label %_ZN4ncnn3MatD2Ev.exit76.lr.ph

_ZN4ncnn3MatD2Ev.exit76.lr.ph:                    ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18, !noalias !160
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !160
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !72, !noalias !160
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 536
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.s = load i32, ptr %5, align 4, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !82, !noalias !163
  %i.v = load ptr, ptr %6, align 8, !tbaa !18, !noalias !163
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !163
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !72, !noalias !163 ; 2 uses
  %factor.op.mul136 = mul i64 %i.x, %i.z
  %i.aa = sext i32 %i.u to i64
  %i.ab = load i32, ptr %7, align 4, !tbaa !74    ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 268
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 440
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.ai = mul i64 %i.z, %i.aa
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 220
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 288 ; 3 uses
  br i1 %i.ac, label %_ZN4ncnn3MatD2Ev.exit76.lr.ph.split, label %._crit_edge134.split

_ZN4ncnn3MatD2Ev.exit76.lr.ph.split:              ; preds = %_ZN4ncnn3MatD2Ev.exit76.lr.ph
  %i.ao = load i32, ptr %8, align 4, !tbaa !74    ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %_ZN4ncnn3MatD2Ev.exit76.lr.ph.split.split, label %._crit_edge134.split
end_hunk_0
