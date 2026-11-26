Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texturesys?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 117
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffff:bb.a
  %i.av = insertelement <2 x float> %i.au, float %2, i64 1 ; 2 uses
  %i.aw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.av, <2 x float> %i.at) ; 3 uses
  %i.ax = fcmp olt <2 x float> %i.aw, splat (float 1.000000e-16) ; 3 uses
  %i.ay = extractelement <2 x i1> %i.ax, i64 1
  br i1 %i.ay, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127
  %i.az = extractelement <2 x i1> %i.ax, i64 0
  br i1 %i.az, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = extractelement <2 x float> %i.aw, i64 0
  %i.bb = call float @llvm.sqrt.f32(float %i.ba)
  %i.bc = fdiv float f0x322BCC77, %i.bb           ; 2 uses
  %i.bd = fmul float %5, %i.bc
  %i.be = fneg float %4
  %i.bf = fmul float %i.bc, %i.be
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127
  %i.bg = extractelement <2 x i1> %i.ax, i64 0
  br i1 %i.bg, label %bb.i, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.i:                                             ; preds = %bb.h
  %i.bh = extractelement <2 x float> %i.aw, i64 1
  %i.bi = call float @llvm.sqrt.f32(float %i.bh)
  %i.bj = fdiv float f0x322BCC77, %i.bi           ; 2 uses
  %i.bk = fneg float %3
  %i.bl = fmul float %i.bj, %i.bk
  %i.bm = fmul float %2, %i.bj
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0170 = phi float [ %5, %bb.h ], [ %5, %bb.g ], [ %i.bm, %bb.i ], [ f0x322BCC77, %bb.f ] ; 2 uses
  %.0169 = phi float [ %4, %bb.h ], [ %4, %bb.g ], [ %i.bl, %bb.i ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %.0168 = phi float [ %3, %bb.h ], [ %i.bf, %bb.g ], [ %3, %bb.i ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %.0167 = phi float [ %2, %bb.h ], [ %i.bd, %bb.g ], [ %2, %bb.i ], [ f0x322BCC77, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #3
  call void @_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf(float noundef %.0167, float noundef %.0168, float noundef %.0169, float noundef %.0170, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull %i.g)
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.62, i64 noundef 16) ; 0 uses
  %i.bo = load float, ptr %i.d, align 4, !tbaa !265
  %i.bp = fpext float %i.bo to double
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.bp) ; 2 uses
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str.63, i64 noundef 8) ; 0 uses
  %i.bs = load float, ptr %i.e, align 4, !tbaa !265
  %i.bt = fpext float %i.bs to double
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, double noundef %i.bt) ; 2 uses
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.64, i64 noundef 8) ; 0 uses
  %i.bw = load float, ptr %i.f, align 4, !tbaa !265
  %i.bx = fpext float %i.bw to double
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, double noundef %i.bx)
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.41, i64 noundef 1) ; 0 uses
  %i.ca = fadd float %6, %7
  %i.cb = fcmp une float %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.j, label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit
  %i.cc = load float, ptr %i.f, align 4, !tbaa !265 ; 3 uses
  %i.cd = fmul float %i.cc, f0x3EA2F983           ; 2 uses
  %i.ce = call float @llvm.copysign.f32(float 5.000000e-01, float %i.cd)
  %i.cf = fadd float %i.cd, %i.ce
  %i.cg = fptosi float %i.cf to i32               ; 2 uses
  %i.ch = sitofp i32 %i.cg to float               ; 4 uses
  %i.ci = fmul nnan contract float %i.ch, f0x40490000
  %i.cj = fsub contract float %i.cc, %i.ci
  %i.ck = fmul nnan contract float %i.ch, f0x3A7DA000
  %i.cl = fsub contract float %i.cj, %i.ck
  %i.cm = fmul nnan contract float %i.ch, f0x34222000
  %i.cn = fsub contract float %i.cl, %i.cm
  %i.co = fmul nnan contract float %i.ch, f0x2CB4611A
  %i.cp = fsub contract float %i.cn, %i.co
  %i.cq = fadd float %i.cp, f0xBFC90FDB
  %i.cr = fadd float %i.cq, f0x3FC90FDB           ; 4 uses
  %i.cs = fmul float %i.cr, %i.cr                 ; 9 uses
  %i.ct = and i32 %i.cg, 1
  %.not.i.i = icmp eq i32 %i.ct, 0                ; 2 uses
  %i.cu = fneg float %i.cr
  %.0.i.i = select i1 %.not.i.i, float %i.cr, float %i.cu ; 2 uses
  %i.cv = fmul contract float %i.cs, f0x362F0A87
  %i.cw = fadd contract float %i.cv, f0xB94FBAEB
  %i.cx = fmul contract float %i.cs, %i.cw
  %i.cy = fadd contract float %i.cx, f0x3C088777
  %i.cz = fmul contract float %i.cs, %i.cy
  %i.da = fadd contract float %i.cz, f0xBE2AAAA6
  %i.db = fmul float %.0.i.i, %i.da
  %i.dc = fmul contract float %i.cs, %i.db
  %i.dd = fadd contract float %.0.i.i, %i.dc
  %i.de = fmul contract float %i.cs, f0x3491ED89
  %i.df = fsub contract float f0x37D0078B, %i.de
  %i.dg = fmul contract float %i.cs, %i.df
  %i.dh = fadd contract float %i.dg, f0xBAB60B58
  %i.di = fmul contract float %i.cs, %i.dh
  %i.dj = fadd contract float %i.di, f0x3D2AAAAA
  %i.dk = fmul contract float %i.cs, %i.dj
  %i.dl = fadd contract float %i.dk, -5.000000e-01
  %i.dm = fmul contract float %i.cs, %i.dl
  %i.dn = fadd contract float %i.dm, 1.000000e+00 ; 2 uses
  %i.do = fneg float %i.dn
  %storemerge.i.i = select i1 %.not.i.i, float %i.dn, float %i.do
  %i.dp = load float, ptr %i.d, align 4, !tbaa !265
  %i.dq = load float, ptr %i.e, align 4, !tbaa !265
  %i.dr = insertelement <2 x float> poison, float %storemerge.i.i, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.dd, i64 1 ; 2 uses
  %i.dt = fcmp oge <2 x float> %i.ds, splat (float -1.000000e+00)
  %i.du = select <2 x i1> %i.dt, <2 x float> %i.ds, <2 x float> splat (float -1.000000e+00) ; 2 uses
  %i.dv = fcmp ogt <2 x float> %i.du, splat (float 1.000000e+00)
  %i.dw = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.du)
  %i.dx = select <2 x i1> %i.dv, <2 x float> splat (float 1.000000e+00), <2 x float> %i.dw ; 2 uses
  %i.dy = insertelement <2 x float> poison, float %7, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eb = fmul <2 x float> %i.dz, %i.ea
  %i.ec = insertelement <2 x float> poison, float %6, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.dx, <2 x float> %i.eb)
  %i.ef = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %i.dq, i64 1
  %i.eh = fadd <2 x float> %i.eg, %i.ee           ; 2 uses
  %i.ei = extractelement <2 x float> %i.eh, i64 0 ; 3 uses
  store float %i.ei, ptr %i.d, align 4, !tbaa !265
  %i.ej = extractelement <2 x float> %i.eh, i64 1 ; 3 uses
  store float %i.ej, ptr %i.e, align 4, !tbaa !265
  %i.ek = fcmp ogt float %i.ej, %i.ei
  br i1 %i.ek, label %bb.k, label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

bb.k:                                             ; preds = %bb.j
  store float %i.ei, ptr %i.e, align 4, !tbaa !265
  store float %i.ej, ptr %i.d, align 4, !tbaa !265
  %i.el = fpext float %i.cc to double
  %i.em = fadd double %i.el, f0x3FF921FB54442D18
  %i.en = fptrunc double %i.em to float
  store float %i.en, ptr %i.f, align 4, !tbaa !265
  br label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit: ; preds = %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, %bb.j, %bb.k
  %i.eo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.65, i64 noundef 7) ; 0 uses
  %i.ep = fpext float %6 to double
  %i.eq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.ep) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !273
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !279
  %i.es = getelementptr i8, ptr %i.er, i64 -24
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = getelementptr inbounds i8, ptr %i.eq, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !1120
  %.not.i128 = icmp eq i64 %i.ew, 0
  br i1 %.not.i128, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit
  %i.ex = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit130

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit
  %i.ey = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit130

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit130: ; preds = %bb.l, %bb.m
  %.0.i129 = phi ptr [ %i.ex, %bb.l ], [ %i.eq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ez = fpext float %7 to double
  %i.fa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i129, double noundef %i.ez) ; 2 uses
  %i.fb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef nonnull @.str.66, i64 noundef 13) ; 0 uses
  %i.fc = load float, ptr %i.d, align 4, !tbaa !265
  %i.fd = fpext float %i.fc to double
  %i.fe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, double noundef %i.fd) ; 2 uses
  %i.ff = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef nonnull @.str.63, i64 noundef 8) ; 0 uses
  %i.fg = load float, ptr %i.e, align 4, !tbaa !265
  %i.fh = fpext float %i.fg to double
  %i.fi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, double noundef %i.fh)
  %i.fj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull @.str.42, i64 noundef 2) ; 0 uses
  %i.fk = load float, ptr %i.d, align 4, !tbaa !265 ; 3 uses
  %i.fl = load float, ptr %i.e, align 4, !tbaa !265 ; 3 uses
  %i.fm = fdiv float %i.fk, %i.fl                 ; 2 uses
  %.inv.i131 = fcmp oge float %i.fm, 1.000000e+00
  %.0.i.i132 = select i1 %.inv.i131, float %i.fm, float 1.000000e+00 ; 2 uses
  %i.fn = fcmp ogt float %.0.i.i132, 1.000000e+06
  %.1.i.i = select i1 %i.fn, float 1.000000e+06, float %.0.i.i132 ; 2 uses
  %i.fo = fcmp ogt float %.1.i.i, 3.200000e+01
  br i1 %i.fo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit130
  %i.fp = call float @llvm.fmuladd.f32(float %i.fl, float 3.200000e+01, float %i.fk)
  %i.fq = fmul float %i.fp, 5.000000e-01          ; 3 uses
  store float %i.fq, ptr %i.d, align 4, !tbaa !265
  %i.fr = fmul float %i.fq, 3.125000e-02          ; 2 uses
  store float %i.fr, ptr %i.e, align 4, !tbaa !265
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit130, %bb.n
  %i.fs = phi float [ %i.fr, %bb.n ], [ %i.fl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit130 ]
  %i.ft = phi float [ %i.fq, %bb.n ], [ %i.fk, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit130 ]
  %.0.i133 = phi float [ 3.200000e+01, %bb.n ], [ %.1.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit130 ]
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !328
  %i.fw = and i32 %i.fv, 2
  %i.fx = icmp ne i32 %i.fw, 0
  %i.fy = alloca [1024 x i8], align 16            ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #3
  %i.ga = load float, ptr %i.f, align 4, !tbaa !265
  %i.gb = call noundef i32 @_ZN11OpenImageIO4v3_124compute_ellipse_samplingEffffRfS1_S1_PfS2_bf(float noundef %.0.i133, float noundef %i.ga, float noundef %i.ft, float noundef %i.fs, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull %i.fy, ptr noundef nonnull %i.fz, i1 noundef zeroext %i.fx, float noundef 5.000000e-01) ; 4 uses
  %i.gc = load float, ptr %i.h, align 4, !tbaa !265
  %i.gd = fmul float %i.gc, 5.000000e-01
  store float %i.gd, ptr %i.h, align 4, !tbaa !265
  %i.ge = load float, ptr %i.i, align 4, !tbaa !265
  %i.gf = fmul float %i.ge, 5.000000e-01
  store float %i.gf, ptr %i.i, align 4, !tbaa !265
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #3
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %8, i32 noundef 256, i32 noundef 256, i32 noundef 3, i64 258) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #3
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1ERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(160) %8, i32 noundef 1)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  store i32 -2147483648, ptr %10, align 8, !tbaa !487
  %i.gg = getelementptr inbounds nuw i8, ptr %10, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.gg, i8 0, i64 28, i1 false)
  %i.gh = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4fillERNS0_8ImageBufENS0_4spanIKfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull @_ZZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffffE4grey, i64 3, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %10, i32 noundef 0)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader:                                       ; preds = %bb.p
  %i.gi = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.s

bb.q:                                             ; preds = %bb.t
  %i.gk = fmul float %.0167, 1.000000e+02
  %i.gl = fptosi float %i.gk to i32
  %i.gm = add nsw i32 %i.gl, 128
  %i.gn = fmul float %.0168, 1.000000e+02
  %i.go = fptosi float %i.gn to i32
  %i.gp = sub nsw i32 128, %i.go
  store ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffffE3red, ptr %11, align 8, !tbaa !1122
  %i.gq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 3, ptr %i.gq, align 8, !tbaa !1123
  store i32 -2147483648, ptr %12, align 8, !tbaa !487
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.gr, i8 0, i64 28, i1 false)
  %i.gs = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo11render_lineERNS0_8ImageBufEiiiiNS0_4spanIKfLm18446744073709551615EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 128, i32 noundef 128, i32 noundef %i.gm, i32 noundef %i.gp, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.195") align 8 %11, i1 noundef zeroext false, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %12, i32 noundef 0)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.r:                                             ; preds = %bb.o
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.s:                                             ; preds = %.preheader, %bb.t
  %.0109175 = phi i32 [ 0, %.preheader ], [ %i.gy, %bb.t ] ; 3 uses
  %i.gu = add nsw i32 %.0109175, -128
  %i.gv = sitofp i32 %i.gu to float
  %i.gw = fdiv float %i.gv, 1.000000e+02          ; 3 uses
  %i.gx = sub nuw nsw i32 255, %.0109175
  br label %bb.u

bb.t:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit
  %i.gy = add nuw nsw i32 %.0109175, 1            ; 2 uses
  %exitcond185.not = icmp eq i32 %i.gy, 256
  br i1 %exitcond185.not, label %bb.q, label %bb.s, !llvm.loop !1114

bb.u:                                             ; preds = %bb.s, %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit
  %.0108174 = phi i32 [ 0, %bb.s ], [ %i.hm, %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit ] ; 3 uses
  %i.gz = add nsw i32 %.0108174, -128
  %i.ha = sitofp i32 %i.gz to float
  %i.hb = fdiv float %i.ha, 1.000000e+02          ; 3 uses
  %i.hc = load float, ptr %i.g, align 16, !tbaa !265
  %i.hd = fmul float %i.hb, %i.hc
  %i.he = load float, ptr %i.gi, align 4, !tbaa !265
  %i.hf = fmul float %i.hb, %i.he
  %i.hg = fmul float %i.gw, %i.hf
  %i.hh = call float @llvm.fmuladd.f32(float %i.hd, float %i.hb, float %i.hg)
  %i.hi = load float, ptr %i.gj, align 8, !tbaa !265
  %i.hj = fmul float %i.gw, %i.hi
  %i.hk = call float @llvm.fmuladd.f32(float %i.hj, float %i.gw, float %i.hh)
  %i.hl = fcmp olt float %i.hk, 1.000000e+00
  br i1 %i.hl, label %bb.v, label %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiiNS0_4spanIKfLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %.0108174, i32 noundef %i.gx, i32 noundef 0, ptr nonnull @_ZZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffffE4dark, i64 3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit: ; preds = %bb.v, %bb.u
  %i.hm = add nuw nsw i32 %.0108174, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.hm, 256
  br i1 %exitcond.not, label %bb.t, label %bb.u, !llvm.loop !1115

bb.w:                                             ; preds = %bb.q
  %i.hn = fmul float %.0169, 1.000000e+02
  %i.ho = fptosi float %i.hn to i32
  %i.hp = add nsw i32 %i.ho, 128
  %i.hq = fmul float %.0170, 1.000000e+02
  %i.hr = fptosi float %i.hq to i32
  %i.hs = sub nsw i32 128, %i.hr
  store ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffffE5green, ptr %13, align 8, !tbaa !1122
  %i.ht = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 3, ptr %i.ht, align 8, !tbaa !1123
  store i32 -2147483648, ptr %14, align 8, !tbaa !487
  %i.hu = getelementptr inbounds nuw i8, ptr %14, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.hu, i8 0, i64 28, i1 false)
  %i.hv = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo11render_lineERNS0_8ImageBufEiiiiNS0_4spanIKfLm18446744073709551615EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 128, i32 noundef 128, i32 noundef %i.hp, i32 noundef %i.hs, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.195") align 8 %13, i1 noundef zeroext false, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %14, i32 noundef 0)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.hw = load float, ptr %i.d, align 4, !tbaa !265
  %i.hx = fmul float %i.hw, 1.000000e+02          ; 2 uses
  %i.hy = load float, ptr %i.f, align 4, !tbaa !265
  %sincos = call { float, float } @llvm.sincos.f32(float %i.hy) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.hz = fmul float %i.hx, %cos
  %i.ia = fptosi float %i.hz to i32
  %i.ib = add nsw i32 %i.ia, 128
  %i.ic = fmul float %i.hx, %sin
  %i.id = fptosi float %i.ic to i32
  %i.ie = sub nsw i32 128, %i.id
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #3
  store <2 x float> splat (float 1.000000e+00), ptr %i.k, align 8, !tbaa !265
  %i.if = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store float 0.000000e+00, ptr %i.if, align 8, !tbaa !265
  store ptr %i.k, ptr %15, align 8, !tbaa !1122
  %i.ig = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 3, ptr %i.ig, align 8, !tbaa !1123
  store i32 -2147483648, ptr %16, align 8, !tbaa !487
  %i.ih = getelementptr inbounds nuw i8, ptr %16, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ih, i8 0, i64 28, i1 false)
  %i.ii = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo11render_lineERNS0_8ImageBufEiiiiNS0_4spanIKfLm18446744073709551615EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 128, i32 noundef 128, i32 noundef %i.ib, i32 noundef %i.ie, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.195") align 8 %15, i1 noundef zeroext false, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %16, i32 noundef 0)
          to label %bb.y unwind label %bb.aa      ; 0 uses

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #3
  %i.ij = load float, ptr %i.e, align 4, !tbaa !265
  %i.ik = fmul float %i.ij, 1.000000e+02          ; 2 uses
  %i.il = load float, ptr %i.f, align 4, !tbaa !265
  %sincos117 = call { float, float } @llvm.sincos.f32(float %i.il) ; 2 uses
  %sin118 = extractvalue { float, float } %sincos117, 0
  %cos119 = extractvalue { float, float } %sincos117, 1
  %i.im = fneg float %sin118
  %i.in = fmul float %i.ik, %i.im
  %i.io = fptosi float %i.in to i32
  %i.ip = add nsw i32 %i.io, 128
  %i.iq = fmul float %i.ik, %cos119
  %i.ir = fptosi float %i.iq to i32
  %i.is = sub nsw i32 128, %i.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #3
  store <2 x float> zeroinitializer, ptr %i.l, align 8, !tbaa !265
  %i.it = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store float 1.000000e+00, ptr %i.it, align 8, !tbaa !265
  store ptr %i.l, ptr %17, align 8, !tbaa !1122
  %i.iu = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 3, ptr %i.iu, align 8, !tbaa !1123
  store i32 -2147483648, ptr %18, align 8, !tbaa !487
  %i.iv = getelementptr inbounds nuw i8, ptr %18, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.iv, i8 0, i64 28, i1 false)
  %i.iw = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo11render_lineERNS0_8ImageBufEiiiiNS0_4spanIKfLm18446744073709551615EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 128, i32 noundef 128, i32 noundef %i.ip, i32 noundef %i.is, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.195") align 8 %17, i1 noundef zeroext false, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %18, i32 noundef 0)
          to label %bb.z unwind label %bb.ab      ; 0 uses

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #3
  %i.ix = icmp sgt i32 %i.gb, 0
  br i1 %i.ix, label %.lr.ph.preheader, label %._crit_edge181

.lr.ph.preheader:                                 ; preds = %bb.z
  %wide.trip.count = zext nneg i32 %i.gb to i64   ; 3 uses
  %i.iy = icmp ult i32 %i.gb, 8
  br i1 %i.iy, label %.lr.ph.preheader218, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph.epil.preheader, %.lr.ph.preheader.new
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader.new ], [ %index.next, %.lr.ph.epil.preheader ] ; 3 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %31, %.lr.ph.epil.preheader ] ; 3 uses
  %vec.phi216 = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %32, %.lr.ph.epil.preheader ] ; 3 uses
  %25 = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv.epil.init ; 2 uses
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %wide.load = load <4 x float>, ptr %25, align 16, !tbaa !265
  %wide.load217 = load <4 x float>, ptr %26, align 16, !tbaa !265
  %27 = freeze <4 x float> %wide.load             ; 3 uses
  %28 = freeze <4 x float> %wide.load217          ; 3 uses
  %29 = fcmp olt <4 x float> %27, %vec.phi
  %30 = fcmp olt <4 x float> %28, %vec.phi216
  %31 = select <4 x i1> %29, <4 x float> %vec.phi, <4 x float> %27 ; 2 uses
  %32 = select <4 x i1> %30, <4 x float> %vec.phi216, <4 x float> %28 ; 2 uses
  %index.next = add nuw i64 %indvars.iv.epil.init, 8 ; 2 uses
  %33 = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %27, /* (nan nzero) */ i32 35)
  %34 = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %28, /* (nan nzero) */ i32 35)
  %35 = or <4 x i1> %33, %34
  %36 = bitcast <4 x i1> %35 to i4
  %lcmp.mod220 = icmp ne i4 %36, 0                ; 5 uses
  %37 = icmp eq i64 %index.next, %unroll_iter
  %38 = or i1 %lcmp.mod220, %37
  br i1 %38, label %.lr.ph.epil, label %.lr.ph.epil.preheader, !llvm.loop !1116

.lr.ph.epil:                                      ; preds = %.lr.ph.epil.preheader
  %39 = select i1 %lcmp.mod220, <4 x float> %vec.phi, <4 x float> %31
  %40 = select i1 %lcmp.mod220, <4 x float> %vec.phi216, <4 x float> %32
  %41 = select i1 %lcmp.mod220, i64 %indvars.iv.epil.init, i64 %unroll_iter
  %rdx.minmax = call nnan <4 x float> @llvm.maxnum.v4f32(<4 x float> %39, <4 x float> %40)
  %42 = call nnan float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax) ; 2 uses
  %cmp.n = icmp ne i64 %unroll_iter, %wide.trip.count
  %.not = or i1 %cmp.n, %lcmp.mod220
  br i1 %.not, label %.lr.ph.preheader218, label %.lr.ph180

.lr.ph.preheader218:                              ; preds = %.lr.ph.preheader, %.lr.ph.epil
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %41, %.lr.ph.epil ]
  %.0166176.ph = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %42, %.lr.ph.epil ]
  br label %.lr.ph

.lr.ph180:                                        ; preds = %.lr.ph, %.lr.ph.epil
  %.sroa.speculated.lcssa = phi float [ %42, %.lr.ph.epil ], [ %.sroa.speculated.3, %.lr.ph ]
  %i.iz = load float, ptr %i.e, align 4, !tbaa !265
  %i.ja = fmul float %i.iz, 1.000000e+02
  %i.jb = fptosi float %i.ja to i32               ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.m, ptr %19, align 8, !tbaa !1122
  %i.jd = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 3, ptr %i.jd, align 8, !tbaa !1123
  store i32 -2147483648, ptr %20, align 8, !tbaa !487
  %i.je = getelementptr inbounds nuw i8, ptr %20, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.je, i8 0, i64 28, i1 false)
  %i.jf = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %22, i64 4
  %wide.trip.count191 = zext nneg i32 %i.gb to i64
  br label %bb.ac

bb.aa:                                            ; preds = %bb.x
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #3
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.y
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #3
  br label %.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %.lr.ph.preheader218, %.lr.ph
  %indvars.iv = phi i64 [ %niter.next.3, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader218 ] ; 2 uses
  %.0166176 = phi float [ %.sroa.speculated.3, %.lr.ph ], [ %.0166176.ph, %.lr.ph.preheader218 ] ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !265 ; 2 uses
  %i.jl = fcmp olt float %i.jk, %.0166176
  %.sroa.speculated.3 = select i1 %i.jl, float %.0166176, float %i.jk ; 2 uses
  %niter.next.3 = add nuw nsw i64 %indvars.iv, 1  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %wide.trip.count
  br i1 %niter.ncmp.3, label %.lr.ph180, label %.lr.ph, !llvm.loop !1117

._crit_edge181:                                   ; preds = %bb.ae, %bb.z
  %i.jm = load ptr, ptr %1, align 8, !tbaa !272
  store ptr %i.jm, ptr %23, align 8, !tbaa !319
  %i.jn = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.jo = load i64, ptr %i.o, align 8, !tbaa !321
  store i64 %i.jo, ptr %i.jn, align 8, !tbaa !320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  %i.jp = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf5writeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescES5_PFbPvfES7_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull dead_on_return %23, i64 256, ptr noundef nonnull dead_on_return %24, ptr noundef null, ptr noundef null)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ac:                                            ; preds = %.lr.ph180, %bb.ae
  %indvars.iv188 = phi i64 [ 0, %.lr.ph180 ], [ %indvars.iv.next189, %bb.ae ] ; 3 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv188
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !265 ; 2 uses
  %i.js = load float, ptr %i.h, align 4, !tbaa !265
  %i.jt = fmul float %i.jr, %i.js
  %i.ju = load float, ptr %i.i, align 4, !tbaa !265
  %i.jv = fmul float %i.jr, %i.ju
  %i.jw = fmul float %i.jt, 1.000000e+02
  %i.jx = fptosi float %i.jw to i32
  %i.jy = add nsw i32 %i.jx, 128                  ; 4 uses
  %i.jz = fmul float %i.jv, 1.000000e+02
  %i.ka = fptosi float %i.jz to i32
  %i.kb = sub nsw i32 128, %i.ka                  ; 4 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv188
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !265
  %i.ke = sub nsw i32 %i.jy, %i.jb
  %i.kf = sub nsw i32 %i.kb, %i.jb
  %i.kg = add nsw i32 %i.jy, %i.jb
  %i.kh = add nsw i32 %i.kb, %i.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #3
  store <2 x float> splat (float 6.500000e-01), ptr %i.m, align 8, !tbaa !265
  store float 6.500000e-01, ptr %i.jc, align 8, !tbaa !265
  %i.ki = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo10render_boxERNS0_8ImageBufEiiiiNS0_4spanIKfLm18446744073709551615EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %i.ke, i32 noundef %i.kf, i32 noundef %i.kg, i32 noundef %i.kh, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.195") align 8 %19, i1 noundef zeroext false, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %20, i32 noundef 0)
          to label %bb.ad unwind label %bb.af     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.kj = fmul float %i.kd, 5.000000e+00
  %i.kk = fdiv float %i.kj, %.sroa.speculated.lcssa
  %i.kl = fptosi float %i.kk to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #3
  %i.km = sdiv i32 %i.kl, 2                       ; 4 uses
  %i.kn = sub nsw i32 %i.jy, %i.km
  %i.ko = sub nsw i32 %i.kb, %i.km
  %i.kp = add nsw i32 %i.km, %i.jy
  %i.kq = add nsw i32 %i.km, %i.kb
  store ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffffE5white, ptr %21, align 8, !tbaa !1122
  store i64 3, ptr %i.jf, align 8, !tbaa !1123
  store i32 -2147483648, ptr %22, align 8, !tbaa !487
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.jg, i8 0, i64 28, i1 false)
  %i.kr = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo10render_boxERNS0_8ImageBufEiiiiNS0_4spanIKfLm18446744073709551615EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %i.kn, i32 noundef %i.ko, i32 noundef %i.kp, i32 noundef %i.kq, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.195") align 8 %21, i1 noundef zeroext true, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %22, i32 noundef 0)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next189, %wide.trip.count191
  br i1 %exitcond192.not, label %._crit_edge181, label %bb.ac, !llvm.loop !1118

bb.af:                                            ; preds = %bb.ac
  %i.ks = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #3
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.v, %bb.w, %bb.q, %bb.p, %._crit_edge181
  %lpad.loopexit.split-lp217 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %._crit_edge181
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #3
  %i.kt = getelementptr inbounds nuw i8, ptr %8, i64 136 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !566 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !567 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ku, %i.kw
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ag, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.kx, %.lr.ph.i.i.i.i ], [ %i.ku, %bb.ag ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i) #3
  %i.kx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.kx, %i.kw
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.kt, align 8, !tbaa !566
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.ag
  %i.ky = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ku, %bb.ag ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !568
  %i.lb = ptrtoint ptr %i.la to i64
  %i.lc = ptrtoint ptr %i.ky to i64
  %i.ld = sub i64 %i.lb, %i.lc
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.ld) #45
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i: ; preds = %bb.ah, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !569 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !570 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.lf, %i.lh
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.ln, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.lf, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.li = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !272 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.lk = icmp eq ptr %i.li, %i.lj
  br i1 %i.lk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.ll = load i64, ptr %i.lj, align 8, !tbaa !273
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.lm) #45
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ln = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.ln, %i.lh
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !10

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.le, align 8, !tbaa !569
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i
  %i.lo = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.lf, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.lo, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.lp = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !571
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.lo to i64
  %i.lt = sub i64 %i.lr, %i.ls
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.lt) #45
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.ai, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !572 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.lv, null
  br i1 %.not.i.i.i7.i, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.lw = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !573
  %i.ly = ptrtoint ptr %i.lx to i64
  %i.lz = ptrtoint ptr %i.lv to i64
  %i.ma = sub i64 %i.ly, %i.lz
  call void @_ZdlPvm(ptr noundef nonnull %i.lv, i64 noundef %i.ma) #45
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  ret void

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.af, %bb.ab, %bb.aa
  %.pn122 = phi { ptr, i32 } [ %i.ks, %bb.af ], [ %i.jh, %bb.aa ], [ %i.ji, %bb.ab ], [ %lpad.loopexit.split-lp217, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #3
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.r
  %.pn122.pn = phi { ptr, i32 } [ %.pn122, %.loopexit.split-lp.loopexit.split-lp ], [ %i.gt, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #3
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %8) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  resume { ptr, i32 } %.pn122.pn
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160), i32 noundef, i32 noundef, i32 noundef, i64) unnamed_addr #22

declare void @_ZN11OpenImageIO4v3_18ImageBufC1ERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(160), i32 noundef) unnamed_addr #9

end_hunk_0
begin_hunk_1_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapIlS8_St4hashIlESt8equal_toIlESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E17insert_value_implEmsjRS9_:bb.a
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !250 ; 2 uses
  %i.ai = icmp eq i16 %i.ah, -1
  br i1 %i.ai, label %._crit_edge, label %bb.b, !llvm.loop !1782

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %storemerge.lcssa = phi i16 [ %storemerge17, %bb.a ], [ %storemerge, %bb.f ]
  %.lcssa = phi ptr [ %i.n, %bb.a ], [ %i.ag, %bb.f ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.ak = load i64, ptr %4, align 8, !tbaa !730
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !730
  %i.al = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32 ; 3 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !323
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !272 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !321 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE25set_value_of_empty_bucketIJS9_EEEvsjDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge
  store ptr %i.an, ptr %i.al, align 8, !tbaa !272
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !273
  store i64 %i.au, ptr %i.am, align 8, !tbaa !273
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE25set_value_of_empty_bucketIJS9_EEEvsjDpOT_.exit

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE25set_value_of_empty_bucketIJS9_EEEvsjDpOT_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !321
  %i.ax = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !321
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !272
  store i64 0, ptr %i.av, align 8, !tbaa !321
  store i8 0, ptr %i.ao, align 8, !tbaa !273
  store i16 %storemerge.lcssa, ptr %.lcssa, align 8, !tbaa !250
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #25

declare noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400)) unnamed_addr #22

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_texturesys.cpp() #42 section ".text.startup" personality ptr @__gxx_personality_v0 !guid !1785 {
vector.ph:
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt12__shared_ptrIN11OpenImageIO4v3_113TextureSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_117shared_texturesysE, ptr nonnull @__dso_handle) #3 ; 0 uses
  store i8 0, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_123shared_texturesys_mutexE, align 1, !tbaa !559
  store <4 x float> splat (float f0x3B808081), ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_17u8scaleE.0, align 16, !tbaa !273
  store <4 x float> splat (float f0x37800080), ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_18u16scaleE.0, align 16, !tbaa !273
  store <4 x i32> zeroinitializer, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE, align 16, !tbaa !273
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE, i64 16), align 16, !tbaa !273
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE, i64 32), align 16, !tbaa !273
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE, i64 48), align 16, !tbaa !273
  store <4 x i32> splat (i32 -1), ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE, i64 64), align 16, !tbaa !273
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 80, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE) ; 0 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next.1, %vector.body ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.c = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.d = uitofp nneg <4 x i32> %step.add to <4 x float>
  %i.e = fmul nnan <4 x float> %i.c, splat (float f0x3B808081)
  %i.f = fmul nnan <4 x float> %i.d, splat (float f0x3B808081)
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl11uchar2floatE, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <4 x float> %i.e, ptr %i.g, align 4, !tbaa !265
  store <4 x float> %i.f, ptr %i.h, align 4, !tbaa !265
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %step.add.1 = add <4 x i32> %vec.ind, splat (i32 12)
  %i.i = uitofp nneg <4 x i32> %vec.ind.next to <4 x float>
  %i.j = uitofp nneg <4 x i32> %step.add.1 to <4 x float>
  %i.k = fmul nnan <4 x float> %i.i, splat (float f0x3B808081)
  %i.l = fmul nnan <4 x float> %i.j, splat (float f0x3B808081)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl11uchar2floatE, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store <4 x float> %i.k, ptr %i.n, align 4, !tbaa !265
  store <4 x float> %i.l, ptr %i.o, align 4, !tbaa !265
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %vec.ind.next.1 = add <4 x i32> %vec.ind, splat (i32 16)
  %i.p = icmp eq i64 %index.next.1, 256
  br i1 %i.p, label %__cxx_global_var_init.7.exit, label %vector.body, !llvm.loop !1784

__cxx_global_var_init.7.exit:                     ; preds = %vector.body
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #44

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i1> @llvm.is.fpclass.v4f32(<4 x float>, i32 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #25

attributes #0 = { nofree nounwind }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold nofree noreturn }
attributes #22 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { cold noreturn }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #41 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nofree nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #45 = { builtin nounwind }
attributes #46 = { noreturn nounwind }
attributes #47 = { builtin allocsize(0) }
attributes #48 = { cold nounwind }
attributes #49 = { noreturn }
attributes #50 = { nounwind willreturn memory(none) }
attributes #51 = { nounwind willreturn memory(read) }
attributes #52 = { nounwind allocsize(0) }

!llvm.module.flags = !{!50, !51}
!llvm.ident = !{!52}
!llvm.errno.tbaa = !{!56}

!0 = distinct !{!0, !274}
!1 = distinct !{ptr @_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{!2, !274}
!3 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!4 = distinct !{!4, !274}
!5 = distinct !{null, null}
!6 = distinct !{!6, !274}
!7 = distinct !{!7, !274}
!8 = distinct !{!8, !274}
!9 = distinct !{!9, !274}
!10 = distinct !{!10, !274}
!11 = distinct !{null, null}
!12 = distinct !{!12, !274}
!13 = distinct !{!13, !274}
!14 = distinct !{!14, !274}
!15 = distinct !{null, null}
!16 = distinct !{null, null, null}
!17 = distinct !{null, null}
!18 = distinct !{!18, !274}
!19 = distinct !{!19, !274}
!20 = distinct !{!20, !274}
!21 = distinct !{!21, !274}
!22 = distinct !{null, null}
!23 = distinct !{null, null}
!24 = distinct !{!24, !274}
!25 = distinct !{null}
!26 = distinct !{null}
!27 = distinct !{!27, !274}
!28 = distinct !{!28, !274}
!29 = distinct !{!29, !274}
!30 = distinct !{!30, !274}
!31 = distinct !{null, null, null, null}
!32 = distinct !{!32, !274}
!33 = distinct !{null, null}
!34 = distinct !{null}
!35 = distinct !{null, null}
!36 = distinct !{null, null, null}
!37 = distinct !{null, null, null, null, null}
!38 = distinct !{!38, !274}
!39 = distinct !{null, null, null, null}
!40 = distinct !{!40, !274}
!41 = distinct !{!41, !274}
!42 = distinct !{null}
!43 = distinct !{null, null, null, null}
!44 = distinct !{null, null, null}
!45 = distinct !{!45, !274}
!46 = distinct !{!46, !274}
!47 = distinct !{null, null, null, null}
!48 = distinct !{null, null, null, null, null}
!49 = distinct !{null, null}
!50 = !{i32 8, !"PIC Level", i32 2}
!51 = !{i32 7, !"uwtable", i32 2}
!52 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!53 = !{!"Simple C++ TBAA"}
!54 = !{!"omnipotent char", !53, i64 0}
!55 = !{!"int", !54, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{i64 7415700050991740653}
!58 = !{i64 656313929130771961}
!59 = !{i64 -1145871562978692041}
!60 = !{i64 4074987725771770844}
!61 = !{i64 1069405855981459787}
!62 = !{i64 3317048516608550322}
!63 = !{i64 -5362081134222080973}
!64 = !{i64 -4757194107503062791}
!65 = !{i64 -594715518883877464}
!66 = !{i64 1807500214907235454}
!67 = !{i64 4029769776489522135}
!68 = !{i64 3601106132145706863}
!69 = !{i64 1902167642931310777}
!70 = !{i64 -2972101071142074491}
!71 = !{i64 5285598135222664028}
!72 = !{i64 -4143978072123112856}
!73 = !{i64 2439655722610343064}
!74 = !{i64 -4175760285663051408}
!75 = !{i64 -6474581798530179709}
!76 = !{i64 2606075554228595096}
!77 = !{i64 6643117493583352254}
!78 = !{i64 -4292133576862563899}
!79 = !{i64 8396643952296860943}
!80 = !{i64 8178372405255742721}
!81 = !{i64 -4217498556674423702}
!82 = !{i64 1993460323169564990}
!83 = !{i64 -1194141113641798557}
!84 = !{i64 5944048748778867212}
!85 = !{i64 7509322890685093039}
!86 = !{i64 3695291707589856969}
!87 = !{i64 4602636967664037451}
!88 = !{i64 -229446904040432717}
!89 = !{i64 -3714737752510988409}
!90 = !{i64 -2414723209811965574}
!91 = !{i64 2572001383852112952}
!92 = !{i64 2678573102130230351}
!93 = !{i64 1505158703475526110}
!94 = !{i64 3930297660993218207}
!95 = !{i64 2266265838684503960}
!96 = !{i64 2155830685252782840}
!97 = !{i64 -7503931186224434254}
!98 = !{i64 9678656491370164}
!99 = !{i64 -7234948262817068390}
!100 = !{i64 6790350077982063988}
!101 = !{i64 843238161092829475}
!102 = !{i64 5533522606700457999}
!103 = !{i64 -3689019000068310859}
!104 = !{i64 5500812360519193892}
!105 = !{i64 -3869777603119398506}
!106 = !{i64 5002468775666175492}
!107 = !{i64 -9134259532881353440}
!108 = !{i64 -1642811687978129236}
!109 = !{i64 -3679427633145107391}
!110 = !{i64 1171168902443677189}
!111 = !{i64 6320392783437912563}
!112 = !{i64 -1346922025390053357}
!113 = !{i64 -1275308413209330272}
!114 = !{i64 -8562773380120720495}
!115 = !{i64 -4312392970699061864}
!116 = !{i64 -8730602075898442935}
!117 = !{i64 1132610789149494344}
!118 = !{i64 2306937289171967000}
!119 = !{i64 -618864713912908830}
!120 = !{i64 8518583193852391236}
!121 = !{i64 -8709579956613391392}
!122 = !{i64 4977657945763518930}
!123 = !{i64 5878429412993229453}
!124 = !{i64 -2561577576779285848}
!125 = !{i64 -1058422810254194677}
!126 = !{i64 -7404539313164907393}
!127 = !{i64 5707527081080051651}
!128 = !{i64 -2308771011581654131}
!129 = !{i64 9155289732597162054}
!130 = !{i64 -931196329824560032}
!131 = !{i64 -3876428312711516702}
!132 = !{i64 785726220766048355}
!133 = !{i64 1511212593844499777}
!134 = !{i64 3269353352492906721}
!135 = !{i64 608546528378584034}
!136 = !{i64 -2843281646498730370}
!137 = !{i64 -8553531607737916034}
!138 = !{i64 -5294154244239030110}
!139 = !{i64 2032926801570424879}
end_hunk_1
begin_hunk_2_@llvm.ceil.v2f32
!916 = !{!510, !269, i64 40}
!917 = !{!510, !269, i64 32}
!918 = !{i64 -7220112424999991249}
!919 = !{i64 -3186564582418960500}
!920 = !{i64 9073227843588675065}
!921 = !{i64 4127773050417836940}
!922 = !{i64 8878297403253487302}
!923 = !{i64 -340735895922252597}
!924 = !{i64 -3545026630211847283}
!925 = !{i64 1174950194430988698}
!926 = !{i64 -4488010405465232039}
!927 = !{i64 752403003379410887}
!928 = !{i64 -1328901401891772706}
!929 = !{i64 -9073225104207593933}
!930 = !{i64 4972490485006745197}
!931 = !{!304, !276, i64 0}
!932 = !{!302, !302, i64 0}
!933 = distinct !{null, null, null}
!934 = !{i64 -1361997315014181361}
!935 = distinct !{!935, !274, !444, !445}
!936 = distinct !{!936, !274, !444, !445}
!937 = distinct !{!937, !274}
!938 = distinct !{!938, !274, !444, !445}
!939 = distinct !{!939, !274, !444, !445}
!940 = distinct !{!940, !274, !444, !445}
!941 = distinct !{!941, !274, !444, !445}
!942 = distinct !{!942, !274, !444, !445}
!943 = distinct !{!943, !274, !444, !445}
!944 = distinct !{!944, i1 true, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA11_cJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!945 = distinct !{!945, !944, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA11_cJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!946 = distinct !{!946, !274}
!947 = !{i64 -1314815425045645032}
!948 = !{!"_ZTSSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE", !54, i64 0, !252, i64 4992}
!949 = !{!948, !252, i64 4992}
!950 = !{!945}
!951 = !{i64 4441461571833040087}
!952 = !{i64 3705143146808276158}
!953 = !{i64 1080103601501470593}
!954 = !{i64 -8528526899392335645}
!955 = !{i64 645829738539384998}
!956 = !{i64 -6791650505620770952}
!957 = !{i64 -3439275643745317414}
!958 = !{i64 -2978927851199622679}
!959 = !{i64 -6895098198028386150}
!960 = distinct !{!960, !274}
!961 = !{i64 6490768925260317071}
!962 = !{i64 -807365869495282125}
!963 = !{i64 -3573844601280931052}
!964 = !{i64 -8888180153734928081}
!965 = !{i64 -8628931009613878195}
!966 = !{i64 -7713110974294530180}
!967 = !{i64 -6320880841556138141}
!968 = !{i64 7436067188835429165}
!969 = distinct !{!969, i1 true, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_"}
!970 = distinct !{!970, !969, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_: argument 0"}
!971 = !{i64 6660171428634774846}
!972 = !{!970}
!973 = distinct !{!973, i1 true, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!974 = distinct !{!974, !973, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!975 = !{i64 -3873415454563784572}
!976 = !{!974}
!977 = !{i64 -8960819410532517935}
!978 = distinct !{!978, i1 true, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!979 = distinct !{!979, !978, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!980 = !{i64 -7569006155119135988}
!981 = !{!979}
!982 = distinct !{!982, i1 true, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiRKNS0_7ustringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!983 = distinct !{!983, !982, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiRKNS0_7ustringEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!984 = distinct !{!984, i1 true, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiKN11OpenImageIO4v3_17ustringEELi2ELi0ELy209EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!985 = distinct !{!985, !984, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiKN11OpenImageIO4v3_17ustringEELi2ELi0ELy209EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!986 = !{i64 -4791411276410360914}
!987 = !{!983}
!988 = !{!985}
!989 = !{!985, !983}
!990 = distinct !{!990, i1 true, !"_ZSt16forward_as_tupleIJlEESt5tupleIJDpOT_EES3_"}
!991 = distinct !{!991, !990, !"_ZSt16forward_as_tupleIJlEESt5tupleIJDpOT_EES3_: argument 0"}
!992 = !{i64 -5201785970048615967}
!993 = !{!991}
!994 = distinct !{!994, !274}
!995 = distinct !{!995, !274, !444, !445}
!996 = distinct !{!996, !452}
!997 = distinct !{!997, !274, !444, !445}
!998 = distinct !{!998, !452}
!999 = distinct !{!999, !274, !444}
!1000 = distinct !{!1000, !274, !444}
!1001 = distinct !{!1001, !274, !444, !445}
!1002 = distinct !{!1002, !274, !444, !445}
!1003 = distinct !{!1003, !452}
!1004 = distinct !{!1004, !274, !444}
!1005 = distinct !{!1005, !274, !444}
!1006 = distinct !{!1006, !274, !444, !445}
!1007 = distinct !{!1007, !274, !444, !445}
!1008 = distinct !{!1008, !452}
!1009 = distinct !{!1009, !274, !444}
!1010 = distinct !{!1010, !274, !444}
!1011 = distinct !{!1011, !274, !444, !445}
!1012 = distinct !{!1012, !274, !444, !445}
!1013 = distinct !{!1013, !274, !444}
!1014 = distinct !{!1014, !274, !444}
!1015 = !{i64 8439185781709187589}
!1016 = !{i64 -4841417553122003470}
!1017 = distinct !{!1017, !274}
!1018 = !{i64 7885183125506891791}
!1019 = !{!504, !260, i64 192}
!1020 = !{!504, !355, i64 200}
!1021 = !{!504, !355, i64 208}
!1022 = !{!504, !355, i64 216}
!1023 = !{i64 1681980422750526657}
!1024 = !{i64 5587888209433014769}
!1025 = distinct !{!1025, i1 true, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringES8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!1026 = distinct !{!1026, !1025, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringES8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!1027 = !{i64 2087375897235553912}
!1028 = !{!1026}
!1029 = distinct !{!1029, !274}
!1030 = !{i64 8421739512422726532}
!1031 = distinct !{!1031, i1 true, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_"}
!1032 = distinct !{!1032, !1031, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_: argument 0"}
!1033 = distinct !{!1033, i1 true, !"_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1034 = distinct !{!1034, !1033, !"_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1035 = distinct !{!1035, i1 true, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1036 = distinct !{!1036, !1035, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1037 = distinct !{!1037, !274}
!1038 = distinct !{!1038, !274}
!1039 = distinct !{!1039, !274, !444, !445}
!1040 = distinct !{!1040, !274, !445, !444}
!1041 = distinct !{!1041, !274}
!1042 = !{i64 5671454395046356890}
!1043 = !{!1032}
!1044 = !{!1034}
!1045 = !{!1036}
!1046 = !{!1036, !1034}
!1047 = distinct !{!1047, !274}
!1048 = distinct !{!1048, i1 true, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_"}
!1049 = distinct !{!1049, !1048, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_: argument 0"}
!1050 = distinct !{!1050, i1 true, !"_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1051 = distinct !{!1051, !1050, !"_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1052 = distinct !{!1052, i1 true, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1053 = distinct !{!1053, !1052, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1054 = distinct !{!1054, !274}
!1055 = distinct !{!1055, !274}
!1056 = distinct !{!1056, !274, !444, !445}
!1057 = distinct !{!1057, !274, !445, !444}
!1058 = distinct !{!1058, !274}
!1059 = !{i64 476842236032054658}
!1060 = !{!1049}
!1061 = !{!1051}
!1062 = !{!1053}
!1063 = !{!1053, !1051}
!1064 = !{i64 -7287340680728870511}
!1065 = distinct !{!1065, !274, !444, !445}
!1066 = distinct !{!1066, !274}
!1067 = distinct !{!1067, !274, !445, !444}
!1068 = !{i64 -9020385738590305040}
!1069 = distinct !{!1069, !274, !444, !445}
!1070 = distinct !{!1070, i1 false, !"LVerDomain"}
!1071 = distinct !{!1071, !1070}
!1072 = distinct !{!1072, !1070}
!1073 = distinct !{!1073, !274, !444, !445}
!1074 = distinct !{!1074, !452}
!1075 = distinct !{!1075, !274}
!1076 = distinct !{!1076, !274, !445, !444}
!1077 = distinct !{!1077, !274, !444}
!1078 = distinct !{!1078, !274}
!1079 = distinct !{!1079, !274, !444, !445}
!1080 = distinct !{!1080, !274, !445, !444}
!1081 = distinct !{!1081, !274, !444, !445}
!1082 = distinct !{!1082, i1 false, !"LVerDomain"}
!1083 = distinct !{!1083, !1082}
!1084 = distinct !{!1084, !1082}
!1085 = distinct !{!1085, !274, !444, !445}
!1086 = distinct !{!1086, !452}
!1087 = distinct !{!1087, !274, !445, !444}
!1088 = distinct !{!1088, !274, !444}
!1089 = distinct !{!1089, !274, !444, !445}
!1090 = distinct !{!1090, !274, !445, !444}
!1091 = distinct !{!1091, !274, !444, !445}
!1092 = distinct !{!1092, !274, !445, !444}
!1093 = distinct !{!1093, !274, !444, !445}
!1094 = distinct !{!1094, !274, !445, !444}
!1095 = !{i64 -7461245473311322915}
!1096 = !{!385, !385, i64 0}
!1097 = !{!1071}
!1098 = !{!1072}
!1099 = !{!"_ZTSN9Imath_3_14halfE", !247, i64 0}
!1100 = !{!1099, !247, i64 0}
!1101 = !{!1083}
!1102 = !{!1084}
!1103 = distinct !{!1103, i1 false, !"LVerDomain"}
!1104 = distinct !{!1104, !1103}
!1105 = distinct !{!1105, !1103}
!1106 = distinct !{!1106, !1103}
!1107 = distinct !{!1107, !274, !444, !445}
!1108 = distinct !{!1108, !274, !444}
!1109 = !{i64 8821882514954532777}
!1110 = !{!1104}
!1111 = !{!1105}
!1112 = !{!1106}
!1113 = !{!1104, !1105}
!1114 = distinct !{!1114, !274}
!1115 = distinct !{!1115, !274}
!1116 = distinct !{!1116, !274, !444, !445}
!1117 = distinct !{!1117, !274, !445, !444}
!1118 = distinct !{!1118, !274}
!1119 = !{i64 -4527903148279325114}
!1120 = !{!565, !252, i64 16}
!1121 = !{!"_ZTSN11OpenImageIO4v3_14spanIKfLm18446744073709551615EEE", !385, i64 0, !252, i64 8}
!1122 = !{!1121, !385, i64 0}
!1123 = !{!1121, !252, i64 8}
!1124 = !{i64 -7539906875659506654}
!1125 = distinct !{!1125, i1 true, !"_ZSt19__relocate_object_aIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEES4_SaIS4_EEvPT_PT0_RT1_"}
!1126 = distinct !{!1126, !1125, !"_ZSt19__relocate_object_aIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!1127 = distinct !{!1127, !1125, !"_ZSt19__relocate_object_aIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!1128 = distinct !{!1128, i1 false, !"LVerDomain"}
!1129 = distinct !{!1129, !1128}
!1130 = distinct !{!1130, !1128}
!1131 = distinct !{!1131, !274, !444, !445}
!1132 = distinct !{!1132, !274, !444}
!1133 = distinct !{!1133, !274}
!1134 = distinct !{!1134, !274}
!1135 = distinct !{!1135, !274}
!1136 = distinct !{!1136, !274}
!1137 = distinct !{!1137, !274}
!1138 = distinct !{!1138, !274}
!1139 = distinct !{!1139, !274}
!1140 = distinct !{!1140, !274}
!1141 = distinct !{!1141, !274}
!1142 = distinct !{!1142, !274}
!1143 = distinct !{!1143, !274}
!1144 = !{i64 5873763941177872041}
!1145 = !{!1126}
!1146 = !{!1127}
!1147 = !{!1127, !1129}
!1148 = !{!1126, !1130}
!1149 = !{!1129}
!1150 = !{!"_ZTS8timespec", !252, i64 0, !252, i64 8}
!1151 = !{!1150, !252, i64 0}
!1152 = !{!1150, !252, i64 8}
!1153 = distinct !{!1153, i1 true, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!1154 = distinct !{!1154, !1153, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!1155 = !{i64 1422132652561223367}
!1156 = !{!1154}
!1157 = !{i64 -5626343429483484603}
!1158 = !{i64 -3312252510152753265}
!1159 = distinct !{null}
!1160 = !{i64 -227505617863360783}
!1161 = !{i64 1193006389677705267}
!1162 = !{i64 -4638369637891313803}
!1163 = !{i64 4262933927986642467}
!1164 = !{i64 4879405254014511769}
!1165 = distinct !{null}
!1166 = !{i64 4738491033671376102}
!1167 = !{i64 -4829575535837849452}
!1168 = !{i64 -2516430898411598727}
!1169 = !{i64 2599222430054356635}
!1170 = !{i64 1952628124147264177}
!1171 = distinct !{!1171, i1 true, !"_ZN3fmt3v1213vsystem_errorEiNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE"}
!1172 = distinct !{!1172, !1171, !"_ZN3fmt3v1213vsystem_errorEiNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE: argument 0"}
!1173 = !{i64 -4016934560148208127}
!1174 = !{!1172}
!1175 = distinct !{!1175, i1 true, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!1176 = distinct !{!1176, !1175, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!1177 = !{i64 -369095623553916744}
!1178 = !{!1176}
!1179 = distinct !{!1179, i1 true, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!1180 = distinct !{!1180, !1179, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!1181 = distinct !{null}
!1182 = distinct !{!1182, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!1183 = distinct !{!1183, !1182, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!1184 = distinct !{!1184, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!1185 = distinct !{!1185, !1184, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: argument 0"}
!1186 = !{i64 -5168037349208837055}
!1187 = !{!1180}
!1188 = !{!1183}
!1189 = !{!1185}
!1190 = !{!"p1 _ZTSNSt3_V214error_categoryE", !254, i64 0}
!1191 = !{!1190, !1190, i64 0}
!1192 = !{i64 -116591650398915529}
!1193 = distinct !{!1193, i1 true, !"_ZNK3fmt3v127context3argEi"}
!1194 = distinct !{!1194, !1193, !"_ZNK3fmt3v127context3argEi: argument 0"}
!1195 = distinct !{!1195, i1 true, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!1196 = distinct !{!1196, !1195, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!1197 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIjTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!1198 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIyTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!1199 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!1200 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null, null}
!1201 = distinct !{!1201, i1 true, !"_ZNK3fmt3v127context3argEi"}
!1202 = distinct !{!1202, !1201, !"_ZNK3fmt3v127context3argEi: argument 0"}
!1203 = distinct !{!1203, i1 true, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!1204 = distinct !{!1204, !1203, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!1205 = !{i64 -2666266725151822613}
!1206 = !{!1196, !1194}
!1207 = !{!597, !597, i64 0}
!1208 = !{!1204, !1202}
!1209 = distinct !{null, null, null}
!1210 = !{i64 -3135875441855178464}
!1211 = distinct !{null, null, null}
!1212 = !{i64 -5572701155538487766}
!1213 = !{i64 -8324377311504521191}
!1214 = distinct !{null, null, null}
!1215 = distinct !{null, null, null, null}
!1216 = !{i64 6477584823286753418}
!1217 = !{i64 -8268800200123281285}
!1218 = !{i64 -6252869266858955514}
!1219 = !{i64 4948949881611284945}
!1220 = !{i64 -5857730773283876127}
!1221 = distinct !{!1221, !274, !444, !445}
!1222 = distinct !{!1222, !274, !444, !445}
!1223 = distinct !{!1223, !452}
!1224 = distinct !{!1224, !274, !444}
!1225 = !{i64 5651567684617735017}
!1226 = !{i64 -8089471563115576846}
!1227 = !{i64 7503248256936106307}
!1228 = !{i64 7717212498749888304}
!1229 = !{i64 -1308000215756125731}
!1230 = !{i64 7618045084794559408}
!1231 = !{i64 -2780648851175233567}
!1232 = !{!604, !252, i64 16}
!1233 = distinct !{!1233, !274}
!1234 = distinct !{null, null, null, null}
!1235 = distinct !{null, null, null, null, null}
!1236 = distinct !{null, null, null}
!1237 = distinct !{null, null, null, null}
!1238 = distinct !{!1238, !274}
!1239 = !{i64 -4640559084671949267}
!1240 = distinct !{!1240, i1 true, !"_ZNKSt7__cxx118numpunctIcE8groupingEv"}
!1241 = distinct !{!1241, !1240, !"_ZNKSt7__cxx118numpunctIcE8groupingEv: argument 0"}
!1242 = !{i64 695136209347525931}
!1243 = !{!"_ZTSNSt6locale5facetE", !55, i64 8}
!1244 = !{!1243, !55, i64 8}
!1245 = !{!1241}
!1246 = !{i64 -2784578510854232931}
!1247 = !{i64 -8103091740100736531}
!1248 = !{i64 2776121231483251800}
!1249 = !{i64 -8790356914843661185}
!1250 = !{i64 7017303549874765913}
!1251 = !{i64 3819555812207679231}
!1252 = !{i64 -909662215638426966}
!1253 = !{i64 1836382479444119930}
!1254 = !{i64 -1701889896340816787}
!1255 = distinct !{!1255, i1 true, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!1256 = distinct !{!1256, !1255, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!1257 = !{i64 -7928703258035308831}
!1258 = !{!1256}
!1259 = distinct !{!1259, i1 true, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!1260 = distinct !{!1260, !1259, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!1261 = !{i64 -4871378369812028358}
!1262 = !{!1260}
!1263 = distinct !{!1263, !274}
!1264 = distinct !{!1264, !274}
!1265 = !{i64 -1269039135655291357}
!1266 = !{i64 -5728392461037242186}
!1267 = distinct !{null, null, null, null}
!1268 = distinct !{!1268, !274}
!1269 = !{i64 3410810621175582207}
!1270 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !413, i64 0, !622, i64 8, !624, i64 16}
!1271 = !{!1270, !413, i64 0}
!1272 = !{!1270, !622, i64 8}
!1273 = !{!1270, !624, i64 16}
!1274 = distinct !{null, null, null, null}
!1275 = !{i64 -2927737984022148772}
!1276 = distinct !{null, null, null, null}
!1277 = distinct !{!1277, !274}
!1278 = distinct !{!1278, !274, !444, !445}
!1279 = distinct !{!1279, !274, !444, !445}
!1280 = distinct !{!1280, !452}
!1281 = distinct !{!1281, !274, !444}
!1282 = distinct !{!1282, !274}
!1283 = !{i64 6079374761499032612}
!1284 = !{i64 -3142405037311596543}
!1285 = !{i64 4236259773942293105}
!1286 = distinct !{!1286, !274}
!1287 = distinct !{!1287, !274}
!1288 = distinct !{!1288, !274}
!1289 = !{i64 -2967026580224294387}
!1290 = !{i64 -7048062852071188496}
!1291 = !{i64 4762968510203516799}
!1292 = !{i64 -4365750531109951616}
!1293 = distinct !{null, null}
!1294 = distinct !{!1294, !274, !444, !445}
!1295 = distinct !{!1295, !274, !444, !445}
!1296 = distinct !{!1296, !452}
!1297 = distinct !{!1297, !274, !444}
!1298 = distinct !{!1298, !274}
!1299 = !{i64 8511621218816884482}
!1300 = !{!631, !254, i64 24}
!1301 = !{i64 -541458282137646824}
!1302 = distinct !{!1302, !274}
!1303 = distinct !{!1303, !274}
!1304 = distinct !{!1304, !274}
!1305 = !{i64 -7789421725482471956}
!1306 = distinct !{null, null, null, null}
!1307 = distinct !{!1307, !274}
!1308 = !{i64 7590083106024362859}
!1309 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !413, i64 0, !622, i64 8, !624, i64 16}
!1310 = !{!1309, !413, i64 0}
!1311 = !{!1309, !622, i64 8}
!1312 = !{!1309, !624, i64 16}
!1313 = distinct !{null, null, null}
!1314 = distinct !{!1314, !274, !444, !445}
!1315 = distinct !{!1315, !274, !444, !445}
!1316 = distinct !{!1316, !452}
!1317 = distinct !{!1317, !274, !444}
end_hunk_2
