Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientenvironment?download=true
inline.NumInlined: 1021
inline.NumDeleted: 614
begin_hunk_0_@_ZN17ClientEnvironment4stepEf:._crit_edge.i.i
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !134 ; 2 uses
  %.sroa.0370.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul nsz <2 x float> %.sroa.01.0.copyload.i, %.sroa.01.0.copyload.i
  %i.ad = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ae = call nsz float @llvm.fmuladd.f32(float %.sroa.0370.0.vec.extract, float %.sroa.0370.0.vec.extract, float %i.ad)
  %i.af = call nsz float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i, float %.sroa.22.0.copyload.i, float %i.ae)
  %i.ag = call nsz noundef float @llvm.sqrt.f32(float %i.af) ; 2 uses
  %i.ah = fpext nsz float %i.ag to double
  %i.ai = fcmp nsz ogt double %i.ah, 1.000000e-03
  %i.aj = fdiv nsz float 1.000000e+00, %i.ag
  %.0193 = select nsz i1 %i.ai, float %i.aj, float 1.000000e+00 ; 2 uses
  %i.ak = fpext nsz float %.0193 to double
  %i.al = fcmp nsz ogt double %i.ak, 1.000000e-02
  %spec.store.select = select i1 %i.al, float f0x3C23D70A, float %.0193
  %i.am = fcmp nsz ogt float %1, 2.500000e+00
  %spec.store.select5 = select i1 %i.am, float 2.500000e+00, float %1 ; 7 uses
  %i.an = fdiv nsz float %spec.store.select5, %spec.store.select
  %i.ao = call nsz noundef float @llvm.ceil.f32(float %i.an)
  %i.ap = fptoui float %i.ao to i32               ; 4 uses
  %i.aq = uitofp nsz i32 %i.ap to float
  %i.ar = fdiv nsz float %spec.store.select5, %i.aq ; 5 uses
  %.not385 = icmp eq i32 %i.ap, 0
  br i1 %.not385, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 428 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 419 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 132
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 272
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 423
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 424
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 296
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 421
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 288
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 124
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 292
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 420
  br i1 %i.w, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.0195386.us = phi i32 [ %i.bg, %bb.d ], [ %i.ap, %.lr.ph ]
  invoke void @_ZN11LocalPlayer12applyControlEfP11Environment(ptr noundef nonnull align 8 dereferenceable(864) %i.y, float noundef %i.ar, ptr noundef nonnull %0)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %.lr.ph.split.us
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !262
  invoke void @_ZN11LocalPlayer4moveEfP11EnvironmentPSt6vectorI13CollisionInfoSaIS3_EE(ptr noundef nonnull align 8 dereferenceable(864) %i.y, float noundef %i.ar, ptr noundef nonnull %0, ptr noundef nonnull %5)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.bg = add i32 %.0195386.us, -1                ; 2 uses
  %.not.us = icmp eq i32 %i.bg, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !255

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %3, align 8, !tbaa !105   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.e
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %bb.e
  %i.bk = load i64, ptr %i.e, align 8, !tbaa !104
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bu

bb.f:                                             ; preds = %._crit_edge.i.i237
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %4, align 8, !tbaa !105   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.o
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247: ; preds = %bb.f
  %i.bp = load i64, ptr %i.o, align 8, !tbaa !104
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.bu

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.t
  %.0195386 = phi i32 [ %i.eq, %bb.t ], [ %i.ap, %.lr.ph ]
  invoke void @_ZN11LocalPlayer12applyControlEfP11Environment(ptr noundef nonnull align 8 dereferenceable(864) %i.y, float noundef %i.ar, ptr noundef nonnull %0)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %.lr.ph.split
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !262
  br i1 %i.ab, label %.critedge235, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = load i8, ptr %i.at, align 1, !tbaa !263, !range !132, !noundef !133
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = load float, ptr %i.au, align 4, !tbaa !264
  %i.bu = fmul nsz float %i.bt, 2.000000e+00
  %i.bv = load float, ptr %i.av, align 8, !tbaa !265
  %i.bw = fmul nsz float %i.bu, %i.bv
  br label %.critedge235.sink.split

bb.j:                                             ; preds = %bb.h
  %i.bx = load i8, ptr %i.aw, align 1, !tbaa !266, !range !132, !noundef !133
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %.critedge235, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = load i8, ptr %i.ax, align 8, !tbaa !267, !range !132, !noundef !133
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %.critedge235, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = load float, ptr %i.ay, align 8, !tbaa !268
  %i.cc = fmul nsz float %i.cb, 2.000000e+00
  %i.cd = load float, ptr %i.az, align 8, !tbaa !269
  %i.ce = fmul nsz float %i.cc, %i.cd
  br label %.critedge235.sink.split

.critedge235.sink.split:                          ; preds = %bb.l, %bb.i
  %.sink = phi float [ %i.bw, %bb.i ], [ %i.ce, %bb.l ]
  store float %.sink, ptr %i.as, align 4, !tbaa !262
  br label %.critedge235

.critedge235:                                     ; preds = %.critedge235.sink.split, %bb.g, %bb.k, %bb.j
  %i.cf = load i8, ptr %i.ba, align 1, !tbaa !270 ; 2 uses
  %.not223 = icmp eq i8 %i.cf, 0
  br i1 %.not223, label %bb.s, label %bb.m

bb.m:                                             ; preds = %.critedge235
  %.sroa.01.0.copyload.i250 = load <2 x float>, ptr %i.ac, align 8, !tbaa !134 ; 5 uses
  %.sroa.22.0.copyload.i252 = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !134 ; 3 uses
  %i.cg = load float, ptr %i.bb, align 8, !tbaa !271 ; 2 uses
  %i.ch = load float, ptr %i.bc, align 8, !tbaa !272 ; 2 uses
  %i.ci = fcmp nsz olt float %i.ch, 1.000000e+00
  %i.cj = fmul nsz float %i.cg, %i.ch
  %i.ck = select i1 %i.ci, float %i.cg, float %i.cj ; 2 uses
  %i.cl = fcmp nsz olt float %i.ck, 1.000000e-03
  %i.cm = select nsz i1 %i.cl, float 1.000000e-03, float %i.ck ; 2 uses
  %i.cn = load float, ptr %i.bd, align 4, !tbaa !273
  %i.co = load float, ptr %i.be, align 4, !tbaa !274
  %i.cp = fmul nsz float %i.cn, %i.co             ; 2 uses
  %i.cq = fcmp nsz olt float %i.cp, 0.000000e+00
  %i.cr = select nsz i1 %i.cq, float 0.000000e+00, float %i.cp ; 2 uses
  %i.cs = load i8, ptr %i.bf, align 4, !tbaa !275, !range !132, !noundef !133
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %.thread375, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = load i8, ptr %i.at, align 1, !tbaa !263, !range !132, !noundef !133
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %.thread375, label %bb.o

.thread375:                                       ; preds = %bb.m, %bb.n
  %.sroa.0356.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i250, i64 1
  %i.cw = fneg nsz float %.sroa.0356.4.vec.extract
  %i.cx = insertelement <2 x float> %.sroa.01.0.copyload.i250, float %.sroa.22.0.copyload.i252, i64 1
  %i.cy = fneg nsz <2 x float> %i.cx
  %i.cz = fdiv nsz float %i.cw, %i.cm
  %i.da = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fdiv nsz <2 x float> %i.cy, %i.db
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.0356.4.vec.extract364 = extractelement <2 x float> %.sroa.01.0.copyload.i250, i64 1
  %i.dd = fdiv nsz float %.sroa.0356.4.vec.extract364, -1.000000e+01
  %i.de = insertelement <2 x float> %.sroa.01.0.copyload.i250, float %.sroa.22.0.copyload.i252, i64 1
  %i.df = fdiv nsz <2 x float> %i.de, splat (float -1.000000e+01)
  br label %bb.p

bb.p:                                             ; preds = %.thread375, %bb.o
  %.sink449 = phi float [ %i.cz, %.thread375 ], [ %i.dd, %bb.o ] ; 4 uses
  %i.dg = phi i1 [ true, %.thread375 ], [ false, %bb.o ]
  %i.dh = phi <2 x float> [ %i.dc, %.thread375 ], [ %i.df, %bb.o ] ; 4 uses
  %i.di = fmul nsz float %.sink449, %.sink449
  %i.dj = extractelement <2 x float> %i.dh, i64 0 ; 2 uses
  %i.dk = call nsz float @llvm.fmuladd.f32(float %i.dj, float %i.dj, float %i.di)
  %i.dl = extractelement <2 x float> %i.dh, i64 1 ; 2 uses
  %i.dm = call nsz float @llvm.fmuladd.f32(float %i.dl, float %i.dl, float %i.dk) ; 3 uses
  %i.dn = call nsz noundef float @llvm.sqrt.f32(float %i.dm) ; 2 uses
  %i.do = fcmp nsz uge float %i.dn, %i.cr
  %i.dp = select i1 %i.dg, i1 %i.do, i1 false
  %.0194 = select nsz i1 %i.dp, float %i.cr, float %i.dn
  %i.dq = fcmp nsz oeq float %i.dm, 0.000000e+00
  br i1 %i.dq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dr = fpext nsz float %i.dm to double
  %i.ds = call nsz double @llvm.sqrt.f64(double %i.dr)
  %i.dt = fdiv nsz double 1.000000e+00, %i.ds     ; 2 uses
  %i.du = fpext nsz <2 x float> %i.dh to <2 x double>
  %i.dv = fpext nsz float %.sink449 to double
  %i.dw = fmul nsz double %i.dt, %i.dv
  %i.dx = fptrunc nsz double %i.dw to float
  %i.dy = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fmul nsz <2 x double> %i.dz, %i.du
  %i.eb = fptrunc nsz <2 x double> %i.ea to <2 x float>
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sroa.0339.4.vec.extract353.pre-phi = phi float [ %.sink449, %bb.p ], [ %i.dx, %bb.q ]
  %i.ec = phi <2 x float> [ %i.dh, %bb.p ], [ %i.eb, %bb.q ] ; 2 uses
  %i.ed = uitofp i8 %i.cf to float
  %i.ee = call nnan nsz float @llvm.fmuladd.f32(float %i.ed, float 3.000000e-01, float f0x3F333333)
  %i.ef = fmul nsz float %i.ee, %.0194
  %i.eg = fmul nsz float %i.ar, %i.ef
  %i.eh = fmul nsz float %i.eg, 1.000000e+02      ; 2 uses
  %i.ei = extractelement <2 x float> %i.ec, i64 1
  %i.ej = fmul nsz float %i.eh, %i.ei
  %i.ek = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = insertelement <2 x float> %i.ec, float %.sroa.0339.4.vec.extract353.pre-phi, i64 1
  %i.en = fmul nsz <2 x float> %i.el, %i.em
  %i.eo = fadd nsz <2 x float> %.sroa.01.0.copyload.i250, %i.en
  %i.ep = fadd nsz float %.sroa.22.0.copyload.i252, %i.ej
  store <2 x float> %i.eo, ptr %i.ac, align 8, !tbaa !134
  store float %i.ep, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !134
  br label %bb.s

bb.s:                                             ; preds = %.critedge235, %bb.r
  invoke void @_ZN11LocalPlayer4moveEfP11EnvironmentPSt6vectorI13CollisionInfoSaIS3_EE(ptr noundef nonnull align 8 dereferenceable(864) %i.y, float noundef %i.ar, ptr noundef nonnull %0, ptr noundef nonnull %5)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.eq = add i32 %.0195386, -1                   ; 2 uses
  %.not = icmp eq i32 %i.eq, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !255

._crit_edge:                                      ; preds = %bb.t, %bb.d, %bb.b
  %i.er = getelementptr inbounds nuw i8, ptr %i.y, i64 776
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !276 ; 3 uses
  %.not201 = icmp eq ptr %i.es, null
  br i1 %.not201, label %bb.y, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.et = invoke noundef zeroext i1 @_ZNK10GenericCAO10isImmortalEv(ptr noundef nonnull align 8 dereferenceable(1076) %i.es)
          to label %.noexc.i275 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i275:                                      ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.eu, ptr %6, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 23, ptr %i.b, align 8, !tbaa !135
  %i.ev = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc276 unwind label %bb.w  ; 2 uses

.noexc276:                                        ; preds = %.noexc.i275
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 944
  store ptr %i.ev, ptr %6, align 8, !tbaa !105
  %i.ex = load i64, ptr %i.b, align 8, !tbaa !135 ; 3 uses
  store i64 %i.ex, ptr %i.eu, align 8, !tbaa !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.ev, ptr noundef nonnull align 1 dereferenceable(23) @.str.4, i64 23, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !103
  %i.ez = load ptr, ptr %6, align 8, !tbaa !105
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ex
  store i8 0, ptr %i.fa, align 1, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.fb = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc278 unwind label %bb.x  ; 2 uses

.noexc278:                                        ; preds = %.noexc276
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, label %bb.v

bb.v:                                             ; preds = %.noexc278
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !278
  %i.ff = sitofp nsz i32 %i.fe to float
  br label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit: ; preds = %bb.v, %.noexc278
  %.0.i = phi float [ %i.ff, %bb.v ], [ 0.000000e+00, %.noexc278 ]
  %i.fg = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.eu
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit
  %i.fi = load i64, ptr %i.eu, align 8, !tbaa !104
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.fk = fdiv nnan nsz float %.0.i, 1.000000e+02
  %i.fl = fadd nnan nsz float %i.fk, 1.000000e+00
  br label %bb.y

bb.w:                                             ; preds = %.noexc.i275
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

bb.x:                                             ; preds = %.noexc276
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.eu
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282: ; preds = %bb.x
  %i.fq = load i64, ptr %i.eu, align 8, !tbaa !104
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282, %bb.w
  %.pn202 = phi { ptr, i32 } [ %i.fm, %bb.w ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282 ], [ %i.fn, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.loopexit.split-lp

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, %._crit_edge
  %.0191 = phi i1 [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281 ], [ false, %._crit_edge ]
  %.0190 = phi nsz float [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281 ], [ 1.000000e+00, %._crit_edge ]
  %i.fs = load ptr, ptr %5, align 8, !tbaa !280   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !280 ; 2 uses
  %.not376387 = icmp eq ptr %i.fs, %i.fu
  br i1 %.not376387, label %._crit_edge391, label %.lr.ph390

.lr.ph390:                                        ; preds = %bb.y
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 272
  br label %bb.z

._crit_edge391:                                   ; preds = %bb.aq, %bb.y
  %i.gd = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1147
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !417, !range !132, !noundef !133
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.ar, label %bb.as

bb.z:                                             ; preds = %.lr.ph390, %bb.aq
  %.sroa.0329.0388 = phi ptr [ %i.fs, %.lr.ph390 ], [ %i.jp, %bb.aq ] ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0329.0388, i64 44
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !146
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0329.0388, i64 32
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !146 ; 2 uses
  %i.gl = fsub nsz float %i.gi, %i.gk             ; 3 uses
  %i.gm = fcmp nsz uge float %i.gl, 0.000000e+00
  %i.gn = fcmp nsz ult float %i.gk, 0.000000e+00
  %or.cond451 = and i1 %i.gm, %i.gn
  br i1 %or.cond451, label %bb.aa, label %bb.aq

bb.aa:                                            ; preds = %bb.z
  %i.go = load i8, ptr %.sroa.0329.0388, align 8, !tbaa !422
  %i.gp = icmp eq i8 %i.go, 0
  br i1 %i.gp, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.gq = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = invoke noundef ptr %i.gu(ptr noundef nonnull align 8 dereferenceable(8) %i.gr)
          to label %_ZN8IGameDef4ndefEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !256 ; 2 uses

_ZN8IGameDef4ndefEv.exit:                         ; preds = %bb.ab
  %i.gw = load ptr, ptr %i.fv, align 8, !tbaa !20
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0329.0388, i64 2
  %.sroa.028.0.copyload = load i48, ptr %i.gx, align 2, !tbaa !147
  %i.gy = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.gw, i48 %.sroa.028.0.copyload, ptr noundef null)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %_ZN8IGameDef4ndefEv.exit
  %i.gz = and i32 %i.gy, 65535
  %i.ha = zext nneg i32 %i.gz to i64              ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !425
  %i.he = load ptr, ptr %i.hb, align 8, !tbaa !426 ; 3 uses
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = sdiv exact i64 %i.hh, 2080
  %i.hj = icmp ugt i64 %i.hi, %i.ha
  br i1 %i.hj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hk = getelementptr inbounds nuw [2080 x i8], ptr %i.he, i64 %i.ha ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !103
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %bb.ae, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ho = getelementptr inbounds nuw i8, ptr %i.he, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit
end_hunk_0
begin_hunk_1_@_ZN17ClientEnvironment17getClientEnvEventEv:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !212
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !94   ; 3 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !213
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 512
  store ptr %i.p, ptr %i.f, align 8, !tbaa !214
  br label %_ZNSt5queueI14ClientEnvEventSt5dequeIS0_SaIS0_EEE3popEv.exit

_ZNSt5queueI14ClientEnvEventSt5dequeIS0_SaIS0_EEE3popEv.exit: ; preds = %bb.d, %bb.e
  %storemerge.i.i = phi ptr [ %i.i, %bb.d ], [ %i.o, %bb.e ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !215
  ret i64 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17ClientEnvironment24getSelectedActiveObjectsERKN4core6line3dIfEERSt6vectorI12PointedThingSaIS6_EERKSt8optionalI14PointabilitiesE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(232) %3) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.466", align 8   ; 10 uses
  %5 = alloca %"class.core::aabbox3d", align 4    ; 7 uses
  %6 = alloca %"class.core::vector3d.196", align 8 ; 11 uses
  %7 = alloca %"class.core::vector3d.196", align 8 ; 10 uses
  %8 = alloca %"class.core::vector3d.196", align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZN6client15ActiveObjectMgr26getActiveSelectableObjectsERKN4core6line3dIfEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.466") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 4 dereferenceable(24) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !134
  %i.h = load <2 x float>, ptr %1, align 4, !tbaa !134
  %i.i = fsub nsz <2 x float> %i.g, %i.h          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load float, ptr %i.j, align 4, !tbaa !446
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !446
  %i.n = fsub nsz float %i.k, %i.m                ; 2 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !448    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !448  ; 2 uses
  %.not119122 = icmp eq ptr %i.o, %i.q
  br i1 %.not119122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.ak
  %.pre = load ptr, ptr %4, align 8, !tbaa !450
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.x = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.o, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI26DistanceSortedActiveObjectSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !451
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #30
  br label %_ZNSt6vectorI26DistanceSortedActiveObjectSaIS0_EED2Ev.exit

_ZNSt6vectorI26DistanceSortedActiveObjectSaIS0_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.ak
  %.sroa.0116.0123 = phi ptr [ %i.o, %.lr.ph ], [ %i.gc, %bb.ak ] ; 2 uses
  %i.ad = load ptr, ptr %.sroa.0116.0123, align 8, !tbaa !453 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.ah, label %bb.f, label %bb.ak

bb.e:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !134
  store float 0.000000e+00, ptr %i.r, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !134
  store float 0.000000e+00, ptr %i.s, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !134
  store float 0.000000e+00, ptr %i.t, align 8, !tbaa !446
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke { <2 x float>, float } %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.g unwind label %bb.q       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.fca.0.extract43 = extractvalue { <2 x float>, float } %i.am, 0
  %.fca.1.extract44 = extractvalue { <2 x float>, float } %i.am, 1
  %i.an = load <2 x float>, ptr %1, align 4, !tbaa !134
  %i.ao = fsub nsz <2 x float> %i.an, %.fca.0.extract43 ; 2 uses
  %i.ap = load float, ptr %i.l, align 4, !tbaa !446
  %i.aq = fsub nsz float %i.ap, %.fca.1.extract44 ; 2 uses
  %i.ar = call ptr @__dynamic_cast(ptr nonnull %i.ad, ptr nonnull @_ZTI18ClientActiveObject, ptr nonnull @_ZTI10GenericCAO, i64 0) #28 ; 11 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 412
  %i.at = load i8, ptr %i.as, align 4, !tbaa !472, !range !132, !noundef !133
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(1076) %i.ar)
          to label %bb.j unwind label %bb.q       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 256
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(218) %i.ay)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %i.ad, align 8, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.l unwind label %bb.q       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = invoke noundef nonnull align 4 dereferenceable(64) ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(218) %i.bf)
          to label %bb.m unwind label %bb.q       ; 7 uses

bb.m:                                             ; preds = %bb.l
  %i.bk = load <2 x float>, ptr %i.bj, align 4, !tbaa !134 ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.bk, %i.bk
  %i.bl = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bm = extractelement <2 x float> %i.bk, i64 0 ; 2 uses
  %i.bn = call nsz float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %i.bl)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !134 ; 3 uses
  %i.bq = call nsz float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.bn)
  %i.br = call nsz noundef float @llvm.sqrt.f32(float %i.bq) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bt = load <2 x float>, ptr %i.bs, align 4, !tbaa !134 ; 3 uses
  %i.bu = call nsz float @llvm.fabs.f32(float %i.br)
  %i.bv = fcmp nsz ole float %i.bu, f0x358637BD
  %i.bw = fpext nsz float %i.br to double
  %i.bx = fdiv nsz double 1.000000e+00, %i.bw
  %i.by = select i1 %i.bv, double f0x37F0000010000010, double %i.bx ; 2 uses
  %i.bz = fpext nsz float %i.bp to double
  %i.ca = fmul nsz double %i.by, %i.bz            ; 2 uses
  %i.cb = fcmp nsz olt double %i.ca, -1.000000e+00
  %i.cc = select i1 %i.cb, double -1.000000e+00, double %i.ca ; 2 uses
  %i.cd = fcmp nsz olt double %i.cc, 1.000000e+00
  %i.ce = select i1 %i.cd, double %i.cc, double 1.000000e+00 ; 2 uses
  %i.cf = call nsz noundef double @llvm.fabs.f64(double %i.ce)
  %i.cg = fadd nsz double %i.cf, -1.000000e+00
  %i.ch = call nsz noundef double @llvm.fabs.f64(double %i.cg)
  %i.ci = fcmp nsz ugt double %i.ch, 1.000000e-08
  br i1 %i.ci, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !134
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.cn = load <2 x float>, ptr %i.cm, align 4
  %i.co = load <2 x float>, ptr %i.cl, align 4, !tbaa !134 ; 2 uses
  %i.cp = shufflevector <2 x float> %i.bt, <2 x float> %i.co, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cq = fmul nsz <2 x float> %i.cp, %i.cp
  %i.cr = shufflevector <2 x float> %i.bt, <2 x float> %i.co, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cs = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.cr, <2 x float> %i.cq)
  %i.ct = insertelement <2 x float> %i.cn, float %i.ck, i64 1 ; 3 uses
  %i.cu = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.ct, <2 x float> %i.cs)
  %i.cv = call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.cu) ; 2 uses
  %i.cw = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cv)
  %i.cx = fcmp nsz ole <2 x float> %i.cw, splat (float f0x358637BD)
  %i.cy = fpext nsz <2 x float> %i.cv to <2 x double>
  %i.cz = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.cy
  %i.da = select <2 x i1> %i.cx, <2 x double> splat (double f0x37F0000010000010), <2 x double> %i.cz
  %i.db = fpext nsz <2 x float> %i.ct to <2 x double>
  %i.dc = fmul nsz <2 x double> %i.da, %i.db      ; 2 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0
  %i.de = extractelement <2 x double> %i.dc, i64 1
  %i.df = call nsz double @llvm.atan2.f64(double %i.dd, double %i.de)
  %i.dg = fpext nsz <2 x float> %i.bk to <2 x double>
  %i.dh = insertelement <2 x double> poison, double %i.by, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = fmul nsz <2 x double> %i.di, %i.dg      ; 2 uses
  %i.dk = extractelement <2 x double> %i.dj, i64 0
  %i.dl = extractelement <2 x double> %i.dj, i64 1
  %i.dm = call nsz double @llvm.atan2.f64(double %i.dl, double %i.dk)
  %i.dn = fptrunc nsz double %i.df to float
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.do = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.dp = load float, ptr %i.do, align 4, !tbaa !134
  %i.dq = fpext nsz float %i.dp to double
  %i.dr = extractelement <2 x float> %i.bt, i64 0
  %i.ds = fneg nsz float %i.dr
  %i.dt = fpext nsz float %i.ds to double
  %i.du = call nsz double @llvm.atan2.f64(double %i.dt, double %i.dq)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.025.i.i.i = phi float [ 0.000000e+00, %bb.o ], [ %i.dn, %bb.n ]
  %.0.i.i.i = phi nsz double [ %i.du, %bb.o ], [ %i.dm, %bb.n ]
  %i.dv = call nsz double @llvm.asin.f64(double %i.ce)
  %i.dw = fptrunc nsz double %i.dv to float
  %i.dx = fneg nsz float %i.dw
  %i.dy = fptrunc nsz double %.0.i.i.i to float
  %.sroa.032.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %.025.i.i.i, i64 0
  %.sroa.032.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.032.0.vec.insert.i.i.i, float %i.dx, i64 1
  %i.dz = invoke noundef zeroext i1 @_Z16boxLineCollisionRKN4core8aabbox3dIfEENS_8vector3dIfEES5_S5_PS5_S6_S6_(ptr noundef nonnull align 4 dereferenceable(24) %5, <2 x float> %.sroa.032.4.vec.insert.i.i.i, float %i.dy, <2 x float> %i.ao, float %i.aq, <2 x float> %i.i, float %i.n, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.f, %bb.i, %bb.j, %bb.r, %bb.p, %bb.l, %bb.k
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.r:                                             ; preds = %bb.h, %bb.g
  %i.eb = invoke noundef zeroext i1 @_Z16boxLineCollisionRKN4core8aabbox3dIfEENS_8vector3dIfEES5_PS5_S6_(ptr noundef nonnull align 4 dereferenceable(24) %5, <2 x float> %i.ao, float %i.aq, <2 x float> %i.i, float %i.n, ptr noundef nonnull %6, ptr noundef nonnull %7)
          to label %.split unwind label %bb.q

.split:                                           ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !473
  br i1 %i.eb, label %bb.t, label %bb.aj

bb.s:                                             ; preds = %bb.p
  br i1 %i.dz, label %bb.t, label %bb.aj

bb.t:                                             ; preds = %.split, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ec = load i8, ptr %i.u, align 8, !tbaa !475, !range !132, !noundef !133
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !499, !range !132, !noundef !133
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ar, i64 944
  %i.ei = invoke i16 @_ZNK14Pointabilities11matchPlayerERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS6_ESt8equal_toIS6_ESaISt4pairIKS6_iEEE(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.eh)
          to label %bb.w unwind label %bb.af      ; 2 uses

bb.w:                                             ; preds = %bb.v
  %.sroa.0103.0.extract.trunc = trunc i16 %i.ei to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ar, i64 409
  %i.ek = and i16 %i.ei, 256
  %.not121 = icmp eq i16 %i.ek, 0
  %.val2.i = load i8, ptr %i.ej, align 1
  %.0.i = select i1 %.not121, i8 %.val2.i, i8 %.sroa.0103.0.extract.trunc
  br label %bb.aa

bb.x:                                             ; preds = %bb.u
  %i.el = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.ar, i64 944
  %i.en = invoke i16 @_ZNK14Pointabilities11matchObjectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt13unordered_mapIS5_iSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIS6_iEEE(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.el, ptr noundef nonnull align 8 dereferenceable(56) %i.em)
          to label %bb.y unwind label %bb.af      ; 2 uses

bb.y:                                             ; preds = %bb.x
  %.sroa.0102.0.extract.trunc = trunc i16 %i.en to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ar, i64 409
  %i.ep = and i16 %i.en, 256
  %.not120 = icmp eq i16 %i.ep, 0
  %.val2.i92 = load i8, ptr %i.eo, align 1
  %.0.i93 = select i1 %.not120, i8 %.val2.i92, i8 %.sroa.0102.0.extract.trunc
  br label %bb.aa

bb.z:                                             ; preds = %bb.t
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ar, i64 409
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !500
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.y, %bb.z
  %.0.i.sink = phi i8 [ %.0.i, %bb.w ], [ %.0.i93, %bb.y ], [ %i.er, %bb.z ] ; 2 uses
  store i8 %.0.i.sink, ptr %i.a, align 1, !tbaa !218
  %.not85 = icmp eq i8 %.0.i.sink, 0
  br i1 %.not85, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.es = load ptr, ptr %i.ad, align 8, !tbaa !16
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 120
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = invoke { <2 x float>, float } %i.eu(ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.ac unwind label %bb.af     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %.fca.0.extract1 = extractvalue { <2 x float>, float } %i.ev, 0
  %.fca.1.extract2 = extractvalue { <2 x float>, float } %i.ev, 1
  %i.ew = load <2 x float>, ptr %6, align 8, !tbaa !134
  %i.ex = fadd nsz <2 x float> %.fca.0.extract1, %i.ew ; 3 uses
  store <2 x float> %i.ex, ptr %6, align 8, !tbaa !134
  %i.ey = load float, ptr %i.r, align 8, !tbaa !446
  %i.ez = fadd nsz float %.fca.1.extract2, %i.ey  ; 3 uses
  store float %i.ez, ptr %i.r, align 8, !tbaa !446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.fb = load i16, ptr %i.fa, align 8, !tbaa !168 ; 2 uses
  store i16 %i.fb, ptr %i.b, align 2, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.fc = load float, ptr %1, align 4, !tbaa !501
  %i.fd = extractelement <2 x float> %i.ex, i64 0
  %i.fe = fsub nsz float %i.fd, %i.fc             ; 2 uses
  %i.ff = load float, ptr %i.f, align 4, !tbaa !146
  %i.fg = extractelement <2 x float> %i.ex, i64 1
  %i.fh = fsub nsz float %i.fg, %i.ff             ; 2 uses
  %i.fi = load float, ptr %i.l, align 4, !tbaa !446
  %i.fj = fsub nsz float %i.ez, %i.fi             ; 2 uses
  %i.fk = fmul nsz float %i.fh, %i.fh
  %i.fl = call nsz float @llvm.fmuladd.f32(float %i.fe, float %i.fe, float %i.fk)
  %i.fm = call nsz noundef float @llvm.fmuladd.f32(float %i.fj, float %i.fj, float %i.fl) ; 2 uses
  store float %i.fm, ptr %i.c, align 4, !tbaa !134
  %i.fn = load ptr, ptr %i.v, align 8, !tbaa !221 ; 14 uses
  %i.fo = load ptr, ptr %i.w, align 8, !tbaa !222
  %.not.i = icmp eq ptr %i.fn, %i.fo
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.09.0.copyload.i.i = load <2 x float>, ptr %6, align 8, !tbaa !134
  %.sroa.07.0.copyload.i.i = load <2 x float>, ptr %7, align 8, !tbaa !134
  %.sroa.28.0.copyload.i.i = load float, ptr %i.s, align 8, !tbaa !134
  %.sroa.05.0.copyload.i.i = load <2 x float>, ptr %8, align 8, !tbaa !134
  %.sroa.26.0.copyload.i.i = load float, ptr %i.t, align 8, !tbaa !134
  %i.fp = load i8, ptr %i.a, align 1, !tbaa !218
  store i8 2, ptr %i.fn, align 4, !tbaa !225
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !226
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.fr, i8 0, i64 18, i1 false)
  store i16 %i.fb, ptr %i.fs, align 4, !tbaa !227
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 22
  store i16 0, ptr %i.ft, align 2, !tbaa !228
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store <2 x float> %.sroa.09.0.copyload.i.i, ptr %i.fu, align 4, !tbaa !134
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  store float %i.ez, ptr %.sroa.212.0..sroa_idx.i.i, align 4, !tbaa !134
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 36
  store <2 x float> %.sroa.07.0.copyload.i.i, ptr %i.fv, align 4, !tbaa !134
  %.sroa.28.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 44
  store float %.sroa.28.0.copyload.i.i, ptr %.sroa.28.0..sroa_idx.i13.i, align 4, !tbaa !134
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  store <2 x float> %.sroa.05.0.copyload.i.i, ptr %i.fw, align 4, !tbaa !134
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  store float %.sroa.26.0.copyload.i.i, ptr %.sroa.24.0..sroa_idx.i.i, align 4, !tbaa !134
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 60
  store float %i.fm, ptr %i.fx, align 4, !tbaa !229
  %i.fy = load ptr, ptr %i.v, align 8, !tbaa !221
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 64
  store ptr %i.fz, ptr %i.v, align 8, !tbaa !221
  br label %_ZNSt6vectorI12PointedThingSaIS0_EE12emplace_backIJtRN4core8vector3dIfEES7_S7_fR16PointabilityTypeEEERS0_DpOT_.exit

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZNSt6vectorI12PointedThingSaIS0_EE17_M_realloc_insertIJtRN4core8vector3dIfEES7_S7_fR16PointabilityTypeEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.fn, ptr noundef nonnull align 2 dereferenceable(2) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZNSt6vectorI12PointedThingSaIS0_EE12emplace_backIJtRN4core8vector3dIfEES7_S7_fR16PointabilityTypeEEERS0_DpOT_.exit unwind label %bb.ag

_ZNSt6vectorI12PointedThingSaIS0_EE12emplace_backIJtRN4core8vector3dIfEES7_S7_fR16PointabilityTypeEEERS0_DpOT_.exit: ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.ah

bb.af:                                            ; preds = %bb.x, %bb.v, %bb.ab
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.ai

bb.ah:                                            ; preds = %_ZNSt6vectorI12PointedThingSaIS0_EE12emplace_backIJtRN4core8vector3dIfEES7_S7_fR16PointabilityTypeEEERS0_DpOT_.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.gb, %bb.ag ], [ %i.ga, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
end_hunk_1
