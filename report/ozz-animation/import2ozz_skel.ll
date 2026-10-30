Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/import2ozz_skel?download=true
inline.NumInlined: 237
inline.NumDeleted: 142
begin_hunk_0_@_ZN3ozz9animation7offline12_GLOBAL__N_135ValidateJointNamesUniquenessRecurseERKSt6vectorINS1_11RawSkeleton5JointENS_12StdAllocatorIS5_EEEPSt3setIPKcNS_8str_lessENS6_ISD_EEE:bb.a
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.j
  %i.f = add nuw i64 %.01528, 1                   ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.h = load ptr, ptr %0, align 8, !tbaa !56     ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 96
  %.not = icmp ult i64 %i.f, %i.l
  br i1 %.not, label %.lr.ph, label %.loopexit, !llvm.loop !98

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  %.01528 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.n = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %.01528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60
  store ptr %i.p, ptr %i.a, align 8, !tbaa !62
  %i.q = call { ptr, i8 } @_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_EN3ozz8str_lessENS4_12StdAllocatorIS1_EEE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.q, 1
  %i.r = trunc i8 %.fca.1.extract to i1
  br i1 %i.r, label %bb.j, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @_ZN3ozz3log3ErrC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %2)
  %i.s = load ptr, ptr %2, align 8, !tbaa !15, !nonnull !16, !align !17 ; 8 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.28, i64 noundef 54)
          to label %_ZN3ozz3log6LoggerlsIA55_cEERSoRKT_.exit unwind label %bb.i ; 0 uses

_ZN3ozz3log6LoggerlsIA55_cEERSoRKT_.exit:         ; preds = %bb.c
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3ozz3log6LoggerlsIA55_cEERSoRKT_.exit
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !51
  %i.ab = or i32 %i.aa, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.y, i32 noundef %i.ab)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i

bb.e:                                             ; preds = %_ZN3ozz3log6LoggerlsIA55_cEERSoRKT_.exit
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #10
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.u, i64 noundef %i.ac)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d, %bb.e
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.29, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.s, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 240
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  invoke void @_ZSt16__throw_bad_castv() #11
          to label %.noexc22 unwind label %bb.i

.noexc22:                                         ; preds = %bb.f
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load i8, ptr %i.al, align 8, !tbaa !40
  %.not.i1.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 67
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !41
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ak)
          to label %.noexc23 unwind label %bb.i

.noexc23:                                         ; preds = %bb.h
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef signext i8 %i.ar(ptr noundef nonnull align 8 dereferenceable(570) %i.ak, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.i, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc23, %bb.g
  %.0.i.i.i = phi i8 [ %i.ao, %bb.g ], [ %i.as, %.noexc23 ]
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i8 noundef signext %.0.i.i.i)
          to label %.noexc25 unwind label %bb.i

.noexc25:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at)
          to label %.critedge unwind label %bb.i  ; 0 uses

.critedge:                                        ; preds = %.noexc25
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.loopexit

bb.i:                                             ; preds = %.noexc25, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc23, %bb.h, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %bb.d, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  resume { ptr, i32 } %i.av

bb.j:                                             ; preds = %.lr.ph
  %i.aw = load ptr, ptr %0, align 8, !tbaa !56
  %i.ax = getelementptr inbounds nuw [96 x i8], ptr %i.aw, i64 %.01528
  %i.ay = call fastcc noundef zeroext i1 @_ZN3ozz9animation7offline12_GLOBAL__N_135ValidateJointNamesUniquenessRecurseERKSt6vectorINS1_11RawSkeleton5JointENS_12StdAllocatorIS5_EEEPSt3setIPKcNS_8str_lessENS6_ISD_EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef %1) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %i.ay, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.b, %bb.a, %.critedge
  %i.az = phi i1 [ false, %.critedge ], [ true, %bb.a ], [ %i.ay, %bb.b ], [ %i.ay, %bb.j ]
  ret i1 %i.az
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setIPKcN3ozz8str_lessENS2_12StdAllocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  invoke void @_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_EN3ozz8str_lessENS4_12StdAllocatorIS1_EEE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_EN3ozz8str_lessENS4_12StdAllocatorIS1_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #12
  unreachable

_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_EN3ozz8str_lessENS4_12StdAllocatorIS1_EEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_EN3ozz8str_lessENS4_12StdAllocatorIS1_EEE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.a, align 8, !tbaa !100 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !62     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.e) #13
  %i.g = icmp slt i32 %i.f, 0                     ; 2 uses
  %.in.v.i = select i1 %i.g, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !100 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !99

._crit_edge.i:                                    ; preds = %bb.b
  br i1 %i.g, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.j = icmp eq ptr %.019.lcssa29.i, %i.i
  br i1 %i.j, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.k = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #13 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !62
  %.pre18 = load ptr, ptr %1, align 8, !tbaa !62
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %i.l = phi ptr [ %.pre18, %bb.c ], [ %i.c, %._crit_edge.i ]
  %i.m = phi ptr [ %.pre, %bb.c ], [ %i.e, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.k, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.l) #13
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %select.unfold, label %bb.i

select.unfold:                                    ; preds = %bb.d, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.d ] ; 3 uses
  %i.p = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.r = load ptr, ptr %1, align 8, !tbaa !62
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(1) %i.s) #13
  %i.u = icmp slt i32 %i.t, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %select.unfold
  %i.v = phi i1 [ %i.u, %bb.e ], [ true, %select.unfold ]
  %i.w = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef 40, i64 noundef 8)
          to label %_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_EN3ozz8str_lessENS4_12StdAllocatorIS1_EEE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit unwind label %bb.h ; 3 uses

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #12
  unreachable

_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_EN3ozz8str_lessENS4_12StdAllocatorIS1_EEE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ae = load ptr, ptr %1, align 8, !tbaa !62
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !62
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef %i.aa, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #10
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !48
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !48
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_EN3ozz8str_lessENS4_12StdAllocatorIS1_EEE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit
  %.sroa.010.0 = phi ptr [ %i.aa, %_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_EN3ozz8str_lessENS4_12StdAllocatorIS1_EEE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit ], [ %.sroa.05.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_EN3ozz8str_lessENS4_12StdAllocatorIS1_EEE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.010.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef ptr @_ZN3ozz6memory17default_allocatorEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_EN3ozz8str_lessENS4_12StdAllocatorIS1_EEE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_EN3ozz8str_lessENS4_12StdAllocatorIS1_EEE12_M_drop_nodeEPSt13_Rb_tree_nodeIS1_E.exit

_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_EN3ozz8str_lessENS4_12StdAllocatorIS1_EEE12_M_drop_nodeEPSt13_Rb_tree_nodeIS1_E.exit: ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.d, %bb.c ]    ; 4 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_EN3ozz8str_lessENS4_12StdAllocatorIS1_EEE12_M_drop_nodeEPSt13_Rb_tree_nodeIS1_E.exit
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  tail call void @_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_EN3ozz8str_lessENS4_12StdAllocatorIS1_EEE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %.0)
          to label %_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_EN3ozz8str_lessENS4_12StdAllocatorIS1_EEE12_M_drop_nodeEPSt13_Rb_tree_nodeIS1_E.exit unwind label %bb.d, !llvm.loop !101

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #12
  unreachable

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_EN3ozz8str_lessENS4_12StdAllocatorIS1_EEE12_M_drop_nodeEPSt13_Rb_tree_nodeIS1_E.exit
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3ozz9animation8SkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN3ozz2io6ExternINS_9animation7offline11RawSkeletonEE4SaveERNS0_8OArchiveEPKS4_m(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNK3ozz9animation8Skeleton4SaveERNS_2io8OArchiveE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null, null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTSSo", !11, i64 0}
!13 = !{!"bool", !7, i64 0}
!14 = !{!"_ZTSN3ozz3log6LoggerE", !12, i64 0, !13, i64 8}
!15 = !{!14, !12, i64 0}
!16 = !{}
!17 = !{i64 8}
!18 = !{!"vtable pointer", !6, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"long", !7, i64 0}
!21 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!22 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!23 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !20, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!27 = !{!"_ZTSSt6locale", !26, i64 0}
!28 = !{!"_ZTSSt8ios_base", !20, i64 8, !20, i64 16, !21, i64 24, !22, i64 28, !22, i64 32, !23, i64 40, !24, i64 48, !7, i64 64, !8, i64 192, !25, i64 200, !27, i64 208}
!29 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!30 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!31 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!32 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!33 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !28, i64 0, !12, i64 216, !7, i64 224, !13, i64 225, !29, i64 232, !30, i64 240, !31, i64 248, !32, i64 256}
!34 = !{!33, !30, i64 240}
!35 = !{!"_ZTSNSt6locale5facetE", !8, i64 8}
!36 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!37 = !{!"p1 int", !11, i64 0}
!38 = !{!"p1 short", !11, i64 0}
!39 = !{!"_ZTSSt5ctypeIcE", !35, i64 0, !36, i64 16, !13, i64 24, !37, i64 32, !37, i64 40, !38, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!40 = !{!39, !7, i64 56}
!41 = !{!7, !7, i64 0}
!42 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!43 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!44 = !{!"_ZTSSt18_Rb_tree_node_base", !42, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!45 = !{!"_ZTSSt15_Rb_tree_header", !44, i64 0, !20, i64 32}
!46 = !{!45, !43, i64 8}
!47 = !{!45, !43, i64 16}
!48 = !{!45, !20, i64 32}
!49 = !{!"p1 _ZTSN3ozz9animation8SkeletonE", !11, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!28, !22, i64 32}
!52 = !{i8 0, i8 2}
!53 = !{!"p1 _ZTSN3ozz9animation7offline11RawSkeleton5JointE", !11, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!54, !53, i64 8}
!56 = !{!54, !53, i64 0}
!57 = !{!"p1 omnipotent char", !11, i64 0}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE12_Alloc_hiderE", !57, i64 0}
!59 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEE", !58, i64 0, !20, i64 8, !7, i64 16}
!60 = !{!59, !57, i64 0}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!57, !57, i64 0}
!63 = distinct !{null}
!64 = distinct !{null}
!65 = !{!45, !42, i64 0}
!66 = !{!45, !43, i64 24}
!67 = !{!"_ZTSSt10_Head_baseILm0EPN3ozz9animation8SkeletonELb0EE", !49, i64 0}
!68 = !{!67, !49, i64 0}
!69 = !{!"p1 _ZTSN3ozz2io6StreamE", !11, i64 0}
!70 = !{!"_ZTSN3ozz2io8OArchiveE", !69, i64 0, !13, i64 8}
!71 = !{!70, !69, i64 0}
!72 = !{!70, !13, i64 8}
!73 = !{!8, !8, i64 0}
!74 = distinct !{null}
!75 = distinct !{!75, !61}
!76 = !{!28, !20, i64 8}
!77 = !{!28, !20, i64 16}
!78 = !{!33, !13, i64 225}
!79 = !{!33, !7, i64 224}
!80 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEE12_Vector_implE", !54, i64 0}
!81 = !{!"_ZTSSt12_Vector_baseIN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEE", !80, i64 0}
!82 = !{!"_ZTSSt6vectorIN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEE", !81, i64 0}
!83 = !{!"float", !7, i64 0}
!84 = !{!"_ZTSN3ozz4math6Float3E", !83, i64 0, !83, i64 4, !83, i64 8}
!85 = !{!"_ZTSN3ozz4math10QuaternionE", !83, i64 0, !83, i64 4, !83, i64 8, !83, i64 12}
!86 = !{!"_ZTSN3ozz4math9TransformE", !84, i64 0, !85, i64 12, !84, i64 28}
!87 = !{!"_ZTSN3ozz9animation7offline11RawSkeleton5JointE", !82, i64 0, !59, i64 24, !86, i64 56}
!88 = !{!87, !83, i64 56}
!89 = !{!87, !83, i64 60}
!90 = !{!87, !83, i64 64}
!91 = !{!87, !83, i64 68}
!92 = !{!87, !83, i64 72}
!93 = !{!87, !83, i64 76}
!94 = !{!87, !83, i64 80}
!95 = !{!87, !83, i64 84}
!96 = !{!87, !83, i64 88}
!97 = !{!87, !83, i64 92}
!98 = distinct !{!98, !61}
!99 = distinct !{!99, !61}
!100 = !{!43, !43, i64 0}
!101 = distinct !{!101, !61}
!102 = !{!44, !43, i64 24}
!103 = !{!44, !43, i64 16}
end_hunk_0
