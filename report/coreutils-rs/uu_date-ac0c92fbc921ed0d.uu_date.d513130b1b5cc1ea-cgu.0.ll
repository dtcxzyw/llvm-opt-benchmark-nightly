inline.NumInlined: 1460
inline.NumDeleted: 758
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvNtCsiibOIv6tv3q_7uu_date16format_modifiers16try_alloc_padded:bb.a

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.e
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4547
  %i.j = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %5, i64 noundef range(i64 1, 9) 1) #33, !noalias !4547 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %bb.d
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.d ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %5) #37, !noalias !4553
  unreachable

bb.g:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %4, i64 %5, i1 false), !noalias !4554
  br label %_RNvNtCsiibOIv6tv3q_7uu_date16format_modifiers21field_width_too_large.exit

_RNvNtCsiibOIv6tv3q_7uu_date16format_modifiers21field_width_too_large.exit: ; preds = %bb.e, %bb.g
  %i.l = phi ptr [ %i.j, %bb.g ], [ inttoptr (i64 1 to ptr), %bb.e ]
  store i64 %5, ptr %0, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %.sroa.550.0..sroa_idx, align 8
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %.sroa.651.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4555)
  %.val.i = load i64, ptr %i.b, align 8, !range !98, !alias.scope !4555, !noundef !10 ; 2 uses
  %i.m = icmp eq i64 %.val.i, 0
  br i1 %i.m, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit, label %bb.h

bb.h:                                             ; preds = %_RNvNtCsiibOIv6tv3q_7uu_date16format_modifiers21field_width_too_large.exit
  %.val1.i = load ptr, ptr %.sroa.422.0..sroa_idx, align 8, !alias.scope !4555, !nonnull !10, !noundef !10
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4555
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit: ; preds = %_RNvNtCsiibOIv6tv3q_7uu_date16format_modifiers21field_width_too_large.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef range(i64 0, 10) i64 @_RNvNtCsiibOIv6tv3q_7uu_date16format_modifiers17get_default_width(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -1
  %i.d = load i8, ptr %i.c, align 1, !noalias !4558, !noundef !10 ; 3 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiibOIv6tv3q_7uu_date.exit17.i

_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiibOIv6tv3q_7uu_date.exit17.i: ; preds = %bb.b
  %i.f = icmp ne i64 %1, 1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 -2
  %i.h = load i8, ptr %i.g, align 1, !noalias !4558, !noundef !10 ; 3 uses
  %i.i = and i8 %i.h, 31
  %i.j = zext nneg i8 %i.i to i32
  %i.k = icmp slt i8 %i.h, -64
  br i1 %i.k, label %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiibOIv6tv3q_7uu_date.exit19.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i8 %i.d to i32
  br label %bb.f

_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiibOIv6tv3q_7uu_date.exit19.i: ; preds = %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiibOIv6tv3q_7uu_date.exit17.i
  %i.m = icmp ne i64 %1, 2
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds i8, ptr %i.a, i64 -3
  %i.o = load i8, ptr %i.n, align 1, !noalias !4558, !noundef !10 ; 3 uses
  %i.p = and i8 %i.o, 15
  %i.q = zext nneg i8 %i.p to i32
  %i.r = icmp slt i8 %i.o, -64
  br i1 %i.r, label %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiibOIv6tv3q_7uu_date.exit21.i, label %bb.e

bb.d:                                             ; preds = %bb.e, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiibOIv6tv3q_7uu_date.exit17.i
  %.sroa.010.0.i = phi i32 [ %i.ai, %bb.e ], [ %i.j, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiibOIv6tv3q_7uu_date.exit17.i ]
  %i.s = shl nuw nsw i32 %.sroa.010.0.i, 6
  %i.t = and i8 %i.d, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u
  br label %bb.f

_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiibOIv6tv3q_7uu_date.exit21.i: ; preds = %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiibOIv6tv3q_7uu_date.exit19.i
  %i.w = icmp ne i64 %1, 3
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.y = load i8, ptr %i.x, align 1, !noalias !4558, !noundef !10
  %i.z = and i8 %i.y, 7
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 6
  %i.ac = and i8 %i.o, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.ab, %i.ad
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiibOIv6tv3q_7uu_date.exit21.i, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiibOIv6tv3q_7uu_date.exit19.i
  %.sroa.010.1.i = phi i32 [ %i.ae, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiibOIv6tv3q_7uu_date.exit21.i ], [ %i.q, %_RNvXs2K_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiibOIv6tv3q_7uu_date.exit19.i ]
  %i.af = shl nuw nsw i32 %.sroa.010.1.i, 6
  %i.ag = and i8 %i.h, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  br label %bb.d

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.1.i.ph = phi i32 [ %i.l, %bb.c ], [ %i.v, %bb.d ] ; 2 uses
  %i.aj = icmp samesign ult i32 %.sroa.4.1.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.aj)
  %switch.tableidx = add nsw i32 %.sroa.4.1.i.ph, -67 ; 2 uses
  %i.ak = icmp ult i32 %switch.tableidx, 55
  br i1 %i.ak, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %bb.f
  %i.al = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCsiibOIv6tv3q_7uu_date16format_modifiers17get_default_width, i64 %i.al
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %bb.g

bb.g:                                             ; preds = %switch.lookup, %bb.f, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %switch.ext, %switch.lookup ], [ 0, %bb.f ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvNtCsiibOIv6tv3q_7uu_date16format_modifiers17parse_format_spec(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !noundef !10
  %.not76 = icmp eq i8 %i.a, 37
  br i1 %.not76, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b
  %.not93 = icmp eq i64 %2, 1
  br i1 %.not93, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54.thread, label %.lr.ph

.critedge:                                        ; preds = %bb.a, %bb.b
  store i64 2, ptr %0, align 8
  br label %bb.s

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.sroa.01.085 = phi i64 [ %i.l, %bb.e ], [ 1, %.preheader ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.085
  %i.c = load i8, ptr %i.b, align 1, !noundef !10
  switch i8 %i.c, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit [
    i8 95, label %bb.e
    i8 48, label %bb.e
    i8 94, label %bb.e
    i8 35, label %bb.e
    i8 45, label %bb.e
    i8 43, label %bb.e
  ]

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit: ; preds = %.lr.ph, %bb.e
  %.sroa.01.083 = phi i64 [ %.sroa.01.085, %.lr.ph ], [ %2, %bb.e ] ; 6 uses
  %i.d = add i64 %.sroa.01.083, -1                ; 3 uses
  %or.cond.i52.not = icmp ult i64 %i.d, %2
  br i1 %or.cond.i52.not, label %bb.c, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54.thread63, !prof !435

bb.c:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !4561, !noundef !10
  %i.g = icmp sgt i8 %i.f, -65
  br i1 %i.g, label %bb.d, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54.thread63, !prof !435

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %.sroa.01.083, %2
  br i1 %i.h, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.083
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !4561, !noundef !10
  %i.k = icmp sgt i8 %i.j, -65
  br i1 %i.k, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54.thread63, !prof !436

bb.e:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.l = add nuw i64 %.sroa.01.085, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %2
  br i1 %exitcond.not, label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit, label %.lr.ph

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54.thread63: ; preds = %bb.c, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 1, i64 noundef %.sroa.01.083, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #34
  unreachable

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54.thread: ; preds = %.preheader, %bb.d, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54
  %.sroa.01.083117120 = phi i64 [ %.sroa.01.083, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54 ], [ %.sroa.01.083, %bb.d ], [ 1, %.preheader ] ; 8 uses
  %i.m = phi i64 [ %i.d, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54 ], [ %i.d, %bb.d ], [ 0, %.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.o = icmp ult i64 %.sroa.01.083117120, %2
  br i1 %i.o, label %.lr.ph87, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit

.lr.ph87:                                         ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54.thread, %bb.f
  %.sroa.01.186 = phi i64 [ %i.t, %bb.f ], [ %.sroa.01.083117120, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54.thread ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.186
  %i.q = load i8, ptr %i.p, align 1, !noundef !10
  %i.r = add i8 %i.q, -48
  %or.cond = icmp ult i8 %i.r, 10
  br i1 %or.cond, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %.lr.ph87
  %.sroa.01.1.lcssa = phi i64 [ %.sroa.01.186, %.lr.ph87 ], [ %2, %bb.f ] ; 16 uses
  %i.s = icmp ugt i64 %.sroa.01.1.lcssa, %.sroa.01.083117120
  br i1 %i.s, label %bb.g, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit

bb.f:                                             ; preds = %.lr.ph87
  %i.t = add nuw i64 %.sroa.01.186, 1             ; 2 uses
  %exitcond102.not = icmp eq i64 %i.t, %2
  br i1 %exitcond102.not, label %._crit_edge, label %.lr.ph87

bb.g:                                             ; preds = %._crit_edge
  %i.u = icmp ugt i64 %.sroa.01.1.lcssa, %2
  br i1 %i.u, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit51.thread67, label %bb.i, !prof !2740

bb.h:                                             ; preds = %bb.i
  %i.v = icmp eq i64 %.sroa.01.1.lcssa, %2
  br i1 %i.v, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit51.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit51

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.083117120
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !4564, !noundef !10
  %i.y = icmp sgt i8 %i.x, -65
  br i1 %i.y, label %bb.h, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit51.thread67, !prof !435

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit51: ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.1.lcssa
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !4564, !noundef !10
  %i.ab = icmp sgt i8 %i.aa, -65
  br i1 %i.ab, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit51.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit51.thread67, !prof !436

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader56.i, %bb.l, %.preheader56.i.preheader, %bb.m, %.lr.ph.i57, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54.thread, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit51.thread, %bb.j, %bb.j, %.preheader.i, %._crit_edge
  %.sroa.01.1.lcssa122 = phi i64 [ %.sroa.01.1.lcssa, %._crit_edge ], [ %.sroa.01.1.lcssa, %bb.j ], [ %.sroa.01.1.lcssa, %.preheader.i ], [ %.sroa.01.1.lcssa, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit51.thread ], [ %.sroa.01.1.lcssa, %bb.j ], [ %.sroa.01.083117120, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54.thread ], [ %.sroa.01.1.lcssa, %bb.m ], [ %.sroa.01.1.lcssa, %.lr.ph.i57 ], [ %.sroa.01.1.lcssa, %.preheader56.i.preheader ], [ %.sroa.01.1.lcssa, %bb.l ], [ %.sroa.01.1.lcssa, %.preheader56.i ] ; 12 uses
  %.sroa.3.0 = phi i64 [ undef, %._crit_edge ], [ -1, %bb.j ], [ 0, %.preheader.i ], [ -1, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit51.thread ], [ -1, %bb.j ], [ undef, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54.thread ], [ %i.ba, %bb.m ], [ -1, %.lr.ph.i57 ], [ -1, %.preheader56.i.preheader ], [ %i.aq, %.preheader56.i ], [ -1, %bb.l ]
  %.sroa.020.0 = phi i64 [ 0, %._crit_edge ], [ 1, %bb.j ], [ 1, %.preheader.i ], [ 1, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit51.thread ], [ 1, %bb.j ], [ 0, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit54.thread ], [ 1, %bb.m ], [ 1, %.lr.ph.i57 ], [ 1, %.preheader56.i.preheader ], [ 1, %bb.l ], [ 1, %.preheader56.i ]
  %i.ac = icmp ult i64 %.sroa.01.1.lcssa122, %2
  br i1 %i.ac, label %.lr.ph92, label %.critedge46

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit51.thread67: ; preds = %bb.i, %bb.g, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit51
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.01.083117120, i64 noundef %.sroa.01.1.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #34
  unreachable

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit51.thread: ; preds = %bb.h, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit51
  %i.ad = sub nuw i64 %.sroa.01.1.lcssa, %.sroa.01.083117120 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.083117120 ; 3 uses
  switch i64 %i.ad, label %thread-pre-split.i [
    i64 0, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit51.thread
  %4 = load i8, ptr %3, align 1, !alias.scope !4567, !noalias !4570, !noundef !10 ; 2 uses
  switch i8 %4, label %bb.k [
    i8 43, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit
    i8 45, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit
  ]

thread-pre-split.i:                               ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit51.thread
  %.pr.i = load i8, ptr %3, align 1, !alias.scope !4567, !noalias !4570
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split.i, %bb.j
  %5 = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %4, %bb.j ]
  %cond.i = icmp eq i8 %5, 43                     ; 2 uses
  %i.ae = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.ad, %i.ae        ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i55 = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.af = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.af, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.k
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i57

.preheader56.i:                                   ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i56134, i64 1
  %i.ah = add nsw i64 %.sroa.15.1.i133, -1        ; 2 uses
  %.not52.i = icmp eq i64 %i.ah, 0
  br i1 %.not52.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.k, %.preheader56.i
  %.sroa.0.1.i56134 = phi ptr [ %i.ag, %.preheader56.i ], [ %.sroa.0.0.i55, %bb.k ] ; 2 uses
  %.sroa.15.1.i133 = phi i64 [ %i.ah, %.preheader56.i ], [ %.sroa.15.0.i, %bb.k ]
  %.sroa.042.0.i132 = phi i64 [ %i.aq, %.preheader56.i ], [ 0, %bb.k ]
  %i.ai = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i132, i64 10) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, label %bb.l, !prof !215

bb.l:                                             ; preds = %.preheader56.i.preheader
  %i.ak = extractvalue { i64, i1 } %i.ai, 0       ; 2 uses
  %i.al = load i8, ptr %.sroa.0.1.i56134, align 1, !alias.scope !4567, !noalias !4570, !noundef !10
  %i.am = zext i8 %i.al to i32
  %i.an = add nsw i32 %i.am, -48                  ; 2 uses
  %i.ao = icmp ugt i32 %i.an, 9
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = add i64 %i.ak, %i.ap                    ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %i.ak
  %or.cond75 = select i1 %i.ao, i1 true, i1 %i.ar, !prof !445
  br i1 %or.cond75, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i, !prof !445

.lr.ph.i57:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.0.269.i = phi ptr [ %i.ay, %bb.m ], [ %.sroa.0.0.i55, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.ax, %bb.m ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ba, %bb.m ], [ 0, %.preheader.i ]
  %i.as = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !4567, !noalias !4570, !noundef !10
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %bb.m, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit

bb.m:                                             ; preds = %.lr.ph.i57
  %i.aw = mul i64 %.sroa.042.267.i, 10
  %i.ax = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = add i64 %i.aw, %i.az                    ; 2 uses
  %.not53.i = icmp eq i64 %i.ax, 0
  br i1 %.not53.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i57

.lr.ph92:                                         ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.1.lcssa122
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !10 ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 58
  br i1 %i.bd, label %bb.n, label %.critedge43

bb.n:                                             ; preds = %.lr.ph92
  %i.be = add i64 %.sroa.01.1.lcssa122, 1         ; 3 uses
  %exitcond103.not = icmp eq i64 %i.be, %2
  br i1 %exitcond103.not, label %.critedge46, label %.lr.ph92.1

.lr.ph92.1:                                       ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !10 ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 58
  br i1 %i.bh, label %bb.o, label %.critedge43

bb.o:                                             ; preds = %.lr.ph92.1
  %i.bi = add i64 %.sroa.01.1.lcssa122, 2         ; 3 uses
  %exitcond103.not.1 = icmp eq i64 %i.bi, %2
  br i1 %exitcond103.not.1, label %.critedge46, label %.lr.ph92.2

.lr.ph92.2:                                       ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !10 ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 58
  br i1 %i.bl, label %bb.p, label %.critedge43

bb.p:                                             ; preds = %.lr.ph92.2
  %i.bm = add i64 %.sroa.01.1.lcssa122, 3         ; 3 uses
  %exitcond103.not.2 = icmp eq i64 %i.bm, %2
  br i1 %exitcond103.not.2, label %.critedge46, label %.lr.ph92.3

.lr.ph92.3:                                       ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noundef !10
  br label %.critedge43

.critedge43:                                      ; preds = %.lr.ph92.3, %.lr.ph92.2, %.lr.ph92.1, %.lr.ph92
  %.sroa.01.291.lcssa = phi i64 [ %.sroa.01.1.lcssa122, %.lr.ph92 ], [ %i.be, %.lr.ph92.1 ], [ %i.bi, %.lr.ph92.2 ], [ %i.bm, %.lr.ph92.3 ]
  %.lcssa = phi i8 [ %i.bc, %.lr.ph92 ], [ %i.bg, %.lr.ph92.1 ], [ %i.bk, %.lr.ph92.2 ], [ %i.bo, %.lr.ph92.3 ]
  %i.bp = and i8 %.lcssa, -33
  %i.bq = add i8 %i.bp, -91
  %or.cond77 = icmp ult i8 %i.bq, -26
  br i1 %or.cond77, label %.critedge46, label %6

.critedge46:                                      ; preds = %bb.n, %bb.o, %bb.p, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit, %.critedge43
  store i64 2, ptr %0, align 8
  br label %bb.s

6:                                                ; preds = %.critedge43
  %7 = add nuw i64 %.sroa.01.291.lcssa, 1         ; 6 uses
  %8 = icmp ugt i64 %.sroa.01.1.lcssa122, %7
  br i1 %8, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread71, label %9, !prof !2740

9:                                                ; preds = %6
  %10 = icmp eq i64 %.sroa.01.1.lcssa122, %2
  br i1 %10, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread, label %bb.r

bb.q:                                             ; preds = %bb.r
  %i.br = icmp eq i64 %7, %2
  br i1 %i.br, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit

bb.r:                                             ; preds = %9
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.1.lcssa122
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !4572, !noundef !10
  %i.bu = icmp sgt i8 %i.bt, -65
  br i1 %i.bu, label %bb.q, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread71, !prof !435

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit: ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !4572, !noundef !10
  %i.bx = icmp sgt i8 %i.bw, -65
  br i1 %i.bx, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread71, !prof !436

bb.s:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread, %.critedge46, %.critedge
  ret void

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread71: ; preds = %bb.r, %6, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.01.1.lcssa122, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #34
  unreachable

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread: ; preds = %bb.q, %9, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit
  %i.by = sub nuw i64 %7, %.sroa.01.1.lcssa122
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.1.lcssa122
  store i64 %.sroa.020.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bz, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.by, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %7, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.s
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvNtCsiibOIv6tv3q_7uu_date16format_modifiers21field_width_too_large(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp slt i64 %3, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !445

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit.thread9, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4575
  %i.b = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef range(i64 1, 9) 1) #33, !noalias !4575 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %3) #37
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit.thread9: ; preds = %bb.b, %bb.d
  %i.d = phi ptr [ %i.b, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.e, align 8
  store i64 %3, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.d:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiibOIv6tv3q_7uu_date.exit.thread9
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvNtCsiibOIv6tv3q_7uu_date16format_modifiers21strip_default_padding(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsiibOIv6tv3q_7uu_date.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsiibOIv6tv3q_7uu_date.exit: ; preds = %bb.a
  %rhsc = load i8, ptr %1, align 1                ; 2 uses
  %i.a = icmp eq i8 %rhsc, 48
  %i.b = icmp ne i64 %2, 1
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsiibOIv6tv3q_7uu_date.exit24

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsiibOIv6tv3q_7uu_date.exit24: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsiibOIv6tv3q_7uu_date.exit, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsiibOIv6tv3q_7uu_date.exit
  %i.c = icmp eq i8 %rhsc, 32
  br i1 %i.c, label %bb.j, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsiibOIv6tv3q_7uu_date.exit.thread

bb.b:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsiibOIv6tv3q_7uu_date.exit
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.e = ptrtoint ptr %i.d to i64
  %invariant.op.i.i = sub i64 %2, %i.e
  %invariant.op.i = add i64 %2, -1
  %invariant.op5.i = add i64 %2, -2
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i, %bb.b
  %.reass6.i.i = phi i64 [ %.reass.i.i, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i ], [ 0, %bb.b ] ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.reass6.i.i ; 5 uses
  %i.g = icmp samesign eq i64 %.reass6.i.i, %2
  br i1 %i.g, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchescECsiibOIv6tv3q_7uu_date.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.f, align 1, !alias.scope !4578, !noalias !4581, !noundef !10 ; 5 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.e, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i.i: ; preds = %bb.d
  %i.k = and i8 %i.i, 31
  %i.l = zext nneg i8 %i.k to i32                 ; 3 uses
  %i.m = icmp ne i64 %.reass6.i.i, %invariant.op.i
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %i.o = load i8, ptr %i.h, align 1, !alias.scope !4578, !noalias !4581, !noundef !10
  %i.p = shl nuw nsw i32 %i.l, 6
  %i.q = and i8 %i.o, 63
  %i.r = zext nneg i8 %i.q to i32                 ; 2 uses
  %i.s = or disjoint i32 %i.p, %i.r
  %i.t = icmp samesign ugt i8 %i.i, -33
  br i1 %i.t, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = zext nneg i8 %i.i to i32
  br label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i.i
  %i.v = icmp ne i64 %.reass6.i.i, %invariant.op5.i
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 3 ; 2 uses
  %i.x = load i8, ptr %i.n, align 1, !alias.scope !4578, !noalias !4581, !noundef !10
  %i.y = shl nuw nsw i32 %i.r, 6
  %i.z = and i8 %i.x, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = or disjoint i32 %i.y, %i.aa             ; 2 uses
  %i.ac = shl nuw nsw i32 %i.l, 12
  %i.ad = or disjoint i32 %i.ab, %i.ac
  %i.ae = icmp samesign ugt i8 %i.i, -17
  br i1 %i.ae, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i.i
  %i.af = add nuw nsw i64 %.reass6.i.i, 3
  %i.ag = icmp samesign ne i64 %i.af, %2
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ai = load i8, ptr %i.w, align 1, !alias.scope !4578, !noalias !4581, !noundef !10
  %i.aj = shl nuw nsw i32 %i.l, 18
  %i.ak = and i32 %i.aj, 1835008
  %i.al = shl nuw nsw i32 %i.ab, 6
  %i.am = and i8 %i.ai, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = or disjoint i32 %i.ao, %i.ak
  br label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i.i, %bb.e, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i.i
  %.sroa.0.0.ph.i.i.i = phi ptr [ %i.n, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i.i ], [ %i.w, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i.i ], [ %i.ah, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i.i ], [ %i.h, %bb.e ]
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ %i.s, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i.i.i.i ], [ %i.ad, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i.i.i.i ], [ %i.ap, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i.i.i.i ], [ %i.u, %bb.e ] ; 2 uses
  %i.aq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = ptrtoint ptr %.sroa.0.0.ph.i.i.i to i64
  %.reass.i.i = add i64 %invariant.op.i.i, %i.ar
  %.not.i.i = icmp eq i32 %.sroa.4.0.i.ph.i.i.i, 48
  br i1 %.not.i.i, label %bb.c, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchescECsiibOIv6tv3q_7uu_date.exit

_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchescECsiibOIv6tv3q_7uu_date.exit: ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i
  %i.as = sub nuw i64 %2, %.reass6.i.i            ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %.reass6.i.i ; 5 uses
  %i.au = load i8, ptr %i.at, align 1, !noalias !4590, !noundef !10 ; 5 uses
  %i.av = icmp sgt i8 %i.au, -1
  br i1 %i.av, label %bb.f, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i

_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchescECsiibOIv6tv3q_7uu_date.exit.thread: ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4593
  %i.aw = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, 9) 1) #33, !noalias !4593 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.g, label %bb.h

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i: ; preds = %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchescECsiibOIv6tv3q_7uu_date.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.az = and i8 %i.au, 31
  %i.ba = zext nneg i8 %i.az to i32               ; 3 uses
  %i.bb = add nuw nsw i64 %.reass6.i.i, 1
  %i.bc = icmp samesign ne i64 %i.bb, %2
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = load i8, ptr %i.ay, align 1, !noalias !4590, !noundef !10
  %i.be = shl nuw nsw i32 %i.ba, 6
  %i.bf = and i8 %i.bd, 63
  %i.bg = zext nneg i8 %i.bf to i32               ; 2 uses
  %i.bh = or disjoint i32 %i.be, %i.bg
  %i.bi = icmp samesign ugt i8 %i.au, -33
  br i1 %i.bi, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsiibOIv6tv3q_7uu_date.exit

bb.f:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchescECsiibOIv6tv3q_7uu_date.exit
  %i.bj = zext nneg i8 %i.au to i32
  br label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsiibOIv6tv3q_7uu_date.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.bl = add nuw nsw i64 %.reass6.i.i, 2
  %i.bm = icmp samesign ne i64 %i.bl, %2
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = load i8, ptr %i.bk, align 1, !noalias !4590, !noundef !10
  %i.bo = shl nuw nsw i32 %i.bg, 6
  %i.bp = and i8 %i.bn, 63
  %i.bq = zext nneg i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bo, %i.bq            ; 2 uses
  %i.bs = shl nuw nsw i32 %i.ba, 12
  %i.bt = or disjoint i32 %i.br, %i.bs
  %i.bu = icmp samesign ugt i8 %i.au, -17
  br i1 %i.bu, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i, label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsiibOIv6tv3q_7uu_date.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %i.bw = add nuw nsw i64 %.reass6.i.i, 3
  %i.bx = icmp samesign ne i64 %i.bw, %2
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = load i8, ptr %i.bv, align 1, !noalias !4590, !noundef !10
  %i.bz = shl nuw nsw i32 %i.ba, 18
  %i.ca = and i32 %i.bz, 1835008
  %i.cb = shl nuw nsw i32 %i.br, 6
  %i.cc = and i8 %i.by, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  %i.cf = or disjoint i32 %i.ce, %i.ca
  br label %_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsiibOIv6tv3q_7uu_date.exit

_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsiibOIv6tv3q_7uu_date.exit: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i, %bb.f, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i
  %.sroa.4.0.i = phi i32 [ %i.bj, %bb.f ], [ %i.bh, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i ], [ %i.cf, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i ], [ %i.bt, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i ]
  %i.cg = add nsw i32 %.sroa.4.0.i, -48
  %or.cond20 = icmp ult i32 %i.cg, 10
end_hunk_0
