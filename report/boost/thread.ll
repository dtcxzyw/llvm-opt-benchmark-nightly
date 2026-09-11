Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/thread?download=true
inline.NumInlined: 1241
inline.NumDeleted: 506
begin_hunk_0_@_ZN5boost6thread20physical_concurrencyEv:bb.a
  store ptr %i.w, ptr %8, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.y, %bb.z
  %i.de = phi ptr [ %i.cs, %bb.y ], [ %i.w, %bb.z ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.x, align 8, !tbaa !38
  store i8 0, ptr %i.de, align 1, !tbaa !37
  %i.df = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.w
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dh = load i64, ptr %i.w, align 8, !tbaa !37
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.dj = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.29, i64 noundef 0, i64 noundef 4) #31, !noalias !251 ; 6 uses
  %i.dk = icmp eq i64 %i.dj, -1
  br i1 %i.dk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.y, ptr %9, align 8, !tbaa !32, !alias.scope !251
  store i64 0, ptr %i.z, align 8, !tbaa !38, !alias.scope !251
  store i8 0, ptr %i.y, align 8, !tbaa !37, !alias.scope !251
  br label %_ZN5boost13thread_detail11string_trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit39

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dl = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.29, i64 noundef -1, i64 noundef 4) #31, !noalias !251
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.dm = load i64, ptr %i.v, align 8, !tbaa !38, !noalias !253 ; 3 uses
  %i.dn = icmp ugt i64 %i.dj, %i.dm
  br i1 %i.dn, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i31

bb.ac:                                            ; preds = %bb.ab
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.37, i64 noundef %i.dj, i64 noundef %i.dm) #32
          to label %.noexc37 unwind label %.loopexit.split-lp116

.noexc37:                                         ; preds = %bb.ac
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i31: ; preds = %bb.ab
  %reass.sub180 = sub i64 %i.dl, %i.dj
  %i.do = add i64 %reass.sub180, 1
  store ptr %i.y, ptr %9, align 8, !tbaa !32, !alias.scope !253
  %i.dp = load ptr, ptr %7, align 8, !tbaa !36, !noalias !253
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dj ; 2 uses
  %i.dr = sub nuw i64 %i.dm, %i.dj
  %spec.select.i.i.i.i33 = call noundef i64 @llvm.umin.i64(i64 %i.do, i64 %i.dr) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !253
  store i64 %spec.select.i.i.i.i33, ptr %i.a, align 8, !tbaa !34, !noalias !253
  %i.ds = icmp ugt i64 %spec.select.i.i.i.i33, 15
  br i1 %i.ds, label %.noexc10.i.i.i36, label %._crit_edge.i.i.i.i34

.noexc10.i.i.i36:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i31
  %i.dt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc38 unwind label %.loopexit115 ; 2 uses

.noexc38:                                         ; preds = %.noexc10.i.i.i36
  store ptr %i.dt, ptr %9, align 8, !tbaa !36, !alias.scope !253
  %i.du = load i64, ptr %i.a, align 8, !tbaa !34, !noalias !253
  store i64 %i.du, ptr %i.y, align 8, !tbaa !37, !alias.scope !253
  br label %._crit_edge.i.i.i.i34

._crit_edge.i.i.i.i34:                            ; preds = %.noexc38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i31
  %i.dv = phi ptr [ %i.dt, %.noexc38 ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i31 ] ; 2 uses
  switch i64 %spec.select.i.i.i.i33, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i35
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i34
  %i.dw = load i8, ptr %i.dq, align 1, !tbaa !37
  store i8 %i.dw, ptr %i.dv, align 1, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i35

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i34
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dv, ptr align 1 %i.dq, i64 %spec.select.i.i.i.i33, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i35: ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i.i34
  %i.dx = load i64, ptr %i.a, align 8, !tbaa !34, !noalias !253 ; 2 uses
  store i64 %i.dx, ptr %i.z, align 8, !tbaa !38, !alias.scope !253
  %i.dy = load ptr, ptr %9, align 8, !tbaa !36, !alias.scope !253
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dx
  store i8 0, ptr %i.dz, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !253
  br label %_ZN5boost13thread_detail11string_trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit39

_ZN5boost13thread_detail11string_trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit39: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i35, %bb.aa
  %i.ea = load ptr, ptr %7, align 8, !tbaa !36    ; 6 uses
  %i.eb = icmp eq ptr %i.ea, %i.u
  %i.ec = load ptr, ptr %9, align 8, !tbaa !36    ; 5 uses
  %i.ed = icmp eq ptr %i.ec, %i.y                 ; 2 uses
  %.pre212 = load i64, ptr %i.z, align 8, !tbaa !38 ; 5 uses
  br i1 %i.eb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i45: ; preds = %_ZN5boost13thread_detail11string_trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit39
  br i1 %i.ed, label %bb.af, label %.thread.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i40: ; preds = %_ZN5boost13thread_detail11string_trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit39
  br i1 %i.ed, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i41

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i45
  %i.ee = icmp ult i64 %.pre212, 16
  call void @llvm.assume(i1 %i.ee)
  switch i64 %.pre212, label %bb.ah [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i43
    i64 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ef = load i8, ptr %i.ec, align 1, !tbaa !37
  store i8 %i.ef, ptr %i.ea, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i43

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ea, ptr align 1 %i.ec, i64 %.pre212, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i43: ; preds = %bb.ah, %bb.ag, %bb.af
  %i.eg = load i64, ptr %i.z, align 8, !tbaa !38  ; 2 uses
  store i64 %i.eg, ptr %i.v, align 8, !tbaa !38
  %i.eh = load ptr, ptr %7, align 8, !tbaa !36
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eg
  store i8 0, ptr %i.ei, align 1, !tbaa !37
  %.pre.i44 = load ptr, ptr %9, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit47

.thread.i46:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i45
  store ptr %i.ec, ptr %7, align 8, !tbaa !36
  store i64 %.pre212, ptr %i.v, align 8, !tbaa !38
  %i.ej = load i64, ptr %i.y, align 8, !tbaa !37
  store i64 %i.ej, ptr %i.u, align 8, !tbaa !37
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i41: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i40
  %i.ek = load i64, ptr %i.u, align 8, !tbaa !37
  store ptr %i.ec, ptr %7, align 8, !tbaa !36
  store i64 %.pre212, ptr %i.v, align 8, !tbaa !38
  %i.el = load i64, ptr %i.y, align 8, !tbaa !37
  store i64 %i.el, ptr %i.u, align 8, !tbaa !37
  %.not.i42 = icmp eq ptr %i.ea, null
  br i1 %.not.i42, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i41
  store ptr %i.ea, ptr %9, align 8, !tbaa !36
  store i64 %i.ek, ptr %i.y, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit47

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i41, %.thread.i46
  store ptr %i.y, ptr %9, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i43, %bb.ai, %bb.aj
  %i.em = phi ptr [ %i.ea, %bb.ai ], [ %i.y, %bb.aj ], [ %.pre.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i43 ]
  store i64 0, ptr %i.z, align 8, !tbaa !38
  store i8 0, ptr %i.em, align 1, !tbaa !37
  %i.en = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.y
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit47
  %i.ep = load i64, ptr %i.y, align 8, !tbaa !37
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.er = load i64, ptr %i.t, align 8, !tbaa !38  ; 6 uses
  %i.es = load i64, ptr %i.f, align 8, !tbaa !38
  %i.et = icmp eq i64 %i.er, %i.es
  br i1 %i.et, label %bb.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread95

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.eu = icmp eq i64 %i.er, 0
  br i1 %i.eu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.ak
  %i.ev = load ptr, ptr %1, align 8, !tbaa !36
  %i.ew = load ptr, ptr %6, align 8, !tbaa !36
  %bcmp.i = call i32 @bcmp(ptr %i.ew, ptr %i.ev, i64 %i.er)
  %i.ex = icmp eq i32 %bcmp.i, 0
  br i1 %i.ex, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread95

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  store i32 0, ptr %4, align 4, !tbaa !71
  %i.ey = load i64, ptr %i.v, align 8, !tbaa !38
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt1, label %bb.al

bb.al:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.fa = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !37  ; 2 uses
  %.not32.i = icmp eq i8 %i.fb, 0
  br i1 %.not32.i, label %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.al, %bb.am
  %i.fc = phi i8 [ %i.fk, %bb.am ], [ %i.fb, %bb.al ] ; 3 uses
  %.02133.i = phi ptr [ %i.fj, %bb.am ], [ %i.fa, %bb.al ]
  %i.fd = phi i32 [ %i.fi, %bb.am ], [ 0, %bb.al ] ; 3 uses
  %10 = zext nneg i8 %i.fc to i32
  %i.fe = add i8 %i.fc, -58
  %or.cond.i = icmp ult i8 %i.fe, -10
  %i.ff = icmp ugt i32 %i.fd, 429496729
  %or.cond40.i = select i1 %or.cond.i, i1 true, i1 %i.ff
  br i1 %or.cond40.i, label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt1, label %11

11:                                               ; preds = %.lr.ph.i
  %12 = icmp ne i32 %i.fd, 429496729
  %13 = icmp samesign ult i8 %i.fc, 54
  %or.cond4.not.i = or i1 %13, %12
  br i1 %or.cond4.not.i, label %bb.am, label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt1

bb.am:                                            ; preds = %11
  %i.fg = add nsw i32 %10, -48
  %i.fh = mul nuw i32 %i.fd, 10
  %i.fi = add i32 %i.fg, %i.fh                    ; 2 uses
  store i32 %i.fi, ptr %4, align 4, !tbaa !71
  %i.fj = getelementptr inbounds nuw i8, ptr %.02133.i, i64 1 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !37  ; 2 uses
  %.not.i51 = icmp eq i8 %i.fk, 0
  br i1 %.not.i51, label %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit, label %.lr.ph.i, !llvm.loop !223

_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit: ; preds = %bb.am, %bb.al
  br label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt2, !llvm.loop !210

bb.an:                                            ; preds = %.noexc10.i.i
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

.loopexit105:                                     ; preds = %.noexc10.i.i24
  %lpad.loopexit107 = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

.loopexit.split-lp106:                            ; preds = %bb.m
  %lpad.loopexit.split-lp108 = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

.loopexit110:                                     ; preds = %.noexc10.i.i.i
  %lpad.loopexit112 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ao

.loopexit.split-lp111:                            ; preds = %bb.s
  %lpad.loopexit.split-lp113 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp111, %.loopexit110
  %lpad.phi114 = phi { ptr, i32 } [ %lpad.loopexit112, %.loopexit110 ], [ %lpad.loopexit.split-lp113, %.loopexit.split-lp111 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.au

.loopexit115:                                     ; preds = %.noexc10.i.i.i36
  %lpad.loopexit117 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ap

.loopexit.split-lp116:                            ; preds = %bb.ac
  %lpad.loopexit.split-lp118 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp116, %.loopexit115
  %lpad.phi119 = phi { ptr, i32 } [ %lpad.loopexit117, %.loopexit115 ], [ %lpad.loopexit.split-lp118, %.loopexit.split-lp116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.au

bb.aq:                                            ; preds = %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit62
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.au

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.fn = load i64, ptr %i.i, align 8, !tbaa !38
  %i.fo = icmp eq i64 %i.er, %i.fn
  br i1 %i.fo, label %bb.ar, label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt2

bb.ar:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread95
  %i.fp = icmp eq i64 %i.er, 0
  br i1 %i.fp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit53.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit53

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit53: ; preds = %bb.ar
  %i.fq = load ptr, ptr %2, align 8, !tbaa !36
  %i.fr = load ptr, ptr %6, align 8, !tbaa !36
  %bcmp.i52 = call i32 @bcmp(ptr %i.fr, ptr %i.fq, i64 %i.er)
  %i.fs = icmp eq i32 %bcmp.i52, 0
  br i1 %i.fs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit53.thread, label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt2

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit53.thread: ; preds = %bb.ar, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit53
  store i32 0, ptr %i.p, align 4, !tbaa !71
  %i.ft = load i64, ptr %i.v, align 8, !tbaa !38
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt1, label %bb.as

bb.as:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit53.thread
  %i.fv = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !37  ; 2 uses
  %.not32.i54 = icmp eq i8 %i.fw, 0
  br i1 %.not32.i54, label %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit62, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %bb.as, %bb.at
  %i.fx = phi i8 [ %i.gf, %bb.at ], [ %i.fw, %bb.as ] ; 3 uses
  %.02133.i56 = phi ptr [ %i.ge, %bb.at ], [ %i.fv, %bb.as ]
  %i.fy = phi i32 [ %i.gd, %bb.at ], [ 0, %bb.as ] ; 3 uses
  %14 = zext nneg i8 %i.fx to i32
  %i.fz = add i8 %i.fx, -58
  %or.cond.i57 = icmp ult i8 %i.fz, -10
  %i.ga = icmp ugt i32 %i.fy, 429496729
  %or.cond40.i58 = select i1 %or.cond.i57, i1 true, i1 %i.ga
  br i1 %or.cond40.i58, label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt1, label %15

15:                                               ; preds = %.lr.ph.i55
  %16 = icmp ne i32 %i.fy, 429496729
  %17 = icmp samesign ult i8 %i.fx, 54
  %or.cond4.not.i59 = or i1 %17, %16
  br i1 %or.cond4.not.i59, label %bb.at, label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt1

bb.at:                                            ; preds = %15
  %i.gb = add nsw i32 %14, -48
  %i.gc = mul nuw i32 %i.fy, 10
  %i.gd = add i32 %i.gb, %i.gc                    ; 2 uses
  store i32 %i.gd, ptr %i.p, align 4, !tbaa !71
  %i.ge = getelementptr inbounds nuw i8, ptr %.02133.i56, i64 1 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !37  ; 2 uses
  %.not.i61 = icmp eq i8 %i.gf, 0
  br i1 %.not.i61, label %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit62, label %.lr.ph.i55, !llvm.loop !223

_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit62: ; preds = %bb.at, %bb.as
  %i.gg = invoke { ptr, i8 } @_ZNSt8_Rb_treeISt4pairIjjES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt2 unwind label %bb.aq ; 0 uses

_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt1: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit53.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %15, %.lr.ph.i55, %11, %.lr.ph.i
  %i.gh = call i64 @sysconf(i32 noundef 84) #31
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.gi, i32 0)
  %i.gk = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.u
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.jt1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.jt1

_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt2: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread95, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit53, %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit, %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit62
  %i.gm = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.u
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.jt2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.jt2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.jt1: ; preds = %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt1
  %i.go = load i64, ptr %i.u, align 8, !tbaa !37
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.jt1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.jt2: ; preds = %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt2
  %i.gq = load i64, ptr %i.u, align 8, !tbaa !37
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gr) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.jt2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.jt1: ; preds = %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.gs = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.s
  br i1 %i.gt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i68.jt1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.jt1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.jt2: ; preds = %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.gu = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.s
  br i1 %i.gv, label %.outer.backedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.jt2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.jt1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.jt1
  %i.gw = load i64, ptr %i.s, align 8, !tbaa !37
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gx) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i68.jt1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.jt2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.jt2
  %i.gy = load i64, ptr %i.s, align 8, !tbaa !37
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gz) #34
  br label %.outer.backedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i68.jt1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.jt1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %.loopexit120

.outer.backedge:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.jt2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %.outer.backedge357

bb.au:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.aq ], [ %lpad.phi119, %bb.ap ], [ %lpad.phi114, %bb.ao ] ; 2 uses
  %i.ha = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.u
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.au
  %i.hc = load i64, ptr %i.u, align 8, !tbaa !37
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.au, %.loopexit105, %.loopexit.split-lp106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %lpad.loopexit.split-lp108, %.loopexit.split-lp106 ], [ %lpad.loopexit107, %.loopexit105 ], [ %.pn, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.he = load ptr, ptr %6, align 8, !tbaa !36    ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.s
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.hg = load i64, ptr %i.s, align 8, !tbaa !37
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.an
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fl, %bb.an ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.az

bb.av:                                            ; preds = %bb.e
  %i.hi = load i64, ptr %i.o, align 8, !tbaa !103 ; 2 uses
  %.not = icmp eq i64 %i.hi, 0
  br i1 %.not, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hj = trunc i64 %i.hi to i32
  br label %.loopexit120

bb.ax:                                            ; preds = %bb.av
  %i.hk = call i64 @sysconf(i32 noundef 84) #31
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.hl, i32 0)
  br label %.loopexit120

.loopexit120:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i68.jt1, %.thread, %bb.aw, %bb.ax
  %.3 = phi i32 [ %i.bd, %.thread ], [ %i.hj, %bb.aw ], [ %i.hm, %bb.ax ], [ %i.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i68.jt1 ]
  %i.hn = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.q
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %.loopexit120
  %i.hp = load i64, ptr %i.q, align 8, !tbaa !37
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %.loopexit120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.hr = load ptr, ptr %i.l, align 8, !tbaa !59
  invoke void @_ZNSt8_Rb_treeISt4pairIjjES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.hr)
          to label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EED2Ev.exit unwind label %bb.ay

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.hs = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = extractvalue { ptr, i32 } %i.hs, 0
  call void @__clang_call_terminate(ptr %i.ht) #33
  unreachable

_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.hu = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.h
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EED2Ev.exit
  %i.hw = load i64, ptr %i.h, align 8, !tbaa !37
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.hy = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.e
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.ia = load i64, ptr %i.e, align 8, !tbaa !37
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  br label %bb.bb

bb.az:                                            ; preds = %.loopexit104, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %lpad.loopexit, %.loopexit104 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ic = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.q
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.az
  %i.ie = load i64, ptr %i.q, align 8, !tbaa !37
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.ig = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.h
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.ii = load i64, ptr %i.h, align 8, !tbaa !37
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.ik = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.e
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.im = load i64, ptr %i.e, align 8, !tbaa !37
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) #31
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %bb.g
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.ay, %bb.g ]
  %.6 = extractvalue { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  %i.io = call ptr @__cxa_begin_catch(ptr %.6) #31 ; 0 uses
  %i.ip = call i64 @sysconf(i32 noundef 84) #31
  %i.iq = trunc i64 %i.ip to i32
end_hunk_0
