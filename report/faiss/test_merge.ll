Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_merge?download=true
inline.NumInlined: 1244
inline.NumDeleted: 622
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_GLOBAL__sub_I_test_merge.cpp:bb.a
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.m, 624
  br i1 %exitcond.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr [8 x i8], ptr %12, i64 %i.m
  %i.o = lshr i64 %i.l, 30
  %i.p = xor i64 %i.o, %i.k
  %i.q = mul i64 %i.p, 1812433253
  %i.r = add i64 %i.q, %i.m
  %i.s = and i64 %i.r, 4294967295                 ; 2 uses
  store i64 %i.s, ptr %i.n, align 8, !tbaa !55
  %i.t = add nuw nsw i64 %.011.i.i.i.i.i, 2
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 4992 ; 3 uses
  store i64 624, ptr %i.u, align 8, !tbaa !299
  %i.v = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401F8000000000000000)
  %i.w = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.x = fdiv x86_fp80 %i.v, %i.w
  %i.y = fptoui x86_fp80 %i.x to i64              ; 2 uses
  %i.z = add i64 %i.y, 52
  %i.aa = udiv i64 %i.z, %i.y
  %spec.select.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1) ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 1816 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 4984 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 3168 ; 2 uses
  %i.ad = load ptr, ptr @_ZN12_GLOBAL__N_12cdE, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 1808
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 1816
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 4984
  br label %bb.k

.preheader6.i.i:                                  ; preds = %bb.n
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_12cdE, i64 24), align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 1808
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 1816
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 4984
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i

bb.i:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i

bb.j:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.k:                                             ; preds = %bb.n, %bb.g
  %i.ao = phi i64 [ 624, %bb.g ], [ %i.ct, %bb.n ]
  %.01310.i.i = phi i64 [ 0, %bb.g ], [ %i.dq, %bb.n ] ; 2 uses
  br label %select.unfold.i.i.i.i.i.i

bb.l:                                             ; preds = %.noexc.i.i
  %i.ap = fdiv double %i.di, %i.dl                ; 2 uses
  %i.aq = fcmp ult double %i.ap, 1.000000e+00
  br i1 %i.aq, label %bb.n, label %bb.m, !prof !122

select.unfold.i.i.i.i.i.i:                        ; preds = %.noexc.i.i, %bb.k
  %i.ar = phi i64 [ %i.ao, %bb.k ], [ %i.ct, %.noexc.i.i ] ; 2 uses
  %.023.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i, %bb.k ], [ %i.dm, %.noexc.i.i ]
  %.01422.i.i.i.i.i.i = phi double [ 1.000000e+00, %bb.k ], [ %i.dl, %.noexc.i.i ] ; 2 uses
  %.01521.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.k ], [ %i.di, %.noexc.i.i ]
  %i.as = icmp ugt i64 %i.ar, 623
  br i1 %i.as, label %vector.ph136, label %.noexc.i.i

vector.ph136:                                     ; preds = %select.unfold.i.i.i.i.i.i
  %.pre.i.i.i.i = load i64, ptr %12, align 8, !tbaa !55
  %vector.recur.init139 = insertelement <2 x i64> poison, i64 %.pre.i.i.i.i, i64 1
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph136
  %index138 = phi i64 [ 0, %vector.ph136 ], [ %index.next143, %vector.body137 ] ; 3 uses
  %vector.recur140 = phi <2 x i64> [ %vector.recur.init139, %vector.ph136 ], [ %wide.load141, %vector.body137 ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %index138 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %index138
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %wide.load141 = load <2 x i64>, ptr %i.av, align 8, !tbaa !55 ; 5 uses
  %i.aw = shufflevector <2 x i64> %vector.recur140, <2 x i64> %wide.load141, <2 x i32> <i32 1, i32 2>
  %i.ax = and <2 x i64> %i.aw, splat (i64 -2147483648)
  %i.ay = and <2 x i64> %wide.load141, splat (i64 2147483646)
  %i.az = or disjoint <2 x i64> %i.ay, %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 3176
  %wide.load142 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !55
  %i.bb = lshr exact <2 x i64> %i.az, splat (i64 1)
  %i.bc = xor <2 x i64> %i.bb, %wide.load142
  %i.bd = and <2 x i64> %wide.load141, splat (i64 1)
  %i.be = icmp eq <2 x i64> %i.bd, zeroinitializer
  %i.bf = select <2 x i1> %i.be, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.bg = xor <2 x i64> %i.bc, %i.bf
  store <2 x i64> %i.bg, ptr %i.at, align 8, !tbaa !55
  %index.next143 = add nuw i64 %index138, 2       ; 2 uses
  %i.bh = icmp eq i64 %index.next143, 226
  br i1 %i.bh, label %vector.ph, label %vector.body137, !llvm.loop !289

vector.ph:                                        ; preds = %vector.body137
  %vector.recur.extract = extractelement <2 x i64> %wide.load141, i64 1
  %i.bi = and i64 %vector.recur.extract, -2147483648
  %i.bj = load i64, ptr %i.af, align 8, !tbaa !55 ; 2 uses
  %i.bk = and i64 %i.bj, 2147483646
  %i.bl = or disjoint i64 %i.bk, %i.bi
  %i.bm = load i64, ptr %i.ag, align 8, !tbaa !55
  %i.bn = lshr exact i64 %i.bl, 1
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = and i64 %i.bj, 1
  %.not20.i.i.i.i = icmp eq i64 %i.bp, 0
  %i.bq = select i1 %.not20.i.i.i.i, i64 0, i64 2567483615
  %i.br = xor i64 %i.bo, %i.bq
  store i64 %i.br, ptr %i.ae, align 8, !tbaa !55
  %.pre24.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !55
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre24.i.i.i.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1816
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %index
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1824
  %wide.load = load <2 x i64>, ptr %i.bv, align 8, !tbaa !55 ; 4 uses
  %i.bw = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.bx = and <2 x i64> %i.bw, splat (i64 -2147483648)
  %i.by = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.bz = or disjoint <2 x i64> %i.by, %i.bx
  %wide.load135 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !55
  %i.ca = lshr exact <2 x i64> %i.bz, splat (i64 1)
  %i.cb = xor <2 x i64> %i.ca, %wide.load135
  %i.cc = and <2 x i64> %wide.load, splat (i64 1)
  %i.cd = icmp eq <2 x i64> %i.cc, zeroinitializer
  %i.ce = select <2 x i1> %i.cd, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.cf = xor <2 x i64> %i.cb, %i.ce
  store <2 x i64> %i.cf, ptr %i.bt, align 8, !tbaa !55
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cg = icmp eq i64 %index.next, 396
  br i1 %i.cg, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i.i.i, label %vector.body, !llvm.loop !290

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i.i.i: ; preds = %vector.body
  %i.ch = load i64, ptr %i.ab, align 8, !tbaa !55
  %i.ci = and i64 %i.ch, -2147483648
  %i.cj = load i64, ptr %12, align 8, !tbaa !55   ; 2 uses
  %i.ck = and i64 %i.cj, 2147483646
  %i.cl = or disjoint i64 %i.ck, %i.ci
  %i.cm = load i64, ptr %i.ac, align 8, !tbaa !55
  %i.cn = lshr exact i64 %i.cl, 1
  %i.co = xor i64 %i.cn, %i.cm
  %i.cp = and i64 %i.cj, 1
  %.not.i.i.i.i = icmp eq i64 %i.cp, 0
  %i.cq = select i1 %.not.i.i.i.i, i64 0, i64 2567483615
  %i.cr = xor i64 %i.co, %i.cq
  store i64 %i.cr, ptr %i.ab, align 8, !tbaa !55
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i.i.i, %select.unfold.i.i.i.i.i.i
  %i.cs = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i.i.i ], [ %i.ar, %select.unfold.i.i.i.i.i.i ] ; 2 uses
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 4 uses
  store i64 %i.ct, ptr %i.u, align 8, !tbaa !299
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.cs
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !55 ; 2 uses
  %i.cw = lshr i64 %i.cv, 11
  %i.cx = and i64 %i.cw, 4294967295
  %i.cy = xor i64 %i.cx, %i.cv                    ; 2 uses
  %i.cz = shl i64 %i.cy, 7
  %i.da = and i64 %i.cz, 2636928640
  %i.db = xor i64 %i.da, %i.cy                    ; 2 uses
  %i.dc = shl i64 %i.db, 15
  %i.dd = and i64 %i.dc, 4022730752
  %i.de = xor i64 %i.dd, %i.db                    ; 2 uses
  %i.df = lshr i64 %i.de, 18
  %i.dg = xor i64 %i.df, %i.de
  %i.dh = uitofp i64 %i.dg to double
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double %.01422.i.i.i.i.i.i, double %.01521.i.i.i.i.i.i) ; 2 uses
  %i.dj = fpext double %.01422.i.i.i.i.i.i to x86_fp80
  %i.dk = fmul x86_fp80 %i.dj, f0x401F8000000000000000
  %i.dl = fptrunc x86_fp80 %i.dk to double        ; 2 uses
  %i.dm = add i64 %.023.i.i.i.i.i.i, -1           ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %select.unfold.i.i.i.i.i.i, !llvm.loop !291

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.016.i.i.i.i.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.m ], [ %i.ap, %bb.l ]
  %i.dn = fadd double %.016.i.i.i.i.i.i, 0.000000e+00
  %i.do = fptrunc double %i.dn to float
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.01310.i.i
  store float %i.do, ptr %i.dp, align 4, !tbaa !159
  %i.dq = add nuw nsw i64 %.01310.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dq, 64000
  br i1 %exitcond.not.i.i, label %.preheader6.i.i, label %bb.k, !llvm.loop !292

.preheader.i.i:                                   ; preds = %bb.r
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_12cdE, i64 48), align 8, !tbaa !59
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %.preheader.i.i
  %index169 = phi i64 [ 0, %.preheader.i.i ], [ %index.next170, %vector.body168 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.preheader.i.i ], [ %vec.ind.next, %vector.body168 ] ; 3 uses
  %14 = mul nuw nsw <2 x i64> %vec.ind, splat (i64 456)
  %15 = mul nuw <2 x i64> %vec.ind, splat (i64 456)
  %16 = add nuw nsw <2 x i64> %14, splat (i64 123)
  %17 = add nuw <2 x i64> %15, splat (i64 1035)
  %18 = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %index169 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store <2 x i64> %16, ptr %18, align 8, !tbaa !55
  store <2 x i64> %17, ptr %19, align 8, !tbaa !55
  %index.next170 = add nuw i64 %index169, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %20 = icmp eq i64 %index.next170, 1000
  br i1 %20, label %middle.block171, label %vector.body168, !llvm.loop !293

bb.o:                                             ; preds = %bb.r, %.preheader6.i.i
  %i.ds = phi i64 [ %i.ct, %.preheader6.i.i ], [ %i.fx, %bb.r ]
  %.01211.i.i = phi i64 [ 0, %.preheader6.i.i ], [ %i.gu, %bb.r ] ; 2 uses
  br label %select.unfold.i.i.i.i32.i.i

bb.p:                                             ; preds = %.noexc38.i.i
  %i.dt = fdiv double %i.gm, %i.gp                ; 2 uses
  %i.du = fcmp ult double %i.dt, 1.000000e+00
  br i1 %i.du, label %bb.r, label %bb.q, !prof !122

select.unfold.i.i.i.i32.i.i:                      ; preds = %.noexc38.i.i, %bb.o
  %i.dv = phi i64 [ %i.ds, %bb.o ], [ %i.fx, %.noexc38.i.i ] ; 2 uses
  %.023.i.i.i.i33.i.i = phi i64 [ %spec.select.i.i.i.i.i.i, %bb.o ], [ %i.gq, %.noexc38.i.i ]
  %.01422.i.i.i.i34.i.i = phi double [ 1.000000e+00, %bb.o ], [ %i.gp, %.noexc38.i.i ] ; 2 uses
  %.01521.i.i.i.i35.i.i = phi double [ 0.000000e+00, %bb.o ], [ %i.gm, %.noexc38.i.i ]
  %i.dw = icmp ugt i64 %i.dv, 623
  br i1 %i.dw, label %vector.ph156, label %.noexc38.i.i

vector.ph156:                                     ; preds = %select.unfold.i.i.i.i32.i.i
  %.pre.i.i43.i.i = load i64, ptr %12, align 8, !tbaa !55
  %vector.recur.init159 = insertelement <2 x i64> poison, i64 %.pre.i.i43.i.i, i64 1
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph156
  %index158 = phi i64 [ 0, %vector.ph156 ], [ %index.next163, %vector.body157 ] ; 3 uses
  %vector.recur160 = phi <2 x i64> [ %vector.recur.init159, %vector.ph156 ], [ %wide.load161, %vector.body157 ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %index158 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %index158
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %wide.load161 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !55 ; 5 uses
  %i.ea = shufflevector <2 x i64> %vector.recur160, <2 x i64> %wide.load161, <2 x i32> <i32 1, i32 2>
  %i.eb = and <2 x i64> %i.ea, splat (i64 -2147483648)
  %i.ec = and <2 x i64> %wide.load161, splat (i64 2147483646)
  %i.ed = or disjoint <2 x i64> %i.ec, %i.eb
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 3176
  %wide.load162 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !55
  %i.ef = lshr exact <2 x i64> %i.ed, splat (i64 1)
  %i.eg = xor <2 x i64> %i.ef, %wide.load162
  %i.eh = and <2 x i64> %wide.load161, splat (i64 1)
  %i.ei = icmp eq <2 x i64> %i.eh, zeroinitializer
  %i.ej = select <2 x i1> %i.ei, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.ek = xor <2 x i64> %i.eg, %i.ej
  store <2 x i64> %i.ek, ptr %i.dx, align 8, !tbaa !55
  %index.next163 = add nuw i64 %index158, 2       ; 2 uses
  %i.el = icmp eq i64 %index.next163, 226
  br i1 %i.el, label %vector.ph146, label %vector.body157, !llvm.loop !294

vector.ph146:                                     ; preds = %vector.body157
  %vector.recur.extract165 = extractelement <2 x i64> %wide.load161, i64 1
  %i.em = and i64 %vector.recur.extract165, -2147483648
  %i.en = load i64, ptr %i.aj, align 8, !tbaa !55 ; 2 uses
  %i.eo = and i64 %i.en, 2147483646
  %i.ep = or disjoint i64 %i.eo, %i.em
  %i.eq = load i64, ptr %i.ak, align 8, !tbaa !55
  %i.er = lshr exact i64 %i.ep, 1
  %i.es = xor i64 %i.er, %i.eq
  %i.et = and i64 %i.en, 1
  %.not20.i.i45.i.i = icmp eq i64 %i.et, 0
  %i.eu = select i1 %.not20.i.i45.i.i, i64 0, i64 2567483615
  %i.ev = xor i64 %i.es, %i.eu
  store i64 %i.ev, ptr %i.ai, align 8, !tbaa !55
  %.pre24.i.i49.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !55
  %vector.recur.init149 = insertelement <2 x i64> poison, i64 %.pre24.i.i49.i.i, i64 1
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph146
  %index148 = phi i64 [ 0, %vector.ph146 ], [ %index.next153, %vector.body147 ] ; 3 uses
  %vector.recur150 = phi <2 x i64> [ %vector.recur.init149, %vector.ph146 ], [ %wide.load151, %vector.body147 ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %index148 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1816
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %index148
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1824
  %wide.load151 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !55 ; 4 uses
  %i.fa = shufflevector <2 x i64> %vector.recur150, <2 x i64> %wide.load151, <2 x i32> <i32 1, i32 2>
  %i.fb = and <2 x i64> %i.fa, splat (i64 -2147483648)
  %i.fc = and <2 x i64> %wide.load151, splat (i64 2147483646)
  %i.fd = or disjoint <2 x i64> %i.fc, %i.fb
  %wide.load152 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !55
  %i.fe = lshr exact <2 x i64> %i.fd, splat (i64 1)
  %i.ff = xor <2 x i64> %i.fe, %wide.load152
  %i.fg = and <2 x i64> %wide.load151, splat (i64 1)
  %i.fh = icmp eq <2 x i64> %i.fg, zeroinitializer
  %i.fi = select <2 x i1> %i.fh, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.fj = xor <2 x i64> %i.ff, %i.fi
  store <2 x i64> %i.fj, ptr %i.ex, align 8, !tbaa !55
  %index.next153 = add nuw i64 %index148, 2       ; 2 uses
  %i.fk = icmp eq i64 %index.next153, 396
  br i1 %i.fk, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i54.i.i, label %vector.body147, !llvm.loop !295

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i54.i.i: ; preds = %vector.body147
  %i.fl = load i64, ptr %i.ab, align 8, !tbaa !55
  %i.fm = and i64 %i.fl, -2147483648
  %i.fn = load i64, ptr %12, align 8, !tbaa !55   ; 2 uses
  %i.fo = and i64 %i.fn, 2147483646
  %i.fp = or disjoint i64 %i.fo, %i.fm
  %i.fq = load i64, ptr %i.ac, align 8, !tbaa !55
  %i.fr = lshr exact i64 %i.fp, 1
  %i.fs = xor i64 %i.fr, %i.fq
  %i.ft = and i64 %i.fn, 1
  %.not.i.i55.i.i = icmp eq i64 %i.ft, 0
  %i.fu = select i1 %.not.i.i55.i.i, i64 0, i64 2567483615
  %i.fv = xor i64 %i.fs, %i.fu
  store i64 %i.fv, ptr %i.ab, align 8, !tbaa !55
  br label %.noexc38.i.i

.noexc38.i.i:                                     ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i54.i.i, %select.unfold.i.i.i.i32.i.i
  %i.fw = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i54.i.i ], [ %i.dv, %select.unfold.i.i.i.i32.i.i ] ; 2 uses
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 3 uses
  store i64 %i.fx, ptr %i.u, align 8, !tbaa !299
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.fw
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !55 ; 2 uses
  %i.ga = lshr i64 %i.fz, 11
  %i.gb = and i64 %i.ga, 4294967295
  %i.gc = xor i64 %i.gb, %i.fz                    ; 2 uses
  %i.gd = shl i64 %i.gc, 7
  %i.ge = and i64 %i.gd, 2636928640
  %i.gf = xor i64 %i.ge, %i.gc                    ; 2 uses
  %i.gg = shl i64 %i.gf, 15
  %i.gh = and i64 %i.gg, 4022730752
  %i.gi = xor i64 %i.gh, %i.gf                    ; 2 uses
  %i.gj = lshr i64 %i.gi, 18
  %i.gk = xor i64 %i.gj, %i.gi
  %i.gl = uitofp i64 %i.gk to double
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.gl, double %.01422.i.i.i.i34.i.i, double %.01521.i.i.i.i35.i.i) ; 2 uses
  %i.gn = fpext double %.01422.i.i.i.i34.i.i to x86_fp80
  %i.go = fmul x86_fp80 %i.gn, f0x401F8000000000000000
  %i.gp = fptrunc x86_fp80 %i.go to double        ; 2 uses
  %i.gq = add i64 %.023.i.i.i.i33.i.i, -1         ; 2 uses
  %.not.i.i.i.i36.i.i = icmp eq i64 %i.gq, 0
  br i1 %.not.i.i.i.i36.i.i, label %bb.p, label %select.unfold.i.i.i.i32.i.i, !llvm.loop !291

bb.q:                                             ; preds = %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.016.i.i.i.i37.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.q ], [ %i.dt, %bb.p ]
  %i.gr = fadd double %.016.i.i.i.i37.i.i, 0.000000e+00
  %i.gs = fptrunc double %i.gr to float
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.01211.i.i
  store float %i.gs, ptr %i.gt, align 4, !tbaa !159
  %i.gu = add nuw nsw i64 %.01211.i.i, 1          ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %i.gu, 6400
  br i1 %exitcond16.not.i.i, label %.preheader.i.i, label %bb.o, !llvm.loop !296

middle.block171:                                  ; preds = %vector.body168
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZN5faiss12IndexIVFFlatC1EPNS_5IndexEmmNS_10MetricTypeEb(ptr noundef nonnull align 8 dereferenceable(273) %13, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_12cdE, i64 72), i64 noundef 64, i64 noundef 40, i32 noundef 1, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %middle.block171
  %i.gv = load ptr, ptr @_ZN12_GLOBAL__N_12cdE, align 8, !tbaa !53
  invoke void @_ZN5faiss8IndexIVF5trainElPKf(ptr noundef nonnull align 8 dereferenceable(273) %13, i64 noundef 1000, ptr noundef %i.gv)
          to label %__cxx_global_var_init.exit unwind label %bb.u

bb.t:                                             ; preds = %middle.block171
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5faiss8IndexIVFD2Ev(ptr noundef nonnull align 8 dead_on_return(273) dereferenceable(273) %13) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn.i.i = phi { ptr, i32 } [ %i.gx, %bb.u ], [ %i.gw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @_ZN5faiss11IndexFlatL2D2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_12cdE, i64 72)) #26
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.j
  %.pn23.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.v ], [ %i.an, %bb.j ] ; 2 uses
  %i.gy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_12cdE, i64 48), align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_12cdE, i64 64), align 8, !tbaa !97
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = ptrtoint ptr %i.gy to i64
  %i.hc = sub i64 %i.ha, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef %i.hc) #27
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i.i:                ; preds = %bb.x, %bb.w, %bb.i
  %.pn23.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %.pn23.pn.pn.i.i, %bb.w ], [ %.pn23.pn.pn.i.i, %bb.x ] ; 2 uses
  %i.hd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_12cdE, i64 24), align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i40.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i40.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i
  %i.he = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_12cdE, i64 40), align 8, !tbaa !62
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hd to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hh) #27
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i:                ; preds = %bb.y, %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i, %bb.h
  %.pn23.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.al, %bb.h ], [ %.pn23.pn.pn.pn.i.i, %_ZNSt6vectorIlSaIlEED2Ev.exit.i.i ], [ %.pn23.pn.pn.pn.i.i, %bb.y ] ; 2 uses
  %i.hi = load ptr, ptr @_ZN12_GLOBAL__N_12cdE, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i41.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i41.i.i, label %common.resume, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.hj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_12cdE, i64 16), align 8, !tbaa !62
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hi to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hm) #27
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i48 ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i ], [ %.pn.i7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i9 ], [ %.pn.i20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i22 ], [ %.pn.i33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i35 ], [ %.pn23.pn.pn.pn.pn.i.i, %bb.z ], [ %.pn23.pn.pn.pn.pn.i.i, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

__cxx_global_var_init.exit:                       ; preds = %bb.s
  call void @_ZN5faiss8IndexIVFD2Ev(ptr noundef nonnull align 8 dead_on_return(273) dereferenceable(273) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.hn = call i32 @__cxa_atexit(ptr nonnull @_ZN12_GLOBAL__N_110CommonDataD2Ev, ptr nonnull @_ZN12_GLOBAL__N_12cdE, ptr nonnull @__dso_handle) #26 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_122temp_filename_templateB5cxx11E, i64 16), ptr @_ZN12_GLOBAL__N_122temp_filename_templateB5cxx11E, align 8, !tbaa !73
  %i.ho = call noalias noundef nonnull dereferenceable(22) ptr @_Znwm(i64 noundef 22) #28 ; 3 uses
  store ptr %i.ho, ptr @_ZN12_GLOBAL__N_122temp_filename_templateB5cxx11E, align 8, !tbaa !46
  store i64 21, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_122temp_filename_templateB5cxx11E, i64 16), align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ho, ptr noundef nonnull align 1 dereferenceable(21) @.str.2, i64 21, i1 false)
  store i64 21, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_122temp_filename_templateB5cxx11E, i64 8), align 8, !tbaa !74
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 21
  store i8 0, ptr %i.hp, align 1, !tbaa !47
  %i.hq = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN12_GLOBAL__N_122temp_filename_templateB5cxx11E, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.hr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.hr, ptr %11, align 8, !tbaa !73
  %i.hs = call noalias noundef nonnull dereferenceable(49) ptr @_Znwm(i64 noundef 49) #28 ; 4 uses
  store ptr %i.hs, ptr %11, align 8, !tbaa !46
  store i64 48, ptr %i.hr, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.hs, ptr noundef nonnull align 1 dereferenceable(48) @.str.8, i64 48, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 48, ptr %i.ht, align 8, !tbaa !74
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  store i8 0, ptr %i.hu, align 1, !tbaa !47
  %i.hv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.hv, ptr %10, align 8, !tbaa !73
  %i.hw = invoke noalias noundef nonnull dereferenceable(49) ptr @_Znwm(i64 noundef 49) #28
          to label %.noexc11.i unwind label %bb.af ; 3 uses

.noexc11.i:                                       ; preds = %__cxx_global_var_init.exit
  store ptr %i.hw, ptr %10, align 8, !tbaa !46
  store i64 48, ptr %i.hv, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.hw, ptr noundef nonnull align 1 dereferenceable(48) %i.hs, i64 48, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 48, ptr %i.hx, align 8, !tbaa !74
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  store i8 0, ptr %i.hy, align 1, !tbaa !47
  %i.hz = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 128, ptr %i.hz, align 8, !tbaa !303
  %i.ia = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %.noexc11.i
  %i.ib = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.8, i32 noundef 128)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.ic = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.8, i32 noundef 128)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.id = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #28
          to label %bb.ad unwind label %bb.ag     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI28MERGE_merge_flat_no_ids_TestEE, i64 16), ptr %i.id, align 8, !tbaa !29
  %i.ie = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %10, ptr noundef %i.ia, ptr noundef %i.ib, ptr noundef %i.ic, ptr noundef nonnull %i.id)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.if = load ptr, ptr %10, align 8, !tbaa !46   ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.hv
  br i1 %i.ig, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ae
  %i.ih = load i64, ptr %i.hv, align 8, !tbaa !47
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #27
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i

_ZN7testing8internal12CodeLocationD2Ev.exit.i:    ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ij = load ptr, ptr %11, align 8, !tbaa !46   ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.hr
  br i1 %i.ik, label %__cxx_global_var_init.5.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i
  %i.il = load i64, ptr %i.hr, align 8, !tbaa !47
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #27
  br label %__cxx_global_var_init.5.exit

bb.af:                                            ; preds = %__cxx_global_var_init.exit
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit14.i

bb.ag:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %.noexc11.i
  %i.io = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ip = load ptr, ptr %10, align 8, !tbaa !46   ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.hv
  br i1 %i.iq, label %_ZN7testing8internal12CodeLocationD2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i: ; preds = %bb.ag
  %i.ir = load i64, ptr %i.hv, align 8, !tbaa !47
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #27
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit14.i

_ZN7testing8internal12CodeLocationD2Ev.exit14.i:  ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i, %bb.af
  %.pn.pn.i = phi { ptr, i32 } [ %i.in, %bb.af ], [ %i.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i ], [ %i.io, %bb.ag ]
  %i.it = load ptr, ptr %11, align 8, !tbaa !46   ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.hr
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit14.i
  %i.iv = load i64, ptr %i.hr, align 8, !tbaa !47
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %common.resume

__cxx_global_var_init.5.exit:                     ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  store ptr %i.ie, ptr @_ZN28MERGE_merge_flat_no_ids_Test10test_info_E, align 8, !tbaa !305
  %i.ix = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN28MERGE_merge_flat_no_ids_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.iy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.iy, ptr %9, align 8, !tbaa !73
  %i.iz = call noalias noundef nonnull dereferenceable(49) ptr @_Znwm(i64 noundef 49) #28 ; 4 uses
  store ptr %i.iz, ptr %9, align 8, !tbaa !46
  store i64 48, ptr %i.iy, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.iz, ptr noundef nonnull align 1 dereferenceable(48) @.str.8, i64 48, i1 false)
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 8
end_hunk_0
begin_hunk_1_@llvm.log.f80
!95 = !{!94, !15, i64 168}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!58, !57, i64 16}
!98 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!99 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!100 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!101 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !15, i64 8}
!102 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!103 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!104 = !{!"_ZTSSt6locale", !103, i64 0}
!105 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !98, i64 24, !99, i64 28, !99, i64 32, !100, i64 40, !101, i64 48, !11, i64 64, !12, i64 192, !102, i64 200, !104, i64 208}
!106 = !{!105, !99, i64 32}
!107 = !{!22, !21, i64 0}
!108 = !{!"p1 _ZTSN5faiss12WorkerThreadE", !20, i64 0}
!109 = !{!"_ZTSSt10_Head_baseILm0EPN5faiss12WorkerThreadELb0EE", !108, i64 0}
!110 = !{!"_ZTSSt11_Tuple_implILm0EJPN5faiss12WorkerThreadESt14default_deleteIS1_EEE", !109, i64 0}
!111 = !{!"_ZTSSt5tupleIJPN5faiss12WorkerThreadESt14default_deleteIS1_EEE", !110, i64 0}
!112 = !{!"_ZTSSt15__uniq_ptr_implIN5faiss12WorkerThreadESt14default_deleteIS1_EE", !111, i64 0}
!113 = !{!"_ZTSSt15__uniq_ptr_dataIN5faiss12WorkerThreadESt14default_deleteIS1_ELb1ELb1EE", !112, i64 0}
!114 = !{!"_ZTSSt10unique_ptrIN5faiss12WorkerThreadESt14default_deleteIS1_EE", !113, i64 0}
!115 = !{!"_ZTSSt4pairIPN5faiss5IndexESt10unique_ptrINS0_12WorkerThreadESt14default_deleteIS4_EEE", !61, i64 0, !114, i64 8}
!116 = !{!115, !61, i64 0}
!117 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !104, i64 56}
!118 = !{!117, !43, i64 40}
!119 = !{!117, !43, i64 32}
!120 = !{!"_ZTSSi", !15, i64 8}
!121 = !{!120, !15, i64 8}
!122 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!123 = !{!21, !21, i64 0}
!124 = !{!22, !21, i64 8}
!125 = !{!108, !108, i64 0}
!126 = !{!22, !21, i64 16}
!127 = !{!26, !16, i64 64}
!128 = !{!"_ZTSSt14_Function_base", !11, i64 0, !20, i64 16}
!129 = !{!"_ZTSSt8functionIFviPN5faiss5IndexEEE", !128, i64 0, !20, i64 24}
!130 = !{!129, !20, i64 24}
!131 = !{!128, !20, i64 16}
!132 = !{!61, !61, i64 0}
!133 = !{!20, !20, i64 0}
!134 = !{!"_ZTSZN5faiss13ThreadedIndexINS_5IndexEE10runOnIndexESt8functionIFviPS1_EEEUlvE_", !129, i64 0, !12, i64 32, !61, i64 40}
!135 = !{!134, !12, i64 32}
!136 = !{!134, !61, i64 40}
!137 = !{!"p1 _ZTSSt6futureIbE", !20, i64 0}
!138 = !{!"_ZTSNSt12_Vector_baseISt6futureIbESaIS1_EE17_Vector_impl_dataE", !137, i64 0, !137, i64 8, !137, i64 16}
!139 = !{!138, !137, i64 8}
!140 = !{!138, !137, i64 16}
!141 = !{!"p1 _ZTSNSt13__future_base13_State_baseV2E", !20, i64 0}
!142 = !{!"_ZTSSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EE", !141, i64 0, !64, i64 8}
!143 = !{!142, !141, i64 0}
!144 = !{!138, !137, i64 0}
!145 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !20, i64 0}
!146 = !{!"_ZTSSt4pairIiNSt15__exception_ptr13exception_ptrEE", !12, i64 0, !145, i64 8}
!147 = !{!146, !12, i64 0}
!148 = !{!145, !20, i64 0}
!149 = !{!"p1 _ZTSSt4pairIiNSt15__exception_ptr13exception_ptrEE", !20, i64 0}
!150 = !{!"_ZTSNSt12_Vector_baseISt4pairIiNSt15__exception_ptr13exception_ptrEESaIS3_EE17_Vector_impl_dataE", !149, i64 0, !149, i64 8, !149, i64 16}
!151 = !{!150, !149, i64 0}
!152 = !{!150, !149, i64 8}
!153 = !{!150, !149, i64 16}
!154 = !{!"p1 _ZTSSt14__basic_futureIbE", !20, i64 0}
!155 = !{!141, !141, i64 0}
!156 = !{!"p1 _ZTSSt9type_info", !20, i64 0}
!157 = !{!156, !156, i64 0}
!158 = !{!52, !51, i64 8}
!159 = !{!18, !18, i64 0}
!160 = distinct !{!160, !"_ZN7testing8internal8EqHelper7CompareImlTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!161 = distinct !{!161, !160, !"_ZN7testing8internal8EqHelper7CompareImlTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!162 = distinct !{!162, !"_ZN7testing8internal11CmpHelperEQImlEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!163 = distinct !{!163, !162, !"_ZN7testing8internal11CmpHelperEQImlEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!164 = !{!163, !161}
!165 = distinct !{!165, !"_ZN7testing8internal8EqHelper7CompareImlTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!166 = distinct !{!166, !165, !"_ZN7testing8internal8EqHelper7CompareImlTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!167 = distinct !{!167, !"_ZN7testing8internal11CmpHelperEQImlEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!168 = distinct !{!168, !167, !"_ZN7testing8internal11CmpHelperEQImlEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!169 = distinct !{!169, !"_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!170 = distinct !{!170, !169, !"_ZN7testing8internal11CmpHelperGEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!171 = !{!"p2 _ZTSN5faiss15VectorTransformE", !60, i64 0}
!172 = !{!"_ZTSNSt12_Vector_baseIPN5faiss15VectorTransformESaIS2_EE17_Vector_impl_dataE", !171, i64 0, !171, i64 8, !171, i64 16}
!173 = !{!"_ZTSNSt12_Vector_baseIPN5faiss15VectorTransformESaIS2_EE12_Vector_implE", !172, i64 0}
!174 = !{!"_ZTSSt12_Vector_baseIPN5faiss15VectorTransformESaIS2_EE", !173, i64 0}
!175 = !{!"_ZTSSt6vectorIPN5faiss15VectorTransformESaIS2_EE", !174, i64 0}
!176 = !{!"_ZTSN5faiss17IndexPreTransformE", !19, i64 0, !175, i64 40, !61, i64 64, !16, i64 72}
!177 = !{!176, !16, i64 72}
!178 = !{!168, !166}
!179 = !{!170}
!180 = distinct !{!180, !96}
!181 = distinct !{null, null, null, null, null}
!182 = distinct !{null}
!183 = distinct !{!183, !96}
!184 = !{!82, !82, i64 0}
!185 = !{!"_ZTS12Tempfilename", !20, i64 0, !45, i64 8}
!186 = !{!185, !20, i64 0}
!187 = distinct !{!187, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!188 = distinct !{!188, !187, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!189 = distinct !{!189, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!190 = distinct !{!190, !189, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!191 = !{!188}
!192 = !{!190}
!193 = !{!190, !188}
!194 = distinct !{!194, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!195 = distinct !{!195, !194, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!196 = distinct !{!196, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!197 = distinct !{!197, !196, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!198 = !{!195}
!199 = !{!197}
!200 = !{!197, !195}
!201 = distinct !{!201, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!202 = distinct !{!202, !201, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!203 = distinct !{!203, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!204 = distinct !{!204, !203, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!205 = !{!202}
!206 = !{!204}
!207 = !{!204, !202}
!208 = distinct !{!208, !96}
!209 = !{!"p1 _ZTS8_IO_FILE", !20, i64 0}
!210 = !{!209, !209, i64 0}
!211 = !{!19, !16, i64 25}
!212 = distinct !{!212, !"_ZSt9make_pairIRPN5faiss5IndexESt10unique_ptrINS0_12WorkerThreadESt14default_deleteIS5_EEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSA_INSB_IT0_E4typeEE6__typeEEOSC_OSH_"}
!213 = distinct !{!213, !212, !"_ZSt9make_pairIRPN5faiss5IndexESt10unique_ptrINS0_12WorkerThreadESt14default_deleteIS5_EEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSA_INSB_IT0_E4typeEE6__typeEEOSC_OSH_: argument 0"}
!214 = !{!19, !12, i64 8}
!215 = !{!19, !17, i64 28}
!216 = !{!213}
!217 = distinct !{ptr @_ZNSt14__basic_futureIbED2Ev, null, null, null}
!218 = distinct !{!218, !96}
!219 = distinct !{ptr @_ZNSt6vectorISt6futureIbESaIS1_EED2Ev, null, null, null, null, ptr @_ZNSt14__basic_futureIbED2Ev, null, null, null}
!220 = distinct !{null}
!221 = distinct !{!221, !"_ZSt9make_pairIiNSt15__exception_ptr13exception_ptrEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_"}
!222 = distinct !{!222, !221, !"_ZSt9make_pairIiNSt15__exception_ptr13exception_ptrEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_: argument 0"}
!223 = distinct !{!223, !96}
!224 = !{i64 0, i64 16, !47}
!225 = !{!222}
!226 = distinct !{null, null, null}
!227 = distinct !{null, ptr @_ZNSt14__basic_futureIbE6_ResetD2Ev, null, null, null, null}
!228 = distinct !{!228, !"_ZSt9make_pairIiNSt15__exception_ptr13exception_ptrEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_"}
!229 = distinct !{!229, !228, !"_ZSt9make_pairIiNSt15__exception_ptr13exception_ptrEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS3_INS4_IT0_E4typeEE6__typeEEOS5_OSA_: argument 0"}
!230 = distinct !{!230, !96}
!231 = !{!154, !154, i64 0}
!232 = !{!229}
!233 = distinct !{null, null, null, null, ptr @_ZNSt14__basic_futureIbED2Ev, null, null, null}
!234 = !{!149, !149, i64 0}
!235 = distinct !{!235, !"_ZSt19__relocate_object_aISt6futureIbES1_SaIS1_EEvPT_PT0_RT1_"}
!236 = distinct !{!236, !235, !"_ZSt19__relocate_object_aISt6futureIbES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!237 = distinct !{!237, !235, !"_ZSt19__relocate_object_aISt6futureIbES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!238 = distinct !{!238, !96}
!239 = distinct !{!239, !"_ZSt19__relocate_object_aISt6futureIbES1_SaIS1_EEvPT_PT0_RT1_"}
!240 = distinct !{!240, !239, !"_ZSt19__relocate_object_aISt6futureIbES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!241 = distinct !{!241, !239, !"_ZSt19__relocate_object_aISt6futureIbES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!242 = !{!236}
!243 = !{!237}
!244 = !{!240}
!245 = !{!241}
!246 = distinct !{null, null, null, null}
!247 = distinct !{null}
!248 = !{!"p1 _ZTSNSt13__future_base12_Result_baseE", !20, i64 0}
!249 = !{!248, !248, i64 0}
!250 = distinct !{null, null, null, null}
!251 = !{!"_ZTSNSt14__basic_futureIbE6_ResetE", !154, i64 0}
!252 = !{!251, !154, i64 0}
!253 = !{i64 8}
!254 = distinct !{!254, !"_ZSt19__relocate_object_aISt4pairIiNSt15__exception_ptr13exception_ptrEES3_SaIS3_EEvPT_PT0_RT1_"}
!255 = distinct !{!255, !254, !"_ZSt19__relocate_object_aISt4pairIiNSt15__exception_ptr13exception_ptrEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!256 = distinct !{!256, !254, !"_ZSt19__relocate_object_aISt4pairIiNSt15__exception_ptr13exception_ptrEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!257 = distinct !{!257, !96}
!258 = distinct !{!258, !"_ZSt19__relocate_object_aISt4pairIiNSt15__exception_ptr13exception_ptrEES3_SaIS3_EEvPT_PT0_RT1_"}
!259 = distinct !{!259, !258, !"_ZSt19__relocate_object_aISt4pairIiNSt15__exception_ptr13exception_ptrEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!260 = distinct !{!260, !258, !"_ZSt19__relocate_object_aISt4pairIiNSt15__exception_ptr13exception_ptrEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!261 = !{!255}
!262 = !{!256}
!263 = !{!259}
!264 = !{!260}
!265 = distinct !{null, null, null}
!266 = distinct !{!266, !"_ZSt19__relocate_object_aISt4pairIPN5faiss5IndexESt10unique_ptrINS1_12WorkerThreadESt14default_deleteIS5_EEES9_SaIS9_EEvPT_PT0_RT1_"}
!267 = distinct !{!267, !266, !"_ZSt19__relocate_object_aISt4pairIPN5faiss5IndexESt10unique_ptrINS1_12WorkerThreadESt14default_deleteIS5_EEES9_SaIS9_EEvPT_PT0_RT1_: argument 0"}
!268 = distinct !{!268, !266, !"_ZSt19__relocate_object_aISt4pairIPN5faiss5IndexESt10unique_ptrINS1_12WorkerThreadESt14default_deleteIS5_EEES9_SaIS9_EEvPT_PT0_RT1_: argument 1"}
!269 = distinct !{!269, !96}
!270 = distinct !{!270, !"_ZSt19__relocate_object_aISt4pairIPN5faiss5IndexESt10unique_ptrINS1_12WorkerThreadESt14default_deleteIS5_EEES9_SaIS9_EEvPT_PT0_RT1_"}
!271 = distinct !{!271, !270, !"_ZSt19__relocate_object_aISt4pairIPN5faiss5IndexESt10unique_ptrINS1_12WorkerThreadESt14default_deleteIS5_EEES9_SaIS9_EEvPT_PT0_RT1_: argument 0"}
!272 = distinct !{!272, !270, !"_ZSt19__relocate_object_aISt4pairIPN5faiss5IndexESt10unique_ptrINS1_12WorkerThreadESt14default_deleteIS5_EEES9_SaIS9_EEvPT_PT0_RT1_: argument 1"}
!273 = !{!267}
!274 = !{!268}
!275 = !{!271}
!276 = !{!272}
!277 = distinct !{null, null, null, null}
!278 = distinct !{null, null, null, null}
!279 = distinct !{null, null, null, null}
!280 = distinct !{null, null, null, null}
!281 = distinct !{null, null, null, null}
!282 = !{!51, !51, i64 0}
!283 = !{!"_ZTSN5faiss15VectorTransformE", !12, i64 8, !12, i64 12, !16, i64 16}
!284 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !52, i64 0}
!285 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !284, i64 0}
!286 = !{!"_ZTSSt6vectorIfSaIfEE", !285, i64 0}
!287 = !{!"_ZTSN5faiss15LinearTransformE", !283, i64 0, !16, i64 17, !16, i64 18, !286, i64 24, !286, i64 48, !16, i64 72}
!288 = !{!287, !16, i64 72}
!289 = distinct !{!289, !96, !300, !301}
!290 = distinct !{!290, !96, !300, !301}
!291 = distinct !{!291, !96}
!292 = distinct !{!292, !96}
!293 = distinct !{!293, !96, !300, !301}
!294 = distinct !{!294, !96, !300, !301}
!295 = distinct !{!295, !96, !300, !301}
!296 = distinct !{!296, !96}
!297 = !{!58, !57, i64 8}
!298 = !{!"_ZTSSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE", !11, i64 0, !15, i64 4992}
!299 = !{!298, !15, i64 4992}
!300 = !{!"llvm.loop.isvectorized", i32 1}
!301 = !{!"llvm.loop.unroll.runtime.disable"}
!302 = !{!"_ZTSN7testing8internal12CodeLocationE", !45, i64 0, !12, i64 32}
!303 = !{!302, !12, i64 32}
!304 = !{!"p1 _ZTSN7testing8TestInfoE", !20, i64 0}
!305 = !{!304, !304, i64 0}
end_hunk_1
