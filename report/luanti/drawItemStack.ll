Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/drawItemStack?download=true
inline.NumInlined: 672
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z13drawItemStackPN5video12IVideoDriverEPN3gui8IGUIFontERK9ItemStackRKN4core4rectIiEEPSB_P6Client16ItemRotationKindRKNS8_8vector3dIsEESK_:bb.a

bb.j:                                             ; preds = %bb.i
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !269
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = phi i32 [ %i.an, %bb.j ], [ %i.ap, %bb.i ]
  %i.as = load i32, ptr %4, align 4, !tbaa !270   ; 4 uses
  %i.at = icmp sgt i32 %i.as, %i.al
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.as, ptr %i.ai, align 8, !tbaa !268
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !271 ; 4 uses
  %i.aw = icmp sgt i32 %i.av, %i.ar
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.av, ptr %i.ao, align 4, !tbaa !269
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ax = load i32, ptr %13, align 8, !tbaa !270  ; 2 uses
  %i.ay = icmp slt i32 %i.ah, %i.ax
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.ah, ptr %13, align 8, !tbaa !270
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.az = phi i32 [ %i.ah, %bb.p ], [ %i.ax, %bb.o ]
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !271 ; 2 uses
  %i.bc = icmp slt i32 %i.an, %i.bb
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.an, ptr %i.ba, align 4, !tbaa !271
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bd = phi i32 [ %i.an, %bb.r ], [ %i.bb, %bb.q ]
  %i.be = icmp sgt i32 %i.as, %i.az
  br i1 %i.be, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.as, ptr %13, align 8, !tbaa !270
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bf = icmp sgt i32 %i.av, %i.bd
  br i1 %i.bf, label %bb.v, label %_ZN4core4rectIiE11clipAgainstERKS1_.exit

bb.v:                                             ; preds = %bb.u
  store i32 %i.av, ptr %i.ba, align 4, !tbaa !271
  br label %_ZN4core4rectIiE11clipAgainstERKS1_.exit

bb.w:                                             ; preds = %.noexc.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283

bb.x:                                             ; preds = %.noexc
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.m
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281: ; preds = %bb.x
  %i.bk = load i64, ptr %i.m, align 8, !tbaa !19
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.w ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281 ], [ %i.bh, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.cy

_ZN4core4rectIiE11clipAgainstERKS1_.exit:         ; preds = %bb.v, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = icmp slt i32 %6, 4                      ; 2 uses
  %or.cond4 = and i1 %i.bm, %i.s
  %i.bn = icmp eq ptr %i.ae, null                 ; 3 uses
  %or.cond6.not = or i1 %or.cond4, %i.bn
  br i1 %or.cond6.not, label %bb.y, label %.critedge.thread

bb.y:                                             ; preds = %_ZN4core4rectIiE11clipAgainstERKS1_.exit
  %i.bo = call noundef ptr @_ZNK18ItemVisualsManager11getItemMeshERK9ItemStackP6Client(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef nonnull %5) ; 5 uses
  %.not255 = icmp eq ptr %i.bo, null
  br i1 %.not255, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !278 ; 7 uses
  %.not424 = icmp eq ptr %i.bp, null
  br i1 %.not424, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bq = load ptr, ptr %0, align 8, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 688
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext 2, i32 -16777216, float noundef 1.000000e+00, i8 noundef zeroext 0)
  br i1 %i.bm, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bt = zext i32 %6 to i64
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr @_ZZ13drawItemStackPN5video12IVideoDriverEPN3gui8IGUIFontERK9ItemStackRKN4core4rectIiEEPSB_P6Client16ItemRotationKindRKNS8_8vector3dIsEESK_E19rotation_time_infos, i64 %i.bt ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !57
  %i.bx = icmp ne ptr %i.bp, %i.bw
  %i.by = icmp ne i32 %6, 3
  %or.cond8 = and i1 %i.by, %i.bx
  br i1 %or.cond8, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.bp, ptr %i.bv, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.bz = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %11) #19 ; 0 uses
  %i.ca = load i64, ptr %11, align 8, !tbaa !280
  %i.cb = mul i64 %i.ca, 1000
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !281
  %i.ce = udiv i64 %i.cd, 1000000
  %i.cf = add i64 %i.ce, %i.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  store i64 %i.cf, ptr %i.bu, align 16, !tbaa !282
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cg = load i64, ptr %i.bu, align 16, !tbaa !282 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.ch = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %10) #19 ; 0 uses
  %i.ci = load i64, ptr %10, align 8, !tbaa !280
  %i.cj = mul i64 %i.ci, 1000
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !281
  %i.cm = udiv i64 %i.cl, 1000000
  %i.cn = add i64 %i.cm, %i.cj                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %.not.i = icmp ult i64 %i.cn, %i.cg
  %i.co = sub nuw i64 %i.cn, %i.cg
  %i.cp = sub nuw i64 %i.cg, %i.cn
  %.0.i = select i1 %.not.i, i64 %i.cp, i64 %i.co
  %i.cq = urem i64 %.0.i, 100000
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = uitofp nneg i32 %i.cr to float
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.aa
  %.1238 = phi float [ 0.000000e+00, %bb.aa ], [ 0.000000e+00, %bb.ac ], [ %i.cs, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.ct = load ptr, ptr %0, align 8, !tbaa !22
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 352
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call noundef nonnull align 4 dereferenceable(16) ptr %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !265
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.cx = load ptr, ptr %0, align 8, !tbaa !22
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef nonnull align 4 dereferenceable(64) ptr %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %i.da, i64 64, i1 false), !tbaa.struct !283
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.db = load ptr, ptr %0, align 8, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call noundef nonnull align 4 dereferenceable(64) ptr %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(64) %i.de, i64 64, i1 false), !tbaa.struct !283
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.df = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 20
  store float 1.000000e+00, ptr %17, align 4, !tbaa !284
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dh, align 4, !tbaa !284
  %i.di = getelementptr inbounds nuw i8, ptr %17, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  store <4 x float> <float 9.900990e-03, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dg, align 4, !tbaa !284
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 56
  store <2 x float> <float 9.900990e-03, float 1.000000e+00>, ptr %i.dj, align 4, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.dk = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.dm = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dk, i8 0, i64 16, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dp, i8 0, i64 16, i1 false)
  store <2 x float> <float 9.900990e-03, float 0.000000e+00>, ptr %i.dl, align 4, !tbaa !284
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.ds = load <2 x i32>, ptr %i.dn, align 8, !tbaa !264 ; 3 uses
  %i.dt = load <2 x i32>, ptr %13, align 8, !tbaa !264 ; 3 uses
  %i.du = sub nsw <2 x i32> %i.ds, %i.dt
  %i.dv = sitofp nsz <2 x i32> %i.du to <2 x float> ; 2 uses
  %i.dw = load <2 x i32>, ptr %i.do, align 4, !tbaa !264 ; 3 uses
  %i.dx = load <2 x i32>, ptr %3, align 4, !tbaa !264 ; 3 uses
  %i.dy = sub nsw <2 x i32> %i.dw, %i.dx
  %i.dz = sitofp nsz <2 x i32> %i.dy to <2 x float>
  %foldExtExtBinop = add <2 x i32> %i.dw, %i.dx
  %i.ea = fmul nnan nsz <2 x float> %i.dv, splat (float 2.000000e+00)
  %i.eb = fdiv nsz <2 x float> %i.ea, %i.dz
  %i.ec = fdiv nsz <2 x float> splat (float 2.000000e+00), %i.eb ; 2 uses
  %i.ed = extractelement <2 x float> %i.ec, i64 0
  store float %i.ed, ptr %18, align 4, !tbaa !284
  %i.ee = extractelement <2 x float> %i.ec, i64 1
  store float %i.ee, ptr %i.dm, align 4, !tbaa !284
  %foldExtExtBinop501 = add <2 x i32> %i.dt, %i.ds
  %foldExtExtBinop503 = sub <2 x i32> %i.dw, %foldExtExtBinop501
  %foldExtExtBinop505 = add <2 x i32> %foldExtExtBinop503, %i.dx
  %foldExtExtBinop507 = add <2 x i32> %i.dt, %i.ds
  %foldExtExtBinop509 = sub <2 x i32> %foldExtExtBinop507, %foldExtExtBinop
  %i.ef = shufflevector <2 x i32> %foldExtExtBinop505, <2 x i32> %foldExtExtBinop509, <2 x i32> <i32 0, i32 3>
  %i.eg = sitofp nsz <2 x i32> %i.ef to <2 x float>
  %i.eh = fdiv nsz <2 x float> %i.eg, %i.dv
  store <2 x float> %i.eh, ptr %i.dq, align 4, !tbaa !284
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.dr, align 4, !tbaa !284
  %i.ei = load ptr, ptr %0, align 8, !tbaa !22
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(64) %17)
  %i.el = load ptr, ptr %0, align 8, !tbaa !22
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(64) %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.eo = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %19, i64 60
  %i.eq = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %19, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.eo, i8 0, i64 56, i1 false)
  store float 1.000000e+00, ptr %i.ep, align 4, !tbaa !284
  store float 1.000000e+00, ptr %i.eq, align 4, !tbaa !284
  store float 1.000000e+00, ptr %i.er, align 4, !tbaa !284
  store float 1.000000e+00, ptr %19, align 4, !tbaa !284
  br i1 %i.s, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.es = fdiv nsz float %.1238, 5.000000e+03     ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !28
  %i.ev = sitofp i16 %i.eu to float
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !28
  %i.ey = sitofp i16 %i.ex to float
  %i.ez = fmul nnan nsz float %i.ey, 3.600000e+00
  %i.fa = call nsz float @llvm.fmuladd.f32(float %i.ez, float %i.es, float %i.ev)
  %i.fb = fmul nsz float %i.fa, f0x3C8EFA35
  %i.fc = load <2 x i16>, ptr %7, align 2, !tbaa !285
  %i.fd = sitofp <2 x i16> %i.fc to <2 x float>
  %i.fe = load <2 x i16>, ptr %8, align 2, !tbaa !285
  %i.ff = sitofp <2 x i16> %i.fe to <2 x float>
  %i.fg = fmul nnan nsz <2 x float> %i.ff, splat (float 3.600000e+00)
  %i.fh = insertelement <2 x float> poison, float %i.es, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.fi, <2 x float> %i.fd)
  %i.fk = fmul nsz <2 x float> %i.fj, splat (float f0x3C8EFA35)
  %i.fl = fpext nsz <2 x float> %i.fk to <2 x double>
  %i.fm = call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.fl) ; 2 uses
  %i.fn = extractvalue { <2 x double>, <2 x double> } %i.fm, 0 ; 5 uses
  %i.fo = extractvalue { <2 x double>, <2 x double> } %i.fm, 1 ; 5 uses
  %i.fp = extractelement <2 x double> %i.fo, i64 1 ; 2 uses
  %i.fq = fpext nsz float %i.fb to double
  %sincos39.i.i = call nsz { double, double } @llvm.sincos.f64(double %i.fq) ; 2 uses
  %sin40.i.i = extractvalue { double, double } %sincos39.i.i, 0 ; 5 uses
  %cos41.i.i = extractvalue { double, double } %sincos39.i.i, 1 ; 5 uses
  %i.fr = fmul nsz double %i.fp, %cos41.i.i
  %i.fs = fptrunc nsz double %i.fr to float
  store float %i.fs, ptr %19, align 4, !tbaa !284
  %i.ft = fmul nsz double %i.fp, %sin40.i.i
  %i.fu = fptrunc nsz double %i.ft to float
  store float %i.fu, ptr %i.eo, align 4, !tbaa !284
  %i.fv = extractelement <2 x double> %i.fn, i64 1
  %i.fw = fptrunc nsz double %i.fv to float
  %i.fx = fneg nsz float %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %19, i64 8
  store float %i.fx, ptr %i.fy, align 4, !tbaa !284
  %i.fz = shufflevector <2 x double> %i.fn, <2 x double> %i.fo, <2 x i32> <i32 0, i32 2>
  %i.ga = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gb = fmul nsz <2 x double> %i.fz, %i.ga      ; 2 uses
  %i.gc = fneg nsz double %sin40.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ge = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gf = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %cos41.i.i, i64 1
  %i.gh = fmul nsz <2 x double> %i.ge, %i.gg
  %i.gi = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %sin40.i.i, i64 1
  %i.gl = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %i.gk, <2 x double> %i.gh)
  %i.gm = fptrunc nsz <2 x double> %i.gl to <2 x float>
  store <2 x float> %i.gm, ptr %i.gd, align 4, !tbaa !284
  %i.gn = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.go = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.gp = fneg nsz double %cos41.i.i
  %i.gq = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = insertelement <2 x double> poison, double %sin40.i.i, i64 0
  %i.gs = insertelement <2 x double> %i.gr, double %i.gp, i64 1
  %i.gt = fmul nsz <2 x double> %i.gq, %i.gs
  %i.gu = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gv = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.gw = insertelement <2 x double> %i.gv, double %sin40.i.i, i64 1
  %i.gx = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.gw, <2 x double> %i.gt)
  %i.gy = fptrunc nsz <2 x double> %i.gx to <2 x float>
  store <2 x float> %i.gy, ptr %i.go, align 4, !tbaa !284
  %i.gz = shufflevector <2 x double> %i.fo, <2 x double> %i.fn, <2 x i32> <i32 1, i32 2>
  %i.ha = fmul nsz <2 x double> %i.fo, %i.gz
  %i.hb = fptrunc nsz <2 x double> %i.ha to <2 x float> ; 2 uses
  %i.hc = extractelement <2 x float> %i.hb, i64 1
  store float %i.hc, ptr %i.gn, align 4, !tbaa !284
  %i.hd = extractelement <2 x float> %i.hb, i64 0
  store float %i.hd, ptr %i.eq, align 4, !tbaa !284
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.he = load ptr, ptr %0, align 8, !tbaa !22
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %19)
  %i.hh = load ptr, ptr %0, align 8, !tbaa !22
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 344
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %13)
  %i.hk = call i32 @_ZNK18ItemVisualsManager17getItemstackColorERK9ItemStackP6Client(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef nonnull %5)
  %i.hl = load ptr, ptr %i.bp, align 8, !tbaa !22
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = call noundef i32 %i.hm(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !286
  %i.hr = load ptr, ptr %i.ho, align 8, !tbaa !287
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = sdiv exact i64 %i.hu, 24
  %i.hw = trunc i64 %i.hv to i32
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.hn, i32 %i.hw) ; 2 uses
  %.not432 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not432, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ag
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 712
  %wide.trip.count = zext i32 %.sroa.speculated to i64
  br label %bb.ah

._crit_edge:                                      ; preds = %bb.am, %bb.ag
  %i.hz = load ptr, ptr %0, align 8, !tbaa !22
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(64) %16)
  %i.ic = load ptr, ptr %0, align 8, !tbaa !22
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(64) %15)
  %i.if = load ptr, ptr %0, align 8, !tbaa !22
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 344
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %14)
  %i.ii = load i8, ptr %i.ab, align 8, !tbaa !310
  %i.ij = icmp eq i8 %i.ii, 1
  %spec.select = and i1 %i.bn, %i.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.ap

bb.ah:                                            ; preds = %.lr.ph, %bb.am
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.am ] ; 3 uses
  %i.ik = load ptr, ptr %i.bp, align 8, !tbaa !22
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = trunc nuw i64 %indvars.iv to i32
  %i.io = call noundef ptr %i.im(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i32 noundef %i.in) ; 5 uses
  %i.ip = load ptr, ptr %i.ho, align 8, !tbaa !287
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %indvars.iv ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load i8, ptr %i.ir, align 8, !tbaa !319, !range !29, !noundef !30
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.ai, label %_ZNK18ItemMeshBufferInfo13applyOverrideERN5video6SColorE.exit

bb.ai:                                            ; preds = %bb.ah
  %i.iu = load i32, ptr %i.iq, align 8, !tbaa !264
  br label %_ZNK18ItemMeshBufferInfo13applyOverrideERN5video6SColorE.exit

_ZNK18ItemMeshBufferInfo13applyOverrideERN5video6SColorE.exit: ; preds = %bb.ah, %bb.ai
  %.sroa.0406.0 = phi i32 [ %i.iu, %bb.ai ], [ %i.hk, %bb.ah ] ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 9 ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !320, !range !29, !noundef !30
  %i.ix = trunc nuw i8 %i.iw to i1
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iq, i64 4 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4
  %i.ja = icmp eq i32 %i.iz, %.sroa.0406.0
  %or.cond.i = select i1 %i.ix, i1 %i.ja, i1 false
  br i1 %or.cond.i, label %_ZN18ItemMeshBufferInfo12needColorizeEN5video6SColorE.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNK18ItemMeshBufferInfo13applyOverrideERN5video6SColorE.exit
  store i8 1, ptr %i.iv, align 1, !tbaa !320
  store i32 %.sroa.0406.0, ptr %i.iy, align 4, !tbaa !264
  %i.jb = load i8, ptr %i.hx, align 8, !tbaa !321, !range !29, !noundef !30
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.ak

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.aj
  call void @_Z18colorizeMeshBufferPN5scene11IMeshBufferEN5video6SColorEfN4core8vector3dIfEE(ptr noundef %i.io, i32 %.sroa.0406.0, float noundef 5.000000e-01, <2 x float> <float -3.000000e-01, float -6.000000e-01>, float 2.000000e-01)
  br label %_ZN18ItemMeshBufferInfo12needColorizeEN5video6SColorE.exit

bb.ak:                                            ; preds = %bb.aj
  call void @_Z18setMeshBufferColorPN5scene11IMeshBufferEN5video6SColorE(ptr noundef %i.io, i32 %.sroa.0406.0)
  br label %_ZN18ItemMeshBufferInfo12needColorizeEN5video6SColorE.exit

_ZN18ItemMeshBufferInfo12needColorizeEN5video6SColorE.exit: ; preds = %_ZNK18ItemMeshBufferInfo13applyOverrideERN5video6SColorE.exit, %_ZN4core8vector3dIfE9normalizeEv.exit, %bb.ak
  %i.jd = load ptr, ptr %i.io, align 8, !tbaa !22
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = call noundef nonnull align 8 dereferenceable(127) ptr %i.je(ptr noundef nonnull align 8 dereferenceable(8) %i.io) ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !322 ; 2 uses
  %.not425 = icmp eq ptr %i.jh, null
  br i1 %.not425, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN18ItemMeshBufferInfo12needColorizeEN5video6SColorE.exit
  %i.ji = load float, ptr %i.hy, align 8, !tbaa !323
  call void @_ZN13AnimationInfo13updateTextureERN5video9SMaterialEf(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef nonnull align 8 dereferenceable(127) %i.jf, float noundef %i.ji)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN18ItemMeshBufferInfo12needColorizeEN5video6SColorE.exit
  %i.jj = load ptr, ptr %0, align 8, !tbaa !22
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 96
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(127) %i.jf)
  %i.jm = load ptr, ptr %0, align 8, !tbaa !22
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 448
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.io)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ah, !llvm.loop !45

.critedge:                                        ; preds = %bb.y, %bb.z
  br i1 %i.bn, label %._crit_edge.i.i285, label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZN4core4rectIiE11clipAgainstERKS1_.exit, %.critedge
  %i.jp = call i32 @_ZNK18ItemVisualsManager17getItemstackColorERK9ItemStackP6Client(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef nonnull %5)
  br label %.thread

._crit_edge.i.i285:                               ; preds = %.critedge
  %i.jq = call noundef ptr @_ZN6Client16getTextureSourceEv(ptr noundef nonnull align 8 dereferenceable(1674) %5) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.jr = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.jr, ptr %20, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.jr, ptr noundef nonnull align 1 dereferenceable(14) @.str.1, i64 14, i1 false)
  %i.js = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 14, ptr %i.js, align 8, !tbaa !20
  %i.jt = getelementptr inbounds nuw i8, ptr %20, i64 30
  store i8 0, ptr %i.jt, align 2, !tbaa !19
  %i.ju = load ptr, ptr %i.jq, align 8, !tbaa !22
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = invoke noundef ptr %i.jw(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef null)
          to label %bb.an unwind label %bb.ao     ; 2 uses

bb.an:                                            ; preds = %._crit_edge.i.i285
  %i.jy = load ptr, ptr %20, align 8, !tbaa !18   ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.jr
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289: ; preds = %bb.an
  %i.ka = load i64, ptr %i.jr, align 8, !tbaa !19
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %.not258.not = icmp eq ptr %i.jx, null
  br i1 %.not258.not, label %bb.cv, label %.thread

bb.ao:                                            ; preds = %._crit_edge.i.i285
  %i.kc = landingpad { ptr, i32 }
          cleanup
  %i.kd = load ptr, ptr %20, align 8, !tbaa !18   ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.jr
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %bb.ao
  %i.kf = load i64, ptr %i.jr, align 8, !tbaa !19
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.cx

.thread:                                          ; preds = %.critedge.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291
  %.sroa.0387.0 = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ %i.jp, %.critedge.thread ]
  %.0232 = phi ptr [ %i.jx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291 ], [ %i.ae, %.critedge.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.kh = insertelement <4 x i32> poison, i32 %.sroa.0387.0, i64 0
  %i.ki = shufflevector <4 x i32> %i.kh, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.ki, ptr %21, align 16, !tbaa !264
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.kj = getelementptr inbounds nuw i8, ptr %.0232, i64 72
  store i64 0, ptr %22, align 8, !tbaa !264
  %i.kk = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.kl = load <2 x i32>, ptr %i.kj, align 4, !tbaa !264
  store <2 x i32> %i.kl, ptr %i.kk, align 8, !tbaa !264
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %0, ptr noundef nonnull %.0232, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr noundef %4, ptr noundef nonnull %21, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.ap

bb.ap:                                            ; preds = %.thread, %._crit_edge
  %.1231 = phi i1 [ %spec.select, %._crit_edge ], [ true, %.thread ]
  %i.km = icmp ne ptr %i.af, null
  %or.cond10 = and i1 %i.km, %.1231
  br i1 %or.cond10, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.kn = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  store i32 0, ptr %23, align 4, !tbaa !324
  %i.ko = getelementptr inbounds nuw i8, ptr %23, i64 4
  store i32 0, ptr %i.ko, align 4, !tbaa !325
  %i.kp = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.kq = load <2 x i32>, ptr %i.kn, align 4, !tbaa !264
  store <2 x i32> %i.kq, ptr %i.kp, align 4, !tbaa !264
  call void @_Z23draw2DImageFilterScaledPN5video12IVideoDriverEPNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef %0, ptr noundef nonnull %i.af, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %23, ptr noundef %4, ptr noundef null, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.kr = load i8, ptr %i.ab, align 8, !tbaa !310
  %i.ks = icmp eq i8 %i.kr, 3
  br i1 %i.ks, label %bb.as, label %._crit_edge.i.i295

bb.as:                                            ; preds = %bb.ar
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !326 ; 2 uses
  %.not259 = icmp eq i16 %i.ku, 0
  br i1 %.not259, label %._crit_edge.i.i295, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kw = load <2 x i32>, ptr %i.kv, align 4, !tbaa !264 ; 2 uses
  %i.kx = load <2 x i32>, ptr %3, align 4, !tbaa !264
  %i.ky = load i32, ptr %3, align 4, !tbaa !270
  %i.kz = sub nsw <2 x i32> %i.kw, %i.kx
  %i.la = sitofp nsz <2 x i32> %i.kz to <2 x float>
  %i.lb = fmul nnan nsz <2 x float> %i.la, splat (float 6.250000e-02) ; 3 uses
  %i.lc = sitofp nsz i32 %i.ky to float
  %i.ld = extractelement <2 x float> %i.lb, i64 0
  %i.le = fadd nsz float %i.ld, %i.lc
  %i.lf = fptosi float %i.le to i32               ; 2 uses
  %i.lg = sitofp nsz <2 x i32> %i.kw to <2 x float>
  %i.lh = fsub nsz <2 x float> %i.lg, %i.lb       ; 2 uses
  %foldExtExtBinop511 = fsub nsz <2 x float> %i.lh, %i.lb
  %i.li = extractelement <2 x float> %foldExtExtBinop511, i64 1
  %i.lj = fptosi float %i.li to i32               ; 2 uses
  %i.lk = fptosi <2 x float> %i.lh to <2 x i32>   ; 3 uses
  %i.ll = uitofp i16 %i.ku to float
  %i.lm = fdiv nsz float %i.ll, 6.553500e+04      ; 3 uses
  %i.ln = sitofp nsz i32 %i.lf to float
  %i.lo = fsub nsz float 1.000000e+00, %i.lm      ; 2 uses
  %i.lp = extractelement <2 x i32> %i.lk, i64 0
  %i.lq = sitofp nsz i32 %i.lp to float
  %i.lr = fmul nsz float %i.lo, %i.lq
  %i.ls = call nsz float @llvm.fmuladd.f32(float %i.lm, float %i.ln, float %i.lr)
  %i.lt = fptosi float %i.ls to i32               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.lu = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = call noundef ptr %i.lv(ptr noundef nonnull align 8 dereferenceable(8) %i.x), !inline_history !44
  %i.lx = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK9ItemStack16getWearBarParamsEPK15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(296) %2, ptr noundef %i.lw) ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 56
  %i.lz = getelementptr inbounds nuw i8, ptr %24, i64 56 ; 4 uses
  store i8 0, ptr %i.lz, align 8, !tbaa !32
  %i.ma = load i8, ptr %i.ly, align 8, !tbaa !32, !range !29, !noundef !30
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %bb.au, label %_ZNSt8optionalI13WearBarParamsEC2ERKS1_.exit

bb.au:                                            ; preds = %bb.at
  %i.mc = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  store i32 0, ptr %i.mc, align 8, !tbaa !327
  %i.md = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr null, ptr %i.md, align 8, !tbaa !33
  %i.me = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 2 uses
  store ptr %i.mc, ptr %i.me, align 8, !tbaa !328
  %i.mf = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  store ptr %i.mc, ptr %i.mf, align 8, !tbaa !329
  %i.mg = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 2 uses
  store i64 0, ptr %i.mg, align 8, !tbaa !330
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %24, ptr %9, align 8, !tbaa !332
  %i.mj = call noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(64) %24, ptr noundef nonnull %i.mi, ptr noundef nonnull %i.mc, ptr noundef nonnull align 8 dereferenceable(8) %9) ; 3 uses
  br label %.noexc.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i, %bb.av
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ml, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %i.mj, %bb.av ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ml, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.i.i.i.i.i.i.i.i.i, !llvm.loop !46

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  store ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.me, align 8, !tbaa !333
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mj, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.mn, %bb.aw ] ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !35 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mn, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ax, label %bb.aw, !llvm.loop !47

bb.ax:                                            ; preds = %bb.aw
  store ptr %.0.i.i7.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.mf, align 8, !tbaa !333
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lx, i64 40
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !330
  store i64 %i.mp, ptr %i.mg, align 8, !tbaa !330
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  store ptr %i.mj, ptr %i.md, align 8, !tbaa !333
  br label %bb.ay

bb.ay:                                            ; preds = %bb.au, %bb.ax
  %i.mq = getelementptr inbounds nuw i8, ptr %24, i64 48
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lx, i64 48
  %i.ms = load i8, ptr %i.mr, align 8, !tbaa !341
  store i8 %i.ms, ptr %i.mq, align 8, !tbaa !341
  store i8 1, ptr %i.lz, align 8, !tbaa !32
  %i.mt = invoke i32 @_ZN13WearBarParams15getWearBarColorEf(ptr noundef nonnull align 8 dereferenceable(49) %24, float noundef %i.lo)
          to label %bb.bc unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

_ZNSt8optionalI13WearBarParamsEC2ERKS1_.exit:     ; preds = %bb.at
  %i.mv = fmul nnan nsz float %i.lm, 6.000000e+02
  %i.mw = call nsz noundef float @llvm.floor.f32(float %i.mv) ; 2 uses
  %i.mx = fcmp nsz olt float %i.mw, 5.110000e+02
  br i1 %i.mx, label %bb.ba, label %.thread423

bb.ba:                                            ; preds = %_ZNSt8optionalI13WearBarParamsEC2ERKS1_.exit
  %i.my = fptosi float %i.mw to i32               ; 2 uses
  %i.mz = call i32 @llvm.smin.i32(i32 %i.my, i32 501)
  %i.na = add nuw nsw i32 %i.mz, 10               ; 2 uses
  %i.nb = icmp samesign ult i32 %i.my, 246
  br i1 %i.nb, label %bb.bb, label %.thread423

bb.bb:                                            ; preds = %bb.ba
  %i.nc = shl nuw nsw i32 %i.na, 16
  %i.nd = or i32 %i.nc, -16711936
  br label %bb.bc

.thread423:                                       ; preds = %_ZNSt8optionalI13WearBarParamsEC2ERKS1_.exit, %bb.ba
  %i.ne = phi i32 [ %i.na, %bb.ba ], [ 511, %_ZNSt8optionalI13WearBarParamsEC2ERKS1_.exit ]
  %i.nf = shl i32 %i.ne, 8
  %i.ng = sub i32 65280, %i.nf
  %i.nh = or i32 %i.ng, -65536
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ay, %bb.bb, %.thread423
  %.sroa.0370.0 = phi i32 [ %i.nh, %.thread423 ], [ %i.nd, %bb.bb ], [ %i.mt, %bb.ay ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  store i32 %i.lf, ptr %25, align 4, !tbaa !264
  %.sroa.7373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 4 ; 2 uses
  store i32 %i.lj, ptr %.sroa.7373.0..sroa_idx, align 4, !tbaa !264
  %.sroa.8376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 12
  %i.ni = extractelement <2 x i32> %i.lk, i64 1
  store i32 %i.ni, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !264
  store i32 %i.lt, ptr %.sroa.8376.0..sroa_idx, align 4, !tbaa !268
  %i.nj = load ptr, ptr %0, align 8, !tbaa !22
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 424
  %i.nl = load ptr, ptr %i.nk, align 8
  invoke void %i.nl(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %.sroa.0370.0, ptr noundef nonnull align 4 dereferenceable(16) %25, ptr noundef %4)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.lj, ptr %.sroa.7373.0..sroa_idx, align 4, !tbaa !264
  store <2 x i32> %i.lk, ptr %.sroa.8376.0..sroa_idx, align 4, !tbaa !264
  store i32 %i.lt, ptr %25, align 4, !tbaa !270
  %i.nm = load ptr, ptr %0, align 8, !tbaa !22
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 424
  %i.no = load ptr, ptr %i.nn, align 8
  invoke void %i.no(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 -16777216, ptr noundef nonnull align 4 dereferenceable(16) %25, ptr noundef %4)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  %i.np = load i8, ptr %i.lz, align 8, !tbaa !32, !range !29, !noundef !30
  %i.nq = trunc nuw i8 %i.np to i1
  store i8 0, ptr %i.lz, align 8, !tbaa !32
  br i1 %i.nq, label %bb.bf, label %_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit

bb.bf:                                            ; preds = %bb.be
  %i.nr = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !33
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(64) %24, ptr noundef %i.ns)
          to label %_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nt = landingpad { ptr, i32 }
          catch ptr null
  %i.nu = extractvalue { ptr, i32 } %i.nt, 0
  call void @__clang_call_terminate(ptr %i.nu) #21
  unreachable

_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit: ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %._crit_edge.i.i295

bb.bh:                                            ; preds = %bb.bd, %bb.bc
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.az
  %.pn260 = phi { ptr, i32 } [ %i.nv, %bb.bh ], [ %i.mu, %bb.az ]
  call void @_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %bb.cx

._crit_edge.i.i295:                               ; preds = %_ZNSt14_Optional_baseI13WearBarParamsLb0ELb0EED2Ev.exit, %bb.as, %bb.ar
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.nx = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.nx, ptr %26, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.nx, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false)
  %i.ny = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 10, ptr %i.ny, align 8, !tbaa !20
  %i.nz = getelementptr inbounds nuw i8, ptr %26, i64 26
  store i8 0, ptr %i.nz, align 2, !tbaa !19
  %i.oa = load ptr, ptr %i.nw, align 8, !tbaa !22
  %i.ob = getelementptr i8, ptr %i.oa, i64 -80
  %i.oc = load i64, ptr %i.ob, align 8
  %i.od = getelementptr inbounds i8, ptr %i.nw, i64 %i.oc
  %i.oe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9IMetadata9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_t(ptr noundef nonnull align 8 dereferenceable(8) %i.od, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef null, i16 noundef zeroext 0)
          to label %_ZNK14SimpleMetadata9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEt.exit unwind label %bb.ca ; 3 uses

_ZNK14SimpleMetadata9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEt.exit: ; preds = %._crit_edge.i.i295
  %i.of = load ptr, ptr %26, align 8, !tbaa !18   ; 2 uses
  %i.og = icmp eq ptr %i.of, %i.nx
  br i1 %i.og, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %_ZNK14SimpleMetadata9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEt.exit
end_hunk_0
