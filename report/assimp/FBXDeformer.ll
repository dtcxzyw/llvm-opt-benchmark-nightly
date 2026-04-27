inline.NumInlined: 842
inline.NumDeleted: 376
begin_hunk_0_@_ZN6Assimp3FBX7ClusterC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %bb.ar

.lr.ph:                                           ; preds = %bb.ae, %bb.af
  %.sroa.0149.0159 = phi ptr [ %i.eb, %bb.af ], [ %i.dy, %bb.ae ] ; 2 uses
  %i.ed = load ptr, ptr %.sroa.0149.0159, align 8
  %i.ee = invoke noundef ptr @_ZN6Assimp3FBX4Util23ProcessSimpleConnectionINS0_5ModelEEEPKT_RKNS0_10ConnectionEbPKcRKNS0_7ElementEPSB_(ptr noundef nonnull align 8 dereferenceable(64) %i.ed, i1 noundef zeroext false, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef null)
          to label %.critedge unwind label %bb.ah ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX4SkinC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %bb.ab

bb.t:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE9push_backERKS4_.exit
  %.sroa.044.050 = phi ptr [ %i.bp, %.lr.ph ], [ %i.cv, %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %i.bz = load ptr, ptr %.sroa.044.050, align 8
  %i.ca = invoke noundef ptr @_ZN6Assimp3FBX4Util23ProcessSimpleConnectionINS0_7ClusterEEEPKT_RKNS0_10ConnectionEbPKcRKNS0_7ElementEPSB_(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i1 noundef zeroext false, ptr noundef nonnull @.str.12, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef null)
          to label %bb.u unwind label %.loopexit  ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp3FBX10BlendShapeC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %bb.p

.lr.ph:                                           ; preds = %_ZNSt13unordered_setIPKN6Assimp3FBX17BlendShapeChannelESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE7reserveEm.exit, %bb.n
  %.sroa.027.032 = phi ptr [ %i.av, %bb.n ], [ %i.y, %_ZNSt13unordered_setIPKN6Assimp3FBX17BlendShapeChannelESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE7reserveEm.exit ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.027.032, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.aj = invoke noundef ptr @_ZN6Assimp3FBX4Util23ProcessSimpleConnectionINS0_17BlendShapeChannelEEEPKT_RKNS0_10ConnectionEbPKcRKNS0_7ElementEPSB_(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i1 noundef zeroext false, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef null)
end_hunk_2
begin_hunk_3_@_ZN6Assimp3FBX17BlendShapeChannelC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %bb.z

.lr.ph:                                           ; preds = %_ZNSt13unordered_setIPKN6Assimp3FBX13ShapeGeometryESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE7reserveEm.exit, %bb.x
  %.sroa.096.0103 = phi ptr [ %i.cz, %bb.x ], [ %i.cc, %_ZNSt13unordered_setIPKN6Assimp3FBX13ShapeGeometryESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE7reserveEm.exit ] ; 2 uses
  %i.cm = load ptr, ptr %.sroa.096.0103, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.cn = invoke noundef ptr @_ZN6Assimp3FBX4Util23ProcessSimpleConnectionINS0_13ShapeGeometryEEEPKT_RKNS0_10ConnectionEbPKcRKNS0_7ElementEPSB_(ptr noundef nonnull align 8 dereferenceable(64) %i.cm, i1 noundef zeroext false, ptr noundef nonnull @.str.18, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef null)
end_hunk_3
