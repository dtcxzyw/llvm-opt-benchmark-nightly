inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl17unit_test_textureEv:._crit_edge.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 4984
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 1808
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 1816
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 4984
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 1808
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 1816
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 4984
  br label %bb.r

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #3
  ret void

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.b
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.k
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !34
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  br label %bb.ac

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.i
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.l
  %i.cq = load i64, ptr %i.i, align 8, !tbaa !34
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  br label %bb.ac

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.p
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.m
  %i.cv = load i64, ptr %i.p, align 8, !tbaa !34
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  br label %bb.ac

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.w
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.n
  %i.da = load i64, ptr %i.w, align 8, !tbaa !34
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  br label %bb.ac

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.ad
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.o
  %i.df = load i64, ptr %i.ad, align 8, !tbaa !34
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  br label %bb.ac

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.ak
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.p
  %i.dk = load i64, ptr %i.ak, align 8, !tbaa !34
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  br label %bb.ac

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.ar
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %bb.q
  %i.dp = load i64, ptr %i.ar, align 8, !tbaa !34
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #3
  br label %bb.ac

bb.r:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %.0228 = phi i32 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Ev.exit ], [ %i.ps, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ] ; 2 uses
  %.pre = load i64, ptr %i.bm, align 8, !tbaa !388
  br label %select.unfold.i.i.i.i

bb.s:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
  %i.dr = fdiv float %i.gk, %i.gl                 ; 2 uses
  %i.ds = fcmp ult float %i.dr, 1.000000e+00
  br i1 %i.ds, label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit, label %bb.t, !prof !348

select.unfold.i.i.i.i:                            ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit, %bb.r
  %i.dt = phi i64 [ %.pre, %bb.r ], [ %i.fv, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ] ; 2 uses
  %.023.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.r ], [ %i.gm, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ]
  %.01422.i.i.i.i = phi float [ 1.000000e+00, %bb.r ], [ %i.gl, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ] ; 2 uses
  %.01521.i.i.i.i = phi float [ 0.000000e+00, %bb.r ], [ %i.gk, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ]
  %i.du = icmp ugt i64 %i.dt, 623
  br i1 %i.du, label %vector.ph362, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

vector.ph362:                                     ; preds = %select.unfold.i.i.i.i
  %.pre.i.i = load i64, ptr %9, align 8, !tbaa !110
  %vector.recur.init365 = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 1
  br label %vector.body363

vector.body363:                                   ; preds = %vector.body363, %vector.ph362
  %index364 = phi i64 [ 0, %vector.ph362 ], [ %index.next369, %vector.body363 ] ; 3 uses
  %vector.recur366 = phi <2 x i64> [ %vector.recur.init365, %vector.ph362 ], [ %wide.load367, %vector.body363 ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index364 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index364
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %wide.load367 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !110 ; 5 uses
  %i.dy = shufflevector <2 x i64> %vector.recur366, <2 x i64> %wide.load367, <2 x i32> <i32 1, i32 2>
  %i.dz = and <2 x i64> %i.dy, splat (i64 -2147483648)
  %i.ea = and <2 x i64> %wide.load367, splat (i64 2147483646)
  %i.eb = or disjoint <2 x i64> %i.ea, %i.dz
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 3176
  %wide.load368 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !110
  %i.ed = lshr exact <2 x i64> %i.eb, splat (i64 1)
  %i.ee = xor <2 x i64> %i.ed, %wide.load368
  %i.ef = and <2 x i64> %wide.load367, splat (i64 1)
  %i.eg = icmp eq <2 x i64> %i.ef, zeroinitializer
  %i.eh = select <2 x i1> %i.eg, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.ei = xor <2 x i64> %i.ee, %i.eh
  store <2 x i64> %i.ei, ptr %i.dv, align 8, !tbaa !110
  %index.next369 = add nuw i64 %index364, 2       ; 2 uses
  %i.ej = icmp eq i64 %index.next369, 226
  br i1 %i.ej, label %vector.ph352, label %vector.body363, !llvm.loop !390

vector.ph352:                                     ; preds = %vector.body363
  %vector.recur.extract371 = extractelement <2 x i64> %wide.load367, i64 1
  %i.ek = and i64 %vector.recur.extract371, -2147483648
  %i.el = load i64, ptr %i.bx, align 8, !tbaa !110 ; 2 uses
  %i.em = and i64 %i.el, 2147483646
  %i.en = or disjoint i64 %i.em, %i.ek
  %i.eo = load i64, ptr %i.by, align 8, !tbaa !110
  %i.ep = lshr exact i64 %i.en, 1
  %i.eq = xor i64 %i.ep, %i.eo
  %i.er = and i64 %i.el, 1
  %.not20.i.i = icmp eq i64 %i.er, 0
  %i.es = select i1 %.not20.i.i, i64 0, i64 2567483615
  %i.et = xor i64 %i.eq, %i.es
  store i64 %i.et, ptr %i.bw, align 8, !tbaa !110
  %.pre24.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !110
  %vector.recur.init355 = insertelement <2 x i64> poison, i64 %.pre24.i.i, i64 1
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph352
  %index354 = phi i64 [ 0, %vector.ph352 ], [ %index.next359, %vector.body353 ] ; 3 uses
  %vector.recur356 = phi <2 x i64> [ %vector.recur.init355, %vector.ph352 ], [ %wide.load357, %vector.body353 ]
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index354 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1816
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index354
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1824
  %wide.load357 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !110 ; 4 uses
  %i.ey = shufflevector <2 x i64> %vector.recur356, <2 x i64> %wide.load357, <2 x i32> <i32 1, i32 2>
  %i.ez = and <2 x i64> %i.ey, splat (i64 -2147483648)
  %i.fa = and <2 x i64> %wide.load357, splat (i64 2147483646)
  %i.fb = or disjoint <2 x i64> %i.fa, %i.ez
  %wide.load358 = load <2 x i64>, ptr %i.eu, align 8, !tbaa !110
  %i.fc = lshr exact <2 x i64> %i.fb, splat (i64 1)
  %i.fd = xor <2 x i64> %i.fc, %wide.load358
  %i.fe = and <2 x i64> %wide.load357, splat (i64 1)
  %i.ff = icmp eq <2 x i64> %i.fe, zeroinitializer
  %i.fg = select <2 x i1> %i.ff, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.fh = xor <2 x i64> %i.fd, %i.fg
  store <2 x i64> %i.fh, ptr %i.ev, align 8, !tbaa !110
  %index.next359 = add nuw i64 %index354, 2       ; 2 uses
  %i.fi = icmp eq i64 %index.next359, 396
  br i1 %i.fi, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i, label %vector.body353, !llvm.loop !391

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i: ; preds = %vector.body353
  %i.fj = load i64, ptr %i.bt, align 8, !tbaa !110
  %i.fk = and i64 %i.fj, -2147483648
  %i.fl = load i64, ptr %9, align 8, !tbaa !110   ; 2 uses
  %i.fm = and i64 %i.fl, 2147483646
  %i.fn = or disjoint i64 %i.fm, %i.fk
  %i.fo = load i64, ptr %i.bu, align 8, !tbaa !110
  %i.fp = lshr exact i64 %i.fn, 1
  %i.fq = xor i64 %i.fp, %i.fo
  %i.fr = and i64 %i.fl, 1
  %.not.i.i = icmp eq i64 %i.fr, 0
  %i.fs = select i1 %.not.i.i, i64 0, i64 2567483615
  %i.ft = xor i64 %i.fq, %i.fs
  store i64 %i.ft, ptr %i.bt, align 8, !tbaa !110
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit: ; preds = %select.unfold.i.i.i.i, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
  %i.fu = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i ], [ %i.dt, %select.unfold.i.i.i.i ] ; 2 uses
  %i.fv = add nuw nsw i64 %i.fu, 1                ; 3 uses
  store i64 %i.fv, ptr %i.bm, align 8, !tbaa !388
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.fu
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !110 ; 2 uses
  %i.fy = lshr i64 %i.fx, 11
  %i.fz = and i64 %i.fy, 4294967295
  %i.ga = xor i64 %i.fz, %i.fx                    ; 2 uses
  %i.gb = shl i64 %i.ga, 7
  %i.gc = and i64 %i.gb, 2636928640
  %i.gd = xor i64 %i.gc, %i.ga                    ; 2 uses
  %i.ge = shl i64 %i.gd, 15
  %i.gf = and i64 %i.ge, 4022730752
  %i.gg = xor i64 %i.gf, %i.gd                    ; 2 uses
  %i.gh = lshr i64 %i.gg, 18
  %i.gi = xor i64 %i.gh, %i.gg
  %i.gj = uitofp i64 %i.gi to float
  %i.gk = call float @llvm.fmuladd.f32(float %i.gj, float %.01422.i.i.i.i, float %.01521.i.i.i.i) ; 2 uses
  %i.gl = fmul float %.01422.i.i.i.i, f0x4F800000 ; 2 uses
  %i.gm = add i64 %.023.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.gm, 0
  br i1 %.not.i.i.i.i, label %bb.s, label %select.unfold.i.i.i.i, !llvm.loop !392

bb.t:                                             ; preds = %bb.s
  br label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit

_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit: ; preds = %bb.s, %bb.t
  %.016.i.i.i.i = phi float [ f0x3F7FFFFF, %bb.t ], [ %i.dr, %bb.s ]
  br label %select.unfold.i.i.i.i137

bb.u:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit179
  %i.gn = fadd float %.016.i.i.i.i, 0.000000e+00
  %i.go = fadd float %i.gn, -5.000000e-01
  %i.gp = fmul float %i.go, 1.500000e+00
  %i.gq = fdiv float %i.jj, %i.jk                 ; 2 uses
  %i.gr = fcmp ult float %i.gq, 1.000000e+00
  br i1 %i.gr, label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit143, label %bb.v, !prof !348

select.unfold.i.i.i.i137:                         ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit179, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit
  %i.gs = phi i64 [ %i.fv, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit ], [ %i.iu, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit179 ] ; 2 uses
  %.023.i.i.i.i138 = phi i64 [ %spec.select.i.i.i.i, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit ], [ %i.jl, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit179 ]
  %.01422.i.i.i.i139 = phi float [ 1.000000e+00, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit ], [ %i.jk, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit179 ] ; 2 uses
  %.01521.i.i.i.i140 = phi float [ 0.000000e+00, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit ], [ %i.jj, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit179 ]
  %i.gt = icmp ugt i64 %i.gs, 623
  br i1 %i.gt, label %vector.ph341, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit179

vector.ph341:                                     ; preds = %select.unfold.i.i.i.i137
  %.pre.i.i166 = load i64, ptr %9, align 8, !tbaa !110
  %vector.recur.init344 = insertelement <2 x i64> poison, i64 %.pre.i.i166, i64 1
  br label %vector.body342

vector.body342:                                   ; preds = %vector.body342, %vector.ph341
  %index343 = phi i64 [ 0, %vector.ph341 ], [ %index.next348, %vector.body342 ] ; 3 uses
  %vector.recur345 = phi <2 x i64> [ %vector.recur.init344, %vector.ph341 ], [ %wide.load346, %vector.body342 ]
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index343 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index343
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %wide.load346 = load <2 x i64>, ptr %i.gw, align 8, !tbaa !110 ; 5 uses
  %i.gx = shufflevector <2 x i64> %vector.recur345, <2 x i64> %wide.load346, <2 x i32> <i32 1, i32 2>
  %i.gy = and <2 x i64> %i.gx, splat (i64 -2147483648)
  %i.gz = and <2 x i64> %wide.load346, splat (i64 2147483646)
  %i.ha = or disjoint <2 x i64> %i.gz, %i.gy
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gu, i64 3176
  %wide.load347 = load <2 x i64>, ptr %i.hb, align 8, !tbaa !110
  %i.hc = lshr exact <2 x i64> %i.ha, splat (i64 1)
  %i.hd = xor <2 x i64> %i.hc, %wide.load347
  %i.he = and <2 x i64> %wide.load346, splat (i64 1)
  %i.hf = icmp eq <2 x i64> %i.he, zeroinitializer
  %i.hg = select <2 x i1> %i.hf, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.hh = xor <2 x i64> %i.hd, %i.hg
  store <2 x i64> %i.hh, ptr %i.gu, align 8, !tbaa !110
  %index.next348 = add nuw i64 %index343, 2       ; 2 uses
  %i.hi = icmp eq i64 %index.next348, 226
  br i1 %i.hi, label %vector.ph331, label %vector.body342, !llvm.loop !393

vector.ph331:                                     ; preds = %vector.body342
  %vector.recur.extract350 = extractelement <2 x i64> %wide.load346, i64 1
  %i.hj = and i64 %vector.recur.extract350, -2147483648
  %i.hk = load i64, ptr %i.ca, align 8, !tbaa !110 ; 2 uses
  %i.hl = and i64 %i.hk, 2147483646
  %i.hm = or disjoint i64 %i.hl, %i.hj
  %i.hn = load i64, ptr %i.cb, align 8, !tbaa !110
  %i.ho = lshr exact i64 %i.hm, 1
  %i.hp = xor i64 %i.ho, %i.hn
  %i.hq = and i64 %i.hk, 1
  %.not20.i.i168 = icmp eq i64 %i.hq, 0
  %i.hr = select i1 %.not20.i.i168, i64 0, i64 2567483615
  %i.hs = xor i64 %i.hp, %i.hr
  store i64 %i.hs, ptr %i.bz, align 8, !tbaa !110
  %.pre24.i.i172 = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !110
  %vector.recur.init334 = insertelement <2 x i64> poison, i64 %.pre24.i.i172, i64 1
  br label %vector.body332

vector.body332:                                   ; preds = %vector.body332, %vector.ph331
  %index333 = phi i64 [ 0, %vector.ph331 ], [ %index.next338, %vector.body332 ] ; 3 uses
  %vector.recur335 = phi <2 x i64> [ %vector.recur.init334, %vector.ph331 ], [ %wide.load336, %vector.body332 ]
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index333 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 1816
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index333
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1824
  %wide.load336 = load <2 x i64>, ptr %i.hw, align 8, !tbaa !110 ; 4 uses
  %i.hx = shufflevector <2 x i64> %vector.recur335, <2 x i64> %wide.load336, <2 x i32> <i32 1, i32 2>
  %i.hy = and <2 x i64> %i.hx, splat (i64 -2147483648)
  %i.hz = and <2 x i64> %wide.load336, splat (i64 2147483646)
  %i.ia = or disjoint <2 x i64> %i.hz, %i.hy
  %wide.load337 = load <2 x i64>, ptr %i.ht, align 8, !tbaa !110
  %i.ib = lshr exact <2 x i64> %i.ia, splat (i64 1)
  %i.ic = xor <2 x i64> %i.ib, %wide.load337
  %i.id = and <2 x i64> %wide.load336, splat (i64 1)
  %i.ie = icmp eq <2 x i64> %i.id, zeroinitializer
  %i.if = select <2 x i1> %i.ie, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.ig = xor <2 x i64> %i.ic, %i.if
  store <2 x i64> %i.ig, ptr %i.hu, align 8, !tbaa !110
  %index.next338 = add nuw i64 %index333, 2       ; 2 uses
  %i.ih = icmp eq i64 %index.next338, 396
  br i1 %i.ih, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i177, label %vector.body332, !llvm.loop !394

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i177: ; preds = %vector.body332
  %i.ii = load i64, ptr %i.bt, align 8, !tbaa !110
  %i.ij = and i64 %i.ii, -2147483648
  %i.ik = load i64, ptr %9, align 8, !tbaa !110   ; 2 uses
  %i.il = and i64 %i.ik, 2147483646
  %i.im = or disjoint i64 %i.il, %i.ij
  %i.in = load i64, ptr %i.bu, align 8, !tbaa !110
  %i.io = lshr exact i64 %i.im, 1
  %i.ip = xor i64 %i.io, %i.in
  %i.iq = and i64 %i.ik, 1
  %.not.i.i178 = icmp eq i64 %i.iq, 0
  %i.ir = select i1 %.not.i.i178, i64 0, i64 2567483615
  %i.is = xor i64 %i.ip, %i.ir
  store i64 %i.is, ptr %i.bt, align 8, !tbaa !110
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit179

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit179: ; preds = %select.unfold.i.i.i.i137, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i177
  %i.it = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i177 ], [ %i.gs, %select.unfold.i.i.i.i137 ] ; 2 uses
  %i.iu = add nuw nsw i64 %i.it, 1                ; 3 uses
  store i64 %i.iu, ptr %i.bm, align 8, !tbaa !388
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.it
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !110 ; 2 uses
  %i.ix = lshr i64 %i.iw, 11
  %i.iy = and i64 %i.ix, 4294967295
  %i.iz = xor i64 %i.iy, %i.iw                    ; 2 uses
  %i.ja = shl i64 %i.iz, 7
  %i.jb = and i64 %i.ja, 2636928640
  %i.jc = xor i64 %i.jb, %i.iz                    ; 2 uses
  %i.jd = shl i64 %i.jc, 15
  %i.je = and i64 %i.jd, 4022730752
  %i.jf = xor i64 %i.je, %i.jc                    ; 2 uses
  %i.jg = lshr i64 %i.jf, 18
  %i.jh = xor i64 %i.jg, %i.jf
  %i.ji = uitofp i64 %i.jh to float
  %i.jj = call float @llvm.fmuladd.f32(float %i.ji, float %.01422.i.i.i.i139, float %.01521.i.i.i.i140) ; 2 uses
  %i.jk = fmul float %.01422.i.i.i.i139, f0x4F800000 ; 2 uses
  %i.jl = add i64 %.023.i.i.i.i138, -1            ; 2 uses
  %.not.i.i.i.i141 = icmp eq i64 %i.jl, 0
  br i1 %.not.i.i.i.i141, label %bb.u, label %select.unfold.i.i.i.i137, !llvm.loop !392

bb.v:                                             ; preds = %bb.u
  br label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit143

_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit143: ; preds = %bb.u, %bb.v
  %.016.i.i.i.i142 = phi float [ f0x3F7FFFFF, %bb.v ], [ %i.gq, %bb.u ]
  br label %select.unfold.i.i.i.i145

bb.w:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit193
  %i.jm = fadd float %.016.i.i.i.i142, 0.000000e+00
  %i.jn = fadd float %i.jm, -5.000000e-01
  %i.jo = fmul float %i.jn, 1.500000e+00
  %i.jp = fdiv float %i.mi, %i.mj                 ; 2 uses
  %i.jq = fcmp ult float %i.jp, 1.000000e+00
  br i1 %i.jq, label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit151, label %bb.x, !prof !348

select.unfold.i.i.i.i145:                         ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit193, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit143
  %i.jr = phi i64 [ %i.iu, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit143 ], [ %i.lt, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit193 ] ; 2 uses
  %.023.i.i.i.i146 = phi i64 [ %spec.select.i.i.i.i, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit143 ], [ %i.mk, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit193 ]
  %.01422.i.i.i.i147 = phi float [ 1.000000e+00, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit143 ], [ %i.mj, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit193 ] ; 2 uses
  %.01521.i.i.i.i148 = phi float [ 0.000000e+00, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit143 ], [ %i.mi, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit193 ]
  %i.js = icmp ugt i64 %i.jr, 623
  br i1 %i.js, label %vector.ph320, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit193

vector.ph320:                                     ; preds = %select.unfold.i.i.i.i145
  %.pre.i.i180 = load i64, ptr %9, align 8, !tbaa !110
  %vector.recur.init323 = insertelement <2 x i64> poison, i64 %.pre.i.i180, i64 1
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph320
  %index322 = phi i64 [ 0, %vector.ph320 ], [ %index.next327, %vector.body321 ] ; 3 uses
  %vector.recur324 = phi <2 x i64> [ %vector.recur.init323, %vector.ph320 ], [ %wide.load325, %vector.body321 ]
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index322 ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index322
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %wide.load325 = load <2 x i64>, ptr %i.jv, align 8, !tbaa !110 ; 5 uses
  %i.jw = shufflevector <2 x i64> %vector.recur324, <2 x i64> %wide.load325, <2 x i32> <i32 1, i32 2>
  %i.jx = and <2 x i64> %i.jw, splat (i64 -2147483648)
  %i.jy = and <2 x i64> %wide.load325, splat (i64 2147483646)
  %i.jz = or disjoint <2 x i64> %i.jy, %i.jx
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jt, i64 3176
  %wide.load326 = load <2 x i64>, ptr %i.ka, align 8, !tbaa !110
  %i.kb = lshr exact <2 x i64> %i.jz, splat (i64 1)
  %i.kc = xor <2 x i64> %i.kb, %wide.load326
  %i.kd = and <2 x i64> %wide.load325, splat (i64 1)
  %i.ke = icmp eq <2 x i64> %i.kd, zeroinitializer
  %i.kf = select <2 x i1> %i.ke, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.kg = xor <2 x i64> %i.kc, %i.kf
  store <2 x i64> %i.kg, ptr %i.jt, align 8, !tbaa !110
  %index.next327 = add nuw i64 %index322, 2       ; 2 uses
  %i.kh = icmp eq i64 %index.next327, 226
  br i1 %i.kh, label %vector.ph310, label %vector.body321, !llvm.loop !395

vector.ph310:                                     ; preds = %vector.body321
  %vector.recur.extract329 = extractelement <2 x i64> %wide.load325, i64 1
  %i.ki = and i64 %vector.recur.extract329, -2147483648
  %i.kj = load i64, ptr %i.cd, align 8, !tbaa !110 ; 2 uses
  %i.kk = and i64 %i.kj, 2147483646
  %i.kl = or disjoint i64 %i.kk, %i.ki
  %i.km = load i64, ptr %i.ce, align 8, !tbaa !110
  %i.kn = lshr exact i64 %i.kl, 1
  %i.ko = xor i64 %i.kn, %i.km
  %i.kp = and i64 %i.kj, 1
  %.not20.i.i182 = icmp eq i64 %i.kp, 0
  %i.kq = select i1 %.not20.i.i182, i64 0, i64 2567483615
  %i.kr = xor i64 %i.ko, %i.kq
  store i64 %i.kr, ptr %i.cc, align 8, !tbaa !110
  %.pre24.i.i186 = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !110
  %vector.recur.init313 = insertelement <2 x i64> poison, i64 %.pre24.i.i186, i64 1
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph310
  %index312 = phi i64 [ 0, %vector.ph310 ], [ %index.next317, %vector.body311 ] ; 3 uses
  %vector.recur314 = phi <2 x i64> [ %vector.recur.init313, %vector.ph310 ], [ %wide.load315, %vector.body311 ]
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index312 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 1816
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index312
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 1824
  %wide.load315 = load <2 x i64>, ptr %i.kv, align 8, !tbaa !110 ; 4 uses
  %i.kw = shufflevector <2 x i64> %vector.recur314, <2 x i64> %wide.load315, <2 x i32> <i32 1, i32 2>
  %i.kx = and <2 x i64> %i.kw, splat (i64 -2147483648)
  %i.ky = and <2 x i64> %wide.load315, splat (i64 2147483646)
  %i.kz = or disjoint <2 x i64> %i.ky, %i.kx
  %wide.load316 = load <2 x i64>, ptr %i.ks, align 8, !tbaa !110
  %i.la = lshr exact <2 x i64> %i.kz, splat (i64 1)
  %i.lb = xor <2 x i64> %i.la, %wide.load316
  %i.lc = and <2 x i64> %wide.load315, splat (i64 1)
  %i.ld = icmp eq <2 x i64> %i.lc, zeroinitializer
  %i.le = select <2 x i1> %i.ld, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.lf = xor <2 x i64> %i.lb, %i.le
  store <2 x i64> %i.lf, ptr %i.kt, align 8, !tbaa !110
  %index.next317 = add nuw i64 %index312, 2       ; 2 uses
  %i.lg = icmp eq i64 %index.next317, 396
  br i1 %i.lg, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i191, label %vector.body311, !llvm.loop !396

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i191: ; preds = %vector.body311
  %i.lh = load i64, ptr %i.bt, align 8, !tbaa !110
  %i.li = and i64 %i.lh, -2147483648
  %i.lj = load i64, ptr %9, align 8, !tbaa !110   ; 2 uses
  %i.lk = and i64 %i.lj, 2147483646
  %i.ll = or disjoint i64 %i.lk, %i.li
  %i.lm = load i64, ptr %i.bu, align 8, !tbaa !110
  %i.ln = lshr exact i64 %i.ll, 1
  %i.lo = xor i64 %i.ln, %i.lm
  %i.lp = and i64 %i.lj, 1
  %.not.i.i192 = icmp eq i64 %i.lp, 0
  %i.lq = select i1 %.not.i.i192, i64 0, i64 2567483615
  %i.lr = xor i64 %i.lo, %i.lq
  store i64 %i.lr, ptr %i.bt, align 8, !tbaa !110
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit193

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit193: ; preds = %select.unfold.i.i.i.i145, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i191
  %i.ls = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i191 ], [ %i.jr, %select.unfold.i.i.i.i145 ] ; 2 uses
  %i.lt = add nuw nsw i64 %i.ls, 1                ; 3 uses
  store i64 %i.lt, ptr %i.bm, align 8, !tbaa !388
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ls
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !110 ; 2 uses
  %i.lw = lshr i64 %i.lv, 11
  %i.lx = and i64 %i.lw, 4294967295
  %i.ly = xor i64 %i.lx, %i.lv                    ; 2 uses
  %i.lz = shl i64 %i.ly, 7
  %i.ma = and i64 %i.lz, 2636928640
  %i.mb = xor i64 %i.ma, %i.ly                    ; 2 uses
  %i.mc = shl i64 %i.mb, 15
  %i.md = and i64 %i.mc, 4022730752
  %i.me = xor i64 %i.md, %i.mb                    ; 2 uses
  %i.mf = lshr i64 %i.me, 18
  %i.mg = xor i64 %i.mf, %i.me
  %i.mh = uitofp i64 %i.mg to float
  %i.mi = call float @llvm.fmuladd.f32(float %i.mh, float %.01422.i.i.i.i147, float %.01521.i.i.i.i148) ; 2 uses
  %i.mj = fmul float %.01422.i.i.i.i147, f0x4F800000 ; 2 uses
  %i.mk = add i64 %.023.i.i.i.i146, -1            ; 2 uses
  %.not.i.i.i.i149 = icmp eq i64 %i.mk, 0
  br i1 %.not.i.i.i.i149, label %bb.w, label %select.unfold.i.i.i.i145, !llvm.loop !392

bb.x:                                             ; preds = %bb.w
  br label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit151

_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit151: ; preds = %bb.w, %bb.x
  %.016.i.i.i.i150 = phi float [ f0x3F7FFFFF, %bb.x ], [ %i.jp, %bb.w ]
  br label %select.unfold.i.i.i.i153

bb.y:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit207
  %i.ml = fadd float %.016.i.i.i.i150, 0.000000e+00
  %i.mm = fadd float %i.ml, -5.000000e-01
  %i.mn = fmul float %i.mm, 1.500000e+00
  %i.mo = fdiv float %i.ph, %i.pi                 ; 2 uses
  %i.mp = fcmp ult float %i.mo, 1.000000e+00
  br i1 %i.mp, label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit159, label %bb.z, !prof !348

select.unfold.i.i.i.i153:                         ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit207, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit151
  %i.mq = phi i64 [ %i.lt, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit151 ], [ %i.os, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit207 ] ; 2 uses
  %.023.i.i.i.i154 = phi i64 [ %spec.select.i.i.i.i, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit151 ], [ %i.pj, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit207 ]
  %.01422.i.i.i.i155 = phi float [ 1.000000e+00, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit151 ], [ %i.pi, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit207 ] ; 2 uses
  %.01521.i.i.i.i156 = phi float [ 0.000000e+00, %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit151 ], [ %i.ph, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit207 ]
  %i.mr = icmp ugt i64 %i.mq, 623
  br i1 %i.mr, label %vector.ph300, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit207

vector.ph300:                                     ; preds = %select.unfold.i.i.i.i153
  %.pre.i.i194 = load i64, ptr %9, align 8, !tbaa !110
  %vector.recur.init303 = insertelement <2 x i64> poison, i64 %.pre.i.i194, i64 1
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph300
  %index302 = phi i64 [ 0, %vector.ph300 ], [ %index.next307, %vector.body301 ] ; 3 uses
  %vector.recur304 = phi <2 x i64> [ %vector.recur.init303, %vector.ph300 ], [ %wide.load305, %vector.body301 ]
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index302 ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index302
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %wide.load305 = load <2 x i64>, ptr %i.mu, align 8, !tbaa !110 ; 5 uses
  %i.mv = shufflevector <2 x i64> %vector.recur304, <2 x i64> %wide.load305, <2 x i32> <i32 1, i32 2>
  %i.mw = and <2 x i64> %i.mv, splat (i64 -2147483648)
  %i.mx = and <2 x i64> %wide.load305, splat (i64 2147483646)
  %i.my = or disjoint <2 x i64> %i.mx, %i.mw
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ms, i64 3176
  %wide.load306 = load <2 x i64>, ptr %i.mz, align 8, !tbaa !110
  %i.na = lshr exact <2 x i64> %i.my, splat (i64 1)
  %i.nb = xor <2 x i64> %i.na, %wide.load306
  %i.nc = and <2 x i64> %wide.load305, splat (i64 1)
  %i.nd = icmp eq <2 x i64> %i.nc, zeroinitializer
  %i.ne = select <2 x i1> %i.nd, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.nf = xor <2 x i64> %i.nb, %i.ne
  store <2 x i64> %i.nf, ptr %i.ms, align 8, !tbaa !110
  %index.next307 = add nuw i64 %index302, 2       ; 2 uses
  %i.ng = icmp eq i64 %index.next307, 226
  br i1 %i.ng, label %vector.ph, label %vector.body301, !llvm.loop !397

vector.ph:                                        ; preds = %vector.body301
  %vector.recur.extract = extractelement <2 x i64> %wide.load305, i64 1
  %i.nh = and i64 %vector.recur.extract, -2147483648
  %i.ni = load i64, ptr %i.cg, align 8, !tbaa !110 ; 2 uses
  %i.nj = and i64 %i.ni, 2147483646
  %i.nk = or disjoint i64 %i.nj, %i.nh
  %i.nl = load i64, ptr %i.ch, align 8, !tbaa !110
  %i.nm = lshr exact i64 %i.nk, 1
  %i.nn = xor i64 %i.nm, %i.nl
  %i.no = and i64 %i.ni, 1
  %.not20.i.i196 = icmp eq i64 %i.no, 0
  %i.np = select i1 %.not20.i.i196, i64 0, i64 2567483615
  %i.nq = xor i64 %i.nn, %i.np
  store i64 %i.nq, ptr %i.cf, align 8, !tbaa !110
  %.pre24.i.i200 = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !110
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre24.i.i200, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 1816
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 1824
  %wide.load = load <2 x i64>, ptr %i.nu, align 8, !tbaa !110 ; 4 uses
  %i.nv = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.nw = and <2 x i64> %i.nv, splat (i64 -2147483648)
  %i.nx = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.ny = or disjoint <2 x i64> %i.nx, %i.nw
  %wide.load299 = load <2 x i64>, ptr %i.nr, align 8, !tbaa !110
  %i.nz = lshr exact <2 x i64> %i.ny, splat (i64 1)
  %i.oa = xor <2 x i64> %i.nz, %wide.load299
  %i.ob = and <2 x i64> %wide.load, splat (i64 1)
  %i.oc = icmp eq <2 x i64> %i.ob, zeroinitializer
  %i.od = select <2 x i1> %i.oc, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.oe = xor <2 x i64> %i.oa, %i.od
  store <2 x i64> %i.oe, ptr %i.ns, align 8, !tbaa !110
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.of = icmp eq i64 %index.next, 396
  br i1 %i.of, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i205, label %vector.body, !llvm.loop !398

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i205: ; preds = %vector.body
  %i.og = load i64, ptr %i.bt, align 8, !tbaa !110
  %i.oh = and i64 %i.og, -2147483648
  %i.oi = load i64, ptr %9, align 8, !tbaa !110   ; 2 uses
  %i.oj = and i64 %i.oi, 2147483646
  %i.ok = or disjoint i64 %i.oj, %i.oh
  %i.ol = load i64, ptr %i.bu, align 8, !tbaa !110
  %i.om = lshr exact i64 %i.ok, 1
  %i.on = xor i64 %i.om, %i.ol
  %i.oo = and i64 %i.oi, 1
  %.not.i.i206 = icmp eq i64 %i.oo, 0
  %i.op = select i1 %.not.i.i206, i64 0, i64 2567483615
  %i.oq = xor i64 %i.on, %i.op
  store i64 %i.oq, ptr %i.bt, align 8, !tbaa !110
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit207

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit207: ; preds = %select.unfold.i.i.i.i153, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i205
  %i.or = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i205 ], [ %i.mq, %select.unfold.i.i.i.i153 ] ; 2 uses
  %i.os = add nuw nsw i64 %i.or, 1                ; 2 uses
  store i64 %i.os, ptr %i.bm, align 8, !tbaa !388
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.or
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !110 ; 2 uses
  %i.ov = lshr i64 %i.ou, 11
  %i.ow = and i64 %i.ov, 4294967295
  %i.ox = xor i64 %i.ow, %i.ou                    ; 2 uses
  %i.oy = shl i64 %i.ox, 7
  %i.oz = and i64 %i.oy, 2636928640
  %i.pa = xor i64 %i.oz, %i.ox                    ; 2 uses
  %i.pb = shl i64 %i.pa, 15
  %i.pc = and i64 %i.pb, 4022730752
  %i.pd = xor i64 %i.pc, %i.pa                    ; 2 uses
  %i.pe = lshr i64 %i.pd, 18
  %i.pf = xor i64 %i.pe, %i.pd
  %i.pg = uitofp i64 %i.pf to float
  %i.ph = call float @llvm.fmuladd.f32(float %i.pg, float %.01422.i.i.i.i155, float %.01521.i.i.i.i156) ; 2 uses
  %i.pi = fmul float %.01422.i.i.i.i155, f0x4F800000 ; 2 uses
  %i.pj = add i64 %.023.i.i.i.i154, -1            ; 2 uses
  %.not.i.i.i.i157 = icmp eq i64 %i.pj, 0
  br i1 %.not.i.i.i.i157, label %bb.y, label %select.unfold.i.i.i.i153, !llvm.loop !392

bb.z:                                             ; preds = %bb.y
  br label %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit159

_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit159: ; preds = %bb.y, %bb.z
  %.016.i.i.i.i158 = phi float [ f0x3F7FFFFF, %bb.z ], [ %i.mo, %bb.y ]
  %i.pk = fadd float %.016.i.i.i.i158, 0.000000e+00
  %i.pl = fadd float %i.pk, -5.000000e-01
  %i.pm = fmul float %i.pl, 1.500000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #3
  %i.pn = add nuw nsw i32 %.0228, 100
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3, !noalias !399
  %.sroa.03.0.insert.ext.i = zext nneg i32 %i.pn to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %1, align 16, !noalias !399
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.74, i64 10, i64 1, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3, !noalias !399
  invoke void @_ZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffff(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(32) %10, float noundef %i.gp, float noundef %i.jo, float noundef %i.mn, float noundef %i.pm, float noundef %i.a, float noundef 0.000000e+00)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit159
  %i.po = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  %i.pp = icmp eq ptr %i.po, %i.bv
  br i1 %i.pp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.aa
  %i.pq = load i64, ptr %i.bv, align 8, !tbaa !34
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.pr) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #3
  %i.ps = add nuw nsw i32 %.0228, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ps, 100
  br i1 %exitcond.not, label %bb.j, label %bb.r, !llvm.loop !402

bb.ab:                                            ; preds = %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit159
  %i.pt = landingpad { ptr, i32 }
          cleanup
  %i.pu = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  %i.pv = icmp eq ptr %i.pu, %i.bv
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %bb.ab
  %i.pw = load i64, ptr %i.bv, align 8, !tbaa !34
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.px) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #3
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %.pn71 = phi { ptr, i32 } [ %i.pt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ], [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ]
  resume { ptr, i32 } %.pn71
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11OpenImageIO4v3_117TextureSystemImplD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(188) dereferenceable(188) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZNK11OpenImageIO4v3_117TextureSystemImpl10printstatsEv(ptr noundef nonnull align 8 dereferenceable(188) %0)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN11OpenImageIO4v3_18Filter1DESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN11OpenImageIO4v3_18Filter1DEEclEPS2_.exit.i

_ZNKSt14default_deleteIN11OpenImageIO4v3_18Filter1DEEclEPS2_.exit.i: ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.b) #3, !inline_history !386
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_18Filter1DESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN11OpenImageIO4v3_18Filter1DESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN11OpenImageIO4v3_18Filter1DEEclEPS2_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 8 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN11OpenImageIO4v3_18Filter1DESt14default_deleteIS2_EED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !48
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #3, !inline_history !57
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #3, !inline_history !57
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #3
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN11OpenImageIO4v3_18Filter1DESt14default_deleteIS2_EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  ret void

bb.i:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #46
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11OpenImageIO4v3_117TextureSystemImpl10printstatsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(188) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
end_hunk_0
