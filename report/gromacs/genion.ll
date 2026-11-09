Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/genion?download=true
inline.NumInlined: 841
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z10gmx_genioniPPc:bb.a

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull %i.df) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.t, %bb.s
  %i.dg = load ptr, ptr %8, align 8, !tbaa !29    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !19
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 2344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.dl, i64 72, i1 false), !tbaa.struct !116
  %i.dm = load i32, ptr %4, align 8, !tbaa !37    ; 3 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !38 ; 9 uses
  %wide.trip.count = zext nneg i32 %i.dm to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.dq = icmp ult i32 %i.dm, 8
  br i1 %i.dq, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.y

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %.056235.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.fp, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod532 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod532)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.u ] ; 2 uses
  %.056235.epil = phi double [ %.056235.epil.init, %.epil.preheader ], [ %i.dv, %bb.u ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.dr = getelementptr inbounds nuw [36 x i8], ptr %i.dp, i64 %indvars.iv.epil
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !42
  %i.du = fpext float %i.dt to double
  %i.dv = fadd double %.056235.epil, %i.du        ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %bb.u, !llvm.loop !76

._crit_edge.loopexit:                             ; preds = %bb.u, %._crit_edge.loopexit.unr-lcssa
  %.lcssa530 = phi double [ %i.fp, %._crit_edge.loopexit.unr-lcssa ], [ %i.dv, %bb.u ]
  %i.dw = call double @llvm.rint.f64(double %.lcssa530)
  %i.dx = fptosi double %i.dw to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %.056.lcssa = phi i32 [ 0, %_ZNSt10filesystem7__cxx114pathD2Ev.exit ], [ %i.dx, %._crit_edge.loopexit ]
  %i.dy = load float, ptr %i.k, align 4, !tbaa !17 ; 2 uses
  %i.dz = fcmp ogt float %i.dy, 0.000000e+00
  br i1 %i.dz, label %bb.z, label %bb.aa

bb.v:                                             ; preds = %bb.q, %bb.p
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.eb, %bb.w ], [ %i.ea, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.eu

bb.y:                                             ; preds = %bb.y, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.y ] ; 9 uses
  %.056235 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.fp, %bb.y ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.y ]
  %i.ec = getelementptr inbounds nuw [36 x i8], ptr %i.dp, i64 %indvars.iv
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !42
  %i.ef = fpext float %i.ee to double
  %i.eg = fadd double %.056235, %i.ef
  %i.eh = getelementptr inbounds nuw [36 x i8], ptr %i.dp, i64 %indvars.iv
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !42
  %i.ek = fpext float %i.ej to double
  %i.el = fadd double %i.eg, %i.ek
  %i.em = getelementptr inbounds nuw [36 x i8], ptr %i.dp, i64 %indvars.iv
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 76
  %i.eo = load float, ptr %i.en, align 4, !tbaa !42
  %i.ep = fpext float %i.eo to double
  %i.eq = fadd double %i.el, %i.ep
  %i.er = getelementptr inbounds nuw [36 x i8], ptr %i.dp, i64 %indvars.iv
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 112
  %i.et = load float, ptr %i.es, align 4, !tbaa !42
  %i.eu = fpext float %i.et to double
  %i.ev = fadd double %i.eq, %i.eu
  %i.ew = getelementptr inbounds nuw [36 x i8], ptr %i.dp, i64 %indvars.iv
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 148
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !42
  %i.ez = fpext float %i.ey to double
  %i.fa = fadd double %i.ev, %i.ez
  %i.fb = getelementptr inbounds nuw [36 x i8], ptr %i.dp, i64 %indvars.iv
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 184
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !42
  %i.fe = fpext float %i.fd to double
  %i.ff = fadd double %i.fa, %i.fe
  %i.fg = getelementptr inbounds nuw [36 x i8], ptr %i.dp, i64 %indvars.iv
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 220
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !42
  %i.fj = fpext float %i.fi to double
  %i.fk = fadd double %i.ff, %i.fj
  %i.fl = getelementptr inbounds nuw [36 x i8], ptr %i.dp, i64 %indvars.iv
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 256
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !42
  %i.fo = fpext float %i.fn to double
  %i.fp = fadd double %i.fk, %i.fo                ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.y, !llvm.loop !77

bb.z:                                             ; preds = %._crit_edge
  %i.fq = load float, ptr %i.o, align 16, !tbaa !17
  %i.fr = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ft = load float, ptr %i.fs, align 16, !tbaa !17 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.fv = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.fw = load float, ptr %i.fv, align 16, !tbaa !17 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !17 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !17 ; 2 uses
  %i.gb = fneg float %i.ga
  %i.gc = fmul float %i.fy, %i.gb
  %i.gd = call float @llvm.fmuladd.f32(float %i.ft, float %i.fw, float %i.gc)
  %i.ge = load float, ptr %i.fr, align 4, !tbaa !17
  %i.gf = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !17 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.gi = load float, ptr %i.gh, align 8, !tbaa !17
  %i.gj = fneg float %i.gi                        ; 2 uses
  %i.gk = fmul float %i.fy, %i.gj
  %i.gl = call float @llvm.fmuladd.f32(float %i.gg, float %i.fw, float %i.gk)
  %i.gm = fneg float %i.gl
  %i.gn = fmul float %i.ge, %i.gm
  %i.go = call float @llvm.fmuladd.f32(float %i.fq, float %i.gd, float %i.gn)
  %i.gp = load float, ptr %i.fu, align 8, !tbaa !17
  %i.gq = fmul float %i.ft, %i.gj
  %i.gr = call float @llvm.fmuladd.f32(float %i.gg, float %i.ga, float %i.gq)
  %i.gs = call noundef float @llvm.fmuladd.f32(float %i.gp, float %i.gr, float %i.go)
  %i.gt = fmul float %i.dy, %i.gs
  %i.gu = fpext float %i.gt to double
  %i.gv = fmul double %i.gu, f0x44DFE185CA57C517
  %i.gw = fdiv double %i.gv, f0x44EA784379D99DB4
  %i.gx = call double @llvm.rint.f64(double %i.gw)
  %i.gy = fptosi double %i.gx to i32              ; 2 uses
  %i.gz = load i32, ptr %i.g, align 4, !tbaa !12
  %i.ha = mul nsw i32 %i.gz, %i.gy
  %i.hb = call i32 @llvm.abs.i32(i32 %i.ha, i1 true)
  store i32 %i.hb, ptr %i.d, align 4, !tbaa !12
  %i.hc = load i32, ptr %i.f, align 4, !tbaa !12
  %i.hd = mul nsw i32 %i.hc, %i.gy
  %i.he = call i32 @llvm.abs.i32(i32 %i.hd, i1 true)
  store i32 %i.he, ptr %i.e, align 4, !tbaa !12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge
  %i.hf = load i8, ptr %i.m, align 1, !tbaa !96, !range !45, !noundef !46
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.ab, label %.loopexit220

bb.ab:                                            ; preds = %bb.aa
  %i.hh = load i32, ptr %i.d, align 4, !tbaa !12  ; 2 uses
  %i.hi = load i32, ptr %i.f, align 4, !tbaa !12  ; 9 uses
  %i.hj = mul nsw i32 %i.hi, %i.hh
  %i.hk = load i32, ptr %i.e, align 4, !tbaa !12  ; 2 uses
  %i.hl = load i32, ptr %i.g, align 4, !tbaa !12  ; 5 uses
  %i.hm = mul nsw i32 %i.hl, %i.hk
  %i.hn = add i32 %i.hj, %.056.lcssa
  %i.ho = add i32 %i.hn, %i.hm                    ; 3 uses
  %.0.i.i = call noundef i32 @llvm.abs.i32(i32 %i.hl, i1 true) ; 2 uses
  %.0.i4.i = call noundef i32 @llvm.abs.i32(i32 %i.hi, i1 true) ; 2 uses
  %i.hp = icmp eq i32 %i.hl, 0
  br i1 %i.hp, label %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hq = icmp eq i32 %i.hi, 0
  br i1 %i.hq, label %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hr = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.hl, i1 true) ; 2 uses
  %i.hs = lshr exact i32 %.0.i.i, %i.hr           ; 3 uses
  %i.ht = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.hi, i1 true) ; 2 uses
  %i.hu = lshr exact i32 %.0.i4.i, %i.ht          ; 3 uses
  %i.hv = call i32 @llvm.umin.i32(i32 %i.hr, i32 %i.ht)
  %spec.select34.i.i = call i32 @llvm.umin.i32(i32 %i.hs, i32 %i.hu) ; 2 uses
  %i.hw = icmp eq i32 %i.hs, %i.hu
  br i1 %i.hw, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.ad
  %spec.select.lcssa.i.i = phi i32 [ %spec.select34.i.i, %bb.ad ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.hx = shl i32 %spec.select.lcssa.i.i, %i.hv
  br label %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit

.lr.ph.i.i:                                       ; preds = %bb.ad, %.lr.ph.i.i
  %spec.select37.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %spec.select34.i.i, %bb.ad ] ; 4 uses
  %.02736.i.i = phi i32 [ %i.ia, %.lr.ph.i.i ], [ %i.hu, %bb.ad ]
  %.02835.i.i = phi i32 [ %spec.select37.i.i, %.lr.ph.i.i ], [ %i.hs, %bb.ad ]
  %spec.select33.i.i = call i32 @llvm.umax.i32(i32 %.02835.i.i, i32 %.02736.i.i)
  %i.hy = sub nuw nsw i32 %spec.select33.i.i, %spec.select37.i.i ; 2 uses
  %i.hz = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.hy, i1 true)
  %i.ia = lshr exact i32 %i.hy, %i.hz             ; 3 uses
  %spec.select.i.i = call i32 @llvm.umin.i32(i32 %spec.select37.i.i, i32 %i.ia) ; 2 uses
  %i.ib = icmp eq i32 %spec.select37.i.i, %i.ia
  br i1 %i.ib, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !78

_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit: ; preds = %bb.ab, %bb.ac, %._crit_edge.i.i
  %.0.i5.i = phi i32 [ %i.hx, %._crit_edge.i.i ], [ %.0.i4.i, %bb.ab ], [ %.0.i.i, %bb.ac ]
  %i.ic = srem i32 %i.ho, %.0.i5.i
  %.not83 = icmp eq i32 %i.ic, 0
  br i1 %.not83, label %.preheader219, label %bb.ae

.preheader219:                                    ; preds = %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit
  %.not84252 = icmp eq i32 %i.ho, 0
  br i1 %.not84252, label %.loopexit220, label %.preheader218

bb.ae:                                            ; preds = %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(69) @.str.39, i8 noundef zeroext 2)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.id = load i32, ptr %i.g, align 4, !tbaa !12
  %i.ie = load i32, ptr %i.f, align 4, !tbaa !12
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 566, ptr noundef nonnull @.str.42, i32 noundef %i.id, i32 noundef %i.ie) #23
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn111 = phi { ptr, i32 } [ %i.ig, %bb.ai ], [ %i.if, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.eu

.loopexit217:                                     ; preds = %.lr.ph243
  store i32 %i.jj, ptr %i.e, align 4, !tbaa !12
  %.not84 = icmp eq i32 %i.jk, 0
  br i1 %.not84, label %.loopexit220, label %.preheader218, !llvm.loop !79

.preheader218:                                    ; preds = %.preheader219, %.loopexit217
  %.054255 = phi i32 [ %i.jk, %.loopexit217 ], [ %i.ho, %.preheader219 ] ; 6 uses
  %.lcssa245248254 = phi i32 [ %i.jj, %.loopexit217 ], [ %i.hk, %.preheader219 ]
  %.lcssa240251253 = phi i32 [ %.lcssa240250386, %.loopexit217 ], [ %i.hh, %.preheader219 ] ; 4 uses
  %i.ih = icmp slt i32 %.054255, 0
  br i1 %i.ih, label %iter.check, label %.lr.ph243.preheader

iter.check:                                       ; preds = %.preheader218
  %i.ii = add i32 %i.hi, %.054255                 ; 3 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.ii, i32 0)
  %.lobit = lshr i32 %i.ii, 31                    ; 2 uses
  %i.ij = add nuw nsw i32 %.lobit, 1
  %i.ik = add i32 %.lobit, %i.ii
  %i.il = sub i32 %smax, %i.ik
  %i.im = udiv i32 %i.il, %i.hi
  %i.in = add i32 %i.ij, %i.im                    ; 7 uses
  %min.iters.check = icmp ult i32 %i.in, 4
  br i1 %min.iters.check, label %.lr.ph238.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check425 = icmp ult i32 %i.in, 32
  br i1 %min.iters.check425, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.io = and i32 %i.in, 28
  %n.vec = and i32 %i.in, -32                     ; 4 uses
  %i.ip = mul i32 %n.vec, %i.hi
  %i.iq = add i32 %.054255, %i.ip                 ; 2 uses
  %i.ir = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.lcssa240251253, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i32> [ %i.ir, %vector.ph ], [ %i.is, %vector.body ]
  %vec.phi426 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.it, %vector.body ]
  %vec.phi427 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.iu, %vector.body ]
  %vec.phi428 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.iv, %vector.body ]
  %i.is = add <8 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.it = add <8 x i32> %vec.phi426, splat (i32 1) ; 2 uses
  %i.iu = add <8 x i32> %vec.phi427, splat (i32 1) ; 2 uses
  %i.iv = add <8 x i32> %vec.phi428, splat (i32 1) ; 2 uses
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.iw = icmp eq i32 %index.next, %n.vec
  br i1 %i.iw, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.it, %i.is
  %bin.rdx429 = add <8 x i32> %i.iu, %bin.rdx
  %bin.rdx430 = add <8 x i32> %i.iv, %bin.rdx429
  %i.ix = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx430) ; 3 uses
  %cmp.n = icmp eq i32 %i.in, %n.vec
  br i1 %cmp.n, label %.preheader216, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.io, 0
  br i1 %min.epilog.iters.check, label %.lr.ph238.preheader, label %vec.epilog.ph, !prof !117

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ix, %vec.epilog.iter.check ], [ %.lcssa240251253, %vector.main.loop.iter.check ]
  %n.vec431 = and i32 %i.in, -4                   ; 3 uses
  %i.iy = mul i32 %n.vec431, %i.hi
  %i.iz = add i32 %.054255, %i.iy                 ; 2 uses
  %i.ja = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index432 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next434, %vec.epilog.vector.body ]
  %vec.phi433 = phi <4 x i32> [ %i.ja, %vec.epilog.ph ], [ %i.jb, %vec.epilog.vector.body ]
  %i.jb = add <4 x i32> %vec.phi433, splat (i32 1) ; 2 uses
  %index.next434 = add nuw i32 %index432, 4       ; 2 uses
  %i.jc = icmp eq i32 %index.next434, %n.vec431
  br i1 %i.jc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !81

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.jd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.jb) ; 2 uses
  %cmp.n435 = icmp eq i32 %i.in, %n.vec431
  br i1 %cmp.n435, label %.preheader216, label %.lr.ph238.preheader

.lr.ph238.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1237.ph = phi i32 [ %.054255, %iter.check ], [ %i.iq, %vec.epilog.iter.check ], [ %i.iz, %vec.epilog.middle.block ]
  %.ph = phi i32 [ %.lcssa240251253, %iter.check ], [ %i.ix, %vec.epilog.iter.check ], [ %i.jd, %vec.epilog.middle.block ]
  br label %.lr.ph238

.preheader216:                                    ; preds = %.lr.ph238, %vec.epilog.middle.block, %middle.block
  %.lcssa421 = phi i32 [ %i.jd, %vec.epilog.middle.block ], [ %i.ix, %middle.block ], [ %i.jf, %.lr.ph238 ] ; 2 uses
  %.lcssa420 = phi i32 [ %i.iz, %vec.epilog.middle.block ], [ %i.iq, %middle.block ], [ %i.jg, %.lr.ph238 ] ; 2 uses
  store i32 %.lcssa421, ptr %i.d, align 4, !tbaa !12
  %.not407 = icmp eq i32 %.lcssa420, 0
  br i1 %.not407, label %.loopexit220, label %.lr.ph243.preheader

.lr.ph243.preheader:                              ; preds = %.preheader218, %.preheader216
  %.1.lcssa387 = phi i32 [ %.lcssa420, %.preheader216 ], [ %.054255, %.preheader218 ]
  %.lcssa240250386 = phi i32 [ %.lcssa421, %.preheader216 ], [ %.lcssa240251253, %.preheader218 ]
  br label %.lr.ph243

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %.lr.ph238
  %.1237 = phi i32 [ %i.jg, %.lr.ph238 ], [ %.1237.ph, %.lr.ph238.preheader ]
  %i.je = phi i32 [ %i.jf, %.lr.ph238 ], [ %.ph, %.lr.ph238.preheader ]
  %i.jf = add nsw i32 %i.je, 1                    ; 2 uses
  %i.jg = add nsw i32 %.1237, %i.hi               ; 3 uses
  %i.jh = icmp slt i32 %i.jg, 0
  br i1 %i.jh, label %.lr.ph238, label %.preheader216, !llvm.loop !82

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %.lr.ph243
  %.2242 = phi i32 [ %i.jk, %.lr.ph243 ], [ %.1.lcssa387, %.lr.ph243.preheader ]
  %i.ji = phi i32 [ %i.jj, %.lr.ph243 ], [ %.lcssa245248254, %.lr.ph243.preheader ]
  %i.jj = add nsw i32 %i.ji, 1                    ; 3 uses
  %i.jk = add nsw i32 %.2242, %i.hl               ; 4 uses
  %i.jl = icmp sgt i32 %i.jk, 0
  br i1 %i.jl, label %.lr.ph243, label %.loopexit217, !llvm.loop !83

.loopexit220:                                     ; preds = %.loopexit217, %.preheader216, %.preheader219, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #22
  %i.jm = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.jn = invoke noundef ptr @_Z10gmx_strdupPKc(ptr noundef %i.jm)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %.loopexit220
  store ptr %i.jn, ptr %i.s, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #22
  %i.jo = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.jp = invoke noundef ptr @_Z10gmx_strdupPKc(ptr noundef %i.jo)
          to label %.noexc unwind label %bb.ao    ; 3 uses

.noexc:                                           ; preds = %bb.ak
  %i.jq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jp) #26
  %i.jr = trunc i64 %i.jq to i32
  %.017.i = add i32 %i.jr, -1                     ; 2 uses
  %i.js = icmp sgt i32 %.017.i, 1
  br i1 %i.js, label %.lr.ph.preheader.i, label %_ZL5anamePKc.exit

.lr.ph.preheader.i:                               ; preds = %.noexc
  %i.jt = zext nneg i32 %.017.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.jt, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.critedge2.i ] ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 %indvars.iv.i ; 2 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !19
  %.fr16.i = freeze i8 %i.jv                      ; 2 uses
  %i.jw = sext i8 %.fr16.i to i32
  %isdigittmp.i = add nsw i32 %i.jw, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %.critedge2.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %.lr.ph.i
  switch i8 %.fr16.i, label %_ZL5anamePKc.exit [
    i8 45, label %.critedge2.i
    i8 43, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %switch.early.test.i, %switch.early.test.i, %.lr.ph.i
  store i8 0, ptr %i.ju, align 1, !tbaa !19
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.jx = icmp sgt i64 %indvars.iv.i, 2
  br i1 %i.jx, label %.lr.ph.i, label %_ZL5anamePKc.exit, !llvm.loop !84

_ZL5anamePKc.exit:                                ; preds = %.critedge2.i, %switch.early.test.i, %.noexc
  store ptr %i.jp, ptr %i.t, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #22
  %i.jy = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.jz = invoke noundef ptr @_Z10gmx_strdupPKc(ptr noundef %i.jy)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %_ZL5anamePKc.exit
  store ptr %i.jz, ptr %i.u, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #22
  %i.ka = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.kb = invoke noundef ptr @_Z10gmx_strdupPKc(ptr noundef %i.ka)
          to label %.noexc127 unwind label %bb.aq ; 3 uses

.noexc127:                                        ; preds = %bb.al
  %i.kc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kb) #26
  %i.kd = trunc i64 %i.kc to i32
  %.017.i117 = add i32 %i.kd, -1                  ; 2 uses
  %i.ke = icmp sgt i32 %.017.i117, 1
  br i1 %i.ke, label %.lr.ph.preheader.i118, label %_ZL5anamePKc.exit128

.lr.ph.preheader.i118:                            ; preds = %.noexc127
  %i.kf = zext nneg i32 %.017.i117 to i64
  br label %.lr.ph.i119

.lr.ph.i119:                                      ; preds = %.critedge2.i125, %.lr.ph.preheader.i118
  %indvars.iv.i120 = phi i64 [ %i.kf, %.lr.ph.preheader.i118 ], [ %indvars.iv.next.i126, %.critedge2.i125 ] ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 %indvars.iv.i120 ; 2 uses
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !19
  %.fr16.i121 = freeze i8 %i.kh                   ; 2 uses
  %i.ki = sext i8 %.fr16.i121 to i32
  %isdigittmp.i122 = add nsw i32 %i.ki, -48
  %isdigit.i123 = icmp ult i32 %isdigittmp.i122, 10
  br i1 %isdigit.i123, label %.critedge2.i125, label %switch.early.test.i124

switch.early.test.i124:                           ; preds = %.lr.ph.i119
  switch i8 %.fr16.i121, label %_ZL5anamePKc.exit128 [
    i8 45, label %.critedge2.i125
    i8 43, label %.critedge2.i125
  ]

.critedge2.i125:                                  ; preds = %switch.early.test.i124, %switch.early.test.i124, %.lr.ph.i119
  store i8 0, ptr %i.kg, align 1, !tbaa !19
  %indvars.iv.next.i126 = add nsw i64 %indvars.iv.i120, -1
  %i.kj = icmp sgt i64 %indvars.iv.i120, 2
  br i1 %i.kj, label %.lr.ph.i119, label %_ZL5anamePKc.exit128, !llvm.loop !84

_ZL5anamePKc.exit128:                             ; preds = %.critedge2.i125, %switch.early.test.i124, %.noexc127
  store ptr %i.kb, ptr %i.v, align 8, !tbaa !15
  %i.kk = load i32, ptr %i.d, align 4, !tbaa !12  ; 2 uses
  %i.kl = icmp eq i32 %i.kk, 0
  %i.km = load i32, ptr %i.e, align 4             ; 2 uses
  %i.kn = icmp eq i32 %i.km, 0
  %or.cond5 = select i1 %i.kl, i1 %i.kn, i1 false
  br i1 %or.cond5, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %_ZL5anamePKc.exit128
  %i.ko = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite103 = call i64 @fwrite(ptr nonnull @.str.43, i64 52, i64 1, ptr %i.ko) #24 ; 0 uses
  br label %bb.eb

bb.an:                                            ; preds = %.loopexit220
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.ao:                                            ; preds = %bb.ak
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ap:                                            ; preds = %_ZL5anamePKc.exit
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.aq:                                            ; preds = %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit181, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit179, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit177, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit175, %_ZNSt10filesystem7__cxx114pathD2Ev.exit173, %bb.eb, %bb.al, %bb.eg, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ar:                                            ; preds = %_ZL5anamePKc.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #22
  store ptr null, ptr %i.w, align 8, !tbaa !15
  %i.kt = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.ku = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.kv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %i.kk, ptr noundef %i.kt, i32 noundef %i.km, ptr noundef %i.ku) ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #22
  store ptr null, ptr %i.x, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  invoke void @_Z17ftp2path_optionalB5cxx11iiPK8t_filenm(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %11, i32 noundef 23, i32 noundef 4, ptr noundef nonnull %6)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  invoke void @_Z9get_indexPK7t_atomsRKSt8optionalINSt10filesystem7__cxx114pathEEiPiPS9_PPc(ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(48) %11, i32 noundef 1, ptr noundef nonnull %i.y, ptr noundef nonnull %i.x, ptr noundef nonnull %i.w)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.kw = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 8, !tbaa !52, !range !45, !noundef !46
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %bb.au, label %_ZNSt14_Optional_baseINSt10filesystem7__cxx114pathELb0ELb0EED2Ev.exit

bb.au:                                            ; preds = %bb.at
  store i8 0, ptr %i.kw, align 8, !tbaa !52
  %i.kz = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.kz, ptr noundef nonnull %i.la) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i.i: ; preds = %bb.av, %bb.au
  %i.lb = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %_ZNSt14_Optional_baseINSt10filesystem7__cxx114pathELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i.i
  %i.le = load i64, ptr %i.lc, align 8, !tbaa !19
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.lf) #25
  br label %_ZNSt14_Optional_baseINSt10filesystem7__cxx114pathELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt10filesystem7__cxx114pathELb0ELb0EED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i.i, %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.lg = load ptr, ptr %i.x, align 8, !tbaa !50  ; 2 uses
  %i.lh = load i32, ptr %i.y, align 4, !tbaa !12
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %i.li
  invoke void @_ZNSt6vectorIiSaIiEE13_M_assign_auxIPiEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %i.lg, ptr noundef %i.lj)
          to label %_ZNSt6vectorIiSaIiEE6assignIPivEEvT_S4_.exit unwind label %bb.az

_ZNSt6vectorIiSaIiEE6assignIPivEEvT_S4_.exit:     ; preds = %_ZNSt14_Optional_baseINSt10filesystem7__cxx114pathELb0ELb0EED2Ev.exit
  %i.lk = load ptr, ptr %i.x, align 8, !tbaa !50
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.39, i32 noundef 610, ptr noundef %i.lk)
          to label %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit unwind label %bb.az
end_hunk_0
