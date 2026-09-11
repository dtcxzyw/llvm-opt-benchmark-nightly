Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/quadrotor_tracking?download=true
inline.NumInlined: 1838
inline.NumDeleted: 966
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 29
begin_hunk_0_@main:bb.a
  store <2 x double> %i.hv, ptr %i.ht, align 16, !tbaa !27
  %i.hw = getelementptr inbounds nuw i8, ptr %31, i64 80 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hh, i64 80
  %i.hy = load <2 x double>, ptr %i.hx, align 1, !tbaa !27
  store <2 x double> %i.hy, ptr %i.hw, align 16, !tbaa !27
  %i.hz = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ia = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.ib = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.ic = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %33, i64 40
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ge, i64 280 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ge, i64 288 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ge, i64 296 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ge, i64 256
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ge, i64 1160
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ge, i64 40 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.im = getelementptr inbounds nuw i8, ptr %i.ge, i64 1184
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %35, i64 16
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 24
  %.sroa.6171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 32
  %.sroa.8173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 48
  %.sroa.9174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 56
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %35, i64 72
  br label %bb.bg

bb.ap:                                            ; preds = %bb.bv
  %i.io = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.os) ; 0 uses
  %i.ip = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !84
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.it = load i32, ptr %i.is, align 8, !tbaa !86
  %i.iu = sitofp i32 %i.it to double
  %i.iv = fdiv double %i.lg, %i.iu
  %i.iw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %i.iv) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  call void @free(ptr noundef %i.by) #17
  call void @free(ptr noundef %i.bd) #17
  %i.ix = load ptr, ptr %16, align 8, !tbaa !18
  call void @free(ptr noundef %i.ix) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %i.iy = load ptr, ptr %14, align 8, !tbaa !18
  call void @free(ptr noundef %i.iy) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.iz = load ptr, ptr %13, align 8, !tbaa !25
  call void @free(ptr noundef %i.iz) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.ja = load ptr, ptr %12, align 8, !tbaa !25
  call void @free(ptr noundef %i.ja) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.jb = load ptr, ptr %10, align 8, !tbaa !18
  call void @free(ptr noundef %i.jb) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.jc = load ptr, ptr %8, align 8, !tbaa !18
  call void @free(ptr noundef %i.jc) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 0

bb.aq:                                            ; preds = %.invoke
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.ar:                                            ; preds = %.invoke326
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.as:                                            ; preds = %.sink.split.i129
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.at:                                            ; preds = %bb.ac
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit98
  %i.jh = landingpad { ptr, i32 }
          cleanup
  %i.ji = load ptr, ptr %23, align 8, !tbaa !18
  call void @free(ptr noundef %i.ji) #17
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn = phi { ptr, i32 } [ %i.jh, %bb.au ], [ %i.jg, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  %i.jj = load ptr, ptr %21, align 8, !tbaa !18
  call void @free(ptr noundef %i.jj) #17
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.av ], [ %i.jf, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  br label %.body96

.body96:                                          ; preds = %bb.ab, %bb.aw
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aw ], [ %i.dz, %bb.ab ]
  %i.jk = load ptr, ptr %20, align 8, !tbaa !18
  call void @free(ptr noundef %i.jk) #17
  %i.jl = load ptr, ptr %19, align 8, !tbaa !18
  call void @free(ptr noundef %i.jl) #17
  br label %bb.ax

bb.ax:                                            ; preds = %.body96, %bb.ar
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body96 ], [ %i.je, %bb.ar ]
  %i.jm = load ptr, ptr %18, align 8, !tbaa !18
  call void @free(ptr noundef %i.jm) #17
  br label %bb.cd

bb.ay:                                            ; preds = %.invoke328
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.az:                                            ; preds = %bb.ai
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ba:                                            ; preds = %bb.aj
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ak
  %i.jq = landingpad { ptr, i32 }
          cleanup
  %i.jr = load ptr, ptr %28, align 8, !tbaa !18
  call void @free(ptr noundef %i.jr) #17
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pn49 = phi { ptr, i32 } [ %i.jq, %bb.bb ], [ %i.jp, %bb.ba ]
  %i.js = load ptr, ptr %27, align 8, !tbaa !18
  call void @free(ptr noundef %i.js) #17
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.az
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %bb.bc ], [ %i.jo, %bb.az ]
  %i.jt = load ptr, ptr %26, align 8, !tbaa !18
  call void @free(ptr noundef %i.jt) #17
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ay
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn49.pn, %bb.bd ], [ %i.jn, %bb.ay ]
  %i.ju = load ptr, ptr %25, align 8, !tbaa !18
  call void @free(ptr noundef %i.ju) #17
  br label %bb.cd

bb.bf:                                            ; preds = %bb.an
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  br label %bb.cc

bb.bg:                                            ; preds = %bb.ao, %bb.bv
  %indvars.iv = phi i64 [ 0, %bb.ao ], [ %indvars.iv.next, %bb.bv ] ; 4 uses
  %.022279 = phi double [ 0.000000e+00, %bb.ao ], [ %i.lg, %bb.bv ]
  %.023278 = phi i32 [ 0, %bb.ao ], [ %i.os, %bb.bv ]
  %i.jw = load ptr, ptr %i.hg, align 8, !tbaa !18, !noalias !95
  %i.jx = load i64, ptr %i.hi, align 8, !tbaa !19, !noalias !95
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.jx ; 6 uses
  %i.jz = load <2 x double>, ptr %31, align 16, !tbaa !27
  %i.ka = load <2 x double>, ptr %i.jy, align 1, !tbaa !27
  %i.kb = fsub <2 x double> %i.jz, %i.ka          ; 2 uses
  %i.kc = fmul <2 x double> %i.kb, %i.kb
  %i.kd = load <2 x double>, ptr %i.hk, align 16, !tbaa !27
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.kf = load <2 x double>, ptr %i.ke, align 1, !tbaa !27
  %i.kg = fsub <2 x double> %i.kd, %i.kf          ; 2 uses
  %i.kh = fmul <2 x double> %i.kg, %i.kg
  %i.ki = load <2 x double>, ptr %i.hn, align 16, !tbaa !27
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  %i.kk = load <2 x double>, ptr %i.kj, align 1, !tbaa !27
  %i.kl = fsub <2 x double> %i.ki, %i.kk          ; 2 uses
  %i.km = fmul <2 x double> %i.kl, %i.kl
  %i.kn = fadd <2 x double> %i.kh, %i.km
  %i.ko = fadd <2 x double> %i.kc, %i.kn
  %i.kp = load <2 x double>, ptr %i.hq, align 16, !tbaa !27
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jy, i64 48
  %i.kr = load <2 x double>, ptr %i.kq, align 1, !tbaa !27
  %i.ks = fsub <2 x double> %i.kp, %i.kr          ; 2 uses
  %i.kt = fmul <2 x double> %i.ks, %i.ks
  %i.ku = load <2 x double>, ptr %i.ht, align 16, !tbaa !27
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jy, i64 64
  %i.kw = load <2 x double>, ptr %i.kv, align 1, !tbaa !27
  %i.kx = fsub <2 x double> %i.ku, %i.kw          ; 2 uses
  %i.ky = fmul <2 x double> %i.kx, %i.kx
  %i.kz = load <2 x double>, ptr %i.hw, align 16, !tbaa !27
  %i.la = getelementptr inbounds nuw i8, ptr %i.jy, i64 80
  %i.lb = load <2 x double>, ptr %i.la, align 1, !tbaa !27
  %i.lc = fsub <2 x double> %i.kz, %i.lb          ; 2 uses
  %i.ld = fmul <2 x double> %i.lc, %i.lc
  %i.le = fadd <2 x double> %i.ky, %i.ld
  %i.lf = fadd <2 x double> %i.kt, %i.le
  %foldExtExtBinop.a = fadd <2 x double> %i.ko, %i.lf
  %36 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %foldExtExtBinop.a)
  %.scalar.i = call noundef double @llvm.sqrt.f64(double %36)
  %i.lg = fadd double %.022279, %.scalar.i        ; 2 uses
  %i.lh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 16)
          to label %bb.bh unwind label %bb.bw     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  %i.li = load ptr, ptr %i.hg, align 8, !tbaa !18, !noalias !96
  %i.lj = load i64, ptr %i.hi, align 8, !tbaa !19, !noalias !96
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.li, i64 %i.lj ; 6 uses
  %i.ll = load <2 x double>, ptr %31, align 16, !tbaa !27
  %i.lm = load <2 x double>, ptr %i.lk, align 1, !tbaa !27
  %i.ln = fsub <2 x double> %i.ll, %i.lm          ; 2 uses
  %i.lo = fmul <2 x double> %i.ln, %i.ln
  %i.lp = load <2 x double>, ptr %i.hk, align 16, !tbaa !27
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lr = load <2 x double>, ptr %i.lq, align 1, !tbaa !27
  %i.ls = fsub <2 x double> %i.lp, %i.lr          ; 2 uses
  %i.lt = fmul <2 x double> %i.ls, %i.ls
  %i.lu = load <2 x double>, ptr %i.hn, align 16, !tbaa !27
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lk, i64 32
  %i.lw = load <2 x double>, ptr %i.lv, align 1, !tbaa !27
  %i.lx = fsub <2 x double> %i.lu, %i.lw          ; 2 uses
  %i.ly = fmul <2 x double> %i.lx, %i.lx
  %i.lz = fadd <2 x double> %i.lt, %i.ly
  %i.ma = fadd <2 x double> %i.lo, %i.lz
  %i.mb = load <2 x double>, ptr %i.hq, align 16, !tbaa !27
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lk, i64 48
  %i.md = load <2 x double>, ptr %i.mc, align 1, !tbaa !27
  %i.me = fsub <2 x double> %i.mb, %i.md          ; 2 uses
  %i.mf = fmul <2 x double> %i.me, %i.me
  %i.mg = load <2 x double>, ptr %i.ht, align 16, !tbaa !27
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lk, i64 64
  %i.mi = load <2 x double>, ptr %i.mh, align 1, !tbaa !27
  %i.mj = fsub <2 x double> %i.mg, %i.mi          ; 2 uses
  %i.mk = fmul <2 x double> %i.mj, %i.mj
  %i.ml = load <2 x double>, ptr %i.hw, align 16, !tbaa !27
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lk, i64 80
  %i.mn = load <2 x double>, ptr %i.mm, align 1, !tbaa !27
  %i.mo = fsub <2 x double> %i.ml, %i.mn          ; 2 uses
  %i.mp = fmul <2 x double> %i.mo, %i.mo
  %i.mq = fadd <2 x double> %i.mk, %i.mp
  %i.mr = fadd <2 x double> %i.mf, %i.mq
  %i.ms = fadd <2 x double> %i.ma, %i.mr          ; 2 uses
  %shift342 = shufflevector <2 x double> %i.ms, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop343 = fadd <2 x double> %i.ms, %shift342
  %i.mt = extractelement <2 x double> %foldExtExtBinop343, i64 0
  %.scalar.i108 = call noundef double @llvm.sqrt.f64(double %i.mt)
  %i.mu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %.scalar.i108)
          to label %_ZNSolsEd.exit unwind label %.loopexit ; 3 uses

_ZNSolsEd.exit:                                   ; preds = %bb.bh
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !15
  %i.mw = getelementptr i8, ptr %i.mv, i64 -24
  %i.mx = load i64, ptr %i.mw, align 8
  %i.my = getelementptr inbounds i8, ptr %i.mu, i64 %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 240
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !112 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.na, null
  br i1 %.not.i.i.i, label %bb.bi, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.bi:                                            ; preds = %_ZNSolsEd.exit
  invoke void @_ZSt16__throw_bad_castv() #19
          to label %.noexc163 unwind label %.loopexit.split-lp

.noexc163:                                        ; preds = %bb.bi
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSolsEd.exit
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 56
  %i.nc = load i8, ptr %i.nb, align 8, !tbaa !118
  %.not.i1.i.i = icmp eq i8 %i.nc, 0
  br i1 %.not.i1.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 67
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.bk:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.na)
          to label %.noexc164 unwind label %.loopexit

.noexc164:                                        ; preds = %bb.bk
  %i.nf = load ptr, ptr %i.na, align 8, !tbaa !15
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 48
  %i.nh = load ptr, ptr %i.ng, align 8
  %i.ni = invoke noundef signext i8 %i.nh(ptr noundef nonnull align 8 dereferenceable(570) %i.na, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit, !inline_history !66

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc164, %bb.bj
  %.0.i.i.i = phi i8 [ %i.ne, %bb.bj ], [ %i.ni, %.noexc164 ]
  %i.nj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.mu, i8 noundef signext %.0.i.i.i)
          to label %.noexc166 unwind label %.loopexit

.noexc166:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.nk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nj)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc166
  %i.nl = load ptr, ptr %i.a, align 8, !tbaa !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  %i.nm = call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #18 ; 8 uses
  %i.nn = icmp eq ptr %i.nm, null
  br i1 %i.nn, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.no = call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.no, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.no, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.noexc.i.i109 unwind label %bb.bm

.noexc.i.i109:                                    ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.np = landingpad { ptr, i32 }
          cleanup
  %i.nq = load ptr, ptr %32, align 8, !tbaa !25
  call void @free(ptr noundef %i.nq) #17
  br label %.body110

bb.bn:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  store ptr %i.nm, ptr %32, align 8, !tbaa !25
  store i64 12, ptr %i.hz, align 8, !tbaa !26
  %i.nr = load <2 x double>, ptr %31, align 16, !tbaa !27
  store <2 x double> %i.nr, ptr %i.nm, align 16, !tbaa !27
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %i.nt = load <2 x double>, ptr %i.hk, align 16, !tbaa !27
  store <2 x double> %i.nt, ptr %i.ns, align 16, !tbaa !27
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nm, i64 32
  %i.nv = load <2 x double>, ptr %i.hn, align 16, !tbaa !27
  store <2 x double> %i.nv, ptr %i.nu, align 16, !tbaa !27
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nm, i64 48
  %i.nx = load <2 x double>, ptr %i.hq, align 16, !tbaa !27
  store <2 x double> %i.nx, ptr %i.nw, align 16, !tbaa !27
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nm, i64 64
  %i.nz = load <2 x double>, ptr %i.ht, align 16, !tbaa !27
  store <2 x double> %i.nz, ptr %i.ny, align 16, !tbaa !27
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nm, i64 80
  %i.ob = load <2 x double>, ptr %i.hw, align 16, !tbaa !27
  store <2 x double> %i.ob, ptr %i.oa, align 16, !tbaa !27
  %i.oc = invoke i32 @tiny_set_x0(ptr noundef %i.nl, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %32)
          to label %bb.bo unwind label %bb.bx     ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  %i.od = load ptr, ptr %32, align 8, !tbaa !25
  call void @free(ptr noundef %i.od) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #17
  %.idx.i.i.i.i = mul nuw nsw i64 %indvars.iv, 96
  %i.oe = getelementptr i8, ptr %29, i64 %.idx.i.i.i.i
  store ptr %i.oe, ptr %33, align 8, !tbaa !33, !alias.scope !119
  store ptr %29, ptr %i.ia, align 8, !tbaa !90, !alias.scope !119
  store i64 0, ptr %i.ib, align 8, !tbaa !35, !alias.scope !119
  store i64 %indvars.iv, ptr %i.ic, align 8, !tbaa !35, !alias.scope !119
  store i64 12, ptr %i.id, align 8, !tbaa !93, !alias.scope !119
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockINS2_IdLi12ELi301ELi0ELi12ELi301EEELi12ELi10ELb0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS6_RKS8_(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, ptr noundef nonnull align 8 dereferenceable(48) %33, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.bp unwind label %bb.by

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  %i.of = load i64, ptr %i.if, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.of, 4
  %i.og = load i64, ptr %i.ig, align 8            ; 2 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.og, 9
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.oh = mul nsw i64 %i.og, %i.of
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.oh, 36
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit.i.i.i.i.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.oi = load ptr, ptr %i.ie, align 8, !tbaa !18
  call void @free(ptr noundef %i.oi) #17
  %i.oj = call noalias dereferenceable_or_null(288) ptr @malloc(i64 noundef 288) #18 ; 2 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %.noexc.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.br
  %i.ol = call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ol, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.ol, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #19
          to label %.noexc unwind label %bb.bz

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i.i
  unreachable

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.br
  store ptr %i.oj, ptr %i.ie, align 8, !tbaa !18
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit.i.i.i.i.i.i.i.i

_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit.i.i.i.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i, %bb.bq
  store i64 4, ptr %i.if, align 8, !tbaa !19
  store i64 9, ptr %i.ig, align 8, !tbaa !20
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bp, %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit.i.i.i.i.i.i.i.i
  %i.om = load ptr, ptr %i.ie, align 8, !tbaa !18
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a
  %i.er = add nuw nsw i64 %.0185428, 1            ; 2 uses
  %i.es = icmp slt i64 %i.er, %.sroa.speculated
  br i1 %i.es, label %bb.d, label %._crit_edge430, !llvm.loop !157

bb.e:                                             ; preds = %._crit_edge430, %._crit_edge422
  %.1 = phi i64 [ %i.du, %._crit_edge430 ], [ %.0187.lcssa, %._crit_edge422 ] ; 5 uses
  %i.et = icmp slt i64 %.1, %i.c
  br i1 %i.et, label %.lr.ph439, label %bb.g

.lr.ph439:                                        ; preds = %bb.e
  %i.eu = load ptr, ptr %3, align 8, !tbaa !47
  %i.ev = load i64, ptr %i.o, align 8, !tbaa !48
  %i.ew = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.1 ; 3 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 16
  %i.ey = getelementptr i8, ptr %i.ew, i64 32
  br label %bb.f

._crit_edge440:                                   ; preds = %bb.f
  %i.ez = getelementptr inbounds [8 x i8], ptr %4, i64 %.1 ; 4 uses
  %i.fa = load <2 x double>, ptr %i.ez, align 1, !tbaa !27
  %i.fb = fmul <2 x double> %i.l, %i.fv
  %i.fc = fadd <2 x double> %i.fb, %i.fa
  store <2 x double> %i.fc, ptr %i.ez, align 1, !tbaa !27
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fe = load <2 x double>, ptr %i.fd, align 1, !tbaa !27
  %i.ff = fmul <2 x double> %i.l, %i.fz
  %i.fg = fadd <2 x double> %i.ff, %i.fe
  store <2 x double> %i.fg, ptr %i.fd, align 1, !tbaa !27
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 32 ; 2 uses
  %i.fi = load <2 x double>, ptr %i.fh, align 1, !tbaa !27
  %i.fj = fmul <2 x double> %i.l, %i.gd
  %i.fk = fadd <2 x double> %i.fj, %i.fi
  store <2 x double> %i.fk, ptr %i.fh, align 1, !tbaa !27
  %i.fl = add nsw i64 %.1, 6
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph439, %bb.f
  %.0184438 = phi i64 [ %.0188462, %.lr.ph439 ], [ %i.ge, %bb.f ] ; 3 uses
  %.0397437 = phi <2 x double> [ zeroinitializer, %.lr.ph439 ], [ %i.fv, %bb.f ]
  %.0398436 = phi <2 x double> [ zeroinitializer, %.lr.ph439 ], [ %i.fz, %bb.f ]
  %.0399435 = phi <2 x double> [ zeroinitializer, %.lr.ph439 ], [ %i.gd, %bb.f ]
  %i.fm = mul nsw i64 %i.ev, %.0184438
  %i.fn = getelementptr [8 x i8], ptr %i.eu, i64 %i.fm
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !29
  %i.fp = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fr = mul nsw i64 %.0184438, %.sroa.22.0.copyload ; 3 uses
  %i.fs = getelementptr [8 x i8], ptr %i.ew, i64 %i.fr
  %i.ft = load <2 x double>, ptr %i.fs, align 1, !tbaa !27
  %i.fu = fmul <2 x double> %i.ft, %i.fq
  %i.fv = fadd <2 x double> %.0397437, %i.fu      ; 2 uses
  %i.fw = getelementptr [8 x i8], ptr %i.ex, i64 %i.fr
  %i.fx = load <2 x double>, ptr %i.fw, align 1, !tbaa !27
  %i.fy = fmul <2 x double> %i.fx, %i.fq
  %i.fz = fadd <2 x double> %.0398436, %i.fy      ; 2 uses
  %i.ga = getelementptr [8 x i8], ptr %i.ey, i64 %i.fr
  %i.gb = load <2 x double>, ptr %i.ga, align 1, !tbaa !27
  %i.gc = fmul <2 x double> %i.fq, %i.gb
  %i.gd = fadd <2 x double> %.0399435, %i.gc      ; 2 uses
  %i.ge = add nuw nsw i64 %.0184438, 1            ; 2 uses
  %i.gf = icmp slt i64 %i.ge, %.sroa.speculated
  br i1 %i.gf, label %bb.f, label %._crit_edge440, !llvm.loop !158

bb.g:                                             ; preds = %._crit_edge440, %bb.e
  %.2 = phi i64 [ %i.fl, %._crit_edge440 ], [ %.1, %bb.e ] ; 5 uses
  %i.gg = icmp slt i64 %.2, %i.d
  br i1 %i.gg, label %.lr.ph447, label %bb.i

.lr.ph447:                                        ; preds = %bb.g
  %i.gh = load ptr, ptr %3, align 8, !tbaa !47
  %i.gi = load i64, ptr %i.o, align 8, !tbaa !48
  %i.gj = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.2 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  br label %bb.h

._crit_edge448:                                   ; preds = %bb.h
  %i.gl = getelementptr inbounds [8 x i8], ptr %4, i64 %.2 ; 3 uses
  %i.gm = load <2 x double>, ptr %i.gl, align 1, !tbaa !27
  %i.gn = fmul <2 x double> %i.l, %i.hd
  %i.go = fadd <2 x double> %i.gn, %i.gm
  store <2 x double> %i.go, ptr %i.gl, align 1, !tbaa !27
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !27
  %i.gr = fmul <2 x double> %i.l, %i.hh
  %i.gs = fadd <2 x double> %i.gr, %i.gq
  store <2 x double> %i.gs, ptr %i.gp, align 1, !tbaa !27
  %i.gt = add nsw i64 %.2, 4
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph447, %bb.h
  %.0183446 = phi i64 [ %.0188462, %.lr.ph447 ], [ %i.hi, %bb.h ] ; 3 uses
  %.0393445 = phi <2 x double> [ zeroinitializer, %.lr.ph447 ], [ %i.hh, %bb.h ]
  %.0395444 = phi <2 x double> [ zeroinitializer, %.lr.ph447 ], [ %i.hd, %bb.h ]
  %i.gu = mul nsw i64 %i.gi, %.0183446
  %i.gv = getelementptr [8 x i8], ptr %i.gh, i64 %i.gu
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !29
  %i.gx = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gz = mul nsw i64 %.0183446, %.sroa.22.0.copyload ; 2 uses
  %i.ha = getelementptr [8 x i8], ptr %i.gj, i64 %i.gz
  %i.hb = load <2 x double>, ptr %i.ha, align 1, !tbaa !27
  %i.hc = fmul <2 x double> %i.hb, %i.gy
  %i.hd = fadd <2 x double> %.0395444, %i.hc      ; 2 uses
  %i.he = getelementptr [8 x i8], ptr %i.gk, i64 %i.gz
  %i.hf = load <2 x double>, ptr %i.he, align 1, !tbaa !27
  %i.hg = fmul <2 x double> %i.hf, %i.gy
  %i.hh = fadd <2 x double> %.0393445, %i.hg      ; 2 uses
  %i.hi = add nuw nsw i64 %.0183446, 1            ; 2 uses
  %i.hj = icmp slt i64 %i.hi, %.sroa.speculated
  br i1 %i.hj, label %bb.h, label %._crit_edge448, !llvm.loop !159

bb.i:                                             ; preds = %._crit_edge448, %bb.g
  %.3 = phi i64 [ %i.gt, %._crit_edge448 ], [ %.2, %bb.g ] ; 5 uses
  %i.hk = icmp slt i64 %.3, %i.e
  br i1 %i.hk, label %.lr.ph453, label %bb.k

.lr.ph453:                                        ; preds = %bb.i
  %i.hl = load ptr, ptr %3, align 8, !tbaa !47
  %i.hm = load i64, ptr %i.o, align 8, !tbaa !48
  %i.hn = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.3
  br label %bb.j

._crit_edge454:                                   ; preds = %bb.j
  %i.ho = getelementptr inbounds [8 x i8], ptr %4, i64 %.3 ; 2 uses
  %i.hp = load <2 x double>, ptr %i.ho, align 1, !tbaa !27
  %i.hq = fmul <2 x double> %i.l, %i.ic
  %i.hr = fadd <2 x double> %i.hq, %i.hp
  store <2 x double> %i.hr, ptr %i.ho, align 1, !tbaa !27
  %i.hs = add nsw i64 %.3, 2
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph453, %bb.j
  %.0182452 = phi i64 [ %.0188462, %.lr.ph453 ], [ %i.id, %bb.j ] ; 3 uses
  %.0384451 = phi <2 x double> [ zeroinitializer, %.lr.ph453 ], [ %i.ic, %bb.j ]
  %i.ht = mul nsw i64 %i.hm, %.0182452
  %i.hu = getelementptr [8 x i8], ptr %i.hl, i64 %i.ht
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !29
  %i.hw = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = mul nsw i64 %.0182452, %.sroa.22.0.copyload
  %i.hz = getelementptr [8 x i8], ptr %i.hn, i64 %i.hy
  %i.ia = load <2 x double>, ptr %i.hz, align 1, !tbaa !27
  %i.ib = fmul <2 x double> %i.ia, %i.hx
  %i.ic = fadd <2 x double> %.0384451, %i.ib      ; 2 uses
  %i.id = add nuw nsw i64 %.0182452, 1            ; 2 uses
  %i.ie = icmp slt i64 %i.id, %.sroa.speculated
  br i1 %i.ie, label %bb.j, label %._crit_edge454, !llvm.loop !160

bb.k:                                             ; preds = %._crit_edge454, %bb.i
  %.4 = phi i64 [ %i.hs, %._crit_edge454 ], [ %.3, %bb.i ] ; 2 uses
  %i.if = icmp slt i64 %.4, %0
  br i1 %i.if, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.k
  %i.ig = load ptr, ptr %3, align 8, !tbaa !47
  %i.ih = load i64, ptr %i.o, align 8, !tbaa !48
  br label %.lr.ph458

.lr.ph458:                                        ; preds = %._crit_edge459, %.preheader.lr.ph
  %.5461 = phi i64 [ %.4, %.preheader.lr.ph ], [ %i.im, %._crit_edge459 ] ; 3 uses
  %i.ii = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.5461
  br label %bb.l

._crit_edge459:                                   ; preds = %bb.l
  %i.ij = getelementptr inbounds [8 x i8], ptr %4, i64 %.5461 ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !29
  %i.il = tail call double @llvm.fmuladd.f64(double %6, double %i.iu, double %i.ik)
  store double %i.il, ptr %i.ij, align 8, !tbaa !29
  %i.im = add nsw i64 %.5461, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.im, %0
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph458, !llvm.loop !161

bb.l:                                             ; preds = %.lr.ph458, %bb.l
  %.0457 = phi i64 [ %.0188462, %.lr.ph458 ], [ %i.iv, %bb.l ] ; 3 uses
  %.0181456 = phi double [ 0.000000e+00, %.lr.ph458 ], [ %i.iu, %bb.l ]
  %i.in = mul nsw i64 %.0457, %.sroa.22.0.copyload
  %i.io = getelementptr [8 x i8], ptr %i.ii, i64 %i.in
  %i.ip = mul nsw i64 %i.ih, %.0457
  %i.iq = getelementptr [8 x i8], ptr %i.ig, i64 %i.ip
  %i.ir = load double, ptr %i.io, align 8, !tbaa !29
  %i.is = load double, ptr %i.iq, align 8, !tbaa !29
  %i.it = fmul double %i.ir, %i.is
  %i.iu = fadd double %.0181456, %i.it            ; 2 uses
  %i.iv = add nuw nsw i64 %.0457, 1               ; 2 uses
  %i.iw = icmp slt i64 %i.iv, %.sroa.speculated
  br i1 %i.iw, label %bb.l, label %._crit_edge459, !llvm.loop !162
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 double", !9, i64 0}
!11 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi12EEE"}
!12 = !{!"_ZTSN5Eigen7MapBaseINS_3MapINS_6MatrixIdLi12ELi12ELi1ELi12ELi12EEELi0ENS_6StrideILi0ELi0EEEEELi0EEE", !10, i64 0, !11, i64 8, !11, i64 9}
!13 = !{!12, !10, i64 0}
!14 = !{!"vtable pointer", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !10, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!17, !10, i64 0}
!19 = !{!17, !16, i64 8}
!20 = !{!17, !16, i64 16}
!21 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi4EEE"}
!22 = !{!"_ZTSN5Eigen7MapBaseINS_3MapINS_6MatrixIdLi12ELi4ELi1ELi12ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi0EEE", !10, i64 0, !11, i64 8, !21, i64 9}
!23 = !{!22, !10, i64 0}
!24 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !10, i64 0, !16, i64 8}
!25 = !{!24, !10, i64 0}
!26 = !{!24, !16, i64 8}
!27 = !{!5, !5, i64 0}
!28 = !{!"double", !5, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi10EEE"}
!32 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi12ELi301ELi0ELi12ELi301EEELi12ELi10ELb0EEELi0EEE", !10, i64 0, !11, i64 8, !31, i64 9}
!33 = !{!32, !10, i64 0}
!34 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !16, i64 0}
!35 = !{!34, !16, i64 0}
!36 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE", !9, i64 0}
!37 = !{!"_ZTSN5Eigen15DiagonalWrapperIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE", !36, i64 0}
!38 = !{!37, !36, i64 0}
!39 = !{}
!40 = !{i64 8}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE", !9, i64 0}
!43 = !{!"_ZTSN5Eigen8internal16blas_data_mapperIKdlLi0ELi0ELi1EEE", !10, i64 0, !16, i64 8}
!44 = !{!43, !10, i64 0}
!45 = !{!43, !16, i64 8}
!46 = !{!"_ZTSN5Eigen8internal16blas_data_mapperIKdlLi1ELi0ELi1EEE", !10, i64 0, !16, i64 8}
!47 = !{!46, !10, i64 0}
!48 = !{!46, !16, i64 8}
!49 = distinct !{!49, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi12ELi10ELi0ELi12ELi10EEEE8ConstantERKd"}
!50 = distinct !{!50, !49, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi12ELi10ELi0ELi12ELi10EEEE8ConstantERKd: argument 0"}
!51 = distinct !{!51, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi12ELi10ELi0ELi12ELi10EEEE11NullaryExprINS_8internal18scalar_constant_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_"}
!52 = distinct !{!52, !51, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi12ELi10ELi0ELi12ELi10EEEE11NullaryExprINS_8internal18scalar_constant_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_: argument 0"}
!53 = distinct !{!53, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi12ELi10ELi0ELi12ELi10EEEE8ConstantERKd"}
!54 = distinct !{!54, !53, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi12ELi10ELi0ELi12ELi10EEEE8ConstantERKd: argument 0"}
!55 = distinct !{!55, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi12ELi10ELi0ELi12ELi10EEEE11NullaryExprINS_8internal18scalar_constant_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_"}
!56 = distinct !{!56, !55, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi12ELi10ELi0ELi12ELi10EEEE11NullaryExprINS_8internal18scalar_constant_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_: argument 0"}
!57 = distinct !{!57, !30}
!58 = distinct !{!58, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi12ELi301ELi0ELi12ELi301EEEE5blockILi12ELi10EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEll"}
!59 = distinct !{!59, !58, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi12ELi301ELi0ELi12ELi301EEEE5blockILi12ELi10EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEll: argument 0"}
!60 = distinct !{!60, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!61 = distinct !{!61, !60, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!62 = distinct !{!62, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!63 = distinct !{!63, !62, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!64 = distinct !{!64, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!65 = distinct !{!65, !64, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!66 = distinct !{null, null}
!67 = distinct !{!67, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi12ELi301ELi0ELi12ELi301EEEE5blockILi12ELi10EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEll"}
!68 = distinct !{!68, !67, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi12ELi301ELi0ELi12ELi301EEEE5blockILi12ELi10EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEll: argument 0"}
!69 = distinct !{!69, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi12ELi10ELi0ELi12ELi10EEEE4ZeroEv"}
!70 = distinct !{!70, !69, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi12ELi10ELi0ELi12ELi10EEEE4ZeroEv: argument 0"}
!71 = distinct !{!71, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi12ELi10ELi0ELi12ELi10EEEE8ConstantERKd"}
!72 = distinct !{!72, !71, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi12ELi10ELi0ELi12ELi10EEEE8ConstantERKd: argument 0"}
!73 = distinct !{!73, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi12ELi10ELi0ELi12ELi10EEEE11NullaryExprINS_8internal18scalar_constant_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_"}
!74 = distinct !{!74, !73, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi12ELi10ELi0ELi12ELi10EEEE11NullaryExprINS_8internal18scalar_constant_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_: argument 0"}
!75 = distinct !{!75, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!76 = distinct !{!76, !75, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!77 = distinct !{!77, !30}
!78 = !{!"_ZTSN5Eigen8internal18scalar_constant_opIdEE", !28, i64 0}
!79 = !{!78, !28, i64 0}
!80 = !{!52, !50}
!81 = !{!56, !54}
!82 = !{!9, !9, i64 0}
!83 = !{!"_ZTS10TinySolver", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!84 = !{!83, !9, i64 8}
!85 = !{!"_ZTS12TinySettings", !28, i64 0, !28, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !28, i64 64, !28, i64 72, !6, i64 80}
!86 = !{!85, !6, i64 16}
!87 = !{!83, !9, i64 24}
!88 = !{!59}
!89 = !{!"p1 _ZTSN5Eigen6MatrixIdLi12ELi301ELi0ELi12ELi301EEE", !9, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi12ELi301ELi0ELi12ELi301EEELi12ELi10ELb0EEELi1EEE", !32, i64 0}
!92 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLi12ELi301ELi0ELi12ELi301EEELi12ELi10ELb0ELb1EEE", !91, i64 0, !89, i64 16, !34, i64 24, !34, i64 32, !16, i64 40}
!93 = !{!92, !16, i64 40}
!94 = !{!61}
!95 = !{!63}
!96 = !{!65}
!97 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!98 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!99 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!100 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !16, i64 8}
!101 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!102 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!103 = !{!"_ZTSSt6locale", !102, i64 0}
!104 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !97, i64 24, !98, i64 28, !98, i64 32, !99, i64 40, !100, i64 48, !5, i64 64, !6, i64 192, !101, i64 200, !103, i64 208}
!105 = !{!"p1 _ZTSSo", !9, i64 0}
!106 = !{!"bool", !5, i64 0}
!107 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !9, i64 0}
!108 = !{!"p1 _ZTSSt5ctypeIcE", !9, i64 0}
!109 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!110 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!111 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !104, i64 0, !105, i64 216, !5, i64 224, !106, i64 225, !107, i64 232, !108, i64 240, !109, i64 248, !110, i64 256}
!112 = !{!111, !108, i64 240}
!113 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!114 = !{!"p1 _ZTS15__locale_struct", !9, i64 0}
!115 = !{!"p1 int", !9, i64 0}
!116 = !{!"p1 short", !9, i64 0}
!117 = !{!"_ZTSSt5ctypeIcE", !113, i64 0, !114, i64 16, !106, i64 24, !115, i64 32, !115, i64 40, !116, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!118 = !{!117, !5, i64 56}
!119 = !{!68}
!120 = !{!74, !72, !70}
!121 = !{!83, !9, i64 0}
!122 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !17, i64 0}
!123 = !{!"_ZTSN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE", !122, i64 0}
!124 = !{!"_ZTS12TinySolution", !6, i64 0, !6, i64 4, !123, i64 8, !123, i64 32}
!125 = !{!124, !6, i64 0}
!126 = !{!76}
!127 = distinct !{!127, !30}
!128 = distinct !{!128, !41}
!129 = distinct !{!129, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!130 = distinct !{!130, !129, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!131 = distinct !{!131, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE3colEl"}
!132 = distinct !{!132, !131, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE3colEl: argument 0"}
!133 = distinct !{!133, !30}
!134 = distinct !{!134, !41}
!135 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi1EEE"}
!136 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi0EEE", !10, i64 0, !34, i64 8, !135, i64 16}
!137 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELi1EEE", !136, i64 0}
!138 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1ELb1EEE", !137, i64 0, !42, i64 24, !34, i64 32, !34, i64 40, !16, i64 48}
!139 = !{!"_ZTSN5Eigen9BlockImplINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1ENS_5DenseEEE", !138, i64 0}
!140 = !{!"_ZTSN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEE", !139, i64 0}
!141 = !{!"_ZTSN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS2_Lin1ELi1ELb1EEELi0EEE", !42, i64 0, !140, i64 8}
!142 = !{!141, !42, i64 0}
!143 = !{!130}
!144 = !{!136, !10, i64 0}
!145 = !{!132}
!146 = !{!"p1 _ZTSN5Eigen6MatrixIdLi12ELi1ELi0ELi12ELi1EEE", !9, i64 0}
!147 = !{!"_ZTSN5Eigen7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLi12ELi1ELi0ELi12ELi1EEELi0EEE", !42, i64 0, !146, i64 8}
!148 = !{!147, !42, i64 0}
!149 = !{!147, !146, i64 8}
!150 = !{i64 16}
!151 = distinct !{!151, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!152 = distinct !{!152, !151, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!153 = !{!152}
!154 = distinct !{!154, !30}
!155 = distinct !{!155, !30}
!156 = distinct !{!156, !30}
!157 = distinct !{!157, !30}
!158 = distinct !{!158, !30}
!159 = distinct !{!159, !30}
!160 = distinct !{!160, !30}
!161 = distinct !{!161, !30}
!162 = distinct !{!162, !30}
end_hunk_1
