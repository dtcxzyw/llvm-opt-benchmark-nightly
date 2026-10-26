Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/find_msvc_tools-762109e8b810eaf1.find_msvc_tools.2d7dcf19d5894587-cgu.0?download=true
inline.NumInlined: 322
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools:bb.a
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
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly captures(none) %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %i.b = icmp ult i64 %2, 16
  br i1 %i.b, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 %i.a, ptr %1, i64 %2)
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = icmp eq i64 %i.d, 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.04.09.i = phi i64 [ %i.i, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.09.i
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, %i.a                    ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.04.09.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %2
  %or.cond = select i1 %i.h, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph.i

_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %.lr.ph.i, %.preheader.i, %bb.b
  %.sroa.0.1.i = phi i1 [ %i.e, %bb.b ], [ false, %.preheader.i ], [ %i.h, %.lr.ph.i ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutuEp6OutputINtNtB15_6result6ResultuNtNtNtB15_2io5error5ErrorENtNtB15_6marker4SendNtB2H_4SyncEL_EENtNtB13_4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2D_4SyncEL_EECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecPaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBG_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBD_EECs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBD_EECs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBC_EECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBC_EECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %i.m) #35
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBD_EECs3U9i7nQCKwt_15find_msvc_tools.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXsv_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexNtNtBP_5range9RangeFullE5indexCs3U9i7nQCKwt_15find_msvc_tools(ptr nofree readonly align 8 captures(none) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs3U9i7nQCKwt_15find_msvc_tools(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr nofree nonnull align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8
  switch i64 %i.a, label %bb.b [
    i64 2, label %bb.u
    i64 1, label %bb.t
    i64 0, label %.preheader48
  ]

.preheader48:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !noalias !92
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit, label %.lr.ph185

.lr.ph185:                                        ; preds = %.preheader48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !noalias !92 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i64, ptr %i.i, align 8, !noalias !92 ; 9 uses
  %.not43.i = icmp eq ptr %i.h, null              ; 2 uses
  %.promoted = load i8, ptr %i.f, align 8, !noalias !92
  %.promoted186 = load i64, ptr %i.b, align 8, !noalias !92
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

.loopexit:                                        ; preds = %bb.q, %bb.r, %bb.s
  %.sroa.01.0.i = phi i64 [ 2, %bb.r ], [ %..i, %bb.s ], [ 1, %bb.q ]
  %i.k = add i64 %.sroa.01.0.i, %i.l              ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !noalias !92
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %.lr.ph185
  %i.l = phi i64 [ %.promoted186, %.lr.ph185 ], [ %i.k, %.loopexit ] ; 13 uses
  %i.m = phi i8 [ %.promoted, %.lr.ph185 ], [ %i.p, %.loopexit ] ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  %i.o = and i8 %i.m, 1
  %i.p = xor i8 %i.o, 1                           ; 2 uses
  store i8 %i.p, ptr %i.f, align 8, !noalias !92
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp ult i64 %i.l, %i.j
  br i1 %.not.i.i, label %bb.e, label %.split.i.i

.split.i.i:                                       ; preds = %bb.d
  %i.r = icmp ne i64 %i.l, %i.j
  %or.cond.i = select i1 %i.r, i1 true, i1 %.not43.i
  br i1 %or.cond.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread92.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.t = load i8, ptr %i.s, align 1, !noalias !92
  %i.u = icmp sgt i8 %i.t, -65
  br i1 %i.u, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread92.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.i: ; preds = %bb.c
  br i1 %.not43.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread92.i

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread92.i: ; preds = %bb.e, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.i, %.split.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l ; 4 uses
  %i.w = icmp samesign eq i64 %i.l, %i.j
  br i1 %i.w, label %bb.o, label %bb.f

bb.f:                                             ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread92.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.y = load i8, ptr %i.v, align 1, !noalias !92 ; 5 uses
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = and i8 %i.y, 31
  %i.ab = zext nneg i8 %i.aa to i32               ; 3 uses
  %i.ac = add nuw nsw i64 %i.l, 1
  %i.ad = icmp samesign eq i64 %i.ac, %i.j
  br i1 %i.ad, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit15.thread.i.i, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ae = zext nneg i8 %i.y to i32
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ag = load i8, ptr %i.x, align 1, !noalias !92
  %i.ah = shl nuw nsw i32 %i.ab, 6
  %i.ai = and i8 %i.ag, 63
  %i.aj = zext nneg i8 %i.ai to i32               ; 2 uses
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = icmp samesign ugt i8 %i.y, -33
  br i1 %i.al, label %bb.j, label %bb.n

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit15.thread.i.i: ; preds = %bb.g
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 @5) #39, !noalias !92
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.am = add nuw nsw i64 %i.l, 2
  %i.an = icmp samesign eq i64 %i.am, %i.j
  br i1 %i.an, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit17.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.ap = load i8, ptr %i.af, align 1, !noalias !92
  %i.aq = shl nuw nsw i32 %i.aj, 6
  %i.ar = and i8 %i.ap, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as            ; 2 uses
  %i.au = shl nuw nsw i32 %i.ab, 12
  %i.av = or disjoint i32 %i.at, %i.au
  %i.aw = icmp samesign ugt i8 %i.y, -17
  br i1 %i.aw, label %bb.l, label %bb.n

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit17.thread.i.i: ; preds = %bb.j
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 @6) #39, !noalias !92
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ax = add nuw nsw i64 %i.l, 3
  %i.ay = icmp samesign eq i64 %i.ax, %i.j
  br i1 %i.ay, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit19.thread.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = load i8, ptr %i.ao, align 1, !noalias !92
  %i.ba = shl nuw nsw i32 %i.ab, 18
  %i.bb = and i32 %i.ba, 1835008
  %i.bc = shl nuw nsw i32 %i.at, 6
  %i.bd = and i8 %i.az, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.bb
  br label %bb.n

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3U9i7nQCKwt_15find_msvc_tools.exit19.thread.i.i: ; preds = %bb.l
  tail call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 @7) #39, !noalias !92
  unreachable

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread.i: ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.i, %bb.e, %.split.i.i
  %.lcssa354 = phi i64 [ 0, %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.i ], [ %i.l, %bb.e ], [ %i.l, %.split.i.i ]
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr %i.h, i64 %i.j, i64 %.lcssa354, i64 %i.j, ptr nonnull align 8 @32) #33, !noalias !92
  unreachable

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.i, %bb.h
  %.sroa.4.0.i.ph.i = phi i32 [ %i.ak, %bb.i ], [ %i.av, %bb.k ], [ %i.bg, %bb.m ], [ %i.ae, %bb.h ] ; 3 uses
  br i1 %i.n, label %.loopexit50, label %bb.q

bb.o:                                             ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs3U9i7nQCKwt_15find_msvc_tools.exit.thread92.i
  br i1 %i.n, label %.loopexit50, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.c, align 2, !noalias !92
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
  %i.cq = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
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
  %i.de = phi i64 [ %i.cc, %.lr.ph.i6 ], [ %i.dp, %.sink.split.i ]
  %i.df = phi i64 [ %.promoted.i13, %.lr.ph.i6 ], [ %.ph.i, %.sink.split.i ] ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.de
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = and i8 %i.dh, 63
  %i.dj = zext nneg i8 %i.di to i64
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.dk, %i.db
  %.not.i7 = icmp eq i64 %i.dl, 0
  br i1 %.not.i7, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dm = add i64 %i.df, %i.bz                    ; 2 uses
  store i64 %i.dm, ptr %i.ca, align 8
  br label %.sink.split.i

bb.aa:                                            ; preds = %bb.y
  %i.dn = load i64, ptr %i.bo, align 8            ; 4 uses
  %.sroa.0.0.sroa.speculated.i.i8 = tail call i64 @llvm.umax.i64(i64 %i.dd, i64 %i.dn) ; 3 uses
  %i.do = getelementptr i8, ptr %i.bt, i64 %i.df  ; 2 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.sroa.speculated.i.i8, i64 %i.bz)
  %exitcond.not.i11317.not = icmp ult i64 %.sroa.0.0.sroa.speculated.i.i8, %i.bz
  br i1 %exitcond.not.i11317.not, label %.lr.ph, label %.preheader45.preheader

.sink.split.i:                                    ; preds = %bb.af, %bb.ae, %bb.z
  %.sink.i12 = phi i64 [ 0, %bb.af ], [ %i.ef, %bb.ae ], [ 0, %bb.z ] ; 2 uses
  %.ph.i = phi i64 [ %i.em, %bb.af ], [ %i.ee, %bb.ae ], [ %i.dm, %bb.z ] ; 2 uses
  store i64 %.sink.i12, ptr %i.bp, align 8
  %i.dp = add i64 %.ph.i, %i.cb                   ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.bv
  br i1 %i.dq, label %bb.y, label %._crit_edge.i

bb.ab:                                            ; preds = %.lr.ph
  %i.dr = add i64 %.sroa.02.0.i10318, 1           ; 2 uses
  %exitcond.not.i11 = icmp eq i64 %i.dr, %umax.i
  br i1 %exitcond.not.i11, label %.preheader45.preheader, label %.lr.ph

.preheader45.preheader:                           ; preds = %bb.ab, %bb.aa
  %i.ds = icmp ult i64 %i.dd, %i.dn
  br i1 %i.ds, label %.lr.ph320, label %.preheader45.preheader._crit_edge

.preheader45:                                     ; preds = %bb.ac
  %i.dt = icmp ult i64 %i.dd, %i.dx
  br i1 %i.dt, label %.lr.ph320, label %.preheader45.preheader._crit_edge

.preheader45.preheader._crit_edge:                ; preds = %.preheader45.preheader, %.preheader45
  %i.du = add i64 %i.df, %i.bz                    ; 2 uses
  store i64 %i.du, ptr %i.ca, align 8
  store i64 0, ptr %i.bp, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.df, ptr %i.dv, align 8, !alias.scope !93
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.du, ptr %i.dw, align 8, !alias.scope !93
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3U9i7nQCKwt_15find_msvc_tools.exit

.lr.ph320:                                        ; preds = %.preheader45.preheader, %.preheader45
  %.sroa.2.0.i319 = phi i64 [ %i.dx, %.preheader45 ], [ %i.dn, %.preheader45.preheader ]
  %i.dx = add i64 %.sroa.2.0.i319, -1             ; 6 uses
  %i.dy = icmp ult i64 %i.dx, %i.bz
  br i1 %i.dy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph320
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.dx
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = getelementptr i8, ptr %i.do, i64 %i.dx
  %i.ec = load i8, ptr %i.eb, align 1
  %.not17.i = icmp eq i8 %i.ea, %i.ec
  br i1 %.not17.i, label %.preheader45, label %bb.ae

end_hunk_0
