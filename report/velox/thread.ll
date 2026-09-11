Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/thread?download=true
inline.NumInlined: 1278
inline.NumDeleted: 518
begin_hunk_0_@_ZN5boost6thread20physical_concurrencyEv:bb.a
  br i1 %exitcond.not.i.i.i53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.thread.i54, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i48, !llvm.loop !204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.i55: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i48
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.0710.i.i.i49 ; 2 uses
  %i.dz = icmp eq i64 %.0710.i.i.i49, -1
  br i1 %i.dz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.thread.i54, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.thread.i54: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.i55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.u, ptr %9, align 8, !tbaa !26, !alias.scope !242
  store i64 0, ptr %i.v, align 8, !tbaa !32, !alias.scope !242
  store i8 0, ptr %i.u, align 8, !tbaa !31, !alias.scope !242
  br label %_ZN5boost13thread_detail11string_trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit74

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7.i56: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.i55, %bb.af
  %.1.i.i.in.i57 = phi i64 [ %.1.i.i.i58, %bb.af ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.i55 ] ; 2 uses
  %.1.i.i.i58 = add i64 %.1.i.i.in.i57, -1        ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.1.i.i.i58
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !31, !noalias !242 ; 2 uses
  %i.ec = zext nneg i8 %i.eb to i64
  %memchr.bounds21.i59 = icmp ugt i8 %i.eb, 63
  %i.ed = shl nuw i64 1, %i.ec
  %i.ee = and i64 %i.ed, 4294977024
  %memchr.bits22.i60 = icmp eq i64 %i.ee, 0
  %memchr.not23.i61 = select i1 %memchr.bounds21.i59, i1 true, i1 %memchr.bits22.i60
  br i1 %memchr.not23.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit.i63, label %bb.af

bb.af:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7.i56
  %.not15.i.i.i62 = icmp eq i64 %.1.i.i.i58, 0
  br i1 %.not15.i.i.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit.i63, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7.i56, !llvm.loop !205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit.i63: ; preds = %bb.af, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7.i56
  %.010.i.i.i64 = phi i64 [ %.1.i.i.in.i57, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i7.i56 ], [ 0, %bb.af ]
  %i.ef = sub i64 %.010.i.i.i64, %.0710.i.i.i49
  store ptr %i.u, ptr %9, align 8, !tbaa !26, !alias.scope !243
  %i.eg = sub nuw i64 %i.dq, %.0710.i.i.i49
  %spec.select.i.i.i.i65 = call noundef i64 @llvm.umin.i64(i64 %i.ef, i64 %i.eg) ; 8 uses
  %i.eh = icmp ugt i64 %spec.select.i.i.i.i65, 15
  br i1 %i.eh, label %bb.ag, label %._crit_edge.i.i.i.i66

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit.i63
  %i.ei = icmp slt i64 %spec.select.i.i.i.i65, 0
  br i1 %i.ei, label %.noexc10.i.i.i70, label %bb.ah

.noexc10.i.i.i70:                                 ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #34
          to label %.noexc71 unwind label %.loopexit.split-lp155

.noexc71:                                         ; preds = %.noexc10.i.i.i70
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.ej = add nuw i64 %spec.select.i.i.i.i65, 1   ; 2 uses
  %i.ek = icmp slt i64 %i.ej, 0
  br i1 %i.ek, label %.noexc11.i.i.i69, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i68, !prof !27

.noexc11.i.i.i69:                                 ; preds = %bb.ah
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc72 unwind label %.loopexit.split-lp155

.noexc72:                                         ; preds = %.noexc11.i.i.i69
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i68: ; preds = %bb.ah
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #35
          to label %.noexc73 unwind label %.loopexit154 ; 2 uses

.noexc73:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i68
  store ptr %i.el, ptr %9, align 8, !tbaa !30, !alias.scope !243
  store i64 %spec.select.i.i.i.i65, ptr %i.u, align 8, !tbaa !31, !alias.scope !243
  br label %._crit_edge.i.i.i.i66

._crit_edge.i.i.i.i66:                            ; preds = %.noexc73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit.i63
  %i.em = phi ptr [ %i.el, %.noexc73 ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEPKcm.exit.i63 ] ; 3 uses
  switch i64 %spec.select.i.i.i.i65, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i67
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i66
  %i.en = load i8, ptr %i.dy, align 1, !tbaa !31
  store i8 %i.en, ptr %i.em, align 1, !tbaa !31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i67

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i66
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.em, ptr nonnull align 1 %i.dy, i64 %spec.select.i.i.i.i65, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i67: ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i.i.i66
  store i64 %spec.select.i.i.i.i65, ptr %i.v, align 8, !tbaa !32, !alias.scope !243
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 %spec.select.i.i.i.i65
  store i8 0, ptr %i.eo, align 1, !tbaa !31
  br label %_ZN5boost13thread_detail11string_trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit74

_ZN5boost13thread_detail11string_trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit74: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcm.exit.thread.i54
  %i.ep = load ptr, ptr %7, align 8, !tbaa !30    ; 6 uses
  %i.eq = icmp eq ptr %i.ep, %i.q
  %i.er = load ptr, ptr %9, align 8, !tbaa !30    ; 5 uses
  %i.es = icmp eq ptr %i.er, %i.u                 ; 2 uses
  %.pre266 = load i64, ptr %i.v, align 8, !tbaa !32 ; 5 uses
  br i1 %i.eq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i80: ; preds = %_ZN5boost13thread_detail11string_trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit74
  br i1 %i.es, label %bb.ak, label %.thread.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i75: ; preds = %_ZN5boost13thread_detail11string_trimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit74
  br i1 %i.es, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i76

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i80
  %i.et = icmp ult i64 %.pre266, 16
  call void @llvm.assume(i1 %i.et)
  switch i64 %.pre266, label %bb.am [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i78
    i64 1, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.eu = load i8, ptr %i.er, align 1, !tbaa !31
  store i8 %i.eu, ptr %i.ep, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i78

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ep, ptr align 1 %i.er, i64 %.pre266, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i78: ; preds = %bb.am, %bb.al, %bb.ak
  %i.ev = load i64, ptr %i.v, align 8, !tbaa !32  ; 2 uses
  store i64 %i.ev, ptr %i.r, align 8, !tbaa !32
  %i.ew = load ptr, ptr %7, align 8, !tbaa !30
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i8 0, ptr %i.ex, align 1, !tbaa !31
  %.pre.i79 = load ptr, ptr %9, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit82

.thread.i81:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i80
  store ptr %i.er, ptr %7, align 8, !tbaa !30
  store i64 %.pre266, ptr %i.r, align 8, !tbaa !32
  %i.ey = load i64, ptr %i.u, align 8, !tbaa !31
  store i64 %i.ey, ptr %i.q, align 8, !tbaa !31
  br label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i76: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i75
  %i.ez = load i64, ptr %i.q, align 8, !tbaa !31
  store ptr %i.er, ptr %7, align 8, !tbaa !30
  store i64 %.pre266, ptr %i.r, align 8, !tbaa !32
  %i.fa = load i64, ptr %i.u, align 8, !tbaa !31
  store i64 %i.fa, ptr %i.q, align 8, !tbaa !31
  %.not.i77 = icmp eq ptr %i.ep, null
  br i1 %.not.i77, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i76
  store ptr %i.ep, ptr %9, align 8, !tbaa !30
  store i64 %i.ez, ptr %i.u, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit82

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i76, %.thread.i81
  store ptr %i.u, ptr %9, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i78, %bb.an, %bb.ao
  %i.fb = phi ptr [ %.pre.i79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i78 ], [ %i.ep, %bb.an ], [ %i.u, %bb.ao ]
  store i64 0, ptr %i.v, align 8, !tbaa !32
  store i8 0, ptr %i.fb, align 1, !tbaa !31
  %i.fc = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.u
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit82
  %i.fe = load i64, ptr %i.u, align 8, !tbaa !31
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.fg = load i64, ptr %i.p, align 8, !tbaa !32  ; 6 uses
  %i.fh = load i64, ptr %i.b, align 8, !tbaa !32
  %i.fi = icmp eq i64 %i.fg, %i.fh
  br i1 %i.fi, label %bb.ap, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread130

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.fj = icmp eq i64 %i.fg, 0
  br i1 %i.fj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.ap
  %i.fk = load ptr, ptr %1, align 8, !tbaa !30
  %i.fl = load ptr, ptr %6, align 8, !tbaa !30
  %bcmp.i = call i32 @bcmp(ptr %i.fl, ptr %i.fk, i64 %i.fg)
  %i.fm = icmp eq i32 %bcmp.i, 0
  br i1 %i.fm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread130

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.ap, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  store i32 0, ptr %4, align 4, !tbaa !65
  %i.fn = load i64, ptr %i.r, align 8, !tbaa !32
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt1, label %bb.aq

bb.aq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.fp = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !31  ; 2 uses
  %.not32.i = icmp eq i8 %i.fq, 0
  br i1 %.not32.i, label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt2, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aq, %bb.ar
  %i.fr = phi i8 [ %i.fz, %bb.ar ], [ %i.fq, %bb.aq ] ; 2 uses
  %.02133.i = phi ptr [ %i.fy, %bb.ar ], [ %i.fp, %bb.aq ]
  %i.fs = phi i32 [ %i.fx, %bb.ar ], [ 0, %bb.aq ] ; 2 uses
  %i.ft = add i8 %i.fr, -58
  %or.cond.i = icmp ult i8 %i.ft, -10
  %i.fu = icmp ugt i32 %i.fs, 429496728
  %or.cond40.i = select i1 %or.cond.i, i1 true, i1 %i.fu
  br i1 %or.cond40.i, label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt1, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i
  %10 = zext nneg i8 %i.fr to i32
  %i.fv = add nsw i32 %10, -48
  %i.fw = mul nuw i32 %i.fs, 10
  %i.fx = add nuw i32 %i.fv, %i.fw                ; 2 uses
  store i32 %i.fx, ptr %4, align 4, !tbaa !65
  %i.fy = getelementptr inbounds nuw i8, ptr %.02133.i, i64 1 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !31  ; 2 uses
  %.not.i86 = icmp eq i8 %i.fz, 0
  br i1 %.not.i86, label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt2, label %.lr.ph.i, !llvm.loop !212

.loopexit139:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %lpad.loopexit141 = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

.loopexit.split-lp140:                            ; preds = %.noexc10.i.i, %.noexc11.i.i
  %lpad.loopexit.split-lp142 = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

.loopexit144:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i33
  %lpad.loopexit146 = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

.loopexit.split-lp145:                            ; preds = %bb.n, %.noexc10.i.i35, %.noexc11.i.i34
  %lpad.loopexit.split-lp147 = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

.loopexit149:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  %lpad.loopexit151 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.as

.loopexit.split-lp150:                            ; preds = %.noexc10.i.i.i, %.noexc11.i.i.i
  %lpad.loopexit.split-lp152 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp150, %.loopexit149
  %lpad.phi153 = phi { ptr, i32 } [ %lpad.loopexit151, %.loopexit149 ], [ %lpad.loopexit.split-lp152, %.loopexit.split-lp150 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.ay

.loopexit154:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i68
  %lpad.loopexit156 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.at

.loopexit.split-lp155:                            ; preds = %.noexc10.i.i.i70, %.noexc11.i.i.i69
  %lpad.loopexit.split-lp157 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.at

bb.at:                                            ; preds = %.loopexit.split-lp155, %.loopexit154
  %lpad.phi158 = phi { ptr, i32 } [ %lpad.loopexit156, %.loopexit154 ], [ %lpad.loopexit.split-lp157, %.loopexit.split-lp155 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.ay

bb.au:                                            ; preds = %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit97
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ay

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.gb = load i64, ptr %i.e, align 8, !tbaa !32
  %i.gc = icmp eq i64 %i.fg, %i.gb
  br i1 %i.gc, label %bb.av, label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt2

bb.av:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread130
  %i.gd = icmp eq i64 %i.fg, 0
  br i1 %i.gd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit88.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit88

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit88: ; preds = %bb.av
  %i.ge = load ptr, ptr %2, align 8, !tbaa !30
  %i.gf = load ptr, ptr %6, align 8, !tbaa !30
  %bcmp.i87 = call i32 @bcmp(ptr %i.gf, ptr %i.ge, i64 %i.fg)
  %i.gg = icmp eq i32 %bcmp.i87, 0
  br i1 %i.gg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit88.thread, label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt2

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit88.thread: ; preds = %bb.av, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit88
  store i32 0, ptr %i.l, align 4, !tbaa !65
  %i.gh = load i64, ptr %i.r, align 8, !tbaa !32
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt1, label %bb.aw

bb.aw:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit88.thread
  %i.gj = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !31  ; 2 uses
  %.not32.i89 = icmp eq i8 %i.gk, 0
  br i1 %.not32.i89, label %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit97, label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %bb.aw, %bb.ax
  %i.gl = phi i8 [ %i.gt, %bb.ax ], [ %i.gk, %bb.aw ] ; 2 uses
  %.02133.i91 = phi ptr [ %i.gs, %bb.ax ], [ %i.gj, %bb.aw ]
  %i.gm = phi i32 [ %i.gr, %bb.ax ], [ 0, %bb.aw ] ; 2 uses
  %i.gn = add i8 %i.gl, -58
  %or.cond.i92 = icmp ult i8 %i.gn, -10
  %i.go = icmp ugt i32 %i.gm, 429496728
  %or.cond40.i93 = select i1 %or.cond.i92, i1 true, i1 %i.go
  br i1 %or.cond40.i93, label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt1, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i90
  %11 = zext nneg i8 %i.gl to i32
  %i.gp = add nsw i32 %11, -48
  %i.gq = mul nuw i32 %i.gm, 10
  %i.gr = add nuw i32 %i.gp, %i.gq                ; 2 uses
  store i32 %i.gr, ptr %i.l, align 4, !tbaa !65
  %i.gs = getelementptr inbounds nuw i8, ptr %.02133.i91, i64 1 ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !31  ; 2 uses
  %.not.i96 = icmp eq i8 %i.gt, 0
  br i1 %.not.i96, label %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit97, label %.lr.ph.i90, !llvm.loop !212

_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit97: ; preds = %bb.ax, %bb.aw
  %i.gu = invoke { ptr, i8 } @_ZNSt8_Rb_treeISt4pairIjjES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt2 unwind label %bb.au ; 0 uses

_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt1: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit88.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %.lr.ph.i90, %.lr.ph.i
  %i.gv = call i64 @sysconf(i32 noundef 84) #33
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.gw, i32 0)
  %i.gy = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.q
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.jt1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.jt1

_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt2: ; preds = %bb.ar, %bb.aq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit88, %_ZN5boost13thread_detail18string_to_unsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit97, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread130
  %i.ha = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.q
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.jt2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.jt2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.jt1: ; preds = %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt1
  %i.hc = load i64, ptr %i.q, align 8, !tbaa !31
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.jt1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.jt2: ; preds = %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt2
  %i.he = load i64, ptr %i.q, align 8, !tbaa !31
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.jt2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.jt1: ; preds = %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.hg = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.o
  br i1 %i.hh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i103.jt1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.jt1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.jt2: ; preds = %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE6insertERKS1_.exit.jt2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.hi = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.o
  br i1 %i.hj, label %.outer.backedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.jt2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.jt1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.jt1
  %i.hk = load i64, ptr %i.o, align 8, !tbaa !31
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hl) #37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i103.jt1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.jt2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.jt2
  %i.hm = load i64, ptr %i.o, align 8, !tbaa !31
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hn) #37
  br label %.outer.backedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i103.jt1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.jt1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %.loopexit159

.outer.backedge:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.jt2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %.outer.backedge405

bb.ay:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.pn = phi { ptr, i32 } [ %i.ga, %bb.au ], [ %lpad.phi158, %bb.at ], [ %lpad.phi153, %bb.as ] ; 2 uses
  %i.ho = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.q
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.ay
  %i.hq = load i64, ptr %i.q, align 8, !tbaa !31
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hr) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.ay, %.loopexit144, %.loopexit.split-lp145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %lpad.loopexit.split-lp147, %.loopexit.split-lp145 ], [ %lpad.loopexit146, %.loopexit144 ], [ %.pn, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.hs = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.o
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.hu = load i64, ptr %i.o, align 8, !tbaa !31
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %.loopexit139, %.loopexit.split-lp140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %lpad.loopexit.split-lp142, %.loopexit.split-lp140 ], [ %lpad.loopexit141, %.loopexit139 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.bd

bb.az:                                            ; preds = %bb.e
  %i.hw = load i64, ptr %i.k, align 8, !tbaa !97  ; 2 uses
  %.not = icmp eq i64 %i.hw, 0
  br i1 %.not, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hx = trunc i64 %i.hw to i32
  br label %.loopexit159

bb.bb:                                            ; preds = %bb.az
  %i.hy = call i64 @sysconf(i32 noundef 84) #33
  %i.hz = trunc i64 %i.hy to i32
  %i.ia = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.hz, i32 0)
  br label %.loopexit159

.loopexit159:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i103.jt1, %.thread, %bb.ba, %bb.bb
  %.3 = phi i32 [ %i.be, %.thread ], [ %i.hx, %bb.ba ], [ %i.ia, %bb.bb ], [ %i.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i103.jt1 ]
  %i.ib = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.m
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %.loopexit159
  %i.id = load i64, ptr %i.m, align 8, !tbaa !31
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %.loopexit159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.if = load ptr, ptr %i.h, align 8, !tbaa !53
  invoke void @_ZNSt8_Rb_treeISt4pairIjjES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.if)
          to label %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EED2Ev.exit unwind label %bb.bc

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #36
  unreachable

_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.ii = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.d
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EED2Ev.exit
  %i.ik = load i64, ptr %i.d, align 8, !tbaa !31
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.im = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.a
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.io = load i64, ptr %i.a, align 8, !tbaa !31
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  br label %bb.bf

bb.bd:                                            ; preds = %.loopexit138, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %lpad.loopexit, %.loopexit138 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.iq = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.m
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.bd
  %i.is = load i64, ptr %i.m, align 8, !tbaa !31
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZNSt3setISt4pairIjjESt4lessIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.iu = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.d
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
  %i.iw = load i64, ptr %i.d, align 8, !tbaa !31
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.iy = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.a
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.ja = load i64, ptr %i.a, align 8, !tbaa !31
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) #33
  br label %bb.be

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %bb.g
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %i.au, %bb.g ]
  %.6 = extractvalue { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  %i.jc = call ptr @__cxa_begin_catch(ptr %.6) #33 ; 0 uses
  %i.jd = call i64 @sysconf(i32 noundef 84) #33
  %i.je = trunc i64 %i.jd to i32
end_hunk_0
