inline.NumInlined: 2188
inline.NumDeleted: 850
begin_hunk_0_@_ZN6Assimp16ExportProperties19SetPropertyCallbackEPKcRKSt8functionIFPvS4_EE:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_Z18SetGenericPropertyISt8functionIFPvS1_EEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS5_EEEPKcRKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 11 uses
  %4 = alloca %"struct.std::pair.90", align 8     ; 8 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_Z13SuperFastHashPKcjj.exit, label %bb.b
end_hunk_0
begin_hunk_1_@_Z18SetGenericPropertyISt8functionIFPvS1_EEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS5_EEEPKcRKS5_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %.not.i.i.not.i.i11 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.not.i.i11, label %_ZNSt8functionIFPvS0_EEC2ERKS2_.exit.i, label %bb.u
end_hunk_1
begin_hunk_2_@_Z18SetGenericPropertyISt8functionIFPvS1_EEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS5_EEEPKcRKS5_:bb.a
bb.w:                                             ; preds = %bb.u
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = load ptr, ptr %i.ea, align 16           ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i12, label %common.resume, label %bb.x

end_hunk_2
begin_hunk_3_@_Z18SetGenericPropertyISt8functionIFPvS1_EEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS5_EEEPKcRKS5_:bb.a

_ZNSt8functionIFPvS0_EEC2ERKS2_.exit.i:           ; preds = %bb.v, %bb.t
  %i.ek = phi <2 x ptr> [ splat (ptr null), %bb.t ], [ %i.ee, %bb.v ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.dz, i64 16, i1 false)
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.dz, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 56 ; 3 uses
  %i.em = load <2 x ptr>, ptr %i.el, align 8
  %i.en = load ptr, ptr %i.el, align 8            ; 2 uses
  store <2 x ptr> %i.em, ptr %i.ea, align 16
  store <2 x ptr> %i.ek, ptr %i.el, align 8
  %.not.i.i14 = icmp eq ptr %i.en, null
  br i1 %.not.i.i14, label %_ZNSt8functionIFPvS0_EEaSERKS2_.exit, label %bb.z
end_hunk_3
begin_hunk_4_@_ZN6Assimp16ExportProperties17SetPropertyMatrixEPKcRK12aiMatrix4x4tIfE:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_Z18SetGenericPropertyI12aiMatrix4x4tIfEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS3_EEEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_Z13SuperFastHashPKcjj.exit, label %bb.b

end_hunk_4
begin_hunk_5_@_Z18SetGenericPropertyI12aiMatrix4x4tIfEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS3_EEEPKcRKS3_:bb.a
  br i1 %.not10.i.i.i, label %.thread15, label %.lr.ph.i.i.i

.thread15:                                        ; preds = %_Z13SuperFastHashPKcjj.exit
  %.sroa.5.sroa.0.0.copyload22 = load <16 x float>, ptr %2, align 4
  br label %.critedge.i

.lr.ph.i.i.i:                                     ; preds = %_Z13SuperFastHashPKcjj.exit, %.lr.ph.i.i.i
end_hunk_5
begin_hunk_6_@_Z18SetGenericPropertyI12aiMatrix4x4tIfEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS3_EEEPKcRKS3_:bb.a
  br i1 %i.cs, label %.lr.ph.i.i.i.i, label %bb.m

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit
  %.sroa.5.sroa.0.0.copyload23 = load <16 x float>, ptr %2, align 4 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
end_hunk_6
begin_hunk_7_@_Z18SetGenericPropertyI12aiMatrix4x4tIfEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS3_EEEPKcRKS3_:bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = icmp ult i32 %.0.i, %i.cy
  br i1 %i.cz, label %.critedge.i, label %bb.n

.critedge.i:                                      ; preds = %.thread15, %bb.h, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i
  %.sroa.5.sroa.0.0 = phi <16 x float> [ %.sroa.5.sroa.0.0.copyload22, %.thread15 ], [ %.sroa.5.sroa.0.0.copyload23, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i ], [ %.sroa.5.sroa.0.0.copyload23, %bb.h ]
  %.08.lcssa.i.i.i14.i = phi ptr [ %i.cl, %.thread15 ], [ %.19.i.i.i.i, %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i ], [ %.19.i.i.i.i, %bb.h ]
  %i.da = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #31 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32 ; 3 uses
  store i32 %.0.i, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 36
  store <16 x float> %.sroa.5.sroa.0.0, ptr %i.dc, align 4
  %i.dd = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 4 dereferenceable(4) %i.db)
          to label %bb.i unwind label %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

end_hunk_7
begin_hunk_8_@_Z18SetGenericPropertyI12aiMatrix4x4tIfEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS3_EEEPKcRKS3_:bb.a
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8
  br label %bb.n

_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.dp = landingpad { ptr, i32 }
end_hunk_8
begin_hunk_9_@_Z18SetGenericPropertyI12aiMatrix4x4tIfEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS3_EEEPKcRKS3_:bb.a

bb.l:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 104) #28
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt3mapIj12aiMatrix4x4tIfESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit
end_hunk_9
begin_hunk_10_@_Z18SetGenericPropertyI12aiMatrix4x4tIfEEbRSt3mapIjT_St4lessIjESaISt4pairIKjS3_EEEPKcRKS3_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.dq, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %.thread.i, %bb.l, %bb.m
  %.0 = phi i1 [ true, %bb.m ], [ false, %bb.l ], [ false, %.thread.i ], [ false, %bb.h ]
  ret i1 %.0
}

end_hunk_10
