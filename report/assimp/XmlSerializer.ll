inline.NumInlined: 1573
inline.NumDeleted: 659
begin_hunk_0_@_ZN6Assimp4D3MF13XmlSerializer9ImportXmlEP7aiScene:bb.a
  br label %bb.ao

bb.am:                                            ; preds = %bb.ah, %bb.af
  %.sroa.0182.0.a = phi float [ %.sroa.0182.0.copyload, %bb.ah ], [ 1.000000e+00, %bb.af ]
  %.sroa.7.0.a = phi float [ %.sroa.7.0.copyload, %bb.ah ], [ 1.000000e+00, %bb.af ]
  %.sroa.9.0 = phi float [ %.sroa.9.0.copyload, %bb.ah ], [ 1.000000e+00, %bb.af ]
  %.sroa.11.0 = phi float [ %.sroa.11.0.copyload, %bb.ah ], [ 1.000000e+00, %bb.af ]
  %i.gg = load ptr, ptr %i.i, align 8
  store float %.sroa.0182.0.a, ptr %20, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx184, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  store float %.sroa.7.0.a, ptr %.sroa.7.0..sroa_idx185, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx187, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  store float %.sroa.9.0, ptr %.sroa.9.0..sroa_idx188, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.0..sroa_idx190, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false)
  store float %.sroa.11.0, ptr %.sroa.11.0..sroa_idx191, align 4
  invoke void @_ZN6Assimp4D3MF13XmlSerializer15addObjectToNodeEP6aiNodePNS0_6ObjectE12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.gg, ptr noundef %i.ft, ptr noundef nonnull byval(%class.aiMatrix4x4t) align 8 %20)
          to label %.critedge unwind label %bb.an

end_hunk_0
begin_hunk_1_@_ZN6Assimp4D3MF13XmlSerializer10ReadObjectERN4pugi8xml_nodeE:._crit_edge.i.i
  br label %bb.cl

._crit_edge.i.i196:                               ; preds = %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %.sroa.0236.0.a = phi float [ %.sroa.0236.0.copyload, %bb.bz ], [ 1.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  %.sroa.7.0.a = phi float [ %.sroa.7.0.copyload, %bb.bz ], [ 1.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  %.sroa.9.0 = phi float [ %.sroa.9.0.copyload, %bb.bz ], [ 1.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  %.sroa.11.0 = phi float [ %.sroa.11.0.copyload, %bb.bz ], [ 1.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  store ptr %i.ay, ptr %20, align 8
  store i64 7235442246599467631, ptr %i.ay, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp4D3MF13XmlSerializer10ReadObjectERN4pugi8xml_nodeE:._crit_edge.i.i
bb.cg:                                            ; preds = %bb.cf
  store i32 %i.nr, ptr %i.ns, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  store float %.sroa.0236.0.a, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6238, i64 16, i1 false)
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  store float %.sroa.7.0.a, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, align 4
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 44
  store float %.sroa.9.0, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx, align 4
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false)
  %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 64
  store float %.sroa.11.0, ptr %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx.sroa_idx, align 4
  %i.nu = load ptr, ptr %i.bb, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 68
  store ptr %i.nv, ptr %i.bb, align 8
end_hunk_2
begin_hunk_3_@_ZN6Assimp4D3MF13XmlSerializer10ReadObjectERN4pugi8xml_nodeE:._crit_edge.i.i
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.nz ; 8 uses
  store i32 %i.nr, ptr %i.oi, align 4
  %.sroa.6.0..sroa_idx233 = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  store float %.sroa.0236.0.a, ptr %.sroa.6.0..sroa_idx233, align 4
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx233.sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx233.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6238, i64 16, i1 false)
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx233.sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  store float %.sroa.7.0.a, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx233.sroa_idx, align 4
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx233.sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx233.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx233.sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 44
  store float %.sroa.9.0, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx233.sroa_idx, align 4
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx233.sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx233.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false)
  %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx233.sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 64
  store float %.sroa.11.0, ptr %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx233.sroa_idx, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.nw, %i.ns
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4D3MF9ComponentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

end_hunk_3
begin_hunk_4_@_ZN6Assimp4D3MF12_GLOBAL__N_120parseTransformMatrixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %i.f, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit26, label %bb.v

.lr.ph:                                           ; preds = %bb.a, %bb.u
  %.sroa.07.061 = phi ptr [ %.sroa.07.2, %bb.u ], [ null, %bb.a ] ; 11 uses
  %.sroa.22.060 = phi ptr [ %.sroa.22.2, %bb.u ], [ null, %bb.a ] ; 8 uses
  %.sroa.30.059 = phi ptr [ %.sroa.30.2.a, %bb.u ], [ null, %bb.a ] ; 6 uses
  %.sroa.04.058 = phi ptr [ %i.av, %bb.u ], [ %.0.val, %bb.a ] ; 2 uses
  %i.g = load i8, ptr %.sroa.04.058, align 1      ; 2 uses
  %i.h = icmp eq i8 %i.g, 32
  %i.i = load i64, ptr %i.d, align 8              ; 5 uses
  br i1 %i.h, label %bb.b, label %bb.q
end_hunk_4
begin_hunk_5_@_ZN6Assimp4D3MF12_GLOBAL__N_120parseTransformMatrixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.k:                                             ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %.not.i = icmp eq ptr %.sroa.22.060, %.sroa.30.059
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store float %i.n, ptr %.sroa.22.060, align 4
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.m:                                             ; preds = %bb.k
  %i.u = ptrtoint ptr %.sroa.22.060 to i64
  %i.v = ptrtoint ptr %.sroa.07.061 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 6 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775804
  br i1 %i.x, label %bb.n, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
end_hunk_5
begin_hunk_6_@_ZN6Assimp4D3MF12_GLOBAL__N_120parseTransformMatrixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %i.ag, label %bb.o, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %.noexc10
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr align 4 %.sroa.07.061, i64 %i.w, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %.noexc10
  %.not.i17.i.i = icmp eq ptr %.sroa.07.061, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.07.061, i64 noundef %i.w) #26
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
end_hunk_6
begin_hunk_7_@_ZN6Assimp4D3MF12_GLOBAL__N_120parseTransformMatrixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.l
  %.sroa.30.1.a = phi ptr [ %i.ah, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.30.059, %bb.l ]
  %.pn = phi ptr [ %i.af, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.22.060, %bb.l ]
  %.sroa.07.1 = phi ptr [ %i.ae, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.07.061, %bb.l ]
  %.sroa.22.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  store i64 0, ptr %i.d, align 8
  %i.ai = load ptr, ptr %1, align 8
end_hunk_7
begin_hunk_8_@_ZN6Assimp4D3MF12_GLOBAL__N_120parseTransformMatrixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %.body

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %bb.b, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %.sroa.30.2.a = phi ptr [ %.sroa.30.059, %bb.b ], [ %.sroa.30.1.a, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ %.sroa.30.059, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 7 uses
  %.sroa.22.2 = phi ptr [ %.sroa.22.060, %bb.b ], [ %.sroa.22.1, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ %.sroa.22.060, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 3 uses
  %.sroa.07.2 = phi ptr [ %.sroa.07.061, %bb.b ], [ %.sroa.07.1, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ %.sroa.07.061, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ] ; 9 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.058, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.av, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph

end_hunk_8
begin_hunk_9_@_ZN6Assimp4D3MF12_GLOBAL__N_120parseTransformMatrixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.ad:                                            ; preds = %bb.aa, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not.i17 = icmp eq ptr %.sroa.22.2, %.sroa.30.2.a
  br i1 %.not.i17, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
end_hunk_9
begin_hunk_10_@_ZN6Assimp4D3MF12_GLOBAL__N_120parseTransformMatrixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit26

bb.af:                                            ; preds = %bb.ad
  %i.bg = ptrtoint ptr %.sroa.30.2.a to i64
  %i.bh = ptrtoint ptr %.sroa.07.2 to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 6 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775804
  br i1 %i.bj, label %bb.ag, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i18
end_hunk_10
begin_hunk_11_@_ZN6Assimp4D3MF12_GLOBAL__N_120parseTransformMatrixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %i.bs, label %bb.ah, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i21

bb.ah:                                            ; preds = %.noexc25
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bq, ptr align 4 %.sroa.07.2, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i21

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i21: ; preds = %bb.ah, %.noexc25
  %.not.i17.i.i22 = icmp eq ptr %.sroa.07.2, null
  br i1 %.not.i17.i.i22, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i23, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i21
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.07.2, i64 noundef %i.bi) #26
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i23

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i23: ; preds = %bb.ai, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i21
end_hunk_11
begin_hunk_12_@_ZN6Assimp4D3MF12_GLOBAL__N_120parseTransformMatrixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %.body

_ZNSt6vectorIfSaIfEE9push_backERKf.exit26:        ; preds = %bb.ae, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i23, %._crit_edge
  %.sroa.30.4.a = phi ptr [ %.sroa.30.2.a, %._crit_edge ], [ %i.bt, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i23 ], [ %.sroa.30.2.a, %bb.ae ]
  %.sroa.07.4 = phi ptr [ %.sroa.07.2, %._crit_edge ], [ %i.bq, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i23 ], [ %.sroa.07.2, %bb.ae ] ; 14 uses
  store float 1.000000e+00, ptr %0, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN6Assimp4D3MF12_GLOBAL__N_120parseTransformMatrixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ca, align 4
  %i.cb = load float, ptr %.sroa.07.4, align 4
  store float %i.cb, ptr %0, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 4
  %i.cd = load float, ptr %i.cc, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.cd, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 8
  %i.cg = load float, ptr %i.cf, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.cg, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float 0.000000e+00, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 12
  %i.ck = load float, ptr %i.cj, align 4
  store float %i.ck, ptr %i.bv, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 16
  %i.cm = load float, ptr %i.cl, align 4
  store float %i.cm, ptr %i.bw, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 20
  %i.co = load float, ptr %i.cn, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.co, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float 0.000000e+00, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 24
  %i.cs = load float, ptr %i.cr, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.cs, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 28
  %i.cv = load float, ptr %i.cu, align 4
  store float %i.cv, ptr %i.bx, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 32
  %i.cx = load float, ptr %i.cw, align 4
  store float %i.cx, ptr %i.by, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float 0.000000e+00, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 36
  %i.da = load float, ptr %i.cz, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.da, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 40
  %i.dd = load float, ptr %i.dc, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.dd, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.07.4, i64 44
  %i.dg = load float, ptr %i.df, align 4
  store float %i.dg, ptr %i.bz, align 4
  store float 1.000000e+00, ptr %i.ca, align 4
end_hunk_13
begin_hunk_14_@_ZN6Assimp4D3MF12_GLOBAL__N_120parseTransformMatrixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.dl = ptrtoint ptr %.sroa.30.4.a to i64
  %i.dm = ptrtoint ptr %.sroa.07.4 to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.07.4, i64 noundef %i.dn) #26
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aj, %_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i13, %bb.t, %_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i
  %.sroa.30.047 = phi ptr [ %.sroa.30.059, %_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i ], [ %.sroa.30.059, %bb.t ], [ %.sroa.30.2.a, %_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i13 ], [ %.sroa.30.2.a, %bb.aj ], [ %.sroa.22.060, %.loopexit ], [ %.sroa.22.060, %.loopexit.split-lp ]
  %.sroa.07.034 = phi ptr [ %.sroa.07.061, %_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i ], [ %.sroa.07.061, %bb.t ], [ %.sroa.07.2, %_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i13 ], [ %.sroa.07.2, %bb.aj ], [ %.sroa.07.061, %.loopexit ], [ %.sroa.07.061, %.loopexit.split-lp ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %i.q, %_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i ], [ %i.au, %bb.t ], [ %i.bc, %_ZZN9__gnu_cxx6__stoaIffcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i13 ], [ %i.bu, %bb.aj ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.do = load ptr, ptr %1, align 8               ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.c
end_hunk_14
begin_hunk_15_@_ZN6Assimp4D3MF12_GLOBAL__N_120parseTransformMatrixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %.not.i.i.i31 = icmp eq ptr %.sroa.07.034, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIfSaIfEED2Ev.exit32, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.ds = ptrtoint ptr %.sroa.30.047 to i64
  %i.dt = ptrtoint ptr %.sroa.07.034 to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.07.034, i64 noundef %i.du) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit32

_ZNSt6vectorIfSaIfEED2Ev.exit32:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %bb.ak
end_hunk_15
begin_hunk_16_@_ZN6Assimp4D3MF13XmlSerializer14ImportVerticesERN4pugi8xml_nodeEP6aiMesh:bb.a
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %.sroa.16.0.a = phi ptr [ null, %bb.a ], [ %.sroa.16.2.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 12 uses
  %.sroa.10.0 = phi ptr [ null, %bb.a ], [ %.sroa.10.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 7 uses
  %.sroa.051.0 = phi ptr [ null, %bb.a ], [ %.sroa.051.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 17 uses
  %i.g = invoke noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.c unwind label %bb.e
end_hunk_16
begin_hunk_17_@_ZN6Assimp4D3MF13XmlSerializer14ImportVerticesERN4pugi8xml_nodeEP6aiMesh:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.h = ptrtoint ptr %.sroa.10.0 to i64
  %i.i = ptrtoint ptr %.sroa.051.0 to i64         ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = sdiv exact i64 %i.j, 12                  ; 2 uses
  %i.l = trunc i64 %i.k to i32
end_hunk_17
begin_hunk_18_@_ZN6Assimp4D3MF13XmlSerializer14ImportVerticesERN4pugi8xml_nodeEP6aiMesh:bb.a
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %.0.i.i, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %.0.i4.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %.not.i.i = icmp eq ptr %.sroa.10.0, %.sroa.16.0.a
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_18
begin_hunk_19_@_ZN6Assimp4D3MF13XmlSerializer14ImportVerticesERN4pugi8xml_nodeEP6aiMesh:bb.a
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backEOS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = ptrtoint ptr %.sroa.16.0.a to i64
  %i.be = ptrtoint ptr %.sroa.051.0 to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 4 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.t, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_19
begin_hunk_20_@_ZN6Assimp4D3MF13XmlSerializer14ImportVerticesERN4pugi8xml_nodeEP6aiMesh:bb.a
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.bo, align 4
  %.sroa.6.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store float %.0.i7.i, ptr %.sroa.6.0..sroa_idx48, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.051.0, %.sroa.16.0.a
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc41, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i ], [ %i.bn, %.noexc41 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.051.0, %.noexc41 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !alias.scope !35
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, %.sroa.16.0.a
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !39

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc41
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bn, %.noexc41 ], [ %i.bq, %.lr.ph.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12
  %.not.i23.i.i.i = icmp eq ptr %.sroa.051.0, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.051.0, i64 noundef %i.bf) #26
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.u, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
end_hunk_20
begin_hunk_21_@_ZN6Assimp4D3MF13XmlSerializer14ImportVerticesERN4pugi8xml_nodeEP6aiMesh:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

.loopexit69:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %.noexc34, %_Z9ai_strtofPKcS0_.exit.i, %.noexc36, %_Z9ai_strtofPKcS0_.exit5.i, %.noexc38, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit71 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x
end_hunk_21
begin_hunk_22_@_ZN6Assimp4D3MF13XmlSerializer14ImportVerticesERN4pugi8xml_nodeEP6aiMesh:bb.a
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp70, %.loopexit69
  %lpad.phi73 = phi { ptr, i32 } [ %lpad.loopexit71, %.loopexit69 ], [ %lpad.loopexit.split-lp72, %.loopexit.split-lp70 ] ; 2 uses
  %i.bv = load ptr, ptr %9, align 8               ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.e
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.m, %bb.r, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.sroa.16.2.a = phi ptr [ %.sroa.16.0.a, %bb.r ], [ %.sroa.16.0.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.bs, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.16.0.a, %bb.m ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %i.bc, %bb.r ], [ %.sroa.10.0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.br, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.10.0, %bb.m ]
  %.sroa.051.2 = phi ptr [ %.sroa.051.0, %bb.r ], [ %.sroa.051.0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.bn, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.051.0, %bb.m ] ; 2 uses
  %i.bx = load ptr, ptr %9, align 8               ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.e
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_22
begin_hunk_23_@_ZN6Assimp4D3MF13XmlSerializer14ImportVerticesERN4pugi8xml_nodeEP6aiMesh:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.x, %.loopexit68, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.bu, %bb.w ], [ %lpad.phi73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit68 ], [ %lpad.phi73, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %bb.e
  %.sroa.16.3.a = phi ptr [ %.sroa.16.0.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %.sroa.16.1.a, %bb.e ], [ %.sroa.16.0.a, %bb.v ]
  %.sroa.051.3 = phi ptr [ %.sroa.051.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %.sroa.051.1, %bb.e ], [ %.sroa.051.0, %bb.v ]
  %.pn22 = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.q, %bb.e ], [ %i.bt, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
end_hunk_23
begin_hunk_24_@_ZN6Assimp4D3MF13XmlSerializer14ImportVerticesERN4pugi8xml_nodeEP6aiMesh:bb.a
  br i1 %i.ck, label %bb.aa, label %bb.ab, !prof !24

bb.aa:                                            ; preds = %.loopexit
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 4 %.sroa.051.0, i64 %i.j, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIfESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.ab:                                            ; preds = %.loopexit
end_hunk_24
begin_hunk_25_@_ZN6Assimp4D3MF13XmlSerializer14ImportVerticesERN4pugi8xml_nodeEP6aiMesh:bb.a
  br i1 %i.cl, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIfESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.thread, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIfESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIfESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.thread: ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.051.0, i64 12, i1 false)
  br label %bb.ac

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIfESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %bb.ab, %bb.aa
  %.not.i.i.i = icmp eq ptr %.sroa.051.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIfESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIfESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.cm = ptrtoint ptr %.sroa.16.0.a to i64
  %i.cn = sub i64 %i.cm, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.051.0, i64 noundef %i.cn) #26
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIfESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, %bb.ac
end_hunk_25
begin_hunk_26_@_ZN6Assimp4D3MF13XmlSerializer14ImportVerticesERN4pugi8xml_nodeEP6aiMesh:bb.a
  br label %bb.ae

bb.ae:                                            ; preds = %bb.y, %bb.ad
  %.sroa.16.4.a = phi ptr [ %.sroa.16.3.a, %bb.y ], [ %.sroa.16.0.a, %bb.ad ]
  %.sroa.051.4 = phi ptr [ %.sroa.051.3, %bb.y ], [ %.sroa.051.0, %bb.ad ] ; 3 uses
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22, %bb.y ], [ %i.co, %bb.ad ]
  %.not.i.i.i45 = icmp eq ptr %.sroa.051.4, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit46, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cp = ptrtoint ptr %.sroa.16.4.a to i64
  %i.cq = ptrtoint ptr %.sroa.051.4 to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.051.4, i64 noundef %i.cr) #26
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit46

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit46:  ; preds = %bb.ae, %bb.af
end_hunk_26
