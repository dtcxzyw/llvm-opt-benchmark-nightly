Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/find_msvc_tools-762109e8b810eaf1.find_msvc_tools.2d7dcf19d5894587-cgu.0?download=true
inline.NumInlined: 322
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1s_ENtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools:bb.a
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3envRNtNtNtB8_3ffi6os_str8OsStringBP_ECs3U9i7nQCKwt_15find_msvc_tools(ptr returned align 8 %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %2, i64 8
  %.val.i1 = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %2, i64 16
  %.val1.i2 = load i64, ptr %i.e, align 8
  tail call void @_RNvMs_NtNtNtCsaL1QbXo9JQH_3std3sys7process3envNtB4_10CommandEnv3set(ptr nonnull align 8 %i.a, ptr %.val.i, i64 %.val1.i, ptr %.val.i1, i64 %.val1.i2)
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3newRNtNtB8_4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([200 x i8]) align 8 captures(none) initializes((0, 200)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [200 x i8], align 8               ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.c, align 8
  call void @_RNvMs_NtNtNtNtCsaL1QbXo9JQH_3std3sys7process4unix6commonNtB4_7Command3new(ptr nonnull sret([200 x i8]) align 8 %i.a, ptr %.val.i, i64 %.val1.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %i.a, i64 200, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.d, null
  br i1 %.not.i.i5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi ptr [ %i.g, %.lr.ph ], [ %i.d, %bb.a ] ; 3 uses
  %.sroa.0.07 = phi ptr [ %i.e, %.lr.ph ], [ %i.c, %bb.a ]
  %.sroa.3.06 = phi i64 [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = add i64 %.sroa.3.06, 1                   ; 2 uses
  %.not.i = icmp eq i64 %.sroa.3.06, 0
  %..i = select i1 %.not.i, i64 544, i64 640
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr nonnull %.sroa.0.07, i64 %..i, i64 8) #38
  %i.g = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.3.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %.lr.ph ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.e, %.lr.ph ]
  %.not.i3 = icmp eq i64 %.sroa.3.0.lcssa, 0
  %..i4 = select i1 %.not.i3, i64 544, i64 640
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr nonnull %.sroa.0.0.lcssa, i64 %..i4, i64 8) #38
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 538
  %i.g = load i16, ptr %i.f, align 2
  %i.h = zext i16 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.0.039 = phi ptr [ %i.j, %bb.d ], [ %i.c, %bb.a ] ; 4 uses
  %.sroa.5.038 = phi i64 [ %i.aa, %bb.d ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = load ptr, ptr %.sroa.0.039, align 8      ; 4 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.k = zext i16 %i.ac to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.k, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.5.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.aa, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.j, %._crit_edge.loopexit ] ; 3 uses
  %i.l = icmp eq i64 %.sroa.5.0.lcssa, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.m = add nuw nsw i64 %.sroa.8.0.lcssa, 1
  br label %_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1R_ENtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs3U9i7nQCKwt_15find_msvc_tools.exit

bb.c:                                             ; preds = %._crit_edge
  %i.n = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 552
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %.sroa.8.0.lcssa ; 2 uses
  %xtraiter = and i64 %.sroa.5.0.lcssa, 7         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %.sroa.019.0.in.i.prol = phi ptr [ %i.p, %.prol.preheader ], [ %i.o, %bb.c ]
  %.sroa.021.0.in.i.prol = phi i64 [ %.sroa.021.0.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa, %bb.c ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  %.sroa.021.0.i.prol = add i64 %.sroa.021.0.in.i.prol, -1 ; 2 uses
  %.sroa.019.0.i.prol = load ptr, ptr %.sroa.019.0.in.i.prol, align 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.prol, i64 544 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !50

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.sroa.019.0.i.lcssa.unr = phi ptr [ poison, %bb.c ], [ %.sroa.019.0.i.prol, %.prol.preheader ]
  %.sroa.019.0.in.i.unr = phi ptr [ %i.o, %bb.c ], [ %i.p, %.prol.preheader ]
  %.sroa.021.0.in.i.unr = phi i64 [ %.sroa.5.0.lcssa, %bb.c ], [ %.sroa.021.0.i.prol, %.prol.preheader ]
  %i.q = icmp ult i64 %.sroa.5.0.lcssa, 8
  br i1 %i.q, label %_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1R_ENtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs3U9i7nQCKwt_15find_msvc_tools.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.019.0.in.i = phi ptr [ %i.z, %.new ], [ %.sroa.019.0.in.i.unr, %.prol.loopexit ]
  %.sroa.021.0.in.i = phi i64 [ %.sroa.021.0.i.7, %.new ], [ %.sroa.021.0.in.i.unr, %.prol.loopexit ]
  %.sroa.019.0.i = load ptr, ptr %.sroa.019.0.in.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i, i64 544
  %.sroa.019.0.i.1 = load ptr, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.1, i64 544
  %.sroa.019.0.i.2 = load ptr, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.2, i64 544
  %.sroa.019.0.i.3 = load ptr, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.3, i64 544
  %.sroa.019.0.i.4 = load ptr, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.4, i64 544
  %.sroa.019.0.i.5 = load ptr, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.5, i64 544
  %.sroa.019.0.i.6 = load ptr, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.6, i64 544
  %.sroa.021.0.i.7 = add i64 %.sroa.021.0.in.i, -8 ; 2 uses
  %.sroa.019.0.i.7 = load ptr, ptr %i.x, align 8  ; 2 uses
  %i.y = icmp eq i64 %.sroa.021.0.i.7, 0
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.7, i64 544
  br i1 %i.y, label %_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1R_ENtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs3U9i7nQCKwt_15find_msvc_tools.exit, label %.new

_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1R_ENtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %.prol.loopexit, %.new, %bb.b
  %.sroa.5.030 = phi i64 [ %i.m, %bb.b ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.029 = phi ptr [ %.sroa.0.0.lcssa, %bb.b ], [ %.sroa.019.0.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.019.0.i.7, %.new ]
  store ptr %.sroa.0.029, ptr %0, align 8
  %.sroa.018.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.018.sroa.2.0..sroa_idx, align 8
  %.sroa.018.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.030, ptr %.sroa.018.sroa.3.0..sroa_idx, align 8
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0.lcssa, ptr %.sroa.219.0..sroa_idx, align 8
  %.sroa.320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.5.0.lcssa, ptr %.sroa.320.0..sroa_idx, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.8.0.lcssa, ptr %.sroa.421.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.aa = add i64 %.sroa.5.038, 1                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 536
  %i.ac = load i16, ptr %i.ab, align 8            ; 2 uses
  %.not.i = icmp eq i64 %.sroa.5.038, 0
  %..i = select i1 %.not.i, i64 544, i64 640
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr nonnull %.sroa.0.039, i64 %..i, i64 8) #38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 538
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = icmp ult i16 %i.ac, %i.ae
  br i1 %i.af, label %._crit_edge.loopexit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %.not.i33 = icmp eq i64 %.sroa.5.038, 0
  %..i34 = select i1 %.not.i33, i64 544, i64 640
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr nonnull %.sroa.0.039, i64 %..i34, i64 8) #38
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1R_ENtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs3U9i7nQCKwt_15find_msvc_tools.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree readonly captures(none) %4, i64 %5, i1 zeroext %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8              ; 9 uses
  %i.c = add i64 %5, -1                           ; 2 uses
  %i.d = add i64 %i.c, %i.b                       ; 2 uses
  %i.e = icmp ult i64 %i.d, %3
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.f, align 8
  %7 = add i64 %i.b, %5                           ; 3 uses
  %i.j = getelementptr i8, ptr %2, i64 %i.b       ; 2 uses
  %i.k = add i64 %i.b, 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 %3, ptr %i.a, align 8
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi i64 [ %i.d, %.lr.ph ], [ %i.v, %bb.f ]
  %i.m = phi i64 [ %i.b, %.lr.ph ], [ %i.u, %bb.f ] ; 2 uses
  %.not = icmp eq i64 %i.b, %i.m
  br i1 %.not, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge64, %bb.m, %._crit_edge
  %.sink46 = phi i64 [ %i.ac, %._crit_edge64 ], [ %3, %._crit_edge ], [ %i.ac, %bb.m ], [ %i.m, %bb.b ]
  %.sink = phi i64 [ 0, %._crit_edge64 ], [ 1, %._crit_edge ], [ 0, %bb.m ], [ 1, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink46, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  %i.q = load i8, ptr %i.p, align 1
  %i.r = and i8 %i.q, 63
  %i.s = zext nneg i8 %i.r to i64
  %8 = lshr i64 %i.i, %i.s
  %.not17 = trunc i64 %8 to i1
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %7, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.t = load i64, ptr %1, align 8                ; 5 uses
  br i1 %6, label %bb.h, label %bb.g

.sink.split:                                      ; preds = %bb.d, %bb.r, %bb.q
  %.sink49 = phi i64 [ 0, %bb.r ], [ %i.al, %bb.q ], [ 0, %bb.d ]
  %.ph = phi i64 [ %i.ar, %bb.r ], [ %i.ak, %bb.q ], [ %7, %bb.d ]
  store i64 %.sink49, ptr %i.g, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.r, %bb.p, %bb.d
  %i.u = phi i64 [ %i.ar, %bb.r ], [ %i.ak, %bb.p ], [ %7, %bb.d ], [ %.ph, %.sink.split ] ; 2 uses
  %i.v = add i64 %i.c, %i.u                       ; 2 uses
  %i.w = icmp ult i64 %i.v, %3
  br i1 %i.w, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.g, align 8
  %.sroa.0.0.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.t)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.sroa.speculated.i, %bb.g ], [ %i.t, %bb.e ] ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.01.0, i64 %5)
  %exitcond.not56.not = icmp ult i64 %.sroa.01.0, %5
  br i1 %exitcond.not56.not, label %.lr.ph59, label %._crit_edge60

bb.i:                                             ; preds = %.lr.ph59
  %i.y = add i64 %.sroa.02.057, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %umax
  br i1 %exitcond.not, label %._crit_edge60, label %.lr.ph59

._crit_edge60:                                    ; preds = %bb.i, %bb.h
  br i1 %6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge60
  %i.z = load i64, ptr %i.g, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge60, %bb.j
  %.sroa.05.0 = phi i64 [ %i.z, %bb.j ], [ 0, %._crit_edge60 ] ; 2 uses
  %i.aa = icmp ult i64 %.sroa.05.0, %i.t
  br i1 %i.aa, label %.lr.ph63, label %._crit_edge64

bb.l:                                             ; preds = %bb.n
  %i.ab = icmp ult i64 %.sroa.05.0, %i.ad
  br i1 %i.ab, label %.lr.ph63, label %._crit_edge64

._crit_edge64:                                    ; preds = %bb.k, %bb.l
  %i.ac = add i64 %i.b, %5                        ; 3 uses
  store i64 %i.ac, ptr %i.a, align 8
  br i1 %6, label %.loopexit, label %bb.m

.lr.ph63:                                         ; preds = %bb.k, %bb.l
  %.sroa.2.061 = phi i64 [ %i.ad, %bb.l ], [ %i.t, %bb.k ]
  %i.ad = add i64 %.sroa.2.061, -1                ; 6 uses
  %i.ae = icmp ult i64 %i.ad, %5
  br i1 %i.ae, label %bb.n, label %bb.o

bb.m:                                             ; preds = %._crit_edge64
  store i64 0, ptr %i.g, align 8
  br label %.loopexit

bb.n:                                             ; preds = %.lr.ph63
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr i8, ptr %i.j, i64 %i.ad
  %i.ai = load i8, ptr %i.ah, align 1
  %.not18 = icmp eq i8 %i.ag, %i.ai
  br i1 %.not18, label %bb.l, label %bb.p

bb.o:                                             ; preds = %.lr.ph63
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.ad, i64 %5, ptr nonnull align 8 @3) #33
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aj = load i64, ptr %i.h, align 8             ; 2 uses
  %i.ak = add i64 %i.aj, %i.b                     ; 3 uses
  store i64 %i.ak, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = sub i64 %5, %i.aj
  br label %.sink.split

.lr.ph59:                                         ; preds = %bb.h, %bb.i
  %.sroa.02.057 = phi i64 [ %i.y, %bb.i ], [ %.sroa.01.0, %bb.h ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.02.057
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr i8, ptr %i.j, i64 %.sroa.02.057
  %i.ap = load i8, ptr %i.ao, align 1
  %.not19 = icmp eq i8 %i.an, %i.ap
  br i1 %.not19, label %bb.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph59
  %i.aq = add i64 %i.k, %.sroa.02.057
  %i.ar = sub i64 %i.aq, %i.t                     ; 3 uses
  store i64 %i.ar, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree readonly captures(none) %4, i64 %5, i1 zeroext %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.b = add i64 %5, -1                           ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.c = add i64 %i.b, %.promoted                 ; 2 uses
  %i.d = icmp ult i64 %i.c, %3
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 %3, ptr %i.a, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.i = phi i64 [ %i.c, %.lr.ph ], [ %i.r, %bb.f ]
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.q, %bb.f ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %i.i
  %i.l = load i8, ptr %i.k, align 1
  %i.m = and i8 %i.l, 63
  %i.n = zext nneg i8 %i.m to i64
  %7 = lshr i64 %i.f, %i.n
  %.not = trunc i64 %7 to i1
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.n, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %bb.n ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.o = add i64 %i.j, %5                         ; 3 uses
  store i64 %i.o, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.p = load i64, ptr %1, align 8                ; 5 uses
  br i1 %6, label %bb.h, label %bb.g

.sink.split:                                      ; preds = %bb.d, %bb.s, %bb.r
  %.sink = phi i64 [ 0, %bb.s ], [ %i.ak, %bb.r ], [ 0, %bb.d ]
  %.ph = phi i64 [ %i.ar, %bb.s ], [ %i.aj, %bb.r ], [ %i.o, %bb.d ]
  store i64 %.sink, ptr %i.g, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.s, %bb.q, %bb.d
  %i.q = phi i64 [ %i.ar, %bb.s ], [ %i.aj, %bb.q ], [ %i.o, %bb.d ], [ %.ph, %.sink.split ] ; 2 uses
  %i.r = add i64 %i.b, %i.q                       ; 2 uses
  %i.s = icmp ult i64 %i.r, %3
  br i1 %i.s, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.g, align 8
  %.sroa.0.0.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.p)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.sroa.speculated.i, %bb.g ], [ %i.p, %bb.e ] ; 3 uses
  %i.u = getelementptr i8, ptr %2, i64 %i.j       ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.01.0, i64 %5)
  %exitcond.not44.not = icmp ult i64 %.sroa.01.0, %5
  br i1 %exitcond.not44.not, label %.lr.ph47, label %._crit_edge48

bb.i:                                             ; preds = %.lr.ph47
  %i.v = add i64 %.sroa.02.045, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %umax
  br i1 %exitcond.not, label %._crit_edge48, label %.lr.ph47

._crit_edge48:                                    ; preds = %bb.i, %bb.h
  br i1 %6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge48
  %i.w = load i64, ptr %i.g, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge48, %bb.j
  %.sroa.05.0 = phi i64 [ %i.w, %bb.j ], [ 0, %._crit_edge48 ] ; 2 uses
  %i.x = icmp ult i64 %.sroa.05.0, %i.p
  br i1 %i.x, label %.lr.ph51, label %._crit_edge52

bb.l:                                             ; preds = %bb.o
  %i.y = icmp ult i64 %.sroa.05.0, %i.aa
  br i1 %i.y, label %.lr.ph51, label %._crit_edge52

._crit_edge52:                                    ; preds = %bb.k, %bb.l
  %i.z = add i64 %i.j, %5                         ; 2 uses
  store i64 %i.z, ptr %i.a, align 8
  br i1 %6, label %bb.n, label %bb.m

.lr.ph51:                                         ; preds = %bb.k, %bb.l
  %.sroa.2.049 = phi i64 [ %i.aa, %bb.l ], [ %i.p, %bb.k ]
  %i.aa = add i64 %.sroa.2.049, -1                ; 6 uses
  %i.ab = icmp ult i64 %i.aa, %5
  br i1 %i.ab, label %bb.o, label %bb.p

bb.m:                                             ; preds = %._crit_edge52
  store i64 0, ptr %i.g, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge52
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.ac, align 8, !alias.scope !51
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %i.ad, align 8, !alias.scope !51
  br label %bb.c

bb.o:                                             ; preds = %.lr.ph51
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 %i.aa
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.aa
  %i.ah = load i8, ptr %i.ag, align 1
  %.not17 = icmp eq i8 %i.af, %i.ah
  br i1 %.not17, label %bb.l, label %bb.q

bb.p:                                             ; preds = %.lr.ph51
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.aa, i64 %5, ptr nonnull align 8 @3) #33
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ai = load i64, ptr %i.h, align 8             ; 2 uses
  %i.aj = add i64 %i.ai, %i.j                     ; 3 uses
  store i64 %i.aj, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = sub i64 %5, %i.ai
  br label %.sink.split

.lr.ph47:                                         ; preds = %bb.h, %bb.i
  %.sroa.02.045 = phi i64 [ %i.v, %bb.i ], [ %.sroa.01.0, %bb.h ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.02.045
  %i.am = load i8, ptr %i.al, align 1
  %i.an = getelementptr i8, ptr %i.u, i64 %.sroa.02.045
  %i.ao = load i8, ptr %i.an, align 1
  %.not18 = icmp eq i8 %i.am, %i.ao
  br i1 %.not18, label %bb.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph47
  %i.ap = add i64 %i.j, 1
  %i.aq = add i64 %i.ap, %.sroa.02.045
  %i.ar = sub i64 %i.aq, %i.p                     ; 3 uses
  store i64 %i.ar, ptr %i.a, align 8
  br i1 %6, label %bb.f, label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB23_4SyncEL_ECs3U9i7nQCKwt_15find_msvc_tools(ptr %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !invariant.load !54 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.a(ptr %0) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxSmEEECs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSmEECs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSmEECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSmEECs3U9i7nQCKwt_15find_msvc_tools.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i: ; preds = %bb.b
  %i.f = shl nuw nsw i64 %i.d, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr nonnull %i.a, i64 %i.f, i64 4) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSmEECs3U9i7nQCKwt_15find_msvc_tools.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEEB11_(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  switch i64 %i.a, label %bb.b [
    i64 -2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit
    i64 -1, label %bb.e
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit: ; preds = %bb.a, %bb.f, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvEBF_.exit

end_hunk_0
begin_hunk_1_@_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1R_ENtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs3U9i7nQCKwt_15find_msvc_tools:bb.a
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, 1
  store ptr %i.c, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.c, i64 552
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.e ; 2 uses
  %xtraiter = and i64 %i.b, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %.sroa.019.0.in.prol = phi ptr [ %i.l, %.prol.preheader ], [ %i.k, %bb.c ]
  %.sroa.021.0.in.prol = phi i64 [ %.sroa.021.0.prol, %.prol.preheader ], [ %i.b, %bb.c ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  %.sroa.021.0.prol = add i64 %.sroa.021.0.in.prol, -1 ; 2 uses
  %.sroa.019.0.prol = load ptr, ptr %.sroa.019.0.in.prol, align 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.019.0.prol, i64 544 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !63

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.sroa.019.0.lcssa.unr = phi ptr [ poison, %bb.c ], [ %.sroa.019.0.prol, %.prol.preheader ]
  %.sroa.019.0.in.unr = phi ptr [ %i.k, %bb.c ], [ %i.l, %.prol.preheader ]
  %.sroa.021.0.in.unr = phi i64 [ %i.b, %bb.c ], [ %.sroa.021.0.prol, %.prol.preheader ]
  %i.m = icmp ult i64 %i.b, 8
  br i1 %i.m, label %.unr-lcssa, label %.new

bb.d:                                             ; preds = %.unr-lcssa, %bb.b
  ret void

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.019.0.in = phi ptr [ %i.v, %.new ], [ %.sroa.019.0.in.unr, %.prol.loopexit ]
  %.sroa.021.0.in = phi i64 [ %.sroa.021.0.7, %.new ], [ %.sroa.021.0.in.unr, %.prol.loopexit ]
  %.sroa.019.0 = load ptr, ptr %.sroa.019.0.in, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.019.0, i64 544
  %.sroa.019.0.1 = load ptr, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.019.0.1, i64 544
  %.sroa.019.0.2 = load ptr, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.019.0.2, i64 544
  %.sroa.019.0.3 = load ptr, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.019.0.3, i64 544
  %.sroa.019.0.4 = load ptr, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.019.0.4, i64 544
  %.sroa.019.0.5 = load ptr, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.019.0.5, i64 544
  %.sroa.019.0.6 = load ptr, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.019.0.6, i64 544
  %.sroa.021.0.7 = add i64 %.sroa.021.0.in, -8    ; 2 uses
  %.sroa.019.0.7 = load ptr, ptr %i.t, align 8    ; 2 uses
  %i.u = icmp eq i64 %.sroa.021.0.7, 0
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.019.0.7, i64 544
  br i1 %i.u, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.sroa.019.0.lcssa = phi ptr [ %.sroa.019.0.lcssa.unr, %.prol.loopexit ], [ %.sroa.019.0.7, %.new ]
  store ptr %.sroa.019.0.lcssa, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EE10dying_nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 2 uses
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8 ; 4 uses
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8 ; 5 uses
  store i64 0, ptr %1, align 8
  %i.e = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.e, label %bb.c, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1K_EE16deallocating_endNtNtBc_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.2.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %.preheader.i.i, label %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.f = icmp eq i64 %.sroa.2.sroa.3.0.copyload.i.i, 0
  br i1 %i.f, label %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %xtraiter = and i64 %.sroa.2.sroa.3.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.2.sroa.2.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.i, %.lr.ph.i.i.prol ], [ %.sroa.2.sroa.3.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 544
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !64

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa11.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.2.sroa.2.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.2.sroa.3.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.i, %.lr.ph.i.i.prol ]
  %i.j = icmp ult i64 %.sroa.2.sroa.3.0.copyload.i.i, 8
  br i1 %i.j, label %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 544
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 544
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 544
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 544
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 544
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 544
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 544
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 544
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = add i64 %.sroa.020.024.i.i, -8          ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.i, label %.lr.ph.i.i

_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.preheader.i.i
  %.sroa.0.0.i = phi ptr [ %.sroa.2.sroa.2.0.copyload.i.i, %.preheader.i.i ], [ %.lcssa11.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.z, %.lr.ph.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1K_EE16deallocating_endNtNtBc_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit, label %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i

_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i: ; preds = %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.i, %bb.c
  %.sroa.0.012.i = phi ptr [ %.sroa.0.0.i, %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.i ], [ %.sroa.2.sroa.0.0.copyload.i.i, %bb.c ] ; 3 uses
  %.sroa.5.011.i = phi ptr [ null, %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.i ], [ %.sroa.2.sroa.2.0.copyload.i.i, %bb.c ]
  %i.ac = ptrtoint ptr %.sroa.5.011.i to i64      ; 2 uses
  %i.ad = load ptr, ptr %.sroa.0.012.i, align 8   ; 2 uses
  %.not.i.i5.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i5.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit.i, label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i, %.lr.ph.i1.i
  %i.ae = phi ptr [ %i.ag, %.lr.ph.i1.i ], [ %i.ad, %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i ] ; 3 uses
  %.sroa.0.07.i.i = phi ptr [ %i.ae, %.lr.ph.i1.i ], [ %.sroa.0.012.i, %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i ]
  %.sroa.3.06.i.i = phi i64 [ %i.af, %.lr.ph.i1.i ], [ %i.ac, %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i ] ; 2 uses
  %i.af = add i64 %.sroa.3.06.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.06.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 544, i64 640
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr nonnull %.sroa.0.07.i.i, i64 %..i.i.i, i64 8) #38
  %i.ag = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit.i, label %.lr.ph.i1.i

_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %.lr.ph.i1.i, %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ac, %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i ], [ %i.af, %.lr.ph.i1.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.012.i, %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.thread7.i ], [ %i.ae, %.lr.ph.i1.i ]
  %.not.i3.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i4.i.i = select i1 %.not.i3.i.i, i64 544, i64 640
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr nonnull %.sroa.0.0.lcssa.i.i, i64 %..i4.i.i, i64 8) #38
  br label %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1K_EE16deallocating_endNtNtBc_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit

_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1K_EE16deallocating_endNtNtBc_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.b, %_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1J_EE10take_frontCs3U9i7nQCKwt_15find_msvc_tools.exit.i, %_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1S_ENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.ah = add i64 %i.c, -1
  store i64 %i.ah, ptr %i.b, align 8
  call void @_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1K_EE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1K_EE16deallocating_endNtNtBc_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCs3U9i7nQCKwt_15find_msvc_tools(ptr noalias nonnull align 8 %0, ptr %1, ptr %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %3 = trunc i64 %i.b to i1
  %i.c = lshr i64 %i.b, 1                         ; 4 uses
  %.not.i2 = icmp ne ptr %1, null
  %.not.i = select i1 %3, i1 %.not.i2, i1 false
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !71
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmXY8IYACQt_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %i.c, i1 zeroext false, i64 1, i64 1), !noalias !71
  %i.d = load i64, ptr %i.a, align 8, !noalias !71
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !71 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.h, align 8, !noalias !71
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.g, i64 %i.i) #37, !noalias !71
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i: ; preds = %bb.b
  %i.j = load ptr, ptr %i.h, align 8, !noalias !71 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !71
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %_RNvYNvYeNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTReEE9call_onceCs3U9i7nQCKwt_15find_msvc_tools.exit.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull readonly align 1 %1, i64 %i.c, i1 false), !noalias !71
  br label %_RNvYNvYeNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTReEE9call_onceCs3U9i7nQCKwt_15find_msvc_tools.exit.i

_RNvYNvYeNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTReEE9call_onceCs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.d, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i.i.i
  store i64 %i.g, ptr %0, align 8, !alias.scope !71
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !71
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !71
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr nonnull sret([24 x i8]) align 8 %0, ptr %1, ptr %2)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3U9i7nQCKwt_15find_msvc_tools.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %_RNvYNvYeNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTReEE9call_onceCs3U9i7nQCKwt_15find_msvc_tools.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools12get_ucrt_dir(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 8)) %0) unnamed_addr #9 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools15find_vs_version(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  call void @_RNvNvNtCsaL1QbXo9JQH_3std3env3var5inner(ptr nonnull sret([32 x i8]) align 8 %i.f, ptr nonnull @14, i64 19)
  %i.g = load i64, ptr %i.f, align 8
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.o, label %bb.c

bb.b:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit13.thread
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.e) #35
          to label %.body unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit13.thread

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.c
  %i.p = load i32, ptr %i.l, align 1
  %i.q = icmp ne i32 %i.p, 808335409
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit4

bb.d:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 5, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit4: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit
  %i.u = load i32, ptr %i.l, align 1
  %i.v = icmp ne i32 %i.u, 808335153
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit7

bb.e:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.y, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit7: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit4
  %i.z = load i32, ptr %i.l, align 1
  %i.aa = icmp ne i32 %i.z, 808334897
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit10

bb.f:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit7
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.ad, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit10: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit7
  %i.ae = load i32, ptr %i.l, align 1
  %i.af = icmp ne i32 %i.ae, 808334641
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit13

bb.g:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit10
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.ai, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit13: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit10
  %i.aj = load i32, ptr %i.l, align 1
  %i.ak = icmp ne i32 %i.aj, 808334385
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.h, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit13.thread

bb.h:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit13
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.an, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit13.thread: ; preds = %bb.c, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit13
  store ptr %i.l, ptr %i.d, align 8, !captures !56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.n, ptr %i.ao, align 8
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsaDvkSoazevh_14rustc_demangle, ptr %.sroa.2.0..sroa_idx, align 8
  invoke fastcc void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCs3U9i7nQCKwt_15find_msvc_tools(ptr noalias align 8 %i.c, ptr nonnull @15, ptr nonnull %i.b)
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools.exit13.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.e)
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools.exit unwind label %bb.m

.body:                                            ; preds = %bb.m, %bb.k, %bb.b
  %.pn = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.at, %bb.m ], [ %i.ap, %bb.k ]
  %i.ar = load i64, ptr %i.f, align 8
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.t, label %bb.u

bb.m:                                             ; preds = %bb.p, %bb.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs3U9i7nQCKwt_15find_msvc_tools.exit.i, %bb.q
  %i.au = load i64, ptr %i.f, align 8
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %bb.r, label %bb.s

bb.n:                                             ; preds = %bb.u, %bb.b
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
end_hunk_1
begin_hunk_2_@_RNvXs2_NtCs3U9i7nQCKwt_15find_msvc_tools10find_toolsNtB5_12StdEnvGetterNtB5_9EnvGetter7get_env:bb.a
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  call void @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys3env4unix6getenv(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr %2, i64 %3)
  %i.b = load i64, ptr %i.a, align 8
  %.not.i = icmp eq i64 %i.b, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE3mapNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvNcNtB1v_5Owned0EB1z_.exit

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE3mapNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvNcNtB1v_5Owned0EB1z_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE3mapNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvNcNtB1v_5Owned0EB1z_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { i64, i64 } @_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = load i64, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, -1                         ; 2 uses
  store i64 %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr %1, ptr %2, ptr %3, ptr %4) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = ptrtoint ptr %4 to i64
  %i.e = ptrtoint ptr %3 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %.sroa.0.0.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.c)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.sroa.speculated.i, ptr %i.k, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { ptr, ptr } @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1
  store i64 %i.f, ptr %i.a, align 8
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.k, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  %i.l = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { i64, i64 } @_RNvXs5_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = load i64, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCs3U9i7nQCKwt_15find_msvc_tools.exit

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, -1                         ; 2 uses
  store i64 %i.e, ptr %i.a, align 8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCs3U9i7nQCKwt_15find_msvc_tools.exit

_RNvXs3_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs8_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBG_EENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !invariant.load !54 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit

bb.b:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit, %bb.a
  ret void

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !invariant.load !54
  %i.h = load ptr, ptr %0, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.h, i64 %i.d, i64 %i.g) #38
  br label %bb.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxShENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit

bb.b:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit, %bb.a
  ret void

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.d, i64 %i.b, i64 1) #38
  br label %bb.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit

bb.b:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit, %bb.a
  ret void

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.a
  %i.d = shl nuw nsw i64 %i.b, 2
  %i.e = load ptr, ptr %0, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.e, i64 %i.d, i64 4) #38
  br label %bb.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvXs9_NtNtCs3oUPovFnLWP_4core3ops12control_flowINtB5_11ControlFlowuENtNtB9_3cmp9PartialEq2eqCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = load i8, ptr %1, align 1
  %i.c = xor i8 %i.b, %i.a
  %2 = trunc i8 %i.c to i1
  %.sroa.0.0 = xor i1 %2, true
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsB_NtCs1xwejQucwHj_5alloc6stringeNtB5_8ToString9to_stringCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmXY8IYACQt_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %2, i1 zeroext false, i64 1, i64 1), !noalias !83
  %i.b = load i64, ptr %i.a, align 8, !noalias !83
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !83 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !83
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.e, i64 %i.g) #37, !noalias !83
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !83 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !83
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvXs26_NtCs1xwejQucwHj_5alloc6stringeNtB6_12SpecToString14spec_to_stringCs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr readonly align 1 %1, i64 %2, i1 false), !noalias !83
  br label %_RNvXs26_NtCs1xwejQucwHj_5alloc6stringeNtB6_12SpecToString14spec_to_stringCs3U9i7nQCKwt_15find_msvc_tools.exit

_RNvXs26_NtCs1xwejQucwHj_5alloc6stringeNtB6_12SpecToString14spec_to_stringCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i.i, %bb.c
  store i64 %i.e, ptr %0, align 8, !alias.scope !83
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !83
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !83
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE9drop_slowCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %0) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i8 @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools10TargetArchENtNtNtB7_3ops9try_trait3Try6branchBO_(i8 returned %0) unnamed_addr #5 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3EnvENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %.not = icmp eq i64 %i.a, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsK_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools10find_tools3SdkEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualBO_(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) initializes((0, 8)) %0) unnamed_addr #3 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsK_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs3U9i7nQCKwt_15find_msvc_tools4tool4ToolEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualBO_(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) initializes((0, 8)) %0) unnamed_addr #3 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrRNtNtB7_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.c, label %_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  %i.g = load i64, ptr %i.b, align 8
  %i.h = add i64 %i.g, 23
  %i.i = and i64 %i.h, -8                         ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr %i.k, i64 %i.i, i64 8) #38
  br label %_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit

_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = add i64 %i.d, -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.i, ptr %0, align 8, !captures !56
  store i64 %i.h, ptr %i.c, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 1, i64 0, i64 0, ptr nonnull align 8 @31) #33
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ]
  %i.j = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.k = insertvalue { ptr, i64 } %i.j, i64 %i.b, 1
  ret { ptr, i64 } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXs_NtCs3U9i7nQCKwt_15find_msvc_tools10find_toolsNtB4_3EnvINtNtCs3oUPovFnLWP_4core7convert5AsRefNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE6as_ref(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -1
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %.pn6.idx.i = select i1 %i.b, i64 16, i64 0
  %.pn6.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pn6.idx.i
  %.pn4.in.i = getelementptr i8, ptr %0, i64 16
  %.pn4.i = load i64, ptr %.pn4.in.i, align 8
  %.pn3.i = insertvalue { ptr, i64 } poison, ptr %.pn6.i, 0
  %.pn.i = insertvalue { ptr, i64 } %.pn3.i, i64 %.pn4.i, 1
  ret { ptr, i64 } %.pn.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops12control_flowINtB4_11ControlFlowNtNtCsaL1QbXo9JQH_3std4path7PathBufEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops12control_flowINtB4_11ControlFlowjEINtNtB6_9try_trait12FromResidualIBK_jzEE13from_residualCs3U9i7nQCKwt_15find_msvc_tools(i64 %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops12control_flowINtB4_11ControlFlowuEINtNtB6_9try_trait12FromResidualIBK_uzEE13from_residualCs3U9i7nQCKwt_15find_msvc_tools() unnamed_addr #5 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvXs_NtNtCs3oUPovFnLWP_4core5slice4iterRShNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCs3U9i7nQCKwt_15find_msvc_tools(ptr %0, i64 %1) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
end_hunk_2
begin_hunk_3_@_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs3U9i7nQCKwt_15find_msvc_tools:bb.a
  br i1 %i.ad, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit15.thread.i.i, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ae = zext nneg i8 %i.y to i32
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ag = load i8, ptr %i.x, align 1, !noalias !86
  %i.ah = shl nuw nsw i32 %i.ab, 6
  %i.ai = and i8 %i.ag, 63
  %i.aj = zext nneg i8 %i.ai to i32               ; 2 uses
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = icmp samesign ugt i8 %i.y, -33
  br i1 %i.al, label %bb.j, label %bb.n

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit15.thread.i.i: ; preds = %bb.g
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 @5) #39, !noalias !86
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.am = add nuw nsw i64 %i.l, 2
  %i.an = icmp samesign eq i64 %i.am, %i.j
  br i1 %i.an, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit17.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.ap = load i8, ptr %i.af, align 1, !noalias !86
  %i.aq = shl nuw nsw i32 %i.aj, 6
  %i.ar = and i8 %i.ap, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as            ; 2 uses
  %i.au = shl nuw nsw i32 %i.ab, 12
  %i.av = or disjoint i32 %i.at, %i.au
  %i.aw = icmp samesign ugt i8 %i.y, -17
  br i1 %i.aw, label %bb.l, label %bb.n

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit17.thread.i.i: ; preds = %bb.j
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 @6) #39, !noalias !86
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ax = add nuw nsw i64 %i.l, 3
  %i.ay = icmp samesign eq i64 %i.ax, %i.j
  br i1 %i.ay, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit19.thread.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = load i8, ptr %i.ao, align 1, !noalias !86
  %i.ba = shl nuw nsw i32 %i.ab, 18
  %i.bb = and i32 %i.ba, 1835008
  %i.bc = shl nuw nsw i32 %i.at, 6
  %i.bd = and i8 %i.az, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.bb
  br label %bb.n

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit19.thread.i.i: ; preds = %bb.l
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 @7) #39, !noalias !86
  unreachable

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i: ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.i, %bb.e, %.split.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr %i.h, i64 %i.j, i64 %i.l, i64 %i.j, ptr nonnull align 8 @32) #33, !noalias !86
  unreachable

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.i, %bb.h
  %.sroa.4.0.i.ph.i = phi i32 [ %i.ak, %bb.i ], [ %i.av, %bb.k ], [ %i.bg, %bb.m ], [ %i.ae, %bb.h ] ; 3 uses
  br i1 %i.n, label %.loopexit50, label %bb.q

bb.o:                                             ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread98.i
  br i1 %i.n, label %.loopexit50, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.c, align 2, !noalias !86
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.q:                                             ; preds = %bb.n
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 128
  br i1 %i.bh, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 2048
  br i1 %i.bi, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 65536
  %..i = select i1 %i.bj, i64 3, i64 4
  br label %.loopexit

bb.t:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bl = load i64, ptr %i.bk, align 8            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bn = load i64, ptr %i.bm, align 8            ; 4 uses
  %.not = icmp ult i64 %i.bn, %i.bl
  br i1 %.not, label %bb.v, label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.u:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp eq i64 %i.bq, -1
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8            ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bv = load i64, ptr %i.bu, align 8            ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bx = load ptr, ptr %i.bw, align 8            ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bz = load i64, ptr %i.by, align 8            ; 14 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.cb = add i64 %i.bz, -1                       ; 3 uses
  %.promoted.i13 = load i64, ptr %i.ca, align 8   ; 3 uses
  %i.cc = add i64 %i.cb, %.promoted.i13           ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %i.bv               ; 2 uses
  br i1 %i.br, label %bb.ag, label %bb.x

.loopexit50:                                      ; preds = %bb.n, %bb.o
  %.sroa.2.1.ph = phi i64 [ %i.j, %bb.o ], [ %i.l, %bb.n ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.1.ph, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.2.1.ph, ptr %i.cf, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.p, %.preheader48, %.preheader.preheader._crit_edge, %._crit_edge.i14, %.preheader45.preheader._crit_edge, %._crit_edge.i, %bb.t, %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38, %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread, %.loopexit50
  %storemerge.i.sink = phi i64 [ 0, %bb.t ], [ 1, %.preheader45.preheader._crit_edge ], [ 1, %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38 ], [ 0, %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread ], [ 1, %.loopexit50 ], [ 1, %.preheader.preheader._crit_edge ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i14 ], [ 0, %.preheader48 ], [ 0, %bb.p ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.v:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cj = load i8, ptr %i.ci, align 8             ; 2 uses
  %i.ck = sub nuw i64 %i.bl, %i.bn                ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bn ; 2 uses
  %i.cm = icmp ult i64 %i.ck, 16
  br i1 %i.cm, label %.lr.ph.i, label %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit

.lr.ph.i:                                         ; preds = %bb.v, %bb.w
  %.sroa.04.09.i = phi i64 [ %i.cq, %bb.w ], [ 0, %bb.v ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.sroa.04.09.i
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = icmp eq i8 %i.co, %i.cj
  br i1 %i.cp, label %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %i.cq = add nuw i64 %.sroa.04.09.i, 1           ; 2 uses
  %exitcond.not.i5 = icmp eq i64 %i.cq, %i.ck
  br i1 %exitcond.not.i5, label %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread, label %.lr.ph.i

_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.v
  %i.cr = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 %i.cj, ptr %i.cl, i64 %i.ck) ; 2 uses
  %i.cs = extractvalue { i64, i64 } %i.cr, 0
  %i.ct = trunc nuw i64 %i.cs to i1
  br i1 %i.ct, label %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit._RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38_crit_edge, label %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread

_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit._RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38_crit_edge: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit
  %i.cu = extractvalue { i64, i64 } %i.cr, 1
  %.pre = load i64, ptr %i.bm, align 8
  br label %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38

_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38: ; preds = %.lr.ph.i, %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit._RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38_crit_edge
  %i.cv = phi i64 [ %.pre, %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit._RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38_crit_edge ], [ %i.bn, %.lr.ph.i ]
  %.sroa.5.1.i41 = phi i64 [ %i.cu, %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit._RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread38_crit_edge ], [ %.sroa.04.09.i, %.lr.ph.i ]
  %i.cw = add i64 %i.cv, %.sroa.5.1.i41           ; 2 uses
  %i.cx = add i64 %i.cw, 1                        ; 2 uses
  store i64 %i.cx, ptr %i.bm, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cw, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cx, ptr %i.cz, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit.thread: ; preds = %bb.w, %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit
  store i64 %i.bl, ptr %i.bm, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.x:                                             ; preds = %bb.u
  br i1 %i.cd, label %.lr.ph.i6, label %._crit_edge.i

.lr.ph.i6:                                        ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.y

._crit_edge.i:                                    ; preds = %.sink.split.i, %bb.x
  store i64 %i.bv, ptr %i.ca, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.y:                                             ; preds = %.sink.split.i, %.lr.ph.i6
  %i.dd = phi i64 [ %i.bq, %.lr.ph.i6 ], [ %.sink.i12, %.sink.split.i ] ; 3 uses
  %i.de = phi i64 [ %i.cc, %.lr.ph.i6 ], [ %i.dn, %.sink.split.i ]
  %i.df = phi i64 [ %.promoted.i13, %.lr.ph.i6 ], [ %.ph.i, %.sink.split.i ] ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.de
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = and i8 %i.dh, 63
  %i.dj = zext nneg i8 %i.di to i64
  %2 = lshr i64 %i.db, %i.dj
  %.not.i7 = trunc i64 %2 to i1
  br i1 %.not.i7, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = add i64 %i.df, %i.bz                    ; 2 uses
  store i64 %i.dk, ptr %i.ca, align 8
  br label %.sink.split.i

bb.aa:                                            ; preds = %bb.y
  %i.dl = load i64, ptr %i.bo, align 8            ; 4 uses
  %.sroa.0.0.sroa.speculated.i.i8 = tail call i64 @llvm.umax.i64(i64 %i.dd, i64 %i.dl) ; 3 uses
  %i.dm = getelementptr i8, ptr %i.bt, i64 %i.df  ; 2 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.sroa.speculated.i.i8, i64 %i.bz)
  %exitcond.not.i11317.not = icmp ult i64 %.sroa.0.0.sroa.speculated.i.i8, %i.bz
  br i1 %exitcond.not.i11317.not, label %.lr.ph, label %.preheader45.preheader

.sink.split.i:                                    ; preds = %bb.af, %bb.ae, %bb.z
  %.sink.i12 = phi i64 [ 0, %bb.af ], [ %i.ed, %bb.ae ], [ 0, %bb.z ] ; 2 uses
  %.ph.i = phi i64 [ %i.ek, %bb.af ], [ %i.ec, %bb.ae ], [ %i.dk, %bb.z ] ; 2 uses
  store i64 %.sink.i12, ptr %i.bp, align 8
  %i.dn = add i64 %.ph.i, %i.cb                   ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.bv
  br i1 %i.do, label %bb.y, label %._crit_edge.i

bb.ab:                                            ; preds = %.lr.ph
  %i.dp = add i64 %.sroa.02.0.i10318, 1           ; 2 uses
  %exitcond.not.i11 = icmp eq i64 %i.dp, %umax.i
  br i1 %exitcond.not.i11, label %.preheader45.preheader, label %.lr.ph

.preheader45.preheader:                           ; preds = %bb.ab, %bb.aa
  %i.dq = icmp ult i64 %i.dd, %i.dl
  br i1 %i.dq, label %.lr.ph320, label %.preheader45.preheader._crit_edge

.preheader45:                                     ; preds = %bb.ac
  %i.dr = icmp ult i64 %i.dd, %i.dv
  br i1 %i.dr, label %.lr.ph320, label %.preheader45.preheader._crit_edge

.preheader45.preheader._crit_edge:                ; preds = %.preheader45.preheader, %.preheader45
  %i.ds = add i64 %i.df, %i.bz                    ; 2 uses
  store i64 %i.ds, ptr %i.ca, align 8
  store i64 0, ptr %i.bp, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.df, ptr %i.dt, align 8, !alias.scope !89
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ds, ptr %i.du, align 8, !alias.scope !89
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

.lr.ph320:                                        ; preds = %.preheader45.preheader, %.preheader45
  %.sroa.2.0.i319 = phi i64 [ %i.dv, %.preheader45 ], [ %i.dl, %.preheader45.preheader ]
  %i.dv = add i64 %.sroa.2.0.i319, -1             ; 6 uses
  %i.dw = icmp ult i64 %i.dv, %i.bz
  br i1 %i.dw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph320
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.dv
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = getelementptr i8, ptr %i.dm, i64 %i.dv
  %i.ea = load i8, ptr %i.dz, align 1
  %.not17.i = icmp eq i8 %i.dy, %i.ea
  br i1 %.not17.i, label %.preheader45, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph320
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.dv, i64 %i.bz, ptr nonnull align 8 @3) #33
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.eb = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.ec = add i64 %i.eb, %i.df                    ; 2 uses
  store i64 %i.ec, ptr %i.ca, align 8
  %i.ed = sub i64 %i.bz, %i.eb
  br label %.sink.split.i

.lr.ph:                                           ; preds = %bb.aa, %bb.ab
  %.sroa.02.0.i10318 = phi i64 [ %i.dp, %bb.ab ], [ %.sroa.0.0.sroa.speculated.i.i8, %bb.aa ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sroa.02.0.i10318
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = getelementptr i8, ptr %i.dm, i64 %.sroa.02.0.i10318
  %i.eh = load i8, ptr %i.eg, align 1
  %.not18.i = icmp eq i8 %i.ef, %i.eh
  br i1 %.not18.i, label %bb.ab, label %bb.af

bb.af:                                            ; preds = %.lr.ph
  %i.ei = add i64 %i.df, 1
  %i.ej = sub i64 %i.ei, %i.dl
  %i.ek = add i64 %i.ej, %.sroa.02.0.i10318       ; 2 uses
  store i64 %i.ek, ptr %i.ca, align 8
  br label %.sink.split.i

bb.ag:                                            ; preds = %bb.u
  br i1 %i.cd, label %.lr.ph.i16, label %._crit_edge.i14

.lr.ph.i16:                                       ; preds = %bb.ag
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.em = load i64, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.ah

._crit_edge.i14:                                  ; preds = %bb.ak, %bb.ag
  store i64 %i.bv, ptr %i.ca, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

bb.ah:                                            ; preds = %bb.ak, %.lr.ph.i16
  %i.eo = phi i64 [ %i.cc, %.lr.ph.i16 ], [ %i.ex, %bb.ak ]
  %i.ep = phi i64 [ %.promoted.i13, %.lr.ph.i16 ], [ %.sink, %bb.ak ] ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.eo
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = and i8 %i.er, 63
  %i.et = zext nneg i8 %i.es to i64
  %3 = lshr i64 %i.em, %i.et
  %.not.i17 = trunc i64 %3 to i1
  br i1 %.not.i17, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eu = add i64 %i.ep, %i.bz
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ev = load i64, ptr %i.bo, align 8            ; 7 uses
  %i.ew = getelementptr i8, ptr %i.bt, i64 %i.ep  ; 2 uses
  %umax.i19 = tail call i64 @llvm.umax.i64(i64 %i.ev, i64 %i.bz)
  %exitcond.not.i21322.not = icmp ult i64 %i.ev, %i.bz
  br i1 %exitcond.not.i21322.not, label %.lr.ph324, label %.preheader.preheader

bb.ak:                                            ; preds = %bb.ap, %bb.ao, %bb.ai
  %.sink = phi i64 [ %i.fr, %bb.ap ], [ %i.fk, %bb.ao ], [ %i.eu, %bb.ai ] ; 3 uses
  store i64 %.sink, ptr %i.ca, align 8
  %i.ex = add i64 %.sink, %i.cb                   ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.bv
  br i1 %i.ey, label %bb.ah, label %._crit_edge.i14

bb.al:                                            ; preds = %.lr.ph324
  %i.ez = add i64 %.sroa.02.0.i20323, 1           ; 2 uses
  %exitcond.not.i21 = icmp eq i64 %i.ez, %umax.i19
  br i1 %exitcond.not.i21, label %.preheader.preheader, label %.lr.ph324

.preheader.preheader:                             ; preds = %bb.al, %bb.aj
  %i.fa = add i64 %i.ev, -1
  %.first_iter = icmp ult i64 %i.fa, %i.bz
  %.not42325 = icmp eq i64 %i.ev, 0
  br i1 %.not42325, label %.preheader.preheader._crit_edge, label %.lr.ph327

.preheader:                                       ; preds = %bb.am
  %.not42 = icmp eq i64 %i.fe, 0
  br i1 %.not42, label %.preheader.preheader._crit_edge, label %.lr.ph327

.preheader.preheader._crit_edge:                  ; preds = %.preheader.preheader, %.preheader
  %i.fb = add i64 %i.ep, %i.bz                    ; 2 uses
  store i64 %i.fb, ptr %i.ca, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ep, ptr %i.fc, align 8, !alias.scope !92
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fb, ptr %i.fd, align 8, !alias.scope !92
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

.lr.ph327:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.2.0.i23326 = phi i64 [ %i.fe, %.preheader ], [ %i.ev, %.preheader.preheader ]
  %i.fe = add i64 %.sroa.2.0.i23326, -1           ; 5 uses
  br i1 %.first_iter, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph327
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = getelementptr i8, ptr %i.ew, i64 %i.fe
  %i.fi = load i8, ptr %i.fh, align 1
  %.not17.i24 = icmp eq i8 %i.fg, %i.fi
  br i1 %.not17.i24, label %.preheader, label %bb.ao

bb.an:                                            ; preds = %.lr.ph327
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.fe, i64 %i.bz, ptr nonnull align 8 @3) #33
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.fj = load i64, ptr %i.en, align 8
  %i.fk = add i64 %i.fj, %i.ep
  br label %bb.ak

.lr.ph324:                                        ; preds = %bb.aj, %bb.al
  %.sroa.02.0.i20323 = phi i64 [ %i.ez, %bb.al ], [ %i.ev, %bb.aj ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sroa.02.0.i20323
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = getelementptr i8, ptr %i.ew, i64 %.sroa.02.0.i20323
  %i.fo = load i8, ptr %i.fn, align 1
  %.not18.i22 = icmp eq i8 %i.fm, %i.fo
  br i1 %.not18.i22, label %bb.al, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph324
  %i.fp = add i64 %i.ep, 1
  %i.fq = sub i64 %i.fp, %i.ev
  %i.fr = add i64 %i.fq, %.sroa.02.0.i20323
  br label %bb.ak
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXsx_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.c, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EENtNtNtB1U_3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EE10dying_nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %0)
  %i.c = load ptr, ptr %i.b, align 8
  %.not1 = icmp eq ptr %i.c, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  call void @_RNvMsz_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB17_EE10dying_nextCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %0)
  %i.d = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  invoke void @_RNvMsT_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtCs3oUPovFnLWP_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.b)
          to label %bb.b unwind label %bb.c

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph
  %i.e = landingpad { ptr, i32 }
          cleanup
  store ptr %0, ptr %i.a, align 8
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXsy_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2s_ENtNtBQ_5alloc6GlobalEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.a) #35
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXsz_NtCsaL1QbXo9JQH_3std4pathNtB5_7PathBufINtNtCs3oUPovFnLWP_4core7convert4FromRNtNtNtB7_3ffi6os_str5OsStrE4fromCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmXY8IYACQt_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %2, i1 zeroext false, i64 1, i64 1)
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.e, i64 %i.g) #37
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr readonly align 1 %1, i64 %2, i1 false)
  br label %_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit

_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools.exit.i, %bb.c
  store i64 %i.e, ptr %0, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.36.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  ret i64 %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3maxCs3U9i7nQCKwt_15find_msvc_tools(i64 %0, i64 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %0)
  ret i64 %.sroa.0.0.sroa.speculated
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3minCs3U9i7nQCKwt_15find_msvc_tools(i64 %0, i64 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 %0)
  ret i64 %.sroa.0.0.sroa.speculated
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_3
