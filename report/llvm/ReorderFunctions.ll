Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ReorderFunctions?download=true
inline.NumInlined: 2993
inline.NumDeleted: 1516
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm4bolt16ReorderFunctions10printStatsERNS0_13BinaryContextERKSt6vectorINS0_7ClusterESaIS5_EERKS4_ImSaImEE:bb.a
  %.0.i.i99 = phi ptr [ %i.jr, %bb.ac ], [ %.0.i.i96, %bb.ad ] ; 5 uses
  %i.jv = load ptr, ptr %i.ak, align 8, !tbaa !67
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.dr
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @_ZNK4llvm4bolt14BinaryFunction12getPrintNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1360) %i.jx)
  %i.jy = load ptr, ptr %11, align 8, !tbaa !45
  %i.jz = load i64, ptr %i.at, align 8, !tbaa !492
  %i.ka = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i99, ptr noundef %i.jy, i64 noundef %i.jz) #25 ; 0 uses
  %i.kb = load ptr, ptr %11, align 8, !tbaa !45   ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.au
  br i1 %i.kc, label %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit100
  %i.kd = load i64, ptr %i.au, align 8, !tbaa !46
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.ke) #26
  br label %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit103

_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit103: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.kf = getelementptr inbounds nuw i8, ptr %.0.i.i99, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !452
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i.i99, i64 32 ; 3 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !453 ; 2 uses
  %i.kj = icmp eq ptr %i.kg, %i.ki
  br i1 %i.kj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit103
  %i.kk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i99, ptr noundef nonnull @.str.50, i64 noundef 1) #25 ; 2 uses
  %.phi.trans.insert273 = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %.pre274 = load ptr, ptr %.phi.trans.insert273, align 8, !tbaa !453
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit106

bb.af:                                            ; preds = %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit103
  store i8 10, ptr %i.ki, align 1
  %i.kl = load ptr, ptr %i.kh, align 8, !tbaa !453
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 1 ; 2 uses
  store ptr %i.km, ptr %i.kh, align 8, !tbaa !453
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit106

_ZN4llvm11raw_ostreamlsEPKc.exit106:              ; preds = %bb.ae, %bb.af
  %i.kn = phi ptr [ %.pre274, %bb.ae ], [ %i.km, %bb.af ] ; 2 uses
  %.0.i.i105 = phi ptr [ %i.kk, %bb.ae ], [ %.0.i.i99, %bb.af ] ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.i.i105, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !452
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = ptrtoint ptr %i.kn to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = icmp ult i64 %i.ks, 18
  br i1 %i.kt, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit106
  %i.ku = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i105, ptr noundef nonnull @.str.51, i64 noundef 18) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit109

bb.ah:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit106
  %i.kv = getelementptr inbounds nuw i8, ptr %.0.i.i105, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.kn, ptr noundef nonnull align 1 dereferenceable(18) @.str.51, i64 18, i1 false)
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !453
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 18
  store ptr %i.kx, ptr %i.kv, align 8, !tbaa !453
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit109

_ZN4llvm11raw_ostreamlsEPKc.exit109:              ; preds = %bb.ag, %bb.ah
  %.0.i.i108 = phi ptr [ %i.ku, %bb.ag ], [ %.0.i.i105, %bb.ah ] ; 5 uses
  %i.ky = load ptr, ptr %i.ak, align 8, !tbaa !67
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.gl
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @_ZNK4llvm4bolt14BinaryFunction12getPrintNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(1360) %i.la)
  %i.lb = load ptr, ptr %10, align 8, !tbaa !45
  %i.lc = load i64, ptr %i.av, align 8, !tbaa !492
  %i.ld = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i108, ptr noundef %i.lb, i64 noundef %i.lc) #25 ; 0 uses
  %i.le = load ptr, ptr %10, align 8, !tbaa !45   ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.aw
  br i1 %i.lf, label %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i110: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit109
  %i.lg = load i64, ptr %i.aw, align 8, !tbaa !46
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lh) #26
  br label %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit112

_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit112: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.li = getelementptr inbounds nuw i8, ptr %.0.i.i108, i64 24
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !452
  %i.lk = getelementptr inbounds nuw i8, ptr %.0.i.i108, i64 32 ; 3 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !453 ; 2 uses
  %i.lm = icmp eq ptr %i.lj, %i.ll
  br i1 %i.lm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit112
  %i.ln = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i108, ptr noundef nonnull @.str.50, i64 noundef 1) #25 ; 2 uses
  %.phi.trans.insert275 = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  %.pre276 = load ptr, ptr %.phi.trans.insert275, align 8, !tbaa !453
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit115

bb.aj:                                            ; preds = %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit112
  store i8 10, ptr %i.ll, align 1
  %i.lo = load ptr, ptr %i.lk, align 8, !tbaa !453
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 1 ; 2 uses
  store ptr %i.lp, ptr %i.lk, align 8, !tbaa !453
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit115

_ZN4llvm11raw_ostreamlsEPKc.exit115:              ; preds = %bb.ai, %bb.aj
  %i.lq = phi ptr [ %.pre276, %bb.ai ], [ %i.lp, %bb.aj ] ; 2 uses
  %.0.i.i114 = phi ptr [ %i.ln, %bb.ai ], [ %.0.i.i108, %bb.aj ] ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.0.i.i114, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !452
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = ptrtoint ptr %i.lq to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %i.lw = icmp ult i64 %i.lv, 22
  br i1 %i.lw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit115
  %i.lx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i114, ptr noundef nonnull @.str.52, i64 noundef 22) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit118

bb.al:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit115
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i.i114, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.lq, ptr noundef nonnull align 1 dereferenceable(22) @.str.52, i64 22, i1 false)
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !453
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 22
  store ptr %i.ma, ptr %i.ly, align 8, !tbaa !453
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit118

_ZN4llvm11raw_ostreamlsEPKc.exit118:              ; preds = %bb.ak, %bb.al
  %.0.i.i117 = phi ptr [ %i.lx, %bb.ak ], [ %.0.i.i114, %bb.al ]
  %i.mb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEd(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i117, double noundef %i.ii) #25 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !452
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 32 ; 3 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !453 ; 2 uses
  %i.mg = icmp eq ptr %i.md, %i.mf
  br i1 %i.mg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit118
  %i.mh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.mb, ptr noundef nonnull @.str.50, i64 noundef 1) #25 ; 2 uses
  %.phi.trans.insert277 = getelementptr inbounds nuw i8, ptr %i.mh, i64 32
  %.pre278 = load ptr, ptr %.phi.trans.insert277, align 8, !tbaa !453
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit121

bb.an:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit118
  store i8 10, ptr %i.mf, align 1
  %i.mi = load ptr, ptr %i.me, align 8, !tbaa !453
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 1 ; 2 uses
  store ptr %i.mj, ptr %i.me, align 8, !tbaa !453
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit121

_ZN4llvm11raw_ostreamlsEPKc.exit121:              ; preds = %bb.am, %bb.an
  %i.mk = phi ptr [ %.pre278, %bb.am ], [ %i.mj, %bb.an ] ; 2 uses
  %.0.i.i120 = phi ptr [ %i.mh, %bb.am ], [ %i.mb, %bb.an ] ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.0.i.i120, i64 24
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !452
  %i.mn = ptrtoint ptr %i.mm to i64
  %i.mo = ptrtoint ptr %i.mk to i64
  %i.mp = sub i64 %i.mn, %i.mo
  %i.mq = icmp ult i64 %i.mp, 25
  br i1 %i.mq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit121
  %i.mr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i120, ptr noundef nonnull @.str.53, i64 noundef 25) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit124

bb.ap:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit121
  %i.ms = getelementptr inbounds nuw i8, ptr %.0.i.i120, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.mk, ptr noundef nonnull align 1 dereferenceable(25) @.str.53, i64 25, i1 false)
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !453
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 25
  store ptr %i.mu, ptr %i.ms, align 8, !tbaa !453
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit124

_ZN4llvm11raw_ostreamlsEPKc.exit124:              ; preds = %bb.ao, %bb.ap
  %.0.i.i123 = phi ptr [ %i.mr, %bb.ao ], [ %.0.i.i120, %bb.ap ]
  %i.mv = load double, ptr %i.ic, align 8, !tbaa !505
  %i.mw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEd(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i123, double noundef %i.mv) #25 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !452
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 32 ; 3 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !453 ; 2 uses
  %i.nb = icmp eq ptr %i.my, %i.na
  br i1 %i.nb, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit124
  %i.nc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.mw, ptr noundef nonnull @.str.50, i64 noundef 1) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit127

bb.ar:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit124
  store i8 10, ptr %i.na, align 1
  %i.nd = load ptr, ptr %i.mz, align 8, !tbaa !453
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 1
  store ptr %i.ne, ptr %i.mz, align 8, !tbaa !453
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit127

_ZN4llvm11raw_ostreamlsEPKc.exit127:              ; preds = %bb.ar, %bb.aq, %_ZN4llvm4bolt9CallGraph7findArcEmm.exit
  %i.nf = uitofp i64 %.0226 to double
  %i.ng = fadd double %i.ii, %i.nf
  %i.nh = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.ni = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nj = fadd <2 x double> %i.gk, %i.ni
  %i.nk = fcmp olt double %i.ig, 4.096000e+03
  %i.nl = insertelement <2 x i1> poison, i1 %i.ij, i64 0
  %i.nm = insertelement <2 x i1> %i.nl, i1 %i.nk, i64 1
  %i.nn = select <2 x i1> %i.nm, <2 x double> %i.nj, <2 x double> %i.gk ; 2 uses
  %i.no = fcmp olt double %i.ig, f0x4140000000000000
  %i.np = fadd double %.2210222, %i.ii
  %.3211 = select i1 %i.no, double %i.np, double %.2210222 ; 2 uses
  %i.nq = load double, ptr %i.ih, align 8, !tbaa !506 ; 2 uses
  %i.nr = uitofp i64 %.070225 to double
  %29 = fptoui double %i.ng to i64                ; 2 uses
  %i.ns = call double @llvm.fmuladd.f64(double %i.nq, double %i.ig, double %i.nr)
  %i.nt = fptoui double %i.ns to i64              ; 2 uses
  br i1 %i.c, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit127
  %i.nu = load ptr, ptr %i.ae, align 8, !tbaa !447, !nonnull !39, !align !448
  %i.nv = load i64, ptr %i.hs, align 8, !tbaa !494 ; 2 uses
  %i.nw = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.nv
  %i.ny = load double, ptr %i.ic, align 8, !tbaa !505
  %i.nz = load i64, ptr %i.ht, align 8, !tbaa !495 ; 2 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.nz
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  store ptr @.str.54, ptr %19, align 8, !tbaa !520, !alias.scope !668
  store double %i.ig, ptr %i.ax, align 8, !tbaa !669, !alias.scope !668
  store double %i.nq, ptr %i.ay, align 8, !tbaa !670, !alias.scope !668
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !55, !noalias !668
  store i64 %i.ob, ptr %i.az, align 8, !tbaa !671, !alias.scope !668
  store i64 %i.nz, ptr %i.ba, align 8, !tbaa !672, !alias.scope !668
  store double %i.ny, ptr %i.bb, align 8, !tbaa !673, !alias.scope !668
  %i.oc = load i64, ptr %i.nx, align 8, !tbaa !55, !noalias !668
  store i64 %i.oc, ptr %i.bc, align 8, !tbaa !654, !alias.scope !668
  store i64 %i.nv, ptr %i.bd, align 8, !tbaa !655, !alias.scope !668
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %19, ptr %9, align 8, !tbaa !674
  %i.od = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.nu, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmmdmmddEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.be) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.at

bb.at:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit127, %bb.as, %.lr.ph
  %.4212 = phi double [ %.2210222, %.lr.ph ], [ %.3211, %bb.as ], [ %.3211, %_ZN4llvm11raw_ostreamlsEPKc.exit127 ] ; 2 uses
  %.171 = phi i64 [ %.070225, %.lr.ph ], [ %i.nt, %bb.as ], [ %i.nt, %_ZN4llvm11raw_ostreamlsEPKc.exit127 ] ; 2 uses
  %.1 = phi i64 [ %.0226, %.lr.ph ], [ %29, %bb.as ], [ %29, %_ZN4llvm11raw_ostreamlsEPKc.exit127 ] ; 2 uses
  %i.oe = phi <2 x double> [ %i.gk, %.lr.ph ], [ %i.nn, %bb.as ], [ %i.nn, %_ZN4llvm11raw_ostreamlsEPKc.exit127 ] ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0144.0221, i64 8 ; 2 uses
  %.not218 = icmp eq ptr %i.of, %i.fz
  br i1 %.not218, label %._crit_edge.loopexit, label %.lr.ph

bb.au:                                            ; preds = %._crit_edge
  %i.og = load ptr, ptr %i.ae, align 8, !tbaa !447, !nonnull !39, !align !448 ; 2 uses
  %.not75 = icmp eq i64 %.0.lcssa, 0
  br i1 %.not75, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.oh = udiv i64 %.070.lcssa, %.0.lcssa
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.oi = phi i64 [ %i.oh, %bb.av ], [ 0, %bb.au ]
  store ptr @.str.55, ptr %20, align 8, !tbaa !463, !alias.scope !675
  store i64 %i.oi, ptr %i.bf, align 8, !tbaa !654, !alias.scope !675
  store i64 %i.gj, ptr %i.bg, align 8, !tbaa !655, !alias.scope !675
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %20, ptr %8, align 8, !tbaa !656
  %i.oj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.og, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmmEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.bh) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.ok = load ptr, ptr %i.ak, align 8, !tbaa !67
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %i.dr
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !69
  call void @_ZNK4llvm4bolt14BinaryFunction12getPrintNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(1360) %i.om)
  %i.on = load ptr, ptr %21, align 8, !tbaa !45
  %i.oo = load i64, ptr %i.bi, align 8, !tbaa !492
  %i.op = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.og, ptr noundef %i.on, i64 noundef %i.oo) #25 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 32 ; 2 uses
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !453 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !452
  %.not.i = icmp ult ptr %i.or, %i.ot
  br i1 %.not.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ou = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.op, i8 noundef zeroext 10) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.ay:                                            ; preds = %bb.aw
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 1
  store ptr %i.ov, ptr %i.oq, align 8, !tbaa !453
  store i8 10, ptr %i.or, align 1, !tbaa !46
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.ax, %bb.ay
  %i.ow = load ptr, ptr %21, align 8, !tbaa !45   ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.bj
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.oy = load i64, ptr %i.bj, align 8, !tbaa !46
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.oz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  %i.pa = lshr i64 %i.gj, 21                      ; 3 uses
  %.not76 = icmp eq i64 %i.pa, %.1188239
  br i1 %.not76, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.pb = load ptr, ptr %i.ae, align 8, !tbaa !447, !nonnull !39, !align !448
  store ptr @.str.56, ptr %22, align 8, !tbaa !525, !alias.scope !676
  store i64 %i.pa, ptr %i.bk, align 8, !tbaa !655, !alias.scope !676
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %22, ptr %7, align 8, !tbaa !677
  %i.pc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.pb, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.bl) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph242
  %.5213 = phi double [ %.1209233, %.lr.ph242 ], [ %.2210.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.2210.lcssa, %bb.az ], [ %.2210.lcssa, %._crit_edge ] ; 2 uses
  %.2192 = phi i64 [ %.1191238, %.lr.ph242 ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dw, %bb.az ], [ %i.dw, %._crit_edge ] ; 2 uses
  %.2189 = phi i64 [ %.1188239, %.lr.ph242 ], [ %.1188239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.pa, %bb.az ], [ %.1188239, %._crit_edge ] ; 2 uses
  %.2 = phi i64 [ %.1186240, %.lr.ph242 ], [ %i.gj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gj, %bb.az ], [ %i.gj, %._crit_edge ] ; 2 uses
  %i.pd = phi <2 x double> [ %i.dp, %.lr.ph242 ], [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gb, %bb.az ], [ %i.gb, %._crit_edge ] ; 2 uses
  %i.pe = phi <2 x double> [ %i.dq, %.lr.ph242 ], [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gf, %bb.az ], [ %i.gf, %._crit_edge ] ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0148.0232, i64 8 ; 2 uses
  %.not217 = icmp eq ptr %i.pf, %i.dl
  br i1 %.not217, label %._crit_edge243, label %.lr.ph242

bb.bb:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit82
  %i.pg = load ptr, ptr %i.bo, align 8, !tbaa !447, !nonnull !39, !align !448 ; 3 uses
  %i.ph = fmul <2 x double> %i.bm, splat (double 1.000000e+02)
  store ptr @.str.61, ptr %26, align 8, !tbaa !531, !alias.scope !678
  %i.pi = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.pj = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.pk = extractelement <2 x double> %i.bm, i64 0
  store double %i.pk, ptr %i.pj, align 8, !tbaa !658, !alias.scope !678
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %26, ptr %6, align 8, !tbaa !679
  %i.pl = ptrtoint ptr %6 to i64
  %i.pm = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pn = fdiv <2 x double> %i.ph, %i.pm          ; 2 uses
  %i.po = extractelement <2 x double> %i.pn, i64 0
  store double %i.po, ptr %i.pi, align 8, !tbaa !680, !alias.scope !678
  %i.pp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.pg, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJddEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.pl) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store ptr @.str.62, ptr %27, align 8, !tbaa !531, !alias.scope !681
  %i.pq = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.pr = extractelement <2 x double> %i.pn, i64 1
  store double %i.pr, ptr %i.pq, align 8, !tbaa !680, !alias.scope !681
  %i.ps = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.pt = extractelement <2 x double> %i.bm, i64 1
  store double %i.pt, ptr %i.ps, align 8, !tbaa !658, !alias.scope !681
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %27, ptr %5, align 8, !tbaa !679
  %i.pu = ptrtoint ptr %5 to i64
  %i.pv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.pg, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJddEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.pu) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.pw = fmul double %.0208.lcssa, 1.000000e+02
  %i.px = fdiv double %i.pw, %i.cl
  store ptr @.str.63, ptr %28, align 8, !tbaa !531, !alias.scope !682
  %i.py = getelementptr inbounds nuw i8, ptr %28, i64 8
  store double %i.px, ptr %i.py, align 8, !tbaa !680, !alias.scope !682
  %i.pz = getelementptr inbounds nuw i8, ptr %28, i64 16
  store double %.0208.lcssa, ptr %i.pz, align 8, !tbaa !658, !alias.scope !682
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %28, ptr %4, align 8, !tbaa !679
  %i.qa = ptrtoint ptr %4 to i64
  %i.qb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.pg, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJddEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.qa) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit82, %bb.bb, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEd(ptr noundef nonnull align 8 dereferenceable(48), double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt14BinaryFunction12getPrintNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1360) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !533
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !533
  %i.i = zext i32 %i.h to i64
  %i.j = add nuw nsw i64 %i.i, %i.f               ; 6 uses
  %.not = icmp eq i64 %i.j, 1
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !534  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 4
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

end_hunk_0
