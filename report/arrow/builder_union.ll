inline.NumInlined: 1479
inline.NumDeleted: 711
begin_hunk_0_@_ZN5arrow17BasicUnionBuilder11AppendChildERKSt10shared_ptrINS_12ArrayBuilderEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr %i.de, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit unwind label %bb.az

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.z, %bb.aa
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !62 ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 4 uses
  %i.dp = load atomic i64, ptr %i.do acquire, align 8 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 4294967297
  %i.dr = trunc i64 %i.dp to i32                  ; 2 uses
  br i1 %i.dq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.do, align 8, !tbaa !70
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  store i32 0, ptr %i.ds, align 4, !tbaa !72
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !60
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #16, !inline_history !203
  %i.dw = load ptr, ptr %i.dn, align 8, !tbaa !60
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #16, !inline_history !203
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.dz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i = icmp eq i8 %i.dz, 0
  br i1 %.not.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ea = add nsw i32 %i.dr, -1
  store i32 %i.ea, ptr %i.do, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.eb = atomicrmw volatile add ptr %i.do, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i = phi i32 [ %i.dr, %bb.ae ], [ %i.eb, %bb.af ]
  %i.ec = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ec, label %bb.ag, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !74

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #16
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ag
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !62 ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 4 uses
  %i.eg = load atomic i64, ptr %i.ef acquire, align 8 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 4294967297
  %i.ei = trunc i64 %i.eg to i32                  ; 2 uses
  br i1 %i.eh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.ef, align 8, !tbaa !70
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 0, ptr %i.ej, align 4, !tbaa !72
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !60
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #16, !inline_history !204
  %i.en = load ptr, ptr %i.ee, align 8, !tbaa !60
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #16, !inline_history !204
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aj:                                            ; preds = %bb.ah
  %i.eq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i15 = icmp eq i8 %i.eq, 0
  br i1 %.not.i.i.i15, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.er = add nsw i32 %i.ei, -1
  store i32 %i.er, ptr %i.ef, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

bb.al:                                            ; preds = %bb.aj
  %i.es = atomicrmw volatile add ptr %i.ef, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i17 = phi i32 [ %i.ei, %bb.ak ], [ %i.es, %bb.al ]
  %i.et = icmp eq i32 %.0.i.i.i.i17, 1
  br i1 %i.et, label %bb.am, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !74

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #16
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16, %bb.am
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !62 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 4 uses
  %i.ex = load atomic i64, ptr %i.ew acquire, align 8 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 4294967297
  %i.ez = trunc i64 %i.ex to i32                  ; 2 uses
  br i1 %i.ey, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.ew, align 8, !tbaa !70
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 0, ptr %i.fa, align 4, !tbaa !72
  %i.fb = load ptr, ptr %i.ev, align 8, !tbaa !60
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #16, !inline_history !79
  %i.fe = load ptr, ptr %i.ev, align 8, !tbaa !60
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #16, !inline_history !79
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ap:                                            ; preds = %bb.an
  %i.fh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i19 = icmp eq i8 %i.fh, 0
  br i1 %.not.i.i.i19, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fi = add nsw i32 %i.ez, -1
  store i32 %i.fi, ptr %i.ew, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

bb.ar:                                            ; preds = %bb.ap
  %i.fj = atomicrmw volatile add ptr %i.ew, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i21 = phi i32 [ %i.ez, %bb.aq ], [ %i.fj, %bb.ar ]
  %i.fk = icmp eq i32 %.0.i.i.i.i21, 1
  br i1 %i.fk, label %bb.as, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !74

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #16
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20, %bb.as
  %i.fl = load ptr, ptr %4, align 8, !tbaa !200   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.cq
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fn = load i64, ptr %i.cq, align 8, !tbaa !64
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !178 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !177
  %.not.i.i22 = icmp eq ptr %i.fr, %i.ft
  br i1 %.not.i.i22, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i8 %storemerge.in.i, ptr %i.fr, align 1, !tbaa !64
  %i.fu = load ptr, ptr %i.fq, align 8, !tbaa !178
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1
  store ptr %i.fv, ptr %i.fq, align 8, !tbaa !178
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fw = load ptr, ptr %i.fp, align 8, !tbaa !173 ; 4 uses
  %i.fx = ptrtoint ptr %i.fr to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy                    ; 8 uses
  %i.ga = icmp eq i64 %i.fz, 9223372036854775807
  br i1 %i.ga, label %bb.av, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.au
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fz, i64 1)
  %i.gb = add i64 %.sroa.speculated.i.i.i.i, %i.fz ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.fz
  %i.gd = call i64 @llvm.umin.i64(i64 %i.gb, i64 9223372036854775807)
  %i.ge = select i1 %i.gc, i64 9223372036854775807, i64 %i.gd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ge, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %7 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ge) #18 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %i.fz ; 2 uses
  store i8 %storemerge.in.i, ptr %8, align 1, !tbaa !64
  %9 = icmp sgt i64 %i.fz, 0
  br i1 %9, label %bb.aw, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i

bb.aw:                                            ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %i.fw, i64 %i.fz, i1 false)
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.aw, %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.fz) #19
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i: ; preds = %bb.ax, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i
  store ptr %7, ptr %i.fp, align 8, !tbaa !173
  store ptr %i.gf, ptr %i.fq, align 8, !tbaa !178
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 %i.ge
  store ptr %i.gg, ptr %i.fs, align 8, !tbaa !177
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit

_ZNSt6vectorIaSaIaEE9push_backEOa.exit:           ; preds = %bb.at, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i
  ret i8 %storemerge.in.i

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.aa
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.gi, %bb.az ], [ %i.gh, %bb.ay ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  %i.gj = load ptr, ptr %4, align 8, !tbaa !200   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.cq
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.ba
  %i.gl = load i64, ptr %i.cq, align 8, !tbaa !64
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZN5arrow17BasicUnionBuilder10NextTypeIdEv(ptr noundef nonnull align 8 dereferenceable(312) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !168  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !106  ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  %.promoted = load i8, ptr %i.a, align 8, !tbaa !196 ; 2 uses
  %i.j = sext i8 %.promoted to i64                ; 2 uses
  %i.k = icmp ugt i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.l = phi i64 [ %i.r, %bb.b ], [ %i.j, %bb.a ]
  %i.m = phi i8 [ %i.q, %bb.b ], [ %.promoted, %bb.a ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !110
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = add i8 %i.m, 1                           ; 3 uses
  store i8 %i.q, ptr %i.a, align 8, !tbaa !196
  %i.r = sext i8 %i.q to i64                      ; 2 uses
  %i.s = icmp ugt i64 %i.i, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !197

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !167
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !103  ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %.not = icmp eq i64 %i.z, -4
  br i1 %.not, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef 1)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !168 ; 2 uses
  %.pre8 = load ptr, ptr %i.b, align 8, !tbaa !106 ; 2 uses
  %.pre9 = ptrtoint ptr %.pre to i64
  %.pre10 = ptrtoint ptr %.pre8 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %._crit_edge
  store ptr %i.w, ptr %i.u, align 8, !tbaa !167
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
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !168
  br label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit: ; preds = %.lr.ph, %_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.e, %bb.d
  %storemerge.in = load i8, ptr %i.a, align 8, !tbaa !196 ; 2 uses
  %storemerge = add i8 %storemerge.in, 1
  store i8 %storemerge, ptr %i.a, align 8, !tbaa !196
  ret i8 %storemerge.in
}

declare void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.63") align 8, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !72
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !90
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !90
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !74

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow17BasicUnionBuilder4typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.42") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(312) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.7", align 8     ; 15 uses
  %3 = alloca %"class.std::shared_ptr.63", align 16 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.42", align 8 ; 7 uses
  %5 = alloca %"class.std::vector.7", align 8     ; 7 uses
  %6 = alloca %"class.std::vector.12", align 8    ; 12 uses
  %7 = alloca %"class.std::vector.7", align 8     ; 7 uses
  %8 = alloca %"class.std::vector.12", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !143  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775792
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
end_hunk_0
