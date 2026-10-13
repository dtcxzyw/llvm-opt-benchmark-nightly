Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.format-feature-baseline?download=true
inline.NumInlined: 354
inline.NumDeleted: 167
begin_hunk_0_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_T0_SJ_T1_T2_:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i: ; preds = %bb.u, %.lr.ph.i
  %.sroa.011.0.lcssa.i.i.i.i.i = phi ptr [ %.val.i35, %.lr.ph.i ], [ %scevgep.i.i.i.i.i, %bb.u ]
  %.not.i36 = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i.i, %i.cu
  br i1 %.not.i36, label %.critedge.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i
  %i.dh = getelementptr inbounds [32 x i8], ptr %0, i64 %.015.i ; 8 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !29 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 4 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 6 uses
  %i.dm = icmp eq ptr %.val.i.i, %i.dl            ; 2 uses
  br i1 %i.dk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i
  br i1 %i.dm, label %bb.v, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.thread.i
  br i1 %i.dm, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dn = icmp ult i64 %.val2.i.i, 16
  call void @llvm.assume(i1 %i.dn)
  %.not21.i.i = icmp eq i64 %.0916.i, %.015.i
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.w, !prof !40

bb.w:                                             ; preds = %bb.v
  switch i64 %.val2.i.i, label %bb.y [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.do = load i8, ptr %.val.i.i, align 1, !tbaa !30
  store i8 %i.do, ptr %i.di, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.di, ptr align 1 %.val.i.i, i64 %.val2.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.dp = load i64, ptr %i.ct, align 8, !tbaa !38 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !38
  %i.dr = load ptr, ptr %i.dh, align 8, !tbaa !29
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dp
  store i8 0, ptr %i.ds, align 1, !tbaa !30
  %.pre.i.i = load ptr, ptr %i.cs, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %.val.i.i, ptr %i.dh, align 8, !tbaa !29
  store i64 %.val2.i.i, ptr %i.dt, align 8, !tbaa !38
  %i.du = load i64, ptr %i.dl, align 8, !tbaa !30
  store i64 %i.du, ptr %i.dj, align 8, !tbaa !30
  br label %bb.aa

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.dv = load i64, ptr %i.dj, align 8, !tbaa !30
  store ptr %.val.i.i, ptr %i.dh, align 8, !tbaa !29
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %.val2.i.i, ptr %i.dw, align 8, !tbaa !38
  %i.dx = load i64, ptr %i.dl, align 8, !tbaa !30
  store i64 %i.dx, ptr %i.dj, align 8, !tbaa !30
  %.not.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.di, ptr %i.cs, align 8, !tbaa !29
  store i64 %i.dv, ptr %i.dl, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.dl, ptr %i.cs, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.aa, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.v
  %i.dy = phi ptr [ %i.di, %bb.z ], [ %i.dl, %bb.aa ], [ %.val.i.i, %bb.v ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.ct, align 8, !tbaa !38
  store i8 0, ptr %i.dy, align 1, !tbaa !30
  %i.dz = icmp sgt i64 %.0916.i, %1
  br i1 %i.dz, label %.lr.ph.i, label %.critedge.i, !llvm.loop !60

.critedge.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.012.i = phi i64 [ %.015.i, %bb.t ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %.015.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESC_EEbT_RT0_.exit.i ], [ %.0916.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i ]
  %i.ea = getelementptr inbounds [32 x i8], ptr %0, i64 %.012.i ; 9 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !29 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 4 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  %i.ee = load ptr, ptr %4, align 8, !tbaa !29    ; 6 uses
  %i.ef = icmp eq ptr %i.ee, %i.cf                ; 2 uses
  %.pre63 = load i64, ptr %i.cq, align 8, !tbaa !38 ; 5 uses
  br i1 %i.ed, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17.i: ; preds = %.critedge.i
  br i1 %i.ef, label %bb.ab, label %.thread.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i11.i: ; preds = %.critedge.i
  br i1 %i.ef, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i12.i

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i11.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17.i
  %i.eg = icmp ult i64 %.pre63, 16
  call void @llvm.assume(i1 %i.eg)
  %.not21.i14.i = icmp eq ptr %4, %i.ea
  br i1 %.not21.i14.i, label %bb.ah, label %bb.ac, !prof !40

bb.ac:                                            ; preds = %bb.ab
  switch i64 %.pre63, label %bb.ae [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i15.i
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.eh = load i8, ptr %i.ee, align 1, !tbaa !30
  store i8 %i.eh, ptr %i.eb, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i15.i

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr align 1 %i.ee, i64 %.pre63, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i15.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i15.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.ei = load i64, ptr %i.cq, align 8, !tbaa !38 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !38
  %i.ek = load ptr, ptr %i.ea, align 8, !tbaa !29
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ei
  store i8 0, ptr %i.el, align 1, !tbaa !30
  %.pre.i16.i = load ptr, ptr %4, align 8, !tbaa !29
  br label %bb.ah

.thread.i18.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %i.ee, ptr %i.ea, align 8, !tbaa !29
  store i64 %.pre63, ptr %i.em, align 8, !tbaa !38
  %i.en = load i64, ptr %i.cf, align 8, !tbaa !30
  store i64 %i.en, ptr %i.ec, align 8, !tbaa !30
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i12.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i11.i
  %i.eo = load i64, ptr %i.ec, align 8, !tbaa !30
  store ptr %i.ee, ptr %i.ea, align 8, !tbaa !29
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i64 %.pre63, ptr %i.ep, align 8, !tbaa !38
  %i.eq = load i64, ptr %i.cf, align 8, !tbaa !30
  store i64 %i.eq, ptr %i.ec, align 8, !tbaa !30
  %.not.i13.i = icmp eq ptr %i.eb, null
  br i1 %.not.i13.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i12.i
  store ptr %i.eb, ptr %4, align 8, !tbaa !29
  store i64 %i.eo, ptr %i.cf, align 8, !tbaa !30
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i12.i, %.thread.i18.i
  store ptr %i.cf, ptr %4, align 8, !tbaa !29
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i15.i, %bb.ab
  %i.er = phi ptr [ %i.eb, %bb.af ], [ %i.cf, %bb.ag ], [ %i.ee, %bb.ab ], [ %.pre.i16.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i15.i ]
  store i64 0, ptr %i.cq, align 8, !tbaa !38
  store i8 0, ptr %i.er, align 1, !tbaa !30
  %i.es = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.cf
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.ah
  %i.eu = load i64, ptr %i.cf, align 8, !tbaa !30
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_SI_T0_(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit24, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.025 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not26 = icmp eq ptr %.sroa.0.025, %1
  br i1 %.not26, label %.loopexit24, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not21.i = icmp eq ptr %2, %0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.0.028 = phi ptr [ %.sroa.0.025, %.lr.ph ], [ %.sroa.0.0, %bb.q ] ; 7 uses
  %.pn27 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.028, %bb.q ] ; 3 uses
  %.val.i = load ptr, ptr %.sroa.0.028, align 8, !tbaa !29 ; 4 uses
  %i.g = getelementptr i8, ptr %.pn27, i64 40     ; 2 uses
  %.val1.i = load i64, ptr %i.g, align 8, !tbaa !38 ; 4 uses
  %.val2.i = load ptr, ptr %0, align 8, !tbaa !29 ; 4 uses
  %.val3.i = load i64, ptr %i.b, align 8, !tbaa !38 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %.val3.i
  %spec.select.i.i.i.v.i.i = call i64 @llvm.smin.i64(i64 %.val3.i, i64 %.val1.i) ; 3 uses
  %spec.select.i.i.i.i.i = getelementptr inbounds i8, ptr %.val.i, i64 %spec.select.i.i.i.v.i.i
  %.not19.i.i.i.i = icmp eq i64 %spec.select.i.i.i.v.i.i, 0
  br i1 %.not19.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.b
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val2.i, i64 %spec.select.i.i.i.v.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.preheader.i.i.i.i
  %.sroa.015.021.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %.val.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.011.020.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ %.val2.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.i = load i8, ptr %.sroa.015.021.i.i.i.i, align 1, !tbaa !30
  %i.j = load i8, ptr %.sroa.011.020.i.i.i.i, align 1, !tbaa !30
  %i.k = zext i8 %i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !30    ; 2 uses
  %i.n = zext i8 %i.j to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !30    ; 2 uses
  %i.q = icmp ult i8 %i.m, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.r = icmp ult i8 %i.p, %i.m
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread21, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i.i, i64 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq ptr %i.s, %spec.select.i.i.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit: ; preds = %bb.d, %bb.b
  %.sroa.011.0.lcssa.i.i.i.i = phi ptr [ %.val2.i, %bb.b ], [ %scevgep.i.i.i.i, %bb.d ]
  %.not23 = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i, %i.h
  br i1 %.not23, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread21, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %i.c, ptr %2, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %.pn27, i64 48 ; 5 uses
  %i.v = icmp eq ptr %.val.i, %i.u
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
  %i.w = icmp ult i64 %.val1.i, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %.val1.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread
  store ptr %.val.i, ptr %2, align 8, !tbaa !29
  %i.y = load i64, ptr %i.u, align 8, !tbaa !30
  store i64 %i.y, ptr %i.c, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store i64 %.val1.i, ptr %i.d, align 8, !tbaa !38
  store ptr %i.u, ptr %.sroa.0.028, align 8, !tbaa !29
  store i64 0, ptr %i.g, align 8, !tbaa !38
  store i8 0, ptr %i.u, align 8, !tbaa !30
  %i.z = ptrtoint ptr %.sroa.0.028 to i64
  %i.aa = sub i64 %i.z, %i.e
  %i.ab = ashr exact i64 %i.aa, 5                 ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn27, i64 64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %.sroa.0.028, %.lr.ph.i.i.i.i.i.preheader ] ; 6 uses
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 5 uses
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !29 ; 6 uses
  %i.ah = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 4 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 5 uses
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 6 uses
  %i.al = icmp eq ptr %i.aj, %i.ak                ; 2 uses
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.al, label %bb.f, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.al, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !38 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  switch i64 %i.an, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !30
  store i8 %i.ap, ptr %i.ag, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aj, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !38 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !38
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !30
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.au = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !29
  %i.av = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !38
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !38
  %i.ax = load i64, ptr %i.ak, align 8, !tbaa !30
  store i64 %i.ax, ptr %i.ah, align 8, !tbaa !30
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.ay = load i64, ptr %i.ah, align 8, !tbaa !30
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !29
  %i.az = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !38
  %i.bb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !38
  %i.bc = load i64, ptr %i.ak, align 8, !tbaa !30
  store i64 %i.bc, ptr %i.ah, align 8, !tbaa !30
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !29
  store i64 %i.ay, ptr %i.ak, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
  %i.bd = phi ptr [ %i.ag, %bb.i ], [ %i.ak, %bb.j ], [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ]
  %i.be = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  store i64 0, ptr %i.be, align 8, !tbaa !38
  store i8 0, ptr %i.bd, align 1, !tbaa !30
  %i.bf = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bg = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !61

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.bh = load ptr, ptr %0, align 8, !tbaa !29    ; 6 uses
  %i.bi = icmp eq ptr %i.bh, %i.f
  %i.bj = load ptr, ptr %2, align 8, !tbaa !29    ; 6 uses
  %i.bk = icmp eq ptr %i.bj, %i.c                 ; 2 uses
  %.pre30 = load i64, ptr %i.d, align 8, !tbaa !38 ; 5 uses
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8: ; preds = %.loopexit
  br i1 %i.bk, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %.loopexit
  br i1 %i.bk, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  %i.bl = icmp ult i64 %.pre30, 16
  call void @llvm.assume(i1 %i.bl)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !40

bb.l:                                             ; preds = %bb.k
  switch i64 %.pre30, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bm = load i8, ptr %i.bj, align 1, !tbaa !30
  store i8 %i.bm, ptr %i.bh, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bj, i64 %.pre30, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.bn = load i64, ptr %i.d, align 8, !tbaa !38  ; 2 uses
  store i64 %i.bn, ptr %i.b, align 8, !tbaa !38
  %i.bo = load ptr, ptr %0, align 8, !tbaa !29
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 0, ptr %i.bp, align 1, !tbaa !30
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  store ptr %i.bj, ptr %0, align 8, !tbaa !29
  store i64 %.pre30, ptr %i.b, align 8, !tbaa !38
  %3 = load i64, ptr %i.c, align 8, !tbaa !30
  store i64 %3, ptr %i.f, align 8, !tbaa !30
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bq = load i64, ptr %i.f, align 8, !tbaa !30
  store ptr %i.bj, ptr %0, align 8, !tbaa !29
  store i64 %.pre30, ptr %i.b, align 8, !tbaa !38
  %4 = load i64, ptr %i.c, align 8, !tbaa !30
  store i64 %4, ptr %i.f, align 8, !tbaa !30
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bh, ptr %2, align 8, !tbaa !29
  store i64 %i.bq, ptr %i.c, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.c, ptr %2, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %i.br = phi ptr [ %i.bh, %bb.o ], [ %i.c, %bb.p ], [ %i.bj, %bb.k ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.d, align 8, !tbaa !38
  store i8 0, ptr %i.br, align 1, !tbaa !30
  %i.bs = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.c
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !30
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread21: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit
  call fastcc void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_T0_(ptr nonnull %.sroa.0.028)
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN12_GLOBAL__N_17cmp_strEEclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread21
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.028, i64 32 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit24, label %bb.b, !llvm.loop !62

.loopexit24:                                      ; preds = %bb.q, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIN12_GLOBAL__N_17cmp_strEEEEvT_T0_(ptr %0) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !39
  %i.b = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %1, align 8, !tbaa !29
  %i.i = load i64, ptr %i.c, align 8, !tbaa !30
  store i64 %i.i, ptr %i.a, align 8, !tbaa !30
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %.val38 = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.j = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 %i.j, ptr %i.l, align 8, !tbaa !38
  store ptr %i.c, ptr %0, align 8, !tbaa !29
  store i64 0, ptr %i.k, align 8, !tbaa !38
  store i8 0, ptr %i.c, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.val1 = phi i64 [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %.val1.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 6 uses
  %.val = phi ptr [ %.val38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %.val.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 8 uses
  %.sroa.017.0 = phi ptr [ %0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %.sroa.0.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 20 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.017.0, i64 -32 ; 5 uses
  %.val3.i = load ptr, ptr %.sroa.0.0, align 8, !tbaa !29 ; 9 uses
  %i.m = getelementptr i8, ptr %.sroa.017.0, i64 -24 ; 3 uses
  %.val4.i = load i64, ptr %i.m, align 8, !tbaa !38 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val3.i, i64 %.val4.i
  %spec.select.i.i.i.v.i.i = call i64 @llvm.smin.i64(i64 %.val4.i, i64 %.val1) ; 3 uses
  %spec.select.i.i.i.i.i = getelementptr inbounds i8, ptr %.val, i64 %spec.select.i.i.i.v.i.i
  %.not19.i.i.i.i = icmp eq i64 %spec.select.i.i.i.v.i.i, 0
  br i1 %.not19.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_17cmp_strEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.c
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val3.i, i64 %spec.select.i.i.i.v.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i
  %.sroa.015.021.i.i.i.i = phi ptr [ %i.y, %bb.e ], [ %.val, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.011.020.i.i.i.i = phi ptr [ %i.z, %bb.e ], [ %.val3.i, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.o = load i8, ptr %.sroa.015.021.i.i.i.i, align 1, !tbaa !30
  %i.p = load i8, ptr %.sroa.011.020.i.i.i.i, align 1, !tbaa !30
  %i.q = zext i8 %i.o to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30    ; 2 uses
  %i.t = zext i8 %i.p to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_118comparison_indicesE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !30    ; 2 uses
  %i.w = icmp ult i8 %i.s, %i.v
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_17cmp_strEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp ult i8 %i.v, %i.s
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_17cmp_strEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread21, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i.i.i.i, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.011.020.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq ptr %i.y, %spec.select.i.i.i.i.i
  br i1 %.not.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_17cmp_strEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_17cmp_strEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit: ; preds = %bb.e, %bb.c
  %.sroa.011.0.lcssa.i.i.i.i = phi ptr [ %.val3.i, %bb.c ], [ %scevgep.i.i.i.i, %bb.e ]
  %.not = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i, %i.n
  br i1 %.not, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_17cmp_strEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread21, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_17cmp_strEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_17cmp_strEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_17cmp_strEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit
  %i.aa = load ptr, ptr %.sroa.017.0, align 8, !tbaa !29 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 16 ; 4 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %.sroa.017.0, i64 -16 ; 6 uses
  %i.ae = icmp eq ptr %.val3.i, %i.ad             ; 2 uses
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_17cmp_strEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread
  br i1 %i.ae, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN12_GLOBAL__N_17cmp_strEEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPSB_St6vectorISB_SaISB_EEEEEEbRT_T0_.exit.thread
  br i1 %i.ae, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2
  %i.af = icmp ult i64 %.val4.i, 16
  call void @llvm.assume(i1 %i.af)
  switch i64 %.val4.i, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ag = load i8, ptr %.val3.i, align 1, !tbaa !30
  store i8 %i.ag, ptr %i.aa, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %.val3.i, i64 %.val4.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !38  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !38
  %i.aj = load ptr, ptr %.sroa.017.0, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !30
  %.pre.i = load ptr, ptr %.sroa.0.0, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 8
  store ptr %.val3.i, ptr %.sroa.017.0, align 8, !tbaa !29
  store i64 %.val4.i, ptr %i.al, align 8, !tbaa !38
  %i.am = load i64, ptr %i.ad, align 8, !tbaa !30
  store i64 %i.am, ptr %i.ab, align 8, !tbaa !30
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.an = load i64, ptr %i.ab, align 8, !tbaa !30
  store ptr %.val3.i, ptr %.sroa.017.0, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 8
  store i64 %.val4.i, ptr %i.ao, align 8, !tbaa !38
  %i.ap = load i64, ptr %i.ad, align 8, !tbaa !30
  store i64 %i.ap, ptr %i.ab, align 8, !tbaa !30
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.aa, ptr %.sroa.0.0, align 8, !tbaa !29
  store i64 %i.an, ptr %i.ad, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ad, ptr %.sroa.0.0, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.aq = phi ptr [ %i.aa, %bb.i ], [ %i.ad, %bb.j ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
end_hunk_0
