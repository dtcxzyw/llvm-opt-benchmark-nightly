Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpp-httplib/original/httplib?download=true
inline.NumInlined: 21632
inline.NumDeleted: 6599
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZNK7httplib7Request21get_param_value_countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE5countERKS7_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread10.i, %.lr.ph.i.split.us, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %spec.select, %.lr.ph.i.split.us ], [ %i.t, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toIS7_EE10keys_equalERKS7_SC_.exit.thread10.i ]
  ret i64 %.0.lcssa.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7httplib7Request22is_multipart_form_dataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(776) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 1 dereferenceable(12) @.str.107, i64 12, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 12, ptr %i.c, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 0, ptr %i.d, align 4, !tbaa !65
  call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = invoke noundef ptr @_ZN7httplib6detail16get_header_valueERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_PKcm(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.24, i64 noundef 0)
          to label %.noexc9 unwind label %bb.g    ; 4 uses

.noexc9:                                          ; preds = %._crit_edge.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !63, !alias.scope !1198
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.noexc.i8, label %bb.a

.noexc.i8:                                        ; preds = %.noexc9
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.355) #47
          to label %.noexc10 unwind label %bb.g

.noexc10:                                         ; preds = %.noexc.i8
  unreachable

bb.a:                                             ; preds = %.noexc9
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !1198
  store i64 %i.i, ptr %i.a, align 8, !tbaa !78, !noalias !1198
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11 unwind label %bb.g   ; 2 uses

.noexc11:                                         ; preds = %.noexc.i.i
  store ptr %i.k, ptr %1, align 8, !tbaa !77, !alias.scope !1198
  %i.l = load i64, ptr %i.a, align 8, !tbaa !78, !noalias !1198
  store i64 %i.l, ptr %i.g, align 8, !tbaa !65, !alias.scope !1198
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc11, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc11 ], [ %i.g, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !65
  store i8 %i.n, ptr %i.m, align 1, !tbaa !65
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.f, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !78, !noalias !1198 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !64, !alias.scope !1198
  %i.q = load ptr, ptr %1, align 8, !tbaa !77, !alias.scope !1198
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !1198
  %i.s = load ptr, ptr %2, align 8, !tbaa !77     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.b
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.b, align 8, !tbaa !65
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN7httplib6detail18extract_media_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3mapIS6_S6_St4lessIS6_ESaISt4pairIS7_S6_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef null)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !64   ; 2 uses
  %i.y = icmp eq i64 %i.x, 19
  %.pre = load ptr, ptr %3, align 8, !tbaa !77    ; 4 uses
  br i1 %i.y, label %bb.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.f:                                             ; preds = %bb.e
  %i.z = load i128, ptr %.pre, align 1
  %i.aa = xor i128 %i.z, 133158672786259349814934268896445494637
  %i.ab = getelementptr i8, ptr %.pre, i64 3
  %i.ac = load i128, ptr %i.ab, align 1
  %i.ad = xor i128 %i.ac, 129539397357333824076073098603509344628
  %i.ae = or i128 %i.aa, %i.ad
  %i.af = icmp ne i128 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e, %bb.f
  %i.ai = phi i1 [ false, %bb.e ], [ %i.ah, %bb.f ]
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %.pre, %i.aj
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i13: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.al = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.al)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !65
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.an) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ao = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.g
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.aq = load i64, ptr %i.g, align 8, !tbaa !65
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret i1 %i.ai

bb.g:                                             ; preds = %.noexc.i.i, %.noexc.i8, %._crit_edge.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %2, align 8, !tbaa !77    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.b
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.g
  %i.av = load i64, ptr %i.b, align 8, !tbaa !65
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ay = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.g
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.h
  %i.ba = load i64, ptr %i.g, align 8, !tbaa !65
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn6 = phi { ptr, i32 } [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ]
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7httplib17MultipartFormData9get_fieldERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 noundef %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.httplib::detail::insertion_ordered_multimap<httplib::FormField, std::equal_to<std::__cxx11::basic_string<char>>>::iterator_t", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1201, !noalias !1204 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !1207, !noalias !1204 ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, %i.d
  %.pre.i = ptrtoint ptr %i.c to i64
  %.pre24.i = ptrtoint ptr %i.d to i64
  %.pre26.i = sub i64 %.pre.i, %.pre24.i
  %.pre28.i = sdiv i64 %.pre26.i, 120             ; 6 uses
  br i1 %.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64, !noalias !1204
  %.fr19.i = freeze i64 %i.f                      ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !noalias !1204
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.pre28.i, i64 1) ; 2 uses
  %i.h = icmp eq i64 %.fr19.i, 0
  br i1 %i.h, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i
  %.0711.i.us.i = phi i64 [ %i.m, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw [120 x i8], ptr %i.d, i64 %.0711.i.us.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !64, !noalias !1204
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i

_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.m = add nuw i64 %.0711.i.us.i, 1             ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.m, %umax.i.i
  br i1 %exitcond.not.i.us.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit, label %.lr.ph.i.split.us.i, !llvm.loop !1208

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i
  %.0711.i.i = phi i64 [ %i.t, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw [120 x i8], ptr %i.d, i64 %.0711.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !64, !noalias !1204
  %i.q = icmp eq i64 %i.p, %.fr19.i
  br i1 %i.q, label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i, label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !77, !noalias !1204
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.r, ptr %i.g, i64 %.fr19.i), !noalias !1204
  %i.s = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i, %.lr.ph.i.split.i
  %i.t = add nuw i64 %.0711.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %umax.i.i
  br i1 %exitcond.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit, label %.lr.ph.i.split.i, !llvm.loop !1208

_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i, %.lr.ph.i.split.us.i
  %.us-phi.i = phi i64 [ %.0711.i.us.i, %.lr.ph.i.split.us.i ], [ %.0711.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i ] ; 3 uses
  %i.u = icmp eq i64 %.us-phi.i, -1
  %spec.select.i = select i1 %i.u, i64 %.pre28.i, i64 %.us-phi.i
  br label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit

_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i, %bb.a, %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i
  %.us-phi.sink42.i = phi i64 [ %.pre28.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i ], [ %spec.select.i, %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i ], [ 0, %bb.a ], [ %.pre28.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i ]
  %.us-phi.sink.i = phi i64 [ -1, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i ], [ %.us-phi.i, %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i ], [ -1, %bb.a ], [ -1, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.d, ptr %4, align 8, !tbaa !1209
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %.us-phi.sink42.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !78
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.pre28.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !78
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %.us-phi.sink.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !78
  call void @_ZSt9__advanceIN7httplib6detail26insertion_ordered_multimapINS0_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairISA_S3_EEElEvRT_T0_St26bidirectional_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %3)
  %i.v = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !1210 ; 2 uses
  %.not = icmp eq i64 %i.v, %.pre28.i
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit
  %i.w = load ptr, ptr %4, align 8, !tbaa !1212
  %i.x = getelementptr inbounds nuw [120 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !63
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !77  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !78
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !77
  %i.af = load i64, ptr %i.a, align 8, !tbaa !78
  store i64 %i.af, ptr %i.z, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.ag = phi ptr [ %i.ae, %.noexc.i ], [ %i.z, %bb.b ] ; 2 uses
  switch i64 %i.ac, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !65
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !64
  %i.ak = load ptr, ptr %0, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.f

bb.e:                                             ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !64
  store i8 0, ptr %i.am, align 8, !tbaa !65
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7httplib17MultipartFormData10get_fieldsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.104") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1201, !noalias !1213 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !1207, !noalias !1213 ; 8 uses
  %.not.i.i = icmp eq ptr %i.c, %i.d
  %.pre.i = ptrtoint ptr %i.c to i64
  %.pre24.i = ptrtoint ptr %i.d to i64
  %.pre26.i = sub i64 %.pre.i, %.pre24.i
  %.pre28.i = sdiv i64 %.pre26.i, 120             ; 7 uses
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64, !noalias !1213
  %.fr19.i = freeze i64 %i.f                      ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !noalias !1213
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.pre28.i, i64 1) ; 2 uses
  %i.h = icmp eq i64 %.fr19.i, 0
  br i1 %i.h, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i
  %.0711.i.us.i = phi i64 [ %i.m, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw [120 x i8], ptr %i.d, i64 %.0711.i.us.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !64, !noalias !1213
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit, label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i

_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.m = add nuw i64 %.0711.i.us.i, 1             ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.m, %umax.i.i
  br i1 %exitcond.not.i.us.i, label %._crit_edge, label %.lr.ph.i.split.us.i, !llvm.loop !1208

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i
  %.0711.i.i = phi i64 [ %i.t, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw [120 x i8], ptr %i.d, i64 %.0711.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !64, !noalias !1213
  %i.q = icmp eq i64 %i.p, %.fr19.i
  br i1 %i.q, label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i, label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !77, !noalias !1213
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.r, ptr %i.g, i64 %.fr19.i), !noalias !1213
  %i.s = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit, label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i, %.lr.ph.i.split.i
  %i.t = add nuw i64 %.0711.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %umax.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge, label %.lr.ph.i.split.i, !llvm.loop !1208

_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i, %.lr.ph.i.split.us.i
  %.us-phi.i = phi i64 [ %.0711.i.us.i, %.lr.ph.i.split.us.i ], [ %.0711.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i ]
  %i.u = freeze i64 %.us-phi.i                    ; 4 uses
  %i.v = icmp eq i64 %i.u, -1
  %.not3680 = icmp eq i64 %i.u, %.pre28.i
  %.not36 = or i1 %i.v, %.not3680
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw [120 x i8], ptr %i.d, i64 %i.u ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EEppEi.exit, %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.i, %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.us.i, %bb.a, %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit
  ret void

.split:                                           ; preds = %bb.e, %.noexc.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.aa

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EEppEi.exit
  %.sroa.7.037 = phi i64 [ %.sroa.7.3, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EEppEi.exit ], [ %i.u, %.lr.ph ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [120 x i8], ptr %i.d, i64 %.sroa.7.037 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 2 uses
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !685 ; 8 uses
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !697
  %.not.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !63
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !77 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !78
  %i.aj = icmp ugt i64 %i.ai, 15
  br i1 %i.aj, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.ak = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %.split   ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !77
  %i.al = load i64, ptr %i.a, align 8, !tbaa !78
  store i64 %i.al, ptr %i.af, align 8, !tbaa !65
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.b
  %i.am = phi ptr [ %i.ak, %.noexc ], [ %i.af, %bb.b ] ; 2 uses
  switch i64 %i.ai, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.an = load i8, ptr %i.ag, align 1, !tbaa !65
  store i8 %i.an, ptr %i.am, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ag, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !64
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !77
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !685
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store ptr %i.at, ptr %i.w, align 8, !tbaa !685
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.e:                                             ; preds = %.lr.ph.split
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.split

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.e
  %.not.i.i9 = icmp ult i64 %.sroa.7.037, %.pre28.i
  br i1 %.not.i.i9, label %bb.f, label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EEppEi.exit

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.au = add nuw i64 %.sroa.7.037, 1             ; 4 uses
  %i.av = icmp ult i64 %i.au, %.pre28.i
  br i1 %i.av, label %.lr.ph.i.i10, label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EEppEi.exit

.lr.ph.i.i10:                                     ; preds = %bb.f
  %i.aw = load i64, ptr %i.z, align 8, !tbaa !64, !noalias !1216
  %.fr1.i = freeze i64 %i.aw                      ; 3 uses
  %i.ax = icmp eq i64 %.fr1.i, 0
  br i1 %i.ax, label %.lr.ph.i.split.us.i13, label %.lr.ph.i.split.i11

.lr.ph.i.split.us.i13:                            ; preds = %.lr.ph.i.i10, %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.us.i
  %.sroa.7.2 = phi i64 [ %i.bc, %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.us.i ], [ %i.au, %.lr.ph.i.i10 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [120 x i8], ptr %i.d, i64 %.sroa.7.2
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !64, !noalias !1216
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EEppEi.exit, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.us.i

_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.us.i: ; preds = %.lr.ph.i.split.us.i13
  %i.bc = add i64 %.sroa.7.2, 1                   ; 2 uses
  %exitcond.not.i.us.i14 = icmp eq i64 %i.bc, %.pre28.i
  br i1 %exitcond.not.i.us.i14, label %._crit_edge, label %.lr.ph.i.split.us.i13, !llvm.loop !1219

.lr.ph.i.split.i11:                               ; preds = %.lr.ph.i.i10, %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.i
  %.sroa.7.1 = phi i64 [ %i.bk, %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.i ], [ %i.au, %.lr.ph.i.i10 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [120 x i8], ptr %i.d, i64 %.sroa.7.1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !64, !noalias !1216
  %i.bg = icmp eq i64 %i.bf, %.fr1.i
  br i1 %i.bg, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.i

_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.i.i: ; preds = %.lr.ph.i.split.i11
  %i.bh = load ptr, ptr %i.y, align 8, !tbaa !77, !noalias !1216
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !77, !noalias !1216
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.bi, ptr %i.bh, i64 %.fr1.i), !noalias !1216
  %i.bj = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.bj, label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EEppEi.exit, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.i

_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.i: ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.i.i, %.lr.ph.i.split.i11
  %i.bk = add i64 %.sroa.7.1, 1                   ; 2 uses
  %exitcond.not.i.i12 = icmp eq i64 %i.bk, %.pre28.i
  br i1 %exitcond.not.i.i12, label %._crit_edge, label %.lr.ph.i.split.i11, !llvm.loop !1219

_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EEppEi.exit: ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.i.i, %.lr.ph.i.split.us.i13, %bb.f, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.sroa.7.3 = phi i64 [ %i.au, %bb.f ], [ %.sroa.7.037, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ], [ %.sroa.7.2, %.lr.ph.i.split.us.i13 ], [ %.sroa.7.1, %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.i.i ] ; 2 uses
  %.not = icmp eq i64 %.sroa.7.3, %.pre28.i
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1220
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7httplib17MultipartFormData9has_fieldERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1201, !noalias !1221 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1207, !noalias !1221 ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, %i.c
  %.pre.i = ptrtoint ptr %i.b to i64
  %.pre12.i = ptrtoint ptr %i.c to i64
  %.pre14.i = sub i64 %.pre.i, %.pre12.i
  %.pre16.i = sdiv i64 %.pre14.i, 120             ; 5 uses
  br i1 %.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4findERKS9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64, !noalias !1221
  %.fr7.i = freeze i64 %i.e                       ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !noalias !1221
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.pre16.i, i64 1) ; 2 uses
  %i.g = icmp eq i64 %.fr7.i, 0
  br i1 %i.g, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i
  %.0711.i.us.i = phi i64 [ %i.l, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [120 x i8], ptr %i.c, i64 %.0711.i.us.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !64, !noalias !1221
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i

_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.l = add nuw i64 %.0711.i.us.i, 1             ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.l, %umax.i.i
  br i1 %exitcond.not.i.us.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4findERKS9_.exit, label %.lr.ph.i.split.us.i, !llvm.loop !1208

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i
  %.0711.i.i = phi i64 [ %i.s, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %i.c, i64 %.0711.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !64, !noalias !1221
  %i.p = icmp eq i64 %i.o, %.fr7.i
  br i1 %i.p, label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i, label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !77, !noalias !1221
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.f, i64 %.fr7.i), !noalias !1221
  %i.r = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i, %.lr.ph.i.split.i
  %i.s = add nuw i64 %.0711.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.s, %umax.i.i
  br i1 %exitcond.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4findERKS9_.exit, label %.lr.ph.i.split.i, !llvm.loop !1208

_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i, %.lr.ph.i.split.us.i
  %.us-phi.i = phi i64 [ %.0711.i.us.i, %.lr.ph.i.split.us.i ], [ %.0711.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i ] ; 2 uses
  %i.t = icmp eq i64 %.us-phi.i, -1
  %spec.select.i = select i1 %i.t, i64 %.pre16.i, i64 %.us-phi.i
  br label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4findERKS9_.exit

_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4findERKS9_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i, %bb.a, %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i
  %.us-phi.sink28.i = phi i64 [ %.pre16.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i ], [ %spec.select.i, %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i ], [ 0, %bb.a ], [ %.pre16.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i ]
  %i.u = icmp ne i64 %.us-phi.sink28.i, %.pre16.i
  ret i1 %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK7httplib17MultipartFormData15get_field_countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1209   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1209 ; 3 uses
  %.not12.i = icmp eq ptr %i.a, %i.c
  br i1 %.not12.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE5countERKS9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64
  %.fr2 = freeze i64 %i.e                         ; 3 uses
  %i.f = load ptr, ptr %1, align 8
  %i.g = icmp eq i64 %.fr2, 0
  br i1 %i.g, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %.lr.ph.i.split.us
  %.014.i.us = phi i64 [ %spec.select, %.lr.ph.i.split.us ], [ 0, %.lr.ph.i ]
  %.sroa.06.013.i.us = phi ptr [ %i.l, %.lr.ph.i.split.us ], [ %i.a, %.lr.ph.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i.us, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !64
  %i.j = icmp eq i64 %i.i, 0
  %i.k = zext i1 %i.j to i64
  %spec.select = add i64 %.014.i.us, %i.k         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i.us, i64 120 ; 2 uses
  %.not.i.us = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.us, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE5countERKS9_.exit, label %.lr.ph.i.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread10.i
  %.014.i = phi i64 [ %i.s, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread10.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.06.013.i = phi ptr [ %i.t, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread10.i ], [ %i.a, %.lr.ph.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !64
  %i.o = icmp eq i64 %i.n, %.fr2
  br i1 %i.o, label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread10.i

_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i: ; preds = %.lr.ph.i.split
  %i.p = load ptr, ptr %.sroa.06.013.i, align 8, !tbaa !77
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.f, i64 %.fr2)
  %bcmp.i.i.i.fr.i = freeze i32 %bcmp.i.i.i.i
  %i.q = icmp eq i32 %bcmp.i.i.i.fr.i, 0
  %i.r = zext i1 %i.q to i64
  %spec.select.i = add i64 %.014.i, %i.r
  br label %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread10.i

_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread10.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i, %.lr.ph.i.split
  %i.s = phi i64 [ %.014.i, %.lr.ph.i.split ], [ %spec.select.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 120 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE5countERKS9_.exit, label %.lr.ph.i.split

_ZNK7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE5countERKS9_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread10.i, %.lr.ph.i.split.us, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %spec.select, %.lr.ph.i.split.us ], [ %i.s, %_ZN7httplib6detail26insertion_ordered_multimapINS_9FormFieldESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread10.i ]
  ret i64 %.0.lcssa.i
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7httplib17MultipartFormData8get_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind noalias writable sret(%"struct.httplib::FormData") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZN7httplib6detail18get_multimap_valueINS0_26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEENT_11mapped_typeERKSD_RKSA_m(ptr dead_on_unwind writable sret(%"struct.httplib::FormData") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7httplib6detail18get_multimap_valueINS0_26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEENT_11mapped_typeERKSD_RKSA_m(ptr dead_on_unwind noalias writable sret(%"struct.httplib::FormData") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.httplib::detail::insertion_ordered_multimap<httplib::FormData, std::equal_to<std::__cxx11::basic_string<char>>>::iterator_t", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1224, !noalias !1227 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1230, !noalias !1227 ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, %i.c
  %.pre.i = ptrtoint ptr %i.b to i64
  %.pre24.i = ptrtoint ptr %i.c to i64
  %.pre26.i = sub i64 %.pre.i, %.pre24.i
  %.pre28.i = sdiv i64 %.pre26.i, 184             ; 6 uses
  br i1 %.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64, !noalias !1227
  %.fr19.i = freeze i64 %i.e                      ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !noalias !1227
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.pre28.i, i64 1) ; 2 uses
  %i.g = icmp eq i64 %.fr19.i, 0
  br i1 %i.g, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i
  %.0711.i.us.i = phi i64 [ %i.l, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [184 x i8], ptr %i.c, i64 %.0711.i.us.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !64, !noalias !1227
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i

_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.l = add nuw i64 %.0711.i.us.i, 1             ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.l, %umax.i.i
  br i1 %exitcond.not.i.us.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit, label %.lr.ph.i.split.us.i, !llvm.loop !1231

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i
  %.0711.i.i = phi i64 [ %i.s, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw [184 x i8], ptr %i.c, i64 %.0711.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !64, !noalias !1227
  %i.p = icmp eq i64 %i.o, %.fr19.i
  br i1 %i.p, label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i, label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !77, !noalias !1227
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.f, i64 %.fr19.i), !noalias !1227
  %i.r = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i, %.lr.ph.i.split.i
  %i.s = add nuw i64 %.0711.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.s, %umax.i.i
  br i1 %exitcond.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit, label %.lr.ph.i.split.i, !llvm.loop !1231

_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i, %.lr.ph.i.split.us.i
  %.us-phi.i = phi i64 [ %.0711.i.us.i, %.lr.ph.i.split.us.i ], [ %.0711.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i ] ; 3 uses
  %i.t = icmp eq i64 %.us-phi.i, -1
  %spec.select.i = select i1 %i.t, i64 %.pre28.i, i64 %.us-phi.i
  br label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit

_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i, %bb.a, %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i
  %.us-phi.sink42.i = phi i64 [ %.pre28.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i ], [ %spec.select.i, %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i ], [ 0, %bb.a ], [ %.pre28.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i ]
  %.us-phi.sink.i = phi i64 [ -1, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i ], [ %.us-phi.i, %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i ], [ -1, %bb.a ], [ -1, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.c, ptr %4, align 8, !tbaa !1232
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %.us-phi.sink42.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !78
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.pre28.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !78
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %.us-phi.sink.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !78
  call void @_ZSt9__advanceIN7httplib6detail26insertion_ordered_multimapINS0_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairISA_S3_EEElEvRT_T0_St26bidirectional_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %3)
  %i.u = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !1233 ; 2 uses
  %.not = icmp eq i64 %i.u, %.pre28.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit
  %i.v = load ptr, ptr %4, align 8, !tbaa !1235
  %i.w = getelementptr inbounds nuw [184 x i8], ptr %i.v, i64 %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  call void @_ZN7httplib8FormDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %i.x)
  br label %bb.d

bb.c:                                             ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.y, i8 0, i64 112, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.z, ptr %0, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !63
  store i8 0, ptr %i.ac, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !63
  store i8 0, ptr %i.ae, align 8, !tbaa !65
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !63
  store i8 0, ptr %i.ag, align 8, !tbaa !65
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7httplib17MultipartFormData9get_filesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.348") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1224, !noalias !1236 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !1230, !noalias !1236 ; 8 uses
  %.not.i.i = icmp eq ptr %i.c, %i.d
  %.pre.i = ptrtoint ptr %i.c to i64
  %.pre24.i = ptrtoint ptr %i.d to i64
  %.pre26.i = sub i64 %.pre.i, %.pre24.i
  %.pre28.i = sdiv i64 %.pre26.i, 184             ; 7 uses
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64, !noalias !1236
  %.fr19.i = freeze i64 %i.f                      ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !noalias !1236
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.pre28.i, i64 1) ; 2 uses
  %i.h = icmp eq i64 %.fr19.i, 0
  br i1 %i.h, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i
  %.0711.i.us.i = phi i64 [ %i.m, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw [184 x i8], ptr %i.d, i64 %.0711.i.us.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !64, !noalias !1236
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit, label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i

_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.m = add nuw i64 %.0711.i.us.i, 1             ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.m, %umax.i.i
  br i1 %exitcond.not.i.us.i, label %._crit_edge, label %.lr.ph.i.split.us.i, !llvm.loop !1231

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i
  %.0711.i.i = phi i64 [ %i.t, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw [184 x i8], ptr %i.d, i64 %.0711.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !64, !noalias !1236
  %i.q = icmp eq i64 %i.p, %.fr19.i
  br i1 %i.q, label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i, label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !77, !noalias !1236
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.r, ptr %i.g, i64 %.fr19.i), !noalias !1236
  %i.s = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit, label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i, %.lr.ph.i.split.i
  %i.t = add nuw i64 %.0711.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %umax.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge, label %.lr.ph.i.split.i, !llvm.loop !1231

_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i, %.lr.ph.i.split.us.i
  %.us-phi.i = phi i64 [ %.0711.i.us.i, %.lr.ph.i.split.us.i ], [ %.0711.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i ]
  %i.u = freeze i64 %.us-phi.i                    ; 4 uses
  %i.v = icmp eq i64 %i.u, -1
  %.not3680 = icmp eq i64 %i.u, %.pre28.i
  %.not36 = or i1 %i.v, %.not3680
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw [184 x i8], ptr %i.d, i64 %i.u ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EEppEi.exit, %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.i, %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.us.i, %bb.a, %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11equal_rangeERKS9_.exit
  ret void

.split:                                           ; preds = %bb.c, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN7httplib8FormDataESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %i.aa

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EEppEi.exit
  %.sroa.7.037 = phi i64 [ %.sroa.7.3, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EEppEi.exit ], [ %i.u, %.lr.ph ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [184 x i8], ptr %i.d, i64 %.sroa.7.037
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !1239 ; 3 uses
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !1242
  %.not.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  invoke void @_ZN7httplib8FormDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(152) %i.ad, ptr noundef nonnull align 8 dereferenceable(152) %i.ac)
          to label %.noexc unwind label %.split

.noexc:                                           ; preds = %bb.b
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !1239
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !1239
  br label %_ZNSt6vectorIN7httplib8FormDataESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %.lr.ph.split
  invoke void @_ZNSt6vectorIN7httplib8FormDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(152) %i.ac)
          to label %_ZNSt6vectorIN7httplib8FormDataESaIS1_EE9push_backERKS1_.exit unwind label %.split

_ZNSt6vectorIN7httplib8FormDataESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc, %bb.c
  %.not.i.i9 = icmp ult i64 %.sroa.7.037, %.pre28.i
  br i1 %.not.i.i9, label %bb.d, label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EEppEi.exit

bb.d:                                             ; preds = %_ZNSt6vectorIN7httplib8FormDataESaIS1_EE9push_backERKS1_.exit
  %i.ah = add nuw i64 %.sroa.7.037, 1             ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %.pre28.i
  br i1 %i.ai, label %.lr.ph.i.i10, label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EEppEi.exit

.lr.ph.i.i10:                                     ; preds = %bb.d
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !64, !noalias !1243
  %.fr1.i = freeze i64 %i.aj                      ; 3 uses
  %i.ak = icmp eq i64 %.fr1.i, 0
  br i1 %i.ak, label %.lr.ph.i.split.us.i13, label %.lr.ph.i.split.i11

.lr.ph.i.split.us.i13:                            ; preds = %.lr.ph.i.i10, %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.us.i
  %.sroa.7.2 = phi i64 [ %i.ap, %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.us.i ], [ %i.ah, %.lr.ph.i.i10 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [184 x i8], ptr %i.d, i64 %.sroa.7.2
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !64, !noalias !1243
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EEppEi.exit, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.us.i

_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.us.i: ; preds = %.lr.ph.i.split.us.i13
  %i.ap = add i64 %.sroa.7.2, 1                   ; 2 uses
  %exitcond.not.i.us.i14 = icmp eq i64 %i.ap, %.pre28.i
  br i1 %exitcond.not.i.us.i14, label %._crit_edge, label %.lr.ph.i.split.us.i13, !llvm.loop !1246

.lr.ph.i.split.i11:                               ; preds = %.lr.ph.i.i10, %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.i
  %.sroa.7.1 = phi i64 [ %i.ax, %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.i ], [ %i.ah, %.lr.ph.i.i10 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [184 x i8], ptr %i.d, i64 %.sroa.7.1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !64, !noalias !1243
  %i.at = icmp eq i64 %i.as, %.fr1.i
  br i1 %i.at, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.i

_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.i.i: ; preds = %.lr.ph.i.split.i11
  %i.au = load ptr, ptr %i.y, align 8, !tbaa !77, !noalias !1243
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !77, !noalias !1243
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.av, ptr %i.au, i64 %.fr1.i), !noalias !1243
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EEppEi.exit, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.i

_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.thread4.i.i: ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.i.i, %.lr.ph.i.split.i11
  %i.ax = add i64 %.sroa.7.1, 1                   ; 2 uses
  %exitcond.not.i.i12 = icmp eq i64 %i.ax, %.pre28.i
  br i1 %exitcond.not.i.i12, label %._crit_edge, label %.lr.ph.i.split.i11, !llvm.loop !1246

_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EEppEi.exit: ; preds = %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.i.i, %.lr.ph.i.split.us.i13, %bb.d, %_ZNSt6vectorIN7httplib8FormDataESaIS1_EE9push_backERKS1_.exit
  %.sroa.7.3 = phi i64 [ %i.ah, %bb.d ], [ %.sroa.7.037, %_ZNSt6vectorIN7httplib8FormDataESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.7.2, %.lr.ph.i.split.us.i13 ], [ %.sroa.7.1, %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10iterator_tIKSt4pairIS9_S2_EE7matchesEm.exit.i.i ] ; 2 uses
  %.not = icmp eq i64 %.sroa.7.3, %.pre28.i
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1247
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7httplib8FormDataESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1248   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1239 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7httplib8FormDataES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN7httplib8FormDataD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %.05.i.i) #23
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 152 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7httplib8FormDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1249

_ZSt8_DestroyIPN7httplib8FormDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1248
  br label %_ZSt8_DestroyIPN7httplib8FormDataES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN7httplib8FormDataES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7httplib8FormDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN7httplib8FormDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7httplib8FormDataESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7httplib8FormDataES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1242
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #46
  br label %_ZNSt12_Vector_baseIN7httplib8FormDataESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN7httplib8FormDataESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7httplib8FormDataES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7httplib17MultipartFormData8has_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1224, !noalias !1250 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !1230, !noalias !1250 ; 4 uses
  %.not.i.i = icmp eq ptr %i.c, %i.d
  %.pre.i = ptrtoint ptr %i.c to i64
  %.pre12.i = ptrtoint ptr %i.d to i64
  %.pre14.i = sub i64 %.pre.i, %.pre12.i
  %.pre16.i = sdiv i64 %.pre14.i, 184             ; 5 uses
  br i1 %.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4findERKS9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64, !noalias !1250
  %.fr7.i = freeze i64 %i.f                       ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !noalias !1250
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.pre16.i, i64 1) ; 2 uses
  %i.h = icmp eq i64 %.fr7.i, 0
  br i1 %i.h, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i
  %.0711.i.us.i = phi i64 [ %i.m, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw [184 x i8], ptr %i.d, i64 %.0711.i.us.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !64, !noalias !1250
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i

_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.m = add nuw i64 %.0711.i.us.i, 1             ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.m, %umax.i.i
  br i1 %exitcond.not.i.us.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4findERKS9_.exit, label %.lr.ph.i.split.us.i, !llvm.loop !1231

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i
  %.0711.i.i = phi i64 [ %i.t, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw [184 x i8], ptr %i.d, i64 %.0711.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !64, !noalias !1250
  %i.q = icmp eq i64 %i.p, %.fr7.i
  br i1 %i.q, label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i, label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !77, !noalias !1250
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.r, ptr %i.g, i64 %.fr7.i), !noalias !1250
  %i.s = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i

_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i, %.lr.ph.i.split.i
  %i.t = add nuw i64 %.0711.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %umax.i.i
  br i1 %exitcond.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4findERKS9_.exit, label %.lr.ph.i.split.i, !llvm.loop !1231

_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i, %.lr.ph.i.split.us.i
  %.us-phi.i = phi i64 [ %.0711.i.us.i, %.lr.ph.i.split.us.i ], [ %.0711.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i.i ] ; 2 uses
  %i.u = icmp eq i64 %.us-phi.i, -1
  %spec.select.i = select i1 %i.u, i64 %.pre16.i, i64 %.us-phi.i
  br label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4findERKS9_.exit

_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4findERKS9_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i, %bb.a, %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i
  %.us-phi.sink28.i = phi i64 [ %.pre16.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.us.i ], [ %spec.select.i, %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8index_ofERKS9_.exit.i ], [ 0, %bb.a ], [ %.pre16.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread9.i.i ]
  %i.v = icmp ne i64 %.us-phi.sink28.i, %.pre16.i
  ret i1 %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK7httplib17MultipartFormData14get_file_countERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1232 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1232 ; 3 uses
  %.not12.i = icmp eq ptr %i.b, %i.d
  br i1 %.not12.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE5countERKS9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64
  %.fr2 = freeze i64 %i.f                         ; 3 uses
  %i.g = load ptr, ptr %1, align 8
  %i.h = icmp eq i64 %.fr2, 0
  br i1 %i.h, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %.lr.ph.i.split.us
  %.014.i.us = phi i64 [ %spec.select, %.lr.ph.i.split.us ], [ 0, %.lr.ph.i ]
  %.sroa.06.013.i.us = phi ptr [ %i.m, %.lr.ph.i.split.us ], [ %i.b, %.lr.ph.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i.us, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !64
  %i.k = icmp eq i64 %i.j, 0
  %i.l = zext i1 %i.k to i64
  %spec.select = add i64 %.014.i.us, %i.l         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i.us, i64 184 ; 2 uses
  %.not.i.us = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.us, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE5countERKS9_.exit, label %.lr.ph.i.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread10.i
  %.014.i = phi i64 [ %i.t, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread10.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.06.013.i = phi ptr [ %i.u, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread10.i ], [ %i.b, %.lr.ph.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !64
  %i.p = icmp eq i64 %i.o, %.fr2
  br i1 %i.p, label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread10.i

_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i: ; preds = %.lr.ph.i.split
  %i.q = load ptr, ptr %.sroa.06.013.i, align 8, !tbaa !77
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.g, i64 %.fr2)
  %bcmp.i.i.i.fr.i = freeze i32 %bcmp.i.i.i.i
  %i.r = icmp eq i32 %bcmp.i.i.i.fr.i, 0
  %i.s = zext i1 %i.r to i64
  %spec.select.i = add i64 %.014.i, %i.s
  br label %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread10.i

_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread10.i: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i, %.lr.ph.i.split
  %i.t = phi i64 [ %.014.i, %.lr.ph.i.split ], [ %spec.select.i, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 184 ; 2 uses
  %.not.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE5countERKS9_.exit, label %.lr.ph.i.split

_ZNK7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE5countERKS9_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread10.i, %.lr.ph.i.split.us, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %spec.select, %.lr.ph.i.split.us ], [ %i.t, %_ZN7httplib6detail26insertion_ordered_multimapINS_8FormDataESt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10keys_equalERKS9_SD_.exit.thread10.i ]
  ret i64 %.0.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7httplib27is_valid_multipart_boundaryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN7httplib6detail33is_multipart_boundary_chars_validERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !77
  br label %bb.b

bb.b:                                             ; preds = %.thread22.i, %.lr.ph.i
  %.01425.i = phi i64 [ 0, %.lr.ph.i ], [ %i.l, %.thread22.i ] ; 2 uses
  %.01524.i = phi i1 [ true, %.lr.ph.i ], [ %.121.i, %.thread22.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.01425.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !65    ; 4 uses
  %i.f = add i8 %i.e, -48
  %i.g = icmp ult i8 %i.f, 10
  %i.h = and i8 %i.e, -33
  %i.i = add i8 %i.h, -65
  %i.j = icmp ult i8 %i.i, 26
  %i.k = or i1 %i.g, %i.j
  br i1 %i.k, label %.thread22.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.b
  switch i8 %i.e, label %switch.early.test18.i [
    i8 95, label %.thread23.i
    i8 45, label %.thread23.i
  ]

.thread23.i:                                      ; preds = %switch.early.test.i, %switch.early.test.i
  br label %switch.early.test18.i

switch.early.test18.i:                            ; preds = %.thread23.i, %switch.early.test.i
  %.120.i = phi i1 [ %.01524.i, %.thread23.i ], [ false, %switch.early.test.i ] ; 3 uses
  switch i8 %i.e, label %_ZN7httplib6detail33is_multipart_boundary_chars_validERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit [
    i8 95, label %.thread22.i
    i8 45, label %.thread22.i
  ]

.thread22.i:                                      ; preds = %switch.early.test18.i, %switch.early.test18.i, %bb.b
  %.121.i = phi i1 [ %.120.i, %switch.early.test18.i ], [ %.120.i, %switch.early.test18.i ], [ %.01524.i, %bb.b ] ; 2 uses
  %i.l = add nuw i64 %.01425.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.l, %i.b
  br i1 %exitcond.not.i, label %_ZN7httplib6detail33is_multipart_boundary_chars_validERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b, !llvm.loop !714

_ZN7httplib6detail33is_multipart_boundary_chars_validERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %switch.early.test18.i, %.thread22.i, %bb.a
  %.2.i = phi i1 [ true, %bb.a ], [ %.121.i, %.thread22.i ], [ %.120.i, %switch.early.test18.i ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib23MultipartFormDataWriterC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7httplib6detail28make_multipart_data_boundaryB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define void @_ZN7httplib23MultipartFormDataWriterC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !63
  %i.b = load ptr, ptr %1, align 8, !tbaa !77     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !77
  %i.i = load i64, ptr %i.c, align 8, !tbaa !65
  store i64 %i.i, ptr %i.a, align 8, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !64
  store ptr %i.c, ptr %1, align 8, !tbaa !77
  store i64 0, ptr %i.j, align 8, !tbaa !64
  store i8 0, ptr %i.c, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7httplib23MultipartFormDataWriter8boundaryB5cxx11Ev(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(32) %0) local_unnamed_addr #13 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7httplib23MultipartFormDataWriter12content_typeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7httplib6detail45serialize_multipart_formdata_get_content_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7httplib23MultipartFormDataWriter9serializeB5cxx11ERKSt6vectorINS_14UploadFormDataESaIS2_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7httplib6detail28serialize_multipart_formdataERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK7httplib23MultipartFormDataWriter14content_lengthERKSt6vectorINS_14UploadFormDataESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN7httplib6detail28get_multipart_content_lengthERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7httplib23MultipartFormDataWriter10item_beginB5cxx11ERKNS_14UploadFormDataE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7httplib6detail39serialize_multipart_formdata_item_beginINS_14UploadFormDataEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKS8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}
end_hunk_0
begin_hunk_1_@_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv:bb.a
bb.i:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.al = and i32 %i.y, 65536
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !917
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !65
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !81
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 95), !inline_history !3045
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !314 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !314
  %.not18 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not18, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !65  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !3026, !nonnull !80, !align !156
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2966
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.be = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bf = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !2404
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2405
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !2408 ; 7 uses
  %.not.not.i.i.i7 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i.i.i7, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #47
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i9 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2580
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !446
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i9
  %.not4.i.i10 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i10, label %bb.o, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8
  %i.br = and i32 %i.be, 65536
  %.not.i.i11 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i11, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !917
  %.not.i.i.i12 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !65
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !81
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95), !inline_history !3045
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

_ZNKSt5ctypeIcE5widenEc.exit.i.i13:               ; preds = %bb.r, %bb.q
  %.0.i.i.i14 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i14
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i13, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i13 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15
  %.0 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.83", align 8    ; 14 uses
  %3 = alloca %"class.std::__detail::_Executor", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !847  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !315    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !317
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.f, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %.noexc.i.i, label %bb.c, !prof !85

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #50 ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !315
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !847
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !317
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !848

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.thread
  %i.r = phi ptr [ %i.i, %.thread ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.s = phi ptr [ %i.g, %.thread ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.s, align 8, !tbaa !847
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !314
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !314
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3026, !nonnull !80, !align !156
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load i32, ptr %i.x, align 8, !tbaa !2967
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EEC2ESB_SB_RSt6vectorISD_SE_ERKNS5_11basic_regexIcSG_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %3, ptr %.sroa.06.0.copyload, ptr %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef %i.y)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %1, ptr %i.z, align 8, !tbaa !3014
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !314
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !314
  %i.ad = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 noundef zeroext 1)
          to label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit unwind label %bb.f, !inline_history !3046 ; 2 uses

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit: ; preds = %bb.d
  br i1 %i.ad, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !847 ; 2 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !315   ; 5 uses
  %.not = icmp eq ptr %i.ae, %i.af
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv i64 %i.ai, 24                      ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.aj, i64 1) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %4 = icmp ult i64 %i.aj, 2
  br i1 %4, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %umax, -2
  br label %.lr.ph

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %3) #23
  br label %bb.r

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.021 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bj, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.021 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !310, !range !79, !noundef !80
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.aq = load ptr, ptr %0, align 8, !tbaa !315
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.021 ; 3 uses
  %i.as = load i64, ptr %i.am, align 8, !tbaa !314
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !314
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.at, align 8, !tbaa !314
  store i64 %i.av, ptr %i.au, align 8, !tbaa !314
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i8 1, ptr %i.aw, align 8, !tbaa !310
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph
  %i.ax = or disjoint i64 %.021, 1                ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !310, !range !79, !noundef !80
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.1
  %i.bc = load ptr, ptr %0, align 8, !tbaa !315
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.ax ; 3 uses
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !314
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !314
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !314
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !314
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i8 1, ptr %i.bi, align 8, !tbaa !310
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.1
  %i.bj = add nuw i64 %.021, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3047

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.021.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bj, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod35 = trunc i64 %umax to i1
  call void @llvm.assume(i1 %lcmp.mod35)
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.021.epil.init ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !310, !range !79, !noundef !80
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.epil.preheader
  %i.bo = load ptr, ptr %0, align 8, !tbaa !315
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %.021.epil.init ; 3 uses
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !314
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !314
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !314
  store i64 %i.bt, ptr %i.bs, align 8, !tbaa !314
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i8 1, ptr %i.bu, align 8, !tbaa !310
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %.lr.ph.epil.preheader, %.preheader, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2983 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.bx) #46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !2984 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2985 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bz, %i.cb
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i16

.lr.ph.i.i.i.i.i16:                               ; preds = %bb.l, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cj, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i ], [ %i.bz, %bb.l ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !315 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i16
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !317
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #46
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i.i16
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i17 = icmp eq ptr %i.cj, %i.cb
  br i1 %.not.i.i.i.i.i17, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i16, !llvm.loop !2986

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bv, align 8, !tbaa !2984
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.l
  %i.ck = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.bz, %bb.l ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !2987
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #46
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i: ; preds = %bb.n, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !2988 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !2989
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #46
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.o, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cx = load ptr, ptr %3, align 8, !tbaa !315   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !317
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #46
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.dd = load ptr, ptr %2, align 8, !tbaa !315   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit
  %i.de = load ptr, ptr %i.r, align 8, !tbaa !317
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dh) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %i.ad

bb.r:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.f ], [ %i.ak, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.di = load ptr, ptr %2, align 8, !tbaa !315   ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = load ptr, ptr %i.r, align 8, !tbaa !317
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dm) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_12regex_traitsIcEEE8_M_applyESB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3042, !range !79, !noundef !80
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %4 to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g
  %.not.i = icmp eq i64 %i.e, %i.h
  br i1 %.not.i, label %bb.c, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %3, i64 %i.e)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3048, !nonnull !80, !align !156
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #23
  %i.k = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.l = load ptr, ptr %5, align 8, !tbaa !2404
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2405
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2408 ; 5 uses
  %.not.not.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #47
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.q = ptrtoint ptr %2 to i64
  %i.r = ptrtoint ptr %1 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ptrtoint ptr %4 to i64
  %i.u = ptrtoint ptr %3 to i64
end_hunk_1
begin_hunk_2_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !317
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.f, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %.noexc.i.i, label %bb.c, !prof !85

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #50 ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !315
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !847
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !317
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !848

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.thread
  %i.r = phi ptr [ %i.i, %.thread ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.s = phi ptr [ %i.g, %.thread ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.s, align 8, !tbaa !847
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !314 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load i32, ptr %i.w, align 8, !tbaa !3006 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 0, i64 24, i1 false)
  store ptr %.sroa.06.0.copyload, ptr %i.y, align 8, !tbaa !314
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !3059, !nonnull !80, !align !156
  %i.ab = load <2 x ptr>, ptr %i.u, align 8, !tbaa !71
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2966 ; 3 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !2545
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.af, align 8, !tbaa !2991
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2536 ; 2 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !2495 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 48                ; 7 uses
  %i.ap = icmp ugt i64 %i.ao, 576460752303423487
  %i.aq = ptrtoint ptr %.sroa.06.0.copyload to i64
  br i1 %i.ap, label %bb.d, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.363) #47
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i16 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.i.i.i16, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.ar = shl nuw nsw i64 %i.ao, 4
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #50
          to label %.noexc9.i unwind label %bb.e  ; 4 uses

.noexc9.i:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  store ptr %i.as, ptr %i.ag, align 8, !tbaa !2988
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.at, ptr %i.au, align 8, !tbaa !2989
  %xtraiter = and i64 %i.ao, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc9.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.as, %.noexc9.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ao, %.noexc9.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.noexc9.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !2981
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.av, align 8, !tbaa !2992
  %i.aw = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3067

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc9.i
  %.lcssa.unr = phi ptr [ poison, %.noexc9.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.as, %.noexc9.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.ao, %.noexc9.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ay = icmp ult i64 %i.ao, 8
  br i1 %i.ay, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !2981
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.az, align 8, !tbaa !2992
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ba, align 8, !tbaa !2981
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.bb, align 8, !tbaa !2992
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.bc, align 8, !tbaa !2981
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.bd, align 8, !tbaa !2992
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.be, align 8, !tbaa !2981
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bf, align 8, !tbaa !2992
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bg, align 8, !tbaa !2981
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bh, align 8, !tbaa !2992
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bi, align 8, !tbaa !2981
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bj, align 8, !tbaa !2992
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bk, align 8, !tbaa !2981
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bl, align 8, !tbaa !2992
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bm, align 8, !tbaa !2981
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bn, align 8, !tbaa !2992
  %i.bo = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2995

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bq, align 8, !tbaa !2996
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bu = and i32 %i.x, 128
  %.not.i = icmp eq i32 %i.bu, 0
  %i.bv = and i32 %i.x, -6
  %spec.select = select i1 %.not.i, i32 %i.x, i32 %i.bv
  store i32 %spec.select, ptr %i.bt, align 8, !tbaa !871
  store i64 %1, ptr %i.br, align 8, !tbaa !3001
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.aq, ptr %i.bw, align 8, !tbaa !314
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  store i8 0, ptr %i.bx, align 4, !tbaa !2999
  store i64 0, ptr %i.bs, align 8, !tbaa !314
  %i.by = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g, !inline_history !3068 ; 0 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %bb.d
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.ca = load i64, ptr %i.br, align 8, !tbaa !3001
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.ca)
          to label %bb.f unwind label %bb.g, !inline_history !3068

bb.f:                                             ; preds = %.noexc
  %i.cb = load i8, ptr %i.bx, align 4, !tbaa !2999, !range !79, !noundef !80
  %i.cc = trunc nuw i8 %i.cb to i1                ; 2 uses
  br i1 %i.cc, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.cd = load ptr, ptr %i.s, align 8, !tbaa !847 ; 2 uses
  %i.ce = load ptr, ptr %2, align 8, !tbaa !315   ; 5 uses
  %.not = icmp eq ptr %i.cd, %i.ce
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = sdiv i64 %i.ch, 24                      ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.ci, i64 1) ; 3 uses
  %xtraiter37 = and i64 %umax, 1
  %4 = icmp ult i64 %i.ci, 2
  br i1 %4, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %umax, -2
  br label %.lr.ph

bb.g:                                             ; preds = %.noexc, %.loopexit.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %3) #23
  br label %.body

.lr.ph:                                           ; preds = %bb.j, %.lr.ph.preheader.new
  %.024 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dh, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.024 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !310, !range !79, !noundef !80
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.h, label %.lr.ph.1

bb.h:                                             ; preds = %.lr.ph
  %i.co = load ptr, ptr %0, align 8, !tbaa !315
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %.024 ; 3 uses
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !314
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !314
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !314
  store i64 %i.ct, ptr %i.cs, align 8, !tbaa !314
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i8 1, ptr %i.cu, align 8, !tbaa !310
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h, %.lr.ph
  %i.cv = or disjoint i64 %.024, 1                ; 2 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.cv ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !310, !range !79, !noundef !80
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.1
  %i.da = load ptr, ptr %0, align 8, !tbaa !315
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.cv ; 3 uses
  %i.dc = load i64, ptr %i.cw, align 8, !tbaa !314
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !314
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !314
  store i64 %i.df, ptr %i.de, align 8, !tbaa !314
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i8 1, ptr %i.dg, align 8, !tbaa !310
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.1
  %i.dh = add nuw i64 %.024, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3069

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.024.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.dh, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod39 = trunc i64 %umax to i1
  call void @llvm.assume(i1 %lcmp.mod39)
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.024.epil.init ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !310, !range !79, !noundef !80
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.epil.preheader
  %i.dm = load ptr, ptr %0, align 8, !tbaa !315
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %.024.epil.init ; 3 uses
  %i.do = load i64, ptr %i.di, align 8, !tbaa !314
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !314
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !314
  store i64 %i.dr, ptr %i.dq, align 8, !tbaa !314
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i8 1, ptr %i.ds, align 8, !tbaa !310
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %.lr.ph.epil.preheader, %.preheader, %bb.f
  %i.dt = load ptr, ptr %i.ag, align 8, !tbaa !2988 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !2989
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #46
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.l, %.loopexit
  %i.dz = load ptr, ptr %3, align 8, !tbaa !315   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !317
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #46
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ef = load ptr, ptr %2, align 8, !tbaa !315   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit
  %i.eg = load ptr, ptr %i.r, align 8, !tbaa !317
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ef to i64
  %i.ej = sub i64 %i.eh, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ej) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %i.cc

.body:                                            ; preds = %bb.e, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.g ], [ %i.bz, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ek = load ptr, ptr %2, align 8, !tbaa !315   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21, label %bb.o

bb.o:                                             ; preds = %.body
  %i.el = load ptr, ptr %i.r, align 8, !tbaa !317
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ek to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.eo) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21: ; preds = %.body, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2IPKS5_EET_SN_mRKSD_RKSC_RKS6_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::__detail::_AllocNode.881", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !335
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 1, ptr %i.b, align 8, !tbaa !337
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !338
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = invoke noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %3)
          to label %bb.b unwind label %bb.g       ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.b, align 8, !tbaa !337
  %i.h = icmp ugt i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.f, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !85

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !3070
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.j, label %bb.f, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i, !prof !85

bb.f:                                             ; preds = %bb.e
  %i.k = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %.noexc.i.i.i, label %.noexc7.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #47
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

.noexc7.i.i.i:                                    ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #47
          to label %.noexc9.i unwind label %bb.g

.noexc9.i:                                        ; preds = %.noexc7.i.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %bb.e
  %i.l = shl nuw nsw i64 %i.f, 3                  ; 2 uses
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #50
          to label %.noexc10.i unwind label %bb.g ; 2 uses

.noexc10.i:                                       ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.l, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i: ; preds = %.noexc10.i, %bb.d
  %.0.i.i = phi ptr [ %i.a, %bb.d ], [ %i.m, %.noexc10.i ]
  store ptr %.0.i.i, ptr %0, align 8, !tbaa !335
  store i64 %i.f, ptr %i.b, align 8, !tbaa !337
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit

common.resume:                                    ; preds = %bb.h, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.q, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i, %.noexc7.i.i.i, %.noexc.i.i.i, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #23
  br label %common.resume

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %0, ptr %7, align 8, !tbaa !3071
  %.not7.i.i = icmp eq ptr %1, %2
  br i1 %.not7.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit, %.noexc
  %.08.i.i = phi ptr [ %i.p, %.noexc ], [ %1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit ] ; 3 uses
  %i.o = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SM_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc unwind label %bb.h     ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %2
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !3073

.loopexit:                                        ; preds = %.noexc, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #23
  br label %common.resume
}

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SM_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, std::__detail::_Identity, httplib::detail::case_ignore::equal_to, httplib::detail::case_ignore::hash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, true, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !3074
  %.not.not = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.not, label %bb.b, label %.thread
end_hunk_2
begin_hunk_3_@_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_word_boundaryEv:bb.a
bb.i:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i
  %i.al = and i32 %i.y, 65536
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !917
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !65
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !81
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 95), !inline_history !3237
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i

_ZNKSt5ctypeIcE5widenEc.exit.i.i:                 ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i8 [ %i.ap, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i8 %i.s, %.0.i.i.i
  %i.av = zext i1 %i.au to i32
  br label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !3167 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !3169
  %.not9 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not9, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !65  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !3219, !nonnull !80, !align !156
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2966
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.be = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bf = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !2404
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2405
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !2408 ; 7 uses
  %.not.not.i.i.i10 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i.i.i10, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #47
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i12 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2580
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !446
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i12
  %.not4.i.i13 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i13, label %bb.o, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11
  %i.br = and i32 %i.be, 65536
  %.not.i.i14 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i14, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !917
  %.not.i.i.i15 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i15, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !65
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !81
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95), !inline_history !3237
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

_ZNKSt5ctypeIcE5widenEc.exit.i.i16:               ; preds = %bb.r, %bb.q
  %.0.i.i.i17 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i17
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i16, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i16 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18
  %.04 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.04
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.260", align 8   ; 14 uses
  %3 = alloca %"class.std::__detail::_Executor.911", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3199 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !612    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !614
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.f, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %.noexc.i.i, label %bb.c, !prof !85

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #50 ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !612
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !3199
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !614
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3210

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.thread
  %i.r = phi ptr [ %i.i, %.thread ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.s = phi ptr [ %i.g, %.thread ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.s, align 8, !tbaa !3199
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3167
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3169
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !3219, !nonnull !80, !align !156
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !3168
  invoke void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EEC2ES2_S2_RSt6vectorIS5_S6_ERKNS3_11basic_regexIcS8_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %3, ptr noundef %i.u, ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i32 noundef %i.aa)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %1, ptr %i.ab, align 8, !tbaa !3206
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !3153
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !3167
  %i.af = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 noundef zeroext 1)
          to label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit unwind label %bb.f, !inline_history !3238 ; 2 uses

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit: ; preds = %bb.d
  br i1 %i.af, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !3199 ; 2 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !612   ; 5 uses
  %.not = icmp eq ptr %i.ag, %i.ah
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv i64 %i.ak, 24                      ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.al, i64 1) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %4 = icmp ult i64 %i.al, 2
  br i1 %4, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %umax, -2
  br label %.lr.ph

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %3) #23
  br label %bb.r

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.020 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bf, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.020 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !592, !range !79, !noundef !80
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.as = load ptr, ptr %0, align 8, !tbaa !612
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.020 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !314
  store <2 x ptr> %i.au, ptr %i.at, align 8, !tbaa !314
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i8 1, ptr %i.av, align 8, !tbaa !592
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph
  %i.aw = or disjoint i64 %.020, 1                ; 2 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !592, !range !79, !noundef !80
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.1
  %i.bb = load ptr, ptr %0, align 8, !tbaa !612
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.aw ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !314
  store <2 x ptr> %i.bd, ptr %i.bc, align 8, !tbaa !314
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i8 1, ptr %i.be, align 8, !tbaa !592
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.1
  %i.bf = add nuw i64 %.020, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3239

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod34 = trunc i64 %umax to i1
  call void @llvm.assume(i1 %lcmp.mod34)
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.020.epil.init ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !592, !range !79, !noundef !80
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.epil.preheader
  %i.bk = load ptr, ptr %0, align 8, !tbaa !612
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.020.epil.init ; 2 uses
  %i.bm = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !314
  store <2 x ptr> %i.bm, ptr %i.bl, align 8, !tbaa !314
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i8 1, ptr %i.bn, align 8, !tbaa !592
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %.lr.ph.epil.preheader, %.preheader, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !3171 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !3172 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !3173 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bs, %i.bu
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i15

.lr.ph.i.i.i.i.i15:                               ; preds = %bb.l, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cc, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i ], [ %i.bs, %bb.l ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !612 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i15
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !614
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #46
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i.i15
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i16 = icmp eq ptr %i.cc, %i.bu
  br i1 %.not.i.i.i.i.i16, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i15, !llvm.loop !3174

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !3172
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.l
  %i.cd = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.bs, %bb.l ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !3175
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #46
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i: ; preds = %bb.n, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !3176 ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !3177
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #46
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i:    ; preds = %bb.o, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.cq = load ptr, ptr %3, align 8, !tbaa !612   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !614
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #46
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.cw = load ptr, ptr %2, align 8, !tbaa !612   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit
  %i.cx = load ptr, ptr %i.r, align 8, !tbaa !614
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.da) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %i.af

bb.r:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.an, %bb.f ], [ %i.am, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.db = load ptr, ptr %2, align 8, !tbaa !612   ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit19, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = load ptr, ptr %i.r, align 8, !tbaa !614
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.df) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit19

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit19: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIPKcNSt7__cxx1112regex_traitsIcEEE8_M_applyES2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3234, !range !79, !noundef !80
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %4 to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g
  %.not.i = icmp eq i64 %i.e, %i.h
  br i1 %.not.i, label %bb.c, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %3, i64 %i.e)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3240, !nonnull !80, !align !156
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #23
  %i.k = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.l = load ptr, ptr %5, align 8, !tbaa !2404
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2405
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2408 ; 5 uses
  %.not.not.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #47
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.q = ptrtoint ptr %2 to i64
  %i.r = ptrtoint ptr %1 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ptrtoint ptr %4 to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  %.not.i12 = icmp eq i64 %i.s, %i.v
  br i1 %.not.i12, label %bb.g, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit

end_hunk_3
begin_hunk_4_@_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE12_M_lookaheadEl:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !614
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.f, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %.noexc.i.i, label %bb.c, !prof !85

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #50 ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !612
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !3199
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !614
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3210

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.thread
  %i.r = phi ptr [ %i.i, %.thread ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.s = phi ptr [ %i.g, %.thread ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.s, align 8, !tbaa !3199
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3190 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load i32, ptr %i.x, align 8, !tbaa !3197 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.u, ptr %i.z, align 8, !tbaa !3178
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !3251, !nonnull !80, !align !156
  %i.ac = load <2 x ptr>, ptr %i.v, align 8, !tbaa !71
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !71
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2966 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !2545
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.ag, align 8, !tbaa !3182
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2536 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !2495 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 48                ; 7 uses
  %i.aq = icmp ugt i64 %i.ap, 576460752303423487
  br i1 %i.aq, label %bb.d, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.363) #47
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i15 = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i.i15, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i

_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.ar = shl nuw nsw i64 %i.ap, 4
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #50
          to label %.noexc10.i unwind label %bb.e ; 4 uses

.noexc10.i:                                       ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i
  store ptr %i.as, ptr %i.ah, align 8, !tbaa !3176
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.at, ptr %i.au, align 8, !tbaa !3177
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc10.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.as, %.noexc10.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ap, %.noexc10.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.noexc10.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !3183
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.av, align 8, !tbaa !3185
  %i.aw = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3259

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc10.i
  %.lcssa.unr = phi ptr [ poison, %.noexc10.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.as, %.noexc10.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.ap, %.noexc10.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ay = icmp ult i64 %i.ap, 8
  br i1 %i.ay, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !3183
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.az, align 8, !tbaa !3185
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ba, align 8, !tbaa !3183
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.bb, align 8, !tbaa !3185
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.bc, align 8, !tbaa !3183
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.bd, align 8, !tbaa !3185
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.be, align 8, !tbaa !3183
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bf, align 8, !tbaa !3185
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bg, align 8, !tbaa !3183
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bh, align 8, !tbaa !3185
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bi, align 8, !tbaa !3183
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bj, align 8, !tbaa !3185
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bk, align 8, !tbaa !3183
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bl, align 8, !tbaa !3185
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bm, align 8, !tbaa !3183
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bn, align 8, !tbaa !3185
  %i.bo = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3187

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bq, align 8, !tbaa !3188
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bt = and i32 %i.y, 128
  %.not.i = icmp eq i32 %i.bt, 0
  %i.bu = and i32 %i.y, -6
  %spec.select = select i1 %.not.i, i32 %i.y, i32 %i.bu
  store i32 %spec.select, ptr %i.bs, align 8, !tbaa !871
  store i64 %1, ptr %i.br, align 8, !tbaa !3192
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.u, ptr %i.bv, align 8, !tbaa !3190
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  store i8 0, ptr %i.bw, align 4, !tbaa !3191
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr null, ptr %i.bx, align 8, !tbaa !314
  %i.by = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g, !inline_history !3260 ; 0 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i, %bb.d
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.ca = load i64, ptr %i.br, align 8, !tbaa !3192
  invoke void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.ca)
          to label %bb.f unwind label %bb.g, !inline_history !3260

bb.f:                                             ; preds = %.noexc
  %i.cb = load i8, ptr %i.bw, align 4, !tbaa !3191, !range !79, !noundef !80
  %i.cc = trunc nuw i8 %i.cb to i1                ; 2 uses
  br i1 %i.cc, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.cd = load ptr, ptr %i.s, align 8, !tbaa !3199 ; 2 uses
  %i.ce = load ptr, ptr %2, align 8, !tbaa !612   ; 5 uses
  %.not = icmp eq ptr %i.cd, %i.ce
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = sdiv i64 %i.ch, 24                      ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.ci, i64 1) ; 3 uses
  %xtraiter36 = and i64 %umax, 1
  %4 = icmp ult i64 %i.ci, 2
  br i1 %4, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %umax, -2
  br label %.lr.ph

bb.g:                                             ; preds = %.noexc, %.loopexit.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %3) #23
  br label %.body

.lr.ph:                                           ; preds = %bb.j, %.lr.ph.preheader.new
  %.023 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.db, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.023 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !592, !range !79, !noundef !80
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.h, label %.lr.ph.1

bb.h:                                             ; preds = %.lr.ph
  %i.co = load ptr, ptr %0, align 8, !tbaa !612
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %.023 ; 2 uses
  %i.cq = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !314
  store <2 x ptr> %i.cq, ptr %i.cp, align 8, !tbaa !314
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i8 1, ptr %i.cr, align 8, !tbaa !592
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h, %.lr.ph
  %i.cs = or disjoint i64 %.023, 1                ; 2 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !592, !range !79, !noundef !80
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.1
  %i.cx = load ptr, ptr %0, align 8, !tbaa !612
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %i.cs ; 2 uses
  %i.cz = load <2 x ptr>, ptr %i.ct, align 8, !tbaa !314
  store <2 x ptr> %i.cz, ptr %i.cy, align 8, !tbaa !314
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i8 1, ptr %i.da, align 8, !tbaa !592
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.1
  %i.db = add nuw i64 %.023, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3261

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.023.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.db, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod38 = trunc i64 %umax to i1
  call void @llvm.assume(i1 %lcmp.mod38)
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.023.epil.init ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !592, !range !79, !noundef !80
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.epil.preheader
  %i.dg = load ptr, ptr %0, align 8, !tbaa !612
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %.023.epil.init ; 2 uses
  %i.di = load <2 x ptr>, ptr %i.dc, align 8, !tbaa !314
  store <2 x ptr> %i.di, ptr %i.dh, align 8, !tbaa !314
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i8 1, ptr %i.dj, align 8, !tbaa !592
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %.lr.ph.epil.preheader, %.preheader, %bb.f
  %i.dk = load ptr, ptr %i.ah, align 8, !tbaa !3176 ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !3177
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.dp) #46
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i:    ; preds = %bb.l, %.loopexit
  %i.dq = load ptr, ptr %3, align 8, !tbaa !612   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !614
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #46
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.dw = load ptr, ptr %2, align 8, !tbaa !612   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit
  %i.dx = load ptr, ptr %i.r, align 8, !tbaa !614
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.ea) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %i.cc

.body:                                            ; preds = %bb.e, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.g ], [ %i.bz, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.eb = load ptr, ptr %2, align 8, !tbaa !612   ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit20, label %bb.o

bb.o:                                             ; preds = %.body
  %i.ec = load ptr, ptr %i.r, align 8, !tbaa !614
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ef) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit20

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit20: ; preds = %.body, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvPKcS1_EZN7httplib6detail28is_chunked_transfer_encodingERKNS4_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_11case_ignore8equal_toEEEE3$_0E9_M_invokeERKSt9_Any_dataOS1_SM_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #7 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !3262  ; 2 uses
  %.val3 = load ptr, ptr %1, align 8, !tbaa !314  ; 2 uses
  %.val4 = load ptr, ptr %2, align 8, !tbaa !314
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !64
  %i.c = ptrtoint ptr %.val4 to i64
  %i.d = ptrtoint ptr %.val3 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.val, i64 noundef 0, i64 noundef %i.b, ptr noundef %.val3, i64 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPKcS1_EZN7httplib6detail28is_chunked_transfer_encodingERKNS4_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_11case_ignore8equal_toEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail28is_chunked_transfer_encodingERKNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib6detail28is_chunked_transfer_encodingERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEEE3$_0", ptr %0, align 8, !tbaa !2735
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail28is_chunked_transfer_encodingERKNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail28is_chunked_transfer_encodingERKNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !164
  store i64 %.val.i, ptr %0, align 8, !tbaa !164
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail28is_chunked_transfer_encodingERKNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail28is_chunked_transfer_encodingERKNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvPKcmS1_mEZN7httplib6detail17divide_query_pairES1_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E9_M_invokeERKSt9_Any_dataOS1_OmSH_SI_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #7 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !314
  %.val5 = load i64, ptr %2, align 8, !tbaa !78
  %.val6 = load ptr, ptr %3, align 8, !tbaa !314
  %.val7 = load i64, ptr %4, align 8, !tbaa !78
  %i.a = load ptr, ptr %0, align 8, !tbaa !3264, !nonnull !80, !align !156 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !64
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.c, ptr noundef %.val, i64 noundef %.val5) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3266, !nonnull !80, !align !156 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !64
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef 0, i64 noundef %i.h, ptr noundef %.val6, i64 noundef %.val7) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPKcmS1_mEZN7httplib6detail17divide_query_pairES1_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail17divide_query_pairEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib6detail17divide_query_pairEPKcS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_E3$_0", ptr %0, align 8, !tbaa !2735
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail17divide_query_pairEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail17divide_query_pairEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !3127
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail17divide_query_pairEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail17divide_query_pairEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvPKcS1_EZN7httplib6detail16parse_query_textES1_mRNS4_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toISB_EEEE3$_0E9_M_invokeERKSt9_Any_dataOS1_SL_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.148", align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !314   ; 4 uses
  %.val3 = load ptr, ptr %2, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i64 0, ptr %i.c, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = ptrtoint ptr %.val3 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !78
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !77
  %i.i = load i64, ptr %i.a, align 8, !tbaa !78
  store i64 %i.i, ptr %i.b, align 8, !tbaa !65
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.a
end_hunk_4
