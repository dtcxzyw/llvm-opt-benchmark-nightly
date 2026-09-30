Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/nlpsol?download=true
inline.NumInlined: 6546
inline.NumDeleted: 1461
loop-unroll.NumCompletelyUnrolled: 66
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN6casadi27casadi_detect_bounds_beforeIdEEiPNS_18casadi_nlpsol_dataIT_EE:bb.a
  %i.gg = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gi = fsub <2 x double> %i.gf, %i.gh
  %i.gj = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = fdiv <2 x double> %i.gi, %i.gk          ; 2 uses
  %i.gm = fcmp olt double %i.ga, 0.000000e+00     ; 2 uses
  %i.gn = extractelement <2 x double> %i.gl, i64 0 ; 2 uses
  %i.go = extractelement <2 x double> %i.gl, i64 1 ; 2 uses
  %.0174 = select i1 %i.gm, double %i.go, double %i.gn
  %.0173 = select i1 %i.gm, double %i.gn, double %i.go
  %i.gp = load ptr, ptr %i.dx, align 8, !tbaa !281
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %.0176223
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !69 ; 9 uses
  %i.gs = load ptr, ptr %i.d, align 8, !tbaa !256
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.gr
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !119 ; 2 uses
  %i.gv = fadd double %.0174, %i.gu               ; 3 uses
  %i.gw = fadd double %.0173, %i.gu               ; 3 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.gr ; 2 uses
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !119 ; 2 uses
  %i.gz = fcmp oeq double %i.gv, %i.gy
  br i1 %i.gz, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ha = load ptr, ptr %i.dz, align 8, !tbaa !264 ; 2 uses
  %.not205 = icmp eq ptr %i.ha, null
  br i1 %.not205, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.0175224
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !119 ; 2 uses
  %i.hd = fcmp olt double %i.hc, 0.000000e+00
  %i.he = uitofp i1 %i.hd to double
  %i.hf = load ptr, ptr %i.ea, align 8, !tbaa !715
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.hf, i64 %i.gr ; 2 uses
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !119
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.he, double %i.hc, double %i.hh)
  store double %i.hi, ptr %i.hg, align 8, !tbaa !119
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.hj = fcmp ogt double %i.gv, %i.gy
  br i1 %i.hj, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  store double %i.gv, ptr %i.gx, align 8, !tbaa !119
  %i.hk = add nsw i64 %.0175224, %i.c
  %i.hl = load ptr, ptr %i.dy, align 8, !tbaa !277
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.gr
  store i64 %i.hk, ptr %i.hm, align 8, !tbaa !69
  %i.hn = load ptr, ptr %i.dz, align 8, !tbaa !264 ; 2 uses
  %.not204 = icmp eq ptr %i.hn, null
  br i1 %.not204, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.0175224
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !119 ; 2 uses
  %i.hq = fcmp olt double %i.hp, 0.000000e+00
  %i.hr = uitofp i1 %i.hq to double
  %i.hs = fmul double %i.hp, %i.hr
  %i.ht = load ptr, ptr %i.ea, align 8, !tbaa !715
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.gr
  store double %i.hs, ptr %i.hu, align 8, !tbaa !119
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k, %bb.h, %bb.i
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.gr ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !119 ; 2 uses
  %i.hx = fcmp oeq double %i.gw, %i.hw
  br i1 %i.hx, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.hy = load ptr, ptr %i.dz, align 8, !tbaa !264 ; 2 uses
  %.not207 = icmp eq ptr %i.hy, null
  br i1 %.not207, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %.0175224
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !119 ; 2 uses
  %i.ib = fcmp ogt double %i.ia, 0.000000e+00
  %i.ic = uitofp i1 %i.ib to double
  %i.id = load ptr, ptr %i.ec, align 8, !tbaa !714
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.id, i64 %i.gr ; 2 uses
  %i.if = load double, ptr %i.ie, align 8, !tbaa !119
  %i.ig = tail call double @llvm.fmuladd.f64(double %i.ic, double %i.ia, double %i.if)
  store double %i.ig, ptr %i.ie, align 8, !tbaa !119
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.ih = fcmp olt double %i.gw, %i.hw
  br i1 %i.ih, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store double %i.gw, ptr %i.hv, align 8, !tbaa !119
  %i.ii = add nsw i64 %.0175224, %i.c
  %i.ij = load ptr, ptr %i.eb, align 8, !tbaa !278
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.gr
  store i64 %i.ii, ptr %i.ik, align 8, !tbaa !69
  %i.il = load ptr, ptr %i.dz, align 8, !tbaa !264 ; 2 uses
  %.not206 = icmp eq ptr %i.il, null
  br i1 %.not206, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.0175224
  %i.in = load double, ptr %i.im, align 8, !tbaa !119 ; 2 uses
  %i.io = fcmp ogt double %i.in, 0.000000e+00
  %i.ip = uitofp i1 %i.io to double
  %i.iq = fmul double %i.in, %i.ip
  %i.ir = load ptr, ptr %i.ec, align 8, !tbaa !714
  %i.is = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %i.gr
  store double %i.iq, ptr %i.is, align 8, !tbaa !119
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q, %bb.n, %bb.o
  %i.it = add nsw i64 %.0176223, 1
  %.pre = load i64, ptr %i.dq, align 8, !tbaa !279
  br label %bb.v

bb.t:                                             ; preds = %bb.f
  %i.iu = getelementptr inbounds nuw i8, ptr %.0184220, i64 8 ; 2 uses
  store double %i.fu, ptr %.0184220, align 8, !tbaa !119
  %i.iv = load ptr, ptr %i.dw, align 8, !tbaa !246
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.0175224
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !119
  %i.iy = getelementptr inbounds nuw i8, ptr %.0182221, i64 8 ; 2 uses
  store double %i.ix, ptr %.0182221, align 8, !tbaa !119
  %i.iz = load ptr, ptr %i.dz, align 8, !tbaa !264 ; 2 uses
  %.not203 = icmp eq ptr %i.iz, null
  br i1 %.not203, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %.0175224
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !119
  %i.jc = getelementptr inbounds nuw i8, ptr %.0180222, i64 8
  store double %i.jb, ptr %.0180222, align 8, !tbaa !119
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u, %bb.t
  %i.jd = phi i64 [ %.pre, %bb.s ], [ %i.fq, %bb.u ], [ %i.fq, %bb.t ] ; 2 uses
  %.1185 = phi ptr [ %.0184220, %bb.s ], [ %i.iu, %bb.u ], [ %i.iu, %bb.t ]
  %.1183 = phi ptr [ %.0182221, %bb.s ], [ %i.iy, %bb.u ], [ %i.iy, %bb.t ]
  %.1181 = phi ptr [ %.0180222, %bb.s ], [ %i.jc, %bb.u ], [ %.0180222, %bb.t ]
  %.1177 = phi i64 [ %i.it, %bb.s ], [ %.0176223, %bb.u ], [ %.0176223, %bb.t ]
  %i.je = add nuw nsw i64 %.0175224, 1            ; 2 uses
  %i.jf = icmp slt i64 %i.je, %i.jd
  br i1 %i.jf, label %bb.f, label %.preheader, !llvm.loop !704

scalar.ph255:                                     ; preds = %scalar.ph255.prol.loopexit, %scalar.ph255
  %.0227 = phi i64 [ %i.kh, %scalar.ph255 ], [ %.0227.unr, %scalar.ph255.prol.loopexit ] ; 7 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.0227
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !119
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.0227
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !119
  %i.jk = fadd double %i.jh, %i.jj
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.0227
  store double %i.jk, ptr %i.jl, align 8, !tbaa !119
  %i.jm = add nuw nsw i64 %.0227, 1               ; 3 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.jm
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !119
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.jm
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !119
  %i.jr = fadd double %i.jo, %i.jq
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.jm
  store double %i.jr, ptr %i.js, align 8, !tbaa !119
  %i.jt = add nuw nsw i64 %.0227, 2               ; 3 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.jt
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !119
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.jt
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !119
  %i.jy = fadd double %i.jv, %i.jx
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.jt
  store double %i.jy, ptr %i.jz, align 8, !tbaa !119
  %i.ka = add nuw nsw i64 %.0227, 3               ; 3 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ka
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !119
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.ka
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !119
  %i.kf = fadd double %i.kc, %i.ke
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.ka
  store double %i.kf, ptr %i.kg, align 8, !tbaa !119
  %i.kh = add nuw nsw i64 %.0227, 4               ; 2 uses
  %exitcond233.not.3 = icmp eq i64 %i.kh, %i.c
  br i1 %exitcond233.not.3, label %.critedge, label %scalar.ph255, !llvm.loop !705

.critedge:                                        ; preds = %bb.d, %bb.c, %scalar.ph255.prol.loopexit, %scalar.ph255, %middle.block265, %.preheader
  %.4 = phi i32 [ 0, %.preheader ], [ 0, %middle.block265 ], [ 0, %scalar.ph255.prol.loopexit ], [ 0, %scalar.ph255 ], [ 1, %bb.c ], [ 1, %bb.d ]
  ret i32 %.4
}

declare void @_ZNK6casadi14OracleFunction12join_resultsEPNS_12OracleMemoryE(ptr noundef nonnull align 8 dereferenceable(1529), ptr noundef) local_unnamed_addr #7

declare noundef i32 @_ZNK6casadi14OracleFunction13calc_functionEPNS_12OracleMemoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKPKdi(ptr noundef nonnull align 8 dereferenceable(1529), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6casadi26casadi_detect_bounds_afterIdEEiPNS_18casadi_nlpsol_dataIT_EE(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !255    ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !209  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !272  ; 4 uses
  %.not.i = icmp ne ptr %i.d, null                ; 3 uses
  %i.e = icmp sgt i64 %i.b, 0                     ; 2 uses
  %or.cond.i = and i1 %i.e, %.not.i
  br i1 %or.cond.i, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.f = shl nuw i64 %i.b, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.d, i8 0, i64 %i.f, i1 false), !tbaa !119
  br label %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit

_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit:         ; preds = %.lr.ph.i.preheader, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !273
  %.fr = freeze ptr %i.h                          ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !279  ; 7 uses
  %.not.i121 = icmp ne ptr %.fr, null             ; 5 uses
  %i.k = icmp sgt i64 %i.j, 0                     ; 3 uses
  %or.cond.i122 = and i1 %.not.i121, %i.k
  br i1 %or.cond.i122, label %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit127.thread, label %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit127

_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit127.thread: ; preds = %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit
  %i.l = shl nuw i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.fr, i8 0, i64 %i.l, i1 false), !tbaa !119
  br label %.lr.ph

_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit127:      ; preds = %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit
  br i1 %i.k, label %.lr.ph, label %.preheader130

.lr.ph:                                           ; preds = %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit127.thread, %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit127
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !280
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

.preheader130:                                    ; preds = %bb.l, %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit127
  br i1 %i.e, label %.lr.ph136, label %.preheader

.lr.ph136:                                        ; preds = %.preheader130
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !277
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  br label %bb.m

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.095133 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %bb.l ] ; 5 uses
  %.096132 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.l ] ; 4 uses
  %.097131 = phi i64 [ 0, %.lr.ph ], [ %.198, %bb.l ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 %.095133
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !37
  %.not116 = icmp eq i8 %i.aa, 0
  br i1 %.not116, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !281
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %.097131
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !69 ; 2 uses
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !271 ; 2 uses
  %.not119 = icmp eq ptr %i.ae, null
  br i1 %.not119, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !275
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.af, i64 %.097131
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !119
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !256
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ad
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !119
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !276
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %.097131
  %i.an = load double, ptr %i.am, align 8, !tbaa !119
  %i.ao = fneg double %i.an
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ak, double %i.ao) ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.095133 ; 2 uses
  store double %i.ap, ptr %i.aq, align 8, !tbaa !119
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !244 ; 2 uses
  %.not120 = icmp eq ptr %i.ar, null
  br i1 %.not120, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.ad
  %i.at = load double, ptr %i.as, align 8, !tbaa !119
  %i.au = fadd double %i.ap, %i.at
  store double %i.au, ptr %i.aq, align 8, !tbaa !119
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.av = add nsw i64 %.097131, 1
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !271 ; 2 uses
  %.not117 = icmp eq ptr %i.aw, null
  br i1 %.not117, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !256
  %i.ay = getelementptr [8 x i8], ptr %i.ax, i64 %i.b
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %.096132
  %i.ba = load double, ptr %i.az, align 8, !tbaa !119
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.095133
  store double %i.ba, ptr %i.bb, align 8, !tbaa !119
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %.not.i121, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %i.u, align 8, !tbaa !263
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %i.b
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %.096132
  %i.bf = load double, ptr %i.be, align 8, !tbaa !119
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %.095133
  store double %i.bf, ptr %i.bg, align 8, !tbaa !119
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bh = add nsw i64 %.096132, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.k
  %.198 = phi i64 [ %i.av, %bb.f ], [ %.097131, %bb.k ]
  %.1 = phi i64 [ %.096132, %bb.f ], [ %i.bh, %bb.k ]
  %i.bi = add nuw nsw i64 %.095133, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %i.j
  br i1 %exitcond.not, label %.preheader130, label %bb.b, !llvm.loop !716

.preheader:                                       ; preds = %.thread128, %.preheader130
  br i1 %i.k, label %.lr.ph140, label %._crit_edge

.lr.ph140:                                        ; preds = %.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !280 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  br i1 %.not.i121, label %.lr.ph140.split.preheader, label %._crit_edge

.lr.ph140.split.preheader:                        ; preds = %.lr.ph140
  %xtraiter = and i64 %i.j, 1
  %i.bm = icmp eq i64 %i.j, 1
  br i1 %i.bm, label %.lr.ph140.split.epil.preheader, label %.lr.ph140.split.preheader.new

.lr.ph140.split.preheader.new:                    ; preds = %.lr.ph140.split.preheader
  %unroll_iter = and i64 %i.j, 9223372036854775806
  br label %.lr.ph140.split

bb.m:                                             ; preds = %.lr.ph136, %.thread128
  %.094135 = phi i64 [ 0, %.lr.ph136 ], [ %i.dl, %.thread128 ] ; 11 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.094135
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !69 ; 2 uses
  %i.bp = icmp slt i64 %i.bo, %i.b
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i, label %.thread161, label %.thread

bb.o:                                             ; preds = %bb.m
  br i1 %.not.i121, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bq = load ptr, ptr %i.x, align 8, !tbaa !263
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.094135
  %i.bs = load double, ptr %i.br, align 8, !tbaa !119 ; 2 uses
  %i.bt = fcmp olt double %i.bs, 0.000000e+00
  %i.bu = uitofp i1 %i.bt to double
  %i.bv = sub nuw nsw i64 %i.bo, %i.b
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.bv ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !119
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bs, double %i.bx)
  store double %i.by, ptr %i.bw, align 8, !tbaa !119
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bz = load ptr, ptr %i.y, align 8, !tbaa !278
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.094135
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !69 ; 2 uses
  %i.cc = icmp slt i64 %i.cb, %i.b
  br i1 %i.cc, label %bb.r, label %bb.s

.thread161:                                       ; preds = %bb.n
  %i.cd = load ptr, ptr %i.x, align 8, !tbaa !263
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.094135
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !119 ; 2 uses
  %i.cg = fcmp olt double %i.cf, 0.000000e+00
  %i.ch = uitofp i1 %i.cg to double
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.094135 ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !119
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.cf, double %i.cj)
  store double %i.ck, ptr %i.ci, align 8, !tbaa !119
  %i.cl = load ptr, ptr %i.y, align 8, !tbaa !278
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.094135
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !69 ; 2 uses
  %i.co = icmp slt i64 %i.cn, %i.b
  br i1 %i.co, label %.thread162, label %bb.s

.thread:                                          ; preds = %bb.n
  %i.cp = load ptr, ptr %i.y, align 8, !tbaa !278
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.094135
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !69 ; 2 uses
  %i.cs = icmp slt i64 %i.cr, %i.b
  br i1 %i.cs, label %.thread128, label %bb.s

bb.r:                                             ; preds = %bb.q
  br i1 %.not.i, label %.thread162, label %.thread128

.thread162:                                       ; preds = %.thread161, %bb.r
  %i.ct = load ptr, ptr %i.x, align 8, !tbaa !263
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.094135
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !119 ; 2 uses
  %i.cw = fcmp ogt double %i.cv, 0.000000e+00
  %i.cx = uitofp i1 %i.cw to double
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.094135 ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !119
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cv, double %i.cz)
  store double %i.da, ptr %i.cy, align 8, !tbaa !119
  br label %.thread128

bb.s:                                             ; preds = %.thread161, %.thread, %bb.q
  %i.db = phi i64 [ %i.cr, %.thread ], [ %i.cb, %bb.q ], [ %i.cn, %.thread161 ]
  br i1 %.not.i121, label %bb.t, label %.thread128

bb.t:                                             ; preds = %bb.s
  %i.dc = load ptr, ptr %i.x, align 8, !tbaa !263
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.094135
  %i.de = load double, ptr %i.dd, align 8, !tbaa !119 ; 2 uses
  %i.df = fcmp ogt double %i.de, 0.000000e+00
  %i.dg = uitofp i1 %i.df to double
  %i.dh = sub nsw i64 %i.db, %i.b
  %i.di = getelementptr inbounds [8 x i8], ptr %.fr, i64 %i.dh ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !119
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.de, double %i.dj)
  store double %i.dk, ptr %i.di, align 8, !tbaa !119
  br label %.thread128

.thread128:                                       ; preds = %.thread, %.thread162, %bb.r, %bb.t, %bb.s
  %i.dl = add nuw nsw i64 %.094135, 1             ; 2 uses
  %exitcond142.not = icmp eq i64 %i.dl, %i.b
  br i1 %exitcond142.not, label %.preheader, label %bb.m, !llvm.loop !717

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph140.split.epil.preheader

.lr.ph140.split.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph140.split.preheader
  %.0138.epil.init = phi i64 [ 0, %.lr.ph140.split.preheader ], [ %i.en, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.2137.epil.init = phi i64 [ 0, %.lr.ph140.split.preheader ], [ %.3.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod163 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod163)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.0138.epil.init
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !37
  %.not.epil = icmp eq i8 %i.dn, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %.lr.ph140.split.epil.preheader
  %i.do = load ptr, ptr %i.bl, align 8, !tbaa !275
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.do, i64 %.2137.epil.init
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !119
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %.0138.epil.init ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !119
  %i.dt = fdiv double %i.ds, %i.dq
  store double %i.dt, ptr %i.dr, align 8, !tbaa !119
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.u, %.lr.ph140.split.epil.preheader, %.lr.ph140, %.preheader
  ret i32 0

.lr.ph140.split:                                  ; preds = %bb.x, %.lr.ph140.split.preheader.new
  %.0138 = phi i64 [ 0, %.lr.ph140.split.preheader.new ], [ %i.en, %bb.x ] ; 4 uses
  %.2137 = phi i64 [ 0, %.lr.ph140.split.preheader.new ], [ %.3.1, %bb.x ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph140.split.preheader.new ], [ %niter.next.1, %bb.x ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.0138
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !37
  %.not = icmp eq i8 %i.dv, 0
  br i1 %.not, label %.lr.ph140.split.1, label %bb.v

bb.v:                                             ; preds = %.lr.ph140.split
  %i.dw = load ptr, ptr %i.bl, align 8, !tbaa !275
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.2137
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !119
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %.0138 ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !119
  %i.eb = fdiv double %i.ea, %i.dy
  store double %i.eb, ptr %i.dz, align 8, !tbaa !119
  %i.ec = add nsw i64 %.2137, 1
  br label %.lr.ph140.split.1

.lr.ph140.split.1:                                ; preds = %.lr.ph140.split, %bb.v
  %.3 = phi i64 [ %i.ec, %bb.v ], [ %.2137, %.lr.ph140.split ] ; 3 uses
  %i.ed = or disjoint i64 %.0138, 1               ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !37
  %.not.1 = icmp eq i8 %i.ef, 0
  br i1 %.not.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph140.split.1
  %i.eg = load ptr, ptr %i.bl, align 8, !tbaa !275
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %.3
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !119
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.ed ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !119
  %i.el = fdiv double %i.ek, %i.ei
  store double %i.el, ptr %i.ej, align 8, !tbaa !119
  %i.em = add nsw i64 %.3, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph140.split.1
  %.3.1 = phi i64 [ %i.em, %bb.w ], [ %.3, %.lr.ph140.split.1 ] ; 2 uses
  %i.en = add nuw nsw i64 %.0138, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph140.split, !llvm.loop !718
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK6casadi6Nlpsol8set_workEPvRPPKdRPPdRPxRS6_(ptr noundef nonnull align 8 dereferenceable(1984) %0, ptr noundef initializes((160, 168), (416, 417), (420, 424)) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i8 0, ptr %i.a, align 8, !tbaa !238
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 420
  store i32 1, ptr %i.b, align 4, !tbaa !240
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %i.c, ptr %i.d, align 8, !tbaa !239
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.e, ptr %i.f, align 8, !tbaa !719
  %i.g = load ptr, ptr %2, align 8, !tbaa !720    ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !267
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %i.i, ptr %i.j, align 8, !tbaa !268
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !267
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.l, ptr %i.m, align 8, !tbaa !242
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !267
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 232
  store ptr %i.o, ptr %i.p, align 8, !tbaa !243
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !267
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr %i.r, ptr %i.s, align 8, !tbaa !245
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !267
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 248
  store ptr %i.u, ptr %i.v, align 8, !tbaa !246
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !267
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %i.w, ptr %i.x, align 8, !tbaa !244
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !267
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !262
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !267
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !264
  %i.ae = load ptr, ptr %3, align 8, !tbaa !720   ; 6 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !267
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !270
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !267
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 280
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !274
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !267
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 296
  store ptr %i.al, ptr %i.am, align 8, !tbaa !271
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !267
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !272
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !267
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 312
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !273
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !267
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 320
  store ptr %i.au, ptr %i.av, align 8, !tbaa !265
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr %i.aw, ptr %2, align 8, !tbaa !720
  %i.ax = load ptr, ptr %3, align 8, !tbaa !720
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  store ptr %i.ay, ptr %3, align 8, !tbaa !720
  %i.az = load i64, ptr %i.c, align 8, !tbaa !209 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !210
  %i.bc = load ptr, ptr %5, align 8, !tbaa !267   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !256
  %i.be = add nsw i64 %i.bb, %i.az                ; 4 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.be ; 2 uses
  store ptr %i.bf, ptr %5, align 8, !tbaa !267
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !260
  %i.bh = load ptr, ptr %5, align 8, !tbaa !267
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.be ; 2 uses
  store ptr %i.bi, ptr %5, align 8, !tbaa !267
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !261
  %i.bk = load ptr, ptr %5, align 8, !tbaa !267
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.be ; 2 uses
  store ptr %i.bl, ptr %5, align 8, !tbaa !267
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !263
  %i.bn = load ptr, ptr %5, align 8, !tbaa !267
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.be ; 2 uses
  store ptr %i.bo, ptr %5, align 8, !tbaa !267
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !211
  %.not.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i, label %_ZN6casadi18casadi_nlpsol_initIdEEvPNS_18casadi_nlpsol_dataIT_EEPPPKS2_PPPS2_PPxSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.bs = load ptr, ptr %2, align 8, !tbaa !720   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 328
end_hunk_0
