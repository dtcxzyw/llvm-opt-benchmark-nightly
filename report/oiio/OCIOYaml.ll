inline.NumInlined: 7692
inline.NumDeleted: 1577
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_14loadERKN4YAML4NodeERSt10shared_ptrINS_13ViewTransformEE:bb.a
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.kk = load ptr, ptr %i.de, align 8, !tbaa !33 ; 2 uses
  %.not.i146 = icmp eq ptr %i.kk, null
  br i1 %.not.i146, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !34
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !37
  %i.kn = load i8, ptr %i.km, align 8, !tbaa !40, !range !31, !noundef !32
  %i.ko = trunc nuw i8 %i.kn to i1
  %i.kp = xor i1 %i.ko, true
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %.0.i = phi i1 [ true, %bb.cf ], [ %i.kp, %bb.ch ], [ false, %bb.cg ]
  call void @_ZNSt4pairIN4YAML4NodeES1_ED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.df) #26
  %i.kq = load ptr, ptr %i.dg, align 8, !tbaa !7  ; 8 uses
  %.not.i.i.i.i.i147 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i.i.i.i147, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i151, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8 ; 4 uses
  %i.ks = load atomic i64, ptr %i.kr acquire, align 8 ; 2 uses
  %i.kt = icmp eq i64 %i.ks, 4294967297
  %i.ku = trunc i64 %i.ks to i32                  ; 2 uses
  br i1 %i.kt, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  store i32 0, ptr %i.kr, align 8, !tbaa !11
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 12
  store i32 0, ptr %i.kv, align 4, !tbaa !13
  %i.kw = load ptr, ptr %i.kq, align 8, !tbaa !14
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8
  call void %i.ky(ptr noundef nonnull align 8 dereferenceable(16) %i.kq) #26, !inline_history !129
  %i.kz = load ptr, ptr %i.kq, align 8, !tbaa !14
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lb = load ptr, ptr %i.la, align 8
  call void %i.lb(ptr noundef nonnull align 8 dereferenceable(16) %i.kq) #26, !inline_history !129
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i151

bb.cl:                                            ; preds = %bb.cj
  %i.lc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i148 = icmp eq i8 %i.lc, 0
  br i1 %.not.i.i.i.i.i.i148, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ld = add nsw i32 %i.ku, -1
  store i32 %i.ld, ptr %i.kr, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i149

bb.cn:                                            ; preds = %bb.cl
  %i.le = atomicrmw volatile add ptr %i.kr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i149

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i149: ; preds = %bb.cn, %bb.cm
  %.0.i.i.i.i.i.i.i150 = phi i32 [ %i.ku, %bb.cm ], [ %i.le, %bb.cn ]
  %i.lf = icmp eq i32 %.0.i.i.i.i.i.i.i150, 1
  br i1 %i.lf, label %bb.co, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i151, !prof !18

bb.co:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i149
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kq) #26
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i151

_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i151: ; preds = %bb.co, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i149, %bb.ck, %bb.ci
  %i.lg = load ptr, ptr %i.dh, align 8, !tbaa !19 ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.di
  br i1 %i.lh, label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i152: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i151
  %i.li = load i64, ptr %i.di, align 8, !tbaa !17
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lj) #27
  br label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit154

_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit154: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %.critedge

.critedge:                                        ; preds = %bb.cd, %_ZNK4YAML4Node6IsNullEv.exit, %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit154
  %i.lk = phi i1 [ %.0.i, %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit154 ], [ true, %_ZNK4YAML4Node6IsNullEv.exit ], [ true, %bb.cd ]
  call void @_ZNSt4pairIN4YAML4NodeES1_ED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.dj) #26
  %i.ll = load ptr, ptr %i.dk, align 8, !tbaa !7  ; 8 uses
  %.not.i.i.i.i.i155 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i.i.i155, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i159, label %bb.cp

bb.cp:                                            ; preds = %.critedge
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 4 uses
  %i.ln = load atomic i64, ptr %i.lm acquire, align 8 ; 2 uses
  %i.lo = icmp eq i64 %i.ln, 4294967297
  %i.lp = trunc i64 %i.ln to i32                  ; 2 uses
  br i1 %i.lo, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store i32 0, ptr %i.lm, align 8, !tbaa !11
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 12
  store i32 0, ptr %i.lq, align 4, !tbaa !13
  %i.lr = load ptr, ptr %i.ll, align 8, !tbaa !14
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8
  call void %i.lt(ptr noundef nonnull align 8 dereferenceable(16) %i.ll) #26, !inline_history !129
  %i.lu = load ptr, ptr %i.ll, align 8, !tbaa !14
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(16) %i.ll) #26, !inline_history !129
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i159

bb.cr:                                            ; preds = %bb.cp
  %i.lx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i156 = icmp eq i8 %i.lx, 0
  br i1 %.not.i.i.i.i.i.i156, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ly = add nsw i32 %i.lp, -1
  store i32 %i.ly, ptr %i.lm, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i157

bb.ct:                                            ; preds = %bb.cr
  %i.lz = atomicrmw volatile add ptr %i.lm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i157

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i157: ; preds = %bb.ct, %bb.cs
  %.0.i.i.i.i.i.i.i158 = phi i32 [ %i.lp, %bb.cs ], [ %i.lz, %bb.ct ]
  %i.ma = icmp eq i32 %.0.i.i.i.i.i.i.i158, 1
  br i1 %i.ma, label %bb.cu, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i159, !prof !18

bb.cu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i157
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ll) #26
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i159

_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i159: ; preds = %bb.cu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i157, %bb.cq, %.critedge
  %i.mb = load ptr, ptr %i.dl, align 8, !tbaa !19 ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.dm
  br i1 %i.mc, label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i159
  %i.md = load i64, ptr %i.dm, align 8, !tbaa !17
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #27
  br label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit162

_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit162: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br i1 %i.lk, label %bb.li, label %bb.db

bb.cv:                                            ; preds = %bb.bm
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

.loopexit:                                        ; preds = %bb.br
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body136

.loopexit.split-lp:                               ; preds = %bb.bp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body136

.body136:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.bq
  %eh.lpad-body137 = phi { ptr, i32 } [ %i.iz, %bb.bq ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %19) #26
  br label %bb.cw

bb.cw:                                            ; preds = %.body136, %bb.cv
  %.pn67 = phi { ptr, i32 } [ %eh.lpad-body137, %.body136 ], [ %i.mf, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.lm

bb.cx:                                            ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cy:                                            ; preds = %bb.cb
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %.body144

bb.cz:                                            ; preds = %bb.ce
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %.body144

.body144:                                         ; preds = %bb.cy, %bb.cc, %bb.cz
  %.pn69.pn = phi { ptr, i32 } [ %i.mi, %bb.cz ], [ %i.mh, %bb.cy ], [ %i.jy, %bb.cc ]
  call void @_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %20) #26
  br label %bb.da

bb.da:                                            ; preds = %.body144, %bb.cx
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %.body144 ], [ %i.mg, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.ll

bb.db:                                            ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit162
  %i.mj = load i64, ptr %i.dn, align 8, !tbaa !63 ; 8 uses
  switch i64 %i.mj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread341 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit178
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217
    i64 10, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit233_crit_edge
    i64 18, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit252_crit_edge
    i64 20, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270_crit_edge
    i64 22, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316_crit_edge
  ]

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316_crit_edge: ; preds = %bb.db
  %.pre480 = load ptr, ptr %18, align 8, !tbaa !19
  %bcmp.i315 = call i32 @bcmp(ptr %.pre480, ptr nonnull @.str.181, i64 %i.mj)
  %45 = icmp eq i32 %bcmp.i315, 0
  br i1 %45, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread341

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270_crit_edge: ; preds = %bb.db
  %.pre479 = load ptr, ptr %18, align 8, !tbaa !19 ; 3 uses
  %bcmp.i269 = call i32 @bcmp(ptr %.pre479, ptr nonnull @.str.176, i64 %i.mj)
  %46 = icmp eq i32 %bcmp.i269, 0
  br i1 %46, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270.thread339

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit252_crit_edge: ; preds = %bb.db
  %.pre478 = load ptr, ptr %18, align 8, !tbaa !19
  %bcmp.i251 = call i32 @bcmp(ptr %.pre478, ptr nonnull @.str.174, i64 %i.mj)
  %47 = icmp eq i32 %bcmp.i251, 0
  br i1 %47, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit252.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread341

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit233_crit_edge: ; preds = %bb.db
  %.pre477 = load ptr, ptr %18, align 8, !tbaa !19
  %bcmp.i232 = call i32 @bcmp(ptr %.pre477, ptr nonnull @.str.169, i64 %i.mj)
  %48 = icmp eq i32 %bcmp.i232, 0
  br i1 %48, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit233.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread341

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.db
  %i.mk = load ptr, ptr %18, align 8, !tbaa !19
  %i.ml = load i32, ptr %i.mk, align 1
  %i.mm = icmp ne i32 %i.ml, 1701667182
  %i.mn = zext i1 %i.mm to i32
  %i.mo = icmp eq i32 %i.mn, 0
  br i1 %i.mo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread341

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  store ptr %i.fw, ptr %22, align 8, !tbaa !62
  store i64 0, ptr %i.fx, align 8, !tbaa !63
  store i8 0, ptr %i.fw, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  invoke void @_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEptEv(ptr dead_on_unwind nonnull writable sret(%"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy") align 8 %23, ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %bb.dc unwind label %bb.dk

bb.dc:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_14loadERKN4YAML4NodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.fy, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.dd unwind label %bb.dl

bb.dd:                                            ; preds = %bb.dc
  call void @_ZNSt4pairIN4YAML4NodeES1_ED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.fz) #26
  %i.mp = load ptr, ptr %i.ga, align 8, !tbaa !7  ; 8 uses
  %.not.i.i.i.i.i163 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i.i.i163, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i167, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 4 uses
  %i.mr = load atomic i64, ptr %i.mq acquire, align 8 ; 2 uses
  %i.ms = icmp eq i64 %i.mr, 4294967297
  %i.mt = trunc i64 %i.mr to i32                  ; 2 uses
  br i1 %i.ms, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i32 0, ptr %i.mq, align 8, !tbaa !11
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 12
  store i32 0, ptr %i.mu, align 4, !tbaa !13
  %i.mv = load ptr, ptr %i.mp, align 8, !tbaa !14
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8
  call void %i.mx(ptr noundef nonnull align 8 dereferenceable(16) %i.mp) #26, !inline_history !129
  %i.my = load ptr, ptr %i.mp, align 8, !tbaa !14
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.na = load ptr, ptr %i.mz, align 8
  call void %i.na(ptr noundef nonnull align 8 dereferenceable(16) %i.mp) #26, !inline_history !129
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i167

bb.dg:                                            ; preds = %bb.de
  %i.nb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i164 = icmp eq i8 %i.nb, 0
  br i1 %.not.i.i.i.i.i.i164, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.nc = add nsw i32 %i.mt, -1
  store i32 %i.nc, ptr %i.mq, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i165

bb.di:                                            ; preds = %bb.dg
  %i.nd = atomicrmw volatile add ptr %i.mq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i165

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i165: ; preds = %bb.di, %bb.dh
  %.0.i.i.i.i.i.i.i166 = phi i32 [ %i.mt, %bb.dh ], [ %i.nd, %bb.di ]
  %i.ne = icmp eq i32 %.0.i.i.i.i.i.i.i166, 1
  br i1 %i.ne, label %bb.dj, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i167, !prof !18

bb.dj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i165
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mp) #26
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i167

_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i167: ; preds = %bb.dj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i165, %bb.df, %bb.dd
  %i.nf = load ptr, ptr %i.gb, align 8, !tbaa !19 ; 2 uses
  %i.ng = icmp eq ptr %i.nf, %i.gc
  br i1 %i.ng, label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i167
  %i.nh = load i64, ptr %i.gc, align 8, !tbaa !17
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.ni) #27
  br label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit170

_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit170: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.nj = load ptr, ptr %1, align 8, !tbaa !697
  %i.nk = load ptr, ptr %22, align 8, !tbaa !19
  call void @_ZN16OpenColorIO_v2_513ViewTransform7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.nj, ptr noundef %i.nk) #26
  %i.nl = load ptr, ptr %22, align 8, !tbaa !19   ; 2 uses
  %i.nm = icmp eq ptr %i.nl, %i.fw
  br i1 %i.nm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit170
  %i.nn = load i64, ptr %i.fw, align 8, !tbaa !17
  %i.no = add i64 %i.nn, 1
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.no) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.li

bb.dk:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dc
  %i.nq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %23) #26
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.pn106 = phi { ptr, i32 } [ %i.nq, %bb.dl ], [ %i.np, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.nr = load ptr, ptr %22, align 8, !tbaa !19   ; 2 uses
  %i.ns = icmp eq ptr %i.nr, %i.fw
  br i1 %i.ns, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.dm
  %i.nt = load i64, ptr %i.fw, align 8, !tbaa !17
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.ll

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit178: ; preds = %bb.db
  %.pre475 = load ptr, ptr %18, align 8, !tbaa !19 ; 3 uses
  %bcmp.i177 = call i32 @bcmp(ptr %.pre475, ptr nonnull @.str.28, i64 %i.mj)
  %i.nv = icmp eq i32 %bcmp.i177, 0
  br i1 %i.nv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit178.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit194

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit178.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit178
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  store ptr %i.fp, ptr %24, align 8, !tbaa !62
  store i64 0, ptr %i.fq, align 8, !tbaa !63
  store i8 0, ptr %i.fp, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  invoke void @_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEptEv(ptr dead_on_unwind nonnull writable sret(%"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy") align 8 %25, ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %bb.dn unwind label %bb.dw

bb.dn:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit178.thread
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115loadDescriptionERKN4YAML4NodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.fr, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.do unwind label %bb.dx

bb.do:                                            ; preds = %bb.dn
  call void @_ZNSt4pairIN4YAML4NodeES1_ED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.fs) #26
  %i.nw = load ptr, ptr %i.ft, align 8, !tbaa !7  ; 8 uses
  %.not.i.i.i.i.i179 = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i.i.i179, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i183, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 4 uses
  %i.ny = load atomic i64, ptr %i.nx acquire, align 8 ; 2 uses
  %i.nz = icmp eq i64 %i.ny, 4294967297
  %i.oa = trunc i64 %i.ny to i32                  ; 2 uses
  br i1 %i.nz, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  store i32 0, ptr %i.nx, align 8, !tbaa !11
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 12
  store i32 0, ptr %i.ob, align 4, !tbaa !13
  %i.oc = load ptr, ptr %i.nw, align 8, !tbaa !14
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.oe = load ptr, ptr %i.od, align 8
  call void %i.oe(ptr noundef nonnull align 8 dereferenceable(16) %i.nw) #26, !inline_history !129
  %i.of = load ptr, ptr %i.nw, align 8, !tbaa !14
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %i.oh = load ptr, ptr %i.og, align 8
  call void %i.oh(ptr noundef nonnull align 8 dereferenceable(16) %i.nw) #26, !inline_history !129
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i183

bb.dr:                                            ; preds = %bb.dp
  %i.oi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i180 = icmp eq i8 %i.oi, 0
  br i1 %.not.i.i.i.i.i.i180, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.oj = add nsw i32 %i.oa, -1
  store i32 %i.oj, ptr %i.nx, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i181

bb.dt:                                            ; preds = %bb.dr
  %i.ok = atomicrmw volatile add ptr %i.nx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i181

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i181: ; preds = %bb.dt, %bb.ds
  %.0.i.i.i.i.i.i.i182 = phi i32 [ %i.oa, %bb.ds ], [ %i.ok, %bb.dt ]
  %i.ol = icmp eq i32 %.0.i.i.i.i.i.i.i182, 1
  br i1 %i.ol, label %bb.du, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i183, !prof !18

bb.du:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i181
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nw) #26
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i183

_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i183: ; preds = %bb.du, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i181, %bb.dq, %bb.do
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_512_GLOBAL__N_14loadERKN4YAML4NodeERSt10shared_ptrINS_13ViewTransformEE:bb.a
  %i.su = load i64, ptr %i.fi, align 8, !tbaa !17
  %i.sv = add i64 %i.su, 1
  call void @_ZdlPvm(ptr noundef %i.ss, i64 noundef %i.sv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i: ; preds = %bb.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  invoke void @__cxa_end_catch()
          to label %bb.fm unwind label %bb.fp

bb.fm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i
  %i.sw = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.sx = icmp eq ptr %i.sw, %i.ff
  br i1 %i.sx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i: ; preds = %bb.fm
  %i.sy = load i64, ptr %i.ff, align 8, !tbaa !17
  %i.sz = add i64 %i.sy, 1
  call void @_ZdlPvm(ptr noundef %i.sw, i64 noundef %i.sz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i: ; preds = %bb.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ta = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.tb = icmp eq ptr %i.ta, %i.fj
  br i1 %i.tb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i
  %i.tc = load i64, ptr %i.fj, align 8, !tbaa !17
  %i.td = add i64 %i.tc, 1
  call void @_ZdlPvm(ptr noundef %i.ta, i64 noundef %i.td) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.te = getelementptr inbounds nuw i8, ptr %.sroa.066.095.i, i64 128 ; 2 uses
  %.not70.i = icmp eq ptr %i.te, %i.qx
  br i1 %.not70.i, label %._crit_edge.i, label %.lr.ph.i

bb.fn:                                            ; preds = %bb.fj
  %i.tf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i

bb.fo:                                            ; preds = %bb.fk
  %i.tg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.th = load ptr, ptr %10, align 8, !tbaa !19   ; 2 uses
  %i.ti = icmp eq ptr %i.th, %i.fi
  br i1 %i.ti, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i: ; preds = %bb.fo
  %i.tj = load i64, ptr %i.fi, align 8, !tbaa !17
  %i.tk = add i64 %i.tj, 1
  call void @_ZdlPvm(ptr noundef %i.th, i64 noundef %i.tk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i: ; preds = %bb.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i, %bb.fn
  %.pn24.i = phi { ptr, i32 } [ %i.tf, %bb.fn ], [ %i.tg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i ], [ %i.tg, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  invoke void @__cxa_end_catch()
          to label %.loopexit76.i unwind label %bb.fr

bb.fp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit76.i

.loopexit76.i:                                    ; preds = %bb.fi, %bb.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, %bb.fh
  %.merged31.i = phi { ptr, i32 } [ %i.sl, %bb.fh ], [ %.pn24.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i ], [ %i.tl, %bb.fp ], [ %i.sm, %bb.fi ] ; 2 uses
  %i.tm = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.tn = icmp eq ptr %i.tm, %i.ff
  br i1 %i.tn, label %.body40.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i: ; preds = %.loopexit76.i
  %i.to = load i64, ptr %i.ff, align 8, !tbaa !17
  %i.tp = add i64 %i.to, 1
  call void @_ZdlPvm(ptr noundef %i.tm, i64 noundef %i.tp) #27
  br label %.body40.i

.body40.i:                                        ; preds = %.loopexit76.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i, %.loopexit.split-lp72.i, %.loopexit71.i, %bb.ey
  %.merged30.i = phi { ptr, i32 } [ %i.rp, %bb.ey ], [ %.merged31.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i ], [ %lpad.loopexit.split-lp74.i, %.loopexit.split-lp72.i ], [ %lpad.loopexit73.i, %.loopexit71.i ], [ %.merged31.i, %.loopexit76.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.tq = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.tr = icmp eq ptr %i.tq, %i.fj
  br i1 %i.tr, label %.body36.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i: ; preds = %.body40.i
  %i.ts = load i64, ptr %i.fj, align 8, !tbaa !17
  %i.tt = add i64 %i.ts, 1
  call void @_ZdlPvm(ptr noundef %i.tq, i64 noundef %i.tt) #27
  br label %.body36.i

.body36.i:                                        ; preds = %.body40.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i, %.loopexit.split-lp.i, %.loopexit.i, %bb.et
  %.merged29.i = phi { ptr, i32 } [ %i.rj, %bb.et ], [ %.merged30.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %.merged30.i, %.body40.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.fq

bb.fq:                                            ; preds = %.body36.i, %bb.eq
  %.merged28.i = phi { ptr, i32 } [ %.merged29.i, %.body36.i ], [ %i.re, %bb.eq ]
  call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116CustomKeysLoaderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.body205

bb.fr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i
  %i.tu = landingpad { ptr, i32 }
          catch ptr null
  %i.tv = extractvalue { ptr, i32 } %i.tu, 0
  call void @__clang_call_terminate(ptr %i.tv) #29
  unreachable

bb.fs:                                            ; preds = %bb.ep, %_ZSt8_DestroyIPSt4pairIN4YAML4NodeES2_ES3_EvT_S5_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZNSt4pairIN4YAML4NodeES1_ED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.fl) #26
  %i.tw = load ptr, ptr %i.fm, align 8, !tbaa !7  ; 8 uses
  %.not.i.i.i.i.i208 = icmp eq ptr %i.tw, null
  br i1 %.not.i.i.i.i.i208, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i212, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8 ; 4 uses
  %i.ty = load atomic i64, ptr %i.tx acquire, align 8 ; 2 uses
  %i.tz = icmp eq i64 %i.ty, 4294967297
  %i.ua = trunc i64 %i.ty to i32                  ; 2 uses
  br i1 %i.tz, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  store i32 0, ptr %i.tx, align 8, !tbaa !11
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tw, i64 12
  store i32 0, ptr %i.ub, align 4, !tbaa !13
  %i.uc = load ptr, ptr %i.tw, align 8, !tbaa !14
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.ue = load ptr, ptr %i.ud, align 8
  call void %i.ue(ptr noundef nonnull align 8 dereferenceable(16) %i.tw) #26, !inline_history !129
  %i.uf = load ptr, ptr %i.tw, align 8, !tbaa !14
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 24
  %i.uh = load ptr, ptr %i.ug, align 8
  call void %i.uh(ptr noundef nonnull align 8 dereferenceable(16) %i.tw) #26, !inline_history !129
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i212

bb.fv:                                            ; preds = %bb.ft
  %i.ui = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i209 = icmp eq i8 %i.ui, 0
  br i1 %.not.i.i.i.i.i.i209, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.uj = add nsw i32 %i.ua, -1
  store i32 %i.uj, ptr %i.tx, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i210

bb.fx:                                            ; preds = %bb.fv
  %i.uk = atomicrmw volatile add ptr %i.tx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i210

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i210: ; preds = %bb.fx, %bb.fw
  %.0.i.i.i.i.i.i.i211 = phi i32 [ %i.ua, %bb.fw ], [ %i.uk, %bb.fx ]
  %i.ul = icmp eq i32 %.0.i.i.i.i.i.i.i211, 1
  br i1 %i.ul, label %bb.fy, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i212, !prof !18

bb.fy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i210
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tw) #26
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i212

_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i212: ; preds = %bb.fy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i210, %bb.fu, %bb.fs
  %i.um = load ptr, ptr %i.fn, align 8, !tbaa !19 ; 2 uses
  %i.un = icmp eq ptr %i.um, %i.fo
  br i1 %i.un, label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i212
  %i.uo = load i64, ptr %i.fo, align 8, !tbaa !17
  %i.up = add i64 %i.uo, 1
  call void @_ZdlPvm(ptr noundef %i.um, i64 noundef %i.up) #27
  br label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit215

_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit215: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br label %bb.li

bb.fz:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit194.thread
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.ga:                                            ; preds = %_ZNK4YAML4Node4TypeEv.exit.thread.i, %bb.ed
  %i.ur = landingpad { ptr, i32 }
          cleanup
  br label %.body205

.body205:                                         ; preds = %bb.ee, %bb.em, %bb.fq, %bb.ga
  %eh.lpad-body206 = phi { ptr, i32 } [ %i.ur, %bb.ga ], [ %i.pq, %bb.ee ], [ %.merged28.i, %bb.fq ], [ %.pn.pn.i, %bb.em ]
  call void @_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %26) #26
  br label %bb.gb

bb.gb:                                            ; preds = %.body205, %bb.fz
  %.pn100 = phi { ptr, i32 } [ %eh.lpad-body206, %.body205 ], [ %i.uq, %bb.fz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br label %bb.ll

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217: ; preds = %bb.db
  %.pre476 = load ptr, ptr %18, align 8, !tbaa !19
  %bcmp.i216 = call i32 @bcmp(ptr %.pre476, ptr nonnull @.str.165, i64 %i.mj)
  %i.us = icmp eq i32 %bcmp.i216, 0
  br i1 %i.us, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread341

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  store ptr %i.eu, ptr %27, align 8, !tbaa !62
  store i64 0, ptr %i.ev, align 8, !tbaa !63
  store i8 0, ptr %i.eu, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  invoke void @_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEptEv(ptr dead_on_unwind nonnull writable sret(%"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy") align 8 %28, ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %bb.gc unwind label %bb.gl

bb.gc:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217.thread
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_14loadERKN4YAML4NodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %bb.gd unwind label %bb.gm

bb.gd:                                            ; preds = %bb.gc
  call void @_ZNSt4pairIN4YAML4NodeES1_ED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ex) #26
  %i.ut = load ptr, ptr %i.ey, align 8, !tbaa !7  ; 8 uses
  %.not.i.i.i.i.i218 = icmp eq ptr %i.ut, null
  br i1 %.not.i.i.i.i.i218, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i222, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8 ; 4 uses
  %i.uv = load atomic i64, ptr %i.uu acquire, align 8 ; 2 uses
  %i.uw = icmp eq i64 %i.uv, 4294967297
  %i.ux = trunc i64 %i.uv to i32                  ; 2 uses
  br i1 %i.uw, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  store i32 0, ptr %i.uu, align 8, !tbaa !11
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ut, i64 12
  store i32 0, ptr %i.uy, align 4, !tbaa !13
  %i.uz = load ptr, ptr %i.ut, align 8, !tbaa !14
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %i.vb = load ptr, ptr %i.va, align 8
  call void %i.vb(ptr noundef nonnull align 8 dereferenceable(16) %i.ut) #26, !inline_history !129
  %i.vc = load ptr, ptr %i.ut, align 8, !tbaa !14
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 24
  %i.ve = load ptr, ptr %i.vd, align 8
  call void %i.ve(ptr noundef nonnull align 8 dereferenceable(16) %i.ut) #26, !inline_history !129
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i222

bb.gg:                                            ; preds = %bb.ge
  %i.vf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i219 = icmp eq i8 %i.vf, 0
  br i1 %.not.i.i.i.i.i.i219, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.vg = add nsw i32 %i.ux, -1
  store i32 %i.vg, ptr %i.uu, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i220

bb.gi:                                            ; preds = %bb.gg
  %i.vh = atomicrmw volatile add ptr %i.uu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i220

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i220: ; preds = %bb.gi, %bb.gh
  %.0.i.i.i.i.i.i.i221 = phi i32 [ %i.ux, %bb.gh ], [ %i.vh, %bb.gi ]
  %i.vi = icmp eq i32 %.0.i.i.i.i.i.i.i221, 1
  br i1 %i.vi, label %bb.gj, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i222, !prof !18

bb.gj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i220
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ut) #26
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i222

_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i222: ; preds = %bb.gj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i220, %bb.gf, %bb.gd
  %i.vj = load ptr, ptr %i.ez, align 8, !tbaa !19 ; 2 uses
  %i.vk = icmp eq ptr %i.vj, %i.fa
  br i1 %i.vk, label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i223: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i222
  %i.vl = load i64, ptr %i.fa, align 8, !tbaa !17
  %i.vm = add i64 %i.vl, 1
  call void @_ZdlPvm(ptr noundef %i.vj, i64 noundef %i.vm) #27
  br label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit225

_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit225: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  %i.vn = load ptr, ptr %1, align 8, !tbaa !697
  %i.vo = load ptr, ptr %27, align 8, !tbaa !19
  invoke void @_ZN16OpenColorIO_v2_513ViewTransform9setFamilyEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.vn, ptr noundef %i.vo)
          to label %bb.gk unwind label %bb.go

bb.gk:                                            ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit225
  %i.vp = load ptr, ptr %27, align 8, !tbaa !19   ; 2 uses
  %i.vq = icmp eq ptr %i.vp, %i.eu
  br i1 %i.vq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %bb.gk
  %i.vr = load i64, ptr %i.eu, align 8, !tbaa !17
  %i.vs = add i64 %i.vr, 1
  call void @_ZdlPvm(ptr noundef %i.vp, i64 noundef %i.vs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  br label %bb.li

bb.gl:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217.thread
  %i.vt = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.gm:                                            ; preds = %bb.gc
  %i.vu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %28) #26
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %.pn96 = phi { ptr, i32 } [ %i.vu, %bb.gm ], [ %i.vt, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  br label %bb.gp

bb.go:                                            ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit225
  %i.vv = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %.pn98 = phi { ptr, i32 } [ %i.vv, %bb.go ], [ %.pn96, %bb.gn ]
  %i.vw = load ptr, ptr %27, align 8, !tbaa !19   ; 2 uses
  %i.vx = icmp eq ptr %i.vw, %i.eu
  br i1 %i.vx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %bb.gp
  %i.vy = load i64, ptr %i.eu, align 8, !tbaa !17
  %i.vz = add i64 %i.vy, 1
  call void @_ZdlPvm(ptr noundef %i.vw, i64 noundef %i.vz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231: ; preds = %bb.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  br label %bb.ll

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit233.thread: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit233_crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  invoke void @_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEptEv(ptr dead_on_unwind nonnull writable sret(%"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy") align 8 %30, ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %bb.gq unwind label %bb.gz

bb.gq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit233.thread
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_14loadERKN4YAML4NodeERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EE(ptr noundef nonnull align 8 dereferenceable(64) %i.el, ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %bb.gr unwind label %bb.ha

bb.gr:                                            ; preds = %bb.gq
  call void @_ZNSt4pairIN4YAML4NodeES1_ED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.em) #26
  %i.wa = load ptr, ptr %i.en, align 8, !tbaa !7  ; 8 uses
  %.not.i.i.i.i.i234 = icmp eq ptr %i.wa, null
  br i1 %.not.i.i.i.i.i234, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i238, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 8 ; 4 uses
  %i.wc = load atomic i64, ptr %i.wb acquire, align 8 ; 2 uses
  %i.wd = icmp eq i64 %i.wc, 4294967297
  %i.we = trunc i64 %i.wc to i32                  ; 2 uses
  br i1 %i.wd, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  store i32 0, ptr %i.wb, align 8, !tbaa !11
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wa, i64 12
  store i32 0, ptr %i.wf, align 4, !tbaa !13
  %i.wg = load ptr, ptr %i.wa, align 8, !tbaa !14
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 16
  %i.wi = load ptr, ptr %i.wh, align 8
  call void %i.wi(ptr noundef nonnull align 8 dereferenceable(16) %i.wa) #26, !inline_history !129
  %i.wj = load ptr, ptr %i.wa, align 8, !tbaa !14
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 24
  %i.wl = load ptr, ptr %i.wk, align 8
  call void %i.wl(ptr noundef nonnull align 8 dereferenceable(16) %i.wa) #26, !inline_history !129
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i238

bb.gu:                                            ; preds = %bb.gs
  %i.wm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i235 = icmp eq i8 %i.wm, 0
  br i1 %.not.i.i.i.i.i.i235, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.wn = add nsw i32 %i.we, -1
  store i32 %i.wn, ptr %i.wb, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i236

bb.gw:                                            ; preds = %bb.gu
  %i.wo = atomicrmw volatile add ptr %i.wb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i236

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i236: ; preds = %bb.gw, %bb.gv
  %.0.i.i.i.i.i.i.i237 = phi i32 [ %i.we, %bb.gv ], [ %i.wo, %bb.gw ]
  %i.wp = icmp eq i32 %.0.i.i.i.i.i.i.i237, 1
  br i1 %i.wp, label %bb.gx, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i238, !prof !18

bb.gx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i236
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wa) #26
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i238

_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i238: ; preds = %bb.gx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i236, %bb.gt, %bb.gr
  %i.wq = load ptr, ptr %i.eo, align 8, !tbaa !19 ; 2 uses
  %i.wr = icmp eq ptr %i.wq, %i.ep
  br i1 %i.wr, label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i239: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i238
  %i.ws = load i64, ptr %i.ep, align 8, !tbaa !17
  %i.wt = add i64 %i.ws, 1
  call void @_ZdlPvm(ptr noundef %i.wq, i64 noundef %i.wt) #27
  br label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit241

_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit241: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i238, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  %i.wu = load ptr, ptr %29, align 8, !tbaa !69   ; 6 uses
  %i.wv = load ptr, ptr %i.eq, align 8, !tbaa !69 ; 3 uses
  %.not343440 = icmp eq ptr %i.wu, %i.wv
  br i1 %.not343440, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.xb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.wu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ] ; 3 uses
  %i.ww = load ptr, ptr %.05.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.wy = icmp eq ptr %i.ww, %i.wx
  br i1 %i.wy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.wz = load i64, ptr %i.wx, align 8, !tbaa !17
  %i.xa = add i64 %i.wz, 1
  call void @_ZdlPvm(ptr noundef %i.ww, i64 noundef %i.xa) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.xb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i242 = icmp eq ptr %i.xb, %i.wv
  br i1 %.not.i.i.i242, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !70

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit241
  %.not.i.i1.i = icmp eq ptr %i.wu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.gy

bb.gy:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.xc = load ptr, ptr %i.et, align 8, !tbaa !68
  %i.xd = ptrtoint ptr %i.xc to i64
  %i.xe = ptrtoint ptr %i.wu to i64
  %i.xf = sub i64 %i.xd, %i.xe
  call void @_ZdlPvm(ptr noundef nonnull %i.wu, i64 noundef %i.xf) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %bb.li

bb.gz:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit233.thread
  %i.xg = landingpad { ptr, i32 }
          cleanup
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gq
  %i.xh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %30) #26
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %.pn91 = phi { ptr, i32 } [ %i.xh, %bb.ha ], [ %i.xg, %bb.gz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  br label %bb.hi

.lr.ph:                                           ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  %.sroa.0328.0441 = phi ptr [ %i.xz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ], [ %i.wu, %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit241 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  store ptr %i.er, ptr %31, align 8, !tbaa !62
  %i.xi = load ptr, ptr %.sroa.0328.0441, align 8, !tbaa !19 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.sroa.0328.0441, i64 8
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !63 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.xk, ptr %i.a, align 8, !tbaa !72
  %i.xl = icmp ugt i64 %i.xk, 15
  br i1 %i.xl, label %.noexc.i243, label %._crit_edge.i.i

.noexc.i243:                                      ; preds = %.lr.ph
  %i.xm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc244 unwind label %bb.hg ; 2 uses

.noexc244:                                        ; preds = %.noexc.i243
  store ptr %i.xm, ptr %31, align 8, !tbaa !19
  %i.xn = load i64, ptr %i.a, align 8, !tbaa !72
  store i64 %i.xn, ptr %i.er, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc244, %.lr.ph
  %i.xo = phi ptr [ %i.xm, %.noexc244 ], [ %i.er, %.lr.ph ] ; 2 uses
  switch i64 %i.xk, label %bb.hd [
    i64 1, label %bb.hc
    i64 0, label %bb.he
  ]

bb.hc:                                            ; preds = %._crit_edge.i.i
  %i.xp = load i8, ptr %i.xi, align 1, !tbaa !17
  store i8 %i.xp, ptr %i.xo, align 1, !tbaa !17
  br label %bb.he

bb.hd:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xo, ptr align 1 %i.xi, i64 %i.xk, i1 false)
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc, %._crit_edge.i.i
  %i.xq = load i64, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  store i64 %i.xq, ptr %i.es, align 8, !tbaa !63
  %i.xr = load ptr, ptr %31, align 8, !tbaa !19
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 %i.xq
  store i8 0, ptr %i.xs, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.xt = load ptr, ptr %1, align 8, !tbaa !697
  %i.xu = load ptr, ptr %31, align 8, !tbaa !19
  invoke void @_ZN16OpenColorIO_v2_513ViewTransform11addCategoryEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.xt, ptr noundef %i.xu)
          to label %bb.hf unwind label %bb.hh

bb.hf:                                            ; preds = %bb.he
  %i.xv = load ptr, ptr %31, align 8, !tbaa !19   ; 2 uses
  %i.xw = icmp eq ptr %i.xv, %i.er
  br i1 %i.xw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.hf
  %i.xx = load i64, ptr %i.er, align 8, !tbaa !17
  %i.xy = add i64 %i.xx, 1
  call void @_ZdlPvm(ptr noundef %i.xv, i64 noundef %i.xy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %bb.hf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.0328.0441, i64 32 ; 2 uses
  %.not343 = icmp eq ptr %i.xz, %i.wv
  br i1 %.not343, label %.lr.ph.i.i.i, label %.lr.ph

bb.hg:                                            ; preds = %.noexc.i243
  %i.ya = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

bb.hh:                                            ; preds = %bb.he
  %i.yb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yc = load ptr, ptr %31, align 8, !tbaa !19   ; 2 uses
  %i.yd = icmp eq ptr %i.yc, %i.er
  br i1 %i.yd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %bb.hh
  %i.ye = load i64, ptr %i.er, align 8, !tbaa !17
  %i.yf = add i64 %i.ye, 1
  call void @_ZdlPvm(ptr noundef %i.yc, i64 noundef %i.yf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %bb.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248, %bb.hg
  %.pn93 = phi { ptr, i32 } [ %i.ya, %bb.hg ], [ %i.yb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248 ], [ %i.yb, %bb.hh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  br label %bb.hi

bb.hi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, %bb.hb
  %.pn93.pn = phi { ptr, i32 } [ %.pn93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ], [ %.pn91, %bb.hb ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %29) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %bb.ll

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit252.thread: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit252_crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  invoke void @_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEptEv(ptr dead_on_unwind nonnull writable sret(%"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy") align 8 %33, ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %bb.hj unwind label %bb.ih

bb.hj:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit252.thread
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_14loadERKN4YAML4NodeERSt10shared_ptrINS_9TransformEE(ptr noundef nonnull align 8 dereferenceable(64) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %32)
          to label %bb.hk unwind label %bb.ii

bb.hk:                                            ; preds = %bb.hj
  call void @_ZNSt4pairIN4YAML4NodeES1_ED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.ef) #26
  %i.yg = load ptr, ptr %i.eg, align 8, !tbaa !7  ; 8 uses
  %.not.i.i.i.i.i253 = icmp eq ptr %i.yg, null
  br i1 %.not.i.i.i.i.i253, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i257, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 8 ; 4 uses
  %i.yi = load atomic i64, ptr %i.yh acquire, align 8 ; 2 uses
  %i.yj = icmp eq i64 %i.yi, 4294967297
  %i.yk = trunc i64 %i.yi to i32                  ; 2 uses
  br i1 %i.yj, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  store i32 0, ptr %i.yh, align 8, !tbaa !11
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yg, i64 12
  store i32 0, ptr %i.yl, align 4, !tbaa !13
  %i.ym = load ptr, ptr %i.yg, align 8, !tbaa !14
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 16
  %i.yo = load ptr, ptr %i.yn, align 8
  call void %i.yo(ptr noundef nonnull align 8 dereferenceable(16) %i.yg) #26, !inline_history !129
  %i.yp = load ptr, ptr %i.yg, align 8, !tbaa !14
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 24
  %i.yr = load ptr, ptr %i.yq, align 8
  call void %i.yr(ptr noundef nonnull align 8 dereferenceable(16) %i.yg) #26, !inline_history !129
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i257

bb.hn:                                            ; preds = %bb.hl
  %i.ys = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i254 = icmp eq i8 %i.ys, 0
  br i1 %.not.i.i.i.i.i.i254, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.yt = add nsw i32 %i.yk, -1
  store i32 %i.yt, ptr %i.yh, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i255

bb.hp:                                            ; preds = %bb.hn
  %i.yu = atomicrmw volatile add ptr %i.yh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i255

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i255: ; preds = %bb.hp, %bb.ho
  %.0.i.i.i.i.i.i.i256 = phi i32 [ %i.yk, %bb.ho ], [ %i.yu, %bb.hp ]
  %i.yv = icmp eq i32 %.0.i.i.i.i.i.i.i256, 1
  br i1 %i.yv, label %bb.hq, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i257, !prof !18

bb.hq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i255
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yg) #26
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i257

_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i257: ; preds = %bb.hq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i255, %bb.hm, %bb.hk
  %i.yw = load ptr, ptr %i.eh, align 8, !tbaa !19 ; 2 uses
  %i.yx = icmp eq ptr %i.yw, %i.ei
  br i1 %i.yx, label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i258: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i257
  %i.yy = load i64, ptr %i.ei, align 8, !tbaa !17
  %i.yz = add i64 %i.yy, 1
  call void @_ZdlPvm(ptr noundef %i.yw, i64 noundef %i.yz) #27
  br label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit260

_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit260: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  %i.za = load ptr, ptr %1, align 8, !tbaa !697
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  %i.zb = load ptr, ptr %i.ek, align 8, !tbaa !7  ; 2 uses
  %i.zc = load <2 x ptr>, ptr %32, align 16, !tbaa !247
  store <2 x ptr> %i.zc, ptr %34, align 16, !tbaa !247
  %.not.i.i.i261 = icmp eq ptr %i.zb, null
  br i1 %.not.i.i.i261, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit, label %bb.hr

bb.hr:                                            ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit260
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zb, i64 8 ; 3 uses
  %i.ze = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i262 = icmp eq i8 %i.ze, 0
  br i1 %.not.i.i.i.i262, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.zf = load i32, ptr %i.zd, align 4, !tbaa !3
  %i.zg = add nsw i32 %i.zf, 1
  store i32 %i.zg, ptr %i.zd, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit

bb.ht:                                            ; preds = %bb.hr
  %i.zh = atomicrmw volatile add ptr %i.zd, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit: ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit260, %bb.hs, %bb.ht
  invoke void @_ZN16OpenColorIO_v2_513ViewTransform12setTransformERKSt10shared_ptrIKNS_9TransformEENS_22ViewTransformDirectionE(ptr noundef nonnull align 8 dereferenceable(8) %i.za, ptr noundef nonnull align 8 dereferenceable(16) %34, i32 noundef 0)
          to label %bb.hu unwind label %bb.ik

bb.hu:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit
  %i.zi = load ptr, ptr %i.ej, align 8, !tbaa !7  ; 8 uses
  %.not.i.i263 = icmp eq ptr %i.zi, null
  br i1 %.not.i.i263, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 8 ; 4 uses
  %i.zk = load atomic i64, ptr %i.zj acquire, align 8 ; 2 uses
  %i.zl = icmp eq i64 %i.zk, 4294967297
  %i.zm = trunc i64 %i.zk to i32                  ; 2 uses
  br i1 %i.zl, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  store i32 0, ptr %i.zj, align 8, !tbaa !11
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zi, i64 12
  store i32 0, ptr %i.zn, align 4, !tbaa !13
  %i.zo = load ptr, ptr %i.zi, align 8, !tbaa !14
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %i.zq = load ptr, ptr %i.zp, align 8
  call void %i.zq(ptr noundef nonnull align 8 dereferenceable(16) %i.zi) #26, !inline_history !639
  %i.zr = load ptr, ptr %i.zi, align 8, !tbaa !14
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 24
  %i.zt = load ptr, ptr %i.zs, align 8
  call void %i.zt(ptr noundef nonnull align 8 dereferenceable(16) %i.zi) #26, !inline_history !639
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.hx:                                            ; preds = %bb.hv
  %i.zu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i264 = icmp eq i8 %i.zu, 0
  br i1 %.not.i.i.i264, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.zv = add nsw i32 %i.zm, -1
  store i32 %i.zv, ptr %i.zj, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.hz:                                            ; preds = %bb.hx
  %i.zw = atomicrmw volatile add ptr %i.zj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.hz, %bb.hy
  %.0.i.i.i.i = phi i32 [ %i.zm, %bb.hy ], [ %i.zw, %bb.hz ]
  %i.zx = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.zx, label %bb.ia, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !18

bb.ia:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zi) #26
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.hu, %bb.hw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  %i.zy = load ptr, ptr %i.ek, align 8, !tbaa !7  ; 8 uses
  %.not.i.i265 = icmp eq ptr %i.zy, null
  br i1 %.not.i.i265, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ib

bb.ib:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 8 ; 4 uses
  %i.aaa = load atomic i64, ptr %i.zz acquire, align 8 ; 2 uses
  %i.aab = icmp eq i64 %i.aaa, 4294967297
  %i.aac = trunc i64 %i.aaa to i32                ; 2 uses
  br i1 %i.aab, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  store i32 0, ptr %i.zz, align 8, !tbaa !11
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zy, i64 12
  store i32 0, ptr %i.aad, align 4, !tbaa !13
  %i.aae = load ptr, ptr %i.zy, align 8, !tbaa !14
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  %i.aag = load ptr, ptr %i.aaf, align 8
  call void %i.aag(ptr noundef nonnull align 8 dereferenceable(16) %i.zy) #26, !inline_history !640
  %i.aah = load ptr, ptr %i.zy, align 8, !tbaa !14
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 24
  %i.aaj = load ptr, ptr %i.aai, align 8
  call void %i.aaj(ptr noundef nonnull align 8 dereferenceable(16) %i.zy) #26, !inline_history !640
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.id:                                            ; preds = %bb.ib
  %i.aak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i266 = icmp eq i8 %i.aak, 0
  br i1 %.not.i.i.i266, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aal = add nsw i32 %i.aac, -1
  store i32 %i.aal, ptr %i.zz, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i267

bb.if:                                            ; preds = %bb.id
  %i.aam = atomicrmw volatile add ptr %i.zz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i267

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i267: ; preds = %bb.if, %bb.ie
  %.0.i.i.i.i268 = phi i32 [ %i.aac, %bb.ie ], [ %i.aam, %bb.if ]
  %i.aan = icmp eq i32 %.0.i.i.i.i268, 1
  br i1 %i.aan, label %bb.ig, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !18

bb.ig:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i267
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zy) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ic, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i267, %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  br label %bb.li

bb.ih:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit252.thread
  %i.aao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ij

bb.ii:                                            ; preds = %bb.hj
  %i.aap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %33) #26
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %.pn87 = phi { ptr, i32 } [ %i.aap, %bb.ii ], [ %i.aao, %bb.ih ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  br label %bb.il

bb.ik:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit
  %i.aaq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %34) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %.pn89 = phi { ptr, i32 } [ %i.aaq, %bb.ik ], [ %.pn87, %bb.ij ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  br label %bb.ll

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270.thread: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270_crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  invoke void @_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEptEv(ptr dead_on_unwind nonnull writable sret(%"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy") align 8 %36, ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %bb.im unwind label %bb.jk

bb.im:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270.thread
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_14loadERKN4YAML4NodeERSt10shared_ptrINS_9TransformEE(ptr noundef nonnull align 8 dereferenceable(64) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %35)
          to label %bb.in unwind label %bb.jl

bb.in:                                            ; preds = %bb.im
  call void @_ZNSt4pairIN4YAML4NodeES1_ED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.dy) #26
  %i.aar = load ptr, ptr %i.dz, align 8, !tbaa !7 ; 8 uses
  %.not.i.i.i.i.i271 = icmp eq ptr %i.aar, null
  br i1 %.not.i.i.i.i.i271, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i275, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 8 ; 4 uses
  %i.aat = load atomic i64, ptr %i.aas acquire, align 8 ; 2 uses
  %i.aau = icmp eq i64 %i.aat, 4294967297
  %i.aav = trunc i64 %i.aat to i32                ; 2 uses
  br i1 %i.aau, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  store i32 0, ptr %i.aas, align 8, !tbaa !11
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aar, i64 12
  store i32 0, ptr %i.aaw, align 4, !tbaa !13
  %i.aax = load ptr, ptr %i.aar, align 8, !tbaa !14
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  %i.aaz = load ptr, ptr %i.aay, align 8
  call void %i.aaz(ptr noundef nonnull align 8 dereferenceable(16) %i.aar) #26, !inline_history !129
  %i.aba = load ptr, ptr %i.aar, align 8, !tbaa !14
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 24
  %i.abc = load ptr, ptr %i.abb, align 8
  call void %i.abc(ptr noundef nonnull align 8 dereferenceable(16) %i.aar) #26, !inline_history !129
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i275

bb.iq:                                            ; preds = %bb.io
  %i.abd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i272 = icmp eq i8 %i.abd, 0
  br i1 %.not.i.i.i.i.i.i272, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.abe = add nsw i32 %i.aav, -1
  store i32 %i.abe, ptr %i.aas, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i273

bb.is:                                            ; preds = %bb.iq
  %i.abf = atomicrmw volatile add ptr %i.aas, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i273

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i273: ; preds = %bb.is, %bb.ir
  %.0.i.i.i.i.i.i.i274 = phi i32 [ %i.aav, %bb.ir ], [ %i.abf, %bb.is ]
  %i.abg = icmp eq i32 %.0.i.i.i.i.i.i.i274, 1
  br i1 %i.abg, label %bb.it, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i275, !prof !18

bb.it:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i273
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aar) #26
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i275

_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i275: ; preds = %bb.it, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i273, %bb.ip, %bb.in
  %i.abh = load ptr, ptr %i.ea, align 8, !tbaa !19 ; 2 uses
  %i.abi = icmp eq ptr %i.abh, %i.eb
  br i1 %i.abi, label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i276: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i275
  %i.abj = load i64, ptr %i.eb, align 8, !tbaa !17
  %i.abk = add i64 %i.abj, 1
  call void @_ZdlPvm(ptr noundef %i.abh, i64 noundef %i.abk) #27
  br label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit278

_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit278: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i275, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  %i.abl = load ptr, ptr %1, align 8, !tbaa !697
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26
  %i.abm = load ptr, ptr %i.ed, align 8, !tbaa !7 ; 2 uses
  %i.abn = load <2 x ptr>, ptr %35, align 16, !tbaa !247
  store <2 x ptr> %i.abn, ptr %37, align 16, !tbaa !247
  %.not.i.i.i279 = icmp eq ptr %i.abm, null
  br i1 %.not.i.i.i279, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit281, label %bb.iu

bb.iu:                                            ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit278
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 8 ; 3 uses
  %i.abp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i280 = icmp eq i8 %i.abp, 0
  br i1 %.not.i.i.i.i280, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.abq = load i32, ptr %i.abo, align 4, !tbaa !3
  %i.abr = add nsw i32 %i.abq, 1
  store i32 %i.abr, ptr %i.abo, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit281

bb.iw:                                            ; preds = %bb.iu
  %i.abs = atomicrmw volatile add ptr %i.abo, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit281

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit281: ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit278, %bb.iv, %bb.iw
  invoke void @_ZN16OpenColorIO_v2_513ViewTransform12setTransformERKSt10shared_ptrIKNS_9TransformEENS_22ViewTransformDirectionE(ptr noundef nonnull align 8 dereferenceable(8) %i.abl, ptr noundef nonnull align 8 dereferenceable(16) %37, i32 noundef 0)
          to label %bb.ix unwind label %bb.jn

bb.ix:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit281
  %i.abt = load ptr, ptr %i.ec, align 8, !tbaa !7 ; 8 uses
  %.not.i.i282 = icmp eq ptr %i.abt, null
  br i1 %.not.i.i282, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit286, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 8 ; 4 uses
  %i.abv = load atomic i64, ptr %i.abu acquire, align 8 ; 2 uses
  %i.abw = icmp eq i64 %i.abv, 4294967297
  %i.abx = trunc i64 %i.abv to i32                ; 2 uses
  br i1 %i.abw, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  store i32 0, ptr %i.abu, align 8, !tbaa !11
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abt, i64 12
  store i32 0, ptr %i.aby, align 4, !tbaa !13
  %i.abz = load ptr, ptr %i.abt, align 8, !tbaa !14
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 16
  %i.acb = load ptr, ptr %i.aca, align 8
  call void %i.acb(ptr noundef nonnull align 8 dereferenceable(16) %i.abt) #26, !inline_history !639
  %i.acc = load ptr, ptr %i.abt, align 8, !tbaa !14
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 24
  %i.ace = load ptr, ptr %i.acd, align 8
  call void %i.ace(ptr noundef nonnull align 8 dereferenceable(16) %i.abt) #26, !inline_history !639
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit286

bb.ja:                                            ; preds = %bb.iy
  %i.acf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i283 = icmp eq i8 %i.acf, 0
  br i1 %.not.i.i.i283, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.acg = add nsw i32 %i.abx, -1
  store i32 %i.acg, ptr %i.abu, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i284

bb.jc:                                            ; preds = %bb.ja
  %i.ach = atomicrmw volatile add ptr %i.abu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i284

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i284: ; preds = %bb.jc, %bb.jb
  %.0.i.i.i.i285 = phi i32 [ %i.abx, %bb.jb ], [ %i.ach, %bb.jc ]
  %i.aci = icmp eq i32 %.0.i.i.i.i285, 1
  br i1 %i.aci, label %bb.jd, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit286, !prof !18

bb.jd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i284
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.abt) #26
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit286

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit286: ; preds = %bb.ix, %bb.iz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i284, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  %i.acj = load ptr, ptr %i.ed, align 8, !tbaa !7 ; 8 uses
  %.not.i.i287 = icmp eq ptr %i.acj, null
  br i1 %.not.i.i287, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit291, label %bb.je

bb.je:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit286
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 8 ; 4 uses
  %i.acl = load atomic i64, ptr %i.ack acquire, align 8 ; 2 uses
  %i.acm = icmp eq i64 %i.acl, 4294967297
  %i.acn = trunc i64 %i.acl to i32                ; 2 uses
  br i1 %i.acm, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  store i32 0, ptr %i.ack, align 8, !tbaa !11
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acj, i64 12
  store i32 0, ptr %i.aco, align 4, !tbaa !13
  %i.acp = load ptr, ptr %i.acj, align 8, !tbaa !14
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
  %i.acr = load ptr, ptr %i.acq, align 8
  call void %i.acr(ptr noundef nonnull align 8 dereferenceable(16) %i.acj) #26, !inline_history !640
  %i.acs = load ptr, ptr %i.acj, align 8, !tbaa !14
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 24
  %i.acu = load ptr, ptr %i.act, align 8
  call void %i.acu(ptr noundef nonnull align 8 dereferenceable(16) %i.acj) #26, !inline_history !640
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit291

bb.jg:                                            ; preds = %bb.je
  %i.acv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i288 = icmp eq i8 %i.acv, 0
  br i1 %.not.i.i.i288, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.acw = add nsw i32 %i.acn, -1
  store i32 %i.acw, ptr %i.ack, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i289

bb.ji:                                            ; preds = %bb.jg
  %i.acx = atomicrmw volatile add ptr %i.ack, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i289

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i289: ; preds = %bb.ji, %bb.jh
  %.0.i.i.i.i290 = phi i32 [ %i.acn, %bb.jh ], [ %i.acx, %bb.ji ]
  %i.acy = icmp eq i32 %.0.i.i.i.i290, 1
  br i1 %i.acy, label %bb.jj, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit291, !prof !18

bb.jj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i289
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.acj) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit291

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit291: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit286, %bb.jf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i289, %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  br label %bb.li

bb.jk:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270.thread
  %i.acz = landingpad { ptr, i32 }
          cleanup
  br label %bb.jm

bb.jl:                                            ; preds = %bb.im
  %i.ada = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %36) #26
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %.pn83 = phi { ptr, i32 } [ %i.ada, %bb.jl ], [ %i.acz, %bb.jk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  br label %bb.jo

bb.jn:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit281
  %i.adb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %37) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm
  %.pn85 = phi { ptr, i32 } [ %i.adb, %bb.jn ], [ %.pn83, %bb.jm ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %35) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  br label %bb.ll

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270.thread339: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270_crit_edge
  %cond = icmp eq i64 %i.mj, 20
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread341

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270.thread339
  %i.adc = load i128, ptr %.pre479, align 1
  %i.add = xor i128 %i.adc, 152058490345413031580556079991440241254
  %i.ade = getelementptr i8, ptr %.pre479, i64 16
  %i.adf = load i32, ptr %i.ade, align 1
  %i.adg = zext i32 %i.adf to i128
  %i.adh = xor i128 %i.adg, 1701015141
  %i.adi = or i128 %i.add, %i.adh
  %i.adj = icmp ne i128 %i.adi, 0
  %i.adk = zext i1 %i.adj to i32
  %i.adl = icmp eq i32 %i.adk, 0
  br i1 %i.adl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread341

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #26
  invoke void @_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEptEv(ptr dead_on_unwind nonnull writable sret(%"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy") align 8 %39, ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %bb.jp unwind label %bb.kn

bb.jp:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293.thread
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_14loadERKN4YAML4NodeERSt10shared_ptrINS_9TransformEE(ptr noundef nonnull align 8 dereferenceable(64) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %38)
          to label %bb.jq unwind label %bb.ko

bb.jq:                                            ; preds = %bb.jp
  call void @_ZNSt4pairIN4YAML4NodeES1_ED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.dr) #26
  %i.adm = load ptr, ptr %i.ds, align 8, !tbaa !7 ; 8 uses
  %.not.i.i.i.i.i294 = icmp eq ptr %i.adm, null
  br i1 %.not.i.i.i.i.i294, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i298, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 8 ; 4 uses
  %i.ado = load atomic i64, ptr %i.adn acquire, align 8 ; 2 uses
  %i.adp = icmp eq i64 %i.ado, 4294967297
  %i.adq = trunc i64 %i.ado to i32                ; 2 uses
  br i1 %i.adp, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  store i32 0, ptr %i.adn, align 8, !tbaa !11
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adm, i64 12
  store i32 0, ptr %i.adr, align 4, !tbaa !13
  %i.ads = load ptr, ptr %i.adm, align 8, !tbaa !14
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 16
  %i.adu = load ptr, ptr %i.adt, align 8
  call void %i.adu(ptr noundef nonnull align 8 dereferenceable(16) %i.adm) #26, !inline_history !129
  %i.adv = load ptr, ptr %i.adm, align 8, !tbaa !14
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 24
  %i.adx = load ptr, ptr %i.adw, align 8
  call void %i.adx(ptr noundef nonnull align 8 dereferenceable(16) %i.adm) #26, !inline_history !129
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i298

bb.jt:                                            ; preds = %bb.jr
  %i.ady = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i.i295 = icmp eq i8 %i.ady, 0
  br i1 %.not.i.i.i.i.i.i295, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.adz = add nsw i32 %i.adq, -1
  store i32 %i.adz, ptr %i.adn, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i296

bb.jv:                                            ; preds = %bb.jt
  %i.aea = atomicrmw volatile add ptr %i.adn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i296

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i296: ; preds = %bb.jv, %bb.ju
  %.0.i.i.i.i.i.i.i297 = phi i32 [ %i.adq, %bb.ju ], [ %i.aea, %bb.jv ]
  %i.aeb = icmp eq i32 %.0.i.i.i.i.i.i.i297, 1
  br i1 %i.aeb, label %bb.jw, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i298, !prof !18

bb.jw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i296
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.adm) #26
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i298

_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i298: ; preds = %bb.jw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i296, %bb.js, %bb.jq
  %i.aec = load ptr, ptr %i.dt, align 8, !tbaa !19 ; 2 uses
  %i.aed = icmp eq ptr %i.aec, %i.du
  br i1 %i.aed, label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i299: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i298
  %i.aee = load i64, ptr %i.du, align 8, !tbaa !17
  %i.aef = add i64 %i.aee, 1
  call void @_ZdlPvm(ptr noundef %i.aec, i64 noundef %i.aef) #27
  br label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit301

_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit301: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i298, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  %i.aeg = load ptr, ptr %1, align 8, !tbaa !697
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #26
  %i.aeh = load ptr, ptr %i.dw, align 8, !tbaa !7 ; 2 uses
  %i.aei = load <2 x ptr>, ptr %38, align 16, !tbaa !247
  store <2 x ptr> %i.aei, ptr %40, align 16, !tbaa !247
  %.not.i.i.i302 = icmp eq ptr %i.aeh, null
  br i1 %.not.i.i.i302, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit304, label %bb.jx

bb.jx:                                            ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit301
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8 ; 3 uses
  %i.aek = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i303 = icmp eq i8 %i.aek, 0
  br i1 %.not.i.i.i.i303, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.ael = load i32, ptr %i.aej, align 4, !tbaa !3
  %i.aem = add nsw i32 %i.ael, 1
  store i32 %i.aem, ptr %i.aej, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit304

bb.jz:                                            ; preds = %bb.jx
  %i.aen = atomicrmw volatile add ptr %i.aej, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit304

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit304: ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit301, %bb.jy, %bb.jz
  invoke void @_ZN16OpenColorIO_v2_513ViewTransform12setTransformERKSt10shared_ptrIKNS_9TransformEENS_22ViewTransformDirectionE(ptr noundef nonnull align 8 dereferenceable(8) %i.aeg, ptr noundef nonnull align 8 dereferenceable(16) %40, i32 noundef 1)
          to label %bb.ka unwind label %bb.kq

bb.ka:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit304
  %i.aeo = load ptr, ptr %i.dv, align 8, !tbaa !7 ; 8 uses
  %.not.i.i305 = icmp eq ptr %i.aeo, null
  br i1 %.not.i.i305, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit309, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8 ; 4 uses
  %i.aeq = load atomic i64, ptr %i.aep acquire, align 8 ; 2 uses
  %i.aer = icmp eq i64 %i.aeq, 4294967297
  %i.aes = trunc i64 %i.aeq to i32                ; 2 uses
  br i1 %i.aer, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  store i32 0, ptr %i.aep, align 8, !tbaa !11
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aeo, i64 12
  store i32 0, ptr %i.aet, align 4, !tbaa !13
  %i.aeu = load ptr, ptr %i.aeo, align 8, !tbaa !14
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  %i.aew = load ptr, ptr %i.aev, align 8
  call void %i.aew(ptr noundef nonnull align 8 dereferenceable(16) %i.aeo) #26, !inline_history !639
  %i.aex = load ptr, ptr %i.aeo, align 8, !tbaa !14
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 24
  %i.aez = load ptr, ptr %i.aey, align 8
  call void %i.aez(ptr noundef nonnull align 8 dereferenceable(16) %i.aeo) #26, !inline_history !639
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit309

bb.kd:                                            ; preds = %bb.kb
  %i.afa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i306 = icmp eq i8 %i.afa, 0
  br i1 %.not.i.i.i306, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.afb = add nsw i32 %i.aes, -1
  store i32 %i.afb, ptr %i.aep, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i307

bb.kf:                                            ; preds = %bb.kd
  %i.afc = atomicrmw volatile add ptr %i.aep, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i307

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i307: ; preds = %bb.kf, %bb.ke
  %.0.i.i.i.i308 = phi i32 [ %i.aes, %bb.ke ], [ %i.afc, %bb.kf ]
  %i.afd = icmp eq i32 %.0.i.i.i.i308, 1
  br i1 %i.afd, label %bb.kg, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit309, !prof !18

bb.kg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i307
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aeo) #26
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit309

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit309: ; preds = %bb.ka, %bb.kc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i307, %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  %i.afe = load ptr, ptr %i.dw, align 8, !tbaa !7 ; 8 uses
  %.not.i.i310 = icmp eq ptr %i.afe, null
  br i1 %.not.i.i310, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit314, label %bb.kh

bb.kh:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit309
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 8 ; 4 uses
  %i.afg = load atomic i64, ptr %i.aff acquire, align 8 ; 2 uses
  %i.afh = icmp eq i64 %i.afg, 4294967297
  %i.afi = trunc i64 %i.afg to i32                ; 2 uses
  br i1 %i.afh, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  store i32 0, ptr %i.aff, align 8, !tbaa !11
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afe, i64 12
  store i32 0, ptr %i.afj, align 4, !tbaa !13
  %i.afk = load ptr, ptr %i.afe, align 8, !tbaa !14
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 16
  %i.afm = load ptr, ptr %i.afl, align 8
  call void %i.afm(ptr noundef nonnull align 8 dereferenceable(16) %i.afe) #26, !inline_history !640
  %i.afn = load ptr, ptr %i.afe, align 8, !tbaa !14
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 24
  %i.afp = load ptr, ptr %i.afo, align 8
  call void %i.afp(ptr noundef nonnull align 8 dereferenceable(16) %i.afe) #26, !inline_history !640
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit314

bb.kj:                                            ; preds = %bb.kh
  %i.afq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i311 = icmp eq i8 %i.afq, 0
  br i1 %.not.i.i.i311, label %bb.kl, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.afr = add nsw i32 %i.afi, -1
  store i32 %i.afr, ptr %i.aff, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i312

bb.kl:                                            ; preds = %bb.kj
  %i.afs = atomicrmw volatile add ptr %i.aff, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i312

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i312: ; preds = %bb.kl, %bb.kk
  %.0.i.i.i.i313 = phi i32 [ %i.afi, %bb.kk ], [ %i.afs, %bb.kl ]
  %i.aft = icmp eq i32 %.0.i.i.i.i313, 1
  br i1 %i.aft, label %bb.km, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit314, !prof !18

bb.km:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i312
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.afe) #26
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit314

_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit314: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit309, %bb.ki, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i312, %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  br label %bb.li

bb.kn:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293.thread
  %i.afu = landingpad { ptr, i32 }
          cleanup
  br label %bb.kp

bb.ko:                                            ; preds = %bb.jp
  %i.afv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %39) #26
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %bb.kn
  %.pn79 = phi { ptr, i32 } [ %i.afv, %bb.ko ], [ %i.afu, %bb.kn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  br label %bb.kr

bb.kq:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit304
  %i.afw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %40) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.kp
  %.pn81 = phi { ptr, i32 } [ %i.afw, %bb.kq ], [ %.pn79, %bb.kp ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %38) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  br label %bb.ll

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316_crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #26
  invoke void @_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEptEv(ptr dead_on_unwind nonnull writable sret(%"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy") align 8 %42, ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %bb.ks unwind label %bb.ky

bb.ks:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_14loadERKN4YAML4NodeERSt10shared_ptrINS_9TransformEE(ptr noundef nonnull align 8 dereferenceable(64) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %41)
          to label %bb.kt unwind label %bb.kz

bb.kt:                                            ; preds = %bb.ks
  call void @_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %42) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26
  %i.afx = load ptr, ptr %1, align 8, !tbaa !697
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #26
  %i.afy = load ptr, ptr %i.dp, align 8, !tbaa !7 ; 2 uses
  %i.afz = load <2 x ptr>, ptr %41, align 16, !tbaa !247
  store <2 x ptr> %i.afz, ptr %43, align 16, !tbaa !247
  %.not.i.i.i317 = icmp eq ptr %i.afy, null
  br i1 %.not.i.i.i317, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit319, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afy, i64 8 ; 3 uses
  %i.agb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i318 = icmp eq i8 %i.agb, 0
  br i1 %.not.i.i.i.i318, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.agc = load i32, ptr %i.aga, align 4, !tbaa !3
  %i.agd = add nsw i32 %i.agc, 1
  store i32 %i.agd, ptr %i.aga, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit319

bb.kw:                                            ; preds = %bb.ku
  %i.age = atomicrmw volatile add ptr %i.aga, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit319

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit319: ; preds = %bb.kt, %bb.kv, %bb.kw
  invoke void @_ZN16OpenColorIO_v2_513ViewTransform12setTransformERKSt10shared_ptrIKNS_9TransformEENS_22ViewTransformDirectionE(ptr noundef nonnull align 8 dereferenceable(8) %i.afx, ptr noundef nonnull align 8 dereferenceable(16) %43, i32 noundef 1)
          to label %bb.kx unwind label %bb.lb

bb.kx:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit319
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %43) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #26
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %41) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  br label %bb.li

bb.ky:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread
  %i.agf = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.kz:                                            ; preds = %bb.ks
  %i.agg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %42) #26
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ky
  %.pn75 = phi { ptr, i32 } [ %i.agg, %bb.kz ], [ %i.agf, %bb.ky ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26
  br label %bb.lc

bb.lb:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2IS1_vEERKS_IT_E.exit319
  %i.agh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %43) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #26
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %bb.la
  %.pn77 = phi { ptr, i32 } [ %i.agh, %bb.lb ], [ %.pn75, %bb.la ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %41) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  br label %bb.ll

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread341: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit252_crit_edge, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit233_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270.thread339, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit194, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293, %bb.db, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316_crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #26
  invoke void @_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEptEv(ptr dead_on_unwind nonnull writable sret(%"struct.YAML::detail::iterator_base<const YAML::detail::iterator_value>::proxy") align 8 %44, ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %bb.ld unwind label %bb.lf

bb.ld:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread341
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_120LogUnknownKeyWarningERKN4YAML4NodeES4_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.gd)
          to label %bb.le unwind label %bb.lg

bb.le:                                            ; preds = %bb.ld
  call void @_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %44) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26
  br label %bb.li

bb.lf:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit316.thread341
  %i.agi = landingpad { ptr, i32 }
          cleanup
  br label %bb.lh

bb.lg:                                            ; preds = %bb.ld
  %i.agj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %44) #26
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %.pn73 = phi { ptr, i32 } [ %i.agj, %bb.lg ], [ %i.agi, %bb.lf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26
  br label %bb.ll

bb.li:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit215, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit291, %bb.kx, %bb.le, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit314, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev.exit162
  %i.agk = load ptr, ptr %18, align 8, !tbaa !19  ; 2 uses
  %i.agl = icmp eq ptr %i.agk, %i.ge
  br i1 %i.agl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %bb.li
  %i.agm = load i64, ptr %i.ge, align 8, !tbaa !17
  %i.agn = add i64 %i.agm, 1
  call void @_ZdlPvm(ptr noundef %i.agk, i64 noundef %i.agn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322: ; preds = %bb.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.ago = load i32, ptr %17, align 8, !tbaa !98
  switch i32 %i.ago, label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEEppEv.exit.backedge [
    i32 2, label %bb.lk
    i32 1, label %bb.lj
  ]

_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEEppEv.exit.backedge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, %bb.lj, %_ZN4YAML6detail18node_iterator_baseINS0_4nodeEE23increment_until_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.i.i
  br label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEEppEv.exit

bb.lj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322
  %i.agp = load ptr, ptr %i.cv, align 8, !tbaa !165
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 8
  store ptr %i.agq, ptr %i.cv, align 8, !tbaa !165
  br label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEEppEv.exit.backedge

bb.lk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322
  %i.agr = load ptr, ptr %i.cw, align 8, !tbaa !166
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 16 ; 3 uses
  %i.agt = load ptr, ptr %i.gf, align 8, !tbaa !122 ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.ags, %i.agt
  br i1 %.not3.i.i.i, label %_ZN4YAML6detail18node_iterator_baseINS0_4nodeEE23increment_until_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.i.i, label %.lr.ph.i.i.i323

.lr.ph.i.i.i323:                                  ; preds = %bb.lk, %_ZNK4YAML6detail18node_iterator_baseINS0_4nodeEE10is_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.thread.i.i.i
  %.sroa.0.04.i.i.i = phi ptr [ %i.ahf, %_ZNK4YAML6detail18node_iterator_baseINS0_4nodeEE10is_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.thread.i.i.i ], [ %i.ags, %bb.lk ] ; 4 uses
  %i.agu = load ptr, ptr %.sroa.0.04.i.i.i, align 8, !tbaa !167
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !34
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !37
  %i.agx = load i8, ptr %i.agw, align 8, !tbaa !40, !range !31, !noundef !32
  %i.agy = trunc nuw i8 %i.agx to i1
  br i1 %i.agy, label %_ZNK4YAML6detail18node_iterator_baseINS0_4nodeEE10is_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.i.i.i, label %_ZNK4YAML6detail18node_iterator_baseINS0_4nodeEE10is_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.thread.i.i.i

_ZNK4YAML6detail18node_iterator_baseINS0_4nodeEE10is_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.i.i.i: ; preds = %.lr.ph.i.i.i323
  %i.agz = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i, i64 8
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !169
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !34
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !37
  %i.ahd = load i8, ptr %i.ahc, align 8, !tbaa !40, !range !31, !noundef !32
  %i.ahe = trunc nuw i8 %i.ahd to i1
  br i1 %i.ahe, label %_ZN4YAML6detail18node_iterator_baseINS0_4nodeEE23increment_until_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.i.i, label %_ZNK4YAML6detail18node_iterator_baseINS0_4nodeEE10is_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.thread.i.i.i

_ZNK4YAML6detail18node_iterator_baseINS0_4nodeEE10is_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.thread.i.i.i: ; preds = %_ZNK4YAML6detail18node_iterator_baseINS0_4nodeEE10is_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.i.i.i, %.lr.ph.i.i.i323
  %i.ahf = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i, i64 16 ; 3 uses
  %.not.i.i.i324 = icmp eq ptr %i.ahf, %i.agt
  br i1 %.not.i.i.i324, label %_ZN4YAML6detail18node_iterator_baseINS0_4nodeEE23increment_until_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.i.i, label %.lr.ph.i.i.i323, !llvm.loop !170

_ZN4YAML6detail18node_iterator_baseINS0_4nodeEE23increment_until_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.i.i: ; preds = %_ZNK4YAML6detail18node_iterator_baseINS0_4nodeEE10is_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.thread.i.i.i, %_ZNK4YAML6detail18node_iterator_baseINS0_4nodeEE10is_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.i.i.i, %bb.lk
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %i.ags, %bb.lk ], [ %.sroa.0.04.i.i.i, %_ZNK4YAML6detail18node_iterator_baseINS0_4nodeEE10is_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.i.i.i ], [ %i.ahf, %_ZNK4YAML6detail18node_iterator_baseINS0_4nodeEE10is_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.thread.i.i.i ]
  store ptr %.sroa.0.0.lcssa.i.i.i, ptr %i.cw, align 8, !tbaa !122
  br label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEEppEv.exit.backedge

bb.ll:                                            ; preds = %bb.lh, %bb.lc, %bb.kr, %bb.jo, %bb.il, %bb.hi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, %bb.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %bb.da
  %.pn106.pn = phi { ptr, i32 } [ %.pn106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %.pn104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %.pn100, %bb.gb ], [ %.pn98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231 ], [ %.pn93.pn, %bb.hi ], [ %.pn89, %bb.il ], [ %.pn85, %bb.jo ], [ %.pn81, %bb.kr ], [ %.pn77, %bb.lc ], [ %.pn73, %bb.lh ], [ %.pn69.pn.pn, %bb.da ]
  %i.ahg = load ptr, ptr %18, align 8, !tbaa !19  ; 2 uses
  %i.ahh = icmp eq ptr %i.ahg, %i.ge
  br i1 %i.ahh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325: ; preds = %bb.ll
  %i.ahi = load i64, ptr %i.ge, align 8, !tbaa !17
  %i.ahj = add i64 %i.ahi, 1
  call void @_ZdlPvm(ptr noundef %i.ahg, i64 noundef %i.ahj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327: ; preds = %bb.ll, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.lm

bb.lm:                                            ; preds = %bb.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, %bb.bl
  %.pn110 = phi { ptr, i32 } [ %.pn67, %bb.cw ], [ %i.iu, %bb.bl ], [ %.pn106.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327 ]
  call void @_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %common.resume

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZNK4YAML4Node3TagB5cxx11Ev.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEED2Ev.exit134
  ret void
}

declare void @_ZN16OpenColorIO_v2_56Config16addViewTransformERKSt10shared_ptrIKNS_13ViewTransformEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !13
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !476
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !476
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !18

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ViewTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !13
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !476
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !14
end_hunk_1
