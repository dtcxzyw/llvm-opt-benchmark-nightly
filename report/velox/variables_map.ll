inline.NumInlined: 814
inline.NumDeleted: 374
begin_hunk_0_@_ZN5boost15program_options5storeERKNS0_20basic_parsed_optionsIwEERNS0_13variables_mapE:bb.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost15program_options6notifyERNS0_13variables_mapE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN5boost15program_options13variables_map6notifyEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost15program_options13variables_map6notifyEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(160) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::program_options::required_option", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %._crit_edge26, label %.lr.ph25

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %bb.g
  %.sroa.017.022 = phi ptr [ %i.ak, %bb.g ], [ %i.b, %.lr.ph ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.017.022, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.017.022, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !29   ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.q) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.u = tail call i32 @memcmp(ptr noundef %i.t, ptr noundef %i.o, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.v = sub i64 %i.q, %i.n
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.w, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.w, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5boost15program_options14variable_valueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !85

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5boost15program_options14variable_valueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.x = icmp eq ptr %.19.i.i.i, %i.g
  br i1 %i.x, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5boost15program_options14variable_valueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !29   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.n) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ad = tail call i32 @memcmp(ptr noundef %i.o, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost15program_options14variable_valueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.ae = sub i64 %i.n, %i.z
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost15program_options14variable_valueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost15program_options14variable_valueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.af = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.af, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost15program_options14variable_valueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !59
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %.critedge, label %bb.g

.critedge:                                        ; preds = %bb.d, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost15program_options14variable_valueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5boost15program_options14variable_valueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %.lr.ph
  %.us-phi = phi ptr [ %i.b, %.lr.ph ], [ %.sroa.017.022, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5boost15program_options14variable_valueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %.sroa.017.022, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost15program_options14variable_valueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit ], [ %.sroa.017.022, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.us-phi, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_ZN5boost15program_options15required_optionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  invoke void @_ZN5boost15throw_exceptionINS_15program_options15required_optionEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(184) %1) #24
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.critedge
  unreachable

bb.f:                                             ; preds = %.critedge
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost15program_options22error_with_option_nameD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.aj

bb.g:                                             ; preds = %bb.d
  %i.ak = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.017.022) #28 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.c
  br i1 %i.al, label %._crit_edge, label %.lr.ph.i.i.i, !llvm.loop !102

._crit_edge26:                                    ; preds = %bb.i, %._crit_edge
  ret void

.lr.ph25:                                         ; preds = %._crit_edge, %bb.i
  %.sroa.04.023 = phi ptr [ %i.as, %bb.i ], [ %i.i, %._crit_edge ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.04.023, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !66 ; 3 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph25
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.023, i64 64
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !60
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph25, %bb.h
  %i.as = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.04.023) #28 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.j
  br i1 %i.at, label %._crit_edge26, label %.lr.ph25, !llvm.loop !103
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5boost15program_options22abstract_variables_mapC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #8 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost15program_options22abstract_variables_mapE, i64 16), ptr %0, align 8, !tbaa !60
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5boost15program_options22abstract_variables_mapC2EPKS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef %1) unnamed_addr #8 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost15program_options22abstract_variables_mapE, i64 16), ptr %0, align 8, !tbaa !60
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5boost15program_options22abstract_variables_mapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.b, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.g, %bb.b ]   ; 4 uses
  %i.a = load ptr, ptr %.tr, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %.tr, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %tailrecurse
  %i.f = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !104  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %tailrecurse

bb.c:                                             ; preds = %bb.b, %tailrecurse
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !51, !range !42, !noundef !43
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %5

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104  ; 2 uses
  %.not14 = icmp eq ptr %i.l, null
  br i1 %.not14, label %5, label %bb.e

bb.e:                                             ; preds = %bb.d
  %2 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5boost15program_options22abstract_variables_mapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 3 uses
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %.not.i.i15 = icmp eq ptr %3, null
  br i1 %.not.i.i15, label %4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !51, !range !42, !noundef !43
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %4, label %5

4:                                                ; preds = %bb.f, %bb.e
  br label %5

5:                                                ; preds = %bb.c, %bb.d, %4, %bb.f
  %.1 = phi ptr [ %i.d, %bb.c ], [ %2, %bb.f ], [ %i.d, %4 ], [ %i.d, %bb.d ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5boost15program_options22abstract_variables_map4nextEPS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((8, 16)) %0, ptr noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5boost15program_options13variables_mapC2Ev(ptr noundef nonnull align 8 dereferenceable(160) initializes((8, 16), (24, 28), (32, 40)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.b, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.b, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.f, align 8, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost15program_options13variables_mapE, i64 16), ptr %0, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.g, ptr %i.i, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.g, ptr %i.j, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store i32 0, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.l, ptr %i.n, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.l, ptr %i.o, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.p, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5boost15program_options13variables_mapC2EPKNS0_22abstract_variables_mapE(ptr noundef nonnull align 8 dereferenceable(160) initializes((8, 16), (24, 28), (32, 40)) %0, ptr noundef %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.b, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.b, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.f, align 8, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost15program_options13variables_mapE, i64 16), ptr %0, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.g, ptr %i.i, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.g, ptr %i.j, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store i32 0, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.l, ptr %i.n, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.l, ptr %i.o, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.p, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost15program_options13variables_map5clearEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5boost15program_options14variable_valueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost15program_options14variable_valueESt4lessIS5_ESaISt4pairIKS5_S8_EEE5clearEv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #27
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost15program_options14variable_valueESt4lessIS5_ESaISt4pairIKS5_S8_EEE5clearEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.f, ptr %i.g, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %i.h, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.i, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef %i.l)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost15program_options14variable_valueESt4lessIS5_ESaISt4pairIKS5_S8_EEE5clearEv.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #27
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost15program_options14variable_valueESt4lessIS5_ESaISt4pairIKS5_S8_EEE5clearEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.o, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.o, ptr %i.q, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.r, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef %i.u)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE5clearEv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #27
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE5clearEv.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.x, ptr %i.y, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.x, ptr %i.z, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.aa, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5boost15program_options13variables_map3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(address, ret: address, provenance) dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK5boost15program_options13variables_map3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5empty acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !107

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5boost15program_options13variables_map3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5empty) #23
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr @_ZZNK5boost15program_options13variables_map3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5empty, align 8, !tbaa !59
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5boost15program_options13variables_map3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5empty, i64 8), align 8, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZNK5boost15program_options13variables_map3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5empty, i64 16), i8 0, i64 16, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost15program_options14variable_valueD2Ev, ptr nonnull @_ZZNK5boost15program_options13variables_map3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5empty, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5boost15program_options13variables_map3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5empty) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost15program_options14variable_valueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !29   ; 4 uses
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !29   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.l) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
end_hunk_0
