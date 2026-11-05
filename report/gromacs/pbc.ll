Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pbc?download=true
inline.NumInlined: 412
inline.NumDeleted: 186
loop-unroll.NumCompletelyUnrolled: 90
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_Z6pbc_dxPK5t_pbcPKfS3_Pf:bb.a
  %foldExtExtBinop = fmul <2 x float> %i.gh, %i.gh
  %i.gl = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.gm = extractelement <2 x float> %i.gh, i64 0 ; 2 uses
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.gm, float %i.gm, float %i.gl)
  %i.go = tail call noundef float @llvm.fmuladd.f32(float %i.gk, float %i.gk, float %i.gn) ; 2 uses
  %i.gp = fcmp olt float %i.go, %.0188298535
  br i1 %i.gp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph536
  store <2 x float> %i.gh, ptr %3, align 4, !tbaa !23
  store float %i.gk, ptr %i.n, align 4, !tbaa !23
  %.pre363 = load float, ptr %i.fw, align 4, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph536
  %i.gq = phi float [ %.pre363, %bb.g ], [ %i.ge, %.lr.ph536 ] ; 2 uses
  %.1189 = phi float [ %i.go, %bb.g ], [ %.0188298535, %.lr.ph536 ] ; 2 uses
  %i.gr = fcmp ogt float %.1189, %i.gq
  br i1 %i.gr, label %bb.f, label %..critedge.loopexit492_crit_edge, !llvm.loop !82

.preheader221:                                    ; preds = %.preheader222
  %i.gs = load float, ptr %i.ab, align 4, !tbaa !23
  %i.gt = fcmp ogt float %i.m, %i.gs
  br i1 %i.gt, label %.lr.ph281, label %.preheader219

.preheader219:                                    ; preds = %.lr.ph281, %.preheader221
  %i.gu = phi float [ %i.m, %.preheader221 ], [ %i.gz, %.lr.ph281 ] ; 2 uses
  %i.gv = load float, ptr %i.ad, align 4, !tbaa !23
  %i.gw = fcmp ugt float %i.gu, %i.gv
  br i1 %i.gw, label %.loopexit220, label %.lr.ph284

.lr.ph281:                                        ; preds = %.preheader221, %.lr.ph281
  %i.gx = phi float [ %i.gz, %.lr.ph281 ], [ %i.m, %.preheader221 ]
  %i.gy = load float, ptr %i.ac, align 4, !tbaa !23
  %i.gz = fsub float %i.gx, %i.gy                 ; 4 uses
  store float %i.gz, ptr %3, align 4, !tbaa !23
  %i.ha = load float, ptr %i.ab, align 4, !tbaa !23
  %i.hb = fcmp ogt float %i.gz, %i.ha
  br i1 %i.hb, label %.lr.ph281, label %.preheader219, !llvm.loop !83

.lr.ph284:                                        ; preds = %.preheader219, %.lr.ph284
  %i.hc = phi float [ %i.he, %.lr.ph284 ], [ %i.gu, %.preheader219 ]
  %i.hd = load float, ptr %i.ac, align 4, !tbaa !23
  %i.he = fadd float %i.hc, %i.hd                 ; 3 uses
  store float %i.he, ptr %3, align 4, !tbaa !23
  %i.hf = load float, ptr %i.ad, align 4, !tbaa !23
  %i.hg = fcmp ugt float %i.he, %i.hf
  br i1 %i.hg, label %.loopexit220, label %.lr.ph284, !llvm.loop !84

.loopexit220:                                     ; preds = %.lr.ph284, %.preheader219
  %.not205.1 = icmp eq i32 %i.aa, 1
  br i1 %.not205.1, label %.preheader221.2, label %.preheader221.1

.preheader221.1:                                  ; preds = %.preheader222, %.loopexit220
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !23
  %i.hj = fcmp ogt float %i.l, %i.hi
  br i1 %i.hj, label %.lr.ph281.1, label %.preheader219.1

.lr.ph281.1:                                      ; preds = %.preheader221.1
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph281.1
  %i.hl = phi float [ %i.l, %.lr.ph281.1 ], [ %i.hn, %bb.i ]
  %i.hm = load float, ptr %i.hk, align 4, !tbaa !23
  %i.hn = fsub float %i.hl, %i.hm                 ; 4 uses
  store float %i.hn, ptr %i.h, align 4, !tbaa !23
  %i.ho = load float, ptr %i.hh, align 4, !tbaa !23
  %i.hp = fcmp ogt float %i.hn, %i.ho
  br i1 %i.hp, label %bb.i, label %.preheader219.1, !llvm.loop !83

.preheader219.1:                                  ; preds = %bb.i, %.preheader221.1
  %i.hq = phi float [ %i.l, %.preheader221.1 ], [ %i.hn, %bb.i ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !23
  %i.ht = fcmp ugt float %i.hq, %i.hs
  br i1 %i.ht, label %.loopexit220.1, label %.lr.ph284.1

.lr.ph284.1:                                      ; preds = %.preheader219.1
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph284.1
  %i.hv = phi float [ %i.hq, %.lr.ph284.1 ], [ %i.hx, %bb.j ]
  %i.hw = load float, ptr %i.hu, align 4, !tbaa !23
  %i.hx = fadd float %i.hv, %i.hw                 ; 3 uses
  store float %i.hx, ptr %i.h, align 4, !tbaa !23
  %i.hy = load float, ptr %i.hr, align 4, !tbaa !23
  %i.hz = fcmp ugt float %i.hx, %i.hy
  br i1 %i.hz, label %.loopexit220.1, label %bb.j, !llvm.loop !84

.loopexit220.1:                                   ; preds = %bb.j, %.preheader219.1
  %.not205.2 = icmp eq i32 %i.aa, 2
  br i1 %.not205.2, label %.critedge, label %.preheader221.2

.preheader221.2:                                  ; preds = %.loopexit220, %.loopexit220.1
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !23
  %i.ic = fcmp ogt float %i.g, %i.ib
  br i1 %i.ic, label %.lr.ph281.2, label %.preheader219.2

.lr.ph281.2:                                      ; preds = %.preheader221.2
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph281.2
  %i.ie = phi float [ %i.g, %.lr.ph281.2 ], [ %i.ig, %bb.k ]
  %i.if = load float, ptr %i.id, align 4, !tbaa !23
  %i.ig = fsub float %i.ie, %i.if                 ; 4 uses
  store float %i.ig, ptr %i.n, align 4, !tbaa !23
  %i.ih = load float, ptr %i.ia, align 4, !tbaa !23
  %i.ii = fcmp ogt float %i.ig, %i.ih
  br i1 %i.ii, label %bb.k, label %.preheader219.2, !llvm.loop !83

.preheader219.2:                                  ; preds = %bb.k, %.preheader221.2
  %i.ij = phi float [ %i.g, %.preheader221.2 ], [ %i.ig, %bb.k ] ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !23
  %i.im = fcmp ugt float %i.ij, %i.il
  br i1 %i.im, label %.critedge, label %.lr.ph284.2

.lr.ph284.2:                                      ; preds = %.preheader219.2
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph284.2
  %i.io = phi float [ %i.ij, %.lr.ph284.2 ], [ %i.iq, %bb.l ]
  %i.ip = load float, ptr %i.in, align 4, !tbaa !23
  %i.iq = fadd float %i.io, %i.ip                 ; 3 uses
  store float %i.iq, ptr %i.n, align 4, !tbaa !23
  %i.ir = load float, ptr %i.ik, align 4, !tbaa !23
  %i.is = fcmp ugt float %i.iq, %i.ir
  br i1 %i.is, label %.critedge, label %bb.l, !llvm.loop !84

.preheader230:                                    ; preds = %.preheader231
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.iu = load float, ptr %i.it, align 4, !tbaa !23
  %i.iv = fcmp ogt float %i.g, %i.iu
  br i1 %i.iv, label %.preheader227.us.preheader, label %.preheader229

.preheader227.us.preheader:                       ; preds = %.preheader230
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %.preheader227.us

.preheader227.us:                                 ; preds = %.preheader227.us.preheader, %.preheader227.us
  %i.iz = phi float [ %i.m, %.preheader227.us.preheader ], [ %i.jh, %.preheader227.us ]
  %i.ja = phi float [ %i.l, %.preheader227.us.preheader ], [ %i.jf, %.preheader227.us ]
  %i.jb = phi float [ %i.g, %.preheader227.us.preheader ], [ %i.jd, %.preheader227.us ]
  %i.jc = load float, ptr %i.ix, align 4, !tbaa !23
  %i.jd = fsub float %i.jb, %i.jc                 ; 4 uses
  store float %i.jd, ptr %i.n, align 4, !tbaa !23
  %i.je = load float, ptr %i.iy, align 4, !tbaa !23
  %i.jf = fsub float %i.ja, %i.je                 ; 3 uses
  store float %i.jf, ptr %i.h, align 4, !tbaa !23
  %i.jg = load float, ptr %i.iw, align 4, !tbaa !23
  %i.jh = fsub float %i.iz, %i.jg                 ; 3 uses
  store float %i.jh, ptr %3, align 4, !tbaa !23
  %i.ji = load float, ptr %i.it, align 4, !tbaa !23
  %i.jj = fcmp ogt float %i.jd, %i.ji
  br i1 %i.jj, label %.preheader227.us, label %.preheader229, !llvm.loop !85

.preheader229:                                    ; preds = %.preheader227.us, %.preheader230
  %i.jk = phi float [ %i.m, %.preheader230 ], [ %i.jh, %.preheader227.us ] ; 2 uses
  %i.jl = phi float [ %i.l, %.preheader230 ], [ %i.jf, %.preheader227.us ] ; 2 uses
  %i.jm = phi float [ %i.g, %.preheader230 ], [ %i.jd, %.preheader227.us ] ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !23
  %i.jp = fcmp ugt float %i.jm, %i.jo
  br i1 %i.jp, label %.loopexit454, label %.preheader225.us.preheader

.preheader225.us.preheader:                       ; preds = %.preheader229
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %.preheader225.us

.preheader225.us:                                 ; preds = %.preheader225.us.preheader, %.preheader225.us
  %i.jt = phi float [ %i.jk, %.preheader225.us.preheader ], [ %i.kb, %.preheader225.us ]
  %i.ju = phi float [ %i.jl, %.preheader225.us.preheader ], [ %i.jz, %.preheader225.us ]
  %i.jv = phi float [ %i.jm, %.preheader225.us.preheader ], [ %i.jx, %.preheader225.us ]
  %i.jw = load float, ptr %i.jr, align 4, !tbaa !23
  %i.jx = fadd float %i.jw, %i.jv                 ; 4 uses
  store float %i.jx, ptr %i.n, align 4, !tbaa !23
  %i.jy = load float, ptr %i.js, align 4, !tbaa !23
  %i.jz = fadd float %i.jy, %i.ju                 ; 3 uses
  store float %i.jz, ptr %i.h, align 4, !tbaa !23
  %i.ka = load float, ptr %i.jq, align 4, !tbaa !23
  %i.kb = fadd float %i.ka, %i.jt                 ; 3 uses
  store float %i.kb, ptr %3, align 4, !tbaa !23
  %i.kc = load float, ptr %i.jn, align 4, !tbaa !23
  %i.kd = fcmp ugt float %i.jx, %i.kc
  br i1 %i.kd, label %.loopexit454, label %.preheader225.us, !llvm.loop !86

.loopexit454:                                     ; preds = %.preheader225.us, %.preheader229
  %i.ke = phi float [ %i.jk, %.preheader229 ], [ %i.kb, %.preheader225.us ] ; 2 uses
  %i.kf = phi float [ %i.jl, %.preheader229 ], [ %i.jz, %.preheader225.us ] ; 2 uses
  %.lcssa244 = phi float [ %i.jm, %.preheader229 ], [ %i.jx, %.preheader225.us ] ; 4 uses
  %5 = tail call float @llvm.fmuladd.f32(float %.lcssa244, float %.lcssa244, float 0.000000e+00) ; 2 uses
  %.not204.1 = icmp eq i32 %i.v, 1
  br i1 %.not204.1, label %.preheader230.2, label %.preheader230.1

.preheader230.1:                                  ; preds = %.preheader231, %.loopexit454
  %.3191439 = phi float [ %5, %.loopexit454 ], [ 0.000000e+00, %.preheader231 ]
  %i.kg = phi float [ %i.kf, %.loopexit454 ], [ %i.l, %.preheader231 ] ; 3 uses
  %i.kh = phi float [ %i.ke, %.loopexit454 ], [ %i.m, %.preheader231 ] ; 2 uses
  %i.ki = phi float [ %.lcssa244, %.loopexit454 ], [ %i.g, %.preheader231 ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !23
  %i.kl = fcmp ogt float %i.kg, %i.kk
  br i1 %i.kl, label %.preheader227.us.preheader.1, label %.preheader229.1

.preheader227.us.preheader.1:                     ; preds = %.preheader230.1
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.preheader227.us.1

.preheader227.us.1:                               ; preds = %.preheader227.us.1, %.preheader227.us.preheader.1
  %i.ko = phi float [ %i.kt, %.preheader227.us.1 ], [ %i.kh, %.preheader227.us.preheader.1 ]
  %i.kp = phi float [ %i.kr, %.preheader227.us.1 ], [ %i.kg, %.preheader227.us.preheader.1 ]
  %i.kq = load float, ptr %i.kn, align 4, !tbaa !23
  %i.kr = fsub float %i.kp, %i.kq                 ; 4 uses
  store float %i.kr, ptr %i.h, align 4, !tbaa !23
  %i.ks = load float, ptr %i.km, align 4, !tbaa !23
  %i.kt = fsub float %i.ko, %i.ks                 ; 3 uses
  store float %i.kt, ptr %3, align 4, !tbaa !23
  %i.ku = load float, ptr %i.kj, align 4, !tbaa !23
  %i.kv = fcmp ogt float %i.kr, %i.ku
  br i1 %i.kv, label %.preheader227.us.1, label %.preheader229.1, !llvm.loop !85

.preheader229.1:                                  ; preds = %.preheader227.us.1, %.preheader230.1
  %i.kw = phi float [ %i.kh, %.preheader230.1 ], [ %i.kt, %.preheader227.us.1 ] ; 2 uses
  %i.kx = phi float [ %i.kg, %.preheader230.1 ], [ %i.kr, %.preheader227.us.1 ] ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !23
  %i.la = fcmp ugt float %i.kx, %i.kz
  br i1 %i.la, label %.loopexit, label %.preheader225.us.preheader.1

.preheader225.us.preheader.1:                     ; preds = %.preheader229.1
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.preheader225.us.1

.preheader225.us.1:                               ; preds = %.preheader225.us.1, %.preheader225.us.preheader.1
  %i.ld = phi float [ %i.li, %.preheader225.us.1 ], [ %i.kw, %.preheader225.us.preheader.1 ]
  %i.le = phi float [ %i.lg, %.preheader225.us.1 ], [ %i.kx, %.preheader225.us.preheader.1 ]
  %i.lf = load float, ptr %i.lc, align 4, !tbaa !23
  %i.lg = fadd float %i.lf, %i.le                 ; 4 uses
  store float %i.lg, ptr %i.h, align 4, !tbaa !23
  %i.lh = load float, ptr %i.lb, align 4, !tbaa !23
  %i.li = fadd float %i.lh, %i.ld                 ; 3 uses
  store float %i.li, ptr %3, align 4, !tbaa !23
  %i.lj = load float, ptr %i.ky, align 4, !tbaa !23
  %i.lk = fcmp ugt float %i.lg, %i.lj
  br i1 %i.lk, label %.loopexit, label %.preheader225.us.1, !llvm.loop !86

.loopexit:                                        ; preds = %.preheader225.us.1, %.preheader229.1
  %i.ll = phi float [ %i.kw, %.preheader229.1 ], [ %i.li, %.preheader225.us.1 ] ; 2 uses
  %.lcssa244.1 = phi float [ %i.kx, %.preheader229.1 ], [ %i.lg, %.preheader225.us.1 ] ; 4 uses
  %i.lm = tail call float @llvm.fmuladd.f32(float %.lcssa244.1, float %.lcssa244.1, float %.3191439) ; 2 uses
  %.not204.2 = icmp eq i32 %i.v, 0
  br i1 %.not204.2, label %bb.m, label %.preheader230.2

.preheader230.2:                                  ; preds = %.loopexit454, %.loopexit
  %.3191.1448 = phi float [ %i.lm, %.loopexit ], [ %5, %.loopexit454 ]
  %i.ln = phi float [ %i.ll, %.loopexit ], [ %i.ke, %.loopexit454 ] ; 3 uses
  %i.lo = phi float [ %.lcssa244.1, %.loopexit ], [ %i.kf, %.loopexit454 ]
  %i.lp = phi float [ %i.ki, %.loopexit ], [ %.lcssa244, %.loopexit454 ]
  %.not204.1441446 = phi i1 [ false, %.loopexit ], [ true, %.loopexit454 ]
  %i.lq = load float, ptr %i.w, align 4, !tbaa !23
  %i.lr = fcmp ogt float %i.ln, %i.lq
  br i1 %i.lr, label %.preheader227.us.2, label %.preheader229.2

.preheader227.us.2:                               ; preds = %.preheader230.2, %.preheader227.us.2
  %i.ls = phi float [ %i.lu, %.preheader227.us.2 ], [ %i.ln, %.preheader230.2 ]
  %i.lt = load float, ptr %i.x, align 4, !tbaa !23
  %i.lu = fsub float %i.ls, %i.lt                 ; 4 uses
  store float %i.lu, ptr %3, align 4, !tbaa !23
  %i.lv = load float, ptr %i.w, align 4, !tbaa !23
  %i.lw = fcmp ogt float %i.lu, %i.lv
  br i1 %i.lw, label %.preheader227.us.2, label %.preheader229.2, !llvm.loop !85

.preheader229.2:                                  ; preds = %.preheader227.us.2, %.preheader230.2
  %i.lx = phi float [ %i.ln, %.preheader230.2 ], [ %i.lu, %.preheader227.us.2 ] ; 3 uses
  %i.ly = load float, ptr %i.y, align 4, !tbaa !23
  %i.lz = fcmp ugt float %i.lx, %i.ly
  br i1 %i.lz, label %._crit_edge267.2, label %.preheader225.us.2

.preheader225.us.2:                               ; preds = %.preheader229.2, %.preheader225.us.2
  %i.ma = phi float [ %i.mc, %.preheader225.us.2 ], [ %i.lx, %.preheader229.2 ]
  %i.mb = load float, ptr %i.x, align 4, !tbaa !23
  %i.mc = fadd float %i.mb, %i.ma                 ; 4 uses
  store float %i.mc, ptr %3, align 4, !tbaa !23
  %i.md = load float, ptr %i.y, align 4, !tbaa !23
  %i.me = fcmp ugt float %i.mc, %i.md
  br i1 %i.me, label %._crit_edge267.2, label %.preheader225.us.2, !llvm.loop !86

._crit_edge267.2:                                 ; preds = %.preheader225.us.2, %.preheader229.2
  %.lcssa244.2 = phi float [ %i.lx, %.preheader229.2 ], [ %i.mc, %.preheader225.us.2 ] ; 3 uses
  %i.mf = tail call float @llvm.fmuladd.f32(float %.lcssa244.2, float %.lcssa244.2, float %.3191.1448)
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge267.2, %.loopexit
  %.not204.2450 = phi i1 [ false, %._crit_edge267.2 ], [ true, %.loopexit ]
  %i.mg = phi float [ %i.lo, %._crit_edge267.2 ], [ %.lcssa244.1, %.loopexit ] ; 3 uses
  %i.mh = phi float [ %i.lp, %._crit_edge267.2 ], [ %i.ki, %.loopexit ] ; 3 uses
  %.not204.1441447 = phi i1 [ %.not204.1441446, %._crit_edge267.2 ], [ false, %.loopexit ]
  %i.mi = phi float [ %.lcssa244.2, %._crit_edge267.2 ], [ %i.ll, %.loopexit ] ; 3 uses
  %.3191.2 = phi float [ %i.mf, %._crit_edge267.2 ], [ %i.lm, %.loopexit ]
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !24 ; 3 uses
  %i.ml = fcmp ogt float %.3191.2, %i.mk
  br i1 %i.ml, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.mm = fmul float %i.mg, %i.mg
  %i.mn = tail call float @llvm.fmuladd.f32(float %i.mi, float %i.mi, float %i.mm)
  %i.mo = tail call noundef float @llvm.fmuladd.f32(float %i.mh, float %i.mh, float %i.mn) ; 2 uses
  %i.mp = fcmp ogt float %i.mo, %i.mk
  br i1 %i.mp, label %.lr.ph279, label %.critedge

.lr.ph279:                                        ; preds = %bb.n
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !25 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 240
  %smax = tail call i32 @llvm.smax.i32(i32 %i.mr, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not528 = icmp slt i32 %i.mr, 1
  br i1 %exitcond.not528, label %.critedge, label %.lr.ph531.preheader

.lr.ph531.preheader:                              ; preds = %.lr.ph279
  %i.mt = insertelement <2 x float> poison, float %i.mi, i64 0
  %i.mu = insertelement <2 x float> %i.mt, float %i.mg, i64 1
  br label %.lr.ph531

bb.o:                                             ; preds = %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv529, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph531, !llvm.loop !87

.lr.ph531:                                        ; preds = %.lr.ph531.preheader, %bb.o
  %.4192276530 = phi float [ %.5193, %bb.o ], [ %i.mo, %.lr.ph531.preheader ] ; 2 uses
  %indvars.iv529 = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %.lr.ph531.preheader ] ; 2 uses
  %i.mv = phi float [ %i.ng, %bb.o ], [ %i.mk, %.lr.ph531.preheader ]
  %i.mw = getelementptr inbounds nuw [12 x i8], ptr %i.ms, i64 %indvars.iv529 ; 2 uses
  %i.mx = load <2 x float>, ptr %i.mw, align 4, !tbaa !23
  %i.my = fadd <2 x float> %i.mu, %i.mx           ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.na = load float, ptr %i.mz, align 4, !tbaa !23
  %i.nb = fadd float %i.mh, %i.na                 ; 3 uses
  %6 = extractelement <2 x float> %i.my, i64 0    ; 2 uses
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %6, float 0.000000e+00)
  %spec.select = select i1 %.not204.2450, float 0.000000e+00, float %7 ; 2 uses
  %i.nc = extractelement <2 x float> %i.my, i64 1 ; 2 uses
  %i.nd = tail call float @llvm.fmuladd.f32(float %i.nc, float %i.nc, float %spec.select)
  %.1187.1 = select i1 %.not204.1441447, float %spec.select, float %i.nd ; 2 uses
  %i.ne = tail call float @llvm.fmuladd.f32(float %i.nb, float %i.nb, float %.1187.1)
  %.1187.2 = select i1 %.not204, float %.1187.1, float %i.ne ; 2 uses
  %i.nf = fcmp olt float %.1187.2, %.4192276530
  br i1 %i.nf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph531
  store <2 x float> %i.my, ptr %3, align 4, !tbaa !23
  store float %i.nb, ptr %i.n, align 4, !tbaa !23
  %.pre = load float, ptr %i.mj, align 4, !tbaa !24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph531
  %i.ng = phi float [ %.pre, %bb.p ], [ %i.mv, %.lr.ph531 ] ; 2 uses
  %.5193 = phi float [ %.1187.2, %bb.p ], [ %.4192276530, %.lr.ph531 ] ; 2 uses
  %i.nh = fcmp ogt float %.5193, %i.ng
  br i1 %i.nh, label %bb.o, label %..critedge.loopexit492_crit_edge, !llvm.loop !87

.preheader235:                                    ; preds = %bb.r, %.preheader236
  %i.ni = phi float [ %i.m, %.preheader236 ], [ %i.np, %bb.r ] ; 2 uses
  %.0184.lcssa = phi i1 [ false, %.preheader236 ], [ %i.nq, %bb.r ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !23
  %i.nl = fcmp ugt float %i.ni, %i.nk
  br i1 %i.nl, label %._crit_edge, label %.lr.ph251

.lr.ph251:                                        ; preds = %.preheader235
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph, %bb.r
  %i.nn = phi float [ %i.m, %.lr.ph ], [ %i.np, %bb.r ]
  %.0184249 = phi i1 [ false, %.lr.ph ], [ %i.nq, %bb.r ]
  %i.no = load float, ptr %i.t, align 4, !tbaa !23
  %i.np = fsub float %i.nn, %i.no                 ; 4 uses
  store float %i.np, ptr %3, align 4, !tbaa !23
  %i.nq = xor i1 %.0184249, true                  ; 2 uses
  %i.nr = load float, ptr %i.q, align 4, !tbaa !23
  %i.ns = fcmp ogt float %i.np, %i.nr
  br i1 %i.ns, label %bb.r, label %.preheader235, !llvm.loop !88

bb.s:                                             ; preds = %.lr.ph251, %bb.s
  %i.nt = phi float [ %i.ni, %.lr.ph251 ], [ %i.nv, %bb.s ]
  %.1185250 = phi i1 [ %.0184.lcssa, %.lr.ph251 ], [ %i.nw, %bb.s ]
  %i.nu = load float, ptr %i.nm, align 4, !tbaa !23
  %i.nv = fadd float %i.nt, %i.nu                 ; 3 uses
  store float %i.nv, ptr %3, align 4, !tbaa !23
  %i.nw = xor i1 %.1185250, true                  ; 2 uses
  %i.nx = load float, ptr %i.nj, align 4, !tbaa !23
  %i.ny = fcmp ugt float %i.nv, %i.nx
  br i1 %i.ny, label %._crit_edge, label %bb.s, !llvm.loop !89

._crit_edge:                                      ; preds = %bb.s, %.preheader235
  %.1185.lcssa = phi i1 [ %.0184.lcssa, %.preheader235 ], [ %i.nw, %bb.s ]
  br i1 %.1185.lcssa, label %bb.t, label %.preheader233

bb.t:                                             ; preds = %._crit_edge
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !23
  %i.ob = load float, ptr %i.a, align 4, !tbaa !23
  %i.oc = fsub float %i.oa, %i.ob
  %i.od = load float, ptr %i.b, align 4, !tbaa !23
  %i.oe = fsub float %i.oc, %i.od                 ; 2 uses
  store float %i.oe, ptr %i.h, align 4, !tbaa !23
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.og = load float, ptr %i.of, align 4, !tbaa !23
  %i.oh = load float, ptr %i.c, align 4, !tbaa !23
  %i.oi = fsub float %i.og, %i.oh
  %i.oj = load float, ptr %i.e, align 4, !tbaa !23
  %i.ok = fsub float %i.oi, %i.oj                 ; 2 uses
  store float %i.ok, ptr %i.n, align 4, !tbaa !23
  br label %.preheader233

.preheader233:                                    ; preds = %bb.t, %._crit_edge
  %i.ol = phi float [ %i.ok, %bb.t ], [ %i.g, %._crit_edge ] ; 3 uses
  %i.om = phi float [ %i.oe, %bb.t ], [ %i.l, %._crit_edge ] ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.oo = load float, ptr %i.on, align 4, !tbaa !23
  %i.op = fcmp ogt float %i.om, %i.oo
  br i1 %i.op, label %.lr.ph253, label %.preheader232

.lr.ph253:                                        ; preds = %.preheader233
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.u

.preheader232:                                    ; preds = %bb.u, %.preheader233
  %i.or = phi float [ %i.om, %.preheader233 ], [ %i.oy, %bb.u ] ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ot = load float, ptr %i.os, align 4, !tbaa !23
  %i.ou = fcmp ugt float %i.or, %i.ot
  br i1 %i.ou, label %._crit_edge257, label %.lr.ph256

.lr.ph256:                                        ; preds = %.preheader232
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph253, %bb.u
  %i.ow = phi float [ %i.om, %.lr.ph253 ], [ %i.oy, %bb.u ]
  %i.ox = load float, ptr %i.oq, align 4, !tbaa !23
  %i.oy = fsub float %i.ow, %i.ox                 ; 4 uses
  store float %i.oy, ptr %i.h, align 4, !tbaa !23
  %i.oz = load float, ptr %i.on, align 4, !tbaa !23
  %i.pa = fcmp ogt float %i.oy, %i.oz
  br i1 %i.pa, label %bb.u, label %.preheader232, !llvm.loop !90

bb.v:                                             ; preds = %.lr.ph256, %bb.v
  %i.pb = phi float [ %i.or, %.lr.ph256 ], [ %i.pd, %bb.v ]
  %i.pc = load float, ptr %i.ov, align 4, !tbaa !23
  %i.pd = fadd float %i.pb, %i.pc                 ; 3 uses
  store float %i.pd, ptr %i.h, align 4, !tbaa !23
  %i.pe = load float, ptr %i.os, align 4, !tbaa !23
  %i.pf = fcmp ugt float %i.pd, %i.pe
  br i1 %i.pf, label %._crit_edge257, label %bb.v, !llvm.loop !91

._crit_edge257:                                   ; preds = %bb.v, %.preheader232
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !23
  %i.pi = fcmp ogt float %i.ol, %i.ph
  br i1 %i.pi, label %.lr.ph253.1, label %.preheader232.1

.lr.ph253.1:                                      ; preds = %._crit_edge257
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph253.1
  %i.pk = phi float [ %i.ol, %.lr.ph253.1 ], [ %i.pm, %bb.w ]
  %i.pl = load float, ptr %i.pj, align 4, !tbaa !23
  %i.pm = fsub float %i.pk, %i.pl                 ; 4 uses
  store float %i.pm, ptr %i.n, align 4, !tbaa !23
  %i.pn = load float, ptr %i.pg, align 4, !tbaa !23
  %i.po = fcmp ogt float %i.pm, %i.pn
  br i1 %i.po, label %bb.w, label %.preheader232.1, !llvm.loop !90

.preheader232.1:                                  ; preds = %bb.w, %._crit_edge257
  %i.pp = phi float [ %i.ol, %._crit_edge257 ], [ %i.pm, %bb.w ] ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !23
  %i.ps = fcmp ugt float %i.pp, %i.pr
  br i1 %i.ps, label %.critedge, label %.lr.ph256.1

.lr.ph256.1:                                      ; preds = %.preheader232.1
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph256.1
  %i.pu = phi float [ %i.pp, %.lr.ph256.1 ], [ %i.pw, %bb.x ]
  %i.pv = load float, ptr %i.pt, align 4, !tbaa !23
  %i.pw = fadd float %i.pu, %i.pv                 ; 3 uses
  store float %i.pw, ptr %i.n, align 4, !tbaa !23
  %i.px = load float, ptr %i.pq, align 4, !tbaa !23
  %i.py = fcmp ugt float %i.pw, %i.px
  br i1 %i.py, label %.critedge, label %bb.x, !llvm.loop !91

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 833, ptr noundef nonnull @.str.44) #30
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.pz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.pz

..critedge.loopexit492_crit_edge:                 ; preds = %bb.q, %bb.h
  br label %.critedge, !llvm.loop !87

.critedge:                                        ; preds = %bb.x, %bb.o, %bb.l, %bb.f, %bb.e, %.lr.ph279, %..critedge.loopexit492_crit_edge, %.lr.ph300, %.preheader232.1, %.loopexit220.1, %.preheader219.2, %.preheader.2, %bb.n, %bb.a, %bb.a, %bb.m, %._crit_edge294.2
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2147483646, -2147483648) i32 @_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf(ptr nofree noundef readonly %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 12)) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i32], align 8                ; 22 uses
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !23
  %i.e = load <2 x float>, ptr %2, align 4, !tbaa !23
  %i.f = fsub <2 x float> %i.d, %i.e              ; 4 uses
  %i.g = extractelement <2 x float> %i.f, i64 1   ; 17 uses
  %i.h = extractelement <2 x float> %i.f, i64 0   ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !23
  %i.m = fsub float %i.j, %i.l                    ; 23 uses
  store float %i.h, ptr %3, align 4, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 13 uses
  store float %i.g, ptr %i.n, align 4, !tbaa !23
end_hunk_0
begin_hunk_1_@_Z11pbc_dx_aiucPK5t_pbcPKfS3_Pf:bb.a

.lr.ph568.preheader:                              ; preds = %.lr.ph373
  %i.ep = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.dh, i64 1
  br label %.lr.ph568

bb.w:                                             ; preds = %bb.y
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433566, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next434, %wide.trip.count437
  br i1 %exitcond438.not, label %.critedge.loopexit317, label %.lr.ph568, !llvm.loop !92

.lr.ph568:                                        ; preds = %.lr.ph568.preheader, %bb.w
  %i.er = phi i32 [ %i.fm, %bb.w ], [ %i.ck, %.lr.ph568.preheader ]
  %.0267371567 = phi float [ %.1268, %bb.w ], [ %i.ef, %.lr.ph568.preheader ] ; 2 uses
  %indvars.iv433566 = phi i64 [ %indvars.iv.next434, %bb.w ], [ 0, %.lr.ph568.preheader ] ; 3 uses
  %i.es = phi float [ %i.fl, %bb.w ], [ %i.eh, %.lr.ph568.preheader ]
  %i.et = phi <2 x i32> [ %i.fn, %bb.w ], [ %i.eo, %.lr.ph568.preheader ]
  %i.eu = getelementptr inbounds nuw [12 x i8], ptr %i.el, i64 %indvars.iv433566 ; 2 uses
  %i.ev = load <2 x float>, ptr %i.eu, align 4, !tbaa !23
  %i.ew = fadd <2 x float> %i.eq, %i.ev           ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !23
  %i.ez = fadd float %i.cl, %i.ey                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.ew, %i.ew
  %i.fa = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fb = extractelement <2 x float> %i.ew, i64 0 ; 2 uses
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.fa)
  %i.fd = tail call noundef float @llvm.fmuladd.f32(float %i.ez, float %i.ez, float %i.fc) ; 2 uses
  %i.fe = fcmp olt float %i.fd, %.0267371567
  br i1 %i.fe, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph568
  store <2 x float> %i.ew, ptr %3, align 4, !tbaa !23
  store float %i.ez, ptr %i.o, align 4, !tbaa !23
  %i.ff = getelementptr inbounds nuw [12 x i8], ptr %i.em, i64 %indvars.iv433566 ; 2 uses
  %i.fg = load <2 x i32>, ptr %i.ff, align 4, !tbaa !32
  %i.fh = add nsw <2 x i32> %i.fg, %i.eo
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !32
  %i.fk = add nsw i32 %i.fj, %i.ck
  %.pre444 = load float, ptr %i.eg, align 4, !tbaa !24
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph568
  %i.fl = phi float [ %.pre444, %bb.x ], [ %i.es, %.lr.ph568 ] ; 2 uses
  %i.fm = phi i32 [ %i.fk, %bb.x ], [ %i.er, %.lr.ph568 ] ; 3 uses
  %.1268 = phi float [ %i.fd, %bb.x ], [ %.0267371567, %.lr.ph568 ] ; 2 uses
  %i.fn = phi <2 x i32> [ %i.fh, %bb.x ], [ %i.et, %.lr.ph568 ] ; 3 uses
  %i.fo = fcmp ogt float %.1268, %i.fl
  br i1 %i.fo, label %bb.w, label %..critedge.loopexit317_crit_edge, !llvm.loop !92

bb.z:                                             ; preds = %.preheader321
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !23
  %i.fr = fcmp ogt float %i.h, %i.fq
  br i1 %i.fr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fs = load float, ptr %i.aa, align 4, !tbaa !23
  %i.ft = fsub float %i.h, %i.fs
  br label %.sink.split529

bb.ab:                                            ; preds = %bb.z
  %i.fu = load float, ptr %i.z, align 4, !tbaa !23
  %i.fv = fcmp ugt float %i.h, %i.fu
  br i1 %i.fv, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fw = load float, ptr %i.aa, align 4, !tbaa !23
  %i.fx = fadd float %i.h, %i.fw
  br label %.sink.split529

.sink.split529:                                   ; preds = %bb.aa, %bb.ac
  %.sink531 = phi float [ %i.fx, %bb.ac ], [ %i.ft, %bb.aa ]
  %.sink530 = phi i32 [ 1, %bb.ac ], [ -1, %bb.aa ]
  store float %.sink531, ptr %3, align 4, !tbaa !23
  store i32 %.sink530, ptr %i.a, align 8, !tbaa !32
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split529, %bb.ab
  %.not305.1 = icmp eq i32 %i.y, 1
  br i1 %.not305.1, label %.thread493, label %.thread491

.thread491:                                       ; preds = %.preheader321, %bb.ad
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !23
  %i.ga = fcmp ogt float %i.g, %i.fz
  br i1 %i.ga, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.thread491
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !23
  %i.gd = fcmp ugt float %i.g, %i.gc
  br i1 %i.gd, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !23
  %i.gg = fadd float %i.g, %i.gf
  br label %.sink.split532

bb.ag:                                            ; preds = %.thread491
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !23
  %i.gj = fsub float %i.g, %i.gi
  br label %.sink.split532

.sink.split532:                                   ; preds = %bb.af, %bb.ag
  %.sink534 = phi float [ %i.gj, %bb.ag ], [ %i.gg, %bb.af ]
  %.sink533 = phi i32 [ -1, %bb.ag ], [ 1, %bb.af ]
  store float %.sink534, ptr %i.n, align 4, !tbaa !23
  store i32 %.sink533, ptr %i.p, align 4, !tbaa !32
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split532, %bb.ae
  %.not305.2 = icmp eq i32 %i.y, 2
  br i1 %.not305.2, label %.critedge, label %.thread493

.thread493:                                       ; preds = %bb.ad, %bb.ah
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !23
  %i.gm = fcmp ogt float %i.m, %i.gl
  br i1 %i.gm, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.thread493
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.go = load float, ptr %i.gn, align 4, !tbaa !23
  %i.gp = fcmp ugt float %i.m, %i.go
  br i1 %i.gp, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !23
  %i.gs = fadd float %i.m, %i.gr
  store float %i.gs, ptr %i.o, align 4, !tbaa !23
  store i32 1, ptr %i.q, align 8, !tbaa !32
  br label %.critedge

bb.ak:                                            ; preds = %.thread493
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !23
  %i.gv = fsub float %i.m, %i.gu
  store float %i.gv, ptr %i.o, align 4, !tbaa !23
  store i32 -1, ptr %i.q, align 8, !tbaa !32
  br label %.critedge

bb.al:                                            ; preds = %.preheader326
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !23
  %i.gy = fcmp ogt float %i.m, %i.gx
  br i1 %i.gy, label %._crit_edge332, label %bb.am

._crit_edge332:                                   ; preds = %bb.al
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !23
  %i.hc = fsub float %i.m, %i.hb                  ; 2 uses
  store float %i.hc, ptr %i.o, align 4, !tbaa !23
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.he = load float, ptr %i.hd, align 4, !tbaa !23
  %i.hf = fsub float %i.g, %i.he                  ; 2 uses
  store float %i.hf, ptr %i.n, align 4, !tbaa !23
  %i.hg = load float, ptr %i.gz, align 4, !tbaa !23
  %i.hh = fsub float %i.h, %i.hg
  br label %.sink.split535

bb.am:                                            ; preds = %bb.al
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !23
  %i.hk = fcmp ugt float %i.m, %i.hj
  br i1 %i.hk, label %bb.an, label %._crit_edge

._crit_edge:                                      ; preds = %bb.am
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !23
  %i.ho = fadd float %i.hn, %i.m                  ; 2 uses
  store float %i.ho, ptr %i.o, align 4, !tbaa !23
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !23
  %i.hr = fadd float %i.hq, %i.g                  ; 2 uses
  store float %i.hr, ptr %i.n, align 4, !tbaa !23
  %i.hs = load float, ptr %i.hl, align 4, !tbaa !23
  %i.ht = fadd float %i.hs, %i.h
  br label %.sink.split535

.sink.split535:                                   ; preds = %._crit_edge, %._crit_edge332
  %.sink541 = phi float [ %i.hh, %._crit_edge332 ], [ %i.ht, %._crit_edge ] ; 2 uses
  %.sink540 = phi i32 [ -1, %._crit_edge332 ], [ 1, %._crit_edge ] ; 2 uses
  %.ph538 = phi float [ %i.hf, %._crit_edge332 ], [ %i.hr, %._crit_edge ]
  %.ph539 = phi float [ %i.hc, %._crit_edge332 ], [ %i.ho, %._crit_edge ]
  store float %.sink541, ptr %3, align 4, !tbaa !23
  store i32 %.sink540, ptr %i.q, align 8, !tbaa !32
  br label %bb.an

bb.an:                                            ; preds = %.sink.split535, %bb.am
  %i.hu = phi i32 [ 0, %bb.am ], [ %.sink540, %.sink.split535 ] ; 2 uses
  %i.hv = phi float [ %i.h, %bb.am ], [ %.sink541, %.sink.split535 ] ; 2 uses
  %i.hw = phi float [ %i.g, %bb.am ], [ %.ph538, %.sink.split535 ] ; 2 uses
  %i.hx = phi float [ %i.m, %bb.am ], [ %.ph539, %.sink.split535 ] ; 4 uses
  %6 = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.hx, float 0.000000e+00) ; 2 uses
  %.not304.1 = icmp eq i32 %i.u, 1
  br i1 %.not304.1, label %.thread501, label %.thread495

.thread495:                                       ; preds = %.preheader326, %bb.an
  %.3498 = phi float [ %6, %bb.an ], [ 0.000000e+00, %.preheader326 ]
  %i.hy = phi float [ %i.hw, %bb.an ], [ %i.g, %.preheader326 ] ; 5 uses
  %i.hz = phi float [ %i.hv, %bb.an ], [ %i.h, %.preheader326 ] ; 3 uses
  %i.ia = phi float [ %i.hx, %bb.an ], [ %i.m, %.preheader326 ] ; 2 uses
  %i.ib = phi i32 [ %i.hu, %bb.an ], [ 0, %.preheader326 ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.id = load float, ptr %i.ic, align 4, !tbaa !23
  %i.ie = fcmp ogt float %i.hy, %i.id
  br i1 %i.ie, label %._crit_edge332.1, label %bb.ao

bb.ao:                                            ; preds = %.thread495
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ig = load float, ptr %i.if, align 4, !tbaa !23
  %i.ih = fcmp ugt float %i.hy, %i.ig
  br i1 %i.ih, label %bb.ap, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %bb.ao
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !23
  %i.il = fadd float %i.ik, %i.hy                 ; 2 uses
  store float %i.il, ptr %i.n, align 4, !tbaa !23
  %i.im = load float, ptr %i.ii, align 4, !tbaa !23
  %i.in = fadd float %i.im, %i.hz
  br label %.sink.split542

._crit_edge332.1:                                 ; preds = %.thread495
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !23
  %i.ir = fsub float %i.hy, %i.iq                 ; 2 uses
  store float %i.ir, ptr %i.n, align 4, !tbaa !23
  %i.is = load float, ptr %i.io, align 4, !tbaa !23
  %i.it = fsub float %i.hz, %i.is
  br label %.sink.split542

.sink.split542:                                   ; preds = %._crit_edge332.1, %._crit_edge.1
  %.sink547 = phi float [ %i.in, %._crit_edge.1 ], [ %i.it, %._crit_edge332.1 ] ; 2 uses
  %.sink546 = phi i32 [ 1, %._crit_edge.1 ], [ -1, %._crit_edge332.1 ] ; 2 uses
  %.ph545 = phi float [ %i.il, %._crit_edge.1 ], [ %i.ir, %._crit_edge332.1 ]
  store float %.sink547, ptr %3, align 4, !tbaa !23
  store i32 %.sink546, ptr %i.p, align 4, !tbaa !32
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split542, %bb.ao
  %i.iu = phi i32 [ 0, %bb.ao ], [ %.sink546, %.sink.split542 ] ; 2 uses
  %i.iv = phi float [ %i.hz, %bb.ao ], [ %.sink547, %.sink.split542 ] ; 2 uses
  %i.iw = phi float [ %i.hy, %bb.ao ], [ %.ph545, %.sink.split542 ] ; 4 uses
  %i.ix = tail call float @llvm.fmuladd.f32(float %i.iw, float %i.iw, float %.3498) ; 2 uses
  %.not = icmp eq i32 %i.u, 0
  %i.iy = insertelement <2 x i32> <i32 0, i32 poison>, i32 %i.iu, i64 1
  br i1 %.not, label %bb.aw, label %.thread501

.thread501:                                       ; preds = %bb.an, %bb.ap
  %.3.1507 = phi float [ %i.ix, %bb.ap ], [ %6, %bb.an ]
  %i.iz = phi float [ %i.iv, %bb.ap ], [ %i.hv, %bb.an ] ; 5 uses
  %i.ja = phi float [ %i.iw, %bb.ap ], [ %i.hw, %bb.an ]
  %i.jb = phi i32 [ %i.iu, %bb.ap ], [ 0, %bb.an ]
  %i.jc = phi i32 [ %i.ib, %bb.ap ], [ %i.hu, %bb.an ]
  %i.jd = phi float [ %i.ia, %bb.ap ], [ %i.hx, %bb.an ]
  %.not304.1500505 = phi i1 [ false, %bb.ap ], [ true, %bb.an ]
  %i.je = load float, ptr %i.v, align 4, !tbaa !23
  %i.jf = fcmp ogt float %i.iz, %i.je
  br i1 %i.jf, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %.thread501
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !23
  %i.ji = fsub float %i.iz, %i.jh                 ; 4 uses
  store float %i.ji, ptr %3, align 4, !tbaa !23
  store i32 -1, ptr %i.a, align 8, !tbaa !32
  %i.jj = load float, ptr %i.v, align 4, !tbaa !23
  %i.jk = fcmp ogt float %i.ji, %i.jj
  br i1 %i.jk, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.jl = load float, ptr %i.jg, align 4, !tbaa !23
  %i.jm = fsub float %i.ji, %i.jl
  br label %.sink.split548

bb.as:                                            ; preds = %.thread501
  %i.jn = load float, ptr %i.w, align 4, !tbaa !23
  %i.jo = fcmp ugt float %i.iz, %i.jn
  br i1 %i.jo, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !23
  %i.jr = fadd float %i.iz, %i.jq                 ; 4 uses
  store float %i.jr, ptr %3, align 4, !tbaa !23
  store i32 1, ptr %i.a, align 8, !tbaa !32
  %i.js = load float, ptr %i.w, align 4, !tbaa !23
  %i.jt = fcmp ugt float %i.jr, %i.js
  br i1 %i.jt, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ju = load float, ptr %i.jp, align 4, !tbaa !23
  %i.jv = fadd float %i.jr, %i.ju
  br label %.sink.split548

.sink.split548:                                   ; preds = %bb.ar, %bb.au
  %.sink552 = phi float [ %i.jv, %bb.au ], [ %i.jm, %bb.ar ] ; 2 uses
  %.sink551 = phi i32 [ 2, %bb.au ], [ -2, %bb.ar ] ; 2 uses
  store float %.sink552, ptr %3, align 4, !tbaa !23
  store i32 %.sink551, ptr %i.a, align 8, !tbaa !32
  br label %bb.av

bb.av:                                            ; preds = %.sink.split548, %bb.as, %bb.at, %bb.aq
  %i.jw = phi i32 [ 0, %bb.as ], [ -1, %bb.aq ], [ 1, %bb.at ], [ %.sink551, %.sink.split548 ]
  %i.jx = phi float [ %i.iz, %bb.as ], [ %i.ji, %bb.aq ], [ %i.jr, %bb.at ], [ %.sink552, %.sink.split548 ] ; 3 uses
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.jx, float %i.jx, float %.3.1507)
  %i.jz = insertelement <2 x i32> poison, i32 %i.jw, i64 0
  %i.ka = insertelement <2 x i32> %i.jz, i32 %i.jb, i64 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ap
  %i.kb = phi float [ %i.ja, %bb.av ], [ %i.iw, %bb.ap ]
  %i.kc = phi i32 [ %i.jc, %bb.av ], [ %i.ib, %bb.ap ] ; 3 uses
  %i.kd = phi float [ %i.jd, %bb.av ], [ %i.ia, %bb.ap ]
  %.not304.1500506 = phi i1 [ %.not304.1500505, %bb.av ], [ false, %bb.ap ]
  %i.ke = phi float [ %i.jx, %bb.av ], [ %i.iv, %bb.ap ]
  %.4 = phi float [ %i.jy, %bb.av ], [ %i.ix, %bb.ap ] ; 2 uses
  %i.kf = phi <2 x i32> [ %i.ka, %bb.av ], [ %i.iy, %bb.ap ] ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !24 ; 2 uses
  %i.ki = fcmp ogt float %.4, %i.kh
  br i1 %i.ki, label %.lr.ph346, label %.critedge

.lr.ph346:                                        ; preds = %bb.aw
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !25 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 96
  %smax = tail call i32 @llvm.smax.i32(i32 %i.kk, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %.not303 = icmp eq i32 %i.u, 0
  %exitcond.not556 = icmp slt i32 %i.kk, 1
  br i1 %exitcond.not556, label %.critedge.loopexit323, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph346
  %i.kn = insertelement <2 x float> poison, float %i.ke, i64 0
  %i.ko = insertelement <2 x float> %i.kn, float %i.kb, i64 1
  br label %.lr.ph

bb.ax:                                            ; preds = %bb.az
  %indvars.iv.next = add nuw nsw i64 %indvars.iv557, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.loopexit323, label %.lr.ph, !llvm.loop !93

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ax
  %i.kp = phi i32 [ %i.lj, %bb.ax ], [ %i.kc, %.lr.ph.preheader ]
  %.5344558 = phi float [ %.6, %bb.ax ], [ %.4, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv557 = phi i64 [ %indvars.iv.next, %bb.ax ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.kq = phi float [ %i.li, %bb.ax ], [ %i.kh, %.lr.ph.preheader ]
  %i.kr = phi <2 x i32> [ %i.lk, %bb.ax ], [ %i.kf, %.lr.ph.preheader ]
  %i.ks = getelementptr inbounds nuw [12 x i8], ptr %i.kl, i64 %indvars.iv557 ; 2 uses
  %i.kt = load <2 x float>, ptr %i.ks, align 4, !tbaa !23
  %i.ku = fadd <2 x float> %i.ko, %i.kt           ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !23
  %i.kx = fadd float %i.kd, %i.kw                 ; 3 uses
  %7 = extractelement <2 x float> %i.ku, i64 0    ; 2 uses
  %8 = tail call float @llvm.fmuladd.f32(float %7, float %7, float 0.000000e+00)
  %spec.select = select i1 %.not303, float 0.000000e+00, float %8 ; 2 uses
  %i.ky = extractelement <2 x float> %i.ku, i64 1 ; 2 uses
  %i.kz = tail call float @llvm.fmuladd.f32(float %i.ky, float %i.ky, float %spec.select)
  %.1.1 = select i1 %.not304.1500506, float %spec.select, float %i.kz ; 2 uses
  %i.la = tail call float @llvm.fmuladd.f32(float %i.kx, float %i.kx, float %.1.1)
  %.1.2 = select i1 %.not304, float %.1.1, float %i.la ; 2 uses
  %i.lb = fcmp olt float %.1.2, %.5344558
  br i1 %i.lb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.lr.ph
  store <2 x float> %i.ku, ptr %3, align 4, !tbaa !23
  store float %i.kx, ptr %i.o, align 4, !tbaa !23
  %i.lc = getelementptr inbounds nuw [12 x i8], ptr %i.km, i64 %indvars.iv557 ; 2 uses
  %i.ld = load <2 x i32>, ptr %i.lc, align 4, !tbaa !32
  %i.le = add nsw <2 x i32> %i.ld, %i.kf
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !32
  %i.lh = add nsw i32 %i.lg, %i.kc
  %.pre = load float, ptr %i.kg, align 4, !tbaa !24
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.lr.ph
  %i.li = phi float [ %.pre, %bb.ay ], [ %i.kq, %.lr.ph ] ; 2 uses
  %i.lj = phi i32 [ %i.lh, %bb.ay ], [ %i.kp, %.lr.ph ] ; 3 uses
  %.6 = phi float [ %.1.2, %bb.ay ], [ %.5344558, %.lr.ph ] ; 2 uses
  %i.lk = phi <2 x i32> [ %i.le, %bb.ay ], [ %i.kr, %.lr.ph ] ; 3 uses
  %i.ll = fcmp ogt float %.6, %i.li
  br i1 %i.ll, label %bb.ax, label %..critedge.loopexit323_crit_edge, !llvm.loop !93

bb.ba:                                            ; preds = %bb.a
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !33
  %i.lo = sext i32 %i.ln to i64                   ; 7 uses
  %i.lp = getelementptr inbounds [4 x i8], ptr %3, i64 %i.lo ; 3 uses
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !23 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.lo
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !23
  %i.lu = fcmp ogt float %i.lq, %i.lt
  br i1 %i.lu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.lv, i64 %i.lo
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !23
  %i.ly = fsub float %i.lq, %i.lx
  store float %i.ly, ptr %i.lp, align 4, !tbaa !23
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.lo ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !32
  %i.mb = add nsw i32 %i.ma, -1
  store i32 %i.mb, ptr %i.lz, align 4, !tbaa !32
  br label %.critedge

bb.bc:                                            ; preds = %bb.ba
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.md = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %i.lo
  %i.me = load float, ptr %i.md, align 4, !tbaa !23
  %i.mf = fcmp ugt float %i.lq, %i.me
  br i1 %i.mf, label %.critedge, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %i.lo
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !23
  %i.mj = fadd float %i.lq, %i.mi
  store float %i.mj, ptr %i.lp, align 4, !tbaa !23
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.lo ; 2 uses
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !32
  %i.mm = add nsw i32 %i.ml, 1
  store i32 %i.mm, ptr %i.mk, align 4, !tbaa !32
  br label %.critedge

bb.be:                                            ; preds = %bb.a
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !33
  %i.mp = sext i32 %i.mo to i64                   ; 7 uses
  %i.mq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.mp
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !23 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.ms, i64 %i.mp
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !23
  %i.mv = fcmp ogt float %i.mr, %i.mu
  br i1 %i.mv, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mx = getelementptr inbounds [12 x i8], ptr %i.mw, i64 %i.mp ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.mz = load float, ptr %i.my, align 4, !tbaa !23
  %i.na = fsub float %i.m, %i.mz
  %i.nb = load <2 x float>, ptr %i.mx, align 4, !tbaa !23
  %i.nc = fsub <2 x float> %i.f, %i.nb
  store <2 x float> %i.nc, ptr %3, align 4, !tbaa !23
  store float %i.na, ptr %i.o, align 4, !tbaa !23
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.mp ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !32
  %i.nf = add nsw i32 %i.ne, -1
  store i32 %i.nf, ptr %i.nd, align 4, !tbaa !32
  br label %.critedge

bb.bg:                                            ; preds = %bb.be
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.nh = getelementptr inbounds [4 x i8], ptr %i.ng, i64 %i.mp
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !23
  %i.nj = fcmp ugt float %i.mr, %i.ni
  br i1 %i.nj, label %.critedge, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nl = getelementptr inbounds [12 x i8], ptr %i.nk, i64 %i.mp ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !23
  %i.no = fadd float %i.m, %i.nn
  %i.np = load <2 x float>, ptr %i.nl, align 4, !tbaa !23
  %i.nq = fadd <2 x float> %i.f, %i.np
  store <2 x float> %i.nq, ptr %3, align 4, !tbaa !23
  store float %i.no, ptr %i.o, align 4, !tbaa !23
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.mp ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !32
  %i.nt = add nsw i32 %i.ns, 1
  store i32 %i.nt, ptr %i.nr, align 4, !tbaa !32
  br label %.critedge

bb.bi:                                            ; preds = %bb.a
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !23
  %i.nw = fcmp ogt float %i.h, %i.nv
  br i1 %i.nw, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !23
  %i.nz = fsub float %i.h, %i.ny
  br label %.thread

bb.bk:                                            ; preds = %bb.bi
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !23
  %i.oc = fcmp ugt float %i.h, %i.ob
  br i1 %i.oc, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.oe = load float, ptr %i.od, align 4, !tbaa !23
  %i.of = fadd float %i.h, %i.oe
  br label %.thread

.thread:                                          ; preds = %bb.bj, %bb.bl
  %storemerge490 = phi float [ %i.of, %bb.bl ], [ %i.nz, %bb.bj ]
  %storemerge = phi i32 [ 1, %bb.bl ], [ -1, %bb.bj ]
  store float %storemerge490, ptr %3, align 4, !tbaa !23
  store i32 %storemerge, ptr %i.a, align 8, !tbaa !32
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.oh = load float, ptr %i.og, align 4, !tbaa !23
  %i.oi = load float, ptr %i.b, align 4, !tbaa !23
  %i.oj = fsub float %i.oh, %i.oi
  %i.ok = load float, ptr %i.c, align 4, !tbaa !23
  %i.ol = fsub float %i.oj, %i.ok                 ; 2 uses
  store float %i.ol, ptr %i.n, align 4, !tbaa !23
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.on = load float, ptr %i.om, align 4, !tbaa !23
  %i.oo = load float, ptr %i.i, align 4, !tbaa !23
  %i.op = fsub float %i.on, %i.oo
  %i.oq = load float, ptr %i.k, align 4, !tbaa !23
  %i.or = fsub float %i.op, %i.oq                 ; 2 uses
  store float %i.or, ptr %i.o, align 4, !tbaa !23
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %.thread
  %i.os = phi float [ %i.or, %.thread ], [ %i.m, %bb.bk ] ; 4 uses
  %i.ot = phi float [ %i.ol, %.thread ], [ %i.g, %bb.bk ] ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !23
  %i.ow = fcmp ogt float %i.ot, %i.ov
  br i1 %i.ow, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !23
  %i.oz = fsub float %i.ot, %i.oy
  br label %.sink.split553

bb.bo:                                            ; preds = %bb.bm
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !23
  %i.pc = fcmp ugt float %i.ot, %i.pb
  br i1 %i.pc, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !23
  %i.pf = fadd float %i.ot, %i.pe
  br label %.sink.split553

.sink.split553:                                   ; preds = %bb.bp, %bb.bn
  %.sink555 = phi float [ %i.oz, %bb.bn ], [ %i.pf, %bb.bp ]
  %.sink554 = phi i32 [ -1, %bb.bn ], [ 1, %bb.bp ]
  store float %.sink555, ptr %i.n, align 4, !tbaa !23
  store i32 %.sink554, ptr %i.p, align 4, !tbaa !32
  br label %bb.bq

bb.bq:                                            ; preds = %.sink.split553, %bb.bo
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !23
  %i.pi = fcmp ogt float %i.os, %i.ph
  br i1 %i.pi, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !23
  %i.pl = fcmp ugt float %i.os, %i.pk
  br i1 %i.pl, label %.critedge, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !23
  %i.po = fadd float %i.os, %i.pn
  store float %i.po, ptr %i.o, align 4, !tbaa !23
  store i32 1, ptr %i.q, align 8, !tbaa !32
  br label %.critedge

bb.bt:                                            ; preds = %bb.bq
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !23
  %i.pr = fsub float %i.os, %i.pq
  store float %i.pr, ptr %i.o, align 4, !tbaa !23
  store i32 -1, ptr %i.q, align 8, !tbaa !32
  br label %.critedge

bb.bu:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1096, ptr noundef nonnull @.str.45) #30
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.ps = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.cc

..critedge.loopexit317_crit_edge:                 ; preds = %bb.y
  br label %.critedge.loopexit317, !llvm.loop !92

.critedge.loopexit317:                            ; preds = %bb.w, %..critedge.loopexit317_crit_edge, %.lr.ph373
  %.lcssa369 = phi i32 [ %i.ck, %.lr.ph373 ], [ %i.fm, %..critedge.loopexit317_crit_edge ], [ %i.fm, %bb.w ]
  %i.pt = phi <2 x i32> [ %i.eo, %.lr.ph373 ], [ %i.fn, %..critedge.loopexit317_crit_edge ], [ %i.fn, %bb.w ]
  store <2 x i32> %i.pt, ptr %i.a, align 8
  store i32 %.lcssa369, ptr %i.q, align 8
  br label %.critedge

..critedge.loopexit323_crit_edge:                 ; preds = %bb.az
  br label %.critedge.loopexit323, !llvm.loop !93

.critedge.loopexit323:                            ; preds = %bb.ax, %..critedge.loopexit323_crit_edge, %.lr.ph346
  %.lcssa342.ph = phi i32 [ %i.lj, %..critedge.loopexit323_crit_edge ], [ %i.kc, %.lr.ph346 ], [ %i.lj, %bb.ax ]
  %i.pu = phi <2 x i32> [ %i.lk, %..critedge.loopexit323_crit_edge ], [ %i.kf, %.lr.ph346 ], [ %i.lk, %bb.ax ]
  store <2 x i32> %i.pu, ptr %i.a, align 8
  store i32 %.lcssa342.ph, ptr %i.q, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.br, %bb.bs, %bb.bt, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.j, %bb.k, %bb.l, %.critedge.loopexit323, %.critedge.loopexit317, %bb.a, %bb.a, %bb.bf, %bb.bh, %bb.bg, %bb.bb, %bb.bd, %bb.bc, %bb.aw, %bb.v
  %i.pv = load i32, ptr %i.a, align 8, !tbaa !32
  %i.pw = load i32, ptr %i.p, align 4, !tbaa !32
  %i.px = load i32, ptr %i.q, align 8, !tbaa !32
  %i.py = mul i32 %i.px, 3
  %i.pz = add i32 %i.pw, 3
  %i.qa = add i32 %i.pz, %i.py
  %i.qb = mul i32 %i.qa, 5
  %i.qc = add i32 %i.pv, 7
  %i.qd = add i32 %i.qc, %i.qb                    ; 2 uses
  %i.qe = load ptr, ptr @debug, align 8, !tbaa !27
  %.not306 = icmp eq ptr %i.qe, null
  br i1 %.not306, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  invoke void @_Z20range_check_functioniiiPKcS0_RKNSt10filesystem7__cxx114pathEi(i32 noundef %i.qd, i32 noundef 0, i32 noundef 45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1103)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.qf = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.qg, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.qf, ptr noundef nonnull %i.qg) #20
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.bz, %bb.by
  %i.qh = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.qj = icmp eq ptr %i.qh, %i.qi
  br i1 %i.qj, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.qk = load i64, ptr %i.qi, align 8, !tbaa !17
  %i.ql = add i64 %i.qk, 1
  call void @_ZdlPvm(ptr noundef %i.qh, i64 noundef %i.ql) #31
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bx
  %i.qm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.cc

bb.cb:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %i.qd

bb.cc:                                            ; preds = %bb.ca, %bb.bw
  %.pn = phi { ptr, i32 } [ %i.ps, %bb.bw ], [ %i.qm, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  resume { ptr, i32 } %.pn
}

declare void @_Z20range_check_functioniiiPKcS0_RKNSt10filesystem7__cxx114pathEi(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_Z8pbc_dx_dPK5t_pbcPKdS3_Pd(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x double>, ptr %1, align 8, !tbaa !103
  %i.d = load <2 x double>, ptr %2, align 8, !tbaa !103
  %i.e = fsub <2 x double> %i.c, %i.d             ; 7 uses
  %i.f = extractelement <2 x double> %i.e, i64 1  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !103
  %i.k = fsub double %i.h, %i.j                   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  store <2 x double> %i.e, ptr %3, align 8, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store double %i.k, ptr %i.m, align 8, !tbaa !103
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22
  switch i32 %i.o, label %bb.y [
    i32 1, label %bb.b
    i32 3, label %bb.b
    i32 2, label %bb.i
    i32 4, label %bb.i
    i32 7, label %.preheader156
    i32 9, label %.critedge
    i32 10, label %.critedge
  ]

.preheader156:                                    ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load float, ptr %i.p, align 4, !tbaa !23
  %i.r = fpext float %i.q to double               ; 2 uses
  %i.s = extractelement <2 x double> %i.e, i64 0  ; 3 uses
  %i.t = fcmp ogt double %i.s, %i.r
  br i1 %i.t, label %.lr.ph, label %.preheader155

.lr.ph:                                           ; preds = %.preheader156
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.v = load float, ptr %i.u, align 4, !tbaa !23
  %i.w = fpext float %i.v to double
  br label %bb.q

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !33   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.not141 = icmp eq i32 %i.y, 0
  br i1 %.not141, label %.preheader142.1, label %.preheader142

.preheader142:                                    ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !23
  %i.ad = fpext float %i.ac to double             ; 2 uses
  %i.ae = extractelement <2 x double> %i.e, i64 0 ; 3 uses
  %i.af = fcmp ogt double %i.ae, %i.ad
  br i1 %i.af, label %.lr.ph202, label %.preheader

.lr.ph202:                                        ; preds = %.preheader142
  %i.ag = load float, ptr %i.z, align 4, !tbaa !23
  %i.ah = fpext float %i.ag to double
  br label %bb.c

..preheader_crit_edge:                            ; preds = %bb.c
  store double %i.ao, ptr %3, align 8, !tbaa !103
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader142
  %.lcssa.promoted = phi double [ %i.ao, %..preheader_crit_edge ], [ %i.ae, %.preheader142 ] ; 2 uses
  %i.ai = load float, ptr %i.aa, align 4, !tbaa !23
  %i.aj = fpext float %i.ai to double             ; 2 uses
  %i.ak = fcmp ugt double %.lcssa.promoted, %i.aj
  br i1 %i.ak, label %.loopexit, label %.lr.ph206

.lr.ph206:                                        ; preds = %.preheader
  %i.al = load float, ptr %i.z, align 4, !tbaa !23
  %i.am = fpext float %i.al to double
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph202, %bb.c
  %i.an = phi double [ %i.ae, %.lr.ph202 ], [ %i.ao, %bb.c ]
  %i.ao = fsub double %i.an, %i.ah                ; 4 uses
  %i.ap = fcmp ogt double %i.ao, %i.ad
  br i1 %i.ap, label %bb.c, label %..preheader_crit_edge, !llvm.loop !94

bb.d:                                             ; preds = %.lr.ph206, %bb.d
  %i.aq = phi double [ %.lcssa.promoted, %.lr.ph206 ], [ %i.ar, %bb.d ]
  %i.ar = fadd double %i.aq, %i.am                ; 3 uses
  %i.as = fcmp ugt double %i.ar, %i.aj
  br i1 %i.as, label %..loopexit_crit_edge, label %bb.d, !llvm.loop !95

..loopexit_crit_edge:                             ; preds = %bb.d
  store double %i.ar, ptr %3, align 8, !tbaa !103
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %..loopexit_crit_edge
  %.not141.1 = icmp eq i32 %i.y, 1
  br i1 %.not141.1, label %.preheader142.2, label %.preheader142.1

.preheader142.1:                                  ; preds = %bb.b, %.loopexit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.au = load float, ptr %i.at, align 4, !tbaa !23
  %i.av = fpext float %i.au to double             ; 2 uses
  %i.aw = fcmp ogt double %i.f, %i.av
  br i1 %i.aw, label %.lr.ph202.1, label %.preheader.1

.lr.ph202.1:                                      ; preds = %.preheader142.1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !23
  %i.az = fpext float %i.ay to double
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph202.1
  %i.ba = phi double [ %i.f, %.lr.ph202.1 ], [ %i.bb, %bb.e ]
  %i.bb = fsub double %i.ba, %i.az                ; 4 uses
  %i.bc = fcmp ogt double %i.bb, %i.av
  br i1 %i.bc, label %bb.e, label %..preheader_crit_edge.1, !llvm.loop !94

..preheader_crit_edge.1:                          ; preds = %bb.e
  store double %i.bb, ptr %i.l, align 8, !tbaa !103
  br label %.preheader.1

.preheader.1:                                     ; preds = %..preheader_crit_edge.1, %.preheader142.1
  %.lcssa.promoted.1 = phi double [ %i.bb, %..preheader_crit_edge.1 ], [ %i.f, %.preheader142.1 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.be = load float, ptr %i.bd, align 4, !tbaa !23
  %i.bf = fpext float %i.be to double             ; 2 uses
  %i.bg = fcmp ugt double %.lcssa.promoted.1, %i.bf
  br i1 %i.bg, label %.loopexit.1, label %.lr.ph206.1

.lr.ph206.1:                                      ; preds = %.preheader.1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !23
  %i.bj = fpext float %i.bi to double
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph206.1
  %i.bk = phi double [ %.lcssa.promoted.1, %.lr.ph206.1 ], [ %i.bl, %bb.f ]
  %i.bl = fadd double %i.bk, %i.bj                ; 3 uses
  %i.bm = fcmp ugt double %i.bl, %i.bf
  br i1 %i.bm, label %..loopexit_crit_edge.1, label %bb.f, !llvm.loop !95

..loopexit_crit_edge.1:                           ; preds = %bb.f
  store double %i.bl, ptr %i.l, align 8, !tbaa !103
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %..loopexit_crit_edge.1, %.preheader.1
  %.not141.2 = icmp eq i32 %i.y, 2
  br i1 %.not141.2, label %.critedge, label %.preheader142.2

.preheader142.2:                                  ; preds = %.loopexit, %.loopexit.1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !23
  %i.bp = fpext float %i.bo to double             ; 2 uses
  %i.bq = fcmp ogt double %i.k, %i.bp
  br i1 %i.bq, label %.lr.ph202.2, label %.preheader.2

.lr.ph202.2:                                      ; preds = %.preheader142.2
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bs = load float, ptr %i.br, align 4, !tbaa !23
  %i.bt = fpext float %i.bs to double
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph202.2
  %i.bu = phi double [ %i.k, %.lr.ph202.2 ], [ %i.bv, %bb.g ]
  %i.bv = fsub double %i.bu, %i.bt                ; 4 uses
  %i.bw = fcmp ogt double %i.bv, %i.bp
  br i1 %i.bw, label %bb.g, label %..preheader_crit_edge.2, !llvm.loop !94

..preheader_crit_edge.2:                          ; preds = %bb.g
  store double %i.bv, ptr %i.m, align 8, !tbaa !103
  br label %.preheader.2

.preheader.2:                                     ; preds = %..preheader_crit_edge.2, %.preheader142.2
  %.lcssa.promoted.2 = phi double [ %i.bv, %..preheader_crit_edge.2 ], [ %i.k, %.preheader142.2 ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.by = load float, ptr %i.bx, align 4, !tbaa !23
  %i.bz = fpext float %i.by to double             ; 2 uses
  %i.ca = fcmp ugt double %.lcssa.promoted.2, %i.bz
  br i1 %i.ca, label %.critedge, label %.lr.ph206.2

.lr.ph206.2:                                      ; preds = %.preheader.2
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !23
  %i.cd = fpext float %i.cc to double
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph206.2
  %i.ce = phi double [ %.lcssa.promoted.2, %.lr.ph206.2 ], [ %i.cf, %bb.h ]
  %i.cf = fadd double %i.ce, %i.cd                ; 3 uses
  %i.cg = fcmp ugt double %i.cf, %i.bz
  br i1 %i.cg, label %.critedge.sink.split, label %bb.h, !llvm.loop !95

bb.i:                                             ; preds = %bb.a, %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !33 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.not140 = icmp eq i32 %i.ci, 2                 ; 2 uses
  br i1 %.not140, label %.preheader151.1, label %.preheader151

.preheader151:                                    ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !23
  %i.co = fpext float %i.cn to double             ; 2 uses
  %i.cp = fcmp ogt double %i.k, %i.co
  br i1 %i.cp, label %.preheader148.us.preheader, label %.preheader150

.preheader148.us.preheader:                       ; preds = %.preheader151
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load float, ptr %i.cr, align 4, !tbaa !23
  %i.cs = load <2 x float>, ptr %i.cq, align 4, !tbaa !23
  %i.ct = fpext float %.pre to double
  %i.cu = fpext <2 x float> %i.cs to <2 x double>
  br label %.preheader148.us

.preheader148.us:                                 ; preds = %.preheader148.us.preheader, %.preheader148.us
  %i.cv = phi double [ %i.k, %.preheader148.us.preheader ], [ %i.cx, %.preheader148.us ]
  %i.cw = phi <2 x double> [ %i.e, %.preheader148.us.preheader ], [ %i.cy, %.preheader148.us ]
  %i.cx = fsub double %i.cv, %i.ct                ; 4 uses
  %i.cy = fsub <2 x double> %i.cw, %i.cu          ; 4 uses
  %i.cz = fcmp ogt double %i.cx, %i.co
  br i1 %i.cz, label %.preheader148.us, label %.preheader150.loopexit, !llvm.loop !96

.preheader150.loopexit:                           ; preds = %.preheader148.us
  store double %i.cx, ptr %i.m, align 8, !tbaa !103
  %i.da = extractelement <2 x double> %i.cy, i64 1
  store double %i.da, ptr %i.l, align 8, !tbaa !103
  %i.db = extractelement <2 x double> %i.cy, i64 0
  store double %i.db, ptr %3, align 8, !tbaa !103
  br label %.preheader150

.preheader150:                                    ; preds = %.preheader150.loopexit, %.preheader151
  %i.dc = phi double [ %i.k, %.preheader151 ], [ %i.cx, %.preheader150.loopexit ] ; 3 uses
  %i.dd = phi <2 x double> [ %i.e, %.preheader151 ], [ %i.cy, %.preheader150.loopexit ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.df = load float, ptr %i.de, align 4, !tbaa !23
  %i.dg = fpext float %i.df to double             ; 2 uses
  %i.dh = fcmp ugt double %i.dc, %i.dg
  br i1 %i.dh, label %bb.j, label %.preheader146.us.preheader

.preheader146.us.preheader:                       ; preds = %.preheader150
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre245 = load float, ptr %i.dj, align 4, !tbaa !23
  %i.dk = load <2 x float>, ptr %i.di, align 4, !tbaa !23
  %i.dl = fpext float %.pre245 to double
  %i.dm = fpext <2 x float> %i.dk to <2 x double>
  br label %.preheader146.us

.preheader146.us:                                 ; preds = %.preheader146.us.preheader, %.preheader146.us
  %i.dn = phi double [ %i.dc, %.preheader146.us.preheader ], [ %i.dp, %.preheader146.us ]
  %i.do = phi <2 x double> [ %i.dd, %.preheader146.us.preheader ], [ %i.dq, %.preheader146.us ]
  %i.dp = fadd double %i.dn, %i.dl                ; 4 uses
  %i.dq = fadd <2 x double> %i.do, %i.dm          ; 3 uses
  %i.dr = fcmp ugt double %i.dp, %i.dg
  br i1 %i.dr, label %.loopexit329, label %.preheader146.us, !llvm.loop !97

.loopexit329:                                     ; preds = %.preheader146.us
  store double %i.dp, ptr %i.m, align 8, !tbaa !103
  store <2 x double> %i.dq, ptr %3, align 8, !tbaa !103
  br label %bb.j

bb.j:                                             ; preds = %.loopexit329, %.preheader150
  %.lcssa160 = phi double [ %i.dc, %.preheader150 ], [ %i.dp, %.loopexit329 ] ; 4 uses
  %i.ds = phi <2 x double> [ %i.dd, %.preheader150 ], [ %i.dq, %.loopexit329 ] ; 3 uses
  %5 = tail call double @llvm.fmuladd.f64(double %.lcssa160, double %.lcssa160, double 0.000000e+00) ; 2 uses
  %.not140.1 = icmp eq i32 %i.ci, 1
  %i.dt = extractelement <2 x double> %i.ds, i64 0
  %i.du = extractelement <2 x double> %i.ds, i64 1 ; 2 uses
  br i1 %.not140.1, label %.preheader151.2, label %.preheader151.1

.preheader151.1:                                  ; preds = %bb.i, %bb.j
  %.1130316 = phi double [ %5, %bb.j ], [ 0.000000e+00, %bb.i ]
  %i.dv = phi double [ %i.du, %bb.j ], [ %i.f, %bb.i ]
  %i.dw = phi double [ %.lcssa160, %bb.j ], [ %i.k, %bb.i ] ; 2 uses
  %i.dx = phi <2 x double> [ %i.ds, %bb.j ], [ %i.e, %bb.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !23
  %i.ea = fpext float %i.dz to double             ; 2 uses
  %i.eb = fcmp ogt double %i.dv, %i.ea
  br i1 %i.eb, label %.preheader148.us.preheader.1, label %.preheader150.1

.preheader148.us.preheader.1:                     ; preds = %.preheader151.1
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ed = load <2 x float>, ptr %i.ec, align 4, !tbaa !23
  %i.ee = fpext <2 x float> %i.ed to <2 x double>
  br label %.preheader148.us.1

.preheader148.us.1:                               ; preds = %.preheader148.us.1, %.preheader148.us.preheader.1
  %i.ef = phi <2 x double> [ %i.eg, %.preheader148.us.1 ], [ %i.dx, %.preheader148.us.preheader.1 ]
  %i.eg = fsub <2 x double> %i.ef, %i.ee          ; 4 uses
  %i.eh = extractelement <2 x double> %i.eg, i64 1
  %i.ei = fcmp ogt double %i.eh, %i.ea
  br i1 %i.ei, label %.preheader148.us.1, label %.preheader150.1.loopexit, !llvm.loop !96

.preheader150.1.loopexit:                         ; preds = %.preheader148.us.1
  store <2 x double> %i.eg, ptr %3, align 8, !tbaa !103
  br label %.preheader150.1

.preheader150.1:                                  ; preds = %.preheader150.1.loopexit, %.preheader151.1
  %i.ej = phi <2 x double> [ %i.dx, %.preheader151.1 ], [ %i.eg, %.preheader150.1.loopexit ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.el = load float, ptr %i.ek, align 4, !tbaa !23
  %i.em = fpext float %i.el to double             ; 2 uses
  %i.en = extractelement <2 x double> %i.ej, i64 1 ; 3 uses
  %i.eo = fcmp ugt double %i.en, %i.em
  %i.ep = extractelement <2 x double> %i.ej, i64 0 ; 2 uses
  br i1 %i.eo, label %bb.k, label %.preheader146.us.preheader.1

.preheader146.us.preheader.1:                     ; preds = %.preheader150.1
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre251 = load float, ptr %i.er, align 4, !tbaa !23
  %.pre252 = load float, ptr %i.eq, align 4, !tbaa !23
  %i.es = fpext float %.pre251 to double
  %i.et = fpext float %.pre252 to double
  br label %.preheader146.us.1

.preheader146.us.1:                               ; preds = %.preheader146.us.1, %.preheader146.us.preheader.1
  %i.eu = phi double [ %i.ex, %.preheader146.us.1 ], [ %i.ep, %.preheader146.us.preheader.1 ]
  %i.ev = phi double [ %i.ew, %.preheader146.us.1 ], [ %i.en, %.preheader146.us.preheader.1 ]
  %i.ew = fadd double %i.ev, %i.es                ; 4 uses
  %i.ex = fadd double %i.eu, %i.et                ; 3 uses
  %i.ey = fcmp ugt double %i.ew, %i.em
  br i1 %i.ey, label %.loopexit328, label %.preheader146.us.1, !llvm.loop !97

.loopexit328:                                     ; preds = %.preheader146.us.1
  store double %i.ew, ptr %i.l, align 8, !tbaa !103
  store double %i.ex, ptr %3, align 8, !tbaa !103
  br label %bb.k

bb.k:                                             ; preds = %.loopexit328, %.preheader150.1
  %i.ez = phi double [ %i.ep, %.preheader150.1 ], [ %i.ex, %.loopexit328 ] ; 2 uses
  %.lcssa160.1 = phi double [ %i.en, %.preheader150.1 ], [ %i.ew, %.loopexit328 ] ; 4 uses
  %i.fa = tail call double @llvm.fmuladd.f64(double %.lcssa160.1, double %.lcssa160.1, double %.1130316) ; 2 uses
  %.not140.2 = icmp eq i32 %i.ci, 0
  br i1 %.not140.2, label %bb.l, label %.preheader151.2

.preheader151.2:                                  ; preds = %bb.j, %bb.k
  %.1130.1325 = phi double [ %i.fa, %bb.k ], [ %5, %bb.j ]
  %i.fb = phi double [ %i.ez, %bb.k ], [ %i.dt, %bb.j ] ; 3 uses
  %i.fc = phi double [ %.lcssa160.1, %bb.k ], [ %i.du, %bb.j ]
  %i.fd = phi double [ %i.dw, %bb.k ], [ %.lcssa160, %bb.j ]
  %.not140.1318323 = phi i1 [ false, %bb.k ], [ true, %bb.j ]
  %i.fe = load float, ptr %i.cj, align 4, !tbaa !23
  %i.ff = fpext float %i.fe to double             ; 2 uses
  %i.fg = fcmp ogt double %i.fb, %i.ff
  br i1 %i.fg, label %.preheader148.us.preheader.2, label %.preheader150.2

.preheader148.us.preheader.2:                     ; preds = %.preheader151.2
  %.pre253 = load float, ptr %i.ck, align 4, !tbaa !23
  %i.fh = fpext float %.pre253 to double
  br label %.preheader148.us.2

.preheader148.us.2:                               ; preds = %.preheader148.us.2, %.preheader148.us.preheader.2
  %i.fi = phi double [ %i.fj, %.preheader148.us.2 ], [ %i.fb, %.preheader148.us.preheader.2 ]
  %i.fj = fsub double %i.fi, %i.fh                ; 4 uses
  %i.fk = fcmp ogt double %i.fj, %i.ff
  br i1 %i.fk, label %.preheader148.us.2, label %.preheader150.2.loopexit, !llvm.loop !96

.preheader150.2.loopexit:                         ; preds = %.preheader148.us.2
  store double %i.fj, ptr %3, align 8, !tbaa !103
  br label %.preheader150.2

.preheader150.2:                                  ; preds = %.preheader150.2.loopexit, %.preheader151.2
  %i.fl = phi double [ %i.fb, %.preheader151.2 ], [ %i.fj, %.preheader150.2.loopexit ] ; 3 uses
  %i.fm = load float, ptr %i.cl, align 4, !tbaa !23
  %i.fn = fpext float %i.fm to double             ; 2 uses
  %i.fo = fcmp ugt double %i.fl, %i.fn
  br i1 %i.fo, label %._crit_edge189.2, label %.preheader146.us.preheader.2

.preheader146.us.preheader.2:                     ; preds = %.preheader150.2
  %.pre254 = load float, ptr %i.ck, align 4, !tbaa !23
  %i.fp = fpext float %.pre254 to double
  br label %.preheader146.us.2

.preheader146.us.2:                               ; preds = %.preheader146.us.2, %.preheader146.us.preheader.2
  %i.fq = phi double [ %i.fr, %.preheader146.us.2 ], [ %i.fl, %.preheader146.us.preheader.2 ]
  %i.fr = fadd double %i.fq, %i.fp                ; 4 uses
  %i.fs = fcmp ugt double %i.fr, %i.fn
  br i1 %i.fs, label %._crit_edge189.2.loopexit, label %.preheader146.us.2, !llvm.loop !97

._crit_edge189.2.loopexit:                        ; preds = %.preheader146.us.2
  store double %i.fr, ptr %3, align 8, !tbaa !103
  br label %._crit_edge189.2

._crit_edge189.2:                                 ; preds = %._crit_edge189.2.loopexit, %.preheader150.2
  %.lcssa160.2 = phi double [ %i.fl, %.preheader150.2 ], [ %i.fr, %._crit_edge189.2.loopexit ] ; 3 uses
  %i.ft = tail call double @llvm.fmuladd.f64(double %.lcssa160.2, double %.lcssa160.2, double %.1130.1325)
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge189.2, %bb.k
  %.not140.2327 = phi i1 [ false, %._crit_edge189.2 ], [ true, %bb.k ]
  %i.fu = phi double [ %i.fc, %._crit_edge189.2 ], [ %.lcssa160.1, %bb.k ]
  %i.fv = phi double [ %i.fd, %._crit_edge189.2 ], [ %i.dw, %bb.k ]
  %.not140.1318324 = phi i1 [ %.not140.1318323, %._crit_edge189.2 ], [ false, %bb.k ]
  %i.fw = phi double [ %.lcssa160.2, %._crit_edge189.2 ], [ %i.ez, %bb.k ]
  %.1130.2 = phi double [ %i.ft, %._crit_edge189.2 ], [ %i.fa, %bb.k ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !24
  %i.fz = fpext float %i.fy to double             ; 2 uses
  %i.ga = fcmp ogt double %.1130.2, %i.fz
  br i1 %i.ga, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !25 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %smax = tail call i32 @llvm.smax.i32(i32 %i.gc, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not392 = icmp slt i32 %i.gc, 1
  br i1 %exitcond.not392, label %.critedge, label %.preheader144

bb.n:                                             ; preds = %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv393, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.preheader144, !llvm.loop !98

.preheader144:                                    ; preds = %bb.m, %bb.n
  %.2131199394 = phi double [ %.3132, %bb.n ], [ %.1130.2, %bb.m ] ; 2 uses
  %indvars.iv393 = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [12 x i8], ptr %i.gd, i64 %indvars.iv393 ; 2 uses
  %6 = load float, ptr %i.ge, align 4, !tbaa !23
  %7 = fpext float %6 to double
  %8 = fadd double %i.fw, %7                      ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %9 = load <2 x float>, ptr %i.gf, align 4, !tbaa !23
  %10 = fpext <2 x float> %9 to <2 x double>      ; 2 uses
  %11 = extractelement <2 x double> %10, i64 0
  %i.gg = fadd double %i.fu, %11                  ; 3 uses
  %12 = extractelement <2 x double> %10, i64 1
  %13 = fadd double %i.fv, %12                    ; 3 uses
  %14 = tail call double @llvm.fmuladd.f64(double %8, double %8, double 0.000000e+00)
  %spec.select = select i1 %.not140.2327, double 0.000000e+00, double %14 ; 2 uses
  %i.gh = tail call double @llvm.fmuladd.f64(double %i.gg, double %i.gg, double %spec.select)
  %.1128.1 = select i1 %.not140.1318324, double %spec.select, double %i.gh ; 2 uses
  %i.gi = tail call double @llvm.fmuladd.f64(double %13, double %13, double %.1128.1)
  %.1128.2 = select i1 %.not140, double %.1128.1, double %i.gi ; 2 uses
  %i.gj = fcmp olt double %.1128.2, %.2131199394
  br i1 %i.gj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader144
  store double %8, ptr %3, align 8, !tbaa !103
  store double %i.gg, ptr %i.l, align 8, !tbaa !103
  store double %13, ptr %i.m, align 8, !tbaa !103
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader144
  %.3132 = phi double [ %.1128.2, %bb.o ], [ %.2131199394, %.preheader144 ] ; 2 uses
  %i.gk = fcmp ogt double %.3132, %i.fz
  br i1 %i.gk, label %bb.n, label %..critedge.loopexit_crit_edge395, !llvm.loop !98

..preheader155_crit_edge:                         ; preds = %bb.q
  store double %i.gt, ptr %3, align 8, !tbaa !103
  br label %.preheader155

.preheader155:                                    ; preds = %..preheader155_crit_edge, %.preheader156
  %.promoted167 = phi double [ %i.gt, %..preheader155_crit_edge ], [ %i.s, %.preheader156 ] ; 2 uses
  %.0125.lcssa = phi i1 [ %i.gu, %..preheader155_crit_edge ], [ false, %.preheader156 ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !23
  %i.gn = fpext float %i.gm to double             ; 2 uses
  %i.go = fcmp ugt double %.promoted167, %i.gn
  br i1 %i.go, label %bb.s, label %.lr.ph169

.lr.ph169:                                        ; preds = %.preheader155
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !23
  %i.gr = fpext float %i.gq to double
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %.0125165 = phi i1 [ false, %.lr.ph ], [ %i.gu, %bb.q ]
  %i.gs = phi double [ %i.s, %.lr.ph ], [ %i.gt, %bb.q ]
  %i.gt = fsub double %i.gs, %i.w                 ; 4 uses
  %i.gu = xor i1 %.0125165, true                  ; 2 uses
  %i.gv = fcmp ogt double %i.gt, %i.r
  br i1 %i.gv, label %bb.q, label %..preheader155_crit_edge, !llvm.loop !99

bb.r:                                             ; preds = %.lr.ph169, %bb.r
  %.1126168 = phi i1 [ %.0125.lcssa, %.lr.ph169 ], [ %i.gy, %bb.r ] ; 2 uses
  %i.gw = phi double [ %.promoted167, %.lr.ph169 ], [ %i.gx, %bb.r ]
  %i.gx = fadd double %i.gw, %i.gr                ; 3 uses
  %i.gy = xor i1 %.1126168, true
  %i.gz = fcmp ugt double %i.gx, %i.gn
  br i1 %i.gz, label %._crit_edge, label %bb.r, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.r
  store double %i.gx, ptr %3, align 8, !tbaa !103
  br i1 %.1126168, label %.preheader153, label %bb.t

bb.s:                                             ; preds = %.preheader155
  br i1 %.0125.lcssa, label %bb.t, label %.preheader153

bb.t:                                             ; preds = %._crit_edge, %bb.s
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !23
  %i.hc = fpext float %i.hb to double
  %i.hd = load double, ptr %i.a, align 8, !tbaa !103
  %i.he = fsub double %i.hc, %i.hd
  %i.hf = load double, ptr %i.b, align 8, !tbaa !103
  %i.hg = fsub double %i.he, %i.hf                ; 2 uses
  store double %i.hg, ptr %i.l, align 8, !tbaa !103
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !23
  %i.hj = fpext float %i.hi to double
  %i.hk = load double, ptr %i.g, align 8, !tbaa !103
  %i.hl = fsub double %i.hj, %i.hk
  %i.hm = load double, ptr %i.i, align 8, !tbaa !103
  %i.hn = fsub double %i.hl, %i.hm                ; 2 uses
  store double %i.hn, ptr %i.m, align 8, !tbaa !103
  br label %.preheader153

.preheader153:                                    ; preds = %._crit_edge, %bb.t, %bb.s
  %.promoted172.1 = phi double [ %i.hn, %bb.t ], [ %i.k, %bb.s ], [ %i.k, %._crit_edge ] ; 3 uses
  %.promoted172 = phi double [ %i.hg, %bb.t ], [ %i.f, %bb.s ], [ %i.f, %._crit_edge ] ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !23
  %i.hq = fpext float %i.hp to double             ; 2 uses
  %i.hr = fcmp ogt double %.promoted172, %i.hq
  br i1 %i.hr, label %.lr.ph173, label %.preheader152

.lr.ph173:                                        ; preds = %.preheader153
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !23
  %i.hu = fpext float %i.ht to double
  br label %bb.u

..preheader152_crit_edge:                         ; preds = %bb.u
  store double %i.id, ptr %i.l, align 8, !tbaa !103
  br label %.preheader152

.preheader152:                                    ; preds = %..preheader152_crit_edge, %.preheader153
  %.lcssa161.promoted = phi double [ %i.id, %..preheader152_crit_edge ], [ %.promoted172, %.preheader153 ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !23
  %i.hx = fpext float %i.hw to double             ; 2 uses
  %i.hy = fcmp ugt double %.lcssa161.promoted, %i.hx
  br i1 %i.hy, label %.preheader153.1, label %.lr.ph177

.lr.ph177:                                        ; preds = %.preheader152
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !23
  %i.ib = fpext float %i.ia to double
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph173, %bb.u
  %i.ic = phi double [ %.promoted172, %.lr.ph173 ], [ %i.id, %bb.u ]
  %i.id = fsub double %i.ic, %i.hu                ; 4 uses
  %i.ie = fcmp ogt double %i.id, %i.hq
  br i1 %i.ie, label %bb.u, label %..preheader152_crit_edge, !llvm.loop !101

bb.v:                                             ; preds = %.lr.ph177, %bb.v
  %i.if = phi double [ %.lcssa161.promoted, %.lr.ph177 ], [ %i.ig, %bb.v ]
  %i.ig = fadd double %i.if, %i.ib                ; 3 uses
  %i.ih = fcmp ugt double %i.ig, %i.hx
  br i1 %i.ih, label %._crit_edge178, label %bb.v, !llvm.loop !102

._crit_edge178:                                   ; preds = %bb.v
  store double %i.ig, ptr %i.l, align 8, !tbaa !103
  br label %.preheader153.1

.preheader153.1:                                  ; preds = %._crit_edge178, %.preheader152
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !23
  %i.ik = fpext float %i.ij to double             ; 2 uses
  %i.il = fcmp ogt double %.promoted172.1, %i.ik
  br i1 %i.il, label %.lr.ph173.1, label %.preheader152.1

.lr.ph173.1:                                      ; preds = %.preheader153.1
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.in = load float, ptr %i.im, align 4, !tbaa !23
  %i.io = fpext float %i.in to double
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph173.1
  %i.ip = phi double [ %.promoted172.1, %.lr.ph173.1 ], [ %i.iq, %bb.w ]
  %i.iq = fsub double %i.ip, %i.io                ; 4 uses
  %i.ir = fcmp ogt double %i.iq, %i.ik
  br i1 %i.ir, label %bb.w, label %..preheader152_crit_edge.1, !llvm.loop !101

..preheader152_crit_edge.1:                       ; preds = %bb.w
  store double %i.iq, ptr %i.m, align 8, !tbaa !103
  br label %.preheader152.1

.preheader152.1:                                  ; preds = %..preheader152_crit_edge.1, %.preheader153.1
  %.lcssa161.promoted.1 = phi double [ %i.iq, %..preheader152_crit_edge.1 ], [ %.promoted172.1, %.preheader153.1 ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.it = load float, ptr %i.is, align 4, !tbaa !23
  %i.iu = fpext float %i.it to double             ; 2 uses
  %i.iv = fcmp ugt double %.lcssa161.promoted.1, %i.iu
  br i1 %i.iv, label %.critedge, label %.lr.ph177.1

.lr.ph177.1:                                      ; preds = %.preheader152.1
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !23
  %i.iy = fpext float %i.ix to double
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph177.1
  %i.iz = phi double [ %.lcssa161.promoted.1, %.lr.ph177.1 ], [ %i.ja, %bb.x ]
  %i.ja = fadd double %i.iz, %i.iy                ; 3 uses
  %i.jb = fcmp ugt double %i.ja, %i.iu
  br i1 %i.jb, label %.critedge.sink.split, label %bb.x, !llvm.loop !102

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1226, ptr noundef nonnull @.str.44) #30
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.jc

.critedge.sink.split:                             ; preds = %bb.x, %bb.h
  %.lcssa347.sink = phi double [ %i.cf, %bb.h ], [ %i.ja, %bb.x ]
  store double %.lcssa347.sink, ptr %i.m, align 8, !tbaa !103
  br label %.critedge

..critedge.loopexit_crit_edge395:                 ; preds = %bb.p
  br label %.critedge, !llvm.loop !98

.critedge:                                        ; preds = %bb.n, %bb.m, %..critedge.loopexit_crit_edge395, %.critedge.sink.split, %.preheader152.1, %.loopexit.1, %.preheader.2, %bb.a, %bb.a, %bb.l
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z11calc_shiftsPA3_KfN3gmx8ArrayRefINS2_11BasicVectorIfEEEE(ptr nofree noundef readonly captures(none) %0, ptr nofree writeonly captures(none) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
end_hunk_1
