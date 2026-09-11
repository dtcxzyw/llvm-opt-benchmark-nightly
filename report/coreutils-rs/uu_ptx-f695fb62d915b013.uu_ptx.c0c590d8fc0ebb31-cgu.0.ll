Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ptx-f695fb62d915b013.uu_ptx.c0c590d8fc0ebb31-cgu.0?download=true
inline.NumInlined: 1812
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvCsgy7pbN39oAf_6uu_ptx21read_word_filter_file:bb.a
._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i, %bb.af
  %.not12.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i, 1
  br i1 %.not12.i.i.i, label %.thread.i.i.i, label %bb.ag, !prof !12

_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i, %.lr.ph.i.i.i
  %i.hf = add i16 %.sroa.01.029.i.i.i, -1
  %i.hg = and i16 %i.hf, %.sroa.01.029.i.i.i      ; 2 uses
  %.not.i.i.i47 = icmp eq i16 %i.hg, 0
  br i1 %.not.i.i.i47, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ag:                                            ; preds = %._crit_edge.i.i.i
  %i.hh = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, zeroinitializer
  %i.hi = bitcast <16 x i1> %i.hh to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.hi, 0
  br i1 %.not.i.i.i.i, label %bb.ah, label %.thread24.i.i.i, !prof !12

.thread24.i.i.i:                                  ; preds = %bb.ag
  %i.hj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hi, i1 true)
  %i.hk = zext nneg i16 %i.hj to i64
  %i.hl = add i64 %.sroa.0.017.i.i.i, %i.hk
  %i.hm = and i64 %i.hl, %.val5.i.i
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread24.i.i.i, %._crit_edge.i.i.i
  %.sroa.4.121.i.i.i = phi i64 [ %i.hm, %.thread24.i.i.i ], [ %.sroa.4.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.hn = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.ho = bitcast <16 x i1> %i.hn to i16
  %i.hp = icmp eq i16 %i.ho, 0
  br i1 %i.hp, label %bb.ah, label %bb.ai, !prof !12

bb.ah:                                            ; preds = %.thread.i.i.i, %bb.ag
  %.sroa.04.122.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.ag ]
  %.sroa.4.120.i.i.i = phi i64 [ %.sroa.4.121.i.i.i, %.thread.i.i.i ], [ undef, %bb.ag ]
  %i.hq = add i64 %i.gr, 16                       ; 2 uses
  %i.hr = add i64 %i.hq, %.sroa.0.017.i.i.i
  br label %bb.af

bb.ai:                                            ; preds = %.thread.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.val.i.i46, i64 %.sroa.4.121.i.i.i
  %i.ht = load i8, ptr %i.hs, align 1, !noalias !2298, !noundef !7 ; 2 uses
  %i.hu = icmp sgt i8 %i.ht, -1
  br i1 %i.hu, label %bb.aj, label %bb.ak, !prof !12

bb.aj:                                            ; preds = %bb.ai
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i46, align 16, !noalias !2298
  %i.hv = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.hw = bitcast <16 x i1> %i.hv to i16          ; 2 uses
  %.not.i23.i.i.i = icmp ne i16 %i.hw, 0
  %i.hx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hw, i1 true)
  %i.hy = zext nneg i16 %i.hx to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i23.i.i.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i46, i64 %i.hy
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !2303
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.hz = phi i8 [ %.pre.i, %bb.aj ], [ %i.ht, %bb.ai ]
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.hy, %bb.aj ], [ %.sroa.4.121.i.i.i, %bb.ai ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2304)
  %i.ia = getelementptr inbounds nuw i8, ptr %.val.i.i46, i64 %.sroa.3.0.i.ph.i.i
  %i.ib = and i8 %i.hz, 1
  %i.ic = zext nneg i8 %i.ib to i64
  %i.id = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.ie = and i64 %i.id, %.val5.i.i
  store i8 %i.go, ptr %i.ia, align 1, !noalias !2303
  %i.if = getelementptr i8, ptr %.val.i.i46, i64 %i.ie
  %i.ig = getelementptr i8, ptr %i.if, i64 16
  store i8 %i.go, ptr %i.ig, align 1, !noalias !2303
  %i.ih = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !2305, !noalias !2306
  %i.ii = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ic, i64 0
  %i.ij = sub <2 x i64> %i.ih, %i.ii
  store <2 x i64> %i.ij, ptr %i.ax, align 8, !alias.scope !2305, !noalias !2306
  %i.ik = sub nsw i64 0, %.sroa.3.0.i.ph.i.i
  %i.il = getelementptr inbounds [24 x i8], ptr %.val.i.i46, i64 %i.ik ; 3 uses
  %i.im = getelementptr inbounds i8, ptr %i.il, i64 -24
  store i64 %.sroa.053.1, ptr %i.im, align 8, !noalias !2304
  %.sroa.357.0..sroa_idx = getelementptr inbounds i8, ptr %i.il, i64 -16
  store ptr %.sroa.854.1, ptr %.sroa.357.0..sroa_idx, align 8, !noalias !2304
  %.sroa.558.0..sroa_idx = getelementptr inbounds i8, ptr %i.il, i64 -8
  store i64 %.sroa.1055.0, ptr %.sroa.558.0..sroa_idx, align 8, !noalias !2304
  br label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE6insertCsgy7pbN39oAf_6uu_ptx.exit.backedge

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE6insertCsgy7pbN39oAf_6uu_ptx.exit.backedge: ; preds = %bb.ak, %bb.al, %bb.am
  br label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE6insertCsgy7pbN39oAf_6uu_ptx.exit

bb.al:                                            ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i
  %i.in = icmp eq i64 %.sroa.053.1, 0
  br i1 %i.in, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE6insertCsgy7pbN39oAf_6uu_ptx.exit.backedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.854.1, i64 noundef %.sroa.053.1, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2307
  br label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE6insertCsgy7pbN39oAf_6uu_ptx.exit.backedge
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef i64 @_RNvCsgy7pbN39oAf_6uu_ptx21trim_broken_word_left(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %.not.i = icmp ugt i64 %2, %3
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not1.i = icmp ugt i64 %3, %1
  br i1 %.not1.i, label %bb.d, label %_RNvCsgy7pbN39oAf_6uu_ptx20assert_str_integrity.exit, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #27
  unreachable

_RNvCsgy7pbN39oAf_6uu_ptx20assert_str_integrity.exit: ; preds = %bb.c
  %i.a = icmp eq i64 %2, %3
  %i.b = icmp eq i64 %2, 0
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_RNvCsgy7pbN39oAf_6uu_ptx20assert_str_integrity.exit
  %i.c = getelementptr [4 x i8], ptr %0, i64 %2   ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !range !25, !noundef !7 ; 7 uses
  switch i32 %i.d, label %bb.f [
    i32 32, label %.loopexit
    i32 13, label %.loopexit
    i32 12, label %.loopexit
    i32 11, label %.loopexit
    i32 10, label %.loopexit
    i32 9, label %.loopexit
  ]

bb.f:                                             ; preds = %bb.e
  %i.e = icmp samesign ult i32 %i.d, 133
  br i1 %i.e, label %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = lshr i32 %i.d, 8
  switch i32 %i.f, label %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread [
    i32 0, label %bb.j
    i32 22, label %bb.h
    i32 32, label %bb.k
    i32 48, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.g = icmp eq i32 %i.d, 5760
  %i.h = zext i1 %i.g to i8
  br label %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit

bb.i:                                             ; preds = %bb.g
  %i.i = icmp eq i32 %i.d, 12288
  %i.j = zext i1 %i.i to i8
  br label %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit

bb.j:                                             ; preds = %bb.g
  %i.k = and i32 %i.d, 255
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noundef !7
  br label %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit

bb.k:                                             ; preds = %bb.g
  %i.o = and i32 %i.d, 255
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noundef !7
  %i.s = lshr i8 %i.r, 1
  br label %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit

_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.0.0.i = phi i8 [ %i.j, %bb.i ], [ %i.n, %bb.j ], [ %i.h, %bb.h ], [ %i.s, %bb.k ]
  %i.t = trunc i8 %.sroa.0.0.i to i1
  br i1 %i.t, label %.loopexit, label %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread

_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread: ; preds = %bb.g, %bb.f, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit
  %i.u = getelementptr i8, ptr %i.c, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !range !25, !noundef !7 ; 3 uses
  switch i32 %i.v, label %bb.l [
    i32 32, label %.loopexit
    i32 13, label %.loopexit
    i32 12, label %.loopexit
    i32 11, label %.loopexit
    i32 10, label %.loopexit
    i32 9, label %.loopexit
  ]

bb.l:                                             ; preds = %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread
  %i.w = icmp samesign ult i32 %i.v, 133
  br i1 %i.w, label %.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call fastcc noundef zeroext i1 @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup(i32 noundef %i.v) #29
  %i.y = icmp uge i64 %2, %3
  %or.cond46.not = or i1 %i.y, %i.x
  br i1 %or.cond46.not, label %.loopexit, label %.lr.ph.preheader

.split:                                           ; preds = %bb.l
  %.old = icmp ult i64 %2, %3
  br i1 %.old, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.split, %bb.m
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %.sroa.0.031 = phi i64 [ %i.ad, %bb.p ], [ %2, %.lr.ph.preheader ] ; 9 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.031
  %i.aa = load i32, ptr %i.z, align 4, !range !25, !noundef !7 ; 3 uses
  switch i32 %i.aa, label %bb.n [
    i32 32, label %.loopexit
    i32 13, label %.loopexit
    i32 12, label %.loopexit
    i32 11, label %.loopexit
    i32 10, label %.loopexit
    i32 9, label %.loopexit
  ]

bb.n:                                             ; preds = %.lr.ph
  %i.ab = icmp samesign ult i32 %i.aa, 133
  br i1 %i.ab, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup(i32 noundef %i.aa) #29
  br i1 %i.ac, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ad = add i64 %.sroa.0.031, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.o, %bb.p, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.split, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %_RNvCsgy7pbN39oAf_6uu_ptx20assert_str_integrity.exit, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit, %bb.m
  %.sroa.019.0 = phi i64 [ %2, %bb.e ], [ %2, %bb.m ], [ %2, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread ], [ %2, %_RNvCsgy7pbN39oAf_6uu_ptx20assert_str_integrity.exit ], [ %2, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit ], [ %2, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread ], [ %2, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread ], [ %2, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread ], [ %2, %bb.e ], [ %2, %bb.e ], [ %2, %bb.e ], [ %2, %bb.e ], [ %2, %bb.e ], [ %2, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread ], [ %2, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread ], [ %2, %.split ], [ %.sroa.0.031, %bb.o ], [ %3, %bb.p ], [ %.sroa.0.031, %.lr.ph ], [ %.sroa.0.031, %.lr.ph ], [ %.sroa.0.031, %.lr.ph ], [ %.sroa.0.031, %.lr.ph ], [ %.sroa.0.031, %.lr.ph ], [ %.sroa.0.031, %.lr.ph ]
  ret i64 %.sroa.019.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef range(i64 0, -1) i64 @_RNvCsgy7pbN39oAf_6uu_ptx22trim_broken_word_right(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %.not.i = icmp ugt i64 %2, %3
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @116, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not1.i = icmp ugt i64 %3, %1
  br i1 %.not1.i, label %bb.d, label %_RNvCsgy7pbN39oAf_6uu_ptx20assert_str_integrity.exit, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #27
  unreachable

_RNvCsgy7pbN39oAf_6uu_ptx20assert_str_integrity.exit: ; preds = %bb.c
  %i.a = icmp eq i64 %2, %3
  %i.b = icmp eq i64 %3, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_RNvCsgy7pbN39oAf_6uu_ptx20assert_str_integrity.exit
  %i.c = getelementptr [4 x i8], ptr %0, i64 %3   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !range !25, !noundef !7 ; 7 uses
  switch i32 %i.e, label %bb.f [
    i32 32, label %.loopexit
    i32 13, label %.loopexit
    i32 12, label %.loopexit
    i32 11, label %.loopexit
    i32 10, label %.loopexit
    i32 9, label %.loopexit
  ]

bb.f:                                             ; preds = %bb.e
  %i.f = icmp samesign ult i32 %i.e, 133
  br i1 %i.f, label %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = lshr i32 %i.e, 8
  switch i32 %i.g, label %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread [
    i32 0, label %bb.j
    i32 22, label %bb.h
    i32 32, label %bb.k
    i32 48, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.h = icmp eq i32 %i.e, 5760
  %i.i = zext i1 %i.h to i8
  br label %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit

bb.i:                                             ; preds = %bb.g
  %i.j = icmp eq i32 %i.e, 12288
  %i.k = zext i1 %i.j to i8
  br label %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit

bb.j:                                             ; preds = %bb.g
  %i.l = and i32 %i.e, 255
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noundef !7
  br label %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit

bb.k:                                             ; preds = %bb.g
  %i.p = and i32 %i.e, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noundef !7
  %i.t = lshr i8 %i.s, 1
  br label %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit

_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.0.0.i = phi i8 [ %i.k, %bb.i ], [ %i.o, %bb.j ], [ %i.i, %bb.h ], [ %i.t, %bb.k ]
  %i.u = trunc i8 %.sroa.0.0.i to i1
  br i1 %i.u, label %.loopexit, label %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread

_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread: ; preds = %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit, %bb.f, %bb.g
  %i.v = load i32, ptr %i.c, align 4, !range !25, !noundef !7 ; 3 uses
  switch i32 %i.v, label %bb.l [
    i32 32, label %.loopexit
    i32 13, label %.loopexit
    i32 12, label %.loopexit
    i32 11, label %.loopexit
    i32 10, label %.loopexit
    i32 9, label %.loopexit
  ]

bb.l:                                             ; preds = %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread
  %i.w = icmp samesign ult i32 %i.v, 133
  br i1 %i.w, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call fastcc noundef zeroext i1 @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup(i32 noundef %i.v) #29
  %i.y = icmp uge i64 %2, %3
  %or.cond48.not = or i1 %i.y, %i.x
  br i1 %or.cond48.not, label %.loopexit, label %.lr.ph.preheader

bb.n:                                             ; preds = %bb.l
  %.old = icmp ult i64 %2, %3
  br i1 %.old, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.n, %bb.m
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %.sroa.0.033 = phi i64 [ %i.z, %bb.s ], [ %3, %.lr.ph.preheader ] ; 8 uses
  %i.z = add nsw i64 %.sroa.0.033, -1             ; 5 uses
  %i.aa = icmp ult i64 %i.z, %1
  br i1 %i.aa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z
  %i.ac = load i32, ptr %i.ab, align 4, !range !25, !noundef !7 ; 3 uses
  switch i32 %i.ac, label %bb.q [
    i32 32, label %.loopexit
    i32 13, label %.loopexit
    i32 12, label %.loopexit
    i32 11, label %.loopexit
    i32 10, label %.loopexit
    i32 9, label %.loopexit
  ]

bb.p:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #27
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ad = icmp samesign ult i32 %i.ac, 133
  br i1 %i.ad, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = tail call fastcc noundef zeroext i1 @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup(i32 noundef %i.ac) #29
  br i1 %i.ae, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.af = icmp ult i64 %2, %i.z
  br i1 %i.af, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.s, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.n, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %_RNvCsgy7pbN39oAf_6uu_ptx20assert_str_integrity.exit, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit, %bb.m
  %.sroa.019.0 = phi i64 [ %3, %bb.e ], [ %3, %bb.m ], [ %3, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread ], [ %3, %_RNvCsgy7pbN39oAf_6uu_ptx20assert_str_integrity.exit ], [ %3, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit ], [ %3, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread ], [ %3, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread ], [ %3, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread ], [ %3, %bb.e ], [ %3, %bb.e ], [ %3, %bb.e ], [ %3, %bb.e ], [ %3, %bb.e ], [ %3, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread ], [ %3, %_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data11white_space6lookup.exit.thread ], [ %3, %bb.n ], [ %.sroa.0.033, %bb.r ], [ %2, %bb.s ], [ %.sroa.0.033, %bb.o ], [ %.sroa.0.033, %bb.o ], [ %.sroa.0.033, %bb.o ], [ %.sroa.0.033, %bb.o ], [ %.sroa.0.033, %bb.o ], [ %.sroa.0.033, %bb.o ]
  ret i64 %.sroa.019.0
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvCsgy7pbN39oAf_6uu_ptx24write_traditional_output(ptr noalias nofree noundef align 8 dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 13 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [120 x i8], align 8               ; 18 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [80 x i8], align 8                ; 13 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [120 x i8], align 8               ; 18 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.0.i124 = alloca [24 x i8], align 8       ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 12 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [104 x i8], align 8              ; 14 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 22 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [120 x i8], align 8              ; 10 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 8 uses
  %i.am = alloca [24 x i8], align 8               ; 8 uses
  %i.an = alloca [24 x i8], align 8               ; 8 uses
  %i.ao = alloca [16 x i8], align 8               ; 6 uses
  %i.ap = alloca [32 x i8], align 8               ; 6 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 7 uses
  %i.ax = alloca [32 x i8], align 8               ; 7 uses
  %i.ay = alloca [24 x i8], align 8               ; 6 uses
  %i.az = alloca [24 x i8], align 8               ; 7 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 16              ; 4 uses
  %i.bc = alloca [16 x i8], align 16              ; 4 uses
  %i.bd = alloca [24 x i8], align 8               ; 3 uses
  %i.be = alloca [16 x i8], align 8               ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 10 uses
  %i.bg = alloca [24 x i8], align 8               ; 11 uses
  %i.bh = alloca [32 x i8], align 8               ; 6 uses
  %i.bi = alloca [32 x i8], align 8               ; 8 uses
  %i.bj = alloca [16 x i8], align 8               ; 6 uses
  %i.bk = alloca [16 x i8], align 8               ; 7 uses
  %i.bl = alloca [48 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %i.bm = icmp eq i64 %4, 1
  br i1 %i.bm, label %bb.b, label %.split60

.split60:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !2682
  store i128 79537652246452167413109620736, ptr %i.bc, align 16, !noalias !2682
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !2682
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %lhsc = load i8, ptr %3, align 1
  %i.bn = icmp eq i8 %lhsc, 45
  br i1 %i.bn, label %.split64, label %.split

.split:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !2683
  store i128 79537652246452167413109620736, ptr %i.bb, align 16, !noalias !2683
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef 1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2683
  br label %bb.c

bb.c:                                             ; preds = %.split60, %.split
  %.sink = phi i64 [ %4, %.split60 ], [ 1, %.split ]
  call fastcc void @_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_B1i_INtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCsgy7pbN39oAf_6uu_ptx24write_traditional_output0EB3J_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.bk, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %.sink) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.bo = load ptr, ptr %i.bk, align 8, !noundef !7 ; 2 uses
  %.not = icmp eq ptr %i.bo, null
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  br i1 %.not, label %.split62, label %bb.f

.split64:                                         ; preds = %bb.b
  %i.bq = tail call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #28
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.br = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #28 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !12

bb.d:                                             ; preds = %.split64
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #30
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %.split64
  store ptr %i.bq, ptr %i.br, align 8
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2684
  %i.bt = tail call noundef dereferenceable_or_null(8192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, 9) 1) #28, !noalias !2684 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.e, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterINtNtB8_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE13with_capacityCsgy7pbN39oAf_6uu_ptx.exit

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #30, !noalias !2685
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.bv = load ptr, ptr %i.bp, align 8, !nonnull !7, !align !9, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.bj

.split62:                                         ; preds = %bb.c
  %i.bw = load i32, ptr %i.bp, align 8, !range !18, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.bx = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #28 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.g, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93, !prof !12

bb.g:                                             ; preds = %.split62
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #30
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93: ; preds = %.split62
  store i32 %i.bw, ptr %i.bx, align 4
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !2686
  %i.bz = call noundef dereferenceable_or_null(8192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8192, i64 noundef range(i64 1, 9) 1) #28, !noalias !2686 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.h, label %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterINtNtB8_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE13with_capacityCsgy7pbN39oAf_6uu_ptx.exit

bb.h:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8192) #30, !noalias !2687
  unreachable

_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterINtNtB8_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE13with_capacityCsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %.sink1061 = phi ptr [ %i.bt, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %i.bz, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93 ]
  %.sink1058 = phi ptr [ %i.br, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %i.bx, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93 ]
  %.sink1056 = phi ptr [ @125, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ @124, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit93 ]
  store i64 8192, ptr %i.bl, align 8, !noalias !7
  %.sroa.42.0..sroa_idx.i94 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %.sink1061, ptr %.sroa.42.0..sroa_idx.i94, align 8, !noalias !7
  %.sroa.5.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i95, align 8, !noalias !7
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i8 0, ptr %i.cb, align 8, !noalias !7
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store ptr %.sink1058, ptr %i.cc, align 8, !noalias !7
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store ptr %.sink1056, ptr %i.cd, align 8, !noalias !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !7, !noundef !7
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !7
  call void @_RNvMs3_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef %i.ch) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2688)
  call void @llvm.experimental.noalias.scope.decl(metadata !2689)
  %i.ci = load ptr, ptr %i.bh, align 8, !alias.scope !2689, !noalias !2688, !noundef !7
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCsgy7pbN39oAf_6uu_ptx.exit, !prof !12

bb.i:                                             ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterINtNtB8_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE13with_capacityCsgy7pbN39oAf_6uu_ptx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !2690
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ck, i64 24, i1 false), !noalias !2688
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 43, ptr noundef nonnull %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #27, !noalias !2690
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RNvMNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB2_9BufWriterINtNtB8_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE13with_capacityCsgy7pbN39oAf_6uu_ptx.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bh, i64 32, i1 false), !alias.scope !2690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 115 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !range !16, !noundef !7
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %.preheader, label %bb.j
end_hunk_0
