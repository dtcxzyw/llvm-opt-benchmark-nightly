Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai18kk_solve_component:bb.a
  %i.ej = load i64, ptr %.sroa.8.0.copyload, align 8, !noundef !67 ; 4 uses
  %i.ek = invoke fastcc noundef double @_RNCNvNtNtCskcxRuJ53GpR_9rustworkx6layout12kamada_kawai18kk_solve_components_0B7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %i.ej)
          to label %bb.t unwind label %.loopexit114 ; 3 uses

.loopexit114:                                     ; preds = %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %.split198.us.invoke, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp, %.loopexit114
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit114 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.el = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.el, label %common.resume, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i86

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i86: ; preds = %bb.s
  %i.em = shl nuw i64 %.sroa.0.0.copyload, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %i.em, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !153423
  br label %common.resume

bb.t:                                             ; preds = %bb.r
  br i1 %i.ef, label %._crit_edge195, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.t
  %i.en = load ptr, ptr %i.e, align 8, !nonnull !67, !align !98 ; 2 uses
  %i.eo = load i64, ptr %i.f, align 8
  %.fr251 = freeze i64 %i.eo                      ; 2 uses
  %.idx.i = shl nuw nsw i64 %.fr251, 3
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 %.idx.i ; 2 uses
  %i.eq = icmp eq i64 %.fr251, 0
  %i.er = load i64, ptr %i.d, align 8
  %i.es = load double, ptr %i.c, align 8
  br i1 %i.eq, label %.lr.ph194.split.us, label %.lr.ph194.split

.lr.ph194.split.us:                               ; preds = %.lr.ph194, %bb.u
  %.sroa.021.0192.us = phi ptr [ %.sroa.021.0.us, %bb.u ], [ %.sroa.021.0189, %.lr.ph194 ] ; 2 uses
  %.sroa.07.0191.us = phi i64 [ %.sroa.07.1.us, %bb.u ], [ %i.ej, %.lr.ph194 ]
  %.sroa.018.0190.us = phi double [ %.sroa.018.1.us, %bb.u ], [ %i.ek, %.lr.ph194 ] ; 2 uses
  %i.et = load i64, ptr %.sroa.021.0192.us, align 8, !noundef !67 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153424)
  %i.eu = icmp ult i64 %i.et, %3
  br i1 %i.eu, label %bb.u, label %.split198.us.invoke

bb.u:                                             ; preds = %.lr.ph194.split.us
  %i.ev = fcmp olt double %.sroa.018.0190.us, 0.000000e+00 ; 2 uses
  %.sroa.018.1.us = select i1 %i.ev, double 0.000000e+00, double %.sroa.018.0190.us ; 2 uses
  %.sroa.07.1.us = select i1 %i.ev, i64 %i.et, i64 %.sroa.07.0191.us ; 2 uses
  %.sroa.021.0.us = getelementptr inbounds nuw i8, ptr %.sroa.021.0192.us, i64 8 ; 2 uses
  %i.ew = icmp eq ptr %.sroa.021.0.us, %i.ee
  br i1 %i.ew, label %._crit_edge195, label %.lr.ph194.split.us

.lr.ph194.split:                                  ; preds = %.lr.ph194, %.loopexit
  %.sroa.021.0192 = phi ptr [ %.sroa.021.0, %.loopexit ], [ %.sroa.021.0189, %.lr.ph194 ] ; 2 uses
  %.sroa.07.0191 = phi i64 [ %.sroa.07.1, %.loopexit ], [ %i.ej, %.lr.ph194 ]
  %.sroa.018.0190 = phi double [ %.sroa.018.1, %.loopexit ], [ %i.ek, %.lr.ph194 ] ; 2 uses
  %i.ex = load i64, ptr %.sroa.021.0192, align 8, !noundef !67 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153424)
  %i.ey = icmp ult i64 %i.ex, %3
  br i1 %i.ey, label %.lr.ph.i.preheader, label %.split198.us.invoke

.lr.ph.i.preheader:                               ; preds = %.lr.ph194.split
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ex
  %i.fa = load <2 x double>, ptr %i.ez, align 8, !alias.scope !153424, !noalias !153425
  %i.fb = mul i64 %i.er, %i.ex
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.outer.i
  %.sroa.07.0.ph31.i = phi ptr [ %i.fg, %.outer.i ], [ %i.en, %.lr.ph.i.preheader ]
  %i.fc = phi <2 x double> [ %i.ge, %.outer.i ], [ zeroinitializer, %.lr.ph.i.preheader ] ; 2 uses
  br label %bb.v

.split198.us.invoke:                              ; preds = %.lr.ph194.split, %.lr.ph194.split.us, %bb.y, %bb.w
  %i.fd = phi i64 [ %i.fj, %bb.w ], [ %i.et, %.lr.ph194.split.us ], [ %i.fh, %bb.y ], [ %i.ex, %.lr.ph194.split ]
  %i.fe = phi i64 [ %1, %bb.w ], [ %3, %.lr.ph194.split.us ], [ %3, %bb.y ], [ %3, %.lr.ph194.split ]
  %i.ff = phi ptr [ @1433, %bb.w ], [ @1432, %.lr.ph194.split.us ], [ @1434, %bb.y ], [ @1432, %.lr.ph194.split ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.fd, i64 noundef %i.fe, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ff) #60
          to label %.split198.us.cont unwind label %.loopexit.split-lp

.split198.us.cont:                                ; preds = %.split198.us.invoke
  unreachable

bb.v:                                             ; preds = %bb.z, %.lr.ph.i
  %.sroa.07.027.i = phi ptr [ %.sroa.07.0.ph31.i, %.lr.ph.i ], [ %i.fg, %bb.z ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.07.027.i, i64 8 ; 4 uses
  %i.fh = load i64, ptr %.sroa.07.027.i, align 8, !noalias !153426, !noundef !67 ; 5 uses
  %i.fi = icmp eq i64 %i.fh, %i.ex
  br i1 %i.fi, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fj = add i64 %i.fb, %i.fh                    ; 3 uses
  %i.fk = icmp ult i64 %i.fj, %1
  br i1 %i.fk, label %bb.x, label %.split198.us.invoke

bb.x:                                             ; preds = %bb.w
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fj
  %i.fm = load double, ptr %i.fl, align 8, !noalias !153426, !noundef !67 ; 4 uses
  %or.cond.i = call i1 @llvm.is.fpclass.f64(double %i.fm, /* (nan inf zero nsub nnorm) */ i32 639)
  br i1 %or.cond.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = icmp ult i64 %i.fh, %3
  br i1 %i.fn, label %.outer.i, label %.split198.us.invoke

.outer.i:                                         ; preds = %bb.y
  %i.fo = fmul nnan double %i.fm, %i.fm
  %i.fp = fdiv nnan double 1.000000e+00, %i.fo
  %i.fq = fdiv double %i.fm, %i.es
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.fh
  %i.fs = load <2 x double>, ptr %i.fr, align 8, !alias.scope !153424, !noalias !153425
  %i.ft = fsub <2 x double> %i.fa, %i.fs          ; 3 uses
  %i.fu = fmul <2 x double> %i.ft, %i.ft
  %i.fv = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.fu)
  %i.fw = call double @llvm.sqrt.f64(double %i.fv)
  %i.fx = call nsz double @llvm.maximumnum.f64(double %i.fw, double 1.000000e-08)
  %i.fy = fdiv double %i.fq, %i.fx
  %i.fz = fsub double 1.000000e+00, %i.fy
  %i.ga = fmul double %i.fp, %i.fz
  %i.gb = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gd = fmul <2 x double> %i.ft, %i.gc
  %i.ge = fadd <2 x double> %i.fc, %i.gd          ; 2 uses
  %i.gf = icmp eq ptr %i.fg, %i.ep
  br i1 %i.gf, label %.loopexit, label %.lr.ph.i

bb.z:                                             ; preds = %bb.x, %bb.v
  %i.gg = icmp eq ptr %i.fg, %i.ep
  br i1 %i.gg, label %.loopexit, label %bb.v

._crit_edge195:                                   ; preds = %.loopexit, %bb.u, %bb.t
  %.sroa.018.0.lcssa = phi double [ %i.ek, %bb.t ], [ %.sroa.018.1.us, %bb.u ], [ %.sroa.018.1, %.loopexit ]
  %.sroa.07.0.lcssa = phi i64 [ %i.ej, %bb.t ], [ %.sroa.07.1.us, %bb.u ], [ %.sroa.07.1, %.loopexit ]
  %.sroa.07.0.lcssa.fr = freeze i64 %.sroa.07.0.lcssa ; 5 uses
  %i.gh = fcmp olt double %.sroa.018.0.lcssa, %8
  br i1 %i.gh, label %._crit_edge247, label %.preheader

.preheader:                                       ; preds = %._crit_edge195
  %i.gi = icmp ult i64 %.sroa.07.0.lcssa.fr, %3
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.07.0.lcssa.fr ; 3 uses
  %i.gk = load ptr, ptr %i.e, align 8, !nonnull !67, !align !98 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.idx ; 2 uses
  %i.gm = load i64, ptr %i.d, align 8
  %i.gn = mul i64 %i.gm, %.sroa.07.0.lcssa.fr
  %i.go = load double, ptr %i.c, align 8
  br i1 %i.gi, label %.preheader.split.us.preheader, label %.preheader.split

.preheader.split.us.preheader:                    ; preds = %.preheader
  br i1 %exitcond.not524, label %.loopexit113, label %.lr.ph203.us.preheader.preheader

.lr.ph203.us.preheader.preheader:                 ; preds = %.preheader.split.us.preheader
  %i.gp = insertelement <2 x double> poison, double %i.go, i64 1
  %.promoted = load <2 x double>, ptr %i.gj, align 8
  br label %.lr.ph203.us.preheader

.lr.ph203.us.preheader:                           ; preds = %.lr.ph203.us.preheader.preheader, %bb.af
  %i.gq = phi <2 x double> [ %i.je, %bb.af ], [ %.promoted, %.lr.ph203.us.preheader.preheader ] ; 3 uses
  %.sroa.060.0.us525 = phi i64 [ %i.gr, %bb.af ], [ 0, %.lr.ph203.us.preheader.preheader ]
  %i.gr = add i64 %.sroa.060.0.us525, 1           ; 2 uses
  br label %.lr.ph203.us

bb.aa:                                            ; preds = %.lr.ph203.us, %bb.ad
  %.sroa.055.0202.us = phi ptr [ %.sroa.055.0.ph215.us, %.lr.ph203.us ], [ %i.gs, %bb.ad ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.055.0202.us, i64 8 ; 4 uses
  %i.gt = load i64, ptr %.sroa.055.0202.us, align 8, !noundef !67 ; 5 uses
  %i.gu = icmp eq i64 %i.gt, %.sroa.07.0.lcssa.fr
  br i1 %i.gu, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gv = add i64 %i.gn, %i.gt                    ; 3 uses
  %i.gw = icmp ult i64 %i.gv, %1
  br i1 %i.gw, label %bb.ac, label %.invoke

bb.ac:                                            ; preds = %bb.ab
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gv
  %i.gy = load double, ptr %i.gx, align 8, !noundef !67 ; 4 uses
  %or.cond.us = call i1 @llvm.is.fpclass.f64(double %i.gy, /* (nan inf zero nsub nnorm) */ i32 639)
  br i1 %or.cond.us, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %i.gz = icmp eq ptr %i.gs, %i.gl
  br i1 %i.gz, label %.outer._crit_edge.us, label %bb.aa

bb.ae:                                            ; preds = %bb.ac
  %i.ha = icmp ult i64 %i.gt, %3
  br i1 %i.ha, label %.outer.us, label %.invoke

.outer.us:                                        ; preds = %bb.ae
  %i.hb = fmul double %i.gy, %i.gy
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.gt
  %i.hd = load <2 x double>, ptr %i.hc, align 8
  %i.he = fsub <2 x double> %i.gq, %i.hd          ; 7 uses
  %i.hf = extractelement <2 x double> %i.he, i64 0
  %i.hg = extractelement <2 x double> %i.he, i64 1
  %i.hh = fmul <2 x double> %i.he, %i.he
  %i.hi = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.hh)
  %i.hj = call nsz double @llvm.maximumnum.f64(double %i.hi, double f0x3C9CD2B297D889BD) ; 2 uses
  %i.hk = call double @llvm.sqrt.f64(double %i.hj) ; 2 uses
  %i.hl = fmul nnan double %i.hj, %i.hk           ; 2 uses
  %i.hm = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.gy, i64 1
  %i.hn = insertelement <2 x double> %i.gp, double %i.hb, i64 0
  %i.ho = fdiv <2 x double> %i.hm, %i.hn          ; 4 uses
  %i.hp = extractelement <2 x double> %i.ho, i64 1 ; 2 uses
  %i.hq = fdiv double %i.hp, %i.hk
  %i.hr = fsub double 1.000000e+00, %i.hq
  %i.hs = extractelement <2 x double> %i.ho, i64 0 ; 2 uses
  %i.ht = fmul double %i.hs, %i.hr
  %i.hu = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x double> %i.he, %i.hv
  %i.hx = fadd <2 x double> %i.jj, %i.hw          ; 2 uses
  %i.hy = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hz = fmul <2 x double> %i.hy, %i.he
  %i.ia = fmul <2 x double> %i.he, %i.hz
  %i.ib = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.ic = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = fdiv <2 x double> %i.ia, %i.ic
  %i.ie = fsub <2 x double> splat (double 1.000000e+00), %i.id
  %i.if = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = fmul <2 x double> %i.if, %i.ie
  %i.ih = fadd <2 x double> %i.jk, %i.ig          ; 2 uses
  %i.ii = fmul double %i.hs, %i.hp
  %i.ij = fmul double %i.ii, %i.hf
  %i.ik = fmul double %i.ij, %i.hg
  %i.il = fdiv double %i.ik, %i.hl
  %i.im = fadd double %.sroa.030.0.ph219.us, %i.il ; 2 uses
  %i.in = icmp eq ptr %i.gs, %i.gl
  br i1 %i.in, label %.outer._crit_edge.us, label %.lr.ph203.us

.outer._crit_edge.us:                             ; preds = %.outer.us, %bb.ad
  %.sroa.030.0.ph.lcssa154.us = phi double [ %.sroa.030.0.ph219.us, %bb.ad ], [ %i.im, %.outer.us ] ; 3 uses
  %i.io = phi <2 x double> [ %i.jj, %bb.ad ], [ %i.hx, %.outer.us ] ; 7 uses
  %i.ip = phi <2 x double> [ %i.jk, %bb.ad ], [ %i.ih, %.outer.us ] ; 3 uses
  %shift = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.ip, %shift
  %i.iq = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ir = fmul double %.sroa.030.0.ph.lcssa154.us, %.sroa.030.0.ph.lcssa154.us
  %i.is = fsub double %i.iq, %i.ir                ; 2 uses
  %i.it = call double @llvm.fabs.f64(double %i.is)
  %i.iu = fcmp olt double %i.it, 1.000000e-08
  br i1 %i.iu, label %.split233.us, label %bb.af

bb.af:                                            ; preds = %.outer._crit_edge.us
  %i.iv = insertelement <2 x double> poison, double %.sroa.030.0.ph.lcssa154.us, i64 0
  %i.iw = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ix = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iy = fmul <2 x double> %i.iw, %i.ix
  %i.iz = fmul <2 x double> %i.io, %i.ip
  %i.ja = fsub <2 x double> %i.iy, %i.iz
  %i.jb = insertelement <2 x double> poison, double %i.is, i64 0
  %i.jc = shufflevector <2 x double> %i.jb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jd = fdiv <2 x double> %i.ja, %i.jc
  %i.je = fadd <2 x double> %i.gq, %i.jd          ; 2 uses
  store <2 x double> %i.je, ptr %i.gj, align 8
  %i.jf = fmul <2 x double> %i.io, %i.io
  %i.jg = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.jf)
  %i.jh = call double @llvm.sqrt.f64(double %i.jg)
  %i.ji = fcmp olt double %i.jh, %8
  %exitcond.not = icmp eq i64 %i.gr, %10
  %or.cond = select i1 %i.ji, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.loopexit113, label %.lr.ph203.us.preheader

.lr.ph203.us:                                     ; preds = %.lr.ph203.us.preheader, %.outer.us
  %.sroa.030.0.ph219.us = phi double [ %i.im, %.outer.us ], [ 0.000000e+00, %.lr.ph203.us.preheader ] ; 2 uses
  %.sroa.055.0.ph215.us = phi ptr [ %i.gs, %.outer.us ], [ %i.gk, %.lr.ph203.us.preheader ]
  %i.jj = phi <2 x double> [ %i.hx, %.outer.us ], [ zeroinitializer, %.lr.ph203.us.preheader ] ; 2 uses
  %i.jk = phi <2 x double> [ %i.ih, %.outer.us ], [ zeroinitializer, %.lr.ph203.us.preheader ] ; 2 uses
  br label %bb.aa

.split233.us:                                     ; preds = %.outer._crit_edge.us
  %i.jl = fmul <2 x double> %i.io, splat (double 1.000000e-01)
  %i.jm = fmul <2 x double> %i.io, %i.io
  %i.jn = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.jm)
  %i.jo = call double @llvm.sqrt.f64(double %i.jn)
  %i.jp = call nsz double @llvm.maximumnum.f64(double %i.jo, double 1.000000e-08)
  %i.jq = insertelement <2 x double> poison, double %i.jp, i64 0
  %i.jr = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.js = fdiv <2 x double> %i.jl, %i.jr
  %i.jt = fsub <2 x double> %i.gq, %i.js
  store <2 x double> %i.jt, ptr %i.gj, align 8
  br label %.loopexit113

.preheader.split:                                 ; preds = %.preheader
  br i1 %.not250, label %.loopexit113, label %.invoke

.loopexit:                                        ; preds = %.outer.i, %bb.z
  %i.ju = phi <2 x double> [ %i.fc, %bb.z ], [ %i.ge, %.outer.i ] ; 2 uses
  %i.jv = fmul <2 x double> %i.ju, %i.ju
  %i.jw = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.jv)
  %i.jx = call noundef double @llvm.sqrt.f64(double %i.jw) ; 2 uses
  %i.jy = fcmp ogt double %i.jx, %.sroa.018.0190  ; 2 uses
  %.sroa.018.1 = select i1 %i.jy, double %i.jx, double %.sroa.018.0190 ; 2 uses
  %.sroa.07.1 = select i1 %i.jy, i64 %i.ex, i64 %.sroa.07.0191 ; 2 uses
  %.sroa.021.0 = getelementptr inbounds nuw i8, ptr %.sroa.021.0192, i64 8 ; 2 uses
  %i.jz = icmp eq ptr %.sroa.021.0, %i.ee
  br i1 %i.jz, label %._crit_edge195, label %.lr.ph194.split

.invoke:                                          ; preds = %.preheader.split, %bb.ae, %bb.ab
  %i.ka = phi i64 [ %i.gt, %bb.ae ], [ %i.gv, %bb.ab ], [ %.sroa.07.0.lcssa.fr, %.preheader.split ]
  %i.kb = phi i64 [ %3, %bb.ae ], [ %1, %bb.ab ], [ %3, %.preheader.split ]
  %i.kc = phi ptr [ @3574, %bb.ae ], [ @3573, %bb.ab ], [ @3572, %.preheader.split ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.ka, i64 noundef %i.kb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kc) #61
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit113:                                     ; preds = %bb.af, %.preheader.split.us.preheader, %.preheader.split, %.split233.us
  %exitcond327.not = icmp eq i64 %i.ei, %9
  br i1 %exitcond327.not, label %._crit_edge247, label %bb.r

.sink.split:                                      ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i82, %._crit_edge247, %._crit_edge.split, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring7rescale(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, double noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !67 ; 4 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153437)
  %.val.i = load i64, ptr %3, align 8, !alias.scope !153437 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !153437, !nonnull !67, !noundef !67
  %i.g = shl nuw i64 %.val.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !153437
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !67, !noundef !67 ; 5 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %scalar.ph, %middle.block, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i, %bb.b, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterjEECskcxRuJ53GpR_9rustworkx.exit31
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.05.051 = phi ptr [ %i.s, %bb.c ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %i.k = phi <2 x double> [ %i.v, %bb.c ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.l = load i64, ptr %.sroa.05.051, align 8, !noundef !67 ; 3 uses
  %i.m = icmp ult i64 %i.l, %1
  br i1 %i.m, label %bb.c, label %bb.d

.lr.ph58.preheader:                               ; preds = %bb.c
  %i.n = uitofp nneg i64 %i.b to double
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x double> %i.v, %i.p
  %i.r = load i64, ptr %3, align 8, !range !70, !noundef !67 ; 4 uses
  br label %.lr.ph58

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.051, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  %i.u = load <2 x double>, ptr %i.t, align 8
  %i.v = fadd <2 x double> %i.k, %i.u             ; 2 uses
  %.not = icmp eq ptr %i.s, %i.j
  br i1 %.not, label %.lr.ph58.preheader, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3605) #61
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.g, %bb.d
  unreachable

bb.f:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = icmp eq i64 %i.r, 0
  br i1 %i.x, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit35, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecjEECskcxRuJ53GpR_9rustworkx.exit35.sink.split

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %bb.h
  %.sroa.07.056 = phi double [ %spec.store.select, %bb.h ], [ -inf, %.lr.ph58.preheader ] ; 2 uses
  %.sroa.5.055 = phi ptr [ %i.av, %bb.h ], [ %i.i, %.lr.ph58.preheader ] ; 2 uses
  %i.y = load i64, ptr %.sroa.5.055, align 8, !noalias !153438, !noundef !67 ; 2 uses
  %i.z = icmp ult i64 %i.y, %1
  br i1 %i.z, label %bb.h, label %bb.g, !prof !77

._crit_edge59:                                    ; preds = %bb.h
  %i.aa = icmp eq i64 %i.r, 0
  br i1 %i.aa, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCs87CvPiUlf0m_5alloc3vec9into_iter8IntoIterjEECskcxRuJ53GpR_9rustworkx.exit31, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4.i.i30

end_hunk_0
