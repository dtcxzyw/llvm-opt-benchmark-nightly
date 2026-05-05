inline.NumInlined: 1573
inline.NumDeleted: 659
begin_hunk_0_@_ZN6Assimp4D3MF13XmlSerializer9ImportXmlEP7aiScene:bb.a
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %class.aiMatrix4x4t, align 4       ; 11 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp4D3MF13XmlSerializer9ImportXmlEP7aiScene:bb.a
  store ptr %i.di, ptr %16, align 8
  store i64 0, ptr %i.dj, align 8
  store i8 0, ptr %i.di, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store ptr %i.dk, ptr %17, align 8
  store i64 7235442246599467631, ptr %i.dk, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp4D3MF13XmlSerializer9ImportXmlEP7aiScene:bb.a

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0182.0.copyload = load float, ptr %19, align 4
  %.sroa.6.0.copyload = load <4 x float>, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0.copyload = load <4 x float>, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0.copyload = load <4 x float>, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.am
end_hunk_2
begin_hunk_3_@_ZN6Assimp4D3MF13XmlSerializer9ImportXmlEP7aiScene:bb.a

bb.am:                                            ; preds = %bb.ah, %bb.af
  %.sroa.0182.0 = phi float [ %.sroa.0182.0.copyload, %bb.ah ], [ 1.000000e+00, %bb.af ]
  %.sroa.6.0 = phi <4 x float> [ %.sroa.6.0.copyload, %bb.ah ], [ zeroinitializer, %bb.af ]
  %.sroa.7.0 = phi float [ %.sroa.7.0.copyload, %bb.ah ], [ 1.000000e+00, %bb.af ]
  %.sroa.8.0 = phi <4 x float> [ %.sroa.8.0.copyload, %bb.ah ], [ zeroinitializer, %bb.af ]
  %.sroa.9.0 = phi float [ %.sroa.9.0.copyload, %bb.ah ], [ 1.000000e+00, %bb.af ]
  %.sroa.10.0 = phi <4 x float> [ %.sroa.10.0.copyload, %bb.ah ], [ zeroinitializer, %bb.af ]
  %.sroa.11.0 = phi float [ %.sroa.11.0.copyload, %bb.ah ], [ 1.000000e+00, %bb.af ]
  %i.gg = load ptr, ptr %i.i, align 8
  store float %.sroa.0182.0, ptr %20, align 8
  store <4 x float> %.sroa.6.0, ptr %.sroa.6.0..sroa_idx184, align 4
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx185, align 4
  store <4 x float> %.sroa.8.0, ptr %.sroa.8.0..sroa_idx187, align 8
  store float %.sroa.9.0, ptr %.sroa.9.0..sroa_idx188, align 8
  store <4 x float> %.sroa.10.0, ptr %.sroa.10.0..sroa_idx190, align 4
  store float %.sroa.11.0, ptr %.sroa.11.0..sroa_idx191, align 4
  invoke void @_ZN6Assimp4D3MF13XmlSerializer15addObjectToNodeEP6aiNodePNS0_6ObjectE12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.gg, ptr noundef %i.ft, ptr noundef nonnull byval(%class.aiMatrix4x4t) align 8 %20)
          to label %.critedge unwind label %bb.an
end_hunk_3
begin_hunk_4_@_ZN6Assimp4D3MF13XmlSerializer9ImportXmlEP7aiScene:bb.a
  br label %bb.ao

.critedge:                                        ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjPN6Assimp4D3MF8ResourceEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNSt3mapIjPN6Assimp4D3MF8ResourceESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit, %bb.am, %bb.ae
  %i.gi = load ptr, ptr %16, align 8              ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.di
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
end_hunk_4
begin_hunk_5_@_ZN6Assimp4D3MF13XmlSerializer9ImportXmlEP7aiScene:bb.a

bb.ao:                                            ; preds = %bb.ak, %bb.an, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %.pn70.pn.pn.pn = phi { ptr, i32 } [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %i.gf, %bb.al ], [ %i.ge, %bb.ak ], [ %i.gh, %bb.an ] ; 2 uses
  %i.gm = load ptr, ptr %16, align 8              ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.di
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
end_hunk_5
begin_hunk_6_@_ZN6Assimp4D3MF13XmlSerializer10ReadObjectERN4pugi8xml_nodeE:._crit_edge.i.i
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %class.aiMatrix4x4t, align 4       ; 11 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
end_hunk_6
begin_hunk_7_@_ZN6Assimp4D3MF13XmlSerializer10ReadObjectERN4pugi8xml_nodeE:._crit_edge.i.i
  store ptr %i.au, ptr %17, align 8
  store i64 0, ptr %i.av, align 8
  store i8 0, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  store ptr %i.aw, ptr %18, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aw, ptr noundef nonnull align 1 dereferenceable(9) @_ZN6Assimp4D3MF6XmlTagL9transformE, i64 9, i1 false)
end_hunk_7
begin_hunk_8_@_ZN6Assimp4D3MF13XmlSerializer10ReadObjectERN4pugi8xml_nodeE:._crit_edge.i.i

bb.bz:                                            ; preds = %bb.by
  %.sroa.0236.0.copyload = load float, ptr %19, align 4
  %.sroa.6238.0.copyload = load <4 x float>, ptr %.sroa.6238.0..sroa_idx, align 4
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0.copyload = load <4 x float>, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0.copyload = load <4 x float>, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %._crit_edge.i.i196
end_hunk_8
begin_hunk_9_@_ZN6Assimp4D3MF13XmlSerializer10ReadObjectERN4pugi8xml_nodeE:._crit_edge.i.i

._crit_edge.i.i196:                               ; preds = %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %.sroa.0236.0 = phi float [ %.sroa.0236.0.copyload, %bb.bz ], [ 1.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  %.sroa.6238.0 = phi <4 x float> [ %.sroa.6238.0.copyload, %bb.bz ], [ zeroinitializer, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  %.sroa.7.0 = phi float [ %.sroa.7.0.copyload, %bb.bz ], [ 1.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  %.sroa.8.0 = phi <4 x float> [ %.sroa.8.0.copyload, %bb.bz ], [ zeroinitializer, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  %.sroa.9.0 = phi float [ %.sroa.9.0.copyload, %bb.bz ], [ 1.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  %.sroa.10.0 = phi <4 x float> [ %.sroa.10.0.copyload, %bb.bz ], [ zeroinitializer, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  %.sroa.11.0 = phi float [ %.sroa.11.0.copyload, %bb.bz ], [ 1.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store ptr %i.ay, ptr %20, align 8
end_hunk_9
begin_hunk_10_@_ZN6Assimp4D3MF13XmlSerializer10ReadObjectERN4pugi8xml_nodeE:._crit_edge.i.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  store float %.sroa.0236.0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  store <4 x float> %.sroa.6238.0, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 4
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  store float %.sroa.7.0, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, align 4
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 28
  store <4 x float> %.sroa.8.0, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx, align 4
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 44
  store float %.sroa.9.0, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx, align 4
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 48
  store <4 x float> %.sroa.10.0, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx, align 4
  %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 64
  store float %.sroa.11.0, ptr %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx.sroa_idx, align 4
  %i.nu = load ptr, ptr %i.bb, align 8
end_hunk_10
begin_hunk_11_@_ZN6Assimp4D3MF13XmlSerializer10ReadObjectERN4pugi8xml_nodeE:._crit_edge.i.i
  %.sroa.6.0..sroa_idx233 = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  store float %.sroa.0236.0, ptr %.sroa.6.0..sroa_idx233, align 4
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx233.sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store <4 x float> %.sroa.6238.0, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx233.sroa_idx, align 4
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx233.sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  store float %.sroa.7.0, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx233.sroa_idx, align 4
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx233.sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 28
  store <4 x float> %.sroa.8.0, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx233.sroa_idx, align 4
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx233.sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 44
  store float %.sroa.9.0, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx233.sroa_idx, align 4
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx233.sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 48
  store <4 x float> %.sroa.10.0, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx233.sroa_idx, align 4
  %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx233.sroa_idx = getelementptr inbounds nuw i8, ptr %i.oi, i64 64
  store float %.sroa.11.0, ptr %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx233.sroa_idx, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.nw, %i.ns
end_hunk_11
