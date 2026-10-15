Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorreconstruction?download=true
inline.NumInlined: 49
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@process:bb.a

bb.e:                                             ; preds = %bb.d
  %i.ab = fsub reassoc nsz arcp contract afn float 4.000000e+00, %i.r
  %i.ac = select reassoc nsz arcp contract afn i1 %i.s, float %i.ab, float 0.000000e+00
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.e, %bb.d, %hue2rgb.exit.i.i
  %.0.i35.i.i = phi nsz float [ %i.ac, %bb.e ], [ %i.r, %hue2rgb.exit.i.i ], [ 1.000000e+00, %bb.d ] ; 3 uses
  %i.ad = fcmp reassoc nsz arcp contract afn ogt float %i.r, 2.000000e+00
  %.v34.i.i = select i1 %i.ad, float -2.000000e+00, float 4.000000e+00
  %i.ae = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.r ; 5 uses
  %i.af = fcmp reassoc nsz arcp contract afn olt float %i.ae, 1.000000e+00
  br i1 %i.af, label %hsl2rgb.exit.i, label %bb.f

bb.f:                                             ; preds = %hue2rgb.exit36.i.i
  %i.ag = fcmp reassoc nsz arcp contract afn olt float %i.ae, 3.000000e+00
  br i1 %i.ag, label %hsl2rgb.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = fcmp reassoc nsz arcp contract afn olt float %i.ae, 4.000000e+00
  %i.ai = fsub reassoc nsz arcp contract afn float 4.000000e+00, %i.ae
  %i.aj = select reassoc nsz arcp contract afn i1 %i.ah, float %i.ai, float 0.000000e+00
  br label %hsl2rgb.exit.i

hsl2rgb.exit.i:                                   ; preds = %bb.g, %bb.f, %hue2rgb.exit36.i.i
  %.0.i37.i.i = phi nsz float [ %i.aj, %bb.g ], [ %i.ae, %hue2rgb.exit36.i.i ], [ 1.000000e+00, %bb.f ] ; 3 uses
  %i.ak = fmul reassoc nsz arcp contract afn float %.0.i.i.i, f0x3EDF452F
  %i.al = fmul reassoc nsz arcp contract afn float %.0.i35.i.i, f0x3EC5273A
  %i.am = fadd reassoc nsz arcp contract afn float %i.al, %i.ak
  %i.an = fmul reassoc nsz arcp contract afn float %.0.i37.i.i, f0x3E1283AB
  %i.ao = fadd reassoc nsz arcp contract afn float %i.am, %i.an ; 2 uses
  %i.ap = fmul reassoc nsz arcp contract afn float %.0.i.i.i, f0x3E63D838
  %i.aq = fmul reassoc nsz arcp contract afn float %.0.i35.i.i, f0x3F37855B
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, %i.ap
  %i.as = fmul reassoc nsz arcp contract afn float %.0.i37.i.i, 6.061690e-02
  %i.at = fadd reassoc nsz arcp contract afn float %i.ar, %i.as ; 3 uses
  %i.au = fmul reassoc nsz arcp contract afn float %.0.i.i.i, 1.393220e-02
  %i.av = fmul reassoc nsz arcp contract afn float %.0.i35.i.i, f0x3DC6DEB9
  %i.aw = fadd reassoc nsz arcp contract afn float %i.av, %i.au
  %i.ax = fmul reassoc nsz arcp contract afn float %.0.i37.i.i, f0x3F36D410
  %i.ay = fadd reassoc nsz arcp contract afn float %i.aw, %i.ax ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn float %i.ao, f0x3F84C0A6 ; 2 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, f0x3C111AA7
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %hsl2rgb.exit.i
  %i.bb = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.az) #25
  br label %bb.j

bb.i:                                             ; preds = %hsl2rgb.exit.i
  %i.bc = fmul reassoc nsz arcp contract afn float %i.ao, f0x410137F7
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, f0x3E0D3DCB
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.be = phi reassoc nsz arcp contract afn float [ %i.bb, %bb.h ], [ %i.bd, %bb.i ]
  %i.bf = fcmp reassoc nsz arcp contract afn ogt float %i.at, f0x3C111AA7
  br i1 %i.bf, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = fmul reassoc nsz arcp contract afn float %i.at, f0x40F92F69
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, f0x3E0D3DCB
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bi = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.at) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bj = phi reassoc nsz arcp contract afn float [ %i.bi, %bb.l ], [ %i.bh, %bb.k ] ; 2 uses
  %i.bk = fmul reassoc nsz arcp contract afn float %i.ay, f0x3F9B2B9B ; 2 uses
  %i.bl = fcmp reassoc nsz arcp contract afn ogt float %i.bk, f0x3C111AA7
  br i1 %i.bl, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = fmul reassoc nsz arcp contract afn float %i.ay, f0x41170A26
  %i.bn = fadd reassoc nsz arcp contract afn float %i.bm, f0x3E0D3DCB
  br label %hue_conversion.exit

bb.o:                                             ; preds = %bb.m
  %i.bo = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.bk) #25
  br label %hue_conversion.exit

hue_conversion.exit:                              ; preds = %bb.n, %bb.o
  %i.bp = phi reassoc nsz arcp contract afn float [ %i.bo, %bb.o ], [ %i.bn, %bb.n ]
  %i.bq = fsub reassoc nsz arcp contract afn float %i.be, %i.bj
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, 5.000000e+02
  %i.bs = fsub reassoc nsz arcp contract afn float %i.bp, %i.bj
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, -2.000000e+02
  %i.bu = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.bt, float %i.br)
  %i.bv = fcmp reassoc nsz arcp contract afn ogt float %i.o, 1.000000e+02
  br i1 %i.bv, label %bb.p, label %.thread

bb.p:                                             ; preds = %hue_conversion.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !48
  %i.by = load i32, ptr %i.bx, align 16, !tbaa !101
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = icmp ne ptr %i.d, null
  %or.cond = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !102
  %i.cd = getelementptr i8, ptr %i.cc, i64 644
  %.val = load i32, ptr %i.cd, align 4, !tbaa !110
  %i.ce = and i32 %.val, 2
  %.not = icmp eq i32 %i.ce, 0
  br i1 %.not, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = tail call reassoc nsz arcp contract afn float @dt_dev_get_zoomed_in() #23
  %i.cg = fcmp reassoc nsz arcp contract afn ogt float %i.cf, 1.050000e+00
  br i1 %i.cg, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.ch = load ptr, ptr %i.bw, align 8, !tbaa !48
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !102
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ck = load i32, ptr %i.cj, align 16, !tbaa !111
  %i.cl = sitofp reassoc nsz arcp contract afn i32 %i.ck to double
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.co = tail call i32 @dt_dev_sync_pixelpipe_hash(ptr noundef %i.ch, ptr noundef %i.ci, double noundef %i.cl, i32 noundef 3, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cn) #23
  %.not65 = icmp eq i32 %i.co, 0
  br i1 %.not65, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cp = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #23
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.cp) #23
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.cq = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cm) #23 ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !52 ; 7 uses
  %i.ct = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cm) #23 ; 0 uses
  %.not66 = icmp eq ptr %i.cs, null
  br i1 %.not66, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cu = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24 ; 9 uses
  %.not.i = icmp eq ptr %i.cu, null
  br i1 %.not.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.33) #23
  br label %bb.ax

bb.x:                                             ; preds = %bb.v
  %i.cv = load <2 x i64>, ptr %i.cs, align 8, !tbaa !112 ; 4 uses
  store <2 x i64> %i.cv, ptr %i.cu, align 8, !tbaa !112
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !113 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !115
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.db = load <4 x i32>, ptr %i.cz, align 8, !tbaa !15
  store <4 x i32> %i.db, ptr %i.da, align 8, !tbaa !15
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.de = load <2 x float>, ptr %i.dc, align 8, !tbaa !12 ; 2 uses
  store <2 x float> %i.de, ptr %i.dd, align 8, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.dg = load float, ptr %i.df, align 8, !tbaa !116
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  store float %i.dg, ptr %i.dh, align 8, !tbaa !117
  %i.di = extractelement <2 x i64> %i.cv, i64 0
  %i.dj = shl i64 %i.di, 4
  %i.dk = extractelement <2 x i64> %i.cv, i64 1
  %i.dl = mul i64 %i.dj, %i.dk
  %i.dm = mul i64 %i.dl, %i.cx                    ; 2 uses
  %i.dn = tail call ptr @dt_alloc_aligned(i64 noundef %i.dm) #23 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dn, i64 64) ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !118
  %.not40.i = icmp eq ptr %i.dn, null
  br i1 %.not40.i, label %dt_iop_colorreconstruct_bilateral_free.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !55 ; 2 uses
  %.not41.i = icmp eq ptr %i.dq, null
  br i1 %.not41.i, label %dt_iop_colorreconstruct_bilateral_free.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.dn, ptr nonnull align 4 %i.dq, i64 %i.dm, i1 false)
  %i.dr = extractelement <2 x float> %i.de, i64 0
  br label %dt_iop_colorreconstruct_bilateral_thaw.exit

dt_iop_colorreconstruct_bilateral_free.exit.i:    ; preds = %bb.y, %bb.x
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.34) #23
  tail call void @free(ptr noundef %i.dn) #23
  tail call void @free(ptr noundef nonnull %i.cu) #23
  br label %bb.ax

.thread:                                          ; preds = %hue_conversion.exit, %bb.p, %bb.q, %bb.r, %bb.u
  %i.ds = load float, ptr %i.e, align 8, !tbaa !45
  %i.dt = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24 ; 12 uses
  %.not.i72 = icmp eq ptr %i.dt, null
  br i1 %.not.i72, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.thread
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.35) #23
  br label %bb.ax

bb.ab:                                            ; preds = %.thread
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dv = extractelement <2 x float> %i.m, i64 1
  %i.dw = fdiv reassoc nsz arcp contract afn float 1.000000e+02, %i.dv
  %i.dx = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.dw)
  %i.dy = load <2 x i32>, ptr %i.du, align 4, !tbaa !15 ; 4 uses
  %i.dz = sitofp <2 x i32> %i.dy to <2 x float>   ; 2 uses
  %i.ea = insertelement <2 x float> poison, float %i.o, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = fdiv reassoc nsz arcp contract afn <2 x float> %i.dz, %i.eb
  %i.ed = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.ec)
  %i.ee = fptosi <2 x float> %i.ed to <2 x i32>   ; 2 uses
  %i.ef = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ee, <2 x i32> splat (i32 500))
  %i.eg = add nuw nsw <2 x i32> %i.ef, splat (i32 1)
  %i.eh = icmp slt <2 x i32> %i.ee, splat (i32 5)
  %i.ei = select <2 x i1> %i.eh, <2 x i32> splat (i32 5), <2 x i32> %i.eg ; 4 uses
  %i.ej = extractelement <2 x i32> %i.ei, i64 0   ; 8 uses
  %i.ek = zext i32 %i.ej to i64                   ; 5 uses
  %i.el = zext <2 x i32> %i.ei to <2 x i64>
  %i.em = extractelement <2 x i32> %i.ei, i64 1   ; 5 uses
  %i.en = zext i32 %i.em to i64                   ; 5 uses
  store i64 %i.ek, ptr %i.dt, align 8, !tbaa !119
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !120
  %i.ep = fptosi float %i.dx to i32               ; 2 uses
  %i.eq = tail call i32 @llvm.smin.i32(i32 %i.ep, i32 100)
  %i.er = add nuw nsw i32 %i.eq, 1
  %.inv63.i = icmp samesign ult i32 %i.ep, 5
  %narrow62.i = select i1 %.inv63.i, i32 5, i32 %i.er ; 5 uses
  %i.es = zext i32 %narrow62.i to i64             ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 %i.es, ptr %i.et, align 8, !tbaa !115
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store <2 x i32> %i.dy, ptr %i.eu, align 8, !tbaa !15
  %6 = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %7 = load <2 x i32>, ptr %4, align 4, !tbaa !15
  store <2 x i32> %7, ptr %6, align 8, !tbaa !15
  %i.ev = load float, ptr %i.g, align 4, !tbaa !46
  %i.ew = fdiv reassoc nsz arcp contract afn float %i.ds, %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  store float %i.ew, ptr %i.ex, align 8, !tbaa !121
  %i.ey = uitofp <2 x i32> %i.ei to <2 x float>
  %i.ez = fadd reassoc nsz arcp contract afn <2 x float> %i.ey, splat (float -1.000000e+00)
  %i.fa = fdiv reassoc nsz arcp contract afn <2 x float> %i.dz, %i.ez ; 2 uses
  %i.fb = extractelement <2 x float> %i.fa, i64 0 ; 2 uses
  %i.fc = extractelement <2 x float> %i.fa, i64 1 ; 2 uses
  %i.fd = fcmp reassoc nsz arcp contract afn ogt float %i.fc, %i.fb
  %i.fe = select reassoc nsz arcp contract afn i1 %i.fd, float %i.fc, float %i.fb ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dt, i64 44
  store float %i.fe, ptr %i.ff, align 4, !tbaa !122
  %i.fg = uitofp i32 %narrow62.i to float
  %i.fh = fadd reassoc nsz arcp contract afn float %i.fg, -1.000000e+00
  %i.fi = fdiv reassoc nsz arcp contract afn float 1.000000e+02, %i.fh ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  store float %i.fi, ptr %i.fj, align 8, !tbaa !117
  %i.fk = shl nuw nsw i64 %i.es, 4
  %i.fl = mul i64 %i.fk, %i.ek
  %i.fm = mul i64 %i.fl, %i.en                    ; 2 uses
  %i.fn = tail call ptr @dt_alloc_aligned(i64 noundef %i.fm) #23 ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fn, i64 64) ]
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !118
  %.not59.i = icmp eq ptr %i.fn, null
  br i1 %.not59.i, label %dt_iop_colorreconstruct_bilateral_free.exit.i73, label %.preheader.i

dt_iop_colorreconstruct_bilateral_free.exit.i73:  ; preds = %bb.ab
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.36) #23
  tail call void @free(ptr noundef nonnull %i.dt) #23
  br label %bb.ax

.preheader.i:                                     ; preds = %bb.ab
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.fn, i8 0, i64 %i.fm, i1 false)
  %i.fp = load float, ptr %i.b, align 4, !tbaa !123
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !56
  %i.fs = extractelement <2 x i32> %i.dy, i64 1   ; 2 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph6.i, label %.loopexit

.lr.ph6.i:                                        ; preds = %.preheader.i
  %i.fu = extractelement <2 x i32> %i.dy, i64 0   ; 3 uses
  %i.fv = sext i32 %i.fu to i64
  %factor.op.mul.i = shl nuw nsw i64 %i.fv, 2
  %i.fw = icmp sgt i32 %i.fu, 0
  br i1 %i.fw, label %.lr.ph.preheader.i, label %.loopexit

.lr.ph.preheader.i:                               ; preds = %.lr.ph6.i
  %wide.trip.count.i = zext nneg i32 %i.fs to i64
  %i.fx = add nsw i64 %i.ek, -1
  %i.fy = uitofp reassoc nsz arcp contract afn i64 %i.fx to float ; 2 uses
  %i.fz = add nsw i64 %i.en, -1
  %i.ga = uitofp reassoc nsz arcp contract afn i64 %i.fz to float ; 2 uses
  %i.gb = add nsw i64 %i.es, -1
  %i.gc = uitofp reassoc nsz arcp contract afn i64 %i.gb to float ; 2 uses
  %i.gd = add nsw i64 %i.ek, -1
  %i.ge = add nsw i64 %i.en, -1
  %i.gf = add nsw i64 %i.es, -1
  %i.gg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fe
  %i.gh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fe
  %i.gi = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fi
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %.reass.i = mul nuw i64 %factor.op.mul.i, %indvars.iv.i
  %i.gj = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.gk = uitofp nsz nneg i32 %i.gj to float
  %i.gl = fmul reassoc nsz arcp contract afn float %i.gk, %i.gg ; 3 uses
  %i.gm = fcmp reassoc nsz arcp contract afn ogt float %i.gl, 0.000000e+00
  %i.gn = fcmp reassoc nsz arcp contract afn olt float %i.gl, %i.ga
  %.32.i.i = select reassoc nsz arcp contract afn i1 %i.gn, float %i.gl, float %i.ga
  %i.go = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %.32.i.i)
  %i.gp = fptosi float %i.go to i32
  %spec.select = select i1 %i.gm, i32 %i.gp, i32 0 ; 2 uses
  %i.gq = icmp sgt i32 %spec.select, 0
  %i.gr = zext nneg i32 %spec.select to i64
  %spec.select78.i = tail call i64 @llvm.umin.i64(i64 %i.ge, i64 %i.gr)
  %i.gs = select i1 %i.gq, i64 %spec.select78.i, i64 0
  br label %bb.ac

._crit_edge.i:                                    ; preds = %bb.am
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond8.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond8.not.i, label %.loopexit, label %.lr.ph.i

bb.ac:                                            ; preds = %bb.am, %.lr.ph.i
  %.0644.i = phi i32 [ 0, %.lr.ph.i ], [ %i.iw, %bb.am ] ; 2 uses
  %.0653.i = phi i64 [ %.reass.i, %.lr.ph.i ], [ %i.ix, %bb.am ] ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0653.i ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gv = load <2 x float>, ptr %i.gt, align 4, !tbaa !12 ; 2 uses
  %i.gw = load float, ptr %i.gu, align 4, !tbaa !12 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !12 ; 4 uses
  %i.gz = extractelement <2 x float> %i.gv, i64 0 ; 2 uses
  %i.ha = fcmp reassoc nsz arcp contract afn ogt float %i.gz, %i.fp
  br i1 %i.ha, label %bb.am, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  switch i32 %i.fr, label %bb.ag [
    i32 1, label %bb.ae
    i32 2, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.hb = fmul reassoc nsz arcp contract afn float %i.gw, %i.gw
  %i.hc = fmul reassoc nsz arcp contract afn float %i.gy, %i.gy
  %i.hd = fadd reassoc nsz arcp contract afn float %i.hc, %i.hb
  %i.he = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.hd)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.hf = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.gy, float %i.gw)
  %i.hg = fsub reassoc nsz arcp contract afn float %i.hf, %i.bu ; 5 uses
  %i.hh = fcmp reassoc nsz arcp contract afn ogt float %i.hg, f0x40490FDB
  %i.hi = fadd reassoc nsz arcp contract afn float %i.hg, f0xC0C90FDB
  %i.hj = fcmp reassoc nsz arcp contract afn olt float %i.hg, f0xC0490FDB
  %i.hk = fadd reassoc nsz arcp contract afn float %i.hg, f0x40C90FDB
  %i.hl = select reassoc nsz arcp contract afn i1 %i.hj, float %i.hk, float %i.hg
  %i.hm = select reassoc nsz arcp contract afn i1 %i.hh, float %i.hi, float %i.hl ; 2 uses
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hm, %i.hm
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hn, f0xBF4F817A
  %i.hp = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ho)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.063.i = phi nsz float [ %i.hp, %bb.af ], [ %i.he, %bb.ae ], [ 1.000000e+00, %bb.ad ]
  %i.hq = uitofp nsz nneg i32 %.0644.i to float
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hq, %i.gh ; 3 uses
  %i.hs = fcmp reassoc nsz arcp contract afn ogt float %i.hr, 0.000000e+00
  br i1 %i.hs, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ht = fcmp reassoc nsz arcp contract afn olt float %i.hr, %i.fy
  %..i.i = select reassoc nsz arcp contract afn i1 %i.ht, float %i.hr, float %i.fy
  %i.hu = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %..i.i)
  %i.hv = fptosi float %i.hu to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hw = phi i32 [ 0, %bb.ag ], [ %i.hv, %bb.ah ] ; 2 uses
  %i.hx = fmul reassoc nsz arcp contract afn float %i.gz, %i.gi ; 3 uses
  %i.hy = fcmp reassoc nsz arcp contract afn ogt float %i.hx, 0.000000e+00
  br i1 %i.hy, label %bb.aj, label %image_to_grid.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.hz = fcmp reassoc nsz arcp contract afn olt float %i.hx, %i.gc
  %.33.i.i = select reassoc nsz arcp contract afn i1 %i.hz, float %i.hx, float %i.gc
  %i.ia = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %.33.i.i)
  %i.ib = fptosi float %i.ia to i32
  br label %image_to_grid.exit.i

image_to_grid.exit.i:                             ; preds = %bb.aj, %bb.ai
  %i.ic = phi i32 [ 0, %bb.ai ], [ %i.ib, %bb.aj ] ; 2 uses
  %i.id = icmp sgt i32 %i.hw, 0
  %i.ie = zext nneg i32 %i.hw to i64
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.gd, i64 %i.ie)
  %i.if = select i1 %i.id, i64 %spec.select.i, i64 0
  %i.ig = icmp sgt i32 %i.ic, 0
  br i1 %i.ig, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %image_to_grid.exit.i
  %i.ih = zext nneg i32 %i.ic to i64
  %spec.select79.i = tail call i64 @llvm.umin.i64(i64 %i.gf, i64 %i.ih)
  %i.ii = mul nuw nsw i64 %spec.select79.i, %i.en
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %image_to_grid.exit.i
  %i.ij = phi i64 [ 0, %image_to_grid.exit.i ], [ %i.ii, %bb.ak ]
  %i.ik = add nuw nsw i64 %i.ij, %i.gs
  %i.il = mul i64 %i.ik, %i.ek
  %i.im = getelementptr [16 x i8], ptr %i.fn, i64 %i.if
  %i.in = getelementptr [16 x i8], ptr %i.im, i64 %i.il ; 2 uses
  %i.io = insertelement <4 x float> poison, float %.063.i, i64 0
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iq = shufflevector <2 x float> %i.gv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ir = insertelement <4 x float> %i.iq, float 1.000000e+00, i64 3
  %i.is = insertelement <4 x float> %i.ir, float %i.gy, i64 2
  %i.it = fmul nsz <4 x float> %i.ip, %i.is
  %i.iu = load <4 x float>, ptr %i.in, align 16, !tbaa !12
  %i.iv = fadd reassoc nsz arcp contract afn <4 x float> %i.iu, %i.it
  store <4 x float> %i.iv, ptr %i.in, align 16, !tbaa !12
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ac
  %i.iw = add nuw nsw i32 %.0644.i, 1             ; 2 uses
  %i.ix = add i64 %.0653.i, 4
  %exitcond.not.i = icmp eq i32 %i.iw, %i.fu
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ac

.loopexit:                                        ; preds = %._crit_edge.i, %.preheader.i, %.lr.ph6.i
  %i.iy = mul i32 %i.em, %i.ej                    ; 3 uses
  tail call fastcc void @blur_line(ptr noundef nonnull %i.fn, i32 noundef %i.iy, i32 noundef %i.ej, i32 noundef 1, i32 noundef %narrow62.i, i32 noundef %i.em, i32 noundef %i.ej)
  tail call fastcc void @blur_line(ptr noundef nonnull %i.fn, i32 noundef %i.iy, i32 noundef 1, i32 noundef %i.ej, i32 noundef %narrow62.i, i32 noundef %i.ej, i32 noundef %i.em)
  tail call fastcc void @blur_line(ptr noundef nonnull %i.fn, i32 noundef 1, i32 noundef %i.ej, i32 noundef %i.iy, i32 noundef %i.ej, i32 noundef %i.em, i32 noundef %narrow62.i)
  br label %dt_iop_colorreconstruct_bilateral_thaw.exit

end_hunk_0
