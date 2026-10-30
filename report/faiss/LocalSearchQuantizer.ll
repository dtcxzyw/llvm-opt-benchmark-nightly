Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/LocalSearchQuantizer?download=true
inline.NumInlined: 876
inline.NumDeleted: 439
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE:bb.a
  store <2 x i64> %i.bk, ptr %i.ay, align 8, !tbaa !65
  %index.next97 = add nuw i64 %index92, 2         ; 2 uses
  %i.bl = icmp eq i64 %index.next97, 396
  br i1 %i.bl, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i, label %vector.body91, !llvm.loop !196

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i: ; preds = %vector.body91
  %i.bm = load i64, ptr %i.k, align 8, !tbaa !65
  %i.bn = and i64 %i.bm, -2147483648
  %i.bo = load i64, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.bp = and i64 %i.bo, 2147483646
  %i.bq = or disjoint i64 %i.bp, %i.bn
  %i.br = load i64, ptr %i.l, align 8, !tbaa !65
  %i.bs = lshr exact i64 %i.bq, 1
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = and i64 %i.bo, 1
  %.not.i.i26 = icmp eq i64 %i.bu, 0
  %i.bv = select i1 %.not.i.i26, i64 0, i64 2567483615
  %i.bw = xor i64 %i.bt, %i.bv
  store i64 %i.bw, ptr %i.k, align 8, !tbaa !65
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit: ; preds = %select.unfold.i.i, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
  %i.bx = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i ], [ %i.w, %select.unfold.i.i ] ; 2 uses
  %i.by = add nuw nsw i64 %i.bx, 1                ; 3 uses
  store i64 %i.by, ptr %i.j, align 8, !tbaa !90
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bx
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !65 ; 2 uses
  %i.cb = lshr i64 %i.ca, 11
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = xor i64 %i.cc, %i.ca                    ; 2 uses
  %i.ce = shl i64 %i.cd, 7
  %i.cf = and i64 %i.ce, 2636928640
  %i.cg = xor i64 %i.cf, %i.cd                    ; 2 uses
  %i.ch = shl i64 %i.cg, 15
  %i.ci = and i64 %i.ch, 4022730752
  %i.cj = xor i64 %i.ci, %i.cg                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 18
  %i.cl = xor i64 %i.ck, %i.cj
  %i.cm = uitofp i64 %i.cl to float
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float %.01422.i.i, float %.01521.i.i) ; 2 uses
  %i.co = fmul float %.01422.i.i, f0x4F800000     ; 2 uses
  %i.cp = add i64 %.023.i.i, -1                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i, label %bb.c, label %select.unfold.i.i.backedge

select.unfold.i.i.backedge:                       ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit25
  %.be = phi i64 [ %i.by, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ], [ %i.ew, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit25 ]
  %.023.i.i.be = phi i64 [ %i.cp, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ], [ %spec.select.i.i, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit25 ]
  %.01422.i.i.be = phi float [ %i.co, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ], [ 1.000000e+00, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit25 ]
  %.01521.i.i.be = phi float [ %i.cn, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit ], [ 0.000000e+00, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit25 ]
  br label %select.unfold.i.i, !llvm.loop !197

bb.d:                                             ; preds = %bb.c
  br label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit

_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit: ; preds = %bb.c, %bb.d
  %.016.i.i = phi float [ f0x3F7FFFFF, %bb.d ], [ %i.u, %bb.c ]
  br label %select.unfold.i.i19

bb.e:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit40
  %i.cq = fmul float %.016.i.i, 2.000000e+00
  %i.cr = fadd float %i.cq, -1.000000e+00         ; 3 uses
  %i.cs = fdiv float %i.fl, %i.fm                 ; 2 uses
  %i.ct = fcmp ult float %i.cs, 1.000000e+00
  br i1 %i.ct, label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit25, label %bb.f, !prof !126

select.unfold.i.i19:                              ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit40, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit
  %i.cu = phi i64 [ %i.by, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit ], [ %i.ew, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit40 ] ; 2 uses
  %.023.i.i20 = phi i64 [ %spec.select.i.i, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit ], [ %i.fn, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit40 ]
  %.01422.i.i21 = phi float [ 1.000000e+00, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit ], [ %i.fm, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit40 ] ; 2 uses
  %.01521.i.i22 = phi float [ 0.000000e+00, %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit ], [ %i.fl, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit40 ]
  %i.cv = icmp ugt i64 %i.cu, 623
  br i1 %i.cv, label %vector.ph80, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit40

vector.ph80:                                      ; preds = %select.unfold.i.i19
  %.pre.i.i27 = load i64, ptr %1, align 8, !tbaa !65
  %vector.recur.init83 = insertelement <2 x i64> poison, i64 %.pre.i.i27, i64 1
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph80
  %index82 = phi i64 [ 0, %vector.ph80 ], [ %index.next87, %vector.body81 ] ; 3 uses
  %vector.recur84 = phi <2 x i64> [ %vector.recur.init83, %vector.ph80 ], [ %wide.load85, %vector.body81 ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index82 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index82
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %wide.load85 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !65 ; 5 uses
  %i.cz = shufflevector <2 x i64> %vector.recur84, <2 x i64> %wide.load85, <2 x i32> <i32 1, i32 2>
  %i.da = and <2 x i64> %i.cz, splat (i64 -2147483648)
  %i.db = and <2 x i64> %wide.load85, splat (i64 2147483646)
  %i.dc = or disjoint <2 x i64> %i.db, %i.da
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 3176
  %wide.load86 = load <2 x i64>, ptr %i.dd, align 8, !tbaa !65
  %i.de = lshr exact <2 x i64> %i.dc, splat (i64 1)
  %i.df = xor <2 x i64> %i.de, %wide.load86
  %i.dg = and <2 x i64> %wide.load85, splat (i64 1)
  %i.dh = icmp eq <2 x i64> %i.dg, zeroinitializer
  %i.di = select <2 x i1> %i.dh, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.dj = xor <2 x i64> %i.df, %i.di
  store <2 x i64> %i.dj, ptr %i.cw, align 8, !tbaa !65
  %index.next87 = add nuw i64 %index82, 2         ; 2 uses
  %i.dk = icmp eq i64 %index.next87, 226
  br i1 %i.dk, label %vector.ph, label %vector.body81, !llvm.loop !198

vector.ph:                                        ; preds = %vector.body81
  %vector.recur.extract = extractelement <2 x i64> %wide.load85, i64 1
  %i.dl = and i64 %vector.recur.extract, -2147483648
  %i.dm = load i64, ptr %i.q, align 8, !tbaa !65  ; 2 uses
  %i.dn = and i64 %i.dm, 2147483646
  %i.do = or disjoint i64 %i.dn, %i.dl
  %i.dp = load i64, ptr %i.r, align 8, !tbaa !65
  %i.dq = lshr exact i64 %i.do, 1
  %i.dr = xor i64 %i.dq, %i.dp
  %i.ds = and i64 %i.dm, 1
  %.not20.i.i29 = icmp eq i64 %i.ds, 0
  %i.dt = select i1 %.not20.i.i29, i64 0, i64 2567483615
  %i.du = xor i64 %i.dr, %i.dt
  store i64 %i.du, ptr %i.p, align 8, !tbaa !65
  %.pre24.i.i33 = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !65
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre24.i.i33, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1816
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1824
  %wide.load = load <2 x i64>, ptr %i.dy, align 8, !tbaa !65 ; 4 uses
  %i.dz = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.ea = and <2 x i64> %i.dz, splat (i64 -2147483648)
  %i.eb = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.ec = or disjoint <2 x i64> %i.eb, %i.ea
  %wide.load79 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !65
  %i.ed = lshr exact <2 x i64> %i.ec, splat (i64 1)
  %i.ee = xor <2 x i64> %i.ed, %wide.load79
  %i.ef = and <2 x i64> %wide.load, splat (i64 1)
  %i.eg = icmp eq <2 x i64> %i.ef, zeroinitializer
  %i.eh = select <2 x i1> %i.eg, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.ei = xor <2 x i64> %i.ee, %i.eh
  store <2 x i64> %i.ei, ptr %i.dw, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ej = icmp eq i64 %index.next, 396
  br i1 %i.ej, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i38, label %vector.body, !llvm.loop !199

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i38: ; preds = %vector.body
  %i.ek = load i64, ptr %i.k, align 8, !tbaa !65
  %i.el = and i64 %i.ek, -2147483648
  %i.em = load i64, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.en = and i64 %i.em, 2147483646
  %i.eo = or disjoint i64 %i.en, %i.el
  %i.ep = load i64, ptr %i.l, align 8, !tbaa !65
  %i.eq = lshr exact i64 %i.eo, 1
  %i.er = xor i64 %i.eq, %i.ep
  %i.es = and i64 %i.em, 1
  %.not.i.i39 = icmp eq i64 %i.es, 0
  %i.et = select i1 %.not.i.i39, i64 0, i64 2567483615
  %i.eu = xor i64 %i.er, %i.et
  store i64 %i.eu, ptr %i.k, align 8, !tbaa !65
  br label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit40

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit40: ; preds = %select.unfold.i.i19, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i38
  %i.ev = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i38 ], [ %i.cu, %select.unfold.i.i19 ] ; 2 uses
  %i.ew = add nuw nsw i64 %i.ev, 1                ; 3 uses
  store i64 %i.ew, ptr %i.j, align 8, !tbaa !90
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ev
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !65 ; 2 uses
  %i.ez = lshr i64 %i.ey, 11
  %i.fa = and i64 %i.ez, 4294967295
  %i.fb = xor i64 %i.fa, %i.ey                    ; 2 uses
  %i.fc = shl i64 %i.fb, 7
  %i.fd = and i64 %i.fc, 2636928640
  %i.fe = xor i64 %i.fd, %i.fb                    ; 2 uses
  %i.ff = shl i64 %i.fe, 15
  %i.fg = and i64 %i.ff, 4022730752
  %i.fh = xor i64 %i.fg, %i.fe                    ; 2 uses
  %i.fi = lshr i64 %i.fh, 18
  %i.fj = xor i64 %i.fi, %i.fh
  %i.fk = uitofp i64 %i.fj to float
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.fk, float %.01422.i.i21, float %.01521.i.i22) ; 2 uses
  %i.fm = fmul float %.01422.i.i21, f0x4F800000   ; 2 uses
  %i.fn = add i64 %.023.i.i20, -1                 ; 2 uses
  %.not.i.i23 = icmp eq i64 %i.fn, 0
  br i1 %.not.i.i23, label %bb.e, label %select.unfold.i.i19, !llvm.loop !200

bb.f:                                             ; preds = %bb.e
  br label %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit25

_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit25: ; preds = %bb.e, %bb.f
  %.016.i.i24 = phi float [ f0x3F7FFFFF, %bb.f ], [ %i.cs, %bb.e ]
  %i.fo = fmul float %.016.i.i24, 2.000000e+00
  %i.fp = fadd float %i.fo, -1.000000e+00         ; 3 uses
  %i.fq = fmul float %i.fp, %i.fp
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.fq) ; 4 uses
  %i.fs = fcmp ogt float %i.fr, 1.000000e+00
  %i.ft = fcmp oeq float %i.fr, 0.000000e+00
  %i.fu = or i1 %i.fs, %i.ft
  br i1 %i.fu, label %select.unfold.i.i.backedge, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit25
  %i.fv = tail call noundef float @logf(float noundef %i.fr) #16
  %i.fw = fmul float %i.fv, -2.000000e+00
  %i.fx = fdiv float %i.fw, %i.fr
  %i.fy = tail call noundef float @sqrtf(float noundef %i.fx) #16 ; 2 uses
  %i.fz = fmul float %i.cr, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.fz, ptr %i.ga, align 4, !tbaa !201
  store i8 1, ptr %i.a, align 4, !tbaa !124
  %i.gb = fmul float %i.fp, %i.fy
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi float [ %i.t, %bb.b ], [ %i.gb, %bb.g ]
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !202
  %i.ge = load float, ptr %2, align 4, !tbaa !122
  %i.gf = tail call float @llvm.fmuladd.f32(float %.0, float %i.gd, float %i.ge)
  ret float %i.gf
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #18

declare void @_ZNK5faiss17AdditiveQuantizer10pack_codesEmPKiPhlPKfS5_(ptr noundef nonnull align 8 dereferenceable(412), i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN5faiss8fvec_addEmPKfS1_Pf(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @sgetrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @sgetri_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgetrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgetri_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss20LocalSearchQuantizer15icm_encode_implEPiPKfS3_RSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEmmb(ptr noundef nonnull align 8 dereferenceable(497) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(5000) %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 11 uses
  %8 = alloca %"class.std::vector.26", align 8    ; 11 uses
  %9 = alloca %"class.std::vector.11", align 8    ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::vector.11", align 8   ; 10 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca float, align 4                    ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !119
  store i64 %5, ptr %i.b, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57
  %i.g = mul i64 %i.f, %5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60
  %i.j = mul i64 %i.g, %i.i                       ; 5 uses
  %i.k = icmp ugt i64 %i.j, 2305843009213693951
  br i1 %i.k, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #26
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %.noexc34

.noexc34:                                         ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.l = shl nuw nsw i64 %i.j, 2
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #27 ; 5 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.j ; 2 uses
  store float 0.000000e+00, ptr %i.m, align 4, !tbaa !95
  %i.o = add nsw i64 %i.j, -1                     ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc34
  %i.q = getelementptr i8, ptr %i.m, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !95
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc34, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi ptr [ %i.n, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.n, %.noexc34 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.067.0 = phi ptr [ %i.m, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.m, %.noexc34 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  invoke void @_ZNK5faiss20LocalSearchQuantizer19compute_unary_termsEPKfPfm(ptr noundef nonnull align 8 dereferenceable(497) %0, ptr noundef %2, ptr noundef %.sroa.067.0, i64 noundef %5)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.s = load i64, ptr %i.b, align 8, !tbaa !65
  %i.t = load i64, ptr %i.e, align 8, !tbaa !57
  %i.u = mul i64 %i.t, %i.s
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.u
  invoke void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIPiEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.r, ptr noundef %i.v)
          to label %_ZNSt6vectorIiSaIiEE6assignIPivEEvT_S4_.exit unwind label %bb.j

_ZNSt6vectorIiSaIiEE6assignIPivEEvT_S4_.exit:     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.w = load i64, ptr %i.b, align 8, !tbaa !65   ; 4 uses
  %i.x = icmp ugt i64 %i.w, 2305843009213693951
  br i1 %i.x, label %bb.c, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i36

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE6assignIPivEEvT_S4_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #26
          to label %.noexc39 unwind label %bb.k

.noexc39:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i36: ; preds = %_ZNSt6vectorIiSaIiEE6assignIPivEEvT_S4_.exit
  %.not.i.i.i.i37 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i37, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i38, label %bb.d

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i38: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit78

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i36
  %i.y = shl nuw nsw i64 %i.w, 2                  ; 3 uses
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #27
          to label %.noexc40 unwind label %bb.k   ; 5 uses

.noexc40:                                         ; preds = %bb.d
  store ptr %i.z, ptr %9, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.w
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.z, i8 0, i64 %i.y, i1 false), !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  %.pre = load i64, ptr %i.b, align 8, !tbaa !65
  br label %.loopexit78

.loopexit78:                                      ; preds = %.noexc40, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i38
  %i.ad = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i38 ], [ %i.z, %.noexc40 ]
  %i.ae = phi i64 [ 0, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i38 ], [ %.pre, %.noexc40 ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i38 ], [ %i.ac, %.noexc40 ]
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.af, align 8, !tbaa !61
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.ah = invoke noundef float @_ZNK5faiss20LocalSearchQuantizer8evaluateEPKiPKfmPf(ptr noundef nonnull align 8 dereferenceable(497) %0, ptr noundef %i.ag, ptr noundef %2, i64 noundef %i.ae, ptr noundef %i.ad)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.e:                                             ; preds = %.loopexit78
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !74
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !57
  %.not = icmp ugt i64 %i.aj, %i.ak
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not80 = icmp eq i64 %6, 0
  br i1 %.not80, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.t

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.ao, ptr %10, align 8, !tbaa !69
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !71
  store i8 0, ptr %i.ao, align 8, !tbaa !72
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.30) #16 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.as = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.at = add nuw nsw i64 %i.as, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.at)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %10, align 8, !tbaa !73
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !71
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.30) #16 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.as)
          to label %bb.m unwind label %bb.l

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.j:                                             ; preds = %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.k:                                             ; preds = %bb.d, %bb.c
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit59

bb.l:                                             ; preds = %bb.n, %bb.h, %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %bb.h, %bb.f
  %i.bb = call ptr @__cxa_allocate_exception(i64 40) #16 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss20LocalSearchQuantizer15icm_encode_implEPiPKfS3_RSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEmmb, ptr noundef nonnull @.str.3, i32 noundef 556)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.aj unwind label %bb.l

bb.o:                                             ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !134
  store ptr %.02530, ptr %i.s, align 8, !tbaa !82
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !241

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !84     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !85
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #25
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !85
  store ptr %.0.i, ptr %0, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss3lsq8LSQTimer3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, double noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.not.i.i.not = icmp eq ptr %i.a, null
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_dESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.c = load double, ptr %i.b, align 8
  %i.d = fadd double %2, %i.c
  %.sink = select i1 %.not.i.i.not, double %2, double %i.d
  store double %.sink, ptr %i.b, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss3lsq13LSQTimerScopeC2EPNS0_8LSQTimerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(49) initializes((8, 16)) %0, ptr noundef %1, ptr noundef align 8 %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !69
  %i.d = load ptr, ptr %2, align 8, !tbaa !73     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !71   ; 2 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !73
  %i.k = load i64, ptr %i.e, align 8, !tbaa !72
  store i64 %i.k, ptr %i.c, align 8, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !71
  store ptr %i.e, ptr %2, align 8, !tbaa !73
  store i64 0, ptr %i.l, align 8, !tbaa !71
  store i8 0, ptr %i.e, align 8, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.o, align 8, !tbaa !102
  %i.p = invoke noundef double @_ZN5faiss12getmillisecsEv()
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store double %i.p, ptr %0, align 8, !tbaa !103
  ret void

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.c
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.c, align 8, !tbaa !72
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.q
}

declare noundef double @_ZN5faiss12getmillisecsEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss3lsq13LSQTimerScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !102, !range !63, !noundef !64
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN5faiss3lsq13LSQTimerScope6finishEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef double @_ZN5faiss12getmillisecsEv()
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  %i.e = load double, ptr %0, align 8, !tbaa !103
  %i.f = fsub double %i.d, %i.e                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.noexc1 unwind label %bb.c

.noexc1:                                          ; preds = %.noexc
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_dESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %.noexc2 unwind label %bb.c    ; 2 uses

.noexc2:                                          ; preds = %.noexc1
  %.not.i.i.not.i.i = icmp eq ptr %i.j, null
  %i.l = load double, ptr %i.k, align 8
  %i.m = fadd double %i.f, %i.l
  %.sink.i.i = select i1 %.not.i.i.not.i.i, double %i.f, double %i.m
  store double %.sink.i.i, ptr %i.k, align 8, !tbaa !105
  store i8 1, ptr %i.a, align 8, !tbaa !102
  br label %_ZN5faiss3lsq13LSQTimerScope6finishEv.exit

_ZN5faiss3lsq13LSQTimerScope6finishEv.exit:       ; preds = %.noexc2, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5faiss3lsq13LSQTimerScope6finishEv.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !72
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5faiss3lsq13LSQTimerScope6finishEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.c:                                             ; preds = %.noexc1, %.noexc, %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #28
  unreachable
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_LocalSearchQuantizer.cpp() #22 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5faiss9lsq_timerE, i64 48), ptr @_ZN5faiss9lsq_timerE, align 8, !tbaa !84
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN5faiss9lsq_timerE, i64 8), align 8, !tbaa !85
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN5faiss9lsq_timerE, i64 32), align 8, !tbaa !243
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN5faiss9lsq_timerE, i64 16), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN5faiss9lsq_timerE, i64 40), i8 0, i64 16, i1 false)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5faiss3lsq8LSQTimerD2Ev, ptr nonnull @_ZN5faiss9lsq_timerE, ptr nonnull @__dso_handle) #16 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #17

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { convergent nounwind }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !83}
!1 = distinct !{!1, !83}
!2 = distinct !{!2, !83}
!3 = !{i32 7, !"openmp", i32 51}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 float", !14, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!16, !15, i64 0}
!18 = !{!16, !15, i64 16}
!19 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !16, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !19, i64 0}
!21 = !{!"_ZTSSt6vectorIfSaIfEE", !20, i64 0}
!22 = !{!"bool", !8, i64 0}
!23 = !{!"p1 _ZTSN5faiss20LocalSearchQuantizerE", !14, i64 0}
!24 = !{!"_ZTSN5faiss3lsq10IcmEncoderE", !21, i64 8, !22, i64 32, !23, i64 40}
!25 = !{!24, !23, i64 40}
!26 = !{!"long", !8, i64 0}
!27 = !{!"_ZTSN5faiss9QuantizerE", !26, i64 8, !26, i64 16}
!28 = !{!"p1 long", !14, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !29, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseImSaImEE", !30, i64 0}
!32 = !{!"_ZTSSt6vectorImSaImEE", !31, i64 0}
!33 = !{!"_ZTSN5faiss10MetricTypeE", !8, i64 0}
!34 = !{!"float", !8, i64 0}
!35 = !{!"_ZTSN5faiss5IndexE", !9, i64 8, !26, i64 16, !22, i64 24, !22, i64 25, !33, i64 28, !34, i64 32}
!36 = !{!"p1 omnipotent char", !14, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !37, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorIhSaIhEE", !39, i64 0}
!41 = !{!"p1 _ZTSN5faiss21MaybeOwnedVectorOwnerE", !14, i64 0}
!42 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!43 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !42, i64 0}
!44 = !{!"_ZTSSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EE", !41, i64 0, !43, i64 8}
!45 = !{!"_ZTSSt10shared_ptrIN5faiss21MaybeOwnedVectorOwnerEE", !44, i64 0}
!46 = !{!"_ZTSN5faiss16MaybeOwnedVectorIhEE", !22, i64 0, !40, i64 8, !36, i64 32, !26, i64 40, !45, i64 48, !36, i64 64, !26, i64 72}
!47 = !{!"_ZTSN5faiss14IndexFlatCodesE", !35, i64 0, !26, i64 40, !46, i64 48}
!48 = !{!"_ZTSN5faiss9IndexFlatE", !47, i64 0}
!49 = !{!"_ZTSN5faiss11IndexFlatL2E", !48, i64 0, !21, i64 128}
!50 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!51 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !50, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorIlSaIlEE", !52, i64 0}
!54 = !{!"_ZTSN5faiss11IndexFlat1DE", !49, i64 0, !22, i64 152, !53, i64 160}
!55 = !{!"_ZTSN5faiss17AdditiveQuantizer13Search_type_tE", !8, i64 0}
!56 = !{!"_ZTSN5faiss17AdditiveQuantizerE", !27, i64 0, !26, i64 24, !32, i64 32, !21, i64 56, !32, i64 80, !26, i64 104, !26, i64 112, !26, i64 120, !22, i64 128, !22, i64 129, !22, i64 130, !21, i64 136, !54, i64 160, !21, i64 344, !21, i64 368, !26, i64 392, !55, i64 400, !34, i64 404, !34, i64 408}
!57 = !{!56, !26, i64 24}
!58 = !{!"p1 _ZTSN5faiss3lsq17IcmEncoderFactoryE", !14, i64 0}
!59 = !{!"_ZTSN5faiss20LocalSearchQuantizerE", !56, i64 0, !26, i64 416, !26, i64 424, !26, i64 432, !26, i64 440, !26, i64 448, !34, i64 456, !34, i64 460, !26, i64 464, !9, i64 472, !26, i64 480, !58, i64 488, !22, i64 496}
!60 = !{!59, !26, i64 416}
!61 = !{!16, !15, i64 8}
!62 = !{!24, !22, i64 32}
!63 = !{i8 0, i8 2}
!64 = !{}
!65 = !{!26, !26, i64 0}
!66 = !{!15, !15, i64 0}
!67 = !{!29, !28, i64 0}
!68 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !36, i64 0}
!69 = !{!68, !36, i64 0}
!70 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !68, i64 0, !26, i64 8, !8, i64 16}
!71 = !{!70, !26, i64 8}
!72 = !{!8, !8, i64 0}
!73 = !{!70, !36, i64 0}
!74 = !{!59, !26, i64 480}
!75 = !{!"any p2 pointer", !14, i64 0}
!76 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !75, i64 0}
!77 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!78 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !77, i64 0}
!79 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !34, i64 0, !26, i64 8}
!80 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !76, i64 0, !26, i64 8, !78, i64 16, !26, i64 24, !79, i64 32, !77, i64 48}
!81 = !{!80, !77, i64 16}
!82 = !{!78, !77, i64 0}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!80, !76, i64 0}
!85 = !{!80, !26, i64 8}
!86 = !{!56, !22, i64 129}
!87 = !{!27, !26, i64 8}
!88 = !{!59, !9, i64 472}
!89 = !{!"_ZTSSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE", !8, i64 0, !26, i64 4992}
!90 = !{!89, !26, i64 4992}
!91 = !{!9, !9, i64 0}
!92 = !{!"_ZTSNSt24uniform_int_distributionIiE10param_typeE", !9, i64 0, !9, i64 4}
!93 = !{!92, !9, i64 0}
!94 = !{!92, !9, i64 4}
!95 = !{!34, !34, i64 0}
!96 = !{!59, !26, i64 424}
!97 = !{!56, !22, i64 130}
!98 = !{!59, !26, i64 440}
!99 = !{!"double", !8, i64 0}
!100 = !{!"p1 _ZTSN5faiss3lsq8LSQTimerE", !14, i64 0}
!101 = !{!"_ZTSN5faiss3lsq13LSQTimerScopeE", !99, i64 0, !100, i64 8, !70, i64 16, !22, i64 48}
!102 = !{!101, !22, i64 48}
!103 = !{!101, !99, i64 0}
!104 = !{!101, !100, i64 8}
!105 = !{!99, !99, i64 0}
!106 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE", !70, i64 0, !99, i64 32}
!107 = !{!106, !99, i64 32}
!108 = !{!59, !26, i64 432}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = !{!59, !26, i64 448}
!111 = !{!59, !26, i64 464}
!112 = !{!59, !58, i64 488}
!113 = !{!59, !22, i64 496}
!114 = !{!"llvm.loop.isvectorized", i32 1}
!115 = !{!"llvm.loop.unroll.runtime.disable"}
!116 = !{i64 2, i64 -1, i64 -1, i1 true}
!117 = !{!116}
!118 = !{!"p1 int", !14, i64 0}
!119 = !{!118, !118, i64 0}
!120 = !{!"llvm.loop.unswitch.partial.disable"}
!121 = !{!"_ZTSNSt19normal_distributionIfE10param_typeE", !34, i64 0, !34, i64 4}
!122 = !{!121, !34, i64 0}
!123 = !{!"_ZTSSt19normal_distributionIfE", !121, i64 0, !34, i64 8, !22, i64 12}
!124 = !{!123, !22, i64 12}
!125 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!126 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!127 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !118, i64 0, !118, i64 8, !118, i64 16}
!128 = !{!127, !118, i64 0}
!129 = !{!127, !118, i64 16}
!130 = !{!"_ZTSNSt24uniform_int_distributionImE10param_typeE", !26, i64 0, !26, i64 8}
!131 = !{!130, !26, i64 0}
!132 = !{!130, !26, i64 8}
!133 = !{!80, !26, i64 24}
!134 = !{!77, !77, i64 0}
!135 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !26, i64 0}
!136 = !{!135, !26, i64 0}
!137 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!138 = !{!137, !137, i64 0}
!139 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdELb1EEEEEE", !14, i64 0}
!140 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdELb1EEE", !14, i64 0}
!141 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !139, i64 0, !140, i64 8}
!142 = !{!141, !140, i64 8}
!143 = !{ptr @_ZN5faiss3lsq10IcmEncoderD2Ev}
!144 = distinct !{!144, !83}
!145 = !{!59, !34, i64 456}
!146 = distinct !{!146, !109}
!147 = distinct !{!147, !83}
!148 = !{!29, !28, i64 16}
!149 = !{!29, !28, i64 8}
!150 = distinct !{!150, !83}
!151 = distinct !{!151, !109}
!152 = distinct !{!152, !83}
!153 = distinct !{!153, !109}
!154 = distinct !{!154, !114, !115}
!155 = distinct !{!155, !115, !114}
!156 = distinct !{!156, !83}
!157 = distinct !{!157, !83}
!158 = distinct !{!158, !83}
!159 = distinct !{!159, !109}
!160 = distinct !{!160, !83}
!161 = distinct !{!161, !83, !120}
!162 = distinct !{!162, !83}
!163 = distinct !{!163, !83}
!164 = distinct !{!164, !83}
!165 = distinct !{!165, !83}
end_hunk_1
