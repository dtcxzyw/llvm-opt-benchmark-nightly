Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write18write_all_vectoredCs9fPPV5zPXBl_5typst:bb.a
bb.d:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i
  %i.ak = phi i64 [ %.pre5.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i ], [ %i.z, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i ]
  %i.al = phi i64 [ %i.ah, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i ], [ %i.aa, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i ] ; 2 uses
  %i.am = load ptr, ptr %i.y, align 8, !alias.scope !45806, !noalias !45801, !nonnull !28, !noundef !28
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull readonly align 1 %i.ac, i64 %i.ae, i1 false), !noalias !45807
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9fPPV5zPXBl_5typst.exit.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.d, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %i.z, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i ]
  %i.ap = phi i64 [ %i.al, %bb.d ], [ %i.aa, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i ]
  %i.aq = add i64 %i.ap, %i.ae                    ; 2 uses
  store i64 %i.aq, ptr %i.t, align 8, !alias.scope !45806, !noalias !45801
  %i.ar = icmp eq ptr %i.ab, %i.b
  br i1 %i.ar, label %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write18write_all_vectoredCs9fPPV5zPXBl_5typst.exit, label %bb.c

_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write18write_all_vectoredCs9fPPV5zPXBl_5typst.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs9fPPV5zPXBl_5typst.exit.i.i, %bb.a
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef ptr @_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write5flushCs9fPPV5zPXBl_5typst(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #38 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write5writeCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45816)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !45817, !noalias !45818, !noundef !28 ; 5 uses
  %i.d = load i64, ptr %i.a, align 8, !range !37, !alias.scope !45817, !noalias !45818, !noundef !28
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i, !prof !38

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.c, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef 1, i64 noundef 1), !noalias !45818
  %i.g = load i64, ptr %i.b, align 8, !alias.scope !45819, !noalias !45818, !noundef !28 ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  br label %bb.b

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.a
  %i.i = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.i)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write5writeCs9fPPV5zPXBl_5typst.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i
  %i.j = phi i64 [ %i.g, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i ], [ %i.c, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !45819, !noalias !45818, !nonnull !28, !noundef !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !45819
  br label %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write5writeCs9fPPV5zPXBl_5typst.exit

_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write5writeCs9fPPV5zPXBl_5typst.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %i.c, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i ]
  %i.o = add nuw i64 %i.n, %2
  store i64 %i.o, ptr %i.b, align 8, !alias.scope !45819, !noalias !45818
  %i.p = inttoptr i64 %2 to ptr
  %i.q = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.p, 1
  ret { i64, ptr } %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noalias noundef ptr @_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write9write_allCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45835)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !45836, !noalias !45837, !noundef !28 ; 5 uses
  %i.d = load i64, ptr %i.a, align 8, !range !37, !alias.scope !45836, !noalias !45837, !noundef !28
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i, !prof !38

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.c, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef 1, i64 noundef 1), !noalias !45837
  %i.g = load i64, ptr %i.b, align 8, !alias.scope !45838, !noalias !45837, !noundef !28 ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  br label %bb.b

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i: ; preds = %bb.a
  %i.i = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.i)
  %.not.i.i.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs9fPPV5zPXBl_5typst.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i
  %i.j = phi i64 [ %i.g, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.thread.i.i.i.i ], [ %i.c, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !45838, !noalias !45837, !nonnull !28, !noundef !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !45838
  br label %_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs9fPPV5zPXBl_5typst.exit

_RNvXs7_NtNtCs1xwejQucwHj_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs9fPPV5zPXBl_5typst.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %i.c, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs9fPPV5zPXBl_5typst.exit.i.i.i.i ]
  %i.o = add nuw i64 %i.n, %2
  store i64 %i.o, ptr %i.b, align 8, !alias.scope !45838, !noalias !45837
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtB6_5write5Write9write_fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !28, !align !39, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45847
  store ptr %i.c, ptr %i.b, align 8, !noalias !45847
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.d, align 8, !noalias !45847
  %i.e = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @215, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterINtNtCs1xwejQucwHj_5alloc3vec3VechEEECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #62
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8, !noalias !45847, !noundef !28 ; 5 uses
  %.not.i5.i = icmp eq ptr %i.g, null             ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i5.i, label %bb.i, label %_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst.exit.i, !prof !38

bb.e:                                             ; preds = %bb.c
  br i1 %.not.i5.i, label %_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45848
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = and i64 %i.h, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i.i
    i64 1, label %bb.h
  ], !prof !66

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.j = icmp ult ptr %i.g, inttoptr (i64 188978561024 to ptr)
  %i.k = and i64 %i.h, 1095216660480
  %i.l = icmp ne i64 %i.k, 1095216660480
  call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 %i.l)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.g, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !45849, !noalias !45848
  store i8 3, ptr %i.a, align 8, !alias.scope !45849, !noalias !45848
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n), !noalias !45850
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45848
  br label %_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst.exit.i

bb.i:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @216, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #61
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f

_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i.i, %bb.e, %bb.d
  %.sroa.0.0.i6.i = phi ptr [ %i.g, %bb.d ], [ null, %bb.e ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45847
  ret ptr %.sroa.0.0.i6.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs_NtNtCs89doag9UmMt_9toml_edit6parser5errorNtB4_11CustomErrorNtNtCs3oUPovFnLWP_4core5error5Error11description(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, i64 } { ptr @1200, i64 16 }
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtB6_4mpmc4zero5InnerEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1201, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtB6_4mpmc5waker5WakerEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1201, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardbEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1201, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEENtNtB10_3fmt5Debug3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1201, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector11label_count(ptr noalias nofree nonnull readonly captures(none) %0, i64 range(i64 1, 0) %1) unnamed_addr #31 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector11query_first(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree readonly align 16 captures(none) %2) unnamed_addr #37 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector14page_numbering(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #31 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector14query_labelled(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, i64 } { ptr inttoptr (i64 16 to ptr), i64 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector15page_supplement(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #31 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector18query_count_before(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree readonly align 16 captures(none) %1, i128 %2) unnamed_addr #31 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector4page(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #31 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector4path(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #31 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector5pages(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #31 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector5query(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree readonly align 16 captures(none) %1) unnamed_addr #31 {
bb.a:
  ret { ptr, i64 } { ptr inttoptr (i64 16 to ptr), i64 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector6anchor(ptr noalias nofree nonnull readonly captures(none) %0, i128 %1) unnamed_addr #31 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector7locator(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1, i128 %2, i128 %3) unnamed_addr #37 {
bb.a:
  store i128 0, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector8document(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1, i128 %2) unnamed_addr #37 {
bb.a:
  store i128 0, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector8position(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree nonnull readonly captures(none) %1, i128 %2) unnamed_addr #37 {
bb.a:
  store i64 -2, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCseKXfNLkF2r6_6chrono6format10formattingINtB4_13DelayedFormatNtNtB6_8strftime13StrftimeItemsENtNtCs3oUPovFnLWP_4core3fmt7Display3fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 14 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [4 x i8], align 4                 ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 6 uses
  %i.q = alloca [12 x i8], align 8                ; 8 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [4 x i8], align 1                 ; 8 uses
  %i.u = alloca [4 x i8], align 1                 ; 8 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [4 x i8], align 4                ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [4 x i8], align 4                ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [4 x i8], align 4                ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [4 x i8], align 4                ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [4 x i8], align 4                ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [4 x i8], align 4                ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [4 x i8], align 4                ; 4 uses
  %i.ao = alloca [4 x i8], align 4                ; 7 uses
  %i.ap = alloca [96 x i8], align 8               ; 14 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [8 x i8], align 8                ; 8 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [8 x i8], align 8                ; 8 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [8 x i8], align 8                ; 8 uses
  %i.bc = alloca [24 x i8], align 8               ; 12 uses
  %i.bd = alloca [24 x i8], align 8               ; 10 uses
  %i.be = alloca [32 x i8], align 8               ; 9 uses
  %i.bf = alloca [24 x i8], align 8               ; 169 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i64 0, ptr %i.bf, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 67 uses
end_hunk_0
begin_hunk_1_@_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs9fPPV5zPXBl_5typst:bb.a
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !53821, !noundef !28
  %i.l = or i64 %i.i, %i.k                        ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !53821
  %i.m = icmp ugt i64 %i.f, 1
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !53821, !noundef !28
  %i.p = xor i64 %i.o, %i.l                       ; 3 uses
  %i.q = load i64, ptr %0, align 8, !alias.scope !53822, !noundef !28
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !53822, !noundef !28 ; 3 uses
  %i.t = add i64 %i.s, %i.q                       ; 3 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 13)
  %i.v = xor i64 %i.u, %i.t                       ; 3 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !53822, !noundef !28
  %i.z = add i64 %i.y, %i.p                       ; 2 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 16)
  %i.ab = xor i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = add i64 %i.ab, %i.w                     ; 2 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 21)
  %i.ae = xor i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %i.n, align 8, !alias.scope !53822
  %i.af = add i64 %i.z, %i.v                      ; 3 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 17)
  %i.ah = xor i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !53822
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 32)
  store i64 %i.ai, ptr %i.x, align 8, !alias.scope !53822
  %i.aj = xor i64 %i.ac, %i.l
  store i64 %i.aj, ptr %0, align 8, !alias.scope !53821
  %i.ak = add i64 %i.e, -7
  %i.al = shl nuw nsw i64 %i.f, 3
  %i.am = lshr i64 255, %i.al
  store i64 %i.am, ptr %i.j, align 8, !alias.scope !53821
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8.exit

bb.c:                                             ; preds = %bb.a
  %i.an = add i64 %i.e, 1
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8.exit

_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi i64 [ %i.an, %bb.c ], [ %i.ak, %bb.b ]
  store i64 %.sink.i.i, ptr %i.d, align 8, !alias.scope !53821
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvYNtNtCs89doag9UmMt_9toml_edit2de5ErrorNtNtCs7PiwjADO7TO_10serde_core2de5Error12invalid_typeCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
_RINvXs_NtCs89doag9UmMt_9toml_edit2deNtB5_5ErrorNtNtCs7PiwjADO7TO_10serde_core2de5Error6customNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsECs9fPPV5zPXBl_5typst.exit:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtCs7PiwjADO7TO_10serde_core2deNtB2_10UnexpectedNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRDNtNtCs7PiwjADO7TO_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.01.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.01.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull @1326, ptr noundef nonnull %i.a)
  store i64 0, ptr %0, align 8, !alias.scope !53828, !noalias !53829
  %.sroa.01.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.01.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !53830, !noalias !53829
  %.sroa.01.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !53830, !noalias !53829
  %.sroa.01.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.01.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !53830, !noalias !53829
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !53830, !noalias !53829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvYNtNtCs89doag9UmMt_9toml_edit2de5ErrorNtNtCs7PiwjADO7TO_10serde_core2de5Error13invalid_valueCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
_RINvXs_NtCs89doag9UmMt_9toml_edit2deNtB5_5ErrorNtNtCs7PiwjADO7TO_10serde_core2de5Error6customNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsECs9fPPV5zPXBl_5typst.exit:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtCs7PiwjADO7TO_10serde_core2deNtB2_10UnexpectedNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRDNtNtCs7PiwjADO7TO_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.01.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.01.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull @1327, ptr noundef nonnull %i.a)
  store i64 0, ptr %0, align 8, !alias.scope !53836, !noalias !53837
  %.sroa.01.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.01.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !53838, !noalias !53837
  %.sroa.01.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !53838, !noalias !53837
  %.sroa.01.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.01.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !53838, !noalias !53837
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !53838, !noalias !53837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvYNtNtCs89doag9UmMt_9toml_edit2de5ErrorNtNtCs7PiwjADO7TO_10serde_core2de5Error13missing_fieldCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 4, 11) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
_RINvXs_NtCs89doag9UmMt_9toml_edit2deNtB5_5ErrorNtNtCs7PiwjADO7TO_10serde_core2de5Error6customNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsECs9fPPV5zPXBl_5typst.exit:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.01.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.01.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull @1328, ptr noundef nonnull %i.a)
  store i64 0, ptr %0, align 8, !alias.scope !53844, !noalias !53845
  %.sroa.01.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.01.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !53846, !noalias !53845
  %.sroa.01.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !53846, !noalias !53845
  %.sroa.01.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.01.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !53846, !noalias !53845
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !53846, !noalias !53845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvYNtNtCs89doag9UmMt_9toml_edit2de5ErrorNtNtCs7PiwjADO7TO_10serde_core2de5Error14invalid_lengthCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
_RINvXs_NtCs89doag9UmMt_9toml_edit2deNtB5_5ErrorNtNtCs7PiwjADO7TO_10serde_core2de5Error6customNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsECs9fPPV5zPXBl_5typst.exit:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.c, align 8
  store ptr %2, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %3, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRDNtNtCs7PiwjADO7TO_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.01.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.01.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull @1329, ptr noundef nonnull %i.a)
  store i64 0, ptr %0, align 8, !alias.scope !53852, !noalias !53853
  %.sroa.01.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.01.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !53854, !noalias !53853
  %.sroa.01.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !53854, !noalias !53853
  %.sroa.01.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.01.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !53854, !noalias !53853
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !53854, !noalias !53853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvYNtNtCs89doag9UmMt_9toml_edit2de5ErrorNtNtCs7PiwjADO7TO_10serde_core2de5Error15duplicate_fieldCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 4, 12) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
_RINvXs_NtCs89doag9UmMt_9toml_edit2deNtB5_5ErrorNtNtCs7PiwjADO7TO_10serde_core2de5Error6customNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsECs9fPPV5zPXBl_5typst.exit:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.01.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.01.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull @1330, ptr noundef nonnull %i.a)
  store i64 0, ptr %0, align 8, !alias.scope !53860, !noalias !53861
  %.sroa.01.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %.sroa.01.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !53862, !noalias !53861
  %.sroa.01.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !53862, !noalias !53861
  %.sroa.01.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.01.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !53862, !noalias !53861
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !53862, !noalias !53861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs8SJOCDJuMgL_6semver5parse5ErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, i64 } { ptr @1331, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs8SJOCDJuMgL_6semver5parse5ErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs8SJOCDJuMgL_6semver5parse5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8SJOCDJuMgL_6semver5parse5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #31 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs8SJOCDJuMgL_6semver5parse5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 4 captures(none) %1) unnamed_addr #28 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1332, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtCs9fPPV5zPXBl_5typst4args10OpenOutputNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.0.036 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.116, %bb.n ] ; 4 uses
  %.sroa.6.035 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.114, %bb.n ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = load i32, ptr %0, align 8, !range !77, !alias.scope !53870, !noalias !53871, !noundef !28
  %i.i = trunc nuw i32 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = call { i64, ptr } @_RNvXsb_NtCsaL1QbXo9JQH_3std2fsNtB5_4FileNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.036, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.035)
  br label %_RNvXs1_NtCs9fPPV5zPXBl_5typst4argsNtB5_10OpenOutputNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write.exit

bb.d:                                             ; preds = %bb.b
  %i.k = call { i64, ptr } @_RNvXsi_NtNtCsaL1QbXo9JQH_3std2io5stdioNtB5_10StdoutLockNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.036, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.035)
  br label %_RNvXs1_NtCs9fPPV5zPXBl_5typst4argsNtB5_10OpenOutputNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write.exit

_RNvXs1_NtCs9fPPV5zPXBl_5typst4argsNtB5_10OpenOutputNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi { i64, ptr } [ %i.j, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = extractvalue { i64, ptr } %.pn.i, 0      ; 2 uses
  %i.m = extractvalue { i64, ptr } %.pn.i, 1      ; 13 uses
  store i64 %i.l, ptr %i.b, align 8
  store ptr %i.m, ptr %i.f, align 8
  %i.n = trunc nuw i64 %i.l to i1
  %i.o = ptrtoint ptr %i.m to i64                 ; 8 uses
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_RNvXs1_NtCs9fPPV5zPXBl_5typst4argsNtB5_10OpenOutputNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.p = and i64 %i.o, 3
  switch i64 %i.p, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %.split23
    i64 0, label %.split24
    i64 1, label %.split
  ], !prof !66

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.f
  %i.r = lshr i64 %i.o, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !28, !noundef !28
  %i.v = invoke noundef zeroext i1 %i.u(i32 noundef %i.s)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.o, !inline_history !21

.split23:                                         ; preds = %bb.e
  %i.w = lshr i64 %i.o, 32
  %i.x = icmp ult ptr %i.m, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.w to i8
  %spec.select.i.i.i = select i1 %i.x, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.y = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.z, label %bb.l, label %bb.i

.split24:                                         ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !123, !noundef !28
  %i.ac = icmp eq i8 %i.ab, 35
  br i1 %i.ac, label %.thread.thread, label %bb.i

.split:                                           ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %i.m, i64 31
  %i.ae = load i8, ptr %i.ad, align 8, !range !123, !noundef !28
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %bb.m, label %bb.i

bb.g:                                             ; preds = %_RNvXs1_NtCs9fPPV5zPXBl_5typst4argsNtB5_10OpenOutputNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write.exit
  %i.ag = icmp eq ptr %i.m, null
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp ult i64 %.sroa.6.035, %i.o
  br i1 %i.ah, label %bb.j, label %bb.k, !prof !38

bb.i:                                             ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split23, %.split24, %bb.g
  %.sroa.07.0 = phi ptr [ @1324, %bb.g ], [ %i.m, %.split24 ], [ %i.m, %.split23 ], [ %i.m, %.split ], [ %i.m, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.o, i64 noundef %.sroa.6.035, i64 noundef %.sroa.6.035, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1325) #61
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ai = sub nuw nsw i64 %.sroa.6.035, %i.o
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 %i.o
  br label %bb.n

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.v, label %.thread.thread, label %bb.i

.loopexit:                                        ; preds = %bb.n, %bb.a, %bb.i
  %.sroa.07.1 = phi ptr [ %.sroa.07.0, %bb.i ], [ null, %bb.a ], [ null, %bb.n ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53872
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit

bb.l:                                             ; preds = %.split23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53872
  %i.ak = icmp ult ptr %i.m, inttoptr (i64 188978561024 to ptr)
  %i.al = and i64 %i.o, 1095216660480
  %i.am = icmp ne i64 %i.al, 1095216660480
  call void @llvm.assume(i1 %i.ak)
  call void @llvm.assume(i1 %i.am)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit

bb.m:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53872
  %i.an = getelementptr i8, ptr %i.m, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  store ptr %i.an, ptr %i.g, align 8, !alias.scope !53873, !noalias !53872
  store i8 3, ptr %i.a, align 8, !alias.scope !53873, !noalias !53872
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g), !noalias !53872
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit: ; preds = %.thread.thread, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53872
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit
  %.sroa.0.116 = phi ptr [ %.sroa.0.036, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit ], [ %i.aj, %bb.k ]
  %.sroa.6.114 = phi i64 [ %.sroa.6.035, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit ], [ %i.ai, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = icmp eq i64 %.sroa.6.114, 0
  br i1 %i.ao, label %.loopexit, label %bb.b

bb.o:                                             ; preds = %.noexc, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #62
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %lpad.thr_comm

bb.q:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef ptr @_RNvYNtNtCs9fPPV5zPXBl_5typst8terminal7TermOutNtCs5Lzy0FCneFi_9termcolor10WriteColor13set_hyperlinkB6_(ptr noalias nofree readnone align 8 captures(none) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #31 {
bb.a:
  ret ptr null
}
end_hunk_1
begin_hunk_2_@_RNvYNtNtCs9fPPV5zPXBl_5typst8terminal7TermOutNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allB6_:bb.a
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !28, !noundef !28
  %i.q = invoke noundef zeroext i1 %i.p(i32 noundef %i.n)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.m, !inline_history !21

.split23:                                         ; preds = %bb.c
  %i.r = lshr i64 %i.j, 32
  %i.s = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.r to i8
  %spec.select.i.i.i = select i1 %i.s, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.t = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.u, label %bb.j, label %bb.g

.split24:                                         ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !123, !noundef !28
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %.thread.thread, label %bb.g

.split:                                           ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.h, i64 31
  %i.z = load i8, ptr %i.y, align 8, !range !123, !noundef !28
  %i.aa = icmp eq i8 %i.z, 35
  br i1 %i.aa, label %bb.k, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ab = icmp eq ptr %i.h, null
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp ult i64 %.sroa.6.035, %i.j
  br i1 %i.ac, label %bb.h, label %bb.i, !prof !38

bb.g:                                             ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split23, %.split24, %bb.e
  %.sroa.07.0 = phi ptr [ @1324, %bb.e ], [ %i.h, %.split24 ], [ %i.h, %.split23 ], [ %i.h, %.split ], [ %i.h, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.j, i64 noundef %.sroa.6.035, i64 noundef %.sroa.6.035, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1325) #61
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ad = sub nuw nsw i64 %.sroa.6.035, %i.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 %i.j
  br label %bb.l

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.q, label %.thread.thread, label %bb.g

.loopexit:                                        ; preds = %bb.l, %bb.a, %bb.g
  %.sroa.07.1 = phi ptr [ %.sroa.07.0, %bb.g ], [ null, %bb.a ], [ null, %bb.l ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53917
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit

bb.j:                                             ; preds = %.split23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53917
  %i.af = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %i.ag = and i64 %i.j, 1095216660480
  %i.ah = icmp ne i64 %i.ag, 1095216660480
  call void @llvm.assume(i1 %i.af)
  call void @llvm.assume(i1 %i.ah)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit

bb.k:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53917
  %i.ai = getelementptr i8, ptr %i.h, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  store ptr %i.ai, ptr %i.e, align 8, !alias.scope !53918, !noalias !53917
  store i8 3, ptr %i.a, align 8, !alias.scope !53918, !noalias !53917
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !53917
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit: ; preds = %.thread.thread, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53917
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit
  %.sroa.0.116 = phi ptr [ %.sroa.0.036, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit ], [ %i.ae, %bb.i ]
  %.sroa.6.114 = phi i64 [ %.sroa.6.035, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit ], [ %i.ad, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aj = icmp eq i64 %.sroa.6.114, 0
  br i1 %i.aj, label %.loopexit, label %bb.b

bb.m:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #62
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %lpad.thr_comm

bb.o:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_RNvYNtNtCs9fPPV5zPXBl_5typst8terminal7TermOutNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !53925
  store ptr %0, ptr %i.b, align 8, !noalias !53925
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !noalias !53925
  %i.d = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @219, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtCs9fPPV5zPXBl_5typst8terminal7TermOutEEB1r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #62
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !noalias !53925, !noundef !28 ; 5 uses
  %.not.i5 = icmp eq ptr %i.f, null               ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i5, label %bb.i, label %_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtNtNtCs9fPPV5zPXBl_5typst8terminal7TermOutEBV_.exit, !prof !38

bb.e:                                             ; preds = %bb.c
  br i1 %.not.i5, label %_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtNtNtCs9fPPV5zPXBl_5typst8terminal7TermOutEBV_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53926
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i
    i64 1, label %bb.h
  ], !prof !66

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.i = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  call void @llvm.assume(i1 %i.i)
  call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.f, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !53927, !noalias !53926
  store i8 3, ptr %i.a, align 8, !alias.scope !53927, !noalias !53926
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !53928
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53926
  br label %_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtNtNtCs9fPPV5zPXBl_5typst8terminal7TermOutEBV_.exit

bb.i:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @216, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #61
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtNtNtCs9fPPV5zPXBl_5typst8terminal7TermOutEBV_.exit: ; preds = %bb.d, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i
  %.sroa.0.0.i6 = phi ptr [ %i.f, %bb.d ], [ null, %bb.e ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !53925
  ret ptr %.sroa.0.0.i6
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB4_12SpecWriteFmt14spec_write_fmtCs9fPPV5zPXBl_5typst.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @30, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !53929
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsj1PC5XHMKi0_12clap_builder5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error11descriptionCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, i64 } { ptr @1331, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsj1PC5XHMKi0_12clap_builder5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #40 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53932)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !53932, !nonnull !28, !noundef !28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !noalias !53932, !noundef !28 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvXs2_NtCsj1PC5XHMKi0_12clap_builder5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCs9fPPV5zPXBl_5typst.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !noalias !53932, !nonnull !28, !align !39, !noundef !28
  br label %_RNvXs2_NtCsj1PC5XHMKi0_12clap_builder5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCs9fPPV5zPXBl_5typst.exit

_RNvXs2_NtCsj1PC5XHMKi0_12clap_builder5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCs9fPPV5zPXBl_5typst.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi ptr [ %i.e, %bb.b ], [ undef, %bb.a ]
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsj1PC5XHMKi0_12clap_builder5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #31 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsj1PC5XHMKi0_12clap_builder5error5ErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #28 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1333, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs3oUPovFnLWP_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error11descriptionCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, i64 } { ptr @1331, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs3oUPovFnLWP_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error5causeCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs3oUPovFnLWP_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error6sourceCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs3oUPovFnLWP_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error7provideCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #31 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs3oUPovFnLWP_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error7type_idCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #28 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1334, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, i64 } { ptr @1331, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorNtNtB8_5error5Error5causeCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #31 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #28 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1335, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs3oUPovFnLWP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error11descriptionCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, i64 } { ptr @1331, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs3oUPovFnLWP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error5causeCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs3oUPovFnLWP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error6sourceCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs3oUPovFnLWP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7provideCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #31 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs3oUPovFnLWP_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7type_idCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #28 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1336, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs89doag9UmMt_9toml_edit6parser5error11CustomErrorNtNtCs3oUPovFnLWP_4core5error5Error5causeCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs89doag9UmMt_9toml_edit6parser5error11CustomErrorNtNtCs3oUPovFnLWP_4core5error5Error6sourceCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs89doag9UmMt_9toml_edit6parser5error11CustomErrorNtNtCs3oUPovFnLWP_4core5error5Error7provideCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #31 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs89doag9UmMt_9toml_edit6parser5error11CustomErrorNtNtCs3oUPovFnLWP_4core5error5Error7type_idCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #28 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1337, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.0.036 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.116, %bb.l ] ; 3 uses
  %.sroa.6.035 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.114, %bb.l ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = call { i64, ptr } @_RNvXs3_NtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unixNtB5_6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.036, i64 noundef %.sroa.6.035) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 13 uses
  store i64 %i.g, ptr %i.b, align 8
  store ptr %i.h, ptr %i.d, align 8
  %i.i = trunc nuw i64 %i.g to i1
  %i.j = ptrtoint ptr %i.h to i64                 ; 8 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split23
    i64 0, label %.split24
    i64 1, label %.split
  ], !prof !66

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  %i.m = lshr i64 %i.j, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !28, !noundef !28
  %i.q = invoke noundef zeroext i1 %i.p(i32 noundef %i.n)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.m, !inline_history !21

.split23:                                         ; preds = %bb.c
  %i.r = lshr i64 %i.j, 32
  %i.s = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.r to i8
  %spec.select.i.i.i = select i1 %i.s, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.t = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.u, label %bb.j, label %bb.g

.split24:                                         ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !123, !noundef !28
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %.thread.thread, label %bb.g

.split:                                           ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.h, i64 31
  %i.z = load i8, ptr %i.y, align 8, !range !123, !noundef !28
  %i.aa = icmp eq i8 %i.z, 35
  br i1 %i.aa, label %bb.k, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ab = icmp eq ptr %i.h, null
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp ult i64 %.sroa.6.035, %i.j
  br i1 %i.ac, label %bb.h, label %bb.i, !prof !38

bb.g:                                             ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split23, %.split24, %bb.e
  %.sroa.07.0 = phi ptr [ @1324, %bb.e ], [ %i.h, %.split24 ], [ %i.h, %.split23 ], [ %i.h, %.split ], [ %i.h, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.j, i64 noundef %.sroa.6.035, i64 noundef %.sroa.6.035, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1325) #61
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ad = sub nuw nsw i64 %.sroa.6.035, %i.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 %i.j
  br label %bb.l

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.q, label %.thread.thread, label %bb.g

.loopexit:                                        ; preds = %bb.l, %bb.a, %bb.g
  %.sroa.07.1 = phi ptr [ %.sroa.07.0, %bb.g ], [ null, %bb.a ], [ null, %bb.l ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53937
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit

bb.j:                                             ; preds = %.split23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53937
  %i.af = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %i.ag = and i64 %i.j, 1095216660480
  %i.ah = icmp ne i64 %i.ag, 1095216660480
  call void @llvm.assume(i1 %i.af)
  call void @llvm.assume(i1 %i.ah)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit

bb.k:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53937
  %i.ai = getelementptr i8, ptr %i.h, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  store ptr %i.ai, ptr %i.e, align 8, !alias.scope !53938, !noalias !53937
  store i8 3, ptr %i.a, align 8, !alias.scope !53938, !noalias !53937
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !53937
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit: ; preds = %.thread.thread, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53937
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit
  %.sroa.0.116 = phi ptr [ %.sroa.0.036, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit ], [ %i.ae, %bb.i ]
  %.sroa.6.114 = phi i64 [ %.sroa.6.035, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit ], [ %i.ad, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aj = icmp eq i64 %.sroa.6.114, 0
  br i1 %i.aj, label %.loopexit, label %bb.b

bb.m:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #62
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %lpad.thr_comm

bb.o:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCs9fPPV5zPXBl_5typst:bb.a
bb.d:                                             ; preds = %bb.c
  br i1 %.not.i5, label %bb.i, label %_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrECs9fPPV5zPXBl_5typst.exit, !prof !38

bb.e:                                             ; preds = %bb.c
  br i1 %.not.i5, label %_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrECs9fPPV5zPXBl_5typst.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53946
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i
    i64 1, label %bb.h
  ], !prof !66

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.i = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  call void @llvm.assume(i1 %i.i)
  call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.f, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !53947, !noalias !53946
  store i8 3, ptr %i.a, align 8, !alias.scope !53947, !noalias !53946
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !53948
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53946
  br label %_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrECs9fPPV5zPXBl_5typst.exit

bb.i:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @216, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #61
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.d, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i
  %.sroa.0.0.i6 = phi ptr [ %i.f, %bb.d ], [ null, %bb.e ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !53945
  ret ptr %.sroa.0.0.i6
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher10write_i128Cs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i128 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53951
  store i128 %1, ptr %i.a, align 16, !noalias !53951
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53951
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher10write_u128Cs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i128 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i128 %1, ptr %i.a, align 16
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher8write_i8Cs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i8 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53954
  store i8 %1, ptr %i.a, align 1, !noalias !53954
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53954
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8Cs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i8 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %1, ptr %i.a, align 1
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_i16Cs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i16 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53957
  store i16 %1, ptr %i.a, align 2, !noalias !53957
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53957
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_i32Cs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53960
  store i32 %1, ptr %i.a, align 4, !noalias !53960
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53960
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_i64Cs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53963
  store i64 %1, ptr %i.a, align 8, !noalias !53963
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53963
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53966
  store i8 -1, ptr %i.a, align 1, !noalias !53966
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53966
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u16Cs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i16 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %1, ptr %i.a, align 2
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32Cs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64Cs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(72) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, i64 } { ptr @1331, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #31 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCs9fPPV5zPXBl_5typst(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #31 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtBc_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCs9fPPV5zPXBl_5typst(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #28 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1338, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #41

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvCs2AodJlUx5rK_5typst22warn_or_error_for_html(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(96)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #41

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #42

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvCs2AodJlUx5rK_5typst24warn_or_error_for_bundle(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(96)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #41

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs5cbCQMMIObr_10typst_eval4eval(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noundef nonnull align 16, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations6moduleNtB2_6Module7content(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #43

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector12query_unique(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library13introspection12introspectorNtB4_17EmptyIntrospectorNtB4_12Introspector11query_label(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink3new(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXCsgpMJJHpo27b_12typst_bundleNtB2_6BundleNtNtNtCsdaEETE4DqmE_13typst_library11foundations7target_6Output6create(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(200), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence7analyze(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink16extend_from_sink(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink4warn(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #44

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs7tN9tvpkfrg_12typst_layout8documentNtB5_13PagedDocumentNtNtNtCsdaEETE4DqmE_13typst_library11foundations7target_6Output6create(ptr dead_on_unwind noalias nofree noundef writable sret([144 x i8]) align 8 captures(address) dereferenceable(144), ptr noalias nofree noundef align 8 dereferenceable(200), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs9gmjTwvRRSu_10typst_html3domNtB5_12HtmlDocumentNtNtNtCsdaEETE4DqmE_13typst_library11foundations7target_6Output6create(ptr dead_on_unwind noalias nofree noundef writable sret([152 x i8]) align 8 captures(address) dereferenceable(152), ptr noalias nofree noundef align 8 dereferenceable(200), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvCs2AodJlUx5rK_5typst11deduplicate(ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs0_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink8warnings(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #45

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_Cs8P8NHUiFzuE_4openNtNtCsaL1QbXo9JQH_3std7process7CommandNtB4_10CommandExt14spawn_detached(ptr noalias nofree noundef align 8 dereferenceable(200)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtCsg5ZWEykmiUC_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvMs0_CsiNFdexS2GJ6_12typst_timingNtB5_9Timestamp12micros_since(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path11is_absolute(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path10components(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsi_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #46

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #45

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCsazW1U07H1KN_15crossbeam_epoch8internalNtB5_5Local5defer(ptr noundef nonnull align 128, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB4_8DiagSpan3get(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef range(i64 1, 0), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs5PEMdK7bMAG_12typst_syntax6sourceNtB2_6Source5range(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsdaEETE4DqmE_13typst_library4text4font4bookNtB2_8FontBook4push(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs2_NtCsc4241EHy6Do_9typst_kit5fontsNtB5_8FontPathNtB5_10FontSource4load(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #47

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMsk_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impj4__fmt(i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsZ7O2w1b9D3_6notify7inotifyNtB5_14INotifyWatcherNtB7_7Watcher5watch(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs89doag9UmMt_9toml_edit6parser5stateNtB2_10ParseState14finalize_table(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(400)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #48

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsc4241EHy6Do_9typst_kit11diagnosticsNtB4_10WorldFilesNtNtCscf0te1RqI9v_18codespan_reporting5files5Files10line_index(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), i16 noundef range(i16 1, 0), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsc4241EHy6Do_9typst_kit11diagnosticsNtB4_10WorldFilesNtNtCscf0te1RqI9v_18codespan_reporting5files5Files10line_range(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), i16 noundef range(i16 1, 0), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsc4241EHy6Do_9typst_kit11diagnosticsNtB4_10WorldFilesNtNtCscf0te1RqI9v_18codespan_reporting5files5Files4name(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), i16 noundef range(i16 1, 0)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #49

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCscf0te1RqI9v_18codespan_reporting4term8rendererNtB2_8Renderer13render_header(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40), i8 noundef range(i8 0, 5), ptr noalias nofree noundef readonly captures(address, read_provenance), i64, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsc4241EHy6Do_9typst_kit11diagnosticsNtB4_10WorldFilesNtNtCscf0te1RqI9v_18codespan_reporting5files5Files6source(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), i16 noundef range(i16 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCscf0te1RqI9v_18codespan_reporting4term8rendererNtB2_8Renderer20render_snippet_start(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCscf0te1RqI9v_18codespan_reporting4term8rendererNtB2_8Renderer20render_snippet_empty(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i8 noundef range(i8 0, 5), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 192153584101141163)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #45

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCscf0te1RqI9v_18codespan_reporting4term8rendererNtB2_8Renderer21render_snippet_source(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i8 noundef range(i8 0, 5), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 230584300921369396), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 192153584101141163)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCscf0te1RqI9v_18codespan_reporting4term8rendererNtB2_8Renderer20render_snippet_break(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i8 noundef range(i8 0, 5), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 192153584101141163)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCscf0te1RqI9v_18codespan_reporting4term8rendererNtB2_8Renderer19render_snippet_note(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

end_hunk_3
