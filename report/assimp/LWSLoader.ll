Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/LWSLoader?download=true
inline.NumInlined: 1468
inline.NumDeleted: 648
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6Assimp11LWSImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bp = load ptr, ptr %i.au, align 8            ; 5 uses
  store ptr %i.bp, ptr %9, align 8
  %i.bq = icmp eq ptr %i.bp, %i.ai
  br i1 %i.bq, label %.critedge, label %bb.o

bb.o:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.critedge, label %bb.q

.critedge:                                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.o
  %i.bv = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.p unwind label %bb.l

bb.p:                                             ; preds = %.critedge
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bv, ptr noundef nonnull @.str.25)
          to label %bb.kt unwind label %bb.l

bb.q:                                             ; preds = %bb.o
  %i.bw = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1             ; 2 uses
  %i.by = add i8 %i.bx, -58
  %or.cond11.i = icmp ult i8 %i.by, -10
  br i1 %or.cond11.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.i
  %i.bz = phi i8 [ %i.ce, %.lr.ph.i ], [ %i.bx, %bb.q ]
  %.013.i = phi i32 [ %i.cc, %.lr.ph.i ], [ 0, %bb.q ]
  %.0812.i = phi ptr [ %i.cd, %.lr.ph.i ], [ %i.bw, %bb.q ]
  %i.ca = mul i32 %.013.i, 10
  %narrow.i = add nsw i8 %i.bz, -48
  %i.cb = zext nneg i8 %narrow.i to i32
  %i.cc = add i32 %i.ca, %i.cb                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0812.i, i64 1 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1             ; 2 uses
  %i.cf = add i8 %i.ce, -58
  %or.cond.i = icmp ult i8 %i.cf, -10
  br i1 %or.cond.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %.lr.ph.i, !llvm.loop !1

_ZN6Assimp9strtoul10EPKcPS1_.exit:                ; preds = %.lr.ph.i, %bb.q
  %.0.lcssa.i = phi i32 [ 0, %bb.q ], [ %i.cc, %.lr.ph.i ] ; 3 uses
  %i.cg = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit
  invoke void @_ZN6Assimp6Logger4infoIJRA28_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cg, ptr noundef nonnull align 1 dereferenceable(28) @.str.26, ptr noundef nonnull align 8 dereferenceable(32) %i.br)
          to label %.lr.ph734 unwind label %bb.u

.lr.ph734:                                        ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store <2 x double> <double 0.000000e+00, double 6.000000e+01>, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store double 2.500000e+01, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.co = getelementptr inbounds nuw i8, ptr %18, i64 44
  %i.cp = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.cq = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.cr = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 80
  %i.cu = getelementptr inbounds nuw i8, ptr %18, i64 104
  %i.cv = getelementptr inbounds nuw i8, ptr %18, i64 120
  %i.cw = getelementptr inbounds nuw i8, ptr %18, i64 124
  %i.cx = getelementptr inbounds nuw i8, ptr %18, i64 128
  %i.cy = getelementptr inbounds nuw i8, ptr %18, i64 136 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %18, i64 144
  %i.da = getelementptr inbounds nuw i8, ptr %18, i64 152
  %i.db = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.df = getelementptr inbounds nuw i8, ptr %17, i64 44 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 104
  %i.dm = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.dn = getelementptr inbounds nuw i8, ptr %17, i64 124
  %i.do = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.dp = getelementptr inbounds nuw i8, ptr %17, i64 136 ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %17, i64 144
  %i.dr = getelementptr inbounds nuw i8, ptr %17, i64 152
  %i.ds = icmp ugt i32 %.0.lcssa.i, 3             ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %14, i64 44 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.dz = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.ec = getelementptr inbounds nuw i8, ptr %14, i64 80
  %i.ed = getelementptr inbounds nuw i8, ptr %14, i64 104
  %i.ee = getelementptr inbounds nuw i8, ptr %14, i64 120
  %i.ef = getelementptr inbounds nuw i8, ptr %14, i64 124
  %i.eg = getelementptr inbounds nuw i8, ptr %14, i64 128
  %i.eh = getelementptr inbounds nuw i8, ptr %14, i64 136 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %14, i64 144
  %i.ej = getelementptr inbounds nuw i8, ptr %14, i64 152
  %i.ek = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 8 uses
  %i.el = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ey = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %10, i64 120
  %i.fc = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 136
  %i.fe = getelementptr inbounds nuw i8, ptr %10, i64 152 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %10, i64 160 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 168
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 176
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 184
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.fp = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.fq = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 6 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.fs = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.fu = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.fv = getelementptr inbounds nuw i8, ptr %11, i64 124
  %i.fw = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.fx = getelementptr inbounds nuw i8, ptr %11, i64 136 ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.fz = getelementptr inbounds nuw i8, ptr %11, i64 152
  %i.ga = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.gf = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.gg = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.gh = icmp ult i32 %.0.lcssa.i, 3             ; 2 uses
  %i.gi = icmp eq i32 %.0.lcssa.i, 2
  %i.gj = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.gp = getelementptr inbounds nuw i8, ptr %21, i64 44 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %21, i64 48
  %i.gr = getelementptr inbounds nuw i8, ptr %21, i64 56
  %i.gs = getelementptr inbounds nuw i8, ptr %21, i64 64 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %21, i64 72
  %i.gu = getelementptr inbounds nuw i8, ptr %21, i64 80
  %i.gv = getelementptr inbounds nuw i8, ptr %21, i64 104
  %i.gw = getelementptr inbounds nuw i8, ptr %21, i64 120
  %i.gx = getelementptr inbounds nuw i8, ptr %21, i64 124
  %i.gy = getelementptr inbounds nuw i8, ptr %21, i64 128
  %i.gz = getelementptr inbounds nuw i8, ptr %21, i64 136 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %21, i64 144
  %i.hb = getelementptr inbounds nuw i8, ptr %21, i64 152
  %i.hc = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.hf = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.hg = getelementptr inbounds nuw i8, ptr %20, i64 44 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.hi = getelementptr inbounds nuw i8, ptr %20, i64 56
  %i.hj = getelementptr inbounds nuw i8, ptr %20, i64 64 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %20, i64 72
  %i.hl = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.hm = getelementptr inbounds nuw i8, ptr %20, i64 104
  %i.hn = getelementptr inbounds nuw i8, ptr %20, i64 120
  %i.ho = getelementptr inbounds nuw i8, ptr %20, i64 124
  %i.hp = getelementptr inbounds nuw i8, ptr %20, i64 128
  %i.hq = getelementptr inbounds nuw i8, ptr %20, i64 136 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %20, i64 144
  %i.hs = getelementptr inbounds nuw i8, ptr %20, i64 152
  br label %bb.s

.preheader587:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376.thread
  %.sroa.0535.0740 = load ptr, ptr %8, align 8    ; 2 uses
  %.not578741 = icmp eq ptr %.sroa.0535.0740, %8
  br i1 %.not578741, label %._crit_edge.thread, label %.preheader586

bb.s:                                             ; preds = %.lr.ph734, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376.thread
  %i.ht = phi ptr [ %i.bp, %.lr.ph734 ], [ %i.aeo, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376.thread ] ; 4 uses
  %.0117733 = phi i32 [ 0, %.lr.ph734 ], [ %.1118, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376.thread ] ; 30 uses
  %.0119732 = phi i32 [ 0, %.lr.ph734 ], [ %.1120, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376.thread ] ; 30 uses
  %.0121731 = phi i32 [ 0, %.lr.ph734 ], [ %.5126, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376.thread ] ; 38 uses
  %.0127730 = phi i32 [ 0, %.lr.ph734 ], [ %.2129, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376.thread ] ; 32 uses
  %.0130729 = phi i32 [ 0, %.lr.ph734 ], [ %.2132, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376.thread ] ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 27 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  %i.hw = load ptr, ptr %i.hv, align 8            ; 20 uses
  store ptr %i.hw, ptr %i.g, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 56
  %i.hy = load i64, ptr %i.hx, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hy ; 16 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.ib = load i64, ptr %i.ia, align 8            ; 8 uses
  switch i64 %i.ib, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit389.thread571 [
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit207
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219
    i64 15, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit231
    i64 13, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit340
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit378
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit389
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit207: ; preds = %bb.s
  %i.ic = load ptr, ptr %i.hu, align 8            ; 3 uses
  %i.id = load i64, ptr %i.ic, align 1
  %i.ie = xor i64 %i.id, 7021752234991053126
  %i.if = getelementptr i8, ptr %i.ic, i64 8
  %i.ig = load i16, ptr %i.if, align 1
  %i.ih = zext i16 %i.ig to i64
  %i.ii = xor i64 %i.ih, 25965
  %i.ij = or i64 %i.ie, %i.ii
  %i.ik = icmp ne i64 %i.ij, 0
  %i.il = zext i1 %i.ik to i32
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit207.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit283

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit207.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit207
  %i.in = load double, ptr %i.ch, align 8
  %i.io = fcmp une double %i.in, 1.503920e+05
  br i1 %i.io, label %bb.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376.thread

bb.t:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit207.thread
  %i.ip = load i8, ptr %i.hw, align 1             ; 2 uses
  %i.iq = add i8 %i.ip, -58
  %or.cond11.i208 = icmp ult i8 %i.iq, -10
  br i1 %or.cond11.i208, label %_ZN6Assimp9strtoul10EPKcPS1_.exit217, label %.lr.ph.i209

.lr.ph.i209:                                      ; preds = %bb.t, %.lr.ph.i209
  %i.ir = phi i8 [ %i.iw, %.lr.ph.i209 ], [ %i.ip, %bb.t ]
  %.013.i210 = phi i32 [ %i.iu, %.lr.ph.i209 ], [ 0, %bb.t ]
  %.0812.i211 = phi ptr [ %i.iv, %.lr.ph.i209 ], [ %i.hw, %bb.t ]
  %i.is = mul i32 %.013.i210, 10
  %narrow.i212 = add nsw i8 %i.ir, -48
  %i.it = zext nneg i8 %narrow.i212 to i32
  %i.iu = add i32 %i.is, %i.it                    ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.0812.i211, i64 1 ; 3 uses
  %i.iw = load i8, ptr %i.iv, align 1             ; 2 uses
  %i.ix = add i8 %i.iw, -58
  %or.cond.i213 = icmp ult i8 %i.ix, -10
  br i1 %or.cond.i213, label %_ZN6Assimp9strtoul10EPKcPS1_.exit217.loopexit, label %.lr.ph.i209, !llvm.loop !1

_ZN6Assimp9strtoul10EPKcPS1_.exit217.loopexit:    ; preds = %.lr.ph.i209
  %i.iy = uitofp i32 %i.iu to double
  %i.iz = fadd double %i.iy, -1.000000e+00
  br label %_ZN6Assimp9strtoul10EPKcPS1_.exit217

_ZN6Assimp9strtoul10EPKcPS1_.exit217:             ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit217.loopexit, %bb.t
  %.08.lcssa.i214 = phi ptr [ %i.hw, %bb.t ], [ %i.iv, %_ZN6Assimp9strtoul10EPKcPS1_.exit217.loopexit ]
  %.0.lcssa.i215 = phi double [ -1.000000e+00, %bb.t ], [ %i.iz, %_ZN6Assimp9strtoul10EPKcPS1_.exit217.loopexit ]
  store ptr %.08.lcssa.i214, ptr %i.g, align 8
  store double %.0.lcssa.i215, ptr %i.ch, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376.thread

bb.u:                                             ; preds = %bb.r, %_ZN6Assimp9strtoul10EPKcPS1_.exit
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

bb.v:                                             ; preds = %.invoke, %bb.hc, %bb.gv, %.critedge.i.i480, %.critedge.i.i474, %bb.hz, %bb.hy, %bb.hv, %bb.ht, %.critedge.i.i468, %.critedge.i.i462, %bb.hj, %bb.hi, %bb.he, %bb.hb, %bb.gx, %bb.gu, %bb.gq, %bb.go, %bb.gk, %bb.gi, %bb.ge, %bb.fu, %bb.fq, %bb.fo, %bb.fm, %bb.fi, %bb.fa, %bb.ey, %bb.eu, %bb.em, %bb.ek, %bb.eh, %bb.ee, %.thread572, %bb.dt, %bb.dq, %bb.dl, %bb.di, %bb.dg, %bb.de, %bb.dd, %bb.dc, %bb.cz, %bb.cy, %bb.cx
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ij

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219: ; preds = %bb.s
  %.pre = load ptr, ptr %i.hu, align 8
  %bcmp.i218 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.28, i64 %i.ib)
  %i.jc = icmp eq i32 %bcmp.i218, 0
  br i1 %i.jc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit389.thread571

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219
  %i.jd = load double, ptr %i.ci, align 8
  %i.je = fcmp une double %i.jd, 1.503920e+05
  br i1 %i.je, label %bb.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376.thread

bb.w:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread
  %i.jf = load i8, ptr %i.hw, align 1             ; 2 uses
  %i.jg = add i8 %i.jf, -58
  %or.cond11.i220 = icmp ult i8 %i.jg, -10
  br i1 %or.cond11.i220, label %_ZN6Assimp9strtoul10EPKcPS1_.exit229, label %.lr.ph.i221

.lr.ph.i221:                                      ; preds = %bb.w, %.lr.ph.i221
  %i.jh = phi i8 [ %i.jm, %.lr.ph.i221 ], [ %i.jf, %bb.w ]
  %.013.i222 = phi i32 [ %i.jk, %.lr.ph.i221 ], [ 0, %bb.w ]
  %.0812.i223 = phi ptr [ %i.jl, %.lr.ph.i221 ], [ %i.hw, %bb.w ]
  %i.ji = mul i32 %.013.i222, 10
  %narrow.i224 = add nsw i8 %i.jh, -48
  %i.jj = zext nneg i8 %narrow.i224 to i32
  %i.jk = add i32 %i.ji, %i.jj                    ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.0812.i223, i64 1 ; 3 uses
  %i.jm = load i8, ptr %i.jl, align 1             ; 2 uses
  %i.jn = add i8 %i.jm, -58
  %or.cond.i225 = icmp ult i8 %i.jn, -10
  br i1 %or.cond.i225, label %_ZN6Assimp9strtoul10EPKcPS1_.exit229.loopexit, label %.lr.ph.i221, !llvm.loop !1

_ZN6Assimp9strtoul10EPKcPS1_.exit229.loopexit:    ; preds = %.lr.ph.i221
  %i.jo = uitofp i32 %i.jk to double
  %i.jp = fadd double %i.jo, -1.000000e+00
  br label %_ZN6Assimp9strtoul10EPKcPS1_.exit229

_ZN6Assimp9strtoul10EPKcPS1_.exit229:             ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit229.loopexit, %bb.w
  %.08.lcssa.i226 = phi ptr [ %i.hw, %bb.w ], [ %i.jl, %_ZN6Assimp9strtoul10EPKcPS1_.exit229.loopexit ]
  %.0.lcssa.i227 = phi double [ -1.000000e+00, %bb.w ], [ %i.jp, %_ZN6Assimp9strtoul10EPKcPS1_.exit229.loopexit ]
  store ptr %.08.lcssa.i226, ptr %i.g, align 8
  store double %.0.lcssa.i227, ptr %i.ci, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit231: ; preds = %bb.s
  %.pre787 = load ptr, ptr %i.hu, align 8         ; 3 uses
  %bcmp.i230 = call i32 @bcmp(ptr %.pre787, ptr nonnull @.str.29, i64 %i.ib)
  %i.jq = icmp eq i32 %bcmp.i230, 0
  br i1 %i.jq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit231.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit243

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit231.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit231
  %i.jr = load i8, ptr %i.hw, align 1             ; 2 uses
  %i.js = add i8 %i.jr, -58
  %or.cond11.i232 = icmp ult i8 %i.js, -10
  br i1 %or.cond11.i232, label %_ZN6Assimp9strtoul10EPKcPS1_.exit241, label %.lr.ph.i233

.lr.ph.i233:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit231.thread, %.lr.ph.i233
  %i.jt = phi i8 [ %i.jy, %.lr.ph.i233 ], [ %i.jr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit231.thread ]
  %.013.i234 = phi i32 [ %i.jw, %.lr.ph.i233 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit231.thread ]
  %.0812.i235 = phi ptr [ %i.jx, %.lr.ph.i233 ], [ %i.hw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit231.thread ]
  %i.ju = mul i32 %.013.i234, 10
  %narrow.i236 = add nsw i8 %i.jt, -48
  %i.jv = zext nneg i8 %narrow.i236 to i32
  %i.jw = add i32 %i.ju, %i.jv                    ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.0812.i235, i64 1 ; 3 uses
  %i.jy = load i8, ptr %i.jx, align 1             ; 2 uses
  %i.jz = add i8 %i.jy, -58
  %or.cond.i237 = icmp ult i8 %i.jz, -10
  br i1 %or.cond.i237, label %_ZN6Assimp9strtoul10EPKcPS1_.exit241.loopexit, label %.lr.ph.i233, !llvm.loop !1

_ZN6Assimp9strtoul10EPKcPS1_.exit241.loopexit:    ; preds = %.lr.ph.i233
  %i.ka = uitofp i32 %i.jw to double
  br label %_ZN6Assimp9strtoul10EPKcPS1_.exit241

_ZN6Assimp9strtoul10EPKcPS1_.exit241:             ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit241.loopexit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit231.thread
  %.08.lcssa.i238 = phi ptr [ %i.hw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit231.thread ], [ %i.jx, %_ZN6Assimp9strtoul10EPKcPS1_.exit241.loopexit ]
  %.0.lcssa.i239 = phi double [ 0.000000e+00, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit231.thread ], [ %i.ka, %_ZN6Assimp9strtoul10EPKcPS1_.exit241.loopexit ]
  store ptr %.08.lcssa.i238, ptr %i.g, align 8
  store double %.0.lcssa.i239, ptr %i.cj, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit243: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit231
  %i.kb = load i64, ptr %.pre787, align 1
  %i.kc = xor i64 %i.kb, 7307761438488096588
  %i.kd = getelementptr i8, ptr %.pre787, i64 7
  %i.ke = load i64, ptr %i.kd, align 1
  %i.kf = xor i64 %i.ke, 8243128151773045605
  %i.kg = or i64 %i.kc, %i.kf
  %i.kh = icmp ne i64 %i.kg, 0
  %i.ki = zext i1 %i.kh to i32
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit243.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit389.thread571

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit243.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.kk = load i8, ptr %i.hw, align 1             ; 2 uses
  %i.kl = add i8 %i.kk, -58
  %or.cond11.i244 = icmp ult i8 %i.kl, -10
  br i1 %or.cond11.i244, label %_ZN6Assimp9strtoul10EPKcPS1_.exit253, label %.lr.ph.i245

.lr.ph.i245:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit243.thread, %.lr.ph.i245
  %i.km = phi i8 [ %i.kr, %.lr.ph.i245 ], [ %i.kk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit243.thread ]
  %.013.i246 = phi i32 [ %i.kp, %.lr.ph.i245 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit243.thread ]
  %.0812.i247 = phi ptr [ %i.kq, %.lr.ph.i245 ], [ %i.hw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit243.thread ]
  %i.kn = mul i32 %.013.i246, 10
  %narrow.i248 = add nsw i8 %i.km, -48
  %i.ko = zext nneg i8 %narrow.i248 to i32
  %i.kp = add i32 %i.kn, %i.ko                    ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.0812.i247, i64 1 ; 3 uses
  %i.kr = load i8, ptr %i.kq, align 1             ; 2 uses
  %i.ks = add i8 %i.kr, -58
  %or.cond.i249 = icmp ult i8 %i.ks, -10
end_hunk_0
begin_hunk_1_@_ZN6Assimp11LWSImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
bb.hj:                                            ; preds = %bb.hh
  %i.act = load ptr, ptr %i.g, align 8
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acp, i64 120
  %i.acv = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.act, ptr noundef nonnull align 4 dereferenceable(4) %i.acu, i1 noundef zeroext true)
          to label %bb.hk unwind label %bb.v      ; 4 uses

bb.hk:                                            ; preds = %bb.hj
  store ptr %i.acv, ptr %i.g, align 8
  %i.acw = ptrtoaddr ptr %i.acv to i64
  %i.acx = ptrtoaddr ptr %i.hz to i64             ; 2 uses
  %i.acy = sub i64 %i.acx, %i.acw
  %scevgep.i.i459 = getelementptr i8, ptr %i.acv, i64 %i.acy
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hn, %bb.hk
  %.0.i.i460 = phi ptr [ %i.acv, %bb.hk ], [ %i.ada, %bb.hn ] ; 4 uses
  %i.acz = load i8, ptr %.0.i.i460, align 1
  switch i8 %i.acz, label %.critedge.i.i462 [
    i8 32, label %bb.hm
    i8 9, label %bb.hm
  ]

bb.hm:                                            ; preds = %bb.hl, %bb.hl
  %.not.i.i461 = icmp eq ptr %.0.i.i460, %i.hz
  br i1 %.not.i.i461, label %.critedge.i.i462, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.ada = getelementptr inbounds nuw i8, ptr %.0.i.i460, i64 1
  br label %bb.hl, !llvm.loop !0

.critedge.i.i462:                                 ; preds = %bb.hm, %bb.hl
  %.0.lcssa.i.i463 = phi ptr [ %.0.i.i460, %bb.hl ], [ %scevgep.i.i459, %bb.hm ] ; 2 uses
  store ptr %.0.lcssa.i.i463, ptr %i.g, align 8
  %i.adb = load ptr, ptr %i.as, align 8
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 124
  %i.add = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i463, ptr noundef nonnull align 4 dereferenceable(4) %i.adc, i1 noundef zeroext true)
          to label %bb.ho unwind label %bb.v      ; 4 uses

bb.ho:                                            ; preds = %.critedge.i.i462
  store ptr %i.add, ptr %i.g, align 8
  %i.ade = ptrtoaddr ptr %i.add to i64
  %i.adf = sub i64 %i.acx, %i.ade
  %scevgep.i.i465 = getelementptr i8, ptr %i.add, i64 %i.adf
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hr, %bb.ho
  %.0.i.i466 = phi ptr [ %i.add, %bb.ho ], [ %i.adh, %bb.hr ] ; 4 uses
  %i.adg = load i8, ptr %.0.i.i466, align 1
  switch i8 %i.adg, label %.critedge.i.i468 [
    i8 32, label %bb.hq
    i8 9, label %bb.hq
  ]

bb.hq:                                            ; preds = %bb.hp, %bb.hp
  %.not.i.i467 = icmp eq ptr %.0.i.i466, %i.hz
  br i1 %.not.i.i467, label %.critedge.i.i468, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.adh = getelementptr inbounds nuw i8, ptr %.0.i.i466, i64 1
  br label %bb.hp, !llvm.loop !0

.critedge.i.i468:                                 ; preds = %bb.hq, %bb.hp
  %.0.lcssa.i.i469 = phi ptr [ %.0.i.i466, %bb.hp ], [ %scevgep.i.i465, %bb.hq ] ; 2 uses
  store ptr %.0.lcssa.i.i469, ptr %i.g, align 8
  %i.adi = load ptr, ptr %i.as, align 8
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 128
  %i.adk = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i469, ptr noundef nonnull align 4 dereferenceable(4) %i.adj, i1 noundef zeroext true)
          to label %bb.hs unwind label %bb.v

bb.hs:                                            ; preds = %.critedge.i.i468
  store ptr %i.adk, ptr %i.g, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376.thread

bb.ht:                                            ; preds = %bb.hf
  %i.adl = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.hu, ptr noundef nonnull @.str.74)
          to label %bb.hu unwind label %bb.v

bb.hu:                                            ; preds = %bb.ht
  br i1 %i.adl, label %bb.hx, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.adm = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.hu, ptr noundef nonnull @.str.75)
          to label %bb.hw unwind label %bb.v

bb.hw:                                            ; preds = %bb.hv
  br i1 %i.adm, label %bb.hx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376.thread

bb.hx:                                            ; preds = %bb.hw, %bb.hu
  %i.adn = load ptr, ptr %8, align 8
  %i.ado = icmp eq ptr %i.adn, %8
  br i1 %i.ado, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.adp = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.invoke unwind label %bb.v

.invoke:                                          ; preds = %bb.hy, %bb.hi, %bb.hb, %bb.gu, %bb.go, %bb.gi, %bb.fu, %bb.fm, %bb.ey, %bb.ek, %bb.ee, %bb.dt, %bb.dl, %bb.dc
  %i.adq = phi ptr [ %i.acs, %bb.hi ], [ %i.acg, %bb.hb ], [ %i.abu, %bb.gu ], [ %i.abc, %bb.go ], [ %i.aak, %bb.gi ], [ %i.zi, %bb.fu ], [ %i.yy, %bb.fm ], [ %i.yi, %bb.ey ], [ %i.xh, %bb.ek ], [ %i.wz, %bb.ee ], [ %i.vq, %bb.dt ], [ %i.vj, %bb.dl ], [ %i.va, %bb.dc ], [ %i.adp, %bb.hy ]
  %i.adr = phi ptr [ @.str.73, %bb.hi ], [ @.str.71, %bb.hb ], [ @.str.69, %bb.gu ], [ @.str.67, %bb.go ], [ @.str.65, %bb.gi ], [ @.str.61, %bb.fu ], [ @.str.58, %bb.fm ], [ @.str.55, %bb.ey ], [ @.str.52, %bb.ek ], [ @.str.50, %bb.ee ], [ @.str.48, %bb.dt ], [ @.str.46, %bb.dl ], [ @.str.42, %bb.dc ], [ @.str.76, %bb.hy ]
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.adq, ptr noundef nonnull %i.adr)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376.thread unwind label %bb.v

bb.hz:                                            ; preds = %bb.hx
  %i.ads = load ptr, ptr %i.g, align 8
  %i.adt = load ptr, ptr %i.as, align 8
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 104
  %i.adv = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %i.ads, ptr noundef nonnull align 4 dereferenceable(4) %i.adu, i1 noundef zeroext true)
          to label %bb.ia unwind label %bb.v      ; 4 uses

bb.ia:                                            ; preds = %bb.hz
  store ptr %i.adv, ptr %i.g, align 8
  %i.adw = ptrtoaddr ptr %i.adv to i64
  %i.adx = ptrtoaddr ptr %i.hz to i64             ; 2 uses
  %i.ady = sub i64 %i.adx, %i.adw
  %scevgep.i.i471 = getelementptr i8, ptr %i.adv, i64 %i.ady
  br label %bb.ib

bb.ib:                                            ; preds = %bb.id, %bb.ia
  %.0.i.i472 = phi ptr [ %i.adv, %bb.ia ], [ %i.aea, %bb.id ] ; 4 uses
  %i.adz = load i8, ptr %.0.i.i472, align 1
  switch i8 %i.adz, label %.critedge.i.i474 [
    i8 32, label %bb.ic
    i8 9, label %bb.ic
  ]

bb.ic:                                            ; preds = %bb.ib, %bb.ib
  %.not.i.i473 = icmp eq ptr %.0.i.i472, %i.hz
  br i1 %.not.i.i473, label %.critedge.i.i474, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.aea = getelementptr inbounds nuw i8, ptr %.0.i.i472, i64 1
  br label %bb.ib, !llvm.loop !0

.critedge.i.i474:                                 ; preds = %bb.ic, %bb.ib
  %.0.lcssa.i.i475 = phi ptr [ %.0.i.i472, %bb.ib ], [ %scevgep.i.i471, %bb.ic ] ; 2 uses
  store ptr %.0.lcssa.i.i475, ptr %i.g, align 8
  %i.aeb = load ptr, ptr %i.as, align 8
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 108
  %i.aed = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i475, ptr noundef nonnull align 4 dereferenceable(4) %i.aec, i1 noundef zeroext true)
          to label %bb.ie unwind label %bb.v      ; 4 uses

bb.ie:                                            ; preds = %.critedge.i.i474
  store ptr %i.aed, ptr %i.g, align 8
  %i.aee = ptrtoaddr ptr %i.aed to i64
  %i.aef = sub i64 %i.adx, %i.aee
  %scevgep.i.i477 = getelementptr i8, ptr %i.aed, i64 %i.aef
  br label %bb.if

bb.if:                                            ; preds = %bb.ih, %bb.ie
  %.0.i.i478 = phi ptr [ %i.aed, %bb.ie ], [ %i.aeh, %bb.ih ] ; 4 uses
  %i.aeg = load i8, ptr %.0.i.i478, align 1
  switch i8 %i.aeg, label %.critedge.i.i480 [
    i8 32, label %bb.ig
    i8 9, label %bb.ig
  ]

bb.ig:                                            ; preds = %bb.if, %bb.if
  %.not.i.i479 = icmp eq ptr %.0.i.i478, %i.hz
  br i1 %.not.i.i479, label %.critedge.i.i480, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.aeh = getelementptr inbounds nuw i8, ptr %.0.i.i478, i64 1
  br label %bb.if, !llvm.loop !0

.critedge.i.i480:                                 ; preds = %bb.ig, %bb.if
  %.0.lcssa.i.i481 = phi ptr [ %.0.i.i478, %bb.if ], [ %scevgep.i.i477, %bb.ig ] ; 2 uses
  store ptr %.0.lcssa.i.i481, ptr %i.g, align 8
  %i.aei = load ptr, ptr %i.as, align 8
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 112
  %i.aek = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i481, ptr noundef nonnull align 4 dereferenceable(4) %i.aej, i1 noundef zeroext true)
          to label %bb.ii unwind label %bb.v

bb.ii:                                            ; preds = %.critedge.i.i480
  store ptr %i.aek, ptr %i.g, align 8
  %i.ael = load ptr, ptr %i.as, align 8
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 116
  store i8 1, ptr %i.aem, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376.thread: ; preds = %.critedge.i.i419, %.invoke, %bb.du, %_ZN6Assimp9strtoul10EPKcPS1_.exit229, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread, %_ZN6Assimp11BatchLoader11PropertyMapD2Ev.exit, %_ZN6Assimp3LWS8NodeDescD2Ev.exit374, %bb.cy, %_ZN6Assimp9strtoul10EPKcPS1_.exit387, %bb.dn, %bb.ef, %bb.et, %bb.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, %_ZN6Assimp9strtoul10EPKcPS1_.exit455, %bb.hd, %bb.hw, %bb.ii, %bb.hs, %bb.gw, %_ZN6Assimp9strtoul10EPKcPS1_.exit446, %bb.fn, %bb.ez, %_ZN6Assimp9strtoul10EPKcPS1_.exit431, %bb.dd, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376, %_ZN6Assimp3LWS8NodeDescD2Ev.exit335, %_ZN6Assimp9strtoul10EPKcPS1_.exit241, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit207.thread, %_ZN6Assimp9strtoul10EPKcPS1_.exit217
  %.2132 = phi i32 [ %.0130729, %_ZN6Assimp9strtoul10EPKcPS1_.exit217 ], [ %.0130729, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit207.thread ], [ %.0130729, %_ZN6Assimp9strtoul10EPKcPS1_.exit229 ], [ %.0130729, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread ], [ %.0130729, %_ZN6Assimp9strtoul10EPKcPS1_.exit241 ], [ %.0130729, %_ZN6Assimp11BatchLoader11PropertyMapD2Ev.exit ], [ %.0130729, %_ZN6Assimp3LWS8NodeDescD2Ev.exit335 ], [ %.0130729, %_ZN6Assimp3LWS8NodeDescD2Ev.exit374 ], [ %.0130729, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376 ], [ %.0130729, %bb.cy ], [ %.0130729, %_ZN6Assimp9strtoul10EPKcPS1_.exit387 ], [ %.0130729, %_ZN6Assimp9strtoul10EPKcPS1_.exit446 ], [ %.0130729, %bb.dd ], [ %.0130729, %.invoke ], [ %.0130729, %bb.dn ], [ %.0130729, %_ZN6Assimp9strtoul10EPKcPS1_.exit455 ], [ %.0130729, %bb.hw ], [ %.0130729, %bb.ii ], [ %.0130729, %bb.ef ], [ %.0130729, %bb.gw ], [ %.0130729, %_ZN6Assimp9strtoul10EPKcPS1_.exit431 ], [ %.0130729, %bb.et ], [ %.0130729, %bb.du ], [ %.0130729, %bb.ez ], [ %.1131, %bb.fh ], [ %.0130729, %bb.hd ], [ %.0130729, %bb.fn ], [ %.0130729, %bb.hs ], [ %.0130729, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437 ], [ %.0130729, %.critedge.i.i419 ]
  %.2129 = phi i32 [ %.0127730, %_ZN6Assimp9strtoul10EPKcPS1_.exit217 ], [ %.0127730, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit207.thread ], [ %.0127730, %_ZN6Assimp9strtoul10EPKcPS1_.exit229 ], [ %.0127730, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread ], [ %.0127730, %_ZN6Assimp9strtoul10EPKcPS1_.exit241 ], [ %.0127730, %_ZN6Assimp11BatchLoader11PropertyMapD2Ev.exit ], [ %.0127730, %_ZN6Assimp3LWS8NodeDescD2Ev.exit335 ], [ %.0127730, %_ZN6Assimp3LWS8NodeDescD2Ev.exit374 ], [ %.0127730, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376 ], [ %.0127730, %bb.cy ], [ %.0127730, %_ZN6Assimp9strtoul10EPKcPS1_.exit387 ], [ %.0127730, %_ZN6Assimp9strtoul10EPKcPS1_.exit446 ], [ %.0127730, %bb.dd ], [ %.0127730, %.invoke ], [ %.0127730, %bb.dn ], [ %.0127730, %_ZN6Assimp9strtoul10EPKcPS1_.exit455 ], [ %.0127730, %bb.hw ], [ %.0127730, %bb.ii ], [ %.0127730, %bb.ef ], [ %.0127730, %bb.gw ], [ %.0127730, %_ZN6Assimp9strtoul10EPKcPS1_.exit431 ], [ %.1128, %bb.et ], [ %.0127730, %bb.du ], [ %.0127730, %bb.ez ], [ %.0127730, %bb.fh ], [ %.0127730, %bb.hd ], [ %.0127730, %bb.fn ], [ %.0127730, %bb.hs ], [ %.0127730, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437 ], [ %.0127730, %.critedge.i.i419 ]
  %.5126 = phi i32 [ %.0121731, %_ZN6Assimp9strtoul10EPKcPS1_.exit217 ], [ %.0121731, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit207.thread ], [ %.0121731, %_ZN6Assimp9strtoul10EPKcPS1_.exit229 ], [ %.0121731, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread ], [ %.0121731, %_ZN6Assimp9strtoul10EPKcPS1_.exit241 ], [ %.1122, %_ZN6Assimp11BatchLoader11PropertyMapD2Ev.exit ], [ %.2123567, %_ZN6Assimp3LWS8NodeDescD2Ev.exit335 ], [ %.3124, %_ZN6Assimp3LWS8NodeDescD2Ev.exit374 ], [ %.0121731, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376 ], [ %.4125, %bb.cy ], [ %.0121731, %_ZN6Assimp9strtoul10EPKcPS1_.exit387 ], [ %.0121731, %_ZN6Assimp9strtoul10EPKcPS1_.exit446 ], [ %.0121731, %bb.dd ], [ %.0121731, %.invoke ], [ %.0121731, %bb.dn ], [ %.0121731, %_ZN6Assimp9strtoul10EPKcPS1_.exit455 ], [ %.0121731, %bb.hw ], [ %.0121731, %bb.ii ], [ %.0121731, %bb.ef ], [ %.0121731, %bb.gw ], [ %.0121731, %_ZN6Assimp9strtoul10EPKcPS1_.exit431 ], [ %.0121731, %bb.et ], [ %.0121731, %bb.du ], [ %.0121731, %bb.ez ], [ %.0121731, %bb.fh ], [ %.0121731, %bb.hd ], [ %.0121731, %bb.fn ], [ %.0121731, %bb.hs ], [ %.0121731, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437 ], [ %.0121731, %.critedge.i.i419 ]
  %.1120 = phi i32 [ %.0119732, %_ZN6Assimp9strtoul10EPKcPS1_.exit217 ], [ %.0119732, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit207.thread ], [ %.0119732, %_ZN6Assimp9strtoul10EPKcPS1_.exit229 ], [ %.0119732, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread ], [ %.0119732, %_ZN6Assimp9strtoul10EPKcPS1_.exit241 ], [ %.0119732, %_ZN6Assimp11BatchLoader11PropertyMapD2Ev.exit ], [ %.0119732, %_ZN6Assimp3LWS8NodeDescD2Ev.exit335 ], [ %.0119732, %_ZN6Assimp3LWS8NodeDescD2Ev.exit374 ], [ %.0119732, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376 ], [ %.0119732, %bb.cy ], [ %.0119732, %_ZN6Assimp9strtoul10EPKcPS1_.exit387 ], [ %.0119732, %_ZN6Assimp9strtoul10EPKcPS1_.exit446 ], [ %.0119732, %bb.dd ], [ %.0119732, %.invoke ], [ %.0119732, %bb.dn ], [ %.0119732, %_ZN6Assimp9strtoul10EPKcPS1_.exit455 ], [ %.0119732, %bb.hw ], [ %.0119732, %bb.ii ], [ %.0119732, %bb.ef ], [ %.0119732, %bb.gw ], [ %.0119732, %_ZN6Assimp9strtoul10EPKcPS1_.exit431 ], [ %.0119732, %bb.et ], [ %.0119732, %bb.du ], [ %.0119732, %bb.ez ], [ %i.yr, %bb.fh ], [ %.0119732, %bb.hd ], [ %.0119732, %bb.fn ], [ %.0119732, %bb.hs ], [ %.0119732, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437 ], [ %.0119732, %.critedge.i.i419 ] ; 4 uses
  %.1118 = phi i32 [ %.0117733, %_ZN6Assimp9strtoul10EPKcPS1_.exit217 ], [ %.0117733, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit207.thread ], [ %.0117733, %_ZN6Assimp9strtoul10EPKcPS1_.exit229 ], [ %.0117733, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread ], [ %.0117733, %_ZN6Assimp9strtoul10EPKcPS1_.exit241 ], [ %.0117733, %_ZN6Assimp11BatchLoader11PropertyMapD2Ev.exit ], [ %.0117733, %_ZN6Assimp3LWS8NodeDescD2Ev.exit335 ], [ %.0117733, %_ZN6Assimp3LWS8NodeDescD2Ev.exit374 ], [ %.0117733, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit376 ], [ %.0117733, %bb.cy ], [ %.0117733, %_ZN6Assimp9strtoul10EPKcPS1_.exit387 ], [ %.0117733, %_ZN6Assimp9strtoul10EPKcPS1_.exit446 ], [ %.0117733, %bb.dd ], [ %.0117733, %.invoke ], [ %.0117733, %bb.dn ], [ %.0117733, %_ZN6Assimp9strtoul10EPKcPS1_.exit455 ], [ %.0117733, %bb.hw ], [ %.0117733, %bb.ii ], [ %.0117733, %bb.ef ], [ %.0117733, %bb.gw ], [ %.0117733, %_ZN6Assimp9strtoul10EPKcPS1_.exit431 ], [ %i.yb, %bb.et ], [ %.0117733, %bb.du ], [ %.0117733, %bb.ez ], [ %.0117733, %bb.fh ], [ %.0117733, %bb.hd ], [ %.0117733, %bb.fn ], [ %.0117733, %bb.hs ], [ %.0117733, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437 ], [ %.0117733, %.critedge.i.i419 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  %i.aen = load ptr, ptr %9, align 8
  %i.aeo = load ptr, ptr %i.aen, align 8          ; 3 uses
  store ptr %i.aeo, ptr %9, align 8
  %.not577 = icmp eq ptr %i.aeo, %i.ai
  br i1 %.not577, label %.preheader587, label %bb.s, !llvm.loop !89

bb.ij:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434, %bb.fe, %bb.eq, %bb.do, %bb.cw, %.body357, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, %bb.bh, %bb.v
  %.pn186.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn186.pn.pn.pn.pn, %bb.bh ], [ %.pn179.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338 ], [ %eh.lpad-body358, %.body357 ], [ %i.jb, %bb.v ], [ %i.ty, %bb.cw ], [ %i.vm, %bb.do ], [ %.pn165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434 ], [ %i.xz, %bb.eq ], [ %i.yp, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %bb.lb

.loopexit:                                        ; preds = %_ZNK6Assimp3LWS8NodeDesceqEj.exit.thread, %.preheader586
  %.sroa.0535.0 = load ptr, ptr %.sroa.0535.0742, align 8 ; 2 uses
  %.not578 = icmp eq ptr %.sroa.0535.0, %8
  br i1 %.not578, label %.preheader, label %.preheader586, !llvm.loop !90

.preheader586:                                    ; preds = %.preheader587, %.loopexit
  %.sroa.0535.0742 = phi ptr [ %.sroa.0535.0, %.loopexit ], [ %.sroa.0535.0740, %.preheader587 ] ; 6 uses
  %.sroa.0527.0736 = load ptr, ptr %8, align 8    ; 2 uses
  %.not581737 = icmp eq ptr %.sroa.0527.0736, %8
  br i1 %.not581737, label %.loopexit, label %.lr.ph739

.lr.ph739:                                        ; preds = %.preheader586
  %i.aep = getelementptr inbounds nuw i8, ptr %.sroa.0535.0742, i64 16 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %.sroa.0535.0742, i64 60
  %i.aer = getelementptr inbounds nuw i8, ptr %.sroa.0535.0742, i64 152
  %i.aes = getelementptr inbounds nuw i8, ptr %.sroa.0535.0742, i64 168 ; 2 uses
  br label %bb.ik

.preheader:                                       ; preds = %.loopexit
  %.sroa.0523.0743.pre = load ptr, ptr %8, align 8 ; 2 uses
  %.not579744 = icmp eq ptr %.sroa.0523.0743.pre, %8
  br i1 %.not579744, label %._crit_edge.thread, label %.lr.ph747

bb.ik:                                            ; preds = %.lr.ph739, %_ZNK6Assimp3LWS8NodeDesceqEj.exit.thread
  %.sroa.0527.0738 = phi ptr [ %.sroa.0527.0736, %.lr.ph739 ], [ %.sroa.0527.0, %_ZNK6Assimp3LWS8NodeDesceqEj.exit.thread ] ; 5 uses
  %.not582 = icmp eq ptr %.sroa.0527.0738, %.sroa.0535.0742
  br i1 %.not582, label %_ZNK6Assimp3LWS8NodeDesceqEj.exit.thread, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.aet = getelementptr inbounds nuw i8, ptr %.sroa.0527.0738, i64 16
  %i.aeu = getelementptr inbounds nuw i8, ptr %.sroa.0527.0738, i64 64
  %i.aev = load i32, ptr %i.aeu, align 8          ; 3 uses
  %.not.i483 = icmp eq i32 %i.aev, 0
  br i1 %.not.i483, label %_ZNK6Assimp3LWS8NodeDesceqEj.exit.thread, label %_ZNK6Assimp3LWS8NodeDesceqEj.exit

_ZNK6Assimp3LWS8NodeDesceqEj.exit:                ; preds = %bb.il
  %i.aew = lshr i32 %i.aev, 28
  %i.aex = load i32, ptr %i.aep, align 8
  %i.aey = icmp eq i32 %i.aew, %i.aex
  %i.aez = and i32 %i.aev, 268435455
  %i.afa = load i32, ptr %i.aeq, align 4
  %i.afb = icmp eq i32 %i.aez, %i.afa
  %i.afc = select i1 %i.aey, i1 %i.afb, i1 false
  br i1 %i.afc, label %bb.im, label %_ZNK6Assimp3LWS8NodeDesceqEj.exit.thread

bb.im:                                            ; preds = %_ZNK6Assimp3LWS8NodeDesceqEj.exit
  %i.afd = getelementptr inbounds nuw i8, ptr %.sroa.0527.0738, i64 176 ; 2 uses
  %i.afe = load ptr, ptr %i.afd, align 8
  %.not156 = icmp eq ptr %i.afe, null
  br i1 %.not156, label %bb.iq, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.aff = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.io unwind label %bb.ip

bb.io:                                            ; preds = %bb.in
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aff, ptr noundef nonnull @.str.77)
          to label %_ZNK6Assimp3LWS8NodeDesceqEj.exit.thread unwind label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in
  %i.afg = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

bb.iq:                                            ; preds = %bb.im
  %i.afh = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.ir unwind label %bb.is     ; 2 uses

bb.ir:                                            ; preds = %bb.iq
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 16
  store ptr %i.aet, ptr %i.afi, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.afh, ptr noundef nonnull align 8 dereferenceable(24) %i.aer) #25
  %i.afj = load i64, ptr %i.aes, align 8
  %i.afk = add i64 %i.afj, 1
  store i64 %i.afk, ptr %i.aes, align 8
  store ptr %i.aep, ptr %i.afd, align 8
  br label %_ZNK6Assimp3LWS8NodeDesceqEj.exit.thread

bb.is:                                            ; preds = %bb.iq
  %i.afl = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

_ZNK6Assimp3LWS8NodeDesceqEj.exit.thread:         ; preds = %bb.il, %bb.ik, %_ZNK6Assimp3LWS8NodeDesceqEj.exit, %bb.ir, %bb.io
  %.sroa.0527.0 = load ptr, ptr %.sroa.0527.0738, align 8 ; 2 uses
  %.not581 = icmp eq ptr %.sroa.0527.0, %8
  br i1 %.not581, label %.loopexit, label %bb.ik, !llvm.loop !91

._crit_edge:                                      ; preds = %.lr.ph747
  %.not135 = icmp eq i32 %spec.select, 0
  br i1 %.not135, label %._crit_edge.thread, label %bb.iw

.lr.ph747:                                        ; preds = %.preheader, %.lr.ph747
  %.sroa.0523.0746 = phi ptr [ %.sroa.0523.0, %.lr.ph747 ], [ %.sroa.0523.0743.pre, %.preheader ] ; 2 uses
  %.0114745 = phi i32 [ %spec.select, %.lr.ph747 ], [ 0, %.preheader ]
  %i.afm = getelementptr inbounds nuw i8, ptr %.sroa.0523.0746, i64 176
  %i.afn = load ptr, ptr %i.afm, align 8
  %.not155 = icmp eq ptr %i.afn, null
  %i.afo = zext i1 %.not155 to i32
  %spec.select = add i32 %.0114745, %i.afo        ; 3 uses
  %.sroa.0523.0 = load ptr, ptr %.sroa.0523.0746, align 8 ; 2 uses
  %.not579 = icmp eq ptr %.sroa.0523.0, %8
  br i1 %.not579, label %._crit_edge, label %.lr.ph747, !llvm.loop !92

._crit_edge.thread:                               ; preds = %.preheader587, %.preheader, %._crit_edge
  %i.afp = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.afp, ptr noundef nonnull @.str.78)
          to label %bb.it unwind label %bb.iu

bb.it:                                            ; preds = %._crit_edge.thread
  invoke void @__cxa_throw(ptr nonnull %i.afp, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.lg unwind label %bb.iv

bb.iu:                                            ; preds = %._crit_edge.thread
  %i.afq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.afp) #25
  br label %bb.lb

bb.iv:                                            ; preds = %bb.iw, %bb.it
  %i.afr = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

bb.iw:                                            ; preds = %._crit_edge
  invoke void @_ZN6Assimp11BatchLoader7LoadAllEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ix unwind label %bb.iv

bb.ix:                                            ; preds = %bb.iw
  %i.afs = invoke noalias noundef nonnull dereferenceable(1168) ptr @_Znwm(i64 noundef 1168) #27
          to label %bb.iy unwind label %bb.je     ; 14 uses

bb.iy:                                            ; preds = %bb.ix
  invoke void @_ZN7aiSceneC1Ev(ptr noundef nonnull align 8 dereferenceable(1168) %i.afs)
          to label %bb.iz unwind label %bb.jf

bb.iz:                                            ; preds = %bb.iy
  %i.aft = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27
          to label %bb.ja unwind label %bb.jg     ; 9 uses

bb.ja:                                            ; preds = %bb.iz
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.aft)
          to label %bb.jb unwind label %bb.jh

bb.jb:                                            ; preds = %bb.ja
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afs, i64 8
  store ptr %i.aft, ptr %i.afu, align 8
  %.not136 = icmp eq i32 %.1118, 0
  br i1 %.not136, label %._crit_edge794, label %bb.jc

._crit_edge794:                                   ; preds = %bb.jb
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.afs, i64 104
  %.pre795 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.ji

bb.jc:                                            ; preds = %bb.jb
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afs, i64 96
  store i32 %.1118, ptr %i.afv, align 8
  %i.afw = zext i32 %.1118 to i64
  %i.afx = shl nuw nsw i64 %i.afw, 3
  %i.afy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.afx) #27
          to label %bb.jd unwind label %bb.jg     ; 2 uses

bb.jd:                                            ; preds = %bb.jc
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afs, i64 104
  store ptr %i.afy, ptr %i.afz, align 8
  br label %bb.ji

bb.je:                                            ; preds = %bb.ix
  %i.aga = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

bb.jf:                                            ; preds = %bb.iy
  %i.agb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.afs, i64 noundef 1168) #28
  br label %bb.lb

bb.jg:                                            ; preds = %bb.jc, %bb.iz
  %i.agc = landingpad { ptr, i32 }
          cleanup
  br label %bb.lb

bb.jh:                                            ; preds = %bb.ja
  %i.agd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aft, i64 noundef 1144) #28
  br label %bb.lb

bb.ji:                                            ; preds = %._crit_edge794, %bb.jd
  %i.age = phi ptr [ %.pre795, %._crit_edge794 ], [ %i.afy, %bb.jd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  store ptr %i.age, ptr %i.i, align 8
  %.not137 = icmp eq i32 %.1120, 0
  br i1 %.not137, label %.._crit_edge.i.i486_crit_edge, label %bb.jj

.._crit_edge.i.i486_crit_edge:                    ; preds = %bb.ji
  %.phi.trans.insert796 = getelementptr inbounds nuw i8, ptr %i.afs, i64 88
  %.pre797 = load ptr, ptr %.phi.trans.insert796, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492

bb.jj:                                            ; preds = %bb.ji
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afs, i64 80
  store i32 %.1120, ptr %i.agf, align 8
  %i.agg = zext i32 %.1120 to i64
  %i.agh = shl nuw nsw i64 %i.agg, 3
  %i.agi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.agh) #27
          to label %bb.jk unwind label %bb.jl     ; 2 uses

bb.jk:                                            ; preds = %bb.jj
  %i.agj = getelementptr inbounds nuw i8, ptr %i.afs, i64 88
  store ptr %i.agi, ptr %i.agj, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492

bb.jl:                                            ; preds = %bb.jj
  %i.agk = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492: ; preds = %.._crit_edge.i.i486_crit_edge, %bb.jk
  %i.agl = phi ptr [ %.pre797, %.._crit_edge.i.i486_crit_edge ], [ %i.agi, %bb.jk ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr %i.agl, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  store i32 9, ptr %i.aft, align 4
  %i.agm = getelementptr inbounds nuw i8, ptr %i.aft, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.agm, ptr noundef nonnull align 1 dereferenceable(9) @.str.79, i64 9, i1 false)
  %i.agn = getelementptr inbounds nuw i8, ptr %i.aft, i64 13
  store i8 0, ptr %i.agn, align 1
  %i.ago = zext i32 %spec.select to i64
  %i.agp = shl nuw nsw i64 %i.ago, 3
  %i.agq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.agp) #27
          to label %bb.jm unwind label %bb.jn

bb.jm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492
  %i.agr = getelementptr inbounds nuw i8, ptr %i.aft, i64 1112 ; 2 uses
  store ptr %i.agq, ptr %i.agr, align 8
  %.sroa.0517.0749 = load ptr, ptr %8, align 8    ; 2 uses
  %.not580750 = icmp eq ptr %.sroa.0517.0749, %8
  br i1 %.not580750, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph753

.lr.ph753:                                        ; preds = %bb.jm
  %i.ags = getelementptr inbounds nuw i8, ptr %i.aft, i64 1104 ; 2 uses
  br label %bb.jo

._crit_edge754:                                   ; preds = %bb.ju
  %.phi.trans.insert798 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.pre799 = load ptr, ptr %.phi.trans.insert798, align 8 ; 2 uses
  %.pre800 = load ptr, ptr %25, align 8           ; 8 uses
  %i.agt = ptrtoint ptr %.pre799 to i64
  %i.agu = ptrtoint ptr %.pre800 to i64           ; 5 uses
  %i.agv = sub i64 %i.agt, %i.agu                 ; 5 uses
  %i.agw = lshr exact i64 %i.agv, 3
  %.not138 = icmp eq ptr %.pre799, %.pre800
  br i1 %.not138, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP10aiNodeAnimSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.jv

bb.jn:                                            ; preds = %bb.jv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492
  %i.agx = landingpad { ptr, i32 }
          cleanup
  br label %bb.kx

bb.jo:                                            ; preds = %.lr.ph753, %bb.ju
  %.sroa.0517.0751 = phi ptr [ %.sroa.0517.0749, %.lr.ph753 ], [ %.sroa.0517.0, %bb.ju ] ; 3 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %.sroa.0517.0751, i64 16
  %i.agz = getelementptr inbounds nuw i8, ptr %.sroa.0517.0751, i64 176
  %i.aha = load ptr, ptr %i.agz, align 8
  %.not147 = icmp eq ptr %i.aha, null
  br i1 %.not147, label %bb.jp, label %bb.ju

bb.jp:                                            ; preds = %bb.jo
  %i.ahb = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #27
          to label %bb.jq unwind label %bb.js     ; 5 uses

bb.jq:                                            ; preds = %bb.jp
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.ahb)
          to label %bb.jr unwind label %bb.jt

bb.jr:                                            ; preds = %bb.jq
  %i.ahc = load ptr, ptr %i.agr, align 8
  %i.ahd = load i32, ptr %i.ags, align 8          ; 2 uses
  %i.ahe = add i32 %i.ahd, 1
  store i32 %i.ahe, ptr %i.ags, align 8
  %i.ahf = zext i32 %i.ahd to i64
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %i.ahc, i64 %i.ahf
  store ptr %i.ahb, ptr %i.ahg, align 8
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahb, i64 1096
  store ptr %i.aft, ptr %i.ahh, align 8
  invoke void @_ZN6Assimp11LWSImporter10BuildGraphEP6aiNodeRNS_3LWS8NodeDescERSt6vectorINS_14AttachmentInfoESaIS7_EERNS_11BatchLoaderERPP8aiCameraRPP7aiLightRS6_IP10aiNodeAnimSaISM_EE(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef nonnull %i.ahb, ptr noundef nonnull align 8 dereferenceable(168) %i.agy, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.ju unwind label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jp
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  br label %bb.kx

bb.jt:                                            ; preds = %bb.jq
  %i.ahj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ahb, i64 noundef 1144) #28
  br label %bb.kx

end_hunk_1
