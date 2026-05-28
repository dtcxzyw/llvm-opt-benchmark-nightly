inline.NumInlined: 1426
inline.NumDeleted: 704
begin_hunk_0_@_ZN5arrow17BasicUnionBuilder11AppendChildERKSt10shared_ptrINS_12ArrayBuilderEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr %i.df, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit unwind label %bb.ax

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.x, %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !43 ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.do, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 4 uses
  %i.dq = load atomic i64, ptr %i.dp acquire, align 8 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 4294967297
  %i.ds = trunc i64 %i.dq to i32                  ; 2 uses
  br i1 %i.dr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.dp, align 8, !tbaa !51
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 0, ptr %i.dt, align 4, !tbaa !53
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !38
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #17, !inline_history !209
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !38
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #17, !inline_history !209
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.ea = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eb = add nsw i32 %i.ds, -1
  store i32 %i.eb, ptr %i.dp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ec = atomicrmw volatile add ptr %i.dp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i = phi i32 [ %i.ds, %bb.ac ], [ %i.ec, %bb.ad ]
  %i.ed = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ed, label %bb.ae, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #17
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ae
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !43 ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.eg, align 8, !tbaa !51
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4, !tbaa !53
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !38
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #17, !inline_history !210
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !38
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #17, !inline_history !210
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i15 = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i15, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

bb.aj:                                            ; preds = %bb.ah
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i17 = phi i32 [ %i.ej, %bb.ai ], [ %i.et, %bb.aj ]
  %i.eu = icmp eq i32 %.0.i.i.i.i17, 1
  br i1 %i.eu, label %bb.ak, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #17
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16, %bb.ak
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !43 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 4 uses
  %i.ey = load atomic i64, ptr %i.ex acquire, align 8 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 4294967297
  %i.fa = trunc i64 %i.ey to i32                  ; 2 uses
  br i1 %i.ez, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.ex, align 8, !tbaa !51
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  store i32 0, ptr %i.fb, align 4, !tbaa !53
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !38
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #17, !inline_history !60
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !38
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #17, !inline_history !60
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.fi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i19 = icmp eq i8 %i.fi, 0
  br i1 %.not.i.i.i19, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fj = add nsw i32 %i.fa, -1
  store i32 %i.fj, ptr %i.ex, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

bb.ap:                                            ; preds = %bb.an
  %i.fk = atomicrmw volatile add ptr %i.ex, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i21 = phi i32 [ %i.fa, %bb.ao ], [ %i.fk, %bb.ap ]
  %i.fl = icmp eq i32 %.0.i.i.i.i21, 1
  br i1 %i.fl, label %bb.aq, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #17
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20, %bb.aq
  %i.fm = load ptr, ptr %4, align 8, !tbaa !205   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.cr
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fo = load i64, ptr %i.cr, align 8, !tbaa !45
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !183 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !182
  %.not.i.i22 = icmp eq ptr %i.fs, %i.fu
  br i1 %.not.i.i22, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i8 %storemerge.in.i, ptr %i.fs, align 1, !tbaa !45
  %i.fv = load ptr, ptr %i.fr, align 8, !tbaa !183
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  store ptr %i.fw, ptr %i.fr, align 8, !tbaa !183
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fx = load ptr, ptr %i.fq, align 8, !tbaa !178 ; 4 uses
  %i.fy = ptrtoint ptr %i.fs to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz                    ; 8 uses
  %i.gb = icmp eq i64 %i.ga, 9223372036854775807
  br i1 %i.gb, label %bb.at, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.as
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gc = add i64 %.sroa.speculated.i.i.i.i, %i.ga ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.ga
  %i.ge = call i64 @llvm.umin.i64(i64 %i.gc, i64 9223372036854775807)
  %i.gf = select i1 %i.gd, i64 9223372036854775807, i64 %i.ge ; 3 uses
  %.not.i.i.i.i23 = icmp ne i64 %i.gf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i23)
  %7 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #19 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %i.ga ; 2 uses
  store i8 %storemerge.in.i, ptr %8, align 1, !tbaa !45
  %9 = icmp sgt i64 %i.ga, 0
  br i1 %9, label %bb.au, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i

bb.au:                                            ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %i.fx, i64 %i.ga, i1 false)
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.au, %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.ga) #20
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i: ; preds = %bb.av, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i
  store ptr %7, ptr %i.fq, align 8, !tbaa !178
  store ptr %i.gg, ptr %i.fr, align 8, !tbaa !183
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 %i.gf
  store ptr %i.gh, ptr %i.ft, align 8, !tbaa !182
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit

_ZNSt6vectorIaSaIaEE9push_backEOa.exit:           ; preds = %bb.ar, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i
  ret i8 %storemerge.in.i

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.y
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn = phi { ptr, i32 } [ %i.gj, %bb.ax ], [ %i.gi, %bb.aw ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  %i.gk = load ptr, ptr %4, align 8, !tbaa !205   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.cr
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.ay
  %i.gm = load i64, ptr %i.cr, align 8, !tbaa !45
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZN5arrow17BasicUnionBuilder10NextTypeIdEv(ptr noundef nonnull align 8 dereferenceable(312) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !90   ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  %.promoted = load i8, ptr %i.a, align 8, !tbaa !201 ; 2 uses
  %i.j = sext i8 %.promoted to i64                ; 2 uses
  %i.k = icmp ugt i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.l = phi i64 [ %i.r, %bb.b ], [ %i.j, %bb.a ]
  %i.m = phi i8 [ %i.q, %bb.b ], [ %.promoted, %bb.a ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !94
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = add i8 %i.m, 1                           ; 3 uses
  store i8 %i.q, ptr %i.a, align 8, !tbaa !201
  %i.r = sext i8 %i.q to i64                      ; 2 uses
  %i.s = icmp ugt i64 %i.i, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !202

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !172
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !84   ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %.not = icmp eq i64 %i.z, -4
  br i1 %.not, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef 1)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !173 ; 2 uses
  %.pre8 = load ptr, ptr %i.b, align 8, !tbaa !90 ; 2 uses
  %.pre9 = ptrtoint ptr %.pre to i64
  %.pre10 = ptrtoint ptr %.pre8 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %._crit_edge
  store ptr %i.w, ptr %i.u, align 8, !tbaa !172
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.c, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi11 = phi i64 [ %.pre10, %bb.c ], [ %i.g, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %.pre-phi = phi i64 [ %.pre9, %bb.c ], [ %i.f, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.aa = phi ptr [ %.pre8, %bb.c ], [ %i.e, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ab = phi ptr [ %.pre, %bb.c ], [ %i.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.ac = sub i64 %.pre-phi, %.pre-phi11
  %.not2 = icmp eq i64 %i.ac, -8
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  tail call void @_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
  br label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.not.i.i1 = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i1, label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.e
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !173
  br label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit: ; preds = %.lr.ph, %_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.e, %bb.d
  %storemerge.in = load i8, ptr %i.a, align 8, !tbaa !201 ; 2 uses
  %storemerge = add i8 %storemerge.in, 1
  store i8 %storemerge, ptr %i.a, align 8, !tbaa !201
  ret i8 %storemerge.in
}

declare void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.56") align 8, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !71
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !71
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow17BasicUnionBuilder4typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.35") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(312) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.0", align 8     ; 15 uses
  %3 = alloca %"class.std::shared_ptr.56", align 16 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.35", align 8 ; 7 uses
  %5 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %6 = alloca %"class.std::vector.5", align 8     ; 12 uses
  %7 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %8 = alloca %"class.std::vector.5", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !152  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !148  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775792
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
end_hunk_0
