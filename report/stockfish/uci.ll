Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/uci?download=true
inline.NumInlined: 1415
inline.NumDeleted: 623
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9Stockfish20get_process_affinityEv:bb.a
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
  %i.l = load i64, ptr %i.k, align 8, !tbaa !136
  %i.m = shl nuw i64 1, %i.i
  %i.n = and i64 %i.l, %i.m
  %.not13 = icmp eq i64 %i.n, 0
  br i1 %.not13, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit, label %bb.f

bb.f:                                             ; preds = %.preheader
  %.02022.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !268 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.f ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !136  ; 2 uses
  %i.q = icmp ult i64 %storemerge19, %i.p         ; 2 uses
  %.in.v.i.i.i = select i1 %i.q, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !268 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !261

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.q, label %._crit_edge.thread.i.i.i, label %bb.h

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.f
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.a, %bb.f ] ; 4 uses
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !265
  %i.s = icmp eq ptr %.019.lcssa29.i.i.i, %i.r
  br i1 %i.s, label %select.unfold.i.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #28
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !136
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
  %i.y = load i64, ptr %i.x, align 8, !tbaa !136
  %i.z = icmp ult i64 %storemerge19, %i.y
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.i, %select.unfold.i.i
  %i.aa = phi i1 [ %i.z, %bb.i ], [ true, %select.unfold.i.i ]
  %i.ab = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i64 %storemerge19, ptr %i.ac, align 8, !tbaa !136
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #26
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !267
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !267
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit:      ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.h, %.preheader
  %i.af = add nuw nsw i64 %storemerge19, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, 65536
  br i1 %exitcond.not, label %bb.e, label %.preheader, !llvm.loop !262
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !guid !269 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish9UCIEngine17print_info_stringESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #4 align 2 !guid !270 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::vector.13", align 8    ; 7 uses
  tail call void @_ZN9Stockfish15sync_cout_startEv() #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.13") align 8 %2, i64 %0, ptr %1, i64 1, ptr nonnull @.str)
  %i.b = load ptr, ptr %2, align 8, !tbaa !271    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !271  ; 2 uses
  %.not14 = icmp eq ptr %i.b, %i.d
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load ptr, ptr %2, align 8, !tbaa !146
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !147
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
  %.sroa.01.0.copyload = load i64, ptr %.sroa.010.015, align 8, !tbaa !136
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 8 ; 2 uses
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !149
  %i.k = call noundef zeroext i1 @_ZN9Stockfish13is_whitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %.sroa.01.0.copyload, ptr %.sroa.22.0.copyload) #26
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 12) #26 ; 0 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.010.015, align 8, !tbaa !136
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !149
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !150
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !152
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !161
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
define linkonce_odr dso_local void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.13") align 8 %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #3 comdat !guid !280 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %invariant.op = sub i64 1, %3
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.o
  %i.h = phi ptr [ %i.as, %bb.o ], [ null, %.preheader ] ; 9 uses
  %i.i = phi ptr [ %i.at, %bb.o ], [ null, %.preheader ] ; 8 uses
  %i.j = phi ptr [ %i.au, %bb.o ], [ null, %.preheader ] ; 14 uses
  %.09 = phi i64 [ %i.av, %bb.o ], [ 0, %.preheader ] ; 14 uses
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
  %i.m = load i8, ptr %4, align 1, !tbaa !150
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
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %bb.f, !llvm.loop !272

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %bb.c, %bb.g
  %.1.i.i = phi i64 [ %.09, %bb.c ], [ %i.s, %bb.g ] ; 3 uses
  %i.w = icmp eq i64 %.1.i.i, -1
  br i1 %i.w, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.x = icmp ugt i64 %.09, %1
  br i1 %i.x, label %bb.j, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.j:                                             ; preds = %bb.i
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
  store i64 %.sroa.speculated.i, ptr %i.i, align 8, !tbaa !136
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.aa, ptr %.sroa.534.0..sroa_idx, align 8, !tbaa !149
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !281
  br label %bb.o

bb.l:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.ac = ptrtoint ptr %i.h to i64
  %i.ad = ptrtoint ptr %i.j to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775792
  br i1 %i.af, label %bb.m, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  store ptr %i.j, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #31
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.ag = ashr exact i64 %i.ae, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 576460752303423487)
  %i.ak = select i1 %i.ai, i64 576460752303423487, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #29 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.an, align 8, !tbaa !136
  %.sroa.534.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.aa, ptr %.sroa.534.0..sroa_idx35, align 8, !tbaa !149
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.am, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.j, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !282, !alias.scope !283
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !276

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ae) #30
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !281
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !147
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.k
  %i.as = phi ptr [ %i.ar, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.h, %bb.k ]
  %i.at = phi ptr [ %i.aq, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.ab, %bb.k ]
  %i.au = phi ptr [ %i.am, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.j, %bb.k ]
  %i.av = add i64 %.1.i.i, %3
  br label %bb.b

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread: ; preds = %bb.c, %bb.e, %bb.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %bb.f, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.h
  store ptr %i.j, ptr %0, align 8
  %i.aw = icmp ugt i64 %.09, %1
  br i1 %i.aw, label %bb.p, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.102, i64 noundef %.09, i64 noundef %1) #31
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread
  %i.ax = sub nuw i64 %1, %.09                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %.09 ; 2 uses
  %.not.i14 = icmp eq ptr %i.i, %i.h
  br i1 %.not.i14, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13
  store i64 %i.ax, ptr %i.i, align 8, !tbaa !136
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ay, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !149
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.az, ptr %i.f, align 8, !tbaa !281
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27

bb.r:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13
  %i.ba = ptrtoint ptr %i.h to i64
  %i.bb = ptrtoint ptr %i.j to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 4 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775792
  br i1 %i.bd, label %bb.s, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #31
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15: ; preds = %bb.r
  %i.be = ashr exact i64 %i.bc, 4                 ; 3 uses
  %.sroa.speculated.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i16, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 576460752303423487)
  %i.bi = select i1 %i.bg, i64 576460752303423487, i64 %i.bh ; 3 uses
  %.not.i.i.i17 = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i17)
  %i.bj = shl nuw nsw i64 %i.bi, 4
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #29 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store i64 %i.ax, ptr %i.bl, align 8, !tbaa !136
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.ay, ptr %.sroa.5.0..sroa_idx30, align 8, !tbaa !149
  %.not10.i.i.i.i.i18 = icmp eq ptr %i.j, %i.h
  br i1 %.not10.i.i.i.i.i18, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15, %.lr.ph.i.i.i.i.i19
  %.012.i.i.i.i.i20 = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i19 ], [ %i.bk, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ] ; 2 uses
  %.0911.i.i.i.i.i21 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i19 ], [ %i.j, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i20, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i21, i64 16, i1 false), !tbaa.struct !282, !alias.scope !284
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i21, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i20, i64 16 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.bm, %i.h
  br i1 %.not.i.i.i.i.i22, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23, label %.lr.ph.i.i.i.i.i19, !llvm.loop !276

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23: ; preds = %.lr.ph.i.i.i.i.i19, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.bk, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ], [ %i.bn, %.lr.ph.i.i.i.i.i19 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i24, i64 16
  %.not.i23.i.i25 = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i25, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.bc) #30
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26: ; preds = %bb.t, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23
  store ptr %i.bk, ptr %0, align 8, !tbaa !146
  store ptr %i.bo, ptr %i.f, align 8, !tbaa !281
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.bp, ptr %i.g, align 8, !tbaa !147
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26, %bb.q, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef zeroext i1 @_ZN9Stockfish13is_whitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64, ptr) local_unnamed_addr #5

declare void @_ZN9Stockfish13sync_cout_endEv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish9UCIEngineC2EiPPc(ptr noundef nonnull align 8 dereferenceable(1696) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 align 2 !guid !285 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::optional", align 8     ; 9 uses
  %4 = alloca %"class.std::function", align 8     ; 8 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !149    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !163
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.109) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.e, ptr %i.a, align 8, !tbaa !136
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.d, label %._crit_edge.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !165
  %i.h = load i64, ptr %i.a, align 8, !tbaa !136
  store i64 %i.h, ptr %i.c, align 8, !tbaa !150
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %i.g, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  switch i64 %i.e, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRPcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.j = load i8, ptr %i.b, align 1, !tbaa !150
  store i8 %i.j, ptr %i.i, align 1, !tbaa !150
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRPcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %i.b, i64 %i.e, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRPcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRPcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.k = load i64, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !166
  %i.m = load ptr, ptr %3, align 8, !tbaa !165
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i8 1, ptr %i.o, align 8, !tbaa !169
  call void @_ZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr noundef nonnull align 8 %3) #26
  %i.p = load i8, ptr %i.o, align 8, !tbaa !169, !range !170, !noundef !171
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRPcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit
  store i8 0, ptr %i.o, align 8, !tbaa !169
  %i.r = load ptr, ptr %3, align 8, !tbaa !165    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.c
  br i1 %i.s, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.c, align 8, !tbaa !150
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #30
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.g, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRPcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1680
  store i32 %1, ptr %i.v, align 8, !tbaa !286
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1688
  store ptr %2, ptr %i.w, align 8, !tbaa !287
  %i.x = call noundef nonnull align 8 dereferenceable(80) ptr @_ZN9Stockfish6Engine11get_optionsEv(ptr noundef nonnull align 8 dereferenceable(1680) %0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN9Stockfish9UCIEngineC1EiPPcE3$_0E9_M_invokeERKSt9_Any_dataOS7_", ptr %i.z, align 8, !tbaa !288
  store ptr @"_ZNSt17_Function_handlerIFvSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEZN9Stockfish9UCIEngineC1EiPPcE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.y, align 8, !tbaa !177
  call void @_ZN9Stockfish10OptionsMap17add_info_listenerEOSt8functionIFvSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %4) #26
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !177 ; 2 uses
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
define dso_local void @_ZN9Stockfish9UCIEngine28init_search_update_listenersEv(ptr noundef nonnull align 8 dereferenceable(1696) %0) local_unnamed_addr #4 align 2 !guid !289 {
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
  store ptr @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search13InfoIterationEEZNS0_9UCIEngine28init_search_update_listenersEvE3$_0E9_M_invokeERKSt9_Any_dataS4_", ptr %i.b, align 8, !tbaa !179
  store ptr @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search13InfoIterationEEZNS0_9UCIEngine28init_search_update_listenersEvE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.a, align 8, !tbaa !177
  call void @_ZN9Stockfish6Engine11set_on_iterEOSt8functionIFvRKNS_6Search13InfoIterationEEE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #26
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !177  ; 2 uses
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
  store ptr @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search9InfoShortEEZNS0_9UCIEngine28init_search_update_listenersEvE3$_1E9_M_invokeERKSt9_Any_dataS4_", ptr %i.f, align 8, !tbaa !181
  store ptr @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search9InfoShortEEZNS0_9UCIEngine28init_search_update_listenersEvE3$_1E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.e, align 8, !tbaa !177
  call void @_ZN9Stockfish6Engine22set_on_update_no_movesEOSt8functionIFvRKNS_6Search9InfoShortEEE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #26
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !177  ; 2 uses
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
  store i64 %i.i, ptr %3, align 8, !tbaa !183
  store ptr @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search8InfoFullEEZNS0_9UCIEngine28init_search_update_listenersEvE3$_2E9_M_invokeERKSt9_Any_dataS4_", ptr %i.k, align 8, !tbaa !185
  store ptr @"_ZNSt17_Function_handlerIFvRKN9Stockfish6Search8InfoFullEEZNS0_9UCIEngine28init_search_update_listenersEvE3$_2E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.j, align 8, !tbaa !177
  call void @_ZN9Stockfish6Engine18set_on_update_fullEOSt8functionIFvRKNS_6Search8InfoFullEEE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !177  ; 2 uses
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
  store ptr @"_ZNSt17_Function_handlerIFvSt17basic_string_viewIcSt11char_traitsIcEES3_EZN9Stockfish9UCIEngine28init_search_update_listenersEvE3$_3E9_M_invokeERKSt9_Any_dataOS3_SC_", ptr %i.p, align 8, !tbaa !187
  store ptr @"_ZNSt17_Function_handlerIFvSt17basic_string_viewIcSt11char_traitsIcEES3_EZN9Stockfish9UCIEngine28init_search_update_listenersEvE3$_3E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.o, align 8, !tbaa !177
  call void @_ZN9Stockfish6Engine15set_on_bestmoveEOSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEES5_EE(ptr noundef nonnull align 8 dereferenceable(1680) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #26
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !177  ; 2 uses
  %.not.i5 = icmp eq ptr %i.q, null
  br i1 %.not.i5, label %_ZNSt14_Function_baseD2Ev.exit6, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit4
end_hunk_0
