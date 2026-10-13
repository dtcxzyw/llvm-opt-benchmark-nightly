Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/uci?download=true
inline.NumInlined: 1415
inline.NumDeleted: 622
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9Stockfish20get_process_affinityEv:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @exit(i32 noundef 1) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %i.f, i8 0, i64 8192, i1 false)
  %i.h = tail call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 8192, ptr noundef nonnull %i.f) #26
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__sched_cpufree(ptr noundef nonnull %i.f) #26
  tail call void @exit(i32 noundef 1) #27
  unreachable

bb.e:                                             ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit
  tail call void @__sched_cpufree(ptr noundef nonnull %i.f) #26
  ret void

.preheader:                                       ; preds = %bb.c, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit
  %storemerge19 = phi i64 [ %i.af, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit ], [ 0, %bb.c ] ; 7 uses
  %i.i = and i64 %storemerge19, 63
  %i.j = lshr i64 %storemerge19, 6
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19
  %i.m = shl nuw i64 1, %i.i
  %i.n = and i64 %i.l, %i.m
  %.not13 = icmp eq i64 %i.n, 0
  br i1 %.not13, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit, label %bb.f

bb.f:                                             ; preds = %.preheader
  %.02022.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !149 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.f ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19   ; 2 uses
  %i.q = icmp ult i64 %storemerge19, %i.p         ; 2 uses
  %.in.v.i.i.i = select i1 %i.q, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !149 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !143

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.q, label %._crit_edge.thread.i.i.i, label %bb.h

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.f
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.a, %bb.f ] ; 4 uses
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !146
  %i.s = icmp eq ptr %.019.lcssa29.i.i.i, %i.r
  br i1 %i.s, label %select.unfold.i.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #28
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %i.u = phi i64 [ %.pre.i.i, %bb.g ], [ %i.p, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.g ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.v = icmp ult i64 %i.u, %storemerge19
  br i1 %i.v, label %select.unfold.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

select.unfold.i.i:                                ; preds = %bb.h, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.h ] ; 3 uses
  %i.w = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.a
  br i1 %i.w, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %select.unfold.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !19
  %i.z = icmp ult i64 %storemerge19, %i.y
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.i, %select.unfold.i.i
  %i.aa = phi i1 [ %i.z, %bb.i ], [ true, %select.unfold.i.i ]
  %i.ab = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i64 %storemerge19, ptr %i.ac, align 8, !tbaa !19
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #26
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !148
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !148
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit:      ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.h, %.preheader
  %i.af = add nuw nsw i64 %storemerge19, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, 65536
  br i1 %exitcond.not, label %bb.e, label %.preheader, !llvm.loop !144
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish9UCIEngine17print_info_stringESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::vector.13", align 8    ; 7 uses
  tail call void @_ZN9Stockfish15sync_cout_startEv() #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.13") align 8 %2, i64 %0, ptr %1, i64 1, ptr nonnull @.str)
  %i.b = load ptr, ptr %2, align 8, !tbaa !150    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150  ; 2 uses
  %.not14 = icmp eq ptr %i.b, %i.d
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load ptr, ptr %2, align 8, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #30
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN9Stockfish13sync_cout_endEv() #26
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.sroa.010.015 = phi ptr [ %i.v, %bb.f ], [ %i.b, %bb.a ] ; 4 uses
  %.sroa.01.0.copyload = load i64, ptr %.sroa.010.015, align 8, !tbaa !19
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 8 ; 2 uses
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !32
  %i.k = call noundef zeroext i1 @_ZN9Stockfish13is_whitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %.sroa.01.0.copyload, ptr %.sroa.22.0.copyload) #26
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 12) #26 ; 0 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.010.015, align 8, !tbaa !19
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !32
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !33
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !44
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.e:                                             ; preds = %bb.c
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i8 noundef signext 10) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

declare void @_ZN9Stockfish15sync_cout_startEv() local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.13") align 8 %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %invariant.op = sub i64 1, %3
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.o
  %i.h = phi ptr [ %i.aq, %bb.o ], [ null, %.preheader ] ; 12 uses
  %i.i = phi ptr [ %5, %bb.o ], [ null, %.preheader ] ; 11 uses
  %i.j = phi ptr [ %i.as, %bb.o ], [ null, %.preheader ] ; 14 uses
  %.09 = phi i64 [ %i.at, %bb.o ], [ 0, %.preheader ] ; 14 uses
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not27.i.i = icmp ugt i64 %.09, %1
  br i1 %.not27.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp ult i64 %.09, %1
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = sub nuw i64 %1, %.09                     ; 2 uses
  %.not2531.i.i = icmp ult i64 %i.k, %3
  br i1 %.not2531.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.09
  %i.m = load i8, ptr %4, align 1, !tbaa !33
  %i.n = sext i8 %i.m to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.v, %bb.h ]
  %.02032.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.t, %bb.h ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.o = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.o, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.f
  %i.p = tail call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef %i.n, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #26 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.p, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %4, i64 %3)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.r, %i.e
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.d, %i.u                       ; 2 uses
  %.not25.i.i = icmp ult i64 %i.v, %3
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %bb.f, !llvm.loop !151

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %bb.c, %bb.g
  %.1.i.i = phi i64 [ %.09, %bb.c ], [ %i.s, %bb.g ] ; 3 uses
  %i.w = icmp eq i64 %.1.i.i, -1
  br i1 %i.w, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.x = icmp ugt i64 %.09, %1
  br i1 %i.x, label %bb.j, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.j:                                             ; preds = %bb.i
  store ptr %i.i, ptr %i.f, align 8
  store ptr %i.h, ptr %i.g, align 8
  store ptr %i.j, ptr %0, align 8
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.102, i64 noundef %.09, i64 noundef %1) #31
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.i
  %i.y = sub i64 %.1.i.i, %.09
  %i.z = sub nuw i64 %1, %.09
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.09 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  store i64 %.sroa.speculated.i, ptr %i.i, align 8, !tbaa !19
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.aa, ptr %.sroa.534.0..sroa_idx, align 8, !tbaa !32
  br label %bb.o

bb.l:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.ab = ptrtoint ptr %i.h to i64
  %i.ac = ptrtoint ptr %i.j to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775792
  br i1 %i.ae, label %bb.m, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  store ptr %i.i, ptr %i.f, align 8
  store ptr %i.h, ptr %i.g, align 8
  store ptr %i.j, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #31
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.af = ashr exact i64 %i.ad, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 576460752303423487)
  %i.aj = select i1 %i.ah, i64 576460752303423487, i64 %i.ai ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 4
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #29 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.am, align 8, !tbaa !19
  %.sroa.534.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.aa, ptr %.sroa.534.0..sroa_idx35, align 8, !tbaa !32
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.al, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %i.j, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !159, !alias.scope !160
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !155

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.al, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ad) #30
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.aj
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.k
  %i.aq = phi ptr [ %i.ap, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.h, %bb.k ]
  %i.ar = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.i, %bb.k ]
  %i.as = phi ptr [ %i.al, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.j, %bb.k ]
  %5 = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = add i64 %.1.i.i, %3
  br label %bb.b

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread: ; preds = %bb.c, %bb.e, %bb.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %bb.f, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.h
  store ptr %i.i, ptr %i.f, align 8
  store ptr %i.h, ptr %i.g, align 8
  store ptr %i.j, ptr %0, align 8
  %i.au = icmp ugt i64 %.09, %1
  br i1 %i.au, label %bb.p, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.102, i64 noundef %.09, i64 noundef %1) #31
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread
  %i.av = sub nuw i64 %1, %.09                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %.09 ; 2 uses
  %.not.i14 = icmp eq ptr %i.i, %i.h
  br i1 %.not.i14, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13
  store i64 %i.av, ptr %i.i, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.aw, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.ax, ptr %i.f, align 8, !tbaa !161
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27

bb.r:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13
  %i.ay = ptrtoint ptr %i.h to i64
  %i.az = ptrtoint ptr %i.j to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 4 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775792
  br i1 %i.bb, label %bb.s, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #31
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15: ; preds = %bb.r
  %i.bc = ashr exact i64 %i.ba, 4                 ; 3 uses
  %.sroa.speculated.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i16, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 576460752303423487)
  %i.bg = select i1 %i.be, i64 576460752303423487, i64 %i.bf ; 3 uses
  %.not.i.i.i17 = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i17)
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #29 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba ; 2 uses
  store i64 %i.av, ptr %i.bj, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.aw, ptr %.sroa.5.0..sroa_idx30, align 8, !tbaa !32
  %.not10.i.i.i.i.i18 = icmp eq ptr %i.j, %i.h
  br i1 %.not10.i.i.i.i.i18, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15, %.lr.ph.i.i.i.i.i19
  %.012.i.i.i.i.i20 = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i19 ], [ %i.bi, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ] ; 2 uses
  %.0911.i.i.i.i.i21 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i19 ], [ %i.j, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i20, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i21, i64 16, i1 false), !tbaa.struct !159, !alias.scope !162
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i21, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i20, i64 16 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.bk, %i.h
  br i1 %.not.i.i.i.i.i22, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23, label %.lr.ph.i.i.i.i.i19, !llvm.loop !155

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23: ; preds = %.lr.ph.i.i.i.i.i19, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.bi, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ], [ %i.bl, %.lr.ph.i.i.i.i.i19 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i24, i64 16
  %.not.i23.i.i25 = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i25, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ba) #30
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26: ; preds = %bb.t, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23
  store ptr %i.bi, ptr %0, align 8, !tbaa !29
  store ptr %i.bm, ptr %i.f, align 8, !tbaa !161
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.bn, ptr %i.g, align 8, !tbaa !30
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26, %bb.q, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef zeroext i1 @_ZN9Stockfish13is_whitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64, ptr) local_unnamed_addr #5

declare void @_ZN9Stockfish13sync_cout_endEv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish9UCIEngineC2EiPPc(ptr noundef nonnull align 8 dereferenceable(1696) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::optional", align 8     ; 9 uses
  %4 = alloca %"class.std::function", align 8     ; 8 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !32     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !46
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.109) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.e, ptr %i.a, align 8, !tbaa !19
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.d, label %._crit_edge.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !48
  %i.h = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.h, ptr %i.c, align 8, !tbaa !33
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %i.g, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  switch i64 %i.e, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRPcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.j = load i8, ptr %i.b, align 1, !tbaa !33
  store i8 %i.j, ptr %i.i, align 1, !tbaa !33
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRPcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %i.b, i64 %i.e, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRPcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRPcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.k = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !49
  %i.m = load ptr, ptr %3, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i8 1, ptr %i.o, align 8, !tbaa !52
  call void @_ZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr noundef nonnull align 8 %3) #26
  %i.p = load i8, ptr %i.o, align 8, !tbaa !52, !range !53, !noundef !54
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !52
  br i1 %i.q, label %bb.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRPcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit
  %i.r = load ptr, ptr %3, align 8, !tbaa !48     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.c
  br i1 %i.s, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.c, align 8, !tbaa !33
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #30
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.g, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRPcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1680
  store i32 %1, ptr %i.v, align 8, !tbaa !163
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1688
  store ptr %2, ptr %i.w, align 8, !tbaa !164
  %i.x = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN9Stockfish6Engine11get_optionsEv(ptr noundef nonnull align 8 dereferenceable(1680) %0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN9Stockfish9UCIEngineC1EiPPcE3$_0E9_M_invokeERKSt9_Any_dataOS7_", ptr %i.z, align 8, !tbaa !165
  store ptr @"_ZNSt17_Function_handlerIFvSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN9Stockfish9UCIEngineC1EiPPcE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.y, align 8, !tbaa !60
  call void @_ZN9Stockfish10OptionsMap17add_info_listenerEOSt8functionIFvSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %4) #26
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !60  ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #26, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZN9Stockfish9UCIEngine28init_search_update_listenersEv(ptr noundef nonnull align 8 dereferenceable(1696) %0)
  ret void
}

declare void @_ZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(1680), ptr noundef align 8) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZN9Stockfish6Engine11get_optionsEv(ptr noundef nonnull align 8 dereferenceable(1680)) local_unnamed_addr #5

declare void @_ZN9Stockfish10OptionsMap17add_info_listenerEOSt8functionIFvSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish9UCIEngine28init_search_update_listenersEv(ptr noundef nonnull align 8 dereferenceable(1696) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::function.52", align 8  ; 8 uses
  %2 = alloca %"class.std::function.46", align 8  ; 8 uses
  %3 = alloca %"class.std::function.49", align 8  ; 9 uses
  %4 = alloca %"class.std::function.55", align 8  ; 8 uses
  %5 = alloca %"class.std::function.57", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search13InfoIterationEEZNS0_9UCIEngine28init_search_update_listenersEvE3$_0E9_M_invokeERKSt9_Any_dataS4_", ptr %i.b, align 8, !tbaa !62
  store ptr @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search13InfoIterationEEZNS0_9UCIEngine28init_search_update_listenersEvE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.a, align 8, !tbaa !60
  call void @_ZN9Stockfish6Engine11set_on_iterEOSt8functionIFvRKNS_6Search13InfoIterationEEE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #26, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search9InfoShortEEZNS0_9UCIEngine28init_search_update_listenersEvE3$_1E9_M_invokeERKSt9_Any_dataS4_", ptr %i.f, align 8, !tbaa !64
  store ptr @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search9InfoShortEEZNS0_9UCIEngine28init_search_update_listenersEvE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.e, align 8, !tbaa !60
  call void @_ZN9Stockfish6Engine22set_on_update_no_movesEOSt8functionIFvRKNS_6Search9InfoShortEEE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #26
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %.not.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #26, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit2

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.i = ptrtoint ptr %0 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.l, align 8
  store i64 %i.i, ptr %3, align 8, !tbaa !66
  store ptr @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search8InfoFullEEZNS0_9UCIEngine28init_search_update_listenersEvE3$_2E9_M_invokeERKSt9_Any_dataS4_", ptr %i.k, align 8, !tbaa !68
  store ptr @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search8InfoFullEEZNS0_9UCIEngine28init_search_update_listenersEvE3$_2E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.j, align 8, !tbaa !60
  call void @_ZN9Stockfish6Engine18set_on_update_fullEOSt8functionIFvRKNS_6Search8InfoFullEEE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !60   ; 2 uses
  %.not.i3 = icmp eq ptr %i.m, null
  br i1 %.not.i3, label %_ZNSt14_Function_baseD2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #26, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit4

_ZNSt14_Function_baseD2Ev.exit4:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit2, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvSt17basic_string_viewIcSt11char_traitsIcEES3_EZN9Stockfish9UCIEngine28init_search_update_listenersEvE3$_3E9_M_invokeERKSt9_Any_dataOS3_SC_", ptr %i.p, align 8, !tbaa !70
  store ptr @"_ZNSt17_Function_handlerIFvSt17basic_string_viewIcSt11char_traitsIcEES3_EZN9Stockfish9UCIEngine28init_search_update_listenersEvE3$_3E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.o, align 8, !tbaa !60
  call void @_ZN9Stockfish6Engine15set_on_bestmoveEOSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEES5_EE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #26
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !60   ; 2 uses
  %.not.i5 = icmp eq ptr %i.q, null
  br i1 %.not.i5, label %_ZNSt14_Function_baseD2Ev.exit6, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit4
  %i.r = call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #26, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit6

_ZNSt14_Function_baseD2Ev.exit6:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit4, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
end_hunk_0
begin_hunk_1_@llvm.umax.i32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nofree nounwind memory(readwrite, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { builtin nounwind allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn nounwind }

!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{null}
!1 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!2 = distinct !{!2, !26}
!3 = distinct !{!3, !26}
!4 = distinct !{!4, !26}
!5 = distinct !{!5, !26}
!6 = distinct !{!6, !26}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 1, !"ThinLTO", i32 0}
!11 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!12 = !{!"Ubuntu clang version 23.0.0 (++20260706082120+bf74249b5ecd-1~exp1~20260706082130.1707)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"long", !14, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"_ZTSSt14_Rb_tree_color", !14, i64 0}
!21 = !{!"any pointer", !14, i64 0}
!22 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !21, i64 0}
!23 = !{!"_ZTSSt18_Rb_tree_node_base", !20, i64 0, !22, i64 8, !22, i64 16, !22, i64 24}
!24 = !{!"_ZTSSt15_Rb_tree_header", !23, i64 0, !18, i64 32}
!25 = !{!24, !22, i64 8}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !21, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!28, !27, i64 0}
!30 = !{!28, !27, i64 16}
!31 = !{!"p1 omnipotent char", !21, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!14, !14, i64 0}
!34 = !{!"vtable pointer", !13, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"_ZTSSt13_Ios_Fmtflags", !14, i64 0}
!37 = !{!"_ZTSSt12_Ios_Iostate", !14, i64 0}
!38 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !21, i64 0}
!39 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !18, i64 8}
!40 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !21, i64 0}
!41 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!42 = !{!"_ZTSSt6locale", !41, i64 0}
!43 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !36, i64 24, !37, i64 28, !37, i64 32, !38, i64 40, !39, i64 48, !14, i64 64, !15, i64 192, !40, i64 200, !42, i64 208}
!44 = !{!43, !18, i64 16}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!46 = !{!45, !31, i64 0}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !45, i64 0, !18, i64 8, !14, i64 16}
!48 = !{!47, !31, i64 0}
!49 = !{!47, !18, i64 8}
!50 = !{!"bool", !14, i64 0}
!51 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !14, i64 0, !50, i64 32}
!52 = !{!51, !50, i64 32}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = !{!"any p2 pointer", !21, i64 0}
!56 = !{!"p2 omnipotent char", !55, i64 0}
!57 = !{!"_ZTSN9Stockfish11CommandLineE", !15, i64 0, !56, i64 8}
!58 = !{!"_ZTSSt14_Function_base", !14, i64 0, !21, i64 16}
!59 = !{!"_ZTSSt8functionIFvSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE", !58, i64 0, !21, i64 24}
!60 = !{!58, !21, i64 16}
!61 = !{!"_ZTSSt8functionIFvRKN9Stockfish6Search13InfoIterationEEE", !58, i64 0, !21, i64 24}
!62 = !{!61, !21, i64 24}
!63 = !{!"_ZTSSt8functionIFvRKN9Stockfish6Search9InfoShortEEE", !58, i64 0, !21, i64 24}
!64 = !{!63, !21, i64 24}
!65 = !{!"p1 _ZTSN9Stockfish9UCIEngineE", !21, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!"_ZTSSt8functionIFvRKN9Stockfish6Search8InfoFullEEE", !58, i64 0, !21, i64 24}
!68 = !{!67, !21, i64 24}
!69 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEES3_EE", !58, i64 0, !21, i64 24}
!70 = !{!69, !21, i64 24}
!71 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !58, i64 0, !21, i64 24}
!72 = !{!71, !21, i64 24}
!73 = !{!"_ZTSSt5arrayIN9Stockfish5PieceELm64EE", !14, i64 0}
!74 = !{!"_ZTSSt5arrayImLm8EE", !14, i64 0}
!75 = !{!"_ZTSSt5arrayImLm2EE", !14, i64 0}
!76 = !{!"p1 _ZTSN9Stockfish9StateInfoE", !21, i64 0}
!77 = !{!"_ZTSN9Stockfish5ColorE", !14, i64 0}
!78 = !{!"_ZTSN9Stockfish5PieceE", !14, i64 0}
!79 = !{!"_ZTSN9Stockfish6SquareE", !14, i64 0}
!80 = !{!"_ZTSN9Stockfish10DirtyPieceE", !78, i64 0, !79, i64 1, !79, i64 2, !79, i64 3, !79, i64 4, !78, i64 5, !78, i64 6}
!81 = !{!"_ZTSN9Stockfish9ValueListINS_11DirtyThreatELm96EEE", !14, i64 0, !18, i64 384}
!82 = !{!"_ZTSN9Stockfish12DirtyThreatsE", !81, i64 0, !77, i64 392, !79, i64 393, !79, i64 394, !18, i64 400, !18, i64 408}
!83 = !{!"_ZTSN9Stockfish8PositionE", !73, i64 0, !74, i64 64, !75, i64 128, !14, i64 144, !14, i64 208, !14, i64 464, !14, i64 480, !76, i64 608, !15, i64 616, !77, i64 620, !50, i64 621, !80, i64 622, !82, i64 632}
!84 = !{!"p1 long", !21, i64 0}
!85 = !{!"p1 _ZTSSo", !21, i64 0}
!86 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !21, i64 0}
!87 = !{!"p1 _ZTSSt5ctypeIcE", !21, i64 0}
!88 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !21, i64 0}
!89 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !21, i64 0}
!90 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !43, i64 0, !85, i64 216, !14, i64 224, !50, i64 225, !86, i64 232, !87, i64 240, !88, i64 248, !89, i64 256}
!91 = !{!90, !87, i64 240}
!92 = !{!"_ZTSNSt6locale5facetE", !15, i64 8}
!93 = !{!"p1 _ZTS15__locale_struct", !21, i64 0}
!94 = !{!"p1 int", !21, i64 0}
!95 = !{!"p1 short", !21, i64 0}
!96 = !{!"_ZTSSt5ctypeIcE", !92, i64 0, !93, i64 16, !50, i64 24, !94, i64 32, !94, i64 40, !95, i64 48, !14, i64 56, !14, i64 57, !14, i64 313, !14, i64 569}
!97 = !{!96, !14, i64 56}
!98 = !{!43, !37, i64 32}
!99 = !{!90, !85, i64 216}
!100 = !{!90, !14, i64 224}
!101 = !{!90, !50, i64 225}
!102 = !{!"_ZTSSi", !18, i64 8}
!103 = !{!102, !18, i64 8}
!104 = !{!43, !36, i64 24}
!105 = !{!36, !36, i64 0}
!106 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!108 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !107, i64 0}
!109 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !108, i64 0}
!110 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !109, i64 0}
!111 = !{!"_ZTSN9Stockfish6Search10LimitsTypeE", !110, i64 0, !14, i64 24, !14, i64 40, !18, i64 56, !18, i64 64, !18, i64 72, !15, i64 80, !15, i64 84, !15, i64 88, !15, i64 92, !15, i64 96, !18, i64 104, !50, i64 112}
!112 = !{!111, !15, i64 92}
!113 = !{!107, !106, i64 0}
!114 = !{!107, !106, i64 8}
!115 = !{!107, !106, i64 16}
!116 = !{!84, !84, i64 0}
!117 = !{!"p1 _ZTSN9Stockfish10OptionsMapE", !21, i64 0}
!118 = !{!117, !117, i64 0}
!119 = !{!106, !106, i64 0}
!120 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb1EJN9Stockfish5Score4MateENS3_9TablebaseENS3_13InternalUnitsEEEE", !14, i64 0, !14, i64 8}
!121 = !{!15, !15, i64 0}
!122 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !42, i64 56}
!123 = !{!"_ZTSSt13_Ios_Openmode", !14, i64 0}
!124 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !122, i64 0, !123, i64 64, !47, i64 72}
!125 = !{!124, !123, i64 64}
!126 = !{!122, !31, i64 40}
!127 = !{!122, !31, i64 32}
!128 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb1EJN9Stockfish5Score4MateENS3_9TablebaseENS3_13InternalUnitsEEEE", !120, i64 0}
!129 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb1EJN9Stockfish5Score4MateENS3_9TablebaseENS3_13InternalUnitsEEEE", !128, i64 0}
!130 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb1EJN9Stockfish5Score4MateENS3_9TablebaseENS3_13InternalUnitsEEEE", !129, i64 0}
!131 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb1EJN9Stockfish5Score4MateENS3_9TablebaseENS3_13InternalUnitsEEEE", !130, i64 0}
!132 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJN9Stockfish5Score4MateENS3_9TablebaseENS3_13InternalUnitsEEEE", !131, i64 0}
!133 = !{!"_ZTSSt7variantIJN9Stockfish5Score4MateENS1_9TablebaseENS1_13InternalUnitsEEE", !132, i64 0}
!134 = !{!"_ZTSN9Stockfish5ScoreE", !133, i64 0}
!135 = !{!"_ZTSN9Stockfish6Search9InfoShortE", !15, i64 0, !134, i64 4}
!136 = !{!135, !15, i64 0}
!137 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !18, i64 0, !31, i64 8}
!138 = !{!"_ZTSN9Stockfish6Search8InfoFullE", !135, i64 0, !15, i64 16, !18, i64 24, !137, i64 32, !137, i64 48, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !137, i64 96, !15, i64 112}
!139 = !{!138, !18, i64 72}
!140 = !{!21, !21, i64 0}
!141 = !{!"p1 _ZTSSt9type_info", !21, i64 0}
!142 = !{!141, !141, i64 0}
!143 = distinct !{!143, !26}
!144 = distinct !{!144, !26}
!145 = !{!24, !20, i64 0}
!146 = !{!24, !22, i64 16}
!147 = !{!24, !22, i64 24}
!148 = !{!24, !18, i64 32}
!149 = !{!22, !22, i64 0}
!150 = !{!27, !27, i64 0}
!151 = distinct !{!151, !26}
!152 = distinct !{!152, i1 false, !"_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_"}
!153 = distinct !{!153, !152, !"_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!154 = distinct !{!154, !152, !"_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!155 = distinct !{!155, !26}
!156 = distinct !{!156, i1 false, !"_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_"}
!157 = distinct !{!157, !156, !"_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!158 = distinct !{!158, !156, !"_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!159 = !{i64 0, i64 8, !19, i64 8, i64 8, !32}
!160 = !{!154, !153}
!161 = !{!28, !27, i64 8}
!162 = !{!158, !157}
!163 = !{!57, !15, i64 0}
!164 = !{!57, !56, i64 8}
!165 = !{!59, !21, i64 24}
!166 = distinct !{!166, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!167 = distinct !{!167, !166, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!168 = distinct !{!168, !26}
!169 = distinct !{null, null, null}
!170 = distinct !{null}
!171 = distinct !{!171, !26}
!172 = !{!"p1 _ZTSSt3setImSt4lessImESaImEE", !21, i64 0}
!173 = !{!"_ZTSNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE17_Vector_impl_dataE", !172, i64 0, !172, i64 8, !172, i64 16}
!174 = !{!"_ZTSNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE12_Vector_implE", !173, i64 0}
!175 = !{!"_ZTSSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE", !174, i64 0}
!176 = !{!"_ZTSSt6vectorISt3setImSt4lessImESaImEESaIS4_EE", !175, i64 0}
!177 = !{!"_ZTSSt4lessImE"}
!178 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !177, i64 0}
!179 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !178, i64 0, !24, i64 8}
!180 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE", !179, i64 0}
!181 = !{!"_ZTSSt3mapImmSt4lessImESaISt4pairIKmmEEE", !180, i64 0}
!182 = !{!"_ZTSN9Stockfish10NumaConfigE", !176, i64 0, !181, i64 24, !18, i64 72, !50, i64 80}
!183 = !{!"_ZTSSt4lessIPN9Stockfish18NumaReplicatedBaseEE"}
!184 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPN9Stockfish18NumaReplicatedBaseEEE", !183, i64 0}
!185 = !{!"_ZTSNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !184, i64 0, !24, i64 8}
!186 = !{!"_ZTSSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE", !185, i64 0}
!187 = !{!"_ZTSSt3setIPN9Stockfish18NumaReplicatedBaseESt4lessIS2_ESaIS2_EE", !186, i64 0}
!188 = !{!"_ZTSN9Stockfish22NumaReplicationContextE", !182, i64 0, !187, i64 88}
!189 = !{!"p1 _ZTSSt5dequeIN9Stockfish9StateInfoESaIS1_EE", !21, i64 0}
!190 = !{!"_ZTSSt10_Head_baseILm0EPSt5dequeIN9Stockfish9StateInfoESaIS2_EELb0EE", !189, i64 0}
!191 = !{!"_ZTSSt11_Tuple_implILm0EJPSt5dequeIN9Stockfish9StateInfoESaIS2_EESt14default_deleteIS4_EEE", !190, i64 0}
!192 = !{!"_ZTSSt5tupleIJPSt5dequeIN9Stockfish9StateInfoESaIS2_EESt14default_deleteIS4_EEE", !191, i64 0}
!193 = !{!"_ZTSSt15__uniq_ptr_implISt5dequeIN9Stockfish9StateInfoESaIS2_EESt14default_deleteIS4_EE", !192, i64 0}
!194 = !{!"_ZTSSt15__uniq_ptr_dataISt5dequeIN9Stockfish9StateInfoESaIS2_EESt14default_deleteIS4_ELb1ELb1EE", !193, i64 0}
!195 = !{!"_ZTSSt10unique_ptrISt5dequeIN9Stockfish9StateInfoESaIS2_EESt14default_deleteIS4_EE", !194, i64 0}
!196 = !{!"_ZTSN9Stockfish19CaseInsensitiveLessE"}
!197 = !{!"_ZTSSt20_Rb_tree_key_compareIN9Stockfish19CaseInsensitiveLessEE", !196, i64 0}
!198 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9Stockfish6OptionEESt10_Select1stISA_ENS8_19CaseInsensitiveLessESaISA_EE13_Rb_tree_implISD_Lb1EEE", !197, i64 0, !24, i64 8}
!199 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9Stockfish6OptionEESt10_Select1stISA_ENS8_19CaseInsensitiveLessESaISA_EE", !198, i64 0}
!200 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9Stockfish6OptionENS6_19CaseInsensitiveLessESaISt4pairIKS5_S7_EEE", !199, i64 0}
!201 = !{!"_ZTSN9Stockfish10OptionsMapE", !200, i64 0, !59, i64 48}
!202 = !{!"_ZTSSt13__atomic_baseIbE", !50, i64 0}
!203 = !{!"_ZTSSt6atomicIbE", !202, i64 0}
!204 = !{!"p1 _ZTSSt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS1_EE", !21, i64 0}
!205 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !204, i64 0, !204, i64 8, !204, i64 16}
!206 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !205, i64 0}
!207 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE", !206, i64 0}
!208 = !{!"_ZTSSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE", !207, i64 0}
!209 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !84, i64 0, !84, i64 8, !84, i64 16}
!210 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !209, i64 0}
!211 = !{!"_ZTSSt12_Vector_baseImSaImEE", !210, i64 0}
!212 = !{!"_ZTSSt6vectorImSaImEE", !211, i64 0}
!213 = !{!"_ZTSN9Stockfish10ThreadPoolE", !203, i64 0, !203, i64 1, !203, i64 2, !195, i64 8, !208, i64 16, !212, i64 40}
!214 = !{!"p1 _ZTSN9Stockfish7ClusterE", !21, i64 0}
!215 = !{!"_ZTSN9Stockfish18TranspositionTableE", !18, i64 0, !214, i64 8, !14, i64 16}
!216 = !{!"p1 _ZTSN9Stockfish22NumaReplicationContextE", !21, i64 0}
!217 = !{!"_ZTSN9Stockfish18NumaReplicatedBaseE", !216, i64 8}
!218 = !{!"p1 _ZTSN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEE", !21, i64 0}
!219 = !{!"_ZTSNSt12_Vector_baseIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE17_Vector_impl_dataE", !218, i64 0, !218, i64 8, !218, i64 16}
!220 = !{!"_ZTSNSt12_Vector_baseIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_Vector_implE", !219, i64 0}
!221 = !{!"_ZTSSt12_Vector_baseIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE", !220, i64 0}
!222 = !{!"_ZTSSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE", !221, i64 0}
!223 = !{!"_ZTSSt12__mutex_base", !14, i64 0}
!224 = !{!"_ZTSSt5mutex", !223, i64 0}
!225 = !{!"_ZTSN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEE", !217, i64 0, !222, i64 16, !224, i64 40}
!226 = !{!"_ZTSN9Stockfish6Search13SearchManager13UpdateContextE", !63, i64 0, !67, i64 32, !61, i64 64, !69, i64 96}
!227 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmN9Stockfish15SharedHistoriesEESt10_Select1stIS4_ESt4lessImESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !178, i64 0, !24, i64 8}
!228 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmN9Stockfish15SharedHistoriesEESt10_Select1stIS4_ESt4lessImESaIS4_EE", !227, i64 0}
!229 = !{!"_ZTSSt3mapImN9Stockfish15SharedHistoriesESt4lessImESaISt4pairIKmS1_EEE", !228, i64 0}
!230 = !{!"_ZTSN9Stockfish6EngineE", !47, i64 0, !188, i64 32, !83, i64 168, !195, i64 1216, !201, i64 1224, !213, i64 1304, !215, i64 1368, !225, i64 1392, !226, i64 1472, !71, i64 1600, !229, i64 1632}
!231 = !{!"_ZTSN9Stockfish9UCIEngineE", !230, i64 0, !57, i64 1680}
!232 = !{!231, !15, i64 1680}
!233 = !{!231, !56, i64 1688}
!234 = !{!167}
!235 = distinct !{!235, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!236 = distinct !{!236, !235, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!237 = distinct !{!237, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!238 = distinct !{!238, !237, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!239 = distinct !{!239, !26}
!240 = distinct !{!240, !26}
!241 = !{!238, !236}
!242 = distinct !{!242, !26}
!243 = distinct !{!243, !26}
!244 = distinct !{!244, i1 false, !"_ZNSt7__cxx119to_stringEi"}
!245 = distinct !{!245, !244, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!246 = distinct !{!246, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!247 = distinct !{!247, !246, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!248 = distinct !{!248, i1 false, !"_ZNSt7__cxx119to_stringEi"}
!249 = distinct !{!249, !248, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!250 = distinct !{!250, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!251 = distinct !{!251, !250, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!252 = !{!"_ZTSN9Stockfish9Benchmark14BenchmarkSetupE", !15, i64 0, !15, i64 4, !110, i64 8, !47, i64 32, !47, i64 64}
!253 = !{!252, !15, i64 4}
!254 = !{!245}
!255 = !{!247}
!256 = !{!252, !15, i64 0}
!257 = !{!249}
!258 = !{!251}
!259 = !{!85, !85, i64 0}
!260 = !{!50, !50, i64 0}
!261 = distinct !{!261, i1 false, !"_ZN9Stockfish9UCIEngine8to_lowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!262 = distinct !{!262, !261, !"_ZN9Stockfish9UCIEngine8to_lowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!263 = distinct !{!263, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!264 = distinct !{!264, !263, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!265 = distinct !{!265, !263, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!266 = distinct !{!266, !26}
!267 = distinct !{!267, !26}
!268 = !{!111, !18, i64 104}
!269 = !{!111, !50, i64 112}
!270 = !{!111, !18, i64 72}
!271 = !{!262}
!272 = !{!264}
!273 = !{!265}
!274 = !{!264, !265}
!275 = !{!111, !15, i64 96}
!276 = distinct !{!276, i1 false, !"_ZNK9Stockfish5Score5visitIRKNS_8overloadIJZNS_9UCIEngine12format_scoreB5cxx11ERKS0_E3$_0ZNS3_12format_scoreB5cxx11ES5_E3$_1ZNS3_12format_scoreB5cxx11ES5_E3$_2EEEEEDcOT_"}
!277 = distinct !{!277, !276, !"_ZNK9Stockfish5Score5visitIRKNS_8overloadIJZNS_9UCIEngine12format_scoreB5cxx11ERKS0_E3$_0ZNS3_12format_scoreB5cxx11ES5_E3$_1ZNS3_12format_scoreB5cxx11ES5_E3$_2EEEEEDcOT_: argument 0"}
!278 = distinct !{!278, i1 false, !"_ZSt5visitB5cxx11IRKN9Stockfish8overloadIJZNS0_9UCIEngine12format_scoreB5cxx11ERKNS0_5ScoreEE3$_0ZNS2_12format_scoreB5cxx11ES5_E3$_1ZNS2_12format_scoreB5cxx11ES5_E3$_2EEEJRKSt7variantIJNS3_4MateENS3_9TablebaseENS3_13InternalUnitsEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeEOSK_DpOSM_"}
!279 = distinct !{!279, !278, !"_ZSt5visitB5cxx11IRKN9Stockfish8overloadIJZNS0_9UCIEngine12format_scoreB5cxx11ERKNS0_5ScoreEE3$_0ZNS2_12format_scoreB5cxx11ES5_E3$_1ZNS2_12format_scoreB5cxx11ES5_E3$_2EEEJRKSt7variantIJNS3_4MateENS3_9TablebaseENS3_13InternalUnitsEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISM_EEEEE4typeEE4typeEOSV_EEEE4typeEOSK_DpOSM_: argument 0"}
!280 = distinct !{!280, i1 false, !"_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKN9Stockfish8overloadIJZNSA_9UCIEngine12format_scoreERKNSA_5ScoreEE3$_0ZNSC_12format_scoreESF_E3$_1ZNSC_12format_scoreESF_E3$_2EEEJRKSt7variantIJNSD_4MateENSD_9TablebaseENSD_13InternalUnitsEEEEEDcOT0_DpOT1_"}
!281 = distinct !{!281, !280, !"_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKN9Stockfish8overloadIJZNSA_9UCIEngine12format_scoreERKNSA_5ScoreEE3$_0ZNSC_12format_scoreESF_E3$_1ZNSC_12format_scoreESF_E3$_2EEEJRKSt7variantIJNSD_4MateENSD_9TablebaseENSD_13InternalUnitsEEEEEDcOT0_DpOT1_: argument 0"}
!282 = distinct !{!282, i1 false, !"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKN9Stockfish8overloadIJZNSB_9UCIEngine12format_scoreERKNSB_5ScoreEE3$_0ZNSD_12format_scoreESG_E3$_1ZNSD_12format_scoreESG_E3$_2EEERKSt7variantIJNSE_4MateENSE_9TablebaseENSE_13InternalUnitsEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_ST_"}
!283 = distinct !{!283, !282, !"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKN9Stockfish8overloadIJZNSB_9UCIEngine12format_scoreERKNSB_5ScoreEE3$_0ZNSD_12format_scoreESG_E3$_1ZNSD_12format_scoreESG_E3$_2EEERKSt7variantIJNSE_4MateENSE_9TablebaseENSE_13InternalUnitsEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_ST_: argument 0"}
!284 = distinct !{!284, i1 false, !"_ZSt8__invokeB5cxx11IRKN9Stockfish8overloadIJZNS0_9UCIEngine12format_scoreB5cxx11ERKNS0_5ScoreEE3$_0ZNS2_12format_scoreB5cxx11ES5_E3$_1ZNS2_12format_scoreB5cxx11ES5_E3$_2EEEJRKNS3_4MateEEENSt15__invoke_resultIT_JDpT0_EE4typeEOSG_DpOSH_"}
!285 = distinct !{!285, !284, !"_ZSt8__invokeB5cxx11IRKN9Stockfish8overloadIJZNS0_9UCIEngine12format_scoreB5cxx11ERKNS0_5ScoreEE3$_0ZNS2_12format_scoreB5cxx11ES5_E3$_1ZNS2_12format_scoreB5cxx11ES5_E3$_2EEEJRKNS3_4MateEEENSt15__invoke_resultIT_JDpT0_EE4typeEOSG_DpOSH_: argument 0"}
!286 = distinct !{!286, i1 false, !"_ZSt13__invoke_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN9Stockfish8overloadIJZNS6_9UCIEngine12format_scoreERKNS6_5ScoreEE3$_0ZNS8_12format_scoreESB_E3$_1ZNS8_12format_scoreESB_E3$_2EEEJRKNS9_4MateEEET_St14__invoke_otherOT0_DpOT1_"}
!287 = distinct !{!287, !286, !"_ZSt13__invoke_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN9Stockfish8overloadIJZNS6_9UCIEngine12format_scoreERKNS6_5ScoreEE3$_0ZNS8_12format_scoreESB_E3$_1ZNS8_12format_scoreESB_E3$_2EEEJRKNS9_4MateEEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!288 = distinct !{!288, i1 false, !"_ZZN9Stockfish9UCIEngine12format_scoreB5cxx11ERKNS_5ScoreEENK3$_0clB5cxx11ENS1_4MateE"}
!289 = distinct !{!289, !288, !"_ZZN9Stockfish9UCIEngine12format_scoreB5cxx11ERKNS_5ScoreEENK3$_0clB5cxx11ENS1_4MateE: argument 0"}
!290 = distinct !{!290, i1 false, !"_ZNSt7__cxx119to_stringEi"}
!291 = distinct !{!291, !290, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!292 = distinct !{!292, i1 false, !"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKN9Stockfish8overloadIJZNSB_9UCIEngine12format_scoreERKNSB_5ScoreEE3$_0ZNSD_12format_scoreESG_E3$_1ZNSD_12format_scoreESG_E3$_2EEERKSt7variantIJNSE_4MateENSE_9TablebaseENSE_13InternalUnitsEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_ST_"}
!293 = distinct !{!293, !292, !"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKN9Stockfish8overloadIJZNSB_9UCIEngine12format_scoreERKNSB_5ScoreEE3$_0ZNSD_12format_scoreESG_E3$_1ZNSD_12format_scoreESG_E3$_2EEERKSt7variantIJNSE_4MateENSE_9TablebaseENSE_13InternalUnitsEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_ST_: argument 0"}
!294 = distinct !{!294, i1 false, !"_ZSt8__invokeB5cxx11IRKN9Stockfish8overloadIJZNS0_9UCIEngine12format_scoreB5cxx11ERKNS0_5ScoreEE3$_0ZNS2_12format_scoreB5cxx11ES5_E3$_1ZNS2_12format_scoreB5cxx11ES5_E3$_2EEEJRKNS3_9TablebaseEEENSt15__invoke_resultIT_JDpT0_EE4typeEOSG_DpOSH_"}
!295 = distinct !{!295, !294, !"_ZSt8__invokeB5cxx11IRKN9Stockfish8overloadIJZNS0_9UCIEngine12format_scoreB5cxx11ERKNS0_5ScoreEE3$_0ZNS2_12format_scoreB5cxx11ES5_E3$_1ZNS2_12format_scoreB5cxx11ES5_E3$_2EEEJRKNS3_9TablebaseEEENSt15__invoke_resultIT_JDpT0_EE4typeEOSG_DpOSH_: argument 0"}
!296 = distinct !{!296, i1 false, !"_ZSt13__invoke_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN9Stockfish8overloadIJZNS6_9UCIEngine12format_scoreERKNS6_5ScoreEE3$_0ZNS8_12format_scoreESB_E3$_1ZNS8_12format_scoreESB_E3$_2EEEJRKNS9_9TablebaseEEET_St14__invoke_otherOT0_DpOT1_"}
!297 = distinct !{!297, !296, !"_ZSt13__invoke_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN9Stockfish8overloadIJZNS6_9UCIEngine12format_scoreERKNS6_5ScoreEE3$_0ZNS8_12format_scoreESB_E3$_1ZNS8_12format_scoreESB_E3$_2EEEJRKNS9_9TablebaseEEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!298 = distinct !{!298, i1 false, !"_ZZN9Stockfish9UCIEngine12format_scoreB5cxx11ERKNS_5ScoreEENK3$_1clB5cxx11ENS1_9TablebaseE"}
!299 = distinct !{!299, !298, !"_ZZN9Stockfish9UCIEngine12format_scoreB5cxx11ERKNS_5ScoreEENK3$_1clB5cxx11ENS1_9TablebaseE: argument 0"}
!300 = distinct !{!300, i1 false, !"_ZNSt7__cxx119to_stringEi"}
!301 = distinct !{!301, !300, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!302 = distinct !{!302, i1 false, !"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKN9Stockfish8overloadIJZNSB_9UCIEngine12format_scoreERKNSB_5ScoreEE3$_0ZNSD_12format_scoreESG_E3$_1ZNSD_12format_scoreESG_E3$_2EEERKSt7variantIJNSE_4MateENSE_9TablebaseENSE_13InternalUnitsEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_ST_"}
!303 = distinct !{!303, !302, !"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKN9Stockfish8overloadIJZNSB_9UCIEngine12format_scoreERKNSB_5ScoreEE3$_0ZNSD_12format_scoreESG_E3$_1ZNSD_12format_scoreESG_E3$_2EEERKSt7variantIJNSE_4MateENSE_9TablebaseENSE_13InternalUnitsEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_ST_: argument 0"}
!304 = distinct !{!304, i1 false, !"_ZSt8__invokeB5cxx11IRKN9Stockfish8overloadIJZNS0_9UCIEngine12format_scoreB5cxx11ERKNS0_5ScoreEE3$_0ZNS2_12format_scoreB5cxx11ES5_E3$_1ZNS2_12format_scoreB5cxx11ES5_E3$_2EEEJRKNS3_13InternalUnitsEEENSt15__invoke_resultIT_JDpT0_EE4typeEOSG_DpOSH_"}
!305 = distinct !{!305, !304, !"_ZSt8__invokeB5cxx11IRKN9Stockfish8overloadIJZNS0_9UCIEngine12format_scoreB5cxx11ERKNS0_5ScoreEE3$_0ZNS2_12format_scoreB5cxx11ES5_E3$_1ZNS2_12format_scoreB5cxx11ES5_E3$_2EEEJRKNS3_13InternalUnitsEEENSt15__invoke_resultIT_JDpT0_EE4typeEOSG_DpOSH_: argument 0"}
!306 = distinct !{!306, i1 false, !"_ZSt13__invoke_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN9Stockfish8overloadIJZNS6_9UCIEngine12format_scoreERKNS6_5ScoreEE3$_0ZNS8_12format_scoreESB_E3$_1ZNS8_12format_scoreESB_E3$_2EEEJRKNS9_13InternalUnitsEEET_St14__invoke_otherOT0_DpOT1_"}
!307 = distinct !{!307, !306, !"_ZSt13__invoke_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN9Stockfish8overloadIJZNS6_9UCIEngine12format_scoreERKNS6_5ScoreEE3$_0ZNS8_12format_scoreESB_E3$_1ZNS8_12format_scoreESB_E3$_2EEEJRKNS9_13InternalUnitsEEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!308 = distinct !{!308, i1 false, !"_ZZN9Stockfish9UCIEngine12format_scoreB5cxx11ERKNS_5ScoreEENK3$_2clB5cxx11ENS1_13InternalUnitsE"}
!309 = distinct !{!309, !308, !"_ZZN9Stockfish9UCIEngine12format_scoreB5cxx11ERKNS_5ScoreEENK3$_2clB5cxx11ENS1_13InternalUnitsE: argument 0"}
!310 = distinct !{!310, i1 false, !"_ZNSt7__cxx119to_stringEi"}
!311 = distinct !{!311, !310, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!312 = !{!120, !14, i64 8}
!313 = !{!281, !279, !277}
!314 = !{!289, !287, !285, !283, !281, !279, !277}
!315 = !{!291}
!316 = !{!291, !289, !287, !285, !283, !281, !279, !277}
!317 = !{!299, !297, !295, !293, !281, !279, !277}
!318 = !{!301}
!319 = !{!301, !299, !297, !295, !293, !281, !279, !277}
!320 = !{!309, !307, !305, !303, !281, !279, !277}
!321 = !{!311}
!322 = !{!311, !309, !307, !305, !303, !281, !279, !277}
!323 = distinct !{!323, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!324 = distinct !{!324, !323, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!325 = distinct !{!325, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!326 = distinct !{!326, !325, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!327 = !{!324}
!328 = !{!326}
!329 = !{!326, !324}
!330 = distinct !{!330, i1 false, !"_ZN9Stockfish9UCIEngine6squareB5cxx11ENS_6SquareE"}
!331 = distinct !{!331, !330, !"_ZN9Stockfish9UCIEngine6squareB5cxx11ENS_6SquareE: argument 0"}
!332 = distinct !{!332, i1 false, !"_ZN9Stockfish9UCIEngine6squareB5cxx11ENS_6SquareE"}
!333 = distinct !{!333, !332, !"_ZN9Stockfish9UCIEngine6squareB5cxx11ENS_6SquareE: argument 0"}
!334 = !{!331}
!335 = !{!333}
!336 = distinct !{!336, i1 false, !"_ZN9Stockfish9UCIEngine8to_lowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!337 = distinct !{!337, !336, !"_ZN9Stockfish9UCIEngine8to_lowerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!338 = !{!337}
!339 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!340 = !{!"p1 _ZTSN9Stockfish4MoveE", !21, i64 0}
!341 = !{!"_ZTSN9Stockfish8MoveListILNS_7GenTypeE4EEE", !14, i64 0, !340, i64 512}
!342 = !{!341, !340, i64 512}
!343 = !{!"short", !14, i64 0}
!344 = !{!343, !343, i64 0}
!345 = !{!83, !50, i64 621}
!346 = distinct !{!346, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!347 = distinct !{!347, !346, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!348 = distinct !{!348, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!349 = distinct !{!349, !348, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!350 = !{!138, !15, i64 16}
!351 = !{!138, !18, i64 24}
!352 = !{!137, !18, i64 0}
!353 = !{!138, !18, i64 80}
!354 = !{!138, !15, i64 112}
!355 = !{!138, !18, i64 88}
!356 = !{!138, !18, i64 64}
!357 = !{!347}
!358 = !{!349}
!359 = !{!349, !347}
!360 = distinct !{!360, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!361 = distinct !{!361, !360, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
end_hunk_1
