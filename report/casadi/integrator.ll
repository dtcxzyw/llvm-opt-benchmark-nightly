Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/integrator?download=true
inline.NumInlined: 5918
inline.NumDeleted: 1143
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZNK6casadi10Integrator4evalEPPKdPPdPxS4_Pv:bb.a

_ZNK6casadi10Integrator5set_zEPNS_16IntegratorMemoryEPKd.exit: ; preds = %.lr.ph.i.i311.prol.loopexit, %.lr.ph.i.i311, %middle.block2067, %_ZNK6casadi10Integrator5set_xEPNS_16IntegratorMemoryEPKd.exit, %.preheader16.i.i310, %.preheader.i.i316, %.lr.ph23.preheader.i.i317
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !155 ; 8 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !196 ; 6 uses
  %i.eh = ptrtoaddr ptr %i.eg to i64
  %.not.i.i318 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i318, label %_ZNK6casadi10Integrator5set_pEPNS_16IntegratorMemoryEPKd.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK6casadi10Integrator5set_zEPNS_16IntegratorMemoryEPKd.exit
  %.not15.i.i319 = icmp eq ptr %i.k, null
  %i.ei = icmp sgt i64 %i.ee, 0                   ; 2 uses
  br i1 %.not15.i.i319, label %.preheader.i.i326, label %.preheader16.i.i320

.preheader16.i.i320:                              ; preds = %bb.d
  br i1 %i.ei, label %.lr.ph.i.i321.preheader, label %_ZNK6casadi10Integrator5set_pEPNS_16IntegratorMemoryEPKd.exit

.lr.ph.i.i321.preheader:                          ; preds = %.preheader16.i.i320
  %min.iters.check2075 = icmp ult i64 %i.ee, 8
  %i.ej = sub i64 %i.l, %i.eh
  %diff.check2073 = icmp ugt i64 %i.ej, -32
  %or.cond2186 = select i1 %min.iters.check2075, i1 true, i1 %diff.check2073
  br i1 %or.cond2186, label %.lr.ph.i.i321.preheader2262, label %vector.ph2076

vector.ph2076:                                    ; preds = %.lr.ph.i.i321.preheader
  %n.vec2077 = and i64 %i.ee, 9223372036854775804 ; 4 uses
  %i.ek = shl i64 %n.vec2077, 3                   ; 2 uses
  %i.el = getelementptr i8, ptr %i.eg, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.k, i64 %i.ek
  br label %vector.body2078

vector.body2078:                                  ; preds = %vector.body2078, %vector.ph2076
  %index2079 = phi i64 [ 0, %vector.ph2076 ], [ %index.next2084, %vector.body2078 ] ; 2 uses
  %i.en = shl i64 %index2079, 3                   ; 2 uses
  %next.gep2080 = getelementptr i8, ptr %i.eg, i64 %i.en ; 2 uses
  %next.gep2081 = getelementptr i8, ptr %i.k, i64 %i.en ; 2 uses
  %i.eo = getelementptr i8, ptr %next.gep2081, i64 16
  %wide.load2082 = load <2 x double>, ptr %next.gep2081, align 8, !tbaa !58
  %wide.load2083 = load <2 x double>, ptr %i.eo, align 8, !tbaa !58
  %i.ep = getelementptr i8, ptr %next.gep2080, i64 16
  store <2 x double> %wide.load2082, ptr %next.gep2080, align 8, !tbaa !58
  store <2 x double> %wide.load2083, ptr %i.ep, align 8, !tbaa !58
  %index.next2084 = add nuw i64 %index2079, 4     ; 2 uses
  %i.eq = icmp eq i64 %index.next2084, %n.vec2077
  br i1 %i.eq, label %middle.block2085, label %vector.body2078, !llvm.loop !565

middle.block2085:                                 ; preds = %vector.body2078
  %cmp.n2086 = icmp eq i64 %i.ee, %n.vec2077
  br i1 %cmp.n2086, label %_ZNK6casadi10Integrator5set_pEPNS_16IntegratorMemoryEPKd.exit, label %.lr.ph.i.i321.preheader2262

.lr.ph.i.i321.preheader2262:                      ; preds = %.lr.ph.i.i321.preheader, %middle.block2085
  %.020.i.i322.ph = phi i64 [ 0, %.lr.ph.i.i321.preheader ], [ %n.vec2077, %middle.block2085 ] ; 4 uses
  %.01019.i.i323.ph = phi ptr [ %i.eg, %.lr.ph.i.i321.preheader ], [ %i.el, %middle.block2085 ] ; 2 uses
  %.01218.i.i324.ph = phi ptr [ %i.k, %.lr.ph.i.i321.preheader ], [ %i.em, %middle.block2085 ] ; 2 uses
  %i.er = sub nsw i64 %i.ee, %.020.i.i322.ph
  %xtraiter2268 = and i64 %i.er, 7                ; 2 uses
  %lcmp.mod2269.not = icmp eq i64 %xtraiter2268, 0
  br i1 %lcmp.mod2269.not, label %.lr.ph.i.i321.prol.loopexit, label %.lr.ph.i.i321.prol

.lr.ph.i.i321.prol:                               ; preds = %.lr.ph.i.i321.preheader2262, %.lr.ph.i.i321.prol
  %.020.i.i322.prol = phi i64 [ %i.ev, %.lr.ph.i.i321.prol ], [ %.020.i.i322.ph, %.lr.ph.i.i321.preheader2262 ]
  %.01019.i.i323.prol = phi ptr [ %i.eu, %.lr.ph.i.i321.prol ], [ %.01019.i.i323.ph, %.lr.ph.i.i321.preheader2262 ] ; 2 uses
  %.01218.i.i324.prol = phi ptr [ %i.es, %.lr.ph.i.i321.prol ], [ %.01218.i.i324.ph, %.lr.ph.i.i321.preheader2262 ] ; 2 uses
  %prol.iter2270 = phi i64 [ %prol.iter2270.next, %.lr.ph.i.i321.prol ], [ 0, %.lr.ph.i.i321.preheader2262 ]
  %i.es = getelementptr inbounds nuw i8, ptr %.01218.i.i324.prol, i64 8 ; 2 uses
  %i.et = load double, ptr %.01218.i.i324.prol, align 8, !tbaa !58
  %i.eu = getelementptr inbounds nuw i8, ptr %.01019.i.i323.prol, i64 8 ; 2 uses
  store double %i.et, ptr %.01019.i.i323.prol, align 8, !tbaa !58
  %i.ev = add nuw nsw i64 %.020.i.i322.prol, 1    ; 2 uses
  %prol.iter2270.next = add i64 %prol.iter2270, 1 ; 2 uses
  %prol.iter2270.cmp.not = icmp eq i64 %prol.iter2270.next, %xtraiter2268
  br i1 %prol.iter2270.cmp.not, label %.lr.ph.i.i321.prol.loopexit, label %.lr.ph.i.i321.prol, !llvm.loop !566

.lr.ph.i.i321.prol.loopexit:                      ; preds = %.lr.ph.i.i321.prol, %.lr.ph.i.i321.preheader2262
  %.020.i.i322.unr = phi i64 [ %.020.i.i322.ph, %.lr.ph.i.i321.preheader2262 ], [ %i.ev, %.lr.ph.i.i321.prol ]
  %.01019.i.i323.unr = phi ptr [ %.01019.i.i323.ph, %.lr.ph.i.i321.preheader2262 ], [ %i.eu, %.lr.ph.i.i321.prol ]
  %.01218.i.i324.unr = phi ptr [ %.01218.i.i324.ph, %.lr.ph.i.i321.preheader2262 ], [ %i.es, %.lr.ph.i.i321.prol ]
  %i.ew = sub nsw i64 %.020.i.i322.ph, %i.ee
  %i.ex = icmp ugt i64 %i.ew, -8
  br i1 %i.ex, label %_ZNK6casadi10Integrator5set_pEPNS_16IntegratorMemoryEPKd.exit, label %.lr.ph.i.i321

.preheader.i.i326:                                ; preds = %bb.d
  br i1 %i.ei, label %.lr.ph23.preheader.i.i327, label %_ZNK6casadi10Integrator5set_pEPNS_16IntegratorMemoryEPKd.exit

.lr.ph23.preheader.i.i327:                        ; preds = %.preheader.i.i326
  %i.ey = shl nuw i64 %i.ee, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.eg, i8 0, i64 %i.ey, i1 false), !tbaa !58
  br label %_ZNK6casadi10Integrator5set_pEPNS_16IntegratorMemoryEPKd.exit

.lr.ph.i.i321:                                    ; preds = %.lr.ph.i.i321.prol.loopexit, %.lr.ph.i.i321
  %.020.i.i322 = phi i64 [ %i.fx, %.lr.ph.i.i321 ], [ %.020.i.i322.unr, %.lr.ph.i.i321.prol.loopexit ]
  %.01019.i.i323 = phi ptr [ %i.fw, %.lr.ph.i.i321 ], [ %.01019.i.i323.unr, %.lr.ph.i.i321.prol.loopexit ] ; 9 uses
  %.01218.i.i324 = phi ptr [ %i.fu, %.lr.ph.i.i321 ], [ %.01218.i.i324.unr, %.lr.ph.i.i321.prol.loopexit ] ; 9 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.01218.i.i324, i64 8
  %i.fa = load double, ptr %.01218.i.i324, align 8, !tbaa !58
  %i.fb = getelementptr inbounds nuw i8, ptr %.01019.i.i323, i64 8
  store double %i.fa, ptr %.01019.i.i323, align 8, !tbaa !58
  %i.fc = getelementptr inbounds nuw i8, ptr %.01218.i.i324, i64 16
  %i.fd = load double, ptr %i.ez, align 8, !tbaa !58
  %i.fe = getelementptr inbounds nuw i8, ptr %.01019.i.i323, i64 16
  store double %i.fd, ptr %i.fb, align 8, !tbaa !58
  %i.ff = getelementptr inbounds nuw i8, ptr %.01218.i.i324, i64 24
  %i.fg = load double, ptr %i.fc, align 8, !tbaa !58
  %i.fh = getelementptr inbounds nuw i8, ptr %.01019.i.i323, i64 24
  store double %i.fg, ptr %i.fe, align 8, !tbaa !58
  %i.fi = getelementptr inbounds nuw i8, ptr %.01218.i.i324, i64 32
  %i.fj = load double, ptr %i.ff, align 8, !tbaa !58
  %i.fk = getelementptr inbounds nuw i8, ptr %.01019.i.i323, i64 32
  store double %i.fj, ptr %i.fh, align 8, !tbaa !58
  %i.fl = getelementptr inbounds nuw i8, ptr %.01218.i.i324, i64 40
  %i.fm = load double, ptr %i.fi, align 8, !tbaa !58
  %i.fn = getelementptr inbounds nuw i8, ptr %.01019.i.i323, i64 40
  store double %i.fm, ptr %i.fk, align 8, !tbaa !58
  %i.fo = getelementptr inbounds nuw i8, ptr %.01218.i.i324, i64 48
  %i.fp = load double, ptr %i.fl, align 8, !tbaa !58
  %i.fq = getelementptr inbounds nuw i8, ptr %.01019.i.i323, i64 48
  store double %i.fp, ptr %i.fn, align 8, !tbaa !58
  %i.fr = getelementptr inbounds nuw i8, ptr %.01218.i.i324, i64 56
  %i.fs = load double, ptr %i.fo, align 8, !tbaa !58
  %i.ft = getelementptr inbounds nuw i8, ptr %.01019.i.i323, i64 56
  store double %i.fs, ptr %i.fq, align 8, !tbaa !58
  %i.fu = getelementptr inbounds nuw i8, ptr %.01218.i.i324, i64 64
  %i.fv = load double, ptr %i.fr, align 8, !tbaa !58
  %i.fw = getelementptr inbounds nuw i8, ptr %.01019.i.i323, i64 64
  store double %i.fv, ptr %i.ft, align 8, !tbaa !58
  %i.fx = add nuw nsw i64 %.020.i.i322, 8         ; 2 uses
  %exitcond.not.i.i325.7 = icmp eq i64 %i.fx, %i.ee
  br i1 %exitcond.not.i.i325.7, label %_ZNK6casadi10Integrator5set_pEPNS_16IntegratorMemoryEPKd.exit, label %.lr.ph.i.i321, !llvm.loop !567

_ZNK6casadi10Integrator5set_pEPNS_16IntegratorMemoryEPKd.exit: ; preds = %.lr.ph.i.i321.prol.loopexit, %.lr.ph.i.i321, %middle.block2085, %_ZNK6casadi10Integrator5set_zEPNS_16IntegratorMemoryEPKd.exit, %.preheader16.i.i320, %.preheader.i.i326, %.lr.ph23.preheader.i.i327
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 368
  store i64 0, ptr %i.fy, align 8, !tbaa !197
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 5 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !150
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 296 ; 6 uses
  store double %i.ga, ptr %i.gb, align 8, !tbaa !198
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 352 ; 5 uses
  store i8 0, ptr %i.gc, align 8, !tbaa !623
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 288 ; 14 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 7 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 1576 ; 4 uses
  store i64 0, ptr %i.gd, align 8, !tbaa !199
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !59
  %i.gh = load ptr, ptr %i.ge, align 8, !tbaa !55 ; 2 uses
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = ashr exact i64 %i.gk, 3                 ; 3 uses
  %i.gm = icmp sgt i64 %i.gl, 0
  br i1 %i.gm, label %.lr.ph1508, label %._crit_edge1509

.lr.ph1508:                                       ; preds = %_ZNK6casadi10Integrator5set_pEPNS_16IntegratorMemoryEPKd.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 320 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 328 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 304 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1760 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 336
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 312 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 344 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 10 uses
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 376 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph1508, %bb.bi
  %i.hx = phi i64 [ %i.gl, %.lr.ph1508 ], [ %i.acu, %bb.bi ] ; 6 uses
  %i.hy = phi ptr [ %i.gh, %.lr.ph1508 ], [ %i.acq, %bb.bi ] ; 2 uses
  %.02041507 = phi i64 [ -1, %.lr.ph1508 ], [ %.1205, %bb.bi ] ; 2 uses
  %.02081506 = phi i1 [ true, %.lr.ph1508 ], [ %.2210, %bb.bi ]
  %.02151505 = phi ptr [ %i.z, %.lr.ph1508 ], [ %.1216, %bb.bi ] ; 7 uses
  %.02171504 = phi ptr [ %i.x, %.lr.ph1508 ], [ %.1218, %bb.bi ] ; 7 uses
  %.02191503 = phi ptr [ %i.v, %.lr.ph1508 ], [ %spec.select, %bb.bi ] ; 7 uses
  %.02301500 = phi ptr [ %i.n, %.lr.ph1508 ], [ %.1231, %bb.bi ] ; 10 uses
  %storemerge1499 = phi i64 [ 0, %.lr.ph1508 ], [ %i.aco, %bb.bi ] ; 6 uses
  %.023015002148 = ptrtoaddr ptr %.02301500 to i64
  %.021915032129 = ptrtoaddr ptr %.02191503 to i64
  %.021715042110 = ptrtoaddr ptr %.02171504 to i64
  %.021515052091 = ptrtoaddr ptr %.02151505 to i64
  %i.hz = load double, ptr %i.gb, align 8, !tbaa !198
  store double %i.hz, ptr %i.gn, align 8, !tbaa !200
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %storemerge1499
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !58 ; 2 uses
  store double %i.ib, ptr %i.go, align 8, !tbaa !201
  store double %i.ib, ptr %i.gp, align 8, !tbaa !202
  %i.ic = icmp sgt i64 %storemerge1499, %.02041507
  br i1 %i.ic, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.id = load i64, ptr %i.gq, align 8, !tbaa !203
  %.fr.i = freeze i64 %i.id                       ; 13 uses
  %i.ie = load ptr, ptr %i.gr, align 8, !tbaa !204 ; 6 uses
  %i.if = ptrtoaddr ptr %i.ie to i64
  %.not.i.i328 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i328, label %_ZNK6casadi10Integrator5set_uEPNS_16IntegratorMemoryEPKd.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not15.i.i329 = icmp eq ptr %.02301500, null
  %i.ig = icmp sgt i64 %.fr.i, 0                  ; 2 uses
  br i1 %.not15.i.i329, label %.preheader.i.i336, label %.preheader16.i.i330

.preheader16.i.i330:                              ; preds = %bb.g
  br i1 %i.ig, label %.lr.ph.i.i331.preheader, label %_ZNK6casadi10Integrator5set_uEPNS_16IntegratorMemoryEPKd.exit

.lr.ph.i.i331.preheader:                          ; preds = %.preheader16.i.i330
  %min.iters.check2151 = icmp ult i64 %.fr.i, 4
  %i.ih = sub i64 %.023015002148, %i.if
  %diff.check2149 = icmp ugt i64 %i.ih, -32
  %or.cond2187 = select i1 %min.iters.check2151, i1 true, i1 %diff.check2149
  br i1 %or.cond2187, label %.lr.ph.i.i331.preheader2237, label %vector.ph2152

vector.ph2152:                                    ; preds = %.lr.ph.i.i331.preheader
  %n.vec2153 = and i64 %.fr.i, 9223372036854775804 ; 4 uses
  %i.ii = shl i64 %n.vec2153, 3                   ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ie, i64 %i.ii
  %i.ik = getelementptr i8, ptr %.02301500, i64 %i.ii
  br label %vector.body2154

vector.body2154:                                  ; preds = %vector.body2154, %vector.ph2152
  %index2155 = phi i64 [ 0, %vector.ph2152 ], [ %index.next2160, %vector.body2154 ] ; 2 uses
  %i.il = shl i64 %index2155, 3                   ; 2 uses
  %next.gep2156 = getelementptr i8, ptr %i.ie, i64 %i.il ; 2 uses
  %next.gep2157 = getelementptr i8, ptr %.02301500, i64 %i.il ; 2 uses
  %i.im = getelementptr i8, ptr %next.gep2157, i64 16
  %wide.load2158 = load <2 x double>, ptr %next.gep2157, align 8, !tbaa !58
  %wide.load2159 = load <2 x double>, ptr %i.im, align 8, !tbaa !58
  %i.in = getelementptr i8, ptr %next.gep2156, i64 16
  store <2 x double> %wide.load2158, ptr %next.gep2156, align 8, !tbaa !58
  store <2 x double> %wide.load2159, ptr %i.in, align 8, !tbaa !58
  %index.next2160 = add nuw i64 %index2155, 4     ; 2 uses
  %i.io = icmp eq i64 %index.next2160, %n.vec2153
  br i1 %i.io, label %middle.block2161, label %vector.body2154, !llvm.loop !568

middle.block2161:                                 ; preds = %vector.body2154
  %cmp.n2162 = icmp eq i64 %.fr.i, %n.vec2153
  br i1 %cmp.n2162, label %_ZNK6casadi10Integrator5set_uEPNS_16IntegratorMemoryEPKd.exit, label %.lr.ph.i.i331.preheader2237

.lr.ph.i.i331.preheader2237:                      ; preds = %.lr.ph.i.i331.preheader, %middle.block2161
  %.020.i.i332.ph = phi i64 [ 0, %.lr.ph.i.i331.preheader ], [ %n.vec2153, %middle.block2161 ] ; 4 uses
  %.01019.i.i333.ph = phi ptr [ %i.ie, %.lr.ph.i.i331.preheader ], [ %i.ij, %middle.block2161 ] ; 2 uses
  %.01218.i.i334.ph = phi ptr [ %.02301500, %.lr.ph.i.i331.preheader ], [ %i.ik, %middle.block2161 ] ; 2 uses
  %i.ip = sub nsw i64 %.fr.i, %.020.i.i332.ph
  %xtraiter2271 = and i64 %i.ip, 7                ; 2 uses
  %lcmp.mod2272.not = icmp eq i64 %xtraiter2271, 0
  br i1 %lcmp.mod2272.not, label %.lr.ph.i.i331.prol.loopexit, label %.lr.ph.i.i331.prol

.lr.ph.i.i331.prol:                               ; preds = %.lr.ph.i.i331.preheader2237, %.lr.ph.i.i331.prol
  %.020.i.i332.prol = phi i64 [ %i.it, %.lr.ph.i.i331.prol ], [ %.020.i.i332.ph, %.lr.ph.i.i331.preheader2237 ]
  %.01019.i.i333.prol = phi ptr [ %i.is, %.lr.ph.i.i331.prol ], [ %.01019.i.i333.ph, %.lr.ph.i.i331.preheader2237 ] ; 2 uses
  %.01218.i.i334.prol = phi ptr [ %i.iq, %.lr.ph.i.i331.prol ], [ %.01218.i.i334.ph, %.lr.ph.i.i331.preheader2237 ] ; 2 uses
  %prol.iter2273 = phi i64 [ %prol.iter2273.next, %.lr.ph.i.i331.prol ], [ 0, %.lr.ph.i.i331.preheader2237 ]
  %i.iq = getelementptr inbounds nuw i8, ptr %.01218.i.i334.prol, i64 8 ; 2 uses
  %i.ir = load double, ptr %.01218.i.i334.prol, align 8, !tbaa !58
  %i.is = getelementptr inbounds nuw i8, ptr %.01019.i.i333.prol, i64 8 ; 2 uses
  store double %i.ir, ptr %.01019.i.i333.prol, align 8, !tbaa !58
  %i.it = add nuw nsw i64 %.020.i.i332.prol, 1    ; 2 uses
  %prol.iter2273.next = add i64 %prol.iter2273, 1 ; 2 uses
  %prol.iter2273.cmp.not = icmp eq i64 %prol.iter2273.next, %xtraiter2271
  br i1 %prol.iter2273.cmp.not, label %.lr.ph.i.i331.prol.loopexit, label %.lr.ph.i.i331.prol, !llvm.loop !569

.lr.ph.i.i331.prol.loopexit:                      ; preds = %.lr.ph.i.i331.prol, %.lr.ph.i.i331.preheader2237
  %.020.i.i332.unr = phi i64 [ %.020.i.i332.ph, %.lr.ph.i.i331.preheader2237 ], [ %i.it, %.lr.ph.i.i331.prol ]
  %.01019.i.i333.unr = phi ptr [ %.01019.i.i333.ph, %.lr.ph.i.i331.preheader2237 ], [ %i.is, %.lr.ph.i.i331.prol ]
  %.01218.i.i334.unr = phi ptr [ %.01218.i.i334.ph, %.lr.ph.i.i331.preheader2237 ], [ %i.iq, %.lr.ph.i.i331.prol ]
  %i.iu = sub nsw i64 %.020.i.i332.ph, %.fr.i
  %i.iv = icmp ugt i64 %i.iu, -8
  br i1 %i.iv, label %_ZNK6casadi10Integrator5set_uEPNS_16IntegratorMemoryEPKd.exit, label %.lr.ph.i.i331

.preheader.i.i336:                                ; preds = %bb.g
  br i1 %i.ig, label %.lr.ph23.preheader.i.i337, label %_ZNK6casadi10Integrator5set_uEPNS_16IntegratorMemoryEPKd.exit.thread

.lr.ph23.preheader.i.i337:                        ; preds = %.preheader.i.i336
  %i.iw = shl nuw i64 %.fr.i, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ie, i8 0, i64 %i.iw, i1 false), !tbaa !58
  br label %_ZNK6casadi10Integrator5set_uEPNS_16IntegratorMemoryEPKd.exit.thread

.lr.ph.i.i331:                                    ; preds = %.lr.ph.i.i331.prol.loopexit, %.lr.ph.i.i331
  %.020.i.i332 = phi i64 [ %i.jv, %.lr.ph.i.i331 ], [ %.020.i.i332.unr, %.lr.ph.i.i331.prol.loopexit ]
  %.01019.i.i333 = phi ptr [ %i.ju, %.lr.ph.i.i331 ], [ %.01019.i.i333.unr, %.lr.ph.i.i331.prol.loopexit ] ; 9 uses
  %.01218.i.i334 = phi ptr [ %i.js, %.lr.ph.i.i331 ], [ %.01218.i.i334.unr, %.lr.ph.i.i331.prol.loopexit ] ; 9 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.01218.i.i334, i64 8
  %i.iy = load double, ptr %.01218.i.i334, align 8, !tbaa !58
  %i.iz = getelementptr inbounds nuw i8, ptr %.01019.i.i333, i64 8
  store double %i.iy, ptr %.01019.i.i333, align 8, !tbaa !58
  %i.ja = getelementptr inbounds nuw i8, ptr %.01218.i.i334, i64 16
  %i.jb = load double, ptr %i.ix, align 8, !tbaa !58
  %i.jc = getelementptr inbounds nuw i8, ptr %.01019.i.i333, i64 16
  store double %i.jb, ptr %i.iz, align 8, !tbaa !58
  %i.jd = getelementptr inbounds nuw i8, ptr %.01218.i.i334, i64 24
  %i.je = load double, ptr %i.ja, align 8, !tbaa !58
  %i.jf = getelementptr inbounds nuw i8, ptr %.01019.i.i333, i64 24
  store double %i.je, ptr %i.jc, align 8, !tbaa !58
  %i.jg = getelementptr inbounds nuw i8, ptr %.01218.i.i334, i64 32
  %i.jh = load double, ptr %i.jd, align 8, !tbaa !58
  %i.ji = getelementptr inbounds nuw i8, ptr %.01019.i.i333, i64 32
  store double %i.jh, ptr %i.jf, align 8, !tbaa !58
  %i.jj = getelementptr inbounds nuw i8, ptr %.01218.i.i334, i64 40
  %i.jk = load double, ptr %i.jg, align 8, !tbaa !58
  %i.jl = getelementptr inbounds nuw i8, ptr %.01019.i.i333, i64 40
  store double %i.jk, ptr %i.ji, align 8, !tbaa !58
  %i.jm = getelementptr inbounds nuw i8, ptr %.01218.i.i334, i64 48
  %i.jn = load double, ptr %i.jj, align 8, !tbaa !58
  %i.jo = getelementptr inbounds nuw i8, ptr %.01019.i.i333, i64 48
  store double %i.jn, ptr %i.jl, align 8, !tbaa !58
  %i.jp = getelementptr inbounds nuw i8, ptr %.01218.i.i334, i64 56
  %i.jq = load double, ptr %i.jm, align 8, !tbaa !58
  %i.jr = getelementptr inbounds nuw i8, ptr %.01019.i.i333, i64 56
  store double %i.jq, ptr %i.jo, align 8, !tbaa !58
  %i.js = getelementptr inbounds nuw i8, ptr %.01218.i.i334, i64 64
  %i.jt = load double, ptr %i.jp, align 8, !tbaa !58
  %i.ju = getelementptr inbounds nuw i8, ptr %.01019.i.i333, i64 64
  store double %i.jt, ptr %i.jr, align 8, !tbaa !58
  %i.jv = add nuw nsw i64 %.020.i.i332, 8         ; 2 uses
  %exitcond.not.i.i335.7 = icmp eq i64 %i.jv, %.fr.i
  br i1 %exitcond.not.i.i335.7, label %_ZNK6casadi10Integrator5set_uEPNS_16IntegratorMemoryEPKd.exit, label %.lr.ph.i.i331, !llvm.loop !570

_ZNK6casadi10Integrator5set_uEPNS_16IntegratorMemoryEPKd.exit: ; preds = %.lr.ph.i.i331.prol.loopexit, %.lr.ph.i.i331, %middle.block2161, %bb.f, %.preheader16.i.i330
  %i.jw = icmp eq i64 %.fr.i, 0
  %i.jx = icmp eq ptr %.02301500, null
  %or.cond.i = or i1 %i.jx, %i.jw
  br i1 %or.cond.i, label %_ZNK6casadi10Integrator5set_uEPNS_16IntegratorMemoryEPKd.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK6casadi10Integrator5set_uEPNS_16IntegratorMemoryEPKd.exit
  %.not.not26.i = icmp sgt i64 %.fr.i, 0
  br i1 %.not.not26.i, label %.preheader.split.us.preheader.i, label %.preheader.split.i

.preheader.split.us.preheader.i:                  ; preds = %.preheader.i
  %43 = add nsw i64 %i.hx, -1                     ; 2 uses
  %i.jy = add nsw i64 %storemerge1499, 1          ; 2 uses
  %i.jz = icmp slt i64 %i.jy, %i.hx
  br i1 %i.jz, label %.lr.ph.us.i.preheader, label %_ZNK6casadi10Integrator9next_stopExPKd.exit

.lr.ph.us.i.preheader:                            ; preds = %.preheader.split.us.preheader.i
  %.pre = load double, ptr %.02301500, align 8, !tbaa !58
  %exitcond.not.not.i2046 = icmp eq i64 %.fr.i, 1
  br label %.lr.ph.us.i

.preheader.split.us.i.loopexit:                   ; preds = %.lr.ph36.i, %.lr.ph36.i.preheader
  %i.ka = add i64 %i.kc, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ka, %i.hx
  br i1 %exitcond.not, label %_ZNK6casadi10Integrator9next_stopExPKd.exit, label %.lr.ph.us.i, !llvm.loop !5

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %.preheader.split.us.i.loopexit
  %i.kb = phi double [ %i.ke, %.preheader.split.us.i.loopexit ], [ %.pre, %.lr.ph.us.i.preheader ]
  %i.kc = phi i64 [ %i.ka, %.preheader.split.us.i.loopexit ], [ %i.jy, %.lr.ph.us.i.preheader ] ; 2 uses
  %.018.us.i1497 = phi ptr [ %i.kd, %.preheader.split.us.i.loopexit ], [ %.02301500, %.lr.ph.us.i.preheader ] ; 2 uses
  %.020.us.i1496 = phi i64 [ %i.kc, %.preheader.split.us.i.loopexit ], [ %storemerge1499, %.lr.ph.us.i.preheader ] ; 2 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %.018.us.i1497, i64 %.fr.i ; 3 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !58 ; 2 uses
  %i.kf = fcmp une double %i.kb, %i.ke
  br i1 %i.kf, label %_ZNK6casadi10Integrator9next_stopExPKd.exit, label %.lr.ph36.i.preheader

.lr.ph36.i.preheader:                             ; preds = %.lr.ph.us.i
  br i1 %exitcond.not.not.i2046, label %.preheader.split.us.i.loopexit, label %.lr.ph2047

.lr.ph36.i:                                       ; preds = %.lr.ph2047
  %i.kg = add nuw i64 %i.kh, 1                    ; 2 uses
  %exitcond.not.not.i = icmp eq i64 %i.kg, %.fr.i
  br i1 %exitcond.not.not.i, label %.preheader.split.us.i.loopexit, label %.lr.ph2047, !llvm.loop !5

.lr.ph2047:                                       ; preds = %.lr.ph36.i.preheader, %.lr.ph36.i
  %i.kh = phi i64 [ %i.kg, %.lr.ph36.i ], [ 1, %.lr.ph36.i.preheader ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %.018.us.i1497, i64 %i.kh
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !58
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kh
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !58
  %i.km = fcmp une double %i.kj, %i.kl
  br i1 %i.km, label %_ZNK6casadi10Integrator9next_stopExPKd.exit, label %.lr.ph36.i, !llvm.loop !5

.preheader.split.i:                               ; preds = %.preheader.i
  %44 = add nsw i64 %storemerge1499, 1
  %i.kn = icmp slt i64 %44, %i.hx
  %i.ko = add nsw i64 %i.hx, -1
  %spec.select.i = select i1 %i.kn, i64 %i.ko, i64 %storemerge1499
  br label %_ZNK6casadi10Integrator9next_stopExPKd.exit

_ZNK6casadi10Integrator5set_uEPNS_16IntegratorMemoryEPKd.exit.thread: ; preds = %.lr.ph23.preheader.i.i337, %.preheader.i.i336, %_ZNK6casadi10Integrator5set_uEPNS_16IntegratorMemoryEPKd.exit
  %i.kp = add nsw i64 %i.hx, -1
  br label %_ZNK6casadi10Integrator9next_stopExPKd.exit

_ZNK6casadi10Integrator9next_stopExPKd.exit:      ; preds = %.lr.ph.us.i, %.preheader.split.us.i.loopexit, %.lr.ph2047, %.preheader.split.us.preheader.i, %.preheader.split.i, %_ZNK6casadi10Integrator5set_uEPNS_16IntegratorMemoryEPKd.exit.thread
  %.2.i = phi i64 [ %i.kp, %_ZNK6casadi10Integrator5set_uEPNS_16IntegratorMemoryEPKd.exit.thread ], [ %spec.select.i, %.preheader.split.i ], [ %.020.us.i1496, %.lr.ph2047 ], [ %43, %.preheader.split.us.preheader.i ], [ %.020.us.i1496, %.lr.ph.us.i ], [ %43, %.preheader.split.us.i.loopexit ] ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %.2.i
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !58 ; 2 uses
  store double %i.kr, ptr %i.gs, align 8, !tbaa !205
  store double %i.kr, ptr %i.gt, align 8, !tbaa !206
  store i8 1, ptr %i.gc, align 8, !tbaa !623
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6casadi10Integrator9next_stopExPKd.exit, %bb.e
  %.1205 = phi i64 [ %.2.i, %_ZNK6casadi10Integrator9next_stopExPKd.exit ], [ %.02041507, %bb.e ]
  %i.ks = load i64, ptr %i.gv, align 8, !tbaa !207 ; 2 uses
  %i.kt = icmp slt i64 %i.ks, 1
  br i1 %i.kt, label %_ZSt6fill_nIPxxiET_S1_T0_RKT1_.exit.preheader, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h
  %i.ku = load ptr, ptr %i.gu, align 8, !tbaa !208
  %.idx.i.i = shl nuw nsw i64 %i.ks, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ku, i8 0, i64 %.idx.i.i, i1 false), !tbaa !209
  br label %_ZSt6fill_nIPxxiET_S1_T0_RKT1_.exit.preheader

_ZSt6fill_nIPxxiET_S1_T0_RKT1_.exit.preheader:    ; preds = %.lr.ph.i.i.i.i, %bb.h
  br label %_ZSt6fill_nIPxxiET_S1_T0_RKT1_.exit

_ZSt6fill_nIPxxiET_S1_T0_RKT1_.exit:              ; preds = %_ZSt6fill_nIPxxiET_S1_T0_RKT1_.exit.preheader, %bb.bc
  %.1209 = phi i1 [ %.2210, %bb.bc ], [ %.02081506, %_ZSt6fill_nIPxxiET_S1_T0_RKT1_.exit.preheader ] ; 2 uses
  %i.kv = load i8, ptr %i.gc, align 8, !tbaa !623, !range !210, !noundef !211
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZSt6fill_nIPxxiET_S1_T0_RKT1_.exit
  %i.kx = load ptr, ptr %0, align 8, !tbaa !49
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 976
  %i.kz = load ptr, ptr %i.ky, align 8
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(1984) %0, ptr noundef nonnull %5, i1 noundef zeroext %.1209)
  store i8 0, ptr %i.gc, align 8, !tbaa !623
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZSt6fill_nIPxxiET_S1_T0_RKT1_.exit
  %.2210 = phi i1 [ false, %bb.i ], [ %.1209, %_ZSt6fill_nIPxxiET_S1_T0_RKT1_.exit ] ; 2 uses
  %i.la = load i8, ptr %i.gw, align 8, !tbaa !212, !range !210, !noundef !211
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %bb.k, label %bb.ay

bb.k:                                             ; preds = %bb.j
  %i.lc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv()
  %i.ld = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi14message_prefixERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.lc) ; 2 uses
  %i.le = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ld, ptr noundef nonnull @.str.44, i64 noundef 10) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  call void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.gd)
  %i.lf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.45, i64 noundef 9)
          to label %.noexc unwind label %bb.ap    ; 6 uses

.noexc:                                           ; preds = %bb.k
  store ptr %i.gx, ptr %12, align 8, !tbaa !29, !alias.scope !624
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !33 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 16 ; 5 uses
  %i.li = icmp eq ptr %i.lg, %i.lh
  br i1 %i.li, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.l:                                             ; preds = %.noexc
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !35 ; 3 uses
  %i.ll = icmp ult i64 %i.lk, 16
  call void @llvm.assume(i1 %i.ll)
  %i.lm = add nuw nsw i64 %i.lk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gx, ptr noundef nonnull align 8 dereferenceable(1) %i.lh, i64 %i.lm, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.lg, ptr %12, align 8, !tbaa !33, !alias.scope !624
  %i.ln = load i64, ptr %i.lh, align 8, !tbaa !34
  store i64 %i.ln, ptr %i.gx, align 8, !tbaa !34, !alias.scope !624
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %i.lo = phi i64 [ %i.lk, %bb.l ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store i64 %i.lo, ptr %i.gy, align 8, !tbaa !35, !alias.scope !624
  store ptr %i.lh, ptr %i.lf, align 8, !tbaa !33
  store i64 0, ptr %i.lp, align 8, !tbaa !35
  store i8 0, ptr %i.lh, align 8, !tbaa !34
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.lq = load i64, ptr %i.gy, align 8, !tbaa !35, !noalias !625
  %i.lr = add i64 %i.lq, -4611686018427387877
  %i.ls = icmp ult i64 %i.lr, 27
  br i1 %i.ls, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.289) #34
          to label %.noexc341 unwind label %.loopexit.split-lp921

.noexc341:                                        ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.m
  %i.lt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.46, i64 noundef 27)
          to label %.noexc342 unwind label %.loopexit920 ; 6 uses

.noexc342:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.gz, ptr %11, align 8, !tbaa !29, !alias.scope !625
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !33 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 16 ; 5 uses
  %i.lw = icmp eq ptr %i.lu, %i.lv
  br i1 %i.lw, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338

bb.o:                                             ; preds = %.noexc342
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !35 ; 3 uses
  %i.lz = icmp ult i64 %i.ly, 16
  call void @llvm.assume(i1 %i.lz)
  %i.ma = add nuw nsw i64 %i.ly, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gz, ptr noundef nonnull align 8 dereferenceable(1) %i.lv, i64 %i.ma, i1 false)
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338: ; preds = %.noexc342
  store ptr %i.lu, ptr %11, align 8, !tbaa !33, !alias.scope !625
  %i.mb = load i64, ptr %i.lv, align 8, !tbaa !34
  store i64 %i.mb, ptr %i.gz, align 8, !tbaa !34, !alias.scope !625
  %.phi.trans.insert.i339 = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %.pre.i340 = load i64, ptr %.phi.trans.insert.i339, align 8, !tbaa !35
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338, %bb.o
  %i.mc = phi i64 [ %i.ly, %bb.o ], [ %.pre.i340, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338 ]
  %i.md = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store i64 %i.mc, ptr %i.ha, align 8, !tbaa !35, !alias.scope !625
  store ptr %i.lv, ptr %i.lt, align 8, !tbaa !33
  store i64 0, ptr %i.md, align 8, !tbaa !35
  store i8 0, ptr %i.lv, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  invoke void @_ZN6casadi3strIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.gb)
          to label %bb.q unwind label %bb.aq

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  %i.me = load i64, ptr %i.ha, align 8, !tbaa !35, !noalias !626 ; 4 uses
  %i.mf = load i64, ptr %i.hb, align 8, !tbaa !35, !noalias !626 ; 4 uses
  %i.mg = add i64 %i.mf, %i.me                    ; 2 uses
  %i.mh = load ptr, ptr %11, align 8, !tbaa !33, !noalias !626 ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.gz
  br i1 %i.mi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.q
  %i.mj = icmp ult i64 %i.me, 16
  call void @llvm.assume(i1 %i.mj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %bb.q
  %i.mk = load i64, ptr %i.gz, align 8, !tbaa !34, !noalias !626
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ml = phi i64 [ %i.mk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.mm = icmp ugt i64 %i.mg, %i.ml
  br i1 %i.mm, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.mn = load ptr, ptr %14, align 8, !tbaa !33, !noalias !626
  %i.mo = icmp eq ptr %i.mn, %i.hc
  br i1 %i.mo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.r
  %i.mp = icmp ult i64 %i.mf, 16
  call void @llvm.assume(i1 %i.mp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.r
  %i.mq = load i64, ptr %i.hc, align 8, !tbaa !34, !noalias !626
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.mr = phi i64 [ %i.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.mg, %i.mr
  br i1 %.not.i, label %bb.t, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.ms = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef %i.mh, i64 noundef %i.me)
          to label %.noexc344 unwind label %.loopexit925 ; 5 uses

.noexc344:                                        ; preds = %.critedge.i
  store ptr %i.hd, ptr %10, align 8, !tbaa !29, !alias.scope !626
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !33 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 16 ; 5 uses
  %i.mv = icmp eq ptr %i.mt, %i.mu
  br i1 %i.mv, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.s:                                             ; preds = %.noexc344
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !35 ; 2 uses
  %i.my = icmp ult i64 %i.mx, 16
  call void @llvm.assume(i1 %i.my)
  %i.mz = add nuw nsw i64 %i.mx, 1
end_hunk_0
