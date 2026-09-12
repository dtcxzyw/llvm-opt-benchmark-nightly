Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pargs?download=true
inline.NumInlined: 1015
inline.NumDeleted: 616
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z17parse_common_argsPiPPcmiP8t_filenmiP7t_pargsiPPKciS8_PP16gmx_output_env_t:bb.a
.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.fl = getelementptr inbounds nuw [56 x i8], ptr %4, i64 %indvars.iv
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !157
  %i.fo = icmp eq i32 %i.fn, 21
  br i1 %i.fo, label %.critedge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.fp = getelementptr inbounds nuw [56 x i8], ptr %4, i64 %indvars.iv
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 112
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !157
  %i.fs = icmp eq i32 %i.fr, 21
  br i1 %i.fs, label %.critedge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.ft = getelementptr inbounds nuw [56 x i8], ptr %4, i64 %indvars.iv
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 168
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !157
  %i.fw = icmp eq i32 %i.fv, 21
  br i1 %i.fw, label %.critedge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.fx = getelementptr inbounds nuw [56 x i8], ptr %4, i64 %indvars.iv
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 224
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !157
  %i.ga = icmp eq i32 %i.fz, 21
  br i1 %i.ga, label %.critedge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.gb = getelementptr inbounds nuw [56 x i8], ptr %4, i64 %indvars.iv
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 280
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !157
  %i.ge = icmp eq i32 %i.gd, 21
  br i1 %i.ge, label %.critedge, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.gf = getelementptr inbounds nuw [56 x i8], ptr %4, i64 %indvars.iv
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 336
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !157
  %i.gi = icmp eq i32 %i.gh, 21
  br i1 %i.gi, label %.critedge, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.7
  %i.gj = getelementptr inbounds nuw [56 x i8], ptr %4, i64 %indvars.iv
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 392
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !157
  %i.gm = icmp eq i32 %i.gl, 21
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.6, %.lr.ph.4, %.lr.ph.2, %.lr.ph, %.lr.ph.1, %.lr.ph.3, %.lr.ph.5, %bb.bm, %.lr.ph.7
  %i.gn = phi i1 [ true, %.lr.ph.7 ], [ %i.gm, %bb.bm ], [ true, %.lr.ph.5 ], [ true, %.lr.ph.3 ], [ true, %.lr.ph.1 ], [ true, %.lr.ph ], [ true, %.lr.ph.2 ], [ true, %.lr.ph.4 ], [ true, %.lr.ph.6 ] ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !116

_ZN3gmx12_GLOBAL__N_119getDefaultXvgFormatEv.exit: ; preds = %.preheader.1.i, %.preheader.preheader.i, %._crit_edge
  %.3.i = phi i32 [ 0, %._crit_edge ], [ %spec.select.i, %.preheader.1.i ], [ 0, %.preheader.preheader.i ]
  store i32 %.3.i, ptr %i.l, align 4, !tbaa !62
  br i1 %.036.lcssa, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %_ZN3gmx12_GLOBAL__N_119getDefaultXvgFormatEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  %i.go = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i32 1, ptr %i.go, align 8, !tbaa !132
  %i.gp = getelementptr inbounds nuw i8, ptr %36, i64 12
  store i32 1, ptr %i.gp, align 4, !tbaa !133
  %i.gq = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr @.str.17, ptr %i.gq, align 8, !tbaa !134
  %i.gr = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.gs = getelementptr inbounds nuw i8, ptr %36, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gs, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3gmx10EnumOptionI9XvgFormatEE, i64 16), ptr %36, align 8, !tbaa !47
  %i.gt = getelementptr inbounds nuw i8, ptr %36, i64 88
  %i.gu = getelementptr inbounds nuw i8, ptr %36, i64 96
  store ptr @_ZN3gmx12_GLOBAL__N_116c_xvgFormatNamesE, ptr %i.gt, align 8, !tbaa !66
  store i32 3, ptr %i.gu, align 8, !tbaa !67
  %i.gv = getelementptr inbounds nuw i8, ptr %36, i64 64
  store ptr %i.l, ptr %i.gv, align 8, !tbaa !68
  store ptr @.str.18, ptr %i.gr, align 8, !tbaa !142
  %i.gw = load ptr, ptr %27, align 8, !tbaa !47
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = invoke noundef ptr %i.gy(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(100) %36)
          to label %_ZN3gmx17IOptionsContainer9addOptionINS_10EnumOptionI9XvgFormatEEEEPNT_8InfoTypeERKS5_.exit unwind label %bb.bo, !inline_history !117 ; 0 uses

_ZN3gmx17IOptionsContainer9addOptionINS_10EnumOptionI9XvgFormatEEEEPNT_8InfoTypeERKS5_.exit: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ha = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %.body126

bb.bp:                                            ; preds = %_ZN3gmx17IOptionsContainer9addOptionINS_10EnumOptionI9XvgFormatEEEEPNT_8InfoTypeERKS5_.exit, %_ZN3gmx12_GLOBAL__N_119getDefaultXvgFormatEv.exit
  br i1 %i.ez, label %.lr.ph169, label %.preheader

.lr.ph169:                                        ; preds = %bb.bp
  %i.hb = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %25, i64 12 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %25, i64 40
  %i.hh = getelementptr inbounds nuw i8, ptr %25, i64 88
  %i.hi = getelementptr inbounds nuw i8, ptr %25, i64 92
  %i.hj = getelementptr inbounds nuw i8, ptr %25, i64 96
  %i.hk = getelementptr inbounds nuw i8, ptr %25, i64 104
  %i.hl = getelementptr inbounds nuw i8, ptr %25, i64 108
  %i.hm = getelementptr inbounds nuw i8, ptr %25, i64 80
  %i.hn = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.ho = getelementptr inbounds nuw i8, ptr %25, i64 112
  %i.hp = getelementptr inbounds nuw i8, ptr %25, i64 24
  %wide.trip.count176 = zext nneg i32 %3 to i64
  br label %bb.bq

.preheader:                                       ; preds = %bb.bz, %bb.bp
  %i.hq = icmp sgt i32 %5, 0
  br i1 %i.hq, label %.lr.ph171, label %._crit_edge172

.lr.ph171:                                        ; preds = %.preheader
  %i.hr = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %20, i64 12
  %i.ht = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.hu = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.hv = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.hw = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.hx = getelementptr inbounds nuw i8, ptr %20, i64 88
  %i.hy = getelementptr inbounds nuw i8, ptr %20, i64 96
  %i.hz = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.ia = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.ib = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.id = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.if = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.ig = getelementptr inbounds nuw i8, ptr %19, i64 88
  %i.ih = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.ii = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.ij = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.il = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.im = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.in = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.io = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.ip = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.iq = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.ir = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.is = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.it = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.iu = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.iv = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.iw = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.ix = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.iy = getelementptr inbounds nuw i8, ptr %16, i64 96
  %i.iz = getelementptr inbounds nuw i8, ptr %16, i64 100
  %i.ja = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.jb = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.je = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.jg = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.jh = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ji = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.jj = getelementptr inbounds nuw i8, ptr %15, i64 88
  %i.jk = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.jl = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.jm = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.jo = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.jp = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.jq = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.jr = getelementptr inbounds nuw i8, ptr %14, i64 88
  %i.js = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.jt = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ju = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.jw = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.jx = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.jy = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.jz = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ka = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.kb = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.kc = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.kd = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ke = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.kf = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.kg = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.kh = getelementptr inbounds nuw i8, ptr %12, i64 32
  %wide.trip.count181 = zext nneg i32 %5 to i64
  br label %bb.ca

bb.bq:                                            ; preds = %.lr.ph169, %bb.bz
  %indvars.iv173 = phi i64 [ 0, %.lr.ph169 ], [ %indvars.iv.next174, %bb.bz ] ; 2 uses
  %i.ki = getelementptr inbounds nuw [56 x i8], ptr %4, i64 %indvars.iv173 ; 7 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !159 ; 3 uses
  %i.kl = and i64 %i.kk, 32
  %.not20.i = icmp eq i64 %i.kl, 0
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !160 ; 2 uses
  %.not15.i = icmp eq ptr %i.kn, null
  br i1 %.not15.i, label %bb.br, label %.noexc

bb.br:                                            ; preds = %bb.bq
  %i.ko = load i32, ptr %i.ki, align 8, !tbaa !157
  %i.kp = invoke noundef ptr @_Z10ftp2defopti(i32 noundef %i.ko)
          to label %.noexc unwind label %.loopexit159

.noexc:                                           ; preds = %bb.br, %bb.bq
  %.pn.i = phi ptr [ %i.kn, %bb.bq ], [ %i.kp, %bb.br ]
  %i.kq = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !161 ; 2 uses
  store ptr %i.ks, ptr %i.c, align 8, !tbaa !15
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.noexc
  %i.ku = load i32, ptr %i.ki, align 8, !tbaa !157
  %i.kv = invoke noundef ptr @_Z9ftp2defnmi(i32 noundef %i.ku)
          to label %.noexc105 unwind label %.loopexit159

.noexc105:                                        ; preds = %bb.bs
  store ptr %i.kv, ptr %i.c, align 8, !tbaa !15
  br label %bb.bx

bb.bt:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i8 noundef zeroext 2)
          to label %.noexc106 unwind label %.loopexit159

.noexc106:                                        ; preds = %bb.bt
  %i.kw = call { ptr, i64 } @_ZNKSt10filesystem7__cxx114path17_M_find_extensionEv(ptr noundef nonnull align 8 dereferenceable(40) %24) #24 ; 2 uses
  %i.kx = extractvalue { ptr, i64 } %i.kw, 0
  %i.ky = extractvalue { ptr, i64 } %i.kw, 1
  %i.kz = icmp ne ptr %i.kx, null
  %i.la = icmp ne i64 %i.ky, -1
  %i.lb = select i1 %i.kz, i1 %i.la, i1 false
  %i.lc = load ptr, ptr %i.hb, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i.i104, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %.noexc106
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.hb, ptr noundef nonnull %i.lc) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i: ; preds = %bb.bu, %.noexc106
  %i.ld = load ptr, ptr %24, align 8, !tbaa !27   ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.hc
  br i1 %i.le, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i
  %i.lf = load i64, ptr %i.hc, align 8, !tbaa !20
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lg) #26
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br i1 %i.lb, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i
  %i.lh = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.li = invoke noundef i32 @_Z6fn2ftpPKc(ptr noundef %i.lh)
          to label %.noexc107 unwind label %.loopexit159 ; 2 uses

.noexc107:                                        ; preds = %bb.bv
  %.not16.i = icmp eq i32 %i.li, 45
  br i1 %.not16.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.noexc107
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12_GLOBAL__N_114OptionsAdapter15filenmToOptionsEPNS_7OptionsEP8t_filenmENK3$_0clEv", ptr noundef nonnull @.str, i32 noundef 326) #25
          to label %.noexc108 unwind label %.loopexit.split-lp160

.noexc108:                                        ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %.noexc107, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, %.noexc105
  %.0.i = phi i32 [ -1, %.noexc105 ], [ -1, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i ], [ %i.li, %.noexc107 ]
  %i.lj = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %.noexc109 unwind label %.loopexit159 ; 3 uses

.noexc109:                                        ; preds = %bb.bx
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  store ptr %i.ki, ptr %i.lk, align 8, !tbaa !165
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ll, i8 0, i64 32, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.lj, ptr noundef nonnull align 8 dereferenceable(24) %i.af) #24
  %i.lm = load i64, ptr %i.ah, align 8, !tbaa !168
  %i.ln = add i64 %i.lm, 1
  store i64 %i.ln, ptr %i.ah, align 8, !tbaa !168
  %i.lo = load ptr, ptr %i.ag, align 8, !tbaa !129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  store i32 1, ptr %i.hd, align 8, !tbaa !132
  store i32 1, ptr %i.he, align 4, !tbaa !133
  store ptr %i.kq, ptr %i.hf, align 8, !tbaa !134
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hg, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3gmx14FileNameOptionE, i64 16), ptr %25, align 8, !tbaa !47
  store i32 10, ptr %i.hh, align 8, !tbaa !173
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  store ptr %i.lp, ptr %i.hm, align 8, !tbaa !174
  %i.lq = load ptr, ptr %i.c, align 8, !tbaa !15
  store ptr %i.lq, ptr %i.hj, align 8, !tbaa !175
  store i32 %.0.i, ptr %i.hk, align 8, !tbaa !176
  %i.lr = load i32, ptr %i.ki, align 8, !tbaa !157 ; 2 uses
  store i32 %i.lr, ptr %i.hi, align 4, !tbaa !177
  %i.ls = trunc i64 %i.kk to i8                   ; 2 uses
  %i.lt = shl i64 %i.kk, 1
  %i.lu = and i64 %i.lt, 16
  %storemerge.i.i.i.i = xor i64 %i.lu, 16
  store i64 %storemerge.i.i.i.i, ptr %i.hn, align 8, !tbaa !178
  %i.lv = insertelement <4 x i8> <i8 -1, i8 poison, i8 poison, i8 poison>, i8 %i.ls, i64 1
  %41 = shufflevector <4 x i8> %i.lv, <4 x i8> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %42 = lshr <4 x i8> %41, <i8 0, i8 1, i8 2, i8 4>
  %i.lw = and <4 x i8> %42, splat (i8 1)
  store <4 x i8> %i.lw, ptr %i.hl, align 4, !tbaa !31
  br i1 %.not20.i, label %_ZN3gmx14OptionTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14FileNameOptionEE10multiValueEb.exit.i, label %bb.by

bb.by:                                            ; preds = %.noexc109
  store i32 -1, ptr %i.he, align 4, !tbaa !133
  br label %_ZN3gmx14OptionTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14FileNameOptionEE10multiValueEb.exit.i

_ZN3gmx14OptionTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14FileNameOptionEE10multiValueEb.exit.i: ; preds = %bb.by, %.noexc109
  %43 = lshr i8 %i.ls, 6
  %i.lx = and i8 %43, 1
  store i8 %i.lx, ptr %i.ho, align 8, !tbaa !179
  %i.ly = invoke noundef ptr @_Z8ftp2desci(i32 noundef %i.lr)
          to label %.noexc110 unwind label %.loopexit159

.noexc110:                                        ; preds = %_ZN3gmx14OptionTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14FileNameOptionEE10multiValueEb.exit.i
  store ptr %i.ly, ptr %i.hp, align 8, !tbaa !142
  %i.lz = load ptr, ptr %27, align 8, !tbaa !47
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = invoke noundef ptr %i.mb(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(113) %25)
          to label %bb.bz unwind label %.loopexit159, !inline_history !118

bb.bz:                                            ; preds = %.noexc110
  %i.md = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(16) %i.mc, ptr nonnull @_ZTIN3gmx10OptionInfoE, ptr nonnull @_ZTIN3gmx18FileNameOptionInfoE, i64 0) #24
  %i.me = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  store ptr %i.md, ptr %i.me, align 8, !tbaa !180
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count176
  br i1 %exitcond177.not, label %.preheader, label %bb.bq, !llvm.loop !119

.loopexit159:                                     ; preds = %bb.br, %bb.bs, %bb.bt, %bb.bv, %bb.bx, %_ZN3gmx14OptionTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14FileNameOptionEE10multiValueEb.exit.i, %.noexc110
  %lpad.loopexit161 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body126

.loopexit.split-lp160:                            ; preds = %bb.bw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.body126

._crit_edge172:                                   ; preds = %bb.cy, %.preheader
  %i.mf = invoke noundef ptr @_ZN3gmx28GlobalCommandLineHelpContext3getEv()
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ca:                                            ; preds = %.lr.ph171, %bb.cy
  %indvars.iv178 = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next179, %bb.cy ] ; 2 uses
  %i.mg = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %indvars.iv178 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !181 ; 2 uses
  %i.mj = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.mi, ptr noundef nonnull dereferenceable(7) @.str.28, i64 noundef 6) #23
  %i.mk = icmp eq i32 %i.mj, 0                    ; 9 uses
  %i.ml = load ptr, ptr %i.mg, align 8, !tbaa !19
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 1 ; 8 uses
  %spec.select104.idx.i = select i1 %i.mk, i64 6, i64 0
  %spec.select104.i = getelementptr inbounds nuw i8, ptr %i.mi, i64 %spec.select104.idx.i ; 8 uses
  %i.mn = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #28
          to label %.noexc118 unwind label %bb.cz ; 8 uses

.noexc118:                                        ; preds = %bb.ca
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  store ptr %i.mg, ptr %i.mo, align 8, !tbaa !184
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  store ptr null, ptr %i.mp, align 8, !tbaa !185
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 32
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 48 ; 2 uses
  store ptr %i.mr, ptr %i.mq, align 8, !tbaa !23
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 40
  store i64 0, ptr %i.ms, align 8, !tbaa !28
  store i8 0, ptr %i.mr, align 8, !tbaa !20
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mn, i64 64
  store i32 0, ptr %i.mt, align 8, !tbaa !186
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mn, i64 68
  store i8 0, ptr %i.mu, align 4, !tbaa !187
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.mn, ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #24
  %i.mv = load i64, ptr %i.ak, align 8, !tbaa !190
  %i.mw = add i64 %i.mv, 1
  store i64 %i.mw, ptr %i.ak, align 8, !tbaa !190
  %i.mx = load ptr, ptr %i.aj, align 8, !tbaa !129 ; 11 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mg, i64 12
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !191
  switch i32 %i.mz, label %bb.cr [
    i32 0, label %bb.cb
    i32 1, label %bb.cc
    i32 2, label %bb.cd
    i32 3, label %bb.ce
    i32 4, label %bb.cf
    i32 5, label %bb.cm
    i32 6, label %bb.cn
    i32 7, label %bb.co
  ]

bb.cb:                                            ; preds = %.noexc118
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  store i32 1, ptr %i.kb, align 8, !tbaa !132
  store i32 1, ptr %i.kc, align 4, !tbaa !133
  store ptr %i.mm, ptr %i.kd, align 8, !tbaa !134
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kf, i8 0, i64 48, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3gmx13IntegerOptionE, i64 16), ptr %12, align 8, !tbaa !47
  %i.na = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !20
  store ptr %i.nb, ptr %i.kg, align 8, !tbaa !193
  store ptr %spec.select104.i, ptr %i.ke, align 8, !tbaa !142
  %masksel.i.i = select i1 %i.mk, i64 64, i64 0
  store i64 %masksel.i.i, ptr %i.kh, align 8, !tbaa !178
  %i.nc = load ptr, ptr %27, align 8, !tbaa !47
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = invoke noundef ptr %i.ne(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(88) %12)
          to label %.noexc119 unwind label %bb.cz, !inline_history !120

.noexc119:                                        ; preds = %bb.cb
  %i.ng = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(16) %i.nf, ptr nonnull @_ZTIN3gmx10OptionInfoE, ptr nonnull @_ZTIN3gmx17IntegerOptionInfoE, i64 0) #24
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  store ptr %i.ng, ptr %i.nh, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.cy

bb.cc:                                            ; preds = %.noexc118
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  store i32 1, ptr %i.ju, align 8, !tbaa !132
  store i32 1, ptr %i.jv, align 4, !tbaa !133
  store ptr %i.mm, ptr %i.jw, align 8, !tbaa !134
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jy, i8 0, i64 48, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3gmx11Int64OptionE, i64 16), ptr %13, align 8, !tbaa !47
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !20
  store ptr %i.nj, ptr %i.jz, align 8, !tbaa !197
  store ptr %spec.select104.i, ptr %i.jx, align 8, !tbaa !142
  %masksel.i64.i = select i1 %i.mk, i64 64, i64 0
  store i64 %masksel.i64.i, ptr %i.ka, align 8, !tbaa !178
  %i.nk = load ptr, ptr %27, align 8, !tbaa !47
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  %i.nm = load ptr, ptr %i.nl, align 8
  %i.nn = invoke noundef ptr %i.nm(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(88) %13)
          to label %.noexc120 unwind label %bb.cz, !inline_history !120

.noexc120:                                        ; preds = %bb.cc
  %i.no = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(16) %i.nn, ptr nonnull @_ZTIN3gmx10OptionInfoE, ptr nonnull @_ZTIN3gmx15Int64OptionInfoE, i64 0) #24
  %i.np = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  store ptr %i.no, ptr %i.np, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.cy

bb.cd:                                            ; preds = %.noexc118
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  store i32 1, ptr %i.jm, align 8, !tbaa !132
  store i32 1, ptr %i.jn, align 4, !tbaa !133
  store ptr %i.mm, ptr %i.jo, align 8, !tbaa !134
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jq, i8 0, i64 48, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3gmx11FloatOptionE, i64 16), ptr %14, align 8, !tbaa !47
  store i8 0, ptr %i.jr, align 8, !tbaa !202
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !20
  store ptr %i.nr, ptr %i.js, align 8, !tbaa !203
  store ptr %spec.select104.i, ptr %i.jp, align 8, !tbaa !142
  %masksel.i66.i = select i1 %i.mk, i64 64, i64 0
  store i64 %masksel.i66.i, ptr %i.jt, align 8, !tbaa !178
  %i.ns = load ptr, ptr %27, align 8, !tbaa !47
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = invoke noundef ptr %i.nu(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(89) %14)
          to label %.noexc121 unwind label %bb.cz, !inline_history !120

.noexc121:                                        ; preds = %bb.cd
  %i.nw = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(16) %i.nv, ptr nonnull @_ZTIN3gmx10OptionInfoE, ptr nonnull @_ZTIN3gmx15FloatOptionInfoE, i64 0) #24
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  store ptr %i.nw, ptr %i.nx, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.cy

bb.ce:                                            ; preds = %.noexc118
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  store i32 1, ptr %i.je, align 8, !tbaa !132
  store i32 1, ptr %i.jf, align 4, !tbaa !133
  store ptr %i.mm, ptr %i.jg, align 8, !tbaa !134
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ji, i8 0, i64 48, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3gmx11FloatOptionE, i64 16), ptr %15, align 8, !tbaa !47
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !20
  store ptr %i.nz, ptr %i.jk, align 8, !tbaa !203
  store i8 1, ptr %i.jj, align 8, !tbaa !202
  store ptr %spec.select104.i, ptr %i.jh, align 8, !tbaa !142
  %masksel.i68.i = select i1 %i.mk, i64 64, i64 0
  store i64 %masksel.i68.i, ptr %i.jl, align 8, !tbaa !178
  %i.oa = load ptr, ptr %27, align 8, !tbaa !47
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  %i.oc = load ptr, ptr %i.ob, align 8
  %i.od = invoke noundef ptr %i.oc(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(89) %15)
          to label %.noexc122 unwind label %bb.cz, !inline_history !120

.noexc122:                                        ; preds = %bb.ce
  %i.oe = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(16) %i.od, ptr nonnull @_ZTIN3gmx10OptionInfoE, ptr nonnull @_ZTIN3gmx15FloatOptionInfoE, i64 0) #24
  %i.of = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  store ptr %i.oe, ptr %i.of, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.cy

bb.cf:                                            ; preds = %.noexc118
  %i.og = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !20
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !15 ; 2 uses
  %.not57.i = icmp eq ptr %i.oi, null
  %spec.select.i114 = select i1 %.not57.i, ptr @.str.29, ptr %i.oi ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  store i32 1, ptr %i.ir, align 8, !tbaa !132
end_hunk_0
