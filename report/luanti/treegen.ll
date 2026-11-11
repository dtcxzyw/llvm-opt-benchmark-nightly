Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/treegen?download=true
inline.NumInlined: 1239
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7treegen10make_ltreeER8MMVManipN4core8vector3dIsEERKNS_7TreeDefE:bb.a
  %i.ef = add i32 %i.ee, 12345                    ; 2 uses
  store i32 %i.ef, ptr %3, align 4, !tbaa !79
  %i.eg = sdiv i32 %i.ef, 65536
  %i.eh = trunc nsw i32 %i.eg to i16
  %.lhs.trunc.i331 = and i16 %i.eh, 32767
  %i.ei = urem i16 %.lhs.trunc.i331, 10
  %i.ej = icmp samesign ult i16 %i.ei, 7
  br i1 %i.ej, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.w:                                             ; preds = %bb.v
  %i.ek = load i64, ptr %i.bw, align 8, !tbaa !19 ; 2 uses
  %i.el = load i64, ptr %i.bt, align 8, !tbaa !19
  %i.em = sub i64 4611686018427387903, %i.el
  %i.en = icmp ult i64 %i.em, %i.ek
  br i1 %i.en, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke

bb.x:                                             ; preds = %bb.m
  %i.eo = load i32, ptr %3, align 4, !tbaa !79
  %i.ep = mul i32 %i.eo, 1103515245
  %i.eq = add i32 %i.ep, 12345                    ; 2 uses
  store i32 %i.eq, ptr %3, align 4, !tbaa !79
  %i.er = sdiv i32 %i.eq, 65536
  %i.es = trunc nsw i32 %i.er to i16
  %.lhs.trunc.i337 = and i16 %i.es, 32767
  %i.et = urem i16 %.lhs.trunc.i337, 10
  %i.eu = icmp samesign ult i16 %i.et, 6
  br i1 %i.eu, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.y:                                             ; preds = %bb.x
  %i.ev = load i64, ptr %i.bu, align 8, !tbaa !19 ; 2 uses
  %i.ew = load i64, ptr %i.bt, align 8, !tbaa !19
  %i.ex = sub i64 4611686018427387903, %i.ew
  %i.ey = icmp ult i64 %i.ex, %i.ev
  br i1 %i.ey, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke

.invoke:                                          ; preds = %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.p, %bb.o, %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
          to label %.cont unwind label %.loopexit.split-lp1503.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.z:                                             ; preds = %bb.m
  %i.ez = load i64, ptr %i.bt, align 8, !tbaa !19 ; 4 uses
  %i.fa = add i64 %i.ez, 1                        ; 3 uses
  %i.fb = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.bs
  br i1 %i.fc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.z
  %i.fd = icmp ult i64 %i.ez, 16
  call void @llvm.assume(i1 %i.fd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.z
  %i.fe = load i64, ptr %i.bs, align 8, !tbaa !20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ff = phi i64 [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.fg = icmp ugt i64 %i.fa, %i.ff
  br i1 %i.fg, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.ez, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc343 unwind label %.loopexit.split-lp1503.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc343:                                        ; preds = %bb.aa
  %.pre.i.i = load ptr, ptr %9, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc343
  %i.fh = phi ptr [ %.pre.i.i, %.noexc343 ], [ %i.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ez
  store i8 %i.cn, ptr %i.fi, align 1, !tbaa !20
  store i64 %i.fa, ptr %i.bt, align 8, !tbaa !19
  %i.fj = load ptr, ptr %9, align 8, !tbaa !21
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fa
  store i8 0, ptr %i.fk, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.x, %bb.v, %bb.t, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fl = load i64, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.fm = shl i64 %i.fl, 48
  %i.fn = ashr exact i64 %i.fm, 48
  %i.fo = icmp slt i64 %indvars.iv.next, %i.fn
  br i1 %i.fo, label %.lr.ph, label %._crit_edge, !llvm.loop !158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %._crit_edge
  %i.fp = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.bs
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.fr = load i64, ptr %i.bs, align 8, !tbaa !20
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %indvars.iv.next1606 = add nuw nsw i32 %indvars.iv1605, 1 ; 2 uses
  %i.ft = icmp samesign ugt i32 %i.bq, %indvars.iv.next1606
  br i1 %i.ft, label %bb.k, label %._crit_edge1562, !llvm.loop !159

.loopexit.split-lp1503.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke, %._crit_edge, %.invoke, %bb.l
  %lpad.loopexit.split-lp1753 = landingpad { ptr, i32 }
          cleanup
  %i.fu = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.bs
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344: ; preds = %.loopexit.split-lp1503.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fw = load i64, ptr %i.bs, align 8, !tbaa !20
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346: ; preds = %.loopexit.split-lp1503.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.loopexit.split-lp

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %._crit_edge1562
  %i.fy = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 1
  %i.ga = xor i32 %i.fz, 1651863396
  %i.gb = getelementptr i8, ptr %i.fy, i64 4
  %i.gc = load i16, ptr %i.gb, align 1
  %i.gd = zext i16 %i.gc to i32
  %i.ge = xor i32 %i.gd, 25964
  %i.gf = or i32 %i.ga, %i.ge
  %i.gg = icmp ne i32 %i.gf, 0
  %i.gh = zext i1 %i.gg to i32
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.gj = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.gk = fadd nsz <2 x float> %i.gj, <float 1.000000e+00, float -1.000000e+00>
  %i.gl = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.gk, float %i.gl, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.gm = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.gn = fadd <2 x float> %i.gm, <float -0.000000e+00, float -1.000000e+00>
  %i.go = load float, ptr %i.av, align 8, !tbaa !175
  %i.gp = fadd nsz float %i.go, 1.000000e+00
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.gn, float %i.gp, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.gq = load float, ptr %5, align 8, !tbaa !176
  %i.gr = fadd nsz float %i.gq, 1.000000e+00
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481.sink.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348: ; preds = %._crit_edge1562
  %i.gs = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 1
  %i.gu = xor i32 %i.gt, 1936683619
  %i.gv = getelementptr i8, ptr %i.gs, i64 3
  %i.gw = load i32, ptr %i.gv, align 1
  %i.gx = xor i32 %i.gw, 1684370291
  %i.gy = or i32 %i.gu, %i.gx
  %i.gz = icmp ne i32 %i.gy, 0
  %i.ha = zext i1 %i.gz to i32
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348
  %i.hc = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.hd = fadd nsz <2 x float> %i.hc, <float 1.000000e+00, float -1.000000e+00>
  %i.he = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.hd, float %i.he, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.hf = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.hg = fadd nsz <2 x float> %i.hf, splat (float -1.000000e+00)
  %i.hh = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.hg, float %i.hh, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.hi = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.hj = fadd <2 x float> %i.hi, <float -0.000000e+00, float -1.000000e+00>
  %i.hk = load float, ptr %i.av, align 8, !tbaa !175
  %i.hl = fadd nsz float %i.hk, 1.000000e+00
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.hj, float %i.hl, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.hm = load float, ptr %5, align 8, !tbaa !176
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481.sink.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481.sink.split: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.sink1713 = phi float [ 1.000000e+00, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ -1.000000e+00, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread ]
  %.sink1711 = phi float [ %i.gr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.hm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread ]
  %i.hn = load float, ptr %i.au, align 4, !tbaa !177
  %i.ho = fadd nsz float %i.hn, -1.000000e+00
  %i.hp = load float, ptr %i.av, align 8, !tbaa !175
  %i.hq = fadd nsz float %i.hp, %.sink1713
  %.sroa.01099.0.vec.insert = insertelement <2 x float> poison, float %.sink1711, i64 0
  %.sroa.01099.4.vec.insert = insertelement <2 x float> %.sroa.01099.0.vec.insert, float %i.ho, i64 1
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %.sroa.01099.4.vec.insert, float %i.hq, ptr noundef nonnull align 8 dereferenceable(321) %2)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481.sink.split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %._crit_edge1562, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348
  %i.hr = load i64, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.hs = trunc i64 %i.hr to i16
  %.not1566 = icmp sgt i16 %i.hs, 0
  br i1 %.not1566, label %.lr.ph1569, label %.critedge

.lr.ph1569:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481
  %.sroa.511464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 17 uses
  %.sroa.591472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 5 uses
  %10 = fadd nsz float %i.ak, %i.am
  %i.ht = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.hu = insertelement <2 x float> %i.ht, float %10, i64 1
  %11 = call nsz { <2 x float>, <2 x float> } @llvm.sincos.v2f32(<2 x float> %i.hu) ; 2 uses
  %12 = extractvalue { <2 x float>, <2 x float> } %11, 0 ; 5 uses
  %13 = extractvalue { <2 x float>, <2 x float> } %11, 1 ; 5 uses
  %14 = fsub nsz <2 x float> splat (float 1.000000e+00), %13 ; 6 uses
  %foldExtExtBinop = fadd nsz <2 x float> %13, %14
  %15 = fmul nsz <2 x float> %14, zeroinitializer ; 8 uses
  %16 = extractelement <2 x float> %15, i64 0
  %17 = shufflevector <2 x float> %12, <2 x float> %15, <2 x i32> <i32 0, i32 2>
  %18 = fmul <2 x float> %17, <float 0.000000e+00, float 1.000000e+00> ; 5 uses
  %i.hv = extractelement <2 x float> %18, i64 0
  %19 = fneg nsz float %i.hv                      ; 2 uses
  %i.hw = insertelement <2 x float> poison, float %19, i64 0
  %20 = shufflevector <2 x float> %i.hw, <2 x float> %18, <2 x i32> <i32 0, i32 2> ; 2 uses
  %21 = fsub nsz float %19, %16
  %22 = fneg nsz <2 x float> %12
  %i.hx = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = shufflevector <2 x float> %13, <2 x float> %12, <2 x i32> <i32 2, i32 0>
  %24 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> zeroinitializer, <2 x float> %23) ; 2 uses
  %25 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> zeroinitializer, <2 x float> %20) ; 2 uses
  %27 = shufflevector <2 x float> %15, <2 x float> %18, <2 x i32> <i32 0, i32 2>
  %28 = fsub nsz <2 x float> %18, %27             ; 2 uses
  %foldExtExtBinop1740 = fadd nsz <2 x float> %18, %15
  %29 = fneg nsz <2 x float> %14                  ; 2 uses
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  %31 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> zeroinitializer, <2 x float> %20) ; 2 uses
  %32 = extractelement <2 x float> %12, i64 1
  %i.hy = fmul nsz float %32, 0.000000e+00        ; 5 uses
  %33 = extractelement <2 x float> %15, i64 1     ; 4 uses
  %i.hz = fsub nsz float %i.hy, %33
  %34 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %35 = shufflevector <2 x float> %13, <2 x float> %12, <2 x i32> <i32 1, i32 3>
  %i.ia = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %34, <2 x float> zeroinitializer, <2 x float> %35) ; 2 uses
  %i.ib = fneg nsz float %i.hy                    ; 2 uses
  %foldExtExtBinop1742 = fadd nsz <2 x float> %13, %14
  %36 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ic = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.id = insertelement <2 x float> %i.ic, float %i.ib, i64 1 ; 2 uses
  %i.ie = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> zeroinitializer, <2 x float> %i.id) ; 2 uses
  %37 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> zeroinitializer, <2 x float> %22) ; 6 uses
  %i.if = fsub nsz float %i.ib, %33
  %i.ig = fadd nsz float %i.hy, %33
  %38 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ih = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> zeroinitializer, <2 x float> %i.id) ; 2 uses
  %i.ii = fsub nsz float %33, %i.hy
  %i.ij = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 7 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 5 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 308 ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 6 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 6 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 244 ; 5 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 252 ; 5 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 248 ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 312 ; 4 uses
  %i.jg = insertelement <4 x float> poison, float %i.ii, i64 0
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ji = shufflevector <2 x float> %i.ia, <2 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.jj = shufflevector <2 x float> %i.ia, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.jk = insertelement <4 x float> poison, float %i.ig, i64 0
  %i.jl = shufflevector <4 x float> %i.jk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %39 = shufflevector <2 x float> %foldExtExtBinop1742, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.jm = shufflevector <2 x float> %i.ih, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %40 = shufflevector <2 x float> %i.ih, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %41 = insertelement <4 x float> poison, float %i.if, i64 0
  %i.jn = shufflevector <4 x float> %41, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %42 = insertelement <4 x float> poison, float %i.hz, i64 0
  %43 = shufflevector <4 x float> %42, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jo = shufflevector <2 x float> %i.ie, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %44 = shufflevector <2 x float> %i.ie, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.jp = shufflevector <2 x float> %26, <2 x float> poison, <4 x i32> zeroinitializer
  %i.jq = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jr = shufflevector <2 x float> %26, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.js = shufflevector <2 x float> %24, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %45 = shufflevector <2 x float> %24, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.jt = shufflevector <2 x float> %foldExtExtBinop1740, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ju = shufflevector <2 x float> %31, <2 x float> poison, <4 x i32> zeroinitializer
  %i.jv = shufflevector <2 x float> %31, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.jw = insertelement <4 x float> poison, float %21, i64 0
  %46 = shufflevector <4 x float> %i.jw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jx = shufflevector <2 x float> %37, <2 x float> poison, <4 x i32> zeroinitializer
  %i.jy = shufflevector <2 x float> %28, <2 x float> poison, <4 x i32> zeroinitializer
  %i.jz = shufflevector <2 x float> %28, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ka = shufflevector <2 x float> %37, <2 x float> poison, <4 x i32> zeroinitializer
  %47 = shufflevector <2 x float> %37, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kb = shufflevector <2 x float> %37, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %48 = shufflevector <2 x float> %37, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %49 = shufflevector <2 x float> %37, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph1569, %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit
  %indvars.iv1610 = phi i64 [ 0, %.lr.ph1569 ], [ %indvars.iv.next1611, %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit ] ; 4 uses
  %i.kc = phi i64 [ %i.hr, %.lr.ph1569 ], [ %i.aqz, %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit ] ; 2 uses
  %.not.i349 = icmp ugt i64 %i.kc, %indvars.iv1610
  br i1 %.not.i349, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.27, i64 noundef %indvars.iv1610, i64 noundef %i.kc) #24
          to label %.noexc350 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc350:                                        ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.kd = load ptr, ptr %8, align 8, !tbaa !21
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %indvars.iv1610
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !20
  switch i8 %i.kf, label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit [
    i8 71, label %bb.ae
    i8 84, label %bb.af
    i8 70, label %bb.ai
    i8 102, label %bb.bw
    i8 82, label %bb.cb
    i8 91, label %bb.cg
    i8 93, label %bb.cl
    i8 43, label %bb.cr
    i8 45, label %bb.cs
    i8 38, label %bb.ct
    i8 94, label %bb.cu
    i8 42, label %bb.cv
    i8 47, label %bb.cw
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.kg = load float, ptr %i.aq, align 8, !tbaa !106
  %i.kh = load float, ptr %i.as, align 8, !tbaa !106
  %i.ki = fmul nsz float %i.kh, 0.000000e+00
  %i.kj = fadd nsz float %i.kg, %i.ki
  %i.kk = load float, ptr %i.ap, align 8, !tbaa !106
  %i.kl = call nsz float @llvm.fmuladd.f32(float %i.kk, float 0.000000e+00, float %i.kj)
  %i.km = load float, ptr %.sroa.591472.0..sroa_idx, align 8, !tbaa !106
  %i.kn = fadd nsz float %i.km, %i.kl
  %i.ko = load <2 x float>, ptr %4, align 16, !tbaa !106
  %i.kp = load <2 x float>, ptr %i.ar, align 16, !tbaa !106
  %i.kq = fmul nsz <2 x float> %i.kp, zeroinitializer
  %i.kr = fadd nsz <2 x float> %i.ko, %i.kq
  %i.ks = load <2 x float>, ptr %i.at, align 16, !tbaa !106
  %i.kt = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ks, <2 x float> zeroinitializer, <2 x float> %i.kr)
  %i.ku = load <2 x float>, ptr %.sroa.511464.0..sroa_idx, align 16, !tbaa !106
  %i.kv = fadd nsz <2 x float> %i.ku, %i.kt
  %i.kw = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.kx = fadd nsz <2 x float> %i.kv, %i.kw
  store <2 x float> %i.kx, ptr %5, align 8, !tbaa !106
  %i.ky = load float, ptr %i.av, align 8, !tbaa !175
  %i.kz = fadd nsz float %i.kn, %i.ky
  store float %i.kz, ptr %i.av, align 8, !tbaa !175
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.af:                                            ; preds = %bb.ad
  %i.la = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.lb = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.la, float %i.lb, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.lc = load i64, ptr %i.cd, align 8, !tbaa !19
  switch i64 %i.lc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483 [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit353
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit353: ; preds = %bb.af
  %i.ld = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 1
  %i.lf = xor i32 %i.le, 1651863396
  %i.lg = getelementptr i8, ptr %i.ld, i64 4
  %i.lh = load i16, ptr %i.lg, align 1
  %i.li = zext i16 %i.lh to i32
  %i.lj = xor i32 %i.li, 25964
  %i.lk = or i32 %i.lf, %i.lj
  %i.ll = icmp ne i32 %i.lk, 0
  %i.lm = zext i1 %i.ll to i32
  %i.ln = icmp eq i32 %i.lm, 0
  br i1 %i.ln, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit353.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit353.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit353
  %i.lo = load i8, ptr %i.je, align 8, !tbaa !178, !range !169, !noundef !53
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483, label %bb.ag

bb.ag:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit353.thread
  %i.lq = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.lr = fadd <2 x float> %i.lq, <float 1.000000e+00, float -0.000000e+00>
  %i.ls = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.lr, float %i.ls, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.lt = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.lu = load float, ptr %i.av, align 8, !tbaa !175
  %i.lv = fadd nsz float %i.lu, 1.000000e+00
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.lt, float %i.lv, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.lw = load float, ptr %5, align 8, !tbaa !176
  %i.lx = fadd nsz float %i.lw, 1.000000e+00
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483.sink.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355: ; preds = %bb.af
  %i.ly = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 1
  %i.ma = xor i32 %i.lz, 1936683619
  %i.mb = getelementptr i8, ptr %i.ly, i64 3
  %i.mc = load i32, ptr %i.mb, align 1
  %i.md = xor i32 %i.mc, 1684370291
  %i.me = or i32 %i.ma, %i.md
  %i.mf = icmp ne i32 %i.me, 0
  %i.mg = zext i1 %i.mf to i32
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355
  %i.mi = load i8, ptr %i.je, align 8, !tbaa !178, !range !169, !noundef !53
  %i.mj = trunc nuw i8 %i.mi to i1
  br i1 %i.mj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483, label %bb.ah

bb.ah:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread
  %i.mk = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.ml = fadd <2 x float> %i.mk, <float 1.000000e+00, float -0.000000e+00>
  %i.mm = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.ml, float %i.mm, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.mn = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.mo = fadd <2 x float> %i.mn, <float -1.000000e+00, float -0.000000e+00>
  %i.mp = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.mo, float %i.mp, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.mq = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.mr = load float, ptr %i.av, align 8, !tbaa !175
  %i.ms = fadd nsz float %i.mr, 1.000000e+00
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.mq, float %i.ms, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.mt = load float, ptr %5, align 8, !tbaa !176
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483.sink.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483.sink.split: ; preds = %bb.ah, %bb.ag
  %.sink1717 = phi float [ 1.000000e+00, %bb.ag ], [ -1.000000e+00, %bb.ah ]
  %.sink1715 = phi float [ %i.lx, %bb.ag ], [ %i.mt, %bb.ah ]
  %i.mu = load float, ptr %i.au, align 4, !tbaa !177
  %i.mv = load float, ptr %i.av, align 8, !tbaa !175
  %i.mw = fadd nsz float %i.mv, %.sink1717
  %.sroa.0655.0.vec.insert = insertelement <2 x float> poison, float %.sink1715, i64 0
  %.sroa.0655.4.vec.insert = insertelement <2 x float> %.sroa.0655.0.vec.insert, float %i.mu, i64 1
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %.sroa.0655.4.vec.insert, float %i.mw, ptr noundef nonnull align 8 dereferenceable(321) %2)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483.sink.split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit353, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit353.thread, %bb.af, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355
  %i.mx = load float, ptr %i.aq, align 8, !tbaa !106
  %i.my = load float, ptr %i.as, align 8, !tbaa !106
  %i.mz = fmul nsz float %i.my, 0.000000e+00
  %i.na = fadd nsz float %i.mx, %i.mz
  %i.nb = load float, ptr %i.ap, align 8, !tbaa !106
  %i.nc = call nsz float @llvm.fmuladd.f32(float %i.nb, float 0.000000e+00, float %i.na)
  %i.nd = load float, ptr %.sroa.591472.0..sroa_idx, align 8, !tbaa !106
  %i.ne = fadd nsz float %i.nd, %i.nc
  %i.nf = load <2 x float>, ptr %4, align 16, !tbaa !106
  %i.ng = load <2 x float>, ptr %i.ar, align 16, !tbaa !106
  %i.nh = fmul nsz <2 x float> %i.ng, zeroinitializer
  %i.ni = fadd nsz <2 x float> %i.nf, %i.nh
  %i.nj = load <2 x float>, ptr %i.at, align 16, !tbaa !106
  %i.nk = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nj, <2 x float> zeroinitializer, <2 x float> %i.ni)
  %i.nl = load <2 x float>, ptr %.sroa.511464.0..sroa_idx, align 16, !tbaa !106
  %i.nm = fadd nsz <2 x float> %i.nl, %i.nk
  %i.nn = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.no = fadd nsz <2 x float> %i.nm, %i.nn
  store <2 x float> %i.no, ptr %5, align 8, !tbaa !106
  %i.np = load float, ptr %i.av, align 8, !tbaa !175
  %i.nq = fadd nsz float %i.ne, %i.np
  store float %i.nq, ptr %i.av, align 8, !tbaa !175
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.ai:                                            ; preds = %bb.ad
  %i.nr = load <2 x float>, ptr %5, align 8, !tbaa !106
  %i.ns = load float, ptr %i.av, align 8, !tbaa !175
  call fastcc void @_ZN7treegenL20tree_trunk_placementER8MMVManipN4core8vector3dIfEERKNS_7TreeDefE(ptr noundef nonnull align 8 dereferenceable(88) %0, <2 x float> %i.nr, float %i.ns, ptr noundef nonnull align 8 dereferenceable(321) %2)
  %i.nt = load ptr, ptr %i.ij, align 8, !tbaa !111
  %i.nu = load ptr, ptr %i.ik, align 8, !tbaa !111
  %i.nv = icmp eq ptr %i.nt, %i.nu
  %i.nw = load i64, ptr %i.cd, align 8, !tbaa !19 ; 3 uses
  %i.nx = icmp eq i64 %i.nw, 6                    ; 2 uses
  br i1 %i.nv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.nx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit363, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit363.thread1484

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit363: ; preds = %bb.aj
  %i.ny = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 1
  %i.oa = xor i32 %i.nz, 1651863396
  %i.ob = getelementptr i8, ptr %i.ny, i64 4
  %i.oc = load i16, ptr %i.ob, align 1
  %i.od = zext i16 %i.oc to i32
  %i.oe = xor i32 %i.od, 25964
  %i.of = or i32 %i.oa, %i.oe
  %i.og = icmp ne i32 %i.of, 0
  %i.oh = zext i1 %i.og to i32
  %i.oi = icmp eq i32 %i.oh, 0
  br i1 %i.oi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit363.thread, label %.thread1490

end_hunk_0
begin_hunk_1_@_ZN7treegen10make_ltreeER8MMVManipN4core8vector3dIsEERKNS_7TreeDefE:bb.a
bb.cc:                                            ; preds = %bb.cb
  %i.aix = fcmp nsz olt float %.pre1616, 0.000000e+00
  %.v.i17.i = select i1 %i.aix, float -5.000000e-01, float 5.000000e-01
  %i.aiy = fadd nsz float %.pre1616, %.v.i17.i
  %i.aiz = fptosi float %i.aiy to i32
  %.mask.i500 = and i32 %i.aiz, 65535
  %.sroa.7.0.insert.ext19.i = zext nneg i32 %.mask.i500 to i48
  %.sroa.7.0.insert.shift20.i = shl nuw i48 %.sroa.7.0.insert.ext19.i, 32
  %i.aja = ashr exact i48 %.sroa.7.0.insert.shift20.i, 32
  %i.ajb = trunc nsw i48 %i.aja to i32            ; 3 uses
  %i.ajc = load i16, ptr %i.iw, align 4, !tbaa !84
  %i.ajd = sext i16 %i.ajc to i32                 ; 2 uses
  %.not9.i.i501 = icmp slt i32 %i.ajb, %i.ajd
  br i1 %.not9.i.i501, label %bb.cf, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.i502

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.i502: ; preds = %bb.cc
  %i.aje = load i16, ptr %i.ix, align 2, !tbaa !85
  %i.ajf = sext i16 %i.aje to i32
  %.not.i503 = icmp sgt i32 %i.ajb, %i.ajf
  br i1 %.not.i503, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.i502
  %i.ajg = sub nsw i32 %i.ajb, %i.ajd
  %i.ajh = load i32, ptr %i.iz, align 8, !tbaa !86
  %i.aji = mul nsw i32 %i.ajh, %i.ajg
  %i.ajj = load i32, ptr %i.iy, align 4, !tbaa !87
  %i.ajk = extractelement <2 x i32> %i.aik, i64 1
  %sext.i504 = shl i32 %i.ajk, 16
  %i.ajl = ashr exact i32 %sext.i504, 16
  %i.ajm = sext i16 %i.aio to i32
  %i.ajn = sub nsw i32 %i.ajl, %i.ajm
  %i.ajo = add i32 %i.ajn, %i.aji
  %i.ajp = mul i32 %i.ajo, %i.ajj
  %i.ajq = extractelement <2 x i32> %i.aik, i64 0
  %sext25.i = shl i32 %i.ajq, 16
  %i.ajr = ashr exact i32 %sext25.i, 16
  %i.ajs = sext i16 %i.aip to i32
  %i.ajt = sub nsw i32 %i.ajr, %i.ajs
  %i.aju = add nsw i32 %i.ajp, %i.ajt             ; 2 uses
  %i.ajv = load ptr, ptr %i.ja, align 8, !tbaa !90 ; 2 uses
  %i.ajw = zext i32 %i.aju to i64
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.ajw
  %i.ajy = load i16, ptr %i.ajx, align 4, !tbaa !93
  %i.ajz = and i16 %i.ajy, -2
  %switch.i505 = icmp eq i16 %i.ajz, 126
  br i1 %switch.i505, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.aka = sext i32 %i.aju to i64
  %i.akb = getelementptr inbounds [4 x i8], ptr %i.ajv, i64 %i.aka
  store i32 %.val, ptr %i.akb, align 4
  %i.akc = load <2 x float>, ptr %5, align 8, !tbaa !106
  %.pre1615 = load float, ptr %i.av, align 8, !tbaa !175
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cb, %bb.cc, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.i502, %bb.cd, %bb.ce
  %i.akd = phi float [ %.pre1616, %bb.cb ], [ %.pre1616, %bb.cc ], [ %.pre1616, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.i502 ], [ %.pre1616, %bb.cd ], [ %.pre1615, %bb.ce ]
  %i.ake = phi <2 x float> [ %i.aig, %bb.cb ], [ %i.aig, %bb.cc ], [ %i.aig, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.i502 ], [ %i.aig, %bb.cd ], [ %i.akc, %bb.ce ]
  %i.akf = load float, ptr %i.aq, align 8, !tbaa !106
  %i.akg = load float, ptr %i.as, align 8, !tbaa !106
  %i.akh = fmul nsz float %i.akg, 0.000000e+00
  %i.aki = fadd nsz float %i.akf, %i.akh
  %i.akj = load float, ptr %i.ap, align 8, !tbaa !106
  %i.akk = call nsz float @llvm.fmuladd.f32(float %i.akj, float 0.000000e+00, float %i.aki)
  %i.akl = load float, ptr %.sroa.591472.0..sroa_idx, align 8, !tbaa !106
  %i.akm = fadd nsz float %i.akl, %i.akk
  %i.akn = load <2 x float>, ptr %4, align 16, !tbaa !106
  %i.ako = load <2 x float>, ptr %i.ar, align 16, !tbaa !106
  %i.akp = fmul nsz <2 x float> %i.ako, zeroinitializer
  %i.akq = fadd nsz <2 x float> %i.akn, %i.akp
  %i.akr = load <2 x float>, ptr %i.at, align 16, !tbaa !106
  %i.aks = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.akr, <2 x float> zeroinitializer, <2 x float> %i.akq)
  %i.akt = load <2 x float>, ptr %.sroa.511464.0..sroa_idx, align 16, !tbaa !106
  %i.aku = fadd nsz <2 x float> %i.akt, %i.aks
  %i.akv = fadd nsz <2 x float> %i.aku, %i.ake
  store <2 x float> %i.akv, ptr %5, align 8, !tbaa !106
  %i.akw = fadd nsz float %i.akm, %i.akd
  store float %i.akw, ptr %i.av, align 8, !tbaa !175
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ck, %bb.ci, %bb.ac
  %lpad.loopexit.split-lp1745 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.cg:                                            ; preds = %bb.ad
  %i.akx = load ptr, ptr %i.ij, align 8, !tbaa !113 ; 2 uses
  %i.aky = load ptr, ptr %i.in, align 8, !tbaa !180
  %i.akz = getelementptr inbounds i8, ptr %i.aky, i64 -64
  %.not.i.i512 = icmp eq ptr %i.akx, %i.akz
  br i1 %.not.i.i512, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.akx, ptr noundef nonnull align 16 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !114
  %i.ala = load ptr, ptr %i.ij, align 8, !tbaa !113
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 64
  store ptr %i.alb, ptr %i.ij, align 8, !tbaa !113
  br label %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.ci:                                            ; preds = %bb.cg
  invoke void @_ZNSt5dequeIN4core8CMatrix4IfEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 4 dereferenceable(64) %4)
          to label %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit: ; preds = %bb.ch, %bb.ci
  %i.alc = load ptr, ptr %i.io, align 8, !tbaa !119 ; 2 uses
  %i.ald = load ptr, ptr %i.ir, align 8, !tbaa !181
  %i.ale = getelementptr inbounds i8, ptr %i.ald, i64 -12
  %.not.i.i514 = icmp eq ptr %i.alc, %i.ale
  br i1 %.not.i.i514, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.alc, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !120
  %i.alf = load ptr, ptr %i.io, align 8, !tbaa !119
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 12
  store ptr %i.alg, ptr %i.io, align 8, !tbaa !119
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.ck:                                            ; preds = %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit
  invoke void @_ZNSt5dequeIN4core8vector3dIfEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 4 dereferenceable(12) %5)
          to label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ad
  %i.alh = load ptr, ptr %i.ij, align 8, !tbaa !111 ; 3 uses
  %i.ali = load ptr, ptr %i.ik, align 8, !tbaa !111
  %i.alj = icmp eq ptr %i.alh, %i.ali
  br i1 %i.alj, label %.critedge, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.alk = load ptr, ptr %i.il, align 8, !tbaa !121, !noalias !182 ; 2 uses
  %i.all = icmp eq ptr %i.alh, %i.alk
  br i1 %i.all, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.alm = getelementptr inbounds i8, ptr %i.alh, i64 -64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %i.alm, i64 64, i1 false), !tbaa.struct !114
  br label %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEE3popEv.exit

bb.co:                                            ; preds = %bb.cm
  %i.aln = load ptr, ptr %i.im, align 8, !tbaa !122, !noalias !182
  %i.alo = getelementptr inbounds i8, ptr %i.aln, i64 -8
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !123
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %i.alq, i64 64, i1 false), !tbaa.struct !114
  call void @_ZdlPvm(ptr noundef %i.alk, i64 noundef 512) #23
  %i.alr = load ptr, ptr %i.im, align 8, !tbaa !124
  %i.als = getelementptr inbounds i8, ptr %i.alr, i64 -8 ; 2 uses
  store ptr %i.als, ptr %i.im, align 8, !tbaa !122
  %i.alt = load ptr, ptr %i.als, align 8, !tbaa !123 ; 3 uses
  store ptr %i.alt, ptr %i.il, align 8, !tbaa !121
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 512
  store ptr %i.alu, ptr %i.in, align 8, !tbaa !125
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alt, i64 448
  br label %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEE3popEv.exit

_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEE3popEv.exit: ; preds = %bb.cn, %bb.co
  %storemerge.i.i = phi ptr [ %i.alm, %bb.cn ], [ %i.alv, %bb.co ]
  store ptr %storemerge.i.i, ptr %i.ij, align 8, !tbaa !113
  %i.alw = load ptr, ptr %i.io, align 8, !tbaa !126, !noalias !183 ; 2 uses
  %i.alx = load ptr, ptr %i.ip, align 8, !tbaa !127, !noalias !183 ; 2 uses
  %i.aly = icmp eq ptr %i.alw, %i.alx
  br i1 %i.aly, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.alz = getelementptr inbounds i8, ptr %i.alw, i64 -12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.alz, i64 12, i1 false), !tbaa.struct !120
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE3popEv.exit

bb.cq:                                            ; preds = %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.ama = load ptr, ptr %i.iq, align 8, !tbaa !128, !noalias !183
  %i.amb = getelementptr inbounds i8, ptr %i.ama, i64 -8
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !129
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.amd, i64 12, i1 false), !tbaa.struct !120
  call void @_ZdlPvm(ptr noundef %i.alx, i64 noundef 504) #23
  %i.ame = load ptr, ptr %i.iq, align 8, !tbaa !130
  %i.amf = getelementptr inbounds i8, ptr %i.ame, i64 -8 ; 2 uses
  store ptr %i.amf, ptr %i.iq, align 8, !tbaa !128
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !129 ; 3 uses
  store ptr %i.amg, ptr %i.ip, align 8, !tbaa !127
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 504
  store ptr %i.amh, ptr %i.ir, align 8, !tbaa !131
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amg, i64 492
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE3popEv.exit

_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE3popEv.exit: ; preds = %bb.cp, %bb.cq
  %storemerge.i.i518 = phi ptr [ %i.alz, %bb.cp ], [ %i.ami, %bb.cq ]
  store ptr %storemerge.i.i518, ptr %i.io, align 8, !tbaa !119
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.cr:                                            ; preds = %bb.ad
  %i.amj = load <4 x float>, ptr %4, align 16     ; 4 uses
  %i.amk = load <4 x float>, ptr %i.ar, align 16  ; 4 uses
  %i.aml = load <4 x float>, ptr %i.at, align 16  ; 4 uses
  %i.amm = load <4 x float>, ptr %.sroa.511464.0..sroa_idx, align 16 ; 4 uses
  %i.amn = fmul nsz <4 x float> %i.jj, %i.amk
  %i.amo = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amj, <4 x float> %i.ji, <4 x float> %i.amn)
  %i.amp = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aml, <4 x float> %i.jh, <4 x float> %i.amo)
  %i.amq = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amm, <4 x float> zeroinitializer, <4 x float> %i.amp)
  store <4 x float> %i.amq, ptr %4, align 16, !tbaa !106
  %i.amr = fmul nsz <4 x float> %i.ji, %i.amk
  %i.ams = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amj, <4 x float> %49, <4 x float> %i.amr)
  %i.amt = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aml, <4 x float> %i.jl, <4 x float> %i.ams)
  %i.amu = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amm, <4 x float> zeroinitializer, <4 x float> %i.amt)
  store <4 x float> %i.amu, ptr %i.ar, align 16, !tbaa !106
  %i.amv = fmul nsz <4 x float> %40, %i.amk
  %i.amw = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amj, <4 x float> %i.jm, <4 x float> %i.amv)
  %i.amx = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aml, <4 x float> %39, <4 x float> %i.amw)
  %i.amy = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amm, <4 x float> zeroinitializer, <4 x float> %i.amx)
  store <4 x float> %i.amy, ptr %i.at, align 16, !tbaa !106
  %i.amz = fmul nsz <4 x float> %i.amk, zeroinitializer
  %i.ana = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amj, <4 x float> zeroinitializer, <4 x float> %i.amz)
  %i.anb = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aml, <4 x float> zeroinitializer, <4 x float> %i.ana)
  %i.anc = fadd nsz <4 x float> %i.anb, %i.amm
  store <4 x float> %i.anc, ptr %.sroa.511464.0..sroa_idx, align 16, !tbaa !106
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.cs:                                            ; preds = %bb.ad
  %i.and = load <4 x float>, ptr %4, align 16     ; 4 uses
  %i.ane = load <4 x float>, ptr %i.ar, align 16  ; 4 uses
  %i.anf = load <4 x float>, ptr %i.at, align 16  ; 4 uses
  %i.ang = load <4 x float>, ptr %.sroa.511464.0..sroa_idx, align 16 ; 4 uses
  %i.anh = fmul nsz <4 x float> %48, %i.ane
  %i.ani = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.and, <4 x float> %i.ji, <4 x float> %i.anh)
  %i.anj = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anf, <4 x float> %i.jn, <4 x float> %i.ani)
  %i.ank = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ang, <4 x float> zeroinitializer, <4 x float> %i.anj)
  store <4 x float> %i.ank, ptr %4, align 16, !tbaa !106
  %i.anl = fmul nsz <4 x float> %i.ji, %i.ane
  %i.anm = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.and, <4 x float> %i.jj, <4 x float> %i.anl)
  %i.ann = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anf, <4 x float> %43, <4 x float> %i.anm)
  %i.ano = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ang, <4 x float> zeroinitializer, <4 x float> %i.ann)
  store <4 x float> %i.ano, ptr %i.ar, align 16, !tbaa !106
  %i.anp = fmul nsz <4 x float> %44, %i.ane
  %i.anq = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.and, <4 x float> %i.jo, <4 x float> %i.anp)
  %i.anr = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anf, <4 x float> %39, <4 x float> %i.anq)
  %i.ans = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ang, <4 x float> zeroinitializer, <4 x float> %i.anr)
  store <4 x float> %i.ans, ptr %i.at, align 16, !tbaa !106
  %i.ant = fmul nsz <4 x float> %i.ane, zeroinitializer
  %i.anu = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.and, <4 x float> zeroinitializer, <4 x float> %i.ant)
  %i.anv = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anf, <4 x float> zeroinitializer, <4 x float> %i.anu)
  %i.anw = fadd nsz <4 x float> %i.anv, %i.ang
  store <4 x float> %i.anw, ptr %.sroa.511464.0..sroa_idx, align 16, !tbaa !106
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.ct:                                            ; preds = %bb.ad
  %i.anx = load <4 x float>, ptr %4, align 16     ; 4 uses
  %i.any = load <4 x float>, ptr %i.ar, align 16  ; 4 uses
  %i.anz = load <4 x float>, ptr %i.at, align 16  ; 4 uses
  %i.aoa = load <4 x float>, ptr %.sroa.511464.0..sroa_idx, align 16 ; 4 uses
  %i.aob = fmul nsz <4 x float> %i.jl, %i.any
  %i.aoc = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anx, <4 x float> %i.ji, <4 x float> %i.aob)
  %i.aod = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anz, <4 x float> %i.kb, <4 x float> %i.aoc)
  %i.aoe = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoa, <4 x float> zeroinitializer, <4 x float> %i.aod)
  store <4 x float> %i.aoe, ptr %4, align 16, !tbaa !106
  %i.aof = fmul nsz <4 x float> %39, %i.any
  %i.aog = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anx, <4 x float> %40, <4 x float> %i.aof)
  %i.aoh = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anz, <4 x float> %i.jm, <4 x float> %i.aog)
  %i.aoi = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoa, <4 x float> zeroinitializer, <4 x float> %i.aoh)
  store <4 x float> %i.aoi, ptr %i.ar, align 16, !tbaa !106
  %i.aoj = fmul nsz <4 x float> %i.jh, %i.any
  %i.aok = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anx, <4 x float> %i.jj, <4 x float> %i.aoj)
  %i.aol = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anz, <4 x float> %i.ji, <4 x float> %i.aok)
  %i.aom = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoa, <4 x float> zeroinitializer, <4 x float> %i.aol)
  store <4 x float> %i.aom, ptr %i.at, align 16, !tbaa !106
  %i.aon = fmul nsz <4 x float> %i.any, zeroinitializer
  %i.aoo = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anx, <4 x float> zeroinitializer, <4 x float> %i.aon)
  %i.aop = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anz, <4 x float> zeroinitializer, <4 x float> %i.aoo)
  %i.aoq = fadd nsz <4 x float> %i.aop, %i.aoa
  store <4 x float> %i.aoq, ptr %.sroa.511464.0..sroa_idx, align 16, !tbaa !106
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.cu:                                            ; preds = %bb.ad
  %i.aor = load <4 x float>, ptr %4, align 16     ; 4 uses
  %i.aos = load <4 x float>, ptr %i.ar, align 16  ; 4 uses
  %i.aot = load <4 x float>, ptr %i.at, align 16  ; 4 uses
  %i.aou = load <4 x float>, ptr %.sroa.511464.0..sroa_idx, align 16 ; 4 uses
  %i.aov = fmul nsz <4 x float> %43, %i.aos
  %i.aow = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aor, <4 x float> %i.ji, <4 x float> %i.aov)
  %i.aox = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aot, <4 x float> %i.jj, <4 x float> %i.aow)
  %i.aoy = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aou, <4 x float> zeroinitializer, <4 x float> %i.aox)
  store <4 x float> %i.aoy, ptr %4, align 16, !tbaa !106
  %i.aoz = fmul nsz <4 x float> %39, %i.aos
  %i.apa = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aor, <4 x float> %44, <4 x float> %i.aoz)
  %i.apb = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aot, <4 x float> %i.jo, <4 x float> %i.apa)
  %i.apc = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aou, <4 x float> zeroinitializer, <4 x float> %i.apb)
  store <4 x float> %i.apc, ptr %i.ar, align 16, !tbaa !106
  %i.apd = fmul nsz <4 x float> %i.jn, %i.aos
  %i.ape = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aor, <4 x float> %47, <4 x float> %i.apd)
  %i.apf = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aot, <4 x float> %i.ji, <4 x float> %i.ape)
  %i.apg = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aou, <4 x float> zeroinitializer, <4 x float> %i.apf)
  store <4 x float> %i.apg, ptr %i.at, align 16, !tbaa !106
  %i.aph = fmul nsz <4 x float> %i.aos, zeroinitializer
  %i.api = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aor, <4 x float> zeroinitializer, <4 x float> %i.aph)
  %i.apj = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aot, <4 x float> zeroinitializer, <4 x float> %i.api)
  %i.apk = fadd nsz <4 x float> %i.apj, %i.aou
  store <4 x float> %i.apk, ptr %.sroa.511464.0..sroa_idx, align 16, !tbaa !106
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.cv:                                            ; preds = %bb.ad
  %i.apl = load <4 x float>, ptr %4, align 16     ; 4 uses
  %i.apm = load <4 x float>, ptr %i.ar, align 16  ; 4 uses
  %i.apn = load <4 x float>, ptr %i.at, align 16  ; 4 uses
  %i.apo = load <4 x float>, ptr %.sroa.511464.0..sroa_idx, align 16 ; 4 uses
  %i.app = fmul nsz <4 x float> %i.jr, %i.apm
  %i.apq = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apl, <4 x float> %i.jq, <4 x float> %i.app)
  %i.apr = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apn, <4 x float> %i.jp, <4 x float> %i.apq)
  %i.aps = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apo, <4 x float> zeroinitializer, <4 x float> %i.apr)
  store <4 x float> %i.aps, ptr %4, align 16, !tbaa !106
  %i.apt = fmul nsz <4 x float> %45, %i.apm
  %i.apu = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apl, <4 x float> %i.jz, <4 x float> %i.apt)
  %i.apv = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apn, <4 x float> %i.js, <4 x float> %i.apu)
  %i.apw = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apo, <4 x float> zeroinitializer, <4 x float> %i.apv)
  store <4 x float> %i.apw, ptr %i.ar, align 16, !tbaa !106
  %i.apx = fmul nsz <4 x float> %i.ka, %i.apm
  %i.apy = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apl, <4 x float> %i.jt, <4 x float> %i.apx)
  %i.apz = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apn, <4 x float> %45, <4 x float> %i.apy)
  %i.aqa = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apo, <4 x float> zeroinitializer, <4 x float> %i.apz)
  store <4 x float> %i.aqa, ptr %i.at, align 16, !tbaa !106
  %i.aqb = fmul nsz <4 x float> %i.apm, zeroinitializer
  %i.aqc = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apl, <4 x float> zeroinitializer, <4 x float> %i.aqb)
  %i.aqd = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apn, <4 x float> zeroinitializer, <4 x float> %i.aqc)
  %i.aqe = fadd nsz <4 x float> %i.aqd, %i.apo
  store <4 x float> %i.aqe, ptr %.sroa.511464.0..sroa_idx, align 16, !tbaa !106
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.cw:                                            ; preds = %bb.ad
  %i.aqf = load <4 x float>, ptr %4, align 16     ; 4 uses
  %i.aqg = load <4 x float>, ptr %i.ar, align 16  ; 4 uses
  %i.aqh = load <4 x float>, ptr %i.at, align 16  ; 4 uses
  %i.aqi = load <4 x float>, ptr %.sroa.511464.0..sroa_idx, align 16 ; 4 uses
  %i.aqj = fmul nsz <4 x float> %i.jv, %i.aqg
  %i.aqk = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqf, <4 x float> %i.jq, <4 x float> %i.aqj)
  %i.aql = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqh, <4 x float> %i.ju, <4 x float> %i.aqk)
  %i.aqm = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqi, <4 x float> zeroinitializer, <4 x float> %i.aql)
  store <4 x float> %i.aqm, ptr %4, align 16, !tbaa !106
  %i.aqn = fmul nsz <4 x float> %45, %i.aqg
  %i.aqo = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqf, <4 x float> %46, <4 x float> %i.aqn)
  %i.aqp = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqh, <4 x float> %i.jx, <4 x float> %i.aqo)
  %i.aqq = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqi, <4 x float> zeroinitializer, <4 x float> %i.aqp)
  store <4 x float> %i.aqq, ptr %i.ar, align 16, !tbaa !106
  %i.aqr = fmul nsz <4 x float> %i.js, %i.aqg
  %i.aqs = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqf, <4 x float> %i.jy, <4 x float> %i.aqr)
  %i.aqt = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqh, <4 x float> %45, <4 x float> %i.aqs)
  %i.aqu = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqi, <4 x float> zeroinitializer, <4 x float> %i.aqt)
  store <4 x float> %i.aqu, ptr %i.at, align 16, !tbaa !106
  %i.aqv = fmul nsz <4 x float> %i.aqg, zeroinitializer
  %i.aqw = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqf, <4 x float> zeroinitializer, <4 x float> %i.aqv)
  %i.aqx = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqh, <4 x float> zeroinitializer, <4 x float> %i.aqw)
  %i.aqy = fadd nsz <4 x float> %i.aqx, %i.aqi
  store <4 x float> %i.aqy, ptr %.sroa.511464.0..sroa_idx, align 16, !tbaa !106
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit: ; preds = %bb.cj, %bb.ck, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.ae, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit355.thread1483, %.loopexit, %bb.ca, %bb.cf, %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE3popEv.exit, %bb.ad
  %indvars.iv.next1611 = add nuw nsw i64 %indvars.iv1610, 1 ; 2 uses
  %i.aqz = load i64, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.ara = shl i64 %i.aqz, 48
  %i.arb = ashr exact i64 %i.ara, 48
  %.not = icmp slt i64 %indvars.iv.next1611, %i.arb
  br i1 %.not, label %bb.ab, label %.critedge, !llvm.loop !167

.critedge:                                        ; preds = %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit, %bb.cl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481
  %.not.lcssa = phi i32 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread1481 ], [ 1, %bb.cl ], [ 0, %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit ]
  %i.arc = load ptr, ptr %8, align 8, !tbaa !21   ; 2 uses
  %i.ard = icmp eq ptr %i.arc, %i.bb
  br i1 %i.ard, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546: ; preds = %.critedge
  %i.are = load i64, ptr %i.bb, align 8, !tbaa !20
  %i.arf = add i64 %i.are, 1
  call void @_ZdlPvm(ptr noundef %i.arc, i64 noundef %i.arf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.arg = load ptr, ptr %7, align 8, !tbaa !132  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.arg, null
  br i1 %.not.i.i.i, label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548
  %i.arh = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ari = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.arj = load ptr, ptr %i.ari, align 8, !tbaa !133 ; 2 uses
  %i.ark = load ptr, ptr %i.arh, align 8, !tbaa !130 ; 2 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 8
  %i.arm = icmp ult ptr %i.arj, %i.arl
  br i1 %i.arm, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cx, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.aro, %.lr.ph.i.i.i.i ], [ %i.arj, %bb.cx ] ; 3 uses
  %i.arn = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !129
  call void @_ZdlPvm(ptr noundef %i.arn, i64 noundef 504) #23
  %i.aro = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.arp = icmp ult ptr %.06.i.i.i.i, %i.ark
  br i1 %i.arp, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i, !llvm.loop !1

_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %7, align 8, !tbaa !132
  br label %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i

_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i, %bb.cx
  %i.arq = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i ], [ %i.arg, %bb.cx ]
  %i.arr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ars = load i64, ptr %i.arr, align 8, !tbaa !134
  %i.art = shl i64 %i.ars, 3
  call void @_ZdlPvm(ptr noundef %i.arq, i64 noundef %i.art) #23
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit

_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548, %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.aru = load ptr, ptr %6, align 8, !tbaa !135  ; 2 uses
  %.not.i.i.i549 = icmp eq ptr %i.aru, null
  br i1 %.not.i.i.i549, label %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEED2Ev.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit
  %i.arv = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.arw = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !136 ; 2 uses
  %i.ary = load ptr, ptr %i.arv, align 8, !tbaa !124 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 8
  %i.asa = icmp ult ptr %i.arx, %i.arz
  br i1 %i.asa, label %.lr.ph.i.i.i.i550, label %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i

.lr.ph.i.i.i.i550:                                ; preds = %bb.cy, %.lr.ph.i.i.i.i550
  %.06.i.i.i.i551 = phi ptr [ %i.asc, %.lr.ph.i.i.i.i550 ], [ %i.arx, %bb.cy ] ; 3 uses
  %i.asb = load ptr, ptr %.06.i.i.i.i551, align 8, !tbaa !123
  call void @_ZdlPvm(ptr noundef %i.asb, i64 noundef 512) #23
  %i.asc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i551, i64 8
  %i.asd = icmp ult ptr %.06.i.i.i.i551, %i.ary
  br i1 %i.asd, label %.lr.ph.i.i.i.i550, label %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i, !llvm.loop !2

_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i550
  %.pre.i.i.i552 = load ptr, ptr %6, align 8, !tbaa !135
  br label %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i

_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i, %bb.cy
  %i.ase = phi ptr [ %.pre.i.i.i552, %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i ], [ %i.aru, %bb.cy ]
  %i.asf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.asg = load i64, ptr %i.asf, align 8, !tbaa !137
  %i.ash = shl i64 %i.asg, 3
  call void @_ZdlPvm(ptr noundef %i.ase, i64 noundef %i.ash) #23
  br label %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEED2Ev.exit

_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEED2Ev.exit: ; preds = %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit, %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i32 %.not.lcssa

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346
  %.pn295.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp1753, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346 ], [ %lpad.loopexit.split-lp1745, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.asi = load ptr, ptr %8, align 8, !tbaa !21   ; 2 uses
  %i.asj = icmp eq ptr %i.asi, %i.bb
  br i1 %i.asj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553: ; preds = %.loopexit.split-lp
  %i.ask = load i64, ptr %i.bb, align 8, !tbaa !20
  %i.asl = add i64 %i.ask, 1
  call void @_ZdlPvm(ptr noundef %i.asi, i64 noundef %i.asl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553, %bb.j
  %.pn295.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.j ], [ %.pn295.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i553 ], [ %.pn295.pn, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.asm = load ptr, ptr %7, align 8, !tbaa !132  ; 2 uses
  %.not.i.i.i556 = icmp eq ptr %i.asm, null
  br i1 %.not.i.i.i556, label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit562, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555
  %i.asn = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.aso = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !133 ; 2 uses
  %i.asq = load ptr, ptr %i.asn, align 8, !tbaa !130 ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 8
  %i.ass = icmp ult ptr %i.asp, %i.asr
  br i1 %i.ass, label %.lr.ph.i.i.i.i558, label %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i557

.lr.ph.i.i.i.i558:                                ; preds = %bb.cz, %.lr.ph.i.i.i.i558
  %.06.i.i.i.i559 = phi ptr [ %i.asu, %.lr.ph.i.i.i.i558 ], [ %i.asp, %bb.cz ] ; 3 uses
  %i.ast = load ptr, ptr %.06.i.i.i.i559, align 8, !tbaa !129
  call void @_ZdlPvm(ptr noundef %i.ast, i64 noundef 504) #23
  %i.asu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i559, i64 8
  %i.asv = icmp ult ptr %.06.i.i.i.i559, %i.asq
  br i1 %i.asv, label %.lr.ph.i.i.i.i558, label %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i560, !llvm.loop !1

_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i560: ; preds = %.lr.ph.i.i.i.i558
  %.pre.i.i.i561 = load ptr, ptr %7, align 8, !tbaa !132
  br label %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i557

_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i557: ; preds = %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i560, %bb.cz
  %i.asw = phi ptr [ %.pre.i.i.i561, %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i560 ], [ %i.asm, %bb.cz ]
  %i.asx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.asy = load i64, ptr %i.asx, align 8, !tbaa !134
  %i.asz = shl i64 %i.asy, 3
  call void @_ZdlPvm(ptr noundef %i.asw, i64 noundef %i.asz) #23
  br label %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit562

_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit562: ; preds = %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i557, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555, %bb.i
  %.pn295.pn.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.i ], [ %.pn295.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555 ], [ %.pn295.pn.pn, %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i557 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ata = load ptr, ptr %6, align 8, !tbaa !135  ; 2 uses
  %.not.i.i.i563 = icmp eq ptr %i.ata, null
  br i1 %.not.i.i.i563, label %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEED2Ev.exit569, label %bb.da

bb.da:                                            ; preds = %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit562
  %i.atb = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.atc = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.atd = load ptr, ptr %i.atc, align 8, !tbaa !136 ; 2 uses
  %i.ate = load ptr, ptr %i.atb, align 8, !tbaa !124 ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ate, i64 8
  %i.atg = icmp ult ptr %i.atd, %i.atf
  br i1 %i.atg, label %.lr.ph.i.i.i.i565, label %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i564

.lr.ph.i.i.i.i565:                                ; preds = %bb.da, %.lr.ph.i.i.i.i565
  %.06.i.i.i.i566 = phi ptr [ %i.ati, %.lr.ph.i.i.i.i565 ], [ %i.atd, %bb.da ] ; 3 uses
  %i.ath = load ptr, ptr %.06.i.i.i.i566, align 8, !tbaa !123
  call void @_ZdlPvm(ptr noundef %i.ath, i64 noundef 512) #23
  %i.ati = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i566, i64 8
  %i.atj = icmp ult ptr %.06.i.i.i.i566, %i.ate
  br i1 %i.atj, label %.lr.ph.i.i.i.i565, label %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i567, !llvm.loop !2

_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i567: ; preds = %.lr.ph.i.i.i.i565
  %.pre.i.i.i568 = load ptr, ptr %6, align 8, !tbaa !135
  br label %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i564

_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i564: ; preds = %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i567, %bb.da
  %i.atk = phi ptr [ %.pre.i.i.i568, %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i567 ], [ %i.ata, %bb.da ]
  %i.atl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.atm = load i64, ptr %i.atl, align 8, !tbaa !137
  %i.atn = shl i64 %i.atm, 3
  call void @_ZdlPvm(ptr noundef %i.atk, i64 noundef %i.atn) #23
  br label %_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEED2Ev.exit569

_ZNSt5stackIN4core8CMatrix4IfEESt5dequeIS2_SaIS2_EEED2Ev.exit569: ; preds = %_ZNSt5stackIN4core8vector3dIfEESt5dequeIS2_SaIS2_EEED2Ev.exit562, %_ZNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i564
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn295.pn.pn.pn
}

declare void @_ZN7voxalgo20blit_back_with_lightEP3MapP8MMVManipPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS7_ESaISt4pairIKS7_S9_EEE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

end_hunk_1
begin_hunk_2_@_ZNSt5dequeIN4core8vector3dIfEESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_:bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !134
  %i.ag = load ptr, ptr %0, align 8, !tbaa !132
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN4core8vector3dIfEESaIS2_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN4core8vector3dIfEESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN4core8vector3dIfEESaIS2_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN4core8vector3dIfEESaIS2_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #25
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !129
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !119
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ap, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !120
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !128
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !129 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !127
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 504
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !131
  store ptr %i.as, ptr %i.a, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN4core8vector3dIfEESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !134  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !132
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !140

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN4core8vector3dIfEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN4core8vector3dIfEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !129
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !129
  br label %_ZSt4copyIPPN4core8vector3dIfEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !140

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN4core8vector3dIfEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN4core8vector3dIfEES4_ET0_T_S6_S5_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !129
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !129
  br label %_ZSt4copyIPPN4core8vector3dIfEES4_ET0_T_S6_S5_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE15_M_allocate_mapEm.exit, !prof !139

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #25 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !133 ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !130
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.m, label %bb.n, !prof !140

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPN4core8vector3dIfEES4_ET0_T_S6_S5_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.o, label %_ZSt4copyIPPN4core8vector3dIfEES4_ET0_T_S6_S5_.exit24

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !129
  store ptr %i.be, ptr %i.av, align 8, !tbaa !129
  br label %_ZSt4copyIPPN4core8vector3dIfEES4_ET0_T_S6_S5_.exit24

_ZSt4copyIPPN4core8vector3dIfEES4_ET0_T_S6_S5_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = load ptr, ptr %0, align 8, !tbaa !132
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !134
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #23
  store ptr %i.aq, ptr %0, align 8, !tbaa !132
  store i64 %i.am, ptr %i.k, align 8, !tbaa !134
  br label %_ZSt4copyIPPN4core8vector3dIfEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPPN4core8vector3dIfEES4_ET0_T_S6_S5_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN4core8vector3dIfEES4_ET0_T_S6_S5_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN4core8vector3dIfEES4_ET0_T_S6_S5_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !128
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !129  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !127
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 504
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !131
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !128
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !129 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !127
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 504
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !131
  ret void
}

declare extern_weak void @_ZTH11errorstream() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x float>, <2 x float> } @llvm.sincos.v2f32(<2 x float>) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null, null, null, null, null}
!1 = distinct !{!1, !91}
!2 = distinct !{!2, !91}
!3 = distinct !{null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !9, i64 16}
!19 = !{!18, !17, i64 8}
!20 = !{!9, !9, i64 0}
!21 = !{!18, !14, i64 0}
!22 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!24 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !23, i64 0}
!25 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !24, i64 0}
!26 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !25, i64 0}
!27 = !{!"p1 long", !13, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !28, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseImSaImEE", !29, i64 0}
!31 = !{!"_ZTSSt6vectorImSaImEE", !30, i64 0}
!32 = !{!"p1 _ZTS14NodeDefManager", !13, i64 0}
!33 = !{!"bool", !9, i64 0}
!34 = !{!"_ZTS12NodeResolver", !26, i64 8, !31, i64 32, !32, i64 56, !10, i64 64, !10, i64 68, !33, i64 72}
!35 = !{!"short", !9, i64 0}
!36 = !{!"_ZTS7MapNode", !35, i64 0, !9, i64 2, !9, i64 3}
!37 = !{!"_ZTSN7treegen7TreeDefE", !34, i64 0, !18, i64 80, !18, i64 112, !18, i64 144, !18, i64 176, !18, i64 208, !36, i64 240, !36, i64 244, !36, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !18, i64 272, !33, i64 304, !36, i64 308, !10, i64 312, !10, i64 316, !33, i64 320}
!38 = !{!37, !10, i64 252}
!39 = !{!17, !17, i64 0}
!40 = !{!"p1 _ZTS9LogTarget", !13, i64 0}
!41 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!42 = !{!"_ZTSSt6locale", !41, i64 0}
!43 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !42, i64 56}
!44 = !{!"_ZTSSt14_Function_base", !9, i64 0, !13, i64 16}
!45 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !44, i64 0, !13, i64 24}
!46 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !43, i64 0, !45, i64 64, !10, i64 96, !9, i64 100}
!47 = !{!"_ZTS17DummyStreamBuffer", !43, i64 0}
!48 = !{!"_ZTSSo"}
!49 = !{!"p1 _ZTSSo", !13, i64 0}
!50 = !{!"_ZTS11StreamProxy", !49, i64 0}
!51 = !{!"_ZTS9LogStream", !40, i64 0, !46, i64 8, !47, i64 368, !48, i64 432, !48, i64 704, !50, i64 976, !50, i64 984}
!52 = !{!51, !40, i64 0}
!53 = !{}
!54 = !{i64 8}
!55 = !{!"vtable pointer", !8, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!14, !14, i64 0}
!58 = !{!50, !49, i64 0}
!59 = !{!"_ZTSSt13_Ios_Fmtflags", !9, i64 0}
!60 = !{!"_ZTSSt12_Ios_Iostate", !9, i64 0}
!61 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!62 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !17, i64 8}
!63 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!64 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !59, i64 24, !60, i64 28, !60, i64 32, !61, i64 40, !62, i64 48, !9, i64 64, !10, i64 192, !63, i64 200, !42, i64 208}
!65 = !{!64, !60, i64 32}
!66 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 0}
!67 = !{!"p1 _ZTSSt5ctypeIcE", !13, i64 0}
!68 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!69 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!70 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !64, i64 0, !49, i64 216, !9, i64 224, !33, i64 225, !66, i64 232, !67, i64 240, !68, i64 248, !69, i64 256}
!71 = !{!70, !67, i64 240}
!72 = !{!"_ZTSNSt6locale5facetE", !10, i64 8}
!73 = !{!"p1 _ZTS15__locale_struct", !13, i64 0}
!74 = !{!"p1 int", !13, i64 0}
!75 = !{!"p1 short", !13, i64 0}
!76 = !{!"_ZTSSt5ctypeIcE", !72, i64 0, !73, i64 16, !33, i64 24, !74, i64 32, !74, i64 40, !75, i64 48, !9, i64 56, !9, i64 57, !9, i64 313, !9, i64 569}
!77 = !{!76, !9, i64 56}
!78 = !{!"_ZTS12PseudoRandom", !10, i64 0}
!79 = !{!78, !10, i64 0}
!80 = !{!"_ZTSN4core8vector3dIsEE", !35, i64 0, !35, i64 2, !35, i64 4}
!81 = !{!"_ZTSN4core8vector3dIiEE", !10, i64 0, !10, i64 4, !10, i64 8}
!82 = !{!"_ZTS9VoxelArea", !80, i64 0, !80, i64 6, !81, i64 12}
!83 = !{!82, !35, i64 0}
!84 = !{!82, !35, i64 4}
!85 = !{!82, !35, i64 10}
!86 = !{!82, !10, i64 16}
!87 = !{!82, !10, i64 12}
!88 = !{!"p1 _ZTS7MapNode", !13, i64 0}
!89 = !{!"_ZTS16VoxelManipulator", !82, i64 8, !88, i64 32, !14, i64 40}
!90 = !{!89, !88, i64 32}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!82, !35, i64 2}
!93 = !{!36, !35, i64 0}
!94 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!95 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!96 = !{!"_ZTSSt18_Rb_tree_node_base", !94, i64 0, !95, i64 8, !95, i64 16, !95, i64 24}
!97 = !{!"_ZTSSt15_Rb_tree_header", !96, i64 0, !17, i64 32}
!98 = !{!97, !95, i64 8}
!99 = !{!97, !95, i64 16}
!100 = !{!97, !17, i64 32}
!101 = !{!"p1 _ZTSN4core8vector3dIsEE", !13, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE17_Vector_impl_dataE", !101, i64 0, !101, i64 8, !101, i64 16}
!103 = !{!102, !101, i64 0}
!104 = !{!102, !101, i64 16}
!105 = !{!"float", !9, i64 0}
!106 = !{!105, !105, i64 0}
!107 = !{!"p1 _ZTSN4core8CMatrix4IfEE", !13, i64 0}
!108 = !{!"any p2 pointer", !13, i64 0}
!109 = !{!"p2 _ZTSN4core8CMatrix4IfEE", !108, i64 0}
!110 = !{!"_ZTSSt15_Deque_iteratorIN4core8CMatrix4IfEERS2_PS2_E", !107, i64 0, !107, i64 8, !107, i64 16, !109, i64 24}
!111 = !{!110, !107, i64 0}
!112 = !{!"_ZTSNSt11_Deque_baseIN4core8CMatrix4IfEESaIS2_EE16_Deque_impl_dataE", !109, i64 0, !17, i64 8, !110, i64 16, !110, i64 48}
!113 = !{!112, !107, i64 48}
!114 = !{i64 0, i64 64, !20}
!115 = !{!"p2 _ZTSN4core8vector3dIfEE", !108, i64 0}
!116 = !{!"p1 _ZTSN4core8vector3dIfEE", !13, i64 0}
!117 = !{!"_ZTSSt15_Deque_iteratorIN4core8vector3dIfEERS2_PS2_E", !116, i64 0, !116, i64 8, !116, i64 16, !115, i64 24}
!118 = !{!"_ZTSNSt11_Deque_baseIN4core8vector3dIfEESaIS2_EE16_Deque_impl_dataE", !115, i64 0, !17, i64 8, !117, i64 16, !117, i64 48}
!119 = !{!118, !116, i64 48}
!120 = !{i64 0, i64 4, !106, i64 4, i64 4, !106, i64 8, i64 4, !106}
!121 = !{!110, !107, i64 8}
!122 = !{!110, !109, i64 24}
!123 = !{!107, !107, i64 0}
!124 = !{!112, !109, i64 72}
!125 = !{!110, !107, i64 16}
!126 = !{!117, !116, i64 0}
!127 = !{!117, !116, i64 8}
!128 = !{!117, !115, i64 24}
!129 = !{!116, !116, i64 0}
!130 = !{!118, !115, i64 72}
!131 = !{!117, !116, i64 16}
!132 = !{!118, !115, i64 0}
!133 = !{!118, !115, i64 40}
!134 = !{!118, !17, i64 8}
!135 = !{!112, !109, i64 0}
!136 = !{!112, !109, i64 40}
!137 = !{!112, !17, i64 8}
!138 = !{ptr @_ZN13BaseExceptionD2Ev}
!139 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!140 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!141 = distinct !{null}
!142 = distinct !{null}
!143 = distinct !{null}
!144 = distinct !{!144, !91}
!145 = distinct !{!145, !91}
!146 = distinct !{!146, !91}
!147 = !{!97, !94, i64 0}
!148 = !{!97, !95, i64 24}
!149 = !{!80, !35, i64 0}
!150 = !{!80, !35, i64 2}
!151 = !{!80, !35, i64 4}
!152 = !{!"_ZTS16MapEditEventType", !9, i64 0}
!153 = !{!"_ZTSNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE12_Vector_implE", !102, i64 0}
!154 = !{!"_ZTSSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE", !153, i64 0}
!155 = !{!"_ZTSSt6vectorIN4core8vector3dIsEESaIS2_EE", !154, i64 0}
!156 = !{!"_ZTS12MapEditEvent", !152, i64 0, !80, i64 4, !36, i64 12, !155, i64 16, !33, i64 40, !33, i64 41}
!157 = !{!156, !152, i64 0}
!158 = distinct !{!158, !91}
!159 = distinct !{!159, !91}
!160 = distinct !{!160, !91}
!161 = distinct !{!161, !91}
!162 = distinct !{!162, !91}
!163 = distinct !{!163, i1 true, !"_ZNSt5dequeIN4core8CMatrix4IfEESaIS2_EE3endEv"}
!164 = distinct !{!164, !163, !"_ZNSt5dequeIN4core8CMatrix4IfEESaIS2_EE3endEv: argument 0"}
!165 = distinct !{!165, i1 true, !"_ZNSt5dequeIN4core8vector3dIfEESaIS2_EE3endEv"}
!166 = distinct !{!166, !165, !"_ZNSt5dequeIN4core8vector3dIfEESaIS2_EE3endEv: argument 0"}
end_hunk_2
