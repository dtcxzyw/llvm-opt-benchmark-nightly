Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.06?download=true
inline.NumInlined: 2312
inline.NumDeleted: 936
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 35
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtNtCs1xwejQucwHj_5alloc2io4read16default_read_bufNCNvYNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileNtB2_4Read8read_buf0EBZ_:bb.a
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 2 uses
  %i.t = trunc nuw i64 %i.r to i1
  br i1 %i.t, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_RNvMs8_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs8frGy5WneL6_4fish.exit
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = load i8, ptr %i.a, align 8, !range !19, !noalias !1614, !noundef !10
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.m, align 8, !noalias !1614, !noundef !10
  %i.y = load i64, ptr %i.k, align 8, !noalias !1614, !noundef !10
  %i.z = sub i64 %i.x, %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.z, %bb.d ], [ 0, %bb.c ]
  %.not.i = icmp ult i64 %.sroa.0.0.i, %i.u
  br i1 %.not.i, label %bb.f, label %_RNvMs7_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs8frGy5WneL6_4fish.exit, !prof !27

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @236, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #40, !noalias !1614
  unreachable

_RNvMs7_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs8frGy5WneL6_4fish.exit: ; preds = %bb.e
  %i.aa = load i64, ptr %i.k, align 8, !noalias !1614, !noundef !10
  %i.ab = add i64 %i.aa, %i.u
  store i64 %i.ab, ptr %i.k, align 8, !noalias !1614
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs8_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs8frGy5WneL6_4fish.exit, %_RNvMs7_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs8frGy5WneL6_4fish.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvMs7_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCs8frGy5WneL6_4fish.exit ], [ %i.s, %_RNvMs8_NtNtCs3oUPovFnLWP_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCs8frGy5WneL6_4fish.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtNtCs1xwejQucwHj_5alloc2io4read18default_read_exactRNtNtCsaL1QbXo9JQH_3std2fs4FileECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.val12 = load ptr, ptr %0, align 8, !nonnull !10, !align !28, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.042 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.121, %bb.k ] ; 3 uses
  %.sroa.7.041 = phi i64 [ %2, %.lr.ph ], [ %.sroa.7.119, %bb.k ] ; 6 uses
  %i.d = call { i64, ptr } @_RNvMsi_NtNtNtCsaL1QbXo9JQH_3std3sys2fs4unixNtB5_4File4read(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %.val12, ptr noalias nofree noundef nonnull %.sroa.0.042, i64 noundef range(i64 1, -9223372036854775808) %.sroa.7.041) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 13 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 8 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.i = and i64 %i.g, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split28
    i64 0, label %.split29
    i64 1, label %.split
  ], !prof !13

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.k = lshr i64 %i.g, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !10, !noundef !10
  %i.o = invoke noundef zeroext i1 %i.n(i32 noundef %i.l)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.l, !inline_history !4

.split28:                                         ; preds = %bb.c
  %i.p = lshr i64 %i.g, 32
  %i.q = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.p to i8
  %spec.select.i.i.i = select i1 %i.q, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.r = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.s, label %bb.i, label %._crit_edge

.split29:                                         ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !14, !noundef !10
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %.thread.thread, label %._crit_edge

.split:                                           ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.f, i64 31
  %i.x = load i8, ptr %i.w, align 8, !range !14, !noundef !10
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.j, label %._crit_edge

bb.e:                                             ; preds = %bb.b
  %i.z = icmp eq ptr %i.f, null
  br i1 %i.z, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp ult i64 %.sroa.7.041, %i.g
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !27

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %.sroa.7.041, i64 noundef %.sroa.7.041, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #42
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = sub nuw nsw i64 %.sroa.7.041, %i.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.042, i64 %i.g
  br label %bb.k

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.o, label %.thread.thread, label %._crit_edge

._crit_edge:                                      ; preds = %.split29, %.split28, %.split, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.e, %bb.k, %bb.a
  %.sroa.09.0 = phi ptr [ null, %bb.a ], [ @33, %bb.e ], [ %i.f, %.split28 ], [ %i.f, %.split ], [ %i.f, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ null, %bb.k ], [ %i.f, %.split29 ]
  ret ptr %.sroa.09.0

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit

bb.i:                                             ; preds = %.split28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.ae = and i64 %i.g, 1095216660480
  %i.af = icmp ne i64 %i.ae, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.af)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit

bb.j:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr i8, ptr %i.f, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  store ptr %i.ag, ptr %i.c, align 8, !alias.scope !1617
  store i8 3, ptr %i.a, align 8, !alias.scope !1617
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit: ; preds = %.thread.thread, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit
  %.sroa.0.121 = phi ptr [ %.sroa.0.042, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit ], [ %i.ac, %bb.h ]
  %.sroa.7.119 = phi i64 [ %.sroa.7.041, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.7.119, 0
  br i1 %i.ah, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr nonnull %i.f) #37
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.n:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !10 ; 8 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %1, align 8, !range !15, !noundef !10 ; 3 uses
  %i.g = trunc nuw i64 %2 to i1                   ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %3, -1025
  br i1 %i.h, label %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Cs8frGy5WneL6_4fish.exit.thread, label %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Cs8frGy5WneL6_4fish.exit, !prof !27

_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  %i.i = add nuw i64 %3, 1024                     ; 3 uses
  %i.j = and i64 %i.i, 8191                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = sub i64 %3, %i.j
  %i.m = add i64 %i.l, 9216                       ; 2 uses
  %.not85 = icmp ult i64 %i.m, %i.i
  %.sroa.5.1.i = select i1 %.not85, i64 8192, i64 %i.m
  %.sroa.053.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i ; 2 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Cs8frGy5WneL6_4fish.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Cs8frGy5WneL6_4fish.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Cs8frGy5WneL6_4fish.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d
  %i.p = icmp ult i64 %i.o, 32
  br i1 %i.p, label %bb.d, label %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Cs8frGy5WneL6_4fish.exit.thread

_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Cs8frGy5WneL6_4fish.exit.thread: ; preds = %._RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Cs8frGy5WneL6_4fish.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Cs8frGy5WneL6_4fish.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Cs8frGy5WneL6_4fish.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Cs8frGy5WneL6_4fish.exit ], [ %i.d, %bb.b ]
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Cs8frGy5WneL6_4fish.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Cs8frGy5WneL6_4fish.exit ], [ 8192, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc { i64, ptr } @_RINvNvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.x to i64
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.x, null
  br i1 %i.aa, label %.loopexit, label %._RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Cs8frGy5WneL6_4fish.exit.thread_crit_edge

._RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Cs8frGy5WneL6_4fish.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.c, align 8
  br label %_RNCINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEE0Cs8frGy5WneL6_4fish.exit.thread

._crit_edge:                                      ; preds = %bb.ad, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.co, %bb.ad ]
  %.lcssa88 = phi i64 [ %i.cb, %.outer ], [ %i.co, %bb.ad ] ; 2 uses
  %.lcssa = phi i1 [ %i.ce, %.outer ], [ %i.ct, %bb.ad ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.outer, %bb.ad
  %i.ab = call fastcc { i64, ptr } @_RINvNvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = extractvalue { i64, ptr } %i.ab, 1      ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1
  br i1 %i.ae, label %bb.aa, label %bb.ab

bb.g:                                             ; preds = %bb.i, %._crit_edge
  %i.af = phi i64 [ %i.an, %bb.i ], [ %.lcssa88, %._crit_edge ] ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.an, %bb.i ], [ %.sroa.027.2.lcssa, %._crit_edge ] ; 4 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw i64 %i.af, 32
  %i.ai = icmp ugt i64 %.sroa.027.3, %i.ah
  %i.aj = load ptr, ptr %i.q, align 8, !nonnull !10, !noundef !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.af ; 3 uses
  br i1 %i.ai, label %bb.j, label %.thread

bb.h:                                             ; preds = %._crit_edge
  %i.al = call { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.lcssa88, i64 noundef 32, i64 noundef 1, i64 noundef 1)
  %i.am = extractvalue { i64, i64 } %i.al, 0
  %.not = icmp eq i64 %i.am, -1
  br i1 %.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.c, align 8, !noundef !10 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1
  call void @llvm.assume(i1 %i.ao)
  br label %bb.g

.thread:                                          ; preds = %bb.g
  %i.ap = load i64, ptr %1, align 8, !range !15, !noundef !10
  %i.aq = sub nsw i64 %i.ap, %i.af
  %..i = call noundef i64 @llvm.umin.i64(i64 range(i64 -9223372036854775807, -9223372036854775808) %i.aq, i64 %.sroa.053.3.ph)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ar = sub nuw i64 %.sroa.027.3, %i.af         ; 3 uses
  %.pre153 = load i64, ptr %1, align 8, !range !15
  %.pre156 = sub nsw i64 %.pre153, %i.af          ; 2 uses
  %.not60 = icmp ugt i64 %i.ar, %.pre156
  br i1 %.not60, label %bb.l, label %bb.k, !prof !1620

bb.k:                                             ; preds = %.thread, %bb.j
  %.sroa.034.0164 = phi i64 [ %..i, %.thread ], [ %i.ar, %bb.j ] ; 3 uses
  %i.as = add i64 %.sroa.034.0164, %i.af
  %.not59 = icmp uge i64 %.sroa.027.3, %i.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ak, ptr %i.b, align 8
  store i64 %.sroa.034.0164, ptr %i.r, align 8
  store i64 0, ptr %i.s, align 8
  %spec.select = zext i1 %.not59 to i8
  store i8 %spec.select, ptr %i.t, align 8
  %i.at = call noundef ptr @_RNvXs3_NtNtCs1xwejQucwHj_5alloc2io4utilINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB7_4read4Read8read_bufCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.b) ; 2 uses
  %.not61118 = icmp eq ptr %i.at, null
  br i1 %.not61118, label %.split81._crit_edge, label %.lr.ph121

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ar, i64 noundef %.pre156, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #40
  unreachable

.lr.ph121:                                        ; preds = %bb.k, %bb.p
  %i.au = phi ptr [ %i.bx, %bb.p ], [ %i.at, %bb.k ] ; 10 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 4 uses
  %i.aw = and i64 %i.av, 3
  switch i64 %i.aw, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %.split80
    i64 0, label %.split81
    i64 1, label %.split
  ], !prof !13

default.unreachable:                              ; preds = %.lr.ph121
  unreachable

bb.m:                                             ; preds = %.lr.ph121
  %i.ax = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.m
  %i.ay = lshr i64 %i.av, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !10, !noundef !10
  %i.bc = invoke noundef zeroext i1 %i.bb(i32 noundef %i.az)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.r, !inline_history !4

.split80:                                         ; preds = %.lr.ph121
  %i.bd = lshr i64 %i.av, 32
  %i.be = icmp ult ptr %i.au, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.bd to i8
  %spec.select.i.i.i = select i1 %i.be, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.bf = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.bg, label %bb.n, label %.split81._crit_edge.loopexit

.split81:                                         ; preds = %.lr.ph121
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bi = load i8, ptr %i.bh, align 8, !range !14, !noundef !10
  %i.bj = icmp eq i8 %i.bi, 35
  br i1 %i.bj, label %.thread83, label %.split81._crit_edge.loopexit

.split:                                           ; preds = %.lr.ph121
  %i.bk = getelementptr i8, ptr %i.au, i64 31
  %i.bl = load i8, ptr %i.bk, align 8, !range !14, !noundef !10
  %i.bm = icmp eq i8 %i.bl, 35
  br i1 %i.bm, label %bb.o, label %.split81._crit_edge.loopexit

.split81._crit_edge.loopexit:                     ; preds = %.split81, %.split80, %.split, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.p
  %.lcssa100.ph = phi ptr [ null, %bb.p ], [ %i.au, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.au, %.split ], [ %i.au, %.split80 ], [ %i.au, %.split81 ]
  %.not61.lcssa.ph = phi i1 [ true, %bb.p ], [ false, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ false, %.split ], [ false, %.split80 ], [ false, %.split81 ]
  %i.bn = ptrtoint ptr %.lcssa100.ph to i64
  br label %.split81._crit_edge

.split81._crit_edge:                              ; preds = %.split81._crit_edge.loopexit, %bb.k
  %.lcssa100 = phi i64 [ 0, %bb.k ], [ %i.bn, %.split81._crit_edge.loopexit ]
  %.not61.lcssa = phi i1 [ true, %bb.k ], [ %.not61.lcssa.ph, %.split81._crit_edge.loopexit ]
  %i.bo = load i64, ptr %i.s, align 8, !noundef !10 ; 3 uses
  %i.bp = load i8, ptr %i.t, align 8, !range !19, !noundef !10
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %.pre154 = load i64, ptr %i.c, align 8          ; 3 uses
  %i.br = add i64 %.pre154, %.sroa.034.0164
  %spec.select178 = select i1 %i.bq, i64 %i.br, i64 %.sroa.027.3
  %i.bs = icmp sgt i64 %.pre154, -1
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add i64 %.pre154, %i.bo                 ; 3 uses
  store i64 %i.bt, ptr %i.c, align 8
  br i1 %.not61.lcssa, label %bb.t, label %.loopexit165

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.bc, label %.thread83, label %.split81._crit_edge.loopexit

.thread83:                                        ; preds = %.split81, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.p

bb.n:                                             ; preds = %.split80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bu = and i64 %i.av, 1095216660480
  %i.bv = icmp ne i64 %i.bu, 1095216660480
  call void @llvm.assume(i1 %i.be)
  call void @llvm.assume(i1 %i.bv)
  br label %bb.p

bb.o:                                             ; preds = %.split
  %i.bw = getelementptr i8, ptr %i.au, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  store ptr %i.bw, ptr %i.u, align 8, !alias.scope !1621
  store i8 3, ptr %i.a, align 8, !alias.scope !1621
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.thread83
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCs8frGy5WneL6_4fish5eventNtB5_5Event14variable_erase:bb.a

bb.j:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String8from_streECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @144, i64 noundef 5)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #37
          to label %bb.h unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  store i64 3, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.m:                                             ; preds = %bb.k, %bb.f, %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.n:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCs8frGy5WneL6_4fish5eventNtB5_5Event8job_exit(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i32 noundef range(i32 1, 0) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %2, ptr %i.k, align 8
  store i32 4, ptr %i.h, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.l = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 72, i64 noundef range(i64 1, 9) 8) #41 ; 6 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !prof !22

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #42
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.e, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.e ], [ %i.n, %bb.d ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish5event16EventDescriptionEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #37
          to label %bb.r unwind label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String8from_streECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 8)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.o, %bb.f ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 72, i64 noundef 8) #41
  br label %bb.c

bb.f:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2871
  store i64 0, ptr %i.c, align 8, !noalias !2871
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2871
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2871
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.p, align 8, !noalias !2871
  store ptr %i.c, ptr %i.b, align 8, !noalias !2871
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @372, ptr %i.q, align 8, !noalias !2871
  %i.r = invoke noundef zeroext i1 @_RNvXs2_NtCs8frGy5WneL6_4fish4procNtB5_3PidNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.i unwind label %bb.h, !noalias !2872

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #37
          to label %.body unwind label %bb.k, !noalias !2872

bb.i:                                             ; preds = %bb.g
  br i1 %i.r, label %bb.j, label %bb.m, !prof !27

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @541, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @543) #40
          to label %.noexc.i unwind label %bb.h, !noalias !2872

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !2872
  unreachable

.body:                                            ; preds = %bb.l, %bb.h, %bb.o
  %.pn = phi { ptr, i32 } [ %i.v, %bb.o ], [ %i.u, %bb.l ], [ %i.s, %bb.h ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #37
          to label %bb.e unwind label %bb.q

bb.l:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2871
  invoke fastcc void @_RNvXs2a_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCs1xwejQucwHj_5alloc6string6StringE4from(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String8from_streECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @140, i64 noundef 1)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #37
          to label %.body unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  store i64 3, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.q:                                             ; preds = %bb.o, %.body, %bb.c
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.r:                                             ; preds = %bb.c
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState13emit_gap_text(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [20 x i8], align 4                ; 5 uses
  %i.e = alloca [20 x i8], align 4                ; 9 uses
  %i.f = alloca [64 x i8], align 8                ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !10, !align !28, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.j = load i64, ptr %i.i, align 8, !noundef !10
  %i.k = tail call noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange5start(i32 noundef %1, i32 noundef %2) ; 4 uses
  %i.l = tail call noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange3end(i32 noundef %1, i32 noundef %2) ; 5 uses
  %i.m = icmp ult i64 %i.l, %i.k
  br i1 %i.m, label %bb.f, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.n = sub nuw i64 %i.l, %i.k                   ; 3 uses
  %.not = icmp ugt i64 %i.l, %i.j
  br i1 %.not, label %bb.f, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.k ; 4 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.l
  %.not12.not.not.i.not2 = icmp samesign eq i64 %i.k, %i.l
  br i1 %.not12.not.not.i.not2, label %.loopexit, label %.lr.ph4

bb.d:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %.not12.not.not.i.not = icmp eq ptr %i.q, %i.p
  br i1 %.not12.not.not.i.not, label %.loopexit, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %i.q, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !noalias !2925, !noundef !10 ; 4 uses
  %i.t = xor i32 %i.s, 55296
  %i.u = add i32 %i.t, -1114112
  %i.v = icmp ult i32 %i.u, -1112064
  br i1 %i.v, label %.split.i.i, label %bb.e

.split.i.i:                                       ; preds = %.lr.ph4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2926
  store i32 %i.s, ptr %i.c, align 4, !noalias !2926
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #40, !noalias !2925
  unreachable

bb.e:                                             ; preds = %.lr.ph4
  %i.w = icmp ult i32 %i.s, 1114112
  tail call void @llvm.assume(i1 %i.w)
  %.not.i = icmp eq i32 %i.s, 32
  br i1 %.not.i, label %bb.d, label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #40
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = tail call { i64, i64 } @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findRB3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.o, i64 noundef %i.n, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @146, i64 noundef 2) ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %bb.h, label %bb.w

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.al
  %.sroa.0.0 = phi i1 [ %.sroa.0.1.lcssa69, %bb.al ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.sroa.0.0

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call { i64, i64 } @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt4findRB3_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.o, i64 noundef %i.n, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @147, i64 noundef 1) ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 1
  %i.ad = extractvalue { i64, i64 } %i.ab, 0
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = icmp ult i64 %i.z, %i.ac
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  %or.cond18 = select i1 %3, i1 true, i1 %or.cond
  br i1 %or.cond18, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %.val23 = load i64, ptr %i.ag, align 8, !noundef !10 ; 2 uses
  %i.ah = icmp eq i64 %.val23, 0
  br i1 %i.ah, label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.val22 = load ptr, ptr %i.ai, align 8, !nonnull !10, !noundef !10
  %.idx.i = shl nuw nsw i64 %.val23, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %.val22, i64 %.idx.i
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !noalias !2927, !noundef !10 ; 4 uses
  %i.am = xor i32 %i.al, 55296
  %i.an = add i32 %i.am, -1114112
  %i.ao = icmp ult i32 %i.an, -1112064
  br i1 %i.ao, label %.split.i.i25, label %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState13at_line_start.exit

.split.i.i25:                                     ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2928
  store i32 %i.al, ptr %i.b, align 4, !noalias !2928
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @524) #40, !noalias !2927
  unreachable

_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState13at_line_start.exit: ; preds = %bb.j
  %i.ap = icmp ult i32 %i.al, 1114112
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i32 %i.al, 10
  br i1 %i.aq, label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit, label %bb.k

bb.k:                                             ; preds = %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState13at_line_start.exit
  %i.ar = tail call fastcc noundef zeroext i1 @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState19has_preceding_space(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %0)
  br i1 %i.ar, label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as, i64 noundef 1)
  %i.at = load i64, ptr %i.ag, align 8, !alias.scope !2929, !noundef !10 ; 3 uses
  %i.au = load i64, ptr %i.as, align 8, !range !15, !alias.scope !2929, !noundef !10
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %bb.m, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as) #39
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.aw = load ptr, ptr %i.ai, align 8, !alias.scope !2929, !nonnull !10, !noundef !10
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.at
  store i32 32, ptr %i.ax, align 4
  %i.ay = add i64 %i.at, 1
  store i64 %i.ay, ptr %i.ag, align 8, !alias.scope !2929
  br label %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit

_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i, %bb.i, %bb.k, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState13at_line_start.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az, i64 noundef 1)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bb = load i64, ptr %i.ag, align 8, !alias.scope !2930, !noundef !10 ; 4 uses
  %i.bc = load i64, ptr %i.az, align 8, !range !15, !alias.scope !2930, !noundef !10
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.n, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i30

bb.n:                                             ; preds = %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az) #39
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i30

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i30: ; preds = %bb.n, %_RINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendNtNtNtB1a_3str4iter5CharsECs8frGy5WneL6_4fish.exit
  %i.be = load ptr, ptr %i.ba, align 8, !alias.scope !2930, !nonnull !10, !noundef !10
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bb
  store i32 92, ptr %i.bf, align 4
  %i.bg = add i64 %i.bb, 1                        ; 3 uses
  store i64 %i.bg, ptr %i.ag, align 8, !alias.scope !2930
  %i.bh = load i64, ptr %i.az, align 8, !range !15, !alias.scope !2930, !noundef !10
  %i.bi = icmp eq i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.o, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i30.1

bb.o:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i30
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az) #39
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i30.1

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i30.1: ; preds = %bb.o, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i30
  %i.bj = load ptr, ptr %i.ba, align 8, !alias.scope !2930, !nonnull !10, !noundef !10
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bg
  store i32 10, ptr %i.bk, align 4
  %i.bl = add i64 %i.bb, 2
  store i64 %i.bl, ptr %i.ag, align 8, !alias.scope !2930
  %i.bm = tail call noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange5start(i32 noundef %1, i32 noundef %2) ; 2 uses
  %i.bn = add i64 %i.bm, %i.z                     ; 3 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  br i1 %i.bo, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i30.1
  %i.bp = icmp eq i64 %i.bn, -1
  br i1 %i.bp, label %bb.v, label %bb.r

bb.q:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i30.1
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #40
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bq = add nuw i64 %i.bn, 1                    ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val21 = load i64, ptr %i.br, align 8, !noundef !10 ; 2 uses
  %i.bs = icmp ult i64 %i.bq, %.val21
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val20 = load ptr, ptr %i.bt, align 8, !nonnull !10, !noundef !10
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.val20, i64 %i.bq
  %i.bv = load i32, ptr %i.bu, align 4, !noundef !10 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState6indent.exit, label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.bq, i64 noundef %.val21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #40
  unreachable

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2931
  store i8 3, ptr %i.a, align 1, !noalias !2931
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #40, !noalias !2932
  unreachable

_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState6indent.exit: ; preds = %bb.s
  %i.bx = zext nneg i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.bx, ptr %i.by, align 8
  tail call fastcc void @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState20emit_space_or_indent(ptr noalias nofree noundef align 8 dereferenceable(184) %0, i1 noundef zeroext false)
  br label %bb.w

bb.v:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #40
  unreachable

bb.w:                                             ; preds = %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState6indent.exit, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 0, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.o, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.n, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 0, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i8 1, ptr %i.ce, align 8
  store <4 x i8> <i8 1, i8 0, i8 1, i8 1>, ptr %i.cc, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store i8 0, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 61
  store i8 0, ptr %i.cg, align 1
  store ptr null, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs5_NtCs8frGy5WneL6_4fish9tokenizerNtB5_9TokenizerNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 18 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 2, !range !25, !noundef !10
  %.not1457 = icmp eq i8 %i.ci, 2
  br i1 %.not1457, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.al

.lr.ph:                                           ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 17 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.158 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0.1.be, %.backedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.d, ptr noundef nonnull align 4 dereferenceable(20) %i.e, i64 20, i1 false)
  %i.co = call { ptr, i64 } @_RNvMs6_NtCs8frGy5WneL6_4fish9tokenizerNtB5_9Tokenizer7text_of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.d) ; 2 uses
  %i.cp = extractvalue { ptr, i64 } %i.co, 0      ; 6 uses
  %i.cq = extractvalue { ptr, i64 } %i.co, 1      ; 10 uses
  %i.cr = trunc nuw i8 %.sroa.0.158 to i1
  br i1 %i.cr, label %bb.z, label %bb.y

._crit_edge:                                      ; preds = %.backedge
  %i.cs = trunc nuw i8 %.sroa.0.1.be to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.cs, label %bb.am, label %bb.al

bb.y:                                             ; preds = %bb.x
  %i.ct = load i8, ptr %i.cj, align 8, !range !19, !noundef !10
  %i.cu = trunc nuw i8 %i.ct to i1
  %.pre60 = load i8, ptr %i.ck, align 1, !range !2933 ; 3 uses
  br i1 %i.cu, label %bb.ab, label %bb.ad

bb.z:                                             ; preds = %bb.x
  %i.cv = load i64, ptr %i.cm, align 8, !alias.scope !2934, !noundef !10 ; 3 uses
  %i.cw = load i64, ptr %i.cl, align 8, !range !15, !alias.scope !2934, !noundef !10
  %i.cx = icmp eq i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.aa, label %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl) #39
  br label %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit

_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit: ; preds = %bb.z, %bb.aa
  %i.cy = load ptr, ptr %i.cn, align 8, !alias.scope !2934, !nonnull !10, !noundef !10
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cv
  store i32 10, ptr %i.cz, align 4
  %i.da = add i64 %i.cv, 1
  store i64 %i.da, ptr %i.cm, align 8, !alias.scope !2934
  store i8 0, ptr %i.cj, align 8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cq
  %i.dc = call noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %i.cp, ptr noundef nonnull readonly %i.db, ptr noundef nonnull @150, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @150, i64 1))
  br i1 %i.dc, label %.backedge, label %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit._crit_edge

_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit._crit_edge: ; preds = %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit
  %.pre = load i8, ptr %i.ck, align 1, !range !2933
  br label %bb.ad

bb.ab:                                            ; preds = %bb.y
  %i.dd = icmp eq i8 %.pre60, 5
  br i1 %i.dd, label %.backedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr %i.cj, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit._crit_edge, %bb.y, %bb.ac
  %i.de = phi i8 [ %.pre, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit._crit_edge ], [ %.pre60, %bb.y ], [ %.pre60, %bb.ac ]
  switch i8 %i.de, label %bb.ah [
    i8 10, label %bb.ae
    i8 5, label %bb.ag
  ]

.backedge:                                        ; preds = %bb.ab, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit, %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit, %bb.ag, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit38, %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit37
  %.sroa.0.1.be = phi i8 [ 0, %bb.ag ], [ 0, %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit37 ], [ 1, %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit ], [ 0, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit38 ], [ 0, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit ], [ 0, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs5_NtCs8frGy5WneL6_4fish9tokenizerNtB5_9TokenizerNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f)
  %i.df = load i8, ptr %i.ch, align 2, !range !25, !noundef !10
  %.not14 = icmp eq i8 %i.df, 2
  br i1 %.not14, label %._crit_edge, label %bb.x

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState20emit_space_or_indent(ptr noalias nofree noundef align 8 dereferenceable(184) %0, i1 noundef zeroext false)
  call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl, i64 noundef range(i64 0, 4611686018427387904) %i.cq), !noalias !2935
  %i.dg = load i64, ptr %i.cm, align 8, !alias.scope !2936, !noundef !10 ; 3 uses
  %i.dh = icmp ult i64 %i.dg, 2305843009213693952
  call void @llvm.assume(i1 %i.dh)
  %.not.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i, label %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.di = load ptr, ptr %i.cn, align 8, !alias.scope !2936, !nonnull !10, !noundef !10
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dg
  %i.dk = shl nuw nsw i64 %i.cq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dj, ptr nonnull readonly align 4 %i.cp, i64 %i.dk, i1 false)
  %.pre.i.i = load i64, ptr %i.cm, align 8, !alias.scope !2936
  br label %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit

_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit: ; preds = %bb.ae, %bb.af
  %i.dl = phi i64 [ %.pre.i.i, %bb.af ], [ %i.dg, %bb.ae ]
  %i.dm = add i64 %i.dl, %i.cq
  store i64 %i.dm, ptr %i.cm, align 8, !alias.scope !2936
  br label %.backedge

bb.ag:                                            ; preds = %bb.ad
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cq
  %i.do = call noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %i.cp, ptr noundef nonnull readonly %i.dn, ptr noundef nonnull @150, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @150, i64 1))
  br i1 %i.do, label %bb.aj, label %.backedge

bb.ah:                                            ; preds = %bb.ad
  call fastcc void @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState20emit_space_or_indent(ptr noalias nofree noundef align 8 dereferenceable(184) %0, i1 noundef zeroext false)
  call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl, i64 noundef range(i64 0, 4611686018427387904) %i.cq), !noalias !2937
  %i.dp = load i64, ptr %i.cm, align 8, !alias.scope !2938, !noundef !10 ; 3 uses
  %i.dq = icmp ult i64 %i.dp, 2305843009213693952
  call void @llvm.assume(i1 %i.dq)
  %.not.i.i35 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i35, label %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit37, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dr = load ptr, ptr %i.cn, align 8, !alias.scope !2938, !nonnull !10, !noundef !10
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dp
  %i.dt = shl nuw nsw i64 %i.cq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ds, ptr nonnull readonly align 4 %i.cp, i64 %i.dt, i1 false)
  %.pre.i.i36 = load i64, ptr %i.cm, align 8, !alias.scope !2938
  br label %_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit37

_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit37: ; preds = %bb.ah, %bb.ai
  %i.du = phi i64 [ %.pre.i.i36, %bb.ai ], [ %i.dp, %bb.ah ]
  %i.dv = add i64 %i.du, %i.cq
  store i64 %i.dv, ptr %i.cm, align 8, !alias.scope !2938
  br label %.backedge

bb.aj:                                            ; preds = %bb.ag
  %i.dw = load i64, ptr %i.cm, align 8, !alias.scope !2939, !noundef !10 ; 3 uses
  %i.dx = load i64, ptr %i.cl, align 8, !range !15, !alias.scope !2939, !noundef !10
  %i.dy = icmp eq i64 %i.dw, %i.dx
  br i1 %i.dy, label %bb.ak, label %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit38

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cl) #39
  br label %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit38

_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit38: ; preds = %bb.aj, %bb.ak
  %i.dz = load ptr, ptr %i.cn, align 8, !alias.scope !2939, !nonnull !10, !noundef !10
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dw
  store i32 10, ptr %i.ea, align 4
  %i.eb = add i64 %i.dw, 1
  store i64 %i.eb, ptr %i.cm, align 8, !alias.scope !2939
  store i8 1, ptr %i.cj, align 8
  br label %.backedge

bb.al:                                            ; preds = %._crit_edge.thread, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit39, %._crit_edge
  %.sroa.0.1.lcssa69 = phi i1 [ false, %._crit_edge.thread ], [ true, %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit39 ], [ false, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit

bb.am:                                            ; preds = %._crit_edge
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !2940, !noundef !10 ; 3 uses
  %i.ef = load i64, ptr %i.ec, align 8, !range !15, !alias.scope !2940, !noundef !10
  %i.eg = icmp eq i64 %i.ee, %i.ef
  br i1 %i.eg, label %bb.an, label %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit39

bb.an:                                            ; preds = %bb.am
  call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ec) #39
  br label %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit39

_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState12emit_newline.exit39: ; preds = %bb.am, %bb.an
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8, !alias.scope !2940, !nonnull !10, !noundef !10
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ee
  store i32 10, ptr %i.ej, align 4
  %i.ek = add i64 %i.ee, 1
  store i64 %i.ek, ptr %i.ed, align 8, !alias.scope !2940
  br label %bb.al
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState14emit_node_text(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !10, !nonnull !10
  %i.c = tail call { i32, i32 } %i.b(ptr noundef nonnull %1) #43 ; 2 uses
  %i.d = extractvalue { i32, i32 } %i.c, 0        ; 4 uses
  %i.e = extractvalue { i32, i32 } %i.c, 1        ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val = load ptr, ptr %i.f, align 8, !nonnull !10, !align !28, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val11 = load i64, ptr %i.g, align 8, !noundef !10
  %i.h = tail call noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange5start(i32 noundef %i.d, i32 noundef %i.e) ; 3 uses
  %i.i = tail call noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish15parse_constantsNtB5_11SourceRange3end(i32 noundef %i.d, i32 noundef %i.e) ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %.not.i = icmp ugt i64 %i.i, %.val11
  %or.cond.i = or i1 %i.j, %.not.i
  br i1 %or.cond.i, label %bb.b, label %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState6substr.exit, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #40
  unreachable

_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState6substr.exit: ; preds = %bb.a
  %i.k = sub nuw i64 %i.i, %i.h
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.h
  %i.m = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.l, i64 noundef %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 2)
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState6substr.exit
  %i.n = tail call fastcc i1 @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState26gap_text_flags_before_node(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %2)
  tail call fastcc void @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState9emit_text(ptr noalias nofree noundef align 8 dereferenceable(184) %0, i32 noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.n, i1 noundef zeroext false)
  br label %bb.e

bb.d:                                             ; preds = %_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState6substr.exit
  %i.o = icmp ult i32 %i.e, 2
  br i1 %i.o, label %bb.l, label %bb.f

bb.e:                                             ; preds = %bb.o, %bb.c
  ret void

bb.f:                                             ; preds = %bb.d
  %i.p = add i32 %i.e, -2
  %i.q = tail call fastcc i1 @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState26gap_text_flags_before_node(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %2)
  tail call fastcc void @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState9emit_text(ptr noalias nofree noundef align 8 dereferenceable(184) %0, i32 noundef %i.d, i32 noundef %i.p, i1 noundef zeroext %i.q, i1 noundef zeroext false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef 1)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.u = load i64, ptr %i.s, align 8, !alias.scope !2949, !noundef !10 ; 5 uses
  %i.v = load i64, ptr %i.r, align 8, !range !15, !alias.scope !2949, !noundef !10
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = load ptr, ptr %i.t, align 8, !alias.scope !2949, !nonnull !10, !noundef !10
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.u
  store i32 32, ptr %i.y, align 4
  %i.z = add i64 %i.u, 1                          ; 3 uses
  store i64 %i.z, ptr %i.s, align 8, !alias.scope !2949
  %i.aa = load i64, ptr %i.r, align 8, !range !15, !alias.scope !2949, !noundef !10
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #39
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = load ptr, ptr %i.t, align 8, !alias.scope !2949, !nonnull !10, !noundef !10
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.z
  store i32 92, ptr %i.ad, align 4
  %i.ae = add i64 %i.u, 2                         ; 3 uses
  store i64 %i.ae, ptr %i.s, align 8, !alias.scope !2949
  %i.af = load i64, ptr %i.r, align 8, !range !15, !alias.scope !2949, !noundef !10
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.k, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #39
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2: ; preds = %bb.k, %bb.j
  %i.ah = load ptr, ptr %i.t, align 8, !alias.scope !2949, !nonnull !10, !noundef !10
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae
  store i32 10, ptr %i.ai, align 4
  %i.aj = add i64 %i.u, 3
  store i64 %i.aj, ptr %i.s, align 8, !alias.scope !2949
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !noundef !10 ; 2 uses
  %i.am = icmp eq i64 %i.al, -1
  br i1 %i.am, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #40
  unreachable

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2
  %i.an = add nuw i64 %i.al, 1
  store i64 %i.an, ptr %i.ak, align 8
  tail call fastcc void @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState20emit_space_or_indent(ptr noalias nofree noundef align 8 dereferenceable(184) %0, i1 noundef zeroext false)
  %i.ao = load i64, ptr %i.ak, align 8, !noundef !10 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.p, label %bb.o

bb.n:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.2
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #40
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aq = add i64 %i.ao, -1
  store i64 %i.aq, ptr %i.ak, align 8
  br label %bb.e

bb.p:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB5_18PrettyPrinterState19has_preceding_space(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit10:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 6 uses
  %i.d = icmp ult i64 %i.c, 2305843009213693952
  tail call void @llvm.assume(i1 %i.d)
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error15TryFromIntErrorE9is_ok_andNCNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB1C_18PrettyPrinterState19has_preceding_space0EB1G_.exit, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit11.lr.ph

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit11.lr.ph: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit10
  %i.e = add nsw i64 %i.c, -1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !10 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !10, !align !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load i64, ptr %i.j, align 8
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit11

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit11: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit11.lr.ph, %bb.e
  %.pn38 = phi i64 [ %i.e, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit11.lr.ph ], [ %i.v, %bb.e ] ; 6 uses
  %i.l = icmp samesign ult i64 %.pn38, %i.c
  br i1 %i.l, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit11
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.pn38
  %i.n = load i32, ptr %i.m, align 4, !range !18, !noundef !10
  switch i32 %i.n, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error15TryFromIntErrorE9is_ok_andNCNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB1C_18PrettyPrinterState19has_preceding_space0EB1G_.exit [
    i32 10, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit
    i32 32, label %bb.g
  ]

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit11
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.pn38, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #40
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  %i.o = tail call noundef i64 @_RNvCskeBJdk8gjxq_17fish_wcstringutil27count_preceding_backslashes(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef %.pn38) ; 3 uses
  %i.p = and i64 %i.o, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error15TryFromIntErrorE9is_ok_andNCNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB1C_18PrettyPrinterState19has_preceding_space0EB1G_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit
  %i.r = icmp slt i64 %i.o, 0
  br i1 %i.r, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultjNtNtNtB5_3num5error15TryFromIntErrorE9is_ok_andNCNvMs1_NtNtCs8frGy5WneL6_4fish8builtins11fish_indentNtB1C_18PrettyPrinterState19has_preceding_space0EB1G_.exit: ; preds = %bb.a, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit, %bb.e, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit10, %bb.g
  %.sroa.0.0 = phi i1 [ %i.z, %bb.g ], [ false, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit10 ], [ false, %bb.e ], [ false, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

end_hunk_1
