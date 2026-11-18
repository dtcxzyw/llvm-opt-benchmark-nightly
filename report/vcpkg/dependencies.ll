Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/dependencies?download=true
inline.NumInlined: 13345
inline.NumDeleted: 2349
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZNK29MockVersionedPortfileProvider16get_control_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN5vcpkg7VersionE:bb.a
  %4 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 7 uses
  %5 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !50   ; 4 uses
  %i.f = load ptr, ptr %2, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN5vcpkg7VersionENS9_28SourceControlFileAndLocationENS9_14VersionMapLessESaIS6_IKSA_SB_EEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !11

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN5vcpkg7VersionENS9_28SourceControlFileAndLocationENS9_14VersionMapLessESaIS6_IKSA_SB_EEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN5vcpkg7VersionENS9_28SourceControlFileAndLocationENS9_14VersionMapLessESaIS6_IKSA_SB_EEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !50   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.w, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit.thread, label %bb.e

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN5vcpkg7VersionENS9_28SourceControlFileAndLocationENS9_14VersionMapLessESaIS6_IKSA_SB_EEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN5vcpkg15LocalizedString8from_rawENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %4, ptr nonnull @.str.136, i64 17)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !47
  %i.y = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !50 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit.thread
  store ptr %i.y, ptr %0, align 8, !tbaa !51
  %i.af = load i64, ptr %i.z, align 8, !tbaa !48
  store i64 %i.af, ptr %i.x, align 8, !tbaa !48
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre32 = load i64, ptr %.phi.trans.insert31, align 8, !tbaa !50
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ag = phi i64 [ %i.ac, %bb.d ], [ %.pre32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ai, align 8, !tbaa !1676
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.h

bb.e:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i4 = icmp eq ptr %i.al, null
  br i1 %.not10.i.i.i4, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread, label %.lr.ph.i.i.i5

.lr.ph.i.i.i5:                                    ; preds = %bb.e, %.lr.ph.i.i.i5
  %.012.i.i.i6 = phi ptr [ %.1.i.i.i11, %.lr.ph.i.i.i5 ], [ %i.al, %bb.e ] ; 3 uses
  %.0811.i.i.i7 = phi ptr [ %.19.i.i.i8, %.lr.ph.i.i.i5 ], [ %i.am, %bb.e ]
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i6, i64 32
  %i.ao = tail call noundef zeroext i1 @_ZNK5vcpkg14VersionMapLessclERKNS_7VersionES3_(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(36) %i.an, ptr noundef nonnull align 8 dereferenceable(36) %3) ; 2 uses
  %.19.i.i.i8 = select i1 %i.ao, ptr %.0811.i.i.i7, ptr %.012.i.i.i6 ; 4 uses
  %.1.in.v.i.i.i9 = select i1 %i.ao, i64 24, i64 16
  %.1.in.i.i.i10 = getelementptr inbounds nuw i8, ptr %.012.i.i.i6, i64 %.1.in.v.i.i.i9
  %.1.i.i.i11 = load ptr, ptr %.1.in.i.i.i10, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %.1.i.i.i11, null
  br i1 %.not.i.i.i12, label %_ZNSt8_Rb_treeIN5vcpkg7VersionESt4pairIKS1_NS0_28SourceControlFileAndLocationEESt10_Select1stIS5_ENS0_14VersionMapLessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i5, !llvm.loop !12

_ZNSt8_Rb_treeIN5vcpkg7VersionESt4pairIKS1_NS0_28SourceControlFileAndLocationEESt10_Select1stIS5_ENS0_14VersionMapLessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.lr.ph.i.i.i5
  %i.ap = icmp eq ptr %.19.i.i.i8, %i.am
  br i1 %i.ap, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit

_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit: ; preds = %_ZNSt8_Rb_treeIN5vcpkg7VersionESt4pairIKS1_NS0_28SourceControlFileAndLocationEESt10_Select1stIS5_ENS0_14VersionMapLessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i8, i64 32
  %i.ar = tail call noundef zeroext i1 @_ZNK5vcpkg14VersionMapLessclERKNS_7VersionES3_(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %i.aq)
  br i1 %i.ar, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread, label %bb.g

_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread: ; preds = %_ZNSt8_Rb_treeIN5vcpkg7VersionESt4pairIKS1_NS0_28SourceControlFileAndLocationEESt10_Select1stIS5_ENS0_14VersionMapLessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, %bb.e, %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN5vcpkg15LocalizedString8from_rawENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %5, ptr nonnull @.str.137, i64 20)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !47
  %i.at = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

bb.f:                                             ; preds = %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !50 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false)
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread
  store ptr %i.at, ptr %0, align 8, !tbaa !51
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !48
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !48
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit19

_ZN5vcpkg15LocalizedStringD2Ev.exit19:            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15
  %i.bb = phi i64 [ %i.ax, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.bd, align 8, !tbaa !1676
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.19.i.i.i8, i64 72
  store ptr %i.be, ptr %0, align 8, !tbaa !1679
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.bf, align 8, !tbaa !1676
  br label %bb.h

bb.h:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit19, %bb.g, %_ZN5vcpkg15LocalizedStringD2Ev.exit
  ret void
}

declare void @_ZN5vcpkg15LocalizedString8from_rawENS_10StringViewE(ptr dead_on_unwind writable sret(%"struct.vcpkg::LocalizedString") align 8, ptr, i64) local_unnamed_addr #11

declare noundef zeroext i1 @_ZNK5vcpkg14VersionMapLessclERKNS_7VersionES3_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef %3, i32 noundef %4, ptr noundef byval(%"struct.vcpkg::StringView") align 8 %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.vcpkg::VersionMapLess", align 1 ; 5 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %8 = alloca %"class.std::unique_ptr.6", align 8 ; 7 uses
  %9 = alloca %"struct.vcpkg::SourceControlFileAndLocation", align 8 ; 20 uses
  %10 = alloca %"struct.vcpkg::Path", align 8     ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEEixERSH_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = tail call noundef zeroext i1 @_ZNK5vcpkg14VersionMapLessclERKNS_7VersionES3_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %i.f, ptr noundef nonnull align 8 dereferenceable(36) %2) ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN5vcpkg7VersionESt4pairIKS1_NS0_28SourceControlFileAndLocationEESt10_Select1stIS5_ENS0_14VersionMapLessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !12

_ZNSt8_Rb_treeIN5vcpkg7VersionESt4pairIKS1_NS0_28SourceControlFileAndLocationEESt10_Select1stIS5_ENS0_14VersionMapLessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.h, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit

_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit: ; preds = %_ZNSt8_Rb_treeIN5vcpkg7VersionESt4pairIKS1_NS0_28SourceControlFileAndLocationEESt10_Select1stIS5_ENS0_14VersionMapLessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = tail call noundef zeroext i1 @_ZNK5vcpkg14VersionMapLessclERKNS_7VersionES3_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %i.i)
  br i1 %i.j, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread, label %bb.q

_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread: ; preds = %_ZNSt8_Rb_treeIN5vcpkg7VersionESt4pairIKS1_NS0_28SourceControlFileAndLocationEESt10_Select1stIS5_ENS0_14VersionMapLessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, %bb.a, %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  %i.k = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24, !noalias !1684 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, i8 0, i64 56, i1 false), !noalias !1684
  store ptr %i.k, ptr %7, align 8, !tbaa !150, !alias.scope !1684
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = invoke noalias noundef nonnull dereferenceable(488) ptr @_Znwm(i64 noundef 488) #24
          to label %.noexc unwind label %bb.k     ; 9 uses

.noexc:                                           ; preds = %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(488) %i.m, i8 0, i64 488, i1 false), !noalias !1685
  invoke void @_ZN5vcpkg15SourceParagraphC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %i.m)
          to label %bb.c unwind label %bb.b, !noalias !1685

bb.b:                                             ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 488) #23, !noalias !1685
  br label %.body

bb.c:                                             ; preds = %.noexc
  store ptr %i.m, ptr %8, align 8, !tbaa !152, !alias.scope !1685
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i32 %3, ptr %i.o, align 16, !tbaa !314
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 %i.r, ptr %i.s, align 8, !tbaa !54
  store ptr null, ptr %8, align 8, !tbaa !152
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !152  ; 3 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !152
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_ZN5vcpkg15SourceParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.t) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 488) #23
  br label %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store i64 %i.l, ptr %9, align 8, !tbaa !150
  store ptr null, ptr %7, align 8, !tbaa !150
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN5vcpkg4PathC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %_ZN5vcpkg4PathD2Ev.exit42.thread

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EEaSEOS4_.exit
  invoke void @_ZNO5vcpkg4PathdvENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %i.u, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.138, i64 10)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  invoke void @_ZNK5vcpkg10StringView9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.v, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 4 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 80
  store i64 0, ptr %i.y, align 8, !tbaa !50
  store i8 0, ptr %i.x, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i32 %4, ptr %i.z, align 8, !tbaa !324
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 4 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 120
  store i64 0, ptr %i.ac, align 8, !tbaa !50
  store i8 0, ptr %i.ab, align 8, !tbaa !48
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !40  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not10.i.i.i.i, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit.thread.i, label %.lr.ph.i.i.i.i

_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit.thread.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  br label %.critedge.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.noexc28
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.noexc28 ], [ %i.ad, %bb.g ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.noexc28 ], [ %i.e, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.af = invoke noundef zeroext i1 @_ZNK5vcpkg14VersionMapLessclERKNS_7VersionES3_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %i.ae, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %.noexc28 unwind label %_ZN5vcpkg4PathD2Ev.exit38.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc28:                                         ; preds = %.lr.ph.i.i.i.i
  %.19.i.i.i.i = select i1 %i.af, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.af, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i.i27 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i27, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !12

_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit.i: ; preds = %.noexc28
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  br i1 %i.ag, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = invoke noundef zeroext i1 @_ZNK5vcpkg14VersionMapLessclERKNS_7VersionES3_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %i.ah)
          to label %.noexc29 unwind label %_ZN5vcpkg4PathD2Ev.exit38.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %i.ai, label %bb.i, label %bb.j

.critedge.i:                                      ; preds = %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit.i, %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit.thread.i
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.e, %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit.thread.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.i

bb.i:                                             ; preds = %.critedge.i, %.noexc29
  %.08.lcssa.i.i.i19.i = phi ptr [ %.08.lcssa.i.i.i20.i, %.critedge.i ], [ %.19.i.i.i.i, %.noexc29 ]
  %i.aj = invoke ptr @_ZNSt8_Rb_treeIN5vcpkg7VersionESt4pairIKS1_NS0_28SourceControlFileAndLocationEESt10_Select1stIS5_ENS0_14VersionMapLessESaIS5_EE22_M_emplace_hint_uniqueIJS1_S4_EEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr %.08.lcssa.i.i.i19.i, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(144) %9)
          to label %bb.j unwind label %_ZN5vcpkg4PathD2Ev.exit38.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %.noexc29, %bb.i
  %.sroa.017.0.i = phi ptr [ %.19.i.i.i.i, %.noexc29 ], [ %i.aj, %bb.i ]
  %i.ak = load ptr, ptr %i.aa, align 8, !tbaa !51 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ab
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.am = load i64, ptr %i.ab, align 8, !tbaa !48
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ao = load ptr, ptr %i.w, align 8, !tbaa !51  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.x
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.aq = load i64, ptr %i.x, align 8, !tbaa !48
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.as = load ptr, ptr %i.v, align 8, !tbaa !51  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !48
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.ax = load ptr, ptr %i.u, align 8, !tbaa !51  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN5vcpkg4PathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !48
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #23
  br label %_ZN5vcpkg4PathD2Ev.exit.i

_ZN5vcpkg4PathD2Ev.exit.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bc = load ptr, ptr %9, align 8, !tbaa !150   ; 3 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %_ZN5vcpkg28SourceControlFileAndLocationD2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i.i: ; preds = %_ZN5vcpkg4PathD2Ev.exit.i
  call void @_ZN5vcpkg17SourceControlFileD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bc) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 56) #23
  br label %_ZN5vcpkg28SourceControlFileAndLocationD2Ev.exit

_ZN5vcpkg28SourceControlFileAndLocationD2Ev.exit: ; preds = %_ZN5vcpkg4PathD2Ev.exit.i, %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i.i
  %i.bd = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZN5vcpkg4PathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %_ZN5vcpkg28SourceControlFileAndLocationD2Ev.exit
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !48
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #23
  br label %_ZN5vcpkg4PathD2Ev.exit

_ZN5vcpkg4PathD2Ev.exit:                          ; preds = %_ZN5vcpkg28SourceControlFileAndLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.bi = load ptr, ptr %8, align 8, !tbaa !152   ; 3 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i: ; preds = %_ZN5vcpkg4PathD2Ev.exit
  call void @_ZN5vcpkg15SourceParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.bi) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef 488) #23
  br label %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5vcpkg4PathD2Ev.exit, %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bj = load ptr, ptr %7, align 8, !tbaa !150   ; 3 uses
  %.not.i34 = icmp eq ptr %i.bj, null
  br i1 %.not.i34, label %_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN5vcpkg17SourceControlFileD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bj) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 56) #23
  br label %_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.q

bb.k:                                             ; preds = %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.c
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZN5vcpkg4PathD2Ev.exit42.thread:                 ; preds = %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EEaSEOS4_.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg4PathD2Ev.exit42

bb.m:                                             ; preds = %bb.e
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg4PathD2Ev.exit38

bb.n:                                             ; preds = %bb.f
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %i.u, align 8, !tbaa !51  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZN5vcpkg4PathD2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %bb.n
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !48
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #23
  br label %_ZN5vcpkg4PathD2Ev.exit38

_ZN5vcpkg4PathD2Ev.exit38:                        ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35 ], [ %i.bn, %bb.m ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bu = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZN5vcpkg4PathD2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39.thread: ; preds = %_ZN5vcpkg4PathD2Ev.exit38
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !48
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #23
  br label %_ZN5vcpkg4PathD2Ev.exit42

_ZN5vcpkg4PathD2Ev.exit38.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i, %bb.h, %bb.i
  %lpad.loopexit.split-lp85 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN5vcpkg28SourceControlFileAndLocationD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %9) #22
  %i.bz = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZN5vcpkg4PathD2Ev.exit42.thread57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39

_ZN5vcpkg4PathD2Ev.exit42.thread57:               ; preds = %_ZN5vcpkg4PathD2Ev.exit38.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !50
  %13 = icmp ult i64 %12, 16
  call void @llvm.assume(i1 %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39: ; preds = %_ZN5vcpkg4PathD2Ev.exit38.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !48
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.o

_ZN5vcpkg4PathD2Ev.exit42:                        ; preds = %_ZN5vcpkg4PathD2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39.thread, %_ZN5vcpkg4PathD2Ev.exit42.thread
  %.pn.pn50 = phi { ptr, i32 } [ %i.bm, %_ZN5vcpkg4PathD2Ev.exit42.thread ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39.thread ], [ %.pn, %_ZN5vcpkg4PathD2Ev.exit38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #22
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39, %_ZN5vcpkg4PathD2Ev.exit42.thread57, %_ZN5vcpkg4PathD2Ev.exit42
  %.pn.pn49 = phi { ptr, i32 } [ %.pn.pn50, %_ZN5vcpkg4PathD2Ev.exit42 ], [ %lpad.loopexit.split-lp85, %_ZN5vcpkg4PathD2Ev.exit42.thread57 ], [ %lpad.loopexit.split-lp85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn49, %bb.o ], [ %i.bl, %bb.l ]
  call void @_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  br label %.body

.body:                                            ; preds = %bb.k, %bb.b, %bb.p
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.p ], [ %i.bk, %bb.k ], [ %i.n, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.q:                                             ; preds = %_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit, %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit
  %.sroa.044.0 = phi ptr [ %.sroa.017.0.i, %_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit ], [ %.19.i.i.i, %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 72
  ret ptr %i.ce
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEEixERSH_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.228", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.192", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !50   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !163 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE11lower_boundERSH_.exit, label %bb.b, !llvm.loop !11

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE11lower_boundERSH_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE11lower_boundERSH_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !50   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #22 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE11lower_boundERSH_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE11lower_boundERSH_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %1, ptr %2, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN5vcpkg7VersionENS9_28SourceControlFileAndLocationENS9_14VersionMapLessESaIS6_IKSA_SB_EEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESS_IJEEEEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

declare void @_ZN5vcpkg4PathC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #11

declare void @_ZNO5vcpkg4PathdvENS_10StringViewE(ptr dead_on_unwind writable sret(%"struct.vcpkg::Path") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr, i64) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN5vcpkg7VersionENS9_28SourceControlFileAndLocationENS9_14VersionMapLessESaIS6_IKSA_SB_EEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESS_IJEEEEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::map<vcpkg::Version, vcpkg::SourceControlFileAndLocation, vcpkg::VersionMapLess>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::map<vcpkg::Version, vcpkg::SourceControlFileAndLocation, vcpkg::VersionMapLess>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %0, ptr %5, align 8, !tbaa !1686
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #24 ; 10 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN5vcpkg7VersionENS9_28SourceControlFileAndLocationENS9_14VersionMapLessESaIS6_IKSA_SB_EEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESS_IJEEEEEvPSt13_Rb_tree_nodeISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !328
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN5vcpkg7VersionENS9_28SourceControlFileAndLocationENS9_14VersionMapLessESaIS6_IKSA_SB_EEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !50   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !50   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.q = tail call i32 @memcmp(ptr noundef %i.p, ptr noundef %i.o, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.r = sub i64 %i.j, %i.l
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.r, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.s = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.c, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.t = phi i1 [ %i.s, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #22
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44
end_hunk_0
