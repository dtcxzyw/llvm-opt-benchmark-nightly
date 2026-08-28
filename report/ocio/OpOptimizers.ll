Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/OpOptimizers?download=true
inline.NumInlined: 568
inline.NumDeleted: 188
begin_hunk_0_@_ZN16OpenColorIO_v2_510OpRcPtrVec8optimizeENS_17OptimizationFlagsE:bb.a
  %.pn106.pn = phi { ptr, i32 } [ %.pn106, %.body142 ], [ %.pn104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ], [ %i.jp, %bb.bj ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %37) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #14
  br label %common.resume

bb.bo:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115RemoveNoOpTypesERNS_10OpRcPtrVecE.exit
  %i.kc = and i64 %1, 268435456
  %.not455 = icmp eq i64 %i.kc, 0
  br i1 %.not455, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123RemoveDynamicPropertiesERNS_10OpRcPtrVecE.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kd = load ptr, ptr %0, align 8, !tbaa !68    ; 2 uses
  %.not.i157 = icmp eq ptr %i.gq, %i.kd
  br i1 %.not.i157, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123RemoveDynamicPropertiesERNS_10OpRcPtrVecE.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %bb.bp
  %i.ke = ptrtoint ptr %i.gq to i64
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = sub i64 %i.ke, %i.kf
  %i.kh = ashr exact i64 %i.kg, 4
  %i.ki = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.ck, %.lr.ph.i158
  %.012.i = phi i64 [ 0, %.lr.ph.i158 ], [ %i.mq, %bb.ck ] ; 3 uses
  %i.kj = load ptr, ptr %0, align 8, !tbaa !68
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %i.kj, i64 %.012.i ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !11 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !19
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 152
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = call noundef zeroext i1 %i.ko(ptr noundef nonnull align 8 dereferenceable(24) %i.kl), !inline_history !94
  br i1 %i.kp, label %bb.br, label %bb.ck

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #14
  %i.kq = load ptr, ptr %i.kk, align 8, !tbaa !11 ; 2 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !19
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %31, ptr noundef nonnull align 8 dereferenceable(24) %i.kq), !inline_history !94
  %i.ku = load ptr, ptr %31, align 8, !tbaa !11   ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !19
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 216
  %i.kx = load ptr, ptr %i.kw, align 8
  invoke void %i.kx(ptr noundef nonnull align 8 dereferenceable(24) %i.ku)
          to label %bb.bs unwind label %bb.cj

bb.bs:                                            ; preds = %bb.br
  %i.ky = load ptr, ptr %0, align 8, !tbaa !68
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.ky, i64 %.012.i ; 2 uses
  %i.la = load ptr, ptr %31, align 8, !tbaa !11
  store ptr %i.la, ptr %i.kz, align 8, !tbaa !11
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 3 uses
  %i.lc = load ptr, ptr %i.ki, align 8, !tbaa !16 ; 5 uses
  %i.ld = load ptr, ptr %i.lb, align 8, !tbaa !16 ; 3 uses
  %.not.i.i.i.i159 = icmp eq ptr %i.lc, %i.ld
  br i1 %.not.i.i.i.i159, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not7.i.i.i.i = icmp eq ptr %i.lc, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 8 ; 3 uses
  %i.lf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i160 = icmp eq i8 %i.lf, 0
  br i1 %.not.i.i.i.i.i160, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lg = load i32, ptr %i.le, align 4, !tbaa !18
  %i.lh = add nsw i32 %i.lg, 1
  store i32 %i.lh, ptr %i.le, align 4, !tbaa !18
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.li = atomicrmw volatile add ptr %i.le, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.lb, align 8, !tbaa !16
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.bw, %bb.bv, %bb.bt
  %i.lj = phi ptr [ %i.ld, %bb.bt ], [ %i.ld, %bb.bv ], [ %.pr.pre.i.i.i.i, %bb.bw ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.lj, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8 ; 4 uses
  %i.ll = load atomic i64, ptr %i.lk acquire, align 8 ; 2 uses
  %i.lm = icmp eq i64 %i.ll, 4294967297
  %i.ln = trunc i64 %i.ll to i32                  ; 2 uses
  br i1 %i.lm, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %i.lk, align 8, !tbaa !21
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  store i32 0, ptr %i.lo, align 4, !tbaa !23
  %i.lp = load ptr, ptr %i.lj, align 8, !tbaa !19
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(16) %i.lj) #14, !inline_history !95
  %i.ls = load ptr, ptr %i.lj, align 8, !tbaa !19
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  %i.lu = load ptr, ptr %i.lt, align 8
  call void %i.lu(ptr noundef nonnull align 8 dereferenceable(16) %i.lj) #14, !inline_history !95
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.lv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i9.i.i.i.i = icmp eq i8 %i.lv, 0
  br i1 %.not.i9.i.i.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lw = add nsw i32 %i.ln, -1
  store i32 %i.lw, ptr %i.lk, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.lx = atomicrmw volatile add ptr %i.lk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i.i.i = phi i32 [ %i.ln, %bb.ca ], [ %i.lx, %bb.cb ]
  %i.ly = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ly, label %bb.cc, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !25

bb.cc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lj) #14
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.by, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.lc, ptr %i.lb, align 8, !tbaa !16
  %.pr.i = load ptr, ptr %i.ki, align 8, !tbaa !16
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i

_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, %bb.bs
  %i.lz = phi ptr [ %i.lc, %bb.bs ], [ %.pr.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i ] ; 8 uses
  %.not.i.i.i161 = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.i161, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 4 uses
  %i.mb = load atomic i64, ptr %i.ma acquire, align 8 ; 2 uses
  %i.mc = icmp eq i64 %i.mb, 4294967297
  %i.md = trunc i64 %i.mb to i32                  ; 2 uses
  br i1 %i.mc, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i32 0, ptr %i.ma, align 8, !tbaa !21
  %i.me = getelementptr inbounds nuw i8, ptr %i.lz, i64 12
  store i32 0, ptr %i.me, align 4, !tbaa !23
  %i.mf = load ptr, ptr %i.lz, align 8, !tbaa !19
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(16) %i.lz) #14, !inline_history !96
  %i.mi = load ptr, ptr %i.lz, align 8, !tbaa !19
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.mk = load ptr, ptr %i.mj, align 8
  call void %i.mk(ptr noundef nonnull align 8 dereferenceable(16) %i.lz) #14, !inline_history !96
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.cf:                                            ; preds = %bb.cd
  %i.ml = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i11.i162 = icmp eq i8 %i.ml, 0
  br i1 %.not.i.i.i11.i162, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mm = add nsw i32 %i.md, -1
  store i32 %i.mm, ptr %i.ma, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i163

bb.ch:                                            ; preds = %bb.cf
  %i.mn = atomicrmw volatile add ptr %i.ma, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i163

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i163: ; preds = %bb.ch, %bb.cg
  %.0.i.i.i.i.i164 = phi i32 [ %i.md, %bb.cg ], [ %i.mn, %bb.ch ]
  %i.mo = icmp eq i32 %.0.i.i.i.i.i164, 1
  br i1 %i.mo, label %bb.ci, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !25

bb.ci:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i163
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lz) #14
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ci, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i163, %bb.ce, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #14
  br label %bb.ck

bb.cj:                                            ; preds = %bb.br
  %i.mp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #14
  br label %common.resume

bb.ck:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.bq
  %i.mq = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.mq, %i.kh
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_123RemoveDynamicPropertiesERNS_10OpRcPtrVecE.exit, label %bb.bq, !llvm.loop !97

_ZN16OpenColorIO_v2_512_GLOBAL__N_123RemoveDynamicPropertiesERNS_10OpRcPtrVecE.exit: ; preds = %bb.ck, %bb.bp, %bb.bo
  %45 = and i64 %1, 1
  %.not456 = icmp eq i64 %45, 0
  %i.mr = and i64 %1, 134217728
  %.not457.a = icmp eq i64 %i.mr, 0
  %i.ms = and i64 %1, 33554432
  %.not458 = icmp eq i64 %i.ms, 0
  %i.mt = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %46 = trunc i64 %1 to i1
  %i.mv = and i64 %1, 2
  %i.mw = icmp ne i64 %i.mv, 0
  %i.mx = and i64 %1, 3
  %or.cond.not.i = icmp eq i64 %i.mx, 0
  %i.my = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.nc = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.nd = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.nf = and i64 %1, 8192
  %.not.i212 = icmp eq i64 %i.nf, 0
  %i.ng = and i64 %1, 4096
  %.not171.i = icmp eq i64 %i.ng, 0
  %i.nh = and i64 %1, 2048
  %.not172.i = icmp eq i64 %i.nh, 0
  %i.ni = and i64 %1, 1024
  %.not173.i = icmp eq i64 %i.ni, 0
  %i.nj = and i64 %1, 512
  %.not174.i = icmp eq i64 %i.nj, 0
  %i.nk = and i64 %1, 256
  %.not175.i = icmp eq i64 %i.nk, 0
  %i.nl = and i64 %1, 128
  %.not176.i = icmp eq i64 %i.nl, 0
  %i.nm = and i64 %1, 64
  %.not177.i = icmp eq i64 %i.nm, 0
  %i.nn = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %i.no = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.nu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.nv = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.nw = and i64 %1, 8388608
  %.not.i240 = icmp eq i64 %i.nw, 0
  %i.nx = and i64 %1, 1048576
  %.not64.i = icmp eq i64 %i.nx, 0
  %i.ny = and i64 %1, 4194304
  %.not65.i = icmp eq i64 %i.ny, 0
  %i.nz = and i64 %1, 2097152
  %.not66.i = icmp eq i64 %i.nz, 0
  %i.oa = and i64 %1, 524288
  %.not67.i = icmp eq i64 %i.oa, 0
  %i.ob = and i64 %1, 262144
  %.not68.i = icmp eq i64 %i.ob, 0
  %i.oc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.oi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ok = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_123RemoveDynamicPropertiesERNS_10OpRcPtrVecE.exit, %bb.rs
  %.01506 = phi i32 [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_123RemoveDynamicPropertiesERNS_10OpRcPtrVecE.exit ], [ %i.ban, %bb.rs ] ; 5 uses
  %.0501505 = phi i32 [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_123RemoveDynamicPropertiesERNS_10OpRcPtrVecE.exit ], [ %.252, %bb.rs ] ; 4 uses
  %.0531504 = phi i32 [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_123RemoveDynamicPropertiesERNS_10OpRcPtrVecE.exit ], [ %i.bam, %bb.rs ] ; 3 uses
  %.0561503 = phi i32 [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_123RemoveDynamicPropertiesERNS_10OpRcPtrVecE.exit ], [ %i.bal, %bb.rs ] ; 3 uses
  %.0591502 = phi i32 [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_123RemoveDynamicPropertiesERNS_10OpRcPtrVecE.exit ], [ %i.bak, %bb.rs ] ; 3 uses
  %.0621501 = phi i32 [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_123RemoveDynamicPropertiesERNS_10OpRcPtrVecE.exit ], [ %i.baj, %bb.rs ] ; 3 uses
  %.0651500 = phi i32 [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_123RemoveDynamicPropertiesERNS_10OpRcPtrVecE.exit ], [ %i.bai, %bb.rs ] ; 3 uses
  br i1 %.not456, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111RemoveNoOpsERNS_10OpRcPtrVecE.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ol = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.om = load ptr, ptr %i.b, align 8, !tbaa !8
  %.not10.i = icmp eq ptr %i.ol, %i.om
  br i1 %.not10.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111RemoveNoOpsERNS_10OpRcPtrVecE.exit, label %.lr.ph.i165

.lr.ph.i165:                                      ; preds = %bb.cm, %bb.cp
  %.012.i166 = phi i32 [ %.1.i167, %bb.cp ], [ 0, %bb.cm ] ; 2 uses
  %.sroa.07.011.i = phi ptr [ %.sroa.07.1.i, %bb.cp ], [ %i.ol, %bb.cm ] ; 3 uses
  %i.on = load ptr, ptr %.sroa.07.011.i, align 8, !tbaa !11 ; 2 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !19
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 40
  %i.oq = load ptr, ptr %i.op, align 8
  %i.or = call noundef zeroext i1 %i.oq(ptr noundef nonnull align 8 dereferenceable(24) %i.on), !inline_history !98
  br i1 %i.or, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph.i165
  %i.os = call ptr @_ZN16OpenColorIO_v2_510OpRcPtrVec5eraseEN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_2OpEESt6vectorIS5_SaIS5_EEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr nonnull %.sroa.07.011.i)
  %i.ot = add nsw i32 %.012.i166, 1
  br label %bb.cp

bb.co:                                            ; preds = %.lr.ph.i165
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 16
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.sroa.07.1.i = phi ptr [ %i.os, %bb.cn ], [ %i.ou, %bb.co ] ; 2 uses
  %.1.i167 = phi i32 [ %i.ot, %bb.cn ], [ %.012.i166, %bb.co ] ; 2 uses
  %i.ov = load ptr, ptr %i.b, align 8, !tbaa !8
  %.not.i168 = icmp eq ptr %.sroa.07.1.i, %i.ov
  br i1 %.not.i168, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_111RemoveNoOpsERNS_10OpRcPtrVecE.exit, label %.lr.ph.i165, !llvm.loop !99

_ZN16OpenColorIO_v2_512_GLOBAL__N_111RemoveNoOpsERNS_10OpRcPtrVecE.exit: ; preds = %bb.cp, %bb.cm, %bb.cl
  %i.ow = phi i32 [ 0, %bb.cl ], [ 0, %bb.cm ], [ %.1.i167, %bb.cp ] ; 2 uses
  br i1 %.not457.a, label %bb.dq, label %bb.cq

bb.cq:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_111RemoveNoOpsERNS_10OpRcPtrVecE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #14
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144) %29)
  %i.ox = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.oy = load ptr, ptr %0, align 8, !tbaa !68    ; 2 uses
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = ptrtoint ptr %i.oy to i64
  %i.pb = sub i64 %i.oz, %i.pa
  %i.pc = lshr exact i64 %i.pb, 4
  %i.pd = trunc i64 %i.pc to i32
  %i.pe = icmp sgt i32 %i.pd, 0
  br i1 %i.pe, label %.lr.ph.i171, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110ReplaceOpsERNS_10OpRcPtrVecE.exit

.lr.ph.i171:                                      ; preds = %bb.cq, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182
  %i.pf = phi ptr [ %i.rr, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182 ], [ %i.oy, %bb.cq ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182 ], [ 0, %bb.cq ] ; 4 uses
  %.040.i = phi i32 [ %.1.i178, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182 ], [ 0, %bb.cq ] ; 2 uses
  %i.pg = load ptr, ptr %29, align 8, !tbaa !68   ; 3 uses
  %i.ph = load ptr, ptr %i.mt, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i.i172 = icmp eq ptr %i.ph, %i.pg
  br i1 %.not.i.i.i.i172, label %_ZN16OpenColorIO_v2_510OpRcPtrVec5clearEv.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i171, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.pz, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i.i ], [ %i.pg, %.lr.ph.i171 ] ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !16 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.pj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8 ; 4 uses
  %i.pl = load atomic i64, ptr %i.pk acquire, align 8 ; 2 uses
  %i.pm = icmp eq i64 %i.pl, 4294967297
  %i.pn = trunc i64 %i.pl to i32                  ; 2 uses
  br i1 %i.pm, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %i.pk, align 8, !tbaa !21
  %i.po = getelementptr inbounds nuw i8, ptr %i.pj, i64 12
  store i32 0, ptr %i.po, align 4, !tbaa !23
  %i.pp = load ptr, ptr %i.pj, align 8, !tbaa !19
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.pr = load ptr, ptr %i.pq, align 8
  call void %i.pr(ptr noundef nonnull align 8 dereferenceable(16) %i.pj) #14, !inline_history !100
  %i.ps = load ptr, ptr %i.pj, align 8, !tbaa !19
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 24
  %i.pu = load ptr, ptr %i.pt, align 8
  call void %i.pu(ptr noundef nonnull align 8 dereferenceable(16) %i.pj) #14, !inline_history !100
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.pv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.pv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.pw = add nsw i32 %i.pn, -1
  store i32 %i.pw, ptr %i.pk, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %bb.ct
  %i.px = atomicrmw volatile add ptr %i.pk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.pn, %bb.cu ], [ %i.px, %bb.cv ]
  %i.py = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.py, label %bb.cw, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i.i, !prof !25

bb.cw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pj) #14
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.cw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.cs, %.lr.ph.i.i.i.i.i.i
  %i.pz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i173 = icmp eq ptr %i.pz, %i.ph
  br i1 %.not.i.i.i.i.i.i173, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !101

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i.i
  store ptr %i.pg, ptr %i.mt, align 8, !tbaa !66
  %.pre.i174 = load ptr, ptr %0, align 8, !tbaa !68
  br label %_ZN16OpenColorIO_v2_510OpRcPtrVec5clearEv.exit.i

_ZN16OpenColorIO_v2_510OpRcPtrVec5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, %.lr.ph.i171
  %i.qa = phi ptr [ %i.pf, %.lr.ph.i171 ], [ %.pre.i174, %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #14
  %i.qb = getelementptr inbounds nuw [16 x i8], ptr %i.qa, i64 %indvars.iv.i ; 2 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !11 ; 3 uses
  store ptr %i.qc, ptr %30, align 8, !tbaa !69
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !16 ; 3 uses
  store ptr %i.qe, ptr %i.mu, align 8, !tbaa !16
  %.not.i.i.i21.i = icmp eq ptr %i.qe, null
  br i1 %.not.i.i.i21.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i176, label %bb.cx

bb.cx:                                            ; preds = %_ZN16OpenColorIO_v2_510OpRcPtrVec5clearEv.exit.i
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8 ; 3 uses
  %i.qg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i175 = icmp eq i8 %i.qg, 0
  br i1 %.not.i.i.i.i.i175, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.qh = load i32, ptr %i.qf, align 4, !tbaa !18
  %i.qi = add nsw i32 %i.qh, 1
  store i32 %i.qi, ptr %i.qf, align 4, !tbaa !18
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i176

bb.cz:                                            ; preds = %bb.cx
  %i.qj = atomicrmw volatile add ptr %i.qf, i32 1 acq_rel, align 4 ; 0 uses
  %.pre42.i = load ptr, ptr %30, align 8, !tbaa !69
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i176

_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i176: ; preds = %bb.cz, %bb.cy, %_ZN16OpenColorIO_v2_510OpRcPtrVec5clearEv.exit.i
  %i.qk = phi ptr [ %i.qc, %_ZN16OpenColorIO_v2_510OpRcPtrVec5clearEv.exit.i ], [ %i.qc, %bb.cy ], [ %.pre42.i, %bb.cz ]
  invoke void @_ZNK16OpenColorIO_v2_52Op21getSimplerReplacementERNS_10OpRcPtrVecE(ptr noundef nonnull align 8 dereferenceable(24) %i.qk, ptr noundef nonnull align 8 dereferenceable(144) %29)
          to label %bb.da unwind label %bb.df

bb.da:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i176
  %i.ql = load ptr, ptr %29, align 8, !tbaa !8    ; 2 uses
  %i.qm = load ptr, ptr %i.mt, align 8, !tbaa !8  ; 2 uses
  %i.qn = icmp eq ptr %i.ql, %i.qm
  br i1 %i.qn, label %bb.di, label %bb.db

bb.db:                                            ; preds = %bb.da
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_111FinalizeOpsERNS_10OpRcPtrVecE(ptr %i.ql, ptr %i.qm)
          to label %bb.dc unwind label %bb.df

bb.dc:                                            ; preds = %bb.db
  %i.qo = load ptr, ptr %0, align 8, !tbaa !8
  %i.qp = getelementptr inbounds nuw [16 x i8], ptr %i.qo, i64 %indvars.iv.i ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.qr = invoke ptr @_ZN16OpenColorIO_v2_510OpRcPtrVec5eraseEN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_2OpEESt6vectorIS5_SaIS5_EEEESB_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %i.qp, ptr nonnull %i.qq)
          to label %bb.dd unwind label %bb.dg     ; 0 uses

bb.dd:                                            ; preds = %bb.dc
  %i.qs = load ptr, ptr %0, align 8, !tbaa !8
  %i.qt = getelementptr inbounds nuw [16 x i8], ptr %i.qs, i64 %indvars.iv.i
  %i.qu = load ptr, ptr %29, align 8, !tbaa !8
  %i.qv = load ptr, ptr %i.mt, align 8, !tbaa !8
  invoke void @_ZN16OpenColorIO_v2_510OpRcPtrVec6insertEN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_2OpEESt6vectorIS5_SaIS5_EEEESB_SB_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %i.qt, ptr %i.qu, ptr %i.qv)
          to label %bb.de unwind label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %i.qw = add nsw i32 %.040.i, 1
  br label %bb.di

bb.df:                                            ; preds = %bb.db, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i176
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dg:                                            ; preds = %bb.dc
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dh:                                            ; preds = %bb.dd
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.di:                                            ; preds = %bb.de, %bb.da
  %.1.i178 = phi i32 [ %.040.i, %bb.da ], [ %i.qw, %bb.de ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_510OpRcPtrVec8optimizeENS_17OptimizationFlagsE:bb.a
  %i.ri = load ptr, ptr %i.rh, align 8
  call void %i.ri(ptr noundef nonnull align 8 dereferenceable(16) %i.ra) #14, !inline_history !102
  %i.rj = load ptr, ptr %i.ra, align 8, !tbaa !19
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %i.rl = load ptr, ptr %i.rk, align 8
  call void %i.rl(ptr noundef nonnull align 8 dereferenceable(16) %i.ra) #14, !inline_history !102
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182

bb.dl:                                            ; preds = %bb.dj
  %i.rm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i22.i = icmp eq i8 %i.rm, 0
  br i1 %.not.i.i.i22.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.rn = add nsw i32 %i.re, -1
  store i32 %i.rn, ptr %i.rb, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i180

bb.dn:                                            ; preds = %bb.dl
  %i.ro = atomicrmw volatile add ptr %i.rb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i180

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i180: ; preds = %bb.dn, %bb.dm
  %.0.i.i.i.i.i181 = phi i32 [ %i.re, %bb.dm ], [ %i.ro, %bb.dn ]
  %i.rp = icmp eq i32 %.0.i.i.i.i.i181, 1
  br i1 %i.rp, label %bb.do, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182, !prof !25

bb.do:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i180
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ra) #14
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182: ; preds = %bb.do, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i180, %bb.dk, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #14
  %i.rq = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.rr = load ptr, ptr %0, align 8, !tbaa !68    ; 2 uses
  %i.rs = ptrtoint ptr %i.rq to i64
  %i.rt = ptrtoint ptr %i.rr to i64
  %i.ru = sub i64 %i.rs, %i.rt
  %sext.i = shl i64 %i.ru, 28
  %i.rv = ashr i64 %sext.i, 32
  %i.rw = icmp slt i64 %indvars.iv.next.i, %i.rv
  br i1 %i.rw, label %.lr.ph.i171, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110ReplaceOpsERNS_10OpRcPtrVecE.exit, !llvm.loop !103

bb.dp:                                            ; preds = %bb.dh, %bb.dg, %bb.df
  %.pn.i177 = phi { ptr, i32 } [ %i.qz, %bb.dh ], [ %i.qy, %bb.dg ], [ %i.qx, %bb.df ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #14
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %29) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #14
  br label %common.resume

_ZN16OpenColorIO_v2_512_GLOBAL__N_110ReplaceOpsERNS_10OpRcPtrVecE.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182, %bb.cq
  %.0.lcssa.i170 = phi i32 [ 0, %bb.cq ], [ %.1.i178, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182 ]
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %29) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #14
  br label %bb.dq

bb.dq:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_111RemoveNoOpsERNS_10OpRcPtrVecE.exit, %_ZN16OpenColorIO_v2_512_GLOBAL__N_110ReplaceOpsERNS_10OpRcPtrVecE.exit
  %i.rx = phi i32 [ %.0.lcssa.i170, %_ZN16OpenColorIO_v2_512_GLOBAL__N_110ReplaceOpsERNS_10OpRcPtrVecE.exit ], [ 0, %_ZN16OpenColorIO_v2_512_GLOBAL__N_111RemoveNoOpsERNS_10OpRcPtrVecE.exit ]
  %.pre893.a = load ptr, ptr %i.b, align 8, !tbaa !66 ; 3 uses
  %.pre895.a = load ptr, ptr %0, align 8, !tbaa !68 ; 3 uses
  %.not51.i = icmp eq ptr %.pre893.a, %.pre895.a
  %or.cond = select i1 %or.cond.not.i, i1 true, i1 %.not51.i
  br i1 %or.cond, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_118ReplaceIdentityOpsERNS_10OpRcPtrVecENS_17OptimizationFlagsE.exit, label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %bb.dq
  %i.ry = ptrtoint ptr %.pre893.a to i64
  %i.rz = ptrtoint ptr %.pre895.a to i64
  %i.sa = sub i64 %i.ry, %i.rz
  %i.sb = ashr exact i64 %i.sa, 4
  br label %bb.dr

bb.dr:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i195, %.lr.ph.i183
  %.02750.i = phi i64 [ 0, %.lr.ph.i183 ], [ %i.wo, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i195 ] ; 3 uses
  %.02849.i = phi i32 [ 0, %.lr.ph.i183 ], [ %.129.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i195 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #14
  %i.sc = load ptr, ptr %0, align 8, !tbaa !68
  %i.sd = getelementptr inbounds nuw [16 x i8], ptr %i.sc, i64 %.02750.i ; 2 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !11 ; 3 uses
  store ptr %i.se, ptr %26, align 8, !tbaa !69
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !16 ; 3 uses
  store ptr %i.sg, ptr %i.my, align 8, !tbaa !16
  %.not.i.i.i.i184 = icmp eq ptr %i.sg, null
  br i1 %.not.i.i.i.i184, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i186, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 8 ; 3 uses
  %i.si = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i185 = icmp eq i8 %i.si, 0
  br i1 %.not.i.i.i.i.i185, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.sj = load i32, ptr %i.sh, align 4, !tbaa !18
  %i.sk = add nsw i32 %i.sj, 1
  store i32 %i.sk, ptr %i.sh, align 4, !tbaa !18
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i186

bb.du:                                            ; preds = %bb.ds
  %i.sl = atomicrmw volatile add ptr %i.sh, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i209 = load ptr, ptr %26, align 8, !tbaa !69
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i186

_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i186: ; preds = %bb.du, %bb.dt, %bb.dr
  %i.sm = phi ptr [ %i.se, %bb.dr ], [ %i.se, %bb.dt ], [ %.pre.i209, %bb.du ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !77, !noalias !110 ; 3 uses
  store ptr %i.so, ptr %27, align 8, !tbaa !81, !alias.scope !110
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !16, !noalias !110 ; 3 uses
  store ptr %i.sq, ptr %i.mz, align 8, !tbaa !16, !alias.scope !110
  %.not.i.i.i.i.i.i187 = icmp eq ptr %i.sq, null
  br i1 %.not.i.i.i.i.i.i187, label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i189, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i186
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8 ; 3 uses
  %i.ss = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !110
  %.not.i.i.i.i.i.i.i188 = icmp eq i8 %i.ss, 0
  br i1 %.not.i.i.i.i.i.i.i188, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.st = load i32, ptr %i.sr, align 4, !tbaa !18, !noalias !110
  %i.su = add nsw i32 %i.st, 1
  store i32 %i.su, ptr %i.sr, align 4, !tbaa !18, !noalias !110
  br label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i189

bb.dx:                                            ; preds = %bb.dv
  %i.sv = atomicrmw volatile add ptr %i.sr, i32 1 acq_rel, align 4, !noalias !110 ; 0 uses
  %.pre52.i = load ptr, ptr %27, align 8, !tbaa !81
  br label %_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i189

_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i189:       ; preds = %bb.dx, %bb.dw, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i186
  %i.sw = phi ptr [ %i.so, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_52OpEEC2IS1_vEERKS_IT_E.exit.i186 ], [ %i.so, %bb.dw ], [ %.pre52.i, %bb.dx ] ; 2 uses
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !19
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 24
  %i.sz = load ptr, ptr %i.sy, align 8
  %i.ta = invoke noundef i32 %i.sz(ptr noundef nonnull align 8 dereferenceable(168) %i.sw)
          to label %bb.dy unwind label %bb.fb     ; 3 uses

bb.dy:                                            ; preds = %_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i189
  %i.tb = load ptr, ptr %i.mz, align 8, !tbaa !16 ; 8 uses
  %.not.i.i.i190 = icmp eq ptr %i.tb, null
  br i1 %.not.i.i.i190, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i193, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8 ; 4 uses
  %i.td = load atomic i64, ptr %i.tc acquire, align 8 ; 2 uses
  %i.te = icmp eq i64 %i.td, 4294967297
  %i.tf = trunc i64 %i.td to i32                  ; 2 uses
  br i1 %i.te, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  store i32 0, ptr %i.tc, align 8, !tbaa !21
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tb, i64 12
  store i32 0, ptr %i.tg, align 4, !tbaa !23
  %i.th = load ptr, ptr %i.tb, align 8, !tbaa !19
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.tj = load ptr, ptr %i.ti, align 8
  call void %i.tj(ptr noundef nonnull align 8 dereferenceable(16) %i.tb) #14, !inline_history !111
  %i.tk = load ptr, ptr %i.tb, align 8, !tbaa !19
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.tm = load ptr, ptr %i.tl, align 8
  call void %i.tm(ptr noundef nonnull align 8 dereferenceable(16) %i.tb) #14, !inline_history !111
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i193

bb.eb:                                            ; preds = %bb.dz
  %i.tn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i34.i = icmp eq i8 %i.tn, 0
  br i1 %.not.i.i.i34.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.to = add nsw i32 %i.tf, -1
  store i32 %i.to, ptr %i.tc, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191

bb.ed:                                            ; preds = %bb.eb
  %i.tp = atomicrmw volatile add ptr %i.tc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191: ; preds = %bb.ed, %bb.ec
  %.0.i.i.i.i.i192 = phi i32 [ %i.tf, %bb.ec ], [ %i.tp, %bb.ed ]
  %i.tq = icmp eq i32 %.0.i.i.i.i.i192, 1
  br i1 %i.tq, label %bb.ee, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i193, !prof !25

bb.ee:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tb) #14
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i193

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i193: ; preds = %bb.ee, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i191, %bb.ea, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  %.not.i194 = icmp eq i32 %i.ta, 13
  br i1 %.not.i194, label %bb.fg, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i193
  %i.tr = icmp eq i32 %i.ta, 4
  %or.cond3.i = and i1 %i.mw, %i.tr
  %i.ts = icmp ne i32 %i.ta, 4
  %or.cond5.i = and i1 %i.ts, %46
  %or.cond33.i = or i1 %or.cond3.i, %or.cond5.i
  br i1 %or.cond33.i, label %bb.eg, label %bb.fg

bb.eg:                                            ; preds = %bb.ef
  %i.tt = load ptr, ptr %26, align 8, !tbaa !69   ; 3 uses
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !19
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 48
  %i.tw = load ptr, ptr %i.tv, align 8
  %i.tx = invoke noundef zeroext i1 %i.tw(ptr noundef nonnull align 8 dereferenceable(24) %i.tt)
          to label %bb.eh unwind label %bb.fc

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.tx, label %bb.ei, label %bb.fg

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #14
  invoke void @_ZNK16OpenColorIO_v2_52Op22getIdentityReplacementEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %28, ptr noundef nonnull align 8 dereferenceable(24) %i.tt)
          to label %bb.ej unwind label %bb.fd

bb.ej:                                            ; preds = %bb.ei
  %i.ty = load ptr, ptr %28, align 8, !tbaa !11   ; 2 uses
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !19
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 104
  %i.ub = load ptr, ptr %i.ua, align 8
  invoke void %i.ub(ptr noundef nonnull align 8 dereferenceable(24) %i.ty)
          to label %bb.ek unwind label %bb.fe

bb.ek:                                            ; preds = %bb.ej
  %i.uc = load ptr, ptr %0, align 8, !tbaa !68
  %i.ud = getelementptr inbounds nuw [16 x i8], ptr %i.uc, i64 %.02750.i ; 2 uses
  %i.ue = load ptr, ptr %28, align 8, !tbaa !11
  store ptr %i.ue, ptr %i.ud, align 8, !tbaa !11
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 8 ; 3 uses
  %i.ug = load ptr, ptr %i.na, align 8, !tbaa !16 ; 5 uses
  %i.uh = load ptr, ptr %i.uf, align 8, !tbaa !16 ; 3 uses
  %.not.i.i.i35.i = icmp eq ptr %i.ug, %i.uh
  br i1 %.not.i.i.i35.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i206, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %.not7.i.i.i.i198 = icmp eq ptr %i.ug, null
  br i1 %.not7.i.i.i.i198, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i199, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 8 ; 3 uses
  %i.uj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i36.i = icmp eq i8 %i.uj, 0
  br i1 %.not.i.i.i.i36.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.uk = load i32, ptr %i.ui, align 4, !tbaa !18
  %i.ul = add nsw i32 %i.uk, 1
  store i32 %i.ul, ptr %i.ui, align 4, !tbaa !18
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i199

bb.eo:                                            ; preds = %bb.em
  %i.um = atomicrmw volatile add ptr %i.ui, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i208 = load ptr, ptr %i.uf, align 8, !tbaa !16
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i199

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i199: ; preds = %bb.eo, %bb.en, %bb.el
  %i.un = phi ptr [ %i.uh, %bb.el ], [ %i.uh, %bb.en ], [ %.pr.pre.i.i.i.i208, %bb.eo ] ; 8 uses
  %.not8.i.i.i.i200 = icmp eq ptr %i.un, null
  br i1 %.not8.i.i.i.i200, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i204, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i199
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8 ; 4 uses
  %i.up = load atomic i64, ptr %i.uo acquire, align 8 ; 2 uses
  %i.uq = icmp eq i64 %i.up, 4294967297
  %i.ur = trunc i64 %i.up to i32                  ; 2 uses
  br i1 %i.uq, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  store i32 0, ptr %i.uo, align 8, !tbaa !21
  %i.us = getelementptr inbounds nuw i8, ptr %i.un, i64 12
  store i32 0, ptr %i.us, align 4, !tbaa !23
  %i.ut = load ptr, ptr %i.un, align 8, !tbaa !19
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.uv = load ptr, ptr %i.uu, align 8
  call void %i.uv(ptr noundef nonnull align 8 dereferenceable(16) %i.un) #14, !inline_history !112
  %i.uw = load ptr, ptr %i.un, align 8, !tbaa !19
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 24
  %i.uy = load ptr, ptr %i.ux, align 8
  call void %i.uy(ptr noundef nonnull align 8 dereferenceable(16) %i.un) #14, !inline_history !112
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i204

bb.er:                                            ; preds = %bb.ep
  %i.uz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i9.i.i.i.i201 = icmp eq i8 %i.uz, 0
  br i1 %.not.i9.i.i.i.i201, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.va = add nsw i32 %i.ur, -1
  store i32 %i.va, ptr %i.uo, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i202

bb.et:                                            ; preds = %bb.er
  %i.vb = atomicrmw volatile add ptr %i.uo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i202

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i202: ; preds = %bb.et, %bb.es
  %.0.i.i.i.i.i.i203 = phi i32 [ %i.ur, %bb.es ], [ %i.vb, %bb.et ]
  %i.vc = icmp eq i32 %.0.i.i.i.i.i.i203, 1
  br i1 %i.vc, label %bb.eu, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i204, !prof !25

bb.eu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i202
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.un) #14
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i204

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i204: ; preds = %bb.eu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i202, %bb.eq, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i199
  store ptr %i.ug, ptr %i.uf, align 8, !tbaa !16
  %.pr.i205 = load ptr, ptr %i.na, align 8, !tbaa !16
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i206

_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i206: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i204, %bb.ek
  %i.vd = phi ptr [ %i.ug, %bb.ek ], [ %.pr.i205, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i204 ] ; 8 uses
  %i.ve = add nsw i32 %.02849.i, 1
  %.not.i.i37.i = icmp eq ptr %i.vd, null
  br i1 %.not.i.i37.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i207, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i206
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vd, i64 8 ; 4 uses
  %i.vg = load atomic i64, ptr %i.vf acquire, align 8 ; 2 uses
  %i.vh = icmp eq i64 %i.vg, 4294967297
  %i.vi = trunc i64 %i.vg to i32                  ; 2 uses
  br i1 %i.vh, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 0, ptr %i.vf, align 8, !tbaa !21
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vd, i64 12
  store i32 0, ptr %i.vj, align 4, !tbaa !23
  %i.vk = load ptr, ptr %i.vd, align 8, !tbaa !19
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 16
  %i.vm = load ptr, ptr %i.vl, align 8
  call void %i.vm(ptr noundef nonnull align 8 dereferenceable(16) %i.vd) #14, !inline_history !113
  %i.vn = load ptr, ptr %i.vd, align 8, !tbaa !19
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 24
  %i.vp = load ptr, ptr %i.vo, align 8
  call void %i.vp(ptr noundef nonnull align 8 dereferenceable(16) %i.vd) #14, !inline_history !113
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i207

bb.ex:                                            ; preds = %bb.ev
  %i.vq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i38.i = icmp eq i8 %i.vq, 0
  br i1 %.not.i.i.i38.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.vr = add nsw i32 %i.vi, -1
  store i32 %i.vr, ptr %i.vf, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39.i

bb.ez:                                            ; preds = %bb.ex
  %i.vs = atomicrmw volatile add ptr %i.vf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39.i: ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i40.i = phi i32 [ %i.vi, %bb.ey ], [ %i.vs, %bb.ez ]
  %i.vt = icmp eq i32 %.0.i.i.i.i40.i, 1
  br i1 %i.vt, label %bb.fa, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i207, !prof !25

bb.fa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vd) #14
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i207

_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i207: ; preds = %bb.fa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39.i, %bb.ew, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  br label %bb.fg

bb.fb:                                            ; preds = %_ZNK16OpenColorIO_v2_52Op4dataEv.exit.i189
  %i.vu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  br label %bb.fn

bb.fc:                                            ; preds = %bb.eg
  %i.vv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fd:                                            ; preds = %bb.ei
  %i.vw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.fe:                                            ; preds = %bb.ej
  %i.vx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #14
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.pn.i197 = phi { ptr, i32 } [ %i.vx, %bb.fe ], [ %i.vw, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  br label %bb.fn

bb.fg:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i207, %bb.eh, %bb.ef, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i193
  %.129.i = phi i32 [ %i.ve, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i207 ], [ %.02849.i, %bb.eh ], [ %.02849.i, %bb.ef ], [ %.02849.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56OpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i193 ] ; 2 uses
  %i.vy = load ptr, ptr %i.my, align 8, !tbaa !16 ; 8 uses
  %.not.i.i41.i = icmp eq ptr %i.vy, null
  br i1 %.not.i.i41.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i195, label %bb.fh
end_hunk_1
