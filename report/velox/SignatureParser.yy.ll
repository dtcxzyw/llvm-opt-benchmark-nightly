Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SignatureParser.yy?download=true
inline.NumInlined: 1176
inline.NumDeleted: 388
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN8facebook5velox4exec6Parser5parseEv:bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 12 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 12 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %24, i64 88
  %i.en = getelementptr inbounds nuw i8, ptr %24, i64 96
  %i.eo = getelementptr inbounds nuw i8, ptr %24, i64 104 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 12 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %24, i64 120 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %24, i64 112
  %i.et = getelementptr inbounds nuw i8, ptr %24, i64 136
  %i.eu = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %24, i64 192
  %i.ex = getelementptr inbounds nuw i8, ptr %24, i64 200
  %i.ey = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %21, i64 56
  %i.fg = getelementptr inbounds nuw i8, ptr %21, i64 88 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %21, i64 96
  %i.fi = getelementptr inbounds nuw i8, ptr %21, i64 72 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 12 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 12 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.ft = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ga = getelementptr inbounds nuw i8, ptr %16, i64 96
  %i.gb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 12 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.gk = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.gs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 12 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ha = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.hc = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 12 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.hl = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.hn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.hp = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %58, i64 104
  %i.hw = getelementptr inbounds nuw i8, ptr %58, i64 192 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %58, i64 160
  %i.hy = getelementptr inbounds nuw i8, ptr %58, i64 176 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %58, i64 136 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %58, i64 144
  %i.ib = getelementptr inbounds nuw i8, ptr %58, i64 152
  %i.ic = getelementptr inbounds nuw i8, ptr %58, i64 120 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %58, i64 88 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %58, i64 56
  %i.if = getelementptr inbounds nuw i8, ptr %58, i64 72 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %58, i64 32 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %58, i64 40
  %i.ii = getelementptr inbounds nuw i8, ptr %58, i64 48
  %i.ij = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %53, i64 104
  %i.il = getelementptr inbounds nuw i8, ptr %53, i64 192 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %53, i64 160
  %i.in = getelementptr inbounds nuw i8, ptr %53, i64 176 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %53, i64 136 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %53, i64 144
  %i.iq = getelementptr inbounds nuw i8, ptr %53, i64 152
  %i.ir = getelementptr inbounds nuw i8, ptr %53, i64 120 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %53, i64 88 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %53, i64 56
  %i.iu = getelementptr inbounds nuw i8, ptr %53, i64 72 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %53, i64 32 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %53, i64 40
  %i.ix = getelementptr inbounds nuw i8, ptr %53, i64 48
  %i.iy = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %48, i64 104
  %i.ja = getelementptr inbounds nuw i8, ptr %48, i64 192 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %48, i64 160
  %i.jc = getelementptr inbounds nuw i8, ptr %48, i64 176 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %48, i64 136 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %48, i64 144
  %i.jf = getelementptr inbounds nuw i8, ptr %48, i64 152
  %i.jg = getelementptr inbounds nuw i8, ptr %48, i64 120 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %48, i64 88 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %48, i64 56
  %i.jj = getelementptr inbounds nuw i8, ptr %48, i64 72 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %48, i64 32 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %48, i64 40
  %i.jm = getelementptr inbounds nuw i8, ptr %48, i64 48
  %i.jn = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %44, i64 104
  %i.jp = getelementptr inbounds nuw i8, ptr %44, i64 192 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %44, i64 160
  %i.jr = getelementptr inbounds nuw i8, ptr %44, i64 176 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %44, i64 136 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %44, i64 144
  %i.ju = getelementptr inbounds nuw i8, ptr %44, i64 152
  %i.jv = getelementptr inbounds nuw i8, ptr %44, i64 120 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %44, i64 88 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %44, i64 56
  %i.jy = getelementptr inbounds nuw i8, ptr %44, i64 72 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %44, i64 32 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %44, i64 40
  %i.kb = getelementptr inbounds nuw i8, ptr %44, i64 48
  %i.kc = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %39, i64 88 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %39, i64 56
  %i.kf = getelementptr inbounds nuw i8, ptr %39, i64 72 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %39, i64 32 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %39, i64 40
  %i.ki = getelementptr inbounds nuw i8, ptr %39, i64 48
  %i.kj = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %35, i64 88 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %35, i64 56
  %i.km = getelementptr inbounds nuw i8, ptr %35, i64 72 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %35, i64 40
  %i.kp = getelementptr inbounds nuw i8, ptr %35, i64 48
  %i.kq = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %24, i64 104
  %i.ks = getelementptr inbounds nuw i8, ptr %24, i64 192 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %24, i64 160
  %i.ku = getelementptr inbounds nuw i8, ptr %24, i64 176 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %24, i64 136 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %24, i64 144
  %i.kx = getelementptr inbounds nuw i8, ptr %24, i64 152
  %i.ky = getelementptr inbounds nuw i8, ptr %24, i64 120 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %24, i64 88 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %24, i64 56
  %i.lb = getelementptr inbounds nuw i8, ptr %24, i64 72 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %24, i64 40
  %i.le = getelementptr inbounds nuw i8, ptr %24, i64 48
  %i.lf = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %58, i64 104
  %i.lh = getelementptr inbounds nuw i8, ptr %53, i64 104
  %i.li = getelementptr inbounds nuw i8, ptr %48, i64 104
  %i.lj = getelementptr inbounds nuw i8, ptr %44, i64 104
  %i.lk = getelementptr inbounds nuw i8, ptr %24, i64 104
  br label %.lr.ph2490

.loopexit.split-lp1717.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %_ZN8facebook5velox4exec6Parser5stackINS2_17stack_symbol_typeESt6vectorIS4_SaIS4_EEE5clearEv.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.ll = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  br label %.loopexit1715

.lr.ph2490:                                       ; preds = %.lr.ph2490.backedge, %.lr.ph2490.lr.ph
  %i.lm = phi i8 [ %i.o, %.lr.ph2490.lr.ph ], [ %.be, %.lr.ph2490.backedge ]
  %.01102489 = phi i32 [ 0, %.lr.ph2490.lr.ph ], [ %.01102489.be, %.lr.ph2490.backedge ] ; 53 uses
  %i.ln = sext i8 %i.lm to i64
  %i.lo = getelementptr inbounds i8, ptr @_ZN8facebook5velox4exec6Parser7yypact_E, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !118 ; 2 uses
  %i.lq = sext i8 %i.lp to i32
  %i.lr = icmp eq i8 %i.lp, -45
  br i1 %i.lr, label %bb.t, label %bb.b

bb.b:                                             ; preds = %.lr.ph2490
  %i.ls = load i32, ptr %3, align 16, !tbaa !117  ; 2 uses
  %i.lt = icmp eq i32 %i.ls, -2
  br i1 %i.lt, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.lu = load ptr, ptr %i.q, align 8, !tbaa !110
  %i.lv = invoke noundef i32 @_ZN8facebook5velox4exec7Scanner3lexEPNS1_6Parser10value_typeE(ptr noundef nonnull align 8 dereferenceable(760) %i.lu, ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.g       ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.lw = icmp slt i32 %i.lv, 1
  br i1 %i.lw, label %_ZN8facebook5velox4exec6Parser12yytranslate_Ei.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.lx = icmp samesign ult i32 %i.lv, 270
  br i1 %i.lx, label %bb.f, label %_ZN8facebook5velox4exec6Parser12yytranslate_Ei.exit

bb.f:                                             ; preds = %bb.e
  %i.ly = zext nneg i32 %i.lv to i64
  %i.lz = getelementptr inbounds nuw i8, ptr @_ZZN8facebook5velox4exec6Parser12yytranslate_EiE15translate_table, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !118
  %i.mb = sext i8 %i.ma to i32
  br label %_ZN8facebook5velox4exec6Parser12yytranslate_Ei.exit

_ZN8facebook5velox4exec6Parser12yytranslate_Ei.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ 0, %bb.d ], [ %i.mb, %bb.f ], [ 2, %bb.e ] ; 2 uses
  store i32 %.0.i, ptr %3, align 16, !tbaa !117
  br label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.mc = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox4exec6Parser12syntax_errorE
          catch ptr null                          ; 2 uses
  %i.md = extractvalue { ptr, i32 } %i.mc, 0      ; 2 uses
  %i.me = extractvalue { ptr, i32 } %i.mc, 1
  %i.mf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox4exec6Parser12syntax_errorE) #25
  %i.mg = icmp eq i32 %i.me, %i.mf
  br i1 %i.mg, label %bb.h, label %.loopexit1715

bb.h:                                             ; preds = %bb.g
  %i.mh = call ptr @__cxa_begin_catch(ptr %i.md) #25
  invoke void @_ZN8facebook5velox4exec6Parser5errorERKNS2_12syntax_errorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.mh)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_end_catch()
          to label %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1473 unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.mi = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.vd

bb.k:                                             ; preds = %bb.i
  %i.mj = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.pn = phi { ptr, i32 } [ %i.mj, %bb.k ], [ %i.mi, %bb.j ]
  %.0116 = extractvalue { ptr, i32 } %.pn, 0
  br label %.loopexit1715

bb.m:                                             ; preds = %_ZN8facebook5velox4exec6Parser12yytranslate_Ei.exit, %bb.b
  %i.mk = phi i32 [ %.0.i, %_ZN8facebook5velox4exec6Parser12yytranslate_Ei.exit ], [ %i.ls, %bb.b ] ; 3 uses
  %i.ml = icmp eq i32 %i.mk, 1
  br i1 %i.ml, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 2, ptr %3, align 16, !tbaa !117
  br label %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1473

bb.o:                                             ; preds = %bb.m
  %i.mm = add nsw i32 %i.mk, %i.lq                ; 3 uses
  %or.cond = icmp ugt i32 %i.mm, 94
  br i1 %or.cond, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.mn = zext nneg i32 %i.mm to i64              ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4exec6Parser8yycheck_E, i64 %i.mn
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !118
  %i.mq = sext i8 %i.mp to i32
  %.not174 = icmp eq i32 %i.mk, %i.mq
  br i1 %.not174, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.mr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4exec6Parser8yytable_E, i64 %i.mn
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !118 ; 2 uses
  %i.mt = icmp eq i32 %i.mm, 93
  br i1 %i.mt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.mu = sext i8 %i.ms to i32
  %i.mv = sub nsw i32 0, %i.mu
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.01102489, i32 1)
  invoke void @_ZN8facebook5velox4exec6Parser7yypush_EPKcaONS2_11symbol_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull poison, i8 noundef signext %i.ms, ptr noundef nonnull align 16 dereferenceable(48) %3)
          to label %.backedge unwind label %.loopexit.split-lp1717.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.backedge:                                        ; preds = %bb.s, %_ZN8facebook5velox4exec6Parser7yypush_EPKcONS2_17stack_symbol_typeE.exit
  %.0110.be = phi i32 [ %spec.select, %bb.s ], [ %.21123629, %_ZN8facebook5velox4exec6Parser7yypush_EPKcONS2_17stack_symbol_typeE.exit ]
  %i.mw = load ptr, ptr %i.e, align 8, !tbaa !112 ; 2 uses
  %i.mx = load ptr, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = sub i64 %i.my, %i.mz                    ; 2 uses
  %i.nb = getelementptr i8, ptr %i.mx, i64 %i.na
  %i.nc = getelementptr i8, ptr %i.nb, i64 -48
  %i.nd = load i8, ptr %i.nc, align 16, !tbaa !120 ; 2 uses
  %i.ne = icmp eq i8 %i.nd, 24
  br i1 %i.ne, label %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1487, label %.lr.ph2490.backedge

.lr.ph2490.backedge:                              ; preds = %.backedge, %_ZN8facebook5velox4exec6Parser7yypush_EPKcONS2_17stack_symbol_typeE.exit1484
  %.be = phi i8 [ %i.nd, %.backedge ], [ %i.cvg, %_ZN8facebook5velox4exec6Parser7yypush_EPKcONS2_17stack_symbol_typeE.exit1484 ]
  %.01102489.be = phi i32 [ %.0110.be, %.backedge ], [ 3, %_ZN8facebook5velox4exec6Parser7yypush_EPKcONS2_17stack_symbol_typeE.exit1484 ]
  br label %.lr.ph2490

bb.t:                                             ; preds = %bb.o, %bb.p, %.lr.ph2490
  %i.nf = load ptr, ptr %i.e, align 8, !tbaa !112 ; 2 uses
  %i.ng = load ptr, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  %i.nh = ptrtoint ptr %i.nf to i64
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = sub i64 %i.nh, %i.ni                    ; 2 uses
  %i.nk = getelementptr i8, ptr %i.ng, i64 %i.nj
  %i.nl = getelementptr i8, ptr %i.nk, i64 -48
  %i.nm = load i8, ptr %i.nl, align 16, !tbaa !120
  %i.nn = sext i8 %i.nm to i64
  %i.no = getelementptr inbounds i8, ptr @_ZN8facebook5velox4exec6Parser9yydefact_E, i64 %i.nn
  %i.np = load i8, ptr %i.no, align 1, !tbaa !118 ; 2 uses
  %i.nq = sext i8 %i.np to i32
  %i.nr = icmp eq i8 %i.np, 0
  br i1 %i.nr, label %bb.ui, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.093 = phi i32 [ %i.nq, %bb.t ], [ %i.mv, %bb.r ] ; 3 uses
  %i.ns = sext i32 %.093 to i64                   ; 2 uses
  %i.nt = getelementptr inbounds i8, ptr @_ZN8facebook5velox4exec6Parser5yyr2_E, i64 %i.ns
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !118 ; 2 uses
  %i.nv = sext i8 %i.nu to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN8facebook5velox4exec6Parser17stack_symbol_typeC1Ev(ptr noundef nonnull align 16 dereferenceable(48) %4)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.nw = load ptr, ptr %i.e, align 8, !tbaa !112
  %i.nx = load ptr, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  %i.ny = ptrtoint ptr %i.nw to i64
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = sub i64 %i.ny, %i.nz
  %i.ob = xor i8 %i.nu, -1
  %i.oc = sext i8 %i.ob to i64
  %i.od = getelementptr i8, ptr %i.nx, i64 %i.oa  ; 57 uses
  %i.oe = getelementptr [48 x i8], ptr %i.od, i64 %i.oc
  %i.of = load i8, ptr %i.oe, align 16, !tbaa !120 ; 2 uses
  %i.og = getelementptr inbounds i8, ptr @_ZN8facebook5velox4exec6Parser5yyr1_E, i64 %i.ns
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !118 ; 2 uses
  %i.oi = sext i8 %i.oh to i64
  %i.oj = add nsw i64 %i.oi, -15                  ; 2 uses
  %i.ok = getelementptr inbounds i8, ptr @_ZN8facebook5velox4exec6Parser8yypgoto_E, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !118
  %i.om = sext i8 %i.ol to i32
  %i.on = sext i8 %i.of to i32
  %i.oo = add nsw i32 %i.om, %i.on                ; 2 uses
  %or.cond.i = icmp ult i32 %i.oo, 95
  br i1 %or.cond.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.op = zext nneg i32 %i.oo to i64              ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4exec6Parser8yycheck_E, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !118
  %i.os = icmp eq i8 %i.or, %i.of
  br i1 %i.os, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ot = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4exec6Parser8yytable_E, i64 %i.op
  br label %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.ou = getelementptr inbounds i8, ptr @_ZN8facebook5velox4exec6Parser10yydefgoto_E, i64 %i.oj
  br label %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit

_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit: ; preds = %bb.x, %bb.y
  %.0.in.i = phi ptr [ %i.ot, %bb.x ], [ %i.ou, %bb.y ]
  %.0.i240 = load i8, ptr %.0.in.i, align 1, !tbaa !118
  store i8 %.0.i240, ptr %4, align 16, !tbaa !120
  switch i8 %i.oh, label %bb.af [
    i8 17, label %bb.ab
    i8 18, label %bb.ab
    i8 19, label %bb.ab
    i8 21, label %bb.ab
    i8 23, label %bb.ab
    i8 25, label %bb.ab
    i8 26, label %bb.ab
    i8 27, label %bb.ab
    i8 28, label %bb.ab
    i8 11, label %bb.ac
    i8 12, label %bb.ac
    i8 13, label %bb.ac
    i8 14, label %bb.ac
    i8 22, label %bb.ad
    i8 24, label %bb.ad
    i8 20, label %bb.ae
  ]

bb.z:                                             ; preds = %bb.u
  %i.ov = landingpad { ptr, i32 }
          catch ptr null
  %i.ow = extractvalue { ptr, i32 } %i.ov, 0
  br label %bb.uh

bb.aa:                                            ; preds = %_ZN8facebook5velox4exec6Parser5stackINS2_17stack_symbol_typeESt6vectorIS4_SaIS4_EEE4pushEOS4_.exit.i, %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit
  %i.ox = landingpad { ptr, i32 }
          catch ptr null
  br label %.body1462

.body1462:                                        ; preds = %bb.ug, %bb.aa
  %eh.lpad-body1463 = phi { ptr, i32 } [ %i.ox, %bb.aa ], [ %i.cse, %bb.ug ]
  %i.oy = extractvalue { ptr, i32 } %eh.lpad-body1463, 0
  br label %.loopexit1721

bb.ab:                                            ; preds = %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.r, i8 0, i64 16, i1 false)
  br label %bb.af

bb.ac:                                            ; preds = %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit
  store ptr %i.s, ptr %i.r, align 16, !tbaa !135
  store i64 0, ptr %i.t, align 8, !tbaa !139
  store i8 0, ptr %i.s, align 16, !tbaa !118
  br label %bb.af

bb.ad:                                            ; preds = %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit, %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.r, i8 0, i64 24, i1 false)
  br label %bb.af

bb.ae:                                            ; preds = %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.r, i8 0, i64 24, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %_ZN8facebook5velox4exec6Parser17yy_lr_goto_state_Eai.exit, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  switch i32 %.093, label %.lr.ph.i.i1459.fold.split [
    i32 2, label %bb.ag
    i32 3, label %bb.aq
    i32 4, label %.lr.ph.i.i1459
    i32 5, label %bb.be
    i32 6, label %bb.bp
    i32 7, label %bb.cg
    i32 8, label %bb.cx
    i32 9, label %bb.di
    i32 10, label %bb.dt
    i32 11, label %bb.ee
    i32 12, label %bb.ep
    i32 13, label %bb.fa
    i32 14, label %bb.gh
    i32 15, label %bb.hk
    i32 16, label %bb.hz
    i32 17, label %bb.ih
    i32 18, label %bb.iu
    i32 19, label %bb.ki
    i32 20, label %bb.kk
    i32 21, label %bb.ko
    i32 22, label %bb.kz
    i32 23, label %bb.lk
    i32 24, label %bb.lm
    i32 25, label %bb.lq
    i32 26, label %bb.lz
    i32 27, label %bb.mn
    i32 28, label %._crit_edge.i.i861
    i32 29, label %._crit_edge.i.i944
    i32 30, label %._crit_edge.i.i1034
    i32 31, label %._crit_edge.i.i1119
    i32 32, label %._crit_edge.i.i1209
    i32 33, label %._crit_edge.i.i1299
    i32 34, label %._crit_edge.i.i1394
    i32 0, label %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit
  ]

bb.ag:                                            ; preds = %bb.af
  %i.oz = load ptr, ptr %i.q, align 8, !tbaa !110
  %i.pa = getelementptr i8, ptr %i.od, i64 -32
  %i.pb = getelementptr i8, ptr %i.od, i64 -24
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !124 ; 2 uses
  %i.pd = load <2 x ptr>, ptr %i.pa, align 8, !tbaa !121
  %.not.i.i.i241 = icmp eq ptr %i.pc, null
  br i1 %.not.i.i.i241, label %_ZNSt10shared_ptrIN8facebook5velox4exec13TypeSignatureEEC2ERKS4_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 8 ; 3 uses
  %i.pf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !118
  %.not.i.i.i.i = icmp eq i8 %i.pf, 0
  br i1 %.not.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.pg = load i32, ptr %i.pe, align 4, !tbaa !131
  %i.ph = add nsw i32 %i.pg, 1
  store i32 %i.ph, ptr %i.pe, align 4, !tbaa !131
  br label %_ZNSt10shared_ptrIN8facebook5velox4exec13TypeSignatureEEC2ERKS4_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.pi = atomicrmw volatile add ptr %i.pe, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox4exec13TypeSignatureEEC2ERKS4_.exit

_ZNSt10shared_ptrIN8facebook5velox4exec13TypeSignatureEEC2ERKS4_.exit: ; preds = %bb.ag, %bb.ai, %bb.aj
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oz, i64 736
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !258, !nonnull !147, !align !148 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !124 ; 8 uses
  store <2 x ptr> %i.pd, ptr %i.pk, align 8, !tbaa !121
  %.not.i.i.i.i.i242 = icmp eq ptr %i.pm, null
  br i1 %.not.i.i.i.i.i242, label %.lr.ph.i.i1459, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox4exec13TypeSignatureEEC2ERKS4_.exit
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8 ; 4 uses
  %i.po = load atomic i64, ptr %i.pn acquire, align 8 ; 2 uses
  %i.pp = icmp eq i64 %i.po, 4294967297
  %i.pq = trunc i64 %i.po to i32                  ; 2 uses
  br i1 %i.pp, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.pn, align 8, !tbaa !129
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pm, i64 12
  store i32 0, ptr %i.pr, align 4, !tbaa !130
  %i.ps = load ptr, ptr %i.pm, align 8, !tbaa !100
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.pu = load ptr, ptr %i.pt, align 8
  call void %i.pu(ptr noundef nonnull align 8 dereferenceable(16) %i.pm) #25, !inline_history !209
  %i.pv = load ptr, ptr %i.pm, align 8, !tbaa !100
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  %i.px = load ptr, ptr %i.pw, align 8
  call void %i.px(ptr noundef nonnull align 8 dereferenceable(16) %i.pm) #25, !inline_history !209
  br label %.lr.ph.i.i1459

bb.am:                                            ; preds = %bb.ak
  %i.py = load i8, ptr @__libc_single_threaded, align 1, !tbaa !118
  %.not.i.i.i.i.i.i = icmp eq i8 %i.py, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.pz = add nsw i32 %i.pq, -1
  store i32 %i.pz, ptr %i.pn, align 8, !tbaa !131
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.qa = atomicrmw volatile add ptr %i.pn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.pq, %bb.an ], [ %i.qa, %bb.ao ]
  %i.qb = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.qb, label %bb.ap, label %.lr.ph.i.i1459, !prof !132

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pm) #25
  br label %.lr.ph.i.i1459

bb.aq:                                            ; preds = %bb.af
  %i.qc = load ptr, ptr %i.q, align 8, !tbaa !110
  %i.qd = getelementptr i8, ptr %i.od, i64 -32
  invoke void @_ZN8facebook5velox4exec19inferTypeWithSpacesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.qd, i1 noundef zeroext false)
          to label %bb.ar unwind label %.loopexit.split-lp1723

bb.ar:                                            ; preds = %bb.aq
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 736
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !258, !nonnull !147, !align !148 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qh = load <2 x ptr>, ptr %5, align 16, !tbaa !121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.qi = load ptr, ptr %i.qg, align 8, !tbaa !124 ; 8 uses
  store <2 x ptr> %i.qh, ptr %i.qf, align 8, !tbaa !121
  %.not.i.i.i.i.i244 = icmp eq ptr %i.qi, null
  br i1 %.not.i.i.i.i.i244, label %_ZN8facebook5velox4exec7Scanner16setTypeSignatureESt10shared_ptrINS1_13TypeSignatureEE.exit248, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8 ; 4 uses
  %i.qk = load atomic i64, ptr %i.qj acquire, align 8 ; 2 uses
  %i.ql = icmp eq i64 %i.qk, 4294967297
  %i.qm = trunc i64 %i.qk to i32                  ; 2 uses
  br i1 %i.ql, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.qj, align 8, !tbaa !129
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qi, i64 12
  store i32 0, ptr %i.qn, align 4, !tbaa !130
  %i.qo = load ptr, ptr %i.qi, align 8, !tbaa !100
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %i.qq = load ptr, ptr %i.qp, align 8
  call void %i.qq(ptr noundef nonnull align 8 dereferenceable(16) %i.qi) #25, !inline_history !209
  %i.qr = load ptr, ptr %i.qi, align 8, !tbaa !100
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.qt = load ptr, ptr %i.qs, align 8
  call void %i.qt(ptr noundef nonnull align 8 dereferenceable(16) %i.qi) #25, !inline_history !209
  br label %_ZN8facebook5velox4exec7Scanner16setTypeSignatureESt10shared_ptrINS1_13TypeSignatureEE.exit248

bb.au:                                            ; preds = %bb.as
  %i.qu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !118
  %.not.i.i.i.i.i.i245 = icmp eq i8 %i.qu, 0
  br i1 %.not.i.i.i.i.i.i245, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qv = add nsw i32 %i.qm, -1
  store i32 %i.qv, ptr %i.qj, align 8, !tbaa !131
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i246

bb.aw:                                            ; preds = %bb.au
  %i.qw = atomicrmw volatile add ptr %i.qj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i246

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i246: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i.i.i247 = phi i32 [ %i.qm, %bb.av ], [ %i.qw, %bb.aw ]
  %i.qx = icmp eq i32 %.0.i.i.i.i.i.i.i247, 1
  br i1 %i.qx, label %bb.ax, label %_ZN8facebook5velox4exec7Scanner16setTypeSignatureESt10shared_ptrINS1_13TypeSignatureEE.exit248, !prof !132

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i246
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qi) #25
  br label %_ZN8facebook5velox4exec7Scanner16setTypeSignatureESt10shared_ptrINS1_13TypeSignatureEE.exit248

_ZN8facebook5velox4exec7Scanner16setTypeSignatureESt10shared_ptrINS1_13TypeSignatureEE.exit248: ; preds = %bb.ar, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i246, %bb.ax
  %i.qy = load ptr, ptr %i.hs, align 8, !tbaa !124 ; 8 uses
  %.not.i.i249 = icmp eq ptr %i.qy, null
  br i1 %.not.i.i249, label %.lr.ph.i.i1459, label %bb.ay

bb.ay:                                            ; preds = %_ZN8facebook5velox4exec7Scanner16setTypeSignatureESt10shared_ptrINS1_13TypeSignatureEE.exit248
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8 ; 4 uses
  %i.ra = load atomic i64, ptr %i.qz acquire, align 8 ; 2 uses
  %i.rb = icmp eq i64 %i.ra, 4294967297
  %i.rc = trunc i64 %i.ra to i32                  ; 2 uses
  br i1 %i.rb, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.qz, align 8, !tbaa !129
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qy, i64 12
  store i32 0, ptr %i.rd, align 4, !tbaa !130
  %i.re = load ptr, ptr %i.qy, align 8, !tbaa !100
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rg = load ptr, ptr %i.rf, align 8
  call void %i.rg(ptr noundef nonnull align 8 dereferenceable(16) %i.qy) #25, !inline_history !210
  %i.rh = load ptr, ptr %i.qy, align 8, !tbaa !100
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 24
  %i.rj = load ptr, ptr %i.ri, align 8
  call void %i.rj(ptr noundef nonnull align 8 dereferenceable(16) %i.qy) #25, !inline_history !210
  br label %.lr.ph.i.i1459

bb.ba:                                            ; preds = %bb.ay
  %i.rk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !118
  %.not.i.i.i250 = icmp eq i8 %i.rk, 0
  br i1 %.not.i.i.i250, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.rl = add nsw i32 %i.rc, -1
  store i32 %i.rl, ptr %i.qz, align 8, !tbaa !131
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251

bb.bc:                                            ; preds = %bb.ba
  %i.rm = atomicrmw volatile add ptr %i.qz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i252 = phi i32 [ %i.rc, %bb.bb ], [ %i.rm, %bb.bc ]
  %i.rn = icmp eq i32 %.0.i.i.i.i252, 1
  br i1 %i.rn, label %bb.bd, label %.lr.ph.i.i1459, !prof !132

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qy) #25
  br label %.lr.ph.i.i1459

bb.be:                                            ; preds = %bb.af
  %i.ro = getelementptr i8, ptr %i.od, i64 -32
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !127
  store ptr %i.rp, ptr %i.r, align 16, !tbaa !127
  %i.rq = getelementptr i8, ptr %i.od, i64 -24
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !124 ; 4 uses
  %i.rs = load ptr, ptr %i.t, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i254 = icmp eq ptr %i.rr, %i.rs
  br i1 %.not.i.i.i254, label %.lr.ph.i.i1459, label %bb.bf

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec6Parser5parseEv:bb.a
  call void %i.cpy(ptr noundef nonnull align 8 dereferenceable(16) %i.cpq) #25, !inline_history !214
  %i.cpz = load ptr, ptr %i.cpq, align 8, !tbaa !100
  %i.cqa = getelementptr inbounds nuw i8, ptr %i.cpz, i64 24
  %i.cqb = load ptr, ptr %i.cqa, align 8
  call void %i.cqb(ptr noundef nonnull align 8 dereferenceable(16) %i.cpq) #25, !inline_history !214
  br label %_ZNSt12__shared_ptrIN8facebook5velox4exec13TypeSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1421

bb.tn:                                            ; preds = %bb.tl
  %i.cqc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !118
  %.not.i.i.i.i.i1413 = icmp eq i8 %i.cqc, 0
  br i1 %.not.i.i.i.i.i1413, label %bb.tp, label %bb.to

bb.to:                                            ; preds = %bb.tn
  %i.cqd = add nsw i32 %i.cpu, -1
  store i32 %i.cqd, ptr %i.cpr, align 8, !tbaa !131
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1414

bb.tp:                                            ; preds = %bb.tn
  %i.cqe = atomicrmw volatile add ptr %i.cpr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1414

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1414: ; preds = %bb.tp, %bb.to
  %.0.i.i.i.i.i.i1415 = phi i32 [ %i.cpu, %bb.to ], [ %i.cqe, %bb.tp ]
  %i.cqf = icmp eq i32 %.0.i.i.i.i.i.i1415, 1
  br i1 %i.cqf, label %bb.tq, label %_ZNSt12__shared_ptrIN8facebook5velox4exec13TypeSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1421, !prof !132

bb.tq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1414
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cpq) #25
  br label %_ZNSt12__shared_ptrIN8facebook5velox4exec13TypeSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1421

_ZNSt12__shared_ptrIN8facebook5velox4exec13TypeSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1421: ; preds = %bb.tq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i1414, %bb.tm, %_ZSt11make_sharedIN8facebook5velox4exec13TypeSignatureEJS3_EESt10shared_ptrIT_EDpOT0_.exit1411
  %i.cqg = load i8, ptr %i.af, align 8, !tbaa !151, !range !161, !noundef !147
  %i.cqh = trunc nuw i8 %i.cqg to i1
  br i1 %i.cqh, label %bb.tr, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i1422

bb.tr:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox4exec13TypeSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1421
  store i8 0, ptr %i.af, align 8, !tbaa !151
  %i.cqi = load ptr, ptr %i.ae, align 8, !tbaa !138 ; 2 uses
  %i.cqj = icmp eq ptr %i.cqi, %i.ag
  br i1 %i.cqj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i1422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1434

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1434: ; preds = %bb.tr
  %i.cqk = load i64, ptr %i.ag, align 8, !tbaa !118
  %i.cql = add i64 %i.cqk, 1
  call void @_ZdlPvm(ptr noundef %i.cqi, i64 noundef %i.cql) #27, !inline_history !260
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i1422

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i1422: ; preds = %bb.tr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1434, %_ZNSt12__shared_ptrIN8facebook5velox4exec13TypeSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit1421
  %i.cqm = load ptr, ptr %i.z, align 8, !tbaa !162 ; 3 uses
  %i.cqn = load ptr, ptr %i.aa, align 8, !tbaa !163 ; 2 uses
  %.not.i1.i.i1423 = icmp eq ptr %i.cqm, %i.cqn
  br i1 %.not.i1.i.i1423, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i.i1429, label %.lr.ph.i.i1424

.lr.ph.i.i1424:                                   ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i1422, %.lr.ph.i.i1424
  %.0.i2.i.i1425 = phi ptr [ %i.cqo, %.lr.ph.i.i1424 ], [ %i.cqm, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i1422 ] ; 2 uses
  call void @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %.0.i2.i.i1425), !inline_history !215
  %i.cqo = getelementptr inbounds nuw i8, ptr %.0.i2.i.i1425, i64 104 ; 2 uses
  %.not.i.i.i1426 = icmp eq ptr %i.cqo, %i.cqn
  br i1 %.not.i.i.i1426, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.loopexit.i.i1427, label %.lr.ph.i.i1424, !llvm.loop !3

_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.loopexit.i.i1427: ; preds = %.lr.ph.i.i1424
  %.pre.i.i1428 = load ptr, ptr %i.z, align 8, !tbaa !162
  br label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i.i1429

_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i.i1429: ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.loopexit.i.i1427, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i1422
  %i.cqp = phi ptr [ %.pre.i.i1428, %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.loopexit.i.i1427 ], [ %i.cqm, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i1422 ] ; 3 uses
  %.not.i.i.i.i1430 = icmp eq ptr %i.cqp, null
  br i1 %.not.i.i.i.i1430, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i1431, label %bb.ts

bb.ts:                                            ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i.i1429
  %i.cqq = load ptr, ptr %i.ac, align 8, !tbaa !142
  %i.cqr = ptrtoint ptr %i.cqq to i64
  %i.cqs = ptrtoint ptr %i.cqp to i64
  %i.cqt = sub i64 %i.cqr, %i.cqs
  call void @_ZdlPvm(ptr noundef nonnull %i.cqp, i64 noundef %i.cqt) #27, !inline_history !261
  br label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i1431

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i1431: ; preds = %bb.ts, %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i.i1429
  %i.cqu = load ptr, ptr %61, align 8, !tbaa !138 ; 2 uses
  %i.cqv = icmp eq ptr %i.cqu, %i.x
  br i1 %i.cqv, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1432: ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i1431
  %i.cqw = load i64, ptr %i.x, align 8, !tbaa !118
  %i.cqx = add i64 %i.cqw, 1
  call void @_ZdlPvm(ptr noundef %i.cqu, i64 noundef %i.cqx) #27, !inline_history !260
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1439

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1439: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1432, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i1431
  %i.cqy = load ptr, ptr %63, align 16, !tbaa !162 ; 3 uses
  %i.cqz = load ptr, ptr %i.ab, align 8, !tbaa !163 ; 2 uses
  %.not.i1.i1440 = icmp eq ptr %i.cqy, %i.cqz
  br i1 %.not.i1.i1440, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i1446, label %.lr.ph.i1441

.lr.ph.i1441:                                     ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1439, %.lr.ph.i1441
  %.0.i2.i1442 = phi ptr [ %i.cra, %.lr.ph.i1441 ], [ %i.cqy, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1439 ] ; 2 uses
  call void @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %.0.i2.i1442), !inline_history !4
  %i.cra = getelementptr inbounds nuw i8, ptr %.0.i2.i1442, i64 104 ; 2 uses
  %.not.i.i1443 = icmp eq ptr %i.cra, %i.cqz
  br i1 %.not.i.i1443, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.loopexit.i1444, label %.lr.ph.i1441, !llvm.loop !3

_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.loopexit.i1444: ; preds = %.lr.ph.i1441
  %.pre.i1445 = load ptr, ptr %63, align 16, !tbaa !162
  br label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i1446

_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i1446: ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.loopexit.i1444, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1439
  %i.crb = phi ptr [ %.pre.i1445, %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.loopexit.i1444 ], [ %i.cqy, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1439 ] ; 3 uses
  %.not.i.i.i1447 = icmp eq ptr %i.crb, null
  br i1 %.not.i.i.i1447, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit1449, label %bb.tt

bb.tt:                                            ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i1446
  %i.crc = load ptr, ptr %i.ad, align 16, !tbaa !142
  %i.crd = ptrtoint ptr %i.crc to i64
  %i.cre = ptrtoint ptr %i.crb to i64
  %i.crf = sub i64 %i.crd, %i.cre
  call void @_ZdlPvm(ptr noundef nonnull %i.crb, i64 noundef %i.crf) #27, !inline_history !164
  br label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit1449

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit1449: ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i1446, %bb.tt
  %i.crg = load ptr, ptr %62, align 8, !tbaa !138 ; 2 uses
  %i.crh = icmp eq ptr %i.crg, %i.u
  br i1 %i.crh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1452, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1450

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1450: ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit1449
  %i.cri = load i64, ptr %i.u, align 8, !tbaa !118
  %i.crj = add i64 %i.cri, 1
  call void @_ZdlPvm(ptr noundef %i.crg, i64 noundef %i.crj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1452

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1452: ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit1449, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1450
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #25
  br label %.lr.ph.i.i1459

bb.tu:                                            ; preds = %._crit_edge.i.i1394
  %i.crk = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox4exec6Parser12syntax_errorE
          catch ptr null
  br label %bb.tw

bb.tv:                                            ; preds = %_ZN8facebook5velox4exec13TypeSignatureC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS2_SaIS2_EESt8optionalIS8_Eb.exit1406
  %i.crl = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox4exec6Parser12syntax_errorE
          catch ptr null
  br label %.body1409

.body1409:                                        ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec13TypeSignatureESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i1407, %bb.tv
  %eh.lpad-body1410 = phi { ptr, i32 } [ %i.crl, %bb.tv ], [ %i.cpp, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec13TypeSignatureESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i1407 ]
  call void @_ZN8facebook5velox4exec13TypeSignatureD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %61) #25
  call void @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %63) #25
  br label %bb.tw

bb.tw:                                            ; preds = %.body1409, %bb.tu
  %.pn176 = phi { ptr, i32 } [ %eh.lpad-body1410, %.body1409 ], [ %i.crk, %bb.tu ]
  %i.crm = load ptr, ptr %62, align 8, !tbaa !138 ; 2 uses
  %i.crn = icmp eq ptr %i.crm, %i.u
  br i1 %i.crn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1456

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1456: ; preds = %bb.tw
  %i.cro = load i64, ptr %i.u, align 8, !tbaa !118
  %i.crp = add i64 %i.cro, 1
  call void @_ZdlPvm(ptr noundef %i.crm, i64 noundef %i.crp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1458

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1458: ; preds = %bb.tw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1456
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #25
  br label %bb.tx

bb.tx:                                            ; preds = %.loopexit.split-lp1723, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1458, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1393, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1208, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1033, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit943, %.body834, %bb.mm, %.body779, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit727, %bb.hy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276
  %.pn233 = phi { ptr, i32 } [ %.pn176, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1458 ], [ %.pn231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276 ], [ %.pn229, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340 ], [ %.pn225.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462 ], [ %.pn221.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534 ], [ %i.apt, %bb.hy ], [ %.pn216.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit727 ], [ %.pn214, %.body779 ], [ %.pn179.pn.pn.pn.pn1680, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1393 ], [ %.pn212, %bb.mm ], [ %.pn210, %.body834 ], [ %.pn206.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit943 ], [ %.pn201.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1033 ], [ %.pn197.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1118 ], [ %.pn191.pn.pn.pn1664, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1208 ], [ %.pn186.pn.pn1670, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1298 ], [ %lpad.loopexit.split-lp1725, %.loopexit.split-lp1723 ] ; 2 uses
  %.43 = extractvalue { ptr, i32 } %.pn233, 0     ; 2 uses
  %.42163 = extractvalue { ptr, i32 } %.pn233, 1
  %i.crq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox4exec6Parser12syntax_errorE) #25
  %i.crr = icmp eq i32 %.42163, %i.crq
  br i1 %i.crr, label %bb.ty, label %.loopexit1721

bb.ty:                                            ; preds = %bb.tx
  %i.crs = call ptr @__cxa_begin_catch(ptr %.43) #25
  invoke void @_ZN8facebook5velox4exec6Parser5errorERKNS2_12syntax_errorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.crs)
          to label %bb.tz unwind label %bb.ua

bb.tz:                                            ; preds = %bb.ty
  invoke void @__cxa_end_catch()
          to label %.lr.ph.i.i1471 unwind label %bb.ub

bb.ua:                                            ; preds = %bb.ty
  %i.crt = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.uc unwind label %bb.vd

bb.ub:                                            ; preds = %bb.tz
  %i.cru = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.uc

bb.uc:                                            ; preds = %bb.ua, %bb.ub
  %.pn235 = phi { ptr, i32 } [ %i.cru, %bb.ub ], [ %i.crt, %bb.ua ]
  %.44 = extractvalue { ptr, i32 } %.pn235, 0
  br label %.loopexit1721

_ZNSt12__shared_ptrIN8facebook5velox4exec13TypeSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ig, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit860
  %.not1699 = icmp eq i32 %.093, 0
  br i1 %.not1699, label %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit, label %.lr.ph.i.i1459.fold.split

.lr.ph.i.i1459.fold.split:                        ; preds = %bb.af, %_ZNSt12__shared_ptrIN8facebook5velox4exec13TypeSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br label %.lr.ph.i.i1459

.lr.ph.i.i1459:                                   ; preds = %bb.af, %.lr.ph.i.i1459.fold.split, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1452, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1387, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1027, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit937, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit827, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit800, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709, %_ZNSt12__shared_ptrIN8facebook5velox4exec13TypeSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit544, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.al, %_ZNSt10shared_ptrIN8facebook5velox4exec13TypeSignatureEEC2ERKS4_.exit, %_ZN8facebook5velox4exec7Scanner16setTypeSignatureESt10shared_ptrINS1_13TypeSignatureEE.exit248, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251, %bb.bd, %bb.be, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.cx, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i349, %bb.di, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i360, %bb.dt, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i371, %bb.ee, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i382, %bb.ep, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i393, %bb.it, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i566, %.noexc729, %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.kn, %bb.ko, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i745, %bb.kz, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i756, %.noexc760, %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i.i.i771, %bb.lp
  %.21123628 = phi i32 [ %.01102489, %_ZNSt10shared_ptrIN8facebook5velox4exec13TypeSignatureEEC2ERKS4_.exit ], [ %.01102489, %bb.lp ], [ %.01102489, %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i.i.i771 ], [ 0, %bb.af ], [ %.01102489, %bb.kz ], [ %.01102489, %bb.ko ], [ %.01102489, %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i.i.i ], [ %.01102489, %.invoke ], [ %.01102489, %bb.it ], [ %.01102489, %bb.ep ], [ %.01102489, %bb.ee ], [ %.01102489, %bb.dt ], [ %.01102489, %bb.di ], [ %.01102489, %bb.cx ], [ %.01102489, %bb.be ], [ %.01102489, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251 ], [ %.01102489, %bb.az ], [ %.01102489, %_ZN8facebook5velox4exec7Scanner16setTypeSignatureESt10shared_ptrINS1_13TypeSignatureEE.exit248 ], [ %.01102489, %bb.al ], [ %.01102489, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i ], [ %.01102489, %bb.ap ], [ %.01102489, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1387 ], [ %.01102489, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292 ], [ %.01102489, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1202 ], [ %.01102489, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1112 ], [ %.01102489, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1027 ], [ %.01102489, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit937 ], [ %.01102489, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit827 ], [ %.01102489, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit800 ], [ %.01102489, %.noexc760 ], [ %.01102489, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i756 ], [ %.01102489, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i745 ], [ %.01102489, %bb.kn ], [ %.01102489, %.noexc729 ], [ %.01102489, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i566 ], [ %.01102489, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709 ], [ %.01102489, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i393 ], [ %.01102489, %_ZNSt12__shared_ptrIN8facebook5velox4exec13TypeSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit544 ], [ %.01102489, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit528 ], [ %.01102489, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456 ], [ %.01102489, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i382 ], [ %.01102489, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i371 ], [ %.01102489, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i360 ], [ %.01102489, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i349 ], [ %.01102489, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ %.01102489, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334 ], [ %.01102489, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.01102489, %bb.bd ], [ %.01102489, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1452 ], [ %.01102489, %.lr.ph.i.i1459.fold.split ]
  %i.crv = zext nneg i32 %i.nv to i64
  br label %bb.ud

bb.ud:                                            ; preds = %bb.ud, %.lr.ph.i.i1459
  %.02.i.i = phi i64 [ %i.crv, %.lr.ph.i.i1459 ], [ %i.cry, %bb.ud ] ; 2 uses
  %i.crw = load ptr, ptr %i.e, align 8, !tbaa !112
  %i.crx = getelementptr inbounds i8, ptr %i.crw, i64 -48 ; 2 uses
  store ptr %i.crx, ptr %i.e, align 8, !tbaa !112
  call void @_ZN8facebook5velox4exec6Parser12basic_symbolINS2_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(48) %i.crx) #25
  %i.cry = add nsw i64 %.02.i.i, -1
  %i.crz = icmp samesign ugt i64 %.02.i.i, 1
  br i1 %i.crz, label %bb.ud, label %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit, !llvm.loop !2

_ZN8facebook5velox4exec6Parser6yypop_Ei.exit:     ; preds = %bb.ud, %bb.af, %_ZNSt12__shared_ptrIN8facebook5velox4exec13TypeSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.21123629 = phi i32 [ %.01102489, %_ZNSt12__shared_ptrIN8facebook5velox4exec13TypeSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.01102489, %bb.af ], [ %.21123628, %bb.ud ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN8facebook5velox4exec6Parser17stack_symbol_typeC1Ev(ptr noundef nonnull align 16 dereferenceable(48) %2)
          to label %.noexc1461 unwind label %bb.aa

.noexc1461:                                       ; preds = %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit
  %i.csa = load ptr, ptr %i.e, align 8, !tbaa !112 ; 3 uses
  %i.csb = load ptr, ptr %i.ht, align 8, !tbaa !114
  %.not.i.i.i.i1460 = icmp eq ptr %i.csa, %i.csb
  br i1 %.not.i.i.i.i1460, label %bb.uf, label %bb.ue

bb.ue:                                            ; preds = %.noexc1461
  invoke void @_ZN8facebook5velox4exec6Parser17stack_symbol_typeC1EOS3_(ptr noundef nonnull align 16 dereferenceable(48) %i.csa, ptr noundef nonnull align 16 dereferenceable(48) %2)
          to label %.noexc.i.i unwind label %bb.ug

.noexc.i.i:                                       ; preds = %bb.ue
  %i.csc = load ptr, ptr %i.e, align 8, !tbaa !112
  %i.csd = getelementptr inbounds nuw i8, ptr %i.csc, i64 48
  store ptr %i.csd, ptr %i.e, align 8, !tbaa !112
  br label %_ZN8facebook5velox4exec6Parser5stackINS2_17stack_symbol_typeESt6vectorIS4_SaIS4_EEE4pushEOS4_.exit.i

bb.uf:                                            ; preds = %.noexc1461
  invoke void @_ZNSt6vectorIN8facebook5velox4exec6Parser17stack_symbol_typeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.csa, ptr noundef nonnull align 16 dereferenceable(48) %2)
          to label %_ZN8facebook5velox4exec6Parser5stackINS2_17stack_symbol_typeESt6vectorIS4_SaIS4_EEE4pushEOS4_.exit.i unwind label %bb.ug

bb.ug:                                            ; preds = %bb.uf, %bb.ue
  %i.cse = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN8facebook5velox4exec6Parser12basic_symbolINS2_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(48) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body1462

_ZN8facebook5velox4exec6Parser5stackINS2_17stack_symbol_typeESt6vectorIS4_SaIS4_EEE4pushEOS4_.exit.i: ; preds = %bb.uf, %.noexc.i.i
  call void @_ZN8facebook5velox4exec6Parser12basic_symbolINS2_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(48) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.csf = load ptr, ptr %i.e, align 8, !tbaa !112
  %i.csg = load ptr, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  %i.csh = ptrtoint ptr %i.csf to i64
  %i.csi = ptrtoint ptr %i.csg to i64
  %i.csj = sub i64 %i.csh, %i.csi
  %i.csk = getelementptr i8, ptr %i.csg, i64 %i.csj
  %i.csl = getelementptr i8, ptr %i.csk, i64 -48
  invoke void @_ZN8facebook5velox4exec6Parser12basic_symbolINS2_8by_stateEE4moveERS5_(ptr noundef nonnull align 16 dereferenceable(48) %i.csl, ptr noundef nonnull align 16 dereferenceable(48) %4)
          to label %_ZN8facebook5velox4exec6Parser7yypush_EPKcONS2_17stack_symbol_typeE.exit unwind label %bb.aa

_ZN8facebook5velox4exec6Parser7yypush_EPKcONS2_17stack_symbol_typeE.exit: ; preds = %_ZN8facebook5velox4exec6Parser5stackINS2_17stack_symbol_typeESt6vectorIS4_SaIS4_EEE4pushEOS4_.exit.i
  call void @_ZN8facebook5velox4exec6Parser12basic_symbolINS2_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(48) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.backedge

.loopexit1721:                                    ; preds = %bb.tx, %bb.uc, %.body1462
  %.45 = phi ptr [ %i.oy, %.body1462 ], [ %.44, %bb.uc ], [ %.43, %bb.tx ]
  call void @_ZN8facebook5velox4exec6Parser12basic_symbolINS2_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(48) %4) #25
  br label %bb.uh

bb.uh:                                            ; preds = %.loopexit1721, %bb.z
  %.46 = phi ptr [ %.45, %.loopexit1721 ], [ %i.ow, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.loopexit1715

bb.ui:                                            ; preds = %bb.t
  switch i32 %.01102489, label %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1473 [
    i32 0, label %bb.uj
    i32 3, label %bb.ur
  ]

bb.uj:                                            ; preds = %bb.ui
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #25
  invoke void @_ZN8facebook5velox4exec6Parser7contextC1ERKS2_RKNS2_11symbol_typeE(ptr noundef nonnull align 8 dereferenceable(16) %64, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 16 dereferenceable(48) %3)
          to label %bb.uk unwind label %bb.un

bb.uk:                                            ; preds = %bb.uj
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #25
  %i.csm = load ptr, ptr %0, align 8, !tbaa !100
  %i.csn = getelementptr inbounds nuw i8, ptr %i.csm, i64 32
  %i.cso = load ptr, ptr %i.csn, align 8
  invoke void %i.cso(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %65, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %64)
          to label %bb.ul unwind label %bb.uo

bb.ul:                                            ; preds = %bb.uk
  %i.csp = load ptr, ptr %0, align 8, !tbaa !100
  %i.csq = getelementptr inbounds nuw i8, ptr %i.csp, i64 24
  %i.csr = load ptr, ptr %i.csq, align 8
  invoke void %i.csr(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %65)
          to label %bb.um unwind label %bb.up

bb.um:                                            ; preds = %bb.ul
  %i.css = load ptr, ptr %65, align 8, !tbaa !138 ; 2 uses
  %i.cst = icmp eq ptr %i.css, %i.hu
  br i1 %i.cst, label %.thread1690, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1465

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1465: ; preds = %bb.um
  %i.csu = load i64, ptr %i.hu, align 8, !tbaa !118
  %i.csv = add i64 %i.csu, 1
  call void @_ZdlPvm(ptr noundef %i.css, i64 noundef %i.csv) #27
  br label %.thread1690

.thread1690:                                      ; preds = %bb.um, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1465
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #25
  br label %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1473

bb.un:                                            ; preds = %bb.uj
  %i.csw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.uq

bb.uo:                                            ; preds = %bb.uk
  %i.csx = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1470

bb.up:                                            ; preds = %bb.ul
  %i.csy = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.csz = load ptr, ptr %65, align 8, !tbaa !138 ; 2 uses
  %i.cta = icmp eq ptr %i.csz, %i.hu
  br i1 %i.cta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1470, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1468

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1468: ; preds = %bb.up
  %i.ctb = load i64, ptr %i.hu, align 8, !tbaa !118
  %i.ctc = add i64 %i.ctb, 1
  call void @_ZdlPvm(ptr noundef %i.csz, i64 noundef %i.ctc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1470

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1470: ; preds = %bb.up, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1468, %bb.uo
  %.pn236 = phi { ptr, i32 } [ %i.csx, %bb.uo ], [ %i.csy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1468 ], [ %i.csy, %bb.up ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #25
  br label %bb.uq

bb.uq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1470, %bb.un
  %.pn236.pn = phi { ptr, i32 } [ %.pn236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1470 ], [ %i.csw, %bb.un ]
  %.48 = extractvalue { ptr, i32 } %.pn236.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #25
  br label %.loopexit1715

bb.ur:                                            ; preds = %bb.ui
  %i.ctd = load i32, ptr %3, align 16, !tbaa !117
  switch i32 %i.ctd, label %bb.us [
    i32 0, label %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1487
    i32 -2, label %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1473
  ]

bb.us:                                            ; preds = %bb.ur
  call void @_ZN8facebook5velox4exec6Parser12basic_symbolINS2_7by_kindEE5clearEv(ptr noundef nonnull align 16 dereferenceable(48) %3) #25
  br label %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1473

.lr.ph.i.i1471:                                   ; preds = %bb.tz
  call void @_ZN8facebook5velox4exec6Parser12basic_symbolINS2_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(48) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cte = zext nneg i32 %i.nv to i64
  br label %bb.ut

bb.ut:                                            ; preds = %bb.ut, %.lr.ph.i.i1471
  %.02.i.i1472 = phi i64 [ %i.cte, %.lr.ph.i.i1471 ], [ %i.cth, %bb.ut ] ; 2 uses
  %i.ctf = load ptr, ptr %i.e, align 8, !tbaa !112
  %i.ctg = getelementptr inbounds i8, ptr %i.ctf, i64 -48 ; 2 uses
  store ptr %i.ctg, ptr %i.e, align 8, !tbaa !112
  call void @_ZN8facebook5velox4exec6Parser12basic_symbolINS2_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(48) %i.ctg) #25
  %i.cth = add nsw i64 %.02.i.i1472, -1
  %i.cti = icmp samesign ugt i64 %.02.i.i1472, 1
  br i1 %i.cti, label %bb.ut, label %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1473, !llvm.loop !2

_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1473: ; preds = %bb.ut, %bb.ur, %bb.ui, %.thread1690, %bb.i, %bb.us, %bb.n
  %i.ctj = load ptr, ptr %i.e, align 8, !tbaa !112 ; 2 uses
  %i.ctk = load ptr, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  %i.ctl = ptrtoint ptr %i.ctj to i64
  %i.ctm = ptrtoint ptr %i.ctk to i64
  %i.ctn = sub i64 %i.ctl, %i.ctm                 ; 2 uses
  %i.cto = getelementptr i8, ptr %i.ctk, i64 %i.ctn
  %i.ctp = getelementptr i8, ptr %i.cto, i64 -48
  %i.ctq = load i8, ptr %i.ctp, align 16, !tbaa !120 ; 2 uses
  %i.ctr = sext i8 %i.ctq to i64
  %i.cts = getelementptr inbounds i8, ptr @_ZN8facebook5velox4exec6Parser7yypact_E, i64 %i.ctr
  %i.ctt = load i8, ptr %i.cts, align 1, !tbaa !118
  %i.ctu = icmp sgt i8 %i.ctt, -2
  %i.ctv = icmp eq i8 %i.ctq, 0
  %or.cond25454181 = and i1 %i.ctu, %i.ctv
  br i1 %or.cond25454181, label %._crit_edge4183, label %.lr.ph4182

._crit_edge4183:                                  ; preds = %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1476, %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1473
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #25
  invoke void @_ZN8facebook5velox4exec6Parser17stack_symbol_typeC1Ev(ptr noundef nonnull align 16 dereferenceable(48) %66)
          to label %bb.uu unwind label %bb.uy

.lr.ph4182:                                       ; preds = %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1473, %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1476
  %i.ctw = phi i64 [ %i.cue, %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1476 ], [ %i.ctn, %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1473 ]
  %i.ctx = phi ptr [ %i.cua, %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1476 ], [ %i.ctj, %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1473 ]
  %i.cty = icmp eq i64 %i.ctw, 48
  br i1 %i.cty, label %._crit_edge2542, label %_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1476

_ZN8facebook5velox4exec6Parser6yypop_Ei.exit1476: ; preds = %.lr.ph4182
  %i.ctz = getelementptr inbounds i8, ptr %i.ctx, i64 -48 ; 2 uses
  store ptr %i.ctz, ptr %i.e, align 8, !tbaa !112
  call void @_ZN8facebook5velox4exec6Parser12basic_symbolINS2_8by_stateEE5clearEv(ptr noundef nonnull align 16 dereferenceable(48) %i.ctz) #25
  %i.cua = load ptr, ptr %i.e, align 8, !tbaa !112 ; 2 uses
  %i.cub = load ptr, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  %i.cuc = ptrtoint ptr %i.cua to i64
  %i.cud = ptrtoint ptr %i.cub to i64
  %i.cue = sub i64 %i.cuc, %i.cud                 ; 2 uses
  %i.cuf = getelementptr i8, ptr %i.cub, i64 %i.cue
end_hunk_1
