Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_do_get_structure_auto:bb.a

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.01214.i.i.i.epil = phi i64 [ %i.cx, %.preheader.i.i.i.epil ], [ %.01214.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01214.i.i.i.epil ; 4 uses
  %i.cp = load float, ptr %i.co, align 16, !tbaa !15
  %i.cq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cp, float 4.500000e-01)
  store float %i.cq, ptr %i.co, align 16, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !15
  %i.ct = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cs, float 4.500000e-01)
  store float %i.ct, ptr %i.cr, align 4, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 8, !tbaa !15
  %i.cw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cv, float 4.500000e-01)
  store float %i.cw, ptr %i.cu, align 8, !tbaa !15
  %i.cx = add nuw i64 %.01214.i.i.i.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %gamma_correct.exit.i.i, label %.preheader.i.i.i.epil, !llvm.loop !529

gamma_correct.exit.i.i:                           ; preds = %gamma_correct.exit.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.epil, %bb.f
  %i.cy = and i32 %1, 2
  %.not185.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not185.i.i, label %detail_enhance.exit.i.i, label %bb.g

bb.g:                                             ; preds = %gamma_correct.exit.i.i
  %i.cz = sitofp reassoc nsz arcp contract afn i32 %i.aa to float
  %i.da = sitofp reassoc nsz arcp contract afn i32 %i.z to float
  %i.db = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.cz, float %i.da)
  %i.dc = fmul reassoc nnan nsz arcp contract afn float %i.db, 2.000000e-02
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %dt_XYZ_to_Lab.exit.i.i.i, %bb.g
  %i.dd = tail call ptr @dt_bilateral_init(i32 noundef %i.aa, i32 noundef %i.z, float noundef %i.dc, float noundef 5.000000e+00) #34 ; 5 uses
  %.not.i191.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i191.i.i, label %bb.t, label %bb.s

.lr.ph.i.i.i:                                     ; preds = %bb.g, %dt_XYZ_to_Lab.exit.i.i.i
  %.02943.i.i.i = phi i64 [ %i.fh, %dt_XYZ_to_Lab.exit.i.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.02943.i.i.i ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !15 ; 4 uses
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, f0x3E1283AB
  %i.dj = fmul reassoc nsz arcp contract afn float %i.dh, 6.061690e-02
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dh, f0x3F36D410
  %i.dl = load float, ptr %i.de, align 16, !tbaa !15
  %i.dm = load float, ptr %i.df, align 4, !tbaa !15
  %i.dn = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dp = fmul reassoc nsz arcp contract afn <4 x float> %i.do, <float f0x3EDF452F, float f0x3E63D838, float 1.393220e-02, float 1.000000e+00>
  %i.dq = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ds = fmul reassoc nsz arcp contract afn <4 x float> %i.dr, <float f0x3EC5273A, float f0x3F37855B, float f0x3DC6DEB9, float 1.000000e+00>
  %i.dt = fadd reassoc nsz arcp contract afn <4 x float> %i.ds, %i.dp ; 4 uses
  %i.du = extractelement <4 x float> %i.dt, i64 0
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, %i.di ; 2 uses
  %i.dw = extractelement <4 x float> %i.dt, i64 1
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dw, %i.dj ; 3 uses
  %i.dy = extractelement <4 x float> %i.dt, i64 2
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, %i.dk ; 2 uses
  %i.ea = extractelement <4 x float> %i.dt, i64 3
  %i.eb = fadd reassoc nsz arcp contract afn float %i.ea, %i.dh
  %i.ec = fmul reassoc nsz arcp contract afn float %i.dv, f0x3F84C0A6 ; 2 uses
  %i.ed = fcmp reassoc nsz arcp contract afn ogt float %i.ec, f0x3C111AA7
  br i1 %i.ed, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ee = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ec) #35
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ef = fmul reassoc nsz arcp contract afn float %i.dv, f0x410137F7
  %i.eg = fadd reassoc nsz arcp contract afn float %i.ef, f0x3E0D3DCB
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.eh = phi reassoc nsz arcp contract afn float [ %i.ee, %bb.h ], [ %i.eg, %bb.i ]
  %i.ei = fcmp reassoc nsz arcp contract afn ogt float %i.dx, f0x3C111AA7
  br i1 %i.ei, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ej = fmul reassoc nsz arcp contract afn float %i.dx, f0x40F92F69
  %i.ek = fadd reassoc nsz arcp contract afn float %i.ej, f0x3E0D3DCB
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.el = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.dx) #35
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.em = phi reassoc nsz arcp contract afn float [ %i.el, %bb.l ], [ %i.ek, %bb.k ] ; 3 uses
  %i.en = fmul reassoc nsz arcp contract afn float %i.dz, f0x3F9B2B9B ; 2 uses
  %i.eo = fcmp reassoc nsz arcp contract afn ogt float %i.en, f0x3C111AA7
  br i1 %i.eo, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ep = fmul reassoc nsz arcp contract afn float %i.dz, f0x41170A26
  %i.eq = fadd reassoc nsz arcp contract afn float %i.ep, f0x3E0D3DCB
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.er = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.en) #35
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.es = phi reassoc nsz arcp contract afn float [ %i.er, %bb.o ], [ %i.eq, %bb.n ]
  %i.et = fmul reassoc nsz arcp contract afn float %i.eb, 0.000000e+00 ; 3 uses
  %i.eu = fcmp reassoc nsz arcp contract afn ogt float %i.et, f0x3C111AA7
  br i1 %i.eu, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ev = fadd reassoc nsz arcp contract afn float %i.et, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ew = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.et) #35
  br label %dt_XYZ_to_Lab.exit.i.i.i

dt_XYZ_to_Lab.exit.i.i.i:                         ; preds = %bb.r, %bb.q
  %i.ex = phi reassoc nsz arcp contract afn float [ %i.ew, %bb.r ], [ %i.ev, %bb.q ]
  %i.ey = fmul reassoc nsz arcp contract afn float %i.em, 1.160000e+02
  %i.ez = fadd reassoc nsz arcp contract afn float %i.ey, -1.600000e+01
  %i.fa = fsub reassoc nsz arcp contract afn float %i.eh, %i.em
  %i.fb = fsub reassoc nsz arcp contract afn float %i.es, %i.em
  %i.fc = insertelement <4 x float> poison, float %i.ez, i64 0
  %i.fd = insertelement <4 x float> %i.fc, float %i.fa, i64 1
  %i.fe = insertelement <4 x float> %i.fd, float %i.fb, i64 2
  %i.ff = insertelement <4 x float> %i.fe, float %i.ex, i64 3
  %i.fg = fmul reassoc nsz arcp contract afn <4 x float> %i.ff, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.fg, ptr %i.de, align 16, !tbaa !15
  %i.fh = add nuw i64 %.02943.i.i.i, 4            ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.al
  br i1 %i.fi, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.s:                                             ; preds = %._crit_edge.i.i.i
  tail call void @dt_bilateral_splat(ptr noundef nonnull %i.dd, ptr noundef nonnull %i.ah) #34
  tail call void @dt_bilateral_blur(ptr noundef nonnull %i.dd) #34
  tail call void @dt_bilateral_slice_to_output(ptr noundef nonnull %i.dd, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ah, float noundef 1.000000e+01) #34
  tail call void @dt_bilateral_free(ptr noundef nonnull %i.dd) #34
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i
  br i1 %.not.i.i.i, label %detail_enhance.exit.i.i, label %.lr.ph46.i.i.i.preheader

.lr.ph46.i.i.i.preheader:                         ; preds = %bb.t
  %i.fj = add i64 %i.al, -4                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.fj, 32
  br i1 %min.iters.check, label %.lr.ph46.i.i.i.preheader235, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph46.i.i.i.preheader
  %i.fk = lshr exact i64 %i.fj, 2
  %i.fl = add nuw nsw i64 %i.fk, 1                ; 2 uses
  %i.fm = and i64 %i.fl, 7                        ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 0
  %i.fo = select i1 %i.fn, i64 8, i64 %i.fm
  %n.vec = sub nsw i64 %i.fl, %i.fo               ; 2 uses
  %i.fp = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx ; 2 uses
  %wide.vec = load <32 x float>, ptr %i.fq, align 64, !tbaa !15 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec152 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec153 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.fr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec152, splat (float 2.000000e-03)
  %i.fs = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float 8.620690e-03)
  %i.ft = fadd reassoc nsz arcp contract afn <8 x float> %i.fs, splat (float f0x3E0D3DCB) ; 7 uses
  %i.fu = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec153, splat (float 5.000000e-03)
  %i.fv = fadd reassoc nsz arcp contract afn <8 x float> %i.ft, %i.fr ; 5 uses
  %i.fw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.fv, splat (float f0x3E53DCB1)
  %i.fx = fmul reassoc nsz arcp contract afn <8 x float> %i.fv, %i.fv
  %i.fy = fmul reassoc nsz arcp contract afn <8 x float> %i.fx, %i.fv
  %i.fz = fmul reassoc nsz arcp contract afn <8 x float> %i.fv, splat (float f0x3E038026)
  %i.ga = fadd reassoc nsz arcp contract afn <8 x float> %i.fz, splat (float f0xBC911AA6)
  %i.gb = select reassoc nsz arcp contract afn <8 x i1> %i.fw, <8 x float> %i.fy, <8 x float> %i.ga ; 3 uses
  %i.gc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ft, splat (float f0x3E53DCB1)
  %i.gd = fmul reassoc nsz arcp contract afn <8 x float> %i.ft, %i.ft
  %i.ge = fmul reassoc nsz arcp contract afn <8 x float> %i.gd, %i.ft
  %i.gf = fmul reassoc nsz arcp contract afn <8 x float> %i.ft, splat (float f0x3E038026)
  %i.gg = fadd reassoc nsz arcp contract afn <8 x float> %i.gf, splat (float f0xBC911AA6)
  %i.gh = select reassoc nsz arcp contract afn <8 x i1> %i.gc, <8 x float> %i.ge, <8 x float> %i.gg ; 3 uses
  %i.gi = fsub reassoc nsz arcp contract afn <8 x float> %i.ft, %i.fu ; 5 uses
  %i.gj = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.gi, splat (float f0x3E53DCB1)
  %i.gk = fmul reassoc nsz arcp contract afn <8 x float> %i.gi, %i.gi
  %i.gl = fmul reassoc nsz arcp contract afn <8 x float> %i.gk, %i.gi
  %i.gm = fmul reassoc nsz arcp contract afn <8 x float> %i.gi, splat (float f0x3E038026)
  %i.gn = fadd reassoc nsz arcp contract afn <8 x float> %i.gm, splat (float f0xBC911AA6)
  %i.go = select reassoc nsz arcp contract afn <8 x i1> %i.gj, <8 x float> %i.gl, <8 x float> %i.gn ; 3 uses
  %i.gp = fmul reassoc nsz arcp contract afn <8 x float> %i.gb, splat (float 9.642000e-01)
  %i.gq = fmul reassoc nsz arcp contract afn <8 x float> %i.go, splat (float f0x3F532CA5)
  %i.gr = fmul reassoc nsz arcp contract afn <8 x float> %i.gb, splat (float f0x3D8E11AE)
  %i.gs = fmul reassoc nsz arcp contract afn <8 x float> %i.gh, splat (float f0xBE6A7CB9)
  %i.gt = fadd reassoc nsz arcp contract afn <8 x float> %i.gr, %i.gs
  %i.gu = fmul reassoc nsz arcp contract afn <8 x float> %i.go, splat (float f0x3F94602A)
  %i.gv = fadd reassoc nsz arcp contract afn <8 x float> %i.gt, %i.gu
  %i.gw = fadd reassoc nsz arcp contract afn <8 x float> %i.gh, %i.gp
  %i.gx = fadd reassoc nsz arcp contract afn <8 x float> %i.gw, %i.gq
  %i.gy = fmul reassoc nsz arcp contract afn <8 x float> %i.gx, zeroinitializer
  %i.gz = shufflevector <8 x float> %i.gb, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ha = fmul reassoc nsz arcp contract afn <16 x float> %i.gz, <float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831>
  %i.hb = shufflevector <8 x float> %i.gh, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hc = fmul reassoc nsz arcp contract afn <16 x float> %i.hb, <float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420>
  %i.hd = fadd reassoc nsz arcp contract afn <16 x float> %i.ha, %i.hc
  %i.he = shufflevector <8 x float> %i.go, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hf = fmul reassoc nsz arcp contract afn <16 x float> %i.he, <float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F>
  %i.hg = fadd reassoc nsz arcp contract afn <16 x float> %i.hd, %i.hf
  %i.hh = shufflevector <8 x float> %i.gv, <8 x float> %i.gy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.hg, <16 x float> %i.hh, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.fq, align 64, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hi = icmp eq i64 %index.next, %n.vec
  br i1 %i.hi, label %.lr.ph46.i.i.i.preheader235, label %vector.body, !llvm.loop !530

.lr.ph46.i.i.i.preheader235:                      ; preds = %vector.body, %.lr.ph46.i.i.i.preheader
  %.044.i.i.i.ph = phi i64 [ 0, %.lr.ph46.i.i.i.preheader ], [ %i.fp, %vector.body ]
  br label %.lr.ph46.i.i.i

.lr.ph46.i.i.i:                                   ; preds = %.lr.ph46.i.i.i.preheader235, %.lr.ph46.i.i.i
  %.044.i.i.i = phi i64 [ %i.jb, %.lr.ph46.i.i.i ], [ %.044.i.i.i.ph, %.lr.ph46.i.i.i.preheader235 ] ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.044.i.i.i ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !15
  %i.hm = load float, ptr %i.hj, align 16, !tbaa !15
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.ho = load float, ptr %i.hn, align 8, !tbaa !15
  %i.hp = fmul reassoc nsz arcp contract afn float %i.hl, 2.000000e-03
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hm, 8.620690e-03
  %i.hr = fadd reassoc nsz arcp contract afn float %i.hq, f0x3E0D3DCB ; 4 uses
  %i.hs = fmul reassoc nsz arcp contract afn float %i.ho, 5.000000e-03
  %i.ht = fadd reassoc nsz arcp contract afn float %i.hr, %i.hp ; 2 uses
  %i.hu = fsub reassoc nsz arcp contract afn float %i.hr, %i.hs
  %i.hv = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.hw = insertelement <2 x float> %i.hv, float %i.hr, i64 1 ; 5 uses
  %i.hx = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hw, splat (float f0x3E53DCB1)
  %i.hy = fmul reassoc nsz arcp contract afn <2 x float> %i.hw, %i.hw
  %i.hz = insertelement <4 x float> poison, float %i.hr, i64 0
  %i.ia = insertelement <4 x float> %i.hz, float %i.ht, i64 1
  %i.ib = insertelement <4 x float> %i.ia, float %i.hu, i64 3 ; 4 uses
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3> ; 2 uses
  %i.id = fmul reassoc nsz arcp contract afn <4 x float> %i.ib, %i.ib
  %i.ie = fmul reassoc nsz arcp contract afn <2 x float> %i.hy, %i.hw
  %i.if = fmul reassoc nsz arcp contract afn <2 x float> %i.hw, splat (float f0x3E038026)
  %i.ig = fmul reassoc nsz arcp contract afn <4 x float> %i.ic, splat (float f0x3E038026)
  %i.ih = fadd reassoc nsz arcp contract afn <2 x float> %i.if, splat (float f0xBC911AA6)
  %i.ii = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ic, splat (float f0x3E53DCB1)
  %i.ij = fmul reassoc nsz arcp contract afn <4 x float> %i.id, %i.ib
  %i.ik = shufflevector <4 x float> %i.ij, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.il = fadd reassoc nsz arcp contract afn <4 x float> %i.ig, splat (float f0xBC911AA6)
  %i.im = select <2 x i1> %i.hx, <2 x float> %i.ie, <2 x float> %i.ih
  %i.in = shufflevector <2 x float> %i.im, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.io = select <4 x i1> %i.ii, <4 x float> %i.ik, <4 x float> %i.il ; 2 uses
  %i.ip = shufflevector <4 x float> <float f0x404162F2, float f0x3FF54420, float f0x3D8E11AE, float poison>, <4 x float> %i.in, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.iq = fmul reassoc nsz arcp contract afn <4 x float> %i.ip, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 9.642000e-01> ; 2 uses
  %i.ir = fmul reassoc nsz arcp contract afn <4 x float> %i.io, <float f0xBFCEF57D, float f0xBF719831, float f0xBE6A7CB9, float f0x3F532CA5>
  %i.is = shufflevector <4 x float> %i.io, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.it = fmul reassoc nsz arcp contract afn <4 x float> %i.is, <float f0xBECF35E2, float f0x3CE2116F, float f0x3F94602A, float 0.000000e+00> ; 2 uses
  %i.iu = fmul reassoc nsz arcp contract afn <4 x float> %i.in, %i.iq
  %i.iv = fadd reassoc nsz arcp contract afn <4 x float> %i.in, %i.iq
  %i.iw = shufflevector <4 x float> %i.iu, <4 x float> %i.iv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ix = fadd reassoc nsz arcp contract afn <4 x float> %i.iw, %i.ir ; 2 uses
  %i.iy = fadd reassoc nsz arcp contract afn <4 x float> %i.ix, %i.it
  %i.iz = fmul reassoc nsz arcp contract afn <4 x float> %i.ix, %i.it
  %i.ja = shufflevector <4 x float> %i.iy, <4 x float> %i.iz, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.ja, ptr %i.hj, align 16, !tbaa !15
  %i.jb = add nuw i64 %.044.i.i.i, 4              ; 2 uses
  %i.jc = icmp ult i64 %i.jb, %i.al
  br i1 %i.jc, label %.lr.ph46.i.i.i, label %detail_enhance.exit.i.i, !llvm.loop !531

detail_enhance.exit.i.i:                          ; preds = %.lr.ph46.i.i.i, %bb.t, %gamma_correct.exit.i.i
  %i.jd = shl nsw i64 %i.ad, 3
  %i.je = mul i64 %i.jd, %i.ae                    ; 3 uses
  %i.jf = tail call noalias ptr @malloc(i64 noundef %i.je) #33 ; 16 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %line_detect.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %detail_enhance.exit.i.i
  %i.jh = mul nsw i64 %i.ae, %i.ad                ; 9 uses
  %.not.i192.i.i = icmp eq i64 %i.jh, 0           ; 2 uses
  br i1 %.not.i192.i.i, label %rgb2grey256.exit.i.i, label %.lr.ph.i193.i.i.preheader

.lr.ph.i193.i.i.preheader:                        ; preds = %bb.u
  %min.iters.check155 = icmp ult i64 %i.jh, 5
  br i1 %min.iters.check155, label %.lr.ph.i193.i.i.preheader234, label %vector.ph156

vector.ph156:                                     ; preds = %.lr.ph.i193.i.i.preheader
  %i.ji = and i64 %i.jh, 3                        ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 0
  %i.jk = select i1 %i.jj, i64 4, i64 %i.ji
  %n.vec157 = sub i64 %i.jh, %i.jk                ; 2 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next164, %vector.body158 ] ; 3 uses
  %i.jl = shl i64 %index159, 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.jl
  %wide.vec160 = load <16 x float>, ptr %i.jm, align 64, !tbaa !15 ; 3 uses
  %strided.vec161 = shufflevector <16 x float> %wide.vec160, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec162 = shufflevector <16 x float> %wide.vec160, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec163 = shufflevector <16 x float> %wide.vec160, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.jn = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec161, splat (float 3.000000e-01)
  %i.jo = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec162, splat (float 5.900000e-01)
  %i.jp = fadd reassoc nsz arcp contract afn <4 x float> %i.jo, %i.jn
  %i.jq = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec163, splat (float 1.100000e-01)
  %i.jr = fadd reassoc nsz arcp contract afn <4 x float> %i.jp, %i.jq
  %i.js = fpext reassoc nsz arcp contract afn <4 x float> %i.jr to <4 x double>
  %i.jt = fmul reassoc nsz arcp contract afn <4 x double> %i.js, splat (double 2.560000e+02)
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %index159
  store <4 x double> %i.jt, ptr %i.ju, align 8, !tbaa !166
  %index.next164 = add nuw i64 %index159, 4       ; 2 uses
  %i.jv = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.jv, label %.lr.ph.i193.i.i.preheader234, label %vector.body158, !llvm.loop !532

.lr.ph.i193.i.i.preheader234:                     ; preds = %vector.body158, %.lr.ph.i193.i.i.preheader
  %.012.i.i.i.ph = phi i64 [ 0, %.lr.ph.i193.i.i.preheader ], [ %n.vec157, %vector.body158 ]
  br label %.lr.ph.i193.i.i

.lr.ph.i193.i.i:                                  ; preds = %.lr.ph.i193.i.i.preheader234, %.lr.ph.i193.i.i
  %.012.i.i.i = phi i64 [ %i.kk, %.lr.ph.i193.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i193.i.i.preheader234 ] ; 3 uses
  %.idx.i.i.i = shl i64 %.012.i.i.i, 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i.i ; 3 uses
  %i.jx = load float, ptr %i.jw, align 16, !tbaa !15
  %i.jy = fmul reassoc nsz arcp contract afn float %i.jx, 3.000000e-01
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !15
  %i.kb = fmul reassoc nsz arcp contract afn float %i.ka, 5.900000e-01
  %i.kc = fadd reassoc nsz arcp contract afn float %i.kb, %i.jy
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.ke = load float, ptr %i.kd, align 8, !tbaa !15
  %i.kf = fmul reassoc nsz arcp contract afn float %i.ke, 1.100000e-01
  %i.kg = fadd reassoc nsz arcp contract afn float %i.kc, %i.kf
  %i.kh = fpext reassoc nsz arcp contract afn float %i.kg to double
  %i.ki = fmul reassoc nsz arcp contract afn double %i.kh, 2.560000e+02
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.012.i.i.i
  store double %i.ki, ptr %i.kj, align 8, !tbaa !166
  %i.kk = add nuw i64 %.012.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.kk, %i.jh
  br i1 %exitcond.not.i.i.i, label %rgb2grey256.exit.i.i, label %.lr.ph.i193.i.i, !llvm.loop !533

rgb2grey256.exit.i.i:                             ; preds = %.lr.ph.i193.i.i, %bb.u
  %i.kl = and i32 %1, 1
  %.not186.i.i = icmp eq i32 %i.kl, 0
  br i1 %.not186.i.i, label %edge_enhance.exit.i.i, label %bb.v

bb.v:                                             ; preds = %rgb2grey256.exit.i.i
  %i.km = tail call noalias ptr @malloc(i64 noundef %i.je) #33 ; 6 uses
  %cond.i.i.i = icmp eq ptr %i.km, null
  br i1 %cond.i.i.i, label %edge_enhance.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kn = tail call noalias ptr @malloc(i64 noundef %i.je) #33 ; 5 uses
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %.sink.split.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @edge_enhance_1d(ptr noundef nonnull readonly %i.jf, ptr noundef %i.km, i32 noundef %i.aa, i32 noundef %i.z, i32 noundef 256)
  tail call fastcc void @edge_enhance_1d(ptr noundef nonnull readonly %i.jf, ptr noundef %i.kn, i32 noundef %i.aa, i32 noundef %i.z, i32 noundef 512)
  br i1 %.not.i192.i.i, label %._crit_edge.i198.i.i, label %.lr.ph.i196.i.i.preheader

.lr.ph.i196.i.i.preheader:                        ; preds = %bb.x
  %min.iters.check168 = icmp ult i64 %i.jh, 4
  br i1 %min.iters.check168, label %.lr.ph.i196.i.i.preheader233, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph.i196.i.i.preheader
  %n.vec170 = and i64 %i.jh, -4                   ; 3 uses
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph169
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next174, %vector.body171 ] ; 4 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %index172
  %wide.load = load <4 x double>, ptr %i.kp, align 8, !tbaa !166 ; 2 uses
  %i.kq = fmul reassoc nsz arcp contract afn <4 x double> %wide.load, %wide.load
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %index172
  %wide.load173 = load <4 x double>, ptr %i.kr, align 8, !tbaa !166 ; 2 uses
  %i.ks = fmul reassoc nsz arcp contract afn <4 x double> %wide.load173, %wide.load173
  %i.kt = fadd reassoc nsz arcp contract afn <4 x double> %i.ks, %i.kq
  %i.ku = tail call reassoc nsz arcp contract afn <4 x double> @llvm.sqrt.v4f64(<4 x double> %i.kt)
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %index172
  store <4 x double> %i.ku, ptr %i.kv, align 8, !tbaa !166
  %index.next174 = add nuw i64 %index172, 4       ; 2 uses
  %i.kw = icmp eq i64 %index.next174, %n.vec170
  br i1 %i.kw, label %middle.block175, label %vector.body171, !llvm.loop !534

middle.block175:                                  ; preds = %vector.body171
  %cmp.n = icmp eq i64 %i.jh, %n.vec170
  br i1 %cmp.n, label %._crit_edge.i198.i.i, label %.lr.ph.i196.i.i.preheader233

.lr.ph.i196.i.i.preheader233:                     ; preds = %.lr.ph.i196.i.i.preheader, %middle.block175
  %.039.i.i.i.ph = phi i64 [ 0, %.lr.ph.i196.i.i.preheader ], [ %n.vec170, %middle.block175 ]
  br label %.lr.ph.i196.i.i

._crit_edge.i198.i.i:                             ; preds = %.lr.ph.i196.i.i, %middle.block175, %bb.x
  tail call void @free(ptr noundef nonnull %i.km) #34
  br label %.sink.split.i.i.i

.lr.ph.i196.i.i:                                  ; preds = %.lr.ph.i196.i.i.preheader233, %.lr.ph.i196.i.i
  %.039.i.i.i = phi i64 [ %i.lg, %.lr.ph.i196.i.i ], [ %.039.i.i.i.ph, %.lr.ph.i196.i.i.preheader233 ] ; 4 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %.039.i.i.i
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !166 ; 2 uses
  %i.kz = fmul reassoc nsz arcp contract afn double %i.ky, %i.ky
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %.039.i.i.i
  %i.lb = load double, ptr %i.la, align 8, !tbaa !166 ; 2 uses
  %i.lc = fmul reassoc nsz arcp contract afn double %i.lb, %i.lb
  %i.ld = fadd reassoc nsz arcp contract afn double %i.lc, %i.kz
  %i.le = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.ld)
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.039.i.i.i
  store double %i.le, ptr %i.lf, align 8, !tbaa !166
  %i.lg = add nuw i64 %.039.i.i.i, 1              ; 2 uses
  %exitcond.not.i197.i.i = icmp eq i64 %i.lg, %i.jh
  br i1 %exitcond.not.i197.i.i, label %._crit_edge.i198.i.i, label %.lr.ph.i196.i.i, !llvm.loop !535

.sink.split.i.i.i:                                ; preds = %._crit_edge.i198.i.i, %bb.w
  %.sink.i.i.i = phi ptr [ %i.kn, %._crit_edge.i198.i.i ], [ %i.km, %bb.w ]
  tail call void @free(ptr noundef nonnull %.sink.i.i.i) #34
  br label %edge_enhance.exit.i.i

edge_enhance.exit.i.i:                            ; preds = %.sink.split.i.i.i, %bb.v, %rgb2grey256.exit.i.i
  %i.lh = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #33 ; 9 uses
  %i.li = icmp eq ptr %i.lh, null
  br i1 %i.li, label %bb.y, label %bb.z

bb.y:                                             ; preds = %edge_enhance.exit.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.z:                                             ; preds = %edge_enhance.exit.i.i
  store i32 0, ptr %i.lh, align 8, !tbaa !548
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 4 ; 3 uses
  store i32 1, ptr %i.lj, align 4, !tbaa !549
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 2 uses
  store i32 7, ptr %i.lk, align 8, !tbaa !550
  %i.ll = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #33 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 16 ; 4 uses
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !551
  %i.ln = icmp eq ptr %i.ll, null
  br i1 %i.ln, label %bb.aa, label %new_ntuple_list.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

new_ntuple_list.exit.i.i.i:                       ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.lo = icmp slt i32 %i.aa, 1
  %i.lp = icmp slt i32 %i.z, 1
  %or.cond3.i.i.i = or i1 %i.lo, %i.lp
  br i1 %or.cond3.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %new_ntuple_list.exit.i.i.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.108) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.ac:                                            ; preds = %new_ntuple_list.exit.i.i.i
  %i.lq = uitofp reassoc nsz arcp contract afn nneg i32 %i.aa to double
end_hunk_0
